@echo off

msiexec /i %pkg_dst% INSTALLDIR="%boot_sysroot%\nodejs" /qb
del /Q %pkg_dst%

@setlocal enableextensions enabledelayedexpansion
set pattern=%boot_sysroot%\nodejs
if "x!PATH:%pattern%=!"=="x%PATH%" set PATH=%boot_sysroot%\nodejs;%PATH%
endlocal
