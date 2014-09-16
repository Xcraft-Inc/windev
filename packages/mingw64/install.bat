@echo off

call utils\7zip\decomp %pkg_dst% %boot_sysroot%
del /Q %pkg_dst%

SET src_folder=%boot_sysroot%\mingw64
SET tar_folder=%boot_sysroot%

for /f %%a IN ('dir "%src_folder%" /b') do move /Y %src_folder%\%%a %tar_folder%
rmdir %boot_sysroot%\mingw64
