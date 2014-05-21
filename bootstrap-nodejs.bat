@echo off

call pkg/uninstall nodejs
call pkg/remove sysroot
call pkg/install sysroot

call pkg/get nodejs
call pkg/install nodejs

call pkg/get toolchain

call node %boot_sysroot%\toolchain\scripts\stage1.js
