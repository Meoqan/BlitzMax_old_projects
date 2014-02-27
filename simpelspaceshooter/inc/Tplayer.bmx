Type Tplayer
	Global life:Float = 100
	Global x:Float, y:Float, w:Float = 32, h:Float = 32
	Global fly_s:Float
	
	Global last_moved_y:Float
	
	Global mypoly1:Tpolythrust, mypoly2:Tpolythrust
	
	Function cleanup()
		life = 100
		x = 0
		y = 0
		fly_s = 0
		last_moved_y = 0
		mypoly1 = Null
		mypoly2 = Null
	End Function
	
	Function check_hit:Int(cx:Float, cy:Float, dps:Float)
		If x - w < cx And x + w > cx And y - h < cy And y + h > cy Then
			life:-dps
			Return True
		End If
	End Function
	
	Function check_col:Int(cx:Float, cy:Float)
		If entferung(x, y, cx, cy) < 64 Then
			life:-calc_move(2)
			Return True
		End If
	End Function
	
	Function move()
		Local vy:Float
		
		If fly_s < - 0.5 Then fly_s:+calc_move(20)
		If fly_s > 0.5 Then fly_s:-calc_move(20)
		If fly_s > - 0.5 And fly_s < 0.5 Then fly_s = 0
		
		If KeyDown(KEY_W) Then vy = -calc_move(2.5)
		If KeyDown(KEY_S) Then vy = calc_move(2.5)
		If KeyDown(KEY_A) Then fly_s:-calc_move(40)
		If KeyDown(KEY_D) Then fly_s:+calc_move(40)
		vy:-calc_move(5)
		
		If fly_s > 90 Then fly_s = 90
		If fly_s < - 90 Then fly_s = -90
		
		Local vx:Float = calc_move(Sin(fly_s) * 15.0)
		
		move_by_step(vx, vy)
		last_moved_y = vy
		
		mypoly1 = Tpolythrust.Create(x + 17, y + 24, 0, 10, 5, mypoly1, 1)
		mypoly2 = Tpolythrust.Create(x - 17, y + 24, 0, 10, 5, mypoly2, 1)
		
		Tscreen.follow(x, y)
		
		If KeyHit(KEY_SPACE) Then
			Local parm:Tparm = tparm.Create()
			parm.x = x
			parm.y = y
			Thold.shoot.Createobject("defaultshot", parm)
		EndIf
		If mh1 Then
			Local parm:Tparm = tparm.Create()
			parm.x = x
			parm.y = y
			Thold.shoot.Createobject("rocketshot", parm)
		EndIf
	End Function
	
	Function draw()
		reset_draw()
		
		Tpolythrust.Drawlast(x + 17, y + 24, 0, 10, mypoly1, 1)
		Tpolythrust.Drawlast(x - 17, y + 24, 0, 10, mypoly2, 1)
		
		reset_draw()
		
		If Tgamemap.point_in_field(x, y) Then SetColor(255, 255, 255) Else SetColor(255, 127, 127)
		If Tgamemap.field_win(x, y) Then SetColor(127, 255, 127)
		DrawImage(Tres.pship1, x - Tscreen.getx(), y - Tscreen.gety())
		
		reset_draw()
		DrawText("Life: " + life, 0, 0)
	End Function
	
	Function move_by_step(diffx:Float, diffy:Float)
		If diffx <> 0 Then
			Repeat
				If diffx > 0.0 Then
					If diffx > 1.0 Then
						If Tgamemap.point_in_field(x + 1.0, y) Then
							x:+1.0
							diffx:-1.0
						Else
							diffx = 0
						End If
					Else
						If Tgamemap.point_in_field(x + diffx, y) Then
							x:+diffx
							diffx = 0
						Else
							diffx = 0
						End If
					EndIf
				Else
					If diffx < - 1.0 Then
						If Tgamemap.point_in_field(x - 1.0, y) Then
							x:-1.0
							diffx:+1.0
						Else
							diffx = 0
						End If
					Else
						If Tgamemap.point_in_field(x + diffx, y) Then
							x:+diffx
							diffx = 0
						Else
							diffx = 0
						End If
					EndIf
				EndIf
			Until diffx = 0
		EndIf
		If diffy <> 0 Then
			Repeat
				If diffy > 0.0 Then
					If diffy > 1.0 Then
						If Tgamemap.point_in_field(x, y + 1.0) Then
							y:+1.0
							diffy:-1.0
						Else
							diffy = 0
						End If
					Else
						If Tgamemap.point_in_field(x, y + diffy) Then
							y:+diffy
							diffy = 0
						Else
							diffy = 0
						End If
					EndIf
				Else
					If diffy < - 1.0 Then
						If Tgamemap.point_in_field(x, y - 1.0) Then
							y:-1.0
							diffy:+1.0
						Else
							diffy = 0
						End If
					Else
						If Tgamemap.point_in_field(x, y + diffy) Then
							y:+diffy
							diffy = 0
						Else
							diffy = 0
						End If
					EndIf
				EndIf
			Until diffy = 0
		EndIf
	End Function
End Type