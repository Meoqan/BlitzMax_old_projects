Type Tblood

	Global list:TList = CreateList()
	Field ent:Tsprite
	Field x:Float, y:Float, z:Float

	Field timer:Int
	
	Function Create(x:Float, z:Float)
		Local blood:Tblood = New Tblood
		ListAddLast(list, blood)
		
		blood.ent = CreateSprite()
		blood.ent.SpriteViewMode(3)
		blood.ent.EntityTexture(tex_blood)
		blood.ent.ScaleSprite(4, 4)
		blood.ent.RotateSprite(Rnd(0, 360))

		blood.x = x
		blood.y = 1
		blood.z = z
		
		blood.ent.PositionEntity(blood.x, 1, blood.z)
		blood.ent.ResetEntity()
		
	End Function
	
	Function update()
		For Local blood:Tblood = EachIn list
			blood.timer:+1
			blood.ent.EntityAlpha(1.0 - (blood.timer / 3600.0))
			If blood.timer > 3600 Then
				blood.ent.FreeEntity()
				list.Remove(blood)
			End If
		Next
	End Function
	
	Function clear()
		For Local blood:Tblood = EachIn list
			blood.ent.FreeEntity()
		Next
		list.clear()
	End Function
End Type
