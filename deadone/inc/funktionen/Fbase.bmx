Global base_aelement:Int, base_qelement:Int

Global base_item:Titem, base_movetowarehouse:Byte, base_movetoship:Byte, base_einschmelzen:Byte, base_cargo:Tcargo, base_einsteigen:Byte
Global base_buildlist:TList = CreateList(), base_buildid:Int = -1, base_buliderid:Int = -1, base_buildertimer:Int

Function inbase()
	
	reset_draw()

	Tmenu.DrawRectwindow(pointx - 400, pointy - 300, 800, 600)
				
	reset_draw()
	
	DrawImage(schilder_img[0], pointx - 380, pointy - 280)
	
	
	If Tmenu.DrawRectButton(pointx + 315, pointy + 260, "Undock", 120, 30) Then
		key_undock = 1
	End If
	
	If Tmenu.DrawRectButton(pointx - 305, pointy - 185, "Info", 150, 30) Then
		base_aelement = 0
	End If
	
	If Tmenu.DrawRectButton(pointx - 305, pointy - 145, "Quests", 150, 30) Then
		base_aelement = 1
		base_qelement = 0
	End If
	
	If Tmenu.DrawRectButton(pointx - 305, pointy - 105, "Frachtraum", 150, 30) Then
		base_aelement = 2
		base_item = Null
		base_cargo = Null
	End If
	
	If Tmenu.DrawRectButton(pointx - 305, pointy - 65, "Lagerraum", 150, 30) Then
		base_aelement = 3
		base_item = Null
		base_cargo = Null
	End If
	
	If Tmenu.DrawRectButton(pointx - 305, pointy - 25, "Konstruieren", 150, 30) Then
		base_aelement = 4
	End If
	
	reset_draw()
	
	Select base_aelement
		Case 0
			'DrawMultilineText(baseinfotext, pointx - 155, pointy - 210, 500)
			If Ttextrender.array[0] Then DrawImage(Ttextrender.array[0].img, pointx - 155, pointy - 210)
			reset_draw()
		Case 1
			If Tmenu.DrawRectButton(pointx - 100, pointy - 185, "Aufgabe 1", 150, 30) Then
				base_qelement = 1
			End If
			reset_draw()
			SetColor(240, 240, 0)
			DrawImage(qaufgabe_img, pointx - 190, pointy - 185)
			Select base_qelement
				Case 1
					reset_draw()
					'DrawMultilineText(aufgabetext, pointx + 15, pointy - 210, 320)
					If Ttextrender.array[1] Then DrawImage(Ttextrender.array[1].img, pointx + 15, pointy - 210)
			End Select
			reset_draw()
		Case 2
			reset_draw()
			DrawImage(schilder_img[2], pointx - 185, pointy - 240)
			If Tmenu.DrawRectButton(pointx - 85, pointy + 220, "in den Lagerraum verschieben", 250, 30) Then
				base_movetowarehouse = True
				base_cargo = player.ship.cargo
			End If
			If Tmenu.DrawRectButton(pointx - 85, pointy + 250, "Erz einschmelzen", 250, 30) Then
				base_einschmelzen = True
				base_cargo = player.ship.cargo
			End If
			If base_item And base_item.para.shipid > - 1 Then
				DrawImage(Ttextrender.shiparray[base_item.para.shipid].img, MouseX() + 50, MouseY())
			End If
			base_item = Tmenu.DrawRectCargo(base_item, player.ship.cargo, pointx - 185, pointy - 210, 510, 390, 4, 4)
			reset_draw()
		Case 3
			reset_draw()
			DrawImage(schilder_img[3], pointx - 185, pointy - 240)
			If Tmenu.DrawRectButton(pointx - 85, pointy + 220, "in den Frachtraum verschieben", 250, 30) Then
				base_movetoship = True
				base_cargo = player.ship.cargo
			End If
			If Tmenu.DrawRectButton(pointx - 85, pointy + 250, "Erz einschmelzen", 250, 30) Then
				base_einschmelzen = True
				base_cargo = player.basecargo
			End If
			If Tmenu.DrawRectButton(pointx + 185, pointy + 220, "Einsteigen", 200, 30) Then
				base_einsteigen = True
			End If
			base_item = Tmenu.DrawRectCargo(base_item, player.basecargo, pointx - 185, pointy - 210, 510, 390, 4, 4)
			reset_draw()
		Case 4
			reset_draw()
			If base_buliderid > - 1 Then
				SetColor(25, 30, 25)
				DrawRect(pointx - 185, pointy + 150, 500, 50)
				SetColor(75, 90, 75)
				DrawRect(pointx - 181, pointy + 154, Float(base_buildertimer) / Float(TitemCatalog.array[base_buliderid].para.buildtime) * 492.0, 42)
				reset_draw()
				SetHandle(TextWidth(TitemCatalog.array[base_buliderid].para.name) / 2.0, TextHeight(TitemCatalog.array[base_buliderid].para.name) / 2.0)
				DrawText(TitemCatalog.array[base_buliderid].para.name, pointx + 65, pointy + 125)
			EndIf
			Local x:Int
			Local overid:Int = -1
			For Local ships:TitemCatalog = EachIn base_buildlist
				reset_draw()
				If ismouseover(pointx - 135, pointy - 135 + (x * 50), 430, 50) Then
					SetColor(50, 60, 50)
					DrawRect(pointx - 135, pointy - 135 + (x * 50), 430, 50)
					overid = ships.para.shipid
				EndIf
				reset_draw()
				
				DrawImage(ships.tex, pointx - 135, pointy - 110 + (x * 50))
				DrawImage(ships.texo, pointx - 135, pointy - 110 + (x * 50))
				
				SetHandle(TextWidth(ships.para.name)/ 2.0, TextHeight(ships.para.name) / 2.0)
				DrawText(ships.para.name, pointx + 30, pointy + (x * 50) - 110)
				reset_draw()
				If Tmenu.DrawRectButton(pointx + 235, pointy - 110 + (x * 50), "Bauen", 100, 30) Then
					base_buildid = ships.id
				End If
				
				x:+1
			Next
			If overid > - 1 Then
				If Ttextrender.shiparray[overid] Then DrawImage(Ttextrender.shiparray[overid].img, MouseX() + 50, MouseY())
			End If
			reset_draw()
	End Select
	
End Function


Type Ttextrender
	Global array:Ttextrender[500], shiparray:Ttextrender[65535]
	Field id:Int, x:Float, y:Float, text:String, img:TImage
	
	Function createShipInfo(id:Short, para:TCatalogParameter)
		Local trhold:Ttextrender = New Ttextrender
		trhold.id = id
		
		shiparray[id] = trhold
		
		trhold.text:+"Name:   " + para.name + Chr(10)
		trhold.text:+"Leben/Schild:   " + Int(para.maxlife) + "/" + Int(para.maxshield) + Chr(10)
		trhold.text:+"Schaden/Nachladen:   " + Int(para.schaden * 2.0) + "/" + Int(para.schussspeed) + "ms" + Chr(10)
		trhold.text:+"Reichweite:   " + Int(para.reichweite) + Chr(10)
		trhold.text:+"Frachtraum:   " + Int(para.maxcargo) + Chr(10)
		trhold.text:+"Schub:   " + Int(para.schub * 100.0) + Chr(10)
		
		Local item:TitemCatalog
		If para.itemid > - 1 Then item = TitemCatalog.array[para.itemid]
		If item Then
			trhold.text:+"Frachtgröße:   " + item.para.size + Chr(10) ; trhold.x:+16
			trhold.text:+Chr(10) ; trhold.x:+16
			trhold.text:+"Rohstoffliste" + Chr(10) ; trhold.x:+16
			If item.para.needitemid1 > - 1 Then trhold.text:+TitemCatalog.array[item.para.needitemid1].para.name + ":   " + item.para.needitemamount1 + "x" + Chr(10) ; trhold.x:+16
			If item.para.needitemid2 > - 1 Then trhold.text:+TitemCatalog.array[item.para.needitemid2].para.name + ":   " + item.para.needitemamount2 + "x" + Chr(10) ; trhold.x:+16
			If item.para.needitemid3 > - 1 Then trhold.text:+TitemCatalog.array[item.para.needitemid3].para.name + ":   " + item.para.needitemamount3 + "x" + Chr(10) ; trhold.x:+16
			If item.para.needitemid4 > - 1 Then trhold.text:+TitemCatalog.array[item.para.needitemid4].para.name + ":   " + item.para.needitemamount4 + "x" + Chr(10) ; trhold.x:+16
		End If
		
		reset_draw()
		SetColor(25, 30, 25)
		DrawRect(0, 0, screenx, screeny)
		SetColor(40, 48, 40)
		DrawRect(2, 2, 296, 106 + trhold.x)
		SetColor(255, 255, 255)
		DrawMultilineText(trhold.text, 10, 10, 300 - 20)
		trhold.img = LoadImage(GrabPixmap(0, 0, 300, 110 + trhold.x))
		Cls
	End Function
	
	Function Load(r:Byte, g:Byte, b:Byte)
		If Not FileType("text.dat") Then Throw("error, can't find 'text.dat' for Ttextrender.")
		
		Local file:TStream = ReadFile("text.dat")
			
		If file Then
		
			Local trhold:Ttextrender = New Ttextrender
			Local copyintxt:Byte
			While Not Eof(file)
				Local line:String = ReadLine(file)
				Local lineA:String[] = line.Split("=")
				If lineA.Length = 1 Then
					Select line
						Case "[begin]"
							copyintxt = True
						Case "[end]"
							copyintxt = False
							
							reset_draw()
							SetColor(r, g, b)
							DrawRect(0, 0, screenx, screeny)
							SetColor(255, 255, 255)
							DrawMultilineText(trhold.text, 10, 10, trhold.x - 20)
							trhold.img = LoadImage(GrabPixmap(0, 0, trhold.x, trhold.y))
							Cls
							
							array[trhold.id] = trhold
							trhold = New Ttextrender
						Default
							If copyintxt Then
								trhold.text:+line + Chr(10)
							End If
					End Select
				End If
				If lineA.Length = 2 Then
					Select lineA[0].ToLower()
						Case "id"
							trhold.id = lineA[1].ToInt()
						Case "x"
							trhold.x = lineA[1].ToInt()
						Case "y"
							trhold.y = lineA[1].ToInt()
					End Select
				End If
			Wend
			CloseStream file
		EndIf
		
	End Function
	
End Type