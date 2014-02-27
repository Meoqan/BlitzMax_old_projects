Type Tdoor
	Global list:TList = CreateList()
	Field ent:Tmesh
	Field key:String
	
	Function Create(x:Float, z:Float, lenght:Float, winkel:Float, key:String)
		Local door:Tdoor = New Tdoor
		list.AddLast(door)
		
		door.key = key
		
		door.ent = CreateCube()
		door.ent.EntityType(2)
		door.ent.EntityColor(100, 100, 100)
		door.ent.FitMesh(-1, 0, -(lenght / 2.0), 2, 7.5, lenght)
		door.ent.PositionEntity(x, 0, z)
		door.ent.RotateEntity(0, winkel, 0)
		door.ent.ResetEntity()

	End Function
	
	
	
	Function clear()
		For Local door:Tdoor = EachIn list
			door.ent.FreeEntity()
		Next
		list.clear()
	End Function
	
EndType
