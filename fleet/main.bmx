SeedRnd MilliSecs()


Global screenx:Float = 1024
Global screeny:Float = 768
Global pointx:Float = screenx / 2.0
Global pointy:Float = screeny / 2.0

SetGraphicsDriver D3D7Max2DDriver()
AppTitle = "fleet"
Global fenster:TGraphics = Graphics(screenx, screeny)


SetBlend(ALPHABLEND)


SetImageFont(LoadImageFont("Courier New", 12, SMOOTHFONT))

'imagestuff
Global back01:TImage = LoadImage("gfx/back01.png")

Global p_scan:TPixmap = CreatePixmap(301, 301, PF_RGBA8888)

For Local y:Int = 0 To 300
	For Local x:Int = 0 To 300
		Local rad:Float = Sqr((x - 150) ^ 2 + (y - 150) ^ 2)
		
		If rad >= 150 Then p_scan.WritePixel(x, y, color(255, 255, 255, 0))
		Local xr:Int = ((- rad + 150) * 5.12)
		If xr < 0 Then xr = 0
		If xr > 255 Then xr = 255
		If rad > 100 And rad < 150 Then p_scan.WritePixel(x, y, color(255, 255, 255, xr))
		If rad <= 100 Then p_scan.WritePixel(x, y, color(255, 255, 255, 255))
	Next
Next

Global i_scan:timage = LoadImage(p_scan)

Global Vx:Float, Vy:Float
Global sin3:Float
'temp globals
Global bmx:Float, bmy:Float
Global cmx:Float, cmy:Float, selclick:Byte, selis:Int

'mouseglobals
Global md1:Int, mh1:Int

'tempfunc calls
Global tempplat:Tplatoon, tempbot:Tbot

tempbot = add_bot()

tempplat = add_platoon(0, 0, 1)
add_ships(tempplat, ship_lwarpig, 14999)

tempplat = add_platoon(0, 100, 1)
add_ships(tempplat, ship_lwarpig, 14999)

tempplat = add_platoon(100, 0, 1)
add_ships(tempplat, ship_lwarpig, 14999)

tempplat = add_platoon(Rand(- 500, 500), Rand(- 500, 500), 2)
add_ships(tempplat, ship_lwarpig, 9999)
tempbot.add_tobot(tempplat)

tempplat = add_platoon(Rand(- 500, 500), Rand(- 500, 500), 2)
add_ships(tempplat, ship_lwarpig, 9999)
tempbot.add_tobot(tempplat)

tempplat = add_platoon(Rand(- 500, 500), Rand(- 500, 500), 2)
add_ships(tempplat, ship_lwarpig, 9999)
tempbot.add_tobot(tempplat)


Global msc:Int
Global lasttime:Int = MilliSecs()
Global time:Int = MilliSecs()
'HideMouse()
While Not (KeyHit(KEY_ESCAPE) Or AppTerminate())
	'get time differance
	lasttime = time
	time = MilliSecs()
	msc = time - lasttime
	
	sin3 = ((Sin(time / 3) + 1.0) / 2.0)
	
	Cls
	
	md1 = MouseDown(1) ; mh1 = MouseHit(1)
	
	reset_draw()
	
	If MouseDown(2) Then
		If selis Then
			If selis > 1 Then
				Local twinkel:Float = 360 / Float(selis)
				Local tmpwinkel:Float
				Local tmpx:Float = MouseX() - pointx + Vx
				Local tmpy:Float = MouseY() - pointy + Vy
				
				For Local platoon:Tplatoon = EachIn platoonlist
					platoon.settarget(tmpx + Cos(tmpwinkel) * 10, tmpy + Sin(tmpwinkel) * 10)
					If platoon.selected Then tmpwinkel:+twinkel
				Next

			Else
				For Local platoon:Tplatoon = EachIn platoonlist
					platoon.settarget(MouseX() - pointx + Vx, MouseY() - pointy + Vy)
				Next
			End If
			
		Else
			Vx = pointx - MouseX()
			Vy = pointy - MouseY()
		EndIf
	End If
	
	'background
	'DrawImage(back01, - 522 + pointx - Vx, - 522 + pointy - Vy)
	
	SetAlpha(0.1)
	For Local x:Int = -10 To 10
		For Local y:Int = -10 To 10
			DrawRect((x * 50) + pointx - Vx - 22, (y * 50) + pointy - Vy - 22, 44, 44)
		Next
	Next
	
	DrawRect(- 10 - get_ver_x(), - 1 - get_ver_y(), 20, 2)
	DrawRect(- 1 - get_ver_x(), - 10 - get_ver_y(), 2, 20)
	reset_draw()
	
	For Local wbot:Tbot = EachIn botlist
		wbot.work()
		For Local alert:Talert = EachIn wbot.botalertlist
			SetAlpha(0.1) ; SetColor(255, 0, 0)
			SetHandle(50.0 * alert.size, 50.0 * alert.size)
			
			DrawPicture(i_scan, alert.x - get_ver_x(), alert.y - get_ver_y(), 101.0 * alert.size, 101.0 * alert.size)
			SetHandle(4, 6) ;SetAlpha(1)
			DrawText("!", alert.x - get_ver_x(), alert.y - get_ver_y())
			alert.time:+msc
			If alert.time > 10000 Then wbot.botalertlist.Remove(alert)
		Next
	Next
	reset_draw()
	For Local platoon:Tplatoon = EachIn platoonlist
		platoon.move()
		platoon.chksee()
		If KeyDown(KEY_SPACE) Then platoon.seeme = True
		platoon.shoot()
		platoon.draw_presicht(selis)
		platoon.calc_sicht()
		platoon.draw_sicht()
	Next
	
	For Local platoon:Tplatoon = EachIn platoonlist
		platoon.draw_movec()
	Next
	
	For Local platoon:Tplatoon = EachIn platoonlist
		platoon.draw_text()
	Next
	
	For Local platoon:Tplatoon = EachIn platoonlist
		platoon.draw_status()
	Next
	
	For Local platoon:Tplatoon = EachIn platoonlist
		platoon.draw()
		
		If platoon.ships <= 0 Then
			platoonlist.Remove(platoon)
			Select platoon.status
				Case 1
					tempplat = add_platoon(0, 0, 1)
					add_ships(tempplat, ship_lwarpig, 14999)
				Case 2
					tempplat = add_platoon(Rand(- 500, 500), Rand(- 500, 500), 2)
					add_ships(tempplat, ship_lwarpig, 9999)
					tempbot.add_tobot(tempplat)
			End Select
		EndIf
	Next
	reset_draw()
	If mh1 Then
		bmx = MouseX() - pointx
		bmy = MouseY() - pointy
		cmx = MouseX() - pointx
		cmy = MouseY() - pointy
		selclick = 1
	Else
		If md1 Then
			cmx = MouseX() - pointx
			cmy = MouseY() - pointy
			SetAlpha(0.2)
			DrawRect(bmx + pointx, bmy + pointy, - (bmx - cmx), - (bmy - cmy))
		Else
			If selclick Then
				If bmx = cmx And bmy = cmy Then
					selis = 0
					For Local platoon:Tplatoon = EachIn platoonlist
						If platoon.selectme((MouseX() - pointx) + Vx - 5, (MouseY() - pointy) + Vy - 5, (MouseX() - pointx) + Vx + 5, (MouseY() - pointy) + Vy + 5) Then selis:+1
					Next
				Else
					selis = 0
					For Local platoon:Tplatoon = EachIn platoonlist
						If platoon.selectme(bmx + Vx, bmy + Vy, cmx + Vx, cmy + Vy) Then selis:+1
					Next
				End If
			EndIf
			selclick = 0
		End If
	End If
	
	'DrawRect((MouseX() - pointx) + pointx, (MouseY() - pointy) + pointy, 10, 10)
	'interface
	update_interface()
	reset_draw()
	Local line:Int
	For Local wbot:Tbot = EachIn botlist
		line:+10
		DrawText("Botstatus: " + wbot.status, 10, line)
		For Local platoon:Tplatoon = EachIn wbot.platoonbotlist
			line:+10
			DrawText("platoon.Botstatus: " + platoon.botstatus, 10, line)
			line:+10
			DrawText("platoon.Bottime: " + platoon.bottime, 10, line)
		Next
		
	Next
	
	'DrawRing(200, 200, 100, 15)
	'DrawText("x: " + Int(MouseX() - pointx) + "  y: " + Int(MouseY() - pointy), 10, 40)

	Flip
Wend

End