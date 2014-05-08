@echo off

set dirname=
for %%F in ("%0") do set dirname=%%~dpF

pushd %dirname%

setlocal
set PATH=C:\Program Files (x86)\Git\bin;%PATH%
curl -o %2 %1
endlocal

popd
