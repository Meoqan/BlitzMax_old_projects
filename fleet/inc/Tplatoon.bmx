Type Tplatoon
	'system data
	Field x:Float, y:Float
	Field winkel:Float, speed:Float = 1
	Field tx:Float, ty:Float
	
	Field shipslist:TList = CreateList(), ships:Int
	
	Field hitlist:TList = CreateList()
	
	Field cooldown:Int
	
	Field selected:Byte, movec:Byte, phase:Byte, ptime:Int
	
	Field status:Byte, seeme:Byte
	
	Field sicht_mlp:Float, sicht_sig:Float
	Global sicht_max:Float = 3000000
	
	'botstatus
	Field botstatus:Int, bottime:Int
	
	Method calc_sicht()
		sicht_sig = 0
		For Local mships:Tships = EachIn shipslist
			sicht_sig:+mships.calc_sig()
		Next
		sicht_mlp = (sicht_sig / sicht_max) + 1.0
	End Method
	
	Method draw_presicht(drawme:Int)
		If status = 1 And drawme And movec Then
			SetHandle(50.0 * sicht_mlp, 50.0 * sicht_mlp) ; SetAlpha(0.1) ; SetColor(255, 0, 0)
			DrawOval(tx - get_ver_x(), ty - get_ver_y(), 100.0 * sicht_mlp, 100.0 * sicht_mlp)
		End If
	End Method
	
	Method draw_sicht()
		If status = 1 And phase < 2 Then
			SetAlpha(0.1) ; SetColor(0, 255, 0)
			rem
			SetHandle(100, 100)
			DrawOval(x - get_ver_x(), y - get_ver_y(), 200, 200)
			SetHandle(110, 110)
			DrawOval(x - get_ver_x(), y - get_ver_y(), 220, 220)
			SetHandle(120, 120)
			DrawOval(x - get_ver_x(), y - get_ver_y(), 240, 240)
			SetHandle(130, 130)
			DrawOval(x - get_ver_x(), y - get_ver_y(), 260, 260)
			endrem
			SetHandle(150.0 * sicht_mlp, 150.0 * sicht_mlp)
			
			DrawPicture(i_scan, x - get_ver_x(), y - get_ver_y(), 301.0 * sicht_mlp, 301.0 * sicht_mlp)
			SetHandle(50.0 * sicht_mlp, 50.0 * sicht_mlp) ';SetAlpha(1)
			DrawOval(x - get_ver_x(), y - get_ver_y(), 100.0 * sicht_mlp, 100.0 * sicht_mlp)
			
		End If
	End Method
	
	Method draw_movec()
		If status = 1 Then
			If movec Then
				SetHandle(3, 3)
				SetAlpha(sin3)
				SetColor(255, 0, 0)
				DrawRect(tx - get_ver_x(), ty - get_ver_y(), 6, 6)
				SetAlpha(1)
				SetHandle(0, 0)
				SetColor(255, 255, 255)
				Local seconds:Int = (Sqr((x - tx) ^ 2 + (y - ty) ^ 2) * 100) / 1000
				Local minutes:Int
				While seconds > 59 ; seconds:-60 ; minutes:+1 ; Wend
				If seconds > 9 Then DrawText("ETA " + minutes + ":" + seconds, (tx + 16) - get_ver_x(), (ty - 7) - get_ver_y())
				If seconds < 10 Then DrawText("ETA " + minutes + ":0" + seconds, (tx + 16) - get_ver_x(), (ty - 7) - get_ver_y())
			EndIf
		End If
	End Method
	
	Method draw_status()
		If status = 1 Then
			If phase > 0 Then
				Select phase
					Case 1 'algin
						SetAlpha(1)
						SetHandle(0, 0)
						SetColor(100, 100, 100)
						DrawRect((x + 10) - get_ver_x(), (y - 7) - get_ver_y(), 101, 15)
						SetColor(150, 150, 150)
						DrawRect((x + 11) - get_ver_x(), (y - 6) - get_ver_y(), Int((ptime / 5000.0) * 100.0), 13)
						SetColor(255, 255, 255)
						SetAlpha(sin3)
						DrawText("Algin", (x + 16) - get_ver_x(), (y - 7) - get_ver_y())
					Case 2 'inwarp
						SetHandle(0, 0)
						SetColor(255, 255, 255)
						SetAlpha(sin3)
						DrawText("Inwarp", (x + 16) - get_ver_x(), (y - 7) - get_ver_y())
				End Select
			End If
		End If
	End Method
	
	Method draw_text()
		If status = 1 Then
			SetAlpha(1)
			SetHandle(0, 0)
			SetColor(255, 255, 255)
			DrawText("Ships: " + ships + "   mlp: " + sicht_mlp, x - get_ver_x(), (y + 10) - get_ver_y())
			Local tempy:Int = 20
			For Local mships:Tships = EachIn shipslist
				DrawText(mships.shipdata.name + "> " + mships.anzahl, x - get_ver_x(), (y + tempy) - get_ver_y())
				tempy:+10
			Next
		Else
			If seeme Then
				SetHandle(0, 0)
				SetColor(255, 255, 255)
				DrawText("Ships: " + ships, x - get_ver_x(), (y + 10) - get_ver_y())
			EndIf
		End If
	End Method
	
	Method draw()
		If status = 1 Then
			
			If selected Then
				SetHandle(4, 4)
				SetAlpha(sin3) ; SetColor(255, 255, 100)
				DrawRect(x - get_ver_x(), y - get_ver_y(), 8, 8)
			EndIf
			
			SetHandle(3, 3)
			SetAlpha(1)
			If status = 0 Then SetColor(100, 100, 255)
			If status = 1 Then SetColor(100, 255, 100)
			If status = 2 Then SetColor(255, 100, 100)
			DrawRect(x - get_ver_x(), y - get_ver_y(), 6, 6)
			
		Else
			If seeme Then
				SetHandle(3, 3)
				SetAlpha(1)
				If status = 0 Then SetColor(100, 100, 255)
				If status = 1 Then SetColor(100, 255, 100)
				If status = 2 Then SetColor(255, 100, 100)
				DrawRect(x - get_ver_x(), y - get_ver_y(), 6, 6)
			End If
		EndIf
		
	End Method
	
	Method chksee()
		seeme = 0
		For Local platoon:Tplatoon = EachIn platoonlist
			If platoon <> Self And platoon.status < 2 And platoon.phase < 2 And Sqr((x - platoon.x) ^ 2 + (y - platoon.y) ^ 2) < (100.0 * platoon.sicht_mlp) Then seeme = 1
		Next
	End Method
	
	Method cancelwarp()
		movec = False
		phase = 0
		ptime = 0
	End Method
	
	Method move()
		If movec Then
			Select phase
				Case 1
					ptime:+msc
					If ptime >= 5000 Then ptime = 0 ; phase = 2
				Case 2
					Local entfernung:Float = Sqr((x - tx) ^ 2 + (y - ty) ^ 2)
					Local maxmove:Float = calc_move(speed)
					If entfernung < maxmove Then
						x = tx
						y = ty
						movec = False
						phase = 0
						ptime = 0
					Else
						winkel = -ATan2((x - tx), (y - ty)) + 270
						x = x + Cos(winkel) * calc_move(speed)
						y = y + Sin(winkel) * calc_move(speed)
					End If
			End Select
		End If
		
	End Method
	
	
	Method shoot()
		If cooldown > 0 Then cooldown:-msc
		If cooldown <= 0 Then
			If Not movec Then
				hitlist.Clear()
				For Local platoon:Tplatoon = EachIn platoonlist
					If platoon <> Self And platoon.phase < 2 And platoon.status <> status And Sqr((x - platoon.x) ^ 2 + (y - platoon.y) ^ 2) < (100.0 * sicht_mlp) Then hitlist.AddLast(platoon)
				Next
				
				If hitlist.Count() > 0 Then
					Local overalldmg:Int
					For Local ships:Tships = EachIn shipslist
						overalldmg:+ships.calc_dmg()
					Next
					
					Local partdmg:Int = overalldmg / hitlist.Count()
					For Local platoon:Tplatoon = EachIn hitlist
						platoon.resive_shoot(partdmg)
						cooldown = 5000
					Next
				EndIf
			End If
		EndIf
	End Method
	
	Method resive_shoot(indmg:Int)
		Local oversig:Int
		For Local xships:Tships = EachIn shipslist
			oversig:+xships.calc_sig()
		Next
		
		ships = 0
		For Local mships:Tships = EachIn shipslist
			mships.calc_hit(indmg, ships, oversig)
			If mships.anzahl <= 0 Then shipslist.Remove(mships) Else ships:+mships.anzahl
		Next
		
	End Method
	
	Method selectme:Byte(x1:Float, y1:Float, x2:Float, y2:Float)
		selected = False
		If status = 1 Then
			Local nx1:Float = x1
			Local ny1:Float = y1
			Local nx2:Float = x2
			Local ny2:Float = y2
			
			If x1 > x2 Then nx1 = x2 ; nx2 = x1
			If y1 > y2 Then ny1 = y2 ; ny2 = y1
			
			If nx1 < x And nx2 > x And ny1 < y And ny2 > y Then selected = True Else selected = False
		EndIf
		Return selected
	End Method
	
	Method settarget(nx:Float, ny:Float)
		If selected Then
			Select phase
				Case 0
					tx = nx
					ty = ny
					movec = True
					phase = 1
					ptime = 0
				Case 1
					tx = nx
					ty = ny
					movec = True
					phase = 1
					ptime = 0
			End Select
		End If
	End Method
	
	Method botsettarget(nx:Float, ny:Float)
		Select phase
			Case 0
				tx = nx
				ty = ny
				movec = True
				phase = 1
				ptime = 0
			Case 1
				tx = nx
				ty = ny
				movec = True
				phase = 1
				ptime = 0
		End Select
	End Method
	
	Method botchksee:Int()
		For Local platoon:Tplatoon = EachIn platoonlist
			If platoon <> Self And platoon.status = 2 And platoon.phase < 2 And Sqr((x - platoon.x) ^ 2 + (y - platoon.y) ^ 2) < (100.0 * platoon.sicht_mlp) Then Return 1
		Next
		Return 0
	End Method
EndType
Global platoonlist:TList = CreateList()

Function add_platoon:Tplatoon(x:Float, y:Float, status:Byte)
	Local nplatoon:Tplatoon = New Tplatoon
	platoonlist.AddLast(nplatoon)
	add_ships(nplatoon, ship_comand, 1)
	nplatoon.x = x
	nplatoon.y = y
	nplatoon.status = status
	Return nplatoon
End Function








