Rem
	bbdoc:Undocumented type
End Rem
Type Tcontemplate
	Global ids:Int = 1
	
	Field id:Int
	Field name:String
	
	Field h:Byte, w:Byte
	
	Field btime:Int
	
	Field image:TImage
End Type
Global contemplatelist:TList = CreateList()

Function add_contemplate:Tcontemplate()
	Local contemplate:Tcontemplate = New Tcontemplate
	contemplatelist.AddLast(contemplate)
	contemplate.id = contemplate.ids
	contemplate.ids:+1
	Return contemplate
End Function

Local ncontemplate:Tcontemplate


ncontemplate = add_contemplate()
Global contemp001:Tcontemplate = ncontemplate
ncontemplate.name = "Panzerfabrik"
ncontemplate.image = LoadImage("gfx/con001.png")
ncontemplate.h = 2
ncontemplate.w = 2
ncontemplate.btime = 10