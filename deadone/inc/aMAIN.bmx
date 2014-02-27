SeedRnd MilliSecs()

Global screenx:Float = 1350
Global screeny:Float = 850
Global split20x:Float = screenx / 5.0
Global split20y:Float = screeny / 5.0
Global pointx:Float = screenx / 2.0
Global pointy:Float = screeny / 2.0


Global version:String = "0.1build14"
Global networkupdatespeed:Float = 200

Global srvExtern:Byte = 0


?Win32
SetGraphicsDriver D3D9Max2DDriver()
?Not Win32
SetGraphicsDriver GLGraphicsDriver()
?
AppTitle = "DeadOne  v" + version
Global fenster:TGraphics = Graphics(screenx, screeny)

Global font:TImageFont = LoadImageFont("gfx/zeroes_3.ttf", 14)
SetImageFont(font)

SetBlend(ALPHABLEND)



rem
?Debug
If FileType("../deadsrv/server.debug.exe") = 1 Then
	If srvExtern = 0 And FileType("../deadsrv/server.debug.exe") = 1 Then OpenURL("../deadsrv/server.debug.exe")
EndIf
?Not Debug
If FileType("../deadsrv/server.exe") = 1 Then
	If srvExtern = 0 And FileType("../deadsrv/server.exe") = 1 Then OpenURL("../deadsrv/server.exe")
EndIf
?
endrem

?Debug
If srvExtern = 0 Then
	Local waiter:Int = MilliSecs() + 1000
	
	While Not (KeyHit(KEY_1) Or AppTerminate() Or waiter < MilliSecs())
	
		Cls
		
		DrawText("Wartezeit: " + Int((waiter - MilliSecs()) / 1000.0), 10, 10)
		
		Flip(1)
	Wend
EndIf
?


Global networkactive:Int
Global client:TTCPStream

Local loadingmsg:String = "Loading . . ."
Cls
SetHandle(TextWidth(loadingmsg) / 2.0, TextHeight(loadingmsg) / 2.0)
DrawText(loadingmsg, pointx, pointy)
Flip(0)
Cls
reset_draw()

'imagestuff

'temp globals


Global base_img:TImage[1]
Global baseD_img:TImage[1]
Global baseO_img:TImage[1]

base_img[0] = MidLoadImage("gfx\base01.png")
baseD_img[0] = MidLoadImage("gfx\baseD01.png")
baseO_img[0] = MidLoadImage("gfx\baseO01.png")

Global beam_img:TImage = LoadImage("gfx\beam.png")
beam_img.handle_y = beam_img.height / 2.0

Global shieldhit_img:TImage = MidLoadImage("gfx\shieldhit.png")

Global zero_img:TImage = MidLoadImage("gfx\zero.png")

Global astro_img:TImage = MidLoadImage("gfx\astro01.png")

Global deadone_img:TImage = MidLoadImage("gfx\deadone.png")

Global hud01b_img:TImage = LoadImage("gfx\hud01b.png")
Global hud01s_img:TImage = LoadImage("gfx\hud01s.png")
Global hud01l_img:TImage = LoadImage("gfx\hud01l.png")
Global hudcargo_img:TImage = LoadImage("gfx\cargo.png")
Global hudcargofull_img:TImage = LoadImage("gfx\cargofull.png")
Global hudcargobalken_img:TImage = LoadImage("gfx\cargobalken.png")
Global hudmap_img:TImage = LoadImage("gfx\hudmap.png")

Global hudring_img:TImage = MidLoadImage("gfx\ring.png")
Global hudrect_img:TImage = MidLoadImage("gfx\rect.png")
Global hudarrows_img:TImage = MidLoadImage("gfx\arrows.png")

Global hudmouse_img:TImage = LoadImage("gfx\mouse.png")
Global hudmouseattack_img:TImage = MidLoadImage("gfx\mouseattack.png")

Global qaufgabe_img:TImage = MidLoadImage("gfx\qaufgabe.png")

Global hud_srotation:Float

Global cloud_img:TImage[3]
cloud_img[0] = MidLoadImage("gfx\cloud04.png")
cloud_img[1] = MidLoadImage("gfx\cloud05.png")
cloud_img[2] = MidLoadImage("gfx\cloud06.png")

Global thrust_img:TImage = MidLoadImage("gfx\thrust.png")
Global richtung_img:TImage = MidLoadImage("gfx\richtung.png")

Global schilder_img:TImage[6]
schilder_img[0] = LoadImage("gfx\Sbase.png")
schilder_img[1] = MidLoadImage("gfx\Stransit.png")
schilder_img[2] = LoadImage("gfx\scargo.png")
schilder_img[3] = LoadImage("gfx\slager.png")
schilder_img[4] = LoadImage("gfx\ssonnensystem.png")
schilder_img[5] = LoadImage("gfx\map.png")

Global HImodul_img:TImage = MidLoadImage("modul\modulHI.png")
Global MIDmodul_img:TImage = MidLoadImage("modul\modulMID.png")
Global LOWmodul_img:TImage = MidLoadImage("modul\modulLOW.png")

'mouseglobals
Global md1:Int, mh1:Int, md2:Int, mh2:Int
Global omx:Int, omy:Int, nmx:Int, nmy:Int
'globals

Global sys_map:Byte[21, 21]
Global chocke:Int
Global flops:Int
Global eflops:Int

'Type loadings
Ttextrender.Load(40, 48, 40)
TitemCatalog.ScanDir()
TshipCatalog.ScanDir()
TmodulCatalog.ScanDir()

Global zoom:Float = 100.0
Global player:Tplayer

Global messagelist:Tmsg[50]
Type Tmsg
	Field str:String, r:Byte, g:Byte, b:Byte, a:Float, time:Int
EndType


Global netplayer:Tplayer[65536]
Global netmodul:Tmodul[65536]
Global netenemy:Tenemy[65536]
Global netbase:Tbase[65536]
Global netastro:Tastro[65536]
Global netship:Tship[65536]
Global netcargo:Tcargo[65536]

Tcloud.Fillup(0)
Tstar.Fillup()

'cammera
Global cam_rotation:Float, cam_rotationold:Float
Global md1_schalter:Byte, md1_biger:Byte, md1_rotation:Float, md1_x:Int, md1_y:Int, mu1:Byte, md1_rothit:Byte, md1_rotationold:Float

'hyperraum
Global HR_x:Byte, HR_y:Byte, HR_jump:Byte

'world and map data
Type world
	Global name:String, id:Short
	Global map:Xmap[50, 50]
End Type

For Local x:Int = 0 To 49
	For Local y:Int = 0 To 49
		world.map[x, y] = New Xmap
	Next
Next

Type Xmap
	Field rndwert:Short, isbase:Byte, isastro:Byte
End Type

Global networkpacketsize:Int = 0
Global mouseentferung:Float = 100000, mousetyp:Byte, mouseship:Tship, targetship:Tship, targetattack:Byte, mouseastro:Tastro, targetastro:Tastro
Global inthebase:Byte
Global logedin:Byte, gamestate:Int = 100, playertomouse:Float, key_gas:Byte, key_brake:Byte, key_undock:Byte

Global key_shoot1:Byte, key_shoot2:Byte, key_shoot3:Byte

insert("Welcome to DeadOne", 100, 255, 255)
insert("Client version: " + version, 100, 100, 255)

Global msc:Int, sendtimer:Int
Global lasttime:Int = MilliSecs()
Global time:Int = MilliSecs()
HideMouse()
While Not AppTerminate()
	'get time differance
	lasttime = time
	time = MilliSecs()
	msc = time - lasttime
	
	Cls
	
	If networkactive Then DoNetwork()
	
	
	
	
	md1 = MouseDown(1) ; mh1 = MouseHit(1)
	md2 = MouseDown(2) ; mh2 = MouseHit(2)
	omx = nmx ; omy = nmy
	nmx = MouseX() ; nmy = MouseY()
	
	If md1 Then
		If md1_schalter Then
			
			If md1_biger Then
				md1_rotation = md1_rotationold - -ATan2(pointx - MouseX(), pointy - MouseY())
				md1_rothit = True
			Else
				Local entferung:Float = Sqr((md1_x - MouseX()) ^ 2 + (md1_y - MouseY()) ^ 2)
				If entferung > 5 Then md1_biger = True
			End If
			
		Else
			md1_x = MouseX()
			md1_y = MouseY()
			md1_schalter = True
			md1_rotationold = -ATan2(pointx - MouseX(), pointy - MouseY())
		End If
	Else
		mu1 = False
		If md1_schalter And md1_biger = False Then
			mu1 = True
		End If
		md1_rothit = False
		md1_schalter = False
		md1_biger = False
	End If
	
	reset_draw()
	
	Select gamestate
		Case 100 ' menu
			SetBlend(LIGHTBLEND)
			Tcloud.Work(-calc_move(5), -calc_move(5))
			SetBlend(ALPHABLEND)
			
			reset_draw()
			
			Tstar.Workdown(-calc_move(5), -calc_move(5))
			Tstar.Worktop(-calc_move(5), -calc_move(5))
			
			reset_draw()
			
			Tmenu.Work()
			
			reset_draw()
			
			If KeyDown(KEY_SPACE) Then inbase()
			
			reset_draw()
			
			DrawImage(hudmouse_img, MouseX(), MouseY())
			
		Case 99 'to menu
		
			gamestate = 100
			
		Case 80 ' transit
			
			SetBlend(LIGHTBLEND)
			Tcloud.Work(calc_move(5), calc_move(5))
			SetBlend(ALPHABLEND)
			
			reset_draw()
			
			Tstar.Workdown(calc_move(5), calc_move(5))
			Tstar.Worktop(calc_move(5), calc_move(5))
			
			reset_draw()
		
			If player.baseID >= - 1 Then gamestate = 1
			
			Tmenu.DrawRectwindow(pointx - 200, pointy - 150, 400, 300)
			
			reset_draw()
			
			DrawImage(schilder_img[1], pointx, pointy)
			
			reset_draw()
			
			DrawImage(hudmouse_img, MouseX(), MouseY())
			
			
		Case 1 'in flight
			
			
			If player.baseID = -1 Then inthebase = 0
			If player.baseID = -2 Then gamestate = 80
			If player.baseID > - 1 Then inthebase = 1
			
			If inthebase = 0 Then
				'+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
				
				If Tmenu.check_open() Then playertomouse = -ATan2((pointx - nmx), (pointy - nmy))
				While playertomouse < - 180
					playertomouse = playertomouse + 360
				Wend
				While playertomouse > 180
					playertomouse = playertomouse - 360
				Wend
				
				If KeyDown(KEY_W) And Tmenu.check_open() Then player.s:+calc_move(player.ship.para.schub)
				If KeyDown(KEY_S) And Tmenu.check_open() Then player.s:-calc_move(player.ship.para.schub)
				If KeyDown(KEY_A) And Tmenu.check_open() Then player.r:-calc_move(player.ship.para.rotation)
				If KeyDown(KEY_D) And Tmenu.check_open() Then player.r:+calc_move(player.ship.para.rotation)
				
				If KeyHit(KEY_SPACE) And Tmenu.check_open() Then key_shoot1 = True
				If KeyHit(KEY_2) And Tmenu.check_open() Then key_shoot2 = True
				If KeyHit(KEY_3) And Tmenu.check_open() Then key_shoot3 = True
				
				If player.s < 0 Then player.s = 0
				player.s:-calc_move(player.s / 10.0)
				
				player.r = cor_rad(player.r)
				
				player.x:+Cos(player.r - 90) * calc_move(player.s)
				player.y:+Sin(player.r - 90) * calc_move(player.s)
				
				player.ship.x = player.x
				player.ship.y = player.y
				player.ship.r = player.r
				player.ship.s = player.s
				
				'+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
				
				'Tthruster.Create(player.x, player.y, player.r, player.s)
				player.lstpoly = Tpolythrust.Create(player.x + (Cos(player.r + 90) * (player.ship.para.sizey / 4.0)), player.y + (Sin(player.r + 90) * (player.ship.para.sizey / 4.0)), player.r, player.ship.para.sizex / 3.0, player.s, player.lstpoly, 1)
				
				Local smkx:Float = player.ship.life / player.ship.para.maxlife
				If smkx < 0.5 Then Tsmoke.Create(player.x, player.y, player.r)
				
				'+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
				
				inflight()
				
				
				
				reset_draw()
			
				DrawImage(hudmap_img, 25, 149)
				
				If ismouseover(25, 149, 48, 48) And mh1 And Tmenu.check_open() Then
					Tmenu.openflymap = True
				End If
				
				
				reset_draw()
				
				Tmenu.flymap()
				
				reset_draw()
				
				If mouseentferung < 64 And Tmenu.check_open() Then
					DrawImage(hudmouseattack_img, MouseX(), MouseY())
				Else
					DrawImage(hudmouse_img, MouseX(), MouseY())
				EndIf
			Else
				key_shoot1 = False
				key_shoot2 = False
				key_shoot3 = False
				
				targetship = Null
				targetastro = Null
				
				inflight()
				
				If Tmenu.openflymap = False Then inbase()
				
				reset_draw()
			
				DrawImage(hudmap_img, 25, 149)
				
				If ismouseover(25, 149, 48, 48) And mh1 And Tmenu.check_open() Then
					Tmenu.openflymap = True
				End If
				
				
				reset_draw()
				
				Tmenu.flymap()
				
				reset_draw()
				
				DrawImage(hudmouse_img, MouseX(), MouseY())
				
			EndIf
			
			
			
	End Select
	reset_draw()
	
	
	If KeyHit(KEY_ESCAPE) Then
		If client Then client.Close()
		networkactive = False
		gamestate = 100
		FlushKeys()
	End If
	rem
	DrawText("FPS: " + Int(1000.0 / msc) + "  MSC: " + msc, 10, 10)
	DrawText("player is at: " + Int(player.x) + " x - " + Int(player.y) + " y", 10, 40)
	
	endrem
	
	reset_draw()
	
	SetAlpha(0.25)
	SetColor(0, 0, 0)
	Local maxlenght:Float, maxlines:Int
	For Local x:Int = 0 To 49
		If messagelist[x] Then
			If TextWidth(messagelist[x].str) > maxlenght Then maxlenght = TextWidth(messagelist[x].str)
			If maxlines < x Then maxlines = x
		EndIf
	Next
	DrawRect(0, screeny - 40 - (15 * maxlines), maxlenght + 20, 40 + (15 * maxlines))
	
	reset_draw()
	For Local x:Int = 0 To 49
		If messagelist[x] Then
			SetAlpha(messagelist[x].a - ((messagelist[x].time / 5000.0) * messagelist[x].a))
			SetColor(messagelist[x].r, messagelist[x].g, messagelist[x].b)
			DrawText(messagelist[x].str, 15, screeny - 25 - (15 * x))
			If x > 3 Then messagelist[x].time:+msc
			If messagelist[x].time > 5000 Then messagelist[x] = Null
		EndIf
	Next
	
	Flip(1)
Wend

End

Function insert(str:String, r:Byte = 255, g:Byte = 255, b:Byte = 255, a:Float = 1.0)
	For Local x:Int = 0 To 48
		Local y:Int = 49 - x
		
		If messagelist[y - 1] Then messagelist[y] = messagelist[y - 1]
	Next
	messagelist[0] = New Tmsg
	messagelist[0].str = str
	messagelist[0].a = a
	messagelist[0].r = r
	messagelist[0].g = g
	messagelist[0].b = b
End Function