@echo off

if exist %pkg_cache% goto cache_

setlocal

:connect_
echo Enter your git.epsitec.ch username:
set /p location=

git clone --recursive https://%location%@%pkg_src% %pkg_dst%
if not [%errorlevel%]==[0] goto connect_

endlocal
exit /b

:cache_

call xcopy %pkg_cache% %pkg_dst% /s /e /h /i
