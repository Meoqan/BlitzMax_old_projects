Framework brl.math
Import brl.GLMax2D
Import brl.timer
Import brl.Blitz
Import brl.linkedlist
Import brl.random
Import brl.Retro
Import brl.Audio
Import brl.WAVLoader
Import brl.OGGLoader
Import brl.DirectSoundAudio
Import brl.JPGLoader
Import brl.PNGLoader
Import brl.Stream
Import maxgui.Drivers
Import brl.EventQueue
SuperStrict
SeedRnd MilliSecs()


Include "inc\version.bmx"

Global finalversion:Int = 1

Include "inc\types.bmx"
Include "inc\type_object.bmx"

SetGraphicsDriver GLMax2DDriver()
AppTitle = "PanzerS: Big War!" + main_version
Global fenster:TGraphics

Global Screenmitte:Float[2], aufloesung:Float[2]
If finalversion Then
	If Confirm("Vollbild?") Then
		Screenmitte[0] = Desktop().width / 2.0
		Screenmitte[1] = Desktop().height / 2.0
		If aufloesung[0] < 1024 Then aufloesung[0] = 1024
		If aufloesung[1] < 768 Then aufloesung[1] = 768
		aufloesung[0] = Desktop().width
		aufloesung[1] = Desktop().height
		fenster = Graphics(aufloesung[0], aufloesung[1], 32, 75)
	Else
		aufloesung[0] = Desktop().width - 50
		aufloesung[1] = Desktop().height - 75
		If aufloesung[0] < 1024 Then aufloesung[0] = 1024
		If aufloesung[1] < 768 Then aufloesung[1] = 768
		Screenmitte[0] = aufloesung[0] / 2.0
		Screenmitte[1] = aufloesung[1] / 2.0
		fenster = Graphics(aufloesung[0], aufloesung[1])
	EndIf
Else
	aufloesung[0] = Desktop().width - 50
	aufloesung[1] = Desktop().height - 75
	If aufloesung[0] < 1024 Then aufloesung[0] = 1024
	If aufloesung[1] < 768 Then aufloesung[1] = 768
	Screenmitte[0] = aufloesung[0] / 2.0
	Screenmitte[1] = aufloesung[1] / 2.0
	fenster = Graphics(aufloesung[0], aufloesung[1])
EndIf
SetBlend(ALPHABLEND)

Cls
DrawText("Lade " + "-01" + "% des Weltuntergangs!", Screenmitte[0] - 70, Screenmitte[1] - 7)
Flip

Include "inc\menu.bmx"

draw_loading()

Global soundon:Byte = finalversion
Global musikch:Float, musiksch:Int = -1, lastlied:Byte

Global soundmusik:TChannel = AllocChannel()
SetChannelVolume(soundmusik, 0)
Global soundHG:TSound
Global soundlast:TSound

Global channelmotor:TChannel = AllocChannel()
Global soundmotor:TSound = LoadSound("sound\motor.ogg", True)

Global channelgang:TChannel = AllocChannel()
Global soundgang:TSound = LoadSound("sound\gang.ogg")
channelgang.SetVolume(0)
channelmotor.SetVolume(0)

If soundon >= 1 Then
	soundHG = LoadSound("sound\HGMusic.ogg", True)
	soundlast = LoadSound("sound\lastmayday.ogg", True)
	
	channelgang.SetVolume(0.75)
	channelmotor.SetVolume(0.5)
	
	SeedRnd(MilliSecs())
	
	chmusik()
EndIf



Global emap:Ttextur[1000, 1000, 3], wallmap:Byte[1000, 1000], objectmap:TList[40, 40]

For Local x:Int = 0 To 39
	For Local y:Int = 0 To 39
		objectmap[x, y] = CreateList()
	Next
Next


Global bodenpix:TPixmap = LoadPixmap("gfx\bodenb1.png")
Global boden:TImage = LoadImage("gfx\bodenb1.png", 0)
Global boden2:TImage = LoadImage("gfx\bodenb2.png", 0)
Global wanne:TImage = LoadImage("gfx\elemente\wanne.png")
Global wanne2:TImage = LoadImage("gfx\elemente\wanne2.png")
Global smoke:TImage = LoadImage("gfx\elemente\smoke.png")
Global mud:TImage = LoadImage("gfx\elemente\mud.png")
Global bullet:TImage = LoadImage("gfx\elemente\bullet.png")
Global spur:TImage = LoadImage("gfx\elemente\spur.png")
Global loadb:TImage = LoadImage("gfx\elemente\loadb.png")
Global funken:TImage = LoadImage("gfx\elemente\funken.png")
Global fire:TImage = LoadImage("gfx\elemente\fire.png")
Global grater:TImage = LoadImage("gfx\elemente\grater.png")
Global radar:TImage = LoadImage("gfx\elemente\radar.png")
Global mouseicon:TImage = LoadImage("gfx\elemente\mouse.png")
Global mouseicontarget:TImage = LoadImage("gfx\elemente\mousetarget.png")
Global Fadenkreuz:Timage = LoadImage("gfx\elemente\Fadenkreuz.png")
Global mouseiconfriend:TImage = LoadImage("gfx\elemente\mousefriend.png")
Global mousetmr:Int, mouseoldx:Int, mouseoldy:Int, mousefade:Float, mosuetarget:Int

Global waypoint_1:TImage = LoadImage("gfx\objects\waypoint_1_1.png")
Global waypoint_2:TImage = LoadImage("gfx\objects\waypoint_1_2.png")
Global tex2w:Float = 0

'globale variablen
Global TasteR:Int
Global TasteV:Int
Global Reibung:Float = 0.25
Global pospxr:Float, pospxl:Float, pospyr:Float, pospyl:Float, pshot:Byte, pbspr:Byte, pbspl:Byte
Global rol:Int
Global spursmart:Int = 0
Global gratersmart:Int = 0


'globale einstellungen
Global sichtweitebot:Float = 300, sichtweitePL:Float = 550
Global checktmr:Int, ceackval:Int = 6

'base einstellungen
Global bax:Float = 5150, bay:Float = 1090

Global gVx:Float, gVy:Float, omx:Int, omy:Int

Global test:Float, test243:Float, test231:Int

Global radarpoints:TPixmap = CreatePixmap(150, 150, PF_RGBA8888), radarpointsI:Timage

Global shaderglowI:Timage = LoadImage("gfx\elemente\glow.png")

Global waycecker:Int
Include "inc\may.bmx"
Include "inc\function_arcive.bmx"
Include "inc\tile_render.bmx"
Include "inc\dataload.bmx"
Include "inc\botsmart.bmx"
Include "inc\int_colors.bmx"
Include "inc\draw_tank.bmx"

Include "inc\intro.bmx"

Include "inc\player_control.bmx"
Include "inc\bot_control.bmx"
Include "inc\minimapRender.bmx"
Include "inc\geschoss_controll.bmx"
Include "inc\draw_hud.bmx"
Include "inc\compress.bmx"
Include "inc\drive_engine.bmx"



Global GAMESTATE:Int, playerstartlist:TList = CreateList()
Global freundstartlist:TList = CreateList(), feindstartlist:TList = CreateList()

Global score:Int[2], isWin:Int = -1, stats:Int[5]
Global tmr:Ttimer = CreateTimer(40)
HideMouse()
While Not (KeyHit(KEY_ESCAPE) Or AppTerminate())
	tmr.Wait()
	Cls
	fademusik()
	
		Select GAMESTATE
			Case 3
				blendover(isWin)
			Case 0
				If finalversion Then
					If play_intro(Screenmitte[0], Screenmitte[1]) Then GAMESTATE = 2
				Else
					GAMESTATE = 2
				EndIf
			Case 2
				draw_loading()
				loadMapData("maps\" + "demo2.map", 0)
				
				Local sVOR:String, sHINTER:String, sMODE:Int
				For Local x:Int = 0 To 499
					
					'If mapscript[x].Length > 0 Then Notify(mapscript[x])
					
					Select mapscript[x]
						Case "[WIN]"
							sMODE = 1
						Case "[LOOSE]"
							sMODE = 2
					End Select
					
					If Not mapscript[x].Contains("=") Then Continue
					
					sVOR = Left(mapscript[x], mapscript[x].Find("="))
					sHINTER = Right(mapscript[x], mapscript[x].Length - (mapscript[x].Find("=") + 1))
					Select sVOR
						Case "TEAMSCORE"
							If sMODE = 1 Then
								mapglobal.Fneed_score = sHINTER.ToInt()
								If mapglobal.Fneed_flags = 0 Then mapglobal.Fneed_flags = 1
							EndIf
							If sMODE = 2 Then
								mapglobal.Fneed_score = sHINTER.ToInt()
								If mapglobal.Fneed_flags = 0 Then mapglobal.Fneed_flags = 2
							EndIf
						Case "E.TEAMSCORE"
							If sMODE = 1 Then
								mapglobal.Eneed_score = sHINTER.ToInt()
								If mapglobal.Eneed_flags = 0 Then mapglobal.Eneed_flags = 1
							EndIf
							If sMODE = 2 Then
								mapglobal.Eneed_score = sHINTER.ToInt()
								If mapglobal.Eneed_flags = 0 Then mapglobal.Eneed_flags = 2
							EndIf
					End Select
				Next
				
				playerstartlist.Clear()
				freundstartlist.Clear()
				feindstartlist.Clear()
				For Local sTway:Twaypoint = EachIn waypointlist
					For Local x:Int = 0 To 199
						If sTway.script[x].Length > 0 Then
							Select sTway.script[x]
								Case "STARTPLAYER"
									playerstartlist.AddLast(sTway)
								Case "STARTFRIEND"
									freundstartlist.AddLast(sTway)
								Case "STARTENEMY"
									feindstartlist.AddLast(sTway)
								Case "[BASE]"
									mapglobal.Fbase = sTway
								Case "[E.BASE]"
									mapglobal.Ebase = sTway
							End Select
							
							If Not sTway.script[x].Contains("=") Then Continue
					
							sVOR = Left(sTway.script[x], sTway.script[x].Find("="))
							sHINTER = Right(sTway.script[x], sTway.script[x].Length - (sTway.script[x].Find("=") + 1))
							
							Select sVOR
								Case "CAN"
									sTway.respawncount = sTway.respawncount + 1
									sTway.respawnnames[sTway.respawncount] = sHINTER
							EndSelect
						EndIf
					Next
				Next

				For Local x:Int = 0 To 4
					stats[x] = 0
				Next
				
				smokelist.Clear()
				mudlist.Clear()
				sanddustlist.Clear()
				firelist.Clear()
				funkenlist.Clear()
				spurlist.Clear()
				graterlist.Clear()
				glowlist.Clear()
				
				mapplayerlist.Clear()
				
				player2:Tplayer = New Tplayer
				mapplayerlist.AddLast(player2)
				
				botlist.Clear()
				
				Schussliste.Clear()
				score[0] = 0
				score[1] = 0
				isWin = -1
				resetblendover()
				PreRender()
				player2.dead = 1
				GAMESTATE = 1
			Case 1 'spiel
				mosuetarget = 3
				Main_smart(botlist)
				
				
				
				'######################## Sieg oder Niederlage system
				
				If mapglobal.Eneed_flags = 1 Then
					If mapglobal.Eneed_score <= score[1] Then
						'loose
						If isWin = -1 Then isWin = 0
					EndIf
				ElseIf mapglobal.Eneed_flags = 2 Then
					If mapglobal.Eneed_score <= score[1] Then
						'win
						If isWin = -1 Then isWin = 1
					EndIf
				EndIf
				
				If mapglobal.Fneed_flags = 1 Then
					If mapglobal.Fneed_score <= score[0] Then
						'win
						If isWin = -1 Then isWin = 1
					EndIf
				ElseIf mapglobal.Fneed_flags = 2 Then
					If mapglobal.Fneed_score <= score[0] Then
						'loose
						If isWin = -1 Then isWin = 0
					EndIf
				EndIf
				
				
				'#######################
				
				
				
				If player2.dead = 1 Then
				
					player2.tank = New Ttank
					
					
					PlaySound(soundmotor, channelmotor)
					
					Local take:Int = Int(Rnd(0, playerstartlist.Count() * 100) / 100.0)
					For Local dTway:Twaypoint = EachIn playerstartlist
						If take = 0 Then
							If dTway.respawncount = -1 Then
								Local usename:String
								Local take2:Int = Int(Rnd(0, maptankscriptlist.Count() * 100) / 100.0)
								For Local mts:Ttankscript = EachIn maptankscriptlist
									If take2 = 0 Then
										usename = mts.name
									End If
									take2 = take2 - 1
								Next
								player2.tank.Setup(usename)
								player2.DrawTank = player2.tank.cDrawTank
							Else
								Local usename:String
								Local take2:Int = Int(Rnd(0, dTway.respawncount * 100) / 100.0)
								For Local x:Int = 0 To 39
									If take2 = 0 Then
										usename = dTway.respawnnames[x]
									End If
									take2 = take2 - 1
								Next
								player2.tank.Setup(usename)
								player2.DrawTank = player2.tank.cDrawTank
							EndIf
							player2.tank.x = dTway.x
							player2.tank.y = dTway.y
							gVx = dTway.x - Screenmitte[0]
							gVy = dTway.y - Screenmitte[1]
							addglow(dTway.x, dTway.y, 256, 60, 64, 255, 64)
							addglow(dTway.x, dTway.y, 256, 60, 64, 255, 64)
							addglow(dTway.x, dTway.y, 256, 60, 64, 255, 64)
							addglow(dTway.x, dTway.y, 256, 60, 64, 255, 64)
							Exit
						End If
						take = take - 1
					Next
					player2.dead = 0
				End If
				
				
				SetAlpha(1)
				SetRotation(0)
				SetHandle(0, 0)
				SetScale(1, 1)
				SetColor(255, 255, 255)
				'DrawRect(0, 0, 1024, 768)
				
				checktmr = checktmr - 1
				If checktmr < 0 Then
					checktmr = ceackval
				End If
				
				If MouseHit(2) Then chmusik()
				'If MouseDown(2) Then
				If False Then
					gVx = gVx - (MouseX() - omx) ; gVy = gVy - (MouseY() - omy)
				Else
					Local entf234:Float = Sqr((player2.tank.x - (gVx + Screenmitte[0])) ^ 2 + (player2.tank.y - (gVy + Screenmitte[1])) ^ 2)
					Local winkel234:Float = -ATan2(player2.tank.x - (gVx + Screenmitte[0]), player2.tank.y - (gVy + Screenmitte[1])) + 90
					gVx = gVx + Cos(winkel234) * (entf234 * 0.1)
					gVy = gVy + Sin(winkel234) * (entf234 * 0.1)
				End If
				omx = MouseX() ; omy = MouseY()
				
				SteuerungPL1(player2)
				
				'############# sound
				
				channelmotor.SetRate(1.0 + (player2.tank.engine.Drehzahl / 500.0))
				If player2.tank.engine.gang <> player2.tank.engine.oldgang Then PlaySound(soundgang, channelgang) ; player2.tank.engine.oldgang = player2.tank.engine.gang
				
				'############# end
				
				
				SetScale(1, 1)
				SetRotation(0)
				SetHandle(0, 0)
				SetAlpha(1)
				SetColor(255, 255, 255)
				Local bVx:Int = gVx Mod 32
				Local bVy:Int = gVy Mod 32
				For Local x:Int = -1 To Int(aufloesung[0] / 32.0) + 1
					For Local y:Int = -1 To Int(aufloesung[1] / 32.0) + 1
						Local mapx:Int = (gVx) / 32
						Local mapy:Int = (gVy) / 32
						If x + mapx >= 0 And x + mapx <= 999 And y + mapy >= 0 And y + mapy <= 999 Then
							Local entfsicht:Float = Sqr((((x * 32) - bVx) - Screenmitte[0]) ^ 2 + (((y * 32) - bVy) - Screenmitte[1]) ^ 2)
							If entfsicht < sichtweitePL Then
								If entfsicht > sichtweitePL - 63 Then
									Local minuxcol:Int = (entfsicht - (sichtweitePL - 63))
									SetColor(255 - minuxcol, 255 - minuxcol, 255 - minuxcol)
								Else
									SetColor(255, 255, 255)
								EndIf
							Else
								SetColor(192, 192, 192)
							EndIf
							If emap[x + mapx, y + mapy, 0] <> Null Then
								DrawPicture(emap[x + mapx, y + mapy, 0].img, (x * 32) - bVx, (y * 32) - bVy, 32, 32)
							Else
								DrawPicture(boden, (x * 32) - bVx, (y * 32) - bVy, 32, 32)
							EndIf
							If emap[x + mapx, y + mapy, 1] <> Null Then
								DrawPicture(emap[x + mapx, y + mapy, 1].img, (x * 32) - bVx, (y * 32) - bVy, 32, 32)
							EndIf
						Else
							SetColor(255, 255, 255)
							DrawPicture(boden, (x * 32) - bVx, (y * 32) - bVy, 32, 32)
						EndIf
					Next
				Next
				
				SetAlpha(1)
				SetRotation(0)
				SetHandle(0, 0)
				SetScale(1, 1)
				SetColor(255, 255, 255)
				
				Local maxvisible:Int = spurlist.Count()
				For Local cTspur:Tspur = EachIn spurlist
					maxvisible = maxvisible - 1
					If maxvisible < 300 Then
						If Sqr(((cTspur.x - gVx) - Screenmitte[0]) ^ 2 + ((cTspur.y - gVy) - Screenmitte[1]) ^ 2) < sichtweitePL Then
							If cTspur.length < 100 Then
								SetHandle(5, (cTspur.length + 1) / 2)
								SetRotation(cTspur.r - 90)
								SetAlpha(cTspur.f)
								SetColor(128, 64, 0)
							
								DrawPicture(spur, cTspur.x - gVx, cTspur.y - gVy, cTspur.length + 1, 10)
							EndIf
						EndIf
					EndIf
					cTspur.time = cTspur.time + 1
					If cTspur.time > 100 Then cTspur.f = cTspur.f - 0.01
					If cTspur.f <= 0 Then spurlist.Remove(cTspur)
				Next
				SetAlpha(1)
				
				gratersmart = graterlist.Count()
				For Local cTgrater:Tgrater = EachIn graterlist
					SetHandle(20 * cTgrater.s, 20 * cTgrater.s)
					SetRotation(cTgrater.r - 90)
					SetAlpha(cTgrater.f)
					SetColor(255, 255, 255)
					If Sqr(((cTgrater.x - gVx) - Screenmitte[0]) ^ 2 + ((cTgrater.y - gVy) - Screenmitte[1]) ^ 2) < sichtweitePL Then DrawPicture(grater, cTgrater.x - gVx, cTgrater.y - gVy, 40 * cTgrater.s, 40 * cTgrater.s)
					gratersmart = gratersmart - 1
					If gratersmart > 50 Then cTgrater.f = cTgrater.f - 0.05
					If cTgrater.f <= 0 Then graterlist.Remove(cTgrater)
				Next
				SetAlpha(1)
				
				
				
				
				tex2w = tex2w + 6
				If tex2w > 360 Then tex2w = tex2w - 360
				SetRotation(0)
				SetAlpha(1)
				SetColor(255, 255, 255)
				For Local cTwaypoint:Twaypoint = EachIn waypointlist
					If Sqr(((cTwaypoint.x - gVx) - Screenmitte[0]) ^ 2 + ((cTwaypoint.y - gVy) - Screenmitte[1]) ^ 2) < sichtweitePL Then
						SetRotation(0)
						SetHandle(0, 0)
						DrawPicture(waypoint_2, cTwaypoint.x - gVx, cTwaypoint.y - gVy, 32, 32)
						SetHandle(8, 8)
						SetRotation(tex2w)
						DrawPicture(waypoint_1, cTwaypoint.x - gVx + 16, cTwaypoint.y - gVy + 10, 16, 16)
						
					EndIf
				Next
				
				SetRotation(0)
				SetHandle(0, 0)
				
				
				
				DrawMud()
				
				Drawsanddust()
				
				SetScale(1, 1)
				SetRotation(0)
				SetAlpha(1)
				SetColor(255, 255, 255)
				
				For Local x:Int = 0 To 39
					For Local y:Int = 0 To 39
						Local mapx:Int = (gVx / 32.0) / 40.0
						Local mapy:Int = (gVy / 32.0) / 40.0
						
						
						For Local srTmapobject:Tmapobject = EachIn objectmap[x, y]
							
							For Local eTbotT:Tbot = EachIn thesmartlist
								If Sqr((eTbotT.tank.x - srTmapobject.dox) ^ 2 + (eTbotT.tank.y - srTmapobject.doy) ^ 2) < 400 Then
									If srTmapobject.seelist.Contains(eTbotT) Then
										'nix
									Else
										srTmapobject.seelist.AddLast(eTbotT)
									EndIf
								Else
									If srTmapobject.seelist.Contains(eTbotT) Then
										srTmapobject.seelist.Remove(eTbotT)
									Else
										'nix
									EndIf
								EndIf
							Next
							
							For Local oTbot:Tbot = EachIn srTmapobject.seelist
								If oTbot.botdel = 0 Then srTmapobject.seelist.Remove(oTbot)
								
								If Sqr((oTbot.tank.x - srTmapobject.dox) ^ 2 + (oTbot.tank.y - srTmapobject.doy) ^ 2) < (srTmapobject.uTobject.size + oTbot.tank.Size) / 2.0 Then
									If srTmapobject.uTobject.playonTUCH.Length > 0 Then
										If srTmapobject.uTobjanim.eventname = srTmapobject.uTobject.playonIDLE Then srTmapobject.setanim(srTmapobject.uTobject.playonTUCH)
									Else
										PushCollision(oTbot.tank.x, oTbot.tank.y, oTbot.tank.Size, srTmapobject.dox, srTmapobject.doy, srTmapobject.uTobject.size, 1)
									EndIf
								EndIf
							Next
							
							For Local player:Tplayer = EachIn mapplayerlist
								If Sqr((player.tank.x - srTmapobject.dox) ^ 2 + (player.tank.y - srTmapobject.doy) ^ 2) < (srTmapobject.uTobject.size + player.tank.Size) / 2.0 Then
									If srTmapobject.uTobject.playonTUCH.Length > 0 Then
										If srTmapobject.uTobjanim.eventname = srTmapobject.uTobject.playonIDLE Then srTmapobject.setanim(srTmapobject.uTobject.playonTUCH)
									Else
										PushCollision(player.tank.x, player.tank.y, player.tank.Size, srTmapobject.dox, srTmapobject.doy, srTmapobject.uTobject.size, 1)
									EndIf
								EndIf
							Next
							
							If x >= mapx - 1 And x <= mapx + 1 And y >= mapy - 1 And y <= mapy + 1 Then
								srTmapobject.draw()
							Else
								srTmapobject.notdraw()
							EndIf
						Next
						
					Next
				Next
				
				For Local gy:Tgraveyard = EachIn mapgraveyardlist
					gy.tank.R = 64
					gy.tank.G = 64
					gy.tank.B = 64
					gy.DrawTank.DrawTank(gy.tank)
					gy.dtmr = gy.dtmr - 1
					If gy.dtmr <= 0 Then mapgraveyardlist.Remove(gy)
				Next
				
				If player2.tank.leben > 0 Then
					player2.tank.R = 64
					player2.tank.G = 255
					player2.tank.B = 64
					player2.DrawTank.DrawTank(player2.tank)
				EndIf
				
				
				radarpoints.ClearPixels(colornull)
				Local factor:Int
				For Local cTbot:Tbot = EachIn botlist
				
					If MouseX() > cTbot.tank.x - gVx - 25 And MouseX() < cTbot.tank.x - gVx + 25 And MouseY() > cTbot.tank.y - gVy - 25 And MouseY() < cTbot.tank.y - gVy + 25 Then
						If cTbot.fraktion = 0 Then
							mosuetarget = 2
						Else
							mosuetarget = 1
						EndIf
					End If
					
					contolbot(cTbot)
					If Sqr(((cTbot.tank.x - gVx) - Screenmitte[0]) ^ 2 + ((cTbot.tank.y - gVy) - Screenmitte[1]) ^ 2) < sichtweitePL Then cTbot.DrawTank.DrawTank(cTbot.tank)
					
					If cTbot.fraktion = 0 Then factor = factor + 1 Else factor = factor - 1
					
					If (cTbot.tank.x / 214.0) > 0 And (cTbot.tank.y / 214.0) > 0 And (cTbot.tank.x / 214.0) < 150 And (cTbot.tank.y / 214.0) < 150 Then
						If cTbot.fraktion = 0 Then
							radarpoints.WritePixel((cTbot.tank.x / 214.0), (cTbot.tank.y / 214.0), colorblue)
						Else
							radarpoints.WritePixel((cTbot.tank.x / 214.0), (cTbot.tank.y / 214.0), colorred)
						EndIf
					EndIf
				Next
				
				calc_geschoss(player2)
				
				SetAlpha(1)
				
				rem
				SetHandle(7.5, 2.5)
				For Local bulletsp4:TSchussSp = EachIn Schussliste
					SetRotation(bulletsp4.winkels + 180)
					If bulletsp4.weite <= 100 Then SetColor(255, 255, 0) Else SetColor(255, 255, 255)
					'if bulletsp4.weite <= 100 then DrawPicture(bullet, bulletsp4.xs, bulletsp4.ys, 30, 10)
				Next
				endrem
				
				Drawfire()
				
				DrawSmoke()
				
				
				Drawfunken()
				
				
				SetScale(1, 1)
				SetRotation(0)
				SetHandle(0, 0)
				SetAlpha(1)
				SetColor(255, 255, 255)
				For Local x:Int = -1 To Int(aufloesung[0] / 32.0) + 1
					For Local y:Int = -1 To Int(aufloesung[1] / 32.0) + 1
						Local mapx:Int = (gVx) / 32
						Local mapy:Int = (gVy) / 32
						If x + mapx >= 0 And x + mapx <= 999 And y + mapy >= 0 And y + mapy <= 999 Then
							Local entfsicht:Float = Sqr((((x * 32) - bVx) - Screenmitte[0]) ^ 2 + (((y * 32) - bVy) - Screenmitte[1]) ^ 2)
							If entfsicht < sichtweitePL Then
								If entfsicht > sichtweitePL - 63 Then
									Local minuxcol:Int = (entfsicht - (sichtweitePL - 63))
									SetColor(255 - minuxcol, 255 - minuxcol, 255 - minuxcol)
								Else
									SetColor(255, 255, 255)
								EndIf
							Else
								SetColor(192, 192, 192)
							EndIf
							If emap[x + mapx, y + mapy, 2] <> Null Then
								DrawPicture(emap[x + mapx, y + mapy, 2].img, (x * 32) - bVx, (y * 32) - bVy, 32, 32)
							EndIf
						EndIf
					Next
				Next
				
				
				
				
				SetScale(1, 1)
				SetRotation(0)
				SetAlpha(1)
				SetHandle(0, 0)
				rem
				SetBlend(SHADEBLEND)
				
				SetColor(128, 64, 64)
				
				DrawRect(0, 0, aufloesung[0], aufloesung[1])
				
				endrem
				
				SetScale(1, 1)
				SetRotation(0)
				SetAlpha(1)
				SetHandle(0, 0)
				SetBlend(LIGHTBLEND)
				For Local dTglow:Tglow = EachIn glowlist
					
					dTglow.a = (Float(dTglow.d) / Float(dTglow.l)) / 12.0
					SetAlpha(dTglow.a)
					SetColor(dTglow.r, dTglow.g, dTglow.b)
					SetHandle((32.0 + dTglow.s) / 2.0, (32.0 + dTglow.s) / 2.0)
					DrawPicture(shaderglowI, dTglow.x - gVx, dTglow.y - gVy, 32 + dTglow.s, 32 + dTglow.s)
					dTglow.d = dTglow.d - 1
					If dTglow.d <= 0 Then glowlist.Remove(dTglow)
				Next
				
				SetBlend(ALPHABLEND)
				
				
				
				
				
				EnerBalken((player2.tank.leben / 2.5))
				
				SetScale(1, 1)
				SetRotation(0)
				SetAlpha(1)
				SetColor(255, 255, 255)
				SetHandle(0, 0)
				'DrawText("x: " + player.x + " .:|:. y: " + player.y, 15, 100)
				DrawText("Score Team: " + score[0], 115, 150)
				DrawText("Score Enemy: " + score[1], 115, 165)
	
				SetScale(1, 1)
				SetRotation(0)
				SetAlpha(1)
				SetColor(255, 255, 255)
				SetHandle(0, 0)
				DrawPicture(radar, aufloesung[0] - 175, 25, 150, 150)
				SetAlpha(0.5)
				SetColor(255, 255, 255)
				DrawPicture(minimapI, aufloesung[0] - 175, 25, 150, 150)
				radarpointsI = Null
				radarpointsI = LoadImage(radarpoints)
				SetAlpha(1)
				DrawImage(radarpointsI, aufloesung[0] - 175, 25)
				
				SetHandle(1, 1)
				SetColor(0, 255, 0)
				DrawRect(aufloesung[0] - 175 + (player2.tank.x / 214.0), 25 + (player2.tank.y / 214.0), 1, 1)
				
				
				
				If isWin <> - 1 Then blendover(isWin)
				
				
				test231 = test231 + 1
				If test231 > 40 And botlist.Count() < 64 Then
					test231 = 0
					If factor < 0 Then
						Local take:Int = Int(Rnd(0, freundstartlist.Count() * 100) / 100.0)
						For Local dTway:Twaypoint = EachIn freundstartlist
							If take = 0 Then
								addbot(dTway.x, dTway.y, 180, 0)
								addglow(dTway.x, dTway.y, 256, 60, 64, 64, 255)
								addglow(dTway.x, dTway.y, 256, 60, 64, 64, 255)
								addglow(dTway.x, dTway.y, 256, 60, 64, 64, 255)
								addglow(dTway.x, dTway.y, 256, 60, 64, 64, 255)
								Exit
							End If
							take = take - 1
						Next
					Else
						Local take:Int = Int(Rnd(0, feindstartlist.Count() * 100) / 100.0)
						For Local dTway:Twaypoint = EachIn feindstartlist
							If take = 0 Then
								addbot(dTway.x, dTway.y, 180, 1)
								addglow(dTway.x, dTway.y, 256, 60, 255, 64, 64)
								addglow(dTway.x, dTway.y, 256, 60, 255, 64, 64)
								addglow(dTway.x, dTway.y, 256, 60, 255, 64, 64)
								addglow(dTway.x, dTway.y, 256, 60, 255, 64, 64)
								Exit
							End If
							take = take - 1
						Next
					EndIf
				End If
		End Select
	
	SetScale(1, 1)
	SetRotation(0)
	SetAlpha(1)
	SetHandle(0, 0)
	
	If mouseoldx = MouseX() And mouseoldy = MouseY() Then
		If mousetmr < 80 Then
			mousetmr = mousetmr + 1
		Else
			If mousefade > 0 Then mousefade = mousefade - 0.1 Else mousefade = 0
		EndIf
	Else
		mousetmr = 0
		If mousefade < 1 Then mousefade = mousefade + 0.1 Else mousefade = 1
	EndIf
	mouseoldx = MouseX()
	mouseoldy = MouseY()
	
	SetAlpha(mousefade)
	SetColor(255, 255, 255)
	SetHandle(0, 0)
	Select mosuetarget
		Case 0
			DrawImage(mouseicon, MouseX(), MouseY())
		Case 1
			DrawImage(mouseicontarget, MouseX() - 16, MouseY() - 16)
		Case 2
			DrawImage(mouseiconfriend, MouseX() - 16, MouseY() - 16)
		Case 3
			DrawImage(Fadenkreuz, MouseX() - 16, MouseY() - 16)
	End Select
	mosuetarget = 0
	
	SetAlpha(1)
	Flip
Wend




Function chmusik()
	If soundon = 1 Then
		If musiksch = 0 Then musiksch = 1
		If musiksch = -1 Then musiksch = 3
	EndIf
End Function


Function fademusik()
	If soundon = 0 Then musiksch = -1
	Select musiksch
		Case 1
			musiksch = 2
			musikch = 0.75
		Case 2
			musikch = musikch - 0.01
			If musikch <= 0 Then musiksch = 3 ;musikch = 0
			SetChannelVolume(soundmusik, musikch)
		Case 3
			musiksch = 4
			Local tmp:Int = Rnd(0, 199) / 100.0
			If tmp = lastlied Then tmp = Rnd(0, 199) / 100.0
			If tmp = lastlied Then tmp = Rnd(0, 199) / 100.0
			If tmp = lastlied Then tmp = Rnd(0, 199) / 100.0
			If tmp = lastlied Then tmp = Rnd(0, 199) / 100.0
			If tmp = lastlied Then tmp = Rnd(0, 199) / 100.0
			If tmp = lastlied Then tmp = Rnd(0, 199) / 100.0
			lastlied = tmp
			Select tmp
				Case 0
					PlaySound(soundHG, soundmusik)
				Case 1
					PlaySound(soundlast, soundmusik)
			EndSelect
		Case 4
			musikch = musikch + 0.01
			SetChannelVolume(soundmusik, musikch)
			If musikch >= 0.75 Then musiksch = 0 ; musikch = 0
	End Select
End Function

Function mouseover:Int(x:Int, y:Int, w:Int, h:Int)
	Local ret:Int = 0
	
	If MouseX() > x And MouseX() < x + w And MouseY() > y And MouseY() < y + h Then ret = 1
	
	Return ret
End Function
