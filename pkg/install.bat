@echo off

for /f "delims=" %%x in (packages\%1\config) do (set "%%x")

echo [%1] install
call packages\%1\install
