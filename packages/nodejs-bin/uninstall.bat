@echo off

rd /Q /S "%boot_sysroot%/opt/nodejs" || rem
if [%errorlevel%]==[2] exit /b 0
if [%errorlevel%]==[3] exit /b 0
