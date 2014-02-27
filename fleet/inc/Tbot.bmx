Type Tbot
	Field status:Int, botalertlist:TList = CreateList()
	
	Field platoonbotlist:TList = CreateList()
	
	
	
	Method work()
		Select status
			Case 0'standart
				For Local gplatoon:Tplatoon = EachIn platoonbotlist
					If gplatoon.botstatus = 0 Then 'set target
						gplatoon.botsettarget(Rnd(- 500, 500), Rnd(- 500, 500))
						gplatoon.botstatus = 1
						
					ElseIf gplatoon.botstatus = 1 Then 'wait for warp
						If gplatoon.phase = 1 Then
							'ueberwache sicht und botalertlist
						ElseIf gplatoon.phase = 2 Then
							gplatoon.botstatus = 2
						End If
						
					ElseIf gplatoon.botstatus = 2 Then 'inwarp
						If gplatoon.movec = False Then
							gplatoon.botstatus = 3
							gplatoon.bottime = Rand(15000, 60000)
						End If
						
					ElseIf gplatoon.botstatus = 3 Then 'wait or fight
						If gplatoon.bottime > 0 Then
							gplatoon.bottime:-msc
						Else
							gplatoon.botstatus = 0
						EndIf
						
					EndIf
					If gplatoon.botchksee() Then
						Local alertt:Talert = createalert(gplatoon.x, gplatoon.y, 1)
						If alertt Then botalertlist.AddLast(alertt)
					EndIf
					If gplatoon.ships = 0 Then platoonbotlist.Remove(gplatoon)
				Next
		End Select
	End Method
	
	Method add_tobot(plat:Tplatoon)
		platoonbotlist.AddLast(plat)
	End Method
	
EndType
Global botlist:TList = CreateList()

Function add_bot:Tbot()
	Local nbot:Tbot = New Tbot
	botlist.AddLast(nbot)
	Return nbot
End Function

