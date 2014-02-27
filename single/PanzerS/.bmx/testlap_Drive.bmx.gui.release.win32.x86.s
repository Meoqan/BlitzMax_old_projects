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
	extrn	_bbArrayNew1D
	extrn	_bbCos
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
	extrn	_bbSin
	extrn	_bbSqr
	extrn	_bbStringClass
	extrn	_bbStringConcat
	extrn	_bbStringFromFloat
	extrn	_brl_audio_AllocChannel
	extrn	_brl_audio_LoadSound
	extrn	_brl_audio_PlaySound
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
	public	_bb_channelgang
	public	_bb_channelmotor
	public	_bb_firelist
	public	_bb_funkenlist
	public	_bb_glowlist
	public	_bb_graterlist
	public	_bb_ledplist
	public	_bb_maptexgrouplist
	public	_bb_maptexturlist
	public	_bb_motor_1000PS
	public	_bb_motor_100PS
	public	_bb_motor_2000PS
	public	_bb_motor_400PS
	public	_bb_motor_5000PS
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
	public	_bb_soundgang
	public	_bb_soundmotor
	public	_bb_spurlist
	public	_bb_texgrouplist
	public	_bb_texturlist
	public	_bb_tmr
	public	_bb_waypointlist
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,48
	push	ebx
	push	esi
	push	edi
	cmp	dword [_423],0
	je	_424
	mov	eax,0
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_424:
	mov	dword [_423],1
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
	push	_bb_Tledp
	call	_bbObjectRegisterType
	add	esp,4
	mov	ebx,_18
	inc	dword [ebx+4]
	mov	eax,dword [_bbAppTitle]
	dec	dword [eax+4]
	jnz	_332
	push	eax
	call	_bbGCFree
	add	esp,4
_332:
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
	mov	eax,dword [_334]
	and	eax,1
	cmp	eax,0
	jne	_335
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_smokelist],eax
	or	dword [_334],1
_335:
	mov	eax,dword [_334]
	and	eax,2
	cmp	eax,0
	jne	_337
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_mudlist],eax
	or	dword [_334],2
_337:
	mov	eax,dword [_334]
	and	eax,4
	cmp	eax,0
	jne	_339
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_sanddustlist],eax
	or	dword [_334],4
_339:
	mov	eax,dword [_334]
	and	eax,8
	cmp	eax,0
	jne	_341
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_firelist],eax
	or	dword [_334],8
_341:
	mov	eax,dword [_334]
	and	eax,16
	cmp	eax,0
	jne	_343
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_funkenlist],eax
	or	dword [_334],16
_343:
	mov	eax,dword [_334]
	and	eax,32
	cmp	eax,0
	jne	_345
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_spurlist],eax
	or	dword [_334],32
_345:
	mov	eax,dword [_334]
	and	eax,64
	cmp	eax,0
	jne	_347
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_graterlist],eax
	or	dword [_334],64
_347:
	mov	eax,dword [_334]
	and	eax,128
	cmp	eax,0
	jne	_349
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_Schussliste],eax
	or	dword [_334],128
_349:
	mov	eax,dword [_334]
	and	eax,256
	cmp	eax,0
	jne	_351
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_texturlist],eax
	or	dword [_334],256
_351:
	mov	eax,dword [_334]
	and	eax,512
	cmp	eax,0
	jne	_353
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_maptexturlist],eax
	or	dword [_334],512
_353:
	mov	eax,dword [_334]
	and	eax,1024
	cmp	eax,0
	jne	_355
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_texgrouplist],eax
	or	dword [_334],1024
_355:
	mov	eax,dword [_334]
	and	eax,2048
	cmp	eax,0
	jne	_357
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_maptexgrouplist],eax
	or	dword [_334],2048
_357:
	mov	eax,dword [_334]
	and	eax,4096
	cmp	eax,0
	jne	_359
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_waypointlist],eax
	or	dword [_334],4096
_359:
	mov	eax,dword [_334]
	and	eax,8192
	cmp	eax,0
	jne	_361
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_printlistlist],eax
	or	dword [_334],8192
_361:
	mov	eax,dword [_334]
	and	eax,16384
	cmp	eax,0
	jne	_363
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_actionlist],eax
	or	dword [_334],16384
_363:
	mov	eax,dword [_334]
	and	eax,32768
	cmp	eax,0
	jne	_365
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_botlist],eax
	or	dword [_334],32768
_365:
	mov	eax,dword [_334]
	and	eax,65536
	cmp	eax,0
	jne	_367
	push	_bb_Tplayer
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_player],eax
	or	dword [_334],65536
_367:
	mov	eax,dword [_334]
	and	eax,131072
	cmp	eax,0
	jne	_369
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_glowlist],eax
	or	dword [_334],131072
_369:
	mov	eax,dword [_334]
	and	eax,262144
	cmp	eax,0
	jne	_371
	push	_bb_Tdrive
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_motor_100PS],eax
	or	dword [_334],262144
_371:
	mov	eax,dword [_bb_motor_100PS]
	fld	dword [_574]
	fstp	dword [eax+12]
	mov	eax,dword [_bb_motor_100PS]
	fld	dword [_575]
	fstp	dword [eax+8]
	mov	eax,dword [_334]
	and	eax,524288
	cmp	eax,0
	jne	_373
	push	_bb_Tdrive
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_motor_400PS],eax
	or	dword [_334],524288
_373:
	mov	eax,dword [_bb_motor_400PS]
	fld	dword [_576]
	fstp	dword [eax+12]
	mov	eax,dword [_bb_motor_400PS]
	fld	dword [_577]
	fstp	dword [eax+8]
	mov	eax,dword [_334]
	and	eax,1048576
	cmp	eax,0
	jne	_375
	push	_bb_Tdrive
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_motor_500PS],eax
	or	dword [_334],1048576
_375:
	mov	eax,dword [_bb_motor_500PS]
	fld	dword [_578]
	fstp	dword [eax+12]
	mov	eax,dword [_bb_motor_500PS]
	fld	dword [_579]
	fstp	dword [eax+8]
	mov	eax,dword [_334]
	and	eax,2097152
	cmp	eax,0
	jne	_377
	push	_bb_Tdrive
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_motor_1000PS],eax
	or	dword [_334],2097152
_377:
	mov	eax,dword [_bb_motor_1000PS]
	fld	dword [_580]
	fstp	dword [eax+12]
	mov	eax,dword [_bb_motor_1000PS]
	fld	dword [_581]
	fstp	dword [eax+8]
	mov	eax,dword [_334]
	and	eax,4194304
	cmp	eax,0
	jne	_379
	push	_bb_Tdrive
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_motor_2000PS],eax
	or	dword [_334],4194304
_379:
	mov	eax,dword [_bb_motor_2000PS]
	fld	dword [_582]
	fstp	dword [eax+12]
	mov	eax,dword [_bb_motor_2000PS]
	fld	dword [_583]
	fstp	dword [eax+8]
	mov	eax,dword [_334]
	and	eax,8388608
	cmp	eax,0
	jne	_381
	push	_bb_Tdrive
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_motor_5000PS],eax
	or	dword [_334],8388608
_381:
	mov	eax,dword [_bb_motor_5000PS]
	fld	dword [_584]
	fstp	dword [eax+12]
	mov	eax,dword [_bb_motor_5000PS]
	fld	dword [_585]
	fstp	dword [eax+8]
	push	0
	push	0
	push	0
	call	_brl_max2d_SetClsColor
	add	esp,12
	mov	eax,dword [_334]
	and	eax,16777216
	cmp	eax,0
	jne	_383
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_ledplist],eax
	or	dword [_334],16777216
_383:
	mov	eax,dword [_334]
	and	eax,33554432
	cmp	eax,0
	jne	_385
	call	_brl_audio_AllocChannel
	inc	dword [eax+4]
	mov	dword [_bb_channelmotor],eax
	or	dword [_334],33554432
_385:
	mov	eax,dword [_334]
	and	eax,67108864
	cmp	eax,0
	jne	_387
	push	1
	push	_19
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_soundmotor],eax
	or	dword [_334],67108864
_387:
	push	dword [_bb_channelmotor]
	push	dword [_bb_soundmotor]
	call	_brl_audio_PlaySound
	add	esp,8
	mov	eax,dword [_bb_channelmotor]
	push	1056964608
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,8
	mov	eax,dword [_334]
	and	eax,134217728
	cmp	eax,0
	jne	_390
	call	_brl_audio_AllocChannel
	inc	dword [eax+4]
	mov	dword [_bb_channelgang],eax
	or	dword [_334],134217728
_390:
	mov	eax,dword [_334]
	and	eax,268435456
	cmp	eax,0
	jne	_392
	push	0
	push	_20
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_soundgang],eax
	or	dword [_334],268435456
_392:
	mov	eax,dword [_bb_channelgang]
	push	1061158912
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,8
	mov	eax,dword [_334]
	and	eax,536870912
	cmp	eax,0
	jne	_395
	push	_bb_Tengine
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_p1],eax
	or	dword [_334],536870912
_395:
	mov	eax,dword [_334]
	and	eax,1073741824
	cmp	eax,0
	jne	_397
	push	_bbNullObject
	push	1109393408
	call	_brl_timer_CreateTimer
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_tmr],eax
	or	dword [_334],1073741824
_397:
	jmp	_21
_23:
	mov	eax,dword [_bb_tmr]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	call	_brl_max2d_Cls
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_bb_Tledp
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	mov	eax,dword [_bb_ledplist]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	push	dword [_bb_motor_400PS]
	push	0
	push	dword [_bb_p1]
	push	1176256512
	push	83
	call	_brl_polledinput_KeyDown
	add	esp,4
	push	eax
	push	87
	call	_brl_polledinput_KeyDown
	add	esp,4
	push	eax
	call	_bb_Drive
	add	esp,24
	mov	eax,dword [_bb_p1]
	fld	dword [eax+16]
	fstp	dword [ebx+8]
	mov	eax,dword [_bb_p1]
	fld	dword [eax+8]
	fstp	dword [ebx+12]
	mov	eax,dword [_bb_p1]
	fld	dword [eax+12]
	fdiv	dword [_586]
	fstp	dword [ebx+16]
	mov	edx,dword [_bb_channelmotor]
	fld	dword [_587]
	mov	eax,dword [_bb_p1]
	fld	dword [eax+8]
	fdiv	dword [_588]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+68]
	add	esp,8
	mov	edx,dword [_bb_p1]
	mov	eax,dword [_bb_p1]
	mov	eax,dword [eax+24]
	cmp	dword [edx+20],eax
	je	_404
	push	dword [_bb_channelgang]
	push	dword [_bb_soundgang]
	call	_brl_audio_PlaySound
	add	esp,8
	mov	edx,dword [_bb_p1]
	mov	eax,dword [_bb_p1]
	mov	eax,dword [eax+20]
	mov	dword [edx+24],eax
_404:
	mov	dword [ebp-44],0
	mov	dword [ebp-40],0
	mov	dword [ebp-24],0
	mov	dword [ebp-32],_bbEmptyString
	mov	edi,_bbEmptyString
	mov	dword [ebp-20],_bbEmptyString
	mov	eax,dword [_bb_ledplist]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+112]
	add	esp,4
	mov	esi,eax
	mov	eax,dword [_bb_ledplist]
	mov	dword [ebp-36],eax
	mov	eax,dword [ebp-36]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-28],eax
	jmp	_24
_26:
	mov	eax,dword [ebp-28]
	push	_bb_Tledp
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	je	_24
	sub	esi,1
	cmp	esi,250
	jle	_419
	mov	eax,dword [_bb_ledplist]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
_419:
	push	0
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	1073741824
	push	1073741824
	fld	dword [_589]
	fld	dword [ebx+8]
	fmul	dword [_590]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	mov	dword [ebp+-48],esi
	fild	dword [ebp+-48]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	0
	push	0
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	1073741824
	push	1073741824
	fld	dword [_591]
	fld	dword [ebx+12]
	fdiv	dword [_592]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	mov	dword [ebp+-48],esi
	fild	dword [ebp+-48]
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
	fld	dword [_593]
	fsub	dword [ebx+16]
	sub	esp,4
	fstp	dword [esp]
	mov	dword [ebp+-48],esi
	fild	dword [ebp+-48]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	fld	dword [_594]
	fld	dword [ebx+8]
	fmul	dword [_595]
	fsubp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebp-44],eax
	fld	dword [_596]
	fld	dword [ebx+12]
	fdiv	dword [_597]
	fsubp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebp-40],eax
	fld	dword [_598]
	fsub	dword [ebx+16]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebp-24],eax
	push	dword [ebx+8]
	call	_bbStringFromFloat
	add	esp,4
	mov	dword [ebp-32],eax
	push	dword [ebx+12]
	call	_bbStringFromFloat
	add	esp,4
	mov	edi,eax
	fld	dword [ebx+16]
	fmul	dword [_599]
	sub	esp,4
	fstp	dword [esp]
	call	_bbStringFromFloat
	add	esp,4
	mov	dword [ebp-20],eax
_24:
	mov	eax,dword [ebp-28]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_26
_25:
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	mov	eax,dword [ebp-44]
	mov	dword [ebp+-48],eax
	fild	dword [ebp+-48]
	sub	esp,4
	fstp	dword [esp]
	push	1132593152
	push	dword [ebp-32]
	push	_27
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	mov	eax,dword [ebp-40]
	mov	dword [ebp+-48],eax
	fild	dword [ebp+-48]
	sub	esp,4
	fstp	dword [esp]
	push	1132593152
	push	edi
	push	_28
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	mov	eax,dword [ebp-24]
	mov	dword [ebp+-48],eax
	fild	dword [ebp+-48]
	sub	esp,4
	fstp	dword [esp]
	push	1132593152
	push	dword [ebp-20]
	push	_29
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	65
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_421
	fld	dword [_bb_p1w]
	fsub	dword [_600]
	fstp	dword [_bb_p1w]
_421:
	push	68
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_422
	fld	dword [_bb_p1w]
	fadd	dword [_601]
	fstp	dword [_bb_p1w]
_422:
	fld	dword [_bb_p1x]
	fstp	qword [ebp-8]
	fld	dword [_bb_p1w]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	mov	eax,dword [_bb_p1]
	fld	dword [eax+16]
	fdiv	dword [_602]
	fmulp	st1,st0
	fld	qword [ebp-8]
	faddp	st1,st0
	fstp	qword [ebp-8]
	fld	qword [ebp-8]
	fstp	dword [_bb_p1x]
	fld	dword [_bb_p1y]
	fstp	qword [ebp-16]
	fld	dword [_bb_p1w]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	mov	eax,dword [_bb_p1]
	fld	dword [eax+16]
	fdiv	dword [_603]
	fmulp	st1,st0
	fld	qword [ebp-16]
	faddp	st1,st0
	fstp	qword [ebp-16]
	fld	qword [ebp-16]
	fstp	dword [_bb_p1y]
	push	255
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	dword [_bb_p1w]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	1101004800
	push	1103626240
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1109393408
	push	1112014848
	push	dword [_bb_p1y]
	push	dword [_bb_p1x]
	call	_brl_max2d_DrawRect
	add	esp,16
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
_21:
	push	27
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	jne	_398
	call	_brl_polledinput_AppTerminate
_398:
	cmp	eax,0
	je	_23
_22:
	mov	eax,0
	jmp	_204
_204:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tsmoke_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_Tsmoke
	fldz
	fstp	dword [ebx+8]
	fldz
	fstp	dword [ebx+12]
	fldz
	fstp	dword [ebx+16]
	fldz
	fstp	dword [ebx+20]
	fldz
	fstp	dword [ebx+24]
	fldz
	fstp	dword [ebx+28]
	fldz
	fstp	dword [ebx+32]
	fld	dword [_644]
	fstp	dword [ebx+36]
	mov	eax,0
	jmp	_207
_207:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tsmoke_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_210:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_425
_425:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tmud_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_Tmud
	fldz
	fstp	dword [ebx+8]
	fldz
	fstp	dword [ebx+12]
	fldz
	fstp	dword [ebx+16]
	fldz
	fstp	dword [ebx+20]
	fldz
	fstp	dword [ebx+24]
	fldz
	fstp	dword [ebx+28]
	fldz
	fstp	dword [ebx+32]
	fldz
	fstp	dword [ebx+36]
	fld1
	fstp	dword [ebx+40]
	mov	eax,0
	jmp	_213
_213:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tmud_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_216:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_426
_426:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tsanddust_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_Tsanddust
	fldz
	fstp	dword [ebx+8]
	fldz
	fstp	dword [ebx+12]
	fldz
	fstp	dword [ebx+16]
	fldz
	fstp	dword [ebx+20]
	fldz
	fstp	dword [ebx+24]
	fldz
	fstp	dword [ebx+28]
	fldz
	fstp	dword [ebx+32]
	fldz
	fstp	dword [ebx+36]
	fld	dword [_653]
	fstp	dword [ebx+40]
	mov	eax,0
	jmp	_219
_219:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tsanddust_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_222:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_427
_427:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tfire_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_Tfire
	fldz
	fstp	dword [ebx+8]
	fldz
	fstp	dword [ebx+12]
	fldz
	fstp	dword [ebx+16]
	fldz
	fstp	dword [ebx+20]
	fldz
	fstp	dword [ebx+24]
	fldz
	fstp	dword [ebx+28]
	fldz
	fstp	dword [ebx+32]
	fldz
	fstp	dword [ebx+36]
	fldz
	fstp	dword [ebx+40]
	fld	dword [_658]
	fstp	dword [ebx+44]
	mov	eax,0
	jmp	_225
_225:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tfire_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_228:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_428
_428:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tfunken_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_Tfunken
	fldz
	fstp	dword [ebx+8]
	fldz
	fstp	dword [ebx+12]
	fldz
	fstp	dword [ebx+16]
	fldz
	fstp	dword [ebx+20]
	fldz
	fstp	dword [ebx+24]
	fldz
	fstp	dword [ebx+28]
	mov	eax,0
	jmp	_231
_231:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tfunken_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_234:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_429
_429:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tspur_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_Tspur
	fldz
	fstp	dword [ebx+8]
	fldz
	fstp	dword [ebx+12]
	fldz
	fstp	dword [ebx+16]
	fld	dword [_667]
	fstp	dword [ebx+20]
	mov	byte [ebx+24],0
	fldz
	fstp	dword [ebx+28]
	mov	dword [ebx+32],0
	mov	dword [ebx+36],0
	mov	eax,0
	jmp	_237
_237:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tspur_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_240:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_430
_430:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tgrater_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_Tgrater
	fldz
	fstp	dword [ebx+8]
	fldz
	fstp	dword [ebx+12]
	fldz
	fstp	dword [ebx+16]
	fld	dword [_672]
	fstp	dword [ebx+20]
	mov	byte [ebx+24],0
	fld1
	fstp	dword [ebx+28]
	mov	eax,0
	jmp	_243
_243:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tgrater_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_246:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_431
_431:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TSchussSp_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_TSchussSp
	fldz
	fstp	dword [ebx+8]
	fldz
	fstp	dword [ebx+12]
	fldz
	fstp	dword [ebx+16]
	mov	dword [ebx+20],0
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+24],eax
	fldz
	fstp	dword [ebx+28]
	fldz
	fstp	dword [ebx+32]
	mov	eax,0
	jmp	_249
_249:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TSchussSp_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_252:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_435
	push	eax
	call	_bbGCFree
	add	esp,4
_435:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_433
_433:
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
	push	_436
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
	jmp	_255
_255:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Ttextur_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_258:
	mov	eax,dword [ebx+60]
	dec	dword [eax+4]
	jnz	_448
	push	eax
	call	_bbGCFree
	add	esp,4
_448:
	mov	eax,dword [ebx+56]
	dec	dword [eax+4]
	jnz	_450
	push	eax
	call	_bbGCFree
	add	esp,4
_450:
	mov	eax,dword [ebx+52]
	dec	dword [eax+4]
	jnz	_452
	push	eax
	call	_bbGCFree
	add	esp,4
_452:
	mov	eax,dword [ebx+40]
	dec	dword [eax+4]
	jnz	_454
	push	eax
	call	_bbGCFree
	add	esp,4
_454:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_456
	push	eax
	call	_bbGCFree
	add	esp,4
_456:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_458
	push	eax
	call	_bbGCFree
	add	esp,4
_458:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_460
	push	eax
	call	_bbGCFree
	add	esp,4
_460:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_462
	push	eax
	call	_bbGCFree
	add	esp,4
_462:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_464
	push	eax
	call	_bbGCFree
	add	esp,4
_464:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_446
_446:
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
	jmp	_261
_261:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Ttexgroup_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_264:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_470
	push	eax
	call	_bbGCFree
	add	esp,4
_470:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_472
	push	eax
	call	_bbGCFree
	add	esp,4
_472:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_474
	push	eax
	call	_bbGCFree
	add	esp,4
_474:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_468
_468:
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
	push	_478
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
	push	_481
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [ebx+52],eax
	push	20
	push	_483
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [ebx+56],eax
	mov	eax,0
	jmp	_267
_267:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Twaypoint_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_270:
	mov	eax,dword [ebx+56]
	dec	dword [eax+4]
	jnz	_487
	push	eax
	call	_bbGCFree
	add	esp,4
_487:
	mov	eax,dword [ebx+52]
	dec	dword [eax+4]
	jnz	_489
	push	eax
	call	_bbGCFree
	add	esp,4
_489:
	mov	eax,dword [ebx+48]
	dec	dword [eax+4]
	jnz	_491
	push	eax
	call	_bbGCFree
	add	esp,4
_491:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_493
	push	eax
	call	_bbGCFree
	add	esp,4
_493:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_495
	push	eax
	call	_bbGCFree
	add	esp,4
_495:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_497
	push	eax
	call	_bbGCFree
	add	esp,4
_497:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_499
	push	eax
	call	_bbGCFree
	add	esp,4
_499:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_485
_485:
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
	jmp	_273
_273:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Taction_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_276:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_503
	push	eax
	call	_bbGCFree
	add	esp,4
_503:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_501
_501:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tbot_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_Tbot
	fldz
	fstp	dword [ebx+8]
	fldz
	fstp	dword [ebx+12]
	fldz
	fstp	dword [ebx+16]
	fldz
	fstp	dword [ebx+20]
	mov	dword [ebx+24],0
	fldz
	fstp	dword [ebx+28]
	fldz
	fstp	dword [ebx+32]
	fldz
	fstp	dword [ebx+36]
	fldz
	fstp	dword [ebx+40]
	fldz
	fstp	dword [ebx+44]
	fldz
	fstp	dword [ebx+48]
	mov	byte [ebx+52],0
	mov	byte [ebx+53],0
	mov	dword [ebx+56],0
	mov	byte [ebx+60],0
	mov	dword [ebx+64],0
	mov	dword [ebx+68],0
	mov	dword [ebx+72],240
	fld	dword [_697]
	fstp	dword [ebx+76]
	mov	byte [ebx+80],80
	mov	dword [ebx+84],0
	mov	dword [ebx+88],180
	fldz
	fstp	dword [ebx+92]
	fldz
	fstp	dword [ebx+96]
	mov	byte [ebx+100],0
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+104],eax
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+108],eax
	fld1
	fstp	dword [ebx+112]
	mov	dword [ebx+116],0
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+120],eax
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [ebx+124],eax
	mov	dword [ebx+128],1
	mov	eax,0
	jmp	_279
_279:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tbot_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_282:
	mov	eax,dword [ebx+124]
	dec	dword [eax+4]
	jnz	_510
	push	eax
	call	_bbGCFree
	add	esp,4
_510:
	mov	eax,dword [ebx+120]
	dec	dword [eax+4]
	jnz	_512
	push	eax
	call	_bbGCFree
	add	esp,4
_512:
	mov	eax,dword [ebx+108]
	dec	dword [eax+4]
	jnz	_514
	push	eax
	call	_bbGCFree
	add	esp,4
_514:
	mov	eax,dword [ebx+104]
	dec	dword [eax+4]
	jnz	_516
	push	eax
	call	_bbGCFree
	add	esp,4
_516:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_508
_508:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tplayer_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_Tplayer
	fldz
	fstp	dword [ebx+8]
	fldz
	fstp	dword [ebx+12]
	fldz
	fstp	dword [ebx+16]
	fldz
	fstp	dword [ebx+20]
	fldz
	fstp	dword [ebx+24]
	fldz
	fstp	dword [ebx+28]
	fldz
	fstp	dword [ebx+32]
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+36],eax
	fldz
	fstp	dword [ebx+40]
	mov	dword [ebx+44],120
	mov	dword [ebx+48],1
	fldz
	fstp	dword [ebx+52]
	fldz
	fstp	dword [ebx+56]
	fldz
	fstp	dword [ebx+60]
	fldz
	fstp	dword [ebx+64]
	fldz
	fstp	dword [ebx+68]
	fldz
	fstp	dword [ebx+72]
	fldz
	fstp	dword [ebx+76]
	fldz
	fstp	dword [ebx+80]
	fldz
	fstp	dword [ebx+84]
	fldz
	fstp	dword [ebx+88]
	fldz
	fstp	dword [ebx+92]
	fldz
	fstp	dword [ebx+96]
	fldz
	fstp	dword [ebx+100]
	fldz
	fstp	dword [ebx+104]
	mov	dword [ebx+108],0
	fldz
	fstp	dword [ebx+112]
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [ebx+116],eax
	mov	eax,0
	jmp	_285
_285:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tplayer_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_288:
	mov	eax,dword [ebx+116]
	dec	dword [eax+4]
	jnz	_521
	push	eax
	call	_bbGCFree
	add	esp,4
_521:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_523
	push	eax
	call	_bbGCFree
	add	esp,4
_523:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_519
_519:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tglow_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_Tglow
	fldz
	fstp	dword [ebx+8]
	fldz
	fstp	dword [ebx+12]
	fldz
	fstp	dword [ebx+16]
	mov	dword [ebx+20],0
	mov	dword [ebx+24],0
	mov	dword [ebx+28],0
	mov	dword [ebx+32],0
	mov	dword [ebx+36],0
	fldz
	fstp	dword [ebx+40]
	mov	eax,0
	jmp	_291
_291:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tglow_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_294:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_524
_524:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tdrive_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_Tdrive
	fldz
	fstp	dword [ebx+8]
	fldz
	fstp	dword [ebx+12]
	mov	eax,0
	jmp	_297
_297:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tdrive_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_300:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_525
_525:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tengine_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_Tengine
	fldz
	fstp	dword [ebx+8]
	fldz
	fstp	dword [ebx+12]
	fldz
	fstp	dword [ebx+16]
	mov	dword [ebx+20],0
	mov	dword [ebx+24],0
	mov	dword [ebx+28],0
	mov	eax,0
	jmp	_303
_303:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tengine_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_306:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_526
_526:
	mov	esp,ebp
	pop	ebp
	ret
_bb_Drive:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	esi,dword [ebp+8]
	mov	ecx,dword [ebp+12]
	fld	dword [ebp+16]
	mov	edx,dword [ebp+20]
	mov	ebx,dword [ebp+28]
	fld	dword [ebx+8]
	fld	dword [_718]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_527
	fld	dword [_719]
	fstp	dword [ebx+8]
_527:
	cmp	dword [edx+20],1
	jne	_528
	cmp	esi,0
	je	_529
	jmp	_530
_529:
	cmp	ecx,0
	je	_531
	mov	dword [edx+20],0
_531:
	fld	dword [edx+8]
	fld	dword [ebx+8]
	fdiv	dword [_720]
	fmul	dword [_721]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_532
	mov	dword [edx+20],0
_532:
_530:
	jmp	_533
_528:
	cmp	dword [edx+20],0
	jne	_534
	cmp	esi,0
	je	_535
	fld	dword [edx+8]
	fld	dword [ebx+8]
	fdiv	dword [_722]
	fmul	dword [_723]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_536
	mov	dword [edx+20],1
_536:
_535:
	cmp	ecx,0
	je	_537
	add	dword [edx+28],1
	cmp	dword [edx+28],60
	jle	_538
	mov	dword [edx+20],-1
_538:
	jmp	_539
_537:
	mov	dword [edx+28],0
_539:
	jmp	_540
_534:
	cmp	dword [edx+20],-1
	jne	_541
	cmp	ecx,0
	je	_542
	cmp	esi,0
	jne	_543
	mov	esi,1
_543:
	jmp	_544
_542:
	mov	dword [edx+20],0
_544:
_541:
_540:
_533:
	cmp	esi,0
	je	_545
	cmp	dword [edx+20],0
	jne	_546
	fld	dword [edx+8]
	fld	dword [ebx+8]
	fsub	dword [edx+8]
	fld	dword [_724]
	fld	dword [edx+8]
	fsub	dword [ebx+8]
	fdiv	dword [_725]
	faddp	st1,st0
	fdivp	st1,st0
	faddp	st1,st0
	fstp	dword [edx+8]
	jmp	_547
_546:
	fld	dword [edx+8]
	fld	dword [ebx+8]
	fsub	dword [edx+8]
	fld	dword [_726]
	fld	dword [edx+8]
	fsub	dword [ebx+8]
	fdiv	dword [_727]
	faddp	st1,st0
	fdivp	st1,st0
	faddp	st1,st0
	fstp	dword [edx+8]
_547:
	jmp	_548
_545:
	cmp	dword [edx+20],0
	jne	_549
	fld	dword [edx+8]
	fld	dword [ebx+8]
	fsub	dword [edx+8]
	fld	dword [_728]
	fld	dword [edx+8]
	fsub	dword [ebx+8]
	fdiv	dword [_729]
	faddp	st1,st0
	fdivp	st1,st0
	fsubp	st1,st0
	fsub	dword [_730]
	fstp	dword [edx+8]
	jmp	_550
_549:
	fld	dword [edx+8]
	fld	dword [ebx+8]
	fsub	dword [edx+8]
	fld	dword [_731]
	fld	dword [edx+8]
	fsub	dword [ebx+8]
	fdiv	dword [_732]
	faddp	st1,st0
	fdivp	st1,st0
	fsubp	st1,st0
	fsub	dword [_733]
	fstp	dword [edx+8]
_550:
_548:
	fld	dword [edx+8]
	fld	dword [ebx+8]
	fdiv	dword [_734]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_551
	fld	dword [ebx+8]
	fdiv	dword [_735]
	fstp	dword [edx+8]
_551:
	fld	dword [ebx+12]
	fdiv	dword [ebx+8]
	fmul	dword [edx+8]
	fstp	dword [edx+12]
	fld	dword [edx+12]
	fld	qword [_736]
	fld	dword [edx+8]
	fdiv	dword [_737]
	fmulp	st1,st0
	fmulp	st1,st0
	fld	dword [_738]
	mov	eax,ecx
	cmp	eax,0
	je	_554
	mov	eax,dword [edx+20]
	cmp	eax,-1
	setg	al
	movzx	eax,al
_554:
	cmp	eax,0
	je	_556
	fstp	st0
	fld	dword [_739]
_556:
	cmp	dword [edx+20],0
	jne	_557
	fxch	st1
	fstp	st0
	fld	dword [edx+16]
	fxch	st2
	fmulp	st1,st0
	fld	dword [edx+16]
	fdiv	dword [_740]
	fmulp	st1,st0
	fsubp	st1,st0
	fstp	dword [edx+16]
	jmp	_558
_557:
	cmp	dword [edx+20],1
	jne	_559
	fld	dword [edx+16]
	fxch	st2
	fdiv	st0,st3
	fld	dword [_741]
	fld	dword [edx+16]
	fchs
	fdiv	dword [_742]
	faddp	st1,st0
	fdivp	st1,st0
	faddp	st2,st0
	fxch	st1
	fstp	dword [edx+16]
	fld	dword [edx+16]
	fxch	st2
	fmulp	st1,st0
	fld	dword [edx+16]
	fdiv	dword [_743]
	fmulp	st1,st0
	fsubp	st1,st0
	fstp	dword [edx+16]
	jmp	_560
_559:
	cmp	dword [edx+20],-1
	je	_775
	fstp	st0
	fstp	st0
	fstp	st0
	jmp	_561
_775:
	fld	dword [edx+16]
	fxch	st2
	fdiv	st0,st3
	fld	dword [_744]
	fld	dword [edx+16]
	fdiv	dword [_745]
	faddp	st1,st0
	fdivp	st1,st0
	fsubp	st2,st0
	fxch	st1
	fstp	dword [edx+16]
	fld	dword [edx+16]
	fxch	st2
	fmulp	st1,st0
	fld	dword [edx+16]
	fchs
	fdiv	dword [_746]
	fmulp	st1,st0
	faddp	st1,st0
	fstp	dword [edx+16]
_561:
_560:
_558:
	fld	dword [edx+16]
	fld	dword [_747]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	je	_562
	fld	dword [edx+16]
	fld	dword [_748]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
_562:
	cmp	eax,0
	je	_564
	fldz
	fstp	dword [edx+16]
_564:
	mov	eax,0
	jmp	_314
_314:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tledp_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_Tledp
	fldz
	fstp	dword [ebx+8]
	fldz
	fstp	dword [ebx+12]
	fldz
	fstp	dword [ebx+16]
	mov	eax,0
	jmp	_317
_317:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tledp_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_320:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_565
_565:
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
	fld	qword [_780]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-24]
	fld	qword [_781]
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
	fld	qword [_782]
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
	jmp	_327
_327:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_423:
	dd	0
_31:
	db	"Tsmoke",0
_32:
	db	"x",0
_33:
	db	"f",0
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
_85:
	db	":brl.linkedlist.TList",0
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
_198:
	db	"oldgang",0
_199:
	db	"rucktimer",0
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
	dd	3
	dd	_198
	dd	_62
	dd	24
	dd	3
	dd	_199
	dd	_62
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
_bb_Tengine:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_194
	dd	32
	dd	__bb_Tengine_New
	dd	__bb_Tengine_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_201:
	db	"Tledp",0
_202:
	db	"drehzahl",0
_203:
	db	"drehmoment",0
	align	4
_200:
	dd	2
	dd	_201
	dd	3
	dd	_196
	dd	_33
	dd	8
	dd	3
	dd	_202
	dd	_33
	dd	12
	dd	3
	dd	_203
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
	dd	_200
	dd	20
	dd	__bb_Tledp_New
	dd	__bb_Tledp_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	align	4
_18:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	80,97,110,122,101,114,83,58,32,84,101,115,116,108,97,112
	dw	33
	align	4
_334:
	dd	0
	align	4
_bb_smokelist:
	dd	_bbNullObject
	align	4
_bb_mudlist:
	dd	_bbNullObject
	align	4
_bb_sanddustlist:
	dd	_bbNullObject
	align	4
_bb_firelist:
	dd	_bbNullObject
	align	4
_bb_funkenlist:
	dd	_bbNullObject
	align	4
_bb_spurlist:
	dd	_bbNullObject
	align	4
_bb_graterlist:
	dd	_bbNullObject
	align	4
_bb_Schussliste:
	dd	_bbNullObject
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
_bb_botlist:
	dd	_bbNullObject
	align	4
_bb_player:
	dd	_bbNullObject
	align	4
_bb_glowlist:
	dd	_bbNullObject
	align	4
_bb_motor_100PS:
	dd	_bbNullObject
	align	4
_574:
	dd	0x43af0000
	align	4
_575:
	dd	0x44fa0000
	align	4
_bb_motor_400PS:
	dd	_bbNullObject
	align	4
_576:
	dd	0x44af0000
	align	4
_577:
	dd	0x44fa0000
	align	4
_bb_motor_500PS:
	dd	_bbNullObject
	align	4
_578:
	dd	0x44dac000
	align	4
_579:
	dd	0x44fa0000
	align	4
_bb_motor_1000PS:
	dd	_bbNullObject
	align	4
_580:
	dd	0x455ac000
	align	4
_581:
	dd	0x44fa0000
	align	4
_bb_motor_2000PS:
	dd	_bbNullObject
	align	4
_582:
	dd	0x45dac000
	align	4
_583:
	dd	0x44fa0000
	align	4
_bb_motor_5000PS:
	dd	_bbNullObject
	align	4
_584:
	dd	0x4688b800
	align	4
_585:
	dd	0x44fa0000
	align	4
_bb_ledplist:
	dd	_bbNullObject
	align	4
_bb_channelmotor:
	dd	_bbNullObject
	align	4
_19:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	115,111,117,110,100,92,109,111,116,111,114,46,111,103,103
	align	4
_bb_soundmotor:
	dd	_bbNullObject
	align	4
_bb_channelgang:
	dd	_bbNullObject
	align	4
_20:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	115,111,117,110,100,92,103,97,110,103,46,111,103,103
	align	4
_bb_soundgang:
	dd	_bbNullObject
	align	4
_bb_p1:
	dd	_bbNullObject
	align	4
_bb_p1x:
	dd	0x44000000
	align	4
_bb_p1y:
	dd	0x43c00000
	align	4
_bb_p1w:
	dd	0x0
	align	4
_bb_tmr:
	dd	_bbNullObject
	align	4
_586:
	dd	0x42480000
	align	4
_587:
	dd	0x3f800000
	align	4
_588:
	dd	0x43fa0000
	align	4
_589:
	dd	0x44248000
	align	4
_590:
	dd	0x40400000
	align	4
_591:
	dd	0x443d8000
	align	4
_592:
	dd	0x40900000
	align	4
_593:
	dd	0x443d8000
	align	4
_594:
	dd	0x44248000
	align	4
_595:
	dd	0x40400000
	align	4
_596:
	dd	0x443d8000
	align	4
_597:
	dd	0x40900000
	align	4
_598:
	dd	0x443d8000
	align	4
_599:
	dd	0x42480000
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	83,112,101,101,100,58,32
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	68,114,101,104,122,97,104,108,58,32
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	68,114,101,104,109,111,109,101,110,116,58,32
	align	4
_600:
	dd	0x40000000
	align	4
_601:
	dd	0x40000000
	align	4
_602:
	dd	0x41200000
	align	4
_603:
	dd	0x41200000
	align	4
_644:
	dd	0x3ecccccd
	align	4
_653:
	dd	0x3f4ccccd
	align	4
_658:
	dd	0x3e99999a
	align	4
_667:
	dd	0x3f400000
	align	4
_672:
	dd	0x3f400000
_436:
	db	":Ttextur",0
_478:
	db	"f",0
_481:
	db	"$",0
_483:
	db	"$",0
	align	4
_697:
	dd	0x42c80000
	align	4
_718:
	dd	0x451c4000
	align	4
_719:
	dd	0x451c4000
	align	4
_720:
	dd	0x40800000
	align	4
_721:
	dd	0x40000000
	align	4
_722:
	dd	0x40800000
	align	4
_723:
	dd	0x40400000
	align	4
_724:
	dd	0x42480000
	align	4
_725:
	dd	0x42480000
	align	4
_726:
	dd	0x42c80000
	align	4
_727:
	dd	0x42c80000
	align	4
_728:
	dd	0x42480000
	align	4
_729:
	dd	0x42480000
	align	4
_730:
	dd	0x3f800000
	align	4
_731:
	dd	0x42480000
	align	4
_732:
	dd	0x42480000
	align	4
_733:
	dd	0x3dcccccd
	align	4
_734:
	dd	0x41200000
	align	4
_735:
	dd	0x41200000
	align	8
_736:
	dd	0x54442d18,0x401921fb
	align	4
_737:
	dd	0x42700000
	align	4
_738:
	dd	0x3851b717
	align	4
_739:
	dd	0x3983126f
	align	4
_740:
	dd	0x42480000
	align	4
_741:
	dd	0x42480000
	align	4
_742:
	dd	0x42480000
	align	4
_743:
	dd	0x41c80000
	align	4
_744:
	dd	0x42c80000
	align	4
_745:
	dd	0x42c80000
	align	4
_746:
	dd	0x41c80000
	align	4
_747:
	dd	0x3a83126f
	align	4
_748:
	dd	0xba83126f
	align	8
_780:
	dd	0x0,0x40000000
	align	8
_781:
	dd	0x0,0x40000000
	align	8
_782:
	dd	0x0,0x40668000
