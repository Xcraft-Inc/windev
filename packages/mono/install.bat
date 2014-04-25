@echo off

mkdir %input_dir%

set zip=
for /F %%i in ('dir %output_dir%\*.zip /B /O:D') do set zip=%%i

copy %output_dir%\%zip% %input_dir%
call zip\decomp %input_dir%\%zip% %input_dir%\
del %input_dir%\%zip%
