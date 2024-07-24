@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

mkdir "%SYSTEMDRIVE%\Users\Default\AppData\Local\Microsoft\Windows\Shell"
copy /y "LayoutModification.xml" "%SYSTEMDRIVE%\Users\Default\AppData\Local\Microsoft\Windows\Shell\LayoutModification.xml"
copy /y "LayoutModification.json" "%SYSTEMDRIVE%\Users\Default\AppData\Local\Microsoft\Windows\Shell\LayoutModification.json"
copy /y "Layout.xml" "%SYSTEMDRIVE%\Users\Default\AppData\Local\Microsoft\Windows\Shell\Layout.xml"

mkdir "%SYSTEMDRIVE%\Users\Default\AppData\Local\Packages\%%d\LocalState" 2>nul
copy /y "settings.json" "%SYSTEMDRIVE%\Users\Default\AppData\Local\Packages\%%d\LocalState\settings.json"

for /f "usebackq tokens=2 delims=\" %%a in (`reg query "HKEY_USERS" ^| findstr /r /x /c:"HKEY_USERS\\S-.*" /c:"HKEY_USERS\\AME_UserHive_[^_]*"`) do (
	@REM If the "Volatile Environment" key exists, that means it is a proper user. Built in accounts/SIDs do not have this key.
	reg query "HKEY_USERS\%%a" | findstr /c:"Volatile Environment" /c:"AME_UserHive_" > nul 2>&1
	if not !errorlevel! == 1 (
		for /f "usebackq tokens=3* delims= " %%b in (`reg query "HKU\%%a\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Local AppData" 2^>nul ^| findstr /r /x /c:".*Local AppData[ ]*REG_SZ[ ].*"`) do (
			echo copy /y "LayoutModification.xml" "%%c\Microsoft\Windows\Shell\LayoutModification.xml"
			copy /y "LayoutModification.xml" "%%c\Microsoft\Windows\Shell\LayoutModification.xml"
			echo copy /y "LayoutModification.json" "%%c\Microsoft\Windows\Shell\LayoutModification.json"
			copy /y "LayoutModification.json" "%%c\Microsoft\Windows\Shell\LayoutModification.json"
			echo copy /y "Layout.xml" "%%c\Microsoft\Windows\Shell\Layout.xml"
			copy /y "Layout.xml" "%%c\Microsoft\Windows\Shell\Layout.xml"

			@REM Clear start menu pinned items
			for /f "usebackq delims=" %%d in (`dir /b "%%c\Packages" /a:d ^| findstr /c:"Microsoft.Windows.StartMenuExperienceHost"`) do (
				for /f "usebackq delims=" %%e in (`dir /b "%%c\Packages\%%d\LocalState" /a:-d ^| findstr /R /c:"start.\.bin" /c:"start\.bin"`) do (
					echo del /q /f "%%c\Packages\%%d\LocalState\%%e"
					del /q /f "%%c\Packages\%%d\LocalState\%%e"
				)
			)

			for /f "usebackq delims=" %%d in (`dir /b "%%c\Packages" /a:d ^| findstr /c:"Microsoft.DesktopAppInstaller"`) do (
				mkdir "%%c\Packages\%%d\LocalState" 2>nul
				echo copy /y "settings.json" "%%c\Packages\%%d\LocalState\settings.json"
				copy /y "settings.json" "%%c\Packages\%%d\LocalState\settings.json"
			)

reg delete "HKU\%%a\Software\Microsoft\Windows\CurrentVersion\Start" /v "Config" /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\ScheduledDiagnostics" /v "EnabledExecution" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userDataTasks" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\TraceManager" /v "miniTraceSlotContentPermitted" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\TraceManager" /v "miniTraceSlotEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "StartLayoutFile" /t REG_SZ /d "%SYSTEMDRIVE%\Windows\Layout.xml" /f