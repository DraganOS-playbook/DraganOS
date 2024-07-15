mkdir %USERPROFILE%\Desktop\DraganDesktop
robocopy "PostInstall" "%USERPROFILE%\Desktop\DraganModules" /E /IM /IT /NP
copy "PowerRun.exe" "%WINDIR%"

mkdir %WINDIR%\DraganModules
robocopy "PostInstall" "%WINDIR%\DraganModules" /E /IM /IT /NP
copy "PowerRun.exe" "%WINDIR%"