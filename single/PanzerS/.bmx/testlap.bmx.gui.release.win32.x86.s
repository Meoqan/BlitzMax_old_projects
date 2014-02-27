	format	MS COFF
	extrn	___bb_appstub_appstub
	extrn	___bb_audio_audio
	extrn	___bb_blitz_blitz
	extrn	___bb_bmploader_bmploader
	extrn	___bb_d3d7max2d_d3d7max2d
	extrn	___bb_directsoundaudio_directsoundaudio
	extrn	___bb_eventqueue_eventqueue
	extrn	___bb_freeaudioaudio_freeaudioaudio
	extrn	___bb_freejoy_freejoy
	extrn	___bb_freeprocess_freeprocess
	extrn	___bb_freetypefont_freetypefont
	extrn	___bb_glew_glew
	extrn	___bb_gnet_gnet
	extrn	___bb_jpgloader_jpgloader
	extrn	___bb_linkedlist_linkedlist
	extrn	___bb_macos_macos
	extrn	___bb_maxutil_maxutil
	extrn	___bb_oggloader_oggloader
	extrn	___bb_openalaudio_openalaudio
	extrn	___bb_pngloader_pngloader
	extrn	___bb_random_random
	extrn	___bb_reflection_reflection
	extrn	___bb_retro_retro
	extrn	___bb_tgaloader_tgaloader
	extrn	___bb_timer_timer
	extrn	___bb_wavloader_wavloader
	extrn	_bbATan2
	extrn	_bbAppTitle
	extrn	_bbArrayNew
	extrn	_bbArrayNew1D
	extrn	_bbCos
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
	extrn	_bbSin
	extrn	_bbSqr
	extrn	_bbStringClass
	extrn	_bbStringConcat
	extrn	_bbStringFromInt
	extrn	_brl_graphics_Flip
	extrn	_brl_graphics_Graphics
	extrn	_brl_linkedlist_CreateList
	extrn	_brl_max2d_Cls
	extrn	_brl_max2d_DrawOval
	extrn	_brl_max2d_DrawRect
	extrn	_brl_max2d_DrawText
	extrn	_brl_max2d_SetAlpha
	extrn	_brl_max2d_SetBlend
	extrn	_brl_max2d_SetColor
	extrn	_brl_max2d_SetHandle
	extrn	_brl_max2d_SetRotation
	extrn	_brl_max2d_SetScale
	extrn	_brl_polledinput_KeyDown
	extrn	_brl_polledinput_KeyHit
	extrn	_brl_polledinput_MouseDown
	extrn	_brl_polledinput_MouseHit
	extrn	_brl_polledinput_MouseX
	extrn	_brl_polledinput_MouseY
	extrn	_brl_polledinput_WaitKey
	extrn	_brl_random_Rnd
	extrn	_brl_timer_CreateTimer
	public	__bb_Twaypoint_Delete
	public	__bb_Twaypoint_New
	public	__bb_main
	public	_bb_BufferTarget
	public	_bb_BufferTower
	public	_bb_CalcWinkel
	public	_bb_PushCollision
	public	_bb_PushTank
	public	_bb_Twaypoint
	public	_bb_diagonal
	public	_bb_endTwaypoint
	public	_bb_fenster
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
	sub	esp,236
	push	ebx
	push	esi
	push	edi
	cmp	dword [_587],0
	je	_588
	mov	eax,0
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_588:
	mov	dword [_587],1
	call	___bb_blitz_blitz
	call	___bb_linkedlist_linkedlist
	call	___bb_random_random
	call	___bb_retro_retro
	call	___bb_audio_audio
	call	___bb_wavloader_wavloader
	call	___bb_oggloader_oggloader
	call	___bb_directsoundaudio_directsoundaudio
	call	___bb_jpgloader_jpgloader
	call	___bb_pngloader_pngloader
	call	___bb_appstub_appstub
	call	___bb_bmploader_bmploader
	call	___bb_d3d7max2d_d3d7max2d
	call	___bb_eventqueue_eventqueue
	call	___bb_freeaudioaudio_freeaudioaudio
	call	___bb_freetypefont_freetypefont
	call	___bb_gnet_gnet
	call	___bb_maxutil_maxutil
	call	___bb_openalaudio_openalaudio
	call	___bb_reflection_reflection
	call	___bb_tgaloader_tgaloader
	call	___bb_timer_timer
	call	___bb_freejoy_freejoy
	call	___bb_freeprocess_freeprocess
	call	___bb_glew_glew
	call	___bb_macos_macos
	push	_bb_Twaypoint
	call	_bbObjectRegisterType
	add	esp,4
	mov	eax,dword [_302]
	and	eax,1
	cmp	eax,0
	jne	_303
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_waypointlist],eax
	or	dword [_302],1
_303:
	mov	eax,dword [_302]
	and	eax,2
	cmp	eax,0
	jne	_305
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_printlistlist],eax
	or	dword [_302],2
_305:
	mov	ebx,_18
	inc	dword [ebx+4]
	mov	eax,dword [_bbAppTitle]
	dec	dword [eax+4]
	jnz	_309
	push	eax
	call	_bbGCFree
	add	esp,4
_309:
	mov	dword [_bbAppTitle],ebx
	mov	eax,dword [_302]
	and	eax,4
	cmp	eax,0
	jne	_311
	push	0
	push	60
	push	0
	push	768
	push	1024
	call	_brl_graphics_Graphics
	add	esp,20
	inc	dword [eax+4]
	mov	dword [_bb_fenster],eax
	or	dword [_302],4
_311:
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
	jnz	_317
	push	eax
	call	_bbGCFree
	add	esp,4
_317:
	mov	dword [_bb_startTwaypoint],ebx
	fld	dword [_bb_way]
	fadd	dword [_958]
	fstp	dword [_bb_way]
	push	_bb_Twaypoint
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nTwaypoint]
	dec	dword [eax+4]
	jnz	_321
	push	eax
	call	_bbGCFree
	add	esp,4
_321:
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
	jmp	_326
_21:
	push	_bb_Twaypoint
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nTwaypoint]
	dec	dword [eax+4]
	jnz	_330
	push	eax
	call	_bbGCFree
	add	esp,4
_330:
	mov	dword [_bb_nTwaypoint],ebx
	mov	eax,dword [_bb_waypointlist]
	push	dword [_bb_nTwaypoint]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [_bb_wax]
	mov	dword [ebp+-236],esi
	fild	dword [ebp+-236]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fstp	dword [eax+8]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_959]
	faddp	st1,st0
	fstp	dword [eax+12]
	mov	edi,dword [_bb_waypointlist]
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-200],eax
	jmp	_22
_24:
	mov	eax,dword [ebp-200]
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
	je	_340
	fld	dword [_bb_wax]
	mov	eax,esi
	sub	eax,1
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
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
	jne	_338
	fld	dword [_bb_wax]
	mov	eax,esi
	add	eax,1
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
_338:
_340:
	cmp	eax,0
	je	_342
	fld	qword [_960]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [eax+8]
	fsub	dword [ebx+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-76]
	fld	qword [_961]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [eax+12]
	fsub	dword [ebx+12]
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
	fld	dword [_bb_raster]
	fmul	dword [_962]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_343
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
_343:
_342:
	fld	dword [ebx+12]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_963]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_346
	fld	dword [ebx+8]
	fld	dword [_bb_wax]
	mov	eax,esi
	sub	eax,1
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
_346:
	cmp	eax,0
	je	_348
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
_348:
_22:
	mov	eax,dword [ebp-200]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_24
_23:
_19:
	add	esi,1
_326:
	cmp	esi,3
	jle	_21
_20:
	mov	esi,-4
	jmp	_352
_27:
	push	_bb_Twaypoint
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nTwaypoint]
	dec	dword [eax+4]
	jnz	_356
	push	eax
	call	_bbGCFree
	add	esp,4
_356:
	mov	dword [_bb_nTwaypoint],ebx
	mov	eax,dword [_bb_waypointlist]
	push	dword [_bb_nTwaypoint]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [_bb_wax]
	mov	dword [ebp+-236],esi
	fild	dword [ebp+-236]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fstp	dword [eax+8]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_964]
	faddp	st1,st0
	fstp	dword [eax+12]
	mov	edi,dword [_bb_waypointlist]
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-196],eax
	jmp	_28
_30:
	mov	eax,dword [ebp-196]
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
	fmul	dword [_965]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_366
	fld	dword [_bb_wax]
	mov	eax,esi
	sub	eax,1
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
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
	jne	_364
	fld	dword [_bb_wax]
	mov	eax,esi
	add	eax,1
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
_364:
_366:
	cmp	eax,0
	je	_368
	fld	qword [_966]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [eax+8]
	fsub	dword [ebx+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-68]
	fld	qword [_967]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [eax+12]
	fsub	dword [ebx+12]
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
	fld	dword [_bb_raster]
	fmul	dword [_968]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_369
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
_369:
_368:
	fld	dword [ebx+12]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_969]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_372
	fld	dword [ebx+8]
	fld	dword [_bb_wax]
	mov	eax,esi
	sub	eax,1
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
_372:
	cmp	eax,0
	je	_374
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
_374:
_28:
	mov	eax,dword [ebp-196]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_30
_29:
_25:
	add	esi,1
_352:
	cmp	esi,4
	jle	_27
_26:
	mov	esi,-3
	jmp	_378
_33:
	push	_bb_Twaypoint
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nTwaypoint]
	dec	dword [eax+4]
	jnz	_382
	push	eax
	call	_bbGCFree
	add	esp,4
_382:
	mov	dword [_bb_nTwaypoint],ebx
	mov	eax,dword [_bb_waypointlist]
	push	dword [_bb_nTwaypoint]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [_bb_wax]
	mov	dword [ebp+-236],esi
	fild	dword [ebp+-236]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fstp	dword [eax+8]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_970]
	faddp	st1,st0
	fstp	dword [eax+12]
	mov	edi,dword [_bb_waypointlist]
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-192],eax
	jmp	_34
_36:
	mov	eax,dword [ebp-192]
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
	fmul	dword [_971]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_392
	fld	dword [_bb_wax]
	mov	eax,esi
	sub	eax,1
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
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
	jne	_390
	fld	dword [_bb_wax]
	mov	eax,esi
	add	eax,1
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
_390:
_392:
	cmp	eax,0
	je	_394
	fld	qword [_972]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [eax+8]
	fsub	dword [ebx+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-60]
	fld	qword [_973]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [eax+12]
	fsub	dword [ebx+12]
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
	fld	dword [_bb_raster]
	fmul	dword [_974]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_395
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
_395:
_394:
	fld	dword [ebx+12]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_975]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_398
	fld	dword [ebx+8]
	fld	dword [_bb_wax]
	mov	eax,esi
	sub	eax,1
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
_398:
	cmp	eax,0
	je	_400
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
_400:
_34:
	mov	eax,dword [ebp-192]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_36
_35:
_31:
	add	esi,1
_378:
	cmp	esi,3
	jle	_33
_32:
	mov	esi,-4
	jmp	_404
_39:
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
	mov	eax,dword [_bb_waypointlist]
	push	dword [_bb_nTwaypoint]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [_bb_wax]
	mov	dword [ebp+-236],esi
	fild	dword [ebp+-236]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fstp	dword [eax+8]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_976]
	faddp	st1,st0
	fstp	dword [eax+12]
	mov	edi,dword [_bb_waypointlist]
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-188],eax
	jmp	_40
_42:
	mov	eax,dword [ebp-188]
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
	fmul	dword [_977]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_418
	fld	dword [_bb_wax]
	mov	eax,esi
	sub	eax,1
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
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
	jne	_416
	fld	dword [_bb_wax]
	mov	eax,esi
	add	eax,1
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
_416:
_418:
	cmp	eax,0
	je	_420
	fld	qword [_978]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [eax+8]
	fsub	dword [ebx+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-52]
	fld	qword [_979]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [eax+12]
	fsub	dword [ebx+12]
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
	fld	dword [_bb_raster]
	fmul	dword [_980]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_421
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
_421:
_420:
	fld	dword [ebx+12]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_981]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_424
	fld	dword [ebx+8]
	fld	dword [_bb_wax]
	mov	eax,esi
	sub	eax,1
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
_424:
	cmp	eax,0
	je	_426
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
_426:
_40:
	mov	eax,dword [ebp-188]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_42
_41:
_37:
	add	esi,1
_404:
	cmp	esi,4
	jle	_39
_38:
	mov	esi,-3
	jmp	_430
_45:
	push	_bb_Twaypoint
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nTwaypoint]
	dec	dword [eax+4]
	jnz	_434
	push	eax
	call	_bbGCFree
	add	esp,4
_434:
	mov	dword [_bb_nTwaypoint],ebx
	mov	eax,dword [_bb_waypointlist]
	push	dword [_bb_nTwaypoint]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [_bb_wax]
	mov	dword [ebp+-236],esi
	fild	dword [ebp+-236]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fstp	dword [eax+8]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_982]
	faddp	st1,st0
	fstp	dword [eax+12]
	mov	edi,dword [_bb_waypointlist]
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-184],eax
	jmp	_46
_48:
	mov	eax,dword [ebp-184]
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
	fmul	dword [_983]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_444
	fld	dword [_bb_wax]
	mov	eax,esi
	sub	eax,1
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
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
	jne	_442
	fld	dword [_bb_wax]
	mov	eax,esi
	add	eax,1
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
_442:
_444:
	cmp	eax,0
	je	_446
	fld	qword [_984]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [eax+8]
	fsub	dword [ebx+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-44]
	fld	qword [_985]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [eax+12]
	fsub	dword [ebx+12]
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
	fld	dword [_bb_raster]
	fmul	dword [_986]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_447
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
_447:
_446:
	fld	dword [ebx+12]
	fld	dword [_bb_way]
	fld	dword [_bb_raster]
	fmul	dword [_987]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_450
	fld	dword [ebx+8]
	fld	dword [_bb_wax]
	mov	eax,esi
	sub	eax,1
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
	fmul	dword [_bb_raster]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
_450:
	cmp	eax,0
	je	_452
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
_452:
_46:
	mov	eax,dword [ebp-184]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_48
_47:
_43:
	add	esi,1
_430:
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
	jnz	_458
	push	eax
	call	_bbGCFree
	add	esp,4
_458:
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
	fmul	dword [_988]
	faddp	st1,st0
	fstp	dword [eax+12]
	mov	ebx,dword [_bb_nTwaypoint]
	inc	dword [ebx+4]
	mov	eax,dword [_bb_endTwaypoint]
	dec	dword [eax+4]
	jnz	_463
	push	eax
	call	_bbGCFree
	add	esp,4
_463:
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
	fmul	dword [_989]
	faddp	st1,st0
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_470
	fld	qword [_990]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [eax+8]
	fsub	dword [esi+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-104]
	fld	qword [_991]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [_bb_nTwaypoint]
	fld	dword [eax+12]
	fsub	dword [esi+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-104]
	faddp	st1,st0
	fstp	qword [ebp-104]
	fld	qword [ebp-104]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [_bb_raster]
	fmul	dword [_992]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_471
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
_471:
_470:
_49:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_51
_50:
	mov	eax,dword [_302]
	and	eax,8
	cmp	eax,0
	jne	_475
	mov	eax,dword [_bb_startTwaypoint]
	inc	dword [eax+4]
	mov	dword [_bb_t1way],eax
	or	dword [_302],8
_475:
	push	100
	push	100
	push	2
	push	_476
	call	_bbArrayNew
	add	esp,16
	mov	dword [ebp-4],eax
	mov	dword [ebp-232],75
	mov	dword [ebp-228],50
	mov	dword [ebp-224],10
	mov	dword [ebp-220],10
	mov	eax,dword [_302]
	and	eax,16
	cmp	eax,0
	jne	_482
	fld	qword [_993]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fstp	dword [_bb_diagonal]
	or	dword [_302],16
_482:
	mov	eax,dword [_302]
	and	eax,32
	cmp	eax,0
	jne	_484
	push	_bbNullObject
	push	1109393408
	call	_brl_timer_CreateTimer
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_tmr],eax
	or	dword [_302],32
_484:
	jmp	_193
_195:
	mov	eax,dword [_bb_tmr]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	call	_brl_max2d_Cls
	push	1065353216
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	1061158912
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	255
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_startTwaypoint]
	dec	dword [eax+4]
	jnz	_489
	push	eax
	call	_bbGCFree
	add	esp,4
_489:
	mov	dword [_bb_startTwaypoint],ebx
	mov	eax,dword [_bb_waypointlist]
	mov	dword [ebp-208],eax
	mov	eax,dword [ebp-208]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-212],eax
	jmp	_196
_198:
	mov	eax,dword [ebp-212]
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
	je	_196
	call	_brl_polledinput_MouseX
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
	fld	dword [esi+8]
	fsub	dword [_994]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	je	_496
	call	_brl_polledinput_MouseX
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
	fld	dword [esi+8]
	fadd	dword [_995]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
_496:
	cmp	eax,0
	je	_498
	call	_brl_polledinput_MouseY
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
	fld	dword [esi+12]
	fsub	dword [_996]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
_498:
	cmp	eax,0
	je	_500
	call	_brl_polledinput_MouseY
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
	fld	dword [esi+12]
	fadd	dword [_997]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
_500:
	cmp	eax,0
	je	_502
	mov	ebx,esi
	inc	dword [ebx+4]
	mov	eax,dword [_bb_startTwaypoint]
	dec	dword [eax+4]
	jnz	_506
	push	eax
	call	_bbGCFree
	add	esp,4
_506:
	mov	dword [_bb_startTwaypoint],ebx
	push	1
	call	_brl_polledinput_MouseDown
	add	esp,4
	cmp	eax,0
	je	_507
	call	_brl_polledinput_MouseX
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
	fstp	dword [esi+8]
	call	_brl_polledinput_MouseY
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
	fstp	dword [esi+12]
	mov	dword [esi+28],1
_507:
_502:
	push	1097859072
	push	1097859072
	call	_brl_max2d_SetHandle
	add	esp,8
	push	255
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	1106247680
	push	1106247680
	push	dword [esi+12]
	push	dword [esi+8]
	call	_brl_max2d_DrawOval
	add	esp,16
	mov	edi,0
	mov	eax,dword [esi+36]
	mov	dword [ebp-80],eax
	mov	eax,dword [ebp-80]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-84],eax
	jmp	_199
_201:
	mov	eax,dword [ebp-84]
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
	jnz	_517
	push	eax
	call	_bbGCFree
	add	esp,4
_517:
	mov	dword [esi+20],ebx
	cmp	dword [esi+20],_bbNullObject
	je	_199
	fld	qword [_998]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [esi+8]
	mov	eax,dword [esi+20]
	fsub	dword [eax+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-12]
	fld	qword [_999]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [esi+12]
	mov	eax,dword [esi+20]
	fsub	dword [eax+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-12]
	faddp	st1,st0
	fstp	qword [ebp-12]
	fld	qword [ebp-12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fstp	dword [ebp-32]
	fld	dword [esi+12]
	mov	eax,dword [esi+20]
	fsub	dword [eax+12]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [esi+8]
	mov	eax,dword [esi+20]
	fsub	dword [eax+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbATan2
	add	esp,16
	fchs
	fld	qword [_1000]
	faddp	st1,st0
	fstp	dword [ebp-36]
	fld	dword [ebp-32]
	fdiv	dword [_1001]
	sub	esp,4
	fstp	dword [esp]
	push	1075838976
	call	_brl_max2d_SetHandle
	add	esp,8
	fld	dword [ebp-36]
	fsub	dword [_1002]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetRotation
	add	esp,4
	mov	eax,dword [esi+24]
	fld	dword [eax+edi*4+24]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_520
	push	0
	push	0
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	jmp	_521
_520:
	push	255
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
_521:
	add	edi,1
	push	dword [ebp-32]
	push	1084227584
	fld	dword [esi+12]
	fstp	qword [ebp-20]
	fld	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	dword [ebp-32]
	fdiv	dword [_1003]
	fmulp	st1,st0
	fld	qword [ebp-20]
	faddp	st1,st0
	fstp	qword [ebp-20]
	fld	qword [ebp-20]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [esi+8]
	fstp	qword [ebp-28]
	fld	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	dword [ebp-32]
	fdiv	dword [_1004]
	fmulp	st1,st0
	fld	qword [ebp-28]
	faddp	st1,st0
	fstp	qword [ebp-28]
	fld	qword [ebp-28]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
_199:
	mov	eax,dword [ebp-84]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_201
_200:
_196:
	mov	eax,dword [ebp-212]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_198
_197:
	mov	dword [ebp-216],_bbNullObject
	cmp	dword [_bb_startTwaypoint],_bbNullObject
	je	_523
	push	dword [_bb_endTwaypoint]
	push	dword [_bb_startTwaypoint]
	call	_bb_waypointtodest
	add	esp,8
	mov	dword [ebp-216],eax
_523:
	push	1065353216
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	1061158912
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	0
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	cmp	dword [ebp-216],_bbNullObject
	jne	_524
	jmp	_525
_524:
	fld	qword [_1005]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [_bb_startTwaypoint]
	fld	dword [eax+8]
	mov	eax,dword [ebp-216]
	fsub	dword [eax+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-112]
	fld	qword [_1006]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [_bb_startTwaypoint]
	fld	dword [eax+12]
	mov	eax,dword [ebp-216]
	fsub	dword [eax+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-112]
	faddp	st1,st0
	fstp	qword [ebp-112]
	fld	qword [ebp-112]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fstp	dword [ebp-96]
	mov	eax,dword [_bb_startTwaypoint]
	fld	dword [eax+12]
	mov	eax,dword [ebp-216]
	fsub	dword [eax+12]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [_bb_startTwaypoint]
	fld	dword [eax+8]
	mov	eax,dword [ebp-216]
	fsub	dword [eax+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbATan2
	add	esp,16
	fchs
	fld	qword [_1007]
	faddp	st1,st0
	fstp	dword [ebp-176]
	fld	dword [ebp-96]
	fdiv	dword [_1008]
	sub	esp,4
	fstp	dword [esp]
	push	1075838976
	call	_brl_max2d_SetHandle
	add	esp,8
	fld	dword [ebp-176]
	fsub	dword [_1009]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	dword [ebp-96]
	push	1084227584
	mov	eax,dword [_bb_startTwaypoint]
	fld	dword [eax+12]
	fstp	qword [ebp-136]
	fld	dword [ebp-176]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	dword [ebp-96]
	fdiv	dword [_1010]
	fmulp	st1,st0
	fld	qword [ebp-136]
	faddp	st1,st0
	fstp	qword [ebp-136]
	fld	qword [ebp-136]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [_bb_startTwaypoint]
	fld	dword [eax+8]
	fstp	qword [ebp-128]
	fld	dword [ebp-176]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	dword [ebp-96]
	fdiv	dword [_1011]
	fmulp	st1,st0
	fld	qword [ebp-128]
	faddp	st1,st0
	fstp	qword [ebp-128]
	fld	qword [ebp-128]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
_525:
	push	0
	push	0
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	mov	esi,0
	mov	edi,dword [_bb_printlistlist]
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-92],eax
	jmp	_202
_204:
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
	je	_202
	add	esi,1
	push	1084227584
	push	1084227584
	call	_brl_max2d_SetHandle
	add	esp,8
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	1092616192
	push	1092616192
	push	dword [ebx+12]
	push	dword [ebx+8]
	call	_brl_max2d_DrawRect
	add	esp,16
	fld	dword [ebx+12]
	fsub	dword [_1012]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebx+8]
	push	_205
	push	esi
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_2
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
_202:
	mov	eax,dword [ebp-92]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_204
_203:
	mov	eax,dword [_bb_printlistlist]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	mov	eax,dword [_bb_t1way]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_536
	mov	eax,dword [_bb_t1way]
	cmp	eax,dword [_bb_endTwaypoint]
	setne	al
	movzx	eax,al
_536:
	cmp	eax,0
	je	_538
	mov	eax,dword [_bb_t1way]
	fld	dword [eax+12]
	fsub	dword [_bb_t1y]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [_bb_t1way]
	fld	dword [eax+8]
	fsub	dword [_bb_t1x]
	sub	esp,8
	fstp	qword [esp]
	call	_bbATan2
	add	esp,16
	fchs
	fld	qword [_1013]
	faddp	st1,st0
	fstp	dword [ebp-88]
	push	32
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_540
	fld	dword [_bb_t1x]
	fstp	qword [ebp-168]
	fld	dword [ebp-88]
	fsub	dword [_1014]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	qword [_1015]
	fmulp	st1,st0
	fld	qword [ebp-168]
	faddp	st1,st0
	fstp	qword [ebp-168]
	fld	qword [ebp-168]
	fstp	dword [_bb_t1x]
	fld	dword [_bb_t1y]
	fstp	qword [ebp-160]
	fld	dword [ebp-88]
	fsub	dword [_1016]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	qword [_1017]
	fmulp	st1,st0
	fld	qword [ebp-160]
	faddp	st1,st0
	fstp	qword [ebp-160]
	fld	qword [ebp-160]
	fstp	dword [_bb_t1y]
	fld	dword [ebp-88]
	fstp	dword [_bb_t1r]
	jmp	_541
_540:
	fld	dword [_bb_t1x]
	fstp	qword [ebp-152]
	fld	dword [ebp-88]
	fsub	dword [_1018]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	qword [_1019]
	fmulp	st1,st0
	fld	qword [ebp-152]
	faddp	st1,st0
	fstp	qword [ebp-152]
	fld	qword [ebp-152]
	fstp	dword [_bb_t1x]
	fld	dword [_bb_t1y]
	fstp	qword [ebp-144]
	fld	dword [ebp-88]
	fsub	dword [_1020]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	qword [_1021]
	fmulp	st1,st0
	fld	qword [ebp-144]
	faddp	st1,st0
	fstp	qword [ebp-144]
	fld	qword [ebp-144]
	fstp	dword [_bb_t1y]
	fld	dword [ebp-88]
	fstp	dword [_bb_t1r]
_541:
	fld	qword [_1022]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [_bb_t1way]
	fld	dword [eax+8]
	fsub	dword [_bb_t1x]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-120]
	fld	qword [_1023]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [_bb_t1way]
	fld	dword [eax+12]
	fsub	dword [_bb_t1y]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-120]
	faddp	st1,st0
	fstp	qword [ebp-120]
	fld	qword [ebp-120]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	qword [_1024]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_542
	push	dword [_bb_endTwaypoint]
	push	dword [_bb_t1way]
	call	_bb_waypointtodest
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [_bb_t1way]
	dec	dword [eax+4]
	jnz	_546
	push	eax
	call	_bbGCFree
	add	esp,4
_546:
	mov	dword [_bb_t1way],ebx
_542:
	jmp	_547
_538:
	mov	ebx,dword [_bb_endTwaypoint]
	inc	dword [ebx+4]
	mov	eax,dword [_bb_t1way]
	dec	dword [eax+4]
	jnz	_551
	push	eax
	call	_bbGCFree
	add	esp,4
_551:
	mov	dword [_bb_t1way],ebx
	mov	eax,dword [_bb_waypointlist]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+112]
	add	esp,4
	imul	eax,100
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
	sub	esp,8
	fstp	qword [esp]
	fldz
	sub	esp,8
	fstp	qword [esp]
	call	_brl_random_Rnd
	add	esp,16
	fld	qword [_1025]
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
	mov	dword [ebp-172],eax
	jmp	_206
_208:
	mov	eax,dword [ebp-172]
	push	_bb_Twaypoint
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_206
	cmp	esi,0
	jne	_560
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_endTwaypoint]
	dec	dword [eax+4]
	jnz	_564
	push	eax
	call	_bbGCFree
	add	esp,4
_564:
	mov	dword [_bb_endTwaypoint],ebx
_560:
	sub	esi,1
_206:
	mov	eax,dword [ebp-172]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_208
_207:
_547:
	push	1061997773
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	255
	push	255
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	1092616192
	push	1092616192
	call	_brl_max2d_SetHandle
	add	esp,8
	push	dword [_bb_t1r]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	1101004800
	push	1101004800
	mov	eax,dword [_bb_t1way]
	push	dword [eax+12]
	mov	eax,dword [_bb_t1way]
	push	dword [eax+8]
	call	_brl_max2d_DrawOval
	add	esp,16
	push	1061997773
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	255
	push	0
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	1092616192
	push	1092616192
	call	_brl_max2d_SetHandle
	add	esp,8
	push	dword [_bb_t1r]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	1101004800
	push	1101004800
	mov	eax,dword [_bb_endTwaypoint]
	push	dword [eax+12]
	mov	eax,dword [_bb_endTwaypoint]
	push	dword [eax+8]
	call	_brl_max2d_DrawOval
	add	esp,16
	push	1053609165
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	100
	push	100
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	1102053376
	push	1097859072
	call	_brl_max2d_SetHandle
	add	esp,8
	push	dword [_bb_t1r]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	1110441984
	push	1106247680
	push	dword [_bb_t1y]
	push	dword [_bb_t1x]
	call	_brl_max2d_DrawRect
	add	esp,16
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
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_polledinput_MouseX
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	mov	eax,dword [ebp-4]
	inc	dword [eax+4]
	push	99
	push	99
	lea	eax,dword [ebp-4]
	push	eax
	mov	eax,dword [ebp-228]
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-232]
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-220]
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-224]
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
	sub	esp,4
	fstp	dword [esp]
	call	_bb_maptodest
	add	esp,28
	fstp	dword [ebp-180]
	mov	eax,dword [ebp-4]
	dec	dword [eax+4]
	jnz	_565
	push	dword [ebp-4]
	call	_bbGCFree
	add	esp,4
_565:
	fld	dword [ebp-180]
	fstp	dword [ebp-204]
	fld	dword [_1026]
	fld	dword [ebp-204]
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_568
	fld	qword [_1027]
	sub	esp,8
	fstp	qword [esp]
	fld1
	sub	esp,8
	fstp	qword [esp]
	call	_brl_random_Rnd
	add	esp,16
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebp-232],eax
	fld	qword [_1028]
	sub	esp,8
	fstp	qword [esp]
	fld1
	sub	esp,8
	fstp	qword [esp]
	call	_brl_random_Rnd
	add	esp,16
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebp-228],eax
_568:
	fldz
	fld	dword [ebp-204]
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_569
	sub	dword [ebp-220],1
_569:
	fld	dword [_1029]
	fld	dword [ebp-204]
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_570
	sub	dword [ebp-224],1
	sub	dword [ebp-220],1
_570:
	fld	dword [_1030]
	fld	dword [ebp-204]
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_571
	sub	dword [ebp-224],1
_571:
	fld	dword [_1031]
	fld	dword [ebp-204]
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_572
	sub	dword [ebp-224],1
	add	dword [ebp-220],1
_572:
	fld	dword [_1032]
	fld	dword [ebp-204]
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_573
	add	dword [ebp-220],1
_573:
	fld	dword [_1033]
	fld	dword [ebp-204]
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_574
	add	dword [ebp-224],1
	add	dword [ebp-220],1
_574:
	fld	dword [_1034]
	fld	dword [ebp-204]
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_575
	add	dword [ebp-224],1
_575:
	fld	dword [_1035]
	fld	dword [ebp-204]
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_576
	add	dword [ebp-224],1
	sub	dword [ebp-220],1
_576:
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	0
	push	0
	call	_brl_max2d_SetHandle
	add	esp,8
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	mov	esi,0
	jmp	_578
_211:
	mov	ebx,0
	jmp	_580
_214:
	mov	edx,dword [ebp-4]
	mov	eax,esi
	mov	ecx,dword [ebp-4]
	imul	eax,dword [ecx+24]
	add	eax,ebx
	mov	eax,dword [edx+eax*4+28]
	cmp	eax,256
	setl	al
	movzx	eax,al
	cmp	eax,0
	je	_581
	mov	edx,dword [ebp-4]
	mov	eax,esi
	mov	ecx,dword [ebp-4]
	imul	eax,dword [ecx+24]
	add	eax,ebx
	mov	eax,dword [edx+eax*4+28]
	cmp	eax,0
	setg	al
	movzx	eax,al
_581:
	cmp	eax,0
	je	_583
	push	0
	mov	edx,dword [ebp-4]
	mov	eax,esi
	mov	ecx,dword [ebp-4]
	imul	eax,dword [ecx+24]
	add	eax,ebx
	push	dword [edx+eax*4+28]
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
_583:
	push	1082130432
	push	1082130432
	mov	eax,ebx
	shl	eax,1
	add	eax,25
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,esi
	shl	eax,1
	add	eax,25
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
_212:
	add	ebx,2
_580:
	cmp	ebx,99
	jle	_214
_213:
_209:
	add	esi,2
_578:
	cmp	esi,99
	jle	_211
_210:
	push	0
	push	0
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	1073741824
	push	1073741824
	mov	eax,dword [ebp-228]
	shl	eax,1
	add	eax,25
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-232]
	shl	eax,1
	add	eax,25
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	0
	push	255
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	1073741824
	push	1073741824
	mov	eax,dword [ebp-220]
	shl	eax,1
	add	eax,25
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-224]
	shl	eax,1
	add	eax,25
	mov	dword [ebp+-236],eax
	fild	dword [ebp+-236]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	cmp	dword [ebp-216],_bbNullObject
	jne	_584
	push	1092616192
	push	1092616192
	push	_215
	call	_brl_max2d_DrawText
	add	esp,12
	jmp	_585
_584:
	push	1092616192
	push	1092616192
	push	_216
	call	_brl_max2d_DrawText
	add	esp,12
_585:
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
	push	2
	call	_brl_polledinput_MouseHit
	add	esp,4
	cmp	eax,0
	je	_586
	call	_brl_polledinput_WaitKey
_586:
_193:
	push	27
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_195
_194:
	mov	eax,0
	jmp	_235
_235:
	pop	edi
	pop	esi
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
	push	_590
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
	jmp	_238
_238:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Twaypoint_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_241:
	mov	eax,dword [ebx+36]
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
	fld	qword [_1117]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [esi]
	fsub	dword [edi]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-16]
	fld	qword [_1118]
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
	fdiv	dword [_1119]
	fstp	dword [ebp+16]
	fld	dword [ebp+28]
	fdiv	dword [_1120]
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
	jne	_601
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
	fadd	dword [_1121]
	fstp	dword [ebp-8]
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,1
	jne	_603
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
	jmp	_604
_603:
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
	fdiv	dword [_1122]
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
	fdiv	dword [_1123]
	fmulp	st1,st0
	fld	qword [ebp-40]
	faddp	st1,st0
	fstp	qword [ebp-40]
	fld	qword [ebp-40]
	fstp	dword [ebx]
	fld	dword [edi]
	fstp	qword [ebp-32]
	fld	dword [ebp-8]
	fsub	dword [_1124]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	dword [ebp+16]
	fadd	dword [ebp+28]
	fsub	dword [ebp-68]
	fdiv	dword [_1125]
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
	fsub	dword [_1126]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	dword [ebp+16]
	fadd	dword [ebp+28]
	fsub	dword [ebp-68]
	fdiv	dword [_1127]
	fmulp	st1,st0
	fld	qword [ebp-24]
	faddp	st1,st0
	fstp	qword [ebp-24]
	fld	qword [ebp-24]
	mov	eax,dword [ebp+24]
	fstp	dword [eax]
_604:
_601:
	mov	eax,0
	jmp	_250
_250:
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
	fld	qword [_1132]
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
	fld	qword [_1133]
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
	fld	dword [_1134]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_606
	fld	dword [_1135]
	fstp	dword [ebp-236]
	fld	dword [_1136]
	fmul	dword [ebp-236]
	fstp	dword [ebp-208]
	push	2
	push	9
	push	2
	push	_609
	call	_bbArrayNew
	add	esp,16
	mov	dword [ebp-228],eax
	mov	dword [ebp-224],-1
	push	2
	push	9
	push	2
	push	_612
	call	_bbArrayNew
	add	esp,16
	mov	dword [ebp-232],eax
	mov	dword [ebp-212],-1
	push	2
	push	9
	push	2
	push	_615
	call	_bbArrayNew
	add	esp,16
	mov	edi,eax
	push	2
	push	9
	push	2
	push	_617
	call	_bbArrayNew
	add	esp,16
	mov	dword [ebp-28],eax
	mov	dword [ebp-244],0
	jmp	_620
_54:
	mov	esi,0
	jmp	_622
_57:
	mov	eax,dword [ebp-244]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_623
	cmp	esi,1
	sete	al
	movzx	eax,al
_623:
	cmp	eax,0
	je	_625
	jmp	_55
_625:
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
	fadd	dword [_1137]
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
	fld	qword [_1138]
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
	fld	qword [_1139]
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
	fld	qword [_1140]
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
	fld	qword [_1141]
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
_622:
	cmp	esi,2
	jle	_57
_56:
_52:
	add	dword [ebp-244],1
_620:
	cmp	dword [ebp-244],2
	jle	_54
_53:
	mov	dword [ebp-224],-1
	mov	dword [ebp-240],0
	jmp	_628
_60:
	mov	esi,0
	jmp	_630
_63:
	mov	eax,dword [ebp-240]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_631
	cmp	esi,1
	sete	al
	movzx	eax,al
_631:
	cmp	eax,0
	je	_633
	jmp	_61
_633:
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
	fadd	dword [_1142]
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
	fld	qword [_1143]
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
	fld	qword [_1144]
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
	fld	qword [_1145]
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
	fld	qword [_1146]
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
_630:
	cmp	esi,2
	jle	_63
_62:
_58:
	add	dword [ebp-240],1
_628:
	cmp	dword [ebp-240],2
	jle	_60
_59:
	mov	dword [ebp-212],-1
	mov	dword [ebp-268],0
	jmp	_636
_66:
	mov	dword [ebp-248],0
	jmp	_638
_69:
	mov	eax,dword [ebp-268]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_639
	mov	eax,dword [ebp-248]
	cmp	eax,1
	sete	al
	movzx	eax,al
_639:
	cmp	eax,0
	je	_641
	jmp	_67
_641:
	add	dword [ebp-224],1
	mov	esi,0
	jmp	_643
_72:
	mov	ebx,0
	jmp	_645
_75:
	cmp	esi,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_646
	cmp	ebx,1
	sete	al
	movzx	eax,al
_646:
	cmp	eax,0
	je	_648
	jmp	_73
_648:
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
_645:
	cmp	ebx,2
	jle	_75
_74:
_70:
	add	esi,1
_643:
	cmp	esi,2
	jle	_72
_71:
	mov	dword [ebp-212],-1
_67:
	add	dword [ebp-248],1
_638:
	cmp	dword [ebp-248],2
	jle	_69
_68:
_64:
	add	dword [ebp-268],1
_636:
	cmp	dword [ebp-268],2
	jle	_66
_65:
	mov	dword [ebp-224],-1
	mov	dword [ebp-220],0
	jmp	_650
_78:
	mov	dword [ebp-216],0
	jmp	_652
_81:
	mov	eax,dword [ebp-220]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_653
	mov	eax,dword [ebp-216]
	cmp	eax,1
	sete	al
	movzx	eax,al
_653:
	cmp	eax,0
	je	_655
	jmp	_79
_655:
	add	dword [ebp-224],1
	mov	esi,0
	jmp	_657
_84:
	mov	ebx,0
	jmp	_659
_87:
	cmp	esi,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_660
	cmp	ebx,1
	sete	al
	movzx	eax,al
_660:
	cmp	eax,0
	je	_662
	jmp	_85
_662:
	add	dword [ebp-212],1
	fld	qword [_1147]
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
	fld	qword [_1148]
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
	fld	qword [_1149]
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
	fld	qword [_1150]
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
_659:
	cmp	ebx,2
	jle	_87
_86:
_82:
	add	esi,1
_657:
	cmp	esi,2
	jle	_84
_83:
	mov	dword [ebp-212],-1
_79:
	add	dword [ebp-216],1
_652:
	cmp	dword [ebp-216],2
	jle	_81
_80:
_76:
	add	dword [ebp-220],1
_650:
	cmp	dword [ebp-220],2
	jle	_78
_77:
	mov	dword [ebp-224],-1
	fld	dword [_1151]
	fld	dword [_1152]
	mov	ecx,0
	jmp	_668
_90:
	mov	edx,0
	jmp	_670
_93:
	cmp	ecx,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_671
	cmp	edx,1
	sete	al
	movzx	eax,al
_671:
	cmp	eax,0
	je	_673
	jmp	_91
_673:
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
_670:
	cmp	edx,2
	jle	_93
_92:
_88:
	add	ecx,1
_668:
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
	fld	dword [_1153]
	fld	dword [_1154]
	mov	ecx,0
	jmp	_677
_96:
	mov	edx,0
	jmp	_679
_99:
	cmp	ecx,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_680
	cmp	edx,1
	sete	al
	movzx	eax,al
_680:
	cmp	eax,0
	je	_682
	jmp	_97
_682:
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
_679:
	cmp	edx,2
	jle	_99
_98:
_94:
	add	ecx,1
_677:
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
	fld	dword [_1155]
	fstp	dword [ebp-260]
	mov	esi,0
	jmp	_685
_102:
	mov	ebx,0
	jmp	_687
_105:
	cmp	esi,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_688
	cmp	ebx,1
	sete	al
	movzx	eax,al
_688:
	cmp	eax,0
	je	_690
	jmp	_103
_690:
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
	fadd	dword [_1156]
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
	fadd	dword [_1157]
	fsub	dword [ebp-196]
	fadd	dword [_1158]
	jmp	_106
_108:
	fadd	dword [_1159]
_106:
	fld	dword [_1160]
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
	fsub	dword [_1161]
_109:
	fld	dword [_1162]
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
	je	_694
	cmp	ebx,0
	sete	al
	movzx	eax,al
_694:
	cmp	eax,0
	jne	_698
	cmp	esi,2
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_696
	cmp	ebx,2
	sete	al
	movzx	eax,al
_696:
_698:
	cmp	eax,0
	jne	_706
	cmp	esi,2
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_700
	cmp	ebx,0
	sete	al
	movzx	eax,al
_700:
	cmp	eax,0
	jne	_704
	cmp	esi,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_702
	cmp	ebx,2
	sete	al
	movzx	eax,al
_702:
_704:
_706:
	cmp	eax,0
	jne	_1218
	fstp	st0
	jmp	_708
_1218:
	fld	dword [ebp-260]
	fsubrp	st1,st0
	fstp	dword [ebp-260]
_708:
	fld	qword [_1163]
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
	fld	qword [_1164]
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
	fld	qword [_1165]
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
	fld	qword [_1166]
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
_687:
	cmp	ebx,2
	jle	_105
_104:
_100:
	add	esi,1
_685:
	cmp	esi,2
	jle	_102
_101:
	mov	eax,dword [ebp+16]
	fld	dword [eax]
	fadd	dword [ebp-260]
	mov	eax,dword [ebp+16]
	fstp	dword [eax]
	fld	dword [_1167]
	fstp	dword [ebp-264]
	mov	esi,0
	jmp	_712
_114:
	mov	ebx,0
	jmp	_714
_117:
	cmp	esi,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_715
	cmp	ebx,1
	sete	al
	movzx	eax,al
_715:
	cmp	eax,0
	je	_717
	jmp	_115
_717:
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
	fadd	dword [_1168]
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
	fadd	dword [_1169]
	fsub	dword [ebp-192]
	fadd	dword [_1170]
	jmp	_118
_120:
	fadd	dword [_1171]
_118:
	fld	dword [_1172]
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
	fsub	dword [_1173]
_121:
	fld	dword [_1174]
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
	je	_721
	cmp	ebx,0
	sete	al
	movzx	eax,al
_721:
	cmp	eax,0
	jne	_725
	cmp	esi,2
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_723
	cmp	ebx,2
	sete	al
	movzx	eax,al
_723:
_725:
	cmp	eax,0
	jne	_733
	cmp	esi,2
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_727
	cmp	ebx,0
	sete	al
	movzx	eax,al
_727:
	cmp	eax,0
	jne	_731
	cmp	esi,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_729
	cmp	ebx,2
	sete	al
	movzx	eax,al
_729:
_731:
_733:
	cmp	eax,0
	jne	_1219
	fstp	st0
	jmp	_735
_1219:
	fld	dword [ebp-264]
	fsubrp	st1,st0
	fstp	dword [ebp-264]
_735:
	fld	qword [_1175]
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
	fld	qword [_1176]
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
	fld	qword [_1177]
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
	fld	qword [_1178]
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
_714:
	cmp	ebx,2
	jle	_117
_116:
_112:
	add	esi,1
_712:
	cmp	esi,2
	jle	_114
_113:
	mov	eax,dword [ebp+32]
	fld	dword [eax]
	fadd	dword [ebp-264]
	mov	eax,dword [ebp+32]
	fstp	dword [eax]
_606:
	mov	eax,0
	jmp	_260
_260:
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
	fadd	dword [_1220]
	jmp	_124
_126:
	fadd	dword [_1221]
_124:
	fld	dword [_1222]
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
	fsub	dword [_1223]
_127:
	fld	dword [_1224]
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
	fld	dword [_1225]
	mov	edx,0
	fxch	st1
	fucom	st2
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_740
	fxch	st1
	fstp	st0
	fld	st1
	fchs
	mov	edx,1
	fxch	st1
_740:
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
	je	_1233
	fxch	st2
	fstp	st0
	jmp	_741
_1233:
	fxch	st1
	fstp	st0
	mov	edx,1
	fxch	st1
_741:
	cmp	edx,0
	je	_1234
	fxch	st1
	fstp	st0
	jmp	_742
_1234:
	fstp	st0
	fchs
_742:
	jmp	_265
_265:
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
	fadd	dword [_1235]
	jmp	_130
_132:
	fadd	dword [_1236]
_130:
	fld	dword [_1237]
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
	fsub	dword [_1238]
_133:
	fld	dword [_1239]
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
	fld	dword [_1240]
	mov	edx,0
	fxch	st1
	fucom	st2
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_746
	mov	edx,1
_746:
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
	jne	_747
	mov	edx,1
_747:
	cmp	edx,0
	jne	_748
	fstp	st0
	fld	dword [_1241]
_748:
	jmp	_270
_270:
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
	fadd	dword [_1249]
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
	fsub	dword [_1250]
_139:
	fld	dword [_1251]
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
	jmp	_274
_274:
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
	jne	_757
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
	jnz	_767
	push	eax
	call	_bbGCFree
	add	esp,4
_767:
	mov	dword [esi+20],ebx
	cmp	dword [esi+20],_bbNullObject
	je	_145
	fld	qword [_1256]
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
	fld	qword [_1257]
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
_757:
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
	jne	_769
	mov	eax,dword [ebp+12]
	jmp	_278
_769:
	push	1065353216
	push	dword [ebp+12]
	call	_bb_wayray
	fstp	st0
	add	esp,8
	fld	dword [_1258]
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
	jnz	_780
	push	eax
	call	_bbGCFree
	add	esp,4
_780:
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
	jne	_781
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+20]
	mov	dword [ebp-32],eax
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+20]
	mov	eax,dword [eax+16]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	fstp	dword [ebp-20]
_781:
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
	jmp	_278
_278:
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
	jne	_782
	fld	dword [ebp+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebx+16],eax
_782:
	push	16
	push	_783
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
	jnz	_794
	push	eax
	call	_bbGCFree
	add	esp,4
_794:
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
	jne	_795
	cmp	ebx,dword [ebx+20]
	je	_796
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
	jne	_797
	mov	eax,dword [ebx+24]
	fld	dword [eax+edi*4+24]
	fadd	dword [ebp+12]
	mov	eax,dword [ebp-16]
	fstp	dword [eax+edi*4+24]
_797:
_796:
_795:
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
	fld	dword [_1268]
	mov	dword [ebp-32],-1
	mov	edx,0
	jmp	_801
_156:
	mov	eax,dword [ebp-16]
	fld	dword [eax+edx*4+24]
	fucomp	st1
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	je	_802
	mov	eax,dword [ebp-16]
	fld	dword [eax+edx*4+24]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
_802:
	cmp	eax,0
	je	_804
	fstp	st0
	mov	dword [ebp-32],edx
	mov	eax,dword [ebp-16]
	fld	dword [eax+edx*4+24]
_804:
_154:
	add	edx,1
_801:
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
	jnz	_813
	push	eax
	call	_bbGCFree
	add	esp,4
_813:
	mov	dword [ebx+20],esi
	cmp	dword [ebx+20],_bbNullObject
	je	_157
	cmp	dword [ebp-32],edi
	jne	_814
	mov	eax,dword [ebx+24]
	fld	dword [eax+edi*4+24]
	fadd	dword [ebp+12]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebx+20]
	call	_bb_wayray
	fstp	st0
	add	esp,8
_814:
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
	jnz	_823
	push	eax
	call	_bbGCFree
	add	esp,4
_823:
	mov	dword [ebx+20],esi
	cmp	dword [ebx+20],_bbNullObject
	je	_160
	cmp	dword [ebp-32],edi
	je	_824
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
	jne	_825
	mov	eax,dword [ebx+24]
	fld	dword [eax+edi*4+24]
	fadd	dword [ebp+12]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebx+20]
	call	_bb_wayray
	fstp	st0
	add	esp,8
_825:
_824:
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
	jmp	_282
_282:
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
	fld	dword [_1285]
	fstp	dword [ebp-40]
	push	3
	mov	eax,dword [ebp+32]
	add	eax,1
	push	eax
	mov	eax,dword [ebp+28]
	add	eax,1
	push	eax
	push	3
	push	_827
	call	_bbArrayNew
	add	esp,20
	mov	dword [ebp-4],eax
	mov	dword [ebp-12],0
	mov	eax,dword [ebp+28]
	mov	dword [ebp-48],eax
	jmp	_830
_165:
	mov	edi,0
	mov	eax,dword [ebp+32]
	mov	dword [ebp-28],eax
	jmp	_833
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
_833:
	cmp	edi,dword [ebp-28]
	jle	_168
_167:
_163:
	add	dword [ebp-12],1
_830:
	mov	eax,dword [ebp-48]
	cmp	dword [ebp-12],eax
	jle	_165
_164:
	fld	dword [ebp+16]
	fld	dword [ebp+8]
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_835
	fld	dword [ebp+20]
	fld	dword [ebp+12]
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
_835:
	cmp	eax,0
	je	_837
	fld	dword [_1286]
	jmp	_291
_837:
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
	jnz	_838
	push	dword [ebp-4]
	call	_bbGCFree
	add	esp,4
_838:
	fld	dword [_1287]
	fstp	dword [ebp-36]
	mov	dword [ebp-32],-1
	mov	dword [ebp-20],-1
	jmp	_843
_171:
	mov	edi,-1
	jmp	_845
_174:
	mov	eax,dword [ebp-20]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_846
	cmp	edi,0
	sete	al
	movzx	eax,al
_846:
	cmp	eax,0
	je	_848
	jmp	_849
_848:
	mov	eax,dword [ebp-20]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_850
	cmp	edi,-1
	sete	al
	movzx	eax,al
_850:
	cmp	eax,0
	je	_852
	mov	dword [ebp-32],225
_852:
	mov	eax,dword [ebp-20]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_853
	cmp	edi,0
	sete	al
	movzx	eax,al
_853:
	cmp	eax,0
	je	_855
	mov	dword [ebp-32],180
_855:
	mov	eax,dword [ebp-20]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_856
	cmp	edi,1
	sete	al
	movzx	eax,al
_856:
	cmp	eax,0
	je	_858
	mov	dword [ebp-32],135
_858:
	mov	eax,dword [ebp-20]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_859
	cmp	edi,-1
	sete	al
	movzx	eax,al
_859:
	cmp	eax,0
	je	_861
	mov	dword [ebp-32],270
_861:
	mov	eax,dword [ebp-20]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_862
	cmp	edi,1
	sete	al
	movzx	eax,al
_862:
	cmp	eax,0
	je	_864
	mov	dword [ebp-32],90
_864:
	mov	eax,dword [ebp-20]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_865
	cmp	edi,-1
	sete	al
	movzx	eax,al
_865:
	cmp	eax,0
	je	_867
	mov	dword [ebp-32],315
_867:
	mov	eax,dword [ebp-20]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_868
	cmp	edi,0
	sete	al
	movzx	eax,al
_868:
	cmp	eax,0
	je	_870
	mov	dword [ebp-32],0
_870:
	mov	eax,dword [ebp-20]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_871
	cmp	edi,1
	sete	al
	movzx	eax,al
_871:
	cmp	eax,0
	je	_873
	mov	dword [ebp-32],46
_873:
	mov	esi,dword [ebp-4]
	fld	dword [ebp+16]
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
	fld	dword [ebp+20]
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
	jne	_874
	mov	eax,dword [ebp-32]
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	fstp	dword [ebp-40]
	mov	esi,dword [ebp-4]
	fld	dword [ebp+16]
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
	fld	dword [ebp+20]
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
_874:
_849:
_172:
	add	edi,1
_845:
	cmp	edi,1
	jle	_174
_173:
_169:
	add	dword [ebp-20],1
_843:
	cmp	dword [ebp-20],1
	jle	_171
_170:
	mov	dword [ebp-16],0
	mov	eax,dword [ebp+28]
	mov	dword [ebp-44],eax
	jmp	_876
_177:
	mov	dword [ebp-8],0
	mov	eax,dword [ebp+32]
	mov	dword [ebp-24],eax
	jmp	_879
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
_879:
	mov	eax,dword [ebp-24]
	cmp	dword [ebp-8],eax
	jle	_180
_179:
_175:
	add	dword [ebp-16],1
_876:
	mov	eax,dword [ebp-44]
	cmp	dword [ebp-16],eax
	jle	_177
_176:
	fld	dword [ebp-40]
	jmp	_291
_291:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_mapray:
	push	ebp
	mov	ebp,esp
	sub	esp,8
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
	je	_881
	mov	eax,dword [ebp+8]
	cmp	eax,dword [ebp+20]
	setl	al
	movzx	eax,al
_881:
	cmp	eax,0
	je	_883
	mov	eax,dword [ebp+12]
	cmp	eax,0
	setg	al
	movzx	eax,al
_883:
	cmp	eax,0
	je	_885
	mov	eax,dword [ebp+12]
	cmp	eax,dword [ebp+24]
	setl	al
	movzx	eax,al
_885:
	cmp	eax,0
	je	_887
	fld1
	fld	dword [ebp+28]
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_888
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
_888:
	mov	dword [ebp-4],-1
	jmp	_890
_183:
	mov	edi,-1
	jmp	_892
_186:
	mov	eax,dword [ebp-4]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_893
	cmp	edi,0
	sete	al
	movzx	eax,al
_893:
	cmp	eax,0
	je	_895
	jmp	_896
_895:
	fld	dword [_1313]
	mov	eax,dword [ebp-4]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_898
	cmp	edi,-1
	sete	al
	movzx	eax,al
_898:
	cmp	eax,0
	je	_900
	fstp	st0
	fld	dword [_bb_diagonal]
_900:
	mov	eax,dword [ebp-4]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_901
	cmp	edi,0
	sete	al
	movzx	eax,al
_901:
	cmp	eax,0
	je	_903
	fstp	st0
	fld	dword [_1314]
_903:
	mov	eax,dword [ebp-4]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_904
	cmp	edi,1
	sete	al
	movzx	eax,al
_904:
	cmp	eax,0
	je	_906
	fstp	st0
	fld	dword [_bb_diagonal]
_906:
	mov	eax,dword [ebp-4]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_907
	cmp	edi,-1
	sete	al
	movzx	eax,al
_907:
	cmp	eax,0
	je	_909
	fstp	st0
	fld	dword [_1315]
_909:
	mov	eax,dword [ebp-4]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_910
	cmp	edi,1
	sete	al
	movzx	eax,al
_910:
	cmp	eax,0
	je	_912
	fstp	st0
	fld	dword [_1316]
_912:
	mov	eax,dword [ebp-4]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_913
	cmp	edi,-1
	sete	al
	movzx	eax,al
_913:
	cmp	eax,0
	je	_915
	fstp	st0
	fld	dword [_bb_diagonal]
_915:
	mov	eax,dword [ebp-4]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_916
	cmp	edi,0
	sete	al
	movzx	eax,al
_916:
	cmp	eax,0
	je	_918
	fstp	st0
	fld	dword [_1317]
_918:
	mov	eax,dword [ebp-4]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_919
	cmp	edi,1
	sete	al
	movzx	eax,al
_919:
	cmp	eax,0
	je	_921
	fstp	st0
	fld	dword [_bb_diagonal]
_921:
	mov	eax,dword [ebp+16]
	mov	ecx,dword [eax]
	mov	edx,dword [ebp+8]
	add	edx,dword [ebp-4]
	mov	eax,dword [ebp+16]
	mov	eax,dword [eax]
	imul	edx,dword [eax+24]
	mov	eax,dword [ebp+12]
	add	eax,edi
	mov	ebx,dword [ebp+16]
	mov	ebx,dword [ebx]
	imul	eax,dword [ebx+28]
	add	edx,eax
	add	edx,2
	cmp	dword [ecx+edx*4+32],0
	je	_1370
	fstp	st0
	jmp	_922
_1370:
	mov	eax,dword [ebp+16]
	mov	ecx,dword [eax]
	mov	edx,dword [ebp+8]
	add	edx,dword [ebp-4]
	mov	eax,dword [ebp+16]
	mov	eax,dword [eax]
	imul	edx,dword [eax+24]
	mov	eax,dword [ebp+12]
	add	eax,edi
	mov	ebx,dword [ebp+16]
	mov	ebx,dword [ebx]
	imul	eax,dword [ebx+28]
	add	edx,eax
	add	edx,1
	mov	eax,dword [ecx+edx*4+32]
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	fld	st1
	fadd	dword [ebp+28]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	je	_1371
	fstp	st0
	jmp	_923
_1371:
	mov	eax,dword [ebp+16]
	mov	esi,dword [eax]
	mov	eax,dword [ebp+8]
	add	eax,dword [ebp-4]
	mov	edx,dword [ebp+16]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edx,dword [ebp+12]
	add	edx,edi
	mov	ecx,dword [ebp+16]
	mov	ecx,dword [ecx]
	imul	edx,dword [ecx+28]
	add	eax,edx
	mov	ebx,eax
	add	ebx,1
	fadd	dword [ebp+28]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [esi+ebx*4+32],eax
_923:
_922:
_896:
_184:
	add	edi,1
_892:
	cmp	edi,1
	jle	_186
_185:
_181:
	add	dword [ebp-4],1
_890:
	cmp	dword [ebp-4],1
	jle	_183
_182:
	mov	edi,-1
	jmp	_925
_189:
	mov	ebx,-1
	jmp	_927
_192:
	cmp	edi,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_928
	cmp	ebx,0
	sete	al
	movzx	eax,al
_928:
	cmp	eax,0
	je	_930
	jmp	_931
_930:
	fld	dword [_1318]
	cmp	edi,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_933
	cmp	ebx,-1
	sete	al
	movzx	eax,al
_933:
	cmp	eax,0
	je	_935
	fstp	st0
	fld	dword [_bb_diagonal]
_935:
	cmp	edi,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_936
	cmp	ebx,0
	sete	al
	movzx	eax,al
_936:
	cmp	eax,0
	je	_938
	fstp	st0
	fld	dword [_1319]
_938:
	cmp	edi,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_939
	cmp	ebx,1
	sete	al
	movzx	eax,al
_939:
	cmp	eax,0
	je	_941
	fstp	st0
	fld	dword [_bb_diagonal]
_941:
	cmp	edi,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_942
	cmp	ebx,-1
	sete	al
	movzx	eax,al
_942:
	cmp	eax,0
	je	_944
	fstp	st0
	fld	dword [_1320]
_944:
	cmp	edi,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_945
	cmp	ebx,1
	sete	al
	movzx	eax,al
_945:
	cmp	eax,0
	je	_947
	fstp	st0
	fld	dword [_1321]
_947:
	cmp	edi,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_948
	cmp	ebx,-1
	sete	al
	movzx	eax,al
_948:
	cmp	eax,0
	je	_950
	fstp	st0
	fld	dword [_bb_diagonal]
_950:
	cmp	edi,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_951
	cmp	ebx,0
	sete	al
	movzx	eax,al
_951:
	cmp	eax,0
	je	_953
	fstp	st0
	fld	dword [_1322]
_953:
	cmp	edi,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_954
	cmp	ebx,1
	sete	al
	movzx	eax,al
_954:
	cmp	eax,0
	je	_956
	fstp	st0
	fld	dword [_bb_diagonal]
_956:
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
	je	_1369
	fstp	st0
	jmp	_957
_1369:
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
_957:
_931:
_190:
	add	ebx,1
_927:
	cmp	ebx,1
	jle	_192
_191:
_187:
	add	edi,1
_925:
	cmp	edi,1
	jle	_189
_188:
_887:
	mov	eax,0
	jmp	_299
_299:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_587:
	dd	0
_218:
	db	"Twaypoint",0
_219:
	db	"x",0
_220:
	db	"f",0
_221:
	db	"y",0
_222:
	db	"cheacked",0
_223:
	db	"i",0
_224:
	db	"otherWP",0
_225:
	db	":Twaypoint",0
_226:
	db	"dist",0
_227:
	db	"[]f",0
_228:
	db	"chaged",0
_229:
	db	"used",0
_230:
	db	"otherlist",0
_231:
	db	":brl.linkedlist.TList",0
_232:
	db	"New",0
_233:
	db	"()i",0
_234:
	db	"Delete",0
	align	4
_217:
	dd	2
	dd	_218
	dd	3
	dd	_219
	dd	_220
	dd	8
	dd	3
	dd	_221
	dd	_220
	dd	12
	dd	3
	dd	_222
	dd	_223
	dd	16
	dd	3
	dd	_224
	dd	_225
	dd	20
	dd	3
	dd	_226
	dd	_227
	dd	24
	dd	3
	dd	_228
	dd	_223
	dd	28
	dd	3
	dd	_229
	dd	_220
	dd	32
	dd	3
	dd	_230
	dd	_231
	dd	36
	dd	6
	dd	_232
	dd	_233
	dd	16
	dd	6
	dd	_234
	dd	_233
	dd	20
	dd	0
	align	4
_bb_Twaypoint:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_217
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
_302:
	dd	0
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
_bb_fenster:
	dd	_bbNullObject
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
_958:
	dd	0x42c80000
	align	4
_959:
	dd	0x3f800000
	align	8
_960:
	dd	0x0,0x40000000
	align	8
_961:
	dd	0x0,0x40000000
	align	4
_962:
	dd	0x40000000
	align	4
_963:
	dd	0x3f800000
	align	4
_964:
	dd	0x40000000
	align	4
_965:
	dd	0x3f800000
	align	8
_966:
	dd	0x0,0x40000000
	align	8
_967:
	dd	0x0,0x40000000
	align	4
_968:
	dd	0x40000000
	align	4
_969:
	dd	0x40000000
	align	4
_970:
	dd	0x40400000
	align	4
_971:
	dd	0x40000000
	align	8
_972:
	dd	0x0,0x40000000
	align	8
_973:
	dd	0x0,0x40000000
	align	4
_974:
	dd	0x40000000
	align	4
_975:
	dd	0x40400000
	align	4
_976:
	dd	0x40800000
	align	4
_977:
	dd	0x40400000
	align	8
_978:
	dd	0x0,0x40000000
	align	8
_979:
	dd	0x0,0x40000000
	align	4
_980:
	dd	0x40000000
	align	4
_981:
	dd	0x40800000
	align	4
_982:
	dd	0x40a00000
	align	4
_983:
	dd	0x40800000
	align	8
_984:
	dd	0x0,0x40000000
	align	8
_985:
	dd	0x0,0x40000000
	align	4
_986:
	dd	0x40000000
	align	4
_987:
	dd	0x40a00000
	align	4
_988:
	dd	0x40c00000
	align	4
_989:
	dd	0x40a00000
	align	8
_990:
	dd	0x0,0x40000000
	align	8
_991:
	dd	0x0,0x40000000
	align	4
_992:
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
_476:
	db	"i",0
	align	4
_bb_waycecker:
	dd	0
	align	8
_993:
	dd	0x0,0x40000000
	align	4
_bb_diagonal:
	dd	0x0
	align	4
_bb_tmr:
	dd	_bbNullObject
	align	4
_994:
	dd	0x41a00000
	align	4
_995:
	dd	0x41a00000
	align	4
_996:
	dd	0x41a00000
	align	4
_997:
	dd	0x41a00000
	align	8
_998:
	dd	0x0,0x40000000
	align	8
_999:
	dd	0x0,0x40000000
	align	8
_1000:
	dd	0x0,0x4070e000
	align	4
_1001:
	dd	0x40000000
	align	4
_1002:
	dd	0x42b40000
	align	4
_1003:
	dd	0x40000000
	align	4
_1004:
	dd	0x40000000
	align	8
_1005:
	dd	0x0,0x40000000
	align	8
_1006:
	dd	0x0,0x40000000
	align	8
_1007:
	dd	0x0,0x4070e000
	align	4
_1008:
	dd	0x40000000
	align	4
_1009:
	dd	0x42b40000
	align	4
_1010:
	dd	0x40000000
	align	4
_1011:
	dd	0x40000000
	align	4
_1012:
	dd	0x41a00000
	align	4
_205:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	60
	align	4
_2:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	62
	align	8
_1013:
	dd	0x0,0x40668000
	align	4
_1014:
	dd	0x42b40000
	align	8
_1015:
	dd	0x0,0x403b0000
	align	4
_1016:
	dd	0x42b40000
	align	8
_1017:
	dd	0x0,0x403b0000
	align	4
_1018:
	dd	0x42b40000
	align	8
_1019:
	dd	0x0,0x40180000
	align	4
_1020:
	dd	0x42b40000
	align	8
_1021:
	dd	0x0,0x40180000
	align	8
_1022:
	dd	0x0,0x40000000
	align	8
_1023:
	dd	0x0,0x40000000
	align	8
_1024:
	dd	0x0,0x403e0000
	align	8
_1025:
	dd	0x0,0x40590000
	align	4
_1026:
	dd	0xbf800000
	align	8
_1027:
	dd	0x0,0x40588000
	align	8
_1028:
	dd	0x0,0x40588000
	align	4
_1029:
	dd	0x42340000
	align	4
_1030:
	dd	0x42b40000
	align	4
_1031:
	dd	0x43070000
	align	4
_1032:
	dd	0x43340000
	align	4
_1033:
	dd	0x43610000
	align	4
_1034:
	dd	0x43870000
	align	4
_1035:
	dd	0x439d8000
	align	4
_215:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	78,79,84,33
	align	4
_216:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	70,79,85,78,68,33
_590:
	db	"f",0
	align	8
_1117:
	dd	0x0,0x40000000
	align	8
_1118:
	dd	0x0,0x40000000
	align	4
_1119:
	dd	0x40000000
	align	4
_1120:
	dd	0x40000000
	align	4
_1121:
	dd	0x42b40000
	align	4
_1122:
	dd	0x40000000
	align	4
_1123:
	dd	0x40000000
	align	4
_1124:
	dd	0x43340000
	align	4
_1125:
	dd	0x40000000
	align	4
_1126:
	dd	0x43340000
	align	4
_1127:
	dd	0x40000000
	align	8
_1132:
	dd	0x0,0x40000000
	align	8
_1133:
	dd	0x0,0x40000000
	align	4
_1134:
	dd	0x42a00000
	align	4
_1135:
	dd	0x3f19999a
	align	4
_1136:
	dd	0x42200000
_609:
	db	"f",0
_612:
	db	"f",0
_615:
	db	"f",0
_617:
	db	"f",0
	align	4
_1137:
	dd	0x42b40000
	align	8
_1138:
	dd	0x0,0x40000000
	align	8
_1139:
	dd	0x0,0x40000000
	align	8
_1140:
	dd	0x0,0x40000000
	align	8
_1141:
	dd	0x0,0x40000000
	align	4
_1142:
	dd	0x42b40000
	align	8
_1143:
	dd	0x0,0x40000000
	align	8
_1144:
	dd	0x0,0x40000000
	align	8
_1145:
	dd	0x0,0x40000000
	align	8
_1146:
	dd	0x0,0x40000000
	align	8
_1147:
	dd	0x0,0x40000000
	align	8
_1148:
	dd	0x0,0x40000000
	align	8
_1149:
	dd	0x0,0x40000000
	align	8
_1150:
	dd	0x0,0x40000000
	align	4
_1151:
	dd	0x0
	align	4
_1152:
	dd	0x0
	align	4
_1153:
	dd	0x0
	align	4
_1154:
	dd	0x0
	align	4
_1155:
	dd	0x0
	align	4
_1156:
	dd	0x42b40000
	align	4
_1157:
	dd	0x42b40000
	align	4
_1158:
	dd	0x43340000
	align	4
_1159:
	dd	0x43b40000
	align	4
_1160:
	dd	0xc3340000
	align	4
_1161:
	dd	0x43b40000
	align	4
_1162:
	dd	0x43340000
	align	8
_1163:
	dd	0x0,0x40000000
	align	8
_1164:
	dd	0x0,0x40000000
	align	8
_1165:
	dd	0x0,0x40000000
	align	8
_1166:
	dd	0x0,0x40000000
	align	4
_1167:
	dd	0x0
	align	4
_1168:
	dd	0x42b40000
	align	4
_1169:
	dd	0x42b40000
	align	4
_1170:
	dd	0x43340000
	align	4
_1171:
	dd	0x43b40000
	align	4
_1172:
	dd	0xc3340000
	align	4
_1173:
	dd	0x43b40000
	align	4
_1174:
	dd	0x43340000
	align	8
_1175:
	dd	0x0,0x40000000
	align	8
_1176:
	dd	0x0,0x40000000
	align	8
_1177:
	dd	0x0,0x40000000
	align	8
_1178:
	dd	0x0,0x40000000
	align	4
_1220:
	dd	0x43340000
	align	4
_1221:
	dd	0x43b40000
	align	4
_1222:
	dd	0xc3340000
	align	4
_1223:
	dd	0x43b40000
	align	4
_1224:
	dd	0x43340000
	align	4
_1225:
	dd	0x0
	align	4
_1235:
	dd	0x43340000
	align	4
_1236:
	dd	0x43b40000
	align	4
_1237:
	dd	0xc3340000
	align	4
_1238:
	dd	0x43b40000
	align	4
_1239:
	dd	0x43340000
	align	4
_1240:
	dd	0x0
	align	4
_1241:
	dd	0x3f800000
	align	4
_1249:
	dd	0x43b40000
	align	4
_1250:
	dd	0x43b40000
	align	4
_1251:
	dd	0x43b40000
	align	8
_1256:
	dd	0x0,0x40000000
	align	8
_1257:
	dd	0x0,0x40000000
	align	4
_1258:
	dd	0x461c3c00
_783:
	db	"f",0
	align	4
_1268:
	dd	0x461c3c00
	align	4
_1285:
	dd	0xbf800000
_827:
	db	"i",0
	align	4
_1286:
	dd	0xbf800000
	align	4
_1287:
	dd	0x461c3c00
	align	4
_1313:
	dd	0x0
	align	4
_1314:
	dd	0x3f800000
	align	4
_1315:
	dd	0x3f800000
	align	4
_1316:
	dd	0x3f800000
	align	4
_1317:
	dd	0x3f800000
	align	4
_1318:
	dd	0x0
	align	4
_1319:
	dd	0x3f800000
	align	4
_1320:
	dd	0x3f800000
	align	4
_1321:
	dd	0x3f800000
	align	4
_1322:
	dd	0x3f800000
