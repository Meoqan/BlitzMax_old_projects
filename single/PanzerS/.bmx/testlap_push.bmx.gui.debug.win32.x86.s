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
	extrn	_bbCos
	extrn	_bbFloatPow
	extrn	_bbGCFree
	extrn	_bbNullObject
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbSin
	extrn	_bbSqr
	extrn	_bbStringClass
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_graphics_Flip
	extrn	_brl_graphics_Graphics
	extrn	_brl_max2d_Cls
	extrn	_brl_max2d_DrawImage
	extrn	_brl_max2d_DrawOval
	extrn	_brl_max2d_DrawRect
	extrn	_brl_max2d_GetHandle
	extrn	_brl_max2d_GetRotation
	extrn	_brl_max2d_GetScale
	extrn	_brl_max2d_SetAlpha
	extrn	_brl_max2d_SetBlend
	extrn	_brl_max2d_SetClsColor
	extrn	_brl_max2d_SetColor
	extrn	_brl_max2d_SetHandle
	extrn	_brl_max2d_SetScale
	extrn	_brl_polledinput_AppTerminate
	extrn	_brl_polledinput_KeyHit
	extrn	_brl_polledinput_MouseX
	extrn	_brl_polledinput_MouseY
	extrn	_brl_timer_CreateTimer
	public	__bb_main
	public	_bb_CalcWinkel
	public	_bb_DrawPicture
	public	_bb_PushCollision
	public	_bb_PushQuad
	public	_bb_mx
	public	_bb_my
	public	_bb_tmr
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	cmp	dword [_108],0
	je	_109
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_109:
	mov	dword [_108],1
	push	ebp
	push	_101
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
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
	push	_59
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_18
	inc	dword [ebx+4]
	mov	eax,dword [_bbAppTitle]
	dec	dword [eax+4]
	jnz	_64
	push	eax
	call	_bbGCFree
	add	esp,4
_64:
	mov	dword [_bbAppTitle],ebx
	push	_65
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	60
	push	0
	push	768
	push	1024
	call	_brl_graphics_Graphics
	add	esp,20
	push	_66
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	3
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_67
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	call	_brl_max2d_SetClsColor
	add	esp,12
	push	_68
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_69
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_71]
	and	eax,1
	cmp	eax,0
	jne	_72
	push	_bbNullObject
	push	1109393408
	call	_brl_timer_CreateTimer
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_tmr],eax
	or	dword [_71],1
_72:
	push	_73
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_19
_21:
	push	ebp
	push	_100
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_76
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_tmr]
	cmp	ebx,_bbNullObject
	jne	_78
	call	_brl_blitz_NullObjectError
_78:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	_79
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_80
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_MouseX
	mov	dword [ebp+-4],eax
	fild	dword [ebp+-4]
	fstp	dword [_bb_mx]
	push	_81
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_MouseY
	mov	dword [ebp+-4],eax
	fild	dword [ebp+-4]
	fstp	dword [_bb_my]
	push	_82
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1056964608
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_83
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1092616192
	push	1092616192
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_84
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	128
	push	128
	call	_brl_max2d_SetColor
	add	esp,12
	push	_85
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1101004800
	push	1101004800
	push	1133903872
	push	1135214592
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_86
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1101004800
	push	1101004800
	push	1133903872
	push	1135214592
	push	1109393408
	lea	eax,dword [_bb_my]
	push	eax
	lea	eax,dword [_bb_mx]
	push	eax
	call	_bb_PushQuad
	add	esp,28
	push	_87
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1092616192
	push	1092616192
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_88
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	128
	push	128
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_89
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1101004800
	push	1101004800
	push	1133903872
	push	1135869952
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_90
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1101004800
	push	1101004800
	push	1133903872
	push	1135869952
	push	1109393408
	lea	eax,dword [_bb_my]
	push	eax
	lea	eax,dword [_bb_mx]
	push	eax
	call	_bb_PushQuad
	add	esp,28
	push	_91
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1092616192
	push	1092616192
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_92
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	128
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_93
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1101004800
	push	1101004800
	push	1133903872
	push	1134559232
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_94
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1101004800
	push	1101004800
	push	1133903872
	push	1134559232
	push	1109393408
	lea	eax,dword [_bb_my]
	push	eax
	lea	eax,dword [_bb_mx]
	push	eax
	call	_bb_PushQuad
	add	esp,28
	push	_95
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1092616192
	push	1092616192
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_96
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1101004800
	push	1101004800
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_97
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	128
	push	255
	push	128
	call	_brl_max2d_SetColor
	add	esp,12
	push	_98
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1109393408
	push	1109393408
	push	dword [_bb_my]
	push	dword [_bb_mx]
	call	_brl_max2d_DrawOval
	add	esp,16
	push	_99
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_19:
	push	27
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	jne	_74
	call	_brl_polledinput_AppTerminate
_74:
	cmp	eax,0
	je	_21
_20:
	mov	ebx,0
	jmp	_28
_28:
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
	push	_135
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_110
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-24]
	push	_112
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-28]
	push	_114
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	eax,dword [ebp-28]
	push	eax
	lea	eax,dword [ebp-24]
	push	eax
	call	_brl_max2d_GetScale
	add	esp,8
	push	_115
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-32]
	push	_117
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-36]
	push	_119
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	eax,dword [ebp-36]
	push	eax
	lea	eax,dword [ebp-32]
	push	eax
	call	_brl_max2d_GetHandle
	add	esp,8
	push	_120
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_122
	call	_brl_blitz_NullObjectError
_122:
	fld	dword [ebp-16]
	mov	eax,dword [ebx+8]
	mov	dword [ebp+-80],eax
	fild	dword [ebp+-80]
	fdivp	st1,st0
	fstp	dword [ebp-40]
	push	_124
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_126
	call	_brl_blitz_NullObjectError
_126:
	fld	dword [ebp-20]
	mov	eax,dword [ebx+12]
	mov	dword [ebp+-80],eax
	fild	dword [ebp+-80]
	fdivp	st1,st0
	fstp	dword [ebp-44]
	push	_128
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
	push	_129
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_247]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-60]
	fld	qword [_248]
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
	push	_131
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
	fld	qword [_249]
	faddp	st1,st0
	fstp	dword [ebp-52]
	push	_133
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
	push	_134
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-28]
	push	dword [ebp-24]
	call	_brl_max2d_SetScale
	add	esp,8
	mov	ebx,0
	jmp	_35
_35:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_PushQuad:
	push	ebp
	mov	ebp,esp
	sub	esp,80
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
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
	fldz
	fstp	dword [ebp-56]
	fldz
	fstp	dword [ebp-60]
	fldz
	fstp	dword [ebp-64]
	fldz
	fstp	dword [ebp-68]
	fldz
	fstp	dword [ebp-72]
	push	ebp
	push	_186
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_151
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_254]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-24]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-80]
	fld	qword [_255]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-28]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-80]
	faddp	st1,st0
	fstp	qword [ebp-80]
	fld	qword [ebp-80]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	qword [_256]
	fdivp	st1,st0
	fstp	dword [ebp-32]
	push	_153
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fstp	dword [ebp-36]
	push	_155
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-20]
	fstp	dword [ebp-40]
	push	_157
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	fld	dword [ebp-32]
	fmul	dword [_257]
	sub	esp,4
	fstp	dword [esp]
	lea	eax,dword [ebp-40]
	push	eax
	lea	eax,dword [ebp-36]
	push	eax
	push	dword [ebp-12]
	mov	eax,dword [ebp-8]
	lea	eax,dword [eax]
	push	eax
	mov	eax,dword [ebp-4]
	lea	eax,dword [eax]
	push	eax
	call	_bb_PushCollision
	add	esp,28
	push	_158
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fld	dword [ebp-24]
	fdiv	dword [_258]
	faddp	st1,st0
	fstp	dword [ebp-44]
	push	_160
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-20]
	fld	dword [ebp-28]
	fdiv	dword [_259]
	faddp	st1,st0
	fstp	dword [ebp-48]
	push	_162
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-32]
	lea	eax,dword [ebp-48]
	push	eax
	lea	eax,dword [ebp-44]
	push	eax
	push	dword [ebp-12]
	mov	eax,dword [ebp-8]
	lea	eax,dword [eax]
	push	eax
	mov	eax,dword [ebp-4]
	lea	eax,dword [eax]
	push	eax
	call	_bb_PushCollision
	add	esp,28
	push	_163
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fld	dword [ebp-24]
	fdiv	dword [_260]
	faddp	st1,st0
	fstp	dword [ebp-52]
	push	_165
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-20]
	fld	dword [ebp-28]
	fdiv	dword [_261]
	fsubp	st1,st0
	fstp	dword [ebp-56]
	push	_167
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-32]
	lea	eax,dword [ebp-56]
	push	eax
	lea	eax,dword [ebp-52]
	push	eax
	push	dword [ebp-12]
	mov	eax,dword [ebp-8]
	lea	eax,dword [eax]
	push	eax
	mov	eax,dword [ebp-4]
	lea	eax,dword [eax]
	push	eax
	call	_bb_PushCollision
	add	esp,28
	push	_168
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fld	dword [ebp-24]
	fdiv	dword [_262]
	fsubp	st1,st0
	fstp	dword [ebp-60]
	push	_170
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-20]
	fld	dword [ebp-28]
	fdiv	dword [_263]
	fsubp	st1,st0
	fstp	dword [ebp-64]
	push	_172
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-32]
	lea	eax,dword [ebp-64]
	push	eax
	lea	eax,dword [ebp-60]
	push	eax
	push	dword [ebp-12]
	mov	eax,dword [ebp-8]
	lea	eax,dword [eax]
	push	eax
	mov	eax,dword [ebp-4]
	lea	eax,dword [eax]
	push	eax
	call	_bb_PushCollision
	add	esp,28
	push	_173
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fld	dword [ebp-24]
	fdiv	dword [_264]
	fsubp	st1,st0
	fstp	dword [ebp-68]
	push	_175
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-20]
	fld	dword [ebp-28]
	fdiv	dword [_265]
	faddp	st1,st0
	fstp	dword [ebp-72]
	push	_177
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-32]
	lea	eax,dword [ebp-72]
	push	eax
	lea	eax,dword [ebp-68]
	push	eax
	push	dword [ebp-12]
	mov	eax,dword [ebp-8]
	lea	eax,dword [eax]
	push	eax
	mov	eax,dword [ebp-4]
	lea	eax,dword [eax]
	push	eax
	call	_bb_PushCollision
	add	esp,28
	push	_178
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-32]
	push	dword [ebp-32]
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_179
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_180
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-32]
	fmul	dword [_266]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-32]
	fmul	dword [_267]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebp-40]
	push	dword [ebp-36]
	call	_brl_max2d_DrawOval
	add	esp,16
	push	_181
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-32]
	fdiv	dword [_268]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-32]
	fdiv	dword [_269]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_182
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-32]
	push	dword [ebp-32]
	push	dword [ebp-48]
	push	dword [ebp-44]
	call	_brl_max2d_DrawOval
	add	esp,16
	push	_183
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-32]
	push	dword [ebp-32]
	push	dword [ebp-56]
	push	dword [ebp-52]
	call	_brl_max2d_DrawOval
	add	esp,16
	push	_184
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-32]
	push	dword [ebp-32]
	push	dword [ebp-64]
	push	dword [ebp-60]
	call	_brl_max2d_DrawOval
	add	esp,16
	push	_185
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-32]
	push	dword [ebp-32]
	push	dword [ebp-72]
	push	dword [ebp-68]
	call	_brl_max2d_DrawOval
	add	esp,16
	mov	ebx,0
	jmp	_44
_44:
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
	push	_226
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_206
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_272]
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
	fld	qword [_273]
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
	push	_208
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fdiv	dword [_274]
	fstp	dword [ebp-16]
	push	_209
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-28]
	fdiv	dword [_275]
	fstp	dword [ebp-28]
	push	_210
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
	jne	_211
	push	ebp
	push	_225
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_212
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
	fadd	dword [_276]
	fstp	dword [ebp-36]
	push	_214
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,1
	jne	_215
	push	ebp
	push	_218
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_216
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
	push	_217
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
	jmp	_219
_215:
	push	ebp
	push	_224
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_220
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
	fdiv	dword [_277]
	fmulp	st1,st0
	fld	qword [ebp-68]
	faddp	st1,st0
	fstp	qword [ebp-68]
	fld	qword [ebp-68]
	fstp	dword [ebx]
	push	_221
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
	fdiv	dword [_278]
	fmulp	st1,st0
	fld	qword [ebp-76]
	faddp	st1,st0
	fstp	qword [ebp-76]
	fld	qword [ebp-76]
	fstp	dword [ebx]
	push	_222
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	mov	eax,dword [ebp-20]
	fld	dword [eax]
	fstp	qword [ebp-84]
	fld	dword [ebp-36]
	fsub	dword [_279]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	dword [ebp-16]
	fadd	dword [ebp-28]
	fsub	dword [ebp-32]
	fdiv	dword [_280]
	fmulp	st1,st0
	fld	qword [ebp-84]
	faddp	st1,st0
	fstp	qword [ebp-84]
	fld	qword [ebp-84]
	fstp	dword [ebx]
	push	_223
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	mov	eax,dword [ebp-24]
	fld	dword [eax]
	fstp	qword [ebp-92]
	fld	dword [ebp-36]
	fsub	dword [_281]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	dword [ebp-16]
	fadd	dword [ebp-28]
	fsub	dword [ebp-32]
	fdiv	dword [_282]
	fmulp	st1,st0
	fld	qword [ebp-92]
	faddp	st1,st0
	fstp	qword [ebp-92]
	fld	qword [ebp-92]
	fstp	dword [ebx]
	call	dword [_bbOnDebugLeaveScope]
_219:
	call	dword [_bbOnDebugLeaveScope]
_211:
	mov	ebx,0
	jmp	_53
_53:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
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
	push	_239
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_230
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
	push	_232
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_22
_24:
	push	ebp
	push	_234
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_233
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fadd	dword [_287]
	fstp	dword [ebp-12]
	call	dword [_bbOnDebugLeaveScope]
_22:
	fld	dword [ebp-12]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_24
_23:
	push	_235
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_25
_27:
	push	ebp
	push	_237
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_236
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fsub	dword [_288]
	fstp	dword [ebp-12]
	call	dword [_bbOnDebugLeaveScope]
_25:
	fld	dword [ebp-12]
	fld	dword [_289]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_27
_26:
	push	_238
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fstp	dword [ebp-16]
	jmp	_57
_57:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-16]
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_108:
	dd	0
_102:
	db	"testlap_push",0
_103:
	db	"mx",0
_104:
	db	"f",0
	align	4
_bb_mx:
	dd	0x0
_105:
	db	"my",0
	align	4
_bb_my:
	dd	0x0
_106:
	db	"tmr",0
_107:
	db	":brl.timer.Ttimer",0
	align	4
_bb_tmr:
	dd	_bbNullObject
	align	4
_101:
	dd	1
	dd	_102
	dd	4
	dd	_103
	dd	_104
	dd	_bb_mx
	dd	4
	dd	_105
	dd	_104
	dd	_bb_my
	dd	4
	dd	_106
	dd	_107
	dd	_bb_tmr
	dd	0
_60:
	db	"D:/Proggen/projecte/team/PanzerS/testlap_push.bmx",0
	align	4
_59:
	dd	_60
	dd	16
	dd	1
	align	4
_18:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	80,97,110,122,101,114,83,58,32,84,101,115,116,108,97,112
	dw	33
	align	4
_65:
	dd	_60
	dd	17
	dd	1
	align	4
_66:
	dd	_60
	dd	18
	dd	1
	align	4
_67:
	dd	_60
	dd	20
	dd	1
	align	4
_68:
	dd	_60
	dd	22
	dd	1
	align	4
_69:
	dd	_60
	dd	24
	dd	1
	align	4
_71:
	dd	0
	align	4
_73:
	dd	_60
	dd	26
	dd	1
	align	4
_100:
	dd	3
	dd	0
	dd	0
	align	4
_76:
	dd	_60
	dd	27
	dd	2
	align	4
_79:
	dd	_60
	dd	28
	dd	2
	align	4
_80:
	dd	_60
	dd	29
	dd	3
	align	4
_81:
	dd	_60
	dd	30
	dd	3
	align	4
_82:
	dd	_60
	dd	31
	dd	3
	align	4
_83:
	dd	_60
	dd	32
	dd	3
	align	4
_84:
	dd	_60
	dd	34
	dd	3
	align	4
_85:
	dd	_60
	dd	35
	dd	3
	align	4
_86:
	dd	_60
	dd	36
	dd	3
	align	4
_87:
	dd	_60
	dd	37
	dd	3
	align	4
_88:
	dd	_60
	dd	38
	dd	3
	align	4
_89:
	dd	_60
	dd	39
	dd	3
	align	4
_90:
	dd	_60
	dd	40
	dd	3
	align	4
_91:
	dd	_60
	dd	41
	dd	3
	align	4
_92:
	dd	_60
	dd	42
	dd	3
	align	4
_93:
	dd	_60
	dd	43
	dd	3
	align	4
_94:
	dd	_60
	dd	44
	dd	3
	align	4
_95:
	dd	_60
	dd	45
	dd	3
	align	4
_96:
	dd	_60
	dd	46
	dd	3
	align	4
_97:
	dd	_60
	dd	47
	dd	3
	align	4
_98:
	dd	_60
	dd	48
	dd	3
	align	4
_99:
	dd	_60
	dd	50
	dd	2
_136:
	db	"DrawPicture",0
_137:
	db	"bild",0
_138:
	db	":brl.max2d.Timage",0
_139:
	db	"x",0
_140:
	db	"y",0
_141:
	db	"width",0
_142:
	db	"height",0
_143:
	db	"nowscale_X",0
_144:
	db	"nowscale_Y",0
_145:
	db	"nowhandle_X",0
_146:
	db	"nowhandle_Y",0
_147:
	db	"factorx",0
_148:
	db	"factory",0
_149:
	db	"entferung",0
_150:
	db	"winkel",0
	align	4
_135:
	dd	1
	dd	_136
	dd	2
	dd	_137
	dd	_138
	dd	-4
	dd	2
	dd	_139
	dd	_104
	dd	-8
	dd	2
	dd	_140
	dd	_104
	dd	-12
	dd	2
	dd	_141
	dd	_104
	dd	-16
	dd	2
	dd	_142
	dd	_104
	dd	-20
	dd	2
	dd	_143
	dd	_104
	dd	-24
	dd	2
	dd	_144
	dd	_104
	dd	-28
	dd	2
	dd	_145
	dd	_104
	dd	-32
	dd	2
	dd	_146
	dd	_104
	dd	-36
	dd	2
	dd	_147
	dd	_104
	dd	-40
	dd	2
	dd	_148
	dd	_104
	dd	-44
	dd	2
	dd	_149
	dd	_104
	dd	-48
	dd	2
	dd	_150
	dd	_104
	dd	-52
	dd	0
	align	4
_110:
	dd	_60
	dd	54
	dd	2
	align	4
_112:
	dd	_60
	dd	55
	dd	2
	align	4
_114:
	dd	_60
	dd	56
	dd	2
	align	4
_115:
	dd	_60
	dd	58
	dd	2
	align	4
_117:
	dd	_60
	dd	59
	dd	2
	align	4
_119:
	dd	_60
	dd	60
	dd	2
	align	4
_120:
	dd	_60
	dd	62
	dd	2
	align	4
_124:
	dd	_60
	dd	63
	dd	2
	align	4
_128:
	dd	_60
	dd	65
	dd	2
	align	4
_129:
	dd	_60
	dd	68
	dd	2
	align	8
_247:
	dd	0x0,0x40000000
	align	8
_248:
	dd	0x0,0x40000000
	align	4
_131:
	dd	_60
	dd	69
	dd	2
	align	8
_249:
	dd	0x0,0x40668000
	align	4
_133:
	dd	_60
	dd	71
	dd	2
	align	4
_134:
	dd	_60
	dd	73
	dd	2
_187:
	db	"PushQuad",0
_188:
	db	"x1",0
_189:
	db	"y1",0
_190:
	db	"size1",0
_191:
	db	"x2",0
_192:
	db	"y2",0
_193:
	db	"sizeW2",0
_194:
	db	"sizeH2",0
_195:
	db	"size2",0
_196:
	db	"tex00",0
_197:
	db	"tey00",0
_198:
	db	"tex01",0
_199:
	db	"tey01",0
_200:
	db	"tex02",0
_201:
	db	"tey02",0
_202:
	db	"tex03",0
_203:
	db	"tey03",0
_204:
	db	"tex04",0
_205:
	db	"tey04",0
	align	4
_186:
	dd	1
	dd	_187
	dd	5
	dd	_188
	dd	_104
	dd	-4
	dd	5
	dd	_189
	dd	_104
	dd	-8
	dd	2
	dd	_190
	dd	_104
	dd	-12
	dd	2
	dd	_191
	dd	_104
	dd	-16
	dd	2
	dd	_192
	dd	_104
	dd	-20
	dd	2
	dd	_193
	dd	_104
	dd	-24
	dd	2
	dd	_194
	dd	_104
	dd	-28
	dd	2
	dd	_195
	dd	_104
	dd	-32
	dd	2
	dd	_196
	dd	_104
	dd	-36
	dd	2
	dd	_197
	dd	_104
	dd	-40
	dd	2
	dd	_198
	dd	_104
	dd	-44
	dd	2
	dd	_199
	dd	_104
	dd	-48
	dd	2
	dd	_200
	dd	_104
	dd	-52
	dd	2
	dd	_201
	dd	_104
	dd	-56
	dd	2
	dd	_202
	dd	_104
	dd	-60
	dd	2
	dd	_203
	dd	_104
	dd	-64
	dd	2
	dd	_204
	dd	_104
	dd	-68
	dd	2
	dd	_205
	dd	_104
	dd	-72
	dd	0
	align	4
_151:
	dd	_60
	dd	79
	dd	2
	align	8
_254:
	dd	0x0,0x40000000
	align	8
_255:
	dd	0x0,0x40000000
	align	8
_256:
	dd	0x0,0x40080000
	align	4
_153:
	dd	_60
	dd	82
	dd	2
	align	4
_155:
	dd	_60
	dd	83
	dd	2
	align	4
_157:
	dd	_60
	dd	84
	dd	2
	align	4
_257:
	dd	0x40000000
	align	4
_158:
	dd	_60
	dd	86
	dd	2
	align	4
_258:
	dd	0x40800000
	align	4
_160:
	dd	_60
	dd	87
	dd	2
	align	4
_259:
	dd	0x40800000
	align	4
_162:
	dd	_60
	dd	89
	dd	2
	align	4
_163:
	dd	_60
	dd	91
	dd	2
	align	4
_260:
	dd	0x40800000
	align	4
_165:
	dd	_60
	dd	92
	dd	2
	align	4
_261:
	dd	0x40800000
	align	4
_167:
	dd	_60
	dd	94
	dd	2
	align	4
_168:
	dd	_60
	dd	96
	dd	2
	align	4
_262:
	dd	0x40800000
	align	4
_170:
	dd	_60
	dd	97
	dd	2
	align	4
_263:
	dd	0x40800000
	align	4
_172:
	dd	_60
	dd	99
	dd	2
	align	4
_173:
	dd	_60
	dd	101
	dd	2
	align	4
_264:
	dd	0x40800000
	align	4
_175:
	dd	_60
	dd	102
	dd	2
	align	4
_265:
	dd	0x40800000
	align	4
_177:
	dd	_60
	dd	104
	dd	2
	align	4
_178:
	dd	_60
	dd	107
	dd	2
	align	4
_179:
	dd	_60
	dd	108
	dd	2
	align	4
_180:
	dd	_60
	dd	109
	dd	2
	align	4
_266:
	dd	0x40000000
	align	4
_267:
	dd	0x40000000
	align	4
_181:
	dd	_60
	dd	110
	dd	2
	align	4
_268:
	dd	0x40000000
	align	4
_269:
	dd	0x40000000
	align	4
_182:
	dd	_60
	dd	111
	dd	2
	align	4
_183:
	dd	_60
	dd	112
	dd	2
	align	4
_184:
	dd	_60
	dd	113
	dd	2
	align	4
_185:
	dd	_60
	dd	114
	dd	2
_227:
	db	"PushCollision",0
_228:
	db	"festergegenstend2",0
_229:
	db	"b",0
	align	4
_226:
	dd	1
	dd	_227
	dd	5
	dd	_188
	dd	_104
	dd	-8
	dd	5
	dd	_189
	dd	_104
	dd	-12
	dd	2
	dd	_190
	dd	_104
	dd	-16
	dd	5
	dd	_191
	dd	_104
	dd	-20
	dd	5
	dd	_192
	dd	_104
	dd	-24
	dd	2
	dd	_195
	dd	_104
	dd	-28
	dd	2
	dd	_228
	dd	_229
	dd	-4
	dd	2
	dd	_149
	dd	_104
	dd	-32
	dd	0
	align	4
_206:
	dd	_60
	dd	151
	dd	2
	align	8
_272:
	dd	0x0,0x40000000
	align	8
_273:
	dd	0x0,0x40000000
	align	4
_208:
	dd	_60
	dd	152
	dd	2
	align	4
_274:
	dd	0x40000000
	align	4
_209:
	dd	_60
	dd	153
	dd	2
	align	4
_275:
	dd	0x40000000
	align	4
_210:
	dd	_60
	dd	154
	dd	2
	align	4
_225:
	dd	3
	dd	0
	dd	2
	dd	_150
	dd	_104
	dd	-36
	dd	0
	align	4
_212:
	dd	_60
	dd	155
	dd	3
	align	4
_276:
	dd	0x42b40000
	align	4
_214:
	dd	_60
	dd	157
	dd	3
	align	4
_218:
	dd	3
	dd	0
	dd	0
	align	4
_216:
	dd	_60
	dd	158
	dd	4
	align	4
_217:
	dd	_60
	dd	159
	dd	4
	align	4
_224:
	dd	3
	dd	0
	dd	0
	align	4
_220:
	dd	_60
	dd	161
	dd	4
	align	4
_277:
	dd	0x40000000
	align	4
_221:
	dd	_60
	dd	162
	dd	4
	align	4
_278:
	dd	0x40000000
	align	4
_222:
	dd	_60
	dd	163
	dd	4
	align	4
_279:
	dd	0x43340000
	align	4
_280:
	dd	0x40000000
	align	4
_223:
	dd	_60
	dd	164
	dd	4
	align	4
_281:
	dd	0x43340000
	align	4
_282:
	dd	0x40000000
_240:
	db	"CalcWinkel",0
	align	4
_239:
	dd	1
	dd	_240
	dd	2
	dd	_139
	dd	_104
	dd	-4
	dd	2
	dd	_140
	dd	_104
	dd	-8
	dd	2
	dd	_150
	dd	_104
	dd	-12
	dd	0
	align	4
_230:
	dd	_60
	dd	170
	dd	2
	align	4
_232:
	dd	_60
	dd	171
	dd	2
	align	4
_234:
	dd	3
	dd	0
	dd	0
	align	4
_233:
	dd	_60
	dd	172
	dd	3
	align	4
_287:
	dd	0x43b40000
	align	4
_235:
	dd	_60
	dd	174
	dd	2
	align	4
_237:
	dd	3
	dd	0
	dd	0
	align	4
_236:
	dd	_60
	dd	175
	dd	3
	align	4
_288:
	dd	0x43b40000
	align	4
_289:
	dd	0x43b40000
	align	4
_238:
	dd	_60
	dd	177
	dd	2
