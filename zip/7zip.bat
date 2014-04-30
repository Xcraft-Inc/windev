@echo off

set dirname=
for %%F in ("%0") do set dirname=%%~dpF

pushd %dirname%

setlocal
set PATH="%path%;C:\Program Files\7-Zip"
7z.exe x -o%2 %1
endlocal

popd

