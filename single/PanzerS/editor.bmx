Framework brl.Blitz
Import brl.GLMax2D
Import brl.timer
Import brl.linkedlist
Import brl.random
Import brl.Retro
Import brl.JPGLoader
Import brl.PNGLoader
Import brl.pixmap
Import brl.Stream
Import maxgui.Drivers
Import brl.EventQueue
SuperStrict

Include "inc\version.bmx"

Type Tinfotext
	Field x:Int, y:Int, Text:String
End Type
Global infotextlist:TList = CreateList()

AppTitle = "PanzerS: Editor!" + main_version
Global fenster:TGraphics
Global Screenmitte:Float[2], aufloesung:Float[2]
aufloesung[0] = Desktop().width - 50
aufloesung[1] = Desktop().height - 75
If aufloesung[0] < 1024 Then aufloesung[0] = 1024
If aufloesung[1] < 768 Then aufloesung[1] = 768
Screenmitte[0] = aufloesung[0] / 2.0
Screenmitte[1] = aufloesung[1] / 2.0
fenster = Graphics(aufloesung[0], aufloesung[1])
	
SetBlend(ALPHABLEND)

Global emap:Ttextur[1000, 1000, 3], wallmap:Byte[1000, 1000], objectmap:TList[40, 40]

For Local x:Int = 0 To 39
	For Local y:Int = 0 To 39
		objectmap[x, y] = CreateList()
	Next
Next

Cls
DrawText("Lade " + "-01" + "% des Weltuntergangs!", 512 - 70, 384 - 7)
Flip

Include "inc\dataload.bmx"
Include "inc\types.bmx"
Include "inc\type_object.bmx"

loadTexData()

Global shaderglowI:Timage = LoadImage("gfx\elemente\glow.png")
Global bodenpix:TPixmap = LoadPixmap("gfx\bodenb1.png")
Global boden:TImage = LoadImage("gfx\bodenb1.png", 0)
Global boden2:TImage = LoadImage("gfx\bodenb2.png", 0)
Global wanne:TImage = LoadImage("gfx\elemente\wanne.png")
Global smoke:TImage = LoadImage("gfx\elemente\smoke.png")
Global mud:TImage = LoadImage("gfx\elemente\mud.png")
Global bullet:TImage = LoadImage("gfx\elemente\bullet.png")
Global spur:TImage = LoadImage("gfx\elemente\spur.png")
Global loadb:TImage = LoadImage("gfx\elemente\loadb.png")
Global funken:TImage = LoadImage("gfx\elemente\funken.png")
Global fire:TImage = LoadImage("gfx\elemente\fire.png")
Global grater:TImage = LoadImage("gfx\elemente\grater.png")
Global base:TImage = LoadImage("gfx\elemente\base.png")
Global basetop:TImage = LoadImage("gfx\elemente\basetop.png")
Global radar:TImage = LoadImage("gfx\elemente\radar.png")
Global mouseicon:TImage = LoadImage("gfx\elemente\mouse.png")
Global mousetmr:Int, mouseoldx:Int, mouseoldy:Int, mousefade:Float, mosuetarget:Int

Global nowGroup:Ttexgroup, menuVy:Int, gmenuVy:Int, menulock:Int, gmenulock:Int, menudiff:Int, gmenudiff:Int, selectedtex:Ttextur, md:Int

For Local cTtexgroup:Ttexgroup = EachIn texgrouplist
	nowGroup = cTtexgroup ; Exit
Next

Global gVx:Float, gVy:Float, omx:Int, omy:Int
Global selectedlayer:Int, pinselmodus:Int, pinselsize:Int, pinselmix:Int, pinselunmix:Int, wallmod:Int, wallmodklick:Int, waymod:Int, waymodaction:Int, waymodselect:Twaypoint, waymodcounter:Int
Global mouselooklock:Int = 0
Global viewmode:Int
Global wink:Float, flipflopcolors:Int
Global picdraw:Int[2]

picdraw:Int[0] = - 1
picdraw:Int[1] = - 1

Global objmodaction:Int, objmodselect:Tobject, objmodmove:Tmapobject

Global waycecker:Int
Include "inc\may.bmx"
Include "inc\tile_render.bmx"
Include "inc\int_colors.bmx"
Include "inc\minimapRender.bmx"
Include "inc\compress.bmx"
Include "inc\function_arcive.bmx"

' get panermodels

Global Gdir:Int = ReadDir("gfx\panzer")
If Gdir Then
	Repeat
		Local datei:String = NextFile(Gdir)
		If datei = "" Then Exit
		If datei = "." Or datei = ".."Then Continue
		If FileType(datei) = 1 Then Continue
		
		If FileType("gfx\panzer\" + datei + "\data.scp") And FileType("gfx\panzer\" + datei + "\draw.scp") Then
			
			Local setname:String
			Local found:Int = 0
			If FileType("gfx\panzer\" + datei + "\draw.scp") Then
				found = found + 1
				
				Local nTdrawtankscript:Tdrawtankscript = New Tdrawtankscript
				drawstankcriptlist.AddLast(nTdrawtankscript)
				'nTdrawtankscript.name = datei
				Local data:TStream = ReadFile("gfx\panzer\" + datei + "\draw.scp")
				While Not Eof(data)
					nTdrawtankscript.insert(data.ReadLine())
				Wend
				data.Close()
			End If
			
			If FileType("gfx\panzer\" + datei + "\data.scp") Then
				found = found + 1
				Local nTtankscript:Ttankscript = New Ttankscript
				tankscriptlist.AddLast(nTtankscript)
				'nTtankscript.name = datei
				Local data:TStream = ReadFile("gfx\panzer\" + datei + "\data.scp")
				While Not Eof(data)
					nTtankscript.insert(data.ReadLine())
				Wend
				setname = nTtankscript.name
				data.Close()
			End If
			
			Local Gdirx:Int = ReadDir("gfx\panzer\" + datei)
			Repeat
				Local xdatei:String = NextFile(Gdirx)
				If xdatei = "" Then Exit
				If xdatei = "." Or xdatei = ".."Then Continue
				If Right(xdatei, 3).ToLower() <> "png" Then Continue
				Local nTtanktex:Ttanktex = New Ttanktex
				tanktexlist.AddLast(nTtanktex)
				nTtanktex.image = LoadImage("gfx\panzer\" + datei + "\" + xdatei)
				nTtanktex.pixmap = LoadPixmap("gfx\panzer\" + datei + "\" + xdatei)
				nTtanktex.modelname = setname
				nTtanktex.name = xdatei
			Forever
			CloseDir Gdirx
			
			Local drawtank:Tdrawtank = New Tdrawtank
			drawtanklist.AddLast(drawtank)
			drawtank.name = setname
			drawtank.noSetup(datei)
			drawtank.noActivateTex()
			
			Local tank:Ttank = New Ttank
			tank.ModelName = setname
			tank.noSetup(datei)
			tanklist.AddLast(tank)
		EndIf
	Forever
EndIf
CloseDir Gdir

'end get panzermodels

'get objects 
objtex_load()
obj_load()


Local found:Int = 0, path:String
For Local a:String = EachIn AppArgs
	If Right(a, 4).ToLower() = ".map" Then
		found = 1
		path = a
	End If
Next


If found = 1 Then loadMapData(path)
rem
Global nTmapobject:Tmapobject = New Tmapobject
nTmapobject.setup("laterne")
objectmap[0, 0].AddLast(nTmapobject)
endrem

Global tmr:Ttimer = CreateTimer(40)
HideMouse()
While Not (KeyHit(KEY_ESCAPE) Or AppTerminate())
	tmr.Wait()
	Cls
	
	md = MouseHit(1)
	Select viewmode
		Case 0
			OverTimeRender()
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
					If x + mapx >= 0 And x + mapx < 999 And y + mapy >= 0 And y + mapy < 999 Then
						SetColor(255, 255, 255)
						If emap[x + mapx, y + mapy, 0] <> Null Then
							DrawPicture(emap[x + mapx, y + mapy, 0].img, (x * 32) - bVx, (y * 32) - bVy, 32, 32)
						Else
							DrawPicture(boden, (x * 32) - bVx, (y * 32) - bVy, 32, 32)
						EndIf
						If emap[x + mapx, y + mapy, 1] <> Null Then
							DrawPicture(emap[x + mapx, y + mapy, 1].img, (x * 32) - bVx, (y * 32) - bVy, 32, 32)
						EndIf
					Else
						SetColor(100, 100, 100)
						DrawPicture(boden, (x * 32) - bVx, (y * 32) - bVy, 32, 32)
					EndIf
				Next
			Next
			
			DrawMud()
				
			Drawsanddust()
			
			SetScale(1, 1)
			SetRotation(0)
			SetAlpha(1)
			SetColor(255, 255, 255)
			
			For Local x:Int = -1 To 1
				For Local y:Int = -1 To 1
					Local mapx:Int = (gVx / 32.0) / 40.0
					Local mapy:Int = (gVy / 32.0) / 40.0
					
					If mapx + x >= 0 And mapx + x < 40 And mapy + y >= 0 And mapy + y < 40 Then
						For Local srTmapobject:Tmapobject = EachIn objectmap[mapx + x, mapy + y]
							If srTmapobject.uTobject.size > 0 Then
								SetScale(1, 1)
								SetRotation(0)
								SetAlpha(0.4)
								SetColor(255, 64, 64)
								
								SetHandle(srTmapobject.uTobject.size / 2.0, srTmapobject.uTobject.size / 2.0)
								DrawOval(srTmapobject.dox - gVx, srTmapobject.doy - gVy, srTmapobject.uTobject.size, srTmapobject.uTobject.size)
							EndIf
							SetHandle(0, 0)
							SetAlpha(1)
							SetColor(255, 255, 255)
						
							srTmapobject.draw()
							
						Next
					EndIf
				Next
			Next
			
			
			Drawfire()
				
			DrawSmoke()
				
			Drawfunken()
			
			'nTmapobject.dox = 512
			'nTmapobject.doy = 348
			'nTmapobject.draw()
			
			SetScale(1, 1)
			SetRotation(0)
			SetAlpha(0.75)
			SetColor(0, 0, 255)
		
			For Local cTwaypoint:Twaypoint = EachIn waypointlist
				SetHandle(cTwaypoint.size, cTwaypoint.size)
				SetColor(0, 0, 255)
				If cTwaypoint.x - gVx > - 500 And cTwaypoint.x - gVx < 1524 And cTwaypoint.y - gVy > - 500 And cTwaypoint.y - gVy < 1524 Then
					DrawOval(cTwaypoint.x - gVx, cTwaypoint.y - gVy, cTwaypoint.size * 2, cTwaypoint.size * 2)
					Local nr3:Int = 0
					For cTwaypoint.otherWP = EachIn cTwaypoint.otherlist
						Local entf234:Float = Sqr((cTwaypoint.x - cTwaypoint.otherWP.x) ^ 2 + (cTwaypoint.y - cTwaypoint.otherWP.y) ^ 2)
						Local winkel234:Float = -ATan2(cTwaypoint.x - cTwaypoint.otherWP.x, cTwaypoint.y - cTwaypoint.otherWP.y) + 270
						SetHandle(2.5, entf234 / 2)
						SetRotation(winkel234 - 90)
						
						If cTwaypoint.dist[nr3] = 0 Then SetColor(255, 0, 0) Else SetColor(0, 0, 255)
						nr3 = nr3 + 1
						DrawRect((cTwaypoint.x + Cos(winkel234) * (entf234 / 2)) - gVx, (cTwaypoint.y + Sin(winkel234) * (entf234 / 2)) - gVy, 5, entf234)
					Next
				EndIf
			Next
			
			SetScale(1, 1)
			SetRotation(0)
			SetHandle(0, 0)
			SetAlpha(1)
			SetColor(255, 255, 255)
			For Local x:Int = -1 To Int(aufloesung[0] / 32.0) + 1
				For Local y:Int = -1 To Int(aufloesung[1] / 32.0) + 1
					Local mapx:Int = (gVx) / 32
					Local mapy:Int = (gVy) / 32
					If x + mapx >= 0 And x + mapx < 999 And y + mapy >= 0 And y + mapy < 999 Then
						If emap[x + mapx, y + mapy, 2] <> Null Then
							DrawPicture(emap[x + mapx, y + mapy, 2].img, (x * 32) - bVx, (y * 32) - bVy, 32, 32)
						EndIf
						If wallmap[x + mapx, y + mapy] = 1 And wallmod = 1 Then
							SetScale(1, 1)
							SetRotation(0)
							SetHandle(0, 0)
							SetAlpha(0.5)
							SetColor(255, 0, 0)
							DrawRect((x * 32) - bVx, (y * 32) - bVy, 32, 32)
						End If
					EndIf
				Next
			Next
			
			
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
			
			
			If MouseX() > 200 And MouseY() < 618 Then
				SetAlpha(0.5)
				SetColor(255, 0, 255)
				SetHandle(0, 0)
				SetRotation(0)
				If Int((MouseX() + gVx) / 32.0) >= 0 And Int((MouseX() + gVx) / 32.0) < 1000 And Int((MouseY() + gVy) / 32.0) >= 0 And Int((MouseY() + gVy) / 32.0) < 1000 Then
					If pinselsize = 0 Then
						DrawRect((Int((MouseX() + gVx) / 32.0) * 32) - gVx, (Int((MouseY() + gVy) / 32.0) * 32) - gVy, 32, 32)
					Else
						Local midteaX:Int = (Int((MouseX() + gVx) / 32.0) * 32) - gVx
						Local midteaY:Int = (Int((MouseY() + gVy) / 32.0) * 32) - gVy
						If pinselmodus = 0 Then
							For Local x:Int = -(pinselsize) * 32 To (pinselsize) * 32 Step 32
								For Local y:Int = -(pinselsize) * 32 To (pinselsize) * 32 Step 32
									DrawRect(midteaX - x, midteaY - y, 32, 32)
								Next
							Next
						Else
							Local entf:Float = Sqr(((pinselsize) * 32) ^ 2 + (0) ^ 2)
							For Local x:Int = -(pinselsize) * 32 To (pinselsize) * 32 Step 32
								For Local y:Int = -(pinselsize) * 32 To (pinselsize) * 32 Step 32
									If entf >= Sqr((x) ^ 2 + (y) ^ 2) Then DrawRect(midteaX - x, midteaY - y, 32, 32)
								Next
							Next
						End If
					EndIf
				EndIf
			EndIf
			
			If MouseDown(1) Then
				If MouseX() > 200 And MouseY() < 618 Then
					If (MouseX() < 846 + (aufloesung[0] - 1023) Or MouseX() > 846 + (aufloesung[0] - 1023) + 150) And (MouseY() < 25 Or MouseY() > 175) Or (MouseX() < 846 + (aufloesung[0] - 1023) Or MouseX() > 846 + (aufloesung[0] - 1023) + 150) Or (MouseY() < 25 Or MouseY() > 175) Then
						If waymod = 0 Then
							If Int((MouseX() + gVx) / 32.0) >= 0 And Int((MouseX() + gVx) / 32.0) < 1000 And Int((MouseY() + gVy) / 32.0) >= 0 And Int((MouseY() + gVy) / 32.0) < 1000 Then
								If pinselsize = 0 Then
									Local drx:Int = Int((MouseX() + gVx) / 32.0)
									Local dry:Int = Int((MouseY() + gVy) / 32.0)
									If wallmod = 0 Then
										If pinselmix = 0 Then emap[drx, dry, selectedlayer] = selectedtex
									Else
										If wallmodklick = 0 Then
											wallmodklick = 1 + wallmap[drx, dry]
										ElseIf wallmodklick = 1
											wallmap[drx, dry] = 1
										ElseIf wallmodklick = 2
											wallmap[drx, dry] = 0
										End If
									EndIf
									
									If pinselmix = 1 And wallmod = 0 Then
										If pinselunmix = 1 Then
											If emap[drx, dry, selectedlayer].isRendert = 1 Then emap[drx, dry, selectedlayer] = emap[drx, dry, selectedlayer].orginal
										Else
											renderTile(drx, dry, selectedlayer)
										EndIf
									EndIf
								ElseIf pinselsize > 0 Then
									If pinselmodus = 0 Then
										For Local x:Int = -(pinselsize) To (pinselsize)
											For Local y:Int = -(pinselsize) To (pinselsize)
												If Int((MouseX() + gVx) / 32.0) + x >= 0 And Int((MouseY() + gVy) / 32.0) + y >= 0 And Int((MouseX() + gVx) / 32.0) + x < 1000 And Int((MouseY() + gVy) / 32.0) + y < 1000
													If wallmod = 0 Then
														If  pinselmix = 0 Then emap[Int((MouseX() + gVx) / 32.0) + x, Int((MouseY() + gVy) / 32.0) + y, selectedlayer] = selectedtex
													Else
														If wallmodklick = 0 Then
															wallmodklick = 1 + wallmap[Int((MouseX() + gVx) / 32.0) , Int((MouseY() + gVy) / 32.0) ]
														ElseIf wallmodklick = 1
															wallmap[Int((MouseX() + gVx) / 32.0) + x, Int((MouseY() + gVy) / 32.0) + y] = 1
														ElseIf wallmodklick = 2
															wallmap[Int((MouseX() + gVx) / 32.0) + x, Int((MouseY() + gVy) / 32.0) + y] = 0
														End If
													EndIf
												EndIf
											Next
										Next
										If pinselmix = 1 And wallmod = 0 Then
											Local drx:Int = Int((MouseX() + gVx) / 32.0)
											Local dry:Int = Int((MouseY() + gVy) / 32.0)
											For Local x:Int = -(pinselsize + 1) To (pinselsize)
												For Local y:Int = -(pinselsize + 1) To (pinselsize)
													If drx + x >= 0 And dry + y >= 0 And drx + x < 1000 And dry + y < 1000
														If pinselunmix = 1 Then
															If emap[drx + x, dry + y, selectedlayer].isRendert = 1 Then emap[drx + x, dry + y, selectedlayer] = emap[drx + x, dry + y, selectedlayer].orginal
														Else
															renderTile(drx + x, dry + y, selectedlayer)
														EndIf
													EndIf
												Next
											Next
										EndIf
									ElseIf pinselmodus = 1 Then
										Local entf:Float = Sqr(((pinselsize)) ^ 2 + (0) ^ 2)
										For Local x:Int = -(pinselsize) To (pinselsize)
											For Local y:Int = -(pinselsize) To (pinselsize)
												If Int((MouseX() + gVx) / 32.0) + x >= 0 And Int((MouseY() + gVy) / 32.0) + y >= 0 And Int((MouseX() + gVx) / 32.0) + x < 1000 And Int((MouseY() + gVy) / 32.0) + y < 1000
													If entf >= Sqr((x) ^ 2 + (y) ^ 2) Then
														If wallmod = 0 Then
															If pinselmix = 0 Then emap[Int((MouseX() + gVx) / 32.0) + x, Int((MouseY() + gVy) / 32.0) + y, selectedlayer] = selectedtex
														Else
															If wallmodklick = 0 Then
																wallmodklick = 1 + wallmap[Int((MouseX() + gVx) / 32.0) , Int((MouseY() + gVy) / 32.0)]
															ElseIf wallmodklick = 1
																wallmap[Int((MouseX() + gVx) / 32.0) + x, Int((MouseY() + gVy) / 32.0) + y] = 1
															ElseIf wallmodklick = 2
																wallmap[Int((MouseX() + gVx) / 32.0) + x, Int((MouseY() + gVy) / 32.0) + y] = 0
															End If
														EndIf
													EndIf
												EndIf
											Next
										Next
										If pinselmix = 1 And wallmod = 0 Then
											Local entfmix:Float = Sqr(((pinselsize)) ^ 2 + (0) ^ 2)
											Local drx:Int = Int((MouseX() + gVx) / 32.0)
											Local dry:Int = Int((MouseY() + gVy) / 32.0)
											For Local x:Int = -(pinselsize + 1) To (pinselsize + 1)
												For Local y:Int = -(pinselsize + 1) To (pinselsize + 1)
													If drx + x >= 0 And dry + y >= 0 And drx + x < 1000 And dry + y < 1000
														If entfmix >= Sqr((x) ^ 2 + (y) ^ 2) Then
															If pinselunmix = 1 Then
																If emap[drx + x, dry + y, selectedlayer].isRendert = 1 Then emap[drx + x, dry + y, selectedlayer] = emap[drx + x, dry + y, selectedlayer].orginal
															Else
																renderTile(drx + x, dry + y, selectedlayer)
															EndIf
														EndIf
													EndIf
												Next
											Next
										EndIf
									EndIf
								ElseIf pinselsize = -1 Then
									If md Then
										If picdraw[0] > - 1 And picdraw[1] > - 1 Then
											Local drx:Int = Int((MouseX() + gVx) / 32.0)
											Local dry:Int = Int((MouseY() + gVy) / 32.0)
											Local vonx:Int, bisx:Int, vony:Int, bisy:Int
											If drx < picdraw[0] Then vonx = drx ; bisx = picdraw[0] Else vonx = picdraw[0] ; bisx = drx
											If dry < picdraw[1] Then vony = dry ; bisy = picdraw[1] Else vony = picdraw[1] ; bisy = dry
											For Local x:Int = vonx To bisx
												For Local y:Int = vony To bisy
													If x >= 0 And x <= 999 And y >= 0 And y <= 999 Then
														emap[x, y, selectedlayer] = selectedtex
													EndIf
												Next
											Next
											picdraw[0] = - 1
											picdraw[1] = - 1
										Else
											picdraw[0] = Int((MouseX() + gVx) / 32.0)
											picdraw[1] = Int((MouseY() + gVy) / 32.0)
											If picdraw[0] < 0 Then picdraw[0] = 0
											If picdraw[0] > 999 Then picdraw[0] = 999
											If picdraw[1] < 0 Then picdraw[1] = 0
											If picdraw[1] > 999 Then picdraw[1] = 999
										End If
									EndIf
								EndIf
							EndIf
						ElseIf waymod = 1 Then
							If md Then
								Local drwx:Int = Int((MouseX() + gVx))
								Local drwy:Int = Int((MouseY() + gVy))
								If waymodaction = 0 Then 'add
									For Local cTway:Twaypoint = EachIn waypointlist
										If Right(cTway.name, cTway.name.Length - (cTway.name.Find("_") + 1)).ToInt() >= waymodcounter Then waymodcounter = Right(cTway.name, cTway.name.Length - (cTway.name.Find("_") + 1)).ToInt() + 1
									Next
									Local nTwaypoint:Twaypoint = New Twaypoint
									waypointlist.AddLast(nTwaypoint)
									nTwaypoint.x = drwx
									nTwaypoint.y = drwy
									nTwaypoint.name = "WAYPOINTNR_" + waymodcounter
									nTwaypoint.size = 30
									waymodselect = Null
								ElseIf waymodaction = 1 'del
									For Local cTwaypoint:Twaypoint = EachIn waypointlist
										If Sqr((drwx - cTwaypoint.x) ^ 2 + (drwy - cTwaypoint.y) ^ 2) < cTwaypoint.size Then
											For cTwaypoint.otherWP = EachIn cTwaypoint.otherlist
												For cTwaypoint.otherWP.otherWP = EachIn cTwaypoint.otherWP.otherlist
													If cTwaypoint.otherWP.otherWP = cTwaypoint Then cTwaypoint.otherWP.otherlist.Remove(cTwaypoint)
												Next
											Next
											waypointlist.Remove(cTwaypoint)
										EndIf
									Next
									waymodselect = Null
								ElseIf waymodaction = 2 'set
									waymodselect = Null
									For Local cTwaypoint:Twaypoint = EachIn waypointlist
										If Sqr((drwx - cTwaypoint.x) ^ 2 + (drwy - cTwaypoint.y) ^ 2) < cTwaypoint.size Then
											inputwayWindow(cTwaypoint) ; Exit
										EndIf
									Next
									
									
								ElseIf waymodaction = 3 'bind
									For Local cTwaypoint:Twaypoint = EachIn waypointlist
										If Sqr((drwx - cTwaypoint.x) ^ 2 + (drwy - cTwaypoint.y) ^ 2) < cTwaypoint.size Then
											If waymodselect = Null Then
												waymodselect = cTwaypoint
											EndIf
										EndIf
									Next
								EndIf
							Else
								If waymodselect <> Null Then
									SetScale(1, 1)
									SetRotation(0)
									SetAlpha(0.75)
									Local drwx:Int = Int((MouseX() + gVx))
									Local drwy:Int = Int((MouseY() + gVy))
									Local entf234:Float = Sqr((waymodselect.x - drwx) ^ 2 + (waymodselect.y - drwy) ^ 2)
									Local winkel234:Float = -ATan2(waymodselect.x - drwx, waymodselect.y - drwy) + 270
									SetHandle(2.5, entf234 / 2)
									SetRotation(winkel234 - 90)
									SetColor(255, 255, 0)
									DrawRect(waymodselect.x + Cos(winkel234) * (entf234 / 2), waymodselect.y + Sin(winkel234) * (entf234 / 2), 5, entf234)
								EndIf
							EndIf
							
						ElseIf waymod = 2 Then
							If md Then
								Local drwx:Int = Int((MouseX() + gVx))
								Local drwy:Int = Int((MouseY() + gVy))
								If objmodaction = 0 Then 'add
									If objmodselect <> Null Then
										Local nTmapobj:Tmapobject = New Tmapobject
										Local setx:Int = (drwx / 32.0) / 40.0
										Local sety:Int = (drwy / 32.0) / 40.0
										If setx < 0 Then setx = 0
										If setx > 39 Then setx = 39
										If sety < 0 Then sety = 0
										If sety > 39 Then sety = 39
										nTmapobj.setup(objmodselect.cname)
										objectmap[setx, sety].AddLast(nTmapobj)
										nTmapobj.dox = drwx
										nTmapobj.doy = drwy
										'Notify("ok obj createt " + setx + ":" + sety + ">" + drwx + ":" + drwy)
									EndIf
								ElseIf objmodaction = 1 'del
									For Local x:Int = 0 To 39
										For Local y:Int = 0 To 39
											For Local sTmapobj:Tmapobject = EachIn objectmap[x, y]
												If Sqr((sTmapobj.dox - drwx) ^ 2 + (sTmapobj.doy - drwy) ^ 2) < 30 Then
													objectmap[x, y].Remove(sTmapobj)
												End If
											Next
										Next
									Next
								ElseIf objmodaction = 2 'move
									For Local x:Int = 0 To 39
										For Local y:Int = 0 To 39
											For Local sTmapobj:Tmapobject = EachIn objectmap[x, y]
												If Sqr((sTmapobj.dox - drwx) ^ 2 + (sTmapobj.doy - drwy) ^ 2) < 30 Then
													objmodmove = sTmapobj
													
												End If
											Next
										Next
									Next
								EndIf
							Else
								If objmodmove <> Null Then
									Local drwx:Int = Int((MouseX() + gVx))
									Local drwy:Int = Int((MouseY() + gVy))
									objmodmove.dox = drwx
									objmodmove.doy = drwy
								EndIf
							EndIf
							
						EndIf
						
						
					End If
				End If
			Else
				wallmodklick = 0
				If waymod = 1 And waymodaction = 3 Then
					Local drwx:Int = Int((MouseX() + gVx))
					Local drwy:Int = Int((MouseY() + gVy))
					For Local cTwaypoint:Twaypoint = EachIn waypointlist
						If Sqr((drwx - cTwaypoint.x) ^ 2 + (drwy - cTwaypoint.y) ^ 2) < cTwaypoint.size Then
							If waymodselect <> Null Then
								Local found:Int = 0
								For waymodselect.otherWP = EachIn waymodselect.otherlist
									If cTwaypoint = waymodselect.otherWP Then found = 1
								Next
								If found = 0 Then cTwaypoint.otherlist.AddLast(waymodselect)
								If found = 0 Then waymodselect.otherlist.AddLast(cTwaypoint)
								
								waymodselect.chaged = 1
								cTwaypoint.chaged = 1
								waymodselect = Null
							EndIf
						EndIf
					Next
				End If
				
				If picdraw[0] > - 1 And picdraw[1] > - 1 Then
					Local drx:Int = Int((MouseX() + gVx) / 32.0)
					Local dry:Int = Int((MouseY() + gVy) / 32.0)
					For Local x:Int = -1 To Int(aufloesung[0] / 32.0) + 1
						For Local y:Int = -1 To Int(aufloesung[1] / 32.0) + 1
							Local mapx:Int = (gVx) / 32
							Local mapy:Int = (gVy) / 32
							Local vonx:Int, bisx:Int, vony:Int, bisy:Int
							If drx < picdraw[0] Then vonx = drx ; bisx = picdraw[0] Else vonx = picdraw[0] ; bisx = drx
							If dry < picdraw[1] Then vony = dry ; bisy = picdraw[1] Else vony = picdraw[1] ; bisy = dry
							If x + mapx >= vonx And x + mapx <= bisx And y + mapy >= vony And y + mapy <= bisy Then
								SetScale(1, 1)
								SetRotation(0)
								SetHandle(0, 0)
								SetAlpha(0.5)
								SetColor(0, 0, 255)
								DrawRect((x * 32) - bVx, (y * 32) - bVy, 32, 32)
							EndIf
						Next
					Next
				End If
				
				waymodselect = Null
				objmodmove = Null
			End If
			
			rem
			SetAlpha(1)
			SetColor(255, 255, 255)
			SetHandle(0, 0)
			SetRotation(0)
			If MouseX() > 200 Then
				If (MouseX() < 846 Or MouseX() > 846 + 150) And (MouseY() < 25 Or MouseY() > 175) Or (MouseX() < 846 Or MouseX() > 846 + 150) Or (MouseY() < 25 Or MouseY() > 175) Then
					If Int((MouseX() + gVx) / 32.0) >= 0 And Int((MouseX() + gVx) / 32.0) < 1000 And Int((MouseY() + gVy) / 32.0) >= 0 And Int((MouseY() + gVy) / 32.0) < 1000 Then
						If emap[Int((MouseX() + gVx) / 32.0), Int((MouseY() + gVy) / 32.0), 0] <> Null Then
							DrawText("x: " + Int(Int(MouseX() + gVx) / 32.0) + " y: " + Int(Int(MouseY() + gVy) / 32.0) + " >" + emap[Int((MouseX() + gVx) / 32.0), Int((MouseY() + gVy) / 32.0), 0].group, MouseX() + 20, MouseY() - 20)
						EndIf
					EndIf
				End If
			End If
			end rem
			
			
			If MouseDown(2) Then
				If mouselooklock = 0 Then
					If MouseX() > 200 And MouseY() < 618Then
						If (MouseX() < 846 + (aufloesung[0] - 1023) Or MouseX() > 846 + (aufloesung[0] - 1023) + 150) And (MouseY() < 25 Or MouseY() > 175) Or (MouseX() < 846 + (aufloesung[0] - 1023) Or MouseX() > 846 + (aufloesung[0] - 1023) + 150) Or (MouseY() < 25 Or MouseY() > 175) Then
							gVx = gVx - (MouseX() - omx) ; gVy = gVy - (MouseY() - omy)
							mouselooklock = 1
						End If
					EndIf
				EndIf
				If mouselooklock = 1 Then
					gVx = gVx - (MouseX() - omx) ; gVy = gVy - (MouseY() - omy)
				EndIf
			Else
				mouselooklock = 0
			End If
			If gVx < - 512 Then gVx = -512
			If gVx > 32000 - 512 Then gVx = 32000 - 512
			If gVy < - 384 Then gVy = -384
			If gVy > 32000 - 384 Then gVy = 32000 - 384
			omx = MouseX() ; omy = MouseY()
			
			
			SetScale(1, 1)
			SetRotation(0)
			SetHandle(0, 0)
			SetAlpha(1)
			SetColor(255, 255, 255)
			
			If waymod = 0 Then
				If nowGroup <> Null Then
					SetAlpha(0.5)
					SetColor(0, 0, 0)
					DrawRect(200, 0, 5, aufloesung[1])
							
					SetAlpha(1)
					SetColor(100, 100, 100)
					DrawRect(5, 65, 155, 478)
					
					Local lrow:Int = 1, Vy:Float = 0
					If nowGroup.texlist.Count() > 12 Then
						Vy = (- Float(nowGroup.texlist.Count() - 12) * 35.0) * (Float(menuVy) / 378.0)
					EndIf
						
					For nowGroup.texlink = EachIn nowGroup.texlist
						lrow = lrow + 1
						
						If md Then
							If MouseX() > 5 And MouseX() < 160 And MouseY() > 65 And MouseY() < 543 Then
								If MouseX() > 5 And MouseX() < 160 And MouseY() > (lrow * 35) + Vy - 1 And MouseY() < (lrow * 35) + Vy + 34 Then selectedtex = nowGroup.texlink
							End If
						EndIf
						
						If selectedtex = nowGroup.texlink Then
							SetColor(150, 150, 150)
							DrawRect(5, (lrow * 35) + Vy - 1, 155, 34)
							
							If nowGroup.texlink.beforeTex <> Null And nowGroup.texlink.group.Find("=") > 0 Then
								SetColor(200, 0, 0)
								DrawRect(140, (lrow * 35) + Vy + 14, 10, 10)
								If md Then
									If mouseover(140, (lrow * 35) + Vy + 14, 10, 10) Then
										selectedtex = nowGroup.texlink.beforeTex
										For Local x:Int = 0 To 999
											For Local y:Int = 0 To 999
												If emap[x, y, 0] = nowGroup.texlink Then
													emap[x, y, 0] = nowGroup.texlink.beforeTex
												End If
												If emap[x, y, 1] = nowGroup.texlink Then
													emap[x, y, 1] = nowGroup.texlink.beforeTex
												End If
												If emap[x, y, 2] = nowGroup.texlink Then
													emap[x, y, 2] = nowGroup.texlink.beforeTex
												End If
											Next
										Next
										nowGroup.texlist.Remove(nowGroup.texlink)
										For Local cTtexgroup:Ttexgroup = EachIn texgrouplist
											If cTtexgroup.texlist.Count() = 0 Then
												 texgrouplist.Remove(cTtexgroup)
											EndIf
										Next
									EndIf
								End If
							EndIf
						EndIf
						
						SetColor(255, 255, 255)
						DrawPicture(nowGroup.texlink.img, 10, (lrow * 35) + Vy, 32, 32)
						If Left(nowGroup.texlink.datname, nowGroup.texlink.datname.Find(".")).Length > 10 Then
							DrawText(Left(Left(nowGroup.texlink.datname, nowGroup.texlink.datname.Find(".")), 10), 84, (lrow * 35) + 8 + Vy)
						Else
							DrawText(Left(nowGroup.texlink.datname, nowGroup.texlink.datname.Find(".")), 84, (lrow * 35) + 8 + Vy)
						EndIf
						
						SetColor(nowGroup.texlink.r, nowGroup.texlink.g, nowGroup.texlink.b)
						DrawRect(47, (lrow * 35) + Vy, 32, 32)
					Next
					
					
					
					SetColor(120, 120, 120)
					DrawRect(0, 0, 200, 65)
					DrawRect(0, 543, 200, 200)
					
					DrawRect(0, 65, 5, 543 - 65)
					
					DrawRect(180, 65, 20, 543 - 65)
					
					SetColor(150, 150, 150)
					DrawRect(160, 65, 20, 543 - 65)
					
					If MouseDown(1) Then
						If menulock = 0 Then
							If MouseX() > 160 And MouseX() < 180 And MouseY() > 65 + menuVy And MouseY() < 165 + menuVy Then menudiff = -((MouseY() - menuVy) - 65 - 50) ; menuVy = (MouseY() + menudiff) - 65 - 50 ; menulock = 1
						Else
							menuVy = (MouseY() + menudiff) - 65 - 50
						End If
					Else
						menulock = 0
					End If
					If menuVy < 0 Then menuVy = 0
					If menuVy > 378 Then menuVy = 378
					SetColor(180, 180, 180)
					DrawRect(160, 65 + menuVy, 20, 100)
					
					SetColor(255, 255, 255)
					DrawText("Aktuelle Textur Gruppe: ", 10, 10)
					DrawText(nowGroup.group, 10, 30)
					If selectedtex <> Null Then DrawPicture(selectedtex.img, 163, 30, 32, 32)
				End If
				
				SetColor(100, 100, 100)
				DrawRect(5, 593, 155, 150)
				
				Local glrow:Int = 0, gcVy:Float = 0
				If texgrouplist.Count() > 4 Then
					gcVy = (- Float(texgrouplist.Count() - 4) * 35.0) * (Float(menuVy) / 403.0)
				EndIf
				
				For Local cTtexgroup:Ttexgroup = EachIn texgrouplist
					If md Then
						If MouseX() > 5 And MouseX() < 160 And MouseY() > 593 And MouseY() < 743 Then
							If MouseX() > 5 And MouseX() < 160 And MouseY() > 593 + (glrow * 35) + gcVy - 1 And MouseY() < 593 + (glrow * 35) + gcVy + 34 Then nowGroup = cTtexgroup
						End If
					EndIf
					
					If (593 + (glrow * 35) + 8 + gcVy) > 593 - 35 Then
						If nowGroup = cTtexgroup Then
							SetColor(150, 150, 150)
							DrawRect(5, 593 + (glrow * 35) + gcVy + 1, 155, 34)
						EndIf
						
						SetColor(255, 255, 255)
						DrawText(cTtexgroup.group, 10, 593 + (glrow * 35) + 8 + gcVy)
						glrow = glrow + 1
					EndIf
				Next
			
			
				
				SetColor(150, 150, 150)
				DrawRect(160, 593, 20, 150)
				
				SetColor(120, 120, 120)
				DrawRect(0, 743, 200, aufloesung[1] - 743)
				
				If MouseDown(1) Then
					If gmenulock = 0 Then
						If MouseX() > 160 And MouseX() < 180 And MouseY() > 593 + gmenuVy And MouseY() < 643 + gmenuVy Then gmenudiff = -((MouseY() - gmenuVy) - 593 - 25) ; gmenuVy = (MouseY() + gmenudiff) - 593 - 25 ; gmenulock = 1
					Else
						gmenuVy = (MouseY() + gmenudiff) - 593 - 25
					End If
				Else
					gmenulock = 0
				End If
				If gmenuVy < 0 Then gmenuVy = 0
				If gmenuVy > 100 Then gmenuVy = 100
				SetColor(180, 180, 180)
				DrawRect(160, 593 + gmenuVy, 20, 50)
			EndIf
			
		
			'If button("Reload Tex", 50, 553, 100, 30,, "Laedt die Texturen erneut. Von den veraenderten alten Texturen geht keine Verloren.") Then reloadTexData()
		
			If waymod = 0 Then
				SetAlpha(0.5)
				SetColor(0, 0, 0)
				DrawRect(205, 613 + (aufloesung[1] - 767), aufloesung[0] - 205, 5)
				SetAlpha(1)
				SetColor(120, 120, 120)
				DrawRect(200, 618 + (aufloesung[1] - 767), aufloesung[0] - 200, 150)
			ElseIf waymod = 1 Then
				SetAlpha(0.5)
				SetColor(0, 0, 0)
				DrawRect(0, 613 + (aufloesung[1] - 767), aufloesung[0], 5)
				SetAlpha(1)
				SetColor(120, 120, 120)
				DrawRect(0, 618 + (aufloesung[1] - 767), aufloesung[0], 150)
			ElseIf waymod = 2 Then
				SetAlpha(0.5)
				SetColor(0, 0, 0)
				DrawRect(0, 613 + (aufloesung[1] - 767), aufloesung[0], 5)
				SetAlpha(1)
				SetColor(120, 120, 120)
				DrawRect(0, 618 + (aufloesung[1] - 767), aufloesung[0], 150)
			EndIf
			
			If button("Load Map", 210, 628 + (aufloesung[1] - 767), 100, 30, 0, "Laedt eine gespeicherte Map.") Then
				Local ergebnis:String = inputWindow("Load Map", "Bitte gebe den Namen der zu ladenden Map ein.", "maps", "map")
				If ergebnis.Length > 0 Then
					If ergebnis.Find(".") > 0 Then loadMapData("maps\" + ergebnis) Else loadMapData("maps\" + ergebnis + ".map")
				EndIf
			End If
			
			If button("Save Map", 210, 678 + (aufloesung[1] - 767), 100, 30,, "Speichert eine gezeichnete Map.") Then
				Local ergebnis:String = inputWindow("Save Map", "Bitte gebe den Namen der zu speichernden Map ein.", "maps", "map")
				If ergebnis.Length > 0 Then
					If ergebnis.Find(".") > 0 Then SaveMapDat("maps\" + ergebnis) Else SaveMapDat("maps\" + ergebnis + ".map")
				EndIf
			End If
			
			Local layerleucht:Int
			If waymod = 0 Then
				If selectedlayer = 0 Then layerleucht = 1
				If button("Lay 1", 330, 628 + (aufloesung[1] - 767), 50, 30, layerleucht, "Setzt den Pinsel auf Layer 1") Then
					selectedlayer = 0
				End If
				layerleucht = 0
				If selectedlayer = 1 Then layerleucht = 1
				If button("Lay 2", 330, 678 + (aufloesung[1] - 767), 50, 30, layerleucht, "Setzt den Pinsel auf Layer 2") Then
					selectedlayer = 1
				End If
				layerleucht = 0
				If selectedlayer = 2 Then layerleucht = 1
				If button("Lay 3", 330, 728 + (aufloesung[1] - 767), 50, 30, layerleucht, "Setzt den Pinsel auf Layer 3") Then
					selectedlayer = 2
				End If
				layerleucht = 0
				
				If selectedtex = Null Then layerleucht = 1
				If button("Delete", 400, 628 + (aufloesung[1] - 767), 60, 30, layerleucht, "Loeschmodus fuer den Pinsel.") Then
					selectedtex = Null
				End If
				layerleucht = 0
				
				If pinselmodus = 0 Then layerleucht = 1
				If button("Quad", 400, 678 + (aufloesung[1] - 767), 60, 30, layerleucht, "Der Pinsel zeichnet Quadratisch.") Then
					pinselmodus = 0
				End If
				layerleucht = 0
				If pinselmodus = 1 Then layerleucht = 1
				If button("Round", 400, 728 + (aufloesung[1] - 767), 60, 30, layerleucht, "Der Pinsel zeichnet Rund.") Then
					pinselmodus = 1
				End If
				layerleucht = 0
				
				If pinselsize = 0 Then layerleucht = 1
				If button("1 x 1", 480, 628 + (aufloesung[1] - 767), 60, 30, layerleucht, "Der Pinsel ist 1 x 1 gross.") Then
					pinselsize = 0
				End If
				layerleucht = 0
				If pinselsize = 1 Then layerleucht = 1
				If button("3 x 3", 480, 678 + (aufloesung[1] - 767), 60, 30, layerleucht, "Der Pinsel ist 3 x 3 gross.") Then
					pinselsize = 1
				End If
				layerleucht = 0
				If pinselsize = 2 Then layerleucht = 1
				If button("5 x 5", 480, 728 + (aufloesung[1] - 767), 60, 30, layerleucht, "Der Pinsel ist 5 x 5 gross.") Then
					pinselsize = 2
				End If
				layerleucht = 0
				
				If pinselmix = 1 Then layerleucht = 1
				If button("Mix", 560, 628 + (aufloesung[1] - 767), 60, 30, layerleucht, "Der Pinsel Mixt die Texturen.") Then
					pinselmix = 1 - pinselmix
					If pinselmix = 0 Then pinselunmix = 0
				End If
				layerleucht = 0
				
				If pinselunmix = 1 Then layerleucht = 1
				If button("UnMix", 560, 678 + (aufloesung[1] - 767), 60, 30, layerleucht, "Der Pinsel UnMixt die Texturen.") Then
					pinselunmix = 1 - pinselunmix
				End If
				layerleucht = 0
				
				If wallmod = 1 Then layerleucht = 1
				If button("WALL", 560, 728 + (aufloesung[1] - 767), 60, 30, layerleucht, "Schaltet um in den Wandbau Modus.") Then
					wallmod = 1 - wallmod
				End If
				layerleucht = 0
				
				If pinselsize = -1 Then layerleucht = 1
				If button("Picdraw", 640, 628 + (aufloesung[1] - 767), 60, 30, layerleucht, "Der Pinsel zeichnet eine bestimmte Flaeche.") Then
					pinselsize = -1
					picdraw:Int[0] = - 1
					picdraw:Int[1] = - 1
				End If
				layerleucht = 0
			ElseIf waymod = 1 Then
				If waymodaction = 0 Then layerleucht = 1
				If button("Add", 330, 628 + (aufloesung[1] - 767), 60, 30, layerleucht, "Fuegt einen neuen Waypoint hinzu.") Then
					waymodaction = 0
				End If
				layerleucht = 0
				If waymodaction = 1 Then layerleucht = 1
				If button("Delete", 330, 678 + (aufloesung[1] - 767), 60, 30, layerleucht, "Loescht einen Waypoint.") Then
					waymodaction = 1
				End If
				layerleucht = 0
				If waymodaction = 2 Then layerleucht = 1
				If button("Edit", 330, 728 + (aufloesung[1] - 767), 60, 30, layerleucht, "Den Waypont einstellen.") Then
					waymodaction = 2
				End If
				layerleucht = 0
				If waymodaction = 3 Then layerleucht = 1
				If button("Bind", 410, 628 + (aufloesung[1] - 767), 60, 30, layerleucht, "Den Waypont mit anderen Waypoints verbinden.") Then
					waymodaction = 3
				End If
				layerleucht = 0
			ElseIf waymod = 2 Then
				If objmodaction = 0 Then layerleucht = 1
				If button("Add", 330, 628 + (aufloesung[1] - 767), 60, 30, layerleucht, "Fuegt einen neues Object hinzu.") Then
					objmodaction = 0
				End If
				layerleucht = 0
				If objmodaction = 1 Then layerleucht = 1
				If button("Delete", 330, 678 + (aufloesung[1] - 767), 60, 30, layerleucht, "Loescht ein Object.") Then
					objmodaction = 1
				End If
				layerleucht = 0
				If button("Select", 330, 728 + (aufloesung[1] - 767), 60, 30, layerleucht, "Ruft eine liste der Objecte auf.") Then
					objmodselect = objinputWindow()
				End If
				layerleucht = 0
				
				If objmodaction = 2 Then layerleucht = 1
				If button("Move", 410, 628 + (aufloesung[1] - 767), 60, 30, layerleucht, "Bewegt ein Object.") Then
					objmodaction = 2
				End If
				layerleucht = 0
				If button("Import", 410, 728 + (aufloesung[1] - 767), 60, 30, layerleucht, "Importiert neue Objecte.") Then
					objimportWindow()
				End If
				layerleucht = 0
			EndIf
			
			If waymod = 0 Then layerleucht = 1
			If button("Normal", 900, 628 + (aufloesung[1] - 767), 80, 30, layerleucht, "Schaltet um in den normalen Modus.") Then
				waymod = 0
			End If
			layerleucht = 0
			
			If waymod = 1 Then layerleucht = 1
			If button("Waypoint", 900, 678 + (aufloesung[1] - 767), 80, 30, layerleucht, "Schaltet um in den Waypoint Modus.") Then
				waymod = 1
			End If
			layerleucht = 0
			
			If waymod = 2 Then layerleucht = 1
			If button("Object", 900, 728 + (aufloesung[1] - 767), 80, 30, layerleucht, "Schaltet um in den Object Modus.") Then
				waymod = 2
			End If
			layerleucht = 0
			
			If viewmode = 1 Then layerleucht = 1
			If button("Panzer", 800, 628 + (aufloesung[1] - 767), 80, 30, layerleucht, "Zeigt die ferfuegbaren Panzermodels.") Then
				viewmode = 1
			End If
			layerleucht = 0

			If button("Global", 800, 678 + (aufloesung[1] - 767), 80, 30, layerleucht, "Ruft den globalen Mapscript Editor.") Then
				inputglobalWindow()
			End If
			layerleucht = 0
			
			
			
			
			SetScale(1, 1)
			SetRotation(0)
			SetAlpha(1)
			SetColor(0, 0, 0)
			SetHandle(0, 0)
			DrawRect(846 + (aufloesung[0] - 1023), 25, 150, 150)
			SetColor(255, 255, 255)
			DrawPicture(minimapI, 846 + (aufloesung[0] - 1023), 25, 150, 150)
			
			SetColor(0, 255, 0)
			DrawRect(846 + (aufloesung[0] - 1023) + ((gVx + 512) / 213), 25 + ((gVy + 384) / 213), 2, 2)
			If MouseDown(2) Then
				If mouselooklock = 0 Then
					If MouseX() > (846 + (aufloesung[0] - 1023)) And MouseX() < (846 + (aufloesung[0] - 1023) + 150) And MouseY() > 25 And MouseY() < 175 Then
						gVx = (((MouseX() - (846 + (aufloesung[0] - 1023)))) * 213)
						gVy = ((MouseY() - 25) * 213)
						mouselooklock = 2
					EndIf
				EndIf
				If mouselooklock = 2 Then
					If MouseX() > (846 + (aufloesung[0] - 1023)) And MouseX() < (846 + (aufloesung[0] - 1023) + 150) And MouseY() > 25 And MouseY() < 175 Then
						gVx = (((MouseX() - (846 + (aufloesung[0] - 1023)))) * 213)
						gVy = ((MouseY() - 25) * 213)
					EndIf
				End If
			Else
				mouselooklock = 0
			End If
		Case 1
			SetScale(1, 1)
			SetRotation(0)
			SetHandle(0, 0)
			SetAlpha(1)
			SetColor(100, 100, 100)
			DrawRect(0, 0, aufloesung[0], aufloesung[1])
		
			wink = wink + 1 Mod 359
			flipflopcolors = flipflopcolors + 1
			Local line:Int = 0
			For Local tank:Ttank = EachIn maptanklist
				line = line + 150
				tank.x = 150
				tank.y = line
				tank.winkel = wink
				For Local xx:Int = 0 To 9
					If tank.towerarray[xx] <> Null Then
						If tank.towerarray[xx].cannonFest Then tank.towerarray[xx].winkel = wink Else tank.towerarray[xx].winkel = -wink
					EndIf
				Next
				
				If flipflopcolors < 100 Then
					tank.R = 255
					tank.G = 255
					tank.B = 255
				ElseIf flipflopcolors > 100 And flipflopcolors < 200
					tank.R = 255
					tank.G = 0
					tank.B = 0
				ElseIf flipflopcolors > 200 And flipflopcolors < 300
					tank.R = 0
					tank.G = 255
					tank.B = 0
				ElseIf flipflopcolors > 300 And flipflopcolors < 400
					tank.R = 0
					tank.G = 0
					tank.B = 255
				ElseIf flipflopcolors > 400
					flipflopcolors = 0
				End If
				
				tank.Draw()
				
				SetScale(1, 1)
				SetRotation(0)
				SetHandle(0, 0)
				SetAlpha(1)
				SetColor(255, 255, 255)
				
			Next
			
			SetScale(1, 1)
			SetRotation(0)
			SetHandle(0, 0)
			SetAlpha(1)
			
			Local layerleucht:Int
			If viewmode = 1 Then layerleucht = 1
			If button("Zurueck", 800, 728 + (aufloesung[1] - 767), 80, 30, layerleucht, "Zurueck zum Editor.") Then
				viewmode = 0
			End If
			layerleucht = 0
			If button("Import", 700, 728 + (aufloesung[1] - 767), 80, 30, layerleucht, "Kopiert einen Panzer in die Map.") Then
				tankimportWindow()
			End If
			layerleucht = 0
			
			If button("Clear", 600, 728 + (aufloesung[1] - 767), 80, 30, layerleucht, "Loescht alle Panzer in der Map.") Then
				maptankscriptlist.Clear()
				mapdrawstankcriptlist.Clear()
				mapdrawtanklist.Clear()
				maptanklist.Clear()
			End If
			layerleucht = 0
	EndSelect
			
			
	For Local cTinfotext:Tinfotext = EachIn infotextlist
		SetColor(0, 0, 0)
		DrawRect(cTinfotext.x - 2, cTinfotext.y - 2 - 40, (cTinfotext.Text.Length * 8.5) + 4, 30 + 4)
		SetColor(120, 120, 120)
		DrawRect(cTinfotext.x, cTinfotext.y - 40, (cTinfotext.Text.Length * 8.5) , 30)
		SetColor(255, 255, 255)
		DrawText(cTinfotext.Text, cTinfotext.x + 7, cTinfotext.y - 40 + 7)
	Next
	infotextlist.clear()

	SetScale(1, 1)
	SetRotation(0)
	SetAlpha(1)
	SetColor(255, 255, 255)
	SetHandle(0, 0)
	Select mosuetarget
		Case 0
			DrawImage(mouseicon, MouseX(), MouseY())
	End Select
	mosuetarget = 0
	
	SetAlpha(1)
	Flip
Wend

SaveTexDat()

End


Function mouseover:Int(x:Int, y:Int, w:Int, h:Int)
	Local ret:Int = 0
	
	If MouseX() > x And MouseX() < x + w And MouseY() > y And MouseY() < y + h Then ret = 1
	
	Return ret
End Function



Function button:Int(text:String, x:Int, y:Int, w:Int, h:Int, on:Int = 0, infotext:String = "")
	Local ret:Int = 0
	SetColor(0, 0, 0)
	DrawRect(x - 2, y - 2, w + 4, h + 4)
	If mouseover(x, y, w, h) Then
		SetColor(180, 180, 180)
	Else
		If on Then SetColor(180, 200, 180) Else SetColor(120, 120, 120)
	EndIf
	DrawRect(x, y, w, h)
	If mouseover(x, y, w, h) Then
		SetColor(255, 255, 255)
	Else
		If on Then SetColor(0, 0, 0) Else SetColor(255, 255, 255)
	EndIf
	DrawText(Text, (x + (w / 2)) - ((Text.Length * 8.5) / 2), (y + (h / 2)) - (7))
	
	If md Then
		If mouseover(x, y, w, h) Then
			If md Then ret = 1
		End If
	End If
	
	If infotext.Length > 0 Then
		If mouseover(x, y, w, h) Then
			Local nTinfotext:Tinfotext = New Tinfotext
			infotextlist.AddLast(nTinfotext)
			nTinfotext.x = x
			nTinfotext.y = y
			nTinfotext.Text = infotext
		End If
	EndIf
	
	Return ret
End Function


Function inputWindow:String(title:String, text:String, dir:String = "", ending:String = "")
	Local ret:String, go:Int = 1
	Local window:TGadget, BUTTON_OK:TGadget, BUTTON_NOT:TGadget, inbox:TGadget, combobox:TGadget
	
	
	
	window = CreateWindow(title, 0, 0, 320, 200,, WINDOW_TITLEBAR | WINDOW_CENTER)
	CreateLabel(Text, 160 - 130, 25, 260, 50, window, LABEL_CENTER)
	BUTTON_OK = CreateButton("Ok", 160 + 50, 125, 100, 30, window)
	BUTTON_NOT = CreateButton("Abbrechen", 160 - 150, 125, 100, 30, window)
	inbox = CreateTextField(160 - 100, 75, 200, 20, window)

	If dir.Length > 0 Then
		combobox = CreateComboBox(160 - 100, 100, 200, 20, window)
		
		Local Gdir:Int = ReadDir(dir)
		If Gdir Then
			Repeat
				Local datei:String = NextFile(Gdir)
				If datei = "" Then Exit
				If datei = "." Or datei = ".."Then Continue
				If Right(datei, 3).ToLower() <> ending.ToLower() Then Continue
				AddGadgetItem(combobox, datei)
			Forever
		EndIf
		CloseDir Gdir
	End If
		
	While go
		WaitEvent 
		Select EventID()
			Case EVENT_WINDOWCLOSE
				Select EventSource()
					Case window
						window.Free()
						go = 0
				End Select
			Case EVENT_GADGETACTION
				Select EventSource()
					Case BUTTON_OK
						If inbox <> Null Then ret = inbox.GetText()
						If combobox <> Null Then If combobox.GetText().Length > 0 Then ret = combobox.GetText()
						go = 0
						window.Free()
					Case BUTTON_NOT
						window.Free()
						go = 0
				End Select
		End Select
	Wend
	Return ret
End Function


Function inputwayWindow(eTway:Twaypoint)
	Local go:Int = 1
	Local window:TGadget, BUTTON_OK:TGadget, BUTTON_NOT:TGadget
	
	Local startPL:TGadget, startFRND:TGadget, startFEND:TGadget
	Local scriptarea:TGadget
	
	window = CreateWindow("Waypoint Einstellung", 0, 0, 325, 500,, WINDOW_TITLEBAR | WINDOW_CENTER)
	CreateLabel("Waypoint Einstellungen:", 160 - 130, 25, 260, 15, window)
	
	startPL = CreateButton("Start Spieler", 30, 50, 200, 20, window, BUTTON_CHECKBOX)
	startFRND = CreateButton("Start Freund", 30, 75, 200, 20, window, BUTTON_CHECKBOX)
	startFEND = CreateButton("Start Feind", 30, 100, 200, 20, window, BUTTON_CHECKBOX)
	
	scriptarea = CreateTextArea(160 - 150, 125, 300, 300, window)
	
	For Local g:Int = 0 To 199
		If eTway.script[g].Length > 0 Then SetGadgetText(scriptarea, scriptarea.GetText() + eTway.script[g] + "~n")

		Select eTway.script[g]
			Case "STARTPLAYER"
				SetButtonState(startPL, True)
			Case "STARTFRIEND"
				SetButtonState(startFRND, True)
			Case "STARTENEMY"
				SetButtonState(startFEND, True)
		End Select
	Next
	
	
	
	BUTTON_OK = CreateButton("Ok", 160 + 50, 425, 100, 30, window)
	BUTTON_NOT = CreateButton("Abbrechen", 160 - 150, 425, 100, 30, window)


	
		
	While go
		WaitEvent 
		Select EventID()
			Case EVENT_WINDOWCLOSE
				Select EventSource()
					Case window
						window.Free()
						go = 0
				End Select
			Case EVENT_GADGETACTION
				Select EventSource()
					Case startPL
						If ButtonState(startPL) Then
							SetButtonState(startFRND, False)
							SetButtonState(startFEND, False)
						EndIf
					Case startFRND
						If ButtonState(startFRND) Then
							SetButtonState(startPL, False)
							SetButtonState(startFEND, False)
						EndIf
					Case startFEND
						If ButtonState(startFEND) Then
							SetButtonState(startPL, False)
							SetButtonState(startFRND, False)
						EndIf
					Case scriptarea
						FormatTextAreaText(scriptarea, 0, 0, 0, 0, 0)
						Local msgta:String = scriptarea.GetText()
						Local anfang:Int = 0, ende:Int
						Local msgsc:String
						Local tVOR:String, tHINTER:String
						
						While msgta.Contains("~n")
							msgsc = Left(msgta, msgta.Find("~n"))
							ende = msgta.Find("~n")
							
							Select msgsc
								Case "[BASE]"
									FormatTextAreaText(scriptarea, 255, 0, 0, 0, anfang, ende)
								Case "[E.BASE]"
									FormatTextAreaText(scriptarea, 255, 0, 0, 0, anfang, ende)
								Case "[POINTS]"
									FormatTextAreaText(scriptarea, 255, 0, 0, 0, anfang, ende)
								Case "STARTPLAYER"
									FormatTextAreaText(scriptarea, 0, 200, 0, 0, anfang, ende)
								Case "STARTFRIEND"
									FormatTextAreaText(scriptarea, 0, 200, 0, 0, anfang, ende)
								Case "STARTENEMY"
									FormatTextAreaText(scriptarea, 0, 200, 0, 0, anfang, ende)
							End Select
							If msgsc.Contains("=") Then
								tVOR = Left(msgsc, msgsc.Find("="))
								Local inanfang:Int = anfang
								Local inende:Int = msgsc.Find("=")
								tHINTER = Right(msgsc, msgsc.Length - (msgsc.Find("=") + 1))
								
								Select tVOR
									Case "EVERY"
										FormatTextAreaText(scriptarea, 0, 0, 255, 0, inanfang, inende)
									Case "COUNT"
										FormatTextAreaText(scriptarea, 0, 0, 255, 0, inanfang, inende)
									Case "CAN"
										FormatTextAreaText(scriptarea, 0, 0, 255, 0, inanfang, inende)
								End Select
							EndIf
							
							anfang = anfang + msgta.Find("~n") + 1
							msgta = Right(msgta, msgta.Length - (msgta.Find("~n") + 1))
						Wend
						msgsc = msgta
						ende = msgsc.Length
						
						Select msgsc
							Case "[BASE]"
								FormatTextAreaText(scriptarea, 255, 0, 0, 0, anfang, ende)
							Case "[E.BASE]"
								FormatTextAreaText(scriptarea, 255, 0, 0, 0, anfang, ende)
							Case "[POINTS]"
								FormatTextAreaText(scriptarea, 255, 0, 0, 0, anfang, ende)
							Case "STARTPLAYER"
								FormatTextAreaText(scriptarea, 0, 200, 0, 0, anfang, ende)
							Case "STARTFRIEND"
								FormatTextAreaText(scriptarea, 0, 200, 0, 0, anfang, ende)
							Case "STARTENEMY"
								FormatTextAreaText(scriptarea, 0, 200, 0, 0, anfang, ende)
						End Select
						If msgsc.Contains("=") Then
							tVOR = Left(msgsc, msgsc.Find("="))
							Local inanfang:Int = anfang
							Local inende:Int = msgsc.Find("=")
							tHINTER = Right(msgsc, msgsc.Length - (msgsc.Find("=") + 1))
							
							Select tVOR
								Case "EVERY"
									FormatTextAreaText(scriptarea, 0, 0, 255, 0, inanfang, inende)
								Case "COUNT"
									FormatTextAreaText(scriptarea, 0, 0, 255, 0, inanfang, inende)
								Case "CAN"
									FormatTextAreaText(scriptarea, 0, 0, 255, 0, inanfang, inende)
							End Select
						EndIf

					
						
					Case BUTTON_OK
						'Notify(scriptarea.GetText())
						
						Local msgta:String = scriptarea.GetText()
						Local lineta:Int = 0
						While msgta.Contains("~n")
							eTway.script[lineta] = Left(msgta, msgta.Find("~n"))
							msgta = Right(msgta, msgta.Length - (msgta.Find("~n") + 1))
							lineta = lineta + 1
						Wend
						eTway.script[lineta] = msgta
						
						
						Local found1:Int = -1
						Local found2:Int = -1
						Local found3:Int = -1
						For Local g:Int = 0 To 199
							Select eTway.script[g]
								Case "STARTPLAYER"
									found1 = g
								Case "STARTFRIEND"
									found2 = g
								Case "STARTENEMY"
									found3 = g
							End Select
						Next
						If found1 = -1 Then
							If ButtonState(startPL) Then
								For Local g:Int = 0 To 199
									If eTway.script[g].Length = 0 Then eTway.script[g] = "STARTPLAYER" ; Exit
								Next
							End If
						Else
							If ButtonState(startPL) Then
								
							Else
								eTway.script[found1] = ""
							End If
						End If
						
						If found2 = -1 Then
							If ButtonState(startFRND) Then
								For Local g:Int = 0 To 199
									If eTway.script[g].Length = 0 Then eTway.script[g] = "STARTFRIEND" ; Exit
								Next
							End If
						Else
							If ButtonState(startFRND) Then
								
							Else
								eTway.script[found2] = ""
							End If
						End If
						
						If found3 = -1 Then
							If ButtonState(startFEND) Then
								For Local g:Int = 0 To 199
									If eTway.script[g].Length = 0 Then eTway.script[g] = "STARTENEMY" ; Exit
								Next
							End If
						Else
							If ButtonState(startFEND) Then
								
							Else
								eTway.script[found3] = ""
							End If
						End If
						go = 0
						window.Free()
					Case BUTTON_NOT
						window.Free()
						go = 0
				End Select
		End Select
	Wend
End Function

Function inputglobalWindow()
	Local go:Int = 1
	Local window:TGadget, BUTTON_OK:TGadget, BUTTON_NOT:TGadget
	Local scriptarea:TGadget
	
	window = CreateWindow("Globale Einstellung", 0, 0, 325, 500,, WINDOW_TITLEBAR | WINDOW_CENTER)
	CreateLabel("Globale Einstellungen:", 160 - 130, 25, 260, 15, window)

	
	scriptarea = CreateTextArea(160 - 150, 100, 300, 300, window)
	
	For Local g:Int = 0 To 499
		If mapscript[g].Length > 0 Then SetGadgetText(scriptarea, scriptarea.GetText() + mapscript[g] + "~n")

	Next
	
	
	
	BUTTON_OK = CreateButton("Ok", 160 + 50, 425, 100, 30, window)
	BUTTON_NOT = CreateButton("Abbrechen", 160 - 150, 425, 100, 30, window)


	
		
	While go
		WaitEvent 
		Select EventID()
			Case EVENT_WINDOWCLOSE
				Select EventSource()
					Case window
						window.Free()
						go = 0
				End Select
			Case EVENT_GADGETACTION
				Select EventSource()
					Case scriptarea
						FormatTextAreaText(scriptarea, 0, 0, 0, 0, 0)
						Local msgta:String = scriptarea.GetText()
						Local anfang:Int = 0, ende:Int
						Local msgsc:String
						Local tVOR:String, tHINTER:String
						
						While msgta.Contains("~n")
							msgsc = Left(msgta, msgta.Find("~n"))
							ende = msgta.Find("~n")
							
							Select msgsc
								Case "[WIN]"
									FormatTextAreaText(scriptarea, 255, 0, 0, 0, anfang, ende)
								Case "[LOOSE]"
									FormatTextAreaText(scriptarea, 255, 0, 0, 0, anfang, ende)
							End Select
							If msgsc.Contains("=") Then
								tVOR = Left(msgsc, msgsc.Find("="))
								Local inanfang:Int = anfang
								Local inende:Int = msgsc.Find("=")
								tHINTER = Right(msgsc, msgsc.Length - (msgsc.Find("=") + 1))
								
								Select tVOR
									Case "TEAMSCORE"
										FormatTextAreaText(scriptarea, 0, 0, 255, 0, inanfang, inende)
									Case "E.TEAMSCORE"
										FormatTextAreaText(scriptarea, 0, 0, 255, 0, inanfang, inende)
								End Select
							EndIf
							
							anfang = anfang + msgta.Find("~n") + 1
							msgta = Right(msgta, msgta.Length - (msgta.Find("~n") + 1))
						Wend
						msgsc = msgta
						ende = msgsc.Length
						
						Select msgsc
							Case "[WIN]"
								FormatTextAreaText(scriptarea, 255, 0, 0, 0, anfang, ende)
							Case "[LOOSE]"
								FormatTextAreaText(scriptarea, 255, 0, 0, 0, anfang, ende)
						End Select
						If msgsc.Contains("=") Then
							tVOR = Left(msgsc, msgsc.Find("="))
							Local inanfang:Int = anfang
							Local inende:Int = msgsc.Find("=")
							tHINTER = Right(msgsc, msgsc.Length - (msgsc.Find("=") + 1))
							
							Select tVOR
								Case "TEAMSCORE"
									FormatTextAreaText(scriptarea, 0, 0, 255, 0, inanfang, inende)
								Case "E.TEAMSCORE"
									FormatTextAreaText(scriptarea, 0, 0, 255, 0, inanfang, inende)
							End Select
						EndIf

					
						
					Case BUTTON_OK
						'Notify(scriptarea.GetText())
						
						Local msgta:String = scriptarea.GetText()
						Local lineta:Int = 0
						While msgta.Contains("~n")
							mapscript[lineta] = Left(msgta, msgta.Find("~n"))
							msgta = Right(msgta, msgta.Length - (msgta.Find("~n") + 1))
							lineta = lineta + 1
						Wend
						mapscript[lineta] = msgta
						
						go = 0
						window.Free()
					Case BUTTON_NOT
						window.Free()
						go = 0
				End Select
		End Select
	Wend
End Function

Function objinputWindow:Tobject()
	Local ret:Tobject, go:Int = 1
	Local window:TGadget, BUTTON_OK:TGadget, BUTTON_NOT:TGadget, combobox:TGadget
	
	
	
	window = CreateWindow("Select", 0, 0, 320, 200,, WINDOW_TITLEBAR | WINDOW_CENTER)
	CreateLabel("Suche dir ein Object aus zum zeichen. Immoment gibt es leider nur diese moeglichkeit ein object auszuwaehlen.", 160 - 130, 25, 260, 50, window, LABEL_CENTER)
	BUTTON_OK = CreateButton("Ok", 160 + 50, 125, 100, 30, window)
	BUTTON_NOT = CreateButton("Abbrechen", 160 - 150, 125, 100, 30, window)

	combobox = CreateComboBox(160 - 100, 75, 200, 20, window)
	combobox.Clear()
	For Local gTobject:Tobject = EachIn mapobjectlist
		AddGadgetItem(combobox, gTobject.cname)
	Next

		
	While go
		WaitEvent 
		Select EventID()
			Case EVENT_WINDOWCLOSE
				Select EventSource()
					Case window
						window.Free()
						go = 0
				End Select
			Case EVENT_GADGETACTION
				Select EventSource()
					Case BUTTON_OK

						If combobox.GetText().Length > 0 Then
							Local sret:String = combobox.GetText()
							
							For Local gTobject:Tobject = EachIn mapobjectlist
									If gTobject.cname = sret Then ret = gTobject
							Next
							
							go = 0
							window.Free()
						EndIf
					Case BUTTON_NOT
						window.Free()
						go = 0
				End Select
		End Select
	Wend
	Return ret
End Function



Function objimportWindow()
	Local go:Int = 1
	Local window:TGadget, BUTTON_OK:TGadget, BUTTON_NOT:TGadget, combobox:TGadget
	Local chek_all:TGadget
	
	
	window = CreateWindow("Import", 0, 0, 320, 200,, WINDOW_TITLEBAR | WINDOW_CENTER)
	CreateLabel("Hier kannst du Objecte in die Map improtieren.", 160 - 130, 25, 260, 25, window, LABEL_CENTER)
	BUTTON_OK = CreateButton("Ok", 160 + 50, 125, 100, 30, window)
	BUTTON_NOT = CreateButton("Abbrechen", 160 - 150, 125, 100, 30, window)
	
	chek_all = CreateButton("Alle", 160 - 100, 50, 75, 20, window, BUTTON_CHECKBOX)
	
	combobox = CreateComboBox(160 - 100, 75, 200, 20, window)
	combobox.Clear()
	For Local gTobject:Tobject = EachIn objectlist
		AddGadgetItem(combobox, gTobject.cname)
	Next

		
	While go
		WaitEvent
		Select EventID()
			Case EVENT_WINDOWCLOSE
				Select EventSource()
					Case window
						window.Free()
						go = 0
				End Select
			Case EVENT_GADGETACTION
				Select EventSource()
					Case BUTTON_OK
						If combobox.GetText().Length > 0 Then
							Local sret:String = combobox.GetText()
							If Not ButtonState(chek_all) Then
								For Local gTobject:Tobject = EachIn objectlist
									If gTobject.cname = sret Then copyobjtomap(gTobject)
								Next
								go = 0
								window.Free()
							EndIf
						EndIf
						If ButtonState(chek_all) Then
							For Local gTobject:Tobject = EachIn objectlist
								copyobjtomap(gTobject)
							Next
							go = 0
							window.Free()
						EndIf
					Case BUTTON_NOT
						window.Free()
						go = 0
				End Select
		End Select
	Wend
	Return
End Function

Function tankimportWindow()
	Local go:Int = 1
	Local window:TGadget, BUTTON_OK:TGadget, BUTTON_NOT:TGadget, combobox:TGadget
	Local chek_all:TGadget
	
	
	window = CreateWindow("Import", 0, 0, 320, 200,, WINDOW_TITLEBAR | WINDOW_CENTER)
	CreateLabel("Hier kannst du Panzer in die Map improtieren.", 160 - 130, 25, 260, 25, window, LABEL_CENTER)
	BUTTON_OK = CreateButton("Ok", 160 + 50, 125, 100, 30, window)
	BUTTON_NOT = CreateButton("Abbrechen", 160 - 150, 125, 100, 30, window)
	
	chek_all = CreateButton("Alle", 160 - 100, 50, 75, 20, window, BUTTON_CHECKBOX)
	
	combobox = CreateComboBox(160 - 100, 75, 200, 20, window)
	combobox.Clear()
	For Local gTtank:Ttank = EachIn tanklist
		AddGadgetItem(combobox, gTtank.ModelName)
	Next

		
	While go
		WaitEvent
		Select EventID()
			Case EVENT_WINDOWCLOSE
				Select EventSource()
					Case window
						window.Free()
						go = 0
				End Select
			Case EVENT_GADGETACTION
				Select EventSource()
					Case BUTTON_OK
						If combobox.GetText().Length > 0 Then
							Local sret:String = combobox.GetText()
							If Not ButtonState(chek_all) Then
								For Local gTtank:Ttank = EachIn tanklist
									If gTtank.ModelName = sret Then copytanktomap(gTtank)
								Next
								go = 0
								window.Free()
							EndIf
						EndIf
						If ButtonState(chek_all) Then
							For Local gTtank:Ttank = EachIn tanklist
								copytanktomap(gTtank)
							Next
							go = 0
							window.Free()
						EndIf
					Case BUTTON_NOT
						window.Free()
						go = 0
				End Select
		End Select
	Wend
	Return
End Function

Function copyobjtomap(orginal:Tobject)
	Local newtexlist:TList = CreateList()
	For orginal.objanim = EachIn orginal.objanimlist
		For orginal.objanim.objanimdata = EachIn orginal.objanim.animdatalist
			If orginal.objanim.objanimdata.pixname.Length > 0 Then
				newtexlist.AddLast(orginal.objanim.objanimdata.pixname)
			End If
		Next
	Next

	For Local newobjtex:String = EachIn newtexlist
		Local found:Int = 0
		Local tmpholder:Tobjtex
		For Local mapobjtex:Tobjtex = EachIn objtexlist
			If newobjtex = mapobjtex.name Then tmpholder = mapobjtex ; found = 1
		Next
		If found = 1 Then
			If Not mapobjtexlist.Contains(tmpholder) Then mapobjtexlist.AddLast(tmpholder)
		Else
			Notify("ERROR: unable to load objtex into mapobjtex > " + newobjtex) ; End
		End If
	Next
	
	Local sfound:Int = 0
	For Local mapdrawobjscript:Tdrawobjscript = EachIn mapdrawobjscriptlist
		If mapdrawobjscript.name = orginal.cname Then sfound = 1
	Next
	If sfound = 0 Then
		For Local drawobjscript:Tdrawobjscript = EachIn drawobjscriptlist
			If drawobjscript.name = orginal.cname Then mapdrawobjscriptlist.AddLast(drawobjscript)
		Next
	End If
	
	Local ofound:Int = 0
	For Local mapobject:Tobject = EachIn mapobjectlist
		If mapobject.cname = orginal.cname Then ofound = 1
	Next
	If ofound = 0 Then
		mapobjectlist.AddLast(orginal)
		orginal.Setup(orginal.cname)
	EndIf
End Function

Function copytanktomap(orginal:Ttank)

	For Local cTtanktex:Ttanktex = EachIn tanktexlist
		If cTtanktex.modelname = orginal.ModelName Then
			Local found:Int = 0
			For Local mapTtanktex:Ttanktex = EachIn maptanktexlist
				If cTtanktex.modelname = mapTtanktex.modelname And cTtanktex.name = mapTtanktex.name Then found = 1
			Next
			If found = 0 Then
				If Not maptanklist.Contains(cTtanktex) Then maptanktexlist.AddLast(cTtanktex)
			End If
		EndIf
	Next

	Local go:Int = 1
	While go
		go = 0
		For Local v1Ttanktex:Ttanktex = EachIn maptanktexlist
			For Local v2Ttanktex:Ttanktex = EachIn maptanktexlist
				If v1Ttanktex <> v2Ttanktex Then
					If v1Ttanktex.name = v2Ttanktex.name And v1Ttanktex.modelname = v2Ttanktex.modelname Then
						maptanktexlist.Remove(v2Ttanktex)
						go = 1
						Exit
						Exit
					EndIf
				EndIf
			Next
		Next
	Wend

	Local sfound:Int = 0
	For Local mapTdrawtankscript:Tdrawtankscript = EachIn mapdrawstankcriptlist
		If mapTdrawtankscript.name = orginal.ModelName Then sfound = 1
	Next
	If sfound = 0 Then
		For Local drawtankscript:Tdrawtankscript = EachIn drawstankcriptlist
			If drawtankscript.name = orginal.ModelName Then mapdrawstankcriptlist.AddLast(drawtankscript)
		Next
	End If
	
	sfound = 0
	For Local mapTtankscript:Ttankscript = EachIn maptankscriptlist
		If mapTtankscript.name = orginal.ModelName Then sfound = 1
	Next
	If sfound = 0 Then
		For Local tankscript:Ttankscript = EachIn tankscriptlist
			If tankscript.name = orginal.ModelName Then maptankscriptlist.AddLast(tankscript)
		Next
	End If
	
	Local drawtank:Tdrawtank = New Tdrawtank
	mapdrawtanklist.AddLast(drawtank)
	drawtank.name = orginal.ModelName
	drawtank.Setup(orginal.ModelName)
	drawtank.ActivateTex()
		
	Local tank:Ttank = New Ttank
	tank.ModelName = orginal.ModelName
	tank.Setup(orginal.ModelName)
	maptanklist.AddLast(tank)
End Function