@echo off

rem TODO: the tar.gz should be uncompressed during the install operation!!!

if exist %pkg_cache% goto cache_

call utils\web\get %pkg_src% %pkg_dst%
call utils\7zip\decomp %pkg_dst% %boot_build%
call utils\7zip\decomp %boot_build%\*.tar %boot_build%
del /Q %pkg_dst%
del /Q %boot_build%\*.tar
exit /b

:cache_

call copy %pkg_cache% %boot_build%\node-%pkg_ver%


