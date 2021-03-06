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
SuperStrict


Type Tobject
	Field name:String, autor:String
	
	Field nullx:Float, nully:Float
	
	Field pixmaplist:TList = CreateList()
	Field objanimlist:TList = CreateList()
End Type
Global nTobj:Tobject = New Tobject

Type Tobjpixmap
	Field Path:String, pix:TPixmap, name:String
	Field img:TImage
End Type
Global nTobjpix:Tobjpixmap

Type Tobjanim
	Field eventname:String
	
	Field Length:Int, playnext:String
	
	Field objanimdata:Tobjanimdata
	Field animdatalist:TList = CreateList()
End Type
Global nTobjanim:Tobjanim


Type Tobjanimdata
	Field pixname:String
	
	Field startat:Int
	
	Field nowx:Float = -9999, nowy:Float = -9999, noww:Float = -9999
	
	Field x:Float, y:Float, w:Float
	Field tox:Float = -9999, toy:Float = -9999, tow:Float = -9999
	
	Field speedw:Float, speedmove:Float
	
	Field hx:Float, hy:Float
	
End Type
Global nTobjanimdata:Tobjanimdata


'Notify("Number of arguments = " + AppArgs.length)
Local found:Int = 0, path:String
For Local a:String = EachIn AppArgs
	If Right(a, 4).ToLower() = ".ros" Then
		found = 1
		path = a
	End If
Next

	If found = 0 Then
		Notify("no compitable data found! drop '.ros' files")
	Else
		Local data:TStream = ReadFile(path)

		Local MSG:String = "", ROW:Int = 0, MODE:Int = 0, VOR:String, HINTER:String
		
		While Not Eof(data)
			ROW = ROW + 1
			MSG = ReadLine(data)
			
			Select MSG
				Case "[OBJECT]"
					MODE = 1
				Case "[PIXMAP]"
					MODE = 2
					nTobjpix = New Tobjpixmap
					nTobj.pixmaplist.AddLast(nTobjpix)
				Case "[ANIMATE]"
					MODE = 3
					nTobjanim = New Tobjanim
					nTobj.objanimlist.AddLast(nTobjanim)
			End Select
			
			If Not MSG.Contains("=") Then Continue
			
			VOR = Left(MSG, MSG.Find("="))
			HINTER = Right(MSG, MSG.Length - (MSG.Find("=") + 1))
			
			Select VOR
				Case "NAME"
					If MODE = 1 Then
						nTobj.name = HINTER
					End If
					If MODE = 2 Then
						nTobjpix.name = HINTER
					End If
				Case "EVENTNAME"
					If MODE = 3 Then
						nTobjanim.eventname = HINTER
					End If
				Case "LENGTH"
					If MODE = 3 Then
						nTobjanim.Length = HINTER.ToInt()
					End If
				Case "NEXT"
					If MODE = 3 Then
						nTobjanim.playnext = HINTER
					End If
				Case "AUTOR"
					If MODE = 1 Then
						nTobj.autor = HINTER
					End If
				Case "NULL.X"
					If MODE = 1 Then
						nTobj.nullx = HINTER.ToFloat()
					End If
				Case "NULL.Y"
					If MODE = 1 Then
						nTobj.nully = HINTER.ToFloat()
					End If
				Case "PATH"
					If MODE = 2 Then
						nTobjpix.Path = HINTER
						nTobjpix.pix = LoadPixmap(nTobjpix.Path)
						If nTobjpix.pix = Null Then Notify("ERROR: line " + ROW + "  >  'image not readable'") ; End
						nTobjpix.img = LoadImage(nTobjpix.pix)
					End If
				Case "USE"
					If MODE = 3 Then
						nTobjanimdata = New Tobjanimdata
						nTobjanim.animdatalist.AddLast(nTobjanimdata)
						nTobjanimdata.pixname = HINTER
					End If
				Case "START"
					If MODE = 3 Then
						If nTobjanimdata <> Null Then
							nTobjanimdata.startat = HINTER.Toint()
						Else
							 Notify("ERROR: line " + ROW + "  >  'USE a image first'") ; End
						End If
					End If
				Case "X"
					If MODE = 3 Then
						If nTobjanimdata <> Null Then
							nTobjanimdata.x = HINTER.ToFloat()
						Else
							 Notify("ERROR: line " + ROW + "  >  'USE a image first'") ; End
						End If
					End If
				Case "Y"
					If MODE = 3 Then
						If nTobjanimdata <> Null Then
							nTobjanimdata.y = HINTER.ToFloat()
						Else
							 Notify("ERROR: line " + ROW + "  >  'USE a image first'") ; End
						End If
					End If
				Case "WINKEL"
					If MODE = 3 Then
						If nTobjanimdata <> Null Then
							nTobjanimdata.w = HINTER.ToFloat()
						Else
							 Notify("ERROR: line " + ROW + "  >  'USE a image first'") ; End
						End If
					End If
				Case "SPEED.WINKEL"
					If MODE = 3 Then
						If nTobjanimdata <> Null Then
							nTobjanimdata.speedw = HINTER.ToFloat()
						Else
							 Notify("ERROR: line " + ROW + "  >  'USE a image first'") ; End
						End If
					End If
				Case "SPEED.MOVE"
					If MODE = 3 Then
						If nTobjanimdata <> Null Then
							nTobjanimdata.speedmove = HINTER.ToFloat()
						Else
							 Notify("ERROR: line " + ROW + "  >  'USE a image first'") ; End
						End If
					End If
				Case "TO.X"
					If MODE = 3 Then
						If nTobjanimdata <> Null Then
							nTobjanimdata.tox = HINTER.ToFloat()
						Else
							 Notify("ERROR: line " + ROW + "  >  'USE a image first'") ; End
						End If
					End If
				Case "TO.Y"
					If MODE = 3 Then
						If nTobjanimdata <> Null Then
							nTobjanimdata.toy = HINTER.ToFloat()
						Else
							 Notify("ERROR: line " + ROW + "  >  'USE a image first'") ; End
						End If
					End If
				Case "TO.WINKEL"
					If MODE = 3 Then
						If nTobjanimdata <> Null Then
							nTobjanimdata.tow = HINTER.ToFloat()
						Else
							 Notify("ERROR: line " + ROW + "  >  'USE a image first'") ; End
						End If
					End If
				Case "HANDLE.X"
					If MODE = 3 Then
						If nTobjanimdata <> Null Then
							nTobjanimdata.hx = HINTER.ToFloat()
						Else
							 Notify("ERROR: line " + ROW + "  >  'USE a image first'") ; End
						End If
					End If
				Case "HANDLE.Y"
					If MODE = 3 Then
						If nTobjanimdata <> Null Then
							nTobjanimdata.hy = HINTER.ToFloat()
						Else
							 Notify("ERROR: line " + ROW + "  >  'USE a image first'") ; End
						End If
					End If
				Default
					Notify("ERROR: line " + ROW + "  >  'no such command'") ; End
			End Select
		Wend
		data.Close()
		
		If nTobj.name.Length = 0 Then Notify("WARNING: in '[OBJECT]'  >  no NAME, no service") ; End
		If nTobj.pixmaplist.Count() = 0 Then Notify("WARNING: in '[OBJECT]'  >  no [PIXMAP], no images?!") ; End
		For Local sTobjpix:Tobjpixmap = EachIn nTobj.pixmaplist
			If sTobjpix.name.Length = 0 Then Notify("WARNING: in '[PIXMAP]'  >  no NAME, no service") ; End
			If sTobjpix.Path.Length = 0 Then Notify("WARNING: in '[PIXMAP]'  >  no PATH, no image") ; End
		Next
		
		
		Local outdata:TStream = WriteFile(nTobj.name + ".cos")
		
		outdata.WriteLine("Diese Datai wurde Autogeneriert! Nicht von Hand ändern! Bei Fehlern in der Datei, diese bitte löschen.")
		outdata.WriteLine("Das veraendern und speichern mit dem Windows Editor zerstoert diese Datei!")
		outdata.WriteLine("(c) Lastmayday")
		outdata.WriteLine(" ")
		
		outdata.WriteLine("[OBJECT]")
		outdata.WriteLine("obj." + "NAME=" + nTobj.name)
		
		If nTobj.autor.Length > 0 Then outdata.WriteLine("obj." + "AUTOR=" + nTobj.autor)
		outdata.WriteLine("obj." + "NULLX=" + nTobj.nullx)
		outdata.WriteLine("obj." + "NULLY=" + nTobj.nully)
		
		
		
		'###################################################################################
		AppTitle = "Animating..."
		Local graph:TGraphics = Graphics(256, 256)
		SetBlend(ALPHABLEND)
		
		Local tmr:TTimer = CreateTimer(40)
		SetClsColor(128, 128, 128)
		Cls
		Flip
		'********************
		For Local rTanim:Tobjanim = EachIn nTobj.objanimlist
			outdata.WriteLine("obj." + "[ANIMATE]")
			outdata.WriteLine("obj." + "EVENTNAME=" + rTanim.eventname)
			outdata.WriteLine("obj." + "LENGTH=" + rTanim.Length)
			outdata.WriteLine("obj." + "NEXT=" + rTanim.playnext)
			
			For Local frame:Int = 0 To rTanim.Length - 1
				outdata.WriteLine("obj." + "[FRAME]")
				Cls
				tmr.Wait()
				For Local rTanimdata:Tobjanimdata = EachIn rTanim.animdatalist
					outdata.WriteLine("obj." + "USE=" + rTanimdata.pixname)
					
					Local imagehandle:TImage
					
					For Local rTobjpixmap:Tobjpixmap = EachIn nTobj.pixmaplist
						If rTobjpixmap.name = rTanimdata.pixname Then imagehandle = rTobjpixmap.img ; Exit
					Next
					
					If rTanimdata.nowx = -9999 Then rTanimdata.nowx = rTanimdata.x
					If rTanimdata.nowy = -9999 Then rTanimdata.nowy = rTanimdata.y
					If rTanimdata.noww = -9999 Then rTanimdata.noww = rTanimdata.w
					
					If rTanimdata.tox = -9999 Then rTanimdata.tox = rTanimdata.x
					If rTanimdata.toy = -9999 Then rTanimdata.toy = rTanimdata.y
					If rTanimdata.tow = -9999 Then rTanimdata.tow = rTanimdata.w
					
					If frame >= rTanimdata.startat Then
						Local winkel:Float = ATan2((rTanimdata.x - rTanimdata.tox), (rTanimdata.y - rTanimdata.toy))
						Local entferung:Float = Sqr((rTanimdata.nowx - rTanimdata.tox) ^ 2 + (rTanimdata.nowy - rTanimdata.toy) ^ 2)
						
						If rTanimdata.speedw <> 0 Then
							rTanimdata.noww = rTanimdata.noww + BufferWinkel(rTanimdata.noww, rTanimdata.tow, rTanimdata.speedw)
						Else
							rTanimdata.noww = rTanimdata.noww + BufferWinkel(rTanimdata.noww, rTanimdata.tow, waywinkel(rTanimdata.w, rTanimdata.tow) / ((rTanim.Length - rTanimdata.startat)))
						EndIf
						If rTanimdata.speedmove > 0 Then
							If entferung > rTanimdata.speedmove Then entferung = rTanimdata.speedmove
						Else
							entferung = entferung / ((rTanim.Length - rTanimdata.startat))
						EndIf
						rTanimdata.nowx = rTanimdata.nowx + Cos(winkel) * entferung
						rTanimdata.nowy = rTanimdata.nowy + Sin(winkel) * entferung
					EndIf
					SetHandle(rTanimdata.hx, rTanimdata.hy)
					SetRotation(rTanimdata.noww)
					DrawPicture(imagehandle, 128 + -nTobj.nullx + rTanimdata.nowx, 128 + -nTobj.nully + rTanimdata.nowy, imagehandle.width, imagehandle.HEIGHT)
					
					outdata.WriteLine("obj." + "X=" + rTanimdata.nowx)
					outdata.WriteLine("obj." + "Y=" + rTanimdata.nowy)
					outdata.WriteLine("obj." + "HX=" + rTanimdata.hx)
					outdata.WriteLine("obj." + "HY=" + rTanimdata.hy)
					outdata.WriteLine("obj." + "W=" + rTanimdata.noww)
				Next
				Flip
			Next
		Next
		'********************
		Flip
		
		graph.Close()
		'###################################################################################
		
		
		For Local rTobjpixmap:Tobjpixmap = EachIn nTobj.pixmaplist
			outdata.WriteLine("obj." + "[IMAGEDATA]")
			
			outdata.WriteLine("obj." + "WIDTH=" + rTobjpixmap.pix.width)
			outdata.WriteLine("obj." + "HEIGHT=" + rTobjpixmap.pix.HEIGHT)
			
			For Local x:Int = 0 To rTobjpixmap.pix.width - 1
				For Local y:Int = 0 To rTobjpixmap.pix.HEIGHT - 1
					outdata.WriteInt(rTobjpixmap.pix.ReadPixel(x, y))
				Next
			Next
			
			outdata.WriteLine("")
			outdata.WriteLine("")
		Next
		
		
		outdata.Close()
		
		Notify("Done! Script is Accepted!")
	EndIf

End


Function DrawPicture(bild:Timage, x:Float, y:Float, width:Float, height:Float)
	Local nowscale_X:Float
	Local nowscale_Y:Float
	GetScale(nowscale_X, nowscale_Y)
	
	Local nowhandle_X:Float
	Local nowhandle_Y:Float
	GetHandle(nowhandle_X, nowhandle_Y)
	
	Local factorx:Float = width / bild.width
	Local factory:Float = height / bild.height

	SetScale(factorx * nowscale_X, factory * nowscale_Y)
	
	'Local entferung:Float = Sqr((nowhandle_X * Sqr((nowscale_X) ^ 2 + (nowscale_Y) ^ 2)) ^ 2 + (nowhandle_Y * Sqr((nowscale_X) ^ 2 + (nowscale_Y) ^ 2)) ^ 2)
	Local entferung:Float = Sqr((nowhandle_X) ^ 2 + (nowhandle_Y) ^ 2)
	Local winkel:Float = -ATan2(nowhandle_X, nowhandle_Y) + 180
	'((nowscale_X + nowscale_Y) / 1)
	DrawImage(bild, x + (Cos(GetRotation() - winkel) * (entferung * nowscale_X)), y + (Sin(GetRotation() - winkel) * (entferung * nowscale_Y)))
	
	SetScale(nowscale_x, nowscale_Y)
End Function

Function BufferWinkel:Float(turmwinkel:Float, zielwinkel:Float, drehspeed:Float)
	Local totalwinkel:Float = turmwinkel - zielwinkel
	While totalwinkel < - 360
		totalwinkel = totalwinkel + 360
	Wend
	While totalwinkel > 360
		totalwinkel = totalwinkel - 360
	Wend
	Local bufftore:Float, test:Int = 0
	If totalwinkel > drehspeed Then bufftore = -drehspeed ; test = 1
	If totalwinkel < - drehspeed Then bufftore = drehspeed ; test = 1
	If test = 0 Then bufftore = -totalwinkel
	Return bufftore
End Function

Function waywinkel:Float(turmwinkel:Float, zielwinkel:Float)
	Local totalwinkel:Float = turmwinkel - zielwinkel
	While totalwinkel < - 180
		totalwinkel = totalwinkel + 360
	Wend
	While totalwinkel > 180
		totalwinkel = totalwinkel - 360
	Wend

	Return totalwinkel
End Function