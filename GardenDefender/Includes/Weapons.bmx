
Type TWeapon
	Field bAmKi:Byte
	Field bAmLoa:Byte
	Field bMaAmm:Byte
	Field fStr:Float
	Field iCad:Int
	Field iLasSho:Int
	Field iBulSp:Int
	Field iReloTi:Int
	Field iReloSt:Int
	Field bIsRel:Byte
	Field sName:String
	
	Function Create:TWeapon(pname:String, pAK:Byte, pMA:Byte, pSt:Float, pCa:Int, pBuS:Int, pRelTi:Int)
		Local Wea:TWeapon = New TWeapon
		Wea.sname = pname
		Wea.bAmKi = pAK
		Wea.bAmLoa = pMA
		Wea.bMaAmm = pMA
		Wea.fStr = pSt
		Wea.iCad = pCa
		Wea.iLasSho = MilliSecs()
		Wea.iBulSp = pBuS
		Wea.iReloTi = pRelTi
		Wea.bIsRel = 0
		Return Wea
	End Function
	
	Method Shot(pPlayer:TPlayer, pDirection:Int)
		If bAmLoa > 0 Then
			If (iCad + iLasSho) < MilliSecs() Then
				Local iFound:Int = -1
				For Local i:Int = 0 To 2
					If ifound = -1 Then
						If pPlayer.tmAmmu[i].bKi = bAmKi Then
							If pplayer.tmAmmu[i].iAmount > 0 Then
								ifound = i
							EndIf
						EndIf
					EndIf
				Next
				If iFound > - 1 Then
					If bAmKi = 2 Then
						For Local i:Int = 1 To 4
							TShoot.Create(pPlayer.fXP, pPlayer.fYP, pDirection, iBulSp, (fStr * pPlayer.tmAmmu[iFound].fStrFac), 1)
						Next
					Else
						TShoot.Create(pPlayer.fXP, pPlayer.fYP, pDirection, iBulSp, (fStr * pPlayer.tmAmmu[iFound].fStrFac))
					EndIf
					bAmLoa:-1
				EndIf
				iLasSho = MilliSecs()
			EndIf
		Else
			If bIsRel = 0 Or bIsRel = 2 Then
				Local iFound:Int = -1
				For Local i:Int = 0 To 2
					If iFound = -1 Then
						If pPlayer.tmAmmu[i].bKi = bAmKi Then
							If pplayer.tmAmmu[i].iAmount > 0 Then
								ifound = i
							EndIf
						EndIf
					EndIf
				Next
				If ifound <> -1 Then
					If bIsRel = 0 Then
						pplayer.tmAmmu[ifound].iAmount:-1
					EndIf
					bIsRel = 1
					iReloSt = MilliSecs()
				EndIf
			EndIf
		EndIf
	End Method
	Method Update()
		If bIsRel = 1 Then
			If ((iReloTi + iReloSt) < MilliSecs()) Then
				bIsRel = 0
				bAmLoa = bMaAmm
			EndIf
		EndIf
	End Method
End Type
Type TAmmo
	Field iAmount:Int
	Field bKi:Byte '1 = für Pistole, 2 = für UZI, 3 = für Shotgun
	Field fStrFac:Float
	
	Function Create:TAmmo(pAmount:Int, pKind:Byte)
		Local Am:TAmmo = New tAmmo
		Am.iAmount = pAmount
		Am.bKi = pKind
		Am.fStrFac = 1.0
		Return Am
	End Function
End Type
Type TShoot
	Global tlAllShoots:TList = New TList
	Field fXP:Float
	Field fYP:Float
	Field iFrShGu:Int
	Field iSpd:Int, fSiSpd:Int = 0
	Field fStr:Float
	Field iDir:Int
	Field tiIM:TImage
	Field iDead:Int
	Field iFr:Int
	Function Create:TShoot(px:Float, py:Float, pDirection:Int, pSpeed:Int, pSt:Float, pisShotgun:Int = 0)
		Local Sht:TShoot = New TShoot
		If pDirection = 1 Or pDirection = 3 Then
			py:+8
		End If
		Sht.fXP = px
		Sht.fYP = py
		Sht.iFrShGu = pisShotgun
		Sht.fSiSpd = Rand(-4, 4)
		If pisShotgun = 1 Then
			Sht.tiIM = tiShG
		Else
			Sht.tiIM = tiST
		EndIf
		Sht.iDir = pdirection
		Sht.fStr = pSt
		Sht.iSpd = pSpeed
		Sht.idead = 0
		Return Sht
	End Function
	Method New()
		tlallShoots.addlast(Self)
	End Method
	Method Destroy()
		tlallshoots.remove(Self)
	End Method
	Function UpdateShoots()
		For Local Sht:TShoot = EachIn tlallshoots
			Sht.Move()
			Sht.Draw()
			If Sht.idead = 1 Then Sht.destroy()
		Next
	End Function
	Method Move()
		If iFrShGu = 1 Then
			Select iDir
				Case 0
					fYP = fYP - calc_move(iSpd)
					fXP = fXP + calc_move(fSiSpd + Rnd(-4, 4))
				Case 1
					fXP = fXP + calc_move(iSpd)
					fYP = fYP + calc_move(fSiSpd + Rnd(-4, 4))
				Case 2
					fYP = fYP + calc_move(iSpd)
					fXP = fXP + calc_move(fSiSpd + Rnd(-4, 4))
				Case 3
					fXP = fXP - calc_move(iSpd)
					fYP = fYP + calc_move(fSiSpd + Rnd(-4, 4))
			End Select
		Else
			Select iDir
				Case 0
					fYP = fYP - calc_move(iSpd)
				Case 1
					fXP = fXP + calc_move(iSpd)
				Case 2
					fYP = fYP + calc_move(iSpd)
				Case 3
					fXP = fXP - calc_move(iSpd)
			End Select
		EndIf
		If fXP < 0 Then idead = 1
		If fYP < 0 Then idead = 1
		If fXP > 1024 Then idead = 1
		If fYP > 768 Then idead = 1
	End Method
	
	Method Draw()
		If iFrShGu = 0 Then
			DrawImage(tiIM, fXP + 8, fYP + 8, iDir)
		Else
			DrawImage(tiIM, fXP + 8, fYP + 8)
		EndIf
	End Method
End Type
	
