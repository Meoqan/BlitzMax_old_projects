Type Tpolythrust
	Global list:TList = CreateList(), polytimer:Int
	Field tri:Float[6], timey:Float
	Field x:Float, y:Float, r:Float, s:Float, speed:Float, lastply:Tpolythrust
	Field color:Byte
	
	Function Create:Tpolythrust(xc:Float, yc:Float, rc:Float, sc:Float, speed:Float, lstpoly:Tpolythrust, color:Byte)
		
		If polytimer > 0 Then Return lstpoly
	
		Local trithrust:Tpolythrust = New Tpolythrust
		list.AddFirst(trithrust)
		
		trithrust.x = xc
		trithrust.y = yc
		trithrust.r = rc
		trithrust.s = sc
		trithrust.speed = speed / 2.0
		trithrust.color = color
		trithrust.lastply = lstpoly
		trithrust.timey = 3000
		
		Return trithrust
	End Function
		

	Function Draw()
		If polytimer <= 0 Then polytimer:+Float(30 + (list.Count() / 10.0))
	 	polytimer:-msc
		
		reset_draw()
		
		SetBlend(LIGHTBLEND)
		For Local tth:Tpolythrust = EachIn list
			
			If tth.lastply Then
				
				SetAlpha(tth.timey / 3500.0)
				
				If tth.color = 0 Then SetColor(255, 75, 75)
				If tth.color = 1 Then SetColor(75, 255, 75)
				If tth.color = 2 Then SetColor(75, 75, 255)
				If tth.color = 3 Then SetColor(75, 255, 255)
				
				calc_pos(tth.x + (Cos(tth.r - 180) * (tth.s * (tth.timey / 6000.0))) - player.x, tth.y + (Sin(tth.r - 180) * (tth.s * (tth.timey / 6000.0))) - player.y)
				tth.tri[0] = pointx + get_x()
				tth.tri[1] = pointy + get_y()
				
				calc_pos(tth.x + (Cos(tth.r) * (tth.s * (tth.timey / 6000.0))) - player.x, tth.y + (Sin(tth.r) * (tth.s * (tth.timey / 6000.0))) - player.y)
				tth.tri[2] = pointx + get_x()
				tth.tri[3] = pointy + get_y()
				
				calc_pos(tth.lastply.x + (Cos(tth.lastply.r - 180) * (tth.lastply.s * (tth.timey / 6000.0))) - player.x, tth.lastply.y + (Sin(tth.lastply.r - 180) * (tth.lastply.s * (tth.timey / 6000.0))) - player.y)
				tth.tri[4] = pointx + get_x()
				tth.tri[5] = pointy + get_y()
				
				DrawPoly(tth.tri)
				
				tth.tri[0] = tth.tri[2]
				tth.tri[1] = tth.tri[3]
				
				calc_pos(tth.lastply.x + (Cos(tth.lastply.r) * (tth.lastply.s * (tth.timey / 6000.0))) - player.x, tth.lastply.y + (Sin(tth.lastply.r) * (tth.lastply.s * (tth.timey / 6000.0))) - player.y)
				tth.tri[2] = pointx + get_x()
				tth.tri[3] = pointy + get_y()
				
				DrawPoly(tth.tri)
				
				SetAlpha(tth.timey / 3500.0)
				
				If tth.color = 0 Then SetColor(255, 150, 150)
				If tth.color = 1 Then SetColor(150, 255, 150)
				If tth.color = 2 Then SetColor(150, 150, 255)
				If tth.color = 3 Then SetColor(150, 255, 255)
				
				calc_pos(tth.x + (Cos(tth.r - 180) * (tth.s * (tth.timey / 6000.0) / 3.0)) - player.x, tth.y + (Sin(tth.r - 180) * (tth.s * (tth.timey / 6000.0) / 3.0)) - player.y)
				tth.tri[0] = pointx + get_x()
				tth.tri[1] = pointy + get_y()
				
				calc_pos(tth.x + (Cos(tth.r) * (tth.s * (tth.timey / 6000.0) / 3.0)) - player.x, tth.y + (Sin(tth.r) * (tth.s * (tth.timey / 6000.0) / 3.0)) - player.y)
				tth.tri[2] = pointx + get_x()
				tth.tri[3] = pointy + get_y()
				
				calc_pos(tth.lastply.x + (Cos(tth.lastply.r - 180) * (tth.lastply.s * (tth.timey / 6000.0) / 3.0)) - player.x, tth.lastply.y + (Sin(tth.lastply.r - 180) * (tth.lastply.s * (tth.timey / 6000.0) / 3.0)) - player.y)
				tth.tri[4] = pointx + get_x()
				tth.tri[5] = pointy + get_y()
				
				DrawPoly(tth.tri)
				
				tth.tri[0] = tth.tri[2]
				tth.tri[1] = tth.tri[3]
				
				calc_pos(tth.lastply.x + (Cos(tth.lastply.r) * (tth.lastply.s * (tth.timey / 6000.0) / 3.0)) - player.x, tth.lastply.y + (Sin(tth.lastply.r) * (tth.lastply.s * (tth.timey / 6000.0) / 3.0)) - player.y)
				tth.tri[2] = pointx + get_x()
				tth.tri[3] = pointy + get_y()
				
				DrawPoly(tth.tri)
				
				tth.timey:-msc
				If tth.timey <= 0 Then list.Remove(tth) ; tth.lastply = Null
			Else
				list.Remove(tth)
			EndIf
			'tth.x:+Cos(tth.r + 90) * calc_move(tth.speed)
			'tth.y:+Sin(tth.r + 90) * calc_move(tth.speed)
		Next
		SetBlend(ALPHABLEND)
	End Function
	
	Function Drawlast(xc:Float, yc:Float, rc:Float, sc:Float, lstpoly:Tpolythrust, color:Byte)
		reset_draw()
		
		
		If lstpoly Then
			
			Local tri:Float[6]
			SetBlend(LIGHTBLEND)
			SetAlpha(0.857)
			
			If color = 0 Then SetColor(255, 75, 75)
			If color = 1 Then SetColor(75, 255, 75)
			If color = 2 Then SetColor(75, 75, 255)
			If color = 3 Then SetColor(75, 255, 255)
			
			calc_pos(xc + (Cos(rc - 180) * (sc * 0.5)) - player.x, yc + (Sin(rc - 180) * (sc * 0.5)) - player.y)
			tri[0] = pointx + get_x()
			tri[1] = pointy + get_y()
			
			calc_pos(xc + (Cos(rc) * (sc * 0.5)) - player.x, yc + (Sin(rc) * (sc * 0.5)) - player.y)
			tri[2] = pointx + get_x()
			tri[3] = pointy + get_y()
			
			calc_pos(lstpoly.x + (Cos(lstpoly.r - 180) * (lstpoly.s * 0.5)) - player.x, lstpoly.y + (Sin(lstpoly.r - 180) * (lstpoly.s * 0.5)) - player.y)
			tri[4] = pointx + get_x()
			tri[5] = pointy + get_y()
			
			DrawPoly(tri)
			
			tri[0] = tri[2]
			tri[1] = tri[3]
			
			calc_pos(lstpoly.x + (Cos(lstpoly.r) * (lstpoly.s * 0.5)) - player.x, lstpoly.y + (Sin(lstpoly.r) * (lstpoly.s * 0.5)) - player.y)
			tri[2] = pointx + get_x()
			tri[3] = pointy + get_y()
			
			DrawPoly(tri)
			
			SetAlpha(0.857)
			
			If color = 0 Then SetColor(255, 150, 150)
			If color = 1 Then SetColor(150, 255, 150)
			If color = 2 Then SetColor(150, 150, 255)
			If color = 3 Then SetColor(150, 255, 255)
			
			calc_pos(xc + (Cos(rc - 180) * (sc * 0.5 / 3.0)) - player.x, yc + (Sin(rc - 180) * (sc * 0.5 / 3.0)) - player.y)
			tri[0] = pointx + get_x()
			tri[1] = pointy + get_y()
			
			calc_pos(xc + (Cos(rc) * (sc * 0.5 / 3.0)) - player.x, yc + (Sin(rc) * (sc * 0.5 / 3.0)) - player.y)
			tri[2] = pointx + get_x()
			tri[3] = pointy + get_y()
			
			calc_pos(lstpoly.x + (Cos(lstpoly.r - 180) * (lstpoly.s * 0.5 / 3.0)) - player.x, lstpoly.y + (Sin(lstpoly.r - 180) * (lstpoly.s * 0.5 / 3.0)) - player.y)
			tri[4] = pointx + get_x()
			tri[5] = pointy + get_y()
			
			DrawPoly(tri)
			
			tri[0] = tri[2]
			tri[1] = tri[3]
			
			calc_pos(lstpoly.x + (Cos(lstpoly.r) * (lstpoly.s * 0.5 / 3.0)) - player.x, lstpoly.y + (Sin(lstpoly.r) * (lstpoly.s * 0.5 / 3.0)) - player.y)
			tri[2] = pointx + get_x()
			tri[3] = pointy + get_y()
			
			DrawPoly(tri)
			
			SetBlend(ALPHABLEND)
		EndIf
		
		
	End Function
End Type

Type Texplosion
	Global list:TList = CreateList(), explosiontimer:Int
	Field x:Float, y:Float, r:Float, er:Float, time:Int
	Field rc:Byte, gc:Byte, bc:Byte
	Function Create(x:Float, y:Float, r:Float)
		For Local xbv:Int = 0 To 5
		Local explosion:Texplosion = New Texplosion
			Texplosion.list.AddLast(explosion)
			explosion.x = x + Rnd(0, 64) - 32
			explosion.y = y + Rnd(0, 64) - 32
			explosion.r = Rnd(0, 360)
			explosion.er = r
			
			explosion.rc = 150 + Rand(0, 105)
			explosion.gc = 50 + Rand(0, 100)
			explosion.bc = Rand(0, 30)
			
			explosion.time = 3000 + Rand(0, 2000)
		Next
	 End Function
	 Function Draw()
	 	If explosiontimer <= 0 Then explosiontimer:+50
	 	explosiontimer:-msc
		
		SetBlend(LIGHTBLEND)
	 	For Local explosion:Texplosion = EachIn Texplosion.list
			explosion.r:+calc_move(45)
			SetRotation(explosion.r - calc_rotation)
			SetColor(explosion.rc, explosion.gc, explosion.bc)
			SetAlpha(explosion.time / 8000.0)
			SetScale(explosion.time / 500.0, explosion.time / 500.0)
			calc_pos(explosion.x - player.x, explosion.y - player.y)
			DrawImage(thrust_img, pointx + get_x(), pointy + get_y())
			explosion.time:-msc
			If explosion.time <= 0 Then Texplosion.list.Remove(explosion)
		Next
		SetBlend(ALPHABLEND)
	 End Function
End Type

Type Tthruster
	Global list:TList = CreateList(), thrustertimer:Int
	Field x:Float, y:Float, r:Float, er:Float, s:Float, time:Int
	Function Create(x:Float, y:Float, r:Float, s:Float)
		
		If thrustertimer > 0 Then Return
		
		Local thruster:Tthruster = New Tthruster
		Tthruster.list.AddLast(thruster)
		thruster.x = x
		thruster.y = y
		thruster.r = r
		thruster.er = r
		thruster.s = s / 4.0
		thruster.time = 2000
	 End Function
	 Function Draw()
	 	If thrustertimer <= 0 Then thrustertimer:+50
	 	thrustertimer:-msc
		
	 	SetBlend(LIGHTBLEND)
	 	For Local thruster:Tthruster = EachIn Tthruster.list
			thruster.r:+calc_move(45)
			thruster.x:+Cos(thruster.er + 90) * calc_move(thruster.s)
			thruster.y:+Sin(thruster.er + 90) * calc_move(thruster.s)
			SetRotation(thruster.r - calc_rotation)
			SetColor(255, 255, 100)
			SetAlpha(thruster.time / 2500.0)
			SetScale(thruster.time / 2000.0, thruster.time / 2000.0)
			calc_pos(thruster.x - player.x, thruster.y - player.y)
			DrawImage(thrust_img, pointx + get_x(), pointy + get_y())
			thruster.time:-msc
			If thruster.time <= 0 Then Tthruster.list.Remove(thruster)
		Next
		SetBlend(ALPHABLEND)
	 End Function
End Type


