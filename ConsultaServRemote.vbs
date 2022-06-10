strComputer = "pad01"
Set objSWbemServices = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
Set colSWbemObjectSet = objSWbemServices.ExecQuery("SELECT * FROM Win32_Service")
For Each objSWbemObject In colSWbemObjectSet
    WScript.Echo "Display Name:  " & objSWbemObject.DisplayName & vbCrLf & _
                 "   State:      " & objSWbemObject.State       & vbCrLf & _
                 "   Start Mode: " & objSWbemObject.StartMode   & vbCrLf
Next