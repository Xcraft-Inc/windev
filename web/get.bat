@echo off
set dirname=
for %%F in ("%0") do set dirname=%%~dpF

pushd %dirname%

setlocal
set PATH="%path%;C:\Program Files (x86)\Git\bin"
curl -o %2 %1
endlocal


popd