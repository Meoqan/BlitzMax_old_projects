	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_glmax2d_glmax2d
	extrn	___bb_pixmap_pixmap
	extrn	_bbAppTitle
	extrn	_bbEnd
	extrn	_bbFloatToInt
	extrn	_bbGCFree
	extrn	_bbMilliSecs
	extrn	_bbNullObject
	extrn	_bbStringClass
	extrn	_bbStringConcat
	extrn	_bbStringFromInt
	extrn	_brl_graphics_Flip
	extrn	_brl_graphics_Graphics
	extrn	_brl_max2d_DrawPixmap
	extrn	_brl_max2d_DrawText
	extrn	_brl_pixmap_CreatePixmap
	extrn	_brl_pixmap_WritePixel
	extrn	_brl_polledinput_KeyHit
	public	__bb_main
	public	_bb_DotsColor
	public	_bb_HSB2RGB
	public	_bb_MandelBrot
	public	_bb_RGB
	public	_bb_pm
	public	_bb_xende
	public	_bb_xstart
	public	_bb_xzoom
	public	_bb_yende
	public	_bb_ystart
	public	_bb_yzoom
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_46],0
	je	_47
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_47:
	mov	dword [_46],1
	call	___bb_blitz_blitz
	call	___bb_pixmap_pixmap
	call	___bb_glmax2d_glmax2d
	mov	eax,dword [_35]
	and	eax,1
	cmp	eax,0
	jne	_36
	fld	qword [_bb_xende]
	fsub	qword [_bb_xstart]
	fld	qword [_78]
	fdivp	st1,st0
	fstp	qword [_bb_xzoom]
	or	dword [_35],1
_36:
	mov	eax,dword [_35]
	and	eax,2
	cmp	eax,0
	jne	_37
	fld	qword [_bb_yende]
	fsub	qword [_bb_ystart]
	fld	qword [_79]
	fdivp	st1,st0
	fstp	qword [_bb_yzoom]
	or	dword [_35],2
_37:
	mov	ebx,_2
	inc	dword [ebx+4]
	mov	eax,dword [_bbAppTitle]
	dec	dword [eax+4]
	jnz	_41
	push	eax
	call	_bbGCFree
	add	esp,4
_41:
	mov	dword [_bbAppTitle],ebx
	push	0
	push	60
	push	0
	push	750
	push	1000
	call	_brl_graphics_Graphics
	add	esp,20
	mov	eax,dword [_35]
	and	eax,4
	cmp	eax,0
	jne	_43
	push	4
	push	4
	push	750
	push	1000
	call	_brl_pixmap_CreatePixmap
	add	esp,16
	inc	dword [eax+4]
	mov	dword [_bb_pm],eax
	or	dword [_35],4
_43:
	jmp	_3
_5:
	fld	qword [_bb_xende]
	fld	qword [_80]
	fmulp	st1,st0
	fstp	qword [_bb_xende]
	fld	qword [_bb_xstart]
	fld	qword [_81]
	fmulp	st1,st0
	fstp	qword [_bb_xstart]
	fld	qword [_bb_ystart]
	fld	qword [_82]
	fmulp	st1,st0
	fstp	qword [_bb_ystart]
	fld	qword [_bb_yende]
	fld	qword [_83]
	fmulp	st1,st0
	fstp	qword [_bb_yende]
	fld	qword [_bb_xende]
	fsub	qword [_bb_xstart]
	fld	qword [_84]
	fdivp	st1,st0
	fstp	qword [_bb_xzoom]
	fld	qword [_bb_yende]
	fsub	qword [_bb_ystart]
	fld	qword [_85]
	fdivp	st1,st0
	fstp	qword [_bb_yzoom]
	call	_bb_MandelBrot
	call	_bbMilliSecs
	mov	dword [_44],eax
	push	0
	push	0
	push	dword [_bb_pm]
	call	_brl_max2d_DrawPixmap
	add	esp,12
	push	0
	push	0
	push	_7
	mov	ecx,dword [_44]
	sub	ecx,dword [_45]
	add	ecx,1
	mov	eax,750000
	cdq
	idiv	ecx
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_6
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	mov	eax,dword [_44]
	mov	dword [_45],eax
	push	0
	call	_brl_graphics_Flip
	add	esp,4
_3:
	push	27
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_5
_4:
	call	_bbEnd
	mov	eax,0
	jmp	_17
_17:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_MandelBrot:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	edi,0
	mov	esi,0
	jmp	_51
_10:
	mov	ebx,0
	jmp	_53
_13:
	fld	qword [_bb_ystart]
	fld	qword [_bb_yzoom]
	mov	dword [ebp+-8],ebx
	fild	dword [ebp+-8]
	fmulp	st1,st0
	faddp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	fld	qword [_bb_xstart]
	fld	qword [_bb_xzoom]
	mov	dword [ebp+-8],esi
	fild	dword [ebp+-8]
	fmulp	st1,st0
	faddp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bb_DotsColor
	add	esp,16
	fstp	dword [ebp-4]
	fld	dword [_48]
	fld	dword [ebp-4]
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	jne	_55
	fld	dword [_92]
	fld	dword [ebp-4]
	fmul	dword [ebp-4]
	fsubp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	fld	qword [_93]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-4]
	sub	esp,8
	fstp	qword [esp]
	call	_bb_HSB2RGB
	add	esp,24
	mov	edi,eax
	fld	dword [ebp-4]
	fstp	dword [_48]
_55:
	push	edi
	push	ebx
	push	esi
	push	dword [_bb_pm]
	call	_brl_pixmap_WritePixel
	add	esp,16
_11:
	add	ebx,1
_53:
	cmp	ebx,750
	jl	_13
_12:
_8:
	add	esi,1
_51:
	cmp	esi,1000
	jl	_10
_9:
	mov	eax,0
	jmp	_19
_19:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_DotsColor:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	fld	qword [ebp+8]
	fld	qword [ebp+16]
	fldz
	fldz
	fldz
	mov	edx,0
	jmp	_14
_16:
	add	edx,1
	fld	st1
	fmul	st0,st2
	fld	st1
	fmul	st0,st2
	fsubp	st1,st0
	fld	qword [_97]
	fmulp	st3,st0
	fxch	st1
	fmulp	st2,st0
	fxch	st1
	fadd	st0,st2
	fld	st1
	fadd	st0,st4
	fxch	st2
_14:
	cmp	edx,128
	setl	al
	movzx	eax,al
	cmp	eax,0
	jne	_105
	fstp	st0
	jmp	_60
_105:
	fld	qword [_98]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
_60:
	cmp	eax,0
	jne	_16
	fstp	st0
	fstp	st0
	fstp	st0
	fstp	st0
_15:
	mov	dword [ebp+-4],edx
	fild	dword [ebp+-4]
	fdiv	dword [_99]
	jmp	_23
_23:
	mov	esp,ebp
	pop	ebp
	ret
_bb_RGB:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	mov	edx,dword [ebp+12]
	mov	ecx,dword [ebp+16]
	shl	eax,16
	shl	edx,8
	add	eax,edx
	add	eax,ecx
	jmp	_28
_28:
	mov	esp,ebp
	pop	ebp
	ret
_bb_HSB2RGB:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	fld	qword [ebp+8]
	fld	qword [ebp+16]
	fldz
	fld	qword [ebp+24]
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_66
	fstp	st0
	fstp	st0
	mov	eax,0
	jmp	_33
_66:
	fldz
	fxch	st1
	fucom	st1
	fxch	st1
	fstp	st0
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_67
	fstp	st0
	fstp	st0
	fld	qword [ebp+24]
	fld	qword [_110]
	fmulp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	qword [ebp+24]
	fld	qword [_111]
	fmulp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	qword [ebp+24]
	fld	qword [_112]
	fmulp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_bb_RGB
	add	esp,12
	jmp	_33
_67:
	fld	qword [_113]
	fxch	st2
	fucom	st2
	fxch	st2
	fstp	st0
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_68
	fld	qword [ebp+24]
	fstp	dword [ebp-4]
	fld	qword [ebp+24]
	fld1
	fsubrp	st2,st0
	fmulp	st1,st0
	fld	st0
	fld	qword [ebp+24]
	fsub	st0,st2
	fmulp	st3,st0
	fld	qword [_114]
	fmulp	st3,st0
	faddp	st2,st0
	fxch	st1
	fstp	qword [ebp-12]
	jmp	_69
_68:
	fld	qword [_115]
	fxch	st2
	fucom	st2
	fxch	st2
	fstp	st0
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_70
	fld	qword [_116]
	fsubp	st2,st0
	fld	qword [ebp+24]
	fstp	qword [ebp-12]
	fld	qword [ebp+24]
	fld1
	fsubrp	st2,st0
	fmulp	st1,st0
	fld	qword [ebp-12]
	fld	qword [ebp+24]
	fsub	st0,st2
	fmulp	st3,st0
	fld	qword [_117]
	fmulp	st3,st0
	fsubrp	st2,st0
	fxch	st1
	fstp	dword [ebp-4]
	jmp	_71
_70:
	fld	qword [_118]
	fxch	st2
	fucom	st2
	fxch	st2
	fstp	st0
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_72
	fld	qword [_119]
	fsubp	st2,st0
	fld	qword [ebp+24]
	fstp	qword [ebp-12]
	fld	qword [ebp+24]
	fld1
	fsubrp	st2,st0
	fmulp	st1,st0
	fstp	dword [ebp-4]
	fld	dword [ebp-4]
	fld	qword [ebp+24]
	fld	dword [ebp-4]
	fsubp	st1,st0
	fmulp	st2,st0
	fld	qword [_120]
	fmulp	st2,st0
	faddp	st1,st0
	jmp	_73
_72:
	fld	qword [_121]
	fxch	st2
	fucom	st2
	fxch	st2
	fstp	st0
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_74
	fld	qword [_122]
	fsubp	st2,st0
	fld	qword [ebp+24]
	fld	qword [ebp+24]
	fld1
	fsubrp	st3,st0
	fmulp	st2,st0
	fxch	st1
	fstp	dword [ebp-4]
	fld	st0
	fld	qword [ebp+24]
	fld	dword [ebp-4]
	fsubp	st1,st0
	fmulp	st3,st0
	fld	qword [_123]
	fmulp	st3,st0
	fsubrp	st2,st0
	fxch	st1
	fstp	qword [ebp-12]
	jmp	_75
_74:
	fld	qword [_124]
	fxch	st2
	fucom	st2
	fxch	st2
	fstp	st0
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_76
	fld	qword [_125]
	fsubp	st2,st0
	fld	qword [ebp+24]
	fld	qword [ebp+24]
	fld1
	fsubrp	st3,st0
	fmulp	st2,st0
	fxch	st1
	fstp	qword [ebp-12]
	fld	qword [ebp-12]
	fld	qword [ebp+24]
	fsub	qword [ebp-12]
	fmulp	st3,st0
	fld	qword [_126]
	fmulp	st3,st0
	faddp	st2,st0
	fxch	st1
	fstp	dword [ebp-4]
	jmp	_77
_76:
	fld	qword [_127]
	fsubp	st2,st0
	fld	qword [ebp+24]
	fstp	dword [ebp-4]
	fld	qword [ebp+24]
	fld1
	fsubrp	st2,st0
	fmulp	st1,st0
	fstp	qword [ebp-12]
	fld	dword [ebp-4]
	fld	qword [ebp+24]
	fsub	qword [ebp-12]
	fmulp	st2,st0
	fld	qword [_128]
	fmulp	st2,st0
	fsubrp	st1,st0
_77:
_75:
_73:
_71:
_69:
	fld	qword [_129]
	fmulp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	qword [ebp-12]
	fld	qword [_130]
	fmulp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp-4]
	fmul	dword [_131]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_bb_RGB
	add	esp,12
	jmp	_33
_33:
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_46:
	dd	0
	align	8
_bb_xstart:
	dd	0x40000000,0xc0003333
	align	8
_bb_ystart:
	dd	0x0,0xbff20000
	align	8
_bb_xende:
	dd	0x40000000,0x3fe33333
	align	8
_bb_yende:
	dd	0x0,0x3ff20000
	align	4
_35:
	dd	0
	align	8
_78:
	dd	0x0,0x408f4000
	align	8
_bb_xzoom:
	dd	0x0,0x0
	align	8
_79:
	dd	0x0,0x40877000
	align	8
_bb_yzoom:
	dd	0x0,0x0
	align	4
_2:
	dd	_bbStringClass
	dd	2147483647
	dd	24
	dw	66,108,105,116,122,77,97,120,32,77,97,110,100,108,101,98
	dw	114,111,116,32,116,101,115,116
	align	4
_bb_pm:
	dd	_bbNullObject
	align	4
_44:
	dd	0
	align	4
_45:
	dd	0
	align	8
_80:
	dd	0xe0000000,0x3feff7ce
	align	8
_81:
	dd	0xe0000000,0x3feff7ce
	align	8
_82:
	dd	0xe0000000,0x3feff7ce
	align	8
_83:
	dd	0xe0000000,0x3feff7ce
	align	8
_84:
	dd	0x0,0x408f4000
	align	8
_85:
	dd	0x0,0x40877000
	align	4
_7:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	32,75,112,105,120,47,115,101,99
	align	4
_6:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	83,112,101,101,100,58,32
	align	4
_48:
	dd	0x0
	align	4
_92:
	dd	0x3f800000
	align	8
_93:
	dd	0xa0000000,0x3fe99999
	align	8
_97:
	dd	0x0,0x40000000
	align	8
_98:
	dd	0x0,0x40100000
	align	4
_99:
	dd	0x43000000
	align	8
_110:
	dd	0x0,0x406fe000
	align	8
_111:
	dd	0x0,0x406fe000
	align	8
_112:
	dd	0x0,0x406fe000
	align	8
_113:
	dd	0x60000000,0x3fc55555
	align	8
_114:
	dd	0x0,0x40180000
	align	8
_115:
	dd	0x60000000,0x3fd55555
	align	8
_116:
	dd	0x60000000,0x3fc55555
	align	8
_117:
	dd	0x0,0x40180000
	align	8
_118:
	dd	0x0,0x3fe00000
	align	8
_119:
	dd	0x60000000,0x3fd55555
	align	8
_120:
	dd	0x0,0x40180000
	align	8
_121:
	dd	0x60000000,0x3fe55555
	align	8
_122:
	dd	0x0,0x3fe00000
	align	8
_123:
	dd	0x0,0x40180000
	align	8
_124:
	dd	0xa0000000,0x3feaaaaa
	align	8
_125:
	dd	0x60000000,0x3fe55555
	align	8
_126:
	dd	0x0,0x40180000
	align	8
_127:
	dd	0xa0000000,0x3feaaaaa
	align	8
_128:
	dd	0x0,0x40180000
	align	8
_129:
	dd	0x0,0x406fe000
	align	8
_130:
	dd	0x0,0x406fe000
	align	4
_131:
	dd	0x437f0000
