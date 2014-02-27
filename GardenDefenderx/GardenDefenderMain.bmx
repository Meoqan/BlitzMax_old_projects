SuperStrict
SeedRnd MilliSecs()
AutoMidHandle(1)
Include "Includes\Globals.bmx"

SetGraphicsDriver D3D9Max2DDriver()

Graphics(igfxWidth, igfxHeight)

SetBlend(ALPHABLEND)

SetImageFont(LoadImageFont("Courier New", 12, SMOOTHFONT))

Global FTimer:TTimer = CreateTimer(60)
Global msc:Int
Global lasttime:Int = MilliSecs()
Global time:Int = MilliSecs()

Global playerImage:TImage = LoadAnimImage("Data\player.png", 32, 48, 0, 3)

Global tiTileImage:TImage = LoadImage("Data\mudtile.png")
Global tiTileImage3:TImage = LoadImage("Data\grass01.png")
Global tiTileImage2:TImage = LoadImage("Data\hecke.png") ; tiTileImage2.handle_y = 32

Global stuff:TImage[10]

stuff[0] = LoadImage("Data\grass01.png")
stuff[1] = LoadImage("Data\stonetile.png")
stuff[2] = LoadImage("Data\mudtile.png")
stuff[3] = LoadImage("Data\flower.png")
stuff[4] = LoadImage("Data\flower2.png")
stuff[5] = LoadImage("Data\flower3.png")
stuff[6] = LoadImage("Data\hecke.png") ; stuff[5].handle_y = 32
stuff[7] = LoadImage("Data\hecke2.png") ; stuff[6].handle_y = 32
stuff[8] = LoadImage("Data\rhecke.png")
stuff[9] = LoadImage("Data\busch.png")

Global pground:TImage = stuff[0], pobj:TImage = stuff[3]

Type Tfeld
	Field ground:TImage, obj:TImage
End Type

Global map:Tfeld[30, 22]
Global inter:Byte

For Local ix:Int = 0 Until iMapXSizeGFX
	For Local iy:Int = 0 Until iMapYSizeGFX
		map[ix, iy] = New Tfeld
		map[ix, iy].ground = tiTileImage3
	Next
Next
Global anim:Int, animx:Int
Repeat
	WaitTimer(FTimer)
	lasttime = time
	time = MilliSecs()
	msc = time - lasttime

	If KeyHit(KEY_Q) Then pground = stuff[0]
	If KeyHit(KEY_W) Then pground = stuff[1]
	If KeyHit(KEY_E) Then pground = stuff[2]
	If KeyHit(KEY_R) Then pground = Null
	If KeyHit(KEY_A) Then pobj = stuff[3]
	If KeyHit(KEY_S) Then pobj = stuff[4]
	If KeyHit(KEY_D) Then pobj = stuff[5]
	If KeyHit(KEY_F) Then pobj = stuff[6]
	If KeyHit(KEY_G) Then pobj = stuff[7]
	If KeyHit(KEY_H) Then pobj = stuff[8]
	If KeyHit(KEY_J) Then pobj = stuff[9]
	If KeyHit(KEY_K) Then pobj = Null
	
	If KeyHit(KEY_Y) Then inter = 1 - inter
	Cls
	DrawMapGFX()
	If inter Then
		Local mx:Int = (MouseX() - iXOffSetGFX) / 32.0
		Local my:Int = (MouseY() - iYOffSetGFX) / 32.0
		SetAlpha(0.2)
		If mx >= 0 And mx < 30 And my >= 0 And my < 22 Then
			DrawRect((mx * 32) + 32, (my * 32) + 32, 32, 32)
			If MouseDown(1) Then map[mx, my].ground = pground
			If MouseDown(2) Then map[mx, my].obj = pobj
		EndIf
	
		reset_draw()
		SetColor(0, 0, 0)
		DrawRect(0, igfxHeight - 152, 520, 200)
		SetColor(255, 255, 255)
		If pground Then DrawImage(pground, 32, igfxHeight - 128)
		if pobj Then DrawImage(pobj, 96, igfxHeight - 128)
		
		For Local x:Int = 0 To 9
			DrawImage(stuff[x], 32 + (x * 48), igfxHeight - 32)
		Next
	EndIf
	Flip 0
	
Until (KeyHit(KEY_1) Or AppTerminate())

Function DrawMapGFX()
	For Local ix:Int = 0 Until iMapXSizeGFX
		For Local iy:Int = 0 Until iMapYSizeGFX
			If map[ix, iy].ground Then DrawImage(map[ix, iy].ground, ix * iTilesizeGFX + iXOffSetGFX, iy * iTilesizeGFX + iYOffSetGFX)
		Next
	Next
	For Local ix:Int = 0 Until iMapXSizeGFX
		For Local iy:Int = 0 Until iMapYSizeGFX
			If map[ix, iy].obj Then DrawImage(map[ix, iy].obj, ix * iTilesizeGFX + iXOffSetGFX, iy * iTilesizeGFX + iYOffSetGFX)
		Next
	Next
	For Local ix:Int = 0 Until iMapXSizeObj
		For Local iy:Int = 0 Until iMapYSizeObj
			'DrawImage(tiGrid, ix * iTilesizeObj + iXOffSetObj, iy * iTilesizeObj + iYOffSetObj)
		Next
	Next
	
End Function

Function reset_draw()
	SetRotation(0)
	SetColor(255, 255, 255)
	SetHandle(0.0, 0.0)
	SetAlpha(1.0)
	SetScale(1.0, 1.0)
	SetOrigin(0.0, 0.0)
End Function

Function calc_move:Float(speed:Float)
	Return ((speed * Float(msc) / 100.0))
End Function