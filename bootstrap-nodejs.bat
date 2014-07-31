@echo off

echo [stage0] begin of stage0

call pkg/uninstall nodejs-bin
call pkg/remove sysroot
call pkg/install sysroot

call pkg/get nodejs-bin
call pkg/install nodejs-bin

call pkg/get toolchain

echo [stage0] end of stage0
call node %boot_sysroot%\toolchain\scripts\stage1.js

cd %boot_sysroot%\toolchain\
