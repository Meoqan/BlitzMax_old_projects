	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_bmploader_bmploader
	extrn	___bb_d3d7max2d_d3d7max2d
	extrn	___bb_glmax2d_glmax2d
	extrn	___bb_jpgloader_jpgloader
	extrn	___bb_max2d_max2d
	extrn	___bb_pngloader_pngloader
	extrn	___bb_retro_retro
	extrn	___bb_standardio_standardio
	extrn	___bb_timer_timer
	extrn	_bbATan2
	extrn	_bbAppTitle
	extrn	_bbArrayNew
	extrn	_bbArrayNew1D
	extrn	_bbCos
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
	extrn	_bbSin
	extrn	_bbSqr
	extrn	_bbStringClass
	extrn	_bbStringConcat
	extrn	_bbStringFromFloat
	extrn	_bbStringFromInt
	extrn	_brl_blitz_ArrayBoundsError
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_blitz_RuntimeError
	extrn	_brl_d3d7max2d_D3D7Max2DDriver
	extrn	_brl_d3d7max2d_TD3D7ImageFrame
	extrn	_brl_graphics_Flip
	extrn	_brl_graphics_Graphics
	extrn	_brl_graphics_SetGraphicsDriver
	extrn	_brl_max2d_Cls
	extrn	_brl_max2d_DrawImage
	extrn	_brl_max2d_DrawRect
	extrn	_brl_max2d_DrawText
	extrn	_brl_max2d_GetHandle
	extrn	_brl_max2d_GetRotation
	extrn	_brl_max2d_GetScale
	extrn	_brl_max2d_LoadImage
	extrn	_brl_max2d_LoadImageFont
	extrn	_brl_max2d_SetAlpha
	extrn	_brl_max2d_SetBlend
	extrn	_brl_max2d_SetColor
	extrn	_brl_max2d_SetHandle
	extrn	_brl_max2d_SetImageFont
	extrn	_brl_max2d_SetOrigin
	extrn	_brl_max2d_SetRotation
	extrn	_brl_max2d_SetScale
	extrn	_brl_polledinput_AppTerminate
	extrn	_brl_polledinput_KeyDown
	extrn	_brl_polledinput_KeyHit
	extrn	_brl_polledinput_MouseDown
	extrn	_brl_polledinput_MouseHit
	extrn	_brl_polledinput_MouseX
	extrn	_brl_polledinput_MouseY
	extrn	_brl_random_Rand
	extrn	_brl_random_SeedRnd
	public	__bb_Tplayer_Delete
	public	__bb_Tplayer_New
	public	__bb_main
	public	__bb_z_6c401696_39c8_451b_8d03_5114a4e3cf74_3_0_Delete
	public	__bb_z_6c401696_39c8_451b_8d03_5114a4e3cf74_3_0_New
	public	__bb_z_My_6c401696_39c8_451b_8d03_5114a4e3cf74_Application
	public	__bb_z_My_6c401696_39c8_451b_8d03_5114a4e3cf74_Delete
	public	__bb_z_My_6c401696_39c8_451b_8d03_5114a4e3cf74_New
	public	__bb_z_My_6c401696_39c8_451b_8d03_5114a4e3cf74_Resources
	public	__bb_z_blide_bg6c401696_39c8_451b_8d03_5114a4e3cf74_Delete
	public	__bb_z_blide_bg6c401696_39c8_451b_8d03_5114a4e3cf74_New
	public	_bb_BufferTarget
	public	_bb_BufferTower
	public	_bb_DrawBox
	public	_bb_DrawPicture
	public	_bb_DrawPolyImage
	public	_bb_LinesInterselect
	public	_bb_Tplayer
	public	_bb_V_rotate
	public	_bb_boostMax2D_Driver
	public	_bb_boostMax2D_active
	public	_bb_calc_move
	public	_bb_chocke
	public	_bb_color
	public	_bb_eflops
	public	_bb_fenster
	public	_bb_flops
	public	_bb_init_boostMax2D
	public	_bb_ismouseover
	public	_bb_lasttime
	public	_bb_md1
	public	_bb_md2
	public	_bb_mh1
	public	_bb_mh2
	public	_bb_msc
	public	_bb_omx
	public	_bb_omy
	public	_bb_pfeil1
	public	_bb_player
	public	_bb_pointx
	public	_bb_pointy
	public	_bb_reset_draw
	public	_bb_roll
	public	_bb_screenx
	public	_bb_screeny
	public	_bb_split20x
	public	_bb_split20y
	public	_bb_sys_map
	public	_bb_tex1
	public	_bb_tex2
	public	_bb_time
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,176
	push	ebx
	push	esi
	cmp	dword [_1028],0
	je	_1029
	mov	eax,0
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_1029:
	mov	dword [_1028],1
	fldz
	fstp	dword [ebp-32]
	fldz
	fstp	dword [ebp-36]
	fldz
	fstp	dword [ebp-24]
	fldz
	fstp	dword [ebp-28]
	fldz
	fstp	dword [ebp-40]
	fldz
	fstp	dword [ebp-44]
	mov	dword [ebp-48],0
	mov	dword [ebp-52],0
	mov	dword [ebp-56],0
	mov	dword [ebp-60],0
	mov	dword [ebp-64],0
	mov	dword [ebp-68],0
	fldz
	fstp	dword [ebp-4]
	fldz
	fstp	dword [ebp-8]
	fldz
	fstp	dword [ebp-12]
	fldz
	fstp	dword [ebp-16]
	mov	dword [ebp-20],_bbEmptyArray
	fldz
	fstp	dword [ebp-72]
	fldz
	fstp	dword [ebp-76]
	fldz
	fstp	dword [ebp-80]
	fldz
	fstp	dword [ebp-84]
	mov	eax,ebp
	push	eax
	push	_992
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_timer_timer
	call	___bb_standardio_standardio
	call	___bb_retro_retro
	call	___bb_pngloader_pngloader
	call	___bb_max2d_max2d
	call	___bb_jpgloader_jpgloader
	call	___bb_glmax2d_glmax2d
	call	___bb_d3d7max2d_d3d7max2d
	call	___bb_bmploader_bmploader
	push	_18
	call	_bbObjectRegisterType
	add	esp,4
	push	_19
	call	_bbObjectRegisterType
	add	esp,4
	push	_218
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_220
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_25
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_Tplayer
	call	_bbObjectRegisterType
	add	esp,4
	push	_221
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_223
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	push	eax
	call	_brl_random_SeedRnd
	add	esp,4
	push	_225
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_226
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_227
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,1
	cmp	eax,0
	jne	_229
	fld	dword [_bb_screenx]
	fdiv	dword [_1500]
	fstp	dword [_bb_split20x]
	or	dword [_228],1
_229:
	push	_230
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,2
	cmp	eax,0
	jne	_231
	fld	dword [_bb_screeny]
	fdiv	dword [_1501]
	fstp	dword [_bb_split20y]
	or	dword [_228],2
_231:
	push	_232
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,4
	cmp	eax,0
	jne	_233
	fld	dword [_bb_screenx]
	fdiv	dword [_1502]
	fstp	dword [_bb_pointx]
	or	dword [_228],4
_233:
	push	_234
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,8
	cmp	eax,0
	jne	_235
	fld	dword [_bb_screeny]
	fdiv	dword [_1503]
	fstp	dword [_bb_pointy]
	or	dword [_228],8
_235:
	push	_236
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	call	_brl_d3d7max2d_D3D7Max2DDriver
	push	eax
	call	_brl_graphics_SetGraphicsDriver
	add	esp,8
	push	_237
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_26
	inc	dword [ebx+4]
	mov	eax,dword [_bbAppTitle]
	dec	dword [eax+4]
	jnz	_241
	push	eax
	call	_bbGCFree
	add	esp,4
_241:
	mov	dword [_bbAppTitle],ebx
	push	_242
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,16
	cmp	eax,0
	jne	_244
	push	0
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
	or	dword [_228],16
_244:
	push	_245
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	3
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_246
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_d3d7max2d_D3D7Max2DDriver
	push	eax
	call	_bb_init_boostMax2D
	add	esp,4
	push	_247
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	4
	push	12
	push	_27
	call	_brl_max2d_LoadImageFont
	add	esp,12
	push	eax
	call	_brl_max2d_SetImageFont
	add	esp,4
	push	_248
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,32
	cmp	eax,0
	jne	_250
	push	-1
	push	_28
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_tex1],eax
	or	dword [_228],32
_250:
	push	_251
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,64
	cmp	eax,0
	jne	_253
	push	-1
	push	_29
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_tex2],eax
	or	dword [_228],64
_253:
	push	_254
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,128
	cmp	eax,0
	jne	_256
	push	-1
	push	_30
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_pfeil1],eax
	or	dword [_228],128
_256:
	push	_257
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_pfeil1]
	cmp	ebx,_bbNullObject
	jne	_259
	call	_brl_blitz_NullObjectError
_259:
	mov	esi,dword [_bb_pfeil1]
	cmp	esi,_bbNullObject
	jne	_262
	call	_brl_blitz_NullObjectError
_262:
	mov	eax,dword [esi+8]
	mov	dword [ebp+-176],eax
	fild	dword [ebp+-176]
	fdiv	dword [_1504]
	fstp	dword [ebx+32]
	push	_263
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_pfeil1]
	cmp	ebx,_bbNullObject
	jne	_265
	call	_brl_blitz_NullObjectError
_265:
	mov	esi,dword [_bb_pfeil1]
	cmp	esi,_bbNullObject
	jne	_268
	call	_brl_blitz_NullObjectError
_268:
	mov	eax,dword [esi+12]
	mov	dword [ebp+-176],eax
	fild	dword [ebp+-176]
	fdiv	dword [_1505]
	fstp	dword [ebx+36]
	push	_269
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_270
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_271
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_272
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,256
	cmp	eax,0
	jne	_275
	push	21
	push	21
	push	2
	push	_273
	call	_bbArrayNew
	add	esp,16
	inc	dword [eax+4]
	mov	dword [_bb_sys_map],eax
	or	dword [_228],256
_275:
	push	_276
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_277
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_278
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_279
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,512
	cmp	eax,0
	jne	_281
	push	_bb_Tplayer
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_player],eax
	or	dword [_228],512
_281:
	push	_282
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_283
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,1024
	cmp	eax,0
	jne	_284
	call	_bbMilliSecs
	mov	dword [_bb_lasttime],eax
	or	dword [_228],1024
_284:
	push	_285
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,2048
	cmp	eax,0
	jne	_286
	call	_bbMilliSecs
	mov	dword [_bb_time],eax
	or	dword [_228],2048
_286:
	push	_287
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_31
_33:
	mov	eax,ebp
	push	eax
	push	_982
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_290
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_time]
	mov	dword [_bb_lasttime],eax
	push	_291
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	mov	dword [_bb_time],eax
	push	_292
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_time]
	sub	eax,dword [_bb_lasttime]
	mov	dword [_bb_msc],eax
	push	_293
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_294
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_brl_polledinput_MouseDown
	add	esp,4
	mov	dword [_bb_md1],eax
	push	_295
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_brl_polledinput_MouseHit
	add	esp,4
	mov	dword [_bb_mh1],eax
	push	_296
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	call	_brl_polledinput_MouseDown
	add	esp,4
	mov	dword [_bb_md2],eax
	push	_297
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	call	_brl_polledinput_MouseHit
	add	esp,4
	mov	dword [_bb_mh2],eax
	push	_298
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_MouseX
	mov	dword [_bb_omx],eax
	push	_299
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_MouseY
	mov	dword [_bb_omy],eax
	push	_300
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_msc]
	add	dword [_bb_chocke],eax
	push	_301
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_chocke],2000
	jle	_302
	mov	eax,ebp
	push	eax
	push	_804
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_303
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	sub	dword [_bb_chocke],2000
	push	_304
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_flops],0
	push	_305
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_eflops],0
	push	_306
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-32]
	fldz
	fstp	dword [ebp-32]
	jmp	_308
_36:
	mov	eax,ebp
	push	eax
	push	_356
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_309
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-36]
	fldz
	fstp	dword [ebp-36]
	jmp	_311
_39:
	mov	eax,ebp
	push	eax
	push	_354
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_312
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	esi,eax
	mov	eax,dword [_bb_sys_map]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+20]
	jb	_314
	call	_brl_blitz_ArrayBoundsError
_314:
	fld	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	ebx,eax
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+24]
	jb	_316
	call	_brl_blitz_ArrayBoundsError
_316:
	mov	eax,dword [_bb_sys_map]
	add	esi,ebx
	movzx	eax,byte [eax+esi+28]
	mov	eax,eax
	cmp	eax,11
	jne	_317
	mov	eax,ebp
	push	eax
	push	_324
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_318
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	esi,eax
	mov	eax,dword [_bb_sys_map]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+20]
	jb	_320
	call	_brl_blitz_ArrayBoundsError
_320:
	fld	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	ebx,eax
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+24]
	jb	_322
	call	_brl_blitz_ArrayBoundsError
_322:
	mov	eax,dword [_bb_sys_map]
	add	esi,ebx
	add	eax,esi
	mov	byte [eax+28],1
	call	dword [_bbOnDebugLeaveScope]
_317:
	push	_325
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	esi,eax
	mov	eax,dword [_bb_sys_map]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+20]
	jb	_327
	call	_brl_blitz_ArrayBoundsError
_327:
	fld	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	ebx,eax
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+24]
	jb	_329
	call	_brl_blitz_ArrayBoundsError
_329:
	mov	eax,dword [_bb_sys_map]
	add	esi,ebx
	movzx	eax,byte [eax+esi+28]
	mov	eax,eax
	cmp	eax,22
	jne	_330
	mov	eax,ebp
	push	eax
	push	_337
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_331
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	esi,eax
	mov	eax,dword [_bb_sys_map]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+20]
	jb	_333
	call	_brl_blitz_ArrayBoundsError
_333:
	fld	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	ebx,eax
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+24]
	jb	_335
	call	_brl_blitz_ArrayBoundsError
_335:
	mov	eax,dword [_bb_sys_map]
	add	esi,ebx
	add	eax,esi
	mov	byte [eax+28],2
	call	dword [_bbOnDebugLeaveScope]
_330:
	push	_338
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	esi,eax
	mov	eax,dword [_bb_sys_map]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+20]
	jb	_340
	call	_brl_blitz_ArrayBoundsError
_340:
	fld	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	ebx,eax
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+24]
	jb	_342
	call	_brl_blitz_ArrayBoundsError
_342:
	mov	eax,dword [_bb_sys_map]
	add	esi,ebx
	movzx	eax,byte [eax+esi+28]
	mov	eax,eax
	cmp	eax,1
	jne	_343
	mov	eax,ebp
	push	eax
	push	_345
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_344
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [_bb_flops],1
	call	dword [_bbOnDebugLeaveScope]
_343:
	push	_346
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	esi,eax
	mov	eax,dword [_bb_sys_map]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+20]
	jb	_348
	call	_brl_blitz_ArrayBoundsError
_348:
	fld	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	ebx,eax
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+24]
	jb	_350
	call	_brl_blitz_ArrayBoundsError
_350:
	mov	eax,dword [_bb_sys_map]
	add	esi,ebx
	movzx	eax,byte [eax+esi+28]
	mov	eax,eax
	cmp	eax,2
	jne	_351
	mov	eax,ebp
	push	eax
	push	_353
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_352
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [_bb_eflops],1
	call	dword [_bbOnDebugLeaveScope]
_351:
	call	dword [_bbOnDebugLeaveScope]
_37:
	fld	dword [ebp-36]
	fadd	dword [_1506]
	fstp	dword [ebp-36]
_311:
	fld	dword [ebp-36]
	fld	dword [_1507]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_39
_38:
	call	dword [_bbOnDebugLeaveScope]
_34:
	fld	dword [ebp-32]
	fadd	dword [_1508]
	fstp	dword [ebp-32]
_308:
	fld	dword [ebp-32]
	fld	dword [_1509]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_36
_35:
	push	_358
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_flops]
	mov	dword [ebp+-176],eax
	fild	dword [ebp+-176]
	fstp	dword [ebp-24]
	push	_360
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_eflops]
	mov	dword [ebp+-176],eax
	fild	dword [ebp+-176]
	fstp	dword [ebp-28]
	push	_362
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-40]
	fldz
	fstp	dword [ebp-40]
	jmp	_364
_42:
	mov	eax,ebp
	push	eax
	push	_803
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_365
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-44]
	fldz
	fstp	dword [ebp-44]
	jmp	_367
_45:
	mov	eax,ebp
	push	eax
	push	_802
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_368
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	esi,eax
	mov	eax,dword [_bb_sys_map]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+20]
	jb	_370
	call	_brl_blitz_ArrayBoundsError
_370:
	fld	dword [ebp-44]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	ebx,eax
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+24]
	jb	_372
	call	_brl_blitz_ArrayBoundsError
_372:
	mov	eax,dword [_bb_sys_map]
	add	esi,ebx
	movzx	eax,byte [eax+esi+28]
	mov	eax,eax
	cmp	eax,2
	jne	_373
	mov	eax,ebp
	push	eax
	push	_584
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_374
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-40]
	fadd	dword [_1510]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebp-48],eax
	push	_376
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-44]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebp-52],eax
	push	_378
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-48]
	cmp	eax,0
	setge	al
	movzx	eax,al
	cmp	eax,0
	je	_379
	mov	eax,dword [ebp-48]
	cmp	eax,20
	setle	al
	movzx	eax,al
_379:
	cmp	eax,0
	je	_381
	mov	eax,dword [ebp-52]
	cmp	eax,0
	setge	al
	movzx	eax,al
_381:
	cmp	eax,0
	je	_383
	mov	eax,dword [ebp-52]
	cmp	eax,20
	setle	al
	movzx	eax,al
_383:
	cmp	eax,0
	je	_395
	mov	ebx,dword [ebp-48]
	mov	eax,dword [_bb_sys_map]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+20]
	jb	_386
	call	_brl_blitz_ArrayBoundsError
_386:
	mov	esi,dword [ebp-52]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+24]
	jb	_388
	call	_brl_blitz_ArrayBoundsError
_388:
	mov	eax,dword [_bb_sys_map]
	add	ebx,esi
	movzx	eax,byte [eax+ebx+28]
	mov	eax,eax
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_393
	mov	ebx,dword [ebp-48]
	mov	eax,dword [_bb_sys_map]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+20]
	jb	_390
	call	_brl_blitz_ArrayBoundsError
_390:
	mov	esi,dword [ebp-52]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+24]
	jb	_392
	call	_brl_blitz_ArrayBoundsError
_392:
	mov	eax,dword [_bb_sys_map]
	add	ebx,esi
	movzx	eax,byte [eax+ebx+28]
	mov	eax,eax
	cmp	eax,11
	sete	al
	movzx	eax,al
_393:
_395:
	cmp	eax,0
	je	_397
	mov	eax,ebp
	push	eax
	push	_404
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_398
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-48]
	mov	eax,dword [_bb_sys_map]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+20]
	jb	_400
	call	_brl_blitz_ArrayBoundsError
_400:
	mov	ebx,dword [ebp-52]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+24]
	jb	_402
	call	_brl_blitz_ArrayBoundsError
_402:
	mov	eax,dword [_bb_sys_map]
	add	esi,ebx
	add	eax,esi
	mov	byte [eax+28],22
	call	dword [_bbOnDebugLeaveScope]
_397:
	push	_405
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-48]
	cmp	eax,0
	setge	al
	movzx	eax,al
	cmp	eax,0
	je	_406
	mov	eax,dword [ebp-48]
	cmp	eax,20
	setle	al
	movzx	eax,al
_406:
	cmp	eax,0
	je	_408
	mov	eax,dword [ebp-52]
	cmp	eax,0
	setge	al
	movzx	eax,al
_408:
	cmp	eax,0
	je	_410
	mov	eax,dword [ebp-52]
	cmp	eax,20
	setle	al
	movzx	eax,al
_410:
	cmp	eax,0
	je	_412
	push	dword [ebp-28]
	call	_bb_roll
	add	esp,4
_412:
	cmp	eax,0
	je	_418
	mov	ebx,dword [ebp-48]
	mov	eax,dword [_bb_sys_map]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+20]
	jb	_415
	call	_brl_blitz_ArrayBoundsError
_415:
	mov	esi,dword [ebp-52]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+24]
	jb	_417
	call	_brl_blitz_ArrayBoundsError
_417:
	mov	eax,dword [_bb_sys_map]
	add	ebx,esi
	movzx	eax,byte [eax+ebx+28]
	mov	eax,eax
	cmp	eax,1
	sete	al
	movzx	eax,al
_418:
	cmp	eax,0
	je	_420
	mov	eax,ebp
	push	eax
	push	_427
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_421
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-48]
	mov	eax,dword [_bb_sys_map]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+20]
	jb	_423
	call	_brl_blitz_ArrayBoundsError
_423:
	mov	ebx,dword [ebp-52]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+24]
	jb	_425
	call	_brl_blitz_ArrayBoundsError
_425:
	mov	eax,dword [_bb_sys_map]
	add	esi,ebx
	add	eax,esi
	mov	byte [eax+28],22
	call	dword [_bbOnDebugLeaveScope]
_420:
	push	_428
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebp-48],eax
	push	_429
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-44]
	fadd	dword [_1511]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebp-52],eax
	push	_430
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-48]
	cmp	eax,0
	setge	al
	movzx	eax,al
	cmp	eax,0
	je	_431
	mov	eax,dword [ebp-48]
	cmp	eax,20
	setle	al
	movzx	eax,al
_431:
	cmp	eax,0
	je	_433
	mov	eax,dword [ebp-52]
	cmp	eax,0
	setge	al
	movzx	eax,al
_433:
	cmp	eax,0
	je	_435
	mov	eax,dword [ebp-52]
	cmp	eax,20
	setle	al
	movzx	eax,al
_435:
	cmp	eax,0
	je	_447
	mov	ebx,dword [ebp-48]
	mov	eax,dword [_bb_sys_map]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+20]
	jb	_438
	call	_brl_blitz_ArrayBoundsError
_438:
	mov	esi,dword [ebp-52]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+24]
	jb	_440
	call	_brl_blitz_ArrayBoundsError
_440:
	mov	eax,dword [_bb_sys_map]
	add	ebx,esi
	movzx	eax,byte [eax+ebx+28]
	mov	eax,eax
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_445
	mov	ebx,dword [ebp-48]
	mov	eax,dword [_bb_sys_map]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+20]
	jb	_442
	call	_brl_blitz_ArrayBoundsError
_442:
	mov	esi,dword [ebp-52]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+24]
	jb	_444
	call	_brl_blitz_ArrayBoundsError
_444:
	mov	eax,dword [_bb_sys_map]
	add	ebx,esi
	movzx	eax,byte [eax+ebx+28]
	mov	eax,eax
	cmp	eax,11
	sete	al
	movzx	eax,al
_445:
_447:
	cmp	eax,0
	je	_449
	mov	eax,ebp
	push	eax
	push	_456
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_450
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-48]
	mov	eax,dword [_bb_sys_map]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+20]
	jb	_452
	call	_brl_blitz_ArrayBoundsError
_452:
	mov	ebx,dword [ebp-52]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+24]
	jb	_454
	call	_brl_blitz_ArrayBoundsError
_454:
	mov	eax,dword [_bb_sys_map]
	add	esi,ebx
	add	eax,esi
	mov	byte [eax+28],22
	call	dword [_bbOnDebugLeaveScope]
_449:
	push	_457
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-48]
	cmp	eax,0
	setge	al
	movzx	eax,al
	cmp	eax,0
	je	_458
	mov	eax,dword [ebp-48]
	cmp	eax,20
	setle	al
	movzx	eax,al
_458:
	cmp	eax,0
	je	_460
	mov	eax,dword [ebp-52]
	cmp	eax,0
	setge	al
	movzx	eax,al
_460:
	cmp	eax,0
	je	_462
	mov	eax,dword [ebp-52]
	cmp	eax,20
	setle	al
	movzx	eax,al
_462:
	cmp	eax,0
	je	_464
	push	dword [ebp-28]
	call	_bb_roll
	add	esp,4
_464:
	cmp	eax,0
	je	_470
	mov	ebx,dword [ebp-48]
	mov	eax,dword [_bb_sys_map]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+20]
	jb	_467
	call	_brl_blitz_ArrayBoundsError
_467:
	mov	esi,dword [ebp-52]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+24]
	jb	_469
	call	_brl_blitz_ArrayBoundsError
_469:
	mov	eax,dword [_bb_sys_map]
	add	ebx,esi
	movzx	eax,byte [eax+ebx+28]
	mov	eax,eax
	cmp	eax,1
	sete	al
	movzx	eax,al
_470:
	cmp	eax,0
	je	_472
	mov	eax,ebp
	push	eax
	push	_479
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_473
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-48]
	mov	eax,dword [_bb_sys_map]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+20]
	jb	_475
	call	_brl_blitz_ArrayBoundsError
_475:
	mov	ebx,dword [ebp-52]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+24]
	jb	_477
	call	_brl_blitz_ArrayBoundsError
_477:
	mov	eax,dword [_bb_sys_map]
	add	esi,ebx
	add	eax,esi
	mov	byte [eax+28],22
	call	dword [_bbOnDebugLeaveScope]
_472:
	push	_480
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-40]
	fsub	dword [_1512]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebp-48],eax
	push	_481
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-44]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebp-52],eax
	push	_482
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-48]
	cmp	eax,0
	setge	al
	movzx	eax,al
	cmp	eax,0
	je	_483
	mov	eax,dword [ebp-48]
	cmp	eax,20
	setle	al
	movzx	eax,al
_483:
	cmp	eax,0
	je	_485
	mov	eax,dword [ebp-52]
	cmp	eax,0
	setge	al
	movzx	eax,al
_485:
	cmp	eax,0
	je	_487
	mov	eax,dword [ebp-52]
	cmp	eax,20
	setle	al
	movzx	eax,al
_487:
	cmp	eax,0
	je	_499
	mov	ebx,dword [ebp-48]
	mov	eax,dword [_bb_sys_map]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+20]
	jb	_490
	call	_brl_blitz_ArrayBoundsError
_490:
	mov	esi,dword [ebp-52]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+24]
	jb	_492
	call	_brl_blitz_ArrayBoundsError
_492:
	mov	eax,dword [_bb_sys_map]
	add	ebx,esi
	movzx	eax,byte [eax+ebx+28]
	mov	eax,eax
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_497
	mov	ebx,dword [ebp-48]
	mov	eax,dword [_bb_sys_map]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+20]
	jb	_494
	call	_brl_blitz_ArrayBoundsError
_494:
	mov	esi,dword [ebp-52]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+24]
	jb	_496
	call	_brl_blitz_ArrayBoundsError
_496:
	mov	eax,dword [_bb_sys_map]
	add	ebx,esi
	movzx	eax,byte [eax+ebx+28]
	mov	eax,eax
	cmp	eax,11
	sete	al
	movzx	eax,al
_497:
_499:
	cmp	eax,0
	je	_501
	mov	eax,ebp
	push	eax
	push	_508
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_502
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-48]
	mov	eax,dword [_bb_sys_map]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+20]
	jb	_504
	call	_brl_blitz_ArrayBoundsError
_504:
	mov	ebx,dword [ebp-52]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+24]
	jb	_506
	call	_brl_blitz_ArrayBoundsError
_506:
	mov	eax,dword [_bb_sys_map]
	add	esi,ebx
	add	eax,esi
	mov	byte [eax+28],22
	call	dword [_bbOnDebugLeaveScope]
_501:
	push	_509
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-48]
	cmp	eax,0
	setge	al
	movzx	eax,al
	cmp	eax,0
	je	_510
	mov	eax,dword [ebp-48]
	cmp	eax,20
	setle	al
	movzx	eax,al
_510:
	cmp	eax,0
	je	_512
	mov	eax,dword [ebp-52]
	cmp	eax,0
	setge	al
	movzx	eax,al
_512:
	cmp	eax,0
	je	_514
	mov	eax,dword [ebp-52]
	cmp	eax,20
	setle	al
	movzx	eax,al
_514:
	cmp	eax,0
	je	_516
	push	dword [ebp-28]
	call	_bb_roll
	add	esp,4
_516:
	cmp	eax,0
	je	_522
	mov	ebx,dword [ebp-48]
	mov	eax,dword [_bb_sys_map]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+20]
	jb	_519
	call	_brl_blitz_ArrayBoundsError
_519:
	mov	esi,dword [ebp-52]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+24]
	jb	_521
	call	_brl_blitz_ArrayBoundsError
_521:
	mov	eax,dword [_bb_sys_map]
	add	ebx,esi
	movzx	eax,byte [eax+ebx+28]
	mov	eax,eax
	cmp	eax,1
	sete	al
	movzx	eax,al
_522:
	cmp	eax,0
	je	_524
	mov	eax,ebp
	push	eax
	push	_531
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_525
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-48]
	mov	eax,dword [_bb_sys_map]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+20]
	jb	_527
	call	_brl_blitz_ArrayBoundsError
_527:
	mov	ebx,dword [ebp-52]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+24]
	jb	_529
	call	_brl_blitz_ArrayBoundsError
_529:
	mov	eax,dword [_bb_sys_map]
	add	esi,ebx
	add	eax,esi
	mov	byte [eax+28],22
	call	dword [_bbOnDebugLeaveScope]
_524:
	push	_532
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebp-48],eax
	push	_533
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-44]
	fsub	dword [_1513]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebp-52],eax
	push	_534
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-48]
	cmp	eax,0
	setge	al
	movzx	eax,al
	cmp	eax,0
	je	_535
	mov	eax,dword [ebp-48]
	cmp	eax,20
	setle	al
	movzx	eax,al
_535:
	cmp	eax,0
	je	_537
	mov	eax,dword [ebp-52]
	cmp	eax,0
	setge	al
	movzx	eax,al
_537:
	cmp	eax,0
	je	_539
	mov	eax,dword [ebp-52]
	cmp	eax,20
	setle	al
	movzx	eax,al
_539:
	cmp	eax,0
	je	_551
	mov	ebx,dword [ebp-48]
	mov	eax,dword [_bb_sys_map]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+20]
	jb	_542
	call	_brl_blitz_ArrayBoundsError
_542:
	mov	esi,dword [ebp-52]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+24]
	jb	_544
	call	_brl_blitz_ArrayBoundsError
_544:
	mov	eax,dword [_bb_sys_map]
	add	ebx,esi
	movzx	eax,byte [eax+ebx+28]
	mov	eax,eax
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_549
	mov	ebx,dword [ebp-48]
	mov	eax,dword [_bb_sys_map]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+20]
	jb	_546
	call	_brl_blitz_ArrayBoundsError
_546:
	mov	esi,dword [ebp-52]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+24]
	jb	_548
	call	_brl_blitz_ArrayBoundsError
_548:
	mov	eax,dword [_bb_sys_map]
	add	ebx,esi
	movzx	eax,byte [eax+ebx+28]
	mov	eax,eax
	cmp	eax,11
	sete	al
	movzx	eax,al
_549:
_551:
	cmp	eax,0
	je	_553
	mov	eax,ebp
	push	eax
	push	_560
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_554
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-48]
	mov	eax,dword [_bb_sys_map]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+20]
	jb	_556
	call	_brl_blitz_ArrayBoundsError
_556:
	mov	ebx,dword [ebp-52]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+24]
	jb	_558
	call	_brl_blitz_ArrayBoundsError
_558:
	mov	eax,dword [_bb_sys_map]
	add	esi,ebx
	add	eax,esi
	mov	byte [eax+28],22
	call	dword [_bbOnDebugLeaveScope]
_553:
	push	_561
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-48]
	cmp	eax,0
	setge	al
	movzx	eax,al
	cmp	eax,0
	je	_562
	mov	eax,dword [ebp-48]
	cmp	eax,20
	setle	al
	movzx	eax,al
_562:
	cmp	eax,0
	je	_564
	mov	eax,dword [ebp-52]
	cmp	eax,0
	setge	al
	movzx	eax,al
_564:
	cmp	eax,0
	je	_566
	mov	eax,dword [ebp-52]
	cmp	eax,20
	setle	al
	movzx	eax,al
_566:
	cmp	eax,0
	je	_568
	push	dword [ebp-28]
	call	_bb_roll
	add	esp,4
_568:
	cmp	eax,0
	je	_574
	mov	ebx,dword [ebp-48]
	mov	eax,dword [_bb_sys_map]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+20]
	jb	_571
	call	_brl_blitz_ArrayBoundsError
_571:
	mov	esi,dword [ebp-52]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+24]
	jb	_573
	call	_brl_blitz_ArrayBoundsError
_573:
	mov	eax,dword [_bb_sys_map]
	add	ebx,esi
	movzx	eax,byte [eax+ebx+28]
	mov	eax,eax
	cmp	eax,1
	sete	al
	movzx	eax,al
_574:
	cmp	eax,0
	je	_576
	mov	eax,ebp
	push	eax
	push	_583
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_577
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-48]
	mov	eax,dword [_bb_sys_map]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+20]
	jb	_579
	call	_brl_blitz_ArrayBoundsError
_579:
	mov	ebx,dword [ebp-52]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+24]
	jb	_581
	call	_brl_blitz_ArrayBoundsError
_581:
	mov	eax,dword [_bb_sys_map]
	add	esi,ebx
	add	eax,esi
	mov	byte [eax+28],22
	call	dword [_bbOnDebugLeaveScope]
_576:
	call	dword [_bbOnDebugLeaveScope]
_373:
	push	_585
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	esi,eax
	mov	eax,dword [_bb_sys_map]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+20]
	jb	_587
	call	_brl_blitz_ArrayBoundsError
_587:
	fld	dword [ebp-44]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	ebx,eax
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+24]
	jb	_589
	call	_brl_blitz_ArrayBoundsError
_589:
	mov	eax,dword [_bb_sys_map]
	add	esi,ebx
	movzx	eax,byte [eax+esi+28]
	mov	eax,eax
	cmp	eax,1
	jne	_590
	mov	eax,ebp
	push	eax
	push	_801
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_591
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-40]
	fadd	dword [_1514]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebp-56],eax
	push	_593
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-44]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebp-60],eax
	push	_595
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,0
	setge	al
	movzx	eax,al
	cmp	eax,0
	je	_596
	mov	eax,dword [ebp-56]
	cmp	eax,20
	setle	al
	movzx	eax,al
_596:
	cmp	eax,0
	je	_598
	mov	eax,dword [ebp-60]
	cmp	eax,0
	setge	al
	movzx	eax,al
_598:
	cmp	eax,0
	je	_600
	mov	eax,dword [ebp-60]
	cmp	eax,20
	setle	al
	movzx	eax,al
_600:
	cmp	eax,0
	je	_612
	mov	ebx,dword [ebp-56]
	mov	eax,dword [_bb_sys_map]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+20]
	jb	_603
	call	_brl_blitz_ArrayBoundsError
_603:
	mov	esi,dword [ebp-60]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+24]
	jb	_605
	call	_brl_blitz_ArrayBoundsError
_605:
	mov	eax,dword [_bb_sys_map]
	add	ebx,esi
	movzx	eax,byte [eax+ebx+28]
	mov	eax,eax
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_610
	mov	ebx,dword [ebp-56]
	mov	eax,dword [_bb_sys_map]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+20]
	jb	_607
	call	_brl_blitz_ArrayBoundsError
_607:
	mov	esi,dword [ebp-60]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+24]
	jb	_609
	call	_brl_blitz_ArrayBoundsError
_609:
	mov	eax,dword [_bb_sys_map]
	add	ebx,esi
	movzx	eax,byte [eax+ebx+28]
	mov	eax,eax
	cmp	eax,22
	sete	al
	movzx	eax,al
_610:
_612:
	cmp	eax,0
	je	_614
	mov	eax,ebp
	push	eax
	push	_621
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_615
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-56]
	mov	eax,dword [_bb_sys_map]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+20]
	jb	_617
	call	_brl_blitz_ArrayBoundsError
_617:
	mov	ebx,dword [ebp-60]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+24]
	jb	_619
	call	_brl_blitz_ArrayBoundsError
_619:
	mov	eax,dword [_bb_sys_map]
	add	esi,ebx
	add	eax,esi
	mov	byte [eax+28],11
	call	dword [_bbOnDebugLeaveScope]
_614:
	push	_622
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,0
	setge	al
	movzx	eax,al
	cmp	eax,0
	je	_623
	mov	eax,dword [ebp-56]
	cmp	eax,20
	setle	al
	movzx	eax,al
_623:
	cmp	eax,0
	je	_625
	mov	eax,dword [ebp-60]
	cmp	eax,0
	setge	al
	movzx	eax,al
_625:
	cmp	eax,0
	je	_627
	mov	eax,dword [ebp-60]
	cmp	eax,20
	setle	al
	movzx	eax,al
_627:
	cmp	eax,0
	je	_629
	push	dword [ebp-24]
	call	_bb_roll
	add	esp,4
_629:
	cmp	eax,0
	je	_635
	mov	ebx,dword [ebp-56]
	mov	eax,dword [_bb_sys_map]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+20]
	jb	_632
	call	_brl_blitz_ArrayBoundsError
_632:
	mov	esi,dword [ebp-60]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+24]
	jb	_634
	call	_brl_blitz_ArrayBoundsError
_634:
	mov	eax,dword [_bb_sys_map]
	add	ebx,esi
	movzx	eax,byte [eax+ebx+28]
	mov	eax,eax
	cmp	eax,2
	sete	al
	movzx	eax,al
_635:
	cmp	eax,0
	je	_637
	mov	eax,ebp
	push	eax
	push	_644
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_638
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-56]
	mov	eax,dword [_bb_sys_map]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+20]
	jb	_640
	call	_brl_blitz_ArrayBoundsError
_640:
	mov	ebx,dword [ebp-60]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+24]
	jb	_642
	call	_brl_blitz_ArrayBoundsError
_642:
	mov	eax,dword [_bb_sys_map]
	add	esi,ebx
	add	eax,esi
	mov	byte [eax+28],11
	call	dword [_bbOnDebugLeaveScope]
_637:
	push	_645
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebp-56],eax
	push	_646
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-44]
	fadd	dword [_1515]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebp-60],eax
	push	_647
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,0
	setge	al
	movzx	eax,al
	cmp	eax,0
	je	_648
	mov	eax,dword [ebp-56]
	cmp	eax,20
	setle	al
	movzx	eax,al
_648:
	cmp	eax,0
	je	_650
	mov	eax,dword [ebp-60]
	cmp	eax,0
	setge	al
	movzx	eax,al
_650:
	cmp	eax,0
	je	_652
	mov	eax,dword [ebp-60]
	cmp	eax,20
	setle	al
	movzx	eax,al
_652:
	cmp	eax,0
	je	_664
	mov	ebx,dword [ebp-56]
	mov	eax,dword [_bb_sys_map]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+20]
	jb	_655
	call	_brl_blitz_ArrayBoundsError
_655:
	mov	esi,dword [ebp-60]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+24]
	jb	_657
	call	_brl_blitz_ArrayBoundsError
_657:
	mov	eax,dword [_bb_sys_map]
	add	ebx,esi
	movzx	eax,byte [eax+ebx+28]
	mov	eax,eax
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_662
	mov	ebx,dword [ebp-56]
	mov	eax,dword [_bb_sys_map]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+20]
	jb	_659
	call	_brl_blitz_ArrayBoundsError
_659:
	mov	esi,dword [ebp-60]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+24]
	jb	_661
	call	_brl_blitz_ArrayBoundsError
_661:
	mov	eax,dword [_bb_sys_map]
	add	ebx,esi
	movzx	eax,byte [eax+ebx+28]
	mov	eax,eax
	cmp	eax,22
	sete	al
	movzx	eax,al
_662:
_664:
	cmp	eax,0
	je	_666
	mov	eax,ebp
	push	eax
	push	_673
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_667
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-56]
	mov	eax,dword [_bb_sys_map]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+20]
	jb	_669
	call	_brl_blitz_ArrayBoundsError
_669:
	mov	ebx,dword [ebp-60]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+24]
	jb	_671
	call	_brl_blitz_ArrayBoundsError
_671:
	mov	eax,dword [_bb_sys_map]
	add	esi,ebx
	add	eax,esi
	mov	byte [eax+28],11
	call	dword [_bbOnDebugLeaveScope]
_666:
	push	_674
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,0
	setge	al
	movzx	eax,al
	cmp	eax,0
	je	_675
	mov	eax,dword [ebp-56]
	cmp	eax,20
	setle	al
	movzx	eax,al
_675:
	cmp	eax,0
	je	_677
	mov	eax,dword [ebp-60]
	cmp	eax,0
	setge	al
	movzx	eax,al
_677:
	cmp	eax,0
	je	_679
	mov	eax,dword [ebp-60]
	cmp	eax,20
	setle	al
	movzx	eax,al
_679:
	cmp	eax,0
	je	_681
	push	dword [ebp-24]
	call	_bb_roll
	add	esp,4
_681:
	cmp	eax,0
	je	_687
	mov	ebx,dword [ebp-56]
	mov	eax,dword [_bb_sys_map]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+20]
	jb	_684
	call	_brl_blitz_ArrayBoundsError
_684:
	mov	esi,dword [ebp-60]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+24]
	jb	_686
	call	_brl_blitz_ArrayBoundsError
_686:
	mov	eax,dword [_bb_sys_map]
	add	ebx,esi
	movzx	eax,byte [eax+ebx+28]
	mov	eax,eax
	cmp	eax,2
	sete	al
	movzx	eax,al
_687:
	cmp	eax,0
	je	_689
	mov	eax,ebp
	push	eax
	push	_696
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_690
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-56]
	mov	eax,dword [_bb_sys_map]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+20]
	jb	_692
	call	_brl_blitz_ArrayBoundsError
_692:
	mov	ebx,dword [ebp-60]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+24]
	jb	_694
	call	_brl_blitz_ArrayBoundsError
_694:
	mov	eax,dword [_bb_sys_map]
	add	esi,ebx
	add	eax,esi
	mov	byte [eax+28],11
	call	dword [_bbOnDebugLeaveScope]
_689:
	push	_697
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-40]
	fsub	dword [_1516]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebp-56],eax
	push	_698
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-44]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebp-60],eax
	push	_699
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,0
	setge	al
	movzx	eax,al
	cmp	eax,0
	je	_700
	mov	eax,dword [ebp-56]
	cmp	eax,20
	setle	al
	movzx	eax,al
_700:
	cmp	eax,0
	je	_702
	mov	eax,dword [ebp-60]
	cmp	eax,0
	setge	al
	movzx	eax,al
_702:
	cmp	eax,0
	je	_704
	mov	eax,dword [ebp-60]
	cmp	eax,20
	setle	al
	movzx	eax,al
_704:
	cmp	eax,0
	je	_716
	mov	ebx,dword [ebp-56]
	mov	eax,dword [_bb_sys_map]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+20]
	jb	_707
	call	_brl_blitz_ArrayBoundsError
_707:
	mov	esi,dword [ebp-60]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+24]
	jb	_709
	call	_brl_blitz_ArrayBoundsError
_709:
	mov	eax,dword [_bb_sys_map]
	add	ebx,esi
	movzx	eax,byte [eax+ebx+28]
	mov	eax,eax
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_714
	mov	ebx,dword [ebp-56]
	mov	eax,dword [_bb_sys_map]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+20]
	jb	_711
	call	_brl_blitz_ArrayBoundsError
_711:
	mov	esi,dword [ebp-60]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+24]
	jb	_713
	call	_brl_blitz_ArrayBoundsError
_713:
	mov	eax,dword [_bb_sys_map]
	add	ebx,esi
	movzx	eax,byte [eax+ebx+28]
	mov	eax,eax
	cmp	eax,22
	sete	al
	movzx	eax,al
_714:
_716:
	cmp	eax,0
	je	_718
	mov	eax,ebp
	push	eax
	push	_725
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_719
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-56]
	mov	eax,dword [_bb_sys_map]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+20]
	jb	_721
	call	_brl_blitz_ArrayBoundsError
_721:
	mov	ebx,dword [ebp-60]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+24]
	jb	_723
	call	_brl_blitz_ArrayBoundsError
_723:
	mov	eax,dword [_bb_sys_map]
	add	esi,ebx
	add	eax,esi
	mov	byte [eax+28],11
	call	dword [_bbOnDebugLeaveScope]
_718:
	push	_726
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,0
	setge	al
	movzx	eax,al
	cmp	eax,0
	je	_727
	mov	eax,dword [ebp-56]
	cmp	eax,20
	setle	al
	movzx	eax,al
_727:
	cmp	eax,0
	je	_729
	mov	eax,dword [ebp-60]
	cmp	eax,0
	setge	al
	movzx	eax,al
_729:
	cmp	eax,0
	je	_731
	mov	eax,dword [ebp-60]
	cmp	eax,20
	setle	al
	movzx	eax,al
_731:
	cmp	eax,0
	je	_733
	push	dword [ebp-24]
	call	_bb_roll
	add	esp,4
_733:
	cmp	eax,0
	je	_739
	mov	ebx,dword [ebp-56]
	mov	eax,dword [_bb_sys_map]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+20]
	jb	_736
	call	_brl_blitz_ArrayBoundsError
_736:
	mov	esi,dword [ebp-60]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+24]
	jb	_738
	call	_brl_blitz_ArrayBoundsError
_738:
	mov	eax,dword [_bb_sys_map]
	add	ebx,esi
	movzx	eax,byte [eax+ebx+28]
	mov	eax,eax
	cmp	eax,2
	sete	al
	movzx	eax,al
_739:
	cmp	eax,0
	je	_741
	mov	eax,ebp
	push	eax
	push	_748
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_742
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-56]
	mov	eax,dword [_bb_sys_map]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+20]
	jb	_744
	call	_brl_blitz_ArrayBoundsError
_744:
	mov	ebx,dword [ebp-60]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+24]
	jb	_746
	call	_brl_blitz_ArrayBoundsError
_746:
	mov	eax,dword [_bb_sys_map]
	add	esi,ebx
	add	eax,esi
	mov	byte [eax+28],11
	call	dword [_bbOnDebugLeaveScope]
_741:
	push	_749
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebp-56],eax
	push	_750
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-44]
	fsub	dword [_1517]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebp-60],eax
	push	_751
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,0
	setge	al
	movzx	eax,al
	cmp	eax,0
	je	_752
	mov	eax,dword [ebp-56]
	cmp	eax,20
	setle	al
	movzx	eax,al
_752:
	cmp	eax,0
	je	_754
	mov	eax,dword [ebp-60]
	cmp	eax,0
	setge	al
	movzx	eax,al
_754:
	cmp	eax,0
	je	_756
	mov	eax,dword [ebp-60]
	cmp	eax,20
	setle	al
	movzx	eax,al
_756:
	cmp	eax,0
	je	_768
	mov	ebx,dword [ebp-56]
	mov	eax,dword [_bb_sys_map]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+20]
	jb	_759
	call	_brl_blitz_ArrayBoundsError
_759:
	mov	esi,dword [ebp-60]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+24]
	jb	_761
	call	_brl_blitz_ArrayBoundsError
_761:
	mov	eax,dword [_bb_sys_map]
	add	ebx,esi
	movzx	eax,byte [eax+ebx+28]
	mov	eax,eax
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_766
	mov	ebx,dword [ebp-56]
	mov	eax,dword [_bb_sys_map]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+20]
	jb	_763
	call	_brl_blitz_ArrayBoundsError
_763:
	mov	esi,dword [ebp-60]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+24]
	jb	_765
	call	_brl_blitz_ArrayBoundsError
_765:
	mov	eax,dword [_bb_sys_map]
	add	ebx,esi
	movzx	eax,byte [eax+ebx+28]
	mov	eax,eax
	cmp	eax,22
	sete	al
	movzx	eax,al
_766:
_768:
	cmp	eax,0
	je	_770
	mov	eax,ebp
	push	eax
	push	_777
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_771
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-56]
	mov	eax,dword [_bb_sys_map]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+20]
	jb	_773
	call	_brl_blitz_ArrayBoundsError
_773:
	mov	ebx,dword [ebp-60]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+24]
	jb	_775
	call	_brl_blitz_ArrayBoundsError
_775:
	mov	eax,dword [_bb_sys_map]
	add	esi,ebx
	add	eax,esi
	mov	byte [eax+28],11
	call	dword [_bbOnDebugLeaveScope]
_770:
	push	_778
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,0
	setge	al
	movzx	eax,al
	cmp	eax,0
	je	_779
	mov	eax,dword [ebp-56]
	cmp	eax,20
	setle	al
	movzx	eax,al
_779:
	cmp	eax,0
	je	_781
	mov	eax,dword [ebp-60]
	cmp	eax,0
	setge	al
	movzx	eax,al
_781:
	cmp	eax,0
	je	_783
	mov	eax,dword [ebp-60]
	cmp	eax,20
	setle	al
	movzx	eax,al
_783:
	cmp	eax,0
	je	_785
	push	dword [ebp-24]
	call	_bb_roll
	add	esp,4
_785:
	cmp	eax,0
	je	_791
	mov	ebx,dword [ebp-56]
	mov	eax,dword [_bb_sys_map]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+20]
	jb	_788
	call	_brl_blitz_ArrayBoundsError
_788:
	mov	esi,dword [ebp-60]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+24]
	jb	_790
	call	_brl_blitz_ArrayBoundsError
_790:
	mov	eax,dword [_bb_sys_map]
	add	ebx,esi
	movzx	eax,byte [eax+ebx+28]
	mov	eax,eax
	cmp	eax,2
	sete	al
	movzx	eax,al
_791:
	cmp	eax,0
	je	_793
	mov	eax,ebp
	push	eax
	push	_800
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_794
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-56]
	mov	eax,dword [_bb_sys_map]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+20]
	jb	_796
	call	_brl_blitz_ArrayBoundsError
_796:
	mov	ebx,dword [ebp-60]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+24]
	jb	_798
	call	_brl_blitz_ArrayBoundsError
_798:
	mov	eax,dword [_bb_sys_map]
	add	esi,ebx
	add	eax,esi
	mov	byte [eax+28],11
	call	dword [_bbOnDebugLeaveScope]
_793:
	call	dword [_bbOnDebugLeaveScope]
_590:
	call	dword [_bbOnDebugLeaveScope]
_43:
	fld	dword [ebp-44]
	fadd	dword [_1518]
	fstp	dword [ebp-44]
_367:
	fld	dword [ebp-44]
	fld	dword [_1519]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_45
_44:
	call	dword [_bbOnDebugLeaveScope]
_40:
	fld	dword [ebp-40]
	fadd	dword [_1520]
	fstp	dword [ebp-40]
_364:
	fld	dword [ebp-40]
	fld	dword [_1521]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_42
_41:
	call	dword [_bbOnDebugLeaveScope]
_302:
	push	_807
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,0
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+20]
	jb	_809
	call	_brl_blitz_ArrayBoundsError
_809:
	mov	ebx,0
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+24]
	jb	_811
	call	_brl_blitz_ArrayBoundsError
_811:
	mov	eax,dword [_bb_sys_map]
	add	esi,ebx
	add	eax,esi
	mov	byte [eax+28],2
	push	_813
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_sys_map]
	mov	esi,dword [eax+24]
	imul	esi,20
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+20]
	jb	_815
	call	_brl_blitz_ArrayBoundsError
_815:
	mov	ebx,20
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+24]
	jb	_817
	call	_brl_blitz_ArrayBoundsError
_817:
	mov	eax,dword [_bb_sys_map]
	add	esi,ebx
	add	eax,esi
	mov	byte [eax+28],2
	push	_819
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_reset_draw
	push	_820
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	65
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_821
	mov	eax,ebp
	push	eax
	push	_823
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_822
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_V_rotate]
	fstp	dword [ebp-96]
	push	1097859072
	call	_bb_calc_move
	add	esp,4
	fld	dword [ebp-96]
	faddp	st1,st0
	fstp	dword [ebp-96]
	fld	dword [ebp-96]
	fstp	dword [_bb_V_rotate]
	call	dword [_bbOnDebugLeaveScope]
_821:
	push	_824
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	68
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_825
	mov	eax,ebp
	push	eax
	push	_827
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_826
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_V_rotate]
	fstp	dword [ebp-100]
	push	1097859072
	call	_bb_calc_move
	add	esp,4
	fld	dword [ebp-100]
	fsubrp	st1,st0
	fstp	dword [ebp-100]
	fld	dword [ebp-100]
	fstp	dword [_bb_V_rotate]
	call	dword [_bbOnDebugLeaveScope]
_825:
	push	_828
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	87
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_829
	mov	eax,ebp
	push	eax
	push	_842
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_830
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_player]
	cmp	ebx,_bbNullObject
	jne	_832
	call	_brl_blitz_NullObjectError
_832:
	mov	esi,dword [_bb_player]
	cmp	esi,_bbNullObject
	jne	_835
	call	_brl_blitz_NullObjectError
_835:
	fld	dword [esi+8]
	fstp	qword [ebp-172]
	fld	dword [_bb_V_rotate]
	fsub	dword [_1522]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fstp	qword [ebp-116]
	push	1097859072
	call	_bb_calc_move
	add	esp,4
	fld	qword [ebp-116]
	fmulp	st1,st0
	fstp	qword [ebp-116]
	fld	qword [ebp-172]
	fadd	qword [ebp-116]
	fstp	qword [ebp-172]
	fld	qword [ebp-172]
	fstp	dword [ebx+8]
	push	_836
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_player]
	cmp	ebx,_bbNullObject
	jne	_838
	call	_brl_blitz_NullObjectError
_838:
	mov	esi,dword [_bb_player]
	cmp	esi,_bbNullObject
	jne	_841
	call	_brl_blitz_NullObjectError
_841:
	fld	dword [esi+12]
	fstp	qword [ebp-164]
	fld	dword [_bb_V_rotate]
	fsub	dword [_1523]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fstp	qword [ebp-124]
	push	1097859072
	call	_bb_calc_move
	add	esp,4
	fld	qword [ebp-124]
	fmulp	st1,st0
	fstp	qword [ebp-124]
	fld	qword [ebp-164]
	fadd	qword [ebp-124]
	fstp	qword [ebp-164]
	fld	qword [ebp-164]
	fstp	dword [ebx+12]
	call	dword [_bbOnDebugLeaveScope]
_829:
	push	_843
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	83
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_844
	mov	eax,ebp
	push	eax
	push	_857
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_845
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_player]
	cmp	ebx,_bbNullObject
	jne	_847
	call	_brl_blitz_NullObjectError
_847:
	mov	esi,dword [_bb_player]
	cmp	esi,_bbNullObject
	jne	_850
	call	_brl_blitz_NullObjectError
_850:
	fld	dword [esi+8]
	fstp	qword [ebp-156]
	fld	dword [_bb_V_rotate]
	fsub	dword [_1524]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fstp	qword [ebp-132]
	push	1097859072
	call	_bb_calc_move
	add	esp,4
	fld	qword [ebp-132]
	fmulp	st1,st0
	fstp	qword [ebp-132]
	fld	qword [ebp-156]
	fsub	qword [ebp-132]
	fstp	qword [ebp-156]
	fld	qword [ebp-156]
	fstp	dword [ebx+8]
	push	_851
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_player]
	cmp	ebx,_bbNullObject
	jne	_853
	call	_brl_blitz_NullObjectError
_853:
	mov	esi,dword [_bb_player]
	cmp	esi,_bbNullObject
	jne	_856
	call	_brl_blitz_NullObjectError
_856:
	fld	dword [esi+12]
	fstp	qword [ebp-148]
	fld	dword [_bb_V_rotate]
	fsub	dword [_1525]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fstp	qword [ebp-140]
	push	1097859072
	call	_bb_calc_move
	add	esp,4
	fld	qword [ebp-140]
	fmulp	st1,st0
	fstp	qword [ebp-140]
	fld	qword [ebp-148]
	fsub	qword [ebp-140]
	fstp	qword [ebp-148]
	fld	qword [ebp-148]
	fstp	dword [ebx+12]
	call	dword [_bbOnDebugLeaveScope]
_844:
	push	_858
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	69
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_859
	mov	eax,ebp
	push	eax
	push	_883
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_860
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_player]
	cmp	ebx,_bbNullObject
	jne	_862
	call	_brl_blitz_NullObjectError
_862:
	fld	dword [ebx+8]
	fchs
	fadd	dword [_1526]
	fdiv	dword [_1527]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebp-64],eax
	push	_864
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_player]
	cmp	ebx,_bbNullObject
	jne	_866
	call	_brl_blitz_NullObjectError
_866:
	fld	dword [ebx+12]
	fadd	dword [_1528]
	fdiv	dword [_1529]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebp-68],eax
	push	_868
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-64]
	cmp	eax,0
	setge	al
	movzx	eax,al
	cmp	eax,0
	je	_869
	mov	eax,dword [ebp-64]
	cmp	eax,20
	setle	al
	movzx	eax,al
_869:
	cmp	eax,0
	je	_871
	mov	eax,dword [ebp-68]
	cmp	eax,0
	setge	al
	movzx	eax,al
_871:
	cmp	eax,0
	je	_873
	mov	eax,dword [ebp-68]
	cmp	eax,20
	setle	al
	movzx	eax,al
_873:
	cmp	eax,0
	je	_875
	mov	eax,ebp
	push	eax
	push	_882
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_876
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-64]
	mov	eax,dword [_bb_sys_map]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+20]
	jb	_878
	call	_brl_blitz_ArrayBoundsError
_878:
	mov	ebx,dword [ebp-68]
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+24]
	jb	_880
	call	_brl_blitz_ArrayBoundsError
_880:
	mov	eax,dword [_bb_sys_map]
	add	esi,ebx
	add	eax,esi
	mov	byte [eax+28],11
	call	dword [_bbOnDebugLeaveScope]
_875:
	call	dword [_bbOnDebugLeaveScope]
_859:
	push	_884
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_V_rotate]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_885
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_bb_player]
	cmp	esi,_bbNullObject
	jne	_887
	call	_brl_blitz_NullObjectError
_887:
	mov	ebx,dword [_bb_player]
	cmp	ebx,_bbNullObject
	jne	_889
	call	_brl_blitz_NullObjectError
_889:
	fld	dword [ebx+12]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [esi+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbATan2
	add	esp,16
	fchs
	fld	qword [_1530]
	faddp	st1,st0
	fstp	dword [ebp-4]
	push	_891
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_bb_player]
	cmp	esi,_bbNullObject
	jne	_893
	call	_brl_blitz_NullObjectError
_893:
	mov	ebx,dword [_bb_player]
	cmp	ebx,_bbNullObject
	jne	_895
	call	_brl_blitz_NullObjectError
_895:
	fld	qword [_1531]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [esi+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-108]
	fld	qword [_1532]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebx+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-108]
	faddp	st1,st0
	fstp	qword [ebp-108]
	fld	qword [ebp-108]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fstp	dword [ebp-8]
	push	_897
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_V_rotate]
	fsub	dword [ebp-4]
	fsub	dword [_1533]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	dword [ebp-8]
	fmulp	st1,st0
	fstp	dword [ebp-12]
	push	_899
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_V_rotate]
	fsub	dword [ebp-4]
	fsub	dword [_1534]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	dword [ebp-8]
	fmulp	st1,st0
	fstp	dword [ebp-16]
	push	_901
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1045220557
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_902
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbEmptyArray
	push	_904
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-72]
	fld	dword [_1535]
	fstp	dword [ebp-72]
	jmp	_906
_48:
	mov	eax,ebp
	push	eax
	push	_914
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_907
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-76]
	fld	dword [_1536]
	fstp	dword [ebp-76]
	jmp	_909
_51:
	mov	eax,ebp
	push	eax
	push	_913
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_910
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	8
	push	_123
	call	_bbArrayNew1D
	add	esp,8
	fld	dword [ebp-72]
	fmul	dword [_1537]
	fstp	dword [eax+24]
	fld	dword [ebp-76]
	fmul	dword [_1538]
	fstp	dword [eax+28]
	fld	dword [ebp-72]
	fmul	dword [_1539]
	fadd	dword [_1540]
	fstp	dword [eax+32]
	fld	dword [ebp-76]
	fmul	dword [_1541]
	fstp	dword [eax+36]
	fld	dword [ebp-72]
	fmul	dword [_1542]
	fadd	dword [_1543]
	fstp	dword [eax+40]
	fld	dword [ebp-76]
	fmul	dword [_1544]
	fadd	dword [_1545]
	fstp	dword [eax+44]
	fld	dword [ebp-72]
	fmul	dword [_1546]
	fstp	dword [eax+48]
	fld	dword [ebp-76]
	fmul	dword [_1547]
	fadd	dword [_1548]
	fstp	dword [eax+52]
	mov	dword [ebp-20],eax
	push	_912
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbEmptyArray
	push	0
	fld	dword [_bb_screeny]
	fsub	dword [_bb_split20y]
	fsub	dword [ebp-16]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_bb_pointx]
	fsub	dword [ebp-12]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebp-20]
	push	dword [_bb_tex1]
	call	_bb_DrawPolyImage
	add	esp,24
	call	dword [_bbOnDebugLeaveScope]
_49:
	fld	dword [ebp-76]
	fadd	dword [_1549]
	fstp	dword [ebp-76]
_909:
	fld	dword [ebp-76]
	fld	dword [_1550]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_51
_50:
	call	dword [_bbOnDebugLeaveScope]
_46:
	fld	dword [ebp-72]
	fadd	dword [_1551]
	fstp	dword [ebp-72]
_906:
	fld	dword [ebp-72]
	fld	dword [_1552]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_48
_47:
	push	_915
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_916
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	4
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_917
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_918
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-80]
	fld	dword [_1553]
	fstp	dword [ebp-80]
	jmp	_920
_54:
	mov	eax,ebp
	push	eax
	push	_969
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_921
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_1554]
	fstp	qword [ebp-92]
	fld	dword [ebp-80]
	fmul	dword [_1555]
	mov	eax,dword [_bb_time]
	mov	dword [ebp+-176],eax
	fild	dword [ebp+-176]
	fdiv	dword [_1556]
	faddp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld1
	faddp	st1,st0
	fld	qword [_1557]
	fdivp	st1,st0
	fld	qword [ebp-92]
	faddp	st1,st0
	fstp	qword [ebp-92]
	fld	qword [ebp-92]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_922
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-84]
	fld	dword [_1558]
	fstp	dword [ebp-84]
	jmp	_924
_57:
	mov	eax,ebp
	push	eax
	push	_968
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_925
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-80]
	fadd	dword [_1559]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	esi,eax
	mov	eax,dword [_bb_sys_map]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+20]
	jb	_927
	call	_brl_blitz_ArrayBoundsError
_927:
	fld	dword [ebp-84]
	fadd	dword [_1560]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	ebx,eax
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+24]
	jb	_929
	call	_brl_blitz_ArrayBoundsError
_929:
	mov	eax,dword [_bb_sys_map]
	add	esi,ebx
	movzx	eax,byte [eax+esi+28]
	mov	eax,eax
	cmp	eax,0
	jne	_930
	mov	eax,ebp
	push	eax
	push	_932
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_931
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_930:
	push	_933
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-80]
	fadd	dword [_1561]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	esi,eax
	mov	eax,dword [_bb_sys_map]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+20]
	jb	_935
	call	_brl_blitz_ArrayBoundsError
_935:
	fld	dword [ebp-84]
	fadd	dword [_1562]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	ebx,eax
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+24]
	jb	_937
	call	_brl_blitz_ArrayBoundsError
_937:
	mov	eax,dword [_bb_sys_map]
	add	esi,ebx
	movzx	eax,byte [eax+esi+28]
	mov	eax,eax
	cmp	eax,1
	jne	_938
	mov	eax,ebp
	push	eax
	push	_940
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_939
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	255
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_938:
	push	_941
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-80]
	fadd	dword [_1563]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	esi,eax
	mov	eax,dword [_bb_sys_map]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+20]
	jb	_943
	call	_brl_blitz_ArrayBoundsError
_943:
	fld	dword [ebp-84]
	fadd	dword [_1564]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	ebx,eax
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+24]
	jb	_945
	call	_brl_blitz_ArrayBoundsError
_945:
	mov	eax,dword [_bb_sys_map]
	add	esi,ebx
	movzx	eax,byte [eax+esi+28]
	mov	eax,eax
	cmp	eax,2
	jne	_946
	mov	eax,ebp
	push	eax
	push	_948
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_947
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_946:
	push	_949
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-80]
	fadd	dword [_1565]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	esi,eax
	mov	eax,dword [_bb_sys_map]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+20]
	jb	_951
	call	_brl_blitz_ArrayBoundsError
_951:
	fld	dword [ebp-84]
	fadd	dword [_1566]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	ebx,eax
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+24]
	jb	_953
	call	_brl_blitz_ArrayBoundsError
_953:
	mov	eax,dword [_bb_sys_map]
	add	esi,ebx
	movzx	eax,byte [eax+esi+28]
	mov	eax,eax
	cmp	eax,11
	jne	_954
	mov	eax,ebp
	push	eax
	push	_956
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_955
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	125
	push	255
	push	125
	call	_brl_max2d_SetColor
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_954:
	push	_957
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-80]
	fadd	dword [_1567]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	esi,eax
	mov	eax,dword [_bb_sys_map]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_sys_map]
	cmp	esi,dword [eax+20]
	jb	_959
	call	_brl_blitz_ArrayBoundsError
_959:
	fld	dword [ebp-84]
	fadd	dword [_1568]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	ebx,eax
	mov	eax,dword [_bb_sys_map]
	cmp	ebx,dword [eax+24]
	jb	_961
	call	_brl_blitz_ArrayBoundsError
_961:
	mov	eax,dword [_bb_sys_map]
	add	esi,ebx
	movzx	eax,byte [eax+esi+28]
	mov	eax,eax
	cmp	eax,22
	jne	_962
	mov	eax,ebp
	push	eax
	push	_964
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_963
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	125
	push	125
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_962:
	push	_965
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	8
	push	_123
	call	_bbArrayNew1D
	add	esp,8
	fld	dword [ebp-80]
	fmul	dword [_1569]
	fstp	dword [eax+24]
	fld	dword [ebp-84]
	fmul	dword [_1570]
	fstp	dword [eax+28]
	fld	dword [ebp-80]
	fmul	dword [_1571]
	fadd	dword [_1572]
	fstp	dword [eax+32]
	fld	dword [ebp-84]
	fmul	dword [_1573]
	fstp	dword [eax+36]
	fld	dword [ebp-80]
	fmul	dword [_1574]
	fadd	dword [_1575]
	fstp	dword [eax+40]
	fld	dword [ebp-84]
	fmul	dword [_1576]
	fadd	dword [_1577]
	fstp	dword [eax+44]
	fld	dword [ebp-80]
	fmul	dword [_1578]
	fstp	dword [eax+48]
	fld	dword [ebp-84]
	fmul	dword [_1579]
	fadd	dword [_1580]
	fstp	dword [eax+52]
	mov	dword [ebp-20],eax
	push	_967
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbEmptyArray
	push	0
	fld	dword [_bb_screeny]
	fsub	dword [_bb_split20y]
	fsub	dword [ebp-16]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_bb_pointx]
	fsub	dword [ebp-12]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebp-20]
	push	dword [_bb_tex2]
	call	_bb_DrawPolyImage
	add	esp,24
	call	dword [_bbOnDebugLeaveScope]
_55:
	fld	dword [ebp-84]
	fadd	dword [_1581]
	fstp	dword [ebp-84]
_924:
	fld	dword [ebp-84]
	fld	dword [_1582]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_57
_56:
	call	dword [_bbOnDebugLeaveScope]
_52:
	fld	dword [ebp-80]
	fadd	dword [_1583]
	fstp	dword [ebp-80]
_920:
	fld	dword [ebp-80]
	fld	dword [_1584]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_54
_53:
	push	_970
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	3
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_971
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_reset_draw
	push	_972
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1092616192
	push	1092616192
	fld	dword [_bb_screeny]
	fsub	dword [_bb_split20y]
	fsub	dword [_1585]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_bb_pointx]
	fsub	dword [_1586]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_973
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_V_rotate]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_974
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	fld	dword [_bb_screeny]
	fsub	dword [_1587]
	sub	esp,4
	fstp	dword [esp]
	push	1123024896
	push	dword [_bb_pfeil1]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_975
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_reset_draw
	push	_976
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1092616192
	push	1092616192
	push	dword [_bb_msc]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_59
	fld	dword [_1588]
	mov	eax,dword [_bb_msc]
	mov	dword [ebp+-176],eax
	fild	dword [ebp+-176]
	fdivp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_58
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_977
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1112014848
	push	1092616192
	push	dword [_bb_flops]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_60
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_978
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1114636288
	push	1092616192
	push	dword [_bb_eflops]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_61
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_979
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1116471296
	push	1092616192
	mov	eax,dword [_bb_flops]
	mov	dword [ebp+-176],eax
	fild	dword [ebp+-176]
	mov	eax,dword [_bb_eflops]
	mov	dword [ebp+-176],eax
	fild	dword [ebp+-176]
	fdivp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_62
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_980
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1117782016
	push	1092616192
	mov	eax,dword [_bb_eflops]
	mov	dword [ebp+-176],eax
	fild	dword [ebp+-176]
	mov	eax,dword [_bb_flops]
	mov	dword [ebp+-176],eax
	fild	dword [ebp+-176]
	fdivp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_63
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_981
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_graphics_Flip
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_31:
	push	27
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	jne	_288
	call	_brl_polledinput_AppTerminate
_288:
	cmp	eax,0
	je	_33
_32:
	push	_989
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	push	_990
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	jmp	_125
_125:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_6c401696_39c8_451b_8d03_5114a4e3cf74_3_0_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_1031
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_18
	push	ebp
	push	_1030
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_128
_128:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_6c401696_39c8_451b_8d03_5114a4e3cf74_3_0_Delete:
	push	ebp
	mov	ebp,esp
_131:
	mov	eax,0
	jmp	_1034
_1034:
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_blide_bg6c401696_39c8_451b_8d03_5114a4e3cf74_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_1036
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_19
	push	ebp
	push	_1035
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_134
_134:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_blide_bg6c401696_39c8_451b_8d03_5114a4e3cf74_Delete:
	push	ebp
	mov	ebp,esp
_137:
	mov	eax,0
	jmp	_1038
_1038:
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_My_6c401696_39c8_451b_8d03_5114a4e3cf74_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_1040
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_25
	push	ebp
	push	_1039
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_140
_140:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_My_6c401696_39c8_451b_8d03_5114a4e3cf74_Delete:
	push	ebp
	mov	ebp,esp
_143:
	mov	eax,0
	jmp	_1041
_1041:
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
	push	_1043
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
	push	ebp
	push	_1042
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_146
_146:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tplayer_Delete:
	push	ebp
	mov	ebp,esp
_149:
	mov	eax,0
	jmp	_1044
_1044:
	mov	esp,ebp
	pop	ebp
	ret
_bb_roll:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	push	ebp
	push	_1053
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1045
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_1046
	push	ebp
	push	_1051
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1047
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1868]
	fdiv	dword [ebp-4]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	push	0
	call	_brl_random_Rand
	add	esp,8
	cmp	eax,0
	jne	_1048
	push	ebp
	push	_1050
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1049
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-8],1
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_152
_1048:
	call	dword [_bbOnDebugLeaveScope]
_1046:
	push	_1052
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-8],0
	jmp	_152
_152:
	call	dword [_bbOnDebugLeaveScope]
	movzx	eax,byte [ebp-8]
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
	push	_1083
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1055
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-24]
	push	_1058
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-28]
	push	_1060
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	eax,dword [ebp-28]
	push	eax
	lea	eax,dword [ebp-24]
	push	eax
	call	_brl_max2d_GetScale
	add	esp,8
	push	_1061
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-32]
	push	_1063
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-36]
	push	_1065
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	eax,dword [ebp-36]
	push	eax
	lea	eax,dword [ebp-32]
	push	eax
	call	_brl_max2d_GetHandle
	add	esp,8
	push	_1066
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1068
	call	_brl_blitz_NullObjectError
_1068:
	fld	dword [ebp-16]
	mov	eax,dword [ebx+8]
	mov	dword [ebp+-80],eax
	fild	dword [ebp+-80]
	fdivp	st1,st0
	fstp	dword [ebp-40]
	push	_1070
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1072
	call	_brl_blitz_NullObjectError
_1072:
	fld	dword [ebp-20]
	mov	eax,dword [ebx+12]
	mov	dword [ebp+-80],eax
	fild	dword [ebp+-80]
	fdivp	st1,st0
	fstp	dword [ebp-44]
	push	_1074
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
	push	_1075
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_1076
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_1875]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-60]
	fld	qword [_1876]
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
	push	_1078
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
	fld	qword [_1877]
	faddp	st1,st0
	fstp	dword [ebp-52]
	push	_1080
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
	push	_1081
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-28]
	push	dword [ebp-24]
	call	_brl_max2d_SetScale
	add	esp,8
	push	_1082
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-36]
	push	dword [ebp-32]
	call	_brl_max2d_SetHandle
	add	esp,8
	mov	ebx,0
	jmp	_159
_159:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
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
	push	_1110
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1097
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	call	_brl_polledinput_MouseX
	cmp	ebx,eax
	setl	al
	movzx	eax,al
	cmp	eax,0
	je	_1098
	mov	ebx,dword [ebp-4]
	add	ebx,dword [ebp-12]
	call	_brl_polledinput_MouseX
	cmp	ebx,eax
	setg	al
	movzx	eax,al
_1098:
	cmp	eax,0
	je	_1100
	mov	ebx,dword [ebp-8]
	call	_brl_polledinput_MouseY
	cmp	ebx,eax
	setl	al
	movzx	eax,al
_1100:
	cmp	eax,0
	je	_1102
	mov	ebx,dword [ebp-8]
	add	ebx,dword [ebp-16]
	call	_brl_polledinput_MouseY
	cmp	ebx,eax
	setg	al
	movzx	eax,al
_1102:
	cmp	eax,0
	je	_1104
	push	ebp
	push	_1106
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1105
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-20],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_165
_1104:
	push	ebp
	push	_1109
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1108
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-20],0
	call	dword [_bbOnDebugLeaveScope]
	jmp	_165
_165:
	call	dword [_bbOnDebugLeaveScope]
	movzx	eax,byte [ebp-20]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_reset_draw:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	ebp
	push	_1120
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1114
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_1115
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_1116
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_1117
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_1118
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	_1119
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	call	_brl_max2d_SetOrigin
	add	esp,8
	mov	ebx,0
	jmp	_167
_167:
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
	push	_1123
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1122
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	mov	eax,dword [_bb_msc]
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	fmulp	st1,st0
	fdiv	dword [_1892]
	fstp	dword [ebp-8]
	jmp	_170
_170:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-8]
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
	push	_1152
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1126
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fsub	dword [ebp-8]
	fadd	dword [_1897]
	fstp	dword [ebp-16]
	push	_1128
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_64
_66:
	push	ebp
	push	_1130
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1129
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fadd	dword [_1898]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
_64:
	fld	dword [ebp-16]
	fld	dword [_1899]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_66
_65:
	push	_1131
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_67
_69:
	push	ebp
	push	_1133
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1132
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fsub	dword [_1900]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
_67:
	fld	dword [ebp-16]
	fld	dword [_1901]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_69
_68:
	push	_1134
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-20]
	mov	dword [ebp-24],0
	push	_1137
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
	jne	_1138
	push	ebp
	push	_1141
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1139
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fchs
	fstp	dword [ebp-20]
	push	_1140
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],1
	call	dword [_bbOnDebugLeaveScope]
_1138:
	push	_1142
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
	jne	_1143
	push	ebp
	push	_1146
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1144
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fstp	dword [ebp-20]
	push	_1145
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],1
	call	dword [_bbOnDebugLeaveScope]
_1143:
	push	_1147
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-24],0
	jne	_1148
	push	ebp
	push	_1150
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1149
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fchs
	fstp	dword [ebp-20]
	call	dword [_bbOnDebugLeaveScope]
_1148:
	push	_1151
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-20]
	fstp	dword [ebp-28]
	jmp	_175
_175:
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
	push	_1184
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1160
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fsub	dword [ebp-8]
	fadd	dword [_1909]
	fstp	dword [ebp-16]
	push	_1162
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_70
_72:
	push	ebp
	push	_1164
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1163
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fadd	dword [_1910]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
_70:
	fld	dword [ebp-16]
	fld	dword [_1911]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_72
_71:
	push	_1165
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_73
_75:
	push	ebp
	push	_1167
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1166
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fsub	dword [_1912]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
_73:
	fld	dword [ebp-16]
	fld	dword [_1913]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_75
_74:
	push	_1168
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-20]
	mov	dword [ebp-24],0
	push	_1171
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
	jne	_1172
	push	ebp
	push	_1174
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1173
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],1
	call	dword [_bbOnDebugLeaveScope]
_1172:
	push	_1175
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
	jne	_1176
	push	ebp
	push	_1178
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1177
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],1
	call	dword [_bbOnDebugLeaveScope]
_1176:
	push	_1179
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-24],0
	jne	_1180
	push	ebp
	push	_1182
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1181
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-20]
	call	dword [_bbOnDebugLeaveScope]
_1180:
	push	_1183
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-20]
	fstp	dword [ebp-28]
	jmp	_180
_180:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-28]
	mov	esp,ebp
	pop	ebp
	ret
_bb_color:
	push	ebp
	mov	ebp,esp
	sub	esp,24
	push	ebx
	movzx	eax,byte [ebp+8]
	mov	eax,eax
	mov	byte [ebp-4],al
	movzx	eax,byte [ebp+12]
	mov	eax,eax
	mov	byte [ebp-8],al
	movzx	eax,byte [ebp+16]
	mov	eax,eax
	mov	byte [ebp-12],al
	movzx	eax,byte [ebp+20]
	mov	eax,eax
	mov	byte [ebp-16],al
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	push	ebp
	push	_1196
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1187
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	push	_1189
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	eax,dword [ebp-20]
	mov	dword [ebp-24],eax
	push	_1191
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-24]
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	mov	byte [edx],al
	push	_1192
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-24]
	movzx	eax,byte [ebp-8]
	mov	eax,eax
	mov	byte [edx+1],al
	push	_1193
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-24]
	movzx	eax,byte [ebp-12]
	mov	eax,eax
	mov	byte [edx+2],al
	push	_1194
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-24]
	movzx	eax,byte [ebp-16]
	mov	eax,eax
	mov	byte [edx+3],al
	push	_1195
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	jmp	_186
_186:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_DrawBox:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	fld	dword [ebp+20]
	fstp	dword [ebp-16]
	push	ebp
	push	_1210
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1206
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-16]
	push	1073741824
	push	dword [ebp-8]
	push	dword [ebp-4]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_1207
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1073741824
	push	dword [ebp-12]
	push	dword [ebp-8]
	push	dword [ebp-4]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_1208
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-16]
	push	1073741824
	push	dword [ebp-8]
	fld	dword [ebp-4]
	fadd	dword [ebp-12]
	fsub	dword [_1924]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_1209
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1073741824
	push	dword [ebp-12]
	fld	dword [ebp-8]
	fadd	dword [ebp-16]
	fsub	dword [_1925]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebp-4]
	call	_brl_max2d_DrawRect
	add	esp,16
	mov	ebx,0
	jmp	_192
_192:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_LinesInterselect:
	push	ebp
	mov	ebp,esp
	sub	esp,64
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
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
	fld	dword [ebp+36]
	fstp	dword [ebp-32]
	fldz
	fstp	dword [ebp-36]
	fldz
	fstp	dword [ebp-40]
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
	push	ebp
	push	_1248
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1213
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-8]
	fsub	dword [ebp-24]
	fld	dword [ebp-28]
	fsub	dword [ebp-20]
	fmulp	st1,st0
	fld	dword [ebp-4]
	fsub	dword [ebp-20]
	fld	dword [ebp-32]
	fsub	dword [ebp-24]
	fmulp	st1,st0
	fsubp	st1,st0
	fstp	dword [ebp-36]
	push	_1215
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fsub	dword [ebp-4]
	fld	dword [ebp-32]
	fsub	dword [ebp-24]
	fmulp	st1,st0
	fld	dword [ebp-16]
	fsub	dword [ebp-8]
	fld	dword [ebp-28]
	fsub	dword [ebp-20]
	fmulp	st1,st0
	fsubp	st1,st0
	fstp	dword [ebp-40]
	push	_1217
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-40]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_1218
	push	ebp
	push	_1220
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1219
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-44],0
	call	dword [_bbOnDebugLeaveScope]
	jmp	_202
_1218:
	push	ebp
	push	_1242
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1222
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-8]
	fsub	dword [ebp-24]
	fld	dword [ebp-12]
	fsub	dword [ebp-4]
	fmulp	st1,st0
	fld	dword [ebp-4]
	fsub	dword [ebp-20]
	fld	dword [ebp-16]
	fsub	dword [ebp-8]
	fmulp	st1,st0
	fsubp	st1,st0
	fstp	dword [ebp-48]
	push	_1224
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-36]
	fdiv	dword [ebp-40]
	fstp	dword [ebp-52]
	push	_1226
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-48]
	fdiv	dword [ebp-40]
	fstp	dword [ebp-56]
	push	_1228
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fld	dword [ebp-52]
	fld	dword [ebp-12]
	fsub	dword [ebp-4]
	fmulp	st1,st0
	faddp	st1,st0
	fstp	dword [ebp-60]
	push	_1230
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-8]
	fld	dword [ebp-52]
	fld	dword [ebp-16]
	fsub	dword [ebp-8]
	fmulp	st1,st0
	faddp	st1,st0
	fstp	dword [ebp-64]
	push	_1232
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-52]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	je	_1233
	fld	dword [ebp-52]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
_1233:
	cmp	eax,0
	je	_1235
	fld	dword [ebp-56]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
_1235:
	cmp	eax,0
	je	_1237
	fld	dword [ebp-56]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
_1237:
	cmp	eax,0
	je	_1239
	push	ebp
	push	_1241
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1240
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-44],1
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_202
_1239:
	call	dword [_bbOnDebugLeaveScope]
_1221:
	mov	byte [ebp-44],0
	jmp	_202
_202:
	call	dword [_bbOnDebugLeaveScope]
	movzx	eax,byte [ebp-44]
	mov	esp,ebp
	pop	ebp
	ret
_bb_init_boostMax2D:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_1266
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1260
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	inc	dword [ebx+4]
	mov	eax,dword [_bb_boostMax2D_Driver]
	dec	dword [eax+4]
	jnz	_1264
	push	eax
	call	_bbGCFree
	add	esp,4
_1264:
	mov	dword [_bb_boostMax2D_Driver],ebx
	push	_1265
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_boostMax2D_active],1
	mov	ebx,0
	jmp	_205
_205:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_DrawPolyImage:
	push	ebp
	mov	ebp,esp
	sub	esp,88
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	fld	dword [ebp+20]
	fstp	dword [ebp-16]
	mov	eax,dword [ebp+24]
	mov	dword [ebp-20],eax
	mov	eax,dword [ebp+28]
	mov	dword [ebp-24],eax
	mov	dword [ebp-28],_bbNullObject
	mov	dword [ebp-32],_bbNullObject
	fldz
	fstp	dword [ebp-36]
	fldz
	fstp	dword [ebp-40]
	mov	dword [ebp-44],0
	mov	dword [ebp-48],0
	mov	dword [ebp-52],_bbEmptyArray
	mov	eax,ebp
	push	eax
	push	_1471
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1269
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_boostMax2D_Driver]
	cmp	ebx,_bbNullObject
	jne	_1271
	call	_brl_blitz_NullObjectError
_1271:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	cmp	eax,0
	jne	_1272
	mov	eax,ebp
	push	eax
	push	_1274
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1273
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	call	dword [_bbOnDebugLeaveScope]
	jmp	_213
_1272:
	push	_1275
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_boostMax2D_active],0
	jne	_1276
	mov	eax,ebp
	push	eax
	push	_1278
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1277
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_80
	call	_brl_blitz_RuntimeError
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1276:
	push	_1279
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1281
	call	_brl_blitz_NullObjectError
_1281:
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-28],eax
	push	_1283
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1285
	call	_brl_blitz_NullObjectError
_1285:
	mov	esi,dword [ebx+44]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1288
	call	_brl_blitz_ArrayBoundsError
_1288:
	push	_brl_d3d7max2d_TD3D7ImageFrame
	push	dword [esi+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-32],eax
	push	_1290
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1292
	call	_brl_blitz_NullObjectError
_1292:
	push	dword [ebx+8]
	call	_76
	add	esp,4
	mov	dword [ebp+-88],eax
	fild	dword [ebp+-88]
	fstp	dword [ebp-36]
	push	_1294
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1296
	call	_brl_blitz_NullObjectError
_1296:
	push	dword [ebx+12]
	call	_76
	add	esp,4
	mov	dword [ebp+-88],eax
	fild	dword [ebp+-88]
	fstp	dword [ebp-40]
	push	_1298
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],0
	push	_1300
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],0
	push	_1302
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	24
	push	_1303
	call	_bbArrayNew1D
	add	esp,8
	mov	dword [ebp-52],eax
	push	_1305
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,4
	mov	eax,dword [ebp-52]
	cmp	ebx,dword [eax+20]
	jb	_1307
	call	_brl_blitz_ArrayBoundsError
_1307:
	mov	eax,dword [ebp-52]
	shl	ebx,2
	add	eax,ebx
	fldz
	fstp	dword [eax+24]
	push	_1309
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,5
	mov	eax,dword [ebp-52]
	cmp	ebx,dword [eax+20]
	jb	_1311
	call	_brl_blitz_ArrayBoundsError
_1311:
	mov	eax,dword [ebp-52]
	shl	ebx,2
	add	eax,ebx
	fldz
	fstp	dword [eax+24]
	push	_1313
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,10
	mov	eax,dword [ebp-52]
	cmp	esi,dword [eax+20]
	jb	_1315
	call	_brl_blitz_ArrayBoundsError
_1315:
	mov	ebx,dword [ebp-52]
	shl	esi,2
	add	ebx,esi
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1318
	call	_brl_blitz_NullObjectError
_1318:
	mov	eax,dword [esi+8]
	mov	dword [ebp+-88],eax
	fild	dword [ebp+-88]
	fdiv	dword [ebp-36]
	fstp	dword [ebx+24]
	push	_1319
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,11
	mov	eax,dword [ebp-52]
	cmp	ebx,dword [eax+20]
	jb	_1321
	call	_brl_blitz_ArrayBoundsError
_1321:
	mov	eax,dword [ebp-52]
	shl	ebx,2
	add	eax,ebx
	fldz
	fstp	dword [eax+24]
	push	_1323
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,16
	mov	eax,dword [ebp-52]
	cmp	esi,dword [eax+20]
	jb	_1325
	call	_brl_blitz_ArrayBoundsError
_1325:
	mov	ebx,dword [ebp-52]
	shl	esi,2
	add	ebx,esi
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1328
	call	_brl_blitz_NullObjectError
_1328:
	mov	eax,dword [esi+8]
	mov	dword [ebp+-88],eax
	fild	dword [ebp+-88]
	fdiv	dword [ebp-36]
	fstp	dword [ebx+24]
	push	_1329
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,17
	mov	eax,dword [ebp-52]
	cmp	esi,dword [eax+20]
	jb	_1331
	call	_brl_blitz_ArrayBoundsError
_1331:
	mov	ebx,dword [ebp-52]
	shl	esi,2
	add	ebx,esi
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1334
	call	_brl_blitz_NullObjectError
_1334:
	mov	eax,dword [esi+12]
	mov	dword [ebp+-88],eax
	fild	dword [ebp+-88]
	fdiv	dword [ebp-40]
	fstp	dword [ebx+24]
	push	_1335
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,22
	mov	eax,dword [ebp-52]
	cmp	ebx,dword [eax+20]
	jb	_1337
	call	_brl_blitz_ArrayBoundsError
_1337:
	mov	eax,dword [ebp-52]
	shl	ebx,2
	add	eax,ebx
	fldz
	fstp	dword [eax+24]
	push	_1339
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,23
	mov	eax,dword [ebp-52]
	cmp	esi,dword [eax+20]
	jb	_1341
	call	_brl_blitz_ArrayBoundsError
_1341:
	mov	ebx,dword [ebp-52]
	shl	esi,2
	add	ebx,esi
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1344
	call	_brl_blitz_NullObjectError
_1344:
	mov	eax,dword [esi+12]
	mov	dword [ebp+-88],eax
	fild	dword [ebp+-88]
	fdiv	dword [ebp-40]
	fstp	dword [ebx+24]
	push	_1345
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	lea	eax,dword [eax+24]
	mov	dword [ebp-44],eax
	push	_1346
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-44]
	mov	dword [ebp-48],eax
	push	_1347
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],0
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-56],eax
	jb	_1349
	call	_brl_blitz_ArrayBoundsError
_1349:
	mov	edi,dword [_bb_boostMax2D_Driver]
	cmp	edi,_bbNullObject
	jne	_1351
	call	_brl_blitz_NullObjectError
_1351:
	mov	esi,1
	mov	eax,dword [ebp-8]
	cmp	esi,dword [eax+20]
	jb	_1353
	call	_brl_blitz_ArrayBoundsError
_1353:
	mov	ebx,dword [_bb_boostMax2D_Driver]
	cmp	ebx,_bbNullObject
	jne	_1355
	call	_brl_blitz_NullObjectError
_1355:
	mov	ecx,dword [ebp-44]
	mov	edx,dword [ebp-8]
	mov	eax,dword [ebp-56]
	fld	dword [edx+eax*4+24]
	fmul	dword [edi+28]
	mov	eax,dword [ebp-8]
	fld	dword [eax+esi*4+24]
	fmul	dword [ebx+32]
	faddp	st1,st0
	fadd	dword [ebp-12]
	fstp	dword [ecx]
	push	_1356
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],0
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-60],eax
	jb	_1358
	call	_brl_blitz_ArrayBoundsError
_1358:
	mov	edi,dword [_bb_boostMax2D_Driver]
	cmp	edi,_bbNullObject
	jne	_1360
	call	_brl_blitz_NullObjectError
_1360:
	mov	esi,1
	mov	eax,dword [ebp-8]
	cmp	esi,dword [eax+20]
	jb	_1362
	call	_brl_blitz_ArrayBoundsError
_1362:
	mov	ebx,dword [_bb_boostMax2D_Driver]
	cmp	ebx,_bbNullObject
	jne	_1364
	call	_brl_blitz_NullObjectError
_1364:
	mov	ecx,dword [ebp-44]
	mov	edx,dword [ebp-8]
	mov	eax,dword [ebp-60]
	fld	dword [edx+eax*4+24]
	fmul	dword [edi+36]
	mov	eax,dword [ebp-8]
	fld	dword [eax+esi*4+24]
	fmul	dword [ebx+40]
	faddp	st1,st0
	fadd	dword [ebp-16]
	fstp	dword [ecx+4]
	push	_1365
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	cmp	dword [eax+16],0
	je	_1366
	mov	eax,ebp
	push	eax
	push	_1370
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1367
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1369
	call	_brl_blitz_ArrayBoundsError
_1369:
	mov	edx,dword [ebp-48]
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax+ebx*4+24]
	mov	dword [edx+12],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1371
_1366:
	mov	eax,ebp
	push	eax
	push	_1375
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1372
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_boostMax2D_Driver]
	cmp	ebx,_bbNullObject
	jne	_1374
	call	_brl_blitz_NullObjectError
_1374:
	mov	edx,dword [ebp-48]
	mov	eax,dword [ebx+20]
	mov	dword [edx+12],eax
	call	dword [_bbOnDebugLeaveScope]
_1371:
	push	_1376
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-64],2
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-64],eax
	jb	_1378
	call	_brl_blitz_ArrayBoundsError
_1378:
	mov	edi,dword [_bb_boostMax2D_Driver]
	cmp	edi,_bbNullObject
	jne	_1380
	call	_brl_blitz_NullObjectError
_1380:
	mov	esi,3
	mov	eax,dword [ebp-8]
	cmp	esi,dword [eax+20]
	jb	_1382
	call	_brl_blitz_ArrayBoundsError
_1382:
	mov	ebx,dword [_bb_boostMax2D_Driver]
	cmp	ebx,_bbNullObject
	jne	_1384
	call	_brl_blitz_NullObjectError
_1384:
	mov	ecx,dword [ebp-44]
	mov	edx,dword [ebp-8]
	mov	eax,dword [ebp-64]
	fld	dword [edx+eax*4+24]
	fmul	dword [edi+28]
	mov	eax,dword [ebp-8]
	fld	dword [eax+esi*4+24]
	fmul	dword [ebx+32]
	faddp	st1,st0
	fadd	dword [ebp-12]
	fstp	dword [ecx+24]
	push	_1385
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-68],2
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-68],eax
	jb	_1387
	call	_brl_blitz_ArrayBoundsError
_1387:
	mov	edi,dword [_bb_boostMax2D_Driver]
	cmp	edi,_bbNullObject
	jne	_1389
	call	_brl_blitz_NullObjectError
_1389:
	mov	esi,3
	mov	eax,dword [ebp-8]
	cmp	esi,dword [eax+20]
	jb	_1391
	call	_brl_blitz_ArrayBoundsError
_1391:
	mov	ebx,dword [_bb_boostMax2D_Driver]
	cmp	ebx,_bbNullObject
	jne	_1393
	call	_brl_blitz_NullObjectError
_1393:
	mov	ecx,dword [ebp-44]
	mov	edx,dword [ebp-8]
	mov	eax,dword [ebp-68]
	fld	dword [edx+eax*4+24]
	fmul	dword [edi+36]
	mov	eax,dword [ebp-8]
	fld	dword [eax+esi*4+24]
	fmul	dword [ebx+40]
	faddp	st1,st0
	fadd	dword [ebp-16]
	fstp	dword [ecx+28]
	push	_1394
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	cmp	dword [eax+16],0
	je	_1395
	mov	eax,ebp
	push	eax
	push	_1399
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1396
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1398
	call	_brl_blitz_ArrayBoundsError
_1398:
	mov	edx,dword [ebp-48]
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax+ebx*4+24]
	mov	dword [edx+36],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1400
_1395:
	mov	eax,ebp
	push	eax
	push	_1404
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1401
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_boostMax2D_Driver]
	cmp	ebx,_bbNullObject
	jne	_1403
	call	_brl_blitz_NullObjectError
_1403:
	mov	edx,dword [ebp-48]
	mov	eax,dword [ebx+20]
	mov	dword [edx+36],eax
	call	dword [_bbOnDebugLeaveScope]
_1400:
	push	_1405
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-72],4
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-72],eax
	jb	_1407
	call	_brl_blitz_ArrayBoundsError
_1407:
	mov	edi,dword [_bb_boostMax2D_Driver]
	cmp	edi,_bbNullObject
	jne	_1409
	call	_brl_blitz_NullObjectError
_1409:
	mov	esi,5
	mov	eax,dword [ebp-8]
	cmp	esi,dword [eax+20]
	jb	_1411
	call	_brl_blitz_ArrayBoundsError
_1411:
	mov	ebx,dword [_bb_boostMax2D_Driver]
	cmp	ebx,_bbNullObject
	jne	_1413
	call	_brl_blitz_NullObjectError
_1413:
	mov	ecx,dword [ebp-44]
	mov	edx,dword [ebp-8]
	mov	eax,dword [ebp-72]
	fld	dword [edx+eax*4+24]
	fmul	dword [edi+28]
	mov	eax,dword [ebp-8]
	fld	dword [eax+esi*4+24]
	fmul	dword [ebx+32]
	faddp	st1,st0
	fadd	dword [ebp-12]
	fstp	dword [ecx+48]
	push	_1414
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-76],4
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-76],eax
	jb	_1416
	call	_brl_blitz_ArrayBoundsError
_1416:
	mov	edi,dword [_bb_boostMax2D_Driver]
	cmp	edi,_bbNullObject
	jne	_1418
	call	_brl_blitz_NullObjectError
_1418:
	mov	esi,5
	mov	eax,dword [ebp-8]
	cmp	esi,dword [eax+20]
	jb	_1420
	call	_brl_blitz_ArrayBoundsError
_1420:
	mov	ebx,dword [_bb_boostMax2D_Driver]
	cmp	ebx,_bbNullObject
	jne	_1422
	call	_brl_blitz_NullObjectError
_1422:
	mov	ecx,dword [ebp-44]
	mov	edx,dword [ebp-8]
	mov	eax,dword [ebp-76]
	fld	dword [edx+eax*4+24]
	fmul	dword [edi+36]
	mov	eax,dword [ebp-8]
	fld	dword [eax+esi*4+24]
	fmul	dword [ebx+40]
	faddp	st1,st0
	fadd	dword [ebp-16]
	fstp	dword [ecx+52]
	push	_1423
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	cmp	dword [eax+16],0
	je	_1424
	mov	eax,ebp
	push	eax
	push	_1428
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1425
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1427
	call	_brl_blitz_ArrayBoundsError
_1427:
	mov	edx,dword [ebp-48]
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax+ebx*4+24]
	mov	dword [edx+60],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1429
_1424:
	mov	eax,ebp
	push	eax
	push	_1433
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1430
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_boostMax2D_Driver]
	cmp	ebx,_bbNullObject
	jne	_1432
	call	_brl_blitz_NullObjectError
_1432:
	mov	edx,dword [ebp-48]
	mov	eax,dword [ebx+20]
	mov	dword [edx+60],eax
	call	dword [_bbOnDebugLeaveScope]
_1429:
	push	_1434
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-80],6
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-80],eax
	jb	_1436
	call	_brl_blitz_ArrayBoundsError
_1436:
	mov	edi,dword [_bb_boostMax2D_Driver]
	cmp	edi,_bbNullObject
	jne	_1438
	call	_brl_blitz_NullObjectError
_1438:
	mov	esi,7
	mov	eax,dword [ebp-8]
	cmp	esi,dword [eax+20]
	jb	_1440
	call	_brl_blitz_ArrayBoundsError
_1440:
	mov	ebx,dword [_bb_boostMax2D_Driver]
	cmp	ebx,_bbNullObject
	jne	_1442
	call	_brl_blitz_NullObjectError
_1442:
	mov	ecx,dword [ebp-44]
	mov	edx,dword [ebp-8]
	mov	eax,dword [ebp-80]
	fld	dword [edx+eax*4+24]
	fmul	dword [edi+28]
	mov	eax,dword [ebp-8]
	fld	dword [eax+esi*4+24]
	fmul	dword [ebx+32]
	faddp	st1,st0
	fadd	dword [ebp-12]
	fstp	dword [ecx+72]
	push	_1443
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-84],6
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-84],eax
	jb	_1445
	call	_brl_blitz_ArrayBoundsError
_1445:
	mov	edi,dword [_bb_boostMax2D_Driver]
	cmp	edi,_bbNullObject
	jne	_1447
	call	_brl_blitz_NullObjectError
_1447:
	mov	esi,7
	mov	eax,dword [ebp-8]
	cmp	esi,dword [eax+20]
	jb	_1449
	call	_brl_blitz_ArrayBoundsError
_1449:
	mov	ebx,dword [_bb_boostMax2D_Driver]
	cmp	ebx,_bbNullObject
	jne	_1451
	call	_brl_blitz_NullObjectError
_1451:
	mov	ecx,dword [ebp-44]
	mov	edx,dword [ebp-8]
	mov	eax,dword [ebp-84]
	fld	dword [edx+eax*4+24]
	fmul	dword [edi+36]
	mov	eax,dword [ebp-8]
	fld	dword [eax+esi*4+24]
	fmul	dword [ebx+40]
	faddp	st1,st0
	fadd	dword [ebp-16]
	fstp	dword [ecx+76]
	push	_1452
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	cmp	dword [eax+16],0
	je	_1453
	mov	eax,ebp
	push	eax
	push	_1457
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1454
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1456
	call	_brl_blitz_ArrayBoundsError
_1456:
	mov	edx,dword [ebp-48]
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax+ebx*4+24]
	mov	dword [edx+84],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1458
_1453:
	mov	eax,ebp
	push	eax
	push	_1462
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1459
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_boostMax2D_Driver]
	cmp	ebx,_bbNullObject
	jne	_1461
	call	_brl_blitz_NullObjectError
_1461:
	mov	edx,dword [ebp-48]
	mov	eax,dword [ebx+20]
	mov	dword [edx+84],eax
	call	dword [_bbOnDebugLeaveScope]
_1458:
	push	_1463
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_boostMax2D_Driver]
	cmp	ebx,_bbNullObject
	jne	_1465
	call	_brl_blitz_NullObjectError
_1465:
	push	dword [ebp-32]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+156]
	add	esp,8
	push	_1466
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_boostMax2D_Driver]
	cmp	ebx,_bbNullObject
	jne	_1468
	call	_brl_blitz_NullObjectError
_1468:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1470
	call	_brl_blitz_NullObjectError
_1470:
	push	0
	push	4
	push	dword [ebp-44]
	push	322
	push	6
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+100]
	mov	ebx,0
	jmp	_213
_213:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_76:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],0
	push	ebp
	push	_1496
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1490
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],1
	push	_1492
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_77
_79:
	push	ebp
	push	_1494
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1493
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	shl	eax,1
	mov	dword [ebp-8],eax
	call	dword [_bbOnDebugLeaveScope]
_77:
	mov	eax,dword [ebp-4]
	cmp	dword [ebp-8],eax
	jl	_79
_78:
	push	_1495
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	jmp	_216
_216:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_1028:
	dd	0
_993:
	db	"Hellone",0
_994:
	db	"My",0
_995:
	db	":z_My_6c401696_39c8_451b_8d03_5114a4e3cf74",0
	align	4
_222:
	dd	_bbNullObject
_996:
	db	"screenx",0
_123:
	db	"f",0
	align	4
_bb_screenx:
	dd	0x44800000
_997:
	db	"screeny",0
	align	4
_bb_screeny:
	dd	0x44400000
_998:
	db	"split20x",0
	align	4
_bb_split20x:
	dd	0x0
_999:
	db	"split20y",0
	align	4
_bb_split20y:
	dd	0x0
_1000:
	db	"pointx",0
	align	4
_bb_pointx:
	dd	0x0
_1001:
	db	"pointy",0
	align	4
_bb_pointy:
	dd	0x0
_1002:
	db	"fenster",0
_1003:
	db	":brl.graphics.TGraphics",0
	align	4
_bb_fenster:
	dd	_bbNullObject
_1004:
	db	"tex1",0
_1005:
	db	":brl.max2d.TImage",0
	align	4
_bb_tex1:
	dd	_bbNullObject
_1006:
	db	"tex2",0
	align	4
_bb_tex2:
	dd	_bbNullObject
_1007:
	db	"pfeil1",0
	align	4
_bb_pfeil1:
	dd	_bbNullObject
_1008:
	db	"md1",0
_104:
	db	"i",0
	align	4
_bb_md1:
	dd	0
_1009:
	db	"mh1",0
	align	4
_bb_mh1:
	dd	0
_1010:
	db	"md2",0
	align	4
_bb_md2:
	dd	0
_1011:
	db	"mh2",0
	align	4
_bb_mh2:
	dd	0
_1012:
	db	"omx",0
	align	4
_bb_omx:
	dd	0
_1013:
	db	"omy",0
	align	4
_bb_omy:
	dd	0
_1014:
	db	"V_rotate",0
	align	4
_bb_V_rotate:
	dd	0x0
_1015:
	db	"sys_map",0
_1016:
	db	"[,]b",0
	align	4
_bb_sys_map:
	dd	_bbEmptyArray
_1017:
	db	"chocke",0
	align	4
_bb_chocke:
	dd	0
_1018:
	db	"flops",0
	align	4
_bb_flops:
	dd	0
_1019:
	db	"eflops",0
	align	4
_bb_eflops:
	dd	0
_1020:
	db	"player",0
_1021:
	db	":Tplayer",0
	align	4
_bb_player:
	dd	_bbNullObject
_1022:
	db	"msc",0
	align	4
_bb_msc:
	dd	0
_1023:
	db	"lasttime",0
	align	4
_bb_lasttime:
	dd	0
_1024:
	db	"time",0
	align	4
_bb_time:
	dd	0
_1025:
	db	"boostMax2D_Driver",0
_1026:
	db	":brl.d3d7max2d.TD3D7Max2DDriver",0
	align	4
_bb_boostMax2D_Driver:
	dd	_bbNullObject
_1027:
	db	"boostMax2D_active",0
	align	4
_bb_boostMax2D_active:
	dd	0
	align	4
_992:
	dd	1
	dd	_993
	dd	4
	dd	_994
	dd	_995
	dd	_222
	dd	4
	dd	_996
	dd	_123
	dd	_bb_screenx
	dd	4
	dd	_997
	dd	_123
	dd	_bb_screeny
	dd	4
	dd	_998
	dd	_123
	dd	_bb_split20x
	dd	4
	dd	_999
	dd	_123
	dd	_bb_split20y
	dd	4
	dd	_1000
	dd	_123
	dd	_bb_pointx
	dd	4
	dd	_1001
	dd	_123
	dd	_bb_pointy
	dd	4
	dd	_1002
	dd	_1003
	dd	_bb_fenster
	dd	4
	dd	_1004
	dd	_1005
	dd	_bb_tex1
	dd	4
	dd	_1006
	dd	_1005
	dd	_bb_tex2
	dd	4
	dd	_1007
	dd	_1005
	dd	_bb_pfeil1
	dd	4
	dd	_1008
	dd	_104
	dd	_bb_md1
	dd	4
	dd	_1009
	dd	_104
	dd	_bb_mh1
	dd	4
	dd	_1010
	dd	_104
	dd	_bb_md2
	dd	4
	dd	_1011
	dd	_104
	dd	_bb_mh2
	dd	4
	dd	_1012
	dd	_104
	dd	_bb_omx
	dd	4
	dd	_1013
	dd	_104
	dd	_bb_omy
	dd	4
	dd	_1014
	dd	_123
	dd	_bb_V_rotate
	dd	4
	dd	_1015
	dd	_1016
	dd	_bb_sys_map
	dd	4
	dd	_1017
	dd	_104
	dd	_bb_chocke
	dd	4
	dd	_1018
	dd	_104
	dd	_bb_flops
	dd	4
	dd	_1019
	dd	_104
	dd	_bb_eflops
	dd	4
	dd	_1020
	dd	_1021
	dd	_bb_player
	dd	4
	dd	_1022
	dd	_104
	dd	_bb_msc
	dd	4
	dd	_1023
	dd	_104
	dd	_bb_lasttime
	dd	4
	dd	_1024
	dd	_104
	dd	_bb_time
	dd	4
	dd	_1025
	dd	_1026
	dd	_bb_boostMax2D_Driver
	dd	4
	dd	_1027
	dd	_104
	dd	_bb_boostMax2D_active
	dd	0
_94:
	db	"z_6c401696_39c8_451b_8d03_5114a4e3cf74_3_0",0
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
	dd	__bb_z_6c401696_39c8_451b_8d03_5114a4e3cf74_3_0_New
	dd	__bb_z_6c401696_39c8_451b_8d03_5114a4e3cf74_3_0_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_99:
	db	"z_blide_bg6c401696_39c8_451b_8d03_5114a4e3cf74",0
_100:
	db	"Name",0
_101:
	db	"$",0
	align	4
_102:
	dd	_bbStringClass
	dd	2147483646
	dd	7
	dw	72,101,108,108,111,110,101
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
	dd	13
	dw	72,101,108,108,111,110,101,32,48,46,48,46,49
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
	dd	__bb_z_blide_bg6c401696_39c8_451b_8d03_5114a4e3cf74_New
	dd	__bb_z_blide_bg6c401696_39c8_451b_8d03_5114a4e3cf74_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_219:
	db	"C:/Users/admin/Dropbox/Proggen/projecte/helli/Hellone.bmx",0
	align	4
_218:
	dd	_219
	dd	92
	dd	5
	align	4
__bb_z_My_6c401696_39c8_451b_8d03_5114a4e3cf74_Application:
	dd	_bbNullObject
	align	4
_220:
	dd	_219
	dd	93
	dd	5
	align	4
__bb_z_My_6c401696_39c8_451b_8d03_5114a4e3cf74_Resources:
	dd	_bbNullObject
_119:
	db	"z_My_6c401696_39c8_451b_8d03_5114a4e3cf74",0
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
	dd	__bb_z_My_6c401696_39c8_451b_8d03_5114a4e3cf74_New
	dd	__bb_z_My_6c401696_39c8_451b_8d03_5114a4e3cf74_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_121:
	db	"Tplayer",0
_122:
	db	"x",0
_124:
	db	"y",0
	align	4
_120:
	dd	2
	dd	_121
	dd	3
	dd	_122
	dd	_123
	dd	8
	dd	3
	dd	_124
	dd	_123
	dd	12
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
	align	4
_221:
	dd	_219
	dd	97
	dd	1
_224:
	db	"C:/Users/admin/Dropbox/Proggen/projecte/helli/main.bmx",0
	align	4
_223:
	dd	_224
	dd	1
	dd	1
	align	4
_225:
	dd	_224
	dd	3
	dd	1
	align	4
_226:
	dd	_224
	dd	4
	dd	1
	align	4
_227:
	dd	_224
	dd	5
	dd	1
	align	4
_228:
	dd	0
	align	4
_1500:
	dd	0x40a00000
	align	4
_230:
	dd	_224
	dd	6
	dd	1
	align	4
_1501:
	dd	0x40a00000
	align	4
_232:
	dd	_224
	dd	7
	dd	1
	align	4
_1502:
	dd	0x40000000
	align	4
_234:
	dd	_224
	dd	8
	dd	1
	align	4
_1503:
	dd	0x40000000
	align	4
_236:
	dd	_224
	dd	10
	dd	1
	align	4
_237:
	dd	_224
	dd	11
	dd	1
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	109,97,112,116,101,115,116
	align	4
_242:
	dd	_224
	dd	12
	dd	1
	align	4
_245:
	dd	_224
	dd	15
	dd	1
	align	4
_246:
	dd	_224
	dd	16
	dd	1
	align	4
_247:
	dd	_224
	dd	18
	dd	1
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	67,111,117,114,105,101,114,32,78,101,119
	align	4
_248:
	dd	_224
	dd	23
	dd	1
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	103,102,120,92,116,105,108,101,46,112,110,103
	align	4
_251:
	dd	_224
	dd	24
	dd	1
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	103,102,120,92,108,105,103,104,116,46,112,110,103
	align	4
_254:
	dd	_224
	dd	26
	dd	1
	align	4
_30:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	103,102,120,92,112,102,101,105,108,46,112,110,103
	align	4
_257:
	dd	_224
	dd	27
	dd	1
	align	4
_1504:
	dd	0x40000000
	align	4
_263:
	dd	_224
	dd	28
	dd	1
	align	4
_1505:
	dd	0x40000000
	align	4
_269:
	dd	_224
	dd	32
	dd	1
	align	4
_270:
	dd	_224
	dd	33
	dd	1
	align	4
_271:
	dd	_224
	dd	36
	dd	1
	align	4
_272:
	dd	_224
	dd	37
	dd	1
_273:
	db	"b",0
	align	4
_276:
	dd	_224
	dd	38
	dd	1
	align	4
_277:
	dd	_224
	dd	39
	dd	1
	align	4
_278:
	dd	_224
	dd	40
	dd	1
	align	4
_279:
	dd	_224
	dd	45
	dd	1
	align	4
_282:
	dd	_224
	dd	47
	dd	1
	align	4
_283:
	dd	_224
	dd	48
	dd	1
	align	4
_285:
	dd	_224
	dd	49
	dd	1
	align	4
_287:
	dd	_224
	dd	51
	dd	1
_983:
	db	"V_r",0
_984:
	db	"V_entferung",0
_985:
	db	"V_x",0
_986:
	db	"V_y",0
_987:
	db	"tri",0
_988:
	db	"[]f",0
	align	4
_982:
	dd	3
	dd	0
	dd	2
	dd	_983
	dd	_123
	dd	-4
	dd	2
	dd	_984
	dd	_123
	dd	-8
	dd	2
	dd	_985
	dd	_123
	dd	-12
	dd	2
	dd	_986
	dd	_123
	dd	-16
	dd	2
	dd	_987
	dd	_988
	dd	-20
	dd	0
	align	4
_290:
	dd	_224
	dd	53
	dd	2
	align	4
_291:
	dd	_224
	dd	54
	dd	2
	align	4
_292:
	dd	_224
	dd	55
	dd	2
	align	4
_293:
	dd	_224
	dd	57
	dd	2
	align	4
_294:
	dd	_224
	dd	59
	dd	2
	align	4
_295:
	dd	_224
	dd	59
	dd	23
	align	4
_296:
	dd	_224
	dd	60
	dd	2
	align	4
_297:
	dd	_224
	dd	60
	dd	23
	align	4
_298:
	dd	_224
	dd	61
	dd	2
	align	4
_299:
	dd	_224
	dd	61
	dd	19
	align	4
_300:
	dd	_224
	dd	64
	dd	2
	align	4
_301:
	dd	_224
	dd	65
	dd	2
_805:
	db	"ratio",0
_806:
	db	"eratio",0
	align	4
_804:
	dd	3
	dd	0
	dd	2
	dd	_805
	dd	_123
	dd	-24
	dd	2
	dd	_806
	dd	_123
	dd	-28
	dd	0
	align	4
_303:
	dd	_224
	dd	66
	dd	3
	align	4
_304:
	dd	_224
	dd	68
	dd	3
	align	4
_305:
	dd	_224
	dd	69
	dd	3
	align	4
_306:
	dd	_224
	dd	71
	dd	3
_357:
	db	"x2",0
	align	4
_356:
	dd	3
	dd	0
	dd	2
	dd	_357
	dd	_123
	dd	-32
	dd	0
	align	4
_309:
	dd	_224
	dd	72
	dd	4
_355:
	db	"y2",0
	align	4
_354:
	dd	3
	dd	0
	dd	2
	dd	_355
	dd	_123
	dd	-36
	dd	0
	align	4
_312:
	dd	_224
	dd	73
	dd	5
	align	4
_324:
	dd	3
	dd	0
	dd	0
	align	4
_318:
	dd	_224
	dd	73
	dd	34
	align	4
_325:
	dd	_224
	dd	74
	dd	5
	align	4
_337:
	dd	3
	dd	0
	dd	0
	align	4
_331:
	dd	_224
	dd	74
	dd	34
	align	4
_338:
	dd	_224
	dd	76
	dd	5
	align	4
_345:
	dd	3
	dd	0
	dd	0
	align	4
_344:
	dd	_224
	dd	76
	dd	33
	align	4
_346:
	dd	_224
	dd	77
	dd	5
	align	4
_353:
	dd	3
	dd	0
	dd	0
	align	4
_352:
	dd	_224
	dd	77
	dd	33
	align	4
_1506:
	dd	0x3f800000
	align	4
_1507:
	dd	0x41a00000
	align	4
_1508:
	dd	0x3f800000
	align	4
_1509:
	dd	0x41a00000
	align	4
_358:
	dd	_224
	dd	84
	dd	3
	align	4
_360:
	dd	_224
	dd	85
	dd	3
	align	4
_362:
	dd	_224
	dd	87
	dd	3
	align	4
_803:
	dd	3
	dd	0
	dd	2
	dd	_357
	dd	_123
	dd	-40
	dd	0
	align	4
_365:
	dd	_224
	dd	88
	dd	4
	align	4
_802:
	dd	3
	dd	0
	dd	2
	dd	_355
	dd	_123
	dd	-44
	dd	0
	align	4
_368:
	dd	_224
	dd	89
	dd	5
	align	4
_584:
	dd	3
	dd	0
	dd	2
	dd	_122
	dd	_104
	dd	-48
	dd	2
	dd	_124
	dd	_104
	dd	-52
	dd	0
	align	4
_374:
	dd	_224
	dd	90
	dd	6
	align	4
_1510:
	dd	0x3f800000
	align	4
_376:
	dd	_224
	dd	91
	dd	6
	align	4
_378:
	dd	_224
	dd	92
	dd	6
	align	4
_404:
	dd	3
	dd	0
	dd	0
	align	4
_398:
	dd	_224
	dd	92
	dd	102
	align	4
_405:
	dd	_224
	dd	93
	dd	6
	align	4
_427:
	dd	3
	dd	0
	dd	0
	align	4
_421:
	dd	_224
	dd	93
	dd	95
	align	4
_428:
	dd	_224
	dd	94
	dd	6
	align	4
_429:
	dd	_224
	dd	95
	dd	6
	align	4
_1511:
	dd	0x3f800000
	align	4
_430:
	dd	_224
	dd	96
	dd	6
	align	4
_456:
	dd	3
	dd	0
	dd	0
	align	4
_450:
	dd	_224
	dd	96
	dd	102
	align	4
_457:
	dd	_224
	dd	97
	dd	6
	align	4
_479:
	dd	3
	dd	0
	dd	0
	align	4
_473:
	dd	_224
	dd	97
	dd	95
	align	4
_480:
	dd	_224
	dd	98
	dd	6
	align	4
_1512:
	dd	0x3f800000
	align	4
_481:
	dd	_224
	dd	99
	dd	6
	align	4
_482:
	dd	_224
	dd	100
	dd	6
	align	4
_508:
	dd	3
	dd	0
	dd	0
	align	4
_502:
	dd	_224
	dd	100
	dd	102
	align	4
_509:
	dd	_224
	dd	101
	dd	6
	align	4
_531:
	dd	3
	dd	0
	dd	0
	align	4
_525:
	dd	_224
	dd	101
	dd	95
	align	4
_532:
	dd	_224
	dd	102
	dd	6
	align	4
_533:
	dd	_224
	dd	103
	dd	6
	align	4
_1513:
	dd	0x3f800000
	align	4
_534:
	dd	_224
	dd	104
	dd	6
	align	4
_560:
	dd	3
	dd	0
	dd	0
	align	4
_554:
	dd	_224
	dd	104
	dd	102
	align	4
_561:
	dd	_224
	dd	105
	dd	6
	align	4
_583:
	dd	3
	dd	0
	dd	0
	align	4
_577:
	dd	_224
	dd	105
	dd	95
	align	4
_585:
	dd	_224
	dd	107
	dd	5
	align	4
_801:
	dd	3
	dd	0
	dd	2
	dd	_122
	dd	_104
	dd	-56
	dd	2
	dd	_124
	dd	_104
	dd	-60
	dd	0
	align	4
_591:
	dd	_224
	dd	108
	dd	6
	align	4
_1514:
	dd	0x3f800000
	align	4
_593:
	dd	_224
	dd	109
	dd	6
	align	4
_595:
	dd	_224
	dd	110
	dd	6
	align	4
_621:
	dd	3
	dd	0
	dd	0
	align	4
_615:
	dd	_224
	dd	110
	dd	102
	align	4
_622:
	dd	_224
	dd	111
	dd	6
	align	4
_644:
	dd	3
	dd	0
	dd	0
	align	4
_638:
	dd	_224
	dd	111
	dd	94
	align	4
_645:
	dd	_224
	dd	112
	dd	6
	align	4
_646:
	dd	_224
	dd	113
	dd	6
	align	4
_1515:
	dd	0x3f800000
	align	4
_647:
	dd	_224
	dd	114
	dd	6
	align	4
_673:
	dd	3
	dd	0
	dd	0
	align	4
_667:
	dd	_224
	dd	114
	dd	102
	align	4
_674:
	dd	_224
	dd	115
	dd	6
	align	4
_696:
	dd	3
	dd	0
	dd	0
	align	4
_690:
	dd	_224
	dd	115
	dd	94
	align	4
_697:
	dd	_224
	dd	116
	dd	6
	align	4
_1516:
	dd	0x3f800000
	align	4
_698:
	dd	_224
	dd	117
	dd	6
	align	4
_699:
	dd	_224
	dd	118
	dd	6
	align	4
_725:
	dd	3
	dd	0
	dd	0
	align	4
_719:
	dd	_224
	dd	118
	dd	102
	align	4
_726:
	dd	_224
	dd	119
	dd	6
	align	4
_748:
	dd	3
	dd	0
	dd	0
	align	4
_742:
	dd	_224
	dd	119
	dd	94
	align	4
_749:
	dd	_224
	dd	120
	dd	6
	align	4
_750:
	dd	_224
	dd	121
	dd	6
	align	4
_1517:
	dd	0x3f800000
	align	4
_751:
	dd	_224
	dd	122
	dd	6
	align	4
_777:
	dd	3
	dd	0
	dd	0
	align	4
_771:
	dd	_224
	dd	122
	dd	102
	align	4
_778:
	dd	_224
	dd	123
	dd	6
	align	4
_800:
	dd	3
	dd	0
	dd	0
	align	4
_794:
	dd	_224
	dd	123
	dd	94
	align	4
_1518:
	dd	0x3f800000
	align	4
_1519:
	dd	0x41a00000
	align	4
_1520:
	dd	0x3f800000
	align	4
_1521:
	dd	0x41a00000
	align	4
_807:
	dd	_224
	dd	131
	dd	2
	align	4
_813:
	dd	_224
	dd	132
	dd	2
	align	4
_819:
	dd	_224
	dd	133
	dd	2
	align	4
_820:
	dd	_224
	dd	137
	dd	2
	align	4
_823:
	dd	3
	dd	0
	dd	0
	align	4
_822:
	dd	_224
	dd	137
	dd	25
	align	4
_824:
	dd	_224
	dd	138
	dd	2
	align	4
_827:
	dd	3
	dd	0
	dd	0
	align	4
_826:
	dd	_224
	dd	138
	dd	25
	align	4
_828:
	dd	_224
	dd	140
	dd	2
	align	4
_842:
	dd	3
	dd	0
	dd	0
	align	4
_830:
	dd	_224
	dd	140
	dd	25
	align	4
_1522:
	dd	0x42b40000
	align	4
_836:
	dd	_224
	dd	140
	dd	84
	align	4
_1523:
	dd	0x42b40000
	align	4
_843:
	dd	_224
	dd	141
	dd	2
	align	4
_857:
	dd	3
	dd	0
	dd	0
	align	4
_845:
	dd	_224
	dd	141
	dd	25
	align	4
_1524:
	dd	0x42b40000
	align	4
_851:
	dd	_224
	dd	141
	dd	84
	align	4
_1525:
	dd	0x42b40000
	align	4
_858:
	dd	_224
	dd	143
	dd	2
	align	4
_883:
	dd	3
	dd	0
	dd	2
	dd	_122
	dd	_104
	dd	-64
	dd	2
	dd	_124
	dd	_104
	dd	-68
	dd	0
	align	4
_860:
	dd	_224
	dd	144
	dd	3
	align	4
_1526:
	dd	0x43a00000
	align	4
_1527:
	dd	0x42000000
	align	4
_864:
	dd	_224
	dd	145
	dd	3
	align	4
_1528:
	dd	0x43a00000
	align	4
_1529:
	dd	0x42000000
	align	4
_868:
	dd	_224
	dd	146
	dd	3
	align	4
_882:
	dd	3
	dd	0
	dd	0
	align	4
_876:
	dd	_224
	dd	146
	dd	53
	align	4
_884:
	dd	_224
	dd	149
	dd	2
	align	4
_885:
	dd	_224
	dd	151
	dd	2
	align	8
_1530:
	dd	0x0,0x40668000
	align	4
_891:
	dd	_224
	dd	153
	dd	2
	align	8
_1531:
	dd	0x0,0x40000000
	align	8
_1532:
	dd	0x0,0x40000000
	align	4
_897:
	dd	_224
	dd	155
	dd	2
	align	4
_1533:
	dd	0x42b40000
	align	4
_899:
	dd	_224
	dd	156
	dd	2
	align	4
_1534:
	dd	0x42b40000
	align	4
_901:
	dd	_224
	dd	158
	dd	2
	align	4
_902:
	dd	_224
	dd	160
	dd	2
	align	4
_904:
	dd	_224
	dd	161
	dd	2
	align	4
_1535:
	dd	0xc1200000
	align	4
_914:
	dd	3
	dd	0
	dd	2
	dd	_122
	dd	_123
	dd	-72
	dd	0
	align	4
_907:
	dd	_224
	dd	162
	dd	3
	align	4
_1536:
	dd	0xc1200000
	align	4
_913:
	dd	3
	dd	0
	dd	2
	dd	_124
	dd	_123
	dd	-76
	dd	0
	align	4
_910:
	dd	_224
	dd	164
	dd	4
	align	4
_1537:
	dd	0x42000000
	align	4
_1538:
	dd	0x42000000
	align	4
_1539:
	dd	0x42000000
	align	4
_1540:
	dd	0x42000000
	align	4
_1541:
	dd	0x42000000
	align	4
_1542:
	dd	0x42000000
	align	4
_1543:
	dd	0x42000000
	align	4
_1544:
	dd	0x42000000
	align	4
_1545:
	dd	0x42000000
	align	4
_1546:
	dd	0x42000000
	align	4
_1547:
	dd	0x42000000
	align	4
_1548:
	dd	0x42000000
	align	4
_912:
	dd	_224
	dd	165
	dd	4
	align	4
_1549:
	dd	0x3f800000
	align	4
_1550:
	dd	0x41200000
	align	4
_1551:
	dd	0x3f800000
	align	4
_1552:
	dd	0x41200000
	align	4
_915:
	dd	_224
	dd	171
	dd	2
	align	4
_916:
	dd	_224
	dd	172
	dd	2
	align	4
_917:
	dd	_224
	dd	173
	dd	2
	align	4
_918:
	dd	_224
	dd	175
	dd	2
	align	4
_1553:
	dd	0xc1200000
	align	4
_969:
	dd	3
	dd	0
	dd	2
	dd	_122
	dd	_123
	dd	-80
	dd	0
	align	4
_921:
	dd	_224
	dd	176
	dd	3
	align	8
_1554:
	dd	0x0,0x3fd00000
	align	4
_1555:
	dd	0x42340000
	align	4
_1556:
	dd	0x40a00000
	align	8
_1557:
	dd	0x0,0x40100000
	align	4
_922:
	dd	_224
	dd	178
	dd	3
	align	4
_1558:
	dd	0xc1200000
	align	4
_968:
	dd	3
	dd	0
	dd	2
	dd	_124
	dd	_123
	dd	-84
	dd	0
	align	4
_925:
	dd	_224
	dd	181
	dd	4
	align	4
_1559:
	dd	0x41200000
	align	4
_1560:
	dd	0x41200000
	align	4
_932:
	dd	3
	dd	0
	dd	0
	align	4
_931:
	dd	_224
	dd	181
	dd	40
	align	4
_933:
	dd	_224
	dd	182
	dd	4
	align	4
_1561:
	dd	0x41200000
	align	4
_1562:
	dd	0x41200000
	align	4
_940:
	dd	3
	dd	0
	dd	0
	align	4
_939:
	dd	_224
	dd	182
	dd	40
	align	4
_941:
	dd	_224
	dd	183
	dd	4
	align	4
_1563:
	dd	0x41200000
	align	4
_1564:
	dd	0x41200000
	align	4
_948:
	dd	3
	dd	0
	dd	0
	align	4
_947:
	dd	_224
	dd	183
	dd	40
	align	4
_949:
	dd	_224
	dd	185
	dd	4
	align	4
_1565:
	dd	0x41200000
	align	4
_1566:
	dd	0x41200000
	align	4
_956:
	dd	3
	dd	0
	dd	0
	align	4
_955:
	dd	_224
	dd	185
	dd	41
	align	4
_957:
	dd	_224
	dd	186
	dd	4
	align	4
_1567:
	dd	0x41200000
	align	4
_1568:
	dd	0x41200000
	align	4
_964:
	dd	3
	dd	0
	dd	0
	align	4
_963:
	dd	_224
	dd	186
	dd	41
	align	4
_965:
	dd	_224
	dd	188
	dd	4
	align	4
_1569:
	dd	0x42000000
	align	4
_1570:
	dd	0x42000000
	align	4
_1571:
	dd	0x42000000
	align	4
_1572:
	dd	0x42000000
	align	4
_1573:
	dd	0x42000000
	align	4
_1574:
	dd	0x42000000
	align	4
_1575:
	dd	0x42000000
	align	4
_1576:
	dd	0x42000000
	align	4
_1577:
	dd	0x42000000
	align	4
_1578:
	dd	0x42000000
	align	4
_1579:
	dd	0x42000000
	align	4
_1580:
	dd	0x42000000
	align	4
_967:
	dd	_224
	dd	189
	dd	4
	align	4
_1581:
	dd	0x3f800000
	align	4
_1582:
	dd	0x41200000
	align	4
_1583:
	dd	0x3f800000
	align	4
_1584:
	dd	0x41200000
	align	4
_970:
	dd	_224
	dd	194
	dd	2
	align	4
_971:
	dd	_224
	dd	206
	dd	2
	align	4
_972:
	dd	_224
	dd	209
	dd	2
	align	4
_1585:
	dd	0x40a00000
	align	4
_1586:
	dd	0x40a00000
	align	4
_973:
	dd	_224
	dd	210
	dd	2
	align	4
_974:
	dd	_224
	dd	211
	dd	2
	align	4
_1587:
	dd	0x42f00000
	align	4
_975:
	dd	_224
	dd	213
	dd	2
	align	4
_976:
	dd	_224
	dd	215
	dd	2
	align	4
_59:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	32,32,77,83,67,58,32
	align	4
_1588:
	dd	0x447a0000
	align	4
_58:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	70,80,83,58,32
	align	4
_977:
	dd	_224
	dd	216
	dd	2
	align	4
_60:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	70,108,111,112,115,58,32
	align	4
_978:
	dd	_224
	dd	217
	dd	2
	align	4
_61:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	101,70,108,111,112,115,58,32
	align	4
_979:
	dd	_224
	dd	218
	dd	2
	align	4
_62:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	82,97,116,105,111,58,32
	align	4
_980:
	dd	_224
	dd	219
	dd	2
	align	4
_63:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	101,82,97,116,105,111,58,32
	align	4
_981:
	dd	_224
	dd	221
	dd	2
	align	4
_989:
	dd	_224
	dd	224
	dd	1
_991:
	db	"C:/Users/admin/Dropbox/Proggen/projecte/helli/inc/boostmax3d.bmx",0
	align	4
_990:
	dd	_991
	dd	2
	dd	1
_1032:
	db	"Self",0
_1033:
	db	":z_6c401696_39c8_451b_8d03_5114a4e3cf74_3_0",0
	align	4
_1031:
	dd	1
	dd	_95
	dd	2
	dd	_1032
	dd	_1033
	dd	-4
	dd	0
	align	4
_1030:
	dd	3
	dd	0
	dd	0
_1037:
	db	":z_blide_bg6c401696_39c8_451b_8d03_5114a4e3cf74",0
	align	4
_1036:
	dd	1
	dd	_95
	dd	2
	dd	_1032
	dd	_1037
	dd	-4
	dd	0
	align	4
_1035:
	dd	3
	dd	0
	dd	0
	align	4
_1040:
	dd	1
	dd	_95
	dd	2
	dd	_1032
	dd	_995
	dd	-4
	dd	0
	align	4
_1039:
	dd	3
	dd	0
	dd	0
	align	4
_1043:
	dd	1
	dd	_95
	dd	2
	dd	_1032
	dd	_1021
	dd	-4
	dd	0
	align	4
_1042:
	dd	3
	dd	0
	dd	0
_1054:
	db	"roll",0
	align	4
_1053:
	dd	1
	dd	_1054
	dd	2
	dd	_805
	dd	_123
	dd	-4
	dd	0
	align	4
_1045:
	dd	_224
	dd	229
	dd	2
	align	4
_1051:
	dd	3
	dd	0
	dd	0
	align	4
_1047:
	dd	_224
	dd	230
	dd	3
	align	4
_1868:
	dd	0x445c8000
	align	4
_1050:
	dd	3
	dd	0
	dd	0
	align	4
_1049:
	dd	_224
	dd	230
	dd	38
	align	4
_1052:
	dd	_224
	dd	232
	dd	2
_1084:
	db	"DrawPicture",0
_1085:
	db	"bild",0
_1086:
	db	":brl.max2d.Timage",0
_1087:
	db	"width",0
_1088:
	db	"height",0
_1089:
	db	"nowscale_X",0
_1090:
	db	"nowscale_Y",0
_1091:
	db	"nowhandle_X",0
_1092:
	db	"nowhandle_Y",0
_1093:
	db	"factorx",0
_1094:
	db	"factory",0
_1095:
	db	"entferung",0
_1096:
	db	"winkel",0
	align	4
_1083:
	dd	1
	dd	_1084
	dd	2
	dd	_1085
	dd	_1086
	dd	-4
	dd	2
	dd	_122
	dd	_123
	dd	-8
	dd	2
	dd	_124
	dd	_123
	dd	-12
	dd	2
	dd	_1087
	dd	_123
	dd	-16
	dd	2
	dd	_1088
	dd	_123
	dd	-20
	dd	2
	dd	_1089
	dd	_123
	dd	-24
	dd	2
	dd	_1090
	dd	_123
	dd	-28
	dd	2
	dd	_1091
	dd	_123
	dd	-32
	dd	2
	dd	_1092
	dd	_123
	dd	-36
	dd	2
	dd	_1093
	dd	_123
	dd	-40
	dd	2
	dd	_1094
	dd	_123
	dd	-44
	dd	2
	dd	_1095
	dd	_123
	dd	-48
	dd	2
	dd	_1096
	dd	_123
	dd	-52
	dd	0
_1056:
	db	"C:/Users/admin/Dropbox/Proggen/projecte/helli/inc/func.bmx",0
	align	4
_1055:
	dd	_1056
	dd	3
	dd	2
	align	4
_1058:
	dd	_1056
	dd	4
	dd	2
	align	4
_1060:
	dd	_1056
	dd	5
	dd	2
	align	4
_1061:
	dd	_1056
	dd	7
	dd	2
	align	4
_1063:
	dd	_1056
	dd	8
	dd	2
	align	4
_1065:
	dd	_1056
	dd	9
	dd	2
	align	4
_1066:
	dd	_1056
	dd	11
	dd	2
	align	4
_1070:
	dd	_1056
	dd	12
	dd	2
	align	4
_1074:
	dd	_1056
	dd	14
	dd	2
	align	4
_1075:
	dd	_1056
	dd	15
	dd	2
	align	4
_1076:
	dd	_1056
	dd	17
	dd	2
	align	8
_1875:
	dd	0x0,0x40000000
	align	8
_1876:
	dd	0x0,0x40000000
	align	4
_1078:
	dd	_1056
	dd	18
	dd	2
	align	8
_1877:
	dd	0x0,0x40568000
	align	4
_1080:
	dd	_1056
	dd	19
	dd	2
	align	4
_1081:
	dd	_1056
	dd	21
	dd	2
	align	4
_1082:
	dd	_1056
	dd	22
	dd	2
_1111:
	db	"ismouseover",0
_1112:
	db	"l",0
_1113:
	db	"w",0
	align	4
_1110:
	dd	1
	dd	_1111
	dd	2
	dd	_122
	dd	_104
	dd	-4
	dd	2
	dd	_124
	dd	_104
	dd	-8
	dd	2
	dd	_1112
	dd	_104
	dd	-12
	dd	2
	dd	_1113
	dd	_104
	dd	-16
	dd	0
	align	4
_1097:
	dd	_1056
	dd	26
	dd	2
	align	4
_1106:
	dd	3
	dd	0
	dd	0
	align	4
_1105:
	dd	_1056
	dd	26
	dd	82
	align	4
_1109:
	dd	3
	dd	0
	dd	0
	align	4
_1108:
	dd	_1056
	dd	26
	dd	96
_1121:
	db	"reset_draw",0
	align	4
_1120:
	dd	1
	dd	_1121
	dd	0
	align	4
_1114:
	dd	_1056
	dd	30
	dd	2
	align	4
_1115:
	dd	_1056
	dd	31
	dd	2
	align	4
_1116:
	dd	_1056
	dd	32
	dd	2
	align	4
_1117:
	dd	_1056
	dd	33
	dd	2
	align	4
_1118:
	dd	_1056
	dd	34
	dd	2
	align	4
_1119:
	dd	_1056
	dd	35
	dd	2
_1124:
	db	"calc_move",0
_1125:
	db	"speed",0
	align	4
_1123:
	dd	1
	dd	_1124
	dd	2
	dd	_1125
	dd	_123
	dd	-4
	dd	0
	align	4
_1122:
	dd	_1056
	dd	39
	dd	2
	align	4
_1892:
	dd	0x42c80000
_1153:
	db	"BufferTower",0
_1154:
	db	"turmwinkel",0
_1155:
	db	"zielwinkel",0
_1156:
	db	"drehspeed",0
_1157:
	db	"totalwinkel",0
_1158:
	db	"bufftore",0
_1159:
	db	"test",0
	align	4
_1152:
	dd	1
	dd	_1153
	dd	2
	dd	_1154
	dd	_123
	dd	-4
	dd	2
	dd	_1155
	dd	_123
	dd	-8
	dd	2
	dd	_1156
	dd	_123
	dd	-12
	dd	2
	dd	_1157
	dd	_123
	dd	-16
	dd	2
	dd	_1158
	dd	_123
	dd	-20
	dd	2
	dd	_1159
	dd	_104
	dd	-24
	dd	0
	align	4
_1126:
	dd	_1056
	dd	43
	dd	2
	align	4
_1897:
	dd	0x43340000
	align	4
_1128:
	dd	_1056
	dd	44
	dd	2
	align	4
_1130:
	dd	3
	dd	0
	dd	0
	align	4
_1129:
	dd	_1056
	dd	45
	dd	3
	align	4
_1898:
	dd	0x43b40000
	align	4
_1899:
	dd	0xc3340000
	align	4
_1131:
	dd	_1056
	dd	47
	dd	2
	align	4
_1133:
	dd	3
	dd	0
	dd	0
	align	4
_1132:
	dd	_1056
	dd	48
	dd	3
	align	4
_1900:
	dd	0x43b40000
	align	4
_1901:
	dd	0x43340000
	align	4
_1134:
	dd	_1056
	dd	50
	dd	2
	align	4
_1137:
	dd	_1056
	dd	51
	dd	2
	align	4
_1141:
	dd	3
	dd	0
	dd	0
	align	4
_1139:
	dd	_1056
	dd	51
	dd	34
	align	4
_1140:
	dd	_1056
	dd	51
	dd	58
	align	4
_1142:
	dd	_1056
	dd	52
	dd	2
	align	4
_1146:
	dd	3
	dd	0
	dd	0
	align	4
_1144:
	dd	_1056
	dd	52
	dd	36
	align	4
_1145:
	dd	_1056
	dd	52
	dd	59
	align	4
_1147:
	dd	_1056
	dd	53
	dd	2
	align	4
_1150:
	dd	3
	dd	0
	dd	0
	align	4
_1149:
	dd	_1056
	dd	53
	dd	19
	align	4
_1151:
	dd	_1056
	dd	54
	dd	2
_1185:
	db	"BufferTarget",0
_1186:
	db	"drehschalter",0
	align	4
_1184:
	dd	1
	dd	_1185
	dd	2
	dd	_1154
	dd	_123
	dd	-4
	dd	2
	dd	_1155
	dd	_123
	dd	-8
	dd	2
	dd	_1186
	dd	_123
	dd	-12
	dd	2
	dd	_1157
	dd	_123
	dd	-16
	dd	2
	dd	_1158
	dd	_123
	dd	-20
	dd	2
	dd	_1159
	dd	_104
	dd	-24
	dd	0
	align	4
_1160:
	dd	_1056
	dd	58
	dd	2
	align	4
_1909:
	dd	0x43340000
	align	4
_1162:
	dd	_1056
	dd	59
	dd	2
	align	4
_1164:
	dd	3
	dd	0
	dd	0
	align	4
_1163:
	dd	_1056
	dd	60
	dd	3
	align	4
_1910:
	dd	0x43b40000
	align	4
_1911:
	dd	0xc3340000
	align	4
_1165:
	dd	_1056
	dd	62
	dd	2
	align	4
_1167:
	dd	3
	dd	0
	dd	0
	align	4
_1166:
	dd	_1056
	dd	63
	dd	3
	align	4
_1912:
	dd	0x43b40000
	align	4
_1913:
	dd	0x43340000
	align	4
_1168:
	dd	_1056
	dd	65
	dd	2
	align	4
_1171:
	dd	_1056
	dd	66
	dd	2
	align	4
_1174:
	dd	3
	dd	0
	dd	0
	align	4
_1173:
	dd	_1056
	dd	66
	dd	37
	align	4
_1175:
	dd	_1056
	dd	67
	dd	2
	align	4
_1178:
	dd	3
	dd	0
	dd	0
	align	4
_1177:
	dd	_1056
	dd	67
	dd	39
	align	4
_1179:
	dd	_1056
	dd	68
	dd	2
	align	4
_1182:
	dd	3
	dd	0
	dd	0
	align	4
_1181:
	dd	_1056
	dd	68
	dd	19
	align	4
_1183:
	dd	_1056
	dd	69
	dd	2
_1197:
	db	"color",0
_1198:
	db	"R",0
_1199:
	db	"b",0
_1200:
	db	"G",0
_1201:
	db	"B",0
_1202:
	db	"A",0
_1203:
	db	"nextcolor",0
_1204:
	db	"bytes2",0
_1205:
	db	"*b",0
	align	4
_1196:
	dd	1
	dd	_1197
	dd	2
	dd	_1198
	dd	_1199
	dd	-4
	dd	2
	dd	_1200
	dd	_1199
	dd	-8
	dd	2
	dd	_1201
	dd	_1199
	dd	-12
	dd	2
	dd	_1202
	dd	_1199
	dd	-16
	dd	2
	dd	_1203
	dd	_104
	dd	-20
	dd	2
	dd	_1204
	dd	_1205
	dd	-24
	dd	0
	align	4
_1187:
	dd	_1056
	dd	73
	dd	2
	align	4
_1189:
	dd	_1056
	dd	74
	dd	2
	align	4
_1191:
	dd	_1056
	dd	75
	dd	2
	align	4
_1192:
	dd	_1056
	dd	76
	dd	2
	align	4
_1193:
	dd	_1056
	dd	77
	dd	2
	align	4
_1194:
	dd	_1056
	dd	78
	dd	2
	align	4
_1195:
	dd	_1056
	dd	80
	dd	2
_1211:
	db	"DrawBox",0
_1212:
	db	"h",0
	align	4
_1210:
	dd	1
	dd	_1211
	dd	2
	dd	_122
	dd	_123
	dd	-4
	dd	2
	dd	_124
	dd	_123
	dd	-8
	dd	2
	dd	_1113
	dd	_123
	dd	-12
	dd	2
	dd	_1212
	dd	_123
	dd	-16
	dd	0
	align	4
_1206:
	dd	_1056
	dd	84
	dd	2
	align	4
_1207:
	dd	_1056
	dd	85
	dd	2
	align	4
_1208:
	dd	_1056
	dd	87
	dd	2
	align	4
_1924:
	dd	0x40000000
	align	4
_1209:
	dd	_1056
	dd	88
	dd	2
	align	4
_1925:
	dd	0x40000000
_1249:
	db	"LinesInterselect",0
_1250:
	db	"ax",0
_1251:
	db	"ay",0
_1252:
	db	"bx",0
_1253:
	db	"by",0
_1254:
	db	"cx",0
_1255:
	db	"cy",0
_1256:
	db	"dx",0
_1257:
	db	"dy",0
_1258:
	db	"rn",0
_1259:
	db	"rd",0
	align	4
_1248:
	dd	1
	dd	_1249
	dd	2
	dd	_1250
	dd	_123
	dd	-4
	dd	2
	dd	_1251
	dd	_123
	dd	-8
	dd	2
	dd	_1252
	dd	_123
	dd	-12
	dd	2
	dd	_1253
	dd	_123
	dd	-16
	dd	2
	dd	_1254
	dd	_123
	dd	-20
	dd	2
	dd	_1255
	dd	_123
	dd	-24
	dd	2
	dd	_1256
	dd	_123
	dd	-28
	dd	2
	dd	_1257
	dd	_123
	dd	-32
	dd	2
	dd	_1258
	dd	_123
	dd	-36
	dd	2
	dd	_1259
	dd	_123
	dd	-40
	dd	0
	align	4
_1213:
	dd	_1056
	dd	92
	dd	2
	align	4
_1215:
	dd	_1056
	dd	93
	dd	2
	align	4
_1217:
	dd	_1056
	dd	94
	dd	2
	align	4
_1220:
	dd	3
	dd	0
	dd	0
	align	4
_1219:
	dd	_1056
	dd	95
	dd	3
_1243:
	db	"sn",0
_1244:
	db	"intersection_ab",0
_1245:
	db	"intersection_cd",0
_1246:
	db	"intersection_x",0
_1247:
	db	"intersection_y",0
	align	4
_1242:
	dd	3
	dd	0
	dd	2
	dd	_1243
	dd	_123
	dd	-48
	dd	2
	dd	_1244
	dd	_123
	dd	-52
	dd	2
	dd	_1245
	dd	_123
	dd	-56
	dd	2
	dd	_1246
	dd	_123
	dd	-60
	dd	2
	dd	_1247
	dd	_123
	dd	-64
	dd	0
	align	4
_1222:
	dd	_1056
	dd	97
	dd	3
	align	4
_1224:
	dd	_1056
	dd	98
	dd	3
	align	4
_1226:
	dd	_1056
	dd	99
	dd	3
	align	4
_1228:
	dd	_1056
	dd	100
	dd	3
	align	4
_1230:
	dd	_1056
	dd	101
	dd	3
	align	4
_1232:
	dd	_1056
	dd	102
	dd	3
	align	4
_1241:
	dd	3
	dd	0
	dd	0
	align	4
_1240:
	dd	_1056
	dd	102
	dd	103
_1267:
	db	"init_boostMax2D",0
_1268:
	db	"device",0
	align	4
_1266:
	dd	1
	dd	_1267
	dd	2
	dd	_1268
	dd	_1026
	dd	-4
	dd	0
	align	4
_1260:
	dd	_991
	dd	8
	dd	2
	align	4
_1265:
	dd	_991
	dd	9
	dd	2
_1472:
	db	"DrawPolyImage",0
_1473:
	db	"image",0
_1474:
	db	"xy",0
_1475:
	db	"tx",0
_1476:
	db	"ty",0
_1477:
	db	"frame",0
_1478:
	db	"[]i",0
_1479:
	db	"iframe",0
_1480:
	db	":brl.max2d.TImageFrame",0
_1481:
	db	"d3d7frame",0
_1482:
	db	":brl.d3d7max2d.TD3D7ImageFrame",0
_1483:
	db	"swidth",0
_1484:
	db	"sheight",0
_1485:
	db	"uv",0
_1486:
	db	"*f",0
_1487:
	db	"c",0
_1488:
	db	"*i",0
_1489:
	db	"xyzuv",0
	align	4
_1471:
	dd	1
	dd	_1472
	dd	2
	dd	_1473
	dd	_1005
	dd	-4
	dd	2
	dd	_1474
	dd	_988
	dd	-8
	dd	2
	dd	_1475
	dd	_123
	dd	-12
	dd	2
	dd	_1476
	dd	_123
	dd	-16
	dd	2
	dd	_1477
	dd	_104
	dd	-20
	dd	2
	dd	_1197
	dd	_1478
	dd	-24
	dd	2
	dd	_1479
	dd	_1480
	dd	-28
	dd	2
	dd	_1481
	dd	_1482
	dd	-32
	dd	2
	dd	_1483
	dd	_123
	dd	-36
	dd	2
	dd	_1484
	dd	_123
	dd	-40
	dd	2
	dd	_1485
	dd	_1486
	dd	-44
	dd	2
	dd	_1487
	dd	_1488
	dd	-48
	dd	2
	dd	_1489
	dd	_988
	dd	-52
	dd	0
	align	4
_1269:
	dd	_991
	dd	29
	dd	2
	align	4
_1274:
	dd	3
	dd	0
	dd	0
	align	4
_1273:
	dd	_991
	dd	29
	dd	37
	align	4
_1275:
	dd	_991
	dd	30
	dd	2
	align	4
_1278:
	dd	3
	dd	0
	dd	0
	align	4
_1277:
	dd	_991
	dd	30
	dd	32
	align	4
_80:
	dd	_bbStringClass
	dd	2147483647
	dd	58
	dw	98,111,111,115,116,77,97,120,50,68,58,32,114,117,110,32
	dw	102,105,114,115,116,32,39,105,110,105,116,95,98,111,111,115
	dw	116,77,97,120,50,68,40,68,51,68,55,77,97,120,50,68
	dw	68,114,105,118,101,114,40,41,41,39
	align	4
_1279:
	dd	_991
	dd	32
	dd	2
	align	4
_1283:
	dd	_991
	dd	33
	dd	2
	align	4
_1290:
	dd	_991
	dd	35
	dd	2
	align	4
_1294:
	dd	_991
	dd	36
	dd	2
	align	4
_1298:
	dd	_991
	dd	38
	dd	2
	align	4
_1300:
	dd	_991
	dd	39
	dd	2
	align	4
_1302:
	dd	_991
	dd	40
	dd	2
_1303:
	db	"f",0
	align	4
_1305:
	dd	_991
	dd	42
	dd	2
	align	4
_1309:
	dd	_991
	dd	43
	dd	2
	align	4
_1313:
	dd	_991
	dd	44
	dd	2
	align	4
_1319:
	dd	_991
	dd	45
	dd	2
	align	4
_1323:
	dd	_991
	dd	46
	dd	2
	align	4
_1329:
	dd	_991
	dd	47
	dd	2
	align	4
_1335:
	dd	_991
	dd	48
	dd	2
	align	4
_1339:
	dd	_991
	dd	49
	dd	2
	align	4
_1345:
	dd	_991
	dd	51
	dd	2
	align	4
_1346:
	dd	_991
	dd	52
	dd	2
	align	4
_1347:
	dd	_991
	dd	54
	dd	2
	align	4
_1356:
	dd	_991
	dd	55
	dd	2
	align	4
_1365:
	dd	_991
	dd	56
	dd	2
	align	4
_1370:
	dd	3
	dd	0
	dd	0
	align	4
_1367:
	dd	_991
	dd	56
	dd	16
	align	4
_1375:
	dd	3
	dd	0
	dd	0
	align	4
_1372:
	dd	_991
	dd	56
	dd	37
	align	4
_1376:
	dd	_991
	dd	58
	dd	2
	align	4
_1385:
	dd	_991
	dd	59
	dd	2
	align	4
_1394:
	dd	_991
	dd	60
	dd	2
	align	4
_1399:
	dd	3
	dd	0
	dd	0
	align	4
_1396:
	dd	_991
	dd	60
	dd	16
	align	4
_1404:
	dd	3
	dd	0
	dd	0
	align	4
_1401:
	dd	_991
	dd	60
	dd	37
	align	4
_1405:
	dd	_991
	dd	62
	dd	2
	align	4
_1414:
	dd	_991
	dd	63
	dd	2
	align	4
_1423:
	dd	_991
	dd	64
	dd	2
	align	4
_1428:
	dd	3
	dd	0
	dd	0
	align	4
_1425:
	dd	_991
	dd	64
	dd	16
	align	4
_1433:
	dd	3
	dd	0
	dd	0
	align	4
_1430:
	dd	_991
	dd	64
	dd	38
	align	4
_1434:
	dd	_991
	dd	66
	dd	2
	align	4
_1443:
	dd	_991
	dd	67
	dd	2
	align	4
_1452:
	dd	_991
	dd	68
	dd	2
	align	4
_1457:
	dd	3
	dd	0
	dd	0
	align	4
_1454:
	dd	_991
	dd	68
	dd	16
	align	4
_1462:
	dd	3
	dd	0
	dd	0
	align	4
_1459:
	dd	_991
	dd	68
	dd	38
	align	4
_1463:
	dd	_991
	dd	70
	dd	2
	align	4
_1466:
	dd	_991
	dd	71
	dd	2
_1497:
	db	"Pow2Size",0
_1498:
	db	"n",0
_1499:
	db	"t",0
	align	4
_1496:
	dd	1
	dd	_1497
	dd	2
	dd	_1498
	dd	_104
	dd	-4
	dd	2
	dd	_1499
	dd	_104
	dd	-8
	dd	0
	align	4
_1490:
	dd	_991
	dd	22
	dd	3
	align	4
_1492:
	dd	_991
	dd	23
	dd	3
	align	4
_1494:
	dd	3
	dd	0
	dd	0
	align	4
_1493:
	dd	_991
	dd	24
	dd	4
	align	4
_1495:
	dd	_991
	dd	26
	dd	3
