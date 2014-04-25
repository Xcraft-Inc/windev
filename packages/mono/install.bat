@echo off

mkdir %output_dir%

set zip=
for /F %%i in ('dir %input_dir%\*.zip /B /O:D') do set zip=%%i

copy %input_dir%\%zip% %output_dir% >NUL
call zip\decomp %output_dir%\%zip% %output_dir%\
del %output_dir%\%zip%
