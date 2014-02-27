Type Tgamemap
	Global w:Float = 500, l:Float = 5000
	Global enemycount:Int, enemytimer:Float, enemy_dist_timer:Float, total_distance:Float
	
	Global bossspawn:Int, myboss:Trootenemy, bossdeadtimer:Int
	Global enemylist:Tcreatehold[0], bosslist:Tcreatehold[0]
	
	
	Function render()
		reset_draw()
		SetAlpha(0.25)
		DrawRect((-w / 2.0) - Tscreen.getx(), -l - Tscreen.gety(), w, l)
		
		'DrawText(total_distance+" : "+enemy_dist_timer, 200, 200)
	End Function
	
	Function point_in_field:Int(x:Float, y:Float)
		If x > (w / 2.0) Then Return False
		If x < (-w / 2.0) Then Return False
		'If y > 0 Then Return False
		'If y < - l Then Return False
		Return True
	End Function
	
	Function field_win:Int(x:Float, y:Float)
		If y < - l Then Return True
	End Function
	
	Function Create(cw:Float, cl:Float, cenemycount:Int, level:Int)
		
		w = cw
		If cl < 1000 Then cl = 1000
		l = cl
		enemycount = cenemycount
		
		enemytimer = Float(cl - 500.0) / Float(enemycount)
		
		Local enelst:TList = thold.enemy.getenemysbylvl(level)
		Local templst:Tcreatehold[enelst.Count()]
		enemylist = templst
		Local rex:Int
		For Local re:Tcreatehold = EachIn enelst
			enemylist[rex] = re
			rex:+1
		Next
		
		Local bosslst:TList = thold.enemy.getbossesbylvl(level)
		Local templstx:Tcreatehold[bosslst.Count()]
		bosslist = templstx
		rex = 0
		For Local re:Tcreatehold = EachIn bosslst
			bosslist[rex] = re
			rex:+1
		Next
		
		enemy_dist_timer = 250
		total_distance = 0
		
		bossspawn = 0
		myboss = Null
		bossdeadtimer = 0
	End Function
	
	Function work()
		total_distance:+Tplayer.last_moved_y
		If total_distance > - l + 1000 Then
			If enemy_dist_timer <= 0 Then
				enemy_dist_timer = enemytimer + Rnd(-enemytimer * 0.75, enemytimer * 0.75)
				
				Local parm:Tparm = tparm.Create()
				parm.x = Rnd((-w * 0.25), (w * 0.25))
				parm.y = total_distance - 1000
				enemylist[Rand(0, enemylist.Length - 1)]._create(parm)
				
			Else
				enemy_dist_timer:+Tplayer.last_moved_y
			End If
		Else
			If total_distance < - l Then
				If bossspawn Then
					If myboss.dead Then
						bossdeadtimer:+msc
						If bossdeadtimer > 1000 Then GAME_STATE = 3
					End If
				Else
					Local parm:Tparm = tparm.Create()
					parm.x = Rnd((-w * 0.25), (w * 0.25))
					parm.y = total_distance - 1000
					myboss = Trootenemy(bosslist[Rand(0, bosslist.Length - 1)]._create(parm))
					bossspawn = True
				End If
			End If
		End If
	End Function
EndType