Framework brl.Blitz
Import brl.Retro
Import brl.Stream
Import pub.ZLib
SuperStrict

Include "inc\compress.bmx"

For Local a:String = EachIn AppArgs
	If Right(a, 4).ToLower() = ".scp" Then
		Compressfile(a, a + "c")
	End If
Next