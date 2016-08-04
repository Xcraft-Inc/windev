@echo off

if exist %pkg_cache% goto cache_

setlocal

git config --global http.sslVerify false
git config --global core.askpass "C:\Program Files (x86)\Git\libexec\git-core\git-gui--askpass"

:connect_
echo Enter your git.epsitec.ch username:
set /p location=

git clone --recursive https://%location%@%pkg_src% %pkg_dst%
if not [%errorlevel%]==[0] goto connect_

endlocal
exit /b

:cache_

call xcopy %pkg_cache% %pkg_dst% /s /e /h /i
