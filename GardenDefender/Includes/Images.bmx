
Type TInGameImage
	Global tlAllIGIm:TList = New TList
	Field tiIM:TImage
	Field iMaxFr:Int
	Field iFr:Int
	Field iTimer:Int, iLastFrUp:Int
	
	Function Create:TInGameImage(pImage:TImage, pMaxFrames:Int = 0, PTimer:Int = 0)
		Local MyIm:TInGameImage = New TInGameImage
		MyIm.tiIM = pImage
		MyIm.iMaxFr = pMaxFrames
		MyIm.iTimer = PTimer
		MyIm.iFr = 0
		MyIm.iLastFrUp = MilliSecs()
		Return MyIm
	End Function
	
	Method Ani()
		If iMaxFr <> 0 Then
			If ((iTimer + iLastFrUp) < MilliSecs()) Then
				iFr = (iFr + 1) Mod iMaxFr
				iLastFrUp = MilliSecs()
			EndIf
		End If
	End Method
	
	Method New()
		tlAllIGIm.AddLast(Self)
	End Method
	
	Method Destroy()
		tlAllIGIm.Remove(Self)
	End Method

End Type