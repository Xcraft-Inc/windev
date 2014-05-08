@echo off

setlocal
set PATH=%CD%\%boot_sys%\ruby-2.0.0-p451-i386-mingw32\bin\;%PATH%
set DEVKITVER=mingw64-64-4.7.2

pushd %CD%\%boot_sys%\rubyinstaller
call rake devkit DKVER=%DEVKITVER%
call rake rbreadline DKVER=%DEVKITVER%
call rake ruby21 DKVER=%DEVKITVER%
popd
endlocal
