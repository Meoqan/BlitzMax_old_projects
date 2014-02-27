	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_filesystem_filesystem
	extrn	___bb_pngloader_pngloader
	extrn	___bb_standardio_standardio
	extrn	_bbEmptyString
	extrn	_bbNullObject
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringClass
	extrn	_bbStringCompare
	extrn	_bbStringEndsWith
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_blitz_RuntimeError
	extrn	_brl_filesystem_CloseDir
	extrn	_brl_filesystem_CurrentDir
	extrn	_brl_filesystem_NextFile
	extrn	_brl_filesystem_ReadDir
	extrn	_brl_pixmap_LoadPixmap
	extrn	_brl_pixmap_ResizePixmap
	extrn	_brl_pngloader_SavePixmapPNG
	extrn	_brl_standardio_Print
	public	__bb_main
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	cmp	dword [_59],0
	je	_60
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_60:
	mov	dword [_59],1
	mov	dword [ebp-4],0
	mov	dword [ebp-8],_bbEmptyString
	mov	dword [ebp-12],_bbNullObject
	push	ebp
	push	_55
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_pngloader_pngloader
	call	___bb_standardio_standardio
	call	___bb_filesystem_filesystem
	push	_12
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_filesystem_CurrentDir
	push	eax
	call	_brl_filesystem_ReadDir
	add	esp,4
	mov	dword [ebp-4],eax
	push	_15
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-4],0
	jne	_16
	push	ebp
	push	_18
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_17
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_3
	call	_brl_blitz_RuntimeError
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_16:
	push	_19
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_6:
_4:
	push	ebp
	push	_51
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_20
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	call	_brl_filesystem_NextFile
	add	esp,4
	mov	dword [ebp-8],eax
	push	_22
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_23
	push	ebp
	push	_25
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_24
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_5
_23:
	push	_26
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_7
	push	dword [ebp-8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_27
	push	_8
	push	dword [ebp-8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_27:
	cmp	eax,0
	je	_29
	push	ebp
	push	_31
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_30
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_4
_29:
	push	_32
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	call	_brl_standardio_Print
	add	esp,4
	push	_33
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_9
	push	dword [ebp-8]
	call	_bbStringEndsWith
	add	esp,8
	cmp	eax,0
	je	_34
	push	ebp
	push	_48
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_35
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	call	_brl_pixmap_LoadPixmap
	add	esp,4
	mov	dword [ebp-12],eax
	push	_37
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_39
	call	_brl_blitz_NullObjectError
_39:
	mov	eax,dword [ebx+12]
	cmp	eax,256
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_42
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_41
	call	_brl_blitz_NullObjectError
_41:
	mov	eax,dword [ebx+16]
	cmp	eax,256
	sete	al
	movzx	eax,al
_42:
	cmp	eax,0
	je	_44
	push	ebp
	push	_47
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_45
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	32
	push	32
	push	dword [ebp-12]
	call	_brl_pixmap_ResizePixmap
	add	esp,12
	mov	dword [ebp-12],eax
	push	_46
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	9
	push	dword [ebp-8]
	push	dword [ebp-12]
	call	_brl_pngloader_SavePixmapPNG
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_44:
	call	dword [_bbOnDebugLeaveScope]
_34:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_6
_5:
	push	_54
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	call	_brl_filesystem_CloseDir
	add	esp,4
	mov	ebx,0
	jmp	_10
_10:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_59:
	dd	0
_56:
	db	"convert",0
_57:
	db	"dir",0
_58:
	db	"i",0
	align	4
_55:
	dd	1
	dd	_56
	dd	2
	dd	_57
	dd	_58
	dd	-4
	dd	0
_13:
	db	"D:/Proggen/projecte3/topdown/maps/convert.bmx",0
	align	4
_12:
	dd	_13
	dd	7
	dd	1
	align	4
_15:
	dd	_13
	dd	9
	dd	1
	align	4
_18:
	dd	3
	dd	0
	dd	0
	align	4
_17:
	dd	_13
	dd	9
	dd	12
	align	4
_3:
	dd	_bbStringClass
	dd	2147483647
	dd	32
	dw	102,97,105,108,101,100,32,116,111,32,114,101,97,100,32,99
	dw	117,114,114,101,110,116,32,100,105,114,101,99,116,111,114,121
	align	4
_19:
	dd	_13
	dd	23
	dd	1
_52:
	db	"t",0
_53:
	db	"$",0
	align	4
_51:
	dd	3
	dd	0
	dd	2
	dd	_52
	dd	_53
	dd	-8
	dd	0
	align	4
_20:
	dd	_13
	dd	12
	dd	2
	align	4
_22:
	dd	_13
	dd	13
	dd	2
	align	4
_1:
	dd	_bbStringClass
	dd	2147483647
	dd	0
	align	4
_25:
	dd	3
	dd	0
	dd	0
	align	4
_24:
	dd	_13
	dd	13
	dd	10
	align	4
_26:
	dd	_13
	dd	14
	dd	2
	align	4
_7:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	46
	align	4
_8:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	46,46
	align	4
_31:
	dd	3
	dd	0
	dd	0
	align	4
_30:
	dd	_13
	dd	14
	dd	21
	align	4
_32:
	dd	_13
	dd	15
	dd	2
	align	4
_33:
	dd	_13
	dd	16
	dd	2
	align	4
_9:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	46,112,110,103
_49:
	db	"pix",0
_50:
	db	":brl.pixmap.TPixmap",0
	align	4
_48:
	dd	3
	dd	0
	dd	2
	dd	_49
	dd	_50
	dd	-12
	dd	0
	align	4
_35:
	dd	_13
	dd	17
	dd	3
	align	4
_37:
	dd	_13
	dd	18
	dd	3
	align	4
_47:
	dd	3
	dd	0
	dd	0
	align	4
_45:
	dd	_13
	dd	19
	dd	4
	align	4
_46:
	dd	_13
	dd	20
	dd	4
	align	4
_54:
	dd	_13
	dd	25
	dd	1
