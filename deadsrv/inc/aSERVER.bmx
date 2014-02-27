
'init server
Print ""
Print "*------------*"
Print "*- dead srv -*"
Print "*------------*"
Print ""

Global version:String = "0.1build14"

Global maxopenslots:Int = 1
Global networkupdatespeed:Float = 200
Global aggro:Byte = 1
Global range:Int = 2000

Print "this server is running version: " + version
Print ""
Print "Loading..."

Local test:TStream = WriteFile("accounts/test.tmp")
test.Close()

If FileType("accounts/test.tmp") = 0 Then
	Throw("Can't write files into the 'accounts' folder. Check the server directory rights.")
Else
	DeleteFile("accounts/test.tmp")
EndIf


Global boxx:Float = 12500
Global inerboxx:Float = 10000
Global shotrad:Float = 115
Global snetship:Sship[65536]
Global snetastro:Sastro[65536]
Global snetcargo:Scargo[65536]
Global snetbase:Sbase[65536]
Global snetmodul:Smodul[65536]

Global snetworld:Sworld[65536]
Global snetmap:Smap[65536]

Global aggrometer:Int = 4800


Global base_buildlist:TList = CreateList()

'Sbase.Create(0, 0, 0)

Splayerindex.Load()

Print ""
Print "Loading items:"
SitemCatalog.ScanDir()

Print ""
Print "Loading ships:"
SshipCatalog.ScanDir()

Print ""
Print "Loading moduls:"
SmodulCatalog.ScanDir()

Print ""
Print "Loading Systems:"
Sworld.ScanDir()

Print ""
Print "Opening ports."

Global openslots:Int = 0

Global networkupdatetimer:Int

Global Server:TTCPStream = New TTCPStream
If Not Server.Init() Then Throw("Can't create socket")
If Not Server.SetLocalPort(8888) Then End ; Throw("Can't set local port")
If Not Server.Listen() Then Throw("Can't set to listen")

Print "Done."
Print("Server online at port: 8888")
Print ""

SeedRnd(MilliSecs())
			
Global cnd:Int, creat:Int = 1
Global msc:Int
Global lasttime:Int = MilliSecs()
Global time:Int = MilliSecs()


Global timer:TTimer = CreateTimer(40)
While Not AppTerminate()
	timer.Wait()
	lasttime = time
	time = MilliSecs()
	msc = time - lasttime
	
	If openslots < maxopenslots Then
		openslots:+1
		Local nslot:tslot = New tslot
		slotlist.AddLast(nslot)
	End If

	For Local slot:tslot = EachIn slotlist
		
		If slot.active = 0 Then
			slot.client = Server.Accept()
			If (slot.client <> Null) Then
				Print("Client from '" + DottedIP(slot.client.GetlocalIP()) + "' connected!")
				slot.active = 1
				openslots:-1
			EndIf
		Else
			If (slot.client <> Null) Then
				'aktiv
				
				If slot.client.GetState() <> 1 Then
					slot.close = 1
				Else
	
					If slot.client.RecvAvail() Then
						slot.client.RecvMsg()
						If slot.client.Size() > 0 Then
							Local networkround:Byte = True
							While networkround
								networkround = False
								If slot.client.Size() >= 1 And slot.networkpacketsize = 0 Then slot.networkpacketsize = slot.client.ReadByte()
								If slot.networkpacketsize <= slot.client.Size() And slot.networkpacketsize > 0 Then
									networkround = True
									slot.networkpacketsize = 0
									'empfangen
									If slot.player = Null Then
										login(slot)
									Else
										resive(slot)
									End If
								EndIf
							Wend
						EndIf
					EndIf
					
					
					slot.work()
					
					'senden
					
					slot.client.SendMsg()
				EndIf
				
			Else
				'geschlossen
				slot.close = 1
			End If
		EndIf
		
		If slot.close Then
			Print ("Client disconnected!")
			
			If slot.player And slot.player.disconnected = False Then
				If slot.player.name > 0 Then
					For Local playerx:Splayer = EachIn Splayer.list
						If playerx <> slot.player And playerx.client Then
							Local msgstr:String = "Player " + slot.player.name + " disconnected. Say bye to our friend."
							playerx.client.WriteByte(1 + 1 + msgstr.Length) '+++ size
							playerx.client.WriteByte(254)
							playerx.client.WriteByte(msgstr.Length)
							playerx.client.WriteString(msgstr)
						EndIf
					Next
				EndIf
				
				saveplayer(slot.player.spi.dateiname, slot.player)
				
				slot.player.disconnected = True
				slot.player.delme = True
			EndIf
			
			slot.client.close()
			slot.free()
		EndIf
		
	Next

	'funktionen abarbeiten
	networkupdatetimer:+msc
	mainwork()
	If networkupdatetimer > networkupdatespeed Then networkupdatetimer:-networkupdatespeed
Wend


For Local playerx:Splayer = EachIn Splayer.list
	If playerx.client Then playerx.client.close()
	If playerx.spi Then saveplayer(playerx.spi.dateiname, playerx)
Next


End










