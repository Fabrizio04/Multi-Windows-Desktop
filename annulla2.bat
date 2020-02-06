@echo off
echo 0
taskkill /f /im curl.exe
taskkill /f /im php-cgi.exe
rem del "%tmp%\*.iso" /q
taskkill /f /im cmd.exe