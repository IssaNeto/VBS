
Option Explicit
Dim objWMIService, objProcess, colProcess
Dim strComputer, strProcessKill, strInput 
strProcessKill = "'calc.exe'" 

' Input Box to get name of machine to run the process
Do 
    strComputer = (InputBox(" ComputerName to Run Script",_
    "Computer Name"))
    If strComputer <> "" Then
    strInput = True
    End if
Loop until strInput = True


Set objWMIService = GetObject("winmgmts:" _
& "{impersonationLevel=impersonate}!\\" _ 
& strComputer & "\root\cimv2") 

Set colProcess = objWMIService.ExecQuery _
("Select * from Win32_Process Where Name = " & strProcessKill )
For Each objProcess in colProcess
    objProcess.Terminate()
Next 
WSCript.Echo "Just killed process " & strProcessKill _
& " on " & strComputer
WScript.Quit 
' End of WMI Example of a Kill Process 
