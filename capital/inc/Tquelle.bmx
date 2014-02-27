
Rem
	bbdoc:Tquelle
End Rem
Type Tquelle
	Global ids:Int = 1
	
	Field id:Short
	Field name:String
	
	Field produkt:Tprodukt
	
End Type
Global quellelist:TList = CreateList()




Function add_quelle:Tquelle()
	Local quelle:Tquelle = New Tquelle
	quellelist.AddLast(quelle)
	quelle.id = quelle.ids
	quelle.ids:+1
	Return quelle
End Function

Local nquelle:Tquelle


nquelle = add_quelle()
Global quelle001:Tquelle = nquelle
nquelle.name = "Forstwald"
nquelle.produkt = prod001
