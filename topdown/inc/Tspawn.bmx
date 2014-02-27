Type Tspawn
	Global list:TList = CreateList()
	
	Field category:Int
	Field x:Float, y:Float, z:Float
	Field numbers:Int
	Field map:String
	Field lenght:Float
	Field winkel:Float
	Field key:String
	
	Function loadmap(file:String)
		
		list.Clear()
	
		Local str:TStream = ReadFile("maps\" + file + ".dat")
		mapname = file
		
		While Not str.Eof()
			Local line:String = str.ReadLine()
			
			If line.Length > 0 Then
				Local spl1:String[] = line.Split("=")
				Select spl1[0]
					Case "map"
						If mapmesh Then mapmesh.FreeEntity()
						mapmesh = LoadMesh("maps\" + spl1[1])
						ScaleMesh(mapmesh, 10, 10, 10)
						EntityType(mapmesh, 2)
					Case "zombie"
						Local spl2:String[] = spl1[1].Split(",")
						If spl2.Length = 3 Then
							Local nspawn:Tspawn = New Tspawn
							list.AddLast(nspawn)
							nspawn.category = 1
							nspawn.x = spl2[0].ToFloat()
							nspawn.z = spl2[1].ToFloat()
							nspawn.numbers = spl2[2].ToInt()
						End If
					Case "tele"
						Local spl2:String[] = spl1[1].Split(",")
						If spl2.Length = 3 Then
							Local nspawn:Tspawn = New Tspawn
							list.AddLast(nspawn)
							nspawn.category = 2
							nspawn.x = spl2[0].ToFloat()
							nspawn.z = spl2[1].ToFloat()
							nspawn.map = spl2[2]
						End If
					Case "door"
						Local spl2:String[] = spl1[1].Split(",")
						If spl2.Length = 5 Then
							Local nspawn:Tspawn = New Tspawn
							list.AddLast(nspawn)
							nspawn.category = 3
							nspawn.x = spl2[0].ToFloat()
							nspawn.z = spl2[1].ToFloat()
							nspawn.lenght = spl2[2].ToFloat()
							nspawn.winkel = spl2[3].ToFloat()
							nspawn.key = spl2[4]
						End If
					Case "key"
						Local spl2:String[] = spl1[1].Split(",")
						If spl2.Length = 3 Then
							Local nspawn:Tspawn = New Tspawn
							list.AddLast(nspawn)
							nspawn.category = 4
							nspawn.x = spl2[0].ToFloat()
							nspawn.z = spl2[1].ToFloat()
							nspawn.key = spl2[2]
						End If
				End Select
			EndIf
		WEnd
		str.Close()
		
	End Function
	
	Function spawn()
		Tzombie.Clear()
		Ttele.clear()
		TBullet.clear()
		Tblood.clear()
		Tdoor.clear()
		Tkey.clear()
		Tplayer.clear()
		Thub.clear()
		
		For Local wspawn:Tspawn = EachIn list
			Select wspawn.category
				Case 1 'zombie
					Thub.Create(wspawn.x, 0, wspawn.z, wspawn.numbers)
					'For Local x:Int = 1 To wspawn.numbers
					'	Tzombie.Create(wspawn.x, wspawn.z, Rand(0, 1))
					'Next
				Case 2 ' teleport
					Ttele.Create(wspawn.x, wspawn.z, wspawn.map)
				Case 3 'door
					Tdoor.Create(wspawn.x, wspawn.z, wspawn.lenght, wspawn.winkel, wspawn.key)
				Case 4 'key
					Tkey.Create(wspawn.x, wspawn.z, wspawn.key)
			End Select
		Next
	End Function

EndType
