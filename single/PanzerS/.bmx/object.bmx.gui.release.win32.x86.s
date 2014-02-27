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
	extrn	_bbAppArgs
	extrn	_bbAppTitle
	extrn	_bbArrayNew
	extrn	_bbArrayNew1D
	extrn	_bbCos
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
	extrn	_brl_retro_Right
	extrn	_brl_system_Notify
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
	push	ebx
	push	esi
	push	edi
	cmp	dword [_346],0
	je	_347
	mov	eax,0
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_347:
	mov	dword [_346],1
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
	push	0
	mov	eax,dword [_bbAppArgs]
	push	dword [eax+20]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_20
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_system_Notify
	add	esp,8
	mov	esi,dword [_bbAppArgs]
	mov	eax,esi
	add	eax,24
	mov	ebx,eax
	mov	eax,ebx
	add	eax,dword [esi+16]
	mov	edi,eax
	jmp	_21
_23:
	mov	eax,dword [ebx]
	add	ebx,4
	cmp	eax,_bbNullObject
	je	_21
	push	0
	push	4
	push	eax
	call	_brl_retro_Right
	add	esp,8
	push	eax
	call	_brl_system_Notify
	add	esp,8
_21:
	cmp	ebx,edi
	jne	_23
_22:
	call	_bbEnd
	mov	eax,dword [_285]
	and	eax,1
	cmp	eax,0
	jne	_286
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_texturlist],eax
	or	dword [_285],1
_286:
	mov	eax,dword [_285]
	and	eax,2
	cmp	eax,0
	jne	_288
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_maptexturlist],eax
	or	dword [_285],2
_288:
	mov	eax,dword [_285]
	and	eax,4
	cmp	eax,0
	jne	_290
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_texgrouplist],eax
	or	dword [_285],4
_290:
	mov	eax,dword [_285]
	and	eax,8
	cmp	eax,0
	jne	_292
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_maptexgrouplist],eax
	or	dword [_285],8
_292:
	mov	eax,dword [_285]
	and	eax,16
	cmp	eax,0
	jne	_294
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_waypointlist],eax
	or	dword [_285],16
_294:
	mov	eax,dword [_285]
	and	eax,32
	cmp	eax,0
	jne	_296
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_printlistlist],eax
	or	dword [_285],32
_296:
	mov	eax,dword [_285]
	and	eax,64
	cmp	eax,0
	jne	_298
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_actionlist],eax
	or	dword [_285],64
_298:
	mov	eax,dword [_285]
	and	eax,128
	cmp	eax,0
	jne	_300
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_infotextlist],eax
	or	dword [_285],128
_300:
	mov	ebx,_24
	inc	dword [ebx+4]
	mov	eax,dword [_bbAppTitle]
	dec	dword [eax+4]
	jnz	_304
	push	eax
	call	_bbGCFree
	add	esp,4
_304:
	mov	dword [_bbAppTitle],ebx
	mov	eax,dword [_285]
	and	eax,256
	cmp	eax,0
	jne	_306
	push	0
	push	60
	push	0
	push	768
	push	1024
	call	_brl_graphics_Graphics
	add	esp,20
	inc	dword [eax+4]
	mov	dword [_bb_fenster],eax
	or	dword [_285],256
_306:
	push	3
	call	_brl_max2d_SetBlend
	add	esp,4
	call	_brl_max2d_Cls
	push	1136427008
	push	1138556928
	push	_308
	call	_brl_max2d_DrawText
	add	esp,12
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
	mov	eax,dword [_285]
	and	eax,512
	cmp	eax,0
	jne	_310
	push	-1
	push	_28
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_laterne_1],eax
	or	dword [_285],512
_310:
	mov	eax,dword [_285]
	and	eax,1024
	cmp	eax,0
	jne	_312
	push	-1
	push	_29
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_laterne_2],eax
	or	dword [_285],1024
_312:
	mov	eax,dword [_285]
	and	eax,2048
	cmp	eax,0
	jne	_314
	push	-1
	push	_30
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_laterne_3],eax
	or	dword [_285],2048
_314:
	mov	eax,dword [_285]
	and	eax,4096
	cmp	eax,0
	jne	_316
	push	-1
	push	_31
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_waypoint_1],eax
	or	dword [_285],4096
_316:
	mov	eax,dword [_285]
	and	eax,8192
	cmp	eax,0
	jne	_318
	push	-1
	push	_32
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_waypoint_2],eax
	or	dword [_285],8192
_318:
	mov	esi,dword [_bb_texgrouplist]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_33
_35:
	push	_bb_Ttexgroup
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_33
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_nowGroup]
	dec	dword [eax+4]
	jnz	_328
	push	eax
	call	_bbGCFree
	add	esp,4
_328:
	mov	dword [_bb_nowGroup],ebx
	jmp	_34
_33:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_35
_34:
	mov	eax,dword [_285]
	and	eax,16384
	cmp	eax,0
	jne	_329
	fld	qword [_727]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fstp	dword [_bb_diagonal]
	or	dword [_285],16384
_329:
	mov	eax,dword [_285]
	and	eax,32768
	cmp	eax,0
	jne	_331
	push	_bbNullObject
	push	1109393408
	call	_brl_timer_CreateTimer
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_tmr],eax
	or	dword [_285],32768
_331:
	jmp	_111
_113:
	mov	eax,dword [_bb_tmr]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	call	_brl_max2d_Cls
	push	1
	call	_brl_polledinput_MouseHit
	add	esp,4
	mov	dword [_bb_md],eax
	push	128
	push	128
	push	128
	call	_brl_max2d_SetColor
	add	esp,12
	push	1145028608
	push	1149222912
	push	0
	push	0
	call	_brl_max2d_DrawRect
	add	esp,16
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	mov	eax,dword [_bb_md]
	cmp	eax,0
	je	_333
	mov	eax,dword [_bb_spass]
	cmp	eax,0
	sete	al
	movzx	eax,al
_333:
	cmp	eax,0
	je	_335
	mov	dword [_bb_spass],1
_335:
	cmp	dword [_bb_spass],1
	jne	_336
	fld	dword [_bb_tex1w]
	fadd	dword [_728]
	fstp	dword [_bb_tex1w]
	fld	dword [_bb_tex1w]
	fld	dword [_729]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_337
	mov	dword [_bb_spass],2
_337:
_336:
	fld	dword [_bb_tex2w]
	fadd	dword [_730]
	fstp	dword [_bb_tex2w]
	fld	dword [_bb_tex2w]
	fld	dword [_731]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_338
	fld	dword [_bb_tex2w]
	fsub	dword [_732]
	fstp	dword [_bb_tex2w]
_338:
	cmp	dword [_bb_spass],2
	jl	_339
	add	dword [_bb_spass],1
	cmp	dword [_bb_spass],120
	jle	_340
	mov	dword [_bb_spass],0
	fldz
	fstp	dword [_bb_tex1w]
_340:
_339:
	push	1134559232
	push	1134559232
	push	1120403456
	push	1120403456
	push	dword [_bb_laterne_2]
	call	_bb_DrawPicture
	add	esp,20
	fld	dword [_bb_tex1y]
	fmul	dword [_733]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_bb_tex1x]
	fmul	dword [_734]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetHandle
	add	esp,8
	push	dword [_bb_tex1w]
	call	_brl_max2d_SetRotation
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
	jne	_343
	fld	dword [_bb_tex1w]
	fld	dword [_735]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	je	_341
	fld	dword [_bb_tex1w]
	fld	dword [_736]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
_341:
_343:
	cmp	eax,0
	je	_345
	push	1134559232
	push	1134559232
	fld	dword [_737]
	fld	dword [_bb_tex1x]
	fmul	dword [_738]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_739]
	fld	dword [_bb_tex1y]
	fmul	dword [_740]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_laterne_3]
	call	_bb_DrawPicture
	add	esp,20
_345:
	push	1134559232
	push	1134559232
	fld	dword [_741]
	fld	dword [_bb_tex1x]
	fmul	dword [_742]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_743]
	fld	dword [_bb_tex1y]
	fmul	dword [_744]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_laterne_1]
	call	_bb_DrawPicture
	add	esp,20
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	0
	push	0
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1126170624
	push	1126170624
	push	1120403456
	push	1140457472
	push	dword [_bb_waypoint_2]
	call	_bb_DrawPicture
	add	esp,20
	push	1103626240
	push	1103626240
	call	_brl_max2d_SetHandle
	add	esp,8
	push	dword [_bb_tex2w]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	1112014848
	push	1112014848
	fld	dword [_745]
	fld	dword [_bb_tex2x]
	fmul	dword [_746]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_747]
	fld	dword [_bb_tex2y]
	fmul	dword [_748]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_waypoint_1]
	call	_bb_DrawPicture
	add	esp,20
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	0
	push	0
	call	_brl_max2d_SetHandle
	add	esp,8
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
_111:
	push	27
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_113
_112:
	call	_bbEnd
	mov	eax,0
	jmp	_177
_177:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Ttextur_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_Ttextur
	push	8
	push	_348
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [ebx+8],eax
	mov	dword [ebx+12],0
	mov	dword [ebx+16],0
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+20],eax
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [ebx+24],eax
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+28],eax
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+32],eax
	mov	dword [ebx+36],0
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+40],eax
	mov	byte [ebx+44],0
	mov	byte [ebx+45],0
	mov	byte [ebx+46],0
	mov	byte [ebx+47],0
	mov	byte [ebx+48],0
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+52],eax
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+56],eax
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+60],eax
	mov	byte [ebx+64],0
	mov	eax,0
	jmp	_180
_180:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Ttextur_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_183:
	mov	eax,dword [ebx+60]
	dec	dword [eax+4]
	jnz	_360
	push	eax
	call	_bbGCFree
	add	esp,4
_360:
	mov	eax,dword [ebx+56]
	dec	dword [eax+4]
	jnz	_362
	push	eax
	call	_bbGCFree
	add	esp,4
_362:
	mov	eax,dword [ebx+52]
	dec	dword [eax+4]
	jnz	_364
	push	eax
	call	_bbGCFree
	add	esp,4
_364:
	mov	eax,dword [ebx+40]
	dec	dword [eax+4]
	jnz	_366
	push	eax
	call	_bbGCFree
	add	esp,4
_366:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_368
	push	eax
	call	_bbGCFree
	add	esp,4
_368:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_370
	push	eax
	call	_bbGCFree
	add	esp,4
_370:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_372
	push	eax
	call	_bbGCFree
	add	esp,4
_372:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_374
	push	eax
	call	_bbGCFree
	add	esp,4
_374:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_376
	push	eax
	call	_bbGCFree
	add	esp,4
_376:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_358
_358:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Ttexgroup_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_Ttexgroup
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+8],eax
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+12],eax
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [ebx+16],eax
	mov	eax,0
	jmp	_186
_186:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Ttexgroup_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_189:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_382
	push	eax
	call	_bbGCFree
	add	esp,4
_382:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_384
	push	eax
	call	_bbGCFree
	add	esp,4
_384:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_386
	push	eax
	call	_bbGCFree
	add	esp,4
_386:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_380
_380:
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
	mov	dword [ebx+20],0
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+24],eax
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+28],eax
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+32],eax
	push	16
	push	_390
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [ebx+36],eax
	mov	dword [ebx+40],1
	fldz
	fstp	dword [ebx+44]
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [ebx+48],eax
	push	16
	push	_393
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [ebx+52],eax
	push	20
	push	_395
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [ebx+56],eax
	mov	eax,0
	jmp	_192
_192:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Twaypoint_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_195:
	mov	eax,dword [ebx+56]
	dec	dword [eax+4]
	jnz	_399
	push	eax
	call	_bbGCFree
	add	esp,4
_399:
	mov	eax,dword [ebx+52]
	dec	dword [eax+4]
	jnz	_401
	push	eax
	call	_bbGCFree
	add	esp,4
_401:
	mov	eax,dword [ebx+48]
	dec	dword [eax+4]
	jnz	_403
	push	eax
	call	_bbGCFree
	add	esp,4
_403:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_405
	push	eax
	call	_bbGCFree
	add	esp,4
_405:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_407
	push	eax
	call	_bbGCFree
	add	esp,4
_407:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_409
	push	eax
	call	_bbGCFree
	add	esp,4
_409:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_411
	push	eax
	call	_bbGCFree
	add	esp,4
_411:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_397
_397:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Taction_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_Taction
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+8],eax
	mov	dword [ebx+12],0
	mov	dword [ebx+16],0
	mov	dword [ebx+20],0
	mov	dword [ebx+24],0
	mov	eax,0
	jmp	_198
_198:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Taction_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_201:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_415
	push	eax
	call	_bbGCFree
	add	esp,4
_415:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_413
_413:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tinfotext_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_Tinfotext
	mov	dword [ebx+8],0
	mov	dword [ebx+12],0
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+16],eax
	mov	eax,0
	jmp	_204
_204:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tinfotext_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_207:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_419
	push	eax
	call	_bbGCFree
	add	esp,4
_419:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_417
_417:
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
	fld	qword [_800]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-24]
	fld	qword [_801]
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
	fld	qword [_802]
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
	jmp	_214
_214:
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
	fld	qword [_805]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [esi]
	fsub	dword [edi]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-16]
	fld	qword [_806]
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
	fdiv	dword [_807]
	fstp	dword [ebp+16]
	fld	dword [ebp+28]
	fdiv	dword [_808]
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
	jne	_429
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
	fadd	dword [_809]
	fstp	dword [ebp-8]
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,1
	jne	_431
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
	jmp	_432
_431:
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
	fdiv	dword [_810]
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
	fdiv	dword [_811]
	fmulp	st1,st0
	fld	qword [ebp-40]
	faddp	st1,st0
	fstp	qword [ebp-40]
	fld	qword [ebp-40]
	fstp	dword [ebx]
	fld	dword [edi]
	fstp	qword [ebp-32]
	fld	dword [ebp-8]
	fsub	dword [_812]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	dword [ebp+16]
	fadd	dword [ebp+28]
	fsub	dword [ebp-68]
	fdiv	dword [_813]
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
	fsub	dword [_814]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	dword [ebp+16]
	fadd	dword [ebp+28]
	fsub	dword [ebp-68]
	fdiv	dword [_815]
	fmulp	st1,st0
	fld	qword [ebp-24]
	faddp	st1,st0
	fstp	qword [ebp-24]
	fld	qword [ebp-24]
	mov	eax,dword [ebp+24]
	fstp	dword [eax]
_432:
_429:
	mov	eax,0
	jmp	_223
_223:
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
	fadd	dword [_820]
	jmp	_36
_38:
	fadd	dword [_821]
_36:
	fld	dword [_822]
	fxch	st1
	fucom	st1
	fxch	st1
	fstp	st0
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_38
_37:
	jmp	_39
_41:
	fsub	dword [_823]
_39:
	fld	dword [_824]
	fxch	st1
	fucom	st1
	fxch	st1
	fstp	st0
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_41
_40:
	fld	dword [_825]
	mov	edx,0
	fxch	st1
	fucom	st2
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_436
	fxch	st1
	fstp	st0
	fld	st1
	fchs
	mov	edx,1
	fxch	st1
_436:
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
	je	_833
	fxch	st2
	fstp	st0
	jmp	_437
_833:
	fxch	st1
	fstp	st0
	mov	edx,1
	fxch	st1
_437:
	cmp	edx,0
	je	_834
	fxch	st1
	fstp	st0
	jmp	_438
_834:
	fstp	st0
	fchs
_438:
	jmp	_228
_228:
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
	fadd	dword [_835]
	jmp	_42
_44:
	fadd	dword [_836]
_42:
	fld	dword [_837]
	fxch	st1
	fucom	st1
	fxch	st1
	fstp	st0
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_44
_43:
	jmp	_45
_47:
	fsub	dword [_838]
_45:
	fld	dword [_839]
	fxch	st1
	fucom	st1
	fxch	st1
	fstp	st0
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_47
_46:
	fld	dword [_840]
	mov	edx,0
	fxch	st1
	fucom	st2
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_442
	mov	edx,1
_442:
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
	jne	_443
	mov	edx,1
_443:
	cmp	edx,0
	jne	_444
	fstp	st0
	fld	dword [_841]
_444:
	jmp	_233
_233:
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
	jmp	_48
_50:
	fadd	dword [_849]
_48:
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
	jne	_50
_49:
	jmp	_51
_53:
	fsub	dword [_850]
_51:
	fld	dword [_851]
	fxch	st1
	fucom	st1
	fxch	st1
	fstp	st0
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_53
_52:
	jmp	_237
_237:
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
	jmp	_54
_56:
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
	je	_54
	mov	dword [esi+16],9999
	fldz
	fstp	dword [esi+44]
	cmp	dword [esi+40],1
	jne	_453
	mov	dword [esi+40],0
	mov	edi,0
	mov	eax,dword [esi+48]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp-12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-16],eax
	jmp	_57
_59:
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
	mov	eax,dword [esi+32]
	dec	dword [eax+4]
	jnz	_463
	push	eax
	call	_bbGCFree
	add	esp,4
_463:
	mov	dword [esi+32],ebx
	cmp	dword [esi+32],_bbNullObject
	je	_57
	fld	qword [_856]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [esi+8]
	mov	eax,dword [esi+32]
	fsub	dword [eax+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-8]
	fld	qword [_857]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [esi+12]
	mov	eax,dword [esi+32]
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
	mov	eax,dword [esi+36]
	fstp	dword [eax+edi*4+24]
	add	edi,1
_57:
	mov	eax,dword [ebp-16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_59
_58:
_453:
_54:
	mov	eax,dword [ebp-28]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_56
_55:
	mov	eax,dword [ebp+12]
	cmp	dword [ebp+8],eax
	jne	_465
	mov	eax,dword [ebp+12]
	jmp	_241
_465:
	push	1065353216
	push	dword [ebp+12]
	call	_bb_wayray
	fstp	st0
	add	esp,8
	fld	dword [_858]
	fstp	dword [ebp-20]
	mov	eax,dword [ebp+8]
	mov	esi,dword [eax+48]
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_60
_62:
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
	mov	eax,dword [eax+32]
	dec	dword [eax+4]
	jnz	_476
	push	eax
	call	_bbGCFree
	add	esp,4
_476:
	mov	eax,dword [ebp+8]
	mov	dword [eax+32],ebx
	mov	eax,dword [ebp+8]
	cmp	dword [eax+32],_bbNullObject
	je	_60
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+32]
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
	jne	_477
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+32]
	mov	dword [ebp-32],eax
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+32]
	mov	eax,dword [eax+16]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	fstp	dword [ebp-20]
_477:
_60:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_62
_61:
	mov	eax,dword [ebp-32]
	jmp	_241
_241:
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
	fstp	dword [ebx+44]
	fld1
	fld	dword [ebp+12]
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_478
	fld	dword [ebp+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebx+16],eax
_478:
	push	16
	push	_479
	call	_bbArrayNew1D
	add	esp,8
	mov	dword [ebp-16],eax
	mov	edi,0
	mov	eax,dword [ebx+48]
	mov	dword [ebp-24],eax
	mov	eax,dword [ebp-24]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-28],eax
	jmp	_63
_65:
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
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_490
	push	eax
	call	_bbGCFree
	add	esp,4
_490:
	mov	dword [ebx+32],esi
	cmp	dword [ebx+32],_bbNullObject
	je	_63
	mov	eax,dword [ebx+32]
	mov	eax,dword [eax+16]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	mov	eax,dword [ebx+36]
	fld	dword [eax+edi*4+24]
	fadd	dword [ebp+12]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_491
	cmp	ebx,dword [ebx+32]
	je	_492
	mov	esi,dword [ebx+32]
	mov	eax,dword [ebx+36]
	fld	dword [eax+edi*4+24]
	fadd	dword [ebp+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [esi+16],eax
	mov	eax,dword [ebx+32]
	fld	dword [eax+44]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_493
	mov	eax,dword [ebx+36]
	fld	dword [eax+edi*4+24]
	fadd	dword [ebp+12]
	mov	eax,dword [ebp-16]
	fstp	dword [eax+edi*4+24]
_493:
_492:
_491:
	add	edi,1
_63:
	mov	eax,dword [ebp-28]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_65
_64:
	fld	dword [_868]
	mov	dword [ebp-32],-1
	mov	edx,0
	jmp	_497
_68:
	mov	eax,dword [ebp-16]
	fld	dword [eax+edx*4+24]
	fucomp	st1
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	je	_498
	mov	eax,dword [ebp-16]
	fld	dword [eax+edx*4+24]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
_498:
	cmp	eax,0
	je	_500
	fstp	st0
	mov	dword [ebp-32],edx
	mov	eax,dword [ebp-16]
	fld	dword [eax+edx*4+24]
_500:
_66:
	add	edx,1
_497:
	cmp	edx,15
	jle	_68
	fstp	st0
_67:
	mov	edi,0
	mov	eax,dword [ebx+48]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp-4]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-12],eax
	jmp	_69
_71:
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
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_509
	push	eax
	call	_bbGCFree
	add	esp,4
_509:
	mov	dword [ebx+32],esi
	cmp	dword [ebx+32],_bbNullObject
	je	_69
	cmp	dword [ebp-32],edi
	jne	_510
	mov	eax,dword [ebx+36]
	fld	dword [eax+edi*4+24]
	fadd	dword [ebp+12]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebx+32]
	call	_bb_wayray
	fstp	st0
	add	esp,8
_510:
	add	edi,1
_69:
	mov	eax,dword [ebp-12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_71
_70:
	mov	edi,0
	mov	eax,dword [ebx+48]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-20],eax
	jmp	_72
_74:
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
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_519
	push	eax
	call	_bbGCFree
	add	esp,4
_519:
	mov	dword [ebx+32],esi
	cmp	dword [ebx+32],_bbNullObject
	je	_72
	cmp	dword [ebp-32],edi
	je	_520
	mov	eax,dword [ebx+32]
	fld	dword [eax+44]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_521
	mov	eax,dword [ebx+36]
	fld	dword [eax+edi*4+24]
	fadd	dword [ebp+12]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebx+32]
	call	_bb_wayray
	fstp	st0
	add	esp,8
_521:
_520:
	add	edi,1
_72:
	mov	eax,dword [ebp-20]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_74
_73:
	mov	eax,dword [ebx+16]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	jmp	_245
_245:
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
	fld	dword [_885]
	fstp	dword [ebp-40]
	push	3
	mov	eax,dword [ebp+32]
	add	eax,1
	push	eax
	mov	eax,dword [ebp+28]
	add	eax,1
	push	eax
	push	3
	push	_523
	call	_bbArrayNew
	add	esp,20
	mov	dword [ebp-4],eax
	mov	dword [ebp-12],0
	mov	eax,dword [ebp+28]
	mov	dword [ebp-48],eax
	jmp	_526
_77:
	mov	edi,0
	mov	eax,dword [ebp+32]
	mov	dword [ebp-28],eax
	jmp	_529
_80:
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
_78:
	add	edi,1
_529:
	cmp	edi,dword [ebp-28]
	jle	_80
_79:
_75:
	add	dword [ebp-12],1
_526:
	mov	eax,dword [ebp-48]
	cmp	dword [ebp-12],eax
	jle	_77
_76:
	fld	dword [ebp+8]
	fld	dword [ebp+16]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_531
	fld	dword [ebp+12]
	fld	dword [ebp+20]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
_531:
	cmp	eax,0
	je	_533
	fld	dword [_886]
	jmp	_254
_533:
	fldz
	fld	dword [ebp+8]
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_534
	fld	dword [_887]
	jmp	_254
_534:
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
	jne	_535
	fld	dword [_888]
	jmp	_254
_535:
	fldz
	fld	dword [ebp+12]
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_536
	fld	dword [_889]
	jmp	_254
_536:
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
	jne	_537
	fld	dword [_890]
	jmp	_254
_537:
	fldz
	fld	dword [ebp+16]
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_538
	fld	dword [_891]
	jmp	_254
_538:
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
	jne	_539
	fld	dword [_892]
	jmp	_254
_539:
	fldz
	fld	dword [ebp+20]
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_540
	fld	dword [_893]
	jmp	_254
_540:
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
	jne	_541
	fld	dword [_894]
	jmp	_254
_541:
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
	jnz	_542
	push	dword [ebp-4]
	call	_bbGCFree
	add	esp,4
_542:
	fld	dword [_895]
	fstp	dword [ebp-36]
	mov	dword [ebp-32],-1
	mov	dword [ebp-20],-1
	jmp	_547
_83:
	mov	edi,-1
	jmp	_549
_86:
	mov	eax,dword [ebp-20]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_550
	cmp	edi,0
	sete	al
	movzx	eax,al
_550:
	cmp	eax,0
	je	_552
	jmp	_553
_552:
	mov	eax,dword [ebp-20]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_554
	cmp	edi,-1
	sete	al
	movzx	eax,al
_554:
	cmp	eax,0
	je	_556
	mov	dword [ebp-32],315
_556:
	mov	eax,dword [ebp-20]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_557
	cmp	edi,0
	sete	al
	movzx	eax,al
_557:
	cmp	eax,0
	je	_559
	mov	dword [ebp-32],180
_559:
	mov	eax,dword [ebp-20]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_560
	cmp	edi,1
	sete	al
	movzx	eax,al
_560:
	cmp	eax,0
	je	_562
	mov	dword [ebp-32],45
_562:
	mov	eax,dword [ebp-20]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_563
	cmp	edi,-1
	sete	al
	movzx	eax,al
_563:
	cmp	eax,0
	je	_565
	mov	dword [ebp-32],270
_565:
	mov	eax,dword [ebp-20]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_566
	cmp	edi,1
	sete	al
	movzx	eax,al
_566:
	cmp	eax,0
	je	_568
	mov	dword [ebp-32],90
_568:
	mov	eax,dword [ebp-20]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_569
	cmp	edi,-1
	sete	al
	movzx	eax,al
_569:
	cmp	eax,0
	je	_571
	mov	dword [ebp-32],225
_571:
	mov	eax,dword [ebp-20]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_572
	cmp	edi,0
	sete	al
	movzx	eax,al
_572:
	cmp	eax,0
	je	_574
	mov	dword [ebp-32],0
_574:
	mov	eax,dword [ebp-20]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_575
	cmp	edi,1
	sete	al
	movzx	eax,al
_575:
	cmp	eax,0
	je	_577
	mov	dword [ebp-32],135
_577:
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
	jne	_578
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
_578:
_553:
_84:
	add	edi,1
_549:
	cmp	edi,1
	jle	_86
_85:
_81:
	add	dword [ebp-20],1
_547:
	cmp	dword [ebp-20],1
	jle	_83
_82:
	mov	dword [ebp-16],0
	mov	eax,dword [ebp+28]
	mov	dword [ebp-44],eax
	jmp	_580
_89:
	mov	dword [ebp-8],0
	mov	eax,dword [ebp+32]
	mov	dword [ebp-24],eax
	jmp	_583
_92:
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
_90:
	add	dword [ebp-8],1
_583:
	mov	eax,dword [ebp-24]
	cmp	dword [ebp-8],eax
	jle	_92
_91:
_87:
	add	dword [ebp-16],1
_580:
	mov	eax,dword [ebp-44]
	cmp	dword [ebp-16],eax
	jle	_89
_88:
	fld	dword [ebp-40]
	jmp	_254
_254:
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
	je	_585
	mov	eax,dword [ebp+8]
	cmp	eax,dword [ebp+20]
	setl	al
	movzx	eax,al
_585:
	cmp	eax,0
	je	_587
	mov	eax,dword [ebp+12]
	cmp	eax,0
	setg	al
	movzx	eax,al
_587:
	cmp	eax,0
	je	_589
	mov	eax,dword [ebp+12]
	cmp	eax,dword [ebp+24]
	setl	al
	movzx	eax,al
_589:
	cmp	eax,0
	je	_591
	fld1
	fld	dword [ebp+28]
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_592
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
_592:
	mov	dword [ebp-20],-1
	jmp	_594
_95:
	mov	dword [ebp-12],-1
	jmp	_596
_98:
	mov	eax,dword [ebp-20]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_597
	mov	eax,dword [ebp-12]
	cmp	eax,0
	sete	al
	movzx	eax,al
_597:
	cmp	eax,0
	je	_599
	jmp	_600
_599:
	fld	dword [_929]
	fstp	dword [ebp-4]
	mov	eax,dword [ebp-20]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_602
	mov	eax,dword [ebp-12]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_602:
	cmp	eax,0
	je	_604
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-4]
_604:
	mov	eax,dword [ebp-20]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_605
	mov	eax,dword [ebp-12]
	cmp	eax,0
	sete	al
	movzx	eax,al
_605:
	cmp	eax,0
	je	_607
	fld	dword [_930]
	fstp	dword [ebp-4]
_607:
	mov	eax,dword [ebp-20]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_608
	mov	eax,dword [ebp-12]
	cmp	eax,1
	sete	al
	movzx	eax,al
_608:
	cmp	eax,0
	je	_610
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-4]
_610:
	mov	eax,dword [ebp-20]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_611
	mov	eax,dword [ebp-12]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_611:
	cmp	eax,0
	je	_613
	fld	dword [_931]
	fstp	dword [ebp-4]
_613:
	mov	eax,dword [ebp-20]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_614
	mov	eax,dword [ebp-12]
	cmp	eax,1
	sete	al
	movzx	eax,al
_614:
	cmp	eax,0
	je	_616
	fld	dword [_932]
	fstp	dword [ebp-4]
_616:
	mov	eax,dword [ebp-20]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_617
	mov	eax,dword [ebp-12]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_617:
	cmp	eax,0
	je	_619
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-4]
_619:
	mov	eax,dword [ebp-20]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_620
	mov	eax,dword [ebp-12]
	cmp	eax,0
	sete	al
	movzx	eax,al
_620:
	cmp	eax,0
	je	_622
	fld	dword [_933]
	fstp	dword [ebp-4]
_622:
	mov	eax,dword [ebp-20]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_623
	mov	eax,dword [ebp-12]
	cmp	eax,1
	sete	al
	movzx	eax,al
_623:
	cmp	eax,0
	je	_625
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-4]
_625:
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
	jne	_626
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
	jne	_627
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
_627:
_626:
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
	jge	_628
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
_628:
_600:
_96:
	add	dword [ebp-12],1
_596:
	cmp	dword [ebp-12],1
	jle	_98
_97:
_93:
	add	dword [ebp-20],1
_594:
	cmp	dword [ebp-20],1
	jle	_95
_94:
	mov	edi,-1
	jmp	_630
_101:
	mov	ebx,-1
	jmp	_632
_104:
	cmp	edi,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_633
	cmp	ebx,0
	sete	al
	movzx	eax,al
_633:
	cmp	eax,0
	je	_635
	jmp	_636
_635:
	fld	dword [_934]
	cmp	edi,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_638
	cmp	ebx,-1
	sete	al
	movzx	eax,al
_638:
	cmp	eax,0
	je	_640
	fstp	st0
	fld	dword [_bb_diagonal]
_640:
	cmp	edi,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_641
	cmp	ebx,0
	sete	al
	movzx	eax,al
_641:
	cmp	eax,0
	je	_643
	fstp	st0
	fld	dword [_935]
_643:
	cmp	edi,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_644
	cmp	ebx,1
	sete	al
	movzx	eax,al
_644:
	cmp	eax,0
	je	_646
	fstp	st0
	fld	dword [_bb_diagonal]
_646:
	cmp	edi,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_647
	cmp	ebx,-1
	sete	al
	movzx	eax,al
_647:
	cmp	eax,0
	je	_649
	fstp	st0
	fld	dword [_936]
_649:
	cmp	edi,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_650
	cmp	ebx,1
	sete	al
	movzx	eax,al
_650:
	cmp	eax,0
	je	_652
	fstp	st0
	fld	dword [_937]
_652:
	cmp	edi,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_653
	cmp	ebx,-1
	sete	al
	movzx	eax,al
_653:
	cmp	eax,0
	je	_655
	fstp	st0
	fld	dword [_bb_diagonal]
_655:
	cmp	edi,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_656
	cmp	ebx,0
	sete	al
	movzx	eax,al
_656:
	cmp	eax,0
	je	_658
	fstp	st0
	fld	dword [_938]
_658:
	cmp	edi,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_659
	cmp	ebx,1
	sete	al
	movzx	eax,al
_659:
	cmp	eax,0
	je	_661
	fstp	st0
	fld	dword [_bb_diagonal]
_661:
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
	je	_1012
	fstp	st0
	jmp	_662
_1012:
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
_662:
_636:
_102:
	add	ebx,1
_632:
	cmp	ebx,1
	jle	_104
_103:
_99:
	add	edi,1
_630:
	cmp	edi,1
	jle	_101
_100:
	mov	dword [ebp-24],-1
	jmp	_664
_107:
	mov	dword [ebp-16],-1
	jmp	_666
_110:
	mov	eax,dword [ebp-24]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_667
	mov	eax,dword [ebp-16]
	cmp	eax,0
	sete	al
	movzx	eax,al
_667:
	cmp	eax,0
	je	_669
	jmp	_670
_669:
	fld	dword [_939]
	fstp	dword [ebp-8]
	mov	eax,dword [ebp-24]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_672
	mov	eax,dword [ebp-16]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_672:
	cmp	eax,0
	je	_674
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-8]
_674:
	mov	eax,dword [ebp-24]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_675
	mov	eax,dword [ebp-16]
	cmp	eax,0
	sete	al
	movzx	eax,al
_675:
	cmp	eax,0
	je	_677
	fld	dword [_940]
	fstp	dword [ebp-8]
_677:
	mov	eax,dword [ebp-24]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_678
	mov	eax,dword [ebp-16]
	cmp	eax,1
	sete	al
	movzx	eax,al
_678:
	cmp	eax,0
	je	_680
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-8]
_680:
	mov	eax,dword [ebp-24]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_681
	mov	eax,dword [ebp-16]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_681:
	cmp	eax,0
	je	_683
	fld	dword [_941]
	fstp	dword [ebp-8]
_683:
	mov	eax,dword [ebp-24]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_684
	mov	eax,dword [ebp-16]
	cmp	eax,1
	sete	al
	movzx	eax,al
_684:
	cmp	eax,0
	je	_686
	fld	dword [_942]
	fstp	dword [ebp-8]
_686:
	mov	eax,dword [ebp-24]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_687
	mov	eax,dword [ebp-16]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_687:
	cmp	eax,0
	je	_689
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-8]
_689:
	mov	eax,dword [ebp-24]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_690
	mov	eax,dword [ebp-16]
	cmp	eax,0
	sete	al
	movzx	eax,al
_690:
	cmp	eax,0
	je	_692
	fld	dword [_943]
	fstp	dword [ebp-8]
_692:
	mov	eax,dword [ebp-24]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_693
	mov	eax,dword [ebp-16]
	cmp	eax,1
	sete	al
	movzx	eax,al
_693:
	cmp	eax,0
	je	_695
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-8]
_695:
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
	jne	_696
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
	jne	_697
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
_697:
_696:
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
	jge	_698
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
_698:
_670:
_108:
	add	dword [ebp-16],1
_666:
	cmp	dword [ebp-16],1
	jle	_110
_109:
_105:
	add	dword [ebp-24],1
_664:
	cmp	dword [ebp-24],1
	jle	_107
_106:
_591:
	mov	eax,0
	jmp	_262
_262:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_mouseover:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+8]
	mov	edi,dword [ebp+12]
	mov	ebx,dword [ebp+16]
	mov	dword [ebp-4],0
	call	_brl_polledinput_MouseX
	cmp	eax,esi
	setg	al
	movzx	eax,al
	cmp	eax,0
	je	_700
	call	_brl_polledinput_MouseX
	mov	edx,esi
	add	edx,ebx
	cmp	eax,edx
	setl	al
	movzx	eax,al
_700:
	cmp	eax,0
	je	_702
	call	_brl_polledinput_MouseY
	cmp	eax,edi
	setg	al
	movzx	eax,al
_702:
	cmp	eax,0
	je	_704
	call	_brl_polledinput_MouseY
	mov	edx,edi
	add	edx,dword [ebp+20]
	cmp	eax,edx
	setl	al
	movzx	eax,al
_704:
	cmp	eax,0
	je	_706
	mov	dword [ebp-4],1
_706:
	mov	eax,dword [ebp-4]
	jmp	_268
_268:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_button:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+12]
	mov	edi,dword [ebp+24]
	mov	ebx,dword [ebp+28]
	mov	dword [ebp-4],0
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	mov	eax,edi
	add	eax,4
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp+20]
	add	eax,4
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp+16]
	sub	eax,2
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,esi
	sub	eax,2
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	edi
	push	dword [ebp+20]
	push	dword [ebp+16]
	push	esi
	call	_bb_mouseover
	add	esp,16
	cmp	eax,0
	je	_708
	push	180
	push	180
	push	180
	call	_brl_max2d_SetColor
	add	esp,12
	jmp	_709
_708:
	cmp	ebx,0
	je	_710
	push	180
	push	200
	push	180
	call	_brl_max2d_SetColor
	add	esp,12
	jmp	_711
_710:
	push	120
	push	120
	push	120
	call	_brl_max2d_SetColor
	add	esp,12
_711:
_709:
	mov	dword [ebp+-8],edi
	fild	dword [ebp+-8]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp+20]
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp+16]
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	sub	esp,4
	fstp	dword [esp]
	mov	dword [ebp+-8],esi
	fild	dword [ebp+-8]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	edi
	push	dword [ebp+20]
	push	dword [ebp+16]
	push	esi
	call	_bb_mouseover
	add	esp,16
	cmp	eax,0
	je	_712
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	jmp	_713
_712:
	cmp	ebx,0
	je	_714
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	jmp	_715
_714:
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
_715:
_713:
	mov	ecx,dword [ebp+16]
	mov	eax,edi
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	add	ecx,eax
	mov	eax,ecx
	sub	eax,7
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	sub	esp,4
	fstp	dword [esp]
	mov	ecx,esi
	mov	eax,dword [ebp+20]
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	add	ecx,eax
	mov	dword [ebp+-8],ecx
	fild	dword [ebp+-8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	fmul	dword [_1020]
	fdiv	dword [_1021]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebp+8]
	call	_brl_max2d_DrawText
	add	esp,12
	cmp	dword [_bb_md],0
	je	_716
	push	edi
	push	dword [ebp+20]
	push	dword [ebp+16]
	push	esi
	call	_bb_mouseover
	add	esp,16
	cmp	eax,0
	je	_717
	cmp	dword [_bb_md],0
	je	_718
	mov	dword [ebp-4],1
_718:
_717:
_716:
	mov	eax,dword [ebp+32]
	cmp	dword [eax+8],0
	jle	_719
	push	edi
	push	dword [ebp+20]
	push	dword [ebp+16]
	push	esi
	call	_bb_mouseover
	add	esp,16
	cmp	eax,0
	je	_720
	push	_bb_Tinfotext
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	mov	eax,dword [_bb_infotextlist]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	dword [ebx+8],esi
	mov	eax,dword [ebp+16]
	mov	dword [ebx+12],eax
	mov	esi,dword [ebp+32]
	inc	dword [esi+4]
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_726
	push	eax
	call	_bbGCFree
	add	esp,4
_726:
	mov	dword [ebx+16],esi
_720:
_719:
	mov	eax,dword [ebp-4]
	jmp	_277
_277:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_346:
	dd	0
_115:
	db	"Ttextur",0
_116:
	db	"render",0
_117:
	db	"[]:Ttextur",0
_118:
	db	"isRendert",0
_119:
	db	"i",0
_120:
	db	"doRender",0
_121:
	db	"orginal",0
_122:
	db	":Ttextur",0
_123:
	db	"redertlist",0
_124:
	db	":brl.linkedlist.TList",0
_125:
	db	"img",0
_126:
	db	":brl.max2d.TImage",0
_127:
	db	"pic",0
_128:
	db	":brl.pixmap.TPixmap",0
_129:
	db	"version",0
_130:
	db	"beforeTex",0
_131:
	db	"isAlpha",0
_132:
	db	"b",0
_133:
	db	"isDust",0
_134:
	db	"r",0
_135:
	db	"g",0
_136:
	db	"speicherort",0
_137:
	db	"$",0
_138:
	db	"datname",0
_139:
	db	"group",0
_140:
	db	"eingestellt",0
_141:
	db	"New",0
_142:
	db	"()i",0
_143:
	db	"Delete",0
	align	4
_114:
	dd	2
	dd	_115
	dd	3
	dd	_116
	dd	_117
	dd	8
	dd	3
	dd	_118
	dd	_119
	dd	12
	dd	3
	dd	_120
	dd	_119
	dd	16
	dd	3
	dd	_121
	dd	_122
	dd	20
	dd	3
	dd	_123
	dd	_124
	dd	24
	dd	3
	dd	_125
	dd	_126
	dd	28
	dd	3
	dd	_127
	dd	_128
	dd	32
	dd	3
	dd	_129
	dd	_119
	dd	36
	dd	3
	dd	_130
	dd	_122
	dd	40
	dd	3
	dd	_131
	dd	_132
	dd	44
	dd	3
	dd	_133
	dd	_132
	dd	45
	dd	3
	dd	_134
	dd	_132
	dd	46
	dd	3
	dd	_135
	dd	_132
	dd	47
	dd	3
	dd	_132
	dd	_132
	dd	48
	dd	3
	dd	_136
	dd	_137
	dd	52
	dd	3
	dd	_138
	dd	_137
	dd	56
	dd	3
	dd	_139
	dd	_137
	dd	60
	dd	3
	dd	_140
	dd	_132
	dd	64
	dd	6
	dd	_141
	dd	_142
	dd	16
	dd	6
	dd	_143
	dd	_142
	dd	20
	dd	0
	align	4
_bb_Ttextur:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_114
	dd	65
	dd	__bb_Ttextur_New
	dd	__bb_Ttextur_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_145:
	db	"Ttexgroup",0
_146:
	db	"texlink",0
_147:
	db	"texlist",0
	align	4
_144:
	dd	2
	dd	_145
	dd	3
	dd	_139
	dd	_137
	dd	8
	dd	3
	dd	_146
	dd	_122
	dd	12
	dd	3
	dd	_147
	dd	_124
	dd	16
	dd	6
	dd	_141
	dd	_142
	dd	16
	dd	6
	dd	_143
	dd	_142
	dd	20
	dd	0
	align	4
_bb_Ttexgroup:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_144
	dd	20
	dd	__bb_Ttexgroup_New
	dd	__bb_Ttexgroup_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_149:
	db	"Twaypoint",0
_150:
	db	"x",0
_151:
	db	"f",0
_152:
	db	"y",0
_153:
	db	"cheacked",0
_154:
	db	"size",0
_155:
	db	"name",0
_156:
	db	"action",0
_157:
	db	":Taction",0
_158:
	db	"otherWP",0
_159:
	db	":Twaypoint",0
_160:
	db	"dist",0
_161:
	db	"[]f",0
_162:
	db	"chaged",0
_163:
	db	"used",0
_164:
	db	"otherlist",0
_165:
	db	"othernames",0
_166:
	db	"[]$",0
_167:
	db	"script",0
	align	4
_148:
	dd	2
	dd	_149
	dd	3
	dd	_150
	dd	_151
	dd	8
	dd	3
	dd	_152
	dd	_151
	dd	12
	dd	3
	dd	_153
	dd	_119
	dd	16
	dd	3
	dd	_154
	dd	_119
	dd	20
	dd	3
	dd	_155
	dd	_137
	dd	24
	dd	3
	dd	_156
	dd	_157
	dd	28
	dd	3
	dd	_158
	dd	_159
	dd	32
	dd	3
	dd	_160
	dd	_161
	dd	36
	dd	3
	dd	_162
	dd	_119
	dd	40
	dd	3
	dd	_163
	dd	_151
	dd	44
	dd	3
	dd	_164
	dd	_124
	dd	48
	dd	3
	dd	_165
	dd	_166
	dd	52
	dd	3
	dd	_167
	dd	_166
	dd	56
	dd	6
	dd	_141
	dd	_142
	dd	16
	dd	6
	dd	_143
	dd	_142
	dd	20
	dd	0
	align	4
_bb_Twaypoint:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_148
	dd	60
	dd	__bb_Twaypoint_New
	dd	__bb_Twaypoint_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_169:
	db	"Taction",0
_170:
	db	"respawn",0
_171:
	db	"every",0
_172:
	db	"onlytimes",0
_173:
	db	"win",0
	align	4
_168:
	dd	2
	dd	_169
	dd	3
	dd	_155
	dd	_137
	dd	8
	dd	3
	dd	_170
	dd	_119
	dd	12
	dd	3
	dd	_171
	dd	_119
	dd	16
	dd	3
	dd	_172
	dd	_119
	dd	20
	dd	3
	dd	_173
	dd	_119
	dd	24
	dd	6
	dd	_141
	dd	_142
	dd	16
	dd	6
	dd	_143
	dd	_142
	dd	20
	dd	0
	align	4
_bb_Taction:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_168
	dd	28
	dd	__bb_Taction_New
	dd	__bb_Taction_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_175:
	db	"Tinfotext",0
_176:
	db	"Text",0
	align	4
_174:
	dd	2
	dd	_175
	dd	3
	dd	_150
	dd	_119
	dd	8
	dd	3
	dd	_152
	dd	_119
	dd	12
	dd	3
	dd	_176
	dd	_137
	dd	16
	dd	6
	dd	_141
	dd	_142
	dd	16
	dd	6
	dd	_143
	dd	_142
	dd	20
	dd	0
	align	4
_bb_Tinfotext:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_174
	dd	20
	dd	__bb_Tinfotext_New
	dd	__bb_Tinfotext_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	align	4
_20:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	78,117,109,98,101,114,32,111,102,32,97,114,103,117,109,101
	dw	110,116,115,32,61,32
	align	4
_285:
	dd	0
	align	4
_bb_texturlist:
	dd	_bbNullObject
	align	4
_bb_maptexturlist:
	dd	_bbNullObject
	align	4
_bb_texgrouplist:
	dd	_bbNullObject
	align	4
_bb_maptexgrouplist:
	dd	_bbNullObject
	align	4
_bb_waypointlist:
	dd	_bbNullObject
	align	4
_bb_printlistlist:
	dd	_bbNullObject
	align	4
_bb_actionlist:
	dd	_bbNullObject
	align	4
_bb_infotextlist:
	dd	_bbNullObject
	align	4
_24:
	dd	_bbStringClass
	dd	2147483647
	dd	23
	dw	80,97,110,122,101,114,83,58,32,79,98,106,101,99,116,32
	dw	69,100,105,116,111,114,33
	align	4
_bb_fenster:
	dd	_bbNullObject
	align	4
_308:
	dd	_bbStringClass
	dd	2147483647
	dd	29
	dw	76,97,100,101,32,45,48,49,37,32,100,101,115,32,87,101
	dw	108,116,117,110,116,101,114,103,97,110,103,115,33
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	27
	dw	103,102,120,92,111,98,106,101,99,116,115,92,108,97,116,101
	dw	114,110,101,95,49,95,49,46,112,110,103
	align	4
_bb_laterne_1:
	dd	_bbNullObject
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	27
	dw	103,102,120,92,111,98,106,101,99,116,115,92,108,97,116,101
	dw	114,110,101,95,49,95,50,46,112,110,103
	align	4
_bb_laterne_2:
	dd	_bbNullObject
	align	4
_30:
	dd	_bbStringClass
	dd	2147483647
	dd	27
	dw	103,102,120,92,111,98,106,101,99,116,115,92,108,97,116,101
	dw	114,110,101,95,49,95,51,46,112,110,103
	align	4
_bb_laterne_3:
	dd	_bbNullObject
	align	4
_bb_tex1x:
	dd	0x41b80000
	align	4
_bb_tex1y:
	dd	0x41b80000
	align	4
_bb_tex1w:
	dd	0x0
	align	4
_31:
	dd	_bbStringClass
	dd	2147483647
	dd	28
	dw	103,102,120,92,111,98,106,101,99,116,115,92,119,97,121,112
	dw	111,105,110,116,95,49,95,49,46,112,110,103
	align	4
_bb_waypoint_1:
	dd	_bbNullObject
	align	4
_32:
	dd	_bbStringClass
	dd	2147483647
	dd	28
	dw	103,102,120,92,111,98,106,101,99,116,115,92,119,97,121,112
	dw	111,105,110,116,95,49,95,50,46,112,110,103
	align	4
_bb_waypoint_2:
	dd	_bbNullObject
	align	4
_bb_tex2x:
	dd	0x41200000
	align	4
_bb_tex2y:
	dd	0x41840000
	align	4
_bb_tex2w:
	dd	0x0
	align	4
_bb_spass:
	dd	0
	align	4
_bb_nowGroup:
	dd	_bbNullObject
	align	4
_bb_menuVy:
	dd	0
	align	4
_bb_gmenuVy:
	dd	0
	align	4
_bb_menulock:
	dd	0
	align	4
_bb_gmenulock:
	dd	0
	align	4
_bb_menudiff:
	dd	0
	align	4
_bb_gmenudiff:
	dd	0
	align	4
_bb_selectedtex:
	dd	_bbNullObject
	align	4
_bb_md:
	dd	0
	align	4
_bb_gVx:
	dd	0x0
	align	4
_bb_gVy:
	dd	0x0
	align	4
_bb_omx:
	dd	0
	align	4
_bb_omy:
	dd	0
	align	4
_bb_selectedlayer:
	dd	0
	align	4
_bb_pinselmodus:
	dd	0
	align	4
_bb_pinselsize:
	dd	0
	align	4
_bb_pinselmix:
	dd	0
	align	4
_bb_pinselunmix:
	dd	0
	align	4
_bb_wallmod:
	dd	0
	align	4
_bb_wallmodklick:
	dd	0
	align	4
_bb_waymod:
	dd	0
	align	4
_bb_waymodaction:
	dd	0
	align	4
_bb_waymodselect:
	dd	_bbNullObject
	align	4
_bb_waymodcounter:
	dd	0
	align	4
_bb_mouselooklock:
	dd	0
	align	4
_bb_waycecker:
	dd	0
	align	8
_727:
	dd	0x0,0x40000000
	align	4
_bb_diagonal:
	dd	0x0
	align	4
_bb_tmr:
	dd	_bbNullObject
	align	4
_728:
	dd	0x40c00000
	align	4
_729:
	dd	0x42b40000
	align	4
_730:
	dd	0x40c00000
	align	4
_731:
	dd	0x43b40000
	align	4
_732:
	dd	0x43b40000
	align	4
_733:
	dd	0x41200000
	align	4
_734:
	dd	0x41200000
	align	4
_735:
	dd	0x420c0000
	align	4
_736:
	dd	0x425c0000
	align	4
_737:
	dd	0x42c80000
	align	4
_738:
	dd	0x41200000
	align	4
_739:
	dd	0x42c80000
	align	4
_740:
	dd	0x41200000
	align	4
_741:
	dd	0x42c80000
	align	4
_742:
	dd	0x41200000
	align	4
_743:
	dd	0x42c80000
	align	4
_744:
	dd	0x41200000
	align	4
_745:
	dd	0x42c80000
	align	4
_746:
	dd	0x40a00000
	align	4
_747:
	dd	0x43fa0000
	align	4
_748:
	dd	0x40a00000
_348:
	db	":Ttextur",0
_390:
	db	"f",0
_393:
	db	"$",0
_395:
	db	"$",0
	align	8
_800:
	dd	0x0,0x40000000
	align	8
_801:
	dd	0x0,0x40000000
	align	8
_802:
	dd	0x0,0x40668000
	align	8
_805:
	dd	0x0,0x40000000
	align	8
_806:
	dd	0x0,0x40000000
	align	4
_807:
	dd	0x40000000
	align	4
_808:
	dd	0x40000000
	align	4
_809:
	dd	0x42b40000
	align	4
_810:
	dd	0x40000000
	align	4
_811:
	dd	0x40000000
	align	4
_812:
	dd	0x43340000
	align	4
_813:
	dd	0x40000000
	align	4
_814:
	dd	0x43340000
	align	4
_815:
	dd	0x40000000
	align	4
_820:
	dd	0x43340000
	align	4
_821:
	dd	0x43b40000
	align	4
_822:
	dd	0xc3340000
	align	4
_823:
	dd	0x43b40000
	align	4
_824:
	dd	0x43340000
	align	4
_825:
	dd	0x0
	align	4
_835:
	dd	0x43340000
	align	4
_836:
	dd	0x43b40000
	align	4
_837:
	dd	0xc3340000
	align	4
_838:
	dd	0x43b40000
	align	4
_839:
	dd	0x43340000
	align	4
_840:
	dd	0x0
	align	4
_841:
	dd	0x3f800000
	align	4
_849:
	dd	0x43b40000
	align	4
_850:
	dd	0x43b40000
	align	4
_851:
	dd	0x43b40000
	align	8
_856:
	dd	0x0,0x40000000
	align	8
_857:
	dd	0x0,0x40000000
	align	4
_858:
	dd	0x461c3c00
_479:
	db	"f",0
	align	4
_868:
	dd	0x461c3c00
	align	4
_885:
	dd	0xbf800000
_523:
	db	"i",0
	align	4
_886:
	dd	0xbf800000
	align	4
_887:
	dd	0xbf800000
	align	4
_888:
	dd	0xbf800000
	align	4
_889:
	dd	0xbf800000
	align	4
_890:
	dd	0xbf800000
	align	4
_891:
	dd	0xbf800000
	align	4
_892:
	dd	0xbf800000
	align	4
_893:
	dd	0xbf800000
	align	4
_894:
	dd	0xbf800000
	align	4
_895:
	dd	0x461c3c00
	align	4
_929:
	dd	0x0
	align	4
_930:
	dd	0x3f800000
	align	4
_931:
	dd	0x3f800000
	align	4
_932:
	dd	0x3f800000
	align	4
_933:
	dd	0x3f800000
	align	4
_934:
	dd	0x0
	align	4
_935:
	dd	0x3f800000
	align	4
_936:
	dd	0x3f800000
	align	4
_937:
	dd	0x3f800000
	align	4
_938:
	dd	0x3f800000
	align	4
_939:
	dd	0x0
	align	4
_940:
	dd	0x3f800000
	align	4
_941:
	dd	0x3f800000
	align	4
_942:
	dd	0x3f800000
	align	4
_943:
	dd	0x3f800000
	align	4
_1020:
	dd	0x41080000
	align	4
_1021:
	dd	0x40000000
