SuperStrict
SeedRnd MilliSecs()
AutoMidHandle(1)
?Win32
SetGraphicsDriver D3D9Max2DDriver() 
?MacOS
SetGraphicsDriver GLMax2DDriver() 
?
Graphics(1024,768)
SetBlend(ALPHABLEND)
Global iWaTi%,iLaWa%,iWaNu#,iWaAm%
Global iExtrTi%=11000,iExtrLa%
Global FTimer:TTimer=CreateTimer(65),msc%,lasttime%=MilliSecs(),itime%=MilliSecs(),iGSt%=0
Const iST_TI%=0,iST_GA%=1,iST_GAOVER%=2,iState_Win%=3
Global a:TPixmap[32]
For Local i%=0 To 31
a[i]=LoadPixmap("Data\img("+i+").png")
Next
Global tiShG:TImage = LI(a[20])
Global tiExtr:TImage[6]
tiExtr[0] = LI(a[21])
tiExtr[1]=LI(a[22])
tiExtr[2]=LI(a[23])
tiExtr[3]=LI(a[24])
tiExtr[4]=LI(a[25])
tiExtr[5]=LI(a[27])
Global tiPara:TImage=LI(a[2])
Global tiMap:TImage[2]
tiMap[0]=LI(a[0])
tiMap[1]=LI(a[26])
Global tiST:TImage=LAI(a[10],16,16,0,4)
Global tiPL:TImage[3,4]
tiPL[0,0]=LAI(a[17],32,48,0,3)
tiPL[0,1]=LAI(a[17],32,48,3,3)
tiPL[0,2]=LAI(a[17],32,48,6,3)
tiPL[0,3]=LAI(a[17],32,48,9,3)
tiPL[1,0]=LAI(a[19],32,48,0,3)
tiPL[1,1]=LAI(a[19],32,48,3,3)
tiPL[1,2]=LAI(a[19],32,48,6,3)
tiPL[1,3]=LAI(a[19],32,48,9,3)
tiPL[2,0]=LAI(a[18],32,48,0,3)
tiPL[2,1]=LAI(a[18],32,48,3,3)
tiPL[2,2]=LAI(a[18],32,48,6,3)
tiPL[2,3]=LAI(a[18],32,48,9,3)
Global tiTE:TImage[5]
For Local i%=0 To 4
tiTE[i]=LI(a[i+4])
Next
Global tiGO:TImage=LI(a[1]),tiLiFr:TImage=LI(a[13]),tiLi:TImage=LI(a[14]),tiExFr:TImage=LI(a[11]),tiEx:TImage=LI(a[12]),tiEnBG:TImage=LAI(a[9],32,32,0,3),tiEnZR:TImage=LAI(a[31],32,32,0,3),tiEnGW:TImage=LAI(a[3],32,32,0,3),tiTi:TImage=LI(a[28]),tiMe:TImage=LI(a[16]),tiMo:TImage=LI(a[15]),P:TPly,iTX%=1024/2,iTY%=96,fTeEn#=100,iTL%=1,iTML%=5,fTMEn%=100,fTAP#=10,fTEXP#=0.001,fTMEXP#=100,iSLUT%=1500,iSLUL%,iMhL%,iEnd%=0,tiWin:TImage=LI(a[29]),iNuked%=0,iNTi%=500,inSt%,tiNu:TImage=LI(a[30]),wave%
HideMouse()
Repeat
WaitTimer(FTimer)
lasttime=itime
itime=MilliSecs()
msc=itime-lasttime
Cls
Select iGSt
Case 0
iMhL=MouseHit(1)
DI(tiTi,1024/2,768/2)
DI(tiMe,1024/2+600/2,768/2+500/2.25)
DI(tiMo,MouseX()+tiMo.width/2,MouseY()+tiMo.height/2)
Select CCBu()
Case 1
iGSt=iST_GA
P = TPly.Create()
iLaWa=MilliSecs()
iWaTi=9000
iWaNu=0
fTeEn=100
iTL=1
iTML=5
fTMEn=100
fTAP=10
fTEXP=0.001
fTMEXP=100
wave=0
iExtrLa=MilliSecs()
Case 2
iEnd=1
End Select
Case 1
If KeyHit(KEY_ESCAPE) 
iGSt=iST_TI
For Local Shot:TSt=EachIn TSt.tlAShy
Shot.Destroy
Next
For Local E:TEey=EachIn TEey.tlAEn
E.Destroy()
Next
EndIf
DI(tiMap[1],1024/2,768/2)
DrawTree()
TExt.UpdateEx()
P.Update()
If (iExtrLa+iExtrTi)<MilliSecs() 
TExt.Create()
iExtrLa=MilliSecs()
EndIf
CCo()
TEey.UpWa()
TEey.UpEn()
TSt.updSts()
P.Draw()
DI(tiMap[0],1024/2,768/2)
If iNuked=1 
For Local E:TEey=EachIn TEey.tlAEn
E.fEne=0
Next
SetScale(2,2)
DI(tiNu,1024/2,768/2)
redr()
If (iNTi+inSt)<MilliSecs() 
iNuked=0
EndIf
EndIf
ShIn()
DoesLevel()
If fTeEn<=0 
iGSt=iST_GAOVER
EndIf
If wave>50 
iGSt=3
EndIf
Case 2
If KeyHit(KEY_ENTER) 
iGSt=iST_TI
For Local Shot:TSt = EachIn TSt.tlAShy
Shot.Destroy
Next
For Local E:TEey = EachIn TEey.tlAEn
E.Destroy()
Next
EndIf
SetScale(2,2)
DI(tiGO,1024/2,768/2)
Case 3
If KeyHit(KEY_ENTER) 
iGSt=iST_TI
For Local Shot:TSt=EachIn TSt.tlAShy
Shot.Destroy
Next
For Local E:TEey=EachIn TEey.tlAEn
E.Destroy()
Next
EndIf
DI(tiWin,1024/2,768/2)
End Select
redr()
Flip 0
Until ((iEnd=1) Or AppTerminate())
Function CCo()
For Local Shot:TSt=EachIn TSt.tlAShy
If shot.idead=0 
For Local E:TEey=EachIn TEey.tlAEn
If E.idead=0 
If Shot.iDead=0 
Local iFr%
If Shot.iFrShGu=0 
iFr=Shot.iDir
Else
iFr=0
EndIf
If ImagesCollide(Shot.tiIM,Shot.fXP,Shot.fYP,iFr,E.tiIM,E.fXP,E.fYP,E.iFr) 
E.fEne=E.fEne-Shot.fstr
Shot.idead=1
Shot.Destroy()
If E.fEne<=0 
If iTL <> iTML 
fTEXP=fTEXP+E.fExps
EndIf
EndIf
EndIf
EndIf
EndIf
Next
EndIf
Next
For Local Ex:TExt=EachIn TExt.tlAllEx
If Ex.iFly=0 
If ImagesCollide(P.tIGIm[P.iChoWea,P.iDir].tiIM,P.fXP+8,P.fYP+8,P.iAAr[P.tIGIm[P.iChoWea,P.iDir].iFr],Ex.tiImg,Ex.fXP,Ex.fYP,0) 
Select Ex.iKi
Case 1
iNuked=1
inSt=MilliSecs()
Case 2
P.tAmu[P.iChoWea].fStrFac:+Ex.fAmt
Case 3
fTeEn:+Ex.fAmt
If fTeEn>fTMEn  fTeEn=fTMEn
Case 4
P.tAmu[0].iAmt:+Ex.fAmt
Case 6
P.tAmu[1].iAmt:+Ex.fAmt
Case 5
P.tAmu[2].iAmt:+Ex.fAmt
End Select
Ex.Destroy()
EndIf
EndIf
Next
End Function
Function DoesLevel()
If fTEXP>=fTMEXP 
fTEXP=fTMEXP
If iTL<iTML 
iTL:+1
iSLUL=MilliSecs()
fTEXP=0.001
fTMEn=fTMEn+fTMEn/4
fTeEn=fTMEn
fTMEXP=fTMEXP+fTMEXP/2
fTAP=fTAP+fTAP/2
EndIf
EndIf
End Function
Function CCBu%()
If iMhL 
If MouseX()>725 And MouseX()<895 
If MouseY()>555 And MouseY()<595 
Return 1
EndIf
If MouseY()>620 And MouseY()<655 
Return 2
EndIf
EndIf
EndIf
If KeyHit(KEY_ENTER) Return 1
If KeyHit(KEY_ESCAPE) Return 2
Return 0
End Function
Function DrawTree()
DI(tiTE[iTL-1],iTX,iTY)
DI(tiLiFr,iTX+tiTE[iTL-1].width/2+tiLiFr.width/2,iTY)
DIRect(tiLi,iTX+tiTE[iTL-1].width/2+tiLiFr.width/2,iTY+160,32,-(160/(fTMEn/fTeEn)))
DI(tiExFr,iTX-tiTE[iTL-1].width/2-tiExFr.width/2,iTY)
DIRect(tiEx,iTX-tiTE[iTL-1].width/2-tiExFr.width/2,iTY+160,32,-(160/(fTMEXP/fTEXP)))
End Function
Function ShIn()
SetColor(250,40,40)
Local ifnd:Int = -1
For Local i%=0 To 2
If ifnd=-1 
If P.tAmu[i].bKi=P.twCWp.bAmKi 
If P.tAmu[i].iAmt>0 
ifnd=i
EndIf
EndIf
EndIf
Next
If ifnd=-1 
DrawText(P.twCWp.sname+" ist Leer!",1024/2-TextWidth(P.twCWp.sname+" ist Leer!")/2,768/2)
Else
DrawText(P.twCWp.sname + ": " + P.twCWp.bAmLoa + "/" + (P.tAmu[ifnd].iAmt - 1), 100, 10)
EndIf
If P.twCWp.bIsRel 
DrawText("Reloaded: "+(MilliSecs()-(P.twCWp.iReloTi+P.twCWp.iReloSt)),250,10) 
EndIf
DrawText("Welle: " + wave + "  Gegner: " + TEey.tlAEn.count(), 400, 10)
SetColor(255,255,255)
If (iSLUL+iSLUT)>=MilliSecs() 
SetColor(250,20,20)
DrawText("LEVEL UP",1024/2-TextWidth("LEVEL UP")/2,768/2)
SetColor(255,255,255)
EndIf
End Function
Function redr()
SR(0)
SetColor(255,255,255)
SetHandle(0.0,0.0)
SetAlpha(1.0)
SetScale(1.0,1.0)
SetOrigin(0.0,0.0)
End Function
Function camo#(speed#)
Return ((speed*Float(msc)/100.0))
End Function
Function Pythagoras%(iX1%,iY1%,iX2%,iY2%)
Return Sqr(((iX1-iX2)*(iX1-iX2))+((iY1-iY2)*(iY1-iY2)))
End Function
Type TEey
Global tlAEn:TList=New TList,tlAllDEn:TList=New TList
Field iNeToMo%,iFr%,iMaxFr%,iAniTi%,iLasAni%,iDeTi%,iIsDe%,iDir%,fEne#,fXP#,fYP#,fSp#,iDead%,bKi%,fStr#,fExps#,iLastAt%,iAtTime%,tiIM:TImage
Function Create:TEey()
Local E:TEey=New TEey
E.iDir=Rand(1,3)
E.bKi=Rand(1,3)
If E.bKi=1 
E.tiIM=tiEnBG
ElseIf E.bKi=2 
E.tiIM=tiEnGW
ElseIf E.bKi=3 
E.tiIM=tiEnZR
EndIf
E.iAtTime=Rand(5900,7000)
E.iLastAt=MilliSecs()
E.fStr=Rnd(2,8)
E.fEne=60+10*E.fStr
E.fExps=E.fStr*Rnd(0.5,2)
Select E.iDir
Case 1
E.fXP=1034
E.fYP=Rand(220,768-220)
Case 2
E.fXP=Rand(300,1024-300)
E.fYP=788
Case 3
E.fXP=-10
E.fYP=Rand(220,768-220)
End Select
E.fSp=Rnd(2,6+iWaNu)
If E.fSp>14  E.fSp=14
E.iDead=0
E.iNeToMo=1
E.iFr=0
E.iMaxFr=2
E.iAniTi=100
E.iLasAni=MilliSecs()
E.iDeTi=1500
Return E
End Function
Method New()
tlAEn.addlast(Self)
End Method
Method Destroy()
tlAEn.remove(Self)
End Method
Method DDestroy()
tlAllDEn.remove(Self)
End Method
Function UpWa()
If ((iWaTi+iLaWa)<MilliSecs()) 
iWaNu:+0.35
wave:+1
iWaAm=Rand(1,iWaNu+1.0)
For Local i%=1 To iWaAm
TEey.Create()
Next
iLaWa=MilliSecs()
EndIf
End Function
Function UpEn()
For Local E:TEey=EachIn tlAllDEn
If E.iDead=1
E.fYP:+16
E.iDead=2
EndIf
If (E.iDeTi+E.iIsDe)<MilliSecs() 
E.DDestroy()
EndIf
E.Draw()
Next
For Local E:TEey=EachIn tlAEn
If E.fEne<=0 
E.iDead=1
tlAllDEn.AddLast(E)
tlAEn.Remove(E)
E.iIsDe=MilliSecs()
EndIf
If E.iDead>=1
If (E.iDeTi+E.iIsDe)<MilliSecs() 
E.Destroy()
EndIf
Else
E.Move()
EndIf
E.Draw()
Next
End Function
Method Move()
If (Pythagoras(iTX,iTY,fXP,fYP)<160/2) 
iNeToMo=0
If iNeToMo=1 
iLastAt=MilliSecs()
EndIf
EndIf
If iNeToMo=1 
If fXP>300 And fXP<1024-300 
If fYP>220 And fYP<768-220 
If iTX+2<fXP 
iDir=1
ElseIf iTX-2>fXP 
iDir=3
ElseIf iTY+96/2<fYP 
If iDir <> 0     iDir=2
ElseIf iTY-96/2>fYP
If iDir <> 2  iDir=0
EndIf
EndIf
EndIf
Select iDir
Case 0
fYP=fYP+camo(fSp)
Case 1
fXP=fXP-camo(fSp)
Case 2
fYP=fYP-camo(fSp)
Case 3
fXP=fXP+camo(fSp)
End Select
Else
If ((iAtTime+iLastAt)<MilliSecs()) 
Local fDamage#=fStr-(fStr/100)*fTAP
fTeEn=fTeEn-fDamage
iDead=1
iIsDe=MilliSecs()
EndIf
EndIf
If fXP <-15  idead=1
If fYP <-15  idead=1
If fXP>1040  idead=1
If fYP>790  idead=1
End Method
Method Draw()
Select iDir
Case 0
SR(90)
Case 1
SR(180)
Case 2
SR(270)
Case 3
SR(0)
End Select
If iDead=0 
If ((iAniTi+iLasAni)<MilliSecs()) 
iFr=(iFr+1) Mod iMaxFr
iLasAni=MilliSecs()
EndIf
SetAlpha(0.25)
SetColor(0,0,0)
DI(tiIM,fXP+24,fYP+24,iFr)
SetAlpha(1)
SetColor(255,255,255)
DI(tiIM,fXP+8,fYP+8,iFr)
SR(0)
Else
DI(tiIM,fXP+8,fYP+8,2)
EndIf
SR(0)
End Method
End Type
Type TInGI
Global tlAIGIm:TList=New TList
Field tiIM:TImage,iMaxFr%,iFr%,iTimer%,iLastFrUp%
Function Create:TInGI(pImage:TImage, pMxFra:Int = 0, PTimer:Int = 0)
Local MIm:TInGI=New TInGI
MIm.tiIM=pImage
MIm.iMaxFr = pMxFra
MIm.iTimer=PTimer
MIm.iFr=0
MIm.iLastFrUp=MilliSecs()
Return MIm
End Function
Method Ani()
If iMaxFr <> 0 
If ((iTimer+iLastFrUp)<MilliSecs()) 
iFr=(iFr+1) Mod iMaxFr
iLastFrUp=MilliSecs()
EndIf
EndIf
End Method
Method New()
tlAIGIm.AddLast(Self)
End Method
Method Destroy()
tlAIGIm.Remove(Self)
End Method
End Type
Type TPly
Global iMaxWea%=3
Field fXP#,fYP#,iDir%=0,iAAr%[4],fSp#,tIGIm:TInGI[3,4],twWea:TWpn[],iChoWea%=0,twCWp:TWpn,tAmu:TAm[]
Function Create:TPly()
Local P:TPly = New TPly
P.fXP=1024/2
P.fYP=768/2
P.fSp=20
For Local i:Int = 0 To 3
P.tIGIm[0,i]=TInGI.Create(tiPL[0,i],4,110)
P.tIGIm[1, i] = TInGI.Create(tiPL[1, i], 4, 110)
P.tIGIm[2,i]=TInGI.Create(tiPL[2,i],4,110)
Next
P.twWea=New TWpn[TPly.iMaxWea]
P.tAmu=New TAm[TPly.iMaxWea]
P.iAAr[0]=0
P.iAAr[1] = 1
P.iAAr[2] = 0
P.iAAr[3]=2
P.twWea[0]=TWpn.Create("Pistole",0,10,40,500,30,1000)
P.twWea[1]=TWpn.Create("MP",1,40,30,200,27,1100)
P.twWea[2]=TWpn.Create("Shrotgewehr",2,7,65,700,25,1200)
P.twCWp=P.twWea[P.iChoWea]
P.tAmu[0]=TAm.Create(2,0)
P.tAmu[1]=TAm.Create(0,1)
P.tAmu[2]=TAm.Create(0,2)
Return P
End Function
Method Update()
If KeyDown(KEY_RIGHT) Or KeyDown(KEY_UP) Or KeyDown(KEY_DOWN) Or KeyDown(KEY_LEFT) 
tIGIm[iChoWea,iDir].Ani()
Else
tIGIm[iChoWea,iDir].iFr=0
EndIf
Local fNewx#=fXP,fNewy#=fYP
If KeyDown(KEY_UP) 
If iDir=0 
fNewy=fYP-camo(fSp)
Else
iDir=0
tIGIm[iChoWea,iDir].iFr=0
EndIf
EndIf
If KeyDown(KEY_RIGHT) 
If iDir=1 
fNewx=fXP+camo(fSp)
Else
iDir=1
tIGIm[iChoWea,iDir].iFr=0
EndIf
EndIf
If KeyDown(KEY_DOWN) 
If iDir=2 
fNewy=fYP+camo(fSp)
Else
iDir=2
tIGIm[iChoWea,iDir].iFr=0
EndIf
EndIf
If KeyDown(KEY_LEFT) 
If iDir=3 
fNewx=fXP-camo(fSp)
Else
iDir=3
tIGIm[iChoWea,iDir].iFr=0
EndIf
EndIf
If (fNewx<(0*32+48)) 
fNewx=(0*32+48)
EndIf
If (fNewx>(30*32+48)) 
fNewx=(30*32+48)
EndIf
If (fNewy<(0*32+48)) 
fNewy=(0*32+48)
EndIf
If (fNewy>(22*32+48)) 
fNewy=(22*32+48)
EndIf
If fNewx<0  fNewx=0
If fNewy<0  fNewy=0
If ((fNewy>(iTY+160/2)) Or (fNewy<(iTY-160/2))) 
fXP=fNewx
fYP=fNewy
Else
If ((fNewx>(iTX+96/2)) Or (fNewx<(iTX-96/2))) 
fXP=fNewx
fYP=fNewy
EndIf
EndIf
If KeyHit(KEY_N) 
iChoWea:-1
If iChoWea<0  iChoWea=(iMaxWea-1)
ChaWea()
EndIf
If KeyHit(KEY_M) 
iChoWea=(iChoWea+1) Mod iMaxWea
ChaWea()
EndIf
If KeyDown(Key_Space) 
twCWp.shot(Self,iDir)
EndIf
twCWp.update()
End Method
Method ChaWea()
If twCWp.bIsRel=1  twCWp.bIsRel=0
twCWp=twWea[iChoWea]
End Method
Method Draw()
DI(tIGIm[iChoWea,iDir].tiIM,fXP+8,fYP+8,iAAr[tIGIm[iChoWea,iDir].iFr])
End Method
End Type
Type TExt
Global tlAllEx:TList=New TList
Field fXP#,fYP#,iKi%,fAmt#,tiImg:TImage,iTime%,iCreated%,fYG#,iFly%
Function Create:TExt()
Local Ex:TExt=New TExt
Ex.fXP=Rand(200,1024-200)
Ex.fYP=Rand(0,200)
Ex.iFly=1
Ex.fYG=Rand(250,768-200)
Ex.iKi=Rand(1,6)
Select Ex.iKi
Case 1
Ex.tiImg=tiExtr[Ex.iKi-1]
Ex.fAmt=1
Case 2
Ex.tiImg=tiExtr[Ex.iKi-1]
Ex.fAmt=Rand(0.1,0.3)
Case 3
Ex.tiImg=tiExtr[Ex.iKi-1]
Ex.fAmt=Rand(25,60)
Case 4
Ex.tiImg=tiExtr[Ex.iKi-1]
Ex.fAmt=Rand(1,4)
Case 5
Ex.tiImg=tiExtr[Ex.iKi-1]
Ex.fAmt=Rand(1,4)
Case 6
Ex.tiImg=tiExtr[Ex.iKi-1]
Ex.fAmt=Rand(1,4)
End Select
Ex.itime=Rand(10000,25000)
Return Ex
End Function
Method New()
tlAllEx.AddLast(Self)
End Method
Method Destroy()
tlAllEx.Remove(Self)
End Method
Function UpdateEx()
For Local Ex:TExt=EachIn tlAllEx
Ex.move()
Ex.Draw()
If Ex.iFly=0 
If (Ex.iCreated+Ex.iTime)<MilliSecs()  Ex.Destroy()
EndIf
Next
End Function
Method Move()
If iFly=1 
If fYG>fYP 
fYP=fYP+camo(9)
Else
fYP=fYG
If iFly=1 
iCreated=MilliSecs()
EndIf
iFly=0
EndIf
EndIf
End Method
Method Draw()
If iFly=1 
SetAlpha(0.25)
SetColor(0,0,0)
DI(tiImg,fXP+((fYG-fYP)/2),fYP+((fYG-fYP)/2))
DI(tiPara,fXP+((fYG-fYP)/2),fYP-16+((fYG-fYP)/2))
SetColor(255,255,255)
SetAlpha(1)
DI(tiImg,fXP,fYP)
DI(tiPara,fXP,fYP-16)
Else
DI(tiImg,fXP,fYP)
EndIf
End Method
End Type
Type TWpn
Field bAmKi%,bAmLoa%,bMaAmm%,fStr#,iCad%,iLasSho%,iBulSp%,iReloTi%,iReloSt%,bIsRel%,sName$
Function Create:TWpn(pname$,pAK%,pMA%,pSt#,pCa%,pBuS%,pRelTi%)
Local Wea:TWpn=New TWpn
Wea.sname=pname
Wea.bAmKi=pAK
Wea.bAmLoa=pMA
Wea.bMaAmm=pMA
Wea.fStr=pSt
Wea.iCad=pCa
Wea.iLasSho=MilliSecs()
Wea.iBulSp=pBuS
Wea.iReloTi=pRelTi
Wea.bIsRel=0
Return Wea
End Function
Method Shot(pPlayer:TPly,pDirection%)
If bAmLoa>0 
If (iCad+iLasSho)<MilliSecs() 
Local ifnd%=-1
For Local i%=0 To 2
If ifnd=-1 
If pPlayer.tAmu[i].bKi=bAmKi 
If pplayer.tAmu[i].iAmt>0 
ifnd=i
EndIf
EndIf
EndIf
Next
If ifnd >-1 
If bAmKi=2 
For Local i%=1 To 4
TSt.Create(pPlayer.fXP,pPlayer.fYP,pDirection,iBulSp,(fStr*pPlayer.tAmu[ifnd].fStrFac),1)
Next
Else
TSt.Create(pPlayer.fXP,pPlayer.fYP,pDirection,iBulSp,(fStr*pPlayer.tAmu[ifnd].fStrFac))
EndIf
bAmLoa:-1
EndIf
iLasSho=MilliSecs()
EndIf
Else
If bIsRel=0 Or bIsRel=2 
Local ifnd%=-1
For Local i%=0 To 2
If ifnd=-1 
If pPlayer.tAmu[i].bKi=bAmKi 
If pplayer.tAmu[i].iAmt>0 
ifnd=i
EndIf
EndIf
EndIf
Next
If ifnd <> -1 
If bIsRel=0 
pplayer.tAmu[ifnd].iAmt:-1
EndIf
bIsRel=1
iReloSt=MilliSecs()
EndIf
EndIf
EndIf
End Method
Method Update()
If bIsRel=1 
If ((iReloTi+iReloSt)<MilliSecs()) 
bIsRel=0
bAmLoa=bMaAmm
EndIf
EndIf
End Method
End Type
Type TAm
Field iAmt%,bKi%,fStrFac#
Function Create:TAm(pAmount%,pKind%)
Local Am:TAm=New TAm
Am.iAmt = pAmount
Am.bKi=pKind
Am.fStrFac=1.0
Return Am
End Function
End Type
Type TSt
Global tlAShy:TList=New TList
Field fXP#,fYP#,iFrShGu%,iSpd%,fSiSpd%=0,fStr#,iDir%,tiIM:TImage,iDead%,iFr%
Function Create:TSt(px#,py#,pDirection%,pSpeed%,pSt#,pisShotgun%=0)
Local Sht:TSt=New TSt
If pDirection=1 Or pDirection=3 
py:+8
EndIf
Sht.fXP=px
Sht.fYP=py
Sht.iFrShGu=pisShotgun
Sht.fSiSpd=Rand(-4,4)
If pisShotgun=1 
Sht.tiIM=tiShG
Else
Sht.tiIM=tiST
EndIf
Sht.iDir=pdirection
Sht.fStr=pSt
Sht.iSpd=pSpeed
Sht.idead=0
Return Sht
End Function
Method New()
tlAShy.addlast(Self)
End Method
Method Destroy()
tlAShy.remove(Self)
End Method
Function updSts()
For Local Sht:TSt=EachIn tlAShy
Sht.Move()
Sht.Draw()
If Sht.idead=1  Sht.destroy()
Next
End Function
Method Move()
If iFrShGu=1 
Select iDir
Case 0
fYP=fYP-camo(iSpd)
fXP=fXP+camo(fSiSpd+Rnd(-4,4))
Case 1
fXP=fXP+camo(iSpd)
fYP=fYP+camo(fSiSpd+Rnd(-4,4))
Case 2
fYP=fYP+camo(iSpd)
fXP=fXP+camo(fSiSpd+Rnd(-4,4))
Case 3
fXP=fXP-camo(iSpd)
fYP=fYP+camo(fSiSpd+Rnd(-4,4))
End Select
Else
Select iDir
Case 0
fYP=fYP-camo(iSpd)
Case 1
fXP=fXP+camo(iSpd)
Case 2
fYP=fYP+camo(iSpd)
Case 3
fXP=fXP-camo(iSpd)
End Select
EndIf
If fXP<0  idead=1
If fYP<0  idead=1
If fXP>1024  idead=1
If fYP>768  idead=1
End Method
Method Draw()
If iFrShGu=0 
DI(tiIM,fXP+8,fYP+8,iDir)
Else
DI(tiIM,fXP+8,fYP+8)
EndIf
End Method
End Type
Function LI:TImage(x:TPixmap)
Return LoadImage(x)
End Function
Function DI(i:TImage,x#,y#,f%=0)
DrawImage(i,x,y,f)
End Function
Function DIrect(i:TImage,x#,y#,w#,h#,f%=0)
DrawImageRect(i,x,y,w,h,f)
End Function
Function LAI:TImage(x:TPixmap,cw%,ch%,fc%,cc%,f%=0)
Return LoadAnimImage(x,cw,ch,fc,cc,f)
End Function
Function SR(x#)
SetRotation(x)
End Function