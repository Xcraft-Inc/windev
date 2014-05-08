@echo off

setlocal
set PATH=%boot_build%\ruby-boot\bin\;%PATH%
set DEVKITVER=mingw64-64-4.7.2

pushd %boot_build%\rubyinstaller
call rake devkit DKVER=%DEVKITVER%
call rake rbreadline DKVER=%DEVKITVER%
call rake ruby21 DKVER=%DEVKITVER%
popd
endlocal
