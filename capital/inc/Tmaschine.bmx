Rem
	bbdoc:Tmaschine
End Rem
Type Tmaschine
	Global ids:Int = 1
	
	Field id:Short
	Field name:String
	
	Field vonprodukt:Tprodukt
	Field zuprodukt:Tprodukt
	
	Method work:Int(lager:Tlager, anzahl:Int)
		Local inlager:Int = lager.isin_lager(vonprodukt)
		Local verarbeitet:Int
		If inlager > 0 Then
			If inlager >= anzahl Then
				lager.remove_lager(vonprodukt, anzahl)
				lager.addto_lager(zuprodukt, anzahl)
				verarbeitet = anzahl
			Else
				lager.remove_lager(vonprodukt, inlager)
				lager.addto_lager(zuprodukt, inlager)
				verarbeitet = inlager
			End If
		End If
		Return verarbeitet
	End Method
	
End Type
Global maschinelist:TList = CreateList()




Function add_maschine:Tmaschine()
	Local maschine:Tmaschine = New Tmaschine
	maschinelist.AddLast(maschine)
	maschine.id = maschine.ids
	maschine.ids:+1
	Return maschine
End Function

Local nmaschine:Tmaschine


nmaschine = add_maschine()
Global maschine001:Tmaschine = nmaschine
nmaschine.name = "Bandsaege"
nmaschine.vonprodukt = prod001
nmaschine.zuprodukt = prod002