	format	MS COFF
	extrn	___bb_appstub_appstub
	extrn	___bb_audio_audio
	extrn	___bb_bank_bank
	extrn	___bb_bankstream_bankstream
	extrn	___bb_basic_basic
	extrn	___bb_blitz_blitz
	extrn	___bb_bmploader_bmploader
	extrn	___bb_d3d7max2d_d3d7max2d
	extrn	___bb_directsoundaudio_directsoundaudio
	extrn	___bb_eventqueue_eventqueue
	extrn	___bb_freeaudioaudio_freeaudioaudio
	extrn	___bb_freejoy_freejoy
	extrn	___bb_freeprocess_freeprocess
	extrn	___bb_freetypefont_freetypefont
	extrn	___bb_glew_glew
	extrn	___bb_gnet_gnet
	extrn	___bb_jpgloader_jpgloader
	extrn	___bb_macos_macos
	extrn	___bb_maxutil_maxutil
	extrn	___bb_oggloader_oggloader
	extrn	___bb_openalaudio_openalaudio
	extrn	___bb_pngloader_pngloader
	extrn	___bb_reflection_reflection
	extrn	___bb_retro_retro
	extrn	___bb_tgaloader_tgaloader
	extrn	___bb_timer_timer
	extrn	___bb_wavloader_wavloader
	extrn	_bbATan2
	extrn	_bbCos
	extrn	_bbFloatPow
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbSin
	extrn	_bbSqr
	extrn	_brl_max2d_DrawOval
	extrn	_brl_max2d_SetColor
	extrn	_brl_max2d_SetHandle
	extrn	_brl_max2d_SetRotation
	public	__bb_main
	public	_bb_CalcWinkel
	public	_bb_PushCollision
	public	_bb_PushTank
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_49],0
	je	_50
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_50:
	mov	dword [_49],1
	push	ebp
	push	_47
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_appstub_appstub
	call	___bb_audio_audio
	call	___bb_bank_bank
	call	___bb_bankstream_bankstream
	call	___bb_basic_basic
	call	___bb_bmploader_bmploader
	call	___bb_d3d7max2d_d3d7max2d
	call	___bb_directsoundaudio_directsoundaudio
	call	___bb_eventqueue_eventqueue
	call	___bb_freeaudioaudio_freeaudioaudio
	call	___bb_freetypefont_freetypefont
	call	___bb_gnet_gnet
	call	___bb_jpgloader_jpgloader
	call	___bb_maxutil_maxutil
	call	___bb_oggloader_oggloader
	call	___bb_openalaudio_openalaudio
	call	___bb_pngloader_pngloader
	call	___bb_reflection_reflection
	call	___bb_retro_retro
	call	___bb_tgaloader_tgaloader
	call	___bb_timer_timer
	call	___bb_wavloader_wavloader
	call	___bb_freejoy_freejoy
	call	___bb_freeprocess_freeprocess
	call	___bb_glew_glew
	call	___bb_macos_macos
	mov	ebx,0
	jmp	_24
_24:
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
	push	_69
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_51
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_171]
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
	fld	qword [_172]
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
	push	_54
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fdiv	dword [_173]
	fstp	dword [ebp-16]
	push	_55
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-28]
	fdiv	dword [_174]
	fstp	dword [ebp-28]
	push	_56
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
	jne	_57
	push	_58
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
	fadd	dword [_175]
	fstp	dword [ebp-36]
	push	_60
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,1
	jne	_61
	push	_62
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
	push	_63
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
	jmp	_64
_61:
	push	_65
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
	fdiv	dword [_176]
	fmulp	st1,st0
	fld	qword [ebp-68]
	faddp	st1,st0
	fstp	qword [ebp-68]
	fld	qword [ebp-68]
	fstp	dword [ebx]
	push	_66
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
	fdiv	dword [_177]
	fmulp	st1,st0
	fld	qword [ebp-76]
	faddp	st1,st0
	fstp	qword [ebp-76]
	fld	qword [ebp-76]
	fstp	dword [ebx]
	push	_67
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	mov	eax,dword [ebp-20]
	fld	dword [eax]
	fstp	qword [ebp-84]
	fld	dword [ebp-36]
	fsub	dword [_178]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	dword [ebp-16]
	fadd	dword [ebp-28]
	fsub	dword [ebp-32]
	fdiv	dword [_179]
	fmulp	st1,st0
	fld	qword [ebp-84]
	faddp	st1,st0
	fstp	qword [ebp-84]
	fld	qword [ebp-84]
	fstp	dword [ebx]
	push	_68
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	mov	eax,dword [ebp-24]
	fld	dword [eax]
	fstp	qword [ebp-92]
	fld	dword [ebp-36]
	fsub	dword [_180]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	dword [ebp-16]
	fadd	dword [ebp-28]
	fsub	dword [ebp-32]
	fdiv	dword [_181]
	fmulp	st1,st0
	fld	qword [ebp-92]
	faddp	st1,st0
	fstp	qword [ebp-92]
	fld	qword [ebp-92]
	fstp	dword [ebx]
_64:
_57:
	mov	ebx,0
	jmp	_33
_33:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_PushTank:
	push	ebp
	mov	ebp,esp
	sub	esp,372
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	eax,dword [ebp+24]
	mov	dword [ebp-20],eax
	mov	eax,dword [ebp+28]
	mov	dword [ebp-24],eax
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
	fldz
	fstp	dword [ebp-76]
	fldz
	fstp	dword [ebp-80]
	fldz
	fstp	dword [ebp-84]
	fldz
	fstp	dword [ebp-88]
	fldz
	fstp	dword [ebp-92]
	fldz
	fstp	dword [ebp-96]
	fldz
	fstp	dword [ebp-100]
	fldz
	fstp	dword [ebp-104]
	fldz
	fstp	dword [ebp-108]
	push	ebp
	push	_133
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_82
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_186]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-4]
	fld	dword [eax]
	mov	eax,dword [ebp-16]
	fsub	dword [eax]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-116]
	fld	qword [_187]
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
	fld	qword [ebp-116]
	faddp	st1,st0
	fstp	qword [ebp-116]
	fld	qword [ebp-116]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fstp	dword [ebp-28]
	push	_84
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-28]
	fld	dword [_188]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_85
	push	_86
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1102053376
	push	-1049624576
	call	_bb_CalcWinkel
	add	esp,8
	fadd	dword [_189]
	fstp	dword [ebp-32]
	push	_88
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1102053376
	push	1097859072
	call	_bb_CalcWinkel
	add	esp,8
	fadd	dword [_190]
	fstp	dword [ebp-36]
	push	_90
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1045430272
	push	1097859072
	call	_bb_CalcWinkel
	add	esp,8
	fadd	dword [_191]
	fstp	dword [ebp-40]
	push	_92
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1045430272
	push	-1049624576
	call	_bb_CalcWinkel
	add	esp,8
	fadd	dword [_192]
	fstp	dword [ebp-44]
	push	_94
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	fld	dword [eax]
	fstp	qword [ebp-372]
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fadd	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fstp	qword [ebp-124]
	fld	qword [_193]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	qword [ebp-124]
	fmulp	st1,st0
	fstp	qword [ebp-124]
	fld	qword [ebp-372]
	fadd	qword [ebp-124]
	fstp	qword [ebp-372]
	fld	qword [ebp-372]
	fstp	dword [ebp-48]
	push	_96
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fstp	qword [ebp-364]
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fadd	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fstp	qword [ebp-132]
	fld	qword [_194]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	qword [ebp-132]
	fmulp	st1,st0
	fstp	qword [ebp-132]
	fld	qword [ebp-364]
	fadd	qword [ebp-132]
	fstp	qword [ebp-364]
	fld	qword [ebp-364]
	fstp	dword [ebp-52]
	push	_98
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	fld	dword [eax]
	fstp	qword [ebp-356]
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fadd	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fstp	qword [ebp-140]
	fld	qword [_195]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	qword [ebp-140]
	fmulp	st1,st0
	fstp	qword [ebp-140]
	fld	qword [ebp-356]
	fadd	qword [ebp-140]
	fstp	qword [ebp-356]
	fld	qword [ebp-356]
	fstp	dword [ebp-56]
	push	_100
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fstp	qword [ebp-348]
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fadd	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fstp	qword [ebp-148]
	fld	qword [_196]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	qword [ebp-148]
	fmulp	st1,st0
	fstp	qword [ebp-148]
	fld	qword [ebp-348]
	fadd	qword [ebp-148]
	fstp	qword [ebp-348]
	fld	qword [ebp-348]
	fstp	dword [ebp-60]
	push	_102
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	fld	dword [eax]
	fstp	qword [ebp-340]
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fadd	dword [ebp-40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fstp	qword [ebp-156]
	fld	qword [_197]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	qword [ebp-156]
	fmulp	st1,st0
	fstp	qword [ebp-156]
	fld	qword [ebp-340]
	fadd	qword [ebp-156]
	fstp	qword [ebp-340]
	fld	qword [ebp-340]
	fstp	dword [ebp-64]
	push	_104
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fstp	qword [ebp-332]
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fadd	dword [ebp-40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fstp	qword [ebp-164]
	fld	qword [_198]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	qword [ebp-164]
	fmulp	st1,st0
	fstp	qword [ebp-164]
	fld	qword [ebp-332]
	fadd	qword [ebp-164]
	fstp	qword [ebp-332]
	fld	qword [ebp-332]
	fstp	dword [ebp-68]
	push	_106
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	fld	dword [eax]
	fstp	qword [ebp-324]
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fadd	dword [ebp-44]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fstp	qword [ebp-172]
	fld	qword [_199]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	qword [ebp-172]
	fmulp	st1,st0
	fstp	qword [ebp-172]
	fld	qword [ebp-324]
	fadd	qword [ebp-172]
	fstp	qword [ebp-324]
	fld	qword [ebp-324]
	fstp	dword [ebp-72]
	push	_108
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fstp	qword [ebp-316]
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fadd	dword [ebp-44]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fstp	qword [ebp-180]
	fld	qword [_200]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	qword [ebp-180]
	fmulp	st1,st0
	fstp	qword [ebp-180]
	fld	qword [ebp-316]
	fadd	qword [ebp-180]
	fstp	qword [ebp-316]
	fld	qword [ebp-316]
	fstp	dword [ebp-76]
	push	_110
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	fld	dword [eax]
	fstp	qword [ebp-308]
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fadd	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fstp	qword [ebp-188]
	fld	qword [_201]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	qword [ebp-188]
	fmulp	st1,st0
	fstp	qword [ebp-188]
	fld	qword [ebp-308]
	fadd	qword [ebp-188]
	fstp	qword [ebp-308]
	fld	qword [ebp-308]
	fstp	dword [ebp-80]
	push	_112
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-20]
	fld	dword [eax]
	fstp	qword [ebp-300]
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fadd	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fstp	qword [ebp-196]
	fld	qword [_202]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	qword [ebp-196]
	fmulp	st1,st0
	fstp	qword [ebp-196]
	fld	qword [ebp-300]
	fadd	qword [ebp-196]
	fstp	qword [ebp-300]
	fld	qword [ebp-300]
	fstp	dword [ebp-84]
	push	_114
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	fld	dword [eax]
	fstp	qword [ebp-292]
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fadd	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fstp	qword [ebp-204]
	fld	qword [_203]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	qword [ebp-204]
	fmulp	st1,st0
	fstp	qword [ebp-204]
	fld	qword [ebp-292]
	fadd	qword [ebp-204]
	fstp	qword [ebp-292]
	fld	qword [ebp-292]
	fstp	dword [ebp-88]
	push	_116
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-20]
	fld	dword [eax]
	fstp	qword [ebp-284]
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fadd	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fstp	qword [ebp-212]
	fld	qword [_204]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	qword [ebp-212]
	fmulp	st1,st0
	fstp	qword [ebp-212]
	fld	qword [ebp-284]
	fadd	qword [ebp-212]
	fstp	qword [ebp-284]
	fld	qword [ebp-284]
	fstp	dword [ebp-92]
	push	_118
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	fld	dword [eax]
	fstp	qword [ebp-276]
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fadd	dword [ebp-40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fstp	qword [ebp-220]
	fld	qword [_205]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	qword [ebp-220]
	fmulp	st1,st0
	fstp	qword [ebp-220]
	fld	qword [ebp-276]
	fadd	qword [ebp-220]
	fstp	qword [ebp-276]
	fld	qword [ebp-276]
	fstp	dword [ebp-96]
	push	_120
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-20]
	fld	dword [eax]
	fstp	qword [ebp-268]
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fadd	dword [ebp-40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fstp	qword [ebp-228]
	fld	qword [_206]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	qword [ebp-228]
	fmulp	st1,st0
	fstp	qword [ebp-228]
	fld	qword [ebp-268]
	fadd	qword [ebp-228]
	fstp	qword [ebp-268]
	fld	qword [ebp-268]
	fstp	dword [ebp-100]
	push	_122
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	fld	dword [eax]
	fstp	qword [ebp-260]
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fadd	dword [ebp-44]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fstp	qword [ebp-236]
	fld	qword [_207]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	qword [ebp-236]
	fmulp	st1,st0
	fstp	qword [ebp-236]
	fld	qword [ebp-260]
	fadd	qword [ebp-236]
	fstp	qword [ebp-260]
	fld	qword [ebp-260]
	fstp	dword [ebp-104]
	push	_124
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-20]
	fld	dword [eax]
	fstp	qword [ebp-252]
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fadd	dword [ebp-44]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fstp	qword [ebp-244]
	fld	qword [_208]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	qword [ebp-244]
	fmulp	st1,st0
	fstp	qword [ebp-244]
	fld	qword [ebp-252]
	fadd	qword [ebp-244]
	fstp	qword [ebp-252]
	fld	qword [ebp-252]
	fstp	dword [ebp-108]
	push	_126
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	200
	push	200
	call	_brl_max2d_SetColor
	add	esp,12
	push	_127
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1084227584
	push	1084227584
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_128
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_129
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1092616192
	push	1092616192
	push	dword [ebp-52]
	push	dword [ebp-48]
	call	_brl_max2d_DrawOval
	add	esp,16
	push	_130
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1092616192
	push	1092616192
	push	dword [ebp-60]
	push	dword [ebp-56]
	call	_brl_max2d_DrawOval
	add	esp,16
	push	_131
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1092616192
	push	1092616192
	push	dword [ebp-68]
	push	dword [ebp-64]
	call	_brl_max2d_DrawOval
	add	esp,16
	push	_132
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1092616192
	push	1092616192
	push	dword [ebp-76]
	push	dword [ebp-72]
	call	_brl_max2d_DrawOval
	add	esp,16
_85:
	mov	ebx,0
	jmp	_41
_41:
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
	push	_164
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_157
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
	push	_159
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_18
_20:
	push	_160
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fadd	dword [_212]
	fstp	dword [ebp-12]
_18:
	fld	dword [ebp-12]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_20
_19:
	push	_161
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_21
_23:
	push	_162
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fsub	dword [_213]
	fstp	dword [ebp-12]
_21:
	fld	dword [ebp-12]
	fld	dword [_214]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_23
_22:
	push	_163
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fstp	dword [ebp-16]
	jmp	_45
_45:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-16]
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_49:
	dd	0
_48:
	db	"may",0
	align	4
_47:
	dd	1
	dd	_48
	dd	0
_70:
	db	"PushCollision",0
_71:
	db	"x1",0
_72:
	db	"f",0
_73:
	db	"y1",0
_74:
	db	"size1",0
_75:
	db	"x2",0
_76:
	db	"y2",0
_77:
	db	"size2",0
_78:
	db	"festergegenstend2",0
_79:
	db	"b",0
_80:
	db	"entferung",0
_81:
	db	"winkel",0
	align	4
_69:
	dd	1
	dd	_70
	dd	5
	dd	_71
	dd	_72
	dd	-8
	dd	5
	dd	_73
	dd	_72
	dd	-12
	dd	2
	dd	_74
	dd	_72
	dd	-16
	dd	5
	dd	_75
	dd	_72
	dd	-20
	dd	5
	dd	_76
	dd	_72
	dd	-24
	dd	2
	dd	_77
	dd	_72
	dd	-28
	dd	2
	dd	_78
	dd	_79
	dd	-4
	dd	2
	dd	_80
	dd	_72
	dd	-32
	dd	2
	dd	_81
	dd	_72
	dd	-36
	dd	0
_52:
	db	"D:/Proggen/projecte/team/PanzerS/may.bmx",0
	align	4
_51:
	dd	_52
	dd	4
	dd	2
	align	8
_171:
	dd	0x0,0x40000000
	align	8
_172:
	dd	0x0,0x40000000
	align	4
_54:
	dd	_52
	dd	5
	dd	2
	align	4
_173:
	dd	0x40000000
	align	4
_55:
	dd	_52
	dd	6
	dd	2
	align	4
_174:
	dd	0x40000000
	align	4
_56:
	dd	_52
	dd	7
	dd	2
	align	4
_58:
	dd	_52
	dd	8
	dd	3
	align	4
_175:
	dd	0x42b40000
	align	4
_60:
	dd	_52
	dd	10
	dd	3
	align	4
_62:
	dd	_52
	dd	11
	dd	4
	align	4
_63:
	dd	_52
	dd	12
	dd	4
	align	4
_65:
	dd	_52
	dd	14
	dd	4
	align	4
_176:
	dd	0x40000000
	align	4
_66:
	dd	_52
	dd	15
	dd	4
	align	4
_177:
	dd	0x40000000
	align	4
_67:
	dd	_52
	dd	16
	dd	4
	align	4
_178:
	dd	0x43340000
	align	4
_179:
	dd	0x40000000
	align	4
_68:
	dd	_52
	dd	17
	dd	4
	align	4
_180:
	dd	0x43340000
	align	4
_181:
	dd	0x40000000
_134:
	db	"PushTank",0
_135:
	db	"r1",0
_136:
	db	"r2",0
_137:
	db	"winkel1",0
_138:
	db	"winkel2",0
_139:
	db	"winkel3",0
_140:
	db	"winkel4",0
_141:
	db	"tmp1x1",0
_142:
	db	"tmp1y1",0
_143:
	db	"tmp1x2",0
_144:
	db	"tmp1y2",0
_145:
	db	"tmp1x3",0
_146:
	db	"tmp1y3",0
_147:
	db	"tmp1x4",0
_148:
	db	"tmp1y4",0
_149:
	db	"tmp2x1",0
_150:
	db	"tmp2y1",0
_151:
	db	"tmp2x2",0
_152:
	db	"tmp2y2",0
_153:
	db	"tmp2x3",0
_154:
	db	"tmp2y3",0
_155:
	db	"tmp2x4",0
_156:
	db	"tmp2y4",0
	align	4
_133:
	dd	1
	dd	_134
	dd	5
	dd	_71
	dd	_72
	dd	-4
	dd	5
	dd	_73
	dd	_72
	dd	-8
	dd	5
	dd	_135
	dd	_72
	dd	-12
	dd	5
	dd	_75
	dd	_72
	dd	-16
	dd	5
	dd	_76
	dd	_72
	dd	-20
	dd	5
	dd	_136
	dd	_72
	dd	-24
	dd	2
	dd	_80
	dd	_72
	dd	-28
	dd	2
	dd	_137
	dd	_72
	dd	-32
	dd	2
	dd	_138
	dd	_72
	dd	-36
	dd	2
	dd	_139
	dd	_72
	dd	-40
	dd	2
	dd	_140
	dd	_72
	dd	-44
	dd	2
	dd	_141
	dd	_72
	dd	-48
	dd	2
	dd	_142
	dd	_72
	dd	-52
	dd	2
	dd	_143
	dd	_72
	dd	-56
	dd	2
	dd	_144
	dd	_72
	dd	-60
	dd	2
	dd	_145
	dd	_72
	dd	-64
	dd	2
	dd	_146
	dd	_72
	dd	-68
	dd	2
	dd	_147
	dd	_72
	dd	-72
	dd	2
	dd	_148
	dd	_72
	dd	-76
	dd	2
	dd	_149
	dd	_72
	dd	-80
	dd	2
	dd	_150
	dd	_72
	dd	-84
	dd	2
	dd	_151
	dd	_72
	dd	-88
	dd	2
	dd	_152
	dd	_72
	dd	-92
	dd	2
	dd	_153
	dd	_72
	dd	-96
	dd	2
	dd	_154
	dd	_72
	dd	-100
	dd	2
	dd	_155
	dd	_72
	dd	-104
	dd	2
	dd	_156
	dd	_72
	dd	-108
	dd	0
	align	4
_82:
	dd	_52
	dd	23
	dd	2
	align	8
_186:
	dd	0x0,0x40000000
	align	8
_187:
	dd	0x0,0x40000000
	align	4
_84:
	dd	_52
	dd	24
	dd	2
	align	4
_188:
	dd	0x42960000
	align	4
_86:
	dd	_52
	dd	25
	dd	3
	align	4
_189:
	dd	0x42b40000
	align	4
_88:
	dd	_52
	dd	26
	dd	3
	align	4
_190:
	dd	0x42b40000
	align	4
_90:
	dd	_52
	dd	27
	dd	3
	align	4
_191:
	dd	0x42b40000
	align	4
_92:
	dd	_52
	dd	28
	dd	3
	align	4
_192:
	dd	0x42b40000
	align	4
_94:
	dd	_52
	dd	30
	dd	3
	align	8
_193:
	dd	0x0,0x40816200
	align	4
_96:
	dd	_52
	dd	31
	dd	3
	align	8
_194:
	dd	0x0,0x40816200
	align	4
_98:
	dd	_52
	dd	33
	dd	3
	align	8
_195:
	dd	0x0,0x40816200
	align	4
_100:
	dd	_52
	dd	34
	dd	3
	align	8
_196:
	dd	0x0,0x40816200
	align	4
_102:
	dd	_52
	dd	36
	dd	3
	align	8
_197:
	dd	0x0,0x40816200
	align	4
_104:
	dd	_52
	dd	37
	dd	3
	align	8
_198:
	dd	0x0,0x40816200
	align	4
_106:
	dd	_52
	dd	39
	dd	3
	align	8
_199:
	dd	0x0,0x40816200
	align	4
_108:
	dd	_52
	dd	40
	dd	3
	align	8
_200:
	dd	0x0,0x40816200
	align	4
_110:
	dd	_52
	dd	42
	dd	3
	align	8
_201:
	dd	0x0,0x40816200
	align	4
_112:
	dd	_52
	dd	43
	dd	3
	align	8
_202:
	dd	0x0,0x40816200
	align	4
_114:
	dd	_52
	dd	45
	dd	3
	align	8
_203:
	dd	0x0,0x40816200
	align	4
_116:
	dd	_52
	dd	46
	dd	3
	align	8
_204:
	dd	0x0,0x40816200
	align	4
_118:
	dd	_52
	dd	48
	dd	3
	align	8
_205:
	dd	0x0,0x40816200
	align	4
_120:
	dd	_52
	dd	49
	dd	3
	align	8
_206:
	dd	0x0,0x40816200
	align	4
_122:
	dd	_52
	dd	51
	dd	3
	align	8
_207:
	dd	0x0,0x40816200
	align	4
_124:
	dd	_52
	dd	52
	dd	3
	align	8
_208:
	dd	0x0,0x40816200
	align	4
_126:
	dd	_52
	dd	54
	dd	3
	align	4
_127:
	dd	_52
	dd	55
	dd	3
	align	4
_128:
	dd	_52
	dd	56
	dd	3
	align	4
_129:
	dd	_52
	dd	57
	dd	3
	align	4
_130:
	dd	_52
	dd	58
	dd	3
	align	4
_131:
	dd	_52
	dd	59
	dd	3
	align	4
_132:
	dd	_52
	dd	60
	dd	3
_165:
	db	"CalcWinkel",0
_166:
	db	"x",0
_167:
	db	"y",0
	align	4
_164:
	dd	1
	dd	_165
	dd	2
	dd	_166
	dd	_72
	dd	-4
	dd	2
	dd	_167
	dd	_72
	dd	-8
	dd	2
	dd	_81
	dd	_72
	dd	-12
	dd	0
	align	4
_157:
	dd	_52
	dd	67
	dd	2
	align	4
_159:
	dd	_52
	dd	68
	dd	2
	align	4
_160:
	dd	_52
	dd	69
	dd	3
	align	4
_212:
	dd	0x43b40000
	align	4
_161:
	dd	_52
	dd	71
	dd	2
	align	4
_162:
	dd	_52
	dd	72
	dd	3
	align	4
_213:
	dd	0x43b40000
	align	4
_214:
	dd	0x43b40000
	align	4
_163:
	dd	_52
	dd	74
	dd	2
