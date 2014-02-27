Type Tcard
	Field x:Float, y:Float
	Field old_x:Float, old_y:Float
	Field f_x:Int, f_y:Int
	
	Field dmg_o:Int, dmg_u:Int, dmg_r:Int, dmg_l:Int
	Field s_dmg_o:String, s_dmg_u:String, s_dmg_r:String, s_dmg_l:String
	Field dmg_o_x:Float, dmg_u_x:Float, dmg_r_x:Float, dmg_l_x:Float
	Field dmg_o_y:Float, dmg_u_y:Float, dmg_r_y:Float, dmg_l_y:Float
	
	Field color:Int
	Field played:Int
	Global list:TList = CreateList()
	
	Function clear()
		list.clear()
	End Function
	
	Method save_card()
		old_x = x
		old_y = y
	End Method
	
	Method reset_card()
		x = old_x
		y = old_y
	End Method
	
	Method move_card(mx:Float, my:Float)
		x = mx
		y = My
	End Method
	
	Function CreateCard:Tcard(color:Int)
		Local newcard:Tcard = New Tcard
		list.AddLast(newcard)
		
		newcard.color = color
		newcard.dmg_o = Rand(200, 1000)
		newcard.dmg_u = Rand(200, 1000)
		newcard.dmg_r = Rand(200, 1000)
		newcard.dmg_l = Rand(200, 1000)
		
		newcard.s_dmg_o = newcard.dmg_o
		newcard.s_dmg_u = newcard.dmg_u
		newcard.s_dmg_r = newcard.dmg_r
		newcard.s_dmg_l = newcard.dmg_l
		
		newcard.s_dmg_o.s
		
		Return newcard
	End Function
	
	Function draw()
		For Local card:Tcard = EachIn list
			reset_draw()
			
			DrawImage(gfx_card_ruecken, card.x, card.y)
			
			If ismouseover(card.x, card.y, 100, 100)
				If card.color = 0 Then SetColor(255, 50, 50)
				If card.color = 1 Then SetColor(50, 50, 255)
			Else
				If card.color = 0 Then SetColor(255, 0, 0)
				If card.color = 1 Then SetColor(0, 0, 255)
			End If
			
			'DrawImage(gfx_card_farbe, card.x, card.y)
			'SetColor(255, 255, 255)
			
			DrawImage(gfx_card_deckung, card.x, card.y)
			'DrawRect(card.x, card.y, 100, 100)
			SetColor(255, 255, 255)
			
			DrawText(card.dmg_o, card.x + 50, card.y + 25)
			DrawText(card.dmg_r, card.x + 75, card.y + 50)
			DrawText(card.dmg_u, card.x + 50, card.y + 75)
			DrawText(card.dmg_l, card.x + 25, card.y + 50)
		Next
	End Function
	
	Global draged_card:Tcard
	Function dragndrop(md:Int)
		
		If md Then
			If draged_card = Null Then
				For Local card:Tcard = EachIn list
					If card.played = False Then
						If ismouseover(card.x, card.y, 100, 100)
							
							draged_card = card
						End If
					EndIf
				Next
			Else
				draged_card.move_card(MouseX() - 50, MouseY() - 50)
			
			End If
		Else
			If draged_card Then
				If Not Tgamefield.drop_card(draged_card) Then draged_card.reset_card()
			EndIf
			draged_card = Null
		End If
	End Function
	
End Type