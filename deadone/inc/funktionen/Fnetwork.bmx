Function StartNetwork:Byte(name:String, password:String, ipstr:String)
	client = New TTCPStream
	If Not client.Init() Then insert("Konnte konnte keinen Socked erstellen.", 255, 100, 100)
	If Not client.SetLocalPort() Then insert("Konnte den Port nicht belegen.", 255, 100, 100)

	If srvExtern = 0 Then
		If client Then client.SetRemoteIP(TNetwork.intIP(ipstr))
	Else
		If client Then client.SetRemoteIP(TNetwork.intIP("62.75.163.103"))
	EndIf
	If client Then
		client.SetRemotePort(8888)
		
		insert("Verbinde . . . ", 100, 255, 100)
		
		client.Flush()
		networkpacketsize = 0
		CleanUP()
		
		If client.Connect() Then
			insert("Erfolgreich", 100, 255, 100)
			
			Local md5password:String = md5(password)
			
			networkactive = True
			client.WriteByte(1 + 1 + version.Length + 1 + name.Length + 1 + md5password.Length) '+++ size
			client.WriteByte(100)
			client.WriteByte(version.Length)
			client.WriteString(version)
			client.WriteByte(name.Length)
			client.WriteString(name)
			client.WriteByte(md5password.Length)
			client.WriteString(md5password)
			
			client.SendMsg()
			
			Return True
		Else
			insert("Konnte keine Verbindung zum Host herstellen.", 255, 100, 100)
		EndIf
	EndIf
End Function


Function DoNetwork()
	If client.GetState() <> 1 Then
		
		client.close()
		client = Null
		networkactive = False
		gamestate = 99
		
		insert("Verbindung wurde unterbrochen.", 255, 100, 100)
		
	Else
		If client.RecvAvail() Then
			client.RecvMsg()
			If client.Size() > 0 Then
				Local networkround:Byte = True
				While networkround
					networkround = False
					If client.Size() >= 1 And networkpacketsize = 0 Then networkpacketsize = client.ReadByte()
					If networkpacketsize <= client.Size() And networkpacketsize > 0 Then
						networkround = True
						networkpacketsize = 0
						'empfangen
						Select client.ReadByte()
						
							'[########                         ########] 
							
							Case 1 'daten für spieler bewegung
								Local id:Short = client.ReadShort()
								If netplayer[id] Then
								
									netplayer[id].last_x = netplayer[id].x
									netplayer[id].last_y = netplayer[id].y
									
									netplayer[id].to_x = client.ReadFloat()
									netplayer[id].to_y = client.ReadFloat()
									netplayer[id].to_r = client.ReadFloat()
									netplayer[id].baseID = client.ReadInt()
									netplayer[id].life = client.ReadFloat()
									netplayer[id].shield = client.ReadFloat()
									
									If netplayer[id].last_time <> time Then
										netplayer[id].last_msc = time - netplayer[id].last_time + msc
										netplayer[id].last_time = time
									EndIf
									
									If netplayer[id].baseID = -1 Then netplayer[id].active = True Else netplayer[id].active = False
									netplayer[id].moveentferung = 0
								Else
									client.ReadFloat()
									client.ReadFloat()
									client.ReadFloat()
									client.ReadInt()
									client.ReadFloat()
									client.ReadFloat()
								EndIf
								
							Case 2 'daten für enemy bewegung
								Local id:Short = client.ReadShort()
								If netenemy[id] Then
									netenemy[id].last_x = netenemy[id].x
									netenemy[id].last_y = netenemy[id].y
									
									netenemy[id].to_x = client.ReadFloat()
									netenemy[id].to_y = client.ReadFloat()
									netenemy[id].to_r = client.ReadFloat()
									netenemy[id].life = client.ReadFloat()
									netenemy[id].shield = client.ReadFloat()
									
									If netenemy[id].last_time <> time Then
										netenemy[id].last_msc = time - netenemy[id].last_time + msc
										netenemy[id].last_time = time
									EndIf
									netenemy[id].active = True
									netenemy[id].moveentferung = 0
								Else
									client.ReadFloat()
									client.ReadFloat()
									client.ReadFloat()
									client.ReadFloat()
									client.ReadFloat()
								EndIf
							Case 3 'neue posi setzen
								player.x = client.ReadFloat()
								player.y = client.ReadFloat()
								player.r = client.ReadFloat()
								player.lstpoly = Null
								player.s = 0
							Case 4 'sich selbst empfangen
								player.id = client.ReadShort()
								player.x = client.ReadFloat()
								player.y = client.ReadFloat()
								player.oldx = player.x
								player.oldy = player.y
								player.r = client.ReadFloat()
								player.s = client.ReadFloat()
								player.baseID = client.ReadInt()
								player.life = client.ReadFloat()
								player.shield = client.ReadFloat()
								player.lstpoly = Null
								
								Local shipid:Short = client.ReadShort()
								player.selectShip(shipid, 0)
								Local ssid:Short = client.ReadShort()
								netship[ssid] = player.ship
								netship[ssid].id = ssid
								player.ship.life = player.life
								
								player.active = True
								player.oldx = player.x
								player.oldy = player.y
								
								Tthruster.list.Clear()
								Tsmoke.list.Clear()
								Tbeam.list.Clear()
								
								player.mapx = client.ReadByte()
								player.mapy = client.ReadByte()
							Case 5 'base
								Local id:Short = client.ReadShort()
								If netbase[id] Then
									netbase[id].x = client.ReadFloat()
									netbase[id].y = client.ReadFloat()
									netbase[id].r = client.ReadFloat()
								Else
									client.ReadFloat()
									client.ReadFloat()
									client.ReadFloat()
								EndIf
							Case 6 'astro
								Local id:Short = client.ReadShort()
								If netastro[id] Then
									netastro[id].x = client.ReadFloat()
									netastro[id].y = client.ReadFloat()
									netastro[id].r = client.ReadFloat()
								Else
									client.ReadFloat()
									client.ReadFloat()
									client.ReadFloat()
								EndIf
							
							'[########                         ########]
							
							Case 13 'cleanup
								Tbase.list.Clear()
								Tbeam.list.Clear()
								Tbeam.astrolist.Clear()
								Tenemy.list.Clear()
								Tplayer.list.Clear()
								Tmodulfire.list.Clear()
								Tbeam.list.Clear()
								Tastro.list.Clear()
								Tpolythrust.list.Clear()
								Tsmoke.list.Clear()
								
								targetship = Null
								targetastro = Null
								
								For Local id:Int = 0 To 65534
									netastro[id] = Null
									netenemy[id] = Null
									netbase[id] = Null
									netplayer[id] = Null
									netship[id] = Null
									netcargo[id] = Null
								Next
								
							Case 14 'selfstatus
								player.baseID = client.ReadInt()
								player.life = client.ReadFloat()
								player.shield = client.ReadFloat()
								If player.ship Then player.ship.life = player.life
								If player.shield Then player.ship.shield = player.shield
								player.active = True
								
							'[########                         ########]
								
							Case 21 'delete player
								Local id:Short = client.ReadShort()
								Local explo:Byte = client.ReadByte()
								If netplayer[id] Then If explo Then Texplosion.Create(netplayer[id].x, netplayer[id].y, netplayer[id].r)
								If netplayer[id] Then Tplayer.list.Remove(netplayer[id]) ; netplayer[id].ship.delme = True ; netship[netplayer[id].ship.id] = Null ; netplayer[id] = Null
							Case 22 'delete enemy
								Local id:Short = client.ReadShort()
								Local explo:Byte = client.ReadByte()
								If netenemy[id] Then If explo Then Texplosion.Create(netenemy[id].x, netenemy[id].y, netenemy[id].r)
								If netenemy[id] Then Tenemy.list.Remove(netenemy[id]) ; netenemy[id].ship.delme = True ;netship[netenemy[id].ship.id] = Null ; netenemy[id] = Null
							Case 25 'delete base
								Local id:Short = client.ReadShort()
								If netbase[id] Then Tbase.list.Remove(netbase[id]) ; netbase[id] = Null
							Case 26 'delete astro
								Local id:Short = client.ReadShort()
								If netastro[id] Then Tastro.list.Remove(netastro[id]) ; netastro[id].delme = True ; netastro[id] = Null
							
							'[########                         ########]
								
							Case 31 'create player
								Local id:Short = client.ReadShort()
								If netplayer[id] = Null Then netplayer[id] = New Tplayer ; Tplayer.list.AddLast(netplayer[id])
								netplayer[id].id = id
								netplayer[id].x = client.ReadFloat()
								netplayer[id].y = client.ReadFloat()
								netplayer[id].r = client.ReadFloat()
								netplayer[id].baseID = client.ReadInt()
								netplayer[id].life = client.ReadFloat()
								netplayer[id].shield = client.ReadFloat()
								
								Local shipid:Short = client.ReadShort()
								netplayer[id].selectShip(shipid, 1)
								Local ssid:Short = client.ReadShort()
								netship[ssid] = netplayer[id].ship
								netship[ssid].id = ssid
								
								netplayer[id].ship.life = netplayer[id].life
								Local lenght:Byte = client.ReadByte()
								netplayer[id].name = client.ReadString(lenght)
								
								netplayer[id].to_x = netplayer[id].x
								netplayer[id].to_y = netplayer[id].y
								netplayer[id].to_r = netplayer[id].r
								
								netship[ssid].x = netplayer[id].x
								netship[ssid].y = netplayer[id].y
								netship[ssid].r = netplayer[id].r
								
								netplayer[id].last_msc = 0
								netplayer[id].last_time = time
								
							Case 32 'create enemy
								Local id:Short = client.ReadShort()
								If netenemy[id] = Null Then netenemy[id] = New Tenemy ; Tenemy.list.AddLast(netenemy[id])
								netenemy[id].id = id
								netenemy[id].x = client.ReadFloat()
								netenemy[id].y = client.ReadFloat()
								netenemy[id].r = client.ReadFloat()
								netenemy[id].life = client.ReadFloat()
								netenemy[id].shield = client.ReadFloat()
								
								Local shipid:Short = client.ReadShort()
								netenemy[id].selectShip(shipid)
								Local ssid:Short = client.ReadShort()
								netship[ssid] = netenemy[id].ship
								netship[ssid].id = ssid
								
								netenemy[id].ship.life = netenemy[id].life
								
								netenemy[id].to_x = netenemy[id].x
								netenemy[id].to_y = netenemy[id].y
								netenemy[id].to_r = netenemy[id].r
								
								netship[ssid].x = netenemy[id].x
								netship[ssid].y = netenemy[id].y
								netship[ssid].r = netenemy[id].r
								
								netenemy[id].last_msc = 0
								netenemy[id].last_time = time
							Case 35 'create base
								Local id:Short = client.ReadShort()
								If netbase[id] = Null Then netbase[id] = New Tbase ; Tbase.list.AddLast(netbase[id])
								netbase[id].id = id
								netbase[id].x = client.ReadFloat()
								netbase[id].y = client.ReadFloat()
								netbase[id].r = client.ReadFloat()
							Case 36 'create astro
								Local id:Short = client.ReadShort()
								If netastro[id] = Null Then netastro[id] = New Tastro ; Tastro.list.AddLast(netastro[id])
								netastro[id].id = id
								netastro[id].x = client.ReadFloat()
								netastro[id].y = client.ReadFloat()
								netastro[id].r = client.ReadFloat()
								
							'[########                         ########]
								
							Case 74 'cargo create
								Local id:Short = client.ReadShort()
								netcargo[id] = New Tcargo
								netcargo[id].id = id
								netcargo[id].maxsize = client.ReadInt()
								
							Case 75 'cargo mit ship verbinden
								Local id:Short = client.ReadShort()
								If netcargo[id] Then
									Local sid:Short = client.ReadShort()
									If netship[sid] Then
										netship[sid].cargo = netcargo[id]
									End If
								Else
									client.ReadShort()
								EndIf
							Case 76 'cargo index loeschen
								Local id:Short = client.ReadShort()
								If netcargo[id] Then netcargo[id].itemlist.Clear()
							Case 77 'cargo item hinzufuegen
								Local id:Short = client.ReadShort()
								If netcargo[id] Then
									Local iiid:Short = client.ReadShort()
									Local menge:Int = client.ReadInt()
									netcargo[id].insertitem(Titem.Create(iiid, menge))
								Else
									client.ReadShort()
									client.ReadInt()
								EndIf
							Case 78 'cargo loeschen
								Local id:Short = client.ReadShort()
								If netcargo[id] Then netcargo[id] = Null
							Case 79 'cargo mit base verbinden
								Local id:Short = client.ReadShort()
								If netcargo[id] Then
									player.basecargo = netcargo[id]
								EndIf
								
								
							Case 100 'eingeloggt
								logedin = 1
							Case 133 'schuss auf ship
								Local fromid:Short = client.ReadShort()
								Local toid:Short = client.ReadShort()
								Local shieldhit:Byte = client.ReadByte()
								Local beam:Tbeam = New Tbeam
								Tbeam.list.AddLast(beam)
								beam.fromship = fromid
								beam.toship = toid
								beam.shieldhit = shieldhit
							Case 134 'schuss auf astro
								Local fromid:Short = client.ReadShort()
								Local toid:Short = client.ReadShort()
								Local beam:Tbeam = New Tbeam
								Tbeam.astrolist.AddLast(beam)
								beam.fromship = fromid
								beam.toastro = toid
								
							'[########                         ########]
								
							Case 144 'build timer
								base_buliderid = client.ReadInt()
								base_buildertimer = client.ReadInt()
							
							'[########                         ########]
							
							Case 150 'worlddata
								Local id:Short = client.ReadShort()
								Local nameleght:Short = client.ReadByte()
								Local name:String = client.ReadString(nameleght)
								world.id = id
								world.name = name
							Case 151 'mapdata
								Local x:Byte = client.ReadByte()
								Local y:Byte = client.ReadByte()
								Local rndwert:Short = client.ReadShort()
								Local base:Byte = client.ReadByte()
								Local astro:Byte = client.ReadByte()
								world.map[x, y].rndwert = rndwert
								world.map[x, y].isbase = base
								world.map[x, y].isastro = astro
							Case 152 'cloudmap
								Local x:Byte = client.ReadByte()
								Local y:Byte = client.ReadByte()
								Tcloud.list.Clear()
								Tstar.downlist.Clear()
								Tstar.toplist.Clear()
								Tcloud.Fillup(world.map[x, y].rndwert)
								Tstar.Fillup()
							
							'[########                         ########]
								
							Case 200 'addmodul HI
								Local netid:Short = client.ReadShort()
								Local modid:Short = client.ReadShort()
								If player And player.ship Then
									player.ship.modulHI = Tmodul.Create(netid, modid, player.ship)
								End If
							Case 201 'addmodul MID
								Local netid:Short = client.ReadShort()
								Local modid:Short = client.ReadShort()
								If player And player.ship Then
									player.ship.modulMID = Tmodul.Create(netid, modid, player.ship)
								End If
							Case 202 'addmodul LOW
								Local netid:Short = client.ReadShort()
								Local modid:Short = client.ReadShort()
								If player And player.ship Then
									player.ship.modulLOW = Tmodul.Create(netid, modid, player.ship)
								End If
							Case 205 'fire modul
								Local fid:Short = client.ReadShort()
								Local tid:Short = client.ReadShort()
								Local moid:Short = client.ReadShort()
								If TmodulCatalog.array[moid] And netship[fid] And netship[tid] Then
									Tmodulfire.Create(TmodulCatalog.array[moid], netship[fid], netship[tid])
								End If
							
							'[########                         ########]
							
							Case 252 'normal msg
								Local lenght:Byte = client.ReadByte()
								Local msg:String = client.ReadString(lenght)
								insert(msg, 255, 255, 255)
							Case 253 'kill msg
								Local lenght:Byte = client.ReadByte()
								Local msg:String = client.ReadString(lenght)
								insert(MSG, 100, 255, 100)
							Case 254 'system msg
								Local lenght:Byte = client.ReadByte()
								Local msg:String = client.ReadString(lenght)
								insert(MSG, 255, 255, 100)
							Case 255 'error msg
								Local lenght:Byte = client.ReadByte()
								Local msg:String = client.ReadString(lenght)
								insert(MSG, 255, 100, 100)
								
							'[########                         ########]
							
						End Select
					EndIf
				Wend
			End If
		EndIf
		
		'senden
		
		sendtimer:+msc
		If sendtimer > 0 Then
			sendtimer:-networkupdatespeed
		
			If player.baseID = -1 And player.active Then
			
				'[### PACK ###] = eigene position senden
				client.WriteByte(1 + 4 + 4 + 4 + 4) '+++ size
				client.WriteByte(4)
				client.WriteFloat(player.x)
				client.WriteFloat(player.y)
				client.WriteFloat(player.r)
				client.WriteFloat(player.s)
				'[###------###]
				
				
				If targetship Then 'target senden
					client.WriteByte(1 + 2 + 1) '+++ size
					client.WriteByte(3)
					client.WriteShort(targetship.id)
					client.WriteByte(targetattack)
				ElseIf targetastro Then
					client.WriteByte(1 + 2 + 1) '+++ size
					client.WriteByte(1)
					client.WriteShort(targetastro.id)
					client.WriteByte(targetattack)
				ElseIf targetship = Null And targetastro = Null
					client.WriteByte(1) '+++ size
					client.WriteByte(2)
				End If
				
				If key_shoot1 And targetship And player.ship.modulHI Then
					client.WriteByte(1) '+++ size
					client.WriteByte(210)
				End If
				If key_shoot2 And targetship And player.ship.modulMID Then
					client.WriteByte(1) '+++ size
					client.WriteByte(211)
				End If
				If key_shoot3 And targetship And player.ship.modulLOW Then
					client.WriteByte(1) '+++ size
					client.WriteByte(212)
				End If
				
				If HR_jump Then
					client.WriteByte(1 + 1 + 1) '+++ size
					client.WriteByte(230)
					client.WriteByte(HR_x)
					client.WriteByte(HR_y)
				End If
				
				HR_jump = False
				key_shoot1 = False
				key_shoot2 = False
				key_shoot3 = False
			EndIf
			
			If player.baseID > - 1 Then
				If key_undock Then
					client.WriteByte(1) '+++ size
					client.WriteByte(30) 'undock
				End If
				If base_movetowarehouse And base_cargo And base_item Then
					client.WriteByte(1 + 2 + 2) '+++ size
					client.WriteByte(32)
					client.WriteShort(base_cargo.id)
					client.WriteShort(base_item.itemC.id)
				End If
				If base_einschmelzen And base_cargo And base_item Then
					client.WriteByte(1 + 2 + 2) '+++ size
					client.WriteByte(31)
					client.WriteShort(base_cargo.id)
					client.WriteShort(base_item.itemC.id)
				End If
				If base_movetoship And base_cargo And base_item Then
					client.WriteByte(1 + 2 + 2) '+++ size
					client.WriteByte(33)
					client.WriteShort(base_cargo.id)
					client.WriteShort(base_item.itemC.id)
				End If
				If base_buildid > - 1 Then
					client.WriteByte(1 + 2) '+++ size
					client.WriteByte(34)
					client.WriteShort(base_buildid)
				End If
				If base_einsteigen And base_item Then
					client.WriteByte(1 + 2) '+++ size
					client.WriteByte(35)
					client.WriteShort(base_item.itemC.id)
				End If
				
				key_undock = 0
				base_einschmelzen = 0
				base_movetowarehouse = 0
				base_movetoship = 0
				base_buildid = -1
				base_einsteigen = 0
				
				HR_jump = False
				key_shoot1 = False
				key_shoot2 = False
				key_shoot3 = False
			EndIf
		EndIf
		
		client.SendMsg()
	EndIf
End Function
