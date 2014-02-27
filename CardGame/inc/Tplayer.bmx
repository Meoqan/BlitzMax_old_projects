Type Tplayer
	Field color:Int
	Field cards:TList = CreateList()
	
	Function Create:Tplayer(color:Int)
		Local newplayer:Tplayer = New Tplayer
		
		newplayer.color = color
		
		Return newplayer
	End Function
	
	Method clear()
		cards.clear()
	End Method
	
	Method fillhand()
		For Local x:Int = 0 To 4
			Local card:Tcard = Tcard.CreateCard(color)
			cards.AddLast(card)
		Next
	End Method
	
	Method move_to_hand()
		Local y:Int
		If color = 1 Then
			For Local card:Tcard = EachIn cards
				card.move_card(0, y * 110)
				card.save_card()
				y:+1
			Next
		End If
		If color = 0 Then
			For Local card:Tcard = EachIn cards
				card.move_card(850, y * 110)
				card.save_card()
				y:+1
			Next
		End If
	End Method
	
EndType