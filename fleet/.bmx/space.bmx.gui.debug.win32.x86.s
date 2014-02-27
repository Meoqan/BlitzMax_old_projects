	format	MS COFF
	extrn	___bb_basic_basic
	extrn	___bb_blitz_blitz
	extrn	___bb_bmploader_bmploader
	extrn	___bb_d3d7max2d_d3d7max2d
	extrn	___bb_jpgloader_jpgloader
	extrn	___bb_max2d_max2d
	extrn	___bb_pixmap_pixmap
	extrn	___bb_pngloader_pngloader
	extrn	___bb_random_random
	extrn	___bb_standardio_standardio
	extrn	___bb_system_system
	extrn	_bbATan2
	extrn	_bbAppTitle
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
	extrn	_bbStringFromInt
	extrn	_brl_blitz_ArrayBoundsError
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_d3d7max2d_D3D7Max2DDriver
	extrn	_brl_graphics_Flip
	extrn	_brl_graphics_Graphics
	extrn	_brl_graphics_SetGraphicsDriver
	extrn	_brl_linkedlist_CreateList
	extrn	_brl_max2d_Cls
	extrn	_brl_max2d_DrawImage
	extrn	_brl_max2d_DrawPoly
	extrn	_brl_max2d_DrawRect
	extrn	_brl_max2d_DrawText
	extrn	_brl_max2d_GetHandle
	extrn	_brl_max2d_GetRotation
	extrn	_brl_max2d_GetScale
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
	extrn	_brl_polledinput_MouseX
	extrn	_brl_polledinput_MouseY
	extrn	_brl_random_SeedRnd
	public	__bb_Tbot_Delete
	public	__bb_Tbot_New
	public	__bb_Tbot_draw
	public	__bb_Tbot_move
	public	__bb_Tray_Delete
	public	__bb_Tray_New
	public	__bb_main
	public	__bb_z_5fc2be0c_d56a_4480_9e42_76b90d46a332_3_0_Delete
	public	__bb_z_5fc2be0c_d56a_4480_9e42_76b90d46a332_3_0_New
	public	__bb_z_My_5fc2be0c_d56a_4480_9e42_76b90d46a332_Application
	public	__bb_z_My_5fc2be0c_d56a_4480_9e42_76b90d46a332_Delete
	public	__bb_z_My_5fc2be0c_d56a_4480_9e42_76b90d46a332_New
	public	__bb_z_My_5fc2be0c_d56a_4480_9e42_76b90d46a332_Resources
	public	__bb_z_blide_bg5fc2be0c_d56a_4480_9e42_76b90d46a332_Delete
	public	__bb_z_blide_bg5fc2be0c_d56a_4480_9e42_76b90d46a332_New
	public	_bb_BufferTarget
	public	_bb_BufferTower
	public	_bb_DrawPicture
	public	_bb_Tbot
	public	_bb_Tray
	public	_bb_Vx
	public	_bb_Vy
	public	_bb_add_bot
	public	_bb_botlist
	public	_bb_calc_move
	public	_bb_createray
	public	_bb_fenster
	public	_bb_get_ver_x
	public	_bb_get_ver_y
	public	_bb_lasttime
	public	_bb_md1
	public	_bb_msc
	public	_bb_pointx
	public	_bb_pointy
	public	_bb_raylist
	public	_bb_reset_draw
	public	_bb_scale
	public	_bb_screenx
	public	_bb_screeny
	public	_bb_tempx
	public	_bb_tguncd
	public	_bb_tgunr
	public	_bb_tgunx
	public	_bb_tguny
	public	_bb_time
	public	_bb_tshipr
	public	_bb_tshipspeed
	public	_bb_tshipx
	public	_bb_tshipy
	public	_bb_ttargetr
	public	_bb_ttargetx
	public	_bb_ttargety
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,188
	push	ebx
	push	esi
	push	edi
	cmp	dword [_488],0
	je	_489
	mov	eax,0
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_489:
	mov	dword [_488],1
	mov	dword [ebp-12],_bbNullObject
	fldz
	fstp	dword [ebp-4]
	fldz
	fstp	dword [ebp-8]
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-20],_bbEmptyArray
	mov	eax,ebp
	push	eax
	push	_457
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_system_system
	call	___bb_standardio_standardio
	call	___bb_random_random
	call	___bb_pixmap_pixmap
	call	___bb_pngloader_pngloader
	call	___bb_max2d_max2d
	call	___bb_jpgloader_jpgloader
	call	___bb_d3d7max2d_d3d7max2d
	call	___bb_bmploader_bmploader
	call	___bb_basic_basic
	push	_18
	call	_bbObjectRegisterType
	add	esp,4
	push	_19
	call	_bbObjectRegisterType
	add	esp,4
	push	_178
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_180
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_25
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_Tray
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_Tbot
	call	_bbObjectRegisterType
	add	esp,4
	push	_181
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_183
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_186]
	and	eax,1
	cmp	eax,0
	jne	_187
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_raylist],eax
	or	dword [_186],1
_187:
	push	_188
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_186]
	and	eax,2
	cmp	eax,0
	jne	_191
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_botlist],eax
	or	dword [_186],2
_191:
	push	_192
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	push	eax
	call	_brl_random_SeedRnd
	add	esp,4
	push	_194
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_195
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_196
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_186]
	and	eax,4
	cmp	eax,0
	jne	_197
	fld	dword [_bb_screenx]
	fdiv	dword [_766]
	fstp	dword [_bb_pointx]
	or	dword [_186],4
_197:
	push	_198
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_186]
	and	eax,8
	cmp	eax,0
	jne	_199
	fld	dword [_bb_screeny]
	fdiv	dword [_767]
	fstp	dword [_bb_pointy]
	or	dword [_186],8
_199:
	push	_200
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	call	_brl_d3d7max2d_D3D7Max2DDriver
	push	eax
	call	_brl_graphics_SetGraphicsDriver
	add	esp,8
	push	_201
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_20
	inc	dword [ebx+4]
	mov	eax,dword [_bbAppTitle]
	dec	dword [eax+4]
	jnz	_205
	push	eax
	call	_bbGCFree
	add	esp,4
_205:
	mov	dword [_bbAppTitle],ebx
	push	_206
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_186]
	and	eax,16
	cmp	eax,0
	jne	_208
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
	or	dword [_186],16
_208:
	push	_209
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	3
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_210
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	4
	push	12
	push	_26
	call	_brl_max2d_LoadImageFont
	add	esp,12
	push	eax
	call	_brl_max2d_SetImageFont
	add	esp,4
	push	_211
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_212
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_213
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_214
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_215
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_216
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_217
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_218
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_219
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_220
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_add_bot
	push	_221
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_222
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_186]
	and	eax,32
	cmp	eax,0
	jne	_223
	call	_bbMilliSecs
	mov	dword [_bb_lasttime],eax
	or	dword [_186],32
_223:
	push	_224
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_186]
	and	eax,64
	cmp	eax,0
	jne	_225
	call	_bbMilliSecs
	mov	dword [_bb_time],eax
	or	dword [_186],64
_225:
	push	_226
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_27
_29:
	mov	eax,ebp
	push	eax
	push	_455
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_229
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_time]
	mov	dword [_bb_lasttime],eax
	push	_230
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	mov	dword [_bb_time],eax
	push	_231
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_time]
	sub	eax,dword [_bb_lasttime]
	mov	dword [_bb_msc],eax
	push	_232
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_233
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_reset_draw
	push	_234
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_brl_polledinput_MouseDown
	add	esp,4
	mov	dword [_bb_md1],eax
	push	_235
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	49
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_236
	mov	eax,ebp
	push	eax
	push	_238
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_237
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [_bb_scale]
	call	dword [_bbOnDebugLeaveScope]
_236:
	push	_239
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	50
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_240
	mov	eax,ebp
	push	eax
	push	_242
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_241
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_scale]
	fadd	dword [_768]
	fstp	dword [_bb_scale]
	call	dword [_bbOnDebugLeaveScope]
_240:
	push	_243
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	51
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_244
	mov	eax,ebp
	push	eax
	push	_246
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_245
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_scale]
	fsub	dword [_769]
	fstp	dword [_bb_scale]
	call	dword [_bbOnDebugLeaveScope]
_244:
	push	_247
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_scale]
	fld	dword [_770]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_248
	mov	eax,ebp
	push	eax
	push	_250
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_249
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_771]
	fstp	dword [_bb_scale]
	call	dword [_bbOnDebugLeaveScope]
_248:
	push	_251
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_scale]
	fld	dword [_772]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_252
	mov	eax,ebp
	push	eax
	push	_254
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_253
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_773]
	fstp	dword [_bb_scale]
	call	dword [_bbOnDebugLeaveScope]
_252:
	push	_255
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	87
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_256
	mov	eax,ebp
	push	eax
	push	_258
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_257
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_tshipspeed]
	fadd	dword [_774]
	fstp	dword [_bb_tshipspeed]
	call	dword [_bbOnDebugLeaveScope]
_256:
	push	_259
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	83
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_260
	mov	eax,ebp
	push	eax
	push	_262
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_261
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_tshipspeed]
	fsub	dword [_775]
	fstp	dword [_bb_tshipspeed]
	call	dword [_bbOnDebugLeaveScope]
_260:
	push	_263
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_tshipspeed]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_264
	mov	eax,ebp
	push	eax
	push	_266
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_265
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [_bb_tshipspeed]
	call	dword [_bbOnDebugLeaveScope]
_264:
	push	_267
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_tshipspeed]
	fld	dword [_776]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_268
	mov	eax,ebp
	push	eax
	push	_270
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_269
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_777]
	fstp	dword [_bb_tshipspeed]
	call	dword [_bbOnDebugLeaveScope]
_268:
	push	_271
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	68
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_272
	mov	eax,ebp
	push	eax
	push	_274
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_273
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_tshipr]
	fadd	dword [_778]
	fstp	dword [_bb_tshipr]
	call	dword [_bbOnDebugLeaveScope]
_272:
	push	_275
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	65
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_276
	mov	eax,ebp
	push	eax
	push	_278
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_277
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_tshipr]
	fsub	dword [_779]
	fstp	dword [_bb_tshipr]
	call	dword [_bbOnDebugLeaveScope]
_276:
	push	_279
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_tshipr]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_280
	mov	eax,ebp
	push	eax
	push	_282
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_281
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_tshipr]
	fadd	dword [_780]
	fstp	dword [_bb_tshipr]
	call	dword [_bbOnDebugLeaveScope]
_280:
	push	_283
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_tshipr]
	fld	dword [_781]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_284
	mov	eax,ebp
	push	eax
	push	_286
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_285
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_tshipr]
	fsub	dword [_782]
	fstp	dword [_bb_tshipr]
	call	dword [_bbOnDebugLeaveScope]
_284:
	push	_287
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_tshipx]
	fstp	qword [ebp-168]
	fld	dword [_bb_tshipr]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fstp	qword [ebp-144]
	push	dword [_bb_tshipspeed]
	call	_bb_calc_move
	add	esp,4
	fld	qword [ebp-144]
	fmulp	st1,st0
	fstp	qword [ebp-144]
	fld	qword [ebp-168]
	fadd	qword [ebp-144]
	fstp	qword [ebp-168]
	fld	qword [ebp-168]
	fstp	dword [_bb_tshipx]
	push	_288
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_tshipy]
	fstp	qword [ebp-160]
	fld	dword [_bb_tshipr]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fstp	qword [ebp-152]
	push	dword [_bb_tshipspeed]
	call	_bb_calc_move
	add	esp,4
	fld	qword [ebp-152]
	fmulp	st1,st0
	fstp	qword [ebp-152]
	fld	qword [ebp-160]
	fadd	qword [ebp-152]
	fstp	qword [ebp-160]
	fld	qword [ebp-160]
	fstp	dword [_bb_tshipy]
	push	_289
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_tshipx]
	fstp	dword [_bb_Vx]
	push	_290
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_tshipy]
	fstp	dword [_bb_Vy]
	push	_291
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_MouseX
	mov	dword [ebp+-188],eax
	fild	dword [ebp+-188]
	fsub	dword [_bb_pointx]
	fdiv	dword [_bb_scale]
	fadd	dword [_bb_Vx]
	fstp	dword [_bb_ttargetx]
	push	_292
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_MouseY
	mov	dword [ebp+-188],eax
	fild	dword [ebp+-188]
	fsub	dword [_bb_pointy]
	fdiv	dword [_bb_scale]
	fadd	dword [_bb_Vy]
	fstp	dword [_bb_ttargety]
	push	_293
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_tshipr]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	qword [_783]
	fmulp	st1,st0
	fstp	dword [_bb_tgunx]
	push	_294
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_tshipr]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	qword [_784]
	fmulp	st1,st0
	fstp	dword [_bb_tguny]
	push	_295
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_tgunr]
	fstp	dword [ebp-96]
	push	1101004800
	call	_bb_calc_move
	add	esp,4
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_bb_ttargety]
	fld	dword [_bb_tshipy]
	fadd	dword [_bb_tguny]
	fsubp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	fld	dword [_bb_ttargetx]
	fld	dword [_bb_tshipx]
	fadd	dword [_bb_tgunx]
	fsubp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbATan2
	add	esp,16
	fchs
	fld	qword [_785]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_tgunr]
	call	_bb_BufferTower
	add	esp,12
	fld	dword [ebp-96]
	faddp	st1,st0
	fstp	dword [ebp-96]
	fld	dword [ebp-96]
	fstp	dword [_bb_tgunr]
	push	_296
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_tguncd],0
	jle	_297
	mov	eax,ebp
	push	eax
	push	_299
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_298
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_msc]
	sub	dword [_bb_tguncd],eax
	call	dword [_bbOnDebugLeaveScope]
_297:
	push	_300
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_md1]
	cmp	eax,0
	je	_301
	mov	eax,dword [_bb_tguncd]
	cmp	eax,0
	setle	al
	movzx	eax,al
_301:
	cmp	eax,0
	je	_303
	mov	eax,ebp
	push	eax
	push	_306
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_304
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_tguncd],250
	push	_305
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1133903872
	push	dword [_bb_tgunr]
	fld	dword [_bb_tshipy]
	fadd	dword [_bb_tguny]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_bb_tshipx]
	fadd	dword [_bb_tgunx]
	sub	esp,4
	fstp	dword [esp]
	call	_bb_createray
	add	esp,16
	call	dword [_bbOnDebugLeaveScope]
_303:
	push	_307
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbNullObject
	mov	edi,dword [_bb_botlist]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_311
	call	_brl_blitz_NullObjectError
_311:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_30
_32:
	cmp	ebx,_bbNullObject
	jne	_316
	call	_brl_blitz_NullObjectError
_316:
	push	_bb_Tbot
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-12],eax
	cmp	dword [ebp-12],_bbNullObject
	je	_30
	mov	eax,ebp
	push	eax
	push	_323
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_317
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_319
	call	_brl_blitz_NullObjectError
_319:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,4
	push	_320
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_322
	call	_brl_blitz_NullObjectError
_322:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_30:
	cmp	ebx,_bbNullObject
	jne	_314
	call	_brl_blitz_NullObjectError
_314:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_32
_31:
	push	_326
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_scale]
	push	dword [_bb_scale]
	call	_brl_max2d_SetScale
	add	esp,8
	push	_327
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1056964608
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_328
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_786]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [_bb_ttargetx]
	fsub	dword [_bb_tshipx]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-104]
	fld	qword [_787]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [_bb_ttargety]
	fsub	dword [_bb_tshipy]
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
	fstp	dword [ebp-4]
	push	_330
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_ttargety]
	fsub	dword [_bb_tshipy]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [_bb_ttargetx]
	fsub	dword [_bb_tshipx]
	sub	esp,8
	fstp	qword [esp]
	call	_bbATan2
	add	esp,16
	fchs
	fld	qword [_788]
	faddp	st1,st0
	fstp	dword [ebp-8]
	push	_332
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	100
	push	100
	call	_brl_max2d_SetColor
	add	esp,12
	push	_333
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_789]
	fdiv	dword [_bb_scale]
	sub	esp,4
	fstp	dword [esp]
	push	0
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_334
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_335
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_790]
	fdiv	dword [_bb_scale]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebp-4]
	fld	dword [_bb_tshipy]
	fmul	dword [_bb_scale]
	fstp	dword [ebp-108]
	call	_bb_get_ver_y
	fld	dword [ebp-108]
	fsubrp	st1,st0
	fstp	dword [ebp-108]
	push	dword [ebp-108]
	fld	dword [_bb_tshipx]
	fmul	dword [_bb_scale]
	fstp	dword [ebp-112]
	call	_bb_get_ver_x
	fld	dword [ebp-112]
	fsubrp	st1,st0
	fstp	dword [ebp-112]
	push	dword [ebp-112]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_336
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	100
	push	255
	push	100
	call	_brl_max2d_SetColor
	add	esp,12
	push	_337
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_791]
	fdiv	dword [_bb_scale]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_792]
	fdiv	dword [_bb_scale]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_338
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_793]
	fdiv	dword [_bb_scale]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_794]
	fdiv	dword [_bb_scale]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_bb_ttargety]
	fmul	dword [_bb_scale]
	fstp	dword [ebp-116]
	call	_bb_get_ver_y
	fld	dword [ebp-116]
	fsubrp	st1,st0
	fstp	dword [ebp-116]
	push	dword [ebp-116]
	fld	dword [_bb_ttargetx]
	fmul	dword [_bb_scale]
	fstp	dword [ebp-120]
	call	_bb_get_ver_x
	fld	dword [ebp-120]
	fsubrp	st1,st0
	fstp	dword [ebp-120]
	push	dword [ebp-120]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_339
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_340
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_341
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1084227584
	push	1084227584
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_342
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_tshipr]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_343
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1092616192
	push	1101004800
	fld	dword [_bb_tshipy]
	fmul	dword [_bb_scale]
	fstp	dword [ebp-124]
	call	_bb_get_ver_y
	fld	dword [ebp-124]
	fsubrp	st1,st0
	fstp	dword [ebp-124]
	push	dword [ebp-124]
	fld	dword [_bb_tshipx]
	fmul	dword [_bb_scale]
	fstp	dword [ebp-128]
	call	_bb_get_ver_x
	fld	dword [ebp-128]
	fsubrp	st1,st0
	fstp	dword [ebp-128]
	push	dword [ebp-128]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_344
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_reset_draw
	push	_345
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_346
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_347
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	mov	eax,dword [_bb_raylist]
	mov	dword [ebp-180],eax
	mov	ebx,dword [ebp-180]
	cmp	ebx,_bbNullObject
	jne	_351
	call	_brl_blitz_NullObjectError
_351:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-184],eax
	jmp	_33
_35:
	mov	ebx,dword [ebp-184]
	cmp	ebx,_bbNullObject
	jne	_356
	call	_brl_blitz_NullObjectError
_356:
	push	_bb_Tray
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-16],eax
	cmp	dword [ebp-16],_bbNullObject
	je	_33
	mov	eax,ebp
	push	eax
	push	_429
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_357
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_359
	call	_brl_blitz_NullObjectError
_359:
	mov	eax,dword [_bb_msc]
	add	dword [ebx+24],eax
	push	_361
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_363
	call	_brl_blitz_NullObjectError
_363:
	fld	dword [_795]
	mov	eax,dword [ebx+24]
	mov	dword [ebp+-188],eax
	fild	dword [ebp+-188]
	fdiv	dword [_796]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_364
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_365
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	6
	push	_366
	call	_bbArrayNew1D
	add	esp,8
	mov	dword [ebp-20],eax
	push	_368
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-20]
	cmp	ebx,dword [eax+20]
	jb	_370
	call	_brl_blitz_ArrayBoundsError
_370:
	mov	eax,dword [ebp-20]
	shl	ebx,2
	add	eax,ebx
	mov	edi,eax
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_373
	call	_brl_blitz_NullObjectError
_373:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_375
	call	_brl_blitz_NullObjectError
_375:
	fld	dword [esi+8]
	fmul	dword [_bb_scale]
	fstp	dword [ebp-84]
	call	_bb_get_ver_x
	fld	dword [ebp-84]
	fsubrp	st1,st0
	fstp	dword [ebp-84]
	fld	dword [ebp-84]
	fstp	qword [ebp-92]
	fld	dword [ebx+16]
	fsub	dword [_797]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	dword [_798]
	fmul	dword [_bb_scale]
	fmulp	st1,st0
	fld	qword [ebp-92]
	faddp	st1,st0
	fstp	qword [ebp-92]
	fld	qword [ebp-92]
	fstp	dword [edi+24]
	push	_376
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-20]
	cmp	ebx,dword [eax+20]
	jb	_378
	call	_brl_blitz_ArrayBoundsError
_378:
	mov	eax,dword [ebp-20]
	shl	ebx,2
	add	eax,ebx
	mov	edi,eax
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_381
	call	_brl_blitz_NullObjectError
_381:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_383
	call	_brl_blitz_NullObjectError
_383:
	fld	dword [esi+12]
	fmul	dword [_bb_scale]
	fstp	dword [ebp-72]
	call	_bb_get_ver_y
	fld	dword [ebp-72]
	fsubrp	st1,st0
	fstp	dword [ebp-72]
	fld	dword [ebp-72]
	fstp	qword [ebp-80]
	fld	dword [ebx+16]
	fsub	dword [_799]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	dword [_800]
	fmul	dword [_bb_scale]
	fmulp	st1,st0
	fld	qword [ebp-80]
	faddp	st1,st0
	fstp	qword [ebp-80]
	fld	qword [ebp-80]
	fstp	dword [edi+24]
	push	_384
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [ebp-20]
	cmp	ebx,dword [eax+20]
	jb	_386
	call	_brl_blitz_ArrayBoundsError
_386:
	mov	eax,dword [ebp-20]
	shl	ebx,2
	add	eax,ebx
	mov	edi,eax
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_389
	call	_brl_blitz_NullObjectError
_389:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_391
	call	_brl_blitz_NullObjectError
_391:
	fld	dword [esi+8]
	fmul	dword [_bb_scale]
	fstp	dword [ebp-60]
	call	_bb_get_ver_x
	fld	dword [ebp-60]
	fsubrp	st1,st0
	fstp	dword [ebp-60]
	fld	dword [ebp-60]
	fstp	qword [ebp-68]
	fld	dword [ebx+16]
	fadd	dword [_801]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	dword [_802]
	fmul	dword [_bb_scale]
	fmulp	st1,st0
	fld	qword [ebp-68]
	faddp	st1,st0
	fstp	qword [ebp-68]
	fld	qword [ebp-68]
	fstp	dword [edi+24]
	push	_392
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [ebp-20]
	cmp	ebx,dword [eax+20]
	jb	_394
	call	_brl_blitz_ArrayBoundsError
_394:
	mov	eax,dword [ebp-20]
	shl	ebx,2
	add	eax,ebx
	mov	edi,eax
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_397
	call	_brl_blitz_NullObjectError
_397:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_399
	call	_brl_blitz_NullObjectError
_399:
	fld	dword [esi+12]
	fmul	dword [_bb_scale]
	fstp	dword [ebp-48]
	call	_bb_get_ver_y
	fld	dword [ebp-48]
	fsubrp	st1,st0
	fstp	dword [ebp-48]
	fld	dword [ebp-48]
	fstp	qword [ebp-56]
	fld	dword [ebx+16]
	fadd	dword [_803]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	dword [_804]
	fmul	dword [_bb_scale]
	fmulp	st1,st0
	fld	qword [ebp-56]
	faddp	st1,st0
	fstp	qword [ebp-56]
	fld	qword [ebp-56]
	fstp	dword [edi+24]
	push	_400
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,4
	mov	eax,dword [ebp-20]
	cmp	ebx,dword [eax+20]
	jb	_402
	call	_brl_blitz_ArrayBoundsError
_402:
	mov	eax,dword [ebp-20]
	shl	ebx,2
	add	eax,ebx
	mov	dword [ebp-176],eax
	mov	edi,dword [ebp-16]
	cmp	edi,_bbNullObject
	jne	_405
	call	_brl_blitz_NullObjectError
_405:
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_407
	call	_brl_blitz_NullObjectError
_407:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_409
	call	_brl_blitz_NullObjectError
_409:
	fld	dword [edi+8]
	fmul	dword [_bb_scale]
	fstp	dword [ebp-36]
	call	_bb_get_ver_x
	fld	dword [ebp-36]
	fsubrp	st1,st0
	fstp	dword [ebp-36]
	fld	dword [ebp-36]
	fstp	qword [ebp-44]
	fld	dword [esi+16]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	dword [ebx+20]
	fmul	dword [_bb_scale]
	fmulp	st1,st0
	fld	qword [ebp-44]
	faddp	st1,st0
	fstp	qword [ebp-44]
	fld	qword [ebp-44]
	mov	eax,dword [ebp-176]
	fstp	dword [eax+24]
	push	_410
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,5
	mov	eax,dword [ebp-20]
	cmp	ebx,dword [eax+20]
	jb	_412
	call	_brl_blitz_ArrayBoundsError
_412:
	mov	eax,dword [ebp-20]
	shl	ebx,2
	add	eax,ebx
	mov	dword [ebp-172],eax
	mov	edi,dword [ebp-16]
	cmp	edi,_bbNullObject
	jne	_415
	call	_brl_blitz_NullObjectError
_415:
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_417
	call	_brl_blitz_NullObjectError
_417:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_419
	call	_brl_blitz_NullObjectError
_419:
	fld	dword [edi+12]
	fmul	dword [_bb_scale]
	fstp	dword [ebp-24]
	call	_bb_get_ver_y
	fld	dword [ebp-24]
	fsubrp	st1,st0
	fstp	dword [ebp-24]
	fld	dword [ebp-24]
	fstp	qword [ebp-32]
	fld	dword [esi+16]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	dword [ebx+20]
	fmul	dword [_bb_scale]
	fmulp	st1,st0
	fld	qword [ebp-32]
	faddp	st1,st0
	fstp	qword [ebp-32]
	fld	qword [ebp-32]
	mov	eax,dword [ebp-172]
	fstp	dword [eax+24]
	push	_420
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-20]
	call	_brl_max2d_DrawPoly
	add	esp,4
	push	_421
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_423
	call	_brl_blitz_NullObjectError
_423:
	cmp	dword [ebx+24],100
	jle	_424
	mov	eax,ebp
	push	eax
	push	_428
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_425
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_raylist]
	cmp	ebx,_bbNullObject
	jne	_427
	call	_brl_blitz_NullObjectError
_427:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_424:
	call	dword [_bbOnDebugLeaveScope]
_33:
	mov	ebx,dword [ebp-184]
	cmp	ebx,_bbNullObject
	jne	_354
	call	_brl_blitz_NullObjectError
_354:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_35
_34:
	push	_434
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_435
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_scale]
	push	dword [_bb_scale]
	call	_brl_max2d_SetScale
	add	esp,8
	push	_436
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	100
	push	100
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_437
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1073741824
	push	1073741824
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_438
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_tgunr]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_439
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1082130432
	push	1086324736
	fld	dword [_bb_tshipy]
	fadd	dword [_bb_tguny]
	fmul	dword [_bb_scale]
	fstp	dword [ebp-132]
	call	_bb_get_ver_y
	fld	dword [ebp-132]
	fsubrp	st1,st0
	fstp	dword [ebp-132]
	push	dword [ebp-132]
	fld	dword [_bb_tshipx]
	fadd	dword [_bb_tgunx]
	fmul	dword [_bb_scale]
	fstp	dword [ebp-136]
	call	_bb_get_ver_x
	fld	dword [ebp-136]
	fsubrp	st1,st0
	fstp	dword [ebp-136]
	push	dword [ebp-136]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_440
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_reset_draw
	push	_441
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1092616192
	push	1092616192
	push	dword [_bb_scale]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_36
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_442
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1101004800
	push	1092616192
	push	dword [_bb_tshipspeed]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_37
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_443
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	100
	push	100
	push	100
	call	_brl_max2d_SetColor
	add	esp,12
	push	_444
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1097859072
	push	1140457472
	fld	dword [_bb_screeny]
	fsub	dword [_805]
	sub	esp,4
	fstp	dword [esp]
	push	1092616192
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_445
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	155
	push	155
	push	155
	call	_brl_max2d_SetColor
	add	esp,12
	push	_446
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1097859072
	push	1084227584
	fld	dword [_bb_screeny]
	fsub	dword [_806]
	sub	esp,4
	fstp	dword [esp]
	push	1121714176
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_447
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1097859072
	push	1084227584
	fld	dword [_bb_screeny]
	fsub	dword [_807]
	sub	esp,4
	fstp	dword [esp]
	push	1101004800
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_448
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1097859072
	push	1084227584
	fld	dword [_bb_screeny]
	fsub	dword [_808]
	sub	esp,4
	fstp	dword [esp]
	push	1140785152
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_449
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_450
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	push	dword [_bb_scale]
	call	_brl_max2d_SetScale
	add	esp,8
	push	_451
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1084227584
	push	1120403456
	fld	dword [_bb_screeny]
	fsub	dword [_809]
	sub	esp,4
	fstp	dword [esp]
	push	1092616192
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_452
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	_453
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_screeny]
	fsub	dword [_810]
	sub	esp,4
	fstp	dword [esp]
	push	1092616192
	push	_38
	fld	dword [_811]
	fdiv	dword [_bb_scale]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_454
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_27:
	push	27
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	jne	_227
	call	_brl_polledinput_AppTerminate
_227:
	cmp	eax,0
	je	_29
_28:
	push	_456
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	mov	ebx,0
	jmp	_106
_106:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_5fc2be0c_d56a_4480_9e42_76b90d46a332_3_0_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_491
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_18
	push	ebp
	push	_490
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_109
_109:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_5fc2be0c_d56a_4480_9e42_76b90d46a332_3_0_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_112:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_494
_494:
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_blide_bg5fc2be0c_d56a_4480_9e42_76b90d46a332_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_496
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_19
	push	ebp
	push	_495
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_115
_115:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_blide_bg5fc2be0c_d56a_4480_9e42_76b90d46a332_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_118:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_498
_498:
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_My_5fc2be0c_d56a_4480_9e42_76b90d46a332_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_500
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_25
	push	ebp
	push	_499
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_121
_121:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_My_5fc2be0c_d56a_4480_9e42_76b90d46a332_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_124:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_501
_501:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tray_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_503
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Tray
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
	push	ebp
	push	_502
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_127
_127:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tray_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_130:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_504
_504:
	mov	esp,ebp
	pop	ebp
	ret
_bb_createray:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	fld	dword [ebp+20]
	fstp	dword [ebp-16]
	mov	dword [ebp-20],_bbNullObject
	push	ebp
	push	_526
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_505
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_Tray
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-20],eax
	push	_507
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_raylist]
	cmp	ebx,_bbNullObject
	jne	_509
	call	_brl_blitz_NullObjectError
_509:
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_510
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_512
	call	_brl_blitz_NullObjectError
_512:
	fld	dword [ebp-4]
	fstp	dword [ebx+8]
	push	_514
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_516
	call	_brl_blitz_NullObjectError
_516:
	fld	dword [ebp-8]
	fstp	dword [ebx+12]
	push	_518
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_520
	call	_brl_blitz_NullObjectError
_520:
	fld	dword [ebp-12]
	fstp	dword [ebx+16]
	push	_522
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_524
	call	_brl_blitz_NullObjectError
_524:
	fld	dword [ebp-16]
	fstp	dword [ebx+20]
	mov	ebx,0
	jmp	_136
_136:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
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
	push	_530
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
	fld	dword [_897]
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
	fld	dword [_898]
	fstp	dword [eax+32]
	mov	eax,dword [ebp-4]
	mov	dword [eax+36],0
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+40]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+44]
	mov	eax,dword [ebp-4]
	fld	dword [_899]
	fstp	dword [eax+48]
	push	ebp
	push	_529
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_139
_139:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tbot_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_142:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_531
_531:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tbot_move:
	push	ebp
	mov	ebp,esp
	sub	esp,92
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,ebp
	push	eax
	push	_604
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_532
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_534
	call	_brl_blitz_NullObjectError
_534:
	fld	dword [_904]
	fstp	dword [ebx+20]
	push	_536
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_538
	call	_brl_blitz_NullObjectError
_538:
	mov	dword [ebp-88],ebx
	mov	eax,dword [ebp-4]
	mov	dword [ebp-72],eax
	cmp	dword [ebp-72],_bbNullObject
	jne	_541
	call	_brl_blitz_NullObjectError
_541:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-64],eax
	cmp	dword [ebp-64],_bbNullObject
	jne	_543
	call	_brl_blitz_NullObjectError
_543:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-48],eax
	cmp	dword [ebp-48],_bbNullObject
	jne	_545
	call	_brl_blitz_NullObjectError
_545:
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_547
	call	_brl_blitz_NullObjectError
_547:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_549
	call	_brl_blitz_NullObjectError
_549:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_551
	call	_brl_blitz_NullObjectError
_551:
	mov	eax,dword [ebp-72]
	fld	dword [eax+16]
	fstp	dword [ebp-8]
	push	1092616192
	call	_bb_calc_move
	add	esp,4
	sub	esp,4
	fstp	dword [esp]
	fld	dword [esi+44]
	fsub	dword [ebx+12]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-48]
	fld	dword [eax+40]
	fsub	dword [edi+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbATan2
	add	esp,16
	fchs
	fld	qword [_905]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-64]
	push	dword [eax+16]
	call	_bb_BufferTower
	add	esp,12
	fld	dword [ebp-8]
	faddp	st1,st0
	fstp	dword [ebp-8]
	fld	dword [ebp-8]
	mov	eax,dword [ebp-88]
	fstp	dword [eax+16]
	push	_552
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_554
	call	_brl_blitz_NullObjectError
_554:
	mov	dword [ebp-56],ebx
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_557
	call	_brl_blitz_NullObjectError
_557:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_559
	call	_brl_blitz_NullObjectError
_559:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_561
	call	_brl_blitz_NullObjectError
_561:
	fld	dword [edi+8]
	fstp	qword [ebp-44]
	fld	dword [esi+16]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fstp	qword [ebp-20]
	push	dword [ebx+20]
	call	_bb_calc_move
	add	esp,4
	fld	qword [ebp-20]
	fmulp	st1,st0
	fstp	qword [ebp-20]
	fld	qword [ebp-44]
	fadd	qword [ebp-20]
	fstp	qword [ebp-44]
	fld	qword [ebp-44]
	mov	eax,dword [ebp-56]
	fstp	dword [eax+8]
	push	_562
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_564
	call	_brl_blitz_NullObjectError
_564:
	mov	dword [ebp-60],ebx
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_567
	call	_brl_blitz_NullObjectError
_567:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_569
	call	_brl_blitz_NullObjectError
_569:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_571
	call	_brl_blitz_NullObjectError
_571:
	fld	dword [edi+12]
	fstp	qword [ebp-36]
	fld	dword [esi+16]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fstp	qword [ebp-28]
	push	dword [ebx+20]
	call	_bb_calc_move
	add	esp,4
	fld	qword [ebp-28]
	fmulp	st1,st0
	fstp	qword [ebp-28]
	fld	qword [ebp-36]
	fadd	qword [ebp-28]
	fstp	qword [ebp-36]
	fld	qword [ebp-36]
	mov	eax,dword [ebp-60]
	fstp	dword [eax+12]
	push	_572
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_574
	call	_brl_blitz_NullObjectError
_574:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_577
	call	_brl_blitz_NullObjectError
_577:
	fld	dword [esi+16]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	qword [_906]
	fmulp	st1,st0
	fstp	dword [ebx+24]
	push	_578
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_580
	call	_brl_blitz_NullObjectError
_580:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_583
	call	_brl_blitz_NullObjectError
_583:
	fld	dword [esi+16]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	qword [_907]
	fmulp	st1,st0
	fstp	dword [ebx+28]
	push	_584
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_586
	call	_brl_blitz_NullObjectError
_586:
	mov	dword [ebp-92],ebx
	mov	eax,dword [ebp-4]
	mov	dword [ebp-84],eax
	cmp	dword [ebp-84],_bbNullObject
	jne	_589
	call	_brl_blitz_NullObjectError
_589:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-80],eax
	cmp	dword [ebp-80],_bbNullObject
	jne	_591
	call	_brl_blitz_NullObjectError
_591:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-76],eax
	cmp	dword [ebp-76],_bbNullObject
	jne	_593
	call	_brl_blitz_NullObjectError
_593:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-68],eax
	cmp	dword [ebp-68],_bbNullObject
	jne	_595
	call	_brl_blitz_NullObjectError
_595:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-52],eax
	cmp	dword [ebp-52],_bbNullObject
	jne	_597
	call	_brl_blitz_NullObjectError
_597:
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_599
	call	_brl_blitz_NullObjectError
_599:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_601
	call	_brl_blitz_NullObjectError
_601:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_603
	call	_brl_blitz_NullObjectError
_603:
	mov	eax,dword [ebp-84]
	fld	dword [eax+32]
	fstp	dword [ebp-12]
	push	1101004800
	call	_bb_calc_move
	add	esp,4
	sub	esp,4
	fstp	dword [esp]
	fld	dword [edi+44]
	fld	dword [esi+12]
	fadd	dword [ebx+28]
	fsubp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-76]
	fld	dword [eax+40]
	mov	eax,dword [ebp-68]
	fld	dword [eax+8]
	mov	eax,dword [ebp-52]
	fadd	dword [eax+24]
	fsubp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbATan2
	add	esp,16
	fchs
	fld	qword [_908]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-80]
	push	dword [eax+32]
	call	_bb_BufferTower
	add	esp,12
	fld	dword [ebp-12]
	faddp	st1,st0
	fstp	dword [ebp-12]
	fld	dword [ebp-12]
	mov	eax,dword [ebp-92]
	fstp	dword [eax+32]
	mov	ebx,0
	jmp	_145
_145:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tbot_draw:
	push	ebp
	mov	ebp,esp
	sub	esp,32
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,ebp
	push	eax
	push	_639
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_605
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_reset_draw
	push	_606
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_scale]
	push	dword [_bb_scale]
	call	_brl_max2d_SetScale
	add	esp,8
	push	_607
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	_608
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1084227584
	push	1084227584
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_609
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_611
	call	_brl_blitz_NullObjectError
_611:
	push	dword [ebx+16]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_612
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_614
	call	_brl_blitz_NullObjectError
_614:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_616
	call	_brl_blitz_NullObjectError
_616:
	push	1092616192
	push	1101004800
	fld	dword [ebx+12]
	fmul	dword [_bb_scale]
	fstp	dword [ebp-8]
	call	_bb_get_ver_y
	fld	dword [ebp-8]
	fsubrp	st1,st0
	fstp	dword [ebp-8]
	push	dword [ebp-8]
	fld	dword [esi+8]
	fmul	dword [_bb_scale]
	fstp	dword [ebp-12]
	call	_bb_get_ver_x
	fld	dword [ebp-12]
	fsubrp	st1,st0
	fstp	dword [ebp-12]
	push	dword [ebp-12]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_617
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	100
	push	100
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_618
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1073741824
	push	1073741824
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_619
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_621
	call	_brl_blitz_NullObjectError
_621:
	push	dword [ebx+32]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_622
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [ebp-32],eax
	cmp	dword [ebp-32],_bbNullObject
	jne	_624
	call	_brl_blitz_NullObjectError
_624:
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_626
	call	_brl_blitz_NullObjectError
_626:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_628
	call	_brl_blitz_NullObjectError
_628:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_630
	call	_brl_blitz_NullObjectError
_630:
	push	1082130432
	push	1086324736
	fld	dword [esi+12]
	fadd	dword [ebx+28]
	fmul	dword [_bb_scale]
	fstp	dword [ebp-16]
	call	_bb_get_ver_y
	fld	dword [ebp-16]
	fsubrp	st1,st0
	fstp	dword [ebp-16]
	push	dword [ebp-16]
	mov	eax,dword [ebp-32]
	fld	dword [eax+8]
	fadd	dword [edi+24]
	fmul	dword [_bb_scale]
	fstp	dword [ebp-20]
	call	_bb_get_ver_x
	fld	dword [ebp-20]
	fsubrp	st1,st0
	fstp	dword [ebp-20]
	push	dword [ebp-20]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_631
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1045220557
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_632
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	100
	push	100
	call	_brl_max2d_SetColor
	add	esp,12
	push	_633
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_940]
	fdiv	dword [_bb_scale]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_941]
	fdiv	dword [_bb_scale]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_634
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_636
	call	_brl_blitz_NullObjectError
_636:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_638
	call	_brl_blitz_NullObjectError
_638:
	fld	dword [_942]
	fdiv	dword [_bb_scale]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_943]
	fdiv	dword [_bb_scale]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebx+44]
	fmul	dword [_bb_scale]
	fstp	dword [ebp-24]
	call	_bb_get_ver_y
	fld	dword [ebp-24]
	fsubrp	st1,st0
	fstp	dword [ebp-24]
	push	dword [ebp-24]
	fld	dword [esi+40]
	fmul	dword [_bb_scale]
	fstp	dword [ebp-28]
	call	_bb_get_ver_x
	fld	dword [ebp-28]
	fsubrp	st1,st0
	fstp	dword [ebp-28]
	push	dword [ebp-28]
	call	_brl_max2d_DrawRect
	add	esp,16
	mov	ebx,0
	jmp	_148
_148:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_add_bot:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	dword [ebp-4],_bbNullObject
	push	ebp
	push	_645
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_640
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_Tbot
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-4],eax
	push	_642
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_botlist]
	cmp	ebx,_bbNullObject
	jne	_644
	call	_brl_blitz_NullObjectError
_644:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,0
	jmp	_150
_150:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
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
	push	_674
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_648
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-24]
	push	_651
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-28]
	push	_653
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	eax,dword [ebp-28]
	push	eax
	lea	eax,dword [ebp-24]
	push	eax
	call	_brl_max2d_GetScale
	add	esp,8
	push	_654
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-32]
	push	_656
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-36]
	push	_658
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	eax,dword [ebp-36]
	push	eax
	lea	eax,dword [ebp-32]
	push	eax
	call	_brl_max2d_GetHandle
	add	esp,8
	push	_659
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_661
	call	_brl_blitz_NullObjectError
_661:
	fld	dword [ebp-16]
	mov	eax,dword [ebx+8]
	mov	dword [ebp+-80],eax
	fild	dword [ebp+-80]
	fdivp	st1,st0
	fstp	dword [ebp-40]
	push	_663
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_665
	call	_brl_blitz_NullObjectError
_665:
	fld	dword [ebp-20]
	mov	eax,dword [ebx+12]
	mov	dword [ebp+-80],eax
	fild	dword [ebp+-80]
	fdivp	st1,st0
	fstp	dword [ebp-44]
	push	_667
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
	push	_668
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_959]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-60]
	fld	qword [_960]
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
	push	_670
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
	fld	qword [_961]
	faddp	st1,st0
	fstp	dword [ebp-52]
	push	_672
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
	push	_673
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-28]
	push	dword [ebp-24]
	call	_brl_max2d_SetScale
	add	esp,8
	mov	ebx,0
	jmp	_157
_157:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_reset_draw:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	ebp
	push	_693
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_687
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_688
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_689
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_690
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_691
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	_692
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	call	_brl_max2d_SetOrigin
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
_bb_calc_move:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	push	ebp
	push	_696
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_695
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	mov	eax,dword [_bb_msc]
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	fmulp	st1,st0
	fdiv	dword [_968]
	fstp	dword [ebp-8]
	jmp	_162
_162:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-8]
	mov	esp,ebp
	pop	ebp
	ret
_bb_get_ver_x:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebp
	push	_700
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_699
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_Vx]
	fmul	dword [_bb_scale]
	fsub	dword [_bb_pointx]
	fstp	dword [ebp-4]
	jmp	_164
_164:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-4]
	mov	esp,ebp
	pop	ebp
	ret
_bb_get_ver_y:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebp
	push	_703
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_702
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_Vy]
	fmul	dword [_bb_scale]
	fsub	dword [_bb_pointy]
	fstp	dword [ebp-4]
	jmp	_166
_166:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-4]
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
	push	_731
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_705
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fsub	dword [ebp-8]
	fadd	dword [_981]
	fstp	dword [ebp-16]
	push	_707
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_39
_41:
	push	ebp
	push	_709
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_708
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fadd	dword [_982]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
_39:
	fld	dword [ebp-16]
	fld	dword [_983]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_41
_40:
	push	_710
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_42
_44:
	push	ebp
	push	_712
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_711
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fsub	dword [_984]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
_42:
	fld	dword [ebp-16]
	fld	dword [_985]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_44
_43:
	push	_713
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-20]
	mov	dword [ebp-24],0
	push	_716
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
	jne	_717
	push	ebp
	push	_720
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_718
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fchs
	fstp	dword [ebp-20]
	push	_719
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],1
	call	dword [_bbOnDebugLeaveScope]
_717:
	push	_721
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
	jne	_722
	push	ebp
	push	_725
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_723
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fstp	dword [ebp-20]
	push	_724
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],1
	call	dword [_bbOnDebugLeaveScope]
_722:
	push	_726
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-24],0
	jne	_727
	push	ebp
	push	_729
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_728
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fchs
	fstp	dword [ebp-20]
	call	dword [_bbOnDebugLeaveScope]
_727:
	push	_730
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-20]
	fstp	dword [ebp-28]
	jmp	_171
_171:
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
	push	_763
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_739
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fsub	dword [ebp-8]
	fadd	dword [_993]
	fstp	dword [ebp-16]
	push	_741
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_45
_47:
	push	ebp
	push	_743
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_742
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fadd	dword [_994]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
_45:
	fld	dword [ebp-16]
	fld	dword [_995]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_47
_46:
	push	_744
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_48
_50:
	push	ebp
	push	_746
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_745
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fsub	dword [_996]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
_48:
	fld	dword [ebp-16]
	fld	dword [_997]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_50
_49:
	push	_747
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-20]
	mov	dword [ebp-24],0
	push	_750
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
	jne	_751
	push	ebp
	push	_753
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_752
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],1
	call	dword [_bbOnDebugLeaveScope]
_751:
	push	_754
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
	jne	_755
	push	ebp
	push	_757
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_756
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],1
	call	dword [_bbOnDebugLeaveScope]
_755:
	push	_758
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-24],0
	jne	_759
	push	ebp
	push	_761
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_760
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-20]
	call	dword [_bbOnDebugLeaveScope]
_759:
	push	_762
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-20]
	fstp	dword [ebp-28]
	jmp	_176
_176:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-28]
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_488:
	dd	0
_458:
	db	"space",0
_459:
	db	"My",0
_460:
	db	":z_My_5fc2be0c_d56a_4480_9e42_76b90d46a332",0
	align	4
_182:
	dd	_bbNullObject
_461:
	db	"raylist",0
_462:
	db	":brl.linkedlist.TList",0
	align	4
_bb_raylist:
	dd	_bbNullObject
_463:
	db	"botlist",0
	align	4
_bb_botlist:
	dd	_bbNullObject
_464:
	db	"screenx",0
_86:
	db	"f",0
	align	4
_bb_screenx:
	dd	0x44a8c000
_465:
	db	"screeny",0
	align	4
_bb_screeny:
	dd	0x44480000
_466:
	db	"pointx",0
	align	4
_bb_pointx:
	dd	0x0
_467:
	db	"pointy",0
	align	4
_bb_pointy:
	dd	0x0
_468:
	db	"fenster",0
_469:
	db	":brl.graphics.TGraphics",0
	align	4
_bb_fenster:
	dd	_bbNullObject
_470:
	db	"Vx",0
	align	4
_bb_Vx:
	dd	0x0
_471:
	db	"Vy",0
	align	4
_bb_Vy:
	dd	0x0
_472:
	db	"scale",0
	align	4
_bb_scale:
	dd	0x3f800000
_473:
	db	"tempx",0
	align	4
_bb_tempx:
	dd	0x0
_474:
	db	"tshipx",0
	align	4
_bb_tshipx:
	dd	0x0
_475:
	db	"tshipy",0
	align	4
_bb_tshipy:
	dd	0x0
_476:
	db	"tshipr",0
	align	4
_bb_tshipr:
	dd	0x43870000
_477:
	db	"tshipspeed",0
	align	4
_bb_tshipspeed:
	dd	0x0
_478:
	db	"tgunx",0
	align	4
_bb_tgunx:
	dd	0x0
_479:
	db	"tguny",0
	align	4
_bb_tguny:
	dd	0x0
_480:
	db	"tgunr",0
	align	4
_bb_tgunr:
	dd	0x43870000
_481:
	db	"tguncd",0
_73:
	db	"i",0
	align	4
_bb_tguncd:
	dd	0
_482:
	db	"ttargetx",0
	align	4
_bb_ttargetx:
	dd	0x0
_483:
	db	"ttargety",0
	align	4
_bb_ttargety:
	dd	0x0
_484:
	db	"ttargetr",0
	align	4
_bb_ttargetr:
	dd	0x43870000
_485:
	db	"md1",0
	align	4
_bb_md1:
	dd	0
_486:
	db	"msc",0
	align	4
_bb_msc:
	dd	0
_487:
	db	"lasttime",0
	align	4
_bb_lasttime:
	dd	0
_90:
	db	"time",0
	align	4
_bb_time:
	dd	0
	align	4
_457:
	dd	1
	dd	_458
	dd	4
	dd	_459
	dd	_460
	dd	_182
	dd	4
	dd	_461
	dd	_462
	dd	_bb_raylist
	dd	4
	dd	_463
	dd	_462
	dd	_bb_botlist
	dd	4
	dd	_464
	dd	_86
	dd	_bb_screenx
	dd	4
	dd	_465
	dd	_86
	dd	_bb_screeny
	dd	4
	dd	_466
	dd	_86
	dd	_bb_pointx
	dd	4
	dd	_467
	dd	_86
	dd	_bb_pointy
	dd	4
	dd	_468
	dd	_469
	dd	_bb_fenster
	dd	4
	dd	_470
	dd	_86
	dd	_bb_Vx
	dd	4
	dd	_471
	dd	_86
	dd	_bb_Vy
	dd	4
	dd	_472
	dd	_86
	dd	_bb_scale
	dd	4
	dd	_473
	dd	_86
	dd	_bb_tempx
	dd	4
	dd	_474
	dd	_86
	dd	_bb_tshipx
	dd	4
	dd	_475
	dd	_86
	dd	_bb_tshipy
	dd	4
	dd	_476
	dd	_86
	dd	_bb_tshipr
	dd	4
	dd	_477
	dd	_86
	dd	_bb_tshipspeed
	dd	4
	dd	_478
	dd	_86
	dd	_bb_tgunx
	dd	4
	dd	_479
	dd	_86
	dd	_bb_tguny
	dd	4
	dd	_480
	dd	_86
	dd	_bb_tgunr
	dd	4
	dd	_481
	dd	_73
	dd	_bb_tguncd
	dd	4
	dd	_482
	dd	_86
	dd	_bb_ttargetx
	dd	4
	dd	_483
	dd	_86
	dd	_bb_ttargety
	dd	4
	dd	_484
	dd	_86
	dd	_bb_ttargetr
	dd	4
	dd	_485
	dd	_73
	dd	_bb_md1
	dd	4
	dd	_486
	dd	_73
	dd	_bb_msc
	dd	4
	dd	_487
	dd	_73
	dd	_bb_lasttime
	dd	4
	dd	_90
	dd	_73
	dd	_bb_time
	dd	0
_64:
	db	"z_5fc2be0c_d56a_4480_9e42_76b90d46a332_3_0",0
_65:
	db	"New",0
_66:
	db	"()i",0
_67:
	db	"Delete",0
	align	4
_63:
	dd	2
	dd	_64
	dd	6
	dd	_65
	dd	_66
	dd	16
	dd	6
	dd	_67
	dd	_66
	dd	20
	dd	0
	align	4
_18:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_63
	dd	8
	dd	__bb_z_5fc2be0c_d56a_4480_9e42_76b90d46a332_3_0_New
	dd	__bb_z_5fc2be0c_d56a_4480_9e42_76b90d46a332_3_0_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_69:
	db	"z_blide_bg5fc2be0c_d56a_4480_9e42_76b90d46a332",0
_70:
	db	"Name",0
_71:
	db	"$",0
	align	4
_20:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	115,112,97,99,101
_72:
	db	"MajorVersion",0
	align	4
_51:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	48
_74:
	db	"MinorVersion",0
_75:
	db	"Revision",0
	align	4
_55:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	49
_76:
	db	"VersionString",0
	align	4
_56:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	48,46,48,46,49
_77:
	db	"AssemblyInfo",0
	align	4
_62:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	115,112,97,99,101,32,48,46,48,46,49
_78:
	db	"Platform",0
	align	4
_23:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	87,105,110,51,50
_79:
	db	"Architecture",0
	align	4
_24:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	120,56,54
_80:
	db	"DebugOn",0
	align	4
_68:
	dd	2
	dd	_69
	dd	1
	dd	_70
	dd	_71
	dd	_20
	dd	1
	dd	_72
	dd	_73
	dd	_51
	dd	1
	dd	_74
	dd	_73
	dd	_51
	dd	1
	dd	_75
	dd	_73
	dd	_55
	dd	1
	dd	_76
	dd	_71
	dd	_56
	dd	1
	dd	_77
	dd	_71
	dd	_62
	dd	1
	dd	_78
	dd	_71
	dd	_23
	dd	1
	dd	_79
	dd	_71
	dd	_24
	dd	1
	dd	_80
	dd	_73
	dd	_55
	dd	6
	dd	_65
	dd	_66
	dd	16
	dd	6
	dd	_67
	dd	_66
	dd	20
	dd	0
	align	4
_19:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_68
	dd	8
	dd	__bb_z_blide_bg5fc2be0c_d56a_4480_9e42_76b90d46a332_New
	dd	__bb_z_blide_bg5fc2be0c_d56a_4480_9e42_76b90d46a332_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_179:
	db	"D:/Proggen/projecte/space/space.bmx",0
	align	4
_178:
	dd	_179
	dd	88
	dd	5
	align	4
__bb_z_My_5fc2be0c_d56a_4480_9e42_76b90d46a332_Application:
	dd	_bbNullObject
	align	4
_180:
	dd	_179
	dd	89
	dd	5
	align	4
__bb_z_My_5fc2be0c_d56a_4480_9e42_76b90d46a332_Resources:
	dd	_bbNullObject
_82:
	db	"z_My_5fc2be0c_d56a_4480_9e42_76b90d46a332",0
	align	4
_81:
	dd	2
	dd	_82
	dd	6
	dd	_65
	dd	_66
	dd	16
	dd	6
	dd	_67
	dd	_66
	dd	20
	dd	0
	align	4
_25:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_81
	dd	8
	dd	__bb_z_My_5fc2be0c_d56a_4480_9e42_76b90d46a332_New
	dd	__bb_z_My_5fc2be0c_d56a_4480_9e42_76b90d46a332_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_84:
	db	"Tray",0
_85:
	db	"x",0
_87:
	db	"y",0
_88:
	db	"winkel",0
_89:
	db	"entf",0
	align	4
_83:
	dd	2
	dd	_84
	dd	3
	dd	_85
	dd	_86
	dd	8
	dd	3
	dd	_87
	dd	_86
	dd	12
	dd	3
	dd	_88
	dd	_86
	dd	16
	dd	3
	dd	_89
	dd	_86
	dd	20
	dd	3
	dd	_90
	dd	_73
	dd	24
	dd	6
	dd	_65
	dd	_66
	dd	16
	dd	6
	dd	_67
	dd	_66
	dd	20
	dd	0
	align	4
_bb_Tray:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_83
	dd	28
	dd	__bb_Tray_New
	dd	__bb_Tray_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_92:
	db	"Tbot",0
_93:
	db	"shipx",0
_94:
	db	"shipy",0
_95:
	db	"shipr",0
_96:
	db	"shipspeed",0
_97:
	db	"gunx",0
_98:
	db	"guny",0
_99:
	db	"gunr",0
_100:
	db	"guncd",0
_101:
	db	"targetx",0
_102:
	db	"targety",0
_103:
	db	"targetr",0
_104:
	db	"move",0
_105:
	db	"draw",0
	align	4
_91:
	dd	2
	dd	_92
	dd	3
	dd	_93
	dd	_86
	dd	8
	dd	3
	dd	_94
	dd	_86
	dd	12
	dd	3
	dd	_95
	dd	_86
	dd	16
	dd	3
	dd	_96
	dd	_86
	dd	20
	dd	3
	dd	_97
	dd	_86
	dd	24
	dd	3
	dd	_98
	dd	_86
	dd	28
	dd	3
	dd	_99
	dd	_86
	dd	32
	dd	3
	dd	_100
	dd	_73
	dd	36
	dd	3
	dd	_101
	dd	_86
	dd	40
	dd	3
	dd	_102
	dd	_86
	dd	44
	dd	3
	dd	_103
	dd	_86
	dd	48
	dd	6
	dd	_65
	dd	_66
	dd	16
	dd	6
	dd	_67
	dd	_66
	dd	20
	dd	6
	dd	_104
	dd	_66
	dd	48
	dd	6
	dd	_105
	dd	_66
	dd	52
	dd	0
	align	4
_bb_Tbot:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_91
	dd	52
	dd	__bb_Tbot_New
	dd	__bb_Tbot_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_Tbot_move
	dd	__bb_Tbot_draw
	align	4
_181:
	dd	_179
	dd	93
	dd	1
_184:
	db	"D:/Proggen/projecte/space/inc/ray.bmx",0
	align	4
_183:
	dd	_184
	dd	7
	dd	1
	align	4
_186:
	dd	0
_189:
	db	"D:/Proggen/projecte/space/inc/bot.bmx",0
	align	4
_188:
	dd	_189
	dd	46
	dd	1
_193:
	db	"D:/Proggen/projecte/space/main.bmx",0
	align	4
_192:
	dd	_193
	dd	1
	dd	1
	align	4
_194:
	dd	_193
	dd	4
	dd	1
	align	4
_195:
	dd	_193
	dd	5
	dd	1
	align	4
_196:
	dd	_193
	dd	6
	dd	1
	align	4
_766:
	dd	0x40000000
	align	4
_198:
	dd	_193
	dd	7
	dd	1
	align	4
_767:
	dd	0x40000000
	align	4
_200:
	dd	_193
	dd	9
	dd	1
	align	4
_201:
	dd	_193
	dd	10
	dd	1
	align	4
_206:
	dd	_193
	dd	11
	dd	1
	align	4
_209:
	dd	_193
	dd	14
	dd	1
	align	4
_210:
	dd	_193
	dd	17
	dd	1
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	67,111,117,114,105,101,114,32,78,101,119
	align	4
_211:
	dd	_193
	dd	20
	dd	1
	align	4
_212:
	dd	_193
	dd	21
	dd	1
	align	4
_213:
	dd	_193
	dd	24
	dd	1
	align	4
_214:
	dd	_193
	dd	25
	dd	1
	align	4
_215:
	dd	_193
	dd	26
	dd	1
	align	4
_216:
	dd	_193
	dd	27
	dd	1
	align	4
_217:
	dd	_193
	dd	28
	dd	1
	align	4
_218:
	dd	_193
	dd	30
	dd	1
	align	4
_219:
	dd	_193
	dd	33
	dd	1
	align	4
_220:
	dd	_193
	dd	36
	dd	1
	align	4
_221:
	dd	_193
	dd	38
	dd	1
	align	4
_222:
	dd	_193
	dd	39
	dd	1
	align	4
_224:
	dd	_193
	dd	40
	dd	1
	align	4
_226:
	dd	_193
	dd	42
	dd	1
	align	4
_455:
	dd	3
	dd	0
	dd	2
	dd	_89
	dd	_86
	dd	-4
	dd	2
	dd	_88
	dd	_86
	dd	-8
	dd	0
	align	4
_229:
	dd	_193
	dd	44
	dd	2
	align	4
_230:
	dd	_193
	dd	45
	dd	2
	align	4
_231:
	dd	_193
	dd	46
	dd	2
	align	4
_232:
	dd	_193
	dd	48
	dd	2
	align	4
_233:
	dd	_193
	dd	50
	dd	2
	align	4
_234:
	dd	_193
	dd	52
	dd	2
	align	4
_235:
	dd	_193
	dd	54
	dd	2
	align	4
_238:
	dd	3
	dd	0
	dd	0
	align	4
_237:
	dd	_193
	dd	54
	dd	25
	align	4
_239:
	dd	_193
	dd	55
	dd	2
	align	4
_242:
	dd	3
	dd	0
	dd	0
	align	4
_241:
	dd	_193
	dd	55
	dd	25
	align	4
_768:
	dd	0x3ca3d70a
	align	4
_243:
	dd	_193
	dd	56
	dd	2
	align	4
_246:
	dd	3
	dd	0
	dd	0
	align	4
_245:
	dd	_193
	dd	56
	dd	25
	align	4
_769:
	dd	0x3ca3d70a
	align	4
_247:
	dd	_193
	dd	57
	dd	2
	align	4
_770:
	dd	0x3dcccccd
	align	4
_250:
	dd	3
	dd	0
	dd	0
	align	4
_249:
	dd	_193
	dd	57
	dd	22
	align	4
_771:
	dd	0x3dcccccd
	align	4
_251:
	dd	_193
	dd	58
	dd	2
	align	4
_772:
	dd	0x40a00000
	align	4
_254:
	dd	3
	dd	0
	dd	0
	align	4
_253:
	dd	_193
	dd	58
	dd	20
	align	4
_773:
	dd	0x40a00000
	align	4
_255:
	dd	_193
	dd	61
	dd	2
	align	4
_258:
	dd	3
	dd	0
	dd	0
	align	4
_257:
	dd	_193
	dd	61
	dd	25
	align	4
_774:
	dd	0x3dcccccd
	align	4
_259:
	dd	_193
	dd	62
	dd	2
	align	4
_262:
	dd	3
	dd	0
	dd	0
	align	4
_261:
	dd	_193
	dd	62
	dd	25
	align	4
_775:
	dd	0x3dcccccd
	align	4
_263:
	dd	_193
	dd	63
	dd	2
	align	4
_266:
	dd	3
	dd	0
	dd	0
	align	4
_265:
	dd	_193
	dd	63
	dd	25
	align	4
_267:
	dd	_193
	dd	64
	dd	2
	align	4
_776:
	dd	0x41200000
	align	4
_270:
	dd	3
	dd	0
	dd	0
	align	4
_269:
	dd	_193
	dd	64
	dd	26
	align	4
_777:
	dd	0x41200000
	align	4
_271:
	dd	_193
	dd	66
	dd	2
	align	4
_274:
	dd	3
	dd	0
	dd	0
	align	4
_273:
	dd	_193
	dd	66
	dd	25
	align	4
_778:
	dd	0x3f800000
	align	4
_275:
	dd	_193
	dd	67
	dd	2
	align	4
_278:
	dd	3
	dd	0
	dd	0
	align	4
_277:
	dd	_193
	dd	67
	dd	25
	align	4
_779:
	dd	0x3f800000
	align	4
_279:
	dd	_193
	dd	68
	dd	2
	align	4
_282:
	dd	3
	dd	0
	dd	0
	align	4
_281:
	dd	_193
	dd	68
	dd	21
	align	4
_780:
	dd	0x43b40000
	align	4
_283:
	dd	_193
	dd	69
	dd	2
	align	4
_781:
	dd	0x43b40000
	align	4
_286:
	dd	3
	dd	0
	dd	0
	align	4
_285:
	dd	_193
	dd	69
	dd	23
	align	4
_782:
	dd	0x43b40000
	align	4
_287:
	dd	_193
	dd	72
	dd	2
	align	4
_288:
	dd	_193
	dd	73
	dd	2
	align	4
_289:
	dd	_193
	dd	75
	dd	2
	align	4
_290:
	dd	_193
	dd	75
	dd	16
	align	4
_291:
	dd	_193
	dd	77
	dd	2
	align	4
_292:
	dd	_193
	dd	78
	dd	2
	align	4
_293:
	dd	_193
	dd	80
	dd	2
	align	8
_783:
	dd	0x0,0x40240000
	align	4
_294:
	dd	_193
	dd	80
	dd	29
	align	8
_784:
	dd	0x0,0x40240000
	align	4
_295:
	dd	_193
	dd	81
	dd	2
	align	8
_785:
	dd	0x0,0x4070e000
	align	4
_296:
	dd	_193
	dd	85
	dd	2
	align	4
_299:
	dd	3
	dd	0
	dd	0
	align	4
_298:
	dd	_193
	dd	85
	dd	21
	align	4
_300:
	dd	_193
	dd	86
	dd	2
	align	4
_306:
	dd	3
	dd	0
	dd	0
	align	4
_304:
	dd	_193
	dd	87
	dd	3
	align	4
_305:
	dd	_193
	dd	88
	dd	3
	align	4
_307:
	dd	_193
	dd	103
	dd	2
_324:
	db	"bot",0
_325:
	db	":Tbot",0
	align	4
_323:
	dd	3
	dd	0
	dd	2
	dd	_324
	dd	_325
	dd	-12
	dd	0
	align	4
_317:
	dd	_193
	dd	104
	dd	3
	align	4
_320:
	dd	_193
	dd	105
	dd	3
	align	4
_326:
	dd	_193
	dd	108
	dd	2
	align	4
_327:
	dd	_193
	dd	111
	dd	2
	align	4
_328:
	dd	_193
	dd	112
	dd	2
	align	8
_786:
	dd	0x0,0x40000000
	align	8
_787:
	dd	0x0,0x40000000
	align	4
_330:
	dd	_193
	dd	113
	dd	2
	align	8
_788:
	dd	0x0,0x40568000
	align	4
_332:
	dd	_193
	dd	114
	dd	2
	align	4
_333:
	dd	_193
	dd	115
	dd	2
	align	4
_789:
	dd	0x40000000
	align	4
_334:
	dd	_193
	dd	116
	dd	2
	align	4
_335:
	dd	_193
	dd	117
	dd	2
	align	4
_790:
	dd	0x40800000
	align	4
_336:
	dd	_193
	dd	120
	dd	2
	align	4
_337:
	dd	_193
	dd	121
	dd	2
	align	4
_791:
	dd	0x41200000
	align	4
_792:
	dd	0x41200000
	align	4
_338:
	dd	_193
	dd	122
	dd	2
	align	4
_793:
	dd	0x41a00000
	align	4
_794:
	dd	0x41a00000
	align	4
_339:
	dd	_193
	dd	123
	dd	2
	align	4
_340:
	dd	_193
	dd	127
	dd	2
	align	4
_341:
	dd	_193
	dd	128
	dd	2
	align	4
_342:
	dd	_193
	dd	129
	dd	2
	align	4
_343:
	dd	_193
	dd	130
	dd	2
	align	4
_344:
	dd	_193
	dd	132
	dd	2
	align	4
_345:
	dd	_193
	dd	134
	dd	2
	align	4
_346:
	dd	_193
	dd	135
	dd	2
	align	4
_347:
	dd	_193
	dd	137
	dd	2
_430:
	db	"ray",0
_431:
	db	":Tray",0
_432:
	db	"tri",0
_433:
	db	"[]f",0
	align	4
_429:
	dd	3
	dd	0
	dd	2
	dd	_430
	dd	_431
	dd	-16
	dd	2
	dd	_432
	dd	_433
	dd	-20
	dd	0
	align	4
_357:
	dd	_193
	dd	138
	dd	3
	align	4
_361:
	dd	_193
	dd	139
	dd	3
	align	4
_795:
	dd	0x3f800000
	align	4
_796:
	dd	0x42c80000
	align	4
_364:
	dd	_193
	dd	140
	dd	3
	align	4
_365:
	dd	_193
	dd	141
	dd	3
_366:
	db	"f",0
	align	4
_368:
	dd	_193
	dd	142
	dd	3
	align	4
_797:
	dd	0x42b40000
	align	4
_798:
	dd	0x3f800000
	align	4
_376:
	dd	_193
	dd	142
	dd	83
	align	4
_799:
	dd	0x42b40000
	align	4
_800:
	dd	0x3f800000
	align	4
_384:
	dd	_193
	dd	143
	dd	3
	align	4
_801:
	dd	0x42b40000
	align	4
_802:
	dd	0x3f800000
	align	4
_392:
	dd	_193
	dd	143
	dd	83
	align	4
_803:
	dd	0x42b40000
	align	4
_804:
	dd	0x3f800000
	align	4
_400:
	dd	_193
	dd	144
	dd	3
	align	4
_410:
	dd	_193
	dd	144
	dd	85
	align	4
_420:
	dd	_193
	dd	145
	dd	3
	align	4
_421:
	dd	_193
	dd	147
	dd	3
	align	4
_428:
	dd	3
	dd	0
	dd	0
	align	4
_425:
	dd	_193
	dd	147
	dd	26
	align	4
_434:
	dd	_193
	dd	149
	dd	2
	align	4
_435:
	dd	_193
	dd	151
	dd	2
	align	4
_436:
	dd	_193
	dd	153
	dd	2
	align	4
_437:
	dd	_193
	dd	154
	dd	2
	align	4
_438:
	dd	_193
	dd	155
	dd	2
	align	4
_439:
	dd	_193
	dd	156
	dd	2
	align	4
_440:
	dd	_193
	dd	161
	dd	2
	align	4
_441:
	dd	_193
	dd	162
	dd	2
	align	4
_36:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	83,99,97,108,101,58,32
	align	4
_442:
	dd	_193
	dd	163
	dd	2
	align	4
_37:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	83,104,105,112,32,115,112,101,101,100,58,32
	align	4
_443:
	dd	_193
	dd	167
	dd	2
	align	4
_444:
	dd	_193
	dd	168
	dd	2
	align	4
_805:
	dd	0x42200000
	align	4
_445:
	dd	_193
	dd	169
	dd	2
	align	4
_446:
	dd	_193
	dd	170
	dd	2
	align	4
_806:
	dd	0x42200000
	align	4
_447:
	dd	_193
	dd	171
	dd	2
	align	4
_807:
	dd	0x42200000
	align	4
_448:
	dd	_193
	dd	172
	dd	2
	align	4
_808:
	dd	0x42200000
	align	4
_449:
	dd	_193
	dd	173
	dd	2
	align	4
_450:
	dd	_193
	dd	174
	dd	2
	align	4
_451:
	dd	_193
	dd	175
	dd	2
	align	4
_809:
	dd	0x420c0000
	align	4
_452:
	dd	_193
	dd	176
	dd	2
	align	4
_453:
	dd	_193
	dd	177
	dd	2
	align	4
_810:
	dd	0x41c80000
	align	4
_38:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	120
	align	4
_811:
	dd	0x42c80000
	align	4
_454:
	dd	_193
	dd	179
	dd	2
	align	4
_456:
	dd	_193
	dd	182
	dd	1
_492:
	db	"Self",0
_493:
	db	":z_5fc2be0c_d56a_4480_9e42_76b90d46a332_3_0",0
	align	4
_491:
	dd	1
	dd	_65
	dd	2
	dd	_492
	dd	_493
	dd	-4
	dd	0
	align	4
_490:
	dd	3
	dd	0
	dd	0
_497:
	db	":z_blide_bg5fc2be0c_d56a_4480_9e42_76b90d46a332",0
	align	4
_496:
	dd	1
	dd	_65
	dd	2
	dd	_492
	dd	_497
	dd	-4
	dd	0
	align	4
_495:
	dd	3
	dd	0
	dd	0
	align	4
_500:
	dd	1
	dd	_65
	dd	2
	dd	_492
	dd	_460
	dd	-4
	dd	0
	align	4
_499:
	dd	3
	dd	0
	dd	0
	align	4
_503:
	dd	1
	dd	_65
	dd	2
	dd	_492
	dd	_431
	dd	-4
	dd	0
	align	4
_502:
	dd	3
	dd	0
	dd	0
_527:
	db	"createray",0
_528:
	db	"nray",0
	align	4
_526:
	dd	1
	dd	_527
	dd	2
	dd	_85
	dd	_86
	dd	-4
	dd	2
	dd	_87
	dd	_86
	dd	-8
	dd	2
	dd	_88
	dd	_86
	dd	-12
	dd	2
	dd	_89
	dd	_86
	dd	-16
	dd	2
	dd	_528
	dd	_431
	dd	-20
	dd	0
	align	4
_505:
	dd	_184
	dd	10
	dd	2
	align	4
_507:
	dd	_184
	dd	11
	dd	2
	align	4
_510:
	dd	_184
	dd	12
	dd	2
	align	4
_514:
	dd	_184
	dd	13
	dd	2
	align	4
_518:
	dd	_184
	dd	14
	dd	2
	align	4
_522:
	dd	_184
	dd	15
	dd	2
	align	4
_530:
	dd	1
	dd	_65
	dd	2
	dd	_492
	dd	_325
	dd	-4
	dd	0
	align	4
_897:
	dd	0x43870000
	align	4
_898:
	dd	0x43870000
	align	4
_899:
	dd	0x43870000
	align	4
_529:
	dd	3
	dd	0
	dd	0
	align	4
_604:
	dd	1
	dd	_104
	dd	2
	dd	_492
	dd	_325
	dd	-4
	dd	0
	align	4
_532:
	dd	_189
	dd	9
	dd	3
	align	4
_904:
	dd	0x40a00000
	align	4
_536:
	dd	_189
	dd	10
	dd	3
	align	8
_905:
	dd	0x0,0x4070e000
	align	4
_552:
	dd	_189
	dd	12
	dd	3
	align	4
_562:
	dd	_189
	dd	13
	dd	3
	align	4
_572:
	dd	_189
	dd	18
	dd	3
	align	8
_906:
	dd	0x0,0x40240000
	align	4
_578:
	dd	_189
	dd	18
	dd	28
	align	8
_907:
	dd	0x0,0x40240000
	align	4
_584:
	dd	_189
	dd	19
	dd	3
	align	8
_908:
	dd	0x0,0x4070e000
	align	4
_639:
	dd	1
	dd	_105
	dd	2
	dd	_492
	dd	_325
	dd	-4
	dd	0
	align	4
_605:
	dd	_189
	dd	24
	dd	3
	align	4
_606:
	dd	_189
	dd	25
	dd	3
	align	4
_607:
	dd	_189
	dd	27
	dd	3
	align	4
_608:
	dd	_189
	dd	28
	dd	3
	align	4
_609:
	dd	_189
	dd	29
	dd	3
	align	4
_612:
	dd	_189
	dd	30
	dd	3
	align	4
_617:
	dd	_189
	dd	33
	dd	3
	align	4
_618:
	dd	_189
	dd	34
	dd	3
	align	4
_619:
	dd	_189
	dd	35
	dd	3
	align	4
_622:
	dd	_189
	dd	36
	dd	3
	align	4
_631:
	dd	_189
	dd	39
	dd	3
	align	4
_632:
	dd	_189
	dd	40
	dd	3
	align	4
_633:
	dd	_189
	dd	41
	dd	3
	align	4
_940:
	dd	0x40a00000
	align	4
_941:
	dd	0x40a00000
	align	4
_634:
	dd	_189
	dd	42
	dd	3
	align	4
_942:
	dd	0x41200000
	align	4
_943:
	dd	0x41200000
_646:
	db	"add_bot",0
_647:
	db	"nbot",0
	align	4
_645:
	dd	1
	dd	_646
	dd	2
	dd	_647
	dd	_325
	dd	-4
	dd	0
	align	4
_640:
	dd	_189
	dd	49
	dd	2
	align	4
_642:
	dd	_189
	dd	50
	dd	2
_675:
	db	"DrawPicture",0
_676:
	db	"bild",0
_677:
	db	":brl.max2d.Timage",0
_678:
	db	"width",0
_679:
	db	"height",0
_680:
	db	"nowscale_X",0
_681:
	db	"nowscale_Y",0
_682:
	db	"nowhandle_X",0
_683:
	db	"nowhandle_Y",0
_684:
	db	"factorx",0
_685:
	db	"factory",0
_686:
	db	"entferung",0
	align	4
_674:
	dd	1
	dd	_675
	dd	2
	dd	_676
	dd	_677
	dd	-4
	dd	2
	dd	_85
	dd	_86
	dd	-8
	dd	2
	dd	_87
	dd	_86
	dd	-12
	dd	2
	dd	_678
	dd	_86
	dd	-16
	dd	2
	dd	_679
	dd	_86
	dd	-20
	dd	2
	dd	_680
	dd	_86
	dd	-24
	dd	2
	dd	_681
	dd	_86
	dd	-28
	dd	2
	dd	_682
	dd	_86
	dd	-32
	dd	2
	dd	_683
	dd	_86
	dd	-36
	dd	2
	dd	_684
	dd	_86
	dd	-40
	dd	2
	dd	_685
	dd	_86
	dd	-44
	dd	2
	dd	_686
	dd	_86
	dd	-48
	dd	2
	dd	_88
	dd	_86
	dd	-52
	dd	0
_649:
	db	"D:/Proggen/projecte/space/inc/func.bmx",0
	align	4
_648:
	dd	_649
	dd	3
	dd	2
	align	4
_651:
	dd	_649
	dd	4
	dd	2
	align	4
_653:
	dd	_649
	dd	5
	dd	2
	align	4
_654:
	dd	_649
	dd	7
	dd	2
	align	4
_656:
	dd	_649
	dd	8
	dd	2
	align	4
_658:
	dd	_649
	dd	9
	dd	2
	align	4
_659:
	dd	_649
	dd	11
	dd	2
	align	4
_663:
	dd	_649
	dd	12
	dd	2
	align	4
_667:
	dd	_649
	dd	14
	dd	2
	align	4
_668:
	dd	_649
	dd	16
	dd	2
	align	8
_959:
	dd	0x0,0x40000000
	align	8
_960:
	dd	0x0,0x40000000
	align	4
_670:
	dd	_649
	dd	17
	dd	2
	align	8
_961:
	dd	0x0,0x40668000
	align	4
_672:
	dd	_649
	dd	18
	dd	2
	align	4
_673:
	dd	_649
	dd	20
	dd	2
_694:
	db	"reset_draw",0
	align	4
_693:
	dd	1
	dd	_694
	dd	0
	align	4
_687:
	dd	_649
	dd	24
	dd	2
	align	4
_688:
	dd	_649
	dd	25
	dd	2
	align	4
_689:
	dd	_649
	dd	26
	dd	2
	align	4
_690:
	dd	_649
	dd	27
	dd	2
	align	4
_691:
	dd	_649
	dd	28
	dd	2
	align	4
_692:
	dd	_649
	dd	29
	dd	2
_697:
	db	"calc_move",0
_698:
	db	"speed",0
	align	4
_696:
	dd	1
	dd	_697
	dd	2
	dd	_698
	dd	_86
	dd	-4
	dd	0
	align	4
_695:
	dd	_649
	dd	33
	dd	2
	align	4
_968:
	dd	0x42c80000
_701:
	db	"get_ver_x",0
	align	4
_700:
	dd	1
	dd	_701
	dd	0
	align	4
_699:
	dd	_649
	dd	37
	dd	2
_704:
	db	"get_ver_y",0
	align	4
_703:
	dd	1
	dd	_704
	dd	0
	align	4
_702:
	dd	_649
	dd	41
	dd	2
_732:
	db	"BufferTower",0
_733:
	db	"turmwinkel",0
_734:
	db	"zielwinkel",0
_735:
	db	"drehspeed",0
_736:
	db	"totalwinkel",0
_737:
	db	"bufftore",0
_738:
	db	"test",0
	align	4
_731:
	dd	1
	dd	_732
	dd	2
	dd	_733
	dd	_86
	dd	-4
	dd	2
	dd	_734
	dd	_86
	dd	-8
	dd	2
	dd	_735
	dd	_86
	dd	-12
	dd	2
	dd	_736
	dd	_86
	dd	-16
	dd	2
	dd	_737
	dd	_86
	dd	-20
	dd	2
	dd	_738
	dd	_73
	dd	-24
	dd	0
	align	4
_705:
	dd	_649
	dd	46
	dd	2
	align	4
_981:
	dd	0x43340000
	align	4
_707:
	dd	_649
	dd	47
	dd	2
	align	4
_709:
	dd	3
	dd	0
	dd	0
	align	4
_708:
	dd	_649
	dd	48
	dd	3
	align	4
_982:
	dd	0x43b40000
	align	4
_983:
	dd	0xc3340000
	align	4
_710:
	dd	_649
	dd	50
	dd	2
	align	4
_712:
	dd	3
	dd	0
	dd	0
	align	4
_711:
	dd	_649
	dd	51
	dd	3
	align	4
_984:
	dd	0x43b40000
	align	4
_985:
	dd	0x43340000
	align	4
_713:
	dd	_649
	dd	53
	dd	2
	align	4
_716:
	dd	_649
	dd	54
	dd	2
	align	4
_720:
	dd	3
	dd	0
	dd	0
	align	4
_718:
	dd	_649
	dd	54
	dd	34
	align	4
_719:
	dd	_649
	dd	54
	dd	58
	align	4
_721:
	dd	_649
	dd	55
	dd	2
	align	4
_725:
	dd	3
	dd	0
	dd	0
	align	4
_723:
	dd	_649
	dd	55
	dd	36
	align	4
_724:
	dd	_649
	dd	55
	dd	59
	align	4
_726:
	dd	_649
	dd	56
	dd	2
	align	4
_729:
	dd	3
	dd	0
	dd	0
	align	4
_728:
	dd	_649
	dd	56
	dd	19
	align	4
_730:
	dd	_649
	dd	57
	dd	2
_764:
	db	"BufferTarget",0
_765:
	db	"drehschalter",0
	align	4
_763:
	dd	1
	dd	_764
	dd	2
	dd	_733
	dd	_86
	dd	-4
	dd	2
	dd	_734
	dd	_86
	dd	-8
	dd	2
	dd	_765
	dd	_86
	dd	-12
	dd	2
	dd	_736
	dd	_86
	dd	-16
	dd	2
	dd	_737
	dd	_86
	dd	-20
	dd	2
	dd	_738
	dd	_73
	dd	-24
	dd	0
	align	4
_739:
	dd	_649
	dd	61
	dd	2
	align	4
_993:
	dd	0x43340000
	align	4
_741:
	dd	_649
	dd	62
	dd	2
	align	4
_743:
	dd	3
	dd	0
	dd	0
	align	4
_742:
	dd	_649
	dd	63
	dd	3
	align	4
_994:
	dd	0x43b40000
	align	4
_995:
	dd	0xc3340000
	align	4
_744:
	dd	_649
	dd	65
	dd	2
	align	4
_746:
	dd	3
	dd	0
	dd	0
	align	4
_745:
	dd	_649
	dd	66
	dd	3
	align	4
_996:
	dd	0x43b40000
	align	4
_997:
	dd	0x43340000
	align	4
_747:
	dd	_649
	dd	68
	dd	2
	align	4
_750:
	dd	_649
	dd	69
	dd	2
	align	4
_753:
	dd	3
	dd	0
	dd	0
	align	4
_752:
	dd	_649
	dd	69
	dd	37
	align	4
_754:
	dd	_649
	dd	70
	dd	2
	align	4
_757:
	dd	3
	dd	0
	dd	0
	align	4
_756:
	dd	_649
	dd	70
	dd	39
	align	4
_758:
	dd	_649
	dd	71
	dd	2
	align	4
_761:
	dd	3
	dd	0
	dd	0
	align	4
_760:
	dd	_649
	dd	71
	dd	19
	align	4
_762:
	dd	_649
	dd	72
	dd	2
