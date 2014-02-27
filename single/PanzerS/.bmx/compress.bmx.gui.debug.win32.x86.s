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
	extrn	_bbArrayNew1D
	extrn	_bbArraySlice
	extrn	_bbEmptyArray
	extrn	_bbNullObject
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringClass
	extrn	_bbStringFromInt
	extrn	_brl_blitz_ArrayBoundsError
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_filesystem_ReadFile
	extrn	_brl_filesystem_WriteFile
	extrn	_brl_system_Notify
	extrn	_compress2
	extrn	_uncompress
	public	__bb_main
	public	_bb_CompressBytes
	public	_bb_DecompressBytes
	public	_bb_barray
	public	_bb_cbyt
	public	_bb_file
	public	_bb_write
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	cmp	dword [_91],0
	je	_92
	mov	eax,0
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_92:
	mov	dword [_91],1
	mov	dword [ebp-4],0
	mov	dword [ebp-8],0
	mov	eax,ebp
	push	eax
	push	_80
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
	push	_35
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_38]
	and	eax,1
	cmp	eax,0
	jne	_39
	push	_18
	call	_brl_filesystem_ReadFile
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_file],eax
	or	dword [_38],1
_39:
	push	_40
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_38]
	and	eax,2
	cmp	eax,0
	jne	_45
	mov	ebx,dword [_bb_file]
	cmp	ebx,_bbNullObject
	jne	_43
	call	_brl_blitz_NullObjectError
_43:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	push	eax
	push	_41
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_barray],eax
	or	dword [_38],2
_45:
	push	_46
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	mov	dword [ebp-4],0
	mov	ebx,dword [_bb_file]
	cmp	ebx,_bbNullObject
	jne	_49
	call	_brl_blitz_NullObjectError
_49:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	sub	eax,1
	mov	edi,eax
	jmp	_50
_21:
	push	_52
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	mov	eax,dword [_bb_barray]
	cmp	ebx,dword [eax+20]
	jb	_54
	call	_brl_blitz_ArrayBoundsError
_54:
	mov	eax,dword [_bb_barray]
	add	eax,ebx
	mov	esi,eax
	mov	ebx,dword [_bb_file]
	cmp	ebx,_bbNullObject
	jne	_57
	call	_brl_blitz_NullObjectError
_57:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+92]
	add	esp,4
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [esi+24],al
_19:
	add	dword [ebp-4],1
_50:
	cmp	dword [ebp-4],edi
	jle	_21
_20:
	push	_58
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_file]
	cmp	ebx,_bbNullObject
	jne	_60
	call	_brl_blitz_NullObjectError
_60:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	call	_brl_system_Notify
	add	esp,8
	push	_61
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_file]
	cmp	ebx,_bbNullObject
	jne	_63
	call	_brl_blitz_NullObjectError
_63:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,4
	push	_64
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_38]
	and	eax,4
	cmp	eax,0
	jne	_66
	push	9
	push	dword [_bb_barray]
	call	_bb_CompressBytes
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_cbyt],eax
	or	dword [_38],4
_66:
	push	_67
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	mov	eax,dword [_bb_cbyt]
	push	dword [eax+20]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	call	_brl_system_Notify
	add	esp,8
	push	_68
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_38]
	and	eax,8
	cmp	eax,0
	jne	_70
	push	_22
	call	_brl_filesystem_WriteFile
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_write],eax
	or	dword [_38],8
_70:
	push	_71
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	mov	dword [ebp-8],0
	mov	eax,dword [_bb_cbyt]
	mov	eax,dword [eax+20]
	sub	eax,1
	mov	edi,eax
	jmp	_73
_25:
	push	_75
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_bb_write]
	cmp	esi,_bbNullObject
	jne	_77
	call	_brl_blitz_NullObjectError
_77:
	mov	ebx,dword [ebp-8]
	mov	eax,dword [_bb_cbyt]
	cmp	ebx,dword [eax+20]
	jb	_79
	call	_brl_blitz_ArrayBoundsError
_79:
	mov	eax,dword [_bb_cbyt]
	movzx	eax,byte [eax+ebx+24]
	mov	eax,eax
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+96]
	add	esp,8
_23:
	add	dword [ebp-8],1
_73:
	cmp	dword [ebp-8],edi
	jle	_25
_24:
	mov	ebx,0
	jmp	_26
_26:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_CompressBytes:
	push	ebp
	mov	ebp,esp
	sub	esp,24
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],0
	mov	dword [ebp-16],_bbEmptyArray
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	push	ebp
	push	_120
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_93
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	eax,dword [eax+20]
	shl	eax,1
	mov	dword [ebp-12],eax
	push	_95
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	push	_96
	call	_bbArrayNew1D
	add	esp,8
	mov	dword [ebp-16],eax
	push	_98
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_100
	call	_brl_blitz_ArrayBoundsError
_100:
	mov	edx,dword [ebp-16]
	add	edx,ebx
	mov	eax,dword [ebp-4]
	mov	eax,dword [eax+20]
	and	eax,255
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [edx+24],al
	push	_102
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_104
	call	_brl_blitz_ArrayBoundsError
_104:
	mov	edx,dword [ebp-16]
	add	edx,ebx
	mov	eax,dword [ebp-4]
	mov	eax,dword [eax+20]
	shr	eax,8
	and	eax,255
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [edx+24],al
	push	_106
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_108
	call	_brl_blitz_ArrayBoundsError
_108:
	mov	edx,dword [ebp-16]
	add	edx,ebx
	mov	eax,dword [ebp-4]
	mov	eax,dword [eax+20]
	shr	eax,16
	and	eax,255
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [edx+24],al
	push	_110
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	push	_112
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],0
	push	_114
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	lea	eax,byte [eax+24]
	mov	dword [ebp-20],eax
	push	_115
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	lea	eax,byte [eax+24]
	mov	dword [ebp-24],eax
	push	_116
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-24],3
	push	_117
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	mov	eax,dword [ebp-4]
	push	dword [eax+20]
	push	dword [ebp-20]
	lea	eax,dword [ebp-12]
	push	eax
	push	dword [ebp-24]
	call	_compress2
	add	esp,20
	push	_118
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	sub	eax,1
	add	eax,3
	push	eax
	push	0
	push	dword [ebp-16]
	push	_119
	call	_bbArraySlice
	add	esp,16
	mov	ebx,eax
	jmp	_30
_30:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_DecompressBytes:
	push	ebp
	mov	ebp,esp
	sub	esp,24
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],0
	mov	dword [ebp-12],0
	mov	dword [ebp-16],_bbEmptyArray
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	mov	eax,ebp
	push	eax
	push	_151
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_129
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,0
	mov	eax,dword [ebp-4]
	cmp	edi,dword [eax+20]
	jb	_131
	call	_brl_blitz_ArrayBoundsError
_131:
	mov	esi,1
	mov	eax,dword [ebp-4]
	cmp	esi,dword [eax+20]
	jb	_133
	call	_brl_blitz_ArrayBoundsError
_133:
	mov	ebx,2
	mov	eax,dword [ebp-4]
	cmp	ebx,dword [eax+20]
	jb	_135
	call	_brl_blitz_ArrayBoundsError
_135:
	mov	eax,dword [ebp-4]
	movzx	eax,byte [eax+edi+24]
	mov	edx,eax
	mov	eax,dword [ebp-4]
	movzx	eax,byte [eax+esi+24]
	mov	eax,eax
	shl	eax,8
	add	edx,eax
	mov	eax,dword [ebp-4]
	movzx	eax,byte [eax+ebx+24]
	mov	eax,eax
	shl	eax,16
	add	edx,eax
	mov	dword [ebp-8],edx
	push	_137
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	add	eax,1
	mov	dword [ebp-12],eax
	push	_139
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	push	_140
	call	_bbArrayNew1D
	add	esp,8
	mov	dword [ebp-16],eax
	push	_142
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	push	_144
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],0
	push	_146
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	lea	eax,byte [eax+24]
	mov	dword [ebp-20],eax
	push	_147
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-20],3
	push	_148
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	lea	eax,byte [eax+24]
	mov	dword [ebp-24],eax
	push	_149
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	push	dword [eax+20]
	push	dword [ebp-20]
	lea	eax,dword [ebp-12]
	push	eax
	push	dword [ebp-24]
	call	_uncompress
	add	esp,16
	push	_150
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	sub	eax,1
	push	eax
	push	0
	push	dword [ebp-16]
	push	_119
	call	_bbArraySlice
	add	esp,16
	mov	ebx,eax
	jmp	_33
_33:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_91:
	dd	0
_81:
	db	"compress",0
_82:
	db	"file",0
_83:
	db	":brl.stream.TStream",0
	align	4
_bb_file:
	dd	_bbNullObject
_84:
	db	"barray",0
_85:
	db	"[]b",0
	align	4
_bb_barray:
	dd	_bbEmptyArray
_86:
	db	"x",0
_87:
	db	"i",0
_88:
	db	"cbyt",0
	align	4
_bb_cbyt:
	dd	_bbEmptyArray
_89:
	db	"write",0
	align	4
_bb_write:
	dd	_bbNullObject
_90:
	db	"x2",0
	align	4
_80:
	dd	1
	dd	_81
	dd	4
	dd	_82
	dd	_83
	dd	_bb_file
	dd	4
	dd	_84
	dd	_85
	dd	_bb_barray
	dd	2
	dd	_86
	dd	_87
	dd	-4
	dd	4
	dd	_88
	dd	_85
	dd	_bb_cbyt
	dd	4
	dd	_89
	dd	_83
	dd	_bb_write
	dd	2
	dd	_90
	dd	_87
	dd	-8
	dd	0
_36:
	db	"D:/Proggen/projecte/team/PanzerS/compress.bmx",0
	align	4
_35:
	dd	_36
	dd	3
	dd	1
	align	4
_38:
	dd	0
	align	4
_18:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	109,97,112,115,92,100,101,109,111,49,46,109,97,112
	align	4
_40:
	dd	_36
	dd	5
	dd	1
_41:
	db	"b",0
	align	4
_46:
	dd	_36
	dd	7
	dd	1
	align	4
_52:
	dd	_36
	dd	8
	dd	2
	align	4
_58:
	dd	_36
	dd	11
	dd	1
	align	4
_61:
	dd	_36
	dd	12
	dd	1
	align	4
_64:
	dd	_36
	dd	14
	dd	1
	align	4
_67:
	dd	_36
	dd	16
	dd	1
	align	4
_68:
	dd	_36
	dd	19
	dd	1
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	109,97,112,115,92,100,101,109,111,49,46,99,109,97,112
	align	4
_71:
	dd	_36
	dd	21
	dd	1
	align	4
_75:
	dd	_36
	dd	22
	dd	2
_121:
	db	"CompressBytes",0
_122:
	db	"Bytes",0
_123:
	db	"CompressLevel",0
_124:
	db	"length",0
_125:
	db	"Compressed",0
_126:
	db	"DataPointer",0
_127:
	db	"*b",0
_128:
	db	"CompPointer",0
	align	4
_120:
	dd	1
	dd	_121
	dd	2
	dd	_122
	dd	_85
	dd	-4
	dd	2
	dd	_123
	dd	_87
	dd	-8
	dd	2
	dd	_124
	dd	_87
	dd	-12
	dd	2
	dd	_125
	dd	_85
	dd	-16
	dd	2
	dd	_126
	dd	_127
	dd	-20
	dd	2
	dd	_128
	dd	_127
	dd	-24
	dd	0
	align	4
_93:
	dd	_36
	dd	35
	dd	2
	align	4
_95:
	dd	_36
	dd	37
	dd	2
_96:
	db	"b",0
	align	4
_98:
	dd	_36
	dd	39
	dd	2
	align	4
_102:
	dd	_36
	dd	40
	dd	2
	align	4
_106:
	dd	_36
	dd	41
	dd	2
	align	4
_110:
	dd	_36
	dd	43
	dd	2
	align	4
_112:
	dd	_36
	dd	44
	dd	2
	align	4
_114:
	dd	_36
	dd	46
	dd	2
	align	4
_115:
	dd	_36
	dd	47
	dd	2
	align	4
_116:
	dd	_36
	dd	48
	dd	2
	align	4
_117:
	dd	_36
	dd	50
	dd	2
	align	4
_118:
	dd	_36
	dd	52
	dd	2
_119:
	db	"b",0
_152:
	db	"DecompressBytes",0
_153:
	db	"Size",0
_154:
	db	"Uncompressed",0
	align	4
_151:
	dd	1
	dd	_152
	dd	2
	dd	_125
	dd	_85
	dd	-4
	dd	2
	dd	_153
	dd	_87
	dd	-8
	dd	2
	dd	_124
	dd	_87
	dd	-12
	dd	2
	dd	_154
	dd	_85
	dd	-16
	dd	2
	dd	_128
	dd	_127
	dd	-20
	dd	2
	dd	_126
	dd	_127
	dd	-24
	dd	0
	align	4
_129:
	dd	_36
	dd	58
	dd	2
	align	4
_137:
	dd	_36
	dd	60
	dd	2
	align	4
_139:
	dd	_36
	dd	62
	dd	2
_140:
	db	"b",0
	align	4
_142:
	dd	_36
	dd	64
	dd	2
	align	4
_144:
	dd	_36
	dd	65
	dd	2
	align	4
_146:
	dd	_36
	dd	67
	dd	2
	align	4
_147:
	dd	_36
	dd	68
	dd	2
	align	4
_148:
	dd	_36
	dd	69
	dd	2
	align	4
_149:
	dd	_36
	dd	71
	dd	2
	align	4
_150:
	dd	_36
	dd	73
	dd	2
