@echo off

echo Bootstrap...

if "%1"=="dist" goto dist_

echo [stage0] begin of stage0

call pkg/uninstall nodejs-bin || exit /b
call pkg/remove sysroot || exit /b
call pkg/install sysroot || exit /b

call pkg/remove 7zip || exit /b
call pkg/get 7zip || exit /b
call pkg/install 7zip || exit /b

call pkg/get msys2 || exit /b
call pkg/install msys2 || exit /b

call pkg/remove jsmsix || exit /b
call pkg/get jsmsix || exit /b
call pkg/install jsmsix || exit /b

call pkg/get nodejs-bin || exit /b
call pkg/install nodejs-bin || exit /b
call pkg/env nodejs-bin || exit /b

call pkg/get xcraft || exit /b

echo [stage0] end of stage0

set boot_cmake=
set cmake_path=%ProgramFiles(x86)%\CMake\bin\cmake.exe
if exist "%cmake_path%" set boot_cmake=%ProgramFiles(x86)%\CMake\bin
set cmake_path=%ProgramFiles%\CMake\bin\cmake.exe
if exist "%cmake_path%" set boot_cmake=%ProgramFiles(x86)%\CMake\bin

call node %boot_sysroot%\xcraft\lib\xcraft\stage1.js "%boot_cmake%" "%boot_sysroot%\bin" "%boot_sysroot%\opt\nodejs" "%boot_sysroot%\opt\bin" "%boot_sysroot%\opt\msys64\usr\bin" "%boot_sysroot%\opt\msys64\mingw64\bin"

cd %boot_sysroot%\xcraft\
exit /b

:dist_

echo Building a dist package

call pkg/cache 7zip || exit /b
call pkg/cache msys2 || exit /b
call pkg/cache jsmsix || exit /b
call pkg/cache nodejs-bin || exit /b
call pkg/cache xcraft || exit /b
