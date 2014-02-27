Type Tmenu
	Global Menustatus:Int
	Global ActiveElement:Int
	Global chars:String
	Global name:String = "Spielername"
	Global passwort:String
	Global ipstring:String = "127.0.0.1"
	'Global ipstring:String = "62.75.163.103"
	Global cloakpw:String = "******************************"
	Function Work()
		
		WorkKeybord()
		
		Select Tmenu.Menustatus
			Case 0
		
				DrawRectwindow(pointx - 200, pointy - 250, 400, 500)
				
				reset_draw()
				
				DrawImage(deadone_img, pointx, pointy - 150)
				
				SetHandle(10.0 + 100.0 + TextWidth("Name:"), TextHeight("Name:") / 2.0)
				DrawText("Name:", pointx, pointy - 85)
				reset_draw()
				SetHandle(10.0 + 100.0 + TextWidth("Passwort:"), TextHeight("Passwort:") / 2.0)
				DrawText("Passwort:", pointx, pointy - 45)
				reset_draw()
				
				SetHandle(10.0 + 100.0 + TextWidth("Ip:"), TextHeight("Ip:") / 2.0)
				DrawText("Ip:", pointx, pointy + 5)
				reset_draw()
				
				SetHandle(TextWidth("Server Port: 8888") / 2.0, TextHeight("Server Port: 8888") / 2.0)
				DrawText("Server Port: 8888", pointx, pointy + 45)
				reset_draw()
				
				If KeyHit(KEY_TAB) Then If ActiveElement = 1 Then ActiveElement = 2 Else ActiveElement = 1
?Debug
				If KeyHit(KEY_RETURN) Then
					insert("Versuche zu verbinden mit Name: " + name, 255, 255, 100)
					If StartNetwork("hexer", "test", ipstring) Then gamestate = 80
				EndIf
?Not Debug
				If KeyHit(KEY_RETURN) And ActiveElement = 2 Then
					If name <> "Spielername" Or name.Length >= 3 Then
						If passwort.Length >= 3 Then
							insert("Versuche zu verbinden mit Name: " + name, 255, 255, 100)
							
							If StartNetwork(name, passwort, ipstring) Then gamestate = 80
						Else
							insert("Bitte Spielernamen und Passwort mit mindestens 3 Zeichen eingeben.", 255, 100, 100)
						EndIf
					Else
						insert("Bitte Spielernamen und Passwort mit mindestens 3 Zeichen eingeben.", 255, 100, 100)
					EndIf
				EndIf
?
				ipstring = DrawTextbox(3, pointx + 20, pointy + 5, ipstring, 230, 30)
				
				name = DrawTextbox(1, pointx + 20, pointy - 85, name, 230, 30)
				If name.Length > 18 Then Local n:Int = 18 ; name = name[..n]
				If ActiveElement = 1 And name = "Spielername" Then name = ""
				
				passwort = DrawTextbox(2, pointx + 20, pointy - 45, passwort, 230, 30,,, 1)
				If passwort.Length > 18 Then Local h:Int = 18 ; passwort = passwort[..h]
				
				If DrawRectButton(pointx, pointy + 115, "Start", 300, 50) And gamestate = 100 Then
					If name <> "Spielername" Or name.Length >= 3 Then
						If passwort.Length >= 3 Then
							insert("Versuche zu verbinden mit Name: " + name, 255, 255, 100)
							
							If StartNetwork(name, passwort, ipstring) Then gamestate = 80
						Else
							insert("Bitte Spielernamen und Passwort mit mindestens 3 Zeichen eingeben.", 255, 100, 100)
						EndIf
					Else
						insert("Bitte Spielernamen und Passwort mit mindestens 3 Zeichen eingeben.", 255, 100, 100)
					EndIf
				EndIf
				
				If DrawRectButton(pointx, pointy + 190, "Exit", 300, 50) Then
					End
				EndIf
		
		End Select
	End Function
	
	Global openflycargo:Int
	Global openflymap:Int
	
	Function check_open:Byte()
		Local open:Byte = True
		If openflycargo Then open = False
		If openflymap Then open = False
		Return open
	End Function
	
	Function flycargo()
		If openflycargo Then
			reset_draw()
			
			DrawRectwindow(pointx - 400, pointy - 300, 800, 600)
			
			reset_draw()
			
			DrawImage(schilder_img[2], pointx - 380, pointy - 280)
			
			If player.ship Then DrawRectCargo(Null, player.ship.cargo, pointx - 255, pointy - 145, 510, 290, 4, 4)
			
			reset_draw()
			
			If Tmenu.DrawRectButton(pointx + 305, pointy + 270, "Schliessen", 140, 30) Then
				openflycargo = False
			End If
			
			reset_draw()
		EndIf
	End Function
	
	
	Function flymap()
		If openflymap Then
			reset_draw()
			
			DrawRectwindow(pointx - 400, pointy - 300, 800, 600)
			
			reset_draw()
			
			DrawImage(schilder_img[4], pointx - 380, pointy - 290)
			
			DrawImage(schilder_img[5], pointx - 250, pointy - 250)
			
			reset_draw()
			
			SetAlpha(0.2)
			
			For Local x:Int = 0 To 50
				DrawRect(pointx - 250 + (x * 10), pointy - 250, 1, 500)
				DrawRect(pointx - 250, pointy - 250 + (x * 10), 500, 1)
			Next
			
			reset_draw()
			
			SetAlpha(0.5 + (Sin(MilliSecs() / 5.0) / 2.0))
			DrawRect(pointx - 250 + (player.mapx * 10), pointy - 250 + (player.mapy * 10), 10, 10)
			
			reset_draw()
			
			If MouseX() > pointx - 250 And MouseX() < pointx + 250 And MouseY() > pointy - 250 And MouseY() < pointy + 250 Then
				If mh1 Then
					HR_x = (MouseX() - pointx + 250) / 10
					HR_y = (MouseY() - pointy + 250) / 10
				End If
			EndIf
			
			SetAlpha(0.5 + (Sin(MilliSecs() / 2.5) / 2.0))
			SetColor(255, 255, 0)
			DrawRect(pointx - 250 + (HR_x * 10), pointy - 250 + (HR_y * 10), 10, 10)
			
			reset_draw()
			
			For Local y:Int = 0 To 49
				For Local x:Int = 0 To 49
					If world.map[x, y].isastro Then
						SetColor(125, 80, 36)
						SetAlpha(world.map[x, y].isastro / 255.0)
						DrawOval(pointx - 250 + (x * 10) + 1, pointy - 250 + (y * 10) + 1, 8, 8)
					End If
					If world.map[x, y].isbase Then
						SetColor(255, 255, 0)
						SetAlpha(1)
						DrawOval(pointx - 250 + (x * 10) + 2, pointy - 250 + (y * 10) + 2, 6, 6)
					End If
				Next
			Next
			
			reset_draw()
			
			If player.baseID = -1 Then
				If Tmenu.DrawRectButton(pointx + 135, pointy + 270, "Hyperraumsprung", 160, 30) Then
					HR_jump = True
					openflymap = False
				End If
			End If
			
			reset_draw()
			
			If Tmenu.DrawRectButton(pointx + 305, pointy + 270, "Schliessen", 140, 30) Then
				openflymap = False
			End If
			
			reset_draw()
			
			'infos
			
			If MouseX() > pointx - 250 + (player.mapx * 10) And MouseX() < pointx - 250 + (player.mapx * 10) + 10 And MouseY() > pointy - 250 + (player.mapy * 10) And MouseY() < pointy - 250 + (player.mapy * 10) + 10 Then
				DrawRectwindow(MouseX() + 50, MouseY(), 130, 30)
				reset_draw()
				DrawText("Deine Position.", MouseX() + 55, MouseY() + 10)
			End If
			
		EndIf
	End Function
	
	Function DrawTextbox:String(AE:Int, x:Float, y:Float, txt:String, buttonsizex:Float = 300, buttonsizey:Float = 100, bordersizex:Float = 8, bordersizey:Float = 8, pass:Byte = 0)
		SetHandle((buttonsizex + bordersizex) / 2.0, (buttonsizey + bordersizey) / 2.0)
		SetColor(25, 30, 25)
		DrawRect(x, y, (buttonsizex + bordersizex), (buttonsizey + bordersizey))
		
		SetHandle(buttonsizex / 2.0, buttonsizey / 2.0)
		If ismouseover(x - (buttonsizex / 2.0), y - (buttonsizey / 2.0), buttonsizex, buttonsizey) Then
			SetColor(75, 90, 75)
			If mh1 Then ActiveElement = AE
		Else
			SetColor(50, 60, 50)
		EndIf
		
		If ActiveElement = AE Then
			SetColor(46, 50, 46)
			
			txt = txt + chars
			If remove_char Then remove_char = False ; If txt.Length > 0 Then Local n:Int = txt.Length - 1 ; txt = txt[..n]
			
		End If
		
		DrawRect(x, y, buttonsizex, buttonsizey)
		
		SetColor(245, 255, 245)
		SetHandle(-4 + (buttonsizex / 2.0), TextHeight(txt) / 2.0)
		Local cursor:String
		If Int(Sin(MilliSecs() / 6.0) + 0.5) And ActiveElement = AE Then cursor = "|"
		If pass Then
			Local leng:Int = txt.Length
			Local str:String = cloakpw[..leng]
			DrawText(str + cursor, x, y)
		Else
			DrawText(txt + cursor, x, y)
		End If
		
		Return txt
	End Function
	
	Function DrawRectButton:Byte(x:Float, y:Float, txt:String = "", buttonsizex:Float = 300, buttonsizey:Float = 100, bordersizex:Float = 8, bordersizey:Float = 8)
		SetHandle((buttonsizex + bordersizex) / 2.0, (buttonsizey + bordersizey) / 2.0)
		SetColor(25, 30, 25)
		DrawRect(x, y, (buttonsizex + bordersizex), (buttonsizey + bordersizey))
		
		Local pushed:Byte = False
		
		SetHandle(buttonsizex / 2.0, buttonsizey / 2.0)
		If ismouseover(x - (buttonsizex / 2.0), y - (buttonsizey / 2.0), buttonsizex, buttonsizey) Then
			SetColor(75, 90, 75)
			If mh1 Then pushed = True
		Else
			SetColor(50, 60, 50)
		EndIf
		DrawRect(x, y, buttonsizex, buttonsizey)
		
		SetColor(245, 255, 245)
		SetHandle(TextWidth(txt) / 2.0, TextHeight(txt) / 2.0)
		DrawText(txt, x, y)
		Return pushed
	End Function
	
	Function DrawRectwindow(x:Float, y:Float, winsizex:Float = 300, winsizey:Float = 100, bordersizex:Float = 8, bordersizey:Float = 8)
		
		SetHandle(0, 0)
		
		SetColor(25, 30, 25)
		DrawRect(x - (bordersizex / 2.0), y - (bordersizey / 2.0), (winsizex + bordersizex), winsizey + bordersizey)
		
		SetColor(40, 48, 40)
		DrawRect(x, y, winsizex, winsizey)
		
	End Function
	
	Global seite:Int
	
	Function DrawRectCargo:Titem(itemc:Titem, cargo:Tcargo, x:Float, y:Float, winsizex:Float = 300, winsizey:Float = 100, bordersizex:Float = 8, bordersizey:Float = 8)
		Local itemx:Titem = itemc
		SetHandle(0, 0)
		
		SetColor(25, 30, 25)
		DrawRect(x - (bordersizex / 2.0), y - (bordersizey / 2.0), (winsizex + bordersizex), winsizey + bordersizey)
		
		SetColor(10, 13, 10)
		DrawRect(x, y, winsizex, winsizey)
		
		Local itemsX:Int = ((winsizex - bordersizex - 16 - 32) / 92.0)
		Local itemsY:Int = ((winsizey - bordersizey - 32) / 92.0)
		
		If cargo Then
			Local counter:Int, xx:Int, xy:Int, tempseite:Int, mover:Titem
			For Local item:Titem = EachIn cargo.itemlist
				
				If seite = tempseite Then
					If ismouseover(x + 16 + (xx * 92), y + 16 + (xy * 92), 92, 92) Then
						SetColor(30, 36, 30)
						If itemc = item Then SetColor(40, 48, 40)
						DrawRect(x + 16 + (xx * 92), y + 16 + (xy * 92), 92, 92)
						If mh1 Then itemx = item
						mover = item
					EndIf
					If itemc = item Then SetColor(40, 48, 40) ; DrawRect(x + 16 + (xx * 92), y + 16 + (xy * 92), 92, 92)
						
					SetColor(255, 255, 255)
					DrawImage(item.itemC.tex, x + 16 + (xx * 92) + 24 + 22, y + 16 + (xy * 92) + 24 + 11)
					DrawImage(item.itemC.texo, x + 16 + (xx * 92) + 24 + 22, y + 16 + (xy * 92) + 24 + 11)
					
					
					Local name:String
					If item.para.name.Length > 10 Then
						name = item.para.name[..10]
					Else
						name = item.para.name
					EndIf
					
					SetHandle(TextWidth(name) / 2.0, 0)
					DrawText(name, x + 16 + (xx * 92) + 24 + 22, y + 16 + (xy * 92) + (13 + 24 + 24))
					SetHandle(TextWidth(item.menge) / 2.0, 0)
					DrawText(item.menge, x + 16 + (xx * 92) + 24 + 22, y + 16 + (xy * 92) + (18 + 24 + 24 + 10))
					SetHandle(0, 0)
					
				End If
				
				counter:+1
				xx:+1
				If xx = itemsX Then xy:+1 ; xx = 0
				If counter = (itemsX * itemsY) Then tempseite:+1 ; counter = 0 ; xx = 0;xy = 0
			Next
			If mover And mover.para.shipid > - 1 Then
				DrawImage(Ttextrender.shiparray[mover.para.shipid].img, MouseX() + 50, MouseY())
			End If
		End If
		Return itemx
	End Function
	
	
	Global remove_char:Byte
	
	Function WorkKeybord()
		chars = ""
		Local key:Int
		Repeat
			key = GetChar()
			
			Local systemkeys:Byte = False
			
			If key = KEY_BACKSPACE Then remove_char = True
			
			If key >= 32 And key <= 126 Then
				chars = chars + Chr(key)
			End If
			If key >= 128 And key <= 255 Then
				chars = chars + Chr(key)
			End If
			
		Until key = 0
		
	End Function
	
EndType