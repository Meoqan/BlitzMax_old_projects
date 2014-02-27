Type Tships
	Field shipdata:Tshiptype
	Field anzahl:Int
	Field dmg:Float
	
	Method calc_hit:Int(overalldmg:Float, overallships:Float, overallsig:Float)
		Local ownsig:Float = anzahl * shipdata.signatur
		Local owndmg:Float = (ownsig / overallsig) * overalldmg
		
		Local ownreddmg:Float = owndmg - ((owndmg * shipdata.armor) / 100)
		ownreddmg:+dmg
		Local shiplost:Int = ownreddmg / shipdata.HP
		'add_message("ownreddmg> " + ownreddmg)
		dmg = ownreddmg - (shiplost * shipdata.HP)
		
		anzahl:-shiplost
		
		Return shiplost
	End Method
	
	Method calc_dmg:Int()
		Return anzahl * shipdata.dmg
	End Method
	
	Method calc_sig:Int()
		Return anzahl * shipdata.signatur
	End Method
	
	Method calc_scan:Int()
		Return anzahl * shipdata.scanner
	End Method
	
EndType
Global shipslist:TList = CreateList()

Function add_ships(npt:Tplatoon, sd:Tshiptype, nanzahl:Int)
	Local nships:Tships = New Tships
	npt.shipslist.AddLast(nships)
	npt.ships:+nanzahl
	nships.shipdata = sd
	nships.anzahl = nanzahl
End Function