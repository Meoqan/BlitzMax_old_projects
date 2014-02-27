Global screenx:Float = 1024
Global screeny:Float = 768
Global split20x:Float = screenx / 5.0
Global split20y:Float = screeny / 5.0
Global pointx:Float = screenx / 2.0
Global pointy:Float = screeny / 2.0

AppTitle = "Topdown"

Graphics3D(screenx, screeny, 32, 2)
ClearTextureFilters()
SeedRnd(MilliSecs())

Global GAME_STATE:Int

Global tex_zomb:Ttexture = loadtexture("gfx\zomb.png", 2)
Global tex_view:Ttexture = loadtexture("gfx\view.png", 2)
Global tex_player:Ttexture = loadtexture("gfx\player.png", 2)
Global tex_bullet:Ttexture = loadtexture("gfx\bullet.png", 2)
Global tex_teleport:Ttexture = loadtexture("gfx\teleport.png", 2)
Global tex_target:Ttexture = loadtexture("gfx\target.png", 2)
Global tex_trooper:Ttexture = loadtexture("gfx\trooper.png", 2)
Global tex_blood:Ttexture = loadtexture("gfx\blood.png", 2)
Global tex_key:Ttexture = loadtexture("gfx\key.png", 2)
Global tex_hub:Ttexture = loadtexture("gfx\hub.png", 2)

Global img_life:TImage = LoadImage("gfx\life.png")
Global img_titel_back:TImage = LoadImage("gfx\titel_back.png")
Global img_titel_start:TImage = LoadImage("gfx\titel_start.png")
Global img_titel_end:TImage = LoadImage("gfx\titel_end.png")

Global cam:TCamera = CreateCamera()
PositionEntity cam, 0, 100, 0
CameraRange cam,.5,500
cam.TurnEntity(90, 0, 0)

Local light:TLight=CreateLight(1)
RotateEntity light,90,0,0

Global mapmesh:TMesh 
Global mapname:String

' enable collisions 
'1=spieler
'2=welt
'3=bullet
'4=zombies
'5=zview
'6=teleport
'7=plyray
'8=zombiehitbox
'9=playerhitbox
'10=eneray
Collisions(1, 2, 2, 3) 'spieler testet welt
Collisions(4, 2, 2, 3) 'zombie testet welt
Collisions(4, 1, 1, 1) 'zombie testet player
Collisions(3, 2, 2, 1) 'bullet testet welt
Collisions(3, 4, 1, 1) 'bullet testet zombies
Collisions(5, 2, 2, 1) 'zview testet welt
Collisions(5, 1, 1, 1) 'zview testet spieler
Collisions(1, 6, 1, 1) 'spieler testet teleport
Collisions(7, 2, 2, 1) 'plyray testet welt
Collisions(7, 8, 1, 1) 'plyray testet zombiehitbox
Collisions(10, 2, 2, 1) 'eneray testet welt
Collisions(10, 9, 1, 1) 'eneray testet playerhitbox

Tplayer.init()



' used by fps code
Local old_ms:Int = MilliSecs()
Local renders:Int
Local fps:Int
Global tmr:Ttimer = CreateTimer(60)

While Not (KeyDown(KEY_ESCAPE) Or AppTerminate())
	
	Local mh1:Int = MouseHit(1)
	Select GAME_STATE
		Case 0
			BeginMax2D()
			Cls
			DrawImage(img_titel_back, 0, 0)
			DrawImage(img_titel_start, 600, 500)
			EndMax2D()
			If mh1 And ismouseover(600, 500, 300, 150) Then
				GAME_STATE = 1
				Tspawn.loadmap("map01")
				Tspawn.spawn()
			EndIf
		Case 1
			'player heal
			Tplayer.lifecounter:+1
			If Tplayer.lifecounter > 60 Then
				Tplayer.lifecounter = 0
				Tplayer.life:+1
				If Tplayer.life > Tplayer.maxlife Then Tplayer.life = Tplayer.maxlife
			EndIf
			'playerdead
			If Tplayer.life <= 0 Then
				Tspawn.spawn()
				Tplayer.life = 100
				Tplayer.ent.PositionEntity(0, 10, 0)
				Tplayer.ent.ResetEntity()
			End If
		
			Tplayer.update()
			
			'control player
			Tplayer.ent.MoveEntity(((KeyDown(KEY_D) Or KeyDown(KEY_RIGHT)) - (KeyDown(KEY_A) Or KeyDown(KEY_LEFT))) / 2.0, -.25, ((KeyDown(KEY_W) Or KeyDown(KEY_UP)) - (KeyDown(KEY_S) Or KeyDown(KEY_DOWN))) / 2.0)
			Local winkel:Float = -ATan2(MouseY() - pointy, MouseX() - pointx) - 90
			Tplayer.ray.RotateSprite(winkel)
			Tplayer.ray.RotateEntity(0, winkel, 0)
			
			' shoot bullet
			
			If Tplayer.wpncd > 0 Then
				Tplayer.wpncd:-1
			Else
				If MouseDown(1)
					Tgunray.Create(EntityX(Tplayer.ray, True), EntityY(Tplayer.ray, True), EntityZ(Tplayer.ray, True), winkel + Rnd(-5, 5))
					Tplayer.wpncd = 10
				EndIf
			End If
		
			rem
			If KeyHit(KEY_SPACE)
				Tzombie.Create(EntityX(Tplayer.ent, True), EntityZ(Tplayer.ent, True))
			End If
			endrem
			
			
			' update bullets
			For Local bull:TBullet=EachIn TBullet.list
				bull.Update()
			Next
			
			
			Thub.update()
			Tzombie.update()
			Tgunray.update()
			Tblood.update()
			
			UpdateWorld
			
			cam.PositionEntity(Tplayer.ent.EntityX(), Tplayer.ent.EntityY() + 100, Tplayer.ent.EntityZ())
			
			RenderWorld
			
			renders=renders+1
		
			' calculate fps
			If MilliSecs()-old_ms>=1000
				old_ms=MilliSecs()
				fps=renders
				renders = 0
			EndIf
			
			BeginMax2D()
			SetColor(255, 255, 255)
			rem
			DrawText("FPS: " + String(fps), 0, 0)
			DrawText("Pos: x: " + Tplayer.ent.EntityX() + " y: " + Tplayer.ent.EntityY() + " z: " + Tplayer.ent.EntityZ(), 0, 20)
			DrawText("No. of zombies: " + Tzombie.list.Count(), 0, 40)
			DrawText("life: " + Tplayer.life, 0, 60)
			endrem
			
			SetColor(255, 255, 255)
			DrawImage(img_life, 20, 768 - 20 - 150)
			SetColor(0, 255, 0)
			If Tplayer.life < 75 Then SetColor(255, 255, 0)
			If Tplayer.life < 25 Then SetColor(255, 0, 0)
			DrawText(Int(Tplayer.life), 130, 768 - 20 - 55)
			SetColor(255, 255, 255)
			EndMax2D()
		Case 2
			BeginMax2D()
			Cls
			DrawImage(img_titel_back, 0, 0)
			DrawImage(img_titel_end, 512 - 150, (768 / 2) - 75)
			EndMax2D()
			If mh1 Then
				GAME_STATE = 0
			EndIf
	End Select

	
	
	tmr.Wait()
	Flip 0
	
Wend

End

Function ismouseover:Byte(x:Int, y:Int, l:Int, w:Int)
	If x < MouseX() And x + l > MouseX() And y < MouseY() And y + w > MouseY() Then Return 1 Else Return 0
End Function