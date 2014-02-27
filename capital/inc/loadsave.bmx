
Function savedata()
	Local file:TStream = WriteFile("data/totaldb.dat")

	If Not file Then RuntimeError "failed to write test.txt file"
	
	file.WriteLine("[overallDB]")
	
	'Tausbau
	file.WriteLine("[Tausbau]")
	For Local sausbau:Tausbau = EachIn ausbaulist
		file.WriteLine( ..
		sausbau.id + "%" + ..
		sausbau.status + "%" + ..
		sausbau.farm.id + "%" + ..
		sausbau.fabrik.id + "%" + ..
		sausbau.aktuell + "%" + ..
		sausbau.m3)
	Next
	
	'Tfabrik
	
	'Tfarm
	
	'Tlager
	
	'Tmaschine
	
	'Tplayer
	
	'produkt
	
	'Tquelle
	
	
	file.Close()
End Function

Function loaddata()

End Function