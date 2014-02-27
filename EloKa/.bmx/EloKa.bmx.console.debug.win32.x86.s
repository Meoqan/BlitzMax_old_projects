	format	MS COFF
	extrn	___bb_audio_audio
	extrn	___bb_blitz_blitz
	extrn	___bb_directsoundaudio_directsoundaudio
	extrn	___bb_eventqueue_eventqueue
	extrn	___bb_glmax2d_glmax2d
	extrn	___bb_jpgloader_jpgloader
	extrn	___bb_oggloader_oggloader
	extrn	___bb_pngloader_pngloader
	extrn	___bb_random_random
	extrn	___bb_retro_retro
	extrn	___bb_timer_timer
	extrn	___bb_wavloader_wavloader
	extrn	_bbAppTitle
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
	extrn	_bbSqr
	extrn	_bbStringClass
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_graphics_Flip
	extrn	_brl_graphics_Graphics
	extrn	_brl_linkedlist_CreateList
	extrn	_brl_max2d_Cls
	extrn	_brl_max2d_CreateImage
	extrn	_brl_max2d_DrawImage
	extrn	_brl_max2d_DrawText
	extrn	_brl_max2d_GrabImage
	extrn	_brl_max2d_LoadImage
	extrn	_brl_max2d_SetAlpha
	extrn	_brl_max2d_SetBlend
	extrn	_brl_max2d_SetColor
	extrn	_brl_max2d_SetHandle
	extrn	_brl_max2d_SetRotation
	extrn	_brl_max2d_SetScale
	extrn	_brl_pixmap_CreatePixmap
	extrn	_brl_polledinput_AppTerminate
	extrn	_brl_polledinput_KeyHit
	extrn	_brl_random_SeedRnd
	extrn	_brl_timer_CreateTimer
	public	__bb_Tggui_Delete
	public	__bb_Tggui_Draw
	public	__bb_Tggui_Grab
	public	__bb_Tggui_New
	public	__bb_Tggui_Resize
	public	__bb_main
	public	__bb_z_2f21a2d2_f207_4064_b61d_7a2669a2589a_3_0_Delete
	public	__bb_z_2f21a2d2_f207_4064_b61d_7a2669a2589a_3_0_New
	public	__bb_z_My_2f21a2d2_f207_4064_b61d_7a2669a2589a_Application
	public	__bb_z_My_2f21a2d2_f207_4064_b61d_7a2669a2589a_Delete
	public	__bb_z_My_2f21a2d2_f207_4064_b61d_7a2669a2589a_New
	public	__bb_z_My_2f21a2d2_f207_4064_b61d_7a2669a2589a_Resources
	public	__bb_z_blide_bg2f21a2d2_f207_4064_b61d_7a2669a2589a_Delete
	public	__bb_z_blide_bg2f21a2d2_f207_4064_b61d_7a2669a2589a_New
	public	_bb_Lggui
	public	_bb_SetReset
	public	_bb_Tggui
	public	_bb_back
	public	_bb_ggui_Draw
	public	_bb_ggui_New
	public	_bb_ggui_Setup
	public	_bb_ggui_border
	public	_bb_ggui_id
	public	_bb_ggui_round
	public	_bb_testwin
	public	_bb_tmr
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	cmp	dword [_228],0
	je	_229
	mov	eax,0
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_229:
	mov	dword [_228],1
	mov	eax,ebp
	push	eax
	push	_213
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
	call	___bb_eventqueue_eventqueue
	push	_18
	call	_bbObjectRegisterType
	add	esp,4
	push	_19
	call	_bbObjectRegisterType
	add	esp,4
	push	_147
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_149
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_25
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_Tggui
	call	_bbObjectRegisterType
	add	esp,4
	push	_150
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_152
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_155]
	and	eax,1
	cmp	eax,0
	jne	_156
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_Lggui],eax
	or	dword [_155],1
_156:
	push	_157
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_158
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_159
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_160
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_ggui_Setup
	push	_161
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	push	eax
	call	_brl_random_SeedRnd
	add	esp,4
	push	_163
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_20
	inc	dword [ebx+4]
	mov	eax,dword [_bbAppTitle]
	dec	dword [eax+4]
	jnz	_167
	push	eax
	call	_bbGCFree
	add	esp,4
_167:
	mov	dword [_bbAppTitle],ebx
	push	_168
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	60
	push	0
	push	768
	push	1024
	call	_brl_graphics_Graphics
	add	esp,20
	push	_169
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	3
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_170
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_155]
	and	eax,2
	cmp	eax,0
	jne	_172
	push	360
	push	576
	push	100
	push	100
	call	_bb_ggui_New
	add	esp,16
	inc	dword [eax+4]
	mov	dword [_bb_testwin],eax
	or	dword [_155],2
_172:
	push	_173
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_155]
	and	eax,4
	cmp	eax,0
	jne	_175
	push	-1
	push	_41
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_back],eax
	or	dword [_155],4
_175:
	push	_176
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_155]
	and	eax,8
	cmp	eax,0
	jne	_178
	push	_bbNullObject
	push	1109393408
	call	_brl_timer_CreateTimer
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_tmr],eax
	or	dword [_155],8
_178:
	push	_179
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_42
_44:
	mov	eax,ebp
	push	eax
	push	_212
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_182
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_tmr]
	cmp	ebx,_bbNullObject
	jne	_184
	call	_brl_blitz_NullObjectError
_184:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	_185
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_186
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_SetReset
	push	_187
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_testwin]
	mov	dword [ebp-4],eax
	cmp	dword [ebp-4],_bbNullObject
	jne	_189
	call	_brl_blitz_NullObjectError
_189:
	mov	edi,dword [_bb_back]
	cmp	edi,_bbNullObject
	jne	_191
	call	_brl_blitz_NullObjectError
_191:
	mov	esi,dword [_bb_testwin]
	cmp	esi,_bbNullObject
	jne	_193
	call	_brl_blitz_NullObjectError
_193:
	mov	ebx,dword [_bb_back]
	cmp	ebx,_bbNullObject
	jne	_195
	call	_brl_blitz_NullObjectError
_195:
	mov	eax,dword [esi+24]
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	mov	eax,dword [ebx+12]
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	fdivp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-4]
	mov	eax,dword [eax+20]
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	mov	eax,dword [edi+8]
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	fdivp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetScale
	add	esp,8
	push	_196
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	push	dword [_bb_back]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_197
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	_198
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1092616192
	push	1092616192
	push	_45
	call	_brl_max2d_DrawText
	add	esp,12
	push	_199
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_testwin]
	cmp	ebx,_bbNullObject
	jne	_201
	call	_brl_blitz_NullObjectError
_201:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_202
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_203
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_SetReset
	push	_204
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_back]
	cmp	ebx,_bbNullObject
	jne	_206
	call	_brl_blitz_NullObjectError
_206:
	mov	esi,dword [_bb_back]
	cmp	esi,_bbNullObject
	jne	_208
	call	_brl_blitz_NullObjectError
_208:
	fld	dword [_513]
	mov	eax,dword [esi+12]
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	fdivp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_514]
	mov	eax,dword [ebx+8]
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	fdivp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetScale
	add	esp,8
	push	_209
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	push	dword [_bb_back]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_210
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_ggui_Draw
	push	_211
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_42:
	push	27
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	jne	_180
	call	_brl_polledinput_AppTerminate
_180:
	cmp	eax,0
	je	_44
_43:
	mov	ebx,0
	jmp	_98
_98:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_2f21a2d2_f207_4064_b61d_7a2669a2589a_3_0_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_231
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_18
	push	ebp
	push	_230
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_101
_101:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_2f21a2d2_f207_4064_b61d_7a2669a2589a_3_0_Delete:
	push	ebp
	mov	ebp,esp
_104:
	mov	eax,0
	jmp	_234
_234:
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_blide_bg2f21a2d2_f207_4064_b61d_7a2669a2589a_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_236
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_19
	push	ebp
	push	_235
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_107
_107:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_blide_bg2f21a2d2_f207_4064_b61d_7a2669a2589a_Delete:
	push	ebp
	mov	ebp,esp
_110:
	mov	eax,0
	jmp	_238
_238:
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_My_2f21a2d2_f207_4064_b61d_7a2669a2589a_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_240
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_25
	push	ebp
	push	_239
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_113
_113:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_My_2f21a2d2_f207_4064_b61d_7a2669a2589a_Delete:
	push	ebp
	mov	ebp,esp
_116:
	mov	eax,0
	jmp	_241
_241:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tggui_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_244
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Tggui
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],0
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],edx
	push	ebp
	push	_243
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_119
_119:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tggui_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_122:
	mov	eax,dword [eax+28]
	dec	dword [eax+4]
	jnz	_247
	push	eax
	call	_bbGCFree
	add	esp,4
_247:
	mov	eax,0
	jmp	_245
_245:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tggui_Draw:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,ebp
	push	eax
	push	_343
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_248
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_249
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	_250
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_251
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_252
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_253
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_254
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_255
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	_256
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_257
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1127481344
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_258
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_260
	call	_brl_blitz_NullObjectError
_260:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_262
	call	_brl_blitz_NullObjectError
_262:
	push	0
	mov	eax,dword [esi+16]
	mov	dword [ebp+-16],eax
	fild	dword [ebp+-16]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebx+12]
	mov	dword [ebp+-16],eax
	fild	dword [ebp+-16]
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_ggui_round]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_263
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_264
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [ebp-8],eax
	cmp	dword [ebp-8],_bbNullObject
	jne	_266
	call	_brl_blitz_NullObjectError
_266:
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_268
	call	_brl_blitz_NullObjectError
_268:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_270
	call	_brl_blitz_NullObjectError
_270:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_272
	call	_brl_blitz_NullObjectError
_272:
	push	0
	mov	eax,dword [esi+16]
	add	eax,dword [ebx+24]
	mov	dword [ebp+-16],eax
	fild	dword [ebp+-16]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax+12]
	add	eax,dword [edi+20]
	mov	dword [ebp+-16],eax
	fild	dword [ebp+-16]
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_ggui_round]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_273
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1119092736
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_274
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_276
	call	_brl_blitz_NullObjectError
_276:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_278
	call	_brl_blitz_NullObjectError
_278:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_280
	call	_brl_blitz_NullObjectError
_280:
	push	0
	mov	eax,dword [esi+16]
	add	eax,dword [ebx+24]
	mov	dword [ebp+-16],eax
	fild	dword [ebp+-16]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [edi+12]
	mov	dword [ebp+-16],eax
	fild	dword [ebp+-16]
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_ggui_round]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_281
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1132920832
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_282
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_284
	call	_brl_blitz_NullObjectError
_284:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_286
	call	_brl_blitz_NullObjectError
_286:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_288
	call	_brl_blitz_NullObjectError
_288:
	push	0
	mov	eax,dword [ebx+16]
	mov	dword [ebp+-16],eax
	fild	dword [ebp+-16]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [edi+12]
	add	eax,dword [esi+20]
	mov	dword [ebp+-16],eax
	fild	dword [ebp+-16]
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_ggui_round]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_289
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_290
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1132920832
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_291
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_293
	call	_brl_blitz_NullObjectError
_293:
	mov	eax,dword [ebx+20]
	mov	dword [ebp+-16],eax
	fild	dword [ebp+-16]
	fdiv	dword [_547]
	sub	esp,4
	fstp	dword [esp]
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	_294
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_296
	call	_brl_blitz_NullObjectError
_296:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_298
	call	_brl_blitz_NullObjectError
_298:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_300
	call	_brl_blitz_NullObjectError
_300:
	push	0
	mov	eax,dword [esi+16]
	add	eax,dword [ebx+24]
	add	eax,10
	mov	dword [ebp+-16],eax
	fild	dword [ebp+-16]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [edi+12]
	mov	dword [ebp+-16],eax
	fild	dword [ebp+-16]
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_ggui_border]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_301
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1119092736
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_302
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_304
	call	_brl_blitz_NullObjectError
_304:
	mov	eax,dword [ebx+20]
	mov	dword [ebp+-16],eax
	fild	dword [ebp+-16]
	fdiv	dword [_548]
	sub	esp,4
	fstp	dword [esp]
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	_305
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_307
	call	_brl_blitz_NullObjectError
_307:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_309
	call	_brl_blitz_NullObjectError
_309:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_311
	call	_brl_blitz_NullObjectError
_311:
	push	0
	mov	eax,dword [ebx+16]
	sub	eax,10
	mov	dword [ebp+-16],eax
	fild	dword [ebp+-16]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [edi+12]
	add	eax,dword [esi+20]
	mov	dword [ebp+-16],eax
	fild	dword [ebp+-16]
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_ggui_border]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_312
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1127481344
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_313
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_315
	call	_brl_blitz_NullObjectError
_315:
	mov	eax,dword [ebx+24]
	mov	dword [ebp+-16],eax
	fild	dword [ebp+-16]
	fdiv	dword [_549]
	sub	esp,4
	fstp	dword [esp]
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	_316
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [ebp-12],eax
	cmp	dword [ebp-12],_bbNullObject
	jne	_318
	call	_brl_blitz_NullObjectError
_318:
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_320
	call	_brl_blitz_NullObjectError
_320:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_322
	call	_brl_blitz_NullObjectError
_322:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_324
	call	_brl_blitz_NullObjectError
_324:
	push	0
	mov	eax,dword [esi+16]
	add	eax,dword [ebx+24]
	mov	dword [ebp+-16],eax
	fild	dword [ebp+-16]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+12]
	add	eax,dword [edi+20]
	add	eax,10
	mov	dword [ebp+-16],eax
	fild	dword [ebp+-16]
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_ggui_border]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_325
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_326
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_328
	call	_brl_blitz_NullObjectError
_328:
	mov	eax,dword [ebx+24]
	mov	dword [ebp+-16],eax
	fild	dword [ebp+-16]
	fdiv	dword [_550]
	sub	esp,4
	fstp	dword [esp]
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	_329
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_331
	call	_brl_blitz_NullObjectError
_331:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_333
	call	_brl_blitz_NullObjectError
_333:
	push	0
	mov	eax,dword [esi+16]
	mov	dword [ebp+-16],eax
	fild	dword [ebp+-16]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebx+12]
	sub	eax,10
	mov	dword [ebp+-16],eax
	fild	dword [ebp+-16]
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_ggui_border]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_334
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	_335
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_336
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_338
	call	_brl_blitz_NullObjectError
_338:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_340
	call	_brl_blitz_NullObjectError
_340:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_342
	call	_brl_blitz_NullObjectError
_342:
	push	0
	mov	eax,dword [ebx+16]
	mov	dword [ebp+-16],eax
	fild	dword [ebp+-16]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [esi+12]
	mov	dword [ebp+-16],eax
	fild	dword [ebp+-16]
	sub	esp,4
	fstp	dword [esp]
	push	dword [edi+28]
	call	_brl_max2d_DrawImage
	add	esp,16
	mov	ebx,0
	jmp	_125
_125:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tggui_Grab:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_353
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_344
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_345
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
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
	push	1065353216
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	_348
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_349
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	_350
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_352
	call	_brl_blitz_NullObjectError
_352:
	push	0
	push	0
	push	0
	push	dword [ebx+28]
	call	_brl_max2d_GrabImage
	add	esp,16
	mov	ebx,0
	jmp	_128
_128:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tggui_Resize:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	push	ebp
	push	_378
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_354
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_356
	call	_brl_blitz_NullObjectError
_356:
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_361
	push	eax
	call	_bbGCFree
	add	esp,4
_361:
	mov	dword [esi+28],ebx
	push	_362
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_364
	call	_brl_blitz_NullObjectError
_364:
	push	8
	push	1
	push	dword [ebp-12]
	push	dword [ebp-8]
	call	_brl_max2d_CreateImage
	add	esp,16
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_369
	push	eax
	call	_bbGCFree
	add	esp,4
_369:
	mov	dword [ebx+28],esi
	push	_370
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_372
	call	_brl_blitz_NullObjectError
_372:
	mov	eax,dword [ebp-8]
	mov	dword [ebx+20],eax
	push	_374
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_376
	call	_brl_blitz_NullObjectError
_376:
	mov	eax,dword [ebp-12]
	mov	dword [ebx+24],eax
	mov	ebx,0
	jmp	_133
_133:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_ggui_New:
	push	ebp
	mov	ebp,esp
	sub	esp,20
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
	mov	dword [ebp-20],_bbNullObject
	push	ebp
	push	_416
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_381
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_Tggui
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-20],eax
	push	_383
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_Lggui]
	cmp	ebx,_bbNullObject
	jne	_385
	call	_brl_blitz_NullObjectError
_385:
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_386
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_388
	call	_brl_blitz_NullObjectError
_388:
	mov	eax,dword [_bb_ggui_id]
	mov	dword [ebx+8],eax
	push	_390
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_392
	call	_brl_blitz_NullObjectError
_392:
	mov	eax,dword [ebp-4]
	mov	dword [ebx+12],eax
	push	_394
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_396
	call	_brl_blitz_NullObjectError
_396:
	mov	eax,dword [ebp-8]
	mov	dword [ebx+16],eax
	push	_398
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_400
	call	_brl_blitz_NullObjectError
_400:
	mov	eax,dword [ebp-12]
	mov	dword [ebx+20],eax
	push	_402
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_404
	call	_brl_blitz_NullObjectError
_404:
	mov	eax,dword [ebp-16]
	mov	dword [ebx+24],eax
	push	_406
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_408
	call	_brl_blitz_NullObjectError
_408:
	push	8
	push	1
	push	dword [ebp-16]
	push	dword [ebp-12]
	call	_brl_max2d_CreateImage
	add	esp,16
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_413
	push	eax
	call	_bbGCFree
	add	esp,4
_413:
	mov	dword [ebx+28],esi
	push	_414
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [_bb_ggui_id],1
	push	_415
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	jmp	_139
_139:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_ggui_Draw:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_434
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_419
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_bbNullObject
	mov	edi,dword [_bb_Lggui]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_423
	call	_brl_blitz_NullObjectError
_423:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_26
_28:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_428
	call	_brl_blitz_NullObjectError
_428:
	push	_bb_Tggui
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-4],eax
	cmp	dword [ebp-4],_bbNullObject
	je	_26
	mov	eax,ebp
	push	eax
	push	_432
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_429
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_431
	call	_brl_blitz_NullObjectError
_431:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_26:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_426
	call	_brl_blitz_NullObjectError
_426:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_28
_27:
	mov	ebx,0
	jmp	_141
_141:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_ggui_Setup:
	push	ebp
	mov	ebp,esp
	sub	esp,56
	push	ebx
	mov	dword [ebp-4],_bbNullObject
	mov	dword [ebp-12],0
	mov	dword [ebp-16],0
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	mov	dword [ebp-8],_bbNullObject
	mov	dword [ebp-28],0
	mov	dword [ebp-32],0
	mov	dword [ebp-36],0
	mov	dword [ebp-40],0
	fldz
	fstp	dword [ebp-44]
	push	ebp
	push	_501
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_436
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	4
	push	6
	push	10
	push	10
	call	_brl_pixmap_CreatePixmap
	add	esp,16
	mov	dword [ebp-4],eax
	push	_438
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	dword [ebp-12],1
	jmp	_440
_31:
	push	ebp
	push	_459
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_441
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	mov	dword [ebp-16],1
	jmp	_443
_34:
	push	ebp
	push	_455
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_444
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	push	_446
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	eax,dword [ebp-20]
	mov	dword [ebp-24],eax
	push	_448
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	mov	byte [eax],255
	push	_449
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	mov	byte [eax+1],255
	push	_450
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	mov	byte [eax+2],255
	push	_451
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	fld	dword [_610]
	fld	dword [_611]
	mov	eax,dword [ebp-12]
	mov	dword [ebp+-56],eax
	fild	dword [ebp+-56]
	fmulp	st1,st0
	fsubp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [ebx+3],al
	push	_452
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_454
	call	_brl_blitz_NullObjectError
_454:
	push	dword [ebp-20]
	mov	edx,9
	mov	eax,dword [ebp-16]
	sub	eax,1
	sub	edx,eax
	push	edx
	mov	edx,9
	mov	eax,dword [ebp-12]
	sub	eax,1
	sub	edx,eax
	push	edx
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,16
	call	dword [_bbOnDebugLeaveScope]
_32:
	add	dword [ebp-16],1
_443:
	cmp	dword [ebp-16],10
	jle	_34
_33:
	call	dword [_bbOnDebugLeaveScope]
_29:
	add	dword [ebp-12],1
_440:
	cmp	dword [ebp-12],10
	jle	_31
_30:
	push	_460
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	dword [ebp-4]
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_ggui_border]
	dec	dword [eax+4]
	jnz	_464
	push	eax
	call	_bbGCFree
	add	esp,4
_464:
	mov	dword [_bb_ggui_border],ebx
	push	_465
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	4
	push	6
	push	10
	push	10
	call	_brl_pixmap_CreatePixmap
	add	esp,16
	mov	dword [ebp-8],eax
	push	_467
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	mov	dword [ebp-28],1
	jmp	_469
_37:
	push	ebp
	push	_495
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_470
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],0
	mov	dword [ebp-32],1
	jmp	_472
_40:
	push	ebp
	push	_492
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_473
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],0
	push	_475
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	eax,dword [ebp-36]
	mov	dword [ebp-40],eax
	push	_477
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	mov	byte [eax],255
	push	_478
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	mov	byte [eax+1],255
	push	_479
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	mov	byte [eax+2],255
	push	_480
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_612]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-28]
	mov	dword [ebp+-56],eax
	fild	dword [ebp+-56]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-52]
	fld	qword [_613]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-32]
	mov	dword [ebp+-56],eax
	fild	dword [ebp+-56]
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
	fstp	dword [ebp-44]
	push	_482
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-44]
	fld	dword [_614]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_483
	push	ebp
	push	_485
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_484
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	mov	byte [eax+3],0
	call	dword [_bbOnDebugLeaveScope]
	jmp	_486
_483:
	push	ebp
	push	_488
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_487
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	fld	dword [_615]
	fld	dword [_616]
	fmul	dword [ebp-44]
	fsubp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [ebx+3],al
	call	dword [_bbOnDebugLeaveScope]
_486:
	push	_489
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_491
	call	_brl_blitz_NullObjectError
_491:
	push	dword [ebp-36]
	mov	eax,dword [ebp-32]
	sub	eax,1
	push	eax
	mov	eax,dword [ebp-28]
	sub	eax,1
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,16
	call	dword [_bbOnDebugLeaveScope]
_38:
	add	dword [ebp-32],1
_472:
	cmp	dword [ebp-32],10
	jle	_40
_39:
	call	dword [_bbOnDebugLeaveScope]
_35:
	add	dword [ebp-28],1
_469:
	cmp	dword [ebp-28],10
	jle	_37
_36:
	push	_496
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	dword [ebp-8]
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_ggui_round]
	dec	dword [eax+4]
	jnz	_500
	push	eax
	call	_bbGCFree
	add	esp,4
_500:
	mov	dword [_bb_ggui_round],ebx
	mov	ebx,0
	jmp	_143
_143:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_SetReset:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	ebp
	push	_511
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_506
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_507
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	_508
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_509
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_510
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	mov	ebx,0
	jmp	_145
_145:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_228:
	dd	0
_214:
	db	"EloKa",0
_215:
	db	"My",0
_216:
	db	":z_My_2f21a2d2_f207_4064_b61d_7a2669a2589a",0
	align	4
_151:
	dd	_bbNullObject
_217:
	db	"Lggui",0
_218:
	db	":brl.linkedlist.TList",0
	align	4
_bb_Lggui:
	dd	_bbNullObject
_219:
	db	"ggui_id",0
_69:
	db	"i",0
	align	4
_bb_ggui_id:
	dd	1
_220:
	db	"ggui_border",0
_221:
	db	":brl.max2d.Timage",0
	align	4
_bb_ggui_border:
	dd	_bbNullObject
_222:
	db	"ggui_round",0
	align	4
_bb_ggui_round:
	dd	_bbNullObject
_223:
	db	"testwin",0
_224:
	db	":Tggui",0
	align	4
_bb_testwin:
	dd	_bbNullObject
_225:
	db	"back",0
	align	4
_bb_back:
	dd	_bbNullObject
_226:
	db	"tmr",0
_227:
	db	":brl.timer.Ttimer",0
	align	4
_bb_tmr:
	dd	_bbNullObject
	align	4
_213:
	dd	1
	dd	_214
	dd	4
	dd	_215
	dd	_216
	dd	_151
	dd	4
	dd	_217
	dd	_218
	dd	_bb_Lggui
	dd	4
	dd	_219
	dd	_69
	dd	_bb_ggui_id
	dd	4
	dd	_220
	dd	_221
	dd	_bb_ggui_border
	dd	4
	dd	_222
	dd	_221
	dd	_bb_ggui_round
	dd	4
	dd	_223
	dd	_224
	dd	_bb_testwin
	dd	4
	dd	_225
	dd	_221
	dd	_bb_back
	dd	4
	dd	_226
	dd	_227
	dd	_bb_tmr
	dd	0
_59:
	db	"z_2f21a2d2_f207_4064_b61d_7a2669a2589a_3_0",0
_60:
	db	"New",0
_61:
	db	"()i",0
_62:
	db	"Delete",0
	align	4
_58:
	dd	2
	dd	_59
	dd	6
	dd	_60
	dd	_61
	dd	16
	dd	6
	dd	_62
	dd	_61
	dd	20
	dd	0
	align	4
_18:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_58
	dd	8
	dd	__bb_z_2f21a2d2_f207_4064_b61d_7a2669a2589a_3_0_New
	dd	__bb_z_2f21a2d2_f207_4064_b61d_7a2669a2589a_3_0_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_64:
	db	"z_blide_bg2f21a2d2_f207_4064_b61d_7a2669a2589a",0
_65:
	db	"Name",0
_66:
	db	"$",0
	align	4
_67:
	dd	_bbStringClass
	dd	2147483646
	dd	5
	dw	69,108,111,75,97
_68:
	db	"MajorVersion",0
	align	4
_70:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	48
_71:
	db	"MinorVersion",0
_72:
	db	"Revision",0
	align	4
_73:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	49
_74:
	db	"VersionString",0
	align	4
_75:
	dd	_bbStringClass
	dd	2147483646
	dd	5
	dw	48,46,48,46,49
_76:
	db	"AssemblyInfo",0
	align	4
_77:
	dd	_bbStringClass
	dd	2147483646
	dd	11
	dw	69,108,111,75,97,32,48,46,48,46,49
_78:
	db	"Platform",0
	align	4
_79:
	dd	_bbStringClass
	dd	2147483646
	dd	5
	dw	87,105,110,51,50
_80:
	db	"Architecture",0
	align	4
_81:
	dd	_bbStringClass
	dd	2147483646
	dd	3
	dw	120,56,54
_82:
	db	"DebugOn",0
	align	4
_63:
	dd	2
	dd	_64
	dd	1
	dd	_65
	dd	_66
	dd	_67
	dd	1
	dd	_68
	dd	_69
	dd	_70
	dd	1
	dd	_71
	dd	_69
	dd	_70
	dd	1
	dd	_72
	dd	_69
	dd	_73
	dd	1
	dd	_74
	dd	_66
	dd	_75
	dd	1
	dd	_76
	dd	_66
	dd	_77
	dd	1
	dd	_78
	dd	_66
	dd	_79
	dd	1
	dd	_80
	dd	_66
	dd	_81
	dd	1
	dd	_82
	dd	_69
	dd	_73
	dd	6
	dd	_60
	dd	_61
	dd	16
	dd	6
	dd	_62
	dd	_61
	dd	20
	dd	0
	align	4
_19:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_63
	dd	8
	dd	__bb_z_blide_bg2f21a2d2_f207_4064_b61d_7a2669a2589a_New
	dd	__bb_z_blide_bg2f21a2d2_f207_4064_b61d_7a2669a2589a_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_148:
	db	"C:/Users/admin/Dropbox/Proggen/projecte/EloKa/EloKa.bmx",0
	align	4
_147:
	dd	_148
	dd	91
	dd	5
	align	4
__bb_z_My_2f21a2d2_f207_4064_b61d_7a2669a2589a_Application:
	dd	_bbNullObject
	align	4
_149:
	dd	_148
	dd	92
	dd	5
	align	4
__bb_z_My_2f21a2d2_f207_4064_b61d_7a2669a2589a_Resources:
	dd	_bbNullObject
_84:
	db	"z_My_2f21a2d2_f207_4064_b61d_7a2669a2589a",0
	align	4
_83:
	dd	2
	dd	_84
	dd	6
	dd	_60
	dd	_61
	dd	16
	dd	6
	dd	_62
	dd	_61
	dd	20
	dd	0
	align	4
_25:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_83
	dd	8
	dd	__bb_z_My_2f21a2d2_f207_4064_b61d_7a2669a2589a_New
	dd	__bb_z_My_2f21a2d2_f207_4064_b61d_7a2669a2589a_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_86:
	db	"Tggui",0
_87:
	db	"id",0
_88:
	db	"x",0
_89:
	db	"y",0
_90:
	db	"w",0
_91:
	db	"h",0
_92:
	db	"image",0
_93:
	db	":brl.max2d.TImage",0
_94:
	db	"Draw",0
_95:
	db	"Grab",0
_96:
	db	"Resize",0
_97:
	db	"(i,i)i",0
	align	4
_85:
	dd	2
	dd	_86
	dd	3
	dd	_87
	dd	_69
	dd	8
	dd	3
	dd	_88
	dd	_69
	dd	12
	dd	3
	dd	_89
	dd	_69
	dd	16
	dd	3
	dd	_90
	dd	_69
	dd	20
	dd	3
	dd	_91
	dd	_69
	dd	24
	dd	3
	dd	_92
	dd	_93
	dd	28
	dd	6
	dd	_60
	dd	_61
	dd	16
	dd	6
	dd	_62
	dd	_61
	dd	20
	dd	6
	dd	_94
	dd	_61
	dd	48
	dd	6
	dd	_95
	dd	_61
	dd	52
	dd	6
	dd	_96
	dd	_97
	dd	56
	dd	0
	align	4
_bb_Tggui:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_85
	dd	32
	dd	__bb_Tggui_New
	dd	__bb_Tggui_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_Tggui_Draw
	dd	__bb_Tggui_Grab
	dd	__bb_Tggui_Resize
	align	4
_150:
	dd	_148
	dd	96
	dd	1
_153:
	db	"C:/Users/admin/Dropbox/Proggen/projecte/EloKa/inc/ggui_main.bmx",0
	align	4
_152:
	dd	_153
	dd	2
	dd	1
	align	4
_155:
	dd	0
	align	4
_157:
	dd	_153
	dd	3
	dd	1
	align	4
_158:
	dd	_153
	dd	4
	dd	1
	align	4
_159:
	dd	_153
	dd	5
	dd	1
	align	4
_160:
	dd	_153
	dd	7
	dd	1
_162:
	db	"C:/Users/admin/Dropbox/Proggen/projecte/EloKa/main.bmx",0
	align	4
_161:
	dd	_162
	dd	3
	dd	1
	align	4
_163:
	dd	_162
	dd	7
	dd	1
	align	4
_20:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	69,108,111,75,97
	align	4
_168:
	dd	_162
	dd	9
	dd	1
	align	4
_169:
	dd	_162
	dd	10
	dd	1
	align	4
_170:
	dd	_162
	dd	12
	dd	1
	align	4
_173:
	dd	_162
	dd	13
	dd	1
	align	4
_41:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	103,102,120,47,97,115,100,46,106,112,103
	align	4
_176:
	dd	_162
	dd	15
	dd	1
	align	4
_179:
	dd	_162
	dd	17
	dd	1
	align	4
_212:
	dd	3
	dd	0
	dd	0
	align	4
_182:
	dd	_162
	dd	18
	dd	2
	align	4
_185:
	dd	_162
	dd	19
	dd	2
	align	4
_186:
	dd	_162
	dd	20
	dd	2
	align	4
_187:
	dd	_162
	dd	21
	dd	2
	align	4
_196:
	dd	_162
	dd	22
	dd	2
	align	4
_197:
	dd	_162
	dd	23
	dd	2
	align	4
_198:
	dd	_162
	dd	24
	dd	2
	align	4
_45:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	104,101,108,108,111,33
	align	4
_199:
	dd	_162
	dd	25
	dd	2
	align	4
_202:
	dd	_162
	dd	26
	dd	2
	align	4
_203:
	dd	_162
	dd	28
	dd	2
	align	4
_204:
	dd	_162
	dd	30
	dd	2
	align	4
_513:
	dd	0x44400000
	align	4
_514:
	dd	0x44800000
	align	4
_209:
	dd	_162
	dd	31
	dd	2
	align	4
_210:
	dd	_162
	dd	33
	dd	2
	align	4
_211:
	dd	_162
	dd	36
	dd	2
_232:
	db	"Self",0
_233:
	db	":z_2f21a2d2_f207_4064_b61d_7a2669a2589a_3_0",0
	align	4
_231:
	dd	1
	dd	_60
	dd	2
	dd	_232
	dd	_233
	dd	-4
	dd	0
	align	4
_230:
	dd	3
	dd	0
	dd	0
_237:
	db	":z_blide_bg2f21a2d2_f207_4064_b61d_7a2669a2589a",0
	align	4
_236:
	dd	1
	dd	_60
	dd	2
	dd	_232
	dd	_237
	dd	-4
	dd	0
	align	4
_235:
	dd	3
	dd	0
	dd	0
	align	4
_240:
	dd	1
	dd	_60
	dd	2
	dd	_232
	dd	_216
	dd	-4
	dd	0
	align	4
_239:
	dd	3
	dd	0
	dd	0
	align	4
_244:
	dd	1
	dd	_60
	dd	2
	dd	_232
	dd	_224
	dd	-4
	dd	0
	align	4
_243:
	dd	3
	dd	0
	dd	0
	align	4
_343:
	dd	1
	dd	_94
	dd	2
	dd	_232
	dd	_224
	dd	-4
	dd	0
	align	4
_248:
	dd	_153
	dd	15
	dd	3
	align	4
_249:
	dd	_153
	dd	16
	dd	3
	align	4
_250:
	dd	_153
	dd	17
	dd	3
	align	4
_251:
	dd	_153
	dd	18
	dd	3
	align	4
_252:
	dd	_153
	dd	20
	dd	3
	align	4
_253:
	dd	_153
	dd	21
	dd	3
	align	4
_254:
	dd	_153
	dd	22
	dd	3
	align	4
_255:
	dd	_153
	dd	23
	dd	3
	align	4
_256:
	dd	_153
	dd	25
	dd	3
	align	4
_257:
	dd	_153
	dd	26
	dd	3
	align	4
_258:
	dd	_153
	dd	27
	dd	3
	align	4
_263:
	dd	_153
	dd	28
	dd	3
	align	4
_264:
	dd	_153
	dd	29
	dd	3
	align	4
_273:
	dd	_153
	dd	30
	dd	3
	align	4
_274:
	dd	_153
	dd	31
	dd	3
	align	4
_281:
	dd	_153
	dd	32
	dd	3
	align	4
_282:
	dd	_153
	dd	33
	dd	3
	align	4
_289:
	dd	_153
	dd	35
	dd	3
	align	4
_290:
	dd	_153
	dd	36
	dd	3
	align	4
_291:
	dd	_153
	dd	37
	dd	3
	align	4
_547:
	dd	0x41200000
	align	4
_294:
	dd	_153
	dd	38
	dd	3
	align	4
_301:
	dd	_153
	dd	39
	dd	3
	align	4
_302:
	dd	_153
	dd	40
	dd	3
	align	4
_548:
	dd	0x41200000
	align	4
_305:
	dd	_153
	dd	41
	dd	3
	align	4
_312:
	dd	_153
	dd	42
	dd	3
	align	4
_313:
	dd	_153
	dd	43
	dd	3
	align	4
_549:
	dd	0x41200000
	align	4
_316:
	dd	_153
	dd	44
	dd	3
	align	4
_325:
	dd	_153
	dd	45
	dd	3
	align	4
_326:
	dd	_153
	dd	46
	dd	3
	align	4
_550:
	dd	0x41200000
	align	4
_329:
	dd	_153
	dd	47
	dd	3
	align	4
_334:
	dd	_153
	dd	49
	dd	3
	align	4
_335:
	dd	_153
	dd	50
	dd	3
	align	4
_336:
	dd	_153
	dd	51
	dd	3
	align	4
_353:
	dd	1
	dd	_95
	dd	2
	dd	_232
	dd	_224
	dd	-4
	dd	0
	align	4
_344:
	dd	_153
	dd	57
	dd	3
	align	4
_345:
	dd	_153
	dd	58
	dd	3
	align	4
_346:
	dd	_153
	dd	59
	dd	3
	align	4
_347:
	dd	_153
	dd	60
	dd	3
	align	4
_348:
	dd	_153
	dd	62
	dd	3
	align	4
_349:
	dd	_153
	dd	65
	dd	3
	align	4
_350:
	dd	_153
	dd	68
	dd	3
_379:
	db	"nw",0
_380:
	db	"nh",0
	align	4
_378:
	dd	1
	dd	_96
	dd	2
	dd	_232
	dd	_224
	dd	-4
	dd	2
	dd	_379
	dd	_69
	dd	-8
	dd	2
	dd	_380
	dd	_69
	dd	-12
	dd	0
	align	4
_354:
	dd	_153
	dd	73
	dd	3
	align	4
_362:
	dd	_153
	dd	74
	dd	3
	align	4
_370:
	dd	_153
	dd	76
	dd	3
	align	4
_374:
	dd	_153
	dd	77
	dd	3
_417:
	db	"ggui_New",0
_418:
	db	"temp_Tggui",0
	align	4
_416:
	dd	1
	dd	_417
	dd	2
	dd	_88
	dd	_69
	dd	-4
	dd	2
	dd	_89
	dd	_69
	dd	-8
	dd	2
	dd	_90
	dd	_69
	dd	-12
	dd	2
	dd	_91
	dd	_69
	dd	-16
	dd	2
	dd	_418
	dd	_224
	dd	-20
	dd	0
	align	4
_381:
	dd	_153
	dd	82
	dd	2
	align	4
_383:
	dd	_153
	dd	83
	dd	2
	align	4
_386:
	dd	_153
	dd	84
	dd	2
	align	4
_390:
	dd	_153
	dd	85
	dd	2
	align	4
_394:
	dd	_153
	dd	86
	dd	2
	align	4
_398:
	dd	_153
	dd	87
	dd	2
	align	4
_402:
	dd	_153
	dd	88
	dd	2
	align	4
_406:
	dd	_153
	dd	90
	dd	2
	align	4
_414:
	dd	_153
	dd	92
	dd	2
	align	4
_415:
	dd	_153
	dd	93
	dd	2
_435:
	db	"ggui_Draw",0
	align	4
_434:
	dd	1
	dd	_435
	dd	0
	align	4
_419:
	dd	_153
	dd	97
	dd	2
_433:
	db	"Fggui",0
	align	4
_432:
	dd	3
	dd	0
	dd	2
	dd	_433
	dd	_224
	dd	-4
	dd	0
	align	4
_429:
	dd	_153
	dd	98
	dd	3
_502:
	db	"ggui_Setup",0
_503:
	db	"border",0
_504:
	db	":brl.pixmap.TPixmap",0
_505:
	db	"round",0
	align	4
_501:
	dd	1
	dd	_502
	dd	2
	dd	_503
	dd	_504
	dd	-4
	dd	2
	dd	_505
	dd	_504
	dd	-8
	dd	0
	align	4
_436:
	dd	_153
	dd	103
	dd	2
	align	4
_438:
	dd	_153
	dd	104
	dd	2
	align	4
_459:
	dd	3
	dd	0
	dd	2
	dd	_88
	dd	_69
	dd	-12
	dd	0
	align	4
_441:
	dd	_153
	dd	105
	dd	3
_456:
	db	"nextcolor",0
_457:
	db	"bytes2",0
_458:
	db	"*b",0
	align	4
_455:
	dd	3
	dd	0
	dd	2
	dd	_89
	dd	_69
	dd	-16
	dd	2
	dd	_456
	dd	_69
	dd	-20
	dd	2
	dd	_457
	dd	_458
	dd	-24
	dd	0
	align	4
_444:
	dd	_153
	dd	106
	dd	4
	align	4
_446:
	dd	_153
	dd	107
	dd	4
	align	4
_448:
	dd	_153
	dd	108
	dd	4
	align	4
_449:
	dd	_153
	dd	109
	dd	4
	align	4
_450:
	dd	_153
	dd	110
	dd	4
	align	4
_451:
	dd	_153
	dd	111
	dd	4
	align	4
_610:
	dd	0x437f0000
	align	4
_611:
	dd	0x41cc0000
	align	4
_452:
	dd	_153
	dd	113
	dd	4
	align	4
_460:
	dd	_153
	dd	116
	dd	2
	align	4
_465:
	dd	_153
	dd	118
	dd	2
	align	4
_467:
	dd	_153
	dd	119
	dd	2
	align	4
_495:
	dd	3
	dd	0
	dd	2
	dd	_88
	dd	_69
	dd	-28
	dd	0
	align	4
_470:
	dd	_153
	dd	120
	dd	3
_493:
	db	"entf",0
_494:
	db	"f",0
	align	4
_492:
	dd	3
	dd	0
	dd	2
	dd	_89
	dd	_69
	dd	-32
	dd	2
	dd	_456
	dd	_69
	dd	-36
	dd	2
	dd	_457
	dd	_458
	dd	-40
	dd	2
	dd	_493
	dd	_494
	dd	-44
	dd	0
	align	4
_473:
	dd	_153
	dd	121
	dd	4
	align	4
_475:
	dd	_153
	dd	122
	dd	4
	align	4
_477:
	dd	_153
	dd	123
	dd	4
	align	4
_478:
	dd	_153
	dd	124
	dd	4
	align	4
_479:
	dd	_153
	dd	125
	dd	4
	align	4
_480:
	dd	_153
	dd	126
	dd	4
	align	8
_612:
	dd	0x0,0x40000000
	align	8
_613:
	dd	0x0,0x40000000
	align	4
_482:
	dd	_153
	dd	127
	dd	4
	align	4
_614:
	dd	0x41200000
	align	4
_485:
	dd	3
	dd	0
	dd	0
	align	4
_484:
	dd	_153
	dd	128
	dd	5
	align	4
_488:
	dd	3
	dd	0
	dd	0
	align	4
_487:
	dd	_153
	dd	130
	dd	5
	align	4
_615:
	dd	0x437f0000
	align	4
_616:
	dd	0x41cc0000
	align	4
_489:
	dd	_153
	dd	134
	dd	4
	align	4
_496:
	dd	_153
	dd	137
	dd	2
_512:
	db	"SetReset",0
	align	4
_511:
	dd	1
	dd	_512
	dd	0
	align	4
_506:
	dd	_162
	dd	40
	dd	2
	align	4
_507:
	dd	_162
	dd	41
	dd	2
	align	4
_508:
	dd	_162
	dd	42
	dd	2
	align	4
_509:
	dd	_162
	dd	43
	dd	2
	align	4
_510:
	dd	_162
	dd	44
	dd	2
