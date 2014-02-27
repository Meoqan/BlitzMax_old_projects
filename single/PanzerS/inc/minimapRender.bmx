Global minimap:TPixmap = CreatePixmap(100, 100, PF_RGBA8888), minimapI:Timage

For Local xm:Int = 0 To 99
	For Local ym:Int = 0 To 99
		minimap.WritePixel(xm, ym, colornull)
	Next
Next

Global colorminim:Int, minmapx:Int, minmapy:Int


Function PreRender()

	For Local xm:Int = 0 To 98
		For Local ym:Int = 0 To 98
			Local r:Int = 0, g:Int = 0, b:Int = 0
			For Local x:Int = 0 To 9
				For Local y:Int = 0 To 9
					If emap[(xm * 10) + x, (ym * 10) + y, 0] <> Null Then
					'nur den ersten layer abfragen
						r = r + emap[(xm * 10) + x, (ym * 10) + y, 0].R
						g = g + emap[(xm * 10) + x, (ym * 10) + y, 0].G
						b = b + emap[(xm * 10) + x, (ym * 10) + y, 0].B
					EndIf
				Next
			Next
			Local byte9m:Byte Ptr = Varptr colorminim
			byte9m[0] = Int(b / 100.0) 'BLAU
			byte9m[1] = Int(g / 100.0) 'GRUEN
			byte9m[2] = Int(r / 100.0) 'ROT
			Local a:Int = 0
			If r > 0 Then a = 255
			If g > 0 Then a = 255
			If b > 0 Then a = 255
			byte9m[3] = Int(a) 'ALPHA
			minimap.WritePixel(xm, ym, colorminim)
		next
	next
	minimapI= null
	minimapI=loadimage(minimap)
End Function

Function OverTimeRender()
	For Local asad:Int = 0 To 49
		Local xm:Int = minmapx
		Local ym:Int = minmapy
		minmapx = minmapx + 1
		If minmapx > 98 Then minmapx = 0 ; minmapy = minmapy + 1
		If minmapy > 98 Then minmapy = 0
			Local r:Int = 0, g:Int = 0, b:Int = 0
			For Local x:Int = 0 To 9
				For Local y:Int = 0 To 9
					If emap[(xm * 10) + x, (ym * 10) + y, 0] <> Null Then
					'nur den ersten layer abfragen
						r = r + emap[(xm * 10) + x, (ym * 10) + y, 0].R
						g = g + emap[(xm * 10) + x, (ym * 10) + y, 0].G
						b = b + emap[(xm * 10) + x, (ym * 10) + y, 0].B
					EndIf
				Next
			Next
			Local byte9m:Byte Ptr = Varptr colorminim
			byte9m[0] = Int(b / 100.0) 'BLAU
			byte9m[1] = Int(g / 100.0) 'GRUEN
			byte9m[2] = Int(r / 100.0) 'ROT
			Local a:Int = 0
			If r > 0 Then a = 255
			If g > 0 Then a = 255
			If b > 0 Then a = 255
			byte9m[3] = Int(a) 'ALPHA	
			minimap.WritePixel(xm, ym, colorminim)
	Next
	minimapI= null
	minimapI=loadimage(minimap)

End Function





				
