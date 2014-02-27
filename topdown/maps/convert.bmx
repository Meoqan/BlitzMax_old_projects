Framework brl.filesystem
Import brl.pngloader
Import brl.pixmap
Import brl.standardio
SuperStrict

Local dir:Int = ReadDir(CurrentDir())

If Not dir RuntimeError "failed to read current directory"

Repeat
	Local t:String = NextFile(dir)
	If t="" Exit
	If t="." Or t=".." Continue
	Print t
	If t.EndsWith(".png") Then
		Local pix:TPixmap = LoadPixmap(t)
		If pix.width = 256 And pix.height = 256 Then
			pix = ResizePixmap(pix, 32, 32)
			SavePixmapPNG(pix, t, 9)
		End If
	EndIf
Forever

CloseDir dir