Type Titem
	Field itemC:TitemCatalog
	
	Field menge:Int
	Field stacksize:Int, para:TitemCatalogParameter
	
	Function Create:Titem(ids:Short, menges:Int)
		Local item:Titem = New Titem
		
		If TitemCatalog.array[ids] = Null Then Throw("item id: " + ids + "  not exsist")

		item.para = TitemCatalog.array[ids].para
		item.itemC = TitemCatalog.array[ids]
		
		
		item.menge = menges
		item.stacksize = item.para.size * menges
		
		Return item
	End Function
	
EndType


Type TitemCatalog
	Global list:TList = CreateList()
	Global array:TitemCatalog[65535]
	Field id:Short

	Field tex:TImage, texo:TImage
	
	Field para:TitemCatalogParameter
	
	Function Create(ids:Short, texs:TImage, texos:TImage, paras:TitemCatalogParameter)
		Local itemCatalog:TitemCatalog = New TitemCatalog
		TitemCatalog.list.AddLast(itemCatalog)
		TitemCatalog.array[ids] = itemCatalog
		
		If paras.shipid > - 1 Then base_buildlist.AddLast(itemCatalog)
		
		itemCatalog.id = ids
		itemCatalog.para = paras
		itemCatalog.tex = texs
		itemCatalog.texo = texos
		
	End Function
	
	Function Load(t:String)
		Local file:TStream = ReadFile("items\" + t)

		If file Then
		
			Local texL:TImage, texoL:TImage
		
			'[COPYME 1/3]
			Local idL:Int = -1
			
			Local paraL:TitemCatalogParameter = New TitemCatalogParameter
			
			while not eof(file)
				Local line:String = ReadLine(file)
				Local lineA:String[] = line.Split("=")
				If lineA.Length = 2 Then
					Select lineA[0].ToLower()
						Case "tex"
							texL = MidLoadImage("items\" + lineA[1])
						Case "texover"
							texoL = MidLoadImage("items\" + lineA[1])
					
						'[COPYME 2/3]
						Case "id"
							idL = lineA[1].ToInt()
						Case "name"
							paraL.name = lineA[1]
						Case "size"
							paraL.size = lineA[1].ToInt()
						Case "shipid"
							paraL.shipid = lineA[1].ToInt()
						Case "needitemid1"
							paraL.needitemid1 = lineA[1].ToInt()
						Case "needitemamount1"
							paraL.needitemamount1 = lineA[1].ToInt()
						Case "needitemid2"
							paraL.needitemid2 = lineA[1].ToInt()
						Case "needitemamount2"
							paraL.needitemamount2 = lineA[1].ToInt()
						Case "needitemid3"
							paraL.needitemid3 = lineA[1].ToInt()
						Case "needitemamount3"
							paraL.needitemamount3 = lineA[1].ToInt()
						Case "needitemid4"
							paraL.needitemid4 = lineA[1].ToInt()
						Case "needitemamount4"
							paraL.needitemamount4 = lineA[1].ToInt()
						Case "buildtime"
							paraL.buildtime = lineA[1].ToInt()
					End Select
					'Print(lineA[0] + "  -  " + lineA[1])
				End If
			Wend
			CloseStream file
			
			
			'check
			Local isokay:Int = True
			
			If texL = Null Then isokay = False
			If texoL = Null Then isokay = False
			
			'[COPYME 3/3]
			If idL = -1 Then isokay = False
			If Not paraL.check() Then isokay = False
			
			If isokay Then
				TitemCatalog.Create(idL, texL, texoL, paraL)
			End If
			
			
		EndIf
	End Function
	
		
	Function ScanDir()
		Local dir:Int = ReadDir("items")

		If dir Then
		
			Repeat
				Local t:String = NextFile(dir)
				If t="" Exit
				If t="." Or t=".." Continue
				If t.EndsWith(".item") Then TitemCatalog.Load(t)
			Forever
			
			CloseDir dir
		EndIf
		
	End Function
	
EndType

Type TitemCatalogParameter
	Field name:String
	Field size:Int, shipid:Int = -1
	Field needitemid1:Int = -1, needitemamount1:Short
	Field needitemid2:Int = -1, needitemamount2:Short
	Field needitemid3:Int = -1, needitemamount3:Short
	Field needitemid4:Int = -1, needitemamount4:Short
	Field buildtime:Int
	
	Method check:Int()
		Local isokay:Int = True
		
		If name.Length = 0 Then isokay = False
		If needitemid1 > - 1 And needitemamount1 = 0 Then isokay = False
		If needitemid2 > - 1 And needitemamount2 = 0 Then isokay = False
		If needitemid3 > - 1 And needitemamount3 = 0 Then isokay = False
		If needitemid4 > - 1 And needitemamount4 = 0 Then isokay = False
		
		Return isokay
	End Method
End Type