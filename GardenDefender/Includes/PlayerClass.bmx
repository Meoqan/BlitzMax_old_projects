
Type TPlayer
	Global iMaxWea:Int = 3
	Field fXP:Float, fYP:Float
	Field iDir:Int = 0 '0 = Hoch, 1 = Rechts, 2 = Runter, 3 = Links
	Field iAniAr:Int[4]
	Field fSp:Float
	Field tIGIm:TInGameImage[3, 4]
	Field twWea:TWeapon[]
	Field iChoWea:Int = 0
	Field twChoWea:TWeapon
	Field tmAmmu:TAmmo[]
	
	Function Create:TPlayer()
		Local Pl:TPlayer = New TPlayer
		Pl.fXP = 1024 / 2
		Pl.fYP = 768 / 2
		Pl.fSp = 20
		For Local i:Int = 0 To 3
			Pl.tIGIm[0, i] = TInGameImage.Create(tiPL[0, i], 4, 110)
			Pl.tIGIm[1, i] = TInGameImage.Create(tiPL[1, i], 4, 110)
			Pl.tIGIm[2, i] = TInGameImage.Create(tiPL[2, i], 4, 110)
		Next
		Pl.twWea = New tweapon[TPlayer.iMaxWea]
		Pl.tmAmmu = New tammo[tplayer.iMaxWea]
		
		Pl.iAniAr[0] = 0
		Pl.iAniAr[1] = 1
		Pl.iAniAr[2] = 0
		Pl.iAniAr[3] = 2

		Pl.twWea[0] = TWeapon.Create("Pistole", 0, 10, 40, 500, 30, 1000) 'Pistole
		Pl.twWea[1] = TWeapon.Create("MP", 1, 40, 30, 200, 27, 1100) 'MP
		Pl.twWea[2] = TWeapon.Create("Shrotgewehr", 2, 7, 65, 700, 25, 1200)'Shotgun

		Pl.twChoWea = Pl.twWea[Pl.iChoWea]
		
		Pl.tmAmmu[0] = TAmmo.Create(2, 0) '9mm Munition
		Pl.tmAmmu[1] = TAmmo.Create(1, 1) 'MP
		Pl.tmAmmu[2] = TAmmo.Create(1, 2) 'Shotgun
		Return Pl
	End Function
	
	Method Update()
		If KeyDown(KEY_RIGHT) Or KeyDown(KEY_UP) Or KeyDown(KEY_DOWN) Or KeyDown(KEY_LEFT) Then
			tIGIm[iChoWea, iDir].Ani()
		Else
			tIGIm[iChoWea, iDir].iFr = 0
		EndIf
		Local fNewx:Float = fXP, fNewy:Float = fYP
		If KeyDown(KEY_UP) Then
			If iDir = 0 Then
				fNewy = fYP - calc_move(fSp)
			Else
				iDir = 0
				tIGIm[iChoWea, iDir].iFr = 0
			EndIf
		EndIf
		If KeyDown(KEY_RIGHT) Then
			If iDir = 1 Then
				fNewx = fXP + calc_move(fSp)
			Else
				iDir = 1
				tIGIm[iChoWea, iDir].iFr = 0
			EndIf
		End If
		If KeyDown(KEY_DOWN) Then
			If iDir = 2 Then
				fNewy = fYP + calc_move(fSp)
			Else
				iDir = 2
				tIGIm[iChoWea, iDir].iFr = 0
			EndIf
		End If
		If KeyDown(KEY_LEFT) Then
			If iDir = 3 Then
				fNewx = fXP - calc_move(fSp)
			Else
				iDir = 3
				tIGIm[iChoWea, iDir].iFr = 0
			EndIf
		End If

		If (fNewx < (0 * 32 + 48)) Then
			fNewx = (0 * 32 + 48)
		End If
		If (fNewx > (30 * 32 + 48)) Then
			fNewx = (30 * 32 + 48)
		End If
		If (fNewy < (0 * 32 + 48)) Then
			fNewy = (0 * 32 + 48)
		EndIf
		If (fNewy > (22 * 32 + 48)) Then
			fNewy = (22 * 32 + 48)
		EndIf
		If fNewx < 0 Then fNewx = 0
		If fNewy < 0 Then fNewy = 0
		If ((fNewy > (iTY + 160 / 2)) Or (fNewy < (iTY - 160 / 2))) Then
			fXP = fNewx
			fYP = fNewy
		Else
			If ((fNewx > (iTX + 96 / 2)) Or (fNewx < (iTX - 96 / 2))) Then
				fXP = fNewx
				fYP = fNewy
			End If
		EndIf
		If KeyHit(KEY_N) Then
			iChoWea:-1
			If iChoWea < 0 Then iChoWea = (iMaxWea-1)
			ChaWea()
		EndIf
		If KeyHit(KEY_M) Then
			iChoWea = (iChoWea + 1) Mod iMaxWea
			ChaWea()
		EndIf
		If KeyDown(Key_Space) Then
			twChoWea.shot(Self, iDir)
		EndIf
		twChoWea.update()
	End Method
	
	Method ChaWea()
		If twChoWea.bIsRel = 1 Then twChoWea.bIsRel = 0
		twChoWea = twWea[iChoWea]
	End Method
	
	Method Draw()
		DrawImage(tIGIm[iChoWea, iDir].tiIM, fXP + 8, fYP + 8,  iAniAr[tIGIm[iChoWea, iDir].iFr])
	End Method
End Type

Type TExtra
	Global tlAllEx:TList = New TList
	Field fXP:Float, fYP:Float
	Field iKi:Int
	Field fAmount:Float
	Field tiImg:TImage
	Field iTime:Int, iCreated:Int
	Field fYG:Float, iFly:Int
	
	Function Create:TExtra()
		Local Ex:TExtra = New TExtra
		Ex.fXP = Rand(200, 1024 - 200)
		Ex.fYP = Rand(0, 200)
		Ex.iFly = 1
		Ex.fYG = Rand(250, 768 - 200)
		Ex.iKi = Rand(1, 6)
		Select Ex.iKi
			Case 1
				Ex.tiImg = tiExtr[Ex.iKi - 1]
				Ex.fAmount = 1	
			Case 2
				Ex.tiImg = tiExtr[Ex.iKi - 1]
				Ex.fAmount = Rand(0.1, 0.3)
			Case 3
				Ex.tiImg = tiExtr[Ex.iKi - 1]
				Ex.fAmount = Rand(25, 60)
			Case 4
				Ex.tiImg = tiExtr[Ex.iKi - 1]
				Ex.fAmount = Rand(1, 4)
			Case 5
				Ex.tiImg = tiExtr[Ex.iKi - 1]
				Ex.fAmount = Rand(1, 4)
			Case 6
				Ex.tiImg = tiExtr[Ex.iKi - 1]
				Ex.fAmount = Rand(1, 4)
		End Select
		Ex.itime = Rand(10000, 25000)
		Return Ex
	End Function
	
	Method New()
		tlAllEx.AddLast(Self)
	End Method
	Method Destroy()
		tlAllEx.Remove(Self)
	End Method
	
	Function UpdateEx()
		For Local Ex:TExtra = EachIn tlAllEx
			Ex.move()
			Ex.Draw()
			If Ex.iFly = 0 Then
				If (Ex.iCreated + Ex.iTime) < MilliSecs() Then Ex.Destroy()
			EndIf
		Next
	End Function
	Method Move()
		If iFly = 1 Then
			If fYG > fYP Then
				fYP = fYP + calc_move(9)
			Else
				fYP = fYG
				If iFly = 1 Then
					iCreated = MilliSecs()
				End If
				iFly = 0
			EndIf
		End If
	End Method
Method Draw()
  If iFly = 1 Then
   SetAlpha(0.25)
   SetColor(0, 0, 0)
   DrawImage(tiImg, fXP + ((fYG - fYP) / 2), fYP + ((fYG - fYP) / 2))
   DrawImage(tiPara, fXP + ((fYG - fYP) / 2), fYP - 16 + ((fYG - fYP) / 2))
   SetColor(255, 255, 255)
   SetAlpha(1)
   DrawImage(tiImg, fXP, fYP)
   DrawImage(tiPara, fXP, fYP - 16)
  Else
   DrawImage(tiImg, fXP, fYP)
  EndIf
End Method
End Type