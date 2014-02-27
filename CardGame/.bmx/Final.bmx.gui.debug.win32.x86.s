	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_bmploader_bmploader
	extrn	___bb_d3d9max2d_d3d9max2d
	extrn	___bb_max2d_max2d
	extrn	___bb_pngloader_pngloader
	extrn	___bb_random_random
	extrn	___bb_standardio_standardio
	extrn	___bb_timer_timer
	extrn	_bbATan2
	extrn	_bbAppTitle
	extrn	_bbArrayNew
	extrn	_bbEmptyArray
	extrn	_bbEnd
	extrn	_bbFloatPow
	extrn	_bbFloatToInt
	extrn	_bbGCFree
	extrn	_bbMilliSecs
	extrn	_bbNullObject
	extrn	_bbObjectClass
	extrn	_bbObjectCompare
	extrn	_bbObjectCtor
	extrn	_bbObjectDowncast
	extrn	_bbObjectFree
	extrn	_bbObjectNew
	extrn	_bbObjectRegisterType
	extrn	_bbObjectReserved
	extrn	_bbObjectSendMessage
	extrn	_bbObjectToString
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbSqr
	extrn	_bbStringClass
	extrn	_bbStringFromInt
	extrn	_brl_blitz_ArrayBoundsError
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_glmax2d_GLMax2DDriver
	extrn	_brl_graphics_Flip
	extrn	_brl_graphics_Graphics
	extrn	_brl_graphics_SetGraphicsDriver
	extrn	_brl_linkedlist_CreateList
	extrn	_brl_max2d_Cls
	extrn	_brl_max2d_DrawImage
	extrn	_brl_max2d_DrawRect
	extrn	_brl_max2d_DrawText
	extrn	_brl_max2d_LoadImage
	extrn	_brl_max2d_SetAlpha
	extrn	_brl_max2d_SetBlend
	extrn	_brl_max2d_SetColor
	extrn	_brl_max2d_SetHandle
	extrn	_brl_max2d_SetOrigin
	extrn	_brl_max2d_SetRotation
	extrn	_brl_max2d_SetScale
	extrn	_brl_polledinput_AppTerminate
	extrn	_brl_polledinput_MouseDown
	extrn	_brl_polledinput_MouseHit
	extrn	_brl_polledinput_MouseX
	extrn	_brl_polledinput_MouseY
	extrn	_brl_random_Rand
	extrn	_brl_random_SeedRnd
	public	__bb_Tcard_CreateCard
	public	__bb_Tcard_Delete
	public	__bb_Tcard_New
	public	__bb_Tcard_clear
	public	__bb_Tcard_draged_card
	public	__bb_Tcard_dragndrop
	public	__bb_Tcard_draw
	public	__bb_Tcard_list
	public	__bb_Tcard_move_card
	public	__bb_Tcard_reset_card
	public	__bb_Tcard_save_card
	public	__bb_Tgamefield_Delete
	public	__bb_Tgamefield_New
	public	__bb_Tgamefield_check_win
	public	__bb_Tgamefield_clear
	public	__bb_Tgamefield_draw
	public	__bb_Tgamefield_drop_card
	public	__bb_Tgamefield_field_card
	public	__bb_Tgamefield_player_onmove
	public	__bb_Tgamefield_x
	public	__bb_Tgamefield_y
	public	__bb_Tplayer_Create
	public	__bb_Tplayer_Delete
	public	__bb_Tplayer_New
	public	__bb_Tplayer_clear
	public	__bb_Tplayer_fillhand
	public	__bb_Tplayer_move_to_hand
	public	__bb_main
	public	__bb_z_My_a993b8d3_77d3_4f58_970e_98ea79a8db33_Application
	public	__bb_z_My_a993b8d3_77d3_4f58_970e_98ea79a8db33_Delete
	public	__bb_z_My_a993b8d3_77d3_4f58_970e_98ea79a8db33_New
	public	__bb_z_My_a993b8d3_77d3_4f58_970e_98ea79a8db33_Resources
	public	__bb_z_a993b8d3_77d3_4f58_970e_98ea79a8db33_3_0_Delete
	public	__bb_z_a993b8d3_77d3_4f58_970e_98ea79a8db33_3_0_New
	public	__bb_z_blide_bga993b8d3_77d3_4f58_970e_98ea79a8db33_Delete
	public	__bb_z_blide_bga993b8d3_77d3_4f58_970e_98ea79a8db33_New
	public	_bb_Tcard
	public	_bb_Tgamefield
	public	_bb_Tplayer
	public	_bb_calc_keymove
	public	_bb_calc_move
	public	_bb_entferung
	public	_bb_fenster
	public	_bb_game_mode
	public	_bb_gfx_card_deckung
	public	_bb_gfx_card_farbe
	public	_bb_gfx_card_ruecken
	public	_bb_ismouseover
	public	_bb_lasttime
	public	_bb_md1
	public	_bb_mh1
	public	_bb_msc
	public	_bb_msctimer
	public	_bb_player_blue
	public	_bb_player_red
	public	_bb_pointx
	public	_bb_pointy
	public	_bb_reset_draw
	public	_bb_screenx
	public	_bb_screeny
	public	_bb_time
	public	_bb_turmtoterwinkel
	public	_bb_turmzuziel
	public	_bb_win
	public	_bb_winkel
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_433],0
	je	_434
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_434:
	mov	dword [_433],1
	push	ebp
	push	_408
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_timer_timer
	call	___bb_standardio_standardio
	call	___bb_random_random
	call	___bb_max2d_max2d
	call	___bb_d3d9max2d_d3d9max2d
	call	___bb_bmploader_bmploader
	call	___bb_pngloader_pngloader
	push	_18
	call	_bbObjectRegisterType
	add	esp,4
	push	_19
	call	_bbObjectRegisterType
	add	esp,4
	push	_275
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_277
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_25
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_Tplayer
	call	_bbObjectRegisterType
	add	esp,4
	push	_278
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_281]
	and	eax,1
	cmp	eax,0
	jne	_282
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [__bb_Tcard_list],eax
	or	dword [_281],1
_282:
	push	_283
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_Tcard
	call	_bbObjectRegisterType
	add	esp,4
	push	_284
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_286
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_281]
	and	eax,2
	cmp	eax,0
	jne	_289
	push	3
	push	3
	push	2
	push	_287
	call	_bbArrayNew
	add	esp,16
	inc	dword [eax+4]
	mov	dword [__bb_Tgamefield_field_card],eax
	or	dword [_281],2
_289:
	push	_290
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_281]
	and	eax,4
	cmp	eax,0
	jne	_291
	push	1
	push	0
	call	_brl_random_Rand
	add	esp,8
	mov	dword [__bb_Tgamefield_player_onmove],eax
	or	dword [_281],4
_291:
	push	_bb_Tgamefield
	call	_bbObjectRegisterType
	add	esp,4
	push	_292
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_294
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	push	eax
	call	_brl_random_SeedRnd
	add	esp,4
	push	_296
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_297
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_298
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_281]
	and	eax,8
	cmp	eax,0
	jne	_299
	fld	dword [_bb_screenx]
	fdiv	dword [_1199]
	fstp	dword [_bb_pointx]
	or	dword [_281],8
_299:
	push	_300
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_281]
	and	eax,16
	cmp	eax,0
	jne	_301
	fld	dword [_bb_screeny]
	fdiv	dword [_1200]
	fstp	dword [_bb_pointy]
	or	dword [_281],16
_301:
	push	_302
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	call	_brl_glmax2d_GLMax2DDriver
	push	eax
	call	_brl_graphics_SetGraphicsDriver
	add	esp,8
	push	_303
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_26
	inc	dword [ebx+4]
	mov	eax,dword [_bbAppTitle]
	dec	dword [eax+4]
	jnz	_307
	push	eax
	call	_bbGCFree
	add	esp,4
_307:
	mov	dword [_bbAppTitle],ebx
	push	_308
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_281]
	and	eax,32
	cmp	eax,0
	jne	_310
	push	6
	push	60
	push	0
	fld	dword [_bb_screeny]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [_bb_screenx]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_brl_graphics_Graphics
	add	esp,20
	inc	dword [eax+4]
	mov	dword [_bb_fenster],eax
	or	dword [_281],32
_310:
	push	_311
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	3
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_312
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_281]
	and	eax,64
	cmp	eax,0
	jne	_314
	push	0
	call	dword [_bb_Tplayer+48]
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_player_red],eax
	or	dword [_281],64
_314:
	push	_315
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_281]
	and	eax,128
	cmp	eax,0
	jne	_317
	push	1
	call	dword [_bb_Tplayer+48]
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_player_blue],eax
	or	dword [_281],128
_317:
	push	_318
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_281]
	and	eax,256
	cmp	eax,0
	jne	_320
	push	-1
	push	_27
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_gfx_card_deckung],eax
	or	dword [_281],256
_320:
	push	_321
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_281]
	and	eax,512
	cmp	eax,0
	jne	_323
	push	-1
	push	_28
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_gfx_card_ruecken],eax
	or	dword [_281],512
_323:
	push	_324
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_281]
	and	eax,1024
	cmp	eax,0
	jne	_326
	push	-1
	push	_29
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_gfx_card_farbe],eax
	or	dword [_281],1024
_326:
	push	_327
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_328
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_329
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_330
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_331
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_332
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_281]
	and	eax,2048
	cmp	eax,0
	jne	_333
	call	_bbMilliSecs
	mov	dword [_bb_lasttime],eax
	or	dword [_281],2048
_333:
	push	_334
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_281]
	and	eax,4096
	cmp	eax,0
	jne	_335
	call	_bbMilliSecs
	mov	dword [_bb_time],eax
	or	dword [_281],4096
_335:
	push	_336
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_30
_32:
	push	ebp
	push	_406
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_337
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_time]
	mov	dword [_bb_lasttime],eax
	push	_338
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	mov	dword [_bb_time],eax
	push	_339
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_time]
	sub	eax,dword [_bb_lasttime]
	mov	dword [_bb_msc],eax
	push	_340
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_msc],500
	jle	_341
	push	ebp
	push	_343
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_342
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_msc],500
	call	dword [_bbOnDebugLeaveScope]
_341:
	push	_344
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_345
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_reset_draw
	push	_346
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_brl_polledinput_MouseHit
	add	esp,4
	mov	dword [_bb_mh1],eax
	push	_347
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_brl_polledinput_MouseDown
	add	esp,4
	mov	dword [_bb_md1],eax
	push	_348
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_game_mode]
	cmp	eax,0
	je	_351
	cmp	eax,1
	je	_352
	cmp	eax,2
	je	_353
	cmp	eax,3
	je	_354
	jmp	_350
_351:
	push	ebp
	push	_368
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_355
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_player_red]
	cmp	ebx,_bbNullObject
	jne	_357
	call	_brl_blitz_NullObjectError
_357:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	push	_358
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_player_blue]
	cmp	ebx,_bbNullObject
	jne	_360
	call	_brl_blitz_NullObjectError
_360:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	push	_361
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_player_red]
	cmp	ebx,_bbNullObject
	jne	_363
	call	_brl_blitz_NullObjectError
_363:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	_364
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_player_blue]
	cmp	ebx,_bbNullObject
	jne	_366
	call	_brl_blitz_NullObjectError
_366:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	_367
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_game_mode],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_350
_352:
	push	ebp
	push	_377
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_369
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_md1]
	call	dword [_bb_Tcard+72]
	add	esp,4
	push	_370
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bb_Tgamefield+56]
	push	_371
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bb_Tcard+68]
	push	_372
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bb_Tgamefield+48]
	mov	dword [_bb_win],eax
	push	_373
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_win],0
	jle	_374
	push	ebp
	push	_376
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_375
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_game_mode],2
	call	dword [_bbOnDebugLeaveScope]
_374:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_350
_353:
	push	ebp
	push	_394
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_378
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_win],1
	jne	_379
	push	ebp
	push	_381
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_380
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1135542272
	push	1140850688
	push	_33
	call	_brl_max2d_DrawText
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_379:
	push	_382
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_win],2
	jne	_383
	push	ebp
	push	_385
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_384
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1135542272
	push	1140850688
	push	_34
	call	_brl_max2d_DrawText
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_383:
	push	_386
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_win],3
	jne	_387
	push	ebp
	push	_389
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_388
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1135542272
	push	1140850688
	push	_35
	call	_brl_max2d_DrawText
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_387:
	push	_390
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_mh1],0
	je	_391
	push	ebp
	push	_393
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_392
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_game_mode],3
	call	dword [_bbOnDebugLeaveScope]
_391:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_350
_354:
	push	ebp
	push	_404
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_395
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_player_red]
	cmp	ebx,_bbNullObject
	jne	_397
	call	_brl_blitz_NullObjectError
_397:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_398
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_player_blue]
	cmp	ebx,_bbNullObject
	jne	_400
	call	_brl_blitz_NullObjectError
_400:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_401
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bb_Tcard+48]
	push	_402
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bb_Tgamefield+52]
	push	_403
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_game_mode],0
	call	dword [_bbOnDebugLeaveScope]
	jmp	_350
_350:
	push	_405
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_brl_graphics_Flip
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_30:
	call	_brl_polledinput_AppTerminate
	cmp	eax,0
	je	_32
_31:
	push	_407
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	mov	ebx,0
	jmp	_158
_158:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_a993b8d3_77d3_4f58_970e_98ea79a8db33_3_0_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_436
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_18
	push	ebp
	push	_435
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_161
_161:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_a993b8d3_77d3_4f58_970e_98ea79a8db33_3_0_Delete:
	push	ebp
	mov	ebp,esp
_164:
	mov	eax,0
	jmp	_439
_439:
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_blide_bga993b8d3_77d3_4f58_970e_98ea79a8db33_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_441
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_19
	push	ebp
	push	_440
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_167
_167:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_blide_bga993b8d3_77d3_4f58_970e_98ea79a8db33_Delete:
	push	ebp
	mov	ebp,esp
_170:
	mov	eax,0
	jmp	_443
_443:
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_My_a993b8d3_77d3_4f58_970e_98ea79a8db33_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_445
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_25
	push	ebp
	push	_444
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_173
_173:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_My_a993b8d3_77d3_4f58_970e_98ea79a8db33_Delete:
	push	ebp
	mov	ebp,esp
_176:
	mov	eax,0
	jmp	_446
_446:
	mov	esp,ebp
	pop	ebp
	ret
_bb_reset_draw:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	ebp
	push	_453
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_447
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_448
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_449
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_450
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_451
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	_452
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	call	_brl_max2d_SetOrigin
	add	esp,8
	mov	ebx,0
	jmp	_178
_178:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_calc_move:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	push	ebp
	push	_462
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_455
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	jne	_456
	push	ebp
	push	_458
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_457
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	mov	eax,dword [_bb_msc]
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	fmulp	st1,st0
	fdiv	dword [_1247]
	fstp	dword [ebp-8]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_181
_456:
	push	ebp
	push	_461
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_460
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1248]
	fstp	dword [ebp-8]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_181
_181:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-8]
	mov	esp,ebp
	pop	ebp
	ret
_bb_calc_keymove:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	push	ebp
	push	_474
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_465
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	je	_466
	fld	dword [ebp-8]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
_466:
	cmp	eax,0
	je	_468
	push	ebp
	push	_470
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_469
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fdiv	dword [ebp-8]
	mov	eax,dword [_bb_msc]
	mov	dword [ebp+-16],eax
	fild	dword [ebp+-16]
	fmulp	st1,st0
	fstp	dword [ebp-12]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_185
_468:
	push	ebp
	push	_473
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_472
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1255]
	fstp	dword [ebp-12]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_185
_185:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-12]
	mov	esp,ebp
	pop	ebp
	ret
_bb_ismouseover:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	push	ebp
	push	_491
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_478
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	call	_brl_polledinput_MouseX
	cmp	ebx,eax
	setl	al
	movzx	eax,al
	cmp	eax,0
	je	_479
	mov	ebx,dword [ebp-4]
	add	ebx,dword [ebp-12]
	call	_brl_polledinput_MouseX
	cmp	ebx,eax
	setg	al
	movzx	eax,al
_479:
	cmp	eax,0
	je	_481
	mov	ebx,dword [ebp-8]
	call	_brl_polledinput_MouseY
	cmp	ebx,eax
	setl	al
	movzx	eax,al
_481:
	cmp	eax,0
	je	_483
	mov	ebx,dword [ebp-8]
	add	ebx,dword [ebp-16]
	call	_brl_polledinput_MouseY
	cmp	ebx,eax
	setg	al
	movzx	eax,al
_483:
	cmp	eax,0
	je	_485
	push	ebp
	push	_487
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_486
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-20],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_191
_485:
	push	ebp
	push	_490
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_489
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-20],0
	call	dword [_bbOnDebugLeaveScope]
	jmp	_191
_191:
	call	dword [_bbOnDebugLeaveScope]
	movzx	eax,byte [ebp-20]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_entferung:
	push	ebp
	mov	ebp,esp
	sub	esp,28
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	fld	dword [ebp+20]
	fstp	dword [ebp-16]
	push	ebp
	push	_496
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_495
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_1271]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-4]
	fsub	dword [ebp-12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-24]
	fld	qword [_1272]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-8]
	fsub	dword [ebp-16]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-24]
	faddp	st1,st0
	fstp	qword [ebp-24]
	fld	qword [ebp-24]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fstp	dword [ebp-28]
	jmp	_197
_197:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-28]
	mov	esp,ebp
	pop	ebp
	ret
_bb_winkel:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	fld	dword [ebp+20]
	fstp	dword [ebp-16]
	push	ebp
	push	_502
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_501
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fsub	dword [ebp-4]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-16]
	fsub	dword [ebp-8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbATan2
	add	esp,16
	fstp	dword [ebp-20]
	jmp	_203
_203:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-20]
	mov	esp,ebp
	pop	ebp
	ret
_bb_turmzuziel:
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
	push	_530
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_504
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fsub	dword [ebp-8]
	fadd	dword [_1281]
	fstp	dword [ebp-16]
	push	_506
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_36
_38:
	push	ebp
	push	_508
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_507
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fadd	dword [_1282]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
_36:
	fld	dword [ebp-16]
	fld	dword [_1283]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_38
_37:
	push	_509
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_39
_41:
	push	ebp
	push	_511
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_510
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fsub	dword [_1284]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
_39:
	fld	dword [ebp-16]
	fld	dword [_1285]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_41
_40:
	push	_512
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-20]
	mov	dword [ebp-24],0
	push	_515
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
	jne	_516
	push	ebp
	push	_519
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_517
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fchs
	fstp	dword [ebp-20]
	push	_518
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],1
	call	dword [_bbOnDebugLeaveScope]
_516:
	push	_520
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
	jne	_521
	push	ebp
	push	_524
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_522
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fstp	dword [ebp-20]
	push	_523
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],1
	call	dword [_bbOnDebugLeaveScope]
_521:
	push	_525
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-24],0
	jne	_526
	push	ebp
	push	_528
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_527
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fchs
	fstp	dword [ebp-20]
	call	dword [_bbOnDebugLeaveScope]
_526:
	push	_529
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-20]
	fstp	dword [ebp-28]
	jmp	_208
_208:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-28]
	mov	esp,ebp
	pop	ebp
	ret
_bb_turmtoterwinkel:
	push	ebp
	mov	ebp,esp
	sub	esp,24
	push	ebx
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	fldz
	fstp	dword [ebp-16]
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	push	ebp
	push	_562
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_538
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fsub	dword [ebp-8]
	fadd	dword [_1293]
	fstp	dword [ebp-16]
	push	_540
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_42
_44:
	push	ebp
	push	_542
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_541
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fadd	dword [_1294]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
_42:
	fld	dword [ebp-16]
	fld	dword [_1295]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_44
_43:
	push	_543
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_45
_47:
	push	ebp
	push	_545
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_544
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fsub	dword [_1296]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
_45:
	fld	dword [ebp-16]
	fld	dword [_1297]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_47
_46:
	push	_546
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	push	_549
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
	jne	_550
	push	ebp
	push	_552
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_551
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],1
	call	dword [_bbOnDebugLeaveScope]
_550:
	push	_553
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
	jne	_554
	push	ebp
	push	_556
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_555
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],1
	call	dword [_bbOnDebugLeaveScope]
_554:
	push	_557
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-24],0
	jne	_558
	push	ebp
	push	_560
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_559
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],1
	call	dword [_bbOnDebugLeaveScope]
_558:
	push	_561
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	jmp	_213
_213:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
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
	push	_567
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Tplayer
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],0
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+12],eax
	push	ebp
	push	_566
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_216
_216:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tplayer_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_219:
	mov	eax,dword [eax+12]
	dec	dword [eax+4]
	jnz	_570
	push	eax
	call	_bbGCFree
	add	esp,4
_570:
	mov	eax,0
	jmp	_568
_568:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tplayer_Create:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	push	ebp
	push	_579
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_571
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_Tplayer
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-8],eax
	push	_574
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_576
	call	_brl_blitz_NullObjectError
_576:
	mov	eax,dword [ebp-4]
	mov	dword [ebx+8],eax
	push	_578
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	jmp	_222
_222:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tplayer_clear:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_586
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_581
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_583
	call	_brl_blitz_NullObjectError
_583:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_585
	call	_brl_blitz_NullObjectError
_585:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	mov	ebx,0
	jmp	_225
_225:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tplayer_fillhand:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],0
	mov	dword [ebp-12],_bbNullObject
	push	ebp
	push	_602
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_587
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	mov	dword [ebp-8],0
	jmp	_589
_50:
	push	ebp
	push	_599
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_590
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_592
	call	_brl_blitz_NullObjectError
_592:
	push	dword [ebx+8]
	call	dword [_bb_Tcard+64]
	add	esp,4
	mov	dword [ebp-12],eax
	push	_594
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_596
	call	_brl_blitz_NullObjectError
_596:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_598
	call	_brl_blitz_NullObjectError
_598:
	push	dword [ebp-12]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_48:
	add	dword [ebp-8],1
_589:
	cmp	dword [ebp-8],4
	jle	_50
_49:
	mov	ebx,0
	jmp	_228
_228:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tplayer_move_to_hand:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],0
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_655
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_603
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	push	_605
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_607
	call	_brl_blitz_NullObjectError
_607:
	cmp	dword [ebx+8],1
	jne	_608
	mov	eax,ebp
	push	eax
	push	_629
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_609
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_612
	call	_brl_blitz_NullObjectError
_612:
	mov	edi,dword [ebx+12]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_615
	call	_brl_blitz_NullObjectError
_615:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_51
_53:
	cmp	ebx,_bbNullObject
	jne	_620
	call	_brl_blitz_NullObjectError
_620:
	push	_bb_Tcard
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-12],eax
	cmp	dword [ebp-12],_bbNullObject
	je	_51
	mov	eax,ebp
	push	eax
	push	_628
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_621
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_623
	call	_brl_blitz_NullObjectError
_623:
	mov	eax,dword [ebp-8]
	imul	eax,110
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	sub	esp,4
	fstp	dword [esp]
	push	0
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,12
	push	_624
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_626
	call	_brl_blitz_NullObjectError
_626:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	push	_627
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-8],1
	call	dword [_bbOnDebugLeaveScope]
_51:
	cmp	ebx,_bbNullObject
	jne	_618
	call	_brl_blitz_NullObjectError
_618:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_53
_52:
	call	dword [_bbOnDebugLeaveScope]
_608:
	push	_630
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_632
	call	_brl_blitz_NullObjectError
_632:
	cmp	dword [ebx+8],0
	jne	_633
	mov	eax,ebp
	push	eax
	push	_654
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_634
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_637
	call	_brl_blitz_NullObjectError
_637:
	mov	edi,dword [ebx+12]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_640
	call	_brl_blitz_NullObjectError
_640:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_54
_56:
	cmp	ebx,_bbNullObject
	jne	_645
	call	_brl_blitz_NullObjectError
_645:
	push	_bb_Tcard
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-16],eax
	cmp	dword [ebp-16],_bbNullObject
	je	_54
	mov	eax,ebp
	push	eax
	push	_653
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_646
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_648
	call	_brl_blitz_NullObjectError
_648:
	mov	eax,dword [ebp-8]
	imul	eax,110
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	sub	esp,4
	fstp	dword [esp]
	push	1146388480
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,12
	push	_649
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_651
	call	_brl_blitz_NullObjectError
_651:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	push	_652
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-8],1
	call	dword [_bbOnDebugLeaveScope]
_54:
	cmp	ebx,_bbNullObject
	jne	_643
	call	_brl_blitz_NullObjectError
_643:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_56
_55:
	call	dword [_bbOnDebugLeaveScope]
_633:
	mov	ebx,0
	jmp	_231
_231:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tcard_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_657
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Tcard
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
	mov	dword [eax+28],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+32],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+36],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+40],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+44],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+48],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+52],0
	push	ebp
	push	_656
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_234
_234:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tcard_Delete:
	push	ebp
	mov	ebp,esp
_237:
	mov	eax,0
	jmp	_658
_658:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tcard_clear:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	ebp
	push	_662
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_659
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_Tcard_list]
	cmp	ebx,_bbNullObject
	jne	_661
	call	_brl_blitz_NullObjectError
_661:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	mov	ebx,0
	jmp	_239
_239:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tcard_save_card:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_675
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_663
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_665
	call	_brl_blitz_NullObjectError
_665:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_668
	call	_brl_blitz_NullObjectError
_668:
	fld	dword [esi+8]
	fstp	dword [ebx+16]
	push	_669
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_671
	call	_brl_blitz_NullObjectError
_671:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_674
	call	_brl_blitz_NullObjectError
_674:
	fld	dword [esi+12]
	fstp	dword [ebx+20]
	mov	ebx,0
	jmp	_242
_242:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tcard_reset_card:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_688
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_676
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_678
	call	_brl_blitz_NullObjectError
_678:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_681
	call	_brl_blitz_NullObjectError
_681:
	fld	dword [esi+16]
	fstp	dword [ebx+8]
	push	_682
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_684
	call	_brl_blitz_NullObjectError
_684:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_687
	call	_brl_blitz_NullObjectError
_687:
	fld	dword [esi+20]
	fstp	dword [ebx+12]
	mov	ebx,0
	jmp	_245
_245:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tcard_move_card:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	push	ebp
	push	_697
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_689
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_691
	call	_brl_blitz_NullObjectError
_691:
	fld	dword [ebp-8]
	fstp	dword [ebx+8]
	push	_693
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_695
	call	_brl_blitz_NullObjectError
_695:
	fld	dword [ebp-12]
	fstp	dword [ebx+12]
	mov	ebx,0
	jmp	_250
_250:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tcard_CreateCard:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	push	ebp
	push	_726
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_700
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_Tcard
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-8],eax
	push	_702
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_Tcard_list]
	cmp	ebx,_bbNullObject
	jne	_704
	call	_brl_blitz_NullObjectError
_704:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_705
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_707
	call	_brl_blitz_NullObjectError
_707:
	mov	eax,dword [ebp-4]
	mov	dword [ebx+48],eax
	push	_709
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_711
	call	_brl_blitz_NullObjectError
_711:
	push	1000
	push	200
	call	_brl_random_Rand
	add	esp,8
	mov	dword [ebx+32],eax
	push	_713
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_715
	call	_brl_blitz_NullObjectError
_715:
	push	1000
	push	200
	call	_brl_random_Rand
	add	esp,8
	mov	dword [ebx+36],eax
	push	_717
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_719
	call	_brl_blitz_NullObjectError
_719:
	push	1000
	push	200
	call	_brl_random_Rand
	add	esp,8
	mov	dword [ebx+40],eax
	push	_721
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_723
	call	_brl_blitz_NullObjectError
_723:
	push	1000
	push	200
	call	_brl_random_Rand
	add	esp,8
	mov	dword [ebx+44],eax
	push	_725
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	jmp	_253
_253:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tcard_draw:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_812
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_728
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_bbNullObject
	mov	eax,dword [__bb_Tcard_list]
	mov	dword [ebp-8],eax
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_732
	call	_brl_blitz_NullObjectError
_732:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-12],eax
	jmp	_57
_59:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_737
	call	_brl_blitz_NullObjectError
_737:
	push	_bb_Tcard
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-4],eax
	cmp	dword [ebp-4],_bbNullObject
	je	_57
	mov	eax,ebp
	push	eax
	push	_811
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_738
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_reset_draw
	push	_739
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_741
	call	_brl_blitz_NullObjectError
_741:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_743
	call	_brl_blitz_NullObjectError
_743:
	push	0
	push	dword [ebx+12]
	push	dword [esi+8]
	push	dword [_bb_gfx_card_ruecken]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_744
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_746
	call	_brl_blitz_NullObjectError
_746:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_748
	call	_brl_blitz_NullObjectError
_748:
	push	100
	push	100
	fld	dword [esi+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebx+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_bb_ismouseover
	add	esp,16
	cmp	eax,0
	je	_749
	mov	eax,ebp
	push	eax
	push	_762
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_750
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_752
	call	_brl_blitz_NullObjectError
_752:
	cmp	dword [ebx+48],0
	jne	_753
	mov	eax,ebp
	push	eax
	push	_755
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_754
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	50
	push	50
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_753:
	push	_756
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_758
	call	_brl_blitz_NullObjectError
_758:
	cmp	dword [ebx+48],1
	jne	_759
	mov	eax,ebp
	push	eax
	push	_761
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_760
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	50
	push	50
	call	_brl_max2d_SetColor
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_759:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_763
_749:
	mov	eax,ebp
	push	eax
	push	_776
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_764
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_766
	call	_brl_blitz_NullObjectError
_766:
	cmp	dword [ebx+48],0
	jne	_767
	mov	eax,ebp
	push	eax
	push	_769
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_768
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_767:
	push	_770
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_772
	call	_brl_blitz_NullObjectError
_772:
	cmp	dword [ebx+48],1
	jne	_773
	mov	eax,ebp
	push	eax
	push	_775
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_774
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_773:
	call	dword [_bbOnDebugLeaveScope]
_763:
	push	_777
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_779
	call	_brl_blitz_NullObjectError
_779:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_781
	call	_brl_blitz_NullObjectError
_781:
	push	0
	push	dword [ebx+12]
	push	dword [esi+8]
	push	dword [_bb_gfx_card_deckung]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_782
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_783
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_785
	call	_brl_blitz_NullObjectError
_785:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_787
	call	_brl_blitz_NullObjectError
_787:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_789
	call	_brl_blitz_NullObjectError
_789:
	fld	dword [ebx+12]
	fadd	dword [_1373]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [esi+8]
	fadd	dword [_1374]
	sub	esp,4
	fstp	dword [esp]
	push	dword [edi+32]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_790
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_792
	call	_brl_blitz_NullObjectError
_792:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_794
	call	_brl_blitz_NullObjectError
_794:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_796
	call	_brl_blitz_NullObjectError
_796:
	fld	dword [ebx+12]
	fadd	dword [_1375]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [esi+8]
	fadd	dword [_1376]
	sub	esp,4
	fstp	dword [esp]
	push	dword [edi+40]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_797
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_799
	call	_brl_blitz_NullObjectError
_799:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_801
	call	_brl_blitz_NullObjectError
_801:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_803
	call	_brl_blitz_NullObjectError
_803:
	fld	dword [ebx+12]
	fadd	dword [_1377]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [esi+8]
	fadd	dword [_1378]
	sub	esp,4
	fstp	dword [esp]
	push	dword [edi+36]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_804
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_806
	call	_brl_blitz_NullObjectError
_806:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_808
	call	_brl_blitz_NullObjectError
_808:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_810
	call	_brl_blitz_NullObjectError
_810:
	fld	dword [ebx+12]
	fadd	dword [_1379]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [esi+8]
	fadd	dword [_1380]
	sub	esp,4
	fstp	dword [esp]
	push	dword [edi+44]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_57:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_735
	call	_brl_blitz_NullObjectError
_735:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_59
_58:
	mov	ebx,0
	jmp	_255
_255:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tcard_dragndrop:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_868
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_813
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-4],0
	je	_814
	mov	eax,ebp
	push	eax
	push	_851
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_815
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [__bb_Tcard_draged_card],_bbNullObject
	jne	_816
	mov	eax,ebp
	push	eax
	push	_845
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_817
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_bbNullObject
	mov	eax,dword [__bb_Tcard_list]
	mov	dword [ebp-12],eax
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_821
	call	_brl_blitz_NullObjectError
_821:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_60
_62:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_826
	call	_brl_blitz_NullObjectError
_826:
	push	_bb_Tcard
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-8],eax
	cmp	dword [ebp-8],_bbNullObject
	je	_60
	mov	eax,ebp
	push	eax
	push	_844
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_827
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_829
	call	_brl_blitz_NullObjectError
_829:
	cmp	dword [ebx+52],0
	jne	_830
	mov	eax,ebp
	push	eax
	push	_843
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_831
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_833
	call	_brl_blitz_NullObjectError
_833:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_835
	call	_brl_blitz_NullObjectError
_835:
	push	100
	push	100
	fld	dword [ebx+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [esi+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_bb_ismouseover
	add	esp,16
	cmp	eax,0
	je	_836
	mov	eax,ebp
	push	eax
	push	_842
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_837
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	inc	dword [ebx+4]
	mov	eax,dword [__bb_Tcard_draged_card]
	dec	dword [eax+4]
	jnz	_841
	push	eax
	call	_bbGCFree
	add	esp,4
_841:
	mov	dword [__bb_Tcard_draged_card],ebx
	call	dword [_bbOnDebugLeaveScope]
_836:
	call	dword [_bbOnDebugLeaveScope]
_830:
	call	dword [_bbOnDebugLeaveScope]
_60:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_824
	call	_brl_blitz_NullObjectError
_824:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_62
_61:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_846
_816:
	mov	eax,ebp
	push	eax
	push	_850
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_847
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_Tcard_draged_card]
	cmp	ebx,_bbNullObject
	jne	_849
	call	_brl_blitz_NullObjectError
_849:
	call	_brl_polledinput_MouseY
	sub	eax,50
	mov	dword [ebp+-16],eax
	fild	dword [ebp+-16]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_polledinput_MouseX
	sub	eax,50
	mov	dword [ebp+-16],eax
	fild	dword [ebp+-16]
	sub	esp,4
	fstp	dword [esp]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_846:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_852
_814:
	mov	eax,ebp
	push	eax
	push	_867
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_853
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [__bb_Tcard_draged_card],_bbNullObject
	je	_854
	mov	eax,ebp
	push	eax
	push	_861
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_855
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [__bb_Tcard_draged_card]
	call	dword [_bb_Tgamefield+60]
	add	esp,4
	cmp	eax,0
	jne	_856
	mov	eax,ebp
	push	eax
	push	_860
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_857
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_Tcard_draged_card]
	cmp	ebx,_bbNullObject
	jne	_859
	call	_brl_blitz_NullObjectError
_859:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_856:
	call	dword [_bbOnDebugLeaveScope]
_854:
	push	_862
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [__bb_Tcard_draged_card]
	dec	dword [eax+4]
	jnz	_866
	push	eax
	call	_bbGCFree
	add	esp,4
_866:
	mov	dword [__bb_Tcard_draged_card],ebx
	call	dword [_bbOnDebugLeaveScope]
_852:
	mov	ebx,0
	jmp	_258
_258:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tgamefield_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_871
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Tgamefield
	push	ebp
	push	_870
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_261
_261:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tgamefield_Delete:
	push	ebp
	mov	ebp,esp
_264:
	mov	eax,0
	jmp	_873
_873:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tgamefield_check_win:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	push	esi
	mov	dword [ebp-4],0
	mov	dword [ebp-8],0
	mov	dword [ebp-12],0
	mov	dword [ebp-16],0
	mov	dword [ebp-20],0
	mov	eax,ebp
	push	eax
	push	_932
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_874
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	push	_876
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	push	_878
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	push	_880
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	mov	dword [ebp-16],0
	jmp	_882
_65:
	mov	eax,ebp
	push	eax
	push	_916
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_883
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	mov	dword [ebp-20],0
	jmp	_885
_68:
	mov	eax,ebp
	push	eax
	push	_914
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_886
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	mov	eax,dword [__bb_Tgamefield_field_card]
	imul	ebx,dword [eax+24]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	ebx,dword [eax+20]
	jb	_888
	call	_brl_blitz_ArrayBoundsError
_888:
	mov	esi,dword [ebp-20]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	esi,dword [eax+24]
	jb	_890
	call	_brl_blitz_ArrayBoundsError
_890:
	mov	eax,dword [__bb_Tgamefield_field_card]
	add	ebx,esi
	cmp	dword [eax+ebx*4+28],_bbNullObject
	je	_891
	mov	eax,ebp
	push	eax
	push	_913
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_892
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-4],1
	push	_893
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	mov	eax,dword [__bb_Tgamefield_field_card]
	imul	ebx,dword [eax+24]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	ebx,dword [eax+20]
	jb	_895
	call	_brl_blitz_ArrayBoundsError
_895:
	mov	esi,dword [ebp-20]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	esi,dword [eax+24]
	jb	_897
	call	_brl_blitz_ArrayBoundsError
_897:
	mov	eax,dword [__bb_Tgamefield_field_card]
	add	ebx,esi
	mov	ebx,dword [eax+ebx*4+28]
	cmp	ebx,_bbNullObject
	jne	_899
	call	_brl_blitz_NullObjectError
_899:
	cmp	dword [ebx+48],0
	jne	_900
	mov	eax,ebp
	push	eax
	push	_902
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_901
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-8],1
	call	dword [_bbOnDebugLeaveScope]
_900:
	push	_903
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	mov	eax,dword [__bb_Tgamefield_field_card]
	imul	ebx,dword [eax+24]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	ebx,dword [eax+20]
	jb	_905
	call	_brl_blitz_ArrayBoundsError
_905:
	mov	esi,dword [ebp-20]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	esi,dword [eax+24]
	jb	_907
	call	_brl_blitz_ArrayBoundsError
_907:
	mov	eax,dword [__bb_Tgamefield_field_card]
	add	ebx,esi
	mov	ebx,dword [eax+ebx*4+28]
	cmp	ebx,_bbNullObject
	jne	_909
	call	_brl_blitz_NullObjectError
_909:
	cmp	dword [ebx+48],1
	jne	_910
	mov	eax,ebp
	push	eax
	push	_912
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_911
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-12],1
	call	dword [_bbOnDebugLeaveScope]
_910:
	call	dword [_bbOnDebugLeaveScope]
_891:
	call	dword [_bbOnDebugLeaveScope]
_66:
	add	dword [ebp-20],1
_885:
	cmp	dword [ebp-20],2
	jle	_68
_67:
	call	dword [_bbOnDebugLeaveScope]
_63:
	add	dword [ebp-16],1
_882:
	cmp	dword [ebp-16],2
	jle	_65
_64:
	push	_918
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-4],9
	jne	_919
	mov	eax,ebp
	push	eax
	push	_931
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_920
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	cmp	dword [ebp-8],eax
	jne	_921
	mov	eax,ebp
	push	eax
	push	_923
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_922
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_266
_921:
	push	_924
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	cmp	dword [ebp-8],eax
	jle	_925
	mov	eax,ebp
	push	eax
	push	_927
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_926
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_266
_925:
	mov	eax,ebp
	push	eax
	push	_930
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_929
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_266
_919:
	mov	ebx,0
	jmp	_266
_266:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tgamefield_clear:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	mov	dword [ebp-4],0
	mov	dword [ebp-8],0
	mov	eax,ebp
	push	eax
	push	_955
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_936
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	mov	dword [ebp-4],0
	jmp	_938
_71:
	mov	eax,ebp
	push	eax
	push	_953
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_939
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	mov	dword [ebp-8],0
	jmp	_941
_74:
	mov	eax,ebp
	push	eax
	push	_952
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_942
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	mov	eax,dword [__bb_Tgamefield_field_card]
	imul	esi,dword [eax+24]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	esi,dword [eax+20]
	jb	_944
	call	_brl_blitz_ArrayBoundsError
_944:
	mov	ebx,dword [ebp-8]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	ebx,dword [eax+24]
	jb	_946
	call	_brl_blitz_ArrayBoundsError
_946:
	mov	eax,dword [__bb_Tgamefield_field_card]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	esi,_bbNullObject
	inc	dword [esi+4]
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_951
	push	eax
	call	_bbGCFree
	add	esp,4
_951:
	mov	dword [ebx+28],esi
	call	dword [_bbOnDebugLeaveScope]
_72:
	add	dword [ebp-8],1
_941:
	cmp	dword [ebp-8],2
	jle	_74
_73:
	call	dword [_bbOnDebugLeaveScope]
_69:
	add	dword [ebp-4],1
_938:
	cmp	dword [ebp-4],2
	jle	_71
_70:
	push	_954
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	push	0
	call	_brl_random_Rand
	add	esp,8
	mov	dword [__bb_Tgamefield_player_onmove],eax
	mov	ebx,0
	jmp	_268
_268:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tgamefield_draw:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	ebp
	push	_977
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_956
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_reset_draw
	push	_957
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ecx,2
	mov	eax,dword [__bb_Tgamefield_player_onmove]
	cdq
	idiv	ecx
	cmp	edx,0
	je	_958
	push	ebp
	push	_960
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_959
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	126
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
	jmp	_961
_958:
	push	ebp
	push	_963
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_962
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	126
	call	_brl_max2d_SetColor
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_961:
	push	_964
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1142620160
	push	1142620160
	push	dword [__bb_Tgamefield_y]
	push	dword [__bb_Tgamefield_x]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_965
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_reset_draw
	push	_966
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_967
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1056964608
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_968
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1128792064
	push	1128792064
	fld	dword [__bb_Tgamefield_y]
	fadd	dword [_1458]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [__bb_Tgamefield_x]
	fadd	dword [_1459]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_969
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1128792064
	push	1128792064
	fld	dword [__bb_Tgamefield_y]
	fadd	dword [_1460]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [__bb_Tgamefield_x]
	fadd	dword [_1461]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_970
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1128792064
	push	1128792064
	fld	dword [__bb_Tgamefield_y]
	fadd	dword [_1462]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [__bb_Tgamefield_x]
	fadd	dword [_1463]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_971
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1128792064
	push	1128792064
	fld	dword [__bb_Tgamefield_y]
	fadd	dword [_1464]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [__bb_Tgamefield_x]
	fadd	dword [_1465]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_972
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1128792064
	push	1128792064
	fld	dword [__bb_Tgamefield_y]
	fadd	dword [_1466]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [__bb_Tgamefield_x]
	fadd	dword [_1467]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_973
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1128792064
	push	1128792064
	fld	dword [__bb_Tgamefield_y]
	fadd	dword [_1468]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [__bb_Tgamefield_x]
	fadd	dword [_1469]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_974
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1128792064
	push	1128792064
	fld	dword [__bb_Tgamefield_y]
	fadd	dword [_1470]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [__bb_Tgamefield_x]
	fadd	dword [_1471]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_975
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1128792064
	push	1128792064
	fld	dword [__bb_Tgamefield_y]
	fadd	dword [_1472]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [__bb_Tgamefield_x]
	fadd	dword [_1473]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_976
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1128792064
	push	1128792064
	fld	dword [__bb_Tgamefield_y]
	fadd	dword [_1474]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [__bb_Tgamefield_x]
	fadd	dword [_1475]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	mov	ebx,0
	jmp	_270
_270:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tgamefield_drop_card:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],0
	mov	dword [ebp-12],0
	mov	dword [ebp-16],0
	mov	eax,ebp
	push	eax
	push	_1197
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_978
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ecx,2
	mov	eax,dword [__bb_Tgamefield_player_onmove]
	cdq
	idiv	ecx
	mov	eax,edx
	mov	dword [ebp-8],eax
	push	_980
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_982
	call	_brl_blitz_NullObjectError
_982:
	mov	eax,dword [ebp-8]
	cmp	dword [ebx+48],eax
	jne	_983
	mov	eax,ebp
	push	eax
	push	_1195
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_984
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	dword [ebp-12],0
	jmp	_986
_77:
	mov	eax,ebp
	push	eax
	push	_1194
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_987
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	mov	dword [ebp-16],0
	jmp	_989
_80:
	mov	eax,ebp
	push	eax
	push	_1193
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_990
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_992
	call	_brl_blitz_NullObjectError
_992:
	mov	eax,dword [ebp-12]
	imul	eax,210
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fadd	dword [__bb_Tgamefield_x]
	fld	dword [ebx+8]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	je	_995
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_994
	call	_brl_blitz_NullObjectError
_994:
	mov	eax,dword [ebp-12]
	imul	eax,210
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fadd	dword [__bb_Tgamefield_x]
	fadd	dword [_1479]
	fld	dword [ebx+8]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
_995:
	cmp	eax,0
	je	_997
	mov	eax,ebp
	push	eax
	push	_1192
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_998
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1000
	call	_brl_blitz_NullObjectError
_1000:
	mov	eax,dword [ebp-16]
	imul	eax,210
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fadd	dword [__bb_Tgamefield_y]
	fld	dword [ebx+12]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	je	_1003
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1002
	call	_brl_blitz_NullObjectError
_1002:
	mov	eax,dword [ebp-16]
	imul	eax,210
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fadd	dword [__bb_Tgamefield_y]
	fadd	dword [_1480]
	fld	dword [ebx+12]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
_1003:
	cmp	eax,0
	je	_1005
	mov	eax,ebp
	push	eax
	push	_1191
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1006
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	mov	eax,dword [__bb_Tgamefield_field_card]
	imul	ebx,dword [eax+24]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	ebx,dword [eax+20]
	jb	_1008
	call	_brl_blitz_ArrayBoundsError
_1008:
	mov	esi,dword [ebp-16]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	esi,dword [eax+24]
	jb	_1010
	call	_brl_blitz_ArrayBoundsError
_1010:
	mov	eax,dword [__bb_Tgamefield_field_card]
	add	ebx,esi
	cmp	dword [eax+ebx*4+28],_bbNullObject
	jne	_1011
	mov	eax,ebp
	push	eax
	push	_1190
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1012
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	mov	eax,dword [__bb_Tgamefield_field_card]
	imul	esi,dword [eax+24]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	esi,dword [eax+20]
	jb	_1014
	call	_brl_blitz_ArrayBoundsError
_1014:
	mov	ebx,dword [ebp-16]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	ebx,dword [eax+24]
	jb	_1016
	call	_brl_blitz_ArrayBoundsError
_1016:
	mov	eax,dword [__bb_Tgamefield_field_card]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	esi,dword [ebp-4]
	inc	dword [esi+4]
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_1021
	push	eax
	call	_bbGCFree
	add	esp,4
_1021:
	mov	dword [ebx+28],esi
	push	_1022
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1024
	call	_brl_blitz_NullObjectError
_1024:
	mov	eax,dword [ebp-16]
	imul	eax,210
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fadd	dword [__bb_Tgamefield_y]
	fadd	dword [_1481]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-12]
	imul	eax,210
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fadd	dword [__bb_Tgamefield_x]
	fadd	dword [_1482]
	sub	esp,4
	fstp	dword [esp]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,12
	push	_1025
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1027
	call	_brl_blitz_NullObjectError
_1027:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_1028
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1030
	call	_brl_blitz_NullObjectError
_1030:
	mov	dword [ebx+52],1
	push	_1032
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [__bb_Tgamefield_player_onmove],1
	push	_1033
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	sub	eax,1
	cmp	eax,0
	jl	_1034
	mov	eax,ebp
	push	eax
	push	_1071
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1035
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	mov	eax,dword [__bb_Tgamefield_field_card]
	imul	esi,dword [eax+24]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	esi,dword [eax+20]
	jb	_1037
	call	_brl_blitz_ArrayBoundsError
_1037:
	mov	ebx,dword [ebp-16]
	sub	ebx,1
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	ebx,dword [eax+24]
	jb	_1039
	call	_brl_blitz_ArrayBoundsError
_1039:
	mov	eax,dword [__bb_Tgamefield_field_card]
	add	esi,ebx
	cmp	dword [eax+esi*4+28],_bbNullObject
	je	_1040
	mov	eax,ebp
	push	eax
	push	_1070
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1041
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	mov	eax,dword [__bb_Tgamefield_field_card]
	imul	ebx,dword [eax+24]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	ebx,dword [eax+20]
	jb	_1043
	call	_brl_blitz_ArrayBoundsError
_1043:
	mov	esi,dword [ebp-16]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	esi,dword [eax+24]
	jb	_1045
	call	_brl_blitz_ArrayBoundsError
_1045:
	mov	eax,dword [__bb_Tgamefield_field_card]
	add	ebx,esi
	mov	edi,dword [eax+ebx*4+28]
	cmp	edi,_bbNullObject
	jne	_1047
	call	_brl_blitz_NullObjectError
_1047:
	mov	eax,dword [ebp-12]
	mov	edx,dword [__bb_Tgamefield_field_card]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	esi,dword [eax+20]
	jb	_1049
	call	_brl_blitz_ArrayBoundsError
_1049:
	mov	eax,dword [ebp-16]
	sub	eax,1
	mov	ebx,eax
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	ebx,dword [eax+24]
	jb	_1051
	call	_brl_blitz_ArrayBoundsError
_1051:
	mov	edx,dword [__bb_Tgamefield_field_card]
	mov	eax,esi
	add	eax,ebx
	mov	ebx,dword [edx+eax*4+28]
	cmp	ebx,_bbNullObject
	jne	_1053
	call	_brl_blitz_NullObjectError
_1053:
	mov	eax,dword [ebx+36]
	cmp	dword [edi+32],eax
	jle	_1054
	mov	eax,ebp
	push	eax
	push	_1069
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1055
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	mov	eax,dword [__bb_Tgamefield_field_card]
	imul	esi,dword [eax+24]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	esi,dword [eax+20]
	jb	_1057
	call	_brl_blitz_ArrayBoundsError
_1057:
	mov	ebx,dword [ebp-16]
	sub	ebx,1
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	ebx,dword [eax+24]
	jb	_1059
	call	_brl_blitz_ArrayBoundsError
_1059:
	mov	eax,dword [__bb_Tgamefield_field_card]
	add	esi,ebx
	mov	ebx,dword [eax+esi*4+28]
	cmp	ebx,_bbNullObject
	jne	_1061
	call	_brl_blitz_NullObjectError
_1061:
	mov	edi,ebx
	mov	eax,dword [ebp-12]
	mov	edx,dword [__bb_Tgamefield_field_card]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	esi,dword [eax+20]
	jb	_1064
	call	_brl_blitz_ArrayBoundsError
_1064:
	mov	ebx,dword [ebp-16]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	ebx,dword [eax+24]
	jb	_1066
	call	_brl_blitz_ArrayBoundsError
_1066:
	mov	edx,dword [__bb_Tgamefield_field_card]
	mov	eax,esi
	add	eax,ebx
	mov	ebx,dword [edx+eax*4+28]
	cmp	ebx,_bbNullObject
	jne	_1068
	call	_brl_blitz_NullObjectError
_1068:
	mov	eax,dword [ebx+48]
	mov	dword [edi+48],eax
	call	dword [_bbOnDebugLeaveScope]
_1054:
	call	dword [_bbOnDebugLeaveScope]
_1040:
	call	dword [_bbOnDebugLeaveScope]
_1034:
	push	_1072
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	add	eax,1
	cmp	eax,2
	jg	_1073
	mov	eax,ebp
	push	eax
	push	_1110
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1074
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	mov	eax,dword [__bb_Tgamefield_field_card]
	imul	esi,dword [eax+24]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	esi,dword [eax+20]
	jb	_1076
	call	_brl_blitz_ArrayBoundsError
_1076:
	mov	ebx,dword [ebp-16]
	add	ebx,1
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	ebx,dword [eax+24]
	jb	_1078
	call	_brl_blitz_ArrayBoundsError
_1078:
	mov	eax,dword [__bb_Tgamefield_field_card]
	add	esi,ebx
	cmp	dword [eax+esi*4+28],_bbNullObject
	je	_1079
	mov	eax,ebp
	push	eax
	push	_1109
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1080
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	mov	eax,dword [__bb_Tgamefield_field_card]
	imul	ebx,dword [eax+24]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	ebx,dword [eax+20]
	jb	_1082
	call	_brl_blitz_ArrayBoundsError
_1082:
	mov	esi,dword [ebp-16]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	esi,dword [eax+24]
	jb	_1084
	call	_brl_blitz_ArrayBoundsError
_1084:
	mov	eax,dword [__bb_Tgamefield_field_card]
	add	ebx,esi
	mov	edi,dword [eax+ebx*4+28]
	cmp	edi,_bbNullObject
	jne	_1086
	call	_brl_blitz_NullObjectError
_1086:
	mov	eax,dword [ebp-12]
	mov	edx,dword [__bb_Tgamefield_field_card]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	esi,dword [eax+20]
	jb	_1088
	call	_brl_blitz_ArrayBoundsError
_1088:
	mov	eax,dword [ebp-16]
	add	eax,1
	mov	ebx,eax
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	ebx,dword [eax+24]
	jb	_1090
	call	_brl_blitz_ArrayBoundsError
_1090:
	mov	edx,dword [__bb_Tgamefield_field_card]
	mov	eax,esi
	add	eax,ebx
	mov	ebx,dword [edx+eax*4+28]
	cmp	ebx,_bbNullObject
	jne	_1092
	call	_brl_blitz_NullObjectError
_1092:
	mov	eax,dword [ebx+32]
	cmp	dword [edi+36],eax
	jle	_1093
	mov	eax,ebp
	push	eax
	push	_1108
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1094
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	mov	eax,dword [__bb_Tgamefield_field_card]
	imul	esi,dword [eax+24]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	esi,dword [eax+20]
	jb	_1096
	call	_brl_blitz_ArrayBoundsError
_1096:
	mov	ebx,dword [ebp-16]
	add	ebx,1
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	ebx,dword [eax+24]
	jb	_1098
	call	_brl_blitz_ArrayBoundsError
_1098:
	mov	eax,dword [__bb_Tgamefield_field_card]
	add	esi,ebx
	mov	ebx,dword [eax+esi*4+28]
	cmp	ebx,_bbNullObject
	jne	_1100
	call	_brl_blitz_NullObjectError
_1100:
	mov	edi,ebx
	mov	eax,dword [ebp-12]
	mov	edx,dword [__bb_Tgamefield_field_card]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	esi,dword [eax+20]
	jb	_1103
	call	_brl_blitz_ArrayBoundsError
_1103:
	mov	ebx,dword [ebp-16]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	ebx,dword [eax+24]
	jb	_1105
	call	_brl_blitz_ArrayBoundsError
_1105:
	mov	edx,dword [__bb_Tgamefield_field_card]
	mov	eax,esi
	add	eax,ebx
	mov	ebx,dword [edx+eax*4+28]
	cmp	ebx,_bbNullObject
	jne	_1107
	call	_brl_blitz_NullObjectError
_1107:
	mov	eax,dword [ebx+48]
	mov	dword [edi+48],eax
	call	dword [_bbOnDebugLeaveScope]
_1093:
	call	dword [_bbOnDebugLeaveScope]
_1079:
	call	dword [_bbOnDebugLeaveScope]
_1073:
	push	_1111
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	add	eax,1
	cmp	eax,2
	jg	_1112
	mov	eax,ebp
	push	eax
	push	_1149
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1113
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	add	ebx,1
	mov	eax,dword [__bb_Tgamefield_field_card]
	imul	ebx,dword [eax+24]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	ebx,dword [eax+20]
	jb	_1115
	call	_brl_blitz_ArrayBoundsError
_1115:
	mov	esi,dword [ebp-16]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	esi,dword [eax+24]
	jb	_1117
	call	_brl_blitz_ArrayBoundsError
_1117:
	mov	eax,dword [__bb_Tgamefield_field_card]
	add	ebx,esi
	cmp	dword [eax+ebx*4+28],_bbNullObject
	je	_1118
	mov	eax,ebp
	push	eax
	push	_1148
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1119
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	mov	eax,dword [__bb_Tgamefield_field_card]
	imul	ebx,dword [eax+24]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	ebx,dword [eax+20]
	jb	_1121
	call	_brl_blitz_ArrayBoundsError
_1121:
	mov	esi,dword [ebp-16]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	esi,dword [eax+24]
	jb	_1123
	call	_brl_blitz_ArrayBoundsError
_1123:
	mov	eax,dword [__bb_Tgamefield_field_card]
	add	ebx,esi
	mov	edi,dword [eax+ebx*4+28]
	cmp	edi,_bbNullObject
	jne	_1125
	call	_brl_blitz_NullObjectError
_1125:
	mov	eax,dword [ebp-12]
	add	eax,1
	mov	edx,dword [__bb_Tgamefield_field_card]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	esi,dword [eax+20]
	jb	_1127
	call	_brl_blitz_ArrayBoundsError
_1127:
	mov	ebx,dword [ebp-16]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	ebx,dword [eax+24]
	jb	_1129
	call	_brl_blitz_ArrayBoundsError
_1129:
	mov	edx,dword [__bb_Tgamefield_field_card]
	mov	eax,esi
	add	eax,ebx
	mov	ebx,dword [edx+eax*4+28]
	cmp	ebx,_bbNullObject
	jne	_1131
	call	_brl_blitz_NullObjectError
_1131:
	mov	eax,dword [ebx+44]
	cmp	dword [edi+40],eax
	jle	_1132
	mov	eax,ebp
	push	eax
	push	_1147
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1133
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	add	ebx,1
	mov	eax,dword [__bb_Tgamefield_field_card]
	imul	ebx,dword [eax+24]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	ebx,dword [eax+20]
	jb	_1135
	call	_brl_blitz_ArrayBoundsError
_1135:
	mov	esi,dword [ebp-16]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	esi,dword [eax+24]
	jb	_1137
	call	_brl_blitz_ArrayBoundsError
_1137:
	mov	eax,dword [__bb_Tgamefield_field_card]
	add	ebx,esi
	mov	ebx,dword [eax+ebx*4+28]
	cmp	ebx,_bbNullObject
	jne	_1139
	call	_brl_blitz_NullObjectError
_1139:
	mov	edi,ebx
	mov	eax,dword [ebp-12]
	mov	edx,dword [__bb_Tgamefield_field_card]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	esi,dword [eax+20]
	jb	_1142
	call	_brl_blitz_ArrayBoundsError
_1142:
	mov	ebx,dword [ebp-16]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	ebx,dword [eax+24]
	jb	_1144
	call	_brl_blitz_ArrayBoundsError
_1144:
	mov	edx,dword [__bb_Tgamefield_field_card]
	mov	eax,esi
	add	eax,ebx
	mov	ebx,dword [edx+eax*4+28]
	cmp	ebx,_bbNullObject
	jne	_1146
	call	_brl_blitz_NullObjectError
_1146:
	mov	eax,dword [ebx+48]
	mov	dword [edi+48],eax
	call	dword [_bbOnDebugLeaveScope]
_1132:
	call	dword [_bbOnDebugLeaveScope]
_1118:
	call	dword [_bbOnDebugLeaveScope]
_1112:
	push	_1150
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	sub	eax,1
	cmp	eax,0
	jl	_1151
	mov	eax,ebp
	push	eax
	push	_1188
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1152
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	sub	ebx,1
	mov	eax,dword [__bb_Tgamefield_field_card]
	imul	ebx,dword [eax+24]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	ebx,dword [eax+20]
	jb	_1154
	call	_brl_blitz_ArrayBoundsError
_1154:
	mov	esi,dword [ebp-16]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	esi,dword [eax+24]
	jb	_1156
	call	_brl_blitz_ArrayBoundsError
_1156:
	mov	eax,dword [__bb_Tgamefield_field_card]
	add	ebx,esi
	cmp	dword [eax+ebx*4+28],_bbNullObject
	je	_1157
	mov	eax,ebp
	push	eax
	push	_1187
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1158
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	mov	eax,dword [__bb_Tgamefield_field_card]
	imul	ebx,dword [eax+24]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	ebx,dword [eax+20]
	jb	_1160
	call	_brl_blitz_ArrayBoundsError
_1160:
	mov	esi,dword [ebp-16]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	esi,dword [eax+24]
	jb	_1162
	call	_brl_blitz_ArrayBoundsError
_1162:
	mov	eax,dword [__bb_Tgamefield_field_card]
	add	ebx,esi
	mov	edi,dword [eax+ebx*4+28]
	cmp	edi,_bbNullObject
	jne	_1164
	call	_brl_blitz_NullObjectError
_1164:
	mov	eax,dword [ebp-12]
	sub	eax,1
	mov	edx,dword [__bb_Tgamefield_field_card]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	esi,dword [eax+20]
	jb	_1166
	call	_brl_blitz_ArrayBoundsError
_1166:
	mov	ebx,dword [ebp-16]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	ebx,dword [eax+24]
	jb	_1168
	call	_brl_blitz_ArrayBoundsError
_1168:
	mov	edx,dword [__bb_Tgamefield_field_card]
	mov	eax,esi
	add	eax,ebx
	mov	ebx,dword [edx+eax*4+28]
	cmp	ebx,_bbNullObject
	jne	_1170
	call	_brl_blitz_NullObjectError
_1170:
	mov	eax,dword [ebx+40]
	cmp	dword [edi+44],eax
	jle	_1171
	mov	eax,ebp
	push	eax
	push	_1186
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1172
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	sub	ebx,1
	mov	eax,dword [__bb_Tgamefield_field_card]
	imul	ebx,dword [eax+24]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	ebx,dword [eax+20]
	jb	_1174
	call	_brl_blitz_ArrayBoundsError
_1174:
	mov	esi,dword [ebp-16]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	esi,dword [eax+24]
	jb	_1176
	call	_brl_blitz_ArrayBoundsError
_1176:
	mov	eax,dword [__bb_Tgamefield_field_card]
	add	ebx,esi
	mov	ebx,dword [eax+ebx*4+28]
	cmp	ebx,_bbNullObject
	jne	_1178
	call	_brl_blitz_NullObjectError
_1178:
	mov	edi,ebx
	mov	eax,dword [ebp-12]
	mov	edx,dword [__bb_Tgamefield_field_card]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	esi,dword [eax+20]
	jb	_1181
	call	_brl_blitz_ArrayBoundsError
_1181:
	mov	ebx,dword [ebp-16]
	mov	eax,dword [__bb_Tgamefield_field_card]
	cmp	ebx,dword [eax+24]
	jb	_1183
	call	_brl_blitz_ArrayBoundsError
_1183:
	mov	edx,dword [__bb_Tgamefield_field_card]
	mov	eax,esi
	add	eax,ebx
	mov	ebx,dword [edx+eax*4+28]
	cmp	ebx,_bbNullObject
	jne	_1185
	call	_brl_blitz_NullObjectError
_1185:
	mov	eax,dword [ebx+48]
	mov	dword [edi+48],eax
	call	dword [_bbOnDebugLeaveScope]
_1171:
	call	dword [_bbOnDebugLeaveScope]
_1157:
	call	dword [_bbOnDebugLeaveScope]
_1151:
	push	_1189
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_273
_1011:
	call	dword [_bbOnDebugLeaveScope]
_1005:
	call	dword [_bbOnDebugLeaveScope]
_997:
	call	dword [_bbOnDebugLeaveScope]
_78:
	add	dword [ebp-16],1
_989:
	cmp	dword [ebp-16],2
	jle	_80
_79:
	call	dword [_bbOnDebugLeaveScope]
_75:
	add	dword [ebp-12],1
_986:
	cmp	dword [ebp-12],2
	jle	_77
_76:
	call	dword [_bbOnDebugLeaveScope]
_983:
	push	_1196
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	jmp	_273
_273:
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
_433:
	dd	0
_409:
	db	"Final",0
_410:
	db	"My",0
_411:
	db	":z_My_a993b8d3_77d3_4f58_970e_98ea79a8db33",0
	align	4
_293:
	dd	_bbNullObject
_412:
	db	"screenx",0
_133:
	db	"f",0
	align	4
_bb_screenx:
	dd	0x44800000
_413:
	db	"screeny",0
	align	4
_bb_screeny:
	dd	0x44400000
_414:
	db	"pointx",0
	align	4
_bb_pointx:
	dd	0x0
_415:
	db	"pointy",0
	align	4
_bb_pointy:
	dd	0x0
_416:
	db	"fenster",0
_417:
	db	":brl.graphics.TGraphics",0
	align	4
_bb_fenster:
	dd	_bbNullObject
_418:
	db	"player_red",0
_419:
	db	":Tplayer",0
	align	4
_bb_player_red:
	dd	_bbNullObject
_420:
	db	"player_blue",0
	align	4
_bb_player_blue:
	dd	_bbNullObject
_421:
	db	"gfx_card_deckung",0
_422:
	db	":brl.max2d.TImage",0
	align	4
_bb_gfx_card_deckung:
	dd	_bbNullObject
_423:
	db	"gfx_card_ruecken",0
	align	4
_bb_gfx_card_ruecken:
	dd	_bbNullObject
_424:
	db	"gfx_card_farbe",0
	align	4
_bb_gfx_card_farbe:
	dd	_bbNullObject
_425:
	db	"game_mode",0
_104:
	db	"i",0
	align	4
_bb_game_mode:
	dd	0
_426:
	db	"win",0
	align	4
_bb_win:
	dd	0
_427:
	db	"mh1",0
	align	4
_bb_mh1:
	dd	0
_428:
	db	"md1",0
	align	4
_bb_md1:
	dd	0
_429:
	db	"msctimer",0
	align	4
_bb_msctimer:
	dd	0
_430:
	db	"msc",0
	align	4
_bb_msc:
	dd	0
_431:
	db	"lasttime",0
	align	4
_bb_lasttime:
	dd	0
_432:
	db	"time",0
	align	4
_bb_time:
	dd	0
	align	4
_408:
	dd	1
	dd	_409
	dd	4
	dd	_410
	dd	_411
	dd	_293
	dd	4
	dd	_412
	dd	_133
	dd	_bb_screenx
	dd	4
	dd	_413
	dd	_133
	dd	_bb_screeny
	dd	4
	dd	_414
	dd	_133
	dd	_bb_pointx
	dd	4
	dd	_415
	dd	_133
	dd	_bb_pointy
	dd	4
	dd	_416
	dd	_417
	dd	_bb_fenster
	dd	4
	dd	_418
	dd	_419
	dd	_bb_player_red
	dd	4
	dd	_420
	dd	_419
	dd	_bb_player_blue
	dd	4
	dd	_421
	dd	_422
	dd	_bb_gfx_card_deckung
	dd	4
	dd	_423
	dd	_422
	dd	_bb_gfx_card_ruecken
	dd	4
	dd	_424
	dd	_422
	dd	_bb_gfx_card_farbe
	dd	4
	dd	_425
	dd	_104
	dd	_bb_game_mode
	dd	4
	dd	_426
	dd	_104
	dd	_bb_win
	dd	4
	dd	_427
	dd	_104
	dd	_bb_mh1
	dd	4
	dd	_428
	dd	_104
	dd	_bb_md1
	dd	4
	dd	_429
	dd	_104
	dd	_bb_msctimer
	dd	4
	dd	_430
	dd	_104
	dd	_bb_msc
	dd	4
	dd	_431
	dd	_104
	dd	_bb_lasttime
	dd	4
	dd	_432
	dd	_104
	dd	_bb_time
	dd	0
_94:
	db	"z_a993b8d3_77d3_4f58_970e_98ea79a8db33_3_0",0
_95:
	db	"New",0
_96:
	db	"()i",0
_97:
	db	"Delete",0
	align	4
_93:
	dd	2
	dd	_94
	dd	6
	dd	_95
	dd	_96
	dd	16
	dd	6
	dd	_97
	dd	_96
	dd	20
	dd	0
	align	4
_18:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_93
	dd	8
	dd	__bb_z_a993b8d3_77d3_4f58_970e_98ea79a8db33_3_0_New
	dd	__bb_z_a993b8d3_77d3_4f58_970e_98ea79a8db33_3_0_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_99:
	db	"z_blide_bga993b8d3_77d3_4f58_970e_98ea79a8db33",0
_100:
	db	"Name",0
_101:
	db	"$",0
	align	4
_102:
	dd	_bbStringClass
	dd	2147483646
	dd	5
	dw	70,105,110,97,108
_103:
	db	"MajorVersion",0
	align	4
_105:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	48
_106:
	db	"MinorVersion",0
_107:
	db	"Revision",0
	align	4
_108:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	49
_109:
	db	"VersionString",0
	align	4
_110:
	dd	_bbStringClass
	dd	2147483646
	dd	5
	dw	48,46,48,46,49
_111:
	db	"AssemblyInfo",0
	align	4
_112:
	dd	_bbStringClass
	dd	2147483646
	dd	11
	dw	70,105,110,97,108,32,48,46,48,46,49
_113:
	db	"Platform",0
	align	4
_114:
	dd	_bbStringClass
	dd	2147483646
	dd	5
	dw	87,105,110,51,50
_115:
	db	"Architecture",0
	align	4
_116:
	dd	_bbStringClass
	dd	2147483646
	dd	3
	dw	120,56,54
_117:
	db	"DebugOn",0
	align	4
_98:
	dd	2
	dd	_99
	dd	1
	dd	_100
	dd	_101
	dd	_102
	dd	1
	dd	_103
	dd	_104
	dd	_105
	dd	1
	dd	_106
	dd	_104
	dd	_105
	dd	1
	dd	_107
	dd	_104
	dd	_108
	dd	1
	dd	_109
	dd	_101
	dd	_110
	dd	1
	dd	_111
	dd	_101
	dd	_112
	dd	1
	dd	_113
	dd	_101
	dd	_114
	dd	1
	dd	_115
	dd	_101
	dd	_116
	dd	1
	dd	_117
	dd	_104
	dd	_108
	dd	6
	dd	_95
	dd	_96
	dd	16
	dd	6
	dd	_97
	dd	_96
	dd	20
	dd	0
	align	4
_19:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_98
	dd	8
	dd	__bb_z_blide_bga993b8d3_77d3_4f58_970e_98ea79a8db33_New
	dd	__bb_z_blide_bga993b8d3_77d3_4f58_970e_98ea79a8db33_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_276:
	db	"Z:/Proggen/Projecte4/CardGame/Final.bmx",0
	align	4
_275:
	dd	_276
	dd	85
	dd	5
	align	4
__bb_z_My_a993b8d3_77d3_4f58_970e_98ea79a8db33_Application:
	dd	_bbNullObject
	align	4
_277:
	dd	_276
	dd	86
	dd	5
	align	4
__bb_z_My_a993b8d3_77d3_4f58_970e_98ea79a8db33_Resources:
	dd	_bbNullObject
_119:
	db	"z_My_a993b8d3_77d3_4f58_970e_98ea79a8db33",0
	align	4
_118:
	dd	2
	dd	_119
	dd	6
	dd	_95
	dd	_96
	dd	16
	dd	6
	dd	_97
	dd	_96
	dd	20
	dd	0
	align	4
_25:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_118
	dd	8
	dd	__bb_z_My_a993b8d3_77d3_4f58_970e_98ea79a8db33_New
	dd	__bb_z_My_a993b8d3_77d3_4f58_970e_98ea79a8db33_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_121:
	db	"Tplayer",0
_122:
	db	"color",0
_123:
	db	"cards",0
_124:
	db	":brl.linkedlist.TList",0
_125:
	db	"Create",0
_126:
	db	"(i):Tplayer",0
_127:
	db	"clear",0
_128:
	db	"fillhand",0
_129:
	db	"move_to_hand",0
	align	4
_120:
	dd	2
	dd	_121
	dd	3
	dd	_122
	dd	_104
	dd	8
	dd	3
	dd	_123
	dd	_124
	dd	12
	dd	6
	dd	_95
	dd	_96
	dd	16
	dd	6
	dd	_97
	dd	_96
	dd	20
	dd	7
	dd	_125
	dd	_126
	dd	48
	dd	6
	dd	_127
	dd	_96
	dd	52
	dd	6
	dd	_128
	dd	_96
	dd	56
	dd	6
	dd	_129
	dd	_96
	dd	60
	dd	0
	align	4
_bb_Tplayer:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_120
	dd	16
	dd	__bb_Tplayer_New
	dd	__bb_Tplayer_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_Tplayer_Create
	dd	__bb_Tplayer_clear
	dd	__bb_Tplayer_fillhand
	dd	__bb_Tplayer_move_to_hand
_279:
	db	"Z:/Proggen/Projecte4/CardGame/inc/Tcard.bmx",0
	align	4
_278:
	dd	_279
	dd	8
	dd	2
	align	4
_281:
	dd	0
	align	4
__bb_Tcard_list:
	dd	_bbNullObject
	align	4
_283:
	dd	_279
	dd	70
	dd	2
	align	4
__bb_Tcard_draged_card:
	dd	_bbNullObject
_131:
	db	"Tcard",0
_132:
	db	"x",0
_134:
	db	"y",0
_135:
	db	"old_x",0
_136:
	db	"old_y",0
_137:
	db	"f_x",0
_138:
	db	"f_y",0
_139:
	db	"dmg_o",0
_140:
	db	"dmg_u",0
_141:
	db	"dmg_r",0
_142:
	db	"dmg_l",0
_143:
	db	"played",0
_144:
	db	"save_card",0
_145:
	db	"reset_card",0
_146:
	db	"move_card",0
_147:
	db	"(f,f)i",0
_148:
	db	"CreateCard",0
_149:
	db	"(i):Tcard",0
_150:
	db	"draw",0
_151:
	db	"dragndrop",0
_152:
	db	"(i)i",0
	align	4
_130:
	dd	2
	dd	_131
	dd	3
	dd	_132
	dd	_133
	dd	8
	dd	3
	dd	_134
	dd	_133
	dd	12
	dd	3
	dd	_135
	dd	_133
	dd	16
	dd	3
	dd	_136
	dd	_133
	dd	20
	dd	3
	dd	_137
	dd	_104
	dd	24
	dd	3
	dd	_138
	dd	_104
	dd	28
	dd	3
	dd	_139
	dd	_104
	dd	32
	dd	3
	dd	_140
	dd	_104
	dd	36
	dd	3
	dd	_141
	dd	_104
	dd	40
	dd	3
	dd	_142
	dd	_104
	dd	44
	dd	3
	dd	_122
	dd	_104
	dd	48
	dd	3
	dd	_143
	dd	_104
	dd	52
	dd	6
	dd	_95
	dd	_96
	dd	16
	dd	6
	dd	_97
	dd	_96
	dd	20
	dd	7
	dd	_127
	dd	_96
	dd	48
	dd	6
	dd	_144
	dd	_96
	dd	52
	dd	6
	dd	_145
	dd	_96
	dd	56
	dd	6
	dd	_146
	dd	_147
	dd	60
	dd	7
	dd	_148
	dd	_149
	dd	64
	dd	7
	dd	_150
	dd	_96
	dd	68
	dd	7
	dd	_151
	dd	_152
	dd	72
	dd	0
	align	4
_bb_Tcard:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_130
	dd	56
	dd	__bb_Tcard_New
	dd	__bb_Tcard_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_Tcard_clear
	dd	__bb_Tcard_save_card
	dd	__bb_Tcard_reset_card
	dd	__bb_Tcard_move_card
	dd	__bb_Tcard_CreateCard
	dd	__bb_Tcard_draw
	dd	__bb_Tcard_dragndrop
_285:
	db	"Z:/Proggen/Projecte4/CardGame/inc/Tgamefield.bmx",0
	align	4
_284:
	dd	_285
	dd	2
	dd	2
	align	4
__bb_Tgamefield_x:
	dd	0x43480000
	align	4
__bb_Tgamefield_y:
	dd	0x42c80000
	align	4
_286:
	dd	_285
	dd	3
	dd	2
_287:
	db	":Tcard",0
	align	4
__bb_Tgamefield_field_card:
	dd	_bbEmptyArray
	align	4
_290:
	dd	_285
	dd	4
	dd	2
	align	4
__bb_Tgamefield_player_onmove:
	dd	0
_154:
	db	"Tgamefield",0
_155:
	db	"check_win",0
_156:
	db	"drop_card",0
_157:
	db	"(:Tcard)i",0
	align	4
_153:
	dd	2
	dd	_154
	dd	6
	dd	_95
	dd	_96
	dd	16
	dd	6
	dd	_97
	dd	_96
	dd	20
	dd	7
	dd	_155
	dd	_96
	dd	48
	dd	7
	dd	_127
	dd	_96
	dd	52
	dd	7
	dd	_150
	dd	_96
	dd	56
	dd	7
	dd	_156
	dd	_157
	dd	60
	dd	0
	align	4
_bb_Tgamefield:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_153
	dd	8
	dd	__bb_Tgamefield_New
	dd	__bb_Tgamefield_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_Tgamefield_check_win
	dd	__bb_Tgamefield_clear
	dd	__bb_Tgamefield_draw
	dd	__bb_Tgamefield_drop_card
	align	4
_292:
	dd	_276
	dd	90
	dd	1
_295:
	db	"Z:/Proggen/Projecte4/CardGame/inc/main.bmx",0
	align	4
_294:
	dd	_295
	dd	1
	dd	1
	align	4
_296:
	dd	_295
	dd	3
	dd	1
	align	4
_297:
	dd	_295
	dd	4
	dd	1
	align	4
_298:
	dd	_295
	dd	5
	dd	1
	align	4
_1199:
	dd	0x40000000
	align	4
_300:
	dd	_295
	dd	6
	dd	1
	align	4
_1200:
	dd	0x40000000
	align	4
_302:
	dd	_295
	dd	8
	dd	1
	align	4
_303:
	dd	_295
	dd	10
	dd	1
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	67,97,114,100,103,97,109,101,32,118,48,46,48
	align	4
_308:
	dd	_295
	dd	11
	dd	1
	align	4
_311:
	dd	_295
	dd	13
	dd	1
	align	4
_312:
	dd	_295
	dd	15
	dd	1
	align	4
_315:
	dd	_295
	dd	16
	dd	1
	align	4
_318:
	dd	_295
	dd	20
	dd	1
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	103,102,120,47,99,97,114,100,45,100,101,99,107,117,110,103
	dw	46,112,110,103
	align	4
_321:
	dd	_295
	dd	21
	dd	1
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	103,102,120,47,99,97,114,100,45,114,117,101,99,107,101,110
	dw	46,112,110,103
	align	4
_324:
	dd	_295
	dd	22
	dd	1
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	18
	dw	103,102,120,47,99,97,114,100,45,102,97,114,98,101,46,112
	dw	110,103
	align	4
_327:
	dd	_295
	dd	27
	dd	1
	align	4
_328:
	dd	_295
	dd	28
	dd	1
	align	4
_329:
	dd	_295
	dd	30
	dd	1
	align	4
_330:
	dd	_295
	dd	32
	dd	1
	align	4
_331:
	dd	_295
	dd	34
	dd	1
	align	4
_332:
	dd	_295
	dd	35
	dd	1
	align	4
_334:
	dd	_295
	dd	36
	dd	1
	align	4
_336:
	dd	_295
	dd	38
	dd	1
	align	4
_406:
	dd	3
	dd	0
	dd	0
	align	4
_337:
	dd	_295
	dd	39
	dd	2
	align	4
_338:
	dd	_295
	dd	40
	dd	2
	align	4
_339:
	dd	_295
	dd	41
	dd	2
	align	4
_340:
	dd	_295
	dd	42
	dd	2
	align	4
_343:
	dd	3
	dd	0
	dd	0
	align	4
_342:
	dd	_295
	dd	42
	dd	20
	align	4
_344:
	dd	_295
	dd	44
	dd	2
	align	4
_345:
	dd	_295
	dd	46
	dd	2
	align	4
_346:
	dd	_295
	dd	48
	dd	2
	align	4
_347:
	dd	_295
	dd	49
	dd	2
	align	4
_348:
	dd	_295
	dd	51
	dd	2
	align	4
_368:
	dd	3
	dd	0
	dd	0
	align	4
_355:
	dd	_295
	dd	53
	dd	4
	align	4
_358:
	dd	_295
	dd	54
	dd	4
	align	4
_361:
	dd	_295
	dd	56
	dd	4
	align	4
_364:
	dd	_295
	dd	57
	dd	4
	align	4
_367:
	dd	_295
	dd	59
	dd	4
	align	4
_377:
	dd	3
	dd	0
	dd	0
	align	4
_369:
	dd	_295
	dd	61
	dd	4
	align	4
_370:
	dd	_295
	dd	63
	dd	4
	align	4
_371:
	dd	_295
	dd	65
	dd	4
	align	4
_372:
	dd	_295
	dd	67
	dd	4
	align	4
_373:
	dd	_295
	dd	68
	dd	4
	align	4
_376:
	dd	3
	dd	0
	dd	0
	align	4
_375:
	dd	_295
	dd	68
	dd	20
	align	4
_394:
	dd	3
	dd	0
	dd	0
	align	4
_378:
	dd	_295
	dd	70
	dd	4
	align	4
_381:
	dd	3
	dd	0
	dd	0
	align	4
_380:
	dd	_295
	dd	70
	dd	20
	align	4
_33:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	80,108,97,121,101,114,32,114,101,100,32,119,111,110
	align	4
_382:
	dd	_295
	dd	71
	dd	4
	align	4
_385:
	dd	3
	dd	0
	dd	0
	align	4
_384:
	dd	_295
	dd	71
	dd	20
	align	4
_34:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	80,108,97,121,101,114,32,98,108,117,101,32,119,111,110
	align	4
_386:
	dd	_295
	dd	72
	dd	4
	align	4
_389:
	dd	3
	dd	0
	dd	0
	align	4
_388:
	dd	_295
	dd	72
	dd	20
	align	4
_35:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	117,110,100,101,99,105,100,101,100
	align	4
_390:
	dd	_295
	dd	74
	dd	4
	align	4
_393:
	dd	3
	dd	0
	dd	0
	align	4
_392:
	dd	_295
	dd	74
	dd	16
	align	4
_404:
	dd	3
	dd	0
	dd	0
	align	4
_395:
	dd	_295
	dd	76
	dd	4
	align	4
_398:
	dd	_295
	dd	77
	dd	4
	align	4
_401:
	dd	_295
	dd	79
	dd	4
	align	4
_402:
	dd	_295
	dd	81
	dd	4
	align	4
_403:
	dd	_295
	dd	83
	dd	4
	align	4
_405:
	dd	_295
	dd	88
	dd	2
	align	4
_407:
	dd	_295
	dd	91
	dd	1
_437:
	db	"Self",0
_438:
	db	":z_a993b8d3_77d3_4f58_970e_98ea79a8db33_3_0",0
	align	4
_436:
	dd	1
	dd	_95
	dd	2
	dd	_437
	dd	_438
	dd	-4
	dd	0
	align	4
_435:
	dd	3
	dd	0
	dd	0
_442:
	db	":z_blide_bga993b8d3_77d3_4f58_970e_98ea79a8db33",0
	align	4
_441:
	dd	1
	dd	_95
	dd	2
	dd	_437
	dd	_442
	dd	-4
	dd	0
	align	4
_440:
	dd	3
	dd	0
	dd	0
	align	4
_445:
	dd	1
	dd	_95
	dd	2
	dd	_437
	dd	_411
	dd	-4
	dd	0
	align	4
_444:
	dd	3
	dd	0
	dd	0
_454:
	db	"reset_draw",0
	align	4
_453:
	dd	1
	dd	_454
	dd	0
	align	4
_447:
	dd	_295
	dd	94
	dd	2
	align	4
_448:
	dd	_295
	dd	95
	dd	2
	align	4
_449:
	dd	_295
	dd	96
	dd	2
	align	4
_450:
	dd	_295
	dd	97
	dd	2
	align	4
_451:
	dd	_295
	dd	98
	dd	2
	align	4
_452:
	dd	_295
	dd	99
	dd	2
_463:
	db	"calc_move",0
_464:
	db	"speed",0
	align	4
_462:
	dd	1
	dd	_463
	dd	2
	dd	_464
	dd	_133
	dd	-4
	dd	0
	align	4
_455:
	dd	_295
	dd	103
	dd	2
	align	4
_458:
	dd	3
	dd	0
	dd	0
	align	4
_457:
	dd	_295
	dd	103
	dd	21
	align	4
_1247:
	dd	0x42c80000
	align	4
_461:
	dd	3
	dd	0
	dd	0
	align	4
_460:
	dd	_295
	dd	103
	dd	64
	align	4
_1248:
	dd	0x0
_475:
	db	"calc_keymove",0
_476:
	db	"entferung",0
_477:
	db	"timing",0
	align	4
_474:
	dd	1
	dd	_475
	dd	2
	dd	_476
	dd	_133
	dd	-4
	dd	2
	dd	_477
	dd	_133
	dd	-8
	dd	0
	align	4
_465:
	dd	_295
	dd	107
	dd	2
	align	4
_470:
	dd	3
	dd	0
	dd	0
	align	4
_469:
	dd	_295
	dd	107
	dd	40
	align	4
_473:
	dd	3
	dd	0
	dd	0
	align	4
_472:
	dd	_295
	dd	107
	dd	88
	align	4
_1255:
	dd	0x0
_492:
	db	"ismouseover",0
_493:
	db	"l",0
_494:
	db	"w",0
	align	4
_491:
	dd	1
	dd	_492
	dd	2
	dd	_132
	dd	_104
	dd	-4
	dd	2
	dd	_134
	dd	_104
	dd	-8
	dd	2
	dd	_493
	dd	_104
	dd	-12
	dd	2
	dd	_494
	dd	_104
	dd	-16
	dd	0
	align	4
_478:
	dd	_295
	dd	111
	dd	2
	align	4
_487:
	dd	3
	dd	0
	dd	0
	align	4
_486:
	dd	_295
	dd	111
	dd	82
	align	4
_490:
	dd	3
	dd	0
	dd	0
	align	4
_489:
	dd	_295
	dd	111
	dd	96
_497:
	db	"x1",0
_498:
	db	"y1",0
_499:
	db	"x2",0
_500:
	db	"y2",0
	align	4
_496:
	dd	1
	dd	_476
	dd	2
	dd	_497
	dd	_133
	dd	-4
	dd	2
	dd	_498
	dd	_133
	dd	-8
	dd	2
	dd	_499
	dd	_133
	dd	-12
	dd	2
	dd	_500
	dd	_133
	dd	-16
	dd	0
	align	4
_495:
	dd	_295
	dd	115
	dd	2
	align	8
_1271:
	dd	0x0,0x40000000
	align	8
_1272:
	dd	0x0,0x40000000
_503:
	db	"winkel",0
	align	4
_502:
	dd	1
	dd	_503
	dd	2
	dd	_497
	dd	_133
	dd	-4
	dd	2
	dd	_498
	dd	_133
	dd	-8
	dd	2
	dd	_499
	dd	_133
	dd	-12
	dd	2
	dd	_500
	dd	_133
	dd	-16
	dd	0
	align	4
_501:
	dd	_295
	dd	119
	dd	2
_531:
	db	"turmzuziel",0
_532:
	db	"turmwinkel",0
_533:
	db	"zielwinkel",0
_534:
	db	"drehspeed",0
_535:
	db	"totalwinkel",0
_536:
	db	"bufftore",0
_537:
	db	"test",0
	align	4
_530:
	dd	1
	dd	_531
	dd	2
	dd	_532
	dd	_133
	dd	-4
	dd	2
	dd	_533
	dd	_133
	dd	-8
	dd	2
	dd	_534
	dd	_133
	dd	-12
	dd	2
	dd	_535
	dd	_133
	dd	-16
	dd	2
	dd	_536
	dd	_133
	dd	-20
	dd	2
	dd	_537
	dd	_104
	dd	-24
	dd	0
	align	4
_504:
	dd	_295
	dd	123
	dd	2
	align	4
_1281:
	dd	0x43340000
	align	4
_506:
	dd	_295
	dd	124
	dd	2
	align	4
_508:
	dd	3
	dd	0
	dd	0
	align	4
_507:
	dd	_295
	dd	125
	dd	3
	align	4
_1282:
	dd	0x43b40000
	align	4
_1283:
	dd	0xc3340000
	align	4
_509:
	dd	_295
	dd	127
	dd	2
	align	4
_511:
	dd	3
	dd	0
	dd	0
	align	4
_510:
	dd	_295
	dd	128
	dd	3
	align	4
_1284:
	dd	0x43b40000
	align	4
_1285:
	dd	0x43340000
	align	4
_512:
	dd	_295
	dd	130
	dd	2
	align	4
_515:
	dd	_295
	dd	131
	dd	2
	align	4
_519:
	dd	3
	dd	0
	dd	0
	align	4
_517:
	dd	_295
	dd	131
	dd	34
	align	4
_518:
	dd	_295
	dd	131
	dd	58
	align	4
_520:
	dd	_295
	dd	132
	dd	2
	align	4
_524:
	dd	3
	dd	0
	dd	0
	align	4
_522:
	dd	_295
	dd	132
	dd	36
	align	4
_523:
	dd	_295
	dd	132
	dd	59
	align	4
_525:
	dd	_295
	dd	133
	dd	2
	align	4
_528:
	dd	3
	dd	0
	dd	0
	align	4
_527:
	dd	_295
	dd	133
	dd	19
	align	4
_529:
	dd	_295
	dd	134
	dd	2
_563:
	db	"turmtoterwinkel",0
_564:
	db	"drehschalter",0
	align	4
_562:
	dd	1
	dd	_563
	dd	2
	dd	_532
	dd	_133
	dd	-4
	dd	2
	dd	_533
	dd	_133
	dd	-8
	dd	2
	dd	_564
	dd	_133
	dd	-12
	dd	2
	dd	_535
	dd	_133
	dd	-16
	dd	2
	dd	_536
	dd	_104
	dd	-20
	dd	2
	dd	_537
	dd	_104
	dd	-24
	dd	0
	align	4
_538:
	dd	_295
	dd	138
	dd	2
	align	4
_1293:
	dd	0x43340000
	align	4
_540:
	dd	_295
	dd	139
	dd	2
	align	4
_542:
	dd	3
	dd	0
	dd	0
	align	4
_541:
	dd	_295
	dd	140
	dd	3
	align	4
_1294:
	dd	0x43b40000
	align	4
_1295:
	dd	0xc3340000
	align	4
_543:
	dd	_295
	dd	142
	dd	2
	align	4
_545:
	dd	3
	dd	0
	dd	0
	align	4
_544:
	dd	_295
	dd	143
	dd	3
	align	4
_1296:
	dd	0x43b40000
	align	4
_1297:
	dd	0x43340000
	align	4
_546:
	dd	_295
	dd	145
	dd	2
	align	4
_549:
	dd	_295
	dd	146
	dd	2
	align	4
_552:
	dd	3
	dd	0
	dd	0
	align	4
_551:
	dd	_295
	dd	146
	dd	37
	align	4
_553:
	dd	_295
	dd	147
	dd	2
	align	4
_556:
	dd	3
	dd	0
	dd	0
	align	4
_555:
	dd	_295
	dd	147
	dd	39
	align	4
_557:
	dd	_295
	dd	148
	dd	2
	align	4
_560:
	dd	3
	dd	0
	dd	0
	align	4
_559:
	dd	_295
	dd	148
	dd	19
	align	4
_561:
	dd	_295
	dd	149
	dd	2
	align	4
_567:
	dd	1
	dd	_95
	dd	2
	dd	_437
	dd	_419
	dd	-4
	dd	0
	align	4
_566:
	dd	3
	dd	0
	dd	0
_580:
	db	"newplayer",0
	align	4
_579:
	dd	1
	dd	_125
	dd	2
	dd	_122
	dd	_104
	dd	-4
	dd	2
	dd	_580
	dd	_419
	dd	-8
	dd	0
_572:
	db	"Z:/Proggen/Projecte4/CardGame/inc/Tplayer.bmx",0
	align	4
_571:
	dd	_572
	dd	6
	dd	3
	align	4
_574:
	dd	_572
	dd	8
	dd	3
	align	4
_578:
	dd	_572
	dd	10
	dd	3
	align	4
_586:
	dd	1
	dd	_127
	dd	2
	dd	_437
	dd	_419
	dd	-4
	dd	0
	align	4
_581:
	dd	_572
	dd	14
	dd	3
	align	4
_602:
	dd	1
	dd	_128
	dd	2
	dd	_437
	dd	_419
	dd	-4
	dd	0
	align	4
_587:
	dd	_572
	dd	18
	dd	3
_600:
	db	"card",0
_601:
	db	":Tcard",0
	align	4
_599:
	dd	3
	dd	0
	dd	2
	dd	_132
	dd	_104
	dd	-8
	dd	2
	dd	_600
	dd	_601
	dd	-12
	dd	0
	align	4
_590:
	dd	_572
	dd	19
	dd	4
	align	4
_594:
	dd	_572
	dd	20
	dd	4
	align	4
_655:
	dd	1
	dd	_129
	dd	2
	dd	_437
	dd	_419
	dd	-4
	dd	2
	dd	_134
	dd	_104
	dd	-8
	dd	0
	align	4
_603:
	dd	_572
	dd	25
	dd	3
	align	4
_605:
	dd	_572
	dd	26
	dd	3
	align	4
_629:
	dd	3
	dd	0
	dd	0
	align	4
_609:
	dd	_572
	dd	27
	dd	4
	align	4
_628:
	dd	3
	dd	0
	dd	2
	dd	_600
	dd	_601
	dd	-12
	dd	0
	align	4
_621:
	dd	_572
	dd	28
	dd	5
	align	4
_624:
	dd	_572
	dd	29
	dd	5
	align	4
_627:
	dd	_572
	dd	30
	dd	5
	align	4
_630:
	dd	_572
	dd	33
	dd	3
	align	4
_654:
	dd	3
	dd	0
	dd	0
	align	4
_634:
	dd	_572
	dd	34
	dd	4
	align	4
_653:
	dd	3
	dd	0
	dd	2
	dd	_600
	dd	_601
	dd	-16
	dd	0
	align	4
_646:
	dd	_572
	dd	35
	dd	5
	align	4
_649:
	dd	_572
	dd	36
	dd	5
	align	4
_652:
	dd	_572
	dd	37
	dd	5
	align	4
_657:
	dd	1
	dd	_95
	dd	2
	dd	_437
	dd	_601
	dd	-4
	dd	0
	align	4
_656:
	dd	3
	dd	0
	dd	0
	align	4
_662:
	dd	1
	dd	_127
	dd	0
	align	4
_659:
	dd	_279
	dd	11
	dd	3
	align	4
_675:
	dd	1
	dd	_144
	dd	2
	dd	_437
	dd	_601
	dd	-4
	dd	0
	align	4
_663:
	dd	_279
	dd	15
	dd	3
	align	4
_669:
	dd	_279
	dd	16
	dd	3
	align	4
_688:
	dd	1
	dd	_145
	dd	2
	dd	_437
	dd	_601
	dd	-4
	dd	0
	align	4
_676:
	dd	_279
	dd	20
	dd	3
	align	4
_682:
	dd	_279
	dd	21
	dd	3
_698:
	db	"mx",0
_699:
	db	"my",0
	align	4
_697:
	dd	1
	dd	_146
	dd	2
	dd	_437
	dd	_601
	dd	-4
	dd	2
	dd	_698
	dd	_133
	dd	-8
	dd	2
	dd	_699
	dd	_133
	dd	-12
	dd	0
	align	4
_689:
	dd	_279
	dd	25
	dd	3
	align	4
_693:
	dd	_279
	dd	26
	dd	3
_727:
	db	"newcard",0
	align	4
_726:
	dd	1
	dd	_148
	dd	2
	dd	_122
	dd	_104
	dd	-4
	dd	2
	dd	_727
	dd	_601
	dd	-8
	dd	0
	align	4
_700:
	dd	_279
	dd	30
	dd	3
	align	4
_702:
	dd	_279
	dd	31
	dd	3
	align	4
_705:
	dd	_279
	dd	33
	dd	3
	align	4
_709:
	dd	_279
	dd	34
	dd	3
	align	4
_713:
	dd	_279
	dd	35
	dd	3
	align	4
_717:
	dd	_279
	dd	36
	dd	3
	align	4
_721:
	dd	_279
	dd	37
	dd	3
	align	4
_725:
	dd	_279
	dd	39
	dd	3
	align	4
_812:
	dd	1
	dd	_150
	dd	0
	align	4
_728:
	dd	_279
	dd	43
	dd	3
	align	4
_811:
	dd	3
	dd	0
	dd	2
	dd	_600
	dd	_601
	dd	-4
	dd	0
	align	4
_738:
	dd	_279
	dd	44
	dd	4
	align	4
_739:
	dd	_279
	dd	46
	dd	4
	align	4
_744:
	dd	_279
	dd	48
	dd	4
	align	4
_762:
	dd	3
	dd	0
	dd	0
	align	4
_750:
	dd	_279
	dd	49
	dd	5
	align	4
_755:
	dd	3
	dd	0
	dd	0
	align	4
_754:
	dd	_279
	dd	49
	dd	28
	align	4
_756:
	dd	_279
	dd	50
	dd	5
	align	4
_761:
	dd	3
	dd	0
	dd	0
	align	4
_760:
	dd	_279
	dd	50
	dd	28
	align	4
_776:
	dd	3
	dd	0
	dd	0
	align	4
_764:
	dd	_279
	dd	52
	dd	5
	align	4
_769:
	dd	3
	dd	0
	dd	0
	align	4
_768:
	dd	_279
	dd	52
	dd	28
	align	4
_770:
	dd	_279
	dd	53
	dd	5
	align	4
_775:
	dd	3
	dd	0
	dd	0
	align	4
_774:
	dd	_279
	dd	53
	dd	28
	align	4
_777:
	dd	_279
	dd	59
	dd	4
	align	4
_782:
	dd	_279
	dd	61
	dd	4
	align	4
_783:
	dd	_279
	dd	63
	dd	4
	align	4
_1373:
	dd	0x41c80000
	align	4
_1374:
	dd	0x42480000
	align	4
_790:
	dd	_279
	dd	64
	dd	4
	align	4
_1375:
	dd	0x42480000
	align	4
_1376:
	dd	0x42960000
	align	4
_797:
	dd	_279
	dd	65
	dd	4
	align	4
_1377:
	dd	0x42960000
	align	4
_1378:
	dd	0x42480000
	align	4
_804:
	dd	_279
	dd	66
	dd	4
	align	4
_1379:
	dd	0x42480000
	align	4
_1380:
	dd	0x41c80000
_869:
	db	"md",0
	align	4
_868:
	dd	1
	dd	_151
	dd	2
	dd	_869
	dd	_104
	dd	-4
	dd	0
	align	4
_813:
	dd	_279
	dd	73
	dd	3
	align	4
_851:
	dd	3
	dd	0
	dd	0
	align	4
_815:
	dd	_279
	dd	74
	dd	4
	align	4
_845:
	dd	3
	dd	0
	dd	0
	align	4
_817:
	dd	_279
	dd	75
	dd	5
	align	4
_844:
	dd	3
	dd	0
	dd	2
	dd	_600
	dd	_601
	dd	-8
	dd	0
	align	4
_827:
	dd	_279
	dd	76
	dd	6
	align	4
_843:
	dd	3
	dd	0
	dd	0
	align	4
_831:
	dd	_279
	dd	77
	dd	7
	align	4
_842:
	dd	3
	dd	0
	dd	0
	align	4
_837:
	dd	_279
	dd	79
	dd	8
	align	4
_850:
	dd	3
	dd	0
	dd	0
	align	4
_847:
	dd	_279
	dd	84
	dd	5
	align	4
_867:
	dd	3
	dd	0
	dd	0
	align	4
_853:
	dd	_279
	dd	88
	dd	4
	align	4
_861:
	dd	3
	dd	0
	dd	0
	align	4
_855:
	dd	_279
	dd	89
	dd	5
	align	4
_860:
	dd	3
	dd	0
	dd	0
	align	4
_857:
	dd	_279
	dd	89
	dd	51
	align	4
_862:
	dd	_279
	dd	91
	dd	4
_872:
	db	":Tgamefield",0
	align	4
_871:
	dd	1
	dd	_95
	dd	2
	dd	_437
	dd	_872
	dd	-4
	dd	0
	align	4
_870:
	dd	3
	dd	0
	dd	0
_933:
	db	"full",0
_934:
	db	"red",0
_935:
	db	"blue",0
	align	4
_932:
	dd	1
	dd	_155
	dd	2
	dd	_933
	dd	_104
	dd	-4
	dd	2
	dd	_934
	dd	_104
	dd	-8
	dd	2
	dd	_935
	dd	_104
	dd	-12
	dd	0
	align	4
_874:
	dd	_285
	dd	7
	dd	3
	align	4
_876:
	dd	_285
	dd	8
	dd	3
	align	4
_878:
	dd	_285
	dd	9
	dd	3
	align	4
_880:
	dd	_285
	dd	11
	dd	3
_917:
	db	"fx",0
	align	4
_916:
	dd	3
	dd	0
	dd	2
	dd	_917
	dd	_104
	dd	-16
	dd	0
	align	4
_883:
	dd	_285
	dd	12
	dd	4
_915:
	db	"fy",0
	align	4
_914:
	dd	3
	dd	0
	dd	2
	dd	_915
	dd	_104
	dd	-20
	dd	0
	align	4
_886:
	dd	_285
	dd	13
	dd	5
	align	4
_913:
	dd	3
	dd	0
	dd	0
	align	4
_892:
	dd	_285
	dd	14
	dd	6
	align	4
_893:
	dd	_285
	dd	15
	dd	6
	align	4
_902:
	dd	3
	dd	0
	dd	0
	align	4
_901:
	dd	_285
	dd	15
	dd	43
	align	4
_903:
	dd	_285
	dd	16
	dd	6
	align	4
_912:
	dd	3
	dd	0
	dd	0
	align	4
_911:
	dd	_285
	dd	16
	dd	43
	align	4
_918:
	dd	_285
	dd	20
	dd	3
	align	4
_931:
	dd	3
	dd	0
	dd	0
	align	4
_920:
	dd	_285
	dd	21
	dd	4
	align	4
_923:
	dd	3
	dd	0
	dd	0
	align	4
_922:
	dd	_285
	dd	21
	dd	23
	align	4
_924:
	dd	_285
	dd	22
	dd	4
	align	4
_927:
	dd	3
	dd	0
	dd	0
	align	4
_926:
	dd	_285
	dd	22
	dd	23
	align	4
_930:
	dd	3
	dd	0
	dd	0
	align	4
_929:
	dd	_285
	dd	22
	dd	37
	align	4
_955:
	dd	1
	dd	_127
	dd	0
	align	4
_936:
	dd	_285
	dd	27
	dd	3
	align	4
_953:
	dd	3
	dd	0
	dd	2
	dd	_917
	dd	_104
	dd	-4
	dd	0
	align	4
_939:
	dd	_285
	dd	28
	dd	4
	align	4
_952:
	dd	3
	dd	0
	dd	2
	dd	_915
	dd	_104
	dd	-8
	dd	0
	align	4
_942:
	dd	_285
	dd	29
	dd	5
	align	4
_954:
	dd	_285
	dd	33
	dd	3
	align	4
_977:
	dd	1
	dd	_150
	dd	0
	align	4
_956:
	dd	_285
	dd	37
	dd	3
	align	4
_957:
	dd	_285
	dd	39
	dd	3
	align	4
_960:
	dd	3
	dd	0
	dd	0
	align	4
_959:
	dd	_285
	dd	40
	dd	4
	align	4
_963:
	dd	3
	dd	0
	dd	0
	align	4
_962:
	dd	_285
	dd	42
	dd	4
	align	4
_964:
	dd	_285
	dd	44
	dd	3
	align	4
_965:
	dd	_285
	dd	46
	dd	3
	align	4
_966:
	dd	_285
	dd	47
	dd	3
	align	4
_967:
	dd	_285
	dd	48
	dd	3
	align	4
_968:
	dd	_285
	dd	50
	dd	3
	align	4
_1458:
	dd	0x0
	align	4
_1459:
	dd	0x0
	align	4
_969:
	dd	_285
	dd	51
	dd	3
	align	4
_1460:
	dd	0x43520000
	align	4
_1461:
	dd	0x0
	align	4
_970:
	dd	_285
	dd	52
	dd	3
	align	4
_1462:
	dd	0x43d20000
	align	4
_1463:
	dd	0x0
	align	4
_971:
	dd	_285
	dd	54
	dd	3
	align	4
_1464:
	dd	0x0
	align	4
_1465:
	dd	0x43520000
	align	4
_972:
	dd	_285
	dd	55
	dd	3
	align	4
_1466:
	dd	0x43520000
	align	4
_1467:
	dd	0x43520000
	align	4
_973:
	dd	_285
	dd	56
	dd	3
	align	4
_1468:
	dd	0x43d20000
	align	4
_1469:
	dd	0x43520000
	align	4
_974:
	dd	_285
	dd	58
	dd	3
	align	4
_1470:
	dd	0x0
	align	4
_1471:
	dd	0x43d20000
	align	4
_975:
	dd	_285
	dd	59
	dd	3
	align	4
_1472:
	dd	0x43520000
	align	4
_1473:
	dd	0x43d20000
	align	4
_976:
	dd	_285
	dd	60
	dd	3
	align	4
_1474:
	dd	0x43d20000
	align	4
_1475:
	dd	0x43d20000
_1198:
	db	"player_color",0
	align	4
_1197:
	dd	1
	dd	_156
	dd	2
	dd	_600
	dd	_601
	dd	-4
	dd	2
	dd	_1198
	dd	_104
	dd	-8
	dd	0
	align	4
_978:
	dd	_285
	dd	67
	dd	3
	align	4
_980:
	dd	_285
	dd	68
	dd	3
	align	4
_1195:
	dd	3
	dd	0
	dd	0
	align	4
_984:
	dd	_285
	dd	71
	dd	4
	align	4
_1194:
	dd	3
	dd	0
	dd	2
	dd	_917
	dd	_104
	dd	-12
	dd	0
	align	4
_987:
	dd	_285
	dd	72
	dd	5
	align	4
_1193:
	dd	3
	dd	0
	dd	2
	dd	_915
	dd	_104
	dd	-16
	dd	0
	align	4
_990:
	dd	_285
	dd	73
	dd	6
	align	4
_1479:
	dd	0x42c80000
	align	4
_1192:
	dd	3
	dd	0
	dd	0
	align	4
_998:
	dd	_285
	dd	74
	dd	7
	align	4
_1480:
	dd	0x42c80000
	align	4
_1191:
	dd	3
	dd	0
	dd	0
	align	4
_1006:
	dd	_285
	dd	75
	dd	8
	align	4
_1190:
	dd	3
	dd	0
	dd	0
	align	4
_1012:
	dd	_285
	dd	76
	dd	9
	align	4
_1022:
	dd	_285
	dd	78
	dd	9
	align	4
_1481:
	dd	0x42480000
	align	4
_1482:
	dd	0x42480000
	align	4
_1025:
	dd	_285
	dd	79
	dd	9
	align	4
_1028:
	dd	_285
	dd	81
	dd	9
	align	4
_1032:
	dd	_285
	dd	82
	dd	9
	align	4
_1033:
	dd	_285
	dd	85
	dd	9
	align	4
_1071:
	dd	3
	dd	0
	dd	0
	align	4
_1035:
	dd	_285
	dd	86
	dd	11
	align	4
_1070:
	dd	3
	dd	0
	dd	0
	align	4
_1041:
	dd	_285
	dd	87
	dd	12
	align	4
_1069:
	dd	3
	dd	0
	dd	0
	align	4
_1055:
	dd	_285
	dd	88
	dd	13
	align	4
_1072:
	dd	_285
	dd	93
	dd	9
	align	4
_1110:
	dd	3
	dd	0
	dd	0
	align	4
_1074:
	dd	_285
	dd	94
	dd	11
	align	4
_1109:
	dd	3
	dd	0
	dd	0
	align	4
_1080:
	dd	_285
	dd	95
	dd	12
	align	4
_1108:
	dd	3
	dd	0
	dd	0
	align	4
_1094:
	dd	_285
	dd	96
	dd	13
	align	4
_1111:
	dd	_285
	dd	101
	dd	9
	align	4
_1149:
	dd	3
	dd	0
	dd	0
	align	4
_1113:
	dd	_285
	dd	102
	dd	11
	align	4
_1148:
	dd	3
	dd	0
	dd	0
	align	4
_1119:
	dd	_285
	dd	103
	dd	12
	align	4
_1147:
	dd	3
	dd	0
	dd	0
	align	4
_1133:
	dd	_285
	dd	104
	dd	13
	align	4
_1150:
	dd	_285
	dd	109
	dd	9
	align	4
_1188:
	dd	3
	dd	0
	dd	0
	align	4
_1152:
	dd	_285
	dd	110
	dd	11
	align	4
_1187:
	dd	3
	dd	0
	dd	0
	align	4
_1158:
	dd	_285
	dd	111
	dd	12
	align	4
_1186:
	dd	3
	dd	0
	dd	0
	align	4
_1172:
	dd	_285
	dd	112
	dd	13
	align	4
_1189:
	dd	_285
	dd	116
	dd	9
	align	4
_1196:
	dd	_285
	dd	123
	dd	3
