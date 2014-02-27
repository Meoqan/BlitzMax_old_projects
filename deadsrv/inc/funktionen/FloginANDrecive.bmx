Function login(slot:Tslot)
	Select slot.client.ReadByte()
		
		Case 100 'einloggen
			Local lenghtv:Byte = slot.client.ReadByte()
			If slot.client.Size() < lenghtv Then
				slot.close = 1 ; Print("invalid versionstring lenght.")
			Else
				Local str:String = slot.client.ReadString(lenghtv)
				
				If str = version Then
				
					Local lenght:Byte = slot.client.ReadByte()
					If slot.client.Size() < lenght Then
						slot.close = 1 ; Print("invalid namestring lenght.")
					Else
						Local name:String = slot.client.ReadString(lenght)
						If lenght >= 3 Then
							Local lenghtpas:Byte = slot.client.ReadByte()
							If slot.client.Size() < lenghtpas Then
								slot.close = 1 ; Print("invalid passwortstring lenght.")
							Else
								Local password:String = slot.client.ReadString(lenghtpas)
								If lenghtpas >= 3 Then
									
									Local ply:Splayerindex = Splayerindex.check(name, password)
									If ply Then
										slot.player = New Splayer
										Splayer.list.AddLast(slot.player)
										slot.player.client = slot.client
										
										slot.player.id = Splayer.ids ;Splayer.ids:+1
										
										slot.player.spi = ply
										
										slot.player.name = name
										
										Print("Player is known as " + slot.player.name + ".")
										
										For Local playerx:Splayer = EachIn Splayer.list
											If playerx <> slot.player And playerx.client Then
												send_sysmsg("Spieler " + slot.player.name + " tritt dem Spiel bei.", playerx.client)
											EndIf
										Next
										
										'[### PACK ###] = login bestaetigen
										slot.client.WriteByte(1) '+++ size
										slot.client.WriteByte(100)
										'[###------###]
										
										slot.player.active = True
										slot.player.dropinbase(0, ply.dateiname)
										slot.player.sendbasecargocreate()
										slot.player.basecargo.sendupdate(slot.client)
										slot.player.ship.cargo.sendupdate(slot.client)
									Else
										Local plx:Splayerindex = Splayerindex.Create(name, password)
										If plx Then
											slot.player = New Splayer
											Splayer.list.AddLast(slot.player)
											slot.player.client = slot.client
											
											slot.player.id = Splayer.ids ;Splayer.ids:+1
											
											slot.player.spi = plx
											
											slot.player.name = name
											
											Print("Player is known as " + slot.player.name + ".")
											
											For Local playerx:Splayer = EachIn Splayer.list
												If playerx <> slot.player And playerx.client Then
													send_sysmsg("Spieler " + slot.player.name + " tritt dem Spiel bei.", playerx.client)
												EndIf
											Next
											
											'[### PACK ###] = login bestaetigen
											slot.client.WriteByte(1) '+++ size
											slot.client.WriteByte(100)
											'[###------###]
											
											slot.player.active = True
											slot.player.dropinbase(0)
											
											slot.player.sendbasecargocreate()
											slot.player.basecargo.sendupdate(slot.client)
											slot.player.ship.cargo.sendupdate(slot.client)
											
											send_sysmsg("Neuen Account erstellt!", slot.client)
											
											saveplayer(slot.player.spi.dateiname, slot.player)
										Else
											send_errmsg("Falsches Passwort.", slot.client)
											slot.close = 1
										End If
									End If
								Else
									send_errmsg("Ungültige Passwortlänge", slot.client)
									slot.close = 1
								EndIf
							EndIf
						Else
							send_errmsg("Ungültige Namenslänge", slot.client)
							slot.close = 1
						EndIf
					EndIf
				Else
					send_errmsg("Ungültige Version: " + version, slot.client)
					slot.close = 1
				End If
			EndIf
	End Select
End Function
'[### PACK ###] = login bestaetigen
'[###------###]


Function resive(slot:Tslot)
	Select slot.client.ReadByte()
		Case 1 'target
			Local id:Short = slot.client.ReadShort()
			If snetastro[id] Then slot.player.targetastro = snetastro[id]
			slot.player.shot = slot.client.ReadByte()
			slot.player.target = Null
		Case 2 'target entfernen
			slot.player.target = Null
			slot.player.shot = False
			slot.player.targetastro = Null
		Case 3 'target
			Local id:Short = slot.client.ReadShort()
			If snetship[id] Then slot.player.target = snetship[id]
			slot.player.shot = slot.client.ReadByte()
			slot.player.targetastro = Null
		Case 4 'selbst
			slot.player.last_x = slot.player.x
			slot.player.last_y = slot.player.y
										
			slot.player.to_x = slot.client.ReadFloat()
			slot.player.to_y = slot.client.ReadFloat()
			slot.player.to_r = slot.client.ReadFloat()
			slot.player.s = slot.client.ReadFloat()
			'slot.player.rs = slot.client.ReadFloat()
			
			slot.player.last_msc = time - slot.player.last_time + msc
			slot.player.last_time = time
			slot.player.moveentferung = 0
		Case 30 'undock
			If slot.player.base Then
				slot.player.r = slot.player.base.r
				slot.player.s = 15
				slot.player.x = slot.player.base.x + Cos(slot.player.base.r - 90) * 128
				slot.player.y = slot.player.base.y + Sin(slot.player.base.r - 90) * 128
				slot.player.baseID = -1
				slot.player.base = Null
				slot.player.sendselfnewpos()
			EndIf
		Case 31 'einschmelzen
			Local cid:Short = slot.client.ReadShort()
			Local iid:Short = slot.client.ReadShort()
			If snetcargo[cid] Then
				Local item:Sitem = snetcargo[cid].finditem(iid)
				
				If item Then
					Select iid
						Case 0 'erz zu metal
							snetcargo[cid].removeitem(item)
							slot.player.basecargo.additem(1, item.menge)
							
							send_sysmsg("Es wurden " + item.menge + "x " + item.para.name + " eingeschmolzen und in den Lagerraum gebracht.", slot.client)
					End Select
				Else
					send_sysmsg("Konnte das Item " + SitemCatalog.array[iid].para.name + " nicht finden.", slot.client)
				End If
				snetcargo[cid].sendupdate(slot.player.client)
				slot.player.basecargo.sendupdate(slot.player.client)
			EndIf
		Case 32 'von schiff nach lager
			Local sid:Short = slot.client.ReadShort()
			Local iid:Short = slot.client.ReadShort()
			If snetcargo[sid] Then
				Local item:Sitem = snetcargo[sid].finditem(iid)
				
				If item Then
					snetcargo[sid].removeitem(item)
					slot.player.basecargo.additem(item.itemC.id, item.menge)
					send_sysmsg("Es wurden " + item.menge + "x " + item.para.name + " in den Lagerraum gebracht.", slot.client)
				Else
					send_sysmsg("Konnte das Item " + SitemCatalog.array[iid].para.name + " nicht finden.", slot.client)
				End If
				
				snetcargo[sid].sendupdate(slot.player.client)
				slot.player.basecargo.sendupdate(slot.player.client)
			EndIf
		Case 33 'von lager nach schiff
			Local sid:Short = slot.client.ReadShort()
			Local iid:Short = slot.client.ReadShort()
			If snetcargo[sid] Then
				Local item:Sitem = slot.player.basecargo.finditem(iid)
				
				If item Then
					Local free:Int = snetcargo[sid].getspace()
					If free > 0 Then
						If free >= item.para.size Then
							If free < item.stacksize Then
								Local stueck:Int = free / item.para.size
								item.menge:-stueck
								snetcargo[sid].additem(item.itemC.id, stueck)
								send_sysmsg("Es wurden " + stueck + "x " + item.para.name + " in den Frachtraum gebracht.", slot.client)
							Else
								slot.player.basecargo.removeitem(item)
								snetcargo[sid].additem(item.itemC.id, item.menge)
								send_sysmsg("Es wurden " + item.menge + "x " + item.para.name + " in den Frachtraum gebracht.", slot.client)
							End If
						Else
							send_sysmsg("Das Item " + item.para.name + " ist zu groß für Ihr Schiff.", slot.client)
						EndIf
					EndIf
				Else
					send_sysmsg("Konnte das Item " + SitemCatalog.array[iid].para.name + " nicht finden.", slot.client)
				End If
				
				slot.player.basecargo.sendupdate(slot.player.client)
				snetcargo[sid].sendupdate(slot.player.client)
			EndIf
		Case 34 'schiff bauen
			Local sid:Short = slot.client.ReadShort()
			If SitemCatalog.array[sid] And SitemCatalog.array[sid].para.shipid > - 1 Then
				If slot.player.baseshipbulding = -1 Then
					Local isokay:Byte = True
					
					Local item1:Sitem
					Local item2:Sitem
					Local item3:Sitem
					Local item4:Sitem
					Local x:Int
					
					If SitemCatalog.array[sid].para.needitemid1 > - 1 Then item1 = slot.player.basecargo.finditem(SitemCatalog.array[sid].para.needitemid1)
					If SitemCatalog.array[sid].para.needitemid2 > - 1 Then item2 = slot.player.basecargo.finditem(SitemCatalog.array[sid].para.needitemid2)
					If SitemCatalog.array[sid].para.needitemid3 > - 1 Then item3 = slot.player.basecargo.finditem(SitemCatalog.array[sid].para.needitemid3)
					If SitemCatalog.array[sid].para.needitemid4 > - 1 Then item4 = slot.player.basecargo.finditem(SitemCatalog.array[sid].para.needitemid4)
					
					If SitemCatalog.array[sid].para.needitemid1 > - 1 Then If item1 And item1.menge >= SitemCatalog.array[sid].para.needitemamount1 Then x:+1 Else isokay = False
					If SitemCatalog.array[sid].para.needitemid2 > - 1 Then If item2 And item2.menge >= SitemCatalog.array[sid].para.needitemamount2 Then x:+1 Else isokay = False
					If SitemCatalog.array[sid].para.needitemid3 > - 1 Then If item3 And item3.menge >= SitemCatalog.array[sid].para.needitemamount3 Then x:+1 Else isokay = False
					If SitemCatalog.array[sid].para.needitemid4 > - 1 Then If item4 And item4.menge >= SitemCatalog.array[sid].para.needitemamount4 Then x:+1 Else isokay = False
					
					If isokay Then
						If item1 And item1.menge = SitemCatalog.array[sid].para.needitemamount1 Then
							slot.player.basecargo.removeitem(item1)
						Else
							If item1 Then item1.menge:-SitemCatalog.array[sid].para.needitemamount1
							If item1 Then item1.stacksize = item1.menge * item1.para.size
						EndIf
						If item2 And item2.menge = SitemCatalog.array[sid].para.needitemamount2 Then
							slot.player.basecargo.removeitem(item2)
						Else
							If item2 Then item2.menge:-SitemCatalog.array[sid].para.needitemamount2
							If item2 Then item2.stacksize = item2.menge * item2.para.size
						EndIf
						If item3 And item3.menge = SitemCatalog.array[sid].para.needitemamount3 Then
							slot.player.basecargo.removeitem(item3)
						Else
							If item3 Then item3.menge:-SitemCatalog.array[sid].para.needitemamount3
							If item3 Then item3.stacksize = item3.menge * item3.para.size
						EndIf
						If item4 And item4.menge = SitemCatalog.array[sid].para.needitemamount4 Then
							slot.player.basecargo.removeitem(item4)
						Else
							If item4 Then item4.menge:-SitemCatalog.array[sid].para.needitemamount4
							If item4 Then item4.stacksize = item4.menge * item4.para.size
						EndIf
						
						slot.player.baseshipbulding = sid
						
						slot.player.basecargo.sendupdate(slot.client)
						
						send_sysmsg("Es wird nun " + SitemCatalog.array[sid].para.name + " gebaut. Bitte haben sie etwas geduld.", slot.client)
					Else
						send_sysmsg("Konnte das Item " + SitemCatalog.array[sid].para.name + " nicht bauen. Es fehlen noch Bauteile.", slot.client)
					End If
				Else
					send_sysmsg("Es wird berreits gebaut.", slot.client)
				End If
			Else
				send_sysmsg("Konnte den Bauplan nicht finden.", slot.client)
			EndIf
		Case 35 'in schiff einsteigen
			Local iid:Short = slot.client.ReadShort()
			If slot.player.basecargo Then
				Local item:Sitem = slot.player.basecargo.finditem(iid)
				If item Then
					If slot.player.ship.para.itemid <> item.itemC.id Then
						slot.player.basecargo.additem(slot.player.ship.para.itemid, 1)
						For Local items:Sitem = EachIn slot.player.ship.cargo.itemlist
							slot.player.basecargo.additem(items.itemC.id, items.menge)
						Next
						slot.player.ship = Sship.Create(item.para.shipid, slot.player)
						slot.player.ship.cargo = Scargo.Create(slot.player.ship.para.maxcargo)
						slot.player.shipID = item.para.shipid
						
						If item.menge = 1 Then slot.player.basecargo.removeitem(item) Else item.menge:-1 ; item.stacksize = item.menge * item.para.size
						
						slot.player.sendselfupdate()
						slot.player.ship.cargo.sendcreate(slot.client)
						slot.player.ship.cargo.sendrelate(slot.client, slot.player.ship)
						
						slot.player.basecargo.sendupdate(slot.client)
						
						send_sysmsg("Sie haben das Raumschiff erfolgreich gewechselt. Sie fliegen nun: " + slot.player.ship.para.name, slot.client)
					Else
						send_sysmsg("Das ist das gleiche Schiff in dem Sie berreits sitzen.", slot.client)
					EndIf
				Else
					send_sysmsg("Konnte das Raumschiff nicht finden.", slot.client)
				End If
			End If
		Case 210 'schiff feuert HI
			If slot.player And slot.player.ship And slot.player.ship.modulHI And slot.player.target Then
				If Smodulfire.Create(slot.player.ship.modulHI, slot.player.ship, slot.player.target) Then
					For Local player:Splayer = EachIn slot.player.visionlist
						player.client.WriteByte(1 + 2 + 2 + 2) '+++ size
						player.client.WriteByte(205)
						player.client.WriteShort(slot.player.ship.id)
						player.client.WriteShort(slot.player.target.id)
						player.client.WriteShort(slot.player.ship.modulHI.modulC.id)
					Next
					slot.client.WriteByte(1 + 2 + 2 + 2) '+++ size
					slot.client.WriteByte(205)
					slot.client.WriteShort(slot.player.ship.id)
					slot.client.WriteShort(slot.player.target.id)
					slot.client.WriteShort(slot.player.ship.modulHI.modulC.id)
				End If
			End If
		Case 211 'schiff feuert MID
			If slot.player And slot.player.ship And slot.player.ship.modulMID And slot.player.target Then
				If Smodulfire.Create(slot.player.ship.modulMID, slot.player.ship, slot.player.target) Then
					For Local player:Splayer = EachIn slot.player.visionlist
						player.client.WriteByte(1 + 2 + 2 + 2) '+++ size
						player.client.WriteByte(205)
						player.client.WriteShort(slot.player.ship.id)
						player.client.WriteShort(slot.player.target.id)
						player.client.WriteShort(slot.player.ship.modulMID.modulC.id)
					Next
					slot.client.WriteByte(1 + 2 + 2 + 2) '+++ size
					slot.client.WriteByte(205)
					slot.client.WriteShort(slot.player.ship.id)
					slot.client.WriteShort(slot.player.target.id)
					slot.client.WriteShort(slot.player.ship.modulMID.modulC.id)
				End If
			End If
		Case 212 'schiff feuert LOW
			If slot.player And slot.player.ship And slot.player.ship.modulLOW And slot.player.target Then
				If Smodulfire.Create(slot.player.ship.modulLOW, slot.player.ship, slot.player.target) Then
					For Local player:Splayer = EachIn slot.player.visionlist
						player.client.WriteByte(1 + 2 + 2 + 2) '+++ size
						player.client.WriteByte(205)
						player.client.WriteShort(slot.player.ship.id)
						player.client.WriteShort(slot.player.target.id)
						player.client.WriteShort(slot.player.ship.modulLOW.modulC.id)
					Next
					slot.client.WriteByte(1 + 2 + 2 + 2) '+++ size
					slot.client.WriteByte(205)
					slot.client.WriteShort(slot.player.ship.id)
					slot.client.WriteShort(slot.player.target.id)
					slot.client.WriteShort(slot.player.ship.modulLOW.modulC.id)
				End If
			End If
		Case 230 'hyperraumzu
			Local tx:Byte = slot.client.ReadByte()
			Local ty:Byte = slot.client.ReadByte()
			If slot.player.inmap.myx = tx And slot.player.inmap.myy = ty Then
				send_errmsg("Ihr seid berreits an diesem Ort.", slot.client)
			Else
				If tx < 50 And ty < 50 Then
					send_sysmsg("Hyperraumsprung eingeleitet. Sprung in 5 sekunden.", slot.client)
					slot.player.targetmap = slot.player.inworld.maps[tx, ty] ; slot.player.jumptime = 0
				EndIf
			End If
	End Select
End Function

Function send_sysmsg(msgstr:String, client:TTCPStream)
	client.WriteByte(1 + 1 + msgstr.Length) '+++ size
	client.WriteByte(254)
	client.WriteByte(msgstr.Length)
	client.WriteString(msgstr)
End Function

Function send_errmsg(msgstr:String, client:TTCPStream)
	client.WriteByte(1 + 1 + msgstr.Length) '+++ size
	client.WriteByte(255)
	client.WriteByte(msgstr.Length)
	client.WriteString(msgstr)
End Function