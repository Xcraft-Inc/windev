@echo off
rem windev.epsitec.local bootstrapper

echo Bootstrap...

call pkg/remove sysroot
call pkg/install sysroot

call pkg/get ruby-boot
call pkg/install ruby-boot

call pkg/get rubyinstaller
call pkg/install rubyinstaller

rem call pkg/remove ruby-boot
