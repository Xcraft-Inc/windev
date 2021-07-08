@echo off

echo [update] begin

call pkg/uninstall nodejs-bin || exit /b

call pkg/get nodejs-bin || exit /b
call pkg/install nodejs-bin || exit /b

echo [update] end
