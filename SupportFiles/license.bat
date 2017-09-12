@echo off 

rem adding MNova license location to current user
reg add "HKCU\Software\Mestrelab Research S.L.\MestReNova\License" /v "SharedRepository" /d "\\vmwas22\MNovaClientLic" /f

rem adding MNova license location to default user
reg load HKU\aaa "C:\Users\Default\ntuser.dat"
reg add "HKU\aaa\Software\Mestrelab Research S.L.\MestReNova\License" /v "SharedRepository" /d "\\vmwas22\MNovaClientLic" /f
reg unload HKU\aaa
