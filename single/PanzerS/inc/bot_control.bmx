Function find_next_waypoint:Twaypoint(cTbot:Tbot)
	Local ret:Twaypoint
	Local entf54:Float = 9999
	For Local sTwaypoint:Twaypoint = EachIn waypointlist
		If entf54 > Sqr((sTwaypoint.x - cTbot.tank.x) ^ 2 + (sTwaypoint.y - cTbot.tank.y) ^ 2) Then
			entf54 = Sqr((sTwaypoint.x - cTbot.tank.x) ^ 2 + (sTwaypoint.y - cTbot.tank.y) ^ 2)
			If entf54 < 1000 Then ret = sTwaypoint
		End If
	Next
	Return ret
End Function

Function find_random_waypoint:Twaypoint(cTbot:Tbot)
	Local ret:Twaypoint
	Local nrz3:Int = Rnd(0, waypointlist.Count() * 100) / 100
	For Local eTwaypoint:Twaypoint = EachIn waypointlist
		If nrz3 = 0 Then ret = eTwaypoint ; Exit
		nrz3 = nrz3 - 1
	Next
	Return ret
End Function

Function find_own_base:Twaypoint(cTbot:Tbot)
	Local ret:Twaypoint
	If cTbot.fraktion = 0 Then ret = mapglobal.Fbase
	If cTbot.fraktion = 1 Then ret = mapglobal.Ebase
	Return ret
End Function

Function find_enemy_base:Twaypoint(cTbot:Tbot)
	Local ret:Twaypoint
	If cTbot.fraktion = 0 Then ret = mapglobal.Ebase
	If cTbot.fraktion = 1 Then ret = mapglobal.Fbase
	Return ret
End Function

Function do_goto_waypoint:Int(cTbot:Tbot, way:Twaypoint, toway:Twaypoint, flag:Int, event:Int)
	If way <> Null Then
		cTbot.targetbot = New Ttargetbot
		cTbot.targetbotlist.AddLast(cTbot.targetbot)
		cTbot.targetbot.driveto = 1
		cTbot.waypoint = way
		cTbot.targetbot.towaypoint = toway
		cTbot.targetbot.event = event
		Return True
	Else
		Return False
	EndIf
End Function

Function do_standby:Int(cTbot:Tbot, time:Int, event:Int = 1)
	cTbot.targetbot = New Ttargetbot
	cTbot.targetbotlist.AddLast(cTbot.targetbot)
	cTbot.targetbot.standby = 1
	cTbot.targetbot.time = time
	cTbot.targetbot.event = event
	Return True
End Function



Function check_mapglobal:Int(cTbot:Tbot)
	Local ret:Int = 0
	If cTbot.fraktion = 0 Then
		If mapglobal.Ebase <> Null Then ret = 1
	Else
		If mapglobal.Fbase <> Null Then ret = 1
	EndIf
	Return ret
End Function

Function do_work:Int(cTbot:Tbot)
	Local ret:Int = 0
	
	For cTbot.targetbot = EachIn cTbot.targetbotlist
		
		If cTbot.targetbot.standby = 1 Then
			ret = 0
			cTbot.targetgas = 0
			If cTbot.targetbot.time > 0 Then cTbot.targetbot.time = cTbot.targetbot.time - 1
			If cTbot.targetbot.time = 0 Then cTbot.targetbotlist.Remove(cTbot.targetbot) ; Return cTbot.targetbot.event
		Else
			If cTbot.targetbot.driveto = 1 Then
				If cTbot.waypoint = Null Then
					cTbot.targetbotlist.Clear()
					Return 0
				End If
				cTbot.targetx = cTbot.waypoint.x
				cTbot.targety = cTbot.waypoint.y
				cTbot.targetgas = 1
				If Sqr((cTbot.waypoint.x - cTbot.tank.x) ^ 2 + (cTbot.waypoint.y - cTbot.tank.y) ^ 2) < cTbot.waypoint.size Then
					cTbot.waypoint = waypointtodest(cTbot.waypoint, cTbot.targetbot.towaypoint)
					If cTbot.waypoint = cTbot.targetbot.towaypoint Then
						cTbot.targetbotlist.Remove(cTbot.targetbot)
						Return cTbot.targetbot.event
					EndIf
				EndIf
				Return 0
			End If
		EndIf
		Exit
	Next
	Return ret
End Function

Function contolbot(cTbot:Tbot)

	If cTbot.tank.leben > 0 Then
		'############### entscheiden
		cTbot.targetgas = 0
		'kein waypoint -> suche nächsten Waypoint und mache es zur aufgabe dorthinzufahren.
		If cTbot.targetbotlist.Count() = 0 Then
			Local way:Twaypoint = find_next_waypoint(cTbot)
			If way <> Null Then
				If Not do_goto_waypoint(cTbot, way, way, 1, 1) Then
					'wenn kein waypoint da ist gehe auf standby
					do_standby(cTbot, 250)
				End If
			Else
				do_standby(cTbot, 250)
			EndIf
		Else
			Select do_work(cTbot)
				Case 0
					'alles ok. mache nichts weiter
				Case 1
					'waypoint ziel erreicht. nun schaue ob es eine bedignung gibt (sieg oder niederlage)
					Select check_mapglobal(cTbot)
						Case 0 'es gibt keine bedingung
							'fahre random
							do_goto_waypoint(cTbot, cTbot.waypoint, find_random_waypoint(cTbot), 2, 1)
						Case 1 ' es handelt sich um eine belagerungsmap
							'entscheide random
							Local btmp:Int = Rnd(0, 299) / 100.0
							Select btmp
								Case 0 'fahre random
									do_goto_waypoint(cTbot, cTbot.waypoint, find_random_waypoint(cTbot), 2, 1)
								Case 1 'fahre zu eigener base und verbleibe dort eine zeit
									Local tar:Twaypoint = find_own_base(cTbot)
									If tar <> Null Then
										do_goto_waypoint(cTbot, cTbot.waypoint, tar, 2, 0)
										do_standby(cTbot, Rnd(40, 200), 1)
									Else ' keine eigene base? dann gehe doch liber zum gegner
										do_goto_waypoint(cTbot, cTbot.waypoint, find_enemy_base(cTbot), 2, 1)
									EndIf
								Case 2 ' fahre zur gegnerischen base
									do_goto_waypoint(cTbot, cTbot.waypoint, find_enemy_base(cTbot), 2, 1)
							EndSelect
					End Select
			End Select
		EndIf
		

		'############### bot kollision und schuss targetgenerator
		cTbot.fight = Null
		cTbot.fightPL = Null
		
		Work_smart(cTbot)
		Local entf54:Float = 99999
		For Local oTbot:Tbot = EachIn cTbot.seelist
			If oTbot.botdel = 0 Then cTbot.seelist.Remove(oTbot)
			
			If oTbot <> cTbot Then PushCollision(oTbot.tank.x, oTbot.tank.y, oTbot.tank.Size, cTbot.tank.x, cTbot.tank.y, cTbot.tank.Size, 0)
			
			
			If Sqr((cTbot.tank.x - oTbot.tank.x) ^ 2 + (cTbot.tank.y - oTbot.tank.y) ^ 2) < entf54 And oTbot.fraktion <> cTbot.fraktion Then
				If oTbot.tank.leben > 0 Then entf54 = Sqr((cTbot.tank.x - oTbot.tank.x) ^ 2 + (cTbot.tank.y - oTbot.tank.y) ^ 2)
				If oTbot.tank.leben > 0 And entf54 < sichtweitebot Then
					cTbot.fight = oTbot
				EndIf
			End If
		Next
		
		For Local player:Tplayer = EachIn mapplayerlist
			PushCollision(player.tank.x, player.tank.y, player.tank.Size, cTbot.tank.x, cTbot.tank.y, cTbot.tank.Size, 0)
			
			If Sqr((cTbot.tank.x - player.tank.x) ^ 2 + (cTbot.tank.y - player.tank.y) ^ 2) < entf54 And player.fraktion <> cTbot.fraktion Then
				If player.tank.leben > 0 Then entf54 = Sqr((cTbot.tank.x - player.tank.x) ^ 2 + (cTbot.tank.y - player.tank.y) ^ 2)
				If player.tank.leben > 0 And entf54 < sichtweitebot Then
					cTbot.fightPL = player
				EndIf
			End If
		Next
		
		
		For Local gy:Tgraveyard = EachIn mapgraveyardlist
			PushCollision(gy.tank.x, gy.tank.y, gy.tank.Size, cTbot.tank.x, cTbot.tank.y, cTbot.tank.Size, 0)
		Next
		'############### zielen
		
		For Local x:Int = 0 To 9
			cTbot.tank.tower = cTbot.tank.towerarray[x]
			If cTbot.fightPL = Null Then
				If cTbot.fight <> Null Then
					If cTbot.tank.tower <> Null Then cTbot.tank.tower.winkel = cTbot.tank.tower.winkel + BufferTower(cTbot.tank.tower.winkel, - ATan2(cTbot.fight.tank.x - cTbot.tank.x, cTbot.fight.tank.y - cTbot.tank.y) + 90, 3)
					If cTbot.tank.tower <> Null Then cTbot.tank.tower.entferung = Sqr((cTbot.fight.tank.x - cTbot.tank.x) ^ 2 + (cTbot.fight.tank.y - cTbot.tank.y) ^ 2)
					cTbot.targetgas = 1
				Else
					If cTbot.tank.tower <> Null Then cTbot.tank.tower.winkel = cTbot.tank.tower.winkel + BufferTower(cTbot.tank.tower.winkel, cTbot.tank.winkel, 3)
					If cTbot.tank.tower <> Null Then cTbot.tank.tower.entferung = 100
				EndIf
			Else
				If cTbot.tank.tower <> Null Then cTbot.tank.tower.winkel = cTbot.tank.tower.winkel + BufferTower(cTbot.tank.tower.winkel, - ATan2(cTbot.fightPL.tank.x - cTbot.tank.x, cTbot.fightPL.tank.y - cTbot.tank.y) + 90, 3)
				If cTbot.tank.tower <> Null Then cTbot.tank.tower.entferung = Sqr((cTbot.fightPL.tank.x - cTbot.tank.x) ^ 2 + (cTbot.fightPL.tank.y - cTbot.tank.y) ^ 2)
				cTbot.targetgas = 1
			EndIf
		
			If cTbot.tank.tower <> Null Then If cTbot.tank.tower.cooldown > 0 Then cTbot.tank.tower.cooldown = cTbot.tank.tower.cooldown - 1
			'############### schiessen
			If ((cTbot.fight <> Null Or cTbot.fightPL <> Null) Or (cTbot.fight <> Null And cTbot.fightPL <> Null)) And cTbot.tank.tower <> Null Then
				If cTbot.tank.tower.cooldown = 0 Then
					Local bulletsp:TSchussSp = New TSchussSp
					Schussliste.AddLast(bulletsp)
					Local bulletx:Float, bullety:Float
					If cTbot.tank.tower.cannonAnzahl > 1 Then
						cTbot.tank.tower.nowshoot = cTbot.tank.tower.nowshoot + 1
						If cTbot.tank.tower.nowshoot > cTbot.tank.tower.cannonAnzahl Then cTbot.tank.tower.nowshoot = 1
						Local facotor:Int = 0
						If cTbot.tank.tower.nowshoot = 1 Then facotor = -1
						If cTbot.tank.tower.nowshoot = 2 Then facotor = 1
						bulletx = cTbot.tank.x + Cos(cTbot.tank.tower.winkel + 90) * (cTbot.tank.tower.cannonAbstand * facotor)
						bullety = cTbot.tank.y + Sin(cTbot.tank.tower.winkel + 90) * (cTbot.tank.tower.cannonAbstand * facotor)
					Else
						bulletx = cTbot.tank.x
						bullety = cTbot.tank.y
					EndIf
					bulletsp.xs = bulletx + Cos(cTbot.tank.tower.winkel + 180) * cTbot.tank.tower.cannonLeange
					bulletsp.ys = bullety + Sin(cTbot.tank.tower.winkel + 180) * cTbot.tank.tower.cannonLeange
					bulletsp.winkels = cTbot.tank.tower.winkel + 180
					bulletsp.treffer = 0
					If cTbot.tank.tower.entferung > 150 Then bulletsp.weite = cTbot.tank.tower.entferung + Rnd(- 100, + 100) Else bulletsp.weite = 50 + Rnd(- 100, + 100)
					bulletsp.Kraft = Rand(20, 30)
					If bulletsp.winkels >= 360 Then bulletsp.winkels = bulletsp.winkels Mod 360 'Wenn der Winkel > 360° ist
					If bulletsp.winkels < 0 Then bulletsp.winkels = 360 + bulletsp.winkels 'Wenn der Winkel < 0° ist
					cTbot.tank.tower.cooldown = cTbot.tank.tower.CannonCooldown
					For Local a:Int = -2 To 2
						CreateSmoke(bulletsp.xs, bulletsp.ys, 5, bulletsp.winkels - (a * 2), 10, 3)
					Next
		
				EndIf
			EndIf
		Next
		'############### fahren und lenken
		If cTbot.fightPL = Null Then
			If cTbot.fight <> Null Then
				cTbot.tank.winkel = cTbot.tank.winkel + BufferWinkel(cTbot.tank.winkel, - ATan2(cTbot.fight.tank.x - cTbot.tank.x, cTbot.fight.tank.y - cTbot.tank.y) + 90, 3)
			Else
				cTbot.tank.winkel = cTbot.tank.winkel + BufferWinkel(cTbot.tank.winkel, - ATan2(cTbot.targetx - cTbot.tank.x, cTbot.targety - cTbot.tank.y) + 90, 3)
				'Notify(cTbot.tank.winkel + " : " +  - ATan2(cTbot.targetx - cTbot.tank.x, cTbot.targety - cTbot.tank.y))
			End If
		Else
			cTbot.tank.winkel = cTbot.tank.winkel + BufferWinkel(cTbot.tank.winkel, - ATan2(cTbot.fightPL.tank.x - cTbot.tank.x, cTbot.fightPL.tank.y - cTbot.tank.y) + 90, 3)
		EndIf
		
		Drive(cTbot.targetgas, 0, cTbot.tank.GewichtKg, cTbot.tank.engine, 0, cTbot.tank.Drive)
		cTbot.tank.x = cTbot.tank.x - Cos(cTbot.tank.winkel + 180) * (cTbot.tank.engine.speed)
		cTbot.tank.y = cTbot.tank.y - Sin(cTbot.tank.winkel + 180) * (cTbot.tank.engine.speed)

		'############### kollision
		
		Local cqpx:Int = cTbot.tank.x / 32.0
		Local cqpy:Int = cTbot.tank.y / 32.0
		For Local cqx:Int = -2 To 2
			For Local cqy:Int = -2 To 2
				If cqpx + cqx > 2 And cqpx + cqx < 997 And cqpy + cqy > 2 And cqpy + cqy < 997 Then
					If wallmap[cqpx + cqx, cqpy + cqy] = 1 Then
						PushQuad(cTbot.tank.x, cTbot.tank.y, cTbot.tank.Size, (cqpx + cqx) * 32, (cqpy + cqy) * 32, 32, 32)
					EndIf
				EndIf
			Next
		Next
		
		'PushCollision(player.x, player.y, 55, cTbot.bx, cTbot.by, 55, 0)
		
		'############### spuren
		rem
		Local bointxr:Float = cTbot.bx - Sin(- cTbot.br + 90) * 10
		Local bointyr:Float = cTbot.by - Cos(- cTbot.br + 90) * 10
		If Sqr((cTbot.bospxr - bointxr) ^ 2 + (cTbot.bospyr - bointyr) ^ 2) > 20 Then
			Local nTspur:Tspur = New Tspur
			spurlist.Addlast(nTspur)
			If cTbot.bbspr > 0 Then cTbot.bbspr = cTbot.bbspr - 1 ;nTspur.c = 1
			nTspur.x = bointxr
			nTspur.y = bointyr
			nTspur.length = Sqr((cTbot.bospxr - bointxr) ^ 2 + (cTbot.bospyr - bointyr) ^ 2)
			nTspur.r = cTbot.br
			If cTbot.freund = 1 Then nTspur.frompl = 1
			cTbot.bospxr = bointxr
			cTbot.bospyr = bointyr
		End If
	
		Local bointxl:Float = cTbot.bx - Sin(- cTbot.br - 90) * 10
		Local bointyl:Float = cTbot.by - Cos(- cTbot.br - 90) * 10
		If Sqr((cTbot.bospxl - bointxl) ^ 2 + (cTbot.bospyl - bointyl) ^ 2) > 20 Then
			Local nTspur:Tspur = New Tspur
			spurlist.Addlast(nTspur)
			If cTbot.bbspl > 0 Then cTbot.bbspl = cTbot.bbspl - 1 ;nTspur.c = 1
			nTspur.x = bointxl
			nTspur.y = bointyl
			nTspur.length = Sqr((cTbot.bospxl - bointxl) ^ 2 + (cTbot.bospyl - bointyl) ^ 2)
			nTspur.r = cTbot.br
			If cTbot.freund = 1 Then nTspur.frompl = 1
			cTbot.bospxl = bointxl
			cTbot.bospyl = bointyl
		End If
		endrem
	Else
		cTbot.botdel = 0
		botlist.Remove(cTbot)
		
		Local ngy:Tgraveyard = New Tgraveyard
		mapgraveyardlist.AddLast(ngy)
		ngy.tank = cTbot.tank
		ngy.DrawTank = cTbot.DrawTank

	End If
End Function
