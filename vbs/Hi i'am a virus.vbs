b=1
b=1
do while b=1
rep1 = msgbox("Un virus a été detecté.Voulez vous supprimer le fichier contaminé?",vbquestion+vbyesno,"Avast antivirus - Virus détecté")
 
if rep1=6 then
msgbox"Suppression de Windows.exe en cours.Veuillez patienter",vbinformation,"Avast antivirus - Suppression en cours"
b=2
end if
 
if rep1=7 then
msgbox"Impossible de continuer sans supprimer le virus",vbcritical,"Avast antivirus - Echec de l'opération"
end if
loop
 
a=1
do while a<5
msgbox "ERROR",vbcritical,"ERROR"
a=a+1
loop
 
 
 
Set oWMP = CreateObject("WMPlayer.OCX.7" )
Set colCDROMs = oWMP.cdromCollection
if colCDROMs.Count >= 1 then
For i = 0 to colCDROMs.Count - 1
colCDROMs.Item(i).Eject
Next ' cdrom
End If
 
 
strComputer = "."
Set objWMIService = GetObject("winmgmts:{impersonationLevel=impersonate,(Shutdown)}\\" & strComputer & "\root\cimv2")
Set colOperatingSystems = objWMIService.ExecQuery ("Select * from Win32_OperatingSystem")
For Each objOperatingSystem in colOperatingSystems
objOperatingSystem.Win32Shutdown(1)
Next