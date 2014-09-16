@echo off

if exist %pkg_cache% goto cache_

call utils\web\get %pkg_src% %pkg_dst%
exit /b

:cache_

call copy %pkg_cache% %pkg_dst%
