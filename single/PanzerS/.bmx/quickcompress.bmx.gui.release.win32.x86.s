	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_retro_retro
	extrn	___bb_zlib_zlib
	extrn	_bbAppArgs
	extrn	_bbArrayNew1D
	extrn	_bbArraySlice
	extrn	_bbNullObject
	extrn	_bbStringClass
	extrn	_bbStringCompare
	extrn	_bbStringConcat
	extrn	_bbStringToLower
	extrn	_brl_filesystem_ReadFile
	extrn	_brl_filesystem_WriteFile
	extrn	_brl_retro_Right
	extrn	_compress2
	extrn	_uncompress
	public	__bb_main
	public	_bb_CompressBytes
	public	_bb_Compressfile
	public	_bb_DecompressBytes
	public	_bb_UnCompressfile
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	cmp	dword [_43],0
	je	_44
	mov	eax,0
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_44:
	mov	dword [_43],1
	call	___bb_blitz_blitz
	call	___bb_retro_retro
	call	___bb_zlib_zlib
	mov	edi,dword [_bbAppArgs]
	mov	eax,edi
	add	eax,24
	mov	ebx,eax
	mov	eax,ebx
	add	eax,dword [edi+16]
	mov	dword [ebp-4],eax
	jmp	_15
_17:
	mov	esi,dword [ebx]
	add	ebx,4
	cmp	esi,_bbNullObject
	je	_15
	push	_18
	push	4
	push	esi
	call	_brl_retro_Right
	add	esp,8
	push	eax
	call	_bbStringToLower
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_42
	push	_19
	push	esi
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	esi
	call	_bb_Compressfile
	add	esp,8
_42:
_15:
	cmp	ebx,dword [ebp-4]
	jne	_17
_16:
	mov	eax,0
	jmp	_20
_20:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_Compressfile:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	push	eax
	call	_brl_filesystem_ReadFile
	add	esp,4
	mov	esi,eax
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,4
	push	eax
	push	_46
	call	_bbArrayNew1D
	add	esp,8
	mov	edi,eax
	mov	ebx,0
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,4
	sub	eax,1
	mov	dword [ebp-4],eax
	jmp	_51
_5:
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+92]
	add	esp,4
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [edi+ebx+24],al
_3:
	add	ebx,1
_51:
	cmp	ebx,dword [ebp-4]
	jle	_5
_4:
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,4
	push	9
	push	edi
	call	_bb_CompressBytes
	add	esp,8
	mov	edi,eax
	push	dword [ebp+12]
	call	_brl_filesystem_WriteFile
	add	esp,4
	mov	esi,eax
	mov	ebx,0
	mov	eax,dword [edi+20]
	sub	eax,1
	mov	dword [ebp-8],eax
	jmp	_58
_8:
	mov	eax,esi
	movzx	edx,byte [edi+ebx+24]
	mov	edx,edx
	push	edx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+96]
	add	esp,8
_6:
	add	ebx,1
_58:
	cmp	ebx,dword [ebp-8]
	jle	_8
_7:
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,4
	mov	eax,0
	jmp	_24
_24:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_UnCompressfile:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	push	eax
	call	_brl_filesystem_ReadFile
	add	esp,4
	mov	esi,eax
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,4
	push	eax
	push	_63
	call	_bbArrayNew1D
	add	esp,8
	mov	edi,eax
	mov	ebx,0
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,4
	sub	eax,1
	mov	dword [ebp-4],eax
	jmp	_68
_11:
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+92]
	add	esp,4
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [edi+ebx+24],al
_9:
	add	ebx,1
_68:
	cmp	ebx,dword [ebp-4]
	jle	_11
_10:
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,4
	push	edi
	call	_bb_DecompressBytes
	add	esp,4
	mov	edi,eax
	push	dword [ebp+12]
	call	_brl_filesystem_WriteFile
	add	esp,4
	mov	esi,eax
	mov	ebx,0
	mov	eax,dword [edi+20]
	sub	eax,1
	mov	dword [ebp-8],eax
	jmp	_75
_14:
	mov	eax,esi
	movzx	edx,byte [edi+ebx+24]
	mov	edx,edx
	push	edx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+96]
	add	esp,8
_12:
	add	ebx,1
_75:
	cmp	ebx,dword [ebp-8]
	jle	_14
_13:
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,4
	mov	eax,0
	jmp	_28
_28:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_CompressBytes:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	ebx,dword [ebp+12]
	mov	eax,dword [ebp-4]
	mov	eax,dword [eax+20]
	shl	eax,1
	mov	dword [ebp-12],eax
	push	dword [ebp-12]
	push	_80
	call	_bbArrayNew1D
	add	esp,8
	mov	dword [ebp-8],eax
	mov	edx,dword [ebp-8]
	mov	eax,dword [ebp-4]
	mov	eax,dword [eax+20]
	and	eax,255
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [edx+24],al
	mov	edx,dword [ebp-8]
	mov	eax,dword [ebp-4]
	mov	eax,dword [eax+20]
	shr	eax,8
	and	eax,255
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [edx+1+24],al
	mov	edx,dword [ebp-8]
	mov	eax,dword [ebp-4]
	mov	eax,dword [eax+20]
	shr	eax,16
	and	eax,255
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [edx+2+24],al
	mov	eax,dword [ebp-4]
	lea	edx,byte [eax+24]
	mov	eax,dword [ebp-8]
	lea	eax,byte [eax+24]
	add	eax,3
	push	ebx
	mov	ecx,dword [ebp-4]
	push	dword [ecx+20]
	push	edx
	lea	edx,dword [ebp-12]
	push	edx
	push	eax
	call	_compress2
	add	esp,20
	mov	eax,dword [ebp-12]
	sub	eax,1
	add	eax,3
	push	eax
	push	0
	push	dword [ebp-8]
	push	_84
	call	_bbArraySlice
	add	esp,16
	jmp	_32
_32:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_DecompressBytes:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp-4]
	movzx	eax,byte [eax+24]
	mov	edx,eax
	mov	eax,dword [ebp-4]
	movzx	eax,byte [eax+1+24]
	mov	eax,eax
	shl	eax,8
	add	edx,eax
	mov	eax,dword [ebp-4]
	movzx	eax,byte [eax+2+24]
	mov	eax,eax
	shl	eax,16
	add	edx,eax
	add	edx,1
	mov	dword [ebp-12],edx
	push	dword [ebp-12]
	push	_87
	call	_bbArrayNew1D
	add	esp,8
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp-4]
	lea	edx,byte [eax+24]
	add	edx,3
	mov	eax,dword [ebp-8]
	lea	eax,byte [eax+24]
	mov	ecx,dword [ebp-4]
	push	dword [ecx+20]
	push	edx
	lea	edx,dword [ebp-12]
	push	edx
	push	eax
	call	_uncompress
	add	esp,16
	mov	eax,dword [ebp-12]
	sub	eax,1
	push	eax
	push	0
	push	dword [ebp-8]
	push	_84
	call	_bbArraySlice
	add	esp,16
	jmp	_35
_35:
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_43:
	dd	0
	align	4
_18:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	46,115,99,112
	align	4
_19:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	99
_46:
	db	"b",0
_63:
	db	"b",0
_80:
	db	"b",0
_84:
	db	"b",0
_87:
	db	"b",0
