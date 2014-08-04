@echo off

call 7zip\decomp %pkg_dst% %boot_sysroot%
del /Q %pkg_dst%

%boot_sysroot%\bin\mingw-get install gcc g++ mingw32-make mingw32-libz mingw32-libgmp msys msys-patch
echo %boot_sysroot% /mingw >%boot_sysroot%\msys\1.0\etc\fstab
