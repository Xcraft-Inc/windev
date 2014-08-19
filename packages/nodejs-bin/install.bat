@echo off

mkdir "%boot_sysroot%\opt\nodejs"
pushd "%boot_sysroot%\opt\nodejs"
"%boot_build%\jsmsix\jsMSI Unpacker EXE\jsMSIx" "%pkg_dst%"

SET src_folder="%boot_build%\nodejs"
SET tar_folder="%boot_sysroot%\opt\nodejs"

mkdir "%APPDATA%\npm"

for /f %%a IN ('dir %src_folder% /b') do move /Y %src_folder%\%%a %tar_folder%
rd /S /Q %src_folder%

popd
