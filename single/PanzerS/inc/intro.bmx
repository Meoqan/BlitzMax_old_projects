
Global intro_image:Timage[4]
intro_image[0] = LoadImage("intro\PT.png")
intro_image[1] = LoadImage("intro\PT-g.png")
intro_image[2] = LoadImage("intro\ATOM.png")
intro_image[3] = LoadImage("intro\ATOM-g.png")

Global intro_finish:Int = 0, intro_frame:Int = -120, intro_starpos:Float[10, 4], intro_alpha:Float, intro_alpha2:Float

Function play_intro:Int(mitte_x:Int, mitte_y:Int)
	
	SetBlend(ALPHABLEND)
	
	If intro_frame > - 60 And intro_frame < 0 Then
		If intro_alpha2 < 1 Then intro_alpha2 = intro_alpha2 + 0.025 Else intro_alpha2 = 1
	ElseIf intro_frame > 300 Then
		If intro_alpha2 > 0 Then intro_alpha2 = intro_alpha2 - 0.025 Else intro_alpha2 = 0
	EndIf
	SetAlpha(intro_alpha2)
	
	
	DrawImage(intro_image[0], mitte_x - 400, mitte_y - 300)
	
	
	If intro_frame > 0 And intro_frame < 60 Then
		If intro_alpha < 1 Then intro_alpha = intro_alpha + 0.025 Else intro_alpha = 1
	ElseIf intro_frame > 240 Then
		If intro_alpha > 0 Then intro_alpha = intro_alpha - 0.025 Else intro_alpha = 0
	EndIf
	SetAlpha(intro_alpha)
	
	
	SetBlend(LIGHTBLEND)
	DrawImage(intro_image[1], mitte_x - 400, mitte_y - 300)
	
	
	SetAlpha(1)
	If intro_frame > 0 Then
		SetBlend(ALPHABLEND)
		For Local int_nr:Int = 0 To 9
			If intro_starpos[int_nr, 2] = 0 Then intro_starpos[int_nr, 2] = Rnd(1, 360)
			intro_starpos[int_nr, 3] = intro_starpos[int_nr, 3] + 3 Mod 360
			intro_starpos[int_nr, 0] = intro_starpos[int_nr, 0] + Cos(intro_starpos[int_nr, 2]) * 4
			intro_starpos[int_nr, 1] = intro_starpos[int_nr, 1] + Sin(intro_starpos[int_nr, 2]) * 4
			
			intro_starpos[int_nr, 2] = intro_starpos[int_nr, 2] + BufferStar(intro_starpos[int_nr, 2], 90, 1)
			
			SetHandle(64, 64)
			SetRotation(intro_starpos[int_nr, 3])
			DrawPicturex(intro_image[2], mitte_x - intro_starpos[int_nr, 0], mitte_y - intro_starpos[int_nr, 1], 128, 128)
		Next
		SetBlend(LIGHTBLEND)
		For Local int_nr:Int = 0 To 9
			SetHandle(64, 64)
			SetRotation(intro_starpos[int_nr, 3])
			DrawPicturex(intro_image[3], mitte_x - intro_starpos[int_nr, 0], mitte_y - intro_starpos[int_nr, 1], 128, 128)
		Next
	EndIf
	SetRotation(0)
	SetHandle(0, 0)
	SetBlend(ALPHABLEND)
	
	intro_frame = intro_frame + 1
	
	If intro_frame > 360 Then intro_finish = 1
	Return intro_finish
End Function

Function DrawPicturex(bild:Timage, x:Float, y:Float, width:Float, height:Float)
	Local nowscale_X:Float
	Local nowscale_Y:Float
	GetScale(nowscale_X, nowscale_Y)
	
	Local nowhandle_X:Float
	Local nowhandle_Y:Float
	GetHandle(nowhandle_X, nowhandle_Y)
	
	Local factorx:Float = width / bild.width
	Local factory:Float = height / bild.height

	SetScale(factorx * nowscale_X, factory * nowscale_Y)
	
	'Local entferung:Float = Sqr((nowhandle_X * Sqr((nowscale_X) ^ 2 + (nowscale_Y) ^ 2)) ^ 2 + (nowhandle_Y * Sqr((nowscale_X) ^ 2 + (nowscale_Y) ^ 2)) ^ 2)
	Local entferung:Float = Sqr((nowhandle_X) ^ 2 + (nowhandle_Y) ^ 2)
	Local winkel:Float = -ATan2(nowhandle_X, nowhandle_Y) + 180
	'((nowscale_X + nowscale_Y) / 1)
	DrawImage(bild, x + (Cos(GetRotation() - winkel) * (entferung * nowscale_X)), y + (Sin(GetRotation() - winkel) * (entferung * nowscale_Y)))
	
	SetScale(nowscale_x, nowscale_Y)
End Function

Function BufferStar:Float(turmwinkel:Float, zielwinkel:Float, drehspeed:Float)
	Local totalwinkel:Float = turmwinkel - zielwinkel + 180
	While totalwinkel < - 180
		totalwinkel = totalwinkel + 360
	Wend
	While totalwinkel > 180
		totalwinkel = totalwinkel - 360
	Wend
	Local bufftore:Float, test:Int = 0
	If totalwinkel > drehspeed Then bufftore = -drehspeed ; test = 1
	If totalwinkel < - drehspeed Then bufftore = drehspeed ; test = 1
	If test = 0 Then bufftore = -totalwinkel
	Return bufftore
End Function