Rem
	bbdoc:Tplayer
End Rem
Type Tplayer
	Global ids:Int = 1
	
	Field id:Short
	
	Field status:Short

	Field money:Int
	
	Field lager:Tlager
	Field farm:Tfarm[0]
	Field fabrik:Tfabrik[0]
	Field fabrikposlist:TList = CreateList()
	
	Method addmy_lager()
		lager = add_lager()
	End Method
	
	Method addmy_farm(aquelle:Tquelle, anzahl:Int)
		farm = farm[..farm.Length + 1]
		farm[farm.Length - 1] = add_farm(aquelle, lager, anzahl)
	End Method
	
	Method addmy_fabrik(anzahl:Int)
		fabrik = fabrik[..fabrik.Length + 1]
		fabrik[fabrik.Length - 1] = add_fabrik(lager, anzahl)
	End Method
	
	Method checklist()
		fabrikposlist.Clear()
		For Local masch:Tmaschine = EachIn maschinelist
			If lager.isin_lager(masch.vonprodukt) Then fabrikposlist.AddLast(masch)
		Next
	End Method
	
End Type
Global playerlist:TList = CreateList()

Function add_player:Tplayer(nmoney:Int)
	Local player:Tplayer = New Tplayer
	playerlist.AddLast(player)
	player.id = player.ids
	player.ids:+1
	player.money = nmoney
	Return player
End Function