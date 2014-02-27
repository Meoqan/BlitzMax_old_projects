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
	
	'Local entferung:Float = Sqr((nowhandle_X * Sqr((nowscale_X) ^ 2 + (nowscale_Y) ^ 2)) ^ 2 + (nowhandle_Y * Sqr((nowscale_X) ^ 2 + (nowscale_Y) ^ 2)) ^ 2)
	Local entferung:Float = Sqr((nowhandle_X) ^ 2 + (nowhandle_Y) ^ 2)
	Local winkel:Float = -ATan2(nowhandle_X, nowhandle_Y) + 180
	'((nowscale_X + nowscale_Y) / 1)
	DrawImage(bild, x + (Cos(GetRotation() - winkel) * (entferung * nowscale_X)), y + (Sin(GetRotation() - winkel) * (entferung * nowscale_Y)))
	
	SetScale(nowscale_x, nowscale_Y)
End Function

Function PushCollision(x1:Float Var, y1:Float Var, size1:Float, x2:Float Var, y2:Float Var, size2:Float, festergegenstend2:Byte = 1)
	Local entferung:Float = Sqr((x1 - x2) ^ 2 + (y1 - y2) ^ 2)
	size1 = size1 / 2
	size2 = size2 / 2
	If entferung < size1 + size2 Then
		Local winkel:Float = CalcWinkel(x1 - x2, y1 - y2) + 90
		
		If festergegenstend2 = 1 Then
			x1 = x1 + Cos(winkel) * ((size1 + size2) - entferung)
			y1 = y1 + Sin(winkel) * ((size1 + size2) - entferung)
		Else
			x1 = x1 + Cos(winkel) * (((size1 + size2) - entferung) / 2)
			y1 = y1 + Sin(winkel) * (((size1 + size2) - entferung) / 2)
			x2 = x2 + Cos(winkel - 180) * (((size1 + size2) - entferung) / 2)
			y2 = y2 + Sin(winkel - 180) * (((size1 + size2) - entferung) / 2)
		End If
	End If
End Function

Function PushQuad(x1:Float Var, y1:Float Var, size1:Float, x2:Float, y2:Float, sizeW2:Float, sizeH2:Float)
	Local size2:Float = Sqr((sizeW2) ^ 2 + (sizeH2) ^ 2) / 3


	Local tex00:Float = x2
	Local tey00:Float = y2
	PushCollision(x1, y1, size1, tex00, tey00, size2 * 2, 0)
	
	Local tex01:Float = x2 + sizeW2 / 4
	Local tey01:Float = y2 + sizeH2 / 4
	
	PushCollision(x1, y1, size1, tex01, tey01, size2, 0)
	
	Local tex02:Float = x2 + sizeW2 / 4
	Local tey02:Float = y2 - sizeH2 / 4
	
	PushCollision(x1, y1, size1, tex02, tey02, size2, 0)
	
	Local tex03:Float = x2 - sizeW2 / 4
	Local tey03:Float = y2 - sizeH2 / 4
	
	PushCollision(x1, y1, size1, tex03, tey03, size2, 0)
	
	Local tex04:Float = x2 - sizeW2 / 4
	Local tey04:Float = y2 + sizeH2 / 4
	
	PushCollision(x1, y1, size1, tex04, tey04, size2, 0)
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

Function CalcWinkel:Float(x:Float, y:Float)
	Local winkel:Float = -ATan2(x, y)
	While winkel < 0
		winkel = winkel + 360
	Wend
	While winkel > 360
		winkel = winkel - 360
	Wend
	Return winkel
End Function

Function waypointtodest:Twaypoint(postition:Twaypoint, ziel:Twaypoint)
	Local foundwp:Twaypoint = Null

	For Local eTwaypoint:Twaypoint = EachIn waypointlist
		eTwaypoint.cheacked = 9999
		eTwaypoint.used = 0
		If eTwaypoint.chaged = 1 Then
			eTwaypoint.chaged = 0
			Local nr3:Int = 0
			For eTwaypoint.otherWP = EachIn eTwaypoint.otherlist
				Local entf55:Float = Sqr((eTwaypoint.x - eTwaypoint.otherWP.x) ^ 2 + (eTwaypoint.y - eTwaypoint.otherWP.y) ^ 2)
				eTwaypoint.dist[nr3] = entf55
				nr3 = nr3 + 1
			Next
		End If
	Next
	
	If postition = ziel Then Return ziel
	
	wayray(ziel)
	
	Local enf84:Float = 9999, nr8:Int = 0
	For postition.otherWP = EachIn postition.otherlist
		If postition.otherWP.cheacked < enf84 Then
			foundwp = postition.otherWP
			enf84 = postition.otherWP.cheacked
		End If
	Next
	
	Return foundwp
End Function

Function wayray:Float(ziel:Twaypoint, dian:Float = 1)
	ziel.used = 1
	If dian = 1 Then ziel.cheacked = dian
	Local dist:Float[16]
	
	Local nr40:Int = 0
	For ziel.otherWP = EachIn ziel.otherlist
		If ziel.otherWP.cheacked > ziel.dist[nr40] + dian Then
			If ziel <> ziel.otherWP Then
				ziel.otherWP.cheacked = ziel.dist[nr40] + dian
				If ziel.otherWP.used = 0 Then dist[nr40] = ziel.dist[nr40] + dian
			EndIf
		EndIf
		nr40 = nr40 + 1
	Next
	
	Local enf844:Float = 9999, best:Int = -1
	For Local nr5:Int = 0 To 15
		If dist[nr5] < enf844 And dist[nr5] > 0 Then
			best = nr5
			enf844 = dist[nr5]
		End If
	Next

	nr40 = 0
	For ziel.otherWP = EachIn ziel.otherlist
		If best = nr40 Then
			wayray(ziel.otherWP, ziel.dist[nr40] + dian)
		End If
		nr40 = nr40 + 1
	Next
	
	nr40 = 0
	For ziel.otherWP = EachIn ziel.otherlist
		If best <> nr40 Then
			If ziel.otherWP.used = 0 Then wayray(ziel.otherWP, ziel.dist[nr40] + dian)
		End If
		nr40 = nr40 + 1
	Next
		
	Return ziel.cheacked
End Function




Function maptodest:Float(postitionx:Float, postitiony:Float, zielx:Float, ziely:Float, map:Int[,] Var, mapx:Int, mapy:Int)
	Local foundwp:Float = -1

	Local mapdat:Int[mapx + 1, mapy + 1, 3]
	
	For Local x:Int = 0 To mapx
		For Local y:Int = 0 To mapy
			mapdat[x, y, 2] = map[x, y]
			mapdat[x, y, 1] = 9999
		Next
	Next
	
	If postitionx = zielx And postitiony = ziely Then Return - 1
	If postitionx <= 0 Then Return - 1
	If postitionx > mapx Then Return - 1
	If postitiony <= 0 Then Return - 1
	If postitiony > mapy Then Return - 1
	If zielx <= 0 Then Return - 1
	If zielx > mapx Then Return - 1
	If ziely <= 0 Then Return - 1
	If ziely > mapy Then Return - 1
	
	mapdat[postitionx, postitiony, 1] = 1
	
	mapray(zielx, ziely, mapdat, mapx, mapy)
	
	Local enf:Float = 9999, rig:Int = -1
	For Local x:Int = -1 To 1
		For Local y:Int = -1 To 1
			If x = 0 And y = 0 Then
				
			Else
				If x = -1 And y = -1 Then rig = 315
				If x = -1 And y = 0 Then rig = 180
				If x = -1 And y = 1 Then rig = 45
				If x = 0 And y = -1 Then rig = 270
				If x = 0 And y = 1 Then rig = 90
				If x = 1 And y = -1 Then rig = 225
				If x = 1 And y = 0 Then rig = 0
				If x = 1 And y = 1 Then rig = 135
				
				If mapdat[postitionx + x, postitiony + y, 1] < enf Then
					foundwp = rig
					enf = mapdat[postitionx + x, postitiony + y, 1]
				End If
			End If
		Next
	Next
	
	For Local x:Int = 0 To mapx
		For Local y:Int = 0 To mapy
			map[x, y] = mapdat[x, y, 1]
		Next
	Next
	
	Return foundwp
End Function

Global diagonal:Float = Sqr((1) ^ 2 + (1) ^ 2)
Function mapray(zielx:Int, ziely:Int, map:Int[,,] Var, mapx:Int, mapy:Int, dian:Float = 1)
	map[zielx, ziely, 0] = 1
	If zielx > 0 And zielx < mapx And ziely > 0 And ziely < mapy Then
		If dian = 1 Then map[zielx, ziely, 1] = dian
		
		For Local x:Int = -1 To 1
			For Local y:Int = -1 To 1
				If x = 0 And y = 0 Then
					
				Else
					Local diagonalset:Float
					If x = -1 And y = -1 Then diagonalset = diagonal
					If x = -1 And y = 0 Then diagonalset = 1
					If x = -1 And y = 1 Then diagonalset = diagonal
					If x = 0 And y = -1 Then diagonalset = 1
					If x = 0 And y = 1 Then diagonalset = 1
					If x = 1 And y = -1 Then diagonalset = diagonal
					If x = 1 And y = 0 Then diagonalset = 1
					If x = 1 And y = 1 Then diagonalset = diagonal
					
					If map[zielx + x, ziely + y, 2] = 0 Then
						If map[zielx + x, ziely + y, 1] > diagonalset + dian Then
							map[zielx + x, ziely + y, 1] = diagonalset + dian
						End If
					End If
					If map[zielx + x, ziely + y, 1] < map[zielx, ziely, 1] Then
						map[zielx, ziely, 1] = map[zielx + x, ziely + y, 1] + diagonalset + dian
					End If
				End If
			Next
		Next
		
		For Local x:Int = -1 To 1
			For Local y:Int = -1 To 1
				If x = 0 And y = 0 Then
					
				Else
					Local diagonalset:Float
					If x = -1 And y = -1 Then diagonalset = diagonal
					If x = -1 And y = 0 Then diagonalset = 1
					If x = -1 And y = 1 Then diagonalset = diagonal
					If x = 0 And y = -1 Then diagonalset = 1
					If x = 0 And y = 1 Then diagonalset = 1
					If x = 1 And y = -1 Then diagonalset = diagonal
					If x = 1 And y = 0 Then diagonalset = 1
					If x = 1 And y = 1 Then diagonalset = diagonal
					
					If map[zielx + x, ziely + y, 0] = 0 Then
						mapray(zielx + x, ziely + y, map, mapx, mapy, diagonalset + dian)
					End If
				End If
			Next
		Next
		
		For Local x:Int = -1 To 1
			For Local y:Int = -1 To 1
				If x = 0 And y = 0 Then
					
				Else
					Local diagonalset:Float
					If x = -1 And y = -1 Then diagonalset = diagonal
					If x = -1 And y = 0 Then diagonalset = 1
					If x = -1 And y = 1 Then diagonalset = diagonal
					If x = 0 And y = -1 Then diagonalset = 1
					If x = 0 And y = 1 Then diagonalset = 1
					If x = 1 And y = -1 Then diagonalset = diagonal
					If x = 1 And y = 0 Then diagonalset = 1
					If x = 1 And y = 1 Then diagonalset = diagonal
					
					If map[zielx + x, ziely + y, 2] = 0 Then
						If map[zielx + x, ziely + y, 1] > diagonalset + dian Then
							map[zielx + x, ziely + y, 1] = diagonalset + dian
						End If
					End If
					If map[zielx + x, ziely + y, 1] < map[zielx, ziely, 1] Then
						map[zielx, ziely, 1] = map[zielx + x, ziely + y, 1] + diagonalset + dian
					End If
				End If
			Next
		Next
		
	End If
End Function















