Rem
	bbdoc:Tfabrik
End Rem
Type Tfabrik
	Global ids:Int = 1
	
	Field id:Short

	Field m3:Int, usedm3:Int
	
	Field job:Tjob[0]
	Field lager:Tlager
	
	Method work()
		
		If job.Length > 0 Then

			For Local x:Int = 0 To job.Length - 1
					
				job[x].work(lager)
				
			Next
			If job[0].status = 2 Then usedm3:-job[0].anzahlmaschienen ; job = job[1..] ; Return
			If job[job.Length - 1].status = 2 Then usedm3:-job[job.Length - 1].anzahlmaschienen ; job = job[..job.Length - 1]
		EndIf
		
	End Method
	
	Method addjob(amaschine:Tmaschine, aanzahlmaschienen:Int, amenge:Int)
		job = job[..job.Length + 1]
		job[job.Length - 1] = New Tjob
		job[job.Length - 1].id = job[job.Length - 1].ids
		job[job.Length - 1].ids:+1
	
		job[job.Length - 1].menge = amenge
		job[job.Length - 1].maschine = amaschine
		job[job.Length - 1].anzahlmaschienen = aanzahlmaschienen
	End Method
	
End Type
Global fabriklist:TList = CreateList()

Function add_fabrik:Tfabrik(nlager:Tlager, nm3:Int = 1)
	Local fabrik:Tfabrik = New Tfabrik
	fabriklist.AddLast(fabrik)
	fabrik.id = fabrik.ids
	fabrik.ids:+1
	fabrik.lager = nlager
	fabrik.m3 = nm3
	Return fabrik
End Function






Rem
	bbdoc:Tjob
End Rem
Type Tjob
	Global ids:Int = 1
	
	Field id:Short
	
	Field status:Short
	
	Field aktuell:Int, menge:Int
	
	Field anzahlmaschienen:Int
	
	Field maschine:Tmaschine
	
	Method work(lager:Tlager)
		If status <= 1 Then
			Local fehlt:Int = menge - aktuell
			Local tempaktuell:Int = aktuell
			If anzahlmaschienen > fehlt Then
				aktuell:+maschine.work(lager, fehlt)
			Else
				aktuell:+maschine.work(lager, anzahlmaschienen)
			EndIf
			If tempaktuell = aktuell Then status = 1 Else status = 0
			If aktuell >= menge Then status = 2
		EndIf
	End Method
End Type


