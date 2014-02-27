Type Tplayer
	Global ent:Tsprite
	Global ray:Tsprite
	Global hitbox:Tsprite
	
	Global life:Float = 100, maxlife:Float = 100
	Global lifecounter:Int
	Global godmode:Int = 0
	Global wpncd:Int
	
	Global keyring:TList = CreateList()
	
	Function init()
		ent = CreateSprite()
		'ent.ScaleSprite(0.5, 0.5)
		ent.EntityTexture(tex_view)
		ent.EntityRadius(3)
		ent.EntityType(1)
		
		ray = CreateSprite()
		ray.ScaleSprite(4, 4)
		ray.EntityTexture(tex_player)
		ray.EntityParent(ent)
		
		hitbox = CreateSprite()
		hitbox.EntityTexture(tex_view)
		'hitbox.FitMesh(-2, -2, -2, 4, 4, 4)
		hitbox.EntityRadius(3)
		hitbox.EntityType(9)
		
		ent.PositionEntity(0, 10, 0)
		ent.ResetEntity()
	End Function
	
	Function update()
		hitbox.PositionEntity(ent.EntityX(), ent.EntityY(), ent.EntityZ())
		hitbox.ResetEntity()
	
		Local entity_hit:Int = CountCollisions(ent)
		
		For Local door:Tdoor = EachIn Tdoor.list
			For Local i:Int = 1 To entity_hit
			    If door.ent = CollisionEntity(ent, i) Then
					'tuer öffen
					For Local key:Tkey = EachIn keyring
						If key.xkey = door.key Then
							door.ent.FreeEntity()
							Tdoor.list.Remove(door)
						End If
					Next
				EndIf
			Next
		Next
		
		For Local key:Tkey = EachIn Tkey.list
			For Local i:Int = 1 To entity_hit
			    If key.ent = CollisionEntity(ent, i) Then
					'key aufheben
					key.ent.FreeEntity()
					Tkey.list.Remove(key)
					Tplayer.keyring.AddLast(key)
				EndIf
			Next
		Next
		
		For Local tele:Ttele = EachIn Ttele.list
			For Local i:Int = 1 To entity_hit
			    If tele.ent = CollisionEntity(ent, i) Then
					'map laden
					If tele.map = "END" Then
						GAME_STATE = 2
					Else
						Tspawn.loadmap(tele.map)
						Tspawn.spawn()
						Tplayer.life = 100
						Tplayer.ent.PositionEntity(0, 10, 0)
						Tplayer.ent.ResetEntity()
					End If
				EndIf
			Next
		Next
		
		
		
	End Function
	
	Function clear()
		keyring.clear()
	End Function
EndType