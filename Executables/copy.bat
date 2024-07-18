@echo off

mkdir "%USERPROFILE%\Desktop\DraganDesktop"
robocopy "DraganDesktop" "%USERPROFILE%\Desktop\DraganDesktop" /E /IM /IT /NP
copy "PowerRun.exe" "%WINDIR%"

mkdir "%WINDIR%\DraganModules"
robocopy "DraganModules" "%WINDIR%\DraganModules" /E /IM /IT /NP
copy "PowerRun.exe" "%WINDIR%"