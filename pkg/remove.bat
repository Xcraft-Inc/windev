@echo off

for /f "delims=" %%x in (pkg\config) do (call set "%%x")
for /f "delims=" %%x in (packages\%1\config) do (call set "%%x")

echo [%1] remove
call packages\%1\remove
