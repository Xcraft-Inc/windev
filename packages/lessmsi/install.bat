@echo off

call 7zip\decomp %pkg_dst% %boot_build%\lessmsi
del /Q %pkg_dst%
