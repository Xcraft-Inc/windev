@echo off

rd /Q /S %boot_sysroot% || rem
if [%errorlevel%]==[0] goto next
if [%errorlevel%]==[2] goto next
if [%errorlevel%]==[3] goto next
exit /b

:next
rd /Q /S %boot_build% || rem
if [%errorlevel%]==[2] exit /b 0
if [%errorlevel%]==[3] exit /b 0
