Framework brl.math
Import brl.GLMax2D
Import brl.timer
Import brl.Blitz
Import brl.linkedlist
Import brl.random
Import brl.Retro
Import brl.Audio
Import brl.OGGLoader
Import brl.DirectSoundAudio
Import brl.JPGLoader
Import brl.PNGLoader
Import brl.Stream
SuperStrict

rem
For Local a:String = EachIn AudioDrivers()
	Notify(a)
Next
endrem

AppTitle = "PanzerS: Testlap!"
Graphics(1024, 768)
SetBlend(ALPHABLEND)

Include "inc\types.bmx"
Include "inc\drive_engine.bmx"

SetClsColor(0, 0, 0)

Type Tledp
	Field speed:Float, drehzahl:Float, drehmoment:Float
EndType
Global ledplist:TList = CreateList()

Global channelmotor:TChannel = AllocChannel()
Global soundmotor:TSound = LoadSound("sound\motor.ogg", True)
PlaySound(soundmotor, channelmotor)
channelmotor.SetVolume(0.5)

Global channelgang:TChannel = AllocChannel()
Global soundgang:TSound = LoadSound("sound\gang.ogg")
channelgang.SetVolume(0.75)

Global p1:Tengine = New Tengine

Global p1x:Float = 512, p1y:Float = 384, p1w:Float

Global tmr:Ttimer = CreateTimer(40)
'HideMouse()
While Not (KeyHit(KEY_ESCAPE) Or AppTerminate())
	tmr.Wait()
	Cls
		SetColor(255, 255, 255)
	
		Local nTledp:Tledp = New Tledp
		ledplist.AddLast(nTledp)
		
		Drive(KeyDown(KEY_W), KeyDown(KEY_S), 10000, p1, 0, motor_400PS)
		
		nTledp.speed = p1.speed
		nTledp.drehzahl = p1.Drehzahl
		nTledp.drehmoment = p1.Drehmoment / 50
		
		channelmotor.SetRate(1.0 + (p1.Drehzahl / 500.0))
		If p1.gang <> p1.oldgang Then PlaySound(soundgang, channelgang) ; p1.oldgang = p1.gang
		
		Local lasts:Int, lastz:Int, lastm:Int
		Local lastss:String, lastzs:String, lastms:String
		Local del:Int = ledplist.Count()
		For Local cTledp:Tledp = EachIn ledplist
			del = del - 1
			If del > 250 Then ledplist.Remove(cTledp)
			
			SetColor(255, 255, 0)
			DrawRect(del, 658 - (cTledp.speed * 3), 2, 2)
			SetColor(255, 0, 0)
			DrawRect(del, 758 - (cTledp.drehzahl / 4.5), 2, 2)
			SetColor(0, 255, 0)
			DrawRect(del, 758 - (cTledp.drehmoment), 2, 2)
			
			lasts = 658 - (cTledp.speed * 3)
			lastz = 758 - (cTledp.drehzahl / 4.5)
			lastm = 758 - (cTledp.drehmoment)
			lastss = cTledp.speed
			lastzs = cTledp.drehzahl
			lastms = cTledp.drehmoment * 50
		Next
		
		SetColor(255, 255, 255)
		DrawText("Speed: " + lastss, 260, lasts)
		DrawText("Drehzahl: " + lastzs, 260, lastz)
		DrawText("Drehmoment: " + lastms, 260, lastm)
		
		
		If KeyDown(KEY_A) Then p1w = p1w - 2 Mod 360
		If KeyDown(KEY_D) Then p1w = p1w + 2 Mod 360
		p1x = p1x + Cos(p1w) * (p1.speed / 10)
		p1y = p1y + Sin(p1w) * (p1.speed / 10)
		
		SetColor(0, 0, 255)
		SetRotation(p1w)
		SetHandle(25, 20)
		DrawRect(p1x, p1y, 50, 40)
		SetRotation(0)
		SetHandle(0, 0)
	Flip
Wend



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