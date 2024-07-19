@echo off

set "adb_path=C:\Users\example\AppData\Local\Android\Sdk\platform-tools"
set "device_ip=192.168.1.6" change this to your phone ip address

:loop
"%adb_path%\adb.exe" devices > devices.txt

findstr "serialNumberOfUrAndroid" devices.txt >nul
if %errorlevel% equ 0 (
  echo Device found!
  "%adb_path%\adb.exe" tcpip 5555
  "%adb_path%\adb.exe" connect %device_ip%:5555
  goto exit
) else (
  echo Device not found. Waiting...
  timeout /t 5 /nobreak > NUL
  goto loop
)

:exit

echo Done!

pause
