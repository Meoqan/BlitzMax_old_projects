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
	extrn	_bbCos
	extrn	_bbFloatPow
	extrn	_bbFloatToInt
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
	extrn	_brl_max2d_DrawRect
	extrn	_brl_max2d_GetHandle
	extrn	_brl_max2d_GetRotation
	extrn	_brl_max2d_GetScale
	extrn	_brl_max2d_LoadImage
	extrn	_brl_max2d_SetAlpha
	extrn	_brl_max2d_SetBlend
	extrn	_brl_max2d_SetClsColor
	extrn	_brl_max2d_SetColor
	extrn	_brl_max2d_SetHandle
	extrn	_brl_max2d_SetRotation
	extrn	_brl_max2d_SetScale
	extrn	_brl_polledinput_AppTerminate
	extrn	_brl_polledinput_KeyHit
	extrn	_brl_random_Rnd
	extrn	_brl_timer_CreateTimer
	public	__bb_main
	public	_bb_DrawPicture
	public	_bb_DrawTank
	public	_bb_SB09_kette
	public	_bb_SB09_panzerung1
	public	_bb_SB09_panzerung2
	public	_bb_SB09_turm
	public	_bb_bonebraker_kette
	public	_bb_bonebraker_turm
	public	_bb_bonebraker_wanne
	public	_bb_gVx
	public	_bb_gVy
	public	_bb_hellrider_kette
	public	_bb_hellrider_wanne
	public	_bb_rr
	public	_bb_tmr
	public	_bb_wanne
	public	_bb_wanne2
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	cmp	dword [_135],0
	je	_136
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_136:
	mov	dword [_135],1
	push	ebp
	push	_115
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
	push	_57
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_18
	inc	dword [ebx+4]
	mov	eax,dword [_bbAppTitle]
	dec	dword [eax+4]
	jnz	_62
	push	eax
	call	_bbGCFree
	add	esp,4
_62:
	mov	dword [_bbAppTitle],ebx
	push	_63
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	60
	push	0
	push	768
	push	1024
	call	_brl_graphics_Graphics
	add	esp,20
	push	_64
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	3
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_65
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_67]
	and	eax,1
	cmp	eax,0
	jne	_68
	push	-1
	push	_19
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_wanne],eax
	or	dword [_67],1
_68:
	push	_69
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_67]
	and	eax,2
	cmp	eax,0
	jne	_71
	push	-1
	push	_20
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_wanne2],eax
	or	dword [_67],2
_71:
	push	_72
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_67]
	and	eax,4
	cmp	eax,0
	jne	_74
	push	-1
	push	_21
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_SB09_kette],eax
	or	dword [_67],4
_74:
	push	_75
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_67]
	and	eax,8
	cmp	eax,0
	jne	_77
	push	-1
	push	_22
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_SB09_panzerung1],eax
	or	dword [_67],8
_77:
	push	_78
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_67]
	and	eax,16
	cmp	eax,0
	jne	_80
	push	-1
	push	_23
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_SB09_panzerung2],eax
	or	dword [_67],16
_80:
	push	_81
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_67]
	and	eax,32
	cmp	eax,0
	jne	_83
	push	-1
	push	_24
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_SB09_turm],eax
	or	dword [_67],32
_83:
	push	_84
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_67]
	and	eax,64
	cmp	eax,0
	jne	_86
	push	-1
	push	_25
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_hellrider_kette],eax
	or	dword [_67],64
_86:
	push	_87
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_67]
	and	eax,128
	cmp	eax,0
	jne	_89
	push	-1
	push	_26
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_hellrider_wanne],eax
	or	dword [_67],128
_89:
	push	_90
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_67]
	and	eax,256
	cmp	eax,0
	jne	_92
	push	-1
	push	_27
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_bonebraker_kette],eax
	or	dword [_67],256
_92:
	push	_93
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_67]
	and	eax,512
	cmp	eax,0
	jne	_95
	push	-1
	push	_28
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_bonebraker_wanne],eax
	or	dword [_67],512
_95:
	push	_96
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_67]
	and	eax,1024
	cmp	eax,0
	jne	_98
	push	-1
	push	_29
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_bonebraker_turm],eax
	or	dword [_67],1024
_98:
	push	_99
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_100
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	128
	push	128
	push	128
	call	_brl_max2d_SetClsColor
	add	esp,12
	push	_101
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_67]
	and	eax,2048
	cmp	eax,0
	jne	_103
	push	_bbNullObject
	push	1109393408
	call	_brl_timer_CreateTimer
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_tmr],eax
	or	dword [_67],2048
_103:
	push	_104
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_30
_32:
	push	ebp
	push	_114
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_107
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_tmr]
	cmp	ebx,_bbNullObject
	jne	_109
	call	_brl_blitz_NullObjectError
_109:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	_110
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_111
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [_bb_rr],1
	push	_112
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	3
	push	1
	push	1120403456
	push	0
	push	0
	push	1132396544
	push	1065353216
	push	0
	push	1128792064
	mov	eax,dword [_bb_rr]
	shl	eax,1
	mov	dword [ebp+-4],eax
	fild	dword [ebp+-4]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [_bb_rr]
	mov	dword [ebp+-4],eax
	fild	dword [ebp+-4]
	sub	esp,4
	fstp	dword [esp]
	push	1136656384
	push	1140850688
	call	_bb_DrawTank
	add	esp,52
	push	_113
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_30:
	push	27
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	jne	_105
	call	_brl_polledinput_AppTerminate
_105:
	cmp	eax,0
	je	_32
_31:
	mov	ebx,0
	jmp	_33
_33:
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
	push	_162
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_137
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-24]
	push	_139
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-28]
	push	_141
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	eax,dword [ebp-28]
	push	eax
	lea	eax,dword [ebp-24]
	push	eax
	call	_brl_max2d_GetScale
	add	esp,8
	push	_142
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-32]
	push	_144
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-36]
	push	_146
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	eax,dword [ebp-36]
	push	eax
	lea	eax,dword [ebp-32]
	push	eax
	call	_brl_max2d_GetHandle
	add	esp,8
	push	_147
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_149
	call	_brl_blitz_NullObjectError
_149:
	fld	dword [ebp-16]
	mov	eax,dword [ebx+8]
	mov	dword [ebp+-80],eax
	fild	dword [ebp+-80]
	fdivp	st1,st0
	fstp	dword [ebp-40]
	push	_151
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_153
	call	_brl_blitz_NullObjectError
_153:
	fld	dword [ebp-20]
	mov	eax,dword [ebx+12]
	mov	dword [ebp+-80],eax
	fild	dword [ebp+-80]
	fdivp	st1,st0
	fstp	dword [ebp-44]
	push	_155
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
	push	_156
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_403]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-60]
	fld	qword [_404]
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
	push	_158
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
	fld	qword [_405]
	faddp	st1,st0
	fstp	dword [ebp-52]
	push	_160
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
	push	_161
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-28]
	push	dword [ebp-24]
	call	_brl_max2d_SetScale
	add	esp,8
	mov	ebx,0
	jmp	_40
_40:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_DrawTank:
	push	ebp
	mov	ebp,esp
	sub	esp,76
	push	ebx
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
	fld	dword [ebp+40]
	fstp	dword [ebp-36]
	fld	dword [ebp+44]
	fstp	dword [ebp-40]
	fld	dword [ebp+48]
	fstp	dword [ebp-44]
	mov	eax,dword [ebp+52]
	mov	dword [ebp-48],eax
	mov	eax,dword [ebp+56]
	mov	dword [ebp-52],eax
	fldz
	fstp	dword [ebp-56]
	fldz
	fstp	dword [ebp-60]
	fldz
	fstp	dword [ebp-64]
	fldz
	fstp	dword [ebp-68]
	mov	dword [ebp-72],0
	push	ebp
	push	_373
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_179
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-56]
	push	_181
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-60]
	push	_183
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	eax,dword [ebp-60]
	push	eax
	lea	eax,dword [ebp-56]
	push	eax
	call	_brl_max2d_GetScale
	add	esp,8
	push	_184
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-44]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	je	_185
	mov	eax,dword [ebp-48]
	cmp	eax,1
	setl	al
	movzx	eax,al
_185:
	cmp	eax,0
	je	_187
	push	ebp
	push	_194
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_188
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1053609165
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_189
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1075838976
	fld	dword [_410]
	fadd	dword [ebp-20]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_190
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1084227584
	push	1109393408
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_191
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1101004800
	fld	dword [_411]
	fadd	dword [ebp-20]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_192
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1109393408
	push	1084227584
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_193
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_187:
	push	_195
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,3
	je	_198
	cmp	eax,2
	je	_199
	cmp	eax,1
	je	_200
	cmp	eax,0
	je	_201
	jmp	_197
_198:
	push	ebp
	push	_260
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_202
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-28]
	push	dword [ebp-28]
	call	_brl_max2d_SetScale
	add	esp,8
	push	_203
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_204
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	128
	push	128
	push	128
	call	_brl_max2d_SetColor
	add	esp,12
	push	_205
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1119092736
	push	1106247680
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_206
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1101004800
	push	1101004800
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_bonebraker_kette]
	call	_bb_DrawPicture
	add	esp,20
	push	_207
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1119092736
	push	-1054867456
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_208
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1101004800
	push	1101004800
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_bonebraker_kette]
	call	_bb_DrawPicture
	add	esp,20
	push	_209
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_brl_max2d_SetColor
	add	esp,12
	push	_210
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1117782016
	push	1108738048
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_211
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1108082688
	push	1109393408
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_bonebraker_wanne]
	call	_bb_DrawPicture
	add	esp,20
	push	_212
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1117782016
	push	-1071644672
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_213
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1108082688
	push	1109393408
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_bonebraker_wanne]
	call	_bb_DrawPicture
	add	esp,20
	push	_214
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1112014848
	push	1109393408
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_215
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1117782016
	push	1120403456
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_bonebraker_wanne]
	call	_bb_DrawPicture
	add	esp,20
	push	_216
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-16]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_217
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-64]
	fldz
	fstp	dword [ebp-68]
	push	_220
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fadd	dword [_412]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	qword [_413]
	fmulp	st1,st0
	fstp	dword [ebp-64]
	push	_221
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fadd	dword [_414]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	qword [_415]
	fmulp	st1,st0
	fstp	dword [ebp-68]
	push	_222
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	_223
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1075838976
	push	1103626240
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_224
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1084227584
	push	1103626240
	fld	dword [ebp-68]
	fadd	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-64]
	fadd	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_225
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_brl_max2d_SetColor
	add	esp,12
	push	_226
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1097859072
	push	1097859072
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_227
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1106247680
	push	1106247680
	fld	dword [ebp-68]
	fadd	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-64]
	fadd	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_bonebraker_turm]
	call	_bb_DrawPicture
	add	esp,20
	push	_228
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fsub	dword [_416]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	qword [_417]
	fmulp	st1,st0
	fstp	dword [ebp-64]
	push	_229
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fsub	dword [_418]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	qword [_419]
	fmulp	st1,st0
	fstp	dword [ebp-68]
	push	_230
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	_231
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1075838976
	push	1103626240
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_232
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1084227584
	push	1103626240
	fld	dword [ebp-68]
	fadd	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-64]
	fadd	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_233
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_brl_max2d_SetColor
	add	esp,12
	push	_234
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1097859072
	push	1097859072
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_235
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1106247680
	push	1106247680
	fld	dword [ebp-68]
	fadd	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-64]
	fadd	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_bonebraker_turm]
	call	_bb_DrawPicture
	add	esp,20
	push	_236
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fadd	dword [_420]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	qword [_421]
	fmulp	st1,st0
	fstp	dword [ebp-64]
	push	_237
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fadd	dword [_422]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	qword [_423]
	fmulp	st1,st0
	fstp	dword [ebp-68]
	push	_238
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	_239
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1075838976
	push	1103626240
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_240
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1084227584
	push	1103626240
	fld	dword [ebp-68]
	fadd	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-64]
	fadd	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_241
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_brl_max2d_SetColor
	add	esp,12
	push	_242
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1097859072
	push	1097859072
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_243
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1106247680
	push	1106247680
	fld	dword [ebp-68]
	fadd	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-64]
	fadd	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_bonebraker_turm]
	call	_bb_DrawPicture
	add	esp,20
	push	_244
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fsub	dword [_424]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	qword [_425]
	fmulp	st1,st0
	fstp	dword [ebp-64]
	push	_245
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fsub	dword [_426]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	qword [_427]
	fmulp	st1,st0
	fstp	dword [ebp-68]
	push	_246
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	_247
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1075838976
	push	1103626240
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_248
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1084227584
	push	1103626240
	fld	dword [ebp-68]
	fadd	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-64]
	fadd	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_249
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_brl_max2d_SetColor
	add	esp,12
	push	_250
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1097859072
	push	1097859072
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_251
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1106247680
	push	1106247680
	fld	dword [ebp-68]
	fadd	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-64]
	fadd	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_bonebraker_turm]
	call	_bb_DrawPicture
	add	esp,20
	push	_252
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fadd	dword [_428]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	qword [_429]
	fmulp	st1,st0
	fstp	dword [ebp-64]
	push	_253
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fadd	dword [_430]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	qword [_431]
	fmulp	st1,st0
	fstp	dword [ebp-68]
	push	_254
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	_255
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1084227584
	push	1114636288
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_256
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1092616192
	push	1110704128
	fld	dword [ebp-68]
	fadd	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-64]
	fadd	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_257
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_brl_max2d_SetColor
	add	esp,12
	push	_258
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1106247680
	push	1106247680
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_259
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1114636288
	push	1114636288
	fld	dword [ebp-68]
	fadd	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-64]
	fadd	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_bonebraker_turm]
	call	_bb_DrawPicture
	add	esp,20
	call	dword [_bbOnDebugLeaveScope]
	jmp	_197
_199:
	push	ebp
	push	_279
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_263
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-28]
	push	dword [ebp-28]
	call	_brl_max2d_SetScale
	add	esp,8
	push	_264
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_265
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_266
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1106247680
	push	1101004800
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_267
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1092616192
	push	1101004800
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_hellrider_kette]
	call	_bb_DrawPicture
	add	esp,20
	push	_268
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1106247680
	push	-1054867456
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_269
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1092616192
	push	1101004800
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_hellrider_kette]
	call	_bb_DrawPicture
	add	esp,20
	push	_270
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_brl_max2d_SetColor
	add	esp,12
	push	_271
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1104936960
	push	1102315520
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_272
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1110704128
	push	1113325568
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_hellrider_wanne]
	call	_bb_DrawPicture
	add	esp,20
	push	_273
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	_274
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1069547520
	push	1111228416
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_275
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1077936128
	push	1110704128
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_276
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	40
	push	40
	push	40
	call	_brl_max2d_SetColor
	add	esp,12
	push	_277
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1075838976
	push	1111228416
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_278
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1084227584
	push	1084227584
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	call	dword [_bbOnDebugLeaveScope]
	jmp	_197
_200:
	push	ebp
	push	_311
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_280
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-28]
	push	dword [ebp-28]
	call	_brl_max2d_SetScale
	add	esp,8
	push	_281
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_282
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_283
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1106247680
	push	1101004800
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_284
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1092616192
	push	1101004800
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_SB09_kette]
	call	_bb_DrawPicture
	add	esp,20
	push	_285
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1106247680
	push	-1054867456
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_286
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1092616192
	push	1101004800
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_SB09_kette]
	call	_bb_DrawPicture
	add	esp,20
	push	_287
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1046478848
	push	1099956224
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_288
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1092616192
	push	1101004800
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_SB09_kette]
	call	_bb_DrawPicture
	add	esp,20
	push	_289
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1046478848
	push	-1056964608
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_290
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1092616192
	push	1101004800
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_SB09_kette]
	call	_bb_DrawPicture
	add	esp,20
	push	_291
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_brl_max2d_SetColor
	add	esp,12
	push	_292
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1101004800
	push	1103626240
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_293
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1101004800
	push	1101004800
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_SB09_panzerung1]
	call	_bb_DrawPicture
	add	esp,20
	push	_294
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1101004800
	push	-1063256064
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_295
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1101004800
	push	1101004800
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_SB09_panzerung1]
	call	_bb_DrawPicture
	add	esp,20
	push	_296
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1054867456
	push	1102577664
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_297
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1101004800
	push	1101004800
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_SB09_panzerung1]
	call	_bb_DrawPicture
	add	esp,20
	push	_298
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1054867456
	push	-1069547520
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_299
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1101004800
	push	1101004800
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_SB09_panzerung1]
	call	_bb_DrawPicture
	add	esp,20
	push	_300
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1100218368
	push	1102315520
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_301
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1110704128
	push	1110704128
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_SB09_panzerung2]
	call	_bb_DrawPicture
	add	esp,20
	push	_302
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-16]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_303
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	_304
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1092091904
	push	1110048768
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_305
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1084227584
	push	1110704128
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_306
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1062207488
	push	1110048768
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_307
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1084227584
	push	1110704128
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_308
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_brl_max2d_SetColor
	add	esp,12
	push	_309
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1102315520
	push	1102315520
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_310
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1110704128
	push	1110704128
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_SB09_turm]
	call	_bb_DrawPicture
	add	esp,20
	call	dword [_bbOnDebugLeaveScope]
	jmp	_197
_201:
	push	ebp
	push	_370
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_312
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-28]
	push	dword [ebp-28]
	call	_brl_max2d_SetScale
	add	esp,8
	push	_313
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_314
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1053609165
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_315
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1097859072
	push	1101004800
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_316
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	_317
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1106247680
	push	1109393408
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	fld	dword [_432]
	fmul	dword [ebp-28]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_318
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_319
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_brl_max2d_SetColor
	add	esp,12
	push	_320
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1102315520
	push	1102315520
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_321
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-48],-1
	jne	_322
	push	ebp
	push	_324
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_323
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1110704128
	push	1110704128
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_wanne2]
	call	_bb_DrawPicture
	add	esp,20
	call	dword [_bbOnDebugLeaveScope]
	jmp	_325
_322:
	push	ebp
	push	_327
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_326
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1110704128
	push	1110704128
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_wanne]
	call	_bb_DrawPicture
	add	esp,20
	call	dword [_bbOnDebugLeaveScope]
_325:
	push	_328
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	_329
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1059061760
	push	1102577664
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_330
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1084227584
	push	1084227584
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_331
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-16]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_332
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1053609165
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_333
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	_334
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1091305472
	push	1095237632
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_335
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1099694080
	push	1103626240
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	fld	dword [_433]
	fmul	dword [ebp-28]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_336
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1075838976
	push	1107427328
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_337
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1084227584
	push	1108082688
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	fld	dword [_434]
	fmul	dword [ebp-28]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_338
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_339
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	_340
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1075838976
	push	1107427328
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_341
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1084227584
	push	1108082688
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_342
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_brl_max2d_SetColor
	add	esp,12
	push	_343
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1097859072
	push	1097859072
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_344
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-48],-1
	jne	_345
	push	ebp
	push	_347
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_346
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1106247680
	push	1106247680
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_wanne2]
	call	_bb_DrawPicture
	add	esp,20
	call	dword [_bbOnDebugLeaveScope]
	jmp	_348
_345:
	push	ebp
	push	_350
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_349
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1106247680
	push	1106247680
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_wanne]
	call	_bb_DrawPicture
	add	esp,20
	call	dword [_bbOnDebugLeaveScope]
_348:
	push	_351
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	_352
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1073741824
	push	-1073741824
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_353
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1084227584
	push	1084227584
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_354
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1053609165
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_355
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_356
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1069547520
	push	1121714176
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_357
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-44]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_358
	push	ebp
	push	_360
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_359
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1073741824
	push	1120403456
	fld	dword [ebp-8]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-4]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	call	dword [_bbOnDebugLeaveScope]
_358:
	push	_361
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_435]
	sub	esp,8
	fstp	qword [esp]
	fld	qword [_436]
	sub	esp,8
	fstp	qword [esp]
	call	_brl_random_Rnd
	add	esp,16
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebp-72],eax
	push	_363
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-72],0
	jge	_364
	push	ebp
	push	_366
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_365
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-72],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_367
_364:
	push	ebp
	push	_369
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_368
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-72],-1
	call	dword [_bbOnDebugLeaveScope]
_367:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_197
_197:
	push	_372
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-60]
	push	dword [ebp-56]
	call	_brl_max2d_SetScale
	add	esp,8
	mov	ebx,0
	jmp	_55
_55:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_135:
	dd	0
_116:
	db	"testlap3",0
_117:
	db	"wanne",0
_118:
	db	":brl.max2d.TImage",0
	align	4
_bb_wanne:
	dd	_bbNullObject
_119:
	db	"wanne2",0
	align	4
_bb_wanne2:
	dd	_bbNullObject
_120:
	db	"SB09_kette",0
	align	4
_bb_SB09_kette:
	dd	_bbNullObject
_121:
	db	"SB09_panzerung1",0
	align	4
_bb_SB09_panzerung1:
	dd	_bbNullObject
_122:
	db	"SB09_panzerung2",0
	align	4
_bb_SB09_panzerung2:
	dd	_bbNullObject
_123:
	db	"SB09_turm",0
	align	4
_bb_SB09_turm:
	dd	_bbNullObject
_124:
	db	"hellrider_kette",0
	align	4
_bb_hellrider_kette:
	dd	_bbNullObject
_125:
	db	"hellrider_wanne",0
	align	4
_bb_hellrider_wanne:
	dd	_bbNullObject
_126:
	db	"bonebraker_kette",0
	align	4
_bb_bonebraker_kette:
	dd	_bbNullObject
_127:
	db	"bonebraker_wanne",0
	align	4
_bb_bonebraker_wanne:
	dd	_bbNullObject
_128:
	db	"bonebraker_turm",0
	align	4
_bb_bonebraker_turm:
	dd	_bbNullObject
_129:
	db	"gVx",0
_130:
	db	"i",0
	align	4
_bb_gVx:
	dd	0
_131:
	db	"gVy",0
	align	4
_bb_gVy:
	dd	0
_132:
	db	"rr",0
	align	4
_bb_rr:
	dd	0
_133:
	db	"tmr",0
_134:
	db	":brl.timer.Ttimer",0
	align	4
_bb_tmr:
	dd	_bbNullObject
	align	4
_115:
	dd	1
	dd	_116
	dd	4
	dd	_117
	dd	_118
	dd	_bb_wanne
	dd	4
	dd	_119
	dd	_118
	dd	_bb_wanne2
	dd	4
	dd	_120
	dd	_118
	dd	_bb_SB09_kette
	dd	4
	dd	_121
	dd	_118
	dd	_bb_SB09_panzerung1
	dd	4
	dd	_122
	dd	_118
	dd	_bb_SB09_panzerung2
	dd	4
	dd	_123
	dd	_118
	dd	_bb_SB09_turm
	dd	4
	dd	_124
	dd	_118
	dd	_bb_hellrider_kette
	dd	4
	dd	_125
	dd	_118
	dd	_bb_hellrider_wanne
	dd	4
	dd	_126
	dd	_118
	dd	_bb_bonebraker_kette
	dd	4
	dd	_127
	dd	_118
	dd	_bb_bonebraker_wanne
	dd	4
	dd	_128
	dd	_118
	dd	_bb_bonebraker_turm
	dd	4
	dd	_129
	dd	_130
	dd	_bb_gVx
	dd	4
	dd	_131
	dd	_130
	dd	_bb_gVy
	dd	4
	dd	_132
	dd	_130
	dd	_bb_rr
	dd	4
	dd	_133
	dd	_134
	dd	_bb_tmr
	dd	0
_58:
	db	"D:/Proggen/projecte/team/PanzerS/testlap3.bmx",0
	align	4
_57:
	dd	_58
	dd	17
	dd	1
	align	4
_18:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	80,97,110,122,101,114,83,58,32,84,101,115,116,108,97,112
	dw	33
	align	4
_63:
	dd	_58
	dd	18
	dd	1
	align	4
_64:
	dd	_58
	dd	19
	dd	1
	align	4
_65:
	dd	_58
	dd	21
	dd	1
	align	4
_67:
	dd	0
	align	4
_19:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	103,102,120,92,101,108,101,109,101,110,116,101,92,119,97,110
	dw	110,101,46,112,110,103
	align	4
_69:
	dd	_58
	dd	22
	dd	1
	align	4
_20:
	dd	_bbStringClass
	dd	2147483647
	dd	23
	dw	103,102,120,92,101,108,101,109,101,110,116,101,92,119,97,110
	dw	110,101,50,46,112,110,103
	align	4
_72:
	dd	_58
	dd	24
	dd	1
	align	4
_21:
	dd	_bbStringClass
	dd	2147483647
	dd	34
	dw	103,102,120,92,101,108,101,109,101,110,116,101,92,112,97,110
	dw	122,101,114,92,83,66,48,57,92,107,101,116,116,101,46,112
	dw	110,103
	align	4
_75:
	dd	_58
	dd	25
	dd	1
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	39
	dw	103,102,120,92,101,108,101,109,101,110,116,101,92,112,97,110
	dw	122,101,114,92,83,66,48,57,92,112,97,110,122,101,114,117
	dw	110,103,49,46,112,110,103
	align	4
_78:
	dd	_58
	dd	26
	dd	1
	align	4
_23:
	dd	_bbStringClass
	dd	2147483647
	dd	39
	dw	103,102,120,92,101,108,101,109,101,110,116,101,92,112,97,110
	dw	122,101,114,92,83,66,48,57,92,112,97,110,122,101,114,117
	dw	110,103,50,46,112,110,103
	align	4
_81:
	dd	_58
	dd	27
	dd	1
	align	4
_24:
	dd	_bbStringClass
	dd	2147483647
	dd	33
	dw	103,102,120,92,101,108,101,109,101,110,116,101,92,112,97,110
	dw	122,101,114,92,83,66,48,57,92,116,117,114,109,46,112,110
	dw	103
	align	4
_84:
	dd	_58
	dd	29
	dd	1
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	39
	dw	103,102,120,92,101,108,101,109,101,110,116,101,92,112,97,110
	dw	122,101,114,92,104,101,108,108,114,105,100,101,114,92,107,101
	dw	116,116,101,46,112,110,103
	align	4
_87:
	dd	_58
	dd	30
	dd	1
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	39
	dw	103,102,120,92,101,108,101,109,101,110,116,101,92,112,97,110
	dw	122,101,114,92,104,101,108,108,114,105,100,101,114,92,119,97
	dw	110,110,101,46,112,110,103
	align	4
_90:
	dd	_58
	dd	32
	dd	1
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	40
	dw	103,102,120,92,101,108,101,109,101,110,116,101,92,112,97,110
	dw	122,101,114,92,98,111,110,101,98,114,97,107,101,114,92,107
	dw	101,116,116,101,46,112,110,103
	align	4
_93:
	dd	_58
	dd	33
	dd	1
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	40
	dw	103,102,120,92,101,108,101,109,101,110,116,101,92,112,97,110
	dw	122,101,114,92,98,111,110,101,98,114,97,107,101,114,92,119
	dw	97,110,110,101,46,112,110,103
	align	4
_96:
	dd	_58
	dd	34
	dd	1
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	39
	dw	103,102,120,92,101,108,101,109,101,110,116,101,92,112,97,110
	dw	122,101,114,92,98,111,110,101,98,114,97,107,101,114,92,116
	dw	117,114,109,46,112,110,103
	align	4
_99:
	dd	_58
	dd	37
	dd	1
	align	4
_100:
	dd	_58
	dd	38
	dd	1
	align	4
_101:
	dd	_58
	dd	39
	dd	1
	align	4
_104:
	dd	_58
	dd	41
	dd	1
	align	4
_114:
	dd	3
	dd	0
	dd	0
	align	4
_107:
	dd	_58
	dd	42
	dd	2
	align	4
_110:
	dd	_58
	dd	43
	dd	2
	align	4
_111:
	dd	_58
	dd	44
	dd	3
	align	4
_112:
	dd	_58
	dd	45
	dd	3
	align	4
_113:
	dd	_58
	dd	46
	dd	2
_163:
	db	"DrawPicture",0
_164:
	db	"bild",0
_165:
	db	":brl.max2d.Timage",0
_166:
	db	"x",0
_167:
	db	"f",0
_168:
	db	"y",0
_169:
	db	"width",0
_170:
	db	"height",0
_171:
	db	"nowscale_X",0
_172:
	db	"nowscale_Y",0
_173:
	db	"nowhandle_X",0
_174:
	db	"nowhandle_Y",0
_175:
	db	"factorx",0
_176:
	db	"factory",0
_177:
	db	"entferung",0
_178:
	db	"winkel",0
	align	4
_162:
	dd	1
	dd	_163
	dd	2
	dd	_164
	dd	_165
	dd	-4
	dd	2
	dd	_166
	dd	_167
	dd	-8
	dd	2
	dd	_168
	dd	_167
	dd	-12
	dd	2
	dd	_169
	dd	_167
	dd	-16
	dd	2
	dd	_170
	dd	_167
	dd	-20
	dd	2
	dd	_171
	dd	_167
	dd	-24
	dd	2
	dd	_172
	dd	_167
	dd	-28
	dd	2
	dd	_173
	dd	_167
	dd	-32
	dd	2
	dd	_174
	dd	_167
	dd	-36
	dd	2
	dd	_175
	dd	_167
	dd	-40
	dd	2
	dd	_176
	dd	_167
	dd	-44
	dd	2
	dd	_177
	dd	_167
	dd	-48
	dd	2
	dd	_178
	dd	_167
	dd	-52
	dd	0
	align	4
_137:
	dd	_58
	dd	52
	dd	2
	align	4
_139:
	dd	_58
	dd	53
	dd	2
	align	4
_141:
	dd	_58
	dd	54
	dd	2
	align	4
_142:
	dd	_58
	dd	56
	dd	2
	align	4
_144:
	dd	_58
	dd	57
	dd	2
	align	4
_146:
	dd	_58
	dd	58
	dd	2
	align	4
_147:
	dd	_58
	dd	60
	dd	2
	align	4
_151:
	dd	_58
	dd	61
	dd	2
	align	4
_155:
	dd	_58
	dd	63
	dd	2
	align	4
_156:
	dd	_58
	dd	66
	dd	2
	align	8
_403:
	dd	0x0,0x40000000
	align	8
_404:
	dd	0x0,0x40000000
	align	4
_158:
	dd	_58
	dd	67
	dd	2
	align	8
_405:
	dd	0x0,0x40668000
	align	4
_160:
	dd	_58
	dd	69
	dd	2
	align	4
_161:
	dd	_58
	dd	71
	dd	2
_374:
	db	"DrawTank",0
_375:
	db	"r",0
_376:
	db	"rt",0
_377:
	db	"dt",0
_378:
	db	"speed",0
_379:
	db	"scale",0
_380:
	db	"rot",0
_381:
	db	"gruen",0
_382:
	db	"blau",0
_383:
	db	"life",0
_384:
	db	"bot",0
_385:
	db	"model",0
	align	4
_373:
	dd	1
	dd	_374
	dd	2
	dd	_166
	dd	_167
	dd	-4
	dd	2
	dd	_168
	dd	_167
	dd	-8
	dd	2
	dd	_375
	dd	_167
	dd	-12
	dd	2
	dd	_376
	dd	_167
	dd	-16
	dd	2
	dd	_377
	dd	_167
	dd	-20
	dd	2
	dd	_378
	dd	_167
	dd	-24
	dd	2
	dd	_379
	dd	_167
	dd	-28
	dd	2
	dd	_380
	dd	_167
	dd	-32
	dd	2
	dd	_381
	dd	_167
	dd	-36
	dd	2
	dd	_382
	dd	_167
	dd	-40
	dd	2
	dd	_383
	dd	_167
	dd	-44
	dd	2
	dd	_384
	dd	_130
	dd	-48
	dd	2
	dd	_385
	dd	_130
	dd	-52
	dd	2
	dd	_171
	dd	_167
	dd	-56
	dd	2
	dd	_172
	dd	_167
	dd	-60
	dd	0
	align	4
_179:
	dd	_58
	dd	75
	dd	2
	align	4
_181:
	dd	_58
	dd	76
	dd	2
	align	4
_183:
	dd	_58
	dd	77
	dd	2
	align	4
_184:
	dd	_58
	dd	80
	dd	2
	align	4
_194:
	dd	3
	dd	0
	dd	0
	align	4
_188:
	dd	_58
	dd	81
	dd	3
	align	4
_189:
	dd	_58
	dd	82
	dd	3
	align	4
_410:
	dd	0x41a00000
	align	4
_190:
	dd	_58
	dd	83
	dd	3
	align	4
_191:
	dd	_58
	dd	84
	dd	3
	align	4
_411:
	dd	0x40200000
	align	4
_192:
	dd	_58
	dd	85
	dd	3
	align	4
_193:
	dd	_58
	dd	86
	dd	3
	align	4
_195:
	dd	_58
	dd	89
	dd	2
_261:
	db	"zx",0
_262:
	db	"zy",0
	align	4
_260:
	dd	3
	dd	0
	dd	2
	dd	_261
	dd	_167
	dd	-64
	dd	2
	dd	_262
	dd	_167
	dd	-68
	dd	0
	align	4
_202:
	dd	_58
	dd	91
	dd	4
	align	4
_203:
	dd	_58
	dd	92
	dd	4
	align	4
_204:
	dd	_58
	dd	93
	dd	4
	align	4
_205:
	dd	_58
	dd	94
	dd	4
	align	4
_206:
	dd	_58
	dd	95
	dd	4
	align	4
_207:
	dd	_58
	dd	96
	dd	4
	align	4
_208:
	dd	_58
	dd	97
	dd	4
	align	4
_209:
	dd	_58
	dd	99
	dd	4
	align	4
_210:
	dd	_58
	dd	100
	dd	4
	align	4
_211:
	dd	_58
	dd	101
	dd	4
	align	4
_212:
	dd	_58
	dd	102
	dd	4
	align	4
_213:
	dd	_58
	dd	103
	dd	4
	align	4
_214:
	dd	_58
	dd	105
	dd	4
	align	4
_215:
	dd	_58
	dd	106
	dd	4
	align	4
_216:
	dd	_58
	dd	109
	dd	4
	align	4
_217:
	dd	_58
	dd	110
	dd	4
	align	4
_220:
	dd	_58
	dd	113
	dd	4
	align	4
_412:
	dd	0x42340000
	align	8
_413:
	dd	0x0,0x40490000
	align	4
_221:
	dd	_58
	dd	114
	dd	4
	align	4
_414:
	dd	0x42340000
	align	8
_415:
	dd	0x0,0x40490000
	align	4
_222:
	dd	_58
	dd	115
	dd	4
	align	4
_223:
	dd	_58
	dd	116
	dd	4
	align	4
_224:
	dd	_58
	dd	117
	dd	4
	align	4
_225:
	dd	_58
	dd	118
	dd	4
	align	4
_226:
	dd	_58
	dd	119
	dd	4
	align	4
_227:
	dd	_58
	dd	120
	dd	4
	align	4
_228:
	dd	_58
	dd	122
	dd	4
	align	4
_416:
	dd	0x42340000
	align	8
_417:
	dd	0x0,0x40490000
	align	4
_229:
	dd	_58
	dd	123
	dd	4
	align	4
_418:
	dd	0x42340000
	align	8
_419:
	dd	0x0,0x40490000
	align	4
_230:
	dd	_58
	dd	124
	dd	4
	align	4
_231:
	dd	_58
	dd	125
	dd	4
	align	4
_232:
	dd	_58
	dd	126
	dd	4
	align	4
_233:
	dd	_58
	dd	127
	dd	4
	align	4
_234:
	dd	_58
	dd	128
	dd	4
	align	4
_235:
	dd	_58
	dd	129
	dd	4
	align	4
_236:
	dd	_58
	dd	131
	dd	4
	align	4
_420:
	dd	0x43210000
	align	8
_421:
	dd	0x0,0x40504000
	align	4
_237:
	dd	_58
	dd	132
	dd	4
	align	4
_422:
	dd	0x43210000
	align	8
_423:
	dd	0x0,0x40504000
	align	4
_238:
	dd	_58
	dd	133
	dd	4
	align	4
_239:
	dd	_58
	dd	134
	dd	4
	align	4
_240:
	dd	_58
	dd	135
	dd	4
	align	4
_241:
	dd	_58
	dd	136
	dd	4
	align	4
_242:
	dd	_58
	dd	137
	dd	4
	align	4
_243:
	dd	_58
	dd	138
	dd	4
	align	4
_244:
	dd	_58
	dd	140
	dd	4
	align	4
_424:
	dd	0x43210000
	align	8
_425:
	dd	0x0,0x40504000
	align	4
_245:
	dd	_58
	dd	141
	dd	4
	align	4
_426:
	dd	0x43210000
	align	8
_427:
	dd	0x0,0x40504000
	align	4
_246:
	dd	_58
	dd	142
	dd	4
	align	4
_247:
	dd	_58
	dd	143
	dd	4
	align	4
_248:
	dd	_58
	dd	144
	dd	4
	align	4
_249:
	dd	_58
	dd	145
	dd	4
	align	4
_250:
	dd	_58
	dd	146
	dd	4
	align	4
_251:
	dd	_58
	dd	147
	dd	4
	align	4
_252:
	dd	_58
	dd	150
	dd	4
	align	4
_428:
	dd	0x43340000
	align	8
_429:
	dd	0x0,0x40240000
	align	4
_253:
	dd	_58
	dd	151
	dd	4
	align	4
_430:
	dd	0x43340000
	align	8
_431:
	dd	0x0,0x40240000
	align	4
_254:
	dd	_58
	dd	152
	dd	4
	align	4
_255:
	dd	_58
	dd	153
	dd	4
	align	4
_256:
	dd	_58
	dd	154
	dd	4
	align	4
_257:
	dd	_58
	dd	155
	dd	4
	align	4
_258:
	dd	_58
	dd	156
	dd	4
	align	4
_259:
	dd	_58
	dd	157
	dd	4
	align	4
_279:
	dd	3
	dd	0
	dd	0
	align	4
_263:
	dd	_58
	dd	161
	dd	4
	align	4
_264:
	dd	_58
	dd	162
	dd	4
	align	4
_265:
	dd	_58
	dd	163
	dd	4
	align	4
_266:
	dd	_58
	dd	164
	dd	4
	align	4
_267:
	dd	_58
	dd	165
	dd	4
	align	4
_268:
	dd	_58
	dd	166
	dd	4
	align	4
_269:
	dd	_58
	dd	167
	dd	4
	align	4
_270:
	dd	_58
	dd	169
	dd	4
	align	4
_271:
	dd	_58
	dd	170
	dd	4
	align	4
_272:
	dd	_58
	dd	171
	dd	4
	align	4
_273:
	dd	_58
	dd	174
	dd	4
	align	4
_274:
	dd	_58
	dd	175
	dd	4
	align	4
_275:
	dd	_58
	dd	176
	dd	4
	align	4
_276:
	dd	_58
	dd	177
	dd	4
	align	4
_277:
	dd	_58
	dd	178
	dd	4
	align	4
_278:
	dd	_58
	dd	179
	dd	4
	align	4
_311:
	dd	3
	dd	0
	dd	0
	align	4
_280:
	dd	_58
	dd	187
	dd	4
	align	4
_281:
	dd	_58
	dd	188
	dd	4
	align	4
_282:
	dd	_58
	dd	189
	dd	4
	align	4
_283:
	dd	_58
	dd	190
	dd	4
	align	4
_284:
	dd	_58
	dd	191
	dd	4
	align	4
_285:
	dd	_58
	dd	192
	dd	4
	align	4
_286:
	dd	_58
	dd	193
	dd	4
	align	4
_287:
	dd	_58
	dd	194
	dd	4
	align	4
_288:
	dd	_58
	dd	195
	dd	4
	align	4
_289:
	dd	_58
	dd	196
	dd	4
	align	4
_290:
	dd	_58
	dd	197
	dd	4
	align	4
_291:
	dd	_58
	dd	199
	dd	4
	align	4
_292:
	dd	_58
	dd	200
	dd	4
	align	4
_293:
	dd	_58
	dd	201
	dd	4
	align	4
_294:
	dd	_58
	dd	202
	dd	4
	align	4
_295:
	dd	_58
	dd	203
	dd	4
	align	4
_296:
	dd	_58
	dd	204
	dd	4
	align	4
_297:
	dd	_58
	dd	205
	dd	4
	align	4
_298:
	dd	_58
	dd	206
	dd	4
	align	4
_299:
	dd	_58
	dd	207
	dd	4
	align	4
_300:
	dd	_58
	dd	210
	dd	4
	align	4
_301:
	dd	_58
	dd	211
	dd	4
	align	4
_302:
	dd	_58
	dd	213
	dd	4
	align	4
_303:
	dd	_58
	dd	215
	dd	4
	align	4
_304:
	dd	_58
	dd	216
	dd	4
	align	4
_305:
	dd	_58
	dd	217
	dd	4
	align	4
_306:
	dd	_58
	dd	218
	dd	4
	align	4
_307:
	dd	_58
	dd	219
	dd	4
	align	4
_308:
	dd	_58
	dd	221
	dd	4
	align	4
_309:
	dd	_58
	dd	222
	dd	4
	align	4
_310:
	dd	_58
	dd	223
	dd	4
_371:
	db	"rol2",0
	align	4
_370:
	dd	3
	dd	0
	dd	2
	dd	_371
	dd	_130
	dd	-72
	dd	0
	align	4
_312:
	dd	_58
	dd	252
	dd	4
	align	4
_313:
	dd	_58
	dd	253
	dd	4
	align	4
_314:
	dd	_58
	dd	254
	dd	4
	align	4
_315:
	dd	_58
	dd	255
	dd	4
	align	4
_316:
	dd	_58
	dd	256
	dd	4
	align	4
_317:
	dd	_58
	dd	257
	dd	4
	align	4
_432:
	dd	0x40a00000
	align	4
_318:
	dd	_58
	dd	258
	dd	4
	align	4
_319:
	dd	_58
	dd	259
	dd	4
	align	4
_320:
	dd	_58
	dd	260
	dd	4
	align	4
_321:
	dd	_58
	dd	261
	dd	4
	align	4
_324:
	dd	3
	dd	0
	dd	0
	align	4
_323:
	dd	_58
	dd	262
	dd	5
	align	4
_327:
	dd	3
	dd	0
	dd	0
	align	4
_326:
	dd	_58
	dd	264
	dd	5
	align	4
_328:
	dd	_58
	dd	267
	dd	4
	align	4
_329:
	dd	_58
	dd	268
	dd	4
	align	4
_330:
	dd	_58
	dd	269
	dd	4
	align	4
_331:
	dd	_58
	dd	271
	dd	4
	align	4
_332:
	dd	_58
	dd	273
	dd	4
	align	4
_333:
	dd	_58
	dd	274
	dd	4
	align	4
_334:
	dd	_58
	dd	275
	dd	4
	align	4
_335:
	dd	_58
	dd	276
	dd	4
	align	4
_433:
	dd	0x40a00000
	align	4
_336:
	dd	_58
	dd	277
	dd	4
	align	4
_337:
	dd	_58
	dd	278
	dd	4
	align	4
_434:
	dd	0x40a00000
	align	4
_338:
	dd	_58
	dd	279
	dd	4
	align	4
_339:
	dd	_58
	dd	280
	dd	4
	align	4
_340:
	dd	_58
	dd	281
	dd	4
	align	4
_341:
	dd	_58
	dd	282
	dd	4
	align	4
_342:
	dd	_58
	dd	283
	dd	4
	align	4
_343:
	dd	_58
	dd	285
	dd	4
	align	4
_344:
	dd	_58
	dd	286
	dd	4
	align	4
_347:
	dd	3
	dd	0
	dd	0
	align	4
_346:
	dd	_58
	dd	287
	dd	5
	align	4
_350:
	dd	3
	dd	0
	dd	0
	align	4
_349:
	dd	_58
	dd	289
	dd	5
	align	4
_351:
	dd	_58
	dd	291
	dd	4
	align	4
_352:
	dd	_58
	dd	292
	dd	4
	align	4
_353:
	dd	_58
	dd	293
	dd	4
	align	4
_354:
	dd	_58
	dd	295
	dd	4
	align	4
_355:
	dd	_58
	dd	296
	dd	4
	align	4
_356:
	dd	_58
	dd	297
	dd	4
	align	4
_357:
	dd	_58
	dd	298
	dd	4
	align	4
_360:
	dd	3
	dd	0
	dd	0
	align	4
_359:
	dd	_58
	dd	298
	dd	21
	align	4
_361:
	dd	_58
	dd	300
	dd	4
	align	8
_435:
	dd	0x0,0x40590000
	align	8
_436:
	dd	0x0,0xc0590000
	align	4
_363:
	dd	_58
	dd	301
	dd	4
	align	4
_366:
	dd	3
	dd	0
	dd	0
	align	4
_365:
	dd	_58
	dd	301
	dd	21
	align	4
_369:
	dd	3
	dd	0
	dd	0
	align	4
_368:
	dd	_58
	dd	301
	dd	35
	align	4
_372:
	dd	_58
	dd	321
	dd	2
