@echo off

if exist %pkg_cache% goto cache_

setlocal

git remote get-url origin | findstr https://
if [%errorlevel%]==[0] (
  :connect_
  echo Enter your git.epsitec.ch username:
  set /p location=

  git clone --recursive https://%location%@%pkg_host%/%pkg_src% %pkg_dst%
  if not [%errorlevel%]==[0] goto connect_
) else (
  git clone --recursive git@%pkg_host%:%pkg_src% %pkg_dst%
)

endlocal
exit /b

:cache_

call xcopy %pkg_cache% %pkg_dst% /s /e /h /i
