	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_d3d9max2d_d3d9max2d
	extrn	___bb_max2d_max2d
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
	extrn	_bbSqr
	extrn	_bbStringClass
	extrn	_bbStringFromInt
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
	cmp	dword [_321],0
	je	_322
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_322:
	mov	dword [_321],1
	call	___bb_blitz_blitz
	call	___bb_timer_timer
	call	___bb_standardio_standardio
	call	___bb_random_random
	call	___bb_max2d_max2d
	call	___bb_d3d9max2d_d3d9max2d
	push	_18
	call	_bbObjectRegisterType
	add	esp,4
	push	_19
	call	_bbObjectRegisterType
	add	esp,4
	push	_25
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_Tplayer
	call	_bbObjectRegisterType
	add	esp,4
	mov	eax,dword [_276]
	and	eax,1
	cmp	eax,0
	jne	_277
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [__bb_Tcard_list],eax
	or	dword [_276],1
_277:
	push	_bb_Tcard
	call	_bbObjectRegisterType
	add	esp,4
	mov	eax,dword [_276]
	and	eax,2
	cmp	eax,0
	jne	_280
	push	3
	push	3
	push	2
	push	_278
	call	_bbArrayNew
	add	esp,16
	inc	dword [eax+4]
	mov	dword [__bb_Tgamefield_field_card],eax
	or	dword [_276],2
_280:
	mov	eax,dword [_276]
	and	eax,4
	cmp	eax,0
	jne	_281
	push	1
	push	0
	call	_brl_random_Rand
	add	esp,8
	mov	dword [__bb_Tgamefield_player_onmove],eax
	or	dword [_276],4
_281:
	push	_bb_Tgamefield
	call	_bbObjectRegisterType
	add	esp,4
	call	_bbMilliSecs
	push	eax
	call	_brl_random_SeedRnd
	add	esp,4
	mov	eax,dword [_276]
	and	eax,8
	cmp	eax,0
	jne	_283
	fld	dword [_bb_screenx]
	fdiv	dword [_477]
	fstp	dword [_bb_pointx]
	or	dword [_276],8
_283:
	mov	eax,dword [_276]
	and	eax,16
	cmp	eax,0
	jne	_284
	fld	dword [_bb_screeny]
	fdiv	dword [_478]
	fstp	dword [_bb_pointy]
	or	dword [_276],16
_284:
	push	2
	call	_brl_glmax2d_GLMax2DDriver
	push	eax
	call	_brl_graphics_SetGraphicsDriver
	add	esp,8
	mov	ebx,_26
	inc	dword [ebx+4]
	mov	eax,dword [_bbAppTitle]
	dec	dword [eax+4]
	jnz	_288
	push	eax
	call	_bbGCFree
	add	esp,4
_288:
	mov	dword [_bbAppTitle],ebx
	mov	eax,dword [_276]
	and	eax,32
	cmp	eax,0
	jne	_290
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
	or	dword [_276],32
_290:
	push	3
	call	_brl_max2d_SetBlend
	add	esp,4
	mov	eax,dword [_276]
	and	eax,64
	cmp	eax,0
	jne	_292
	push	0
	call	dword [_bb_Tplayer+48]
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_player_red],eax
	or	dword [_276],64
_292:
	mov	eax,dword [_276]
	and	eax,128
	cmp	eax,0
	jne	_294
	push	1
	call	dword [_bb_Tplayer+48]
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_player_blue],eax
	or	dword [_276],128
_294:
	mov	eax,dword [_276]
	and	eax,256
	cmp	eax,0
	jne	_296
	push	-1
	push	_27
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_gfx_card_deckung],eax
	or	dword [_276],256
_296:
	mov	eax,dword [_276]
	and	eax,512
	cmp	eax,0
	jne	_298
	push	-1
	push	_28
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_gfx_card_ruecken],eax
	or	dword [_276],512
_298:
	mov	eax,dword [_276]
	and	eax,1024
	cmp	eax,0
	jne	_300
	push	-1
	push	_29
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_gfx_card_farbe],eax
	or	dword [_276],1024
_300:
	mov	eax,dword [_276]
	and	eax,2048
	cmp	eax,0
	jne	_301
	call	_bbMilliSecs
	mov	dword [_bb_lasttime],eax
	or	dword [_276],2048
_301:
	mov	eax,dword [_276]
	and	eax,4096
	cmp	eax,0
	jne	_302
	call	_bbMilliSecs
	mov	dword [_bb_time],eax
	or	dword [_276],4096
_302:
	jmp	_30
_32:
	mov	eax,dword [_bb_time]
	mov	dword [_bb_lasttime],eax
	call	_bbMilliSecs
	mov	dword [_bb_time],eax
	mov	eax,dword [_bb_time]
	sub	eax,dword [_bb_lasttime]
	mov	dword [_bb_msc],eax
	cmp	dword [_bb_msc],500
	jle	_303
	mov	dword [_bb_msc],500
_303:
	call	_brl_max2d_Cls
	call	_bb_reset_draw
	push	1
	call	_brl_polledinput_MouseHit
	add	esp,4
	mov	dword [_bb_mh1],eax
	push	1
	call	_brl_polledinput_MouseDown
	add	esp,4
	mov	dword [_bb_md1],eax
	mov	eax,dword [_bb_game_mode]
	cmp	eax,0
	je	_306
	cmp	eax,1
	je	_307
	cmp	eax,2
	je	_308
	cmp	eax,3
	je	_309
	jmp	_305
_306:
	mov	eax,dword [_bb_player_red]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,4
	mov	eax,dword [_bb_player_blue]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,4
	mov	eax,dword [_bb_player_red]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	eax,dword [_bb_player_blue]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	dword [_bb_game_mode],1
	jmp	_305
_307:
	push	dword [_bb_md1]
	call	dword [_bb_Tcard+72]
	add	esp,4
	call	dword [_bb_Tgamefield+56]
	call	dword [_bb_Tcard+68]
	call	dword [_bb_Tgamefield+48]
	mov	dword [_bb_win],eax
	cmp	dword [_bb_win],0
	jle	_314
	mov	dword [_bb_game_mode],2
_314:
	jmp	_305
_308:
	cmp	dword [_bb_win],1
	jne	_315
	push	1135542272
	push	1140850688
	push	_33
	call	_brl_max2d_DrawText
	add	esp,12
_315:
	cmp	dword [_bb_win],2
	jne	_316
	push	1135542272
	push	1140850688
	push	_34
	call	_brl_max2d_DrawText
	add	esp,12
_316:
	cmp	dword [_bb_win],3
	jne	_317
	push	1135542272
	push	1140850688
	push	_35
	call	_brl_max2d_DrawText
	add	esp,12
_317:
	cmp	dword [_bb_mh1],0
	je	_318
	mov	dword [_bb_game_mode],3
_318:
	jmp	_305
_309:
	mov	eax,dword [_bb_player_red]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	mov	eax,dword [_bb_player_blue]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bb_Tcard+48]
	call	dword [_bb_Tgamefield+52]
	mov	dword [_bb_game_mode],0
	jmp	_305
_305:
	push	1
	call	_brl_graphics_Flip
	add	esp,4
_30:
	call	_brl_polledinput_AppTerminate
	cmp	eax,0
	je	_32
_31:
	call	_bbEnd
	mov	eax,0
	jmp	_158
_158:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_a993b8d3_77d3_4f58_970e_98ea79a8db33_3_0_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_18
	mov	eax,0
	jmp	_161
_161:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_a993b8d3_77d3_4f58_970e_98ea79a8db33_3_0_Delete:
	push	ebp
	mov	ebp,esp
_164:
	mov	eax,0
	jmp	_323
_323:
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_blide_bga993b8d3_77d3_4f58_970e_98ea79a8db33_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_19
	mov	eax,0
	jmp	_167
_167:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_blide_bga993b8d3_77d3_4f58_970e_98ea79a8db33_Delete:
	push	ebp
	mov	ebp,esp
_170:
	mov	eax,0
	jmp	_324
_324:
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_My_a993b8d3_77d3_4f58_970e_98ea79a8db33_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_25
	mov	eax,0
	jmp	_173
_173:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_My_a993b8d3_77d3_4f58_970e_98ea79a8db33_Delete:
	push	ebp
	mov	ebp,esp
_176:
	mov	eax,0
	jmp	_325
_325:
	mov	esp,ebp
	pop	ebp
	ret
_bb_reset_draw:
	push	ebp
	mov	ebp,esp
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	0
	push	0
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	1065353216
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	0
	push	0
	call	_brl_max2d_SetOrigin
	add	esp,8
	mov	eax,0
	jmp	_178
_178:
	mov	esp,ebp
	pop	ebp
	ret
_bb_calc_move:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	fld	dword [ebp+8]
	fldz
	fxch	st1
	fucom	st1
	fxch	st1
	fstp	st0
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_526
	fstp	st0
	jmp	_326
_526:
	mov	eax,dword [_bb_msc]
	mov	dword [ebp+-4],eax
	fild	dword [ebp+-4]
	fmulp	st1,st0
	fdiv	dword [_519]
	jmp	_181
_326:
	fld	dword [_520]
	jmp	_181
_181:
	mov	esp,ebp
	pop	ebp
	ret
_bb_calc_keymove:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	fld	dword [ebp+8]
	fld	dword [ebp+12]
	fldz
	fxch	st2
	fucom	st2
	fxch	st2
	fstp	st0
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	je	_328
	fldz
	fxch	st1
	fucom	st1
	fxch	st1
	fstp	st0
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
_328:
	cmp	eax,0
	jne	_534
	fstp	st0
	fstp	st0
	jmp	_330
_534:
	fdivp	st1,st0
	mov	eax,dword [_bb_msc]
	mov	dword [ebp+-4],eax
	fild	dword [ebp+-4]
	fmulp	st1,st0
	jmp	_185
_330:
	fld	dword [_527]
	jmp	_185
_185:
	mov	esp,ebp
	pop	ebp
	ret
_bb_ismouseover:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+8]
	mov	edi,dword [ebp+12]
	mov	ebx,dword [ebp+16]
	call	_brl_polledinput_MouseX
	cmp	esi,eax
	setl	al
	movzx	eax,al
	cmp	eax,0
	je	_332
	add	esi,ebx
	call	_brl_polledinput_MouseX
	cmp	esi,eax
	setg	al
	movzx	eax,al
_332:
	cmp	eax,0
	je	_334
	call	_brl_polledinput_MouseY
	cmp	edi,eax
	setl	al
	movzx	eax,al
_334:
	cmp	eax,0
	je	_336
	mov	ebx,edi
	add	ebx,dword [ebp+20]
	call	_brl_polledinput_MouseY
	cmp	ebx,eax
	setg	al
	movzx	eax,al
_336:
	cmp	eax,0
	je	_338
	mov	byte [ebp-4],1
	jmp	_191
_338:
	mov	byte [ebp-4],0
	jmp	_191
_191:
	movzx	eax,byte [ebp-4]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_entferung:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	fld	dword [ebp+8]
	fld	dword [ebp+16]
	fld	qword [_542]
	sub	esp,8
	fstp	qword [esp]
	fsubp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-8]
	fld	qword [_543]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp+12]
	fsub	dword [ebp+20]
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
	jmp	_197
_197:
	mov	esp,ebp
	pop	ebp
	ret
_bb_winkel:
	push	ebp
	mov	ebp,esp
	fld	dword [ebp+8]
	fld	dword [ebp+12]
	fld	dword [ebp+16]
	fld	dword [ebp+20]
	fxch	st3
	fsubp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	fsubp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbATan2
	add	esp,16
	jmp	_203
_203:
	mov	esp,ebp
	pop	ebp
	ret
_bb_turmzuziel:
	push	ebp
	mov	ebp,esp
	fld	dword [ebp+8]
	fld	dword [ebp+12]
	fld	dword [ebp+16]
	fxch	st1
	fsubp	st2,st0
	fxch	st1
	fadd	dword [_552]
	jmp	_36
_38:
	fadd	dword [_553]
_36:
	fld	dword [_554]
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
	fsub	dword [_555]
_39:
	fld	dword [_556]
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
	fld	dword [_557]
	mov	edx,0
	fxch	st1
	fucom	st2
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_343
	fxch	st1
	fstp	st0
	fld	st1
	fchs
	mov	edx,1
	fxch	st1
_343:
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
	je	_565
	fxch	st2
	fstp	st0
	jmp	_344
_565:
	fxch	st1
	fstp	st0
	mov	edx,1
	fxch	st1
_344:
	cmp	edx,0
	je	_566
	fxch	st1
	fstp	st0
	jmp	_345
_566:
	fstp	st0
	fchs
_345:
	jmp	_208
_208:
	mov	esp,ebp
	pop	ebp
	ret
_bb_turmtoterwinkel:
	push	ebp
	mov	ebp,esp
	fld	dword [ebp+8]
	fld	dword [ebp+12]
	fld	dword [ebp+16]
	fxch	st1
	fsubp	st2,st0
	fxch	st1
	fadd	dword [_567]
	jmp	_42
_44:
	fadd	dword [_568]
_42:
	fld	dword [_569]
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
	fsub	dword [_570]
_45:
	fld	dword [_571]
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
	mov	edx,0
	mov	ecx,0
	fucom	st1
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_349
	mov	ecx,1
_349:
	fxch	st1
	fchs
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_350
	mov	ecx,1
_350:
	cmp	ecx,0
	jne	_351
	mov	edx,1
_351:
	mov	eax,edx
	jmp	_213
_213:
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
	mov	dword [ebx+8],0
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [ebx+12],eax
	mov	eax,0
	jmp	_216
_216:
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
	jnz	_355
	push	eax
	call	_bbGCFree
	add	esp,4
_355:
	mov	eax,0
	jmp	_353
_353:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tplayer_Create:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	_bb_Tplayer
	call	_bbObjectNew
	add	esp,4
	mov	dword [eax+8],ebx
	jmp	_222
_222:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tplayer_clear:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	mov	eax,0
	jmp	_225
_225:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tplayer_fillhand:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	esi,dword [ebp+8]
	mov	ebx,0
	jmp	_359
_50:
	push	dword [esi+8]
	call	dword [_bb_Tcard+64]
	add	esp,4
	mov	edx,dword [esi+12]
	push	eax
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+68]
	add	esp,8
_48:
	add	ebx,1
_359:
	cmp	ebx,4
	jle	_50
_49:
	mov	eax,0
	jmp	_228
_228:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tplayer_move_to_hand:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],0
	mov	eax,dword [ebp+8]
	cmp	dword [eax+8],1
	jne	_363
	mov	eax,dword [ebp+8]
	mov	ebx,dword [eax+12]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_51
_53:
	mov	eax,edi
	push	_bb_Tcard
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_51
	mov	eax,esi
	mov	edx,dword [ebp-4]
	imul	edx,110
	mov	dword [ebp+-8],edx
	fild	dword [ebp+-8]
	sub	esp,4
	fstp	dword [esp]
	push	0
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,12
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	add	dword [ebp-4],1
_51:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_53
_52:
_363:
	mov	eax,dword [ebp+8]
	cmp	dword [eax+8],0
	jne	_372
	mov	eax,dword [ebp+8]
	mov	ebx,dword [eax+12]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_54
_56:
	mov	eax,edi
	push	_bb_Tcard
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
	mov	eax,esi
	mov	edx,dword [ebp-4]
	imul	edx,110
	mov	dword [ebp+-8],edx
	fild	dword [ebp+-8]
	sub	esp,4
	fstp	dword [esp]
	push	1146388480
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,12
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	add	dword [ebp-4],1
_54:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_56
_55:
_372:
	mov	eax,0
	jmp	_231
_231:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tcard_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_Tcard
	fldz
	fstp	dword [ebx+8]
	fldz
	fstp	dword [ebx+12]
	fldz
	fstp	dword [ebx+16]
	fldz
	fstp	dword [ebx+20]
	mov	dword [ebx+24],0
	mov	dword [ebx+28],0
	mov	dword [ebx+32],0
	mov	dword [ebx+36],0
	mov	dword [ebx+40],0
	mov	dword [ebx+44],0
	mov	dword [ebx+48],0
	mov	dword [ebx+52],0
	mov	eax,0
	jmp	_234
_234:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tcard_Delete:
	push	ebp
	mov	ebp,esp
_237:
	mov	eax,0
	jmp	_381
_381:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tcard_clear:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [__bb_Tcard_list]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	mov	eax,0
	jmp	_239
_239:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tcard_save_card:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	fld	dword [eax+8]
	fstp	dword [eax+16]
	fld	dword [eax+12]
	fstp	dword [eax+20]
	mov	eax,0
	jmp	_242
_242:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tcard_reset_card:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	fld	dword [eax+16]
	fstp	dword [eax+8]
	fld	dword [eax+20]
	fstp	dword [eax+12]
	mov	eax,0
	jmp	_245
_245:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tcard_move_card:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	fld	dword [ebp+12]
	fld	dword [ebp+16]
	fxch	st1
	fstp	dword [eax+8]
	fstp	dword [eax+12]
	mov	eax,0
	jmp	_250
_250:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tcard_CreateCard:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	esi,dword [ebp+8]
	push	_bb_Tcard
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	mov	eax,dword [__bb_Tcard_list]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	dword [ebx+48],esi
	push	1000
	push	200
	call	_brl_random_Rand
	add	esp,8
	mov	dword [ebx+32],eax
	push	1000
	push	200
	call	_brl_random_Rand
	add	esp,8
	mov	dword [ebx+36],eax
	push	1000
	push	200
	call	_brl_random_Rand
	add	esp,8
	mov	dword [ebx+40],eax
	push	1000
	push	200
	call	_brl_random_Rand
	add	esp,8
	mov	dword [ebx+44],eax
	mov	eax,ebx
	jmp	_253
_253:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tcard_draw:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	ebx,dword [__bb_Tcard_list]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_57
_59:
	mov	eax,edi
	push	_bb_Tcard
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_57
	call	_bb_reset_draw
	push	0
	push	dword [esi+12]
	push	dword [esi+8]
	push	dword [_bb_gfx_card_ruecken]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	100
	push	100
	fld	dword [esi+12]
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
	je	_391
	cmp	dword [esi+48],0
	jne	_392
	push	50
	push	50
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
_392:
	cmp	dword [esi+48],1
	jne	_393
	push	255
	push	50
	push	50
	call	_brl_max2d_SetColor
	add	esp,12
_393:
	jmp	_394
_391:
	cmp	dword [esi+48],0
	jne	_395
	push	0
	push	0
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
_395:
	cmp	dword [esi+48],1
	jne	_396
	push	255
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
_396:
_394:
	push	0
	push	dword [esi+12]
	push	dword [esi+8]
	push	dword [_bb_gfx_card_farbe]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	0
	push	dword [esi+12]
	push	dword [esi+8]
	push	dword [_bb_gfx_card_deckung]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	fld	dword [esi+12]
	fadd	dword [_610]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [esi+8]
	fadd	dword [_611]
	sub	esp,4
	fstp	dword [esp]
	push	dword [esi+32]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	fld	dword [esi+12]
	fadd	dword [_612]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [esi+8]
	fadd	dword [_613]
	sub	esp,4
	fstp	dword [esp]
	push	dword [esi+40]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	fld	dword [esi+12]
	fadd	dword [_614]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [esi+8]
	fadd	dword [_615]
	sub	esp,4
	fstp	dword [esp]
	push	dword [esi+36]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	fld	dword [esi+12]
	fadd	dword [_616]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [esi+8]
	fadd	dword [_617]
	sub	esp,4
	fstp	dword [esp]
	push	dword [esi+44]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
_57:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_59
_58:
	mov	eax,0
	jmp	_255
_255:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tcard_dragndrop:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	cmp	eax,0
	je	_397
	cmp	dword [__bb_Tcard_draged_card],_bbNullObject
	jne	_398
	mov	ebx,dword [__bb_Tcard_list]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_60
_62:
	mov	eax,edi
	push	_bb_Tcard
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_60
	cmp	dword [esi+52],0
	jne	_405
	push	100
	push	100
	fld	dword [esi+12]
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
	je	_406
	mov	eax,esi
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [__bb_Tcard_draged_card]
	dec	dword [eax+4]
	jnz	_410
	push	eax
	call	_bbGCFree
	add	esp,4
_410:
	mov	dword [__bb_Tcard_draged_card],esi
_406:
_405:
_60:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_62
_61:
	jmp	_411
_398:
	mov	ebx,dword [__bb_Tcard_draged_card]
	call	_brl_polledinput_MouseY
	sub	eax,50
	mov	dword [ebp+-4],eax
	fild	dword [ebp+-4]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_polledinput_MouseX
	sub	eax,50
	mov	dword [ebp+-4],eax
	fild	dword [ebp+-4]
	sub	esp,4
	fstp	dword [esp]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,12
_411:
	jmp	_413
_397:
	cmp	dword [__bb_Tcard_draged_card],_bbNullObject
	je	_414
	push	dword [__bb_Tcard_draged_card]
	call	dword [_bb_Tgamefield+60]
	add	esp,4
	cmp	eax,0
	jne	_415
	mov	eax,dword [__bb_Tcard_draged_card]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,4
_415:
_414:
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [__bb_Tcard_draged_card]
	dec	dword [eax+4]
	jnz	_420
	push	eax
	call	_bbGCFree
	add	esp,4
_420:
	mov	dword [__bb_Tcard_draged_card],ebx
_413:
	mov	eax,0
	jmp	_258
_258:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tgamefield_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_Tgamefield
	mov	eax,0
	jmp	_261
_261:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tgamefield_Delete:
	push	ebp
	mov	ebp,esp
_264:
	mov	eax,0
	jmp	_421
_421:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tgamefield_check_win:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	edi,0
	mov	dword [ebp-4],0
	mov	dword [ebp-8],0
	mov	edx,0
	jmp	_426
_65:
	mov	eax,0
	jmp	_428
_68:
	mov	esi,dword [__bb_Tgamefield_field_card]
	mov	ebx,edx
	mov	ecx,dword [__bb_Tgamefield_field_card]
	imul	ebx,dword [ecx+24]
	mov	ecx,ebx
	add	ecx,eax
	cmp	dword [esi+ecx*4+28],_bbNullObject
	je	_429
	add	edi,1
	mov	esi,dword [__bb_Tgamefield_field_card]
	mov	ebx,edx
	mov	ecx,dword [__bb_Tgamefield_field_card]
	imul	ebx,dword [ecx+24]
	mov	ecx,ebx
	add	ecx,eax
	mov	ecx,dword [esi+ecx*4+28]
	cmp	dword [ecx+48],0
	jne	_430
	add	dword [ebp-4],1
_430:
	mov	esi,dword [__bb_Tgamefield_field_card]
	mov	ebx,edx
	mov	ecx,dword [__bb_Tgamefield_field_card]
	imul	ebx,dword [ecx+24]
	mov	ecx,ebx
	add	ecx,eax
	mov	ecx,dword [esi+ecx*4+28]
	cmp	dword [ecx+48],1
	jne	_431
	add	dword [ebp-8],1
_431:
_429:
_66:
	add	eax,1
_428:
	cmp	eax,2
	jle	_68
_67:
_63:
	add	edx,1
_426:
	cmp	edx,2
	jle	_65
_64:
	cmp	edi,9
	jne	_432
	mov	eax,dword [ebp-8]
	cmp	dword [ebp-4],eax
	jne	_433
	mov	eax,3
	jmp	_266
_433:
	mov	eax,dword [ebp-8]
	cmp	dword [ebp-4],eax
	jle	_434
	mov	eax,1
	jmp	_266
_434:
	mov	eax,2
	jmp	_266
_432:
	mov	eax,0
	jmp	_266
_266:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tgamefield_clear:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	edi,0
	jmp	_437
_71:
	mov	esi,0
	jmp	_439
_74:
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	ebx,eax
	mov	ecx,dword [__bb_Tgamefield_field_card]
	mov	edx,edi
	mov	eax,dword [__bb_Tgamefield_field_card]
	imul	edx,dword [eax+24]
	mov	eax,edx
	add	eax,esi
	mov	eax,dword [ecx+eax*4+28]
	dec	dword [eax+4]
	jnz	_443
	push	eax
	call	_bbGCFree
	add	esp,4
_443:
	mov	ecx,dword [__bb_Tgamefield_field_card]
	mov	edx,edi
	mov	eax,dword [__bb_Tgamefield_field_card]
	imul	edx,dword [eax+24]
	mov	eax,edx
	add	eax,esi
	mov	dword [ecx+eax*4+28],ebx
_72:
	add	esi,1
_439:
	cmp	esi,2
	jle	_74
_73:
_69:
	add	edi,1
_437:
	cmp	edi,2
	jle	_71
_70:
	push	1
	push	0
	call	_brl_random_Rand
	add	esp,8
	mov	dword [__bb_Tgamefield_player_onmove],eax
	mov	eax,0
	jmp	_268
_268:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tgamefield_draw:
	push	ebp
	mov	ebp,esp
	call	_bb_reset_draw
	mov	ecx,2
	mov	eax,dword [__bb_Tgamefield_player_onmove]
	cdq
	idiv	ecx
	cmp	edx,0
	je	_444
	push	126
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	jmp	_445
_444:
	push	0
	push	0
	push	126
	call	_brl_max2d_SetColor
	add	esp,12
_445:
	push	1142620160
	push	1142620160
	push	dword [__bb_Tgamefield_y]
	push	dword [__bb_Tgamefield_x]
	call	_brl_max2d_DrawRect
	add	esp,16
	call	_bb_reset_draw
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	1056964608
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	1128792064
	push	1128792064
	fld	dword [__bb_Tgamefield_y]
	fadd	dword [_650]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [__bb_Tgamefield_x]
	fadd	dword [_651]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	1128792064
	push	1128792064
	fld	dword [__bb_Tgamefield_y]
	fadd	dword [_652]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [__bb_Tgamefield_x]
	fadd	dword [_653]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	1128792064
	push	1128792064
	fld	dword [__bb_Tgamefield_y]
	fadd	dword [_654]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [__bb_Tgamefield_x]
	fadd	dword [_655]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	1128792064
	push	1128792064
	fld	dword [__bb_Tgamefield_y]
	fadd	dword [_656]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [__bb_Tgamefield_x]
	fadd	dword [_657]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	1128792064
	push	1128792064
	fld	dword [__bb_Tgamefield_y]
	fadd	dword [_658]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [__bb_Tgamefield_x]
	fadd	dword [_659]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	1128792064
	push	1128792064
	fld	dword [__bb_Tgamefield_y]
	fadd	dword [_660]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [__bb_Tgamefield_x]
	fadd	dword [_661]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	1128792064
	push	1128792064
	fld	dword [__bb_Tgamefield_y]
	fadd	dword [_662]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [__bb_Tgamefield_x]
	fadd	dword [_663]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	1128792064
	push	1128792064
	fld	dword [__bb_Tgamefield_y]
	fadd	dword [_664]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [__bb_Tgamefield_x]
	fadd	dword [_665]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	1128792064
	push	1128792064
	fld	dword [__bb_Tgamefield_y]
	fadd	dword [_666]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [__bb_Tgamefield_x]
	fadd	dword [_667]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	mov	eax,0
	jmp	_270
_270:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tgamefield_drop_card:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+8]
	mov	ecx,2
	mov	eax,dword [__bb_Tgamefield_player_onmove]
	cdq
	idiv	ecx
	cmp	dword [esi+48],edx
	jne	_447
	mov	edi,0
	jmp	_449
_77:
	mov	ebx,0
	jmp	_451
_80:
	mov	eax,edi
	imul	eax,210
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	fadd	dword [__bb_Tgamefield_x]
	fld	dword [esi+8]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	je	_452
	mov	eax,edi
	imul	eax,210
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	fadd	dword [__bb_Tgamefield_x]
	fadd	dword [_671]
	fld	dword [esi+8]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
_452:
	cmp	eax,0
	je	_454
	mov	eax,ebx
	imul	eax,210
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	fadd	dword [__bb_Tgamefield_y]
	fld	dword [esi+12]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	je	_455
	mov	eax,ebx
	imul	eax,210
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	fadd	dword [__bb_Tgamefield_y]
	fadd	dword [_672]
	fld	dword [esi+12]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
_455:
	cmp	eax,0
	je	_457
	mov	ecx,dword [__bb_Tgamefield_field_card]
	mov	edx,edi
	mov	eax,dword [__bb_Tgamefield_field_card]
	imul	edx,dword [eax+24]
	mov	eax,edx
	add	eax,ebx
	cmp	dword [ecx+eax*4+28],_bbNullObject
	jne	_458
	mov	eax,esi
	inc	dword [eax+4]
	mov	dword [ebp-4],eax
	mov	ecx,dword [__bb_Tgamefield_field_card]
	mov	edx,edi
	mov	eax,dword [__bb_Tgamefield_field_card]
	imul	edx,dword [eax+24]
	mov	eax,edx
	add	eax,ebx
	mov	eax,dword [ecx+eax*4+28]
	dec	dword [eax+4]
	jnz	_462
	push	eax
	call	_bbGCFree
	add	esp,4
_462:
	mov	eax,dword [__bb_Tgamefield_field_card]
	mov	ecx,edi
	mov	edx,dword [__bb_Tgamefield_field_card]
	imul	ecx,dword [edx+24]
	add	ecx,ebx
	mov	edx,dword [ebp-4]
	mov	dword [eax+ecx*4+28],edx
	mov	eax,esi
	mov	edx,ebx
	imul	edx,210
	mov	dword [ebp+-8],edx
	fild	dword [ebp+-8]
	fadd	dword [__bb_Tgamefield_y]
	fadd	dword [_673]
	sub	esp,4
	fstp	dword [esp]
	mov	edx,edi
	imul	edx,210
	mov	dword [ebp+-8],edx
	fild	dword [ebp+-8]
	fadd	dword [__bb_Tgamefield_x]
	fadd	dword [_674]
	sub	esp,4
	fstp	dword [esp]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,12
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	mov	dword [esi+52],1
	add	dword [__bb_Tgamefield_player_onmove],1
	mov	eax,ebx
	sub	eax,1
	cmp	eax,0
	jl	_465
	mov	edx,dword [__bb_Tgamefield_field_card]
	mov	eax,edi
	mov	ecx,dword [__bb_Tgamefield_field_card]
	imul	eax,dword [ecx+24]
	mov	ecx,ebx
	sub	ecx,1
	add	eax,ecx
	cmp	dword [edx+eax*4+28],_bbNullObject
	je	_466
	mov	edx,dword [__bb_Tgamefield_field_card]
	mov	eax,edi
	mov	ecx,dword [__bb_Tgamefield_field_card]
	imul	eax,dword [ecx+24]
	add	eax,ebx
	mov	edx,dword [edx+eax*4+28]
	mov	eax,dword [__bb_Tgamefield_field_card]
	mov	esi,edi
	mov	ecx,dword [__bb_Tgamefield_field_card]
	imul	esi,dword [ecx+24]
	mov	ecx,ebx
	sub	ecx,1
	add	esi,ecx
	mov	eax,dword [eax+esi*4+28]
	mov	eax,dword [eax+36]
	cmp	dword [edx+32],eax
	jle	_467
	mov	edx,dword [__bb_Tgamefield_field_card]
	mov	eax,edi
	mov	ecx,dword [__bb_Tgamefield_field_card]
	imul	eax,dword [ecx+24]
	mov	ecx,ebx
	sub	ecx,1
	add	eax,ecx
	mov	esi,dword [edx+eax*4+28]
	mov	ecx,dword [__bb_Tgamefield_field_card]
	mov	edx,edi
	mov	eax,dword [__bb_Tgamefield_field_card]
	imul	edx,dword [eax+24]
	mov	eax,edx
	add	eax,ebx
	mov	eax,dword [ecx+eax*4+28]
	mov	eax,dword [eax+48]
	mov	dword [esi+48],eax
_467:
_466:
_465:
	mov	eax,ebx
	add	eax,1
	cmp	eax,2
	jg	_468
	mov	edx,dword [__bb_Tgamefield_field_card]
	mov	eax,edi
	mov	ecx,dword [__bb_Tgamefield_field_card]
	imul	eax,dword [ecx+24]
	mov	ecx,ebx
	add	ecx,1
	add	eax,ecx
	cmp	dword [edx+eax*4+28],_bbNullObject
	je	_469
	mov	edx,dword [__bb_Tgamefield_field_card]
	mov	eax,edi
	mov	ecx,dword [__bb_Tgamefield_field_card]
	imul	eax,dword [ecx+24]
	add	eax,ebx
	mov	edx,dword [edx+eax*4+28]
	mov	eax,dword [__bb_Tgamefield_field_card]
	mov	esi,edi
	mov	ecx,dword [__bb_Tgamefield_field_card]
	imul	esi,dword [ecx+24]
	mov	ecx,ebx
	add	ecx,1
	add	esi,ecx
	mov	eax,dword [eax+esi*4+28]
	mov	eax,dword [eax+32]
	cmp	dword [edx+36],eax
	jle	_470
	mov	edx,dword [__bb_Tgamefield_field_card]
	mov	eax,edi
	mov	ecx,dword [__bb_Tgamefield_field_card]
	imul	eax,dword [ecx+24]
	mov	ecx,ebx
	add	ecx,1
	add	eax,ecx
	mov	esi,dword [edx+eax*4+28]
	mov	ecx,dword [__bb_Tgamefield_field_card]
	mov	edx,edi
	mov	eax,dword [__bb_Tgamefield_field_card]
	imul	edx,dword [eax+24]
	mov	eax,edx
	add	eax,ebx
	mov	eax,dword [ecx+eax*4+28]
	mov	eax,dword [eax+48]
	mov	dword [esi+48],eax
_470:
_469:
_468:
	mov	eax,edi
	add	eax,1
	cmp	eax,2
	jg	_471
	mov	edx,dword [__bb_Tgamefield_field_card]
	mov	eax,edi
	add	eax,1
	mov	ecx,dword [__bb_Tgamefield_field_card]
	imul	eax,dword [ecx+24]
	add	eax,ebx
	cmp	dword [edx+eax*4+28],_bbNullObject
	je	_472
	mov	edx,dword [__bb_Tgamefield_field_card]
	mov	eax,edi
	mov	ecx,dword [__bb_Tgamefield_field_card]
	imul	eax,dword [ecx+24]
	add	eax,ebx
	mov	esi,dword [edx+eax*4+28]
	mov	ecx,dword [__bb_Tgamefield_field_card]
	mov	eax,edi
	add	eax,1
	mov	edx,eax
	mov	eax,dword [__bb_Tgamefield_field_card]
	imul	edx,dword [eax+24]
	mov	eax,edx
	add	eax,ebx
	mov	eax,dword [ecx+eax*4+28]
	mov	eax,dword [eax+44]
	cmp	dword [esi+40],eax
	jle	_473
	mov	edx,dword [__bb_Tgamefield_field_card]
	mov	eax,edi
	add	eax,1
	mov	ecx,dword [__bb_Tgamefield_field_card]
	imul	eax,dword [ecx+24]
	add	eax,ebx
	mov	esi,dword [edx+eax*4+28]
	mov	ecx,dword [__bb_Tgamefield_field_card]
	mov	edx,edi
	mov	eax,dword [__bb_Tgamefield_field_card]
	imul	edx,dword [eax+24]
	mov	eax,edx
	add	eax,ebx
	mov	eax,dword [ecx+eax*4+28]
	mov	eax,dword [eax+48]
	mov	dword [esi+48],eax
_473:
_472:
_471:
	mov	eax,edi
	sub	eax,1
	cmp	eax,0
	jl	_474
	mov	edx,dword [__bb_Tgamefield_field_card]
	mov	eax,edi
	sub	eax,1
	mov	ecx,dword [__bb_Tgamefield_field_card]
	imul	eax,dword [ecx+24]
	add	eax,ebx
	cmp	dword [edx+eax*4+28],_bbNullObject
	je	_475
	mov	edx,dword [__bb_Tgamefield_field_card]
	mov	eax,edi
	mov	ecx,dword [__bb_Tgamefield_field_card]
	imul	eax,dword [ecx+24]
	add	eax,ebx
	mov	esi,dword [edx+eax*4+28]
	mov	ecx,dword [__bb_Tgamefield_field_card]
	mov	eax,edi
	sub	eax,1
	mov	edx,eax
	mov	eax,dword [__bb_Tgamefield_field_card]
	imul	edx,dword [eax+24]
	mov	eax,edx
	add	eax,ebx
	mov	eax,dword [ecx+eax*4+28]
	mov	eax,dword [eax+40]
	cmp	dword [esi+44],eax
	jle	_476
	mov	edx,dword [__bb_Tgamefield_field_card]
	mov	eax,edi
	sub	eax,1
	mov	ecx,dword [__bb_Tgamefield_field_card]
	imul	eax,dword [ecx+24]
	add	eax,ebx
	mov	ecx,dword [edx+eax*4+28]
	mov	edx,dword [__bb_Tgamefield_field_card]
	mov	eax,edi
	mov	esi,dword [__bb_Tgamefield_field_card]
	imul	eax,dword [esi+24]
	add	eax,ebx
	mov	eax,dword [edx+eax*4+28]
	mov	eax,dword [eax+48]
	mov	dword [ecx+48],eax
_476:
_475:
_474:
	mov	eax,1
	jmp	_273
_458:
_457:
_454:
_78:
	add	ebx,1
_451:
	cmp	ebx,2
	jle	_80
_79:
_75:
	add	edi,1
_449:
	cmp	edi,2
	jle	_77
_76:
_447:
	mov	eax,0
	jmp	_273
_273:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_321:
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
_104:
	db	"i",0
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
	dd	_105
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
	align	4
__bb_z_My_a993b8d3_77d3_4f58_970e_98ea79a8db33_Application:
	dd	_bbNullObject
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
	align	4
_276:
	dd	0
	align	4
__bb_Tcard_list:
	dd	_bbNullObject
	align	4
__bb_Tcard_draged_card:
	dd	_bbNullObject
_131:
	db	"Tcard",0
_132:
	db	"x",0
_133:
	db	"f",0
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
	align	4
__bb_Tgamefield_x:
	dd	0x43480000
	align	4
__bb_Tgamefield_y:
	dd	0x42c80000
_278:
	db	":Tcard",0
	align	4
__bb_Tgamefield_field_card:
	dd	_bbEmptyArray
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
_282:
	dd	_bbNullObject
	align	4
_bb_screenx:
	dd	0x44800000
	align	4
_bb_screeny:
	dd	0x44400000
	align	4
_477:
	dd	0x40000000
	align	4
_bb_pointx:
	dd	0x0
	align	4
_478:
	dd	0x40000000
	align	4
_bb_pointy:
	dd	0x0
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	67,97,114,100,103,97,109,101,32,118,48,46,48
	align	4
_bb_fenster:
	dd	_bbNullObject
	align	4
_bb_player_red:
	dd	_bbNullObject
	align	4
_bb_player_blue:
	dd	_bbNullObject
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	103,102,120,92,99,97,114,100,45,100,101,99,107,117,110,103
	dw	46,112,110,103
	align	4
_bb_gfx_card_deckung:
	dd	_bbNullObject
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	103,102,120,92,99,97,114,100,45,114,117,101,99,107,101,110
	dw	46,112,110,103
	align	4
_bb_gfx_card_ruecken:
	dd	_bbNullObject
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	18
	dw	103,102,120,92,99,97,114,100,45,102,97,114,98,101,46,112
	dw	110,103
	align	4
_bb_gfx_card_farbe:
	dd	_bbNullObject
	align	4
_bb_game_mode:
	dd	0
	align	4
_bb_win:
	dd	0
	align	4
_bb_mh1:
	dd	0
	align	4
_bb_md1:
	dd	0
	align	4
_bb_msctimer:
	dd	0
	align	4
_bb_msc:
	dd	0
	align	4
_bb_lasttime:
	dd	0
	align	4
_bb_time:
	dd	0
	align	4
_33:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	80,108,97,121,101,114,32,114,101,100,32,119,111,110
	align	4
_34:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	80,108,97,121,101,114,32,98,108,117,101,32,119,111,110
	align	4
_35:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	117,110,100,101,99,105,100,101,100
	align	4
_519:
	dd	0x42c80000
	align	4
_520:
	dd	0x0
	align	4
_527:
	dd	0x0
	align	8
_542:
	dd	0x0,0x40000000
	align	8
_543:
	dd	0x0,0x40000000
	align	4
_552:
	dd	0x43340000
	align	4
_553:
	dd	0x43b40000
	align	4
_554:
	dd	0xc3340000
	align	4
_555:
	dd	0x43b40000
	align	4
_556:
	dd	0x43340000
	align	4
_557:
	dd	0x0
	align	4
_567:
	dd	0x43340000
	align	4
_568:
	dd	0x43b40000
	align	4
_569:
	dd	0xc3340000
	align	4
_570:
	dd	0x43b40000
	align	4
_571:
	dd	0x43340000
	align	4
_610:
	dd	0x41c80000
	align	4
_611:
	dd	0x42480000
	align	4
_612:
	dd	0x42480000
	align	4
_613:
	dd	0x42960000
	align	4
_614:
	dd	0x42960000
	align	4
_615:
	dd	0x42480000
	align	4
_616:
	dd	0x42480000
	align	4
_617:
	dd	0x41c80000
	align	4
_650:
	dd	0x0
	align	4
_651:
	dd	0x0
	align	4
_652:
	dd	0x43520000
	align	4
_653:
	dd	0x0
	align	4
_654:
	dd	0x43d20000
	align	4
_655:
	dd	0x0
	align	4
_656:
	dd	0x0
	align	4
_657:
	dd	0x43520000
	align	4
_658:
	dd	0x43520000
	align	4
_659:
	dd	0x43520000
	align	4
_660:
	dd	0x43d20000
	align	4
_661:
	dd	0x43520000
	align	4
_662:
	dd	0x0
	align	4
_663:
	dd	0x43d20000
	align	4
_664:
	dd	0x43520000
	align	4
_665:
	dd	0x43d20000
	align	4
_666:
	dd	0x43d20000
	align	4
_667:
	dd	0x43d20000
	align	4
_671:
	dd	0x42c80000
	align	4
_672:
	dd	0x42c80000
	align	4
_673:
	dd	0x42480000
	align	4
_674:
	dd	0x42480000
