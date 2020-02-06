@echo off
title Multi-Windows by Fabrizio Amorelli
color 9F
if not '%5'=='' (
"%~dp0\client\curl.exe" -u %3 -k --proxy %4 --proxy-user %5 %1 > "%tmp%\%2"
) else (
if not '%4'=='' (
"%~dp0\client\curl.exe" -u %3 -k --proxy %4 %1 > "%tmp%\%2"
) else (
"%~dp0\client\curl.exe" -u %3 -k %1 > "%tmp%\%2"
)
)
exit