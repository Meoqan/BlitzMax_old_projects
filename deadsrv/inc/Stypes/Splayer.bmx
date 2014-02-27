

Type Splayer
	'&&&& Basic fields
	'[system]
	Global ids:Short
	Global list:TList = CreateList()
	Field id:Short, delme:Byte = True
	'[position]
	Field x:Float, y:Float, r:Float, s:Float
	'[sichbar]
	Field visionlist:TList = CreateList()
	'[map and world]
	Field inworld:Sworld, inmap:Smap
	'&&&&
	
	'[keyframing]
	Field to_x:Float, to_y:Float, to_r:Float, last_x:Float, last_y:Float, last_msc:Int, last_time:Int, moveentferung:Float
	
	'[target]
	Field target:Sship, shot:Byte, targetastro:Sastro, miningtimer:Int
	
	'[hyperraum]
	Field jumptime:Int
	Field targetmap:Smap
	
	'[eigene fields]
	Field delmetimer:Int', rs:Float 'rs fuer schuss berechnung benoerigt
	
	Field miningcooldown:Int
	
	Field client:TTCPStream, disconnected:Byte
	Field name:String = "Player", active:Byte
	
	Field baseID:Int = -1, base:Sbase, lastbase:Int
	
	Field playerlist:TList = CreateList()
	Field enemylist:TList = CreateList()
	Field astrolist:TList = CreateList()
	Field baselist:TList = CreateList()
	
	Field spi:Splayerindex
	
	Field relaylist:TList = CreateList()
	
	Field ship:Sship, shipID:Short, isflying:Byte
	
	Field basecargo:Scargo = Scargo.Create(0), baseshipbulding:Int = -1, baseshipbuildtimer:Int
	
	Method sendbasecargocreate()
		basecargo.sendcreate(client)
		basecargo.sendbaserelate(client)
		basecargo.sendupdate(client)
	End Method
	
	Method updatebasecargo()
		basecargo.sendupdate(client)
	End Method
	
	Method dropinbase(idxx:Short, dateiname:String = "")
		x = snetbase[idxx].x
		y = snetbase[idxx].y
		r = snetbase[idxx].r
		s = 0
		
		baseID = snetbase[idxx].id
		base = snetbase[idxx]
		delme = False
		
		If dateiname.Length > 0 Then
			loadplayer(dateiname, Self)
		Else
			shipID = 4
			ship = Sship.Create(shipID, Self)
			ship.cargo = Scargo.Create(ship.para.maxcargo)
		End If
		
		If inmap Then inmap.playerlist.Remove(Self)
		inworld = base.inworld
		inmap = base.inmap
		inmap.playerlist.AddLast(Self)
		
		last_time = time
		last_msc = 0
		to_x = x
		to_y = y
		to_r = r
		
		isflying = False
		
		inmap.inworld.sendworlddata(client)
		
		'send new clouds
		client.WriteByte(1) '+++ size
		client.WriteByte(152)
		client.WriteByte(inmap.myx)
		client.WriteByte(inmap.myy)
		
		sendselfupdate()
		
	End Method
	
	Method sendupdate(clientx:TTCPStream)
		clientx.WriteByte(1 + 2 + 4 + 4 + 4 + 4 + 4 + 4) '+++ size
		clientx.WriteByte(1)
		clientx.WriteShort(id)
		clientx.WriteFloat(x)
		clientx.WriteFloat(y)
		clientx.WriteFloat(r)
		clientx.WriteInt(baseID)
		clientx.WriteFloat(ship.life)
		clientx.WriteFloat(ship.shield)
	End Method
	
	Method sendcreate(clientx:TTCPStream)
		clientx.WriteByte(1 + 2 + 4 + 4 + 4 + 4 + 4 + 4 + 2 + 2 + 1 + name.Length) '+++ size
		clientx.WriteByte(31)
		clientx.WriteShort(id)
		clientx.WriteFloat(x)
		clientx.WriteFloat(y)
		clientx.WriteFloat(r)
		clientx.WriteInt(baseID)
		clientx.WriteFloat(ship.life)
		clientx.WriteFloat(ship.shield)
		clientx.WriteShort(shipID)
		clientx.WriteShort(ship.id)
		clientx.WriteByte(name.Length)
		clientx.WriteString(name)
	End Method
	
	Method sendselfstatus()
		client.WriteByte(1 + 1 + 4 + 4 + 4) '+++ size
		client.WriteByte(14)
		client.WriteInt(baseID)
		If ship Then
			client.WriteFloat(ship.life)
			client.WriteFloat(ship.shield)
		Else
			client.WriteFloat(0)
			client.WriteFloat(0)
		EndIf
	End Method
	
	Method sendselfnewpos()
		client.WriteByte(1 + 1 + 4 + 4 + 4) '+++ size
		client.WriteByte(3)
		client.WriteFloat(x)
		client.WriteFloat(y)
		client.WriteFloat(r)
	End Method
	
	Method sendselfupdate()
		client.WriteByte(1 + 2 + 4 + 4 + 4 + 4 + 4 + 4 + 4 + 2 + 2 + 1 + 1) '+++ size
		client.WriteByte(4)
		client.WriteShort(id)
		client.WriteFloat(x)
		client.WriteFloat(y)
		client.WriteFloat(r)
		client.WriteFloat(s)
		client.WriteInt(baseID)
		client.WriteFloat(ship.life)
		client.WriteFloat(ship.shield)
		client.WriteShort(shipID)
		client.WriteShort(ship.id)
		client.WriteByte(inmap.myx)
		client.WriteByte(inmap.myy)
		
		If ship.modulHI Then
			client.WriteByte(1 + 2 + 2) '+++ size
			client.WriteByte(200)
			client.WriteShort(ship.modulHI.id)
			client.WriteShort(ship.modulHI.modulC.id)
		End If
		
		If ship.modulMID Then
			client.WriteByte(1 + 2 + 2) '+++ size
			client.WriteByte(201)
			client.WriteShort(ship.modulMID.id)
			client.WriteShort(ship.modulMID.modulC.id)
		End If
		
		If ship.modulLOW Then
			client.WriteByte(1 + 2 + 2) '+++ size
			client.WriteByte(202)
			client.WriteShort(ship.modulLOW.id)
			client.WriteShort(ship.modulLOW.modulC.id)
		End If
		ship.cargo.sendcreate(client)
		ship.cargo.sendrelate(client, ship)
		ship.cargo.senditems(client)
	End Method
	
End Type

