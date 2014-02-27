Type Tmodulfire
	'&&&& Basic fields
	'[system]
	Global ids:Short
	Global list:TList = CreateList()
	Field id:Short, delme:Byte
	
	Field x:Float, y:Float, way:Float
	Field lstpoly:Tpolythrust
	
	Field fromship:Tship, toship:Tship
	Field timex:Int
	Field firemodul:TmodulCatalog
	
	Function Create(modul:TmodulCatalog, Fship:Tship, toship:Tship)
		Local modulf:Tmodulfire = New Tmodulfire
		list.AddLast(modulf)
		
		modulf.id = ids ;ids:+1
		
		modulf.fromship = Fship
		modulf.toship = toship
		
		modulf.firemodul = modul
		
		modulf.way = Sqr((Fship.x - toship.x) ^ 2 + (Fship.y - toship.y) ^ 2)
		
		modulf.x = Fship.x
		modulf.y = Fship.y
		
		Local rad:Float = -ATan2((modulf.x - modulf.toship.x), (modulf.y - modulf.toship.y))
		Local col:Byte = 0
		If modulf.fromship.ply Then col = 1
		If modulf.fromship.plyO Then col = 2
		
		modulf.lstpoly = Tpolythrust.Create(modulf.x + (Cos(rad + 90) * 6), modulf.y + (Sin(rad + 90) * 6), rad, 4, 0, modulf.lstpoly, col)
	End Function
	
	Method Draw()
		timex:+msc
		If timex > 500 Then Tmodulfire.list.Remove(Self) ; Texplosion.Create(toship.x, toship.y, toship.r) ; Return
		'move
		Local rad:Float = -ATan2((x - toship.x), (y - toship.y))
		Local entferung:Float = Sqr((x - toship.x) ^ 2 + (y - toship.y) ^ 2)
		
		Local verbleibenderweg:Float = (way / 100.0) * ((500.0 - timex) / 5.0)
		Local differenz:Float = entferung - verbleibenderweg
		
		Local col:Byte = 0
		If fromship.ply Then col = 1
		If fromship.plyO Then col = 2
		
		x:+Cos(rad - 90) * differenz
		y:+Sin(rad - 90) * differenz
		
		Tpolythrust.Drawlast(x + (Cos(rad + 90) * 6), y + (Sin(rad + 90) * 6), rad, 4, lstpoly, col)
		lstpoly = Tpolythrust.Create(x + (Cos(rad + 90) * 6), y + (Sin(rad + 90) * 6), rad, 4, 0, lstpoly, col)
		
		reset_draw()
		SetRotation(rad - calc_rotation)
		calc_pos(x - player.x, y - player.y)
		DrawImage(firemodul.texs, pointx + get_x(), pointy + get_y())
	End Method
End Type


Type Tmodul
	'&&&& Basic fields
	'[system]
	Global ids:Short
	Global list:TList = CreateList()
	Field id:Short, delme:Byte
	'[position]
	Field x:Float, y:Float, r:Float, s:Float
	'[sichbar]
	Field visionlist:TList = CreateList()
	'&&&&
	
	'[eigene fields]
	Field coldowntime:Int
	Field ship:Tship, modulC:TmodulCatalog, para:TmodulCatalogParameter
	
	Function Create:Tmodul(ids:Short, idx:Short, ship:Tship)
		Local modul:Tmodul = New Tmodul
		list.AddLast(modul)
		
		If TmodulCatalog.array[idx] = Null Then DebugLog("modul id: " + idx + "  not exsist")
		
		modul.id = ids
		netmodul[ids] = modul
		
		modul.para = TmodulCatalog.array[idx].para
		modul.modulC = TmodulCatalog.array[idx]
		
		modul.ship = ship
		
		Return modul
	End Function
	
End Type

Type TmodulCatalog
	Global list:TList = CreateList()
	Global array:TmodulCatalog[65535]
	Field id:Short

	Field tex:TImage, texs:TImage
	
	Field para:TmodulCatalogParameter
	
	Function Create(ids:Short, texs:TImage, texss:TImage, paras:TmodulCatalogParameter)
		Local modulCatalog:TmodulCatalog = New TmodulCatalog
		TmodulCatalog.list.AddLast(modulCatalog)
		TmodulCatalog.array[ids] = modulCatalog
		
		modulCatalog.id = ids
		modulCatalog.para = paras
		modulCatalog.tex = texs
		modulCatalog.texs = texss
	End Function
	
	Function Load(t:String)
		Local file:TStream = ReadFile("modul\" + t)

		If file Then
		
			Local texL:TImage, texLs:TImage
		
			'[COPYME 1/3]
			Local idL:Int = -1
			
			Local paraL:TmodulCatalogParameter = New TmodulCatalogParameter
			
			while not eof(file)
				Local line:String = ReadLine(file)
				Local lineA:String[] = line.Split("=")
				If lineA.Length = 2 Then
					Select lineA[0].ToLower()
						Case "tex"
							texL = MidLoadImage("modul\" + lineA[1])
						Case "texs"
							texLs = MidLoadImage("modul\" + lineA[1])
							
						'[COPYME 2/3]
						Case "id"
							idL = lineA[1].ToInt()
						Case "name"
							paraL.name = lineA[1]
						Case "cooldown"
							paraL.cooltime = lineA[1].ToInt()
						Case "schaden"
							paraL.schaden = lineA[1].ToFloat()
					End Select
					'Print(lineA[0] + "  -  " + lineA[1])
				End If
			Wend
			CloseStream file
			
			
			'check
			Local isokay:Int = True
			
			If texL = Null Then isokay = False
			If texLs = Null Then isokay = False
			
			'[COPYME 3/3]
			If idL = -1 Then isokay = False
			If Not paraL.check() Then isokay = False
			
			If isokay Then
				TmodulCatalog.Create(idL, texL, texLs, paraL)
			End If
			
			
		EndIf
	End Function
	
		
	Function ScanDir()
		Local dir:Int = ReadDir("modul")

		If dir Then
		
			Repeat
				Local t:String = NextFile(dir)
				If t="" Exit
				If t="." Or t=".." Continue
				If t.EndsWith(".modul") Then TmodulCatalog.Load(t)
			Forever
			
			CloseDir dir
		EndIf
		
	End Function
	
EndType

Type TmodulCatalogParameter
	Field name:String
	Field cooltime:Short
	Field schaden:Float
	
	Method check:Int()
		Local isokay:Int = True
		
		If name.Length = 0 Then isokay = False
		If cooltime = 0 Then isokay = False
		If schaden <= 0 Then isokay = False
		
		Return isokay
	End Method
End Type


'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~






