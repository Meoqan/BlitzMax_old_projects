

Global rendertexlist:TList = CreateList()
Function renderTile(x:Int, y:Int, l:Int)
	If emap[x, y, l] <> Null Then
		If emap[x, y, l].isRendert = 1 Then emap[x, y, l] = emap[x, y, l].orginal
	Else
		Return
	EndIf
	'umgebung feststellen
	If x > 0 And x < 999 And y > 0 And y < 999 And emap[x, y, l] <> Null Then
		Local renderdat:Ttextur[3, 3], renderdatst:Ttextur[8], cst:Int, othercheck:Int = 0
		
		For Local cy:Int = y - 1 To y + 1
			For Local cx:Int = x - 1 To x + 1
				If cx = x And cy = y Then
					If emap[cx, cy, l] <> Null Then
						renderdat[1, 1] = emap[cx, cy, l]
					EndIf
				Else
					If emap[cx, cy, l] = Null Then
						
					Else
						If emap[cx, cy, l].isRendert = 0 Then
							renderdat[cx - x + 1, cy - y + 1] = emap[cx, cy, l]
							renderdatst[cst] = emap[cx, cy, l]
							othercheck = othercheck + 1
						Else
							renderdat[cx - x + 1, cy - y + 1] = emap[cx, cy, l].orginal
							renderdatst[cst] = emap[cx, cy, l].orginal
							othercheck = othercheck + 1
						EndIf
					End If
					cst = cst + 1	
				End If
			Next
		Next
		cst = 0
		If othercheck > 0 Then
			'datenbank abfragen
			Local found:Int = 0
			For Local rTtextur:Ttextur = EachIn emap[x, y, l].redertlist
				Local infound:Int = 1
				For Local sst:Int = 0 To 7
					If rTtextur.render[sst] <> renderdatst[sst] Then
						infound = 0
					EndIf
				Next
				If infound = 1 Then
					emap[x, y, l] = rTtextur
					found = 1
					Exit
				End If
			Next
			'bild berechnen
			If found = 0 Then
				Local nTtextur:Ttextur = New Ttextur
				rendertexlist.AddLast(nTtextur)
				nTtextur.isRendert = 1
				nTtextur.orginal = emap[x, y, l]
				For Local sst:Int = 0 To 7
					nTtextur.render[sst] = renderdatst[sst]
				Next
				emap[x, y, l].redertlist.AddLast(nTtextur)
				
				
				Local bild:TPixmap = CopyPixmap(emap[x, y, l].pic)
				
				Local asdliste:TPixmap[9]
				
				rem
				If emap[x, y, l] <> renderdat[1, 0] Then asdliste[0] = renderdat[1, 0]
				If emap[x, y, l] <> renderdat[2, 0] Then asdliste[1] = renderdat[2, 0]
				If emap[x, y, l] <> renderdat[2, 1] Then asdliste[2] = renderdat[2, 1]
				If emap[x, y, l] <> renderdat[2, 2] Then asdliste[3] = renderdat[2, 2]
				If emap[x, y, l] <> renderdat[1, 2] Then asdliste[4] = renderdat[1, 2]
				If emap[x, y, l] <> renderdat[0, 2] Then asdliste[5] = renderdat[0, 2]
				If emap[x, y, l] <> renderdat[0, 1] Then asdliste[6] = renderdat[0, 1]
				If emap[x, y, l] <> renderdat[0, 0] Then asdliste[7] = renderdat[0, 0]
				End rem
				
				If renderdat[1, 0] <> Null Then asdliste[0] = renderdat[1, 0].pic Else asdliste[0] = bodenpix
				If renderdat[2, 0] <> Null Then asdliste[1] = renderdat[2, 0].pic Else asdliste[1] = bodenpix
				If renderdat[2, 1] <> Null Then asdliste[2] = renderdat[2, 1].pic Else asdliste[2] = bodenpix
				If renderdat[2, 2] <> Null Then asdliste[3] = renderdat[2, 2].pic Else asdliste[3] = bodenpix
				If renderdat[1, 2] <> Null Then asdliste[4] = renderdat[1, 2].pic Else asdliste[4] = bodenpix
				If renderdat[0, 2] <> Null Then asdliste[5] = renderdat[0, 2].pic Else asdliste[5] = bodenpix
				If renderdat[0, 1] <> Null Then asdliste[6] = renderdat[0, 1].pic Else asdliste[6] = bodenpix
				If renderdat[0, 0] <> Null Then asdliste[7] = renderdat[0, 0].pic Else asdliste[7] = bodenpix
				asdliste[8] = renderdat[1, 1].pic
				
				rem
				For Local x:Int = 0 To 2
					For Local y:Int = 0 To 2
						If renderdat[x, y].isRendert = 1 Then Notify("bah bah superscheiss") ; End
					Next
				Next
				endrem
				
				drawTile(bild, asdliste[8], asdliste)
				
				
				rem
				Local usedlist:Ttextur[9]
				
				
				For Local strt:Int = 0 To 7
					Local found:Int = 0
					For Local strt2:Int = 0 To 7
						If usedlist[strt2] = renderdatst[strt] Then
							found = 1
						EndIf
					Next
					If found = 0 Then
						usedlist[strt] = renderdatst[strt]
						
						If renderdatst[strt] = renderdat[1, 0] Or renderdatst[strt] = renderdat[1, 0] Then asdliste[0] = renderdat[1, 0]
						If renderdatst[strt] = renderdat[2, 0] Or renderdatst[strt] = renderdat[2, 0] Then asdliste[1] = renderdat[2, 0]
						If renderdatst[strt] = renderdat[2, 1] Or renderdatst[strt] = renderdat[2, 1] Then asdliste[2] = renderdat[2, 1]
						If renderdatst[strt] = renderdat[2, 2] Or renderdatst[strt] = renderdat[2, 2] Then asdliste[3] = renderdat[2, 2]
						If renderdatst[strt] = renderdat[1, 2] Or renderdatst[strt] = renderdat[1, 2] Then asdliste[4] = renderdat[1, 2]
						If renderdatst[strt] = renderdat[0, 2] Or renderdatst[strt] = renderdat[0, 2] Then asdliste[5] = renderdat[0, 2]
						If renderdatst[strt] = renderdat[0, 1] Or renderdatst[strt] = renderdat[0, 1] Then asdliste[6] = renderdat[0, 1]
						If renderdatst[strt] = renderdat[0, 0] Or renderdatst[strt] = renderdat[0, 0] Then asdliste[7] = renderdat[0, 0]
						
						
						asdliste[8] = renderdat[1, 1]
						
						calcrendermap(bild, asdliste)
					End If
				Next
				endrem
				
				
				
				nTtextur.pic = CopyPixmap(bild)
				nTtextur.img = LoadImage(bild)
				nTtextur.img.flags = emap[x, y, l].img.flags
				
				bild = ResizePixmap(bild, 32, 32)
					
				Local r:Int = 0, g:Int = 0, b:Int = 0
				For Local xr:Int = 0 To 31
					For Local yr:Int = 0 To 31
						Local colorm:Int = bild.ReadPixel(xr, yr)
						r = r + ((colorm Shr 16) & $ff)
						g = g + ((colorm Shr 8) & $ff)
						b = b + ((colorm) & $ff)
					Next
				Next
				bild = Null
					
				nTtextur.r = r / 1024
				nTtextur.g = g / 1024
				nTtextur.b = b / 1024
				
				emap[x, y, l] = nTtextur
			End If
		EndIf
	EndIf
End Function

Global feedcount:Int = -1, feeddata:Int[4], feedfactor:Float, feedpixel:Int, feedposx:Int, feedposy:Int, feedtexA:Int, feedtexB:Int, feedtexACT:Int
Global combospeicher:Int[16, 9]




Function loadtheshit()
	Local indata:TStream = ReadFile("gfx\fuckup.bah")
	
	For Local x:Int = 0 To 15
		For Local y:Int = 0 To 8
			combospeicher[x, y] = indata.ReadInt()
		Next
	Next
	
	indata.Close()
End Function


Function getdiff:Int(bild:TPixmap, bilduse:TPixmap, bildpos:TPixmap, bildneg:TPixmap)
	Local ret:Int
	
	If bild = bilduse Then ret = ret + 1
	If bild = bildpos Then ret = ret + 2
	If bild = bildneg Then ret = ret + 4
	
	If bilduse = bildpos Then ret = ret + 8
	If bilduse = bildneg Then ret = ret + 16

	If bildpos = bildneg Then ret = ret + 32
	
	Return ret
End Function



Function drawTile(tobild:TPixmap Var, orginalbild:TPixmap Var, fromlist:TPixmap[] Var)
	
	If combospeicher[0, 8] = 0 Then loadtheshit()

	Local asdasf:Int = 1

For Local y:Int = 0 To 31
	For Local x:Int = 0 To 31
		Local used_combox:Int = 0
		If ((x < 10 Or x > 21) And (y < 10 Or y > 21)) Or ((x >= 10 And x <= 21) Or (y >= 10 And y <= 21)) Then
			Local use:Int, pos:Int, neg:Int, fromx:Int, tox:Int, fromy:Int, toy:Int, flipx:Int, flipy:Int, turn90:Int, turn45:Int, invert:Int
			If x >= 10 And x <= 21 And y < 10 Then '0
				use = 0; pos = 1 ; neg = 7
				fromx = 10 ; tox = 21 ; fromy = 0 ; toy = 9
				flipx = 0 ; flipy = 0 ; turn90 = 0; turn45 = 0; invert = 0
			ElseIf x > 21 And y < 10 '1
				use = 1; pos = 2 ; neg = 0
				fromx = 22 ; tox = 31 ; fromy = 0 ; toy = 9
				For Local x:Int = 0 To 15
					If getdiff(orginalbild, fromlist[use], fromlist[pos], fromlist[neg]) = combospeicher[x, 8] Then used_combox = x
				Next
				flipx = 1 + combospeicher[used_combox, 0] ; flipy = 1 + combospeicher[used_combox, 1]
				turn90 = 1 + combospeicher[used_combox, 2] ; turn45 = 1 + combospeicher[used_combox, 3] ; invert = 0 + combospeicher[used_combox, 4]
			ElseIf x > 21 And y >= 10 And y <= 21  '2
				use = 2; pos = 3 ; neg = 1
				fromx = 22 ; tox = 31 ; fromy = 10 ; toy = 21
				flipx = 0 ; flipy = 0 ; turn90 = 1; turn45 = 0; invert = 0
			ElseIf x > 21 And y > 21 '3
				use = 3; pos = 4 ; neg = 2
				fromx = 22 ; tox = 31 ; fromy = 22 ; toy = 31
				For Local x:Int = 0 To 15
					If getdiff(orginalbild, fromlist[use], fromlist[pos], fromlist[neg]) = combospeicher[x, 8] Then used_combox = x
				Next
				'If asdasf = 1 Then Notify(getdiff(orginalbild, fromlist[use], fromlist[pos], fromlist[neg]) + " ; " + used_combox) ; asdasf = 0
				flipx = 0 + combospeicher[used_combox, 0] ; flipy = 0 + combospeicher[used_combox, 1]
				turn90 = 0 + combospeicher[used_combox, 2] ; turn45 = 1 + combospeicher[used_combox, 3] ; invert = 0 + combospeicher[used_combox, 4]
			ElseIf x >= 10 And x <= 21 And y > 21 '4
				use = 4; pos = 5 ; neg = 3
				fromx = 10 ; tox = 21 ; fromy = 22 ; toy = 31
				flipx = 1 ; flipy = 0 ; turn90 = 0; turn45 = 0; invert = 0
			ElseIf x < 10 And y > 21 '5
				use = 5; pos = 6 ; neg = 4
				fromx = 0 ; tox = 9 ; fromy = 22 ; toy = 31
				For Local x:Int = 0 To 15
					If getdiff(orginalbild, fromlist[use], fromlist[pos], fromlist[neg]) = combospeicher[x, 8] Then used_combox = x
				Next
				flipx = 0 + combospeicher[used_combox, 0] ; flipy = 0 + combospeicher[used_combox, 1]
				turn90 = 1 + combospeicher[used_combox, 2] ; turn45 = 1 + combospeicher[used_combox, 3] ; invert = 0 + combospeicher[used_combox, 4]
			ElseIf x < 10 And y >= 10 And y <= 21
				use = 6; pos = 7 ; neg = 5 '6
				fromx = 0 ; tox = 9 ; fromy = 10 ; toy = 21
				flipx = 0 ; flipy = 1 ; turn90 = 1; turn45 = 0; invert = 0
			ElseIf x < 10 And y < 10 '7
				use = 7; pos = 0 ; neg = 6
				fromx = 0 ; tox = 9 ; fromy = 0 ; toy = 9
				For Local x:Int = 0 To 15
					If getdiff(orginalbild, fromlist[use], fromlist[pos], fromlist[neg]) = combospeicher[x, 8] Then used_combox = x
				Next
				flipx = 1 + combospeicher[used_combox, 0] ; flipy = 1 + combospeicher[used_combox, 1]
				turn90 = 0 + combospeicher[used_combox, 2] ; turn45 = 1 + combospeicher[used_combox, 3] ; invert = 0 + combospeicher[used_combox, 4]
			End If
			If used_combox = -1 Then
				drawPixel(tobild, fromlist, use, pos, neg, x, y, fromx, tox, fromy, toy, 10, 31, flipx, flipy, turn90, turn45, invert)
			Else
				drawPixel(tobild, fromlist, use, pos, neg, x, y, fromx, tox, fromy, toy, 10, 31, flipx, flipy, turn90, turn45, invert, combospeicher[used_combox, 5], 1 - combospeicher[used_combox, 6], 1 - combospeicher[used_combox, 7])
			EndIf
		EndIf
		'drawPixel(testpic, texmapstrip, 3, 4, 2, x, y, 0, 31, 0, 31, 31, 31, 0, 0, 0, 1)
	Next
Next

End Function

Function drawPixel(tobild:TPixmap Var, frombild:TPixmap[] Var, nrUSE:Int, nrPOS:Int, nrNEG:Int, x:Int, y:Int, fromx:Int, tox:Int, fromy:Int, toy:Int, amay:Float, pixel:Int, flipX:Int = 0, flipY:Int = 0, turn90:Int = 0, turn45:Int = 0, invert:Int = 0, usetexuse:Int = 0, usetexA:Int = 1, usetexB:Int = 1)
	Local red_x:Int, red_y:Int
	
	If x < fromx Or x > tox Then Return
	If y < fromy Or y > toy Then Return
	
	amay = (toy - fromy)
	Local texACT:Int = 0
	Local x6:Int = (x - fromx), y6:Int = (y - fromy), texAx:Int = (x - fromx), texAy:Int = (y - fromy), texBx:Int = (x - fromx), texBy:Int = (y - fromy)
	If Flipx = 1 Then
		y6 = (toy - fromy) - y6
		texAy = (toy - fromy) - texAy
		texBy = (toy - fromy) - texBy
	EndIf
	If Flipy = 1 Then
		x6 = (tox - fromx) - x6
		texAx = (tox - fromx) - texAx
		texBx = (tox - fromx) - texBx
	EndIf
	
	If turn90 = 1 Then
		Local tmp:Int = x6
		x6 = y6
		y6 = (tox - fromx) - tmp
		amay = tox - fromx
		
		Local tmpA:Int = texAx
		Local tmpB:Int = texBx
		texAx = texAy
		texBx = texBy
		texAy = (toy - fromy) - tmpA
		texBy = (toy - fromy) - tmpB
	EndIf
	
	If turn45 = 1 Then
		If y6 < x6 Then
			Local tmp:Int = x6
			x6 = y6
			y6 = (tox - fromx) - tmp
		Else
			Local tmp:Int = y6
			x6 = y6
			y6 = (toy - fromy) - tmp
		EndIf
		texAx = (tox - fromx) - texAx
		texAy = (toy - fromy) - texAy
		
		Local tmpB:Int = texBx
		texBx = texBy
		texBy = (toy - fromy) - tmpB
		texACT = 1
	End If
	
	If invert = 1 Then
		If (tox - fromx) = (toy - fromy) Then
			x6 = (tox - fromx) - x6
			y6 = (toy - fromy) - y6
			texAx = (tox - fromx) - texAx
			texBx = (tox - fromx) - texBx
			texAy = (toy - fromy) - texAy
			texBy = (toy - fromy) - texBy
		EndIf
	End If
	rem
	If x6 >= 0 And y6 >= 0 Then
		
	Else
		Notify("x:" + x + " y:" + y + " | x6:" + x6 + " y6:" + y6 + " amay:" + amay + " pixel:" + pixel + " flipx:" + flipX + " flipy:" + flipY + " turn90:" + turn90 + " turn45:" + turn45 + " invert:" + invert) ;End
	End If
	
	Local tcolorm:Int, ta:Int, tr:Int, tg:Int, tb:Int
	tcolorm = tobild.ReadPixel(x6, y6)
	ta = (tcolorm Shr 24)
	tr = ((tcolorm Shr 16) & $ff)
	tg = ((tcolorm Shr 8) & $ff)
	tb = ((tcolorm & $ff) + 255) / 2
	
	
	
	Local nextcolor:Int
	Local bytes2:Byte Ptr = Varptr nextcolor
	bytes2[0] = Int(tb)
	bytes2[1] = Int(tg)
	bytes2[2] = Int(tr)
	bytes2[3] = Int(ta)
	
	WritePixel(tobild, x6, y6, nextcolor)
	endrem

	Local tcolorm:Int
	If red_x > 0 Then
		If red_Y > 0 Then
			tcolorm = getAllColors(tobild, frombild, nrUSE, nrPOS, nrNEG, red_X - x, red_y - y, x6, y6, texACT, usetexuse, usetexA, usetexB, texAx, texBx, amay, pixel)
			WritePixel(tobild, red_X - x, red_y - y, tcolorm)
		Else
			tcolorm = getAllColors(tobild, frombild, nrUSE, nrPOS, nrNEG, red_X - x, y, x6, y6, texACT, texAx, usetexuse, usetexA, usetexB, texBx, amay, pixel)
			WritePixel(tobild, red_X - x, y, tcolorm)
		End If
	Else
		If red_Y > 0 Then
			tcolorm = getAllColors(tobild, frombild, nrUSE, nrPOS, nrNEG, x, red_y - y, x6, y6, texACT, usetexuse, usetexA, usetexB, texAx, texBx, amay, pixel)
			WritePixel(tobild, x, red_y - y, tcolorm)
		Else
			tcolorm = getAllColors(tobild, frombild, nrUSE, nrPOS, nrNEG, x, y, x6, y6, texACT, usetexuse, usetexA, usetexB, texAx, texBx, amay, pixel)
			WritePixel(tobild, x, y, tcolorm)
		End If
	End If
	
End Function

Function getAllColors:Int(tobild:TPixmap Var, frombild:TPixmap[] Var, nrUSE:Int, nrPOS:Int, nrNEG:Int, x:Int, y:Int, posx:Int, posy:Int, texACT:Int, usetexuse:Int, usetexA:Int, usetexB:Int, texA:Int, texB:Int, factor:Int, pixel:Int)
	Local ret:Int
	
	setfeedColor(posx, posy, texA, texB, texACT, factor, pixel)
	
	feedColor(tobild.ReadPixel(x, y))
	
	If frombild[nrUSE] <> Null Then
		If usetexuse = 0 Then
			feedColor(frombild[nrUSE].ReadPixel(x, y))
		ElseIf usetexuse = 1
			feedColor(tobild.ReadPixel(x, y))
		ElseIf usetexuse = 2
			If frombild[nrNEG] <> Null Then feedColor(frombild[nrNEG].ReadPixel(x, y))
		ElseIf usetexuse = 3
			If frombild[nrPOS] <> Null Then feedColor(frombild[nrPOS].ReadPixel(x, y))
		EndIf
	EndIf
	
	If frombild[nrNEG] <> Null And usetexA = 1 Then feedColor(frombild[nrNEG].ReadPixel(x, y))
	If frombild[nrPOS] <> Null And usetexB = 1 Then feedColor(frombild[nrPOS].ReadPixel(x, y)) 
				
	ret = pokefeedColor()
	
	Return ret
End Function

' COLOR FEEEEEEEEEEDDDDD!!!!
Function setfeedColor(pos_x:Int, pos_y:Int, texA:Int, texB:Int, texACT:Int, facor:Float, pixel:Int)
	feedfactor = facor
	feedpixel = pixel
	feedposx = pos_x
	feedposy = pos_y
	feedtexA = texA
	feedtexB = texB
	feedtexACT = texACT
End Function

Function feedColor(value:Int)
	feedcount = feedcount + 1
	If feedcount = 5 Then Notify("to mutch colors") ;End
	feeddata[feedcount] = value
End Function

Function pokefeedColor:Int()
	Local ret:Int, workedtex:Int
	Local splitColor:Float[5, 4]
	
	
	If feedcount >= 0 Then
		
		splitColor[0, 0] = (feeddata[0] Shr 24)
		splitColor[0, 1] = ((feeddata[0] Shr 16) & $ff)
		splitColor[0, 2] = ((feeddata[0] Shr 8) & $ff)
		splitColor[0, 3] = (feeddata[0] & $ff)						
		splitColor[0, 0] = (splitColor[0, 0] * ((feedposy + feedfactor) / (feedfactor * 2)))
		splitColor[0, 1] = (splitColor[0, 1] * ((feedposy + feedfactor) / (feedfactor * 2)))
		splitColor[0, 2] = (splitColor[0, 2] * ((feedposy + feedfactor) / (feedfactor * 2)))
		splitColor[0, 3] = (splitColor[0, 3] * ((feedposy + feedfactor) / (feedfactor * 2)))
		workedtex = workedtex + 1
		
		If feedcount >= 1 Then
			If feedtexACT = 0 Then
				splitColor[1, 0] = (feeddata[1] Shr 24)
				splitColor[1, 1] = ((feeddata[1] Shr 16) & $ff)
				splitColor[1, 2] = ((feeddata[1] Shr 8) & $ff)
				splitColor[1, 3] = (feeddata[1] & $ff)
				splitColor[1, 0] = (splitColor[1, 0] * ((- feedposy + feedfactor) / (feedfactor * 2)))
				splitColor[1, 1] = (splitColor[1, 1] * ((- feedposy + feedfactor) / (feedfactor * 2)))
				splitColor[1, 2] = (splitColor[1, 2] * ((- feedposy + feedfactor) / (feedfactor * 2)))
				splitColor[1, 3] = (splitColor[1, 3] * ((- feedposy + feedfactor) / (feedfactor * 2)))
			Else
				splitColor[1, 0] = (feeddata[1] Shr 24)
				splitColor[1, 1] = ((feeddata[1] Shr 16) & $ff)
				splitColor[1, 2] = ((feeddata[1] Shr 8) & $ff)
				splitColor[1, 3] = (feeddata[1] & $ff)
			EndIf
			workedtex = workedtex + 1
		EndIf
		rem
		endrem
		
		If feedcount >= 2 And feedtexACT = 1 Then
			splitColor[2, 0] = (feeddata[2] Shr 24)
			splitColor[2, 1] = ((feeddata[2] Shr 16) & $ff)
			splitColor[2, 2] = ((feeddata[2] Shr 8) & $ff)
			splitColor[2, 3] = (feeddata[2] & $ff)
			splitColor[1, 0] = (splitColor[1, 0] * ((feedtexA + feedfactor) / (feedfactor * 2))) + (splitColor[2, 0] * ((- feedtexA + (feedfactor)) / (feedfactor * 2)))
			splitColor[1, 1] = (splitColor[1, 1] * ((feedtexA + feedfactor) / (feedfactor * 2))) + (splitColor[2, 1] * ((- feedtexA + (feedfactor)) / (feedfactor * 2)))
			splitColor[1, 2] = (splitColor[1, 2] * ((feedtexA + feedfactor) / (feedfactor * 2))) + (splitColor[2, 2] * ((- feedtexA + (feedfactor)) / (feedfactor * 2)))
			splitColor[1, 3] = (splitColor[1, 3] * ((feedtexA + feedfactor) / (feedfactor * 2))) + (splitColor[2, 3] * ((- feedtexA + (feedfactor)) / (feedfactor * 2)))
			workedtex = workedtex + 1
		End If
		rem
		endrem
		
		If feedcount = 3 And feedtexACT = 1 Then
			splitColor[3, 0] = (feeddata[3] Shr 24)
			splitColor[3, 1] = ((feeddata[3] Shr 16) & $ff)
			splitColor[3, 2] = ((feeddata[3] Shr 8) & $ff)
			splitColor[3, 3] = (feeddata[3] & $ff)
			splitColor[1, 0] = (splitColor[1, 0] * ((- feedtexB + (feedfactor * 2)) / (feedfactor * 2))) + (splitColor[3, 0] * ((feedtexB) / (feedfactor * 2)))
			splitColor[1, 1] = (splitColor[1, 1] * ((- feedtexB + (feedfactor * 2)) / (feedfactor * 2))) + (splitColor[3, 1] * ((feedtexB) / (feedfactor * 2)))
			splitColor[1, 2] = (splitColor[1, 2] * ((- feedtexB + (feedfactor * 2)) / (feedfactor * 2))) + (splitColor[3, 2] * ((feedtexB) / (feedfactor * 2)))
			splitColor[1, 3] = (splitColor[1, 3] * ((- feedtexB + (feedfactor * 2)) / (feedfactor * 2))) + (splitColor[3, 3] * ((feedtexB) / (feedfactor * 2)))
			workedtex = workedtex + 1
		End If
		rem
		endrem
		If feedcount >= 1 Then
			If feedtexACT = 0 Then
				splitColor[0, 0] = splitColor[0, 0] + splitColor[1, 0]
				splitColor[0, 1] = splitColor[0, 1] + splitColor[1, 1]
				splitColor[0, 2] = splitColor[0, 2] + splitColor[1, 2]
				splitColor[0, 3] = splitColor[0, 3] + splitColor[1, 3]
			Else
				splitColor[0, 0] = splitColor[0, 0] + (splitColor[1, 0] * ((- feedposy + feedfactor) / (feedfactor * 2)))
				splitColor[0, 1] = splitColor[0, 1] + (splitColor[1, 1] * ((- feedposy + feedfactor) / (feedfactor * 2)))
				splitColor[0, 2] = splitColor[0, 2] + (splitColor[1, 2] * ((- feedposy + feedfactor) / (feedfactor * 2)))
				splitColor[0, 3] = splitColor[0, 3] + (splitColor[1, 3] * ((- feedposy + feedfactor) / (feedfactor * 2)))
			EndIf
		EndIf
		
		Local nextcolor:Int
		Local bytes2:Byte Ptr = Varptr nextcolor
		bytes2[0] = Int(splitColor[0, 3])
		bytes2[1] = Int(splitColor[0, 2])
		bytes2[2] = Int(splitColor[0, 1])
		bytes2[3] = Int(splitColor[0, 0])
		
		ret = nextcolor
	EndIf
	
	feedcount = -1
	Return ret
End Function











