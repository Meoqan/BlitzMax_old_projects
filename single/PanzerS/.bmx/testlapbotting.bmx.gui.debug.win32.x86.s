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
	extrn	_bbArrayNew
	extrn	_bbArrayNew1D
	extrn	_bbCos
	extrn	_bbEmptyArray
	extrn	_bbFloatPow
	extrn	_bbFloatToInt
	extrn	_bbGCFree
	extrn	_bbMilliSecs
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
	extrn	_bbStringFromInt
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
	extrn	_brl_max2d_SetAlpha
	extrn	_brl_max2d_SetBlend
	extrn	_brl_max2d_SetColor
	extrn	_brl_max2d_SetHandle
	extrn	_brl_max2d_SetRotation
	extrn	_brl_max2d_SetScale
	extrn	_brl_polledinput_KeyHit
	extrn	_brl_polledinput_MouseX
	extrn	_brl_polledinput_MouseY
	extrn	_brl_random_Rnd
	extrn	_brl_timer_CreateTimer
	public	__bb_TbotT_Delete
	public	__bb_TbotT_New
	public	__bb_Twaypoint_Delete
	public	__bb_Twaypoint_New
	public	__bb_main
	public	_bb_BufferTarget
	public	_bb_BufferTower
	public	_bb_CalcWinkel
	public	_bb_DrawPicture
	public	_bb_Main_smart
	public	_bb_PushCollision
	public	_bb_PushTank
	public	_bb_TbotT
	public	_bb_Twaypoint
	public	_bb_botTlist
	public	_bb_diagonal
	public	_bb_endTwaypoint
	public	_bb_mapray
	public	_bb_maptodest
	public	_bb_nTwaypoint
	public	_bb_printlistlist
	public	_bb_raster
	public	_bb_startTwaypoint
	public	_bb_t1r
	public	_bb_t1s
	public	_bb_t1way
	public	_bb_t1x
	public	_bb_t1y
	public	_bb_t2r
	public	_bb_t2s
	public	_bb_t2x
	public	_bb_t2y
	public	_bb_thesmartNOW
	public	_bb_thesmartarray
	public	_bb_thesmartlist
	public	_bb_tmr
	public	_bb_wax
	public	_bb_way
	public	_bb_waycecker
	public	_bb_waypointlist
	public	_bb_waypointtodest
	public	_bb_wayray
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,316
	push	ebx
	push	esi
	push	edi
	cmp	dword [_1219],0
	je	_1220
	mov	eax,0
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_1220:
	mov	dword [_1219],1
	mov	dword [ebp-4],_bbNullObject
	mov	dword [ebp-28],0
	mov	dword [ebp-32],_bbNullObject
	mov	dword [ebp-36],0
	mov	dword [ebp-40],_bbNullObject
	mov	dword [ebp-44],0
	mov	dword [ebp-48],_bbNullObject
	mov	dword [ebp-52],0
	mov	dword [ebp-56],_bbNullObject
	mov	dword [ebp-60],0
	mov	dword [ebp-64],_bbNullObject
	mov	dword [ebp-68],_bbNullObject
	mov	dword [ebp-8],_bbEmptyArray
	mov	dword [ebp-12],0
	mov	dword [ebp-16],0
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	mov	dword [ebp-72],0
	mov	dword [ebp-80],_bbNullObject
	mov	dword [ebp-84],_bbNullObject
	fldz
	fstp	dword [ebp-88]
	mov	dword [ebp-92],0
	mov	dword [ebp-96],_bbNullObject
	mov	dword [ebp-100],_bbNullObject
	fldz
	fstp	dword [ebp-104]
	fldz
	fstp	dword [ebp-108]
	mov	dword [ebp-76],0
	mov	dword [ebp-112],_bbNullObject
	mov	dword [ebp-116],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_1185
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
	push	_bb_TbotT
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_Twaypoint
	call	_bbObjectRegisterType
	add	esp,4
	push	_335
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_338]
	and	eax,1
	cmp	eax,0
	jne	_339
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_botTlist],eax
	or	dword [_338],1
_339:
	push	_340
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_338]
	and	eax,2
	cmp	eax,0
	jne	_342
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_waypointlist],eax
	or	dword [_338],2
_342:
	push	_343
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_338]
	and	eax,4
	cmp	eax,0
	jne	_345
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_printlistlist],eax
	or	dword [_338],4
_345:
	push	_346
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_18
	inc	dword [ebx+4]
	mov	eax,dword [_bbAppTitle]
	dec	dword [eax+4]
	jnz	_350
	push	eax
	call	_bbGCFree
	add	esp,4
_350:
	mov	dword [_bbAppTitle],ebx
	push	_351
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	60
	push	0
	push	768
	push	1024
	call	_brl_graphics_Graphics
	add	esp,20
	push	_352
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	3
	call	_brl_max2d_SetBlend
	add	esp,4
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
	push	_bb_Twaypoint
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-4],eax
	push	_358
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_waypointlist]
	cmp	ebx,_bbNullObject
	jne	_360
	call	_brl_blitz_NullObjectError
_360:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_361
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_363
	call	_brl_blitz_NullObjectError
_363:
	fld	dword [_bb_wax]
	fstp	dword [ebx+8]
	push	_365
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_367
	call	_brl_blitz_NullObjectError
_367:
	fld	dword [_bb_way]
	fstp	dword [ebx+12]
	push	_369
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	inc	dword [ebx+4]
	mov	eax,dword [_bb_startTwaypoint]
	dec	dword [eax+4]
	jnz	_373
	push	eax
	call	_bbGCFree
	add	esp,4
_373:
	mov	dword [_bb_startTwaypoint],ebx
	push	_374
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_way]
	fadd	dword [_2779]
	fstp	dword [_bb_way]
	push	_375
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_Twaypoint
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nTwaypoint]
	dec	dword [eax+4]
	jnz	_379
	push	eax
	call	_bbGCFree
	add	esp,4
_379:
	mov	dword [_bb_nTwaypoint],ebx
	push	_380
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_waypointlist]
	cmp	ebx,_bbNullObject
	jne	_382
	call	_brl_blitz_NullObjectError
_382:
	push	dword [_bb_nTwaypoint]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_383
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_nTwaypoint]
	cmp	ebx,_bbNullObject
	jne	_385
	call	_brl_blitz_NullObjectError
_385:
	fld	dword [_bb_wax]
	fstp	dword [ebx+8]
	push	_387
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_nTwaypoint]
	cmp	ebx,_bbNullObject
	jne	_389
	call	_brl_blitz_NullObjectError
_389:
	fld	dword [_bb_way]
	fstp	dword [ebx+12]
	push	_391
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_393
	call	_brl_blitz_NullObjectError
_393:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_395
	call	_brl_blitz_NullObjectError
_395:
	push	dword [_bb_nTwaypoint]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_396
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_nTwaypoint]
	cmp	ebx,_bbNullObject
	jne	_398
	call	_brl_blitz_NullObjectError
_398:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_400
	call	_brl_blitz_NullObjectError
_400:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_401
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	mov	dword [ebp-28],-3
	jmp	_403
_21:
	mov	eax,ebp
	push	eax
	push	_481
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_404
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_Twaypoint
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nTwaypoint]
	dec	dword [eax+4]
	jnz	_408
	push	eax
	call	_bbGCFree
	add	esp,4
_408:
	mov	dword [_bb_nTwaypoint],ebx
	push	_409
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_waypointlist]
	cmp	ebx,_bbNullObject
	jne	_411
	call	_brl_blitz_NullObjectError
_411:
	push	dword [_bb_nTwaypoint]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_412
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_nTwaypoint]
	cmp	ebx,_bbNullObject
	jne	_414
	call	_brl_blitz_NullObjectError
_414:
	fld	dword [_bb_wax]
	mov	eax,dword [ebp-28]
	mov	dword [ebp+-316],eax
	fild	dword [ebp+-316]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fstp	dword [ebx+8]
	push	_416
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_nTwaypoint]
	cmp	ebx,_bbNullObject
	jne	_418
	call	_brl_blitz_NullObjectError
_418:
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_2780]
	faddp	st1,st0
	fstp	dword [ebx+12]
	push	_420
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],_bbNullObject
	mov	eax,dword [_bb_waypointlist]
	mov	dword [ebp-276],eax
	mov	ebx,dword [ebp-276]
	cmp	ebx,_bbNullObject
	jne	_424
	call	_brl_blitz_NullObjectError
_424:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-296],eax
	jmp	_22
_24:
	mov	ebx,dword [ebp-296]
	cmp	ebx,_bbNullObject
	jne	_429
	call	_brl_blitz_NullObjectError
_429:
	push	_bb_Twaypoint
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-32],eax
	cmp	dword [ebp-32],_bbNullObject
	je	_22
	mov	eax,ebp
	push	eax
	push	_479
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_430
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_432
	call	_brl_blitz_NullObjectError
_432:
	fld	dword [ebx+12]
	fld	dword [_bb_way]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_435
	fld	dword [_bb_wax]
	mov	eax,dword [ebp-28]
	sub	eax,1
	mov	dword [ebp+-316],eax
	fild	dword [ebp+-316]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_433
	fld	dword [_bb_wax]
	mov	eax,dword [ebp-28]
	add	eax,1
	mov	dword [ebp+-316],eax
	fild	dword [ebp+-316]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
_433:
_435:
	cmp	eax,0
	je	_437
	mov	eax,ebp
	push	eax
	push	_459
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_438
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_nTwaypoint]
	mov	dword [ebp-220],eax
	cmp	dword [ebp-220],_bbNullObject
	jne	_440
	call	_brl_blitz_NullObjectError
_440:
	mov	edi,dword [ebp-32]
	cmp	edi,_bbNullObject
	jne	_442
	call	_brl_blitz_NullObjectError
_442:
	mov	esi,dword [_bb_nTwaypoint]
	cmp	esi,_bbNullObject
	jne	_444
	call	_brl_blitz_NullObjectError
_444:
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_446
	call	_brl_blitz_NullObjectError
_446:
	fld	qword [_2781]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-220]
	fld	dword [eax+8]
	fsub	dword [edi+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-188]
	fld	qword [_2782]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [esi+12]
	fsub	dword [ebx+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-188]
	faddp	st1,st0
	fstp	qword [ebp-188]
	fld	qword [ebp-188]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [_bb_raster]
	fmul	dword [_2783]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_447
	mov	eax,ebp
	push	eax
	push	_458
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_448
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_450
	call	_brl_blitz_NullObjectError
_450:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_452
	call	_brl_blitz_NullObjectError
_452:
	push	dword [_bb_nTwaypoint]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_453
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_nTwaypoint]
	cmp	ebx,_bbNullObject
	jne	_455
	call	_brl_blitz_NullObjectError
_455:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_457
	call	_brl_blitz_NullObjectError
_457:
	push	dword [ebp-32]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_447:
	call	dword [_bbOnDebugLeaveScope]
_437:
	push	_460
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_462
	call	_brl_blitz_NullObjectError
_462:
	fld	dword [ebx+12]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_2784]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_465
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_464
	call	_brl_blitz_NullObjectError
_464:
	fld	dword [ebx+8]
	fld	dword [_bb_wax]
	mov	eax,dword [ebp-28]
	sub	eax,1
	mov	dword [ebp+-316],eax
	fild	dword [ebp+-316]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
_465:
	cmp	eax,0
	je	_467
	mov	eax,ebp
	push	eax
	push	_478
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_468
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_470
	call	_brl_blitz_NullObjectError
_470:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_472
	call	_brl_blitz_NullObjectError
_472:
	push	dword [_bb_nTwaypoint]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_473
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_nTwaypoint]
	cmp	ebx,_bbNullObject
	jne	_475
	call	_brl_blitz_NullObjectError
_475:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_477
	call	_brl_blitz_NullObjectError
_477:
	push	dword [ebp-32]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_467:
	call	dword [_bbOnDebugLeaveScope]
_22:
	mov	ebx,dword [ebp-296]
	cmp	ebx,_bbNullObject
	jne	_427
	call	_brl_blitz_NullObjectError
_427:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_24
_23:
	call	dword [_bbOnDebugLeaveScope]
_19:
	add	dword [ebp-28],1
_403:
	cmp	dword [ebp-28],3
	jle	_21
_20:
	push	_483
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],0
	mov	dword [ebp-36],-4
	jmp	_485
_27:
	mov	eax,ebp
	push	eax
	push	_562
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_486
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_Twaypoint
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nTwaypoint]
	dec	dword [eax+4]
	jnz	_490
	push	eax
	call	_bbGCFree
	add	esp,4
_490:
	mov	dword [_bb_nTwaypoint],ebx
	push	_491
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_waypointlist]
	cmp	ebx,_bbNullObject
	jne	_493
	call	_brl_blitz_NullObjectError
_493:
	push	dword [_bb_nTwaypoint]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_494
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_nTwaypoint]
	cmp	ebx,_bbNullObject
	jne	_496
	call	_brl_blitz_NullObjectError
_496:
	fld	dword [_bb_wax]
	mov	eax,dword [ebp-36]
	mov	dword [ebp+-316],eax
	fild	dword [ebp+-316]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fstp	dword [ebx+8]
	push	_498
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_nTwaypoint]
	cmp	ebx,_bbNullObject
	jne	_500
	call	_brl_blitz_NullObjectError
_500:
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_2785]
	faddp	st1,st0
	fstp	dword [ebx+12]
	push	_502
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],_bbNullObject
	mov	eax,dword [_bb_waypointlist]
	mov	dword [ebp-272],eax
	mov	ebx,dword [ebp-272]
	cmp	ebx,_bbNullObject
	jne	_506
	call	_brl_blitz_NullObjectError
_506:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-292],eax
	jmp	_28
_30:
	mov	ebx,dword [ebp-292]
	cmp	ebx,_bbNullObject
	jne	_511
	call	_brl_blitz_NullObjectError
_511:
	push	_bb_Twaypoint
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-40],eax
	cmp	dword [ebp-40],_bbNullObject
	je	_28
	mov	eax,ebp
	push	eax
	push	_561
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_512
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_514
	call	_brl_blitz_NullObjectError
_514:
	fld	dword [ebx+12]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_2786]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_517
	fld	dword [_bb_wax]
	mov	eax,dword [ebp-36]
	sub	eax,1
	mov	dword [ebp+-316],eax
	fild	dword [ebp+-316]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_515
	fld	dword [_bb_wax]
	mov	eax,dword [ebp-36]
	add	eax,1
	mov	dword [ebp+-316],eax
	fild	dword [ebp+-316]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
_515:
_517:
	cmp	eax,0
	je	_519
	mov	eax,ebp
	push	eax
	push	_541
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_520
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_nTwaypoint]
	mov	dword [ebp-224],eax
	cmp	dword [ebp-224],_bbNullObject
	jne	_522
	call	_brl_blitz_NullObjectError
_522:
	mov	edi,dword [ebp-40]
	cmp	edi,_bbNullObject
	jne	_524
	call	_brl_blitz_NullObjectError
_524:
	mov	esi,dword [_bb_nTwaypoint]
	cmp	esi,_bbNullObject
	jne	_526
	call	_brl_blitz_NullObjectError
_526:
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_528
	call	_brl_blitz_NullObjectError
_528:
	fld	qword [_2787]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-224]
	fld	dword [eax+8]
	fsub	dword [edi+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-180]
	fld	qword [_2788]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [esi+12]
	fsub	dword [ebx+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-180]
	faddp	st1,st0
	fstp	qword [ebp-180]
	fld	qword [ebp-180]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [_bb_raster]
	fmul	dword [_2789]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_529
	mov	eax,ebp
	push	eax
	push	_540
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_530
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_532
	call	_brl_blitz_NullObjectError
_532:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_534
	call	_brl_blitz_NullObjectError
_534:
	push	dword [_bb_nTwaypoint]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_535
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_nTwaypoint]
	cmp	ebx,_bbNullObject
	jne	_537
	call	_brl_blitz_NullObjectError
_537:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_539
	call	_brl_blitz_NullObjectError
_539:
	push	dword [ebp-40]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_529:
	call	dword [_bbOnDebugLeaveScope]
_519:
	push	_542
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_544
	call	_brl_blitz_NullObjectError
_544:
	fld	dword [ebx+12]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_2790]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_547
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_546
	call	_brl_blitz_NullObjectError
_546:
	fld	dword [ebx+8]
	fld	dword [_bb_wax]
	mov	eax,dword [ebp-36]
	sub	eax,1
	mov	dword [ebp+-316],eax
	fild	dword [ebp+-316]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
_547:
	cmp	eax,0
	je	_549
	mov	eax,ebp
	push	eax
	push	_560
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_550
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_552
	call	_brl_blitz_NullObjectError
_552:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_554
	call	_brl_blitz_NullObjectError
_554:
	push	dword [_bb_nTwaypoint]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_555
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_nTwaypoint]
	cmp	ebx,_bbNullObject
	jne	_557
	call	_brl_blitz_NullObjectError
_557:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_559
	call	_brl_blitz_NullObjectError
_559:
	push	dword [ebp-40]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_549:
	call	dword [_bbOnDebugLeaveScope]
_28:
	mov	ebx,dword [ebp-292]
	cmp	ebx,_bbNullObject
	jne	_509
	call	_brl_blitz_NullObjectError
_509:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_30
_29:
	call	dword [_bbOnDebugLeaveScope]
_25:
	add	dword [ebp-36],1
_485:
	cmp	dword [ebp-36],4
	jle	_27
_26:
	push	_563
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],0
	mov	dword [ebp-44],-3
	jmp	_565
_33:
	mov	eax,ebp
	push	eax
	push	_642
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_566
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_Twaypoint
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nTwaypoint]
	dec	dword [eax+4]
	jnz	_570
	push	eax
	call	_bbGCFree
	add	esp,4
_570:
	mov	dword [_bb_nTwaypoint],ebx
	push	_571
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_waypointlist]
	cmp	ebx,_bbNullObject
	jne	_573
	call	_brl_blitz_NullObjectError
_573:
	push	dword [_bb_nTwaypoint]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_574
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_nTwaypoint]
	cmp	ebx,_bbNullObject
	jne	_576
	call	_brl_blitz_NullObjectError
_576:
	fld	dword [_bb_wax]
	mov	eax,dword [ebp-44]
	mov	dword [ebp+-316],eax
	fild	dword [ebp+-316]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fstp	dword [ebx+8]
	push	_578
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_nTwaypoint]
	cmp	ebx,_bbNullObject
	jne	_580
	call	_brl_blitz_NullObjectError
_580:
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_2791]
	faddp	st1,st0
	fstp	dword [ebx+12]
	push	_582
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],_bbNullObject
	mov	eax,dword [_bb_waypointlist]
	mov	dword [ebp-268],eax
	mov	ebx,dword [ebp-268]
	cmp	ebx,_bbNullObject
	jne	_586
	call	_brl_blitz_NullObjectError
_586:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-288],eax
	jmp	_34
_36:
	mov	ebx,dword [ebp-288]
	cmp	ebx,_bbNullObject
	jne	_591
	call	_brl_blitz_NullObjectError
_591:
	push	_bb_Twaypoint
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-48],eax
	cmp	dword [ebp-48],_bbNullObject
	je	_34
	mov	eax,ebp
	push	eax
	push	_641
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_592
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_594
	call	_brl_blitz_NullObjectError
_594:
	fld	dword [ebx+12]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_2792]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_597
	fld	dword [_bb_wax]
	mov	eax,dword [ebp-44]
	sub	eax,1
	mov	dword [ebp+-316],eax
	fild	dword [ebp+-316]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_595
	fld	dword [_bb_wax]
	mov	eax,dword [ebp-44]
	add	eax,1
	mov	dword [ebp+-316],eax
	fild	dword [ebp+-316]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
_595:
_597:
	cmp	eax,0
	je	_599
	mov	eax,ebp
	push	eax
	push	_621
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_600
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_nTwaypoint]
	mov	dword [ebp-228],eax
	cmp	dword [ebp-228],_bbNullObject
	jne	_602
	call	_brl_blitz_NullObjectError
_602:
	mov	edi,dword [ebp-48]
	cmp	edi,_bbNullObject
	jne	_604
	call	_brl_blitz_NullObjectError
_604:
	mov	esi,dword [_bb_nTwaypoint]
	cmp	esi,_bbNullObject
	jne	_606
	call	_brl_blitz_NullObjectError
_606:
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_608
	call	_brl_blitz_NullObjectError
_608:
	fld	qword [_2793]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-228]
	fld	dword [eax+8]
	fsub	dword [edi+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-172]
	fld	qword [_2794]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [esi+12]
	fsub	dword [ebx+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-172]
	faddp	st1,st0
	fstp	qword [ebp-172]
	fld	qword [ebp-172]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [_bb_raster]
	fmul	dword [_2795]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_609
	mov	eax,ebp
	push	eax
	push	_620
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_610
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_612
	call	_brl_blitz_NullObjectError
_612:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_614
	call	_brl_blitz_NullObjectError
_614:
	push	dword [_bb_nTwaypoint]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_615
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_nTwaypoint]
	cmp	ebx,_bbNullObject
	jne	_617
	call	_brl_blitz_NullObjectError
_617:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_619
	call	_brl_blitz_NullObjectError
_619:
	push	dword [ebp-48]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_609:
	call	dword [_bbOnDebugLeaveScope]
_599:
	push	_622
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_624
	call	_brl_blitz_NullObjectError
_624:
	fld	dword [ebx+12]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_2796]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_627
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_626
	call	_brl_blitz_NullObjectError
_626:
	fld	dword [ebx+8]
	fld	dword [_bb_wax]
	mov	eax,dword [ebp-44]
	sub	eax,1
	mov	dword [ebp+-316],eax
	fild	dword [ebp+-316]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
_627:
	cmp	eax,0
	je	_629
	mov	eax,ebp
	push	eax
	push	_640
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_630
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_632
	call	_brl_blitz_NullObjectError
_632:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_634
	call	_brl_blitz_NullObjectError
_634:
	push	dword [_bb_nTwaypoint]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_635
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_nTwaypoint]
	cmp	ebx,_bbNullObject
	jne	_637
	call	_brl_blitz_NullObjectError
_637:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_639
	call	_brl_blitz_NullObjectError
_639:
	push	dword [ebp-48]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_629:
	call	dword [_bbOnDebugLeaveScope]
_34:
	mov	ebx,dword [ebp-288]
	cmp	ebx,_bbNullObject
	jne	_589
	call	_brl_blitz_NullObjectError
_589:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_36
_35:
	call	dword [_bbOnDebugLeaveScope]
_31:
	add	dword [ebp-44],1
_565:
	cmp	dword [ebp-44],3
	jle	_33
_32:
	push	_643
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],0
	mov	dword [ebp-52],-4
	jmp	_645
_39:
	mov	eax,ebp
	push	eax
	push	_722
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_646
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_Twaypoint
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nTwaypoint]
	dec	dword [eax+4]
	jnz	_650
	push	eax
	call	_bbGCFree
	add	esp,4
_650:
	mov	dword [_bb_nTwaypoint],ebx
	push	_651
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_waypointlist]
	cmp	ebx,_bbNullObject
	jne	_653
	call	_brl_blitz_NullObjectError
_653:
	push	dword [_bb_nTwaypoint]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_654
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_nTwaypoint]
	cmp	ebx,_bbNullObject
	jne	_656
	call	_brl_blitz_NullObjectError
_656:
	fld	dword [_bb_wax]
	mov	eax,dword [ebp-52]
	mov	dword [ebp+-316],eax
	fild	dword [ebp+-316]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fstp	dword [ebx+8]
	push	_658
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_nTwaypoint]
	cmp	ebx,_bbNullObject
	jne	_660
	call	_brl_blitz_NullObjectError
_660:
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_2797]
	faddp	st1,st0
	fstp	dword [ebx+12]
	push	_662
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],_bbNullObject
	mov	eax,dword [_bb_waypointlist]
	mov	dword [ebp-264],eax
	mov	ebx,dword [ebp-264]
	cmp	ebx,_bbNullObject
	jne	_666
	call	_brl_blitz_NullObjectError
_666:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-284],eax
	jmp	_40
_42:
	mov	ebx,dword [ebp-284]
	cmp	ebx,_bbNullObject
	jne	_671
	call	_brl_blitz_NullObjectError
_671:
	push	_bb_Twaypoint
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-56],eax
	cmp	dword [ebp-56],_bbNullObject
	je	_40
	mov	eax,ebp
	push	eax
	push	_721
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_672
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_674
	call	_brl_blitz_NullObjectError
_674:
	fld	dword [ebx+12]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_2798]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_677
	fld	dword [_bb_wax]
	mov	eax,dword [ebp-52]
	sub	eax,1
	mov	dword [ebp+-316],eax
	fild	dword [ebp+-316]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_675
	fld	dword [_bb_wax]
	mov	eax,dword [ebp-52]
	add	eax,1
	mov	dword [ebp+-316],eax
	fild	dword [ebp+-316]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
_675:
_677:
	cmp	eax,0
	je	_679
	mov	eax,ebp
	push	eax
	push	_701
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_680
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_nTwaypoint]
	mov	dword [ebp-232],eax
	cmp	dword [ebp-232],_bbNullObject
	jne	_682
	call	_brl_blitz_NullObjectError
_682:
	mov	edi,dword [ebp-56]
	cmp	edi,_bbNullObject
	jne	_684
	call	_brl_blitz_NullObjectError
_684:
	mov	esi,dword [_bb_nTwaypoint]
	cmp	esi,_bbNullObject
	jne	_686
	call	_brl_blitz_NullObjectError
_686:
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_688
	call	_brl_blitz_NullObjectError
_688:
	fld	qword [_2799]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-232]
	fld	dword [eax+8]
	fsub	dword [edi+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-164]
	fld	qword [_2800]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [esi+12]
	fsub	dword [ebx+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-164]
	faddp	st1,st0
	fstp	qword [ebp-164]
	fld	qword [ebp-164]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [_bb_raster]
	fmul	dword [_2801]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_689
	mov	eax,ebp
	push	eax
	push	_700
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_690
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_692
	call	_brl_blitz_NullObjectError
_692:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_694
	call	_brl_blitz_NullObjectError
_694:
	push	dword [_bb_nTwaypoint]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_695
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_nTwaypoint]
	cmp	ebx,_bbNullObject
	jne	_697
	call	_brl_blitz_NullObjectError
_697:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_699
	call	_brl_blitz_NullObjectError
_699:
	push	dword [ebp-56]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_689:
	call	dword [_bbOnDebugLeaveScope]
_679:
	push	_702
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_704
	call	_brl_blitz_NullObjectError
_704:
	fld	dword [ebx+12]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_2802]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_707
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_706
	call	_brl_blitz_NullObjectError
_706:
	fld	dword [ebx+8]
	fld	dword [_bb_wax]
	mov	eax,dword [ebp-52]
	sub	eax,1
	mov	dword [ebp+-316],eax
	fild	dword [ebp+-316]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
_707:
	cmp	eax,0
	je	_709
	mov	eax,ebp
	push	eax
	push	_720
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_710
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_712
	call	_brl_blitz_NullObjectError
_712:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_714
	call	_brl_blitz_NullObjectError
_714:
	push	dword [_bb_nTwaypoint]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_715
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_nTwaypoint]
	cmp	ebx,_bbNullObject
	jne	_717
	call	_brl_blitz_NullObjectError
_717:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_719
	call	_brl_blitz_NullObjectError
_719:
	push	dword [ebp-56]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_709:
	call	dword [_bbOnDebugLeaveScope]
_40:
	mov	ebx,dword [ebp-284]
	cmp	ebx,_bbNullObject
	jne	_669
	call	_brl_blitz_NullObjectError
_669:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_42
_41:
	call	dword [_bbOnDebugLeaveScope]
_37:
	add	dword [ebp-52],1
_645:
	cmp	dword [ebp-52],4
	jle	_39
_38:
	push	_723
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],0
	mov	dword [ebp-60],-3
	jmp	_725
_45:
	mov	eax,ebp
	push	eax
	push	_802
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_726
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_Twaypoint
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nTwaypoint]
	dec	dword [eax+4]
	jnz	_730
	push	eax
	call	_bbGCFree
	add	esp,4
_730:
	mov	dword [_bb_nTwaypoint],ebx
	push	_731
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_waypointlist]
	cmp	ebx,_bbNullObject
	jne	_733
	call	_brl_blitz_NullObjectError
_733:
	push	dword [_bb_nTwaypoint]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_734
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_nTwaypoint]
	cmp	ebx,_bbNullObject
	jne	_736
	call	_brl_blitz_NullObjectError
_736:
	fld	dword [_bb_wax]
	mov	eax,dword [ebp-60]
	mov	dword [ebp+-316],eax
	fild	dword [ebp+-316]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fstp	dword [ebx+8]
	push	_738
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_nTwaypoint]
	cmp	ebx,_bbNullObject
	jne	_740
	call	_brl_blitz_NullObjectError
_740:
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_2803]
	faddp	st1,st0
	fstp	dword [ebx+12]
	push	_742
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-64],_bbNullObject
	mov	eax,dword [_bb_waypointlist]
	mov	dword [ebp-260],eax
	mov	ebx,dword [ebp-260]
	cmp	ebx,_bbNullObject
	jne	_746
	call	_brl_blitz_NullObjectError
_746:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-280],eax
	jmp	_46
_48:
	mov	ebx,dword [ebp-280]
	cmp	ebx,_bbNullObject
	jne	_751
	call	_brl_blitz_NullObjectError
_751:
	push	_bb_Twaypoint
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-64],eax
	cmp	dword [ebp-64],_bbNullObject
	je	_46
	mov	eax,ebp
	push	eax
	push	_801
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_752
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_754
	call	_brl_blitz_NullObjectError
_754:
	fld	dword [ebx+12]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_2804]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_757
	fld	dword [_bb_wax]
	mov	eax,dword [ebp-60]
	sub	eax,1
	mov	dword [ebp+-316],eax
	fild	dword [ebp+-316]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_755
	fld	dword [_bb_wax]
	mov	eax,dword [ebp-60]
	add	eax,1
	mov	dword [ebp+-316],eax
	fild	dword [ebp+-316]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
_755:
_757:
	cmp	eax,0
	je	_759
	mov	eax,ebp
	push	eax
	push	_781
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_760
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_nTwaypoint]
	mov	dword [ebp-236],eax
	cmp	dword [ebp-236],_bbNullObject
	jne	_762
	call	_brl_blitz_NullObjectError
_762:
	mov	edi,dword [ebp-64]
	cmp	edi,_bbNullObject
	jne	_764
	call	_brl_blitz_NullObjectError
_764:
	mov	esi,dword [_bb_nTwaypoint]
	cmp	esi,_bbNullObject
	jne	_766
	call	_brl_blitz_NullObjectError
_766:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_768
	call	_brl_blitz_NullObjectError
_768:
	fld	qword [_2805]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-236]
	fld	dword [eax+8]
	fsub	dword [edi+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-156]
	fld	qword [_2806]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [esi+12]
	fsub	dword [ebx+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-156]
	faddp	st1,st0
	fstp	qword [ebp-156]
	fld	qword [ebp-156]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [_bb_raster]
	fmul	dword [_2807]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_769
	mov	eax,ebp
	push	eax
	push	_780
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_770
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_772
	call	_brl_blitz_NullObjectError
_772:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_774
	call	_brl_blitz_NullObjectError
_774:
	push	dword [_bb_nTwaypoint]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_775
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_nTwaypoint]
	cmp	ebx,_bbNullObject
	jne	_777
	call	_brl_blitz_NullObjectError
_777:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_779
	call	_brl_blitz_NullObjectError
_779:
	push	dword [ebp-64]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_769:
	call	dword [_bbOnDebugLeaveScope]
_759:
	push	_782
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_784
	call	_brl_blitz_NullObjectError
_784:
	fld	dword [ebx+12]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_2808]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_787
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_786
	call	_brl_blitz_NullObjectError
_786:
	fld	dword [ebx+8]
	fld	dword [_bb_wax]
	mov	eax,dword [ebp-60]
	sub	eax,1
	mov	dword [ebp+-316],eax
	fild	dword [ebp+-316]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
_787:
	cmp	eax,0
	je	_789
	mov	eax,ebp
	push	eax
	push	_800
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_790
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_792
	call	_brl_blitz_NullObjectError
_792:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_794
	call	_brl_blitz_NullObjectError
_794:
	push	dword [_bb_nTwaypoint]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_795
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_nTwaypoint]
	cmp	ebx,_bbNullObject
	jne	_797
	call	_brl_blitz_NullObjectError
_797:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_799
	call	_brl_blitz_NullObjectError
_799:
	push	dword [ebp-64]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_789:
	call	dword [_bbOnDebugLeaveScope]
_46:
	mov	ebx,dword [ebp-280]
	cmp	ebx,_bbNullObject
	jne	_749
	call	_brl_blitz_NullObjectError
_749:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_48
_47:
	call	dword [_bbOnDebugLeaveScope]
_43:
	add	dword [ebp-60],1
_725:
	cmp	dword [ebp-60],3
	jle	_45
_44:
	push	_803
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_Twaypoint
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nTwaypoint]
	dec	dword [eax+4]
	jnz	_807
	push	eax
	call	_bbGCFree
	add	esp,4
_807:
	mov	dword [_bb_nTwaypoint],ebx
	push	_808
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_waypointlist]
	cmp	ebx,_bbNullObject
	jne	_810
	call	_brl_blitz_NullObjectError
_810:
	push	dword [_bb_nTwaypoint]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_811
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_nTwaypoint]
	cmp	ebx,_bbNullObject
	jne	_813
	call	_brl_blitz_NullObjectError
_813:
	fld	dword [_bb_wax]
	fstp	dword [ebx+8]
	push	_815
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_nTwaypoint]
	cmp	ebx,_bbNullObject
	jne	_817
	call	_brl_blitz_NullObjectError
_817:
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_2809]
	faddp	st1,st0
	fstp	dword [ebx+12]
	push	_819
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_nTwaypoint]
	inc	dword [ebx+4]
	mov	eax,dword [_bb_endTwaypoint]
	dec	dword [eax+4]
	jnz	_823
	push	eax
	call	_bbGCFree
	add	esp,4
_823:
	mov	dword [_bb_endTwaypoint],ebx
	push	_824
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-68],_bbNullObject
	mov	eax,dword [_bb_waypointlist]
	mov	dword [ebp-304],eax
	mov	ebx,dword [ebp-304]
	cmp	ebx,_bbNullObject
	jne	_828
	call	_brl_blitz_NullObjectError
_828:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-300],eax
	jmp	_49
_51:
	mov	ebx,dword [ebp-300]
	cmp	ebx,_bbNullObject
	jne	_833
	call	_brl_blitz_NullObjectError
_833:
	push	_bb_Twaypoint
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-68],eax
	cmp	dword [ebp-68],_bbNullObject
	je	_49
	mov	eax,ebp
	push	eax
	push	_860
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_834
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_836
	call	_brl_blitz_NullObjectError
_836:
	fld	dword [ebx+12]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_2810]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_837
	mov	eax,ebp
	push	eax
	push	_859
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_838
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_nTwaypoint]
	mov	dword [ebp-256],eax
	cmp	dword [ebp-256],_bbNullObject
	jne	_840
	call	_brl_blitz_NullObjectError
_840:
	mov	edi,dword [ebp-68]
	cmp	edi,_bbNullObject
	jne	_842
	call	_brl_blitz_NullObjectError
_842:
	mov	esi,dword [_bb_nTwaypoint]
	cmp	esi,_bbNullObject
	jne	_844
	call	_brl_blitz_NullObjectError
_844:
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_846
	call	_brl_blitz_NullObjectError
_846:
	fld	qword [_2811]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-256]
	fld	dword [eax+8]
	fsub	dword [edi+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-216]
	fld	qword [_2812]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [esi+12]
	fsub	dword [ebx+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-216]
	faddp	st1,st0
	fstp	qword [ebp-216]
	fld	qword [ebp-216]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [_bb_raster]
	fmul	dword [_2813]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_847
	mov	eax,ebp
	push	eax
	push	_858
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_848
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_850
	call	_brl_blitz_NullObjectError
_850:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_852
	call	_brl_blitz_NullObjectError
_852:
	push	dword [_bb_nTwaypoint]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_853
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_nTwaypoint]
	cmp	ebx,_bbNullObject
	jne	_855
	call	_brl_blitz_NullObjectError
_855:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_857
	call	_brl_blitz_NullObjectError
_857:
	push	dword [ebp-68]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_847:
	call	dword [_bbOnDebugLeaveScope]
_837:
	call	dword [_bbOnDebugLeaveScope]
_49:
	mov	ebx,dword [ebp-300]
	cmp	ebx,_bbNullObject
	jne	_831
	call	_brl_blitz_NullObjectError
_831:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_51
_50:
	push	_861
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_338]
	and	eax,8
	cmp	eax,0
	jne	_863
	mov	eax,dword [_bb_startTwaypoint]
	inc	dword [eax+4]
	mov	dword [_bb_t1way],eax
	or	dword [_338],8
_863:
	push	_864
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_865
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	100
	push	100
	push	2
	push	_866
	call	_bbArrayNew
	add	esp,16
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],75
	mov	dword [ebp-16],50
	mov	dword [ebp-20],10
	mov	dword [ebp-24],10
	push	_872
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_873
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_338]
	and	eax,16
	cmp	eax,0
	jne	_875
	fld	qword [_2814]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fstp	dword [_bb_diagonal]
	or	dword [_338],16
_875:
	push	_876
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_338]
	and	eax,32
	cmp	eax,0
	jne	_880
	push	1000
	push	_878
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_thesmartarray],eax
	or	dword [_338],32
_880:
	mov	eax,dword [_338]
	and	eax,64
	cmp	eax,0
	jne	_882
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_thesmartlist],eax
	or	dword [_338],64
_882:
	push	_883
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_338]
	and	eax,128
	cmp	eax,0
	jne	_885
	push	_bbNullObject
	push	1109393408
	call	_brl_timer_CreateTimer
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_tmr],eax
	or	dword [_338],128
_885:
	push	_886
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_208
_210:
	mov	eax,ebp
	push	eax
	push	_1182
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_887
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_tmr]
	cmp	ebx,_bbNullObject
	jne	_889
	call	_brl_blitz_NullObjectError
_889:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	_890
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_891
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_botTlist]
	call	_bb_Main_smart
	add	esp,4
	push	_892
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	mov	dword [ebp-72],eax
	push	_894
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-80],_bbNullObject
	mov	eax,dword [_bb_botTlist]
	mov	dword [ebp-308],eax
	mov	ebx,dword [ebp-308]
	cmp	ebx,_bbNullObject
	jne	_898
	call	_brl_blitz_NullObjectError
_898:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-312],eax
	jmp	_211
_213:
	mov	ebx,dword [ebp-312]
	cmp	ebx,_bbNullObject
	jne	_903
	call	_brl_blitz_NullObjectError
_903:
	push	_bb_TbotT
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-80],eax
	cmp	dword [ebp-80],_bbNullObject
	je	_211
	mov	eax,ebp
	push	eax
	push	_1129
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_904
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-84],_bbNullObject
	mov	eax,dword [_bb_thesmartlist]
	mov	dword [ebp-208],eax
	mov	ebx,dword [ebp-208]
	cmp	ebx,_bbNullObject
	jne	_908
	call	_brl_blitz_NullObjectError
_908:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-252],eax
	jmp	_214
_216:
	mov	ebx,dword [ebp-252]
	cmp	ebx,_bbNullObject
	jne	_913
	call	_brl_blitz_NullObjectError
_913:
	push	_bb_TbotT
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-84],eax
	cmp	dword [ebp-84],_bbNullObject
	je	_214
	mov	eax,ebp
	push	eax
	push	_958
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_914
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-84]
	cmp	dword [ebp-80],eax
	je	_915
	mov	eax,ebp
	push	eax
	push	_957
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_916
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-84]
	mov	dword [ebp-192],eax
	cmp	dword [ebp-192],_bbNullObject
	jne	_918
	call	_brl_blitz_NullObjectError
_918:
	mov	edi,dword [ebp-80]
	cmp	edi,_bbNullObject
	jne	_920
	call	_brl_blitz_NullObjectError
_920:
	mov	esi,dword [ebp-84]
	cmp	esi,_bbNullObject
	jne	_922
	call	_brl_blitz_NullObjectError
_922:
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_924
	call	_brl_blitz_NullObjectError
_924:
	fld	qword [_2815]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-192]
	fld	dword [eax+8]
	fsub	dword [edi+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-124]
	fld	qword [_2816]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [esi+12]
	fsub	dword [ebx+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-124]
	faddp	st1,st0
	fstp	qword [ebp-124]
	fld	qword [ebp-124]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	qword [_2817]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_925
	mov	eax,ebp
	push	eax
	push	_940
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_926
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_928
	call	_brl_blitz_NullObjectError
_928:
	mov	ebx,dword [ebx+28]
	cmp	ebx,_bbNullObject
	jne	_930
	call	_brl_blitz_NullObjectError
_930:
	push	dword [ebp-84]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	cmp	eax,0
	je	_931
	mov	eax,ebp
	push	eax
	push	_932
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_933
_931:
	mov	eax,ebp
	push	eax
	push	_939
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_934
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_936
	call	_brl_blitz_NullObjectError
_936:
	mov	ebx,dword [ebx+28]
	cmp	ebx,_bbNullObject
	jne	_938
	call	_brl_blitz_NullObjectError
_938:
	push	dword [ebp-84]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_933:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_941
_925:
	mov	eax,ebp
	push	eax
	push	_956
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_942
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_944
	call	_brl_blitz_NullObjectError
_944:
	mov	ebx,dword [ebx+28]
	cmp	ebx,_bbNullObject
	jne	_946
	call	_brl_blitz_NullObjectError
_946:
	push	dword [ebp-84]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	cmp	eax,0
	je	_947
	mov	eax,ebp
	push	eax
	push	_953
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_948
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_950
	call	_brl_blitz_NullObjectError
_950:
	mov	ebx,dword [ebx+28]
	cmp	ebx,_bbNullObject
	jne	_952
	call	_brl_blitz_NullObjectError
_952:
	push	dword [ebp-84]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_954
_947:
	mov	eax,ebp
	push	eax
	push	_955
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_954:
	call	dword [_bbOnDebugLeaveScope]
_941:
	call	dword [_bbOnDebugLeaveScope]
_915:
	call	dword [_bbOnDebugLeaveScope]
_214:
	mov	ebx,dword [ebp-252]
	cmp	ebx,_bbNullObject
	jne	_911
	call	_brl_blitz_NullObjectError
_911:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_216
_215:
	push	_961
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_963
	call	_brl_blitz_NullObjectError
_963:
	mov	eax,dword [ebx+20]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_968
	mov	esi,dword [ebp-80]
	cmp	esi,_bbNullObject
	jne	_965
	call	_brl_blitz_NullObjectError
_965:
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_967
	call	_brl_blitz_NullObjectError
_967:
	mov	eax,dword [esi+20]
	cmp	eax,dword [ebx+24]
	setne	al
	movzx	eax,al
_968:
	cmp	eax,0
	je	_970
	mov	eax,ebp
	push	eax
	push	_1028
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_971
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_973
	call	_brl_blitz_NullObjectError
_973:
	mov	eax,dword [ebx+20]
	mov	dword [ebp-248],eax
	cmp	dword [ebp-248],_bbNullObject
	jne	_975
	call	_brl_blitz_NullObjectError
_975:
	mov	edi,dword [ebp-80]
	cmp	edi,_bbNullObject
	jne	_977
	call	_brl_blitz_NullObjectError
_977:
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_979
	call	_brl_blitz_NullObjectError
_979:
	mov	esi,dword [ebx+20]
	cmp	esi,_bbNullObject
	jne	_981
	call	_brl_blitz_NullObjectError
_981:
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_983
	call	_brl_blitz_NullObjectError
_983:
	fld	dword [esi+12]
	fsub	dword [ebx+12]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-248]
	fld	dword [eax+8]
	fsub	dword [edi+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbATan2
	add	esp,16
	fchs
	fld	qword [_2818]
	faddp	st1,st0
	fstp	dword [ebp-88]
	push	_985
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_987
	call	_brl_blitz_NullObjectError
_987:
	mov	esi,dword [ebp-80]
	cmp	esi,_bbNullObject
	jne	_990
	call	_brl_blitz_NullObjectError
_990:
	fld	dword [esi+8]
	fstp	qword [ebp-148]
	fld	dword [ebp-88]
	fsub	dword [_2819]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	qword [_2820]
	fmulp	st1,st0
	fld	qword [ebp-148]
	faddp	st1,st0
	fstp	qword [ebp-148]
	fld	qword [ebp-148]
	fstp	dword [ebx+8]
	push	_991
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_993
	call	_brl_blitz_NullObjectError
_993:
	mov	esi,dword [ebp-80]
	cmp	esi,_bbNullObject
	jne	_996
	call	_brl_blitz_NullObjectError
_996:
	fld	dword [esi+12]
	fstp	qword [ebp-140]
	fld	dword [ebp-88]
	fsub	dword [_2821]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	qword [_2822]
	fmulp	st1,st0
	fld	qword [ebp-140]
	faddp	st1,st0
	fstp	qword [ebp-140]
	fld	qword [ebp-140]
	fstp	dword [ebx+12]
	push	_997
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_999
	call	_brl_blitz_NullObjectError
_999:
	fld	dword [ebp-88]
	fstp	dword [ebx+16]
	push	_1001
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_1003
	call	_brl_blitz_NullObjectError
_1003:
	mov	eax,dword [ebx+20]
	mov	dword [ebp-244],eax
	cmp	dword [ebp-244],_bbNullObject
	jne	_1005
	call	_brl_blitz_NullObjectError
_1005:
	mov	edi,dword [ebp-80]
	cmp	edi,_bbNullObject
	jne	_1007
	call	_brl_blitz_NullObjectError
_1007:
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_1009
	call	_brl_blitz_NullObjectError
_1009:
	mov	esi,dword [ebx+20]
	cmp	esi,_bbNullObject
	jne	_1011
	call	_brl_blitz_NullObjectError
_1011:
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_1013
	call	_brl_blitz_NullObjectError
_1013:
	fld	qword [_2823]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-244]
	fld	dword [eax+8]
	fsub	dword [edi+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-132]
	fld	qword [_2824]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [esi+12]
	fsub	dword [ebx+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-132]
	faddp	st1,st0
	fstp	qword [ebp-132]
	fld	qword [ebp-132]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	qword [_2825]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_1014
	mov	eax,ebp
	push	eax
	push	_1027
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1015
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_1017
	call	_brl_blitz_NullObjectError
_1017:
	mov	edi,ebx
	mov	esi,dword [ebp-80]
	cmp	esi,_bbNullObject
	jne	_1020
	call	_brl_blitz_NullObjectError
_1020:
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_1022
	call	_brl_blitz_NullObjectError
_1022:
	push	dword [ebx+24]
	push	dword [esi+20]
	call	_bb_waypointtodest
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [edi+20]
	dec	dword [eax+4]
	jnz	_1026
	push	eax
	call	_bbGCFree
	add	esp,4
_1026:
	mov	dword [edi+20],ebx
	call	dword [_bbOnDebugLeaveScope]
_1014:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1030
_970:
	mov	eax,ebp
	push	eax
	push	_1069
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1031
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-80]
	cmp	esi,_bbNullObject
	jne	_1033
	call	_brl_blitz_NullObjectError
_1033:
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_1036
	call	_brl_blitz_NullObjectError
_1036:
	mov	ebx,dword [ebx+24]
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_1040
	push	eax
	call	_bbGCFree
	add	esp,4
_1040:
	mov	dword [esi+20],ebx
	push	_1041
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_waypointlist]
	cmp	ebx,_bbNullObject
	jne	_1043
	call	_brl_blitz_NullObjectError
_1043:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+112]
	add	esp,4
	imul	eax,100
	mov	dword [ebp+-316],eax
	fild	dword [ebp+-316]
	sub	esp,8
	fstp	qword [esp]
	fldz
	sub	esp,8
	fstp	qword [esp]
	call	_brl_random_Rnd
	add	esp,16
	fld	qword [_2826]
	fdivp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebp-92],eax
	push	_1045
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],_bbNullObject
	mov	eax,dword [_bb_waypointlist]
	mov	dword [ebp-200],eax
	mov	ebx,dword [ebp-200]
	cmp	ebx,_bbNullObject
	jne	_1049
	call	_brl_blitz_NullObjectError
_1049:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_217
_219:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1054
	call	_brl_blitz_NullObjectError
_1054:
	push	_bb_Twaypoint
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-96],eax
	cmp	dword [ebp-96],_bbNullObject
	je	_217
	mov	eax,ebp
	push	eax
	push	_1067
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1055
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-92],0
	jne	_1056
	mov	eax,ebp
	push	eax
	push	_1065
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1057
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_1059
	call	_brl_blitz_NullObjectError
_1059:
	mov	esi,ebx
	mov	eax,dword [ebp-96]
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1064
	push	eax
	call	_bbGCFree
	add	esp,4
_1064:
	mov	dword [esi+24],ebx
	call	dword [_bbOnDebugLeaveScope]
_1056:
	push	_1066
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	sub	dword [ebp-92],1
	call	dword [_bbOnDebugLeaveScope]
_217:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1052
	call	_brl_blitz_NullObjectError
_1052:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_219
_218:
	call	dword [_bbOnDebugLeaveScope]
_1030:
	push	_1071
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-100],_bbNullObject
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_1074
	call	_brl_blitz_NullObjectError
_1074:
	mov	eax,dword [ebx+28]
	mov	dword [ebp-240],eax
	mov	ebx,dword [ebp-240]
	cmp	ebx,_bbNullObject
	jne	_1077
	call	_brl_blitz_NullObjectError
_1077:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-204],eax
	jmp	_220
_222:
	mov	ebx,dword [ebp-204]
	cmp	ebx,_bbNullObject
	jne	_1082
	call	_brl_blitz_NullObjectError
_1082:
	push	_bb_TbotT
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-100],eax
	cmp	dword [ebp-100],_bbNullObject
	je	_220
	mov	eax,ebp
	push	eax
	push	_1114
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1083
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-100]
	cmp	ebx,_bbNullObject
	jne	_1085
	call	_brl_blitz_NullObjectError
_1085:
	cmp	dword [ebx+32],0
	jne	_1086
	mov	eax,ebp
	push	eax
	push	_1092
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1087
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_1089
	call	_brl_blitz_NullObjectError
_1089:
	mov	ebx,dword [ebx+28]
	cmp	ebx,_bbNullObject
	jne	_1091
	call	_brl_blitz_NullObjectError
_1091:
	push	dword [ebp-100]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_1086:
	push	_1093
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_2827]
	fstp	dword [ebp-104]
	fld	dword [_2828]
	fstp	dword [ebp-108]
	push	_1096
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-80]
	mov	dword [ebp-196],eax
	cmp	dword [ebp-196],_bbNullObject
	jne	_1098
	call	_brl_blitz_NullObjectError
_1098:
	mov	edi,dword [ebp-80]
	cmp	edi,_bbNullObject
	jne	_1100
	call	_brl_blitz_NullObjectError
_1100:
	mov	esi,dword [ebp-100]
	cmp	esi,_bbNullObject
	jne	_1102
	call	_brl_blitz_NullObjectError
_1102:
	mov	ebx,dword [ebp-100]
	cmp	ebx,_bbNullObject
	jne	_1104
	call	_brl_blitz_NullObjectError
_1104:
	push	0
	push	1082130432
	lea	eax,dword [ebx+12]
	push	eax
	lea	eax,dword [esi+8]
	push	eax
	push	1082130432
	lea	eax,dword [edi+12]
	push	eax
	mov	eax,dword [ebp-196]
	lea	eax,dword [eax+8]
	push	eax
	call	_bb_PushCollision
	add	esp,28
	push	_1105
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_1106
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_1107
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_1108
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_1109
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-100]
	cmp	esi,_bbNullObject
	jne	_1111
	call	_brl_blitz_NullObjectError
_1111:
	mov	ebx,dword [ebp-100]
	cmp	ebx,_bbNullObject
	jne	_1113
	call	_brl_blitz_NullObjectError
_1113:
	push	1065353216
	push	1065353216
	push	dword [ebx+12]
	push	dword [esi+8]
	call	_brl_max2d_DrawRect
	add	esp,16
	call	dword [_bbOnDebugLeaveScope]
_220:
	mov	ebx,dword [ebp-204]
	cmp	ebx,_bbNullObject
	jne	_1080
	call	_brl_blitz_NullObjectError
_1080:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_222
_221:
	push	_1118
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1053609165
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_1119
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	100
	push	255
	push	100
	call	_brl_max2d_SetColor
	add	esp,12
	push	_1120
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1073741824
	push	1069547520
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_1121
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_1123
	call	_brl_blitz_NullObjectError
_1123:
	push	dword [ebx+16]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_1124
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-80]
	cmp	esi,_bbNullObject
	jne	_1126
	call	_brl_blitz_NullObjectError
_1126:
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_1128
	call	_brl_blitz_NullObjectError
_1128:
	push	1082130432
	push	1077936128
	push	dword [ebx+12]
	push	dword [esi+8]
	call	_brl_max2d_DrawRect
	add	esp,16
	call	dword [_bbOnDebugLeaveScope]
_211:
	mov	ebx,dword [ebp-312]
	cmp	ebx,_bbNullObject
	jne	_901
	call	_brl_blitz_NullObjectError
_901:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_213
_212:
	push	_1131
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	mov	dword [ebp-76],eax
	push	_1133
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_1134
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	0
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_1135
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1084227584
	push	1084227584
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_1136
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_1137
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1092616192
	push	1092616192
	call	_brl_polledinput_MouseY
	mov	dword [ebp+-316],eax
	fild	dword [ebp+-316]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_polledinput_MouseX
	mov	dword [ebp+-316],eax
	fild	dword [ebp+-316]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_1138
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-76]
	sub	eax,dword [ebp-72]
	cmp	eax,10
	jge	_1139
	mov	eax,ebp
	push	eax
	push	_1151
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1140
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_botTlist]
	cmp	ebx,_bbNullObject
	jne	_1142
	call	_brl_blitz_NullObjectError
_1142:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+112]
	add	esp,4
	cmp	eax,980
	jge	_1143
	mov	eax,ebp
	push	eax
	push	_1149
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1144
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TbotT
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-112],eax
	push	_1146
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_botTlist]
	cmp	ebx,_bbNullObject
	jne	_1148
	call	_brl_blitz_NullObjectError
_1148:
	push	dword [ebp-112]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_1143:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1152
_1139:
	mov	eax,ebp
	push	eax
	push	_1175
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1153
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-76]
	sub	eax,dword [ebp-72]
	cmp	eax,15
	jle	_1154
	mov	eax,ebp
	push	eax
	push	_1174
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1155
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-116],_bbNullObject
	mov	esi,dword [_bb_botTlist]
	cmp	esi,_bbNullObject
	jne	_1159
	call	_brl_blitz_NullObjectError
_1159:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_223
_225:
	cmp	ebx,_bbNullObject
	jne	_1164
	call	_brl_blitz_NullObjectError
_1164:
	push	_bb_TbotT
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-116],eax
	cmp	dword [ebp-116],_bbNullObject
	je	_223
	mov	eax,ebp
	push	eax
	push	_1173
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1165
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-116]
	cmp	ebx,_bbNullObject
	jne	_1167
	call	_brl_blitz_NullObjectError
_1167:
	mov	dword [ebx+32],0
	push	_1169
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_botTlist]
	cmp	ebx,_bbNullObject
	jne	_1171
	call	_brl_blitz_NullObjectError
_1171:
	push	dword [ebp-116]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	push	_1172
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_224
_223:
	cmp	ebx,_bbNullObject
	jne	_1162
	call	_brl_blitz_NullObjectError
_1162:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_225
_224:
	call	dword [_bbOnDebugLeaveScope]
_1154:
	call	dword [_bbOnDebugLeaveScope]
_1152:
	push	_1176
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_1177
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1092616192
	push	1092616192
	push	_226
	mov	eax,dword [ebp-76]
	sub	eax,dword [ebp-72]
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_1178
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_botTlist]
	cmp	ebx,_bbNullObject
	jne	_1180
	call	_brl_blitz_NullObjectError
_1180:
	push	1103626240
	push	1092616192
	push	_227
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+112]
	add	esp,4
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_1181
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_208:
	push	27
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_210
_209:
	mov	ebx,0
	jmp	_253
_253:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TbotT_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_1225
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TbotT
	mov	ebx,dword [ebp-4]
	fld	qword [_3099]
	sub	esp,8
	fstp	qword [esp]
	fldz
	sub	esp,8
	fstp	qword [esp]
	call	_brl_random_Rnd
	add	esp,16
	fstp	dword [ebx+8]
	mov	ebx,dword [ebp-4]
	fld	qword [_3100]
	sub	esp,8
	fstp	qword [esp]
	fldz
	sub	esp,8
	fstp	qword [esp]
	call	_brl_random_Rnd
	add	esp,16
	fstp	dword [ebx+12]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+16]
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],edx
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+28],eax
	mov	eax,dword [ebp-4]
	mov	dword [eax+32],1
	push	ebp
	push	_1224
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_256
_256:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TbotT_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_259:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_1229
	push	eax
	call	_bbGCFree
	add	esp,4
_1229:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_1231
	push	eax
	call	_bbGCFree
	add	esp,4
_1231:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_1233
	push	eax
	call	_bbGCFree
	add	esp,4
_1233:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_1227
_1227:
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
	push	_1239
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
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],edx
	push	16
	push	_1235
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+24],eax
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],1
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+32]
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+36],eax
	push	ebp
	push	_1238
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_262
_262:
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
_265:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_1242
	push	eax
	call	_bbGCFree
	add	esp,4
_1242:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_1244
	push	eax
	call	_bbGCFree
	add	esp,4
_1244:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_1246
	push	eax
	call	_bbGCFree
	add	esp,4
_1246:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_1240
_1240:
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
	push	_1272
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1247
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-24]
	push	_1249
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-28]
	push	_1251
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	eax,dword [ebp-28]
	push	eax
	lea	eax,dword [ebp-24]
	push	eax
	call	_brl_max2d_GetScale
	add	esp,8
	push	_1252
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-32]
	push	_1254
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-36]
	push	_1256
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	eax,dword [ebp-36]
	push	eax
	lea	eax,dword [ebp-32]
	push	eax
	call	_brl_max2d_GetHandle
	add	esp,8
	push	_1257
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1259
	call	_brl_blitz_NullObjectError
_1259:
	fld	dword [ebp-16]
	mov	eax,dword [ebx+8]
	mov	dword [ebp+-80],eax
	fild	dword [ebp+-80]
	fdivp	st1,st0
	fstp	dword [ebp-40]
	push	_1261
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1263
	call	_brl_blitz_NullObjectError
_1263:
	fld	dword [ebp-20]
	mov	eax,dword [ebx+12]
	mov	dword [ebp+-80],eax
	fild	dword [ebp+-80]
	fdivp	st1,st0
	fstp	dword [ebp-44]
	push	_1265
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
	push	_1266
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_3109]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-60]
	fld	qword [_3110]
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
	push	_1268
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
	fld	qword [_3111]
	faddp	st1,st0
	fstp	dword [ebp-52]
	push	_1270
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
	push	_1271
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-28]
	push	dword [ebp-24]
	call	_brl_max2d_SetScale
	add	esp,8
	mov	ebx,0
	jmp	_272
_272:
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
	push	_1306
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1286
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_3116]
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
	fld	qword [_3117]
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
	push	_1288
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fdiv	dword [_3118]
	fstp	dword [ebp-16]
	push	_1289
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-28]
	fdiv	dword [_3119]
	fstp	dword [ebp-28]
	push	_1290
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
	jne	_1291
	push	ebp
	push	_1305
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1292
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
	fadd	dword [_3120]
	fstp	dword [ebp-36]
	push	_1294
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,1
	jne	_1295
	push	ebp
	push	_1298
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1296
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
	push	_1297
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
	jmp	_1299
_1295:
	push	ebp
	push	_1304
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1300
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
	fdiv	dword [_3121]
	fmulp	st1,st0
	fld	qword [ebp-68]
	faddp	st1,st0
	fstp	qword [ebp-68]
	fld	qword [ebp-68]
	fstp	dword [ebx]
	push	_1301
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
	fdiv	dword [_3122]
	fmulp	st1,st0
	fld	qword [ebp-76]
	faddp	st1,st0
	fstp	qword [ebp-76]
	fld	qword [ebp-76]
	fstp	dword [ebx]
	push	_1302
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	mov	eax,dword [ebp-20]
	fld	dword [eax]
	fstp	qword [ebp-84]
	fld	dword [ebp-36]
	fsub	dword [_3123]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	dword [ebp-16]
	fadd	dword [ebp-28]
	fsub	dword [ebp-32]
	fdiv	dword [_3124]
	fmulp	st1,st0
	fld	qword [ebp-84]
	faddp	st1,st0
	fstp	qword [ebp-84]
	fld	qword [ebp-84]
	fstp	dword [ebx]
	push	_1303
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	mov	eax,dword [ebp-24]
	fld	dword [eax]
	fstp	qword [ebp-92]
	fld	dword [ebp-36]
	fsub	dword [_3125]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	dword [ebp-16]
	fadd	dword [ebp-28]
	fsub	dword [ebp-32]
	fdiv	dword [_3126]
	fmulp	st1,st0
	fld	qword [ebp-92]
	faddp	st1,st0
	fstp	qword [ebp-92]
	fld	qword [ebp-92]
	fstp	dword [ebx]
	call	dword [_bbOnDebugLeaveScope]
_1299:
	call	dword [_bbOnDebugLeaveScope]
_1291:
	mov	ebx,0
	jmp	_281
_281:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_PushTank:
	push	ebp
	mov	ebp,esp
	sub	esp,484
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
	mov	eax,dword [ebp+28]
	mov	dword [ebp-24],eax
	mov	eax,dword [ebp+32]
	mov	dword [ebp-28],eax
	mov	eax,dword [ebp+36]
	mov	dword [ebp-32],eax
	fldz
	fstp	dword [ebp-36]
	fldz
	fstp	dword [ebp-40]
	fldz
	fstp	dword [ebp-44]
	mov	dword [ebp-48],_bbEmptyArray
	mov	dword [ebp-52],0
	mov	dword [ebp-56],_bbEmptyArray
	mov	dword [ebp-60],0
	mov	dword [ebp-64],_bbEmptyArray
	mov	dword [ebp-68],_bbEmptyArray
	mov	dword [ebp-96],0
	mov	dword [ebp-100],0
	fldz
	fstp	dword [ebp-104]
	mov	dword [ebp-108],0
	mov	dword [ebp-112],0
	fldz
	fstp	dword [ebp-116]
	mov	dword [ebp-120],0
	mov	dword [ebp-124],0
	mov	dword [ebp-128],0
	mov	dword [ebp-132],0
	mov	dword [ebp-136],0
	mov	dword [ebp-140],0
	mov	dword [ebp-144],0
	mov	dword [ebp-148],0
	fldz
	fstp	dword [ebp-152]
	fldz
	fstp	dword [ebp-156]
	fldz
	fstp	dword [ebp-72]
	fldz
	fstp	dword [ebp-76]
	mov	dword [ebp-160],0
	mov	dword [ebp-164],0
	fldz
	fstp	dword [ebp-80]
	fldz
	fstp	dword [ebp-84]
	mov	dword [ebp-168],0
	mov	dword [ebp-172],0
	fldz
	fstp	dword [ebp-88]
	mov	dword [ebp-176],0
	mov	dword [ebp-180],0
	fldz
	fstp	dword [ebp-184]
	fldz
	fstp	dword [ebp-188]
	fldz
	fstp	dword [ebp-192]
	fldz
	fstp	dword [ebp-196]
	fldz
	fstp	dword [ebp-92]
	mov	dword [ebp-200],0
	mov	dword [ebp-204],0
	fldz
	fstp	dword [ebp-208]
	fldz
	fstp	dword [ebp-212]
	fldz
	fstp	dword [ebp-216]
	fldz
	fstp	dword [ebp-220]
	mov	eax,ebp
	push	eax
	push	_1771
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1316
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_3131]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-4]
	fld	dword [eax]
	mov	eax,dword [ebp-20]
	fsub	dword [eax]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-480]
	fld	qword [_3132]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	mov	eax,dword [ebp-24]
	fsub	dword [eax]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-480]
	faddp	st1,st0
	fstp	qword [ebp-480]
	fld	qword [ebp-480]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fstp	dword [ebp-36]
	push	_1318
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-36]
	fld	dword [_3133]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_1319
	mov	eax,ebp
	push	eax
	push	_1755
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1320
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_3134]
	fstp	dword [ebp-40]
	push	_1322
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_3135]
	fmul	dword [ebp-40]
	fstp	dword [ebp-44]
	push	_1324
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	9
	push	2
	push	_1325
	call	_bbArrayNew
	add	esp,16
	mov	dword [ebp-48],eax
	mov	dword [ebp-52],-1
	push	_1328
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	9
	push	2
	push	_1329
	call	_bbArrayNew
	add	esp,16
	mov	dword [ebp-56],eax
	mov	dword [ebp-60],-1
	push	_1332
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	9
	push	2
	push	_1333
	call	_bbArrayNew
	add	esp,16
	mov	dword [ebp-64],eax
	push	_1335
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	9
	push	2
	push	_1336
	call	_bbArrayNew
	add	esp,16
	mov	dword [ebp-68],eax
	push	_1338
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],0
	mov	dword [ebp-96],0
	jmp	_1340
_54:
	mov	eax,ebp
	push	eax
	push	_1368
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1341
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-100],0
	mov	dword [ebp-100],0
	jmp	_1343
_57:
	mov	eax,ebp
	push	eax
	push	_1365
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1344
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-96]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1345
	mov	eax,dword [ebp-100]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1345:
	cmp	eax,0
	je	_1347
	mov	eax,ebp
	push	eax
	push	_1349
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1348
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_55
_1347:
	push	_1350
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-52],1
	push	_1351
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-100]
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-96]
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,4
	fstp	dword [esp]
	call	_bb_CalcWinkel
	add	esp,8
	fadd	dword [_3136]
	fstp	dword [ebp-104]
	push	_1353
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-52]
	mov	eax,dword [ebp-48]
	imul	esi,dword [eax+24]
	mov	eax,dword [ebp-48]
	cmp	esi,dword [eax+20]
	jb	_1355
	call	_brl_blitz_ArrayBoundsError
_1355:
	mov	ebx,0
	mov	eax,dword [ebp-48]
	cmp	ebx,dword [eax+24]
	jb	_1357
	call	_brl_blitz_ArrayBoundsError
_1357:
	mov	eax,dword [ebp-48]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	eax,dword [ebp-4]
	fld	dword [eax]
	fstp	qword [ebp-448]
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fadd	dword [ebp-104]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fstp	qword [ebp-400]
	fld	qword [_3137]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-96]
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-328]
	fld	qword [_3138]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-100]
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-328]
	faddp	st1,st0
	fstp	qword [ebp-328]
	fld	qword [ebp-328]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [ebp-40]
	fmulp	st1,st0
	fld	qword [ebp-400]
	fmulp	st1,st0
	fstp	qword [ebp-400]
	fld	qword [ebp-448]
	fadd	qword [ebp-400]
	fstp	qword [ebp-448]
	fld	qword [ebp-448]
	fstp	dword [ebx+28]
	push	_1359
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-52]
	mov	eax,dword [ebp-48]
	imul	esi,dword [eax+24]
	mov	eax,dword [ebp-48]
	cmp	esi,dword [eax+20]
	jb	_1361
	call	_brl_blitz_ArrayBoundsError
_1361:
	mov	ebx,1
	mov	eax,dword [ebp-48]
	cmp	ebx,dword [eax+24]
	jb	_1363
	call	_brl_blitz_ArrayBoundsError
_1363:
	mov	eax,dword [ebp-48]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fstp	qword [ebp-440]
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fadd	dword [ebp-104]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fstp	qword [ebp-392]
	fld	qword [_3139]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-96]
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-320]
	fld	qword [_3140]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-100]
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-320]
	faddp	st1,st0
	fstp	qword [ebp-320]
	fld	qword [ebp-320]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [ebp-40]
	fmulp	st1,st0
	fld	qword [ebp-392]
	fmulp	st1,st0
	fstp	qword [ebp-392]
	fld	qword [ebp-440]
	fadd	qword [ebp-392]
	fstp	qword [ebp-440]
	fld	qword [ebp-440]
	fstp	dword [ebx+28]
	call	dword [_bbOnDebugLeaveScope]
_55:
	add	dword [ebp-100],1
_1343:
	cmp	dword [ebp-100],2
	jle	_57
_56:
	call	dword [_bbOnDebugLeaveScope]
_52:
	add	dword [ebp-96],1
_1340:
	cmp	dword [ebp-96],2
	jle	_54
_53:
	push	_1370
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],-1
	push	_1371
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-108],0
	mov	dword [ebp-108],0
	jmp	_1373
_60:
	mov	eax,ebp
	push	eax
	push	_1401
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1374
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-112],0
	mov	dword [ebp-112],0
	jmp	_1376
_63:
	mov	eax,ebp
	push	eax
	push	_1398
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1377
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-108]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1378
	mov	eax,dword [ebp-112]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1378:
	cmp	eax,0
	je	_1380
	mov	eax,ebp
	push	eax
	push	_1382
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1381
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_61
_1380:
	push	_1383
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-60],1
	push	_1384
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-112]
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-108]
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,4
	fstp	dword [esp]
	call	_bb_CalcWinkel
	add	esp,8
	fadd	dword [_3141]
	fstp	dword [ebp-116]
	push	_1386
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-60]
	mov	eax,dword [ebp-56]
	imul	esi,dword [eax+24]
	mov	eax,dword [ebp-56]
	cmp	esi,dword [eax+20]
	jb	_1388
	call	_brl_blitz_ArrayBoundsError
_1388:
	mov	ebx,0
	mov	eax,dword [ebp-56]
	cmp	ebx,dword [eax+24]
	jb	_1390
	call	_brl_blitz_ArrayBoundsError
_1390:
	mov	eax,dword [ebp-56]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	eax,dword [ebp-20]
	fld	dword [eax]
	fstp	qword [ebp-432]
	mov	eax,dword [ebp-28]
	fld	dword [eax]
	fadd	dword [ebp-116]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fstp	qword [ebp-384]
	fld	qword [_3142]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-108]
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-312]
	fld	qword [_3143]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-112]
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-312]
	faddp	st1,st0
	fstp	qword [ebp-312]
	fld	qword [ebp-312]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [ebp-40]
	fmulp	st1,st0
	fld	qword [ebp-384]
	fmulp	st1,st0
	fstp	qword [ebp-384]
	fld	qword [ebp-432]
	fadd	qword [ebp-384]
	fstp	qword [ebp-432]
	fld	qword [ebp-432]
	fstp	dword [ebx+28]
	push	_1392
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-60]
	mov	eax,dword [ebp-56]
	imul	esi,dword [eax+24]
	mov	eax,dword [ebp-56]
	cmp	esi,dword [eax+20]
	jb	_1394
	call	_brl_blitz_ArrayBoundsError
_1394:
	mov	ebx,1
	mov	eax,dword [ebp-56]
	cmp	ebx,dword [eax+24]
	jb	_1396
	call	_brl_blitz_ArrayBoundsError
_1396:
	mov	eax,dword [ebp-56]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	eax,dword [ebp-24]
	fld	dword [eax]
	fstp	qword [ebp-424]
	mov	eax,dword [ebp-28]
	fld	dword [eax]
	fadd	dword [ebp-116]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fstp	qword [ebp-376]
	fld	qword [_3144]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-108]
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-304]
	fld	qword [_3145]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-112]
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-304]
	faddp	st1,st0
	fstp	qword [ebp-304]
	fld	qword [ebp-304]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [ebp-40]
	fmulp	st1,st0
	fld	qword [ebp-376]
	fmulp	st1,st0
	fstp	qword [ebp-376]
	fld	qword [ebp-424]
	fadd	qword [ebp-376]
	fstp	qword [ebp-424]
	fld	qword [ebp-424]
	fstp	dword [ebx+28]
	call	dword [_bbOnDebugLeaveScope]
_61:
	add	dword [ebp-112],1
_1376:
	cmp	dword [ebp-112],2
	jle	_63
_62:
	call	dword [_bbOnDebugLeaveScope]
_58:
	add	dword [ebp-108],1
_1373:
	cmp	dword [ebp-108],2
	jle	_60
_59:
	push	_1403
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],-1
	push	_1404
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-120],0
	mov	dword [ebp-120],0
	jmp	_1406
_66:
	mov	eax,ebp
	push	eax
	push	_1451
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1407
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-124],0
	mov	dword [ebp-124],0
	jmp	_1409
_69:
	mov	eax,ebp
	push	eax
	push	_1450
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1410
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-120]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1411
	mov	eax,dword [ebp-124]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1411:
	cmp	eax,0
	je	_1413
	mov	eax,ebp
	push	eax
	push	_1415
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1414
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_67
_1413:
	push	_1416
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-52],1
	push	_1417
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-128],0
	mov	dword [ebp-128],0
	jmp	_1419
_72:
	mov	eax,ebp
	push	eax
	push	_1448
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1420
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-132],0
	mov	dword [ebp-132],0
	jmp	_1422
_75:
	mov	eax,ebp
	push	eax
	push	_1447
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1423
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-128]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1424
	mov	eax,dword [ebp-132]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1424:
	cmp	eax,0
	je	_1426
	mov	eax,ebp
	push	eax
	push	_1428
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1427
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_73
_1426:
	push	_1429
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-60],1
	push	_1430
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-52]
	mov	eax,dword [ebp-48]
	imul	edx,dword [eax+24]
	mov	dword [ebp-296],edx
	mov	eax,dword [ebp-48]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-296],eax
	jb	_1432
	call	_brl_blitz_ArrayBoundsError
_1432:
	mov	dword [ebp-276],0
	mov	eax,dword [ebp-48]
	mov	eax,dword [eax+24]
	cmp	dword [ebp-276],eax
	jb	_1434
	call	_brl_blitz_ArrayBoundsError
_1434:
	mov	edx,dword [ebp-52]
	mov	eax,dword [ebp-48]
	imul	edx,dword [eax+24]
	mov	dword [ebp-264],edx
	mov	eax,dword [ebp-48]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-264],eax
	jb	_1436
	call	_brl_blitz_ArrayBoundsError
_1436:
	mov	dword [ebp-260],1
	mov	eax,dword [ebp-48]
	mov	eax,dword [eax+24]
	cmp	dword [ebp-260],eax
	jb	_1438
	call	_brl_blitz_ArrayBoundsError
_1438:
	mov	edx,dword [ebp-60]
	mov	eax,dword [ebp-56]
	imul	edx,dword [eax+24]
	mov	dword [ebp-240],edx
	mov	eax,dword [ebp-56]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-240],eax
	jb	_1440
	call	_brl_blitz_ArrayBoundsError
_1440:
	mov	edi,0
	mov	eax,dword [ebp-56]
	cmp	edi,dword [eax+24]
	jb	_1442
	call	_brl_blitz_ArrayBoundsError
_1442:
	mov	eax,dword [ebp-60]
	mov	edx,dword [ebp-56]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [ebp-56]
	cmp	esi,dword [eax+20]
	jb	_1444
	call	_brl_blitz_ArrayBoundsError
_1444:
	mov	ebx,1
	mov	eax,dword [ebp-56]
	cmp	ebx,dword [eax+24]
	jb	_1446
	call	_brl_blitz_ArrayBoundsError
_1446:
	push	0
	push	dword [ebp-44]
	mov	edx,dword [ebp-56]
	mov	eax,esi
	add	eax,ebx
	lea	eax,dword [edx+eax*4+28]
	push	eax
	mov	edx,dword [ebp-56]
	mov	eax,dword [ebp-240]
	add	eax,edi
	lea	eax,dword [edx+eax*4+28]
	push	eax
	push	dword [ebp-44]
	mov	edx,dword [ebp-48]
	mov	eax,dword [ebp-264]
	add	eax,dword [ebp-260]
	lea	eax,dword [edx+eax*4+28]
	push	eax
	mov	edx,dword [ebp-48]
	mov	eax,dword [ebp-296]
	add	eax,dword [ebp-276]
	lea	eax,dword [edx+eax*4+28]
	push	eax
	call	_bb_PushCollision
	add	esp,28
	call	dword [_bbOnDebugLeaveScope]
_73:
	add	dword [ebp-132],1
_1422:
	cmp	dword [ebp-132],2
	jle	_75
_74:
	call	dword [_bbOnDebugLeaveScope]
_70:
	add	dword [ebp-128],1
_1419:
	cmp	dword [ebp-128],2
	jle	_72
_71:
	push	_1449
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],-1
	call	dword [_bbOnDebugLeaveScope]
_67:
	add	dword [ebp-124],1
_1409:
	cmp	dword [ebp-124],2
	jle	_69
_68:
	call	dword [_bbOnDebugLeaveScope]
_64:
	add	dword [ebp-120],1
_1406:
	cmp	dword [ebp-120],2
	jle	_66
_65:
	push	_1452
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],-1
	push	_1453
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-136],0
	mov	dword [ebp-136],0
	jmp	_1455
_78:
	mov	eax,ebp
	push	eax
	push	_1547
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1456
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-140],0
	mov	dword [ebp-140],0
	jmp	_1458
_81:
	mov	eax,ebp
	push	eax
	push	_1546
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1459
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-136]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1460
	mov	eax,dword [ebp-140]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1460:
	cmp	eax,0
	je	_1462
	mov	eax,ebp
	push	eax
	push	_1464
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1463
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_79
_1462:
	push	_1465
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-52],1
	push	_1466
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-144],0
	mov	dword [ebp-144],0
	jmp	_1468
_84:
	mov	eax,ebp
	push	eax
	push	_1544
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1469
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-148],0
	mov	dword [ebp-148],0
	jmp	_1471
_87:
	mov	eax,ebp
	push	eax
	push	_1541
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1472
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-144]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1473
	mov	eax,dword [ebp-148]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1473:
	cmp	eax,0
	je	_1475
	mov	eax,ebp
	push	eax
	push	_1477
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1476
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_85
_1475:
	push	_1478
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-60],1
	push	_1479
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_3146]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-136]
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-236]
	fld	qword [_3147]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-140]
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-236]
	faddp	st1,st0
	fstp	qword [ebp-236]
	fld	qword [ebp-236]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [ebp-40]
	fmulp	st1,st0
	fstp	dword [ebp-152]
	push	_1481
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_3148]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-144]
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-228]
	fld	qword [_3149]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-148]
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-228]
	faddp	st1,st0
	fstp	qword [ebp-228]
	fld	qword [ebp-228]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [ebp-40]
	fmulp	st1,st0
	fstp	dword [ebp-156]
	push	_1483
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-52]
	mov	eax,dword [ebp-64]
	imul	esi,dword [eax+24]
	mov	eax,dword [ebp-64]
	cmp	esi,dword [eax+20]
	jb	_1485
	call	_brl_blitz_ArrayBoundsError
_1485:
	mov	ebx,0
	mov	eax,dword [ebp-64]
	cmp	ebx,dword [eax+24]
	jb	_1487
	call	_brl_blitz_ArrayBoundsError
_1487:
	mov	eax,dword [ebp-64]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	edx,dword [ebp-4]
	fld	dword [edx]
	fstp	dword [eax+28]
	push	_1489
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-52]
	mov	eax,dword [ebp-64]
	imul	esi,dword [eax+24]
	mov	eax,dword [ebp-64]
	cmp	esi,dword [eax+20]
	jb	_1491
	call	_brl_blitz_ArrayBoundsError
_1491:
	mov	ebx,1
	mov	eax,dword [ebp-64]
	cmp	ebx,dword [eax+24]
	jb	_1493
	call	_brl_blitz_ArrayBoundsError
_1493:
	mov	eax,dword [ebp-64]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	edx,dword [ebp-8]
	fld	dword [edx]
	fstp	dword [eax+28]
	push	_1495
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-60]
	mov	eax,dword [ebp-68]
	imul	esi,dword [eax+24]
	mov	eax,dword [ebp-68]
	cmp	esi,dword [eax+20]
	jb	_1497
	call	_brl_blitz_ArrayBoundsError
_1497:
	mov	ebx,0
	mov	eax,dword [ebp-68]
	cmp	ebx,dword [eax+24]
	jb	_1499
	call	_brl_blitz_ArrayBoundsError
_1499:
	mov	eax,dword [ebp-68]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	edx,dword [ebp-20]
	fld	dword [edx]
	fstp	dword [eax+28]
	push	_1501
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-60]
	mov	eax,dword [ebp-68]
	imul	esi,dword [eax+24]
	mov	eax,dword [ebp-68]
	cmp	esi,dword [eax+20]
	jb	_1503
	call	_brl_blitz_ArrayBoundsError
_1503:
	mov	ebx,1
	mov	eax,dword [ebp-68]
	cmp	ebx,dword [eax+24]
	jb	_1505
	call	_brl_blitz_ArrayBoundsError
_1505:
	mov	eax,dword [ebp-68]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	edx,dword [ebp-24]
	fld	dword [edx]
	fstp	dword [eax+28]
	push	_1507
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-52]
	mov	eax,dword [ebp-64]
	imul	edx,dword [eax+24]
	mov	dword [ebp-292],edx
	mov	eax,dword [ebp-64]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-292],eax
	jb	_1509
	call	_brl_blitz_ArrayBoundsError
_1509:
	mov	dword [ebp-280],0
	mov	eax,dword [ebp-64]
	mov	eax,dword [eax+24]
	cmp	dword [ebp-280],eax
	jb	_1511
	call	_brl_blitz_ArrayBoundsError
_1511:
	mov	edx,dword [ebp-52]
	mov	eax,dword [ebp-64]
	imul	edx,dword [eax+24]
	mov	dword [ebp-268],edx
	mov	eax,dword [ebp-64]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-268],eax
	jb	_1513
	call	_brl_blitz_ArrayBoundsError
_1513:
	mov	dword [ebp-256],1
	mov	eax,dword [ebp-64]
	mov	eax,dword [eax+24]
	cmp	dword [ebp-256],eax
	jb	_1515
	call	_brl_blitz_ArrayBoundsError
_1515:
	mov	edx,dword [ebp-52]
	mov	eax,dword [ebp-48]
	imul	edx,dword [eax+24]
	mov	dword [ebp-244],edx
	mov	eax,dword [ebp-48]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-244],eax
	jb	_1517
	call	_brl_blitz_ArrayBoundsError
_1517:
	mov	edi,0
	mov	eax,dword [ebp-48]
	cmp	edi,dword [eax+24]
	jb	_1519
	call	_brl_blitz_ArrayBoundsError
_1519:
	mov	eax,dword [ebp-52]
	mov	edx,dword [ebp-48]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [ebp-48]
	cmp	esi,dword [eax+20]
	jb	_1521
	call	_brl_blitz_ArrayBoundsError
_1521:
	mov	ebx,1
	mov	eax,dword [ebp-48]
	cmp	ebx,dword [eax+24]
	jb	_1523
	call	_brl_blitz_ArrayBoundsError
_1523:
	push	1
	push	dword [ebp-152]
	mov	edx,dword [ebp-48]
	mov	eax,esi
	add	eax,ebx
	lea	eax,dword [edx+eax*4+28]
	push	eax
	mov	edx,dword [ebp-48]
	mov	eax,dword [ebp-244]
	add	eax,edi
	lea	eax,dword [edx+eax*4+28]
	push	eax
	push	dword [ebp-152]
	mov	edx,dword [ebp-64]
	mov	eax,dword [ebp-268]
	add	eax,dword [ebp-256]
	lea	eax,dword [edx+eax*4+28]
	push	eax
	mov	edx,dword [ebp-64]
	mov	eax,dword [ebp-292]
	add	eax,dword [ebp-280]
	lea	eax,dword [edx+eax*4+28]
	push	eax
	call	_bb_PushCollision
	add	esp,28
	push	_1524
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-60]
	mov	eax,dword [ebp-68]
	imul	edx,dword [eax+24]
	mov	dword [ebp-288],edx
	mov	eax,dword [ebp-68]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-288],eax
	jb	_1526
	call	_brl_blitz_ArrayBoundsError
_1526:
	mov	dword [ebp-284],0
	mov	eax,dword [ebp-68]
	mov	eax,dword [eax+24]
	cmp	dword [ebp-284],eax
	jb	_1528
	call	_brl_blitz_ArrayBoundsError
_1528:
	mov	edx,dword [ebp-60]
	mov	eax,dword [ebp-68]
	imul	edx,dword [eax+24]
	mov	dword [ebp-272],edx
	mov	eax,dword [ebp-68]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-272],eax
	jb	_1530
	call	_brl_blitz_ArrayBoundsError
_1530:
	mov	dword [ebp-252],1
	mov	eax,dword [ebp-68]
	mov	eax,dword [eax+24]
	cmp	dword [ebp-252],eax
	jb	_1532
	call	_brl_blitz_ArrayBoundsError
_1532:
	mov	edx,dword [ebp-60]
	mov	eax,dword [ebp-56]
	imul	edx,dword [eax+24]
	mov	dword [ebp-248],edx
	mov	eax,dword [ebp-56]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-248],eax
	jb	_1534
	call	_brl_blitz_ArrayBoundsError
_1534:
	mov	edi,0
	mov	eax,dword [ebp-56]
	cmp	edi,dword [eax+24]
	jb	_1536
	call	_brl_blitz_ArrayBoundsError
_1536:
	mov	eax,dword [ebp-60]
	mov	edx,dword [ebp-56]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [ebp-56]
	cmp	esi,dword [eax+20]
	jb	_1538
	call	_brl_blitz_ArrayBoundsError
_1538:
	mov	ebx,1
	mov	eax,dword [ebp-56]
	cmp	ebx,dword [eax+24]
	jb	_1540
	call	_brl_blitz_ArrayBoundsError
_1540:
	push	1
	push	dword [ebp-156]
	mov	edx,dword [ebp-56]
	mov	eax,esi
	add	eax,ebx
	lea	eax,dword [edx+eax*4+28]
	push	eax
	mov	edx,dword [ebp-56]
	mov	eax,dword [ebp-248]
	add	eax,edi
	lea	eax,dword [edx+eax*4+28]
	push	eax
	push	dword [ebp-156]
	mov	edx,dword [ebp-68]
	mov	eax,dword [ebp-272]
	add	eax,dword [ebp-252]
	lea	eax,dword [edx+eax*4+28]
	push	eax
	mov	edx,dword [ebp-68]
	mov	eax,dword [ebp-288]
	add	eax,dword [ebp-284]
	lea	eax,dword [edx+eax*4+28]
	push	eax
	call	_bb_PushCollision
	add	esp,28
	call	dword [_bbOnDebugLeaveScope]
_85:
	add	dword [ebp-148],1
_1471:
	cmp	dword [ebp-148],2
	jle	_87
_86:
	call	dword [_bbOnDebugLeaveScope]
_82:
	add	dword [ebp-144],1
_1468:
	cmp	dword [ebp-144],2
	jle	_84
_83:
	push	_1545
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],-1
	call	dword [_bbOnDebugLeaveScope]
_79:
	add	dword [ebp-140],1
_1458:
	cmp	dword [ebp-140],2
	jle	_81
_80:
	call	dword [_bbOnDebugLeaveScope]
_76:
	add	dword [ebp-136],1
_1455:
	cmp	dword [ebp-136],2
	jle	_78
_77:
	push	_1548
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],-1
	push	_1549
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-72]
	fldz
	fstp	dword [ebp-76]
	push	_1552
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-160],0
	mov	dword [ebp-160],0
	jmp	_1554
_90:
	mov	eax,ebp
	push	eax
	push	_1576
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1555
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-164],0
	mov	dword [ebp-164],0
	jmp	_1557
_93:
	mov	eax,ebp
	push	eax
	push	_1575
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1558
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-160]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1559
	mov	eax,dword [ebp-164]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1559:
	cmp	eax,0
	je	_1561
	mov	eax,ebp
	push	eax
	push	_1563
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1562
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_91
_1561:
	push	_1564
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-52],1
	push	_1565
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	mov	eax,dword [ebp-64]
	imul	ebx,dword [eax+24]
	mov	eax,dword [ebp-64]
	cmp	ebx,dword [eax+20]
	jb	_1567
	call	_brl_blitz_ArrayBoundsError
_1567:
	mov	esi,0
	mov	eax,dword [ebp-64]
	cmp	esi,dword [eax+24]
	jb	_1569
	call	_brl_blitz_ArrayBoundsError
_1569:
	fld	dword [ebp-72]
	mov	eax,dword [ebp-64]
	add	ebx,esi
	fld	dword [eax+ebx*4+28]
	mov	eax,dword [ebp-4]
	fsub	dword [eax]
	faddp	st1,st0
	fstp	dword [ebp-72]
	push	_1570
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	mov	eax,dword [ebp-64]
	imul	ebx,dword [eax+24]
	mov	eax,dword [ebp-64]
	cmp	ebx,dword [eax+20]
	jb	_1572
	call	_brl_blitz_ArrayBoundsError
_1572:
	mov	esi,1
	mov	eax,dword [ebp-64]
	cmp	esi,dword [eax+24]
	jb	_1574
	call	_brl_blitz_ArrayBoundsError
_1574:
	fld	dword [ebp-76]
	mov	eax,dword [ebp-64]
	add	ebx,esi
	fld	dword [eax+ebx*4+28]
	mov	eax,dword [ebp-8]
	fsub	dword [eax]
	faddp	st1,st0
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
_91:
	add	dword [ebp-164],1
_1557:
	cmp	dword [ebp-164],2
	jle	_93
_92:
	call	dword [_bbOnDebugLeaveScope]
_88:
	add	dword [ebp-160],1
_1554:
	cmp	dword [ebp-160],2
	jle	_90
_89:
	push	_1577
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],-1
	push	_1578
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1579
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1580
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-4]
	mov	eax,dword [ebp-4]
	fld	dword [eax]
	fadd	dword [ebp-72]
	fstp	dword [edx]
	push	_1581
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-8]
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fadd	dword [ebp-76]
	fstp	dword [edx]
	push	_1582
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-80]
	fldz
	fstp	dword [ebp-84]
	push	_1585
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-168],0
	mov	dword [ebp-168],0
	jmp	_1587
_96:
	mov	eax,ebp
	push	eax
	push	_1609
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1588
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-172],0
	mov	dword [ebp-172],0
	jmp	_1590
_99:
	mov	eax,ebp
	push	eax
	push	_1608
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1591
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-168]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1592
	mov	eax,dword [ebp-172]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1592:
	cmp	eax,0
	je	_1594
	mov	eax,ebp
	push	eax
	push	_1596
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1595
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_97
_1594:
	push	_1597
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-60],1
	push	_1598
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-60]
	mov	eax,dword [ebp-68]
	imul	ebx,dword [eax+24]
	mov	eax,dword [ebp-68]
	cmp	ebx,dword [eax+20]
	jb	_1600
	call	_brl_blitz_ArrayBoundsError
_1600:
	mov	esi,0
	mov	eax,dword [ebp-68]
	cmp	esi,dword [eax+24]
	jb	_1602
	call	_brl_blitz_ArrayBoundsError
_1602:
	fld	dword [ebp-80]
	mov	eax,dword [ebp-68]
	add	ebx,esi
	fld	dword [eax+ebx*4+28]
	mov	eax,dword [ebp-20]
	fsub	dword [eax]
	faddp	st1,st0
	fstp	dword [ebp-80]
	push	_1603
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-60]
	mov	eax,dword [ebp-68]
	imul	ebx,dword [eax+24]
	mov	eax,dword [ebp-68]
	cmp	ebx,dword [eax+20]
	jb	_1605
	call	_brl_blitz_ArrayBoundsError
_1605:
	mov	esi,1
	mov	eax,dword [ebp-68]
	cmp	esi,dword [eax+24]
	jb	_1607
	call	_brl_blitz_ArrayBoundsError
_1607:
	fld	dword [ebp-84]
	mov	eax,dword [ebp-68]
	add	ebx,esi
	fld	dword [eax+ebx*4+28]
	mov	eax,dword [ebp-24]
	fsub	dword [eax]
	faddp	st1,st0
	fstp	dword [ebp-84]
	call	dword [_bbOnDebugLeaveScope]
_97:
	add	dword [ebp-172],1
_1590:
	cmp	dword [ebp-172],2
	jle	_99
_98:
	call	dword [_bbOnDebugLeaveScope]
_94:
	add	dword [ebp-168],1
_1587:
	cmp	dword [ebp-168],2
	jle	_96
_95:
	push	_1610
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],-1
	push	_1611
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1612
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1613
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-20]
	fld	dword [eax]
	fadd	dword [ebp-80]
	fstp	dword [edx]
	push	_1614
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-24]
	mov	eax,dword [ebp-24]
	fld	dword [eax]
	fadd	dword [ebp-84]
	fstp	dword [edx]
	push	_1615
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-88]
	push	_1617
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-176],0
	mov	dword [ebp-176],0
	jmp	_1619
_102:
	mov	eax,ebp
	push	eax
	push	_1684
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1620
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-180],0
	mov	dword [ebp-180],0
	jmp	_1622
_105:
	mov	eax,ebp
	push	eax
	push	_1679
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1623
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-176]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1624
	mov	eax,dword [ebp-180]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1624:
	cmp	eax,0
	je	_1626
	mov	eax,ebp
	push	eax
	push	_1628
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1627
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_103
_1626:
	push	_1629
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-52],1
	push	_1630
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-52]
	mov	eax,dword [ebp-48]
	imul	edx,dword [eax+24]
	mov	dword [ebp-460],edx
	mov	eax,dword [ebp-48]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-460],eax
	jb	_1632
	call	_brl_blitz_ArrayBoundsError
_1632:
	mov	edi,0
	mov	eax,dword [ebp-48]
	cmp	edi,dword [eax+24]
	jb	_1634
	call	_brl_blitz_ArrayBoundsError
_1634:
	mov	eax,dword [ebp-52]
	mov	edx,dword [ebp-48]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [ebp-48]
	cmp	esi,dword [eax+20]
	jb	_1636
	call	_brl_blitz_ArrayBoundsError
_1636:
	mov	ebx,1
	mov	eax,dword [ebp-48]
	cmp	ebx,dword [eax+24]
	jb	_1638
	call	_brl_blitz_ArrayBoundsError
_1638:
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	mov	edx,dword [ebp-48]
	mov	eax,esi
	add	eax,ebx
	fsub	dword [edx+eax*4+28]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-4]
	fld	dword [eax]
	mov	edx,dword [ebp-48]
	mov	eax,dword [ebp-460]
	add	eax,edi
	fsub	dword [edx+eax*4+28]
	sub	esp,4
	fstp	dword [esp]
	call	_bb_CalcWinkel
	add	esp,8
	fadd	dword [_3150]
	fstp	dword [ebp-184]
	push	_1640
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fstp	dword [ebp-368]
	mov	eax,dword [ebp-180]
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-176]
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,4
	fstp	dword [esp]
	call	_bb_CalcWinkel
	add	esp,8
	fld	dword [ebp-368]
	faddp	st1,st0
	fstp	dword [ebp-368]
	fld	dword [ebp-368]
	fadd	dword [_3151]
	fstp	dword [ebp-188]
	push	_1642
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-188]
	fsub	dword [ebp-184]
	fadd	dword [_3152]
	fstp	dword [ebp-192]
	push	_1644
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_106
_108:
	mov	eax,ebp
	push	eax
	push	_1646
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1645
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-192]
	fadd	dword [_3153]
	fstp	dword [ebp-192]
	call	dword [_bbOnDebugLeaveScope]
_106:
	fld	dword [ebp-192]
	fld	dword [_3154]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_108
_107:
	push	_1647
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_109
_111:
	mov	eax,ebp
	push	eax
	push	_1649
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1648
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-192]
	fsub	dword [_3155]
	fstp	dword [ebp-192]
	call	dword [_bbOnDebugLeaveScope]
_109:
	fld	dword [ebp-192]
	fld	dword [_3156]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_111
_110:
	push	_1650
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-176]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1651
	mov	eax,dword [ebp-180]
	cmp	eax,0
	sete	al
	movzx	eax,al
_1651:
	cmp	eax,0
	jne	_1655
	mov	eax,dword [ebp-176]
	cmp	eax,2
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1653
	mov	eax,dword [ebp-180]
	cmp	eax,2
	sete	al
	movzx	eax,al
_1653:
_1655:
	cmp	eax,0
	jne	_1663
	mov	eax,dword [ebp-176]
	cmp	eax,2
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1657
	mov	eax,dword [ebp-180]
	cmp	eax,0
	sete	al
	movzx	eax,al
_1657:
	cmp	eax,0
	jne	_1661
	mov	eax,dword [ebp-176]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1659
	mov	eax,dword [ebp-180]
	cmp	eax,2
	sete	al
	movzx	eax,al
_1659:
_1661:
_1663:
	cmp	eax,0
	je	_1665
	mov	eax,ebp
	push	eax
	push	_1667
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1666
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-88]
	fsub	dword [ebp-192]
	fstp	dword [ebp-88]
	call	dword [_bbOnDebugLeaveScope]
_1665:
	push	_1668
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_3157]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-176]
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-364]
	fld	qword [_3158]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-180]
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-364]
	faddp	st1,st0
	fstp	qword [ebp-364]
	fld	qword [ebp-364]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [ebp-40]
	fmulp	st1,st0
	fstp	dword [ebp-196]
	push	_1670
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-52]
	mov	eax,dword [ebp-48]
	imul	edx,dword [eax+24]
	mov	dword [ebp-468],edx
	mov	eax,dword [ebp-48]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-468],eax
	jb	_1672
	call	_brl_blitz_ArrayBoundsError
_1672:
	mov	dword [ebp-456],0
	mov	eax,dword [ebp-48]
	mov	eax,dword [eax+24]
	cmp	dword [ebp-456],eax
	jb	_1674
	call	_brl_blitz_ArrayBoundsError
_1674:
	mov	eax,dword [ebp-52]
	mov	edx,dword [ebp-48]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-48]
	cmp	edi,dword [eax+20]
	jb	_1676
	call	_brl_blitz_ArrayBoundsError
_1676:
	mov	esi,1
	mov	eax,dword [ebp-48]
	cmp	esi,dword [eax+24]
	jb	_1678
	call	_brl_blitz_ArrayBoundsError
_1678:
	mov	ebx,dword [ebp-16]
	mov	eax,dword [ebp-16]
	fld	dword [eax]
	fstp	qword [ebp-416]
	fld	qword [_3159]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-4]
	fld	dword [eax]
	mov	edx,dword [ebp-48]
	mov	eax,dword [ebp-468]
	add	eax,dword [ebp-456]
	fsub	dword [edx+eax*4+28]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-344]
	fld	qword [_3160]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	mov	edx,dword [ebp-48]
	mov	eax,edi
	add	eax,esi
	fsub	dword [edx+eax*4+28]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-344]
	faddp	st1,st0
	fstp	qword [ebp-344]
	fld	qword [ebp-344]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [ebp-196]
	fdivp	st1,st0
	fld	qword [ebp-416]
	fmulp	st1,st0
	fstp	qword [ebp-416]
	fld	qword [ebp-416]
	fstp	dword [ebx]
	call	dword [_bbOnDebugLeaveScope]
_103:
	add	dword [ebp-180],1
_1622:
	cmp	dword [ebp-180],2
	jle	_105
_104:
	call	dword [_bbOnDebugLeaveScope]
_100:
	add	dword [ebp-176],1
_1619:
	cmp	dword [ebp-176],2
	jle	_102
_101:
	push	_1685
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],-1
	push	_1686
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-12]
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fadd	dword [ebp-88]
	fstp	dword [edx]
	push	_1687
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-92]
	push	_1689
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-200],0
	mov	dword [ebp-200],0
	jmp	_1691
_114:
	mov	eax,ebp
	push	eax
	push	_1752
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1692
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-204],0
	mov	dword [ebp-204],0
	jmp	_1694
_117:
	mov	eax,ebp
	push	eax
	push	_1751
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1695
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-200]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1696
	mov	eax,dword [ebp-204]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1696:
	cmp	eax,0
	je	_1698
	mov	eax,ebp
	push	eax
	push	_1700
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1699
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_115
_1698:
	push	_1701
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-60],1
	push	_1702
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-60]
	mov	eax,dword [ebp-56]
	imul	edx,dword [eax+24]
	mov	dword [ebp-464],edx
	mov	eax,dword [ebp-56]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-464],eax
	jb	_1704
	call	_brl_blitz_ArrayBoundsError
_1704:
	mov	edi,0
	mov	eax,dword [ebp-56]
	cmp	edi,dword [eax+24]
	jb	_1706
	call	_brl_blitz_ArrayBoundsError
_1706:
	mov	eax,dword [ebp-60]
	mov	edx,dword [ebp-56]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [ebp-56]
	cmp	esi,dword [eax+20]
	jb	_1708
	call	_brl_blitz_ArrayBoundsError
_1708:
	mov	ebx,1
	mov	eax,dword [ebp-56]
	cmp	ebx,dword [eax+24]
	jb	_1710
	call	_brl_blitz_ArrayBoundsError
_1710:
	mov	eax,dword [ebp-24]
	fld	dword [eax]
	mov	edx,dword [ebp-56]
	mov	eax,esi
	add	eax,ebx
	fsub	dword [edx+eax*4+28]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-20]
	fld	dword [eax]
	mov	edx,dword [ebp-56]
	mov	eax,dword [ebp-464]
	add	eax,edi
	fsub	dword [edx+eax*4+28]
	sub	esp,4
	fstp	dword [esp]
	call	_bb_CalcWinkel
	add	esp,8
	fadd	dword [_3161]
	fstp	dword [ebp-208]
	push	_1712
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	fld	dword [eax]
	fstp	dword [ebp-356]
	mov	eax,dword [ebp-204]
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-200]
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,4
	fstp	dword [esp]
	call	_bb_CalcWinkel
	add	esp,8
	fld	dword [ebp-356]
	faddp	st1,st0
	fstp	dword [ebp-356]
	fld	dword [ebp-356]
	fadd	dword [_3162]
	fstp	dword [ebp-212]
	push	_1714
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-212]
	fsub	dword [ebp-208]
	fadd	dword [_3163]
	fstp	dword [ebp-216]
	push	_1716
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_118
_120:
	mov	eax,ebp
	push	eax
	push	_1718
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1717
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-216]
	fadd	dword [_3164]
	fstp	dword [ebp-216]
	call	dword [_bbOnDebugLeaveScope]
_118:
	fld	dword [ebp-216]
	fld	dword [_3165]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_120
_119:
	push	_1719
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_121
_123:
	mov	eax,ebp
	push	eax
	push	_1721
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1720
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-216]
	fsub	dword [_3166]
	fstp	dword [ebp-216]
	call	dword [_bbOnDebugLeaveScope]
_121:
	fld	dword [ebp-216]
	fld	dword [_3167]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_123
_122:
	push	_1722
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-200]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1723
	mov	eax,dword [ebp-204]
	cmp	eax,0
	sete	al
	movzx	eax,al
_1723:
	cmp	eax,0
	jne	_1727
	mov	eax,dword [ebp-200]
	cmp	eax,2
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1725
	mov	eax,dword [ebp-204]
	cmp	eax,2
	sete	al
	movzx	eax,al
_1725:
_1727:
	cmp	eax,0
	jne	_1735
	mov	eax,dword [ebp-200]
	cmp	eax,2
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1729
	mov	eax,dword [ebp-204]
	cmp	eax,0
	sete	al
	movzx	eax,al
_1729:
	cmp	eax,0
	jne	_1733
	mov	eax,dword [ebp-200]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1731
	mov	eax,dword [ebp-204]
	cmp	eax,2
	sete	al
	movzx	eax,al
_1731:
_1733:
_1735:
	cmp	eax,0
	je	_1737
	mov	eax,ebp
	push	eax
	push	_1739
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1738
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-92]
	fsub	dword [ebp-216]
	fstp	dword [ebp-92]
	call	dword [_bbOnDebugLeaveScope]
_1737:
	push	_1740
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_3168]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-200]
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-352]
	fld	qword [_3169]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-204]
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-352]
	faddp	st1,st0
	fstp	qword [ebp-352]
	fld	qword [ebp-352]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [ebp-40]
	fmulp	st1,st0
	fstp	dword [ebp-220]
	push	_1742
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-60]
	mov	eax,dword [ebp-56]
	imul	edx,dword [eax+24]
	mov	dword [ebp-472],edx
	mov	eax,dword [ebp-56]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-472],eax
	jb	_1744
	call	_brl_blitz_ArrayBoundsError
_1744:
	mov	dword [ebp-452],0
	mov	eax,dword [ebp-56]
	mov	eax,dword [eax+24]
	cmp	dword [ebp-452],eax
	jb	_1746
	call	_brl_blitz_ArrayBoundsError
_1746:
	mov	eax,dword [ebp-60]
	mov	edx,dword [ebp-56]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-56]
	cmp	edi,dword [eax+20]
	jb	_1748
	call	_brl_blitz_ArrayBoundsError
_1748:
	mov	esi,1
	mov	eax,dword [ebp-56]
	cmp	esi,dword [eax+24]
	jb	_1750
	call	_brl_blitz_ArrayBoundsError
_1750:
	mov	ebx,dword [ebp-32]
	mov	eax,dword [ebp-32]
	fld	dword [eax]
	fstp	qword [ebp-408]
	fld	qword [_3170]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-20]
	fld	dword [eax]
	mov	edx,dword [ebp-56]
	mov	eax,dword [ebp-472]
	add	eax,dword [ebp-452]
	fsub	dword [edx+eax*4+28]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-336]
	fld	qword [_3171]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-24]
	fld	dword [eax]
	mov	edx,dword [ebp-56]
	mov	eax,edi
	add	eax,esi
	fsub	dword [edx+eax*4+28]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-336]
	faddp	st1,st0
	fstp	qword [ebp-336]
	fld	qword [ebp-336]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [ebp-220]
	fdivp	st1,st0
	fld	qword [ebp-408]
	fmulp	st1,st0
	fstp	qword [ebp-408]
	fld	qword [ebp-408]
	fstp	dword [ebx]
	call	dword [_bbOnDebugLeaveScope]
_115:
	add	dword [ebp-204],1
_1694:
	cmp	dword [ebp-204],2
	jle	_117
_116:
	call	dword [_bbOnDebugLeaveScope]
_112:
	add	dword [ebp-200],1
_1691:
	cmp	dword [ebp-200],2
	jle	_114
_113:
	push	_1753
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],-1
	push	_1754
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-28]
	mov	eax,dword [ebp-28]
	fld	dword [eax]
	fadd	dword [ebp-92]
	fstp	dword [edx]
	call	dword [_bbOnDebugLeaveScope]
_1319:
	mov	ebx,0
	jmp	_291
_291:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
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
	push	_1803
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1777
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fsub	dword [ebp-8]
	fadd	dword [_3285]
	fstp	dword [ebp-16]
	push	_1779
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_124
_126:
	push	ebp
	push	_1781
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1780
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fadd	dword [_3286]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
_124:
	fld	dword [ebp-16]
	fld	dword [_3287]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_126
_125:
	push	_1782
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_127
_129:
	push	ebp
	push	_1784
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1783
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fsub	dword [_3288]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
_127:
	fld	dword [ebp-16]
	fld	dword [_3289]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_129
_128:
	push	_1785
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-20]
	mov	dword [ebp-24],0
	push	_1788
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
	jne	_1789
	push	ebp
	push	_1792
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1790
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fchs
	fstp	dword [ebp-20]
	push	_1791
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],1
	call	dword [_bbOnDebugLeaveScope]
_1789:
	push	_1793
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
	jne	_1794
	push	ebp
	push	_1797
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1795
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fstp	dword [ebp-20]
	push	_1796
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],1
	call	dword [_bbOnDebugLeaveScope]
_1794:
	push	_1798
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-24],0
	jne	_1799
	push	ebp
	push	_1801
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1800
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fchs
	fstp	dword [ebp-20]
	call	dword [_bbOnDebugLeaveScope]
_1799:
	push	_1802
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-20]
	fstp	dword [ebp-28]
	jmp	_296
_296:
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
	push	_1834
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1810
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fsub	dword [ebp-8]
	fadd	dword [_3297]
	fstp	dword [ebp-16]
	push	_1812
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_130
_132:
	push	ebp
	push	_1814
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1813
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fadd	dword [_3298]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
_130:
	fld	dword [ebp-16]
	fld	dword [_3299]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_132
_131:
	push	_1815
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_133
_135:
	push	ebp
	push	_1817
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1816
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fsub	dword [_3300]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
_133:
	fld	dword [ebp-16]
	fld	dword [_3301]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_135
_134:
	push	_1818
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-20]
	mov	dword [ebp-24],0
	push	_1821
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
	jne	_1822
	push	ebp
	push	_1824
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1823
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],1
	call	dword [_bbOnDebugLeaveScope]
_1822:
	push	_1825
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
	jne	_1826
	push	ebp
	push	_1828
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1827
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],1
	call	dword [_bbOnDebugLeaveScope]
_1826:
	push	_1829
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-24],0
	jne	_1830
	push	ebp
	push	_1832
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1831
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-20]
	call	dword [_bbOnDebugLeaveScope]
_1830:
	push	_1833
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-20]
	fstp	dword [ebp-28]
	jmp	_301
_301:
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
	push	_1846
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1837
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
	push	_1839
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_136
_138:
	push	ebp
	push	_1841
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1840
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fadd	dword [_3309]
	fstp	dword [ebp-12]
	call	dword [_bbOnDebugLeaveScope]
_136:
	fld	dword [ebp-12]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_138
_137:
	push	_1842
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_139
_141:
	push	ebp
	push	_1844
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1843
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fsub	dword [_3310]
	fstp	dword [ebp-12]
	call	dword [_bbOnDebugLeaveScope]
_139:
	fld	dword [ebp-12]
	fld	dword [_3311]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_141
_140:
	push	_1845
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fstp	dword [ebp-16]
	jmp	_305
_305:
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
	push	_1966
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1848
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbNullObject
	push	_1850
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	mov	eax,dword [_bb_waypointlist]
	mov	dword [ebp-64],eax
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_1854
	call	_brl_blitz_NullObjectError
_1854:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-68],eax
	jmp	_142
_144:
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_1859
	call	_brl_blitz_NullObjectError
_1859:
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
	je	_142
	mov	eax,ebp
	push	eax
	push	_1922
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1860
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_1862
	call	_brl_blitz_NullObjectError
_1862:
	mov	dword [ebx+16],9999
	push	_1864
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_1866
	call	_brl_blitz_NullObjectError
_1866:
	fldz
	fstp	dword [ebx+32]
	push	_1868
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_1870
	call	_brl_blitz_NullObjectError
_1870:
	cmp	dword [ebx+28],1
	jne	_1871
	mov	eax,ebp
	push	eax
	push	_1920
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1872
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_1874
	call	_brl_blitz_NullObjectError
_1874:
	mov	dword [ebx+28],0
	push	_1876
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	push	_1878
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_1880
	call	_brl_blitz_NullObjectError
_1880:
	mov	dword [ebp-48],ebx
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_1883
	call	_brl_blitz_NullObjectError
_1883:
	mov	eax,dword [ebx+36]
	mov	dword [ebp-56],eax
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_1886
	call	_brl_blitz_NullObjectError
_1886:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-52],eax
	jmp	_145
_147:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1891
	call	_brl_blitz_NullObjectError
_1891:
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
	mov	eax,dword [eax+20]
	dec	dword [eax+4]
	jnz	_1895
	push	eax
	call	_bbGCFree
	add	esp,4
_1895:
	mov	eax,dword [ebp-48]
	mov	dword [eax+20],ebx
	mov	eax,dword [ebp-48]
	cmp	dword [eax+20],_bbNullObject
	je	_145
	mov	eax,ebp
	push	eax
	push	_1918
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1896
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	mov	dword [ebp-44],eax
	cmp	dword [ebp-44],_bbNullObject
	jne	_1898
	call	_brl_blitz_NullObjectError
_1898:
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_1900
	call	_brl_blitz_NullObjectError
_1900:
	mov	edi,dword [ebx+20]
	cmp	edi,_bbNullObject
	jne	_1902
	call	_brl_blitz_NullObjectError
_1902:
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_1904
	call	_brl_blitz_NullObjectError
_1904:
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_1906
	call	_brl_blitz_NullObjectError
_1906:
	mov	esi,dword [esi+20]
	cmp	esi,_bbNullObject
	jne	_1908
	call	_brl_blitz_NullObjectError
_1908:
	fld	qword [_3316]
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
	fld	qword [_3317]
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
	push	_1910
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_1912
	call	_brl_blitz_NullObjectError
_1912:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-28]
	cmp	ebx,dword [esi+20]
	jb	_1915
	call	_brl_blitz_ArrayBoundsError
_1915:
	shl	ebx,2
	add	esi,ebx
	fld	dword [ebp-32]
	fstp	dword [esi+24]
	push	_1917
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-28],1
	call	dword [_bbOnDebugLeaveScope]
_145:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1889
	call	_brl_blitz_NullObjectError
_1889:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_147
_146:
	call	dword [_bbOnDebugLeaveScope]
_1871:
	call	dword [_bbOnDebugLeaveScope]
_142:
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_1857
	call	_brl_blitz_NullObjectError
_1857:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_144
_143:
	push	_1923
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	cmp	dword [ebp-4],eax
	jne	_1924
	mov	eax,ebp
	push	eax
	push	_1926
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1925
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_309
_1924:
	push	_1927
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	push	dword [ebp-8]
	call	_bb_wayray
	fstp	st0
	add	esp,8
	push	_1928
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_3318]
	fstp	dword [ebp-16]
	mov	dword [ebp-20],0
	push	_1931
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1933
	call	_brl_blitz_NullObjectError
_1933:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1936
	call	_brl_blitz_NullObjectError
_1936:
	mov	eax,dword [esi+36]
	mov	dword [ebp-60],eax
	mov	esi,dword [ebp-60]
	cmp	esi,_bbNullObject
	jne	_1939
	call	_brl_blitz_NullObjectError
_1939:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_148
_150:
	mov	esi,edi
	cmp	esi,_bbNullObject
	jne	_1944
	call	_brl_blitz_NullObjectError
_1944:
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
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_1948
	push	eax
	call	_bbGCFree
	add	esp,4
_1948:
	mov	dword [ebx+20],esi
	cmp	dword [ebx+20],_bbNullObject
	je	_148
	mov	eax,ebp
	push	eax
	push	_1964
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1949
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1951
	call	_brl_blitz_NullObjectError
_1951:
	mov	esi,dword [esi+20]
	cmp	esi,_bbNullObject
	jne	_1953
	call	_brl_blitz_NullObjectError
_1953:
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
	jne	_1954
	mov	eax,ebp
	push	eax
	push	_1963
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1955
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1957
	call	_brl_blitz_NullObjectError
_1957:
	mov	eax,dword [esi+20]
	mov	dword [ebp-12],eax
	push	_1958
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1960
	call	_brl_blitz_NullObjectError
_1960:
	mov	esi,dword [esi+20]
	cmp	esi,_bbNullObject
	jne	_1962
	call	_brl_blitz_NullObjectError
_1962:
	mov	eax,dword [esi+16]
	mov	dword [ebp+-72],eax
	fild	dword [ebp+-72]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
_1954:
	call	dword [_bbOnDebugLeaveScope]
_148:
	mov	esi,edi
	cmp	esi,_bbNullObject
	jne	_1942
	call	_brl_blitz_NullObjectError
_1942:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_150
_149:
	push	_1965
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	jmp	_309
_309:
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
	push	_2148
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1973
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1975
	call	_brl_blitz_NullObjectError
_1975:
	fld1
	fstp	dword [ebx+32]
	push	_1977
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
	jne	_1978
	mov	eax,ebp
	push	eax
	push	_1983
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1979
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1981
	call	_brl_blitz_NullObjectError
_1981:
	fld	dword [ebp-8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebx+16],eax
	call	dword [_bbOnDebugLeaveScope]
_1978:
	push	_1984
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	16
	push	_1985
	call	_bbArrayNew1D
	add	esp,8
	mov	dword [ebp-12],eax
	push	_1987
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	push	_1989
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1991
	call	_brl_blitz_NullObjectError
_1991:
	mov	dword [ebp-60],ebx
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1994
	call	_brl_blitz_NullObjectError
_1994:
	mov	eax,dword [ebx+36]
	mov	dword [ebp-68],eax
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_1997
	call	_brl_blitz_NullObjectError
_1997:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-64],eax
	jmp	_151
_153:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_2002
	call	_brl_blitz_NullObjectError
_2002:
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
	mov	eax,dword [eax+20]
	dec	dword [eax+4]
	jnz	_2006
	push	eax
	call	_bbGCFree
	add	esp,4
_2006:
	mov	eax,dword [ebp-60]
	mov	dword [eax+20],ebx
	mov	eax,dword [ebp-60]
	cmp	dword [eax+20],_bbNullObject
	je	_151
	mov	eax,ebp
	push	eax
	push	_2052
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2007
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2009
	call	_brl_blitz_NullObjectError
_2009:
	mov	edi,dword [ebx+20]
	cmp	edi,_bbNullObject
	jne	_2011
	call	_brl_blitz_NullObjectError
_2011:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2013
	call	_brl_blitz_NullObjectError
_2013:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_2016
	call	_brl_blitz_ArrayBoundsError
_2016:
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
	jne	_2017
	mov	eax,ebp
	push	eax
	push	_2050
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2018
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2020
	call	_brl_blitz_NullObjectError
_2020:
	mov	eax,dword [ebx+20]
	cmp	dword [ebp-4],eax
	je	_2021
	mov	eax,ebp
	push	eax
	push	_2049
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2022
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2024
	call	_brl_blitz_NullObjectError
_2024:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_2026
	call	_brl_blitz_NullObjectError
_2026:
	mov	edi,ebx
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2029
	call	_brl_blitz_NullObjectError
_2029:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_2032
	call	_brl_blitz_ArrayBoundsError
_2032:
	fld	dword [esi+ebx*4+24]
	fadd	dword [ebp-8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [edi+16],eax
	push	_2033
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2035
	call	_brl_blitz_NullObjectError
_2035:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_2037
	call	_brl_blitz_NullObjectError
_2037:
	fld	dword [ebx+32]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_2038
	mov	eax,ebp
	push	eax
	push	_2048
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2039
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_2041
	call	_brl_blitz_ArrayBoundsError
_2041:
	mov	eax,dword [ebp-12]
	shl	ebx,2
	add	eax,ebx
	mov	edi,eax
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2044
	call	_brl_blitz_NullObjectError
_2044:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_2047
	call	_brl_blitz_ArrayBoundsError
_2047:
	fld	dword [esi+ebx*4+24]
	fadd	dword [ebp-8]
	fstp	dword [edi+24]
	call	dword [_bbOnDebugLeaveScope]
_2038:
	call	dword [_bbOnDebugLeaveScope]
_2021:
	call	dword [_bbOnDebugLeaveScope]
_2017:
	push	_2051
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-16],1
	call	dword [_bbOnDebugLeaveScope]
_151:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_2000
	call	_brl_blitz_NullObjectError
_2000:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_153
_152:
	push	_2053
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_3359]
	fstp	dword [ebp-20]
	mov	dword [ebp-24],-1
	push	_2056
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	mov	dword [ebp-28],0
	jmp	_2058
_156:
	mov	eax,ebp
	push	eax
	push	_2072
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2059
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_2061
	call	_brl_blitz_ArrayBoundsError
_2061:
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
	je	_2064
	mov	ebx,dword [ebp-28]
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_2063
	call	_brl_blitz_ArrayBoundsError
_2063:
	mov	eax,dword [ebp-12]
	fld	dword [eax+ebx*4+24]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
_2064:
	cmp	eax,0
	je	_2066
	mov	eax,ebp
	push	eax
	push	_2071
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2067
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	mov	dword [ebp-24],eax
	push	_2068
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_2070
	call	_brl_blitz_ArrayBoundsError
_2070:
	mov	eax,dword [ebp-12]
	fld	dword [eax+ebx*4+24]
	fstp	dword [ebp-20]
	call	dword [_bbOnDebugLeaveScope]
_2066:
	call	dword [_bbOnDebugLeaveScope]
_154:
	add	dword [ebp-28],1
_2058:
	cmp	dword [ebp-28],15
	jle	_156
_155:
	push	_2074
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	push	_2075
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2077
	call	_brl_blitz_NullObjectError
_2077:
	mov	dword [ebp-36],ebx
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2080
	call	_brl_blitz_NullObjectError
_2080:
	mov	eax,dword [ebx+36]
	mov	dword [ebp-48],eax
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_2083
	call	_brl_blitz_NullObjectError
_2083:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-44],eax
	jmp	_157
_159:
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_2088
	call	_brl_blitz_NullObjectError
_2088:
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
	mov	eax,dword [eax+20]
	dec	dword [eax+4]
	jnz	_2092
	push	eax
	call	_bbGCFree
	add	esp,4
_2092:
	mov	eax,dword [ebp-36]
	mov	dword [eax+20],ebx
	mov	eax,dword [ebp-36]
	cmp	dword [eax+20],_bbNullObject
	je	_157
	mov	eax,ebp
	push	eax
	push	_2105
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2093
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	cmp	dword [ebp-24],eax
	jne	_2094
	mov	eax,ebp
	push	eax
	push	_2103
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2095
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_2097
	call	_brl_blitz_NullObjectError
_2097:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2099
	call	_brl_blitz_NullObjectError
_2099:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_2102
	call	_brl_blitz_ArrayBoundsError
_2102:
	fld	dword [esi+ebx*4+24]
	fadd	dword [ebp-8]
	sub	esp,4
	fstp	dword [esp]
	push	dword [edi+20]
	call	_bb_wayray
	fstp	st0
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_2094:
	push	_2104
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-16],1
	call	dword [_bbOnDebugLeaveScope]
_157:
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_2086
	call	_brl_blitz_NullObjectError
_2086:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_159
_158:
	push	_2106
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	push	_2107
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2109
	call	_brl_blitz_NullObjectError
_2109:
	mov	dword [ebp-40],ebx
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2112
	call	_brl_blitz_NullObjectError
_2112:
	mov	eax,dword [ebx+36]
	mov	dword [ebp-56],eax
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_2115
	call	_brl_blitz_NullObjectError
_2115:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-52],eax
	jmp	_160
_162:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_2120
	call	_brl_blitz_NullObjectError
_2120:
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
	mov	eax,dword [eax+20]
	dec	dword [eax+4]
	jnz	_2124
	push	eax
	call	_bbGCFree
	add	esp,4
_2124:
	mov	eax,dword [ebp-40]
	mov	dword [eax+20],ebx
	mov	eax,dword [ebp-40]
	cmp	dword [eax+20],_bbNullObject
	je	_160
	mov	eax,ebp
	push	eax
	push	_2144
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2125
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	cmp	dword [ebp-24],eax
	je	_2126
	mov	eax,ebp
	push	eax
	push	_2142
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2127
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2129
	call	_brl_blitz_NullObjectError
_2129:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_2131
	call	_brl_blitz_NullObjectError
_2131:
	fld	dword [ebx+32]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_2132
	mov	eax,ebp
	push	eax
	push	_2141
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2133
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_2135
	call	_brl_blitz_NullObjectError
_2135:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2137
	call	_brl_blitz_NullObjectError
_2137:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_2140
	call	_brl_blitz_ArrayBoundsError
_2140:
	fld	dword [esi+ebx*4+24]
	fadd	dword [ebp-8]
	sub	esp,4
	fstp	dword [esp]
	push	dword [edi+20]
	call	_bb_wayray
	fstp	st0
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_2132:
	call	dword [_bbOnDebugLeaveScope]
_2126:
	push	_2143
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-16],1
	call	dword [_bbOnDebugLeaveScope]
_160:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_2118
	call	_brl_blitz_NullObjectError
_2118:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_162
_161:
	push	_2145
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2147
	call	_brl_blitz_NullObjectError
_2147:
	mov	eax,dword [ebx+16]
	mov	dword [ebp+-72],eax
	fild	dword [ebp+-72]
	fstp	dword [ebp-32]
	jmp	_313
_313:
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
	push	_2344
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2154
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_3419]
	fstp	dword [ebp-32]
	push	_2156
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
	push	_2157
	call	_bbArrayNew
	add	esp,20
	mov	dword [ebp-36],eax
	push	_2159
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],0
	mov	dword [ebp-48],0
	mov	eax,dword [ebp-24]
	mov	dword [ebp-92],eax
	jmp	_2161
_165:
	mov	eax,ebp
	push	eax
	push	_2188
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2163
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],0
	mov	dword [ebp-52],0
	mov	eax,dword [ebp-28]
	mov	dword [ebp-84],eax
	jmp	_2165
_168:
	mov	eax,ebp
	push	eax
	push	_2187
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2167
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-48]
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-36]
	cmp	edi,dword [eax+20]
	jb	_2169
	call	_brl_blitz_ArrayBoundsError
_2169:
	mov	eax,dword [ebp-52]
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-36]
	cmp	esi,dword [eax+24]
	jb	_2171
	call	_brl_blitz_ArrayBoundsError
_2171:
	mov	ebx,2
	mov	eax,dword [ebp-36]
	cmp	ebx,dword [eax+28]
	jb	_2173
	call	_brl_blitz_ArrayBoundsError
_2173:
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
	jb	_2176
	call	_brl_blitz_ArrayBoundsError
_2176:
	mov	ebx,dword [ebp-52]
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+24]
	jb	_2178
	call	_brl_blitz_ArrayBoundsError
_2178:
	mov	eax,dword [ebp-20]
	mov	edx,dword [eax]
	mov	eax,esi
	add	eax,ebx
	mov	eax,dword [edx+eax*4+28]
	mov	dword [edi+32],eax
	push	_2179
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-48]
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-36]
	cmp	edi,dword [eax+20]
	jb	_2181
	call	_brl_blitz_ArrayBoundsError
_2181:
	mov	eax,dword [ebp-52]
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-36]
	cmp	esi,dword [eax+24]
	jb	_2183
	call	_brl_blitz_ArrayBoundsError
_2183:
	mov	ebx,1
	mov	eax,dword [ebp-36]
	cmp	ebx,dword [eax+28]
	jb	_2185
	call	_brl_blitz_ArrayBoundsError
_2185:
	mov	edx,dword [ebp-36]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	shl	eax,2
	add	edx,eax
	mov	dword [edx+32],9999
	call	dword [_bbOnDebugLeaveScope]
_166:
	add	dword [ebp-52],1
_2165:
	mov	eax,dword [ebp-84]
	cmp	dword [ebp-52],eax
	jle	_168
_167:
	call	dword [_bbOnDebugLeaveScope]
_163:
	add	dword [ebp-48],1
_2161:
	mov	eax,dword [ebp-92]
	cmp	dword [ebp-48],eax
	jle	_165
_164:
	push	_2189
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
	je	_2190
	fld	dword [ebp-8]
	fld	dword [ebp-16]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
_2190:
	cmp	eax,0
	je	_2192
	mov	eax,ebp
	push	eax
	push	_2194
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2193
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_3420]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_322
_2192:
	push	_2195
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
	jne	_2196
	mov	eax,ebp
	push	eax
	push	_2198
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2197
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_3421]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_322
_2196:
	push	_2199
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
	jne	_2200
	mov	eax,ebp
	push	eax
	push	_2202
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2201
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_3422]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_322
_2200:
	push	_2203
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
	jne	_2204
	mov	eax,ebp
	push	eax
	push	_2206
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2205
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_3423]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_322
_2204:
	push	_2207
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
	jne	_2208
	mov	eax,ebp
	push	eax
	push	_2210
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2209
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_3424]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_322
_2208:
	push	_2211
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
	jne	_2212
	mov	eax,ebp
	push	eax
	push	_2214
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2213
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_3425]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_322
_2212:
	push	_2215
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
	jne	_2216
	mov	eax,ebp
	push	eax
	push	_2218
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2217
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_3426]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_322
_2216:
	push	_2219
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
	jne	_2220
	mov	eax,ebp
	push	eax
	push	_2222
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2221
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_3427]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_322
_2220:
	push	_2223
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
	jne	_2224
	mov	eax,ebp
	push	eax
	push	_2226
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2225
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_3428]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_322
_2224:
	push	_2227
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
	jb	_2229
	call	_brl_blitz_ArrayBoundsError
_2229:
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
	jb	_2231
	call	_brl_blitz_ArrayBoundsError
_2231:
	mov	ebx,1
	mov	eax,dword [ebp-36]
	cmp	ebx,dword [eax+28]
	jb	_2233
	call	_brl_blitz_ArrayBoundsError
_2233:
	mov	edx,dword [ebp-36]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	shl	eax,2
	add	edx,eax
	mov	dword [edx+32],1
	push	_2235
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
	jnz	_2236
	push	dword [ebp-36]
	call	_bbGCFree
	add	esp,4
_2236:
	push	_2238
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_3429]
	fstp	dword [ebp-40]
	mov	dword [ebp-44],-1
	push	_2241
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],0
	mov	dword [ebp-56],-1
	jmp	_2243
_171:
	mov	eax,ebp
	push	eax
	push	_2320
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2244
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],0
	mov	dword [ebp-60],-1
	jmp	_2246
_174:
	mov	eax,ebp
	push	eax
	push	_2319
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2247
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2248
	mov	eax,dword [ebp-60]
	cmp	eax,0
	sete	al
	movzx	eax,al
_2248:
	cmp	eax,0
	je	_2250
	mov	eax,ebp
	push	eax
	push	_2251
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2252
_2250:
	mov	eax,ebp
	push	eax
	push	_2318
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2253
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2254
	mov	eax,dword [ebp-60]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_2254:
	cmp	eax,0
	je	_2256
	mov	eax,ebp
	push	eax
	push	_2258
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2257
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],315
	call	dword [_bbOnDebugLeaveScope]
_2256:
	push	_2259
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2260
	mov	eax,dword [ebp-60]
	cmp	eax,0
	sete	al
	movzx	eax,al
_2260:
	cmp	eax,0
	je	_2262
	mov	eax,ebp
	push	eax
	push	_2264
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2263
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],180
	call	dword [_bbOnDebugLeaveScope]
_2262:
	push	_2265
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2266
	mov	eax,dword [ebp-60]
	cmp	eax,1
	sete	al
	movzx	eax,al
_2266:
	cmp	eax,0
	je	_2268
	mov	eax,ebp
	push	eax
	push	_2270
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2269
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],45
	call	dword [_bbOnDebugLeaveScope]
_2268:
	push	_2271
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2272
	mov	eax,dword [ebp-60]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_2272:
	cmp	eax,0
	je	_2274
	mov	eax,ebp
	push	eax
	push	_2276
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2275
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],270
	call	dword [_bbOnDebugLeaveScope]
_2274:
	push	_2277
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2278
	mov	eax,dword [ebp-60]
	cmp	eax,1
	sete	al
	movzx	eax,al
_2278:
	cmp	eax,0
	je	_2280
	mov	eax,ebp
	push	eax
	push	_2282
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2281
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],90
	call	dword [_bbOnDebugLeaveScope]
_2280:
	push	_2283
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2284
	mov	eax,dword [ebp-60]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_2284:
	cmp	eax,0
	je	_2286
	mov	eax,ebp
	push	eax
	push	_2288
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2287
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],225
	call	dword [_bbOnDebugLeaveScope]
_2286:
	push	_2289
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2290
	mov	eax,dword [ebp-60]
	cmp	eax,0
	sete	al
	movzx	eax,al
_2290:
	cmp	eax,0
	je	_2292
	mov	eax,ebp
	push	eax
	push	_2294
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2293
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],0
	call	dword [_bbOnDebugLeaveScope]
_2292:
	push	_2295
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2296
	mov	eax,dword [ebp-60]
	cmp	eax,1
	sete	al
	movzx	eax,al
_2296:
	cmp	eax,0
	je	_2298
	mov	eax,ebp
	push	eax
	push	_2300
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2299
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],135
	call	dword [_bbOnDebugLeaveScope]
_2298:
	push	_2301
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
	jb	_2303
	call	_brl_blitz_ArrayBoundsError
_2303:
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
	jb	_2305
	call	_brl_blitz_ArrayBoundsError
_2305:
	mov	ebx,1
	mov	eax,dword [ebp-36]
	cmp	ebx,dword [eax+28]
	jb	_2307
	call	_brl_blitz_ArrayBoundsError
_2307:
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
	jne	_2308
	mov	eax,ebp
	push	eax
	push	_2317
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2309
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-44]
	mov	dword [ebp+-96],eax
	fild	dword [ebp+-96]
	fstp	dword [ebp-32]
	push	_2310
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
	jb	_2312
	call	_brl_blitz_ArrayBoundsError
_2312:
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
	jb	_2314
	call	_brl_blitz_ArrayBoundsError
_2314:
	mov	ebx,1
	mov	eax,dword [ebp-36]
	cmp	ebx,dword [eax+28]
	jb	_2316
	call	_brl_blitz_ArrayBoundsError
_2316:
	mov	edx,dword [ebp-36]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	mov	eax,dword [edx+eax*4+32]
	mov	dword [ebp+-96],eax
	fild	dword [ebp+-96]
	fstp	dword [ebp-40]
	call	dword [_bbOnDebugLeaveScope]
_2308:
	call	dword [_bbOnDebugLeaveScope]
_2252:
	call	dword [_bbOnDebugLeaveScope]
_172:
	add	dword [ebp-60],1
_2246:
	cmp	dword [ebp-60],1
	jle	_174
_173:
	call	dword [_bbOnDebugLeaveScope]
_169:
	add	dword [ebp-56],1
_2243:
	cmp	dword [ebp-56],1
	jle	_171
_170:
	push	_2321
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-64],0
	mov	dword [ebp-64],0
	mov	eax,dword [ebp-24]
	mov	dword [ebp-88],eax
	jmp	_2323
_177:
	mov	eax,ebp
	push	eax
	push	_2342
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2325
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-68],0
	mov	dword [ebp-68],0
	mov	eax,dword [ebp-28]
	mov	dword [ebp-80],eax
	jmp	_2327
_180:
	mov	eax,ebp
	push	eax
	push	_2341
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2329
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-64]
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax]
	imul	ebx,dword [eax+24]
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+20]
	jb	_2331
	call	_brl_blitz_ArrayBoundsError
_2331:
	mov	esi,dword [ebp-68]
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_2333
	call	_brl_blitz_ArrayBoundsError
_2333:
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
	jb	_2336
	call	_brl_blitz_ArrayBoundsError
_2336:
	mov	eax,dword [ebp-68]
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-36]
	cmp	esi,dword [eax+24]
	jb	_2338
	call	_brl_blitz_ArrayBoundsError
_2338:
	mov	ebx,1
	mov	eax,dword [ebp-36]
	cmp	ebx,dword [eax+28]
	jb	_2340
	call	_brl_blitz_ArrayBoundsError
_2340:
	mov	edx,dword [ebp-36]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	mov	edx,dword [edx+eax*4+32]
	mov	eax,dword [ebp-72]
	mov	dword [eax+28],edx
	call	dword [_bbOnDebugLeaveScope]
_178:
	add	dword [ebp-68],1
_2327:
	mov	eax,dword [ebp-80]
	cmp	dword [ebp-68],eax
	jle	_180
_179:
	call	dword [_bbOnDebugLeaveScope]
_175:
	add	dword [ebp-64],1
_2323:
	mov	eax,dword [ebp-88]
	cmp	dword [ebp-64],eax
	jle	_177
_176:
	push	_2343
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-32]
	fstp	dword [ebp-76]
	jmp	_322
_322:
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
	push	_2700
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2356
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
	jb	_2358
	call	_brl_blitz_ArrayBoundsError
_2358:
	mov	eax,dword [ebp-8]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_2360
	call	_brl_blitz_ArrayBoundsError
_2360:
	mov	ebx,0
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_2362
	call	_brl_blitz_ArrayBoundsError
_2362:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	shl	eax,2
	add	edx,eax
	mov	dword [edx+32],1
	push	_2364
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	cmp	eax,0
	setg	al
	movzx	eax,al
	cmp	eax,0
	je	_2365
	mov	eax,dword [ebp-4]
	cmp	eax,dword [ebp-16]
	setl	al
	movzx	eax,al
_2365:
	cmp	eax,0
	je	_2367
	mov	eax,dword [ebp-8]
	cmp	eax,0
	setg	al
	movzx	eax,al
_2367:
	cmp	eax,0
	je	_2369
	mov	eax,dword [ebp-8]
	cmp	eax,dword [ebp-20]
	setl	al
	movzx	eax,al
_2369:
	cmp	eax,0
	je	_2371
	mov	eax,ebp
	push	eax
	push	_2699
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2372
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
	jne	_2373
	mov	eax,ebp
	push	eax
	push	_2382
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2374
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
	jb	_2376
	call	_brl_blitz_ArrayBoundsError
_2376:
	mov	eax,dword [ebp-8]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_2378
	call	_brl_blitz_ArrayBoundsError
_2378:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_2380
	call	_brl_blitz_ArrayBoundsError
_2380:
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
_2373:
	push	_2383
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	mov	dword [ebp-28],-1
	jmp	_2385
_183:
	mov	eax,ebp
	push	eax
	push	_2503
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2386
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],0
	mov	dword [ebp-32],-1
	jmp	_2388
_186:
	mov	eax,ebp
	push	eax
	push	_2502
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2389
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2390
	mov	eax,dword [ebp-32]
	cmp	eax,0
	sete	al
	movzx	eax,al
_2390:
	cmp	eax,0
	je	_2392
	mov	eax,ebp
	push	eax
	push	_2393
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2394
_2392:
	mov	eax,ebp
	push	eax
	push	_2500
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2395
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-36]
	push	_2397
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2398
	mov	eax,dword [ebp-32]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_2398:
	cmp	eax,0
	je	_2400
	mov	eax,ebp
	push	eax
	push	_2402
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2401
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
_2400:
	push	_2403
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2404
	mov	eax,dword [ebp-32]
	cmp	eax,0
	sete	al
	movzx	eax,al
_2404:
	cmp	eax,0
	je	_2406
	mov	eax,ebp
	push	eax
	push	_2408
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2407
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
_2406:
	push	_2409
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2410
	mov	eax,dword [ebp-32]
	cmp	eax,1
	sete	al
	movzx	eax,al
_2410:
	cmp	eax,0
	je	_2412
	mov	eax,ebp
	push	eax
	push	_2414
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2413
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
_2412:
	push	_2415
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2416
	mov	eax,dword [ebp-32]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_2416:
	cmp	eax,0
	je	_2418
	mov	eax,ebp
	push	eax
	push	_2420
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2419
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
_2418:
	push	_2421
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2422
	mov	eax,dword [ebp-32]
	cmp	eax,1
	sete	al
	movzx	eax,al
_2422:
	cmp	eax,0
	je	_2424
	mov	eax,ebp
	push	eax
	push	_2426
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2425
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
_2424:
	push	_2427
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2428
	mov	eax,dword [ebp-32]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_2428:
	cmp	eax,0
	je	_2430
	mov	eax,ebp
	push	eax
	push	_2432
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2431
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
_2430:
	push	_2433
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2434
	mov	eax,dword [ebp-32]
	cmp	eax,0
	sete	al
	movzx	eax,al
_2434:
	cmp	eax,0
	je	_2436
	mov	eax,ebp
	push	eax
	push	_2438
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2437
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
_2436:
	push	_2439
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2440
	mov	eax,dword [ebp-32]
	cmp	eax,1
	sete	al
	movzx	eax,al
_2440:
	cmp	eax,0
	je	_2442
	mov	eax,ebp
	push	eax
	push	_2444
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2443
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
_2442:
	push	_2445
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
	jb	_2447
	call	_brl_blitz_ArrayBoundsError
_2447:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-32]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_2449
	call	_brl_blitz_ArrayBoundsError
_2449:
	mov	ebx,2
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_2451
	call	_brl_blitz_ArrayBoundsError
_2451:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	cmp	dword [edx+eax*4+32],0
	jne	_2452
	mov	eax,ebp
	push	eax
	push	_2470
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2453
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
	jb	_2455
	call	_brl_blitz_ArrayBoundsError
_2455:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-32]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_2457
	call	_brl_blitz_ArrayBoundsError
_2457:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_2459
	call	_brl_blitz_ArrayBoundsError
_2459:
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
	jne	_2460
	mov	eax,ebp
	push	eax
	push	_2469
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2461
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
	jb	_2463
	call	_brl_blitz_ArrayBoundsError
_2463:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-32]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_2465
	call	_brl_blitz_ArrayBoundsError
_2465:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_2467
	call	_brl_blitz_ArrayBoundsError
_2467:
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
_2460:
	call	dword [_bbOnDebugLeaveScope]
_2452:
	push	_2471
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
	jb	_2473
	call	_brl_blitz_ArrayBoundsError
_2473:
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
	jb	_2475
	call	_brl_blitz_ArrayBoundsError
_2475:
	mov	dword [ebp-84],1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	mov	eax,dword [eax+28]
	cmp	dword [ebp-84],eax
	jb	_2477
	call	_brl_blitz_ArrayBoundsError
_2477:
	mov	edx,dword [ebp-4]
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	imul	edx,dword [eax+24]
	mov	dword [ebp-68],edx
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-68],eax
	jb	_2479
	call	_brl_blitz_ArrayBoundsError
_2479:
	mov	eax,dword [ebp-8]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+24]
	jb	_2481
	call	_brl_blitz_ArrayBoundsError
_2481:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_2483
	call	_brl_blitz_ArrayBoundsError
_2483:
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
	jge	_2484
	mov	eax,ebp
	push	eax
	push	_2499
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2485
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
	jb	_2487
	call	_brl_blitz_ArrayBoundsError
_2487:
	mov	eax,dword [ebp-8]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_2489
	call	_brl_blitz_ArrayBoundsError
_2489:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_2491
	call	_brl_blitz_ArrayBoundsError
_2491:
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
	jb	_2494
	call	_brl_blitz_ArrayBoundsError
_2494:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-32]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_2496
	call	_brl_blitz_ArrayBoundsError
_2496:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_2498
	call	_brl_blitz_ArrayBoundsError
_2498:
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
_2484:
	call	dword [_bbOnDebugLeaveScope]
_2394:
	call	dword [_bbOnDebugLeaveScope]
_184:
	add	dword [ebp-32],1
_2388:
	cmp	dword [ebp-32],1
	jle	_186
_185:
	call	dword [_bbOnDebugLeaveScope]
_181:
	add	dword [ebp-28],1
_2385:
	cmp	dword [ebp-28],1
	jle	_183
_182:
	push	_2504
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],0
	mov	dword [ebp-40],-1
	jmp	_2506
_189:
	mov	eax,ebp
	push	eax
	push	_2578
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2507
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],0
	mov	dword [ebp-44],-1
	jmp	_2509
_192:
	mov	eax,ebp
	push	eax
	push	_2577
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2510
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2511
	mov	eax,dword [ebp-44]
	cmp	eax,0
	sete	al
	movzx	eax,al
_2511:
	cmp	eax,0
	je	_2513
	mov	eax,ebp
	push	eax
	push	_2514
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2515
_2513:
	mov	eax,ebp
	push	eax
	push	_2576
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2516
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-48]
	push	_2518
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2519
	mov	eax,dword [ebp-44]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_2519:
	cmp	eax,0
	je	_2521
	mov	eax,ebp
	push	eax
	push	_2523
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2522
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-48]
	call	dword [_bbOnDebugLeaveScope]
_2521:
	push	_2524
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2525
	mov	eax,dword [ebp-44]
	cmp	eax,0
	sete	al
	movzx	eax,al
_2525:
	cmp	eax,0
	je	_2527
	mov	eax,ebp
	push	eax
	push	_2529
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2528
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-48]
	call	dword [_bbOnDebugLeaveScope]
_2527:
	push	_2530
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2531
	mov	eax,dword [ebp-44]
	cmp	eax,1
	sete	al
	movzx	eax,al
_2531:
	cmp	eax,0
	je	_2533
	mov	eax,ebp
	push	eax
	push	_2535
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2534
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-48]
	call	dword [_bbOnDebugLeaveScope]
_2533:
	push	_2536
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2537
	mov	eax,dword [ebp-44]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_2537:
	cmp	eax,0
	je	_2539
	mov	eax,ebp
	push	eax
	push	_2541
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2540
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-48]
	call	dword [_bbOnDebugLeaveScope]
_2539:
	push	_2542
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2543
	mov	eax,dword [ebp-44]
	cmp	eax,1
	sete	al
	movzx	eax,al
_2543:
	cmp	eax,0
	je	_2545
	mov	eax,ebp
	push	eax
	push	_2547
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2546
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-48]
	call	dword [_bbOnDebugLeaveScope]
_2545:
	push	_2548
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2549
	mov	eax,dword [ebp-44]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_2549:
	cmp	eax,0
	je	_2551
	mov	eax,ebp
	push	eax
	push	_2553
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2552
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-48]
	call	dword [_bbOnDebugLeaveScope]
_2551:
	push	_2554
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2555
	mov	eax,dword [ebp-44]
	cmp	eax,0
	sete	al
	movzx	eax,al
_2555:
	cmp	eax,0
	je	_2557
	mov	eax,ebp
	push	eax
	push	_2559
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2558
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-48]
	call	dword [_bbOnDebugLeaveScope]
_2557:
	push	_2560
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2561
	mov	eax,dword [ebp-44]
	cmp	eax,1
	sete	al
	movzx	eax,al
_2561:
	cmp	eax,0
	je	_2563
	mov	eax,ebp
	push	eax
	push	_2565
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2564
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-48]
	call	dword [_bbOnDebugLeaveScope]
_2563:
	push	_2566
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
	jb	_2568
	call	_brl_blitz_ArrayBoundsError
_2568:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-44]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_2570
	call	_brl_blitz_ArrayBoundsError
_2570:
	mov	ebx,0
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_2572
	call	_brl_blitz_ArrayBoundsError
_2572:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	cmp	dword [edx+eax*4+32],0
	jne	_2573
	mov	eax,ebp
	push	eax
	push	_2575
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2574
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
_2573:
	call	dword [_bbOnDebugLeaveScope]
_2515:
	call	dword [_bbOnDebugLeaveScope]
_190:
	add	dword [ebp-44],1
_2509:
	cmp	dword [ebp-44],1
	jle	_192
_191:
	call	dword [_bbOnDebugLeaveScope]
_187:
	add	dword [ebp-40],1
_2506:
	cmp	dword [ebp-40],1
	jle	_189
_188:
	push	_2579
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],0
	mov	dword [ebp-52],-1
	jmp	_2581
_195:
	mov	eax,ebp
	push	eax
	push	_2698
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2582
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],0
	mov	dword [ebp-56],-1
	jmp	_2584
_198:
	mov	eax,ebp
	push	eax
	push	_2697
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2585
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2586
	mov	eax,dword [ebp-56]
	cmp	eax,0
	sete	al
	movzx	eax,al
_2586:
	cmp	eax,0
	je	_2588
	mov	eax,ebp
	push	eax
	push	_2589
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2590
_2588:
	mov	eax,ebp
	push	eax
	push	_2696
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2591
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-60]
	push	_2593
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2594
	mov	eax,dword [ebp-56]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_2594:
	cmp	eax,0
	je	_2596
	mov	eax,ebp
	push	eax
	push	_2598
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2597
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-60]
	call	dword [_bbOnDebugLeaveScope]
_2596:
	push	_2599
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2600
	mov	eax,dword [ebp-56]
	cmp	eax,0
	sete	al
	movzx	eax,al
_2600:
	cmp	eax,0
	je	_2602
	mov	eax,ebp
	push	eax
	push	_2604
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2603
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-60]
	call	dword [_bbOnDebugLeaveScope]
_2602:
	push	_2605
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2606
	mov	eax,dword [ebp-56]
	cmp	eax,1
	sete	al
	movzx	eax,al
_2606:
	cmp	eax,0
	je	_2608
	mov	eax,ebp
	push	eax
	push	_2610
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2609
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-60]
	call	dword [_bbOnDebugLeaveScope]
_2608:
	push	_2611
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2612
	mov	eax,dword [ebp-56]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_2612:
	cmp	eax,0
	je	_2614
	mov	eax,ebp
	push	eax
	push	_2616
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2615
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-60]
	call	dword [_bbOnDebugLeaveScope]
_2614:
	push	_2617
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2618
	mov	eax,dword [ebp-56]
	cmp	eax,1
	sete	al
	movzx	eax,al
_2618:
	cmp	eax,0
	je	_2620
	mov	eax,ebp
	push	eax
	push	_2622
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2621
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-60]
	call	dword [_bbOnDebugLeaveScope]
_2620:
	push	_2623
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2624
	mov	eax,dword [ebp-56]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_2624:
	cmp	eax,0
	je	_2626
	mov	eax,ebp
	push	eax
	push	_2628
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2627
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-60]
	call	dword [_bbOnDebugLeaveScope]
_2626:
	push	_2629
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2630
	mov	eax,dword [ebp-56]
	cmp	eax,0
	sete	al
	movzx	eax,al
_2630:
	cmp	eax,0
	je	_2632
	mov	eax,ebp
	push	eax
	push	_2634
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2633
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-60]
	call	dword [_bbOnDebugLeaveScope]
_2632:
	push	_2635
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2636
	mov	eax,dword [ebp-56]
	cmp	eax,1
	sete	al
	movzx	eax,al
_2636:
	cmp	eax,0
	je	_2638
	mov	eax,ebp
	push	eax
	push	_2640
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2639
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-60]
	call	dword [_bbOnDebugLeaveScope]
_2638:
	push	_2641
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
	jb	_2643
	call	_brl_blitz_ArrayBoundsError
_2643:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-56]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_2645
	call	_brl_blitz_ArrayBoundsError
_2645:
	mov	ebx,2
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_2647
	call	_brl_blitz_ArrayBoundsError
_2647:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	cmp	dword [edx+eax*4+32],0
	jne	_2648
	mov	eax,ebp
	push	eax
	push	_2666
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2649
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
	jb	_2651
	call	_brl_blitz_ArrayBoundsError
_2651:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-56]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_2653
	call	_brl_blitz_ArrayBoundsError
_2653:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_2655
	call	_brl_blitz_ArrayBoundsError
_2655:
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
	jne	_2656
	mov	eax,ebp
	push	eax
	push	_2665
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2657
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
	jb	_2659
	call	_brl_blitz_ArrayBoundsError
_2659:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-56]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_2661
	call	_brl_blitz_ArrayBoundsError
_2661:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_2663
	call	_brl_blitz_ArrayBoundsError
_2663:
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
_2656:
	call	dword [_bbOnDebugLeaveScope]
_2648:
	push	_2667
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
	jb	_2669
	call	_brl_blitz_ArrayBoundsError
_2669:
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
	jb	_2671
	call	_brl_blitz_ArrayBoundsError
_2671:
	mov	dword [ebp-80],1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	mov	eax,dword [eax+28]
	cmp	dword [ebp-80],eax
	jb	_2673
	call	_brl_blitz_ArrayBoundsError
_2673:
	mov	edx,dword [ebp-4]
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	imul	edx,dword [eax+24]
	mov	dword [ebp-64],edx
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-64],eax
	jb	_2675
	call	_brl_blitz_ArrayBoundsError
_2675:
	mov	eax,dword [ebp-8]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+24]
	jb	_2677
	call	_brl_blitz_ArrayBoundsError
_2677:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_2679
	call	_brl_blitz_ArrayBoundsError
_2679:
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
	jge	_2680
	mov	eax,ebp
	push	eax
	push	_2695
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2681
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
	jb	_2683
	call	_brl_blitz_ArrayBoundsError
_2683:
	mov	eax,dword [ebp-8]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_2685
	call	_brl_blitz_ArrayBoundsError
_2685:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_2687
	call	_brl_blitz_ArrayBoundsError
_2687:
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
	jb	_2690
	call	_brl_blitz_ArrayBoundsError
_2690:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-56]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_2692
	call	_brl_blitz_ArrayBoundsError
_2692:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_2694
	call	_brl_blitz_ArrayBoundsError
_2694:
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
_2680:
	call	dword [_bbOnDebugLeaveScope]
_2590:
	call	dword [_bbOnDebugLeaveScope]
_196:
	add	dword [ebp-56],1
_2584:
	cmp	dword [ebp-56],1
	jle	_198
_197:
	call	dword [_bbOnDebugLeaveScope]
_193:
	add	dword [ebp-52],1
_2581:
	cmp	dword [ebp-52],1
	jle	_195
_194:
	call	dword [_bbOnDebugLeaveScope]
_2371:
	mov	ebx,0
	jmp	_330
_330:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_Main_smart:
	push	ebp
	mov	ebp,esp
	sub	esp,24
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-12],0
	mov	dword [ebp-8],0
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-20],0
	mov	eax,ebp
	push	eax
	push	_2776
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2702
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_thesmartNOW],-2
	jne	_2703
	mov	eax,ebp
	push	eax
	push	_2745
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2704
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	dword [ebp-12],0
	jmp	_2706
_201:
	mov	eax,ebp
	push	eax
	push	_2715
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2707
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	mov	eax,dword [_bb_thesmartarray]
	cmp	ebx,dword [eax+20]
	jb	_2709
	call	_brl_blitz_ArrayBoundsError
_2709:
	mov	esi,dword [_bb_thesmartarray]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2714
	push	eax
	call	_bbGCFree
	add	esp,4
_2714:
	mov	dword [esi+24],ebx
	call	dword [_bbOnDebugLeaveScope]
_199:
	add	dword [ebp-12],1
_2706:
	cmp	dword [ebp-12],999
	jle	_201
_200:
	push	_2717
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	push	_2719
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	mov	eax,dword [ebp-4]
	mov	dword [ebp-24],eax
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_2723
	call	_brl_blitz_NullObjectError
_2723:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_202
_204:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2728
	call	_brl_blitz_NullObjectError
_2728:
	push	_bb_TbotT
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-16],eax
	cmp	dword [ebp-16],_bbNullObject
	je	_202
	mov	eax,ebp
	push	eax
	push	_2742
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2729
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	mov	eax,dword [_bb_thesmartarray]
	cmp	ebx,dword [eax+20]
	jb	_2731
	call	_brl_blitz_ArrayBoundsError
_2731:
	mov	eax,dword [_bb_thesmartarray]
	shl	ebx,2
	add	eax,ebx
	mov	esi,eax
	mov	eax,dword [ebp-16]
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2736
	push	eax
	call	_bbGCFree
	add	esp,4
_2736:
	mov	dword [esi+24],ebx
	push	_2737
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-8],1
	push	_2738
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-8],998
	jle	_2739
	mov	eax,ebp
	push	eax
	push	_2741
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2740
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_203
_2739:
	call	dword [_bbOnDebugLeaveScope]
_202:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2726
	call	_brl_blitz_NullObjectError
_2726:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_204
_203:
	push	_2744
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_thesmartNOW],-1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2747
_2703:
	mov	eax,ebp
	push	eax
	push	_2775
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2748
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_thesmartlist]
	cmp	ebx,_bbNullObject
	jne	_2750
	call	_brl_blitz_NullObjectError
_2750:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_2751
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	mov	dword [ebp-20],0
	jmp	_2753
_207:
	mov	eax,ebp
	push	eax
	push	_2774
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2754
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [_bb_thesmartNOW],1
	push	_2755
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_thesmartNOW]
	mov	eax,dword [_bb_thesmartarray]
	cmp	ebx,dword [eax+20]
	jb	_2757
	call	_brl_blitz_ArrayBoundsError
_2757:
	mov	eax,dword [_bb_thesmartarray]
	cmp	dword [eax+ebx*4+24],_bbNullObject
	je	_2758
	mov	eax,ebp
	push	eax
	push	_2764
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2759
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_bb_thesmartlist]
	cmp	esi,_bbNullObject
	jne	_2761
	call	_brl_blitz_NullObjectError
_2761:
	mov	ebx,dword [_bb_thesmartNOW]
	mov	eax,dword [_bb_thesmartarray]
	cmp	ebx,dword [eax+20]
	jb	_2763
	call	_brl_blitz_ArrayBoundsError
_2763:
	mov	eax,dword [_bb_thesmartarray]
	push	dword [eax+ebx*4+24]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2765
_2758:
	mov	eax,ebp
	push	eax
	push	_2768
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2766
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_thesmartNOW],-2
	push	_2767
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_206
_2765:
	push	_2769
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_thesmartNOW],998
	jle	_2770
	mov	eax,ebp
	push	eax
	push	_2773
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2771
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_thesmartNOW],-2
	push	_2772
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_206
_2770:
	call	dword [_bbOnDebugLeaveScope]
_205:
	add	dword [ebp-20],1
_2753:
	cmp	dword [ebp-20],10
	jle	_207
_206:
	call	dword [_bbOnDebugLeaveScope]
_2747:
	mov	ebx,0
	jmp	_333
_333:
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
_1219:
	dd	0
_1186:
	db	"testlapbotting",0
_1187:
	db	"botTlist",0
_238:
	db	":brl.linkedlist.TList",0
	align	4
_bb_botTlist:
	dd	_bbNullObject
_1188:
	db	"waypointlist",0
	align	4
_bb_waypointlist:
	dd	_bbNullObject
_1189:
	db	"printlistlist",0
	align	4
_bb_printlistlist:
	dd	_bbNullObject
_1190:
	db	"nTwaypoint",0
_235:
	db	":Twaypoint",0
	align	4
_bb_nTwaypoint:
	dd	_bbNullObject
_1191:
	db	"startTwaypoint",0
	align	4
_bb_startTwaypoint:
	dd	_bbNullObject
_1192:
	db	"endTwaypoint",0
	align	4
_bb_endTwaypoint:
	dd	_bbNullObject
_1193:
	db	"wax",0
_231:
	db	"f",0
	align	4
_bb_wax:
	dd	0x44000000
_234:
	db	"way",0
	align	4
_bb_way:
	dd	0x42480000
_1194:
	db	"raster",0
	align	4
_bb_raster:
	dd	0x42c80000
_1195:
	db	"n2Twaypoint",0
_1196:
	db	"t1x",0
	align	4
_bb_t1x:
	dd	0x43480000
_1197:
	db	"t1y",0
	align	4
_bb_t1y:
	dd	0x43960000
_1198:
	db	"t1r",0
	align	4
_bb_t1r:
	dd	0x0
_1199:
	db	"t2x",0
	align	4
_bb_t2x:
	dd	0x44160000
_1200:
	db	"t2y",0
	align	4
_bb_t2y:
	dd	0x43960000
_1201:
	db	"t2r",0
	align	4
_bb_t2r:
	dd	0x43340000
_1202:
	db	"t1way",0
	align	4
_bb_t1way:
	dd	_bbNullObject
_1203:
	db	"t1s",0
	align	4
_bb_t1s:
	dd	0x0
_1204:
	db	"t2s",0
	align	4
_bb_t2s:
	dd	0x0
_1205:
	db	"map",0
_1206:
	db	"[,]i",0
_1207:
	db	"tex",0
_240:
	db	"i",0
_1208:
	db	"tey",0
_1209:
	db	"bex",0
_1210:
	db	"bey",0
_1211:
	db	"waycecker",0
	align	4
_bb_waycecker:
	dd	0
_1212:
	db	"diagonal",0
	align	4
_bb_diagonal:
	dd	0x0
_1213:
	db	"thesmartarray",0
_1214:
	db	"[]:TbotT",0
	align	4
_bb_thesmartarray:
	dd	_bbEmptyArray
_1215:
	db	"thesmartNOW",0
	align	4
_bb_thesmartNOW:
	dd	-2
_1216:
	db	"thesmartlist",0
	align	4
_bb_thesmartlist:
	dd	_bbNullObject
_1217:
	db	"tmr",0
_1218:
	db	":brl.timer.Ttimer",0
	align	4
_bb_tmr:
	dd	_bbNullObject
	align	4
_1185:
	dd	1
	dd	_1186
	dd	4
	dd	_1187
	dd	_238
	dd	_bb_botTlist
	dd	4
	dd	_1188
	dd	_238
	dd	_bb_waypointlist
	dd	4
	dd	_1189
	dd	_238
	dd	_bb_printlistlist
	dd	4
	dd	_1190
	dd	_235
	dd	_bb_nTwaypoint
	dd	4
	dd	_1191
	dd	_235
	dd	_bb_startTwaypoint
	dd	4
	dd	_1192
	dd	_235
	dd	_bb_endTwaypoint
	dd	4
	dd	_1193
	dd	_231
	dd	_bb_wax
	dd	4
	dd	_234
	dd	_231
	dd	_bb_way
	dd	4
	dd	_1194
	dd	_231
	dd	_bb_raster
	dd	2
	dd	_1195
	dd	_235
	dd	-4
	dd	4
	dd	_1196
	dd	_231
	dd	_bb_t1x
	dd	4
	dd	_1197
	dd	_231
	dd	_bb_t1y
	dd	4
	dd	_1198
	dd	_231
	dd	_bb_t1r
	dd	4
	dd	_1199
	dd	_231
	dd	_bb_t2x
	dd	4
	dd	_1200
	dd	_231
	dd	_bb_t2y
	dd	4
	dd	_1201
	dd	_231
	dd	_bb_t2r
	dd	4
	dd	_1202
	dd	_235
	dd	_bb_t1way
	dd	4
	dd	_1203
	dd	_231
	dd	_bb_t1s
	dd	4
	dd	_1204
	dd	_231
	dd	_bb_t2s
	dd	2
	dd	_1205
	dd	_1206
	dd	-8
	dd	2
	dd	_1207
	dd	_240
	dd	-12
	dd	2
	dd	_1208
	dd	_240
	dd	-16
	dd	2
	dd	_1209
	dd	_240
	dd	-20
	dd	2
	dd	_1210
	dd	_240
	dd	-24
	dd	4
	dd	_1211
	dd	_240
	dd	_bb_waycecker
	dd	4
	dd	_1212
	dd	_231
	dd	_bb_diagonal
	dd	4
	dd	_1213
	dd	_1214
	dd	_bb_thesmartarray
	dd	4
	dd	_1215
	dd	_240
	dd	_bb_thesmartNOW
	dd	4
	dd	_1216
	dd	_238
	dd	_bb_thesmartlist
	dd	4
	dd	_1217
	dd	_1218
	dd	_bb_tmr
	dd	0
_229:
	db	"TbotT",0
_230:
	db	"x",0
_232:
	db	"y",0
_233:
	db	"r",0
_236:
	db	"toway",0
_237:
	db	"seelist",0
_239:
	db	"botdel",0
_241:
	db	"New",0
_242:
	db	"()i",0
_243:
	db	"Delete",0
	align	4
_228:
	dd	2
	dd	_229
	dd	3
	dd	_230
	dd	_231
	dd	8
	dd	3
	dd	_232
	dd	_231
	dd	12
	dd	3
	dd	_233
	dd	_231
	dd	16
	dd	3
	dd	_234
	dd	_235
	dd	20
	dd	3
	dd	_236
	dd	_235
	dd	24
	dd	3
	dd	_237
	dd	_238
	dd	28
	dd	3
	dd	_239
	dd	_240
	dd	32
	dd	6
	dd	_241
	dd	_242
	dd	16
	dd	6
	dd	_243
	dd	_242
	dd	20
	dd	0
	align	4
_bb_TbotT:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_228
	dd	36
	dd	__bb_TbotT_New
	dd	__bb_TbotT_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_245:
	db	"Twaypoint",0
_246:
	db	"cheacked",0
_247:
	db	"otherWP",0
_248:
	db	"dist",0
_249:
	db	"[]f",0
_250:
	db	"chaged",0
_251:
	db	"used",0
_252:
	db	"otherlist",0
	align	4
_244:
	dd	2
	dd	_245
	dd	3
	dd	_230
	dd	_231
	dd	8
	dd	3
	dd	_232
	dd	_231
	dd	12
	dd	3
	dd	_246
	dd	_240
	dd	16
	dd	3
	dd	_247
	dd	_235
	dd	20
	dd	3
	dd	_248
	dd	_249
	dd	24
	dd	3
	dd	_250
	dd	_240
	dd	28
	dd	3
	dd	_251
	dd	_231
	dd	32
	dd	3
	dd	_252
	dd	_238
	dd	36
	dd	6
	dd	_241
	dd	_242
	dd	16
	dd	6
	dd	_243
	dd	_242
	dd	20
	dd	0
	align	4
_bb_Twaypoint:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_244
	dd	40
	dd	__bb_Twaypoint_New
	dd	__bb_Twaypoint_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_336:
	db	"D:/Proggen/projecte/team/PanzerS/testlapbotting.bmx",0
	align	4
_335:
	dd	_336
	dd	22
	dd	1
	align	4
_338:
	dd	0
	align	4
_340:
	dd	_336
	dd	30
	dd	1
	align	4
_343:
	dd	_336
	dd	31
	dd	1
	align	4
_346:
	dd	_336
	dd	33
	dd	1
	align	4
_18:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	80,97,110,122,101,114,83,58,32,84,101,115,116,108,97,112
	dw	33
	align	4
_351:
	dd	_336
	dd	34
	dd	1
	align	4
_352:
	dd	_336
	dd	35
	dd	1
	align	4
_353:
	dd	_336
	dd	37
	dd	1
	align	4
_354:
	dd	_336
	dd	38
	dd	1
	align	4
_355:
	dd	_336
	dd	40
	dd	1
	align	4
_356:
	dd	_336
	dd	42
	dd	1
	align	4
_358:
	dd	_336
	dd	43
	dd	1
	align	4
_361:
	dd	_336
	dd	44
	dd	1
	align	4
_365:
	dd	_336
	dd	45
	dd	1
	align	4
_369:
	dd	_336
	dd	46
	dd	1
	align	4
_374:
	dd	_336
	dd	47
	dd	1
	align	4
_2779:
	dd	0x42c80000
	align	4
_375:
	dd	_336
	dd	49
	dd	1
	align	4
_380:
	dd	_336
	dd	50
	dd	1
	align	4
_383:
	dd	_336
	dd	51
	dd	1
	align	4
_387:
	dd	_336
	dd	52
	dd	1
	align	4
_391:
	dd	_336
	dd	53
	dd	1
	align	4
_396:
	dd	_336
	dd	54
	dd	1
	align	4
_401:
	dd	_336
	dd	56
	dd	1
_482:
	db	"anz",0
	align	4
_481:
	dd	3
	dd	0
	dd	2
	dd	_482
	dd	_240
	dd	-28
	dd	0
	align	4
_404:
	dd	_336
	dd	57
	dd	2
	align	4
_409:
	dd	_336
	dd	58
	dd	2
	align	4
_412:
	dd	_336
	dd	59
	dd	2
	align	4
_416:
	dd	_336
	dd	60
	dd	2
	align	4
_2780:
	dd	0x3f800000
	align	4
_420:
	dd	_336
	dd	61
	dd	2
_480:
	db	"gTwaypoint",0
	align	4
_479:
	dd	3
	dd	0
	dd	2
	dd	_480
	dd	_235
	dd	-32
	dd	0
	align	4
_430:
	dd	_336
	dd	62
	dd	3
	align	4
_459:
	dd	3
	dd	0
	dd	0
	align	4
_438:
	dd	_336
	dd	63
	dd	4
	align	8
_2781:
	dd	0x0,0x40000000
	align	8
_2782:
	dd	0x0,0x40000000
	align	4
_2783:
	dd	0x40000000
	align	4
_458:
	dd	3
	dd	0
	dd	0
	align	4
_448:
	dd	_336
	dd	64
	dd	5
	align	4
_453:
	dd	_336
	dd	65
	dd	5
	align	4
_460:
	dd	_336
	dd	68
	dd	3
	align	4
_2784:
	dd	0x3f800000
	align	4
_478:
	dd	3
	dd	0
	dd	0
	align	4
_468:
	dd	_336
	dd	69
	dd	4
	align	4
_473:
	dd	_336
	dd	70
	dd	4
	align	4
_483:
	dd	_336
	dd	75
	dd	1
	align	4
_562:
	dd	3
	dd	0
	dd	2
	dd	_482
	dd	_240
	dd	-36
	dd	0
	align	4
_486:
	dd	_336
	dd	76
	dd	2
	align	4
_491:
	dd	_336
	dd	77
	dd	2
	align	4
_494:
	dd	_336
	dd	78
	dd	2
	align	4
_498:
	dd	_336
	dd	79
	dd	2
	align	4
_2785:
	dd	0x40000000
	align	4
_502:
	dd	_336
	dd	80
	dd	2
	align	4
_561:
	dd	3
	dd	0
	dd	2
	dd	_480
	dd	_235
	dd	-40
	dd	0
	align	4
_512:
	dd	_336
	dd	81
	dd	3
	align	4
_2786:
	dd	0x3f800000
	align	4
_541:
	dd	3
	dd	0
	dd	0
	align	4
_520:
	dd	_336
	dd	82
	dd	4
	align	8
_2787:
	dd	0x0,0x40000000
	align	8
_2788:
	dd	0x0,0x40000000
	align	4
_2789:
	dd	0x40000000
	align	4
_540:
	dd	3
	dd	0
	dd	0
	align	4
_530:
	dd	_336
	dd	83
	dd	5
	align	4
_535:
	dd	_336
	dd	84
	dd	5
	align	4
_542:
	dd	_336
	dd	87
	dd	3
	align	4
_2790:
	dd	0x40000000
	align	4
_560:
	dd	3
	dd	0
	dd	0
	align	4
_550:
	dd	_336
	dd	88
	dd	4
	align	4
_555:
	dd	_336
	dd	89
	dd	4
	align	4
_563:
	dd	_336
	dd	94
	dd	1
	align	4
_642:
	dd	3
	dd	0
	dd	2
	dd	_482
	dd	_240
	dd	-44
	dd	0
	align	4
_566:
	dd	_336
	dd	95
	dd	2
	align	4
_571:
	dd	_336
	dd	96
	dd	2
	align	4
_574:
	dd	_336
	dd	97
	dd	2
	align	4
_578:
	dd	_336
	dd	98
	dd	2
	align	4
_2791:
	dd	0x40400000
	align	4
_582:
	dd	_336
	dd	99
	dd	2
	align	4
_641:
	dd	3
	dd	0
	dd	2
	dd	_480
	dd	_235
	dd	-48
	dd	0
	align	4
_592:
	dd	_336
	dd	100
	dd	3
	align	4
_2792:
	dd	0x40000000
	align	4
_621:
	dd	3
	dd	0
	dd	0
	align	4
_600:
	dd	_336
	dd	101
	dd	4
	align	8
_2793:
	dd	0x0,0x40000000
	align	8
_2794:
	dd	0x0,0x40000000
	align	4
_2795:
	dd	0x40000000
	align	4
_620:
	dd	3
	dd	0
	dd	0
	align	4
_610:
	dd	_336
	dd	102
	dd	5
	align	4
_615:
	dd	_336
	dd	103
	dd	5
	align	4
_622:
	dd	_336
	dd	106
	dd	3
	align	4
_2796:
	dd	0x40400000
	align	4
_640:
	dd	3
	dd	0
	dd	0
	align	4
_630:
	dd	_336
	dd	107
	dd	4
	align	4
_635:
	dd	_336
	dd	108
	dd	4
	align	4
_643:
	dd	_336
	dd	113
	dd	1
	align	4
_722:
	dd	3
	dd	0
	dd	2
	dd	_482
	dd	_240
	dd	-52
	dd	0
	align	4
_646:
	dd	_336
	dd	114
	dd	2
	align	4
_651:
	dd	_336
	dd	115
	dd	2
	align	4
_654:
	dd	_336
	dd	116
	dd	2
	align	4
_658:
	dd	_336
	dd	117
	dd	2
	align	4
_2797:
	dd	0x40800000
	align	4
_662:
	dd	_336
	dd	118
	dd	2
	align	4
_721:
	dd	3
	dd	0
	dd	2
	dd	_480
	dd	_235
	dd	-56
	dd	0
	align	4
_672:
	dd	_336
	dd	119
	dd	3
	align	4
_2798:
	dd	0x40400000
	align	4
_701:
	dd	3
	dd	0
	dd	0
	align	4
_680:
	dd	_336
	dd	120
	dd	4
	align	8
_2799:
	dd	0x0,0x40000000
	align	8
_2800:
	dd	0x0,0x40000000
	align	4
_2801:
	dd	0x40000000
	align	4
_700:
	dd	3
	dd	0
	dd	0
	align	4
_690:
	dd	_336
	dd	121
	dd	5
	align	4
_695:
	dd	_336
	dd	122
	dd	5
	align	4
_702:
	dd	_336
	dd	125
	dd	3
	align	4
_2802:
	dd	0x40800000
	align	4
_720:
	dd	3
	dd	0
	dd	0
	align	4
_710:
	dd	_336
	dd	126
	dd	4
	align	4
_715:
	dd	_336
	dd	127
	dd	4
	align	4
_723:
	dd	_336
	dd	132
	dd	1
	align	4
_802:
	dd	3
	dd	0
	dd	2
	dd	_482
	dd	_240
	dd	-60
	dd	0
	align	4
_726:
	dd	_336
	dd	133
	dd	2
	align	4
_731:
	dd	_336
	dd	134
	dd	2
	align	4
_734:
	dd	_336
	dd	135
	dd	2
	align	4
_738:
	dd	_336
	dd	136
	dd	2
	align	4
_2803:
	dd	0x40a00000
	align	4
_742:
	dd	_336
	dd	137
	dd	2
	align	4
_801:
	dd	3
	dd	0
	dd	2
	dd	_480
	dd	_235
	dd	-64
	dd	0
	align	4
_752:
	dd	_336
	dd	138
	dd	3
	align	4
_2804:
	dd	0x40800000
	align	4
_781:
	dd	3
	dd	0
	dd	0
	align	4
_760:
	dd	_336
	dd	139
	dd	4
	align	8
_2805:
	dd	0x0,0x40000000
	align	8
_2806:
	dd	0x0,0x40000000
	align	4
_2807:
	dd	0x40000000
	align	4
_780:
	dd	3
	dd	0
	dd	0
	align	4
_770:
	dd	_336
	dd	140
	dd	5
	align	4
_775:
	dd	_336
	dd	141
	dd	5
	align	4
_782:
	dd	_336
	dd	144
	dd	3
	align	4
_2808:
	dd	0x40a00000
	align	4
_800:
	dd	3
	dd	0
	dd	0
	align	4
_790:
	dd	_336
	dd	145
	dd	4
	align	4
_795:
	dd	_336
	dd	146
	dd	4
	align	4
_803:
	dd	_336
	dd	151
	dd	1
	align	4
_808:
	dd	_336
	dd	152
	dd	1
	align	4
_811:
	dd	_336
	dd	153
	dd	1
	align	4
_815:
	dd	_336
	dd	154
	dd	1
	align	4
_2809:
	dd	0x40c00000
	align	4
_819:
	dd	_336
	dd	155
	dd	1
	align	4
_824:
	dd	_336
	dd	156
	dd	1
	align	4
_860:
	dd	3
	dd	0
	dd	2
	dd	_480
	dd	_235
	dd	-68
	dd	0
	align	4
_834:
	dd	_336
	dd	157
	dd	2
	align	4
_2810:
	dd	0x40a00000
	align	4
_859:
	dd	3
	dd	0
	dd	0
	align	4
_838:
	dd	_336
	dd	158
	dd	3
	align	8
_2811:
	dd	0x0,0x40000000
	align	8
_2812:
	dd	0x0,0x40000000
	align	4
_2813:
	dd	0x40000000
	align	4
_858:
	dd	3
	dd	0
	dd	0
	align	4
_848:
	dd	_336
	dd	159
	dd	4
	align	4
_853:
	dd	_336
	dd	160
	dd	4
	align	4
_861:
	dd	_336
	dd	165
	dd	1
	align	4
_864:
	dd	_336
	dd	166
	dd	1
	align	4
_865:
	dd	_336
	dd	168
	dd	1
_866:
	db	"i",0
	align	4
_872:
	dd	_336
	dd	170
	dd	1
_874:
	db	"D:/Proggen/projecte/team/PanzerS/inc/may.bmx",0
	align	4
_873:
	dd	_874
	dd	447
	dd	1
	align	8
_2814:
	dd	0x0,0x40000000
_877:
	db	"D:/Proggen/projecte/team/PanzerS/inc/botsmart.bmx",0
	align	4
_876:
	dd	_877
	dd	3
	dd	1
_878:
	db	":TbotT",0
	align	4
_883:
	dd	_336
	dd	174
	dd	1
	align	4
_886:
	dd	_336
	dd	176
	dd	1
_1183:
	db	"startmx",0
_1184:
	db	"endmx",0
	align	4
_1182:
	dd	3
	dd	0
	dd	2
	dd	_1183
	dd	_240
	dd	-72
	dd	2
	dd	_1184
	dd	_240
	dd	-76
	dd	0
	align	4
_887:
	dd	_336
	dd	177
	dd	2
	align	4
_890:
	dd	_336
	dd	178
	dd	2
	align	4
_891:
	dd	_336
	dd	279
	dd	2
	align	4
_892:
	dd	_336
	dd	283
	dd	2
	align	4
_894:
	dd	_336
	dd	285
	dd	2
_1130:
	db	"cTbotT",0
_960:
	db	":TbotT",0
	align	4
_1129:
	dd	3
	dd	0
	dd	2
	dd	_1130
	dd	_960
	dd	-80
	dd	0
	align	4
_904:
	dd	_336
	dd	287
	dd	3
_959:
	db	"eTbotT",0
	align	4
_958:
	dd	3
	dd	0
	dd	2
	dd	_959
	dd	_960
	dd	-84
	dd	0
	align	4
_914:
	dd	_336
	dd	288
	dd	4
	align	4
_957:
	dd	3
	dd	0
	dd	0
	align	4
_916:
	dd	_336
	dd	289
	dd	5
	align	8
_2815:
	dd	0x0,0x40000000
	align	8
_2816:
	dd	0x0,0x40000000
	align	8
_2817:
	dd	0x0,0x40490000
	align	4
_940:
	dd	3
	dd	0
	dd	0
	align	4
_926:
	dd	_336
	dd	290
	dd	6
	align	4
_932:
	dd	3
	dd	0
	dd	0
	align	4
_939:
	dd	3
	dd	0
	dd	0
	align	4
_934:
	dd	_336
	dd	293
	dd	7
	align	4
_956:
	dd	3
	dd	0
	dd	0
	align	4
_942:
	dd	_336
	dd	296
	dd	6
	align	4
_953:
	dd	3
	dd	0
	dd	0
	align	4
_948:
	dd	_336
	dd	297
	dd	7
	align	4
_955:
	dd	3
	dd	0
	dd	0
	align	4
_961:
	dd	_336
	dd	305
	dd	3
_1029:
	db	"sadg2",0
	align	4
_1028:
	dd	3
	dd	0
	dd	2
	dd	_1029
	dd	_231
	dd	-88
	dd	0
	align	4
_971:
	dd	_336
	dd	306
	dd	4
	align	8
_2818:
	dd	0x0,0x40668000
	align	4
_985:
	dd	_336
	dd	307
	dd	4
	align	4
_2819:
	dd	0x42b40000
	align	8
_2820:
	dd	0x40000000,0x3fd33333
	align	4
_991:
	dd	_336
	dd	308
	dd	4
	align	4
_2821:
	dd	0x42b40000
	align	8
_2822:
	dd	0x40000000,0x3fd33333
	align	4
_997:
	dd	_336
	dd	309
	dd	4
	align	4
_1001:
	dd	_336
	dd	310
	dd	4
	align	8
_2823:
	dd	0x0,0x40000000
	align	8
_2824:
	dd	0x0,0x40000000
	align	8
_2825:
	dd	0x0,0x403e0000
	align	4
_1027:
	dd	3
	dd	0
	dd	0
	align	4
_1015:
	dd	_336
	dd	311
	dd	5
_1070:
	db	"nrz3",0
	align	4
_1069:
	dd	3
	dd	0
	dd	2
	dd	_1070
	dd	_240
	dd	-92
	dd	0
	align	4
_1031:
	dd	_336
	dd	314
	dd	4
	align	4
_1041:
	dd	_336
	dd	315
	dd	4
	align	8
_2826:
	dd	0x0,0x40590000
	align	4
_1045:
	dd	_336
	dd	316
	dd	4
_1068:
	db	"eTwaypoint",0
	align	4
_1067:
	dd	3
	dd	0
	dd	2
	dd	_1068
	dd	_235
	dd	-96
	dd	0
	align	4
_1055:
	dd	_336
	dd	317
	dd	5
	align	4
_1065:
	dd	3
	dd	0
	dd	0
	align	4
_1057:
	dd	_336
	dd	317
	dd	22
	align	4
_1066:
	dd	_336
	dd	318
	dd	5
	align	4
_1071:
	dd	_336
	dd	322
	dd	3
_1115:
	db	"ckTbotT",0
_1116:
	db	"speed1",0
_1117:
	db	"speed2",0
	align	4
_1114:
	dd	3
	dd	0
	dd	2
	dd	_1115
	dd	_960
	dd	-100
	dd	2
	dd	_1116
	dd	_231
	dd	-104
	dd	2
	dd	_1117
	dd	_231
	dd	-108
	dd	0
	align	4
_1083:
	dd	_336
	dd	323
	dd	4
	align	4
_1092:
	dd	3
	dd	0
	dd	0
	align	4
_1087:
	dd	_336
	dd	323
	dd	31
	align	4
_1093:
	dd	_336
	dd	324
	dd	4
	align	4
_2827:
	dd	0x40400000
	align	4
_2828:
	dd	0x40400000
	align	4
_1096:
	dd	_336
	dd	326
	dd	4
	align	4
_1105:
	dd	_336
	dd	327
	dd	4
	align	4
_1106:
	dd	_336
	dd	328
	dd	4
	align	4
_1107:
	dd	_336
	dd	329
	dd	4
	align	4
_1108:
	dd	_336
	dd	330
	dd	4
	align	4
_1109:
	dd	_336
	dd	331
	dd	4
	align	4
_1118:
	dd	_336
	dd	333
	dd	3
	align	4
_1119:
	dd	_336
	dd	334
	dd	3
	align	4
_1120:
	dd	_336
	dd	335
	dd	3
	align	4
_1121:
	dd	_336
	dd	336
	dd	3
	align	4
_1124:
	dd	_336
	dd	337
	dd	3
	align	4
_1131:
	dd	_336
	dd	340
	dd	2
	align	4
_1133:
	dd	_336
	dd	341
	dd	2
	align	4
_1134:
	dd	_336
	dd	342
	dd	2
	align	4
_1135:
	dd	_336
	dd	343
	dd	2
	align	4
_1136:
	dd	_336
	dd	344
	dd	2
	align	4
_1137:
	dd	_336
	dd	345
	dd	2
	align	4
_1138:
	dd	_336
	dd	348
	dd	2
	align	4
_1151:
	dd	3
	dd	0
	dd	0
	align	4
_1140:
	dd	_336
	dd	349
	dd	3
_1150:
	db	"nTbotT",0
	align	4
_1149:
	dd	3
	dd	0
	dd	2
	dd	_1150
	dd	_960
	dd	-112
	dd	0
	align	4
_1144:
	dd	_336
	dd	350
	dd	4
	align	4
_1146:
	dd	_336
	dd	351
	dd	4
	align	4
_1175:
	dd	3
	dd	0
	dd	0
	align	4
_1153:
	dd	_336
	dd	353
	dd	2
	align	4
_1174:
	dd	3
	dd	0
	dd	0
	align	4
_1155:
	dd	_336
	dd	354
	dd	3
	align	4
_1173:
	dd	3
	dd	0
	dd	2
	dd	_1130
	dd	_960
	dd	-116
	dd	0
	align	4
_1165:
	dd	_336
	dd	355
	dd	4
	align	4
_1169:
	dd	_336
	dd	356
	dd	4
	align	4
_1172:
	dd	_336
	dd	357
	dd	4
	align	4
_1176:
	dd	_336
	dd	361
	dd	2
	align	4
_1177:
	dd	_336
	dd	362
	dd	2
	align	4
_226:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	109,115
	align	4
_1178:
	dd	_336
	dd	363
	dd	2
	align	4
_227:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	32,98,111,116,115
	align	4
_1181:
	dd	_336
	dd	364
	dd	2
_1226:
	db	"Self",0
	align	4
_1225:
	dd	1
	dd	_241
	dd	2
	dd	_1226
	dd	_960
	dd	-4
	dd	0
	align	8
_3099:
	dd	0x0,0x40900000
	align	8
_3100:
	dd	0x0,0x40880000
	align	4
_1224:
	dd	3
	dd	0
	dd	0
	align	4
_1239:
	dd	1
	dd	_241
	dd	2
	dd	_1226
	dd	_235
	dd	-4
	dd	0
_1235:
	db	"f",0
	align	4
_1238:
	dd	3
	dd	0
	dd	0
_1273:
	db	"DrawPicture",0
_1274:
	db	"bild",0
_1275:
	db	":brl.max2d.Timage",0
_1276:
	db	"width",0
_1277:
	db	"height",0
_1278:
	db	"nowscale_X",0
_1279:
	db	"nowscale_Y",0
_1280:
	db	"nowhandle_X",0
_1281:
	db	"nowhandle_Y",0
_1282:
	db	"factorx",0
_1283:
	db	"factory",0
_1284:
	db	"entferung",0
_1285:
	db	"winkel",0
	align	4
_1272:
	dd	1
	dd	_1273
	dd	2
	dd	_1274
	dd	_1275
	dd	-4
	dd	2
	dd	_230
	dd	_231
	dd	-8
	dd	2
	dd	_232
	dd	_231
	dd	-12
	dd	2
	dd	_1276
	dd	_231
	dd	-16
	dd	2
	dd	_1277
	dd	_231
	dd	-20
	dd	2
	dd	_1278
	dd	_231
	dd	-24
	dd	2
	dd	_1279
	dd	_231
	dd	-28
	dd	2
	dd	_1280
	dd	_231
	dd	-32
	dd	2
	dd	_1281
	dd	_231
	dd	-36
	dd	2
	dd	_1282
	dd	_231
	dd	-40
	dd	2
	dd	_1283
	dd	_231
	dd	-44
	dd	2
	dd	_1284
	dd	_231
	dd	-48
	dd	2
	dd	_1285
	dd	_231
	dd	-52
	dd	0
	align	4
_1247:
	dd	_874
	dd	2
	dd	2
	align	4
_1249:
	dd	_874
	dd	3
	dd	2
	align	4
_1251:
	dd	_874
	dd	4
	dd	2
	align	4
_1252:
	dd	_874
	dd	6
	dd	2
	align	4
_1254:
	dd	_874
	dd	7
	dd	2
	align	4
_1256:
	dd	_874
	dd	8
	dd	2
	align	4
_1257:
	dd	_874
	dd	10
	dd	2
	align	4
_1261:
	dd	_874
	dd	11
	dd	2
	align	4
_1265:
	dd	_874
	dd	13
	dd	2
	align	4
_1266:
	dd	_874
	dd	16
	dd	2
	align	8
_3109:
	dd	0x0,0x40000000
	align	8
_3110:
	dd	0x0,0x40000000
	align	4
_1268:
	dd	_874
	dd	17
	dd	2
	align	8
_3111:
	dd	0x0,0x40668000
	align	4
_1270:
	dd	_874
	dd	19
	dd	2
	align	4
_1271:
	dd	_874
	dd	21
	dd	2
_1307:
	db	"PushCollision",0
_1308:
	db	"x1",0
_1309:
	db	"y1",0
_1310:
	db	"size1",0
_1311:
	db	"x2",0
_1312:
	db	"y2",0
_1313:
	db	"size2",0
_1314:
	db	"festergegenstend2",0
_1315:
	db	"b",0
	align	4
_1306:
	dd	1
	dd	_1307
	dd	5
	dd	_1308
	dd	_231
	dd	-8
	dd	5
	dd	_1309
	dd	_231
	dd	-12
	dd	2
	dd	_1310
	dd	_231
	dd	-16
	dd	5
	dd	_1311
	dd	_231
	dd	-20
	dd	5
	dd	_1312
	dd	_231
	dd	-24
	dd	2
	dd	_1313
	dd	_231
	dd	-28
	dd	2
	dd	_1314
	dd	_1315
	dd	-4
	dd	2
	dd	_1284
	dd	_231
	dd	-32
	dd	0
	align	4
_1286:
	dd	_874
	dd	25
	dd	2
	align	8
_3116:
	dd	0x0,0x40000000
	align	8
_3117:
	dd	0x0,0x40000000
	align	4
_1288:
	dd	_874
	dd	26
	dd	2
	align	4
_3118:
	dd	0x40000000
	align	4
_1289:
	dd	_874
	dd	27
	dd	2
	align	4
_3119:
	dd	0x40000000
	align	4
_1290:
	dd	_874
	dd	28
	dd	2
	align	4
_1305:
	dd	3
	dd	0
	dd	2
	dd	_1285
	dd	_231
	dd	-36
	dd	0
	align	4
_1292:
	dd	_874
	dd	29
	dd	3
	align	4
_3120:
	dd	0x42b40000
	align	4
_1294:
	dd	_874
	dd	31
	dd	3
	align	4
_1298:
	dd	3
	dd	0
	dd	0
	align	4
_1296:
	dd	_874
	dd	32
	dd	4
	align	4
_1297:
	dd	_874
	dd	33
	dd	4
	align	4
_1304:
	dd	3
	dd	0
	dd	0
	align	4
_1300:
	dd	_874
	dd	35
	dd	4
	align	4
_3121:
	dd	0x40000000
	align	4
_1301:
	dd	_874
	dd	36
	dd	4
	align	4
_3122:
	dd	0x40000000
	align	4
_1302:
	dd	_874
	dd	37
	dd	4
	align	4
_3123:
	dd	0x43340000
	align	4
_3124:
	dd	0x40000000
	align	4
_1303:
	dd	_874
	dd	38
	dd	4
	align	4
_3125:
	dd	0x43340000
	align	4
_3126:
	dd	0x40000000
_1772:
	db	"PushTank",0
_1773:
	db	"r1",0
_1774:
	db	"s1",0
_1775:
	db	"r2",0
_1776:
	db	"s2",0
	align	4
_1771:
	dd	1
	dd	_1772
	dd	5
	dd	_1308
	dd	_231
	dd	-4
	dd	5
	dd	_1309
	dd	_231
	dd	-8
	dd	5
	dd	_1773
	dd	_231
	dd	-12
	dd	5
	dd	_1774
	dd	_231
	dd	-16
	dd	5
	dd	_1311
	dd	_231
	dd	-20
	dd	5
	dd	_1312
	dd	_231
	dd	-24
	dd	5
	dd	_1775
	dd	_231
	dd	-28
	dd	5
	dd	_1776
	dd	_231
	dd	-32
	dd	2
	dd	_1284
	dd	_231
	dd	-36
	dd	0
	align	4
_1316:
	dd	_874
	dd	44
	dd	2
	align	8
_3131:
	dd	0x0,0x40000000
	align	8
_3132:
	dd	0x0,0x40000000
	align	4
_1318:
	dd	_874
	dd	45
	dd	2
	align	4
_3133:
	dd	0x42a00000
_1756:
	db	"scalexxx",0
_1757:
	db	"ballsize",0
_1758:
	db	"tmp1",0
_1759:
	db	"[,]f",0
_1760:
	db	"da1",0
_1761:
	db	"tmp2",0
_1762:
	db	"da2",0
_1763:
	db	"tmpr1",0
_1764:
	db	"tmpr2",0
_1765:
	db	"totalvx1",0
_1766:
	db	"totalvy1",0
_1767:
	db	"totalvx2",0
_1768:
	db	"totalvy2",0
_1769:
	db	"vwinkel1",0
_1770:
	db	"vwinkel2",0
	align	4
_1755:
	dd	3
	dd	0
	dd	2
	dd	_1756
	dd	_231
	dd	-40
	dd	2
	dd	_1757
	dd	_231
	dd	-44
	dd	2
	dd	_1758
	dd	_1759
	dd	-48
	dd	2
	dd	_1760
	dd	_240
	dd	-52
	dd	2
	dd	_1761
	dd	_1759
	dd	-56
	dd	2
	dd	_1762
	dd	_240
	dd	-60
	dd	2
	dd	_1763
	dd	_1759
	dd	-64
	dd	2
	dd	_1764
	dd	_1759
	dd	-68
	dd	2
	dd	_1765
	dd	_231
	dd	-72
	dd	2
	dd	_1766
	dd	_231
	dd	-76
	dd	2
	dd	_1767
	dd	_231
	dd	-80
	dd	2
	dd	_1768
	dd	_231
	dd	-84
	dd	2
	dd	_1769
	dd	_231
	dd	-88
	dd	2
	dd	_1770
	dd	_231
	dd	-92
	dd	0
	align	4
_1320:
	dd	_874
	dd	47
	dd	3
	align	4
_3134:
	dd	0x3f19999a
	align	4
_1322:
	dd	_874
	dd	48
	dd	3
	align	4
_3135:
	dd	0x42200000
	align	4
_1324:
	dd	_874
	dd	50
	dd	3
_1325:
	db	"f",0
	align	4
_1328:
	dd	_874
	dd	51
	dd	3
_1329:
	db	"f",0
	align	4
_1332:
	dd	_874
	dd	53
	dd	3
_1333:
	db	"f",0
	align	4
_1335:
	dd	_874
	dd	54
	dd	3
_1336:
	db	"f",0
	align	4
_1338:
	dd	_874
	dd	56
	dd	3
_1369:
	db	"ax1",0
	align	4
_1368:
	dd	3
	dd	0
	dd	2
	dd	_1369
	dd	_240
	dd	-96
	dd	0
	align	4
_1341:
	dd	_874
	dd	57
	dd	4
_1366:
	db	"ay1",0
_1367:
	db	"winkel4",0
	align	4
_1365:
	dd	3
	dd	0
	dd	2
	dd	_1366
	dd	_240
	dd	-100
	dd	2
	dd	_1367
	dd	_231
	dd	-104
	dd	0
	align	4
_1344:
	dd	_874
	dd	58
	dd	5
	align	4
_1349:
	dd	3
	dd	0
	dd	0
	align	4
_1348:
	dd	_874
	dd	58
	dd	33
	align	4
_1350:
	dd	_874
	dd	59
	dd	5
	align	4
_1351:
	dd	_874
	dd	60
	dd	5
	align	4
_3136:
	dd	0x42b40000
	align	4
_1353:
	dd	_874
	dd	61
	dd	5
	align	8
_3137:
	dd	0x0,0x40000000
	align	8
_3138:
	dd	0x0,0x40000000
	align	4
_1359:
	dd	_874
	dd	62
	dd	5
	align	8
_3139:
	dd	0x0,0x40000000
	align	8
_3140:
	dd	0x0,0x40000000
	align	4
_1370:
	dd	_874
	dd	65
	dd	3
	align	4
_1371:
	dd	_874
	dd	67
	dd	3
_1402:
	db	"ax2",0
	align	4
_1401:
	dd	3
	dd	0
	dd	2
	dd	_1402
	dd	_240
	dd	-108
	dd	0
	align	4
_1374:
	dd	_874
	dd	68
	dd	4
_1399:
	db	"ay2",0
_1400:
	db	"winkel5",0
	align	4
_1398:
	dd	3
	dd	0
	dd	2
	dd	_1399
	dd	_240
	dd	-112
	dd	2
	dd	_1400
	dd	_231
	dd	-116
	dd	0
	align	4
_1377:
	dd	_874
	dd	69
	dd	5
	align	4
_1382:
	dd	3
	dd	0
	dd	0
	align	4
_1381:
	dd	_874
	dd	69
	dd	33
	align	4
_1383:
	dd	_874
	dd	70
	dd	5
	align	4
_1384:
	dd	_874
	dd	71
	dd	5
	align	4
_3141:
	dd	0x42b40000
	align	4
_1386:
	dd	_874
	dd	72
	dd	5
	align	8
_3142:
	dd	0x0,0x40000000
	align	8
_3143:
	dd	0x0,0x40000000
	align	4
_1392:
	dd	_874
	dd	73
	dd	5
	align	8
_3144:
	dd	0x0,0x40000000
	align	8
_3145:
	dd	0x0,0x40000000
	align	4
_1403:
	dd	_874
	dd	76
	dd	3
	align	4
_1404:
	dd	_874
	dd	78
	dd	3
	align	4
_1451:
	dd	3
	dd	0
	dd	2
	dd	_1369
	dd	_240
	dd	-120
	dd	0
	align	4
_1407:
	dd	_874
	dd	79
	dd	4
	align	4
_1450:
	dd	3
	dd	0
	dd	2
	dd	_1366
	dd	_240
	dd	-124
	dd	0
	align	4
_1410:
	dd	_874
	dd	80
	dd	5
	align	4
_1415:
	dd	3
	dd	0
	dd	0
	align	4
_1414:
	dd	_874
	dd	80
	dd	33
	align	4
_1416:
	dd	_874
	dd	81
	dd	5
	align	4
_1417:
	dd	_874
	dd	82
	dd	5
	align	4
_1448:
	dd	3
	dd	0
	dd	2
	dd	_1402
	dd	_240
	dd	-128
	dd	0
	align	4
_1420:
	dd	_874
	dd	83
	dd	6
	align	4
_1447:
	dd	3
	dd	0
	dd	2
	dd	_1399
	dd	_240
	dd	-132
	dd	0
	align	4
_1423:
	dd	_874
	dd	84
	dd	7
	align	4
_1428:
	dd	3
	dd	0
	dd	0
	align	4
_1427:
	dd	_874
	dd	84
	dd	35
	align	4
_1429:
	dd	_874
	dd	85
	dd	7
	align	4
_1430:
	dd	_874
	dd	86
	dd	7
	align	4
_1449:
	dd	_874
	dd	89
	dd	5
	align	4
_1452:
	dd	_874
	dd	92
	dd	3
	align	4
_1453:
	dd	_874
	dd	94
	dd	3
	align	4
_1547:
	dd	3
	dd	0
	dd	2
	dd	_1369
	dd	_240
	dd	-136
	dd	0
	align	4
_1456:
	dd	_874
	dd	95
	dd	4
	align	4
_1546:
	dd	3
	dd	0
	dd	2
	dd	_1366
	dd	_240
	dd	-140
	dd	0
	align	4
_1459:
	dd	_874
	dd	96
	dd	5
	align	4
_1464:
	dd	3
	dd	0
	dd	0
	align	4
_1463:
	dd	_874
	dd	96
	dd	33
	align	4
_1465:
	dd	_874
	dd	97
	dd	5
	align	4
_1466:
	dd	_874
	dd	98
	dd	5
	align	4
_1544:
	dd	3
	dd	0
	dd	2
	dd	_1402
	dd	_240
	dd	-144
	dd	0
	align	4
_1469:
	dd	_874
	dd	99
	dd	6
_1542:
	db	"entferung5",0
_1543:
	db	"entferung6",0
	align	4
_1541:
	dd	3
	dd	0
	dd	2
	dd	_1399
	dd	_240
	dd	-148
	dd	2
	dd	_1542
	dd	_231
	dd	-152
	dd	2
	dd	_1543
	dd	_231
	dd	-156
	dd	0
	align	4
_1472:
	dd	_874
	dd	100
	dd	7
	align	4
_1477:
	dd	3
	dd	0
	dd	0
	align	4
_1476:
	dd	_874
	dd	100
	dd	35
	align	4
_1478:
	dd	_874
	dd	101
	dd	7
	align	4
_1479:
	dd	_874
	dd	102
	dd	7
	align	8
_3146:
	dd	0x0,0x40000000
	align	8
_3147:
	dd	0x0,0x40000000
	align	4
_1481:
	dd	_874
	dd	103
	dd	7
	align	8
_3148:
	dd	0x0,0x40000000
	align	8
_3149:
	dd	0x0,0x40000000
	align	4
_1483:
	dd	_874
	dd	105
	dd	7
	align	4
_1489:
	dd	_874
	dd	105
	dd	28
	align	4
_1495:
	dd	_874
	dd	106
	dd	7
	align	4
_1501:
	dd	_874
	dd	106
	dd	28
	align	4
_1507:
	dd	_874
	dd	108
	dd	7
	align	4
_1524:
	dd	_874
	dd	109
	dd	7
	align	4
_1545:
	dd	_874
	dd	112
	dd	5
	align	4
_1548:
	dd	_874
	dd	115
	dd	3
	align	4
_1549:
	dd	_874
	dd	117
	dd	3
	align	4
_1552:
	dd	_874
	dd	118
	dd	3
	align	4
_1576:
	dd	3
	dd	0
	dd	2
	dd	_1369
	dd	_240
	dd	-160
	dd	0
	align	4
_1555:
	dd	_874
	dd	119
	dd	4
	align	4
_1575:
	dd	3
	dd	0
	dd	2
	dd	_1366
	dd	_240
	dd	-164
	dd	0
	align	4
_1558:
	dd	_874
	dd	120
	dd	5
	align	4
_1563:
	dd	3
	dd	0
	dd	0
	align	4
_1562:
	dd	_874
	dd	120
	dd	33
	align	4
_1564:
	dd	_874
	dd	121
	dd	5
	align	4
_1565:
	dd	_874
	dd	122
	dd	5
	align	4
_1570:
	dd	_874
	dd	123
	dd	5
	align	4
_1577:
	dd	_874
	dd	126
	dd	3
	align	4
_1578:
	dd	_874
	dd	127
	dd	3
	align	4
_1579:
	dd	_874
	dd	128
	dd	3
	align	4
_1580:
	dd	_874
	dd	129
	dd	3
	align	4
_1581:
	dd	_874
	dd	130
	dd	3
	align	4
_1582:
	dd	_874
	dd	133
	dd	3
	align	4
_1585:
	dd	_874
	dd	134
	dd	3
	align	4
_1609:
	dd	3
	dd	0
	dd	2
	dd	_1402
	dd	_240
	dd	-168
	dd	0
	align	4
_1588:
	dd	_874
	dd	135
	dd	4
	align	4
_1608:
	dd	3
	dd	0
	dd	2
	dd	_1399
	dd	_240
	dd	-172
	dd	0
	align	4
_1591:
	dd	_874
	dd	136
	dd	5
	align	4
_1596:
	dd	3
	dd	0
	dd	0
	align	4
_1595:
	dd	_874
	dd	136
	dd	33
	align	4
_1597:
	dd	_874
	dd	137
	dd	5
	align	4
_1598:
	dd	_874
	dd	138
	dd	5
	align	4
_1603:
	dd	_874
	dd	139
	dd	5
	align	4
_1610:
	dd	_874
	dd	142
	dd	3
	align	4
_1611:
	dd	_874
	dd	143
	dd	3
	align	4
_1612:
	dd	_874
	dd	144
	dd	3
	align	4
_1613:
	dd	_874
	dd	145
	dd	3
	align	4
_1614:
	dd	_874
	dd	146
	dd	3
	align	4
_1615:
	dd	_874
	dd	182
	dd	3
	align	4
_1617:
	dd	_874
	dd	183
	dd	3
	align	4
_1684:
	dd	3
	dd	0
	dd	2
	dd	_1369
	dd	_240
	dd	-176
	dd	0
	align	4
_1620:
	dd	_874
	dd	184
	dd	4
_1680:
	db	"winkel2",0
_1681:
	db	"winkel3",0
_1682:
	db	"totalwinkel",0
_1683:
	db	"entferung2",0
	align	4
_1679:
	dd	3
	dd	0
	dd	2
	dd	_1366
	dd	_240
	dd	-180
	dd	2
	dd	_1680
	dd	_231
	dd	-184
	dd	2
	dd	_1681
	dd	_231
	dd	-188
	dd	2
	dd	_1682
	dd	_231
	dd	-192
	dd	2
	dd	_1683
	dd	_231
	dd	-196
	dd	0
	align	4
_1623:
	dd	_874
	dd	185
	dd	5
	align	4
_1628:
	dd	3
	dd	0
	dd	0
	align	4
_1627:
	dd	_874
	dd	185
	dd	33
	align	4
_1629:
	dd	_874
	dd	186
	dd	5
	align	4
_1630:
	dd	_874
	dd	187
	dd	5
	align	4
_3150:
	dd	0x42b40000
	align	4
_1640:
	dd	_874
	dd	188
	dd	5
	align	4
_3151:
	dd	0x42b40000
	align	4
_1642:
	dd	_874
	dd	189
	dd	5
	align	4
_3152:
	dd	0x43340000
	align	4
_1644:
	dd	_874
	dd	190
	dd	5
	align	4
_1646:
	dd	3
	dd	0
	dd	0
	align	4
_1645:
	dd	_874
	dd	191
	dd	6
	align	4
_3153:
	dd	0x43b40000
	align	4
_3154:
	dd	0xc3340000
	align	4
_1647:
	dd	_874
	dd	193
	dd	5
	align	4
_1649:
	dd	3
	dd	0
	dd	0
	align	4
_1648:
	dd	_874
	dd	194
	dd	6
	align	4
_3155:
	dd	0x43b40000
	align	4
_3156:
	dd	0x43340000
	align	4
_1650:
	dd	_874
	dd	197
	dd	5
	align	4
_1667:
	dd	3
	dd	0
	dd	0
	align	4
_1666:
	dd	_874
	dd	197
	dd	114
	align	4
_1668:
	dd	_874
	dd	198
	dd	5
	align	8
_3157:
	dd	0x0,0x40000000
	align	8
_3158:
	dd	0x0,0x40000000
	align	4
_1670:
	dd	_874
	dd	199
	dd	5
	align	8
_3159:
	dd	0x0,0x40000000
	align	8
_3160:
	dd	0x0,0x40000000
	align	4
_1685:
	dd	_874
	dd	203
	dd	3
	align	4
_1686:
	dd	_874
	dd	206
	dd	3
	align	4
_1687:
	dd	_874
	dd	209
	dd	3
	align	4
_1689:
	dd	_874
	dd	210
	dd	3
	align	4
_1752:
	dd	3
	dd	0
	dd	2
	dd	_1402
	dd	_240
	dd	-200
	dd	0
	align	4
_1692:
	dd	_874
	dd	211
	dd	4
	align	4
_1751:
	dd	3
	dd	0
	dd	2
	dd	_1399
	dd	_240
	dd	-204
	dd	2
	dd	_1680
	dd	_231
	dd	-208
	dd	2
	dd	_1681
	dd	_231
	dd	-212
	dd	2
	dd	_1682
	dd	_231
	dd	-216
	dd	2
	dd	_1683
	dd	_231
	dd	-220
	dd	0
	align	4
_1695:
	dd	_874
	dd	212
	dd	5
	align	4
_1700:
	dd	3
	dd	0
	dd	0
	align	4
_1699:
	dd	_874
	dd	212
	dd	33
	align	4
_1701:
	dd	_874
	dd	213
	dd	5
	align	4
_1702:
	dd	_874
	dd	214
	dd	5
	align	4
_3161:
	dd	0x42b40000
	align	4
_1712:
	dd	_874
	dd	215
	dd	5
	align	4
_3162:
	dd	0x42b40000
	align	4
_1714:
	dd	_874
	dd	216
	dd	5
	align	4
_3163:
	dd	0x43340000
	align	4
_1716:
	dd	_874
	dd	217
	dd	5
	align	4
_1718:
	dd	3
	dd	0
	dd	0
	align	4
_1717:
	dd	_874
	dd	218
	dd	6
	align	4
_3164:
	dd	0x43b40000
	align	4
_3165:
	dd	0xc3340000
	align	4
_1719:
	dd	_874
	dd	220
	dd	5
	align	4
_1721:
	dd	3
	dd	0
	dd	0
	align	4
_1720:
	dd	_874
	dd	221
	dd	6
	align	4
_3166:
	dd	0x43b40000
	align	4
_3167:
	dd	0x43340000
	align	4
_1722:
	dd	_874
	dd	224
	dd	5
	align	4
_1739:
	dd	3
	dd	0
	dd	0
	align	4
_1738:
	dd	_874
	dd	224
	dd	114
	align	4
_1740:
	dd	_874
	dd	225
	dd	5
	align	8
_3168:
	dd	0x0,0x40000000
	align	8
_3169:
	dd	0x0,0x40000000
	align	4
_1742:
	dd	_874
	dd	226
	dd	5
	align	8
_3170:
	dd	0x0,0x40000000
	align	8
_3171:
	dd	0x0,0x40000000
	align	4
_1753:
	dd	_874
	dd	230
	dd	3
	align	4
_1754:
	dd	_874
	dd	233
	dd	3
_1804:
	db	"BufferTower",0
_1805:
	db	"turmwinkel",0
_1806:
	db	"zielwinkel",0
_1807:
	db	"drehspeed",0
_1808:
	db	"bufftore",0
_1809:
	db	"test",0
	align	4
_1803:
	dd	1
	dd	_1804
	dd	2
	dd	_1805
	dd	_231
	dd	-4
	dd	2
	dd	_1806
	dd	_231
	dd	-8
	dd	2
	dd	_1807
	dd	_231
	dd	-12
	dd	2
	dd	_1682
	dd	_231
	dd	-16
	dd	2
	dd	_1808
	dd	_231
	dd	-20
	dd	2
	dd	_1809
	dd	_240
	dd	-24
	dd	0
	align	4
_1777:
	dd	_874
	dd	271
	dd	2
	align	4
_3285:
	dd	0x43340000
	align	4
_1779:
	dd	_874
	dd	272
	dd	2
	align	4
_1781:
	dd	3
	dd	0
	dd	0
	align	4
_1780:
	dd	_874
	dd	273
	dd	3
	align	4
_3286:
	dd	0x43b40000
	align	4
_3287:
	dd	0xc3340000
	align	4
_1782:
	dd	_874
	dd	275
	dd	2
	align	4
_1784:
	dd	3
	dd	0
	dd	0
	align	4
_1783:
	dd	_874
	dd	276
	dd	3
	align	4
_3288:
	dd	0x43b40000
	align	4
_3289:
	dd	0x43340000
	align	4
_1785:
	dd	_874
	dd	278
	dd	2
	align	4
_1788:
	dd	_874
	dd	279
	dd	2
	align	4
_1792:
	dd	3
	dd	0
	dd	0
	align	4
_1790:
	dd	_874
	dd	279
	dd	34
	align	4
_1791:
	dd	_874
	dd	279
	dd	58
	align	4
_1793:
	dd	_874
	dd	280
	dd	2
	align	4
_1797:
	dd	3
	dd	0
	dd	0
	align	4
_1795:
	dd	_874
	dd	280
	dd	36
	align	4
_1796:
	dd	_874
	dd	280
	dd	59
	align	4
_1798:
	dd	_874
	dd	281
	dd	2
	align	4
_1801:
	dd	3
	dd	0
	dd	0
	align	4
_1800:
	dd	_874
	dd	281
	dd	19
	align	4
_1802:
	dd	_874
	dd	282
	dd	2
_1835:
	db	"BufferTarget",0
_1836:
	db	"drehschalter",0
	align	4
_1834:
	dd	1
	dd	_1835
	dd	2
	dd	_1805
	dd	_231
	dd	-4
	dd	2
	dd	_1806
	dd	_231
	dd	-8
	dd	2
	dd	_1836
	dd	_231
	dd	-12
	dd	2
	dd	_1682
	dd	_231
	dd	-16
	dd	2
	dd	_1808
	dd	_231
	dd	-20
	dd	2
	dd	_1809
	dd	_240
	dd	-24
	dd	0
	align	4
_1810:
	dd	_874
	dd	286
	dd	2
	align	4
_3297:
	dd	0x43340000
	align	4
_1812:
	dd	_874
	dd	287
	dd	2
	align	4
_1814:
	dd	3
	dd	0
	dd	0
	align	4
_1813:
	dd	_874
	dd	288
	dd	3
	align	4
_3298:
	dd	0x43b40000
	align	4
_3299:
	dd	0xc3340000
	align	4
_1815:
	dd	_874
	dd	290
	dd	2
	align	4
_1817:
	dd	3
	dd	0
	dd	0
	align	4
_1816:
	dd	_874
	dd	291
	dd	3
	align	4
_3300:
	dd	0x43b40000
	align	4
_3301:
	dd	0x43340000
	align	4
_1818:
	dd	_874
	dd	293
	dd	2
	align	4
_1821:
	dd	_874
	dd	294
	dd	2
	align	4
_1824:
	dd	3
	dd	0
	dd	0
	align	4
_1823:
	dd	_874
	dd	294
	dd	37
	align	4
_1825:
	dd	_874
	dd	295
	dd	2
	align	4
_1828:
	dd	3
	dd	0
	dd	0
	align	4
_1827:
	dd	_874
	dd	295
	dd	39
	align	4
_1829:
	dd	_874
	dd	296
	dd	2
	align	4
_1832:
	dd	3
	dd	0
	dd	0
	align	4
_1831:
	dd	_874
	dd	296
	dd	19
	align	4
_1833:
	dd	_874
	dd	297
	dd	2
_1847:
	db	"CalcWinkel",0
	align	4
_1846:
	dd	1
	dd	_1847
	dd	2
	dd	_230
	dd	_231
	dd	-4
	dd	2
	dd	_232
	dd	_231
	dd	-8
	dd	2
	dd	_1285
	dd	_231
	dd	-12
	dd	0
	align	4
_1837:
	dd	_874
	dd	301
	dd	2
	align	4
_1839:
	dd	_874
	dd	302
	dd	2
	align	4
_1841:
	dd	3
	dd	0
	dd	0
	align	4
_1840:
	dd	_874
	dd	303
	dd	3
	align	4
_3309:
	dd	0x43b40000
	align	4
_1842:
	dd	_874
	dd	305
	dd	2
	align	4
_1844:
	dd	3
	dd	0
	dd	0
	align	4
_1843:
	dd	_874
	dd	306
	dd	3
	align	4
_3310:
	dd	0x43b40000
	align	4
_3311:
	dd	0x43b40000
	align	4
_1845:
	dd	_874
	dd	308
	dd	2
_1967:
	db	"waypointtodest",0
_1968:
	db	"postition",0
_1969:
	db	"ziel",0
_1970:
	db	"foundwp",0
_1971:
	db	"enf84",0
_1972:
	db	"nr8",0
	align	4
_1966:
	dd	1
	dd	_1967
	dd	2
	dd	_1968
	dd	_235
	dd	-4
	dd	2
	dd	_1969
	dd	_235
	dd	-8
	dd	2
	dd	_1970
	dd	_235
	dd	-12
	dd	2
	dd	_1971
	dd	_231
	dd	-16
	dd	2
	dd	_1972
	dd	_240
	dd	-20
	dd	0
	align	4
_1848:
	dd	_874
	dd	312
	dd	2
	align	4
_1850:
	dd	_874
	dd	314
	dd	2
	align	4
_1922:
	dd	3
	dd	0
	dd	2
	dd	_1068
	dd	_235
	dd	-24
	dd	0
	align	4
_1860:
	dd	_874
	dd	315
	dd	3
	align	4
_1864:
	dd	_874
	dd	316
	dd	3
	align	4
_1868:
	dd	_874
	dd	317
	dd	3
_1921:
	db	"nr3",0
	align	4
_1920:
	dd	3
	dd	0
	dd	2
	dd	_1921
	dd	_240
	dd	-28
	dd	0
	align	4
_1872:
	dd	_874
	dd	318
	dd	4
	align	4
_1876:
	dd	_874
	dd	319
	dd	4
	align	4
_1878:
	dd	_874
	dd	320
	dd	4
_1919:
	db	"entf55",0
	align	4
_1918:
	dd	3
	dd	0
	dd	2
	dd	_1919
	dd	_231
	dd	-32
	dd	0
	align	4
_1896:
	dd	_874
	dd	321
	dd	5
	align	8
_3316:
	dd	0x0,0x40000000
	align	8
_3317:
	dd	0x0,0x40000000
	align	4
_1910:
	dd	_874
	dd	322
	dd	5
	align	4
_1917:
	dd	_874
	dd	323
	dd	5
	align	4
_1923:
	dd	_874
	dd	328
	dd	2
	align	4
_1926:
	dd	3
	dd	0
	dd	0
	align	4
_1925:
	dd	_874
	dd	328
	dd	27
	align	4
_1927:
	dd	_874
	dd	330
	dd	2
	align	4
_1928:
	dd	_874
	dd	332
	dd	2
	align	4
_3318:
	dd	0x461c3c00
	align	4
_1931:
	dd	_874
	dd	333
	dd	2
	align	4
_1964:
	dd	3
	dd	0
	dd	0
	align	4
_1949:
	dd	_874
	dd	334
	dd	3
	align	4
_1963:
	dd	3
	dd	0
	dd	0
	align	4
_1955:
	dd	_874
	dd	335
	dd	4
	align	4
_1958:
	dd	_874
	dd	336
	dd	4
	align	4
_1965:
	dd	_874
	dd	340
	dd	2
_2149:
	db	"wayray",0
_2150:
	db	"dian",0
_2151:
	db	"nr40",0
_2152:
	db	"enf844",0
_2153:
	db	"best",0
	align	4
_2148:
	dd	1
	dd	_2149
	dd	2
	dd	_1969
	dd	_235
	dd	-4
	dd	2
	dd	_2150
	dd	_231
	dd	-8
	dd	2
	dd	_248
	dd	_249
	dd	-12
	dd	2
	dd	_2151
	dd	_240
	dd	-16
	dd	2
	dd	_2152
	dd	_231
	dd	-20
	dd	2
	dd	_2153
	dd	_240
	dd	-24
	dd	0
	align	4
_1973:
	dd	_874
	dd	344
	dd	2
	align	4
_1977:
	dd	_874
	dd	345
	dd	2
	align	4
_1983:
	dd	3
	dd	0
	dd	0
	align	4
_1979:
	dd	_874
	dd	345
	dd	19
	align	4
_1984:
	dd	_874
	dd	346
	dd	2
_1985:
	db	"f",0
	align	4
_1987:
	dd	_874
	dd	348
	dd	2
	align	4
_1989:
	dd	_874
	dd	349
	dd	2
	align	4
_2052:
	dd	3
	dd	0
	dd	0
	align	4
_2007:
	dd	_874
	dd	350
	dd	3
	align	4
_2050:
	dd	3
	dd	0
	dd	0
	align	4
_2018:
	dd	_874
	dd	351
	dd	4
	align	4
_2049:
	dd	3
	dd	0
	dd	0
	align	4
_2022:
	dd	_874
	dd	352
	dd	5
	align	4
_2033:
	dd	_874
	dd	353
	dd	5
	align	4
_2048:
	dd	3
	dd	0
	dd	0
	align	4
_2039:
	dd	_874
	dd	353
	dd	35
	align	4
_2051:
	dd	_874
	dd	356
	dd	3
	align	4
_2053:
	dd	_874
	dd	359
	dd	2
	align	4
_3359:
	dd	0x461c3c00
	align	4
_2056:
	dd	_874
	dd	360
	dd	2
_2073:
	db	"nr5",0
	align	4
_2072:
	dd	3
	dd	0
	dd	2
	dd	_2073
	dd	_240
	dd	-28
	dd	0
	align	4
_2059:
	dd	_874
	dd	361
	dd	3
	align	4
_2071:
	dd	3
	dd	0
	dd	0
	align	4
_2067:
	dd	_874
	dd	362
	dd	4
	align	4
_2068:
	dd	_874
	dd	363
	dd	4
	align	4
_2074:
	dd	_874
	dd	367
	dd	2
	align	4
_2075:
	dd	_874
	dd	368
	dd	2
	align	4
_2105:
	dd	3
	dd	0
	dd	0
	align	4
_2093:
	dd	_874
	dd	369
	dd	3
	align	4
_2103:
	dd	3
	dd	0
	dd	0
	align	4
_2095:
	dd	_874
	dd	370
	dd	4
	align	4
_2104:
	dd	_874
	dd	372
	dd	3
	align	4
_2106:
	dd	_874
	dd	375
	dd	2
	align	4
_2107:
	dd	_874
	dd	376
	dd	2
	align	4
_2144:
	dd	3
	dd	0
	dd	0
	align	4
_2125:
	dd	_874
	dd	377
	dd	3
	align	4
_2142:
	dd	3
	dd	0
	dd	0
	align	4
_2127:
	dd	_874
	dd	378
	dd	4
	align	4
_2141:
	dd	3
	dd	0
	dd	0
	align	4
_2133:
	dd	_874
	dd	378
	dd	34
	align	4
_2143:
	dd	_874
	dd	380
	dd	3
	align	4
_2145:
	dd	_874
	dd	383
	dd	2
_2345:
	db	"maptodest",0
_2346:
	db	"postitionx",0
_2347:
	db	"postitiony",0
_2348:
	db	"zielx",0
_2349:
	db	"ziely",0
_2350:
	db	"mapx",0
_2351:
	db	"mapy",0
_2352:
	db	"mapdat",0
_2353:
	db	"[,,]i",0
_2354:
	db	"enf",0
_2355:
	db	"rig",0
	align	4
_2344:
	dd	1
	dd	_2345
	dd	2
	dd	_2346
	dd	_231
	dd	-4
	dd	2
	dd	_2347
	dd	_231
	dd	-8
	dd	2
	dd	_2348
	dd	_231
	dd	-12
	dd	2
	dd	_2349
	dd	_231
	dd	-16
	dd	5
	dd	_1205
	dd	_1206
	dd	-20
	dd	2
	dd	_2350
	dd	_240
	dd	-24
	dd	2
	dd	_2351
	dd	_240
	dd	-28
	dd	2
	dd	_1970
	dd	_231
	dd	-32
	dd	2
	dd	_2352
	dd	_2353
	dd	-36
	dd	2
	dd	_2354
	dd	_231
	dd	-40
	dd	2
	dd	_2355
	dd	_240
	dd	-44
	dd	0
	align	4
_2154:
	dd	_874
	dd	390
	dd	2
	align	4
_3419:
	dd	0xbf800000
	align	4
_2156:
	dd	_874
	dd	392
	dd	2
_2157:
	db	"i",0
	align	4
_2159:
	dd	_874
	dd	394
	dd	2
	align	4
_2188:
	dd	3
	dd	0
	dd	2
	dd	_230
	dd	_240
	dd	-48
	dd	0
	align	4
_2163:
	dd	_874
	dd	395
	dd	3
	align	4
_2187:
	dd	3
	dd	0
	dd	2
	dd	_232
	dd	_240
	dd	-52
	dd	0
	align	4
_2167:
	dd	_874
	dd	396
	dd	4
	align	4
_2179:
	dd	_874
	dd	397
	dd	4
	align	4
_2189:
	dd	_874
	dd	401
	dd	2
	align	4
_2194:
	dd	3
	dd	0
	dd	0
	align	4
_2193:
	dd	_874
	dd	401
	dd	52
	align	4
_3420:
	dd	0xbf800000
	align	4
_2195:
	dd	_874
	dd	402
	dd	2
	align	4
_2198:
	dd	3
	dd	0
	dd	0
	align	4
_2197:
	dd	_874
	dd	402
	dd	26
	align	4
_3421:
	dd	0xbf800000
	align	4
_2199:
	dd	_874
	dd	403
	dd	2
	align	4
_2202:
	dd	3
	dd	0
	dd	0
	align	4
_2201:
	dd	_874
	dd	403
	dd	28
	align	4
_3422:
	dd	0xbf800000
	align	4
_2203:
	dd	_874
	dd	404
	dd	2
	align	4
_2206:
	dd	3
	dd	0
	dd	0
	align	4
_2205:
	dd	_874
	dd	404
	dd	26
	align	4
_3423:
	dd	0xbf800000
	align	4
_2207:
	dd	_874
	dd	405
	dd	2
	align	4
_2210:
	dd	3
	dd	0
	dd	0
	align	4
_2209:
	dd	_874
	dd	405
	dd	28
	align	4
_3424:
	dd	0xbf800000
	align	4
_2211:
	dd	_874
	dd	406
	dd	2
	align	4
_2214:
	dd	3
	dd	0
	dd	0
	align	4
_2213:
	dd	_874
	dd	406
	dd	21
	align	4
_3425:
	dd	0xbf800000
	align	4
_2215:
	dd	_874
	dd	407
	dd	2
	align	4
_2218:
	dd	3
	dd	0
	dd	0
	align	4
_2217:
	dd	_874
	dd	407
	dd	23
	align	4
_3426:
	dd	0xbf800000
	align	4
_2219:
	dd	_874
	dd	408
	dd	2
	align	4
_2222:
	dd	3
	dd	0
	dd	0
	align	4
_2221:
	dd	_874
	dd	408
	dd	21
	align	4
_3427:
	dd	0xbf800000
	align	4
_2223:
	dd	_874
	dd	409
	dd	2
	align	4
_2226:
	dd	3
	dd	0
	dd	0
	align	4
_2225:
	dd	_874
	dd	409
	dd	23
	align	4
_3428:
	dd	0xbf800000
	align	4
_2227:
	dd	_874
	dd	411
	dd	2
	align	4
_2235:
	dd	_874
	dd	413
	dd	2
	align	4
_2238:
	dd	_874
	dd	415
	dd	2
	align	4
_3429:
	dd	0x461c3c00
	align	4
_2241:
	dd	_874
	dd	416
	dd	2
	align	4
_2320:
	dd	3
	dd	0
	dd	2
	dd	_230
	dd	_240
	dd	-56
	dd	0
	align	4
_2244:
	dd	_874
	dd	417
	dd	3
	align	4
_2319:
	dd	3
	dd	0
	dd	2
	dd	_232
	dd	_240
	dd	-60
	dd	0
	align	4
_2247:
	dd	_874
	dd	418
	dd	4
	align	4
_2251:
	dd	3
	dd	0
	dd	0
	align	4
_2318:
	dd	3
	dd	0
	dd	0
	align	4
_2253:
	dd	_874
	dd	421
	dd	5
	align	4
_2258:
	dd	3
	dd	0
	dd	0
	align	4
_2257:
	dd	_874
	dd	421
	dd	31
	align	4
_2259:
	dd	_874
	dd	422
	dd	5
	align	4
_2264:
	dd	3
	dd	0
	dd	0
	align	4
_2263:
	dd	_874
	dd	422
	dd	30
	align	4
_2265:
	dd	_874
	dd	423
	dd	5
	align	4
_2270:
	dd	3
	dd	0
	dd	0
	align	4
_2269:
	dd	_874
	dd	423
	dd	30
	align	4
_2271:
	dd	_874
	dd	424
	dd	5
	align	4
_2276:
	dd	3
	dd	0
	dd	0
	align	4
_2275:
	dd	_874
	dd	424
	dd	30
	align	4
_2277:
	dd	_874
	dd	425
	dd	5
	align	4
_2282:
	dd	3
	dd	0
	dd	0
	align	4
_2281:
	dd	_874
	dd	425
	dd	29
	align	4
_2283:
	dd	_874
	dd	426
	dd	5
	align	4
_2288:
	dd	3
	dd	0
	dd	0
	align	4
_2287:
	dd	_874
	dd	426
	dd	30
	align	4
_2289:
	dd	_874
	dd	427
	dd	5
	align	4
_2294:
	dd	3
	dd	0
	dd	0
	align	4
_2293:
	dd	_874
	dd	427
	dd	29
	align	4
_2295:
	dd	_874
	dd	428
	dd	5
	align	4
_2300:
	dd	3
	dd	0
	dd	0
	align	4
_2299:
	dd	_874
	dd	428
	dd	29
	align	4
_2301:
	dd	_874
	dd	430
	dd	5
	align	4
_2317:
	dd	3
	dd	0
	dd	0
	align	4
_2309:
	dd	_874
	dd	431
	dd	6
	align	4
_2310:
	dd	_874
	dd	432
	dd	6
	align	4
_2321:
	dd	_874
	dd	438
	dd	2
	align	4
_2342:
	dd	3
	dd	0
	dd	2
	dd	_230
	dd	_240
	dd	-64
	dd	0
	align	4
_2325:
	dd	_874
	dd	439
	dd	3
	align	4
_2341:
	dd	3
	dd	0
	dd	2
	dd	_232
	dd	_240
	dd	-68
	dd	0
	align	4
_2329:
	dd	_874
	dd	440
	dd	4
	align	4
_2343:
	dd	_874
	dd	444
	dd	2
_2701:
	db	"mapray",0
	align	4
_2700:
	dd	1
	dd	_2701
	dd	2
	dd	_2348
	dd	_240
	dd	-4
	dd	2
	dd	_2349
	dd	_240
	dd	-8
	dd	5
	dd	_1205
	dd	_2353
	dd	-12
	dd	2
	dd	_2350
	dd	_240
	dd	-16
	dd	2
	dd	_2351
	dd	_240
	dd	-20
	dd	2
	dd	_2150
	dd	_231
	dd	-24
	dd	0
	align	4
_2356:
	dd	_874
	dd	449
	dd	2
	align	4
_2364:
	dd	_874
	dd	450
	dd	2
	align	4
_2699:
	dd	3
	dd	0
	dd	0
	align	4
_2372:
	dd	_874
	dd	451
	dd	3
	align	4
_2382:
	dd	3
	dd	0
	dd	0
	align	4
_2374:
	dd	_874
	dd	451
	dd	20
	align	4
_2383:
	dd	_874
	dd	453
	dd	3
	align	4
_2503:
	dd	3
	dd	0
	dd	2
	dd	_230
	dd	_240
	dd	-28
	dd	0
	align	4
_2386:
	dd	_874
	dd	454
	dd	4
	align	4
_2502:
	dd	3
	dd	0
	dd	2
	dd	_232
	dd	_240
	dd	-32
	dd	0
	align	4
_2389:
	dd	_874
	dd	455
	dd	5
	align	4
_2393:
	dd	3
	dd	0
	dd	0
_2501:
	db	"diagonalset",0
	align	4
_2500:
	dd	3
	dd	0
	dd	2
	dd	_2501
	dd	_231
	dd	-36
	dd	0
	align	4
_2395:
	dd	_874
	dd	458
	dd	6
	align	4
_2397:
	dd	_874
	dd	459
	dd	6
	align	4
_2402:
	dd	3
	dd	0
	dd	0
	align	4
_2401:
	dd	_874
	dd	459
	dd	32
	align	4
_2403:
	dd	_874
	dd	460
	dd	6
	align	4
_2408:
	dd	3
	dd	0
	dd	0
	align	4
_2407:
	dd	_874
	dd	460
	dd	31
	align	4
_2409:
	dd	_874
	dd	461
	dd	6
	align	4
_2414:
	dd	3
	dd	0
	dd	0
	align	4
_2413:
	dd	_874
	dd	461
	dd	31
	align	4
_2415:
	dd	_874
	dd	462
	dd	6
	align	4
_2420:
	dd	3
	dd	0
	dd	0
	align	4
_2419:
	dd	_874
	dd	462
	dd	31
	align	4
_2421:
	dd	_874
	dd	463
	dd	6
	align	4
_2426:
	dd	3
	dd	0
	dd	0
	align	4
_2425:
	dd	_874
	dd	463
	dd	30
	align	4
_2427:
	dd	_874
	dd	464
	dd	6
	align	4
_2432:
	dd	3
	dd	0
	dd	0
	align	4
_2431:
	dd	_874
	dd	464
	dd	31
	align	4
_2433:
	dd	_874
	dd	465
	dd	6
	align	4
_2438:
	dd	3
	dd	0
	dd	0
	align	4
_2437:
	dd	_874
	dd	465
	dd	30
	align	4
_2439:
	dd	_874
	dd	466
	dd	6
	align	4
_2444:
	dd	3
	dd	0
	dd	0
	align	4
_2443:
	dd	_874
	dd	466
	dd	30
	align	4
_2445:
	dd	_874
	dd	468
	dd	6
	align	4
_2470:
	dd	3
	dd	0
	dd	0
	align	4
_2453:
	dd	_874
	dd	469
	dd	7
	align	4
_2469:
	dd	3
	dd	0
	dd	0
	align	4
_2461:
	dd	_874
	dd	470
	dd	8
	align	4
_2471:
	dd	_874
	dd	473
	dd	6
	align	4
_2499:
	dd	3
	dd	0
	dd	0
	align	4
_2485:
	dd	_874
	dd	474
	dd	7
	align	4
_2504:
	dd	_874
	dd	480
	dd	3
	align	4
_2578:
	dd	3
	dd	0
	dd	2
	dd	_230
	dd	_240
	dd	-40
	dd	0
	align	4
_2507:
	dd	_874
	dd	481
	dd	4
	align	4
_2577:
	dd	3
	dd	0
	dd	2
	dd	_232
	dd	_240
	dd	-44
	dd	0
	align	4
_2510:
	dd	_874
	dd	482
	dd	5
	align	4
_2514:
	dd	3
	dd	0
	dd	0
	align	4
_2576:
	dd	3
	dd	0
	dd	2
	dd	_2501
	dd	_231
	dd	-48
	dd	0
	align	4
_2516:
	dd	_874
	dd	485
	dd	6
	align	4
_2518:
	dd	_874
	dd	486
	dd	6
	align	4
_2523:
	dd	3
	dd	0
	dd	0
	align	4
_2522:
	dd	_874
	dd	486
	dd	32
	align	4
_2524:
	dd	_874
	dd	487
	dd	6
	align	4
_2529:
	dd	3
	dd	0
	dd	0
	align	4
_2528:
	dd	_874
	dd	487
	dd	31
	align	4
_2530:
	dd	_874
	dd	488
	dd	6
	align	4
_2535:
	dd	3
	dd	0
	dd	0
	align	4
_2534:
	dd	_874
	dd	488
	dd	31
	align	4
_2536:
	dd	_874
	dd	489
	dd	6
	align	4
_2541:
	dd	3
	dd	0
	dd	0
	align	4
_2540:
	dd	_874
	dd	489
	dd	31
	align	4
_2542:
	dd	_874
	dd	490
	dd	6
	align	4
_2547:
	dd	3
	dd	0
	dd	0
	align	4
_2546:
	dd	_874
	dd	490
	dd	30
	align	4
_2548:
	dd	_874
	dd	491
	dd	6
	align	4
_2553:
	dd	3
	dd	0
	dd	0
	align	4
_2552:
	dd	_874
	dd	491
	dd	31
	align	4
_2554:
	dd	_874
	dd	492
	dd	6
	align	4
_2559:
	dd	3
	dd	0
	dd	0
	align	4
_2558:
	dd	_874
	dd	492
	dd	30
	align	4
_2560:
	dd	_874
	dd	493
	dd	6
	align	4
_2565:
	dd	3
	dd	0
	dd	0
	align	4
_2564:
	dd	_874
	dd	493
	dd	30
	align	4
_2566:
	dd	_874
	dd	495
	dd	6
	align	4
_2575:
	dd	3
	dd	0
	dd	0
	align	4
_2574:
	dd	_874
	dd	496
	dd	7
	align	4
_2579:
	dd	_874
	dd	502
	dd	3
	align	4
_2698:
	dd	3
	dd	0
	dd	2
	dd	_230
	dd	_240
	dd	-52
	dd	0
	align	4
_2582:
	dd	_874
	dd	503
	dd	4
	align	4
_2697:
	dd	3
	dd	0
	dd	2
	dd	_232
	dd	_240
	dd	-56
	dd	0
	align	4
_2585:
	dd	_874
	dd	504
	dd	5
	align	4
_2589:
	dd	3
	dd	0
	dd	0
	align	4
_2696:
	dd	3
	dd	0
	dd	2
	dd	_2501
	dd	_231
	dd	-60
	dd	0
	align	4
_2591:
	dd	_874
	dd	507
	dd	6
	align	4
_2593:
	dd	_874
	dd	508
	dd	6
	align	4
_2598:
	dd	3
	dd	0
	dd	0
	align	4
_2597:
	dd	_874
	dd	508
	dd	32
	align	4
_2599:
	dd	_874
	dd	509
	dd	6
	align	4
_2604:
	dd	3
	dd	0
	dd	0
	align	4
_2603:
	dd	_874
	dd	509
	dd	31
	align	4
_2605:
	dd	_874
	dd	510
	dd	6
	align	4
_2610:
	dd	3
	dd	0
	dd	0
	align	4
_2609:
	dd	_874
	dd	510
	dd	31
	align	4
_2611:
	dd	_874
	dd	511
	dd	6
	align	4
_2616:
	dd	3
	dd	0
	dd	0
	align	4
_2615:
	dd	_874
	dd	511
	dd	31
	align	4
_2617:
	dd	_874
	dd	512
	dd	6
	align	4
_2622:
	dd	3
	dd	0
	dd	0
	align	4
_2621:
	dd	_874
	dd	512
	dd	30
	align	4
_2623:
	dd	_874
	dd	513
	dd	6
	align	4
_2628:
	dd	3
	dd	0
	dd	0
	align	4
_2627:
	dd	_874
	dd	513
	dd	31
	align	4
_2629:
	dd	_874
	dd	514
	dd	6
	align	4
_2634:
	dd	3
	dd	0
	dd	0
	align	4
_2633:
	dd	_874
	dd	514
	dd	30
	align	4
_2635:
	dd	_874
	dd	515
	dd	6
	align	4
_2640:
	dd	3
	dd	0
	dd	0
	align	4
_2639:
	dd	_874
	dd	515
	dd	30
	align	4
_2641:
	dd	_874
	dd	517
	dd	6
	align	4
_2666:
	dd	3
	dd	0
	dd	0
	align	4
_2649:
	dd	_874
	dd	518
	dd	7
	align	4
_2665:
	dd	3
	dd	0
	dd	0
	align	4
_2657:
	dd	_874
	dd	519
	dd	8
	align	4
_2667:
	dd	_874
	dd	522
	dd	6
	align	4
_2695:
	dd	3
	dd	0
	dd	0
	align	4
_2681:
	dd	_874
	dd	523
	dd	7
_2777:
	db	"Main_smart",0
_2778:
	db	"main_all_botlist",0
	align	4
_2776:
	dd	1
	dd	_2777
	dd	2
	dd	_2778
	dd	_238
	dd	-4
	dd	0
	align	4
_2702:
	dd	_877
	dd	6
	dd	2
_2746:
	db	"nrs",0
	align	4
_2745:
	dd	3
	dd	0
	dd	2
	dd	_2746
	dd	_240
	dd	-8
	dd	0
	align	4
_2704:
	dd	_877
	dd	7
	dd	3
_2716:
	db	"tsx",0
	align	4
_2715:
	dd	3
	dd	0
	dd	2
	dd	_2716
	dd	_240
	dd	-12
	dd	0
	align	4
_2707:
	dd	_877
	dd	8
	dd	4
	align	4
_2717:
	dd	_877
	dd	10
	dd	3
	align	4
_2719:
	dd	_877
	dd	11
	dd	3
_2743:
	db	"thesmartbot",0
	align	4
_2742:
	dd	3
	dd	0
	dd	2
	dd	_2743
	dd	_960
	dd	-16
	dd	0
	align	4
_2729:
	dd	_877
	dd	12
	dd	4
	align	4
_2737:
	dd	_877
	dd	13
	dd	4
	align	4
_2738:
	dd	_877
	dd	14
	dd	4
	align	4
_2741:
	dd	3
	dd	0
	dd	0
	align	4
_2740:
	dd	_877
	dd	14
	dd	22
	align	4
_2744:
	dd	_877
	dd	16
	dd	3
	align	4
_2775:
	dd	3
	dd	0
	dd	0
	align	4
_2748:
	dd	_877
	dd	18
	dd	3
	align	4
_2751:
	dd	_877
	dd	19
	dd	3
	align	4
_2774:
	dd	3
	dd	0
	dd	2
	dd	_230
	dd	_240
	dd	-20
	dd	0
	align	4
_2754:
	dd	_877
	dd	20
	dd	4
	align	4
_2755:
	dd	_877
	dd	21
	dd	4
	align	4
_2764:
	dd	3
	dd	0
	dd	0
	align	4
_2759:
	dd	_877
	dd	22
	dd	5
	align	4
_2768:
	dd	3
	dd	0
	dd	0
	align	4
_2766:
	dd	_877
	dd	24
	dd	5
	align	4
_2767:
	dd	_877
	dd	24
	dd	24
	align	4
_2769:
	dd	_877
	dd	26
	dd	4
	align	4
_2773:
	dd	3
	dd	0
	dd	0
	align	4
_2771:
	dd	_877
	dd	26
	dd	30
	align	4
_2772:
	dd	_877
	dd	26
	dd	49
