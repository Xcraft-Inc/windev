@echo off

call utils\7zip\decomp %pkg_dst% %boot_sysroot%\msys
call move %boot_sysroot%\msys\msys %boot_sysroot%\msys\%pkg_ver%

del /Q %pkg_dst%

echo %boot_sysroot% /mingw >%boot_sysroot%\msys\1.0\etc\fstab
