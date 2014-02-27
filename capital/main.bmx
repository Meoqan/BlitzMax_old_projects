SeedRnd MilliSecs()

Global tick:Int = 3000

Global screenx:Float = 1024
Global screeny:Float = 768
Global split20x:Float = screenx / 5.0
Global pointx:Float = screenx / 2.0
Global pointy:Float = screeny / 2.0

SetGraphicsDriver D3D7Max2DDriver()
AppTitle = "capital"
Global fenster:TGraphics = Graphics(screenx, screeny)


SetBlend(ALPHABLEND)


SetImageFont(LoadImageFont("Courier New", 12, SMOOTHFONT))

'imagestuff

'temp globals
Global player01:Tplayer = add_player(5000)
player01.addmy_lager()
player01.addmy_farm(quelle001, 10)
player01.addmy_fabrik(5)

Global fabrikdata:Int[4]
Global fabrikselected:Tmaschine

Global ausbaudata:Int[256], ausbaudata2:Int[256]

'mouseglobals
Global md1:Int, mh1:Int

'globals
Global menu:Int = 1
Global fabrikmenu:Int
Global prodtick:Int

Global msc:Int
Global lasttime:Int = MilliSecs()
Global time:Int = MilliSecs()
'HideMouse()
While Not (KeyHit(KEY_ESCAPE) Or AppTerminate())
	'get time differance
	lasttime = time
	time = MilliSecs()
	msc = time - lasttime
	
	prodtick:+msc
	
	If prodtick > tick Then
		prodtick = 0
	
		For Local wfarm:Tfarm = EachIn farmlist
			wfarm.work()
		Next
		
		For Local wfabrik:Tfabrik = EachIn fabriklist
			wfabrik.work()
		Next
		
		For Local wausbau:Tausbau = EachIn ausbaulist
			wausbau.work()
		Next
	End If
	
	Cls
	
	md1 = MouseDown(1) ; mh1 = MouseHit(1)
	
	draw_interface_back()
	
	reset_draw()
	
	Select menu
		Case 1 'Uebersicht
			'field01dd = int_field("x", field01dd, 20, 200)
			'If field01dd <= 0 Then field01dd = 1
			
			'If int_button("go", 0, 1, 20, 220) Then p1fabrik.addjob(maschine001, 1, field01dd)
			
		Case 2 'lager
			Local line:Int
			
			If player01.lager.stueck.Length > 0 Then
			
				For Local x:Int = 0 To player01.lager.stueck.Length - 1
					
					DrawText(player01.lager.stueck[x] + "x " + player01.lager.lager[x].name, split20x + 100, 100 + (line * 20))
					
					
					line:+1
				Next
			Else
				DrawText("Keine Wahre im lager", split20x + 100, 100)
				
			EndIf
		
		Case 3 'fabrik
			Local line:Int
			
			If player01.fabrik.Length > 0 Then
			
				For Local x:Int = 0 To player01.fabrik.Length - 1
					
					DrawText("Fabrik mit '" + player01.fabrik[x].usedm3 + "/" + player01.fabrik[x].m3 + "' m2", split20x + 100, 100 + (line * 20))
					
					If fabrikmenu = 0 Then ..
					If player01.fabrik[x].m3 - player01.fabrik[x].usedm3 > 0 Then ..
					If int_button("neuer Auftrag", 0, 1, split20x + 300, 100 + (line * 20)) Then ..
					If fabrikmenu = 0 Then fabrikmenu = line + 1 ; fabrikdata[2] = x ; fabrikdata[0] = player01.fabrik[x].m3 - player01.fabrik[x].usedm3
					line:+1
					
					
					
					
					If player01.fabrik[x].job.Length > 0 Then
						For Local y:Int = 0 To player01.fabrik[x].job.Length - 1
							DrawText( ..
							player01.fabrik[x].job[y].aktuell + "/" + ..
							player01.fabrik[x].job[y].menge + " " + ..
							player01.fabrik[x].job[y].maschine.name ..
							, split20x + 140, 100 + (line * 20))
							line:+1
						Next
					Else
						DrawText("keine Auftraege", split20x + 140, 100 + (line * 20))
						line:+1
					End If
					
				Next
				If fabrikmenu > 0 Then
					SetAlpha(0.4)
					SetColor(0, 0, 0)
					DrawRect(split20x + 300, 100 + (fabrikmenu * 20), 200, 120)
					
					fabrikdata[0] = int_field("fabrik m2", fabrikdata[0], split20x + 320, 120 + (fabrikmenu * 20))
					If fabrikdata[0] <= 0 Then fabrikdata[0] = 0
					If fabrikdata[0] > player01.fabrik[fabrikdata[2] ].m3 - player01.fabrik[fabrikdata[2] ].usedm3 Then ..
					fabrikdata[0] = player01.fabrik[fabrikdata[2] ].m3 - player01.fabrik[fabrikdata[2] ].usedm3
					fabrikdata[1] = int_field("anzahl", fabrikdata[1], split20x + 320, 140 + (fabrikmenu * 20))
					If fabrikdata[1] <= 0 Then fabrikdata[1] = 1
					
					player01.checklist()
					SetAlpha(0.4)
					SetColor(0, 0, 0)
					DrawRect(split20x + 100, 100 + (fabrikmenu * 20), 200, player01.fabrikposlist.Count() * 20)
					Local linex:Int
					For Local masch:Tmaschine = EachIn player01.fabrikposlist
					
						If mh1 And ismouseover(split20x + 100, 100 + (fabrikmenu * 20) + (linex * 20), 200, 20) Then
							fabrikselected = masch
						End If
					
						If fabrikselected = masch Then ..
						SetAlpha(0.4) ; SetColor(255, 255, 255) ..
						DrawRect(split20x + 100, 101 + (fabrikmenu * 20) + (linex * 20), 200, 18)
						
						
						SetAlpha(1)
						SetColor(255, 255, 255)
						DrawText(masch.name, split20x + 120, 103 + (fabrikmenu * 20))
						linex:+1
					Next
					
					
					If int_button("Start", 0, 1, split20x + 320, 160 + (fabrikmenu * 20)) Then
						Local tempfree:Int = player01.fabrik[fabrikdata[2] ].m3 - player01.fabrik[fabrikdata[2] ].usedm3
						If tempfree >= fabrikdata[0] And fabrikselected <> Null Then
							player01.fabrik[fabrikdata[2] ].usedm3:+fabrikdata[0]
							player01.fabrik[fabrikdata[2] ].addjob(fabrikselected, fabrikdata[0], fabrikdata[1]) ; fabrikmenu = 0
						EndIf
					EndIf
					If int_button("Abbrechen", 0, 1, split20x + 320, 180 + (fabrikmenu * 20)) Then fabrikmenu = 0
					
				End If
			Else
				DrawText("Keine Fabriken", split20x + 100, 100)
				
			EndIf
		Case 4 'ausbau
			Local line:Int
			
			If player01.fabrik.Length > 0 Then
			
				For Local x:Int = 0 To player01.fabrik.Length - 1
					
					DrawText("Fabrik mit '" + player01.fabrik[x].usedm3 + "/" + player01.fabrik[x].m3 + "' m2", split20x + 100, 100 + (line * 20))
					
					ausbaudata[x] = int_field("m2", ausbaudata[x], split20x + 300, 100 + (line * 20))
					If ausbaudata[x] <= 1 Then ausbaudata[x] = 1
					If int_button("Ausbauen", 0, 1, split20x + 500, 100 + (line * 20)) Then add_ausbau(player01.fabrik[x], Null, ausbaudata[x])
					
					line:+1
					
				Next
				
			EndIf
			
			If player01.farm.Length > 0 Then
			
				For Local x:Int = 0 To player01.farm.Length - 1
					
					DrawText("Quelle mit '" + player01.farm[x].m3 + "' m2", split20x + 100, 100 + (line * 20))
					
					ausbaudata2[x] = int_field("m2", ausbaudata2[x], split20x + 300, 100 + (line * 20))
					If ausbaudata2[x] <= 1 Then ausbaudata2[x] = 1
					If int_button("Ausbauen", 0, 1, split20x + 500, 100 + (line * 20)) Then add_ausbau(Null, player01.farm[x], ausbaudata2[x])
					
					line:+1
					
				Next

			EndIf
		
	End Select
	
	
	
	
	
	If player01.fabrik[0].job.Length > 0 Then
		
		reset_draw()
		SetColor(0, 0, 0)
		SetAlpha(0.4)
		DrawRect(split20x + 20, screeny - (player01.fabrik[0].job.Length * 20), 440, (player01.fabrik[0].job.Length * 20))
		
		SetColor(255, 255, 255)
		SetAlpha(1)
		Local line:Int = player01.fabrik[0].job.Length
		Local prozent:Float
		For Local x:Int = 0 To player01.fabrik[0].job.Length - 1
			
			If player01.fabrik[0].job[x].aktuell > 0 Then
				prozent = (Float(player01.fabrik[0].job[x].aktuell) / Float(player01.fabrik[0].job[x].menge)) * 400.0
			Else
				prozent = 1
			EndIf
			If player01.fabrik[0].job[x].status = 2 Then SetColor(0, 255, 0)
			If player01.fabrik[0].job[x].status = 1 Then SetColor(255, 0, 0)
			If player01.fabrik[0].job[x].status = 0 Then SetColor(255, 255, 0)
			SetAlpha(0.6)
			DrawRect(split20x + 40, screeny - (line * 20) + 1, prozent, 18)
			SetAlpha(1)
			SetColor(255, 255, 255)
			DrawText(player01.fabrik[0].job[x].aktuell + "/" + player01.fabrik[0].job[x].menge + " " + player01.fabrik[0].job[x].maschine.name, split20x + 60, screeny - (line * 20) + 3)
		
			
			line:-1
		Next
				
	EndIf
	
	
	
	
	draw_interface_front()
	
	
	Flip
Wend

End