
Rem
	bbdoc:Tprodukt
End Rem
Type Tprodukt
	Global ids:Int = 1
	
	Field id:Short
	Field name:String
	
	
End Type
Global produktlist:TList = CreateList()

Function add_produkt:Tprodukt()
	Local prod:Tprodukt = New Tprodukt
	produktlist.AddLast(prod)
	prod.id = prod.ids
	prod.ids:+1
	Return prod
End Function

Local nprod:Tprodukt


nprod = add_produkt()
Global prod001:Tprodukt = nprod
nprod.name = "Baumstamm"

nprod = add_produkt()
Global prod002:Tprodukt = nprod
nprod.name = "Kantholz"

