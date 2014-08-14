@echo off

call 7zip\decomp %pkg_dst% %boot_build%\jsmsix
del /Q %pkg_dst%
