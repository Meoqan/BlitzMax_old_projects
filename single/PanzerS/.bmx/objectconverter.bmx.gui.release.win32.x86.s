	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_glmax2d_glmax2d
	extrn	___bb_jpgloader_jpgloader
	extrn	___bb_pngloader_pngloader
	extrn	___bb_random_random
	extrn	___bb_retro_retro
	extrn	___bb_timer_timer
	extrn	_bbATan2
	extrn	_bbAppArgs
	extrn	_bbAppTitle
	extrn	_bbCos
	extrn	_bbEmptyString
	extrn	_bbEnd
	extrn	_bbFloatPow
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
	extrn	_bbStringCompare
	extrn	_bbStringConcat
	extrn	_bbStringContains
	extrn	_bbStringFind
	extrn	_bbStringFromFloat
	extrn	_bbStringFromInt
	extrn	_bbStringToFloat
	extrn	_bbStringToInt
	extrn	_bbStringToLower
	extrn	_brl_filesystem_ReadFile
	extrn	_brl_filesystem_WriteFile
	extrn	_brl_graphics_Flip
	extrn	_brl_graphics_Graphics
	extrn	_brl_linkedlist_CreateList
	extrn	_brl_max2d_Cls
	extrn	_brl_max2d_DrawImage
	extrn	_brl_max2d_GetHandle
	extrn	_brl_max2d_GetRotation
	extrn	_brl_max2d_GetScale
	extrn	_brl_max2d_LoadImage
	extrn	_brl_max2d_SetBlend
	extrn	_brl_max2d_SetClsColor
	extrn	_brl_max2d_SetHandle
	extrn	_brl_max2d_SetRotation
	extrn	_brl_max2d_SetScale
	extrn	_brl_pixmap_LoadPixmap
	extrn	_brl_retro_Left
	extrn	_brl_retro_Right
	extrn	_brl_stream_Eof
	extrn	_brl_stream_ReadLine
	extrn	_brl_system_Notify
	extrn	_brl_timer_CreateTimer
	public	__bb_Tobjanim_Delete
	public	__bb_Tobjanim_New
	public	__bb_Tobjanimdata_Delete
	public	__bb_Tobjanimdata_New
	public	__bb_Tobject_Delete
	public	__bb_Tobject_New
	public	__bb_Tobjpixmap_Delete
	public	__bb_Tobjpixmap_New
	public	__bb_main
	public	_bb_BufferWinkel
	public	_bb_DrawPicture
	public	_bb_Tobjanim
	public	_bb_Tobjanimdata
	public	_bb_Tobject
	public	_bb_Tobjpixmap
	public	_bb_nTobj
	public	_bb_nTobjanim
	public	_bb_nTobjanimdata
	public	_bb_nTobjpix
	public	_bb_waywinkel
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,136
	push	ebx
	push	esi
	push	edi
	cmp	dword [_450],0
	je	_451
	mov	eax,0
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_451:
	mov	dword [_450],1
	call	___bb_blitz_blitz
	call	___bb_glmax2d_glmax2d
	call	___bb_timer_timer
	call	___bb_random_random
	call	___bb_retro_retro
	call	___bb_jpgloader_jpgloader
	call	___bb_pngloader_pngloader
	push	_bb_Tobject
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_Tobjpixmap
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_Tobjanim
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_Tobjanimdata
	call	_bbObjectRegisterType
	add	esp,4
	mov	eax,dword [_192]
	and	eax,1
	cmp	eax,0
	jne	_193
	push	_bb_Tobject
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_nTobj],eax
	or	dword [_192],1
_193:
	mov	dword [ebp-84],0
	mov	dword [ebp-88],_bbEmptyString
	mov	edi,dword [_bbAppArgs]
	mov	eax,edi
	add	eax,24
	mov	ebx,eax
	mov	eax,ebx
	add	eax,dword [edi+16]
	mov	dword [ebp-92],eax
	jmp	_3
_5:
	mov	esi,dword [ebx]
	add	ebx,4
	cmp	esi,_bbNullObject
	je	_3
	push	_6
	push	4
	push	esi
	call	_brl_retro_Right
	add	esp,8
	push	eax
	call	_bbStringToLower
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_201
	mov	dword [ebp-84],1
	mov	dword [ebp-88],esi
_201:
_3:
	cmp	ebx,dword [ebp-92]
	jne	_5
_4:
	cmp	dword [ebp-84],0
	jne	_202
	push	0
	push	_7
	call	_brl_system_Notify
	add	esp,8
	jmp	_203
_202:
	push	dword [ebp-88]
	call	_brl_filesystem_ReadFile
	add	esp,4
	mov	dword [ebp-128],eax
	mov	dword [ebp-116],0
	mov	dword [ebp-100],0
	jmp	_8
_10:
	add	dword [ebp-116],1
	push	dword [ebp-128]
	call	_brl_stream_ReadLine
	add	esp,4
	mov	edi,eax
	mov	ebx,edi
	push	_11
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_212
	push	_12
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_213
	push	_13
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_214
	jmp	_211
_212:
	mov	dword [ebp-100],1
	jmp	_211
_213:
	mov	dword [ebp-100],2
	push	_bb_Tobjpixmap
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nTobjpix]
	dec	dword [eax+4]
	jnz	_218
	push	eax
	call	_bbGCFree
	add	esp,4
_218:
	mov	dword [_bb_nTobjpix],ebx
	mov	eax,dword [_bb_nTobj]
	mov	eax,dword [eax+24]
	push	dword [_bb_nTobjpix]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	jmp	_211
_214:
	mov	dword [ebp-100],3
	push	_bb_Tobjanim
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nTobjanim]
	dec	dword [eax+4]
	jnz	_223
	push	eax
	call	_bbGCFree
	add	esp,4
_223:
	mov	dword [_bb_nTobjanim],ebx
	mov	eax,dword [_bb_nTobj]
	mov	eax,dword [eax+28]
	push	dword [_bb_nTobjanim]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	jmp	_211
_211:
	push	_14
	push	edi
	call	_bbStringContains
	add	esp,8
	cmp	eax,0
	jne	_225
	jmp	_8
_225:
	push	0
	push	_14
	push	edi
	call	_bbStringFind
	add	esp,12
	push	eax
	push	edi
	call	_brl_retro_Left
	add	esp,8
	mov	esi,eax
	mov	ebx,dword [edi+8]
	push	0
	push	_14
	push	edi
	call	_bbStringFind
	add	esp,12
	add	eax,1
	sub	ebx,eax
	push	ebx
	push	edi
	call	_brl_retro_Right
	add	esp,8
	mov	ebx,eax
	push	_15
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_228
	push	_16
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_229
	push	_17
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_230
	push	_18
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_231
	push	_19
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_232
	push	_20
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_233
	push	_21
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_234
	push	_22
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_235
	push	_25
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_236
	push	_26
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_237
	push	_28
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_238
	push	_29
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_239
	push	_30
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_240
	push	_31
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_241
	push	_32
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_242
	push	_33
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_243
	push	_34
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_244
	push	_35
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_245
	push	_36
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_246
	push	_37
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_247
	push	0
	push	_38
	push	dword [ebp-116]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_23
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_system_Notify
	add	esp,8
	call	_bbEnd
	jmp	_227
_228:
	cmp	dword [ebp-100],1
	jne	_248
	mov	esi,ebx
	inc	dword [esi+4]
	mov	eax,dword [_bb_nTobj]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_252
	push	eax
	call	_bbGCFree
	add	esp,4
_252:
	mov	eax,dword [_bb_nTobj]
	mov	dword [eax+8],esi
_248:
	cmp	dword [ebp-100],2
	jne	_253
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nTobjpix]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_257
	push	eax
	call	_bbGCFree
	add	esp,4
_257:
	mov	eax,dword [_bb_nTobjpix]
	mov	dword [eax+16],ebx
_253:
	jmp	_227
_229:
	cmp	dword [ebp-100],3
	jne	_258
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nTobjanim]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_262
	push	eax
	call	_bbGCFree
	add	esp,4
_262:
	mov	eax,dword [_bb_nTobjanim]
	mov	dword [eax+8],ebx
_258:
	jmp	_227
_230:
	cmp	dword [ebp-100],3
	jne	_263
	mov	esi,dword [_bb_nTobjanim]
	push	ebx
	call	_bbStringToInt
	add	esp,4
	mov	dword [esi+12],eax
_263:
	jmp	_227
_231:
	cmp	dword [ebp-100],3
	jne	_264
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nTobjanim]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_268
	push	eax
	call	_bbGCFree
	add	esp,4
_268:
	mov	eax,dword [_bb_nTobjanim]
	mov	dword [eax+16],ebx
_264:
	jmp	_227
_232:
	cmp	dword [ebp-100],1
	jne	_269
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nTobj]
	mov	eax,dword [eax+12]
	dec	dword [eax+4]
	jnz	_273
	push	eax
	call	_bbGCFree
	add	esp,4
_273:
	mov	eax,dword [_bb_nTobj]
	mov	dword [eax+12],ebx
_269:
	jmp	_227
_233:
	cmp	dword [ebp-100],1
	jne	_274
	mov	esi,dword [_bb_nTobj]
	push	ebx
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [esi+16]
_274:
	jmp	_227
_234:
	cmp	dword [ebp-100],1
	jne	_275
	mov	esi,dword [_bb_nTobj]
	push	ebx
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [esi+20]
_275:
	jmp	_227
_235:
	cmp	dword [ebp-100],2
	jne	_276
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nTobjpix]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_280
	push	eax
	call	_bbGCFree
	add	esp,4
_280:
	mov	eax,dword [_bb_nTobjpix]
	mov	dword [eax+8],ebx
	mov	eax,dword [_bb_nTobjpix]
	push	dword [eax+8]
	call	_brl_pixmap_LoadPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nTobjpix]
	mov	eax,dword [eax+12]
	dec	dword [eax+4]
	jnz	_284
	push	eax
	call	_bbGCFree
	add	esp,4
_284:
	mov	eax,dword [_bb_nTobjpix]
	mov	dword [eax+12],ebx
	mov	eax,dword [_bb_nTobjpix]
	cmp	dword [eax+12],_bbNullObject
	jne	_285
	push	0
	push	_24
	push	dword [ebp-116]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_23
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_system_Notify
	add	esp,8
	call	_bbEnd
_285:
	push	-1
	mov	eax,dword [_bb_nTobjpix]
	push	dword [eax+12]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nTobjpix]
	mov	eax,dword [eax+20]
	dec	dword [eax+4]
	jnz	_289
	push	eax
	call	_bbGCFree
	add	esp,4
_289:
	mov	eax,dword [_bb_nTobjpix]
	mov	dword [eax+20],ebx
_276:
	jmp	_227
_236:
	cmp	dword [ebp-100],3
	jne	_290
	push	_bb_Tobjanimdata
	call	_bbObjectNew
	add	esp,4
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [_bb_nTobjanimdata]
	dec	dword [eax+4]
	jnz	_294
	push	eax
	call	_bbGCFree
	add	esp,4
_294:
	mov	dword [_bb_nTobjanimdata],esi
	mov	eax,dword [_bb_nTobjanim]
	mov	eax,dword [eax+20]
	push	dword [_bb_nTobjanimdata]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	inc	dword [ebx+4]
	mov	eax,dword [_bb_nTobjanimdata]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_299
	push	eax
	call	_bbGCFree
	add	esp,4
_299:
	mov	eax,dword [_bb_nTobjanimdata]
	mov	dword [eax+8],ebx
_290:
	jmp	_227
_237:
	cmp	dword [ebp-100],3
	jne	_300
	cmp	dword [_bb_nTobjanimdata],_bbNullObject
	je	_301
	mov	esi,dword [_bb_nTobjanimdata]
	push	ebx
	call	_bbStringToInt
	add	esp,4
	mov	dword [esi+12],eax
	jmp	_302
_301:
	push	0
	push	_27
	push	dword [ebp-116]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_23
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_system_Notify
	add	esp,8
	call	_bbEnd
_302:
_300:
	jmp	_227
_238:
	cmp	dword [ebp-100],3
	jne	_303
	cmp	dword [_bb_nTobjanimdata],_bbNullObject
	je	_304
	mov	esi,dword [_bb_nTobjanimdata]
	push	ebx
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [esi+28]
	jmp	_305
_304:
	push	0
	push	_27
	push	dword [ebp-116]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_23
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_system_Notify
	add	esp,8
	call	_bbEnd
_305:
_303:
	jmp	_227
_239:
	cmp	dword [ebp-100],3
	jne	_306
	cmp	dword [_bb_nTobjanimdata],_bbNullObject
	je	_307
	mov	esi,dword [_bb_nTobjanimdata]
	push	ebx
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [esi+32]
	jmp	_308
_307:
	push	0
	push	_27
	push	dword [ebp-116]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_23
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_system_Notify
	add	esp,8
	call	_bbEnd
_308:
_306:
	jmp	_227
_240:
	cmp	dword [ebp-100],3
	jne	_309
	cmp	dword [_bb_nTobjanimdata],_bbNullObject
	je	_310
	mov	esi,dword [_bb_nTobjanimdata]
	push	ebx
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [esi+36]
	jmp	_311
_310:
	push	0
	push	_27
	push	dword [ebp-116]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_23
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_system_Notify
	add	esp,8
	call	_bbEnd
_311:
_309:
	jmp	_227
_241:
	cmp	dword [ebp-100],3
	jne	_312
	cmp	dword [_bb_nTobjanimdata],_bbNullObject
	je	_313
	mov	esi,dword [_bb_nTobjanimdata]
	push	ebx
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [esi+52]
	jmp	_314
_313:
	push	0
	push	_27
	push	dword [ebp-116]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_23
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_system_Notify
	add	esp,8
	call	_bbEnd
_314:
_312:
	jmp	_227
_242:
	cmp	dword [ebp-100],3
	jne	_315
	cmp	dword [_bb_nTobjanimdata],_bbNullObject
	je	_316
	mov	esi,dword [_bb_nTobjanimdata]
	push	ebx
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [esi+56]
	jmp	_317
_316:
	push	0
	push	_27
	push	dword [ebp-116]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_23
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_system_Notify
	add	esp,8
	call	_bbEnd
_317:
_315:
	jmp	_227
_243:
	cmp	dword [ebp-100],3
	jne	_318
	cmp	dword [_bb_nTobjanimdata],_bbNullObject
	je	_319
	mov	esi,dword [_bb_nTobjanimdata]
	push	ebx
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [esi+40]
	jmp	_320
_319:
	push	0
	push	_27
	push	dword [ebp-116]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_23
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_system_Notify
	add	esp,8
	call	_bbEnd
_320:
_318:
	jmp	_227
_244:
	cmp	dword [ebp-100],3
	jne	_321
	cmp	dword [_bb_nTobjanimdata],_bbNullObject
	je	_322
	mov	esi,dword [_bb_nTobjanimdata]
	push	ebx
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [esi+44]
	jmp	_323
_322:
	push	0
	push	_27
	push	dword [ebp-116]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_23
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_system_Notify
	add	esp,8
	call	_bbEnd
_323:
_321:
	jmp	_227
_245:
	cmp	dword [ebp-100],3
	jne	_324
	cmp	dword [_bb_nTobjanimdata],_bbNullObject
	je	_325
	mov	esi,dword [_bb_nTobjanimdata]
	push	ebx
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [esi+48]
	jmp	_326
_325:
	push	0
	push	_27
	push	dword [ebp-116]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_23
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_system_Notify
	add	esp,8
	call	_bbEnd
_326:
_324:
	jmp	_227
_246:
	cmp	dword [ebp-100],3
	jne	_327
	cmp	dword [_bb_nTobjanimdata],_bbNullObject
	je	_328
	mov	esi,dword [_bb_nTobjanimdata]
	push	ebx
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [esi+60]
	jmp	_329
_328:
	push	0
	push	_27
	push	dword [ebp-116]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_23
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_system_Notify
	add	esp,8
	call	_bbEnd
_329:
_327:
	jmp	_227
_247:
	cmp	dword [ebp-100],3
	jne	_330
	cmp	dword [_bb_nTobjanimdata],_bbNullObject
	je	_331
	mov	esi,dword [_bb_nTobjanimdata]
	push	ebx
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [esi+64]
	jmp	_332
_331:
	push	0
	push	_27
	push	dword [ebp-116]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_23
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_system_Notify
	add	esp,8
	call	_bbEnd
_332:
_330:
	jmp	_227
_227:
_8:
	push	dword [ebp-128]
	call	_brl_stream_Eof
	add	esp,4
	cmp	eax,0
	je	_10
_9:
	mov	eax,dword [ebp-128]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,4
	mov	eax,dword [_bb_nTobj]
	mov	eax,dword [eax+8]
	cmp	dword [eax+8],0
	jne	_334
	push	0
	push	_39
	call	_brl_system_Notify
	add	esp,8
	call	_bbEnd
_334:
	mov	eax,dword [_bb_nTobj]
	mov	eax,dword [eax+24]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+112]
	add	esp,4
	cmp	eax,0
	jne	_336
	push	0
	push	_40
	call	_brl_system_Notify
	add	esp,8
	call	_bbEnd
_336:
	mov	eax,dword [_bb_nTobj]
	mov	ebx,dword [eax+24]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_41
_43:
	mov	eax,edi
	push	_bb_Tobjpixmap
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_41
	mov	eax,dword [esi+16]
	cmp	dword [eax+8],0
	jne	_343
	push	0
	push	_44
	call	_brl_system_Notify
	add	esp,8
	call	_bbEnd
_343:
	mov	eax,dword [esi+8]
	cmp	dword [eax+8],0
	jne	_344
	push	0
	push	_45
	call	_brl_system_Notify
	add	esp,8
	call	_bbEnd
_344:
_41:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_43
_42:
	push	_46
	mov	eax,dword [_bb_nTobj]
	push	dword [eax+8]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_filesystem_WriteFile
	add	esp,4
	mov	dword [ebp-60],eax
	mov	eax,dword [ebp-60]
	push	_47
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,8
	mov	eax,dword [ebp-60]
	push	_48
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,8
	mov	eax,dword [ebp-60]
	push	_49
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,8
	mov	eax,dword [ebp-60]
	push	_50
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,8
	mov	eax,dword [ebp-60]
	push	_11
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,8
	mov	ebx,dword [ebp-60]
	mov	eax,dword [_bb_nTobj]
	push	dword [eax+8]
	push	_352
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	mov	eax,dword [_bb_nTobj]
	mov	eax,dword [eax+12]
	cmp	dword [eax+8],0
	jle	_353
	mov	ebx,dword [ebp-60]
	mov	eax,dword [_bb_nTobj]
	push	dword [eax+12]
	push	_355
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
_353:
	mov	ebx,dword [ebp-60]
	mov	eax,dword [_bb_nTobj]
	push	dword [eax+16]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_357
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	mov	ebx,dword [ebp-60]
	mov	eax,dword [_bb_nTobj]
	push	dword [eax+20]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_359
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	mov	ebx,_56
	inc	dword [ebx+4]
	mov	eax,dword [_bbAppTitle]
	dec	dword [eax+4]
	jnz	_363
	push	eax
	call	_bbGCFree
	add	esp,4
_363:
	mov	dword [_bbAppTitle],ebx
	push	0
	push	60
	push	0
	push	256
	push	256
	call	_brl_graphics_Graphics
	add	esp,20
	mov	dword [ebp-132],eax
	push	3
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_bbNullObject
	push	1109393408
	call	_brl_timer_CreateTimer
	add	esp,8
	mov	dword [ebp-112],eax
	push	128
	push	128
	push	128
	call	_brl_max2d_SetClsColor
	add	esp,12
	call	_brl_max2d_Cls
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
	mov	eax,dword [_bb_nTobj]
	mov	eax,dword [eax+28]
	mov	dword [ebp-120],eax
	mov	eax,dword [ebp-120]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-124],eax
	jmp	_57
_59:
	mov	eax,dword [ebp-124]
	push	_bb_Tobjanim
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-72],eax
	cmp	dword [ebp-72],_bbNullObject
	je	_57
	mov	eax,dword [ebp-60]
	push	_373
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,8
	mov	ebx,dword [ebp-60]
	mov	eax,dword [ebp-72]
	push	dword [eax+8]
	push	_375
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	mov	ebx,dword [ebp-60]
	mov	eax,dword [ebp-72]
	push	dword [eax+12]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_377
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	mov	ebx,dword [ebp-60]
	mov	eax,dword [ebp-72]
	push	dword [eax+16]
	push	_379
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	mov	dword [ebp-80],0
	mov	eax,dword [ebp-72]
	mov	eax,dword [eax+12]
	sub	eax,1
	mov	dword [ebp-108],eax
	jmp	_381
_65:
	mov	eax,dword [ebp-60]
	push	_384
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,8
	call	_brl_max2d_Cls
	mov	eax,dword [ebp-112]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	eax,dword [ebp-72]
	mov	eax,dword [eax+20]
	mov	dword [ebp-64],eax
	mov	eax,dword [ebp-64]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-68],eax
	jmp	_67
_69:
	mov	eax,dword [ebp-68]
	push	_bb_Tobjanimdata
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-36],eax
	cmp	dword [ebp-36],_bbNullObject
	je	_67
	mov	ebx,dword [ebp-60]
	mov	eax,dword [ebp-36]
	push	dword [eax+8]
	push	_393
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	mov	dword [ebp-52],_bbNullObject
	mov	eax,dword [_bb_nTobj]
	mov	ebx,dword [eax+24]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_71
_73:
	mov	eax,edi
	push	_bb_Tobjpixmap
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_71
	mov	eax,dword [ebp-36]
	push	dword [eax+8]
	push	dword [esi+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_401
	mov	eax,dword [esi+20]
	mov	dword [ebp-52],eax
	jmp	_72
_401:
_71:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_73
_72:
	mov	eax,dword [ebp-36]
	fld	dword [eax+16]
	fld	dword [_507]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_402
	mov	eax,dword [ebp-36]
	fld	dword [eax+28]
	mov	eax,dword [ebp-36]
	fstp	dword [eax+16]
_402:
	mov	eax,dword [ebp-36]
	fld	dword [eax+20]
	fld	dword [_508]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_403
	mov	eax,dword [ebp-36]
	fld	dword [eax+32]
	mov	eax,dword [ebp-36]
	fstp	dword [eax+20]
_403:
	mov	eax,dword [ebp-36]
	fld	dword [eax+24]
	fld	dword [_509]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_404
	mov	eax,dword [ebp-36]
	fld	dword [eax+36]
	mov	eax,dword [ebp-36]
	fstp	dword [eax+24]
_404:
	mov	eax,dword [ebp-36]
	fld	dword [eax+40]
	fld	dword [_510]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_405
	mov	eax,dword [ebp-36]
	fld	dword [eax+28]
	mov	eax,dword [ebp-36]
	fstp	dword [eax+40]
_405:
	mov	eax,dword [ebp-36]
	fld	dword [eax+44]
	fld	dword [_511]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_406
	mov	eax,dword [ebp-36]
	fld	dword [eax+32]
	mov	eax,dword [ebp-36]
	fstp	dword [eax+44]
_406:
	mov	eax,dword [ebp-36]
	fld	dword [eax+48]
	fld	dword [_512]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_407
	mov	eax,dword [ebp-36]
	fld	dword [eax+36]
	mov	eax,dword [ebp-36]
	fstp	dword [eax+48]
_407:
	mov	eax,dword [ebp-36]
	mov	eax,dword [eax+12]
	cmp	dword [ebp-80],eax
	jl	_408
	mov	eax,dword [ebp-36]
	fld	dword [eax+32]
	mov	eax,dword [ebp-36]
	fsub	dword [eax+44]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-36]
	fld	dword [eax+28]
	mov	eax,dword [ebp-36]
	fsub	dword [eax+40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbATan2
	add	esp,16
	fstp	dword [ebp-44]
	fld	qword [_513]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-36]
	fld	dword [eax+16]
	mov	eax,dword [ebp-36]
	fsub	dword [eax+40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-16]
	fld	qword [_514]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-36]
	fld	dword [eax+20]
	mov	eax,dword [ebp-36]
	fsub	dword [eax+44]
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
	fstp	dword [ebp-40]
	mov	eax,dword [ebp-36]
	fld	dword [eax+52]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	jne	_411
	mov	eax,dword [ebp-36]
	fld	dword [eax+24]
	fstp	dword [ebp-4]
	mov	eax,dword [ebp-36]
	push	dword [eax+52]
	mov	eax,dword [ebp-36]
	push	dword [eax+48]
	mov	eax,dword [ebp-36]
	push	dword [eax+24]
	call	_bb_BufferWinkel
	add	esp,12
	fld	dword [ebp-4]
	faddp	st1,st0
	fstp	dword [ebp-4]
	fld	dword [ebp-4]
	mov	eax,dword [ebp-36]
	fstp	dword [eax+24]
	jmp	_412
_411:
	mov	eax,dword [ebp-36]
	fld	dword [eax+24]
	fstp	dword [ebp-8]
	mov	eax,dword [ebp-36]
	push	dword [eax+48]
	mov	eax,dword [ebp-36]
	push	dword [eax+36]
	call	_bb_waywinkel
	add	esp,8
	mov	eax,dword [ebp-72]
	mov	edx,dword [eax+12]
	mov	eax,dword [ebp-36]
	sub	edx,dword [eax+12]
	mov	dword [ebp+-136],edx
	fild	dword [ebp+-136]
	fdivp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-36]
	push	dword [eax+48]
	mov	eax,dword [ebp-36]
	push	dword [eax+24]
	call	_bb_BufferWinkel
	add	esp,12
	fld	dword [ebp-8]
	faddp	st1,st0
	fstp	dword [ebp-8]
	fld	dword [ebp-8]
	mov	eax,dword [ebp-36]
	fstp	dword [eax+24]
_412:
	mov	eax,dword [ebp-36]
	fld	dword [eax+56]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_413
	mov	eax,dword [ebp-36]
	fld	dword [eax+56]
	fld	dword [ebp-40]
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_414
	mov	eax,dword [ebp-36]
	fld	dword [eax+56]
	fstp	dword [ebp-40]
_414:
	jmp	_415
_413:
	mov	eax,dword [ebp-72]
	mov	edx,dword [eax+12]
	mov	eax,dword [ebp-36]
	sub	edx,dword [eax+12]
	mov	dword [ebp+-136],edx
	fild	dword [ebp+-136]
	fld	dword [ebp-40]
	fdivrp	st1,st0
	fstp	dword [ebp-40]
_415:
	mov	eax,dword [ebp-36]
	fld	dword [eax+16]
	fstp	qword [ebp-24]
	fld	dword [ebp-44]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	dword [ebp-40]
	fmulp	st1,st0
	fld	qword [ebp-24]
	faddp	st1,st0
	fstp	qword [ebp-24]
	fld	qword [ebp-24]
	mov	eax,dword [ebp-36]
	fstp	dword [eax+16]
	mov	eax,dword [ebp-36]
	fld	dword [eax+20]
	fstp	qword [ebp-32]
	fld	dword [ebp-44]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	dword [ebp-40]
	fmulp	st1,st0
	fld	qword [ebp-32]
	faddp	st1,st0
	fstp	qword [ebp-32]
	fld	qword [ebp-32]
	mov	eax,dword [ebp-36]
	fstp	dword [eax+20]
_408:
	mov	eax,dword [ebp-36]
	push	dword [eax+64]
	mov	eax,dword [ebp-36]
	push	dword [eax+60]
	call	_brl_max2d_SetHandle
	add	esp,8
	mov	eax,dword [ebp-36]
	push	dword [eax+24]
	call	_brl_max2d_SetRotation
	add	esp,4
	mov	eax,dword [ebp-52]
	mov	eax,dword [eax+12]
	mov	dword [ebp+-136],eax
	fild	dword [ebp+-136]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-52]
	mov	eax,dword [eax+8]
	mov	dword [ebp+-136],eax
	fild	dword [ebp+-136]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_515]
	mov	eax,dword [_bb_nTobj]
	fld	dword [eax+20]
	fchs
	faddp	st1,st0
	mov	eax,dword [ebp-36]
	fadd	dword [eax+20]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_516]
	mov	eax,dword [_bb_nTobj]
	fld	dword [eax+16]
	fchs
	faddp	st1,st0
	mov	eax,dword [ebp-36]
	fadd	dword [eax+16]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebp-52]
	call	_bb_DrawPicture
	add	esp,20
	mov	ebx,dword [ebp-60]
	mov	eax,dword [ebp-36]
	push	dword [eax+16]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_417
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	mov	ebx,dword [ebp-60]
	mov	eax,dword [ebp-36]
	push	dword [eax+20]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_419
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	mov	ebx,dword [ebp-60]
	mov	eax,dword [ebp-36]
	push	dword [eax+60]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_421
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	mov	ebx,dword [ebp-60]
	mov	eax,dword [ebp-36]
	push	dword [eax+64]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_423
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	mov	ebx,dword [ebp-60]
	mov	eax,dword [ebp-36]
	push	dword [eax+24]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_425
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
_67:
	mov	eax,dword [ebp-68]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_69
_68:
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
_63:
	add	dword [ebp-80],1
_381:
	mov	eax,dword [ebp-108]
	cmp	dword [ebp-80],eax
	jle	_65
_64:
_57:
	mov	eax,dword [ebp-124]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_59
_58:
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
	mov	eax,dword [ebp-132]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	eax,dword [_bb_nTobj]
	mov	eax,dword [eax+24]
	mov	dword [ebp-96],eax
	mov	eax,dword [ebp-96]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-104],eax
	jmp	_79
_81:
	mov	eax,dword [ebp-104]
	push	_bb_Tobjpixmap
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-56],eax
	cmp	dword [ebp-56],_bbNullObject
	je	_79
	mov	eax,dword [ebp-60]
	push	_434
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,8
	mov	ebx,dword [ebp-60]
	mov	eax,dword [ebp-56]
	mov	eax,dword [eax+12]
	push	dword [eax+12]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_436
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	mov	ebx,dword [ebp-60]
	mov	eax,dword [ebp-56]
	mov	eax,dword [eax+12]
	push	dword [eax+16]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_438
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,8
	mov	dword [ebp-48],0
	mov	eax,dword [ebp-56]
	mov	eax,dword [eax+12]
	mov	eax,dword [eax+12]
	sub	eax,1
	mov	dword [ebp-76],eax
	jmp	_440
_87:
	mov	esi,0
	mov	eax,dword [ebp-56]
	mov	eax,dword [eax+12]
	mov	eax,dword [eax+16]
	sub	eax,1
	mov	edi,eax
	jmp	_443
_90:
	mov	ebx,dword [ebp-60]
	mov	eax,dword [ebp-56]
	mov	eax,dword [eax+12]
	push	esi
	push	dword [ebp-48]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+112]
	add	esp,8
_88:
	add	esi,1
_443:
	cmp	esi,edi
	jle	_90
_89:
_85:
	add	dword [ebp-48],1
_440:
	mov	eax,dword [ebp-76]
	cmp	dword [ebp-48],eax
	jle	_87
_86:
	mov	eax,dword [ebp-60]
	push	_1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,8
	mov	eax,dword [ebp-60]
	push	_1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,8
_79:
	mov	eax,dword [ebp-104]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_81
_80:
	mov	eax,dword [ebp-60]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,4
	push	0
	push	_91
	call	_brl_system_Notify
	add	esp,8
_203:
	call	_bbEnd
	mov	eax,0
	jmp	_149
_149:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tobject_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_Tobject
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+8],eax
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+12],eax
	fldz
	fstp	dword [ebx+16]
	fldz
	fstp	dword [ebx+20]
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [ebx+24],eax
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [ebx+28],eax
	mov	eax,0
	jmp	_152
_152:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tobject_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_155:
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
	mov	eax,dword [ebx+12]
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
	jmp	_456
_456:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tobjpixmap_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_Tobjpixmap
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+8],eax
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+12],eax
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+16],eax
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+20],eax
	mov	eax,0
	jmp	_158
_158:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tobjpixmap_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_161:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_471
	push	eax
	call	_bbGCFree
	add	esp,4
_471:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_473
	push	eax
	call	_bbGCFree
	add	esp,4
_473:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_475
	push	eax
	call	_bbGCFree
	add	esp,4
_475:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_477
	push	eax
	call	_bbGCFree
	add	esp,4
_477:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_469
_469:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tobjanim_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_Tobjanim
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+8],eax
	mov	dword [ebx+12],0
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+16],eax
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [ebx+20],eax
	mov	eax,0
	jmp	_164
_164:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tobjanim_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_167:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_483
	push	eax
	call	_bbGCFree
	add	esp,4
_483:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_485
	push	eax
	call	_bbGCFree
	add	esp,4
_485:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_487
	push	eax
	call	_bbGCFree
	add	esp,4
_487:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_481
_481:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tobjanimdata_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_Tobjanimdata
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+8],eax
	mov	dword [ebx+12],0
	fld	dword [_614]
	fstp	dword [ebx+16]
	fld	dword [_615]
	fstp	dword [ebx+20]
	fld	dword [_616]
	fstp	dword [ebx+24]
	fldz
	fstp	dword [ebx+28]
	fldz
	fstp	dword [ebx+32]
	fldz
	fstp	dword [ebx+36]
	fld	dword [_617]
	fstp	dword [ebx+40]
	fld	dword [_618]
	fstp	dword [ebx+44]
	fld	dword [_619]
	fstp	dword [ebx+48]
	fldz
	fstp	dword [ebx+52]
	fldz
	fstp	dword [ebx+56]
	fldz
	fstp	dword [ebx+60]
	fldz
	fstp	dword [ebx+64]
	mov	eax,0
	jmp	_170
_170:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tobjanimdata_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_173:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_491
	push	eax
	call	_bbGCFree
	add	esp,4
_491:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_489
_489:
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
	fld	qword [_624]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-24]
	fld	qword [_625]
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
	fld	qword [_626]
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
	jmp	_180
_180:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_BufferWinkel:
	push	ebp
	mov	ebp,esp
	fld	dword [ebp+8]
	fld	dword [ebp+12]
	fld	dword [ebp+16]
	fxch	st1
	fsubp	st2,st0
	jmp	_92
_94:
	fxch	st1
	fadd	dword [_629]
	fxch	st1
_92:
	fld	dword [_630]
	fxch	st2
	fucom	st2
	fxch	st2
	fstp	st0
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_94
_93:
	jmp	_95
_97:
	fxch	st1
	fsub	dword [_631]
	fxch	st1
_95:
	fld	dword [_632]
	fxch	st2
	fucom	st2
	fxch	st2
	fstp	st0
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_97
_96:
	fld	dword [_633]
	mov	edx,0
	fxch	st2
	fucom	st1
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_503
	fxch	st2
	fstp	st0
	fld	st0
	fchs
	mov	edx,1
	fxch	st2
_503:
	fld	st1
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
	je	_641
	fxch	st1
	fstp	st0
	jmp	_504
_641:
	fxch	st2
	fstp	st0
	mov	edx,1
	fxch	st1
_504:
	cmp	edx,0
	je	_642
	fstp	st0
	jmp	_505
_642:
	fxch	st1
	fstp	st0
	fchs
_505:
	jmp	_185
_185:
	mov	esp,ebp
	pop	ebp
	ret
_bb_waywinkel:
	push	ebp
	mov	ebp,esp
	fld	dword [ebp+8]
	fld	dword [ebp+12]
	fsubp	st1,st0
	jmp	_98
_100:
	fadd	dword [_643]
_98:
	fld	dword [_644]
	fxch	st1
	fucom	st1
	fxch	st1
	fstp	st0
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_100
_99:
	jmp	_101
_103:
	fsub	dword [_645]
_101:
	fld	dword [_646]
	fxch	st1
	fucom	st1
	fxch	st1
	fstp	st0
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_103
_102:
	jmp	_189
_189:
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_450:
	dd	0
_105:
	db	"Tobject",0
_106:
	db	"name",0
_107:
	db	"$",0
_108:
	db	"autor",0
_109:
	db	"nullx",0
_110:
	db	"f",0
_111:
	db	"nully",0
_112:
	db	"pixmaplist",0
_113:
	db	":brl.linkedlist.TList",0
_114:
	db	"objanimlist",0
_115:
	db	"New",0
_116:
	db	"()i",0
_117:
	db	"Delete",0
	align	4
_104:
	dd	2
	dd	_105
	dd	3
	dd	_106
	dd	_107
	dd	8
	dd	3
	dd	_108
	dd	_107
	dd	12
	dd	3
	dd	_109
	dd	_110
	dd	16
	dd	3
	dd	_111
	dd	_110
	dd	20
	dd	3
	dd	_112
	dd	_113
	dd	24
	dd	3
	dd	_114
	dd	_113
	dd	28
	dd	6
	dd	_115
	dd	_116
	dd	16
	dd	6
	dd	_117
	dd	_116
	dd	20
	dd	0
	align	4
_bb_Tobject:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_104
	dd	32
	dd	__bb_Tobject_New
	dd	__bb_Tobject_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_119:
	db	"Tobjpixmap",0
_120:
	db	"Path",0
_121:
	db	"pix",0
_122:
	db	":brl.pixmap.TPixmap",0
_123:
	db	"img",0
_124:
	db	":brl.max2d.TImage",0
	align	4
_118:
	dd	2
	dd	_119
	dd	3
	dd	_120
	dd	_107
	dd	8
	dd	3
	dd	_121
	dd	_122
	dd	12
	dd	3
	dd	_106
	dd	_107
	dd	16
	dd	3
	dd	_123
	dd	_124
	dd	20
	dd	6
	dd	_115
	dd	_116
	dd	16
	dd	6
	dd	_117
	dd	_116
	dd	20
	dd	0
	align	4
_bb_Tobjpixmap:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_118
	dd	24
	dd	__bb_Tobjpixmap_New
	dd	__bb_Tobjpixmap_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_126:
	db	"Tobjanim",0
_127:
	db	"eventname",0
_128:
	db	"Length",0
_129:
	db	"i",0
_130:
	db	"playnext",0
_131:
	db	"animdatalist",0
	align	4
_125:
	dd	2
	dd	_126
	dd	3
	dd	_127
	dd	_107
	dd	8
	dd	3
	dd	_128
	dd	_129
	dd	12
	dd	3
	dd	_130
	dd	_107
	dd	16
	dd	3
	dd	_131
	dd	_113
	dd	20
	dd	6
	dd	_115
	dd	_116
	dd	16
	dd	6
	dd	_117
	dd	_116
	dd	20
	dd	0
	align	4
_bb_Tobjanim:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_125
	dd	24
	dd	__bb_Tobjanim_New
	dd	__bb_Tobjanim_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_133:
	db	"Tobjanimdata",0
_134:
	db	"pixname",0
_135:
	db	"startat",0
_136:
	db	"nowx",0
_137:
	db	"nowy",0
_138:
	db	"noww",0
_139:
	db	"x",0
_140:
	db	"y",0
_141:
	db	"w",0
_142:
	db	"tox",0
_143:
	db	"toy",0
_144:
	db	"tow",0
_145:
	db	"speedw",0
_146:
	db	"speedmove",0
_147:
	db	"hx",0
_148:
	db	"hy",0
	align	4
_132:
	dd	2
	dd	_133
	dd	3
	dd	_134
	dd	_107
	dd	8
	dd	3
	dd	_135
	dd	_129
	dd	12
	dd	3
	dd	_136
	dd	_110
	dd	16
	dd	3
	dd	_137
	dd	_110
	dd	20
	dd	3
	dd	_138
	dd	_110
	dd	24
	dd	3
	dd	_139
	dd	_110
	dd	28
	dd	3
	dd	_140
	dd	_110
	dd	32
	dd	3
	dd	_141
	dd	_110
	dd	36
	dd	3
	dd	_142
	dd	_110
	dd	40
	dd	3
	dd	_143
	dd	_110
	dd	44
	dd	3
	dd	_144
	dd	_110
	dd	48
	dd	3
	dd	_145
	dd	_110
	dd	52
	dd	3
	dd	_146
	dd	_110
	dd	56
	dd	3
	dd	_147
	dd	_110
	dd	60
	dd	3
	dd	_148
	dd	_110
	dd	64
	dd	6
	dd	_115
	dd	_116
	dd	16
	dd	6
	dd	_117
	dd	_116
	dd	20
	dd	0
	align	4
_bb_Tobjanimdata:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_132
	dd	68
	dd	__bb_Tobjanimdata_New
	dd	__bb_Tobjanimdata_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	align	4
_192:
	dd	0
	align	4
_bb_nTobj:
	dd	_bbNullObject
	align	4
_bb_nTobjpix:
	dd	_bbNullObject
	align	4
_bb_nTobjanim:
	dd	_bbNullObject
	align	4
_bb_nTobjanimdata:
	dd	_bbNullObject
	align	4
_6:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	46,114,111,115
	align	4
_7:
	dd	_bbStringClass
	dd	2147483647
	dd	43
	dw	110,111,32,99,111,109,112,105,116,97,98,108,101,32,100,97
	dw	116,97,32,102,111,117,110,100,33,32,100,114,111,112,32,39
	dw	46,114,111,115,39,32,102,105,108,101,115
	align	4
_11:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	91,79,66,74,69,67,84,93
	align	4
_12:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	91,80,73,88,77,65,80,93
	align	4
_13:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	91,65,78,73,77,65,84,69,93
	align	4
_14:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	61
	align	4
_15:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	78,65,77,69
	align	4
_16:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	69,86,69,78,84,78,65,77,69
	align	4
_17:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	76,69,78,71,84,72
	align	4
_18:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	78,69,88,84
	align	4
_19:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	65,85,84,79,82
	align	4
_20:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	78,85,76,76,46,88
	align	4
_21:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	78,85,76,76,46,89
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	80,65,84,72
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	85,83,69
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	83,84,65,82,84
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	88
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	89
	align	4
_30:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	87,73,78,75,69,76
	align	4
_31:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	83,80,69,69,68,46,87,73,78,75,69,76
	align	4
_32:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	83,80,69,69,68,46,77,79,86,69
	align	4
_33:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	84,79,46,88
	align	4
_34:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	84,79,46,89
	align	4
_35:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	84,79,46,87,73,78,75,69,76
	align	4
_36:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	72,65,78,68,76,69,46,88
	align	4
_37:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	72,65,78,68,76,69,46,89
	align	4
_38:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	32,32,62,32,32,39,110,111,32,115,117,99,104,32,99,111
	dw	109,109,97,110,100,39
	align	4
_23:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	69,82,82,79,82,58,32,108,105,110,101,32
	align	4
_24:
	dd	_bbStringClass
	dd	2147483647
	dd	25
	dw	32,32,62,32,32,39,105,109,97,103,101,32,110,111,116,32
	dw	114,101,97,100,97,98,108,101,39
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	24
	dw	32,32,62,32,32,39,85,83,69,32,97,32,105,109,97,103
	dw	101,32,102,105,114,115,116,39
	align	4
_39:
	dd	_bbStringClass
	dd	2147483647
	dd	46
	dw	87,65,82,78,73,78,71,58,32,105,110,32,39,91,79,66
	dw	74,69,67,84,93,39,32,32,62,32,32,110,111,32,78,65
	dw	77,69,44,32,110,111,32,115,101,114,118,105,99,101
	align	4
_40:
	dd	_bbStringClass
	dd	2147483647
	dd	51
	dw	87,65,82,78,73,78,71,58,32,105,110,32,39,91,79,66
	dw	74,69,67,84,93,39,32,32,62,32,32,110,111,32,91,80
	dw	73,88,77,65,80,93,44,32,110,111,32,105,109,97,103,101
	dw	115,63,33
	align	4
_44:
	dd	_bbStringClass
	dd	2147483647
	dd	46
	dw	87,65,82,78,73,78,71,58,32,105,110,32,39,91,80,73
	dw	88,77,65,80,93,39,32,32,62,32,32,110,111,32,78,65
	dw	77,69,44,32,110,111,32,115,101,114,118,105,99,101
	align	4
_45:
	dd	_bbStringClass
	dd	2147483647
	dd	44
	dw	87,65,82,78,73,78,71,58,32,105,110,32,39,91,80,73
	dw	88,77,65,80,93,39,32,32,62,32,32,110,111,32,80,65
	dw	84,72,44,32,110,111,32,105,109,97,103,101
	align	4
_46:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	46,99,111,115
	align	4
_47:
	dd	_bbStringClass
	dd	2147483647
	dd	102
	dw	68,105,101,115,101,32,68,97,116,97,105,32,119,117,114,100
	dw	101,32,65,117,116,111,103,101,110,101,114,105,101,114,116,33
	dw	32,78,105,99,104,116,32,118,111,110,32,72,97,110,100,32
	dw	228,110,100,101,114,110,33,32,66,101,105,32,70,101,104,108
	dw	101,114,110,32,105,110,32,100,101,114,32,68,97,116,101,105
	dw	44,32,100,105,101,115,101,32,98,105,116,116,101,32,108,246
	dw	115,99,104,101,110,46
	align	4
_48:
	dd	_bbStringClass
	dd	2147483647
	dd	74
	dw	68,97,115,32,118,101,114,97,101,110,100,101,114,110,32,117
	dw	110,100,32,115,112,101,105,99,104,101,114,110,32,109,105,116
	dw	32,100,101,109,32,87,105,110,100,111,119,115,32,69,100,105
	dw	116,111,114,32,122,101,114,115,116,111,101,114,116,32,100,105
	dw	101,115,101,32,68,97,116,101,105,33
	align	4
_49:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	40,99,41,32,76,97,115,116,109,97,121,100,97,121
	align	4
_50:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	32
	align	4
_352:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	111,98,106,46,78,65,77,69,61
	align	4
_355:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	111,98,106,46,65,85,84,79,82,61
	align	4
_357:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	111,98,106,46,78,85,76,76,88,61
	align	4
_359:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	111,98,106,46,78,85,76,76,89,61
	align	4
_56:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	65,110,105,109,97,116,105,110,103,46,46,46
	align	4
_373:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	111,98,106,46,91,65,78,73,77,65,84,69,93
	align	4
_375:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	111,98,106,46,69,86,69,78,84,78,65,77,69,61
	align	4
_377:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	111,98,106,46,76,69,78,71,84,72,61
	align	4
_379:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	111,98,106,46,78,69,88,84,61
	align	4
_384:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	111,98,106,46,91,70,82,65,77,69,93
	align	4
_393:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	111,98,106,46,85,83,69,61
	align	4
_507:
	dd	0xc61c3c00
	align	4
_508:
	dd	0xc61c3c00
	align	4
_509:
	dd	0xc61c3c00
	align	4
_510:
	dd	0xc61c3c00
	align	4
_511:
	dd	0xc61c3c00
	align	4
_512:
	dd	0xc61c3c00
	align	8
_513:
	dd	0x0,0x40000000
	align	8
_514:
	dd	0x0,0x40000000
	align	4
_515:
	dd	0x43000000
	align	4
_516:
	dd	0x43000000
	align	4
_417:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	111,98,106,46,88,61
	align	4
_419:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	111,98,106,46,89,61
	align	4
_421:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	111,98,106,46,72,88,61
	align	4
_423:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	111,98,106,46,72,89,61
	align	4
_425:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	111,98,106,46,87,61
	align	4
_434:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	111,98,106,46,91,73,77,65,71,69,68,65,84,65,93
	align	4
_436:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	111,98,106,46,87,73,68,84,72,61
	align	4
_438:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	111,98,106,46,72,69,73,71,72,84,61
	align	4
_1:
	dd	_bbStringClass
	dd	2147483647
	dd	0
	align	4
_91:
	dd	_bbStringClass
	dd	2147483647
	dd	25
	dw	68,111,110,101,33,32,83,99,114,105,112,116,32,105,115,32
	dw	65,99,99,101,112,116,101,100,33
	align	4
_614:
	dd	0xc61c3c00
	align	4
_615:
	dd	0xc61c3c00
	align	4
_616:
	dd	0xc61c3c00
	align	4
_617:
	dd	0xc61c3c00
	align	4
_618:
	dd	0xc61c3c00
	align	4
_619:
	dd	0xc61c3c00
	align	8
_624:
	dd	0x0,0x40000000
	align	8
_625:
	dd	0x0,0x40000000
	align	8
_626:
	dd	0x0,0x40668000
	align	4
_629:
	dd	0x43b40000
	align	4
_630:
	dd	0xc3b40000
	align	4
_631:
	dd	0x43b40000
	align	4
_632:
	dd	0x43b40000
	align	4
_633:
	dd	0x0
	align	4
_643:
	dd	0x43b40000
	align	4
_644:
	dd	0xc3340000
	align	4
_645:
	dd	0x43b40000
	align	4
_646:
	dd	0x43340000
