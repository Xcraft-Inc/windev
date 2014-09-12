@echo off

for /f "delims=" %%x in (pkg\config) do (call set "%%x")

if exist %boot_cache% goto build_
mkdir %boot_cache%

:build_
if exist %boot_build% goto cache_
mkdir %boot_build%

:cache_

call pkg/get %1 || exit /b

echo [%1] cache
call packages\%1\cache
rmdir %boot_build% /S /Q
