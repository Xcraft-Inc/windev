@echo off
cd sysroot\ruby-2.0.0-p451-i386-mingw32\bin\
setlocal 
set PATH="%path%;%CD%"
cd ..\..\
cd rubyinstaller
rake devkit
rake ruby21
endlocal



