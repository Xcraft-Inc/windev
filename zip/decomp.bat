@echo off
set dirname=
for %%F in ("%0") do set dirname=%%~dpF

pushd %dirname%
cscript //B decomp.vbs "%1" "%2"
popd
