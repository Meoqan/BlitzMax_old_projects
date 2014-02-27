	format	MS COFF
	extrn	___bb_appstub_appstub
	extrn	___bb_audio_audio
	extrn	___bb_blitz_blitz
	extrn	___bb_bmploader_bmploader
	extrn	___bb_d3d7max2d_d3d7max2d
	extrn	___bb_directsoundaudio_directsoundaudio
	extrn	___bb_drivers_drivers
	extrn	___bb_eventqueue_eventqueue
	extrn	___bb_freeaudioaudio_freeaudioaudio
	extrn	___bb_freejoy_freejoy
	extrn	___bb_freeprocess_freeprocess
	extrn	___bb_freetypefont_freetypefont
	extrn	___bb_glew_glew
	extrn	___bb_gnet_gnet
	extrn	___bb_jpgloader_jpgloader
	extrn	___bb_linkedlist_linkedlist
	extrn	___bb_macos_macos
	extrn	___bb_maxutil_maxutil
	extrn	___bb_oggloader_oggloader
	extrn	___bb_openalaudio_openalaudio
	extrn	___bb_pngloader_pngloader
	extrn	___bb_random_random
	extrn	___bb_reflection_reflection
	extrn	___bb_retro_retro
	extrn	___bb_tgaloader_tgaloader
	extrn	___bb_timer_timer
	extrn	___bb_wavloader_wavloader
	extrn	_bbEmptyString
	extrn	_bbEnd
	extrn	_bbGCFree
	extrn	_bbNullObject
	extrn	_bbObjectClass
	extrn	_bbObjectCompare
	extrn	_bbObjectCtor
	extrn	_bbObjectDtor
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
	extrn	_bbStringToInt
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_eventqueue_EventID
	extrn	_brl_eventqueue_EventSource
	extrn	_brl_eventqueue_WaitEvent
	extrn	_brl_linkedlist_CreateList
	extrn	_maxgui_maxgui_ButtonState
	extrn	_maxgui_maxgui_CreateButton
	extrn	_maxgui_maxgui_CreateLabel
	extrn	_maxgui_maxgui_CreateTextField
	extrn	_maxgui_maxgui_CreateWindow
	extrn	_maxgui_maxgui_DisableGadget
	extrn	_maxgui_maxgui_EnableGadget
	extrn	_maxgui_maxgui_SetButtonState
	public	__bb_Taction_Delete
	public	__bb_Taction_New
	public	__bb_Tglobalaction_Delete
	public	__bb_Tglobalaction_New
	public	__bb_main
	public	_bb_Taction
	public	_bb_Tglobalaction
	public	_bb_WaypointEWindow
	public	_bb_actionlist
	public	_bb_globalaction
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	cmp	dword [_199],0
	je	_200
	mov	eax,0
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_200:
	mov	dword [_199],1
	mov	dword [ebp-4],_bbNullObject
	push	ebp
	push	_191
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_linkedlist_linkedlist
	call	___bb_random_random
	call	___bb_retro_retro
	call	___bb_audio_audio
	call	___bb_wavloader_wavloader
	call	___bb_oggloader_oggloader
	call	___bb_directsoundaudio_directsoundaudio
	call	___bb_jpgloader_jpgloader
	call	___bb_pngloader_pngloader
	call	___bb_drivers_drivers
	call	___bb_appstub_appstub
	call	___bb_bmploader_bmploader
	call	___bb_d3d7max2d_d3d7max2d
	call	___bb_eventqueue_eventqueue
	call	___bb_freeaudioaudio_freeaudioaudio
	call	___bb_freetypefont_freetypefont
	call	___bb_gnet_gnet
	call	___bb_maxutil_maxutil
	call	___bb_openalaudio_openalaudio
	call	___bb_reflection_reflection
	call	___bb_tgaloader_tgaloader
	call	___bb_timer_timer
	call	___bb_freejoy_freejoy
	call	___bb_freeprocess_freeprocess
	call	___bb_glew_glew
	call	___bb_macos_macos
	push	_bb_Taction
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_Tglobalaction
	call	_bbObjectRegisterType
	add	esp,4
	push	_171
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_174]
	and	eax,1
	cmp	eax,0
	jne	_175
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_actionlist],eax
	or	dword [_174],1
_175:
	push	_176
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_174]
	and	eax,2
	cmp	eax,0
	jne	_178
	push	_bb_Tglobalaction
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_globalaction],eax
	or	dword [_174],2
_178:
	push	_179
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_Taction
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-4],eax
	push	_181
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_183
	call	_brl_blitz_NullObjectError
_183:
	mov	ebx,_20
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_188
	push	eax
	call	_bbGCFree
	add	esp,4
_188:
	mov	dword [esi+8],ebx
	push	_189
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	call	_bb_WaypointEWindow
	add	esp,4
	push	_190
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	mov	ebx,0
	jmp	_154
_154:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Taction_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_203
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Taction
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],edx
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+32],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+36],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+40],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+44],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+48],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+52],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+56],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+60],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+64],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+68],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+72],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+76],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+80],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+84],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+88],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+92],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+96],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+100],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+104],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+108],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+112],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+116],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+120],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+124],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+128],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+132],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+136],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+140],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+144],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+148],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+152],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+156],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+160],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+164],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+168],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+172],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+176],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+180],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+184],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+188],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+192],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+196],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+200],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+204],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+208],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+212],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+216],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+220],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+224],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+228],0
	push	ebp
	push	_202
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_157
_157:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Taction_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_160:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_207
	push	eax
	call	_bbGCFree
	add	esp,4
_207:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_205
_205:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tglobalaction_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_213
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Tglobalaction
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],0
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],edx
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],0
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],edx
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+32],0
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+36],edx
	mov	eax,dword [ebp-4]
	mov	dword [eax+40],0
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+44],edx
	mov	eax,dword [ebp-4]
	mov	dword [eax+48],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+52],0
	push	ebp
	push	_212
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_163
_163:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tglobalaction_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_166:
	mov	eax,dword [ebx+44]
	dec	dword [eax+4]
	jnz	_216
	push	eax
	call	_bbGCFree
	add	esp,4
_216:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_218
	push	eax
	call	_bbGCFree
	add	esp,4
_218:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_220
	push	eax
	call	_bbGCFree
	add	esp,4
_220:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_222
	push	eax
	call	_bbGCFree
	add	esp,4
_222:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_214
_214:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_WaypointEWindow:
	push	ebp
	mov	ebp,esp
	sub	esp,336
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],0
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-20],_bbNullObject
	mov	dword [ebp-24],_bbNullObject
	mov	dword [ebp-28],_bbNullObject
	mov	dword [ebp-32],0
	mov	dword [ebp-36],0
	mov	dword [ebp-40],_bbNullObject
	mov	dword [ebp-44],_bbNullObject
	mov	dword [ebp-48],_bbNullObject
	mov	dword [ebp-52],_bbNullObject
	mov	dword [ebp-56],_bbNullObject
	mov	dword [ebp-60],_bbNullObject
	mov	dword [ebp-64],_bbNullObject
	mov	dword [ebp-68],_bbNullObject
	mov	dword [ebp-72],_bbNullObject
	mov	dword [ebp-76],_bbNullObject
	mov	dword [ebp-80],_bbNullObject
	mov	dword [ebp-84],_bbNullObject
	mov	dword [ebp-88],_bbNullObject
	mov	dword [ebp-92],_bbNullObject
	mov	dword [ebp-96],_bbNullObject
	mov	dword [ebp-100],_bbNullObject
	mov	dword [ebp-104],_bbNullObject
	mov	dword [ebp-108],_bbNullObject
	mov	dword [ebp-112],_bbNullObject
	mov	dword [ebp-116],_bbNullObject
	mov	dword [ebp-120],_bbNullObject
	mov	dword [ebp-124],_bbNullObject
	mov	dword [ebp-128],_bbNullObject
	mov	dword [ebp-132],_bbNullObject
	mov	dword [ebp-136],_bbNullObject
	mov	dword [ebp-140],_bbNullObject
	mov	dword [ebp-144],_bbNullObject
	mov	dword [ebp-148],_bbNullObject
	mov	dword [ebp-152],_bbNullObject
	mov	dword [ebp-156],_bbNullObject
	mov	dword [ebp-160],_bbNullObject
	mov	dword [ebp-164],_bbNullObject
	mov	dword [ebp-168],_bbNullObject
	mov	dword [ebp-172],_bbNullObject
	mov	dword [ebp-176],_bbNullObject
	mov	dword [ebp-180],_bbNullObject
	mov	dword [ebp-184],_bbNullObject
	mov	dword [ebp-188],_bbNullObject
	mov	dword [ebp-192],_bbNullObject
	mov	dword [ebp-196],_bbNullObject
	mov	dword [ebp-200],_bbNullObject
	mov	dword [ebp-204],_bbNullObject
	mov	dword [ebp-208],_bbNullObject
	mov	dword [ebp-212],_bbNullObject
	mov	dword [ebp-216],_bbNullObject
	mov	dword [ebp-220],_bbNullObject
	mov	dword [ebp-224],_bbNullObject
	mov	dword [ebp-228],_bbNullObject
	mov	dword [ebp-232],_bbNullObject
	mov	dword [ebp-236],_bbNullObject
	mov	dword [ebp-240],_bbNullObject
	mov	dword [ebp-244],_bbNullObject
	mov	dword [ebp-248],_bbNullObject
	mov	dword [ebp-252],_bbNullObject
	mov	dword [ebp-256],_bbNullObject
	mov	dword [ebp-260],_bbNullObject
	mov	dword [ebp-264],_bbNullObject
	mov	dword [ebp-268],_bbNullObject
	mov	dword [ebp-272],_bbNullObject
	mov	dword [ebp-276],_bbNullObject
	mov	dword [ebp-280],_bbNullObject
	mov	dword [ebp-284],_bbNullObject
	mov	dword [ebp-288],_bbNullObject
	mov	dword [ebp-292],_bbNullObject
	mov	dword [ebp-296],_bbNullObject
	mov	dword [ebp-300],_bbNullObject
	mov	dword [ebp-304],_bbNullObject
	mov	dword [ebp-308],_bbNullObject
	mov	dword [ebp-312],_bbNullObject
	mov	dword [ebp-316],_bbNullObject
	mov	dword [ebp-320],_bbNullObject
	mov	dword [ebp-324],_bbNullObject
	mov	dword [ebp-328],_bbNullObject
	mov	dword [ebp-332],_bbNullObject
	mov	dword [ebp-336],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_1257
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_223
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],1
	push	_225
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-20],_bbNullObject
	mov	dword [ebp-24],_bbNullObject
	mov	dword [ebp-28],_bbNullObject
	push	_231
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],0
	mov	dword [ebp-36],20
	push	_234
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],_bbNullObject
	push	_236
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],_bbNullObject
	mov	dword [ebp-48],_bbNullObject
	mov	dword [ebp-52],_bbNullObject
	push	_240
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],_bbNullObject
	mov	dword [ebp-60],_bbNullObject
	mov	dword [ebp-64],_bbNullObject
	mov	dword [ebp-68],_bbNullObject
	mov	dword [ebp-72],_bbNullObject
	mov	dword [ebp-76],_bbNullObject
	push	_247
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-80],_bbNullObject
	push	_249
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-84],_bbNullObject
	mov	dword [ebp-88],_bbNullObject
	mov	dword [ebp-92],_bbNullObject
	push	_253
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],_bbNullObject
	push	_255
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-100],_bbNullObject
	mov	dword [ebp-104],_bbNullObject
	push	_258
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-108],_bbNullObject
	mov	dword [ebp-112],_bbNullObject
	mov	dword [ebp-116],_bbNullObject
	mov	dword [ebp-120],_bbNullObject
	mov	dword [ebp-124],_bbNullObject
	mov	dword [ebp-128],_bbNullObject
	push	_265
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-132],_bbNullObject
	mov	dword [ebp-136],_bbNullObject
	mov	dword [ebp-140],_bbNullObject
	mov	dword [ebp-144],_bbNullObject
	push	_270
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-148],_bbNullObject
	push	_272
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-152],_bbNullObject
	mov	dword [ebp-156],_bbNullObject
	mov	dword [ebp-160],_bbNullObject
	mov	dword [ebp-164],_bbNullObject
	push	_277
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-168],_bbNullObject
	push	_279
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-172],_bbNullObject
	mov	dword [ebp-176],_bbNullObject
	mov	dword [ebp-180],_bbNullObject
	mov	dword [ebp-184],_bbNullObject
	push	_284
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-188],_bbNullObject
	mov	dword [ebp-192],_bbNullObject
	mov	dword [ebp-196],_bbNullObject
	mov	dword [ebp-200],_bbNullObject
	push	_289
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-204],_bbNullObject
	mov	dword [ebp-208],_bbNullObject
	push	_292
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-212],_bbNullObject
	mov	dword [ebp-216],_bbNullObject
	push	_295
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-220],_bbNullObject
	mov	dword [ebp-224],_bbNullObject
	mov	dword [ebp-228],_bbNullObject
	push	_299
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-232],_bbNullObject
	mov	dword [ebp-236],_bbNullObject
	mov	dword [ebp-240],_bbNullObject
	push	_303
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-244],_bbNullObject
	push	_305
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-248],_bbNullObject
	mov	dword [ebp-252],_bbNullObject
	push	_308
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-256],_bbNullObject
	mov	dword [ebp-260],_bbNullObject
	push	_311
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-264],_bbNullObject
	mov	dword [ebp-268],_bbNullObject
	mov	dword [ebp-272],_bbNullObject
	push	_315
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-276],_bbNullObject
	mov	dword [ebp-280],_bbNullObject
	mov	dword [ebp-284],_bbNullObject
	push	_319
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-288],_bbNullObject
	push	_321
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-292],_bbNullObject
	mov	dword [ebp-296],_bbNullObject
	push	_324
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-300],_bbNullObject
	mov	dword [ebp-304],_bbNullObject
	push	_327
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-308],_bbNullObject
	push	_329
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-312],_bbNullObject
	push	_331
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-316],_bbNullObject
	mov	dword [ebp-320],_bbNullObject
	push	_334
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-324],_bbNullObject
	mov	dword [ebp-328],_bbNullObject
	push	_337
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-332],_bbNullObject
	push	_339
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-336],_bbNullObject
	push	_341
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	513
	push	_bbNullObject
	push	750
	push	800
	push	0
	push	0
	push	_21
	call	_maxgui_maxgui_CreateWindow
	add	esp,28
	mov	dword [ebp-12],eax
	push	_342
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],-7
	push	_343
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	15
	push	260
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	push	eax
	push	30
	push	_22
	call	_maxgui_maxgui_CreateLabel
	add	esp,28
	push	_344
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_345
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	200
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	30
	push	_23
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-40],eax
	push	_346
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_347
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	60
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	50
	push	_24
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-44],eax
	push	_348
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	60
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	110
	push	_25
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-48],eax
	push	_349
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	60
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	170
	push	_26
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-52],eax
	push	_350
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_351
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	15
	push	20
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	push	eax
	push	60
	push	_27
	call	_maxgui_maxgui_CreateLabel
	add	esp,28
	push	_352
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	20
	push	50
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	85
	call	_maxgui_maxgui_CreateTextField
	add	esp,24
	mov	dword [ebp-56],eax
	push	_353
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	15
	push	60
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	push	eax
	push	140
	push	_28
	call	_maxgui_maxgui_CreateLabel
	add	esp,28
	push	_354
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	40
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	200
	push	_29
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-60],eax
	push	_355
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	20
	push	50
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	245
	call	_maxgui_maxgui_CreateTextField
	add	esp,24
	mov	dword [ebp-64],eax
	push	_356
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	15
	push	40
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	push	eax
	push	300
	push	_30
	call	_maxgui_maxgui_CreateLabel
	add	esp,28
	push	_357
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	50
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	340
	push	_31
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-68],eax
	push	_358
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	20
	push	50
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	390
	call	_maxgui_maxgui_CreateTextField
	add	esp,24
	mov	dword [ebp-72],eax
	push	_359
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	15
	push	40
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	push	eax
	push	445
	push	_32
	call	_maxgui_maxgui_CreateLabel
	add	esp,28
	push	_360
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	60
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	490
	push	_33
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-76],eax
	push	_361
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_362
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_363
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	200
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	30
	push	_34
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-80],eax
	push	_364
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_365
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	200
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	60
	push	_35
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-96],eax
	push	_366
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_367
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	60
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	90
	push	_24
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-84],eax
	push	_368
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	60
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	150
	push	_25
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-88],eax
	push	_369
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	60
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	210
	push	_26
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-92],eax
	push	_370
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_371
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	130
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	90
	push	_36
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-100],eax
	push	_372
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	20
	push	50
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	220
	call	_maxgui_maxgui_CreateTextField
	add	esp,24
	mov	dword [ebp-104],eax
	push	_373
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	15
	push	60
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	push	eax
	push	275
	push	_28
	call	_maxgui_maxgui_CreateLabel
	add	esp,28
	push	_374
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_375
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	150
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	90
	push	_37
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-108],eax
	push	_376
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	20
	push	50
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	240
	call	_maxgui_maxgui_CreateTextField
	add	esp,24
	mov	dword [ebp-112],eax
	push	_377
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	15
	push	60
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	push	eax
	push	295
	push	_38
	call	_maxgui_maxgui_CreateLabel
	add	esp,28
	push	_378
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	50
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	355
	push	_39
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-116],eax
	push	_379
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	20
	push	50
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	405
	call	_maxgui_maxgui_CreateTextField
	add	esp,24
	mov	dword [ebp-120],eax
	push	_380
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	15
	push	30
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	push	eax
	push	460
	push	_40
	call	_maxgui_maxgui_CreateLabel
	add	esp,28
	push	_381
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	80
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	490
	push	_41
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-124],eax
	push	_382
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	20
	push	50
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	575
	call	_maxgui_maxgui_CreateTextField
	add	esp,24
	mov	dword [ebp-128],eax
	push	_383
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	15
	push	120
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	push	eax
	push	630
	push	_42
	call	_maxgui_maxgui_CreateLabel
	add	esp,28
	push	_384
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_385
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	100
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	90
	push	_43
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-132],eax
	push	_386
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	20
	push	50
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	200
	call	_maxgui_maxgui_CreateTextField
	add	esp,24
	mov	dword [ebp-136],eax
	push	_387
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	15
	push	60
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	push	eax
	push	255
	push	_38
	call	_maxgui_maxgui_CreateLabel
	add	esp,28
	push	_388
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	20
	push	50
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	315
	call	_maxgui_maxgui_CreateTextField
	add	esp,24
	mov	dword [ebp-140],eax
	push	_389
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	15
	push	80
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	push	eax
	push	370
	push	_44
	call	_maxgui_maxgui_CreateLabel
	add	esp,28
	push	_390
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	20
	push	50
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	450
	call	_maxgui_maxgui_CreateTextField
	add	esp,24
	mov	dword [ebp-144],eax
	push	_391
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	15
	push	60
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	push	eax
	push	505
	push	_45
	call	_maxgui_maxgui_CreateLabel
	add	esp,28
	push	_392
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_393
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	200
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	60
	push	_46
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-148],eax
	push	_394
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_395
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	130
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	90
	push	_47
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-152],eax
	push	_396
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	60
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	240
	push	_25
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-156],eax
	push	_397
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	60
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	300
	push	_26
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-160],eax
	push	_398
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	60
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	360
	push	_48
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-164],eax
	push	_399
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_400
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	230
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	90
	push	_49
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-168],eax
	push	_401
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_402
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	110
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	90
	push	_50
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-172],eax
	push	_403
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	20
	push	50
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	210
	call	_maxgui_maxgui_CreateTextField
	add	esp,24
	mov	dword [ebp-176],eax
	push	_404
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	15
	push	60
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	push	eax
	push	265
	push	_28
	call	_maxgui_maxgui_CreateLabel
	add	esp,28
	push	_405
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	50
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	325
	push	_51
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-180],eax
	push	_406
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	20
	push	50
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	380
	call	_maxgui_maxgui_CreateTextField
	add	esp,24
	mov	dword [ebp-184],eax
	push	_407
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	15
	push	80
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	push	eax
	push	435
	push	_52
	call	_maxgui_maxgui_CreateLabel
	add	esp,28
	push	_408
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_409
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	130
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	90
	push	_53
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-188],eax
	push	_410
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	20
	push	50
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	225
	call	_maxgui_maxgui_CreateTextField
	add	esp,24
	mov	dword [ebp-192],eax
	push	_411
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	15
	push	60
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	push	eax
	push	280
	push	_38
	call	_maxgui_maxgui_CreateLabel
	add	esp,28
	push	_412
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	90
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	340
	push	_54
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-196],eax
	push	_413
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	20
	push	50
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	435
	call	_maxgui_maxgui_CreateTextField
	add	esp,24
	mov	dword [ebp-200],eax
	push	_414
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	15
	push	70
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	push	eax
	push	490
	push	_28
	call	_maxgui_maxgui_CreateLabel
	add	esp,28
	push	_415
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	50
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	560
	push	_39
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-204],eax
	push	_416
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	20
	push	50
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	610
	call	_maxgui_maxgui_CreateTextField
	add	esp,24
	mov	dword [ebp-208],eax
	push	_417
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	15
	push	70
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	push	eax
	push	665
	push	_40
	call	_maxgui_maxgui_CreateLabel
	add	esp,28
	push	_418
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_419
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	90
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	90
	push	_41
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-212],eax
	push	_420
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	20
	push	50
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	180
	call	_maxgui_maxgui_CreateTextField
	add	esp,24
	mov	dword [ebp-216],eax
	push	_421
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	15
	push	120
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	push	eax
	push	235
	push	_42
	call	_maxgui_maxgui_CreateLabel
	add	esp,28
	push	_422
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_423
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	130
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	90
	push	_55
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-220],eax
	push	_424
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	60
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	230
	push	_25
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-224],eax
	push	_425
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	60
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	290
	push	_26
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-228],eax
	push	_426
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_427
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	60
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	90
	push	_56
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-232],eax
	push	_428
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	20
	push	50
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	155
	call	_maxgui_maxgui_CreateTextField
	add	esp,24
	mov	dword [ebp-236],eax
	push	_429
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	15
	push	150
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	push	eax
	push	210
	push	_57
	call	_maxgui_maxgui_CreateLabel
	add	esp,28
	push	_430
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	60
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	360
	push	_58
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-240],eax
	push	_431
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_432
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	200
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	60
	push	_59
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-244],eax
	push	_433
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_434
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	90
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	90
	push	_60
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-248],eax
	push	_435
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	20
	push	50
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	190
	call	_maxgui_maxgui_CreateTextField
	add	esp,24
	mov	dword [ebp-252],eax
	push	_436
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	15
	push	150
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	push	eax
	push	245
	push	_32
	call	_maxgui_maxgui_CreateLabel
	add	esp,28
	push	_437
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_438
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	110
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	90
	push	_61
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-256],eax
	push	_439
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	20
	push	50
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	210
	call	_maxgui_maxgui_CreateTextField
	add	esp,24
	mov	dword [ebp-260],eax
	push	_440
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	15
	push	150
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	push	eax
	push	265
	push	_62
	call	_maxgui_maxgui_CreateLabel
	add	esp,28
	push	_441
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_442
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	110
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	90
	push	_63
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-264],eax
	push	_443
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	20
	push	50
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	210
	call	_maxgui_maxgui_CreateTextField
	add	esp,24
	mov	dword [ebp-268],eax
	push	_444
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	15
	push	70
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	push	eax
	push	265
	push	_64
	call	_maxgui_maxgui_CreateLabel
	add	esp,28
	push	_445
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	110
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	335
	push	_27
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-272],eax
	push	_446
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_447
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	110
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	90
	push	_61
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-276],eax
	push	_448
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	20
	push	50
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	210
	call	_maxgui_maxgui_CreateTextField
	add	esp,24
	mov	dword [ebp-280],eax
	push	_449
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	15
	push	70
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	push	eax
	push	265
	push	_64
	call	_maxgui_maxgui_CreateLabel
	add	esp,28
	push	_450
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	110
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	335
	push	_27
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-284],eax
	push	_451
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_452
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_453
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	300
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	30
	push	_65
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-288],eax
	push	_454
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_455
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	15
	push	70
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	push	eax
	push	60
	push	_66
	call	_maxgui_maxgui_CreateLabel
	add	esp,28
	push	_456
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_457
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	60
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	90
	push	_67
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-292],eax
	push	_458
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	20
	push	50
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	160
	call	_maxgui_maxgui_CreateTextField
	add	esp,24
	mov	dword [ebp-296],eax
	push	_459
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_460
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	100
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	90
	push	_68
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-300],eax
	push	_461
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	20
	push	50
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	200
	call	_maxgui_maxgui_CreateTextField
	add	esp,24
	mov	dword [ebp-304],eax
	push	_462
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_463
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	150
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	90
	push	_69
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-308],eax
	push	_464
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_465
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	150
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	90
	push	_70
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-312],eax
	push	_466
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_467
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	15
	push	70
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	push	eax
	push	60
	push	_71
	call	_maxgui_maxgui_CreateLabel
	add	esp,28
	push	_468
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_469
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	60
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	90
	push	_67
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-316],eax
	push	_470
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	20
	push	50
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	160
	call	_maxgui_maxgui_CreateTextField
	add	esp,24
	mov	dword [ebp-320],eax
	push	_471
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_472
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	100
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	90
	push	_68
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-324],eax
	push	_473
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	20
	push	50
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	200
	call	_maxgui_maxgui_CreateTextField
	add	esp,24
	mov	dword [ebp-328],eax
	push	_474
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_475
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	150
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	90
	push	_69
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-332],eax
	push	_476
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_477
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	dword [ebp-12]
	push	20
	push	150
	mov	eax,dword [ebp-32]
	imul	eax,dword [ebp-36]
	add	eax,125
	sub	eax,3
	push	eax
	push	90
	push	_70
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-336],eax
	push	_478
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	push	_479
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	push	dword [ebp-12]
	push	30
	push	100
	push	625
	push	600
	push	_72
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-16],eax
	push	_480
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	push	dword [ebp-12]
	push	30
	push	100
	push	625
	push	500
	push	_73
	call	_maxgui_maxgui_CreateButton
	add	esp,28
	mov	dword [ebp-20],eax
	push	_481
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_74
_76:
	mov	eax,ebp
	push	eax
	push	_1255
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_482
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_eventqueue_WaitEvent
	push	_483
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_eventqueue_EventID
	cmp	eax,16387
	je	_486
	cmp	eax,8193
	je	_487
	jmp	_485
_486:
	mov	eax,ebp
	push	eax
	push	_497
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_488
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_eventqueue_EventSource
	cmp	eax,dword [ebp-12]
	je	_491
	jmp	_490
_491:
	mov	eax,ebp
	push	eax
	push	_496
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_492
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_494
	call	_brl_blitz_NullObjectError
_494:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+180]
	add	esp,4
	push	_495
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	call	dword [_bbOnDebugLeaveScope]
	jmp	_490
_490:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_485
_487:
	mov	eax,ebp
	push	eax
	push	_808
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_498
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_eventqueue_EventSource
	cmp	eax,dword [ebp-16]
	je	_501
	cmp	eax,dword [ebp-20]
	je	_502
	cmp	eax,dword [ebp-44]
	je	_503
	cmp	eax,dword [ebp-48]
	je	_504
	cmp	eax,dword [ebp-52]
	je	_505
	cmp	eax,dword [ebp-84]
	je	_506
	cmp	eax,dword [ebp-88]
	je	_507
	cmp	eax,dword [ebp-92]
	je	_508
	cmp	eax,dword [ebp-156]
	je	_509
	cmp	eax,dword [ebp-160]
	je	_510
	cmp	eax,dword [ebp-164]
	je	_511
	cmp	eax,dword [ebp-292]
	je	_512
	cmp	eax,dword [ebp-300]
	je	_513
	cmp	eax,dword [ebp-308]
	je	_514
	cmp	eax,dword [ebp-312]
	je	_515
	cmp	eax,dword [ebp-316]
	je	_516
	cmp	eax,dword [ebp-324]
	je	_517
	cmp	eax,dword [ebp-332]
	je	_518
	cmp	eax,dword [ebp-336]
	je	_519
	jmp	_500
_501:
	mov	eax,ebp
	push	eax
	push	_743
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_520
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_522
	call	_brl_blitz_NullObjectError
_522:
	mov	dword [ebx+12],0
	push	_524
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_526
	call	_brl_blitz_NullObjectError
_526:
	mov	dword [ebx+16],0
	push	_528
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_530
	call	_brl_blitz_NullObjectError
_530:
	mov	dword [ebx+24],0
	push	_532
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_534
	call	_brl_blitz_NullObjectError
_534:
	mov	dword [ebx+28],0
	push	_536
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_538
	call	_brl_blitz_NullObjectError
_538:
	mov	dword [ebx+32],0
	push	_540
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-40]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_541
	mov	eax,ebp
	push	eax
	push	_598
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_542
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_544
	call	_brl_blitz_NullObjectError
_544:
	mov	dword [ebx+12],1
	push	_546
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-44]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_547
	mov	eax,ebp
	push	eax
	push	_552
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_548
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_550
	call	_brl_blitz_NullObjectError
_550:
	mov	dword [ebx+16],1
	call	dword [_bbOnDebugLeaveScope]
_547:
	push	_553
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-48]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_554
	mov	eax,ebp
	push	eax
	push	_559
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_555
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_557
	call	_brl_blitz_NullObjectError
_557:
	mov	dword [ebx+16],2
	call	dword [_bbOnDebugLeaveScope]
_554:
	push	_560
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-52]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_561
	mov	eax,ebp
	push	eax
	push	_566
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_562
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_564
	call	_brl_blitz_NullObjectError
_564:
	mov	dword [ebx+16],3
	call	dword [_bbOnDebugLeaveScope]
_561:
	push	_567
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_569
	call	_brl_blitz_NullObjectError
_569:
	mov	esi,dword [ebp-56]
	cmp	esi,_bbNullObject
	jne	_572
	call	_brl_blitz_NullObjectError
_572:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+208]
	add	esp,4
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebx+20],eax
	push	_573
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-60]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_574
	mov	eax,ebp
	push	eax
	push	_581
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_575
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_577
	call	_brl_blitz_NullObjectError
_577:
	mov	esi,dword [ebp-64]
	cmp	esi,_bbNullObject
	jne	_580
	call	_brl_blitz_NullObjectError
_580:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+208]
	add	esp,4
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebx+24],eax
	call	dword [_bbOnDebugLeaveScope]
_574:
	push	_582
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-68]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_583
	mov	eax,ebp
	push	eax
	push	_597
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_584
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_586
	call	_brl_blitz_NullObjectError
_586:
	mov	esi,dword [ebp-72]
	cmp	esi,_bbNullObject
	jne	_589
	call	_brl_blitz_NullObjectError
_589:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+208]
	add	esp,4
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebx+28],eax
	push	_590
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-76]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_591
	mov	eax,ebp
	push	eax
	push	_596
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_592
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_594
	call	_brl_blitz_NullObjectError
_594:
	mov	dword [ebx+32],1
	call	dword [_bbOnDebugLeaveScope]
_591:
	call	dword [_bbOnDebugLeaveScope]
_583:
	call	dword [_bbOnDebugLeaveScope]
_541:
	push	_599
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_601
	call	_brl_blitz_NullObjectError
_601:
	mov	dword [ebx+36],0
	push	_603
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-80]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_604
	mov	eax,ebp
	push	eax
	push	_738
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_605
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_607
	call	_brl_blitz_NullObjectError
_607:
	mov	dword [ebx+36],1
	push	_609
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-96]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_610
	mov	eax,ebp
	push	eax
	push	_648
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_611
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-84]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_612
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-88]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_613
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-92]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_614
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-84]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	jne	_615
	push	dword [ebp-88]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
_615:
	cmp	eax,0
	jne	_617
	push	dword [ebp-92]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
_617:
	cmp	eax,0
	je	_619
	mov	eax,ebp
	push	eax
	push	_647
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_620
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-100]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_621
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-100]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_622
	mov	eax,ebp
	push	eax
	push	_624
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_623
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-104]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_622:
	push	_625
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-108]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_626
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-108]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_627
	mov	eax,ebp
	push	eax
	push	_639
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_628
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-112]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_629
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-116]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_630
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-116]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_631
	mov	eax,ebp
	push	eax
	push	_633
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_632
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-120]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_631:
	push	_634
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-124]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_635
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-124]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_636
	mov	eax,ebp
	push	eax
	push	_638
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_637
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-128]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_636:
	call	dword [_bbOnDebugLeaveScope]
_627:
	push	_640
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-132]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_641
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-132]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_642
	mov	eax,ebp
	push	eax
	push	_646
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_643
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-136]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_644
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-140]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_645
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-144]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_642:
	call	dword [_bbOnDebugLeaveScope]
_619:
	call	dword [_bbOnDebugLeaveScope]
_610:
	push	_649
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-148]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_650
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-148]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_651
	mov	eax,ebp
	push	eax
	push	_711
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_652
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-152]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_653
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-152]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_654
	mov	eax,ebp
	push	eax
	push	_696
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_655
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-156]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_656
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-160]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_657
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-164]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_658
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-156]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	jne	_659
	push	dword [ebp-160]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
_659:
	cmp	eax,0
	jne	_661
	push	dword [ebp-164]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
_661:
	cmp	eax,0
	je	_663
	mov	eax,ebp
	push	eax
	push	_695
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_664
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-168]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_665
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-172]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_666
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-172]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_667
	mov	eax,ebp
	push	eax
	push	_674
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_668
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-176]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_669
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-180]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_670
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-180]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_671
	mov	eax,ebp
	push	eax
	push	_673
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_672
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-184]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_671:
	call	dword [_bbOnDebugLeaveScope]
_667:
	push	_675
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-188]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_676
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-188]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_677
	mov	eax,ebp
	push	eax
	push	_694
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_678
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-192]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_679
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-196]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_680
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-196]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_681
	mov	eax,ebp
	push	eax
	push	_683
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_682
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-200]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_681:
	push	_684
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-204]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_685
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-204]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_686
	mov	eax,ebp
	push	eax
	push	_688
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_687
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-208]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_686:
	push	_689
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-212]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_690
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-204]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_691
	mov	eax,ebp
	push	eax
	push	_693
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_692
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-216]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_691:
	call	dword [_bbOnDebugLeaveScope]
_677:
	call	dword [_bbOnDebugLeaveScope]
_663:
	call	dword [_bbOnDebugLeaveScope]
_654:
	push	_697
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-220]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_698
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-220]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_699
	mov	eax,ebp
	push	eax
	push	_710
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_700
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-224]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_701
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-228]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_702
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-224]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	jne	_703
	push	dword [ebp-228]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
_703:
	cmp	eax,0
	je	_705
	mov	eax,ebp
	push	eax
	push	_709
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_706
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-232]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_707
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-236]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_708
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-240]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_705:
	call	dword [_bbOnDebugLeaveScope]
_699:
	call	dword [_bbOnDebugLeaveScope]
_651:
	push	_712
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-244]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_713
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-244]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_714
	mov	eax,ebp
	push	eax
	push	_737
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_715
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-248]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_716
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-248]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_717
	mov	eax,ebp
	push	eax
	push	_719
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_718
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-252]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_717:
	push	_720
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-256]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_721
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-256]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_722
	mov	eax,ebp
	push	eax
	push	_724
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_723
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-260]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_722:
	push	_725
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-264]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_726
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-264]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_727
	mov	eax,ebp
	push	eax
	push	_730
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_728
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-268]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_729
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-272]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_727:
	push	_731
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-276]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_732
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-276]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_733
	mov	eax,ebp
	push	eax
	push	_736
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_734
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-280]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_735
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-284]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_733:
	call	dword [_bbOnDebugLeaveScope]
_714:
	call	dword [_bbOnDebugLeaveScope]
_604:
	push	_739
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	push	_740
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_742
	call	_brl_blitz_NullObjectError
_742:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+180]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_500
_502:
	mov	eax,ebp
	push	eax
	push	_748
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_744
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_746
	call	_brl_blitz_NullObjectError
_746:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+180]
	add	esp,4
	push	_747
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	call	dword [_bbOnDebugLeaveScope]
	jmp	_500
_503:
	mov	eax,ebp
	push	eax
	push	_751
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_749
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-48]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	push	_750
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-52]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_500
_504:
	mov	eax,ebp
	push	eax
	push	_754
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_752
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-44]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	push	_753
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-52]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_500
_505:
	mov	eax,ebp
	push	eax
	push	_757
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_755
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-44]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	push	_756
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-48]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_500
_506:
	mov	eax,ebp
	push	eax
	push	_760
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_758
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-88]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	push	_759
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-92]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_500
_507:
	mov	eax,ebp
	push	eax
	push	_763
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_761
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-84]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	push	_762
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-92]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_500
_508:
	mov	eax,ebp
	push	eax
	push	_766
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_764
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-84]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	push	_765
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-88]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_500
_509:
	mov	eax,ebp
	push	eax
	push	_769
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_767
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-160]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	push	_768
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-164]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_500
_510:
	mov	eax,ebp
	push	eax
	push	_772
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_770
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-156]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	push	_771
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-164]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_500
_511:
	mov	eax,ebp
	push	eax
	push	_775
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_773
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-156]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	push	_774
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-160]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_500
_512:
	mov	eax,ebp
	push	eax
	push	_779
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_776
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-300]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	push	_777
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-308]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	push	_778
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-312]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_500
_513:
	mov	eax,ebp
	push	eax
	push	_783
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_780
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-292]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	push	_781
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-308]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	push	_782
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-312]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_500
_514:
	mov	eax,ebp
	push	eax
	push	_787
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_784
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-292]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	push	_785
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-300]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	push	_786
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-312]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_500
_515:
	mov	eax,ebp
	push	eax
	push	_791
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_788
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-292]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	push	_789
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-300]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	push	_790
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-308]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_500
_516:
	mov	eax,ebp
	push	eax
	push	_795
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_792
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-324]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	push	_793
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-332]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	push	_794
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-336]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_500
_517:
	mov	eax,ebp
	push	eax
	push	_799
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_796
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-316]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	push	_797
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-332]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	push	_798
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-336]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_500
_518:
	mov	eax,ebp
	push	eax
	push	_803
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_800
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-316]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	push	_801
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-324]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	push	_802
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-336]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_500
_519:
	mov	eax,ebp
	push	eax
	push	_807
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_804
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-316]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	push	_805
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-324]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	push	_806
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-332]
	call	_maxgui_maxgui_SetButtonState
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_500
_500:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_485
_485:
	push	_809
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-40]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_810
	mov	eax,ebp
	push	eax
	push	_833
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_811
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-44]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_812
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-48]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_813
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-52]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_814
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-56]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_815
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-60]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_816
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-60]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_817
	mov	eax,ebp
	push	eax
	push	_819
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_818
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-64]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_820
_817:
	mov	eax,ebp
	push	eax
	push	_822
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_821
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-64]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_820:
	push	_823
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-68]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_824
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-68]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_825
	mov	eax,ebp
	push	eax
	push	_828
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_826
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-72]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_827
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-76]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_829
_825:
	mov	eax,ebp
	push	eax
	push	_832
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_830
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-72]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_831
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-76]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_829:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_834
_810:
	mov	eax,ebp
	push	eax
	push	_844
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_835
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-44]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_836
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-48]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_837
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-52]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_838
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-56]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_839
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-60]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_840
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-64]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_841
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-68]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_842
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-72]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_843
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-76]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_834:
	push	_845
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-80]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_846
	mov	eax,ebp
	push	eax
	push	_1148
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_847
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-96]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_848
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-96]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_849
	mov	eax,ebp
	push	eax
	push	_922
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_850
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-84]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_851
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-88]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_852
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-92]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_853
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-84]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	jne	_854
	push	dword [ebp-88]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
_854:
	cmp	eax,0
	jne	_856
	push	dword [ebp-92]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
_856:
	cmp	eax,0
	je	_858
	mov	eax,ebp
	push	eax
	push	_907
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_859
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-100]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_860
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-100]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_861
	mov	eax,ebp
	push	eax
	push	_863
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_862
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-104]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_864
_861:
	mov	eax,ebp
	push	eax
	push	_866
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_865
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-104]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_864:
	push	_867
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-108]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_868
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-108]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_869
	mov	eax,ebp
	push	eax
	push	_887
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_870
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-112]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_871
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-116]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_872
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-116]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_873
	mov	eax,ebp
	push	eax
	push	_875
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_874
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-120]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_876
_873:
	mov	eax,ebp
	push	eax
	push	_878
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_877
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-120]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_876:
	push	_879
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-124]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_880
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-124]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_881
	mov	eax,ebp
	push	eax
	push	_883
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_882
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-128]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_884
_881:
	mov	eax,ebp
	push	eax
	push	_886
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_885
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-128]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_884:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_888
_869:
	mov	eax,ebp
	push	eax
	push	_894
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_889
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-112]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_890
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-116]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_891
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-120]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_892
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-124]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_893
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-128]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_888:
	push	_895
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-132]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_896
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-132]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_897
	mov	eax,ebp
	push	eax
	push	_901
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_898
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-136]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_899
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-140]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_900
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-144]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_902
_897:
	mov	eax,ebp
	push	eax
	push	_906
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_903
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-136]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_904
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-140]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_905
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-144]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_902:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_908
_858:
	mov	eax,ebp
	push	eax
	push	_921
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_909
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-116]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_910
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-112]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_911
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-100]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_912
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-104]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_913
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-108]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_914
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-120]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_915
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-124]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_916
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-128]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_917
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-132]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_918
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-136]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_919
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-140]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_920
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-144]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_908:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_923
_849:
	mov	eax,ebp
	push	eax
	push	_939
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_924
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-116]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_925
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-112]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_926
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-84]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_927
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-88]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_928
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-92]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_929
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-104]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_930
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-100]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_931
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-108]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_932
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-120]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_933
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-124]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_934
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-128]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_935
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-132]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_936
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-136]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_937
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-140]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_938
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-144]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_923:
	push	_940
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-148]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_941
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-148]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_942
	mov	eax,ebp
	push	eax
	push	_1070
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_943
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-152]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_944
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-152]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_945
	mov	eax,ebp
	push	eax
	push	_1025
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_946
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-156]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_947
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-160]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_948
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-164]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_949
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-156]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	jne	_950
	push	dword [ebp-160]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
_950:
	cmp	eax,0
	jne	_952
	push	dword [ebp-164]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
_952:
	cmp	eax,0
	je	_954
	mov	eax,ebp
	push	eax
	push	_1012
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_955
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-168]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_956
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-172]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_957
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-172]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_958
	mov	eax,ebp
	push	eax
	push	_968
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_959
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-176]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_960
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-180]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_961
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-180]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_962
	mov	eax,ebp
	push	eax
	push	_964
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_963
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-184]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_965
_962:
	mov	eax,ebp
	push	eax
	push	_967
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_966
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-184]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_965:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_969
_958:
	mov	eax,ebp
	push	eax
	push	_973
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_970
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-176]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_971
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-180]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_972
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-184]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_969:
	push	_974
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-188]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_975
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-188]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_976
	mov	eax,ebp
	push	eax
	push	_1002
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_977
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-192]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_978
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-196]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_979
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-196]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_980
	mov	eax,ebp
	push	eax
	push	_982
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_981
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-200]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_983
_980:
	mov	eax,ebp
	push	eax
	push	_985
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_984
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-200]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_983:
	push	_986
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-204]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_987
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-204]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_988
	mov	eax,ebp
	push	eax
	push	_990
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_989
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-208]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_991
_988:
	mov	eax,ebp
	push	eax
	push	_993
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_992
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-208]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_991:
	push	_994
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-212]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_995
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-204]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_996
	mov	eax,ebp
	push	eax
	push	_998
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_997
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-216]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_999
_996:
	mov	eax,ebp
	push	eax
	push	_1001
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1000
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-216]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_999:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1003
_976:
	mov	eax,ebp
	push	eax
	push	_1011
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1004
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-192]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1005
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-196]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1006
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-200]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1007
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-204]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1008
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-208]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1009
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-212]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1010
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-216]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1003:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1013
_954:
	mov	eax,ebp
	push	eax
	push	_1024
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1014
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-176]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1015
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-180]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1016
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-184]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1017
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-192]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1018
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-196]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1019
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-200]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1020
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-204]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1021
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-208]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1022
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-212]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1023
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-216]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1013:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1026
_945:
	mov	eax,ebp
	push	eax
	push	_1043
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1027
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-156]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1028
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-160]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1029
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-164]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1030
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-168]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1031
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-172]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1032
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-176]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1033
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-180]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1034
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-184]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1035
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-188]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1036
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-192]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1037
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-196]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1038
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-200]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1039
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-204]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1040
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-208]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1041
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-212]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1042
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-216]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1026:
	push	_1044
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-220]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_1045
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-220]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_1046
	mov	eax,ebp
	push	eax
	push	_1062
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1047
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-224]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_1048
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-228]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_1049
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-224]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	jne	_1050
	push	dword [ebp-228]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
_1050:
	cmp	eax,0
	je	_1052
	mov	eax,ebp
	push	eax
	push	_1056
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1053
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-232]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_1054
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-236]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_1055
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-240]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1057
_1052:
	mov	eax,ebp
	push	eax
	push	_1061
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1058
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-232]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1059
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-236]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1060
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-240]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1057:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1063
_1046:
	mov	eax,ebp
	push	eax
	push	_1069
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1064
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-224]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1065
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-228]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1066
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-232]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1067
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-236]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1068
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-240]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1063:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1071
_942:
	mov	eax,ebp
	push	eax
	push	_1095
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1072
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-152]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1073
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-156]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1074
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-160]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1075
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-164]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1076
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-168]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1077
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-172]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1078
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-176]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1079
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-180]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1080
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-184]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1081
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-188]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1082
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-192]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1083
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-196]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1084
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-200]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1085
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-204]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1086
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-208]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1087
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-212]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1088
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-216]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1089
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-220]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1090
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-224]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1091
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-228]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1092
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-232]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1093
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-236]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1094
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-240]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1071:
	push	_1096
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-244]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_1097
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-244]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_1098
	mov	eax,ebp
	push	eax
	push	_1135
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1099
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-248]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_1100
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-248]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_1101
	mov	eax,ebp
	push	eax
	push	_1103
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1102
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-252]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1104
_1101:
	mov	eax,ebp
	push	eax
	push	_1106
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1105
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-252]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1104:
	push	_1107
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-256]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_1108
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-256]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_1109
	mov	eax,ebp
	push	eax
	push	_1111
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1110
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-260]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1112
_1109:
	mov	eax,ebp
	push	eax
	push	_1114
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1113
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-260]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1112:
	push	_1115
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-264]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_1116
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-264]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_1117
	mov	eax,ebp
	push	eax
	push	_1120
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1118
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-268]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_1119
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-272]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1121
_1117:
	mov	eax,ebp
	push	eax
	push	_1124
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1122
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-268]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1123
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-272]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1121:
	push	_1125
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-276]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_1126
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-276]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_1127
	mov	eax,ebp
	push	eax
	push	_1130
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1128
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-280]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_1129
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-284]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1131
_1127:
	mov	eax,ebp
	push	eax
	push	_1134
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1132
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-280]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1133
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-284]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1131:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1136
_1098:
	mov	eax,ebp
	push	eax
	push	_1147
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1137
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-248]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1138
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-252]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1139
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-256]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1140
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-260]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1141
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-264]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1142
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-268]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1143
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-272]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1144
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-276]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1145
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-280]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1146
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-284]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1136:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1149
_846:
	mov	eax,ebp
	push	eax
	push	_1201
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1150
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-96]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1151
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-116]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1152
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-112]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1153
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-84]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1154
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-88]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1155
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-92]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1156
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-104]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1157
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-100]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1158
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-108]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1159
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-120]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1160
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-124]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1161
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-128]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1162
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-132]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1163
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-136]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1164
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-140]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1165
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-144]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1166
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-148]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1167
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-152]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1168
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-156]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1169
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-160]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1170
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-164]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1171
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-168]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1172
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-172]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1173
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-176]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1174
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-180]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1175
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-184]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1176
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-188]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1177
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-192]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1178
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-196]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1179
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-200]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1180
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-204]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1181
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-208]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1182
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-212]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1183
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-216]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1184
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-220]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1185
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-224]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1186
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-228]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1187
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-232]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1188
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-236]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1189
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-240]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1190
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-244]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1191
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-248]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1192
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-252]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1193
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-256]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1194
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-260]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1195
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-264]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1196
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-268]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1197
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-272]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1198
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-276]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1199
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-280]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1200
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-284]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1149:
	push	_1202
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-288]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_1203
	mov	eax,ebp
	push	eax
	push	_1240
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1204
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-292]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_1205
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-292]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_1206
	mov	eax,ebp
	push	eax
	push	_1208
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1207
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-296]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1209
_1206:
	mov	eax,ebp
	push	eax
	push	_1211
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1210
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-296]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1209:
	push	_1212
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-300]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_1213
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-300]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_1214
	mov	eax,ebp
	push	eax
	push	_1216
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1215
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-304]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1217
_1214:
	mov	eax,ebp
	push	eax
	push	_1219
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1218
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-304]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1217:
	push	_1220
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-308]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_1221
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-312]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_1222
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-316]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_1223
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-316]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_1224
	mov	eax,ebp
	push	eax
	push	_1226
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1225
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-320]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1227
_1224:
	mov	eax,ebp
	push	eax
	push	_1229
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1228
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-320]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1227:
	push	_1230
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-324]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_1231
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-324]
	call	_maxgui_maxgui_ButtonState
	add	esp,4
	cmp	eax,0
	je	_1232
	mov	eax,ebp
	push	eax
	push	_1234
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1233
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-328]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1235
_1232:
	mov	eax,ebp
	push	eax
	push	_1237
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1236
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-328]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1235:
	push	_1238
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-332]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	push	_1239
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-336]
	call	_maxgui_maxgui_EnableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1241
_1203:
	mov	eax,ebp
	push	eax
	push	_1254
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1242
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-292]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1243
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-296]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1244
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-300]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1245
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-304]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1246
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-308]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1247
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-312]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1248
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-316]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1249
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-320]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1250
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-324]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1251
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-328]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1252
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-332]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	push	_1253
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-336]
	call	_maxgui_maxgui_DisableGadget
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1241:
	call	dword [_bbOnDebugLeaveScope]
_74:
	cmp	dword [ebp-8],0
	jne	_76
_75:
	push	_1256
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	jmp	_169
_169:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_199:
	dd	0
_192:
	db	"testlap2",0
_193:
	db	"actionlist",0
_194:
	db	":brl.linkedlist.TList",0
	align	4
_bb_actionlist:
	dd	_bbNullObject
_195:
	db	"globalaction",0
_196:
	db	":Tglobalaction",0
	align	4
_bb_globalaction:
	dd	_bbNullObject
_197:
	db	"nTaction",0
_198:
	db	":Taction",0
	align	4
_191:
	dd	1
	dd	_192
	dd	4
	dd	_193
	dd	_194
	dd	_bb_actionlist
	dd	4
	dd	_195
	dd	_196
	dd	_bb_globalaction
	dd	2
	dd	_197
	dd	_198
	dd	-4
	dd	0
_78:
	db	"Taction",0
_79:
	db	"name",0
_80:
	db	"$",0
_81:
	db	"respawn",0
_82:
	db	"i",0
_83:
	db	"respawn_faction",0
_84:
	db	"respawn_time",0
_85:
	db	"respawn_onlytimes",0
_86:
	db	"respawn_cost",0
_87:
	db	"respawn_prepaid",0
_88:
	db	"win",0
_89:
	db	"win_single",0
_90:
	db	"win_single_faction",0
_91:
	db	"win_single_holdway",0
_92:
	db	"win_single_holdway_time",0
_93:
	db	"win_single_destway",0
_94:
	db	"win_single_destway_life",0
_95:
	db	"win_single_destway_heal",0
_96:
	db	"win_single_destway_heal_count",0
_97:
	db	"win_single_destway_call",0
_98:
	db	"win_single_destway_call_life",0
_99:
	db	"win_single_desttank",0
_100:
	db	"win_single_desttank_life",0
_101:
	db	"win_single_desttank_heal",0
_102:
	db	"win_single_desttank_heal_count",0
_103:
	db	"win_single_desttank_anzahl",0
_104:
	db	"win_single_desttank_anzahl_count",0
_105:
	db	"win_multi",0
_106:
	db	"win_multi_capture",0
_107:
	db	"win_multi_capture_faction",0
_108:
	db	"win_multi_capture_base",0
_109:
	db	"win_multi_capture_way",0
_110:
	db	"win_multi_capture_way_time",0
_111:
	db	"win_multi_capture_way_points",0
_112:
	db	"win_multi_capture_way_points_count",0
_113:
	db	"win_multi_capture_destway",0
_114:
	db	"win_multi_capture_destway_life",0
_115:
	db	"win_multi_capture_destway_respawn",0
_116:
	db	"win_multi_capture_destway_respawn_time",0
_117:
	db	"win_multi_capture_destway_heal",0
_118:
	db	"win_multi_capture_destway_heal_count",0
_119:
	db	"win_multi_capture_destway_call",0
_120:
	db	"win_multi_capture_destway_call_life",0
_121:
	db	"win_multi_ctf",0
_122:
	db	"win_multi_ctf_faction",0
_123:
	db	"win_multi_ctf_need",0
_124:
	db	"win_multi_ctf_need_count",0
_125:
	db	"win_multi_ctf_need_isGlobal",0
_126:
	db	"win_all",0
_127:
	db	"win_all_collect",0
_128:
	db	"win_all_collect_count",0
_129:
	db	"win_all_kill",0
_130:
	db	"win_all_kill_count",0
_131:
	db	"win_all_way",0
_132:
	db	"win_all_way_count",0
_133:
	db	"win_all_way_all",0
_134:
	db	"win_all_destway",0
_135:
	db	"win_all_destway_count",0
_136:
	db	"win_all_destway_all",0
_137:
	db	"New",0
_138:
	db	"()i",0
_139:
	db	"Delete",0
	align	4
_77:
	dd	2
	dd	_78
	dd	3
	dd	_79
	dd	_80
	dd	8
	dd	3
	dd	_81
	dd	_82
	dd	12
	dd	3
	dd	_83
	dd	_82
	dd	16
	dd	3
	dd	_84
	dd	_82
	dd	20
	dd	3
	dd	_85
	dd	_82
	dd	24
	dd	3
	dd	_86
	dd	_82
	dd	28
	dd	3
	dd	_87
	dd	_82
	dd	32
	dd	3
	dd	_88
	dd	_82
	dd	36
	dd	3
	dd	_89
	dd	_82
	dd	40
	dd	3
	dd	_90
	dd	_82
	dd	44
	dd	3
	dd	_91
	dd	_82
	dd	48
	dd	3
	dd	_92
	dd	_82
	dd	52
	dd	3
	dd	_93
	dd	_82
	dd	56
	dd	3
	dd	_94
	dd	_82
	dd	60
	dd	3
	dd	_95
	dd	_82
	dd	64
	dd	3
	dd	_96
	dd	_82
	dd	68
	dd	3
	dd	_97
	dd	_82
	dd	72
	dd	3
	dd	_98
	dd	_82
	dd	76
	dd	3
	dd	_99
	dd	_82
	dd	80
	dd	3
	dd	_100
	dd	_82
	dd	84
	dd	3
	dd	_101
	dd	_82
	dd	88
	dd	3
	dd	_102
	dd	_82
	dd	92
	dd	3
	dd	_103
	dd	_82
	dd	96
	dd	3
	dd	_104
	dd	_82
	dd	100
	dd	3
	dd	_105
	dd	_82
	dd	104
	dd	3
	dd	_106
	dd	_82
	dd	108
	dd	3
	dd	_107
	dd	_82
	dd	112
	dd	3
	dd	_108
	dd	_82
	dd	116
	dd	3
	dd	_109
	dd	_82
	dd	120
	dd	3
	dd	_110
	dd	_82
	dd	124
	dd	3
	dd	_111
	dd	_82
	dd	128
	dd	3
	dd	_112
	dd	_82
	dd	132
	dd	3
	dd	_113
	dd	_82
	dd	136
	dd	3
	dd	_114
	dd	_82
	dd	140
	dd	3
	dd	_115
	dd	_82
	dd	144
	dd	3
	dd	_116
	dd	_82
	dd	148
	dd	3
	dd	_117
	dd	_82
	dd	152
	dd	3
	dd	_118
	dd	_82
	dd	156
	dd	3
	dd	_119
	dd	_82
	dd	160
	dd	3
	dd	_120
	dd	_82
	dd	164
	dd	3
	dd	_121
	dd	_82
	dd	168
	dd	3
	dd	_122
	dd	_82
	dd	172
	dd	3
	dd	_123
	dd	_82
	dd	176
	dd	3
	dd	_124
	dd	_82
	dd	180
	dd	3
	dd	_125
	dd	_82
	dd	184
	dd	3
	dd	_126
	dd	_82
	dd	188
	dd	3
	dd	_127
	dd	_82
	dd	192
	dd	3
	dd	_128
	dd	_82
	dd	196
	dd	3
	dd	_129
	dd	_82
	dd	200
	dd	3
	dd	_130
	dd	_82
	dd	204
	dd	3
	dd	_131
	dd	_82
	dd	208
	dd	3
	dd	_132
	dd	_82
	dd	212
	dd	3
	dd	_133
	dd	_82
	dd	216
	dd	3
	dd	_134
	dd	_82
	dd	220
	dd	3
	dd	_135
	dd	_82
	dd	224
	dd	3
	dd	_136
	dd	_82
	dd	228
	dd	6
	dd	_137
	dd	_138
	dd	16
	dd	6
	dd	_139
	dd	_138
	dd	20
	dd	0
	align	4
_bb_Taction:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_77
	dd	232
	dd	__bb_Taction_New
	dd	__bb_Taction_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_141:
	db	"Tglobalaction",0
_142:
	db	"win_cinema",0
_143:
	db	"win_cinema_name",0
_144:
	db	"win_map",0
_145:
	db	"win_map_name",0
_146:
	db	"win_menu",0
_147:
	db	"win_replay",0
_148:
	db	"lose_cinema",0
_149:
	db	"lose_cinema_name",0
_150:
	db	"lose_map",0
_151:
	db	"lose_map_name",0
_152:
	db	"lose_menu",0
_153:
	db	"lose_replay",0
	align	4
_140:
	dd	2
	dd	_141
	dd	3
	dd	_142
	dd	_82
	dd	8
	dd	3
	dd	_143
	dd	_80
	dd	12
	dd	3
	dd	_144
	dd	_82
	dd	16
	dd	3
	dd	_145
	dd	_80
	dd	20
	dd	3
	dd	_146
	dd	_82
	dd	24
	dd	3
	dd	_147
	dd	_82
	dd	28
	dd	3
	dd	_148
	dd	_82
	dd	32
	dd	3
	dd	_149
	dd	_80
	dd	36
	dd	3
	dd	_150
	dd	_82
	dd	40
	dd	3
	dd	_151
	dd	_80
	dd	44
	dd	3
	dd	_152
	dd	_82
	dd	48
	dd	3
	dd	_153
	dd	_82
	dd	52
	dd	6
	dd	_137
	dd	_138
	dd	16
	dd	6
	dd	_139
	dd	_138
	dd	20
	dd	0
	align	4
_bb_Tglobalaction:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_140
	dd	56
	dd	__bb_Tglobalaction_New
	dd	__bb_Tglobalaction_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_172:
	db	"D:/Proggen/projecte/team/PanzerS/testlap2.bmx",0
	align	4
_171:
	dd	_172
	dd	45
	dd	1
	align	4
_174:
	dd	0
	align	4
_176:
	dd	_172
	dd	58
	dd	1
	align	4
_179:
	dd	_172
	dd	62
	dd	1
	align	4
_181:
	dd	_172
	dd	63
	dd	1
	align	4
_20:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	65,67,84,73,79,78,95,78,82,95,49
	align	4
_189:
	dd	_172
	dd	66
	dd	1
	align	4
_190:
	dd	_172
	dd	67
	dd	1
_204:
	db	"Self",0
	align	4
_203:
	dd	1
	dd	_137
	dd	2
	dd	_204
	dd	_198
	dd	-4
	dd	0
	align	4
_202:
	dd	3
	dd	0
	dd	0
	align	4
_213:
	dd	1
	dd	_137
	dd	2
	dd	_204
	dd	_196
	dd	-4
	dd	0
	align	4
_212:
	dd	3
	dd	0
	dd	0
_1258:
	db	"WaypointEWindow",0
_1259:
	db	"cTaction",0
_1260:
	db	"go",0
_1261:
	db	"window",0
_1262:
	db	":maxgui.maxgui.TGadget",0
_1263:
	db	"BUTTON_OK",0
_1264:
	db	"BUTTON_NOT",0
_1265:
	db	"inbox",0
_1266:
	db	"combobox",0
_1267:
	db	"WWrow",0
_1268:
	db	"WWabstand",0
_1269:
	db	"Respawn_main",0
_1270:
	db	"Respawn_spieler",0
_1271:
	db	"Respawn_freund",0
_1272:
	db	"Respawn_feind",0
_1273:
	db	"Respawn_zeit",0
_1274:
	db	"Respawn_anzahl",0
_1275:
	db	"Respawn_anzahl_menge",0
_1276:
	db	"Respawn_punkte",0
_1277:
	db	"Respawn_punkte_anzahl",0
_1278:
	db	"Respawn_punkte_prepaid",0
_1279:
	db	"win_main",0
_1280:
	db	"win_spieler",0
_1281:
	db	"win_freund",0
_1282:
	db	"win_feind",0
_1283:
	db	"win_single_holdway_secs",0
_1284:
	db	"win_single_destway_heal_anzahl",0
_1285:
	db	"win_multi_erobern",0
_1286:
	db	"win_multi_erobern_freund",0
_1287:
	db	"win_multi_erobern_feind",0
_1288:
	db	"win_multi_erobern_neutral",0
_1289:
	db	"win_multi_erobern_base",0
_1290:
	db	"win_multi_erobern_waypoint",0
_1291:
	db	"win_multi_erobern_waypoint_secs",0
_1292:
	db	"win_multi_erobern_waypoint_points",0
_1293:
	db	"win_multi_erobern_waypoint_points_anzahl",0
_1294:
	db	"win_multi_erobern_destway",0
_1295:
	db	"win_multi_erobern_destway_life",0
_1296:
	db	"win_multi_erobern_destway_respawn",0
_1297:
	db	"win_multi_erobern_destway_respawn_secs",0
_1298:
	db	"win_multi_erobern_destway_heal",0
_1299:
	db	"win_multi_erobern_destway_heal_anzahl",0
_1300:
	db	"win_multi_erobern_call",0
_1301:
	db	"win_multi_erobern_call_life",0
_1302:
	db	"win_multi_ctf_freund",0
_1303:
	db	"win_multi_ctf_feind",0
_1304:
	db	"win_multi_ctf_need_anzahl",0
_1305:
	db	"win_multi_ctf_need_global",0
_1306:
	db	"win_all_collect_points",0
_1307:
	db	"win_all_kill_anzahl",0
_1308:
	db	"win_all_way_anzahl",0
_1309:
	db	"win_all_destway_anzahl",0
_1310:
	db	"event_main",0
_1311:
	db	"event_win_cinema",0
_1312:
	db	"event_win_cinema_name",0
_1313:
	db	"event_win_map",0
_1314:
	db	"event_win_map_name",0
_1315:
	db	"event_win_menu",0
_1316:
	db	"event_win_replay",0
_1317:
	db	"event_lose_cinema",0
_1318:
	db	"event_lose_cinema_name",0
_1319:
	db	"event_lose_map",0
_1320:
	db	"event_lose_map_name",0
_1321:
	db	"event_lose_menu",0
_1322:
	db	"event_lose_replay",0
	align	4
_1257:
	dd	1
	dd	_1258
	dd	2
	dd	_1259
	dd	_198
	dd	-4
	dd	2
	dd	_1260
	dd	_82
	dd	-8
	dd	2
	dd	_1261
	dd	_1262
	dd	-12
	dd	2
	dd	_1263
	dd	_1262
	dd	-16
	dd	2
	dd	_1264
	dd	_1262
	dd	-20
	dd	2
	dd	_1265
	dd	_1262
	dd	-24
	dd	2
	dd	_1266
	dd	_1262
	dd	-28
	dd	2
	dd	_1267
	dd	_82
	dd	-32
	dd	2
	dd	_1268
	dd	_82
	dd	-36
	dd	2
	dd	_1269
	dd	_1262
	dd	-40
	dd	2
	dd	_1270
	dd	_1262
	dd	-44
	dd	2
	dd	_1271
	dd	_1262
	dd	-48
	dd	2
	dd	_1272
	dd	_1262
	dd	-52
	dd	2
	dd	_1273
	dd	_1262
	dd	-56
	dd	2
	dd	_1274
	dd	_1262
	dd	-60
	dd	2
	dd	_1275
	dd	_1262
	dd	-64
	dd	2
	dd	_1276
	dd	_1262
	dd	-68
	dd	2
	dd	_1277
	dd	_1262
	dd	-72
	dd	2
	dd	_1278
	dd	_1262
	dd	-76
	dd	2
	dd	_1279
	dd	_1262
	dd	-80
	dd	2
	dd	_1280
	dd	_1262
	dd	-84
	dd	2
	dd	_1281
	dd	_1262
	dd	-88
	dd	2
	dd	_1282
	dd	_1262
	dd	-92
	dd	2
	dd	_89
	dd	_1262
	dd	-96
	dd	2
	dd	_91
	dd	_1262
	dd	-100
	dd	2
	dd	_1283
	dd	_1262
	dd	-104
	dd	2
	dd	_93
	dd	_1262
	dd	-108
	dd	2
	dd	_94
	dd	_1262
	dd	-112
	dd	2
	dd	_95
	dd	_1262
	dd	-116
	dd	2
	dd	_1284
	dd	_1262
	dd	-120
	dd	2
	dd	_97
	dd	_1262
	dd	-124
	dd	2
	dd	_98
	dd	_1262
	dd	-128
	dd	2
	dd	_99
	dd	_1262
	dd	-132
	dd	2
	dd	_100
	dd	_1262
	dd	-136
	dd	2
	dd	_101
	dd	_1262
	dd	-140
	dd	2
	dd	_103
	dd	_1262
	dd	-144
	dd	2
	dd	_105
	dd	_1262
	dd	-148
	dd	2
	dd	_1285
	dd	_1262
	dd	-152
	dd	2
	dd	_1286
	dd	_1262
	dd	-156
	dd	2
	dd	_1287
	dd	_1262
	dd	-160
	dd	2
	dd	_1288
	dd	_1262
	dd	-164
	dd	2
	dd	_1289
	dd	_1262
	dd	-168
	dd	2
	dd	_1290
	dd	_1262
	dd	-172
	dd	2
	dd	_1291
	dd	_1262
	dd	-176
	dd	2
	dd	_1292
	dd	_1262
	dd	-180
	dd	2
	dd	_1293
	dd	_1262
	dd	-184
	dd	2
	dd	_1294
	dd	_1262
	dd	-188
	dd	2
	dd	_1295
	dd	_1262
	dd	-192
	dd	2
	dd	_1296
	dd	_1262
	dd	-196
	dd	2
	dd	_1297
	dd	_1262
	dd	-200
	dd	2
	dd	_1298
	dd	_1262
	dd	-204
	dd	2
	dd	_1299
	dd	_1262
	dd	-208
	dd	2
	dd	_1300
	dd	_1262
	dd	-212
	dd	2
	dd	_1301
	dd	_1262
	dd	-216
	dd	2
	dd	_121
	dd	_1262
	dd	-220
	dd	2
	dd	_1302
	dd	_1262
	dd	-224
	dd	2
	dd	_1303
	dd	_1262
	dd	-228
	dd	2
	dd	_123
	dd	_1262
	dd	-232
	dd	2
	dd	_1304
	dd	_1262
	dd	-236
	dd	2
	dd	_1305
	dd	_1262
	dd	-240
	dd	2
	dd	_126
	dd	_1262
	dd	-244
	dd	2
	dd	_127
	dd	_1262
	dd	-248
	dd	2
	dd	_1306
	dd	_1262
	dd	-252
	dd	2
	dd	_129
	dd	_1262
	dd	-256
	dd	2
	dd	_1307
	dd	_1262
	dd	-260
	dd	2
	dd	_131
	dd	_1262
	dd	-264
	dd	2
	dd	_1308
	dd	_1262
	dd	-268
	dd	2
	dd	_133
	dd	_1262
	dd	-272
	dd	2
	dd	_134
	dd	_1262
	dd	-276
	dd	2
	dd	_1309
	dd	_1262
	dd	-280
	dd	2
	dd	_136
	dd	_1262
	dd	-284
	dd	2
	dd	_1310
	dd	_1262
	dd	-288
	dd	2
	dd	_1311
	dd	_1262
	dd	-292
	dd	2
	dd	_1312
	dd	_1262
	dd	-296
	dd	2
	dd	_1313
	dd	_1262
	dd	-300
	dd	2
	dd	_1314
	dd	_1262
	dd	-304
	dd	2
	dd	_1315
	dd	_1262
	dd	-308
	dd	2
	dd	_1316
	dd	_1262
	dd	-312
	dd	2
	dd	_1317
	dd	_1262
	dd	-316
	dd	2
	dd	_1318
	dd	_1262
	dd	-320
	dd	2
	dd	_1319
	dd	_1262
	dd	-324
	dd	2
	dd	_1320
	dd	_1262
	dd	-328
	dd	2
	dd	_1321
	dd	_1262
	dd	-332
	dd	2
	dd	_1322
	dd	_1262
	dd	-336
	dd	0
	align	4
_223:
	dd	_172
	dd	71
	dd	2
	align	4
_225:
	dd	_172
	dd	72
	dd	2
	align	4
_231:
	dd	_172
	dd	73
	dd	2
	align	4
_234:
	dd	_172
	dd	76
	dd	2
	align	4
_236:
	dd	_172
	dd	77
	dd	2
	align	4
_240:
	dd	_172
	dd	78
	dd	2
	align	4
_247:
	dd	_172
	dd	81
	dd	2
	align	4
_249:
	dd	_172
	dd	82
	dd	2
	align	4
_253:
	dd	_172
	dd	83
	dd	2
	align	4
_255:
	dd	_172
	dd	84
	dd	2
	align	4
_258:
	dd	_172
	dd	85
	dd	2
	align	4
_265:
	dd	_172
	dd	86
	dd	2
	align	4
_270:
	dd	_172
	dd	88
	dd	2
	align	4
_272:
	dd	_172
	dd	89
	dd	2
	align	4
_277:
	dd	_172
	dd	90
	dd	2
	align	4
_279:
	dd	_172
	dd	91
	dd	2
	align	4
_284:
	dd	_172
	dd	92
	dd	2
	align	4
_289:
	dd	_172
	dd	93
	dd	2
	align	4
_292:
	dd	_172
	dd	94
	dd	2
	align	4
_295:
	dd	_172
	dd	95
	dd	2
	align	4
_299:
	dd	_172
	dd	96
	dd	2
	align	4
_303:
	dd	_172
	dd	98
	dd	2
	align	4
_305:
	dd	_172
	dd	99
	dd	2
	align	4
_308:
	dd	_172
	dd	100
	dd	2
	align	4
_311:
	dd	_172
	dd	101
	dd	2
	align	4
_315:
	dd	_172
	dd	102
	dd	2
	align	4
_319:
	dd	_172
	dd	104
	dd	2
	align	4
_321:
	dd	_172
	dd	105
	dd	2
	align	4
_324:
	dd	_172
	dd	106
	dd	2
	align	4
_327:
	dd	_172
	dd	107
	dd	2
	align	4
_329:
	dd	_172
	dd	108
	dd	2
	align	4
_331:
	dd	_172
	dd	109
	dd	2
	align	4
_334:
	dd	_172
	dd	110
	dd	2
	align	4
_337:
	dd	_172
	dd	111
	dd	2
	align	4
_339:
	dd	_172
	dd	112
	dd	2
	align	4
_341:
	dd	_172
	dd	114
	dd	2
	align	4
_21:
	dd	_bbStringClass
	dd	2147483647
	dd	33
	dw	87,97,121,112,111,105,110,116,32,69,114,119,101,105,116,101
	dw	114,116,101,32,69,105,110,115,116,101,108,108,117,110,103,101
	dw	110
	align	4
_342:
	dd	_172
	dd	118
	dd	2
	align	4
_343:
	dd	_172
	dd	119
	dd	2
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	40
	dw	69,105,110,115,116,101,108,108,117,110,103,101,110,32,117,101
	dw	98,101,114,32,100,101,110,32,87,97,121,112,111,105,110,116
	dw	32,104,105,110,97,117,115,58
	align	4
_344:
	dd	_172
	dd	120
	dd	2
	align	4
_345:
	dd	_172
	dd	122
	dd	2
	align	4
_23:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	82,101,115,112,97,119,110
	align	4
_346:
	dd	_172
	dd	123
	dd	2
	align	4
_347:
	dd	_172
	dd	125
	dd	2
	align	4
_24:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	83,112,105,101,108,101,114
	align	4
_348:
	dd	_172
	dd	126
	dd	2
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	70,114,101,117,110,100
	align	4
_349:
	dd	_172
	dd	127
	dd	2
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	70,101,105,110,100
	align	4
_350:
	dd	_172
	dd	128
	dd	2
	align	4
_351:
	dd	_172
	dd	130
	dd	2
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	65,108,108,101
	align	4
_352:
	dd	_172
	dd	131
	dd	2
	align	4
_353:
	dd	_172
	dd	132
	dd	2
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	83,101,107,117,110,100,101,110,46
	align	4
_354:
	dd	_172
	dd	133
	dd	2
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	78,117,114
	align	4
_355:
	dd	_172
	dd	134
	dd	2
	align	4
_356:
	dd	_172
	dd	135
	dd	2
	align	4
_30:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	109,97,108,46
	align	4
_357:
	dd	_172
	dd	136
	dd	2
	align	4
_31:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	75,111,115,116,101,116
	align	4
_358:
	dd	_172
	dd	137
	dd	2
	align	4
_359:
	dd	_172
	dd	138
	dd	2
	align	4
_32:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	80,117,110,107,116,101,46
	align	4
_360:
	dd	_172
	dd	139
	dd	2
	align	4
_33:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	80,114,101,112,97,105,100
	align	4
_361:
	dd	_172
	dd	140
	dd	2
	align	4
_362:
	dd	_172
	dd	141
	dd	2
	align	4
_363:
	dd	_172
	dd	143
	dd	2
	align	4
_34:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	83,105,101,103,32,111,100,101,114,32,78,105,101,100,101,114
	dw	108,97,103,101
	align	4
_364:
	dd	_172
	dd	144
	dd	2
	align	4
_365:
	dd	_172
	dd	146
	dd	2
	align	4
_35:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	83,105,110,103,108,101,112,108,97,121,101,114,58
	align	4
_366:
	dd	_172
	dd	147
	dd	2
	align	4
_367:
	dd	_172
	dd	149
	dd	2
	align	4
_368:
	dd	_172
	dd	150
	dd	2
	align	4
_369:
	dd	_172
	dd	151
	dd	2
	align	4
_370:
	dd	_172
	dd	152
	dd	2
	align	4
_371:
	dd	_172
	dd	154
	dd	2
	align	4
_36:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	72,97,108,116,101,32,100,105,101,115,101,110,32,87,97,121
	dw	112,111,105,110,116
	align	4
_372:
	dd	_172
	dd	155
	dd	2
	align	4
_373:
	dd	_172
	dd	156
	dd	2
	align	4
_374:
	dd	_172
	dd	157
	dd	2
	align	4
_375:
	dd	_172
	dd	159
	dd	2
	align	4
_37:
	dd	_bbStringClass
	dd	2147483647
	dd	26
	dw	90,101,114,115,116,111,101,114,101,32,100,105,101,115,101,110
	dw	32,87,97,121,112,111,105,110,116,58
	align	4
_376:
	dd	_172
	dd	160
	dd	2
	align	4
_377:
	dd	_172
	dd	161
	dd	2
	align	4
_38:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	76,101,98,101,110,46
	align	4
_378:
	dd	_172
	dd	162
	dd	2
	align	4
_39:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	72,101,105,108,116
	align	4
_379:
	dd	_172
	dd	163
	dd	2
	align	4
_380:
	dd	_172
	dd	164
	dd	2
	align	4
_40:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	77,105,110,46
	align	4
_381:
	dd	_172
	dd	165
	dd	2
	align	4
_41:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	82,117,102,116,32,98,101,105,32,117,110,116,101,114
	align	4
_382:
	dd	_172
	dd	166
	dd	2
	align	4
_383:
	dd	_172
	dd	167
	dd	2
	align	4
_42:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	37,32,117,109,32,85,110,116,101,114,115,116,117,101,122,117
	dw	110,103,46
	align	4
_384:
	dd	_172
	dd	168
	dd	2
	align	4
_385:
	dd	_172
	dd	170
	dd	2
	align	4
_43:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	90,101,114,115,116,111,101,114,101,32,80,97,110,122,101,114
	dw	58
	align	4
_386:
	dd	_172
	dd	171
	dd	2
	align	4
_387:
	dd	_172
	dd	172
	dd	2
	align	4
_388:
	dd	_172
	dd	173
	dd	2
	align	4
_389:
	dd	_172
	dd	174
	dd	2
	align	4
_44:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	72,101,105,108,116,32,47,32,77,105,110,46
	align	4
_390:
	dd	_172
	dd	175
	dd	2
	align	4
_391:
	dd	_172
	dd	176
	dd	2
	align	4
_45:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	65,110,122,97,104,108,46
	align	4
_392:
	dd	_172
	dd	177
	dd	2
	align	4
_393:
	dd	_172
	dd	179
	dd	2
	align	4
_46:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	77,117,108,116,105,112,108,97,121,101,114,58
	align	4
_394:
	dd	_172
	dd	180
	dd	2
	align	4
_395:
	dd	_172
	dd	182
	dd	2
	align	4
_47:
	dd	_bbStringClass
	dd	2147483647
	dd	24
	dw	69,114,111,98,101,114,110,58,32,103,101,104,111,101,114,116
	dw	32,98,101,114,101,105,116,115
	align	4
_396:
	dd	_172
	dd	183
	dd	2
	align	4
_397:
	dd	_172
	dd	184
	dd	2
	align	4
_398:
	dd	_172
	dd	185
	dd	2
	align	4
_48:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	78,101,117,116,114,97,108
	align	4
_399:
	dd	_172
	dd	186
	dd	2
	align	4
_400:
	dd	_172
	dd	188
	dd	2
	align	4
_49:
	dd	_bbStringClass
	dd	2147483647
	dd	36
	dw	66,97,115,105,115,32,77,111,100,117,115,58,32,71,101,103
	dw	110,101,114,105,115,99,104,101,115,32,72,97,117,112,116,122
	dw	105,101,108,46
	align	4
_401:
	dd	_172
	dd	189
	dd	2
	align	4
_402:
	dd	_172
	dd	191
	dd	2
	align	4
_50:
	dd	_bbStringClass
	dd	2147483647
	dd	18
	dw	90,117,32,69,114,111,98,101,114,110,32,68,97,117,101,114
	dw	116,58
	align	4
_403:
	dd	_172
	dd	192
	dd	2
	align	4
_404:
	dd	_172
	dd	193
	dd	2
	align	4
_405:
	dd	_172
	dd	194
	dd	2
	align	4
_51:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	71,105,98,116
	align	4
_406:
	dd	_172
	dd	195
	dd	2
	align	4
_407:
	dd	_172
	dd	196
	dd	2
	align	4
_52:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	80,117,110,107,116,101,32,47,32,77,105,110,46
	align	4
_408:
	dd	_172
	dd	197
	dd	2
	align	4
_409:
	dd	_172
	dd	199
	dd	2
	align	4
_53:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	75,97,110,110,32,122,101,114,115,116,111,101,114,116,32,119
	dw	101,114,100,101,110,58
	align	4
_410:
	dd	_172
	dd	200
	dd	2
	align	4
_411:
	dd	_172
	dd	201
	dd	2
	align	4
_412:
	dd	_172
	dd	202
	dd	2
	align	4
_54:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	69,114,110,101,117,101,114,116,32,115,105,99,104,32,105,110
	align	4
_413:
	dd	_172
	dd	203
	dd	2
	align	4
_414:
	dd	_172
	dd	204
	dd	2
	align	4
_415:
	dd	_172
	dd	205
	dd	2
	align	4
_416:
	dd	_172
	dd	206
	dd	2
	align	4
_417:
	dd	_172
	dd	207
	dd	2
	align	4
_418:
	dd	_172
	dd	208
	dd	2
	align	4
_419:
	dd	_172
	dd	210
	dd	2
	align	4
_420:
	dd	_172
	dd	211
	dd	2
	align	4
_421:
	dd	_172
	dd	212
	dd	2
	align	4
_422:
	dd	_172
	dd	213
	dd	2
	align	4
_423:
	dd	_172
	dd	215
	dd	2
	align	4
_55:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	70,108,97,103,103,101,107,108,97,117,101,110,58,32,71,101
	dw	104,111,101,114,116
	align	4
_424:
	dd	_172
	dd	216
	dd	2
	align	4
_425:
	dd	_172
	dd	217
	dd	2
	align	4
_426:
	dd	_172
	dd	218
	dd	2
	align	4
_427:
	dd	_172
	dd	220
	dd	2
	align	4
_56:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	66,114,97,117,99,104,116
	align	4
_428:
	dd	_172
	dd	221
	dd	2
	align	4
_429:
	dd	_172
	dd	222
	dd	2
	align	4
_57:
	dd	_bbStringClass
	dd	2147483647
	dd	28
	dw	71,101,103,110,101,114,105,115,99,104,101,102,108,97,103,103
	dw	101,110,32,122,117,109,32,83,105,101,103,46
	align	4
_430:
	dd	_172
	dd	223
	dd	2
	align	4
_58:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	71,108,111,98,97,108
	align	4
_431:
	dd	_172
	dd	224
	dd	2
	align	4
_432:
	dd	_172
	dd	226
	dd	2
	align	4
_59:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	65,108,108,103,101,109,101,105,110,58
	align	4
_433:
	dd	_172
	dd	227
	dd	2
	align	4
_434:
	dd	_172
	dd	229
	dd	2
	align	4
_60:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	83,97,109,109,108,101,32,103,101,115,97,109,116
	align	4
_435:
	dd	_172
	dd	230
	dd	2
	align	4
_436:
	dd	_172
	dd	231
	dd	2
	align	4
_437:
	dd	_172
	dd	232
	dd	2
	align	4
_438:
	dd	_172
	dd	234
	dd	2
	align	4
_61:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	90,101,114,115,116,111,101,114,101,32,103,101,115,97,109,116
	align	4
_439:
	dd	_172
	dd	235
	dd	2
	align	4
_440:
	dd	_172
	dd	236
	dd	2
	align	4
_62:
	dd	_bbStringClass
	dd	2147483647
	dd	18
	dw	71,101,103,110,101,114,105,115,99,104,101,32,80,97,110,122
	dw	101,114
	align	4
_441:
	dd	_172
	dd	237
	dd	2
	align	4
_442:
	dd	_172
	dd	239
	dd	2
	align	4
_63:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	69,114,111,98,101,114,101,32,103,101,115,97,109,116
	align	4
_443:
	dd	_172
	dd	240
	dd	2
	align	4
_444:
	dd	_172
	dd	241
	dd	2
	align	4
_64:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	87,97,121,112,111,105,110,116,115
	align	4
_445:
	dd	_172
	dd	242
	dd	2
	align	4
_446:
	dd	_172
	dd	243
	dd	2
	align	4
_447:
	dd	_172
	dd	245
	dd	2
	align	4
_448:
	dd	_172
	dd	246
	dd	2
	align	4
_449:
	dd	_172
	dd	247
	dd	2
	align	4
_450:
	dd	_172
	dd	248
	dd	2
	align	4
_451:
	dd	_172
	dd	249
	dd	2
	align	4
_452:
	dd	_172
	dd	250
	dd	2
	align	4
_453:
	dd	_172
	dd	252
	dd	2
	align	4
_65:
	dd	_bbStringClass
	dd	2147483647
	dd	29
	dw	65,117,115,103,101,108,111,101,115,116,101,115,32,69,114,101
	dw	105,103,110,105,115,58,32,71,76,79,66,65,76
	align	4
_454:
	dd	_172
	dd	253
	dd	2
	align	4
_455:
	dd	_172
	dd	255
	dd	2
	align	4
_66:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	83,105,101,103,58
	align	4
_456:
	dd	_172
	dd	256
	dd	2
	align	4
_457:
	dd	_172
	dd	258
	dd	2
	align	4
_67:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	67,105,110,101,109,97,58
	align	4
_458:
	dd	_172
	dd	259
	dd	2
	align	4
_459:
	dd	_172
	dd	260
	dd	2
	align	4
_460:
	dd	_172
	dd	262
	dd	2
	align	4
_68:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	78,97,101,99,104,115,116,101,32,75,97,114,116,101,58
	align	4
_461:
	dd	_172
	dd	263
	dd	2
	align	4
_462:
	dd	_172
	dd	264
	dd	2
	align	4
_463:
	dd	_172
	dd	266
	dd	2
	align	4
_69:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	90,117,114,117,101,99,107,32,105,110,115,32,77,101,110,117
	dw	46
	align	4
_464:
	dd	_172
	dd	267
	dd	2
	align	4
_465:
	dd	_172
	dd	269
	dd	2
	align	4
_70:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	75,97,114,116,101,32,78,101,117,115,116,97,114,116,101,110
	dw	46
	align	4
_466:
	dd	_172
	dd	270
	dd	2
	align	4
_467:
	dd	_172
	dd	272
	dd	2
	align	4
_71:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	78,105,101,100,101,114,108,97,103,101,58
	align	4
_468:
	dd	_172
	dd	273
	dd	2
	align	4
_469:
	dd	_172
	dd	275
	dd	2
	align	4
_470:
	dd	_172
	dd	276
	dd	2
	align	4
_471:
	dd	_172
	dd	277
	dd	2
	align	4
_472:
	dd	_172
	dd	279
	dd	2
	align	4
_473:
	dd	_172
	dd	280
	dd	2
	align	4
_474:
	dd	_172
	dd	281
	dd	2
	align	4
_475:
	dd	_172
	dd	283
	dd	2
	align	4
_476:
	dd	_172
	dd	284
	dd	2
	align	4
_477:
	dd	_172
	dd	286
	dd	2
	align	4
_478:
	dd	_172
	dd	287
	dd	2
	align	4
_479:
	dd	_172
	dd	293
	dd	2
	align	4
_72:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	79,107
	align	4
_480:
	dd	_172
	dd	294
	dd	2
	align	4
_73:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	65,98,98,114,101,99,104,101,110
	align	4
_481:
	dd	_172
	dd	315
	dd	2
	align	4
_1255:
	dd	3
	dd	0
	dd	0
	align	4
_482:
	dd	_172
	dd	316
	dd	3
	align	4
_483:
	dd	_172
	dd	317
	dd	3
	align	4
_497:
	dd	3
	dd	0
	dd	0
	align	4
_488:
	dd	_172
	dd	319
	dd	5
	align	4
_496:
	dd	3
	dd	0
	dd	0
	align	4
_492:
	dd	_172
	dd	321
	dd	7
	align	4
_495:
	dd	_172
	dd	322
	dd	7
	align	4
_808:
	dd	3
	dd	0
	dd	0
	align	4
_498:
	dd	_172
	dd	325
	dd	5
	align	4
_743:
	dd	3
	dd	0
	dd	0
	align	4
_520:
	dd	_172
	dd	329
	dd	7
	align	4
_524:
	dd	_172
	dd	330
	dd	7
	align	4
_528:
	dd	_172
	dd	331
	dd	7
	align	4
_532:
	dd	_172
	dd	332
	dd	7
	align	4
_536:
	dd	_172
	dd	333
	dd	7
	align	4
_540:
	dd	_172
	dd	334
	dd	7
	align	4
_598:
	dd	3
	dd	0
	dd	0
	align	4
_542:
	dd	_172
	dd	335
	dd	8
	align	4
_546:
	dd	_172
	dd	336
	dd	8
	align	4
_552:
	dd	3
	dd	0
	dd	0
	align	4
_548:
	dd	_172
	dd	336
	dd	45
	align	4
_553:
	dd	_172
	dd	337
	dd	8
	align	4
_559:
	dd	3
	dd	0
	dd	0
	align	4
_555:
	dd	_172
	dd	337
	dd	44
	align	4
_560:
	dd	_172
	dd	338
	dd	8
	align	4
_566:
	dd	3
	dd	0
	dd	0
	align	4
_562:
	dd	_172
	dd	338
	dd	43
	align	4
_567:
	dd	_172
	dd	339
	dd	8
	align	4
_573:
	dd	_172
	dd	341
	dd	8
	align	4
_581:
	dd	3
	dd	0
	dd	0
	align	4
_575:
	dd	_172
	dd	342
	dd	9
	align	4
_582:
	dd	_172
	dd	345
	dd	8
	align	4
_597:
	dd	3
	dd	0
	dd	0
	align	4
_584:
	dd	_172
	dd	346
	dd	9
	align	4
_590:
	dd	_172
	dd	347
	dd	9
	align	4
_596:
	dd	3
	dd	0
	dd	0
	align	4
_592:
	dd	_172
	dd	347
	dd	53
	align	4
_599:
	dd	_172
	dd	351
	dd	7
	align	4
_603:
	dd	_172
	dd	352
	dd	7
	align	4
_738:
	dd	3
	dd	0
	dd	0
	align	4
_605:
	dd	_172
	dd	353
	dd	8
	align	4
_609:
	dd	_172
	dd	355
	dd	8
	align	4
_648:
	dd	3
	dd	0
	dd	0
	align	4
_611:
	dd	_172
	dd	356
	dd	9
	align	4
_612:
	dd	_172
	dd	357
	dd	9
	align	4
_613:
	dd	_172
	dd	358
	dd	9
	align	4
_614:
	dd	_172
	dd	359
	dd	9
	align	4
_647:
	dd	3
	dd	0
	dd	0
	align	4
_620:
	dd	_172
	dd	360
	dd	10
	align	4
_621:
	dd	_172
	dd	361
	dd	10
	align	4
_624:
	dd	3
	dd	0
	dd	0
	align	4
_623:
	dd	_172
	dd	362
	dd	11
	align	4
_625:
	dd	_172
	dd	365
	dd	10
	align	4
_626:
	dd	_172
	dd	366
	dd	10
	align	4
_639:
	dd	3
	dd	0
	dd	0
	align	4
_628:
	dd	_172
	dd	367
	dd	11
	align	4
_629:
	dd	_172
	dd	369
	dd	11
	align	4
_630:
	dd	_172
	dd	370
	dd	11
	align	4
_633:
	dd	3
	dd	0
	dd	0
	align	4
_632:
	dd	_172
	dd	371
	dd	12
	align	4
_634:
	dd	_172
	dd	374
	dd	11
	align	4
_635:
	dd	_172
	dd	375
	dd	11
	align	4
_638:
	dd	3
	dd	0
	dd	0
	align	4
_637:
	dd	_172
	dd	376
	dd	12
	align	4
_640:
	dd	_172
	dd	380
	dd	10
	align	4
_641:
	dd	_172
	dd	381
	dd	10
	align	4
_646:
	dd	3
	dd	0
	dd	0
	align	4
_643:
	dd	_172
	dd	382
	dd	11
	align	4
_644:
	dd	_172
	dd	383
	dd	11
	align	4
_645:
	dd	_172
	dd	384
	dd	11
	align	4
_649:
	dd	_172
	dd	390
	dd	8
	align	4
_650:
	dd	_172
	dd	391
	dd	8
	align	4
_711:
	dd	3
	dd	0
	dd	0
	align	4
_652:
	dd	_172
	dd	392
	dd	9
	align	4
_653:
	dd	_172
	dd	393
	dd	9
	align	4
_696:
	dd	3
	dd	0
	dd	0
	align	4
_655:
	dd	_172
	dd	394
	dd	10
	align	4
_656:
	dd	_172
	dd	395
	dd	10
	align	4
_657:
	dd	_172
	dd	396
	dd	10
	align	4
_658:
	dd	_172
	dd	397
	dd	10
	align	4
_695:
	dd	3
	dd	0
	dd	0
	align	4
_664:
	dd	_172
	dd	398
	dd	11
	align	4
_665:
	dd	_172
	dd	399
	dd	11
	align	4
_666:
	dd	_172
	dd	400
	dd	11
	align	4
_674:
	dd	3
	dd	0
	dd	0
	align	4
_668:
	dd	_172
	dd	401
	dd	12
	align	4
_669:
	dd	_172
	dd	403
	dd	12
	align	4
_670:
	dd	_172
	dd	404
	dd	12
	align	4
_673:
	dd	3
	dd	0
	dd	0
	align	4
_672:
	dd	_172
	dd	405
	dd	13
	align	4
_675:
	dd	_172
	dd	409
	dd	11
	align	4
_676:
	dd	_172
	dd	410
	dd	11
	align	4
_694:
	dd	3
	dd	0
	dd	0
	align	4
_678:
	dd	_172
	dd	411
	dd	12
	align	4
_679:
	dd	_172
	dd	413
	dd	12
	align	4
_680:
	dd	_172
	dd	414
	dd	12
	align	4
_683:
	dd	3
	dd	0
	dd	0
	align	4
_682:
	dd	_172
	dd	415
	dd	13
	align	4
_684:
	dd	_172
	dd	418
	dd	12
	align	4
_685:
	dd	_172
	dd	419
	dd	12
	align	4
_688:
	dd	3
	dd	0
	dd	0
	align	4
_687:
	dd	_172
	dd	420
	dd	13
	align	4
_689:
	dd	_172
	dd	422
	dd	12
	align	4
_690:
	dd	_172
	dd	423
	dd	12
	align	4
_693:
	dd	3
	dd	0
	dd	0
	align	4
_692:
	dd	_172
	dd	424
	dd	13
	align	4
_697:
	dd	_172
	dd	430
	dd	9
	align	4
_698:
	dd	_172
	dd	431
	dd	9
	align	4
_710:
	dd	3
	dd	0
	dd	0
	align	4
_700:
	dd	_172
	dd	432
	dd	10
	align	4
_701:
	dd	_172
	dd	433
	dd	10
	align	4
_702:
	dd	_172
	dd	434
	dd	10
	align	4
_709:
	dd	3
	dd	0
	dd	0
	align	4
_706:
	dd	_172
	dd	435
	dd	11
	align	4
_707:
	dd	_172
	dd	436
	dd	11
	align	4
_708:
	dd	_172
	dd	437
	dd	11
	align	4
_712:
	dd	_172
	dd	442
	dd	8
	align	4
_713:
	dd	_172
	dd	443
	dd	8
	align	4
_737:
	dd	3
	dd	0
	dd	0
	align	4
_715:
	dd	_172
	dd	444
	dd	9
	align	4
_716:
	dd	_172
	dd	445
	dd	9
	align	4
_719:
	dd	3
	dd	0
	dd	0
	align	4
_718:
	dd	_172
	dd	446
	dd	10
	align	4
_720:
	dd	_172
	dd	448
	dd	9
	align	4
_721:
	dd	_172
	dd	449
	dd	9
	align	4
_724:
	dd	3
	dd	0
	dd	0
	align	4
_723:
	dd	_172
	dd	450
	dd	10
	align	4
_725:
	dd	_172
	dd	452
	dd	9
	align	4
_726:
	dd	_172
	dd	453
	dd	9
	align	4
_730:
	dd	3
	dd	0
	dd	0
	align	4
_728:
	dd	_172
	dd	454
	dd	10
	align	4
_729:
	dd	_172
	dd	455
	dd	10
	align	4
_731:
	dd	_172
	dd	457
	dd	9
	align	4
_732:
	dd	_172
	dd	458
	dd	9
	align	4
_736:
	dd	3
	dd	0
	dd	0
	align	4
_734:
	dd	_172
	dd	459
	dd	10
	align	4
_735:
	dd	_172
	dd	460
	dd	10
	align	4
_739:
	dd	_172
	dd	465
	dd	7
	align	4
_740:
	dd	_172
	dd	466
	dd	7
	align	4
_748:
	dd	3
	dd	0
	dd	0
	align	4
_744:
	dd	_172
	dd	468
	dd	7
	align	4
_747:
	dd	_172
	dd	469
	dd	7
	align	4
_751:
	dd	3
	dd	0
	dd	0
	align	4
_749:
	dd	_172
	dd	471
	dd	7
	align	4
_750:
	dd	_172
	dd	472
	dd	7
	align	4
_754:
	dd	3
	dd	0
	dd	0
	align	4
_752:
	dd	_172
	dd	474
	dd	7
	align	4
_753:
	dd	_172
	dd	475
	dd	7
	align	4
_757:
	dd	3
	dd	0
	dd	0
	align	4
_755:
	dd	_172
	dd	477
	dd	7
	align	4
_756:
	dd	_172
	dd	478
	dd	7
	align	4
_760:
	dd	3
	dd	0
	dd	0
	align	4
_758:
	dd	_172
	dd	482
	dd	7
	align	4
_759:
	dd	_172
	dd	483
	dd	7
	align	4
_763:
	dd	3
	dd	0
	dd	0
	align	4
_761:
	dd	_172
	dd	485
	dd	7
	align	4
_762:
	dd	_172
	dd	486
	dd	7
	align	4
_766:
	dd	3
	dd	0
	dd	0
	align	4
_764:
	dd	_172
	dd	488
	dd	7
	align	4
_765:
	dd	_172
	dd	489
	dd	7
	align	4
_769:
	dd	3
	dd	0
	dd	0
	align	4
_767:
	dd	_172
	dd	493
	dd	7
	align	4
_768:
	dd	_172
	dd	494
	dd	7
	align	4
_772:
	dd	3
	dd	0
	dd	0
	align	4
_770:
	dd	_172
	dd	496
	dd	7
	align	4
_771:
	dd	_172
	dd	497
	dd	7
	align	4
_775:
	dd	3
	dd	0
	dd	0
	align	4
_773:
	dd	_172
	dd	499
	dd	7
	align	4
_774:
	dd	_172
	dd	500
	dd	7
	align	4
_779:
	dd	3
	dd	0
	dd	0
	align	4
_776:
	dd	_172
	dd	504
	dd	7
	align	4
_777:
	dd	_172
	dd	505
	dd	7
	align	4
_778:
	dd	_172
	dd	506
	dd	7
	align	4
_783:
	dd	3
	dd	0
	dd	0
	align	4
_780:
	dd	_172
	dd	508
	dd	7
	align	4
_781:
	dd	_172
	dd	509
	dd	7
	align	4
_782:
	dd	_172
	dd	510
	dd	7
	align	4
_787:
	dd	3
	dd	0
	dd	0
	align	4
_784:
	dd	_172
	dd	512
	dd	7
	align	4
_785:
	dd	_172
	dd	513
	dd	7
	align	4
_786:
	dd	_172
	dd	514
	dd	7
	align	4
_791:
	dd	3
	dd	0
	dd	0
	align	4
_788:
	dd	_172
	dd	516
	dd	7
	align	4
_789:
	dd	_172
	dd	517
	dd	7
	align	4
_790:
	dd	_172
	dd	518
	dd	7
	align	4
_795:
	dd	3
	dd	0
	dd	0
	align	4
_792:
	dd	_172
	dd	522
	dd	7
	align	4
_793:
	dd	_172
	dd	523
	dd	7
	align	4
_794:
	dd	_172
	dd	524
	dd	7
	align	4
_799:
	dd	3
	dd	0
	dd	0
	align	4
_796:
	dd	_172
	dd	526
	dd	7
	align	4
_797:
	dd	_172
	dd	527
	dd	7
	align	4
_798:
	dd	_172
	dd	528
	dd	7
	align	4
_803:
	dd	3
	dd	0
	dd	0
	align	4
_800:
	dd	_172
	dd	530
	dd	7
	align	4
_801:
	dd	_172
	dd	531
	dd	7
	align	4
_802:
	dd	_172
	dd	532
	dd	7
	align	4
_807:
	dd	3
	dd	0
	dd	0
	align	4
_804:
	dd	_172
	dd	534
	dd	7
	align	4
_805:
	dd	_172
	dd	535
	dd	7
	align	4
_806:
	dd	_172
	dd	536
	dd	7
	align	4
_809:
	dd	_172
	dd	540
	dd	3
	align	4
_833:
	dd	3
	dd	0
	dd	0
	align	4
_811:
	dd	_172
	dd	541
	dd	4
	align	4
_812:
	dd	_172
	dd	542
	dd	4
	align	4
_813:
	dd	_172
	dd	543
	dd	4
	align	4
_814:
	dd	_172
	dd	544
	dd	4
	align	4
_815:
	dd	_172
	dd	546
	dd	4
	align	4
_816:
	dd	_172
	dd	547
	dd	4
	align	4
_819:
	dd	3
	dd	0
	dd	0
	align	4
_818:
	dd	_172
	dd	548
	dd	5
	align	4
_822:
	dd	3
	dd	0
	dd	0
	align	4
_821:
	dd	_172
	dd	550
	dd	5
	align	4
_823:
	dd	_172
	dd	553
	dd	4
	align	4
_824:
	dd	_172
	dd	554
	dd	4
	align	4
_828:
	dd	3
	dd	0
	dd	0
	align	4
_826:
	dd	_172
	dd	555
	dd	5
	align	4
_827:
	dd	_172
	dd	556
	dd	5
	align	4
_832:
	dd	3
	dd	0
	dd	0
	align	4
_830:
	dd	_172
	dd	558
	dd	5
	align	4
_831:
	dd	_172
	dd	559
	dd	5
	align	4
_844:
	dd	3
	dd	0
	dd	0
	align	4
_835:
	dd	_172
	dd	562
	dd	4
	align	4
_836:
	dd	_172
	dd	563
	dd	4
	align	4
_837:
	dd	_172
	dd	564
	dd	4
	align	4
_838:
	dd	_172
	dd	565
	dd	4
	align	4
_839:
	dd	_172
	dd	566
	dd	4
	align	4
_840:
	dd	_172
	dd	567
	dd	4
	align	4
_841:
	dd	_172
	dd	568
	dd	4
	align	4
_842:
	dd	_172
	dd	569
	dd	4
	align	4
_843:
	dd	_172
	dd	570
	dd	4
	align	4
_845:
	dd	_172
	dd	575
	dd	3
	align	4
_1148:
	dd	3
	dd	0
	dd	0
	align	4
_847:
	dd	_172
	dd	576
	dd	4
	align	4
_848:
	dd	_172
	dd	577
	dd	4
	align	4
_922:
	dd	3
	dd	0
	dd	0
	align	4
_850:
	dd	_172
	dd	578
	dd	5
	align	4
_851:
	dd	_172
	dd	579
	dd	5
	align	4
_852:
	dd	_172
	dd	580
	dd	5
	align	4
_853:
	dd	_172
	dd	581
	dd	5
	align	4
_907:
	dd	3
	dd	0
	dd	0
	align	4
_859:
	dd	_172
	dd	582
	dd	6
	align	4
_860:
	dd	_172
	dd	583
	dd	6
	align	4
_863:
	dd	3
	dd	0
	dd	0
	align	4
_862:
	dd	_172
	dd	584
	dd	7
	align	4
_866:
	dd	3
	dd	0
	dd	0
	align	4
_865:
	dd	_172
	dd	586
	dd	7
	align	4
_867:
	dd	_172
	dd	589
	dd	6
	align	4
_868:
	dd	_172
	dd	590
	dd	6
	align	4
_887:
	dd	3
	dd	0
	dd	0
	align	4
_870:
	dd	_172
	dd	591
	dd	7
	align	4
_871:
	dd	_172
	dd	593
	dd	7
	align	4
_872:
	dd	_172
	dd	594
	dd	7
	align	4
_875:
	dd	3
	dd	0
	dd	0
	align	4
_874:
	dd	_172
	dd	595
	dd	8
	align	4
_878:
	dd	3
	dd	0
	dd	0
	align	4
_877:
	dd	_172
	dd	597
	dd	8
	align	4
_879:
	dd	_172
	dd	600
	dd	7
	align	4
_880:
	dd	_172
	dd	601
	dd	7
	align	4
_883:
	dd	3
	dd	0
	dd	0
	align	4
_882:
	dd	_172
	dd	602
	dd	8
	align	4
_886:
	dd	3
	dd	0
	dd	0
	align	4
_885:
	dd	_172
	dd	604
	dd	8
	align	4
_894:
	dd	3
	dd	0
	dd	0
	align	4
_889:
	dd	_172
	dd	607
	dd	7
	align	4
_890:
	dd	_172
	dd	608
	dd	7
	align	4
_891:
	dd	_172
	dd	609
	dd	7
	align	4
_892:
	dd	_172
	dd	610
	dd	7
	align	4
_893:
	dd	_172
	dd	611
	dd	7
	align	4
_895:
	dd	_172
	dd	614
	dd	6
	align	4
_896:
	dd	_172
	dd	615
	dd	6
	align	4
_901:
	dd	3
	dd	0
	dd	0
	align	4
_898:
	dd	_172
	dd	616
	dd	7
	align	4
_899:
	dd	_172
	dd	617
	dd	7
	align	4
_900:
	dd	_172
	dd	618
	dd	7
	align	4
_906:
	dd	3
	dd	0
	dd	0
	align	4
_903:
	dd	_172
	dd	620
	dd	7
	align	4
_904:
	dd	_172
	dd	621
	dd	7
	align	4
_905:
	dd	_172
	dd	622
	dd	7
	align	4
_921:
	dd	3
	dd	0
	dd	0
	align	4
_909:
	dd	_172
	dd	625
	dd	6
	align	4
_910:
	dd	_172
	dd	626
	dd	6
	align	4
_911:
	dd	_172
	dd	627
	dd	6
	align	4
_912:
	dd	_172
	dd	628
	dd	6
	align	4
_913:
	dd	_172
	dd	629
	dd	6
	align	4
_914:
	dd	_172
	dd	630
	dd	6
	align	4
_915:
	dd	_172
	dd	631
	dd	6
	align	4
_916:
	dd	_172
	dd	632
	dd	6
	align	4
_917:
	dd	_172
	dd	633
	dd	6
	align	4
_918:
	dd	_172
	dd	634
	dd	6
	align	4
_919:
	dd	_172
	dd	635
	dd	6
	align	4
_920:
	dd	_172
	dd	636
	dd	6
	align	4
_939:
	dd	3
	dd	0
	dd	0
	align	4
_924:
	dd	_172
	dd	639
	dd	5
	align	4
_925:
	dd	_172
	dd	640
	dd	5
	align	4
_926:
	dd	_172
	dd	641
	dd	5
	align	4
_927:
	dd	_172
	dd	642
	dd	5
	align	4
_928:
	dd	_172
	dd	643
	dd	5
	align	4
_929:
	dd	_172
	dd	644
	dd	5
	align	4
_930:
	dd	_172
	dd	645
	dd	5
	align	4
_931:
	dd	_172
	dd	646
	dd	5
	align	4
_932:
	dd	_172
	dd	647
	dd	5
	align	4
_933:
	dd	_172
	dd	648
	dd	5
	align	4
_934:
	dd	_172
	dd	649
	dd	5
	align	4
_935:
	dd	_172
	dd	650
	dd	5
	align	4
_936:
	dd	_172
	dd	651
	dd	5
	align	4
_937:
	dd	_172
	dd	652
	dd	5
	align	4
_938:
	dd	_172
	dd	653
	dd	5
	align	4
_940:
	dd	_172
	dd	657
	dd	4
	align	4
_941:
	dd	_172
	dd	658
	dd	4
	align	4
_1070:
	dd	3
	dd	0
	dd	0
	align	4
_943:
	dd	_172
	dd	659
	dd	5
	align	4
_944:
	dd	_172
	dd	660
	dd	5
	align	4
_1025:
	dd	3
	dd	0
	dd	0
	align	4
_946:
	dd	_172
	dd	661
	dd	6
	align	4
_947:
	dd	_172
	dd	662
	dd	6
	align	4
_948:
	dd	_172
	dd	663
	dd	6
	align	4
_949:
	dd	_172
	dd	664
	dd	6
	align	4
_1012:
	dd	3
	dd	0
	dd	0
	align	4
_955:
	dd	_172
	dd	665
	dd	7
	align	4
_956:
	dd	_172
	dd	666
	dd	7
	align	4
_957:
	dd	_172
	dd	667
	dd	7
	align	4
_968:
	dd	3
	dd	0
	dd	0
	align	4
_959:
	dd	_172
	dd	668
	dd	8
	align	4
_960:
	dd	_172
	dd	670
	dd	8
	align	4
_961:
	dd	_172
	dd	671
	dd	8
	align	4
_964:
	dd	3
	dd	0
	dd	0
	align	4
_963:
	dd	_172
	dd	672
	dd	9
	align	4
_967:
	dd	3
	dd	0
	dd	0
	align	4
_966:
	dd	_172
	dd	674
	dd	9
	align	4
_973:
	dd	3
	dd	0
	dd	0
	align	4
_970:
	dd	_172
	dd	677
	dd	8
	align	4
_971:
	dd	_172
	dd	678
	dd	8
	align	4
_972:
	dd	_172
	dd	679
	dd	8
	align	4
_974:
	dd	_172
	dd	682
	dd	7
	align	4
_975:
	dd	_172
	dd	683
	dd	7
	align	4
_1002:
	dd	3
	dd	0
	dd	0
	align	4
_977:
	dd	_172
	dd	684
	dd	8
	align	4
_978:
	dd	_172
	dd	686
	dd	8
	align	4
_979:
	dd	_172
	dd	687
	dd	8
	align	4
_982:
	dd	3
	dd	0
	dd	0
	align	4
_981:
	dd	_172
	dd	688
	dd	9
	align	4
_985:
	dd	3
	dd	0
	dd	0
	align	4
_984:
	dd	_172
	dd	690
	dd	9
	align	4
_986:
	dd	_172
	dd	693
	dd	8
	align	4
_987:
	dd	_172
	dd	694
	dd	8
	align	4
_990:
	dd	3
	dd	0
	dd	0
	align	4
_989:
	dd	_172
	dd	695
	dd	9
	align	4
_993:
	dd	3
	dd	0
	dd	0
	align	4
_992:
	dd	_172
	dd	697
	dd	9
	align	4
_994:
	dd	_172
	dd	699
	dd	8
	align	4
_995:
	dd	_172
	dd	700
	dd	8
	align	4
_998:
	dd	3
	dd	0
	dd	0
	align	4
_997:
	dd	_172
	dd	701
	dd	9
	align	4
_1001:
	dd	3
	dd	0
	dd	0
	align	4
_1000:
	dd	_172
	dd	703
	dd	9
	align	4
_1011:
	dd	3
	dd	0
	dd	0
	align	4
_1004:
	dd	_172
	dd	706
	dd	8
	align	4
_1005:
	dd	_172
	dd	707
	dd	8
	align	4
_1006:
	dd	_172
	dd	708
	dd	8
	align	4
_1007:
	dd	_172
	dd	709
	dd	8
	align	4
_1008:
	dd	_172
	dd	710
	dd	8
	align	4
_1009:
	dd	_172
	dd	711
	dd	8
	align	4
_1010:
	dd	_172
	dd	712
	dd	8
	align	4
_1024:
	dd	3
	dd	0
	dd	0
	align	4
_1014:
	dd	_172
	dd	715
	dd	7
	align	4
_1015:
	dd	_172
	dd	716
	dd	7
	align	4
_1016:
	dd	_172
	dd	717
	dd	7
	align	4
_1017:
	dd	_172
	dd	718
	dd	7
	align	4
_1018:
	dd	_172
	dd	719
	dd	7
	align	4
_1019:
	dd	_172
	dd	720
	dd	7
	align	4
_1020:
	dd	_172
	dd	721
	dd	7
	align	4
_1021:
	dd	_172
	dd	722
	dd	7
	align	4
_1022:
	dd	_172
	dd	723
	dd	7
	align	4
_1023:
	dd	_172
	dd	724
	dd	7
	align	4
_1043:
	dd	3
	dd	0
	dd	0
	align	4
_1027:
	dd	_172
	dd	727
	dd	6
	align	4
_1028:
	dd	_172
	dd	728
	dd	6
	align	4
_1029:
	dd	_172
	dd	729
	dd	6
	align	4
_1030:
	dd	_172
	dd	730
	dd	6
	align	4
_1031:
	dd	_172
	dd	731
	dd	6
	align	4
_1032:
	dd	_172
	dd	732
	dd	6
	align	4
_1033:
	dd	_172
	dd	733
	dd	6
	align	4
_1034:
	dd	_172
	dd	734
	dd	6
	align	4
_1035:
	dd	_172
	dd	735
	dd	6
	align	4
_1036:
	dd	_172
	dd	736
	dd	6
	align	4
_1037:
	dd	_172
	dd	737
	dd	6
	align	4
_1038:
	dd	_172
	dd	738
	dd	6
	align	4
_1039:
	dd	_172
	dd	739
	dd	6
	align	4
_1040:
	dd	_172
	dd	740
	dd	6
	align	4
_1041:
	dd	_172
	dd	741
	dd	6
	align	4
_1042:
	dd	_172
	dd	742
	dd	6
	align	4
_1044:
	dd	_172
	dd	745
	dd	5
	align	4
_1045:
	dd	_172
	dd	746
	dd	5
	align	4
_1062:
	dd	3
	dd	0
	dd	0
	align	4
_1047:
	dd	_172
	dd	747
	dd	6
	align	4
_1048:
	dd	_172
	dd	748
	dd	6
	align	4
_1049:
	dd	_172
	dd	749
	dd	6
	align	4
_1056:
	dd	3
	dd	0
	dd	0
	align	4
_1053:
	dd	_172
	dd	750
	dd	7
	align	4
_1054:
	dd	_172
	dd	751
	dd	7
	align	4
_1055:
	dd	_172
	dd	752
	dd	7
	align	4
_1061:
	dd	3
	dd	0
	dd	0
	align	4
_1058:
	dd	_172
	dd	754
	dd	7
	align	4
_1059:
	dd	_172
	dd	755
	dd	7
	align	4
_1060:
	dd	_172
	dd	756
	dd	7
	align	4
_1069:
	dd	3
	dd	0
	dd	0
	align	4
_1064:
	dd	_172
	dd	759
	dd	6
	align	4
_1065:
	dd	_172
	dd	760
	dd	6
	align	4
_1066:
	dd	_172
	dd	761
	dd	6
	align	4
_1067:
	dd	_172
	dd	762
	dd	6
	align	4
_1068:
	dd	_172
	dd	763
	dd	6
	align	4
_1095:
	dd	3
	dd	0
	dd	0
	align	4
_1072:
	dd	_172
	dd	766
	dd	5
	align	4
_1073:
	dd	_172
	dd	767
	dd	5
	align	4
_1074:
	dd	_172
	dd	768
	dd	5
	align	4
_1075:
	dd	_172
	dd	769
	dd	5
	align	4
_1076:
	dd	_172
	dd	770
	dd	5
	align	4
_1077:
	dd	_172
	dd	771
	dd	5
	align	4
_1078:
	dd	_172
	dd	772
	dd	5
	align	4
_1079:
	dd	_172
	dd	773
	dd	5
	align	4
_1080:
	dd	_172
	dd	774
	dd	5
	align	4
_1081:
	dd	_172
	dd	775
	dd	5
	align	4
_1082:
	dd	_172
	dd	776
	dd	5
	align	4
_1083:
	dd	_172
	dd	777
	dd	5
	align	4
_1084:
	dd	_172
	dd	778
	dd	5
	align	4
_1085:
	dd	_172
	dd	779
	dd	5
	align	4
_1086:
	dd	_172
	dd	780
	dd	5
	align	4
_1087:
	dd	_172
	dd	781
	dd	5
	align	4
_1088:
	dd	_172
	dd	782
	dd	5
	align	4
_1089:
	dd	_172
	dd	783
	dd	5
	align	4
_1090:
	dd	_172
	dd	784
	dd	5
	align	4
_1091:
	dd	_172
	dd	785
	dd	5
	align	4
_1092:
	dd	_172
	dd	786
	dd	5
	align	4
_1093:
	dd	_172
	dd	787
	dd	5
	align	4
_1094:
	dd	_172
	dd	788
	dd	5
	align	4
_1096:
	dd	_172
	dd	791
	dd	4
	align	4
_1097:
	dd	_172
	dd	792
	dd	4
	align	4
_1135:
	dd	3
	dd	0
	dd	0
	align	4
_1099:
	dd	_172
	dd	793
	dd	5
	align	4
_1100:
	dd	_172
	dd	794
	dd	5
	align	4
_1103:
	dd	3
	dd	0
	dd	0
	align	4
_1102:
	dd	_172
	dd	795
	dd	6
	align	4
_1106:
	dd	3
	dd	0
	dd	0
	align	4
_1105:
	dd	_172
	dd	797
	dd	6
	align	4
_1107:
	dd	_172
	dd	799
	dd	5
	align	4
_1108:
	dd	_172
	dd	800
	dd	5
	align	4
_1111:
	dd	3
	dd	0
	dd	0
	align	4
_1110:
	dd	_172
	dd	801
	dd	6
	align	4
_1114:
	dd	3
	dd	0
	dd	0
	align	4
_1113:
	dd	_172
	dd	803
	dd	6
	align	4
_1115:
	dd	_172
	dd	805
	dd	5
	align	4
_1116:
	dd	_172
	dd	806
	dd	5
	align	4
_1120:
	dd	3
	dd	0
	dd	0
	align	4
_1118:
	dd	_172
	dd	807
	dd	6
	align	4
_1119:
	dd	_172
	dd	808
	dd	6
	align	4
_1124:
	dd	3
	dd	0
	dd	0
	align	4
_1122:
	dd	_172
	dd	810
	dd	6
	align	4
_1123:
	dd	_172
	dd	811
	dd	6
	align	4
_1125:
	dd	_172
	dd	813
	dd	5
	align	4
_1126:
	dd	_172
	dd	814
	dd	5
	align	4
_1130:
	dd	3
	dd	0
	dd	0
	align	4
_1128:
	dd	_172
	dd	815
	dd	6
	align	4
_1129:
	dd	_172
	dd	816
	dd	6
	align	4
_1134:
	dd	3
	dd	0
	dd	0
	align	4
_1132:
	dd	_172
	dd	818
	dd	6
	align	4
_1133:
	dd	_172
	dd	819
	dd	6
	align	4
_1147:
	dd	3
	dd	0
	dd	0
	align	4
_1137:
	dd	_172
	dd	822
	dd	5
	align	4
_1138:
	dd	_172
	dd	823
	dd	5
	align	4
_1139:
	dd	_172
	dd	824
	dd	5
	align	4
_1140:
	dd	_172
	dd	825
	dd	5
	align	4
_1141:
	dd	_172
	dd	826
	dd	5
	align	4
_1142:
	dd	_172
	dd	827
	dd	5
	align	4
_1143:
	dd	_172
	dd	828
	dd	5
	align	4
_1144:
	dd	_172
	dd	829
	dd	5
	align	4
_1145:
	dd	_172
	dd	830
	dd	5
	align	4
_1146:
	dd	_172
	dd	831
	dd	5
	align	4
_1201:
	dd	3
	dd	0
	dd	0
	align	4
_1150:
	dd	_172
	dd	834
	dd	4
	align	4
_1151:
	dd	_172
	dd	835
	dd	4
	align	4
_1152:
	dd	_172
	dd	836
	dd	4
	align	4
_1153:
	dd	_172
	dd	837
	dd	4
	align	4
_1154:
	dd	_172
	dd	838
	dd	4
	align	4
_1155:
	dd	_172
	dd	839
	dd	4
	align	4
_1156:
	dd	_172
	dd	840
	dd	4
	align	4
_1157:
	dd	_172
	dd	841
	dd	4
	align	4
_1158:
	dd	_172
	dd	842
	dd	4
	align	4
_1159:
	dd	_172
	dd	843
	dd	4
	align	4
_1160:
	dd	_172
	dd	844
	dd	4
	align	4
_1161:
	dd	_172
	dd	845
	dd	4
	align	4
_1162:
	dd	_172
	dd	846
	dd	4
	align	4
_1163:
	dd	_172
	dd	847
	dd	4
	align	4
_1164:
	dd	_172
	dd	848
	dd	4
	align	4
_1165:
	dd	_172
	dd	849
	dd	4
	align	4
_1166:
	dd	_172
	dd	850
	dd	4
	align	4
_1167:
	dd	_172
	dd	851
	dd	4
	align	4
_1168:
	dd	_172
	dd	852
	dd	4
	align	4
_1169:
	dd	_172
	dd	853
	dd	4
	align	4
_1170:
	dd	_172
	dd	854
	dd	4
	align	4
_1171:
	dd	_172
	dd	855
	dd	4
	align	4
_1172:
	dd	_172
	dd	856
	dd	4
	align	4
_1173:
	dd	_172
	dd	857
	dd	4
	align	4
_1174:
	dd	_172
	dd	858
	dd	4
	align	4
_1175:
	dd	_172
	dd	859
	dd	4
	align	4
_1176:
	dd	_172
	dd	860
	dd	4
	align	4
_1177:
	dd	_172
	dd	861
	dd	4
	align	4
_1178:
	dd	_172
	dd	862
	dd	4
	align	4
_1179:
	dd	_172
	dd	863
	dd	4
	align	4
_1180:
	dd	_172
	dd	864
	dd	4
	align	4
_1181:
	dd	_172
	dd	865
	dd	4
	align	4
_1182:
	dd	_172
	dd	866
	dd	4
	align	4
_1183:
	dd	_172
	dd	867
	dd	4
	align	4
_1184:
	dd	_172
	dd	868
	dd	4
	align	4
_1185:
	dd	_172
	dd	869
	dd	4
	align	4
_1186:
	dd	_172
	dd	870
	dd	4
	align	4
_1187:
	dd	_172
	dd	871
	dd	4
	align	4
_1188:
	dd	_172
	dd	872
	dd	4
	align	4
_1189:
	dd	_172
	dd	873
	dd	4
	align	4
_1190:
	dd	_172
	dd	874
	dd	4
	align	4
_1191:
	dd	_172
	dd	875
	dd	4
	align	4
_1192:
	dd	_172
	dd	876
	dd	4
	align	4
_1193:
	dd	_172
	dd	877
	dd	4
	align	4
_1194:
	dd	_172
	dd	878
	dd	4
	align	4
_1195:
	dd	_172
	dd	879
	dd	4
	align	4
_1196:
	dd	_172
	dd	880
	dd	4
	align	4
_1197:
	dd	_172
	dd	881
	dd	4
	align	4
_1198:
	dd	_172
	dd	882
	dd	4
	align	4
_1199:
	dd	_172
	dd	883
	dd	4
	align	4
_1200:
	dd	_172
	dd	884
	dd	4
	align	4
_1202:
	dd	_172
	dd	887
	dd	3
	align	4
_1240:
	dd	3
	dd	0
	dd	0
	align	4
_1204:
	dd	_172
	dd	888
	dd	4
	align	4
_1205:
	dd	_172
	dd	889
	dd	4
	align	4
_1208:
	dd	3
	dd	0
	dd	0
	align	4
_1207:
	dd	_172
	dd	890
	dd	5
	align	4
_1211:
	dd	3
	dd	0
	dd	0
	align	4
_1210:
	dd	_172
	dd	892
	dd	5
	align	4
_1212:
	dd	_172
	dd	894
	dd	4
	align	4
_1213:
	dd	_172
	dd	895
	dd	4
	align	4
_1216:
	dd	3
	dd	0
	dd	0
	align	4
_1215:
	dd	_172
	dd	896
	dd	5
	align	4
_1219:
	dd	3
	dd	0
	dd	0
	align	4
_1218:
	dd	_172
	dd	898
	dd	5
	align	4
_1220:
	dd	_172
	dd	900
	dd	4
	align	4
_1221:
	dd	_172
	dd	901
	dd	4
	align	4
_1222:
	dd	_172
	dd	903
	dd	4
	align	4
_1223:
	dd	_172
	dd	904
	dd	4
	align	4
_1226:
	dd	3
	dd	0
	dd	0
	align	4
_1225:
	dd	_172
	dd	905
	dd	5
	align	4
_1229:
	dd	3
	dd	0
	dd	0
	align	4
_1228:
	dd	_172
	dd	907
	dd	5
	align	4
_1230:
	dd	_172
	dd	909
	dd	4
	align	4
_1231:
	dd	_172
	dd	910
	dd	4
	align	4
_1234:
	dd	3
	dd	0
	dd	0
	align	4
_1233:
	dd	_172
	dd	911
	dd	5
	align	4
_1237:
	dd	3
	dd	0
	dd	0
	align	4
_1236:
	dd	_172
	dd	913
	dd	5
	align	4
_1238:
	dd	_172
	dd	915
	dd	4
	align	4
_1239:
	dd	_172
	dd	916
	dd	4
	align	4
_1254:
	dd	3
	dd	0
	dd	0
	align	4
_1242:
	dd	_172
	dd	918
	dd	4
	align	4
_1243:
	dd	_172
	dd	919
	dd	4
	align	4
_1244:
	dd	_172
	dd	920
	dd	4
	align	4
_1245:
	dd	_172
	dd	921
	dd	4
	align	4
_1246:
	dd	_172
	dd	922
	dd	4
	align	4
_1247:
	dd	_172
	dd	923
	dd	4
	align	4
_1248:
	dd	_172
	dd	925
	dd	4
	align	4
_1249:
	dd	_172
	dd	926
	dd	4
	align	4
_1250:
	dd	_172
	dd	927
	dd	4
	align	4
_1251:
	dd	_172
	dd	928
	dd	4
	align	4
_1252:
	dd	_172
	dd	929
	dd	4
	align	4
_1253:
	dd	_172
	dd	930
	dd	4
	align	4
_1256:
	dd	_172
	dd	938
	dd	2
