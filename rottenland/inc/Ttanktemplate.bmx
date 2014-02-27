Rem
	bbdoc:Undocumented type
End Rem
Type Ttanktemplate
	Global ids:Int = 1
	
	Field id:Int
	Field name:String
	
	Field btime:Int
	
	Field image:TImage[8]
End Type


Global tanktemplatelist:TList = CreateList()

Function add_tanktemplate:Ttanktemplate()
	Local tanktemplate:Ttanktemplate = New Ttanktemplate
	tanktemplatelist.AddLast(tanktemplate)
	tanktemplate.id = tanktemplate.ids
	tanktemplate.ids:+1
	Return tanktemplate
End Function

Local ntanktemplate:Ttanktemplate


ntanktemplate = add_tanktemplate()
Global tanktemp001:Ttanktemplate = ntanktemplate
ntanktemplate.name = "Panzer"
ntanktemplate.image[0] = LoadImage("gfx/tank001x1.png")
ntanktemplate.image[1] = LoadImage("gfx/tank001x2.png")
ntanktemplate.image[2] = LoadImage("gfx/tank001x3.png")
ntanktemplate.image[3] = LoadImage("gfx/tank001x4.png")
ntanktemplate.image[4] = LoadImage("gfx/tank001x5.png")
ntanktemplate.image[5] = LoadImage("gfx/tank001x6.png")
ntanktemplate.image[6] = LoadImage("gfx/tank001x7.png")
ntanktemplate.image[7] = LoadImage("gfx/tank001x8.png")
ntanktemplate.btime = 10