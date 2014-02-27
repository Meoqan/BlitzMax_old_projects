SuperStrict
SeedRnd MilliSecs()
AutoMidHandle(1)
Include "Includes\BasicFunctions.bmx"
Include "Includes\Images.bmx"
Include "Includes\EnemyClass.bmx"
Include "Includes\Weapons.bmx"
Include "Includes\PlayerClass.bmx"
?Win32
SetGraphicsDriver D3D9Max2DDriver() 
?MacOS
SetGraphicsDriver GLMax2DDriver() 
?
Graphics(1024,768)
SetBlend(ALPHABLEND)
Global iWaTi:Int, iLaWa:Int, iWaNu:Float, iWaAm:Int
SetImageFont(LoadImageFont("Courier New", 12, SMOOTHFONT))
Global iExtrTi:Int = 15000, iExtrLa:Int
Global FTimer:TTimer = CreateTimer(65), msc%, lasttime% = MilliSecs(), itime% = MilliSecs(), iGameState% = 0
Const iSTATE_TILE:Int = 0, iSTATE_GAME:Int = 1, iSTATE_GAMEOVER:Int = 2, iState_Win:Int = 3
Global a:TPixmap[32]
For Local i:Int = 0 To 31
	a[i] = LoadPixmap("Data\img(" + i + ").png")
Next
Global tiShG:TImage = LoadImage(a[20])
Global tiExtr:TImage[6]
tiExtr[0] = LoadImage(a[21])
tiExtr[1] = LoadImage(a[22])
tiExtr[2] = LoadImage(a[23])
tiExtr[3] = LoadImage(a[24])
tiExtr[4] = LoadImage(a[25])
tiExtr[5] = LoadImage(a[27])
Global tiPara:TImage = LoadImage(a[2])
Global tiMap:TImage[2]
tiMap[0] = LoadImage(a[0])
tiMap[1] = LoadImage(a[26])
Global tiST:TImage = LoadAnimImage(a[10], 16, 16, 0, 4)
Global tiPL:TImage[3, 4]
tiPL[0, 0] = LoadAnimImage(a[17], 32, 48, 0, 3)
tiPL[0, 1] = LoadAnimImage(a[17], 32, 48, 3, 3)
tiPL[0, 2] = LoadAnimImage(a[17], 32, 48, 6, 3)
tiPL[0, 3] = LoadAnimImage(a[17], 32, 48, 9, 3)
tiPL[1, 0] = LoadAnimImage(a[19], 32, 48, 0, 3)
tiPL[1, 1] = LoadAnimImage(a[19], 32, 48, 3, 3)
tiPL[1, 2] = LoadAnimImage(a[19], 32, 48, 6, 3)
tiPL[1, 3] = LoadAnimImage(a[19], 32, 48, 9, 3)
tiPL[2, 0] = LoadAnimImage(a[18], 32, 48, 0, 3)
tiPL[2, 1] = LoadAnimImage(a[18], 32, 48, 3, 3)
tiPL[2, 2] = LoadAnimImage(a[18], 32, 48, 6, 3)
tiPL[2, 3] = LoadAnimImage(a[18], 32, 48, 9, 3)
Global tiTE:TImage[5]
For Local i%=0 To 4
tiTE[i] = LoadImage(a[i + 4])
Next
Global tiGO:TImage = LoadImage(a[1]), tiLiFr:TImage = LoadImage(a[13]), tiLi:TImage = LoadImage(a[14]), tiExFr:TImage = LoadImage(a[11]), tiEx:TImage = LoadImage(a[12]), tiEnBG:TImage = LoadAnimImage(a[9], 32, 32, 0, 3), tiEnZR:TImage = LoadAnimImage(a[31], 32, 32, 0, 3), tiEnGW:TImage = LoadAnimImage(a[3], 32, 32, 0, 3), tiTi:TImage = LoadImage(a[28]), tiMe:TImage = LoadImage(a[16]), tiMo:TImage = LoadImage(a[15]), Pl:TPlayer, iTX:Int = 1024 / 2, iTY:Int = 96, fTeEn:Float = 100, iTL:Int = 1, iTML:Int = 5, fTMEn:Int = 100, fTAP:Float = 10, fTEXP:Float = 0.001, fTMEXP:Float = 100, iSLUT:Int = 1500, iSLUL:Int, iMhL:Int, iEnd:Int = 0
Global tiWin:TImage = LoadImage(a[29])
Global iNuked:Int = 0, iNTi:Int = 500, inSt:Int, tiNu:TImage = LoadImage(a[30]), wave:Int
HideMouse()

Repeat
	WaitTimer(FTimer)
	lasttime = itime
	itime = MilliSecs()
	msc = itime - lasttime

	Cls
	Select iGameState
		Case 0
			iMhL = MouseHit(1)
			DrawImage(tiTi, 1024 / 2, 768 / 2)
			DrawImage(tiMe, 1024 / 2 + 600 / 2, 768 / 2 + 500 / 2.25)
			DrawImage(tiMo, MouseX() + tiMo.width / 2, MouseY() + tiMo.height / 2)
			Select CheckClickedButton()
				Case 1
					iGameState = iSTATE_GAME
					Pl = TPlayer.Create()
					iLaWa = MilliSecs()
					iWaTi = 9000
					iWaNu = 0
					fTeEn = 100
					iTL = 1
					iTML = 5
					fTMEn = 100
					fTAP = 10
					fTEXP = 0.001
					fTMEXP = 100
					wave = 0
					iExtrLa = MilliSecs()
				Case 2
					iEnd = 1
					
			End Select

		Case 1
			If KeyHit(KEY_ESCAPE) Then
				iGameState = iSTATE_TILE
				For Local Shot:TShoot = EachIn TShoot.tlAllShoots
					Shot.Destroy
				Next
				For Local En:TEnemy = EachIn TEnemy.tlAllEn
					En.Destroy()
				Next
			End If
			DrawImage(tiMap[1], 1024 / 2, 768 / 2)
			DrawTree()
			TExtra.UpdateEx()
			Pl.Update()
			If (iExtrLa + iExtrTi) < MilliSecs() Then
				TExtra.Create()
				iExtrLa = MilliSecs()
			EndIf
			CheckCollisions()
			
			TEnemy.UpWa()
			TEnemy.UpdateEnemys()
			TShoot.updateShoots()
			Pl.Draw()
			
			DrawImage(tiMap[0], 1024 / 2, 768 / 2)
			If iNuked = 1 Then
				For Local En:TEnemy = EachIn TEnemy.tlAllEn
					En.fEne = 0
				Next
				SetScale(2, 2)
				DrawImage(tiNu, 1024 / 2, 768 / 2)
				reset_draw()
				If (iNTi + inSt) < MilliSecs() Then
					iNuked = 0
				End If
			End If
			ShowInfos()
			
			DoesLevel()
			If fTeEn <= 0 Then
				iGameState = iSTATE_GAMEOVER
			End If
			If wave > 50 Then
				iGameState = 3
			End If
			
		Case 2
		
			If KeyHit(KEY_ENTER) Then
				iGameState = iSTATE_TILE
				For Local Shot:TShoot = EachIn TShoot.tlAllShoots
					Shot.Destroy
				Next
				For Local En:TEnemy = EachIn TEnemy.tlAllEn
					En.Destroy()
				Next
			End If
			DrawImage(tiGO, 1024 / 2, 768 / 2)
			
		Case 3
			If KeyHit(KEY_ENTER) Then
				iGameState = iSTATE_TILE
				For Local Shot:TShoot = EachIn TShoot.tlAllShoots
					Shot.Destroy
				Next
				For Local En:TEnemy = EachIn TEnemy.tlAllEn
					En.Destroy()
				Next
			End If
			DrawImage(tiWin, 1024 / 2, 768 / 2)
	End Select
	
	reset_draw()

	Flip 0
Until ((iEnd = 1) Or AppTerminate())

Function CheckCollisions()
	For Local Shot:TShoot = EachIn TShoot.tlallShoots
		If shot.idead = 0 Then
			For Local En:TEnemy = EachIn TEnemy.tlAllEn
				If En.idead = 0 Then
					If Shot.iDead = 0 Then
						Local iFr:Int
						If Shot.iFrShGu = 0 Then
							iFr = Shot.iDir
						Else
							iFr = 0
						EndIf
						If ImagesCollide(Shot.tiIM, Shot.fXP, Shot.fYP, iFr, En.tiIM, En.fXP, En.fYP, En.iFr) Then
							En.fEne = En.fEne - Shot.fstr
							Shot.idead = 1
							Shot.Destroy()
							If En.fEne <= 0 Then
								If iTL <> iTML Then
									fTEXP = fTEXP + En.fExps
								EndIf
							EndIf
						EndIf
					EndIf
				EndIf
			Next
		EndIf
	Next
	For Local Ex:TExtra = EachIn TExtra.tlAllEx
		If Ex.iFly = 0 Then
			If ImagesCollide(Pl.tIGIm[Pl.iChoWea, Pl.iDir].tiIM, Pl.fXP + 8, Pl.fYP + 8, Pl.iAniAr[Pl.tIGIm[Pl.iChoWea, Pl.iDir].iFr], Ex.tiImg, Ex.fXP, Ex.fYP, 0) Then
				Select Ex.iKi
					Case 1
						iNuked = 1
						inSt = MilliSecs()
					Case 2
						Pl.tmAmmu[Pl.iChoWea].fStrFac:+Ex.fAmount
					Case 3
						fTeEn:+Ex.fAmount
						If fTeEn > fTMEn Then fTeEn = fTMEn
					Case 4
						Pl.tmAmmu[0].iAmount:+Ex.fAmount
					Case 6
						Pl.tmAmmu[1].iAmount:+Ex.fAmount
					Case 5
						Pl.tmammu[2].iAmount:+Ex.fAmount
				End Select
				Ex.Destroy()
			EndIf
		End If
	Next
End Function

Function DoesLevel()
	If fTEXP >= fTMEXP Then
		fTEXP = fTMEXP
		If iTL < iTML Then
			iTL:+1
			iSLUL = MilliSecs()
			fTEXP = 0.001
			fTMEn = fTMEn + fTMEn / 4
			fTeEn = fTMEn
			fTMEXP = fTMEXP + fTMEXP / 2
			fTAP = fTAP + fTAP / 2
		End If
	End If
End Function

Function CheckClickedButton%()
	If iMhL Then
		If MouseX() > 725 And MouseX() < 895 Then
			If MouseY() > 555 And MouseY() < 595 Then
				Return 1
			End If
			If MouseY() > 620 And MouseY() < 655 Then
				Return 2
			End If
		End If
	End If
	If KeyHit(KEY_ENTER) Then Return 1
	If KeyHit(KEY_ESCAPE) Then Return 2
	Return 0
End Function

Function DrawTree()
	DrawImage(tiTE[iTL - 1], iTX, iTY)
	DrawImage(tiLiFr, iTX + tiTE[iTL - 1].width / 2 + tiLiFr.width / 2, iTY)
	DrawImageRect(tiLi, iTX + tiTE[iTL - 1].width / 2 + tiLiFr.width / 2, iTY + 160, 32, -(160 / (fTMEn / fTeEn)))
	DrawImage(tiExFr, iTX - tiTE[iTL - 1].width / 2 - tiExFr.width / 2, iTY)
	DrawImageRect(tiEx, iTX - tiTE[iTL - 1].width / 2 - tiExFr.width / 2, iTY + 160, 32, -(160 / (fTMEXP / fTEXP)))
End Function

Function ShowInfos()
	SetColor(250,40,40)
	Local ifound% = -1
	For Local i:Int = 0 To 2
		If ifound = -1 Then
			If Pl.tmAmmu[i].bKi = Pl.twChoWea.bAmKi Then
				If Pl.tmAmmu[i].iAmount > 0 Then
					ifound = i
				EndIf
			EndIf
		EndIf
	Next
	If ifound = -1 Then
		DrawText(Pl.twChoWea.sname + " ist Leer!", 1024 / 2 - TextWidth(Pl.twChoWea.sname + " ist Leer!") / 2, 768 / 2)
	Else
		DrawText(Pl.twChoWea.sname + ": " + Pl.twChoWea.bAmLoa + " / " + (Pl.tmAmmu[ifound].iAmount - 1), 100, 10)
	End If
	
	If Pl.twChoWea.bIsRel Then
		DrawText("Reloaded: " + (MilliSecs() - (Pl.twChoWea.iReloTi + Pl.twChoWea.iReloSt)), 250, 10) 
	EndIf
	DrawText("Welle: " + wave + "  Gegner: " + TEnemy.tlAllEn.count(), 400, 10)
	SetColor(255, 255, 255)
	If (iSLUL + iSLUT) >= MilliSecs() Then
		SetColor(250, 20, 20)
		DrawText("LEVEL UP", 1024 / 2 - TextWidth("LEVEL UP") / 2, 768 / 2)
		SetColor(255, 255, 255)
	End If
End Function
