Type Sworld
	'&&&& Basic fields
	'[system]
	Global list:TList = CreateList()
	Field id:Short, delme:Byte = True
	'&&&& 
	Field maps:Smap[50, 50]
	Field myname:String
	
	Method sendworlddata(clientx:TTCPStream)
		clientx.WriteByte(1 + 2 + 1 + myname.Length) '+++ size
		clientx.WriteByte(150)
		clientx.WriteShort(id)
		clientx.WriteByte(myname.Length)
		clientx.WriteString(myname)
		For Local y:Int = 0 To 49
			For Local x:Int = 0 To 49
				clientx.WriteByte(1 + 1 + 1 + 2 + 1 + 1) '+++ size
				clientx.WriteByte(151)
				clientx.WriteByte(x)
				clientx.WriteByte(y)
				clientx.WriteShort(maps[x, y].rndwert)
				If maps[x, y].mybase Then
					clientx.WriteByte(1)
				Else
					clientx.WriteByte(0)
				End If
				clientx.WriteByte(maps[x, y].myastro)
			Next
		Next
	End Method
	
	
	Function Create:Sworld()
		Local nworld:Sworld = New Sworld
		Sworld.list.AddLast(nworld)
		
		snetworld[nworld.id] = nworld
		
		For Local y:Int = 0 To 49
			For Local x:Int = 0 To 49
				nworld.maps[x, y] = Smap.Create(nworld, x, y)
			Next
		Next
		
		Return nworld
	End Function
	
	Function Load(t:String)
		Local file:TStream = ReadFile("world\" + t)

		If file Then
		
			Local world:Sworld = Sworld.Create()
			Local map_x:Int, map_y:Int, name:String, map_range:Int, map_mass:Int, map_id:Int
			While Not Eof(file)
				Local line:String = ReadLine(file)
				Local lineA:String[] = line.Split("=")
				If lineA.Length = 1 Then
					Select line
						Case "[base]"
							world.maps[map_x, map_y].mybase = Sbase.Create(map_id, 0, 0, 0, name, world, world.maps[map_x, map_y])
							world.maps[map_x, map_y].baselist.AddLast(world.maps[map_x, map_y].mybase)
						Case "[astrobelt]"
							For Local x:Int = 0 To 49
								For Local y:Int = 0 To 49
									Local weite:Float = Sqr((map_x - x) ^ 2 + (map_y - y) ^ 2)
									If weite <= map_range Then world.maps[x, y].myastro = map_mass
								Next
							Next
						
					End Select
				End If
				
				If lineA.Length = 2 Then
					Select lineA[0].ToLower()
							'[COPYME 2/3]
						Case "id"
							map_id = lineA[1].ToInt()
						Case "x"
							map_x = lineA[1].ToInt()
						Case "y"
							map_y = lineA[1].ToInt()
						Case "range"
							map_range = lineA[1].ToInt()
						Case "mass"
							map_mass = lineA[1].ToInt()
						Case "name"
							name = lineA[1]
						Case "systemname"
							world.myname = lineA[1]
						Case "systemid"
							world.id = lineA[1].ToInt()
							SeedRnd(world.id)
							For Local x:Int = 0 To 49
								For Local y:Int = 0 To 49
									world.maps[map_x, map_y].rndwert = Rand(0, 65534)
								Next
							Next
					End Select
					'Print(lineA[0] + "  -  " + lineA[1])
				End If
			Wend
			CloseStream file
			
			Print("System geladen: " + world.myname)
			
		EndIf
	End Function
	
	Function ScanDir()
		Local dir:Int = ReadDir("world")

		If dir Then
		
			Repeat
				Local t:String = NextFile(dir)
				If t="" Exit
				If t="." Or t=".." Continue
				If t.EndsWith(".world") Then Sworld.Load(t)
			Forever
			
			CloseDir dir
		EndIf
		
	End Function
	
End Type

Type Smap
	'&&&& Basic fields
	'[system]
	Global ids:Short
	Global list:TList = CreateList()
	Field id:Short, delme:Byte = True
	'[map and world]
	Field inworld:Sworld
	'&&&& 
	Field deltimer:Int
	
	Field myx:Byte, myy:Byte
	Field myastro:Byte
	
	Field mybase:Sbase
	
	Field rndwert:Short
	
	Field playerlist:TList = CreateList()
	Field enemylist:TList = CreateList()
	Field astrolist:TList = CreateList()
	Field baselist:TList = CreateList()
	
	
	Function Create:Smap(xworld:Sworld, x:Byte, y:Byte)
		Local nmap:Smap = New Smap
		Smap.list.AddLast(nmap)
		
		nmap.id = ids ;ids:+1
		snetmap[nmap.id] = nmap
		
		nmap.myx = x
		nmap.myy = y
		
		nmap.inworld = xworld
		
		Return nmap
	End Function
	
End Type