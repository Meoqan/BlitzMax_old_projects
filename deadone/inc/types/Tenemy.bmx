Type Tenemy
	Global list:TList = CreateList()
	Field x:Float, y:Float, r:Float, s:Float, id:Int
	Field life:Float, shield:Float, lstpoly:Tpolythrust
	Field moveentferung:Float
	
	Field to_x:Float, to_y:Float, to_r:Float, last_x:Float, last_y:Float, last_msc:Int, last_time:Int, active:Byte
	
	Field ship:Tship, shipid:Short
	
	Method selectShip(ids:Short)
		ship = Tship.Create(ids,, Self)
		shipid = ids
	End Method
	
End Type