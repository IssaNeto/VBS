Set objWMIService = GetObject("winmgmts:\\.\root\CIMV2")
Set colItems = objWMIService.ExecQuery("SELECT Caption FROM Win32_Directory WHERE" _
    & " Drive = 'c:' and Path LIKE '%Favorites%' and Encrypted = 'true'", _
    "WQL", wbemFlagReturnImmediately + wbemFlagForwardOnly)

For Each objItem In colItems
    WScript.Echo "Caption: " & objItem.Caption
Next

