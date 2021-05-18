@echo off

echo On Error Resume Next                                    > %boot_build%/unzip.vbs
echo strZipFile = "%pkg_dst%"                               >> %boot_build%/unzip.vbs
echo outFolder = "%boot_build%\7zip"                        >> %boot_build%/unzip.vbs
echo Set objShell = CreateObject( "Shell.Application" )     >> %boot_build%/unzip.vbs
echo Set objSource = objShell.NameSpace(strZipFile).Items() >> %boot_build%/unzip.vbs
echo Set objTarget = objShell.NameSpace(outFolder)          >> %boot_build%/unzip.vbs
echo intOptions = 256                                       >> %boot_build%/unzip.vbs
echo objTarget.CopyHere objSource, intOptions               >> %boot_build%/unzip.vbs
echo If Err.Number <> 0 Then                                >> %boot_build%/unzip.vbs
echo   Set objShell = CreateObject("Wscript.shell")         >> %boot_build%/unzip.vbs
echo   objShell.Run("powershell Expand-Archive -LiteralPath " ^& strZipFile ^& "-DestinationPath " ^& outFolder) >> %boot_build%/unzip.vbs
echo End If

mkdir %boot_build%\7zip
call wscript %boot_build%/unzip.vbs
del /Q %boot_build%\unzip.vbs
del /Q %pkg_dst%
