Function addglow(x:Float, y:Float, s:Float, l:Int, r:Int, g:Int, b:Int)
	If x - gVx > 0 And x - gVx < aufloesung[0] And y - gVy > 0 And y - gVy < aufloesung[1] Then
		Local nTglow:Tglow = New Tglow
		glowlist.AddLast(nTglow)
		nTglow.x = x
		nTglow.y = y
		nTglow.r = r
		nTglow.g = g
		nTglow.b = b
		nTglow.d = l
		nTglow.l = l
		ntglow.s = s
	EndIf
End Function

Function addbot(x:Int, y:Int, r:Float, freund:Int = 0)
	Local nTbot:Tbot = New Tbot
	
	ntbot.tank = New Ttank
	ntbot.tank.Setup("SB09")
	ntbot.DrawTank = ntbot.tank.cDrawTank
	
	botlist.AddLast(ntbot)
	ntbot.fraktion = freund
	ntbot.tank.x = x
	ntbot.tank.y = y
	ntbot.tank.winkel = r
	If freund = 0 Then
		ntbot.tank.R = 64
		ntbot.tank.G = 64
		ntbot.tank.B = 255
	Else
		ntbot.tank.R = 255
		ntbot.tank.G = 64
		ntbot.tank.B = 64
	End If
	
	
End Function

Function DrawObject(nr:Int, x:Float, y:Float, scale:Float)
	SetScale(scale, scale)
	
	Select nr
		Case 1 'Baum
			SetAlpha(0.2)
			SetRotation(0)
			
			SetColor(0, 0, 0)
			SetHandle(32.5, 22.5)
			DrawOval(x, y, 65, 65)
			
			SetAlpha(1)
			SetHandle(15, 40)
			DrawRect(x, y, 30, 50)
			SetHandle(15, 10)
			DrawOval(x, y, 30, 30)
			
			SetHandle(12.5, 37.5)
			SetColor(128, 64, 0)
			DrawRect(x, y, 25, 45)
			SetHandle(12.5, 7.5)
			DrawOval(x, y, 25, 25)
			
			SetHandle(35, 80)
			SetColor(0, 0, 0)
			DrawOval(x, y, 70, 70)
			
			SetHandle(32.5, 77.5)
			SetColor(0, 128, 0)
			DrawOval(x, y, 65, 65)
			
			SetHandle(10, 67.5)
			SetColor(0, 160, 0)
			DrawOval(x, y, 30, 30)
		Case 2 'tonne
			SetAlpha(1)
			SetColor(0, 0, 0)
			SetRotation(0)
			SetHandle(35, 15)
			DrawOval(x, y, 70, 70)
			
			SetHandle(34, 35)
			DrawRect(x, y, 68, 70)
			
			SetColor(100, 100, 100)
			SetHandle(32.5, 12.5)
			DrawOval(x, y, 65, 65)
			SetColor(50, 50, 50)
			SetHandle(32.5, 17.5)
			DrawOval(x, y, 65, 65)
			SetHandle(31.5, 32.5)
			DrawRect(x, y, 63, 65)
			
			SetColor(0, 0, 0)
			SetHandle(35, 55)
			DrawOval(x, y, 70, 70)
			
			SetColor(100, 100, 100)
			SetHandle(32.5, 52.5)
			DrawOval(x, y, 65, 65)
			
			SetColor(150, 150, 150)
			SetHandle(25, 40)
			DrawOval(x, y, 20, 20)
			
		Case 3 'gebauede
			SetAlpha(1)
			
			SetRotation(0)
			SetColor(0, 0, 0)
			SetHandle(52.5, 52.5)
			DrawRect(x, y, 105, 105)
			
			SetColor(70, 70, 120)
			SetHandle(50, 50)
			DrawRect(x, y, 100, 100)
			
			SetColor(0, 0, 0)
			SetHandle(52.5, 102.5)
			DrawRect(x, y, 105, 105)
			
			SetColor(120, 120, 120)
			SetHandle(50, 100)
			DrawRect(x, y, 100, 100)
			
			SetColor(128, 64, 0)
			SetHandle(40, - 20)
			DrawRect(x, y, 15, 30)
			
			SetColor(0, 0, 255)
			SetHandle(10, - 20)
			DrawRect(x, y, 30, 15)
			
		Default
			SetAlpha(1)
			SetColor(255, 100, 100)
			SetHandle(32.5, 5)
			SetRotation(45)
			DrawRect(x, y, 65, 10)
			SetRotation(- 45)
			DrawRect(x, y, 65, 10)
			SetRotation(0)
			SetHandle(23, - 16)
			SetScale(1, 1)
			DrawText("NO OBJ", x, y)
			SetScale(0.5, 0.5)
	End Select
End Function

Function Createfire(x:Float, y:Float, size:Float, richtung:Float, speed:Float, dauer:Float)
	Local nfire:Tfire = New Tfire
	firelist.AddLast(nfire)
	nfire.x = x
	nfire.y = y
	nfire.s = size
	nfire.r = richtung
	nfire.w = speed
	nfire.w2 = speed + 1
	nfire.d = dauer
	
	addglow(x, y, 128, 40, 255, 255, 64)
End Function

Function Drawfire()
	Local tmp:Int = Rnd(0, 64)
	SetColor(255 - tmp, 255 - tmp, 255 - tmp)
	For Local cfire:Tfire = EachIn firelist
		cfire.x = cfire.x + Cos(cfire.r) * cfire.w
		cfire.y = cfire.y + Sin(cfire.r) * cfire.w
		
		cfire.s = cfire.s + (cfire.w2 / 6)
		If cfire.s > cfire.w2 * (cfire.d / 2) Then cfire.a = cfire.a - 0.05 ; If cfire.a < 0.1 Then cfire.a = 0.05; firelist.remove(cfire)
		
		cfire.ir = cfire.ir + Rnd(4, 6)
		cfire.w = cfire.w * 0.75
		
		SetAlpha(cfire.a)
		SetRotation(cfire.ir)
		SetHandle(cfire.s / 2, cfire.s / 2)
		DrawPicture(fire, cfire.x - gVx, cfire.y - gVy, cfire.s, cfire.s)
	Next
End Function

Function CreateSmoke(x:Float, y:Float, size:Float, richtung:Float, speed:Float, dauer:Float)
	Local nSmoke:Tsmoke = New Tsmoke
	smokelist.AddLast(nSmoke)
	nSmoke.x = x
	nSmoke.y = y
	nSmoke.s = size
	nSmoke.r = richtung
	nSmoke.w = speed
	nSmoke.w2 = speed + 1
	nSmoke.d = dauer
End Function

Function CreateMud(x:Float, y:Float, size:Float, richtung:Float, speed:Float, dauer:Float)
	Local nMud:Tmud = New Tmud
	mudlist.AddLast(nMud)
	nMud.x = x
	nMud.y = y
	nMud.s = size
	nMud.r = richtung
	nMud.w = speed
	nMud.w2 = size
	nMud.d = dauer
End Function

Function CreateFunken(x:Float, y:Float, speed:Float, richtung:Float)
	Local nFunken:Tfunken = New Tfunken
	funkenlist.AddLast(nFunken)
	nFunken.x = x
	nFunken.y = y
	nFunken.s = speed
	nFunken.r = richtung
	nFunken.z = 85 + Rnd(- 5, 5)
End Function

Function Drawfunken()
	SetColor(255, 255, 0)
	SetAlpha(0.75)
	SetRotation(0)
	SetHandle(2, 2)
	For Local cFunken:Tfunken = EachIn funkenlist
		cfunken.x = cfunken.x + Cos(cfunken.r) * cfunken.s
		cfunken.y = cfunken.y + Sin(cfunken.r) * cfunken.s
		
		Local del:Int = 0
		cFunken.z = cFunken.z - 1
		cFunken.az = cFunken.az + cfunken.s
		If cFunken.az > 180 Then del = 1
		If cFunken.z <= 0 Then del = 1
		If del = 1 Then funkenlist.Remove(cfunken)
		
		cfunken.s = cfunken.s * 0.96
		While cfunken.r < 0
			cfunken.r = cfunken.r + 360
		WEnd
		While cfunken.r > 360
			cfunken.r = cfunken.r - 360
		WEnd
		If cfunken.r > 90 And cfunken.r < 270 Then
			DrawPicture(funken, cfunken.x - gVx + Cos(cFunken.az + cfunken.r) * (cfunken.s * 3), cfunken.y - gVy + Sin(cFunken.az + cfunken.r) * (cfunken.s * 3), 2, 2)
		Else
			DrawPicture(funken, cfunken.x - gVx + Cos(- cFunken.az + cfunken.r) * (cfunken.s * 3), cfunken.y - gVy + Sin(- cFunken.az + cfunken.r) * (cfunken.s * 3), 2, 2)
		End If
		
	Next
End Function

Function DrawMud()
	SetColor(225, 225, 255)
	For Local cMud:TMud = EachIn Mudlist
		cMud.x = cMud.x + Cos(cMud.r) * cMud.w
		cMud.y = cMud.y + Sin(cMud.r) * cMud.w
		
		cMud.d = cMud.d - 1
		If cMud.d < 20 Then cMud.s = cMud.s * 0.05
		If cMud.d <= 0 Then mudlist.remove(cMud)
		cMud.w = cMud.w * 0.75
		
		SetAlpha(cMud.a)
		SetRotation(Rnd(0, 360))
		SetHandle(cMud.s / 2, cMud.s / 2)
		DrawPicture(mud, cMud.x - gVx, cMud.y - gVy, cMud.s, cMud.s)
	Next
End Function

Function DrawSmoke()
	
	SetColor(100, 100, 100)
	For Local cSmoke:Tsmoke = EachIn smokelist
		cSmoke.x = cSmoke.x + Cos(cSmoke.r) * cSmoke.w
		cSmoke.y = cSmoke.y + Sin(cSmoke.r) * cSmoke.w
		
		cSmoke.s = cSmoke.s + (cSmoke.w2 / 2)
		If cSmoke.s > cSmoke.w2 * (cSmoke.d / 2) Then cSmoke.a = cSmoke.a - 0.05 ; If cSmoke.a < 0.1 Then cSmoke.a = 0.05; smokelist.remove(cSmoke)
		
		cSmoke.r = cSmoke.r + Rnd(- 6, 6)
		cSmoke.w = cSmoke.w * 0.85
		
		SetAlpha(cSmoke.a)
		SetRotation(cSmoke.r)
		SetHandle(cSmoke.s / 2, cSmoke.s / 2)
		DrawPicture(smoke, cSmoke.x - gVx, cSmoke.y - gVy, cSmoke.s, cSmoke.s)
	Next
End Function

Function Createsanddust(x:Float, y:Float, size:Float, richtung:Float, speed:Float, dauer:Float)
	rem
	Local nsanddust:Tsanddust = New Tsanddust
	sanddustlist.AddLast(nsanddust)
	nsanddust.x = x
	nsanddust.y = y
	nsanddust.s = size
	nsanddust.r = richtung
	nsanddust.w = speed
	nsanddust.w2 = speed + 1
	nsanddust.d = dauer
	endrem
End Function

Function Drawsanddust()
	
	SetColor(200, 140, 0)
	For Local csanddust:Tsanddust = EachIn sanddustlist
		csanddust.x = csanddust.x + Cos(csanddust.r) * csanddust.w
		csanddust.y = csanddust.y + Sin(csanddust.r) * csanddust.w
		
		csanddust.s = csanddust.s + (csanddust.w2 / 2)
		If csanddust.s > csanddust.w2 * (csanddust.d / 2) Then csanddust.a = csanddust.a - 0.05 ; If csanddust.a < 0.1 Then csanddust.a = 0.05; sanddustlist.remove(csanddust)
		
		csanddust.r = csanddust.r + Rnd(- 6, 6)
		csanddust.w = csanddust.w * 0.85
		
		SetAlpha(csanddust.a)
		SetRotation(csanddust.r)
		SetHandle(csanddust.s / 2, csanddust.s / 2)
		DrawPicture(smoke, csanddust.x - gVx, csanddust.y - gVy, csanddust.s, csanddust.s)
	Next
End Function
