
Global menu_scoreb:Timage = LoadImage("menu/scoreB.png")
Global menu_scorew:Timage = LoadImage("menu/scoreW.png")
Global menu_scorel:Timage = LoadImage("menu/scoreL.png")
Global menu_button:Timage = LoadImage("menu/button.png")
Global menu_buttonO:Timage = LoadImage("menu/buttonO.png")
Global menu_loading:Timage = LoadImage("menu/loading.png")

Global menu_frame:Int

Function draw_loading()
	Cls
	DrawImage(menu_loading, Screenmitte[0] - 400, Screenmitte[1] - 300)
	Flip
End Function

Function blendover(win:Int)
	If menu_frame < 1000 Then menu_frame = menu_frame + 1
	
	If menu_frame < 300 Then
		If menu_frame > 150 Then
			Local blend2:Float = (menu_frame - 150) / 75.0
			If blend2 > 1 Then blend2 = 1
			SetAlpha(blend2)
			SetColor(0, 0, 0)
			DrawRect(0, 0, aufloesung[0], aufloesung[1])
		EndIf
	
		Local blend:Float = menu_frame / 100.0
		If blend > 1 Then blend = 1
		SetAlpha(blend)
		SetColor(255, 255, 255)
		If win Then
			DrawImage(menu_scorew, Screenmitte[0] - 400, Screenmitte[1] - 300)
		Else
			DrawImage(menu_scorew, Screenmitte[0] - 400, Screenmitte[1] - 300)
		End If
	Else
		channelmotor.Stop()
		GAMESTATE = 3
		SetAlpha(1)
		SetColor(0, 0, 0)
		DrawRect(0, 0, aufloesung[0], aufloesung[1])
		
		If menu_frame < 450 Then
			Local blend2:Float = (menu_frame - 300) / 75.0
			If blend2 > 1 Then blend2 = 1
			SetAlpha(blend2)
			SetColor(255, 255, 255)
			DrawImage(menu_scoreb, Screenmitte[0] - 400, Screenmitte[1] - 300)
		Else
			SetAlpha(1)
			SetColor(255, 255, 255)
			DrawImage(menu_scoreb, Screenmitte[0] - 400, Screenmitte[1] - 300)
			
			DrawText("Gefeuert: " + stats[0], Screenmitte[0], Screenmitte[1] - 100)
			DrawText("Gefahren: " + stats[1], Screenmitte[0], Screenmitte[1] - 75)
			DrawText("Gestorben: " + stats[2], Screenmitte[0], Screenmitte[1] - 50)
			
			If mouseover(Screenmitte[0] + 50, Screenmitte[1] + 100, 200, 100) Then
				If MouseDown(1) Then GAMESTATE = 0
				DrawImage(menu_buttonO, Screenmitte[0] + 50, Screenmitte[1] + 100)
			Else
				DrawImage(menu_button, Screenmitte[0] + 50, Screenmitte[1] + 100)
			EndIf
		End If
		
		SetAlpha(1)
		SetColor(255, 255, 255)
		If win Then
			DrawImage(menu_scorew, Screenmitte[0] - 400, Screenmitte[1] - 300)
		Else
			DrawImage(menu_scorew, Screenmitte[0] - 400, Screenmitte[1] - 300)
		End If
		
		
	End If
	SetAlpha(1)
	SetColor(255, 255, 255)
End Function


Function resetblendover()
	menu_frame = 0
End Function