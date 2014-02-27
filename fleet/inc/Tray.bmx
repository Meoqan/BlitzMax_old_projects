
Type Tray
	Field x:Float, y:Float, winkel:Float, entf:Float
	Field time:Int
	
End Type
Global raylist:TList = CreateList()

Function createray(x:Float, y:Float, winkel:Float, entf:Float)
	Local nray:Tray = New Tray
	raylist.AddLast(nray)
	nray.x = x
	nray.y = y
	nray.winkel = winkel
	nray.entf = entf
End Function

