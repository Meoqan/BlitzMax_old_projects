Function inflight()
			mouseentferung = 100000
			mouseship = Null
			mousetyp = 0
			mouseastro = Null

			'globale rotation
			If md1_rothit Then
				calc_rotation = calc_oldrotation + md1_rotation
			Else
				calc_oldrotation = calc_rotation
			End If
			
			
			
			
			reset_draw()
			
			SetBlend(LIGHTBLEND)
			Tcloud.Work(player.x - player.oldx, player.y - player.oldy)
			SetBlend(ALPHABLEND)
			reset_draw()
			
			Tstar.Workdown(player.x - player.oldx, player.y - player.oldy)
			
			reset_draw()
			
			'####################### Hier die map zeichnen
			'drawmap()
			
			reset_draw()
			
			SetBlend(LIGHTBLEND)
			SetAlpha(0.2)
			SetScale(player.ship.para.reichweite / 50.0, player.ship.para.reichweite / 50.0)
			If inthebase = 0 Then DrawImage(hudring_img, pointx, pointy)
			SetBlend(ALPHABLEND)
			
			reset_draw()
			
			Local winkel_zero:Float = ATan2(player.x, player.y) + 180 + calc_rotation
			SetColor(100, 255, 100)
			SetAlpha(0.4)
			SetRotation(-winkel_zero + 180)
			DrawImage(zero_img, pointx + (Sin(winkel_zero) * 150.0), pointy + (Cos(winkel_zero) * 150.0))
			
			reset_draw()
			
			For Local base:Tbase = EachIn Tbase.list
				If player.x < base.x + 1000 And player.x > base.x - 1000 And player.y < base.y + 1000 And player.y > base.y - 1000 Then
					SetColor(255, 255, 255)
					SetRotation(base.r - calc_rotation)
					calc_pos(base.x - player.x, base.y - player.y)
					DrawImage(base.tex, pointx + get_x(), pointy + get_y())
					
					
					Local entferung:Float = Sqr((base.x - player.x) ^ 2 + (base.y - player.y) ^ 2)
					
					For Local playerO:Tplayer = EachIn Tplayer.list
						If playerO.active And playerO.baseID = -1 Then
							Local entferungO:Float = Sqr((base.x - playerO.x) ^ 2 + (base.y - playerO.y) ^ 2)
							If entferung > entferungO Then entferung = entferungO
						End If
					Next
					
					If entferung < 256.0 Then
						base.doors:+calc_move(2.0)
					Else
						base.doors:-calc_move(2.0)
					EndIf
					If base.doors < 0 Then base.doors = 0
					If base.doors > 16 Then base.doors = 16
					
					calc_pos(base.x - player.x + base.doors, base.y - player.y - base.doors)
					DrawImage(base.texD, pointx + get_x(), pointy + get_y())
					SetRotation(90 + base.r - calc_rotation)
					calc_pos(base.x - player.x + base.doors, base.y - player.y + base.doors)
					DrawImage(base.texD, pointx + get_x(), pointy + get_y())
					SetRotation(180 + base.r - calc_rotation)
					calc_pos(base.x - player.x - base.doors, base.y - player.y + base.doors)
					DrawImage(base.texD, pointx + get_x(), pointy + get_y())
					SetRotation(270 + base.r - calc_rotation)
					calc_pos(base.x - player.x - base.doors, base.y - player.y - base.doors)
					DrawImage(base.texD, pointx + get_x(), pointy + get_y())
					SetRotation(base.r - calc_rotation)
					
					SetColor(255, 255, 255)
					calc_pos(base.x - player.x, base.y - player.y)
					DrawImage(base.texO, pointx + get_x(), pointy + get_y())
					
				EndIf
			Next
			
			reset_draw()
			
			SetBlend(LIGHTBLEND)
			For Local beam:Tbeam = EachIn Tbeam.list
				If netship[beam.fromship] And netship[beam.toship] Then
					Local rad:Float = -ATan2(((netship[beam.fromship].x) - (netship[beam.toship].x + beam.z2x)), ((netship[beam.fromship].y) - (netship[beam.toship].y + beam.z2y)))
					Local entferung:Float = Sqr(((netship[beam.fromship].x) - (netship[beam.toship].x + beam.z2x)) ^ 2 + ((netship[beam.fromship].y) - (netship[beam.toship].y + beam.z2y)) ^ 2)
					
					SetRotation(rad - 90 - calc_rotation)
					SetAlpha(1.0 - (beam.time / 600.0))
					SetColor(200, 200, 200)
					If netship[beam.fromship].ply Then SetColor(150, 255, 150)
					If netship[beam.fromship].ene Then SetColor(255, 150, 150)
					If netship[beam.fromship].plyO Then SetColor(150, 150, 255)
					
					SetScale(entferung / 100.0, 1.0)
					calc_pos(netship[beam.fromship].x - player.x, netship[beam.fromship].y - player.y)
					DrawImage(beam_img, pointx + get_x(), pointy + get_y())
					
				End If
			Next
			
			For Local beam:Tbeam = EachIn Tbeam.astrolist
				If netship[beam.fromship] And netastro[beam.toastro] Then
					Local rad:Float = -ATan2(((netship[beam.fromship].x) - (netastro[beam.toastro].x + beam.z2x)), ((netship[beam.fromship].y) - (netastro[beam.toastro].y + beam.z2y)))
					Local entferung:Float = Sqr(((netship[beam.fromship].x) - (netastro[beam.toastro].x + beam.z2x)) ^ 2 + ((netship[beam.fromship].y) - (netastro[beam.toastro].y + beam.z2y)) ^ 2)
					
					SetRotation(rad - 90 - calc_rotation)
					SetAlpha(1.0 - (beam.time / 1000.0))
					SetColor(255, 255, 100)
					SetScale(entferung / 100.0, 1.0)
					
					calc_pos(netship[beam.fromship].x - player.x, netship[beam.fromship].y - player.y)
					DrawImage(beam_img, pointx + get_x(), pointy + get_y())
				End If
				
				beam.time:+msc
				If beam.time > 1000 Then Tbeam.astrolist.Remove(beam)
			Next
			
			SetBlend(ALPHABLEND)
			
			reset_draw()
			
			Tthruster.Draw()
			
			reset_draw()
			
			Tpolythrust.Draw()
			Tpolythrust.Drawlast(player.x + (Cos(player.r + 90) * (player.ship.para.sizey / 4.0)), player.y + (Sin(player.r + 90) * (player.ship.para.sizey / 4.0)), player.r, player.ship.para.sizex / 3.0, player.lstpoly, 1)
			
			reset_draw()
			
			
			
			
			For Local enemy:Tenemy = EachIn Tenemy.list
				If enemy.active Then
					calc_pos(enemy.x - player.x, enemy.y - player.y)
					Local mauentferung:Float = Sqr((MouseX() - (pointx + get_x())) ^ 2 + (MouseY() - (pointy + get_y())) ^ 2)
					If mouseentferung > mauentferung Then mouseentferung = mauentferung ; mouseship = enemy.ship ;mouseastro = Null; mousetyp = 1
					
					Local rad:Float = -ATan2((enemy.last_x - enemy.to_x), (enemy.last_y - enemy.to_y))
					Local entferung:Float = Sqr((enemy.last_x - enemy.to_x) ^ 2 + (enemy.last_y - enemy.to_y) ^ 2)
					Local radentferung:Float = enemy.to_r - enemy.r
					radentferung = cor_rad(radentferung)
					If radentferung < 0 Then radentferung = -radentferung
					
					If entferung > enemy.moveentferung Then
						enemy.x:+Cos(rad - 90) * calc_keymove(entferung, enemy.last_msc)
						enemy.y:+Sin(rad - 90) * calc_keymove(entferung, enemy.last_msc)
						enemy.moveentferung:+calc_keymove(entferung, enemy.last_msc)
					EndIf
					enemy.r:-BufferTower(enemy.r, enemy.to_r, calc_keymove(radentferung, enemy.last_msc))
					enemy.r = cor_rad(enemy.r)
					
					
					'Tthruster.Create(enemy.x, enemy.y, enemy.r, calc_keymove(entferung, enemy.last_msc))
					Local speed:Float
					If entferung > 0 And enemy.last_msc > 0 Then speed = entferung / enemy.last_msc * 100.0
					Tpolythrust.Drawlast(enemy.x + (Cos(enemy.r + 90) * (enemy.ship.para.sizey / 4.0)), enemy.y + (Sin(enemy.r + 90) * (enemy.ship.para.sizey / 4.0)), enemy.r, enemy.ship.para.sizex / 3.0, enemy.lstpoly, 0)
					enemy.lstpoly = Tpolythrust.Create(enemy.x + (Cos(enemy.r + 90) * (enemy.ship.para.sizey / 4.0)), enemy.y + (Sin(enemy.r + 90) * (enemy.ship.para.sizey / 4.0)), enemy.r, enemy.ship.para.sizex / 3.0, speed, enemy.lstpoly, 0)
					
					Local smk:Float = enemy.life / enemy.ship.para.maxlife
					If smk < 0.5 Then Tsmoke.Create(enemy.x, enemy.y, enemy.r)
					
					enemy.ship.x = enemy.x
					enemy.ship.y = enemy.y
					enemy.ship.r = enemy.r
					enemy.ship.s = enemy.s
				End If
				If enemy.active And player.x < enemy.x + 1000 And player.x > enemy.x - 1000 And player.y < enemy.y + 1000 And player.y > enemy.y - 1000 Then
					
					
					SetRotation(enemy.r - calc_rotation)
					calc_pos(enemy.x - player.x, enemy.y - player.y)
					enemy.ship.Draw(pointx + get_x(), pointy + get_y(), 255, 100, 100)
					
					SetHandle(0, 0)
				EndIf
			Next
			
			reset_draw()
			
			'SetAlpha(0.5)
			For Local playerO:Tplayer = EachIn Tplayer.list
				If playerO.active And playerO.baseID = -1 Then
					calc_pos(playerO.x - player.x, playerO.y - player.y)
					Local mauentferung:Float = Sqr((MouseX() - (pointx + get_X())) ^ 2 + (MouseY() - (pointy + get_y())) ^ 2)
					If mouseentferung > mauentferung Then mouseentferung = mauentferung ; mouseship = playerO.ship ; mouseastro = Null; mousetyp = 1
					
					Local rad:Float = -ATan2((playerO.x - playerO.to_x), (playerO.y - playerO.to_y))
					Local entferung:Float = Sqr((playerO.last_x - playerO.to_x) ^ 2 + (playerO.last_y - playerO.to_y) ^ 2)
					Local radentferung:Float = playerO.to_r - playerO.r
					radentferung = cor_rad(radentferung)
					If radentferung < 0 Then radentferung = -radentferung
					
					If entferung > playerO.moveentferung Then
						playerO.x:+Cos(rad - 90) * calc_keymove(entferung, playerO.last_msc)
						playerO.y:+Sin(rad - 90) * calc_keymove(entferung, playerO.last_msc)
						playerO.moveentferung:+calc_keymove(entferung, playerO.last_msc)
					EndIf
					playerO.r:-BufferTower(playerO.r, playerO.to_r, calc_keymove(radentferung, playerO.last_msc))
					playerO.r = cor_rad(playerO.r)
					
					'Tthruster.Create(playerO.x, playerO.y, playerO.r, calc_keymove(entferung, playerO.last_msc))
					Local speed:Float
					If entferung > 0 And playerO.last_msc > 0 Then speed = entferung / playerO.last_msc * 100.0
					Tpolythrust.Drawlast(playerO.x + (Cos(playerO.r + 90) * (playerO.ship.para.sizey / 4.0)), playerO.y + (Sin(playerO.r + 90) * (playerO.ship.para.sizey / 4.0)), playerO.r, playerO.ship.para.sizex / 3.0, playerO.lstpoly, 2)
					playerO.lstpoly = Tpolythrust.Create(playerO.x + (Cos(playerO.r + 90) * (playerO.ship.para.sizey / 4.0)), playerO.y + (Sin(playerO.r + 90) * (playerO.ship.para.sizey / 4.0)), playerO.r, playerO.ship.para.sizex / 3.0, speed, playerO.lstpoly, 2)
					
					Local smk:Float = playerO.ship.life / playerO.ship.para.maxlife
					If smk < 0.5 Then Tsmoke.Create(playerO.x, playerO.y, playerO.r)
					
					playerO.ship.x = playerO.x
					playerO.ship.y = playerO.y
					playerO.ship.r = playerO.r
					playerO.ship.s = playerO.s
				EndIf
				If player.x < playerO.x + 1000 And player.x > playerO.x - 1000 And player.y < playerO.y + 1000and player.y > playerO.y - 1000 Then
					If playerO.active And playerO.baseID = -1 Then
						
						SetRotation(playerO.r - calc_rotation)
						
						calc_pos(playerO.x - player.x, playerO.y - player.y)
						playerO.ship.Draw(pointx + get_x(), pointy + get_y(), 100, 255, 255)
						
						SetRotation(0)
						SetColor(255, 255, 255)
						DrawText(playerO.name, pointx + get_x() - (TextWidth(playerO.name) / 2.0), pointy + get_y() + 32)
					End If
				EndIf
			Next
			
			reset_draw()
			
			'++++++++ spieler zeichen
			If inthebase = 0 Then
				SetRotation(player.r - calc_rotation)
				If player.ship Then player.ship.Draw(pointx, pointy, 100, 255, 100)
			EndIf
			
			reset_draw()
			
			For Local modulf:Tmodulfire = EachIn Tmodulfire.list
				modulf.Draw()
			Next
			
			reset_draw()
			
			SetBlend(LIGHTBLEND)
			For Local beam:Tbeam = EachIn Tbeam.list
				If netship[beam.fromship] And netship[beam.toship] Then
					
					If beam.shieldhit Then
						reset_draw()
						SetColor(200, 200, 200)
						If netship[beam.toship].ply Then SetColor(150, 255, 150)
						If netship[beam.toship].ene Then SetColor(255, 150, 150)
						If netship[beam.toship].plyO Then SetColor(150, 150, 255)
						SetRotation(netship[beam.toship].r - calc_rotation)
						SetScale((netship[beam.toship].para.sizex + 32) / 100, (netship[beam.toship].para.sizey + 32) / 100)
						SetAlpha(1.0 - (beam.time / 600.0))
						
						calc_pos(netship[beam.toship].x - player.x, netship[beam.toship].y - player.y)
						DrawImage(shieldhit_img, pointx + get_x(), pointy + get_y())
					
					End If
				End If
				
				beam.time:+msc
				If beam.time > 600 Then Tbeam.list.Remove(beam)
			Next
			SetBlend(ALPHABLEND)
			
			reset_draw()
			
			Tsmoke.Draw()
			
			reset_draw()
			
			Texplosion.Draw()
			
			reset_draw()
			
			SetRotation(hud_srotation)
			For Local astro:Tastro = EachIn Tastro.list
				If player.x < astro.x + 1000 And player.x > astro.x - 1000 And player.y < astro.y + 1000and player.y > astro.y - 1000 Then
					calc_pos(astro.x - player.x, astro.y - player.y)
					Local mauxxentferung:Float = Sqr((MouseX() - (pointx + get_x())) ^ 2 + (MouseY() - (pointy + get_y())) ^ 2)
					If mouseentferung > mauxxentferung Then
						mouseentferung = mauxxentferung
						mouseastro = astro
						mouseship = Null
						mousetyp = 2
					EndIf
					SetRotation(-calc_rotation)
					calc_pos(astro.x - player.x, astro.y - player.y)
					DrawImage(astro_img, pointx + get_x(), pointy + get_y())
				EndIf
			Next
			
			reset_draw()
			
			Tstar.Worktop(player.x - player.oldx, player.y - player.oldy)
			
			player.oldx = player.x
			player.oldy = player.y
			
			
			'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ HUD
			'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 
			'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 
			
			reset_draw()
			
			
			
			If mu1 Then
				targetastro = Null
				targetship = Null
				targetattack = False
				
				If Tmenu.check_open() And mouseentferung < 64 And mousetyp = 1 Then
					targetship = mouseship
				End If
				
				If Tmenu.check_open() And mouseentferung < 64 And mousetyp = 2 Then
					targetastro = mouseastro
				End If
			EndIf
			
			If mh2 Then
				targetastro = Null
				targetship = Null
				targetattack = False
				If Tmenu.check_open() And mouseentferung < 64 And mousetyp = 1 Then
					targetship = mouseship
					targetattack = True
				End If
				
				If Tmenu.check_open() And mouseentferung < 64 And mousetyp = 2 Then
					targetastro = mouseastro
					targetattack = True
				End If
			EndIf
			
			If targetship And targetship.delme Then targetship = Null
			If targetastro And targetastro.delme Then targetastro = Null
			
			If targetship Then
				If targetattack Then
					SetColor(255, 0, 0)
					SetScale(1.0 + (Sin(MilliSecs() / 4.0) / 5.0), 1.0 + (Sin(MilliSecs() / 4.0) / 5.0))
					calc_pos(targetship.x - player.x, targetship.y - player.y)
					DrawImage(hudarrows_img, pointx + get_x(), pointy + get_y())
				Else
					SetColor(255, 255, 0)
					SetScale(1.0 + (Sin(MilliSecs() / 4.0) / 5.0), 1.0 + (Sin(MilliSecs() / 4.0) / 5.0))
					calc_pos(targetship.x - player.x, targetship.y - player.y)
					DrawImage(hudarrows_img, pointx + get_x(), pointy + get_y())
				End If
			ElseIf targetastro Then
				If targetattack Then
					SetScale(1.0 + (Sin(MilliSecs() / 4.0) / 5.0), 1.0 + (Sin(MilliSecs() / 4.0) / 5.0))
					SetColor(0, 0, 255)
					calc_pos(targetastro.x - player.x, targetastro.y - player.y)
					DrawImage(hudarrows_img, pointx + get_x(), pointy + get_y())
				Else
					SetScale(1.0 + (Sin(MilliSecs() / 4.0) / 5.0), 1.0 + (Sin(MilliSecs() / 4.0) / 5.0))
					SetColor(0, 255, 255)
					calc_pos(targetastro.x - player.x, targetastro.y - player.y)
					DrawImage(hudarrows_img, pointx + get_x(), pointy + get_y())
				End If
			End If
			rem
			reset_draw()
			
			SetAlpha(0.25)
			If KeyDown(KEY_E) Then zoom:+calc_move(5)
			If KeyDown(KEY_Q) Then zoom:-calc_move(5)
			If KeyDown(KEY_R) Then zoom = 200.0
			
			If zoom > 200 Then zoom = 200
			If zoom < 50 Then zoom = 50
			
			Local negzoom:Float = 50.0 * (50.0 / zoom)
			
			Local mapx:Float = screenx - (5.0 * negzoom) - 25
			Local mapy:Float = screeny - (5.0 * negzoom) - 25
			
			For Local x:Int = 0 To 10
				DrawRect(mapx + ((x - 5) * negzoom) , mapy - (5 * negzoom), 1, 10 * negzoom)
			Next
			
			For Local y:Int = 0 To 10
				DrawRect(mapx - (5 * negzoom), mapy + ((y - 5) * negzoom) , 10 * negzoom, 1)
			Next
			SetAlpha(1)
			
			SetHandle(2, 2)
			
			SetColor(0, 0, 255)
			For Local astro:Tastro = EachIn Tastro.list
				DrawRect(mapx + (astro.x / zoom) , mapy + (astro.y / zoom) , 4, 4)
			Next
			
			SetColor(255, 0, 0)
			For Local enemy:Tenemy = EachIn Tenemy.list
				DrawRect(mapx + (enemy.x / zoom) , mapy + (enemy.y / zoom) , 4, 4)
			Next
			
			SetColor(255, 255, 0)
			For Local base:Tbase = EachIn Tbase.list
				DrawRect(mapx + (base.x / zoom) , mapy + (base.y / zoom) , 4, 4)
			Next
			
			SetColor(0, 255, 255)
			For Local playerO:Tplayer = EachIn Tplayer.list
				If playerO.active Then
					DrawRect(mapx + (playerO.x / zoom) , mapy + (playerO.y / zoom) , 4, 4)
				End If
			Next
			
			SetHandle(negzoom / 2.0, negzoom / 2.0)
			SetColor(0, 255, 0)
			SetAlpha(0.2)
			DrawOval(mapx + (player.x / zoom), mapy + (player.y / zoom), negzoom, negzoom)
			SetAlpha(1)
			SetHandle(2, 2)
			DrawRect(mapx + (player.x / zoom), mapy + (player.y / zoom), 4, 4)
			
			
			endrem
			reset_draw()
			DrawImage(hud01b_img, 25, 25)
						
			If player.ship Then DrawSubImageRect(hud01l_img, 25, 25, 40.0 + ((player.ship.life / player.ship.para.maxlife) * 135.0), 50.0, 0, 0, 40.0 + ((player.ship.life / player.ship.para.maxlife) * 135.0), 50)
			If player.ship Then DrawSubImageRect(hud01s_img, 25, 25, 40.0 + ((player.ship.shield / player.ship.para.maxshield) * 135.0), 50, 0, 0, 40.0 + ((player.ship.shield / player.ship.para.maxshield) * 135.0), 50)
			
			SetScale(26.0 / player.ship.shipC.tex.height, 26.0 / player.ship.shipC.tex.height)
			
			hud_srotation:+calc_move(2) Mod 360
			SetRotation(hud_srotation)
			If player.ship Then player.ship.Draw(49, 49, 0, 255, 0)
			
			reset_draw()
			
			If player.ship And player.ship.cargo And player.ship.para.maxcargo > 0 Then
				If player.ship.cargo.getspace() = 0 Then
					DrawImage(hudcargofull_img, 25, 85)
				Else
					DrawImage(hudcargo_img, 25, 85)
				End If
				
				If ismouseover(25, 85, 48, 48) And mh1 And Tmenu.check_open() Then
					Tmenu.openflycargo = True
				End If
			EndIf
			
			reset_draw()
			
			SetColor(0, 255, 0)
			SetRotation(-calc_rotation)
			DrawImage(richtung_img, screenx - 64, 64)
			
			
			reset_draw()
			
			If player.ship And player.ship.cargo And player.ship.cargo.getspace() > 0 And player.ship.para.maxcargo > 0 Then
				Local tmpt:Float = (Float(player.ship.cargo.getusage()) / Float(player.ship.cargo.maxsize)) * 42.0
				DrawImageRect(hudcargobalken_img, 25, 85, 3 + tmpt, 48.0)
			EndIf
			
			reset_draw()
			
			DrawImage(HImodul_img, pointx - 48, screeny - 64)
			DrawImage(MIDmodul_img, pointx, screeny - 64)
			DrawImage(LOWmodul_img, pointx + 48, screeny - 64)
			
			
			If player.ship Then
				If player.ship.modulHI Then
					DrawImage(player.ship.modulHI.modulC.tex, pointx - 48, screeny - 64)
				End If
				If player.ship.modulMID Then
					DrawImage(player.ship.modulMID.modulC.tex, pointx, screeny - 64)
				End If
				If player.ship.modulLOW Then
					DrawImage(player.ship.modulLOW.modulC.tex, pointx + 48, screeny - 64)
				End If
			End If
			
			reset_draw()
			
			Tmenu.flycargo()
			
			
			
End Function

