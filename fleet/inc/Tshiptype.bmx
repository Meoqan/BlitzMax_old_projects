Type Tshiptype
	Field id:Short
	Field name:String
	Field HP:Int
	Field armor:Int
	
	Field signatur:Float
	Field scanner:Float
	
	Field pointscost:Int
	
	Field dmg:Int
EndType
Global shiptypelist:TList = CreateList()

Function add_shiptype:Tshiptype()
	Local nshiptype:Tshiptype = New Tshiptype
	shiptypelist.AddLast(nshiptype)
	Return nshiptype
End Function

Global tst:Tshiptype
Global ids:Int
Global ship_comand:Tshiptype
Global ship_lwarpig:Tshiptype

tst = add_shiptype() ; ids:+1 ; ship_comand = tst
tst.id = ids
tst.name = "Command Ship"
tst.HP = 1000
tst.armor = 20
tst.signatur = 500
tst.scanner = 1000
tst.pointscost = 0
tst.dmg = 25

tst = add_shiptype() ; ids:+1 ; ship_lwarpig = tst
tst.id = ids
tst.name = "Light Warpig"
tst.HP = 100
tst.armor = 5
tst.signatur = 50
tst.scanner = 50
tst.pointscost = 1
tst.dmg = 5