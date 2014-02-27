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
	extrn	_bbFloatToInt
	extrn	_bbNullObject
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringClass
	extrn	_brl_max2d_DrawImage
	extrn	_brl_max2d_LoadImage
	extrn	_brl_max2d_SetAlpha
	extrn	_brl_max2d_SetColor
	extrn	_brl_max2d_SetHandle
	extrn	_brl_max2d_SetRotation
	public	__bb_main
	public	_bb_EnerBalken
	public	_bb_hud_life
	public	_bb_hud_main
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_41],0
	je	_42
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_42:
	mov	dword [_41],1
	push	ebp
	push	_36
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
	push	_28
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_31]
	and	eax,1
	cmp	eax,0
	jne	_32
	push	-1
	push	_18
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_hud_main],eax
	or	dword [_31],1
_32:
	push	_33
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_31]
	and	eax,2
	cmp	eax,0
	jne	_35
	push	-1
	push	_19
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_hud_life],eax
	or	dword [_31],2
_35:
	mov	ebx,0
	jmp	_20
_20:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_EnerBalken:
	push	ebp
	mov	ebp,esp
	sub	esp,32
	push	ebx
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	mov	dword [ebp-28],0
	push	ebp
	push	_61
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_43
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_44
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_45
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_46
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	_47
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-16]
	push	dword [ebp-12]
	push	dword [ebp-8]
	call	_brl_max2d_SetColor
	add	esp,12
	push	_48
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	push	dword [_bb_hud_main]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_49
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	mov	dword [ebp-24],100
	push	_52
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-28],50
	jle	_54
	push	_55
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,100
	mov	eax,100
	sub	eax,dword [ebp-28]
	shl	eax,1
	sub	edx,eax
	mov	dword [ebp-20],edx
	jmp	_56
_54:
	push	_57
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],100
	push	_58
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	shl	eax,1
	mov	dword [ebp-24],eax
_56:
	push	_59
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	fld	dword [_77]
	mov	eax,dword [ebp-24]
	mov	dword [ebp+-32],eax
	fild	dword [ebp+-32]
	fmul	dword [_78]
	fsubp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	mov	eax,dword [ebp-20]
	mov	dword [ebp+-32],eax
	fild	dword [ebp+-32]
	fmul	dword [_79]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_brl_max2d_SetColor
	add	esp,12
	push	_60
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	push	dword [_bb_hud_life]
	call	_brl_max2d_DrawImage
	add	esp,16
	mov	ebx,0
	jmp	_26
_26:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_41:
	dd	0
_37:
	db	"draw_hud",0
_38:
	db	"hud_main",0
_39:
	db	":brl.max2d.Timage",0
	align	4
_bb_hud_main:
	dd	_bbNullObject
_40:
	db	"hud_life",0
	align	4
_bb_hud_life:
	dd	_bbNullObject
	align	4
_36:
	dd	1
	dd	_37
	dd	4
	dd	_38
	dd	_39
	dd	_bb_hud_main
	dd	4
	dd	_40
	dd	_39
	dd	_bb_hud_life
	dd	0
_29:
	db	"D:/Proggen/projecte/team/PanzerS/inc/draw_hud.bmx",0
	align	4
_28:
	dd	_29
	dd	3
	dd	1
	align	4
_31:
	dd	0
	align	4
_18:
	dd	_bbStringClass
	dd	2147483647
	dd	25
	dw	103,102,120,92,101,108,101,109,101,110,116,101,92,104,117,100
	dw	95,109,97,105,110,46,112,110,103
	align	4
_33:
	dd	_29
	dd	4
	dd	1
	align	4
_19:
	dd	_bbStringClass
	dd	2147483647
	dd	25
	dw	103,102,120,92,101,108,101,109,101,110,116,101,92,104,117,100
	dw	95,108,105,102,101,46,112,110,103
_62:
	db	"EnerBalken",0
_63:
	db	"Energie",0
_64:
	db	"f",0
_65:
	db	"r",0
_66:
	db	"i",0
_67:
	db	"g",0
_68:
	db	"b",0
_69:
	db	"rlife",0
_70:
	db	"glife",0
_71:
	db	"life",0
	align	4
_61:
	dd	1
	dd	_62
	dd	2
	dd	_63
	dd	_64
	dd	-4
	dd	2
	dd	_65
	dd	_66
	dd	-8
	dd	2
	dd	_67
	dd	_66
	dd	-12
	dd	2
	dd	_68
	dd	_66
	dd	-16
	dd	2
	dd	_69
	dd	_66
	dd	-20
	dd	2
	dd	_70
	dd	_66
	dd	-24
	dd	2
	dd	_71
	dd	_66
	dd	-28
	dd	0
	align	4
_43:
	dd	_29
	dd	8
	dd	2
	align	4
_44:
	dd	_29
	dd	9
	dd	2
	align	4
_45:
	dd	_29
	dd	10
	dd	2
	align	4
_46:
	dd	_29
	dd	11
	dd	2
	align	4
_47:
	dd	_29
	dd	12
	dd	2
	align	4
_48:
	dd	_29
	dd	13
	dd	2
	align	4
_49:
	dd	_29
	dd	15
	dd	2
	align	4
_52:
	dd	_29
	dd	16
	dd	2
	align	4
_55:
	dd	_29
	dd	17
	dd	3
	align	4
_57:
	dd	_29
	dd	19
	dd	3
	align	4
_58:
	dd	_29
	dd	20
	dd	3
	align	4
_59:
	dd	_29
	dd	23
	dd	2
	align	4
_77:
	dd	0x437f0000
	align	4
_78:
	dd	0x40233333
	align	4
_79:
	dd	0x40233333
	align	4
_60:
	dd	_29
	dd	24
	dd	2
