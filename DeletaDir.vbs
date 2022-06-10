' Delete a Folder


strComputer = "issaneto"
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set colFolders = objWMIService.ExecQuery _
    ("Select * from Win32_Directory where Name = 'c:\\TempIssa\Dir1' ")

For Each objFolder in colFolders
    errResults = objFolder.Delete
Next