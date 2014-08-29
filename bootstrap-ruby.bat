@echo off

if "%1"=="dist" goto dist_

call pkg/uninstall rubyinstaller
call pkg/remove sysroot
call pkg/install sysroot

call pkg/get ruby-boot
call pkg/install ruby-boot

call pkg/get rubyinstaller
call pkg/build rubyinstaller
call pkg/install rubyinstaller

call pkg/remove ruby-boot
call pkg/remove rubyinstaller


exit /b



:dist_

echo [stage0] build a dist package

call pkg/cache ruby-boot || exit /b
call pkg/cache rubyinstaller || exit /b