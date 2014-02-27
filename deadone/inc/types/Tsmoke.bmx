Type Tsmoke
	Global list:TList = CreateList(), smoketimer:Int
	Field x:Float, y:Float, r:Float, er:Float, time:Int
	Function Create(x:Float, y:Float, r:Float)
		
		If smoketimer > 0 Then Return
		
		Local smoke:Tsmoke = New Tsmoke
		Tsmoke.list.AddLast(smoke)
		smoke.x = x + Rnd(0, 16) - 8
		smoke.y = y + Rnd(0, 16) - 8
		smoke.r = r
		smoke.er = r
		smoke.time = 2000
	 End Function
	 Function Draw()
	 	If smoketimer <= 0 Then smoketimer:+50
	 	smoketimer:-msc
		
	 	For Local smoke:Tsmoke = EachIn Tsmoke.list
			smoke.r:+calc_move(45)
			SetRotation(smoke.r - calc_rotation)
			SetColor(50, 50, 50)
			SetAlpha(smoke.time / 2000.0)
			SetScale(smoke.time / 1500.0, smoke.time / 1500.0)
			calc_pos(smoke.x - player.x, smoke.y - player.y)
			DrawImage(thrust_img, pointx + get_x(), pointy + get_y())
			smoke.time:-msc
			If smoke.time <= 0 Then Tsmoke.list.Remove(smoke)
		Next
		
	 End Function
End Type