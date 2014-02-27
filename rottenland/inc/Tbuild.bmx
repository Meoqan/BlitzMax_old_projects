Rem
	bbdoc: Tbuild
End Rem
Type Tbuild
	Global ids:Int = 1
	
	Field id:Int, status:Byte
	
	Field contemp:Tcontemplate, x:Int, y:Int
	
	Field time:Int
	
	Method work()
		If status <= i1 Then
			time:+i1
			If time >= contemp.btime Then
				status = i2
				mapdata[x, y].obj = contemp.image
				If contemp.h = i2 Then getVerTile(x, y, i0, - i1) ; mapdata[VerTile[i0], VerTile[i1] ].obj = Null
				If contemp.w = i2 Then getVerTile(x, y, i1, i0) ; mapdata[VerTile[i0], VerTile[i1] ].obj = Null
				If contemp.w = i2 And contemp.h = i2 Then getVerTile(x, y, i1, - i1) ; mapdata[VerTile[i0], VerTile[i1] ].obj = Null
			EndIf
		EndIf
		
		If status = i2 Then buildlist.Remove(Self)
	End Method
End Type
Global buildlist:TList = CreateList()

Global buildimg:Timage = LoadImage("gfx/build.png")

Function add_build:Tbuild(x:Int, y:Int, con:Tcontemplate)
	Local build:Tbuild = New Tbuild
	buildlist.AddLast(build)
	build.id = build.ids
	build.ids:+i1
	build.contemp = con
	build.x = x
	build.y = y
	mapdata[x, y].obj = buildimg
	If con.h = i2 Then getVerTile(x, y, i0, - i1) ; mapdata[VerTile[i0], VerTile[i1] ].obj = buildimg
	If con.w = i2 Then getVerTile(x, y, i1, i0) ; mapdata[VerTile[i0], VerTile[i1] ].obj = buildimg
	If con.w = i2 And con.h = i2 Then getVerTile(x, y, i1, - i1) ; mapdata[VerTile[i0], VerTile[i1] ].obj = buildimg
	Return build
End Function