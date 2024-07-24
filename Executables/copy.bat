@echo off

setlocal EnableDelayedExpansion

mkdir "%USERPROFILE%\Desktop\DraganDesktop"
robocopy "DraganDesktop" "%USERPROFILE%\Desktop\DraganDesktop" /E /PURGE /IM /IT /NP
copy "PowerRun.exe" "%WINDIR%"

mkdir "%WINDIR%\DraganModules"
robocopy "DraganModules" "%WINDIR%\DraganModules" /E /PURGE /IM /IT /NP
copy "PowerRun.exe" "%WINDIR%"

mkdir "%WINDIR%\Resources\Themes"
robocopy "Themes" "%WINDIR%\Resources\Themes" /Y
copy "PowerRun.exe" "%WINDIR%"

if "%%a" neq "AME_UserHive_Default" (
	for /f "usebackq delims=" %%d in (`dir /b "!userAppdata!\Packages" /a:d ^| findstr /c:"Microsoft.Windows.StartMenuExperienceHost"`) do (
	for /f "usebackq delims=" %%e in (`dir /b "!userAppdata!\Packages\%%d\LocalState" /a:-d ^| findstr /R /c:"start.\.bin" /c:"start\.bin"`) do (
	del /q /f "!userAppdata!\Packages\%%d\LocalState\%%e"
	    )
    )
)