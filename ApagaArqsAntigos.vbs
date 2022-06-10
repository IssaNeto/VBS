set FSo = CreateObject("Scripting.FileSystemObject") 
set folder = FSO.getFolder ("F:DB BrisaBackup-DBBAK-LOG-OLD")   
for each file in folder.files 
if (dateDiff("d", file.DateLastModified, now) >40) then 
File.delete 
end if 
next

