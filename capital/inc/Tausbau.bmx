Rem
	bbdoc:Tausbau
End Rem
Type Tausbau
	Global ids:Int = 1
	
	Field id:Short
	
	Field status:Short

	Field m3:Int, aktuell:Int
	
	Field fabrik:Tfabrik
	Field farm:Tfarm
	
	Method work()
		If status <= 1 Then
			aktuell:+4
			If aktuell >= m3 Then
				status = 2
				If fabrik Then fabrik.m3:+m3
				If farm Then farm.m3:+m3
			EndIf
		EndIf
		
		If status = 2 Then ausbaulist.Remove(Self)
	End Method
	
End Type
Global ausbaulist:TList = CreateList()

Function add_ausbau:Tausbau(nfabrik:Tfabrik = Null, nfarm:Tfarm = Null, nm3:Int = 1)
	Local check:Byte
	If nfabrik = Null Then check:+1
	If nfarm = Null Then check:+1
	If check = 0 Or check = 2 Then RuntimeError("add_ausbau() synatax error")
	Local ausbau:Tausbau = New Tausbau
	ausbaulist.AddLast(ausbau)
	ausbau.id = ausbau.ids
	ausbau.ids:+1
	ausbau.fabrik = nfabrik
	ausbau.farm = nfarm
	ausbau.m3 = nm3
	Return ausbau
End Function
