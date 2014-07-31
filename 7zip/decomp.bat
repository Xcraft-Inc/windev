@echo off

set dirname=
for %%F in ("%0") do set dirname=%%~dpF

pushd %dirname%

setlocal
set PATH=C:\Program Files\7-Zip;%PATH%
7z.exe x -y -o%2 %1
endlocal

popd
