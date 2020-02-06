@echo off
title Multi-Windows by Fabrizio Amorelli
color 9F
if not '%4'=='' (
"%~dp0\client\curl.exe" -k --proxy %3 --proxy-user %4 %1 > "%tmp%\%2"
) else (
if not '%3'=='' (
"%~dp0\client\curl.exe" -k --proxy %3 %1 > "%tmp%\%2"
) else (
"%~dp0\client\curl.exe" -k %1 > "%tmp%\%2"
)
)
exit