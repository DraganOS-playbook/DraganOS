@echo off
powercfg -delete a1841308-3541-4fab-bc81-f71556f20b4a
powercfg -delete e9a42b02-d5df-448d-aa00-03f14749eb61
powercfg -delete 9897998c-92de-4669-853f-b7cd3ecb2790
powercfg -import "C:\Windows\DraganModules\powerplan\dragan.pow"
powercfg /h off
powercfg /setactive c2f9831b-6f80-4830-8178-736cd4229e20
for %a in ("SleepStudy" "Kernel-Processor-Power" "UserModePowerService") do (wevtutil sl Microsoft-Windows-%~a/Diagnostic /e:false)