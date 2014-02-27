
Type Tsmoke
	Field x:Float, y:Float, s:Float, d:Float, r:Float, w:Float, w2:Float, a:Float = 0.4
End Type
Global smokelist:TList = CreateList()

Type Tmud
	Field x:Float, y:Float, s:Float, d:Float, d2:Float, r:Float, w:Float, w2:Float, a:Float = 1
End Type
Global mudlist:TList = CreateList()

Type Tsanddust
	Field x:Float, y:Float, s:Float, d:Float, d2:Float, r:Float, w:Float, w2:Float, a:Float = 0.8
End Type
Global sanddustlist:TList = CreateList()

Type Tfire
	Field x:Float, y:Float, s:Float, d:Float, d2:Float, r:Float, ir:Float, w:Float, w2:Float, a:Float = 0.3
End Type
Global firelist:TList = CreateList()

Type Tfunken
	Field x:Float, y:Float, z:Float, az:Float, s:Float, r:Float
End Type
Global funkenlist:TList = CreateList()

Type Tspur
	Field x:Float, y:Float, r:Float, f:Float = 0.75, c:Byte, length:Float, frompl:Int = 0, time:Int
End Type
Global spurlist:TList = CreateList()

Type Tgrater
	Field x:Float, y:Float, r:Float, f:Float = 0.75, c:Byte, s:Float = 1
End Type
Global graterlist:TList = CreateList()

Type TSchussSp
	Field xs:Float, ys:Float, winkels:Float, treffer:Int, Bild:String, Kraft:Float, weite:Float
End Type
Global Schussliste:TList = CreateList()

Type Ttextur
	Field render:Ttextur[8], isRendert:Int, doRender:Int, orginal:Ttextur, redertlist:TList = CreateList()
	Field img:TImage, pic:TPixmap, version:Int, beforeTex:Ttextur
	Field isAlpha:Byte, isDust:Byte, r:Byte, g:Byte, b:Byte
	Field speicherort:String, datname:String, group:String, eingestellt:Byte
End Type
Global texturlist:TList = CreateList()
Global maptexturlist:TList = CreateList()

Type Ttexgroup
	Field group:String
	Field texlink:Ttextur, texlist:TList = CreateList()
End Type
Global texgrouplist:TList = CreateList()
Global maptexgrouplist:TList = CreateList()

Type Twaypoint
	Field x:Float, y:Float, cheacked:Int, size:Int, name:String, action:Taction
	Field otherWP:Twaypoint
	Field dist:Float[16], chaged:Int = 1, used:Float
	Field otherlist:TList = CreateList()
	Field othernames:String[16]
	'---- StartSet
	Field script:String[200]
	Field respawnnames:String[40], respawncount:Int = -1
End Type
Global waypointlist:TList = CreateList()
Global printlistlist:TList = CreateList()

Type Taction
	Field name:String
	Field respawn:Int, every:Int, onlytimes:Int
	Field win:Int
EndType
Global actionlist:TList = CreateList()



Type TbotOLD
	Field bx:Float, by:Float, br:Float, bs:Float, bsmk:Int, bospxr:Float, bospxl:Float, bospyr:Float, bospyl:Float, blook:Float, btd:Float, bbspr:Byte, bbspl:Byte
	Field id:Int, shot:Byte, cd:Int, cd2:Int, cd3:Int = 240, life:Float = 100, dtmr:Byte = 80, fspy:Int, marinecd:Int = 180
	Field tx:Float, ty:Float, ttmr:Byte, waypoint:Twaypoint, endwaypoint:Twaypoint, botgas:Float = 1, freund:Int = 0, freundtarget:Tbot
	
	Field seelist:TList = CreateList(), botdel:Int = 1
End Type

' BAUSTELLE!
rem
Type Tgeschoss
	
End Type
geschosslist:TList = CreateList()
endrem
Global mapscript:String[500]
Type Tglobal
	'spieler seite
	'eine basis?
	Field Fbase:Twaypoint
	Field Fneed_score:Int, Fneed_flags:Int
	
	'feind seite
	'eine basis?
	Field Ebase:Twaypoint
	Field Eneed_score:Int, Eneed_flags:Int
End Type
Global mapglobal:Tglobal = New Tglobal

Type Tgraveyard
	Field tank:Ttank
	Field DrawTank:Tdrawtank
	
	Field dtmr:Int = 400
End Type
Global mapgraveyardlist:TList = CreateList()

Type Tplayer
	Field tank:Ttank
	Field DrawTank:Tdrawtank
	
	Field dead:Int
	Field fraktion:Int = 0
	
	Field seelist:TList = CreateList()
End Type
Global player2:Tplayer = New Tplayer
Global mapplayerlist:TList = CreateList()
mapplayerlist.AddLast(player2)

Type Tbot
	Field tank:Ttank
	Field DrawTank:Tdrawtank
	
	'fraktion
	Field fraktion:Int = 0
	Field fight:Tbot, fightPL:Tplayer
	
	'ziel und waypoint steuerung
	Field targetx:Float, targety:Float, targetgas:Int = 0
	Field targetbot:Ttargetbot
	Field targetbotlist:TList = CreateList()
	Field waypoint:Twaypoint
	
	' sicht steuerung
	Field seelist:TList = CreateList(), botdel:Int = 1
End Type
Global botlist:TList = CreateList()

Type Ttargetbot
	Field event:Int

	Field driveto:Int = 0
	Field standby:Int = 0, time:Int

	Field towaypoint:Twaypoint
EndType

Type Ttank
	Field ModelName:String = "NoobTank", GewichtKg:Float = 50000, Size:Float = 50, ModelID:Int = 0
	
	Field leben:Int = 100, panzerung:Int = 10
	Field x:Float, y:Float, winkel:Float
	Field R:Int = 255, G:Int = 255, B:Int = 255
	Field Spurabstand:Float = 35, spurbreite:Float = 5
	
	Field tower:Ttower, towerarray:Ttower[10]
	
	Field engine:Tengine, drive:Tdrive
	
	Field cDrawTank:Tdrawtank
	
	Method Draw()
		If cDrawTank <> Null Then
			cDrawTank.DrawTank(Self)
		Else
			Notify("ERROR: tank has no Setup! > " + ModelName) ; End
		End If
	End Method
	
	Method Setup(tankname:String)
		Local found:Int = 0
		For Local ts:Ttankscript = EachIn maptankscriptlist
			
			If tankname = ts.name Then
				found = 1
				Local tVOR:String, tHINTER:String
				
				For Local fROW:Int = 0 To 199
					
					Select ts.data[frow]
						Case "[TANK]"
							engine = New Tengine
							drive = New Tdrive
						Case "[TOWER]"
							tower = New Ttower
					End Select
					
					If Not ts.data[fROW].Contains("=") Then Continue
					
					tVOR = Left(ts.data[fROW], ts.data[fROW].Find("="))
					tHINTER = Right(ts.data[fROW], ts.data[fROW].Length - (ts.data[fROW].Find("=") + 1))
					Select tVOR
						'TANK
						Case "NAME"
							ModelName = tHINTER
						Case "TONNEN"
							GewichtKg = tHINTER.ToInt() * 1000
						Case "PS"
							drive.Drehzahl = 2000
							drive.Drehmoment = tHINTER.ToInt() * 3.5
						Case "SIZE"
							size = tHINTER.ToInt()
						Case "LEBEN"
							leben = tHINTER.ToInt()
						Case "PANZERUNG"
							panzerung = tHINTER.ToInt()
						Case "SPURBREITE"
							spurbreite = tHINTER.ToFloat()
						Case "SPURABSTAND"
							Spurabstand = tHINTER.ToFloat()
						'TOWER
						Case "ID"
							tower.id = tHINTER.ToInt()
							If tower.id > 9 Or tower.id < 0 Then Notify("ERROR: towerID fail > " + ModelName) ; End
							towerarray[tower.id] = tower
						Case "KANNONEN"
							tower.cannonAnzahl = tHINTER.ToInt()
						Case "ABSTAND"
							tower.cannonAbstand = tHINTER.ToFloat()
						Case "LEANGE"
							tower.cannonLeange = tHINTER.ToFloat()
						Case "COOLDOWN"
							tower.CannonCooldown = tHINTER.ToInt()
						Case "AUTOMATIC"
							tower.automatic = tHINTER.ToInt()
						Case "POSW"
							tower.PosW = tHINTER.ToFloat()
						Case "POSE"
							tower.PosE = tHINTER.ToFloat()
						Case "FEST"
							tower.cannonFest = tHINTER.ToInt()
						Case "MM"
							tower.cannonMM = tHINTER.ToInt()
						Case "SPEED"
							tower.cannonSpeed = tHINTER.ToInt()
						Case "KG"
							tower.cannonKg = tHINTER.ToInt()
						Case "ENTFERUNG"
							tower.cannonEntferung = tHINTER.ToInt()
						Case "PANZERBRECHEND"
							tower.cannonPanzerBrechend = tHINTER.ToInt()
					EndSelect
				Next
				
				For Local Sdrawtank:Tdrawtank = EachIn mapdrawtanklist
					If Sdrawtank.name = modelname Then cDrawTank = Sdrawtank
					
				Next
				
				
				Exit
			End If
		Next
		If found = 0 Then
			Notify("ERROR: no tankscript found! > " + tankname) ; End
		EndIf
	End Method
	
	Method noSetup(tankname:String)
		Local found:Int = 0
		For Local ts:Ttankscript = EachIn tankscriptlist
			
			If tankname = ts.name Then
				found = 1
				Local tVOR:String, tHINTER:String
				
				For Local fROW:Int = 0 To 199
					
					Select ts.data[frow]
						Case "[TANK]"
							engine = New Tengine
							drive = New Tdrive
						Case "[TOWER]"
							tower = New Ttower
					End Select
					
					If Not ts.data[fROW].Contains("=") Then Continue
					
					tVOR = Left(ts.data[fROW], ts.data[fROW].Find("="))
					tHINTER = Right(ts.data[fROW], ts.data[fROW].Length - (ts.data[fROW].Find("=") + 1))
					Select tVOR
						'TANK
						Case "NAME"
							ModelName = tHINTER
						Case "TONNEN"
							GewichtKg = tHINTER.ToInt() * 1000
						Case "PS"
							drive.Drehzahl = 2000
							drive.Drehmoment = tHINTER.ToInt() * 3.5
						Case "SIZE"
							size = tHINTER.ToInt()
						Case "LEBEN"
							leben = tHINTER.ToInt()
						Case "PANZERUNG"
							panzerung = tHINTER.ToInt()
						Case "SPURBREITE"
							spurbreite = tHINTER.ToFloat()
						Case "SPURABSTAND"
							Spurabstand = tHINTER.ToFloat()
						'TOWER
						Case "ID"
							tower.id = tHINTER.ToInt()
							If tower.id > 9 Or tower.id < 0 Then Notify("ERROR: towerID fail > " + ModelName) ; End
							towerarray[tower.id] = tower
						Case "KANNONEN"
							tower.cannonAnzahl = tHINTER.ToInt()
						Case "ABSTAND"
							tower.cannonAbstand = tHINTER.ToFloat()
						Case "LEANGE"
							tower.cannonLeange = tHINTER.ToFloat()
						Case "COOLDOWN"
							tower.CannonCooldown = tHINTER.ToInt()
						Case "AUTOMATIC"
							tower.automatic = tHINTER.ToInt()
						Case "POSW"
							tower.PosW = tHINTER.ToFloat()
						Case "POSE"
							tower.PosE = tHINTER.ToFloat()
						Case "FEST"
							tower.cannonFest = tHINTER.ToInt()
						Case "MM"
							tower.cannonMM = tHINTER.ToInt()
						Case "SPEED"
							tower.cannonSpeed = tHINTER.ToInt()
						Case "KG"
							tower.cannonKg = tHINTER.ToInt()
						Case "ENTFERUNG"
							tower.cannonEntferung = tHINTER.ToInt()
						Case "PANZERBRECHEND"
							tower.cannonPanzerBrechend = tHINTER.ToInt()
					EndSelect
				Next
				
				For Local Sdrawtank:Tdrawtank = EachIn drawtanklist
					If Sdrawtank.name = modelname Then cDrawTank = Sdrawtank
				Next
				
				
				Exit
			End If
		Next
		If found = 0 Then
			Notify("ERROR: no tankscript found! > " + tankname) ; End
		EndIf
	End Method
End Type
Global tanklist:TList = CreateList()
Global maptanklist:TList = CreateList()

Type Ttower
	'setupdata
	Field id:Int
	Field PosW:Float = 0, PosE:Float = 0
	Field cannonAnzahl:Int = 1, cannonAbstand:Float = 0, cannonLeange:Float = 35, CannonCooldown:Int = 80
	Field cannonFest:Int = 0, cannonMM:Int = 120, cannonSpeed:Int = 1100, cannonKg:Int = 20, cannonEntferung:Int = 2500
	Field cannonPanzerBrechend:Int = 0
	Field automatic:Int = 0
	'usedata
	Field winkel:Float, cooldown:Int, entferung:Float, nowshoot:Int
End Type

Type Ttankscript
	Field name:String
	Field data:String[200]
	
	Field irow:Int = -1
	
	Method insert(str:String)
		If irow <= 199 Then
			irow = irow + 1
			data[irow] = str
			If data[irow].Contains("=") Then
					
				Local tVOR:String = Left(data[irow], data[irow].Find("="))
				Local tHINTER:String = Right(data[irow], data[irow].Length - (data[irow].Find("=") + 1))
					
				If tVOR = "NAME" Then name = tHINTER
			EndIf
		EndIf
	End Method
End Type
Global tankscriptlist:TList = CreateList()
Global maptankscriptlist:TList = CreateList()

Type Tdrawtank
	Field name:String = "NoobTank"
	Field drawtilelist:TList = CreateList()
	Field drawtile:Tdrawtile
	
	Field scalex:Float = 1, scaley:Float = 1
	
	Method DrawTank(Tank:Ttank)
		For drawtile = EachIn drawtilelist
			drawtile.DrawTile(tank)
		Next
	End Method
	
	Method Setup(tankname:String)
		Local found:Int = 0
		For Local ts:Tdrawtankscript = EachIn mapdrawstankcriptlist
			If tankname = ts.name Then
				found = 1
				
				Local tVOR:String, tHINTER:String
				
				For Local fROW:Int = 0 To 499
					Select ts.data[fROW]
						Case "[DRAW]"
							drawtile = New Tdrawtile
							drawtilelist.AddLast(drawtile)
					End Select
					
					If Not ts.data[fROW].Contains("=") Then Continue
					
					tVOR = Left(ts.data[fROW], ts.data[fROW].Find("="))
					tHINTER = Right(ts.data[fROW], ts.data[fROW].Length - (ts.data[fROW].Find("=") + 1))
					
					Select tVOR
						'TANK
						Case "NAME"
							name = tHINTER
						Case "SCALE.X"
							scalex = tHINTER.ToFloat()
						Case "SCALE.Y"
							scaley = tHINTER.ToFloat()
						'DRAW
						Case "HX"
							drawtile.hx = tHINTER.ToFloat()
						Case "HY"
							drawtile.hy = tHINTER.ToFloat()
						Case "WINKEL"
							drawtile.winkel = tHINTER.ToFloat()
						Case "R"
							drawtile.r = tHINTER.ToInt()
						Case "G"
							drawtile.g = tHINTER.ToInt()
						Case "B"
							drawtile.b = tHINTER.ToInt()
						Case "A"
							drawtile.a = tHINTER.ToInt()
						Case "COLOR"
							drawtile.colorowner = 1
						Case "W"
							drawtile.W = tHINTER.ToFloat()
						Case "H"
							drawtile.H = tHINTER.ToFloat()
						Case "POSW"
							drawtile.posW = tHINTER.ToFloat()
						Case "POSE"
							drawtile.posE = tHINTER.ToFloat()
						Case "W"
							drawtile.W = tHINTER.ToFloat()
						Case "TOWER"
							drawtile.isTower = 1
							drawtile.towerID = tHINTER.ToInt()
							If drawtile.towerID < 0 Or drawtile.towerID > 9 Then Notify("ERROR: towerID fail > " + name) ; End
						Case "SCHATTEN"
							drawtile.isShadow = tHINTER.ToInt()
						Case "IMG"
							drawtile.imgname = tHINTER
					EndSelect
				Next
				
				Exit
			End If
		Next
		If found = 0 Then
			Notify("ERROR: no drawtankscript found! > " + tankname) ; End
		EndIf
	End Method
	
	Method noSetup(tankname:String)
		Local found:Int = 0
		For Local ts:Tdrawtankscript = EachIn drawstankcriptlist
			If tankname = ts.name Then
				found = 1
				
				Local tVOR:String, tHINTER:String
				
				For Local fROW:Int = 0 To 499
					Select ts.data[fROW]
						Case "[DRAW]"
							drawtile = New Tdrawtile
							drawtilelist.AddLast(drawtile)
					End Select
					
					If Not ts.data[fROW].Contains("=") Then Continue
					
					tVOR = Left(ts.data[fROW], ts.data[fROW].Find("="))
					tHINTER = Right(ts.data[fROW], ts.data[fROW].Length - (ts.data[fROW].Find("=") + 1))
					
					Select tVOR
						'TANK
						Case "NAME"
							name = tHINTER
						Case "SCALE.X"
							scalex = tHINTER.ToFloat()
						Case "SCALE.Y"
							scaley = tHINTER.ToFloat()
						'DRAW
						Case "HX"
							drawtile.hx = tHINTER.ToFloat()
						Case "HY"
							drawtile.hy = tHINTER.ToFloat()
						Case "WINKEL"
							drawtile.winkel = tHINTER.ToFloat()
						Case "R"
							drawtile.r = tHINTER.ToInt()
						Case "G"
							drawtile.g = tHINTER.ToInt()
						Case "B"
							drawtile.b = tHINTER.ToInt()
						Case "A"
							drawtile.a = tHINTER.ToInt()
						Case "COLOR"
							drawtile.colorowner = 1
						Case "W"
							drawtile.W = tHINTER.ToFloat()
						Case "H"
							drawtile.H = tHINTER.ToFloat()
						Case "POSW"
							drawtile.posW = tHINTER.ToFloat()
						Case "POSE"
							drawtile.posE = tHINTER.ToFloat()
						Case "W"
							drawtile.W = tHINTER.ToFloat()
						Case "TOWER"
							drawtile.isTower = 1
							drawtile.towerID = tHINTER.ToInt()
							If drawtile.towerID < 0 Or drawtile.towerID > 9 Then Notify("ERROR: towerID fail > " + name) ; End
						Case "SCHATTEN"
							drawtile.isShadow = tHINTER.ToInt()
						Case "IMG"
							drawtile.imgname = tHINTER
					EndSelect
				Next
				
				Exit
			End If
		Next
		If found = 0 Then
			Notify("ERROR: no drawtankscript found! > " + tankname) ; End
		EndIf
	End Method
	
	Function ActivateTex()
		For Local ts:Tdrawtank = EachIn mapdrawtanklist
			For ts.drawtile = EachIn ts.drawtilelist
				For Local tt:Ttanktex = EachIn maptanktexlist
					If ts.drawtile.imgname = tt.name And ts.name = tt.modelname Then ts.drawtile.image = tt.image
				Next
			Next
		Next
	End Function
	
	Function noActivateTex()
		For Local ts:Tdrawtank = EachIn drawtanklist
			For ts.drawtile = EachIn ts.drawtilelist
				For Local tt:Ttanktex = EachIn tanktexlist
					If ts.drawtile.imgname = tt.name And ts.name = tt.modelname Then ts.drawtile.image = tt.image
				Next
			Next
		Next
	End Function
	
End Type
Global drawtanklist:TList = CreateList()
Global mapdrawtanklist:TList = CreateList()

Type Tdrawtile
	Field hx:Float = 0, hy:Float = 0, winkel:Float = 0
	Field R:Int = 255, G:Int = 255, B:Int = 255, A:Int = 255, colorowner:Int
	Field W:Float = 32, H:Float = 32, posW:Float = 0, posE:Float = 0
	Field isTower:Int = 0, towerID:Int = 0
	Field isShadow:Int = 0
	Field image:TImage, imgname:String
	
	Method DrawTile(tank:ttank)
		SetScale(tank.cDrawTank.scalex, tank.cDrawTank.scaley)
		If isShadow = 0 Then
			If isTower Then
				Local zx:Float, zy:Float
				If posE <> 0 Then
					zx = Cos(winkel + tank.towerarray[towerID].winkel + posW) * posE
					zy = Sin(winkel + tank.towerarray[towerID].winkel + posW) * posE
				EndIf
				SetAlpha((A / 255.0))
				If colorowner = 0 Then
					SetColor(r, g, b)
				Else
					SetColor(tank.r, tank.g, tank.b)
				EndIf
				SetRotation(winkel + tank.towerarray[towerID].winkel)
				If image <> Null Then
					SetHandle(hy, hx)
					DrawPicture(image, zx + tank.x - gVx, zy + tank.y - gVy, W, H)
				Else
					SetHandle(hx, hy)
					DrawRect(zx + tank.x - gVx, zy + tank.y - gVy, W, H)
				EndIf
			Else
				Local zx:Float, zy:Float
				If posE <> 0 Then
					zx = Cos(winkel + tank.winkel + posW) * posE
					zy = Sin(winkel + tank.winkel + posW) * posE
				EndIf
				SetAlpha((A / 255.0))
				If colorowner = 0 Then
					SetColor(r, g, b)
				Else
					SetColor(tank.r, tank.g, tank.b)
				EndIf
				SetRotation(winkel + tank.winkel)
				If image <> Null Then
					SetHandle(hy, hx)
					DrawPicture(image, zx + tank.x - gVx, zy + tank.y - gVy, W, H)
				Else
					SetHandle(hx, hy)
					DrawRect(zx + tank.x - gVx, zy + tank.y - gVy, W, H)
				EndIf
			End If
		Else
			If isTower Then
				Local zx:Float, zy:Float
				If posE <> 0 Then
					zx = Cos(winkel + tank.towerarray[towerID].winkel + posW) * posE
					zy = Sin(winkel + tank.towerarray[towerID].winkel + posW) * posE
				EndIf
				SetAlpha(0.4)
				SetColor(0, 0, 0)
				SetHandle(hx, hy)
				SetRotation(winkel + tank.towerarray[towerID].winkel)
				If isShadow = 2 Then
					DrawOval(zx + tank.x - gVx, zy + tank.y - gVy + (5 * tank.cDrawTank.scaley), W, H)
				Else
					DrawRect(zx + tank.x - gVx, zy + tank.y - gVy + (5 * tank.cDrawTank.scaley), W, H)
				End If
			Else
				Local zx:Float, zy:Float
				If posE <> 0 Then
					zx = Cos(winkel + tank.winkel + posW) * posE
					zy = Sin(winkel + tank.winkel + posW) * posE
				EndIf
				SetAlpha(0.4)
				SetColor(0, 0, 0)
				SetHandle(hx, hy)
				SetRotation(winkel + tank.winkel)
				If isShadow = 2 Then
					DrawOval(zx + tank.x - gVx, zy + tank.y - gVy + (5 * tank.cDrawTank.scaley), W, H)
				Else
					DrawRect(zx + tank.x - gVx, zy + tank.y - gVy + (5 * tank.cDrawTank.scaley), W, H)
				End If
			End If
		EndIf
		SetScale(1, 1)
	End Method
End Type


Type Tdrawtankscript
	Field name:String
	Field data:String[500]
	
	Field irow:Int = -1
	
	Method insert(str:String)
		If irow <= 499 Then
			irow = irow + 1
			data[irow] = str
			If data[irow].Contains("=") Then
					
				Local tVOR:String = Left(data[irow], data[irow].Find("="))
				Local tHINTER:String = Right(data[irow], data[irow].Length - (data[irow].Find("=") + 1))
				
				If tVOR = "NAME" Then name = tHINTER
			EndIf
		EndIf
	End Method
End Type
Global drawstankcriptlist:TList = CreateList()
Global mapdrawstankcriptlist:TList = CreateList()

Type Ttanktex
	Field name:String, modelname:String
	Field image:TImage, pixmap:TPixmap
End Type
Global tanktexlist:TList = CreateList()
Global maptanktexlist:TList = CreateList()
'BAUSTELLE ENDE

Type Tplayerold
	Field x:Float, y:Float, sx:Float, sy:Float, winkel:Float, turmwinkel:Float, turmdistanz:Float, bottarget:Tbot
	Field Energie:Float, dtmr:Int = 120, dead:Int = 1
	Field HoechstG:Float, BeschV:Float, DrehB:Float, plx:Float, ply:Float, Leben:Float, Geschw:Float, Masse:Float, ReiKraft:Float, Brems:Float, altx:Float, alty:Float, Backw:Float, VBackw:Float, schusstP:Int, HGBackw:Float
	
	Field seelist:TList = CreateList()
End Type
'Global player:Tplayer = New Tplayer

Type Tglow
	Field x:Float, y:Float, s:Float, r:Int, g:Int, b:Int, d:Int, l:Int, a:Float
End Type
Global glowlist:TList = CreateList()

Type Tdrive
	Field Drehzahl:Float = 2000, Drehmoment:Float = 17500
End Type

Type Tengine
	Field Drehzahl:Float, Drehmoment:Float
	Field speed:Float, gang:Int, oldgang:Int
	Field rucktimer:Int
End Type
