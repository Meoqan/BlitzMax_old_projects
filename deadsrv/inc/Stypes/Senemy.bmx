

Type Senemy
	'&&&& Basic fields
	'[system]
	Global ids:Short
	Global list:TList = CreateList()
	Field id:Short, delme:Byte
	'[position]
	Field x:Float, y:Float, r:Float, s:Float
	'[sichbar]
	Field visionlist:TList = CreateList()
	'[map and world]
	Field inworld:Sworld, inmap:Smap
	'&&&&
	
	'[eigene fields]
	Field target:Sship, targettimer:Int
	Field name:String, active:Byte, time:Int

	Field kitime:Int, to_r:Float
	
	Field ship:Sship, shipID:Short
	
	Function Create(shipids:Short, x:Float, y:Float, r:Float, xworld:Sworld, xmap:Smap)
		Local enemy:Senemy = New Senemy
		list.AddLast(enemy)
		
		enemy.id = ids ;ids:+1
		enemy.x = x
		enemy.y = y
		enemy.r = r
		enemy.time = 500
		enemy.shipID = shipids
		enemy.ship = Sship.Create(shipids,, enemy)
		enemy.ship.eney = enemy
		
		enemy.inworld = xworld
		enemy.inmap = xmap
		enemy.inmap.enemylist.AddLast(enemy)
		
	End Function
	
	Method sendupdate(client:TTCPStream)
		client.WriteByte(1 + 2 + 4 + 4 + 4 + 4 + 4) '+++ size
		client.WriteByte(2)
		client.WriteShort(id)
		client.WriteFloat(x)
		client.WriteFloat(y)
		client.WriteFloat(r)
		client.WriteFloat(ship.life)
		client.WriteFloat(ship.shield)
	End Method
	
	Method sendcreate(client:TTCPStream)
		client.WriteByte(1 + 2 + 4 + 4 + 4 + 4 + 4 + 2 + 2) '+++ size
		client.WriteByte(32)
		client.WriteShort(id)
		client.WriteFloat(x)
		client.WriteFloat(y)
		client.WriteFloat(r)
		client.WriteFloat(ship.life)
		client.WriteFloat(ship.shield)
		client.WriteShort(shipID)
		client.WriteShort(ship.id)
	End Method
	
End Type