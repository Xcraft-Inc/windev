@echo off

echo [stage0] begin of stage0

call pkg/uninstall nodejs-bin
call pkg/remove sysroot
call pkg/install sysroot

call pkg/get mingw64
call pkg/install mingw64

call pkg/get mingw-get
call pkg/install mingw-get

call pkg/remove lessmsi
call pkg/get lessmsi
call pkg/install lessmsi

call pkg/get nodejs-bin
call pkg/install nodejs-bin
call pkg/env nodejs-bin

call pkg/get toolchain

echo [stage0] end of stage0
call node %boot_sysroot%\toolchain\scripts\stage1.js "%boot_sysroot%\bin" "%boot_sysroot%\opt\nodejs" "%boot_sysroot%\opt\bin" "%boot_sysroot%\msys\1.0\bin"

cd %boot_sysroot%\toolchain\
