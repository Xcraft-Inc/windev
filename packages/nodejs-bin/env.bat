@echo off

set pattern=%boot_sysroot%\nodejs

echo ;%PATH%; | find /C /I ";%pattern%;"
if errorlevel 1 set PATH=%boot_sysroot%\nodejs;%PATH%
