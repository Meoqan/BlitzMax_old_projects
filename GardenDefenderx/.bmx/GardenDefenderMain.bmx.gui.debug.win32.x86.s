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
	extrn	_bbArrayNew1D
	extrn	_bbEmptyArray
	extrn	_bbFloatToInt
	extrn	_bbGCFree
	extrn	_bbMilliSecs
	extrn	_bbNullObject
	extrn	_bbObjectClass
	extrn	_bbObjectCompare
	extrn	_bbObjectCtor
	extrn	_bbObjectFree
	extrn	_bbObjectNew
	extrn	_bbObjectRegisterType
	extrn	_bbObjectReserved
	extrn	_bbObjectSendMessage
	extrn	_bbObjectToString
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringClass
	extrn	_brl_blitz_ArrayBoundsError
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_d3d9max2d_D3D9Max2DDriver
	extrn	_brl_graphics_Flip
	extrn	_brl_graphics_Graphics
	extrn	_brl_graphics_SetGraphicsDriver
	extrn	_brl_max2d_AutoMidHandle
	extrn	_brl_max2d_Cls
	extrn	_brl_max2d_DrawImage
	extrn	_brl_max2d_DrawRect
	extrn	_brl_max2d_LoadAnimImage
	extrn	_brl_max2d_LoadImage
	extrn	_brl_max2d_LoadImageFont
	extrn	_brl_max2d_SetAlpha
	extrn	_brl_max2d_SetBlend
	extrn	_brl_max2d_SetColor
	extrn	_brl_max2d_SetHandle
	extrn	_brl_max2d_SetImageFont
	extrn	_brl_max2d_SetOrigin
	extrn	_brl_max2d_SetRotation
	extrn	_brl_max2d_SetScale
	extrn	_brl_polledinput_AppTerminate
	extrn	_brl_polledinput_KeyHit
	extrn	_brl_polledinput_MouseDown
	extrn	_brl_polledinput_MouseX
	extrn	_brl_polledinput_MouseY
	extrn	_brl_random_SeedRnd
	extrn	_brl_timer_CreateTimer
	extrn	_brl_timer_WaitTimer
	public	__bb_Tfeld_Delete
	public	__bb_Tfeld_New
	public	__bb_main
	public	_bb_DrawMapGFX
	public	_bb_FTimer
	public	_bb_Tfeld
	public	_bb_anim
	public	_bb_animx
	public	_bb_calc_move
	public	_bb_iMapXSizeGFX
	public	_bb_iMapXSizeObj
	public	_bb_iMapYSizeGFX
	public	_bb_iMapYSizeObj
	public	_bb_iTileMapGFX
	public	_bb_iTileMapObj
	public	_bb_iXOffSetGFX
	public	_bb_iXOffSetObj
	public	_bb_iYOffSetGFX
	public	_bb_iYOffSetObj
	public	_bb_igfxHeight
	public	_bb_igfxHeightHalf
	public	_bb_igfxWidth
	public	_bb_igfxWidthHalf
	public	_bb_inter
	public	_bb_lasttime
	public	_bb_map
	public	_bb_msc
	public	_bb_pground
	public	_bb_playerImage
	public	_bb_pobj
	public	_bb_reset_draw
	public	_bb_stuff
	public	_bb_tiTileImage
	public	_bb_tiTileImage2
	public	_bb_tiTileImage3
	public	_bb_time
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,28
	push	ebx
	push	esi
	push	edi
	cmp	dword [_531],0
	je	_532
	mov	eax,0
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_532:
	mov	dword [_531],1
	mov	dword [ebp-4],0
	mov	dword [ebp-8],0
	mov	dword [ebp-12],0
	mov	dword [ebp-16],0
	mov	dword [ebp-20],0
	mov	eax,ebp
	push	eax
	push	_491
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
	push	_bb_Tfeld
	call	_bbObjectRegisterType
	add	esp,4
	push	_87
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	push	eax
	call	_brl_random_SeedRnd
	add	esp,4
	push	_89
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_brl_max2d_AutoMidHandle
	add	esp,4
	push	_90
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_92
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_93
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_94]
	and	eax,1
	cmp	eax,0
	jne	_95
	mov	eax,dword [_bb_igfxWidth]
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	mov	dword [_bb_igfxWidthHalf],eax
	or	dword [_94],1
_95:
	push	_96
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_94]
	and	eax,2
	cmp	eax,0
	jne	_97
	mov	eax,dword [_bb_igfxHeight]
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	mov	dword [_bb_igfxHeightHalf],eax
	or	dword [_94],2
_97:
	push	_98
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_99
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_100
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_94]
	and	eax,4
	cmp	eax,0
	jne	_101
	mov	eax,dword [_bb_iMapXSizeGFX]
	shl	eax,1
	mov	dword [_bb_iMapXSizeObj],eax
	or	dword [_94],4
_101:
	push	_102
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_94]
	and	eax,8
	cmp	eax,0
	jne	_103
	mov	eax,dword [_bb_iMapYSizeGFX]
	shl	eax,1
	mov	dword [_bb_iMapYSizeObj],eax
	or	dword [_94],8
_103:
	push	_104
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_94]
	and	eax,16
	cmp	eax,0
	jne	_107
	push	dword [_bb_iMapYSizeGFX]
	push	dword [_bb_iMapXSizeGFX]
	push	2
	push	_105
	call	_bbArrayNew
	add	esp,16
	inc	dword [eax+4]
	mov	dword [_bb_iTileMapGFX],eax
	or	dword [_94],16
_107:
	push	_108
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_94]
	and	eax,32
	cmp	eax,0
	jne	_111
	push	dword [_bb_iMapYSizeObj]
	push	dword [_bb_iMapXSizeObj]
	push	2
	push	_109
	call	_bbArrayNew
	add	esp,16
	inc	dword [eax+4]
	mov	dword [_bb_iTileMapObj],eax
	or	dword [_94],32
_111:
	push	_112
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_113
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_114
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_115
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_116
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	call	_brl_d3d9max2d_D3D9Max2DDriver
	push	eax
	call	_brl_graphics_SetGraphicsDriver
	add	esp,8
	push	_117
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	60
	push	0
	push	dword [_bb_igfxHeight]
	push	dword [_bb_igfxWidth]
	call	_brl_graphics_Graphics
	add	esp,20
	push	_118
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	3
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_119
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	4
	push	12
	push	_22
	call	_brl_max2d_LoadImageFont
	add	esp,12
	push	eax
	call	_brl_max2d_SetImageFont
	add	esp,4
	push	_120
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_94]
	and	eax,64
	cmp	eax,0
	jne	_122
	push	_bbNullObject
	push	1114636288
	call	_brl_timer_CreateTimer
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_FTimer],eax
	or	dword [_94],64
_122:
	push	_123
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_124
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_94]
	and	eax,128
	cmp	eax,0
	jne	_125
	call	_bbMilliSecs
	mov	dword [_bb_lasttime],eax
	or	dword [_94],128
_125:
	push	_126
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_94]
	and	eax,256
	cmp	eax,0
	jne	_127
	call	_bbMilliSecs
	mov	dword [_bb_time],eax
	or	dword [_94],256
_127:
	push	_128
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_94]
	and	eax,512
	cmp	eax,0
	jne	_130
	push	-1
	push	3
	push	0
	push	48
	push	32
	push	_23
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_playerImage],eax
	or	dword [_94],512
_130:
	push	_131
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_94]
	and	eax,1024
	cmp	eax,0
	jne	_133
	push	-1
	push	_24
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_tiTileImage],eax
	or	dword [_94],1024
_133:
	push	_134
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_94]
	and	eax,2048
	cmp	eax,0
	jne	_136
	push	-1
	push	_25
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_tiTileImage3],eax
	or	dword [_94],2048
_136:
	push	_137
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_94]
	and	eax,4096
	cmp	eax,0
	jne	_139
	push	-1
	push	_26
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_tiTileImage2],eax
	or	dword [_94],4096
_139:
	push	_140
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_tiTileImage2]
	cmp	ebx,_bbNullObject
	jne	_142
	call	_brl_blitz_NullObjectError
_142:
	fld	dword [_621]
	fstp	dword [ebx+36]
	push	_144
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_94]
	and	eax,8192
	cmp	eax,0
	jne	_147
	push	10
	push	_145
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_stuff],eax
	or	dword [_94],8192
_147:
	push	_148
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [_bb_stuff]
	cmp	ebx,dword [eax+20]
	jb	_150
	call	_brl_blitz_ArrayBoundsError
_150:
	mov	esi,dword [_bb_stuff]
	shl	ebx,2
	add	esi,ebx
	push	-1
	push	_25
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_155
	push	eax
	call	_bbGCFree
	add	esp,4
_155:
	mov	dword [esi+24],ebx
	push	_156
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [_bb_stuff]
	cmp	ebx,dword [eax+20]
	jb	_158
	call	_brl_blitz_ArrayBoundsError
_158:
	mov	esi,dword [_bb_stuff]
	shl	ebx,2
	add	esi,ebx
	push	-1
	push	_27
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_163
	push	eax
	call	_bbGCFree
	add	esp,4
_163:
	mov	dword [esi+24],ebx
	push	_164
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [_bb_stuff]
	cmp	ebx,dword [eax+20]
	jb	_166
	call	_brl_blitz_ArrayBoundsError
_166:
	mov	esi,dword [_bb_stuff]
	shl	ebx,2
	add	esi,ebx
	push	-1
	push	_24
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_171
	push	eax
	call	_bbGCFree
	add	esp,4
_171:
	mov	dword [esi+24],ebx
	push	_172
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [_bb_stuff]
	cmp	ebx,dword [eax+20]
	jb	_174
	call	_brl_blitz_ArrayBoundsError
_174:
	mov	esi,dword [_bb_stuff]
	shl	ebx,2
	add	esi,ebx
	push	-1
	push	_28
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_179
	push	eax
	call	_bbGCFree
	add	esp,4
_179:
	mov	dword [esi+24],ebx
	push	_180
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,4
	mov	eax,dword [_bb_stuff]
	cmp	ebx,dword [eax+20]
	jb	_182
	call	_brl_blitz_ArrayBoundsError
_182:
	mov	esi,dword [_bb_stuff]
	shl	ebx,2
	add	esi,ebx
	push	-1
	push	_29
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_187
	push	eax
	call	_bbGCFree
	add	esp,4
_187:
	mov	dword [esi+24],ebx
	push	_188
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,5
	mov	eax,dword [_bb_stuff]
	cmp	ebx,dword [eax+20]
	jb	_190
	call	_brl_blitz_ArrayBoundsError
_190:
	mov	esi,dword [_bb_stuff]
	shl	ebx,2
	add	esi,ebx
	push	-1
	push	_30
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_195
	push	eax
	call	_bbGCFree
	add	esp,4
_195:
	mov	dword [esi+24],ebx
	push	_196
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,6
	mov	eax,dword [_bb_stuff]
	cmp	ebx,dword [eax+20]
	jb	_198
	call	_brl_blitz_ArrayBoundsError
_198:
	mov	esi,dword [_bb_stuff]
	shl	ebx,2
	add	esi,ebx
	push	-1
	push	_26
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_203
	push	eax
	call	_bbGCFree
	add	esp,4
_203:
	mov	dword [esi+24],ebx
	push	_204
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,5
	mov	eax,dword [_bb_stuff]
	cmp	ebx,dword [eax+20]
	jb	_206
	call	_brl_blitz_ArrayBoundsError
_206:
	mov	eax,dword [_bb_stuff]
	mov	ebx,dword [eax+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_208
	call	_brl_blitz_NullObjectError
_208:
	fld	dword [_622]
	fstp	dword [ebx+36]
	push	_210
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,7
	mov	eax,dword [_bb_stuff]
	cmp	ebx,dword [eax+20]
	jb	_212
	call	_brl_blitz_ArrayBoundsError
_212:
	mov	esi,dword [_bb_stuff]
	shl	ebx,2
	add	esi,ebx
	push	-1
	push	_31
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_217
	push	eax
	call	_bbGCFree
	add	esp,4
_217:
	mov	dword [esi+24],ebx
	push	_218
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,6
	mov	eax,dword [_bb_stuff]
	cmp	ebx,dword [eax+20]
	jb	_220
	call	_brl_blitz_ArrayBoundsError
_220:
	mov	eax,dword [_bb_stuff]
	mov	ebx,dword [eax+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_222
	call	_brl_blitz_NullObjectError
_222:
	fld	dword [_623]
	fstp	dword [ebx+36]
	push	_224
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,8
	mov	eax,dword [_bb_stuff]
	cmp	ebx,dword [eax+20]
	jb	_226
	call	_brl_blitz_ArrayBoundsError
_226:
	mov	esi,dword [_bb_stuff]
	shl	ebx,2
	add	esi,ebx
	push	-1
	push	_32
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_231
	push	eax
	call	_bbGCFree
	add	esp,4
_231:
	mov	dword [esi+24],ebx
	push	_232
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,9
	mov	eax,dword [_bb_stuff]
	cmp	ebx,dword [eax+20]
	jb	_234
	call	_brl_blitz_ArrayBoundsError
_234:
	mov	esi,dword [_bb_stuff]
	shl	ebx,2
	add	esi,ebx
	push	-1
	push	_33
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_239
	push	eax
	call	_bbGCFree
	add	esp,4
_239:
	mov	dword [esi+24],ebx
	push	_240
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_94]
	and	eax,16384
	cmp	eax,0
	jne	_244
	mov	ebx,0
	mov	eax,dword [_bb_stuff]
	cmp	ebx,dword [eax+20]
	jb	_242
	call	_brl_blitz_ArrayBoundsError
_242:
	mov	eax,dword [_bb_stuff]
	mov	eax,dword [eax+ebx*4+24]
	inc	dword [eax+4]
	mov	dword [_bb_pground],eax
	or	dword [_94],16384
_244:
	mov	eax,dword [_94]
	and	eax,32768
	cmp	eax,0
	jne	_248
	mov	ebx,3
	mov	eax,dword [_bb_stuff]
	cmp	ebx,dword [eax+20]
	jb	_246
	call	_brl_blitz_ArrayBoundsError
_246:
	mov	eax,dword [_bb_stuff]
	mov	eax,dword [eax+ebx*4+24]
	inc	dword [eax+4]
	mov	dword [_bb_pobj],eax
	or	dword [_94],32768
_248:
	push	_249
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_94]
	and	eax,65536
	cmp	eax,0
	jne	_252
	push	22
	push	30
	push	2
	push	_250
	call	_bbArrayNew
	add	esp,16
	inc	dword [eax+4]
	mov	dword [_bb_map],eax
	or	dword [_94],65536
_252:
	push	_253
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_254
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	mov	dword [ebp-4],0
	mov	eax,dword [_bb_iMapXSizeGFX]
	mov	dword [ebp-24],eax
	jmp	_256
_36:
	mov	eax,ebp
	push	eax
	push	_287
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_258
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	mov	dword [ebp-8],0
	mov	edi,dword [_bb_iMapYSizeGFX]
	jmp	_260
_39:
	mov	eax,ebp
	push	eax
	push	_284
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_262
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	edx,dword [_bb_map]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_map]
	cmp	esi,dword [eax+20]
	jb	_264
	call	_brl_blitz_ArrayBoundsError
_264:
	mov	ebx,dword [ebp-8]
	mov	eax,dword [_bb_map]
	cmp	ebx,dword [eax+24]
	jb	_266
	call	_brl_blitz_ArrayBoundsError
_266:
	mov	eax,dword [_bb_map]
	mov	edx,esi
	add	edx,ebx
	shl	edx,2
	add	eax,edx
	mov	esi,eax
	push	_bb_Tfeld
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_271
	push	eax
	call	_bbGCFree
	add	esp,4
_271:
	mov	dword [esi+28],ebx
	push	_272
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	edx,dword [_bb_map]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_map]
	cmp	esi,dword [eax+20]
	jb	_274
	call	_brl_blitz_ArrayBoundsError
_274:
	mov	ebx,dword [ebp-8]
	mov	eax,dword [_bb_map]
	cmp	ebx,dword [eax+24]
	jb	_276
	call	_brl_blitz_ArrayBoundsError
_276:
	mov	edx,dword [_bb_map]
	mov	eax,esi
	add	eax,ebx
	mov	ebx,dword [edx+eax*4+28]
	cmp	ebx,_bbNullObject
	jne	_278
	call	_brl_blitz_NullObjectError
_278:
	mov	esi,ebx
	mov	eax,dword [_bb_tiTileImage3]
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_283
	push	eax
	call	_bbGCFree
	add	esp,4
_283:
	mov	dword [esi+8],ebx
	call	dword [_bbOnDebugLeaveScope]
_37:
	add	dword [ebp-8],1
_260:
	cmp	dword [ebp-8],edi
	jl	_39
_38:
	call	dword [_bbOnDebugLeaveScope]
_34:
	add	dword [ebp-4],1
_256:
	mov	eax,dword [ebp-24]
	cmp	dword [ebp-4],eax
	jl	_36
_35:
	push	_289
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_290
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_42:
	mov	eax,ebp
	push	eax
	push	_488
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_291
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_FTimer]
	call	_brl_timer_WaitTimer
	add	esp,4
	push	_292
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_time]
	mov	dword [_bb_lasttime],eax
	push	_293
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	mov	dword [_bb_time],eax
	push	_294
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_time]
	sub	eax,dword [_bb_lasttime]
	mov	dword [_bb_msc],eax
	push	_295
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	81
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_296
	mov	eax,ebp
	push	eax
	push	_304
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_297
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [_bb_stuff]
	cmp	ebx,dword [eax+20]
	jb	_299
	call	_brl_blitz_ArrayBoundsError
_299:
	mov	eax,dword [_bb_stuff]
	mov	ebx,dword [eax+ebx*4+24]
	inc	dword [ebx+4]
	mov	eax,dword [_bb_pground]
	dec	dword [eax+4]
	jnz	_303
	push	eax
	call	_bbGCFree
	add	esp,4
_303:
	mov	dword [_bb_pground],ebx
	call	dword [_bbOnDebugLeaveScope]
_296:
	push	_305
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	87
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_306
	mov	eax,ebp
	push	eax
	push	_314
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_307
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [_bb_stuff]
	cmp	ebx,dword [eax+20]
	jb	_309
	call	_brl_blitz_ArrayBoundsError
_309:
	mov	eax,dword [_bb_stuff]
	mov	ebx,dword [eax+ebx*4+24]
	inc	dword [ebx+4]
	mov	eax,dword [_bb_pground]
	dec	dword [eax+4]
	jnz	_313
	push	eax
	call	_bbGCFree
	add	esp,4
_313:
	mov	dword [_bb_pground],ebx
	call	dword [_bbOnDebugLeaveScope]
_306:
	push	_315
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	69
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_316
	mov	eax,ebp
	push	eax
	push	_324
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_317
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [_bb_stuff]
	cmp	ebx,dword [eax+20]
	jb	_319
	call	_brl_blitz_ArrayBoundsError
_319:
	mov	eax,dword [_bb_stuff]
	mov	ebx,dword [eax+ebx*4+24]
	inc	dword [ebx+4]
	mov	eax,dword [_bb_pground]
	dec	dword [eax+4]
	jnz	_323
	push	eax
	call	_bbGCFree
	add	esp,4
_323:
	mov	dword [_bb_pground],ebx
	call	dword [_bbOnDebugLeaveScope]
_316:
	push	_325
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	82
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_326
	mov	eax,ebp
	push	eax
	push	_332
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_327
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_pground]
	dec	dword [eax+4]
	jnz	_331
	push	eax
	call	_bbGCFree
	add	esp,4
_331:
	mov	dword [_bb_pground],ebx
	call	dword [_bbOnDebugLeaveScope]
_326:
	push	_333
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	65
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_334
	mov	eax,ebp
	push	eax
	push	_342
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_335
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [_bb_stuff]
	cmp	ebx,dword [eax+20]
	jb	_337
	call	_brl_blitz_ArrayBoundsError
_337:
	mov	eax,dword [_bb_stuff]
	mov	ebx,dword [eax+ebx*4+24]
	inc	dword [ebx+4]
	mov	eax,dword [_bb_pobj]
	dec	dword [eax+4]
	jnz	_341
	push	eax
	call	_bbGCFree
	add	esp,4
_341:
	mov	dword [_bb_pobj],ebx
	call	dword [_bbOnDebugLeaveScope]
_334:
	push	_343
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	83
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_344
	mov	eax,ebp
	push	eax
	push	_352
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_345
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,4
	mov	eax,dword [_bb_stuff]
	cmp	ebx,dword [eax+20]
	jb	_347
	call	_brl_blitz_ArrayBoundsError
_347:
	mov	eax,dword [_bb_stuff]
	mov	ebx,dword [eax+ebx*4+24]
	inc	dword [ebx+4]
	mov	eax,dword [_bb_pobj]
	dec	dword [eax+4]
	jnz	_351
	push	eax
	call	_bbGCFree
	add	esp,4
_351:
	mov	dword [_bb_pobj],ebx
	call	dword [_bbOnDebugLeaveScope]
_344:
	push	_353
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	68
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_354
	mov	eax,ebp
	push	eax
	push	_362
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_355
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,5
	mov	eax,dword [_bb_stuff]
	cmp	ebx,dword [eax+20]
	jb	_357
	call	_brl_blitz_ArrayBoundsError
_357:
	mov	eax,dword [_bb_stuff]
	mov	ebx,dword [eax+ebx*4+24]
	inc	dword [ebx+4]
	mov	eax,dword [_bb_pobj]
	dec	dword [eax+4]
	jnz	_361
	push	eax
	call	_bbGCFree
	add	esp,4
_361:
	mov	dword [_bb_pobj],ebx
	call	dword [_bbOnDebugLeaveScope]
_354:
	push	_363
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	70
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_364
	mov	eax,ebp
	push	eax
	push	_372
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_365
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,6
	mov	eax,dword [_bb_stuff]
	cmp	ebx,dword [eax+20]
	jb	_367
	call	_brl_blitz_ArrayBoundsError
_367:
	mov	eax,dword [_bb_stuff]
	mov	ebx,dword [eax+ebx*4+24]
	inc	dword [ebx+4]
	mov	eax,dword [_bb_pobj]
	dec	dword [eax+4]
	jnz	_371
	push	eax
	call	_bbGCFree
	add	esp,4
_371:
	mov	dword [_bb_pobj],ebx
	call	dword [_bbOnDebugLeaveScope]
_364:
	push	_373
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	71
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_374
	mov	eax,ebp
	push	eax
	push	_382
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_375
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,7
	mov	eax,dword [_bb_stuff]
	cmp	ebx,dword [eax+20]
	jb	_377
	call	_brl_blitz_ArrayBoundsError
_377:
	mov	eax,dword [_bb_stuff]
	mov	ebx,dword [eax+ebx*4+24]
	inc	dword [ebx+4]
	mov	eax,dword [_bb_pobj]
	dec	dword [eax+4]
	jnz	_381
	push	eax
	call	_bbGCFree
	add	esp,4
_381:
	mov	dword [_bb_pobj],ebx
	call	dword [_bbOnDebugLeaveScope]
_374:
	push	_383
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	72
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_384
	mov	eax,ebp
	push	eax
	push	_392
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_385
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,8
	mov	eax,dword [_bb_stuff]
	cmp	ebx,dword [eax+20]
	jb	_387
	call	_brl_blitz_ArrayBoundsError
_387:
	mov	eax,dword [_bb_stuff]
	mov	ebx,dword [eax+ebx*4+24]
	inc	dword [ebx+4]
	mov	eax,dword [_bb_pobj]
	dec	dword [eax+4]
	jnz	_391
	push	eax
	call	_bbGCFree
	add	esp,4
_391:
	mov	dword [_bb_pobj],ebx
	call	dword [_bbOnDebugLeaveScope]
_384:
	push	_393
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	74
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_394
	mov	eax,ebp
	push	eax
	push	_402
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_395
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,9
	mov	eax,dword [_bb_stuff]
	cmp	ebx,dword [eax+20]
	jb	_397
	call	_brl_blitz_ArrayBoundsError
_397:
	mov	eax,dword [_bb_stuff]
	mov	ebx,dword [eax+ebx*4+24]
	inc	dword [ebx+4]
	mov	eax,dword [_bb_pobj]
	dec	dword [eax+4]
	jnz	_401
	push	eax
	call	_bbGCFree
	add	esp,4
_401:
	mov	dword [_bb_pobj],ebx
	call	dword [_bbOnDebugLeaveScope]
_394:
	push	_403
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	75
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_404
	mov	eax,ebp
	push	eax
	push	_410
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_405
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [_bb_pobj]
	dec	dword [eax+4]
	jnz	_409
	push	eax
	call	_bbGCFree
	add	esp,4
_409:
	mov	dword [_bb_pobj],ebx
	call	dword [_bbOnDebugLeaveScope]
_404:
	push	_411
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	89
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_412
	mov	eax,ebp
	push	eax
	push	_414
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_413
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,1
	movzx	eax,byte [_bb_inter]
	mov	eax,eax
	sub	edx,eax
	mov	eax,edx
	and	eax,0xff
	mov	eax,eax
	mov	byte [_bb_inter],al
	call	dword [_bbOnDebugLeaveScope]
_412:
	push	_415
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_416
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_DrawMapGFX
	push	_417
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [_bb_inter]
	cmp	eax,0
	je	_418
	mov	eax,ebp
	push	eax
	push	_484
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_419
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_MouseX
	sub	eax,dword [_bb_iXOffSetGFX]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	fdiv	dword [_624]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebp-12],eax
	push	_421
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_MouseY
	sub	eax,dword [_bb_iYOffSetGFX]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	fdiv	dword [_625]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebp-16],eax
	push	_423
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1045220557
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_424
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	cmp	eax,0
	setge	al
	movzx	eax,al
	cmp	eax,0
	je	_425
	mov	eax,dword [ebp-12]
	cmp	eax,30
	setl	al
	movzx	eax,al
_425:
	cmp	eax,0
	je	_427
	mov	eax,dword [ebp-16]
	cmp	eax,0
	setge	al
	movzx	eax,al
_427:
	cmp	eax,0
	je	_429
	mov	eax,dword [ebp-16]
	cmp	eax,22
	setl	al
	movzx	eax,al
_429:
	cmp	eax,0
	je	_431
	mov	eax,ebp
	push	eax
	push	_463
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_432
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1107296256
	push	1107296256
	mov	eax,dword [ebp-16]
	shl	eax,5
	add	eax,32
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-12]
	shl	eax,5
	add	eax,32
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_433
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_brl_polledinput_MouseDown
	add	esp,4
	cmp	eax,0
	je	_434
	mov	eax,ebp
	push	eax
	push	_447
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_435
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	mov	eax,dword [_bb_map]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_map]
	cmp	ebx,dword [eax+20]
	jb	_437
	call	_brl_blitz_ArrayBoundsError
_437:
	mov	esi,dword [ebp-16]
	mov	eax,dword [_bb_map]
	cmp	esi,dword [eax+24]
	jb	_439
	call	_brl_blitz_ArrayBoundsError
_439:
	mov	eax,dword [_bb_map]
	add	ebx,esi
	mov	esi,dword [eax+ebx*4+28]
	cmp	esi,_bbNullObject
	jne	_441
	call	_brl_blitz_NullObjectError
_441:
	mov	ebx,dword [_bb_pground]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_446
	push	eax
	call	_bbGCFree
	add	esp,4
_446:
	mov	dword [esi+8],ebx
	call	dword [_bbOnDebugLeaveScope]
_434:
	push	_448
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	call	_brl_polledinput_MouseDown
	add	esp,4
	cmp	eax,0
	je	_449
	mov	eax,ebp
	push	eax
	push	_462
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_450
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	mov	eax,dword [_bb_map]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_map]
	cmp	ebx,dword [eax+20]
	jb	_452
	call	_brl_blitz_ArrayBoundsError
_452:
	mov	esi,dword [ebp-16]
	mov	eax,dword [_bb_map]
	cmp	esi,dword [eax+24]
	jb	_454
	call	_brl_blitz_ArrayBoundsError
_454:
	mov	eax,dword [_bb_map]
	add	ebx,esi
	mov	esi,dword [eax+ebx*4+28]
	cmp	esi,_bbNullObject
	jne	_456
	call	_brl_blitz_NullObjectError
_456:
	mov	ebx,dword [_bb_pobj]
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_461
	push	eax
	call	_bbGCFree
	add	esp,4
_461:
	mov	dword [esi+12],ebx
	call	dword [_bbOnDebugLeaveScope]
_449:
	call	dword [_bbOnDebugLeaveScope]
_431:
	push	_464
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_reset_draw
	push	_465
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	_466
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1128792064
	push	1140981760
	mov	eax,dword [_bb_igfxHeight]
	sub	eax,152
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	push	0
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_467
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_468
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_pground],_bbNullObject
	je	_469
	mov	eax,ebp
	push	eax
	push	_471
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_470
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	mov	eax,dword [_bb_igfxHeight]
	sub	eax,128
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	push	1107296256
	push	dword [_bb_pground]
	call	_brl_max2d_DrawImage
	add	esp,16
	call	dword [_bbOnDebugLeaveScope]
_469:
	push	_472
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_pobj],_bbNullObject
	je	_473
	mov	eax,ebp
	push	eax
	push	_475
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_474
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	mov	eax,dword [_bb_igfxHeight]
	sub	eax,128
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	push	1119879168
	push	dword [_bb_pobj]
	call	_brl_max2d_DrawImage
	add	esp,16
	call	dword [_bbOnDebugLeaveScope]
_473:
	push	_476
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	mov	dword [ebp-20],0
	jmp	_478
_45:
	mov	eax,ebp
	push	eax
	push	_482
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_479
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	mov	eax,dword [_bb_stuff]
	cmp	ebx,dword [eax+20]
	jb	_481
	call	_brl_blitz_ArrayBoundsError
_481:
	push	0
	mov	eax,dword [_bb_igfxHeight]
	sub	eax,32
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-20]
	imul	eax,48
	add	eax,32
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [_bb_stuff]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_DrawImage
	add	esp,16
	call	dword [_bbOnDebugLeaveScope]
_43:
	add	dword [ebp-20],1
_478:
	cmp	dword [ebp-20],9
	jle	_45
_44:
	call	dword [_bbOnDebugLeaveScope]
_418:
	push	_487
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_graphics_Flip
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_40:
	push	49
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	jne	_489
	call	_brl_polledinput_AppTerminate
_489:
	cmp	eax,0
	je	_42
_41:
	mov	ebx,0
	jmp	_72
_72:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tfeld_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_536
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Tfeld
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],edx
	push	ebp
	push	_535
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_75
_75:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tfeld_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_78:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_541
	push	eax
	call	_bbGCFree
	add	esp,4
_541:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_543
	push	eax
	call	_bbGCFree
	add	esp,4
_543:
	mov	eax,0
	jmp	_539
_539:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_DrawMapGFX:
	push	ebp
	mov	ebp,esp
	sub	esp,36
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],0
	mov	dword [ebp-8],0
	mov	dword [ebp-12],0
	mov	dword [ebp-16],0
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	mov	eax,ebp
	push	eax
	push	_606
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_544
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	mov	dword [ebp-4],0
	mov	eax,dword [_bb_iMapXSizeGFX]
	mov	dword [ebp-28],eax
	jmp	_546
_48:
	mov	eax,ebp
	push	eax
	push	_569
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_548
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	mov	dword [ebp-8],0
	mov	edi,dword [_bb_iMapYSizeGFX]
	jmp	_550
_51:
	mov	eax,ebp
	push	eax
	push	_568
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_552
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	edx,dword [_bb_map]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_map]
	cmp	esi,dword [eax+20]
	jb	_554
	call	_brl_blitz_ArrayBoundsError
_554:
	mov	ebx,dword [ebp-8]
	mov	eax,dword [_bb_map]
	cmp	ebx,dword [eax+24]
	jb	_556
	call	_brl_blitz_ArrayBoundsError
_556:
	mov	edx,dword [_bb_map]
	mov	eax,esi
	add	eax,ebx
	mov	ebx,dword [edx+eax*4+28]
	cmp	ebx,_bbNullObject
	jne	_558
	call	_brl_blitz_NullObjectError
_558:
	cmp	dword [ebx+8],_bbNullObject
	je	_559
	mov	eax,ebp
	push	eax
	push	_567
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_560
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	edx,dword [_bb_map]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_map]
	cmp	esi,dword [eax+20]
	jb	_562
	call	_brl_blitz_ArrayBoundsError
_562:
	mov	ebx,dword [ebp-8]
	mov	eax,dword [_bb_map]
	cmp	ebx,dword [eax+24]
	jb	_564
	call	_brl_blitz_ArrayBoundsError
_564:
	mov	edx,dword [_bb_map]
	mov	eax,esi
	add	eax,ebx
	mov	ebx,dword [edx+eax*4+28]
	cmp	ebx,_bbNullObject
	jne	_566
	call	_brl_blitz_NullObjectError
_566:
	push	0
	mov	eax,dword [ebp-8]
	shl	eax,5
	add	eax,dword [_bb_iYOffSetGFX]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-4]
	shl	eax,5
	add	eax,dword [_bb_iXOffSetGFX]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebx+8]
	call	_brl_max2d_DrawImage
	add	esp,16
	call	dword [_bbOnDebugLeaveScope]
_559:
	call	dword [_bbOnDebugLeaveScope]
_49:
	add	dword [ebp-8],1
_550:
	cmp	dword [ebp-8],edi
	jl	_51
_50:
	call	dword [_bbOnDebugLeaveScope]
_46:
	add	dword [ebp-4],1
_546:
	mov	eax,dword [ebp-28]
	cmp	dword [ebp-4],eax
	jl	_48
_47:
	push	_570
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	dword [ebp-12],0
	mov	eax,dword [_bb_iMapXSizeGFX]
	mov	dword [ebp-32],eax
	jmp	_572
_54:
	mov	eax,ebp
	push	eax
	push	_595
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_574
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	mov	dword [ebp-16],0
	mov	edi,dword [_bb_iMapYSizeGFX]
	jmp	_576
_57:
	mov	eax,ebp
	push	eax
	push	_594
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_578
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	edx,dword [_bb_map]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_map]
	cmp	esi,dword [eax+20]
	jb	_580
	call	_brl_blitz_ArrayBoundsError
_580:
	mov	ebx,dword [ebp-16]
	mov	eax,dword [_bb_map]
	cmp	ebx,dword [eax+24]
	jb	_582
	call	_brl_blitz_ArrayBoundsError
_582:
	mov	edx,dword [_bb_map]
	mov	eax,esi
	add	eax,ebx
	mov	ebx,dword [edx+eax*4+28]
	cmp	ebx,_bbNullObject
	jne	_584
	call	_brl_blitz_NullObjectError
_584:
	cmp	dword [ebx+12],_bbNullObject
	je	_585
	mov	eax,ebp
	push	eax
	push	_593
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_586
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	edx,dword [_bb_map]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_map]
	cmp	esi,dword [eax+20]
	jb	_588
	call	_brl_blitz_ArrayBoundsError
_588:
	mov	ebx,dword [ebp-16]
	mov	eax,dword [_bb_map]
	cmp	ebx,dword [eax+24]
	jb	_590
	call	_brl_blitz_ArrayBoundsError
_590:
	mov	edx,dword [_bb_map]
	mov	eax,esi
	add	eax,ebx
	mov	ebx,dword [edx+eax*4+28]
	cmp	ebx,_bbNullObject
	jne	_592
	call	_brl_blitz_NullObjectError
_592:
	push	0
	mov	eax,dword [ebp-16]
	shl	eax,5
	add	eax,dword [_bb_iYOffSetGFX]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-12]
	shl	eax,5
	add	eax,dword [_bb_iXOffSetGFX]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebx+12]
	call	_brl_max2d_DrawImage
	add	esp,16
	call	dword [_bbOnDebugLeaveScope]
_585:
	call	dword [_bbOnDebugLeaveScope]
_55:
	add	dword [ebp-16],1
_576:
	cmp	dword [ebp-16],edi
	jl	_57
_56:
	call	dword [_bbOnDebugLeaveScope]
_52:
	add	dword [ebp-12],1
_572:
	mov	eax,dword [ebp-32]
	cmp	dword [ebp-12],eax
	jl	_54
_53:
	push	_596
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	mov	dword [ebp-20],0
	mov	esi,dword [_bb_iMapXSizeObj]
	jmp	_598
_60:
	mov	eax,ebp
	push	eax
	push	_605
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_600
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],0
	mov	dword [ebp-24],0
	mov	ebx,dword [_bb_iMapYSizeObj]
	jmp	_602
_63:
	mov	eax,ebp
	push	eax
	push	_604
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_61:
	add	dword [ebp-24],1
_602:
	cmp	dword [ebp-24],ebx
	jl	_63
_62:
	call	dword [_bbOnDebugLeaveScope]
_58:
	add	dword [ebp-20],1
_598:
	cmp	dword [ebp-20],esi
	jl	_60
_59:
	mov	ebx,0
	jmp	_80
_80:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_reset_draw:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	ebp
	push	_614
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_608
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_609
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_610
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	call	_brl_max2d_SetHandle
	add	esp,8
	push	_611
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_612
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	_613
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	call	_brl_max2d_SetOrigin
	add	esp,8
	mov	ebx,0
	jmp	_82
_82:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_calc_move:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	push	ebp
	push	_617
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_616
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	mov	eax,dword [_bb_msc]
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	fmulp	st1,st0
	fdiv	dword [_730]
	fstp	dword [ebp-8]
	jmp	_85
_85:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-8]
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_531:
	dd	0
_492:
	db	"GardenDefenderMain",0
_493:
	db	"iTilesizeGFX",0
_286:
	db	"i",0
	align	4
_494:
	dd	_bbStringClass
	dd	2147483646
	dd	2
	dw	51,50
_495:
	db	"iTilesizeObj",0
	align	4
_496:
	dd	_bbStringClass
	dd	2147483646
	dd	2
	dw	49,54
_497:
	db	"igfxWidth",0
	align	4
_bb_igfxWidth:
	dd	1024
_498:
	db	"igfxHeight",0
	align	4
_bb_igfxHeight:
	dd	768
_499:
	db	"igfxWidthHalf",0
	align	4
_bb_igfxWidthHalf:
	dd	0
_500:
	db	"igfxHeightHalf",0
	align	4
_bb_igfxHeightHalf:
	dd	0
_501:
	db	"iMapXSizeGFX",0
	align	4
_bb_iMapXSizeGFX:
	dd	30
_502:
	db	"iMapYSizeGFX",0
	align	4
_bb_iMapYSizeGFX:
	dd	22
_503:
	db	"iMapXSizeObj",0
	align	4
_bb_iMapXSizeObj:
	dd	0
_504:
	db	"iMapYSizeObj",0
	align	4
_bb_iMapYSizeObj:
	dd	0
_505:
	db	"iTileMapGFX",0
_506:
	db	"[,]i",0
	align	4
_bb_iTileMapGFX:
	dd	_bbEmptyArray
_507:
	db	"iTileMapObj",0
	align	4
_bb_iTileMapObj:
	dd	_bbEmptyArray
_508:
	db	"iXOffSetGFX",0
	align	4
_bb_iXOffSetGFX:
	dd	48
_509:
	db	"iYOffSetGFX",0
	align	4
_bb_iYOffSetGFX:
	dd	48
_510:
	db	"iXOffSetObj",0
	align	4
_bb_iXOffSetObj:
	dd	40
_511:
	db	"iYOffSetObj",0
	align	4
_bb_iYOffSetObj:
	dd	40
_512:
	db	"FTimer",0
_513:
	db	":brl.timer.TTimer",0
	align	4
_bb_FTimer:
	dd	_bbNullObject
_514:
	db	"msc",0
	align	4
_bb_msc:
	dd	0
_515:
	db	"lasttime",0
	align	4
_bb_lasttime:
	dd	0
_516:
	db	"time",0
	align	4
_bb_time:
	dd	0
_517:
	db	"playerImage",0
_67:
	db	":brl.max2d.TImage",0
	align	4
_bb_playerImage:
	dd	_bbNullObject
_518:
	db	"tiTileImage",0
	align	4
_bb_tiTileImage:
	dd	_bbNullObject
_519:
	db	"tiTileImage3",0
	align	4
_bb_tiTileImage3:
	dd	_bbNullObject
_520:
	db	"tiTileImage2",0
	align	4
_bb_tiTileImage2:
	dd	_bbNullObject
_521:
	db	"stuff",0
_522:
	db	"[]:brl.max2d.TImage",0
	align	4
_bb_stuff:
	dd	_bbEmptyArray
_523:
	db	"pground",0
	align	4
_bb_pground:
	dd	_bbNullObject
_524:
	db	"pobj",0
	align	4
_bb_pobj:
	dd	_bbNullObject
_525:
	db	"map",0
_526:
	db	"[,]:Tfeld",0
	align	4
_bb_map:
	dd	_bbEmptyArray
_527:
	db	"inter",0
_528:
	db	"b",0
_bb_inter:
	db	0
_529:
	db	"anim",0
	align	4
_bb_anim:
	dd	0
_530:
	db	"animx",0
	align	4
_bb_animx:
	dd	0
	align	4
_491:
	dd	1
	dd	_492
	dd	1
	dd	_493
	dd	_286
	dd	_494
	dd	1
	dd	_495
	dd	_286
	dd	_496
	dd	4
	dd	_497
	dd	_286
	dd	_bb_igfxWidth
	dd	4
	dd	_498
	dd	_286
	dd	_bb_igfxHeight
	dd	4
	dd	_499
	dd	_286
	dd	_bb_igfxWidthHalf
	dd	4
	dd	_500
	dd	_286
	dd	_bb_igfxHeightHalf
	dd	4
	dd	_501
	dd	_286
	dd	_bb_iMapXSizeGFX
	dd	4
	dd	_502
	dd	_286
	dd	_bb_iMapYSizeGFX
	dd	4
	dd	_503
	dd	_286
	dd	_bb_iMapXSizeObj
	dd	4
	dd	_504
	dd	_286
	dd	_bb_iMapYSizeObj
	dd	4
	dd	_505
	dd	_506
	dd	_bb_iTileMapGFX
	dd	4
	dd	_507
	dd	_506
	dd	_bb_iTileMapObj
	dd	4
	dd	_508
	dd	_286
	dd	_bb_iXOffSetGFX
	dd	4
	dd	_509
	dd	_286
	dd	_bb_iYOffSetGFX
	dd	4
	dd	_510
	dd	_286
	dd	_bb_iXOffSetObj
	dd	4
	dd	_511
	dd	_286
	dd	_bb_iYOffSetObj
	dd	4
	dd	_512
	dd	_513
	dd	_bb_FTimer
	dd	4
	dd	_514
	dd	_286
	dd	_bb_msc
	dd	4
	dd	_515
	dd	_286
	dd	_bb_lasttime
	dd	4
	dd	_516
	dd	_286
	dd	_bb_time
	dd	4
	dd	_517
	dd	_67
	dd	_bb_playerImage
	dd	4
	dd	_518
	dd	_67
	dd	_bb_tiTileImage
	dd	4
	dd	_519
	dd	_67
	dd	_bb_tiTileImage3
	dd	4
	dd	_520
	dd	_67
	dd	_bb_tiTileImage2
	dd	4
	dd	_521
	dd	_522
	dd	_bb_stuff
	dd	4
	dd	_523
	dd	_67
	dd	_bb_pground
	dd	4
	dd	_524
	dd	_67
	dd	_bb_pobj
	dd	4
	dd	_525
	dd	_526
	dd	_bb_map
	dd	4
	dd	_527
	dd	_528
	dd	_bb_inter
	dd	4
	dd	_529
	dd	_286
	dd	_bb_anim
	dd	4
	dd	_530
	dd	_286
	dd	_bb_animx
	dd	0
_65:
	db	"Tfeld",0
_66:
	db	"ground",0
_68:
	db	"obj",0
_69:
	db	"New",0
_70:
	db	"()i",0
_71:
	db	"Delete",0
	align	4
_64:
	dd	2
	dd	_65
	dd	3
	dd	_66
	dd	_67
	dd	8
	dd	3
	dd	_68
	dd	_67
	dd	12
	dd	6
	dd	_69
	dd	_70
	dd	16
	dd	6
	dd	_71
	dd	_70
	dd	20
	dd	0
	align	4
_bb_Tfeld:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_64
	dd	16
	dd	__bb_Tfeld_New
	dd	__bb_Tfeld_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_88:
	db	"D:/Proggen/GardenDefenderx/GardenDefenderMain.bmx",0
	align	4
_87:
	dd	_88
	dd	2
	dd	1
	align	4
_89:
	dd	_88
	dd	3
	dd	1
_91:
	db	"D:/Proggen/GardenDefenderx/Includes/Globals.bmx",0
	align	4
_90:
	dd	_91
	dd	1
	dd	1
	align	4
_92:
	dd	_91
	dd	2
	dd	1
	align	4
_93:
	dd	_91
	dd	3
	dd	1
	align	4
_94:
	dd	0
	align	4
_96:
	dd	_91
	dd	4
	dd	1
	align	4
_98:
	dd	_91
	dd	9
	dd	1
	align	4
_99:
	dd	_91
	dd	10
	dd	1
	align	4
_100:
	dd	_91
	dd	11
	dd	1
	align	4
_102:
	dd	_91
	dd	12
	dd	1
	align	4
_104:
	dd	_91
	dd	14
	dd	1
_105:
	db	"i",0
	align	4
_108:
	dd	_91
	dd	15
	dd	1
_109:
	db	"i",0
	align	4
_112:
	dd	_91
	dd	17
	dd	1
	align	4
_113:
	dd	_91
	dd	18
	dd	1
	align	4
_114:
	dd	_91
	dd	19
	dd	1
	align	4
_115:
	dd	_91
	dd	20
	dd	1
	align	4
_116:
	dd	_88
	dd	6
	dd	1
	align	4
_117:
	dd	_88
	dd	8
	dd	1
	align	4
_118:
	dd	_88
	dd	10
	dd	1
	align	4
_119:
	dd	_88
	dd	12
	dd	1
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	67,111,117,114,105,101,114,32,78,101,119
	align	4
_120:
	dd	_88
	dd	14
	dd	1
	align	4
_123:
	dd	_88
	dd	15
	dd	1
	align	4
_124:
	dd	_88
	dd	16
	dd	1
	align	4
_126:
	dd	_88
	dd	17
	dd	1
	align	4
_128:
	dd	_88
	dd	19
	dd	1
	align	4
_23:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	68,97,116,97,92,112,108,97,121,101,114,46,112,110,103
	align	4
_131:
	dd	_88
	dd	21
	dd	1
	align	4
_24:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	68,97,116,97,92,109,117,100,116,105,108,101,46,112,110,103
	align	4
_134:
	dd	_88
	dd	22
	dd	1
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	68,97,116,97,92,103,114,97,115,115,48,49,46,112,110,103
	align	4
_137:
	dd	_88
	dd	23
	dd	1
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	68,97,116,97,92,104,101,99,107,101,46,112,110,103
	align	4
_140:
	dd	_88
	dd	23
	dd	60
	align	4
_621:
	dd	0x42000000
	align	4
_144:
	dd	_88
	dd	25
	dd	1
_145:
	db	":brl.max2d.TImage",0
	align	4
_148:
	dd	_88
	dd	27
	dd	1
	align	4
_156:
	dd	_88
	dd	28
	dd	1
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	18
	dw	68,97,116,97,92,115,116,111,110,101,116,105,108,101,46,112
	dw	110,103
	align	4
_164:
	dd	_88
	dd	29
	dd	1
	align	4
_172:
	dd	_88
	dd	30
	dd	1
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	68,97,116,97,92,102,108,111,119,101,114,46,112,110,103
	align	4
_180:
	dd	_88
	dd	31
	dd	1
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	68,97,116,97,92,102,108,111,119,101,114,50,46,112,110,103
	align	4
_188:
	dd	_88
	dd	32
	dd	1
	align	4
_30:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	68,97,116,97,92,102,108,111,119,101,114,51,46,112,110,103
	align	4
_196:
	dd	_88
	dd	33
	dd	1
	align	4
_204:
	dd	_88
	dd	33
	dd	42
	align	4
_622:
	dd	0x42000000
	align	4
_210:
	dd	_88
	dd	34
	dd	1
	align	4
_31:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	68,97,116,97,92,104,101,99,107,101,50,46,112,110,103
	align	4
_218:
	dd	_88
	dd	34
	dd	43
	align	4
_623:
	dd	0x42000000
	align	4
_224:
	dd	_88
	dd	35
	dd	1
	align	4
_32:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	68,97,116,97,92,114,104,101,99,107,101,46,112,110,103
	align	4
_232:
	dd	_88
	dd	36
	dd	1
	align	4
_33:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	68,97,116,97,92,98,117,115,99,104,46,112,110,103
	align	4
_240:
	dd	_88
	dd	38
	dd	1
	align	4
_249:
	dd	_88
	dd	44
	dd	1
_250:
	db	":Tfeld",0
	align	4
_253:
	dd	_88
	dd	45
	dd	1
	align	4
_254:
	dd	_88
	dd	47
	dd	1
_288:
	db	"ix",0
	align	4
_287:
	dd	3
	dd	0
	dd	2
	dd	_288
	dd	_286
	dd	-4
	dd	0
	align	4
_258:
	dd	_88
	dd	48
	dd	2
_285:
	db	"iy",0
	align	4
_284:
	dd	3
	dd	0
	dd	2
	dd	_285
	dd	_286
	dd	-8
	dd	0
	align	4
_262:
	dd	_88
	dd	49
	dd	3
	align	4
_272:
	dd	_88
	dd	50
	dd	3
	align	4
_289:
	dd	_88
	dd	53
	dd	1
	align	4
_290:
	dd	_88
	dd	99
	dd	1
	align	4
_488:
	dd	3
	dd	0
	dd	0
	align	4
_291:
	dd	_88
	dd	55
	dd	2
	align	4
_292:
	dd	_88
	dd	56
	dd	2
	align	4
_293:
	dd	_88
	dd	57
	dd	2
	align	4
_294:
	dd	_88
	dd	58
	dd	2
	align	4
_295:
	dd	_88
	dd	60
	dd	2
	align	4
_304:
	dd	3
	dd	0
	dd	0
	align	4
_297:
	dd	_88
	dd	60
	dd	24
	align	4
_305:
	dd	_88
	dd	61
	dd	2
	align	4
_314:
	dd	3
	dd	0
	dd	0
	align	4
_307:
	dd	_88
	dd	61
	dd	24
	align	4
_315:
	dd	_88
	dd	62
	dd	2
	align	4
_324:
	dd	3
	dd	0
	dd	0
	align	4
_317:
	dd	_88
	dd	62
	dd	24
	align	4
_325:
	dd	_88
	dd	63
	dd	2
	align	4
_332:
	dd	3
	dd	0
	dd	0
	align	4
_327:
	dd	_88
	dd	63
	dd	24
	align	4
_333:
	dd	_88
	dd	64
	dd	2
	align	4
_342:
	dd	3
	dd	0
	dd	0
	align	4
_335:
	dd	_88
	dd	64
	dd	24
	align	4
_343:
	dd	_88
	dd	65
	dd	2
	align	4
_352:
	dd	3
	dd	0
	dd	0
	align	4
_345:
	dd	_88
	dd	65
	dd	24
	align	4
_353:
	dd	_88
	dd	66
	dd	2
	align	4
_362:
	dd	3
	dd	0
	dd	0
	align	4
_355:
	dd	_88
	dd	66
	dd	24
	align	4
_363:
	dd	_88
	dd	67
	dd	2
	align	4
_372:
	dd	3
	dd	0
	dd	0
	align	4
_365:
	dd	_88
	dd	67
	dd	24
	align	4
_373:
	dd	_88
	dd	68
	dd	2
	align	4
_382:
	dd	3
	dd	0
	dd	0
	align	4
_375:
	dd	_88
	dd	68
	dd	24
	align	4
_383:
	dd	_88
	dd	69
	dd	2
	align	4
_392:
	dd	3
	dd	0
	dd	0
	align	4
_385:
	dd	_88
	dd	69
	dd	24
	align	4
_393:
	dd	_88
	dd	70
	dd	2
	align	4
_402:
	dd	3
	dd	0
	dd	0
	align	4
_395:
	dd	_88
	dd	70
	dd	24
	align	4
_403:
	dd	_88
	dd	71
	dd	2
	align	4
_410:
	dd	3
	dd	0
	dd	0
	align	4
_405:
	dd	_88
	dd	71
	dd	24
	align	4
_411:
	dd	_88
	dd	73
	dd	2
	align	4
_414:
	dd	3
	dd	0
	dd	0
	align	4
_413:
	dd	_88
	dd	73
	dd	24
	align	4
_415:
	dd	_88
	dd	74
	dd	2
	align	4
_416:
	dd	_88
	dd	75
	dd	2
	align	4
_417:
	dd	_88
	dd	76
	dd	2
_485:
	db	"mx",0
_486:
	db	"my",0
	align	4
_484:
	dd	3
	dd	0
	dd	2
	dd	_485
	dd	_286
	dd	-12
	dd	2
	dd	_486
	dd	_286
	dd	-16
	dd	0
	align	4
_419:
	dd	_88
	dd	77
	dd	3
	align	4
_624:
	dd	0x42000000
	align	4
_421:
	dd	_88
	dd	78
	dd	3
	align	4
_625:
	dd	0x42000000
	align	4
_423:
	dd	_88
	dd	79
	dd	3
	align	4
_424:
	dd	_88
	dd	80
	dd	3
	align	4
_463:
	dd	3
	dd	0
	dd	0
	align	4
_432:
	dd	_88
	dd	81
	dd	4
	align	4
_433:
	dd	_88
	dd	82
	dd	4
	align	4
_447:
	dd	3
	dd	0
	dd	0
	align	4
_435:
	dd	_88
	dd	82
	dd	25
	align	4
_448:
	dd	_88
	dd	83
	dd	4
	align	4
_462:
	dd	3
	dd	0
	dd	0
	align	4
_450:
	dd	_88
	dd	83
	dd	25
	align	4
_464:
	dd	_88
	dd	86
	dd	3
	align	4
_465:
	dd	_88
	dd	87
	dd	3
	align	4
_466:
	dd	_88
	dd	88
	dd	3
	align	4
_467:
	dd	_88
	dd	89
	dd	3
	align	4
_468:
	dd	_88
	dd	90
	dd	3
	align	4
_471:
	dd	3
	dd	0
	dd	0
	align	4
_470:
	dd	_88
	dd	90
	dd	19
	align	4
_472:
	dd	_88
	dd	91
	dd	3
	align	4
_475:
	dd	3
	dd	0
	dd	0
	align	4
_474:
	dd	_88
	dd	91
	dd	16
	align	4
_476:
	dd	_88
	dd	93
	dd	3
_483:
	db	"x",0
	align	4
_482:
	dd	3
	dd	0
	dd	2
	dd	_483
	dd	_286
	dd	-20
	dd	0
	align	4
_479:
	dd	_88
	dd	94
	dd	4
	align	4
_487:
	dd	_88
	dd	97
	dd	2
_537:
	db	"Self",0
_538:
	db	":Tfeld",0
	align	4
_536:
	dd	1
	dd	_69
	dd	2
	dd	_537
	dd	_538
	dd	-4
	dd	0
	align	4
_535:
	dd	3
	dd	0
	dd	0
_607:
	db	"DrawMapGFX",0
	align	4
_606:
	dd	1
	dd	_607
	dd	0
	align	4
_544:
	dd	_88
	dd	102
	dd	2
	align	4
_569:
	dd	3
	dd	0
	dd	2
	dd	_288
	dd	_286
	dd	-4
	dd	0
	align	4
_548:
	dd	_88
	dd	103
	dd	3
	align	4
_568:
	dd	3
	dd	0
	dd	2
	dd	_285
	dd	_286
	dd	-8
	dd	0
	align	4
_552:
	dd	_88
	dd	104
	dd	4
	align	4
_567:
	dd	3
	dd	0
	dd	0
	align	4
_560:
	dd	_88
	dd	104
	dd	31
	align	4
_570:
	dd	_88
	dd	107
	dd	2
	align	4
_595:
	dd	3
	dd	0
	dd	2
	dd	_288
	dd	_286
	dd	-12
	dd	0
	align	4
_574:
	dd	_88
	dd	108
	dd	3
	align	4
_594:
	dd	3
	dd	0
	dd	2
	dd	_285
	dd	_286
	dd	-16
	dd	0
	align	4
_578:
	dd	_88
	dd	109
	dd	4
	align	4
_593:
	dd	3
	dd	0
	dd	0
	align	4
_586:
	dd	_88
	dd	109
	dd	28
	align	4
_596:
	dd	_88
	dd	112
	dd	2
	align	4
_605:
	dd	3
	dd	0
	dd	2
	dd	_288
	dd	_286
	dd	-20
	dd	0
	align	4
_600:
	dd	_88
	dd	113
	dd	3
	align	4
_604:
	dd	3
	dd	0
	dd	2
	dd	_285
	dd	_286
	dd	-24
	dd	0
_615:
	db	"reset_draw",0
	align	4
_614:
	dd	1
	dd	_615
	dd	0
	align	4
_608:
	dd	_88
	dd	121
	dd	2
	align	4
_609:
	dd	_88
	dd	122
	dd	2
	align	4
_610:
	dd	_88
	dd	123
	dd	2
	align	4
_611:
	dd	_88
	dd	124
	dd	2
	align	4
_612:
	dd	_88
	dd	125
	dd	2
	align	4
_613:
	dd	_88
	dd	126
	dd	2
_618:
	db	"calc_move",0
_619:
	db	"speed",0
_620:
	db	"f",0
	align	4
_617:
	dd	1
	dd	_618
	dd	2
	dd	_619
	dd	_620
	dd	-4
	dd	0
	align	4
_616:
	dd	_88
	dd	130
	dd	2
	align	4
_730:
	dd	0x42c80000
