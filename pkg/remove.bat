@echo off

for /f "delims=" %%x in (pkg\config) do (set "%%x")
for /f "delims=" %%x in (packages\%1\config) do (set "%%x")

echo [%1] remove
call packages\%1\remove
