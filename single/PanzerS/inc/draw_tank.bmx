


Global SB09_kette:TImage = LoadImage("gfx\elemente\panzer\SB09\kette.png")
Global SB09_panzerung1:TImage = LoadImage("gfx\elemente\panzer\SB09\panzerung1.png")
Global SB09_panzerung2:TImage = LoadImage("gfx\elemente\panzer\SB09\panzerung2.png")
Global SB09_turm:TImage = LoadImage("gfx\elemente\panzer\SB09\turm.png")

Global hellrider_kette:TImage = LoadImage("gfx\elemente\panzer\hellrider\kette.png")
Global hellrider_wanne:TImage = LoadImage("gfx\elemente\panzer\hellrider\wanne.png")

Global bonebraker_kette:TImage = LoadImage("gfx\elemente\panzer\bonebraker\kette.png")
Global bonebraker_wanne:TImage = LoadImage("gfx\elemente\panzer\bonebraker\wanne.png")
Global bonebraker_turm:TImage = LoadImage("gfx\elemente\panzer\bonebraker\turm.png")




Function DrawTank(x:Float, y:Float, r:Float, rt:Float, dt:Float, speed:Float = 0, scale:Float = 1, rot:Float = 255, gruen:Float = 255, blau:Float = 255, life:Float = 100, bot:Int = 0, model:Int = 0)
	Local nowscale_X:Float
	Local nowscale_Y:Float
	GetScale(nowscale_X, nowscale_Y)
	
	
	If life > 0 And bot < 1 Then
		SetRotation(rt)
		SetColor(rot, gruen, blau)
		SetAlpha(0.4)
		SetHandle(20 + dt, 2.5)
		DrawRect(x - gVx, y - gVy, 40, 5)
		SetHandle(2.5 + dt, 20)
		DrawRect(x - gVx, y - gVy, 5, 40)
		SetAlpha(1)
	EndIf
	
	Select model
		Case 3 'bonebraker
			SetScale(scale, scale)
			SetRotation(180 + r)
			SetColor(128, 128, 128)
			SetHandle(30, 90)
			DrawPicture(bonebraker_kette, x - gVx, y - gVy, 20, 20)
			SetHandle(- 10, 90)
			DrawPicture(bonebraker_kette, x - gVx, y - gVy, 20, 20)
			
			SetColor(rot, gruen, blau)
			SetHandle(37.5, 80)
			DrawPicture(bonebraker_wanne, x - gVx, y - gVy, 40, 35)
			SetHandle(- 2.5, 80)
			DrawPicture(bonebraker_wanne, x - gVx, y - gVy, 40, 35)
			
			SetHandle(40, 50)
			DrawPicture(bonebraker_wanne, x - gVx, y - gVy, 100, 80)
			
			
			SetRotation(rt)
			Local zx:Float, zy:Float
			
			
			zx = Cos(180 + r + 45) * 50
			zy = Sin(180 + r + 45) * 50
			SetColor(0, 0, 0)
			SetHandle(25, 2.5)
			DrawRect(zx + x - gVx, zy + y - gVy, 25, 5)
			SetColor(rot, gruen, blau)
			SetHandle(15, 15)
			DrawPicture(bonebraker_turm, zx + x - gVx, zy + y - gVy, 30, 30)
			
			zx = Cos(180 + r - 45) * 50
			zy = Sin(180 + r - 45) * 50
			SetColor(0, 0, 0)
			SetHandle(25, 2.5)
			DrawRect(zx + x - gVx, zy + y - gVy, 25, 5)
			SetColor(rot, gruen, blau)
			SetHandle(15, 15)
			DrawPicture(bonebraker_turm, zx + x - gVx, zy + y - gVy, 30, 30)
			
			zx = Cos(180 + r + 161) * 65
			zy = Sin(180 + r + 161) * 65
			SetColor(0, 0, 0)
			SetHandle(25, 2.5)
			DrawRect(zx + x - gVx, zy + y - gVy, 25, 5)
			SetColor(rot, gruen, blau)
			SetHandle(15, 15)
			DrawPicture(bonebraker_turm, zx + x - gVx, zy + y - gVy, 30, 30)
			
			zx = Cos(180 + r - 161) * 65
			zy = Sin(180 + r - 161) * 65
			SetColor(0, 0, 0)
			SetHandle(25, 2.5)
			DrawRect(zx + x - gVx, zy + y - gVy, 25, 5)
			SetColor(rot, gruen, blau)
			SetHandle(15, 15)
			DrawPicture(bonebraker_turm, zx + x - gVx, zy + y - gVy, 30, 30)
			
			
			zx = Cos(180 + r + 180) * 10
			zy = Sin(180 + r + 180) * 10
			SetColor(0, 0, 0)
			SetHandle(60, 5)
			DrawRect(zx + x - gVx, zy + y - gVy, 45, 10)
			SetColor(rot, gruen, blau)
			SetHandle(30, 30)
			DrawPicture(bonebraker_turm, zx + x - gVx, zy + y - gVy, 60, 60)
			
			
		Case 2 ' hellrider
			SetScale(scale, scale)
			SetRotation(180 + r)
			SetColor(255, 255, 255)
			SetHandle(20, 30)
			DrawPicture(hellrider_kette, x - gVx, y - gVy, 20, 10)
			SetHandle(- 10, 30)
			DrawPicture(hellrider_kette, x - gVx, y - gVy, 20, 10)
			
			SetColor(rot, gruen, blau)
			SetHandle(22.5, 27.5)
			DrawPicture(hellrider_wanne, x - gVx, y - gVy, 55, 45)
			
			
			SetColor(0, 0, 0)
			SetHandle(47, 1.5)
			DrawRect(x - gVx, y - gVy, 45, 3)
			SetColor(40, 40, 40)
			SetHandle(47, 2.5)
			DrawRect(x - gVx, y - gVy, 5, 5)
			
			rem
			SetRotation(0)
			SetColor(0, 255, 0)
			Plot(x, y)
			endrem
		Case 1 ' SB09
			SetScale(scale, scale)
			SetRotation(180 + r)
			SetColor(255, 255, 255)
			SetHandle(20, 30)
			DrawPicture(SB09_kette, x - gVx, y - gVy, 20, 10)
			SetHandle(- 10, 30)
			DrawPicture(SB09_kette, x - gVx, y - gVy, 20, 10)
			SetHandle(18, - 20)
			DrawPicture(SB09_kette, x - gVx, y - gVy, 20, 10)
			SetHandle(- 8, - 20)
			DrawPicture(SB09_kette, x - gVx, y - gVy, 20, 10)
			
			SetColor(rot, gruen, blau)
			SetHandle(25, 20)
			DrawPicture(SB09_panzerung1, x - gVx, y - gVy, 20, 20)
			SetHandle(- 5, 20)
			DrawPicture(SB09_panzerung1, x - gVx, y - gVy, 20, 20)
			SetHandle(23, - 10)
			DrawPicture(SB09_panzerung1, x - gVx, y - gVy, 20, 20)
			SetHandle(- 3, - 10)
			DrawPicture(SB09_panzerung1, x - gVx, y - gVy, 20, 20)
		
			
			SetHandle(22.5, 18.5)
			DrawPicture(SB09_panzerung2, x - gVx, y - gVy, 45, 45)
			
			SetRotation(rt)
			
			SetColor(0, 0, 0)
			SetHandle(42.5, 9.5)
			DrawRect(x - gVx, y - gVy, 45, 5)
			SetHandle(42.5, - 5.5)
			DrawRect(x - gVx, y - gVy, 45, 5)
			
			SetColor(rot, gruen, blau)
			SetHandle(22.5, 22.5)
			DrawPicture(SB09_turm, x - gVx, y - gVy, 45, 45)
			
			rem
			SetRotation(0)
			SetColor(0, 255, 0)
			Plot(x, y)
			endrem
			rem
			Local rol2:Int = Rnd(- 100, 100)
			If rol2 < 0 Then rol2 = 1 Else rol2 = -1
			
			If life > 0 Then
				If rol2 < 0 Then CreateSmoke(x + Cos(r + 150) * (20 * scale), y + Sin(r + 150) * (20 * scale), (speed + 10 * scale), r + 180 + Rnd(- 45, 45), (speed / 4) * scale, 30)
			Else
				If rol2 < 0 Then CreateSmoke(x, y, 2, Rnd(0, 360), 3, 30)
				If rol2 < 0 Then Createfire(x, y, Rnd(40, 80), Rnd(0, 360), Rnd(1, 3), 10)
				rol = Rnd(- 2000, 100)
				If rol < 0 Then rol = 1 Else rol = -1
				If rol < 0 Then CreateFunken(x, y, Rnd(2, 3), Rnd(0, 360))
			End If
			If speed > 0 Then	
				rol = Rnd(- 100, 100)
				If rol < 0 Then rol = 1 Else rol = -1
				If rol2 < 0 Then CreateMud(x + Cos(r + 180 + (rol * 40) + Rnd(- 5, 5)) * (15 * scale), y + Sin(r + 180 + (rol * 40) + Rnd(- 5, 5)) * (15 * scale), (speed + Rnd(1, 6) * scale), r + 180 + Rnd(- 20, 20), (speed * 0.75) * scale, 25)
				If rol2 < 0 Then Createsanddust(x + Cos(r + (rol * 45) + Rnd(- 5, 5)) * (25 * scale), y + Sin(r + (rol * 45) + Rnd(- 5, 5)) * (25 * scale), (speed + 5 * scale), r + 180 + (rol * Rnd(- 25, 0)), (speed) * scale, 25)
			EndIf
			endrem
		Case 0 ' normaler Panzer
		
			SetScale(scale, scale)
			SetRotation(r)
			SetAlpha(0.4)
			SetHandle(20, 15)
			SetColor(0, 0, 0)
			DrawRect(x - gVx, y - gVy + (5 * scale), 40, 30)
			SetAlpha(1)
			SetColor(rot, gruen, blau)
			SetHandle(22.5, 22.5)
			If bot = -1 Then
				DrawPicture(wanne2, x - gVx, y - gVy, 45, 45)
			Else
				DrawPicture(wanne, x - gVx, y - gVy, 45, 45)
			EndIf
			
			SetColor(0, 0, 0)
			SetHandle(23, - 7)
			DrawRect(x - gVx, y - gVy, 5, 5)
			
			SetRotation(rt)
			
			SetAlpha(0.4)
			SetColor(0, 0, 0)
			SetHandle(12.5, 8.75)
			DrawRect(x - gVx, y - gVy + (5 * scale), 25, 17.5)
			SetHandle(32.5, 2.5)
			DrawRect(x - gVx, y - gVy + (5 * scale), 35, 5)
			SetAlpha(1)
			SetColor(0, 0, 0)
			SetHandle(32.5, 2.5)
			DrawRect(x - gVx, y - gVy, 35, 5)
			SetColor(rot, gruen, blau)
			
			SetHandle(15, 15)
			If bot = -1 Then
				DrawPicture(wanne2, x - gVx, y - gVy, 30, 30)
			Else
				DrawPicture(wanne, x - gVx, y - gVy, 30, 30)
			EndIf
			SetColor(0, 0, 0)
			SetHandle(- 2, - 2)
			DrawRect(x - gVx, y - gVy, 5, 5)
			
			SetAlpha(0.4)
			SetColor(255, 0, 0)
			SetHandle(110, - 3)
			If life > 0 Then DrawRect(x - gVx, y - gVy, 100, 2)

			Local rol2:Int = Rnd(- 100, 100)
			If rol2 < 0 Then rol2 = 1 Else rol2 = -1
			
		
			If life > 0 Then
				If rol2 < 0 Then CreateSmoke(x + Cos(r + 150) * (20 * scale), y + Sin(r + 150) * (20 * scale), (speed + 10 * scale), r + 180 + Rnd(- 45, 45), (speed / 4) * scale, 30)
			Else
				If rol2 < 0 Then CreateSmoke(x, y, 2, Rnd(0, 360), 3, 30)
				If rol2 < 0 Then Createfire(x, y, Rnd(40, 80), Rnd(0, 360), Rnd(1, 3), 10)
				rol = Rnd(- 2000, 100)
				If rol < 0 Then rol = 1 Else rol = -1
				If rol < 0 Then CreateFunken(x, y, Rnd(2, 3), Rnd(0, 360))
			End If
			If speed > 0 Then	
				rol = Rnd(- 100, 100)
				If rol < 0 Then rol = 1 Else rol = -1
				If rol2 < 0 Then CreateMud(x + Cos(r + 180 + (rol * 40) + Rnd(- 5, 5)) * (15 * scale), y + Sin(r + 180 + (rol * 40) + Rnd(- 5, 5)) * (15 * scale), (speed + Rnd(1, 6) * scale), r + 180 + Rnd(- 20, 20), (speed * 0.75) * scale, 25)
				If rol2 < 0 Then Createsanddust(x + Cos(r + (rol * 45) + Rnd(- 5, 5)) * (25 * scale), y + Sin(r + (rol * 45) + Rnd(- 5, 5)) * (25 * scale), (speed + 5 * scale), r + 180 + (rol * Rnd(- 25, 0)), (speed) * scale, 25)
			EndIf
			
	End Select
	SetScale(nowscale_x, nowscale_Y)
End Function