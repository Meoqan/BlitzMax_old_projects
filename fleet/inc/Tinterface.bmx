Type Tmessage
	Field message:String, R:Byte = 255, G:Byte = 255, B:Byte = 255
	Field time:Int
	
	Method Draw(number:Int, maxnumber:Int)
		If number > maxnumber Then Return
		SetColor(R, G, B)
		DrawText(message, 15, 768 - (15 + ((number) * 15)))
	End Method
End Type
Global messagelist:TList = CreateList()

Function add_message(msg:String, Re:Byte = 255, Gr:Byte = 255, Bl:Byte = 255)
	Local nmessage:Tmessage = New Tmessage
	messagelist.AddLast(nmessage)
	nmessage.message = MSG
	nmessage.R = re
	nmessage.G = gr
	nmessage.B = bl
	nmessage.time = MilliSecs()
End Function




Function update_interface()
	
	reset_draw()
	Local cn:Int = messagelist.Count()
	Local maxlength:Byte = 20
	For Local message:Tmessage = EachIn messagelist
		If message.time + 15000 < MilliSecs() Then SetAlpha((Float((message.time + 20000) - MilliSecs()) / 5000.0)) Else SetAlpha(1.0)
		message.Draw(cn, maxlength)
		If message.time + 20000 < MilliSecs() Then messagelist.Remove(message)
		cn = cn - 1
	Next
	
	reset_draw()
	'DrawRect(MouseX(), MouseY(), 10, 10)
	
End Function

Function ismouseover:Byte(x:Int, y:Int, l:Int, w:Int)
	If x < MouseX() And x + l > MouseX() And y < MouseY() And y + w > MouseY() Then Return 1 Else Return 0
End Function