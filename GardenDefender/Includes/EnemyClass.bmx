Type TEnemy
    Global tlAllEn:TList = New TList, tlAllDEn:TList = New TList
    Field iNeToMo%
    Field iFr%, iMaxFr%
    Field iAniTi%, iLasAni%
    Field iDeTi%, iIsDe%
    Field iDir:Int
    Field fEne:Float
    Field fXP:Float, fYP:Float
    Field fSp:Float
    Field iDead%
    Field bKi:Byte
    Field fStr:Float
    Field fExps:Float
    Field iLastAt%, iAtTime%
    Field tiIM:TImage

    Function Create:Tenemy()
        Local En:TEnemy = New TEnemy
        En.iDir = Rand(1, 3)
        En.bKi = Rand(1, 3)
        If En.bKi = 1 Then
            En.tiIM = tiEnBG
        ElseIf En.bKi = 2 Then
            En.tiIM = tiEnGW
		ElseIf En.bKi = 3 Then
			En.tiIM = tiEnZR
        EndIf
        En.iAtTime = Rand(5900, 7000)
        En.iLastAt = MilliSecs()
        En.fStr = Rnd(2, 8)
        En.fEne = 60 + 10 * En.fStr
        En.fExps = En.fStr * Rnd(0.5, 2)
        Select En.iDir
            Case 1
                En.fXP = 1034
                En.fYP = Rand(220, 768 - 220)

            Case 2
                En.fXP = Rand(300, 1024 - 300)
                En.fYP = 788

            Case 3
                En.fXP = -10
                En.fYP = Rand(220,768-220)
        End Select
        En.fSp = Rnd(2, 6 + iWaNu)
        If En.fSp > 10 Then En.fSp = 10
        En.iDead = 0
        En.iNeToMo = 1
        En.iFr = 0
        En.iMaxFr = 2
        En.iAniTi = 100
        En.iLasAni = MilliSecs()
        En.iDeTi = 1500
        Return En
    End Function

    Method New()
        tlAllEn.addlast(Self)
    End Method

    Method Destroy()
        tlAllEn.remove(Self)
    End Method

    Method DDestroy()
        tlAllDEn.remove(Self)
    End Method

    Function UpWa()
        If ((iWaTi + iLaWa) < MilliSecs()) Then
            iWaNu:+0.25
			wave:+1
            iWaAm = Rand(1, iWaNu + 1.0)
            For Local i% = 1 To iWaAm
                Tenemy.Create()
            Next
            iLaWa = MilliSecs()
        EndIf
    End Function

    Function UpdateEnemys()
        For Local En:TEnemy = EachIn tlAllDEn
            If En.iDead = 1
                En.fYP:+16
                En.iDead = 2
            EndIf
            If (En.iDeTi + En.iIsDe) < MilliSecs() Then
                En.DDestroy()
            EndIf
            En.Draw()
        Next
        For Local En:TEnemy = EachIn tlAllEn
            If En.fEne <= 0 Then
                En.iDead = 1
                tlAllDEn.AddLast(En)
                tlAllEn.Remove(En)
                En.iIsDe = MilliSecs()
            End If
            If En.iDead >= 1
                If (En.iDeTi + En.iIsDe) < MilliSecs() Then
                    En.Destroy()
                EndIf
            Else
                En.Move()
            EndIf
            En.Draw()
        Next
    End Function

    Method Move()
        If (Pythagoras(iTX, iTY, fXP, fYP) < 160 / 2) Then
            iNeToMo = 0
            If iNeToMo = 1 Then
                iLastAt = MilliSecs()
            EndIf
        EndIf
        If iNeToMo = 1 Then
            If fXP > 300 And fXP < 1024 - 300 Then
                If fYP > 220 And fYP < 768 - 220 Then
                    If iTX + 2 < fXP Then
                        iDir = 1
                    ElseIf iTX - 2 > fXP Then
                        iDir = 3
                    ElseIf iTY + 96 / 2 < fYP Then
                        If iDir <> 0 Then    iDir = 2
                    ElseIf iTY - 96 / 2 > fYP
                        If iDir <> 2 Then iDir = 0
                    EndIf
                End If
            End If

            Select iDir
                Case 0
                    fYP = fYP + calc_move(fSp)

                Case 1
                    fXP = fXP - calc_move(fSp)

                Case 2
                    fYP = fYP - calc_move(fSp)

                Case 3
                    fXP = fXP + calc_move(fSp)
            End Select
        Else
            If ((iAtTime + iLastAt) < MilliSecs()) Then
                Local fDamage:Float = fStr - (fStr / 100) * fTAP
                fTeEn = fTeEn - fDamage
                iDead = 1
                iIsDe = MilliSecs()
            End If
        EndIf

        If fXP < - 15 Then idead = 1
        If fYP < - 15 Then idead = 1
        If fXP > 1040 Then idead = 1
        If fYP > 790 Then idead = 1
    End Method

    Method Draw()
        If iDead = 0 Then
            If ((iAniTi + iLasAni) < MilliSecs()) Then
                iFr = (iFr + 1) Mod iMaxFr
                iLasAni = MilliSecs()
            End If
            Select iDir
                Case 0
                    SetRotation(90)
                Case 1
                    SetRotation(180)
                Case 2
                    SetRotation(270)
                Case 3
                    SetRotation(0)
            End Select
			 SetAlpha(0.25)
            SetColor(0, 0, 0)
            DrawImage(tiIM, fXP + 24, fYP + 24, iFr)
            SetAlpha(1)
            SetColor(255, 255, 255)
            DrawImage(tiIM, fXP + 8, fYP + 8, iFr)
			SetRotation(0)
        Else
            Select iDir
                Case 0
                    SetRotation(90)
                Case 1
                    SetRotation(180)
                Case 2
                    SetRotation(270)
                Case 3
                    SetRotation(0)
            End Select
            DrawImage(tiIM, fXP + 8, fYP + 8, 2)
            SetRotation(0)
        EndIf
    End Method
End Type

