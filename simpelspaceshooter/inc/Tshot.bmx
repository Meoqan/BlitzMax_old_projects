
Type Trootshot Extends Tsupergameobject
	Global dummydata:Byte = Thold.shoot.register("defaultshot", Trootshot.Create)
	Field myhook:Tworkflowhold = Thold.shoot.registerworkflow(Self)

	
	Field x:Float, y:Float
	Field image:TImage
	Field dead:Int
	Field lifetime:Int
	Field angle:Float, destangle:Float
	'-------
	Field mypoly:Tpolythrust[10]
	Field mypoly_active:Int[10]
	Field mypoly_x:Float[10], mypoly_y:Float[10]
	Field mypoly_s:Float[10]
	'-------
	
	
	Function Create:Object(parm:Tparm)
		Local newshot:Trootshot = New Trootshot
		
		'newshot.image = 1234
		newshot.x = parm.x
		newshot.y = parm.y
		newshot.angle = -90
		
		
		
	End Function
	
	
	
	Method work()
		y:-calc_move(30)
		If Thold.enemy.check_hit(x, y, 50) Then dead = True
		
		create_thrust()
		
		lifetime:+msc
		If lifetime > 5000 Then dead = True
		If dead Then myhook.unregister()
	End Method

	Method render()
		reset_draw()
		
		drawlast_thrust()
		
		reset_draw()
		SetBlend(LIGHTBLEND)
		SetColor(75, 255, 75)
		DrawOval(x - Tscreen.getx() - 7.5, y - Tscreen.gety() - 7.5, 15, 15)
		SetColor(150, 255, 150)
		DrawOval(x - Tscreen.getx() - 5, y - Tscreen.gety() - 5, 10, 10)
		SetBlend(ALPHABLEND)
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
				mypoly[nr] = Tpolythrust.Create(x + mypoly_x[nr], y + mypoly_y[nr], angle + 90, mypoly_s[nr], 20, mypoly[nr], 4)
			End If
		Next
	End Method
	
	Method drawlast_thrust()
		For Local nr:Int = 0 To 9
			If mypoly_active[nr] Then
				Tpolythrust.Drawlast(x + mypoly_x[nr], y + mypoly_y[nr], angle + 90, mypoly_s[nr], mypoly[nr], 4)
			End If
		Next
	End Method
End Type

Type Trocketshot Extends Trootshot '<- BEACHTEN!
	Global dummydata:Byte = thold.shoot.register("rocketshot", Trocketshot.Create)
	Function Create:Object(parm:Tparm)
		Local newshot:Trocketshot = New Trocketshot
		
		newshot.image = Tres.rocket01
		newshot.x = parm.x
		newshot.y = parm.y
		newshot.angle = -90
		
		newshot.set_thrust(0, 0, 0, 5)
		
	End Function
	
	
	
	Method work()
		Local fx:Float = tscreen.vx - pointx + MouseX()
		Local fy:Float = tscreen.vy - pointy - (pointy / 1.5) + MouseY()
		
		destangle = winkel(x, y, fx, fy)
		
		angle:-turmzuziel(angle, destangle, calc_move(45))
		
		x:+calc_move(Cos(angle) * 50)
		y:+calc_move(Sin(angle) * 50)
		
		create_thrust()
		
		If Thold.enemy.check_hit(x, y, 50) Then dead = True
		lifetime:+msc
		If lifetime > 1500 Then dead = True
		If dead Then myhook.unregister()
	End Method
	
	Method render()
		reset_draw()
		
		drawlast_thrust()
	
		reset_draw()
		SetRotation(angle + 90)
		DrawImage(image, x - Tscreen.getx(), y - Tscreen.gety())
	End Method
	
End Type

Type Tenemyrootshot Extends Trootshot '<- BEACHTEN!
	Global dummydata:Byte = thold.shoot.register("defaultenemyshot", Tenemyrootshot.Create)
	Function Create:Object(parm:Tparm)
		Local newshot:Tenemyrootshot = New Tenemyrootshot
		
		'newshot.image = 9876
		newshot.x = parm.x
		newshot.y = parm.y
		newshot.angle = 90
		
		
	End Function
	
	Method work()
		y:+calc_move(30)
		If Tplayer.check_hit(x, y, 25) Then dead = True
		
		create_thrust()
		
		lifetime:+msc
		If lifetime > 5000 Then dead = True
		If dead Then myhook.unregister()
	End Method
	
	Method render()
		reset_draw()
		
		drawlast_thrust()
	
		reset_draw()
		SetBlend(LIGHTBLEND)
		SetColor(255, 75, 75)
		DrawOval(x - Tscreen.getx() - 7.5, y - Tscreen.gety() - 7.5, 15, 15)
		SetColor(255, 150, 150)
		DrawOval(x - Tscreen.getx() - 5, y - Tscreen.gety() - 5, 10, 10)
		SetBlend(ALPHABLEND)
	End Method
	
End Type

Type Tenemyrocketshot Extends Trocketshot '<- BEACHTEN!
	Global dummydata:Byte = thold.shoot.register("enemyrocketshot", Tenemyrocketshot.Create)
	Function Create:Object(parm:Tparm)
		Local newshot:Tenemyrocketshot = New Tenemyrocketshot
		
		newshot.image = Tres.rocket01
		newshot.x = parm.x
		newshot.y = parm.y
		newshot.angle = 90
		newshot.follow_x = Tplayer.x
		newshot.follow_y = Tplayer.y
		
		newshot.set_thrust(0, 0, 0, 5)
				
	End Function
	
	
	Field follow_x:Float, follow_y:Float
	
	Method work()
		follow_x:+calc_move(Tplayer.x - follow_x) / 10.0
		follow_y:+calc_move(Tplayer.y - follow_y) / 10.0
		
		Local fx:Float = follow_x
		Local fy:Float = follow_y
		
		destangle = winkel(x, y, fx, fy)
		
		angle:-turmzuziel(angle, destangle, calc_move(22.5))
		
		x:+calc_move(Cos(angle) * 50)
		y:+calc_move(Sin(angle) * 50)
		
		create_thrust()
		
		If Tplayer.check_hit(x, y, 50) Then dead = True
		lifetime:+msc
		If lifetime > 1500 Then dead = True
		If dead Then myhook.unregister()
	End Method

End Type

'TEMPLATE

Type Ttshot Extends Trootshot '<- BEACHTEN!
	Global dummydata:Byte = thold.shoot.register("templateshot", Ttshot.Create)
	Function Create:Object(parm:Tparm)
		Local newshot:Ttshot = New Ttshot
		
		'newshot.image = 9876
		newshot.x = parm.x
		newshot.y = parm.y
		
	End Function
	
End Type
