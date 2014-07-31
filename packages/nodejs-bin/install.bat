@echo off

msiexec /i %pkg_dst% INSTALLDIR="%boot_sysroot%\nodejs" /qb
del /Q %pkg_dst%
