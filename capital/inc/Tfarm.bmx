Rem
	bbdoc:Tfarm
End Rem
Type Tfarm
	Global ids:Int = 1
	
	Field id:Short

	Field m3:Int
	
	Field quelle:Tquelle
	Field lager:Tlager
	
	Method work()
		lager.addto_lager(quelle.produkt, 1 * m3)
	End Method
	
End Type
Global farmlist:TList = CreateList()

Function add_farm:Tfarm(nquelle:Tquelle, nlager:Tlager, nm3:Int = 1)
	Local farm:Tfarm = New Tfarm
	farmlist.AddLast(farm)
	farm.id = farm.ids
	farm.ids:+1
	farm.quelle = nquelle
	farm.lager = nlager
	farm.m3 = nm3
	Return farm
End Function