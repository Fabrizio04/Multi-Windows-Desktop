@echo off
title Multi-Windows by Fabrizio Amorelli
color 9F
if '%2'=='' (
"%~dp0\mega\megadl.exe" --path %tmp% %1
) else (
"%~dp0\mega\megadl.exe" --proxy %2 --path %tmp% %1
)
exit