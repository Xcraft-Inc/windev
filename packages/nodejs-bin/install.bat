@echo off

msiexec /i %pkg_dst% INSTALLDIR="%boot_sysroot%\nodejs" /qb
