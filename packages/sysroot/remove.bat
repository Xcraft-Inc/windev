@echo off

call utils\rmd %boot_build% || rem
if errorlevel 0 goto next
if errorlevel 2 goto next
exit /b

:next
call utils\rmd %boot_sysroot% || rem
if errorlevel 2 exit /b 0
exit /b
