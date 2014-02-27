Function reset_draw()
	SetRotation(0)
	SetColor(255, 255, 255)
	SetHandle(0.0, 0.0)
	SetAlpha(1.0)
	SetScale(1.0, 1.0)
	SetOrigin(0.0, 0.0)
End Function

Function calc_move:Float(speed:Float)
	Return ((speed * Float(msc) / 100.0))
End Function


Function Pythagoras:Int(iX1:Int, iY1:Int, iX2:Int, iY2:Int) 'Just the Function which calculates the distance between two points
	Return Sqr(((iX1 - iX2) * (iX1 - iX2)) + ((iY1 - iY2) * (iY1 - iY2)))
End Function