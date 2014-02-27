Type Sitem
	Field itemC:SitemCatalog
	
	Field menge:Int
	Field stacksize:Int, para:SitemCatalogParameter
	
	Function Create:Sitem(ids:Short, menges:Int)
		Local item:Sitem = New Sitem
		
		If SitemCatalog.array[ids] = Null Then Throw("item id: " + ids + "  not exsist")

		item.para = SitemCatalog.array[ids].para
		item.itemC = SitemCatalog.array[ids]
		
		
		item.menge = menges
		item.stacksize = item.para.size * menges
		
		Return item
	End Function
	
EndType


Type SitemCatalog
	Global list:TList = CreateList()
	Global array:SitemCatalog[65535]
	Field id:Short

	Field para:SitemCatalogParameter
	
	Function Create(ids:Short, paras:SitemCatalogParameter)
		Local itemCatalog:SitemCatalog = New SitemCatalog
		SitemCatalog.list.AddLast(itemCatalog)
		SitemCatalog.array[ids] = itemCatalog
		
		If paras.shipid > - 1 Then base_buildlist.AddLast(itemCatalog)
		
		itemCatalog.id = ids
		itemCatalog.para = paras
		
	End Function
	
	Function Load(t:String)
		Local file:TStream = ReadFile("items\" + t)

		If file Then
		
			'[COPYME 1/3]
			Local idL:Int = -1
			
			Local paraL:SitemCatalogParameter = New SitemCatalogParameter
			
			while not eof(file)
				Local line:String = ReadLine(file)
				Local lineA:String[] = line.Split("=")
				If lineA.Length = 2 Then
					Select lineA[0].ToLower()
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
			
			'[COPYME 3/3]
			If idL = -1 Then isokay = False
			If Not paraL.check() Then isokay = False
			
			If isokay Then
				SitemCatalog.Create(idL, paraL)
				Print("item geladen: " + idL + " Name:" + paraL.name)
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
				If t.EndsWith(".item") Then SitemCatalog.Load(t)
			Forever
			
			CloseDir dir
		EndIf
		
	End Function
	
EndType

Type SitemCatalogParameter
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