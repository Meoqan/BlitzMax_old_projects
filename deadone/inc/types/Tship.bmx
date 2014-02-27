Type Tship
	Field id:Short

	Field x:Float, y:Float, r:Float, s:Float, delme:Byte
	
	Field shipC:TshipCatalog
	
	Field cargo:Tcargo
	
	Field life:Float, shield:Float, para:TCatalogParameter
	
	Field ply:Tplayer, ene:Tenemy, plyO:Tplayer
	
	Field modulHI:Tmodul, modulMID:Tmodul, modulLOW:Tmodul
	
	Function Create:Tship(ids:Short, play:Tplayer = Null, eney:Tenemy = Null, playO:Tplayer = Null)
		Local ship:Tship = New Tship
		
		If TshipCatalog.array[ids] = Null Then DebugLog("Ship id: " + ids + "  not exsist")

		ship.para = TshipCatalog.array[ids].para
		ship.shipC = TshipCatalog.array[ids]
		
		ship.life = ship.para.maxlife
		ship.shield = ship.para.maxshield
		
		ship.ply = play
		ship.ene = eney
		ship.plyO = playO
		
		Return ship
	End Function
	
	Method Draw(x:Float, y:Float, r:Byte, g:Byte, b:Byte)
		SetAlpha(1)
		SetColor(255, 255, 255)
		DrawImage(shipC.tex, x, y)
		SetColor(r, g, b)
		DrawImage(shipC.texo, x, y)
	End Method
	
EndType

Type Tcargo
	Field itemlist:TList = CreateList()
	Field id:Short

	Field maxsize:Int
	
	Function Create:Tcargo(maxsizes:Int)
		Local cargo:TCargo = New Tcargo
		
		cargo.maxsize = maxsizes
		
		Return cargo
	End Function
	
	Method testspace:Byte(sizes:Int)
		Local size:Int = maxsize
		
		For Local item:Titem = EachIn itemlist
			If size > 0 Then
				If size >= item.stacksize Then
					size:-item.stacksize
				Else
					Return False
				EndIf
			EndIf
		Next
		
		If size >= sizes Then Return True
		
		Return False
	End Method
	
	Method getspace:Short()
		Local size:Int = maxsize
		
		For Local item:Titem = EachIn itemlist
			If size > 0 Then
				If size >= item.stacksize Then
					size:-item.stacksize
				Else
					Return 0
				EndIf
			EndIf
		Next
		
		Return size
	End Method
	
	Method getusage:Short()
		Local size:int
		
		For Local item:Titem = EachIn itemlist
			If size <= item.stacksize Then
				size:+item.stacksize
			Else
				Return 0
			EndIf
		Next
		
		Return size
	End Method
	
	Method insertitem(item:Titem)
		itemlist.AddLast(item)
	End Method
	
	Method removeitem(item:Titem)
		itemlist.Remove(item)
	End Method
End Type


Type TshipCatalog
	Global list:TList = CreateList()
	Global array:TshipCatalog[65535]
	Field id:Short
	
	Field tex:TImage, texo:TImage
	
	Field para:TCatalogParameter
	
	Function Create(ids:Short, texs:TImage, texos:TImage, paras:TCatalogParameter)
		Local shipCatalog:TshipCatalog = New TshipCatalog
		TshipCatalog.list.AddLast(shipCatalog)
		TshipCatalog.array[ids] = shipCatalog
		
		shipCatalog.id = ids
		shipCatalog.tex = texs
		shipCatalog.texo = texos
		shipCatalog.para = paras
		
	End Function
	
	Function Load(t:String)
		Local file:TStream = ReadFile("ships\" + t)

		If file Then
		
			Local texL:TImage, texoL:TImage
			
			'[COPYME 1/3]
			Local idL:Int = -1
			
			Local paraL:TCatalogParameter = New TCatalogParameter
			
			while not eof(file)
				Local line:String = ReadLine(file)
				Local lineA:String[] = line.Split("=")
				If lineA.Length = 2 Then
					Select lineA[0].ToLower()
						Case "tex"
							texL = MidLoadImage("ships\" + lineA[1])
						Case "texover"
							texoL = MidLoadImage("ships\" + lineA[1])
							
							'[COPYME 2/3]
						Case "id"
							idL = lineA[1].ToInt()
						Case "itemid"
							paraL.itemid = lineA[1].ToInt()
						Case "name"
							paraL.name = lineA[1]
						Case "life"
							paraL.maxlife = lineA[1].ToFloat()
						Case "shield"
							paraL.maxshield = lineA[1].ToFloat()
						Case "maxcargo"
							paraL.maxcargo = lineA[1].ToInt()
						Case "schub"
							paraL.schub = lineA[1].ToFloat()
						Case "schaden"
							paraL.schaden = lineA[1].ToFloat()
						Case "schussspeed"
							paraL.schussspeed = lineA[1].Toint()
						Case "reichweite"
							paraL.reichweite = lineA[1].ToFloat()
						Case "sizex"
							paraL.sizex = lineA[1].ToFloat()
						Case "sizey"
							paraL.sizey = lineA[1].ToFloat()
						Case "rotation"
							paraL.rotation = lineA[1].ToFloat()
					End Select
				
				End If
			Wend
			CloseStream file
			
			
			'check
			Local isokay:Int = True
			
			If texL = Null Then isokay = False
			If texoL = Null Then isokay = False
			
			'[COPYME 3/3]
			If idL = -1 Then isokay = False
			If Not paraL.check() Then isokay = False
			
			
			If isokay Then
				TshipCatalog.Create(idL, texL, texoL, paraL)
				Ttextrender.createShipInfo(idL, paraL)
			Else
				Throw("Schiff konte nicht geladen werden, falsche paramenterwerte: " + t)
			EndIf
			
		EndIf
	End Function
	
		
	Function ScanDir()
		Local dir:Int = ReadDir("ships")

		If dir Then
		
			Repeat
				Local t:String = NextFile(dir)
				If t="" Exit
				If t="." Or t=".." Continue
				If t.EndsWith(".ship") Then TshipCatalog.Load(t)
			Forever
			
			CloseDir dir
		EndIf
		
	End Function
	
EndType

Type TCatalogParameter
	Field name:String
	Field maxlife:Float, maxcargo:Short, maxshield:Float
	Field schub:Float, schaden:Float, schussspeed:Int, reichweite:Float
	Field sizex:Float, sizey:Float, rotation:Float, itemid:Int = -1
	
	Method check:Int()
		Local isokay:Int = True
		
		If maxlife <= 0 Then isokay = False
		If maxshield <= 0 Then isokay = False
		If name.Length = 0 Then isokay = False
		If schub <= 0.01 Then isokay = False
		If schaden <= 0.01 Then isokay = False
		If schussspeed <= 0 Then isokay = False
		If reichweite <= 0.01 Then isokay = False
		If sizex <= 0.01 Then isokay = False
		If sizey <= 0.01 Then isokay = False
		If rotation <= 0.01 Then isokay = False
		
		Return isokay
	End Method
End Type