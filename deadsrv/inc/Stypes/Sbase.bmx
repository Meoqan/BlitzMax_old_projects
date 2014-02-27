Type Sbase
	'&&&& Basic fields
	'[system]
	'Global ids:Short
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
	Global refresh:Int
	Field name:String
	
	
	Function Create:Sbase(idx:Short, x:Float, y:Float, r:Float, xname:String = "", xworld:Sworld, xmap:Smap)
		Local base:Sbase = New Sbase
		list.AddLast(base)
		
		base.id = idx
		snetbase[base.id] = base
		
		base.x = x
		base.y = y
		base.r = r
		
		base.name = xname
		
		base.inworld = xworld
		base.inmap = xmap
		base.inmap.baselist.AddLast(base)
		
		Return base
	End Function
	
	Method sendupdate(client:TTCPStream)
		client.WriteByte(1 + 2 + 4 + 4 + 4) '+++ size
		client.WriteByte(5)
		client.WriteShort(id)
		client.WriteFloat(x)
		client.WriteFloat(y)
		client.WriteFloat(r)
	End Method
	
	Method sendcreate(client:TTCPStream)
		client.WriteByte(1 + 2 + 4 + 4 + 4) '+++ size
		client.WriteByte(35)
		client.WriteShort(id)
		client.WriteFloat(x)
		client.WriteFloat(y)
		client.WriteFloat(r)
	End Method
End Type
