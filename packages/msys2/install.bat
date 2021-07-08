@echo off

call utils\7zip\decomp %pkg_dst% %boot_sysroot%\msys2
mkdir %boot_sysroot%\opt
call move %boot_sysroot%\msys2\msys64 %boot_sysroot%\opt\msys64

del /Q %pkg_dst%
rmdir /Q %boot_sysroot%\msys2
