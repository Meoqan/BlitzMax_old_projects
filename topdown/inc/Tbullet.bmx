' bullet type
Type TBullet

	Global list:TList=CreateList()
	Global no:Int ' no of bullets
	Global speed:Float = 2
	Field ent:Tsprite
	Field x#,y#,z#
	Field vx#,vy#,vz#
	Field life:Int ' life counter
	
	' create bullet
	Function Shoot(x#,y#,z#,nx#,ny#,nz#)
	
		Local bull:TBullet=New TBullet
		no=no+1
		bull.ent = CreateSprite()
		'EntityColor(bull.ent, 255, 255, 100)
		bull.ent.EntityTexture(tex_bullet)
		
		bull.x#=x#
		bull.y#=y#
		bull.z#=z#
		bull.vx#=nx#
		bull.vy#=ny#
		bull.vz#=nz#
		PositionEntity bull.ent,x#,y#,z#,True
		EntityType bull.ent, 3
		EntityRadius bull.ent, 1
		ResetEntity bull.ent
		ListAddLast(list,bull)

	End Function
	
	' update bullet
	Method Update()
	 
		' life counter is over 600, so bullet hasn't collided with anything for a long time - free it
		If life>600
			ListRemove list,Self
			FreeEntity ent
			no=no-1
			Return
		EndIf
		
		life=life+1 ' increase bullet life counter
	
		x#=EntityX(ent)
		y#=EntityY(ent)
		z#=EntityZ(ent)
	
		' check to see if the entity collided with the level
		Local entity_hit:Int = CountCollisions(ent)

		For Local i:Int = 1 To entity_hit
		    For Local zomb:Tzombie = EachIn Tzombie.list
				If zomb.ent = CollisionEntity(ent, i) Then
					zomb.life:-25
				EndIf
			Next
		Next
		
		' if the entity collided with the level, make it bounce
		If entity_hit
	
			' bullet has collided with level - reset life counter
			life = 601
			
			rem
			' get the normal of the surface which the entity collided with
			Local nx# = CollisionNX#(ent,1)
			Local ny# = CollisionNY#(ent,1)
			Local nz# = CollisionNZ#(ent,1)

			' compute the dot product of the entity's motion vector and the normal of the surface collided with
			Local vdotn# = vx#*nx# + vy#*ny# + vz#*nz#
			
			' calculate the normal force
			Local nfx# = -2.0 * nx# * vdotn#
			Local nfy# = -2.0 * ny# * vdotn# 
			Local nfz# = -2.0 * nz# * vdotn#

			' add the normal force to the direction vector. 
			vx# = vx# + nfx#
			vy# = vy# + nfy#
			vz# = vz# + nfz#
			endrem
		EndIf
		
		' apply gravity
		Local GRAVITY#=0.01
		'vy#=vy#-GRAVITY#

		' update position values
	
		x = x + (vx * speed)
		y = y + (vy * speed)
		z = z + (vz * speed)
			
		PositionEntity ent,x#,y#,z#
	
	End Method
	
	Function clear()
		For Local bull:TBullet = EachIn list
			bull.ent.FreeEntity()

		Next
		list.clear()
	End Function
End Type