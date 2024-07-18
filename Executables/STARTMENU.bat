@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

dism.exe /online /disable-feature /featurename:LegacyComponents
dism.exe /online /disable-feature /featurename:DirectPlay
dism.exe /online /disable-feature /featurename:Windows-Identity-Foundation
dism.exe /online /enable-feature /featurename:NetFx3
dism.exe /online /disable-feature /featurename:WCF-HTTP-Activation
dism.exe /online /disable-feature /featurename:WCF-NonHTTP-Activation
dism.exe /online /disable-feature /featurename:IIS-WebServerRole
dism.exe /online /disable-feature /featurename:IIS-WebServer
dism.exe /online /disable-feature /featurename:IIS-CommonHttpFeatures
dism.exe /online /disable-feature /featurename:IIS-HttpErrors
dism.exe /online /disable-feature /featurename:IIS-HttpRedirect
dism.exe /online /disable-feature /featurename:IIS-ApplicationDevelipment
dism.exe /online /disable-feature /featurename:IIS-Security
dism.exe /online /disable-feature /featurename:IIS-RequestFiltering
dism.exe /online /disable-feature /featurename:IIS-NetFxExtensibility
dism.exe /online /disable-feature /featurename:IIS-NetFxExtensibility45
dism.exe /online /disable-feature /featurename:IIS-HealthAndDiagnostics
dism.exe /online /disable-feature /featurename:IIS-HttpLogging
dism.exe /online /disable-feature /featurename:IIS-LoggingLibraries
dism.exe /online /disable-feature /featurename:IIS-RequestMonitor
dism.exe /online /disable-feature /featurename:IIS-HttpTracing
dism.exe /online /disable-feature /featurename:IIS-URLAuthorization
dism.exe /online /disable-feature /featurename:IIS-IPSecurity
dism.exe /online /disable-feature /featurename:IIS-Performance
dism.exe /online /disable-feature /featurename:IIS-HttpCompressionDynamic
dism.exe /online /disable-feature /featurename:IIS-WebServerManagementTools
dism.exe /online /disable-feature /featurename:IIS-ManagementScriptingTools
dism.exe /online /disable-feature /featurename:IIS-IIS6ManagementCompatibility
dism.exe /online /disable-feature /featurename:IIS-Metabase
dism.exe /online /disable-feature /featurename:WAS-WindowsActivationService
dism.exe /online /disable-feature /featurename:WAS-ProcessModel
dism.exe /online /disable-feature /featurename:WAS-NetFxEnvironment
dism.exe /online /disable-feature /featurename:WAS-ConfigurationAPI
dism.exe /online /disable-feature /featurename:IIS-HostableWebCore
dism.exe /online /disable-feature /featurename:WCF-Services45
dism.exe /online /disable-feature /featurename:WCF-HTTP-Activation45
dism.exe /online /disable-feature /featurename:WCF-TCP-Activation45
dism.exe /online /disable-feature /featurename:WCF-Pipe-Activation45
dism.exe /online /disable-feature /featurename:WCF-MSMQ-Activation45
dism.exe /online /disable-feature /featurename:WCF-TCP-PortSharing45
dism.exe /online /disable-feature /featurename:IIS-StaticContent
dism.exe /online /disable-feature /featurename:IIS-DefaultDocument
dism.exe /online /disable-feature /featurename:IIS-DirectoryBrowsing
dism.exe /online /disable-feature /featurename:IIS-WebDAV
dism.exe /online /disable-feature /featurename:IIS-WebSockets
dism.exe /online /disable-feature /featurename:IIS-ApplicationInit
dism.exe /online /disable-feature /featurename:IIS-ASPNET
dism.exe /online /disable-feature /featurename:IIS-ASPNET45
dism.exe /online /disable-feature /featurename:IIS-ASP
dism.exe /online /disable-feature /featurename:IIS-CGI
dism.exe /online /disable-feature /featurename:IIS-ISAPIExtensions
dism.exe /online /disable-feature /featurename:IIS-ISAPIFilter
dism.exe /online /disable-feature /featurename:IIS-ServerSideIncludes
dism.exe /online /disable-feature /featurename:IIS-CustomLogging
dism.exe /online /disable-feature /featurename:IIS-BasicAuthentication
dism.exe /online /disable-feature /featurename:IIS-HttpCompressionStatic
dism.exe /online /disable-feature /featurename:IIS-ManagementConsole
dism.exe /online /disable-feature /featurename:IIS-ManagementService
dism.exe /online /disable-feature /featurename:IIS-WMICompatibility
dism.exe /online /disable-feature /featurename:IIS-LegacyScripts
dism.exe /online /disable-feature /featurename:IIS-LegacySnapIn
dism.exe /online /disable-feature /featurename:IIS-FTPServer
dism.exe /online /disable-feature /featurename:IIS-FTPSvc
dism.exe /online /disable-feature /featurename:IIS-FTPExtensibility
dism.exe /online /disable-feature /featurename:MSMQ-Container
dism.exe /online /disable-feature /featurename:MSMQ-DCOMProxy
dism.exe /online /disable-feature /featurename:MSMQ-Server
dism.exe /online /disable-feature /featurename:MSMQ-ADIntegration
dism.exe /online /disable-feature /featurename:MSMQ-HTTP
dism.exe /online /disable-feature /featurename:MSMQ-Multicast
dism.exe /online /disable-feature /featurename:MSMQ-Triggers
dism.exe /online /disable-feature /featurename:IIS-CertProvider
dism.exe /online /disable-feature /featurename:IIS-WindowsAuthentication
dism.exe /online /disable-feature /featurename:IIS-DigestAuthentication
dism.exe /online /disable-feature /featurename:IIS-ClientCertificateMappingAuthentication
dism.exe /online /disable-feature /featurename:IIS-IISCertificateMappingAuthentication
dism.exe /online /disable-feature /featurename:IIS-ODBCLogging
dism.exe /online /disable-feature /featurename:MediaPlayback
dism.exe /online /disable-feature /featurename:WindowsMediaPlayer
dism.exe /online /disable-feature /featurename:DataCenterBridging
dism.exe /online /disable-feature /featurename:SmbDirect
dism.exe /online /disable-feature /featurename:AppServerClient
dism.exe /online /disable-feature /featurename:Windows-Defender-Default-Definitions
dism.exe /online /disable-feature /featurename:TIFFIFilter
dism.exe /online /disable-feature /featurename:WorkFolders-Client
dism.exe /online /disable-feature /featurename:MicrosoftWindowsPowerShellV2Root
dism.exe /online /disable-feature /featurename:MicrosoftWindowsPowerShellV2
dism.exe /online /enable-feature /featurename:NetFx4-AdvSrvs
dism.exe /online /disable-feature /featurename:NetFx4Extended-ASPNET45
dism.exe /online /disable-feature /featurename:ServicesForNFS-ClientOnly
dism.exe /online /disable-feature /featurename:ClientForNFS-Infrastructure
dism.exe /online /disable-feature /featurename:NFS-Administration
dism.exe /online /disable-feature /featurename:SMB1Protocol
dism.exe /online /disable-feature /featurename:SMB1Protocol-Client
dism.exe /online /disable-feature /featurename:SMB1Protocol-Server
dism.exe /online /disable-feature /featurename:SMB1Protocol-Deprecation
dism.exe /online /disable-feature /featurename:Internet-Explorer-Optional-amd64
dism.exe /online /disable-feature /featurename:Microsoft-Windows-Subsystem-Linux
dism.exe /online /disable-feature /featurename:Windows-Defender-ApplicationGuard

reg delete "HKU\%%a\Software\Microsoft\Windows\CurrentVersion\Start" /v "Config" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "Attributes" /t reg_dword /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\3b04d4fd-1cc7-4f23-ab1c-d1337819c4bb" /v "Attributes" /t reg_dword /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\5d76a2ca-e8c0-402f-a133-2158492d58ad" /v "Attributes" /t reg_dword /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\a55612aa-f624-42c6-a443-7397d064c04f" /v "Attributes" /t reg_dword /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\ea062031-0e34-4ff1-9b6d-eb1059334028" /v "Attributes" /t reg_dword /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" /v "ShowHibernateOption" /t reg_dword /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" /v "ShowSleepOption" /t reg_dword /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Class1InitialUnparkCount" /t reg_dword /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t reg_dword /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HiberFileSizePercent" /t reg_dword /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MfBufferingThreshold" /t reg_dword /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PerfCalculateActualUtilization" /t reg_dword /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t reg_dword /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MSDisabled" /t reg_dword /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "FxAccountingTelemetryDisabled" /t reg_dword /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingFlushInterval" /t reg_dword /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PDC\Activators\Default\VetoPolicy" /v "EA:EnergySaverEngaged" /t reg_dword /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PDC\Activators\28\VetoPolicy" /v "EA:PowerStateDischarging" /t reg_dword /d "0" /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\ScheduledDiagnostics" /v "EnabledExecution" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userDataTasks" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\TraceManager" /v "miniTraceSlotContentPermitted" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\TraceManager" /v "miniTraceSlotEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userNotificationListener" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appDiagnostics" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userAccountInformation" /v "Value" /t REG_SZ /d "Deny" /f
