SeedRnd MilliSecs()

Global screenx:Float = 1024
Global screeny:Float = 768
Global split20x:Float = screenx / 5.0
Global pointx:Float = screenx / 2.0
Global pointy:Float = screeny / 2.0

SetGraphicsDriver D3D7Max2DDriver()
AppTitle = "maptest"
Global fenster:TGraphics = Graphics(screenx, screeny)


SetBlend(ALPHABLEND)
init_boostMax2DD7(D3D7Max2DDriver())

SetImageFont(LoadImageFont("Courier New", 12, SMOOTHFONT))

'imagestuff

'temp globals

Global tilesize:Float = 48
Global tilesize2x:Float = tilesize * 2.0
Global tilesize05x:Float = tilesize / 2.0

Global tile:TImage = LoadImage("tile.png")

Global tex1:TImage = LoadImage("tex1.png")
Global tex2:TImage = LoadImage("tex2.png")
Global tex3:TImage = LoadImage("tex3.png")

Global t01:TImage = LoadImage("t01.png")
Global obj01:TImage = LoadImage("obj01.png")
Global obj02:TImage = LoadImage("obj02.png")

Global tankspin:Byte

Global tempvx:Int, tempvy:Int

Global verx:Int, very:Int

Global selectedx:Int, selectedy:Int, selected:Int
Global VerTile:Int[i2]

Global drawlines:Int = False

Type Tmapdata
	Field p1:Int, p2:Int, p3:Int, p4:Int
	Field r:Byte = i255, g:Byte = i255, b:Byte = i255
	Field tex:TImage = tex1
	Field obj:TImage
End Type


Global mapdata:Tmapdata[i150, i150]
Global oneside:Int = Sqr(mapdata.Length) - i5

For Local y:Int = i0 To i149
	For Local x:Int = i0 To i149
		mapdata[x, y] = New Tmapdata
	Next
Next


For Local ty:Int = i5 To i140
	tempvx = i0
	For Local tx:Int = i5 To i140
		Local color:Int = i0

		
		setTile(tx, ty, color)
		getVerTile(tx, ty, - i1, - i1)
		setTile(VerTile[i0], VerTile[i1], color)
		getVerTile(tx, ty, i0, - i1)
		setTile(VerTile[i0], VerTile[i1], color)
		getVerTile(tx, ty, - i1, i0)
		setTile(VerTile[i0], VerTile[i1], color)
		
		mapdata[tx, ty].r = i150
		mapdata[tx, ty].g = i90
		mapdata[tx, ty].b = i0

	Next
Next


rem
For Local y:Int = 5 To 140 Step 2
	tempvx = 0
	For Local x:Int = 5 To 140 Step 2
		Local color:Int = 0
		
		Local tx:Int = x, ty:Int = y
		
		If tempvx Then getVerTile(x, y, - 1, 1) ; tx = VerTile[0] ; ty = VerTile[1]
		
		setTile(tx, ty, color)
		getVerTile(tx, ty, - 1, - 1)
		setTile(VerTile[0], VerTile[1], color)
		getVerTile(tx, ty, 0, - 1)
		setTile(VerTile[0], VerTile[1], color)
		getVerTile(tx, ty, - 1, 0)
		setTile(VerTile[0], VerTile[1], color)
		
		mapdata[tx, ty].r = 150
		mapdata[tx, ty].g = 90
		mapdata[tx, ty].b = 0
		
		
		mapdata[tx, ty].obj = obj02
		If tempvx Then tempvx = 0 Else tempvx = 1
	Next
Next

endrem
		
'mouseglobals
Global md1:Int, mh1:Int, md2:Int, mh2:Int
Global omx:Int, omy:Int
'globals
Global tick:Int = 1000
Global prodtick:Int

Global msc:Int
Global lasttime:Int = MilliSecs()
Global time:Int = MilliSecs()
'HideMouse()
While Not (KeyHit(KEY_ESCAPE) Or AppTerminate())
	'get time differance
	lasttime = time
	time = MilliSecs()
	msc = time - lasttime
	
	prodtick:+msc
	
	If prodtick > tick Then
		prodtick = 0
	
		For Local wbuild:Tbuild = EachIn buildlist
			wbuild.work()
		Next
		mapdata[20, 20].obj = tanktemp001.image[tankspin]
		tankspin:+1
		If tankspin > 7 Then tankspin = 0
	End If
	
	Cls
	
	md1 = MouseDown(i1) ; mh1 = MouseHit(i1)
	md2 = MouseDown(i2) ; mh2 = MouseHit(i2)
	
	reset_draw()
	'DrawRect(0, 0, 1024, 768)
	
	If md2 = i1 Then
		If omx = -i1 Then omx = MouseX()
		If omy = -i1 Then omy = MouseY()
		verx:-omx - MouseX()
		very:-omy - MouseY()
		omx = MouseX()
		omy = MouseY()
	Else
		omx = -i1
		omy = -i1
	EndIf
	
	
	tempvx = i0
	tempvy = i0
	selected = i0
	'SetAlpha(0.5)
	SetColor(i0, i150, i0)
	
	Local mvx:Int = Int(- verx / tilesize2x) * i2
	Local mvy:Int = Int(- very / tilesize2x) * i2
	
	Local tsx:Int = Int((- verx + MouseX()) / tilesize)
	Local tsy:Int = Int((- very + MouseY()) / tilesize)
	
	For Local y:Int = mvy - i2 To mvy + i28
		tempvx = mvx
		While tempvx > i1 ; tempvx:-i2 ; Wend
		While tempvx < i0 ; tempvx:+i2 ; Wend
			

		For Local x:Int = mvx - i2 To mvx + i34 Step 2
			
		
			Local p1x:Float = verx + (x * tilesize)
			Local p1y:Float = very + (y * tilesize) + (tempvx * tilesize05x) - tilesize05x
			
			Local p2x:Float = verx + (x * tilesize) + tilesize
			Local p2y:Float = very + (y * tilesize) + (tempvx * tilesize05x)
			
			Local p3x:Float = verx + (x * tilesize)
			Local p3y:Float = very + (y * tilesize) + (tempvx * tilesize05x) + tilesize05x
			
			Local p4x:Float = verx + (x * tilesize) - tilesize
			Local p4y:Float = very + (y * tilesize) + (tempvx * tilesize05x)
			
			Local tri:Float[]
			Local colordata:Int[4]
			
			If x > i1 And y > i1 And x < oneside And y < oneside Then
				tri = [p1x, p1y - (mapdata[x, y].p1 * i16), p2x, p2y - (mapdata[x, y].p2 * i16), p3x, p3y - (mapdata[x, y].p3 * i16), p4x, p4y - (mapdata[x, y].p4 * i16)]
				Local cdat1:Byte Ptr = Varptr(colordata[0])
				cdat1[0] = mapdata[x, y].b + (mapdata[x, y].p1 * i20)
				cdat1[1] = mapdata[x, y].g + (mapdata[x, y].p1 * i20)
				cdat1[2] = mapdata[x, y].r + (mapdata[x, y].p1 * i20)
				cdat1[3] = 255
				Local cdat2:Byte Ptr = Varptr(colordata[1])
				cdat2[0] = mapdata[x, y].b + (mapdata[x, y].p2 * i20)
				cdat2[1] = mapdata[x, y].g + (mapdata[x, y].p2 * i20)
				cdat2[2] = mapdata[x, y].r + (mapdata[x, y].p2 * i20)
				cdat2[3] = 255
				Local cdat3:Byte Ptr = Varptr(colordata[2])
				cdat3[0] = mapdata[x, y].b + (mapdata[x, y].p3 * i20)
				cdat3[1] = mapdata[x, y].g + (mapdata[x, y].p3 * i20)
				cdat3[2] = mapdata[x, y].r + (mapdata[x, y].p3 * i20)
				cdat3[3] = 255
				Local cdat4:Byte Ptr = Varptr(colordata[3])
				cdat4[0] = mapdata[x, y].b + (mapdata[x, y].p4 * i20)
				cdat4[1] = mapdata[x, y].g + (mapdata[x, y].p4 * i20)
				cdat4[2] = mapdata[x, y].r + (mapdata[x, y].p4 * i20)
				cdat4[3] = 255
			Else
				tri = [p1x, p1y, p2x, p2y, p3x, p3y, p4x, p4y]
			EndIf
			
			If x > i1 And y > i1 And x < oneside And y < oneside Then
				SetColor(mapdata[x, y].r, mapdata[x, y].g, mapdata[x, y].b)
			Else
				SetColor(i100, i100, i100)
			EndIf
			
			If tsx = x And tsy = y Then SetColor(i100, i100, i255)
			rem
			getVerTile(tsx, tsy, 1, 0)
			If VerTile[0] = x And VerTile[1] = y Then SetColor(255, 0, 0)
			getVerTile(tsx, tsy, 0, 1)
			If VerTile[0] = x And VerTile[1] = y Then SetColor(0, 255, 0)
			getVerTile(tsx, tsy, - 1, 0)
			If VerTile[0] = x And VerTile[1] = y Then SetColor(255, 0, 0)
			getVerTile(tsx, tsy, 0, - 1)
			If VerTile[0] = x And VerTile[1] = y Then SetColor(0, 255, 0)
			
			getVerTile(tsx, tsy, 1, 1)
			If VerTile[0] = x And VerTile[1] = y Then SetColor(255, 255, 0)
			getVerTile(tsx, tsy, 1, - 1)
			If VerTile[0] = x And VerTile[1] = y Then SetColor(255, 255, 0)
			getVerTile(tsx, tsy, - 1, 1)
			If VerTile[0] = x And VerTile[1] = y Then SetColor(255, 255, 0)
			getVerTile(tsx, tsy, - 1, - 1)
			If VerTile[0] = x And VerTile[1] = y Then SetColor(255, 255, 0)
			endrem
			If x > i1 And y > i1 And x < oneside And y < oneside Then
				DrawPolyImage7(mapdata[x, y].tex, tri,,, , colordata)
				If tsx = x And tsy = y Then SetColor(i100, i100, i255) ; DrawPolyImage7(mapdata[x, y].tex, tri)
				If drawlines Then
					SetColor(0, 0, 0)
					DrawLine(tri[0], tri[1], tri[2], tri[3])
					DrawLine(tri[2], tri[3], tri[4], tri[5])
					DrawLine(tri[4], tri[5], tri[6], tri[7])
					DrawLine(tri[6], tri[7], tri[0], tri[1])
				EndIf
				SetColor(i255, i255, i255)
				If mapdata[x, y].obj Then DrawImage(mapdata[x, y].obj, p3x - (mapdata[x, y].obj.width / f2), p3y - (mapdata[x, y].p3 * i16) - mapdata[x, y].obj.height)
			Else
				DrawPolyImage7(tex1, tri)
				If drawlines Then
					SetColor(0, 0, 0)
					DrawLine(tri[0], tri[1], tri[2], tri[3])
					DrawLine(tri[2], tri[3], tri[4], tri[5])
					DrawLine(tri[4], tri[5], tri[6], tri[7])
					DrawLine(tri[6], tri[7], tri[0], tri[1])
				EndIf
			EndIf
			
			
		Next
		If tempvx Then tempvx = i0 Else tempvx = i1
		For Local tx:Int = mvx - i2 To mvx + i34 Step 2
			Local x:Int = tx + i1
			
			
			Local p1x:Float = verx + (x * tilesize)
			Local p1y:Float = very + (y * tilesize) + (tempvx * tilesize05x) - tilesize05x
			
			Local p2x:Float = verx + (x * tilesize) + tilesize
			Local p2y:Float = very + (y * tilesize) + (tempvx * tilesize05x)
			
			Local p3x:Float = verx + (x * tilesize)
			Local p3y:Float = very + (y * tilesize) + (tempvx * tilesize05x) + tilesize05x
			
			Local p4x:Float = verx + (x * tilesize) - tilesize
			Local p4y:Float = very + (y * tilesize) + (tempvx * tilesize05x)
			
			Local tri:Float[]
			Local colordata:Int[4]
			
			If x > i1 And y > i1 And x < oneside And y < oneside Then
				tri = [p1x, p1y - (mapdata[x, y].p1 * i16), p2x, p2y - (mapdata[x, y].p2 * i16), p3x, p3y - (mapdata[x, y].p3 * i16), p4x, p4y - (mapdata[x, y].p4 * i16)]
				Local cdat1:Byte Ptr = Varptr(colordata[0])
				cdat1[0] = mapdata[x, y].b + (mapdata[x, y].p1 * i20)
				cdat1[1] = mapdata[x, y].g + (mapdata[x, y].p1 * i20)
				cdat1[2] = mapdata[x, y].r + (mapdata[x, y].p1 * i20)
				cdat1[3] = 255
				Local cdat2:Byte Ptr = Varptr(colordata[1])
				cdat2[0] = mapdata[x, y].b + (mapdata[x, y].p2 * i20)
				cdat2[1] = mapdata[x, y].g + (mapdata[x, y].p2 * i20)
				cdat2[2] = mapdata[x, y].r + (mapdata[x, y].p2 * i20)
				cdat2[3] = 255
				Local cdat3:Byte Ptr = Varptr(colordata[2])
				cdat3[0] = mapdata[x, y].b + (mapdata[x, y].p3 * i20)
				cdat3[1] = mapdata[x, y].g + (mapdata[x, y].p3 * i20)
				cdat3[2] = mapdata[x, y].r + (mapdata[x, y].p3 * i20)
				cdat3[3] = 255
				Local cdat4:Byte Ptr = Varptr(colordata[3])
				cdat4[0] = mapdata[x, y].b + (mapdata[x, y].p4 * i20)
				cdat4[1] = mapdata[x, y].g + (mapdata[x, y].p4 * i20)
				cdat4[2] = mapdata[x, y].r + (mapdata[x, y].p4 * i20)
				cdat4[3] = 255
			Else
				tri = [p1x, p1y, p2x, p2y, p3x, p3y, p4x, p4y]
			EndIf
			
			If x > i1 And y > i1 And x < oneside And y < oneside Then
				SetColor(mapdata[x, y].r, mapdata[x, y].g, mapdata[x, y].b)
			Else
				SetColor(i100, i100, i100)
			EndIf
			
			
			rem
			getVerTile(tsx, tsy, 1, 0)
			If VerTile[0] = x And VerTile[1] = y Then SetColor(255, 0, 0)
			getVerTile(tsx, tsy, 0, 1)
			If VerTile[0] = x And VerTile[1] = y Then SetColor(0, 255, 0)
			getVerTile(tsx, tsy, - 1, 0)
			If VerTile[0] = x And VerTile[1] = y Then SetColor(255, 0, 0)
			getVerTile(tsx, tsy, 0, - 1)
			If VerTile[0] = x And VerTile[1] = y Then SetColor(0, 255, 0)
			
			getVerTile(tsx, tsy, 1, 1)
			If VerTile[0] = x And VerTile[1] = y Then SetColor(255, 255, 0)
			getVerTile(tsx, tsy, 1, - 1)
			If VerTile[0] = x And VerTile[1] = y Then SetColor(255, 255, 0)
			getVerTile(tsx, tsy, - 1, 1)
			If VerTile[0] = x And VerTile[1] = y Then SetColor(255, 255, 0)
			getVerTile(tsx, tsy, - 1, - 1)
			If VerTile[0] = x And VerTile[1] = y Then SetColor(255, 255, 0)
			endrem
			
			If x > i1 And y > i1 And x < oneside And y < oneside Then
				DrawPolyImage7(mapdata[x, y].tex, tri,,, , colordata)
				If tsx = x And tsy = y Then SetColor(i100, i100, i255) ; DrawPolyImage7(mapdata[x, y].tex, tri)
				If drawlines Then
					SetColor(0, 0, 0)
					DrawLine(tri[0], tri[1], tri[2], tri[3])
					DrawLine(tri[2], tri[3], tri[4], tri[5])
					DrawLine(tri[4], tri[5], tri[6], tri[7])
					DrawLine(tri[6], tri[7], tri[0], tri[1])
				EndIf
				SetColor(i255, i255, i255)
				If mapdata[x, y].obj Then DrawImage(mapdata[x, y].obj, p3x - (mapdata[x, y].obj.width / f2), p3y - (mapdata[x, y].p3 * i16) - mapdata[x, y].obj.height)
			Else
				DrawPolyImage7(tex1, tri)
				If drawlines Then
					SetColor(0, 0, 0)
					DrawLine(tri[0], tri[1], tri[2], tri[3])
					DrawLine(tri[2], tri[3], tri[4], tri[5])
					DrawLine(tri[4], tri[5], tri[6], tri[7])
					DrawLine(tri[6], tri[7], tri[0], tri[1])
				EndIf
			EndIf
			
			
		Next
	Next
	
	If mh1 And tsx > i1 And tsy > i1 And tsx <= i147 And tsy <= i147 Then
		'setTile(tsx, tsy, 0)
		add_build(tsx, tsy, contemp001)
		
	End If
	
	If KeyDown(KEY_A) And tsx > i1 And tsy > i1 And tsx <= i147 And tsy <= i147 Then
		setTile(tsx, tsy, i0)
		getVerTile(tsx, tsy, - i1, - i1)
		setTile(VerTile[i0], VerTile[i1], i0)
		getVerTile(tsx, tsy, i0, - i1)
		setTile(VerTile[i0], VerTile[i1], i0)
		getVerTile(tsx, tsy, - i1, i0)
		setTile(VerTile[i0], VerTile[i1], i0)
	End If
	
	If KeyDown(KEY_S) And tsx > i1 And tsy > i1 And tsx <= i147 And tsy <= i147 Then
		setTile(tsx, tsy, i1)
		getVerTile(tsx, tsy, - i1, - i1)
		setTile(VerTile[i0], VerTile[i1], i1)
		getVerTile(tsx, tsy, i0, - i1)
		setTile(VerTile[i0], VerTile[i1], i1)
		getVerTile(tsx, tsy, - i1, i0)
		setTile(VerTile[i0], VerTile[i1], i1)
	End If
	
	If KeyDown(KEY_D) And tsx > i1 And tsy > i1 And tsx <= i147 And tsy <= i147 Then
		setTile(tsx, tsy, i2)
		getVerTile(tsx, tsy, - i1, - i1)
		setTile(VerTile[i0], VerTile[i1], i2)
		getVerTile(tsx, tsy, i0, - i1)
		setTile(VerTile[i0], VerTile[i1], i2)
		getVerTile(tsx, tsy, - i1, i0)
		setTile(VerTile[i0], VerTile[i1], i2)
	End If
	
	If KeyDown(KEY_F) And tsx > i1 And tsy > i1 And tsx <= i147 And tsy <= i147 Then
		setTile(tsx, tsy, i3)
		getVerTile(tsx, tsy, - i1, - i1)
		setTile(VerTile[i0], VerTile[i1], i3)
		getVerTile(tsx, tsy, i0, - i1)
		setTile(VerTile[i0], VerTile[i1], i3)
		getVerTile(tsx, tsy, - i1, i0)
		setTile(VerTile[i0], VerTile[i1], i3)
	End If
	
	If KeyDown(KEY_G) And tsx > i1 And tsy > i1 And tsx <= i147 And tsy <= i147 Then
		setTile(tsx, tsy, i4)
		getVerTile(tsx, tsy, - i1, - i1)
		setTile(VerTile[i0], VerTile[i1], i4)
		getVerTile(tsx, tsy, i0, - i1)
		setTile(VerTile[i0], VerTile[i1], i4)
		getVerTile(tsx, tsy, - i1, i0)
		setTile(VerTile[i0], VerTile[i1], i4)
	End If
	
	If KeyDown(KEY_W) And tsx > i1 And tsy > i1 And tsx <= i147 And tsy <= i147 Then
		mapdata[tsx, tsy].obj = obj01
	End If
	
	If KeyHit(KEY_Q) Then
		If drawlines Then drawlines = False Else drawlines = True
	End If
	
	reset_draw()

	DrawText("FPS: " + Int(f1000 / msc) + "  MSC: " + msc, i10, i10)
	DrawText(mvx, i10, i20)
	
	SetAlpha(f0d5)
	SetColor(i0, i0, i0)
	DrawRect(800, i20, i150, i150)
	SetColor(i255, i255, i0)
	DrawBox(800 + mvx, i20 + mvy, i30, i24)
	
	Flip
Wend

End


Function DrawTile(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, x3:Float, y3:Float, z3:Float, x4:Float, y4:Float, z4:Float)
	Local tri1:Float[] = [x4, y4 - (z4 / f2), x2, y2 - (z2 / f2), x3, y3 - (z3 / f2)]
	DrawPoly tri1
	Local tri2:Float[] = [x4, y4 - (z4 / f2), x1, y1 - (z1 / f2), x2, y2 - (z2 / f2)]
	DrawPoly tri2
End Function



Function setTile(x:Int, y:Int, height:Int)
	Local tempx:Int = x + i1
	While tempx > i1 ; tempx:-i2 ; Wend
	
	If tempx Then
		mapdata[x, y].p2 = height
		mapdata[x + i1, y - i1].p3 = height
		mapdata[x + i1, y].p1 = height
		mapdata[x + i2, y].p4 = height
	Else
		mapdata[x, y].p2 = height
		mapdata[x + i1, y].p3 = height
		mapdata[x + i1, y + i1].p1 = height
		mapdata[x + i2, y].p4 = height
	EndIf
End Function

Function getTile:Int(x:Int, y:Int)
	Return mapdata[x, y].p2
End Function



Function getVerTile(x:Int, y:Int, h:Int, V:Int)
	Local tempx:Int = x + i1
	While tempx > i1 ; tempx:-i2 ; Wend
	
	VerTile[i0] = x
	VerTile[i1] = y
	
	If tempx Then
		If h = i0 And v = i0 Then
			VerTile[i0] = x
			VerTile[i1] = y
		ElseIf h = i1 And v = i1 Then
			VerTile[i0] = x + i2
			VerTile[i1] = y
		ElseIf h = i1 And v = -i1 Then
			VerTile[i0] = x
			VerTile[i1] = y - i1
		ElseIf h = i1 And v = i0 Then
			VerTile[i0] = x + i1
			VerTile[i1] = y - i1
		ElseIf h = i0 And v = i1 Then
			VerTile[i0] = x + i1
			VerTile[i1] = y
		ElseIf h = i0 And v = -i1 Then
			VerTile[i0] = x - i1
			VerTile[i1] = y - i1
		ElseIf h = -i1 And v = i1 Then
			VerTile[i0] = x
			VerTile[i1] = y + i1
		ElseIf h = -i1 And v = -i1 Then
			VerTile[i0] = x - i2
			VerTile[i1] = y
		ElseIf h = -i1 And v = i0 Then
			VerTile[i0] = x - i1
			VerTile[i1] = y
		End If
	Else
		If h = i0 And v = i0 Then
			VerTile[i0] = x
			VerTile[i1] = y
		ElseIf h = i1 And v = i1 Then
			VerTile[i0] = x + i2
			VerTile[i1] = y
		ElseIf h = i1 And v = -i1 Then
			VerTile[i0] = x
			VerTile[i1] = y - i1
		ElseIf h = i1 And v = i0 Then
			VerTile[i0] = x + i1
			VerTile[i1] = y
		ElseIf h = i0 And v = i1 Then
			VerTile[i0] = x + i1
			VerTile[i1] = y + i1
		ElseIf h = i0 And v = -i1 Then
			VerTile[i0] = x - i1
			VerTile[i1] = y
		ElseIf h = -i1 And v = i1 Then
			VerTile[i0] = x
			VerTile[i1] = y + i1
		ElseIf h = -i1 And v = -i1 Then
			VerTile[i0] = x - i2
			VerTile[i1] = y
		ElseIf h = -i1 And v = i0 Then
			VerTile[i0] = x - i1
			VerTile[i1] = y + i1
		End If
	EndIf
End Function



















