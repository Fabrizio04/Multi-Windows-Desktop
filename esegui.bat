@echo off
title Multi-Windows by Fabrizio Amorelli
color 9F
start /wait mega.bat %1 %5
if not exist "%tmp%\%2" (
del "%tmp%\*.megatmp*" /q
echo 0
) else (
move /y "%tmp%\%2" %3
if '%4'=='on' (
notifica.bat
)
echo 1
)