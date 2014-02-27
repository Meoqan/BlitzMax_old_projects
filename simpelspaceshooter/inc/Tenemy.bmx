rem
	Der Standartgegner mit seinen Funktionen und Methoden
endrem
Type Trootenemy Extends Tsupergameobject
	Global dummydata:Byte = Thold.enemy.register("defaultenemy", Trootenemy.Create, 1, 10, False)
	Field myhook:Tworkflowhold = Thold.enemy.registerworkflow(Self)

	Field life:Float = 100
	Field x:Float, y:Float, w:Float, h:Float
	Field fly_s_timer:Float
	Field image:TImage
	Field dead:Int
	'-------
	Field mypoly:Tpolythrust[10]
	Field mypoly_active:Int[10]
	Field mypoly_x:Float[10], mypoly_y:Float[10]
	Field mypoly_s:Float[10]
	'-------
	Field shottimer:Int
	'-------
	
	'einen neuen Gegner erstellen und werte zuweisen
	Function Create:Object(parm:Tparm)
		Local newenemy:Trootenemy = New Trootenemy
		
		newenemy.image = Tres.pship1
		newenemy.x = parm.x
		newenemy.y = parm.y
		newenemy.w = newenemy.image.width / 3.0
		newenemy.h = newenemy.image.height / 3.0
		
		newenemy.set_thrust(0, 17, -24, 10)
		newenemy.set_thrust(1, -17, -24, 10)
		
		Return newenemy
	End Function
	
	'abarbeiten der Bewegung und bei zutreffender Bedingung den Gegner löschen
	Method work()
		y:+calc_move(5)
		
		fly_s_timer:+msc
		x:+calc_move(Cos(fly_s_timer / 15.0) * 20.0)
		
		
		If Tplayer.check_col(x, y) Then life:-calc_move(5)
		
		create_thrust()
		
		shottimer:+msc
		If shottimer > 3000 Then
			shottimer:-Rand(3000, 6000)
			Local parm:Tparm = tparm.Create()
			parm.x = x
			parm.y = y
			Thold.shoot.Createobject("defaultenemyshot", parm)
		End If
		
		If life <= 0 Then dead = True
		If y > Tplayer.y + 200 Then dead = True
		If dead Then myhook.unregister()
	End Method

	'ausgeben der Bewegung
	Method render()
		reset_draw()
		
		drawlast_thrust()
		
		reset_draw()
		SetRotation(180)
		DrawImage(image, x - Tscreen.getx(), y - Tscreen.gety())
	End Method
	
	Method set_thrust(number:Int, tx:Float, ty:Float, ts:Float)
		If number >= 0 And number <= 9 Then
			mypoly_active[number] = True
			mypoly_x[number] = tx
			mypoly_y[number] = ty
			mypoly_s[number] = ts
		End If
	End Method
	
	Method create_thrust()
		For Local nr:Int = 0 To 9
			If mypoly_active[nr] Then
				mypoly[nr] = Tpolythrust.Create(x + mypoly_x[nr], y + mypoly_y[nr], 180, mypoly_s[nr], 5, mypoly[nr], 0)
			End If
		Next
	End Method
	
	Method drawlast_thrust()
		For Local nr:Int = 0 To 9
			If mypoly_active[nr] Then
				Tpolythrust.Drawlast(x + mypoly_x[nr], y + mypoly_y[nr], 180, mypoly_s[nr], mypoly[nr], 0)
			End If
		Next
	End Method
	
	Method check_hit:Int(cx:Float, cy:Float, dps:Float)
		If x - w < cx And x + w > cx And y - h < cy And y + h > cy Then
			life:-dps
			Return True
		End If
	End Method
End Type



rem
	Ein neuer Gegnertyp
endrem
Type Trootboss Extends Trootenemy '<- BEACHTEN!
	Global dummydata:Byte = Thold.enemy.register("defaultboss", Trootboss.Create, 1, 10, True)
	
	'einen neuen Gegner erstellen und werte zuweisen
	Function Create:Object(parm:Tparm)
		Local newenemy:Trootboss = New Trootboss
		
		newenemy.life = 1000
		
		newenemy.image = Tres.ship07
		newenemy.x = parm.x
		newenemy.y = parm.y
		newenemy.w = newenemy.image.width / 3.0
		newenemy.h = newenemy.image.height / 3.0
		
		newenemy.set_thrust(0, 0, -22, 32)
		
		Return newenemy
	End Function
	
	Field fly_x:Float, fly_y:Float
	
	Method work()
		
		Local want_to_x:Float = x - Tplayer.x
		Local want_to_y:Float = y - Tplayer.y + 250
		
		If want_to_x < - 5 Then fly_x:+calc_move(20)
		If want_to_x > 5 Then fly_x:-calc_move(20)
		If fly_x > - 0.5 And fly_x < 0.5 Then fly_x = 0
		
		If want_to_y < - 5 Then fly_y:+calc_move(20)
		If want_to_y > 5 Then fly_y:-calc_move(20)
		If fly_y > - 0.5 And fly_y < 0.5 Then fly_y = 0
		
		If fly_x > 90 Then fly_x = 90
		If fly_x < - 90 Then fly_x = -90
		
		If fly_y > 90 Then fly_y = 90
		If fly_y < - 90 Then fly_y = -90
		
		x:+calc_move(Sin(fly_x) * 10.0)
		y:+calc_move(Sin(fly_y) * 10.0)
		
		
		If Tplayer.check_col(x, y) Then life:-calc_move(5)
		
		create_thrust()
		
		shottimer:+msc
		If shottimer > 3000 Then
			shottimer:-Rand(3000, 6000)
			Local parm:Tparm = tparm.Create()
			parm.x = x
			parm.y = y
			Select Rand(0, 1)
				Case 0
					Thold.shoot.Createobject("defaultenemyshot", parm)
				Case 1
					Thold.shoot.Createobject("enemyrocketshot", parm)
			End Select
		End If
		
		If life <= 0 Then dead = True
		If y > Tplayer.y + 200 Then dead = True
		If dead Then myhook.unregister()
	End Method
	
	
	Method check_hit:Int(cx:Float, cy:Float, dps:Float)
		If x - w < cx And x + w > cx And y - h < cy And y + h > cy Then
			If x - w < cx And x + w > cx And y - h < cy And y > cy Then life:-dps
			Return True
		End If
	End Method
	
End Type



rem
	Ein neuer Gegnertyp
endrem
Type Tenemy2 Extends Trootenemy '<- BEACHTEN!
	'Global dummydata:Byte = Thold.enemy.register("enemy2", Tenemy2.Create, 1, 10,false)
	
	'einen neuen Gegner erstellen und werte zuweisen
	Function Create:Object(parm:Tparm)
		Local newenemy:Tenemy2 = New Tenemy2
		
		'newenemy.image = 9876
		
		Return newenemy
	End Function
	
	
End Type
