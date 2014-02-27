Type Talert
	Field x:Float, y:Float
	Field size:Float, time:Int
End Type
Global alertlist:TList = CreateList()

Function createalert:Talert(x:Float, y:Float, size:Float)
	Local found:Byte
	For Local alert:Talert = EachIn alertlist
		If x = alert.x And y = alert.y Then found = True
	Next
	if found then return null
	Local alert:Talert = New Talert
	alertlist.AddLast(alert)
	alert.x = x
	alert.y = y
	alert.size = size
	Return alert
End Function

