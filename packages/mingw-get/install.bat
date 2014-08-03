@echo off

call 7zip\decomp %pkg_dst% %boot_sysroot%
del /Q %pkg_dst%

%boot_sysroot%\bin\mingw-get install gcc g++ mingw32-make msys
