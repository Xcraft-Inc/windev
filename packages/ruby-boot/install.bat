@echo off

call 7zip\decomp %pkg_dst% %boot_build%
move %boot_build%\ruby-2.0.0-p451-i386-mingw32 %boot_build%\ruby-boot
del /Q %pkg_dst%
