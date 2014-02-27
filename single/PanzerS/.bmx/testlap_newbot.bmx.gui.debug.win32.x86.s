	format	MS COFF
	extrn	___bb_audio_audio
	extrn	___bb_blitz_blitz
	extrn	___bb_directsoundaudio_directsoundaudio
	extrn	___bb_glmax2d_glmax2d
	extrn	___bb_jpgloader_jpgloader
	extrn	___bb_oggloader_oggloader
	extrn	___bb_pngloader_pngloader
	extrn	___bb_random_random
	extrn	___bb_retro_retro
	extrn	___bb_timer_timer
	extrn	_bbATan2
	extrn	_bbAppTitle
	extrn	_bbArrayNew
	extrn	_bbArrayNew1D
	extrn	_bbCos
	extrn	_bbEmptyArray
	extrn	_bbEmptyString
	extrn	_bbFloatPow
	extrn	_bbFloatToInt
	extrn	_bbGCFree
	extrn	_bbNullObject
	extrn	_bbObjectClass
	extrn	_bbObjectCompare
	extrn	_bbObjectCtor
	extrn	_bbObjectDowncast
	extrn	_bbObjectDtor
	extrn	_bbObjectFree
	extrn	_bbObjectNew
	extrn	_bbObjectRegisterType
	extrn	_bbObjectReserved
	extrn	_bbObjectSendMessage
	extrn	_bbObjectToString
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbSin
	extrn	_bbSqr
	extrn	_bbStringClass
	extrn	_brl_blitz_ArrayBoundsError
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_graphics_Flip
	extrn	_brl_graphics_Graphics
	extrn	_brl_linkedlist_CreateList
	extrn	_brl_max2d_Cls
	extrn	_brl_max2d_DrawImage
	extrn	_brl_max2d_GetHandle
	extrn	_brl_max2d_GetRotation
	extrn	_brl_max2d_GetScale
	extrn	_brl_max2d_SetBlend
	extrn	_brl_max2d_SetClsColor
	extrn	_brl_max2d_SetScale
	extrn	_brl_polledinput_AppTerminate
	extrn	_brl_polledinput_KeyHit
	extrn	_brl_polledinput_MouseX
	extrn	_brl_polledinput_MouseY
	extrn	_brl_timer_CreateTimer
	public	__bb_TSchussSp_Delete
	public	__bb_TSchussSp_New
	public	__bb_Taction_Delete
	public	__bb_Taction_New
	public	__bb_Tbot_Delete
	public	__bb_Tbot_New
	public	__bb_Tdrive_Delete
	public	__bb_Tdrive_New
	public	__bb_Tengine_Delete
	public	__bb_Tengine_New
	public	__bb_Tfire_Delete
	public	__bb_Tfire_New
	public	__bb_Tfunken_Delete
	public	__bb_Tfunken_New
	public	__bb_Tglow_Delete
	public	__bb_Tglow_New
	public	__bb_Tgrater_Delete
	public	__bb_Tgrater_New
	public	__bb_Tmud_Delete
	public	__bb_Tmud_New
	public	__bb_Tplayer_Delete
	public	__bb_Tplayer_New
	public	__bb_Tsanddust_Delete
	public	__bb_Tsanddust_New
	public	__bb_Tsmoke_Delete
	public	__bb_Tsmoke_New
	public	__bb_Tspur_Delete
	public	__bb_Tspur_New
	public	__bb_Ttexgroup_Delete
	public	__bb_Ttexgroup_New
	public	__bb_Ttextur_Delete
	public	__bb_Ttextur_New
	public	__bb_Twaypoint_Delete
	public	__bb_Twaypoint_New
	public	__bb_main
	public	_bb_BufferTarget
	public	_bb_BufferTower
	public	_bb_CalcWinkel
	public	_bb_DrawPicture
	public	_bb_PushCollision
	public	_bb_PushQuad
	public	_bb_Schussliste
	public	_bb_TSchussSp
	public	_bb_Taction
	public	_bb_Tbot
	public	_bb_Tdrive
	public	_bb_Tengine
	public	_bb_Tfire
	public	_bb_Tfunken
	public	_bb_Tglow
	public	_bb_Tgrater
	public	_bb_Tmud
	public	_bb_Tplayer
	public	_bb_Tsanddust
	public	_bb_Tsmoke
	public	_bb_Tspur
	public	_bb_Ttexgroup
	public	_bb_Ttextur
	public	_bb_Twaypoint
	public	_bb_actionlist
	public	_bb_botlist
	public	_bb_diagonal
	public	_bb_firelist
	public	_bb_funkenlist
	public	_bb_glowlist
	public	_bb_graterlist
	public	_bb_mapray
	public	_bb_maptexgrouplist
	public	_bb_maptexturlist
	public	_bb_maptodest
	public	_bb_mudlist
	public	_bb_mx
	public	_bb_my
	public	_bb_player
	public	_bb_printlistlist
	public	_bb_sanddustlist
	public	_bb_smokelist
	public	_bb_spurlist
	public	_bb_texgrouplist
	public	_bb_texturlist
	public	_bb_tmr
	public	_bb_waypointlist
	public	_bb_waypointtodest
	public	_bb_wayray
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	cmp	dword [_544],0
	je	_545
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_545:
	mov	dword [_544],1
	push	ebp
	push	_518
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_glmax2d_glmax2d
	call	___bb_timer_timer
	call	___bb_random_random
	call	___bb_retro_retro
	call	___bb_audio_audio
	call	___bb_oggloader_oggloader
	call	___bb_directsoundaudio_directsoundaudio
	call	___bb_jpgloader_jpgloader
	call	___bb_pngloader_pngloader
	push	_bb_Tsmoke
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_Tmud
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_Tsanddust
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_Tfire
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_Tfunken
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_Tspur
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_Tgrater
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TSchussSp
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_Ttextur
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_Ttexgroup
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_Twaypoint
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_Taction
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_Tbot
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_Tplayer
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_Tglow
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_Tdrive
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_Tengine
	call	_bbObjectRegisterType
	add	esp,4
	push	_435
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_438]
	and	eax,1
	cmp	eax,0
	jne	_439
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_smokelist],eax
	or	dword [_438],1
_439:
	push	_440
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_438]
	and	eax,2
	cmp	eax,0
	jne	_442
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_mudlist],eax
	or	dword [_438],2
_442:
	push	_443
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_438]
	and	eax,4
	cmp	eax,0
	jne	_445
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_sanddustlist],eax
	or	dword [_438],4
_445:
	push	_446
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_438]
	and	eax,8
	cmp	eax,0
	jne	_448
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_firelist],eax
	or	dword [_438],8
_448:
	push	_449
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_438]
	and	eax,16
	cmp	eax,0
	jne	_451
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_funkenlist],eax
	or	dword [_438],16
_451:
	push	_452
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_438]
	and	eax,32
	cmp	eax,0
	jne	_454
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_spurlist],eax
	or	dword [_438],32
_454:
	push	_455
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_438]
	and	eax,64
	cmp	eax,0
	jne	_457
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_graterlist],eax
	or	dword [_438],64
_457:
	push	_458
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_438]
	and	eax,128
	cmp	eax,0
	jne	_460
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_Schussliste],eax
	or	dword [_438],128
_460:
	push	_461
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_438]
	and	eax,256
	cmp	eax,0
	jne	_463
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_texturlist],eax
	or	dword [_438],256
_463:
	push	_464
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_438]
	and	eax,512
	cmp	eax,0
	jne	_466
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_maptexturlist],eax
	or	dword [_438],512
_466:
	push	_467
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_438]
	and	eax,1024
	cmp	eax,0
	jne	_469
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_texgrouplist],eax
	or	dword [_438],1024
_469:
	push	_470
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_438]
	and	eax,2048
	cmp	eax,0
	jne	_472
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_maptexgrouplist],eax
	or	dword [_438],2048
_472:
	push	_473
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_438]
	and	eax,4096
	cmp	eax,0
	jne	_475
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_waypointlist],eax
	or	dword [_438],4096
_475:
	push	_476
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_438]
	and	eax,8192
	cmp	eax,0
	jne	_478
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_printlistlist],eax
	or	dword [_438],8192
_478:
	push	_479
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_438]
	and	eax,16384
	cmp	eax,0
	jne	_481
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_actionlist],eax
	or	dword [_438],16384
_481:
	push	_482
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_438]
	and	eax,32768
	cmp	eax,0
	jne	_484
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_botlist],eax
	or	dword [_438],32768
_484:
	push	_485
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_438]
	and	eax,65536
	cmp	eax,0
	jne	_487
	push	_bb_Tplayer
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_player],eax
	or	dword [_438],65536
_487:
	push	_488
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_438]
	and	eax,131072
	cmp	eax,0
	jne	_490
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_glowlist],eax
	or	dword [_438],131072
_490:
	push	_491
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_18
	inc	dword [ebx+4]
	mov	eax,dword [_bbAppTitle]
	dec	dword [eax+4]
	jnz	_496
	push	eax
	call	_bbGCFree
	add	esp,4
_496:
	mov	dword [_bbAppTitle],ebx
	push	_497
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	60
	push	0
	push	768
	push	1024
	call	_brl_graphics_Graphics
	add	esp,20
	push	_498
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	3
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_499
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_438]
	and	eax,262144
	cmp	eax,0
	jne	_501
	fld	qword [_1731]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fstp	dword [_bb_diagonal]
	or	dword [_438],262144
_501:
	push	_502
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	call	_brl_max2d_SetClsColor
	add	esp,12
	push	_503
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_504
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_438]
	and	eax,524288
	cmp	eax,0
	jne	_506
	push	_bbNullObject
	push	1109393408
	call	_brl_timer_CreateTimer
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_tmr],eax
	or	dword [_438],524288
_506:
	push	_507
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_94
_96:
	push	ebp
	push	_517
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_510
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_tmr]
	cmp	ebx,_bbNullObject
	jne	_512
	call	_brl_blitz_NullObjectError
_512:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	_513
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_514
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_MouseX
	mov	dword [ebp+-4],eax
	fild	dword [ebp+-4]
	fstp	dword [_bb_mx]
	push	_515
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_MouseY
	mov	dword [ebp+-4],eax
	fild	dword [ebp+-4]
	fstp	dword [_bb_my]
	push	_516
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_94:
	push	27
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	jne	_508
	call	_brl_polledinput_AppTerminate
_508:
	cmp	eax,0
	je	_96
_95:
	mov	ebx,0
	jmp	_267
_267:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tsmoke_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_547
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Tsmoke
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+8]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+12]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+16]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+20]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+24]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+28]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+32]
	mov	eax,dword [ebp-4]
	fld	dword [_1757]
	fstp	dword [eax+36]
	push	ebp
	push	_546
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_270
_270:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tsmoke_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_273:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_550
_550:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tmud_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_552
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Tmud
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+8]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+12]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+16]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+20]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+24]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+28]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+32]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+36]
	mov	eax,dword [ebp-4]
	fld1
	fstp	dword [eax+40]
	push	ebp
	push	_551
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_276
_276:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tmud_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_279:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_554
_554:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tsanddust_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_556
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Tsanddust
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+8]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+12]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+16]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+20]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+24]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+28]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+32]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+36]
	mov	eax,dword [ebp-4]
	fld	dword [_1766]
	fstp	dword [eax+40]
	push	ebp
	push	_555
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_282
_282:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tsanddust_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_285:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_558
_558:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tfire_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_560
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Tfire
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+8]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+12]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+16]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+20]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+24]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+28]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+32]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+36]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+40]
	mov	eax,dword [ebp-4]
	fld	dword [_1771]
	fstp	dword [eax+44]
	push	ebp
	push	_559
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_288
_288:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tfire_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_291:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_562
_562:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tfunken_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_564
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Tfunken
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+8]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+12]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+16]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+20]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+24]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+28]
	push	ebp
	push	_563
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_294
_294:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tfunken_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_297:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_566
_566:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tspur_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_568
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Tspur
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+8]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+12]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+16]
	mov	eax,dword [ebp-4]
	fld	dword [_1780]
	fstp	dword [eax+20]
	mov	eax,dword [ebp-4]
	mov	byte [eax+24],0
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+28]
	mov	eax,dword [ebp-4]
	mov	dword [eax+32],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+36],0
	push	ebp
	push	_567
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_300
_300:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tspur_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_303:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_570
_570:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tgrater_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_572
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Tgrater
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+8]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+12]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+16]
	mov	eax,dword [ebp-4]
	fld	dword [_1785]
	fstp	dword [eax+20]
	mov	eax,dword [ebp-4]
	mov	byte [eax+24],0
	mov	eax,dword [ebp-4]
	fld1
	fstp	dword [eax+28]
	push	ebp
	push	_571
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_306
_306:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tgrater_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_309:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_574
_574:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TSchussSp_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_577
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TSchussSp
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+8]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+12]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+16]
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],0
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],edx
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+28]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+32]
	push	ebp
	push	_576
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_312
_312:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TSchussSp_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_315:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_581
	push	eax
	call	_bbGCFree
	add	esp,4
_581:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_579
_579:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Ttextur_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_593
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Ttextur
	push	8
	push	_582
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+8],eax
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],0
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],edx
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+24],eax
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+32],edx
	mov	eax,dword [ebp-4]
	mov	dword [eax+36],0
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+40],edx
	mov	eax,dword [ebp-4]
	mov	byte [eax+44],0
	mov	eax,dword [ebp-4]
	mov	byte [eax+45],0
	mov	eax,dword [ebp-4]
	mov	byte [eax+46],0
	mov	eax,dword [ebp-4]
	mov	byte [eax+47],0
	mov	eax,dword [ebp-4]
	mov	byte [eax+48],0
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+52],edx
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+56],edx
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+60],edx
	mov	eax,dword [ebp-4]
	mov	byte [eax+64],0
	push	ebp
	push	_592
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_318
_318:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Ttextur_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_321:
	mov	eax,dword [ebx+60]
	dec	dword [eax+4]
	jnz	_596
	push	eax
	call	_bbGCFree
	add	esp,4
_596:
	mov	eax,dword [ebx+56]
	dec	dword [eax+4]
	jnz	_598
	push	eax
	call	_bbGCFree
	add	esp,4
_598:
	mov	eax,dword [ebx+52]
	dec	dword [eax+4]
	jnz	_600
	push	eax
	call	_bbGCFree
	add	esp,4
_600:
	mov	eax,dword [ebx+40]
	dec	dword [eax+4]
	jnz	_602
	push	eax
	call	_bbGCFree
	add	esp,4
_602:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_604
	push	eax
	call	_bbGCFree
	add	esp,4
_604:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_606
	push	eax
	call	_bbGCFree
	add	esp,4
_606:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_608
	push	eax
	call	_bbGCFree
	add	esp,4
_608:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_610
	push	eax
	call	_bbGCFree
	add	esp,4
_610:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_612
	push	eax
	call	_bbGCFree
	add	esp,4
_612:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_594
_594:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Ttexgroup_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_617
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Ttexgroup
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],edx
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+16],eax
	push	ebp
	push	_616
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_324
_324:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Ttexgroup_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_327:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_621
	push	eax
	call	_bbGCFree
	add	esp,4
_621:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_623
	push	eax
	call	_bbGCFree
	add	esp,4
_623:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_625
	push	eax
	call	_bbGCFree
	add	esp,4
_625:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_619
_619:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Twaypoint_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_637
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Twaypoint
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+8]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+12]
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],0
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+32],edx
	push	16
	push	_629
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+36],eax
	mov	eax,dword [ebp-4]
	mov	dword [eax+40],1
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+44]
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+48],eax
	push	16
	push	_632
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+52],eax
	push	20
	push	_634
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+56],eax
	push	ebp
	push	_636
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_330
_330:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Twaypoint_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_333:
	mov	eax,dword [ebx+56]
	dec	dword [eax+4]
	jnz	_640
	push	eax
	call	_bbGCFree
	add	esp,4
_640:
	mov	eax,dword [ebx+52]
	dec	dword [eax+4]
	jnz	_642
	push	eax
	call	_bbGCFree
	add	esp,4
_642:
	mov	eax,dword [ebx+48]
	dec	dword [eax+4]
	jnz	_644
	push	eax
	call	_bbGCFree
	add	esp,4
_644:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_646
	push	eax
	call	_bbGCFree
	add	esp,4
_646:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_648
	push	eax
	call	_bbGCFree
	add	esp,4
_648:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_650
	push	eax
	call	_bbGCFree
	add	esp,4
_650:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_652
	push	eax
	call	_bbGCFree
	add	esp,4
_652:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_638
_638:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Taction_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_655
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Taction
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],edx
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],0
	push	ebp
	push	_654
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_336
_336:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Taction_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_339:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_658
	push	eax
	call	_bbGCFree
	add	esp,4
_658:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_656
_656:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tbot_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_664
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Tbot
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+8]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+12]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+16]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+20]
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],0
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+28]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+32]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+36]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+40]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+44]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+48]
	mov	eax,dword [ebp-4]
	mov	byte [eax+52],0
	mov	eax,dword [ebp-4]
	mov	byte [eax+53],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+56],0
	mov	eax,dword [ebp-4]
	mov	byte [eax+60],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+64],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+68],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+72],240
	mov	eax,dword [ebp-4]
	fld	dword [_1810]
	fstp	dword [eax+76]
	mov	eax,dword [ebp-4]
	mov	byte [eax+80],80
	mov	eax,dword [ebp-4]
	mov	dword [eax+84],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+88],180
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+92]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+96]
	mov	eax,dword [ebp-4]
	mov	byte [eax+100],0
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+104],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+108],edx
	mov	eax,dword [ebp-4]
	fld1
	fstp	dword [eax+112]
	mov	eax,dword [ebp-4]
	mov	dword [eax+116],0
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+120],edx
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+124],eax
	mov	eax,dword [ebp-4]
	mov	dword [eax+128],1
	push	ebp
	push	_663
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_342
_342:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tbot_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_345:
	mov	eax,dword [ebx+124]
	dec	dword [eax+4]
	jnz	_667
	push	eax
	call	_bbGCFree
	add	esp,4
_667:
	mov	eax,dword [ebx+120]
	dec	dword [eax+4]
	jnz	_669
	push	eax
	call	_bbGCFree
	add	esp,4
_669:
	mov	eax,dword [ebx+108]
	dec	dword [eax+4]
	jnz	_671
	push	eax
	call	_bbGCFree
	add	esp,4
_671:
	mov	eax,dword [ebx+104]
	dec	dword [eax+4]
	jnz	_673
	push	eax
	call	_bbGCFree
	add	esp,4
_673:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_665
_665:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tplayer_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_677
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Tplayer
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+8]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+12]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+16]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+20]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+24]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+28]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+32]
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+36],edx
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+40]
	mov	eax,dword [ebp-4]
	mov	dword [eax+44],120
	mov	eax,dword [ebp-4]
	mov	dword [eax+48],1
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+52]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+56]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+60]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+64]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+68]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+72]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+76]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+80]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+84]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+88]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+92]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+96]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+100]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+104]
	mov	eax,dword [ebp-4]
	mov	dword [eax+108],0
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+112]
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+116],eax
	push	ebp
	push	_676
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_348
_348:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tplayer_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_351:
	mov	eax,dword [ebx+116]
	dec	dword [eax+4]
	jnz	_680
	push	eax
	call	_bbGCFree
	add	esp,4
_680:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_682
	push	eax
	call	_bbGCFree
	add	esp,4
_682:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_678
_678:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tglow_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_684
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Tglow
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+8]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+12]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+16]
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+32],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+36],0
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+40]
	push	ebp
	push	_683
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_354
_354:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tglow_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_357:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_686
_686:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tdrive_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_688
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Tdrive
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+8]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+12]
	push	ebp
	push	_687
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_360
_360:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tdrive_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_363:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_690
_690:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tengine_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_692
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Tengine
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+8]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+12]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+16]
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],0
	push	ebp
	push	_691
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_366
_366:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tengine_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_369:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_694
_694:
	mov	esp,ebp
	pop	ebp
	ret
_bb_DrawPicture:
	push	ebp
	mov	ebp,esp
	sub	esp,80
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	fld	dword [ebp+20]
	fstp	dword [ebp-16]
	fld	dword [ebp+24]
	fstp	dword [ebp-20]
	fldz
	fstp	dword [ebp-24]
	fldz
	fstp	dword [ebp-28]
	fldz
	fstp	dword [ebp-32]
	fldz
	fstp	dword [ebp-36]
	fldz
	fstp	dword [ebp-40]
	fldz
	fstp	dword [ebp-44]
	fldz
	fstp	dword [ebp-48]
	fldz
	fstp	dword [ebp-52]
	push	ebp
	push	_720
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_695
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-24]
	push	_697
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-28]
	push	_699
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	eax,dword [ebp-28]
	push	eax
	lea	eax,dword [ebp-24]
	push	eax
	call	_brl_max2d_GetScale
	add	esp,8
	push	_700
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-32]
	push	_702
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-36]
	push	_704
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	eax,dword [ebp-36]
	push	eax
	lea	eax,dword [ebp-32]
	push	eax
	call	_brl_max2d_GetHandle
	add	esp,8
	push	_705
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_707
	call	_brl_blitz_NullObjectError
_707:
	fld	dword [ebp-16]
	mov	eax,dword [ebx+8]
	mov	dword [ebp+-80],eax
	fild	dword [ebp+-80]
	fdivp	st1,st0
	fstp	dword [ebp-40]
	push	_709
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_711
	call	_brl_blitz_NullObjectError
_711:
	fld	dword [ebp-20]
	mov	eax,dword [ebx+12]
	mov	dword [ebp+-80],eax
	fild	dword [ebp+-80]
	fdivp	st1,st0
	fstp	dword [ebp-44]
	push	_713
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-44]
	fmul	dword [ebp-28]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-40]
	fmul	dword [ebp-24]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetScale
	add	esp,8
	push	_714
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_1831]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-60]
	fld	qword [_1832]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-60]
	faddp	st1,st0
	fstp	qword [ebp-60]
	fld	qword [ebp-60]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fstp	dword [ebp-48]
	push	_716
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbATan2
	add	esp,16
	fchs
	fld	qword [_1833]
	faddp	st1,st0
	fstp	dword [ebp-52]
	push	_718
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	fld	dword [ebp-12]
	fstp	qword [ebp-68]
	call	_brl_max2d_GetRotation
	fsub	dword [ebp-52]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	dword [ebp-48]
	fmul	dword [ebp-28]
	fmulp	st1,st0
	fld	qword [ebp-68]
	faddp	st1,st0
	fstp	qword [ebp-68]
	fld	qword [ebp-68]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-8]
	fstp	qword [ebp-76]
	call	_brl_max2d_GetRotation
	fsub	dword [ebp-52]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	dword [ebp-48]
	fmul	dword [ebp-24]
	fmulp	st1,st0
	fld	qword [ebp-76]
	faddp	st1,st0
	fstp	qword [ebp-76]
	fld	qword [ebp-76]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebp-4]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_719
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-28]
	push	dword [ebp-24]
	call	_brl_max2d_SetScale
	add	esp,8
	mov	ebx,0
	jmp	_376
_376:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_PushCollision:
	push	ebp
	mov	ebp,esp
	sub	esp,92
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-12],eax
	fld	dword [ebp+16]
	fstp	dword [ebp-16]
	mov	eax,dword [ebp+20]
	mov	dword [ebp-20],eax
	mov	eax,dword [ebp+24]
	mov	dword [ebp-24],eax
	fld	dword [ebp+28]
	fstp	dword [ebp-28]
	movzx	eax,byte [ebp+32]
	mov	eax,eax
	mov	byte [ebp-4],al
	fldz
	fstp	dword [ebp-32]
	fldz
	fstp	dword [ebp-36]
	push	ebp
	push	_753
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_733
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_1838]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	mov	eax,dword [ebp-20]
	fsub	dword [eax]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-44]
	fld	qword [_1839]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	mov	eax,dword [ebp-24]
	fsub	dword [eax]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-44]
	faddp	st1,st0
	fstp	qword [ebp-44]
	fld	qword [ebp-44]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fstp	dword [ebp-32]
	push	_735
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fdiv	dword [_1840]
	fstp	dword [ebp-16]
	push	_736
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-28]
	fdiv	dword [_1841]
	fstp	dword [ebp-28]
	push	_737
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-32]
	fld	dword [ebp-16]
	fadd	dword [ebp-28]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_738
	push	ebp
	push	_752
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_739
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	mov	eax,dword [ebp-24]
	fsub	dword [eax]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	mov	eax,dword [ebp-20]
	fsub	dword [eax]
	sub	esp,4
	fstp	dword [esp]
	call	_bb_CalcWinkel
	add	esp,8
	fadd	dword [_1842]
	fstp	dword [ebp-36]
	push	_741
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,1
	jne	_742
	push	ebp
	push	_745
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_743
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fstp	qword [ebp-52]
	fld	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	dword [ebp-16]
	fadd	dword [ebp-28]
	fsub	dword [ebp-32]
	fmulp	st1,st0
	fld	qword [ebp-52]
	faddp	st1,st0
	fstp	qword [ebp-52]
	fld	qword [ebp-52]
	fstp	dword [ebx]
	push	_744
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fstp	qword [ebp-60]
	fld	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	dword [ebp-16]
	fadd	dword [ebp-28]
	fsub	dword [ebp-32]
	fmulp	st1,st0
	fld	qword [ebp-60]
	faddp	st1,st0
	fstp	qword [ebp-60]
	fld	qword [ebp-60]
	fstp	dword [ebx]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_746
_742:
	push	ebp
	push	_751
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_747
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fstp	qword [ebp-68]
	fld	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	dword [ebp-16]
	fadd	dword [ebp-28]
	fsub	dword [ebp-32]
	fdiv	dword [_1843]
	fmulp	st1,st0
	fld	qword [ebp-68]
	faddp	st1,st0
	fstp	qword [ebp-68]
	fld	qword [ebp-68]
	fstp	dword [ebx]
	push	_748
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fstp	qword [ebp-76]
	fld	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	dword [ebp-16]
	fadd	dword [ebp-28]
	fsub	dword [ebp-32]
	fdiv	dword [_1844]
	fmulp	st1,st0
	fld	qword [ebp-76]
	faddp	st1,st0
	fstp	qword [ebp-76]
	fld	qword [ebp-76]
	fstp	dword [ebx]
	push	_749
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	mov	eax,dword [ebp-20]
	fld	dword [eax]
	fstp	qword [ebp-84]
	fld	dword [ebp-36]
	fsub	dword [_1845]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	dword [ebp-16]
	fadd	dword [ebp-28]
	fsub	dword [ebp-32]
	fdiv	dword [_1846]
	fmulp	st1,st0
	fld	qword [ebp-84]
	faddp	st1,st0
	fstp	qword [ebp-84]
	fld	qword [ebp-84]
	fstp	dword [ebx]
	push	_750
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	mov	eax,dword [ebp-24]
	fld	dword [eax]
	fstp	qword [ebp-92]
	fld	dword [ebp-36]
	fsub	dword [_1847]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	dword [ebp-16]
	fadd	dword [ebp-28]
	fsub	dword [ebp-32]
	fdiv	dword [_1848]
	fmulp	st1,st0
	fld	qword [ebp-92]
	faddp	st1,st0
	fstp	qword [ebp-92]
	fld	qword [ebp-92]
	fstp	dword [ebx]
	call	dword [_bbOnDebugLeaveScope]
_746:
	call	dword [_bbOnDebugLeaveScope]
_738:
	mov	ebx,0
	jmp	_385
_385:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_PushQuad:
	push	ebp
	mov	ebp,esp
	sub	esp,80
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	fld	dword [ebp+20]
	fstp	dword [ebp-16]
	fld	dword [ebp+24]
	fstp	dword [ebp-20]
	fld	dword [ebp+28]
	fstp	dword [ebp-24]
	fld	dword [ebp+32]
	fstp	dword [ebp-28]
	fldz
	fstp	dword [ebp-32]
	fldz
	fstp	dword [ebp-36]
	fldz
	fstp	dword [ebp-40]
	fldz
	fstp	dword [ebp-44]
	fldz
	fstp	dword [ebp-48]
	fldz
	fstp	dword [ebp-52]
	fldz
	fstp	dword [ebp-56]
	fldz
	fstp	dword [ebp-60]
	fldz
	fstp	dword [ebp-64]
	fldz
	fstp	dword [ebp-68]
	fldz
	fstp	dword [ebp-72]
	push	ebp
	push	_789
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_762
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_1853]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-24]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-80]
	fld	qword [_1854]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-28]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-80]
	faddp	st1,st0
	fstp	qword [ebp-80]
	fld	qword [ebp-80]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	qword [_1855]
	fdivp	st1,st0
	fstp	dword [ebp-32]
	push	_764
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fstp	dword [ebp-36]
	push	_766
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-20]
	fstp	dword [ebp-40]
	push	_768
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	fld	dword [ebp-32]
	fmul	dword [_1856]
	sub	esp,4
	fstp	dword [esp]
	lea	eax,dword [ebp-40]
	push	eax
	lea	eax,dword [ebp-36]
	push	eax
	push	dword [ebp-12]
	mov	eax,dword [ebp-8]
	lea	eax,dword [eax]
	push	eax
	mov	eax,dword [ebp-4]
	lea	eax,dword [eax]
	push	eax
	call	_bb_PushCollision
	add	esp,28
	push	_769
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fld	dword [ebp-24]
	fdiv	dword [_1857]
	faddp	st1,st0
	fstp	dword [ebp-44]
	push	_771
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-20]
	fld	dword [ebp-28]
	fdiv	dword [_1858]
	faddp	st1,st0
	fstp	dword [ebp-48]
	push	_773
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-32]
	lea	eax,dword [ebp-48]
	push	eax
	lea	eax,dword [ebp-44]
	push	eax
	push	dword [ebp-12]
	mov	eax,dword [ebp-8]
	lea	eax,dword [eax]
	push	eax
	mov	eax,dword [ebp-4]
	lea	eax,dword [eax]
	push	eax
	call	_bb_PushCollision
	add	esp,28
	push	_774
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fld	dword [ebp-24]
	fdiv	dword [_1859]
	faddp	st1,st0
	fstp	dword [ebp-52]
	push	_776
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-20]
	fld	dword [ebp-28]
	fdiv	dword [_1860]
	fsubp	st1,st0
	fstp	dword [ebp-56]
	push	_778
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-32]
	lea	eax,dword [ebp-56]
	push	eax
	lea	eax,dword [ebp-52]
	push	eax
	push	dword [ebp-12]
	mov	eax,dword [ebp-8]
	lea	eax,dword [eax]
	push	eax
	mov	eax,dword [ebp-4]
	lea	eax,dword [eax]
	push	eax
	call	_bb_PushCollision
	add	esp,28
	push	_779
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fld	dword [ebp-24]
	fdiv	dword [_1861]
	fsubp	st1,st0
	fstp	dword [ebp-60]
	push	_781
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-20]
	fld	dword [ebp-28]
	fdiv	dword [_1862]
	fsubp	st1,st0
	fstp	dword [ebp-64]
	push	_783
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-32]
	lea	eax,dword [ebp-64]
	push	eax
	lea	eax,dword [ebp-60]
	push	eax
	push	dword [ebp-12]
	mov	eax,dword [ebp-8]
	lea	eax,dword [eax]
	push	eax
	mov	eax,dword [ebp-4]
	lea	eax,dword [eax]
	push	eax
	call	_bb_PushCollision
	add	esp,28
	push	_784
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fld	dword [ebp-24]
	fdiv	dword [_1863]
	fsubp	st1,st0
	fstp	dword [ebp-68]
	push	_786
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-20]
	fld	dword [ebp-28]
	fdiv	dword [_1864]
	faddp	st1,st0
	fstp	dword [ebp-72]
	push	_788
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-32]
	lea	eax,dword [ebp-72]
	push	eax
	lea	eax,dword [ebp-68]
	push	eax
	push	dword [ebp-12]
	mov	eax,dword [ebp-8]
	lea	eax,dword [eax]
	push	eax
	mov	eax,dword [ebp-4]
	lea	eax,dword [eax]
	push	eax
	call	_bb_PushCollision
	add	esp,28
	mov	ebx,0
	jmp	_394
_394:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_BufferTower:
	push	ebp
	mov	ebp,esp
	sub	esp,28
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	fldz
	fstp	dword [ebp-16]
	fldz
	fstp	dword [ebp-20]
	mov	dword [ebp-24],0
	push	ebp
	push	_829
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_803
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fsub	dword [ebp-8]
	fadd	dword [_1867]
	fstp	dword [ebp-16]
	push	_805
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_19
_21:
	push	ebp
	push	_807
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_806
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fadd	dword [_1868]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
_19:
	fld	dword [ebp-16]
	fld	dword [_1869]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_21
_20:
	push	_808
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_22
_24:
	push	ebp
	push	_810
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_809
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fsub	dword [_1870]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
_22:
	fld	dword [ebp-16]
	fld	dword [_1871]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_24
_23:
	push	_811
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-20]
	mov	dword [ebp-24],0
	push	_814
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fld	dword [ebp-12]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_815
	push	ebp
	push	_818
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_816
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fchs
	fstp	dword [ebp-20]
	push	_817
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],1
	call	dword [_bbOnDebugLeaveScope]
_815:
	push	_819
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fld	dword [ebp-12]
	fchs
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_820
	push	ebp
	push	_823
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_821
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fstp	dword [ebp-20]
	push	_822
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],1
	call	dword [_bbOnDebugLeaveScope]
_820:
	push	_824
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-24],0
	jne	_825
	push	ebp
	push	_827
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_826
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fchs
	fstp	dword [ebp-20]
	call	dword [_bbOnDebugLeaveScope]
_825:
	push	_828
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-20]
	fstp	dword [ebp-28]
	jmp	_399
_399:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-28]
	mov	esp,ebp
	pop	ebp
	ret
_bb_BufferTarget:
	push	ebp
	mov	ebp,esp
	sub	esp,28
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	fldz
	fstp	dword [ebp-16]
	fldz
	fstp	dword [ebp-20]
	mov	dword [ebp-24],0
	push	ebp
	push	_860
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_836
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fsub	dword [ebp-8]
	fadd	dword [_1879]
	fstp	dword [ebp-16]
	push	_838
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_25
_27:
	push	ebp
	push	_840
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_839
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fadd	dword [_1880]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
_25:
	fld	dword [ebp-16]
	fld	dword [_1881]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_27
_26:
	push	_841
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_28
_30:
	push	ebp
	push	_843
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_842
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fsub	dword [_1882]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
_28:
	fld	dword [ebp-16]
	fld	dword [_1883]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_30
_29:
	push	_844
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-20]
	mov	dword [ebp-24],0
	push	_847
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fld	dword [ebp-12]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_848
	push	ebp
	push	_850
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_849
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],1
	call	dword [_bbOnDebugLeaveScope]
_848:
	push	_851
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fld	dword [ebp-12]
	fchs
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_852
	push	ebp
	push	_854
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_853
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],1
	call	dword [_bbOnDebugLeaveScope]
_852:
	push	_855
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-24],0
	jne	_856
	push	ebp
	push	_858
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_857
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-20]
	call	dword [_bbOnDebugLeaveScope]
_856:
	push	_859
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-20]
	fstp	dword [ebp-28]
	jmp	_404
_404:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-28]
	mov	esp,ebp
	pop	ebp
	ret
_bb_CalcWinkel:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fldz
	fstp	dword [ebp-12]
	push	ebp
	push	_872
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_863
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-8]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-4]
	sub	esp,8
	fstp	qword [esp]
	call	_bbATan2
	add	esp,16
	fchs
	fstp	dword [ebp-12]
	push	_865
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_31
_33:
	push	ebp
	push	_867
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_866
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fadd	dword [_1891]
	fstp	dword [ebp-12]
	call	dword [_bbOnDebugLeaveScope]
_31:
	fld	dword [ebp-12]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_33
_32:
	push	_868
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_34
_36:
	push	ebp
	push	_870
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_869
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fsub	dword [_1892]
	fstp	dword [ebp-12]
	call	dword [_bbOnDebugLeaveScope]
_34:
	fld	dword [ebp-12]
	fld	dword [_1893]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_36
_35:
	push	_871
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fstp	dword [ebp-16]
	jmp	_408
_408:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-16]
	mov	esp,ebp
	pop	ebp
	ret
_bb_waypointtodest:
	push	ebp
	mov	ebp,esp
	sub	esp,72
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-24],_bbNullObject
	mov	dword [ebp-28],0
	fldz
	fstp	dword [ebp-32]
	fldz
	fstp	dword [ebp-16]
	mov	dword [ebp-20],0
	mov	eax,ebp
	push	eax
	push	_993
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_874
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbNullObject
	push	_876
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	mov	eax,dword [_bb_waypointlist]
	mov	dword [ebp-64],eax
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_880
	call	_brl_blitz_NullObjectError
_880:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-68],eax
	jmp	_37
_39:
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_885
	call	_brl_blitz_NullObjectError
_885:
	push	_bb_Twaypoint
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-24],eax
	cmp	dword [ebp-24],_bbNullObject
	je	_37
	mov	eax,ebp
	push	eax
	push	_948
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_886
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_888
	call	_brl_blitz_NullObjectError
_888:
	mov	dword [ebx+16],9999
	push	_890
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_892
	call	_brl_blitz_NullObjectError
_892:
	fldz
	fstp	dword [ebx+44]
	push	_894
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_896
	call	_brl_blitz_NullObjectError
_896:
	cmp	dword [ebx+40],1
	jne	_897
	mov	eax,ebp
	push	eax
	push	_946
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_898
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_900
	call	_brl_blitz_NullObjectError
_900:
	mov	dword [ebx+40],0
	push	_902
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	push	_904
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_906
	call	_brl_blitz_NullObjectError
_906:
	mov	dword [ebp-48],ebx
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_909
	call	_brl_blitz_NullObjectError
_909:
	mov	eax,dword [ebx+48]
	mov	dword [ebp-56],eax
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_912
	call	_brl_blitz_NullObjectError
_912:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-52],eax
	jmp	_40
_42:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_917
	call	_brl_blitz_NullObjectError
_917:
	push	_bb_Twaypoint
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp-48]
	mov	eax,dword [eax+32]
	dec	dword [eax+4]
	jnz	_921
	push	eax
	call	_bbGCFree
	add	esp,4
_921:
	mov	eax,dword [ebp-48]
	mov	dword [eax+32],ebx
	mov	eax,dword [ebp-48]
	cmp	dword [eax+32],_bbNullObject
	je	_40
	mov	eax,ebp
	push	eax
	push	_944
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_922
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	mov	dword [ebp-44],eax
	cmp	dword [ebp-44],_bbNullObject
	jne	_924
	call	_brl_blitz_NullObjectError
_924:
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_926
	call	_brl_blitz_NullObjectError
_926:
	mov	edi,dword [ebx+32]
	cmp	edi,_bbNullObject
	jne	_928
	call	_brl_blitz_NullObjectError
_928:
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_930
	call	_brl_blitz_NullObjectError
_930:
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_932
	call	_brl_blitz_NullObjectError
_932:
	mov	esi,dword [esi+32]
	cmp	esi,_bbNullObject
	jne	_934
	call	_brl_blitz_NullObjectError
_934:
	fld	qword [_1898]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-44]
	fld	dword [eax+8]
	fsub	dword [edi+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-40]
	fld	qword [_1899]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebx+12]
	fsub	dword [esi+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-40]
	faddp	st1,st0
	fstp	qword [ebp-40]
	fld	qword [ebp-40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fstp	dword [ebp-32]
	push	_936
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_938
	call	_brl_blitz_NullObjectError
_938:
	mov	esi,dword [ebx+36]
	mov	ebx,dword [ebp-28]
	cmp	ebx,dword [esi+20]
	jb	_941
	call	_brl_blitz_ArrayBoundsError
_941:
	shl	ebx,2
	add	esi,ebx
	fld	dword [ebp-32]
	fstp	dword [esi+24]
	push	_943
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-28],1
	call	dword [_bbOnDebugLeaveScope]
_40:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_915
	call	_brl_blitz_NullObjectError
_915:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_42
_41:
	call	dword [_bbOnDebugLeaveScope]
_897:
	call	dword [_bbOnDebugLeaveScope]
_37:
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_883
	call	_brl_blitz_NullObjectError
_883:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_39
_38:
	push	_950
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	cmp	dword [ebp-4],eax
	jne	_951
	mov	eax,ebp
	push	eax
	push	_953
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_952
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_412
_951:
	push	_954
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	push	dword [ebp-8]
	call	_bb_wayray
	fstp	st0
	add	esp,8
	push	_955
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1900]
	fstp	dword [ebp-16]
	mov	dword [ebp-20],0
	push	_958
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_960
	call	_brl_blitz_NullObjectError
_960:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_963
	call	_brl_blitz_NullObjectError
_963:
	mov	eax,dword [esi+48]
	mov	dword [ebp-60],eax
	mov	esi,dword [ebp-60]
	cmp	esi,_bbNullObject
	jne	_966
	call	_brl_blitz_NullObjectError
_966:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_43
_45:
	mov	esi,edi
	cmp	esi,_bbNullObject
	jne	_971
	call	_brl_blitz_NullObjectError
_971:
	push	_bb_Twaypoint
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_975
	push	eax
	call	_bbGCFree
	add	esp,4
_975:
	mov	dword [ebx+32],esi
	cmp	dword [ebx+32],_bbNullObject
	je	_43
	mov	eax,ebp
	push	eax
	push	_991
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_976
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_978
	call	_brl_blitz_NullObjectError
_978:
	mov	esi,dword [esi+32]
	cmp	esi,_bbNullObject
	jne	_980
	call	_brl_blitz_NullObjectError
_980:
	mov	eax,dword [esi+16]
	mov	dword [ebp+-72],eax
	fild	dword [ebp+-72]
	fld	dword [ebp-16]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_981
	mov	eax,ebp
	push	eax
	push	_990
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_982
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_984
	call	_brl_blitz_NullObjectError
_984:
	mov	eax,dword [esi+32]
	mov	dword [ebp-12],eax
	push	_985
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_987
	call	_brl_blitz_NullObjectError
_987:
	mov	esi,dword [esi+32]
	cmp	esi,_bbNullObject
	jne	_989
	call	_brl_blitz_NullObjectError
_989:
	mov	eax,dword [esi+16]
	mov	dword [ebp+-72],eax
	fild	dword [ebp+-72]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
_981:
	call	dword [_bbOnDebugLeaveScope]
_43:
	mov	esi,edi
	cmp	esi,_bbNullObject
	jne	_969
	call	_brl_blitz_NullObjectError
_969:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_45
_44:
	push	_992
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	jmp	_412
_412:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_wayray:
	push	ebp
	mov	ebp,esp
	sub	esp,72
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	mov	dword [ebp-12],_bbEmptyArray
	mov	dword [ebp-16],0
	fldz
	fstp	dword [ebp-20]
	mov	dword [ebp-24],0
	mov	dword [ebp-28],0
	mov	eax,ebp
	push	eax
	push	_1175
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1000
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1002
	call	_brl_blitz_NullObjectError
_1002:
	fld1
	fstp	dword [ebx+44]
	push	_1004
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-8]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_1005
	mov	eax,ebp
	push	eax
	push	_1010
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1006
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1008
	call	_brl_blitz_NullObjectError
_1008:
	fld	dword [ebp-8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebx+16],eax
	call	dword [_bbOnDebugLeaveScope]
_1005:
	push	_1011
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	16
	push	_1012
	call	_bbArrayNew1D
	add	esp,8
	mov	dword [ebp-12],eax
	push	_1014
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	push	_1016
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1018
	call	_brl_blitz_NullObjectError
_1018:
	mov	dword [ebp-60],ebx
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1021
	call	_brl_blitz_NullObjectError
_1021:
	mov	eax,dword [ebx+48]
	mov	dword [ebp-68],eax
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_1024
	call	_brl_blitz_NullObjectError
_1024:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-64],eax
	jmp	_46
_48:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_1029
	call	_brl_blitz_NullObjectError
_1029:
	push	_bb_Twaypoint
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp-60]
	mov	eax,dword [eax+32]
	dec	dword [eax+4]
	jnz	_1033
	push	eax
	call	_bbGCFree
	add	esp,4
_1033:
	mov	eax,dword [ebp-60]
	mov	dword [eax+32],ebx
	mov	eax,dword [ebp-60]
	cmp	dword [eax+32],_bbNullObject
	je	_46
	mov	eax,ebp
	push	eax
	push	_1079
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1034
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1036
	call	_brl_blitz_NullObjectError
_1036:
	mov	edi,dword [ebx+32]
	cmp	edi,_bbNullObject
	jne	_1038
	call	_brl_blitz_NullObjectError
_1038:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1040
	call	_brl_blitz_NullObjectError
_1040:
	mov	esi,dword [ebx+36]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_1043
	call	_brl_blitz_ArrayBoundsError
_1043:
	mov	eax,dword [edi+16]
	mov	dword [ebp+-72],eax
	fild	dword [ebp+-72]
	fld	dword [esi+ebx*4+24]
	fadd	dword [ebp-8]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_1044
	mov	eax,ebp
	push	eax
	push	_1077
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1045
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1047
	call	_brl_blitz_NullObjectError
_1047:
	mov	eax,dword [ebx+32]
	cmp	dword [ebp-4],eax
	je	_1048
	mov	eax,ebp
	push	eax
	push	_1076
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1049
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1051
	call	_brl_blitz_NullObjectError
_1051:
	mov	ebx,dword [ebx+32]
	cmp	ebx,_bbNullObject
	jne	_1053
	call	_brl_blitz_NullObjectError
_1053:
	mov	edi,ebx
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1056
	call	_brl_blitz_NullObjectError
_1056:
	mov	esi,dword [ebx+36]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_1059
	call	_brl_blitz_ArrayBoundsError
_1059:
	fld	dword [esi+ebx*4+24]
	fadd	dword [ebp-8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [edi+16],eax
	push	_1060
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1062
	call	_brl_blitz_NullObjectError
_1062:
	mov	ebx,dword [ebx+32]
	cmp	ebx,_bbNullObject
	jne	_1064
	call	_brl_blitz_NullObjectError
_1064:
	fld	dword [ebx+44]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_1065
	mov	eax,ebp
	push	eax
	push	_1075
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1066
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_1068
	call	_brl_blitz_ArrayBoundsError
_1068:
	mov	eax,dword [ebp-12]
	shl	ebx,2
	add	eax,ebx
	mov	edi,eax
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1071
	call	_brl_blitz_NullObjectError
_1071:
	mov	esi,dword [ebx+36]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_1074
	call	_brl_blitz_ArrayBoundsError
_1074:
	fld	dword [esi+ebx*4+24]
	fadd	dword [ebp-8]
	fstp	dword [edi+24]
	call	dword [_bbOnDebugLeaveScope]
_1065:
	call	dword [_bbOnDebugLeaveScope]
_1048:
	call	dword [_bbOnDebugLeaveScope]
_1044:
	push	_1078
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-16],1
	call	dword [_bbOnDebugLeaveScope]
_46:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_1027
	call	_brl_blitz_NullObjectError
_1027:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_48
_47:
	push	_1080
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1941]
	fstp	dword [ebp-20]
	mov	dword [ebp-24],-1
	push	_1083
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	mov	dword [ebp-28],0
	jmp	_1085
_51:
	mov	eax,ebp
	push	eax
	push	_1099
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1086
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_1088
	call	_brl_blitz_ArrayBoundsError
_1088:
	mov	eax,dword [ebp-12]
	fld	dword [eax+ebx*4+24]
	fld	dword [ebp-20]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	je	_1091
	mov	ebx,dword [ebp-28]
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_1090
	call	_brl_blitz_ArrayBoundsError
_1090:
	mov	eax,dword [ebp-12]
	fld	dword [eax+ebx*4+24]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
_1091:
	cmp	eax,0
	je	_1093
	mov	eax,ebp
	push	eax
	push	_1098
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1094
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	mov	dword [ebp-24],eax
	push	_1095
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_1097
	call	_brl_blitz_ArrayBoundsError
_1097:
	mov	eax,dword [ebp-12]
	fld	dword [eax+ebx*4+24]
	fstp	dword [ebp-20]
	call	dword [_bbOnDebugLeaveScope]
_1093:
	call	dword [_bbOnDebugLeaveScope]
_49:
	add	dword [ebp-28],1
_1085:
	cmp	dword [ebp-28],15
	jle	_51
_50:
	push	_1101
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	push	_1102
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1104
	call	_brl_blitz_NullObjectError
_1104:
	mov	dword [ebp-36],ebx
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1107
	call	_brl_blitz_NullObjectError
_1107:
	mov	eax,dword [ebx+48]
	mov	dword [ebp-48],eax
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_1110
	call	_brl_blitz_NullObjectError
_1110:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-44],eax
	jmp	_52
_54:
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_1115
	call	_brl_blitz_NullObjectError
_1115:
	push	_bb_Twaypoint
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp-36]
	mov	eax,dword [eax+32]
	dec	dword [eax+4]
	jnz	_1119
	push	eax
	call	_bbGCFree
	add	esp,4
_1119:
	mov	eax,dword [ebp-36]
	mov	dword [eax+32],ebx
	mov	eax,dword [ebp-36]
	cmp	dword [eax+32],_bbNullObject
	je	_52
	mov	eax,ebp
	push	eax
	push	_1132
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1120
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	cmp	dword [ebp-24],eax
	jne	_1121
	mov	eax,ebp
	push	eax
	push	_1130
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1122
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_1124
	call	_brl_blitz_NullObjectError
_1124:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1126
	call	_brl_blitz_NullObjectError
_1126:
	mov	esi,dword [ebx+36]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_1129
	call	_brl_blitz_ArrayBoundsError
_1129:
	fld	dword [esi+ebx*4+24]
	fadd	dword [ebp-8]
	sub	esp,4
	fstp	dword [esp]
	push	dword [edi+32]
	call	_bb_wayray
	fstp	st0
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_1121:
	push	_1131
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-16],1
	call	dword [_bbOnDebugLeaveScope]
_52:
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_1113
	call	_brl_blitz_NullObjectError
_1113:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_54
_53:
	push	_1133
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	push	_1134
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1136
	call	_brl_blitz_NullObjectError
_1136:
	mov	dword [ebp-40],ebx
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1139
	call	_brl_blitz_NullObjectError
_1139:
	mov	eax,dword [ebx+48]
	mov	dword [ebp-56],eax
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_1142
	call	_brl_blitz_NullObjectError
_1142:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-52],eax
	jmp	_55
_57:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1147
	call	_brl_blitz_NullObjectError
_1147:
	push	_bb_Twaypoint
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp-40]
	mov	eax,dword [eax+32]
	dec	dword [eax+4]
	jnz	_1151
	push	eax
	call	_bbGCFree
	add	esp,4
_1151:
	mov	eax,dword [ebp-40]
	mov	dword [eax+32],ebx
	mov	eax,dword [ebp-40]
	cmp	dword [eax+32],_bbNullObject
	je	_55
	mov	eax,ebp
	push	eax
	push	_1171
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1152
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	cmp	dword [ebp-24],eax
	je	_1153
	mov	eax,ebp
	push	eax
	push	_1169
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1154
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1156
	call	_brl_blitz_NullObjectError
_1156:
	mov	ebx,dword [ebx+32]
	cmp	ebx,_bbNullObject
	jne	_1158
	call	_brl_blitz_NullObjectError
_1158:
	fld	dword [ebx+44]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_1159
	mov	eax,ebp
	push	eax
	push	_1168
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1160
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_1162
	call	_brl_blitz_NullObjectError
_1162:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1164
	call	_brl_blitz_NullObjectError
_1164:
	mov	esi,dword [ebx+36]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_1167
	call	_brl_blitz_ArrayBoundsError
_1167:
	fld	dword [esi+ebx*4+24]
	fadd	dword [ebp-8]
	sub	esp,4
	fstp	dword [esp]
	push	dword [edi+32]
	call	_bb_wayray
	fstp	st0
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_1159:
	call	dword [_bbOnDebugLeaveScope]
_1153:
	push	_1170
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-16],1
	call	dword [_bbOnDebugLeaveScope]
_55:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1145
	call	_brl_blitz_NullObjectError
_1145:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_57
_56:
	push	_1172
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1174
	call	_brl_blitz_NullObjectError
_1174:
	mov	eax,dword [ebx+16]
	mov	dword [ebp+-72],eax
	fild	dword [ebp+-72]
	fstp	dword [ebp-32]
	jmp	_416
_416:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-32]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_maptodest:
	push	ebp
	mov	ebp,esp
	sub	esp,96
	push	ebx
	push	esi
	push	edi
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	fld	dword [ebp+20]
	fstp	dword [ebp-16]
	mov	eax,dword [ebp+24]
	mov	dword [ebp-20],eax
	mov	eax,dword [ebp+28]
	mov	dword [ebp-24],eax
	mov	eax,dword [ebp+32]
	mov	dword [ebp-28],eax
	fldz
	fstp	dword [ebp-32]
	mov	dword [ebp-36],_bbEmptyArray
	mov	dword [ebp-48],0
	mov	dword [ebp-52],0
	fldz
	fstp	dword [ebp-40]
	mov	dword [ebp-44],0
	mov	dword [ebp-56],0
	mov	dword [ebp-60],0
	mov	dword [ebp-64],0
	mov	dword [ebp-68],0
	mov	eax,ebp
	push	eax
	push	_1371
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1181
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_2001]
	fstp	dword [ebp-32]
	push	_1183
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	3
	mov	eax,dword [ebp-28]
	add	eax,1
	push	eax
	mov	eax,dword [ebp-24]
	add	eax,1
	push	eax
	push	3
	push	_1184
	call	_bbArrayNew
	add	esp,20
	mov	dword [ebp-36],eax
	push	_1186
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],0
	mov	dword [ebp-48],0
	mov	eax,dword [ebp-24]
	mov	dword [ebp-92],eax
	jmp	_1188
_60:
	mov	eax,ebp
	push	eax
	push	_1215
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1190
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],0
	mov	dword [ebp-52],0
	mov	eax,dword [ebp-28]
	mov	dword [ebp-84],eax
	jmp	_1192
_63:
	mov	eax,ebp
	push	eax
	push	_1214
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1194
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-48]
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-36]
	cmp	edi,dword [eax+20]
	jb	_1196
	call	_brl_blitz_ArrayBoundsError
_1196:
	mov	eax,dword [ebp-52]
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-36]
	cmp	esi,dword [eax+24]
	jb	_1198
	call	_brl_blitz_ArrayBoundsError
_1198:
	mov	ebx,2
	mov	eax,dword [ebp-36]
	cmp	ebx,dword [eax+28]
	jb	_1200
	call	_brl_blitz_ArrayBoundsError
_1200:
	mov	eax,dword [ebp-36]
	mov	edx,edi
	add	edx,esi
	add	edx,ebx
	shl	edx,2
	add	eax,edx
	mov	edi,eax
	mov	eax,dword [ebp-48]
	mov	edx,dword [ebp-20]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+20]
	jb	_1203
	call	_brl_blitz_ArrayBoundsError
_1203:
	mov	ebx,dword [ebp-52]
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+24]
	jb	_1205
	call	_brl_blitz_ArrayBoundsError
_1205:
	mov	eax,dword [ebp-20]
	mov	edx,dword [eax]
	mov	eax,esi
	add	eax,ebx
	mov	eax,dword [edx+eax*4+28]
	mov	dword [edi+32],eax
	push	_1206
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-48]
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-36]
	cmp	edi,dword [eax+20]
	jb	_1208
	call	_brl_blitz_ArrayBoundsError
_1208:
	mov	eax,dword [ebp-52]
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-36]
	cmp	esi,dword [eax+24]
	jb	_1210
	call	_brl_blitz_ArrayBoundsError
_1210:
	mov	ebx,1
	mov	eax,dword [ebp-36]
	cmp	ebx,dword [eax+28]
	jb	_1212
	call	_brl_blitz_ArrayBoundsError
_1212:
	mov	edx,dword [ebp-36]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	shl	eax,2
	add	edx,eax
	mov	dword [edx+32],9999
	call	dword [_bbOnDebugLeaveScope]
_61:
	add	dword [ebp-52],1
_1192:
	mov	eax,dword [ebp-84]
	cmp	dword [ebp-52],eax
	jle	_63
_62:
	call	dword [_bbOnDebugLeaveScope]
_58:
	add	dword [ebp-48],1
_1188:
	mov	eax,dword [ebp-92]
	cmp	dword [ebp-48],eax
	jle	_60
_59:
	push	_1216
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fld	dword [ebp-12]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_1217
	fld	dword [ebp-8]
	fld	dword [ebp-16]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
_1217:
	cmp	eax,0
	je	_1219
	mov	eax,ebp
	push	eax
	push	_1221
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1220
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_2002]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_425
_1219:
	push	_1222
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_1223
	mov	eax,ebp
	push	eax
	push	_1225
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1224
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_2003]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_425
_1223:
	push	_1226
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	mov	eax,dword [ebp-24]
	mov	dword [ebp+-96],eax
	fild	dword [ebp+-96]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_1227
	mov	eax,ebp
	push	eax
	push	_1229
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1228
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_2004]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_425
_1227:
	push	_1230
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-8]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_1231
	mov	eax,ebp
	push	eax
	push	_1233
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1232
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_2005]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_425
_1231:
	push	_1234
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-8]
	mov	eax,dword [ebp-28]
	mov	dword [ebp+-96],eax
	fild	dword [ebp+-96]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_1235
	mov	eax,ebp
	push	eax
	push	_1237
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1236
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_2006]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_425
_1235:
	push	_1238
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_1239
	mov	eax,ebp
	push	eax
	push	_1241
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1240
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_2007]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_425
_1239:
	push	_1242
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	mov	eax,dword [ebp-24]
	mov	dword [ebp+-96],eax
	fild	dword [ebp+-96]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_1243
	mov	eax,ebp
	push	eax
	push	_1245
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1244
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_2008]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_425
_1243:
	push	_1246
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_1247
	mov	eax,ebp
	push	eax
	push	_1249
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1248
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_2009]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_425
_1247:
	push	_1250
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	mov	eax,dword [ebp-28]
	mov	dword [ebp+-96],eax
	fild	dword [ebp+-96]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_1251
	mov	eax,ebp
	push	eax
	push	_1253
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1252
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_2010]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_425
_1251:
	push	_1254
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-36]
	cmp	edi,dword [eax+20]
	jb	_1256
	call	_brl_blitz_ArrayBoundsError
_1256:
	fld	dword [ebp-8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-36]
	cmp	esi,dword [eax+24]
	jb	_1258
	call	_brl_blitz_ArrayBoundsError
_1258:
	mov	ebx,1
	mov	eax,dword [ebp-36]
	cmp	ebx,dword [eax+28]
	jb	_1260
	call	_brl_blitz_ArrayBoundsError
_1260:
	mov	edx,dword [ebp-36]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	shl	eax,2
	add	edx,eax
	mov	dword [edx+32],1
	push	_1262
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-36]
	inc	dword [eax+4]
	push	1065353216
	push	dword [ebp-28]
	push	dword [ebp-24]
	lea	eax,dword [ebp-36]
	push	eax
	fld	dword [ebp-16]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp-12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_bb_mapray
	add	esp,24
	mov	eax,dword [ebp-36]
	dec	dword [eax+4]
	jnz	_1263
	push	dword [ebp-36]
	call	_bbGCFree
	add	esp,4
_1263:
	push	_1265
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_2011]
	fstp	dword [ebp-40]
	mov	dword [ebp-44],-1
	push	_1268
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],0
	mov	dword [ebp-56],-1
	jmp	_1270
_66:
	mov	eax,ebp
	push	eax
	push	_1347
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1271
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],0
	mov	dword [ebp-60],-1
	jmp	_1273
_69:
	mov	eax,ebp
	push	eax
	push	_1346
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1274
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1275
	mov	eax,dword [ebp-60]
	cmp	eax,0
	sete	al
	movzx	eax,al
_1275:
	cmp	eax,0
	je	_1277
	mov	eax,ebp
	push	eax
	push	_1278
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1279
_1277:
	mov	eax,ebp
	push	eax
	push	_1345
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1280
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1281
	mov	eax,dword [ebp-60]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_1281:
	cmp	eax,0
	je	_1283
	mov	eax,ebp
	push	eax
	push	_1285
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1284
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],315
	call	dword [_bbOnDebugLeaveScope]
_1283:
	push	_1286
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1287
	mov	eax,dword [ebp-60]
	cmp	eax,0
	sete	al
	movzx	eax,al
_1287:
	cmp	eax,0
	je	_1289
	mov	eax,ebp
	push	eax
	push	_1291
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1290
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],180
	call	dword [_bbOnDebugLeaveScope]
_1289:
	push	_1292
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1293
	mov	eax,dword [ebp-60]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1293:
	cmp	eax,0
	je	_1295
	mov	eax,ebp
	push	eax
	push	_1297
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1296
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],45
	call	dword [_bbOnDebugLeaveScope]
_1295:
	push	_1298
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1299
	mov	eax,dword [ebp-60]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_1299:
	cmp	eax,0
	je	_1301
	mov	eax,ebp
	push	eax
	push	_1303
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1302
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],270
	call	dword [_bbOnDebugLeaveScope]
_1301:
	push	_1304
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1305
	mov	eax,dword [ebp-60]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1305:
	cmp	eax,0
	je	_1307
	mov	eax,ebp
	push	eax
	push	_1309
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1308
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],90
	call	dword [_bbOnDebugLeaveScope]
_1307:
	push	_1310
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1311
	mov	eax,dword [ebp-60]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_1311:
	cmp	eax,0
	je	_1313
	mov	eax,ebp
	push	eax
	push	_1315
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1314
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],225
	call	dword [_bbOnDebugLeaveScope]
_1313:
	push	_1316
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1317
	mov	eax,dword [ebp-60]
	cmp	eax,0
	sete	al
	movzx	eax,al
_1317:
	cmp	eax,0
	je	_1319
	mov	eax,ebp
	push	eax
	push	_1321
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1320
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],0
	call	dword [_bbOnDebugLeaveScope]
_1319:
	push	_1322
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1323
	mov	eax,dword [ebp-60]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1323:
	cmp	eax,0
	je	_1325
	mov	eax,ebp
	push	eax
	push	_1327
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1326
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],135
	call	dword [_bbOnDebugLeaveScope]
_1325:
	push	_1328
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	mov	eax,dword [ebp-56]
	mov	dword [ebp+-96],eax
	fild	dword [ebp+-96]
	faddp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-36]
	cmp	edi,dword [eax+20]
	jb	_1330
	call	_brl_blitz_ArrayBoundsError
_1330:
	fld	dword [ebp-8]
	mov	eax,dword [ebp-60]
	mov	dword [ebp+-96],eax
	fild	dword [ebp+-96]
	faddp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-36]
	cmp	esi,dword [eax+24]
	jb	_1332
	call	_brl_blitz_ArrayBoundsError
_1332:
	mov	ebx,1
	mov	eax,dword [ebp-36]
	cmp	ebx,dword [eax+28]
	jb	_1334
	call	_brl_blitz_ArrayBoundsError
_1334:
	mov	edx,dword [ebp-36]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	mov	eax,dword [edx+eax*4+32]
	mov	dword [ebp+-96],eax
	fild	dword [ebp+-96]
	fld	dword [ebp-40]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_1335
	mov	eax,ebp
	push	eax
	push	_1344
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1336
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-44]
	mov	dword [ebp+-96],eax
	fild	dword [ebp+-96]
	fstp	dword [ebp-32]
	push	_1337
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	mov	eax,dword [ebp-56]
	mov	dword [ebp+-96],eax
	fild	dword [ebp+-96]
	faddp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-36]
	cmp	edi,dword [eax+20]
	jb	_1339
	call	_brl_blitz_ArrayBoundsError
_1339:
	fld	dword [ebp-8]
	mov	eax,dword [ebp-60]
	mov	dword [ebp+-96],eax
	fild	dword [ebp+-96]
	faddp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-36]
	cmp	esi,dword [eax+24]
	jb	_1341
	call	_brl_blitz_ArrayBoundsError
_1341:
	mov	ebx,1
	mov	eax,dword [ebp-36]
	cmp	ebx,dword [eax+28]
	jb	_1343
	call	_brl_blitz_ArrayBoundsError
_1343:
	mov	edx,dword [ebp-36]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	mov	eax,dword [edx+eax*4+32]
	mov	dword [ebp+-96],eax
	fild	dword [ebp+-96]
	fstp	dword [ebp-40]
	call	dword [_bbOnDebugLeaveScope]
_1335:
	call	dword [_bbOnDebugLeaveScope]
_1279:
	call	dword [_bbOnDebugLeaveScope]
_67:
	add	dword [ebp-60],1
_1273:
	cmp	dword [ebp-60],1
	jle	_69
_68:
	call	dword [_bbOnDebugLeaveScope]
_64:
	add	dword [ebp-56],1
_1270:
	cmp	dword [ebp-56],1
	jle	_66
_65:
	push	_1348
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-64],0
	mov	dword [ebp-64],0
	mov	eax,dword [ebp-24]
	mov	dword [ebp-88],eax
	jmp	_1350
_72:
	mov	eax,ebp
	push	eax
	push	_1369
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1352
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-68],0
	mov	dword [ebp-68],0
	mov	eax,dword [ebp-28]
	mov	dword [ebp-80],eax
	jmp	_1354
_75:
	mov	eax,ebp
	push	eax
	push	_1368
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1356
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-64]
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax]
	imul	ebx,dword [eax+24]
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+20]
	jb	_1358
	call	_brl_blitz_ArrayBoundsError
_1358:
	mov	esi,dword [ebp-68]
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_1360
	call	_brl_blitz_ArrayBoundsError
_1360:
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax]
	add	ebx,esi
	shl	ebx,2
	add	eax,ebx
	mov	dword [ebp-72],eax
	mov	eax,dword [ebp-64]
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-36]
	cmp	edi,dword [eax+20]
	jb	_1363
	call	_brl_blitz_ArrayBoundsError
_1363:
	mov	eax,dword [ebp-68]
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-36]
	cmp	esi,dword [eax+24]
	jb	_1365
	call	_brl_blitz_ArrayBoundsError
_1365:
	mov	ebx,1
	mov	eax,dword [ebp-36]
	cmp	ebx,dword [eax+28]
	jb	_1367
	call	_brl_blitz_ArrayBoundsError
_1367:
	mov	edx,dword [ebp-36]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	mov	edx,dword [edx+eax*4+32]
	mov	eax,dword [ebp-72]
	mov	dword [eax+28],edx
	call	dword [_bbOnDebugLeaveScope]
_73:
	add	dword [ebp-68],1
_1354:
	mov	eax,dword [ebp-80]
	cmp	dword [ebp-68],eax
	jle	_75
_74:
	call	dword [_bbOnDebugLeaveScope]
_70:
	add	dword [ebp-64],1
_1350:
	mov	eax,dword [ebp-88]
	cmp	dword [ebp-64],eax
	jle	_72
_71:
	push	_1370
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-32]
	fstp	dword [ebp-76]
	jmp	_425
_425:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-76]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_mapray:
	push	ebp
	mov	ebp,esp
	sub	esp,104
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	eax,dword [ebp+24]
	mov	dword [ebp-20],eax
	fld	dword [ebp+28]
	fstp	dword [ebp-24]
	mov	dword [ebp-28],0
	mov	dword [ebp-32],0
	fldz
	fstp	dword [ebp-36]
	mov	dword [ebp-40],0
	mov	dword [ebp-44],0
	fldz
	fstp	dword [ebp-48]
	mov	dword [ebp-52],0
	mov	dword [ebp-56],0
	fldz
	fstp	dword [ebp-60]
	mov	eax,ebp
	push	eax
	push	_1729
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1385
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+20]
	jb	_1387
	call	_brl_blitz_ArrayBoundsError
_1387:
	mov	eax,dword [ebp-8]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_1389
	call	_brl_blitz_ArrayBoundsError
_1389:
	mov	ebx,0
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_1391
	call	_brl_blitz_ArrayBoundsError
_1391:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	shl	eax,2
	add	edx,eax
	mov	dword [edx+32],1
	push	_1393
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	cmp	eax,0
	setg	al
	movzx	eax,al
	cmp	eax,0
	je	_1394
	mov	eax,dword [ebp-4]
	cmp	eax,dword [ebp-16]
	setl	al
	movzx	eax,al
_1394:
	cmp	eax,0
	je	_1396
	mov	eax,dword [ebp-8]
	cmp	eax,0
	setg	al
	movzx	eax,al
_1396:
	cmp	eax,0
	je	_1398
	mov	eax,dword [ebp-8]
	cmp	eax,dword [ebp-20]
	setl	al
	movzx	eax,al
_1398:
	cmp	eax,0
	je	_1400
	mov	eax,ebp
	push	eax
	push	_1728
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1401
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-24]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_1402
	mov	eax,ebp
	push	eax
	push	_1411
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1403
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+20]
	jb	_1405
	call	_brl_blitz_ArrayBoundsError
_1405:
	mov	eax,dword [ebp-8]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_1407
	call	_brl_blitz_ArrayBoundsError
_1407:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_1409
	call	_brl_blitz_ArrayBoundsError
_1409:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	shl	eax,2
	add	edx,eax
	mov	ebx,edx
	fld	dword [ebp-24]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebx+32],eax
	call	dword [_bbOnDebugLeaveScope]
_1402:
	push	_1412
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	mov	dword [ebp-28],-1
	jmp	_1414
_78:
	mov	eax,ebp
	push	eax
	push	_1532
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1415
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],0
	mov	dword [ebp-32],-1
	jmp	_1417
_81:
	mov	eax,ebp
	push	eax
	push	_1531
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1418
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1419
	mov	eax,dword [ebp-32]
	cmp	eax,0
	sete	al
	movzx	eax,al
_1419:
	cmp	eax,0
	je	_1421
	mov	eax,ebp
	push	eax
	push	_1422
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1423
_1421:
	mov	eax,ebp
	push	eax
	push	_1529
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1424
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-36]
	push	_1426
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1427
	mov	eax,dword [ebp-32]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_1427:
	cmp	eax,0
	je	_1429
	mov	eax,ebp
	push	eax
	push	_1431
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1430
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
_1429:
	push	_1432
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1433
	mov	eax,dword [ebp-32]
	cmp	eax,0
	sete	al
	movzx	eax,al
_1433:
	cmp	eax,0
	je	_1435
	mov	eax,ebp
	push	eax
	push	_1437
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1436
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
_1435:
	push	_1438
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1439
	mov	eax,dword [ebp-32]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1439:
	cmp	eax,0
	je	_1441
	mov	eax,ebp
	push	eax
	push	_1443
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1442
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
_1441:
	push	_1444
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1445
	mov	eax,dword [ebp-32]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_1445:
	cmp	eax,0
	je	_1447
	mov	eax,ebp
	push	eax
	push	_1449
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1448
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
_1447:
	push	_1450
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1451
	mov	eax,dword [ebp-32]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1451:
	cmp	eax,0
	je	_1453
	mov	eax,ebp
	push	eax
	push	_1455
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1454
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
_1453:
	push	_1456
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1457
	mov	eax,dword [ebp-32]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_1457:
	cmp	eax,0
	je	_1459
	mov	eax,ebp
	push	eax
	push	_1461
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1460
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
_1459:
	push	_1462
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1463
	mov	eax,dword [ebp-32]
	cmp	eax,0
	sete	al
	movzx	eax,al
_1463:
	cmp	eax,0
	je	_1465
	mov	eax,ebp
	push	eax
	push	_1467
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1466
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
_1465:
	push	_1468
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1469
	mov	eax,dword [ebp-32]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1469:
	cmp	eax,0
	je	_1471
	mov	eax,ebp
	push	eax
	push	_1473
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1472
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
_1471:
	push	_1474
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-28]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+20]
	jb	_1476
	call	_brl_blitz_ArrayBoundsError
_1476:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-32]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_1478
	call	_brl_blitz_ArrayBoundsError
_1478:
	mov	ebx,2
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_1480
	call	_brl_blitz_ArrayBoundsError
_1480:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	cmp	dword [edx+eax*4+32],0
	jne	_1481
	mov	eax,ebp
	push	eax
	push	_1499
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1482
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-28]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+20]
	jb	_1484
	call	_brl_blitz_ArrayBoundsError
_1484:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-32]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_1486
	call	_brl_blitz_ArrayBoundsError
_1486:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_1488
	call	_brl_blitz_ArrayBoundsError
_1488:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	mov	eax,dword [edx+eax*4+32]
	mov	dword [ebp+-104],eax
	fild	dword [ebp+-104]
	fld	dword [ebp-36]
	fadd	dword [ebp-24]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_1489
	mov	eax,ebp
	push	eax
	push	_1498
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1490
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-28]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+20]
	jb	_1492
	call	_brl_blitz_ArrayBoundsError
_1492:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-32]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_1494
	call	_brl_blitz_ArrayBoundsError
_1494:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_1496
	call	_brl_blitz_ArrayBoundsError
_1496:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	shl	eax,2
	add	edx,eax
	mov	ebx,edx
	fld	dword [ebp-36]
	fadd	dword [ebp-24]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebx+32],eax
	call	dword [_bbOnDebugLeaveScope]
_1489:
	call	dword [_bbOnDebugLeaveScope]
_1481:
	push	_1500
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-28]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	dword [ebp-100],eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-100],eax
	jb	_1502
	call	_brl_blitz_ArrayBoundsError
_1502:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-32]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	dword [ebp-92],eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	mov	eax,dword [eax+24]
	cmp	dword [ebp-92],eax
	jb	_1504
	call	_brl_blitz_ArrayBoundsError
_1504:
	mov	dword [ebp-84],1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	mov	eax,dword [eax+28]
	cmp	dword [ebp-84],eax
	jb	_1506
	call	_brl_blitz_ArrayBoundsError
_1506:
	mov	edx,dword [ebp-4]
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	imul	edx,dword [eax+24]
	mov	dword [ebp-68],edx
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-68],eax
	jb	_1508
	call	_brl_blitz_ArrayBoundsError
_1508:
	mov	eax,dword [ebp-8]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+24]
	jb	_1510
	call	_brl_blitz_ArrayBoundsError
_1510:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_1512
	call	_brl_blitz_ArrayBoundsError
_1512:
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax]
	mov	eax,dword [ebp-100]
	add	eax,dword [ebp-92]
	mov	ecx,eax
	add	ecx,dword [ebp-84]
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,dword [ebp-68]
	add	eax,edi
	add	eax,ebx
	mov	eax,dword [edx+eax*4+32]
	cmp	dword [esi+ecx*4+32],eax
	jge	_1513
	mov	eax,ebp
	push	eax
	push	_1528
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1514
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+20]
	jb	_1516
	call	_brl_blitz_ArrayBoundsError
_1516:
	mov	eax,dword [ebp-8]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_1518
	call	_brl_blitz_ArrayBoundsError
_1518:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_1520
	call	_brl_blitz_ArrayBoundsError
_1520:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	shl	eax,2
	add	edx,eax
	mov	dword [ebp-76],edx
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-28]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+20]
	jb	_1523
	call	_brl_blitz_ArrayBoundsError
_1523:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-32]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_1525
	call	_brl_blitz_ArrayBoundsError
_1525:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_1527
	call	_brl_blitz_ArrayBoundsError
_1527:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	mov	eax,dword [edx+eax*4+32]
	mov	dword [ebp+-104],eax
	fild	dword [ebp+-104]
	fadd	dword [ebp-36]
	fadd	dword [ebp-24]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	edx,dword [ebp-76]
	mov	dword [edx+32],eax
	call	dword [_bbOnDebugLeaveScope]
_1513:
	call	dword [_bbOnDebugLeaveScope]
_1423:
	call	dword [_bbOnDebugLeaveScope]
_79:
	add	dword [ebp-32],1
_1417:
	cmp	dword [ebp-32],1
	jle	_81
_80:
	call	dword [_bbOnDebugLeaveScope]
_76:
	add	dword [ebp-28],1
_1414:
	cmp	dword [ebp-28],1
	jle	_78
_77:
	push	_1533
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],0
	mov	dword [ebp-40],-1
	jmp	_1535
_84:
	mov	eax,ebp
	push	eax
	push	_1607
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1536
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],0
	mov	dword [ebp-44],-1
	jmp	_1538
_87:
	mov	eax,ebp
	push	eax
	push	_1606
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1539
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1540
	mov	eax,dword [ebp-44]
	cmp	eax,0
	sete	al
	movzx	eax,al
_1540:
	cmp	eax,0
	je	_1542
	mov	eax,ebp
	push	eax
	push	_1543
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1544
_1542:
	mov	eax,ebp
	push	eax
	push	_1605
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1545
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-48]
	push	_1547
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1548
	mov	eax,dword [ebp-44]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_1548:
	cmp	eax,0
	je	_1550
	mov	eax,ebp
	push	eax
	push	_1552
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1551
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-48]
	call	dword [_bbOnDebugLeaveScope]
_1550:
	push	_1553
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1554
	mov	eax,dword [ebp-44]
	cmp	eax,0
	sete	al
	movzx	eax,al
_1554:
	cmp	eax,0
	je	_1556
	mov	eax,ebp
	push	eax
	push	_1558
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1557
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-48]
	call	dword [_bbOnDebugLeaveScope]
_1556:
	push	_1559
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1560
	mov	eax,dword [ebp-44]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1560:
	cmp	eax,0
	je	_1562
	mov	eax,ebp
	push	eax
	push	_1564
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1563
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-48]
	call	dword [_bbOnDebugLeaveScope]
_1562:
	push	_1565
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1566
	mov	eax,dword [ebp-44]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_1566:
	cmp	eax,0
	je	_1568
	mov	eax,ebp
	push	eax
	push	_1570
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1569
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-48]
	call	dword [_bbOnDebugLeaveScope]
_1568:
	push	_1571
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1572
	mov	eax,dword [ebp-44]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1572:
	cmp	eax,0
	je	_1574
	mov	eax,ebp
	push	eax
	push	_1576
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1575
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-48]
	call	dword [_bbOnDebugLeaveScope]
_1574:
	push	_1577
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1578
	mov	eax,dword [ebp-44]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_1578:
	cmp	eax,0
	je	_1580
	mov	eax,ebp
	push	eax
	push	_1582
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1581
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-48]
	call	dword [_bbOnDebugLeaveScope]
_1580:
	push	_1583
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1584
	mov	eax,dword [ebp-44]
	cmp	eax,0
	sete	al
	movzx	eax,al
_1584:
	cmp	eax,0
	je	_1586
	mov	eax,ebp
	push	eax
	push	_1588
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1587
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-48]
	call	dword [_bbOnDebugLeaveScope]
_1586:
	push	_1589
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1590
	mov	eax,dword [ebp-44]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1590:
	cmp	eax,0
	je	_1592
	mov	eax,ebp
	push	eax
	push	_1594
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1593
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-48]
	call	dword [_bbOnDebugLeaveScope]
_1592:
	push	_1595
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-40]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+20]
	jb	_1597
	call	_brl_blitz_ArrayBoundsError
_1597:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-44]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_1599
	call	_brl_blitz_ArrayBoundsError
_1599:
	mov	ebx,0
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_1601
	call	_brl_blitz_ArrayBoundsError
_1601:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	cmp	dword [edx+eax*4+32],0
	jne	_1602
	mov	eax,ebp
	push	eax
	push	_1604
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1603
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-48]
	fadd	dword [ebp-24]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebp-20]
	push	dword [ebp-16]
	mov	eax,dword [ebp-12]
	lea	eax,dword [eax]
	push	eax
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-44]
	push	eax
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-40]
	push	eax
	call	_bb_mapray
	add	esp,24
	call	dword [_bbOnDebugLeaveScope]
_1602:
	call	dword [_bbOnDebugLeaveScope]
_1544:
	call	dword [_bbOnDebugLeaveScope]
_85:
	add	dword [ebp-44],1
_1538:
	cmp	dword [ebp-44],1
	jle	_87
_86:
	call	dword [_bbOnDebugLeaveScope]
_82:
	add	dword [ebp-40],1
_1535:
	cmp	dword [ebp-40],1
	jle	_84
_83:
	push	_1608
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],0
	mov	dword [ebp-52],-1
	jmp	_1610
_90:
	mov	eax,ebp
	push	eax
	push	_1727
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1611
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],0
	mov	dword [ebp-56],-1
	jmp	_1613
_93:
	mov	eax,ebp
	push	eax
	push	_1726
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1614
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1615
	mov	eax,dword [ebp-56]
	cmp	eax,0
	sete	al
	movzx	eax,al
_1615:
	cmp	eax,0
	je	_1617
	mov	eax,ebp
	push	eax
	push	_1618
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1619
_1617:
	mov	eax,ebp
	push	eax
	push	_1725
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1620
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-60]
	push	_1622
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1623
	mov	eax,dword [ebp-56]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_1623:
	cmp	eax,0
	je	_1625
	mov	eax,ebp
	push	eax
	push	_1627
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1626
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-60]
	call	dword [_bbOnDebugLeaveScope]
_1625:
	push	_1628
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1629
	mov	eax,dword [ebp-56]
	cmp	eax,0
	sete	al
	movzx	eax,al
_1629:
	cmp	eax,0
	je	_1631
	mov	eax,ebp
	push	eax
	push	_1633
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1632
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-60]
	call	dword [_bbOnDebugLeaveScope]
_1631:
	push	_1634
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1635
	mov	eax,dword [ebp-56]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1635:
	cmp	eax,0
	je	_1637
	mov	eax,ebp
	push	eax
	push	_1639
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1638
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-60]
	call	dword [_bbOnDebugLeaveScope]
_1637:
	push	_1640
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1641
	mov	eax,dword [ebp-56]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_1641:
	cmp	eax,0
	je	_1643
	mov	eax,ebp
	push	eax
	push	_1645
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1644
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-60]
	call	dword [_bbOnDebugLeaveScope]
_1643:
	push	_1646
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1647
	mov	eax,dword [ebp-56]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1647:
	cmp	eax,0
	je	_1649
	mov	eax,ebp
	push	eax
	push	_1651
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1650
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-60]
	call	dword [_bbOnDebugLeaveScope]
_1649:
	push	_1652
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1653
	mov	eax,dword [ebp-56]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_1653:
	cmp	eax,0
	je	_1655
	mov	eax,ebp
	push	eax
	push	_1657
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1656
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-60]
	call	dword [_bbOnDebugLeaveScope]
_1655:
	push	_1658
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1659
	mov	eax,dword [ebp-56]
	cmp	eax,0
	sete	al
	movzx	eax,al
_1659:
	cmp	eax,0
	je	_1661
	mov	eax,ebp
	push	eax
	push	_1663
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1662
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-60]
	call	dword [_bbOnDebugLeaveScope]
_1661:
	push	_1664
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1665
	mov	eax,dword [ebp-56]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1665:
	cmp	eax,0
	je	_1667
	mov	eax,ebp
	push	eax
	push	_1669
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1668
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-60]
	call	dword [_bbOnDebugLeaveScope]
_1667:
	push	_1670
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-52]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+20]
	jb	_1672
	call	_brl_blitz_ArrayBoundsError
_1672:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-56]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_1674
	call	_brl_blitz_ArrayBoundsError
_1674:
	mov	ebx,2
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_1676
	call	_brl_blitz_ArrayBoundsError
_1676:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	cmp	dword [edx+eax*4+32],0
	jne	_1677
	mov	eax,ebp
	push	eax
	push	_1695
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1678
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-52]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+20]
	jb	_1680
	call	_brl_blitz_ArrayBoundsError
_1680:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-56]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_1682
	call	_brl_blitz_ArrayBoundsError
_1682:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_1684
	call	_brl_blitz_ArrayBoundsError
_1684:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	mov	eax,dword [edx+eax*4+32]
	mov	dword [ebp+-104],eax
	fild	dword [ebp+-104]
	fld	dword [ebp-60]
	fadd	dword [ebp-24]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_1685
	mov	eax,ebp
	push	eax
	push	_1694
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1686
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-52]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+20]
	jb	_1688
	call	_brl_blitz_ArrayBoundsError
_1688:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-56]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_1690
	call	_brl_blitz_ArrayBoundsError
_1690:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_1692
	call	_brl_blitz_ArrayBoundsError
_1692:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	shl	eax,2
	add	edx,eax
	mov	ebx,edx
	fld	dword [ebp-60]
	fadd	dword [ebp-24]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebx+32],eax
	call	dword [_bbOnDebugLeaveScope]
_1685:
	call	dword [_bbOnDebugLeaveScope]
_1677:
	push	_1696
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-52]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	dword [ebp-96],eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-96],eax
	jb	_1698
	call	_brl_blitz_ArrayBoundsError
_1698:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-56]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	dword [ebp-88],eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	mov	eax,dword [eax+24]
	cmp	dword [ebp-88],eax
	jb	_1700
	call	_brl_blitz_ArrayBoundsError
_1700:
	mov	dword [ebp-80],1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	mov	eax,dword [eax+28]
	cmp	dword [ebp-80],eax
	jb	_1702
	call	_brl_blitz_ArrayBoundsError
_1702:
	mov	edx,dword [ebp-4]
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	imul	edx,dword [eax+24]
	mov	dword [ebp-64],edx
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-64],eax
	jb	_1704
	call	_brl_blitz_ArrayBoundsError
_1704:
	mov	eax,dword [ebp-8]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+24]
	jb	_1706
	call	_brl_blitz_ArrayBoundsError
_1706:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_1708
	call	_brl_blitz_ArrayBoundsError
_1708:
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax]
	mov	eax,dword [ebp-96]
	add	eax,dword [ebp-88]
	mov	ecx,eax
	add	ecx,dword [ebp-80]
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,dword [ebp-64]
	add	eax,edi
	add	eax,ebx
	mov	eax,dword [edx+eax*4+32]
	cmp	dword [esi+ecx*4+32],eax
	jge	_1709
	mov	eax,ebp
	push	eax
	push	_1724
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1710
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+20]
	jb	_1712
	call	_brl_blitz_ArrayBoundsError
_1712:
	mov	eax,dword [ebp-8]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_1714
	call	_brl_blitz_ArrayBoundsError
_1714:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_1716
	call	_brl_blitz_ArrayBoundsError
_1716:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	shl	eax,2
	add	edx,eax
	mov	dword [ebp-72],edx
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-52]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+20]
	jb	_1719
	call	_brl_blitz_ArrayBoundsError
_1719:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-56]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_1721
	call	_brl_blitz_ArrayBoundsError
_1721:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_1723
	call	_brl_blitz_ArrayBoundsError
_1723:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	mov	eax,dword [edx+eax*4+32]
	mov	dword [ebp+-104],eax
	fild	dword [ebp+-104]
	fadd	dword [ebp-60]
	fadd	dword [ebp-24]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	edx,dword [ebp-72]
	mov	dword [edx+32],eax
	call	dword [_bbOnDebugLeaveScope]
_1709:
	call	dword [_bbOnDebugLeaveScope]
_1619:
	call	dword [_bbOnDebugLeaveScope]
_91:
	add	dword [ebp-56],1
_1613:
	cmp	dword [ebp-56],1
	jle	_93
_92:
	call	dword [_bbOnDebugLeaveScope]
_88:
	add	dword [ebp-52],1
_1610:
	cmp	dword [ebp-52],1
	jle	_90
_89:
	call	dword [_bbOnDebugLeaveScope]
_1400:
	mov	ebx,0
	jmp	_433
_433:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_544:
	dd	0
_519:
	db	"testlap_newbot",0
_520:
	db	"smokelist",0
_152:
	db	":brl.linkedlist.TList",0
	align	4
_bb_smokelist:
	dd	_bbNullObject
_521:
	db	"mudlist",0
	align	4
_bb_mudlist:
	dd	_bbNullObject
_522:
	db	"sanddustlist",0
	align	4
_bb_sanddustlist:
	dd	_bbNullObject
_523:
	db	"firelist",0
	align	4
_bb_firelist:
	dd	_bbNullObject
_524:
	db	"funkenlist",0
	align	4
_bb_funkenlist:
	dd	_bbNullObject
_525:
	db	"spurlist",0
	align	4
_bb_spurlist:
	dd	_bbNullObject
_526:
	db	"graterlist",0
	align	4
_bb_graterlist:
	dd	_bbNullObject
_527:
	db	"Schussliste",0
	align	4
_bb_Schussliste:
	dd	_bbNullObject
_528:
	db	"texturlist",0
	align	4
_bb_texturlist:
	dd	_bbNullObject
_529:
	db	"maptexturlist",0
	align	4
_bb_maptexturlist:
	dd	_bbNullObject
_530:
	db	"texgrouplist",0
	align	4
_bb_texgrouplist:
	dd	_bbNullObject
_531:
	db	"maptexgrouplist",0
	align	4
_bb_maptexgrouplist:
	dd	_bbNullObject
_532:
	db	"waypointlist",0
	align	4
_bb_waypointlist:
	dd	_bbNullObject
_533:
	db	"printlistlist",0
	align	4
_bb_printlistlist:
	dd	_bbNullObject
_534:
	db	"actionlist",0
	align	4
_bb_actionlist:
	dd	_bbNullObject
_535:
	db	"botlist",0
	align	4
_bb_botlist:
	dd	_bbNullObject
_536:
	db	"player",0
_537:
	db	":Tplayer",0
	align	4
_bb_player:
	dd	_bbNullObject
_538:
	db	"glowlist",0
	align	4
_bb_glowlist:
	dd	_bbNullObject
_539:
	db	"diagonal",0
_100:
	db	"f",0
	align	4
_bb_diagonal:
	dd	0x0
_540:
	db	"mx",0
	align	4
_bb_mx:
	dd	0x0
_541:
	db	"my",0
	align	4
_bb_my:
	dd	0x0
_542:
	db	"tmr",0
_543:
	db	":brl.timer.Ttimer",0
	align	4
_bb_tmr:
	dd	_bbNullObject
	align	4
_518:
	dd	1
	dd	_519
	dd	4
	dd	_520
	dd	_152
	dd	_bb_smokelist
	dd	4
	dd	_521
	dd	_152
	dd	_bb_mudlist
	dd	4
	dd	_522
	dd	_152
	dd	_bb_sanddustlist
	dd	4
	dd	_523
	dd	_152
	dd	_bb_firelist
	dd	4
	dd	_524
	dd	_152
	dd	_bb_funkenlist
	dd	4
	dd	_525
	dd	_152
	dd	_bb_spurlist
	dd	4
	dd	_526
	dd	_152
	dd	_bb_graterlist
	dd	4
	dd	_527
	dd	_152
	dd	_bb_Schussliste
	dd	4
	dd	_528
	dd	_152
	dd	_bb_texturlist
	dd	4
	dd	_529
	dd	_152
	dd	_bb_maptexturlist
	dd	4
	dd	_530
	dd	_152
	dd	_bb_texgrouplist
	dd	4
	dd	_531
	dd	_152
	dd	_bb_maptexgrouplist
	dd	4
	dd	_532
	dd	_152
	dd	_bb_waypointlist
	dd	4
	dd	_533
	dd	_152
	dd	_bb_printlistlist
	dd	4
	dd	_534
	dd	_152
	dd	_bb_actionlist
	dd	4
	dd	_535
	dd	_152
	dd	_bb_botlist
	dd	4
	dd	_536
	dd	_537
	dd	_bb_player
	dd	4
	dd	_538
	dd	_152
	dd	_bb_glowlist
	dd	4
	dd	_539
	dd	_100
	dd	_bb_diagonal
	dd	4
	dd	_540
	dd	_100
	dd	_bb_mx
	dd	4
	dd	_541
	dd	_100
	dd	_bb_my
	dd	4
	dd	_542
	dd	_543
	dd	_bb_tmr
	dd	0
_98:
	db	"Tsmoke",0
_99:
	db	"x",0
_101:
	db	"y",0
_102:
	db	"s",0
_103:
	db	"d",0
_104:
	db	"r",0
_105:
	db	"w",0
_106:
	db	"w2",0
_107:
	db	"a",0
_108:
	db	"New",0
_109:
	db	"()i",0
_110:
	db	"Delete",0
	align	4
_97:
	dd	2
	dd	_98
	dd	3
	dd	_99
	dd	_100
	dd	8
	dd	3
	dd	_101
	dd	_100
	dd	12
	dd	3
	dd	_102
	dd	_100
	dd	16
	dd	3
	dd	_103
	dd	_100
	dd	20
	dd	3
	dd	_104
	dd	_100
	dd	24
	dd	3
	dd	_105
	dd	_100
	dd	28
	dd	3
	dd	_106
	dd	_100
	dd	32
	dd	3
	dd	_107
	dd	_100
	dd	36
	dd	6
	dd	_108
	dd	_109
	dd	16
	dd	6
	dd	_110
	dd	_109
	dd	20
	dd	0
	align	4
_bb_Tsmoke:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_97
	dd	40
	dd	__bb_Tsmoke_New
	dd	__bb_Tsmoke_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_112:
	db	"Tmud",0
_113:
	db	"d2",0
	align	4
_111:
	dd	2
	dd	_112
	dd	3
	dd	_99
	dd	_100
	dd	8
	dd	3
	dd	_101
	dd	_100
	dd	12
	dd	3
	dd	_102
	dd	_100
	dd	16
	dd	3
	dd	_103
	dd	_100
	dd	20
	dd	3
	dd	_113
	dd	_100
	dd	24
	dd	3
	dd	_104
	dd	_100
	dd	28
	dd	3
	dd	_105
	dd	_100
	dd	32
	dd	3
	dd	_106
	dd	_100
	dd	36
	dd	3
	dd	_107
	dd	_100
	dd	40
	dd	6
	dd	_108
	dd	_109
	dd	16
	dd	6
	dd	_110
	dd	_109
	dd	20
	dd	0
	align	4
_bb_Tmud:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_111
	dd	44
	dd	__bb_Tmud_New
	dd	__bb_Tmud_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_115:
	db	"Tsanddust",0
	align	4
_114:
	dd	2
	dd	_115
	dd	3
	dd	_99
	dd	_100
	dd	8
	dd	3
	dd	_101
	dd	_100
	dd	12
	dd	3
	dd	_102
	dd	_100
	dd	16
	dd	3
	dd	_103
	dd	_100
	dd	20
	dd	3
	dd	_113
	dd	_100
	dd	24
	dd	3
	dd	_104
	dd	_100
	dd	28
	dd	3
	dd	_105
	dd	_100
	dd	32
	dd	3
	dd	_106
	dd	_100
	dd	36
	dd	3
	dd	_107
	dd	_100
	dd	40
	dd	6
	dd	_108
	dd	_109
	dd	16
	dd	6
	dd	_110
	dd	_109
	dd	20
	dd	0
	align	4
_bb_Tsanddust:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_114
	dd	44
	dd	__bb_Tsanddust_New
	dd	__bb_Tsanddust_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_117:
	db	"Tfire",0
_118:
	db	"ir",0
	align	4
_116:
	dd	2
	dd	_117
	dd	3
	dd	_99
	dd	_100
	dd	8
	dd	3
	dd	_101
	dd	_100
	dd	12
	dd	3
	dd	_102
	dd	_100
	dd	16
	dd	3
	dd	_103
	dd	_100
	dd	20
	dd	3
	dd	_113
	dd	_100
	dd	24
	dd	3
	dd	_104
	dd	_100
	dd	28
	dd	3
	dd	_118
	dd	_100
	dd	32
	dd	3
	dd	_105
	dd	_100
	dd	36
	dd	3
	dd	_106
	dd	_100
	dd	40
	dd	3
	dd	_107
	dd	_100
	dd	44
	dd	6
	dd	_108
	dd	_109
	dd	16
	dd	6
	dd	_110
	dd	_109
	dd	20
	dd	0
	align	4
_bb_Tfire:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_116
	dd	48
	dd	__bb_Tfire_New
	dd	__bb_Tfire_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_120:
	db	"Tfunken",0
_121:
	db	"z",0
_122:
	db	"az",0
	align	4
_119:
	dd	2
	dd	_120
	dd	3
	dd	_99
	dd	_100
	dd	8
	dd	3
	dd	_101
	dd	_100
	dd	12
	dd	3
	dd	_121
	dd	_100
	dd	16
	dd	3
	dd	_122
	dd	_100
	dd	20
	dd	3
	dd	_102
	dd	_100
	dd	24
	dd	3
	dd	_104
	dd	_100
	dd	28
	dd	6
	dd	_108
	dd	_109
	dd	16
	dd	6
	dd	_110
	dd	_109
	dd	20
	dd	0
	align	4
_bb_Tfunken:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_119
	dd	32
	dd	__bb_Tfunken_New
	dd	__bb_Tfunken_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_124:
	db	"Tspur",0
_125:
	db	"c",0
_126:
	db	"b",0
_127:
	db	"length",0
_128:
	db	"frompl",0
_129:
	db	"i",0
_130:
	db	"time",0
	align	4
_123:
	dd	2
	dd	_124
	dd	3
	dd	_99
	dd	_100
	dd	8
	dd	3
	dd	_101
	dd	_100
	dd	12
	dd	3
	dd	_104
	dd	_100
	dd	16
	dd	3
	dd	_100
	dd	_100
	dd	20
	dd	3
	dd	_125
	dd	_126
	dd	24
	dd	3
	dd	_127
	dd	_100
	dd	28
	dd	3
	dd	_128
	dd	_129
	dd	32
	dd	3
	dd	_130
	dd	_129
	dd	36
	dd	6
	dd	_108
	dd	_109
	dd	16
	dd	6
	dd	_110
	dd	_109
	dd	20
	dd	0
	align	4
_bb_Tspur:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_123
	dd	40
	dd	__bb_Tspur_New
	dd	__bb_Tspur_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_132:
	db	"Tgrater",0
	align	4
_131:
	dd	2
	dd	_132
	dd	3
	dd	_99
	dd	_100
	dd	8
	dd	3
	dd	_101
	dd	_100
	dd	12
	dd	3
	dd	_104
	dd	_100
	dd	16
	dd	3
	dd	_100
	dd	_100
	dd	20
	dd	3
	dd	_125
	dd	_126
	dd	24
	dd	3
	dd	_102
	dd	_100
	dd	28
	dd	6
	dd	_108
	dd	_109
	dd	16
	dd	6
	dd	_110
	dd	_109
	dd	20
	dd	0
	align	4
_bb_Tgrater:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_131
	dd	32
	dd	__bb_Tgrater_New
	dd	__bb_Tgrater_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_134:
	db	"TSchussSp",0
_135:
	db	"xs",0
_136:
	db	"ys",0
_137:
	db	"winkels",0
_138:
	db	"treffer",0
_139:
	db	"Bild",0
_140:
	db	"$",0
_141:
	db	"Kraft",0
_142:
	db	"weite",0
	align	4
_133:
	dd	2
	dd	_134
	dd	3
	dd	_135
	dd	_100
	dd	8
	dd	3
	dd	_136
	dd	_100
	dd	12
	dd	3
	dd	_137
	dd	_100
	dd	16
	dd	3
	dd	_138
	dd	_129
	dd	20
	dd	3
	dd	_139
	dd	_140
	dd	24
	dd	3
	dd	_141
	dd	_100
	dd	28
	dd	3
	dd	_142
	dd	_100
	dd	32
	dd	6
	dd	_108
	dd	_109
	dd	16
	dd	6
	dd	_110
	dd	_109
	dd	20
	dd	0
	align	4
_bb_TSchussSp:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_133
	dd	36
	dd	__bb_TSchussSp_New
	dd	__bb_TSchussSp_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_144:
	db	"Ttextur",0
_145:
	db	"render",0
_146:
	db	"[]:Ttextur",0
_147:
	db	"isRendert",0
_148:
	db	"doRender",0
_149:
	db	"orginal",0
_150:
	db	":Ttextur",0
_151:
	db	"redertlist",0
_153:
	db	"img",0
_154:
	db	":brl.max2d.TImage",0
_155:
	db	"pic",0
_156:
	db	":brl.pixmap.TPixmap",0
_157:
	db	"version",0
_158:
	db	"beforeTex",0
_159:
	db	"isAlpha",0
_160:
	db	"isDust",0
_161:
	db	"g",0
_162:
	db	"speicherort",0
_163:
	db	"datname",0
_164:
	db	"group",0
_165:
	db	"eingestellt",0
	align	4
_143:
	dd	2
	dd	_144
	dd	3
	dd	_145
	dd	_146
	dd	8
	dd	3
	dd	_147
	dd	_129
	dd	12
	dd	3
	dd	_148
	dd	_129
	dd	16
	dd	3
	dd	_149
	dd	_150
	dd	20
	dd	3
	dd	_151
	dd	_152
	dd	24
	dd	3
	dd	_153
	dd	_154
	dd	28
	dd	3
	dd	_155
	dd	_156
	dd	32
	dd	3
	dd	_157
	dd	_129
	dd	36
	dd	3
	dd	_158
	dd	_150
	dd	40
	dd	3
	dd	_159
	dd	_126
	dd	44
	dd	3
	dd	_160
	dd	_126
	dd	45
	dd	3
	dd	_104
	dd	_126
	dd	46
	dd	3
	dd	_161
	dd	_126
	dd	47
	dd	3
	dd	_126
	dd	_126
	dd	48
	dd	3
	dd	_162
	dd	_140
	dd	52
	dd	3
	dd	_163
	dd	_140
	dd	56
	dd	3
	dd	_164
	dd	_140
	dd	60
	dd	3
	dd	_165
	dd	_126
	dd	64
	dd	6
	dd	_108
	dd	_109
	dd	16
	dd	6
	dd	_110
	dd	_109
	dd	20
	dd	0
	align	4
_bb_Ttextur:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_143
	dd	65
	dd	__bb_Ttextur_New
	dd	__bb_Ttextur_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_167:
	db	"Ttexgroup",0
_168:
	db	"texlink",0
_169:
	db	"texlist",0
	align	4
_166:
	dd	2
	dd	_167
	dd	3
	dd	_164
	dd	_140
	dd	8
	dd	3
	dd	_168
	dd	_150
	dd	12
	dd	3
	dd	_169
	dd	_152
	dd	16
	dd	6
	dd	_108
	dd	_109
	dd	16
	dd	6
	dd	_110
	dd	_109
	dd	20
	dd	0
	align	4
_bb_Ttexgroup:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_166
	dd	20
	dd	__bb_Ttexgroup_New
	dd	__bb_Ttexgroup_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_171:
	db	"Twaypoint",0
_172:
	db	"cheacked",0
_173:
	db	"size",0
_174:
	db	"name",0
_175:
	db	"action",0
_176:
	db	":Taction",0
_177:
	db	"otherWP",0
_178:
	db	":Twaypoint",0
_179:
	db	"dist",0
_180:
	db	"[]f",0
_181:
	db	"chaged",0
_182:
	db	"used",0
_183:
	db	"otherlist",0
_184:
	db	"othernames",0
_185:
	db	"[]$",0
_186:
	db	"script",0
	align	4
_170:
	dd	2
	dd	_171
	dd	3
	dd	_99
	dd	_100
	dd	8
	dd	3
	dd	_101
	dd	_100
	dd	12
	dd	3
	dd	_172
	dd	_129
	dd	16
	dd	3
	dd	_173
	dd	_129
	dd	20
	dd	3
	dd	_174
	dd	_140
	dd	24
	dd	3
	dd	_175
	dd	_176
	dd	28
	dd	3
	dd	_177
	dd	_178
	dd	32
	dd	3
	dd	_179
	dd	_180
	dd	36
	dd	3
	dd	_181
	dd	_129
	dd	40
	dd	3
	dd	_182
	dd	_100
	dd	44
	dd	3
	dd	_183
	dd	_152
	dd	48
	dd	3
	dd	_184
	dd	_185
	dd	52
	dd	3
	dd	_186
	dd	_185
	dd	56
	dd	6
	dd	_108
	dd	_109
	dd	16
	dd	6
	dd	_110
	dd	_109
	dd	20
	dd	0
	align	4
_bb_Twaypoint:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_170
	dd	60
	dd	__bb_Twaypoint_New
	dd	__bb_Twaypoint_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_188:
	db	"Taction",0
_189:
	db	"respawn",0
_190:
	db	"every",0
_191:
	db	"onlytimes",0
_192:
	db	"win",0
	align	4
_187:
	dd	2
	dd	_188
	dd	3
	dd	_174
	dd	_140
	dd	8
	dd	3
	dd	_189
	dd	_129
	dd	12
	dd	3
	dd	_190
	dd	_129
	dd	16
	dd	3
	dd	_191
	dd	_129
	dd	20
	dd	3
	dd	_192
	dd	_129
	dd	24
	dd	6
	dd	_108
	dd	_109
	dd	16
	dd	6
	dd	_110
	dd	_109
	dd	20
	dd	0
	align	4
_bb_Taction:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_187
	dd	28
	dd	__bb_Taction_New
	dd	__bb_Taction_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_194:
	db	"Tbot",0
_195:
	db	"bx",0
_196:
	db	"by",0
_197:
	db	"br",0
_198:
	db	"bs",0
_199:
	db	"bsmk",0
_200:
	db	"bospxr",0
_201:
	db	"bospxl",0
_202:
	db	"bospyr",0
_203:
	db	"bospyl",0
_204:
	db	"blook",0
_205:
	db	"btd",0
_206:
	db	"bbspr",0
_207:
	db	"bbspl",0
_208:
	db	"id",0
_209:
	db	"shot",0
_210:
	db	"cd",0
_211:
	db	"cd2",0
_212:
	db	"cd3",0
_213:
	db	"life",0
_214:
	db	"dtmr",0
_215:
	db	"fspy",0
_216:
	db	"marinecd",0
_217:
	db	"tx",0
_218:
	db	"ty",0
_219:
	db	"ttmr",0
_220:
	db	"waypoint",0
_221:
	db	"endwaypoint",0
_222:
	db	"botgas",0
_223:
	db	"freund",0
_224:
	db	"freundtarget",0
_225:
	db	":Tbot",0
_226:
	db	"seelist",0
_227:
	db	"botdel",0
	align	4
_193:
	dd	2
	dd	_194
	dd	3
	dd	_195
	dd	_100
	dd	8
	dd	3
	dd	_196
	dd	_100
	dd	12
	dd	3
	dd	_197
	dd	_100
	dd	16
	dd	3
	dd	_198
	dd	_100
	dd	20
	dd	3
	dd	_199
	dd	_129
	dd	24
	dd	3
	dd	_200
	dd	_100
	dd	28
	dd	3
	dd	_201
	dd	_100
	dd	32
	dd	3
	dd	_202
	dd	_100
	dd	36
	dd	3
	dd	_203
	dd	_100
	dd	40
	dd	3
	dd	_204
	dd	_100
	dd	44
	dd	3
	dd	_205
	dd	_100
	dd	48
	dd	3
	dd	_206
	dd	_126
	dd	52
	dd	3
	dd	_207
	dd	_126
	dd	53
	dd	3
	dd	_208
	dd	_129
	dd	56
	dd	3
	dd	_209
	dd	_126
	dd	60
	dd	3
	dd	_210
	dd	_129
	dd	64
	dd	3
	dd	_211
	dd	_129
	dd	68
	dd	3
	dd	_212
	dd	_129
	dd	72
	dd	3
	dd	_213
	dd	_100
	dd	76
	dd	3
	dd	_214
	dd	_126
	dd	80
	dd	3
	dd	_215
	dd	_129
	dd	84
	dd	3
	dd	_216
	dd	_129
	dd	88
	dd	3
	dd	_217
	dd	_100
	dd	92
	dd	3
	dd	_218
	dd	_100
	dd	96
	dd	3
	dd	_219
	dd	_126
	dd	100
	dd	3
	dd	_220
	dd	_178
	dd	104
	dd	3
	dd	_221
	dd	_178
	dd	108
	dd	3
	dd	_222
	dd	_100
	dd	112
	dd	3
	dd	_223
	dd	_129
	dd	116
	dd	3
	dd	_224
	dd	_225
	dd	120
	dd	3
	dd	_226
	dd	_152
	dd	124
	dd	3
	dd	_227
	dd	_129
	dd	128
	dd	6
	dd	_108
	dd	_109
	dd	16
	dd	6
	dd	_110
	dd	_109
	dd	20
	dd	0
	align	4
_bb_Tbot:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_193
	dd	132
	dd	__bb_Tbot_New
	dd	__bb_Tbot_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_229:
	db	"Tplayer",0
_230:
	db	"sx",0
_231:
	db	"sy",0
_232:
	db	"winkel",0
_233:
	db	"turmwinkel",0
_234:
	db	"turmdistanz",0
_235:
	db	"bottarget",0
_236:
	db	"Energie",0
_237:
	db	"dead",0
_238:
	db	"HoechstG",0
_239:
	db	"BeschV",0
_240:
	db	"DrehB",0
_241:
	db	"plx",0
_242:
	db	"ply",0
_243:
	db	"Leben",0
_244:
	db	"Geschw",0
_245:
	db	"Masse",0
_246:
	db	"ReiKraft",0
_247:
	db	"Brems",0
_248:
	db	"altx",0
_249:
	db	"alty",0
_250:
	db	"Backw",0
_251:
	db	"VBackw",0
_252:
	db	"schusstP",0
_253:
	db	"HGBackw",0
	align	4
_228:
	dd	2
	dd	_229
	dd	3
	dd	_99
	dd	_100
	dd	8
	dd	3
	dd	_101
	dd	_100
	dd	12
	dd	3
	dd	_230
	dd	_100
	dd	16
	dd	3
	dd	_231
	dd	_100
	dd	20
	dd	3
	dd	_232
	dd	_100
	dd	24
	dd	3
	dd	_233
	dd	_100
	dd	28
	dd	3
	dd	_234
	dd	_100
	dd	32
	dd	3
	dd	_235
	dd	_225
	dd	36
	dd	3
	dd	_236
	dd	_100
	dd	40
	dd	3
	dd	_214
	dd	_129
	dd	44
	dd	3
	dd	_237
	dd	_129
	dd	48
	dd	3
	dd	_238
	dd	_100
	dd	52
	dd	3
	dd	_239
	dd	_100
	dd	56
	dd	3
	dd	_240
	dd	_100
	dd	60
	dd	3
	dd	_241
	dd	_100
	dd	64
	dd	3
	dd	_242
	dd	_100
	dd	68
	dd	3
	dd	_243
	dd	_100
	dd	72
	dd	3
	dd	_244
	dd	_100
	dd	76
	dd	3
	dd	_245
	dd	_100
	dd	80
	dd	3
	dd	_246
	dd	_100
	dd	84
	dd	3
	dd	_247
	dd	_100
	dd	88
	dd	3
	dd	_248
	dd	_100
	dd	92
	dd	3
	dd	_249
	dd	_100
	dd	96
	dd	3
	dd	_250
	dd	_100
	dd	100
	dd	3
	dd	_251
	dd	_100
	dd	104
	dd	3
	dd	_252
	dd	_129
	dd	108
	dd	3
	dd	_253
	dd	_100
	dd	112
	dd	3
	dd	_226
	dd	_152
	dd	116
	dd	6
	dd	_108
	dd	_109
	dd	16
	dd	6
	dd	_110
	dd	_109
	dd	20
	dd	0
	align	4
_bb_Tplayer:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_228
	dd	120
	dd	__bb_Tplayer_New
	dd	__bb_Tplayer_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_255:
	db	"Tglow",0
_256:
	db	"l",0
	align	4
_254:
	dd	2
	dd	_255
	dd	3
	dd	_99
	dd	_100
	dd	8
	dd	3
	dd	_101
	dd	_100
	dd	12
	dd	3
	dd	_102
	dd	_100
	dd	16
	dd	3
	dd	_104
	dd	_129
	dd	20
	dd	3
	dd	_161
	dd	_129
	dd	24
	dd	3
	dd	_126
	dd	_129
	dd	28
	dd	3
	dd	_103
	dd	_129
	dd	32
	dd	3
	dd	_256
	dd	_129
	dd	36
	dd	3
	dd	_107
	dd	_100
	dd	40
	dd	6
	dd	_108
	dd	_109
	dd	16
	dd	6
	dd	_110
	dd	_109
	dd	20
	dd	0
	align	4
_bb_Tglow:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_254
	dd	44
	dd	__bb_Tglow_New
	dd	__bb_Tglow_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_258:
	db	"Tdrive",0
_259:
	db	"Drehzahl",0
_260:
	db	"Drehmoment",0
	align	4
_257:
	dd	2
	dd	_258
	dd	3
	dd	_259
	dd	_100
	dd	8
	dd	3
	dd	_260
	dd	_100
	dd	12
	dd	6
	dd	_108
	dd	_109
	dd	16
	dd	6
	dd	_110
	dd	_109
	dd	20
	dd	0
	align	4
_bb_Tdrive:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_257
	dd	16
	dd	__bb_Tdrive_New
	dd	__bb_Tdrive_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_262:
	db	"Tengine",0
_263:
	db	"speed",0
_264:
	db	"gang",0
_265:
	db	"oldgang",0
_266:
	db	"rucktimer",0
	align	4
_261:
	dd	2
	dd	_262
	dd	3
	dd	_259
	dd	_100
	dd	8
	dd	3
	dd	_260
	dd	_100
	dd	12
	dd	3
	dd	_263
	dd	_100
	dd	16
	dd	3
	dd	_264
	dd	_129
	dd	20
	dd	3
	dd	_265
	dd	_129
	dd	24
	dd	3
	dd	_266
	dd	_129
	dd	28
	dd	6
	dd	_108
	dd	_109
	dd	16
	dd	6
	dd	_110
	dd	_109
	dd	20
	dd	0
	align	4
_bb_Tengine:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_261
	dd	32
	dd	__bb_Tengine_New
	dd	__bb_Tengine_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_436:
	db	"D:/Proggen/projecte/team/PanzerS/inc/types.bmx",0
	align	4
_435:
	dd	_436
	dd	5
	dd	1
	align	4
_438:
	dd	0
	align	4
_440:
	dd	_436
	dd	10
	dd	1
	align	4
_443:
	dd	_436
	dd	15
	dd	1
	align	4
_446:
	dd	_436
	dd	20
	dd	1
	align	4
_449:
	dd	_436
	dd	25
	dd	1
	align	4
_452:
	dd	_436
	dd	30
	dd	1
	align	4
_455:
	dd	_436
	dd	35
	dd	1
	align	4
_458:
	dd	_436
	dd	40
	dd	1
	align	4
_461:
	dd	_436
	dd	48
	dd	1
	align	4
_464:
	dd	_436
	dd	49
	dd	1
	align	4
_467:
	dd	_436
	dd	55
	dd	1
	align	4
_470:
	dd	_436
	dd	56
	dd	1
	align	4
_473:
	dd	_436
	dd	67
	dd	1
	align	4
_476:
	dd	_436
	dd	68
	dd	1
	align	4
_479:
	dd	_436
	dd	75
	dd	1
	align	4
_482:
	dd	_436
	dd	84
	dd	1
	align	4
_485:
	dd	_436
	dd	93
	dd	1
	align	4
_488:
	dd	_436
	dd	98
	dd	1
_492:
	db	"D:/Proggen/projecte/team/PanzerS/testlap_newbot.bmx",0
	align	4
_491:
	dd	_492
	dd	18
	dd	1
	align	4
_18:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	80,97,110,122,101,114,83,58,32,84,101,115,116,108,97,112
	dw	33
	align	4
_497:
	dd	_492
	dd	19
	dd	1
	align	4
_498:
	dd	_492
	dd	20
	dd	1
_500:
	db	"D:/Proggen/projecte/team/PanzerS/inc/may.bmx",0
	align	4
_499:
	dd	_500
	dd	249
	dd	1
	align	8
_1731:
	dd	0x0,0x40000000
	align	4
_502:
	dd	_492
	dd	28
	dd	1
	align	4
_503:
	dd	_492
	dd	30
	dd	1
	align	4
_504:
	dd	_492
	dd	32
	dd	1
	align	4
_507:
	dd	_492
	dd	34
	dd	1
	align	4
_517:
	dd	3
	dd	0
	dd	0
	align	4
_510:
	dd	_492
	dd	35
	dd	2
	align	4
_513:
	dd	_492
	dd	36
	dd	2
	align	4
_514:
	dd	_492
	dd	37
	dd	3
	align	4
_515:
	dd	_492
	dd	38
	dd	3
	align	4
_516:
	dd	_492
	dd	41
	dd	2
_548:
	db	"Self",0
_549:
	db	":Tsmoke",0
	align	4
_547:
	dd	1
	dd	_108
	dd	2
	dd	_548
	dd	_549
	dd	-4
	dd	0
	align	4
_1757:
	dd	0x3ecccccd
	align	4
_546:
	dd	3
	dd	0
	dd	0
_553:
	db	":Tmud",0
	align	4
_552:
	dd	1
	dd	_108
	dd	2
	dd	_548
	dd	_553
	dd	-4
	dd	0
	align	4
_551:
	dd	3
	dd	0
	dd	0
_557:
	db	":Tsanddust",0
	align	4
_556:
	dd	1
	dd	_108
	dd	2
	dd	_548
	dd	_557
	dd	-4
	dd	0
	align	4
_1766:
	dd	0x3f4ccccd
	align	4
_555:
	dd	3
	dd	0
	dd	0
_561:
	db	":Tfire",0
	align	4
_560:
	dd	1
	dd	_108
	dd	2
	dd	_548
	dd	_561
	dd	-4
	dd	0
	align	4
_1771:
	dd	0x3e99999a
	align	4
_559:
	dd	3
	dd	0
	dd	0
_565:
	db	":Tfunken",0
	align	4
_564:
	dd	1
	dd	_108
	dd	2
	dd	_548
	dd	_565
	dd	-4
	dd	0
	align	4
_563:
	dd	3
	dd	0
	dd	0
_569:
	db	":Tspur",0
	align	4
_568:
	dd	1
	dd	_108
	dd	2
	dd	_548
	dd	_569
	dd	-4
	dd	0
	align	4
_1780:
	dd	0x3f400000
	align	4
_567:
	dd	3
	dd	0
	dd	0
_573:
	db	":Tgrater",0
	align	4
_572:
	dd	1
	dd	_108
	dd	2
	dd	_548
	dd	_573
	dd	-4
	dd	0
	align	4
_1785:
	dd	0x3f400000
	align	4
_571:
	dd	3
	dd	0
	dd	0
_578:
	db	":TSchussSp",0
	align	4
_577:
	dd	1
	dd	_108
	dd	2
	dd	_548
	dd	_578
	dd	-4
	dd	0
	align	4
_576:
	dd	3
	dd	0
	dd	0
	align	4
_593:
	dd	1
	dd	_108
	dd	2
	dd	_548
	dd	_150
	dd	-4
	dd	0
_582:
	db	":Ttextur",0
	align	4
_592:
	dd	3
	dd	0
	dd	0
_618:
	db	":Ttexgroup",0
	align	4
_617:
	dd	1
	dd	_108
	dd	2
	dd	_548
	dd	_618
	dd	-4
	dd	0
	align	4
_616:
	dd	3
	dd	0
	dd	0
	align	4
_637:
	dd	1
	dd	_108
	dd	2
	dd	_548
	dd	_178
	dd	-4
	dd	0
_629:
	db	"f",0
_632:
	db	"$",0
_634:
	db	"$",0
	align	4
_636:
	dd	3
	dd	0
	dd	0
	align	4
_655:
	dd	1
	dd	_108
	dd	2
	dd	_548
	dd	_176
	dd	-4
	dd	0
	align	4
_654:
	dd	3
	dd	0
	dd	0
	align	4
_664:
	dd	1
	dd	_108
	dd	2
	dd	_548
	dd	_225
	dd	-4
	dd	0
	align	4
_1810:
	dd	0x42c80000
	align	4
_663:
	dd	3
	dd	0
	dd	0
	align	4
_677:
	dd	1
	dd	_108
	dd	2
	dd	_548
	dd	_537
	dd	-4
	dd	0
	align	4
_676:
	dd	3
	dd	0
	dd	0
_685:
	db	":Tglow",0
	align	4
_684:
	dd	1
	dd	_108
	dd	2
	dd	_548
	dd	_685
	dd	-4
	dd	0
	align	4
_683:
	dd	3
	dd	0
	dd	0
_689:
	db	":Tdrive",0
	align	4
_688:
	dd	1
	dd	_108
	dd	2
	dd	_548
	dd	_689
	dd	-4
	dd	0
	align	4
_687:
	dd	3
	dd	0
	dd	0
_693:
	db	":Tengine",0
	align	4
_692:
	dd	1
	dd	_108
	dd	2
	dd	_548
	dd	_693
	dd	-4
	dd	0
	align	4
_691:
	dd	3
	dd	0
	dd	0
_721:
	db	"DrawPicture",0
_722:
	db	"bild",0
_723:
	db	":brl.max2d.Timage",0
_724:
	db	"width",0
_725:
	db	"height",0
_726:
	db	"nowscale_X",0
_727:
	db	"nowscale_Y",0
_728:
	db	"nowhandle_X",0
_729:
	db	"nowhandle_Y",0
_730:
	db	"factorx",0
_731:
	db	"factory",0
_732:
	db	"entferung",0
	align	4
_720:
	dd	1
	dd	_721
	dd	2
	dd	_722
	dd	_723
	dd	-4
	dd	2
	dd	_99
	dd	_100
	dd	-8
	dd	2
	dd	_101
	dd	_100
	dd	-12
	dd	2
	dd	_724
	dd	_100
	dd	-16
	dd	2
	dd	_725
	dd	_100
	dd	-20
	dd	2
	dd	_726
	dd	_100
	dd	-24
	dd	2
	dd	_727
	dd	_100
	dd	-28
	dd	2
	dd	_728
	dd	_100
	dd	-32
	dd	2
	dd	_729
	dd	_100
	dd	-36
	dd	2
	dd	_730
	dd	_100
	dd	-40
	dd	2
	dd	_731
	dd	_100
	dd	-44
	dd	2
	dd	_732
	dd	_100
	dd	-48
	dd	2
	dd	_232
	dd	_100
	dd	-52
	dd	0
	align	4
_695:
	dd	_500
	dd	2
	dd	2
	align	4
_697:
	dd	_500
	dd	3
	dd	2
	align	4
_699:
	dd	_500
	dd	4
	dd	2
	align	4
_700:
	dd	_500
	dd	6
	dd	2
	align	4
_702:
	dd	_500
	dd	7
	dd	2
	align	4
_704:
	dd	_500
	dd	8
	dd	2
	align	4
_705:
	dd	_500
	dd	10
	dd	2
	align	4
_709:
	dd	_500
	dd	11
	dd	2
	align	4
_713:
	dd	_500
	dd	13
	dd	2
	align	4
_714:
	dd	_500
	dd	16
	dd	2
	align	8
_1831:
	dd	0x0,0x40000000
	align	8
_1832:
	dd	0x0,0x40000000
	align	4
_716:
	dd	_500
	dd	17
	dd	2
	align	8
_1833:
	dd	0x0,0x40668000
	align	4
_718:
	dd	_500
	dd	19
	dd	2
	align	4
_719:
	dd	_500
	dd	21
	dd	2
_754:
	db	"PushCollision",0
_755:
	db	"x1",0
_756:
	db	"y1",0
_757:
	db	"size1",0
_758:
	db	"x2",0
_759:
	db	"y2",0
_760:
	db	"size2",0
_761:
	db	"festergegenstend2",0
	align	4
_753:
	dd	1
	dd	_754
	dd	5
	dd	_755
	dd	_100
	dd	-8
	dd	5
	dd	_756
	dd	_100
	dd	-12
	dd	2
	dd	_757
	dd	_100
	dd	-16
	dd	5
	dd	_758
	dd	_100
	dd	-20
	dd	5
	dd	_759
	dd	_100
	dd	-24
	dd	2
	dd	_760
	dd	_100
	dd	-28
	dd	2
	dd	_761
	dd	_126
	dd	-4
	dd	2
	dd	_732
	dd	_100
	dd	-32
	dd	0
	align	4
_733:
	dd	_500
	dd	25
	dd	2
	align	8
_1838:
	dd	0x0,0x40000000
	align	8
_1839:
	dd	0x0,0x40000000
	align	4
_735:
	dd	_500
	dd	26
	dd	2
	align	4
_1840:
	dd	0x40000000
	align	4
_736:
	dd	_500
	dd	27
	dd	2
	align	4
_1841:
	dd	0x40000000
	align	4
_737:
	dd	_500
	dd	28
	dd	2
	align	4
_752:
	dd	3
	dd	0
	dd	2
	dd	_232
	dd	_100
	dd	-36
	dd	0
	align	4
_739:
	dd	_500
	dd	29
	dd	3
	align	4
_1842:
	dd	0x42b40000
	align	4
_741:
	dd	_500
	dd	31
	dd	3
	align	4
_745:
	dd	3
	dd	0
	dd	0
	align	4
_743:
	dd	_500
	dd	32
	dd	4
	align	4
_744:
	dd	_500
	dd	33
	dd	4
	align	4
_751:
	dd	3
	dd	0
	dd	0
	align	4
_747:
	dd	_500
	dd	35
	dd	4
	align	4
_1843:
	dd	0x40000000
	align	4
_748:
	dd	_500
	dd	36
	dd	4
	align	4
_1844:
	dd	0x40000000
	align	4
_749:
	dd	_500
	dd	37
	dd	4
	align	4
_1845:
	dd	0x43340000
	align	4
_1846:
	dd	0x40000000
	align	4
_750:
	dd	_500
	dd	38
	dd	4
	align	4
_1847:
	dd	0x43340000
	align	4
_1848:
	dd	0x40000000
_790:
	db	"PushQuad",0
_791:
	db	"sizeW2",0
_792:
	db	"sizeH2",0
_793:
	db	"tex00",0
_794:
	db	"tey00",0
_795:
	db	"tex01",0
_796:
	db	"tey01",0
_797:
	db	"tex02",0
_798:
	db	"tey02",0
_799:
	db	"tex03",0
_800:
	db	"tey03",0
_801:
	db	"tex04",0
_802:
	db	"tey04",0
	align	4
_789:
	dd	1
	dd	_790
	dd	5
	dd	_755
	dd	_100
	dd	-4
	dd	5
	dd	_756
	dd	_100
	dd	-8
	dd	2
	dd	_757
	dd	_100
	dd	-12
	dd	2
	dd	_758
	dd	_100
	dd	-16
	dd	2
	dd	_759
	dd	_100
	dd	-20
	dd	2
	dd	_791
	dd	_100
	dd	-24
	dd	2
	dd	_792
	dd	_100
	dd	-28
	dd	2
	dd	_760
	dd	_100
	dd	-32
	dd	2
	dd	_793
	dd	_100
	dd	-36
	dd	2
	dd	_794
	dd	_100
	dd	-40
	dd	2
	dd	_795
	dd	_100
	dd	-44
	dd	2
	dd	_796
	dd	_100
	dd	-48
	dd	2
	dd	_797
	dd	_100
	dd	-52
	dd	2
	dd	_798
	dd	_100
	dd	-56
	dd	2
	dd	_799
	dd	_100
	dd	-60
	dd	2
	dd	_800
	dd	_100
	dd	-64
	dd	2
	dd	_801
	dd	_100
	dd	-68
	dd	2
	dd	_802
	dd	_100
	dd	-72
	dd	0
	align	4
_762:
	dd	_500
	dd	44
	dd	2
	align	8
_1853:
	dd	0x0,0x40000000
	align	8
_1854:
	dd	0x0,0x40000000
	align	8
_1855:
	dd	0x0,0x40080000
	align	4
_764:
	dd	_500
	dd	47
	dd	2
	align	4
_766:
	dd	_500
	dd	48
	dd	2
	align	4
_768:
	dd	_500
	dd	49
	dd	2
	align	4
_1856:
	dd	0x40000000
	align	4
_769:
	dd	_500
	dd	51
	dd	2
	align	4
_1857:
	dd	0x40800000
	align	4
_771:
	dd	_500
	dd	52
	dd	2
	align	4
_1858:
	dd	0x40800000
	align	4
_773:
	dd	_500
	dd	54
	dd	2
	align	4
_774:
	dd	_500
	dd	56
	dd	2
	align	4
_1859:
	dd	0x40800000
	align	4
_776:
	dd	_500
	dd	57
	dd	2
	align	4
_1860:
	dd	0x40800000
	align	4
_778:
	dd	_500
	dd	59
	dd	2
	align	4
_779:
	dd	_500
	dd	61
	dd	2
	align	4
_1861:
	dd	0x40800000
	align	4
_781:
	dd	_500
	dd	62
	dd	2
	align	4
_1862:
	dd	0x40800000
	align	4
_783:
	dd	_500
	dd	64
	dd	2
	align	4
_784:
	dd	_500
	dd	66
	dd	2
	align	4
_1863:
	dd	0x40800000
	align	4
_786:
	dd	_500
	dd	67
	dd	2
	align	4
_1864:
	dd	0x40800000
	align	4
_788:
	dd	_500
	dd	69
	dd	2
_830:
	db	"BufferTower",0
_831:
	db	"zielwinkel",0
_832:
	db	"drehspeed",0
_833:
	db	"totalwinkel",0
_834:
	db	"bufftore",0
_835:
	db	"test",0
	align	4
_829:
	dd	1
	dd	_830
	dd	2
	dd	_233
	dd	_100
	dd	-4
	dd	2
	dd	_831
	dd	_100
	dd	-8
	dd	2
	dd	_832
	dd	_100
	dd	-12
	dd	2
	dd	_833
	dd	_100
	dd	-16
	dd	2
	dd	_834
	dd	_100
	dd	-20
	dd	2
	dd	_835
	dd	_129
	dd	-24
	dd	0
	align	4
_803:
	dd	_500
	dd	73
	dd	2
	align	4
_1867:
	dd	0x43340000
	align	4
_805:
	dd	_500
	dd	74
	dd	2
	align	4
_807:
	dd	3
	dd	0
	dd	0
	align	4
_806:
	dd	_500
	dd	75
	dd	3
	align	4
_1868:
	dd	0x43b40000
	align	4
_1869:
	dd	0xc3340000
	align	4
_808:
	dd	_500
	dd	77
	dd	2
	align	4
_810:
	dd	3
	dd	0
	dd	0
	align	4
_809:
	dd	_500
	dd	78
	dd	3
	align	4
_1870:
	dd	0x43b40000
	align	4
_1871:
	dd	0x43340000
	align	4
_811:
	dd	_500
	dd	80
	dd	2
	align	4
_814:
	dd	_500
	dd	81
	dd	2
	align	4
_818:
	dd	3
	dd	0
	dd	0
	align	4
_816:
	dd	_500
	dd	81
	dd	34
	align	4
_817:
	dd	_500
	dd	81
	dd	58
	align	4
_819:
	dd	_500
	dd	82
	dd	2
	align	4
_823:
	dd	3
	dd	0
	dd	0
	align	4
_821:
	dd	_500
	dd	82
	dd	36
	align	4
_822:
	dd	_500
	dd	82
	dd	59
	align	4
_824:
	dd	_500
	dd	83
	dd	2
	align	4
_827:
	dd	3
	dd	0
	dd	0
	align	4
_826:
	dd	_500
	dd	83
	dd	19
	align	4
_828:
	dd	_500
	dd	84
	dd	2
_861:
	db	"BufferTarget",0
_862:
	db	"drehschalter",0
	align	4
_860:
	dd	1
	dd	_861
	dd	2
	dd	_233
	dd	_100
	dd	-4
	dd	2
	dd	_831
	dd	_100
	dd	-8
	dd	2
	dd	_862
	dd	_100
	dd	-12
	dd	2
	dd	_833
	dd	_100
	dd	-16
	dd	2
	dd	_834
	dd	_100
	dd	-20
	dd	2
	dd	_835
	dd	_129
	dd	-24
	dd	0
	align	4
_836:
	dd	_500
	dd	88
	dd	2
	align	4
_1879:
	dd	0x43340000
	align	4
_838:
	dd	_500
	dd	89
	dd	2
	align	4
_840:
	dd	3
	dd	0
	dd	0
	align	4
_839:
	dd	_500
	dd	90
	dd	3
	align	4
_1880:
	dd	0x43b40000
	align	4
_1881:
	dd	0xc3340000
	align	4
_841:
	dd	_500
	dd	92
	dd	2
	align	4
_843:
	dd	3
	dd	0
	dd	0
	align	4
_842:
	dd	_500
	dd	93
	dd	3
	align	4
_1882:
	dd	0x43b40000
	align	4
_1883:
	dd	0x43340000
	align	4
_844:
	dd	_500
	dd	95
	dd	2
	align	4
_847:
	dd	_500
	dd	96
	dd	2
	align	4
_850:
	dd	3
	dd	0
	dd	0
	align	4
_849:
	dd	_500
	dd	96
	dd	37
	align	4
_851:
	dd	_500
	dd	97
	dd	2
	align	4
_854:
	dd	3
	dd	0
	dd	0
	align	4
_853:
	dd	_500
	dd	97
	dd	39
	align	4
_855:
	dd	_500
	dd	98
	dd	2
	align	4
_858:
	dd	3
	dd	0
	dd	0
	align	4
_857:
	dd	_500
	dd	98
	dd	19
	align	4
_859:
	dd	_500
	dd	99
	dd	2
_873:
	db	"CalcWinkel",0
	align	4
_872:
	dd	1
	dd	_873
	dd	2
	dd	_99
	dd	_100
	dd	-4
	dd	2
	dd	_101
	dd	_100
	dd	-8
	dd	2
	dd	_232
	dd	_100
	dd	-12
	dd	0
	align	4
_863:
	dd	_500
	dd	103
	dd	2
	align	4
_865:
	dd	_500
	dd	104
	dd	2
	align	4
_867:
	dd	3
	dd	0
	dd	0
	align	4
_866:
	dd	_500
	dd	105
	dd	3
	align	4
_1891:
	dd	0x43b40000
	align	4
_868:
	dd	_500
	dd	107
	dd	2
	align	4
_870:
	dd	3
	dd	0
	dd	0
	align	4
_869:
	dd	_500
	dd	108
	dd	3
	align	4
_1892:
	dd	0x43b40000
	align	4
_1893:
	dd	0x43b40000
	align	4
_871:
	dd	_500
	dd	110
	dd	2
_994:
	db	"waypointtodest",0
_995:
	db	"postition",0
_996:
	db	"ziel",0
_997:
	db	"foundwp",0
_998:
	db	"enf84",0
_999:
	db	"nr8",0
	align	4
_993:
	dd	1
	dd	_994
	dd	2
	dd	_995
	dd	_178
	dd	-4
	dd	2
	dd	_996
	dd	_178
	dd	-8
	dd	2
	dd	_997
	dd	_178
	dd	-12
	dd	2
	dd	_998
	dd	_100
	dd	-16
	dd	2
	dd	_999
	dd	_129
	dd	-20
	dd	0
	align	4
_874:
	dd	_500
	dd	114
	dd	2
	align	4
_876:
	dd	_500
	dd	116
	dd	2
_949:
	db	"eTwaypoint",0
	align	4
_948:
	dd	3
	dd	0
	dd	2
	dd	_949
	dd	_178
	dd	-24
	dd	0
	align	4
_886:
	dd	_500
	dd	117
	dd	3
	align	4
_890:
	dd	_500
	dd	118
	dd	3
	align	4
_894:
	dd	_500
	dd	119
	dd	3
_947:
	db	"nr3",0
	align	4
_946:
	dd	3
	dd	0
	dd	2
	dd	_947
	dd	_129
	dd	-28
	dd	0
	align	4
_898:
	dd	_500
	dd	120
	dd	4
	align	4
_902:
	dd	_500
	dd	121
	dd	4
	align	4
_904:
	dd	_500
	dd	122
	dd	4
_945:
	db	"entf55",0
	align	4
_944:
	dd	3
	dd	0
	dd	2
	dd	_945
	dd	_100
	dd	-32
	dd	0
	align	4
_922:
	dd	_500
	dd	123
	dd	5
	align	8
_1898:
	dd	0x0,0x40000000
	align	8
_1899:
	dd	0x0,0x40000000
	align	4
_936:
	dd	_500
	dd	124
	dd	5
	align	4
_943:
	dd	_500
	dd	125
	dd	5
	align	4
_950:
	dd	_500
	dd	130
	dd	2
	align	4
_953:
	dd	3
	dd	0
	dd	0
	align	4
_952:
	dd	_500
	dd	130
	dd	27
	align	4
_954:
	dd	_500
	dd	132
	dd	2
	align	4
_955:
	dd	_500
	dd	134
	dd	2
	align	4
_1900:
	dd	0x461c3c00
	align	4
_958:
	dd	_500
	dd	135
	dd	2
	align	4
_991:
	dd	3
	dd	0
	dd	0
	align	4
_976:
	dd	_500
	dd	136
	dd	3
	align	4
_990:
	dd	3
	dd	0
	dd	0
	align	4
_982:
	dd	_500
	dd	137
	dd	4
	align	4
_985:
	dd	_500
	dd	138
	dd	4
	align	4
_992:
	dd	_500
	dd	142
	dd	2
_1176:
	db	"wayray",0
_1177:
	db	"dian",0
_1178:
	db	"nr40",0
_1179:
	db	"enf844",0
_1180:
	db	"best",0
	align	4
_1175:
	dd	1
	dd	_1176
	dd	2
	dd	_996
	dd	_178
	dd	-4
	dd	2
	dd	_1177
	dd	_100
	dd	-8
	dd	2
	dd	_179
	dd	_180
	dd	-12
	dd	2
	dd	_1178
	dd	_129
	dd	-16
	dd	2
	dd	_1179
	dd	_100
	dd	-20
	dd	2
	dd	_1180
	dd	_129
	dd	-24
	dd	0
	align	4
_1000:
	dd	_500
	dd	146
	dd	2
	align	4
_1004:
	dd	_500
	dd	147
	dd	2
	align	4
_1010:
	dd	3
	dd	0
	dd	0
	align	4
_1006:
	dd	_500
	dd	147
	dd	19
	align	4
_1011:
	dd	_500
	dd	148
	dd	2
_1012:
	db	"f",0
	align	4
_1014:
	dd	_500
	dd	150
	dd	2
	align	4
_1016:
	dd	_500
	dd	151
	dd	2
	align	4
_1079:
	dd	3
	dd	0
	dd	0
	align	4
_1034:
	dd	_500
	dd	152
	dd	3
	align	4
_1077:
	dd	3
	dd	0
	dd	0
	align	4
_1045:
	dd	_500
	dd	153
	dd	4
	align	4
_1076:
	dd	3
	dd	0
	dd	0
	align	4
_1049:
	dd	_500
	dd	154
	dd	5
	align	4
_1060:
	dd	_500
	dd	155
	dd	5
	align	4
_1075:
	dd	3
	dd	0
	dd	0
	align	4
_1066:
	dd	_500
	dd	155
	dd	35
	align	4
_1078:
	dd	_500
	dd	158
	dd	3
	align	4
_1080:
	dd	_500
	dd	161
	dd	2
	align	4
_1941:
	dd	0x461c3c00
	align	4
_1083:
	dd	_500
	dd	162
	dd	2
_1100:
	db	"nr5",0
	align	4
_1099:
	dd	3
	dd	0
	dd	2
	dd	_1100
	dd	_129
	dd	-28
	dd	0
	align	4
_1086:
	dd	_500
	dd	163
	dd	3
	align	4
_1098:
	dd	3
	dd	0
	dd	0
	align	4
_1094:
	dd	_500
	dd	164
	dd	4
	align	4
_1095:
	dd	_500
	dd	165
	dd	4
	align	4
_1101:
	dd	_500
	dd	169
	dd	2
	align	4
_1102:
	dd	_500
	dd	170
	dd	2
	align	4
_1132:
	dd	3
	dd	0
	dd	0
	align	4
_1120:
	dd	_500
	dd	171
	dd	3
	align	4
_1130:
	dd	3
	dd	0
	dd	0
	align	4
_1122:
	dd	_500
	dd	172
	dd	4
	align	4
_1131:
	dd	_500
	dd	174
	dd	3
	align	4
_1133:
	dd	_500
	dd	177
	dd	2
	align	4
_1134:
	dd	_500
	dd	178
	dd	2
	align	4
_1171:
	dd	3
	dd	0
	dd	0
	align	4
_1152:
	dd	_500
	dd	179
	dd	3
	align	4
_1169:
	dd	3
	dd	0
	dd	0
	align	4
_1154:
	dd	_500
	dd	180
	dd	4
	align	4
_1168:
	dd	3
	dd	0
	dd	0
	align	4
_1160:
	dd	_500
	dd	180
	dd	34
	align	4
_1170:
	dd	_500
	dd	182
	dd	3
	align	4
_1172:
	dd	_500
	dd	185
	dd	2
_1372:
	db	"maptodest",0
_1373:
	db	"postitionx",0
_1374:
	db	"postitiony",0
_1375:
	db	"zielx",0
_1376:
	db	"ziely",0
_1377:
	db	"map",0
_1378:
	db	"[,]i",0
_1379:
	db	"mapx",0
_1380:
	db	"mapy",0
_1381:
	db	"mapdat",0
_1382:
	db	"[,,]i",0
_1383:
	db	"enf",0
_1384:
	db	"rig",0
	align	4
_1371:
	dd	1
	dd	_1372
	dd	2
	dd	_1373
	dd	_100
	dd	-4
	dd	2
	dd	_1374
	dd	_100
	dd	-8
	dd	2
	dd	_1375
	dd	_100
	dd	-12
	dd	2
	dd	_1376
	dd	_100
	dd	-16
	dd	5
	dd	_1377
	dd	_1378
	dd	-20
	dd	2
	dd	_1379
	dd	_129
	dd	-24
	dd	2
	dd	_1380
	dd	_129
	dd	-28
	dd	2
	dd	_997
	dd	_100
	dd	-32
	dd	2
	dd	_1381
	dd	_1382
	dd	-36
	dd	2
	dd	_1383
	dd	_100
	dd	-40
	dd	2
	dd	_1384
	dd	_129
	dd	-44
	dd	0
	align	4
_1181:
	dd	_500
	dd	192
	dd	2
	align	4
_2001:
	dd	0xbf800000
	align	4
_1183:
	dd	_500
	dd	194
	dd	2
_1184:
	db	"i",0
	align	4
_1186:
	dd	_500
	dd	196
	dd	2
	align	4
_1215:
	dd	3
	dd	0
	dd	2
	dd	_99
	dd	_129
	dd	-48
	dd	0
	align	4
_1190:
	dd	_500
	dd	197
	dd	3
	align	4
_1214:
	dd	3
	dd	0
	dd	2
	dd	_101
	dd	_129
	dd	-52
	dd	0
	align	4
_1194:
	dd	_500
	dd	198
	dd	4
	align	4
_1206:
	dd	_500
	dd	199
	dd	4
	align	4
_1216:
	dd	_500
	dd	203
	dd	2
	align	4
_1221:
	dd	3
	dd	0
	dd	0
	align	4
_1220:
	dd	_500
	dd	203
	dd	52
	align	4
_2002:
	dd	0xbf800000
	align	4
_1222:
	dd	_500
	dd	204
	dd	2
	align	4
_1225:
	dd	3
	dd	0
	dd	0
	align	4
_1224:
	dd	_500
	dd	204
	dd	26
	align	4
_2003:
	dd	0xbf800000
	align	4
_1226:
	dd	_500
	dd	205
	dd	2
	align	4
_1229:
	dd	3
	dd	0
	dd	0
	align	4
_1228:
	dd	_500
	dd	205
	dd	28
	align	4
_2004:
	dd	0xbf800000
	align	4
_1230:
	dd	_500
	dd	206
	dd	2
	align	4
_1233:
	dd	3
	dd	0
	dd	0
	align	4
_1232:
	dd	_500
	dd	206
	dd	26
	align	4
_2005:
	dd	0xbf800000
	align	4
_1234:
	dd	_500
	dd	207
	dd	2
	align	4
_1237:
	dd	3
	dd	0
	dd	0
	align	4
_1236:
	dd	_500
	dd	207
	dd	28
	align	4
_2006:
	dd	0xbf800000
	align	4
_1238:
	dd	_500
	dd	208
	dd	2
	align	4
_1241:
	dd	3
	dd	0
	dd	0
	align	4
_1240:
	dd	_500
	dd	208
	dd	21
	align	4
_2007:
	dd	0xbf800000
	align	4
_1242:
	dd	_500
	dd	209
	dd	2
	align	4
_1245:
	dd	3
	dd	0
	dd	0
	align	4
_1244:
	dd	_500
	dd	209
	dd	23
	align	4
_2008:
	dd	0xbf800000
	align	4
_1246:
	dd	_500
	dd	210
	dd	2
	align	4
_1249:
	dd	3
	dd	0
	dd	0
	align	4
_1248:
	dd	_500
	dd	210
	dd	21
	align	4
_2009:
	dd	0xbf800000
	align	4
_1250:
	dd	_500
	dd	211
	dd	2
	align	4
_1253:
	dd	3
	dd	0
	dd	0
	align	4
_1252:
	dd	_500
	dd	211
	dd	23
	align	4
_2010:
	dd	0xbf800000
	align	4
_1254:
	dd	_500
	dd	213
	dd	2
	align	4
_1262:
	dd	_500
	dd	215
	dd	2
	align	4
_1265:
	dd	_500
	dd	217
	dd	2
	align	4
_2011:
	dd	0x461c3c00
	align	4
_1268:
	dd	_500
	dd	218
	dd	2
	align	4
_1347:
	dd	3
	dd	0
	dd	2
	dd	_99
	dd	_129
	dd	-56
	dd	0
	align	4
_1271:
	dd	_500
	dd	219
	dd	3
	align	4
_1346:
	dd	3
	dd	0
	dd	2
	dd	_101
	dd	_129
	dd	-60
	dd	0
	align	4
_1274:
	dd	_500
	dd	220
	dd	4
	align	4
_1278:
	dd	3
	dd	0
	dd	0
	align	4
_1345:
	dd	3
	dd	0
	dd	0
	align	4
_1280:
	dd	_500
	dd	223
	dd	5
	align	4
_1285:
	dd	3
	dd	0
	dd	0
	align	4
_1284:
	dd	_500
	dd	223
	dd	31
	align	4
_1286:
	dd	_500
	dd	224
	dd	5
	align	4
_1291:
	dd	3
	dd	0
	dd	0
	align	4
_1290:
	dd	_500
	dd	224
	dd	30
	align	4
_1292:
	dd	_500
	dd	225
	dd	5
	align	4
_1297:
	dd	3
	dd	0
	dd	0
	align	4
_1296:
	dd	_500
	dd	225
	dd	30
	align	4
_1298:
	dd	_500
	dd	226
	dd	5
	align	4
_1303:
	dd	3
	dd	0
	dd	0
	align	4
_1302:
	dd	_500
	dd	226
	dd	30
	align	4
_1304:
	dd	_500
	dd	227
	dd	5
	align	4
_1309:
	dd	3
	dd	0
	dd	0
	align	4
_1308:
	dd	_500
	dd	227
	dd	29
	align	4
_1310:
	dd	_500
	dd	228
	dd	5
	align	4
_1315:
	dd	3
	dd	0
	dd	0
	align	4
_1314:
	dd	_500
	dd	228
	dd	30
	align	4
_1316:
	dd	_500
	dd	229
	dd	5
	align	4
_1321:
	dd	3
	dd	0
	dd	0
	align	4
_1320:
	dd	_500
	dd	229
	dd	29
	align	4
_1322:
	dd	_500
	dd	230
	dd	5
	align	4
_1327:
	dd	3
	dd	0
	dd	0
	align	4
_1326:
	dd	_500
	dd	230
	dd	29
	align	4
_1328:
	dd	_500
	dd	232
	dd	5
	align	4
_1344:
	dd	3
	dd	0
	dd	0
	align	4
_1336:
	dd	_500
	dd	233
	dd	6
	align	4
_1337:
	dd	_500
	dd	234
	dd	6
	align	4
_1348:
	dd	_500
	dd	240
	dd	2
	align	4
_1369:
	dd	3
	dd	0
	dd	2
	dd	_99
	dd	_129
	dd	-64
	dd	0
	align	4
_1352:
	dd	_500
	dd	241
	dd	3
	align	4
_1368:
	dd	3
	dd	0
	dd	2
	dd	_101
	dd	_129
	dd	-68
	dd	0
	align	4
_1356:
	dd	_500
	dd	242
	dd	4
	align	4
_1370:
	dd	_500
	dd	246
	dd	2
_1730:
	db	"mapray",0
	align	4
_1729:
	dd	1
	dd	_1730
	dd	2
	dd	_1375
	dd	_129
	dd	-4
	dd	2
	dd	_1376
	dd	_129
	dd	-8
	dd	5
	dd	_1377
	dd	_1382
	dd	-12
	dd	2
	dd	_1379
	dd	_129
	dd	-16
	dd	2
	dd	_1380
	dd	_129
	dd	-20
	dd	2
	dd	_1177
	dd	_100
	dd	-24
	dd	0
	align	4
_1385:
	dd	_500
	dd	251
	dd	2
	align	4
_1393:
	dd	_500
	dd	252
	dd	2
	align	4
_1728:
	dd	3
	dd	0
	dd	0
	align	4
_1401:
	dd	_500
	dd	253
	dd	3
	align	4
_1411:
	dd	3
	dd	0
	dd	0
	align	4
_1403:
	dd	_500
	dd	253
	dd	20
	align	4
_1412:
	dd	_500
	dd	255
	dd	3
	align	4
_1532:
	dd	3
	dd	0
	dd	2
	dd	_99
	dd	_129
	dd	-28
	dd	0
	align	4
_1415:
	dd	_500
	dd	256
	dd	4
	align	4
_1531:
	dd	3
	dd	0
	dd	2
	dd	_101
	dd	_129
	dd	-32
	dd	0
	align	4
_1418:
	dd	_500
	dd	257
	dd	5
	align	4
_1422:
	dd	3
	dd	0
	dd	0
_1530:
	db	"diagonalset",0
	align	4
_1529:
	dd	3
	dd	0
	dd	2
	dd	_1530
	dd	_100
	dd	-36
	dd	0
	align	4
_1424:
	dd	_500
	dd	260
	dd	6
	align	4
_1426:
	dd	_500
	dd	261
	dd	6
	align	4
_1431:
	dd	3
	dd	0
	dd	0
	align	4
_1430:
	dd	_500
	dd	261
	dd	32
	align	4
_1432:
	dd	_500
	dd	262
	dd	6
	align	4
_1437:
	dd	3
	dd	0
	dd	0
	align	4
_1436:
	dd	_500
	dd	262
	dd	31
	align	4
_1438:
	dd	_500
	dd	263
	dd	6
	align	4
_1443:
	dd	3
	dd	0
	dd	0
	align	4
_1442:
	dd	_500
	dd	263
	dd	31
	align	4
_1444:
	dd	_500
	dd	264
	dd	6
	align	4
_1449:
	dd	3
	dd	0
	dd	0
	align	4
_1448:
	dd	_500
	dd	264
	dd	31
	align	4
_1450:
	dd	_500
	dd	265
	dd	6
	align	4
_1455:
	dd	3
	dd	0
	dd	0
	align	4
_1454:
	dd	_500
	dd	265
	dd	30
	align	4
_1456:
	dd	_500
	dd	266
	dd	6
	align	4
_1461:
	dd	3
	dd	0
	dd	0
	align	4
_1460:
	dd	_500
	dd	266
	dd	31
	align	4
_1462:
	dd	_500
	dd	267
	dd	6
	align	4
_1467:
	dd	3
	dd	0
	dd	0
	align	4
_1466:
	dd	_500
	dd	267
	dd	30
	align	4
_1468:
	dd	_500
	dd	268
	dd	6
	align	4
_1473:
	dd	3
	dd	0
	dd	0
	align	4
_1472:
	dd	_500
	dd	268
	dd	30
	align	4
_1474:
	dd	_500
	dd	270
	dd	6
	align	4
_1499:
	dd	3
	dd	0
	dd	0
	align	4
_1482:
	dd	_500
	dd	271
	dd	7
	align	4
_1498:
	dd	3
	dd	0
	dd	0
	align	4
_1490:
	dd	_500
	dd	272
	dd	8
	align	4
_1500:
	dd	_500
	dd	275
	dd	6
	align	4
_1528:
	dd	3
	dd	0
	dd	0
	align	4
_1514:
	dd	_500
	dd	276
	dd	7
	align	4
_1533:
	dd	_500
	dd	282
	dd	3
	align	4
_1607:
	dd	3
	dd	0
	dd	2
	dd	_99
	dd	_129
	dd	-40
	dd	0
	align	4
_1536:
	dd	_500
	dd	283
	dd	4
	align	4
_1606:
	dd	3
	dd	0
	dd	2
	dd	_101
	dd	_129
	dd	-44
	dd	0
	align	4
_1539:
	dd	_500
	dd	284
	dd	5
	align	4
_1543:
	dd	3
	dd	0
	dd	0
	align	4
_1605:
	dd	3
	dd	0
	dd	2
	dd	_1530
	dd	_100
	dd	-48
	dd	0
	align	4
_1545:
	dd	_500
	dd	287
	dd	6
	align	4
_1547:
	dd	_500
	dd	288
	dd	6
	align	4
_1552:
	dd	3
	dd	0
	dd	0
	align	4
_1551:
	dd	_500
	dd	288
	dd	32
	align	4
_1553:
	dd	_500
	dd	289
	dd	6
	align	4
_1558:
	dd	3
	dd	0
	dd	0
	align	4
_1557:
	dd	_500
	dd	289
	dd	31
	align	4
_1559:
	dd	_500
	dd	290
	dd	6
	align	4
_1564:
	dd	3
	dd	0
	dd	0
	align	4
_1563:
	dd	_500
	dd	290
	dd	31
	align	4
_1565:
	dd	_500
	dd	291
	dd	6
	align	4
_1570:
	dd	3
	dd	0
	dd	0
	align	4
_1569:
	dd	_500
	dd	291
	dd	31
	align	4
_1571:
	dd	_500
	dd	292
	dd	6
	align	4
_1576:
	dd	3
	dd	0
	dd	0
	align	4
_1575:
	dd	_500
	dd	292
	dd	30
	align	4
_1577:
	dd	_500
	dd	293
	dd	6
	align	4
_1582:
	dd	3
	dd	0
	dd	0
	align	4
_1581:
	dd	_500
	dd	293
	dd	31
	align	4
_1583:
	dd	_500
	dd	294
	dd	6
	align	4
_1588:
	dd	3
	dd	0
	dd	0
	align	4
_1587:
	dd	_500
	dd	294
	dd	30
	align	4
_1589:
	dd	_500
	dd	295
	dd	6
	align	4
_1594:
	dd	3
	dd	0
	dd	0
	align	4
_1593:
	dd	_500
	dd	295
	dd	30
	align	4
_1595:
	dd	_500
	dd	297
	dd	6
	align	4
_1604:
	dd	3
	dd	0
	dd	0
	align	4
_1603:
	dd	_500
	dd	298
	dd	7
	align	4
_1608:
	dd	_500
	dd	304
	dd	3
	align	4
_1727:
	dd	3
	dd	0
	dd	2
	dd	_99
	dd	_129
	dd	-52
	dd	0
	align	4
_1611:
	dd	_500
	dd	305
	dd	4
	align	4
_1726:
	dd	3
	dd	0
	dd	2
	dd	_101
	dd	_129
	dd	-56
	dd	0
	align	4
_1614:
	dd	_500
	dd	306
	dd	5
	align	4
_1618:
	dd	3
	dd	0
	dd	0
	align	4
_1725:
	dd	3
	dd	0
	dd	2
	dd	_1530
	dd	_100
	dd	-60
	dd	0
	align	4
_1620:
	dd	_500
	dd	309
	dd	6
	align	4
_1622:
	dd	_500
	dd	310
	dd	6
	align	4
_1627:
	dd	3
	dd	0
	dd	0
	align	4
_1626:
	dd	_500
	dd	310
	dd	32
	align	4
_1628:
	dd	_500
	dd	311
	dd	6
	align	4
_1633:
	dd	3
	dd	0
	dd	0
	align	4
_1632:
	dd	_500
	dd	311
	dd	31
	align	4
_1634:
	dd	_500
	dd	312
	dd	6
	align	4
_1639:
	dd	3
	dd	0
	dd	0
	align	4
_1638:
	dd	_500
	dd	312
	dd	31
	align	4
_1640:
	dd	_500
	dd	313
	dd	6
	align	4
_1645:
	dd	3
	dd	0
	dd	0
	align	4
_1644:
	dd	_500
	dd	313
	dd	31
	align	4
_1646:
	dd	_500
	dd	314
	dd	6
	align	4
_1651:
	dd	3
	dd	0
	dd	0
	align	4
_1650:
	dd	_500
	dd	314
	dd	30
	align	4
_1652:
	dd	_500
	dd	315
	dd	6
	align	4
_1657:
	dd	3
	dd	0
	dd	0
	align	4
_1656:
	dd	_500
	dd	315
	dd	31
	align	4
_1658:
	dd	_500
	dd	316
	dd	6
	align	4
_1663:
	dd	3
	dd	0
	dd	0
	align	4
_1662:
	dd	_500
	dd	316
	dd	30
	align	4
_1664:
	dd	_500
	dd	317
	dd	6
	align	4
_1669:
	dd	3
	dd	0
	dd	0
	align	4
_1668:
	dd	_500
	dd	317
	dd	30
	align	4
_1670:
	dd	_500
	dd	319
	dd	6
	align	4
_1695:
	dd	3
	dd	0
	dd	0
	align	4
_1678:
	dd	_500
	dd	320
	dd	7
	align	4
_1694:
	dd	3
	dd	0
	dd	0
	align	4
_1686:
	dd	_500
	dd	321
	dd	8
	align	4
_1696:
	dd	_500
	dd	324
	dd	6
	align	4
_1724:
	dd	3
	dd	0
	dd	0
	align	4
_1710:
	dd	_500
	dd	325
	dd	7
