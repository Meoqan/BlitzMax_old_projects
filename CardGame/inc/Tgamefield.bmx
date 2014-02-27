Type Tgamefield
	Global x:Float = 200, y:Float = 100
	Global field_card:Tcard[3, 3]
	Global player_onmove:Int = Rand(0, 1)
	
	Function check_win:Int()
		Local full:Int
		Local red:Int
		Local blue:Int
		
		For Local fx:Int = 0 To 2
			For Local fy:Int = 0 To 2
				If field_card[fx, fy] Then
					full:+1
					If field_card[fx, fy].color = 0 Then red:+1
					If field_card[fx, fy].color = 1 Then blue:+1
				EndIf
			Next
		Next
		If full = 9 Then
			If red = blue Then Return 3
			If red > blue Then Return 1 Else Return 2
		EndIf
	End Function
	
	Function clear()
		For Local fx:Int = 0 To 2
			For Local fy:Int = 0 To 2
				field_card[fx, fy] = Null
			Next
		Next
		
		player_onmove = Rand(0, 1)
	End Function
	
	Function draw()
		reset_draw()
		
		If player_onmove Mod 2 Then
			SetColor(0, 0, 126)
		Else
			SetColor(126, 0, 0)
		End If
		DrawRect(x, y, 620, 620)
		
		reset_draw()
		SetColor(255, 255, 255)
		SetAlpha(0.5)
		
		DrawRect(x + 0, y + 0, 200, 200)
		DrawRect(x + 0, y + 210, 200, 200)
		DrawRect(x + 0, y + 420, 200, 200)
		
		DrawRect(x + 210, y + 0, 200, 200)
		DrawRect(x + 210, y + 210, 200, 200)
		DrawRect(x + 210, y + 420, 200, 200)
		
		DrawRect(x + 420, y + 0, 200, 200)
		DrawRect(x + 420, y + 210, 200, 200)
		DrawRect(x + 420, y + 420, 200, 200)
		
		
		
	End Function
	
	Function drop_card:Int(card:Tcard)
		Local player_color:Int = player_onmove Mod 2
		If card.color = player_color Then
			
		
			For Local fx:Int = 0 To 2
				For Local fy:Int = 0 To 2
					If (((fx * 210) + x) < card.x) And (((fx * 210) + x + 100) > card.x) Then
						If (((fy * 210) + y) < card.y) And (((fy * 210) + y + 100) > card.y) Then
							If field_card[fx, fy] = Null Then
								field_card[fx, fy] = card
								
								card.move_card(((fx * 210) + x + 50), ((fy * 210) + y + 50))
								card.save_card()
								
								card.played = True
								player_onmove:+1
								
								'oben
								If fy - 1 >= 0 Then
								 	If field_card[fx, fy - 1] <> Null Then
								 		If field_card[fx, fy].dmg_o > field_card[fx, fy - 1].dmg_u Then
									 		field_card[fx, fy - 1].color = field_card[fx, fy].color
										End If
									End If
								End If
								'unten
								If fy + 1 <= 2 Then
								 	If field_card[fx, fy + 1] <> Null Then
								 		If field_card[fx, fy].dmg_u > field_card[fx, fy + 1].dmg_o Then
									 		field_card[fx, fy + 1].color = field_card[fx, fy].color
										End If
									End If
								End If
								'rechts
								If fx + 1 <= 2 Then
								 	If field_card[fx + 1, fy] <> Null Then
								 		If field_card[fx, fy].dmg_r > field_card[fx + 1, fy].dmg_l Then
									 		field_card[fx + 1, fy].color = field_card[fx, fy].color
										End If
									End If
								End If
								'links
								If fx - 1 >= 0 Then
								 	If field_card[fx - 1, fy] <> Null Then
								 		If field_card[fx, fy].dmg_l > field_card[fx - 1, fy].dmg_r Then
									 		field_card[fx - 1, fy].color = field_card[fx, fy].color
										End If
									End If
								End If
								Return True
							End If
						EndIf
					EndIf
				Next
			Next
		End If
		Return False
	End Function
	
EndType