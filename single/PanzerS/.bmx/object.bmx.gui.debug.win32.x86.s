	format	MS COFF
	extrn	___bb_audio_audio
	extrn	___bb_blitz_blitz
	extrn	___bb_directsoundaudio_directsoundaudio
	extrn	___bb_drivers_drivers
	extrn	___bb_eventqueue_eventqueue
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
	extrn	_bbArrayNew
	extrn	_bbArrayNew1D
	extrn	_bbCos
	extrn	_bbEmptyArray
	extrn	_bbEmptyString
	extrn	_bbEnd
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
	extrn	_brl_max2d_DrawRect
	extrn	_brl_max2d_DrawText
	extrn	_brl_max2d_GetHandle
	extrn	_brl_max2d_GetRotation
	extrn	_brl_max2d_GetScale
	extrn	_brl_max2d_LoadImage
	extrn	_brl_max2d_SetBlend
	extrn	_brl_max2d_SetColor
	extrn	_brl_max2d_SetHandle
	extrn	_brl_max2d_SetRotation
	extrn	_brl_max2d_SetScale
	extrn	_brl_polledinput_KeyHit
	extrn	_brl_polledinput_MouseHit
	extrn	_brl_polledinput_MouseX
	extrn	_brl_polledinput_MouseY
	extrn	_brl_timer_CreateTimer
	public	__bb_Taction_Delete
	public	__bb_Taction_New
	public	__bb_Tinfotext_Delete
	public	__bb_Tinfotext_New
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
	public	_bb_Taction
	public	_bb_Tinfotext
	public	_bb_Ttexgroup
	public	_bb_Ttextur
	public	_bb_Twaypoint
	public	_bb_actionlist
	public	_bb_button
	public	_bb_diagonal
	public	_bb_fenster
	public	_bb_gVx
	public	_bb_gVy
	public	_bb_gmenuVy
	public	_bb_gmenudiff
	public	_bb_gmenulock
	public	_bb_infotextlist
	public	_bb_laterne_1
	public	_bb_laterne_2
	public	_bb_laterne_3
	public	_bb_mapray
	public	_bb_maptexgrouplist
	public	_bb_maptexturlist
	public	_bb_maptodest
	public	_bb_md
	public	_bb_menuVy
	public	_bb_menudiff
	public	_bb_menulock
	public	_bb_mouselooklock
	public	_bb_mouseover
	public	_bb_nowGroup
	public	_bb_omx
	public	_bb_omy
	public	_bb_pinselmix
	public	_bb_pinselmodus
	public	_bb_pinselsize
	public	_bb_pinselunmix
	public	_bb_printlistlist
	public	_bb_selectedlayer
	public	_bb_selectedtex
	public	_bb_spass
	public	_bb_tex1w
	public	_bb_tex1x
	public	_bb_tex1y
	public	_bb_tex2w
	public	_bb_tex2x
	public	_bb_tex2y
	public	_bb_texgrouplist
	public	_bb_texturlist
	public	_bb_tmr
	public	_bb_wallmod
	public	_bb_wallmodklick
	public	_bb_waycecker
	public	_bb_waymod
	public	_bb_waymodaction
	public	_bb_waymodcounter
	public	_bb_waymodselect
	public	_bb_waypoint_1
	public	_bb_waypoint_2
	public	_bb_waypointlist
	public	_bb_waypointtodest
	public	_bb_wayray
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	cmp	dword [_476],0
	je	_477
	mov	eax,0
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_477:
	mov	dword [_476],1
	mov	dword [ebp-4],_bbNullObject
	push	ebp
	push	_423
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
	call	___bb_drivers_drivers
	call	___bb_eventqueue_eventqueue
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
	push	_bb_Tinfotext
	call	_bbObjectRegisterType
	add	esp,4
	push	_275
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_278]
	and	eax,1
	cmp	eax,0
	jne	_279
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_texturlist],eax
	or	dword [_278],1
_279:
	push	_280
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_278]
	and	eax,2
	cmp	eax,0
	jne	_282
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_maptexturlist],eax
	or	dword [_278],2
_282:
	push	_283
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_278]
	and	eax,4
	cmp	eax,0
	jne	_285
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_texgrouplist],eax
	or	dword [_278],4
_285:
	push	_286
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_278]
	and	eax,8
	cmp	eax,0
	jne	_288
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_maptexgrouplist],eax
	or	dword [_278],8
_288:
	push	_289
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_278]
	and	eax,16
	cmp	eax,0
	jne	_291
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_waypointlist],eax
	or	dword [_278],16
_291:
	push	_292
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_278]
	and	eax,32
	cmp	eax,0
	jne	_294
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_printlistlist],eax
	or	dword [_278],32
_294:
	push	_295
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_278]
	and	eax,64
	cmp	eax,0
	jne	_297
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_actionlist],eax
	or	dword [_278],64
_297:
	push	_298
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_278]
	and	eax,128
	cmp	eax,0
	jne	_300
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_infotextlist],eax
	or	dword [_278],128
_300:
	push	_301
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_20
	inc	dword [ebx+4]
	mov	eax,dword [_bbAppTitle]
	dec	dword [eax+4]
	jnz	_305
	push	eax
	call	_bbGCFree
	add	esp,4
_305:
	mov	dword [_bbAppTitle],ebx
	push	_306
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_278]
	and	eax,256
	cmp	eax,0
	jne	_308
	push	0
	push	60
	push	0
	push	768
	push	1024
	call	_brl_graphics_Graphics
	add	esp,20
	inc	dword [eax+4]
	mov	dword [_bb_fenster],eax
	or	dword [_278],256
_308:
	push	_309
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	3
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_310
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_311
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1136427008
	push	1138556928
	push	_313
	call	_brl_max2d_DrawText
	add	esp,12
	push	_314
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
	push	_315
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_278]
	and	eax,512
	cmp	eax,0
	jne	_317
	push	-1
	push	_24
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_laterne_1],eax
	or	dword [_278],512
_317:
	push	_318
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_278]
	and	eax,1024
	cmp	eax,0
	jne	_320
	push	-1
	push	_25
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_laterne_2],eax
	or	dword [_278],1024
_320:
	push	_321
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_278]
	and	eax,2048
	cmp	eax,0
	jne	_323
	push	-1
	push	_26
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_laterne_3],eax
	or	dword [_278],2048
_323:
	push	_324
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_325
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_278]
	and	eax,4096
	cmp	eax,0
	jne	_327
	push	-1
	push	_27
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_waypoint_1],eax
	or	dword [_278],4096
_327:
	push	_328
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_278]
	and	eax,8192
	cmp	eax,0
	jne	_330
	push	-1
	push	_28
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_waypoint_2],eax
	or	dword [_278],8192
_330:
	push	_331
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_332
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_333
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_334
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_bbNullObject
	mov	esi,dword [_bb_texgrouplist]
	cmp	esi,_bbNullObject
	jne	_338
	call	_brl_blitz_NullObjectError
_338:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_29
_31:
	cmp	ebx,_bbNullObject
	jne	_343
	call	_brl_blitz_NullObjectError
_343:
	push	_bb_Ttexgroup
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-4],eax
	cmp	dword [ebp-4],_bbNullObject
	je	_29
	push	ebp
	push	_350
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_344
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nowGroup]
	dec	dword [eax+4]
	jnz	_348
	push	eax
	call	_bbGCFree
	add	esp,4
_348:
	mov	dword [_bb_nowGroup],ebx
	push	_349
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_30
_29:
	cmp	ebx,_bbNullObject
	jne	_341
	call	_brl_blitz_NullObjectError
_341:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_31
_30:
	push	_353
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_354
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_355
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_356
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_357
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_278]
	and	eax,16384
	cmp	eax,0
	jne	_359
	fld	qword [_1653]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fstp	dword [_bb_diagonal]
	or	dword [_278],16384
_359:
	push	_360
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_278]
	and	eax,32768
	cmp	eax,0
	jne	_362
	push	_bbNullObject
	push	1109393408
	call	_brl_timer_CreateTimer
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_tmr],eax
	or	dword [_278],32768
_362:
	push	_363
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_107
_109:
	push	ebp
	push	_421
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_364
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_tmr]
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
	call	_brl_max2d_Cls
	push	_368
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_brl_polledinput_MouseHit
	add	esp,4
	mov	dword [_bb_md],eax
	push	_369
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	128
	push	128
	push	128
	call	_brl_max2d_SetColor
	add	esp,12
	push	_370
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1145028608
	push	1149222912
	push	0
	push	0
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_371
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_372
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_md]
	cmp	eax,0
	je	_373
	mov	eax,dword [_bb_spass]
	cmp	eax,0
	sete	al
	movzx	eax,al
_373:
	cmp	eax,0
	je	_375
	push	ebp
	push	_377
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_376
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_spass],1
	call	dword [_bbOnDebugLeaveScope]
_375:
	push	_378
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_spass],1
	jne	_379
	push	ebp
	push	_385
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_380
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_tex1w]
	fadd	dword [_1654]
	fstp	dword [_bb_tex1w]
	push	_381
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_tex1w]
	fld	dword [_1655]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_382
	push	ebp
	push	_384
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_383
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_spass],2
	call	dword [_bbOnDebugLeaveScope]
_382:
	call	dword [_bbOnDebugLeaveScope]
_379:
	push	_386
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_tex2w]
	fadd	dword [_1656]
	fstp	dword [_bb_tex2w]
	push	_387
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_tex2w]
	fld	dword [_1657]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_388
	push	ebp
	push	_390
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_389
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_tex2w]
	fsub	dword [_1658]
	fstp	dword [_bb_tex2w]
	call	dword [_bbOnDebugLeaveScope]
_388:
	push	_391
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_spass],2
	jl	_392
	push	ebp
	push	_399
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_393
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [_bb_spass],1
	push	_394
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_spass],120
	jle	_395
	push	ebp
	push	_398
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_396
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_spass],0
	push	_397
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [_bb_tex1w]
	call	dword [_bbOnDebugLeaveScope]
_395:
	call	dword [_bbOnDebugLeaveScope]
_392:
	push	_400
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1134559232
	push	1134559232
	push	1120403456
	push	1120403456
	push	dword [_bb_laterne_2]
	call	_bb_DrawPicture
	add	esp,20
	push	_401
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_tex1y]
	fmul	dword [_1659]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_bb_tex1x]
	fmul	dword [_1660]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_402
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_tex1w]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_403
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_tex1w]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	jne	_406
	fld	dword [_bb_tex1w]
	fld	dword [_1661]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	je	_404
	fld	dword [_bb_tex1w]
	fld	dword [_1662]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
_404:
_406:
	cmp	eax,0
	je	_408
	push	ebp
	push	_410
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_409
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1134559232
	push	1134559232
	fld	dword [_1663]
	fld	dword [_bb_tex1x]
	fmul	dword [_1664]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_1665]
	fld	dword [_bb_tex1y]
	fmul	dword [_1666]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_laterne_3]
	call	_bb_DrawPicture
	add	esp,20
	call	dword [_bbOnDebugLeaveScope]
_408:
	push	_411
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1134559232
	push	1134559232
	fld	dword [_1667]
	fld	dword [_bb_tex1x]
	fmul	dword [_1668]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_1669]
	fld	dword [_bb_tex1y]
	fmul	dword [_1670]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_laterne_1]
	call	_bb_DrawPicture
	add	esp,20
	push	_412
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_413
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_414
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1126170624
	push	1126170624
	push	1120403456
	push	1140457472
	push	dword [_bb_waypoint_2]
	call	_bb_DrawPicture
	add	esp,20
	push	_415
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1103626240
	push	1103626240
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_416
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_tex2w]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_417
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1112014848
	push	1112014848
	fld	dword [_1671]
	fld	dword [_bb_tex2x]
	fmul	dword [_1672]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_1673]
	fld	dword [_bb_tex2y]
	fmul	dword [_1674]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_waypoint_1]
	call	_bb_DrawPicture
	add	esp,20
	push	_418
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_419
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_420
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_107:
	push	27
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_109
_108:
	push	_422
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	mov	ebx,0
	jmp	_173
_173:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
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
	push	_489
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Ttextur
	push	8
	push	_478
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
	push	_488
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_176
_176:
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
_179:
	mov	eax,dword [ebx+60]
	dec	dword [eax+4]
	jnz	_493
	push	eax
	call	_bbGCFree
	add	esp,4
_493:
	mov	eax,dword [ebx+56]
	dec	dword [eax+4]
	jnz	_495
	push	eax
	call	_bbGCFree
	add	esp,4
_495:
	mov	eax,dword [ebx+52]
	dec	dword [eax+4]
	jnz	_497
	push	eax
	call	_bbGCFree
	add	esp,4
_497:
	mov	eax,dword [ebx+40]
	dec	dword [eax+4]
	jnz	_499
	push	eax
	call	_bbGCFree
	add	esp,4
_499:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_501
	push	eax
	call	_bbGCFree
	add	esp,4
_501:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_503
	push	eax
	call	_bbGCFree
	add	esp,4
_503:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_505
	push	eax
	call	_bbGCFree
	add	esp,4
_505:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_507
	push	eax
	call	_bbGCFree
	add	esp,4
_507:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_509
	push	eax
	call	_bbGCFree
	add	esp,4
_509:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_491
_491:
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
	push	_514
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
	push	_513
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_182
_182:
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
_185:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_517
	push	eax
	call	_bbGCFree
	add	esp,4
_517:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_519
	push	eax
	call	_bbGCFree
	add	esp,4
_519:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_521
	push	eax
	call	_bbGCFree
	add	esp,4
_521:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_515
_515:
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
	push	_533
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
	push	_525
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
	push	_528
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+52],eax
	push	20
	push	_530
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+56],eax
	push	ebp
	push	_532
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_188
_188:
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
_191:
	mov	eax,dword [ebx+56]
	dec	dword [eax+4]
	jnz	_536
	push	eax
	call	_bbGCFree
	add	esp,4
_536:
	mov	eax,dword [ebx+52]
	dec	dword [eax+4]
	jnz	_538
	push	eax
	call	_bbGCFree
	add	esp,4
_538:
	mov	eax,dword [ebx+48]
	dec	dword [eax+4]
	jnz	_540
	push	eax
	call	_bbGCFree
	add	esp,4
_540:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_542
	push	eax
	call	_bbGCFree
	add	esp,4
_542:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_544
	push	eax
	call	_bbGCFree
	add	esp,4
_544:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_546
	push	eax
	call	_bbGCFree
	add	esp,4
_546:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_548
	push	eax
	call	_bbGCFree
	add	esp,4
_548:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_534
_534:
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
	push	_551
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
	push	_550
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_194
_194:
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
_197:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_554
	push	eax
	call	_bbGCFree
	add	esp,4
_554:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_552
_552:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tinfotext_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_557
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Tinfotext
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],0
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],edx
	push	ebp
	push	_556
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_200
_200:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tinfotext_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_203:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_561
	push	eax
	call	_bbGCFree
	add	esp,4
_561:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_559
_559:
	pop	ebx
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
	push	_587
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_562
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-24]
	push	_564
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-28]
	push	_566
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	eax,dword [ebp-28]
	push	eax
	lea	eax,dword [ebp-24]
	push	eax
	call	_brl_max2d_GetScale
	add	esp,8
	push	_567
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-32]
	push	_569
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-36]
	push	_571
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	eax,dword [ebp-36]
	push	eax
	lea	eax,dword [ebp-32]
	push	eax
	call	_brl_max2d_GetHandle
	add	esp,8
	push	_572
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_574
	call	_brl_blitz_NullObjectError
_574:
	fld	dword [ebp-16]
	mov	eax,dword [ebx+8]
	mov	dword [ebp+-80],eax
	fild	dword [ebp+-80]
	fdivp	st1,st0
	fstp	dword [ebp-40]
	push	_576
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_578
	call	_brl_blitz_NullObjectError
_578:
	fld	dword [ebp-20]
	mov	eax,dword [ebx+12]
	mov	dword [ebp+-80],eax
	fild	dword [ebp+-80]
	fdivp	st1,st0
	fstp	dword [ebp-44]
	push	_580
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
	push	_581
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_1730]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-60]
	fld	qword [_1731]
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
	push	_583
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
	fld	qword [_1732]
	faddp	st1,st0
	fstp	dword [ebp-52]
	push	_585
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
	push	_586
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-28]
	push	dword [ebp-24]
	call	_brl_max2d_SetScale
	add	esp,8
	mov	ebx,0
	jmp	_210
_210:
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
	push	_621
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_601
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_1737]
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
	fld	qword [_1738]
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
	push	_603
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fdiv	dword [_1739]
	fstp	dword [ebp-16]
	push	_604
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-28]
	fdiv	dword [_1740]
	fstp	dword [ebp-28]
	push	_605
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
	jne	_606
	push	ebp
	push	_620
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_607
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
	fadd	dword [_1741]
	fstp	dword [ebp-36]
	push	_609
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,1
	jne	_610
	push	ebp
	push	_613
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_611
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
	push	_612
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
	jmp	_614
_610:
	push	ebp
	push	_619
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_615
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
	fdiv	dword [_1742]
	fmulp	st1,st0
	fld	qword [ebp-68]
	faddp	st1,st0
	fstp	qword [ebp-68]
	fld	qword [ebp-68]
	fstp	dword [ebx]
	push	_616
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
	fdiv	dword [_1743]
	fmulp	st1,st0
	fld	qword [ebp-76]
	faddp	st1,st0
	fstp	qword [ebp-76]
	fld	qword [ebp-76]
	fstp	dword [ebx]
	push	_617
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	mov	eax,dword [ebp-20]
	fld	dword [eax]
	fstp	qword [ebp-84]
	fld	dword [ebp-36]
	fsub	dword [_1744]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	dword [ebp-16]
	fadd	dword [ebp-28]
	fsub	dword [ebp-32]
	fdiv	dword [_1745]
	fmulp	st1,st0
	fld	qword [ebp-84]
	faddp	st1,st0
	fstp	qword [ebp-84]
	fld	qword [ebp-84]
	fstp	dword [ebx]
	push	_618
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	mov	eax,dword [ebp-24]
	fld	dword [eax]
	fstp	qword [ebp-92]
	fld	dword [ebp-36]
	fsub	dword [_1746]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	dword [ebp-16]
	fadd	dword [ebp-28]
	fsub	dword [ebp-32]
	fdiv	dword [_1747]
	fmulp	st1,st0
	fld	qword [ebp-92]
	faddp	st1,st0
	fstp	qword [ebp-92]
	fld	qword [ebp-92]
	fstp	dword [ebx]
	call	dword [_bbOnDebugLeaveScope]
_614:
	call	dword [_bbOnDebugLeaveScope]
_606:
	mov	ebx,0
	jmp	_219
_219:
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
	push	_656
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_630
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fsub	dword [ebp-8]
	fadd	dword [_1752]
	fstp	dword [ebp-16]
	push	_632
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_32
_34:
	push	ebp
	push	_634
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_633
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fadd	dword [_1753]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
_32:
	fld	dword [ebp-16]
	fld	dword [_1754]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_34
_33:
	push	_635
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_35
_37:
	push	ebp
	push	_637
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_636
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fsub	dword [_1755]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
_35:
	fld	dword [ebp-16]
	fld	dword [_1756]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_37
_36:
	push	_638
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-20]
	mov	dword [ebp-24],0
	push	_641
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
	jne	_642
	push	ebp
	push	_645
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_643
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fchs
	fstp	dword [ebp-20]
	push	_644
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],1
	call	dword [_bbOnDebugLeaveScope]
_642:
	push	_646
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
	jne	_647
	push	ebp
	push	_650
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_648
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fstp	dword [ebp-20]
	push	_649
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],1
	call	dword [_bbOnDebugLeaveScope]
_647:
	push	_651
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-24],0
	jne	_652
	push	ebp
	push	_654
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_653
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fchs
	fstp	dword [ebp-20]
	call	dword [_bbOnDebugLeaveScope]
_652:
	push	_655
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-20]
	fstp	dword [ebp-28]
	jmp	_224
_224:
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
	push	_688
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_664
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fsub	dword [ebp-8]
	fadd	dword [_1764]
	fstp	dword [ebp-16]
	push	_666
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_38
_40:
	push	ebp
	push	_668
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_667
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fadd	dword [_1765]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
_38:
	fld	dword [ebp-16]
	fld	dword [_1766]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_40
_39:
	push	_669
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_41
_43:
	push	ebp
	push	_671
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_670
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fsub	dword [_1767]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
_41:
	fld	dword [ebp-16]
	fld	dword [_1768]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_43
_42:
	push	_672
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-20]
	mov	dword [ebp-24],0
	push	_675
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
	jne	_676
	push	ebp
	push	_678
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_677
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],1
	call	dword [_bbOnDebugLeaveScope]
_676:
	push	_679
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
	jne	_680
	push	ebp
	push	_682
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_681
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],1
	call	dword [_bbOnDebugLeaveScope]
_680:
	push	_683
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-24],0
	jne	_684
	push	ebp
	push	_686
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_685
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-20]
	call	dword [_bbOnDebugLeaveScope]
_684:
	push	_687
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-20]
	fstp	dword [ebp-28]
	jmp	_229
_229:
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
	push	_700
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_691
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
	push	_693
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_44
_46:
	push	ebp
	push	_695
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_694
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fadd	dword [_1776]
	fstp	dword [ebp-12]
	call	dword [_bbOnDebugLeaveScope]
_44:
	fld	dword [ebp-12]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_46
_45:
	push	_696
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_47
_49:
	push	ebp
	push	_698
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_697
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fsub	dword [_1777]
	fstp	dword [ebp-12]
	call	dword [_bbOnDebugLeaveScope]
_47:
	fld	dword [ebp-12]
	fld	dword [_1778]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_49
_48:
	push	_699
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fstp	dword [ebp-16]
	jmp	_233
_233:
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
	push	_821
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_702
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbNullObject
	push	_704
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	mov	eax,dword [_bb_waypointlist]
	mov	dword [ebp-64],eax
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_708
	call	_brl_blitz_NullObjectError
_708:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-68],eax
	jmp	_50
_52:
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_713
	call	_brl_blitz_NullObjectError
_713:
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
	je	_50
	mov	eax,ebp
	push	eax
	push	_776
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_714
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_716
	call	_brl_blitz_NullObjectError
_716:
	mov	dword [ebx+16],9999
	push	_718
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_720
	call	_brl_blitz_NullObjectError
_720:
	fldz
	fstp	dword [ebx+44]
	push	_722
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_724
	call	_brl_blitz_NullObjectError
_724:
	cmp	dword [ebx+40],1
	jne	_725
	mov	eax,ebp
	push	eax
	push	_774
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_726
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_728
	call	_brl_blitz_NullObjectError
_728:
	mov	dword [ebx+40],0
	push	_730
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	push	_732
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_734
	call	_brl_blitz_NullObjectError
_734:
	mov	dword [ebp-48],ebx
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_737
	call	_brl_blitz_NullObjectError
_737:
	mov	eax,dword [ebx+48]
	mov	dword [ebp-56],eax
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_740
	call	_brl_blitz_NullObjectError
_740:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-52],eax
	jmp	_53
_55:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_745
	call	_brl_blitz_NullObjectError
_745:
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
	jnz	_749
	push	eax
	call	_bbGCFree
	add	esp,4
_749:
	mov	eax,dword [ebp-48]
	mov	dword [eax+32],ebx
	mov	eax,dword [ebp-48]
	cmp	dword [eax+32],_bbNullObject
	je	_53
	mov	eax,ebp
	push	eax
	push	_772
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_750
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	mov	dword [ebp-44],eax
	cmp	dword [ebp-44],_bbNullObject
	jne	_752
	call	_brl_blitz_NullObjectError
_752:
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_754
	call	_brl_blitz_NullObjectError
_754:
	mov	edi,dword [ebx+32]
	cmp	edi,_bbNullObject
	jne	_756
	call	_brl_blitz_NullObjectError
_756:
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_758
	call	_brl_blitz_NullObjectError
_758:
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_760
	call	_brl_blitz_NullObjectError
_760:
	mov	esi,dword [esi+32]
	cmp	esi,_bbNullObject
	jne	_762
	call	_brl_blitz_NullObjectError
_762:
	fld	qword [_1783]
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
	fld	qword [_1784]
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
	push	_764
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_766
	call	_brl_blitz_NullObjectError
_766:
	mov	esi,dword [ebx+36]
	mov	ebx,dword [ebp-28]
	cmp	ebx,dword [esi+20]
	jb	_769
	call	_brl_blitz_ArrayBoundsError
_769:
	shl	ebx,2
	add	esi,ebx
	fld	dword [ebp-32]
	fstp	dword [esi+24]
	push	_771
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-28],1
	call	dword [_bbOnDebugLeaveScope]
_53:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_743
	call	_brl_blitz_NullObjectError
_743:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_55
_54:
	call	dword [_bbOnDebugLeaveScope]
_725:
	call	dword [_bbOnDebugLeaveScope]
_50:
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_711
	call	_brl_blitz_NullObjectError
_711:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_52
_51:
	push	_778
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	cmp	dword [ebp-4],eax
	jne	_779
	mov	eax,ebp
	push	eax
	push	_781
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_780
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_237
_779:
	push	_782
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	push	dword [ebp-8]
	call	_bb_wayray
	fstp	st0
	add	esp,8
	push	_783
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1785]
	fstp	dword [ebp-16]
	mov	dword [ebp-20],0
	push	_786
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_788
	call	_brl_blitz_NullObjectError
_788:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_791
	call	_brl_blitz_NullObjectError
_791:
	mov	eax,dword [esi+48]
	mov	dword [ebp-60],eax
	mov	esi,dword [ebp-60]
	cmp	esi,_bbNullObject
	jne	_794
	call	_brl_blitz_NullObjectError
_794:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_56
_58:
	mov	esi,edi
	cmp	esi,_bbNullObject
	jne	_799
	call	_brl_blitz_NullObjectError
_799:
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
	jnz	_803
	push	eax
	call	_bbGCFree
	add	esp,4
_803:
	mov	dword [ebx+32],esi
	cmp	dword [ebx+32],_bbNullObject
	je	_56
	mov	eax,ebp
	push	eax
	push	_819
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_804
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_806
	call	_brl_blitz_NullObjectError
_806:
	mov	esi,dword [esi+32]
	cmp	esi,_bbNullObject
	jne	_808
	call	_brl_blitz_NullObjectError
_808:
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
	jne	_809
	mov	eax,ebp
	push	eax
	push	_818
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_810
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_812
	call	_brl_blitz_NullObjectError
_812:
	mov	eax,dword [esi+32]
	mov	dword [ebp-12],eax
	push	_813
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_815
	call	_brl_blitz_NullObjectError
_815:
	mov	esi,dword [esi+32]
	cmp	esi,_bbNullObject
	jne	_817
	call	_brl_blitz_NullObjectError
_817:
	mov	eax,dword [esi+16]
	mov	dword [ebp+-72],eax
	fild	dword [ebp+-72]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
_809:
	call	dword [_bbOnDebugLeaveScope]
_56:
	mov	esi,edi
	cmp	esi,_bbNullObject
	jne	_797
	call	_brl_blitz_NullObjectError
_797:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_58
_57:
	push	_820
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	jmp	_237
_237:
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
	push	_1003
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_828
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_830
	call	_brl_blitz_NullObjectError
_830:
	fld1
	fstp	dword [ebx+44]
	push	_832
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
	jne	_833
	mov	eax,ebp
	push	eax
	push	_838
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_834
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_836
	call	_brl_blitz_NullObjectError
_836:
	fld	dword [ebp-8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebx+16],eax
	call	dword [_bbOnDebugLeaveScope]
_833:
	push	_839
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	16
	push	_840
	call	_bbArrayNew1D
	add	esp,8
	mov	dword [ebp-12],eax
	push	_842
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	push	_844
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_846
	call	_brl_blitz_NullObjectError
_846:
	mov	dword [ebp-60],ebx
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_849
	call	_brl_blitz_NullObjectError
_849:
	mov	eax,dword [ebx+48]
	mov	dword [ebp-68],eax
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_852
	call	_brl_blitz_NullObjectError
_852:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-64],eax
	jmp	_59
_61:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_857
	call	_brl_blitz_NullObjectError
_857:
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
	jnz	_861
	push	eax
	call	_bbGCFree
	add	esp,4
_861:
	mov	eax,dword [ebp-60]
	mov	dword [eax+32],ebx
	mov	eax,dword [ebp-60]
	cmp	dword [eax+32],_bbNullObject
	je	_59
	mov	eax,ebp
	push	eax
	push	_907
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_862
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_864
	call	_brl_blitz_NullObjectError
_864:
	mov	edi,dword [ebx+32]
	cmp	edi,_bbNullObject
	jne	_866
	call	_brl_blitz_NullObjectError
_866:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_868
	call	_brl_blitz_NullObjectError
_868:
	mov	esi,dword [ebx+36]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_871
	call	_brl_blitz_ArrayBoundsError
_871:
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
	jne	_872
	mov	eax,ebp
	push	eax
	push	_905
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_873
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_875
	call	_brl_blitz_NullObjectError
_875:
	mov	eax,dword [ebx+32]
	cmp	dword [ebp-4],eax
	je	_876
	mov	eax,ebp
	push	eax
	push	_904
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_877
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_879
	call	_brl_blitz_NullObjectError
_879:
	mov	ebx,dword [ebx+32]
	cmp	ebx,_bbNullObject
	jne	_881
	call	_brl_blitz_NullObjectError
_881:
	mov	edi,ebx
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_884
	call	_brl_blitz_NullObjectError
_884:
	mov	esi,dword [ebx+36]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_887
	call	_brl_blitz_ArrayBoundsError
_887:
	fld	dword [esi+ebx*4+24]
	fadd	dword [ebp-8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [edi+16],eax
	push	_888
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_890
	call	_brl_blitz_NullObjectError
_890:
	mov	ebx,dword [ebx+32]
	cmp	ebx,_bbNullObject
	jne	_892
	call	_brl_blitz_NullObjectError
_892:
	fld	dword [ebx+44]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_893
	mov	eax,ebp
	push	eax
	push	_903
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_894
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_896
	call	_brl_blitz_ArrayBoundsError
_896:
	mov	eax,dword [ebp-12]
	shl	ebx,2
	add	eax,ebx
	mov	edi,eax
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_899
	call	_brl_blitz_NullObjectError
_899:
	mov	esi,dword [ebx+36]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_902
	call	_brl_blitz_ArrayBoundsError
_902:
	fld	dword [esi+ebx*4+24]
	fadd	dword [ebp-8]
	fstp	dword [edi+24]
	call	dword [_bbOnDebugLeaveScope]
_893:
	call	dword [_bbOnDebugLeaveScope]
_876:
	call	dword [_bbOnDebugLeaveScope]
_872:
	push	_906
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-16],1
	call	dword [_bbOnDebugLeaveScope]
_59:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_855
	call	_brl_blitz_NullObjectError
_855:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_61
_60:
	push	_908
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1826]
	fstp	dword [ebp-20]
	mov	dword [ebp-24],-1
	push	_911
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	mov	dword [ebp-28],0
	jmp	_913
_64:
	mov	eax,ebp
	push	eax
	push	_927
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_914
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_916
	call	_brl_blitz_ArrayBoundsError
_916:
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
	je	_919
	mov	ebx,dword [ebp-28]
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_918
	call	_brl_blitz_ArrayBoundsError
_918:
	mov	eax,dword [ebp-12]
	fld	dword [eax+ebx*4+24]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
_919:
	cmp	eax,0
	je	_921
	mov	eax,ebp
	push	eax
	push	_926
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_922
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	mov	dword [ebp-24],eax
	push	_923
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_925
	call	_brl_blitz_ArrayBoundsError
_925:
	mov	eax,dword [ebp-12]
	fld	dword [eax+ebx*4+24]
	fstp	dword [ebp-20]
	call	dword [_bbOnDebugLeaveScope]
_921:
	call	dword [_bbOnDebugLeaveScope]
_62:
	add	dword [ebp-28],1
_913:
	cmp	dword [ebp-28],15
	jle	_64
_63:
	push	_929
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	push	_930
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_932
	call	_brl_blitz_NullObjectError
_932:
	mov	dword [ebp-36],ebx
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_935
	call	_brl_blitz_NullObjectError
_935:
	mov	eax,dword [ebx+48]
	mov	dword [ebp-48],eax
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_938
	call	_brl_blitz_NullObjectError
_938:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-44],eax
	jmp	_65
_67:
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_943
	call	_brl_blitz_NullObjectError
_943:
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
	jnz	_947
	push	eax
	call	_bbGCFree
	add	esp,4
_947:
	mov	eax,dword [ebp-36]
	mov	dword [eax+32],ebx
	mov	eax,dword [ebp-36]
	cmp	dword [eax+32],_bbNullObject
	je	_65
	mov	eax,ebp
	push	eax
	push	_960
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_948
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	cmp	dword [ebp-24],eax
	jne	_949
	mov	eax,ebp
	push	eax
	push	_958
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_950
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_952
	call	_brl_blitz_NullObjectError
_952:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_954
	call	_brl_blitz_NullObjectError
_954:
	mov	esi,dword [ebx+36]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_957
	call	_brl_blitz_ArrayBoundsError
_957:
	fld	dword [esi+ebx*4+24]
	fadd	dword [ebp-8]
	sub	esp,4
	fstp	dword [esp]
	push	dword [edi+32]
	call	_bb_wayray
	fstp	st0
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_949:
	push	_959
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-16],1
	call	dword [_bbOnDebugLeaveScope]
_65:
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_941
	call	_brl_blitz_NullObjectError
_941:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_67
_66:
	push	_961
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	push	_962
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_964
	call	_brl_blitz_NullObjectError
_964:
	mov	dword [ebp-40],ebx
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_967
	call	_brl_blitz_NullObjectError
_967:
	mov	eax,dword [ebx+48]
	mov	dword [ebp-56],eax
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_970
	call	_brl_blitz_NullObjectError
_970:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-52],eax
	jmp	_68
_70:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_975
	call	_brl_blitz_NullObjectError
_975:
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
	jnz	_979
	push	eax
	call	_bbGCFree
	add	esp,4
_979:
	mov	eax,dword [ebp-40]
	mov	dword [eax+32],ebx
	mov	eax,dword [ebp-40]
	cmp	dword [eax+32],_bbNullObject
	je	_68
	mov	eax,ebp
	push	eax
	push	_999
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_980
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	cmp	dword [ebp-24],eax
	je	_981
	mov	eax,ebp
	push	eax
	push	_997
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_982
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_984
	call	_brl_blitz_NullObjectError
_984:
	mov	ebx,dword [ebx+32]
	cmp	ebx,_bbNullObject
	jne	_986
	call	_brl_blitz_NullObjectError
_986:
	fld	dword [ebx+44]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_987
	mov	eax,ebp
	push	eax
	push	_996
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_988
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_990
	call	_brl_blitz_NullObjectError
_990:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_992
	call	_brl_blitz_NullObjectError
_992:
	mov	esi,dword [ebx+36]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_995
	call	_brl_blitz_ArrayBoundsError
_995:
	fld	dword [esi+ebx*4+24]
	fadd	dword [ebp-8]
	sub	esp,4
	fstp	dword [esp]
	push	dword [edi+32]
	call	_bb_wayray
	fstp	st0
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_987:
	call	dword [_bbOnDebugLeaveScope]
_981:
	push	_998
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-16],1
	call	dword [_bbOnDebugLeaveScope]
_68:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_973
	call	_brl_blitz_NullObjectError
_973:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_70
_69:
	push	_1000
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1002
	call	_brl_blitz_NullObjectError
_1002:
	mov	eax,dword [ebx+16]
	mov	dword [ebp+-72],eax
	fild	dword [ebp+-72]
	fstp	dword [ebp-32]
	jmp	_241
_241:
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
	push	_1199
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1009
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1886]
	fstp	dword [ebp-32]
	push	_1011
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
	push	_1012
	call	_bbArrayNew
	add	esp,20
	mov	dword [ebp-36],eax
	push	_1014
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],0
	mov	dword [ebp-48],0
	mov	eax,dword [ebp-24]
	mov	dword [ebp-92],eax
	jmp	_1016
_73:
	mov	eax,ebp
	push	eax
	push	_1043
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1018
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],0
	mov	dword [ebp-52],0
	mov	eax,dword [ebp-28]
	mov	dword [ebp-84],eax
	jmp	_1020
_76:
	mov	eax,ebp
	push	eax
	push	_1042
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1022
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-48]
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-36]
	cmp	edi,dword [eax+20]
	jb	_1024
	call	_brl_blitz_ArrayBoundsError
_1024:
	mov	eax,dword [ebp-52]
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-36]
	cmp	esi,dword [eax+24]
	jb	_1026
	call	_brl_blitz_ArrayBoundsError
_1026:
	mov	ebx,2
	mov	eax,dword [ebp-36]
	cmp	ebx,dword [eax+28]
	jb	_1028
	call	_brl_blitz_ArrayBoundsError
_1028:
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
	jb	_1031
	call	_brl_blitz_ArrayBoundsError
_1031:
	mov	ebx,dword [ebp-52]
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+24]
	jb	_1033
	call	_brl_blitz_ArrayBoundsError
_1033:
	mov	eax,dword [ebp-20]
	mov	edx,dword [eax]
	mov	eax,esi
	add	eax,ebx
	mov	eax,dword [edx+eax*4+28]
	mov	dword [edi+32],eax
	push	_1034
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-48]
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-36]
	cmp	edi,dword [eax+20]
	jb	_1036
	call	_brl_blitz_ArrayBoundsError
_1036:
	mov	eax,dword [ebp-52]
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-36]
	cmp	esi,dword [eax+24]
	jb	_1038
	call	_brl_blitz_ArrayBoundsError
_1038:
	mov	ebx,1
	mov	eax,dword [ebp-36]
	cmp	ebx,dword [eax+28]
	jb	_1040
	call	_brl_blitz_ArrayBoundsError
_1040:
	mov	edx,dword [ebp-36]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	shl	eax,2
	add	edx,eax
	mov	dword [edx+32],9999
	call	dword [_bbOnDebugLeaveScope]
_74:
	add	dword [ebp-52],1
_1020:
	mov	eax,dword [ebp-84]
	cmp	dword [ebp-52],eax
	jle	_76
_75:
	call	dword [_bbOnDebugLeaveScope]
_71:
	add	dword [ebp-48],1
_1016:
	mov	eax,dword [ebp-92]
	cmp	dword [ebp-48],eax
	jle	_73
_72:
	push	_1044
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
	je	_1045
	fld	dword [ebp-8]
	fld	dword [ebp-16]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
_1045:
	cmp	eax,0
	je	_1047
	mov	eax,ebp
	push	eax
	push	_1049
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1048
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1887]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_250
_1047:
	push	_1050
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
	jne	_1051
	mov	eax,ebp
	push	eax
	push	_1053
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1052
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1888]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_250
_1051:
	push	_1054
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
	jne	_1055
	mov	eax,ebp
	push	eax
	push	_1057
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1056
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1889]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_250
_1055:
	push	_1058
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
	jne	_1059
	mov	eax,ebp
	push	eax
	push	_1061
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1060
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1890]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_250
_1059:
	push	_1062
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
	jne	_1063
	mov	eax,ebp
	push	eax
	push	_1065
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1064
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1891]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_250
_1063:
	push	_1066
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
	jne	_1067
	mov	eax,ebp
	push	eax
	push	_1069
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1068
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1892]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_250
_1067:
	push	_1070
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
	jne	_1071
	mov	eax,ebp
	push	eax
	push	_1073
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1072
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1893]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_250
_1071:
	push	_1074
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
	jne	_1075
	mov	eax,ebp
	push	eax
	push	_1077
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1076
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1894]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_250
_1075:
	push	_1078
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
	jne	_1079
	mov	eax,ebp
	push	eax
	push	_1081
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1080
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1895]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_250
_1079:
	push	_1082
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
	jb	_1084
	call	_brl_blitz_ArrayBoundsError
_1084:
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
	jb	_1086
	call	_brl_blitz_ArrayBoundsError
_1086:
	mov	ebx,1
	mov	eax,dword [ebp-36]
	cmp	ebx,dword [eax+28]
	jb	_1088
	call	_brl_blitz_ArrayBoundsError
_1088:
	mov	edx,dword [ebp-36]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	shl	eax,2
	add	edx,eax
	mov	dword [edx+32],1
	push	_1090
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
	jnz	_1091
	push	dword [ebp-36]
	call	_bbGCFree
	add	esp,4
_1091:
	push	_1093
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1896]
	fstp	dword [ebp-40]
	mov	dword [ebp-44],-1
	push	_1096
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],0
	mov	dword [ebp-56],-1
	jmp	_1098
_79:
	mov	eax,ebp
	push	eax
	push	_1175
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1099
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],0
	mov	dword [ebp-60],-1
	jmp	_1101
_82:
	mov	eax,ebp
	push	eax
	push	_1174
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1102
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1103
	mov	eax,dword [ebp-60]
	cmp	eax,0
	sete	al
	movzx	eax,al
_1103:
	cmp	eax,0
	je	_1105
	mov	eax,ebp
	push	eax
	push	_1106
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1107
_1105:
	mov	eax,ebp
	push	eax
	push	_1173
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1108
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1109
	mov	eax,dword [ebp-60]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_1109:
	cmp	eax,0
	je	_1111
	mov	eax,ebp
	push	eax
	push	_1113
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1112
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],315
	call	dword [_bbOnDebugLeaveScope]
_1111:
	push	_1114
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1115
	mov	eax,dword [ebp-60]
	cmp	eax,0
	sete	al
	movzx	eax,al
_1115:
	cmp	eax,0
	je	_1117
	mov	eax,ebp
	push	eax
	push	_1119
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1118
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],180
	call	dword [_bbOnDebugLeaveScope]
_1117:
	push	_1120
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1121
	mov	eax,dword [ebp-60]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1121:
	cmp	eax,0
	je	_1123
	mov	eax,ebp
	push	eax
	push	_1125
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1124
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],45
	call	dword [_bbOnDebugLeaveScope]
_1123:
	push	_1126
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1127
	mov	eax,dword [ebp-60]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_1127:
	cmp	eax,0
	je	_1129
	mov	eax,ebp
	push	eax
	push	_1131
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1130
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],270
	call	dword [_bbOnDebugLeaveScope]
_1129:
	push	_1132
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1133
	mov	eax,dword [ebp-60]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1133:
	cmp	eax,0
	je	_1135
	mov	eax,ebp
	push	eax
	push	_1137
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1136
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],90
	call	dword [_bbOnDebugLeaveScope]
_1135:
	push	_1138
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1139
	mov	eax,dword [ebp-60]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_1139:
	cmp	eax,0
	je	_1141
	mov	eax,ebp
	push	eax
	push	_1143
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1142
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],225
	call	dword [_bbOnDebugLeaveScope]
_1141:
	push	_1144
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1145
	mov	eax,dword [ebp-60]
	cmp	eax,0
	sete	al
	movzx	eax,al
_1145:
	cmp	eax,0
	je	_1147
	mov	eax,ebp
	push	eax
	push	_1149
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1148
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],0
	call	dword [_bbOnDebugLeaveScope]
_1147:
	push	_1150
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1151
	mov	eax,dword [ebp-60]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1151:
	cmp	eax,0
	je	_1153
	mov	eax,ebp
	push	eax
	push	_1155
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1154
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],135
	call	dword [_bbOnDebugLeaveScope]
_1153:
	push	_1156
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
	jb	_1158
	call	_brl_blitz_ArrayBoundsError
_1158:
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
	jb	_1160
	call	_brl_blitz_ArrayBoundsError
_1160:
	mov	ebx,1
	mov	eax,dword [ebp-36]
	cmp	ebx,dword [eax+28]
	jb	_1162
	call	_brl_blitz_ArrayBoundsError
_1162:
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
	jne	_1163
	mov	eax,ebp
	push	eax
	push	_1172
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1164
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-44]
	mov	dword [ebp+-96],eax
	fild	dword [ebp+-96]
	fstp	dword [ebp-32]
	push	_1165
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
	jb	_1167
	call	_brl_blitz_ArrayBoundsError
_1167:
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
	jb	_1169
	call	_brl_blitz_ArrayBoundsError
_1169:
	mov	ebx,1
	mov	eax,dword [ebp-36]
	cmp	ebx,dword [eax+28]
	jb	_1171
	call	_brl_blitz_ArrayBoundsError
_1171:
	mov	edx,dword [ebp-36]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	mov	eax,dword [edx+eax*4+32]
	mov	dword [ebp+-96],eax
	fild	dword [ebp+-96]
	fstp	dword [ebp-40]
	call	dword [_bbOnDebugLeaveScope]
_1163:
	call	dword [_bbOnDebugLeaveScope]
_1107:
	call	dword [_bbOnDebugLeaveScope]
_80:
	add	dword [ebp-60],1
_1101:
	cmp	dword [ebp-60],1
	jle	_82
_81:
	call	dword [_bbOnDebugLeaveScope]
_77:
	add	dword [ebp-56],1
_1098:
	cmp	dword [ebp-56],1
	jle	_79
_78:
	push	_1176
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-64],0
	mov	dword [ebp-64],0
	mov	eax,dword [ebp-24]
	mov	dword [ebp-88],eax
	jmp	_1178
_85:
	mov	eax,ebp
	push	eax
	push	_1197
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1180
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-68],0
	mov	dword [ebp-68],0
	mov	eax,dword [ebp-28]
	mov	dword [ebp-80],eax
	jmp	_1182
_88:
	mov	eax,ebp
	push	eax
	push	_1196
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1184
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-64]
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax]
	imul	ebx,dword [eax+24]
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+20]
	jb	_1186
	call	_brl_blitz_ArrayBoundsError
_1186:
	mov	esi,dword [ebp-68]
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_1188
	call	_brl_blitz_ArrayBoundsError
_1188:
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
	jb	_1191
	call	_brl_blitz_ArrayBoundsError
_1191:
	mov	eax,dword [ebp-68]
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-36]
	cmp	esi,dword [eax+24]
	jb	_1193
	call	_brl_blitz_ArrayBoundsError
_1193:
	mov	ebx,1
	mov	eax,dword [ebp-36]
	cmp	ebx,dword [eax+28]
	jb	_1195
	call	_brl_blitz_ArrayBoundsError
_1195:
	mov	edx,dword [ebp-36]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	mov	edx,dword [edx+eax*4+32]
	mov	eax,dword [ebp-72]
	mov	dword [eax+28],edx
	call	dword [_bbOnDebugLeaveScope]
_86:
	add	dword [ebp-68],1
_1182:
	mov	eax,dword [ebp-80]
	cmp	dword [ebp-68],eax
	jle	_88
_87:
	call	dword [_bbOnDebugLeaveScope]
_83:
	add	dword [ebp-64],1
_1178:
	mov	eax,dword [ebp-88]
	cmp	dword [ebp-64],eax
	jle	_85
_84:
	push	_1198
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-32]
	fstp	dword [ebp-76]
	jmp	_250
_250:
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
	push	_1557
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1213
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
	jb	_1215
	call	_brl_blitz_ArrayBoundsError
_1215:
	mov	eax,dword [ebp-8]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_1217
	call	_brl_blitz_ArrayBoundsError
_1217:
	mov	ebx,0
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_1219
	call	_brl_blitz_ArrayBoundsError
_1219:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	shl	eax,2
	add	edx,eax
	mov	dword [edx+32],1
	push	_1221
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	cmp	eax,0
	setg	al
	movzx	eax,al
	cmp	eax,0
	je	_1222
	mov	eax,dword [ebp-4]
	cmp	eax,dword [ebp-16]
	setl	al
	movzx	eax,al
_1222:
	cmp	eax,0
	je	_1224
	mov	eax,dword [ebp-8]
	cmp	eax,0
	setg	al
	movzx	eax,al
_1224:
	cmp	eax,0
	je	_1226
	mov	eax,dword [ebp-8]
	cmp	eax,dword [ebp-20]
	setl	al
	movzx	eax,al
_1226:
	cmp	eax,0
	je	_1228
	mov	eax,ebp
	push	eax
	push	_1556
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1229
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
	jne	_1230
	mov	eax,ebp
	push	eax
	push	_1239
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1231
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
	jb	_1233
	call	_brl_blitz_ArrayBoundsError
_1233:
	mov	eax,dword [ebp-8]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_1235
	call	_brl_blitz_ArrayBoundsError
_1235:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_1237
	call	_brl_blitz_ArrayBoundsError
_1237:
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
_1230:
	push	_1240
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	mov	dword [ebp-28],-1
	jmp	_1242
_91:
	mov	eax,ebp
	push	eax
	push	_1360
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1243
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],0
	mov	dword [ebp-32],-1
	jmp	_1245
_94:
	mov	eax,ebp
	push	eax
	push	_1359
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1246
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1247
	mov	eax,dword [ebp-32]
	cmp	eax,0
	sete	al
	movzx	eax,al
_1247:
	cmp	eax,0
	je	_1249
	mov	eax,ebp
	push	eax
	push	_1250
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1251
_1249:
	mov	eax,ebp
	push	eax
	push	_1357
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1252
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-36]
	push	_1254
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1255
	mov	eax,dword [ebp-32]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_1255:
	cmp	eax,0
	je	_1257
	mov	eax,ebp
	push	eax
	push	_1259
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1258
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
_1257:
	push	_1260
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1261
	mov	eax,dword [ebp-32]
	cmp	eax,0
	sete	al
	movzx	eax,al
_1261:
	cmp	eax,0
	je	_1263
	mov	eax,ebp
	push	eax
	push	_1265
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1264
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
_1263:
	push	_1266
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1267
	mov	eax,dword [ebp-32]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1267:
	cmp	eax,0
	je	_1269
	mov	eax,ebp
	push	eax
	push	_1271
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1270
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
_1269:
	push	_1272
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1273
	mov	eax,dword [ebp-32]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_1273:
	cmp	eax,0
	je	_1275
	mov	eax,ebp
	push	eax
	push	_1277
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1276
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
_1275:
	push	_1278
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1279
	mov	eax,dword [ebp-32]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1279:
	cmp	eax,0
	je	_1281
	mov	eax,ebp
	push	eax
	push	_1283
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1282
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
_1281:
	push	_1284
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1285
	mov	eax,dword [ebp-32]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_1285:
	cmp	eax,0
	je	_1287
	mov	eax,ebp
	push	eax
	push	_1289
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1288
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
_1287:
	push	_1290
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1291
	mov	eax,dword [ebp-32]
	cmp	eax,0
	sete	al
	movzx	eax,al
_1291:
	cmp	eax,0
	je	_1293
	mov	eax,ebp
	push	eax
	push	_1295
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1294
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
_1293:
	push	_1296
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1297
	mov	eax,dword [ebp-32]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1297:
	cmp	eax,0
	je	_1299
	mov	eax,ebp
	push	eax
	push	_1301
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1300
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
_1299:
	push	_1302
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
	jb	_1304
	call	_brl_blitz_ArrayBoundsError
_1304:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-32]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_1306
	call	_brl_blitz_ArrayBoundsError
_1306:
	mov	ebx,2
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_1308
	call	_brl_blitz_ArrayBoundsError
_1308:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	cmp	dword [edx+eax*4+32],0
	jne	_1309
	mov	eax,ebp
	push	eax
	push	_1327
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1310
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
	jb	_1312
	call	_brl_blitz_ArrayBoundsError
_1312:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-32]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_1314
	call	_brl_blitz_ArrayBoundsError
_1314:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_1316
	call	_brl_blitz_ArrayBoundsError
_1316:
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
	jne	_1317
	mov	eax,ebp
	push	eax
	push	_1326
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1318
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
	jb	_1320
	call	_brl_blitz_ArrayBoundsError
_1320:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-32]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_1322
	call	_brl_blitz_ArrayBoundsError
_1322:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_1324
	call	_brl_blitz_ArrayBoundsError
_1324:
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
_1317:
	call	dword [_bbOnDebugLeaveScope]
_1309:
	push	_1328
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
	jb	_1330
	call	_brl_blitz_ArrayBoundsError
_1330:
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
	jb	_1332
	call	_brl_blitz_ArrayBoundsError
_1332:
	mov	dword [ebp-84],1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	mov	eax,dword [eax+28]
	cmp	dword [ebp-84],eax
	jb	_1334
	call	_brl_blitz_ArrayBoundsError
_1334:
	mov	edx,dword [ebp-4]
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	imul	edx,dword [eax+24]
	mov	dword [ebp-68],edx
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-68],eax
	jb	_1336
	call	_brl_blitz_ArrayBoundsError
_1336:
	mov	eax,dword [ebp-8]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+24]
	jb	_1338
	call	_brl_blitz_ArrayBoundsError
_1338:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_1340
	call	_brl_blitz_ArrayBoundsError
_1340:
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
	jge	_1341
	mov	eax,ebp
	push	eax
	push	_1356
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1342
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
	jb	_1344
	call	_brl_blitz_ArrayBoundsError
_1344:
	mov	eax,dword [ebp-8]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_1346
	call	_brl_blitz_ArrayBoundsError
_1346:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_1348
	call	_brl_blitz_ArrayBoundsError
_1348:
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
	jb	_1351
	call	_brl_blitz_ArrayBoundsError
_1351:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-32]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_1353
	call	_brl_blitz_ArrayBoundsError
_1353:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_1355
	call	_brl_blitz_ArrayBoundsError
_1355:
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
_1341:
	call	dword [_bbOnDebugLeaveScope]
_1251:
	call	dword [_bbOnDebugLeaveScope]
_92:
	add	dword [ebp-32],1
_1245:
	cmp	dword [ebp-32],1
	jle	_94
_93:
	call	dword [_bbOnDebugLeaveScope]
_89:
	add	dword [ebp-28],1
_1242:
	cmp	dword [ebp-28],1
	jle	_91
_90:
	push	_1361
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],0
	mov	dword [ebp-40],-1
	jmp	_1363
_97:
	mov	eax,ebp
	push	eax
	push	_1435
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1364
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],0
	mov	dword [ebp-44],-1
	jmp	_1366
_100:
	mov	eax,ebp
	push	eax
	push	_1434
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1367
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1368
	mov	eax,dword [ebp-44]
	cmp	eax,0
	sete	al
	movzx	eax,al
_1368:
	cmp	eax,0
	je	_1370
	mov	eax,ebp
	push	eax
	push	_1371
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1372
_1370:
	mov	eax,ebp
	push	eax
	push	_1433
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1373
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-48]
	push	_1375
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1376
	mov	eax,dword [ebp-44]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_1376:
	cmp	eax,0
	je	_1378
	mov	eax,ebp
	push	eax
	push	_1380
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1379
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-48]
	call	dword [_bbOnDebugLeaveScope]
_1378:
	push	_1381
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1382
	mov	eax,dword [ebp-44]
	cmp	eax,0
	sete	al
	movzx	eax,al
_1382:
	cmp	eax,0
	je	_1384
	mov	eax,ebp
	push	eax
	push	_1386
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1385
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-48]
	call	dword [_bbOnDebugLeaveScope]
_1384:
	push	_1387
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1388
	mov	eax,dword [ebp-44]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1388:
	cmp	eax,0
	je	_1390
	mov	eax,ebp
	push	eax
	push	_1392
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1391
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-48]
	call	dword [_bbOnDebugLeaveScope]
_1390:
	push	_1393
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1394
	mov	eax,dword [ebp-44]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_1394:
	cmp	eax,0
	je	_1396
	mov	eax,ebp
	push	eax
	push	_1398
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1397
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-48]
	call	dword [_bbOnDebugLeaveScope]
_1396:
	push	_1399
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1400
	mov	eax,dword [ebp-44]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1400:
	cmp	eax,0
	je	_1402
	mov	eax,ebp
	push	eax
	push	_1404
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1403
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-48]
	call	dword [_bbOnDebugLeaveScope]
_1402:
	push	_1405
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1406
	mov	eax,dword [ebp-44]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_1406:
	cmp	eax,0
	je	_1408
	mov	eax,ebp
	push	eax
	push	_1410
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1409
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-48]
	call	dword [_bbOnDebugLeaveScope]
_1408:
	push	_1411
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1412
	mov	eax,dword [ebp-44]
	cmp	eax,0
	sete	al
	movzx	eax,al
_1412:
	cmp	eax,0
	je	_1414
	mov	eax,ebp
	push	eax
	push	_1416
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1415
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-48]
	call	dword [_bbOnDebugLeaveScope]
_1414:
	push	_1417
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1418
	mov	eax,dword [ebp-44]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1418:
	cmp	eax,0
	je	_1420
	mov	eax,ebp
	push	eax
	push	_1422
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1421
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-48]
	call	dword [_bbOnDebugLeaveScope]
_1420:
	push	_1423
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
	jb	_1425
	call	_brl_blitz_ArrayBoundsError
_1425:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-44]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_1427
	call	_brl_blitz_ArrayBoundsError
_1427:
	mov	ebx,0
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_1429
	call	_brl_blitz_ArrayBoundsError
_1429:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	cmp	dword [edx+eax*4+32],0
	jne	_1430
	mov	eax,ebp
	push	eax
	push	_1432
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1431
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
_1430:
	call	dword [_bbOnDebugLeaveScope]
_1372:
	call	dword [_bbOnDebugLeaveScope]
_98:
	add	dword [ebp-44],1
_1366:
	cmp	dword [ebp-44],1
	jle	_100
_99:
	call	dword [_bbOnDebugLeaveScope]
_95:
	add	dword [ebp-40],1
_1363:
	cmp	dword [ebp-40],1
	jle	_97
_96:
	push	_1436
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],0
	mov	dword [ebp-52],-1
	jmp	_1438
_103:
	mov	eax,ebp
	push	eax
	push	_1555
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1439
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],0
	mov	dword [ebp-56],-1
	jmp	_1441
_106:
	mov	eax,ebp
	push	eax
	push	_1554
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1442
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1443
	mov	eax,dword [ebp-56]
	cmp	eax,0
	sete	al
	movzx	eax,al
_1443:
	cmp	eax,0
	je	_1445
	mov	eax,ebp
	push	eax
	push	_1446
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1447
_1445:
	mov	eax,ebp
	push	eax
	push	_1553
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1448
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-60]
	push	_1450
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1451
	mov	eax,dword [ebp-56]
	cmp	eax,-1
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
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-60]
	call	dword [_bbOnDebugLeaveScope]
_1453:
	push	_1456
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1457
	mov	eax,dword [ebp-56]
	cmp	eax,0
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
	fld1
	fstp	dword [ebp-60]
	call	dword [_bbOnDebugLeaveScope]
_1459:
	push	_1462
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1463
	mov	eax,dword [ebp-56]
	cmp	eax,1
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
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-60]
	call	dword [_bbOnDebugLeaveScope]
_1465:
	push	_1468
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1469
	mov	eax,dword [ebp-56]
	cmp	eax,-1
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
	fld1
	fstp	dword [ebp-60]
	call	dword [_bbOnDebugLeaveScope]
_1471:
	push	_1474
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1475
	mov	eax,dword [ebp-56]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1475:
	cmp	eax,0
	je	_1477
	mov	eax,ebp
	push	eax
	push	_1479
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1478
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-60]
	call	dword [_bbOnDebugLeaveScope]
_1477:
	push	_1480
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1481
	mov	eax,dword [ebp-56]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_1481:
	cmp	eax,0
	je	_1483
	mov	eax,ebp
	push	eax
	push	_1485
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1484
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-60]
	call	dword [_bbOnDebugLeaveScope]
_1483:
	push	_1486
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1487
	mov	eax,dword [ebp-56]
	cmp	eax,0
	sete	al
	movzx	eax,al
_1487:
	cmp	eax,0
	je	_1489
	mov	eax,ebp
	push	eax
	push	_1491
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1490
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-60]
	call	dword [_bbOnDebugLeaveScope]
_1489:
	push	_1492
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1493
	mov	eax,dword [ebp-56]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1493:
	cmp	eax,0
	je	_1495
	mov	eax,ebp
	push	eax
	push	_1497
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1496
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-60]
	call	dword [_bbOnDebugLeaveScope]
_1495:
	push	_1498
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
	jb	_1500
	call	_brl_blitz_ArrayBoundsError
_1500:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-56]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_1502
	call	_brl_blitz_ArrayBoundsError
_1502:
	mov	ebx,2
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_1504
	call	_brl_blitz_ArrayBoundsError
_1504:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	cmp	dword [edx+eax*4+32],0
	jne	_1505
	mov	eax,ebp
	push	eax
	push	_1523
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1506
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
	jb	_1508
	call	_brl_blitz_ArrayBoundsError
_1508:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-56]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
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
	jne	_1513
	mov	eax,ebp
	push	eax
	push	_1522
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1514
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
	jb	_1516
	call	_brl_blitz_ArrayBoundsError
_1516:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-56]
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
	mov	ebx,edx
	fld	dword [ebp-60]
	fadd	dword [ebp-24]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebx+32],eax
	call	dword [_bbOnDebugLeaveScope]
_1513:
	call	dword [_bbOnDebugLeaveScope]
_1505:
	push	_1524
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
	jb	_1526
	call	_brl_blitz_ArrayBoundsError
_1526:
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
	jb	_1528
	call	_brl_blitz_ArrayBoundsError
_1528:
	mov	dword [ebp-80],1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	mov	eax,dword [eax+28]
	cmp	dword [ebp-80],eax
	jb	_1530
	call	_brl_blitz_ArrayBoundsError
_1530:
	mov	edx,dword [ebp-4]
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	imul	edx,dword [eax+24]
	mov	dword [ebp-64],edx
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-64],eax
	jb	_1532
	call	_brl_blitz_ArrayBoundsError
_1532:
	mov	eax,dword [ebp-8]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+24]
	jb	_1534
	call	_brl_blitz_ArrayBoundsError
_1534:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_1536
	call	_brl_blitz_ArrayBoundsError
_1536:
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
	jge	_1537
	mov	eax,ebp
	push	eax
	push	_1552
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1538
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
	jb	_1540
	call	_brl_blitz_ArrayBoundsError
_1540:
	mov	eax,dword [ebp-8]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_1542
	call	_brl_blitz_ArrayBoundsError
_1542:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_1544
	call	_brl_blitz_ArrayBoundsError
_1544:
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
	jb	_1547
	call	_brl_blitz_ArrayBoundsError
_1547:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-56]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_1549
	call	_brl_blitz_ArrayBoundsError
_1549:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_1551
	call	_brl_blitz_ArrayBoundsError
_1551:
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
_1537:
	call	dword [_bbOnDebugLeaveScope]
_1447:
	call	dword [_bbOnDebugLeaveScope]
_104:
	add	dword [ebp-56],1
_1441:
	cmp	dword [ebp-56],1
	jle	_106
_105:
	call	dword [_bbOnDebugLeaveScope]
_101:
	add	dword [ebp-52],1
_1438:
	cmp	dword [ebp-52],1
	jle	_103
_102:
	call	dword [_bbOnDebugLeaveScope]
_1228:
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
_bb_mouseover:
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
	mov	dword [ebp-20],0
	push	ebp
	push	_1572
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1559
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	push	_1561
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_MouseX
	cmp	eax,dword [ebp-4]
	setg	al
	movzx	eax,al
	cmp	eax,0
	je	_1562
	call	_brl_polledinput_MouseX
	mov	edx,dword [ebp-4]
	add	edx,dword [ebp-12]
	cmp	eax,edx
	setl	al
	movzx	eax,al
_1562:
	cmp	eax,0
	je	_1564
	call	_brl_polledinput_MouseY
	cmp	eax,dword [ebp-8]
	setg	al
	movzx	eax,al
_1564:
	cmp	eax,0
	je	_1566
	call	_brl_polledinput_MouseY
	mov	edx,dword [ebp-8]
	add	edx,dword [ebp-16]
	cmp	eax,edx
	setl	al
	movzx	eax,al
_1566:
	cmp	eax,0
	je	_1568
	push	ebp
	push	_1570
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1569
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],1
	call	dword [_bbOnDebugLeaveScope]
_1568:
	push	_1571
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	jmp	_264
_264:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_button:
	push	ebp
	mov	ebp,esp
	sub	esp,40
	push	ebx
	push	esi
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
	mov	eax,dword [ebp+28]
	mov	dword [ebp-24],eax
	mov	eax,dword [ebp+32]
	mov	dword [ebp-28],eax
	mov	dword [ebp-32],0
	mov	dword [ebp-36],_bbNullObject
	push	ebp
	push	_1648
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1577
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],0
	push	_1579
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	_1580
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-20]
	add	eax,4
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-16]
	add	eax,4
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-12]
	sub	eax,2
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-8]
	sub	eax,2
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_1581
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-20]
	push	dword [ebp-16]
	push	dword [ebp-12]
	push	dword [ebp-8]
	call	_bb_mouseover
	add	esp,16
	cmp	eax,0
	je	_1582
	push	ebp
	push	_1584
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1583
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	180
	push	180
	push	180
	call	_brl_max2d_SetColor
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1585
_1582:
	push	ebp
	push	_1593
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1586
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-24],0
	je	_1587
	push	ebp
	push	_1589
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1588
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	180
	push	200
	push	180
	call	_brl_max2d_SetColor
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1590
_1587:
	push	ebp
	push	_1592
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1591
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	120
	push	120
	push	120
	call	_brl_max2d_SetColor
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_1590:
	call	dword [_bbOnDebugLeaveScope]
_1585:
	push	_1594
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-20]
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-16]
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-12]
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_1595
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-20]
	push	dword [ebp-16]
	push	dword [ebp-12]
	push	dword [ebp-8]
	call	_bb_mouseover
	add	esp,16
	cmp	eax,0
	je	_1596
	push	ebp
	push	_1598
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1597
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1599
_1596:
	push	ebp
	push	_1607
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1600
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-24],0
	je	_1601
	push	ebp
	push	_1603
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1602
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1604
_1601:
	push	ebp
	push	_1606
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1605
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_1604:
	call	dword [_bbOnDebugLeaveScope]
_1599:
	push	_1608
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ecx,dword [ebp-12]
	mov	eax,dword [ebp-20]
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	add	ecx,eax
	sub	ecx,7
	mov	dword [ebp+-40],ecx
	fild	dword [ebp+-40]
	sub	esp,4
	fstp	dword [esp]
	mov	ecx,dword [ebp-8]
	mov	eax,dword [ebp-16]
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	add	ecx,eax
	mov	dword [ebp+-40],ecx
	fild	dword [ebp+-40]
	mov	eax,dword [ebp-4]
	mov	eax,dword [eax+8]
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	fmul	dword [_2087]
	fdiv	dword [_2088]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebp-4]
	call	_brl_max2d_DrawText
	add	esp,12
	push	_1609
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_md],0
	je	_1610
	push	ebp
	push	_1618
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1611
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-20]
	push	dword [ebp-16]
	push	dword [ebp-12]
	push	dword [ebp-8]
	call	_bb_mouseover
	add	esp,16
	cmp	eax,0
	je	_1612
	push	ebp
	push	_1617
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1613
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_md],0
	je	_1614
	push	ebp
	push	_1616
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1615
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],1
	call	dword [_bbOnDebugLeaveScope]
_1614:
	call	dword [_bbOnDebugLeaveScope]
_1612:
	call	dword [_bbOnDebugLeaveScope]
_1610:
	push	_1619
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	dword [eax+8],0
	jle	_1620
	push	ebp
	push	_1646
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1621
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-20]
	push	dword [ebp-16]
	push	dword [ebp-12]
	push	dword [ebp-8]
	call	_bb_mouseover
	add	esp,16
	cmp	eax,0
	je	_1622
	push	ebp
	push	_1644
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1623
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_Tinfotext
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-36],eax
	push	_1625
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_infotextlist]
	cmp	ebx,_bbNullObject
	jne	_1627
	call	_brl_blitz_NullObjectError
_1627:
	push	dword [ebp-36]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_1628
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_1630
	call	_brl_blitz_NullObjectError
_1630:
	mov	eax,dword [ebp-8]
	mov	dword [ebx+8],eax
	push	_1632
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_1634
	call	_brl_blitz_NullObjectError
_1634:
	mov	eax,dword [ebp-12]
	mov	dword [ebx+12],eax
	push	_1636
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-36]
	cmp	esi,_bbNullObject
	jne	_1638
	call	_brl_blitz_NullObjectError
_1638:
	mov	ebx,dword [ebp-28]
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_1643
	push	eax
	call	_bbGCFree
	add	esp,4
_1643:
	mov	dword [esi+16],ebx
	call	dword [_bbOnDebugLeaveScope]
_1622:
	call	dword [_bbOnDebugLeaveScope]
_1620:
	push	_1647
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	jmp	_273
_273:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_476:
	dd	0
_424:
	db	"object",0
_425:
	db	"texturlist",0
_120:
	db	":brl.linkedlist.TList",0
	align	4
_bb_texturlist:
	dd	_bbNullObject
_426:
	db	"maptexturlist",0
	align	4
_bb_maptexturlist:
	dd	_bbNullObject
_427:
	db	"texgrouplist",0
	align	4
_bb_texgrouplist:
	dd	_bbNullObject
_428:
	db	"maptexgrouplist",0
	align	4
_bb_maptexgrouplist:
	dd	_bbNullObject
_429:
	db	"waypointlist",0
	align	4
_bb_waypointlist:
	dd	_bbNullObject
_430:
	db	"printlistlist",0
	align	4
_bb_printlistlist:
	dd	_bbNullObject
_431:
	db	"actionlist",0
	align	4
_bb_actionlist:
	dd	_bbNullObject
_432:
	db	"infotextlist",0
	align	4
_bb_infotextlist:
	dd	_bbNullObject
_433:
	db	"fenster",0
_434:
	db	":brl.graphics.TGraphics",0
	align	4
_bb_fenster:
	dd	_bbNullObject
_435:
	db	"laterne_1",0
_122:
	db	":brl.max2d.TImage",0
	align	4
_bb_laterne_1:
	dd	_bbNullObject
_436:
	db	"laterne_2",0
	align	4
_bb_laterne_2:
	dd	_bbNullObject
_437:
	db	"laterne_3",0
	align	4
_bb_laterne_3:
	dd	_bbNullObject
_438:
	db	"tex1x",0
_147:
	db	"f",0
	align	4
_bb_tex1x:
	dd	0x41b80000
_439:
	db	"tex1y",0
	align	4
_bb_tex1y:
	dd	0x41b80000
_440:
	db	"tex1w",0
	align	4
_bb_tex1w:
	dd	0x0
_441:
	db	"waypoint_1",0
	align	4
_bb_waypoint_1:
	dd	_bbNullObject
_442:
	db	"waypoint_2",0
	align	4
_bb_waypoint_2:
	dd	_bbNullObject
_443:
	db	"tex2x",0
	align	4
_bb_tex2x:
	dd	0x41200000
_444:
	db	"tex2y",0
	align	4
_bb_tex2y:
	dd	0x41840000
_445:
	db	"tex2w",0
	align	4
_bb_tex2w:
	dd	0x0
_446:
	db	"spass",0
_115:
	db	"i",0
	align	4
_bb_spass:
	dd	0
_447:
	db	"nowGroup",0
_352:
	db	":Ttexgroup",0
	align	4
_bb_nowGroup:
	dd	_bbNullObject
_448:
	db	"menuVy",0
	align	4
_bb_menuVy:
	dd	0
_449:
	db	"gmenuVy",0
	align	4
_bb_gmenuVy:
	dd	0
_450:
	db	"menulock",0
	align	4
_bb_menulock:
	dd	0
_451:
	db	"gmenulock",0
	align	4
_bb_gmenulock:
	dd	0
_452:
	db	"menudiff",0
	align	4
_bb_menudiff:
	dd	0
_453:
	db	"gmenudiff",0
	align	4
_bb_gmenudiff:
	dd	0
_454:
	db	"selectedtex",0
_118:
	db	":Ttextur",0
	align	4
_bb_selectedtex:
	dd	_bbNullObject
_455:
	db	"md",0
	align	4
_bb_md:
	dd	0
_456:
	db	"gVx",0
	align	4
_bb_gVx:
	dd	0x0
_457:
	db	"gVy",0
	align	4
_bb_gVy:
	dd	0x0
_458:
	db	"omx",0
	align	4
_bb_omx:
	dd	0
_459:
	db	"omy",0
	align	4
_bb_omy:
	dd	0
_460:
	db	"selectedlayer",0
	align	4
_bb_selectedlayer:
	dd	0
_461:
	db	"pinselmodus",0
	align	4
_bb_pinselmodus:
	dd	0
_462:
	db	"pinselsize",0
	align	4
_bb_pinselsize:
	dd	0
_463:
	db	"pinselmix",0
	align	4
_bb_pinselmix:
	dd	0
_464:
	db	"pinselunmix",0
	align	4
_bb_pinselunmix:
	dd	0
_465:
	db	"wallmod",0
	align	4
_bb_wallmod:
	dd	0
_466:
	db	"wallmodklick",0
	align	4
_bb_wallmodklick:
	dd	0
_467:
	db	"waymod",0
	align	4
_bb_waymod:
	dd	0
_468:
	db	"waymodaction",0
	align	4
_bb_waymodaction:
	dd	0
_469:
	db	"waymodselect",0
_155:
	db	":Twaypoint",0
	align	4
_bb_waymodselect:
	dd	_bbNullObject
_470:
	db	"waymodcounter",0
	align	4
_bb_waymodcounter:
	dd	0
_471:
	db	"mouselooklock",0
	align	4
_bb_mouselooklock:
	dd	0
_472:
	db	"waycecker",0
	align	4
_bb_waycecker:
	dd	0
_473:
	db	"diagonal",0
	align	4
_bb_diagonal:
	dd	0x0
_474:
	db	"tmr",0
_475:
	db	":brl.timer.Ttimer",0
	align	4
_bb_tmr:
	dd	_bbNullObject
	align	4
_423:
	dd	1
	dd	_424
	dd	4
	dd	_425
	dd	_120
	dd	_bb_texturlist
	dd	4
	dd	_426
	dd	_120
	dd	_bb_maptexturlist
	dd	4
	dd	_427
	dd	_120
	dd	_bb_texgrouplist
	dd	4
	dd	_428
	dd	_120
	dd	_bb_maptexgrouplist
	dd	4
	dd	_429
	dd	_120
	dd	_bb_waypointlist
	dd	4
	dd	_430
	dd	_120
	dd	_bb_printlistlist
	dd	4
	dd	_431
	dd	_120
	dd	_bb_actionlist
	dd	4
	dd	_432
	dd	_120
	dd	_bb_infotextlist
	dd	4
	dd	_433
	dd	_434
	dd	_bb_fenster
	dd	4
	dd	_435
	dd	_122
	dd	_bb_laterne_1
	dd	4
	dd	_436
	dd	_122
	dd	_bb_laterne_2
	dd	4
	dd	_437
	dd	_122
	dd	_bb_laterne_3
	dd	4
	dd	_438
	dd	_147
	dd	_bb_tex1x
	dd	4
	dd	_439
	dd	_147
	dd	_bb_tex1y
	dd	4
	dd	_440
	dd	_147
	dd	_bb_tex1w
	dd	4
	dd	_441
	dd	_122
	dd	_bb_waypoint_1
	dd	4
	dd	_442
	dd	_122
	dd	_bb_waypoint_2
	dd	4
	dd	_443
	dd	_147
	dd	_bb_tex2x
	dd	4
	dd	_444
	dd	_147
	dd	_bb_tex2y
	dd	4
	dd	_445
	dd	_147
	dd	_bb_tex2w
	dd	4
	dd	_446
	dd	_115
	dd	_bb_spass
	dd	4
	dd	_447
	dd	_352
	dd	_bb_nowGroup
	dd	4
	dd	_448
	dd	_115
	dd	_bb_menuVy
	dd	4
	dd	_449
	dd	_115
	dd	_bb_gmenuVy
	dd	4
	dd	_450
	dd	_115
	dd	_bb_menulock
	dd	4
	dd	_451
	dd	_115
	dd	_bb_gmenulock
	dd	4
	dd	_452
	dd	_115
	dd	_bb_menudiff
	dd	4
	dd	_453
	dd	_115
	dd	_bb_gmenudiff
	dd	4
	dd	_454
	dd	_118
	dd	_bb_selectedtex
	dd	4
	dd	_455
	dd	_115
	dd	_bb_md
	dd	4
	dd	_456
	dd	_147
	dd	_bb_gVx
	dd	4
	dd	_457
	dd	_147
	dd	_bb_gVy
	dd	4
	dd	_458
	dd	_115
	dd	_bb_omx
	dd	4
	dd	_459
	dd	_115
	dd	_bb_omy
	dd	4
	dd	_460
	dd	_115
	dd	_bb_selectedlayer
	dd	4
	dd	_461
	dd	_115
	dd	_bb_pinselmodus
	dd	4
	dd	_462
	dd	_115
	dd	_bb_pinselsize
	dd	4
	dd	_463
	dd	_115
	dd	_bb_pinselmix
	dd	4
	dd	_464
	dd	_115
	dd	_bb_pinselunmix
	dd	4
	dd	_465
	dd	_115
	dd	_bb_wallmod
	dd	4
	dd	_466
	dd	_115
	dd	_bb_wallmodklick
	dd	4
	dd	_467
	dd	_115
	dd	_bb_waymod
	dd	4
	dd	_468
	dd	_115
	dd	_bb_waymodaction
	dd	4
	dd	_469
	dd	_155
	dd	_bb_waymodselect
	dd	4
	dd	_470
	dd	_115
	dd	_bb_waymodcounter
	dd	4
	dd	_471
	dd	_115
	dd	_bb_mouselooklock
	dd	4
	dd	_472
	dd	_115
	dd	_bb_waycecker
	dd	4
	dd	_473
	dd	_147
	dd	_bb_diagonal
	dd	4
	dd	_474
	dd	_475
	dd	_bb_tmr
	dd	0
_111:
	db	"Ttextur",0
_112:
	db	"render",0
_113:
	db	"[]:Ttextur",0
_114:
	db	"isRendert",0
_116:
	db	"doRender",0
_117:
	db	"orginal",0
_119:
	db	"redertlist",0
_121:
	db	"img",0
_123:
	db	"pic",0
_124:
	db	":brl.pixmap.TPixmap",0
_125:
	db	"version",0
_126:
	db	"beforeTex",0
_127:
	db	"isAlpha",0
_128:
	db	"b",0
_129:
	db	"isDust",0
_130:
	db	"r",0
_131:
	db	"g",0
_132:
	db	"speicherort",0
_133:
	db	"$",0
_134:
	db	"datname",0
_135:
	db	"group",0
_136:
	db	"eingestellt",0
_137:
	db	"New",0
_138:
	db	"()i",0
_139:
	db	"Delete",0
	align	4
_110:
	dd	2
	dd	_111
	dd	3
	dd	_112
	dd	_113
	dd	8
	dd	3
	dd	_114
	dd	_115
	dd	12
	dd	3
	dd	_116
	dd	_115
	dd	16
	dd	3
	dd	_117
	dd	_118
	dd	20
	dd	3
	dd	_119
	dd	_120
	dd	24
	dd	3
	dd	_121
	dd	_122
	dd	28
	dd	3
	dd	_123
	dd	_124
	dd	32
	dd	3
	dd	_125
	dd	_115
	dd	36
	dd	3
	dd	_126
	dd	_118
	dd	40
	dd	3
	dd	_127
	dd	_128
	dd	44
	dd	3
	dd	_129
	dd	_128
	dd	45
	dd	3
	dd	_130
	dd	_128
	dd	46
	dd	3
	dd	_131
	dd	_128
	dd	47
	dd	3
	dd	_128
	dd	_128
	dd	48
	dd	3
	dd	_132
	dd	_133
	dd	52
	dd	3
	dd	_134
	dd	_133
	dd	56
	dd	3
	dd	_135
	dd	_133
	dd	60
	dd	3
	dd	_136
	dd	_128
	dd	64
	dd	6
	dd	_137
	dd	_138
	dd	16
	dd	6
	dd	_139
	dd	_138
	dd	20
	dd	0
	align	4
_bb_Ttextur:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_110
	dd	65
	dd	__bb_Ttextur_New
	dd	__bb_Ttextur_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_141:
	db	"Ttexgroup",0
_142:
	db	"texlink",0
_143:
	db	"texlist",0
	align	4
_140:
	dd	2
	dd	_141
	dd	3
	dd	_135
	dd	_133
	dd	8
	dd	3
	dd	_142
	dd	_118
	dd	12
	dd	3
	dd	_143
	dd	_120
	dd	16
	dd	6
	dd	_137
	dd	_138
	dd	16
	dd	6
	dd	_139
	dd	_138
	dd	20
	dd	0
	align	4
_bb_Ttexgroup:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_140
	dd	20
	dd	__bb_Ttexgroup_New
	dd	__bb_Ttexgroup_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_145:
	db	"Twaypoint",0
_146:
	db	"x",0
_148:
	db	"y",0
_149:
	db	"cheacked",0
_150:
	db	"size",0
_151:
	db	"name",0
_152:
	db	"action",0
_153:
	db	":Taction",0
_154:
	db	"otherWP",0
_156:
	db	"dist",0
_157:
	db	"[]f",0
_158:
	db	"chaged",0
_159:
	db	"used",0
_160:
	db	"otherlist",0
_161:
	db	"othernames",0
_162:
	db	"[]$",0
_163:
	db	"script",0
	align	4
_144:
	dd	2
	dd	_145
	dd	3
	dd	_146
	dd	_147
	dd	8
	dd	3
	dd	_148
	dd	_147
	dd	12
	dd	3
	dd	_149
	dd	_115
	dd	16
	dd	3
	dd	_150
	dd	_115
	dd	20
	dd	3
	dd	_151
	dd	_133
	dd	24
	dd	3
	dd	_152
	dd	_153
	dd	28
	dd	3
	dd	_154
	dd	_155
	dd	32
	dd	3
	dd	_156
	dd	_157
	dd	36
	dd	3
	dd	_158
	dd	_115
	dd	40
	dd	3
	dd	_159
	dd	_147
	dd	44
	dd	3
	dd	_160
	dd	_120
	dd	48
	dd	3
	dd	_161
	dd	_162
	dd	52
	dd	3
	dd	_163
	dd	_162
	dd	56
	dd	6
	dd	_137
	dd	_138
	dd	16
	dd	6
	dd	_139
	dd	_138
	dd	20
	dd	0
	align	4
_bb_Twaypoint:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_144
	dd	60
	dd	__bb_Twaypoint_New
	dd	__bb_Twaypoint_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_165:
	db	"Taction",0
_166:
	db	"respawn",0
_167:
	db	"every",0
_168:
	db	"onlytimes",0
_169:
	db	"win",0
	align	4
_164:
	dd	2
	dd	_165
	dd	3
	dd	_151
	dd	_133
	dd	8
	dd	3
	dd	_166
	dd	_115
	dd	12
	dd	3
	dd	_167
	dd	_115
	dd	16
	dd	3
	dd	_168
	dd	_115
	dd	20
	dd	3
	dd	_169
	dd	_115
	dd	24
	dd	6
	dd	_137
	dd	_138
	dd	16
	dd	6
	dd	_139
	dd	_138
	dd	20
	dd	0
	align	4
_bb_Taction:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_164
	dd	28
	dd	__bb_Taction_New
	dd	__bb_Taction_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_171:
	db	"Tinfotext",0
_172:
	db	"Text",0
	align	4
_170:
	dd	2
	dd	_171
	dd	3
	dd	_146
	dd	_115
	dd	8
	dd	3
	dd	_148
	dd	_115
	dd	12
	dd	3
	dd	_172
	dd	_133
	dd	16
	dd	6
	dd	_137
	dd	_138
	dd	16
	dd	6
	dd	_139
	dd	_138
	dd	20
	dd	0
	align	4
_bb_Tinfotext:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_170
	dd	20
	dd	__bb_Tinfotext_New
	dd	__bb_Tinfotext_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_276:
	db	"D:/Proggen/projecte/team/PanzerS/object.bmx",0
	align	4
_275:
	dd	_276
	dd	25
	dd	1
	align	4
_278:
	dd	0
	align	4
_280:
	dd	_276
	dd	26
	dd	1
	align	4
_283:
	dd	_276
	dd	32
	dd	1
	align	4
_286:
	dd	_276
	dd	33
	dd	1
	align	4
_289:
	dd	_276
	dd	44
	dd	1
	align	4
_292:
	dd	_276
	dd	45
	dd	1
	align	4
_295:
	dd	_276
	dd	52
	dd	1
	align	4
_298:
	dd	_276
	dd	57
	dd	1
	align	4
_301:
	dd	_276
	dd	59
	dd	1
	align	4
_20:
	dd	_bbStringClass
	dd	2147483647
	dd	23
	dw	80,97,110,122,101,114,83,58,32,79,98,106,101,99,116,32
	dw	69,100,105,116,111,114,33
	align	4
_306:
	dd	_276
	dd	60
	dd	1
	align	4
_309:
	dd	_276
	dd	61
	dd	1
	align	4
_310:
	dd	_276
	dd	63
	dd	1
	align	4
_311:
	dd	_276
	dd	64
	dd	1
	align	4
_313:
	dd	_bbStringClass
	dd	2147483647
	dd	29
	dw	76,97,100,101,32,45,48,49,37,32,100,101,115,32,87,101
	dw	108,116,117,110,116,101,114,103,97,110,103,115,33
	align	4
_314:
	dd	_276
	dd	65
	dd	1
	align	4
_315:
	dd	_276
	dd	68
	dd	1
	align	4
_24:
	dd	_bbStringClass
	dd	2147483647
	dd	27
	dw	103,102,120,92,111,98,106,101,99,116,115,92,108,97,116,101
	dw	114,110,101,95,49,95,49,46,112,110,103
	align	4
_318:
	dd	_276
	dd	69
	dd	1
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	27
	dw	103,102,120,92,111,98,106,101,99,116,115,92,108,97,116,101
	dw	114,110,101,95,49,95,50,46,112,110,103
	align	4
_321:
	dd	_276
	dd	70
	dd	1
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	27
	dw	103,102,120,92,111,98,106,101,99,116,115,92,108,97,116,101
	dw	114,110,101,95,49,95,51,46,112,110,103
	align	4
_324:
	dd	_276
	dd	71
	dd	1
	align	4
_325:
	dd	_276
	dd	73
	dd	1
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	28
	dw	103,102,120,92,111,98,106,101,99,116,115,92,119,97,121,112
	dw	111,105,110,116,95,49,95,49,46,112,110,103
	align	4
_328:
	dd	_276
	dd	74
	dd	1
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	28
	dw	103,102,120,92,111,98,106,101,99,116,115,92,119,97,121,112
	dw	111,105,110,116,95,49,95,50,46,112,110,103
	align	4
_331:
	dd	_276
	dd	75
	dd	1
	align	4
_332:
	dd	_276
	dd	77
	dd	1
	align	4
_333:
	dd	_276
	dd	80
	dd	1
	align	4
_334:
	dd	_276
	dd	82
	dd	1
_351:
	db	"cTtexgroup",0
	align	4
_350:
	dd	3
	dd	0
	dd	2
	dd	_351
	dd	_352
	dd	-4
	dd	0
	align	4
_344:
	dd	_276
	dd	83
	dd	2
	align	4
_349:
	dd	_276
	dd	83
	dd	26
	align	4
_353:
	dd	_276
	dd	86
	dd	1
	align	4
_354:
	dd	_276
	dd	87
	dd	1
	align	4
_355:
	dd	_276
	dd	88
	dd	1
	align	4
_356:
	dd	_276
	dd	90
	dd	1
_358:
	db	"D:/Proggen/projecte/team/PanzerS/inc/may.bmx",0
	align	4
_357:
	dd	_358
	dd	220
	dd	1
	align	8
_1653:
	dd	0x0,0x40000000
	align	4
_360:
	dd	_276
	dd	94
	dd	1
	align	4
_363:
	dd	_276
	dd	96
	dd	1
	align	4
_421:
	dd	3
	dd	0
	dd	0
	align	4
_364:
	dd	_276
	dd	97
	dd	2
	align	4
_367:
	dd	_276
	dd	98
	dd	2
	align	4
_368:
	dd	_276
	dd	100
	dd	2
	align	4
_369:
	dd	_276
	dd	102
	dd	2
	align	4
_370:
	dd	_276
	dd	103
	dd	2
	align	4
_371:
	dd	_276
	dd	104
	dd	2
	align	4
_372:
	dd	_276
	dd	107
	dd	2
	align	4
_377:
	dd	3
	dd	0
	dd	0
	align	4
_376:
	dd	_276
	dd	107
	dd	27
	align	4
_378:
	dd	_276
	dd	109
	dd	2
	align	4
_385:
	dd	3
	dd	0
	dd	0
	align	4
_380:
	dd	_276
	dd	110
	dd	3
	align	4
_1654:
	dd	0x40c00000
	align	4
_381:
	dd	_276
	dd	111
	dd	3
	align	4
_1655:
	dd	0x42b40000
	align	4
_384:
	dd	3
	dd	0
	dd	0
	align	4
_383:
	dd	_276
	dd	111
	dd	22
	align	4
_386:
	dd	_276
	dd	114
	dd	2
	align	4
_1656:
	dd	0x40c00000
	align	4
_387:
	dd	_276
	dd	115
	dd	2
	align	4
_1657:
	dd	0x43b40000
	align	4
_390:
	dd	3
	dd	0
	dd	0
	align	4
_389:
	dd	_276
	dd	115
	dd	22
	align	4
_1658:
	dd	0x43b40000
	align	4
_391:
	dd	_276
	dd	117
	dd	2
	align	4
_399:
	dd	3
	dd	0
	dd	0
	align	4
_393:
	dd	_276
	dd	118
	dd	3
	align	4
_394:
	dd	_276
	dd	119
	dd	3
	align	4
_398:
	dd	3
	dd	0
	dd	0
	align	4
_396:
	dd	_276
	dd	119
	dd	23
	align	4
_397:
	dd	_276
	dd	119
	dd	35
	align	4
_400:
	dd	_276
	dd	122
	dd	2
	align	4
_401:
	dd	_276
	dd	123
	dd	2
	align	4
_1659:
	dd	0x41200000
	align	4
_1660:
	dd	0x41200000
	align	4
_402:
	dd	_276
	dd	124
	dd	2
	align	4
_403:
	dd	_276
	dd	125
	dd	2
	align	4
_1661:
	dd	0x420c0000
	align	4
_1662:
	dd	0x425c0000
	align	4
_410:
	dd	3
	dd	0
	dd	0
	align	4
_409:
	dd	_276
	dd	125
	dd	51
	align	4
_1663:
	dd	0x42c80000
	align	4
_1664:
	dd	0x41200000
	align	4
_1665:
	dd	0x42c80000
	align	4
_1666:
	dd	0x41200000
	align	4
_411:
	dd	_276
	dd	126
	dd	2
	align	4
_1667:
	dd	0x42c80000
	align	4
_1668:
	dd	0x41200000
	align	4
_1669:
	dd	0x42c80000
	align	4
_1670:
	dd	0x41200000
	align	4
_412:
	dd	_276
	dd	128
	dd	2
	align	4
_413:
	dd	_276
	dd	129
	dd	2
	align	4
_414:
	dd	_276
	dd	130
	dd	2
	align	4
_415:
	dd	_276
	dd	131
	dd	2
	align	4
_416:
	dd	_276
	dd	132
	dd	2
	align	4
_417:
	dd	_276
	dd	133
	dd	2
	align	4
_1671:
	dd	0x42c80000
	align	4
_1672:
	dd	0x40a00000
	align	4
_1673:
	dd	0x43fa0000
	align	4
_1674:
	dd	0x40a00000
	align	4
_418:
	dd	_276
	dd	134
	dd	2
	align	4
_419:
	dd	_276
	dd	135
	dd	2
	align	4
_420:
	dd	_276
	dd	138
	dd	2
	align	4
_422:
	dd	_276
	dd	141
	dd	1
_490:
	db	"Self",0
	align	4
_489:
	dd	1
	dd	_137
	dd	2
	dd	_490
	dd	_118
	dd	-4
	dd	0
_478:
	db	":Ttextur",0
	align	4
_488:
	dd	3
	dd	0
	dd	0
	align	4
_514:
	dd	1
	dd	_137
	dd	2
	dd	_490
	dd	_352
	dd	-4
	dd	0
	align	4
_513:
	dd	3
	dd	0
	dd	0
	align	4
_533:
	dd	1
	dd	_137
	dd	2
	dd	_490
	dd	_155
	dd	-4
	dd	0
_525:
	db	"f",0
_528:
	db	"$",0
_530:
	db	"$",0
	align	4
_532:
	dd	3
	dd	0
	dd	0
	align	4
_551:
	dd	1
	dd	_137
	dd	2
	dd	_490
	dd	_153
	dd	-4
	dd	0
	align	4
_550:
	dd	3
	dd	0
	dd	0
_558:
	db	":Tinfotext",0
	align	4
_557:
	dd	1
	dd	_137
	dd	2
	dd	_490
	dd	_558
	dd	-4
	dd	0
	align	4
_556:
	dd	3
	dd	0
	dd	0
_588:
	db	"DrawPicture",0
_589:
	db	"bild",0
_590:
	db	":brl.max2d.Timage",0
_591:
	db	"width",0
_592:
	db	"height",0
_593:
	db	"nowscale_X",0
_594:
	db	"nowscale_Y",0
_595:
	db	"nowhandle_X",0
_596:
	db	"nowhandle_Y",0
_597:
	db	"factorx",0
_598:
	db	"factory",0
_599:
	db	"entferung",0
_600:
	db	"winkel",0
	align	4
_587:
	dd	1
	dd	_588
	dd	2
	dd	_589
	dd	_590
	dd	-4
	dd	2
	dd	_146
	dd	_147
	dd	-8
	dd	2
	dd	_148
	dd	_147
	dd	-12
	dd	2
	dd	_591
	dd	_147
	dd	-16
	dd	2
	dd	_592
	dd	_147
	dd	-20
	dd	2
	dd	_593
	dd	_147
	dd	-24
	dd	2
	dd	_594
	dd	_147
	dd	-28
	dd	2
	dd	_595
	dd	_147
	dd	-32
	dd	2
	dd	_596
	dd	_147
	dd	-36
	dd	2
	dd	_597
	dd	_147
	dd	-40
	dd	2
	dd	_598
	dd	_147
	dd	-44
	dd	2
	dd	_599
	dd	_147
	dd	-48
	dd	2
	dd	_600
	dd	_147
	dd	-52
	dd	0
	align	4
_562:
	dd	_358
	dd	2
	dd	2
	align	4
_564:
	dd	_358
	dd	3
	dd	2
	align	4
_566:
	dd	_358
	dd	4
	dd	2
	align	4
_567:
	dd	_358
	dd	6
	dd	2
	align	4
_569:
	dd	_358
	dd	7
	dd	2
	align	4
_571:
	dd	_358
	dd	8
	dd	2
	align	4
_572:
	dd	_358
	dd	10
	dd	2
	align	4
_576:
	dd	_358
	dd	11
	dd	2
	align	4
_580:
	dd	_358
	dd	13
	dd	2
	align	4
_581:
	dd	_358
	dd	16
	dd	2
	align	8
_1730:
	dd	0x0,0x40000000
	align	8
_1731:
	dd	0x0,0x40000000
	align	4
_583:
	dd	_358
	dd	17
	dd	2
	align	8
_1732:
	dd	0x0,0x40668000
	align	4
_585:
	dd	_358
	dd	19
	dd	2
	align	4
_586:
	dd	_358
	dd	21
	dd	2
_622:
	db	"PushCollision",0
_623:
	db	"x1",0
_624:
	db	"y1",0
_625:
	db	"size1",0
_626:
	db	"x2",0
_627:
	db	"y2",0
_628:
	db	"size2",0
_629:
	db	"festergegenstend2",0
	align	4
_621:
	dd	1
	dd	_622
	dd	5
	dd	_623
	dd	_147
	dd	-8
	dd	5
	dd	_624
	dd	_147
	dd	-12
	dd	2
	dd	_625
	dd	_147
	dd	-16
	dd	5
	dd	_626
	dd	_147
	dd	-20
	dd	5
	dd	_627
	dd	_147
	dd	-24
	dd	2
	dd	_628
	dd	_147
	dd	-28
	dd	2
	dd	_629
	dd	_128
	dd	-4
	dd	2
	dd	_599
	dd	_147
	dd	-32
	dd	0
	align	4
_601:
	dd	_358
	dd	25
	dd	2
	align	8
_1737:
	dd	0x0,0x40000000
	align	8
_1738:
	dd	0x0,0x40000000
	align	4
_603:
	dd	_358
	dd	26
	dd	2
	align	4
_1739:
	dd	0x40000000
	align	4
_604:
	dd	_358
	dd	27
	dd	2
	align	4
_1740:
	dd	0x40000000
	align	4
_605:
	dd	_358
	dd	28
	dd	2
	align	4
_620:
	dd	3
	dd	0
	dd	2
	dd	_600
	dd	_147
	dd	-36
	dd	0
	align	4
_607:
	dd	_358
	dd	29
	dd	3
	align	4
_1741:
	dd	0x42b40000
	align	4
_609:
	dd	_358
	dd	31
	dd	3
	align	4
_613:
	dd	3
	dd	0
	dd	0
	align	4
_611:
	dd	_358
	dd	32
	dd	4
	align	4
_612:
	dd	_358
	dd	33
	dd	4
	align	4
_619:
	dd	3
	dd	0
	dd	0
	align	4
_615:
	dd	_358
	dd	35
	dd	4
	align	4
_1742:
	dd	0x40000000
	align	4
_616:
	dd	_358
	dd	36
	dd	4
	align	4
_1743:
	dd	0x40000000
	align	4
_617:
	dd	_358
	dd	37
	dd	4
	align	4
_1744:
	dd	0x43340000
	align	4
_1745:
	dd	0x40000000
	align	4
_618:
	dd	_358
	dd	38
	dd	4
	align	4
_1746:
	dd	0x43340000
	align	4
_1747:
	dd	0x40000000
_657:
	db	"BufferTower",0
_658:
	db	"turmwinkel",0
_659:
	db	"zielwinkel",0
_660:
	db	"drehspeed",0
_661:
	db	"totalwinkel",0
_662:
	db	"bufftore",0
_663:
	db	"test",0
	align	4
_656:
	dd	1
	dd	_657
	dd	2
	dd	_658
	dd	_147
	dd	-4
	dd	2
	dd	_659
	dd	_147
	dd	-8
	dd	2
	dd	_660
	dd	_147
	dd	-12
	dd	2
	dd	_661
	dd	_147
	dd	-16
	dd	2
	dd	_662
	dd	_147
	dd	-20
	dd	2
	dd	_663
	dd	_115
	dd	-24
	dd	0
	align	4
_630:
	dd	_358
	dd	44
	dd	2
	align	4
_1752:
	dd	0x43340000
	align	4
_632:
	dd	_358
	dd	45
	dd	2
	align	4
_634:
	dd	3
	dd	0
	dd	0
	align	4
_633:
	dd	_358
	dd	46
	dd	3
	align	4
_1753:
	dd	0x43b40000
	align	4
_1754:
	dd	0xc3340000
	align	4
_635:
	dd	_358
	dd	48
	dd	2
	align	4
_637:
	dd	3
	dd	0
	dd	0
	align	4
_636:
	dd	_358
	dd	49
	dd	3
	align	4
_1755:
	dd	0x43b40000
	align	4
_1756:
	dd	0x43340000
	align	4
_638:
	dd	_358
	dd	51
	dd	2
	align	4
_641:
	dd	_358
	dd	52
	dd	2
	align	4
_645:
	dd	3
	dd	0
	dd	0
	align	4
_643:
	dd	_358
	dd	52
	dd	34
	align	4
_644:
	dd	_358
	dd	52
	dd	58
	align	4
_646:
	dd	_358
	dd	53
	dd	2
	align	4
_650:
	dd	3
	dd	0
	dd	0
	align	4
_648:
	dd	_358
	dd	53
	dd	36
	align	4
_649:
	dd	_358
	dd	53
	dd	59
	align	4
_651:
	dd	_358
	dd	54
	dd	2
	align	4
_654:
	dd	3
	dd	0
	dd	0
	align	4
_653:
	dd	_358
	dd	54
	dd	19
	align	4
_655:
	dd	_358
	dd	55
	dd	2
_689:
	db	"BufferTarget",0
_690:
	db	"drehschalter",0
	align	4
_688:
	dd	1
	dd	_689
	dd	2
	dd	_658
	dd	_147
	dd	-4
	dd	2
	dd	_659
	dd	_147
	dd	-8
	dd	2
	dd	_690
	dd	_147
	dd	-12
	dd	2
	dd	_661
	dd	_147
	dd	-16
	dd	2
	dd	_662
	dd	_147
	dd	-20
	dd	2
	dd	_663
	dd	_115
	dd	-24
	dd	0
	align	4
_664:
	dd	_358
	dd	59
	dd	2
	align	4
_1764:
	dd	0x43340000
	align	4
_666:
	dd	_358
	dd	60
	dd	2
	align	4
_668:
	dd	3
	dd	0
	dd	0
	align	4
_667:
	dd	_358
	dd	61
	dd	3
	align	4
_1765:
	dd	0x43b40000
	align	4
_1766:
	dd	0xc3340000
	align	4
_669:
	dd	_358
	dd	63
	dd	2
	align	4
_671:
	dd	3
	dd	0
	dd	0
	align	4
_670:
	dd	_358
	dd	64
	dd	3
	align	4
_1767:
	dd	0x43b40000
	align	4
_1768:
	dd	0x43340000
	align	4
_672:
	dd	_358
	dd	66
	dd	2
	align	4
_675:
	dd	_358
	dd	67
	dd	2
	align	4
_678:
	dd	3
	dd	0
	dd	0
	align	4
_677:
	dd	_358
	dd	67
	dd	37
	align	4
_679:
	dd	_358
	dd	68
	dd	2
	align	4
_682:
	dd	3
	dd	0
	dd	0
	align	4
_681:
	dd	_358
	dd	68
	dd	39
	align	4
_683:
	dd	_358
	dd	69
	dd	2
	align	4
_686:
	dd	3
	dd	0
	dd	0
	align	4
_685:
	dd	_358
	dd	69
	dd	19
	align	4
_687:
	dd	_358
	dd	70
	dd	2
_701:
	db	"CalcWinkel",0
	align	4
_700:
	dd	1
	dd	_701
	dd	2
	dd	_146
	dd	_147
	dd	-4
	dd	2
	dd	_148
	dd	_147
	dd	-8
	dd	2
	dd	_600
	dd	_147
	dd	-12
	dd	0
	align	4
_691:
	dd	_358
	dd	74
	dd	2
	align	4
_693:
	dd	_358
	dd	75
	dd	2
	align	4
_695:
	dd	3
	dd	0
	dd	0
	align	4
_694:
	dd	_358
	dd	76
	dd	3
	align	4
_1776:
	dd	0x43b40000
	align	4
_696:
	dd	_358
	dd	78
	dd	2
	align	4
_698:
	dd	3
	dd	0
	dd	0
	align	4
_697:
	dd	_358
	dd	79
	dd	3
	align	4
_1777:
	dd	0x43b40000
	align	4
_1778:
	dd	0x43b40000
	align	4
_699:
	dd	_358
	dd	81
	dd	2
_822:
	db	"waypointtodest",0
_823:
	db	"postition",0
_824:
	db	"ziel",0
_825:
	db	"foundwp",0
_826:
	db	"enf84",0
_827:
	db	"nr8",0
	align	4
_821:
	dd	1
	dd	_822
	dd	2
	dd	_823
	dd	_155
	dd	-4
	dd	2
	dd	_824
	dd	_155
	dd	-8
	dd	2
	dd	_825
	dd	_155
	dd	-12
	dd	2
	dd	_826
	dd	_147
	dd	-16
	dd	2
	dd	_827
	dd	_115
	dd	-20
	dd	0
	align	4
_702:
	dd	_358
	dd	85
	dd	2
	align	4
_704:
	dd	_358
	dd	87
	dd	2
_777:
	db	"eTwaypoint",0
	align	4
_776:
	dd	3
	dd	0
	dd	2
	dd	_777
	dd	_155
	dd	-24
	dd	0
	align	4
_714:
	dd	_358
	dd	88
	dd	3
	align	4
_718:
	dd	_358
	dd	89
	dd	3
	align	4
_722:
	dd	_358
	dd	90
	dd	3
_775:
	db	"nr3",0
	align	4
_774:
	dd	3
	dd	0
	dd	2
	dd	_775
	dd	_115
	dd	-28
	dd	0
	align	4
_726:
	dd	_358
	dd	91
	dd	4
	align	4
_730:
	dd	_358
	dd	92
	dd	4
	align	4
_732:
	dd	_358
	dd	93
	dd	4
_773:
	db	"entf55",0
	align	4
_772:
	dd	3
	dd	0
	dd	2
	dd	_773
	dd	_147
	dd	-32
	dd	0
	align	4
_750:
	dd	_358
	dd	94
	dd	5
	align	8
_1783:
	dd	0x0,0x40000000
	align	8
_1784:
	dd	0x0,0x40000000
	align	4
_764:
	dd	_358
	dd	95
	dd	5
	align	4
_771:
	dd	_358
	dd	96
	dd	5
	align	4
_778:
	dd	_358
	dd	101
	dd	2
	align	4
_781:
	dd	3
	dd	0
	dd	0
	align	4
_780:
	dd	_358
	dd	101
	dd	27
	align	4
_782:
	dd	_358
	dd	103
	dd	2
	align	4
_783:
	dd	_358
	dd	105
	dd	2
	align	4
_1785:
	dd	0x461c3c00
	align	4
_786:
	dd	_358
	dd	106
	dd	2
	align	4
_819:
	dd	3
	dd	0
	dd	0
	align	4
_804:
	dd	_358
	dd	107
	dd	3
	align	4
_818:
	dd	3
	dd	0
	dd	0
	align	4
_810:
	dd	_358
	dd	108
	dd	4
	align	4
_813:
	dd	_358
	dd	109
	dd	4
	align	4
_820:
	dd	_358
	dd	113
	dd	2
_1004:
	db	"wayray",0
_1005:
	db	"dian",0
_1006:
	db	"nr40",0
_1007:
	db	"enf844",0
_1008:
	db	"best",0
	align	4
_1003:
	dd	1
	dd	_1004
	dd	2
	dd	_824
	dd	_155
	dd	-4
	dd	2
	dd	_1005
	dd	_147
	dd	-8
	dd	2
	dd	_156
	dd	_157
	dd	-12
	dd	2
	dd	_1006
	dd	_115
	dd	-16
	dd	2
	dd	_1007
	dd	_147
	dd	-20
	dd	2
	dd	_1008
	dd	_115
	dd	-24
	dd	0
	align	4
_828:
	dd	_358
	dd	117
	dd	2
	align	4
_832:
	dd	_358
	dd	118
	dd	2
	align	4
_838:
	dd	3
	dd	0
	dd	0
	align	4
_834:
	dd	_358
	dd	118
	dd	19
	align	4
_839:
	dd	_358
	dd	119
	dd	2
_840:
	db	"f",0
	align	4
_842:
	dd	_358
	dd	121
	dd	2
	align	4
_844:
	dd	_358
	dd	122
	dd	2
	align	4
_907:
	dd	3
	dd	0
	dd	0
	align	4
_862:
	dd	_358
	dd	123
	dd	3
	align	4
_905:
	dd	3
	dd	0
	dd	0
	align	4
_873:
	dd	_358
	dd	124
	dd	4
	align	4
_904:
	dd	3
	dd	0
	dd	0
	align	4
_877:
	dd	_358
	dd	125
	dd	5
	align	4
_888:
	dd	_358
	dd	126
	dd	5
	align	4
_903:
	dd	3
	dd	0
	dd	0
	align	4
_894:
	dd	_358
	dd	126
	dd	35
	align	4
_906:
	dd	_358
	dd	129
	dd	3
	align	4
_908:
	dd	_358
	dd	132
	dd	2
	align	4
_1826:
	dd	0x461c3c00
	align	4
_911:
	dd	_358
	dd	133
	dd	2
_928:
	db	"nr5",0
	align	4
_927:
	dd	3
	dd	0
	dd	2
	dd	_928
	dd	_115
	dd	-28
	dd	0
	align	4
_914:
	dd	_358
	dd	134
	dd	3
	align	4
_926:
	dd	3
	dd	0
	dd	0
	align	4
_922:
	dd	_358
	dd	135
	dd	4
	align	4
_923:
	dd	_358
	dd	136
	dd	4
	align	4
_929:
	dd	_358
	dd	140
	dd	2
	align	4
_930:
	dd	_358
	dd	141
	dd	2
	align	4
_960:
	dd	3
	dd	0
	dd	0
	align	4
_948:
	dd	_358
	dd	142
	dd	3
	align	4
_958:
	dd	3
	dd	0
	dd	0
	align	4
_950:
	dd	_358
	dd	143
	dd	4
	align	4
_959:
	dd	_358
	dd	145
	dd	3
	align	4
_961:
	dd	_358
	dd	148
	dd	2
	align	4
_962:
	dd	_358
	dd	149
	dd	2
	align	4
_999:
	dd	3
	dd	0
	dd	0
	align	4
_980:
	dd	_358
	dd	150
	dd	3
	align	4
_997:
	dd	3
	dd	0
	dd	0
	align	4
_982:
	dd	_358
	dd	151
	dd	4
	align	4
_996:
	dd	3
	dd	0
	dd	0
	align	4
_988:
	dd	_358
	dd	151
	dd	34
	align	4
_998:
	dd	_358
	dd	153
	dd	3
	align	4
_1000:
	dd	_358
	dd	156
	dd	2
_1200:
	db	"maptodest",0
_1201:
	db	"postitionx",0
_1202:
	db	"postitiony",0
_1203:
	db	"zielx",0
_1204:
	db	"ziely",0
_1205:
	db	"map",0
_1206:
	db	"[,]i",0
_1207:
	db	"mapx",0
_1208:
	db	"mapy",0
_1209:
	db	"mapdat",0
_1210:
	db	"[,,]i",0
_1211:
	db	"enf",0
_1212:
	db	"rig",0
	align	4
_1199:
	dd	1
	dd	_1200
	dd	2
	dd	_1201
	dd	_147
	dd	-4
	dd	2
	dd	_1202
	dd	_147
	dd	-8
	dd	2
	dd	_1203
	dd	_147
	dd	-12
	dd	2
	dd	_1204
	dd	_147
	dd	-16
	dd	5
	dd	_1205
	dd	_1206
	dd	-20
	dd	2
	dd	_1207
	dd	_115
	dd	-24
	dd	2
	dd	_1208
	dd	_115
	dd	-28
	dd	2
	dd	_825
	dd	_147
	dd	-32
	dd	2
	dd	_1209
	dd	_1210
	dd	-36
	dd	2
	dd	_1211
	dd	_147
	dd	-40
	dd	2
	dd	_1212
	dd	_115
	dd	-44
	dd	0
	align	4
_1009:
	dd	_358
	dd	163
	dd	2
	align	4
_1886:
	dd	0xbf800000
	align	4
_1011:
	dd	_358
	dd	165
	dd	2
_1012:
	db	"i",0
	align	4
_1014:
	dd	_358
	dd	167
	dd	2
	align	4
_1043:
	dd	3
	dd	0
	dd	2
	dd	_146
	dd	_115
	dd	-48
	dd	0
	align	4
_1018:
	dd	_358
	dd	168
	dd	3
	align	4
_1042:
	dd	3
	dd	0
	dd	2
	dd	_148
	dd	_115
	dd	-52
	dd	0
	align	4
_1022:
	dd	_358
	dd	169
	dd	4
	align	4
_1034:
	dd	_358
	dd	170
	dd	4
	align	4
_1044:
	dd	_358
	dd	174
	dd	2
	align	4
_1049:
	dd	3
	dd	0
	dd	0
	align	4
_1048:
	dd	_358
	dd	174
	dd	52
	align	4
_1887:
	dd	0xbf800000
	align	4
_1050:
	dd	_358
	dd	175
	dd	2
	align	4
_1053:
	dd	3
	dd	0
	dd	0
	align	4
_1052:
	dd	_358
	dd	175
	dd	26
	align	4
_1888:
	dd	0xbf800000
	align	4
_1054:
	dd	_358
	dd	176
	dd	2
	align	4
_1057:
	dd	3
	dd	0
	dd	0
	align	4
_1056:
	dd	_358
	dd	176
	dd	28
	align	4
_1889:
	dd	0xbf800000
	align	4
_1058:
	dd	_358
	dd	177
	dd	2
	align	4
_1061:
	dd	3
	dd	0
	dd	0
	align	4
_1060:
	dd	_358
	dd	177
	dd	26
	align	4
_1890:
	dd	0xbf800000
	align	4
_1062:
	dd	_358
	dd	178
	dd	2
	align	4
_1065:
	dd	3
	dd	0
	dd	0
	align	4
_1064:
	dd	_358
	dd	178
	dd	28
	align	4
_1891:
	dd	0xbf800000
	align	4
_1066:
	dd	_358
	dd	179
	dd	2
	align	4
_1069:
	dd	3
	dd	0
	dd	0
	align	4
_1068:
	dd	_358
	dd	179
	dd	21
	align	4
_1892:
	dd	0xbf800000
	align	4
_1070:
	dd	_358
	dd	180
	dd	2
	align	4
_1073:
	dd	3
	dd	0
	dd	0
	align	4
_1072:
	dd	_358
	dd	180
	dd	23
	align	4
_1893:
	dd	0xbf800000
	align	4
_1074:
	dd	_358
	dd	181
	dd	2
	align	4
_1077:
	dd	3
	dd	0
	dd	0
	align	4
_1076:
	dd	_358
	dd	181
	dd	21
	align	4
_1894:
	dd	0xbf800000
	align	4
_1078:
	dd	_358
	dd	182
	dd	2
	align	4
_1081:
	dd	3
	dd	0
	dd	0
	align	4
_1080:
	dd	_358
	dd	182
	dd	23
	align	4
_1895:
	dd	0xbf800000
	align	4
_1082:
	dd	_358
	dd	184
	dd	2
	align	4
_1090:
	dd	_358
	dd	186
	dd	2
	align	4
_1093:
	dd	_358
	dd	188
	dd	2
	align	4
_1896:
	dd	0x461c3c00
	align	4
_1096:
	dd	_358
	dd	189
	dd	2
	align	4
_1175:
	dd	3
	dd	0
	dd	2
	dd	_146
	dd	_115
	dd	-56
	dd	0
	align	4
_1099:
	dd	_358
	dd	190
	dd	3
	align	4
_1174:
	dd	3
	dd	0
	dd	2
	dd	_148
	dd	_115
	dd	-60
	dd	0
	align	4
_1102:
	dd	_358
	dd	191
	dd	4
	align	4
_1106:
	dd	3
	dd	0
	dd	0
	align	4
_1173:
	dd	3
	dd	0
	dd	0
	align	4
_1108:
	dd	_358
	dd	194
	dd	5
	align	4
_1113:
	dd	3
	dd	0
	dd	0
	align	4
_1112:
	dd	_358
	dd	194
	dd	31
	align	4
_1114:
	dd	_358
	dd	195
	dd	5
	align	4
_1119:
	dd	3
	dd	0
	dd	0
	align	4
_1118:
	dd	_358
	dd	195
	dd	30
	align	4
_1120:
	dd	_358
	dd	196
	dd	5
	align	4
_1125:
	dd	3
	dd	0
	dd	0
	align	4
_1124:
	dd	_358
	dd	196
	dd	30
	align	4
_1126:
	dd	_358
	dd	197
	dd	5
	align	4
_1131:
	dd	3
	dd	0
	dd	0
	align	4
_1130:
	dd	_358
	dd	197
	dd	30
	align	4
_1132:
	dd	_358
	dd	198
	dd	5
	align	4
_1137:
	dd	3
	dd	0
	dd	0
	align	4
_1136:
	dd	_358
	dd	198
	dd	29
	align	4
_1138:
	dd	_358
	dd	199
	dd	5
	align	4
_1143:
	dd	3
	dd	0
	dd	0
	align	4
_1142:
	dd	_358
	dd	199
	dd	30
	align	4
_1144:
	dd	_358
	dd	200
	dd	5
	align	4
_1149:
	dd	3
	dd	0
	dd	0
	align	4
_1148:
	dd	_358
	dd	200
	dd	29
	align	4
_1150:
	dd	_358
	dd	201
	dd	5
	align	4
_1155:
	dd	3
	dd	0
	dd	0
	align	4
_1154:
	dd	_358
	dd	201
	dd	29
	align	4
_1156:
	dd	_358
	dd	203
	dd	5
	align	4
_1172:
	dd	3
	dd	0
	dd	0
	align	4
_1164:
	dd	_358
	dd	204
	dd	6
	align	4
_1165:
	dd	_358
	dd	205
	dd	6
	align	4
_1176:
	dd	_358
	dd	211
	dd	2
	align	4
_1197:
	dd	3
	dd	0
	dd	2
	dd	_146
	dd	_115
	dd	-64
	dd	0
	align	4
_1180:
	dd	_358
	dd	212
	dd	3
	align	4
_1196:
	dd	3
	dd	0
	dd	2
	dd	_148
	dd	_115
	dd	-68
	dd	0
	align	4
_1184:
	dd	_358
	dd	213
	dd	4
	align	4
_1198:
	dd	_358
	dd	217
	dd	2
_1558:
	db	"mapray",0
	align	4
_1557:
	dd	1
	dd	_1558
	dd	2
	dd	_1203
	dd	_115
	dd	-4
	dd	2
	dd	_1204
	dd	_115
	dd	-8
	dd	5
	dd	_1205
	dd	_1210
	dd	-12
	dd	2
	dd	_1207
	dd	_115
	dd	-16
	dd	2
	dd	_1208
	dd	_115
	dd	-20
	dd	2
	dd	_1005
	dd	_147
	dd	-24
	dd	0
	align	4
_1213:
	dd	_358
	dd	222
	dd	2
	align	4
_1221:
	dd	_358
	dd	223
	dd	2
	align	4
_1556:
	dd	3
	dd	0
	dd	0
	align	4
_1229:
	dd	_358
	dd	224
	dd	3
	align	4
_1239:
	dd	3
	dd	0
	dd	0
	align	4
_1231:
	dd	_358
	dd	224
	dd	20
	align	4
_1240:
	dd	_358
	dd	226
	dd	3
	align	4
_1360:
	dd	3
	dd	0
	dd	2
	dd	_146
	dd	_115
	dd	-28
	dd	0
	align	4
_1243:
	dd	_358
	dd	227
	dd	4
	align	4
_1359:
	dd	3
	dd	0
	dd	2
	dd	_148
	dd	_115
	dd	-32
	dd	0
	align	4
_1246:
	dd	_358
	dd	228
	dd	5
	align	4
_1250:
	dd	3
	dd	0
	dd	0
_1358:
	db	"diagonalset",0
	align	4
_1357:
	dd	3
	dd	0
	dd	2
	dd	_1358
	dd	_147
	dd	-36
	dd	0
	align	4
_1252:
	dd	_358
	dd	231
	dd	6
	align	4
_1254:
	dd	_358
	dd	232
	dd	6
	align	4
_1259:
	dd	3
	dd	0
	dd	0
	align	4
_1258:
	dd	_358
	dd	232
	dd	32
	align	4
_1260:
	dd	_358
	dd	233
	dd	6
	align	4
_1265:
	dd	3
	dd	0
	dd	0
	align	4
_1264:
	dd	_358
	dd	233
	dd	31
	align	4
_1266:
	dd	_358
	dd	234
	dd	6
	align	4
_1271:
	dd	3
	dd	0
	dd	0
	align	4
_1270:
	dd	_358
	dd	234
	dd	31
	align	4
_1272:
	dd	_358
	dd	235
	dd	6
	align	4
_1277:
	dd	3
	dd	0
	dd	0
	align	4
_1276:
	dd	_358
	dd	235
	dd	31
	align	4
_1278:
	dd	_358
	dd	236
	dd	6
	align	4
_1283:
	dd	3
	dd	0
	dd	0
	align	4
_1282:
	dd	_358
	dd	236
	dd	30
	align	4
_1284:
	dd	_358
	dd	237
	dd	6
	align	4
_1289:
	dd	3
	dd	0
	dd	0
	align	4
_1288:
	dd	_358
	dd	237
	dd	31
	align	4
_1290:
	dd	_358
	dd	238
	dd	6
	align	4
_1295:
	dd	3
	dd	0
	dd	0
	align	4
_1294:
	dd	_358
	dd	238
	dd	30
	align	4
_1296:
	dd	_358
	dd	239
	dd	6
	align	4
_1301:
	dd	3
	dd	0
	dd	0
	align	4
_1300:
	dd	_358
	dd	239
	dd	30
	align	4
_1302:
	dd	_358
	dd	241
	dd	6
	align	4
_1327:
	dd	3
	dd	0
	dd	0
	align	4
_1310:
	dd	_358
	dd	242
	dd	7
	align	4
_1326:
	dd	3
	dd	0
	dd	0
	align	4
_1318:
	dd	_358
	dd	243
	dd	8
	align	4
_1328:
	dd	_358
	dd	246
	dd	6
	align	4
_1356:
	dd	3
	dd	0
	dd	0
	align	4
_1342:
	dd	_358
	dd	247
	dd	7
	align	4
_1361:
	dd	_358
	dd	253
	dd	3
	align	4
_1435:
	dd	3
	dd	0
	dd	2
	dd	_146
	dd	_115
	dd	-40
	dd	0
	align	4
_1364:
	dd	_358
	dd	254
	dd	4
	align	4
_1434:
	dd	3
	dd	0
	dd	2
	dd	_148
	dd	_115
	dd	-44
	dd	0
	align	4
_1367:
	dd	_358
	dd	255
	dd	5
	align	4
_1371:
	dd	3
	dd	0
	dd	0
	align	4
_1433:
	dd	3
	dd	0
	dd	2
	dd	_1358
	dd	_147
	dd	-48
	dd	0
	align	4
_1373:
	dd	_358
	dd	258
	dd	6
	align	4
_1375:
	dd	_358
	dd	259
	dd	6
	align	4
_1380:
	dd	3
	dd	0
	dd	0
	align	4
_1379:
	dd	_358
	dd	259
	dd	32
	align	4
_1381:
	dd	_358
	dd	260
	dd	6
	align	4
_1386:
	dd	3
	dd	0
	dd	0
	align	4
_1385:
	dd	_358
	dd	260
	dd	31
	align	4
_1387:
	dd	_358
	dd	261
	dd	6
	align	4
_1392:
	dd	3
	dd	0
	dd	0
	align	4
_1391:
	dd	_358
	dd	261
	dd	31
	align	4
_1393:
	dd	_358
	dd	262
	dd	6
	align	4
_1398:
	dd	3
	dd	0
	dd	0
	align	4
_1397:
	dd	_358
	dd	262
	dd	31
	align	4
_1399:
	dd	_358
	dd	263
	dd	6
	align	4
_1404:
	dd	3
	dd	0
	dd	0
	align	4
_1403:
	dd	_358
	dd	263
	dd	30
	align	4
_1405:
	dd	_358
	dd	264
	dd	6
	align	4
_1410:
	dd	3
	dd	0
	dd	0
	align	4
_1409:
	dd	_358
	dd	264
	dd	31
	align	4
_1411:
	dd	_358
	dd	265
	dd	6
	align	4
_1416:
	dd	3
	dd	0
	dd	0
	align	4
_1415:
	dd	_358
	dd	265
	dd	30
	align	4
_1417:
	dd	_358
	dd	266
	dd	6
	align	4
_1422:
	dd	3
	dd	0
	dd	0
	align	4
_1421:
	dd	_358
	dd	266
	dd	30
	align	4
_1423:
	dd	_358
	dd	268
	dd	6
	align	4
_1432:
	dd	3
	dd	0
	dd	0
	align	4
_1431:
	dd	_358
	dd	269
	dd	7
	align	4
_1436:
	dd	_358
	dd	275
	dd	3
	align	4
_1555:
	dd	3
	dd	0
	dd	2
	dd	_146
	dd	_115
	dd	-52
	dd	0
	align	4
_1439:
	dd	_358
	dd	276
	dd	4
	align	4
_1554:
	dd	3
	dd	0
	dd	2
	dd	_148
	dd	_115
	dd	-56
	dd	0
	align	4
_1442:
	dd	_358
	dd	277
	dd	5
	align	4
_1446:
	dd	3
	dd	0
	dd	0
	align	4
_1553:
	dd	3
	dd	0
	dd	2
	dd	_1358
	dd	_147
	dd	-60
	dd	0
	align	4
_1448:
	dd	_358
	dd	280
	dd	6
	align	4
_1450:
	dd	_358
	dd	281
	dd	6
	align	4
_1455:
	dd	3
	dd	0
	dd	0
	align	4
_1454:
	dd	_358
	dd	281
	dd	32
	align	4
_1456:
	dd	_358
	dd	282
	dd	6
	align	4
_1461:
	dd	3
	dd	0
	dd	0
	align	4
_1460:
	dd	_358
	dd	282
	dd	31
	align	4
_1462:
	dd	_358
	dd	283
	dd	6
	align	4
_1467:
	dd	3
	dd	0
	dd	0
	align	4
_1466:
	dd	_358
	dd	283
	dd	31
	align	4
_1468:
	dd	_358
	dd	284
	dd	6
	align	4
_1473:
	dd	3
	dd	0
	dd	0
	align	4
_1472:
	dd	_358
	dd	284
	dd	31
	align	4
_1474:
	dd	_358
	dd	285
	dd	6
	align	4
_1479:
	dd	3
	dd	0
	dd	0
	align	4
_1478:
	dd	_358
	dd	285
	dd	30
	align	4
_1480:
	dd	_358
	dd	286
	dd	6
	align	4
_1485:
	dd	3
	dd	0
	dd	0
	align	4
_1484:
	dd	_358
	dd	286
	dd	31
	align	4
_1486:
	dd	_358
	dd	287
	dd	6
	align	4
_1491:
	dd	3
	dd	0
	dd	0
	align	4
_1490:
	dd	_358
	dd	287
	dd	30
	align	4
_1492:
	dd	_358
	dd	288
	dd	6
	align	4
_1497:
	dd	3
	dd	0
	dd	0
	align	4
_1496:
	dd	_358
	dd	288
	dd	30
	align	4
_1498:
	dd	_358
	dd	290
	dd	6
	align	4
_1523:
	dd	3
	dd	0
	dd	0
	align	4
_1506:
	dd	_358
	dd	291
	dd	7
	align	4
_1522:
	dd	3
	dd	0
	dd	0
	align	4
_1514:
	dd	_358
	dd	292
	dd	8
	align	4
_1524:
	dd	_358
	dd	295
	dd	6
	align	4
_1552:
	dd	3
	dd	0
	dd	0
	align	4
_1538:
	dd	_358
	dd	296
	dd	7
_1573:
	db	"mouseover",0
_1574:
	db	"w",0
_1575:
	db	"h",0
_1576:
	db	"ret",0
	align	4
_1572:
	dd	1
	dd	_1573
	dd	2
	dd	_146
	dd	_115
	dd	-4
	dd	2
	dd	_148
	dd	_115
	dd	-8
	dd	2
	dd	_1574
	dd	_115
	dd	-12
	dd	2
	dd	_1575
	dd	_115
	dd	-16
	dd	2
	dd	_1576
	dd	_115
	dd	-20
	dd	0
	align	4
_1559:
	dd	_276
	dd	145
	dd	2
	align	4
_1561:
	dd	_276
	dd	147
	dd	2
	align	4
_1570:
	dd	3
	dd	0
	dd	0
	align	4
_1569:
	dd	_276
	dd	147
	dd	82
	align	4
_1571:
	dd	_276
	dd	149
	dd	2
_1649:
	db	"button",0
_1650:
	db	"text",0
_1651:
	db	"on",0
_1652:
	db	"infotext",0
	align	4
_1648:
	dd	1
	dd	_1649
	dd	2
	dd	_1650
	dd	_133
	dd	-4
	dd	2
	dd	_146
	dd	_115
	dd	-8
	dd	2
	dd	_148
	dd	_115
	dd	-12
	dd	2
	dd	_1574
	dd	_115
	dd	-16
	dd	2
	dd	_1575
	dd	_115
	dd	-20
	dd	2
	dd	_1651
	dd	_115
	dd	-24
	dd	2
	dd	_1652
	dd	_133
	dd	-28
	dd	2
	dd	_1576
	dd	_115
	dd	-32
	dd	0
	align	4
_1577:
	dd	_276
	dd	155
	dd	2
	align	4
_1579:
	dd	_276
	dd	156
	dd	2
	align	4
_1580:
	dd	_276
	dd	157
	dd	2
	align	4
_1581:
	dd	_276
	dd	158
	dd	2
	align	4
_1584:
	dd	3
	dd	0
	dd	0
	align	4
_1583:
	dd	_276
	dd	159
	dd	3
	align	4
_1593:
	dd	3
	dd	0
	dd	0
	align	4
_1586:
	dd	_276
	dd	161
	dd	3
	align	4
_1589:
	dd	3
	dd	0
	dd	0
	align	4
_1588:
	dd	_276
	dd	161
	dd	14
	align	4
_1592:
	dd	3
	dd	0
	dd	0
	align	4
_1591:
	dd	_276
	dd	161
	dd	43
	align	4
_1594:
	dd	_276
	dd	163
	dd	2
	align	4
_1595:
	dd	_276
	dd	164
	dd	2
	align	4
_1598:
	dd	3
	dd	0
	dd	0
	align	4
_1597:
	dd	_276
	dd	165
	dd	3
	align	4
_1607:
	dd	3
	dd	0
	dd	0
	align	4
_1600:
	dd	_276
	dd	167
	dd	3
	align	4
_1603:
	dd	3
	dd	0
	dd	0
	align	4
_1602:
	dd	_276
	dd	167
	dd	14
	align	4
_1606:
	dd	3
	dd	0
	dd	0
	align	4
_1605:
	dd	_276
	dd	167
	dd	37
	align	4
_1608:
	dd	_276
	dd	169
	dd	2
	align	4
_2087:
	dd	0x41080000
	align	4
_2088:
	dd	0x40000000
	align	4
_1609:
	dd	_276
	dd	171
	dd	2
	align	4
_1618:
	dd	3
	dd	0
	dd	0
	align	4
_1611:
	dd	_276
	dd	172
	dd	3
	align	4
_1617:
	dd	3
	dd	0
	dd	0
	align	4
_1613:
	dd	_276
	dd	173
	dd	4
	align	4
_1616:
	dd	3
	dd	0
	dd	0
	align	4
_1615:
	dd	_276
	dd	173
	dd	15
	align	4
_1619:
	dd	_276
	dd	177
	dd	2
	align	4
_1646:
	dd	3
	dd	0
	dd	0
	align	4
_1621:
	dd	_276
	dd	178
	dd	3
_1645:
	db	"nTinfotext",0
	align	4
_1644:
	dd	3
	dd	0
	dd	2
	dd	_1645
	dd	_558
	dd	-36
	dd	0
	align	4
_1623:
	dd	_276
	dd	179
	dd	4
	align	4
_1625:
	dd	_276
	dd	180
	dd	4
	align	4
_1628:
	dd	_276
	dd	181
	dd	4
	align	4
_1632:
	dd	_276
	dd	182
	dd	4
	align	4
_1636:
	dd	_276
	dd	183
	dd	4
	align	4
_1647:
	dd	_276
	dd	187
	dd	2
