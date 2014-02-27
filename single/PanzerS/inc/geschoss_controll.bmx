Function calc_geschoss(player:Tplayer)
	For Local bulletsp:TSchussSp = EachIn Schussliste
		bulletsp.weite = bulletsp.weite - 10
		bulletsp.xs = bulletsp.xs + Cos(bulletsp.winkels) * 10
		bulletsp.ys = bulletsp.ys + Sin(bulletsp.winkels) * 10
		If bulletsp.winkels >= 360 Then bulletsp.winkels = bulletsp.winkels Mod 360 'Wenn der Winkel > 360° ist
		If bulletsp.winkels < 0 Then bulletsp.winkels = 360 + bulletsp.winkels 'Wenn der Winkel < 0° ist
		
		If bulletsp.weite <= 0 Then
			bulletsp.treffer = 1
			For Local s:Int = 0 To 3
				Createfire(bulletsp.xs, bulletsp.ys, Rnd(2, 5), bulletsp.winkels + Rnd(- 20, 20), Rnd(3, 5), 20)
				CreateSmoke(bulletsp.xs, bulletsp.ys, Rnd(2, 5), bulletsp.winkels + Rnd(- 20, 20), Rnd(3, 5), 25)
			Next
		EndIf
		
		If bulletsp.weite <= 200 Then
		If Sqr((bulletsp.xs - player.tank.x) ^ 2 + (bulletsp.ys - player.tank.y) ^ 2) < 25 Then
			Local lebenvoher:Int = player.tank.leben
			
			player.tank.leben = player.tank.leben - bulletsp.Kraft
			If player.tank.leben < 0 Then player.tank.leben = 0
			
			If lebenvoher > 0 And player.tank.leben = 0 Then score[1] = score[1] + 1
			
			For Local s:Int = 0 To 3
				CreateFunken(bulletsp.xs, bulletsp.ys, Rnd(5, 8), bulletsp.winkels + Rnd(- 20, 20))
			Next
			For Local s:Int = 0 To 3
				Createfire(bulletsp.xs, bulletsp.ys, Rnd(2, 5), bulletsp.winkels + Rnd(- 20, 20), Rnd(3, 5), 20)
				CreateSmoke(bulletsp.xs, bulletsp.ys, Rnd(2, 5), bulletsp.winkels + Rnd(- 20, 20), Rnd(3, 5), 25)
			Next
			
			bulletsp.treffer = 1
		EndIf
		
		For Local rTbot:Tbot = EachIn botlist
			If Sqr((bulletsp.xs - rTbot.tank.x) ^ 2 + (bulletsp.ys - rTbot.tank.y) ^ 2) < 25 Then
				'Local schaden:Float = 50
				If rTbot.tank.leben > 0 Then
					If rTbot.tank.leben - bulletsp.Kraft <= 0 Then
						Local nTgrater:Tgrater = New Tgrater
						graterlist.Addlast(nTgrater)
						nTgrater.x = rTbot.tank.x
						nTgrater.y = rTbot.tank.y
						nTgrater.r = Rnd(0, 360)
						nTgrater.s = 2
					EndIf
				EndIf
				Local lebenvoher:Int = rTbot.tank.leben
				
				rTbot.tank.leben = rTbot.tank.leben - bulletsp.Kraft
				If rTbot.tank.leben < 0 Then rTbot.tank.leben = 0
				For Local s:Int = 0 To 3
					CreateFunken(bulletsp.xs, bulletsp.ys, Rnd(5, 8), bulletsp.winkels + Rnd(- 20, 20))
				Next
				
				If lebenvoher > 0 And rTbot.tank.leben = 0 Then
					If rTbot.fraktion = 0 Then score[1] = score[1] + 1 Else score[0] = score[0] + 1
				EndIf
				
				For Local s:Int = 0 To 3
					Createfire(bulletsp.xs, bulletsp.ys, Rnd(2, 5), bulletsp.winkels + Rnd(- 20, 20), Rnd(3, 5), 20)
					CreateSmoke(bulletsp.xs, bulletsp.ys, Rnd(2, 5), bulletsp.winkels + Rnd(- 20, 20), Rnd(3, 5), 25)
				Next
				Createfire(bulletsp.xs, bulletsp.ys, Rnd(5, 10), bulletsp.winkels + Rnd(- 20, 20), Rnd(5, 8), 30)
				
				bulletsp.treffer = 1
			EndIf
		Next
		EndIf
		
		Local nothit:Int = 0
		If bulletsp.treffer = 1 Then
			If nothit = 0 Then
				Local nTgrater:Tgrater = New Tgrater
				graterlist.Addlast(nTgrater)
				nTgrater.x = bulletsp.xs + Cos(bulletsp.winkels) * 10
				nTgrater.y = bulletsp.ys + Sin(bulletsp.winkels) * 10
				nTgrater.r = Rnd(0, 360)
				nTgrater.s = Rnd(0.5, 1)
			EndIf
			Schussliste.Remove(bulletsp)
		EndIf
		
	Next
End Function