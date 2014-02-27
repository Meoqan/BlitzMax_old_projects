Type Tslot
	Field client:TTCPStream
	Field active:Byte, close:Byte
	Field networkpacketsize:Int = 0
	
	Field player:Splayer

	
	Method work()
		
	End Method
	
	
	
	Method free()
  		slotlist.remove(Self)
 	EndMethod
End Type
Global slotlist:TList = CreateList()


Type TipDB
	Global DB:TMap = New TMap
	Field ip:String, time:Int, connections:Int, fails:Int
	
	Function insert(ips:String)
		If Not TipDB.DB.Contains(ips) Then
			Local ipdb:TipDB = New TipDB
			ipdb.ip = ips
			ipdb.time = MilliSecs()
			ipdb.connections = 1
			ipdb.fails = 1
			TipDB.DB.insert(ips, ipdb)
		Else
			Local ipdb:TipDB = TipDB(TipDB.DB.ValueForKey(ips))
			ipdb.time = MilliSecs()
			ipdb.fails:+1
		End If
	End Function
	
	Function testip:Byte(ips:String)
		If TipDB.DB.Contains(ips) Then
			Local ipdb:TipDB = TipDB(TipDB.DB.ValueForKey(ips))
			ipdb.time = MilliSecs()
			ipdb.connections:+1
		End If
	End Function
	
End Type