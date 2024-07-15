@echo off
powercfg -delete a1841308-3541-4fab-bc81-f71556f20b4a
powercfg -delete 381b4222-f694-41f0-9685-ff5bb260df2e
powercfg -delete e9a42b02-d5df-448d-aa00-03f14749eb61
powercfg -delete 9897998c-92de-4669-853f-b7cd3ecb2790
powercfg -delete 11111111-1111-1111-1171-151cd4229e7b
powercfg -import "C:\Windows\DraganModules\powerplan\dragan.pow"
powercfg /hibernate off
powercfg -h off
powercfg /setacvalueindex scheme_current 1ff9831b-6f80-4830-8178-736cd4229e7b d4e98f31-5ffe-4ce1-be31-1b38b384c009 0
powercfg /setacvalueindex scheme_current 1ff9831b-6f80-4830-8178-736cd4229e7b 48e6b7a6-50f5-4782-a5d4-53bb8f07e226 0
powercfg /setacvalueindex scheme_current 1ff9831b-6f80-4830-8178-736cd4229e7b 0cc5b647-c1df-4637-891a-dec35c318583 100
powercfg /setacvalueindex scheme_current 1ff9831b-6f80-4830-8178-736cd4229e7b 0cc5b647-c1df-4637-891a-dec35c318584 100
powercfg /setacvalueindex scheme_current 1ff9831b-6f80-4830-8178-736cd4229e7b 4d2b0152-7d5c-498b-88e2-34345392a2c5 5000
powercfg /setacvalueindex 1ff9831b-6f80-4830-8178-736cd4229e7b SUB_VIDEO VIDEOIDLE 0
powercfg /setactive scheme_current
for %a in ("SleepStudy" "Kernel-Processor-Power" "UserModePowerService") do (wevtutil sl Microsoft-Windows-%~a/Diagnostic /e:false)