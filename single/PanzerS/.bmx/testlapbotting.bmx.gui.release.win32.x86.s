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
	extrn	_bbSin
	extrn	_bbSqr
	extrn	_bbStringClass
	extrn	_bbStringConcat
	extrn	_bbStringFromInt
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
	public	_bb_Work_smart
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
	sub	esp,120
	push	ebx
	push	esi
	push	edi
	cmp	dword [_588],0
	je	_589
	mov	eax,0
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_589:
	mov	dword [_588],1
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
	mov	eax,dword [_339]
	and	eax,1
	cmp	eax,0
	jne	_340
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_botTlist],eax
	or	dword [_339],1
_340:
	mov	eax,dword [_339]
	and	eax,2
	cmp	eax,0
	jne	_342
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_waypointlist],eax
	or	dword [_339],2
_342:
	mov	eax,dword [_339]
	and	eax,4
	cmp	eax,0
	jne	_344
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_printlistlist],eax
	or	dword [_339],4
_344:
	mov	ebx,_18
	inc	dword [ebx+4]
	mov	eax,dword [_bbAppTitle]
	dec	dword [eax+4]
	jnz	_348
	push	eax
	call	_bbGCFree
	add	esp,4
_348:
	mov	dword [_bbAppTitle],ebx
	push	0
	push	60
	push	0
	push	768
	push	1024
	call	_brl_graphics_Graphics
	add	esp,20
	push	3
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_bb_Twaypoint
	call	_bbObjectNew
	add	esp,4
	mov	esi,eax
	mov	eax,dword [_bb_waypointlist]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	fld	dword [_bb_wax]
	fstp	dword [esi+8]
	fld	dword [_bb_way]
	fstp	dword [esi+12]
	inc	dword [esi+4]
	mov	ebx,esi
	mov	eax,dword [_bb_startTwaypoint]
	dec	dword [eax+4]
	jnz	_354
	push	eax
	call	_bbGCFree
	add	esp,4
_354:
	mov	dword [_bb_startTwaypoint],ebx
	fld	dword [_bb_way]
	fadd	dword [_1066]
	fstp	dword [_bb_way]
	push	_bb_Twaypoint
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nTwaypoint]
	dec	dword [eax+4]
	jnz	_358
	push	eax
	call	_bbGCFree
	add	esp,4
_358:
	mov	dword [_bb_nTwaypoint],ebx
	mov	eax,dword [_bb_waypointlist]
	push	dword [_bb_nTwaypoint]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [_bb_wax]
	fstp	dword [eax+8]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [_bb_way]
	fstp	dword [eax+12]
	mov	eax,dword [esi+36]
	push	dword [_bb_nTwaypoint]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [_bb_nTwaypoint]
	mov	eax,dword [eax+36]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	esi,-3
	jmp	_363
_21:
	push	_bb_Twaypoint
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nTwaypoint]
	dec	dword [eax+4]
	jnz	_367
	push	eax
	call	_bbGCFree
	add	esp,4
_367:
	mov	dword [_bb_nTwaypoint],ebx
	mov	eax,dword [_bb_waypointlist]
	push	dword [_bb_nTwaypoint]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [_bb_wax]
	mov	dword [ebp+-120],esi
	fild	dword [ebp+-120]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fstp	dword [eax+8]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_1067]
	faddp	st1,st0
	fstp	dword [eax+12]
	mov	edi,dword [_bb_waypointlist]
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-104],eax
	jmp	_22
_24:
	mov	eax,dword [ebp-104]
	push	_bb_Twaypoint
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	je	_22
	fld	dword [ebx+12]
	fld	dword [_bb_way]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_377
	fld	dword [_bb_wax]
	mov	eax,esi
	sub	eax,1
	mov	dword [ebp+-120],eax
	fild	dword [ebp+-120]
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
	jne	_375
	fld	dword [_bb_wax]
	mov	eax,esi
	add	eax,1
	mov	dword [ebp+-120],eax
	fild	dword [ebp+-120]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
_375:
_377:
	cmp	eax,0
	je	_379
	fld	qword [_1068]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [eax+8]
	fsub	dword [ebx+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-64]
	fld	qword [_1069]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [eax+12]
	fsub	dword [ebx+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-64]
	faddp	st1,st0
	fstp	qword [ebp-64]
	fld	qword [ebp-64]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [_bb_raster]
	fmul	dword [_1070]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_380
	mov	eax,dword [ebx+36]
	push	dword [_bb_nTwaypoint]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [_bb_nTwaypoint]
	mov	eax,dword [eax+36]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
_380:
_379:
	fld	dword [ebx+12]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_1071]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_383
	fld	dword [ebx+8]
	fld	dword [_bb_wax]
	mov	eax,esi
	sub	eax,1
	mov	dword [ebp+-120],eax
	fild	dword [ebp+-120]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
_383:
	cmp	eax,0
	je	_385
	mov	eax,dword [ebx+36]
	push	dword [_bb_nTwaypoint]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [_bb_nTwaypoint]
	mov	eax,dword [eax+36]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
_385:
_22:
	mov	eax,dword [ebp-104]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_24
_23:
_19:
	add	esi,1
_363:
	cmp	esi,3
	jle	_21
_20:
	mov	esi,-4
	jmp	_389
_27:
	push	_bb_Twaypoint
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nTwaypoint]
	dec	dword [eax+4]
	jnz	_393
	push	eax
	call	_bbGCFree
	add	esp,4
_393:
	mov	dword [_bb_nTwaypoint],ebx
	mov	eax,dword [_bb_waypointlist]
	push	dword [_bb_nTwaypoint]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [_bb_wax]
	mov	dword [ebp+-120],esi
	fild	dword [ebp+-120]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fstp	dword [eax+8]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_1072]
	faddp	st1,st0
	fstp	dword [eax+12]
	mov	edi,dword [_bb_waypointlist]
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-100],eax
	jmp	_28
_30:
	mov	eax,dword [ebp-100]
	push	_bb_Twaypoint
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	je	_28
	fld	dword [ebx+12]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_1073]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_403
	fld	dword [_bb_wax]
	mov	eax,esi
	sub	eax,1
	mov	dword [ebp+-120],eax
	fild	dword [ebp+-120]
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
	jne	_401
	fld	dword [_bb_wax]
	mov	eax,esi
	add	eax,1
	mov	dword [ebp+-120],eax
	fild	dword [ebp+-120]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
_401:
_403:
	cmp	eax,0
	je	_405
	fld	qword [_1074]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [eax+8]
	fsub	dword [ebx+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-56]
	fld	qword [_1075]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [eax+12]
	fsub	dword [ebx+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-56]
	faddp	st1,st0
	fstp	qword [ebp-56]
	fld	qword [ebp-56]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [_bb_raster]
	fmul	dword [_1076]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_406
	mov	eax,dword [ebx+36]
	push	dword [_bb_nTwaypoint]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [_bb_nTwaypoint]
	mov	eax,dword [eax+36]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
_406:
_405:
	fld	dword [ebx+12]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_1077]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_409
	fld	dword [ebx+8]
	fld	dword [_bb_wax]
	mov	eax,esi
	sub	eax,1
	mov	dword [ebp+-120],eax
	fild	dword [ebp+-120]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
_409:
	cmp	eax,0
	je	_411
	mov	eax,dword [ebx+36]
	push	dword [_bb_nTwaypoint]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [_bb_nTwaypoint]
	mov	eax,dword [eax+36]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
_411:
_28:
	mov	eax,dword [ebp-100]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_30
_29:
_25:
	add	esi,1
_389:
	cmp	esi,4
	jle	_27
_26:
	mov	esi,-3
	jmp	_415
_33:
	push	_bb_Twaypoint
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nTwaypoint]
	dec	dword [eax+4]
	jnz	_419
	push	eax
	call	_bbGCFree
	add	esp,4
_419:
	mov	dword [_bb_nTwaypoint],ebx
	mov	eax,dword [_bb_waypointlist]
	push	dword [_bb_nTwaypoint]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [_bb_wax]
	mov	dword [ebp+-120],esi
	fild	dword [ebp+-120]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fstp	dword [eax+8]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_1078]
	faddp	st1,st0
	fstp	dword [eax+12]
	mov	edi,dword [_bb_waypointlist]
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-96],eax
	jmp	_34
_36:
	mov	eax,dword [ebp-96]
	push	_bb_Twaypoint
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	je	_34
	fld	dword [ebx+12]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_1079]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_429
	fld	dword [_bb_wax]
	mov	eax,esi
	sub	eax,1
	mov	dword [ebp+-120],eax
	fild	dword [ebp+-120]
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
	jne	_427
	fld	dword [_bb_wax]
	mov	eax,esi
	add	eax,1
	mov	dword [ebp+-120],eax
	fild	dword [ebp+-120]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
_427:
_429:
	cmp	eax,0
	je	_431
	fld	qword [_1080]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [eax+8]
	fsub	dword [ebx+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-48]
	fld	qword [_1081]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [eax+12]
	fsub	dword [ebx+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-48]
	faddp	st1,st0
	fstp	qword [ebp-48]
	fld	qword [ebp-48]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [_bb_raster]
	fmul	dword [_1082]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_432
	mov	eax,dword [ebx+36]
	push	dword [_bb_nTwaypoint]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [_bb_nTwaypoint]
	mov	eax,dword [eax+36]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
_432:
_431:
	fld	dword [ebx+12]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_1083]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_435
	fld	dword [ebx+8]
	fld	dword [_bb_wax]
	mov	eax,esi
	sub	eax,1
	mov	dword [ebp+-120],eax
	fild	dword [ebp+-120]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
_435:
	cmp	eax,0
	je	_437
	mov	eax,dword [ebx+36]
	push	dword [_bb_nTwaypoint]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [_bb_nTwaypoint]
	mov	eax,dword [eax+36]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
_437:
_34:
	mov	eax,dword [ebp-96]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_36
_35:
_31:
	add	esi,1
_415:
	cmp	esi,3
	jle	_33
_32:
	mov	esi,-4
	jmp	_441
_39:
	push	_bb_Twaypoint
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nTwaypoint]
	dec	dword [eax+4]
	jnz	_445
	push	eax
	call	_bbGCFree
	add	esp,4
_445:
	mov	dword [_bb_nTwaypoint],ebx
	mov	eax,dword [_bb_waypointlist]
	push	dword [_bb_nTwaypoint]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [_bb_wax]
	mov	dword [ebp+-120],esi
	fild	dword [ebp+-120]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fstp	dword [eax+8]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_1084]
	faddp	st1,st0
	fstp	dword [eax+12]
	mov	edi,dword [_bb_waypointlist]
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-92],eax
	jmp	_40
_42:
	mov	eax,dword [ebp-92]
	push	_bb_Twaypoint
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	je	_40
	fld	dword [ebx+12]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_1085]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_455
	fld	dword [_bb_wax]
	mov	eax,esi
	sub	eax,1
	mov	dword [ebp+-120],eax
	fild	dword [ebp+-120]
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
	jne	_453
	fld	dword [_bb_wax]
	mov	eax,esi
	add	eax,1
	mov	dword [ebp+-120],eax
	fild	dword [ebp+-120]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
_453:
_455:
	cmp	eax,0
	je	_457
	fld	qword [_1086]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [eax+8]
	fsub	dword [ebx+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-40]
	fld	qword [_1087]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [eax+12]
	fsub	dword [ebx+12]
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
	fld	dword [_bb_raster]
	fmul	dword [_1088]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_458
	mov	eax,dword [ebx+36]
	push	dword [_bb_nTwaypoint]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [_bb_nTwaypoint]
	mov	eax,dword [eax+36]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
_458:
_457:
	fld	dword [ebx+12]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_1089]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_461
	fld	dword [ebx+8]
	fld	dword [_bb_wax]
	mov	eax,esi
	sub	eax,1
	mov	dword [ebp+-120],eax
	fild	dword [ebp+-120]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
_461:
	cmp	eax,0
	je	_463
	mov	eax,dword [ebx+36]
	push	dword [_bb_nTwaypoint]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [_bb_nTwaypoint]
	mov	eax,dword [eax+36]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
_463:
_40:
	mov	eax,dword [ebp-92]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_42
_41:
_37:
	add	esi,1
_441:
	cmp	esi,4
	jle	_39
_38:
	mov	esi,-3
	jmp	_467
_45:
	push	_bb_Twaypoint
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nTwaypoint]
	dec	dword [eax+4]
	jnz	_471
	push	eax
	call	_bbGCFree
	add	esp,4
_471:
	mov	dword [_bb_nTwaypoint],ebx
	mov	eax,dword [_bb_waypointlist]
	push	dword [_bb_nTwaypoint]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [_bb_wax]
	mov	dword [ebp+-120],esi
	fild	dword [ebp+-120]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fstp	dword [eax+8]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_1090]
	faddp	st1,st0
	fstp	dword [eax+12]
	mov	edi,dword [_bb_waypointlist]
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-88],eax
	jmp	_46
_48:
	mov	eax,dword [ebp-88]
	push	_bb_Twaypoint
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	je	_46
	fld	dword [ebx+12]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_1091]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_481
	fld	dword [_bb_wax]
	mov	eax,esi
	sub	eax,1
	mov	dword [ebp+-120],eax
	fild	dword [ebp+-120]
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
	jne	_479
	fld	dword [_bb_wax]
	mov	eax,esi
	add	eax,1
	mov	dword [ebp+-120],eax
	fild	dword [ebp+-120]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
_479:
_481:
	cmp	eax,0
	je	_483
	fld	qword [_1092]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [eax+8]
	fsub	dword [ebx+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-32]
	fld	qword [_1093]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [eax+12]
	fsub	dword [ebx+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-32]
	faddp	st1,st0
	fstp	qword [ebp-32]
	fld	qword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [_bb_raster]
	fmul	dword [_1094]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_484
	mov	eax,dword [ebx+36]
	push	dword [_bb_nTwaypoint]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [_bb_nTwaypoint]
	mov	eax,dword [eax+36]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
_484:
_483:
	fld	dword [ebx+12]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_1095]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_487
	fld	dword [ebx+8]
	fld	dword [_bb_wax]
	mov	eax,esi
	sub	eax,1
	mov	dword [ebp+-120],eax
	fild	dword [ebp+-120]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
_487:
	cmp	eax,0
	je	_489
	mov	eax,dword [ebx+36]
	push	dword [_bb_nTwaypoint]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [_bb_nTwaypoint]
	mov	eax,dword [eax+36]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
_489:
_46:
	mov	eax,dword [ebp-88]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_48
_47:
_43:
	add	esi,1
_467:
	cmp	esi,3
	jle	_45
_44:
	push	_bb_Twaypoint
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nTwaypoint]
	dec	dword [eax+4]
	jnz	_495
	push	eax
	call	_bbGCFree
	add	esp,4
_495:
	mov	dword [_bb_nTwaypoint],ebx
	mov	eax,dword [_bb_waypointlist]
	push	dword [_bb_nTwaypoint]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [_bb_wax]
	fstp	dword [eax+8]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_1096]
	faddp	st1,st0
	fstp	dword [eax+12]
	mov	ebx,dword [_bb_nTwaypoint]
	inc	dword [ebx+4]
	mov	eax,dword [_bb_endTwaypoint]
	dec	dword [eax+4]
	jnz	_500
	push	eax
	call	_bbGCFree
	add	esp,4
_500:
	mov	dword [_bb_endTwaypoint],ebx
	mov	ebx,dword [_bb_waypointlist]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_49
_51:
	mov	eax,edi
	push	_bb_Twaypoint
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_49
	fld	dword [esi+12]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_1097]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_507
	fld	qword [_1098]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [eax+8]
	fsub	dword [esi+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-84]
	fld	qword [_1099]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [eax+12]
	fsub	dword [esi+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-84]
	faddp	st1,st0
	fstp	qword [ebp-84]
	fld	qword [ebp-84]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [_bb_raster]
	fmul	dword [_1100]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_508
	mov	eax,dword [esi+36]
	push	dword [_bb_nTwaypoint]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [_bb_nTwaypoint]
	mov	eax,dword [eax+36]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
_508:
_507:
_49:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_51
_50:
	mov	eax,dword [_339]
	and	eax,8
	cmp	eax,0
	jne	_512
	mov	eax,dword [_bb_startTwaypoint]
	inc	dword [eax+4]
	mov	dword [_bb_t1way],eax
	or	dword [_339],8
_512:
	push	100
	push	100
	push	2
	push	_513
	call	_bbArrayNew
	add	esp,16
	mov	eax,dword [_339]
	and	eax,16
	cmp	eax,0
	jne	_519
	fld	qword [_1101]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fstp	dword [_bb_diagonal]
	or	dword [_339],16
_519:
	mov	eax,dword [_339]
	and	eax,32
	cmp	eax,0
	jne	_522
	push	1000
	push	_520
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_thesmartarray],eax
	or	dword [_339],32
_522:
	mov	eax,dword [_339]
	and	eax,64
	cmp	eax,0
	jne	_524
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_thesmartlist],eax
	or	dword [_339],64
_524:
	mov	eax,dword [_339]
	and	eax,128
	cmp	eax,0
	jne	_526
	push	_bbNullObject
	push	1109393408
	call	_brl_timer_CreateTimer
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_tmr],eax
	or	dword [_339],128
_526:
	jmp	_211
_213:
	mov	eax,dword [_bb_tmr]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	call	_brl_max2d_Cls
	push	dword [_bb_botTlist]
	call	_bb_Main_smart
	add	esp,4
	push	1053609165
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	100
	push	255
	push	100
	call	_brl_max2d_SetColor
	add	esp,12
	push	1073741824
	push	1069547520
	call	_brl_max2d_SetHandle
	add	esp,8
	call	_bbMilliSecs
	mov	dword [ebp-116],eax
	mov	eax,dword [_bb_botTlist]
	mov	dword [ebp-108],eax
	mov	eax,dword [ebp-108]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-112],eax
	jmp	_214
_216:
	mov	eax,dword [ebp-112]
	push	_bb_TbotT
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-76],eax
	cmp	dword [ebp-76],_bbNullObject
	je	_214
	push	dword [ebp-76]
	call	_bb_Work_smart
	add	esp,4
	mov	eax,dword [ebp-76]
	mov	eax,dword [eax+20]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_535
	mov	eax,dword [ebp-76]
	mov	edx,dword [eax+20]
	mov	eax,dword [ebp-76]
	cmp	edx,dword [eax+24]
	setne	al
	movzx	eax,al
_535:
	cmp	eax,0
	je	_537
	mov	eax,dword [ebp-76]
	mov	eax,dword [eax+20]
	fld	dword [eax+12]
	mov	eax,dword [ebp-76]
	fsub	dword [eax+12]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-76]
	mov	eax,dword [eax+20]
	fld	dword [eax+8]
	mov	eax,dword [ebp-76]
	fsub	dword [eax+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbATan2
	add	esp,16
	fchs
	fld	qword [_1102]
	faddp	st1,st0
	fstp	dword [ebp-68]
	mov	eax,dword [ebp-76]
	fld	dword [eax+8]
	fstp	qword [ebp-16]
	fld	dword [ebp-68]
	fsub	dword [_1103]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	qword [_1104]
	fmulp	st1,st0
	fld	qword [ebp-16]
	faddp	st1,st0
	fstp	qword [ebp-16]
	fld	qword [ebp-16]
	mov	eax,dword [ebp-76]
	fstp	dword [eax+8]
	mov	eax,dword [ebp-76]
	fld	dword [eax+12]
	fstp	qword [ebp-8]
	fld	dword [ebp-68]
	fsub	dword [_1105]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	qword [_1106]
	fmulp	st1,st0
	fld	qword [ebp-8]
	faddp	st1,st0
	fstp	qword [ebp-8]
	fld	qword [ebp-8]
	mov	eax,dword [ebp-76]
	fstp	dword [eax+12]
	fld	dword [ebp-68]
	mov	eax,dword [ebp-76]
	fstp	dword [eax+16]
	fld	qword [_1107]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-76]
	mov	eax,dword [eax+20]
	fld	dword [eax+8]
	mov	eax,dword [ebp-76]
	fsub	dword [eax+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-24]
	fld	qword [_1108]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-76]
	mov	eax,dword [eax+20]
	fld	dword [eax+12]
	mov	eax,dword [ebp-76]
	fsub	dword [eax+12]
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
	fld	qword [_1109]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_539
	mov	eax,dword [ebp-76]
	push	dword [eax+24]
	mov	eax,dword [ebp-76]
	push	dword [eax+20]
	call	_bb_waypointtodest
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp-76]
	mov	eax,dword [eax+20]
	dec	dword [eax+4]
	jnz	_543
	push	eax
	call	_bbGCFree
	add	esp,4
_543:
	mov	eax,dword [ebp-76]
	mov	dword [eax+20],ebx
_539:
	jmp	_544
_537:
	mov	eax,dword [ebp-76]
	mov	ebx,dword [eax+24]
	inc	dword [ebx+4]
	mov	eax,dword [ebp-76]
	mov	eax,dword [eax+20]
	dec	dword [eax+4]
	jnz	_548
	push	eax
	call	_bbGCFree
	add	esp,4
_548:
	mov	eax,dword [ebp-76]
	mov	dword [eax+20],ebx
	mov	eax,dword [_bb_waypointlist]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+112]
	add	esp,4
	imul	eax,100
	mov	dword [ebp+-120],eax
	fild	dword [ebp+-120]
	sub	esp,8
	fstp	qword [esp]
	fldz
	sub	esp,8
	fstp	qword [esp]
	call	_brl_random_Rnd
	add	esp,16
	fld	qword [_1110]
	fdivp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	esi,eax
	mov	edi,dword [_bb_waypointlist]
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-72],eax
	jmp	_217
_219:
	mov	eax,dword [ebp-72]
	push	_bb_Twaypoint
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_217
	cmp	esi,0
	jne	_557
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [ebp-76]
	mov	eax,dword [eax+24]
	dec	dword [eax+4]
	jnz	_561
	push	eax
	call	_bbGCFree
	add	esp,4
_561:
	mov	eax,dword [ebp-76]
	mov	dword [eax+24],ebx
_557:
	sub	esi,1
_217:
	mov	eax,dword [ebp-72]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_219
_218:
_544:
	mov	eax,dword [ebp-76]
	mov	ebx,dword [eax+28]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_220
_222:
	mov	eax,edi
	push	_bb_TbotT
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_220
	cmp	dword [esi+32],0
	jne	_568
	mov	eax,dword [ebp-76]
	mov	eax,dword [eax+28]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
_568:
	push	0
	push	1082130432
	lea	eax,dword [esi+12]
	push	eax
	lea	eax,dword [esi+8]
	push	eax
	push	1082130432
	mov	eax,dword [ebp-76]
	lea	eax,dword [eax+12]
	push	eax
	mov	eax,dword [ebp-76]
	lea	eax,dword [eax+8]
	push	eax
	call	_bb_PushCollision
	add	esp,28
_220:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_222
_221:
	mov	eax,dword [ebp-76]
	push	dword [eax+16]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	1082130432
	push	1077936128
	mov	eax,dword [ebp-76]
	push	dword [eax+12]
	mov	eax,dword [ebp-76]
	push	dword [eax+8]
	call	_brl_max2d_DrawRect
	add	esp,16
_214:
	mov	eax,dword [ebp-112]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_216
_215:
	call	_bbMilliSecs
	mov	edi,eax
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	255
	push	0
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	1084227584
	push	1084227584
	call	_brl_max2d_SetHandle
	add	esp,8
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	1092616192
	push	1092616192
	call	_brl_polledinput_MouseY
	mov	dword [ebp+-120],eax
	fild	dword [ebp+-120]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_polledinput_MouseX
	mov	dword [ebp+-120],eax
	fild	dword [ebp+-120]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	mov	eax,edi
	sub	eax,dword [ebp-116]
	cmp	eax,10
	jge	_573
	mov	eax,dword [_bb_botTlist]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+112]
	add	esp,4
	cmp	eax,980
	jge	_575
	push	_bb_TbotT
	call	_bbObjectNew
	add	esp,4
	mov	edx,dword [_bb_botTlist]
	push	eax
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+68]
	add	esp,8
_575:
	jmp	_578
_573:
	mov	eax,edi
	sub	eax,dword [ebp-116]
	cmp	eax,15
	jle	_579
	mov	esi,dword [_bb_botTlist]
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_223
_225:
	mov	eax,ebx
	push	_bb_TbotT
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_223
	mov	dword [eax+32],0
	mov	edx,dword [_bb_botTlist]
	push	eax
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+116]
	add	esp,8
	jmp	_224
_223:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_225
_224:
_579:
_578:
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	1092616192
	push	1092616192
	push	_226
	mov	eax,edi
	sub	eax,dword [ebp-116]
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	mov	eax,dword [_bb_botTlist]
	push	1103626240
	push	1092616192
	push	_227
	push	eax
	mov	eax,dword [eax]
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
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
_211:
	push	27
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_213
_212:
	mov	eax,0
	jmp	_253
_253:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TbotT_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_TbotT
	fld	qword [_1174]
	sub	esp,8
	fstp	qword [esp]
	fldz
	sub	esp,8
	fstp	qword [esp]
	call	_brl_random_Rnd
	add	esp,16
	fstp	dword [ebx+8]
	fld	qword [_1175]
	sub	esp,8
	fstp	qword [esp]
	fldz
	sub	esp,8
	fstp	qword [esp]
	call	_brl_random_Rnd
	add	esp,16
	fstp	dword [ebx+12]
	fldz
	fstp	dword [ebx+16]
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+20],eax
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+24],eax
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [ebx+28],eax
	mov	dword [ebx+32],1
	mov	eax,0
	jmp	_256
_256:
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
	jnz	_595
	push	eax
	call	_bbGCFree
	add	esp,4
_595:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_597
	push	eax
	call	_bbGCFree
	add	esp,4
_597:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_599
	push	eax
	call	_bbGCFree
	add	esp,4
_599:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_593
_593:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Twaypoint_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_Twaypoint
	fldz
	fstp	dword [ebx+8]
	fldz
	fstp	dword [ebx+12]
	mov	dword [ebx+16],0
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+20],eax
	push	16
	push	_601
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [ebx+24],eax
	mov	dword [ebx+28],1
	fldz
	fstp	dword [ebx+32]
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [ebx+36],eax
	mov	eax,0
	jmp	_262
_262:
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
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_604
_604:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_DrawPicture:
	push	ebp
	mov	ebp,esp
	sub	esp,52
	push	ebx
	mov	ebx,dword [ebp+8]
	fldz
	fstp	dword [ebp-4]
	fldz
	fstp	dword [ebp-8]
	lea	eax,dword [ebp-8]
	push	eax
	lea	eax,dword [ebp-4]
	push	eax
	call	_brl_max2d_GetScale
	add	esp,8
	fldz
	fstp	dword [ebp-12]
	fldz
	fstp	dword [ebp-16]
	lea	eax,dword [ebp-16]
	push	eax
	lea	eax,dword [ebp-12]
	push	eax
	call	_brl_max2d_GetHandle
	add	esp,8
	fld	dword [ebp+20]
	mov	eax,dword [ebx+8]
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	fdivp	st1,st0
	fld	dword [ebp+24]
	mov	eax,dword [ebx+12]
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	fdivp	st1,st0
	fmul	dword [ebp-8]
	sub	esp,4
	fstp	dword [esp]
	fmul	dword [ebp-4]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetScale
	add	esp,8
	fld	qword [_1184]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-24]
	fld	qword [_1185]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-16]
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
	fstp	dword [ebp-44]
	fld	dword [ebp-16]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbATan2
	add	esp,16
	fchs
	fld	qword [_1186]
	faddp	st1,st0
	fstp	dword [ebp-48]
	push	0
	fld	dword [ebp+16]
	fstp	qword [ebp-40]
	call	_brl_max2d_GetRotation
	fsub	dword [ebp-48]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	dword [ebp-44]
	fmul	dword [ebp-8]
	fmulp	st1,st0
	fld	qword [ebp-40]
	faddp	st1,st0
	fstp	qword [ebp-40]
	fld	qword [ebp-40]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+12]
	fstp	qword [ebp-32]
	call	_brl_max2d_GetRotation
	fsub	dword [ebp-48]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	dword [ebp-44]
	fmul	dword [ebp-4]
	fmulp	st1,st0
	fld	qword [ebp-32]
	faddp	st1,st0
	fstp	qword [ebp-32]
	fld	qword [ebp-32]
	sub	esp,4
	fstp	dword [esp]
	push	ebx
	call	_brl_max2d_DrawImage
	add	esp,16
	push	dword [ebp-8]
	push	dword [ebp-4]
	call	_brl_max2d_SetScale
	add	esp,8
	mov	eax,0
	jmp	_272
_272:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_PushCollision:
	push	ebp
	mov	ebp,esp
	sub	esp,68
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+8]
	mov	ebx,dword [ebp+12]
	mov	edi,dword [ebp+20]
	movzx	eax,byte [ebp+32]
	mov	eax,eax
	mov	byte [ebp-4],al
	fld	qword [_1189]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [esi]
	fsub	dword [edi]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-16]
	fld	qword [_1190]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebx]
	mov	eax,dword [ebp+24]
	fsub	dword [eax]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-16]
	faddp	st1,st0
	fstp	qword [ebp-16]
	fld	qword [ebp-16]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fstp	dword [ebp-68]
	fld	dword [ebp+16]
	fdiv	dword [_1191]
	fstp	dword [ebp+16]
	fld	dword [ebp+28]
	fdiv	dword [_1192]
	fstp	dword [ebp+28]
	fld	dword [ebp+16]
	fadd	dword [ebp+28]
	fld	dword [ebp-68]
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_620
	fld	dword [ebx]
	mov	eax,dword [ebp+24]
	fsub	dword [eax]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [esi]
	fsub	dword [edi]
	sub	esp,4
	fstp	dword [esp]
	call	_bb_CalcWinkel
	add	esp,8
	fadd	dword [_1193]
	fstp	dword [ebp-8]
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,1
	jne	_622
	fld	dword [esi]
	fstp	qword [ebp-64]
	fld	dword [ebp-8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	dword [ebp+16]
	fadd	dword [ebp+28]
	fsub	dword [ebp-68]
	fmulp	st1,st0
	fld	qword [ebp-64]
	faddp	st1,st0
	fstp	qword [ebp-64]
	fld	qword [ebp-64]
	fstp	dword [esi]
	fld	dword [ebx]
	fstp	qword [ebp-56]
	fld	dword [ebp-8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	dword [ebp+16]
	fadd	dword [ebp+28]
	fsub	dword [ebp-68]
	fmulp	st1,st0
	fld	qword [ebp-56]
	faddp	st1,st0
	fstp	qword [ebp-56]
	fld	qword [ebp-56]
	fstp	dword [ebx]
	jmp	_623
_622:
	fld	dword [esi]
	fstp	qword [ebp-48]
	fld	dword [ebp-8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	dword [ebp+16]
	fadd	dword [ebp+28]
	fsub	dword [ebp-68]
	fdiv	dword [_1194]
	fmulp	st1,st0
	fld	qword [ebp-48]
	faddp	st1,st0
	fstp	qword [ebp-48]
	fld	qword [ebp-48]
	fstp	dword [esi]
	fld	dword [ebx]
	fstp	qword [ebp-40]
	fld	dword [ebp-8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	dword [ebp+16]
	fadd	dword [ebp+28]
	fsub	dword [ebp-68]
	fdiv	dword [_1195]
	fmulp	st1,st0
	fld	qword [ebp-40]
	faddp	st1,st0
	fstp	qword [ebp-40]
	fld	qword [ebp-40]
	fstp	dword [ebx]
	fld	dword [edi]
	fstp	qword [ebp-32]
	fld	dword [ebp-8]
	fsub	dword [_1196]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	dword [ebp+16]
	fadd	dword [ebp+28]
	fsub	dword [ebp-68]
	fdiv	dword [_1197]
	fmulp	st1,st0
	fld	qword [ebp-32]
	faddp	st1,st0
	fstp	qword [ebp-32]
	fld	qword [ebp-32]
	fstp	dword [edi]
	mov	eax,dword [ebp+24]
	fld	dword [eax]
	fstp	qword [ebp-24]
	fld	dword [ebp-8]
	fsub	dword [_1198]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	dword [ebp+16]
	fadd	dword [ebp+28]
	fsub	dword [ebp-68]
	fdiv	dword [_1199]
	fmulp	st1,st0
	fld	qword [ebp-24]
	faddp	st1,st0
	fstp	qword [ebp-24]
	fld	qword [ebp-24]
	mov	eax,dword [ebp+24]
	fstp	dword [eax]
_623:
_620:
	mov	eax,0
	jmp	_281
_281:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_PushTank:
	push	ebp
	mov	ebp,esp
	sub	esp,272
	push	ebx
	push	esi
	push	edi
	fld	qword [_1204]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp+8]
	fld	dword [eax]
	mov	eax,dword [ebp+24]
	fsub	dword [eax]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-256]
	fld	qword [_1205]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp+12]
	fld	dword [eax]
	mov	eax,dword [ebp+28]
	fsub	dword [eax]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-256]
	faddp	st1,st0
	fstp	qword [ebp-256]
	fld	qword [ebp-256]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [_1206]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_625
	fld	dword [_1207]
	fstp	dword [ebp-236]
	fld	dword [_1208]
	fmul	dword [ebp-236]
	fstp	dword [ebp-208]
	push	2
	push	9
	push	2
	push	_628
	call	_bbArrayNew
	add	esp,16
	mov	dword [ebp-228],eax
	mov	dword [ebp-224],-1
	push	2
	push	9
	push	2
	push	_631
	call	_bbArrayNew
	add	esp,16
	mov	dword [ebp-232],eax
	mov	dword [ebp-212],-1
	push	2
	push	9
	push	2
	push	_634
	call	_bbArrayNew
	add	esp,16
	mov	edi,eax
	push	2
	push	9
	push	2
	push	_636
	call	_bbArrayNew
	add	esp,16
	mov	dword [ebp-28],eax
	mov	dword [ebp-244],0
	jmp	_639
_54:
	mov	esi,0
	jmp	_641
_57:
	mov	eax,dword [ebp-244]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_642
	cmp	esi,1
	sete	al
	movzx	eax,al
_642:
	cmp	eax,0
	je	_644
	jmp	_55
_644:
	add	dword [ebp-224],1
	mov	eax,esi
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-272],eax
	fild	dword [ebp+-272]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-244]
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-272],eax
	fild	dword [ebp+-272]
	sub	esp,4
	fstp	dword [esp]
	call	_bb_CalcWinkel
	add	esp,8
	fadd	dword [_1209]
	fstp	dword [ebp-184]
	mov	ebx,dword [ebp-224]
	mov	eax,ebx
	mov	edx,dword [ebp-228]
	imul	eax,dword [edx+24]
	mov	ebx,eax
	mov	eax,dword [ebp+8]
	fld	dword [eax]
	fstp	qword [ebp-180]
	mov	eax,dword [ebp+16]
	fld	dword [eax]
	fadd	dword [ebp-184]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fstp	qword [ebp-116]
	fld	qword [_1210]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-244]
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-272],eax
	fild	dword [ebp+-272]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-44]
	fld	qword [_1211]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,esi
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-272],eax
	fild	dword [ebp+-272]
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
	fld	dword [ebp-236]
	fmulp	st1,st0
	fld	qword [ebp-116]
	fmulp	st1,st0
	fstp	qword [ebp-116]
	fld	qword [ebp-180]
	fadd	qword [ebp-116]
	fstp	qword [ebp-180]
	fld	qword [ebp-180]
	mov	eax,dword [ebp-228]
	fstp	dword [eax+ebx*4+28]
	mov	eax,dword [ebp-224]
	mov	edx,dword [ebp-228]
	imul	eax,dword [edx+24]
	mov	ebx,eax
	add	ebx,1
	mov	eax,dword [ebp+12]
	fld	dword [eax]
	fstp	qword [ebp-172]
	mov	eax,dword [ebp+16]
	fld	dword [eax]
	fadd	dword [ebp-184]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fstp	qword [ebp-148]
	fld	qword [_1212]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-244]
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-272],eax
	fild	dword [ebp+-272]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-76]
	fld	qword [_1213]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,esi
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-272],eax
	fild	dword [ebp+-272]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-76]
	faddp	st1,st0
	fstp	qword [ebp-76]
	fld	qword [ebp-76]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [ebp-236]
	fmulp	st1,st0
	fld	qword [ebp-148]
	fmulp	st1,st0
	fstp	qword [ebp-148]
	fld	qword [ebp-172]
	fadd	qword [ebp-148]
	fstp	qword [ebp-172]
	fld	qword [ebp-172]
	mov	eax,dword [ebp-228]
	fstp	dword [eax+ebx*4+28]
_55:
	add	esi,1
_641:
	cmp	esi,2
	jle	_57
_56:
_52:
	add	dword [ebp-244],1
_639:
	cmp	dword [ebp-244],2
	jle	_54
_53:
	mov	dword [ebp-224],-1
	mov	dword [ebp-240],0
	jmp	_647
_60:
	mov	esi,0
	jmp	_649
_63:
	mov	eax,dword [ebp-240]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_650
	cmp	esi,1
	sete	al
	movzx	eax,al
_650:
	cmp	eax,0
	je	_652
	jmp	_61
_652:
	add	dword [ebp-212],1
	mov	eax,esi
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-272],eax
	fild	dword [ebp+-272]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-240]
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-272],eax
	fild	dword [ebp+-272]
	sub	esp,4
	fstp	dword [esp]
	call	_bb_CalcWinkel
	add	esp,8
	fadd	dword [_1214]
	fstp	dword [ebp-188]
	mov	ebx,dword [ebp-212]
	mov	eax,ebx
	mov	edx,dword [ebp-232]
	imul	eax,dword [edx+24]
	mov	ebx,eax
	mov	eax,dword [ebp+24]
	fld	dword [eax]
	fstp	qword [ebp-164]
	mov	eax,dword [ebp+32]
	fld	dword [eax]
	fadd	dword [ebp-188]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fstp	qword [ebp-108]
	fld	qword [_1215]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-240]
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-272],eax
	fild	dword [ebp+-272]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-36]
	fld	qword [_1216]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,esi
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-272],eax
	fild	dword [ebp+-272]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-36]
	faddp	st1,st0
	fstp	qword [ebp-36]
	fld	qword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [ebp-236]
	fmulp	st1,st0
	fld	qword [ebp-108]
	fmulp	st1,st0
	fstp	qword [ebp-108]
	fld	qword [ebp-164]
	fadd	qword [ebp-108]
	fstp	qword [ebp-164]
	fld	qword [ebp-164]
	mov	eax,dword [ebp-232]
	fstp	dword [eax+ebx*4+28]
	mov	eax,dword [ebp-212]
	mov	edx,dword [ebp-232]
	imul	eax,dword [edx+24]
	mov	ebx,eax
	add	ebx,1
	mov	eax,dword [ebp+28]
	fld	dword [eax]
	fstp	qword [ebp-156]
	mov	eax,dword [ebp+32]
	fld	dword [eax]
	fadd	dword [ebp-188]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fstp	qword [ebp-140]
	fld	qword [_1217]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-240]
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-272],eax
	fild	dword [ebp+-272]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-68]
	fld	qword [_1218]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,esi
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-272],eax
	fild	dword [ebp+-272]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-68]
	faddp	st1,st0
	fstp	qword [ebp-68]
	fld	qword [ebp-68]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [ebp-236]
	fmulp	st1,st0
	fld	qword [ebp-140]
	fmulp	st1,st0
	fstp	qword [ebp-140]
	fld	qword [ebp-156]
	fadd	qword [ebp-140]
	fstp	qword [ebp-156]
	fld	qword [ebp-156]
	mov	eax,dword [ebp-232]
	fstp	dword [eax+ebx*4+28]
_61:
	add	esi,1
_649:
	cmp	esi,2
	jle	_63
_62:
_58:
	add	dword [ebp-240],1
_647:
	cmp	dword [ebp-240],2
	jle	_60
_59:
	mov	dword [ebp-212],-1
	mov	dword [ebp-268],0
	jmp	_655
_66:
	mov	dword [ebp-248],0
	jmp	_657
_69:
	mov	eax,dword [ebp-268]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_658
	mov	eax,dword [ebp-248]
	cmp	eax,1
	sete	al
	movzx	eax,al
_658:
	cmp	eax,0
	je	_660
	jmp	_67
_660:
	add	dword [ebp-224],1
	mov	esi,0
	jmp	_662
_72:
	mov	ebx,0
	jmp	_664
_75:
	cmp	esi,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_665
	cmp	ebx,1
	sete	al
	movzx	eax,al
_665:
	cmp	eax,0
	je	_667
	jmp	_73
_667:
	add	dword [ebp-212],1
	push	0
	push	dword [ebp-208]
	mov	eax,dword [ebp-212]
	mov	edx,dword [ebp-232]
	imul	eax,dword [edx+24]
	add	eax,1
	mov	edx,dword [ebp-232]
	lea	eax,dword [edx+eax*4+28]
	push	eax
	mov	eax,dword [ebp-212]
	mov	edx,dword [ebp-232]
	imul	eax,dword [edx+24]
	mov	edx,dword [ebp-232]
	lea	eax,dword [edx+eax*4+28]
	push	eax
	push	dword [ebp-208]
	mov	eax,dword [ebp-224]
	mov	edx,dword [ebp-228]
	imul	eax,dword [edx+24]
	add	eax,1
	mov	edx,dword [ebp-228]
	lea	eax,dword [edx+eax*4+28]
	push	eax
	mov	eax,dword [ebp-224]
	mov	edx,dword [ebp-228]
	imul	eax,dword [edx+24]
	mov	edx,dword [ebp-228]
	lea	eax,dword [edx+eax*4+28]
	push	eax
	call	_bb_PushCollision
	add	esp,28
_73:
	add	ebx,1
_664:
	cmp	ebx,2
	jle	_75
_74:
_70:
	add	esi,1
_662:
	cmp	esi,2
	jle	_72
_71:
	mov	dword [ebp-212],-1
_67:
	add	dword [ebp-248],1
_657:
	cmp	dword [ebp-248],2
	jle	_69
_68:
_64:
	add	dword [ebp-268],1
_655:
	cmp	dword [ebp-268],2
	jle	_66
_65:
	mov	dword [ebp-224],-1
	mov	dword [ebp-220],0
	jmp	_669
_78:
	mov	dword [ebp-216],0
	jmp	_671
_81:
	mov	eax,dword [ebp-220]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_672
	mov	eax,dword [ebp-216]
	cmp	eax,1
	sete	al
	movzx	eax,al
_672:
	cmp	eax,0
	je	_674
	jmp	_79
_674:
	add	dword [ebp-224],1
	mov	esi,0
	jmp	_676
_84:
	mov	ebx,0
	jmp	_678
_87:
	cmp	esi,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_679
	cmp	ebx,1
	sete	al
	movzx	eax,al
_679:
	cmp	eax,0
	je	_681
	jmp	_85
_681:
	add	dword [ebp-212],1
	fld	qword [_1219]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-220]
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-272],eax
	fild	dword [ebp+-272]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-16]
	fld	qword [_1220]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-216]
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-272],eax
	fild	dword [ebp+-272]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-16]
	faddp	st1,st0
	fstp	qword [ebp-16]
	fld	qword [ebp-16]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [ebp-236]
	fmulp	st1,st0
	fstp	dword [ebp-24]
	fld	qword [_1221]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,esi
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-272],eax
	fild	dword [ebp+-272]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-8]
	fld	qword [_1222]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,ebx
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-272],eax
	fild	dword [ebp+-272]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-8]
	faddp	st1,st0
	fstp	qword [ebp-8]
	fld	qword [ebp-8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [ebp-236]
	fmulp	st1,st0
	fstp	dword [ebp-20]
	mov	edx,dword [ebp-224]
	imul	edx,dword [edi+24]
	mov	eax,dword [ebp+8]
	fld	dword [eax]
	fstp	dword [edi+edx*4+28]
	mov	eax,dword [ebp-224]
	imul	eax,dword [edi+24]
	add	eax,1
	mov	edx,dword [ebp+12]
	fld	dword [edx]
	fstp	dword [edi+eax*4+28]
	mov	eax,dword [ebp-212]
	mov	edx,dword [ebp-28]
	imul	eax,dword [edx+24]
	mov	edx,dword [ebp+24]
	fld	dword [edx]
	mov	edx,dword [ebp-28]
	fstp	dword [edx+eax*4+28]
	mov	eax,dword [ebp-212]
	mov	edx,dword [ebp-28]
	imul	eax,dword [edx+24]
	add	eax,1
	mov	edx,dword [ebp+28]
	fld	dword [edx]
	mov	edx,dword [ebp-28]
	fstp	dword [edx+eax*4+28]
	push	1
	push	dword [ebp-24]
	mov	eax,dword [ebp-224]
	mov	edx,dword [ebp-228]
	imul	eax,dword [edx+24]
	add	eax,1
	mov	edx,dword [ebp-228]
	lea	eax,dword [edx+eax*4+28]
	push	eax
	mov	eax,dword [ebp-224]
	mov	edx,dword [ebp-228]
	imul	eax,dword [edx+24]
	mov	edx,dword [ebp-228]
	lea	eax,dword [edx+eax*4+28]
	push	eax
	push	dword [ebp-24]
	mov	eax,dword [ebp-224]
	imul	eax,dword [edi+24]
	add	eax,1
	lea	eax,dword [edi+eax*4+28]
	push	eax
	mov	eax,dword [ebp-224]
	imul	eax,dword [edi+24]
	lea	eax,dword [edi+eax*4+28]
	push	eax
	call	_bb_PushCollision
	add	esp,28
	push	1
	push	dword [ebp-20]
	mov	eax,dword [ebp-212]
	mov	edx,dword [ebp-232]
	imul	eax,dword [edx+24]
	add	eax,1
	mov	edx,dword [ebp-232]
	lea	eax,dword [edx+eax*4+28]
	push	eax
	mov	eax,dword [ebp-212]
	mov	edx,dword [ebp-232]
	imul	eax,dword [edx+24]
	mov	edx,dword [ebp-232]
	lea	eax,dword [edx+eax*4+28]
	push	eax
	push	dword [ebp-20]
	mov	eax,dword [ebp-212]
	mov	edx,dword [ebp-28]
	imul	eax,dword [edx+24]
	add	eax,1
	mov	edx,dword [ebp-28]
	lea	eax,dword [edx+eax*4+28]
	push	eax
	mov	eax,dword [ebp-212]
	mov	edx,dword [ebp-28]
	imul	eax,dword [edx+24]
	mov	edx,dword [ebp-28]
	lea	eax,dword [edx+eax*4+28]
	push	eax
	call	_bb_PushCollision
	add	esp,28
_85:
	add	ebx,1
_678:
	cmp	ebx,2
	jle	_87
_86:
_82:
	add	esi,1
_676:
	cmp	esi,2
	jle	_84
_83:
	mov	dword [ebp-212],-1
_79:
	add	dword [ebp-216],1
_671:
	cmp	dword [ebp-216],2
	jle	_81
_80:
_76:
	add	dword [ebp-220],1
_669:
	cmp	dword [ebp-220],2
	jle	_78
_77:
	mov	dword [ebp-224],-1
	fld	dword [_1223]
	fld	dword [_1224]
	mov	ecx,0
	jmp	_687
_90:
	mov	edx,0
	jmp	_689
_93:
	cmp	ecx,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_690
	cmp	edx,1
	sete	al
	movzx	eax,al
_690:
	cmp	eax,0
	je	_692
	jmp	_91
_692:
	add	dword [ebp-224],1
	mov	eax,dword [ebp-224]
	imul	eax,dword [edi+24]
	fld	dword [edi+eax*4+28]
	mov	eax,dword [ebp+8]
	fsub	dword [eax]
	faddp	st2,st0
	mov	eax,dword [ebp-224]
	imul	eax,dword [edi+24]
	add	eax,1
	fld	dword [edi+eax*4+28]
	mov	eax,dword [ebp+12]
	fsub	dword [eax]
	faddp	st1,st0
_91:
	add	edx,1
_689:
	cmp	edx,2
	jle	_93
_92:
_88:
	add	ecx,1
_687:
	cmp	ecx,2
	jle	_90
_89:
	mov	dword [ebp-224],-1
	mov	eax,dword [ebp+8]
	fld	dword [eax]
	faddp	st2,st0
	mov	eax,dword [ebp+8]
	fxch	st1
	fstp	dword [eax]
	mov	eax,dword [ebp+12]
	fld	dword [eax]
	faddp	st1,st0
	mov	eax,dword [ebp+12]
	fstp	dword [eax]
	fld	dword [_1225]
	fld	dword [_1226]
	mov	ecx,0
	jmp	_696
_96:
	mov	edx,0
	jmp	_698
_99:
	cmp	ecx,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_699
	cmp	edx,1
	sete	al
	movzx	eax,al
_699:
	cmp	eax,0
	je	_701
	jmp	_97
_701:
	add	dword [ebp-212],1
	mov	eax,dword [ebp-212]
	mov	ebx,dword [ebp-28]
	imul	eax,dword [ebx+24]
	mov	ebx,dword [ebp-28]
	fld	dword [ebx+eax*4+28]
	mov	eax,dword [ebp+24]
	fsub	dword [eax]
	faddp	st2,st0
	mov	eax,dword [ebp-212]
	mov	ebx,dword [ebp-28]
	imul	eax,dword [ebx+24]
	add	eax,1
	mov	ebx,dword [ebp-28]
	fld	dword [ebx+eax*4+28]
	mov	eax,dword [ebp+28]
	fsub	dword [eax]
	faddp	st1,st0
_97:
	add	edx,1
_698:
	cmp	edx,2
	jle	_99
_98:
_94:
	add	ecx,1
_696:
	cmp	ecx,2
	jle	_96
_95:
	mov	dword [ebp-212],-1
	mov	eax,dword [ebp+24]
	fld	dword [eax]
	faddp	st2,st0
	mov	eax,dword [ebp+24]
	fxch	st1
	fstp	dword [eax]
	mov	eax,dword [ebp+28]
	fld	dword [eax]
	faddp	st1,st0
	mov	eax,dword [ebp+28]
	fstp	dword [eax]
	fld	dword [_1227]
	fstp	dword [ebp-260]
	mov	esi,0
	jmp	_704
_102:
	mov	ebx,0
	jmp	_706
_105:
	cmp	esi,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_707
	cmp	ebx,1
	sete	al
	movzx	eax,al
_707:
	cmp	eax,0
	je	_709
	jmp	_103
_709:
	add	dword [ebp-224],1
	mov	eax,dword [ebp+12]
	fld	dword [eax]
	mov	eax,dword [ebp-224]
	mov	edx,dword [ebp-228]
	imul	eax,dword [edx+24]
	add	eax,1
	mov	edx,dword [ebp-228]
	fsub	dword [edx+eax*4+28]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp+8]
	fld	dword [eax]
	mov	eax,dword [ebp-224]
	mov	edx,dword [ebp-228]
	imul	eax,dword [edx+24]
	mov	edx,dword [ebp-228]
	fsub	dword [edx+eax*4+28]
	sub	esp,4
	fstp	dword [esp]
	call	_bb_CalcWinkel
	add	esp,8
	fadd	dword [_1228]
	fstp	dword [ebp-196]
	mov	eax,dword [ebp+16]
	fld	dword [eax]
	fstp	dword [ebp-84]
	mov	eax,ebx
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-272],eax
	fild	dword [ebp+-272]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,esi
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-272],eax
	fild	dword [ebp+-272]
	sub	esp,4
	fstp	dword [esp]
	call	_bb_CalcWinkel
	add	esp,8
	fld	dword [ebp-84]
	faddp	st1,st0
	fstp	dword [ebp-84]
	fld	dword [ebp-84]
	fadd	dword [_1229]
	fsub	dword [ebp-196]
	fadd	dword [_1230]
	jmp	_106
_108:
	fadd	dword [_1231]
_106:
	fld	dword [_1232]
	fxch	st1
	fucom	st1
	fxch	st1
	fstp	st0
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_108
_107:
	jmp	_109
_111:
	fsub	dword [_1233]
_109:
	fld	dword [_1234]
	fxch	st1
	fucom	st1
	fxch	st1
	fstp	st0
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_111
_110:
	cmp	esi,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_713
	cmp	ebx,0
	sete	al
	movzx	eax,al
_713:
	cmp	eax,0
	jne	_717
	cmp	esi,2
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_715
	cmp	ebx,2
	sete	al
	movzx	eax,al
_715:
_717:
	cmp	eax,0
	jne	_725
	cmp	esi,2
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_719
	cmp	ebx,0
	sete	al
	movzx	eax,al
_719:
	cmp	eax,0
	jne	_723
	cmp	esi,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_721
	cmp	ebx,2
	sete	al
	movzx	eax,al
_721:
_723:
_725:
	cmp	eax,0
	jne	_1290
	fstp	st0
	jmp	_727
_1290:
	fld	dword [ebp-260]
	fsubrp	st1,st0
	fstp	dword [ebp-260]
_727:
	fld	qword [_1235]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,esi
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-272],eax
	fild	dword [ebp+-272]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-100]
	fld	qword [_1236]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,ebx
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-272],eax
	fild	dword [ebp+-272]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-100]
	faddp	st1,st0
	fstp	qword [ebp-100]
	fld	qword [ebp-100]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [ebp-236]
	fmulp	st1,st0
	fstp	dword [ebp-204]
	mov	eax,dword [ebp+20]
	fld	dword [eax]
	fstp	qword [ebp-132]
	fld	qword [_1237]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp+8]
	fld	dword [eax]
	mov	eax,dword [ebp-224]
	mov	edx,dword [ebp-228]
	imul	eax,dword [edx+24]
	mov	edx,dword [ebp-228]
	fsub	dword [edx+eax*4+28]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-60]
	fld	qword [_1238]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp+12]
	fld	dword [eax]
	mov	eax,dword [ebp-224]
	mov	edx,dword [ebp-228]
	imul	eax,dword [edx+24]
	add	eax,1
	mov	edx,dword [ebp-228]
	fsub	dword [edx+eax*4+28]
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
	fld	dword [ebp-204]
	fdivp	st1,st0
	fld	qword [ebp-132]
	fmulp	st1,st0
	fstp	qword [ebp-132]
	fld	qword [ebp-132]
	mov	eax,dword [ebp+20]
	fstp	dword [eax]
_103:
	add	ebx,1
_706:
	cmp	ebx,2
	jle	_105
_104:
_100:
	add	esi,1
_704:
	cmp	esi,2
	jle	_102
_101:
	mov	eax,dword [ebp+16]
	fld	dword [eax]
	fadd	dword [ebp-260]
	mov	eax,dword [ebp+16]
	fstp	dword [eax]
	fld	dword [_1239]
	fstp	dword [ebp-264]
	mov	esi,0
	jmp	_731
_114:
	mov	ebx,0
	jmp	_733
_117:
	cmp	esi,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_734
	cmp	ebx,1
	sete	al
	movzx	eax,al
_734:
	cmp	eax,0
	je	_736
	jmp	_115
_736:
	add	dword [ebp-212],1
	mov	eax,dword [ebp+28]
	fld	dword [eax]
	mov	eax,dword [ebp-212]
	mov	edx,dword [ebp-232]
	imul	eax,dword [edx+24]
	add	eax,1
	mov	edx,dword [ebp-232]
	fsub	dword [edx+eax*4+28]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp+24]
	fld	dword [eax]
	mov	eax,dword [ebp-212]
	mov	edx,dword [ebp-232]
	imul	eax,dword [edx+24]
	mov	edx,dword [ebp-232]
	fsub	dword [edx+eax*4+28]
	sub	esp,4
	fstp	dword [esp]
	call	_bb_CalcWinkel
	add	esp,8
	fadd	dword [_1240]
	fstp	dword [ebp-192]
	mov	eax,dword [ebp+32]
	fld	dword [eax]
	fstp	dword [ebp-80]
	mov	eax,ebx
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-272],eax
	fild	dword [ebp+-272]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,esi
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-272],eax
	fild	dword [ebp+-272]
	sub	esp,4
	fstp	dword [esp]
	call	_bb_CalcWinkel
	add	esp,8
	fld	dword [ebp-80]
	faddp	st1,st0
	fstp	dword [ebp-80]
	fld	dword [ebp-80]
	fadd	dword [_1241]
	fsub	dword [ebp-192]
	fadd	dword [_1242]
	jmp	_118
_120:
	fadd	dword [_1243]
_118:
	fld	dword [_1244]
	fxch	st1
	fucom	st1
	fxch	st1
	fstp	st0
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_120
_119:
	jmp	_121
_123:
	fsub	dword [_1245]
_121:
	fld	dword [_1246]
	fxch	st1
	fucom	st1
	fxch	st1
	fstp	st0
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_123
_122:
	cmp	esi,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_740
	cmp	ebx,0
	sete	al
	movzx	eax,al
_740:
	cmp	eax,0
	jne	_744
	cmp	esi,2
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_742
	cmp	ebx,2
	sete	al
	movzx	eax,al
_742:
_744:
	cmp	eax,0
	jne	_752
	cmp	esi,2
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_746
	cmp	ebx,0
	sete	al
	movzx	eax,al
_746:
	cmp	eax,0
	jne	_750
	cmp	esi,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_748
	cmp	ebx,2
	sete	al
	movzx	eax,al
_748:
_750:
_752:
	cmp	eax,0
	jne	_1291
	fstp	st0
	jmp	_754
_1291:
	fld	dword [ebp-264]
	fsubrp	st1,st0
	fstp	dword [ebp-264]
_754:
	fld	qword [_1247]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,esi
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-272],eax
	fild	dword [ebp+-272]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-92]
	fld	qword [_1248]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,ebx
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-272],eax
	fild	dword [ebp+-272]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-92]
	faddp	st1,st0
	fstp	qword [ebp-92]
	fld	qword [ebp-92]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [ebp-236]
	fmulp	st1,st0
	fstp	dword [ebp-200]
	mov	eax,dword [ebp+36]
	fld	dword [eax]
	fstp	qword [ebp-124]
	fld	qword [_1249]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp+24]
	fld	dword [eax]
	mov	eax,dword [ebp-212]
	mov	edx,dword [ebp-232]
	imul	eax,dword [edx+24]
	mov	edx,dword [ebp-232]
	fsub	dword [edx+eax*4+28]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-52]
	fld	qword [_1250]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp+28]
	fld	dword [eax]
	mov	eax,dword [ebp-212]
	mov	edx,dword [ebp-232]
	imul	eax,dword [edx+24]
	add	eax,1
	mov	edx,dword [ebp-232]
	fsub	dword [edx+eax*4+28]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-52]
	faddp	st1,st0
	fstp	qword [ebp-52]
	fld	qword [ebp-52]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [ebp-200]
	fdivp	st1,st0
	fld	qword [ebp-124]
	fmulp	st1,st0
	fstp	qword [ebp-124]
	fld	qword [ebp-124]
	mov	eax,dword [ebp+36]
	fstp	dword [eax]
_115:
	add	ebx,1
_733:
	cmp	ebx,2
	jle	_117
_116:
_112:
	add	esi,1
_731:
	cmp	esi,2
	jle	_114
_113:
	mov	eax,dword [ebp+32]
	fld	dword [eax]
	fadd	dword [ebp-264]
	mov	eax,dword [ebp+32]
	fstp	dword [eax]
_625:
	mov	eax,0
	jmp	_291
_291:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_BufferTower:
	push	ebp
	mov	ebp,esp
	fld	dword [ebp+8]
	fld	dword [ebp+12]
	fld	dword [ebp+16]
	fxch	st1
	fsubp	st2,st0
	fxch	st1
	fadd	dword [_1292]
	jmp	_124
_126:
	fadd	dword [_1293]
_124:
	fld	dword [_1294]
	fxch	st1
	fucom	st1
	fxch	st1
	fstp	st0
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_126
_125:
	jmp	_127
_129:
	fsub	dword [_1295]
_127:
	fld	dword [_1296]
	fxch	st1
	fucom	st1
	fxch	st1
	fstp	st0
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_129
_128:
	fld	dword [_1297]
	mov	edx,0
	fxch	st1
	fucom	st2
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_759
	fxch	st1
	fstp	st0
	fld	st1
	fchs
	mov	edx,1
	fxch	st1
_759:
	fld	st2
	fchs
	fxch	st1
	fucom	st1
	fxch	st1
	fstp	st0
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	je	_1305
	fxch	st2
	fstp	st0
	jmp	_760
_1305:
	fxch	st1
	fstp	st0
	mov	edx,1
	fxch	st1
_760:
	cmp	edx,0
	je	_1306
	fxch	st1
	fstp	st0
	jmp	_761
_1306:
	fstp	st0
	fchs
_761:
	jmp	_296
_296:
	mov	esp,ebp
	pop	ebp
	ret
_bb_BufferTarget:
	push	ebp
	mov	ebp,esp
	fld	dword [ebp+8]
	fld	dword [ebp+12]
	fld	dword [ebp+16]
	fxch	st1
	fsubp	st2,st0
	fxch	st1
	fadd	dword [_1307]
	jmp	_130
_132:
	fadd	dword [_1308]
_130:
	fld	dword [_1309]
	fxch	st1
	fucom	st1
	fxch	st1
	fstp	st0
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_132
_131:
	jmp	_133
_135:
	fsub	dword [_1310]
_133:
	fld	dword [_1311]
	fxch	st1
	fucom	st1
	fxch	st1
	fstp	st0
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_135
_134:
	fld	dword [_1312]
	mov	edx,0
	fxch	st1
	fucom	st2
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_765
	mov	edx,1
_765:
	fxch	st2
	fchs
	fxch	st2
	fucomp	st2
	fxch	st1
	fstp	st0
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_766
	mov	edx,1
_766:
	cmp	edx,0
	jne	_767
	fstp	st0
	fld	dword [_1313]
_767:
	jmp	_301
_301:
	mov	esp,ebp
	pop	ebp
	ret
_bb_CalcWinkel:
	push	ebp
	mov	ebp,esp
	fld	dword [ebp+8]
	fld	dword [ebp+12]
	sub	esp,8
	fstp	qword [esp]
	sub	esp,8
	fstp	qword [esp]
	call	_bbATan2
	add	esp,16
	fchs
	jmp	_136
_138:
	fadd	dword [_1321]
_136:
	fldz
	fxch	st1
	fucom	st1
	fxch	st1
	fstp	st0
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_138
_137:
	jmp	_139
_141:
	fsub	dword [_1322]
_139:
	fld	dword [_1323]
	fxch	st1
	fucom	st1
	fxch	st1
	fstp	st0
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_141
_140:
	jmp	_305
_305:
	mov	esp,ebp
	pop	ebp
	ret
_bb_waypointtodest:
	push	ebp
	mov	ebp,esp
	sub	esp,36
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-32],_bbNullObject
	mov	eax,dword [_bb_waypointlist]
	mov	dword [ebp-24],eax
	mov	eax,dword [ebp-24]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-28],eax
	jmp	_142
_144:
	mov	eax,dword [ebp-28]
	push	_bb_Twaypoint
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_142
	mov	dword [esi+16],9999
	fldz
	fstp	dword [esi+32]
	cmp	dword [esi+28],1
	jne	_776
	mov	dword [esi+28],0
	mov	edi,0
	mov	eax,dword [esi+36]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp-12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-16],eax
	jmp	_145
_147:
	mov	eax,dword [ebp-16]
	push	_bb_Twaypoint
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_786
	push	eax
	call	_bbGCFree
	add	esp,4
_786:
	mov	dword [esi+20],ebx
	cmp	dword [esi+20],_bbNullObject
	je	_145
	fld	qword [_1328]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [esi+8]
	mov	eax,dword [esi+20]
	fsub	dword [eax+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-8]
	fld	qword [_1329]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [esi+12]
	mov	eax,dword [esi+20]
	fsub	dword [eax+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-8]
	faddp	st1,st0
	fstp	qword [ebp-8]
	fld	qword [ebp-8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	mov	eax,dword [esi+24]
	fstp	dword [eax+edi*4+24]
	add	edi,1
_145:
	mov	eax,dword [ebp-16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_147
_146:
_776:
_142:
	mov	eax,dword [ebp-28]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_144
_143:
	mov	eax,dword [ebp+12]
	cmp	dword [ebp+8],eax
	jne	_788
	mov	eax,dword [ebp+12]
	jmp	_309
_788:
	push	1065353216
	push	dword [ebp+12]
	call	_bb_wayray
	fstp	st0
	add	esp,8
	fld	dword [_1330]
	fstp	dword [ebp-20]
	mov	eax,dword [ebp+8]
	mov	esi,dword [eax+36]
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_148
_150:
	mov	eax,edi
	push	_bb_Twaypoint
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+20]
	dec	dword [eax+4]
	jnz	_799
	push	eax
	call	_bbGCFree
	add	esp,4
_799:
	mov	eax,dword [ebp+8]
	mov	dword [eax+20],ebx
	mov	eax,dword [ebp+8]
	cmp	dword [eax+20],_bbNullObject
	je	_148
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+20]
	mov	eax,dword [eax+16]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	fld	dword [ebp-20]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_800
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+20]
	mov	dword [ebp-32],eax
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+20]
	mov	eax,dword [eax+16]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	fstp	dword [ebp-20]
_800:
_148:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_150
_149:
	mov	eax,dword [ebp-32]
	jmp	_309
_309:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_wayray:
	push	ebp
	mov	ebp,esp
	sub	esp,36
	push	ebx
	push	esi
	push	edi
	mov	ebx,dword [ebp+8]
	fld1
	fstp	dword [ebx+32]
	fld1
	fld	dword [ebp+12]
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_801
	fld	dword [ebp+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebx+16],eax
_801:
	push	16
	push	_802
	call	_bbArrayNew1D
	add	esp,8
	mov	dword [ebp-16],eax
	mov	edi,0
	mov	eax,dword [ebx+36]
	mov	dword [ebp-24],eax
	mov	eax,dword [ebp-24]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-28],eax
	jmp	_151
_153:
	mov	eax,dword [ebp-28]
	push	_bb_Twaypoint
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_813
	push	eax
	call	_bbGCFree
	add	esp,4
_813:
	mov	dword [ebx+20],esi
	cmp	dword [ebx+20],_bbNullObject
	je	_151
	mov	eax,dword [ebx+20]
	mov	eax,dword [eax+16]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	mov	eax,dword [ebx+24]
	fld	dword [eax+edi*4+24]
	fadd	dword [ebp+12]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_814
	cmp	ebx,dword [ebx+20]
	je	_815
	mov	esi,dword [ebx+20]
	mov	eax,dword [ebx+24]
	fld	dword [eax+edi*4+24]
	fadd	dword [ebp+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [esi+16],eax
	mov	eax,dword [ebx+20]
	fld	dword [eax+32]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_816
	mov	eax,dword [ebx+24]
	fld	dword [eax+edi*4+24]
	fadd	dword [ebp+12]
	mov	eax,dword [ebp-16]
	fstp	dword [eax+edi*4+24]
_816:
_815:
_814:
	add	edi,1
_151:
	mov	eax,dword [ebp-28]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_153
_152:
	fld	dword [_1340]
	mov	dword [ebp-32],-1
	mov	edx,0
	jmp	_820
_156:
	mov	eax,dword [ebp-16]
	fld	dword [eax+edx*4+24]
	fucomp	st1
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	je	_821
	mov	eax,dword [ebp-16]
	fld	dword [eax+edx*4+24]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
_821:
	cmp	eax,0
	je	_823
	fstp	st0
	mov	dword [ebp-32],edx
	mov	eax,dword [ebp-16]
	fld	dword [eax+edx*4+24]
_823:
_154:
	add	edx,1
_820:
	cmp	edx,15
	jle	_156
	fstp	st0
_155:
	mov	edi,0
	mov	eax,dword [ebx+36]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp-4]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-12],eax
	jmp	_157
_159:
	mov	eax,dword [ebp-12]
	push	_bb_Twaypoint
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_832
	push	eax
	call	_bbGCFree
	add	esp,4
_832:
	mov	dword [ebx+20],esi
	cmp	dword [ebx+20],_bbNullObject
	je	_157
	cmp	dword [ebp-32],edi
	jne	_833
	mov	eax,dword [ebx+24]
	fld	dword [eax+edi*4+24]
	fadd	dword [ebp+12]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebx+20]
	call	_bb_wayray
	fstp	st0
	add	esp,8
_833:
	add	edi,1
_157:
	mov	eax,dword [ebp-12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_159
_158:
	mov	edi,0
	mov	eax,dword [ebx+36]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-20],eax
	jmp	_160
_162:
	mov	eax,dword [ebp-20]
	push	_bb_Twaypoint
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_842
	push	eax
	call	_bbGCFree
	add	esp,4
_842:
	mov	dword [ebx+20],esi
	cmp	dword [ebx+20],_bbNullObject
	je	_160
	cmp	dword [ebp-32],edi
	je	_843
	mov	eax,dword [ebx+20]
	fld	dword [eax+32]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_844
	mov	eax,dword [ebx+24]
	fld	dword [eax+edi*4+24]
	fadd	dword [ebp+12]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebx+20]
	call	_bb_wayray
	fstp	st0
	add	esp,8
_844:
_843:
	add	edi,1
_160:
	mov	eax,dword [ebp-20]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_162
_161:
	mov	eax,dword [ebx+16]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	jmp	_313
_313:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_maptodest:
	push	ebp
	mov	ebp,esp
	sub	esp,52
	push	ebx
	push	esi
	push	edi
	fld	dword [_1357]
	fstp	dword [ebp-40]
	push	3
	mov	eax,dword [ebp+32]
	add	eax,1
	push	eax
	mov	eax,dword [ebp+28]
	add	eax,1
	push	eax
	push	3
	push	_846
	call	_bbArrayNew
	add	esp,20
	mov	dword [ebp-4],eax
	mov	dword [ebp-12],0
	mov	eax,dword [ebp+28]
	mov	dword [ebp-48],eax
	jmp	_849
_165:
	mov	edi,0
	mov	eax,dword [ebp+32]
	mov	dword [ebp-28],eax
	jmp	_852
_168:
	mov	ebx,dword [ebp-4]
	mov	eax,dword [ebp-12]
	mov	edx,dword [ebp-4]
	imul	eax,dword [edx+24]
	mov	ecx,edi
	mov	edx,dword [ebp-4]
	imul	ecx,dword [edx+28]
	add	eax,ecx
	mov	ecx,eax
	add	ecx,2
	mov	eax,dword [ebp+24]
	mov	edx,dword [eax]
	mov	eax,dword [ebp-12]
	mov	esi,dword [ebp+24]
	mov	esi,dword [esi]
	imul	eax,dword [esi+24]
	add	eax,edi
	mov	eax,dword [edx+eax*4+28]
	mov	dword [ebx+ecx*4+32],eax
	mov	edx,dword [ebp-4]
	mov	eax,dword [ebp-12]
	mov	ecx,dword [ebp-4]
	imul	eax,dword [ecx+24]
	mov	ebx,edi
	mov	ecx,dword [ebp-4]
	imul	ebx,dword [ecx+28]
	add	eax,ebx
	add	eax,1
	mov	dword [edx+eax*4+32],9999
_166:
	add	edi,1
_852:
	cmp	edi,dword [ebp-28]
	jle	_168
_167:
_163:
	add	dword [ebp-12],1
_849:
	mov	eax,dword [ebp-48]
	cmp	dword [ebp-12],eax
	jle	_165
_164:
	fld	dword [ebp+8]
	fld	dword [ebp+16]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_854
	fld	dword [ebp+12]
	fld	dword [ebp+20]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
_854:
	cmp	eax,0
	je	_856
	fld	dword [_1358]
	jmp	_322
_856:
	fldz
	fld	dword [ebp+8]
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_857
	fld	dword [_1359]
	jmp	_322
_857:
	mov	eax,dword [ebp+28]
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	fld	dword [ebp+8]
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_858
	fld	dword [_1360]
	jmp	_322
_858:
	fldz
	fld	dword [ebp+12]
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_859
	fld	dword [_1361]
	jmp	_322
_859:
	mov	eax,dword [ebp+32]
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	fld	dword [ebp+12]
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_860
	fld	dword [_1362]
	jmp	_322
_860:
	fldz
	fld	dword [ebp+16]
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_861
	fld	dword [_1363]
	jmp	_322
_861:
	mov	eax,dword [ebp+28]
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	fld	dword [ebp+16]
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_862
	fld	dword [_1364]
	jmp	_322
_862:
	fldz
	fld	dword [ebp+20]
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_863
	fld	dword [_1365]
	jmp	_322
_863:
	mov	eax,dword [ebp+32]
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	fld	dword [ebp+20]
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_864
	fld	dword [_1366]
	jmp	_322
_864:
	mov	esi,dword [ebp-4]
	fld	dword [ebp+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	ebx,eax
	mov	eax,dword [ebp-4]
	imul	ebx,dword [eax+24]
	fld	dword [ebp+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	edx,dword [ebp-4]
	imul	eax,dword [edx+28]
	add	ebx,eax
	add	ebx,1
	mov	dword [esi+ebx*4+32],1
	mov	eax,dword [ebp-4]
	inc	dword [eax+4]
	push	1065353216
	push	dword [ebp+32]
	push	dword [ebp+28]
	lea	eax,dword [ebp-4]
	push	eax
	fld	dword [ebp+20]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp+16]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_bb_mapray
	add	esp,24
	mov	eax,dword [ebp-4]
	dec	dword [eax+4]
	jnz	_865
	push	dword [ebp-4]
	call	_bbGCFree
	add	esp,4
_865:
	fld	dword [_1367]
	fstp	dword [ebp-36]
	mov	dword [ebp-32],-1
	mov	dword [ebp-20],-1
	jmp	_870
_171:
	mov	edi,-1
	jmp	_872
_174:
	mov	eax,dword [ebp-20]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_873
	cmp	edi,0
	sete	al
	movzx	eax,al
_873:
	cmp	eax,0
	je	_875
	jmp	_876
_875:
	mov	eax,dword [ebp-20]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_877
	cmp	edi,-1
	sete	al
	movzx	eax,al
_877:
	cmp	eax,0
	je	_879
	mov	dword [ebp-32],315
_879:
	mov	eax,dword [ebp-20]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_880
	cmp	edi,0
	sete	al
	movzx	eax,al
_880:
	cmp	eax,0
	je	_882
	mov	dword [ebp-32],180
_882:
	mov	eax,dword [ebp-20]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_883
	cmp	edi,1
	sete	al
	movzx	eax,al
_883:
	cmp	eax,0
	je	_885
	mov	dword [ebp-32],45
_885:
	mov	eax,dword [ebp-20]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_886
	cmp	edi,-1
	sete	al
	movzx	eax,al
_886:
	cmp	eax,0
	je	_888
	mov	dword [ebp-32],270
_888:
	mov	eax,dword [ebp-20]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_889
	cmp	edi,1
	sete	al
	movzx	eax,al
_889:
	cmp	eax,0
	je	_891
	mov	dword [ebp-32],90
_891:
	mov	eax,dword [ebp-20]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_892
	cmp	edi,-1
	sete	al
	movzx	eax,al
_892:
	cmp	eax,0
	je	_894
	mov	dword [ebp-32],225
_894:
	mov	eax,dword [ebp-20]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_895
	cmp	edi,0
	sete	al
	movzx	eax,al
_895:
	cmp	eax,0
	je	_897
	mov	dword [ebp-32],0
_897:
	mov	eax,dword [ebp-20]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_898
	cmp	edi,1
	sete	al
	movzx	eax,al
_898:
	cmp	eax,0
	je	_900
	mov	dword [ebp-32],135
_900:
	mov	esi,dword [ebp-4]
	fld	dword [ebp+8]
	mov	eax,dword [ebp-20]
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	faddp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	edx,dword [ebp-4]
	imul	eax,dword [edx+24]
	mov	ebx,eax
	fld	dword [ebp+12]
	mov	dword [ebp+-52],edi
	fild	dword [ebp+-52]
	faddp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	edx,dword [ebp-4]
	imul	eax,dword [edx+28]
	add	ebx,eax
	mov	eax,ebx
	add	eax,1
	mov	eax,dword [esi+eax*4+32]
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	fld	dword [ebp-36]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_901
	mov	eax,dword [ebp-32]
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	fstp	dword [ebp-40]
	mov	esi,dword [ebp-4]
	fld	dword [ebp+8]
	mov	eax,dword [ebp-20]
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	faddp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	edx,dword [ebp-4]
	imul	eax,dword [edx+24]
	mov	ebx,eax
	fld	dword [ebp+12]
	mov	dword [ebp+-52],edi
	fild	dword [ebp+-52]
	faddp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	edx,dword [ebp-4]
	imul	eax,dword [edx+28]
	add	ebx,eax
	mov	eax,ebx
	add	eax,1
	mov	eax,dword [esi+eax*4+32]
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	fstp	dword [ebp-36]
_901:
_876:
_172:
	add	edi,1
_872:
	cmp	edi,1
	jle	_174
_173:
_169:
	add	dword [ebp-20],1
_870:
	cmp	dword [ebp-20],1
	jle	_171
_170:
	mov	dword [ebp-16],0
	mov	eax,dword [ebp+28]
	mov	dword [ebp-44],eax
	jmp	_903
_177:
	mov	dword [ebp-8],0
	mov	eax,dword [ebp+32]
	mov	dword [ebp-24],eax
	jmp	_906
_180:
	mov	eax,dword [ebp+24]
	mov	edi,dword [eax]
	mov	eax,dword [ebp-16]
	mov	edx,dword [ebp+24]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	esi,eax
	add	esi,dword [ebp-8]
	mov	ebx,dword [ebp-4]
	mov	eax,dword [ebp-16]
	mov	edx,dword [ebp-4]
	imul	eax,dword [edx+24]
	mov	ecx,eax
	mov	edx,dword [ebp-8]
	mov	eax,dword [ebp-4]
	imul	edx,dword [eax+28]
	add	ecx,edx
	mov	eax,ecx
	add	eax,1
	mov	eax,dword [ebx+eax*4+32]
	mov	dword [edi+esi*4+28],eax
_178:
	add	dword [ebp-8],1
_906:
	mov	eax,dword [ebp-24]
	cmp	dword [ebp-8],eax
	jle	_180
_179:
_175:
	add	dword [ebp-16],1
_903:
	mov	eax,dword [ebp-44]
	cmp	dword [ebp-16],eax
	jle	_177
_176:
	fld	dword [ebp-40]
	jmp	_322
_322:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_mapray:
	push	ebp
	mov	ebp,esp
	sub	esp,28
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+16]
	mov	edx,dword [eax]
	mov	eax,dword [ebp+8]
	mov	ecx,dword [ebp+16]
	mov	ecx,dword [ecx]
	imul	eax,dword [ecx+24]
	mov	ebx,dword [ebp+12]
	mov	ecx,dword [ebp+16]
	mov	ecx,dword [ecx]
	imul	ebx,dword [ecx+28]
	add	eax,ebx
	mov	dword [edx+eax*4+32],1
	mov	eax,dword [ebp+8]
	cmp	eax,0
	setg	al
	movzx	eax,al
	cmp	eax,0
	je	_908
	mov	eax,dword [ebp+8]
	cmp	eax,dword [ebp+20]
	setl	al
	movzx	eax,al
_908:
	cmp	eax,0
	je	_910
	mov	eax,dword [ebp+12]
	cmp	eax,0
	setg	al
	movzx	eax,al
_910:
	cmp	eax,0
	je	_912
	mov	eax,dword [ebp+12]
	cmp	eax,dword [ebp+24]
	setl	al
	movzx	eax,al
_912:
	cmp	eax,0
	je	_914
	fld1
	fld	dword [ebp+28]
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_915
	mov	eax,dword [ebp+16]
	mov	esi,dword [eax]
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+16]
	mov	eax,dword [eax]
	imul	ebx,dword [eax+24]
	mov	edx,dword [ebp+12]
	mov	eax,dword [ebp+16]
	mov	eax,dword [eax]
	imul	edx,dword [eax+28]
	add	ebx,edx
	add	ebx,1
	fld	dword [ebp+28]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [esi+ebx*4+32],eax
_915:
	mov	dword [ebp-20],-1
	jmp	_917
_183:
	mov	dword [ebp-12],-1
	jmp	_919
_186:
	mov	eax,dword [ebp-20]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_920
	mov	eax,dword [ebp-12]
	cmp	eax,0
	sete	al
	movzx	eax,al
_920:
	cmp	eax,0
	je	_922
	jmp	_923
_922:
	fld	dword [_1401]
	fstp	dword [ebp-4]
	mov	eax,dword [ebp-20]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_925
	mov	eax,dword [ebp-12]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_925:
	cmp	eax,0
	je	_927
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-4]
_927:
	mov	eax,dword [ebp-20]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_928
	mov	eax,dword [ebp-12]
	cmp	eax,0
	sete	al
	movzx	eax,al
_928:
	cmp	eax,0
	je	_930
	fld	dword [_1402]
	fstp	dword [ebp-4]
_930:
	mov	eax,dword [ebp-20]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_931
	mov	eax,dword [ebp-12]
	cmp	eax,1
	sete	al
	movzx	eax,al
_931:
	cmp	eax,0
	je	_933
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-4]
_933:
	mov	eax,dword [ebp-20]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_934
	mov	eax,dword [ebp-12]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_934:
	cmp	eax,0
	je	_936
	fld	dword [_1403]
	fstp	dword [ebp-4]
_936:
	mov	eax,dword [ebp-20]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_937
	mov	eax,dword [ebp-12]
	cmp	eax,1
	sete	al
	movzx	eax,al
_937:
	cmp	eax,0
	je	_939
	fld	dword [_1404]
	fstp	dword [ebp-4]
_939:
	mov	eax,dword [ebp-20]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_940
	mov	eax,dword [ebp-12]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_940:
	cmp	eax,0
	je	_942
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-4]
_942:
	mov	eax,dword [ebp-20]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_943
	mov	eax,dword [ebp-12]
	cmp	eax,0
	sete	al
	movzx	eax,al
_943:
	cmp	eax,0
	je	_945
	fld	dword [_1405]
	fstp	dword [ebp-4]
_945:
	mov	eax,dword [ebp-20]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_946
	mov	eax,dword [ebp-12]
	cmp	eax,1
	sete	al
	movzx	eax,al
_946:
	cmp	eax,0
	je	_948
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-4]
_948:
	mov	eax,dword [ebp+16]
	mov	ecx,dword [eax]
	mov	edx,dword [ebp+8]
	add	edx,dword [ebp-20]
	mov	eax,dword [ebp+16]
	mov	eax,dword [eax]
	imul	edx,dword [eax+24]
	mov	eax,dword [ebp+12]
	add	eax,dword [ebp-12]
	mov	ebx,dword [ebp+16]
	mov	ebx,dword [ebx]
	imul	eax,dword [ebx+28]
	add	edx,eax
	add	edx,2
	cmp	dword [ecx+edx*4+32],0
	jne	_949
	mov	eax,dword [ebp+16]
	mov	ecx,dword [eax]
	mov	edx,dword [ebp+8]
	add	edx,dword [ebp-20]
	mov	eax,dword [ebp+16]
	mov	eax,dword [eax]
	imul	edx,dword [eax+24]
	mov	eax,dword [ebp+12]
	add	eax,dword [ebp-12]
	mov	ebx,dword [ebp+16]
	mov	ebx,dword [ebx]
	imul	eax,dword [ebx+28]
	add	edx,eax
	add	edx,1
	mov	eax,dword [ecx+edx*4+32]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	fld	dword [ebp-4]
	fadd	dword [ebp+28]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_950
	mov	eax,dword [ebp+16]
	mov	esi,dword [eax]
	mov	ebx,dword [ebp+8]
	add	ebx,dword [ebp-20]
	mov	eax,dword [ebp+16]
	mov	eax,dword [eax]
	imul	ebx,dword [eax+24]
	mov	eax,dword [ebp+12]
	add	eax,dword [ebp-12]
	mov	edx,dword [ebp+16]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	add	ebx,eax
	add	ebx,1
	fld	dword [ebp-4]
	fadd	dword [ebp+28]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [esi+ebx*4+32],eax
_950:
_949:
	mov	eax,dword [ebp+16]
	mov	edi,dword [eax]
	mov	eax,dword [ebp+8]
	add	eax,dword [ebp-20]
	mov	edx,dword [ebp+16]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edx,dword [ebp+12]
	add	edx,dword [ebp-12]
	mov	ecx,dword [ebp+16]
	mov	ecx,dword [ecx]
	imul	edx,dword [ecx+28]
	add	eax,edx
	mov	ebx,eax
	add	ebx,1
	mov	eax,dword [ebp+16]
	mov	ecx,dword [eax]
	mov	eax,dword [ebp+8]
	mov	edx,dword [ebp+16]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edx,eax
	mov	eax,dword [ebp+12]
	mov	esi,dword [ebp+16]
	mov	esi,dword [esi]
	imul	eax,dword [esi+28]
	add	edx,eax
	mov	eax,edx
	add	eax,1
	mov	eax,dword [ecx+eax*4+32]
	cmp	dword [edi+ebx*4+32],eax
	jge	_951
	mov	eax,dword [ebp+16]
	mov	edi,dword [eax]
	mov	eax,dword [ebp+8]
	mov	edx,dword [ebp+16]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	ecx,dword [ebp+12]
	mov	edx,dword [ebp+16]
	mov	edx,dword [edx]
	imul	ecx,dword [edx+28]
	add	eax,ecx
	mov	ebx,eax
	add	ebx,1
	mov	eax,dword [ebp+16]
	mov	ecx,dword [eax]
	mov	eax,dword [ebp+8]
	add	eax,dword [ebp-20]
	mov	edx,dword [ebp+16]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edx,eax
	mov	eax,dword [ebp+12]
	add	eax,dword [ebp-12]
	mov	esi,dword [ebp+16]
	mov	esi,dword [esi]
	imul	eax,dword [esi+28]
	add	edx,eax
	mov	eax,edx
	add	eax,1
	mov	eax,dword [ecx+eax*4+32]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	fadd	dword [ebp-4]
	fadd	dword [ebp+28]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [edi+ebx*4+32],eax
_951:
_923:
_184:
	add	dword [ebp-12],1
_919:
	cmp	dword [ebp-12],1
	jle	_186
_185:
_181:
	add	dword [ebp-20],1
_917:
	cmp	dword [ebp-20],1
	jle	_183
_182:
	mov	edi,-1
	jmp	_953
_189:
	mov	ebx,-1
	jmp	_955
_192:
	cmp	edi,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_956
	cmp	ebx,0
	sete	al
	movzx	eax,al
_956:
	cmp	eax,0
	je	_958
	jmp	_959
_958:
	fld	dword [_1406]
	cmp	edi,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_961
	cmp	ebx,-1
	sete	al
	movzx	eax,al
_961:
	cmp	eax,0
	je	_963
	fstp	st0
	fld	dword [_bb_diagonal]
_963:
	cmp	edi,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_964
	cmp	ebx,0
	sete	al
	movzx	eax,al
_964:
	cmp	eax,0
	je	_966
	fstp	st0
	fld	dword [_1407]
_966:
	cmp	edi,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_967
	cmp	ebx,1
	sete	al
	movzx	eax,al
_967:
	cmp	eax,0
	je	_969
	fstp	st0
	fld	dword [_bb_diagonal]
_969:
	cmp	edi,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_970
	cmp	ebx,-1
	sete	al
	movzx	eax,al
_970:
	cmp	eax,0
	je	_972
	fstp	st0
	fld	dword [_1408]
_972:
	cmp	edi,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_973
	cmp	ebx,1
	sete	al
	movzx	eax,al
_973:
	cmp	eax,0
	je	_975
	fstp	st0
	fld	dword [_1409]
_975:
	cmp	edi,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_976
	cmp	ebx,-1
	sete	al
	movzx	eax,al
_976:
	cmp	eax,0
	je	_978
	fstp	st0
	fld	dword [_bb_diagonal]
_978:
	cmp	edi,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_979
	cmp	ebx,0
	sete	al
	movzx	eax,al
_979:
	cmp	eax,0
	je	_981
	fstp	st0
	fld	dword [_1410]
_981:
	cmp	edi,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_982
	cmp	ebx,1
	sete	al
	movzx	eax,al
_982:
	cmp	eax,0
	je	_984
	fstp	st0
	fld	dword [_bb_diagonal]
_984:
	mov	eax,dword [ebp+16]
	mov	ecx,dword [eax]
	mov	eax,dword [ebp+8]
	add	eax,edi
	mov	edx,dword [ebp+16]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edx,eax
	mov	eax,dword [ebp+12]
	add	eax,ebx
	mov	esi,dword [ebp+16]
	mov	esi,dword [esi]
	imul	eax,dword [esi+28]
	add	edx,eax
	cmp	dword [ecx+edx*4+32],0
	je	_1484
	fstp	st0
	jmp	_985
_1484:
	fadd	dword [ebp+28]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebp+24]
	push	dword [ebp+20]
	mov	eax,dword [ebp+16]
	lea	eax,dword [eax]
	push	eax
	mov	eax,dword [ebp+12]
	add	eax,ebx
	push	eax
	mov	eax,dword [ebp+8]
	add	eax,edi
	push	eax
	call	_bb_mapray
	add	esp,24
_985:
_959:
_190:
	add	ebx,1
_955:
	cmp	ebx,1
	jle	_192
_191:
_187:
	add	edi,1
_953:
	cmp	edi,1
	jle	_189
_188:
	mov	dword [ebp-24],-1
	jmp	_987
_195:
	mov	dword [ebp-16],-1
	jmp	_989
_198:
	mov	eax,dword [ebp-24]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_990
	mov	eax,dword [ebp-16]
	cmp	eax,0
	sete	al
	movzx	eax,al
_990:
	cmp	eax,0
	je	_992
	jmp	_993
_992:
	fld	dword [_1411]
	fstp	dword [ebp-8]
	mov	eax,dword [ebp-24]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_995
	mov	eax,dword [ebp-16]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_995:
	cmp	eax,0
	je	_997
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-8]
_997:
	mov	eax,dword [ebp-24]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_998
	mov	eax,dword [ebp-16]
	cmp	eax,0
	sete	al
	movzx	eax,al
_998:
	cmp	eax,0
	je	_1000
	fld	dword [_1412]
	fstp	dword [ebp-8]
_1000:
	mov	eax,dword [ebp-24]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1001
	mov	eax,dword [ebp-16]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1001:
	cmp	eax,0
	je	_1003
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-8]
_1003:
	mov	eax,dword [ebp-24]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1004
	mov	eax,dword [ebp-16]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_1004:
	cmp	eax,0
	je	_1006
	fld	dword [_1413]
	fstp	dword [ebp-8]
_1006:
	mov	eax,dword [ebp-24]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1007
	mov	eax,dword [ebp-16]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1007:
	cmp	eax,0
	je	_1009
	fld	dword [_1414]
	fstp	dword [ebp-8]
_1009:
	mov	eax,dword [ebp-24]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1010
	mov	eax,dword [ebp-16]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_1010:
	cmp	eax,0
	je	_1012
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-8]
_1012:
	mov	eax,dword [ebp-24]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1013
	mov	eax,dword [ebp-16]
	cmp	eax,0
	sete	al
	movzx	eax,al
_1013:
	cmp	eax,0
	je	_1015
	fld	dword [_1415]
	fstp	dword [ebp-8]
_1015:
	mov	eax,dword [ebp-24]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1016
	mov	eax,dword [ebp-16]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1016:
	cmp	eax,0
	je	_1018
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-8]
_1018:
	mov	eax,dword [ebp+16]
	mov	ecx,dword [eax]
	mov	edx,dword [ebp+8]
	add	edx,dword [ebp-24]
	mov	eax,dword [ebp+16]
	mov	eax,dword [eax]
	imul	edx,dword [eax+24]
	mov	eax,dword [ebp+12]
	add	eax,dword [ebp-16]
	mov	ebx,dword [ebp+16]
	mov	ebx,dword [ebx]
	imul	eax,dword [ebx+28]
	add	edx,eax
	add	edx,2
	cmp	dword [ecx+edx*4+32],0
	jne	_1019
	mov	eax,dword [ebp+16]
	mov	ecx,dword [eax]
	mov	edx,dword [ebp+8]
	add	edx,dword [ebp-24]
	mov	eax,dword [ebp+16]
	mov	eax,dword [eax]
	imul	edx,dword [eax+24]
	mov	eax,dword [ebp+12]
	add	eax,dword [ebp-16]
	mov	ebx,dword [ebp+16]
	mov	ebx,dword [ebx]
	imul	eax,dword [ebx+28]
	add	edx,eax
	add	edx,1
	mov	eax,dword [ecx+edx*4+32]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	fld	dword [ebp-8]
	fadd	dword [ebp+28]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_1020
	mov	eax,dword [ebp+16]
	mov	esi,dword [eax]
	mov	ebx,dword [ebp+8]
	add	ebx,dword [ebp-24]
	mov	eax,dword [ebp+16]
	mov	eax,dword [eax]
	imul	ebx,dword [eax+24]
	mov	eax,dword [ebp+12]
	add	eax,dword [ebp-16]
	mov	edx,dword [ebp+16]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	add	ebx,eax
	add	ebx,1
	fld	dword [ebp-8]
	fadd	dword [ebp+28]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [esi+ebx*4+32],eax
_1020:
_1019:
	mov	eax,dword [ebp+16]
	mov	edi,dword [eax]
	mov	eax,dword [ebp+8]
	add	eax,dword [ebp-24]
	mov	edx,dword [ebp+16]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edx,dword [ebp+12]
	add	edx,dword [ebp-16]
	mov	ecx,dword [ebp+16]
	mov	ecx,dword [ecx]
	imul	edx,dword [ecx+28]
	add	eax,edx
	mov	ebx,eax
	add	ebx,1
	mov	eax,dword [ebp+16]
	mov	ecx,dword [eax]
	mov	eax,dword [ebp+8]
	mov	edx,dword [ebp+16]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edx,eax
	mov	eax,dword [ebp+12]
	mov	esi,dword [ebp+16]
	mov	esi,dword [esi]
	imul	eax,dword [esi+28]
	add	edx,eax
	mov	eax,edx
	add	eax,1
	mov	eax,dword [ecx+eax*4+32]
	cmp	dword [edi+ebx*4+32],eax
	jge	_1021
	mov	eax,dword [ebp+16]
	mov	edi,dword [eax]
	mov	eax,dword [ebp+8]
	mov	edx,dword [ebp+16]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	ecx,dword [ebp+12]
	mov	edx,dword [ebp+16]
	mov	edx,dword [edx]
	imul	ecx,dword [edx+28]
	add	eax,ecx
	mov	ebx,eax
	add	ebx,1
	mov	eax,dword [ebp+16]
	mov	ecx,dword [eax]
	mov	eax,dword [ebp+8]
	add	eax,dword [ebp-24]
	mov	edx,dword [ebp+16]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edx,eax
	mov	eax,dword [ebp+12]
	add	eax,dword [ebp-16]
	mov	esi,dword [ebp+16]
	mov	esi,dword [esi]
	imul	eax,dword [esi+28]
	add	edx,eax
	mov	eax,edx
	add	eax,1
	mov	eax,dword [ecx+eax*4+32]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	fadd	dword [ebp-8]
	fadd	dword [ebp+28]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [edi+ebx*4+32],eax
_1021:
_993:
_196:
	add	dword [ebp-16],1
_989:
	cmp	dword [ebp-16],1
	jle	_198
_197:
_193:
	add	dword [ebp-24],1
_987:
	cmp	dword [ebp-24],1
	jle	_195
_194:
_914:
	mov	eax,0
	jmp	_330
_330:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_Main_smart:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	edi,dword [ebp+8]
	cmp	dword [_bb_thesmartNOW],-2
	jne	_1022
	mov	esi,0
	jmp	_1024
_201:
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_thesmartarray]
	mov	eax,dword [eax+esi*4+24]
	dec	dword [eax+4]
	jnz	_1028
	push	eax
	call	_bbGCFree
	add	esp,4
_1028:
	mov	eax,dword [_bb_thesmartarray]
	mov	dword [eax+esi*4+24],ebx
_199:
	add	esi,1
_1024:
	cmp	esi,999
	jle	_201
_200:
	mov	esi,0
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-4],eax
	jmp	_202
_204:
	mov	eax,dword [ebp-4]
	push	_bb_TbotT
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_202
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_thesmartarray]
	mov	eax,dword [eax+esi*4+24]
	dec	dword [eax+4]
	jnz	_1039
	push	eax
	call	_bbGCFree
	add	esp,4
_1039:
	mov	eax,dword [_bb_thesmartarray]
	mov	dword [eax+esi*4+24],ebx
	add	esi,1
	cmp	esi,998
	jle	_1040
	jmp	_203
_1040:
_202:
	mov	eax,dword [ebp-4]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_204
_203:
	mov	dword [_bb_thesmartNOW],-1
	jmp	_1041
_1022:
	mov	eax,dword [_bb_thesmartlist]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	mov	ebx,0
	jmp	_1044
_207:
	add	dword [_bb_thesmartNOW],1
	mov	edx,dword [_bb_thesmartarray]
	mov	eax,dword [_bb_thesmartNOW]
	cmp	dword [edx+eax*4+24],_bbNullObject
	je	_1045
	mov	ecx,dword [_bb_thesmartlist]
	mov	edx,dword [_bb_thesmartarray]
	mov	eax,dword [_bb_thesmartNOW]
	push	dword [edx+eax*4+24]
	push	ecx
	mov	eax,dword [ecx]
	call	dword [eax+68]
	add	esp,8
	jmp	_1047
_1045:
	mov	dword [_bb_thesmartNOW],-2
	jmp	_206
_1047:
	cmp	dword [_bb_thesmartNOW],998
	jle	_1048
	mov	dword [_bb_thesmartNOW],-2
	jmp	_206
_1048:
_205:
	add	ebx,1
_1044:
	cmp	ebx,10
	jle	_207
_206:
_1041:
	mov	eax,0
	jmp	_333
_333:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_Work_smart:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+8]
	mov	edi,dword [_bb_thesmartlist]
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-12],eax
	jmp	_208
_210:
	mov	eax,dword [ebp-12]
	push	_bb_TbotT
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	je	_208
	cmp	esi,ebx
	je	_1055
	fld	qword [_1492]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebx+8]
	fsub	dword [esi+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-8]
	fld	qword [_1493]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebx+12]
	fsub	dword [esi+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-8]
	faddp	st1,st0
	fstp	qword [ebp-8]
	fld	qword [ebp-8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	qword [_1494]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_1056
	mov	eax,dword [esi+28]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
	cmp	eax,0
	je	_1058
	jmp	_1059
_1058:
	mov	eax,dword [esi+28]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
_1059:
	jmp	_1061
_1056:
	mov	eax,dword [esi+28]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
	cmp	eax,0
	je	_1063
	mov	eax,dword [esi+28]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	jmp	_1065
_1063:
_1065:
_1061:
_1055:
_208:
	mov	eax,dword [ebp-12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_210
_209:
	mov	eax,0
	jmp	_336
_336:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_588:
	dd	0
_229:
	db	"TbotT",0
_230:
	db	"x",0
_231:
	db	"f",0
_232:
	db	"y",0
_233:
	db	"r",0
_234:
	db	"way",0
_235:
	db	":Twaypoint",0
_236:
	db	"toway",0
_237:
	db	"seelist",0
_238:
	db	":brl.linkedlist.TList",0
_239:
	db	"botdel",0
_240:
	db	"i",0
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
	align	4
_339:
	dd	0
	align	4
_bb_botTlist:
	dd	_bbNullObject
	align	4
_bb_waypointlist:
	dd	_bbNullObject
	align	4
_bb_printlistlist:
	dd	_bbNullObject
	align	4
_18:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	80,97,110,122,101,114,83,58,32,84,101,115,116,108,97,112
	dw	33
	align	4
_bb_nTwaypoint:
	dd	_bbNullObject
	align	4
_bb_startTwaypoint:
	dd	_bbNullObject
	align	4
_bb_endTwaypoint:
	dd	_bbNullObject
	align	4
_bb_wax:
	dd	0x44000000
	align	4
_bb_way:
	dd	0x42480000
	align	4
_bb_raster:
	dd	0x42c80000
	align	4
_1066:
	dd	0x42c80000
	align	4
_1067:
	dd	0x3f800000
	align	8
_1068:
	dd	0x0,0x40000000
	align	8
_1069:
	dd	0x0,0x40000000
	align	4
_1070:
	dd	0x40000000
	align	4
_1071:
	dd	0x3f800000
	align	4
_1072:
	dd	0x40000000
	align	4
_1073:
	dd	0x3f800000
	align	8
_1074:
	dd	0x0,0x40000000
	align	8
_1075:
	dd	0x0,0x40000000
	align	4
_1076:
	dd	0x40000000
	align	4
_1077:
	dd	0x40000000
	align	4
_1078:
	dd	0x40400000
	align	4
_1079:
	dd	0x40000000
	align	8
_1080:
	dd	0x0,0x40000000
	align	8
_1081:
	dd	0x0,0x40000000
	align	4
_1082:
	dd	0x40000000
	align	4
_1083:
	dd	0x40400000
	align	4
_1084:
	dd	0x40800000
	align	4
_1085:
	dd	0x40400000
	align	8
_1086:
	dd	0x0,0x40000000
	align	8
_1087:
	dd	0x0,0x40000000
	align	4
_1088:
	dd	0x40000000
	align	4
_1089:
	dd	0x40800000
	align	4
_1090:
	dd	0x40a00000
	align	4
_1091:
	dd	0x40800000
	align	8
_1092:
	dd	0x0,0x40000000
	align	8
_1093:
	dd	0x0,0x40000000
	align	4
_1094:
	dd	0x40000000
	align	4
_1095:
	dd	0x40a00000
	align	4
_1096:
	dd	0x40c00000
	align	4
_1097:
	dd	0x40a00000
	align	8
_1098:
	dd	0x0,0x40000000
	align	8
_1099:
	dd	0x0,0x40000000
	align	4
_1100:
	dd	0x40000000
	align	4
_bb_t1x:
	dd	0x43480000
	align	4
_bb_t1y:
	dd	0x43960000
	align	4
_bb_t1r:
	dd	0x0
	align	4
_bb_t2x:
	dd	0x44160000
	align	4
_bb_t2y:
	dd	0x43960000
	align	4
_bb_t2r:
	dd	0x43340000
	align	4
_bb_t1way:
	dd	_bbNullObject
	align	4
_bb_t1s:
	dd	0x0
	align	4
_bb_t2s:
	dd	0x0
_513:
	db	"i",0
	align	4
_bb_waycecker:
	dd	0
	align	8
_1101:
	dd	0x0,0x40000000
	align	4
_bb_diagonal:
	dd	0x0
_520:
	db	":TbotT",0
	align	4
_bb_thesmartarray:
	dd	_bbEmptyArray
	align	4
_bb_thesmartNOW:
	dd	-2
	align	4
_bb_thesmartlist:
	dd	_bbNullObject
	align	4
_bb_tmr:
	dd	_bbNullObject
	align	8
_1102:
	dd	0x0,0x40668000
	align	4
_1103:
	dd	0x42b40000
	align	8
_1104:
	dd	0x40000000,0x3fd33333
	align	4
_1105:
	dd	0x42b40000
	align	8
_1106:
	dd	0x40000000,0x3fd33333
	align	8
_1107:
	dd	0x0,0x40000000
	align	8
_1108:
	dd	0x0,0x40000000
	align	8
_1109:
	dd	0x0,0x403e0000
	align	8
_1110:
	dd	0x0,0x40590000
	align	4
_226:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	109,115
	align	4
_227:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	32,98,111,116,115
	align	8
_1174:
	dd	0x0,0x40900000
	align	8
_1175:
	dd	0x0,0x40880000
_601:
	db	"f",0
	align	8
_1184:
	dd	0x0,0x40000000
	align	8
_1185:
	dd	0x0,0x40000000
	align	8
_1186:
	dd	0x0,0x40668000
	align	8
_1189:
	dd	0x0,0x40000000
	align	8
_1190:
	dd	0x0,0x40000000
	align	4
_1191:
	dd	0x40000000
	align	4
_1192:
	dd	0x40000000
	align	4
_1193:
	dd	0x42b40000
	align	4
_1194:
	dd	0x40000000
	align	4
_1195:
	dd	0x40000000
	align	4
_1196:
	dd	0x43340000
	align	4
_1197:
	dd	0x40000000
	align	4
_1198:
	dd	0x43340000
	align	4
_1199:
	dd	0x40000000
	align	8
_1204:
	dd	0x0,0x40000000
	align	8
_1205:
	dd	0x0,0x40000000
	align	4
_1206:
	dd	0x42a00000
	align	4
_1207:
	dd	0x3f19999a
	align	4
_1208:
	dd	0x42200000
_628:
	db	"f",0
_631:
	db	"f",0
_634:
	db	"f",0
_636:
	db	"f",0
	align	4
_1209:
	dd	0x42b40000
	align	8
_1210:
	dd	0x0,0x40000000
	align	8
_1211:
	dd	0x0,0x40000000
	align	8
_1212:
	dd	0x0,0x40000000
	align	8
_1213:
	dd	0x0,0x40000000
	align	4
_1214:
	dd	0x42b40000
	align	8
_1215:
	dd	0x0,0x40000000
	align	8
_1216:
	dd	0x0,0x40000000
	align	8
_1217:
	dd	0x0,0x40000000
	align	8
_1218:
	dd	0x0,0x40000000
	align	8
_1219:
	dd	0x0,0x40000000
	align	8
_1220:
	dd	0x0,0x40000000
	align	8
_1221:
	dd	0x0,0x40000000
	align	8
_1222:
	dd	0x0,0x40000000
	align	4
_1223:
	dd	0x0
	align	4
_1224:
	dd	0x0
	align	4
_1225:
	dd	0x0
	align	4
_1226:
	dd	0x0
	align	4
_1227:
	dd	0x0
	align	4
_1228:
	dd	0x42b40000
	align	4
_1229:
	dd	0x42b40000
	align	4
_1230:
	dd	0x43340000
	align	4
_1231:
	dd	0x43b40000
	align	4
_1232:
	dd	0xc3340000
	align	4
_1233:
	dd	0x43b40000
	align	4
_1234:
	dd	0x43340000
	align	8
_1235:
	dd	0x0,0x40000000
	align	8
_1236:
	dd	0x0,0x40000000
	align	8
_1237:
	dd	0x0,0x40000000
	align	8
_1238:
	dd	0x0,0x40000000
	align	4
_1239:
	dd	0x0
	align	4
_1240:
	dd	0x42b40000
	align	4
_1241:
	dd	0x42b40000
	align	4
_1242:
	dd	0x43340000
	align	4
_1243:
	dd	0x43b40000
	align	4
_1244:
	dd	0xc3340000
	align	4
_1245:
	dd	0x43b40000
	align	4
_1246:
	dd	0x43340000
	align	8
_1247:
	dd	0x0,0x40000000
	align	8
_1248:
	dd	0x0,0x40000000
	align	8
_1249:
	dd	0x0,0x40000000
	align	8
_1250:
	dd	0x0,0x40000000
	align	4
_1292:
	dd	0x43340000
	align	4
_1293:
	dd	0x43b40000
	align	4
_1294:
	dd	0xc3340000
	align	4
_1295:
	dd	0x43b40000
	align	4
_1296:
	dd	0x43340000
	align	4
_1297:
	dd	0x0
	align	4
_1307:
	dd	0x43340000
	align	4
_1308:
	dd	0x43b40000
	align	4
_1309:
	dd	0xc3340000
	align	4
_1310:
	dd	0x43b40000
	align	4
_1311:
	dd	0x43340000
	align	4
_1312:
	dd	0x0
	align	4
_1313:
	dd	0x3f800000
	align	4
_1321:
	dd	0x43b40000
	align	4
_1322:
	dd	0x43b40000
	align	4
_1323:
	dd	0x43b40000
	align	8
_1328:
	dd	0x0,0x40000000
	align	8
_1329:
	dd	0x0,0x40000000
	align	4
_1330:
	dd	0x461c3c00
_802:
	db	"f",0
	align	4
_1340:
	dd	0x461c3c00
	align	4
_1357:
	dd	0xbf800000
_846:
	db	"i",0
	align	4
_1358:
	dd	0xbf800000
	align	4
_1359:
	dd	0xbf800000
	align	4
_1360:
	dd	0xbf800000
	align	4
_1361:
	dd	0xbf800000
	align	4
_1362:
	dd	0xbf800000
	align	4
_1363:
	dd	0xbf800000
	align	4
_1364:
	dd	0xbf800000
	align	4
_1365:
	dd	0xbf800000
	align	4
_1366:
	dd	0xbf800000
	align	4
_1367:
	dd	0x461c3c00
	align	4
_1401:
	dd	0x0
	align	4
_1402:
	dd	0x3f800000
	align	4
_1403:
	dd	0x3f800000
	align	4
_1404:
	dd	0x3f800000
	align	4
_1405:
	dd	0x3f800000
	align	4
_1406:
	dd	0x0
	align	4
_1407:
	dd	0x3f800000
	align	4
_1408:
	dd	0x3f800000
	align	4
_1409:
	dd	0x3f800000
	align	4
_1410:
	dd	0x3f800000
	align	4
_1411:
	dd	0x0
	align	4
_1412:
	dd	0x3f800000
	align	4
_1413:
	dd	0x3f800000
	align	4
_1414:
	dd	0x3f800000
	align	4
_1415:
	dd	0x3f800000
	align	8
_1492:
	dd	0x0,0x40000000
	align	8
_1493:
	dd	0x0,0x40000000
	align	8
_1494:
	dd	0x0,0x40490000
