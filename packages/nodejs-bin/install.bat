@echo off

call utils\7zip\decomp %pkg_dst% %boot_sysroot%\nodejs
mkdir %boot_sysroot%\opt
call move %boot_sysroot%\nodejs\node-%pkg_ver%-win-x64 %boot_sysroot%\opt\nodejs

call %boot_sysroot%\opt\nodejs\node.exe %boot_sysroot%\opt\nodejs\node_modules\npm\bin\npm-cli.js install --prefix=%boot_sysroot%\opt\nodejs npm@11.5.2

del /Q %pkg_dst%
rmdir /Q %boot_sysroot%\nodejs
