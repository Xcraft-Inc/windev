@echo off
rem windev.epsitec.local bootstrapper

echo Bootstrap...

rmdir /S /Q sysroot
mkdir sysroot

call pkg/get ruby-boot
call pkg/install ruby-boot
call pkg/get rubyinstaller
call pkg/install rubyinstaller



rem call pkg/remove ruby-boot