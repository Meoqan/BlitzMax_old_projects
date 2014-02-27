
Global Lggui:TList = CreateList()
Global ggui_id:Int = 1
Global ggui_border:Timage
Global ggui_round:Timage

ggui_Setup()

Type Tggui
	Field id:Int
	Field x:Int, y:Int, w:Int, h:Int
	Field image:TImage

	Method Draw()
		SetRotation(0)
		SetScale(1, 1)
		SetAlpha(1)
		SetHandle(0, 0)
		
		SetRotation(0)
		SetAlpha(1)
		SetHandle(0, 0)
		SetScale(1, 1)
		
		SetColor(255, 255, 255)
		SetRotation(180)
		DrawImage(ggui_round, x, y)
		SetRotation(0)
		DrawImage(ggui_round, x + w, y + h)
		SetRotation(90)
		DrawImage(ggui_round, x, y + h)
		SetRotation(270)
		DrawImage(ggui_round, x + w, y)
		
		SetColor(255, 255, 255)
		SetRotation(270)
		SetScale(1, w / 10.0)
		DrawImage(ggui_border, x, y + h + 10) 'unten
		SetRotation(90)
		SetScale(1, w / 10.0)
		DrawImage(ggui_border, x + w, y - 10)'oben
		SetRotation(180)
		SetScale(1, h / 10.0)
		DrawImage(ggui_border, x + w + 10, y + h) 'links
		SetRotation(0)
		SetScale(1, h / 10.0)
		DrawImage(ggui_border, x - 10, y) 'rechts
		
		SetScale(1, 1)
		SetColor(255, 255, 255)
		DrawImage(image, x, y)

		
	End Method
	
	Method Grab()
		SetRotation(0)
		SetAlpha(1)
		SetHandle(0, 0)
		SetScale(1, 1)
	
		SetColor(255, 255, 255)
		'DrawRect(0, 0, w, h)
		
		SetColor(0, 0, 0)
		'DrawText("hallo", 10, 10)
		
		GrabImage(image, 0, 0)
		
	End Method
	
	Method Resize(nw:Int, nh:Int)
		image = Null
		image = CreateImage(nw, nh, 1, DYNAMICIMAGE)
		
		w = nw
		h = nh
	End Method
End Type

Function ggui_New:Tggui(x:Int, y:Int, w:Int, h:Int)
	Local temp_Tggui:Tggui = New Tggui
	Lggui.AddLast(temp_Tggui)
	temp_Tggui.id = ggui_id
	temp_Tggui.x = x
	temp_Tggui.y = y
	temp_Tggui.w = w
	temp_Tggui.h = h
	
	temp_Tggui.image = CreateImage(w, h, 1, DYNAMICIMAGE)

	ggui_id:+1
	Return temp_Tggui
End Function

Function ggui_Draw()
	For Local Fggui:Tggui = EachIn Lggui
		Fggui.Draw()
	Next
End Function

Function ggui_Setup()
	Local border:TPixmap = CreatePixmap(10, 10, PF_RGBA8888)
	For Local x:Int = 1 To 10
		For Local y:Int = 1 To 10
			Local nextcolor:Int
			Local bytes2:Byte Ptr = Varptr nextcolor
			bytes2[0] = Int(255)
			bytes2[1] = Int(255)
			bytes2[2] = Int(255)
			bytes2[3] = Int(255.0 - (25.5 * x))
		
			border.WritePixel(9 - (x - 1), 9 - (y - 1), nextcolor)
		Next
	Next
	ggui_border = LoadImage(border)
	
	Local round:TPixmap = CreatePixmap(10, 10, PF_RGBA8888)
	For Local x:Int = 1 To 10
		For Local y:Int = 1 To 10
			Local nextcolor:Int
			Local bytes2:Byte Ptr = Varptr nextcolor
			bytes2[0] = Int(255)
			bytes2[1] = Int(255)
			bytes2[2] = Int(255)
			Local entf:Float = Sqr((x - 0) ^ 2 + (y - 0) ^ 2)
			If entf > 10 Then
				bytes2[3] = Int(0)
			Else
				bytes2[3] = Int(255.0 - (25.5 * entf))
			EndIf
			
		
			round.WritePixel((x - 1), (y - 1), nextcolor)
		Next
	Next
	ggui_round = LoadImage(round)
End Function









