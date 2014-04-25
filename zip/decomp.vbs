' UnZip a file script
'
' Very inspired of a script by Justin Godden 2010

Set ArgObj = WScript.Arguments

If (Wscript.Arguments.Count > 0) Then
  var1 = ArgObj (0)
  If (Wscript.Arguments.Count > 1) Then
    var2 = ArgObj (1)
  else
    var2 = ""
  End if
Else
  var1 = ""
End if

strFileZIP = var1
' The folder the contents should be extracted to.
outFolder = var2

WScript.Echo ("Extracting file " & strFileZIP)

Set objShell = CreateObject( "Shell.Application" )
Set objSource = objShell.NameSpace(strFileZIP).Items()
Set objTarget = objShell.NameSpace(outFolder)
intOptions = 256
objTarget.CopyHere objSource, intOptions

WScript.Echo ("Extracted.")
