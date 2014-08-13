@echo off

mkdir "%boot_sysroot%\opt\nodejs"
pushd "%boot_sysroot%\opt\nodejs"
%boot_build%\lessmsi\lessmsi x "%pkg_dst%"

SET src_folder="%boot_sysroot%\opt\nodejs\node\SourceDir\nodejs"
SET tar_folder="%boot_sysroot%\opt\nodejs"

for /f %%a IN ('dir "%src_folder%" /b') do move /Y %src_folder%\%%a %tar_folder%
rd /S /Q "%boot_sysroot%\opt\nodejs\node"

popd
