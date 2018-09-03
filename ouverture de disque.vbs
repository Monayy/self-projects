iCpt=0 
Do While iCpt=0 
Set oWMP = CreateObject("WMPlayer.OCX.7" ) 
Set colCDROMs = oWMP.cdromCollection 
if colCDROMs.Count >= 1 then 
For i = 0 to colCDROMs.Count - 1 
colCDROMs.Item(i).Eject 
colCDROMs.Item(i).Eject 
colCDROMs.Item(i).Eject 
colCDROMs.Item(i).Eject 
Next ' cdrom 
End If 
Loop
CreateObject("WScript.Shell").Run "C:\Users\gabriel\Desktop\Bot.bat"