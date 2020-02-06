@echo off
title Multi-Windows by Fabrizio Amorelli
color 9F
set size10=0
start /wait windowscurl.bat %1 %2 %6 %7
call :filesize10 "%tmp%\%2"
if %size10% == %4 (
move /y "%tmp%\%2" %3
if '%5'=='on' (
notifica.bat
)
echo 1
) else (
del "%tmp%\%2" /q
echo 0
)

:filesize10
set size10=%~z1