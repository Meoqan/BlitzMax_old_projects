Type Tgunray
	Global list:TList = CreateList()
	Field ent:Tsprite
	Field ray:Tmesh
	Field status:Int
	Field x:Float, y:Float, z:Float, winkel:Float
	Field typ:Int
	
	Function Create(x:Float, y:Float, z:Float, winkel:Float, typ:Int = 0)
		
		Local gunray:Tgunray = New Tgunray
		ListAddLast(list, gunray)
		
		gunray.typ = typ
		gunray.ent = CreateSprite()
		gunray.ent.SpriteViewMode(3)
		gunray.ent.EntityTexture(tex_view)
		gunray.ent.ScaleSprite(2, 2)
		
		gunray.x = x
		gunray.y = y
		gunray.z = z
		gunray.winkel = winkel
		
		gunray.ent.PositionEntity(gunray.x, gunray.y, gunray.z)
		gunray.ent.RotateEntity(0, gunray.winkel, 0)
		
		Select gunray.typ
			Case 0
				gunray.ent.EntityType(7)
			Case 1
				gunray.ent.EntityType(10)
		End Select
		gunray.ent.EntityRadius(1)
		gunray.ent.ResetEntity()
		
		
	End Function

	Function update()
		For Local gunray:Tgunray = EachIn list
			Select gunray.status
				Case 2
					
					gunray.ray.FreeEntity()
					gunray.ent.FreeEntity()
					list.Remove(gunray)
				Case 1
					Local entity_hit:Int = CountCollisions(gunray.ent)
					Select gunray.typ
						Case 0
							For Local zomb:Tzombie = EachIn Tzombie.list
								For Local i:Int = 1 To entity_hit
								    If zomb.hitbox = CollisionEntity(gunray.ent, i) Then
										zomb.life:-25
										Tblood.Create(zomb.ent.EntityX(), zomb.ent.EntityZ())
									EndIf
								Next
							Next
						Case 1
							For Local i:Int = 1 To entity_hit
							    If Tplayer.hitbox = CollisionEntity(gunray.ent, i) Then
									Tplayer.life:-5
									Tblood.Create(Tplayer.ent.EntityX(), Tplayer.ent.EntityZ())
								EndIf
							Next
					End Select
					
					Local entferung:Float = Sqr((gunray.x - gunray.ent.EntityX()) ^ 2 + (gunray.z - gunray.ent.Entityz()) ^ 2) + 5
					
					gunray.ray = CreateCube()
					'gunray.ray.EntityType(8)
					'gunray.ray.SpriteViewMode(3)
					'gunray.ray.EntityTexture(tex_view)
					gunray.ray.EntityColor(255, 255, 100)
					gunray.ray.FitMesh(-0.25, -0.25, 3, 0.5, 0.5, entferung)
					gunray.ray.PositionEntity(gunray.x, gunray.y, gunray.z)
					gunray.ray.RotateEntity(0, gunray.winkel, 0)
					gunray.ray.ResetEntity()
					gunray.status = 2
				Case 0
					gunray.ent.MoveEntity(0, 0, 150)
					gunray.status = 1
			End Select
		Next
	End Function

EndType
