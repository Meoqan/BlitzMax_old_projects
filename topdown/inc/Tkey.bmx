Type Tkey
	Global list:TList = CreateList()
	Field ent:Tsprite
	Field xkey:String
	
	Function Create(x:Float, z:Float, xkey:String)
		Local key:Tkey = New Tkey
		list.AddLast(key)
		
		key.xkey = xkey
		
		key.ent = CreateSprite()
		key.ent.SpriteViewMode(3)
		key.ent.EntityTexture(tex_key)
		key.ent.ScaleSprite(4, 4)
		key.ent.EntityType(6)
		
		key.ent.PositionEntity(x, 3, z)
		key.ent.ResetEntity()

	End Function
	
	
	
	Function clear()
		For Local key:Tkey = EachIn list
			key.ent.FreeEntity()
		Next
		list.clear()
	End Function
	
EndType
