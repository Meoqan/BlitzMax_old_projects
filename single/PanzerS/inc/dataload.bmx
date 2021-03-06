Global MSG:String, MODE:Int, ROW:Int, VOR:String, HINTER:String, WIGHT:Int, HEIGHT:Int, MAP_V:Int, MAP_X:Int, MAP_Y:Int, MAP_L:Int, MAP_PIC:String, MAP_REN:Int, MAP_WALL:Int

Function loadTexData()
	If FileType("gfx\texturen\data.dat") = 0 Then
		'Notify("failed to read 'gfx\texturen\data.dat'") ; End
	Else
		Local data:TStream = OpenFile("gfx\texturen\data.dat")
		
		MSG = "" ; ROW = 0 ; MODE = 0
		Local nTtextur:Ttextur, nTtexgroup:Ttexgroup
		
		While Not Eof(data)
			ROW = ROW + 1
			MSG = ReadLine(data)
			
			Select MSG
				Case "[TEXTUR]"
					MODE = 1
					nTtextur = New Ttextur
					texturlist.AddLast(nTtextur)
				Case "[GROUP]"
					MODE = 2
					nTtexgroup = New Ttexgroup
					texgrouplist.AddLast(nTtexgroup)
			End Select
			
			
			If Not MSG.Contains("=") Then Continue
			
			VOR = Left(MSG, MSG.Find("="))
			HINTER = Right(MSG, MSG.Length - (MSG.Find("=") + 1))
			
			Select VOR
				Case "NAME"
					If MODE = 2 Then
						nTtexgroup.group = HINTER
					End If
				Case "DATEINAME"
					If MODE = 1
						nTtextur.datname = HINTER
					EndIf
				Case "SPEICHERORT"
					If MODE = 1
						nTtextur.speicherort = HINTER
					EndIf
				Case "GRUPPE"
					If MODE = 1
						nTtextur.group = HINTER
					EndIf
				Case "SETTING"
					If MODE = 1
						nTtextur.eingestellt = HINTER.ToInt()
					EndIf
				Case "R"
					If MODE = 1
						nTtextur.r = HINTER.ToInt()
					EndIf
				Case "G"
					If MODE = 1
						nTtextur.g = HINTER.ToInt()
					EndIf
				Case "B"
					If MODE = 1
						nTtextur.b = HINTER.ToInt()
					EndIf
				Case "VERSION"
					If MODE = 1
						nTtextur.version = HINTER.ToInt()
					EndIf
				Case "ALPHA"
					If MODE = 1
						nTtextur.isAlpha = HINTER.ToInt()
					EndIf
				Case "DUST"
					If MODE = 1
						nTtextur.isDust = HINTER.ToInt()
					EndIf
			End Select
			
		Wend
		data.Close()
	EndIf
	
	Local dir:Int = ReadDir("gfx\texturen")

	If Not dir Then Notify("failed to read 'gfx\texturen' directory") ; End
	
	Local ordner:String, imgordner:String
	
	Repeat
		ordner = NextFile(dir)
		If ordner = "" Then Exit
		If ordner = "." Or ordner = ".." Then Continue
		If ordner.Contains(".") Then Continue
		
		Local found:Int = 0
		For Local cTtexgroup:Ttexgroup = EachIn texgrouplist
			If ordner = cTtexgroup.group Then
				found = 1
			EndIf
		Next
		If found = 0 Then
			Local nTtexgroup:Ttexgroup = New Ttexgroup
			texgrouplist.AddLast(nTtexgroup)
			nTtexgroup.group = ordner
		End If
		Local Imgdir:Int = ReadDir("gfx\texturen\" + ordner)
		Repeat
			imgordner = NextFile(Imgdir)
			If imgordner = "" Then Exit
			If imgordner = "." Or imgordner = ".."Then Continue
			If Right(imgordner, 3).ToLower() <> "png" Then Continue
			
			Local found2:Int = 0
			For Local cTextur:Ttextur = EachIn texturlist
				If imgordner = cTextur.datname Then
					found2 = 1
				EndIf
			Next
			If found2 = 0 Then
				Local nTtextur:Ttextur = New Ttextur
				texturlist.AddLast(nTtextur)
				nTtextur.datname = imgordner
				nTtextur.speicherort = "gfx\texturen\" + ordner + "\" + imgordner
				nTtextur.group = ordner
				
				Local bild:TPixmap = LoadPixmap(nTtextur.speicherort)
				bild = ResizePixmap(bild, 32, 32)
				
				Local r:Int = 0, g:Int = 0, b:Int = 0
				For Local x:Int = 0 To 31
					For Local y:Int = 0 To 31
						Local colorm:Int = bild.ReadPixel(x, y)
						r = r + ((colorm Shr 16) & $ff)
						g = g + ((colorm Shr 8) & $ff)
						b = b + ((colorm) & $ff)
					Next
				Next
				bild = Null
				
				nTtextur.r = r / 1024
				nTtextur.g = g / 1024
				nTtextur.b = b / 1024
			End If
		Forever
		CloseDir imgdir
	Forever

	CloseDir dir
	
	For Local cTtexgroup:Ttexgroup = EachIn texgrouplist
		If FileType("gfx\texturen\" + cTtexgroup.group) = 0 Then
			texgrouplist.Remove(cTtexgroup)
		EndIf
	Next
	
	For Local cTextur:Ttextur = EachIn texturlist
		If FileType(cTextur.speicherort) = 0 Then
			texturlist.Remove(cTextur)
		Else
			cTextur.pic = LoadPixmap(cTextur.speicherort)
			cTextur.img = LoadImage(cTextur.speicherort)
			cTextur.img.flags = -1 + cTextur.isAlpha
			
			Local found:Int = 0
			For Local cTtexgroup:Ttexgroup = EachIn texgrouplist
				If cTextur.group = cTtexgroup.group Then
					cTtexgroup.texlist.AddLast(cTextur)
					found = 1
				EndIf
			Next
			If found = 0 Then
				Local nTtexgroup:Ttexgroup = New Ttexgroup
				texgrouplist.AddLast(nTtexgroup)
				nTtexgroup.group = cTextur.group
				nTtexgroup.texlist.AddLast(cTextur)
			End If
		End If
	Next
	
End Function


Function SaveTexDat()
	Local outdata:TStream = WriteFile("gfx\texturen\data.dat")
	
	If outdata Then
		outdata.WriteLine("Diese Datai wurde Autogeneriert! Nicht von Hand ändern! Bei Fehlern in der Datei, diese bitte löschen.")
		outdata.WriteLine("Das veraendern und speichern mit dem Windows Editor zerstoert diese Datei!")
		outdata.WriteLine("(c) Lastmayday")
		outdata.WriteLine(" ")
		
		For Local cTtexgroup:Ttexgroup = EachIn texgrouplist
			If cTtexgroup.group.Find("=") <= 0 Then
				outdata.WriteLine("[GROUP]")
				outdata.WriteLine("NAME=" + cTtexgroup.group)
			EndIf
		Next
		
		For Local cTextur:Ttextur = EachIn texturlist
			If cTextur.group.Find("=") <= 0 Then
				outdata.WriteLine("[TEXTUR]")
				
				outdata.WriteLine("DATEINAME=" + cTextur.datname)
				outdata.WriteLine("SPEICHERORT=" + cTextur.speicherort)
				outdata.WriteLine("GRUPPE=" + cTextur.group)
				
				If cTextur.eingestellt > 0 Then outdata.WriteLine("SETTING=" + cTextur.eingestellt)
				If cTextur.isAlpha > 0 Then outdata.WriteLine("ALPHA=" + cTextur.isAlpha)
				If cTextur.isDust > 0 Then outdata.WriteLine("DUST=" + cTextur.isDust)
				
				outdata.WriteLine("R=" + cTextur.r)
				outdata.WriteLine("G=" + cTextur.g)
				outdata.WriteLine("B=" + cTextur.b)
				
				If cTextur.version > 0 Then outdata.WriteLine("VERSION=" + cTextur.version)
				
			EndIf
		Next
		
		outdata.Close()
	EndIf
End Function


Function SaveMapDat(file:String)
	Local outdata:TStream = WriteFile("maps\temp.dat")
	
	If outdata Then
		outdata.WriteLine("Diese Datai wurde Autogeneriert! Nicht von Hand ändern! Bei Fehlern in der Datei, diese bitte löschen.")
		outdata.WriteLine("(c) Lastmayday")
		outdata.WriteLine(" ")
		
		rem
		For Local cTtexgroup:Ttexgroup = EachIn texgrouplist
			outdata.WriteLine("[GROUP]")
			outdata.WriteLine("NAME=" + cTtexgroup.group)
		Next
		end rem
		Local maptexlist:TList = CreateList()
		
		For Local x:Int = 0 To 999
			For Local y:Int = 0 To 999
				If wallmap[x, y] = 1 Then
					outdata.WriteLine("[WALL]")
					outdata.WriteLine("X=" + x)
					outdata.WriteLine("Y=" + y)
				End If
				If emap[x, y, 0] <> Null Then
					If emap[x, y, 0].isRendert = 0 Then
						If maptexlist.Contains(emap[x, y, 0]) Then
							'notihn
						Else
							maptexlist.AddLast(emap[x, y, 0])
						End If
						outdata.WriteLine("[MAP]")
						outdata.WriteLine("L=" + 0)
						outdata.WriteLine("X=" + x)
						outdata.WriteLine("Y=" + y)
						outdata.WriteLine("V=" + (emap[x, y, 0].version + 1))
						outdata.WriteLine("PIC=" + emap[x, y, 0].speicherort)
					Else
						If maptexlist.Contains(emap[x, y, 0].orginal) Then
							'notihn
						Else
							maptexlist.AddLast(emap[x, y, 0].orginal)
						End If
						outdata.WriteLine("[MAP]")
						outdata.WriteLine("L=" + 0)
						outdata.WriteLine("X=" + x)
						outdata.WriteLine("Y=" + y)
						outdata.WriteLine("REN=" + 1)
						outdata.WriteLine("V=" + (emap[x, y, 0].orginal.version + 1))
						outdata.WriteLine("PIC=" + emap[x, y, 0].orginal.speicherort)
					EndIf
				End If
				If emap[x, y, 1] <> Null Then
					If emap[x, y, 1].isRendert = 0 Then
						If maptexlist.Contains(emap[x, y, 1]) Then
							'notihn
						Else
							maptexlist.AddLast(emap[x, y, 1])
						End If
						outdata.WriteLine("[MAP]")
						outdata.WriteLine("L=" + 1)
						outdata.WriteLine("X=" + x)
						outdata.WriteLine("Y=" + y)
						outdata.WriteLine("V=" + (emap[x, y, 1].version + 1))
						outdata.WriteLine("PIC=" + emap[x, y, 1].speicherort)
					Else
						If maptexlist.Contains(emap[x, y, 1].orginal) Then
							'notihn
						Else
							maptexlist.AddLast(emap[x, y, 1].orginal)
						End If
						outdata.WriteLine("[MAP]")
						outdata.WriteLine("L=" + 1)
						outdata.WriteLine("X=" + x)
						outdata.WriteLine("Y=" + y)
						outdata.WriteLine("REN=" + 1)
						outdata.WriteLine("V=" + (emap[x, y, 1].orginal.version + 1))
						outdata.WriteLine("PIC=" + emap[x, y, 1].orginal.speicherort)
					EndIf
				End If
				If emap[x, y, 2] <> Null Then
					If emap[x, y, 0].isRendert = 0 Then
						If maptexlist.Contains(emap[x, y, 2]) Then
							'notihn
						Else
							maptexlist.AddLast(emap[x, y, 2])
						End If
						outdata.WriteLine("[MAP]")
						outdata.WriteLine("L=" + 2)
						outdata.WriteLine("X=" + x)
						outdata.WriteLine("Y=" + y)
						outdata.WriteLine("V=" + (emap[x, y, 2].version + 1))
						outdata.WriteLine("PIC=" + emap[x, y, 2].speicherort)
					Else
						If maptexlist.Contains(emap[x, y, 2].orginal) Then
							'notihn
						Else
							maptexlist.AddLast(emap[x, y, 2].orginal)
						End If
						outdata.WriteLine("[MAP]")
						outdata.WriteLine("L=" + 2)
						outdata.WriteLine("X=" + x)
						outdata.WriteLine("Y=" + y)
						outdata.WriteLine("REN=" + 1)
						outdata.WriteLine("V=" + (emap[x, y, 2].orginal.version + 1))
						outdata.WriteLine("PIC=" + emap[x, y, 2].orginal.speicherort)
					EndIf
				End If
			Next
		Next
		
		For Local cTextur:Ttextur = EachIn maptexlist
			outdata.WriteLine("[TEXTUR]")
			
			outdata.WriteLine("DATEINAME=" + cTextur.datname)
			outdata.WriteLine("SPEICHERORT=" + cTextur.speicherort)
			If cTextur.group.Find("=") <= 0 Then
				outdata.WriteLine("GRUPPE=" + cTextur.group)
			Else
				outdata.WriteLine("GRUPPE=" + Right(cTextur.group, cTextur.group.Length - (cTextur.group.Find("=") + 1)))
			EndIf
			
			If cTextur.eingestellt > 0 Then outdata.WriteLine("SETTING=" + cTextur.eingestellt)
			If cTextur.isAlpha > 0 Then outdata.WriteLine("ALPHA=" + cTextur.isAlpha)
			If cTextur.isDust > 0 Then outdata.WriteLine("DUST=" + cTextur.isDust)
			
			outdata.WriteLine("R=" + cTextur.r)
			outdata.WriteLine("G=" + cTextur.g)
			outdata.WriteLine("B=" + cTextur.b)
			
			outdata.WriteLine("VERSION=" + (cTextur.version + 1))
			
			outdata.WriteLine("[IMAGEDATA]")
			
			outdata.WriteLine("WIDTH=" + cTextur.pic.width)
			outdata.WriteLine("HEIGHT=" + cTextur.pic.HEIGHT)
			
			For Local x:Int = 0 To cTextur.pic.width - 1
				For Local y:Int = 0 To cTextur.pic.HEIGHT - 1
					outdata.WriteInt(cTextur.pic.ReadPixel(x, y))
				Next
			Next
			
			outdata.WriteLine("")
			outdata.WriteLine("")
		Next
		
		For Local tt:Ttanktex = EachIn maptanktexlist
			'If tt.isMapload = 1 Then
				outdata.WriteLine("[TT]")
				outdata.WriteLine("tt." + "NAME=" + tt.name)
				outdata.WriteLine("tt." + "MODELNAME=" + tt.modelname)
				
				outdata.WriteLine("tt." + "WIDTH=" + tt.pixmap.width)
				outdata.WriteLine("tt." + "HEIGHT=" + tt.pixmap.HEIGHT)
				
				For Local x:Int = 0 To tt.pixmap.width - 1
					For Local y:Int = 0 To tt.pixmap.HEIGHT - 1
						outdata.WriteInt(tt.pixmap.ReadPixel(x, y))
					Next
				Next
				outdata.WriteLine("")
				outdata.WriteLine("")
			'EndIf
		Next
		
		For Local ts:Ttankscript = EachIn maptankscriptlist
			'If ts.isMapload = 1 Then
				outdata.WriteLine("[TS]")
				For Local lrow:Int = 0 To 199
					If ts.data[lrow].Length > 0 Then outdata.WriteLine("ts." + ts.data[lrow])
				Next
			'EndIf
		Next
		
		For Local dts:Tdrawtankscript = EachIn mapdrawstankcriptlist
			'If dts.isMapload = 1 Then
				outdata.WriteLine("[DTS]")
				For Local lrow:Int = 0 To 499
					If dts.data[lrow].Length > 0 Then outdata.WriteLine("dts." + dts.data[lrow])
				Next
			'EndIf
		Next
		
		For Local ot:Tobjtex = EachIn mapobjtexlist
			'If ot.isMapload = 1 Then
				outdata.WriteLine("[OT]")
				outdata.WriteLine("ot." + "NAME=" + ot.name)
				
				outdata.WriteLine("ot." + "WIDTH=" + ot.pixmap.width)
				outdata.WriteLine("ot." + "HEIGHT=" + ot.pixmap.HEIGHT)
				
				For Local x:Int = 0 To ot.pixmap.width - 1
					For Local y:Int = 0 To ot.pixmap.HEIGHT - 1
						outdata.WriteInt(ot.pixmap.ReadPixel(x, y))
					Next
				Next
				outdata.WriteLine("")
				outdata.WriteLine("")
			'EndIf
		Next
		
		For Local dos:Tdrawobjscript = EachIn mapdrawobjscriptlist
			'If dos.isMapload = 1 Then
				outdata.WriteLine("[DOS]")
				For Local lrow:Int = 0 To 499
					If dos.data[lrow].Length > 0 Then outdata.WriteLine("dos." + dos.data[lrow])
				Next
			'EndIf
		Next
		
		For Local sTway:Twaypoint = EachIn waypointlist
			outdata.WriteLine("[WAYPOINT]")
			outdata.WriteLine("WPSIZE=" + sTway.size)
			outdata.WriteLine("WPX=" + sTway.x)
			outdata.WriteLine("WPY=" + sTway.y)
			outdata.WriteLine("WPNAME=" + sTway.name)
			For sTway.otherWP = EachIn sTway.otherlist
				outdata.WriteLine("WPOTH=" + sTway.otherWP.name)
			Next
			For Local x:Int = 0 To 199
				If sTway.script[x].Length > 0 Then
					outdata.WriteLine("WPSCRIPT=" + sTway.script[x])
				EndIf
			Next
		Next
		
		For Local x:Int = 0 To 39
			For Local y:Int = 0 To 39
				For Local mapobject:Tmapobject = EachIn objectmap[x, y]
					outdata.WriteLine("[OBJECT]")
					outdata.WriteLine("OBJNAME=" + mapobject.name)
					outdata.WriteLine("OBJX=" + mapobject.dox)
					outdata.WriteLine("OBJY=" + mapobject.doy)
				Next
			Next
		Next
		
		outdata.WriteLine("[GLOBAL]")
		For Local x:Int = 0 To 499
			If mapscript[x].Length > 0 Then
				outdata.WriteLine("GLOBALSCRIPT=" + mapscript[x])
			EndIf
		Next
		
		outdata.Close()
		Compressfile("maps\temp.dat", file)
		Notify("Save done!")
	EndIf
	
	If FileType("maps\temp.dat") Then DeleteFile("maps\temp.dat")
End Function

Global loadmapdatatmr:Int

Function loadMapData(file:String, editor:Int = 1)
	If FileType(file) = 0 Then
		Notify("failed to read '" + file + "'")
	Else
		UnCompressfile(file, "maps\temp.dat")
		
		Local data:TStream = OpenFile("maps\temp.dat")
		
		For Local x:Int = 0 To 999
			For Local y:Int = 0 To 999
				emap[x, y, 0] = Null
				emap[x, y, 1] = Null
				emap[x, y, 2] = Null
				wallmap[x, y] = 0
			Next
		Next
		
		For Local x:Int = 0 To 499
			mapscript[x] = ""
		Next
		
		maptankscriptlist.Clear()
		mapdrawstankcriptlist.Clear()
		mapdrawtanklist.Clear()
		maptanklist.Clear()
		
		For Local sTextur:Ttextur = EachIn texturlist
			If sTextur.group.Find("=") > 0 Then texturlist.Remove(sTextur)
		Next
		For Local cTtexgroup:Ttexgroup = EachIn texgrouplist
			If cTtexgroup.group.Find("=") > 0 Then texgrouplist.Remove(cTtexgroup)
		Next
		
		waypointlist.Clear()
		mapobjtexlist.Clear()
		mapdrawobjscriptlist.Clear()
		mapobjectlist.Clear()
		
		For Local x:Int = 0 To 39
			For Local y:Int = 0 To 39
				objectmap[x, y].Clear()
			Next
		Next
		
		MSG = "" ; ROW = 0 ; MODE = 0 ; WIGHT = 0 ; HEIGHT = 0
		maptexturlist.Clear()
		maptexgrouplist.Clear()
		Local nTtextur:Ttextur, nTtexgroup:Ttexgroup, smap:String[1000, 1000, 3], vmap:String[1000, 1000], renmap:Byte[1000, 1000, 3]
		Local UTtextur:Ttextur
		Local nTway:Twaypoint
		
		Local otobjtex:Tobjtex, dosdrawobjscript:Tdrawobjscript, nTmapobject:Tmapobject
		Local mapobjectlist_ACTIVATE:TList = CreateList(), objectlist_ACTIVATE:TList = CreateList()
		
		Local ttwidth:Int, ttHEIGHT:Int, tttanktex:Ttanktex
		Local tstankscript:Ttankscript, dtsdrawtankscript:Tdrawtankscript
		Local tspos:Int = -1, tsnames:String[50]
		
		While Not Eof(data)
			ROW = ROW + 1
			MSG = ReadLine(data)
			
			If editor = 0 And loadmapdatatmr < MilliSecs() - 25 Then
				loadmapdatatmr = MilliSecs()
				SetColor(255, 255, 255)
				SetRotation(0)
				SetHandle(0, 0)
				SetScale(1, 1)
				SetAlpha(1)
				Local weit:Int = (Float(data.Pos()) / Float(data.Size())) * 80.0
				For Local x:Int = 0 To weit
					DrawImage(loadb, Screenmitte[0] - 400 + (x * 10), Screenmitte[1] + 285)
				Next
				Flip
			EndIf
			
			Select MSG
				Case "[TEXTUR]"
					MODE = 1
					UTtextur = Null
					nTtextur = New Ttextur
					texturlist.AddLast(nTtextur)
				Case "[GROUP]"
					MODE = 2
					nTtexgroup = New Ttexgroup
					texgrouplist.AddLast(nTtexgroup)
				Case "[IMAGEDATA]"
					MODE = 3
					UTtextur = nTtextur
				Case "[MAP]"
					MODE = 4
				Case "[WALL]"
					MODE = 5
				Case "[WAYPOINT]"
					MODE = 6
					nTway = New Twaypoint
					waypointlist.AddLast(nTway)
				Case "[TT]"
					MODE = 7
					tttanktex = New Ttanktex
					maptanktexlist.AddLast(tttanktex)
				Case "[TS]"
					MODE = 8
					tstankscript = New Ttankscript
					maptankscriptlist.AddLast(tstankscript)

					tspos = tspos + 1
				Case "[DTS]"
					MODE = 9
					dtsdrawtankscript = New Tdrawtankscript
					mapdrawstankcriptlist.AddLast(dtsdrawtankscript)
				Case "[OT]"
					MODE = 10
					otobjtex = New Tobjtex
					mapobjtexlist.AddLast(otobjtex)
				Case "[DOS]"
					MODE = 11
					dosdrawobjscript = New Tdrawobjscript
					mapdrawobjscriptlist.AddLast(dosdrawobjscript)
					objectlist_ACTIVATE.AddLast(dosdrawobjscript)
				Case "[OBJECT]"
					MODE = 12
					nTmapobject = New Tmapobject
					mapobjectlist_ACTIVATE.AddLast(nTmapobject)
				Case "[GLOBAL]"
					MODE = 13
			End Select
			
			If MODE = 11 Then
				If Left(MSG, 4) = "dos." Then
					MSG = Right(MSG, MSG.Length - 4)
					
					dosdrawobjscript.insert(MSG)
					
					Continue
				EndIf
			End If
			
			If MODE = 10 Then
				If Left(MSG, 3) = "ot." Then
					MSG = Right(MSG, MSG.Length - 3)
					
					If Not MSG.Contains("=") Then Continue
					
					VOR = Left(MSG, MSG.Find("="))
					HINTER = Right(MSG, MSG.Length - (MSG.Find("=") + 1))
					
					Select VOR
						Case "NAME"
							otobjtex.name = HINTER
							
						Case "WIDTH"
							ttwidth = HINTER.ToInt()
						Case "HEIGHT"
							ttHEIGHT = HINTER.ToInt()
					End Select
					
					If ttwidth > 0 And ttHEIGHT > 0 Then
						
						otobjtex.pixmap = CreatePixmap(ttwidth, ttHEIGHT, PF_RGBA8888)
						For Local x:Int = 0 To ttwidth - 1
							For Local y:Int = 0 To ttHEIGHT - 1
								otobjtex.pixmap.WritePixel(x, y, data.ReadInt())
								
							Next
						Next
						otobjtex.image = LoadImage(otobjtex.pixmap)
						
						ttwidth = 0
						ttHEIGHT = 0
					EndIf
					
					Continue
				EndIf
			End If
			
			
			
			If MODE = 9 Then
				If Left(MSG, 4) = "dts." Then
					MSG = Right(MSG, MSG.Length - 4)
					
					dtsdrawtankscript.insert(MSG)
					
					Continue
				EndIf
			End If
			
			If MODE = 8 Then
				If Left(MSG, 3) = "ts." Then
					MSG = Right(MSG, MSG.Length - 3)
					
					tstankscript.insert(MSG)
					If tstankscript.name.Length > 0 Then tsnames[tspos] = tstankscript.name
					Continue
				EndIf
			End If
			
			
			
			If MODE = 7 Then
				If Left(MSG, 3) = "tt." Then
					MSG = Right(MSG, MSG.Length - 3)
					
					If Not MSG.Contains("=") Then Continue
					
					VOR = Left(MSG, MSG.Find("="))
					HINTER = Right(MSG, MSG.Length - (MSG.Find("=") + 1))
					
					Select VOR
						Case "NAME"
							tttanktex.name = HINTER
						Case "MODELNAME"
							tttanktex.modelname = HINTER
						Case "WIDTH"
							ttwidth = HINTER.ToInt()
						Case "HEIGHT"
							ttHEIGHT = HINTER.ToInt()
					End Select
					
					If ttwidth > 0 And ttHEIGHT > 0 Then
						
						tttanktex.pixmap = CreatePixmap(ttwidth, ttHEIGHT, PF_RGBA8888)
						For Local x:Int = 0 To ttwidth - 1
							For Local y:Int = 0 To ttHEIGHT - 1
								tttanktex.pixmap.WritePixel(x, y, data.ReadInt())
								
							Next
						Next
						tttanktex.image = LoadImage(tttanktex.pixmap)
						
						ttwidth = 0
						ttHEIGHT = 0
					EndIf
					
					Continue
				EndIf
			End If
			
			If Not MSG.Contains("=") Then Continue
			
			VOR = Left(MSG, MSG.Find("="))
			HINTER = Right(MSG, MSG.Length - (MSG.Find("=") + 1))
			
			Select VOR
				Case "GLOBALSCRIPT"
					If MODE = 13 Then
						For Local x:Int = 0 To 499
							If mapscript[x].Length = 0 Then mapscript[x] = HINTER ; Exit
						Next
					End If
				Case "OBJNAME"
					If MODE = 12 Then
						nTmapobject.name = HINTER
					End If
				Case "OBJX"
					If MODE = 12 Then
						nTmapobject.dox = HINTER.ToFloat()
					End If
				Case "OBJY"
					If MODE = 12 Then
						nTmapobject.doy = HINTER.ToFloat()
					End If
				Case "WPSIZE"
					If MODE = 6 Then
						nTway.size = HINTER.ToInt()
					End If
				Case "WPX"
					If MODE = 6 Then
						nTway.x = HINTER.ToFloat()
					End If
				Case "WPY"
					If MODE = 6 Then
						nTway.Y = HINTER.ToFloat()
					End If
				Case "WPNAME"
					If MODE = 6 Then
						nTway.name = HINTER
					End If
				Case "WPOTH"
					If MODE = 6 Then
						For Local x:Int = 0 To 15
							If nTway.othernames[x].Length = 0 Then nTway.othernames[x] = HINTER ; Exit
						Next
					End If
				Case "WPSCRIPT"
					If MODE = 6 Then
						For Local x:Int = 0 To 199
							If nTway.script[x].Length = 0 Then nTway.script[x] = HINTER ; Exit
						Next
					End If
				Case "GLOBALSCRIPT"
					If MODE = 13 Then
						For Local x:Int = 0 To 499
							If mapscript[x].Length = 0 Then mapscript[x] = HINTER ; Exit
						Next
					End If
				Case "X"
					If MODE = 4 Then
						MAP_X = HINTER.ToInt()
					End If
					If MODE = 5 Then
						MAP_WALL = HINTER.ToInt()
					End If
				Case "Y"
					If MODE = 4 Then
						MAP_Y = HINTER.ToInt()
					End If
					If MODE = 5 Then
						wallmap[MAP_WALL, HINTER.ToInt()] = 1
						MAP_WALL = 0
					End If
				Case "L"
					If MODE = 4 Then
						MAP_L = HINTER.ToInt()
					End If
				Case "V"
					If MODE = 4 Then
						MAP_V = HINTER.ToInt()
					End If
				Case "REN"
					If MODE = 4 Then
						MAP_REN = HINTER.ToInt()
					End If
				Case "PIC"
					If MODE = 4 Then
						MAP_PIC = HINTER
						smap[MAP_X, MAP_Y, MAP_L] = MAP_PIC
						vmap[MAP_X, MAP_Y] = MAP_V
						renmap[MAP_X, MAP_Y, MAP_L] = MAP_REN
						MAP_REN = 0
					End If
				Case "WIDTH"
					If MODE = 3 Then
						WIGHT = HINTER.ToInt()
					End If
				Case "HEIGHT"
					If MODE = 3 Then
						HEIGHT = HINTER.ToInt()
					End If
				Case "NAME"
					If MODE = 2 Then
						nTtexgroup.group = HINTER
					End If
				Case "DATEINAME"
					If MODE = 1
						nTtextur.datname = HINTER
					EndIf
				Case "SPEICHERORT"
					If MODE = 1
						nTtextur.speicherort = HINTER
					EndIf
				Case "GRUPPE"
					If MODE = 1
						nTtextur.group = "MAP=" + HINTER
					EndIf
				Case "SETTING"
					If MODE = 1
						nTtextur.eingestellt = HINTER.ToInt()
					EndIf
				Case "R"
					If MODE = 1
						nTtextur.r = HINTER.ToInt()
					EndIf
				Case "G"
					If MODE = 1
						nTtextur.g = HINTER.ToInt()
					EndIf
				Case "B"
					If MODE = 1
						nTtextur.b = HINTER.ToInt()
					EndIf
				Case "VERSION"
					If MODE = 1
						nTtextur.version = HINTER.ToInt()
					EndIf
				Case "ALPHA"
					If MODE = 1
						nTtextur.isAlpha = HINTER.ToInt()
					EndIf
				Case "DUST"
					If MODE = 1
						nTtextur.isDust = HINTER.ToInt()
					EndIf
			End Select
			
			If WIGHT > 0 And HEIGHT > 0 Then
				Local datacount:Int = WIGHT * HEIGHT
				Local imagedat:Int[datacount + 1]
				For Local x:Int = 0 To datacount
					imagedat[x] = data.ReadInt()
				Next
				UTtextur.pic = CreatePixmap(WIGHT, HEIGHT, PF_RGBA8888)
				Local x2:Int = 0
				For Local x:Int = 0 To WIGHT - 1
					For Local y:Int = 0 To HEIGHT - 1
						 UTtextur.pic.WritePixel(x, y, imagedat[x2])
						 x2 = x2 + 1
					Next
				Next
				UTtextur.img = LoadImage(UTtextur.pic)
				'UTtextur.img.flags = -1 + UTtextur.isAlpha
				WIGHT = 0
				HEIGHT = 0
			EndIf
			
		Wend
		data.Close()
		
		For Local aTdrawobjscript:Tdrawobjscript = EachIn objectlist_ACTIVATE
			Local nTobject:Tobject = New Tobject
			mapobjectlist.AddLast(nTobject)
			nTobject.cname = aTdrawobjscript.name
			nTobject.Setup(nTobject.cname)
		Next
		
		For Local aTmapobject:Tmapobject = EachIn mapobjectlist_ACTIVATE
			aTmapobject.setup(aTmapobject.name)
			Local setx:Int = (aTmapobject.dox / 32.0) / 40.0
			Local sety:Int = (aTmapobject.doy / 32.0) / 40.0
			If setx < 0 Then setx = 0
			If setx > 39 Then setx = 39
			If sety < 0 Then sety = 0
			If sety > 39 Then sety = 39
			objectmap[setx, sety].AddLast(aTmapobject)
		Next
		
		For Local x:Int = 0 To 49
			If tsnames[x].Length > 0 Then
				Local drawtank:Tdrawtank = New Tdrawtank
				mapdrawtanklist.AddLast(drawtank)
				drawtank.Setup(tsnames[x])
				drawtank.ActivateTex()
				
				Local tank:Ttank = New Ttank
				tank.Setup(tsnames[x])
				maptanklist.AddLast(tank)
			EndIf
		Next
		
		For Local sTway:Twaypoint = EachIn waypointlist
			For Local x:Int = 0 To 15
				If sTway.othernames[x].Length > 0 Then
					For Local fTway:Twaypoint = EachIn waypointlist
						If sTway.othernames[x] = fTway.name Then sTway.otherlist.AddLast(fTway)
					Next
				EndIf
			Next
		Next
		
		For Local sTextur:Ttextur = EachIn texturlist
			If sTextur.group.Find("=") > 0 Then
				Local checksame:Int = 0, sametex:Ttextur
				If editor = 1
					For Local vTextur:Ttextur = EachIn texturlist
						If vTextur.group.Find("=") > 0 Then
						
						Else
							If sTextur.speicherort = vTextur.speicherort Then
								If sTextur <> vTextur Then
									Local founddiff:Int = 0
									If vTextur.pic.HEIGHT = sTextur.pic.HEIGHT And vTextur.pic.width = sTextur.pic.width Then
										For Local x:Int = 0 To vTextur.pic.width - 1
											For Local y:Int = 0 To vTextur.pic.HEIGHT - 1
												If vTextur.pic.ReadPixel(x, y) <> sTextur.pic.ReadPixel(x, y) Then
													founddiff = 1
												EndIf
											Next
										Next
									Else
										founddiff = 1
									EndIf
									If founddiff = 0 Then
										checksame = 1
										sametex = vTextur
									Else
										sTextur.beforeTex = vTextur
									End If
								End If
							EndIf
						EndIf
					Next
				EndIf
			
				For Local x:Int = 0 To 999
					For Local y:Int = 0 To 999
						'If smap[x, y, 0].Length > 0 Then
							If sTextur.speicherort = smap[x, y, 0] And sTextur.version = vmap[x, y] Then
								If checksame = 1 Then
									emap[x, y, 0] = sametex
								Else
									emap[x, y, 0] = sTextur
								End If
							EndIf
							If sTextur.speicherort = smap[x, y, 1] And sTextur.version = vmap[x, y] Then
								If checksame = 1 Then
									emap[x, y, 1] = sametex
								Else
									emap[x, y, 1] = sTextur
								End If
							EndIf
							If sTextur.speicherort = smap[x, y, 2] And sTextur.version = vmap[x, y] Then
								If checksame = 1 Then
									emap[x, y, 2] = sametex
								Else
									emap[x, y, 2] = sTextur
								End If
							EndIf
						'EndIf
					Next
				Next
				
				Local found:Int = 0
				For Local cTtexgroup:Ttexgroup = EachIn texgrouplist
					If sTextur.group = cTtexgroup.group Then
						If checksame = 0 Then
							cTtexgroup.texlist.addlast(sTextur)
						EndIf
						found = 1
					EndIf
				Next
				If found = 0 Then
					Local nTtexgroup:Ttexgroup = New Ttexgroup
					texgrouplist.AddLast(nTtexgroup)
					nTtexgroup.group = sTextur.group
					If checksame = 0 Then
						nTtexgroup.texlist.AddLast(sTextur)
					EndIf
				End If
			EndIf
		Next
		
		For Local cTtexgroup:Ttexgroup = EachIn texgrouplist
			If cTtexgroup.texlist.Count() = 0 Then
				 texgrouplist.Remove(cTtexgroup)
			EndIf
		Next
		If editor = 1 Then
			For Local cTextur:Ttextur = EachIn texturlist
				If FileType(cTextur.speicherort) = 0 Then
					If FileType("gfx\texturen" + Right(cTextur.group, cTextur.group.Length - (cTextur.group.Find("=") + 1))) = 0 Then
						CreateDir("gfx\texturen" + Right(cTextur.group, cTextur.group.Length - (cTextur.group.Find("=") + 1)))
					EndIf
					If FileType("gfx\texturen" + Right(cTextur.group, cTextur.group.Length - (cTextur.group.Find("=") + 1))) = 2 Then
						SavePixmapPNG(cTextur.pic, cTextur.speicherort, 0)
					EndIf
					rem
				Else
					Local found:Int = 0
					For Local cTtexgroup:Ttexgroup = EachIn texgrouplist
						If cTextur.group = cTtexgroup.group Then
							cTtexgroup.texlist.AddLast(cTextur)
							found = 1
						EndIf
					Next
					If found = 0 Then
						Local nTtexgroup:Ttexgroup = New Ttexgroup
						texgrouplist.AddLast(nTtexgroup)
						nTtexgroup.group = cTextur.group
						nTtexgroup.texlist.AddLast(cTextur)
					End If
					end rem
				EndIf
			Next
		EndIf
		
		For Local x:Int = 0 To 999
			For Local y:Int = 0 To 999
				For Local l:Int = 0 To 2
					If renmap[x, y, l] = 1 Then
						renderTile(x, y, l)
					End If
				Next
			Next
		Next
		
		If editor = 1 Then Notify("Load Done!")
	EndIf
	If FileType("maps\temp.dat") Then DeleteFile("maps\temp.dat")
End Function


Function reloadTexData()

	Local maptexlist:TList = CreateList()
	For Local x:Int = 0 To 999
		For Local y:Int = 0 To 999
			If emap[x, y, 0] <> Null Then
				If emap[x, y, 0].isRendert = 0 Then
					If maptexlist.Contains(emap[x, y, 0]) Then
						'notihn
					Else
						maptexlist.AddLast(emap[x, y, 0])
						If emap[x, y, 0].group.Find("=") > 0 Then
							
						Else
							emap[x, y, 0].group = "OLD=" + emap[x, y, 0].group
						End If
					End If
				Else
					If maptexlist.Contains(emap[x, y, 0].orginal) Then
						'notihn
					Else
						maptexlist.AddLast(emap[x, y, 0].orginal)
						If emap[x, y, 0].orginal.group.Find("=") > 0 Then
							
						Else
							emap[x, y, 0].orginal.group = "OLD=" + emap[x, y, 0].orginal.group
						End If
					End If
				EndIf
			End If
			If emap[x, y, 1] <> Null Then
				If emap[x, y, 1].isRendert = 0 Then
					If maptexlist.Contains(emap[x, y, 1]) Then
						'notihn
					Else
						maptexlist.AddLast(emap[x, y, 1])
						If emap[x, y, 1].group.Find("=") > 0 Then
							
						Else
							emap[x, y, 1].group = "OLD=" + emap[x, y, 1].group
						End If
					End If
				Else
					If maptexlist.Contains(emap[x, y, 1].orginal) Then
						'notihn
					Else
						maptexlist.AddLast(emap[x, y, 1].orginal)
						If emap[x, y, 1].orginal.group.Find("=") > 0 Then
							
						Else
							emap[x, y, 1].orginal.group = "OLD=" + emap[x, y, 1].orginal.group
						End If
					End If
				EndIf
			End If
			If emap[x, y, 2] <> Null Then
				If emap[x, y, 2].isRendert = 0 Then
					If maptexlist.Contains(emap[x, y, 2]) Then
						'notihn
					Else
						maptexlist.AddLast(emap[x, y, 2])
						If emap[x, y, 2].group.Find("=") > 0 Then
							
						Else
							emap[x, y, 2].group = "OLD=" + emap[x, y, 2].group
						End If
					End If
				Else
					If maptexlist.Contains(emap[x, y, 2].orginal) Then
						'notihn
					Else
						maptexlist.AddLast(emap[x, y, 2].orginal)
						If emap[x, y, 2].orginal.group.Find("=") > 0 Then
							
						Else
							emap[x, y, 2].orginal.group = "OLD=" + emap[x, y, 2].orginal.group
						End If
					End If
				EndIf
			End If
		Next
	Next

	Local dir:Int = ReadDir("gfx\texturen")

	If Not dir Then Notify("failed to read 'gfx\texturen' directory") ; End
	
	Local ordner:String, imgordner:String
	
	Repeat
		ordner = NextFile(dir)
		If ordner = "" Then Exit
		If ordner = "." Or ordner = ".." Then Continue
		If ordner.Contains(".") Then Continue
		
		Local found:Int = 0
		For Local cTtexgroup:Ttexgroup = EachIn texgrouplist
			If ordner = cTtexgroup.group Then
				found = 1
			EndIf
		Next
		If found = 0 Then
			Local nTtexgroup:Ttexgroup = New Ttexgroup
			texgrouplist.AddLast(nTtexgroup)
			nTtexgroup.group = ordner
		End If
		Local Imgdir:Int = ReadDir("gfx\texturen\" + ordner)
		Repeat
			imgordner = NextFile(Imgdir)
			If imgordner = "" Then Exit
			If imgordner = "." Or imgordner = ".."Then Continue
			If Right(imgordner, 3).ToLower() <> "png" Then Continue
			
			Local found2:Int = 0
			For Local cTextur:Ttextur = EachIn texturlist
				If cTextur.group.Find("=") > 0 Then
			
				Else
					If imgordner = cTextur.datname Then
						found2 = 1
					EndIf
				EndIf
			Next
			If found2 = 0 Then
				Local nTtextur:Ttextur = New Ttextur
				texturlist.AddLast(nTtextur)
				nTtextur.datname = imgordner
				nTtextur.speicherort = "gfx\texturen\" + ordner + "\" + imgordner
				nTtextur.group = ordner
				
				Local bild:TPixmap = LoadPixmap(nTtextur.speicherort)
				bild = ResizePixmap(bild, 32, 32)
				
				Local r:Int = 0, g:Int = 0, b:Int = 0
				For Local x:Int = 0 To 31
					For Local y:Int = 0 To 31
						Local colorm:Int = bild.ReadPixel(x, y)
						r = r + ((colorm Shr 16) & $ff)
						g = g + ((colorm Shr 8) & $ff)
						b = b + ((colorm) & $ff)
					Next
				Next
				bild = Null
				
				nTtextur.r = r / 1024
				nTtextur.g = g / 1024
				nTtextur.b = b / 1024
			End If
		Forever
		CloseDir imgdir
	Forever

	CloseDir dir
	
	For Local cTtexgroup:Ttexgroup = EachIn texgrouplist
		If cTtexgroup.group.Find("=") > 0 Then
			
		Else
			For cTtexgroup.texlink = EachIn cTtexgroup.texlist
				If cTtexgroup.texlink.group.Find("=") > 0 Then
					cTtexgroup.texlist.Remove(cTtexgroup.texlink)
				End If
			Next
			If FileType("gfx\texturen\" + cTtexgroup.group) = 0 Then
				texgrouplist.Remove(cTtexgroup)
			EndIf
		EndIf
	Next
	
	For Local cTextur:Ttextur = EachIn texturlist
		If cTextur.group.Find("=") > 0 Then
			
		Else
			If FileType(cTextur.speicherort) = 0 Then
				texturlist.Remove(cTextur)
			Else
				cTextur.pic = Null
				cTextur.img = Null
				cTextur.pic = LoadPixmap(cTextur.speicherort)
				cTextur.img = LoadImage(cTextur.speicherort)
				cTextur.img.flags = -1 + cTextur.isAlpha
			End If
		End If
	Next
	
	For Local sTextur:Ttextur = EachIn texturlist
			If sTextur.group.Find("=") > 0 Then
				Local checksame:Int = 0, sametex:Ttextur
				For Local vTextur:Ttextur = EachIn texturlist
					If vTextur.group.Find("=") > 0 Then
					
					Else
						If sTextur.speicherort = vTextur.speicherort Then
							If sTextur <> vTextur Then
								Local founddiff:Int = 0
								If vTextur.pic.HEIGHT = sTextur.pic.HEIGHT And vTextur.pic.width = sTextur.pic.width Then
									For Local x:Int = 0 To vTextur.pic.width - 1
										For Local y:Int = 0 To vTextur.pic.HEIGHT - 1
											If vTextur.pic.ReadPixel(x, y) <> sTextur.pic.ReadPixel(x, y) Then
												founddiff = 1
											EndIf
										Next
									Next
								Else
									founddiff = 1
								EndIf
								If founddiff = 0 Then
									checksame = 1
									sametex = vTextur
								Else
									sTextur.beforeTex = vTextur
									
									For Local cTtexgroup:Ttexgroup = EachIn texgrouplist
										If vTextur.group = cTtexgroup.group Then
											cTtexgroup.texlist.addlast(vTextur)
										EndIf
									Next
									
								End If
							End If
						EndIf
					EndIf
				Next
			
				If checksame = 1 Then
					For Local x:Int = 0 To 999
						For Local y:Int = 0 To 999
							If emap[x, y, 0] = sTextur Then
								emap[x, y, 0] = sametex
							End If
							If emap[x, y, 1] = sTextur Then
								emap[x, y, 1] = sametex
							End If
							If emap[x, y, 2] = sTextur Then
								emap[x, y, 2] = sametex
							End If
						Next
					Next
				EndIf
				
				Local found:Int = 0
				For Local cTtexgroup:Ttexgroup = EachIn texgrouplist
					If sTextur.group = cTtexgroup.group Then
						If checksame = 0 Then
							cTtexgroup.texlist.addlast(sTextur)
						EndIf
						found = 1
					EndIf
				Next
				If found = 0 Then
					Local nTtexgroup:Ttexgroup = New Ttexgroup
					texgrouplist.AddLast(nTtexgroup)
					nTtexgroup.group = sTextur.group
					If checksame = 0 Then
						nTtexgroup.texlist.AddLast(sTextur)
					EndIf
				End If
			EndIf
		Next
		
		For Local cTtexgroup:Ttexgroup = EachIn texgrouplist
			If cTtexgroup.texlist.Count() = 0 Then
				 texgrouplist.Remove(cTtexgroup)
			EndIf
		Next
End Function





