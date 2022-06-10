strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")
Set colFolders = objWMIService.ExecQuery _
    ("Select * from Win32_Directory where Name = 'c:\\tempissa\dir1'")
For Each objFolder in colFolders
    errResults = objFolder.Delete
    Wscript.Echo errResults
Next