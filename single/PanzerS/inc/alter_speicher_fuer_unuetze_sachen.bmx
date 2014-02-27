
Global nTwaypoint:Twaypoint
Global startTwaypoint:Twaypoint, endTwaypoint:Twaypoint

Global wax:Float = 5145, way:Float = 1190, raster:Float = 1000

Local n2Twaypoint:Twaypoint = New Twaypoint
waypointlist.AddLast(n2Twaypoint)
n2Twaypoint.x = wax
n2Twaypoint.y = way
startTwaypoint = n2Twaypoint
way = way + 100

nTwaypoint = New Twaypoint
waypointlist.AddLast(nTwaypoint)
nTwaypoint.x = wax
nTwaypoint.y = way
n2Twaypoint.otherlist.AddLast(nTwaypoint)
nTwaypoint.otherlist.AddLast(n2Twaypoint)

For Local anz:Int = -3 To 3
	nTwaypoint = New Twaypoint
	waypointlist.AddLast(nTwaypoint)
	nTwaypoint.x = wax + (anz * raster)
	nTwaypoint.y = way + (raster * 1)
	For Local gTwaypoint:Twaypoint = EachIn waypointlist
		If gTwaypoint.y = way And (wax + ((anz - 1) * raster) Or wax + ((anz + 1) * raster)) Then
			If Sqr((nTwaypoint.x - gTwaypoint.x) ^ 2 + (nTwaypoint.y - gTwaypoint.y) ^ 2) < raster * 2 Then
				gTwaypoint.otherlist.AddLast(nTwaypoint)
				nTwaypoint.otherlist.AddLast(gTwaypoint)
			EndIf
		EndIf
		If gTwaypoint.y = way + (raster * 1) And gTwaypoint.x = wax + ((anz - 1) * raster) Then
			gTwaypoint.otherlist.AddLast(nTwaypoint)
			nTwaypoint.otherlist.AddLast(gTwaypoint)
		EndIf
	Next
Next

For Local anz:Int = -4 To 4
	nTwaypoint = New Twaypoint
	waypointlist.AddLast(nTwaypoint)
	nTwaypoint.x = wax + (anz * raster)
	nTwaypoint.y = way + (raster * 2)
	For Local gTwaypoint:Twaypoint = EachIn waypointlist
		If gTwaypoint.y = way + (raster * 1) And (wax + ((anz - 1) * raster) Or wax + ((anz + 1) * raster)) Then
			If Sqr((nTwaypoint.x - gTwaypoint.x) ^ 2 + (nTwaypoint.y - gTwaypoint.y) ^ 2) < raster * 2 Then
				gTwaypoint.otherlist.AddLast(nTwaypoint)
				nTwaypoint.otherlist.AddLast(gTwaypoint)
			EndIf
		EndIf
		If gTwaypoint.y = way + (raster * 2) And gTwaypoint.x = wax + ((anz - 1) * raster) Then
			gTwaypoint.otherlist.AddLast(nTwaypoint)
			nTwaypoint.otherlist.AddLast(gTwaypoint)
		EndIf
	Next
Next

For Local anz:Int = -3To 3
	nTwaypoint = New Twaypoint
	waypointlist.AddLast(nTwaypoint)
	nTwaypoint.x = wax + (anz * raster)
	nTwaypoint.y = way + (raster * 3)
	For Local gTwaypoint:Twaypoint = EachIn waypointlist
		If gTwaypoint.y = way + (raster * 2) And (wax + ((anz - 1) * raster) Or wax + ((anz + 1) * raster)) Then
			If Sqr((nTwaypoint.x - gTwaypoint.x) ^ 2 + (nTwaypoint.y - gTwaypoint.y) ^ 2) < raster * 2 Then
				gTwaypoint.otherlist.AddLast(nTwaypoint)
				nTwaypoint.otherlist.AddLast(gTwaypoint)
			EndIf
		EndIf
		If gTwaypoint.y = way + (raster * 3) And gTwaypoint.x = wax + ((anz - 1) * raster) Then
			gTwaypoint.otherlist.AddLast(nTwaypoint)
			nTwaypoint.otherlist.AddLast(gTwaypoint)
		EndIf
	Next
Next

For Local anz:Int = -4 To 4
	nTwaypoint = New Twaypoint
	waypointlist.AddLast(nTwaypoint)
	nTwaypoint.x = wax + (anz * raster)
	nTwaypoint.y = way + (raster * 4)
	For Local gTwaypoint:Twaypoint = EachIn waypointlist
		If gTwaypoint.y = way + (raster * 3) And (wax + ((anz - 1) * raster) Or wax + ((anz + 1) * raster)) Then
			If Sqr((nTwaypoint.x - gTwaypoint.x) ^ 2 + (nTwaypoint.y - gTwaypoint.y) ^ 2) < raster * 2 Then
				gTwaypoint.otherlist.AddLast(nTwaypoint)
				nTwaypoint.otherlist.AddLast(gTwaypoint)
			EndIf
		EndIf
		If gTwaypoint.y = way + (raster * 4) And gTwaypoint.x = wax + ((anz - 1) * raster) Then
			gTwaypoint.otherlist.AddLast(nTwaypoint)
			nTwaypoint.otherlist.AddLast(gTwaypoint)
		EndIf
	Next
Next

For Local anz:Int = -3 To 3
	nTwaypoint = New Twaypoint
	waypointlist.AddLast(nTwaypoint)
	nTwaypoint.x = wax + (anz * raster)
	nTwaypoint.y = way + (raster * 5)
	For Local gTwaypoint:Twaypoint = EachIn waypointlist
		If gTwaypoint.y = way + (raster * 4) And (wax + ((anz - 1) * raster) Or wax + ((anz + 1) * raster)) Then
			If Sqr((nTwaypoint.x - gTwaypoint.x) ^ 2 + (nTwaypoint.y - gTwaypoint.y) ^ 2) < raster * 2 Then
				gTwaypoint.otherlist.AddLast(nTwaypoint)
				nTwaypoint.otherlist.AddLast(gTwaypoint)
			EndIf
		EndIf
		If gTwaypoint.y = way + (raster * 5) And gTwaypoint.x = wax + ((anz - 1) * raster) Then
			gTwaypoint.otherlist.AddLast(nTwaypoint)
			nTwaypoint.otherlist.AddLast(gTwaypoint)
		EndIf
	Next
Next

nTwaypoint = New Twaypoint
waypointlist.AddLast(nTwaypoint)
nTwaypoint.x = wax
nTwaypoint.y = way + (raster * 6)
endTwaypoint = nTwaypoint
For Local gTwaypoint:Twaypoint = EachIn waypointlist
	If gTwaypoint.y = way + (raster * 5) Then
		If Sqr((nTwaypoint.x - gTwaypoint.x) ^ 2 + (nTwaypoint.y - gTwaypoint.y) ^ 2) < raster * 2 Then
			gTwaypoint.otherlist.AddLast(nTwaypoint)
			nTwaypoint.otherlist.AddLast(gTwaypoint)
		EndIf
	EndIf
Next

For Local cTwaypoint:Twaypoint = EachIn waypointlist
	For Local x:Int = -2 To 2
		For Local y:Int = -2 To 2
			map[(x + (cTwaypoint.x + 16) / 32), y + ((cTwaypoint.y + 16) / 32)] = 1
		Next
	Next
	
	For cTwaypoint.otherWP = EachIn cTwaypoint.otherlist
		Local entf234:Float = Sqr((cTwaypoint.x - cTwaypoint.otherWP.x) ^ 2 + (cTwaypoint.y - cTwaypoint.otherWP.y) ^ 2) / 80
		Local winkel234:Float = -ATan2(cTwaypoint.x - cTwaypoint.otherWP.x, cTwaypoint.y - cTwaypoint.otherWP.y) + 270
	
		'DrawRect(cTwaypoint.x - gVx + Cos(winkel234) * (entf234 / 2), cTwaypoint.y - gVy + Sin(winkel234) * (entf234 / 2), 5, entf234)
		Local entf235:Float
		For Local anz:Int = 0 To 39
			entf235 = entf235 + entf234
			Local x:Int, y:Float
			'For Local x:Int = -1 To 1
				'For Local y:Int = -1 To 1
					map[x + (((cTwaypoint.x + 16) + Cos(winkel234) * (entf235)) / 32), y + (((cTwaypoint.y + 16) + Sin(winkel234) * (entf235)) / 32)] = 1
				'Next
			'Next
		Next
	Next
Next

rem
For Local wp:Int = 0 To 10
	Local nTwaypoint:Twaypoint = New Twaypoint
	waypointlist.AddLast(nTwaypoint)
	nTwaypoint.x = Rnd(- 200, 1200)
	nTwaypoint.y = Rnd(- 200, 1200)
Next

For Local cTwaypoint:Twaypoint = EachIn waypointlist
	For Local iTwaypoint:Twaypoint = EachIn waypointlist
		If Rnd(- 100, 500) < 0 Then
			If cTwaypoint.otherlist.FindLink(iTwaypoint) = Null Then
				cTwaypoint.otherlist.AddLast(iTwaypoint)
				iTwaypoint.otherlist.AddLast(cTwaypoint)
			EndIf
		EndIf
	Next
Next
end rem







rem
##############################################################################################################
##############################################################################################################
##############################################################################################################
##############################################################################################################
##############################################################################################################
##############################################################################################################
##############################################################################################################
##############################################################################################################
##############################################################################################################
##############################################################################################################
end rem


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
			splitColor[1, 0] = (feeddata[1] Shr 24)
			splitColor[1, 1] = ((feeddata[1] Shr 16) & $ff)
			splitColor[1, 2] = ((feeddata[1] Shr 8) & $ff)
			splitColor[1, 3] = (feeddata[1] & $ff)
			splitColor[4, 0] = splitColor[4, 0] + (splitColor[1, 0] * ((- feedposy + feedfactor) / (feedfactor * 2)))
			splitColor[4, 1] = splitColor[4, 1] + (splitColor[1, 1] * ((- feedposy + feedfactor) / (feedfactor * 2)))
			splitColor[4, 2] = splitColor[4, 2] + (splitColor[1, 2] * ((- feedposy + feedfactor) / (feedfactor * 2)))
			splitColor[4, 3] = splitColor[4, 3] + (splitColor[1, 3] * ((- feedposy + feedfactor) / (feedfactor * 2)))
			workedtex = workedtex + 1
		EndIf
		rem
		endrem
		
		If feedcount >= 2 And feedtexACT = 1 Then
			splitColor[2, 0] = (feeddata[2] Shr 24)
			splitColor[2, 1] = ((feeddata[2] Shr 16) & $ff)
			splitColor[2, 2] = ((feeddata[2] Shr 8) & $ff)
			splitColor[2, 3] = (feeddata[2] & $ff)
			splitColor[4, 0] = splitColor[4, 0] + (splitColor[2, 0] * ((- feedtexA + feedfactor) / (feedfactor * 2)))
			splitColor[4, 1] = splitColor[4, 1] + (splitColor[2, 1] * ((- feedtexA + feedfactor) / (feedfactor * 2)))
			splitColor[4, 2] = splitColor[4, 2] + (splitColor[2, 2] * ((- feedtexA + feedfactor) / (feedfactor * 2)))
			splitColor[4, 3] = splitColor[4, 3] + (splitColor[2, 3] * ((- feedtexA + feedfactor) / (feedfactor * 2)))
			workedtex = workedtex + 1
		End If
		rem
		endrem
		
		If feedcount = 3 And feedtexACT = 1 Then
			splitColor[3, 0] = (feeddata[3] Shr 24)
			splitColor[3, 1] = ((feeddata[3] Shr 16) & $ff)
			splitColor[3, 2] = ((feeddata[3] Shr 8) & $ff)
			splitColor[3, 3] = (feeddata[3] & $ff)
			splitColor[4, 0] = splitColor[4, 0] + (splitColor[3, 0] * ((feedtexB) / (feedfactor * 2)))
			splitColor[4, 1] = splitColor[4, 1] + (splitColor[3, 1] * ((feedtexB) / (feedfactor * 2)))
			splitColor[4, 2] = splitColor[4, 2] + (splitColor[3, 2] * ((feedtexB) / (feedfactor * 2)))
			splitColor[4, 3] = splitColor[4, 3] + (splitColor[3, 3] * ((feedtexB) / (feedfactor * 2)))
			workedtex = workedtex + 1
		End If
		rem
		endrem
		If feedcount >= 1 Then
			splitColor[0, 0] = splitColor[0, 0] + (splitColor[4, 0] / workedtex)
			splitColor[0, 1] = splitColor[0, 1] + (splitColor[4, 1] / workedtex)
			splitColor[0, 2] = splitColor[0, 2] + (splitColor[4, 2] / workedtex)
			splitColor[0, 3] = splitColor[0, 3] + (splitColor[4, 3] / workedtex)
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




rem
##############################################################################################################
##############################################################################################################
##############################################################################################################
##############################################################################################################
##############################################################################################################
##############################################################################################################
##############################################################################################################
##############################################################################################################
##############################################################################################################
##############################################################################################################
end rem

rem
				For Local rx:Int = 0 To 2
					For Local ry:Int = 0 To 2
					
						
						
						If rx = 1 And ry = 1 Then
							
						Else
							If renderdat[rx, ry] = Null Then Continue
							If renderdat[rx, ry] = emap[x, y, l] Then Continue
							
							
							
							Select rx
								Case 0
									Select ry
										Case 0 'untenlinks
											rendersub(bild, renderdat[rx, ry].pic, 5, 4)
										Case 1 'mittelinks
											rendersub(bild, renderdat[rx, ry].pic, 6, 0)
											rendersub(bild, renderdat[rx, ry].pic, 5, 0)
											rendersub(bild, renderdat[rx, ry].pic, 7, 0)
										Case 2 'obenlinks
											rendersub(bild, renderdat[rx, ry].pic, 7, 4)
									End Select
								Case 1
									Select ry
										Case 0 'untenmitte
											rendersub(bild, renderdat[rx, ry].pic, 4, 0)
										Case 1 'mittemitte
										'nothin
										Case 2 'obenmitte
											rendersub(bild, renderdat[rx, ry].pic, 0, 0)
									End Select
								Case 2
									Select ry
										Case 0 'untenrechts
											rendersub(bild, renderdat[rx, ry].pic, 3, 4)
										Case 1 'mitterechts
											rendersub(bild, renderdat[rx, ry].pic, 2, 0)
										Case 2 'obenrechts
											rendersub(bild, renderdat[rx, ry].pic, 1, 4)
									End Select
							End Select

							Select rx
								Case 0
									Select ry
										Case 0 'untenlinks
											If renderdat[rx + 1, ry] = renderdat[rx, ry] And renderdat[rx, ry + 1] = renderdat[rx, ry] Then
												'beide nachbarn sind gleich
												rendersub(bild, renderdat[rx, ry].pic, 5, 5)
											EndIf
											If renderdat[rx + 1, ry] = renderdat[rx, ry] And renderdat[rx, ry + 1] <> renderdat[rx, ry] Then
												'einer ist anderst
												rendersub(bild, renderdat[rx, ry].pic, 5, 0)
											EndIf
											If renderdat[rx + 1, ry] <> renderdat[rx, ry] And renderdat[rx, ry + 1] = renderdat[rx, ry] Then
												'einer ist anderst
												rendersub(bild, renderdat[rx, ry].pic, 5, - 1)
											EndIf
											If renderdat[rx + 1, ry] <> renderdat[rx, ry] And renderdat[rx, ry + 1] <> renderdat[rx, ry] Then
												'keiner trifft zu
												rendersub(bild, renderdat[rx, ry].pic, 5, 4)
											EndIf
										Case 1 'mittelinks
											If renderdat[rx, ry - 1] = renderdat[rx, ry] And renderdat[rx, ry + 1] = renderdat[rx, ry] Then
												'beide nachbarn sind gleich
												rendersub(bild, renderdat[rx, ry].pic, 6, 0)
											EndIf
											If renderdat[rx, ry - 1] = renderdat[rx, ry] And renderdat[rx, ry + 1] <> renderdat[rx, ry] Then
												'einer ist anderst
												rendersub(bild, renderdat[rx, ry].pic, 6, 2)
											EndIf
											If renderdat[rx, ry - 1] <> renderdat[rx, ry] And renderdat[rx, ry + 1] = renderdat[rx, ry] Then
												'einer ist anderst
												rendersub(bild, renderdat[rx, ry].pic, 6, 3)
											EndIf
											If renderdat[rx, ry - 1] <> renderdat[rx, ry] And renderdat[rx, ry + 1] <> renderdat[rx, ry] Then
												'keiner trifft zu
												rendersub(bild, renderdat[rx, ry].pic, 6, 0)
											EndIf
										Case 2 'obenlinks
											If renderdat[rx, ry - 1] = renderdat[rx, ry] And renderdat[rx + 1, ry] = renderdat[rx, ry] Then
												'beide nachbarn sind gleich
												rendersub(bild, renderdat[rx, ry].pic, 7, 5)
											EndIf
											If renderdat[rx, ry - 1] = renderdat[rx, ry] And renderdat[rx + 1, ry] <> renderdat[rx, ry] Then
												'einer ist anderst
												rendersub(bild, renderdat[rx, ry].pic, 7, 0)
											EndIf
											If renderdat[rx, ry - 1] <> renderdat[rx, ry] And renderdat[rx + 1, ry] = renderdat[rx, ry] Then
												'einer ist anderst
												rendersub(bild, renderdat[rx, ry].pic, 7, - 1)
											EndIf
											If renderdat[rx, ry - 1] <> renderdat[rx, ry] And renderdat[rx + 1, ry] <> renderdat[rx, ry] Then
												'keiner trifft zu
												rendersub(bild, renderdat[rx, ry].pic, 7, 4)
											EndIf
									End Select
								Case 1
									Select ry
										Case 0 'untenmitte
											If renderdat[rx - 1, ry] = renderdat[rx, ry] And renderdat[rx + 1, ry] = renderdat[rx, ry] Then
												'beide nachbarn sind gleich
												rendersub(bild, renderdat[rx, ry].pic, 4, 0)
											EndIf
											If renderdat[rx - 1, ry] = renderdat[rx, ry] And renderdat[rx + 1, ry] <> renderdat[rx, ry] Then
												'einer ist anderst
												rendersub(bild, renderdat[rx, ry].pic, 4, 2)
											EndIf
											If renderdat[rx - 1, ry] <> renderdat[rx, ry] And renderdat[rx + 1, ry] = renderdat[rx, ry] Then
												'einer ist anderst
												rendersub(bild, renderdat[rx, ry].pic, 4, 3)
											EndIf
											If renderdat[rx - 1, ry] <> renderdat[rx, ry] And renderdat[rx + 1, ry] <> renderdat[rx, ry] Then
												'keiner trifft zu
												rendersub(bild, renderdat[rx, ry].pic, 4, 0)
											EndIf
										Case 1 'mittemitte
										'nothin
										Case 2 'obenmitte
											If renderdat[rx - 1, ry] = renderdat[rx, ry] And renderdat[rx + 1, ry] = renderdat[rx, ry] Then
												'beide nachbarn sind gleich
												rendersub(bild, renderdat[rx, ry].pic, 0, 0)
											EndIf
											If renderdat[rx - 1, ry] = renderdat[rx, ry] And renderdat[rx + 1, ry] <> renderdat[rx, ry] Then
												'einer ist anderst
												rendersub(bild, renderdat[rx, ry].pic, 0, 2)
											EndIf
											If renderdat[rx - 1, ry] <> renderdat[rx, ry] And renderdat[rx + 1, ry] = renderdat[rx, ry] Then
												'einer ist anderst
												rendersub(bild, renderdat[rx, ry].pic, 0, 3)
											EndIf
											If renderdat[rx - 1, ry] <> renderdat[rx, ry] And renderdat[rx + 1, ry] <> renderdat[rx, ry] Then
												'keiner trifft zu
												rendersub(bild, renderdat[rx, ry].pic, 0, 0)
											EndIf
									End Select
								Case 2
									Select ry
										Case 0 'untenrechts
											If renderdat[rx, ry + 1] = renderdat[rx, ry] And renderdat[rx - 1, ry] = renderdat[rx, ry] Then
												'beide nachbarn sind gleich
												rendersub(bild, renderdat[rx, ry].pic, 3, 5)
											EndIf
											If renderdat[rx, ry + 1] = renderdat[rx, ry] And renderdat[rx - 1, ry] <> renderdat[rx, ry] Then
												'einer ist anderst
												rendersub(bild, renderdat[rx, ry].pic, 3, 0)
											EndIf
											If renderdat[rx, ry + 1] <> renderdat[rx, ry] And renderdat[rx - 1, ry] = renderdat[rx, ry] Then
												'einer ist anderst
												rendersub(bild, renderdat[rx, ry].pic, 3, - 1)
											EndIf
											If renderdat[rx, ry + 1] <> renderdat[rx, ry] And renderdat[rx - 1, ry] <> renderdat[rx, ry] Then
												'keiner trifft zu
												rendersub(bild, renderdat[rx, ry].pic, 3, 4)
											EndIf
										Case 1 'mitterechts
											If renderdat[rx, ry + 1] = renderdat[rx, ry] And renderdat[rx, ry - 1] = renderdat[rx, ry] Then
												'beide nachbarn sind gleich
												rendersub(bild, renderdat[rx, ry].pic, 2, 0)
											EndIf
											If renderdat[rx, ry + 1] = renderdat[rx, ry] And renderdat[rx, ry - 1] <> renderdat[rx, ry] Then
												'einer ist anderst
												rendersub(bild, renderdat[rx, ry].pic, 2, 2)
											EndIf
											If renderdat[rx, ry + 1] <> renderdat[rx, ry] And renderdat[rx, ry - 1] = renderdat[rx, ry] Then
												'einer ist anderst
												rendersub(bild, renderdat[rx, ry].pic, 2, 3)
											EndIf
											If renderdat[rx, ry + 1] <> renderdat[rx, ry] And renderdat[rx, ry - 1] <> renderdat[rx, ry] Then
												'keiner trifft zu
												rendersub(bild, renderdat[rx, ry].pic, 2, 0)
											EndIf
										Case 2 'obenrechts
											If renderdat[rx, ry - 1] = renderdat[rx, ry] And renderdat[rx - 1, ry] = renderdat[rx, ry] Then
												'beide nachbarn sind gleich
												rendersub(bild, renderdat[rx, ry].pic, 1, 5)
											EndIf
											If renderdat[rx, ry - 1] = renderdat[rx, ry] And renderdat[rx - 1, ry] <> renderdat[rx, ry] Then
												'einer ist anderst
												rendersub(bild, renderdat[rx, ry].pic, 1, 0)
											EndIf
											If renderdat[rx, ry - 1] <> renderdat[rx, ry] And renderdat[rx - 1, ry] = renderdat[rx, ry] Then
												'einer ist anderst
												rendersub(bild, renderdat[rx, ry].pic, 1, - 1)
											EndIf
											If renderdat[rx, ry - 1] <> renderdat[rx, ry] And renderdat[rx - 1, ry] <> renderdat[rx, ry] Then
												'keiner trifft zu
												rendersub(bild, renderdat[rx, ry].pic, 1, 4)
											EndIf
									End Select
							End Select

						
							
						
						End If
					Next
				Next
				End rem


rem
##############################################################################################################
##############################################################################################################
##############################################################################################################
##############################################################################################################
##############################################################################################################
##############################################################################################################
##############################################################################################################
##############################################################################################################
##############################################################################################################
##############################################################################################################
end rem

Import brl.Blitz
Import brl.linkedlist
Import brl.random
Import brl.Retro
Import brl.Audio
Import brl.WAVLoader
Import brl.OGGLoader
Import brl.DirectSoundAudio
Import brl.JPGLoader
Import brl.PNGLoader
Import brl.Stream
SuperStrict

Type Twaypoint
	Field x:Float, y:Float, cheacked:Int
	Field otherWP:Twaypoint
	Field dist:Float[16], chaged:Int = 1, used:Float
	Field otherlist:TList = CreateList()
End Type
Global waypointlist:TList = CreateList()
Global printlistlist:TList = CreateList()

AppTitle = "PanzerS: Testlap!"
Global fenster:TGraphics = Graphics(1024, 768)
SetBlend(ALPHABLEND)

Global nTwaypoint:Twaypoint
Global startTwaypoint:Twaypoint, endTwaypoint:Twaypoint

Global wax:Float = 512, way:Float = 50, raster:Float = 100

Local n2Twaypoint:Twaypoint = New Twaypoint
waypointlist.AddLast(n2Twaypoint)
n2Twaypoint.x = wax
n2Twaypoint.y = way
startTwaypoint = n2Twaypoint
way = way + 100

nTwaypoint = New Twaypoint
waypointlist.AddLast(nTwaypoint)
nTwaypoint.x = wax
nTwaypoint.y = way
n2Twaypoint.otherlist.AddLast(nTwaypoint)
nTwaypoint.otherlist.AddLast(n2Twaypoint)

For Local anz:Int = -3 To 3
	nTwaypoint = New Twaypoint
	waypointlist.AddLast(nTwaypoint)
	nTwaypoint.x = wax + (anz * raster)
	nTwaypoint.y = way + (raster * 1)
	For Local gTwaypoint:Twaypoint = EachIn waypointlist
		If gTwaypoint.y = way And (wax + ((anz - 1) * raster) Or wax + ((anz + 1) * raster)) Then
			If Sqr((nTwaypoint.x - gTwaypoint.x) ^ 2 + (nTwaypoint.y - gTwaypoint.y) ^ 2) < raster * 2 Then
				gTwaypoint.otherlist.AddLast(nTwaypoint)
				nTwaypoint.otherlist.AddLast(gTwaypoint)
			EndIf
		EndIf
		If gTwaypoint.y = way + (raster * 1) And gTwaypoint.x = wax + ((anz - 1) * raster) Then
			gTwaypoint.otherlist.AddLast(nTwaypoint)
			nTwaypoint.otherlist.AddLast(gTwaypoint)
		EndIf
	Next
Next

For Local anz:Int = -4 To 4
	nTwaypoint = New Twaypoint
	waypointlist.AddLast(nTwaypoint)
	nTwaypoint.x = wax + (anz * raster)
	nTwaypoint.y = way + (raster * 2)
	For Local gTwaypoint:Twaypoint = EachIn waypointlist
		If gTwaypoint.y = way + (raster * 1) And (wax + ((anz - 1) * raster) Or wax + ((anz + 1) * raster)) Then
			If Sqr((nTwaypoint.x - gTwaypoint.x) ^ 2 + (nTwaypoint.y - gTwaypoint.y) ^ 2) < raster * 2 Then
				gTwaypoint.otherlist.AddLast(nTwaypoint)
				nTwaypoint.otherlist.AddLast(gTwaypoint)
			EndIf
		EndIf
		If gTwaypoint.y = way + (raster * 2) And gTwaypoint.x = wax + ((anz - 1) * raster) Then
			gTwaypoint.otherlist.AddLast(nTwaypoint)
			nTwaypoint.otherlist.AddLast(gTwaypoint)
		EndIf
	Next
Next

For Local anz:Int = -3To 3
	nTwaypoint = New Twaypoint
	waypointlist.AddLast(nTwaypoint)
	nTwaypoint.x = wax + (anz * raster)
	nTwaypoint.y = way + (raster * 3)
	For Local gTwaypoint:Twaypoint = EachIn waypointlist
		If gTwaypoint.y = way + (raster * 2) And (wax + ((anz - 1) * raster) Or wax + ((anz + 1) * raster)) Then
			If Sqr((nTwaypoint.x - gTwaypoint.x) ^ 2 + (nTwaypoint.y - gTwaypoint.y) ^ 2) < raster * 2 Then
				gTwaypoint.otherlist.AddLast(nTwaypoint)
				nTwaypoint.otherlist.AddLast(gTwaypoint)
			EndIf
		EndIf
		If gTwaypoint.y = way + (raster * 3) And gTwaypoint.x = wax + ((anz - 1) * raster) Then
			gTwaypoint.otherlist.AddLast(nTwaypoint)
			nTwaypoint.otherlist.AddLast(gTwaypoint)
		EndIf
	Next
Next

For Local anz:Int = -4 To 4
	nTwaypoint = New Twaypoint
	waypointlist.AddLast(nTwaypoint)
	nTwaypoint.x = wax + (anz * raster)
	nTwaypoint.y = way + (raster * 4)
	For Local gTwaypoint:Twaypoint = EachIn waypointlist
		If gTwaypoint.y = way + (raster * 3) And (wax + ((anz - 1) * raster) Or wax + ((anz + 1) * raster)) Then
			If Sqr((nTwaypoint.x - gTwaypoint.x) ^ 2 + (nTwaypoint.y - gTwaypoint.y) ^ 2) < raster * 2 Then
				gTwaypoint.otherlist.AddLast(nTwaypoint)
				nTwaypoint.otherlist.AddLast(gTwaypoint)
			EndIf
		EndIf
		If gTwaypoint.y = way + (raster * 4) And gTwaypoint.x = wax + ((anz - 1) * raster) Then
			gTwaypoint.otherlist.AddLast(nTwaypoint)
			nTwaypoint.otherlist.AddLast(gTwaypoint)
		EndIf
	Next
Next

For Local anz:Int = -3 To 3
	nTwaypoint = New Twaypoint
	waypointlist.AddLast(nTwaypoint)
	nTwaypoint.x = wax + (anz * raster)
	nTwaypoint.y = way + (raster * 5)
	For Local gTwaypoint:Twaypoint = EachIn waypointlist
		If gTwaypoint.y = way + (raster * 4) And (wax + ((anz - 1) * raster) Or wax + ((anz + 1) * raster)) Then
			If Sqr((nTwaypoint.x - gTwaypoint.x) ^ 2 + (nTwaypoint.y - gTwaypoint.y) ^ 2) < raster * 2 Then
				gTwaypoint.otherlist.AddLast(nTwaypoint)
				nTwaypoint.otherlist.AddLast(gTwaypoint)
			EndIf
		EndIf
		If gTwaypoint.y = way + (raster * 5) And gTwaypoint.x = wax + ((anz - 1) * raster) Then
			gTwaypoint.otherlist.AddLast(nTwaypoint)
			nTwaypoint.otherlist.AddLast(gTwaypoint)
		EndIf
	Next
Next

nTwaypoint = New Twaypoint
waypointlist.AddLast(nTwaypoint)
nTwaypoint.x = wax
nTwaypoint.y = way + (raster * 6)
endTwaypoint = nTwaypoint
For Local gTwaypoint:Twaypoint = EachIn waypointlist
	If gTwaypoint.y = way + (raster * 5) Then
		If Sqr((nTwaypoint.x - gTwaypoint.x) ^ 2 + (nTwaypoint.y - gTwaypoint.y) ^ 2) < raster * 2 Then
			gTwaypoint.otherlist.AddLast(nTwaypoint)
			nTwaypoint.otherlist.AddLast(gTwaypoint)
		EndIf
	EndIf
Next

Global t1x:Float = 200, t1y:Float = 300, t1r:Float, t2x:Float = 600, t2y:Float = 300, t2r:Float = 180, t1way:Twaypoint = startTwaypoint
Global t1s:Float, t2s:Float

Local map:Int[100, 100], tex:Int = 75, tey:Int = 50, bex:Int = 10, bey:Int = 10

Global waycecker:Int
Include "inc\may.bmx"

Global tmr:Ttimer = CreateTimer(40)
'HideMouse()
While Not KeyHit(KEY_ESCAPE)
	tmr.Wait()
	Cls
	
	rem
	t1x = MouseX()
	t1y = MouseY()
	
	PushCollision(t2x, t2y, 30, t1x, t1y, 30, 1)
	
	SetColor(255, 200, 200)
	SetHandle(15, 15)
	'SetRotation(t1r)
	DrawOval(t1x, t1y, 30, 30)
	
	SetColor(200, 255, 200)
	SetHandle(15, 15)
	'SetRotation(t2r)
	DrawOval(t2x, t2y, 30, 30)
	
	
	
	If KeyDown(KEY_W) Then
		t1s = t1s + 0.3
		If t1s > 8 Then t1s = 8
	End If
	
	If KeyDown(KEY_S) Then
		t1s = t1s - 0.3
		If t1s < - 8 Then t1s = -8
	End If
	
	If t1s > 0 Then t1s = t1s - 0.1 Else t1s = t1s + 0.1
	If t1s < 0.15 And t1s > - 0.15 Then t1s = 0
	
	If KeyDown(KEY_D) Then
		t1r = t1r + 3
		If t1r > 360 Then t1r = t1r - 360
	End If
	
	If KeyDown(KEY_A) Then
		t1r = t1r - 3
		If t1r < 0 Then t1r = t1r + 360
	End If
	
	t1x = t1x + Cos(t1r + 90) * t1s
	t1y = t1y + Sin(t1r + 90) * t1s
	
	't2x = MouseX() ; t2y = MouseY()
	PushTank(t1x, t1y, t1r, t1s, t2x, t2y, t2r, t2s)
	
	SetAlpha(0.4)
	SetColor(255, 100, 100)
	SetHandle(15, 22)
	SetRotation(t1r)
	DrawRect(t1x, t1y, 30, 44)
	
	SetColor(100, 255, 100)
	SetHandle(15, 22)
	SetRotation(t2r)
	DrawRect(t2x, t2y, 30, 44)
	SetAlpha(1)
	end rem
	
	'test243 = test243 + 1 Mod 360
	
		SetScale(1, 1)
		SetRotation(0)
		SetAlpha(0.75)
		SetColor(0, 0, 255)
		startTwaypoint = Null
		For Local cTwaypoint:Twaypoint = EachIn waypointlist
			If MouseX() > cTwaypoint.x - 20 And MouseX() < cTwaypoint.x + 20 And MouseY() > cTwaypoint.y - 20 And MouseY() < cTwaypoint.y + 20 Then startTwaypoint = cTwaypoint ; If MouseDown(1) Then cTwaypoint.x = MouseX() ; cTwaypoint.y = MouseY() ; cTwaypoint.chaged = 1
			SetHandle(15, 15)
			SetColor(0, 0, 255)
			DrawOval(cTwaypoint.x, cTwaypoint.y, 30, 30)
			Local nr3:Int = 0
			For cTwaypoint.otherWP = EachIn cTwaypoint.otherlist
				Local entf234:Float = Sqr((cTwaypoint.x - cTwaypoint.otherWP.x) ^ 2 + (cTwaypoint.y - cTwaypoint.otherWP.y) ^ 2)
				Local winkel234:Float = -ATan2(cTwaypoint.x - cTwaypoint.otherWP.x, cTwaypoint.y - cTwaypoint.otherWP.y) + 270
				SetHandle(2.5, entf234 / 2)
				SetRotation(winkel234 - 90)
				
				If cTwaypoint.dist[nr3] = 0 Then SetColor(255, 0, 0) Else SetColor(0, 0, 255)
				nr3 = nr3 + 1
				DrawRect(cTwaypoint.x + Cos(winkel234) * (entf234 / 2), cTwaypoint.y + Sin(winkel234) * (entf234 / 2), 5, entf234)
			Next
		Next
		
	Local way:Twaypoint = Null
	If startTwaypoint <> Null Then way = waypointtodest(startTwaypoint, endTwaypoint)

	
	SetScale(1, 1)
	SetRotation(0)
	SetAlpha(0.75)
	SetColor(255, 255, 0)
	If way = Null Then
		
	Else
		Local entf234:Float = Sqr((startTwaypoint.x - way.x) ^ 2 + (startTwaypoint.y - way.y) ^ 2)
		Local winkel234:Float = -ATan2(startTwaypoint.x - way.x, startTwaypoint.y - way.y) + 270
		SetHandle(2.5, entf234 / 2)
		SetRotation(winkel234 - 90)
		DrawRect(startTwaypoint.x + Cos(winkel234) * (entf234 / 2), startTwaypoint.y + Sin(winkel234) * (entf234 / 2), 5, entf234)
		
		
		
	End If
	
	SetColor(255, 0, 0)
	Local zahler:Int = 0
	For Local printway:Twaypoint = EachIn printlistlist
		zahler = zahler + 1
		SetHandle(5, 5)
		SetRotation(0)
		DrawRect(printway.x, printway.y, 10, 10)
		DrawText(">" + zahler + "<", printway.x, printway.y - 20)
	Next
	printlistlist.Clear()
	
	If t1way <> Null And t1way <> endTwaypoint Then
		Local sadg:Float = -ATan2(t1way.x - t1x, t1way.y - t1y) + 180
		If KeyDown(KEY_SPACE) Then
			t1x = t1x + Cos(sadg - 90) * 27
			t1y = t1y + Sin(sadg - 90) * 27
			t1r = sadg
		Else
			t1x = t1x + Cos(sadg - 90) * 6
			t1y = t1y + Sin(sadg - 90) * 6
			t1r = sadg
		EndIf
		If Sqr((t1way.x - t1x) ^ 2 + (t1way.y - t1y) ^ 2) < 30 Then
			t1way = waypointtodest(t1way, endTwaypoint)
		EndIf
	Else
		t1way = endTwaypoint
		Local nrz3:Int = Rnd(0, waypointlist.Count() * 100) / 100
		For Local eTwaypoint:Twaypoint = EachIn waypointlist
			If nrz3 = 0 Then endTwaypoint = eTwaypoint
			nrz3 = nrz3 - 1
		Next
	EndIf
	
	SetAlpha(0.8)
	SetColor(0, 255, 255)
	SetHandle(10, 10)
	SetRotation(t1r)
	DrawOval(t1way.x, t1way.y, 20, 20)
	
	SetAlpha(0.8)
	SetColor(255, 0, 255)
	SetHandle(10, 10)
	SetRotation(t1r)
	DrawOval(endTwaypoint.x, endTwaypoint.y, 20, 20)
	
	SetAlpha(0.4)
	SetColor(255, 100, 100)
	SetHandle(15, 22)
	SetRotation(t1r)
	DrawRect(t1x, t1y, 30, 44)
	
	
	SetColor(255, 0, 255)
	SetHandle(5, 5)
	SetRotation(0)
	DrawRect(MouseX(), MouseY(), 10, 10)
	
	bex = 10
	bey = 10
	tex = 15
	tey = 15
	rem
	Local ergebnis:Float = maptodest:Float(bex, bey, tex, tey, map, 19, 19)
	
	If ergebnis = -1 Then tex = Rnd(1, 98) ; tey = Rnd(1, 98)
	If ergebnis = 0 Then bey = bey - 1
	If ergebnis = 45 Then bex = bex - 1 ; bey = bey - 1
	If ergebnis = 90 Then bex = bex - 1
	If ergebnis = 135 Then bex = bex - 1 ; bey = bey + 1
	If ergebnis = 180 Then bey = bey + 1
	If ergebnis = 225 Then bex = bex + 1 ; bey = bey + 1
	If ergebnis = 270 Then bex = bex + 1
	If ergebnis = 315 Then bex = bex + 1 ; bey = bey - 1
	endrem
	SetAlpha(1)
	SetHandle(0, 0)
	SetRotation(0)
	
	SetColor(100, 100, 100)
	DrawRect(23, 23, 403, 403)
	
	For Local x:Int = 0 To 19
		For Local y:Int = 0 To 19
			'If map[x, y] < 256 Then SetColor(0, 200 * (map[x, y] / 300), 0)
			SetColor(0, 0, 0)
			If map[x, y] < 256 * 6 And map[x, y] > 0 Then SetColor(0, map[x, y] / 6, 0)
			If map[x, y] = 9999 Then SetColor(255, 0, 0)
			DrawRect((x * 20) + 25, (y * 20) + 25, 18, 18)
		Next
	Next
	
	
	If MouseX() > 25 And MouseX() < 425 And MouseY() > 25 And MouseY() < 425 Then
		SetColor(255, 255, 255)
		DrawText(map[(MouseX() - 25) / 20, (MouseY() - 25) / 20], MouseX(), MouseY() - 10)
		
		Local ergebnis:Float = maptodest(Int((MouseX() - 25) / 20),Int( (MouseY() - 25) / 20), tex, tey, map, 19, 19)
		
		If ergebnis = 0 Then DrawRect(((((MouseX() - 25) / 20)) * 20) + 25, ((((MouseY() - 25) / 20) - 1) * 20) + 25, 18, 18)
		If ergebnis = 45 Then DrawRect(((((MouseX() - 25) / 20) + 1) * 20) + 25, ((((MouseY() - 25) / 20) - 1) * 20) + 25, 18, 18)
		If ergebnis = 90 Then DrawRect(((((MouseX() - 25) / 20) + 1) * 20) + 25, ((((MouseY() - 25) / 20)) * 20) + 25, 18, 18)
		If ergebnis = 135 Then DrawRect(((((MouseX() - 25) / 20) + 1) * 20) + 25, ((((MouseY() - 25) / 20) + 1) * 20) + 25, 18, 18)
		If ergebnis = 180 Then DrawRect(((((MouseX() - 25) / 20)) * 20) + 25, ((((MouseY() - 25) / 20) + 1) * 20) + 25, 18, 18)
		If ergebnis = 225 Then DrawRect(((((MouseX() - 25) / 20) - 1) * 20) + 25, ((((MouseY() - 25) / 20) + 1) * 20) + 25, 18, 18)
		If ergebnis = 270 Then DrawRect(((((MouseX() - 25) / 20) - 1) * 20) + 25, ((((MouseY() - 25) / 20)) * 20) + 25, 18, 18)
		If ergebnis = 315 Then DrawRect(((((MouseX() - 25) / 20) - 1) * 20) + 25, ((((MouseY() - 25) / 20) - 1) * 20) + 25, 18, 18)
	End If
	
	
	For Local x:Int = 0 To 19
		For Local y:Int = 0 To 19
			map[x, y] = 0
		Next
	Next
	
	SetColor(255, 0, 0)
	DrawRect((tex * 2) + 25, (tey * 2) + 25, 2, 2)
	SetColor(0, 255, 0)
	DrawRect((bex * 2) + 25, (bey * 2) + 25, 2, 2)
	
	If way = Null Then DrawText("NOT!", 10, 10) Else DrawText("FOUND!", 10, 10)
	
	Flip
	If MouseHit(2) Then WaitKey()
Wend
