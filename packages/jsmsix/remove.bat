@echo off

rd /Q /S "%boot_build%/jsmsix" || rem
if [%errorlevel%]==[2] exit /b 0
if [%errorlevel%]==[3] exit /b 0
