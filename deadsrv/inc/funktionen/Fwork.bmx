Function mainwork()
	
	rem
	While snetmap[0].astrolist.Count() < 100
		Sastro.Create(Rnd(-inerboxx, inerboxx), Rnd(-inerboxx, inerboxx), 0, snetworld[0], snetmap[0])
	Wend
	
	While snetmap[0].enemylist.Count() < 300
		Senemy.Create(Rand(0, SshipCatalog.list.Count() - 1), Rnd(-inerboxx, inerboxx), Rnd(-inerboxx, inerboxx), 0, snetworld[0], snetmap[0])
	Wend
	
	While Sbase.list.Count() < 25
		Sbase.Create(Rnd(-inerboxx, inerboxx), Rnd(-inerboxx, inerboxx), 0)
	Wend
	endrem
	
	For Local world:Sworld = EachIn Sworld.list
		For Local y:Byte = 0 To 49
			For Local x:Byte = 0 To 49
				If world.maps[x, y].playerlist.Count() > 0 Then
					world.maps[x, y].deltimer = 0
					
					While world.maps[x, y].astrolist.Count() < world.maps[x, y].myastro
						Sastro.Create(Rnd(-inerboxx, inerboxx), Rnd(-inerboxx, inerboxx), 0, world, world.maps[x, y])
					Wend
					
					While world.maps[x, y].enemylist.Count() < 100
						Senemy.Create(Rand(0, SshipCatalog.list.Count() - 1), Rnd(-inerboxx, inerboxx), Rnd(-inerboxx, inerboxx), 0, world, world.maps[x, y])
					Wend
					
				Else
					If world.maps[x, y].deltimer < 3000000 Then
						world.maps[x, y].deltimer:+msc
					Else
						If world.maps[x, y].astrolist.Count() > 0 Then
							For Local astro:Sastro = EachIn world.maps[x, y].astrolist
								Sastro.list.Remove(astro)
								astro.inmap.astrolist.Remove(astro)
								snetastro[astro.id] = Null
							Next
						End If
						If world.maps[x, y].enemylist.Count() > 0 Then
							For Local enemy:Senemy = EachIn world.maps[x, y].enemylist
								Senemy.list.Remove(enemy)
								enemy.inmap.enemylist.Remove(enemy)
								snetship[enemy.ship.id] = Null
							Next
						End If
					EndIf
					
				End If
			Next
		Next
	Next
	
	
	For Local modulf:Smodulfire = EachIn Smodulfire.list
		modulf.timex:+msc
		If modulf.timex > 500 Then
			If modulf.toship.eney Then modulf.toship.eney.target = modulf.fromship
				
			Local shieldhit:Byte = 0
			If modulf.toship.shield > 0 Then
				If modulf.toship.shield < modulf.firemodul.para.schaden Then
					modulf.toship.life:-((modulf.firemodul.para.schaden + Rnd(0, modulf.firemodul.para.schaden)) - modulf.toship.shield)
					modulf.toship.shield = 0
				Else
					modulf.toship.shield:-modulf.firemodul.para.schaden + Rnd(0, modulf.firemodul.para.schaden)
					shieldhit = 1
				EndIf
			Else
				modulf.toship.life:-modulf.firemodul.para.schaden + Rnd(0, modulf.firemodul.para.schaden)
			End If
			
			Smodulfire.list.Remove(modulf)
		End If
	Next
	
	
	
	For Local player:Splayer = EachIn Splayer.list
		If player.active Then
		
		If player.delme Then
			player.delmetimer:+msc
			
			If player.delmetimer > 5000.0 Then
				player.delmetimer = 0
				snetship[player.ship.id] = Null
				player.dropinbase(0)
			End If
		End If
		
		If player.baseshipbulding > - 1 Then 'schiff bauen
			player.baseshipbuildtimer:+msc
			Local sxid:Int = player.baseshipbulding
			If SitemCatalog.array[sxid] Then
				If SitemCatalog.array[sxid].para.buildtime <= player.baseshipbuildtimer Then
					player.basecargo.additem(sxid, 1)
					player.baseshipbulding = -1
					player.baseshipbuildtimer = 0
					
					player.basecargo.sendupdate(player.client)
					
					player.client.WriteByte(1 + 4 + 4) '+++ size
					player.client.WriteByte(144)
					player.client.WriteInt(-1)
					player.client.WriteInt(0)
				EndIf
			Else
				player.baseshipbulding = -1
				player.baseshipbuildtimer = 0
			End If
		End If
		
		If player.baseID = -1 Then
			player.ship.Shieldreload()
			
			Local rad:Float = -ATan2((player.x - player.to_x), (player.y - player.to_y))
			Local entferung:Float = Sqr((player.last_x - player.to_x) ^ 2 + (player.last_y - player.to_y) ^ 2)
			Local radentferung:Float = player.to_r - player.r
			radentferung = cor_rad(radentferung)
			If radentferung < 0 Then radentferung = -radentferung
			
			If entferung > player.moveentferung Then
				player.x:+Cos(rad - 90) * calc_keymove(entferung, player.last_msc)
				player.y:+Sin(rad - 90) * calc_keymove(entferung, player.last_msc)
				player.moveentferung:+calc_keymove(entferung, player.last_msc)
			EndIf
			player.r:-BufferTower(player.r, player.to_r, calc_keymove(radentferung, player.last_msc))
			player.r = cor_rad(player.r)
			
			player.ship.x = player.x
			player.ship.y = player.y
			player.ship.r = player.r
			player.ship.s = player.s
			
			'player.ship
			'player.target
			'player.shot
			
			If player.targetmap Then
				player.jumptime:+msc
				If entferung > 1.0 Then player.jumptime = 0
				If player.jumptime > 5000 Then
					send_sysmsg("Hyperraumsprung abgeschlossen. Sie befinden sich jetzt an der Position: " + player.targetmap.myx + "X " + player.targetmap.myy + "Y", player.client)
					
					player.inmap.playerlist.Remove(player)
					player.inmap = player.targetmap
					player.targetmap = Null
					player.inmap.playerlist.AddLast(player)
					
					player.x = -5000 + (Rand(0, 1) * 10000) + Rand(0, 1000)
					player.y = -5000 + (Rand(0, 1) * 10000) + Rand(0, 1000)
					player.r = Rand(0, 360)
					player.s = 0
					
					For Local astro:Sastro = EachIn player.astrolist
						astro.visionlist.Remove(player)
					Next
					player.astrolist.Clear()
					
					For Local base:Sbase = EachIn player.baselist
						base.visionlist.Remove(player)
					Next
					player.baselist.Clear()
					
					For Local enemy:Senemy = EachIn player.enemylist
						enemy.visionlist.Remove(player)
					Next
					player.enemylist.Clear()
					
					player.playerlist.Clear()
					
					For Local player2:Splayer = EachIn player.visionlist
						player2.visionlist.Remove(player)
						player2.client.WriteByte(1 + 2 + 1) '+++ size
						player2.client.WriteByte(21)
						player2.client.WriteShort(player.id)
						player2.client.WriteByte(0)
					Next
					player.visionlist.Clear()
					
					'send cleanup
					player.client.WriteByte(1) '+++ size
					player.client.WriteByte(13)
					
					'send new clouds
					player.client.WriteByte(1) '+++ size
					player.client.WriteByte(152)
					player.client.WriteByte(player.inmap.myx)
					player.client.WriteByte(player.inmap.myy)
					
					player.sendselfupdate()
				End If
			Else
				player.jumptime = 0
			End If
			
			If player.target And player.target.eney And player.target.eney.inmap <> player.inmap Then player.target = Null ; player.shot = False
			If player.target And player.target.ply And player.target.ply.inmap <> player.inmap Then player.target = Null ; player.shot = False
			
			If player.target And player.shot And player.ship.schusscooltime <= time Then
				Local radx:Float = -ATan2((player.x - player.target.x), (player.y - player.target.y))
				radx = cor_rad(radx)
				Local radentferungx:Float = radx - player.r
				Local entferungx:Float = Sqr((player.x - player.target.x) ^ 2 + (player.y - player.target.y) ^ 2)
				If radentferungx > - shotrad And radentferungx < shotrad And entferungx < player.ship.para.reichweite + 80 And player.target.life > 0 Then
					player.ship.schusscooltime = time + player.ship.para.schussspeed
					
					Local shieldhit:Byte = 0
					If player.target.shield > 0 Then
						If player.target.shield < player.ship.para.schaden Then
							player.target.life:-((player.ship.para.schaden + Rnd(0, player.ship.para.schaden)) - player.target.shield)
							player.target.shield = 0
						Else
							player.target.shield:-player.ship.para.schaden + Rnd(0, player.ship.para.schaden)
							shieldhit = 1
						EndIf
					Else
						player.target.life:-player.ship.para.schaden + Rnd(0, player.ship.para.schaden)
					End If
					
					If player.target.ply And player.target.life <= 0 Then addkillMSG(player.target.ply, player)
					
					If player.target.eney And player.target.life > 0 Then player.target.eney.target = player.ship
					
					For Local play:Splayer = EachIn player.visionlist
						play.client.WriteByte(1 + 2 + 2 + 1) '+++ size
						play.client.WriteByte(133)
						play.client.WriteShort(player.ship.id)
						play.client.WriteShort(player.target.id)
						play.client.WriteByte(shieldhit)
					Next
					
					player.client.WriteByte(1 + 2 + 2 + 1) '+++ size
					player.client.WriteByte(133)
					player.client.WriteShort(player.ship.id)
					player.client.WriteShort(player.target.id)
					player.client.WriteByte(shieldhit)
				End If
			EndIf
			
			If player.targetastro And player.shot And player.ship And player.ship.cargo Then
				Local space:Int = player.ship.cargo.getspace()
				If space > 0 Then
					Local astro:Sastro = player.targetastro
					If astro.delme Then
						player.astrolist.Remove(astro)
					Else
						If player.miningcooldown < time And Sqr((astro.x - player.x) ^ 2 + (astro.y - player.y) ^ 2) <= 256 Then
							player.miningcooldown = time + 2000
							If astro.amount > 0 Then
								If space > 0 Then
									astro.amount:-1
									player.ship.cargo.additem(0, 1)
								EndIf
							End If
							player.ship.cargo.sendupdate(player.client)
							
							For Local play:Splayer = EachIn astro.visionlist
								If play <> player Then
									play.client.WriteByte(1 + 2 + 2) '+++ size
									play.client.WriteByte(134)
									play.client.WriteShort(player.ship.id)
									play.client.WriteShort(astro.id)
								EndIf
							Next
							'[### PACK ###] = Abau sog vom minern
							player.client.WriteByte(1 + 2 + 2) '+++ size
							player.client.WriteByte(134)
							player.client.WriteShort(player.ship.id)
							player.client.WriteShort(astro.id)
							'[###------###]
						EndIf
					End If
				EndIf
			EndIf
			
			If player.delme = False And player.ship.life <= 0 Then
				SendRemove(player.visionlist, 21, player.id, True)
				player.delme = True
				player.x = -10000000
				player.y = -10000000
				player.baseID = -2
			EndIf
			
		Else
			player.last_time = time
			player.last_msc = 0
			
			player.lastbase = player.baseID
			
			If player.ship Then
				player.ship.life = player.ship.para.maxlife
				player.ship.shield = player.ship.para.maxshield
			End If
			If networkupdatetimer > networkupdatespeed Then
				
				If player.baseshipbulding > - 1 Then 'build statusleiste in der base updaten
					Local sxid:Int = player.baseshipbulding
					If SitemCatalog.array[sxid] Then
						player.client.WriteByte(1 + 4 + 4) '+++ size
						player.client.WriteByte(144)
						player.client.WriteInt(sxid)
						player.client.WriteInt(player.baseshipbuildtimer)
					End If
				End If
				
			EndIf
		EndIf
		
		
		If networkupdatetimer > networkupdatespeed Then
		
			player.sendselfstatus()
			
			If player.delme = False Then
				For Local player2:Splayer = EachIn player.inmap.playerlist
					If player2 <> player Then
					If player2.delme = False And player2.baseID = -1 And player2.x < player.x + range And player2.x > player.x - range And player2.y < player.y + range And player2.y > player.y - range Then
						
						If player.visionlist.Contains(player2) Then
							player.sendupdate(player2.client)
						Else
							player.sendcreate(player2.client)
							player.visionlist.AddLast(player2)
						EndIf
						
						If Not player2.playerlist.Contains(player) Then player2.playerlist.AddLast(player)
					Else
						If player.visionlist.Contains(player2) Then
							player.visionlist.Remove(player2)
							player2.client.WriteByte(1 + 2 + 1) '+++ size
							player2.client.WriteByte(21)
							player2.client.WriteShort(player.id)
							player2.client.WriteByte(0)
						End If
						If player2.playerlist.Contains(player) Then player2.playerlist.remove(player)
					EndIf
					EndIf
				Next
			EndIf
		EndIf
			
		
		EndIf
		If player.disconnected Then SendRemove(player.visionlist, 21, player.id, 1) ; Splayer.list.Remove(player) ; snetship[player.ship.id] = Null
	Next
	
	For Local base:Sbase = EachIn Sbase.list
		
		'more stuff here
		If networkupdatetimer > networkupdatespeed Then
			For Local player:Splayer = EachIn base.inmap.playerlist
				If base.delme = False And player.baseID >= - 1 And player.x < base.x + range And player.x > base.x - range And player.y < base.y + range And player.y > base.y - range Then
					
					Local entferung:Float = Sqr((player.x - base.x) ^ 2 + (player.y - base.y) ^ 2)
					If entferung <= 64 Then
						player.baseID = base.id
						player.base = base
					EndIf
				
					If base.visionlist.Contains(player) Then
						'base.sendupdate(player.client)
					Else
						base.sendcreate(player.client)
						base.visionlist.AddLast(player)
					EndIf
					
					If Not player.baselist.Contains(base) Then player.baselist.AddLast(base)
				Else
					If base.visionlist.Contains(player) Then
						base.visionlist.Remove(player)
						player.client.WriteByte(1 + 2) '+++ size
						player.client.WriteByte(25)
						player.client.WriteShort(base.id)
					End If
					If player.baselist.Contains(base) Then player.baselist.remove(base)
				EndIf
			Next
			If base.delme Then
				Sbase.list.Remove(base)
				base.inmap.baselist.Remove(base)
			End If
		EndIf
		
	Next
	
	For Local astro:Sastro = EachIn Sastro.list
	
		If astro.amount <= 0 Then
			astro.delme = True
		EndIf
		
		If networkupdatetimer > networkupdatespeed Then
			For Local player:Splayer = EachIn astro.inmap.playerlist
				If astro.delme = False And player.baseID >= - 1 And player.x < astro.x + range And player.x > astro.x - range And player.y < astro.y + range And player.y > astro.y - range Then
					
					If astro.visionlist.Contains(player) Then
						'astro.sendupdate(player.client)
					Else
						astro.sendcreate(player.client)
						astro.visionlist.AddLast(player)
					EndIf
					
					If Not player.astrolist.Contains(astro) Then player.astrolist.AddLast(astro)
				Else
					If astro.visionlist.Contains(player) Then
						astro.visionlist.Remove(player)
						player.client.WriteByte(1 + 2) '+++ size
						player.client.WriteByte(26)
						player.client.WriteShort(astro.id)
					End If
					If player.astrolist.Contains(astro) Then player.astrolist.remove(astro)
				EndIf
			Next
			If astro.delme Then
				Sastro.list.Remove(astro)
				astro.inmap.astrolist.Remove(astro)
				snetastro[astro.id] = Null
			End If
		EndIf
	Next
	
	
	
	For Local enemy:Senemy = EachIn Senemy.list
		enemy.ship.Shieldreload()
		
		If enemy.delme = False And enemy.ship.life <= 0 Then
			enemy.delme = True
		EndIf
		
		enemy.kitime:-msc
		If enemy.kitime <= 0 Then
			enemy.kitime = Rand(3000, 15000)
			enemy.to_r = Rnd(0, 360) - 180
		End If
		
		If enemy.target And enemy.target.eney And enemy.target.eney.inmap <> enemy.inmap Then enemy.target = Null
		If enemy.target And enemy.target.ply And enemy.target.ply.inmap <> enemy.inmap Then enemy.target = Null
		
	
		If enemy.target Then
			Local rad:Float = -ATan2((enemy.x - enemy.target.x), (enemy.y - enemy.target.y))
			Local entferung:Float = Sqr((enemy.x - enemy.target.x) ^ 2 + (enemy.y - enemy.target.y) ^ 2)
			
			rad = cor_rad(rad)
			
			Local change:Float = Abs(enemy.r - rad) / 4.0
			If change > enemy.ship.para.rotation Then change = enemy.ship.para.rotation
			enemy.r:-BufferTower(enemy.r, rad, calc_move(change))
			enemy.r = cor_rad(enemy.r)
			If entferung > 1000 Then enemy.target = Null
			If enemy.target And enemy.target.life <= 0 Then enemy.target = Null
			If enemy.target And enemy.target.ply And enemy.target.ply.baseID > - 1 Then enemy.target = Null
			If enemy.target And enemy.target.ply And enemy.target.ply.disconnected = True Then enemy.target = Null
		Else
			Local change:Float = Abs(enemy.r - enemy.to_r) / 4.0
			If change > enemy.ship.para.rotation Then change = enemy.ship.para.rotation
			enemy.r:-BufferTower(enemy.r, enemy.to_r, calc_move(change))
			enemy.r = cor_rad(enemy.r)
		EndIf
		
		
				
		enemy.s:+calc_move(enemy.ship.para.schub)
		enemy.s:-calc_move(enemy.s / 10.0)
		
		enemy.x:+Cos(enemy.r - 90) * calc_move(enemy.s)
		enemy.y:+Sin(enemy.r - 90) * calc_move(enemy.s)
		
		enemy.ship.x = enemy.x
		enemy.ship.y = enemy.y
		enemy.ship.r = enemy.r
		enemy.ship.s = enemy.s
		
		If enemy.targettimer > 0 Then enemy.targettimer:-msc Else enemy.targettimer = 0
		If enemy.delme = False And enemy.target And enemy.targettimer = 0 Then
			Local radx:Float = -ATan2((enemy.x - enemy.target.x), (enemy.y - enemy.target.y))
			radx = cor_rad(radx)
			Local radentferungx:Float = radx - enemy.r
			Local entferungx:Float = Sqr((enemy.x - enemy.target.x) ^ 2 + (enemy.y - enemy.target.y) ^ 2)
			If radentferungx > - shotrad And radentferungx < shotrad And entferungx < enemy.ship.para.reichweite And enemy.target.life > 0 Then
				
				If enemy.target.eney Then enemy.target.eney.target = enemy.ship
				
				Local shieldhit:Byte = 0
				If enemy.target.shield > 0 Then
					If enemy.target.shield < enemy.ship.para.schaden Then
						enemy.target.life:-((enemy.ship.para.schaden + Rnd(0, enemy.ship.para.schaden)) - enemy.target.shield)
						enemy.target.shield = 0
					Else
						enemy.target.shield:-enemy.ship.para.schaden + Rnd(0, enemy.ship.para.schaden)
						shieldhit = 1
					EndIf
				Else
					enemy.target.life:-enemy.ship.para.schaden + Rnd(0, enemy.ship.para.schaden)
				End If
				enemy.targettimer = enemy.ship.para.schussspeed
				For Local play:Splayer = EachIn enemy.visionlist
					play.client.WriteByte(1 + 2 + 2 + 1) '+++ size
					play.client.WriteByte(133)
					play.client.WriteShort(enemy.ship.id)
					play.client.WriteShort(enemy.target.id)
					play.client.WriteByte(shieldhit)
				Next
			End If
		EndIf
		
		
		
		If enemy.x > boxx Then enemy.delme = True ; Senemy.list.Remove(enemy) ; SendRemove(enemy.visionlist, 22, enemy.id, True) ; enemy.delme = True
		If enemy.x < - boxx Then enemy.delme = True ; Senemy.list.Remove(enemy) ; SendRemove(enemy.visionlist, 22, enemy.id, True) ; enemy.delme = True
		If enemy.y > boxx Then enemy.delme = True ; Senemy.list.Remove(enemy) ; SendRemove(enemy.visionlist, 22, enemy.id, True) ; enemy.delme = True
		If enemy.y < - boxx Then enemy.delme = True ; Senemy.list.Remove(enemy) ; SendRemove(enemy.visionlist, 22, enemy.id, True) ; enemy.delme = True
		
		If networkupdatetimer > networkupdatespeed Then
			If Rand(1, aggrometer) = aggro Then
				Local stueck:Int, treffer:Sship[65535]
				For Local enemyxxx:Senemy = EachIn enemy.inmap.enemylist
					If enemyxxx.delme = False And enemy <> enemyxxx Then
						If enemyxxx.x < enemy.x + range And enemyxxx.x > enemy.x - range And enemyxxx.y < enemy.y + range And enemyxxx.y > enemy.y - range Then
							treffer[stueck] = enemyxxx.ship
							stueck:+1
						End If
					End If
				Next
				If stueck > 0 Then enemy.target = treffer[Rand(0, stueck - 1)]
			EndIf

			For Local player:Splayer = EachIn enemy.inmap.playerlist
				If enemy.delme = False And player.baseID >= - 1 And player.x < enemy.x + range And player.x > enemy.x - range And player.y < enemy.y + range And player.y > enemy.y - range Then
					If Rand(1, aggrometer) = aggro Then
						enemy.target = player.ship
					EndIf
				
					If enemy.visionlist.Contains(player) Then
						If player.baseID >= - 1 Then enemy.sendupdate(player.client)
					Else
						enemy.sendcreate(player.client)
						enemy.visionlist.AddLast(player)
					EndIf
					
					If Not player.enemylist.Contains(enemy) Then player.enemylist.AddLast(enemy)
				Else
					If enemy.visionlist.Contains(player) Then
						enemy.visionlist.Remove(player)
						player.client.WriteByte(1 + 2 + 1) '+++ size
						player.client.WriteByte(22)
						player.client.WriteShort(enemy.id)
						player.client.WriteByte(enemy.delme)
					End If
					If player.enemylist.Contains(enemy) Then player.enemylist.remove(enemy)
				EndIf
			Next
			If enemy.delme Then
				Senemy.list.Remove(enemy)
				enemy.inmap.enemylist.Remove(enemy)
				snetship[enemy.ship.id] = Null
			End If
		EndIf
	Next
	
End Function

Function SendRemove(playervision:TList, sendid:Byte, id:Short, senddesi:Byte = 0)
	For Local player:Splayer = EachIn playervision
		If senddesi Then player.client.WriteByte(1 + 2 + 1) Else player.client.WriteByte(1 + 2)'+++ size
		player.client.WriteByte(sendid)
		player.client.WriteShort(id)
		If senddesi Then player.client.WriteByte(1)
	Next
	playervision.Clear()
End Function

Function addkillMSG(victem:Splayer, killer:Splayer)
	If killer Then
		For Local playerx:Splayer = EachIn Splayer.list
			If playerx.client Then
				Local altstr:String[] = ["verbrannte", "zerschmetterte", "zerquetschte", "entschärfte"]
				Local zufall:Int = Rand(0, altstr.Length - 1)
				
				Local msgstr:String = killer.name + " " + altstr[zufall] + " " + victem.name
				playerx.client.WriteByte(1 + 1 + msgstr.Length) '+++ size
				playerx.client.WriteByte(253)
				playerx.client.WriteByte(msgstr.Length)
				playerx.client.WriteString(msgstr)
			EndIf
		Next
	EndIf
End Function