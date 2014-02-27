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
	extrn	_bbSin
	extrn	_bbSqr
	extrn	_bbStringClass
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
	cmp	dword [_89],0
	je	_90
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_90:
	mov	dword [_89],1
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
	mov	ebx,_18
	inc	dword [ebx+4]
	mov	eax,dword [_bbAppTitle]
	dec	dword [eax+4]
	jnz	_60
	push	eax
	call	_bbGCFree
	add	esp,4
_60:
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
	mov	eax,dword [_62]
	and	eax,1
	cmp	eax,0
	jne	_63
	push	-1
	push	_19
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_wanne],eax
	or	dword [_62],1
_63:
	mov	eax,dword [_62]
	and	eax,2
	cmp	eax,0
	jne	_65
	push	-1
	push	_20
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_wanne2],eax
	or	dword [_62],2
_65:
	mov	eax,dword [_62]
	and	eax,4
	cmp	eax,0
	jne	_67
	push	-1
	push	_21
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_SB09_kette],eax
	or	dword [_62],4
_67:
	mov	eax,dword [_62]
	and	eax,8
	cmp	eax,0
	jne	_69
	push	-1
	push	_22
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_SB09_panzerung1],eax
	or	dword [_62],8
_69:
	mov	eax,dword [_62]
	and	eax,16
	cmp	eax,0
	jne	_71
	push	-1
	push	_23
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_SB09_panzerung2],eax
	or	dword [_62],16
_71:
	mov	eax,dword [_62]
	and	eax,32
	cmp	eax,0
	jne	_73
	push	-1
	push	_24
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_SB09_turm],eax
	or	dword [_62],32
_73:
	mov	eax,dword [_62]
	and	eax,64
	cmp	eax,0
	jne	_75
	push	-1
	push	_25
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_hellrider_kette],eax
	or	dword [_62],64
_75:
	mov	eax,dword [_62]
	and	eax,128
	cmp	eax,0
	jne	_77
	push	-1
	push	_26
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_hellrider_wanne],eax
	or	dword [_62],128
_77:
	mov	eax,dword [_62]
	and	eax,256
	cmp	eax,0
	jne	_79
	push	-1
	push	_27
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_bonebraker_kette],eax
	or	dword [_62],256
_79:
	mov	eax,dword [_62]
	and	eax,512
	cmp	eax,0
	jne	_81
	push	-1
	push	_28
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_bonebraker_wanne],eax
	or	dword [_62],512
_81:
	mov	eax,dword [_62]
	and	eax,1024
	cmp	eax,0
	jne	_83
	push	-1
	push	_29
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_bonebraker_turm],eax
	or	dword [_62],1024
_83:
	push	128
	push	128
	push	128
	call	_brl_max2d_SetClsColor
	add	esp,12
	mov	eax,dword [_62]
	and	eax,2048
	cmp	eax,0
	jne	_85
	push	_bbNullObject
	push	1109393408
	call	_brl_timer_CreateTimer
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_tmr],eax
	or	dword [_62],2048
_85:
	jmp	_30
_32:
	mov	eax,dword [_bb_tmr]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	call	_brl_max2d_Cls
	add	dword [_bb_rr],1
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
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
_30:
	push	27
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	jne	_86
	call	_brl_polledinput_AppTerminate
_86:
	cmp	eax,0
	je	_32
_31:
	mov	eax,0
	jmp	_33
_33:
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
	fld	qword [_136]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-24]
	fld	qword [_137]
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
	fld	qword [_138]
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
	jmp	_40
_40:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_DrawTank:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	push	esi
	mov	esi,dword [ebp+52]
	mov	ebx,dword [ebp+56]
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
	fld	dword [ebp+48]
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	je	_101
	cmp	esi,1
	setl	al
	movzx	eax,al
_101:
	cmp	eax,0
	je	_103
	push	1053609165
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	1075838976
	fld	dword [_141]
	fadd	dword [ebp+24]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1084227584
	push	1109393408
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	1101004800
	fld	dword [_142]
	fadd	dword [ebp+24]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1109393408
	push	1084227584
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
_103:
	cmp	ebx,3
	je	_106
	cmp	ebx,2
	je	_107
	cmp	ebx,1
	je	_108
	cmp	ebx,0
	je	_109
	jmp	_105
_106:
	push	dword [ebp+32]
	push	dword [ebp+32]
	call	_brl_max2d_SetScale
	add	esp,8
	push	dword [ebp+16]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	128
	push	128
	push	128
	call	_brl_max2d_SetColor
	add	esp,12
	push	1119092736
	push	1106247680
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1101004800
	push	1101004800
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_bonebraker_kette]
	call	_bb_DrawPicture
	add	esp,20
	push	1119092736
	push	-1054867456
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1101004800
	push	1101004800
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_bonebraker_kette]
	call	_bb_DrawPicture
	add	esp,20
	fld	dword [ebp+44]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp+40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp+36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_brl_max2d_SetColor
	add	esp,12
	push	1117782016
	push	1108738048
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1108082688
	push	1109393408
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_bonebraker_wanne]
	call	_bb_DrawPicture
	add	esp,20
	push	1117782016
	push	-1071644672
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1108082688
	push	1109393408
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_bonebraker_wanne]
	call	_bb_DrawPicture
	add	esp,20
	push	1112014848
	push	1109393408
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1117782016
	push	1120403456
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_bonebraker_wanne]
	call	_bb_DrawPicture
	add	esp,20
	push	dword [ebp+20]
	call	_brl_max2d_SetRotation
	add	esp,4
	fld	dword [ebp+16]
	fadd	dword [_145]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	qword [_146]
	fmulp	st1,st0
	fstp	dword [ebp-16]
	fld	dword [ebp+16]
	fadd	dword [_147]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	qword [_148]
	fmulp	st1,st0
	fstp	dword [ebp-12]
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	1075838976
	push	1103626240
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1084227584
	push	1103626240
	fld	dword [ebp-12]
	fadd	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-16]
	fadd	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	fld	dword [ebp+44]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp+40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp+36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_brl_max2d_SetColor
	add	esp,12
	push	1097859072
	push	1097859072
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1106247680
	push	1106247680
	fld	dword [ebp-12]
	fadd	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-16]
	fadd	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_bonebraker_turm]
	call	_bb_DrawPicture
	add	esp,20
	fld	dword [ebp+16]
	fsub	dword [_149]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	qword [_150]
	fmulp	st1,st0
	fstp	dword [ebp-16]
	fld	dword [ebp+16]
	fsub	dword [_151]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	qword [_152]
	fmulp	st1,st0
	fstp	dword [ebp-12]
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	1075838976
	push	1103626240
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1084227584
	push	1103626240
	fld	dword [ebp-12]
	fadd	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-16]
	fadd	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	fld	dword [ebp+44]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp+40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp+36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_brl_max2d_SetColor
	add	esp,12
	push	1097859072
	push	1097859072
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1106247680
	push	1106247680
	fld	dword [ebp-12]
	fadd	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-16]
	fadd	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_bonebraker_turm]
	call	_bb_DrawPicture
	add	esp,20
	fld	dword [ebp+16]
	fadd	dword [_153]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	qword [_154]
	fmulp	st1,st0
	fstp	dword [ebp-16]
	fld	dword [ebp+16]
	fadd	dword [_155]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	qword [_156]
	fmulp	st1,st0
	fstp	dword [ebp-12]
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	1075838976
	push	1103626240
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1084227584
	push	1103626240
	fld	dword [ebp-12]
	fadd	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-16]
	fadd	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	fld	dword [ebp+44]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp+40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp+36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_brl_max2d_SetColor
	add	esp,12
	push	1097859072
	push	1097859072
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1106247680
	push	1106247680
	fld	dword [ebp-12]
	fadd	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-16]
	fadd	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_bonebraker_turm]
	call	_bb_DrawPicture
	add	esp,20
	fld	dword [ebp+16]
	fsub	dword [_157]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	qword [_158]
	fmulp	st1,st0
	fstp	dword [ebp-16]
	fld	dword [ebp+16]
	fsub	dword [_159]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	qword [_160]
	fmulp	st1,st0
	fstp	dword [ebp-12]
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	1075838976
	push	1103626240
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1084227584
	push	1103626240
	fld	dword [ebp-12]
	fadd	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-16]
	fadd	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	fld	dword [ebp+44]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp+40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp+36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_brl_max2d_SetColor
	add	esp,12
	push	1097859072
	push	1097859072
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1106247680
	push	1106247680
	fld	dword [ebp-12]
	fadd	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-16]
	fadd	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_bonebraker_turm]
	call	_bb_DrawPicture
	add	esp,20
	fld	dword [ebp+16]
	fadd	dword [_161]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	qword [_162]
	fmulp	st1,st0
	fstp	dword [ebp-16]
	fld	dword [ebp+16]
	fadd	dword [_163]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	qword [_164]
	fmulp	st1,st0
	fstp	dword [ebp-12]
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	1084227584
	push	1114636288
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1092616192
	push	1110704128
	fld	dword [ebp-12]
	fadd	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-16]
	fadd	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	fld	dword [ebp+44]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp+40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp+36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_brl_max2d_SetColor
	add	esp,12
	push	1106247680
	push	1106247680
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1114636288
	push	1114636288
	fld	dword [ebp-12]
	fadd	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-16]
	fadd	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_bonebraker_turm]
	call	_bb_DrawPicture
	add	esp,20
	jmp	_105
_107:
	push	dword [ebp+32]
	push	dword [ebp+32]
	call	_brl_max2d_SetScale
	add	esp,8
	push	dword [ebp+16]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	1106247680
	push	1101004800
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1092616192
	push	1101004800
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_hellrider_kette]
	call	_bb_DrawPicture
	add	esp,20
	push	1106247680
	push	-1054867456
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1092616192
	push	1101004800
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_hellrider_kette]
	call	_bb_DrawPicture
	add	esp,20
	fld	dword [ebp+44]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp+40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp+36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_brl_max2d_SetColor
	add	esp,12
	push	1104936960
	push	1102315520
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1110704128
	push	1113325568
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_hellrider_wanne]
	call	_bb_DrawPicture
	add	esp,20
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	1069547520
	push	1111228416
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1077936128
	push	1110704128
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	40
	push	40
	push	40
	call	_brl_max2d_SetColor
	add	esp,12
	push	1075838976
	push	1111228416
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1084227584
	push	1084227584
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	jmp	_105
_108:
	push	dword [ebp+32]
	push	dword [ebp+32]
	call	_brl_max2d_SetScale
	add	esp,8
	push	dword [ebp+16]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	1106247680
	push	1101004800
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1092616192
	push	1101004800
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_SB09_kette]
	call	_bb_DrawPicture
	add	esp,20
	push	1106247680
	push	-1054867456
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1092616192
	push	1101004800
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_SB09_kette]
	call	_bb_DrawPicture
	add	esp,20
	push	-1046478848
	push	1099956224
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1092616192
	push	1101004800
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_SB09_kette]
	call	_bb_DrawPicture
	add	esp,20
	push	-1046478848
	push	-1056964608
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1092616192
	push	1101004800
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_SB09_kette]
	call	_bb_DrawPicture
	add	esp,20
	fld	dword [ebp+44]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp+40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp+36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_brl_max2d_SetColor
	add	esp,12
	push	1101004800
	push	1103626240
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1101004800
	push	1101004800
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_SB09_panzerung1]
	call	_bb_DrawPicture
	add	esp,20
	push	1101004800
	push	-1063256064
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1101004800
	push	1101004800
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_SB09_panzerung1]
	call	_bb_DrawPicture
	add	esp,20
	push	-1054867456
	push	1102577664
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1101004800
	push	1101004800
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_SB09_panzerung1]
	call	_bb_DrawPicture
	add	esp,20
	push	-1054867456
	push	-1069547520
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1101004800
	push	1101004800
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_SB09_panzerung1]
	call	_bb_DrawPicture
	add	esp,20
	push	1100218368
	push	1102315520
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1110704128
	push	1110704128
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_SB09_panzerung2]
	call	_bb_DrawPicture
	add	esp,20
	push	dword [ebp+20]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	1092091904
	push	1110048768
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1084227584
	push	1110704128
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	-1062207488
	push	1110048768
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1084227584
	push	1110704128
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	fld	dword [ebp+44]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp+40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp+36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_brl_max2d_SetColor
	add	esp,12
	push	1102315520
	push	1102315520
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1110704128
	push	1110704128
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_SB09_turm]
	call	_bb_DrawPicture
	add	esp,20
	jmp	_105
_109:
	push	dword [ebp+32]
	push	dword [ebp+32]
	call	_brl_max2d_SetScale
	add	esp,8
	push	dword [ebp+16]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	1053609165
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	1097859072
	push	1101004800
	call	_brl_max2d_SetHandle
	add	esp,8
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	1106247680
	push	1109393408
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	fld	dword [_165]
	fmul	dword [ebp+32]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	fld	dword [ebp+44]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp+40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp+36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_brl_max2d_SetColor
	add	esp,12
	push	1102315520
	push	1102315520
	call	_brl_max2d_SetHandle
	add	esp,8
	cmp	esi,-1
	jne	_112
	push	1110704128
	push	1110704128
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_wanne2]
	call	_bb_DrawPicture
	add	esp,20
	jmp	_113
_112:
	push	1110704128
	push	1110704128
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_wanne]
	call	_bb_DrawPicture
	add	esp,20
_113:
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	-1059061760
	push	1102577664
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1084227584
	push	1084227584
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	dword [ebp+20]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	1053609165
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	1091305472
	push	1095237632
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1099694080
	push	1103626240
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	fld	dword [_166]
	fmul	dword [ebp+32]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	1075838976
	push	1107427328
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1084227584
	push	1108082688
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	fld	dword [_167]
	fmul	dword [ebp+32]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	1075838976
	push	1107427328
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1084227584
	push	1108082688
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	fld	dword [ebp+44]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp+40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp+36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_brl_max2d_SetColor
	add	esp,12
	push	1097859072
	push	1097859072
	call	_brl_max2d_SetHandle
	add	esp,8
	cmp	esi,-1
	jne	_114
	push	1106247680
	push	1106247680
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_wanne2]
	call	_bb_DrawPicture
	add	esp,20
	jmp	_115
_114:
	push	1106247680
	push	1106247680
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_wanne]
	call	_bb_DrawPicture
	add	esp,20
_115:
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	-1073741824
	push	-1073741824
	call	_brl_max2d_SetHandle
	add	esp,8
	push	1084227584
	push	1084227584
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	1053609165
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	0
	push	0
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	-1069547520
	push	1121714176
	call	_brl_max2d_SetHandle
	add	esp,8
	fldz
	fld	dword [ebp+48]
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_116
	push	1073741824
	push	1120403456
	fld	dword [ebp+12]
	mov	eax,dword [_bb_gVy]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp+8]
	mov	eax,dword [_bb_gVx]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
_116:
	fld	qword [_168]
	sub	esp,8
	fstp	qword [esp]
	fld	qword [_169]
	sub	esp,8
	fstp	qword [esp]
	call	_brl_random_Rnd
	add	esp,16
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	cmp	eax,0
	jge	_118
	jmp	_119
_118:
_119:
	jmp	_105
_105:
	push	dword [ebp-8]
	push	dword [ebp-4]
	call	_brl_max2d_SetScale
	add	esp,8
	mov	eax,0
	jmp	_55
_55:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_89:
	dd	0
	align	4
_18:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	80,97,110,122,101,114,83,58,32,84,101,115,116,108,97,112
	dw	33
	align	4
_62:
	dd	0
	align	4
_19:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	103,102,120,92,101,108,101,109,101,110,116,101,92,119,97,110
	dw	110,101,46,112,110,103
	align	4
_bb_wanne:
	dd	_bbNullObject
	align	4
_20:
	dd	_bbStringClass
	dd	2147483647
	dd	23
	dw	103,102,120,92,101,108,101,109,101,110,116,101,92,119,97,110
	dw	110,101,50,46,112,110,103
	align	4
_bb_wanne2:
	dd	_bbNullObject
	align	4
_21:
	dd	_bbStringClass
	dd	2147483647
	dd	34
	dw	103,102,120,92,101,108,101,109,101,110,116,101,92,112,97,110
	dw	122,101,114,92,83,66,48,57,92,107,101,116,116,101,46,112
	dw	110,103
	align	4
_bb_SB09_kette:
	dd	_bbNullObject
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	39
	dw	103,102,120,92,101,108,101,109,101,110,116,101,92,112,97,110
	dw	122,101,114,92,83,66,48,57,92,112,97,110,122,101,114,117
	dw	110,103,49,46,112,110,103
	align	4
_bb_SB09_panzerung1:
	dd	_bbNullObject
	align	4
_23:
	dd	_bbStringClass
	dd	2147483647
	dd	39
	dw	103,102,120,92,101,108,101,109,101,110,116,101,92,112,97,110
	dw	122,101,114,92,83,66,48,57,92,112,97,110,122,101,114,117
	dw	110,103,50,46,112,110,103
	align	4
_bb_SB09_panzerung2:
	dd	_bbNullObject
	align	4
_24:
	dd	_bbStringClass
	dd	2147483647
	dd	33
	dw	103,102,120,92,101,108,101,109,101,110,116,101,92,112,97,110
	dw	122,101,114,92,83,66,48,57,92,116,117,114,109,46,112,110
	dw	103
	align	4
_bb_SB09_turm:
	dd	_bbNullObject
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	39
	dw	103,102,120,92,101,108,101,109,101,110,116,101,92,112,97,110
	dw	122,101,114,92,104,101,108,108,114,105,100,101,114,92,107,101
	dw	116,116,101,46,112,110,103
	align	4
_bb_hellrider_kette:
	dd	_bbNullObject
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	39
	dw	103,102,120,92,101,108,101,109,101,110,116,101,92,112,97,110
	dw	122,101,114,92,104,101,108,108,114,105,100,101,114,92,119,97
	dw	110,110,101,46,112,110,103
	align	4
_bb_hellrider_wanne:
	dd	_bbNullObject
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	40
	dw	103,102,120,92,101,108,101,109,101,110,116,101,92,112,97,110
	dw	122,101,114,92,98,111,110,101,98,114,97,107,101,114,92,107
	dw	101,116,116,101,46,112,110,103
	align	4
_bb_bonebraker_kette:
	dd	_bbNullObject
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	40
	dw	103,102,120,92,101,108,101,109,101,110,116,101,92,112,97,110
	dw	122,101,114,92,98,111,110,101,98,114,97,107,101,114,92,119
	dw	97,110,110,101,46,112,110,103
	align	4
_bb_bonebraker_wanne:
	dd	_bbNullObject
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	39
	dw	103,102,120,92,101,108,101,109,101,110,116,101,92,112,97,110
	dw	122,101,114,92,98,111,110,101,98,114,97,107,101,114,92,116
	dw	117,114,109,46,112,110,103
	align	4
_bb_bonebraker_turm:
	dd	_bbNullObject
	align	4
_bb_gVx:
	dd	0
	align	4
_bb_gVy:
	dd	0
	align	4
_bb_rr:
	dd	0
	align	4
_bb_tmr:
	dd	_bbNullObject
	align	8
_136:
	dd	0x0,0x40000000
	align	8
_137:
	dd	0x0,0x40000000
	align	8
_138:
	dd	0x0,0x40668000
	align	4
_141:
	dd	0x41a00000
	align	4
_142:
	dd	0x40200000
	align	4
_145:
	dd	0x42340000
	align	8
_146:
	dd	0x0,0x40490000
	align	4
_147:
	dd	0x42340000
	align	8
_148:
	dd	0x0,0x40490000
	align	4
_149:
	dd	0x42340000
	align	8
_150:
	dd	0x0,0x40490000
	align	4
_151:
	dd	0x42340000
	align	8
_152:
	dd	0x0,0x40490000
	align	4
_153:
	dd	0x43210000
	align	8
_154:
	dd	0x0,0x40504000
	align	4
_155:
	dd	0x43210000
	align	8
_156:
	dd	0x0,0x40504000
	align	4
_157:
	dd	0x43210000
	align	8
_158:
	dd	0x0,0x40504000
	align	4
_159:
	dd	0x43210000
	align	8
_160:
	dd	0x0,0x40504000
	align	4
_161:
	dd	0x43340000
	align	8
_162:
	dd	0x0,0x40240000
	align	4
_163:
	dd	0x43340000
	align	8
_164:
	dd	0x0,0x40240000
	align	4
_165:
	dd	0x40a00000
	align	4
_166:
	dd	0x40a00000
	align	4
_167:
	dd	0x40a00000
	align	8
_168:
	dd	0x0,0x40590000
	align	8
_169:
	dd	0x0,0xc0590000
