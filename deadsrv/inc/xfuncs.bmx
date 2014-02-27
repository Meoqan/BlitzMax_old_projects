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

Function calc_move:Float(speed:Float)
	If speed <> 0 Then Return ((speed * Float(msc) / 100.0)) Else Return 0
End Function

Function calc_keymove:Float(entferung:Float, timing:Float)
	If entferung <> 0 And timing > 0 Then Return ((entferung / timing) * Float(msc)) Else Return 0
End Function

Function cor_rad:Float(r:Float)
	While r < - 180.0
		r = r + 360.0
	Wend
	While r > 180.0
		r = r - 360.0
	Wend
	Return r
End Function