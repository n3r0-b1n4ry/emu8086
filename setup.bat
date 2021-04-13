@echo off
SET arch = wmic OS get OSArchitecture
cd /d %~dp0
IF %PROCESSOR_ARCHITECTURE% EQU AMD64 (COPY ".\cmax20.ocx" "%SystemRoot%\SysWOW64\cmax20.ocx") ELSE (COPY ".\cmax20.ocx" "%SystemRoot%\System32\cmax20.ocx")
echo Copy cmax20.ocx completed!
sleep 5
exit