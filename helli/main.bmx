SeedRnd MilliSecs()

Global screenx:Float = 1024
Global screeny:Float = 768
Global split20x:Float = screenx / 5.0
Global split20y:Float = screeny / 5.0
Global pointx:Float = screenx / 2.0
Global pointy:Float = screeny / 2.0

SetGraphicsDriver D3D7Max2DDriver()
AppTitle = "maptest"
Global fenster:TGraphics = Graphics(screenx, screeny)


SetBlend(ALPHABLEND)
init_boostMax2D(D3D7Max2DDriver())

SetImageFont(LoadImageFont("Courier New", 12, SMOOTHFONT))

'imagestuff

'temp globals
Global tex1:TImage = LoadImage("gfx\tile.png")
Global tex2:TImage = LoadImage("gfx\light.png")

Global pfeil1:TImage = LoadImage("gfx\pfeil.png")
pfeil1.handle_x = pfeil1.width / 2.0
pfeil1.handle_y = pfeil1.height / 2.0


'mouseglobals
Global md1:Int, mh1:Int, md2:Int, mh2:Int
Global omx:Int, omy:Int
'globals

Global V_rotate:Float = 0
Global sys_map:Byte[21, 21]
Global chocke:Int
Global flops:Int
Global eflops:Int

Type Tplayer
	Field x:Float, y:Float
End Type
Global player:Tplayer = New Tplayer

Global msc:Int
Global lasttime:Int = MilliSecs()
Global time:Int = MilliSecs()
'HideMouse()
While Not (KeyHit(KEY_ESCAPE) Or AppTerminate())
	'get time differance
	lasttime = time
	time = MilliSecs()
	msc = time - lasttime
	
	Cls
	
	md1 = MouseDown(1) ; mh1 = MouseHit(1)
	md2 = MouseDown(2) ; mh2 = MouseHit(2)
	omx = MouseX() ; omy = MouseY()
	
	
	chocke:+msc
	If chocke > 2000 Then
		chocke:-2000
		
		flops = 0
		eflops = 0
		
		For Local x2:Float = 0 To 20
			For Local y2:Float = 0 To 20
				If sys_map[x2, y2] = 11 Then sys_map[x2, y2] = 1
				If sys_map[x2, y2] = 22 Then sys_map[x2, y2] = 2
				
				If sys_map[x2, y2] = 1 Then flops:+1
				If sys_map[x2, y2] = 2 Then eflops:+1
			Next
		Next
		
		'Local ratio:Float = Float(flops) / Float(eflops)
		'Local eratio:Float = Float(eflops) / Float(flops)
		
		Local ratio:Float = flops
		Local eratio:Float = eflops
		
		For Local x2:Float = 0 To 20
			For Local y2:Float = 0 To 20
				If sys_map[x2, y2] = 2 Then
					Local x:Int = x2 + 1
					Local y:Int = y2
					If x >= 0 And x <= 20 And y >= 0 And y <= 20 And (sys_map[x, y] = 0 Or sys_map[x, y] = 11) Then sys_map[x, y] = 22
					If x >= 0 And x <= 20 And y >= 0 And y <= 20 And roll(eratio) And sys_map[x, y] = 1 Then sys_map[x, y] = 22
					x = x2
					y = y2 + 1
					If x >= 0 And x <= 20 And y >= 0 And y <= 20 And (sys_map[x, y] = 0 Or sys_map[x, y] = 11) Then sys_map[x, y] = 22
					If x >= 0 And x <= 20 And y >= 0 And y <= 20 And roll(eratio) And sys_map[x, y] = 1 Then sys_map[x, y] = 22
					x = x2 - 1
					y = y2
					If x >= 0 And x <= 20 And y >= 0 And y <= 20 And (sys_map[x, y] = 0 Or sys_map[x, y] = 11) Then sys_map[x, y] = 22
					If x >= 0 And x <= 20 And y >= 0 And y <= 20 And roll(eratio) And sys_map[x, y] = 1 Then sys_map[x, y] = 22
					x = x2
					y = y2 - 1
					If x >= 0 And x <= 20 And y >= 0 And y <= 20 And (sys_map[x, y] = 0 Or sys_map[x, y] = 11) Then sys_map[x, y] = 22
					If x >= 0 And x <= 20 And y >= 0 And y <= 20 And roll(eratio) And sys_map[x, y] = 1 Then sys_map[x, y] = 22
				End If
				If sys_map[x2, y2] = 1 Then
					Local x:Int = x2 + 1
					Local y:Int = y2
					If x >= 0 And x <= 20 And y >= 0 And y <= 20 And (sys_map[x, y] = 0 Or sys_map[x, y] = 22) Then sys_map[x, y] = 11
					If x >= 0 And x <= 20 And y >= 0 And y <= 20 And roll(ratio) And sys_map[x, y] = 2 Then sys_map[x, y] = 11
					x = x2
					y = y2 + 1
					If x >= 0 And x <= 20 And y >= 0 And y <= 20 And (sys_map[x, y] = 0 Or sys_map[x, y] = 22) Then sys_map[x, y] = 11
					If x >= 0 And x <= 20 And y >= 0 And y <= 20 And roll(ratio) And sys_map[x, y] = 2 Then sys_map[x, y] = 11
					x = x2 - 1
					y = y2
					If x >= 0 And x <= 20 And y >= 0 And y <= 20 And (sys_map[x, y] = 0 Or sys_map[x, y] = 22) Then sys_map[x, y] = 11
					If x >= 0 And x <= 20 And y >= 0 And y <= 20 And roll(ratio) And sys_map[x, y] = 2 Then sys_map[x, y] = 11
					x = x2
					y = y2 - 1
					If x >= 0 And x <= 20 And y >= 0 And y <= 20 And (sys_map[x, y] = 0 Or sys_map[x, y] = 22) Then sys_map[x, y] = 11
					If x >= 0 And x <= 20 And y >= 0 And y <= 20 And roll(ratio) And sys_map[x, y] = 2 Then sys_map[x, y] = 11
				End If
			Next
		Next
		
		
	End If
	
	sys_map[0, 0] = 2
	sys_map[20, 20] = 2
	reset_draw()

	
	
	If KeyDown(KEY_A) Then V_rotate:+calc_move(15)
	If KeyDown(KEY_D) Then V_rotate:-calc_move(15)
	
	If KeyDown(KEY_W) Then player.x = player.x + Cos(V_rotate - 90) * calc_move(15) ; player.y = player.y + Sin(V_rotate - 90) * calc_move(15)
	If KeyDown(KEY_S) Then player.x = player.x - Cos(V_rotate - 90) * calc_move(15) ; player.y = player.y - Sin(V_rotate - 90) * calc_move(15)
	
	If KeyHit(KEY_E) Then
		Local x:Int = (-player.x + 320) / 32.0
		Local y:Int = (player.y + 320) / 32.0
		If x >= 0 And x <= 20 And y >= 0 And y <= 20 Then sys_map[x, y] = 11
	EndIf
	
	SetRotation(V_rotate)
	
	Local V_r:Float = -ATan2((player.x), (player.y)) + 180
	
	Local V_entferung:Float = Sqr((player.x) ^ 2 + (player.y) ^ 2)
	
	Local V_x:Float = Cos(V_rotate - V_r - 90) * V_entferung
	Local V_y:Float = Sin(V_rotate - V_r - 90) * V_entferung
	
	SetAlpha(0.2)
	
	Local tri:Float[]
	For Local x:Float = -10 To 10
		For Local y:Float = -10 To 10
			
			tri = [x * 32, y * 32, x * 32 + 32, y * 32, x * 32 + 32, y * 32 + 32, x * 32, y * 32 + 32]
			DrawPolyImage(tex1, tri, pointx - V_x, (screeny - split20y) - V_y)

		Next
	Next
	
	
	SetAlpha(1)
	SetBlend(LIGHTBLEND)
	SetColor(255, 0, 0)
	
	For Local x:Float = -10 To 10
		SetAlpha(0.25 + ((Sin((x * 45) + (time / 5.0)) + 1.0) / 4.0))
		
		For Local y:Float = -10 To 10
			'SetColor(((Sin((y * 22.5) + (time / 5.0)) + 1.0) / 2.0) * 255, ((Sin((y * 45) + (time / 5.0)) + 1.0) / 2.0) * 255, ((Sin((y * 67.5) + (time / 5.0)) + 1.0) / 2.0) * 255)
			
			If sys_map[x + 10, y + 10] = 0 Then SetColor(255, 255, 255)
			If sys_map[x + 10, y + 10] = 1 Then SetColor(0, 255, 0)
			If sys_map[x + 10, y + 10] = 2 Then SetColor(255, 0, 0)
			
			If sys_map[x + 10, y + 10] = 11 Then SetColor(125, 255, 125)
			If sys_map[x + 10, y + 10] = 22 Then SetColor(255, 125, 125)
			
			tri = [x * 32, y * 32, x * 32 + 32, y * 32, x * 32 + 32, y * 32 + 32, x * 32, y * 32 + 32]
			DrawPolyImage(tex2, tri, pointx - V_x, (screeny - split20y) - V_y)

		Next
	Next
	
	SetBlend(ALPHABLEND)
	
	rem
	reset_draw()

	SetColor(155, 155, 155)
	DrawRect(10, 10, 200, 200)
	SetColor(255, 255, 255)
	DrawRect(110 + (player.x / 10) - 1, 110 + (player.y / 10) - 1, 2, 2)
	endrem
	
	
	reset_draw()
	
	'DrawRect(pointx + (Cos(V_rotate - 90) * 32) - 1, pointy + (Sin(V_rotate - 90) * 32) - 1, 2, 2)
	DrawRect(pointx - 5, (screeny - split20y) - 5, 10, 10)
	SetRotation(V_rotate)
	DrawImage(pfeil1, 120, screeny - 120)
	
	reset_draw()

	DrawText("FPS: " + Int(1000.0 / msc) + "  MSC: " + msc, 10, 10)
	DrawText("Flops: " + flops, 10, 50)
	DrawText("eFlops: " + eflops, 10, 60)
	DrawText("Ratio: " + (Float(flops) / Float(eflops)), 10, 70)
	DrawText("eRatio: " + (Float(eflops) / Float(flops)), 10, 80)
	
	Flip(0)
Wend

End



Function roll:Byte(ratio:Float)
	If ratio > 0 Then
		If Rand(0, 882.0 / ratio) = 0 Then Return True
	End If
	Return False
End Function













