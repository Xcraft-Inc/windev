@echo off

for /f "delims=" %%x in (pkg\config) do (call set "%%x")
for /f "delims=" %%x in (packages\%1\config) do (call set "%%x")

set /a NPROC=%NUMBER_OF_PROCESSORS%-1
set MAKEFLAGS=-j%NPROC%

echo [stage0] [%1] build
call packages\%1\build
