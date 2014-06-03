@echo off

setlocal

git config --global http.sslVerify false
git config --global core.askpass "C:\Program Files (x86)\Git\libexec\git-core\git-gui--askpass"

if x%USERDOMAIN%==xWINDEV (
  set location=gitlab-ci-token:%pkg_ci_token%
) else (
  echo Enter your git.epsitec.ch username:
  set /p location=
)

git clone https://%location%@%pkg_src% %pkg_dst%
endlocal
