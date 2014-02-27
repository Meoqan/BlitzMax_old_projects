Type Tzombie

	Global list:TList = CreateList()
	Field ent:Tsprite
	Field view:Tsprite
	Field hitbox:Tsprite
	Field x:Float, y:Float, z:Float
	Field life:Int = 100
	
	Field move:Int, movespeed:Float
	Field typ:Int
	Field shootcd:Int
	Field aggro:Int, aggrotimer:Int = Rand(0, 60)
	Field dead:Int
	
	Function Create:Tzombie(x:Float, z:Float, typ:Int = 0)
		Local zomb:Tzombie = New Tzombie
		ListAddLast(list, zomb)
		
		zomb.typ = typ
		zomb.ent = CreateSprite()
		zomb.ent.SpriteViewMode(3)
		Select zomb.typ
			Case 0
				zomb.ent.EntityTexture(tex_zomb)
			Case 1
				zomb.ent.EntityTexture(tex_trooper)
		End Select
		zomb.ent.ScaleSprite(4, 4)
		
		zomb.view = CreateSprite()
		zomb.view.EntityType(5)
		zomb.view.SpriteViewMode(3)
		zomb.view.EntityTexture(tex_view)
		
		zomb.x = x
		zomb.y = 0
		zomb.z = z

		zomb.hitbox = CreateSprite()
		zomb.hitbox.EntityTexture(tex_view)
		'zomb.hitbox.FitMesh(-2, -2, -2, 4, 4, 4)
		zomb.hitbox.EntityRadius(3)
		zomb.hitbox.EntityType(8)
		
		zomb.ent.PositionEntity(zomb.x, 10, zomb.z)
		zomb.ent.EntityType(4)
		zomb.ent.EntityRadius(3)
		zomb.ent.ResetEntity()
		
		Return zomb
	End Function
	
	Function update()
		For Local zomb:Tzombie = EachIn list
			zomb.hitbox.PositionEntity(zomb.ent.EntityX(), zomb.ent.EntityY(), zomb.ent.EntityZ())
			zomb.hitbox.ResetEntity()
			
			If Tplayer.godmode = 0 Then
				Local entity_hit_bite:Int = CountCollisions(zomb.ent)
				
				For Local i:Int = 1 To entity_hit_bite
				    If Tplayer.ent = CollisionEntity(zomb.ent, i) Then
						Tplayer.life:-1
					EndIf
				Next
			EndIf
			
			If zomb.aggrotimer = -1 Then
				Local entity_hit:Int = CountCollisions(zomb.view)
				zomb.aggro = 0
				For Local i:Int = 1 To entity_hit
				    If Tplayer.ent = CollisionEntity(zomb.view, i) Then
						zomb.view.EntityColor(0, 0, 255)
						zomb.aggro = 1
					EndIf
				Next
			EndIf
			
			If Tplayer.godmode Then zomb.aggro = 0
			
			If zomb.aggro Then
				zomb.ent.PointEntity(Tplayer.ent)
				Select zomb.typ
					Case 0
						zomb.movespeed = 0.75
						zomb.move = 0
					Case 1
						If zomb.shootcd = 0 Then
							Tgunray.Create(zomb.ent.EntityX(), zomb.ent.EntityY(), zomb.ent.EntityZ(), zomb.ent.EntityYaw() + Rnd(-5, 5) , 1)
							zomb.shootcd = 60
						Else
							zomb.shootcd:-1
						EndIf
						zomb.movespeed = 0.0
						zomb.move = -1
				End Select
			Else
				If zomb.move = -1 Then
					zomb.movespeed = 0.5
					zomb.move = (Sqr((Tplayer.ent.EntityX() - zomb.ent.EntityX()) ^ 2 + (Tplayer.ent.EntityZ() - zomb.ent.EntityZ()) ^ 2) / zomb.movespeed) + 30
				End If
				If zomb.move = 0 Then
					zomb.ent.RotateEntity(0, Rnd(0, 360), 0)
					zomb.move = Rand(50, 300)
					zomb.movespeed = 0.2
				Else
					zomb.move:-1
				End If
			End If
			
			zomb.ent.MoveEntity(0, -0.25, zomb.movespeed)
			
			zomb.ent.RotateSprite(zomb.ent.EntityYaw())
			
			If zomb.aggrotimer = 0 Then
				zomb.view.ShowEntity()
				zomb.view.PositionEntity(EntityX(zomb.ent, True), EntityY(zomb.ent, True), EntityZ(zomb.ent, True))
				zomb.view.ResetEntity()
				
				zomb.view.PointEntity(Tplayer.ent)
				
				zomb.view.MoveEntity(0, 0, 100)
			EndIf
			If zomb.aggrotimer = -1 Then
				zomb.view.HideEntity()
				zomb.aggrotimer = 30
			End If
			zomb.aggrotimer:-1
			
			
			If zomb.life <= 0 Then
				zomb.dead = True
				zomb.hitbox.FreeEntity()
				zomb.ent.FreeEntity()
				zomb.view.FreeEntity()
				list.Remove(zomb)
			End If
		Next
	End Function
	
	Method Del()
		hitbox.FreeEntity()
		ent.FreeEntity()
		view.FreeEntity()
		list.Remove(Self)
	End Method
	
	Function clear()
		For Local zomb:Tzombie = EachIn list
			zomb.hitbox.FreeEntity()
			zomb.ent.FreeEntity()
			zomb.view.FreeEntity()
		Next
		list.clear()
	End Function
End Type
