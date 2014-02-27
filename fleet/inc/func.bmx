
Function DrawPicture(bild:Timage, x:Float, y:Float, width:Float, height:Float)
	Local nowscale_X:Float
	Local nowscale_Y:Float
	GetScale(nowscale_X, nowscale_Y)
	
	Local nowhandle_X:Float
	Local nowhandle_Y:Float
	GetHandle(nowhandle_X, nowhandle_Y)
	
	Local factorx:Float = width / bild.width
	Local factory:Float = height / bild.height

	SetScale(factorx * nowscale_X, factory * nowscale_Y)
	SetHandle(0, 0)
	
	Local entferung:Float = Sqr((nowhandle_X) ^ 2 + (nowhandle_Y) ^ 2)
	Local winkel:Float = ATan2(nowhandle_X, nowhandle_Y) + 90
	DrawImage(bild, x + (Cos(GetRotation() - winkel) * (entferung * nowscale_X)), y + (Sin(GetRotation() - winkel) * (entferung * nowscale_Y)))
	
	SetScale(nowscale_x, nowscale_Y)
	SetHandle(nowhandle_X, nowhandle_Y)
End Function

Function reset_draw()
	SetRotation(0)
	SetColor(255, 255, 255)
	SetHandle(0.0, 0.0)
	SetAlpha(1.0)
	SetScale(1.0, 1.0)
	SetOrigin(0.0, 0.0)
End Function

Function calc_move:Float(speed:Float)
	Return ((speed * Float(msc) / 100.0))
End Function

Function get_ver_x:Float()
	Return Vx - pointx
End Function

Function get_ver_y:Float()
	Return Vy - pointy
End Function


Function BufferTower:Float(turmwinkel:Float, zielwinkel:Float, drehspeed:Float)
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

Function BufferTarget:Float(turmwinkel:Float, zielwinkel:Float, drehschalter:Float)
	Local totalwinkel:Float = turmwinkel - zielwinkel + 180
	While totalwinkel < - 180
		totalwinkel = totalwinkel + 360
	Wend
	While totalwinkel > 180
		totalwinkel = totalwinkel - 360
	Wend
	Local bufftore:Float, test:Int = 0
	If totalwinkel > drehschalter Then test = 1
	If totalwinkel < - drehschalter Then test = 1
	If test = 0 Then bufftore = 1
	Return bufftore
End Function

Function color:Int(R:Byte, G:Byte, B:Byte, A:Byte)
	Local nextcolor:Int
	Local bytes2:Byte Ptr = Varptr nextcolor
	bytes2[0] = R
	bytes2[1] = G
	bytes2[2] = B
	bytes2[3] = A
	
	Return nextcolor
End Function

