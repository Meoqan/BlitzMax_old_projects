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
	extrn	_bbSin
	extrn	_bbSqr
	public	__bb_main
	public	_bb_CalcWinkel
	public	_bb_PushCollision
	public	_bb_PushTank
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	cmp	dword [_47],0
	je	_48
	mov	eax,0
	mov	esp,ebp
	pop	ebp
	ret
_48:
	mov	dword [_47],1
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
	mov	eax,0
	jmp	_24
_24:
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
	fld	qword [_82]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [esi]
	fsub	dword [edi]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-16]
	fld	qword [_83]
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
	fadd	dword [ebp+28]
	fld	dword [ebp-68]
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_50
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
	fadd	dword [_84]
	fstp	dword [ebp-8]
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,1
	jne	_52
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
	jmp	_53
_52:
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
	fdiv	dword [_85]
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
	fdiv	dword [_86]
	fmulp	st1,st0
	fld	qword [ebp-40]
	faddp	st1,st0
	fstp	qword [ebp-40]
	fld	qword [ebp-40]
	fstp	dword [ebx]
	fld	dword [edi]
	fstp	qword [ebp-32]
	fld	dword [ebp-8]
	fsub	dword [_87]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	dword [ebp+16]
	fadd	dword [ebp+28]
	fsub	dword [ebp-68]
	fdiv	dword [_88]
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
	fsub	dword [_89]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	dword [ebp+16]
	fadd	dword [ebp+28]
	fsub	dword [ebp-68]
	fdiv	dword [_90]
	fmulp	st1,st0
	fld	qword [ebp-24]
	faddp	st1,st0
	fstp	qword [ebp-24]
	fld	qword [ebp-24]
	mov	eax,dword [ebp+24]
	fstp	dword [eax]
_53:
_50:
	mov	eax,0
	jmp	_33
_33:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_PushTank:
	push	ebp
	mov	ebp,esp
	sub	esp,24
	push	ebx
	push	esi
	mov	edx,dword [ebp+8]
	mov	esi,dword [ebp+12]
	mov	eax,dword [ebp+20]
	mov	ebx,dword [ebp+24]
	fld	qword [_116]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [edx]
	fsub	dword [eax]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-16]
	fld	qword [_117]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [esi]
	fsub	dword [ebx]
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
	fld	dword [_118]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_55
	push	1102053376
	push	-1049624576
	call	_bb_CalcWinkel
	add	esp,8
	fstp	dword [ebp-24]
	push	1102053376
	push	1097859072
	call	_bb_CalcWinkel
	add	esp,8
	fstp	dword [ebp-8]
	push	-1045430272
	push	1097859072
	call	_bb_CalcWinkel
	add	esp,8
	fstp	dword [ebp-4]
	push	-1045430272
	push	-1049624576
	call	_bb_CalcWinkel
	add	esp,8
	fstp	dword [ebp-20]
	fld	dword [ebp-24]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	fstp	st0
	add	esp,8
	fld	qword [_119]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	fstp	st0
	add	esp,8
	fld	dword [ebp-24]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	fstp	st0
	add	esp,8
	fld	qword [_120]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	fstp	st0
	add	esp,8
	fld	dword [ebp-8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	fstp	st0
	add	esp,8
	fld	qword [_121]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	fstp	st0
	add	esp,8
	fld	dword [ebp-8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	fstp	st0
	add	esp,8
	fld	qword [_122]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	fstp	st0
	add	esp,8
	fld	dword [ebp-4]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	fstp	st0
	add	esp,8
	fld	qword [_123]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	fstp	st0
	add	esp,8
	fld	dword [ebp-4]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	fstp	st0
	add	esp,8
	fld	qword [_124]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	fstp	st0
	add	esp,8
	fld	dword [ebp-20]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	fstp	st0
	add	esp,8
	fld	qword [_125]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	fstp	st0
	add	esp,8
	fld	dword [ebp-20]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	fstp	st0
	add	esp,8
	fld	qword [_126]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	fstp	st0
	add	esp,8
	fld	dword [ebp-24]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	fstp	st0
	add	esp,8
	fld	qword [_127]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	fstp	st0
	add	esp,8
	fld	dword [ebp-24]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	fstp	st0
	add	esp,8
	fld	qword [_128]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	fstp	st0
	add	esp,8
	fld	dword [ebp-8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	fstp	st0
	add	esp,8
	fld	qword [_129]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	fstp	st0
	add	esp,8
	fld	dword [ebp-8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	fstp	st0
	add	esp,8
	fld	qword [_130]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	fstp	st0
	add	esp,8
	fld	dword [ebp-4]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	fstp	st0
	add	esp,8
	fld	qword [_131]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	fstp	st0
	add	esp,8
	fld	dword [ebp-4]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	fstp	st0
	add	esp,8
	fld	qword [_132]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	fstp	st0
	add	esp,8
	fld	dword [ebp-20]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	fstp	st0
	add	esp,8
	fld	qword [_133]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	fstp	st0
	add	esp,8
	fld	dword [ebp-20]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	fstp	st0
	add	esp,8
	fld	qword [_134]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	fstp	st0
	add	esp,8
_55:
	mov	eax,0
	jmp	_41
_41:
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
	jmp	_18
_20:
	fadd	dword [_139]
_18:
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
	jne	_20
_19:
	jmp	_21
_23:
	fsub	dword [_140]
_21:
	fld	dword [_141]
	fxch	st1
	fucom	st1
	fxch	st1
	fstp	st0
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_23
_22:
	jmp	_45
_45:
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_47:
	dd	0
	align	8
_82:
	dd	0x0,0x40000000
	align	8
_83:
	dd	0x0,0x40000000
	align	4
_84:
	dd	0x42b40000
	align	4
_85:
	dd	0x40000000
	align	4
_86:
	dd	0x40000000
	align	4
_87:
	dd	0x43340000
	align	4
_88:
	dd	0x40000000
	align	4
_89:
	dd	0x43340000
	align	4
_90:
	dd	0x40000000
	align	8
_116:
	dd	0x0,0x40000000
	align	8
_117:
	dd	0x0,0x40000000
	align	4
_118:
	dd	0x42960000
	align	8
_119:
	dd	0x0,0x40816200
	align	8
_120:
	dd	0x0,0x40816200
	align	8
_121:
	dd	0x0,0x40816200
	align	8
_122:
	dd	0x0,0x40816200
	align	8
_123:
	dd	0x0,0x40816200
	align	8
_124:
	dd	0x0,0x40816200
	align	8
_125:
	dd	0x0,0x40816200
	align	8
_126:
	dd	0x0,0x40816200
	align	8
_127:
	dd	0x0,0x40816200
	align	8
_128:
	dd	0x0,0x40816200
	align	8
_129:
	dd	0x0,0x40816200
	align	8
_130:
	dd	0x0,0x40816200
	align	8
_131:
	dd	0x0,0x40816200
	align	8
_132:
	dd	0x0,0x40816200
	align	8
_133:
	dd	0x0,0x40816200
	align	8
_134:
	dd	0x0,0x40816200
	align	4
_139:
	dd	0x43b40000
	align	4
_140:
	dd	0x43b40000
	align	4
_141:
	dd	0x43b40000
