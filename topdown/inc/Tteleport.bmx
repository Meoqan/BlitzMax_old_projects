Type Ttele

	Global list:TList = CreateList()
	Field ent:Tsprite
	Field x:Float, y:Float, z:Float
	Field map:String

	Function Create(x:Float, z:Float, map:String)
		Local tele:Ttele = New Ttele
		ListAddLast(list, tele)
		
		tele.ent = CreateSprite()
		tele.ent.SpriteViewMode(3)
		tele.ent.EntityTexture(tex_teleport)
		tele.ent.ScaleSprite(4, 4)

		tele.x = x
		tele.y = 0
		tele.z = z
		tele.map = map
		
		tele.ent.PositionEntity(tele.x, 3, tele.z)
		tele.ent.EntityType(6)
		tele.ent.EntityRadius(3)
		tele.ent.ResetEntity()
		
	End Function
	
	Function clear()
		For Local tele:Ttele = EachIn list
			tele.ent.FreeEntity()
		Next
		list.clear()
	End Function
End Type
