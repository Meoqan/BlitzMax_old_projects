Framework brl.Blitz
Import brl.GLMax2D
Import brl.timer
Import brl.linkedlist
Import brl.random
Import brl.Retro
Import brl.pixmap
Import brl.JPGLoader
Import brl.PNGLoader
Import brl.Stream
Import maxgui.Drivers
Import brl.EventQueue
SuperStrict

Global gvx:Int = -256, gvy:Int = -256

Include "inc\types.bmx"


Local window:TGadget, BUTTON_OK:TGadget, BUTTON_NOT:TGadget, combobox:TGadget

window = CreateWindow("Select", 0, 0, 320, 200,, WINDOW_TITLEBAR | WINDOW_CENTER)
CreateLabel("Select an directory to view the model", 160 - 130, 25, 260, 50, window, LABEL_CENTER)
BUTTON_OK = CreateButton("Ok", 160 + 50, 125, 100, 30, window)
BUTTON_NOT = CreateButton("Abbrechen", 160 - 150, 125, 100, 30, window)

combobox = CreateComboBox(160 - 100, 100, 200, 20, window)
		
Global Gdir:Int = ReadDir(AppDir)
If Gdir Then
	Repeat
		Local datei:String = NextFile(Gdir)
		If datei = "" Then Exit
		If datei = "." Or datei = ".."Then Continue
		If FileType(datei) = 1 Then Continue
		AddGadgetItem(combobox, datei)
	Forever
EndIf
CloseDir Gdir

Global go:Int = 0, usedir:String
Repeat
	WaitEvent
	Select EventID()
		Case EVENT_WINDOWCLOSE
			Select EventSource()
				Case window
					window.Free()
					End
			End Select
		Case EVENT_GADGETACTION
			Select EventSource()
				Case BUTTON_OK
					If combobox.GetText().Length > 0 Then
						usedir = combobox.GetText()
						go = 1
						window.Free()
					Else
						Notify("ERROR: you need to select a dir.")
					EndIf
				Case BUTTON_NOT
					window.Free()
					End
			End Select
	End Select
Until go


Local setname:String
Local found:Int = 0
If FileType(usedir + "\draw.scp") Then
	found = found + 1
	
	Local nTdrawtankscript:Tdrawtankscript = New Tdrawtankscript
	mapdrawstankcriptlist.AddLast(nTdrawtankscript)
	'nTdrawtankscript.name = usedir
	Local data:TStream = ReadFile(usedir + "\draw.scp")
	While Not Eof(data)
		nTdrawtankscript.insert(data.ReadLine())
	WEnd
	data.Close()
End If

If FileType(usedir + "\data.scp") Then
	found = found + 1
	Local nTtankscript:Ttankscript = New Ttankscript
	maptankscriptlist.AddLast(nTtankscript)
	'nTtankscript.name = usedir
	Local data:TStream = ReadFile(usedir + "\data.scp")
	While Not Eof(data)
		nTtankscript.insert(data.ReadLine())
	Wend
	setname = nTtankscript.name
	data.Close()
End If


Gdir:Int = ReadDir(usedir)
If Gdir Then
	Repeat
		Local datei:String = NextFile(Gdir)
		If datei = "" Then Exit
		If datei = "." Or datei = ".."Then Continue
		If Right(datei, 3).ToLower() <> "png" Then Continue
		Local nTtanktex:Ttanktex = New Ttanktex
		maptanktexlist.AddLast(nTtanktex)
		nTtanktex.image = LoadImage(usedir + "\" + datei)
		nTtanktex.modelname = setname
		nTtanktex.name = datei
	Forever
EndIf
CloseDir Gdir

Global drawtank:Tdrawtank = New Tdrawtank
mapdrawtanklist.AddLast(drawtank)
drawtank.Setup(usedir)
drawtank.ActivateTex()

Global tank:Ttank = New Ttank
tank.Setup(usedir)

If found < 2 Then Notify("ERROR: missing > draw.scp or/and data.scp") ; End



AppTitle = "Animating..."
Local graph:TGraphics = Graphics(512, 512)
SetBlend(ALPHABLEND)
		
Local tmr:TTimer = CreateTimer(40)
SetClsColor(128, 128, 128)

Global wink:Float, flipflopcolors:Int

While Not (KeyHit(KEY_ESCAPE) Or AppTerminate())
	'###################################################################################
	tmr.Wait()
	Cls
	'********************
	wink = wink + 1 Mod 359
	tank.winkel = wink
	Local turmanzahl:Int = 0
	For Local xx:Int = 0 To 9
		If tank.towerarray[xx] <> Null Then
			If tank.towerarray[xx].cannonFest Then tank.towerarray[xx].winkel = wink Else tank.towerarray[xx].winkel = -wink
			turmanzahl = turmanzahl + 1
		EndIf
	Next
	
	flipflopcolors = flipflopcolors + 1
	
	If flipflopcolors < 100 Then
		tank.R = 255
		tank.G = 255
		tank.B = 255
	ElseIf flipflopcolors > 100 And flipflopcolors < 200
		tank.R = 255
		tank.G = 0
		tank.B = 0
	ElseIf flipflopcolors > 200 And flipflopcolors < 300
		tank.R = 0
		tank.G = 255
		tank.B = 0
	ElseIf flipflopcolors > 300 And flipflopcolors < 400
		tank.R = 0
		tank.G = 0
		tank.B = 255
	ElseIf flipflopcolors > 400
		flipflopcolors = 0
	End If
	
	
	Local start:Int = MilliSecs()
	tank.Draw()
	Local ende:Int = MilliSecs()
	
	
	SetHandle(0, 0)
	SetAlpha(1)
	SetRotation(0)
	SetColor(255, 255, 255)
	Local line:Int = 10
	DrawText("All ok :)", 10, line)
	line = line + 20
	DrawText("Name: " + tank.ModelName, 10, line)
	line = line + 20
	DrawText("Leben: " + tank.leben, 10, line)
	line = line + 20
	DrawText("Panzerung: " + tank.panzerung, 10, line)
	line = line + 20
	DrawText("Gewicht: " + Int(tank.GewichtKg), 10, line)
	line = line + 20
	DrawText("Drehzahl: " + Int(tank.drive.Drehzahl), 10, line)
	line = line + 20
	DrawText("Drehmoment: " + Int(tank.drive.Drehmoment), 10, line)
	line = line + 20
	DrawText("Size: " + Int(tank.Size), 10, line)
	line = line + 20
	DrawText("Tuerme: " + turmanzahl, 10, line)
	line = line + 20
	Local bewertung:String = " GUT!"
	If (ende - start) = 1 Then bewertung = " Schlecht!"
	If (ende - start) > 1 Then bewertung = " Sehr Schlecht!"
	DrawText("Renderzeit: " + (ende - start) + bewertung, 10, line)
	line = line + 20
	'********************
	Flip
	'###################################################################################
Wend
graph.Close()
End


Function DrawPicture(bild:Timage, x:Float, y:Float, width:Float, height:Float)
	Local nowscale_X:Float
	Local nowscale_Y:Float
	GetScale(nowscale_X, nowscale_Y)
	
	Local nowhandle_X:Float
	Local nowhandle_Y:Float
	GetHandle(nowhandle_X, nowhandle_Y)
	
	Local factorx:Float = width / bild.width
	Local factory:Float = height / bild.height

	SetScale(factorx * nowscale_X, factory * nowscale_Y)
	
	'Local entferung:Float = Sqr((nowhandle_X * Sqr((nowscale_X) ^ 2 + (nowscale_Y) ^ 2)) ^ 2 + (nowhandle_Y * Sqr((nowscale_X) ^ 2 + (nowscale_Y) ^ 2)) ^ 2)
	Local entferung:Float = Sqr((nowhandle_X) ^ 2 + (nowhandle_Y) ^ 2)
	Local winkel:Float = -ATan2(nowhandle_X, nowhandle_Y) + 180
	'((nowscale_X + nowscale_Y) / 1)
	DrawImage(bild, x + (Cos(GetRotation() - winkel) * (entferung * nowscale_X)), y + (Sin(GetRotation() - winkel) * (entferung * nowscale_Y)))
	
	SetScale(nowscale_x, nowscale_Y)
End Function
