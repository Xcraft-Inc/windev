@echo off

for /f "delims=" %%x in (pkg\config) do (set "%%x")
for /f "delims=" %%x in (packages\%1\config) do (set "%%x")

set /a NPROC=%NUMBER_OF_PROCESSORS%-1
set MAKEFLAGS=-j%NPROC%

echo [%1] build
call packages\%1\build
