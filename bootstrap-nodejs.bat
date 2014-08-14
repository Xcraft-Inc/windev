@echo off

echo [stage0] begin of stage0

call pkg/uninstall nodejs-bin || exit /b
call pkg/remove sysroot || exit /b
call pkg/install sysroot || exit /b

call pkg/get mingw64 || exit /b
call pkg/install mingw64 || exit /b

call pkg/get mingw-get || exit /b
call pkg/install mingw-get || exit /b

call pkg/remove jsmsix || exit /b
call pkg/get jsmsix || exit /b
call pkg/install jsmsix || exit /b

call pkg/get nodejs-bin || exit /b
call pkg/install nodejs-bin || exit /b
call pkg/env nodejs-bin || exit /b

call pkg/get toolchain || exit /b

echo [stage0] end of stage0
call node %boot_sysroot%\toolchain\scripts\stage1.js "%boot_sysroot%\bin" "%boot_sysroot%\opt\nodejs" "%boot_sysroot%\opt\bin" "%boot_sysroot%\msys\1.0\bin"

cd %boot_sysroot%\toolchain\
