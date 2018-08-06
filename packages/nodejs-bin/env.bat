@echo off

set pattern=%boot_sysroot%\opt\nodejs

rem Look for the Windows find binary.
set FIND=
for /f %%i in ('where find') do (
  "%%i" /? >NUL 2>&1 && set FIND=%%i
)

echo ;%PATH%; | %FIND% /C /I ";%pattern%;" || set PATH=%boot_sysroot%\opt\nodejs;%PATH%
exit /b 0
