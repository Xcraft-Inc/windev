@echo off

for /f "delims=" %%x in (pkg\config) do (call set "%%x")
for /f "delims=" %%x in (packages\%1\config) do (call set "%%x")

echo [stage0:%1] install
call packages\%1\install
