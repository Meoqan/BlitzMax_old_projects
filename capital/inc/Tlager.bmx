
Rem
	bbdoc:Tlager
End Rem
Type Tlager
	Global ids:Int = 1
	
	Field id:Short
	
	Field lager:Tprodukt[0]
	Field stueck:Int[0]
	
	Method addto_lager(in:Tprodukt, anzahl:Short)
		
		If stueck.Length > 0 Then
			For Local x:Int = 0 To stueck.Length - 1
				If lager[x] = in Then stueck[x]:+anzahl ; Return
			Next
		EndIf
		
		lager = lager[..stueck.Length + 1]
		stueck = stueck[..stueck.Length + 1]
		
		lager[stueck.Length - 1] = in
		stueck[stueck.Length - 1]:+anzahl
	End Method
	
	Method isin_lager:Int(isin:Tprodukt)
		If stueck.Length > 0 Then
			For Local x:Int = 0 To stueck.Length - 1
				If lager[x] = isin Then Return stueck[x]
			Next
		EndIf
		Return False
	End Method
	
	Method remove_lager:Byte(remo:Tprodukt, anzahl:Short)
		If stueck.Length > 0 Then
			For Local x:Int = 0 To stueck.Length - 1
				If lager[x] = remo Then If stueck[x] >= anzahl Then stueck[x]:-anzahl ; Return True
			Next
		EndIf
		Return False
	End Method
	
End Type
Global lagerlist:TList = CreateList()



Function add_lager:Tlager()
	Local lager:Tlager = New Tlager
	lagerlist.AddLast(lager)
	lager.id = lager.ids
	lager.ids:+1
	Return lager
End Function

