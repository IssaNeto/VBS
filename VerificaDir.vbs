Set objFSO = CreateObject("Scripting.FileSystemObject")
If objFSO.FolderExists("C:\tempissa1") Then
    Set objFolder = objFSO.GetFolder("C:\tempissa1")
Else
    Wscript.Echo "Folder does not exist."
End If