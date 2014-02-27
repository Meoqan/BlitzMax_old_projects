Type Sship
	'&&&& Basic fields
	'[system]
	Global idx:Short
	'Global list:TList = CreateList()
	Field id:Short, delme:Byte
	
	Field schusscooltime:Int
	Field ply:Splayer, eney:Senemy
	Field x:Float, y:Float, r:Float, s:Float
	
	Field shipC:SshipCatalog
	
	Field life:Float, shield:Float, para:SCatalogParameter
	Field cargo:Scargo
	
	Field modulHI:Smodul, modulMID:Smodul, modulLOW:Smodul
	
	Function Create:Sship(ids:Short, play:Splayer = Null, ene:Senemy = Null)
		Local ship:Sship = New Sship
				
		If SshipCatalog.array[ids] = Null Then Throw("Ship id: " + ids + "  not exsist")
		
		'list.AddLast(ship)
		ship.id = idx ;idx:+1
		snetship[ship.id] = ship
	
		ship.para = SshipCatalog.array[ids].para
		ship.shipC = SshipCatalog.array[ids]
		ship.ply = play
		ship.eney = ene
		
		ship.life = ship.para.maxlife
		ship.shield = ship.para.maxshield
		
		ship.modulHI = Smodul.Create(0, ship)
		
		Return ship
	End Function
	
	Method Shieldreload()
		shield:+calc_move(0.1)
		If shield > para.maxshield Then shield = para.maxshield
	End Method
	
EndType


Type Scargo
	'&&&& Basic fields
	'[system]
	Global idx:Short
	'Global list:TList = CreateList()
	Field itemlist:TList = CreateList()
	Field id:Short, delme:Byte

	Field maxsize:Int
	
	Function Create:Scargo(maxsizes:Int)
		Local cargo:SCargo = New Scargo
		
		'list.AddLast(cargo)
		cargo.id = idx ;idx:+1
		snetcargo[cargo.id] = cargo
		
		cargo.maxsize = maxsizes
		
		Return cargo
	End Function
	
	Method finditem:Sitem(id:Short)
		Local item:Sitem
		
		For Local itemxx:Sitem = EachIn itemlist
			If itemxx.itemC.id = id Then item = itemxx
		Next
		
		Return item
	End Method
	
	Method testspace:Byte(sizes:Int)
		Local size:Int = maxsize
		
		For Local item:Sitem = EachIn itemlist
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
	
	Method getspace:Int()
		Local size:Int = maxsize
		
		For Local item:Sitem = EachIn itemlist
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
	
	Method additem(ids:Short, menges:Int)
		Local found:Int = 0
		For Local item:Sitem = EachIn itemlist
			If item.itemC.id = ids Then
				found = True
				item.menge:+menges
				item.stacksize = item.menge * item.para.size
			End If
		Next
		If found = 0 Then
			itemlist.AddLast(Sitem.Create(ids, menges))
		End If
	End Method
	
	Method insertitem(item:Sitem)
		itemlist.AddLast(item)
	End Method
	
	Method removeitem(item:Sitem)
		itemlist.Remove(item)
	End Method
	
	Method sendupdate(clientx:TTCPStream)
		senddelete(clientx)
		senditems(clientx)
	End Method
	
	Method senditems(clientx:TTCPStream)
		For Local item:Sitem = EachIn itemlist
			clientx.WriteByte(1 + 2 + 2 + 4) '+++ size
			clientx.WriteByte(77)
			clientx.WriteShort(id)
			clientx.WriteShort(item.itemC.id)
			clientx.WriteInt(item.menge)
		Next
	End Method
	
	Method senddelete(clientx:TTCPStream)
		clientx.WriteByte(1 + 2) '+++ size
		clientx.WriteByte(76)
		clientx.WriteShort(id)
	End Method
	
	Method sendrelate(clientx:TTCPStream, ship:Sship)
		clientx.WriteByte(1 + 2 + 2) '+++ size
		clientx.WriteByte(75)
		clientx.WriteShort(id)
		clientx.WriteShort(ship.id)
	End Method
	
	Method sendbaserelate(clientx:TTCPStream)
		clientx.WriteByte(1 + 2) '+++ size
		clientx.WriteByte(79)
		clientx.WriteShort(id)
	End Method
	
	Method sendcreate(clientx:TTCPStream)
		clientx.WriteByte(1 + 2 + 4) '+++ size
		clientx.WriteByte(74)
		clientx.WriteShort(id)
		clientx.WriteInt(maxsize)
	End Method
End Type

Type SshipCatalog
	Global list:TList = CreateList()
	Global array:SshipCatalog[65536]
	Field id:Short

	Field para:SCatalogParameter
	
	Function Create(ids:Short, paras:SCatalogParameter)
		Local shipCatalog:SshipCatalog = New SshipCatalog
		SshipCatalog.list.AddLast(shipCatalog)
		SshipCatalog.array[ids] = shipCatalog
		
		shipCatalog.id = ids
		shipCatalog.para = paras
		
	End Function
	
	Function Load(t:String)
		Local file:TStream = ReadFile("ships\" + t)

		If file Then
		
			'[COPYME 1/3]
			Local idL:Int = -1
			
			Local paraL:SCatalogParameter = New SCatalogParameter
			
			while not eof(file)
				Local line:String = ReadLine(file)
				Local lineA:String[] = line.Split("=")
				If lineA.Length = 2 Then
					Select lineA[0].ToLower()
						
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
					'Print(lineA[0] + "  -  " + lineA[1])
				End If
			Wend
			CloseStream file
			
			
			'check
			Local isokay:Int = True
			
			'[COPYME 3/3]
			If idL = -1 Then isokay = False
			If Not paraL.check() Then isokay = False
			
			
			If isokay Then
				SshipCatalog.Create(idL, paraL)
				Print("Ship geladen: " + idL + " Name:" + paraL.name)
			Else
				Throw("Schiff konte nicht geladen werden, falsche paramenterwerte: " + t)
			End If
			
			
		EndIf
	End Function
	
		
	Function ScanDir()
		Local dir:Int = ReadDir("ships")

		If dir Then
		
			Repeat
				Local t:String = NextFile(dir)
				If t="" Exit
				If t="." Or t=".." Continue
				If t.EndsWith(".ship") Then SshipCatalog.Load(t)
			Forever
			
			CloseDir dir
		EndIf
		
	End Function
	
EndType

Type SCatalogParameter
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