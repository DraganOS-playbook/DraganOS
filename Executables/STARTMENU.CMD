@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

dism /online /disable-feature /featurename:TFTP
dism /online /disable-feature /featurename:LegacyComponents
dism /online /disable-feature /featurename:DirectPlay
dism /online /disable-feature /featurename:SimpleTCP
dism /online /disable-feature /featurename:Windows-Identity-Foundation
dism /online /enable-feature /featurename:NetFx3
dism /online /disable-feature /featurename:WCF-HTTP-Activation
dism /online /disable-feature /featurename:WCF-NonHTTP-Activation
dism /online /disable-feature /featurename:IIS-WebServerRole
dism /online /disable-feature /featurename:IIS-WebServer
dism /online /disable-feature /featurename:IIS-CommonHttpFeatures
dism /online /disable-feature /featurename:IIS-HttpErrors
dism /online /disable-feature /featurename:IIS-HttpRedirect
dism /online /disable-feature /featurename:IIS-ApplicationDevelipment
dism /online /disable-feature /featurename:IIS-Security
dism /online /disable-feature /featurename:IIS-RequestFiltering
dism /online /disable-feature /featurename:IIS-NetFxExtensibility
dism /online /disable-feature /featurename:IIS-NetFxExtensibility45
dism /online /disable-feature /featurename:IIS-HealthAndDiagnostics
dism /online /disable-feature /featurename:IIS-HttpLogging
dism /online /disable-feature /featurename:IIS-LoggingLibraries
dism /online /disable-feature /featurename:IIS-RequestMonitor
dism /online /disable-feature /featurename:IIS-HttpTracing
dism /online /disable-feature /featurename:IIS-URLAuthorization
dism /online /disable-feature /featurename:IIS-IPSecurity
dism /online /disable-feature /featurename:IIS-Performance
dism /online /disable-feature /featurename:IIS-HttpCompressionDynamic
dism /online /disable-feature /featurename:IIS-WebServerManagementTools
dism /online /disable-feature /featurename:IIS-ManagementScriptingTools
dism /online /disable-feature /featurename:IIS-IIS6ManagementCompatibility
dism /online /disable-feature /featurename:IIS-Metabase
dism /online /disable-feature /featurename:WAS-WindowsActivationService
dism /online /disable-feature /featurename:WAS-ProcessModel
dism /online /disable-feature /featurename:WAS-NetFxEnvironment
dism /online /disable-feature /featurename:WAS-ConfigurationAPI
dism /online /disable-feature /featurename:IIS-HostableWebCore
dism /online /disable-feature /featurename:WCF-Services45
dism /online /disable-feature /featurename:WCF-HTTP-Activation45
dism /online /disable-feature /featurename:WCF-TCP-Activation45
dism /online /disable-feature /featurename:WCF-Pipe-Activation45
dism /online /disable-feature /featurename:WCF-MSMQ-Activation45
dism /online /disable-feature /featurename:WCF-TCP-PortSharing45
dism /online /disable-feature /featurename:IIS-StaticContent
dism /online /disable-feature /featurename:IIS-DefaultDocument
dism /online /disable-feature /featurename:IIS-DirectoryBrowsing
dism /online /disable-feature /featurename:IIS-WebDAV
dism /online /disable-feature /featurename:IIS-WebSockets
dism /online /disable-feature /featurename:IIS-ApplicationInit
dism /online /disable-feature /featurename:IIS-ASPNET
dism /online /disable-feature /featurename:IIS-ASPNET45
dism /online /disable-feature /featurename:IIS-ASP
dism /online /disable-feature /featurename:IIS-CGI
dism /online /disable-feature /featurename:IIS-ISAPIExtensions
dism /online /disable-feature /featurename:IIS-ISAPIFilter
dism /online /disable-feature /featurename:IIS-ServerSideIncludes
dism /online /disable-feature /featurename:IIS-CustomLogging
dism /online /disable-feature /featurename:IIS-BasicAuthentication
dism /online /disable-feature /featurename:IIS-HttpCompressionStatic
dism /online /disable-feature /featurename:IIS-ManagementConsole
dism /online /disable-feature /featurename:IIS-ManagementService
dism /online /disable-feature /featurename:IIS-WMICompatibility
dism /online /disable-feature /featurename:IIS-LegacyScripts
dism /online /disable-feature /featurename:IIS-LegacySnapIn
dism /online /disable-feature /featurename:IIS-FTPServer
dism /online /disable-feature /featurename:IIS-FTPSvc
dism /online /disable-feature /featurename:IIS-FTPExtensibility
dism /online /disable-feature /featurename:MSMQ-Container
dism /online /disable-feature /featurename:MSMQ-DCOMProxy
dism /online /disable-feature /featurename:MSMQ-Server
dism /online /disable-feature /featurename:MSMQ-ADIntegration
dism /online /disable-feature /featurename:MSMQ-HTTP
dism /online /disable-feature /featurename:MSMQ-Multicast
dism /online /disable-feature /featurename:MSMQ-Triggers
dism /online /disable-feature /featurename:IIS-CertProvider
dism /online /disable-feature /featurename:IIS-WindowsAuthentication
dism /online /disable-feature /featurename:IIS-DigestAuthentication
dism /online /disable-feature /featurename:IIS-ClientCertificateMappingAuthentication
dism /online /disable-feature /featurename:IIS-IISCertificateMappingAuthentication
dism /online /disable-feature /featurename:IIS-ODBCLogging
dism /online /disable-feature /featurename:MediaPlayback
dism /online /disable-feature /featurename:WindowsMediaPlayer
dism /online /disable-feature /featurename:DataCenterBridging
dism /online /disable-feature /featurename:SmbDirect
dism /online /disable-feature /featurename:AppServerClient
dism /online /disable-feature /featurename:Printing-PrintToPDFServices-Features
dism /online /disable-feature /featurename:Windows-Defender-Default-Definitions
dism /online /disable-feature /featurename:Printing-XPSServices-Features
dism /online /disable-feature /featurename:SearchEngine-Client-Package
dism /online /disable-feature /featurename:MSRDC-Infrastructure
dism /online /disable-feature /featurename:TelnetClient
dism /online /disable-feature /featurename:TIFFIFilter
dism /online /disable-feature /featurename:WorkFolders-Client
dism /online /disable-feature /featurename:Printing-Foundation-Features
dism /online /disable-feature /featurename:Printing-Foundation-InternetPrinting-Client
dism /online /disable-feature /featurename:Printing-Foundation-LPDPrintService
dism /online /disable-feature /featurename:Printing-Foundation-LPRPortMonitor
dism /online /disable-feature /featurename:MicrosoftWindowsPowerShellV2Root
dism /online /disable-feature /featurename:MicrosoftWindowsPowerShellV2
dism /online /disable-feature /featurename:Client-ProjFS
dism /online /disable-feature /featurename:Client-DeviceLockdown
dism /online /disable-feature /featurename:Client-EmbeddedShellLauncher
dism /online /disable-feature /featurename:Client-EmbeddedBootExp
dism /online /disable-feature /featurename:Client-EmbeddedLogon
dism /online /disable-feature /featurename:Client-KeyboardFilter
dism /online /disable-feature /featurename:Client-UnifiedWriteFilter
dism /online /disable-feature /featurename:DirectoryServices-ADAM-Client
dism /online /enable-feature /featurename:NetFx4-AdvSrvs
dism /online /disable-feature /featurename:NetFx4Extended-ASPNET45
dism /online /disable-feature /featurename:ServicesForNFS-ClientOnly
dism /online /disable-feature /featurename:ClientForNFS-Infrastructure
dism /online /disable-feature /featurename:NFS-Administration
dism /online /disable-feature /featurename:SMB1Protocol
dism /online /disable-feature /featurename:SMB1Protocol-Client
dism /online /disable-feature /featurename:SMB1Protocol-Server
dism /online /disable-feature /featurename:SMB1Protocol-Deprecation
dism /online /disable-feature /featurename:HostGuardian
dism /online /disable-feature /featurename:MultiPoint-Connector
dism /online /disable-feature /featurename:MultiPoint-Connector-Services
dism /online /disable-feature /featurename:MultiPoint-Tools
dism /online /disable-feature /featurename:Internet-Explorer-Optional-amd64
dism /online /disable-feature /featurename:Microsoft-Windows-Subsystem-Linux
dism /online /disable-feature /featurename:HypervisorPlatform
dism /online /disable-feature /featurename:VirtualMachinePlatform
dism /online /disable-feature /featurename:Containers-DisposableClientVM
dism /online /disable-feature /featurename:Microsoft-Hyper-V-All
dism /online /disable-feature /featurename:Microsoft-Hyper-V
dism /online /disable-feature /featurename:Microsoft-Hyper-V-Tools-All
dism /online /disable-feature /featurename:Microsoft-Hyper-V-Management-PowerShell
dism /online /disable-feature /featurename:Microsoft-Hyper-V-Hypervisor
dism /online /disable-feature /featurename:Microsoft-Hyper-V-Services
dism /online /disable-feature /featurename:Microsoft-Hyper-V-Management-Clients
dism /online /disable-feature /featurename:Windows-Defender-ApplicationGuard
dism /online /disable-feature /featurename:Containers

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

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userNotificationListener" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appDiagnostics" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userAccountInformation" /v "Value" /t REG_SZ /d "Deny" /f

powershell -Command "Get-ScheduledTask | Where-Object { $_.TaksName -notin @('MsCtfMonitor') } | Disable-ScheduledTask"