Global calc_entferung:Float, calc_winkel:Float, calc_xx:Float, calc_xy:Float, calc_rotation:Float, calc_oldrotation:Float

Function calc_pos(x:Float, y:Float)
	calc_entferung = Sqr((x) ^ 2 + (y) ^ 2)
	calc_winkel = -ATan2(x, y)
	calc_xx = Sin(calc_rotation - calc_winkel) * calc_entferung
	calc_xy = Cos(calc_rotation - calc_winkel) * calc_entferung
End Function
Function get_x:Float()
	Return calc_xx
End Function
Function get_y:Float()
	Return calc_xy
End Function

Function MidLoadImage:TImage(url:Object, flags:Int = -1)
	Local img:TImage = LoadImage(url)
	img.handle_x = img.width / 2.0
	img.handle_y = img.height / 2.0
	Return img
End Function

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
	SetHandle(0, 0)
	
	Local entferung:Float = Sqr((nowhandle_X) ^ 2 + (nowhandle_Y) ^ 2)
	Local winkel:Float = ATan2(nowhandle_X, nowhandle_Y) + 90
	DrawImage(bild, x + (Cos(GetRotation() - winkel) * (entferung * nowscale_X)), y + (Sin(GetRotation() - winkel) * (entferung * nowscale_Y)))
	
	SetScale(nowscale_x, nowscale_Y)
	SetHandle(nowhandle_X, nowhandle_Y)
End Function

Function ismouseover:Byte(x:Int, y:Int, l:Int, w:Int)
	If x < MouseX() And x + l > MouseX() And y < MouseY() And y + w > MouseY() Then Return 1 Else Return 0
End Function

Function reset_draw()
	SetRotation(0)
	SetColor(255, 255, 255)
	SetHandle(0.0, 0.0)
	SetAlpha(1.0)
	SetScale(1.0, 1.0)
	SetOrigin(0.0, 0.0)
End Function

Function calc_move:Float(speed:Float)
	If speed <> 0 Then Return ((speed * Float(msc) / 100.0)) Else Return 0
End Function

Function calc_keymove:Float(entferung:Float, timing:Float)
	If entferung <> 0 And timing > 0 Then Return ((entferung / timing) * Float(msc)) Else Return 0
End Function

Function cor_rad:Float(r:Float)
	While r < - 180.0
		r = r + 360.0
	Wend
	While r > 180.0
		r = r - 360.0
	Wend
	Return r
End Function

Function BufferTower:Float(turmwinkel:Float, zielwinkel:Float, drehspeed:Float)
	Local totalwinkel:Float = turmwinkel - zielwinkel + 180
	While totalwinkel < - 180
		totalwinkel = totalwinkel + 360
	Wend
	While totalwinkel > 180
		totalwinkel = totalwinkel - 360
	Wend
	Local bufftore:Float, test:Int = 0
	If totalwinkel > drehspeed Then bufftore = -drehspeed ; test = 1
	If totalwinkel < - drehspeed Then bufftore = drehspeed ; test = 1
	If test = 0 Then bufftore = -totalwinkel
	Return bufftore
End Function

Function BufferTarget:Int(turmwinkel:Float, zielwinkel:Float, drehschalter:Float)
	Local totalwinkel:Float = turmwinkel - zielwinkel + 180
	While totalwinkel < - 180
		totalwinkel = totalwinkel + 360
	Wend
	While totalwinkel > 180
		totalwinkel = totalwinkel - 360
	Wend
	Local bufftore:Int, test:Int = 0
	If totalwinkel > drehschalter Then test = 1
	If totalwinkel < - drehschalter Then test = 1
	If test = 0 Then bufftore = 1
	Return bufftore
End Function

Function color:Int(R:Byte, G:Byte, B:Byte, A:Byte)
	Local nextcolor:Int
	Local bytes2:Byte Ptr = Varptr nextcolor
	bytes2[0] = R
	bytes2[1] = G
	bytes2[2] = B
	bytes2[3] = A
	
	Return nextcolor
End Function

Function DrawBox(x:Float, y:Float, w:Float, h:Float)
	DrawRect(x, y, 2, h)
	DrawRect(x, y, w, 2)
	
	DrawRect(x + w - 2, y, 2, h)
	DrawRect(x, y + h - 2, w, 2)
End Function

Function LinesInterselect:Byte(ax:Float, ay:Float, bx:Float, by:Float, cx:Float, cy:Float, dx:Float, dy:Float)
	Local rn:Float = (ay - cy) * (dx - cx) - (ax - cx) * (dy - cy)
	Local rd:Float = (bx - ax) * (dy - cy) - (by - ay) * (dx - cx)
	If rd = 0
		Return False
	Else
		Local sn:Float = (ay - cy) * (bx - ax) - (ax - cx) * (by - ay)
		Local intersection_ab:Float = rn / rd
		Local intersection_cd:Float = sn / rd
		Local intersection_x:Float = ax + intersection_ab * (bx - ax)
		Local intersection_y:Float = ay + intersection_ab * (by - ay)
		If intersection_ab > 0 And intersection_ab < 1 And intersection_cd > 0 And intersection_cd < 1 Then Return True
	EndIf
End Function



Const ALIGN_LEFT:Int = 0
Const ALIGN_CENTER:Int = 1
Const ALIGN_RIGHT:Int = 2
Const ALIGN_JUSTIFY:Int = 3
Function DrawMultilineText(str:String, x:Int, y:Int, width:Int, align:Int=ALIGN_LEFT)
	Local lastBreak:Int=-1, lastBegin:Int = 0, substr:String
	Local i:Int, char:Int, nx:Int
	
	For i=0 To str.length-1
		char = str[i]
		If i=str.length-1 Then char = 10
		If char = 32 Or char = 10 Then
			lastBreak = i
		EndIf
		
		If TextWidth( str[lastBegin..i+2].Trim() ) > width Or char = 10 Then
			If lastBreak=-1 Then lastBreak = i
			substr = Trim(str[lastBegin..lastBreak+1])

			lastBegin = lastBreak+1
			lastBreak = -1
			
			Select align
				Case ALIGN_LEFT
					DrawText substr, x, y
					
				Case ALIGN_CENTER
					nx = x+width/2-TextWidth(substr)/2
					DrawText substr, nx, y
				Case ALIGN_RIGHT
					nx = x+width-TextWidth(substr)
					DrawText substr, nx, y
					
				Case ALIGN_JUSTIFY
					If char<>10 Then
						DrawTextJustify substr, x, y, width
					Else
						DrawText substr, x, y
					EndIf
			
			End Select
			y :+ TextHeight(substr)
		EndIf
		
	Next
End Function

Function DrawTextJustify(str:String, x:Int, y:Int, width:Int)
	
	Local arr:String[] = str.split(" ")
	Local aStr:String = str.Replace(" ", "")
	Local spaceWidth:Float = (width-TextWidth(aStr)) /  Float(arr.length-1)
	Local fx:Float = x, i:Int
	
	For i=0 To arr.length-1
		DrawText arr[i], Int(fx), y
		fx :+ TextWidth(arr[i])+spaceWidth
	Next

End Function


Function md5:String(sMessage:String)

	Local nblk:Int = ((Len(sMessage:String) + 8) Shr 6) + 1
	Local MD5_x:Int[(nblk * 16)]
	Local MD5_a:Int = 1732584193
	Local MD5_b:Int = -271733879
	Local MD5_c:Int = -1732584194
	Local MD5_d:Int = 271733878
	Local MD5_AA:Int = 0
	Local MD5_BB:Int = 0
	Local MD5_CC:Int = 0
	Local MD5_DD:Int = 0
	Local i:Int = 0
      
	For i = 0 To nblk * 16 - 1
   
		MD5_x[i] = 0
   
	Next
   
	For i = 0 To (Len(sMessage:String) - 1)
   
		MD5_x[(i Shr 2)] = MD5_x[(i Shr 2)] | (Asc(Mid(sMessage:String, (i + 1), 1)) Shl ((i Mod 4) * 8))
     
	Next
   
	MD5_x[(i Shr 2)] = MD5_x[(i Shr 2)] | (128 Shl (((i) Mod 4) * 8))
	MD5_x[nblk * 16 - 2] = Len(sMessage:String) * 8

	For Local k:Int = 0 To (nblk * 16 - 1) Step 16
   
		MD5_AA = MD5_a
		MD5_BB = MD5_b
		MD5_CC = MD5_c
		MD5_DD = MD5_d

    'Round 1
        MD5_a = MD5_FF(MD5_a, MD5_b, MD5_c, MD5_d, MD5_x[k + 0], 7, -680876936)      '&HD76AA478
        MD5_d = MD5_FF(MD5_d, MD5_a, MD5_b, MD5_c, MD5_x[k + 1], 12, -389564586)   '&HE8C7B756
        MD5_c = MD5_FF(MD5_c, MD5_d, MD5_a, MD5_b, MD5_x[k + 2], 17, 606105819 )   '&H242070DB
        MD5_b = MD5_FF(MD5_b, MD5_c, MD5_d, MD5_a, MD5_x[k + 3], 22, -1044525330)   '&HC1BDCEEE
        MD5_a = MD5_FF(MD5_a, MD5_b, MD5_c, MD5_d, MD5_x[k + 4], 7, -176418897)      '&HF57C0FAF
        MD5_d = MD5_FF(MD5_d, MD5_a, MD5_b, MD5_c, MD5_x[k + 5], 12, 1200080426 )   '&H4787C62A
        MD5_c = MD5_FF(MD5_c, MD5_d, MD5_a, MD5_b, MD5_x[k + 6], 17, -1473231341)   '&HA8304613
        MD5_b = MD5_FF(MD5_b, MD5_c, MD5_d, MD5_a, MD5_x[k + 7], 22, -45705983)      '&HFD469501
        MD5_a = MD5_FF(MD5_a, MD5_b, MD5_c, MD5_d, MD5_x[k + 8], 7, 1770035416)    '&H698098D8
        MD5_d = MD5_FF(MD5_d, MD5_a, MD5_b, MD5_c, MD5_x[k + 9], 12, -1958414417 )   '&H8B44F7AF
        MD5_c = MD5_FF(MD5_c, MD5_d, MD5_a, MD5_b, MD5_x[k + 10], 17, -42063 )      '&HFFFF5BB1
        MD5_b = MD5_FF(MD5_b, MD5_c, MD5_d, MD5_a, MD5_x[k + 11], 22, -1990404162)   '&H895CD7BE
        MD5_a = MD5_FF(MD5_a, MD5_b, MD5_c, MD5_d, MD5_x[k + 12], 7, 1804603682)    '&H6B901122
        MD5_d = MD5_FF(MD5_d, MD5_a, MD5_b, MD5_c, MD5_x[k + 13], 12, -40341101)    '&HFD987193
        MD5_c = MD5_FF(MD5_c, MD5_d, MD5_a, MD5_b, MD5_x[k + 14], 17, -1502002290)   '&HA679438E
        MD5_b = MD5_FF(MD5_b, MD5_c, MD5_d, MD5_a, MD5_x[k + 15], 22, 1236535329)   '&H49B40821

    'Round 2
        MD5_a = MD5_GG(MD5_a, MD5_b, MD5_c, MD5_d, MD5_x[k + 1], 5, -165796510)      '&HF61E2562
        MD5_d = MD5_GG(MD5_d, MD5_a, MD5_b, MD5_c, MD5_x[k + 6], 9, -1069501632)   '&HC040B340
        MD5_c = MD5_GG(MD5_c, MD5_d, MD5_a, MD5_b, MD5_x[k + 11], 14, 643717713)   '&H265E5A51
        MD5_b = MD5_GG(MD5_b, MD5_c, MD5_d, MD5_a, MD5_x[k + 0], 20, -373897302)   '&HE9B6C7AA
        MD5_a = MD5_GG(MD5_a, MD5_b, MD5_c, MD5_d, MD5_x[k + 5], 5, -701558691)    '&HD62F105D
        MD5_d = MD5_GG(MD5_d, MD5_a, MD5_b, MD5_c, MD5_x[k + 10], 9, 38016083)      '&H2441453
        MD5_c = MD5_GG(MD5_c, MD5_d, MD5_a, MD5_b, MD5_x[k + 15], 14, -660478335)   '&HD8A1E681
        MD5_b = MD5_GG(MD5_b, MD5_c, MD5_d, MD5_a, MD5_x[k + 4], 20, -405537848)   '&HE7D3FBC8
        MD5_a = MD5_GG(MD5_a, MD5_b, MD5_c, MD5_d, MD5_x[k + 9], 5, 568446438)      '&H21E1CDE6
        MD5_d = MD5_GG(MD5_d, MD5_a, MD5_b, MD5_c, MD5_x[k + 14], 9, -1019803690)   '&HC33707D6
        MD5_c = MD5_GG(MD5_c, MD5_d, MD5_a, MD5_b, MD5_x[k + 3], 14, -187363961)   '&HF4D50D87
        MD5_b = MD5_GG(MD5_b, MD5_c, MD5_d, MD5_a, MD5_x[k + 8], 20, 1163531501)   '&H455A14ED
        MD5_a = MD5_GG(MD5_a, MD5_b, MD5_c, MD5_d, MD5_x[k + 13], 5, -1444681467)   '&HA9E3E905
        MD5_d = MD5_GG(MD5_d, MD5_a, MD5_b, MD5_c, MD5_x[k + 2], 9, -51403784)      '&HFCEFA3F8
        MD5_c = MD5_GG(MD5_c, MD5_d, MD5_a, MD5_b, MD5_x[k + 7], 14, 1735328473)   '&H676F02D9
        MD5_b = MD5_GG(MD5_b, MD5_c, MD5_d, MD5_a, MD5_x[k + 12], 20, -1926607734)   '&H8D2A4C8A

    'Round 3
        MD5_a = MD5_HH(MD5_a, MD5_b, MD5_c, MD5_d, MD5_x[k + 5], 4, -378558)      '&HFFFA3942
        MD5_d = MD5_HH(MD5_d, MD5_a, MD5_b, MD5_c, MD5_x[k + 8], 11, -2022574463)   '&H8771F681
        MD5_c = MD5_HH(MD5_c, MD5_d, MD5_a, MD5_b, MD5_x[k + 11], 16, 1839030562)   '&H6D9D6122
        MD5_b = MD5_HH(MD5_b, MD5_c, MD5_d, MD5_a, MD5_x[k + 14], 23, -35309556)   '&HFDE5380C
        MD5_a = MD5_HH(MD5_a, MD5_b, MD5_c, MD5_d, MD5_x[k + 1], 4, -1530992060)   '&HA4BEEA44
        MD5_d = MD5_HH(MD5_d, MD5_a, MD5_b, MD5_c, MD5_x[k + 4], 11, 1272893353)   '&H4BDECFA9
        MD5_c = MD5_HH(MD5_c, MD5_d, MD5_a, MD5_b, MD5_x[k + 7], 16, -155497632)   '&HF6BB4B60
        MD5_b = MD5_HH(MD5_b, MD5_c, MD5_d, MD5_a, MD5_x[k + 10], 23, -1094730640)   '&HBEBFBC70
        MD5_a = MD5_HH(MD5_a, MD5_b, MD5_c, MD5_d, MD5_x[k + 13], 4, 681279174)      '&H289B7EC6
        MD5_d = MD5_HH(MD5_d, MD5_a, MD5_b, MD5_c, MD5_x[k + 0], 11, -358537222)   '&HEAA127FA
        MD5_c = MD5_HH(MD5_c, MD5_d, MD5_a, MD5_b, MD5_x[k + 3], 16, -722521979)   '&HD4EF3085
        MD5_b = MD5_HH(MD5_b, MD5_c, MD5_d, MD5_a, MD5_x[k + 6], 23, 76029189)      '&H4881D05
        MD5_a = MD5_HH(MD5_a, MD5_b, MD5_c, MD5_d, MD5_x[k + 9], 4, -640364487)      '&HD9D4D039
        MD5_d = MD5_HH(MD5_d, MD5_a, MD5_b, MD5_c, MD5_x[k + 12], 11, -421815835)   '&HE6DB99E5
        MD5_c = MD5_HH(MD5_c, MD5_d, MD5_a, MD5_b, MD5_x[k + 15], 16, 530742520)   '&H1FA27CF8
        MD5_b = MD5_HH(MD5_b, MD5_c, MD5_d, MD5_a, MD5_x[k + 2], 23, -995338651)   '&HC4AC5665

    'Round 4
        MD5_a = MD5_II(MD5_a, MD5_b, MD5_c, MD5_d, MD5_x[k + 0], 6, -198630844)      '&HF4292244
        MD5_d = MD5_II(MD5_d, MD5_a, MD5_b, MD5_c, MD5_x[k + 7], 10, 1126891415)   '&H432AFF97
        MD5_c = MD5_II(MD5_c, MD5_d, MD5_a, MD5_b, MD5_x[k + 14], 15, -1416354905)   '&HAB9423A7
        MD5_b = MD5_II(MD5_b, MD5_c, MD5_d, MD5_a, MD5_x[k + 5], 21, -57434055)      '&HFC93A039
        MD5_a = MD5_II(MD5_a, MD5_b, MD5_c, MD5_d, MD5_x[k + 12], 6, 1700485571)   '&H655B59C3
        MD5_d = MD5_II(MD5_d, MD5_a, MD5_b, MD5_c, MD5_x[k + 3], 10, -1894986606)   '&H8F0CCC92
        MD5_c = MD5_II(MD5_c, MD5_d, MD5_a, MD5_b, MD5_x[k + 10], 15, -1051523)      '&HFFEFF47D
        MD5_b = MD5_II(MD5_b, MD5_c, MD5_d, MD5_a, MD5_x[k + 1], 21, -2054922799)   '&H85845DD1
        MD5_a = MD5_II(MD5_a, MD5_b, MD5_c, MD5_d, MD5_x[k + 8], 6, 1873313359)      '&H6FA87E4F
        MD5_d = MD5_II(MD5_d, MD5_a, MD5_b, MD5_c, MD5_x[k + 15], 10, -30611744)   '&HFE2CE6E0
        MD5_c = MD5_II(MD5_c, MD5_d, MD5_a, MD5_b, MD5_x[k + 6], 15, -1560198380 )   '&HA3014314
        MD5_b = MD5_II(MD5_b, MD5_c, MD5_d, MD5_a, MD5_x[k + 13], 21, 1309151649)   '&H4E0811A1     
        MD5_a = MD5_II(MD5_a, MD5_b, MD5_c, MD5_d, MD5_x[k + 4], 6, -145523070)      '&HF7537E82
        MD5_d = MD5_II(MD5_d, MD5_a, MD5_b, MD5_c, MD5_x[k + 11], 10, -1120210379)   '&HBD3AF235
        MD5_c = MD5_II(MD5_c, MD5_d, MD5_a, MD5_b, MD5_x[k + 2], 15, 718787259)      '&H2AD7D2BB
        MD5_b = MD5_II(MD5_b, MD5_c, MD5_d, MD5_a, MD5_x[k + 9], 21, -343485551)   '&HEB86D391

        MD5_a = MD5_a + MD5_AA
        MD5_b = MD5_b + MD5_BB
        MD5_c = MD5_c + MD5_CC
        MD5_d = MD5_d + MD5_DD

    Next

    Return Lower(WordToHex$(MD5_a) + WordToHex$(MD5_b) + WordToHex$(MD5_c) + WordToHex$(MD5_d))

End Function


Function MD5_F:Int(x:Int, y:Int, z:Int)

   Return ((x & y) | (~(x) & z))

End Function


Function MD5_G:Int(x:Int, y:Int, z:Int)

    Return ((x & z) | (y & (~(z))))

End Function


Function MD5_H:Int(x:Int, y:Int, z:Int)

    Return (x ~ y ~ z)

End Function


Function MD5_I:Int(x:Int, y:Int, z:Int)

    Return (y:Int ~ (x:Int | (~z:Int)))

End Function


Function MD5_FF:Int(a:Int, b:Int, c:Int, d:Int, x:Int, s:Int, ac:Int)

    a = (a + ((MD5_F(b, c, d)+ x)+ ac))
    a = RotateLeft(a, s)

    Return a + b

End Function


Function MD5_GG:Int(a:Int, b:Int, c:Int, d:Int, x:Int, s:Int, ac:Int)

    a = (a + ((MD5_G(b, c, d) + x) + ac))
    a = RotateLeft(a, s)

    Return a + b

End Function


Function MD5_HH:Int(a:Int, b:Int, c:Int, d:Int, x:Int, s:Int, ac:Int)

    a = (a + ((MD5_H(b, c, d) + x) + ac))
    a = RotateLeft(a, s)

    Return a + b

End Function


Function MD5_II:Int(a:Int, b:Int, c:Int, d:Int, x:Int, s:Int, ac:Int)

    a = (a + ((MD5_I(b, c, d) + x) + ac))
    a = RotateLeft(a, s)

    Return a + b

End Function


Function RotateLeft:Int(lValue:Int, iShiftBits:Int)

    Return (lValue Shl iShiftBits) | (lValue Shr (32 - iShiftBits))

End Function


Function WordToHex:String(lValue:Int)
   
   Local returnString$

   returnString$ = Hex$(lValue)

   Return returnString$[6..8] + returnString$[4..6] + returnString$[2..4] + returnString$[0..2]

End Function