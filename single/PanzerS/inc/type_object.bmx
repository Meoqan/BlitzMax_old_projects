
Type Tmapobjanimdat
	
	Field nowx:Float = -9999, nowy:Float = -9999, noww:Float = -9999

	Field uTanimdata:Tobjanimdata
End Type

Type Tmapobject
	Field name:String
	
	Field dox:Float, doy:Float
	
	Field uTobject:Tobject
	Field uTobjanim:Tobjanim
	
	Field uTmapobjanimdat:Tmapobjanimdat
	Field mapobjanimdat:TList = CreateList()
	
	Field frame:Int
	
	'botsmart
	Field seelist:TList = CreateList()
	
	Method setanim(play:String)
		frame = 0
		Local found:Int = 0
		For uTobject.objanim = EachIn uTobject.objanimlist
			If uTobject.objanim.eventname = play Then uTobjanim = uTobject.objanim ; found = 1 ; Exit
		Next
		If found = 0 Then
			Notify("ERROR: no anim found. > " + uTobject.cname)
			End
		End If
		mapobjanimdat.Clear()
		For uTobjanim.objanimdata = EachIn uTobjanim.animdatalist
			uTmapobjanimdat = New Tmapobjanimdat
			mapobjanimdat.AddLast(uTmapobjanimdat)
			uTmapobjanimdat.uTanimdata = uTobjanim.objanimdata
		Next
	End Method
	
	Method setup(usename:String)
		Local found:Int = 0
		For Local sTobject:Tobject = EachIn mapobjectlist
			If sTobject.cname = usename Then
				name = usename
				uTobject = sTobject
				Local found2:Int = 0
				For sTobject.objanim = EachIn sTobject.objanimlist
					If sTobject.playonIDLE = sTobject.objanim.eventname Then
						uTobjanim = sTobject.objanim
						found2 = 1
						Exit
					EndIf
				Next
				If found2 = 0 Then
					Notify("ERROR: no anim found. > " + uTobject.cname)
					End
				End If
				mapobjanimdat.Clear()
				For uTobjanim.objanimdata = EachIn uTobjanim.animdatalist
					uTmapobjanimdat = New Tmapobjanimdat
					mapobjanimdat.AddLast(uTmapobjanimdat)
					uTmapobjanimdat.uTanimdata = uTobjanim.objanimdata
				Next
				
				found = 1
			End If
		Next
		If found = 0 Then Notify("ERROR: no object found " + usename) ; End
	End Method
	
	Method draw()
		frame = frame + 1
		If frame > uTobjanim.Length Then
			frame = 0
			Local found:Int = 0
			For uTobject.objanim = EachIn uTobject.objanimlist
				If uTobject.objanim.eventname = uTobjanim.playnext Then uTobjanim = uTobject.objanim ; found = 1 ; Exit
			Next
			If found = 0 Then
				For uTobject.objanim = EachIn uTobject.objanimlist
					uTobjanim = uTobject.objanim
					Exit
				Next
			End If
			mapobjanimdat.Clear()
			For uTobjanim.objanimdata = EachIn uTobjanim.animdatalist
				uTmapobjanimdat = New Tmapobjanimdat
				mapobjanimdat.AddLast(uTmapobjanimdat)
				uTmapobjanimdat.uTanimdata = uTobjanim.objanimdata
			Next
			
		EndIf
		
		For uTmapobjanimdat = EachIn mapobjanimdat
			If uTmapobjanimdat.nowx <= - 9998 Then uTmapobjanimdat.nowx = uTmapobjanimdat.uTanimdata.x
			If uTmapobjanimdat.nowy <= - 9998 Then uTmapobjanimdat.nowy = uTmapobjanimdat.uTanimdata.y
			If uTmapobjanimdat.noww <= - 9998 Then uTmapobjanimdat.noww = uTmapobjanimdat.uTanimdata.w
					
			If uTmapobjanimdat.uTanimdata.tox <= - 9998 Then uTmapobjanimdat.uTanimdata.tox = uTmapobjanimdat.uTanimdata.x
			If uTmapobjanimdat.uTanimdata.toy <= - 9998 Then uTmapobjanimdat.uTanimdata.toy = uTmapobjanimdat.uTanimdata.y
			If uTmapobjanimdat.uTanimdata.tow <= - 9998 Then uTmapobjanimdat.uTanimdata.tow = uTmapobjanimdat.uTanimdata.w
			
			If uTmapobjanimdat.uTanimdata.wi <= - 9998 Then uTmapobjanimdat.uTanimdata.wi = uTmapobjanimdat.uTanimdata.objtex.image.width
			If uTmapobjanimdat.uTanimdata.he <= - 9998 Then uTmapobjanimdat.uTanimdata.he = uTmapobjanimdat.uTanimdata.objtex.image.height
			
			If frame >= uTmapobjanimdat.uTanimdata.startat Then
				Local winkel:Float = ATan2((uTmapobjanimdat.uTanimdata.x - uTmapobjanimdat.uTanimdata.tox), (uTmapobjanimdat.uTanimdata.y - uTmapobjanimdat.uTanimdata.toy))
				Local entferung:Float = Sqr((uTmapobjanimdat.nowx - uTmapobjanimdat.uTanimdata.tox) ^ 2 + (uTmapobjanimdat.nowy - uTmapobjanimdat.uTanimdata.toy) ^ 2)
					
				If uTmapobjanimdat.uTanimdata.speedw <> 0 Then
					uTmapobjanimdat.noww = uTmapobjanimdat.noww + uTmapobjanimdat.uTanimdata.speedw
				Else
					uTmapobjanimdat.noww = uTmapobjanimdat.noww - BufferWinkel(uTmapobjanimdat.noww, uTmapobjanimdat.uTanimdata.tow, waywinkel(uTmapobjanimdat.uTanimdata.w, uTmapobjanimdat.uTanimdata.tow) / ((uTobject.objanim.Length - uTmapobjanimdat.uTanimdata.startat)))
				EndIf
				If uTmapobjanimdat.uTanimdata.speedmove > 0 Then
					If entferung > uTmapobjanimdat.uTanimdata.speedmove Then entferung = uTmapobjanimdat.uTanimdata.speedmove
				Else
					entferung = entferung / ((uTobject.objanim.Length - uTmapobjanimdat.uTanimdata.startat))
				EndIf
				uTmapobjanimdat.nowx = uTmapobjanimdat.nowx + Cos(winkel) * entferung
				uTmapobjanimdat.nowy = uTmapobjanimdat.nowy + Sin(winkel) * entferung
			EndIf
			SetHandle(uTmapobjanimdat.uTanimdata.hx, uTmapobjanimdat.uTanimdata.hy)
			SetRotation(uTmapobjanimdat.noww)
			DrawPicture(uTmapobjanimdat.uTanimdata.objtex.image, (dox + -uTobject.nullx + uTmapobjanimdat.nowx) - gVx, (doy + -uTobject.nully + uTmapobjanimdat.nowy) - gVy, uTmapobjanimdat.uTanimdata.wi, uTmapobjanimdat.uTanimdata.he)
		Next
		
		For uTobjanim.emitterdata = EachIn uTobjanim.emitterdatalist
			If uTobjanim.emitterdata.flags = 0 Then
				uTobjanim.emitterdata.Createemitter(frame, dox + -uTobject.nullx + uTmapobjanimdat.nowx, doy + -uTobject.nully + uTmapobjanimdat.nowy)
			Else
				If frame >= uTobjanim.emitterdata.startat And frame <= uTobjanim.emitterdata.endat Then
					Local this:Int = Rnd(0, (uTobjanim.emitterdata.every * 100)) / 100.0
					If this = 0 Then
						If uTobjanim.emitterdata.flags = 1 Then
							Createfire(dox + -uTobject.nullx + uTmapobjanimdat.nowx + uTobjanim.emitterdata.x, doy + -uTobject.nully + uTmapobjanimdat.nowy + uTobjanim.emitterdata.y, 32, uTobjanim.emitterdata.w, uTobjanim.emitterdata.speed, uTobjanim.emitterdata.dauer)
						ElseIf uTobjanim.emitterdata.flags = 2 Then
							CreateFunken(dox + -uTobject.nullx + uTmapobjanimdat.nowx + uTobjanim.emitterdata.x, doy + -uTobject.nully + uTmapobjanimdat.nowy + uTobjanim.emitterdata.y, uTobjanim.emitterdata.speed, uTobjanim.emitterdata.w)
						ElseIf uTobjanim.emitterdata.flags = 3 Then
							CreateSmoke(dox + -uTobject.nullx + uTmapobjanimdat.nowx + uTobjanim.emitterdata.x, doy + -uTobject.nully + uTmapobjanimdat.nowy + uTobjanim.emitterdata.y, 32, uTobjanim.emitterdata.w, uTobjanim.emitterdata.speed, uTobjanim.emitterdata.dauer)
						ElseIf uTobjanim.emitterdata.flags = 4 Then
							addglow(dox + -uTobject.nullx + uTmapobjanimdat.nowx + uTobjanim.emitterdata.x, doy + -uTobject.nully + uTmapobjanimdat.nowy + uTobjanim.emitterdata.y, 128, uTobjanim.emitterdata.dauer, 255, 255, 64)
						EndIf
					EndIf
				EndIf
			End If
			
		Next
		
	End Method
	
	
	Method notdraw()
		frame = frame + 1
		If frame > uTobjanim.Length Then
			frame = 0
			Local found:Int = 0
			For uTobject.objanim = EachIn uTobject.objanimlist
				If uTobject.objanim.eventname = uTobjanim.playnext Then uTobjanim = uTobject.objanim ; found = 1 ; Exit
			Next
			If found = 0 Then
				For uTobject.objanim = EachIn uTobject.objanimlist
					uTobjanim = uTobject.objanim
					Exit
				Next
			End If
			mapobjanimdat.Clear()
			For uTobjanim.objanimdata = EachIn uTobjanim.animdatalist
				uTmapobjanimdat = New Tmapobjanimdat
				mapobjanimdat.AddLast(uTmapobjanimdat)
				uTmapobjanimdat.uTanimdata = uTobjanim.objanimdata
			Next
			
		EndIf
		
		For uTmapobjanimdat = EachIn mapobjanimdat
			If uTmapobjanimdat.nowx <= - 9998 Then uTmapobjanimdat.nowx = uTmapobjanimdat.uTanimdata.x
			If uTmapobjanimdat.nowy <= - 9998 Then uTmapobjanimdat.nowy = uTmapobjanimdat.uTanimdata.y
			If uTmapobjanimdat.noww <= - 9998 Then uTmapobjanimdat.noww = uTmapobjanimdat.uTanimdata.w
					
			If uTmapobjanimdat.uTanimdata.tox <= - 9998 Then uTmapobjanimdat.uTanimdata.tox = uTmapobjanimdat.uTanimdata.x
			If uTmapobjanimdat.uTanimdata.toy <= - 9998 Then uTmapobjanimdat.uTanimdata.toy = uTmapobjanimdat.uTanimdata.y
			If uTmapobjanimdat.uTanimdata.tow <= - 9998 Then uTmapobjanimdat.uTanimdata.tow = uTmapobjanimdat.uTanimdata.w
			
			If uTmapobjanimdat.uTanimdata.wi <= - 9998 Then uTmapobjanimdat.uTanimdata.wi = uTmapobjanimdat.uTanimdata.objtex.image.width
			If uTmapobjanimdat.uTanimdata.he <= - 9998 Then uTmapobjanimdat.uTanimdata.he = uTmapobjanimdat.uTanimdata.objtex.image.height
			
			If frame >= uTmapobjanimdat.uTanimdata.startat Then
				Local winkel:Float = ATan2((uTmapobjanimdat.uTanimdata.x - uTmapobjanimdat.uTanimdata.tox), (uTmapobjanimdat.uTanimdata.y - uTmapobjanimdat.uTanimdata.toy))
				Local entferung:Float = Sqr((uTmapobjanimdat.nowx - uTmapobjanimdat.uTanimdata.tox) ^ 2 + (uTmapobjanimdat.nowy - uTmapobjanimdat.uTanimdata.toy) ^ 2)
					
				If uTmapobjanimdat.uTanimdata.speedw <> 0 Then
					uTmapobjanimdat.noww = uTmapobjanimdat.noww + uTmapobjanimdat.uTanimdata.speedw
				Else
					uTmapobjanimdat.noww = uTmapobjanimdat.noww + BufferWinkel(uTmapobjanimdat.noww, uTmapobjanimdat.uTanimdata.tow, waywinkel(uTmapobjanimdat.uTanimdata.w, uTmapobjanimdat.uTanimdata.tow) / ((uTobject.objanim.Length - uTmapobjanimdat.uTanimdata.startat)))
				EndIf
				If uTmapobjanimdat.uTanimdata.speedmove > 0 Then
					If entferung > uTmapobjanimdat.uTanimdata.speedmove Then entferung = uTmapobjanimdat.uTanimdata.speedmove
				Else
					entferung = entferung / ((uTobject.objanim.Length - uTmapobjanimdat.uTanimdata.startat))
				EndIf
				uTmapobjanimdat.nowx = uTmapobjanimdat.nowx + Cos(winkel) * entferung
				uTmapobjanimdat.nowy = uTmapobjanimdat.nowy + Sin(winkel) * entferung
			EndIf
		Next
	End Method
	
End Type


Type Tobject
	Field cname:String, autor:String
	
	Field nullx:Float, nully:Float
	
	Field size:Int = -1
	Field playonHIT:String
	Field playonDOWN:String
	Field playonTUCH:String
	Field playonIDLE:String
	Field playonBURN:String
	
	Field objanim:Tobjanim
	Field objanimlist:TList = CreateList()
	
	Method Setup(name:String)
		Local found:Int = 0
		For Local ts:Tdrawobjscript = EachIn mapdrawobjscriptlist
			If name = ts.name Then
				found = 1
				
				Local tVOR:String, tHINTER:String
				
				Local nTobjanimdata:Tobjanimdata, nTobjanim:Tobjanim, nTemitterdata:Temitterdata
				
				For Local fROW:Int = 0 To 499
					Select ts.data[fROW]
						Case "[OBJECT]"
							MODE = 1
							'objectlist.AddLast(Self)
						Case "[ANIMATE]"
							MODE = 3
							nTobjanim = New Tobjanim
							objanimlist.AddLast(nTobjanim)
					End Select
					
					If Not ts.data[fROW].Contains("=") Then Continue
					
					tVOR = Left(ts.data[fROW], ts.data[fROW].Find("="))
					tHINTER = Right(ts.data[fROW], ts.data[fROW].Length - (ts.data[fROW].Find("=") + 1))
					
					Select tVOR
						Case "PLAYON.BURN"
							If MODE = 1 Then
								playonBURN = tHINTER
							End If
						Case "PLAYON.IDLE"
							If MODE = 1 Then
								playonIDLE = tHINTER
							End If
						Case "PLAYON.TUCH"
							If MODE = 1 Then
								playonTUCH = tHINTER
							End If
						Case "PLAYON.DOWN"
							If MODE = 1 Then
								playonDOWN = tHINTER
							End If
						Case "PLAYON.HIT"
							If MODE = 1 Then
								playonHIT = tHINTER
							End If
						Case "SIZE"
							If MODE = 1 Then
								size = tHINTER.ToInt()
							End If
						Case "NAME"
							If MODE = 1 Then
								cname = tHINTER
							End If
						Case "EVENTNAME"
							If MODE = 3 Then
								nTobjanim.eventname = tHINTER
							End If
						Case "LENGTH"
							If MODE = 3 Then
								nTobjanim.Length = tHINTER.ToInt()
							End If
						Case "NEXT"
							If MODE = 3 Then
								nTobjanim.playnext = tHINTER
							End If
						Case "AUTOR"
							If MODE = 1 Then
								autor = tHINTER
							End If
						Case "NULL.X"
							If MODE = 1 Then
								nullx = tHINTER.ToFloat()
							End If
						Case "NULL.Y"
							If MODE = 1 Then
								nully = tHINTER.ToFloat()
							End If
						Case "USE"
							If MODE = 3 Then
								nTobjanimdata = New Tobjanimdata
								nTobjanim.animdatalist.AddLast(nTobjanimdata)
								nTobjanimdata.pixname = tHINTER
							End If
						Case "EMITTER"
							If MODE = 3 Then
								nTemitterdata = New Temitterdata
								nTobjanim.emitterdatalist.AddLast(nTemitterdata)
								nTemitterdata.pixname = tHINTER
							End If
						Case "START"
							If MODE = 3 Then
								If nTobjanimdata <> Null Then
									nTobjanimdata.startat = tHINTER.Toint()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a image first'") ; End
								End If
							End If
						Case "X"
							If MODE = 3 Then
								If nTobjanimdata <> Null Then
									nTobjanimdata.x = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a image first'") ; End
								End If
							End If
						Case "Y"
							If MODE = 3 Then
								If nTobjanimdata <> Null Then
									nTobjanimdata.y = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a image first'") ; End
								End If
							End If
						Case "W"
							If MODE = 3 Then
								If nTobjanimdata <> Null Then
									nTobjanimdata.wi = tHINTER.Toint()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a image first'") ; End
								End If
							End If
						Case "H"
							If MODE = 3 Then
								If nTobjanimdata <> Null Then
									nTobjanimdata.he = tHINTER.Toint()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a image first'") ; End
								End If
							End If
						Case "WINKEL"
							If MODE = 3 Then
								If nTobjanimdata <> Null Then
									nTobjanimdata.w = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a image first'") ; End
								End If
							End If
						Case "SPEED.WINKEL"
							If MODE = 3 Then
								If nTobjanimdata <> Null Then
									nTobjanimdata.speedw = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a image first'") ; End
								End If
							End If
						Case "SPEED.MOVE"
							If MODE = 3 Then
								If nTobjanimdata <> Null Then
									nTobjanimdata.speedmove = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a image first'") ; End
								End If
							End If
						Case "TO.X"
							If MODE = 3 Then
								If nTobjanimdata <> Null Then
									nTobjanimdata.tox = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a image first'") ; End
								End If
							End If
						Case "TO.Y"
							If MODE = 3 Then
								If nTobjanimdata <> Null Then
									nTobjanimdata.toy = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a image first'") ; End
								End If
							End If
						Case "TO.WINKEL"
							If MODE = 3 Then
								If nTobjanimdata <> Null Then
									nTobjanimdata.tow = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a image first'") ; End
								End If
							End If
						Case "HANDLE.X"
							If MODE = 3 Then
								If nTobjanimdata <> Null Then
									nTobjanimdata.hx = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a image first'") ; End
								End If
							End If
						Case "HANDLE.Y"
							If MODE = 3 Then
								If nTobjanimdata <> Null Then
									nTobjanimdata.hy = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a image first'") ; End
								End If
							End If
						Case "EMT.FLAG"
							If MODE = 3 Then
								If nTemitterdata <> Null Then
									nTemitterdata.flags = tHINTER.Toint()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a emitter first'") ; End
								End If
							End If
						Case "EMT.X"
							If MODE = 3 Then
								If nTemitterdata <> Null Then
									nTemitterdata.x = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a emitter first'") ; End
								End If
							End If
						Case "EMT.Y"
							If MODE = 3 Then
								If nTemitterdata <> Null Then
									nTemitterdata.y = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a emitter first'") ; End
								End If
							End If
						Case "EMT.HX"
							If MODE = 3 Then
								If nTemitterdata <> Null Then
									nTemitterdata.hx = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a emitter first'") ; End
								End If
							End If
						Case "EMT.HY"
							If MODE = 3 Then
								If nTemitterdata <> Null Then
									nTemitterdata.hy = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a emitter first'") ; End
								End If
							End If
						Case "EMT.H"
							If MODE = 3 Then
								If nTemitterdata <> Null Then
									nTemitterdata.he = tHINTER.Toint()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a emitter first'") ; End
								End If
							End If
						Case "EMT.W"
							If MODE = 3 Then
								If nTemitterdata <> Null Then
									nTemitterdata.wi = tHINTER.Toint()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a emitter first'") ; End
								End If
							End If
						Case "EMT.WINKEL"
							If MODE = 3 Then
								If nTemitterdata <> Null Then
									nTemitterdata.w = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a emitter first'") ; End
								End If
							End If
						Case "EMT.SPEED"
							If MODE = 3 Then
								If nTemitterdata <> Null Then
									nTemitterdata.speed = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a emitter first'") ; End
								End If
							End If
						Case "EMT.START"
							If MODE = 3 Then
								If nTemitterdata <> Null Then
									nTemitterdata.startat = tHINTER.Toint()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a emitter first'") ; End
								End If
							End If
						Case "EMT.END"
							If MODE = 3 Then
								If nTemitterdata <> Null Then
									nTemitterdata.endat = tHINTER.Toint()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a emitter first'") ; End
								End If
							End If
						Case "EMT.EVERY"
							If MODE = 3 Then
								If nTemitterdata <> Null Then
									nTemitterdata.every = tHINTER.Toint()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a emitter first'") ; End
								End If
							End If
						Case "EMT.ROTATE"
							If MODE = 3 Then
								If nTemitterdata <> Null Then
									nTemitterdata.rotate = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a emitter first'") ; End
								End If
							End If
						Case "EMT.ROLL.WINKEL"
							If MODE = 3 Then
								If nTemitterdata <> Null Then
									nTemitterdata.w2 = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a emitter first'") ; End
								End If
							End If
						Case "EMT.ROLL.ROTATE"
							If MODE = 3 Then
								If nTemitterdata <> Null Then
									nTemitterdata.rotate2 = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a emitter first'") ; End
								End If
							End If
						Case "EMT.TIME"
							If MODE = 3 Then
								If nTemitterdata <> Null Then
									nTemitterdata.dauer = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a emitter first'") ; End
								End If
							End If
						Default
							Notify("ERROR: line " + fROW + "  >  'no such command'") ; End
					EndSelect
				Next
				
				For objanim = EachIn objanimlist
					For objanim.objanimdata = EachIn objanim.animdatalist
						For Local objt:Tobjtex = EachIn mapobjtexlist
							If objt.name = objanim.objanimdata.pixname Then objanim.objanimdata.objtex = objt
						Next
					Next
					For objanim.emitterdata = EachIn objanim.emitterdatalist
						For Local objt:Tobjtex = EachIn mapobjtexlist
							If objt.name = objanim.emitterdata.pixname Then objanim.emitterdata.objtex = objt
						Next
					Next
				Next

				Exit
			End If
		Next
		If found = 0 Then
			Notify("ERROR: no drawobjscript found! > " + name) ; End
		EndIf
	End Method
	
	Method noSetup(name:String)
		Local found:Int = 0
		For Local ts:Tdrawobjscript = EachIn drawobjscriptlist
			If name = ts.name Then
				found = 1
				
				Local tVOR:String, tHINTER:String
				
				Local nTobjanimdata:Tobjanimdata, nTobjanim:Tobjanim, nTemitterdata:Temitterdata
				
				For Local fROW:Int = 0 To 499
					Select ts.data[fROW]
						Case "[OBJECT]"
							MODE = 1
							'objectlist.AddLast(Self)
						Case "[ANIMATE]"
							MODE = 3
							nTobjanim = New Tobjanim
							objanimlist.AddLast(nTobjanim)
					End Select
					
					If Not ts.data[fROW].Contains("=") Then Continue
					
					tVOR = Left(ts.data[fROW], ts.data[fROW].Find("="))
					tHINTER = Right(ts.data[fROW], ts.data[fROW].Length - (ts.data[fROW].Find("=") + 1))
					
					Select tVOR
						Case "PLAYON.BURN"
							If MODE = 1 Then
								playonBURN = tHINTER
							End If
						Case "PLAYON.IDLE"
							If MODE = 1 Then
								playonIDLE = tHINTER
							End If
						Case "PLAYON.TUCH"
							If MODE = 1 Then
								playonTUCH = tHINTER
							End If
						Case "PLAYON.DOWN"
							If MODE = 1 Then
								playonDOWN = tHINTER
							End If
						Case "PLAYON.HIT"
							If MODE = 1 Then
								playonHIT = tHINTER
							End If
						Case "SIZE"
							If MODE = 1 Then
								size = tHINTER.ToInt()
							End If
						Case "NAME"
							If MODE = 1 Then
								cname = tHINTER
							End If
						Case "EVENTNAME"
							If MODE = 3 Then
								nTobjanim.eventname = tHINTER
							End If
						Case "LENGTH"
							If MODE = 3 Then
								nTobjanim.Length = tHINTER.ToInt()
							End If
						Case "NEXT"
							If MODE = 3 Then
								nTobjanim.playnext = tHINTER
							End If
						Case "AUTOR"
							If MODE = 1 Then
								autor = tHINTER
							End If
						Case "NULL.X"
							If MODE = 1 Then
								nullx = tHINTER.ToFloat()
							End If
						Case "NULL.Y"
							If MODE = 1 Then
								nully = tHINTER.ToFloat()
							End If
						Case "USE"
							If MODE = 3 Then
								nTobjanimdata = New Tobjanimdata
								nTobjanim.animdatalist.AddLast(nTobjanimdata)
								nTobjanimdata.pixname = tHINTER
							End If
						Case "EMITTER"
							If MODE = 3 Then
								nTemitterdata = New Temitterdata
								nTobjanim.emitterdatalist.AddLast(nTemitterdata)
								nTemitterdata.pixname = tHINTER
							End If
						Case "START"
							If MODE = 3 Then
								If nTobjanimdata <> Null Then
									nTobjanimdata.startat = tHINTER.Toint()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a image first'") ; End
								End If
							End If
						Case "X"
							If MODE = 3 Then
								If nTobjanimdata <> Null Then
									nTobjanimdata.x = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a image first'") ; End
								End If
							End If
						Case "Y"
							If MODE = 3 Then
								If nTobjanimdata <> Null Then
									nTobjanimdata.y = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a image first'") ; End
								End If
							End If
						Case "W"
							If MODE = 3 Then
								If nTobjanimdata <> Null Then
									nTobjanimdata.wi = tHINTER.Toint()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a image first'") ; End
								End If
							End If
						Case "H"
							If MODE = 3 Then
								If nTobjanimdata <> Null Then
									nTobjanimdata.he = tHINTER.Toint()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a image first'") ; End
								End If
							End If
						Case "WINKEL"
							If MODE = 3 Then
								If nTobjanimdata <> Null Then
									nTobjanimdata.w = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a image first'") ; End
								End If
							End If
						Case "SPEED.WINKEL"
							If MODE = 3 Then
								If nTobjanimdata <> Null Then
									nTobjanimdata.speedw = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a image first'") ; End
								End If
							End If
						Case "SPEED.MOVE"
							If MODE = 3 Then
								If nTobjanimdata <> Null Then
									nTobjanimdata.speedmove = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a image first'") ; End
								End If
							End If
						Case "TO.X"
							If MODE = 3 Then
								If nTobjanimdata <> Null Then
									nTobjanimdata.tox = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a image first'") ; End
								End If
							End If
						Case "TO.Y"
							If MODE = 3 Then
								If nTobjanimdata <> Null Then
									nTobjanimdata.toy = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a image first'") ; End
								End If
							End If
						Case "TO.WINKEL"
							If MODE = 3 Then
								If nTobjanimdata <> Null Then
									nTobjanimdata.tow = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a image first'") ; End
								End If
							End If
						Case "HANDLE.X"
							If MODE = 3 Then
								If nTobjanimdata <> Null Then
									nTobjanimdata.hx = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a image first'") ; End
								End If
							End If
						Case "HANDLE.Y"
							If MODE = 3 Then
								If nTobjanimdata <> Null Then
									nTobjanimdata.hy = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a image first'") ; End
								End If
							End If
						Case "EMT.FLAG"
							If MODE = 3 Then
								If nTemitterdata <> Null Then
									nTemitterdata.flags = tHINTER.Toint()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a emitter first'") ; End
								End If
							End If
						Case "EMT.X"
							If MODE = 3 Then
								If nTemitterdata <> Null Then
									nTemitterdata.x = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a emitter first'") ; End
								End If
							End If
						Case "EMT.Y"
							If MODE = 3 Then
								If nTemitterdata <> Null Then
									nTemitterdata.y = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a emitter first'") ; End
								End If
							End If
						Case "EMT.HX"
							If MODE = 3 Then
								If nTemitterdata <> Null Then
									nTemitterdata.hx = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a emitter first'") ; End
								End If
							End If
						Case "EMT.HY"
							If MODE = 3 Then
								If nTemitterdata <> Null Then
									nTemitterdata.hy = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a emitter first'") ; End
								End If
							End If
						Case "EMT.H"
							If MODE = 3 Then
								If nTemitterdata <> Null Then
									nTemitterdata.he = tHINTER.Toint()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a emitter first'") ; End
								End If
							End If
						Case "EMT.W"
							If MODE = 3 Then
								If nTemitterdata <> Null Then
									nTemitterdata.wi = tHINTER.Toint()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a emitter first'") ; End
								End If
							End If
						Case "EMT.WINKEL"
							If MODE = 3 Then
								If nTemitterdata <> Null Then
									nTemitterdata.w = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a emitter first'") ; End
								End If
							End If
						Case "EMT.SPEED"
							If MODE = 3 Then
								If nTemitterdata <> Null Then
									nTemitterdata.speed = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a emitter first'") ; End
								End If
							End If
						Case "EMT.START"
							If MODE = 3 Then
								If nTemitterdata <> Null Then
									nTemitterdata.startat = tHINTER.Toint()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a emitter first'") ; End
								End If
							End If
						Case "EMT.END"
							If MODE = 3 Then
								If nTemitterdata <> Null Then
									nTemitterdata.endat = tHINTER.Toint()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a emitter first'") ; End
								End If
							End If
						Case "EMT.EVERY"
							If MODE = 3 Then
								If nTemitterdata <> Null Then
									nTemitterdata.every = tHINTER.Toint()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a emitter first'") ; End
								End If
							End If
						Case "EMT.ROTATE"
							If MODE = 3 Then
								If nTemitterdata <> Null Then
									nTemitterdata.rotate = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a emitter first'") ; End
								End If
							End If
						Case "EMT.ROLL.WINKEL"
							If MODE = 3 Then
								If nTemitterdata <> Null Then
									nTemitterdata.w2 = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a emitter first'") ; End
								End If
							End If
						Case "EMT.ROLL.ROTATE"
							If MODE = 3 Then
								If nTemitterdata <> Null Then
									nTemitterdata.rotate2 = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a emitter first'") ; End
								End If
							End If
						Case "EMT.TIME"
							If MODE = 3 Then
								If nTemitterdata <> Null Then
									nTemitterdata.dauer = tHINTER.ToFloat()
								Else
									 Notify("ERROR: line " + fROW + "  >  'USE a emitter first'") ; End
								End If
							End If
						Default
							Notify("ERROR: line " + fROW + "  >  'no such command'") ; End
					EndSelect
				Next
				
				For objanim = EachIn objanimlist
					For objanim.objanimdata = EachIn objanim.animdatalist
						For Local objt:Tobjtex = EachIn objtexlist
							If objt.name = objanim.objanimdata.pixname Then objanim.objanimdata.objtex = objt
						Next
					Next
					For objanim.emitterdata = EachIn objanim.emitterdatalist
						For Local objt:Tobjtex = EachIn objtexlist
							If objt.name = objanim.emitterdata.pixname Then objanim.emitterdata.objtex = objt
						Next
					Next
				Next

				Exit
			End If
		Next
		If found = 0 Then
			Notify("ERROR: no drawobjscript found! > " + name) ; End
		EndIf
	End Method
	
End Type
Global objectlist:TList = CreateList()
Global mapobjectlist:TList = CreateList()

Type Tobjanim
	Field eventname:String
	
	Field Length:Int, playnext:String
	
	Field objanimdata:Tobjanimdata
	Field animdatalist:TList = CreateList()
	
	Field emitterdata:Temitterdata
	Field emitterdatalist:TList = CreateList()
End Type


Type Tobjanimdata
	Field pixname:String
	
	Field objtex:Tobjtex
	
	Field startat:Int

	Field x:Float, y:Float, w:Float
	Field tox:Float = -9999, toy:Float = -9999, tow:Float = -9999
	
	Field wi:Int = -9999, he:Int = -9999
	
	Field speedw:Float, speedmove:Float
	
	Field hx:Float, hy:Float
End Type

Type Temitterdata
	Field pixname:String
	
	Field objtex:Tobjtex
	Field flags:Int
	
	Field startat:Int, endat:Int = 9999, every:Int, dauer:Int = 40

	Field x:Float, y:Float, w:Float, speed:Float = 0, rotate:Float = 0
	Field w2:Float = 0, rotate2:Float = 0
	
	Field wi:Int = -9999, he:Int = -9999
	
	Field hx:Float, hy:Float
	
	Method Createemitter(frame:Int, dx:Int, dy:Int)
		If frame >= startat And frame <= endat Then
			Local this:Int = Rnd(0, (every * 100)) / 100.0
			If this = 0 Then
				Local nTemitter:Temitter = New Temitter
				emitterlist.AddLast(nTemitter)
				nTemitter.objtex = objtex
				nTemitter.x = x
				nTemitter.y = y
				nTemitter.w = w
				nTemitter.w2 = w2
				nTemitter.s = speed
				nTemitter.r = rotate
				nTemitter.r2 = rotate2
				nTemitter.d = dauer
				nTemitter.hx = hx
				nTemitter.hy = hy
				nTemitter.drx = dx
				nTemitter.dry = dy
				If wi = -9999 Then nTemitter.wi = objtex.image.width Else nTemitter.wi = wi
				If he = -9999 Then nTemitter.he = objtex.image.height Else nTemitter.he = he
			EndIf
		EndIf
	End Method
End Type


Type Tdrawobjscript
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
Global drawobjscriptlist:TList = CreateList()
Global mapdrawobjscriptlist:TList = CreateList()

Type Tobjtex
	Field name:String
	Field image:TImage, pixmap:TPixmap
End Type
Global objtexlist:TList = CreateList()
Global mapobjtexlist:TList = CreateList()

Function objtex_load()
	Local Gdire:Int = ReadDir("gfx\objects")
	Repeat
		Local xdatei:String = NextFile(Gdire)
		If xdatei = "" Then Exit
		If xdatei = "." Or xdatei = ".."Then Continue
		If Right(xdatei, 3).ToLower() <> "png" Then Continue
		Local nTobjtex:Tobjtex = New Tobjtex
		objtexlist.AddLast(nTobjtex)
		nTobjtex.image = LoadImage("gfx\objects\" + xdatei)
		nTobjtex.pixmap = LoadPixmap("gfx\objects\" + xdatei)
		nTobjtex.name = xdatei
	Forever
	CloseDir Gdire
End Function

Function obj_load()
	Local Gdire:Int = ReadDir("gfx\objects")
	Repeat
		Local xdatei:String = NextFile(Gdire)
		If xdatei = "" Then Exit
		If xdatei = "." Or xdatei = ".."Then Continue
		If Right(xdatei, 3).ToLower() <> "obj" Then Continue
		Local nTdrawobjscript:Tdrawobjscript = New Tdrawobjscript
		drawobjscriptlist.AddLast(nTdrawobjscript)
		Local infile:TStream = ReadFile("gfx\objects\" + xdatei)
		
		While Not Eof(infile)
			nTdrawobjscript.insert(infile.ReadLine())
		Wend
		
		Local nTobject:Tobject = New Tobject
		objectlist.AddLast(nTobject)
		nTobject.cname = nTdrawobjscript.name
		nTobject.noSetup(nTdrawobjscript.name)
		infile.Close()
	Forever
	CloseDir Gdire
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

Type Temitter
	Field objtex:Tobjtex
	Field x:Float, y:Float, w:Float, w2:Float, s:Float, r:Float, r2:Float, d:Float, hx:Float, hy:Float, wi:Float, he:Float
	Field drx:Int, dry:Int
	
	Method Draw()
		w = w + r Mod 360
		w2 = w2 + r2 Mod 360
		x = x + Cos(w) * s
		y = y + Sin(w) * s
		
		SetColor(255, 255, 255)
		SetAlpha(1)
		SetRotation(w2)
		SetHandle(hx, hy)
		DrawPicture(objtex.image, drx + x - gVx, dry + y - gVy, wi, he)
	End Method
End Type
Global emitterlist:TList = CreateList()


