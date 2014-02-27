Type Splayerindex
	Global list:TList = CreateList(), ids:Int
	Field id:Int
	Field login:String, passwort:String
	Field dateiname:String
	
	Function Create:Splayerindex(name:String, passwort:String)
		For Local ply:Splayerindex = EachIn list
			If ply.login = name Then Return Null
		Next
		
		Local ply:Splayerindex = New Splayerindex
		list.AddLast(ply)
		
		ply.id = ids ; ids:+1
		ply.login = name
		ply.passwort = passwort
		ply.dateiname = ply.id + ".ply"
		
		Save()
		
		Return ply
	End Function
	
	Function check:Splayerindex(name:String, password:String)
		For Local ply:Splayerindex = EachIn list
			If ply.login = name And ply.passwort = password Then Return ply
		Next
	End Function
	
	Function Load()
		If FileType("player.dat") <> 1 Then Return
		
		Local f:TStream = ReadFile("player.dat")
		
		If f Then
			
			Local ply:Splayerindex
			While Not Eof(f)
				Local line:String = ReadLine(f)
				Local lineA:String[] = line.Split("=")
				If lineA.Length = 1 Then
					Select lineA[0]
						Case "[PLAYER]"
							ply = New Splayerindex
							list.AddLast(ply)
					End Select
				End If
				If lineA.Length = 2 Then
					Select lineA[0].ToLower()
						Case "ids"
							ids = lineA[1].ToInt()
						Case "id"
							ply.id = lineA[1].ToInt()
						Case "name"
							ply.login = lineA[1]
						Case "passwort"
							ply.passwort = lineA[1]
						Case "dateiname"
							ply.dateiname = lineA[1]
					End Select
					'Print(lineA[0] + "  -  " + lineA[1])
				End If
			Wend
		
			f.Close()
		End If
	End Function
	
	Function Save()
		Local f:TStream = WriteFile("player.dat")
		
		If f Then
			f.WriteLine("ids=" + ids)
			For Local ply:Splayerindex = EachIn list
				f.WriteLine("[PLAYER]")
				f.WriteLine("id=" + ply.id)
				f.WriteLine("name=" + ply.login)
				f.WriteLine("passwort=" + ply.passwort)
				f.WriteLine("dateiname=" + ply.dateiname)
			Next
			
			f.Close()
		End If
	End Function
	
End Type

Function loadplayer:Byte(dateiname:String, player:Splayer)
	If FileType("accounts/" + dateiname) <> 1 Then Return 0
	
	Local f:TStream = ReadFile("accounts/" + dateiname)
		
	If f Then
			Local itemid:Int, itemamount:Int
			While Not Eof(f)
				Local line:String = ReadLine(f)
				Local lineA:String[] = line.Split("=")
				If lineA.Length = 1 Then
					Select lineA[0]
						Case "[xxxx]"
							
					End Select
				End If
				If lineA.Length = 2 Then
					Select lineA[0].ToLower()
						Case "shipid"
							Local shid:Int = lineA[1].ToInt()
							player.shipID = shid
							player.ship = Sship.Create(shid, player)
							player.ship.cargo = Scargo.Create(player.ship.para.maxcargo)
						Case "buildshipid"
							player.baseshipbulding = lineA[1].ToInt() - 1
						Case "buildshiptimer"
							player.baseshipbuildtimer = lineA[1].ToInt()
						Case "shipitemid"
							itemid = lineA[1].ToInt()
						Case "shipitemamount"
							itemamount = lineA[1].ToInt()
							player.ship.cargo.additem(itemid, itemamount)
						Case "baseitemid"
							itemid = lineA[1].ToInt()
						Case "baseitemamount"
							itemamount = lineA[1].ToInt()
							player.basecargo.additem(itemid, itemamount)
						Case "baseid"
							Local bid:Short = lineA[1].ToInt()
							player.baseID = snetbase[bid].id
							player.base = snetbase[bid]
					End Select
					'Print(lineA[0] + "  -  " + lineA[1])
				End If
			Wend
	
		f.Close()
	Else
		Return 0
	End If
	Return 1
End Function

Function saveplayer:Byte(dateiname:String, player:Splayer)

	Local f:TStream = WriteFile("accounts/" + dateiname)
		
	If f Then
		f.WriteLine("shipid=" + player.shipID)
		f.WriteLine("buildshipid=" + (player.baseshipbulding + 1))
		f.WriteLine("buildshiptimer=" + player.baseshipbuildtimer)
		f.WriteLine("baseid=" + player.lastbase)
		For Local items:Sitem = EachIn player.ship.cargo.itemlist
			f.WriteLine("shipitemid=" + items.itemC.id)
			f.WriteLine("shipitemamount=" + items.menge)
		Next
		For Local items:Sitem = EachIn player.basecargo.itemlist
			f.WriteLine("baseitemid=" + items.itemC.id)
			f.WriteLine("baseitemamount=" + items.menge)
		Next
	
		f.Close()
	Else
		Return 0
	End If
	Return 1
End Function
