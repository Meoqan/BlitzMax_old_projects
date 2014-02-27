Type Tpolythrust
	Global list:TList = CreateList(), polytimer:Int, lifetime:Float = 5000
	Field tri:Float[6], timey:Float
	Field x:Float, y:Float, r:Float, s:Float, speed:Float, lastply:Tpolythrust
	Field color:Byte
	
	Function cleanup()
		list.Clear()
	End Function
	
	Function Create:Tpolythrust(xc:Float, yc:Float, rc:Float, sc:Float, speed:Float, lstpoly:Tpolythrust, color:Byte)
		
		If polytimer > 0 Then Return lstpoly
	
		Local trithrust:Tpolythrust = New Tpolythrust
		list.AddFirst(trithrust)
		
		trithrust.x = xc
		trithrust.y = yc
		trithrust.r = rc
		trithrust.s = sc
		'trithrust.speed = speed
		trithrust.color = color
		trithrust.lastply = lstpoly
		trithrust.timey = lifetime
		
		Return trithrust
	End Function
		

	Function Draw()
		If polytimer <= 0 Then polytimer:+Float(20 + (list.Count() / 20.0))
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
				If tth.color = 4 Then SetColor(75, 75, 75)
				
				tth.tri[0] = tth.x + (Cos(tth.r - 180) * (tth.s * (tth.timey / (lifetime * 2.0)))) - Tscreen.getx()
				tth.tri[1] = tth.y + (Sin(tth.r - 180) * (tth.s * (tth.timey / (lifetime * 2.0)))) - Tscreen.gety()
				
				tth.tri[2] = tth.x + (Cos(tth.r) * (tth.s * (tth.timey / (lifetime * 2.0)))) - Tscreen.getx()
				tth.tri[3] = tth.y + (Sin(tth.r) * (tth.s * (tth.timey / (lifetime * 2.0)))) - Tscreen.gety()
				
				tth.tri[4] = tth.lastply.x + (Cos(tth.lastply.r - 180) * (tth.lastply.s * (tth.timey / (lifetime * 2.0)))) - Tscreen.getx()
				tth.tri[5] = tth.lastply.y + (Sin(tth.lastply.r - 180) * (tth.lastply.s * (tth.timey / (lifetime * 2.0)))) - Tscreen.gety()
				
				DrawPoly(tth.tri)
				
				tth.tri[0] = tth.tri[2]
				tth.tri[1] = tth.tri[3]
				
				tth.tri[2] = tth.lastply.x + (Cos(tth.lastply.r) * (tth.lastply.s * (tth.timey / (lifetime * 2.0)))) - Tscreen.getx()
				tth.tri[3] = tth.lastply.y + (Sin(tth.lastply.r) * (tth.lastply.s * (tth.timey / (lifetime * 2.0)))) - Tscreen.gety()
				
				DrawPoly(tth.tri)
				
				SetAlpha(tth.timey / 3500.0)
				
				If tth.color = 0 Then SetColor(255, 150, 150)
				If tth.color = 1 Then SetColor(150, 255, 150)
				If tth.color = 2 Then SetColor(150, 150, 255)
				If tth.color = 3 Then SetColor(150, 255, 255)
				If tth.color = 4 Then SetColor(150, 150, 150)
				
				tth.tri[0] = tth.x + (Cos(tth.r - 180) * (tth.s * (tth.timey / (lifetime * 2.0)) / 3.0)) - Tscreen.getx()
				tth.tri[1] = tth.y + (Sin(tth.r - 180) * (tth.s * (tth.timey / (lifetime * 2.0)) / 3.0)) - Tscreen.gety()
				
				tth.tri[2] = tth.x + (Cos(tth.r) * (tth.s * (tth.timey / (lifetime * 2.0)) / 3.0)) - Tscreen.getx()
				tth.tri[3] = tth.y + (Sin(tth.r) * (tth.s * (tth.timey / (lifetime * 2.0)) / 3.0)) - Tscreen.gety()
				
				tth.tri[4] = tth.lastply.x + (Cos(tth.lastply.r - 180) * (tth.lastply.s * (tth.timey / (lifetime * 2.0)) / 3.0)) - Tscreen.getx()
				tth.tri[5] = tth.lastply.y + (Sin(tth.lastply.r - 180) * (tth.lastply.s * (tth.timey / (lifetime * 2.0)) / 3.0)) - Tscreen.gety()
				
				DrawPoly(tth.tri)
				
				tth.tri[0] = tth.tri[2]
				tth.tri[1] = tth.tri[3]
				
				tth.tri[2] = tth.lastply.x + (Cos(tth.lastply.r) * (tth.lastply.s * (tth.timey / (lifetime * 2.0)) / 3.0)) - Tscreen.getx()
				tth.tri[3] = tth.lastply.y + (Sin(tth.lastply.r) * (tth.lastply.s * (tth.timey / (lifetime * 2.0)) / 3.0)) - Tscreen.gety()
				
				DrawPoly(tth.tri)
				
				tth.timey:-msc
				If tth.timey <= 0 Then list.Remove(tth) ; tth.lastply = Null
			Else
				list.Remove(tth)
			EndIf
			tth.x:+Cos(tth.r + 90) * calc_move(tth.speed)
			tth.y:+Sin(tth.r + 90) * calc_move(tth.speed)
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
			
			tri[0] = xc + (Cos(rc - 180) * (sc * 0.5)) - Tscreen.getx()
			tri[1] = yc + (Sin(rc - 180) * (sc * 0.5)) - Tscreen.gety()
			
			tri[2] = xc + (Cos(rc) * (sc * 0.5)) - Tscreen.getx()
			tri[3] = yc + (Sin(rc) * (sc * 0.5)) - Tscreen.gety()
			
			tri[4] = lstpoly.x + (Cos(lstpoly.r - 180) * (lstpoly.s * 0.5)) - Tscreen.getx()
			tri[5] = lstpoly.y + (Sin(lstpoly.r - 180) * (lstpoly.s * 0.5)) - Tscreen.gety()
			
			DrawPoly(tri)
			
			tri[0] = tri[2]
			tri[1] = tri[3]
			
			tri[2] = lstpoly.x + (Cos(lstpoly.r) * (lstpoly.s * 0.5)) - Tscreen.getx()
			tri[3] = lstpoly.y + (Sin(lstpoly.r) * (lstpoly.s * 0.5)) - Tscreen.gety()
			
			DrawPoly(tri)
			
			SetAlpha(0.857)
			
			If color = 0 Then SetColor(255, 150, 150)
			If color = 1 Then SetColor(150, 255, 150)
			If color = 2 Then SetColor(150, 150, 255)
			If color = 3 Then SetColor(150, 255, 255)
			
			tri[0] = xc + (Cos(rc - 180) * (sc * 0.5 / 3.0)) - Tscreen.getx()
			tri[1] = yc + (Sin(rc - 180) * (sc * 0.5 / 3.0)) - Tscreen.gety()
			
			tri[2] = xc + (Cos(rc) * (sc * 0.5 / 3.0)) - Tscreen.getx()
			tri[3] = yc + (Sin(rc) * (sc * 0.5 / 3.0)) - Tscreen.gety()
			
			tri[4] = lstpoly.x + (Cos(lstpoly.r - 180) * (lstpoly.s * 0.5 / 3.0)) - Tscreen.getx()
			tri[5] = lstpoly.y + (Sin(lstpoly.r - 180) * (lstpoly.s * 0.5 / 3.0)) - Tscreen.gety()
			
			DrawPoly(tri)
			
			tri[0] = tri[2]
			tri[1] = tri[3]
			
			tri[2] = lstpoly.x + (Cos(lstpoly.r) * (lstpoly.s * 0.5 / 3.0)) - Tscreen.getx()
			tri[3] = lstpoly.y + (Sin(lstpoly.r) * (lstpoly.s * 0.5 / 3.0)) - Tscreen.gety()
			
			DrawPoly(tri)
			
			SetBlend(ALPHABLEND)
		EndIf
		
		
	End Function
End Type