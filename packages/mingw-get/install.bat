@echo off

call utils\7zip\decomp %pkg_dst% %boot_sysroot%
del /Q %pkg_dst%

%boot_sysroot%\bin\mingw-get install msys msys-patch
echo %boot_sysroot% /mingw >%boot_sysroot%\msys\1.0\etc\fstab
