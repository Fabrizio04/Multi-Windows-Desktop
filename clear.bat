@echo off
taskkill /f /im php-cgi.exe
taskkill /f /im phpdesktop-chrome.exe
timeout /t 5

if exist "C:\Program Files (x86)\Multi-Windows Desktop\webcache" (
del /q "C:\Program Files (x86)\Multi-Windows Desktop\webcache\*"
FOR /D %%p IN ("C:\Program Files (x86)\Multi-Windows Desktop\webcache\*.*") DO rmdir "%%p" /s /q
timeout /t 2
start "" "C:\Program Files (x86)\Multi-Windows Desktop\Multi-Windows.exe"
exit
) else (
del /q "C:\Program Files\Multi-Windows Desktop\webcache\*"
FOR /D %%p IN ("C:\Program Files\Multi-Windows Desktop\webcache\*.*") DO rmdir "%%p" /s /q
timeout /t 2
start "" "C:\Program Files\Multi-Windows Desktop\Multi-Windows.exe"
exit
)