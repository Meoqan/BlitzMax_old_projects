SeedRnd MilliSecs()

Global screenx:Float = 1024
Global screeny:Float = 768
Global pointx:Float = screenx / 2.0
Global pointy:Float = screeny / 2.0

SetGraphicsDriver GLMax2DDriver()

AppTitle = "sss"
Global fenster:TGraphics = Graphics(screenx, screeny,,, GRAPHICS_BACKBUFFER | GRAPHICS_ALPHABUFFER)

SetBlend(ALPHABLEND)

Global GAME_STATE:Int

Type Tres
	Global pship1:TImage = Tres.midimg(LoadImage("gfx/pship1.png"))
	Global rocket01:TImage = Tres.midimg(LoadImage("gfx/rocket01.png"))
	
	Global ship01:TImage = Tres.midimg(LoadImage("gfx/ship01.png"))
	Global ship02:TImage = Tres.midimg(LoadImage("gfx/ship02.png"))
	Global ship03:TImage = Tres.midimg(LoadImage("gfx/ship03.png"))
	Global ship04:TImage = Tres.midimg(LoadImage("gfx/ship04.png"))
	Global ship05:TImage = Tres.midimg(LoadImage("gfx/ship05.png"))
	Global ship06:TImage = Tres.midimg(LoadImage("gfx/ship06.png"))
	Global ship07:TImage = Tres.midimg(LoadImage("gfx/ship07.png"))
	Global ship08:TImage = Tres.midimg(LoadImage("gfx/ship08.png"))
	
	Global explosion:TImage = tres.midimg(LoadImage("gfx/explosion.png"))
	
	Function midimg:TImage(img:TImage)
		img.handle_x = img.width / 2.0
		img.handle_y = img.height / 2.0
		Return img
	End Function
EndType


Type Tscreen
	Global vx:Float, vy:Float
	Global nvx:Float, nvy:Float
	
	Function getx:Float()
		Return vx - pointx
	End Function
	Function gety:Float()
		Return vy - pointy - (pointy / 1.5)
	End Function
	
	Function follow(x:Float, y:Float)
		nvx = calc_move(x - vx) / 5.0
		nvy = calc_move(y - vy) / 5.0
		vx:+nvx
		vy:+nvy
	End Function
	
	Function reset()
		vx = 0
		vy = 0
		nvx = 0
		nvy = 0
	End Function
End Type



Tstar.Fillup()



Global mh1:Int

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
	
	Select GAME_STATE
		Case 0 'menu
		
			GAME_STATE = 1
		Case 1 'build level
		
			Tpolythrust.cleanup()
			Thold.shoot.cleanup()
			Thold.enemy.cleanup()
			Tplayer.cleanup()
			Tscreen.reset()
			
			Tgamemap.Create(500, 2000, 50, 1)
		
			
			GAME_STATE = 2
		Case 2 'game
		
			Tplayer.move()
			Thold.enemy.allwork()
			Thold.shoot.allwork()
			Tgamemap.work()
			
			Tstar.Workdown(Tscreen.nvx, Tscreen.nvy)
			Tgamemap.render()
			Tpolythrust.Draw()
			Thold.shoot.allrender()
			Thold.enemy.allrender()
			Tplayer.draw()
			Tstar.Worktop(Tscreen.nvx, Tscreen.nvy)
			
		Case 3 'resetgame
			DrawText("Hit mouse button left.", 0, 0)
			If mh1 Then GAME_STATE = 0
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