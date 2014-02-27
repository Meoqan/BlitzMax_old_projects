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
	extrn	___bb_wavloader_wavloader
	extrn	_bbATan2
	extrn	_bbAppTitle
	extrn	_bbArrayNew1D
	extrn	_bbCos
	extrn	_bbEmptyString
	extrn	_bbFloatPow
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
	extrn	_bbStringConcat
	extrn	_bbStringFromFloat
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_graphics_Flip
	extrn	_brl_graphics_Graphics
	extrn	_brl_linkedlist_CreateList
	extrn	_brl_max2d_Cls
	extrn	_brl_max2d_DrawImage
	extrn	_brl_max2d_DrawRect
	extrn	_brl_max2d_DrawText
	extrn	_brl_max2d_GetHandle
	extrn	_brl_max2d_GetRotation
	extrn	_brl_max2d_GetScale
	extrn	_brl_max2d_SetBlend
	extrn	_brl_max2d_SetClsColor
	extrn	_brl_max2d_SetColor
	extrn	_brl_max2d_SetHandle
	extrn	_brl_max2d_SetRotation
	extrn	_brl_max2d_SetScale
	extrn	_brl_polledinput_AppTerminate
	extrn	_brl_polledinput_KeyDown
	extrn	_brl_polledinput_KeyHit
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
	public	__bb_Tledp_Delete
	public	__bb_Tledp_New
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
	public	_bb_DrawPicture
	public	_bb_Drive
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
	public	_bb_Tledp
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
	public	_bb_firelist
	public	_bb_funkenlist
	public	_bb_glowlist
	public	_bb_graterlist
	public	_bb_ledplist
	public	_bb_maptexgrouplist
	public	_bb_maptexturlist
	public	_bb_motor_1000PS
	public	_bb_motor_100PS
	public	_bb_motor_400PS
	public	_bb_motor_500PS
	public	_bb_mudlist
	public	_bb_p1
	public	_bb_p1w
	public	_bb_p1x
	public	_bb_p1y
	public	_bb_player
	public	_bb_printlistlist
	public	_bb_sanddustlist
	public	_bb_smokelist
	public	_bb_spurlist
	public	_bb_texgrouplist
	public	_bb_texturlist
	public	_bb_tmr
	public	_bb_waypointlist
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,32
	push	ebx
	push	esi
	push	edi
	cmp	dword [_572],0
	je	_573
	mov	eax,0
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_573:
	mov	dword [_572],1
	mov	dword [ebp-4],_bbNullObject
	mov	dword [ebp-8],0
	mov	dword [ebp-12],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_538
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_glmax2d_glmax2d
	call	___bb_timer_timer
	call	___bb_random_random
	call	___bb_retro_retro
	call	___bb_audio_audio
	call	___bb_wavloader_wavloader
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
	push	_bb_Tledp
	call	_bbObjectRegisterType
	add	esp,4
	push	_326
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_18
	inc	dword [ebx+4]
	mov	eax,dword [_bbAppTitle]
	dec	dword [eax+4]
	jnz	_331
	push	eax
	call	_bbGCFree
	add	esp,4
_331:
	mov	dword [_bbAppTitle],ebx
	push	_332
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	60
	push	0
	push	768
	push	1024
	call	_brl_graphics_Graphics
	add	esp,20
	push	_333
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	3
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_334
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_337]
	and	eax,1
	cmp	eax,0
	jne	_338
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_smokelist],eax
	or	dword [_337],1
_338:
	push	_339
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_337]
	and	eax,2
	cmp	eax,0
	jne	_341
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_mudlist],eax
	or	dword [_337],2
_341:
	push	_342
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_337]
	and	eax,4
	cmp	eax,0
	jne	_344
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_sanddustlist],eax
	or	dword [_337],4
_344:
	push	_345
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_337]
	and	eax,8
	cmp	eax,0
	jne	_347
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_firelist],eax
	or	dword [_337],8
_347:
	push	_348
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_337]
	and	eax,16
	cmp	eax,0
	jne	_350
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_funkenlist],eax
	or	dword [_337],16
_350:
	push	_351
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_337]
	and	eax,32
	cmp	eax,0
	jne	_353
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_spurlist],eax
	or	dword [_337],32
_353:
	push	_354
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_337]
	and	eax,64
	cmp	eax,0
	jne	_356
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_graterlist],eax
	or	dword [_337],64
_356:
	push	_357
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_337]
	and	eax,128
	cmp	eax,0
	jne	_359
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_Schussliste],eax
	or	dword [_337],128
_359:
	push	_360
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_337]
	and	eax,256
	cmp	eax,0
	jne	_362
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_texturlist],eax
	or	dword [_337],256
_362:
	push	_363
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_337]
	and	eax,512
	cmp	eax,0
	jne	_365
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_maptexturlist],eax
	or	dword [_337],512
_365:
	push	_366
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_337]
	and	eax,1024
	cmp	eax,0
	jne	_368
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_texgrouplist],eax
	or	dword [_337],1024
_368:
	push	_369
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_337]
	and	eax,2048
	cmp	eax,0
	jne	_371
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_maptexgrouplist],eax
	or	dword [_337],2048
_371:
	push	_372
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_337]
	and	eax,4096
	cmp	eax,0
	jne	_374
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_waypointlist],eax
	or	dword [_337],4096
_374:
	push	_375
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_337]
	and	eax,8192
	cmp	eax,0
	jne	_377
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_printlistlist],eax
	or	dword [_337],8192
_377:
	push	_378
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_337]
	and	eax,16384
	cmp	eax,0
	jne	_380
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_actionlist],eax
	or	dword [_337],16384
_380:
	push	_381
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_337]
	and	eax,32768
	cmp	eax,0
	jne	_383
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_botlist],eax
	or	dword [_337],32768
_383:
	push	_384
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_337]
	and	eax,65536
	cmp	eax,0
	jne	_386
	push	_bb_Tplayer
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_player],eax
	or	dword [_337],65536
_386:
	push	_387
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_337]
	and	eax,131072
	cmp	eax,0
	jne	_389
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_glowlist],eax
	or	dword [_337],131072
_389:
	push	_390
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_337]
	and	eax,262144
	cmp	eax,0
	jne	_393
	push	_bb_Tdrive
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_motor_100PS],eax
	or	dword [_337],262144
_393:
	push	_394
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_motor_100PS]
	cmp	ebx,_bbNullObject
	jne	_396
	call	_brl_blitz_NullObjectError
_396:
	fld	dword [_944]
	fstp	dword [ebx+12]
	push	_398
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_motor_100PS]
	cmp	ebx,_bbNullObject
	jne	_400
	call	_brl_blitz_NullObjectError
_400:
	fld	dword [_945]
	fstp	dword [ebx+8]
	push	_402
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_337]
	and	eax,524288
	cmp	eax,0
	jne	_404
	push	_bb_Tdrive
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_motor_400PS],eax
	or	dword [_337],524288
_404:
	push	_405
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_motor_400PS]
	cmp	ebx,_bbNullObject
	jne	_407
	call	_brl_blitz_NullObjectError
_407:
	fld	dword [_946]
	fstp	dword [ebx+12]
	push	_409
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_motor_400PS]
	cmp	ebx,_bbNullObject
	jne	_411
	call	_brl_blitz_NullObjectError
_411:
	fld	dword [_947]
	fstp	dword [ebx+8]
	push	_413
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_337]
	and	eax,1048576
	cmp	eax,0
	jne	_415
	push	_bb_Tdrive
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_motor_500PS],eax
	or	dword [_337],1048576
_415:
	push	_416
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_motor_500PS]
	cmp	ebx,_bbNullObject
	jne	_418
	call	_brl_blitz_NullObjectError
_418:
	fld	dword [_948]
	fstp	dword [ebx+12]
	push	_420
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_motor_500PS]
	cmp	ebx,_bbNullObject
	jne	_422
	call	_brl_blitz_NullObjectError
_422:
	fld	dword [_949]
	fstp	dword [ebx+8]
	push	_424
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_337]
	and	eax,2097152
	cmp	eax,0
	jne	_426
	push	_bb_Tdrive
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_motor_1000PS],eax
	or	dword [_337],2097152
_426:
	push	_427
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_motor_1000PS]
	cmp	ebx,_bbNullObject
	jne	_429
	call	_brl_blitz_NullObjectError
_429:
	fld	dword [_950]
	fstp	dword [ebx+12]
	push	_431
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_motor_1000PS]
	cmp	ebx,_bbNullObject
	jne	_433
	call	_brl_blitz_NullObjectError
_433:
	fld	dword [_951]
	fstp	dword [ebx+8]
	push	_435
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	call	_brl_max2d_SetClsColor
	add	esp,12
	push	_436
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_337]
	and	eax,4194304
	cmp	eax,0
	jne	_438
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_ledplist],eax
	or	dword [_337],4194304
_438:
	push	_439
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_337]
	and	eax,8388608
	cmp	eax,0
	jne	_441
	push	_bb_Tengine
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_p1],eax
	or	dword [_337],8388608
_441:
	push	_442
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_443
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_337]
	and	eax,16777216
	cmp	eax,0
	jne	_445
	push	_bbNullObject
	push	1109393408
	call	_brl_timer_CreateTimer
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_tmr],eax
	or	dword [_337],16777216
_445:
	push	_446
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_24
_26:
	mov	eax,ebp
	push	eax
	push	_535
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_449
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_tmr]
	cmp	ebx,_bbNullObject
	jne	_451
	call	_brl_blitz_NullObjectError
_451:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	_452
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_453
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_454
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_Tledp
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-4],eax
	push	_456
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_ledplist]
	cmp	ebx,_bbNullObject
	jne	_458
	call	_brl_blitz_NullObjectError
_458:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_459
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_motor_400PS]
	push	0
	push	dword [_bb_p1]
	push	83
	call	_brl_polledinput_KeyDown
	add	esp,4
	push	eax
	push	87
	call	_brl_polledinput_KeyDown
	add	esp,4
	push	eax
	call	_bb_Drive
	add	esp,20
	push	_460
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_462
	call	_brl_blitz_NullObjectError
_462:
	mov	esi,dword [_bb_p1]
	cmp	esi,_bbNullObject
	jne	_465
	call	_brl_blitz_NullObjectError
_465:
	fld	dword [esi+16]
	fstp	dword [ebx+8]
	push	_466
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_468
	call	_brl_blitz_NullObjectError
_468:
	mov	esi,dword [_bb_p1]
	cmp	esi,_bbNullObject
	jne	_471
	call	_brl_blitz_NullObjectError
_471:
	fld	dword [esi+8]
	fstp	dword [ebx+12]
	push	_472
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_474
	call	_brl_blitz_NullObjectError
_474:
	mov	esi,dword [_bb_p1]
	cmp	esi,_bbNullObject
	jne	_477
	call	_brl_blitz_NullObjectError
_477:
	fld	dword [esi+12]
	fdiv	dword [_952]
	fstp	dword [ebx+16]
	push	_478
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_ledplist]
	cmp	ebx,_bbNullObject
	jne	_480
	call	_brl_blitz_NullObjectError
_480:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+112]
	add	esp,4
	mov	dword [ebp-8],eax
	push	_482
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbNullObject
	mov	edi,dword [_bb_ledplist]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_486
	call	_brl_blitz_NullObjectError
_486:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_27
_29:
	cmp	ebx,_bbNullObject
	jne	_491
	call	_brl_blitz_NullObjectError
_491:
	push	_bb_Tledp
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-12],eax
	cmp	dword [ebp-12],_bbNullObject
	je	_27
	mov	eax,ebp
	push	eax
	push	_511
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_492
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	sub	dword [ebp-8],1
	push	_493
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-8],0
	jge	_494
	mov	eax,ebp
	push	eax
	push	_498
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_495
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_bb_ledplist]
	cmp	esi,_bbNullObject
	jne	_497
	call	_brl_blitz_NullObjectError
_497:
	push	dword [ebp-12]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+116]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_494:
	push	_499
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_500
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_502
	call	_brl_blitz_NullObjectError
_502:
	push	1073741824
	push	1073741824
	fld	dword [_953]
	fsub	dword [esi+8]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-32],eax
	fild	dword [ebp+-32]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_503
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_504
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_506
	call	_brl_blitz_NullObjectError
_506:
	push	1073741824
	push	1073741824
	fld	dword [_954]
	fld	dword [esi+12]
	fdiv	dword [_955]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-32],eax
	fild	dword [ebp+-32]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_507
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	255
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	_508
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_510
	call	_brl_blitz_NullObjectError
_510:
	push	1073741824
	push	1073741824
	fld	dword [_956]
	fsub	dword [esi+16]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-32],eax
	fild	dword [ebp+-32]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	call	dword [_bbOnDebugLeaveScope]
_27:
	cmp	ebx,_bbNullObject
	jne	_489
	call	_brl_blitz_NullObjectError
_489:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_29
_28:
	push	_514
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	65
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_515
	mov	eax,ebp
	push	eax
	push	_517
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_516
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_p1w]
	fsub	dword [_957]
	fstp	dword [_bb_p1w]
	call	dword [_bbOnDebugLeaveScope]
_515:
	push	_518
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	68
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_519
	mov	eax,ebp
	push	eax
	push	_521
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_520
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_p1w]
	fadd	dword [_958]
	fstp	dword [_bb_p1w]
	call	dword [_bbOnDebugLeaveScope]
_519:
	push	_522
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_p1]
	cmp	ebx,_bbNullObject
	jne	_524
	call	_brl_blitz_NullObjectError
_524:
	fld	dword [_bb_p1x]
	fstp	qword [ebp-20]
	fld	dword [_bb_p1w]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	dword [ebx+16]
	fdiv	dword [_959]
	fmulp	st1,st0
	fld	qword [ebp-20]
	faddp	st1,st0
	fstp	qword [ebp-20]
	fld	qword [ebp-20]
	fstp	dword [_bb_p1x]
	push	_525
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_p1]
	cmp	ebx,_bbNullObject
	jne	_527
	call	_brl_blitz_NullObjectError
_527:
	fld	dword [_bb_p1y]
	fstp	qword [ebp-28]
	fld	dword [_bb_p1w]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	dword [ebx+16]
	fdiv	dword [_960]
	fmulp	st1,st0
	fld	qword [ebp-28]
	faddp	st1,st0
	fstp	qword [ebp-28]
	fld	qword [ebp-28]
	fstp	dword [_bb_p1y]
	push	_528
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	_529
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_p1w]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_530
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1101004800
	push	1103626240
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_531
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1109393408
	push	1112014848
	push	dword [_bb_p1y]
	push	dword [_bb_p1x]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_532
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_533
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_534
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_24:
	push	27
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	jne	_447
	call	_brl_polledinput_AppTerminate
_447:
	cmp	eax,0
	je	_26
_25:
	mov	ebx,0
	jmp	_202
_202:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
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
	push	_575
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
	fld	dword [_1020]
	fstp	dword [eax+36]
	push	ebp
	push	_574
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_205
_205:
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
_208:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_578
_578:
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
	push	_580
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
	push	_579
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_211
_211:
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
_214:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_582
_582:
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
	push	_584
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
	fld	dword [_1029]
	fstp	dword [eax+40]
	push	ebp
	push	_583
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_217
_217:
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
_220:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_586
_586:
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
	push	_588
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
	fld	dword [_1034]
	fstp	dword [eax+44]
	push	ebp
	push	_587
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_223
_223:
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
_226:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_590
_590:
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
	push	_592
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
	push	_591
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_229
_229:
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
_232:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_594
_594:
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
	push	_596
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
	fld	dword [_1043]
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
	push	_595
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_235
_235:
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
_238:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_598
_598:
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
	push	_600
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
	fld	dword [_1048]
	fstp	dword [eax+20]
	mov	eax,dword [ebp-4]
	mov	byte [eax+24],0
	mov	eax,dword [ebp-4]
	fld1
	fstp	dword [eax+28]
	push	ebp
	push	_599
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_241
_241:
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
_244:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_602
_602:
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
	push	_605
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
	push	_604
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_247
_247:
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
_250:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_609
	push	eax
	call	_bbGCFree
	add	esp,4
_609:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_607
_607:
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
	push	_621
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Ttextur
	push	8
	push	_610
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
	push	_620
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_253
_253:
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
_256:
	mov	eax,dword [ebx+60]
	dec	dword [eax+4]
	jnz	_624
	push	eax
	call	_bbGCFree
	add	esp,4
_624:
	mov	eax,dword [ebx+56]
	dec	dword [eax+4]
	jnz	_626
	push	eax
	call	_bbGCFree
	add	esp,4
_626:
	mov	eax,dword [ebx+52]
	dec	dword [eax+4]
	jnz	_628
	push	eax
	call	_bbGCFree
	add	esp,4
_628:
	mov	eax,dword [ebx+40]
	dec	dword [eax+4]
	jnz	_630
	push	eax
	call	_bbGCFree
	add	esp,4
_630:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_632
	push	eax
	call	_bbGCFree
	add	esp,4
_632:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_634
	push	eax
	call	_bbGCFree
	add	esp,4
_634:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_636
	push	eax
	call	_bbGCFree
	add	esp,4
_636:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_638
	push	eax
	call	_bbGCFree
	add	esp,4
_638:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_640
	push	eax
	call	_bbGCFree
	add	esp,4
_640:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_622
_622:
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
	push	_645
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
	push	_644
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_259
_259:
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
_262:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_649
	push	eax
	call	_bbGCFree
	add	esp,4
_649:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_651
	push	eax
	call	_bbGCFree
	add	esp,4
_651:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_653
	push	eax
	call	_bbGCFree
	add	esp,4
_653:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_647
_647:
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
	push	_665
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
	push	_657
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
	push	_660
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+52],eax
	push	20
	push	_662
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+56],eax
	push	ebp
	push	_664
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_265
_265:
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
_268:
	mov	eax,dword [ebx+56]
	dec	dword [eax+4]
	jnz	_668
	push	eax
	call	_bbGCFree
	add	esp,4
_668:
	mov	eax,dword [ebx+52]
	dec	dword [eax+4]
	jnz	_670
	push	eax
	call	_bbGCFree
	add	esp,4
_670:
	mov	eax,dword [ebx+48]
	dec	dword [eax+4]
	jnz	_672
	push	eax
	call	_bbGCFree
	add	esp,4
_672:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_674
	push	eax
	call	_bbGCFree
	add	esp,4
_674:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_676
	push	eax
	call	_bbGCFree
	add	esp,4
_676:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_678
	push	eax
	call	_bbGCFree
	add	esp,4
_678:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_680
	push	eax
	call	_bbGCFree
	add	esp,4
_680:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_666
_666:
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
	push	_683
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
	push	_682
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_271
_271:
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
_274:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_686
	push	eax
	call	_bbGCFree
	add	esp,4
_686:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_684
_684:
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
	push	_692
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
	fld	dword [_1073]
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
	push	_691
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_277
_277:
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
_280:
	mov	eax,dword [ebx+124]
	dec	dword [eax+4]
	jnz	_695
	push	eax
	call	_bbGCFree
	add	esp,4
_695:
	mov	eax,dword [ebx+120]
	dec	dword [eax+4]
	jnz	_697
	push	eax
	call	_bbGCFree
	add	esp,4
_697:
	mov	eax,dword [ebx+108]
	dec	dword [eax+4]
	jnz	_699
	push	eax
	call	_bbGCFree
	add	esp,4
_699:
	mov	eax,dword [ebx+104]
	dec	dword [eax+4]
	jnz	_701
	push	eax
	call	_bbGCFree
	add	esp,4
_701:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_693
_693:
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
	push	_705
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
	push	_704
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_283
_283:
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
_286:
	mov	eax,dword [ebx+116]
	dec	dword [eax+4]
	jnz	_708
	push	eax
	call	_bbGCFree
	add	esp,4
_708:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_710
	push	eax
	call	_bbGCFree
	add	esp,4
_710:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_706
_706:
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
	push	_712
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
	push	_711
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_289
_289:
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
_292:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_714
_714:
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
	push	_716
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
	push	_715
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_295
_295:
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
_298:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_717
_717:
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
	push	_719
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
	push	ebp
	push	_718
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_301
_301:
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
_304:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_720
_720:
	mov	esp,ebp
	pop	ebp
	ret
_bb_Drive:
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
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	eax,dword [ebp+24]
	mov	dword [ebp-20],eax
	fldz
	fstp	dword [ebp-24]
	fldz
	fstp	dword [ebp-28]
	fldz
	fstp	dword [ebp-32]
	mov	eax,ebp
	push	eax
	push	_893
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_721
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_723
	call	_brl_blitz_NullObjectError
_723:
	cmp	dword [ebx+20],1
	jne	_724
	mov	eax,ebp
	push	eax
	push	_737
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_725
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-4],0
	je	_726
	mov	eax,ebp
	push	eax
	push	_727
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_728
_726:
	mov	eax,ebp
	push	eax
	push	_736
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_729
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-8],0
	je	_730
	mov	eax,ebp
	push	eax
	push	_735
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_731
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_733
	call	_brl_blitz_NullObjectError
_733:
	mov	dword [ebx+20],0
	call	dword [_bbOnDebugLeaveScope]
_730:
	call	dword [_bbOnDebugLeaveScope]
_728:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_738
_724:
	mov	eax,ebp
	push	eax
	push	_763
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_739
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_741
	call	_brl_blitz_NullObjectError
_741:
	cmp	dword [ebx+20],0
	jne	_742
	mov	eax,ebp
	push	eax
	push	_755
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_743
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-4],0
	je	_744
	mov	eax,ebp
	push	eax
	push	_754
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_745
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_747
	call	_brl_blitz_NullObjectError
_747:
	fld	dword [ebx+8]
	fld	dword [_1094]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_748
	mov	eax,ebp
	push	eax
	push	_753
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_749
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_751
	call	_brl_blitz_NullObjectError
_751:
	mov	dword [ebx+20],1
	call	dword [_bbOnDebugLeaveScope]
_748:
	call	dword [_bbOnDebugLeaveScope]
_744:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_756
_742:
	mov	eax,ebp
	push	eax
	push	_762
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_757
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_759
	call	_brl_blitz_NullObjectError
_759:
	cmp	dword [ebx+20],-1
	jne	_760
	mov	eax,ebp
	push	eax
	push	_761
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_760:
	call	dword [_bbOnDebugLeaveScope]
_756:
	call	dword [_bbOnDebugLeaveScope]
_738:
	push	_764
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-4],0
	je	_765
	mov	eax,ebp
	push	eax
	push	_801
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_766
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_768
	call	_brl_blitz_NullObjectError
_768:
	cmp	dword [ebx+20],0
	jne	_769
	mov	eax,ebp
	push	eax
	push	_784
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_770
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_772
	call	_brl_blitz_NullObjectError
_772:
	mov	dword [ebp-64],ebx
	mov	eax,dword [ebp-12]
	mov	dword [ebp-52],eax
	cmp	dword [ebp-52],_bbNullObject
	jne	_775
	call	_brl_blitz_NullObjectError
_775:
	mov	eax,dword [ebp-20]
	mov	dword [ebp-36],eax
	cmp	dword [ebp-36],_bbNullObject
	jne	_777
	call	_brl_blitz_NullObjectError
_777:
	mov	edi,dword [ebp-12]
	cmp	edi,_bbNullObject
	jne	_779
	call	_brl_blitz_NullObjectError
_779:
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_781
	call	_brl_blitz_NullObjectError
_781:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_783
	call	_brl_blitz_NullObjectError
_783:
	mov	eax,dword [ebp-52]
	fld	dword [eax+8]
	mov	eax,dword [ebp-36]
	fld	dword [eax+8]
	fsub	dword [edi+8]
	fld	dword [_1095]
	fld	dword [esi+8]
	fsub	dword [ebx+8]
	fdiv	dword [_1096]
	faddp	st1,st0
	fdivp	st1,st0
	faddp	st1,st0
	mov	eax,dword [ebp-64]
	fstp	dword [eax+8]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_785
_769:
	mov	eax,ebp
	push	eax
	push	_800
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_786
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_788
	call	_brl_blitz_NullObjectError
_788:
	mov	dword [ebp-68],ebx
	mov	eax,dword [ebp-12]
	mov	dword [ebp-56],eax
	cmp	dword [ebp-56],_bbNullObject
	jne	_791
	call	_brl_blitz_NullObjectError
_791:
	mov	eax,dword [ebp-20]
	mov	dword [ebp-40],eax
	cmp	dword [ebp-40],_bbNullObject
	jne	_793
	call	_brl_blitz_NullObjectError
_793:
	mov	edi,dword [ebp-12]
	cmp	edi,_bbNullObject
	jne	_795
	call	_brl_blitz_NullObjectError
_795:
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_797
	call	_brl_blitz_NullObjectError
_797:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_799
	call	_brl_blitz_NullObjectError
_799:
	mov	eax,dword [ebp-56]
	fld	dword [eax+8]
	mov	eax,dword [ebp-40]
	fld	dword [eax+8]
	fsub	dword [edi+8]
	fld	dword [_1097]
	fld	dword [esi+8]
	fsub	dword [ebx+8]
	fdiv	dword [_1098]
	faddp	st1,st0
	fdivp	st1,st0
	faddp	st1,st0
	mov	eax,dword [ebp-68]
	fstp	dword [eax+8]
	call	dword [_bbOnDebugLeaveScope]
_785:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_802
_765:
	mov	eax,ebp
	push	eax
	push	_817
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_803
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_805
	call	_brl_blitz_NullObjectError
_805:
	mov	dword [ebp-72],ebx
	mov	eax,dword [ebp-12]
	mov	dword [ebp-60],eax
	cmp	dword [ebp-60],_bbNullObject
	jne	_808
	call	_brl_blitz_NullObjectError
_808:
	mov	eax,dword [ebp-20]
	mov	dword [ebp-44],eax
	cmp	dword [ebp-44],_bbNullObject
	jne	_810
	call	_brl_blitz_NullObjectError
_810:
	mov	edi,dword [ebp-12]
	cmp	edi,_bbNullObject
	jne	_812
	call	_brl_blitz_NullObjectError
_812:
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_814
	call	_brl_blitz_NullObjectError
_814:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_816
	call	_brl_blitz_NullObjectError
_816:
	mov	eax,dword [ebp-60]
	fld	dword [eax+8]
	mov	eax,dword [ebp-44]
	fld	dword [eax+8]
	fsub	dword [edi+8]
	fld	dword [_1099]
	fld	dword [esi+8]
	fsub	dword [ebx+8]
	fdiv	dword [_1100]
	faddp	st1,st0
	fdivp	st1,st0
	fsubp	st1,st0
	fsub	dword [_1101]
	mov	eax,dword [ebp-72]
	fstp	dword [eax+8]
	call	dword [_bbOnDebugLeaveScope]
_802:
	push	_818
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_820
	call	_brl_blitz_NullObjectError
_820:
	fld	dword [ebx+8]
	fld	dword [_1102]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_821
	mov	eax,ebp
	push	eax
	push	_826
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_822
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_824
	call	_brl_blitz_NullObjectError
_824:
	fld	dword [_1103]
	fstp	dword [ebx+8]
	call	dword [_bbOnDebugLeaveScope]
_821:
	push	_827
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_829
	call	_brl_blitz_NullObjectError
_829:
	mov	dword [ebp-48],ebx
	mov	edi,dword [ebp-20]
	cmp	edi,_bbNullObject
	jne	_832
	call	_brl_blitz_NullObjectError
_832:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_834
	call	_brl_blitz_NullObjectError
_834:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_836
	call	_brl_blitz_NullObjectError
_836:
	fld	dword [edi+12]
	fdiv	dword [esi+8]
	fmul	dword [ebx+8]
	mov	eax,dword [ebp-48]
	fstp	dword [eax+12]
	push	_837
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_839
	call	_brl_blitz_NullObjectError
_839:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_841
	call	_brl_blitz_NullObjectError
_841:
	fld	dword [esi+12]
	fld	qword [_1104]
	fld	dword [ebx+8]
	fdiv	dword [_1105]
	fmulp	st1,st0
	fmulp	st1,st0
	fstp	dword [ebp-24]
	push	_843
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1106]
	fstp	dword [ebp-28]
	push	_845
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1107]
	fstp	dword [ebp-32]
	push	_847
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-8],0
	je	_848
	mov	eax,ebp
	push	eax
	push	_850
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_849
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1108]
	fstp	dword [ebp-32]
	call	dword [_bbOnDebugLeaveScope]
_848:
	push	_851
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_853
	call	_brl_blitz_NullObjectError
_853:
	mov	edi,ebx
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_856
	call	_brl_blitz_NullObjectError
_856:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_858
	call	_brl_blitz_NullObjectError
_858:
	fld	dword [esi+16]
	fld	dword [ebp-24]
	fdiv	dword [ebp-28]
	fld	dword [_1109]
	fld	dword [ebx+16]
	fchs
	fdiv	dword [_1110]
	faddp	st1,st0
	fdivp	st1,st0
	faddp	st1,st0
	fstp	dword [edi+16]
	push	_859
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_861
	call	_brl_blitz_NullObjectError
_861:
	cmp	dword [ebx+20],0
	jne	_862
	mov	eax,ebp
	push	eax
	push	_871
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_863
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_865
	call	_brl_blitz_NullObjectError
_865:
	mov	edi,ebx
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_868
	call	_brl_blitz_NullObjectError
_868:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_870
	call	_brl_blitz_NullObjectError
_870:
	fld	dword [esi+16]
	fld	dword [ebp-32]
	fmul	dword [ebp-28]
	fld	dword [ebx+16]
	fdiv	dword [_1111]
	fmulp	st1,st0
	fsubp	st1,st0
	fstp	dword [edi+16]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_872
_862:
	mov	eax,ebp
	push	eax
	push	_881
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_873
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_875
	call	_brl_blitz_NullObjectError
_875:
	mov	edi,ebx
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_878
	call	_brl_blitz_NullObjectError
_878:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_880
	call	_brl_blitz_NullObjectError
_880:
	fld	dword [esi+16]
	fld	dword [ebp-32]
	fmul	dword [ebp-28]
	fld	dword [ebx+16]
	fdiv	dword [_1112]
	fmulp	st1,st0
	fsubp	st1,st0
	fstp	dword [edi+16]
	call	dword [_bbOnDebugLeaveScope]
_872:
	push	_882
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1092616192
	push	1092616192
	push	dword [ebp-24]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_19
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_883
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1106247680
	push	1092616192
	fld	dword [ebp-24]
	fdiv	dword [ebp-28]
	sub	esp,4
	fstp	dword [esp]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_20
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_884
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_886
	call	_brl_blitz_NullObjectError
_886:
	push	1112014848
	push	1092616192
	fld	dword [ebx+16]
	fdiv	dword [_1113]
	sub	esp,4
	fstp	dword [esp]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_21
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_887
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_889
	call	_brl_blitz_NullObjectError
_889:
	push	1116471296
	push	1092616192
	push	dword [ebx+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_22
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_890
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_892
	call	_brl_blitz_NullObjectError
_892:
	push	1119092736
	push	1092616192
	push	dword [ebx+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_23
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	mov	ebx,0
	jmp	_311
_311:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tledp_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_904
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Tledp
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+8]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+12]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+16]
	push	ebp
	push	_903
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_314
_314:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tledp_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_317:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_905
_905:
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
	push	_931
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_906
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-24]
	push	_908
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-28]
	push	_910
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	eax,dword [ebp-28]
	push	eax
	lea	eax,dword [ebp-24]
	push	eax
	call	_brl_max2d_GetScale
	add	esp,8
	push	_911
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-32]
	push	_913
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-36]
	push	_915
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	eax,dword [ebp-36]
	push	eax
	lea	eax,dword [ebp-32]
	push	eax
	call	_brl_max2d_GetHandle
	add	esp,8
	push	_916
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_918
	call	_brl_blitz_NullObjectError
_918:
	fld	dword [ebp-16]
	mov	eax,dword [ebx+8]
	mov	dword [ebp+-80],eax
	fild	dword [ebp+-80]
	fdivp	st1,st0
	fstp	dword [ebp-40]
	push	_920
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_922
	call	_brl_blitz_NullObjectError
_922:
	fld	dword [ebp-20]
	mov	eax,dword [ebx+12]
	mov	dword [ebp+-80],eax
	fild	dword [ebp+-80]
	fdivp	st1,st0
	fstp	dword [ebp-44]
	push	_924
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
	push	_925
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_1178]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-60]
	fld	qword [_1179]
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
	push	_927
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
	fld	qword [_1180]
	faddp	st1,st0
	fstp	dword [ebp-52]
	push	_929
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
	push	_930
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-28]
	push	dword [ebp-24]
	call	_brl_max2d_SetScale
	add	esp,8
	mov	ebx,0
	jmp	_324
_324:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_572:
	dd	0
_539:
	db	"testlap_Drive",0
_540:
	db	"smokelist",0
_85:
	db	":brl.linkedlist.TList",0
	align	4
_bb_smokelist:
	dd	_bbNullObject
_541:
	db	"mudlist",0
	align	4
_bb_mudlist:
	dd	_bbNullObject
_542:
	db	"sanddustlist",0
	align	4
_bb_sanddustlist:
	dd	_bbNullObject
_543:
	db	"firelist",0
	align	4
_bb_firelist:
	dd	_bbNullObject
_544:
	db	"funkenlist",0
	align	4
_bb_funkenlist:
	dd	_bbNullObject
_545:
	db	"spurlist",0
	align	4
_bb_spurlist:
	dd	_bbNullObject
_546:
	db	"graterlist",0
	align	4
_bb_graterlist:
	dd	_bbNullObject
_547:
	db	"Schussliste",0
	align	4
_bb_Schussliste:
	dd	_bbNullObject
_548:
	db	"texturlist",0
	align	4
_bb_texturlist:
	dd	_bbNullObject
_549:
	db	"maptexturlist",0
	align	4
_bb_maptexturlist:
	dd	_bbNullObject
_550:
	db	"texgrouplist",0
	align	4
_bb_texgrouplist:
	dd	_bbNullObject
_551:
	db	"maptexgrouplist",0
	align	4
_bb_maptexgrouplist:
	dd	_bbNullObject
_552:
	db	"waypointlist",0
	align	4
_bb_waypointlist:
	dd	_bbNullObject
_553:
	db	"printlistlist",0
	align	4
_bb_printlistlist:
	dd	_bbNullObject
_554:
	db	"actionlist",0
	align	4
_bb_actionlist:
	dd	_bbNullObject
_555:
	db	"botlist",0
	align	4
_bb_botlist:
	dd	_bbNullObject
_556:
	db	"player",0
_557:
	db	":Tplayer",0
	align	4
_bb_player:
	dd	_bbNullObject
_558:
	db	"glowlist",0
	align	4
_bb_glowlist:
	dd	_bbNullObject
_559:
	db	"motor_100PS",0
_560:
	db	":Tdrive",0
	align	4
_bb_motor_100PS:
	dd	_bbNullObject
_561:
	db	"motor_400PS",0
	align	4
_bb_motor_400PS:
	dd	_bbNullObject
_562:
	db	"motor_500PS",0
	align	4
_bb_motor_500PS:
	dd	_bbNullObject
_563:
	db	"motor_1000PS",0
	align	4
_bb_motor_1000PS:
	dd	_bbNullObject
_564:
	db	"ledplist",0
	align	4
_bb_ledplist:
	dd	_bbNullObject
_565:
	db	"p1",0
_566:
	db	":Tengine",0
	align	4
_bb_p1:
	dd	_bbNullObject
_567:
	db	"p1x",0
_33:
	db	"f",0
	align	4
_bb_p1x:
	dd	0x0
_568:
	db	"p1y",0
	align	4
_bb_p1y:
	dd	0x0
_569:
	db	"p1w",0
	align	4
_bb_p1w:
	dd	0x0
_570:
	db	"tmr",0
_571:
	db	":brl.timer.Ttimer",0
	align	4
_bb_tmr:
	dd	_bbNullObject
	align	4
_538:
	dd	1
	dd	_539
	dd	4
	dd	_540
	dd	_85
	dd	_bb_smokelist
	dd	4
	dd	_541
	dd	_85
	dd	_bb_mudlist
	dd	4
	dd	_542
	dd	_85
	dd	_bb_sanddustlist
	dd	4
	dd	_543
	dd	_85
	dd	_bb_firelist
	dd	4
	dd	_544
	dd	_85
	dd	_bb_funkenlist
	dd	4
	dd	_545
	dd	_85
	dd	_bb_spurlist
	dd	4
	dd	_546
	dd	_85
	dd	_bb_graterlist
	dd	4
	dd	_547
	dd	_85
	dd	_bb_Schussliste
	dd	4
	dd	_548
	dd	_85
	dd	_bb_texturlist
	dd	4
	dd	_549
	dd	_85
	dd	_bb_maptexturlist
	dd	4
	dd	_550
	dd	_85
	dd	_bb_texgrouplist
	dd	4
	dd	_551
	dd	_85
	dd	_bb_maptexgrouplist
	dd	4
	dd	_552
	dd	_85
	dd	_bb_waypointlist
	dd	4
	dd	_553
	dd	_85
	dd	_bb_printlistlist
	dd	4
	dd	_554
	dd	_85
	dd	_bb_actionlist
	dd	4
	dd	_555
	dd	_85
	dd	_bb_botlist
	dd	4
	dd	_556
	dd	_557
	dd	_bb_player
	dd	4
	dd	_558
	dd	_85
	dd	_bb_glowlist
	dd	4
	dd	_559
	dd	_560
	dd	_bb_motor_100PS
	dd	4
	dd	_561
	dd	_560
	dd	_bb_motor_400PS
	dd	4
	dd	_562
	dd	_560
	dd	_bb_motor_500PS
	dd	4
	dd	_563
	dd	_560
	dd	_bb_motor_1000PS
	dd	4
	dd	_564
	dd	_85
	dd	_bb_ledplist
	dd	4
	dd	_565
	dd	_566
	dd	_bb_p1
	dd	4
	dd	_567
	dd	_33
	dd	_bb_p1x
	dd	4
	dd	_568
	dd	_33
	dd	_bb_p1y
	dd	4
	dd	_569
	dd	_33
	dd	_bb_p1w
	dd	4
	dd	_570
	dd	_571
	dd	_bb_tmr
	dd	0
_31:
	db	"Tsmoke",0
_32:
	db	"x",0
_34:
	db	"y",0
_35:
	db	"s",0
_36:
	db	"d",0
_37:
	db	"r",0
_38:
	db	"w",0
_39:
	db	"w2",0
_40:
	db	"a",0
_41:
	db	"New",0
_42:
	db	"()i",0
_43:
	db	"Delete",0
	align	4
_30:
	dd	2
	dd	_31
	dd	3
	dd	_32
	dd	_33
	dd	8
	dd	3
	dd	_34
	dd	_33
	dd	12
	dd	3
	dd	_35
	dd	_33
	dd	16
	dd	3
	dd	_36
	dd	_33
	dd	20
	dd	3
	dd	_37
	dd	_33
	dd	24
	dd	3
	dd	_38
	dd	_33
	dd	28
	dd	3
	dd	_39
	dd	_33
	dd	32
	dd	3
	dd	_40
	dd	_33
	dd	36
	dd	6
	dd	_41
	dd	_42
	dd	16
	dd	6
	dd	_43
	dd	_42
	dd	20
	dd	0
	align	4
_bb_Tsmoke:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_30
	dd	40
	dd	__bb_Tsmoke_New
	dd	__bb_Tsmoke_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_45:
	db	"Tmud",0
_46:
	db	"d2",0
	align	4
_44:
	dd	2
	dd	_45
	dd	3
	dd	_32
	dd	_33
	dd	8
	dd	3
	dd	_34
	dd	_33
	dd	12
	dd	3
	dd	_35
	dd	_33
	dd	16
	dd	3
	dd	_36
	dd	_33
	dd	20
	dd	3
	dd	_46
	dd	_33
	dd	24
	dd	3
	dd	_37
	dd	_33
	dd	28
	dd	3
	dd	_38
	dd	_33
	dd	32
	dd	3
	dd	_39
	dd	_33
	dd	36
	dd	3
	dd	_40
	dd	_33
	dd	40
	dd	6
	dd	_41
	dd	_42
	dd	16
	dd	6
	dd	_43
	dd	_42
	dd	20
	dd	0
	align	4
_bb_Tmud:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_44
	dd	44
	dd	__bb_Tmud_New
	dd	__bb_Tmud_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_48:
	db	"Tsanddust",0
	align	4
_47:
	dd	2
	dd	_48
	dd	3
	dd	_32
	dd	_33
	dd	8
	dd	3
	dd	_34
	dd	_33
	dd	12
	dd	3
	dd	_35
	dd	_33
	dd	16
	dd	3
	dd	_36
	dd	_33
	dd	20
	dd	3
	dd	_46
	dd	_33
	dd	24
	dd	3
	dd	_37
	dd	_33
	dd	28
	dd	3
	dd	_38
	dd	_33
	dd	32
	dd	3
	dd	_39
	dd	_33
	dd	36
	dd	3
	dd	_40
	dd	_33
	dd	40
	dd	6
	dd	_41
	dd	_42
	dd	16
	dd	6
	dd	_43
	dd	_42
	dd	20
	dd	0
	align	4
_bb_Tsanddust:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_47
	dd	44
	dd	__bb_Tsanddust_New
	dd	__bb_Tsanddust_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_50:
	db	"Tfire",0
_51:
	db	"ir",0
	align	4
_49:
	dd	2
	dd	_50
	dd	3
	dd	_32
	dd	_33
	dd	8
	dd	3
	dd	_34
	dd	_33
	dd	12
	dd	3
	dd	_35
	dd	_33
	dd	16
	dd	3
	dd	_36
	dd	_33
	dd	20
	dd	3
	dd	_46
	dd	_33
	dd	24
	dd	3
	dd	_37
	dd	_33
	dd	28
	dd	3
	dd	_51
	dd	_33
	dd	32
	dd	3
	dd	_38
	dd	_33
	dd	36
	dd	3
	dd	_39
	dd	_33
	dd	40
	dd	3
	dd	_40
	dd	_33
	dd	44
	dd	6
	dd	_41
	dd	_42
	dd	16
	dd	6
	dd	_43
	dd	_42
	dd	20
	dd	0
	align	4
_bb_Tfire:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_49
	dd	48
	dd	__bb_Tfire_New
	dd	__bb_Tfire_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_53:
	db	"Tfunken",0
_54:
	db	"z",0
_55:
	db	"az",0
	align	4
_52:
	dd	2
	dd	_53
	dd	3
	dd	_32
	dd	_33
	dd	8
	dd	3
	dd	_34
	dd	_33
	dd	12
	dd	3
	dd	_54
	dd	_33
	dd	16
	dd	3
	dd	_55
	dd	_33
	dd	20
	dd	3
	dd	_35
	dd	_33
	dd	24
	dd	3
	dd	_37
	dd	_33
	dd	28
	dd	6
	dd	_41
	dd	_42
	dd	16
	dd	6
	dd	_43
	dd	_42
	dd	20
	dd	0
	align	4
_bb_Tfunken:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_52
	dd	32
	dd	__bb_Tfunken_New
	dd	__bb_Tfunken_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_57:
	db	"Tspur",0
_58:
	db	"c",0
_59:
	db	"b",0
_60:
	db	"length",0
_61:
	db	"frompl",0
_62:
	db	"i",0
_63:
	db	"time",0
	align	4
_56:
	dd	2
	dd	_57
	dd	3
	dd	_32
	dd	_33
	dd	8
	dd	3
	dd	_34
	dd	_33
	dd	12
	dd	3
	dd	_37
	dd	_33
	dd	16
	dd	3
	dd	_33
	dd	_33
	dd	20
	dd	3
	dd	_58
	dd	_59
	dd	24
	dd	3
	dd	_60
	dd	_33
	dd	28
	dd	3
	dd	_61
	dd	_62
	dd	32
	dd	3
	dd	_63
	dd	_62
	dd	36
	dd	6
	dd	_41
	dd	_42
	dd	16
	dd	6
	dd	_43
	dd	_42
	dd	20
	dd	0
	align	4
_bb_Tspur:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_56
	dd	40
	dd	__bb_Tspur_New
	dd	__bb_Tspur_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_65:
	db	"Tgrater",0
	align	4
_64:
	dd	2
	dd	_65
	dd	3
	dd	_32
	dd	_33
	dd	8
	dd	3
	dd	_34
	dd	_33
	dd	12
	dd	3
	dd	_37
	dd	_33
	dd	16
	dd	3
	dd	_33
	dd	_33
	dd	20
	dd	3
	dd	_58
	dd	_59
	dd	24
	dd	3
	dd	_35
	dd	_33
	dd	28
	dd	6
	dd	_41
	dd	_42
	dd	16
	dd	6
	dd	_43
	dd	_42
	dd	20
	dd	0
	align	4
_bb_Tgrater:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_64
	dd	32
	dd	__bb_Tgrater_New
	dd	__bb_Tgrater_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_67:
	db	"TSchussSp",0
_68:
	db	"xs",0
_69:
	db	"ys",0
_70:
	db	"winkels",0
_71:
	db	"treffer",0
_72:
	db	"Bild",0
_73:
	db	"$",0
_74:
	db	"Kraft",0
_75:
	db	"weite",0
	align	4
_66:
	dd	2
	dd	_67
	dd	3
	dd	_68
	dd	_33
	dd	8
	dd	3
	dd	_69
	dd	_33
	dd	12
	dd	3
	dd	_70
	dd	_33
	dd	16
	dd	3
	dd	_71
	dd	_62
	dd	20
	dd	3
	dd	_72
	dd	_73
	dd	24
	dd	3
	dd	_74
	dd	_33
	dd	28
	dd	3
	dd	_75
	dd	_33
	dd	32
	dd	6
	dd	_41
	dd	_42
	dd	16
	dd	6
	dd	_43
	dd	_42
	dd	20
	dd	0
	align	4
_bb_TSchussSp:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_66
	dd	36
	dd	__bb_TSchussSp_New
	dd	__bb_TSchussSp_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_77:
	db	"Ttextur",0
_78:
	db	"render",0
_79:
	db	"[]:Ttextur",0
_80:
	db	"isRendert",0
_81:
	db	"doRender",0
_82:
	db	"orginal",0
_83:
	db	":Ttextur",0
_84:
	db	"redertlist",0
_86:
	db	"img",0
_87:
	db	":brl.max2d.TImage",0
_88:
	db	"pic",0
_89:
	db	":brl.pixmap.TPixmap",0
_90:
	db	"version",0
_91:
	db	"beforeTex",0
_92:
	db	"isAlpha",0
_93:
	db	"isDust",0
_94:
	db	"g",0
_95:
	db	"speicherort",0
_96:
	db	"datname",0
_97:
	db	"group",0
_98:
	db	"eingestellt",0
	align	4
_76:
	dd	2
	dd	_77
	dd	3
	dd	_78
	dd	_79
	dd	8
	dd	3
	dd	_80
	dd	_62
	dd	12
	dd	3
	dd	_81
	dd	_62
	dd	16
	dd	3
	dd	_82
	dd	_83
	dd	20
	dd	3
	dd	_84
	dd	_85
	dd	24
	dd	3
	dd	_86
	dd	_87
	dd	28
	dd	3
	dd	_88
	dd	_89
	dd	32
	dd	3
	dd	_90
	dd	_62
	dd	36
	dd	3
	dd	_91
	dd	_83
	dd	40
	dd	3
	dd	_92
	dd	_59
	dd	44
	dd	3
	dd	_93
	dd	_59
	dd	45
	dd	3
	dd	_37
	dd	_59
	dd	46
	dd	3
	dd	_94
	dd	_59
	dd	47
	dd	3
	dd	_59
	dd	_59
	dd	48
	dd	3
	dd	_95
	dd	_73
	dd	52
	dd	3
	dd	_96
	dd	_73
	dd	56
	dd	3
	dd	_97
	dd	_73
	dd	60
	dd	3
	dd	_98
	dd	_59
	dd	64
	dd	6
	dd	_41
	dd	_42
	dd	16
	dd	6
	dd	_43
	dd	_42
	dd	20
	dd	0
	align	4
_bb_Ttextur:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_76
	dd	65
	dd	__bb_Ttextur_New
	dd	__bb_Ttextur_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_100:
	db	"Ttexgroup",0
_101:
	db	"texlink",0
_102:
	db	"texlist",0
	align	4
_99:
	dd	2
	dd	_100
	dd	3
	dd	_97
	dd	_73
	dd	8
	dd	3
	dd	_101
	dd	_83
	dd	12
	dd	3
	dd	_102
	dd	_85
	dd	16
	dd	6
	dd	_41
	dd	_42
	dd	16
	dd	6
	dd	_43
	dd	_42
	dd	20
	dd	0
	align	4
_bb_Ttexgroup:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_99
	dd	20
	dd	__bb_Ttexgroup_New
	dd	__bb_Ttexgroup_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_104:
	db	"Twaypoint",0
_105:
	db	"cheacked",0
_106:
	db	"size",0
_107:
	db	"name",0
_108:
	db	"action",0
_109:
	db	":Taction",0
_110:
	db	"otherWP",0
_111:
	db	":Twaypoint",0
_112:
	db	"dist",0
_113:
	db	"[]f",0
_114:
	db	"chaged",0
_115:
	db	"used",0
_116:
	db	"otherlist",0
_117:
	db	"othernames",0
_118:
	db	"[]$",0
_119:
	db	"script",0
	align	4
_103:
	dd	2
	dd	_104
	dd	3
	dd	_32
	dd	_33
	dd	8
	dd	3
	dd	_34
	dd	_33
	dd	12
	dd	3
	dd	_105
	dd	_62
	dd	16
	dd	3
	dd	_106
	dd	_62
	dd	20
	dd	3
	dd	_107
	dd	_73
	dd	24
	dd	3
	dd	_108
	dd	_109
	dd	28
	dd	3
	dd	_110
	dd	_111
	dd	32
	dd	3
	dd	_112
	dd	_113
	dd	36
	dd	3
	dd	_114
	dd	_62
	dd	40
	dd	3
	dd	_115
	dd	_33
	dd	44
	dd	3
	dd	_116
	dd	_85
	dd	48
	dd	3
	dd	_117
	dd	_118
	dd	52
	dd	3
	dd	_119
	dd	_118
	dd	56
	dd	6
	dd	_41
	dd	_42
	dd	16
	dd	6
	dd	_43
	dd	_42
	dd	20
	dd	0
	align	4
_bb_Twaypoint:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_103
	dd	60
	dd	__bb_Twaypoint_New
	dd	__bb_Twaypoint_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_121:
	db	"Taction",0
_122:
	db	"respawn",0
_123:
	db	"every",0
_124:
	db	"onlytimes",0
_125:
	db	"win",0
	align	4
_120:
	dd	2
	dd	_121
	dd	3
	dd	_107
	dd	_73
	dd	8
	dd	3
	dd	_122
	dd	_62
	dd	12
	dd	3
	dd	_123
	dd	_62
	dd	16
	dd	3
	dd	_124
	dd	_62
	dd	20
	dd	3
	dd	_125
	dd	_62
	dd	24
	dd	6
	dd	_41
	dd	_42
	dd	16
	dd	6
	dd	_43
	dd	_42
	dd	20
	dd	0
	align	4
_bb_Taction:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_120
	dd	28
	dd	__bb_Taction_New
	dd	__bb_Taction_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_127:
	db	"Tbot",0
_128:
	db	"bx",0
_129:
	db	"by",0
_130:
	db	"br",0
_131:
	db	"bs",0
_132:
	db	"bsmk",0
_133:
	db	"bospxr",0
_134:
	db	"bospxl",0
_135:
	db	"bospyr",0
_136:
	db	"bospyl",0
_137:
	db	"blook",0
_138:
	db	"btd",0
_139:
	db	"bbspr",0
_140:
	db	"bbspl",0
_141:
	db	"id",0
_142:
	db	"shot",0
_143:
	db	"cd",0
_144:
	db	"cd2",0
_145:
	db	"cd3",0
_146:
	db	"life",0
_147:
	db	"dtmr",0
_148:
	db	"fspy",0
_149:
	db	"marinecd",0
_150:
	db	"tx",0
_151:
	db	"ty",0
_152:
	db	"ttmr",0
_153:
	db	"waypoint",0
_154:
	db	"endwaypoint",0
_155:
	db	"botgas",0
_156:
	db	"freund",0
_157:
	db	"freundtarget",0
_158:
	db	":Tbot",0
_159:
	db	"seelist",0
_160:
	db	"botdel",0
	align	4
_126:
	dd	2
	dd	_127
	dd	3
	dd	_128
	dd	_33
	dd	8
	dd	3
	dd	_129
	dd	_33
	dd	12
	dd	3
	dd	_130
	dd	_33
	dd	16
	dd	3
	dd	_131
	dd	_33
	dd	20
	dd	3
	dd	_132
	dd	_62
	dd	24
	dd	3
	dd	_133
	dd	_33
	dd	28
	dd	3
	dd	_134
	dd	_33
	dd	32
	dd	3
	dd	_135
	dd	_33
	dd	36
	dd	3
	dd	_136
	dd	_33
	dd	40
	dd	3
	dd	_137
	dd	_33
	dd	44
	dd	3
	dd	_138
	dd	_33
	dd	48
	dd	3
	dd	_139
	dd	_59
	dd	52
	dd	3
	dd	_140
	dd	_59
	dd	53
	dd	3
	dd	_141
	dd	_62
	dd	56
	dd	3
	dd	_142
	dd	_59
	dd	60
	dd	3
	dd	_143
	dd	_62
	dd	64
	dd	3
	dd	_144
	dd	_62
	dd	68
	dd	3
	dd	_145
	dd	_62
	dd	72
	dd	3
	dd	_146
	dd	_33
	dd	76
	dd	3
	dd	_147
	dd	_59
	dd	80
	dd	3
	dd	_148
	dd	_62
	dd	84
	dd	3
	dd	_149
	dd	_62
	dd	88
	dd	3
	dd	_150
	dd	_33
	dd	92
	dd	3
	dd	_151
	dd	_33
	dd	96
	dd	3
	dd	_152
	dd	_59
	dd	100
	dd	3
	dd	_153
	dd	_111
	dd	104
	dd	3
	dd	_154
	dd	_111
	dd	108
	dd	3
	dd	_155
	dd	_33
	dd	112
	dd	3
	dd	_156
	dd	_62
	dd	116
	dd	3
	dd	_157
	dd	_158
	dd	120
	dd	3
	dd	_159
	dd	_85
	dd	124
	dd	3
	dd	_160
	dd	_62
	dd	128
	dd	6
	dd	_41
	dd	_42
	dd	16
	dd	6
	dd	_43
	dd	_42
	dd	20
	dd	0
	align	4
_bb_Tbot:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_126
	dd	132
	dd	__bb_Tbot_New
	dd	__bb_Tbot_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_162:
	db	"Tplayer",0
_163:
	db	"sx",0
_164:
	db	"sy",0
_165:
	db	"winkel",0
_166:
	db	"turmwinkel",0
_167:
	db	"turmdistanz",0
_168:
	db	"bottarget",0
_169:
	db	"Energie",0
_170:
	db	"dead",0
_171:
	db	"HoechstG",0
_172:
	db	"BeschV",0
_173:
	db	"DrehB",0
_174:
	db	"plx",0
_175:
	db	"ply",0
_176:
	db	"Leben",0
_177:
	db	"Geschw",0
_178:
	db	"Masse",0
_179:
	db	"ReiKraft",0
_180:
	db	"Brems",0
_181:
	db	"altx",0
_182:
	db	"alty",0
_183:
	db	"Backw",0
_184:
	db	"VBackw",0
_185:
	db	"schusstP",0
_186:
	db	"HGBackw",0
	align	4
_161:
	dd	2
	dd	_162
	dd	3
	dd	_32
	dd	_33
	dd	8
	dd	3
	dd	_34
	dd	_33
	dd	12
	dd	3
	dd	_163
	dd	_33
	dd	16
	dd	3
	dd	_164
	dd	_33
	dd	20
	dd	3
	dd	_165
	dd	_33
	dd	24
	dd	3
	dd	_166
	dd	_33
	dd	28
	dd	3
	dd	_167
	dd	_33
	dd	32
	dd	3
	dd	_168
	dd	_158
	dd	36
	dd	3
	dd	_169
	dd	_33
	dd	40
	dd	3
	dd	_147
	dd	_62
	dd	44
	dd	3
	dd	_170
	dd	_62
	dd	48
	dd	3
	dd	_171
	dd	_33
	dd	52
	dd	3
	dd	_172
	dd	_33
	dd	56
	dd	3
	dd	_173
	dd	_33
	dd	60
	dd	3
	dd	_174
	dd	_33
	dd	64
	dd	3
	dd	_175
	dd	_33
	dd	68
	dd	3
	dd	_176
	dd	_33
	dd	72
	dd	3
	dd	_177
	dd	_33
	dd	76
	dd	3
	dd	_178
	dd	_33
	dd	80
	dd	3
	dd	_179
	dd	_33
	dd	84
	dd	3
	dd	_180
	dd	_33
	dd	88
	dd	3
	dd	_181
	dd	_33
	dd	92
	dd	3
	dd	_182
	dd	_33
	dd	96
	dd	3
	dd	_183
	dd	_33
	dd	100
	dd	3
	dd	_184
	dd	_33
	dd	104
	dd	3
	dd	_185
	dd	_62
	dd	108
	dd	3
	dd	_186
	dd	_33
	dd	112
	dd	3
	dd	_159
	dd	_85
	dd	116
	dd	6
	dd	_41
	dd	_42
	dd	16
	dd	6
	dd	_43
	dd	_42
	dd	20
	dd	0
	align	4
_bb_Tplayer:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_161
	dd	120
	dd	__bb_Tplayer_New
	dd	__bb_Tplayer_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_188:
	db	"Tglow",0
_189:
	db	"l",0
	align	4
_187:
	dd	2
	dd	_188
	dd	3
	dd	_32
	dd	_33
	dd	8
	dd	3
	dd	_34
	dd	_33
	dd	12
	dd	3
	dd	_35
	dd	_33
	dd	16
	dd	3
	dd	_37
	dd	_62
	dd	20
	dd	3
	dd	_94
	dd	_62
	dd	24
	dd	3
	dd	_59
	dd	_62
	dd	28
	dd	3
	dd	_36
	dd	_62
	dd	32
	dd	3
	dd	_189
	dd	_62
	dd	36
	dd	3
	dd	_40
	dd	_33
	dd	40
	dd	6
	dd	_41
	dd	_42
	dd	16
	dd	6
	dd	_43
	dd	_42
	dd	20
	dd	0
	align	4
_bb_Tglow:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_187
	dd	44
	dd	__bb_Tglow_New
	dd	__bb_Tglow_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_191:
	db	"Tdrive",0
_192:
	db	"Drehzahl",0
_193:
	db	"Drehmoment",0
	align	4
_190:
	dd	2
	dd	_191
	dd	3
	dd	_192
	dd	_33
	dd	8
	dd	3
	dd	_193
	dd	_33
	dd	12
	dd	6
	dd	_41
	dd	_42
	dd	16
	dd	6
	dd	_43
	dd	_42
	dd	20
	dd	0
	align	4
_bb_Tdrive:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_190
	dd	16
	dd	__bb_Tdrive_New
	dd	__bb_Tdrive_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_195:
	db	"Tengine",0
_196:
	db	"speed",0
_197:
	db	"gang",0
	align	4
_194:
	dd	2
	dd	_195
	dd	3
	dd	_192
	dd	_33
	dd	8
	dd	3
	dd	_193
	dd	_33
	dd	12
	dd	3
	dd	_196
	dd	_33
	dd	16
	dd	3
	dd	_197
	dd	_62
	dd	20
	dd	6
	dd	_41
	dd	_42
	dd	16
	dd	6
	dd	_43
	dd	_42
	dd	20
	dd	0
	align	4
_bb_Tengine:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_194
	dd	24
	dd	__bb_Tengine_New
	dd	__bb_Tengine_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_199:
	db	"Tledp",0
_200:
	db	"drehzahl",0
_201:
	db	"drehmoment",0
	align	4
_198:
	dd	2
	dd	_199
	dd	3
	dd	_196
	dd	_33
	dd	8
	dd	3
	dd	_200
	dd	_33
	dd	12
	dd	3
	dd	_201
	dd	_33
	dd	16
	dd	6
	dd	_41
	dd	_42
	dd	16
	dd	6
	dd	_43
	dd	_42
	dd	20
	dd	0
	align	4
_bb_Tledp:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_198
	dd	20
	dd	__bb_Tledp_New
	dd	__bb_Tledp_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_327:
	db	"D:/Proggen/projecte/team/PanzerS/testlap_Drive.bmx",0
	align	4
_326:
	dd	_327
	dd	17
	dd	1
	align	4
_18:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	80,97,110,122,101,114,83,58,32,84,101,115,116,108,97,112
	dw	33
	align	4
_332:
	dd	_327
	dd	18
	dd	1
	align	4
_333:
	dd	_327
	dd	19
	dd	1
_335:
	db	"D:/Proggen/projecte/team/PanzerS/inc/types.bmx",0
	align	4
_334:
	dd	_335
	dd	5
	dd	1
	align	4
_337:
	dd	0
	align	4
_339:
	dd	_335
	dd	10
	dd	1
	align	4
_342:
	dd	_335
	dd	15
	dd	1
	align	4
_345:
	dd	_335
	dd	20
	dd	1
	align	4
_348:
	dd	_335
	dd	25
	dd	1
	align	4
_351:
	dd	_335
	dd	30
	dd	1
	align	4
_354:
	dd	_335
	dd	35
	dd	1
	align	4
_357:
	dd	_335
	dd	40
	dd	1
	align	4
_360:
	dd	_335
	dd	48
	dd	1
	align	4
_363:
	dd	_335
	dd	49
	dd	1
	align	4
_366:
	dd	_335
	dd	55
	dd	1
	align	4
_369:
	dd	_335
	dd	56
	dd	1
	align	4
_372:
	dd	_335
	dd	67
	dd	1
	align	4
_375:
	dd	_335
	dd	68
	dd	1
	align	4
_378:
	dd	_335
	dd	75
	dd	1
	align	4
_381:
	dd	_335
	dd	84
	dd	1
	align	4
_384:
	dd	_335
	dd	93
	dd	1
	align	4
_387:
	dd	_335
	dd	98
	dd	1
_391:
	db	"D:/Proggen/projecte/team/PanzerS/inc/drive_engine.bmx",0
	align	4
_390:
	dd	_391
	dd	4
	dd	1
	align	4
_394:
	dd	_391
	dd	5
	dd	1
	align	4
_944:
	dd	0x43af0000
	align	4
_398:
	dd	_391
	dd	6
	dd	1
	align	4
_945:
	dd	0x44fa0000
	align	4
_402:
	dd	_391
	dd	8
	dd	1
	align	4
_405:
	dd	_391
	dd	9
	dd	1
	align	4
_946:
	dd	0x44af0000
	align	4
_409:
	dd	_391
	dd	10
	dd	1
	align	4
_947:
	dd	0x44fa0000
	align	4
_413:
	dd	_391
	dd	12
	dd	1
	align	4
_416:
	dd	_391
	dd	13
	dd	1
	align	4
_948:
	dd	0x44dac000
	align	4
_420:
	dd	_391
	dd	14
	dd	1
	align	4
_949:
	dd	0x44fa0000
	align	4
_424:
	dd	_391
	dd	16
	dd	1
	align	4
_427:
	dd	_391
	dd	17
	dd	1
	align	4
_950:
	dd	0x455ac000
	align	4
_431:
	dd	_391
	dd	18
	dd	1
	align	4
_951:
	dd	0x44fa0000
	align	4
_435:
	dd	_327
	dd	24
	dd	1
	align	4
_436:
	dd	_327
	dd	29
	dd	1
	align	4
_439:
	dd	_327
	dd	32
	dd	1
	align	4
_442:
	dd	_327
	dd	34
	dd	1
	align	4
_443:
	dd	_327
	dd	36
	dd	1
	align	4
_446:
	dd	_327
	dd	38
	dd	1
_536:
	db	"nTledp",0
_513:
	db	":Tledp",0
_537:
	db	"del",0
	align	4
_535:
	dd	3
	dd	0
	dd	2
	dd	_536
	dd	_513
	dd	-4
	dd	2
	dd	_537
	dd	_62
	dd	-8
	dd	0
	align	4
_449:
	dd	_327
	dd	39
	dd	2
	align	4
_452:
	dd	_327
	dd	40
	dd	2
	align	4
_453:
	dd	_327
	dd	41
	dd	3
	align	4
_454:
	dd	_327
	dd	43
	dd	3
	align	4
_456:
	dd	_327
	dd	44
	dd	3
	align	4
_459:
	dd	_327
	dd	46
	dd	3
	align	4
_460:
	dd	_327
	dd	48
	dd	3
	align	4
_466:
	dd	_327
	dd	49
	dd	3
	align	4
_472:
	dd	_327
	dd	50
	dd	3
	align	4
_952:
	dd	0x40a00000
	align	4
_478:
	dd	_327
	dd	53
	dd	3
	align	4
_482:
	dd	_327
	dd	54
	dd	3
_512:
	db	"cTledp",0
	align	4
_511:
	dd	3
	dd	0
	dd	2
	dd	_512
	dd	_513
	dd	-12
	dd	0
	align	4
_492:
	dd	_327
	dd	55
	dd	4
	align	4
_493:
	dd	_327
	dd	56
	dd	4
	align	4
_498:
	dd	3
	dd	0
	dd	0
	align	4
_495:
	dd	_327
	dd	56
	dd	20
	align	4
_499:
	dd	_327
	dd	58
	dd	4
	align	4
_500:
	dd	_327
	dd	59
	dd	4
	align	4
_953:
	dd	0x443d8000
	align	4
_503:
	dd	_327
	dd	60
	dd	4
	align	4
_504:
	dd	_327
	dd	61
	dd	4
	align	4
_954:
	dd	0x443d8000
	align	4
_955:
	dd	0x40900000
	align	4
_507:
	dd	_327
	dd	62
	dd	4
	align	4
_508:
	dd	_327
	dd	63
	dd	4
	align	4
_956:
	dd	0x443d8000
	align	4
_514:
	dd	_327
	dd	67
	dd	3
	align	4
_517:
	dd	3
	dd	0
	dd	0
	align	4
_516:
	dd	_327
	dd	67
	dd	26
	align	4
_957:
	dd	0x3f800000
	align	4
_518:
	dd	_327
	dd	68
	dd	3
	align	4
_521:
	dd	3
	dd	0
	dd	0
	align	4
_520:
	dd	_327
	dd	68
	dd	26
	align	4
_958:
	dd	0x3f800000
	align	4
_522:
	dd	_327
	dd	69
	dd	3
	align	4
_959:
	dd	0x41200000
	align	4
_525:
	dd	_327
	dd	70
	dd	3
	align	4
_960:
	dd	0x41200000
	align	4
_528:
	dd	_327
	dd	72
	dd	3
	align	4
_529:
	dd	_327
	dd	73
	dd	3
	align	4
_530:
	dd	_327
	dd	74
	dd	3
	align	4
_531:
	dd	_327
	dd	75
	dd	3
	align	4
_532:
	dd	_327
	dd	76
	dd	3
	align	4
_533:
	dd	_327
	dd	77
	dd	3
	align	4
_534:
	dd	_327
	dd	78
	dd	2
_576:
	db	"Self",0
_577:
	db	":Tsmoke",0
	align	4
_575:
	dd	1
	dd	_41
	dd	2
	dd	_576
	dd	_577
	dd	-4
	dd	0
	align	4
_1020:
	dd	0x3ecccccd
	align	4
_574:
	dd	3
	dd	0
	dd	0
_581:
	db	":Tmud",0
	align	4
_580:
	dd	1
	dd	_41
	dd	2
	dd	_576
	dd	_581
	dd	-4
	dd	0
	align	4
_579:
	dd	3
	dd	0
	dd	0
_585:
	db	":Tsanddust",0
	align	4
_584:
	dd	1
	dd	_41
	dd	2
	dd	_576
	dd	_585
	dd	-4
	dd	0
	align	4
_1029:
	dd	0x3f4ccccd
	align	4
_583:
	dd	3
	dd	0
	dd	0
_589:
	db	":Tfire",0
	align	4
_588:
	dd	1
	dd	_41
	dd	2
	dd	_576
	dd	_589
	dd	-4
	dd	0
	align	4
_1034:
	dd	0x3e99999a
	align	4
_587:
	dd	3
	dd	0
	dd	0
_593:
	db	":Tfunken",0
	align	4
_592:
	dd	1
	dd	_41
	dd	2
	dd	_576
	dd	_593
	dd	-4
	dd	0
	align	4
_591:
	dd	3
	dd	0
	dd	0
_597:
	db	":Tspur",0
	align	4
_596:
	dd	1
	dd	_41
	dd	2
	dd	_576
	dd	_597
	dd	-4
	dd	0
	align	4
_1043:
	dd	0x3f400000
	align	4
_595:
	dd	3
	dd	0
	dd	0
_601:
	db	":Tgrater",0
	align	4
_600:
	dd	1
	dd	_41
	dd	2
	dd	_576
	dd	_601
	dd	-4
	dd	0
	align	4
_1048:
	dd	0x3f400000
	align	4
_599:
	dd	3
	dd	0
	dd	0
_606:
	db	":TSchussSp",0
	align	4
_605:
	dd	1
	dd	_41
	dd	2
	dd	_576
	dd	_606
	dd	-4
	dd	0
	align	4
_604:
	dd	3
	dd	0
	dd	0
	align	4
_621:
	dd	1
	dd	_41
	dd	2
	dd	_576
	dd	_83
	dd	-4
	dd	0
_610:
	db	":Ttextur",0
	align	4
_620:
	dd	3
	dd	0
	dd	0
_646:
	db	":Ttexgroup",0
	align	4
_645:
	dd	1
	dd	_41
	dd	2
	dd	_576
	dd	_646
	dd	-4
	dd	0
	align	4
_644:
	dd	3
	dd	0
	dd	0
	align	4
_665:
	dd	1
	dd	_41
	dd	2
	dd	_576
	dd	_111
	dd	-4
	dd	0
_657:
	db	"f",0
_660:
	db	"$",0
_662:
	db	"$",0
	align	4
_664:
	dd	3
	dd	0
	dd	0
	align	4
_683:
	dd	1
	dd	_41
	dd	2
	dd	_576
	dd	_109
	dd	-4
	dd	0
	align	4
_682:
	dd	3
	dd	0
	dd	0
	align	4
_692:
	dd	1
	dd	_41
	dd	2
	dd	_576
	dd	_158
	dd	-4
	dd	0
	align	4
_1073:
	dd	0x42c80000
	align	4
_691:
	dd	3
	dd	0
	dd	0
	align	4
_705:
	dd	1
	dd	_41
	dd	2
	dd	_576
	dd	_557
	dd	-4
	dd	0
	align	4
_704:
	dd	3
	dd	0
	dd	0
_713:
	db	":Tglow",0
	align	4
_712:
	dd	1
	dd	_41
	dd	2
	dd	_576
	dd	_713
	dd	-4
	dd	0
	align	4
_711:
	dd	3
	dd	0
	dd	0
	align	4
_716:
	dd	1
	dd	_41
	dd	2
	dd	_576
	dd	_560
	dd	-4
	dd	0
	align	4
_715:
	dd	3
	dd	0
	dd	0
	align	4
_719:
	dd	1
	dd	_41
	dd	2
	dd	_576
	dd	_566
	dd	-4
	dd	0
	align	4
_718:
	dd	3
	dd	0
	dd	0
_894:
	db	"Drive",0
_895:
	db	"gas",0
_896:
	db	"break",0
_897:
	db	"motordata",0
_898:
	db	"panzermodel",0
_899:
	db	"motor",0
_900:
	db	"leistung",0
_901:
	db	"gewicht",0
_902:
	db	"wiederstand",0
	align	4
_893:
	dd	1
	dd	_894
	dd	2
	dd	_895
	dd	_62
	dd	-4
	dd	2
	dd	_896
	dd	_62
	dd	-8
	dd	2
	dd	_897
	dd	_566
	dd	-12
	dd	2
	dd	_898
	dd	_62
	dd	-16
	dd	2
	dd	_899
	dd	_560
	dd	-20
	dd	2
	dd	_900
	dd	_33
	dd	-24
	dd	2
	dd	_901
	dd	_33
	dd	-28
	dd	2
	dd	_902
	dd	_33
	dd	-32
	dd	0
	align	4
_721:
	dd	_391
	dd	22
	dd	2
	align	4
_737:
	dd	3
	dd	0
	dd	0
	align	4
_725:
	dd	_391
	dd	23
	dd	3
	align	4
_727:
	dd	3
	dd	0
	dd	0
	align	4
_736:
	dd	3
	dd	0
	dd	0
	align	4
_729:
	dd	_391
	dd	26
	dd	4
	align	4
_735:
	dd	3
	dd	0
	dd	0
	align	4
_731:
	dd	_391
	dd	26
	dd	18
	align	4
_763:
	dd	3
	dd	0
	dd	0
	align	4
_739:
	dd	_391
	dd	29
	dd	2
	align	4
_755:
	dd	3
	dd	0
	dd	0
	align	4
_743:
	dd	_391
	dd	30
	dd	3
	align	4
_754:
	dd	3
	dd	0
	dd	0
	align	4
_745:
	dd	_391
	dd	31
	dd	4
	align	4
_1094:
	dd	0x449c4000
	align	4
_753:
	dd	3
	dd	0
	dd	0
	align	4
_749:
	dd	_391
	dd	31
	dd	38
	align	4
_762:
	dd	3
	dd	0
	dd	0
	align	4
_757:
	dd	_391
	dd	33
	dd	2
	align	4
_761:
	dd	3
	dd	0
	dd	0
	align	4
_764:
	dd	_391
	dd	38
	dd	2
	align	4
_801:
	dd	3
	dd	0
	dd	0
	align	4
_766:
	dd	_391
	dd	39
	dd	3
	align	4
_784:
	dd	3
	dd	0
	dd	0
	align	4
_770:
	dd	_391
	dd	40
	dd	4
	align	4
_1095:
	dd	0x42480000
	align	4
_1096:
	dd	0x42480000
	align	4
_800:
	dd	3
	dd	0
	dd	0
	align	4
_786:
	dd	_391
	dd	42
	dd	4
	align	4
_1097:
	dd	0x42c80000
	align	4
_1098:
	dd	0x42c80000
	align	4
_817:
	dd	3
	dd	0
	dd	0
	align	4
_803:
	dd	_391
	dd	45
	dd	3
	align	4
_1099:
	dd	0x42480000
	align	4
_1100:
	dd	0x42480000
	align	4
_1101:
	dd	0x40400000
	align	4
_818:
	dd	_391
	dd	48
	dd	2
	align	4
_1102:
	dd	0x42c80000
	align	4
_826:
	dd	3
	dd	0
	dd	0
	align	4
_822:
	dd	_391
	dd	48
	dd	35
	align	4
_1103:
	dd	0x42c80000
	align	4
_827:
	dd	_391
	dd	51
	dd	2
	align	4
_837:
	dd	_391
	dd	54
	dd	2
	align	8
_1104:
	dd	0x54442d18,0x401921fb
	align	4
_1105:
	dd	0x42700000
	align	4
_843:
	dd	_391
	dd	56
	dd	2
	align	4
_1106:
	dd	0x461c4000
	align	4
_845:
	dd	_391
	dd	57
	dd	2
	align	4
_1107:
	dd	0x3627c5ac
	align	4
_847:
	dd	_391
	dd	58
	dd	2
	align	4
_850:
	dd	3
	dd	0
	dd	0
	align	4
_849:
	dd	_391
	dd	58
	dd	16
	align	4
_1108:
	dd	0x3a03126f
	align	4
_851:
	dd	_391
	dd	60
	dd	2
	align	4
_1109:
	dd	0x42480000
	align	4
_1110:
	dd	0x42480000
	align	4
_859:
	dd	_391
	dd	62
	dd	2
	align	4
_871:
	dd	3
	dd	0
	dd	0
	align	4
_863:
	dd	_391
	dd	63
	dd	3
	align	4
_1111:
	dd	0x42480000
	align	4
_881:
	dd	3
	dd	0
	dd	0
	align	4
_873:
	dd	_391
	dd	65
	dd	3
	align	4
_1112:
	dd	0x41c80000
	align	4
_882:
	dd	_391
	dd	68
	dd	2
	align	4
_19:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	101,102,102,101,99,116,105,118,101,32,108,101,105,115,116,117
	dw	110,103,58,32
	align	4
_883:
	dd	_391
	dd	69
	dd	2
	align	4
_20:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	108,101,105,115,116,117,110,103,32,112,114,111,32,75,103,58
	dw	32
	align	4
_884:
	dd	_391
	dd	70
	dd	2
	align	4
_1113:
	dd	0x41200000
	align	4
_21:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	115,112,101,101,100,58,32
	align	4
_887:
	dd	_391
	dd	71
	dd	2
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	68,114,101,104,122,97,104,108,58,32
	align	4
_890:
	dd	_391
	dd	72
	dd	2
	align	4
_23:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	68,114,101,104,109,111,109,101,110,116,58,32
	align	4
_904:
	dd	1
	dd	_41
	dd	2
	dd	_576
	dd	_513
	dd	-4
	dd	0
	align	4
_903:
	dd	3
	dd	0
	dd	0
_932:
	db	"DrawPicture",0
_933:
	db	"bild",0
_934:
	db	":brl.max2d.Timage",0
_935:
	db	"width",0
_936:
	db	"height",0
_937:
	db	"nowscale_X",0
_938:
	db	"nowscale_Y",0
_939:
	db	"nowhandle_X",0
_940:
	db	"nowhandle_Y",0
_941:
	db	"factorx",0
_942:
	db	"factory",0
_943:
	db	"entferung",0
	align	4
_931:
	dd	1
	dd	_932
	dd	2
	dd	_933
	dd	_934
	dd	-4
	dd	2
	dd	_32
	dd	_33
	dd	-8
	dd	2
	dd	_34
	dd	_33
	dd	-12
	dd	2
	dd	_935
	dd	_33
	dd	-16
	dd	2
	dd	_936
	dd	_33
	dd	-20
	dd	2
	dd	_937
	dd	_33
	dd	-24
	dd	2
	dd	_938
	dd	_33
	dd	-28
	dd	2
	dd	_939
	dd	_33
	dd	-32
	dd	2
	dd	_940
	dd	_33
	dd	-36
	dd	2
	dd	_941
	dd	_33
	dd	-40
	dd	2
	dd	_942
	dd	_33
	dd	-44
	dd	2
	dd	_943
	dd	_33
	dd	-48
	dd	2
	dd	_165
	dd	_33
	dd	-52
	dd	0
	align	4
_906:
	dd	_327
	dd	84
	dd	2
	align	4
_908:
	dd	_327
	dd	85
	dd	2
	align	4
_910:
	dd	_327
	dd	86
	dd	2
	align	4
_911:
	dd	_327
	dd	88
	dd	2
	align	4
_913:
	dd	_327
	dd	89
	dd	2
	align	4
_915:
	dd	_327
	dd	90
	dd	2
	align	4
_916:
	dd	_327
	dd	92
	dd	2
	align	4
_920:
	dd	_327
	dd	93
	dd	2
	align	4
_924:
	dd	_327
	dd	95
	dd	2
	align	4
_925:
	dd	_327
	dd	98
	dd	2
	align	8
_1178:
	dd	0x0,0x40000000
	align	8
_1179:
	dd	0x0,0x40000000
	align	4
_927:
	dd	_327
	dd	99
	dd	2
	align	8
_1180:
	dd	0x0,0x40668000
	align	4
_929:
	dd	_327
	dd	101
	dd	2
	align	4
_930:
	dd	_327
	dd	103
	dd	2
