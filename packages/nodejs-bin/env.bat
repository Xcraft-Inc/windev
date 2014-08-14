@echo off

set pattern=%boot_sysroot%\opt\nodejs

echo ;%PATH%; | find /C /I ";%pattern%;"
if errorlevel 1 set PATH=%boot_sysroot%\opt\nodejs;%PATH%
exit /b 0
