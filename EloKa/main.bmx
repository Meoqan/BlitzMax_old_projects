

SeedRnd MilliSecs()



AppTitle = "EloKa"

Graphics(1024, 768)
SetBlend(ALPHABLEND)

Global testwin:Tggui = ggui_new(100, 100, 144 * 4, 90 * 4)
Global back:Timage = LoadImage("gfx/asd.jpg")

Global tmr:Ttimer = CreateTimer(40)
'HideMouse()
While Not (KeyHit(KEY_ESCAPE) Or AppTerminate())
	tmr.Wait()
	Cls
	SetReset()
	SetScale(Float(testwin.w) / Float(back.width), Float(testwin.h) / Float(back.height))
	DrawImage(back, 0, 0)
	SetScale(1, 1)
	DrawText("hello!", 10, 10)
	testwin.Grab()
	Cls
	
	SetReset()
	
	SetScale(1024.0 / back.width, 768.0 / back.height)
	DrawImage(back, 0, 0)

	ggui_Draw()
	
	
	Flip()
Wend

Function SetReset()
	SetRotation(0)
	SetScale(1, 1)
	SetAlpha(1)
	SetHandle(0, 0)
	SetColor(255, 255, 255)
End Function