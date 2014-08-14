@echo off

rd /Q /S "%boot_sysroot%/opt/nodejs"
if [%errorlevel%]==3 exit /b 0
