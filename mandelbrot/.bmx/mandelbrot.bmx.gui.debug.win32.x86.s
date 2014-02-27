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
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
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
	cmp	dword [_105],0
	je	_106
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_106:
	mov	dword [_105],1
	push	ebp
	push	_78
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_pixmap_pixmap
	call	___bb_glmax2d_glmax2d
	push	_35
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_37
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_38
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_39
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_40
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_41]
	and	eax,1
	cmp	eax,0
	jne	_42
	fld	qword [_bb_xende]
	fsub	qword [_bb_xstart]
	fld	qword [_231]
	fdivp	st1,st0
	fstp	qword [_bb_xzoom]
	or	dword [_41],1
_42:
	push	_43
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_41]
	and	eax,2
	cmp	eax,0
	jne	_44
	fld	qword [_bb_yende]
	fsub	qword [_bb_ystart]
	fld	qword [_232]
	fdivp	st1,st0
	fstp	qword [_bb_yzoom]
	or	dword [_41],2
_44:
	push	_45
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_2
	inc	dword [ebx+4]
	mov	eax,dword [_bbAppTitle]
	dec	dword [eax+4]
	jnz	_49
	push	eax
	call	_bbGCFree
	add	esp,4
_49:
	mov	dword [_bbAppTitle],ebx
	push	_50
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	60
	push	0
	push	75
	push	100
	call	_brl_graphics_Graphics
	add	esp,20
	push	_51
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_41]
	and	eax,4
	cmp	eax,0
	jne	_53
	push	4
	push	4
	push	75
	push	100
	call	_brl_pixmap_CreatePixmap
	add	esp,16
	inc	dword [eax+4]
	mov	dword [_bb_pm],eax
	or	dword [_41],4
_53:
	push	_54
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_3
_5:
	push	ebp
	push	_70
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_55
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_58
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_bb_xende]
	fld	qword [_233]
	fmulp	st1,st0
	fstp	qword [_bb_xende]
	push	_59
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_bb_xstart]
	fld	qword [_234]
	fmulp	st1,st0
	fstp	qword [_bb_xstart]
	push	_60
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_bb_ystart]
	fld	qword [_235]
	fmulp	st1,st0
	fstp	qword [_bb_ystart]
	push	_61
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_bb_yende]
	fld	qword [_236]
	fmulp	st1,st0
	fstp	qword [_bb_yende]
	push	_62
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_bb_xende]
	fsub	qword [_bb_xstart]
	fld	qword [_237]
	fdivp	st1,st0
	fstp	qword [_bb_xzoom]
	push	_63
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_bb_yende]
	fsub	qword [_bb_ystart]
	fld	qword [_238]
	fdivp	st1,st0
	fstp	qword [_bb_yzoom]
	push	_64
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_MandelBrot
	push	_65
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	mov	dword [_56],eax
	push	_66
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	dword [_bb_pm]
	call	_brl_max2d_DrawPixmap
	add	esp,12
	push	_67
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	_7
	mov	ecx,dword [_56]
	sub	ecx,dword [_57]
	add	ecx,1
	mov	eax,7500
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
	push	_68
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_56]
	mov	dword [_57],eax
	push	_69
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_graphics_Flip
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_3:
	push	27
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_5
_4:
	push	_77
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	mov	ebx,0
	jmp	_17
_17:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_MandelBrot:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	mov	dword [ebp-4],0
	mov	dword [ebp-8],0
	mov	dword [ebp-12],0
	fldz
	fstp	dword [ebp-16]
	push	ebp
	push	_130
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_107
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_109
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	push	_111
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	mov	dword [ebp-8],0
	jmp	_113
_10:
	push	ebp
	push	_128
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_114
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	dword [ebp-12],0
	jmp	_116
_13:
	push	ebp
	push	_125
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_117
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_bb_ystart]
	fld	qword [_bb_yzoom]
	mov	eax,dword [ebp-12]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fmulp	st1,st0
	faddp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	fld	qword [_bb_xstart]
	fld	qword [_bb_xzoom]
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fmulp	st1,st0
	faddp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bb_DotsColor
	add	esp,16
	fstp	dword [ebp-16]
	push	_119
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fld	dword [_108]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	jne	_120
	push	ebp
	push	_123
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_121
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_245]
	fld	dword [ebp-16]
	fmul	dword [ebp-16]
	fsubp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	fld	qword [_246]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-16]
	sub	esp,8
	fstp	qword [esp]
	call	_bb_HSB2RGB
	add	esp,24
	mov	dword [ebp-4],eax
	push	_122
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fstp	dword [_108]
	call	dword [_bbOnDebugLeaveScope]
_120:
	push	_124
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	push	dword [ebp-12]
	push	dword [ebp-8]
	push	dword [_bb_pm]
	call	_brl_pixmap_WritePixel
	add	esp,16
	call	dword [_bbOnDebugLeaveScope]
_11:
	add	dword [ebp-12],1
_116:
	cmp	dword [ebp-12],75
	jl	_13
_12:
	call	dword [_bbOnDebugLeaveScope]
_8:
	add	dword [ebp-8],1
_113:
	cmp	dword [ebp-8],100
	jl	_10
_9:
	mov	ebx,0
	jmp	_19
_19:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_DotsColor:
	push	ebp
	mov	ebp,esp
	sub	esp,52
	fld	qword [ebp+8]
	fstp	qword [ebp-8]
	fld	qword [ebp+16]
	fstp	qword [ebp-16]
	fldz
	fstp	qword [ebp-24]
	fldz
	fstp	qword [ebp-32]
	fldz
	fstp	qword [ebp-40]
	mov	dword [ebp-44],0
	push	ebp
	push	_149
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_134
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	qword [ebp-24]
	fldz
	fstp	qword [ebp-32]
	fldz
	fstp	qword [ebp-40]
	push	_138
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],0
	push	_140
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_14
_16:
	push	ebp
	push	_147
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_143
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_144
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-24]
	fmul	qword [ebp-24]
	fld	qword [ebp-32]
	fmul	qword [ebp-32]
	fsubp	st1,st0
	fstp	qword [ebp-40]
	push	_145
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_250]
	fmul	qword [ebp-24]
	fmul	qword [ebp-32]
	fadd	qword [ebp-16]
	fstp	qword [ebp-32]
	push	_146
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-40]
	fadd	qword [ebp-8]
	fstp	qword [ebp-24]
	call	dword [_bbOnDebugLeaveScope]
_14:
	mov	eax,dword [ebp-44]
	cmp	eax,128
	setl	al
	movzx	eax,al
	cmp	eax,0
	je	_141
	fld	qword [ebp-40]
	fld	qword [_251]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
_141:
	cmp	eax,0
	jne	_16
_15:
	push	_148
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-44]
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	fdiv	dword [_252]
	fstp	dword [ebp-48]
	jmp	_23
_23:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-48]
	mov	esp,ebp
	pop	ebp
	ret
_bb_RGB:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	push	ebp
	push	_157
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_156
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	shl	ebx,16
	mov	eax,dword [ebp-8]
	shl	eax,8
	add	ebx,eax
	add	ebx,dword [ebp-12]
	jmp	_28
_28:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_HSB2RGB:
	push	ebp
	mov	ebp,esp
	sub	esp,52
	push	ebx
	fld	qword [ebp+8]
	fstp	qword [ebp-8]
	fld	qword [ebp+16]
	fstp	qword [ebp-16]
	fld	qword [ebp+24]
	fstp	qword [ebp-24]
	fldz
	fstp	dword [ebp-28]
	fldz
	fstp	qword [ebp-36]
	fldz
	fstp	qword [ebp-44]
	fldz
	fstp	qword [ebp-52]
	push	ebp
	push	_225
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_162
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-28]
	fldz
	fstp	qword [ebp-36]
	fldz
	fstp	qword [ebp-44]
	fldz
	fstp	qword [ebp-52]
	push	_167
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-24]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_168
	push	ebp
	push	_170
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_169
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	call	dword [_bbOnDebugLeaveScope]
	jmp	_33
_168:
	push	_171
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-16]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_172
	push	ebp
	push	_174
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_173
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-24]
	fld	qword [_261]
	fmulp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	qword [ebp-24]
	fld	qword [_262]
	fmulp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	qword [ebp-24]
	fld	qword [_263]
	fmulp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_bb_RGB
	add	esp,12
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_33
_172:
	push	_175
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-8]
	fld	qword [_264]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_176
	push	ebp
	push	_181
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_177
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-8]
	fstp	qword [ebp-52]
	push	_178
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-24]
	fstp	dword [ebp-28]
	push	_179
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-24]
	fld1
	fsub	qword [ebp-16]
	fmulp	st1,st0
	fstp	qword [ebp-44]
	push	_180
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-44]
	fld	qword [ebp-24]
	fsub	qword [ebp-44]
	fmul	qword [ebp-52]
	fld	qword [_265]
	fmulp	st1,st0
	faddp	st1,st0
	fstp	qword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_182
_176:
	push	ebp
	push	_223
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_183
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-8]
	fld	qword [_266]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_184
	push	ebp
	push	_189
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_185
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-8]
	fld	qword [_267]
	fsubp	st1,st0
	fstp	qword [ebp-52]
	push	_186
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-24]
	fstp	qword [ebp-36]
	push	_187
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-24]
	fld1
	fsub	qword [ebp-16]
	fmulp	st1,st0
	fstp	qword [ebp-44]
	push	_188
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-36]
	fld	qword [ebp-24]
	fsub	qword [ebp-44]
	fmul	qword [ebp-52]
	fld	qword [_268]
	fmulp	st1,st0
	fsubp	st1,st0
	fstp	dword [ebp-28]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_190
_184:
	push	ebp
	push	_222
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_191
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-8]
	fld	qword [_269]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_192
	push	ebp
	push	_197
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_193
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-8]
	fld	qword [_270]
	fsubp	st1,st0
	fstp	qword [ebp-52]
	push	_194
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-24]
	fstp	qword [ebp-36]
	push	_195
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-24]
	fld1
	fsub	qword [ebp-16]
	fmulp	st1,st0
	fstp	dword [ebp-28]
	push	_196
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-28]
	fld	qword [ebp-24]
	fld	dword [ebp-28]
	fsubp	st1,st0
	fmul	qword [ebp-52]
	fld	qword [_271]
	fmulp	st1,st0
	faddp	st1,st0
	fstp	qword [ebp-44]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_198
_192:
	push	ebp
	push	_221
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_199
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-8]
	fld	qword [_272]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_200
	push	ebp
	push	_205
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_201
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-8]
	fld	qword [_273]
	fsubp	st1,st0
	fstp	qword [ebp-52]
	push	_202
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-24]
	fstp	qword [ebp-44]
	push	_203
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-24]
	fld1
	fsub	qword [ebp-16]
	fmulp	st1,st0
	fstp	dword [ebp-28]
	push	_204
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-44]
	fld	qword [ebp-24]
	fld	dword [ebp-28]
	fsubp	st1,st0
	fmul	qword [ebp-52]
	fld	qword [_274]
	fmulp	st1,st0
	fsubp	st1,st0
	fstp	qword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_206
_200:
	push	ebp
	push	_220
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_207
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-8]
	fld	qword [_275]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_208
	push	ebp
	push	_213
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_209
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-8]
	fld	qword [_276]
	fsubp	st1,st0
	fstp	qword [ebp-52]
	push	_210
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-24]
	fstp	qword [ebp-44]
	push	_211
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-24]
	fld1
	fsub	qword [ebp-16]
	fmulp	st1,st0
	fstp	qword [ebp-36]
	push	_212
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-36]
	fld	qword [ebp-24]
	fsub	qword [ebp-36]
	fmul	qword [ebp-52]
	fld	qword [_277]
	fmulp	st1,st0
	faddp	st1,st0
	fstp	dword [ebp-28]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_214
_208:
	push	ebp
	push	_219
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_215
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-8]
	fld	qword [_278]
	fsubp	st1,st0
	fstp	qword [ebp-52]
	push	_216
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-24]
	fstp	dword [ebp-28]
	push	_217
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-24]
	fld1
	fsub	qword [ebp-16]
	fmulp	st1,st0
	fstp	qword [ebp-36]
	push	_218
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-28]
	fld	qword [ebp-24]
	fsub	qword [ebp-36]
	fmul	qword [ebp-52]
	fld	qword [_279]
	fmulp	st1,st0
	fsubp	st1,st0
	fstp	qword [ebp-44]
	call	dword [_bbOnDebugLeaveScope]
_214:
	call	dword [_bbOnDebugLeaveScope]
_206:
	call	dword [_bbOnDebugLeaveScope]
_198:
	call	dword [_bbOnDebugLeaveScope]
_190:
	call	dword [_bbOnDebugLeaveScope]
_182:
	push	_224
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-44]
	fld	qword [_280]
	fmulp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	qword [ebp-36]
	fld	qword [_281]
	fmulp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp-28]
	fmul	dword [_282]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_bb_RGB
	add	esp,12
	mov	ebx,eax
	jmp	_33
_33:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_105:
	dd	0
_79:
	db	"mandelbrot",0
_80:
	db	"MaxI",0
_75:
	db	"i",0
	align	4
_81:
	dd	_bbStringClass
	dd	2147483646
	dd	3
	dw	49,50,56
_82:
	db	"SX",0
_72:
	db	"f",0
	align	4
_83:
	dd	_bbStringClass
	dd	2147483646
	dd	11
	dw	45,50,46,48,50,53,48,48,48,49,48
_84:
	db	"SY",0
	align	4
_85:
	dd	_bbStringClass
	dd	2147483646
	dd	11
	dw	45,49,46,49,50,53,48,48,48,48,48
_86:
	db	"EX",0
	align	4
_87:
	dd	_bbStringClass
	dd	2147483646
	dd	11
	dw	48,46,54,48,48,48,48,48,48,50,52
_88:
	db	"EY",0
	align	4
_89:
	dd	_bbStringClass
	dd	2147483646
	dd	10
	dw	49,46,49,50,53,48,48,48,48,48
_90:
	db	"x1",0
	align	4
_91:
	dd	_bbStringClass
	dd	2147483646
	dd	3
	dw	49,48,48
_92:
	db	"y1",0
	align	4
_93:
	dd	_bbStringClass
	dd	2147483646
	dd	2
	dw	55,53
_94:
	db	"xy",0
	align	4
_95:
	dd	_bbStringClass
	dd	2147483646
	dd	10
	dw	49,46,51,51,51,51,51,51,51,55
_96:
	db	"xstart",0
_97:
	db	"d",0
	align	8
_bb_xstart:
	dd	0x40000000,0xc0003333
_98:
	db	"ystart",0
	align	8
_bb_ystart:
	dd	0x0,0xbff20000
_99:
	db	"xende",0
	align	8
_bb_xende:
	dd	0x40000000,0x3fe33333
_100:
	db	"yende",0
	align	8
_bb_yende:
	dd	0x0,0x3ff20000
_101:
	db	"xzoom",0
	align	8
_bb_xzoom:
	dd	0x0,0x0
_102:
	db	"yzoom",0
	align	8
_bb_yzoom:
	dd	0x0,0x0
_103:
	db	"pm",0
_104:
	db	":brl.pixmap.TPixmap",0
	align	4
_bb_pm:
	dd	_bbNullObject
	align	4
_78:
	dd	1
	dd	_79
	dd	1
	dd	_80
	dd	_75
	dd	_81
	dd	1
	dd	_82
	dd	_72
	dd	_83
	dd	1
	dd	_84
	dd	_72
	dd	_85
	dd	1
	dd	_86
	dd	_72
	dd	_87
	dd	1
	dd	_88
	dd	_72
	dd	_89
	dd	1
	dd	_90
	dd	_75
	dd	_91
	dd	1
	dd	_92
	dd	_75
	dd	_93
	dd	1
	dd	_94
	dd	_72
	dd	_95
	dd	4
	dd	_96
	dd	_97
	dd	_bb_xstart
	dd	4
	dd	_98
	dd	_97
	dd	_bb_ystart
	dd	4
	dd	_99
	dd	_97
	dd	_bb_xende
	dd	4
	dd	_100
	dd	_97
	dd	_bb_yende
	dd	4
	dd	_101
	dd	_97
	dd	_bb_xzoom
	dd	4
	dd	_102
	dd	_97
	dd	_bb_yzoom
	dd	4
	dd	_103
	dd	_104
	dd	_bb_pm
	dd	0
_36:
	db	"Z:/Proggen/projecte2/mandelbrot/mandelbrot.bmx",0
	align	4
_35:
	dd	_36
	dd	18
	dd	1
	align	4
_37:
	dd	_36
	dd	19
	dd	1
	align	4
_38:
	dd	_36
	dd	20
	dd	1
	align	4
_39:
	dd	_36
	dd	21
	dd	1
	align	4
_40:
	dd	_36
	dd	23
	dd	1
	align	4
_41:
	dd	0
	align	8
_231:
	dd	0x0,0x40590000
	align	4
_43:
	dd	_36
	dd	24
	dd	1
	align	8
_232:
	dd	0x0,0x4052c000
	align	4
_45:
	dd	_36
	dd	26
	dd	1
	align	4
_2:
	dd	_bbStringClass
	dd	2147483647
	dd	24
	dw	66,108,105,116,122,77,97,120,32,77,97,110,100,108,101,98
	dw	114,111,116,32,116,101,115,116
	align	4
_50:
	dd	_36
	dd	27
	dd	1
	align	4
_51:
	dd	_36
	dd	28
	dd	1
	align	4
_54:
	dd	_36
	dd	30
	dd	1
_71:
	db	"fac",0
	align	4
_73:
	dd	_bbStringClass
	dd	2147483646
	dd	11
	dw	48,46,57,57,57,48,48,48,48,49,51
_74:
	db	"thistime",0
	align	4
_56:
	dd	0
_76:
	db	"lasttime",0
	align	4
_57:
	dd	0
	align	4
_70:
	dd	3
	dd	0
	dd	1
	dd	_71
	dd	_72
	dd	_73
	dd	4
	dd	_74
	dd	_75
	dd	_56
	dd	4
	dd	_76
	dd	_75
	dd	_57
	dd	0
	align	4
_55:
	dd	_36
	dd	32
	dd	2
	align	4
_58:
	dd	_36
	dd	33
	dd	2
	align	8
_233:
	dd	0xe0000000,0x3feff7ce
	align	4
_59:
	dd	_36
	dd	34
	dd	2
	align	8
_234:
	dd	0xe0000000,0x3feff7ce
	align	4
_60:
	dd	_36
	dd	35
	dd	2
	align	8
_235:
	dd	0xe0000000,0x3feff7ce
	align	4
_61:
	dd	_36
	dd	36
	dd	2
	align	8
_236:
	dd	0xe0000000,0x3feff7ce
	align	4
_62:
	dd	_36
	dd	37
	dd	2
	align	8
_237:
	dd	0x0,0x40590000
	align	4
_63:
	dd	_36
	dd	38
	dd	2
	align	8
_238:
	dd	0x0,0x4052c000
	align	4
_64:
	dd	_36
	dd	39
	dd	2
	align	4
_65:
	dd	_36
	dd	40
	dd	2
	align	4
_66:
	dd	_36
	dd	41
	dd	2
	align	4
_67:
	dd	_36
	dd	42
	dd	2
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
_68:
	dd	_36
	dd	43
	dd	2
	align	4
_69:
	dd	_36
	dd	44
	dd	2
	align	4
_77:
	dd	_36
	dd	47
	dd	1
_131:
	db	"MandelBrot",0
_132:
	db	"old",0
	align	4
_108:
	dd	0x0
_133:
	db	"col",0
	align	4
_130:
	dd	1
	dd	_131
	dd	4
	dd	_132
	dd	_72
	dd	_108
	dd	2
	dd	_133
	dd	_75
	dd	-4
	dd	0
	align	4
_107:
	dd	_36
	dd	53
	dd	2
	align	4
_109:
	dd	_36
	dd	54
	dd	2
	align	4
_111:
	dd	_36
	dd	55
	dd	2
_129:
	db	"x",0
	align	4
_128:
	dd	3
	dd	0
	dd	2
	dd	_129
	dd	_75
	dd	-8
	dd	0
	align	4
_114:
	dd	_36
	dd	56
	dd	3
_126:
	db	"y",0
_127:
	db	"h",0
	align	4
_125:
	dd	3
	dd	0
	dd	2
	dd	_126
	dd	_75
	dd	-12
	dd	2
	dd	_127
	dd	_72
	dd	-16
	dd	0
	align	4
_117:
	dd	_36
	dd	57
	dd	4
	align	4
_119:
	dd	_36
	dd	58
	dd	4
	align	4
_123:
	dd	3
	dd	0
	dd	0
	align	4
_121:
	dd	_36
	dd	60
	dd	5
	align	4
_245:
	dd	0x3f800000
	align	8
_246:
	dd	0xa0000000,0x3fe99999
	align	4
_122:
	dd	_36
	dd	61
	dd	5
	align	4
_124:
	dd	_36
	dd	63
	dd	4
_150:
	db	"DotsColor",0
_151:
	db	"xval",0
_152:
	db	"yval",0
_153:
	db	"r",0
_154:
	db	"m",0
_155:
	db	"j",0
	align	4
_149:
	dd	1
	dd	_150
	dd	2
	dd	_151
	dd	_97
	dd	-8
	dd	2
	dd	_152
	dd	_97
	dd	-16
	dd	2
	dd	_153
	dd	_97
	dd	-24
	dd	2
	dd	_75
	dd	_97
	dd	-32
	dd	2
	dd	_154
	dd	_97
	dd	-40
	dd	2
	dd	_155
	dd	_75
	dd	-44
	dd	0
	align	4
_134:
	dd	_36
	dd	72
	dd	2
	align	4
_138:
	dd	_36
	dd	73
	dd	2
	align	4
_140:
	dd	_36
	dd	74
	dd	2
	align	4
_147:
	dd	3
	dd	0
	dd	0
	align	4
_143:
	dd	_36
	dd	75
	dd	3
	align	4
_144:
	dd	_36
	dd	76
	dd	3
	align	4
_145:
	dd	_36
	dd	77
	dd	3
	align	8
_250:
	dd	0x0,0x40000000
	align	4
_146:
	dd	_36
	dd	78
	dd	3
	align	8
_251:
	dd	0x0,0x40100000
	align	4
_148:
	dd	_36
	dd	80
	dd	2
	align	4
_252:
	dd	0x43000000
_158:
	db	"RGB",0
_159:
	db	"red",0
_160:
	db	"green",0
_161:
	db	"blue",0
	align	4
_157:
	dd	1
	dd	_158
	dd	2
	dd	_159
	dd	_75
	dd	-4
	dd	2
	dd	_160
	dd	_75
	dd	-8
	dd	2
	dd	_161
	dd	_75
	dd	-12
	dd	0
	align	4
_156:
	dd	_36
	dd	87
	dd	4
_226:
	db	"HSB2RGB",0
_227:
	db	"hue",0
_228:
	db	"saturation",0
_229:
	db	"brightness",0
_230:
	db	"domainOffset",0
	align	4
_225:
	dd	1
	dd	_226
	dd	2
	dd	_227
	dd	_97
	dd	-8
	dd	2
	dd	_228
	dd	_97
	dd	-16
	dd	2
	dd	_229
	dd	_97
	dd	-24
	dd	2
	dd	_159
	dd	_72
	dd	-28
	dd	2
	dd	_160
	dd	_97
	dd	-36
	dd	2
	dd	_161
	dd	_97
	dd	-44
	dd	2
	dd	_230
	dd	_97
	dd	-52
	dd	0
	align	4
_162:
	dd	_36
	dd	94
	dd	2
	align	4
_167:
	dd	_36
	dd	95
	dd	2
	align	4
_170:
	dd	3
	dd	0
	dd	0
	align	4
_169:
	dd	_36
	dd	95
	dd	20
	align	4
_171:
	dd	_36
	dd	96
	dd	2
	align	4
_174:
	dd	3
	dd	0
	dd	0
	align	4
_173:
	dd	_36
	dd	96
	dd	20
	align	8
_261:
	dd	0x0,0x406fe000
	align	8
_262:
	dd	0x0,0x406fe000
	align	8
_263:
	dd	0x0,0x406fe000
	align	4
_175:
	dd	_36
	dd	98
	dd	2
	align	8
_264:
	dd	0x60000000,0x3fc55555
	align	4
_181:
	dd	3
	dd	0
	dd	0
	align	4
_177:
	dd	_36
	dd	100
	dd	3
	align	4
_178:
	dd	_36
	dd	101
	dd	3
	align	4
_179:
	dd	_36
	dd	102
	dd	3
	align	4
_180:
	dd	_36
	dd	103
	dd	3
	align	8
_265:
	dd	0x0,0x40180000
	align	4
_223:
	dd	3
	dd	0
	dd	0
	align	4
_183:
	dd	_36
	dd	104
	dd	2
	align	8
_266:
	dd	0x60000000,0x3fd55555
	align	4
_189:
	dd	3
	dd	0
	dd	0
	align	4
_185:
	dd	_36
	dd	106
	dd	3
	align	8
_267:
	dd	0x60000000,0x3fc55555
	align	4
_186:
	dd	_36
	dd	107
	dd	3
	align	4
_187:
	dd	_36
	dd	108
	dd	3
	align	4
_188:
	dd	_36
	dd	109
	dd	3
	align	8
_268:
	dd	0x0,0x40180000
	align	4
_222:
	dd	3
	dd	0
	dd	0
	align	4
_191:
	dd	_36
	dd	110
	dd	2
	align	8
_269:
	dd	0x0,0x3fe00000
	align	4
_197:
	dd	3
	dd	0
	dd	0
	align	4
_193:
	dd	_36
	dd	112
	dd	3
	align	8
_270:
	dd	0x60000000,0x3fd55555
	align	4
_194:
	dd	_36
	dd	113
	dd	3
	align	4
_195:
	dd	_36
	dd	114
	dd	3
	align	4
_196:
	dd	_36
	dd	115
	dd	3
	align	8
_271:
	dd	0x0,0x40180000
	align	4
_221:
	dd	3
	dd	0
	dd	0
	align	4
_199:
	dd	_36
	dd	116
	dd	2
	align	8
_272:
	dd	0x60000000,0x3fe55555
	align	4
_205:
	dd	3
	dd	0
	dd	0
	align	4
_201:
	dd	_36
	dd	118
	dd	3
	align	8
_273:
	dd	0x0,0x3fe00000
	align	4
_202:
	dd	_36
	dd	119
	dd	3
	align	4
_203:
	dd	_36
	dd	120
	dd	3
	align	4
_204:
	dd	_36
	dd	121
	dd	3
	align	8
_274:
	dd	0x0,0x40180000
	align	4
_220:
	dd	3
	dd	0
	dd	0
	align	4
_207:
	dd	_36
	dd	122
	dd	2
	align	8
_275:
	dd	0xa0000000,0x3feaaaaa
	align	4
_213:
	dd	3
	dd	0
	dd	0
	align	4
_209:
	dd	_36
	dd	124
	dd	3
	align	8
_276:
	dd	0x60000000,0x3fe55555
	align	4
_210:
	dd	_36
	dd	125
	dd	3
	align	4
_211:
	dd	_36
	dd	126
	dd	3
	align	4
_212:
	dd	_36
	dd	127
	dd	3
	align	8
_277:
	dd	0x0,0x40180000
	align	4
_219:
	dd	3
	dd	0
	dd	0
	align	4
_215:
	dd	_36
	dd	130
	dd	3
	align	8
_278:
	dd	0xa0000000,0x3feaaaaa
	align	4
_216:
	dd	_36
	dd	131
	dd	3
	align	4
_217:
	dd	_36
	dd	132
	dd	3
	align	4
_218:
	dd	_36
	dd	133
	dd	3
	align	8
_279:
	dd	0x0,0x40180000
	align	4
_224:
	dd	_36
	dd	135
	dd	2
	align	8
_280:
	dd	0x0,0x406fe000
	align	8
_281:
	dd	0x0,0x406fe000
	align	4
_282:
	dd	0x437f0000
