Framework brl.Blitz
Import brl.GLMax2D
Import brl.timer
Import brl.linkedlist
Import brl.random
Import brl.Retro
Import brl.JPGLoader
Import brl.PNGLoader
Import brl.pixmap
Import brl.Stream
SuperStrict


Notify("Number of arguments = " + AppArgs.length)

For Local a:String = EachIn AppArgs
	
	Local found:Int = 0
	If Right(a, 4) = ".ros" Then
		found = 1
	End If
	If found = 0 Then
		Notify("no compitable data found!")
	Else
		Notify("compitable data found! Working!")
	EndIf
Next
End

Type Ttextur
	Field render:Ttextur[8], isRendert:Int, doRender:Int, orginal:Ttextur, redertlist:TList = CreateList()
	Field img:TImage, pic:TPixmap, version:Int, beforeTex:Ttextur
	Field isAlpha:Byte, isDust:Byte, r:Byte, g:Byte, b:Byte
	Field speicherort:String, datname:String, group:String, eingestellt:Byte
End Type
Global texturlist:TList = CreateList()
Global maptexturlist:TList = CreateList()

Type Ttexgroup
	Field group:String
	Field texlink:Ttextur, texlist:TList = CreateList()
End Type
Global texgrouplist:TList = CreateList()
Global maptexgrouplist:TList = CreateList()

Type Twaypoint
	Field x:Float, y:Float, cheacked:Int, size:Int, name:String, action:Taction
	Field otherWP:Twaypoint
	Field dist:Float[16], chaged:Int = 1, used:Float
	Field otherlist:TList = CreateList()
	Field othernames:String[16]
	'---- StartSet
	Field script:String[20]
End Type
Global waypointlist:TList = CreateList()
Global printlistlist:TList = CreateList()

Type Taction
	Field name:String
	Field respawn:Int, every:Int, onlytimes:Int
	Field win:Int
EndType
Global actionlist:TList = CreateList()

Type Tinfotext
	Field x:Int, y:Int, Text:String
End Type
Global infotextlist:TList = CreateList()

AppTitle = "PanzerS: Object Editor!"
Global fenster:TGraphics = Graphics(1024, 768)
SetBlend(ALPHABLEND)

Cls
DrawText("Lade " + "-01" + "% des Weltuntergangs!", 512 - 70, 384 - 7)
Flip


Global laterne_1:TImage = LoadImage("gfx\objects\laterne_1_1.png")
Global laterne_2:TImage = LoadImage("gfx\objects\laterne_1_2.png")
Global laterne_3:TImage = LoadImage("gfx\objects\laterne_1_3.png")
Global tex1x:Float = 23, tex1y:Float = 23, tex1w:Float = 0

Global waypoint_1:TImage = LoadImage("gfx\objects\waypoint_1_1.png")
Global waypoint_2:TImage = LoadImage("gfx\objects\waypoint_1_2.png")
Global tex2x:Float = 10, tex2y:Float = 16.5, tex2w:Float = 0

Global spass:Int = 0


Global nowGroup:Ttexgroup, menuVy:Int, gmenuVy:Int, menulock:Int, gmenulock:Int, menudiff:Int, gmenudiff:Int, selectedtex:Ttextur, md:Int

For Local cTtexgroup:Ttexgroup = EachIn texgrouplist
	nowGroup = cTtexgroup ; Exit
Next

Global gVx:Float, gVy:Float, omx:Int, omy:Int
Global selectedlayer:Int, pinselmodus:Int, pinselsize:Int, pinselmix:Int, pinselunmix:Int, wallmod:Int, wallmodklick:Int, waymod:Int, waymodaction:Int, waymodselect:Twaypoint, waymodcounter:Int
Global mouselooklock:Int = 0

Global waycecker:Int
Include "inc\may.bmx"
Include "inc\objectload.bmx"

Global tmr:Ttimer = CreateTimer(40)
'HideMouse()
While Not KeyHit(KEY_ESCAPE)
	tmr.Wait()
	Cls
	
	md = MouseHit(1)
	
	SetColor(128, 128, 128)
	DrawRect(0, 0, 1023, 767)
	SetColor(255, 255, 255)
	
	
	If md And spass = 0 Then spass = 1
	
	If spass = 1 Then
		tex1w = tex1w + 6
		If tex1w > 90 Then spass = 2
	EndIf
	
	tex2w = tex2w + 6
	If tex2w > 360 Then tex2w = tex2w - 360
	
	If spass >= 2 Then
		spass = spass + 1
		If spass > 120 Then spass = 0 ; tex1w = 0
	End If
	
	DrawPicture(laterne_2, 100, 100, 320, 320)
	SetHandle((tex1x * 10), (tex1y * 10))
	SetRotation(tex1w)
	If tex1w = 0 Or (tex1w > 35 And tex1w < 55) Then DrawPicture(laterne_3, 100 + (tex1y * 10), 100 + (tex1x * 10), 320, 320)
	DrawPicture(laterne_1, 100 + (tex1y * 10), 100 + (tex1x * 10), 320, 320)
	
	SetRotation(0)
	SetHandle(0, 0)
	DrawPicture(waypoint_2, 500, 100, 160, 160)
	SetHandle(25, 25)
	SetRotation(tex2w)
	DrawPicture(waypoint_1, 500 + (tex2y * 5), 100 + (tex2x * 5), 50, 50)
	SetRotation(0)
	SetHandle(0, 0)
	
	
	Flip
Wend

End


Function mouseover:Int(x:Int, y:Int, w:Int, h:Int)
	Local ret:Int = 0
	
	If MouseX() > x And MouseX() < x + w And MouseY() > y And MouseY() < y + h Then ret = 1
	
	Return ret
End Function



Function button:Int(text:String, x:Int, y:Int, w:Int, h:Int, on:Int = 0, infotext:String = "")
	Local ret:Int = 0
	SetColor(0, 0, 0)
	DrawRect(x - 2, y - 2, w + 4, h + 4)
	If mouseover(x, y, w, h) Then
		SetColor(180, 180, 180)
	Else
		If on Then SetColor(180, 200, 180) Else SetColor(120, 120, 120)
	EndIf
	DrawRect(x, y, w, h)
	If mouseover(x, y, w, h) Then
		SetColor(255, 255, 255)
	Else
		If on Then SetColor(0, 0, 0) Else SetColor(255, 255, 255)
	EndIf
	DrawText(Text, (x + (w / 2)) - ((Text.Length * 8.5) / 2), (y + (h / 2)) - (7))
	
	If md Then
		If mouseover(x, y, w, h) Then
			If md Then ret = 1
		End If
	End If
	
	If infotext.Length > 0 Then
		If mouseover(x, y, w, h) Then
			Local nTinfotext:Tinfotext = New Tinfotext
			infotextlist.AddLast(nTinfotext)
			nTinfotext.x = x
			nTinfotext.y = y
			nTinfotext.Text = infotext
		End If
	EndIf
	
	Return ret
End Function
