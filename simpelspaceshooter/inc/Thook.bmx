rem
	Halter Type für die verschiedenen Spielelemente.
	(muss in einer Type sein weil: Types werden als erstes im 
	Code ausgeführt und diese variablen müssen schon verfügbar 
	sein für die in der Vererbung ausgeführten register Funktionen.
	Muss als allererstes stehen im Code.)
endrem
Type Thold
	Global enemy:Thook = Thook.Create()
	Global shoot:Thook = Thook.Create()
End Type



rem
	Ankerpunkt für die Create Funktion und Workflow schleife.
endrem
Type Thook
	Field clist:TList = CreateList() 'Liste für die create Funktionen.
	Field wflist:TList = CreateList() 'Liste für die workflow Funktionen.
	
	'Erstellt ein neues Thook für eine neue Gattung im Spiel.
	Function Create:Thook()
		Return New Thook
	End Function
	
	'register Methode für die create Funktion.
	Method register(myname:String, create_x:Object(parm:Tparm), fromlvl:Int = 0, tolvl:Int = 0, isboss:Int = 0)
		Local re:Tcreatehold = New Tcreatehold
		
		re._name = myname
		re._create = create_x
		re._fromlvl = fromlvl
		re._tolvl = tolvl
		re._isboss = isboss
		
		clist.AddLast(re)
	End Method
	
	'register Methode für den workflow, um das Objekt ein das Spiel einzubinden.
	Method registerworkflow:Tworkflowhold(obj:Object)
		Local nm:Tworkflowhold = New Tworkflowhold
		
		nm._sgo = Tsupergameobject(obj)
		nm._wflist = wflist
		
		wflist.AddLast(nm)
		Return nm
	End Method
	
	Method getenemysbylvl:TList(lvl:Int)
		Local newlist:TList = CreateList()
		For Local re:Tcreatehold = EachIn clist
			If re._fromlvl <= lvl And re._tolvl >= lvl And re._isboss = False Then
				If Not newlist.Contains(re) Then newlist.AddLast(re)
			EndIf
		Next
		Return newlist
	End Method
	
	Method getbossesbylvl:TList(lvl:Int)
		Local newlist:TList = CreateList()
		For Local re:Tcreatehold = EachIn clist
			If re._fromlvl <= lvl And re._tolvl >= lvl And re._isboss = True Then
				If Not newlist.Contains(re) Then newlist.AddLast(re)
			EndIf
		Next
		Return newlist
	End Method
	
	'erstellt ein neues Objekt, das zuvor mit register() in die create liste gespeichert wurde.
	Method Createobject(name:String, parm:Tparm = Null)
		If parm = Null Then parm = Tparm.Create()
		For Local re:Tcreatehold = EachIn clist 'diese Methode ist ineffizient und kann durch eine array ersetzt werden.
			If re._name = name Then re._create(parm)
		Next
	End Method
	
	'arbeitet alle Objekte durch und ruft deren Methode work() auf.
	Method allwork()
		For Local mm:Tworkflowhold = EachIn wflist
			mm._sgo.work()
		Next
	End Method
	
	'arbeitet alle Objekte durch und ruft deren Methode render() auf.
	Method allrender()
		For Local mm:Tworkflowhold = EachIn wflist
			mm._sgo.render()
		Next
	End Method
	
	Method check_hit:Int(x:Float, y:Float, dmg:Float)
		For Local wfh:Tworkflowhold = EachIn wflist
			If wfh._sgo.check_hit(x, y, dmg) Then Return True
		Next
	End Method
	
	Method Cleanup()
		wflist.Clear()
	End Method
	
End Type

rem
	diese Type dient als Container für variablen die man der create Funktion mit übergeben möchte.
endrem
Type Tparm
	Field x:Int, y:Int
	
	Function Create:Tparm()
		Return New Tparm
	End Function
End Type

'diese Type dient als Halter für den Namen und die create Funktion.
Type Tcreatehold
	Field _name:String
	Field _create:Object(parm:Tparm)
	Field _fromlvl:Int, _tolvl:Int, _isboss:Int
End Type

'diese Type dient als Halter für den myhook zum entfernen aus der Arbeitsschleife.
Type Tworkflowhold
	Field _sgo:Tsupergameobject
	Field _wflist:TList
	Method unregister()
		_wflist.Remove(Self)
	End Method
End Type



rem
	Das "supergameobject" ist eine blanke Type mit leeren Funktionen.
	sie dient nur dazu die Vererbungen in die Grundtype zu casten
	und die Funktionen aufzurufen.
	möchte man zum Beispiel für die Kollisionsabfrage eine neue Methode hinzufügen
	muss man das in dieser Grund Type machen, allerdings sollte diese dann auch leer sein.
	erst in der root Vererbung sollte man eine Standard Funktion hinzufügen und mit Code versehen.
endrem
Type Tsupergameobject
	Function Create:Object(parm:Tparm)
	End Function
	Method work()
	End Method
	Method render()
	End Method
	Method check_hit(x:Float, y:Float, dmg:Float)
	End Method
End Type

