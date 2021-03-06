Function SteuerungPL1(player:Tplayer) 'Die Funktion für die Steuerung.
	
	'Steuerung NEU
	
	If player.tank.leben > 0 Then
	
		If KeyDown(KEY_A) Then player.tank.winkel = player.tank.winkel - 2
		If KeyDown(KEY_D) Then player.tank.winkel = player.tank.winkel + 2
		
		If player.tank.winkel >= 360 Then player.tank.winkel = player.tank.winkel Mod 360
		If player.tank.winkel < 0 Then player.tank.winkel = 360 + player.tank.winkel
	
		Drive(KeyDown(KEY_W), KeyDown(KEY_S), player.tank.GewichtKg, player.tank.engine, 0, player.tank.Drive)
		
		player.tank.x = player.tank.x - Cos(player.tank.winkel + 180) * (player.tank.engine.speed)
		player.tank.y = player.tank.y - Sin(player.tank.winkel + 180) * (player.tank.engine.speed)
		
		stats[1] = stats[1] + (player.tank.engine.speed)
		
		For Local x:Int = 0 To 9
			player.tank.tower = player.tank.towerarray[x]
			If player.tank.tower <> Null Then player.tank.tower.winkel = player.tank.tower.winkel + BufferTower(player.tank.tower.winkel, - ATan2((player.tank.x - gvx) - MouseX(), (player.tank.y - gvy) - MouseY()) - 90, 13)
			If player.tank.tower <> Null Then player.tank.tower.entferung = Sqr(((player.tank.x - gVx) - MouseX()) ^ 2 + ((player.tank.y - gVy) - MouseY()) ^ 2)
			
			'############### schiessen
			If player.tank.tower <> Null Then
				If player.tank.tower.cooldown > 0 Then player.tank.tower.cooldown = player.tank.tower.cooldown - 1
			
				If MouseDown(1) Then
					If player.tank.tower.cooldown = 0 Then
						stats[0] = stats[0] + 1
						Local bulletsp:TSchussSp = New TSchussSp
						Schussliste.AddLast(bulletsp)
						Local bulletx:Float, bullety:Float
						If player.tank.tower.cannonAnzahl > 1 Then
							player.tank.tower.nowshoot = player.tank.tower.nowshoot + 1
							If player.tank.tower.nowshoot > player.tank.tower.cannonAnzahl Then player.tank.tower.nowshoot = 1
							Local facotor:Int = 0
							If player.tank.tower.nowshoot = 1 Then facotor = -1
							If player.tank.tower.nowshoot = 2 Then facotor = 1
							bulletx = player.tank.x + Cos(player.tank.tower.winkel + 90) * (player.tank.tower.cannonAbstand * facotor)
							bullety = player.tank.y + Sin(player.tank.tower.winkel + 90) * (player.tank.tower.cannonAbstand * facotor)
						Else
							bulletx = player.tank.x
							bullety = player.tank.y
						EndIf
						bulletsp.xs = bulletx + Cos(player.tank.tower.winkel + 180) * player.tank.tower.cannonLeange
						bulletsp.ys = bullety + Sin(player.tank.tower.winkel + 180) * player.tank.tower.cannonLeange
						bulletsp.winkels = player.tank.tower.winkel + 180
						bulletsp.treffer = 0
						If player.tank.tower.entferung > 150 Then bulletsp.weite = player.tank.tower.entferung + Rnd(- 100, + 100) Else bulletsp.weite = 50 + Rnd(- 100, + 100)
						bulletsp.Kraft = Rand(20, 30)
						If bulletsp.winkels >= 360 Then bulletsp.winkels = bulletsp.winkels Mod 360 'Wenn der Winkel > 360° ist
						If bulletsp.winkels < 0 Then bulletsp.winkels = 360 + bulletsp.winkels 'Wenn der Winkel < 0° ist
						player.tank.tower.cooldown = player.tank.tower.CannonCooldown
						For Local a:Int = -2 To 2
							CreateSmoke(bulletsp.xs, bulletsp.ys, 5, bulletsp.winkels - (a * 2), 10, 3)
						Next
					EndIf
				EndIf
			EndIf
		Next
		
		Local cqpx:Int = player.tank.x / 32.0
		Local cqpy:Int = player.tank.y / 32.0
		For Local cqx:Int = -2 To 2
			For Local cqy:Int = -2 To 2
				If cqpx + cqx > 2 And cqpx + cqx < 997 And cqpy + cqy > 2 And cqpy + cqy < 997 Then
					If wallmap[cqpx + cqx, cqpy + cqy] = 1 Then
						PushQuad(player.tank.x, player.tank.y, player.tank.Size, ((cqpx + cqx) * 32) + 16, ((cqpy + cqy) * 32) + 16, 32, 32)
					EndIf
				EndIf
			Next
		Next
	Else
		player.dead = 1
		stats[2] = stats[2] + 1
		channelmotor.Stop()
		
		Local ngy:Tgraveyard = New Tgraveyard
		mapgraveyardlist.AddLast(ngy)
		ngy.tank = player.tank
		ngy.DrawTank = player.DrawTank
	EndIf
	
	
	rem
	Local pointxr:Float = player.x - Sin(- player.winkel + 90) * 10
	Local pointyr:Float = player.y - Cos(- player.winkel + 90) * 10
	If Sqr((pospxr - pointxr) ^ 2 + (pospyr - pointyr) ^ 2) > 20 Then
		Local nTspur:Tspur = New Tspur
		spurlist.Addlast(nTspur)
		If pbspr > 0 Then pbspr = pbspr - 1 ;nTspur.c = 1
		nTspur.x = pointxr
		nTspur.y = pointyr
		nTspur.length = Sqr((pospxr - pointxr) ^ 2 + (pospyr - pointyr) ^ 2)
		nTspur.r = player.winkel
		nTspur.frompl = 1
		pospxr = pointxr
		pospyr = pointyr
	End If
		
	Local pointxl:Float = player.x - Sin(- player.winkel - 90) * 10
	Local pointyl:Float = player.y - Cos(- player.winkel - 90) * 10
	If Sqr((pospxl - pointxl) ^ 2 + (pospyl - pointyl) ^ 2) > 20 Then
		Local nTspur:Tspur = New Tspur
		spurlist.Addlast(nTspur)
		If pbspl > 0 Then pbspl = pbspl - 1 ;nTspur.c = 1
		nTspur.x = pointxl
		nTspur.y = pointyl
		nTspur.length = Sqr((pospxl - pointxl) ^ 2 + (pospyl - pointyl) ^ 2)
		nTspur.r = player.winkel
		nTspur.frompl = 1
		pospxl = pointxl
		pospyl = pointyl
	End If
	endrem
	
	
End Function
