@echo off

set pattern=%boot_sysroot%\opt\nodejs

rem Look for the Windows find binary.
set FIND=
for /f %%i in ('where find') do (
  "%%i" /? >NUL 2>&1
  if errorlevel 0 set FIND=%%i
)

echo ;%PATH%; | %FIND% /C /I ";%pattern%;"
if errorlevel 1 set PATH=%boot_sysroot%\opt\nodejs;%PATH%
exit /b 0
