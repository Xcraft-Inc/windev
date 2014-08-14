@echo off

rd /Q /S %boot_sysroot%
if not [%errorlevel%]==3 exit /b
rd /Q /S %boot_build%
if [%errorlevel%]==3 exit /b 0
