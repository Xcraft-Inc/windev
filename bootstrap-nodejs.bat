@echo off

call pkg/remove nodejs
call pkg/remove sysroot
call pkg/install sysroot

call pkg/get nodejs
call pkg/install nodejs
