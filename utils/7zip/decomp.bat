@echo off

set dirname=
for %%F in ("%0") do set dirname=%%~dpF

pushd %dirname%

%boot_build%/7zip/7za.exe x -y -o%2 %1

popd
