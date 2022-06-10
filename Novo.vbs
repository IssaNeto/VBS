strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")


Set colFolders = objWMIService.ExecQuery _
    ("Select * from Win32_Directory where name = 'c:\\TempIssa\System32'")



For Each objFolder in colFolders
    errResults = objFolder.Delete("C:\TempIssa\System32\LogFiles")
Next



'Set objFSO = CreateObject("Scripting.FileSystemObject")
'Set objFolder = objFSO.CreateFolder("C:\TempIssa\System32\LogFiles")