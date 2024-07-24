@echo off
CD /d %~dp0

mkdir %WINDIR%\Temp\DraganOS
curl -L -o %WINDIR%\Temp\DraganOS\VisualCppRedist_AIO_x86_x64.exe https://github.com/abbodi1406/vcredist/releases/download/v0.81.0/VisualCppRedist_AIO_x86_x64.exe
start %WINDIR%\Temp\DraganOS\VisualCppRedist_AIO_x86_x64.exe /ai

mkdir %WINDIR%\Temp\DraganOS
curl -L -o %WINDIR%\Temp\DraganOS\OpenShellSetup_4_4_191.exe https://github.com/Open-Shell/Open-Shell-Menu/releases/download/v4.4.191/OpenShellSetup_4_4_191.exe
start %WINDIR%\Temp\DraganOS\OpenShellSetup_4_4_191.exe /qn /quiet ADDLOCAL=StartMenu