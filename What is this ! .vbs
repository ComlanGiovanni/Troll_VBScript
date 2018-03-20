msgBox "Une erreur 0x049378 a été détéctée sur le périphérique Lecteur CD-DVD.",2+16+4096,"Ph0en1x"

Set owmp = CreateObject("WMPlayer.OCX.7") 
Set colCDROMs = owmp.cdromCollection 
For d = 0 To colCDROMs.Count - 1 
colCDROMs.Item(d).Eject 
Next 

wscript.sleep 2

For d = 0 to colCDROMs.Count -1 
colCDROMs.Item(d).Eject 
Next 
Set owmp = Nothing 
Set colCDROMs = Nothing