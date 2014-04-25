@echo off

mkdir c:\mono

set zip=
for /F %%i in ('dir o:\mono\*.zip /B /O:D') do set zip=%%i

copy o:\mono\%zip% c:\mono
call zip\decomp c:\mono\%zip% c:\mono\
del c:\mono\%zip%
