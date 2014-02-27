
Type Tbeam
	Global list:TList = CreateList()
	Field fromship:Short, toship:Short, time:Int
	Field shieldhit:Byte
	
	Field z1x:Float = Rnd(0, 24) - 12
	Field z1y:Float = Rnd(0, 24) - 12
	Field z2x:Float = Rnd(0, 24) - 12
	Field z2y:Float = Rnd(0, 24) - 12
	
	Global astrolist:TList = CreateList()
	Field toastro:Short
End Type