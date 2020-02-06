@echo off
echo 0
taskkill /f /im megadl.exe
taskkill /f /im php-cgi.exe
rem del "%tmp%\*.bpshWA7C" /q
taskkill /f /im cmd.exe