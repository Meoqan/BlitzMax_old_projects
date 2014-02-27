
Function draw_interface_back()
	reset_draw()
	
	'background
	SetColor(50, 50, 50)
	DrawRect(split20x, 0, screenx - split20x, screeny)
	
	If KeyHit(KEY_LEFT) Then
		int_pos:+1
	End If
	If KeyHit(KEY_RIGHT) Then
		int_pos:-1
	End If
	
	If int_pos < 0 Then int_pos = 0
	
	int_numkey = -1
	If KeyHit(KEY_1) Then int_numkey = 1
	If KeyHit(KEY_2) Then int_numkey = 2
	If KeyHit(KEY_3) Then int_numkey = 3
	If KeyHit(KEY_4) Then int_numkey = 4
	If KeyHit(KEY_5) Then int_numkey = 5
	If KeyHit(KEY_6) Then int_numkey = 6
	If KeyHit(KEY_7) Then int_numkey = 7
	If KeyHit(KEY_8) Then int_numkey = 8
	If KeyHit(KEY_9) Then int_numkey = 9
	If KeyHit(KEY_0) Then int_numkey = 0
	
	If KeyHit(KEY_NUM1) Then int_numkey = 1
	If KeyHit(KEY_NUM2) Then int_numkey = 2
	If KeyHit(KEY_NUM3) Then int_numkey = 3
	If KeyHit(KEY_NUM4) Then int_numkey = 4
	If KeyHit(KEY_NUM5) Then int_numkey = 5
	If KeyHit(KEY_NUM6) Then int_numkey = 6
	If KeyHit(KEY_NUM7) Then int_numkey = 7
	If KeyHit(KEY_NUM8) Then int_numkey = 8
	If KeyHit(KEY_NUM9) Then int_numkey = 9
	If KeyHit(KEY_NUM0) Then int_numkey = 0
	
	If KeyHit(KEY_BACKSPACE) Then int_numkey = -2
	If KeyHit(KEY_DELETE) Then int_numkey = -3
	If KeyHit(KEY_NUMSUBTRACT) Then int_numkey = -4
	If KeyHit(KEY_MINUS) Then int_numkey = -4
	If KeyHit(KEY_NUMADD) Then int_numkey = -5
	If KeyDown(KEY_UP) Then int_numkey = -6
	If KeyDown(KEY_DOWN) Then int_numkey = -7
	
	int_IDrunner = 0
	
	
End Function

Global interface_test:Int = 123
Global interface_test2:Int = 123
Global interface_test3:Int = 123
Global interface_test3a:Float

Global int_numkey:Int = -1
Global int_IDrunner:Int
Global int_pos:Int, int_afield:Int
Function draw_interface_front()
	reset_draw()
	
	'left sidebar
	SetColor(0, 0, 0)
	SetAlpha(0.2)
	DrawRect(split20x, 0, 10, screeny)
	SetAlpha(1)
	SetColor(100, 100, 100)
	DrawRect(0, 0, split20x, screeny)
	
	
	
	If int_button("Uebersicht", menu, 1, 20, 20) Then menu = 1
	If int_button("Lager", menu, 2, 20, 40) Then menu = 2
	If int_button("Fabrik", menu, 3, 20, 60) Then menu = 3
	If int_button("Ausbauen", menu, 4, 20, 80) Then menu = 4
	
	
	
End Function

Function int_button:Int(text:String, data:Int, glowdata:Int, x:Int, y:Int)
	int_IDrunner:+1
	reset_draw()
	SetColor(200, 200, 200)
	DrawRect(x, y, 158, 18)
	If data = glowdata Then SetColor(150, 200, 150) Else SetColor(100, 100, 100)
	DrawRect(x + 2, y + 2, 154, 14)
	SetColor(255, 255, 255)
	DrawText(text, x + 80 - ((text.Length / 2.0) * 8), y + 1)
	If ismouseover(x, y, x + 158, y + 18) And mh1 Then Return True Else Return False
End Function

Function int_field:Int(text:String, data:Int, x:Int, y:Int, isfloat:Byte = 0)
	int_IDrunner:+1
	reset_draw()
	SetColor(200, 200, 200)
	DrawRect(x, y, 88, 18)
	SetColor(100, 100, 100)
	DrawRect(x + 2, y + 2, 84, 14)
	SetColor(255, 255, 255)
	DrawText(Text, x + 92, y + 3)
	
	
	If int_afield = int_IDrunner Then
		If int_numkey = -4 Then
			If data > 0 Then data = -data
		End If
		If int_numkey = -5 Then
			If data < 0 Then data = -data
		End If
		If int_numkey = -6 Then
			If isfloat Then data:+(msc * 10) Else data = data + Int(Float(msc) / 10.0)
		End If
		If int_numkey = -7 Then
			If isfloat Then data:-(msc * 10) Else data = data - Int(Float(msc) / 10.0)
		End If
	End If
	
	Local temp_isminus:Byte
	If data < 0 Then data = -data ; temp_isminus = True
	
	Local str:String = data
	Local dstr:String
	If isfloat Then
		If str.Length = 1 Then
			dstr = "0.0" + str
			str = "00" + str
		ElseIf str.Length = 2 Then
			dstr = "0." + str
			str = "0" + str
		Else
			dstr = Left(str, str.Length - 2) + "." + Right(str, 2)
		End If
		
		If temp_isminus Then
			SetColor(255, 200, 200)
			DrawText("-", x + 5 + ((9 - dstr.Length) * 8), y + 3)
			SetColor(255, 255, 255)
		End If
		DrawText(dstr, x + 5 + ((10 - dstr.Length) * 8), y + 3)
	Else
		If temp_isminus Then
			SetColor(255, 200, 200)
			DrawText("-", x + 5 + ((9 - str.Length) * 8), y + 3)
			SetColor(255, 255, 255)
		End If
		DrawText(str, x + 5 + ((10 - str.Length) * 8), y + 3)
	End If
	
	If isfloat Then
		If int_afield = int_IDrunner And int_pos > dstr.Length Then int_pos = dstr.Length
	Else
		If int_afield = int_IDrunner And int_pos > str.Length Then int_pos = str.Length
	End If
	
	If int_afield = int_IDrunner Then
		Local tmp_pos:Int
		If isfloat Then
			tmp_pos = int_pos
			If int_pos > 2 Then int_pos:-1
		End If
	
		If int_numkey >= 0 Then
			If int_pos = 0 Then
				str = str + String.FromInt(int_numkey)
			Else
				Local lstr:String = Left(str, str.Length - int_pos)
				Local rstr:String = Right(str, int_pos)
				str = lstr + String.FromInt(int_numkey) + rstr
			End If
			If tmp_pos = 2 Then int_pos:+1
			If tmp_pos = 1 Then int_pos:+1
			int_pos:+1
		End If
		
		If int_numkey = -3 Then
			Local lstr:String = Left(str, str.Length - int_pos)
			Local rstr:String = Right(str, int_pos)
			If rstr.Length > 0 Then
				str = lstr + Right(rstr, rstr.Length - 1)
				If tmp_pos = 3 Then int_pos:-1
				int_pos:-1
				If int_pos < 0 Then int_pos = 0
			EndIf
		End If
		
		If int_numkey = -2 Then
			Local lstr:String = Left(str, str.Length - int_pos)
			Local rstr:String = Right(str, int_pos)
			If lstr.Length > 0 Then str = Left(lstr, lstr.Length - 1) + rstr
		End If
		
		If isfloat Then
			If tmp_pos > 2 Then int_pos:+1
		End If
		
		data = str.ToInt()
	EndIf
	
	If mh1 And ismouseover(x + 5, y, 84, 18) Then
		int_pos = (Float(84 - (MouseX() - x + 5)) / 8.0) + 1.0
		int_afield = int_IDrunner
	End If
	
	
	
	
	If int_afield = int_IDrunner And Sin(time / 5) > 0 Then DrawRect(x + 5 + ((10 - int_pos) * 8), y + 2, 2, 14)
	
	If temp_isminus Then data = -data
	Return data
End Function


Function checkbox:Byte(text:String, x:Int, y:Int, endabled:Byte)
	reset_draw()
	SetColor(200, 200, 200)
	DrawRect(x, y, 18, 18)
	SetColor(100, 100, 100)
	DrawRect(x + 2, y + 2, 14, 14)
	If endabled Then
		SetColor(0, 255, 0)
		SetHandle(0, 1)
		SetRotation(315)
		DrawRect(x + 7, y + 12, 10, 2)
		SetRotation(225)
		DrawRect(x + 7, y + 12, 5, 2)
	Else
		SetHandle(8, 1)
		SetColor(255, 0, 0)
		SetRotation(45)
		DrawRect(x + 9, y + 9, 16, 2)
		SetRotation(- 45)
		DrawRect(x + 9, y + 9, 16, 2)
	End If
	SetHandle(0, 0)
	SetRotation(0)
	SetColor(255, 255, 255)
	DrawText(Text, x + 22, y + 3)
	
	If mh1 And ismouseover(x, y, 18, 18) Then Return 1 - endabled Else Return endabled
End Function