Type Thub
	Global list:TList = CreateList()
	Field enelist:TList = CreateList()
	Field ent:Tsprite
	Field x:Float, y:Float, z:Float
	Field zombies:Int
	Field spawnd:Int
	
	Function Create(x:Float, y:Float, z:Float, zombies:Int)
		Local hub:Thub = New Thub
		list.AddLast(hub)
		
		hub.x = x
		hub.y = y
		hub.z = z
		hub.zombies = zombies
		
		hub.ent = CreateSprite()
		hub.ent.SpriteViewMode(3)
		hub.ent.EntityTexture(tex_view)
		?Debug
		hub.ent.EntityTexture(tex_hub)
		?
		hub.ent.ScaleSprite(4, 4)
		
		hub.ent.PositionEntity(hub.x, 2, hub.z)
		hub.ent.ResetEntity()
		
	End Function
	
	Function update()
		For Local hub:Thub = EachIn list
			Local entferung:Float = Sqr((tplayer.ent.EntityX() - hub.x) ^ 2 + (tplayer.ent.Entityz() - hub.z) ^ 2)
			If entferung < 200 Then
				If hub.spawnd Then
					For Local ene:Tzombie = EachIn hub.enelist
						If ene.dead Then
							hub.enelist.Remove(ene)
							hub.zombies:-1
						End If
					Next
				Else
					If hub.zombies > 0 Then
						For Local x:Int = 1 To hub.zombies
							hub.enelist.AddLast(Tzombie.Create(hub.x, hub.z, Rand(0, 1)))
						Next
					EndIf
					hub.spawnd = True
				End If
			EndIf
			If entferung > 250 Then
				If hub.spawnd Then
					For Local ene:Tzombie = EachIn hub.enelist
						ene.Del()
					Next
					hub.enelist.clear()
					hub.spawnd = False
				EndIf
			End If
		Next
	End Function

	Function clear()
		For Local hub:Thub = EachIn list
			hub.enelist.clear()
			hub.ent.FreeEntity()
		Next
		list.clear()
	End Function
	
EndType
