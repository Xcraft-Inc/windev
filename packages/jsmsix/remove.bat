@echo off

rd /Q /S "%boot_build%/jsmsix"
if [%errorlevel%]==3 exit /b 0
