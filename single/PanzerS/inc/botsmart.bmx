

Global thesmartarray:Tbot[1000], thesmartNOW:Int = -2, thesmartlist:TList = CreateList()

Function Main_smart(main_all_botlist:TList)
	If thesmartNOW = -2 Then
		For Local tsx:Int = 0 To 999
			thesmartarray[tsx] = Null
		Next
		Local nrs:Int = 0
		For Local thesmartbot:Tbot = EachIn main_all_botlist
			thesmartarray[nrs] = thesmartbot
			nrs = nrs + 1
			If nrs > 998 Then Exit
		Next
		If nrs <> 0 Then thesmartNOW = -1
	Else
		thesmartlist.Clear()
		For Local x:Int = 0 To 3
			thesmartNOW = thesmartNOW + 1
			If thesmartarray[thesmartNOW] <> Null Then
				thesmartlist.AddLast(thesmartarray[thesmartNOW])
			Else
				thesmartNOW = -2 ; Exit
			End If
			If thesmartNOW > 998 Then thesmartNOW = -2 ; Exit
		Next
	End If
End Function


Function Work_smart(cTbotT:Tbot)
	For Local eTbotT:Tbot = EachIn thesmartlist
			If cTbotT <> eTbotT Then
				If Sqr((eTbotT.tank.x - cTbotT.tank.x) ^ 2 + (eTbotT.tank.y - cTbotT.tank.y) ^ 2) < 600 Then
					If cTbotT.seelist.Contains(eTbotT) Then
						'nix
					Else
						cTbotT.seelist.AddLast(eTbotT)
					EndIf
				Else
					If cTbotT.seelist.Contains(eTbotT) Then
						cTbotT.seelist.Remove(eTbotT)
					Else
						'nix
					EndIf
				EndIf
			EndIf
		Next
End Function