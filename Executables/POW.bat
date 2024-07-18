@echo off
powercfg -delete a1841308-3541-4fab-bc81-f71556f20b4a
powercfg -delete 381b4222-f694-41f0-9685-ff5bb260df2e
powercfg -delete e9a42b02-d5df-448d-aa00-03f14749eb61
powercfg -delete 9897998c-92de-4669-853f-b7cd3ecb2790
powercfg -delete 11111111-1111-1111-1171-151cd4229e7b
powercfg -import "C:\Windows\DraganModules\powerplan\dragan.pow"
powercfg /h off
powercfg /setactive 5ff9831b-6f80-4830-8178-736cd4229e7b
powercfg /setacvalueindex 5ff9831b-6f80-4830-8178-736cd4229e7b SUB_VIDEO VIDEOIDLE 0
for %a in ("SleepStudy" "Kernel-Processor-Power" "UserModePowerService") do (wevtutil sl Microsoft-Windows-%~a/Diagnostic /e:false)
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v "DefaultPnPCapabilities" /t REG_DWORD /d "24" /f