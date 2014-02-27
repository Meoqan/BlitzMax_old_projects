Type Tstar
	Field x:Float, y:Float, d:Float = Rnd(0.6, 1.4), noise:Float = Rnd(-0.1, 0.1)
	Global downlist:TList = CreateList(), stars:Int = 600
	Global toplist:TList = CreateList()
	
	Function Workdown(vx:Float, vy:Float)
		If vx > 500 Then vx = 500
		If vx < - 500 Then vx = -500
		If vy > 500 Then vy = 500
		If vy < - 500 Then vy = -500
		
		For Local Star:Tstar = EachIn Tstar.downlist
			Star.move(vx, vy)
			If Star.x < -screenx Then Star.x:+screenx*2.0
			If Star.x > screenx Then Star.x:-screenx*2.0
			If Star.y < -screenx Then Star.y:+screenx*2.0
			If Star.y > screenx Then Star.y:-screenx*2.0
			Star.draw()
		Next
	End Function
	
	Function Worktop(vx:Float, vy:Float)
		If vx > 500 Then vx = 500
		If vx < - 500 Then vx = -500
		If vy > 500 Then vy = 500
		If vy < - 500 Then vy = -500
		
		For Local Star:Tstar = EachIn Tstar.toplist
			Star.move(vx, vy)
			If Star.x < -screenx Then Star.x:+screenx*2.0
			If Star.x > screenx Then Star.x:-screenx*2.0
			If Star.y < -screenx Then Star.y:+screenx*2.0
			If Star.y > screenx Then Star.y:-screenx*2.0
			Star.draw()
		Next
	End Function
	
	Function Fillup()
		While stars > 0
			stars:-1
			Local star:Tstar = New Tstar
			
			star.x = Rnd(0, screenx*2.0)-screenx
			star.y = Rnd(0, screenx*2.0)-screenx
			If star.d > 1.0 Then
				Tstar.toplist.AddLast(star)
			Else
				Tstar.downlist.AddLast(star)
			End If
		WEnd
		stars=600
	End Function
	
	
	Method move(vx:Float, vy:Float)
		x:-vx * d
		y:-vy * d
	End Method
	
	Method draw()
		SetHandle(d - 0.5 - noise, d - 0.5 - noise)
		SetScale(d - 0.5 - noise, d - 0.5 - noise)
		SetAlpha(d - 0.5 - noise)
		SetRotation(calc_rotation)
		calc_pos(x, y)
		DrawRect(pointx + get_x(), pointy + get_y(), 3, 3)
	End Method
End Type


Type Tcloud
	Field x:Float, y:Float, d:Float = Rnd(0.2, 0.3), noise:Float = Rnd(-0.1, 0.1)
	Field img:TImage, r:Byte, g:Byte, b:Byte
	Global list:TList = CreateList(), clouds:Int = 200
	
	Function Work(vx:Float, vy:Float)
		If vx > 500 Then vx = 500
		If vx < - 500 Then vx = -500
		If vy > 500 Then vy = 500
		If vy < - 500 Then vy = -500
		
		For Local cloud:Tcloud = EachIn Tcloud.list
			cloud.move(vx, vy)
			If cloud.x < -screenx Then cloud.x:+screenx*3
			If cloud.x > screenx*2 Then cloud.x:-screenx*3
			If cloud.y < -screeny Then cloud.y:+screeny*3
			If cloud.y > screeny*2 Then cloud.y:-screeny*3
			cloud.draw()
		Next
		
	End Function
	
	Function Fillup(sndrnd:short)
		Seedrnd(sndrnd)
		While Tcloud.list.Count() < clouds
			Local cloud:Tcloud = New Tcloud
			Tcloud.list.AddLast(cloud)
			cloud.x = Rnd(0, screenx*3)-screenx
			cloud.y = Rnd(0, screeny*3)-screeny
			Select Rand(0, 8)
				Case 0
					cloud.r = 226
					cloud.b = 26
				Case 1
					cloud.r = 233
					cloud.g = 93
					cloud.b = 15
				Case 2
					cloud.r = 242
					cloud.g = 148
				Case 3
					cloud.r = 255
					cloud.g = 236
				Case 4
					cloud.r = 151
					cloud.g = 191
					cloud.b = 13
				Case 5
					cloud.r = 65
					cloud.g = 166
					cloud.b = 42
				Case 6
					cloud.g = 144
					cloud.b = 54
				Case 7
					cloud.g = 151
					cloud.b = 143
				Case 8
					cloud.g = 158
					cloud.b = 224
			End Select
			Select Rand(0, 2)
				Case 0
					cloud.img = cloud_img[0]
				Case 1
					cloud.img = cloud_img[1]
				Case 2
					cloud.img = cloud_img[2]
			End Select
		WEnd
	End Function
	
	
	Method move(vx:Float, vy:Float)
		x:-(vx / d) / 100.0
		y:-(vy / d) / 100.0
	End Method
	
	Method draw()
		SetHandle(1.0 - d - noise, 1.0 - d - noise)
		SetScale((1.0 - d - noise) * 2.0, (1.0 - d - noise) * 2.0)
		SetAlpha(0.45 - d - noise)
		SetColor(r, g, b)
		SetRotation(-calc_rotation)
		calc_pos(x, y)
		DrawImage(img, pointx + get_x(), pointy + get_y())
	End Method
End Type