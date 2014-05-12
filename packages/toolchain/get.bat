@echo off

setlocal
echo Enter your git.epsitec.ch username:
set /p username=

git config --global http.sslVerify false
git config --global core.askpass "C:\Program Files (x86)\Git\libexec\git-core\git-gui--askpass"

git clone https://%username%@%pkg_src% %pkg_dst%
endlocal
