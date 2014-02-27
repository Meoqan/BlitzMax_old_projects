

Global hud_main:Timage = LoadImage("gfx\elemente\hud_main.png")
Global hud_life:Timage = LoadImage("gfx\elemente\hud_life.png")


Function EnerBalken(life:Float, r:Int = 64, g:Int = 255, b:Int = 64)
	SetRotation(0)
	SetAlpha(1)
	SetHandle(0, 0)
	SetColor(0, 0, 0)
	SetColor(r, g, b)
	DrawImage(hud_main, 0, 0)
	
	Local rlife:Int = 0, glife:Int = 100
	If life > 50 Then
		rlife = 100 - ((100 - life) * 2)
	Else
		rlife = 100
		glife = (life * 2)
	End If
	
	SetColor((rlife * 2.55), 255 - (glife * 2.55), 0)
	DrawImage(hud_life, 0, 0)
End Function