@echo off

set dirname=
for %%F in ("%0") do set dirname=%%~dpF

pushd %dirname%

setlocal
set PATH=%LOCALAPPDATA%\Programs\Git\mingw64\bin;C:\Program Files\Git\mingw64\bin;C:\Program Files (x86)\Git\mingw32\bin;C:\Program Files (x86)\Git\bin;%PATH%

curl -L -o %2 %1
endlocal

popd
