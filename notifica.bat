@echo off
setlocal

for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j

if "%version%" == "10.0" (

if exist "C:\Program Files (x86)\Multi-Windows Desktop\www\notifi\toaster\img\windows.png" (
"%~dp0\notifi\toaster\toast.exe" -t Multi-Windows -m "Download completato!" -p "C:\Program Files (x86)\Multi-Windows Desktop\www\notifi\toaster\img\windows.png" -w
) else (
"%~dp0\notifi\toaster\toast.exe" -t Multi-Windows -m "Download completato!" -p "C:\Program Files\Multi-Windows Desktop\www\notifi\toaster\img\windows.png" -w
)

) else if "%version%" == "6.3" (

if exist "C:\Program Files (x86)\Multi-Windows Desktop\www\notifi\toaster\img\windows.png" (
"%~dp0\notifi\toaster\toast.exe" -t Multi-Windows -m "Download completato!" -p "C:\Program Files (x86)\Multi-Windows Desktop\www\notifi\toaster\img\windows.png" -w
) else (
"%~dp0\notifi\toaster\toast.exe" -t Multi-Windows -m "Download completato!" -p "C:\Program Files\Multi-Windows Desktop\www\notifi\toaster\img\windows.png" -w
)

) else if "%version%" == "6.2" (

if exist "C:\Program Files (x86)\Multi-Windows Desktop\www\notifi\toaster\img\windows.png" (
"%~dp0\notifi\toaster\toast.exe" -t Multi-Windows -m "Download completato!" -p "C:\Program Files (x86)\Multi-Windows Desktop\www\notifi\toaster\img\windows.png" -w
) else (
"%~dp0\notifi\toaster\toast.exe" -t Multi-Windows -m "Download completato!" -p "C:\Program Files\Multi-Windows Desktop\www\notifi\toaster\img\windows.png" -w
)

) else if "%version%" == "6.1" (
"%~dp0\notifi\notifu.exe" /t info /d 5000 /p Multi-Windows /m "Download completato!" /i "%~dp0\notifi\windows.ico"
)
endlocal