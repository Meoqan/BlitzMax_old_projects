Type Tplayer
	Global list:TList = CreateList()
	Field id:Short, x:Float, y:Float, r:Float, s:Float, baseID:Int = -2
	Field oldx:Float, oldy:Float, lstpoly:Tpolythrust
	Field life:Float, shield:Float
	Field moveentferung:Float
	
	Field to_x:Float, to_y:Float, to_r:Float, last_x:Float, last_y:Float, last_msc:Int, last_time:Int
		
	Field basecargo:Tcargo
	
	Field ship:Tship, shipid:Short
	
	Field target:Tship
	
	Field mapx:Byte, mapy:Byte, mapid:Short
	
	
	Method selectShip(ids:Short, other:Byte)
		If other Then
			ship = Tship.Create(ids,,, Self)
		Else
			ship = Tship.Create(ids, Self)
		End If
		
		shipid = ids
	End Method
	
	'net
	Field name:String, data:Byte, active:Byte
	Field cargo:Int, cargomax:Int
End Type