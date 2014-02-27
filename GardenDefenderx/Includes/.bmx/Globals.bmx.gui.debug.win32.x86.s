	format	MS COFF
	extrn	___bb_appstub_appstub
	extrn	___bb_audio_audio
	extrn	___bb_bank_bank
	extrn	___bb_bankstream_bankstream
	extrn	___bb_basic_basic
	extrn	___bb_blitz_blitz
	extrn	___bb_bmploader_bmploader
	extrn	___bb_d3d7max2d_d3d7max2d
	extrn	___bb_d3d9max2d_d3d9max2d
	extrn	___bb_data_data
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
	extrn	___bb_map_map
	extrn	___bb_maxlua_maxlua
	extrn	___bb_maxutil_maxutil
	extrn	___bb_oggloader_oggloader
	extrn	___bb_openalaudio_openalaudio
	extrn	___bb_pngloader_pngloader
	extrn	___bb_retro_retro
	extrn	___bb_tgaloader_tgaloader
	extrn	___bb_threads_threads
	extrn	___bb_timer_timer
	extrn	___bb_wavloader_wavloader
	extrn	_bbArrayNew
	extrn	_bbEmptyArray
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringClass
	public	__bb_main
	public	_bb_iMapXSizeGFX
	public	_bb_iMapXSizeObj
	public	_bb_iMapYSizeGFX
	public	_bb_iMapYSizeObj
	public	_bb_iTileMapGFX
	public	_bb_iTileMapObj
	public	_bb_igfxHeight
	public	_bb_igfxHeightHalf
	public	_bb_igfxWidth
	public	_bb_igfxWidthHalf
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_64],0
	je	_65
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_65:
	mov	dword [_64],1
	push	ebp
	push	_46
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
	call	___bb_d3d9max2d_d3d9max2d
	call	___bb_data_data
	call	___bb_directsoundaudio_directsoundaudio
	call	___bb_eventqueue_eventqueue
	call	___bb_freeaudioaudio_freeaudioaudio
	call	___bb_freetypefont_freetypefont
	call	___bb_gnet_gnet
	call	___bb_jpgloader_jpgloader
	call	___bb_map_map
	call	___bb_maxlua_maxlua
	call	___bb_maxutil_maxutil
	call	___bb_oggloader_oggloader
	call	___bb_openalaudio_openalaudio
	call	___bb_pngloader_pngloader
	call	___bb_retro_retro
	call	___bb_tgaloader_tgaloader
	call	___bb_threads_threads
	call	___bb_timer_timer
	call	___bb_wavloader_wavloader
	call	___bb_freejoy_freejoy
	call	___bb_freeprocess_freeprocess
	call	___bb_glew_glew
	call	___bb_macos_macos
	push	_24
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_26
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_27
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_28]
	and	eax,1
	cmp	eax,0
	jne	_29
	mov	eax,dword [_bb_igfxWidth]
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	mov	dword [_bb_igfxWidthHalf],eax
	or	dword [_28],1
_29:
	push	_30
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_28]
	and	eax,2
	cmp	eax,0
	jne	_31
	mov	eax,dword [_bb_igfxHeight]
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	mov	dword [_bb_igfxHeightHalf],eax
	or	dword [_28],2
_31:
	push	_32
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_33
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_34
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_28]
	and	eax,4
	cmp	eax,0
	jne	_35
	mov	eax,dword [_bb_iMapXSizeGFX]
	shl	eax,1
	mov	dword [_bb_iMapXSizeObj],eax
	or	dword [_28],4
_35:
	push	_36
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_28]
	and	eax,8
	cmp	eax,0
	jne	_37
	mov	eax,dword [_bb_iMapYSizeGFX]
	shl	eax,1
	mov	dword [_bb_iMapYSizeObj],eax
	or	dword [_28],8
_37:
	push	_38
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_28]
	and	eax,16
	cmp	eax,0
	jne	_41
	push	dword [_bb_iMapYSizeGFX]
	push	dword [_bb_iMapXSizeGFX]
	push	2
	push	_39
	call	_bbArrayNew
	add	esp,16
	inc	dword [eax+4]
	mov	dword [_bb_iTileMapGFX],eax
	or	dword [_28],16
_41:
	push	_42
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_28]
	and	eax,32
	cmp	eax,0
	jne	_45
	push	dword [_bb_iMapYSizeObj]
	push	dword [_bb_iMapXSizeObj]
	push	2
	push	_43
	call	_bbArrayNew
	add	esp,16
	inc	dword [eax+4]
	mov	dword [_bb_iTileMapObj],eax
	or	dword [_28],32
_45:
	mov	ebx,0
	jmp	_22
_22:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_64:
	dd	0
_47:
	db	"Globals",0
_48:
	db	"iTilesizeGFX",0
_49:
	db	"i",0
	align	4
_50:
	dd	_bbStringClass
	dd	2147483646
	dd	2
	dw	51,50
_51:
	db	"iTilesizeObj",0
	align	4
_52:
	dd	_bbStringClass
	dd	2147483646
	dd	2
	dw	49,54
_53:
	db	"igfxWidth",0
	align	4
_bb_igfxWidth:
	dd	1024
_54:
	db	"igfxHeight",0
	align	4
_bb_igfxHeight:
	dd	768
_55:
	db	"igfxWidthHalf",0
	align	4
_bb_igfxWidthHalf:
	dd	0
_56:
	db	"igfxHeightHalf",0
	align	4
_bb_igfxHeightHalf:
	dd	0
_57:
	db	"iMapXSizeGFX",0
	align	4
_bb_iMapXSizeGFX:
	dd	30
_58:
	db	"iMapYSizeGFX",0
	align	4
_bb_iMapYSizeGFX:
	dd	22
_59:
	db	"iMapXSizeObj",0
	align	4
_bb_iMapXSizeObj:
	dd	0
_60:
	db	"iMapYSizeObj",0
	align	4
_bb_iMapYSizeObj:
	dd	0
_61:
	db	"iTileMapGFX",0
_62:
	db	"[,]i",0
	align	4
_bb_iTileMapGFX:
	dd	_bbEmptyArray
_63:
	db	"iTileMapObj",0
	align	4
_bb_iTileMapObj:
	dd	_bbEmptyArray
	align	4
_46:
	dd	1
	dd	_47
	dd	1
	dd	_48
	dd	_49
	dd	_50
	dd	1
	dd	_51
	dd	_49
	dd	_52
	dd	4
	dd	_53
	dd	_49
	dd	_bb_igfxWidth
	dd	4
	dd	_54
	dd	_49
	dd	_bb_igfxHeight
	dd	4
	dd	_55
	dd	_49
	dd	_bb_igfxWidthHalf
	dd	4
	dd	_56
	dd	_49
	dd	_bb_igfxHeightHalf
	dd	4
	dd	_57
	dd	_49
	dd	_bb_iMapXSizeGFX
	dd	4
	dd	_58
	dd	_49
	dd	_bb_iMapYSizeGFX
	dd	4
	dd	_59
	dd	_49
	dd	_bb_iMapXSizeObj
	dd	4
	dd	_60
	dd	_49
	dd	_bb_iMapYSizeObj
	dd	4
	dd	_61
	dd	_62
	dd	_bb_iTileMapGFX
	dd	4
	dd	_63
	dd	_62
	dd	_bb_iTileMapObj
	dd	0
_25:
	db	"F:/BlitzMax Porgramming/WIP/GardenDefender/Includes/Globals.bmx",0
	align	4
_24:
	dd	_25
	dd	1
	dd	1
	align	4
_26:
	dd	_25
	dd	2
	dd	1
	align	4
_27:
	dd	_25
	dd	3
	dd	1
	align	4
_28:
	dd	0
	align	4
_30:
	dd	_25
	dd	4
	dd	1
	align	4
_32:
	dd	_25
	dd	8
	dd	1
	align	4
_33:
	dd	_25
	dd	9
	dd	1
	align	4
_34:
	dd	_25
	dd	10
	dd	1
	align	4
_36:
	dd	_25
	dd	11
	dd	1
	align	4
_38:
	dd	_25
	dd	13
	dd	1
_39:
	db	"i",0
	align	4
_42:
	dd	_25
	dd	14
	dd	1
_43:
	db	"i",0
