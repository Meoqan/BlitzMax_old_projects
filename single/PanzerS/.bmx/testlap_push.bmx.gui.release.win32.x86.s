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
	extrn	_bbSin
	extrn	_bbSqr
	extrn	_bbStringClass
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
	cmp	dword [_69],0
	je	_70
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_70:
	mov	dword [_69],1
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
	push	0
	push	0
	push	0
	call	_brl_max2d_SetClsColor
	add	esp,12
	mov	eax,dword [_64]
	and	eax,1
	cmp	eax,0
	jne	_65
	push	_bbNullObject
	push	1109393408
	call	_brl_timer_CreateTimer
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_tmr],eax
	or	dword [_64],1
_65:
	jmp	_19
_21:
	mov	eax,dword [_bb_tmr]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	call	_brl_max2d_Cls
	call	_brl_polledinput_MouseX
	mov	dword [ebp+-4],eax
	fild	dword [ebp+-4]
	fstp	dword [_bb_mx]
	call	_brl_polledinput_MouseY
	mov	dword [ebp+-4],eax
	fild	dword [ebp+-4]
	fstp	dword [_bb_my]
	push	1056964608
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	1112014848
	push	1112014848
	call	_brl_max2d_SetHandle
	add	esp,8
	push	255
	push	128
	push	128
	call	_brl_max2d_SetColor
	add	esp,12
	push	1120403456
	push	1120403456
	push	1133903872
	push	1137180672
	call	_brl_max2d_DrawRect
	add	esp,16
	push	1120403456
	push	1120403456
	push	1133903872
	push	1137180672
	push	1128792064
	lea	eax,dword [_bb_my]
	push	eax
	lea	eax,dword [_bb_mx]
	push	eax
	call	_bb_PushQuad
	add	esp,28
	push	128
	push	128
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	1120403456
	push	1120403456
	push	1133903872
	push	1142292480
	call	_brl_max2d_DrawRect
	add	esp,16
	push	1120403456
	push	1120403456
	push	1133903872
	push	1142292480
	push	1128792064
	lea	eax,dword [_bb_my]
	push	eax
	lea	eax,dword [_bb_mx]
	push	eax
	call	_bb_PushQuad
	add	esp,28
	push	128
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	1120403456
	push	1120403456
	push	1133903872
	push	1128792064
	call	_brl_max2d_DrawRect
	add	esp,16
	push	1120403456
	push	1120403456
	push	1133903872
	push	1128792064
	push	1128792064
	lea	eax,dword [_bb_my]
	push	eax
	lea	eax,dword [_bb_mx]
	push	eax
	call	_bb_PushQuad
	add	esp,28
	push	1120403456
	push	1120403456
	call	_brl_max2d_SetHandle
	add	esp,8
	push	128
	push	255
	push	128
	call	_brl_max2d_SetColor
	add	esp,12
	push	1128792064
	push	1128792064
	push	dword [_bb_my]
	push	dword [_bb_mx]
	call	_brl_max2d_DrawOval
	add	esp,16
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
_19:
	push	27
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	jne	_66
	call	_brl_polledinput_AppTerminate
_66:
	cmp	eax,0
	je	_21
_20:
	mov	eax,0
	jmp	_28
_28:
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
	fld	qword [_98]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-24]
	fld	qword [_99]
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
	fld	qword [_100]
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
	jmp	_35
_35:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_PushQuad:
	push	ebp
	mov	ebp,esp
	sub	esp,32
	push	ebx
	push	esi
	mov	ebx,dword [ebp+8]
	mov	esi,dword [ebp+12]
	fld	dword [ebp+20]
	fadd	dword [_103]
	fstp	dword [ebp-4]
	fld	dword [ebp+24]
	fadd	dword [_104]
	fstp	dword [ebp-8]
	push	1
	push	1098907648
	lea	eax,dword [ebp-8]
	push	eax
	lea	eax,dword [ebp-4]
	push	eax
	push	dword [ebp+16]
	lea	eax,dword [esi]
	push	eax
	lea	eax,dword [ebx]
	push	eax
	call	_bb_PushCollision
	add	esp,28
	fld	dword [ebp+20]
	fadd	dword [_105]
	fstp	dword [ebp-12]
	fld	dword [ebp+24]
	fsub	dword [_106]
	fstp	dword [ebp-16]
	push	1
	push	1098907648
	lea	eax,dword [ebp-16]
	push	eax
	lea	eax,dword [ebp-12]
	push	eax
	push	dword [ebp+16]
	lea	eax,dword [esi]
	push	eax
	lea	eax,dword [ebx]
	push	eax
	call	_bb_PushCollision
	add	esp,28
	fld	dword [ebp+20]
	fsub	dword [_107]
	fstp	dword [ebp-20]
	fld	dword [ebp+24]
	fsub	dword [_108]
	fstp	dword [ebp-24]
	push	1
	push	1098907648
	lea	eax,dword [ebp-24]
	push	eax
	lea	eax,dword [ebp-20]
	push	eax
	push	dword [ebp+16]
	lea	eax,dword [esi]
	push	eax
	lea	eax,dword [ebx]
	push	eax
	call	_bb_PushCollision
	add	esp,28
	fld	dword [ebp+20]
	fsub	dword [_109]
	fstp	dword [ebp-28]
	fld	dword [ebp+24]
	fadd	dword [_110]
	fstp	dword [ebp-32]
	push	1
	push	1098907648
	lea	eax,dword [ebp-32]
	push	eax
	lea	eax,dword [ebp-28]
	push	eax
	push	dword [ebp+16]
	lea	eax,dword [esi]
	push	eax
	lea	eax,dword [ebx]
	push	eax
	call	_bb_PushCollision
	add	esp,28
	mov	eax,0
	jmp	_44
_44:
	pop	esi
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
	fld	qword [_113]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [esi]
	fsub	dword [edi]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-16]
	fld	qword [_114]
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
	fdiv	dword [_115]
	fstp	dword [ebp+16]
	fld	dword [ebp+28]
	fdiv	dword [_116]
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
	jne	_88
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
	fadd	dword [_117]
	fstp	dword [ebp-8]
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,1
	jne	_90
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
	jmp	_91
_90:
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
	fdiv	dword [_118]
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
	fdiv	dword [_119]
	fmulp	st1,st0
	fld	qword [ebp-40]
	faddp	st1,st0
	fstp	qword [ebp-40]
	fld	qword [ebp-40]
	fstp	dword [ebx]
	fld	dword [edi]
	fstp	qword [ebp-32]
	fld	dword [ebp-8]
	fsub	dword [_120]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	dword [ebp+16]
	fadd	dword [ebp+28]
	fsub	dword [ebp-68]
	fdiv	dword [_121]
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
	fsub	dword [_122]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	dword [ebp+16]
	fadd	dword [ebp+28]
	fsub	dword [ebp-68]
	fdiv	dword [_123]
	fmulp	st1,st0
	fld	qword [ebp-24]
	faddp	st1,st0
	fstp	qword [ebp-24]
	fld	qword [ebp-24]
	mov	eax,dword [ebp+24]
	fstp	dword [eax]
_91:
_88:
	mov	eax,0
	jmp	_53
_53:
	pop	edi
	pop	esi
	pop	ebx
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
	jmp	_22
_24:
	fadd	dword [_128]
_22:
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
	jne	_24
_23:
	jmp	_25
_27:
	fsub	dword [_129]
_25:
	fld	dword [_130]
	fxch	st1
	fucom	st1
	fxch	st1
	fstp	st0
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_27
_26:
	jmp	_57
_57:
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_69:
	dd	0
	align	4
_18:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	80,97,110,122,101,114,83,58,32,84,101,115,116,108,97,112
	dw	33
	align	4
_bb_mx:
	dd	0x0
	align	4
_bb_my:
	dd	0x0
	align	4
_64:
	dd	0
	align	4
_bb_tmr:
	dd	_bbNullObject
	align	8
_98:
	dd	0x0,0x40000000
	align	8
_99:
	dd	0x0,0x40000000
	align	8
_100:
	dd	0x0,0x40668000
	align	4
_103:
	dd	0x41000000
	align	4
_104:
	dd	0x41000000
	align	4
_105:
	dd	0x41000000
	align	4
_106:
	dd	0x41000000
	align	4
_107:
	dd	0x41000000
	align	4
_108:
	dd	0x41000000
	align	4
_109:
	dd	0x41000000
	align	4
_110:
	dd	0x41000000
	align	8
_113:
	dd	0x0,0x40000000
	align	8
_114:
	dd	0x0,0x40000000
	align	4
_115:
	dd	0x40000000
	align	4
_116:
	dd	0x40000000
	align	4
_117:
	dd	0x42b40000
	align	4
_118:
	dd	0x40000000
	align	4
_119:
	dd	0x40000000
	align	4
_120:
	dd	0x43340000
	align	4
_121:
	dd	0x40000000
	align	4
_122:
	dd	0x43340000
	align	4
_123:
	dd	0x40000000
	align	4
_128:
	dd	0x43b40000
	align	4
_129:
	dd	0x43b40000
	align	4
_130:
	dd	0x43b40000
