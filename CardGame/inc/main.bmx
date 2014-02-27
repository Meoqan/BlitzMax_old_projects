SeedRnd MilliSecs()

Global screenx:Float = 1024
Global screeny:Float = 768
Global pointx:Float = screenx / 2.0
Global pointy:Float = screeny / 2.0

SetGraphicsDriver GLMax2DDriver()

AppTitle = "Cardgame v0.0"
Global fenster:TGraphics = Graphics(screenx, screeny,,, GRAPHICS_BACKBUFFER | GRAPHICS_ALPHABUFFER)

SetBlend(ALPHABLEND)

Global player_red:Tplayer = Tplayer.Create(0)
Global player_blue:Tplayer = Tplayer.Create(1)



Global gfx_card_deckung:TImage = LoadImage("gfx/card-deckung.png")
Global gfx_card_ruecken:TImage = LoadImage("gfx/card-ruecken.png")
Global gfx_card_farbe:TImage = LoadImage("gfx/card-farbe.png")




Global game_mode:Int
Global win:Int

Global mh1:Int, md1:Int

Global msctimer:Int

Global msc:Int
Global lasttime:Int = MilliSecs()
Global time:Int = MilliSecs()
'HideMouse()
While Not AppTerminate()
	lasttime = time
	time = MilliSecs()
	msc = time - lasttime
	If msc > 500 Then msc = 500
	
	Cls
	
	reset_draw()
	
	mh1 = MouseHit(1)
	md1 = MouseDown(1)
	
	Select game_mode
		Case 0
			player_red.fillhand()
			player_blue.fillhand()
			
			player_red.move_to_hand()
			player_blue.move_to_hand()
			
			game_mode = 1
		Case 1
			Tcard.dragndrop(md1)
	
			Tgamefield.draw()
			
			Tcard.draw()
			
			win = Tgamefield.check_win()
			If win > 0 Then game_mode = 2
		Case 2
			If win = 1 Then DrawText("Player red won", 512, 350)
			If win = 2 Then DrawText("Player blue won", 512, 350)
			If win = 3 Then DrawText("undecided", 512, 350)
			
			If mh1 Then game_mode = 3
		Case 3
			player_red.clear()
			player_blue.clear()
			
			Tcard.clear()
			
			Tgamefield.clear()
			
			game_mode = 0
	End Select
	
	
	
	Flip(1)
Wend

End

Function reset_draw()
	SetRotation(0)
	SetColor(255, 255, 255)
	SetHandle(0.0, 0.0)
	SetAlpha(1.0)
	SetScale(1.0, 1.0)
	SetOrigin(0.0, 0.0)
End Function

Function calc_move:Float(speed:Float)
	If speed <> 0 Then Return ((speed * Float(msc) / 100.0)) Else Return 0
End Function

Function calc_keymove:Float(entferung:Float, timing:Float)
	If entferung <> 0 And timing > 0 Then Return ((entferung / timing) * Float(msc)) Else Return 0
End Function

Function ismouseover:Byte(x:Int, y:Int, l:Int, w:Int)
	If x < MouseX() And x + l > MouseX() And y < MouseY() And y + w > MouseY() Then Return 1 Else Return 0
End Function

Function entferung:Float(x1:Float, y1:Float, x2:Float, y2:Float)
	Return Sqr((x1 - x2) ^ 2 + (y1 - y2) ^ 2)
End Function

Function winkel:Float(x1:Float, y1:Float, x2:Float, y2:Float)
	Return ATan2(y2 - y1, x2 - x1)
End Function

Function turmzuziel:Float(turmwinkel:Float, zielwinkel:Float, drehspeed:Float)
	Local totalwinkel:Float = turmwinkel - zielwinkel + 180
	While totalwinkel < - 180
		totalwinkel = totalwinkel + 360
	Wend
	While totalwinkel > 180
		totalwinkel = totalwinkel - 360
	Wend
	Local bufftore:Float, test:Int = 0
	If totalwinkel > drehspeed Then bufftore = -drehspeed ; test = 1
	If totalwinkel < - drehspeed Then bufftore = drehspeed ; test = 1
	If test = 0 Then bufftore = -totalwinkel
	Return bufftore
End Function

Function turmtoterwinkel:Int(turmwinkel:Float, zielwinkel:Float, drehschalter:Float)
	Local totalwinkel:Float = turmwinkel - zielwinkel + 180
	While totalwinkel < - 180
		totalwinkel = totalwinkel + 360
	Wend
	While totalwinkel > 180
		totalwinkel = totalwinkel - 360
	Wend
	Local bufftore:Int, test:Int = 0
	If totalwinkel > drehschalter Then test = 1
	If totalwinkel < - drehschalter Then test = 1
	If test = 0 Then bufftore = 1
	Return bufftore
End Function