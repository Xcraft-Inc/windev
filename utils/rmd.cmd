mkdir trash
robocopy trash "%1" /S /MIR /NFL /NDL /NC /NS /NP >NUL
rmdir trash
rmdir "%1"
exit /b
