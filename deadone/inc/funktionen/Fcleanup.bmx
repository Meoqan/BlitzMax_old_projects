Function CleanUP()
	
	For Local id:Int = 0 To 65534
		netastro[id] = Null
		netenemy[id] = Null
		netbase[id] = Null
		netplayer[id] = Null
		netship[id] = Null
		netcargo[id] = Null
	Next

	Tastro.list.Clear()
	Tenemy.list.Clear()
	Tbase.list.Clear()
	Tthruster.list.Clear()
	Tplayer.list.Clear()
	Tsmoke.list.Clear()
	Tbeam.list.Clear()
	
	base_aelement = 0
	base_movetowarehouse = 0
	base_movetoship = 0
	base_einschmelzen = 0
	base_cargo = Null
	base_einsteigen = 0
	base_buildid = -1
	base_buliderid = -1
	base_buildertimer = 0
	
	key_shoot1 = False
	key_shoot2 = False
	key_shoot3 = False
	
	HR_jump = False
	HR_x = 0
	HR_y = 0
	
	mousetyp = 0
	mouseship = Null
	targetship = Null
	targetattack = 0
	mouseastro = Null
	targetastro = Null
	inthebase = 0
	
	player = New Tplayer
	
End Function


