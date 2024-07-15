$ErrorActionPreference = 'SilentlyContinue'

Write-Host "Using Disk Cleanup with custom configuration"
$volumeCache = @{
    "Active Setup Temp Folders"      = 2
    "BranchCache"                    = 2
    "Delivery Optimization Files"    = 2
    "Device Driver Packages"         = 2
    "Diagnostic Data Viewer database files" = 2
    "Downloaded Program Files"       = 2
    "Internet Cache Files"           = 2
    "Language Pack"                  = 2
    "Offline Pages Files"            = 2
    "Old ChkDsk Files"               = 2
    "RetailDemo Offline Content"     = 2
    "Setup Log Files"                = 2
    "System error memory dump files" = 2
    "System error minidump files"    = 2
    "Temporary Setup Files"          = 2
    "Temporary Sync Files"           = 2
    "Update Cleanup"                 = 2
    "Upgrade Discarded Files"        = 2
    "User file versions"             = 2
    "Windows Defender"               = 2
    "Windows Error Reporting Files"  = 2
    "Windows Reset Log Files"        = 2
    "Windows Upgrade Log Files"      = 2
}

powershell Get-EventLog -LogName * | ForEach-Object { Clear-EventLog $_.Log }

powershell Set-WindowsReservedStorageState -State Disabled

sc stop bits
sc stop appidsvc
sc stop dps
sc stop wuauserv
sc stop cryptsvc

powershell $foldersToRemove = @("CbsTemp", "Logs", "SoftwareDistribution", "System32\LogFiles", "System32\SleepStudy", "System32\sru", "System32\WDI\LogFiles", "System32\winevt\Logs", "SystemTemp", "Temp", "Prefetch")

cmd /c "del /q /f "%WINDIR%\HelpPane.exe""
for /f "usebackq delims=" %%A in (`dir /b "%WINDIR%\SystemApps\*Client.CBS*"`) do (
	echo del /q /f "%WINDIR%\SystemApps\%%A\SystemSettingsExtensions.dll"
	del /q /f "%WINDIR%\SystemApps\%%A\SystemSettingsExtensions.dll"
)

del /q /f "%SYSTEMDRIVE%\Users\Public\Desktop\Microsoft Edge.lnk"
del /q /f "%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Accessories\Windows Media Player.lnk"

for /f "usebackq tokens=2 delims=\" %%A in (`reg query "HKEY_USERS" ^| findstr /r /x /c:"HKEY_USERS\\S-.*" /c:"HKEY_USERS\\AME_UserHive_[^_]*"`) do (


	reg query "HKU\%%A" | findstr /c:"Volatile Environment" /c:"AME_UserHive_" > NUL 2>&1
		if not errorlevel 1 (
			reg delete "HKU\%%A\SOFTWARE\Microsoft\Windows\CurrentVersion\Start" /v "Config" /f

			for /f "usebackq tokens=3* delims= " %%B in (`reg query "HKU\%%A\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Local AppData" 2^>^&1 ^| findstr /R /X /C:".*Local AppData[ ]*REG_SZ[ ].*"`) do (
				:: Clear W11 start menu pinned items
				for /f "usebackq delims=" %%D in (`dir /b "%%C\Packages" /a:d ^| findstr /c:"Microsoft.Windows.StartMenuExperienceHost"`) do (
					for /f "usebackq delims=" %%E in (`dir /b "%%C\Packages\%%D\LocalState" /a:-d ^| findstr /R /c:"start.\.bin" /c:"start\.bin"`) do (
						echo del /q /f "%%C\Packages\%%D\LocalState\%%E"
						del /q /f "%%C\Packages\%%D\LocalState\%%E"
					)
				)

				rmdir /q /s "%%C\Microsoft\Windows\Notifications"
			)

			for /f "usebackq tokens=2* delims= " %%B in (`reg query "HKU\%~1\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "AppData" 2^>^&1 ^| findstr /R /X /C:".*AppData[ ]*REG_SZ[ ].*"`) do (
				echo del "%%C\Microsoft\Windows\Start Menu\Programs\Accessories\Internet Explorer.lnk" /q /f
				del "%%C\Microsoft\Windows\Start Menu\Programs\Accessories\Internet Explorer.lnk" /q /f
				echo del "%%C\Microsoft\Internet Explorer\Quick Launch\Microsoft Edge.lnk" /q /f
				del "%%C\Microsoft\Internet Explorer\Quick Launch\Microsoft Edge.lnk" /q /f
				echo del "%%C\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\Microsoft Edge.lnk" /q /f
				del "%%C\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\Microsoft Edge.lnk" /q /f
			)
		)
)