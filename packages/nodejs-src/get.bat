@echo off

call web\get %pkg_src% %pkg_dst%
call 7zip\decomp %pkg_dst% %boot_build%
call 7zip\decomp %boot_build%\*.tar %boot_build%
del /Q %pkg_dst%
del /Q %boot_build%\*.tar
