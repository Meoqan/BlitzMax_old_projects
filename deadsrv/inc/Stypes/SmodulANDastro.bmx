Type Smodulfire
	'&&&& Basic fields
	'[system]
	Global ids:Short
	Global list:TList = CreateList()
	Field id:Short, delme:Byte
	
	
	Field fromship:Sship, toship:Sship
	Field timex:Int
	Field firemodul:Smodul
	
	Function Create:Byte(modul:Smodul, Fship:Sship, toship:Sship)
		If modul.coldowntime > time Then Return False
		modul.coldowntime = time + modul.para.cooltime
		
		Local modulf:Smodulfire = New Smodulfire
		list.AddLast(modulf)
		
		modulf.id = ids ;ids:+1
		
		modulf.fromship = Fship
		modulf.toship = toship
		
		modulf.firemodul = modul
		Return True
	End Function
End Type

Type Smodul
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
	Field ship:Sship, modulC:SmodulCatalog, para:SmodulCatalogParameter
	
	Function Create:Smodul(idx:Short, ship:Sship)
		Local modul:Smodul = New Smodul
		list.AddLast(modul)
		
		If SmodulCatalog.array[idx] = Null Then Throw("modul id: " + idx + "  not exsist")
		
		modul.id = ids ;ids:+1
		snetmodul[modul.id] = modul
		
		modul.para = SmodulCatalog.array[idx].para
		modul.modulC = SmodulCatalog.array[idx]
		
		modul.ship = ship
		
		Return modul
	End Function
	
	Method sendupdate(client:TTCPStream)
		client.WriteByte(1 + 2 + 4 + 4 + 4) '+++ size
		client.WriteByte(6)
		client.WriteShort(id)
		client.WriteFloat(x)
		client.WriteFloat(y)
		client.WriteFloat(r)
	End Method
	
	Method sendcreate(client:TTCPStream)
		client.WriteByte(1 + 2 + 4 + 4 + 4) '+++ size
		client.WriteByte(36)
		client.WriteShort(id)
		client.WriteFloat(x)
		client.WriteFloat(y)
		client.WriteFloat(r)
	End Method
End Type

Type SmodulCatalog
	Global list:TList = CreateList()
	Global array:SmodulCatalog[65535]
	Field id:Short

	Field para:SmodulCatalogParameter
	
	Function Create(ids:Short, paras:SmodulCatalogParameter)
		Local modulCatalog:SmodulCatalog = New SmodulCatalog
		SmodulCatalog.list.AddLast(modulCatalog)
		SmodulCatalog.array[ids] = modulCatalog
		
		modulCatalog.id = ids
		modulCatalog.para = paras
		
	End Function
	
	Function Load(t:String)
		Local file:TStream = ReadFile("modul\" + t)

		If file Then
		
			'[COPYME 1/3]
			Local idL:Int = -1
			
			Local paraL:SmodulCatalogParameter = New SmodulCatalogParameter
			
			while not eof(file)
				Local line:String = ReadLine(file)
				Local lineA:String[] = line.Split("=")
				If lineA.Length = 2 Then
					Select lineA[0].ToLower()
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
			
			'[COPYME 3/3]
			If idL = -1 Then isokay = False
			If Not paraL.check() Then isokay = False
			
			If isokay Then
				SmodulCatalog.Create(idL, paraL)
				Print("modul geladen: " + idL + " Name:" + paraL.name)
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
				If t.EndsWith(".modul") Then SmodulCatalog.Load(t)
			Forever
			
			CloseDir dir
		EndIf
		
	End Function
	
EndType

Type SmodulCatalogParameter
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


Type Sastro
	'&&&& Basic fields
	'[system]
	Global ids:Short
	Global list:TList = CreateList()
	Field id:Short, delme:Byte
	'[position]
	Field x:Float, y:Float, r:Float, s:Float
	'[sichbar]
	Field visionlist:TList = CreateList()
	'[map and world]
	Field inworld:Sworld, inmap:Smap
	'&&&&
	
	'[eigene fields]
	Global refresh:Int
	
	Field amount:Int
	
	Function Create(x:Float, y:Float, r:Float, xworld:Sworld, xmap:Smap)
		Local astro:Sastro = New Sastro
		list.AddLast(astro)
		
		astro.id = ids ;ids:+1
		snetastro[astro.id] = astro
		
		astro.x = x
		astro.y = y
		astro.r = r
		astro.amount = Rand(10, 50)
		
		astro.inworld = xworld
		astro.inmap = xmap
		astro.inmap.astrolist.AddLast(astro)
		
	End Function
	
	Method sendupdate(client:TTCPStream)
		client.WriteByte(1 + 2 + 4 + 4 + 4) '+++ size
		client.WriteByte(6)
		client.WriteShort(id)
		client.WriteFloat(x)
		client.WriteFloat(y)
		client.WriteFloat(r)
	End Method
	
	Method sendcreate(client:TTCPStream)
		client.WriteByte(1 + 2 + 4 + 4 + 4) '+++ size
		client.WriteByte(36)
		client.WriteShort(id)
		client.WriteFloat(x)
		client.WriteFloat(y)
		client.WriteFloat(r)
	End Method
End Type

