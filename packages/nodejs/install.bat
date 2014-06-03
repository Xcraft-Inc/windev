@echo off

msiexec /i %pkg_dst% INSTALLDIR="%boot_sysroot%\nodejs" /qb
del /Q %pkg_dst%

where node >NUL 2>&1
if errorlevel 1 set PATH=%boot_sysroot%\nodejs;%PATH%
