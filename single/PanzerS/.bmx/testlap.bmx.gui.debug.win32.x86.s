	format	MS COFF
	extrn	___bb_appstub_appstub
	extrn	___bb_audio_audio
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
	extrn	_bbATan2
	extrn	_bbAppTitle
	extrn	_bbArrayNew
	extrn	_bbArrayNew1D
	extrn	_bbCos
	extrn	_bbEmptyArray
	extrn	_bbEmptyString
	extrn	_bbEnd
	extrn	_bbFloatPow
	extrn	_bbFloatToInt
	extrn	_bbGCFree
	extrn	_bbNullObject
	extrn	_bbObjectClass
	extrn	_bbObjectCompare
	extrn	_bbObjectCtor
	extrn	_bbObjectDowncast
	extrn	_bbObjectDtor
	extrn	_bbObjectFree
	extrn	_bbObjectRegisterType
	extrn	_bbObjectReserved
	extrn	_bbObjectSendMessage
	extrn	_bbObjectToString
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbSin
	extrn	_bbSqr
	extrn	_bbStringClass
	extrn	_bbStringFromInt
	extrn	_brl_blitz_ArrayBoundsError
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_filesystem_ReadFile
	extrn	_brl_filesystem_WriteFile
	extrn	_brl_graphics_Flip
	extrn	_brl_graphics_Graphics
	extrn	_brl_linkedlist_CreateList
	extrn	_brl_max2d_Cls
	extrn	_brl_max2d_DrawImage
	extrn	_brl_max2d_DrawRect
	extrn	_brl_max2d_DrawText
	extrn	_brl_max2d_GetHandle
	extrn	_brl_max2d_GetRotation
	extrn	_brl_max2d_GetScale
	extrn	_brl_max2d_LoadImage
	extrn	_brl_max2d_SetBlend
	extrn	_brl_max2d_SetColor
	extrn	_brl_max2d_SetScale
	extrn	_brl_pixmap_CopyPixmap
	extrn	_brl_pixmap_CreatePixmap
	extrn	_brl_pixmap_LoadPixmap
	extrn	_brl_pixmap_WritePixel
	extrn	_brl_polledinput_KeyHit
	extrn	_brl_polledinput_MouseHit
	extrn	_brl_polledinput_MouseX
	extrn	_brl_polledinput_MouseY
	extrn	_brl_polledinput_WaitKey
	extrn	_brl_system_Notify
	extrn	_brl_timer_CreateTimer
	public	__bb_Ttexgroup_Delete
	public	__bb_Ttexgroup_New
	public	__bb_Ttextur_Delete
	public	__bb_Ttextur_New
	public	__bb_Twaypoint_Delete
	public	__bb_Twaypoint_New
	public	__bb_main
	public	_bb_BufferTarget
	public	_bb_BufferTower
	public	_bb_CalcWinkel
	public	_bb_DrawPicture
	public	_bb_Gtesttile
	public	_bb_GtesttileI
	public	_bb_GtesttileO
	public	_bb_PushCollision
	public	_bb_PushTank
	public	_bb_Ttexgroup
	public	_bb_Ttextur
	public	_bb_Twaypoint
	public	_bb_button
	public	_bb_combospeicher
	public	_bb_diagonal
	public	_bb_drawPixel
	public	_bb_drawTile
	public	_bb_feedColor
	public	_bb_feedcount
	public	_bb_feeddata
	public	_bb_feedfactor
	public	_bb_feedpixel
	public	_bb_feedposx
	public	_bb_feedposy
	public	_bb_feedtexA
	public	_bb_feedtexACT
	public	_bb_feedtexB
	public	_bb_fenster
	public	_bb_getAllColors
	public	_bb_getdiff
	public	_bb_loadtheshit
	public	_bb_lotesttile
	public	_bb_lotesttileI
	public	_bb_lotesttileO
	public	_bb_lutesttile
	public	_bb_lutesttileI
	public	_bb_lutesttileO
	public	_bb_mapray
	public	_bb_maptexgrouplist
	public	_bb_maptexturlist
	public	_bb_maptodest
	public	_bb_md
	public	_bb_mouseover
	public	_bb_pokefeedColor
	public	_bb_printlistlist
	public	_bb_rotesttile
	public	_bb_rotesttileI
	public	_bb_rotesttileO
	public	_bb_savetheshit
	public	_bb_setfeedColor
	public	_bb_testtile
	public	_bb_testtileI
	public	_bb_testtileO
	public	_bb_tex
	public	_bb_texI
	public	_bb_texgrouplist
	public	_bb_texmap
	public	_bb_texmapstrip
	public	_bb_texturlist
	public	_bb_tmr
	public	_bb_waycecker
	public	_bb_waypointlist
	public	_bb_waypointtodest
	public	_bb_wayray
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,508
	push	ebx
	push	esi
	push	edi
	cmp	dword [_2972],0
	je	_2973
	mov	eax,0
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_2973:
	mov	dword [_2972],1
	mov	dword [ebp-4],_bbEmptyArray
	mov	dword [ebp-8],_bbNullObject
	mov	dword [ebp-12],0
	mov	dword [ebp-16],0
	mov	dword [ebp-100],0
	mov	dword [ebp-104],0
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	mov	dword [ebp-108],0
	mov	dword [ebp-112],0
	mov	dword [ebp-28],_bbNullObject
	mov	dword [ebp-32],_bbNullObject
	mov	dword [ebp-36],_bbEmptyArray
	mov	dword [ebp-116],0
	mov	dword [ebp-120],0
	mov	dword [ebp-40],_bbNullObject
	mov	dword [ebp-44],0
	mov	dword [ebp-48],0
	mov	dword [ebp-124],0
	mov	dword [ebp-128],0
	mov	dword [ebp-52],_bbNullObject
	mov	dword [ebp-56],0
	mov	dword [ebp-60],0
	mov	dword [ebp-132],0
	mov	dword [ebp-136],0
	mov	dword [ebp-64],_bbNullObject
	mov	dword [ebp-68],0
	mov	dword [ebp-72],0
	mov	dword [ebp-140],0
	mov	dword [ebp-144],0
	mov	dword [ebp-76],_bbNullObject
	mov	dword [ebp-80],0
	mov	dword [ebp-84],0
	mov	dword [ebp-148],0
	mov	dword [ebp-152],0
	mov	dword [ebp-156],0
	mov	dword [ebp-88],0
	mov	dword [ebp-92],_bbEmptyArray
	mov	dword [ebp-96],0
	mov	dword [ebp-160],0
	mov	dword [ebp-168],0
	mov	dword [ebp-172],0
	mov	dword [ebp-176],0
	mov	dword [ebp-180],0
	mov	dword [ebp-164],0
	mov	dword [ebp-184],0
	mov	dword [ebp-192],0
	mov	dword [ebp-196],0
	mov	dword [ebp-200],0
	mov	dword [ebp-204],0
	mov	dword [ebp-208],0
	mov	dword [ebp-212],0
	mov	dword [ebp-216],0
	mov	dword [ebp-220],0
	mov	dword [ebp-224],0
	mov	dword [ebp-228],0
	mov	dword [ebp-232],0
	mov	dword [ebp-236],0
	mov	dword [ebp-240],0
	mov	dword [ebp-244],0
	mov	dword [ebp-248],0
	mov	dword [ebp-252],0
	mov	dword [ebp-256],0
	mov	dword [ebp-260],0
	mov	dword [ebp-264],0
	mov	dword [ebp-268],0
	mov	dword [ebp-272],0
	mov	dword [ebp-276],0
	mov	dword [ebp-280],0
	mov	dword [ebp-284],0
	mov	dword [ebp-288],0
	mov	dword [ebp-292],0
	mov	dword [ebp-296],0
	mov	dword [ebp-300],0
	mov	dword [ebp-304],0
	mov	dword [ebp-308],0
	mov	dword [ebp-312],0
	mov	dword [ebp-316],0
	mov	dword [ebp-320],0
	mov	dword [ebp-324],0
	mov	dword [ebp-328],0
	mov	dword [ebp-332],0
	mov	dword [ebp-336],0
	mov	dword [ebp-340],0
	mov	dword [ebp-344],0
	mov	dword [ebp-348],0
	mov	dword [ebp-352],0
	mov	dword [ebp-356],0
	mov	dword [ebp-360],0
	mov	dword [ebp-364],0
	mov	dword [ebp-368],0
	mov	dword [ebp-372],0
	mov	dword [ebp-376],0
	mov	dword [ebp-380],0
	mov	dword [ebp-384],0
	mov	dword [ebp-388],0
	mov	dword [ebp-392],0
	mov	dword [ebp-396],0
	mov	dword [ebp-400],0
	mov	dword [ebp-404],0
	mov	dword [ebp-408],0
	mov	dword [ebp-412],0
	mov	dword [ebp-188],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_2897
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
	push	_bb_Ttextur
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_Ttexgroup
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_Twaypoint
	call	_bbObjectRegisterType
	add	esp,4
	push	_524
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_527]
	and	eax,1
	cmp	eax,0
	jne	_528
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_texturlist],eax
	or	dword [_527],1
_528:
	push	_529
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_527]
	and	eax,2
	cmp	eax,0
	jne	_531
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_maptexturlist],eax
	or	dword [_527],2
_531:
	push	_532
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_527]
	and	eax,4
	cmp	eax,0
	jne	_534
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_texgrouplist],eax
	or	dword [_527],4
_534:
	push	_535
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_527]
	and	eax,8
	cmp	eax,0
	jne	_537
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_maptexgrouplist],eax
	or	dword [_527],8
_537:
	push	_538
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_527]
	and	eax,16
	cmp	eax,0
	jne	_540
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_waypointlist],eax
	or	dword [_527],16
_540:
	push	_541
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_527]
	and	eax,32
	cmp	eax,0
	jne	_543
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_printlistlist],eax
	or	dword [_527],32
_543:
	push	_544
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_18
	inc	dword [ebx+4]
	mov	eax,dword [_bbAppTitle]
	dec	dword [eax+4]
	jnz	_548
	push	eax
	call	_bbGCFree
	add	esp,4
_548:
	mov	dword [_bbAppTitle],ebx
	push	_549
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_527]
	and	eax,64
	cmp	eax,0
	jne	_551
	push	0
	push	60
	push	0
	push	768
	push	1024
	call	_brl_graphics_Graphics
	add	esp,20
	inc	dword [eax+4]
	mov	dword [_bb_fenster],eax
	or	dword [_527],64
_551:
	push	_552
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	3
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_553
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_527]
	and	eax,128
	cmp	eax,0
	jne	_556
	push	9
	push	_554
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_tex],eax
	or	dword [_527],128
_556:
	mov	eax,dword [_527]
	and	eax,256
	cmp	eax,0
	jne	_559
	push	9
	push	_557
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_texI],eax
	or	dword [_527],256
_559:
	push	_560
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [_bb_tex]
	cmp	ebx,dword [eax+20]
	jb	_562
	call	_brl_blitz_ArrayBoundsError
_562:
	mov	esi,dword [_bb_tex]
	shl	ebx,2
	add	esi,ebx
	push	_19
	call	_brl_pixmap_LoadPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_567
	push	eax
	call	_bbGCFree
	add	esp,4
_567:
	mov	dword [esi+24],ebx
	push	_568
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [_bb_tex]
	cmp	ebx,dword [eax+20]
	jb	_570
	call	_brl_blitz_ArrayBoundsError
_570:
	mov	esi,dword [_bb_tex]
	shl	ebx,2
	add	esi,ebx
	push	_20
	call	_brl_pixmap_LoadPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_575
	push	eax
	call	_bbGCFree
	add	esp,4
_575:
	mov	dword [esi+24],ebx
	push	_576
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [_bb_tex]
	cmp	ebx,dword [eax+20]
	jb	_578
	call	_brl_blitz_ArrayBoundsError
_578:
	mov	esi,dword [_bb_tex]
	shl	ebx,2
	add	esi,ebx
	push	_21
	call	_brl_pixmap_LoadPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_583
	push	eax
	call	_bbGCFree
	add	esp,4
_583:
	mov	dword [esi+24],ebx
	push	_584
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [_bb_tex]
	cmp	ebx,dword [eax+20]
	jb	_586
	call	_brl_blitz_ArrayBoundsError
_586:
	mov	esi,dword [_bb_tex]
	shl	ebx,2
	add	esi,ebx
	push	_22
	call	_brl_pixmap_LoadPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_591
	push	eax
	call	_bbGCFree
	add	esp,4
_591:
	mov	dword [esi+24],ebx
	push	_592
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,4
	mov	eax,dword [_bb_tex]
	cmp	ebx,dword [eax+20]
	jb	_594
	call	_brl_blitz_ArrayBoundsError
_594:
	mov	esi,dword [_bb_tex]
	shl	ebx,2
	add	esi,ebx
	push	_23
	call	_brl_pixmap_LoadPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_599
	push	eax
	call	_bbGCFree
	add	esp,4
_599:
	mov	dword [esi+24],ebx
	push	_600
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,5
	mov	eax,dword [_bb_tex]
	cmp	ebx,dword [eax+20]
	jb	_602
	call	_brl_blitz_ArrayBoundsError
_602:
	mov	esi,dword [_bb_tex]
	shl	ebx,2
	add	esi,ebx
	push	_24
	call	_brl_pixmap_LoadPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_607
	push	eax
	call	_bbGCFree
	add	esp,4
_607:
	mov	dword [esi+24],ebx
	push	_608
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,6
	mov	eax,dword [_bb_tex]
	cmp	ebx,dword [eax+20]
	jb	_610
	call	_brl_blitz_ArrayBoundsError
_610:
	mov	esi,dword [_bb_tex]
	shl	ebx,2
	add	esi,ebx
	push	_25
	call	_brl_pixmap_LoadPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_615
	push	eax
	call	_bbGCFree
	add	esp,4
_615:
	mov	dword [esi+24],ebx
	push	_616
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,7
	mov	eax,dword [_bb_tex]
	cmp	ebx,dword [eax+20]
	jb	_618
	call	_brl_blitz_ArrayBoundsError
_618:
	mov	esi,dword [_bb_tex]
	shl	ebx,2
	add	esi,ebx
	push	_26
	call	_brl_pixmap_LoadPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_623
	push	eax
	call	_bbGCFree
	add	esp,4
_623:
	mov	dword [esi+24],ebx
	push	_624
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,8
	mov	eax,dword [_bb_tex]
	cmp	ebx,dword [eax+20]
	jb	_626
	call	_brl_blitz_ArrayBoundsError
_626:
	mov	esi,dword [_bb_tex]
	shl	ebx,2
	add	esi,ebx
	push	_27
	call	_brl_pixmap_LoadPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_631
	push	eax
	call	_bbGCFree
	add	esp,4
_631:
	mov	dword [esi+24],ebx
	push	_632
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [_bb_texI]
	cmp	ebx,dword [eax+20]
	jb	_634
	call	_brl_blitz_ArrayBoundsError
_634:
	mov	esi,dword [_bb_texI]
	shl	ebx,2
	add	esi,ebx
	push	-1
	push	_19
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_639
	push	eax
	call	_bbGCFree
	add	esp,4
_639:
	mov	dword [esi+24],ebx
	push	_640
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [_bb_texI]
	cmp	ebx,dword [eax+20]
	jb	_642
	call	_brl_blitz_ArrayBoundsError
_642:
	mov	esi,dword [_bb_texI]
	shl	ebx,2
	add	esi,ebx
	push	-1
	push	_20
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_647
	push	eax
	call	_bbGCFree
	add	esp,4
_647:
	mov	dword [esi+24],ebx
	push	_648
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [_bb_texI]
	cmp	ebx,dword [eax+20]
	jb	_650
	call	_brl_blitz_ArrayBoundsError
_650:
	mov	esi,dword [_bb_texI]
	shl	ebx,2
	add	esi,ebx
	push	-1
	push	_21
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_655
	push	eax
	call	_bbGCFree
	add	esp,4
_655:
	mov	dword [esi+24],ebx
	push	_656
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [_bb_texI]
	cmp	ebx,dword [eax+20]
	jb	_658
	call	_brl_blitz_ArrayBoundsError
_658:
	mov	esi,dword [_bb_texI]
	shl	ebx,2
	add	esi,ebx
	push	-1
	push	_22
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_663
	push	eax
	call	_bbGCFree
	add	esp,4
_663:
	mov	dword [esi+24],ebx
	push	_664
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,4
	mov	eax,dword [_bb_texI]
	cmp	ebx,dword [eax+20]
	jb	_666
	call	_brl_blitz_ArrayBoundsError
_666:
	mov	esi,dword [_bb_texI]
	shl	ebx,2
	add	esi,ebx
	push	-1
	push	_23
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_671
	push	eax
	call	_bbGCFree
	add	esp,4
_671:
	mov	dword [esi+24],ebx
	push	_672
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,5
	mov	eax,dword [_bb_texI]
	cmp	ebx,dword [eax+20]
	jb	_674
	call	_brl_blitz_ArrayBoundsError
_674:
	mov	esi,dword [_bb_texI]
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
	jnz	_679
	push	eax
	call	_bbGCFree
	add	esp,4
_679:
	mov	dword [esi+24],ebx
	push	_680
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,6
	mov	eax,dword [_bb_texI]
	cmp	ebx,dword [eax+20]
	jb	_682
	call	_brl_blitz_ArrayBoundsError
_682:
	mov	esi,dword [_bb_texI]
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
	jnz	_687
	push	eax
	call	_bbGCFree
	add	esp,4
_687:
	mov	dword [esi+24],ebx
	push	_688
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,7
	mov	eax,dword [_bb_texI]
	cmp	ebx,dword [eax+20]
	jb	_690
	call	_brl_blitz_ArrayBoundsError
_690:
	mov	esi,dword [_bb_texI]
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
	jnz	_695
	push	eax
	call	_bbGCFree
	add	esp,4
_695:
	mov	dword [esi+24],ebx
	push	_696
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,8
	mov	eax,dword [_bb_texI]
	cmp	ebx,dword [eax+20]
	jb	_698
	call	_brl_blitz_ArrayBoundsError
_698:
	mov	esi,dword [_bb_texI]
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
	jnz	_703
	push	eax
	call	_bbGCFree
	add	esp,4
_703:
	mov	dword [esi+24],ebx
	push	_704
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_705
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_527]
	and	eax,512
	cmp	eax,0
	jne	_707
	fld	qword [_5798]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fstp	dword [_bb_diagonal]
	or	dword [_527],512
_707:
	push	_708
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_527]
	and	eax,1024
	cmp	eax,0
	jne	_711
	push	3
	push	3
	push	2
	push	_709
	call	_bbArrayNew
	add	esp,16
	inc	dword [eax+4]
	mov	dword [_bb_texmap],eax
	or	dword [_527],1024
_711:
	mov	eax,dword [_527]
	and	eax,2048
	cmp	eax,0
	jne	_714
	push	8
	push	_712
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_texmapstrip],eax
	or	dword [_527],2048
_714:
	push	_715
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_texmap]
	mov	esi,dword [eax+24]
	mov	eax,dword [_bb_texmap]
	cmp	esi,dword [eax+20]
	jb	_717
	call	_brl_blitz_ArrayBoundsError
_717:
	mov	ebx,0
	mov	eax,dword [_bb_texmap]
	cmp	ebx,dword [eax+24]
	jb	_719
	call	_brl_blitz_ArrayBoundsError
_719:
	mov	eax,dword [_bb_texmap]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	esi,0
	mov	eax,dword [_bb_tex]
	cmp	esi,dword [eax+20]
	jb	_722
	call	_brl_blitz_ArrayBoundsError
_722:
	mov	eax,dword [_bb_tex]
	push	dword [eax+esi*4+24]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_726
	push	eax
	call	_bbGCFree
	add	esp,4
_726:
	mov	dword [ebx+28],esi
	push	_727
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [_bb_texmapstrip]
	cmp	ebx,dword [eax+20]
	jb	_729
	call	_brl_blitz_ArrayBoundsError
_729:
	mov	eax,dword [_bb_texmapstrip]
	shl	ebx,2
	add	eax,ebx
	mov	edi,eax
	mov	eax,dword [_bb_texmap]
	mov	esi,dword [eax+24]
	mov	eax,dword [_bb_texmap]
	cmp	esi,dword [eax+20]
	jb	_732
	call	_brl_blitz_ArrayBoundsError
_732:
	mov	ebx,0
	mov	eax,dword [_bb_texmap]
	cmp	ebx,dword [eax+24]
	jb	_734
	call	_brl_blitz_ArrayBoundsError
_734:
	mov	edx,dword [_bb_texmap]
	mov	eax,esi
	add	eax,ebx
	mov	ebx,dword [edx+eax*4+28]
	inc	dword [ebx+4]
	mov	eax,dword [edi+24]
	dec	dword [eax+4]
	jnz	_738
	push	eax
	call	_bbGCFree
	add	esp,4
_738:
	mov	dword [edi+24],ebx
	push	_739
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_texmap]
	mov	esi,dword [eax+24]
	shl	esi,1
	mov	eax,dword [_bb_texmap]
	cmp	esi,dword [eax+20]
	jb	_741
	call	_brl_blitz_ArrayBoundsError
_741:
	mov	ebx,0
	mov	eax,dword [_bb_texmap]
	cmp	ebx,dword [eax+24]
	jb	_743
	call	_brl_blitz_ArrayBoundsError
_743:
	mov	eax,dword [_bb_texmap]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	esi,0
	mov	eax,dword [_bb_tex]
	cmp	esi,dword [eax+20]
	jb	_746
	call	_brl_blitz_ArrayBoundsError
_746:
	mov	eax,dword [_bb_tex]
	push	dword [eax+esi*4+24]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_750
	push	eax
	call	_bbGCFree
	add	esp,4
_750:
	mov	dword [ebx+28],esi
	push	_751
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [_bb_texmapstrip]
	cmp	ebx,dword [eax+20]
	jb	_753
	call	_brl_blitz_ArrayBoundsError
_753:
	mov	eax,dword [_bb_texmapstrip]
	shl	ebx,2
	add	eax,ebx
	mov	edi,eax
	mov	eax,dword [_bb_texmap]
	mov	eax,dword [eax+24]
	shl	eax,1
	mov	esi,eax
	mov	eax,dword [_bb_texmap]
	cmp	esi,dword [eax+20]
	jb	_756
	call	_brl_blitz_ArrayBoundsError
_756:
	mov	ebx,0
	mov	eax,dword [_bb_texmap]
	cmp	ebx,dword [eax+24]
	jb	_758
	call	_brl_blitz_ArrayBoundsError
_758:
	mov	edx,dword [_bb_texmap]
	mov	eax,esi
	add	eax,ebx
	mov	ebx,dword [edx+eax*4+28]
	inc	dword [ebx+4]
	mov	eax,dword [edi+24]
	dec	dword [eax+4]
	jnz	_762
	push	eax
	call	_bbGCFree
	add	esp,4
_762:
	mov	dword [edi+24],ebx
	push	_763
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_texmap]
	mov	esi,dword [eax+24]
	shl	esi,1
	mov	eax,dword [_bb_texmap]
	cmp	esi,dword [eax+20]
	jb	_765
	call	_brl_blitz_ArrayBoundsError
_765:
	mov	ebx,1
	mov	eax,dword [_bb_texmap]
	cmp	ebx,dword [eax+24]
	jb	_767
	call	_brl_blitz_ArrayBoundsError
_767:
	mov	eax,dword [_bb_texmap]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	esi,0
	mov	eax,dword [_bb_tex]
	cmp	esi,dword [eax+20]
	jb	_770
	call	_brl_blitz_ArrayBoundsError
_770:
	mov	eax,dword [_bb_tex]
	push	dword [eax+esi*4+24]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_774
	push	eax
	call	_bbGCFree
	add	esp,4
_774:
	mov	dword [ebx+28],esi
	push	_775
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [_bb_texmapstrip]
	cmp	ebx,dword [eax+20]
	jb	_777
	call	_brl_blitz_ArrayBoundsError
_777:
	mov	eax,dword [_bb_texmapstrip]
	shl	ebx,2
	add	eax,ebx
	mov	edi,eax
	mov	eax,dword [_bb_texmap]
	mov	eax,dword [eax+24]
	shl	eax,1
	mov	esi,eax
	mov	eax,dword [_bb_texmap]
	cmp	esi,dword [eax+20]
	jb	_780
	call	_brl_blitz_ArrayBoundsError
_780:
	mov	ebx,1
	mov	eax,dword [_bb_texmap]
	cmp	ebx,dword [eax+24]
	jb	_782
	call	_brl_blitz_ArrayBoundsError
_782:
	mov	edx,dword [_bb_texmap]
	mov	eax,esi
	add	eax,ebx
	mov	ebx,dword [edx+eax*4+28]
	inc	dword [ebx+4]
	mov	eax,dword [edi+24]
	dec	dword [eax+4]
	jnz	_786
	push	eax
	call	_bbGCFree
	add	esp,4
_786:
	mov	dword [edi+24],ebx
	push	_787
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_texmap]
	mov	esi,dword [eax+24]
	shl	esi,1
	mov	eax,dword [_bb_texmap]
	cmp	esi,dword [eax+20]
	jb	_789
	call	_brl_blitz_ArrayBoundsError
_789:
	mov	ebx,2
	mov	eax,dword [_bb_texmap]
	cmp	ebx,dword [eax+24]
	jb	_791
	call	_brl_blitz_ArrayBoundsError
_791:
	mov	eax,dword [_bb_texmap]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	esi,3
	mov	eax,dword [_bb_tex]
	cmp	esi,dword [eax+20]
	jb	_794
	call	_brl_blitz_ArrayBoundsError
_794:
	mov	eax,dword [_bb_tex]
	push	dword [eax+esi*4+24]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_798
	push	eax
	call	_bbGCFree
	add	esp,4
_798:
	mov	dword [ebx+28],esi
	push	_799
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [_bb_texmapstrip]
	cmp	ebx,dword [eax+20]
	jb	_801
	call	_brl_blitz_ArrayBoundsError
_801:
	mov	eax,dword [_bb_texmapstrip]
	shl	ebx,2
	add	eax,ebx
	mov	edi,eax
	mov	eax,dword [_bb_texmap]
	mov	eax,dword [eax+24]
	shl	eax,1
	mov	esi,eax
	mov	eax,dword [_bb_texmap]
	cmp	esi,dword [eax+20]
	jb	_804
	call	_brl_blitz_ArrayBoundsError
_804:
	mov	ebx,2
	mov	eax,dword [_bb_texmap]
	cmp	ebx,dword [eax+24]
	jb	_806
	call	_brl_blitz_ArrayBoundsError
_806:
	mov	edx,dword [_bb_texmap]
	mov	eax,esi
	add	eax,ebx
	mov	ebx,dword [edx+eax*4+28]
	inc	dword [ebx+4]
	mov	eax,dword [edi+24]
	dec	dword [eax+4]
	jnz	_810
	push	eax
	call	_bbGCFree
	add	esp,4
_810:
	mov	dword [edi+24],ebx
	push	_811
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_texmap]
	mov	esi,dword [eax+24]
	mov	eax,dword [_bb_texmap]
	cmp	esi,dword [eax+20]
	jb	_813
	call	_brl_blitz_ArrayBoundsError
_813:
	mov	ebx,2
	mov	eax,dword [_bb_texmap]
	cmp	ebx,dword [eax+24]
	jb	_815
	call	_brl_blitz_ArrayBoundsError
_815:
	mov	eax,dword [_bb_texmap]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	esi,2
	mov	eax,dword [_bb_tex]
	cmp	esi,dword [eax+20]
	jb	_818
	call	_brl_blitz_ArrayBoundsError
_818:
	mov	eax,dword [_bb_tex]
	push	dword [eax+esi*4+24]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_822
	push	eax
	call	_bbGCFree
	add	esp,4
_822:
	mov	dword [ebx+28],esi
	push	_823
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,4
	mov	eax,dword [_bb_texmapstrip]
	cmp	ebx,dword [eax+20]
	jb	_825
	call	_brl_blitz_ArrayBoundsError
_825:
	mov	eax,dword [_bb_texmapstrip]
	shl	ebx,2
	add	eax,ebx
	mov	edi,eax
	mov	eax,dword [_bb_texmap]
	mov	esi,dword [eax+24]
	mov	eax,dword [_bb_texmap]
	cmp	esi,dword [eax+20]
	jb	_828
	call	_brl_blitz_ArrayBoundsError
_828:
	mov	ebx,2
	mov	eax,dword [_bb_texmap]
	cmp	ebx,dword [eax+24]
	jb	_830
	call	_brl_blitz_ArrayBoundsError
_830:
	mov	edx,dword [_bb_texmap]
	mov	eax,esi
	add	eax,ebx
	mov	ebx,dword [edx+eax*4+28]
	inc	dword [ebx+4]
	mov	eax,dword [edi+24]
	dec	dword [eax+4]
	jnz	_834
	push	eax
	call	_bbGCFree
	add	esp,4
_834:
	mov	dword [edi+24],ebx
	push	_835
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,0
	mov	eax,dword [_bb_texmap]
	cmp	esi,dword [eax+20]
	jb	_837
	call	_brl_blitz_ArrayBoundsError
_837:
	mov	ebx,2
	mov	eax,dword [_bb_texmap]
	cmp	ebx,dword [eax+24]
	jb	_839
	call	_brl_blitz_ArrayBoundsError
_839:
	mov	eax,dword [_bb_texmap]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	esi,2
	mov	eax,dword [_bb_tex]
	cmp	esi,dword [eax+20]
	jb	_842
	call	_brl_blitz_ArrayBoundsError
_842:
	mov	eax,dword [_bb_tex]
	push	dword [eax+esi*4+24]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_846
	push	eax
	call	_bbGCFree
	add	esp,4
_846:
	mov	dword [ebx+28],esi
	push	_847
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,5
	mov	eax,dword [_bb_texmapstrip]
	cmp	ebx,dword [eax+20]
	jb	_849
	call	_brl_blitz_ArrayBoundsError
_849:
	mov	eax,dword [_bb_texmapstrip]
	shl	ebx,2
	add	eax,ebx
	mov	edi,eax
	mov	esi,0
	mov	eax,dword [_bb_texmap]
	cmp	esi,dword [eax+20]
	jb	_852
	call	_brl_blitz_ArrayBoundsError
_852:
	mov	ebx,2
	mov	eax,dword [_bb_texmap]
	cmp	ebx,dword [eax+24]
	jb	_854
	call	_brl_blitz_ArrayBoundsError
_854:
	mov	edx,dword [_bb_texmap]
	mov	eax,esi
	add	eax,ebx
	mov	ebx,dword [edx+eax*4+28]
	inc	dword [ebx+4]
	mov	eax,dword [edi+24]
	dec	dword [eax+4]
	jnz	_858
	push	eax
	call	_bbGCFree
	add	esp,4
_858:
	mov	dword [edi+24],ebx
	push	_859
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,0
	mov	eax,dword [_bb_texmap]
	cmp	esi,dword [eax+20]
	jb	_861
	call	_brl_blitz_ArrayBoundsError
_861:
	mov	ebx,1
	mov	eax,dword [_bb_texmap]
	cmp	ebx,dword [eax+24]
	jb	_863
	call	_brl_blitz_ArrayBoundsError
_863:
	mov	eax,dword [_bb_texmap]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	esi,0
	mov	eax,dword [_bb_tex]
	cmp	esi,dword [eax+20]
	jb	_866
	call	_brl_blitz_ArrayBoundsError
_866:
	mov	eax,dword [_bb_tex]
	push	dword [eax+esi*4+24]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_870
	push	eax
	call	_bbGCFree
	add	esp,4
_870:
	mov	dword [ebx+28],esi
	push	_871
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,6
	mov	eax,dword [_bb_texmapstrip]
	cmp	ebx,dword [eax+20]
	jb	_873
	call	_brl_blitz_ArrayBoundsError
_873:
	mov	eax,dword [_bb_texmapstrip]
	shl	ebx,2
	add	eax,ebx
	mov	edi,eax
	mov	esi,0
	mov	eax,dword [_bb_texmap]
	cmp	esi,dword [eax+20]
	jb	_876
	call	_brl_blitz_ArrayBoundsError
_876:
	mov	ebx,1
	mov	eax,dword [_bb_texmap]
	cmp	ebx,dword [eax+24]
	jb	_878
	call	_brl_blitz_ArrayBoundsError
_878:
	mov	edx,dword [_bb_texmap]
	mov	eax,esi
	add	eax,ebx
	mov	ebx,dword [edx+eax*4+28]
	inc	dword [ebx+4]
	mov	eax,dword [edi+24]
	dec	dword [eax+4]
	jnz	_882
	push	eax
	call	_bbGCFree
	add	esp,4
_882:
	mov	dword [edi+24],ebx
	push	_883
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,0
	mov	eax,dword [_bb_texmap]
	cmp	esi,dword [eax+20]
	jb	_885
	call	_brl_blitz_ArrayBoundsError
_885:
	mov	ebx,0
	mov	eax,dword [_bb_texmap]
	cmp	ebx,dword [eax+24]
	jb	_887
	call	_brl_blitz_ArrayBoundsError
_887:
	mov	eax,dword [_bb_texmap]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	esi,0
	mov	eax,dword [_bb_tex]
	cmp	esi,dword [eax+20]
	jb	_890
	call	_brl_blitz_ArrayBoundsError
_890:
	mov	eax,dword [_bb_tex]
	push	dword [eax+esi*4+24]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_894
	push	eax
	call	_bbGCFree
	add	esp,4
_894:
	mov	dword [ebx+28],esi
	push	_895
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,7
	mov	eax,dword [_bb_texmapstrip]
	cmp	ebx,dword [eax+20]
	jb	_897
	call	_brl_blitz_ArrayBoundsError
_897:
	mov	eax,dword [_bb_texmapstrip]
	shl	ebx,2
	add	eax,ebx
	mov	edi,eax
	mov	esi,0
	mov	eax,dword [_bb_texmap]
	cmp	esi,dword [eax+20]
	jb	_900
	call	_brl_blitz_ArrayBoundsError
_900:
	mov	ebx,0
	mov	eax,dword [_bb_texmap]
	cmp	ebx,dword [eax+24]
	jb	_902
	call	_brl_blitz_ArrayBoundsError
_902:
	mov	edx,dword [_bb_texmap]
	mov	eax,esi
	add	eax,ebx
	mov	ebx,dword [edx+eax*4+28]
	inc	dword [ebx+4]
	mov	eax,dword [edi+24]
	dec	dword [eax+4]
	jnz	_906
	push	eax
	call	_bbGCFree
	add	esp,4
_906:
	mov	dword [edi+24],ebx
	push	_907
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_texmap]
	mov	esi,dword [eax+24]
	mov	eax,dword [_bb_texmap]
	cmp	esi,dword [eax+20]
	jb	_909
	call	_brl_blitz_ArrayBoundsError
_909:
	mov	ebx,1
	mov	eax,dword [_bb_texmap]
	cmp	ebx,dword [eax+24]
	jb	_911
	call	_brl_blitz_ArrayBoundsError
_911:
	mov	eax,dword [_bb_texmap]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	esi,0
	mov	eax,dword [_bb_tex]
	cmp	esi,dword [eax+20]
	jb	_914
	call	_brl_blitz_ArrayBoundsError
_914:
	mov	eax,dword [_bb_tex]
	push	dword [eax+esi*4+24]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_918
	push	eax
	call	_bbGCFree
	add	esp,4
_918:
	mov	dword [ebx+28],esi
	push	_919
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_527]
	and	eax,4096
	cmp	eax,0
	jne	_922
	push	4
	push	_920
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_feeddata],eax
	or	dword [_527],4096
_922:
	push	_923
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_527]
	and	eax,8192
	cmp	eax,0
	jne	_926
	push	9
	push	16
	push	2
	push	_924
	call	_bbArrayNew
	add	esp,16
	inc	dword [eax+4]
	mov	dword [_bb_combospeicher],eax
	or	dword [_527],8192
_926:
	push	_927
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	push	_928
	call	_bbArrayNew1D
	add	esp,8
	mov	dword [ebp-4],eax
	push	_930
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-4]
	cmp	ebx,dword [eax+20]
	jb	_932
	call	_brl_blitz_ArrayBoundsError
_932:
	mov	esi,dword [ebp-4]
	shl	ebx,2
	add	esi,ebx
	push	4
	push	6
	push	32
	push	32
	call	_brl_pixmap_CreatePixmap
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_937
	push	eax
	call	_bbGCFree
	add	esp,4
_937:
	mov	dword [esi+24],ebx
	push	_938
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	4
	push	6
	push	32
	push	32
	call	_brl_pixmap_CreatePixmap
	add	esp,16
	mov	dword [ebp-8],eax
	push	_940
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	push	_942
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	eax,dword [ebp-12]
	mov	dword [ebp-16],eax
	push	_944
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	mov	byte [eax],0
	push	_945
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	mov	byte [eax+1],0
	push	_946
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	mov	byte [eax+2],255
	push	_947
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	mov	byte [eax+3],255
	push	_948
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-100],0
	mov	dword [ebp-100],0
	jmp	_950
_177:
	mov	eax,ebp
	push	eax
	push	_960
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_951
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-104],0
	mov	dword [ebp-104],0
	jmp	_953
_180:
	mov	eax,ebp
	push	eax
	push	_959
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_954
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-4]
	cmp	ebx,dword [eax+20]
	jb	_956
	call	_brl_blitz_ArrayBoundsError
_956:
	mov	eax,dword [ebp-4]
	mov	ebx,dword [eax+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_958
	call	_brl_blitz_NullObjectError
_958:
	push	dword [ebp-12]
	push	dword [ebp-100]
	push	dword [ebp-104]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,16
	call	dword [_bbOnDebugLeaveScope]
_178:
	add	dword [ebp-104],1
_953:
	cmp	dword [ebp-104],31
	jle	_180
_179:
	call	dword [_bbOnDebugLeaveScope]
_175:
	add	dword [ebp-100],1
_950:
	cmp	dword [ebp-100],31
	jle	_177
_176:
	push	_961
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	push	_963
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	eax,dword [ebp-20]
	mov	dword [ebp-24],eax
	push	_965
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	mov	byte [eax],180
	push	_966
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	mov	byte [eax+1],180
	push	_967
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	mov	byte [eax+2],180
	push	_968
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	mov	byte [eax+3],255
	push	_969
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-108],0
	mov	dword [ebp-108],0
	jmp	_971
_183:
	mov	eax,ebp
	push	eax
	push	_979
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_972
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-112],0
	mov	dword [ebp-112],0
	jmp	_974
_186:
	mov	eax,ebp
	push	eax
	push	_978
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_975
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_977
	call	_brl_blitz_NullObjectError
_977:
	push	dword [ebp-20]
	push	dword [ebp-108]
	mov	eax,31
	sub	eax,dword [ebp-112]
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,16
	call	dword [_bbOnDebugLeaveScope]
_184:
	add	dword [ebp-112],1
_974:
	cmp	dword [ebp-112],31
	jle	_186
_185:
	call	dword [_bbOnDebugLeaveScope]
_181:
	add	dword [ebp-108],1
_971:
	cmp	dword [ebp-108],31
	jle	_183
_182:
	push	_980
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [_bb_tex]
	cmp	ebx,dword [eax+20]
	jb	_982
	call	_brl_blitz_ArrayBoundsError
_982:
	mov	eax,dword [_bb_tex]
	push	dword [eax+ebx*4+24]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	dword [ebp-8],eax
	push	_983
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	push	dword [ebp-8]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	dword [ebp-28],eax
	push	_985
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-4]
	cmp	ebx,dword [eax+20]
	jb	_987
	call	_brl_blitz_ArrayBoundsError
_987:
	push	-1
	mov	eax,dword [ebp-4]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	dword [ebp-32],eax
	push	_989
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	3
	push	3
	push	2
	push	_990
	call	_bbArrayNew
	add	esp,16
	mov	dword [ebp-36],eax
	push	_992
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-116],0
	mov	dword [ebp-116],0
	jmp	_994
_189:
	mov	eax,ebp
	push	eax
	push	_1013
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_995
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-120],0
	mov	dword [ebp-120],0
	jmp	_997
_192:
	mov	eax,ebp
	push	eax
	push	_1012
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_998
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-120]
	mov	eax,dword [ebp-36]
	imul	esi,dword [eax+24]
	mov	eax,dword [ebp-36]
	cmp	esi,dword [eax+20]
	jb	_1000
	call	_brl_blitz_ArrayBoundsError
_1000:
	mov	ebx,dword [ebp-116]
	mov	eax,dword [ebp-36]
	cmp	ebx,dword [eax+24]
	jb	_1002
	call	_brl_blitz_ArrayBoundsError
_1002:
	mov	eax,dword [ebp-36]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	edi,eax
	mov	eax,dword [ebp-120]
	mov	edx,dword [_bb_texmap]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_texmap]
	cmp	esi,dword [eax+20]
	jb	_1005
	call	_brl_blitz_ArrayBoundsError
_1005:
	mov	ebx,dword [ebp-116]
	mov	eax,dword [_bb_texmap]
	cmp	ebx,dword [eax+24]
	jb	_1007
	call	_brl_blitz_ArrayBoundsError
_1007:
	push	-1
	mov	edx,dword [_bb_texmap]
	mov	eax,esi
	add	eax,ebx
	push	dword [edx+eax*4+28]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [edi+28]
	dec	dword [eax+4]
	jnz	_1011
	push	eax
	call	_bbGCFree
	add	esp,4
_1011:
	mov	dword [edi+28],ebx
	call	dword [_bbOnDebugLeaveScope]
_190:
	add	dword [ebp-120],1
_997:
	cmp	dword [ebp-120],2
	jle	_192
_191:
	call	dword [_bbOnDebugLeaveScope]
_187:
	add	dword [ebp-116],1
_994:
	cmp	dword [ebp-116],2
	jle	_189
_188:
	push	_1014
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	4
	push	6
	push	32
	push	32
	call	_brl_pixmap_CreatePixmap
	add	esp,16
	mov	dword [ebp-40],eax
	push	_1016
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],0
	push	_1018
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	eax,dword [ebp-44]
	mov	dword [ebp-48],eax
	push	_1020
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-48]
	mov	byte [eax],0
	push	_1021
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-48]
	mov	byte [eax+1],0
	push	_1022
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-48]
	mov	byte [eax+2],255
	push	_1023
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-48]
	mov	byte [eax+3],255
	push	_1024
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-124],0
	mov	dword [ebp-124],0
	jmp	_1026
_195:
	mov	eax,ebp
	push	eax
	push	_1034
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1027
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-128],0
	mov	dword [ebp-128],0
	jmp	_1029
_198:
	mov	eax,ebp
	push	eax
	push	_1033
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1030
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_1032
	call	_brl_blitz_NullObjectError
_1032:
	push	dword [ebp-44]
	push	dword [ebp-124]
	push	dword [ebp-128]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,16
	call	dword [_bbOnDebugLeaveScope]
_196:
	add	dword [ebp-128],1
_1029:
	cmp	dword [ebp-128],31
	jle	_198
_197:
	call	dword [_bbOnDebugLeaveScope]
_193:
	add	dword [ebp-124],1
_1026:
	cmp	dword [ebp-124],31
	jle	_195
_194:
	push	_1035
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	4
	push	6
	push	32
	push	32
	call	_brl_pixmap_CreatePixmap
	add	esp,16
	mov	dword [ebp-52],eax
	push	_1037
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],0
	push	_1039
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	eax,dword [ebp-56]
	mov	dword [ebp-60],eax
	push	_1041
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-60]
	mov	byte [eax],0
	push	_1042
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-60]
	mov	byte [eax+1],255
	push	_1043
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-60]
	mov	byte [eax+2],0
	push	_1044
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-60]
	mov	byte [eax+3],255
	push	_1045
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-132],0
	mov	dword [ebp-132],0
	jmp	_1047
_201:
	mov	eax,ebp
	push	eax
	push	_1055
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1048
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-136],0
	mov	dword [ebp-136],0
	jmp	_1050
_204:
	mov	eax,ebp
	push	eax
	push	_1054
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1051
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1053
	call	_brl_blitz_NullObjectError
_1053:
	push	dword [ebp-56]
	push	dword [ebp-132]
	push	dword [ebp-136]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,16
	call	dword [_bbOnDebugLeaveScope]
_202:
	add	dword [ebp-136],1
_1050:
	cmp	dword [ebp-136],31
	jle	_204
_203:
	call	dword [_bbOnDebugLeaveScope]
_199:
	add	dword [ebp-132],1
_1047:
	cmp	dword [ebp-132],31
	jle	_201
_200:
	push	_1056
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	4
	push	6
	push	32
	push	32
	call	_brl_pixmap_CreatePixmap
	add	esp,16
	mov	dword [ebp-64],eax
	push	_1058
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-68],0
	push	_1060
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	eax,dword [ebp-68]
	mov	dword [ebp-72],eax
	push	_1062
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-72]
	mov	byte [eax],255
	push	_1063
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-72]
	mov	byte [eax+1],0
	push	_1064
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-72]
	mov	byte [eax+2],0
	push	_1065
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-72]
	mov	byte [eax+3],255
	push	_1066
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-140],0
	mov	dword [ebp-140],0
	jmp	_1068
_207:
	mov	eax,ebp
	push	eax
	push	_1076
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1069
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-144],0
	mov	dword [ebp-144],0
	jmp	_1071
_210:
	mov	eax,ebp
	push	eax
	push	_1075
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1072
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_1074
	call	_brl_blitz_NullObjectError
_1074:
	push	dword [ebp-68]
	push	dword [ebp-140]
	push	dword [ebp-144]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,16
	call	dword [_bbOnDebugLeaveScope]
_208:
	add	dword [ebp-144],1
_1071:
	cmp	dword [ebp-144],31
	jle	_210
_209:
	call	dword [_bbOnDebugLeaveScope]
_205:
	add	dword [ebp-140],1
_1068:
	cmp	dword [ebp-140],31
	jle	_207
_206:
	push	_1077
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	4
	push	6
	push	32
	push	32
	call	_brl_pixmap_CreatePixmap
	add	esp,16
	mov	dword [ebp-76],eax
	push	_1079
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-80],0
	push	_1081
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	eax,dword [ebp-80]
	mov	dword [ebp-84],eax
	push	_1083
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-84]
	mov	byte [eax],0
	push	_1084
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-84]
	mov	byte [eax+1],255
	push	_1085
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-84]
	mov	byte [eax+2],255
	push	_1086
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-84]
	mov	byte [eax+3],255
	push	_1087
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-148],0
	mov	dword [ebp-148],0
	jmp	_1089
_213:
	mov	eax,ebp
	push	eax
	push	_1097
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1090
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-152],0
	mov	dword [ebp-152],0
	jmp	_1092
_216:
	mov	eax,ebp
	push	eax
	push	_1096
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1093
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_1095
	call	_brl_blitz_NullObjectError
_1095:
	push	dword [ebp-80]
	push	dword [ebp-148]
	push	dword [ebp-152]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,16
	call	dword [_bbOnDebugLeaveScope]
_214:
	add	dword [ebp-152],1
_1092:
	cmp	dword [ebp-152],31
	jle	_216
_215:
	call	dword [_bbOnDebugLeaveScope]
_211:
	add	dword [ebp-148],1
_1089:
	cmp	dword [ebp-148],31
	jle	_213
_212:
	push	_1098
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_527]
	and	eax,16384
	cmp	eax,0
	jne	_1101
	push	4
	push	_1099
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_testtile],eax
	or	dword [_527],16384
_1101:
	mov	eax,dword [_527]
	and	eax,32768
	cmp	eax,0
	jne	_1104
	push	4
	push	_1102
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_testtileO],eax
	or	dword [_527],32768
_1104:
	push	_1105
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [_bb_testtile]
	cmp	ebx,dword [eax+20]
	jb	_1107
	call	_brl_blitz_ArrayBoundsError
_1107:
	mov	esi,dword [_bb_testtile]
	shl	ebx,2
	add	esi,ebx
	push	dword [ebp-40]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1112
	push	eax
	call	_bbGCFree
	add	esp,4
_1112:
	mov	dword [esi+24],ebx
	push	_1113
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [_bb_testtile]
	cmp	ebx,dword [eax+20]
	jb	_1115
	call	_brl_blitz_ArrayBoundsError
_1115:
	mov	esi,dword [_bb_testtile]
	shl	ebx,2
	add	esi,ebx
	push	dword [ebp-40]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1120
	push	eax
	call	_bbGCFree
	add	esp,4
_1120:
	mov	dword [esi+24],ebx
	push	_1121
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [_bb_testtile]
	cmp	ebx,dword [eax+20]
	jb	_1123
	call	_brl_blitz_ArrayBoundsError
_1123:
	mov	esi,dword [_bb_testtile]
	shl	ebx,2
	add	esi,ebx
	push	dword [ebp-40]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1128
	push	eax
	call	_bbGCFree
	add	esp,4
_1128:
	mov	dword [esi+24],ebx
	push	_1129
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [_bb_testtile]
	cmp	ebx,dword [eax+20]
	jb	_1131
	call	_brl_blitz_ArrayBoundsError
_1131:
	mov	esi,dword [_bb_testtile]
	shl	ebx,2
	add	esi,ebx
	push	dword [ebp-40]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1136
	push	eax
	call	_bbGCFree
	add	esp,4
_1136:
	mov	dword [esi+24],ebx
	push	_1137
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [_bb_testtileO]
	cmp	ebx,dword [eax+20]
	jb	_1139
	call	_brl_blitz_ArrayBoundsError
_1139:
	mov	esi,dword [_bb_testtileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-40]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1144
	push	eax
	call	_bbGCFree
	add	esp,4
_1144:
	mov	dword [esi+24],ebx
	push	_1145
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [_bb_testtileO]
	cmp	ebx,dword [eax+20]
	jb	_1147
	call	_brl_blitz_ArrayBoundsError
_1147:
	mov	esi,dword [_bb_testtileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-40]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1152
	push	eax
	call	_bbGCFree
	add	esp,4
_1152:
	mov	dword [esi+24],ebx
	push	_1153
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [_bb_testtileO]
	cmp	ebx,dword [eax+20]
	jb	_1155
	call	_brl_blitz_ArrayBoundsError
_1155:
	mov	esi,dword [_bb_testtileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-40]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1160
	push	eax
	call	_bbGCFree
	add	esp,4
_1160:
	mov	dword [esi+24],ebx
	push	_1161
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [_bb_testtileO]
	cmp	ebx,dword [eax+20]
	jb	_1163
	call	_brl_blitz_ArrayBoundsError
_1163:
	mov	esi,dword [_bb_testtileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-40]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1168
	push	eax
	call	_bbGCFree
	add	esp,4
_1168:
	mov	dword [esi+24],ebx
	push	_1169
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_527]
	and	eax,65536
	cmp	eax,0
	jne	_1172
	push	4
	push	_1170
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_testtileI],eax
	or	dword [_527],65536
_1172:
	push	_1173
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [_bb_testtileI]
	cmp	ebx,dword [eax+20]
	jb	_1175
	call	_brl_blitz_ArrayBoundsError
_1175:
	mov	esi,dword [_bb_testtileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,0
	mov	eax,dword [_bb_testtile]
	cmp	ebx,dword [eax+20]
	jb	_1178
	call	_brl_blitz_ArrayBoundsError
_1178:
	push	-1
	mov	eax,dword [_bb_testtile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1182
	push	eax
	call	_bbGCFree
	add	esp,4
_1182:
	mov	dword [esi+24],ebx
	push	_1183
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [_bb_testtileI]
	cmp	ebx,dword [eax+20]
	jb	_1185
	call	_brl_blitz_ArrayBoundsError
_1185:
	mov	esi,dword [_bb_testtileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,1
	mov	eax,dword [_bb_testtile]
	cmp	ebx,dword [eax+20]
	jb	_1188
	call	_brl_blitz_ArrayBoundsError
_1188:
	push	-1
	mov	eax,dword [_bb_testtile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1192
	push	eax
	call	_bbGCFree
	add	esp,4
_1192:
	mov	dword [esi+24],ebx
	push	_1193
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [_bb_testtileI]
	cmp	ebx,dword [eax+20]
	jb	_1195
	call	_brl_blitz_ArrayBoundsError
_1195:
	mov	esi,dword [_bb_testtileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,2
	mov	eax,dword [_bb_testtile]
	cmp	ebx,dword [eax+20]
	jb	_1198
	call	_brl_blitz_ArrayBoundsError
_1198:
	push	-1
	mov	eax,dword [_bb_testtile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1202
	push	eax
	call	_bbGCFree
	add	esp,4
_1202:
	mov	dword [esi+24],ebx
	push	_1203
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [_bb_testtileI]
	cmp	ebx,dword [eax+20]
	jb	_1205
	call	_brl_blitz_ArrayBoundsError
_1205:
	mov	esi,dword [_bb_testtileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,3
	mov	eax,dword [_bb_testtile]
	cmp	ebx,dword [eax+20]
	jb	_1208
	call	_brl_blitz_ArrayBoundsError
_1208:
	push	-1
	mov	eax,dword [_bb_testtile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1212
	push	eax
	call	_bbGCFree
	add	esp,4
_1212:
	mov	dword [esi+24],ebx
	push	_1213
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_527]
	and	eax,131072
	cmp	eax,0
	jne	_1216
	push	4
	push	_1214
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_lutesttile],eax
	or	dword [_527],131072
_1216:
	mov	eax,dword [_527]
	and	eax,262144
	cmp	eax,0
	jne	_1219
	push	4
	push	_1217
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_lutesttileO],eax
	or	dword [_527],262144
_1219:
	push	_1220
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [_bb_lutesttile]
	cmp	ebx,dword [eax+20]
	jb	_1222
	call	_brl_blitz_ArrayBoundsError
_1222:
	mov	esi,dword [_bb_lutesttile]
	shl	ebx,2
	add	esi,ebx
	push	dword [ebp-40]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1227
	push	eax
	call	_bbGCFree
	add	esp,4
_1227:
	mov	dword [esi+24],ebx
	push	_1228
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [_bb_lutesttile]
	cmp	ebx,dword [eax+20]
	jb	_1230
	call	_brl_blitz_ArrayBoundsError
_1230:
	mov	esi,dword [_bb_lutesttile]
	shl	ebx,2
	add	esi,ebx
	push	dword [ebp-40]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1235
	push	eax
	call	_bbGCFree
	add	esp,4
_1235:
	mov	dword [esi+24],ebx
	push	_1236
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [_bb_lutesttile]
	cmp	ebx,dword [eax+20]
	jb	_1238
	call	_brl_blitz_ArrayBoundsError
_1238:
	mov	esi,dword [_bb_lutesttile]
	shl	ebx,2
	add	esi,ebx
	push	dword [ebp-40]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1243
	push	eax
	call	_bbGCFree
	add	esp,4
_1243:
	mov	dword [esi+24],ebx
	push	_1244
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [_bb_lutesttile]
	cmp	ebx,dword [eax+20]
	jb	_1246
	call	_brl_blitz_ArrayBoundsError
_1246:
	mov	esi,dword [_bb_lutesttile]
	shl	ebx,2
	add	esi,ebx
	push	dword [ebp-40]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1251
	push	eax
	call	_bbGCFree
	add	esp,4
_1251:
	mov	dword [esi+24],ebx
	push	_1252
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [_bb_lutesttileO]
	cmp	ebx,dword [eax+20]
	jb	_1254
	call	_brl_blitz_ArrayBoundsError
_1254:
	mov	esi,dword [_bb_lutesttileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-40]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1259
	push	eax
	call	_bbGCFree
	add	esp,4
_1259:
	mov	dword [esi+24],ebx
	push	_1260
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [_bb_lutesttileO]
	cmp	ebx,dword [eax+20]
	jb	_1262
	call	_brl_blitz_ArrayBoundsError
_1262:
	mov	esi,dword [_bb_lutesttileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-40]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1267
	push	eax
	call	_bbGCFree
	add	esp,4
_1267:
	mov	dword [esi+24],ebx
	push	_1268
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [_bb_lutesttileO]
	cmp	ebx,dword [eax+20]
	jb	_1270
	call	_brl_blitz_ArrayBoundsError
_1270:
	mov	esi,dword [_bb_lutesttileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-40]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1275
	push	eax
	call	_bbGCFree
	add	esp,4
_1275:
	mov	dword [esi+24],ebx
	push	_1276
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [_bb_lutesttileO]
	cmp	ebx,dword [eax+20]
	jb	_1278
	call	_brl_blitz_ArrayBoundsError
_1278:
	mov	esi,dword [_bb_lutesttileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-40]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1283
	push	eax
	call	_bbGCFree
	add	esp,4
_1283:
	mov	dword [esi+24],ebx
	push	_1284
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_527]
	and	eax,524288
	cmp	eax,0
	jne	_1287
	push	4
	push	_1285
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_lutesttileI],eax
	or	dword [_527],524288
_1287:
	push	_1288
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [_bb_lutesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1290
	call	_brl_blitz_ArrayBoundsError
_1290:
	mov	esi,dword [_bb_lutesttileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,0
	mov	eax,dword [_bb_lutesttile]
	cmp	ebx,dword [eax+20]
	jb	_1293
	call	_brl_blitz_ArrayBoundsError
_1293:
	push	-1
	mov	eax,dword [_bb_lutesttile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1297
	push	eax
	call	_bbGCFree
	add	esp,4
_1297:
	mov	dword [esi+24],ebx
	push	_1298
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [_bb_lutesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1300
	call	_brl_blitz_ArrayBoundsError
_1300:
	mov	esi,dword [_bb_lutesttileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,1
	mov	eax,dword [_bb_lutesttile]
	cmp	ebx,dword [eax+20]
	jb	_1303
	call	_brl_blitz_ArrayBoundsError
_1303:
	push	-1
	mov	eax,dword [_bb_lutesttile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1307
	push	eax
	call	_bbGCFree
	add	esp,4
_1307:
	mov	dword [esi+24],ebx
	push	_1308
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [_bb_lutesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1310
	call	_brl_blitz_ArrayBoundsError
_1310:
	mov	esi,dword [_bb_lutesttileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,2
	mov	eax,dword [_bb_lutesttile]
	cmp	ebx,dword [eax+20]
	jb	_1313
	call	_brl_blitz_ArrayBoundsError
_1313:
	push	-1
	mov	eax,dword [_bb_lutesttile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1317
	push	eax
	call	_bbGCFree
	add	esp,4
_1317:
	mov	dword [esi+24],ebx
	push	_1318
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [_bb_lutesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1320
	call	_brl_blitz_ArrayBoundsError
_1320:
	mov	esi,dword [_bb_lutesttileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,3
	mov	eax,dword [_bb_lutesttile]
	cmp	ebx,dword [eax+20]
	jb	_1323
	call	_brl_blitz_ArrayBoundsError
_1323:
	push	-1
	mov	eax,dword [_bb_lutesttile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1327
	push	eax
	call	_bbGCFree
	add	esp,4
_1327:
	mov	dword [esi+24],ebx
	push	_1328
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_527]
	and	eax,1048576
	cmp	eax,0
	jne	_1331
	push	4
	push	_1329
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_lotesttile],eax
	or	dword [_527],1048576
_1331:
	mov	eax,dword [_527]
	and	eax,2097152
	cmp	eax,0
	jne	_1334
	push	4
	push	_1332
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_lotesttileO],eax
	or	dword [_527],2097152
_1334:
	push	_1335
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [_bb_lotesttile]
	cmp	ebx,dword [eax+20]
	jb	_1337
	call	_brl_blitz_ArrayBoundsError
_1337:
	mov	esi,dword [_bb_lotesttile]
	shl	ebx,2
	add	esi,ebx
	push	dword [ebp-40]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1342
	push	eax
	call	_bbGCFree
	add	esp,4
_1342:
	mov	dword [esi+24],ebx
	push	_1343
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [_bb_lotesttile]
	cmp	ebx,dword [eax+20]
	jb	_1345
	call	_brl_blitz_ArrayBoundsError
_1345:
	mov	esi,dword [_bb_lotesttile]
	shl	ebx,2
	add	esi,ebx
	push	dword [ebp-40]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1350
	push	eax
	call	_bbGCFree
	add	esp,4
_1350:
	mov	dword [esi+24],ebx
	push	_1351
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [_bb_lotesttile]
	cmp	ebx,dword [eax+20]
	jb	_1353
	call	_brl_blitz_ArrayBoundsError
_1353:
	mov	esi,dword [_bb_lotesttile]
	shl	ebx,2
	add	esi,ebx
	push	dword [ebp-40]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1358
	push	eax
	call	_bbGCFree
	add	esp,4
_1358:
	mov	dword [esi+24],ebx
	push	_1359
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [_bb_lotesttile]
	cmp	ebx,dword [eax+20]
	jb	_1361
	call	_brl_blitz_ArrayBoundsError
_1361:
	mov	esi,dword [_bb_lotesttile]
	shl	ebx,2
	add	esi,ebx
	push	dword [ebp-40]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1366
	push	eax
	call	_bbGCFree
	add	esp,4
_1366:
	mov	dword [esi+24],ebx
	push	_1367
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [_bb_lotesttileO]
	cmp	ebx,dword [eax+20]
	jb	_1369
	call	_brl_blitz_ArrayBoundsError
_1369:
	mov	esi,dword [_bb_lotesttileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-40]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1374
	push	eax
	call	_bbGCFree
	add	esp,4
_1374:
	mov	dword [esi+24],ebx
	push	_1375
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [_bb_lotesttileO]
	cmp	ebx,dword [eax+20]
	jb	_1377
	call	_brl_blitz_ArrayBoundsError
_1377:
	mov	esi,dword [_bb_lotesttileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-40]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1382
	push	eax
	call	_bbGCFree
	add	esp,4
_1382:
	mov	dword [esi+24],ebx
	push	_1383
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [_bb_lotesttileO]
	cmp	ebx,dword [eax+20]
	jb	_1385
	call	_brl_blitz_ArrayBoundsError
_1385:
	mov	esi,dword [_bb_lotesttileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-40]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1390
	push	eax
	call	_bbGCFree
	add	esp,4
_1390:
	mov	dword [esi+24],ebx
	push	_1391
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [_bb_lotesttileO]
	cmp	ebx,dword [eax+20]
	jb	_1393
	call	_brl_blitz_ArrayBoundsError
_1393:
	mov	esi,dword [_bb_lotesttileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-40]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1398
	push	eax
	call	_bbGCFree
	add	esp,4
_1398:
	mov	dword [esi+24],ebx
	push	_1399
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_527]
	and	eax,4194304
	cmp	eax,0
	jne	_1402
	push	4
	push	_1400
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_lotesttileI],eax
	or	dword [_527],4194304
_1402:
	push	_1403
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [_bb_lotesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1405
	call	_brl_blitz_ArrayBoundsError
_1405:
	mov	esi,dword [_bb_lotesttileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,0
	mov	eax,dword [_bb_lotesttile]
	cmp	ebx,dword [eax+20]
	jb	_1408
	call	_brl_blitz_ArrayBoundsError
_1408:
	push	-1
	mov	eax,dword [_bb_lotesttile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1412
	push	eax
	call	_bbGCFree
	add	esp,4
_1412:
	mov	dword [esi+24],ebx
	push	_1413
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [_bb_lotesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1415
	call	_brl_blitz_ArrayBoundsError
_1415:
	mov	esi,dword [_bb_lotesttileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,1
	mov	eax,dword [_bb_lotesttile]
	cmp	ebx,dword [eax+20]
	jb	_1418
	call	_brl_blitz_ArrayBoundsError
_1418:
	push	-1
	mov	eax,dword [_bb_lotesttile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1422
	push	eax
	call	_bbGCFree
	add	esp,4
_1422:
	mov	dword [esi+24],ebx
	push	_1423
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [_bb_lotesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1425
	call	_brl_blitz_ArrayBoundsError
_1425:
	mov	esi,dword [_bb_lotesttileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,2
	mov	eax,dword [_bb_lotesttile]
	cmp	ebx,dword [eax+20]
	jb	_1428
	call	_brl_blitz_ArrayBoundsError
_1428:
	push	-1
	mov	eax,dword [_bb_lotesttile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1432
	push	eax
	call	_bbGCFree
	add	esp,4
_1432:
	mov	dword [esi+24],ebx
	push	_1433
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [_bb_lotesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1435
	call	_brl_blitz_ArrayBoundsError
_1435:
	mov	esi,dword [_bb_lotesttileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,3
	mov	eax,dword [_bb_lotesttile]
	cmp	ebx,dword [eax+20]
	jb	_1438
	call	_brl_blitz_ArrayBoundsError
_1438:
	push	-1
	mov	eax,dword [_bb_lotesttile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1442
	push	eax
	call	_bbGCFree
	add	esp,4
_1442:
	mov	dword [esi+24],ebx
	push	_1443
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_527]
	and	eax,8388608
	cmp	eax,0
	jne	_1446
	push	4
	push	_1444
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_rotesttile],eax
	or	dword [_527],8388608
_1446:
	mov	eax,dword [_527]
	and	eax,16777216
	cmp	eax,0
	jne	_1449
	push	4
	push	_1447
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_rotesttileO],eax
	or	dword [_527],16777216
_1449:
	push	_1450
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [_bb_rotesttile]
	cmp	ebx,dword [eax+20]
	jb	_1452
	call	_brl_blitz_ArrayBoundsError
_1452:
	mov	esi,dword [_bb_rotesttile]
	shl	ebx,2
	add	esi,ebx
	push	dword [ebp-40]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1457
	push	eax
	call	_bbGCFree
	add	esp,4
_1457:
	mov	dword [esi+24],ebx
	push	_1458
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [_bb_rotesttile]
	cmp	ebx,dword [eax+20]
	jb	_1460
	call	_brl_blitz_ArrayBoundsError
_1460:
	mov	esi,dword [_bb_rotesttile]
	shl	ebx,2
	add	esi,ebx
	push	dword [ebp-40]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1465
	push	eax
	call	_bbGCFree
	add	esp,4
_1465:
	mov	dword [esi+24],ebx
	push	_1466
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [_bb_rotesttile]
	cmp	ebx,dword [eax+20]
	jb	_1468
	call	_brl_blitz_ArrayBoundsError
_1468:
	mov	esi,dword [_bb_rotesttile]
	shl	ebx,2
	add	esi,ebx
	push	dword [ebp-40]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1473
	push	eax
	call	_bbGCFree
	add	esp,4
_1473:
	mov	dword [esi+24],ebx
	push	_1474
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [_bb_rotesttile]
	cmp	ebx,dword [eax+20]
	jb	_1476
	call	_brl_blitz_ArrayBoundsError
_1476:
	mov	esi,dword [_bb_rotesttile]
	shl	ebx,2
	add	esi,ebx
	push	dword [ebp-40]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1481
	push	eax
	call	_bbGCFree
	add	esp,4
_1481:
	mov	dword [esi+24],ebx
	push	_1482
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [_bb_rotesttileO]
	cmp	ebx,dword [eax+20]
	jb	_1484
	call	_brl_blitz_ArrayBoundsError
_1484:
	mov	esi,dword [_bb_rotesttileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-40]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1489
	push	eax
	call	_bbGCFree
	add	esp,4
_1489:
	mov	dword [esi+24],ebx
	push	_1490
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [_bb_rotesttileO]
	cmp	ebx,dword [eax+20]
	jb	_1492
	call	_brl_blitz_ArrayBoundsError
_1492:
	mov	esi,dword [_bb_rotesttileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-40]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1497
	push	eax
	call	_bbGCFree
	add	esp,4
_1497:
	mov	dword [esi+24],ebx
	push	_1498
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [_bb_rotesttileO]
	cmp	ebx,dword [eax+20]
	jb	_1500
	call	_brl_blitz_ArrayBoundsError
_1500:
	mov	esi,dword [_bb_rotesttileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-40]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1505
	push	eax
	call	_bbGCFree
	add	esp,4
_1505:
	mov	dword [esi+24],ebx
	push	_1506
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [_bb_rotesttileO]
	cmp	ebx,dword [eax+20]
	jb	_1508
	call	_brl_blitz_ArrayBoundsError
_1508:
	mov	esi,dword [_bb_rotesttileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-40]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1513
	push	eax
	call	_bbGCFree
	add	esp,4
_1513:
	mov	dword [esi+24],ebx
	push	_1514
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_527]
	and	eax,33554432
	cmp	eax,0
	jne	_1517
	push	4
	push	_1515
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_rotesttileI],eax
	or	dword [_527],33554432
_1517:
	push	_1518
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [_bb_rotesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1520
	call	_brl_blitz_ArrayBoundsError
_1520:
	mov	esi,dword [_bb_rotesttileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,0
	mov	eax,dword [_bb_rotesttile]
	cmp	ebx,dword [eax+20]
	jb	_1523
	call	_brl_blitz_ArrayBoundsError
_1523:
	push	-1
	mov	eax,dword [_bb_rotesttile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1527
	push	eax
	call	_bbGCFree
	add	esp,4
_1527:
	mov	dword [esi+24],ebx
	push	_1528
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [_bb_rotesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1530
	call	_brl_blitz_ArrayBoundsError
_1530:
	mov	esi,dword [_bb_rotesttileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,1
	mov	eax,dword [_bb_rotesttile]
	cmp	ebx,dword [eax+20]
	jb	_1533
	call	_brl_blitz_ArrayBoundsError
_1533:
	push	-1
	mov	eax,dword [_bb_rotesttile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1537
	push	eax
	call	_bbGCFree
	add	esp,4
_1537:
	mov	dword [esi+24],ebx
	push	_1538
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [_bb_rotesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1540
	call	_brl_blitz_ArrayBoundsError
_1540:
	mov	esi,dword [_bb_rotesttileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,2
	mov	eax,dword [_bb_rotesttile]
	cmp	ebx,dword [eax+20]
	jb	_1543
	call	_brl_blitz_ArrayBoundsError
_1543:
	push	-1
	mov	eax,dword [_bb_rotesttile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1547
	push	eax
	call	_bbGCFree
	add	esp,4
_1547:
	mov	dword [esi+24],ebx
	push	_1548
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [_bb_rotesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1550
	call	_brl_blitz_ArrayBoundsError
_1550:
	mov	esi,dword [_bb_rotesttileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,3
	mov	eax,dword [_bb_rotesttile]
	cmp	ebx,dword [eax+20]
	jb	_1553
	call	_brl_blitz_ArrayBoundsError
_1553:
	push	-1
	mov	eax,dword [_bb_rotesttile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1557
	push	eax
	call	_bbGCFree
	add	esp,4
_1557:
	mov	dword [esi+24],ebx
	push	_1558
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_527]
	and	eax,67108864
	cmp	eax,0
	jne	_1561
	push	9
	push	_1559
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Gtesttile],eax
	or	dword [_527],67108864
_1561:
	mov	eax,dword [_527]
	and	eax,134217728
	cmp	eax,0
	jne	_1564
	push	9
	push	_1562
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_GtesttileO],eax
	or	dword [_527],134217728
_1564:
	push	_1565
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_527]
	and	eax,268435456
	cmp	eax,0
	jne	_1568
	push	9
	push	_1566
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_GtesttileI],eax
	or	dword [_527],268435456
_1568:
	push	_1569
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-156],0
	mov	dword [ebp-156],0
	jmp	_1571
_219:
	mov	eax,ebp
	push	eax
	push	_1598
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1572
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-156]
	mov	eax,dword [_bb_Gtesttile]
	cmp	ebx,dword [eax+20]
	jb	_1574
	call	_brl_blitz_ArrayBoundsError
_1574:
	mov	esi,dword [_bb_Gtesttile]
	shl	ebx,2
	add	esi,ebx
	push	dword [ebp-40]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1579
	push	eax
	call	_bbGCFree
	add	esp,4
_1579:
	mov	dword [esi+24],ebx
	push	_1580
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-156]
	mov	eax,dword [_bb_GtesttileO]
	cmp	ebx,dword [eax+20]
	jb	_1582
	call	_brl_blitz_ArrayBoundsError
_1582:
	mov	esi,dword [_bb_GtesttileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-40]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1587
	push	eax
	call	_bbGCFree
	add	esp,4
_1587:
	mov	dword [esi+24],ebx
	push	_1588
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-156]
	mov	eax,dword [_bb_GtesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1590
	call	_brl_blitz_ArrayBoundsError
_1590:
	mov	esi,dword [_bb_GtesttileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-156]
	mov	eax,dword [_bb_Gtesttile]
	cmp	ebx,dword [eax+20]
	jb	_1593
	call	_brl_blitz_ArrayBoundsError
_1593:
	push	-1
	mov	eax,dword [_bb_Gtesttile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1597
	push	eax
	call	_bbGCFree
	add	esp,4
_1597:
	mov	dword [esi+24],ebx
	call	dword [_bbOnDebugLeaveScope]
_217:
	add	dword [ebp-156],1
_1571:
	cmp	dword [ebp-156],7
	jle	_219
_218:
	push	_1599
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,4
	mov	eax,dword [_bb_Gtesttile]
	cmp	ebx,dword [eax+20]
	jb	_1601
	call	_brl_blitz_ArrayBoundsError
_1601:
	mov	esi,dword [_bb_Gtesttile]
	shl	ebx,2
	add	esi,ebx
	push	dword [ebp-76]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1606
	push	eax
	call	_bbGCFree
	add	esp,4
_1606:
	mov	dword [esi+24],ebx
	push	_1607
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,4
	mov	eax,dword [_bb_GtesttileO]
	cmp	ebx,dword [eax+20]
	jb	_1609
	call	_brl_blitz_ArrayBoundsError
_1609:
	mov	esi,dword [_bb_GtesttileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-76]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1614
	push	eax
	call	_bbGCFree
	add	esp,4
_1614:
	mov	dword [esi+24],ebx
	push	_1615
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,4
	mov	eax,dword [_bb_GtesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1617
	call	_brl_blitz_ArrayBoundsError
_1617:
	mov	esi,dword [_bb_GtesttileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,4
	mov	eax,dword [_bb_Gtesttile]
	cmp	ebx,dword [eax+20]
	jb	_1620
	call	_brl_blitz_ArrayBoundsError
_1620:
	push	-1
	mov	eax,dword [_bb_Gtesttile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1624
	push	eax
	call	_bbGCFree
	add	esp,4
_1624:
	mov	dword [esi+24],ebx
	push	_1625
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,8
	mov	eax,dword [_bb_Gtesttile]
	cmp	ebx,dword [eax+20]
	jb	_1627
	call	_brl_blitz_ArrayBoundsError
_1627:
	mov	esi,dword [_bb_Gtesttile]
	shl	ebx,2
	add	esi,ebx
	push	dword [ebp-40]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1632
	push	eax
	call	_bbGCFree
	add	esp,4
_1632:
	mov	dword [esi+24],ebx
	push	_1633
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,8
	mov	eax,dword [_bb_GtesttileO]
	cmp	ebx,dword [eax+20]
	jb	_1635
	call	_brl_blitz_ArrayBoundsError
_1635:
	mov	esi,dword [_bb_GtesttileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-40]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1640
	push	eax
	call	_bbGCFree
	add	esp,4
_1640:
	mov	dword [esi+24],ebx
	push	_1641
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,8
	mov	eax,dword [_bb_GtesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1643
	call	_brl_blitz_ArrayBoundsError
_1643:
	mov	esi,dword [_bb_GtesttileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,8
	mov	eax,dword [_bb_Gtesttile]
	cmp	ebx,dword [eax+20]
	jb	_1646
	call	_brl_blitz_ArrayBoundsError
_1646:
	push	-1
	mov	eax,dword [_bb_Gtesttile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1650
	push	eax
	call	_bbGCFree
	add	esp,4
_1650:
	mov	dword [esi+24],ebx
	push	_1651
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-88],0
	push	4
	push	_1653
	call	_bbArrayNew1D
	add	esp,8
	mov	dword [ebp-92],eax
	push	_1655
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1656
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_1658
	call	_brl_blitz_ArrayBoundsError
_1658:
	mov	esi,8
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_1660
	call	_brl_blitz_ArrayBoundsError
_1660:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	shl	ebx,2
	add	eax,ebx
	mov	dword [ebp-468],eax
	mov	dword [ebp-416],0
	mov	eax,dword [_bb_testtileO]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-416],eax
	jb	_1663
	call	_brl_blitz_ArrayBoundsError
_1663:
	mov	edi,3
	mov	eax,dword [_bb_testtileO]
	cmp	edi,dword [eax+20]
	jb	_1665
	call	_brl_blitz_ArrayBoundsError
_1665:
	mov	esi,2
	mov	eax,dword [_bb_testtileO]
	cmp	esi,dword [eax+20]
	jb	_1667
	call	_brl_blitz_ArrayBoundsError
_1667:
	mov	ebx,1
	mov	eax,dword [_bb_testtileO]
	cmp	ebx,dword [eax+20]
	jb	_1669
	call	_brl_blitz_ArrayBoundsError
_1669:
	mov	eax,dword [_bb_testtileO]
	push	dword [eax+ebx*4+24]
	mov	eax,dword [_bb_testtileO]
	push	dword [eax+esi*4+24]
	mov	eax,dword [_bb_testtileO]
	push	dword [eax+edi*4+24]
	mov	edx,dword [_bb_testtileO]
	mov	eax,dword [ebp-416]
	push	dword [edx+eax*4+24]
	call	_bb_getdiff
	add	esp,16
	mov	edx,dword [ebp-468]
	mov	dword [edx+28],eax
	push	_1670
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],0
	push	_1672
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],1
	push	_1673
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_527]
	and	eax,536870912
	cmp	eax,0
	jne	_1675
	push	_bbNullObject
	push	1109393408
	call	_brl_timer_CreateTimer
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_tmr],eax
	or	dword [_527],536870912
_1675:
	push	_1676
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_220
_222:
	mov	eax,ebp
	push	eax
	push	_2896
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1677
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_tmr]
	cmp	ebx,_bbNullObject
	jne	_1679
	call	_brl_blitz_NullObjectError
_1679:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	_1680
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_1681
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_brl_polledinput_MouseHit
	add	esp,4
	mov	dword [_bb_md],eax
	push	_1682
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_1683
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [_bb_testtileI]
	cmp	ebx,dword [eax+20]
	jb	_1685
	call	_brl_blitz_ArrayBoundsError
_1685:
	push	1124073472
	push	1124073472
	push	1141014528
	push	1141014528
	mov	eax,dword [_bb_testtileI]
	push	dword [eax+ebx*4+24]
	call	_bb_DrawPicture
	add	esp,20
	push	_1686
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [_bb_testtileI]
	cmp	ebx,dword [eax+20]
	jb	_1688
	call	_brl_blitz_ArrayBoundsError
_1688:
	push	1124073472
	push	1124073472
	push	1141014528
	push	1143111680
	mov	eax,dword [_bb_testtileI]
	push	dword [eax+ebx*4+24]
	call	_bb_DrawPicture
	add	esp,20
	push	_1689
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [_bb_testtileI]
	cmp	ebx,dword [eax+20]
	jb	_1691
	call	_brl_blitz_ArrayBoundsError
_1691:
	push	1124073472
	push	1124073472
	push	1143111680
	push	1141014528
	mov	eax,dword [_bb_testtileI]
	push	dword [eax+ebx*4+24]
	call	_bb_DrawPicture
	add	esp,20
	push	_1692
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [_bb_testtileI]
	cmp	ebx,dword [eax+20]
	jb	_1694
	call	_brl_blitz_ArrayBoundsError
_1694:
	push	1124073472
	push	1124073472
	push	1143111680
	push	1143111680
	mov	eax,dword [_bb_testtileI]
	push	dword [eax+ebx*4+24]
	call	_bb_DrawPicture
	add	esp,20
	push	_1695
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [_bb_lutesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1697
	call	_brl_blitz_ArrayBoundsError
_1697:
	push	1124073472
	push	1124073472
	push	1141014528
	push	1092616192
	mov	eax,dword [_bb_lutesttileI]
	push	dword [eax+ebx*4+24]
	call	_bb_DrawPicture
	add	esp,20
	push	_1698
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [_bb_lutesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1700
	call	_brl_blitz_ArrayBoundsError
_1700:
	push	1124073472
	push	1124073472
	push	1141014528
	push	1124728832
	mov	eax,dword [_bb_lutesttileI]
	push	dword [eax+ebx*4+24]
	call	_bb_DrawPicture
	add	esp,20
	push	_1701
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [_bb_lutesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1703
	call	_brl_blitz_ArrayBoundsError
_1703:
	push	1124073472
	push	1124073472
	push	1143111680
	push	1092616192
	mov	eax,dword [_bb_lutesttileI]
	push	dword [eax+ebx*4+24]
	call	_bb_DrawPicture
	add	esp,20
	push	_1704
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [_bb_lutesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1706
	call	_brl_blitz_ArrayBoundsError
_1706:
	push	1124073472
	push	1124073472
	push	1143111680
	push	1124728832
	mov	eax,dword [_bb_lutesttileI]
	push	dword [eax+ebx*4+24]
	call	_bb_DrawPicture
	add	esp,20
	push	_1707
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [_bb_rotesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1709
	call	_brl_blitz_ArrayBoundsError
_1709:
	push	1124073472
	push	1124073472
	push	1092616192
	push	1092616192
	mov	eax,dword [_bb_rotesttileI]
	push	dword [eax+ebx*4+24]
	call	_bb_DrawPicture
	add	esp,20
	push	_1710
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [_bb_rotesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1712
	call	_brl_blitz_ArrayBoundsError
_1712:
	push	1124073472
	push	1124073472
	push	1092616192
	push	1124728832
	mov	eax,dword [_bb_rotesttileI]
	push	dword [eax+ebx*4+24]
	call	_bb_DrawPicture
	add	esp,20
	push	_1713
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [_bb_rotesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1715
	call	_brl_blitz_ArrayBoundsError
_1715:
	push	1124073472
	push	1124073472
	push	1124728832
	push	1092616192
	mov	eax,dword [_bb_rotesttileI]
	push	dword [eax+ebx*4+24]
	call	_bb_DrawPicture
	add	esp,20
	push	_1716
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [_bb_rotesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1718
	call	_brl_blitz_ArrayBoundsError
_1718:
	push	1124073472
	push	1124073472
	push	1124728832
	push	1124728832
	mov	eax,dword [_bb_rotesttileI]
	push	dword [eax+ebx*4+24]
	call	_bb_DrawPicture
	add	esp,20
	push	_1719
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [_bb_lotesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1721
	call	_brl_blitz_ArrayBoundsError
_1721:
	push	1124073472
	push	1124073472
	push	1092616192
	push	1141014528
	mov	eax,dword [_bb_lotesttileI]
	push	dword [eax+ebx*4+24]
	call	_bb_DrawPicture
	add	esp,20
	push	_1722
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [_bb_lotesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1724
	call	_brl_blitz_ArrayBoundsError
_1724:
	push	1124073472
	push	1124073472
	push	1092616192
	push	1143111680
	mov	eax,dword [_bb_lotesttileI]
	push	dword [eax+ebx*4+24]
	call	_bb_DrawPicture
	add	esp,20
	push	_1725
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [_bb_lotesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1727
	call	_brl_blitz_ArrayBoundsError
_1727:
	push	1124073472
	push	1124073472
	push	1124728832
	push	1141014528
	mov	eax,dword [_bb_lotesttileI]
	push	dword [eax+ebx*4+24]
	call	_bb_DrawPicture
	add	esp,20
	push	_1728
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [_bb_lotesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1730
	call	_brl_blitz_ArrayBoundsError
_1730:
	push	1124073472
	push	1124073472
	push	1124728832
	push	1143111680
	mov	eax,dword [_bb_lotesttileI]
	push	dword [eax+ebx*4+24]
	call	_bb_DrawPicture
	add	esp,20
	push	_1731
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,7
	mov	eax,dword [_bb_GtesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1733
	call	_brl_blitz_ArrayBoundsError
_1733:
	push	1107296256
	push	1107296256
	push	1136984064
	push	1136984064
	mov	eax,dword [_bb_GtesttileI]
	push	dword [eax+ebx*4+24]
	call	_bb_DrawPicture
	add	esp,20
	push	_1734
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [_bb_GtesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1736
	call	_brl_blitz_ArrayBoundsError
_1736:
	push	1107296256
	push	1107296256
	push	1136984064
	push	1138032640
	mov	eax,dword [_bb_GtesttileI]
	push	dword [eax+ebx*4+24]
	call	_bb_DrawPicture
	add	esp,20
	push	_1737
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [_bb_GtesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1739
	call	_brl_blitz_ArrayBoundsError
_1739:
	push	1107296256
	push	1107296256
	push	1136984064
	push	1139081216
	mov	eax,dword [_bb_GtesttileI]
	push	dword [eax+ebx*4+24]
	call	_bb_DrawPicture
	add	esp,20
	push	_1740
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,6
	mov	eax,dword [_bb_GtesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1742
	call	_brl_blitz_ArrayBoundsError
_1742:
	push	1107296256
	push	1107296256
	push	1138032640
	push	1136984064
	mov	eax,dword [_bb_GtesttileI]
	push	dword [eax+ebx*4+24]
	call	_bb_DrawPicture
	add	esp,20
	push	_1743
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [_bb_GtesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1745
	call	_brl_blitz_ArrayBoundsError
_1745:
	push	1107296256
	push	1107296256
	push	1138032640
	push	1139081216
	mov	eax,dword [_bb_GtesttileI]
	push	dword [eax+ebx*4+24]
	call	_bb_DrawPicture
	add	esp,20
	push	_1746
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,5
	mov	eax,dword [_bb_GtesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1748
	call	_brl_blitz_ArrayBoundsError
_1748:
	push	1107296256
	push	1107296256
	push	1139081216
	push	1136984064
	mov	eax,dword [_bb_GtesttileI]
	push	dword [eax+ebx*4+24]
	call	_bb_DrawPicture
	add	esp,20
	push	_1749
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,4
	mov	eax,dword [_bb_GtesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1751
	call	_brl_blitz_ArrayBoundsError
_1751:
	push	1107296256
	push	1107296256
	push	1139081216
	push	1138032640
	mov	eax,dword [_bb_GtesttileI]
	push	dword [eax+ebx*4+24]
	call	_bb_DrawPicture
	add	esp,20
	push	_1752
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [_bb_GtesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1754
	call	_brl_blitz_ArrayBoundsError
_1754:
	push	1107296256
	push	1107296256
	push	1139081216
	push	1139081216
	mov	eax,dword [_bb_GtesttileI]
	push	dword [eax+ebx*4+24]
	call	_bb_DrawPicture
	add	esp,20
	push	_1755
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,8
	mov	eax,dword [_bb_GtesttileI]
	cmp	ebx,dword [eax+20]
	jb	_1757
	call	_brl_blitz_ArrayBoundsError
_1757:
	push	1107296256
	push	1107296256
	push	1138032640
	push	1138032640
	mov	eax,dword [_bb_GtesttileI]
	push	dword [eax+ebx*4+24]
	call	_bb_DrawPicture
	add	esp,20
	push	_1758
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	0
	push	30
	push	75
	push	50
	push	800
	push	_223
	call	_bb_button
	add	esp,28
	cmp	eax,1
	jne	_1759
	mov	eax,ebp
	push	eax
	push	_2090
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1760
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-88],1
	push	_1761
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-160],0
	push	_1763
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_226:
	mov	eax,ebp
	push	eax
	push	_2087
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1764
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,0
	mov	eax,dword [ebp-92]
	cmp	esi,dword [eax+20]
	jb	_1766
	call	_brl_blitz_ArrayBoundsError
_1766:
	mov	ebx,dword [ebp-92]
	shl	esi,2
	add	ebx,esi
	mov	esi,0
	mov	eax,dword [ebp-92]
	cmp	esi,dword [eax+20]
	jb	_1769
	call	_brl_blitz_ArrayBoundsError
_1769:
	mov	eax,dword [ebp-92]
	mov	eax,dword [eax+esi*4+24]
	add	eax,1
	mov	dword [ebx+24],eax
	push	_1770
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-92]
	cmp	ebx,dword [eax+20]
	jb	_1772
	call	_brl_blitz_ArrayBoundsError
_1772:
	mov	eax,dword [ebp-92]
	cmp	dword [eax+ebx*4+24],3
	jle	_1773
	mov	eax,ebp
	push	eax
	push	_1784
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1774
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-92]
	cmp	ebx,dword [eax+20]
	jb	_1776
	call	_brl_blitz_ArrayBoundsError
_1776:
	mov	eax,dword [ebp-92]
	shl	ebx,2
	add	eax,ebx
	mov	dword [eax+24],0
	push	_1778
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,1
	mov	eax,dword [ebp-92]
	cmp	esi,dword [eax+20]
	jb	_1780
	call	_brl_blitz_ArrayBoundsError
_1780:
	mov	ebx,dword [ebp-92]
	shl	esi,2
	add	ebx,esi
	mov	esi,1
	mov	eax,dword [ebp-92]
	cmp	esi,dword [eax+20]
	jb	_1783
	call	_brl_blitz_ArrayBoundsError
_1783:
	mov	eax,dword [ebp-92]
	mov	eax,dword [eax+esi*4+24]
	add	eax,1
	mov	dword [ebx+24],eax
	call	dword [_bbOnDebugLeaveScope]
_1773:
	push	_1785
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-92]
	cmp	ebx,dword [eax+20]
	jb	_1787
	call	_brl_blitz_ArrayBoundsError
_1787:
	mov	eax,dword [ebp-92]
	cmp	dword [eax+ebx*4+24],3
	jle	_1788
	mov	eax,ebp
	push	eax
	push	_1799
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1789
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-92]
	cmp	ebx,dword [eax+20]
	jb	_1791
	call	_brl_blitz_ArrayBoundsError
_1791:
	mov	eax,dword [ebp-92]
	shl	ebx,2
	add	eax,ebx
	mov	dword [eax+24],0
	push	_1793
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,2
	mov	eax,dword [ebp-92]
	cmp	esi,dword [eax+20]
	jb	_1795
	call	_brl_blitz_ArrayBoundsError
_1795:
	mov	ebx,dword [ebp-92]
	shl	esi,2
	add	ebx,esi
	mov	esi,2
	mov	eax,dword [ebp-92]
	cmp	esi,dword [eax+20]
	jb	_1798
	call	_brl_blitz_ArrayBoundsError
_1798:
	mov	eax,dword [ebp-92]
	mov	eax,dword [eax+esi*4+24]
	add	eax,1
	mov	dword [ebx+24],eax
	call	dword [_bbOnDebugLeaveScope]
_1788:
	push	_1800
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [ebp-92]
	cmp	ebx,dword [eax+20]
	jb	_1802
	call	_brl_blitz_ArrayBoundsError
_1802:
	mov	eax,dword [ebp-92]
	cmp	dword [eax+ebx*4+24],3
	jle	_1803
	mov	eax,ebp
	push	eax
	push	_1814
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1804
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [ebp-92]
	cmp	ebx,dword [eax+20]
	jb	_1806
	call	_brl_blitz_ArrayBoundsError
_1806:
	mov	eax,dword [ebp-92]
	shl	ebx,2
	add	eax,ebx
	mov	dword [eax+24],0
	push	_1808
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,3
	mov	eax,dword [ebp-92]
	cmp	esi,dword [eax+20]
	jb	_1810
	call	_brl_blitz_ArrayBoundsError
_1810:
	mov	ebx,dword [ebp-92]
	shl	esi,2
	add	ebx,esi
	mov	esi,3
	mov	eax,dword [ebp-92]
	cmp	esi,dword [eax+20]
	jb	_1813
	call	_brl_blitz_ArrayBoundsError
_1813:
	mov	eax,dword [ebp-92]
	mov	eax,dword [eax+esi*4+24]
	add	eax,1
	mov	dword [ebx+24],eax
	call	dword [_bbOnDebugLeaveScope]
_1803:
	push	_1815
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [ebp-92]
	cmp	ebx,dword [eax+20]
	jb	_1817
	call	_brl_blitz_ArrayBoundsError
_1817:
	mov	eax,dword [ebp-92]
	cmp	dword [eax+ebx*4+24],3
	jle	_1818
	mov	eax,ebp
	push	eax
	push	_1822
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1819
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_227
	call	_brl_system_Notify
	add	esp,8
	push	_1820
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_savetheshit
	push	_1821
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	call	dword [_bbOnDebugLeaveScope]
_1818:
	push	_1823
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-168],0
	mov	dword [ebp-168],0
	jmp	_1825
_230:
	mov	eax,ebp
	push	eax
	push	_1878
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1826
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-168]
	mov	eax,dword [ebp-92]
	cmp	ebx,dword [eax+20]
	jb	_1828
	call	_brl_blitz_ArrayBoundsError
_1828:
	mov	eax,dword [ebp-92]
	cmp	dword [eax+ebx*4+24],0
	jne	_1829
	mov	eax,ebp
	push	eax
	push	_1838
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1830
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-168]
	mov	eax,dword [_bb_testtileO]
	cmp	ebx,dword [eax+20]
	jb	_1832
	call	_brl_blitz_ArrayBoundsError
_1832:
	mov	esi,dword [_bb_testtileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-40]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1837
	push	eax
	call	_bbGCFree
	add	esp,4
_1837:
	mov	dword [esi+24],ebx
	call	dword [_bbOnDebugLeaveScope]
_1829:
	push	_1839
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-168]
	mov	eax,dword [ebp-92]
	cmp	ebx,dword [eax+20]
	jb	_1841
	call	_brl_blitz_ArrayBoundsError
_1841:
	mov	eax,dword [ebp-92]
	cmp	dword [eax+ebx*4+24],1
	jne	_1842
	mov	eax,ebp
	push	eax
	push	_1851
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1843
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-168]
	mov	eax,dword [_bb_testtileO]
	cmp	ebx,dword [eax+20]
	jb	_1845
	call	_brl_blitz_ArrayBoundsError
_1845:
	mov	esi,dword [_bb_testtileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-52]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1850
	push	eax
	call	_bbGCFree
	add	esp,4
_1850:
	mov	dword [esi+24],ebx
	call	dword [_bbOnDebugLeaveScope]
_1842:
	push	_1852
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-168]
	mov	eax,dword [ebp-92]
	cmp	ebx,dword [eax+20]
	jb	_1854
	call	_brl_blitz_ArrayBoundsError
_1854:
	mov	eax,dword [ebp-92]
	cmp	dword [eax+ebx*4+24],2
	jne	_1855
	mov	eax,ebp
	push	eax
	push	_1864
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1856
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-168]
	mov	eax,dword [_bb_testtileO]
	cmp	ebx,dword [eax+20]
	jb	_1858
	call	_brl_blitz_ArrayBoundsError
_1858:
	mov	esi,dword [_bb_testtileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-64]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1863
	push	eax
	call	_bbGCFree
	add	esp,4
_1863:
	mov	dword [esi+24],ebx
	call	dword [_bbOnDebugLeaveScope]
_1855:
	push	_1865
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-168]
	mov	eax,dword [ebp-92]
	cmp	ebx,dword [eax+20]
	jb	_1867
	call	_brl_blitz_ArrayBoundsError
_1867:
	mov	eax,dword [ebp-92]
	cmp	dword [eax+ebx*4+24],3
	jne	_1868
	mov	eax,ebp
	push	eax
	push	_1877
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1869
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-168]
	mov	eax,dword [_bb_testtileO]
	cmp	ebx,dword [eax+20]
	jb	_1871
	call	_brl_blitz_ArrayBoundsError
_1871:
	mov	esi,dword [_bb_testtileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-76]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1876
	push	eax
	call	_bbGCFree
	add	esp,4
_1876:
	mov	dword [esi+24],ebx
	call	dword [_bbOnDebugLeaveScope]
_1868:
	call	dword [_bbOnDebugLeaveScope]
_228:
	add	dword [ebp-168],1
_1825:
	cmp	dword [ebp-168],3
	jle	_230
_229:
	push	_1879
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-172],0
	mov	dword [ebp-172],0
	jmp	_1881
_233:
	mov	eax,ebp
	push	eax
	push	_1934
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1882
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-172]
	mov	eax,dword [ebp-92]
	cmp	ebx,dword [eax+20]
	jb	_1884
	call	_brl_blitz_ArrayBoundsError
_1884:
	mov	eax,dword [ebp-92]
	cmp	dword [eax+ebx*4+24],0
	jne	_1885
	mov	eax,ebp
	push	eax
	push	_1894
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1886
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-172]
	mov	eax,dword [_bb_lutesttileO]
	cmp	ebx,dword [eax+20]
	jb	_1888
	call	_brl_blitz_ArrayBoundsError
_1888:
	mov	esi,dword [_bb_lutesttileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-40]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1893
	push	eax
	call	_bbGCFree
	add	esp,4
_1893:
	mov	dword [esi+24],ebx
	call	dword [_bbOnDebugLeaveScope]
_1885:
	push	_1895
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-172]
	mov	eax,dword [ebp-92]
	cmp	ebx,dword [eax+20]
	jb	_1897
	call	_brl_blitz_ArrayBoundsError
_1897:
	mov	eax,dword [ebp-92]
	cmp	dword [eax+ebx*4+24],1
	jne	_1898
	mov	eax,ebp
	push	eax
	push	_1907
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1899
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-172]
	mov	eax,dword [_bb_lutesttileO]
	cmp	ebx,dword [eax+20]
	jb	_1901
	call	_brl_blitz_ArrayBoundsError
_1901:
	mov	esi,dword [_bb_lutesttileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-52]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1906
	push	eax
	call	_bbGCFree
	add	esp,4
_1906:
	mov	dword [esi+24],ebx
	call	dword [_bbOnDebugLeaveScope]
_1898:
	push	_1908
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-172]
	mov	eax,dword [ebp-92]
	cmp	ebx,dword [eax+20]
	jb	_1910
	call	_brl_blitz_ArrayBoundsError
_1910:
	mov	eax,dword [ebp-92]
	cmp	dword [eax+ebx*4+24],2
	jne	_1911
	mov	eax,ebp
	push	eax
	push	_1920
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1912
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-172]
	mov	eax,dword [_bb_lutesttileO]
	cmp	ebx,dword [eax+20]
	jb	_1914
	call	_brl_blitz_ArrayBoundsError
_1914:
	mov	esi,dword [_bb_lutesttileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-64]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1919
	push	eax
	call	_bbGCFree
	add	esp,4
_1919:
	mov	dword [esi+24],ebx
	call	dword [_bbOnDebugLeaveScope]
_1911:
	push	_1921
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-172]
	mov	eax,dword [ebp-92]
	cmp	ebx,dword [eax+20]
	jb	_1923
	call	_brl_blitz_ArrayBoundsError
_1923:
	mov	eax,dword [ebp-92]
	cmp	dword [eax+ebx*4+24],3
	jne	_1924
	mov	eax,ebp
	push	eax
	push	_1933
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1925
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-172]
	mov	eax,dword [_bb_lutesttileO]
	cmp	ebx,dword [eax+20]
	jb	_1927
	call	_brl_blitz_ArrayBoundsError
_1927:
	mov	esi,dword [_bb_lutesttileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-76]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1932
	push	eax
	call	_bbGCFree
	add	esp,4
_1932:
	mov	dword [esi+24],ebx
	call	dword [_bbOnDebugLeaveScope]
_1924:
	call	dword [_bbOnDebugLeaveScope]
_231:
	add	dword [ebp-172],1
_1881:
	cmp	dword [ebp-172],3
	jle	_233
_232:
	push	_1935
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-176],0
	mov	dword [ebp-176],0
	jmp	_1937
_236:
	mov	eax,ebp
	push	eax
	push	_1990
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1938
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-176]
	mov	eax,dword [ebp-92]
	cmp	ebx,dword [eax+20]
	jb	_1940
	call	_brl_blitz_ArrayBoundsError
_1940:
	mov	eax,dword [ebp-92]
	cmp	dword [eax+ebx*4+24],0
	jne	_1941
	mov	eax,ebp
	push	eax
	push	_1950
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1942
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-176]
	mov	eax,dword [_bb_rotesttileO]
	cmp	ebx,dword [eax+20]
	jb	_1944
	call	_brl_blitz_ArrayBoundsError
_1944:
	mov	esi,dword [_bb_rotesttileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-40]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1949
	push	eax
	call	_bbGCFree
	add	esp,4
_1949:
	mov	dword [esi+24],ebx
	call	dword [_bbOnDebugLeaveScope]
_1941:
	push	_1951
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-176]
	mov	eax,dword [ebp-92]
	cmp	ebx,dword [eax+20]
	jb	_1953
	call	_brl_blitz_ArrayBoundsError
_1953:
	mov	eax,dword [ebp-92]
	cmp	dword [eax+ebx*4+24],1
	jne	_1954
	mov	eax,ebp
	push	eax
	push	_1963
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1955
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-176]
	mov	eax,dword [_bb_rotesttileO]
	cmp	ebx,dword [eax+20]
	jb	_1957
	call	_brl_blitz_ArrayBoundsError
_1957:
	mov	esi,dword [_bb_rotesttileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-52]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1962
	push	eax
	call	_bbGCFree
	add	esp,4
_1962:
	mov	dword [esi+24],ebx
	call	dword [_bbOnDebugLeaveScope]
_1954:
	push	_1964
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-176]
	mov	eax,dword [ebp-92]
	cmp	ebx,dword [eax+20]
	jb	_1966
	call	_brl_blitz_ArrayBoundsError
_1966:
	mov	eax,dword [ebp-92]
	cmp	dword [eax+ebx*4+24],2
	jne	_1967
	mov	eax,ebp
	push	eax
	push	_1976
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1968
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-176]
	mov	eax,dword [_bb_rotesttileO]
	cmp	ebx,dword [eax+20]
	jb	_1970
	call	_brl_blitz_ArrayBoundsError
_1970:
	mov	esi,dword [_bb_rotesttileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-64]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1975
	push	eax
	call	_bbGCFree
	add	esp,4
_1975:
	mov	dword [esi+24],ebx
	call	dword [_bbOnDebugLeaveScope]
_1967:
	push	_1977
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-176]
	mov	eax,dword [ebp-92]
	cmp	ebx,dword [eax+20]
	jb	_1979
	call	_brl_blitz_ArrayBoundsError
_1979:
	mov	eax,dword [ebp-92]
	cmp	dword [eax+ebx*4+24],3
	jne	_1980
	mov	eax,ebp
	push	eax
	push	_1989
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1981
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-176]
	mov	eax,dword [_bb_rotesttileO]
	cmp	ebx,dword [eax+20]
	jb	_1983
	call	_brl_blitz_ArrayBoundsError
_1983:
	mov	esi,dword [_bb_rotesttileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-76]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1988
	push	eax
	call	_bbGCFree
	add	esp,4
_1988:
	mov	dword [esi+24],ebx
	call	dword [_bbOnDebugLeaveScope]
_1980:
	call	dword [_bbOnDebugLeaveScope]
_234:
	add	dword [ebp-176],1
_1937:
	cmp	dword [ebp-176],3
	jle	_236
_235:
	push	_1991
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-180],0
	mov	dword [ebp-180],0
	jmp	_1993
_239:
	mov	eax,ebp
	push	eax
	push	_2046
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1994
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-180]
	mov	eax,dword [ebp-92]
	cmp	ebx,dword [eax+20]
	jb	_1996
	call	_brl_blitz_ArrayBoundsError
_1996:
	mov	eax,dword [ebp-92]
	cmp	dword [eax+ebx*4+24],0
	jne	_1997
	mov	eax,ebp
	push	eax
	push	_2006
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1998
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-180]
	mov	eax,dword [_bb_lotesttileO]
	cmp	ebx,dword [eax+20]
	jb	_2000
	call	_brl_blitz_ArrayBoundsError
_2000:
	mov	esi,dword [_bb_lotesttileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-40]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2005
	push	eax
	call	_bbGCFree
	add	esp,4
_2005:
	mov	dword [esi+24],ebx
	call	dword [_bbOnDebugLeaveScope]
_1997:
	push	_2007
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-180]
	mov	eax,dword [ebp-92]
	cmp	ebx,dword [eax+20]
	jb	_2009
	call	_brl_blitz_ArrayBoundsError
_2009:
	mov	eax,dword [ebp-92]
	cmp	dword [eax+ebx*4+24],1
	jne	_2010
	mov	eax,ebp
	push	eax
	push	_2019
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2011
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-180]
	mov	eax,dword [_bb_lotesttileO]
	cmp	ebx,dword [eax+20]
	jb	_2013
	call	_brl_blitz_ArrayBoundsError
_2013:
	mov	esi,dword [_bb_lotesttileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-52]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2018
	push	eax
	call	_bbGCFree
	add	esp,4
_2018:
	mov	dword [esi+24],ebx
	call	dword [_bbOnDebugLeaveScope]
_2010:
	push	_2020
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-180]
	mov	eax,dword [ebp-92]
	cmp	ebx,dword [eax+20]
	jb	_2022
	call	_brl_blitz_ArrayBoundsError
_2022:
	mov	eax,dword [ebp-92]
	cmp	dword [eax+ebx*4+24],2
	jne	_2023
	mov	eax,ebp
	push	eax
	push	_2032
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2024
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-180]
	mov	eax,dword [_bb_lotesttileO]
	cmp	ebx,dword [eax+20]
	jb	_2026
	call	_brl_blitz_ArrayBoundsError
_2026:
	mov	esi,dword [_bb_lotesttileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-64]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2031
	push	eax
	call	_bbGCFree
	add	esp,4
_2031:
	mov	dword [esi+24],ebx
	call	dword [_bbOnDebugLeaveScope]
_2023:
	push	_2033
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-180]
	mov	eax,dword [ebp-92]
	cmp	ebx,dword [eax+20]
	jb	_2035
	call	_brl_blitz_ArrayBoundsError
_2035:
	mov	eax,dword [ebp-92]
	cmp	dword [eax+ebx*4+24],3
	jne	_2036
	mov	eax,ebp
	push	eax
	push	_2045
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2037
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-180]
	mov	eax,dword [_bb_lotesttileO]
	cmp	ebx,dword [eax+20]
	jb	_2039
	call	_brl_blitz_ArrayBoundsError
_2039:
	mov	esi,dword [_bb_lotesttileO]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-76]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2044
	push	eax
	call	_bbGCFree
	add	esp,4
_2044:
	mov	dword [esi+24],ebx
	call	dword [_bbOnDebugLeaveScope]
_2036:
	call	dword [_bbOnDebugLeaveScope]
_237:
	add	dword [ebp-180],1
_1993:
	cmp	dword [ebp-180],3
	jle	_239
_238:
	push	_2047
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-164],0
	push	_2049
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-184],0
	mov	dword [ebp-184],0
	jmp	_2051
_242:
	mov	eax,ebp
	push	eax
	push	_2068
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2052
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-476],0
	mov	eax,dword [_bb_testtileO]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-476],eax
	jb	_2054
	call	_brl_blitz_ArrayBoundsError
_2054:
	mov	dword [ebp-448],3
	mov	eax,dword [_bb_testtileO]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-448],eax
	jb	_2056
	call	_brl_blitz_ArrayBoundsError
_2056:
	mov	dword [ebp-420],2
	mov	eax,dword [_bb_testtileO]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-420],eax
	jb	_2058
	call	_brl_blitz_ArrayBoundsError
_2058:
	mov	edi,1
	mov	eax,dword [_bb_testtileO]
	cmp	edi,dword [eax+20]
	jb	_2060
	call	_brl_blitz_ArrayBoundsError
_2060:
	mov	eax,dword [ebp-184]
	mov	edx,dword [_bb_combospeicher]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+20]
	jb	_2062
	call	_brl_blitz_ArrayBoundsError
_2062:
	mov	ebx,8
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+24]
	jb	_2064
	call	_brl_blitz_ArrayBoundsError
_2064:
	mov	eax,dword [_bb_testtileO]
	push	dword [eax+edi*4+24]
	mov	edx,dword [_bb_testtileO]
	mov	eax,dword [ebp-420]
	push	dword [edx+eax*4+24]
	mov	edx,dword [_bb_testtileO]
	mov	eax,dword [ebp-448]
	push	dword [edx+eax*4+24]
	mov	edx,dword [_bb_testtileO]
	mov	eax,dword [ebp-476]
	push	dword [edx+eax*4+24]
	call	_bb_getdiff
	add	esp,16
	mov	ecx,dword [_bb_combospeicher]
	mov	edx,esi
	add	edx,ebx
	cmp	eax,dword [ecx+edx*4+28]
	jne	_2065
	mov	eax,ebp
	push	eax
	push	_2067
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2066
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-164],1
	call	dword [_bbOnDebugLeaveScope]
_2065:
	call	dword [_bbOnDebugLeaveScope]
_240:
	add	dword [ebp-184],1
_2051:
	cmp	dword [ebp-184],15
	jle	_242
_241:
	push	_2069
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-164],0
	jne	_2070
	mov	eax,ebp
	push	eax
	push	_2086
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2071
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_2073
	call	_brl_blitz_ArrayBoundsError
_2073:
	mov	esi,8
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_2075
	call	_brl_blitz_ArrayBoundsError
_2075:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	shl	ebx,2
	add	eax,ebx
	mov	dword [ebp-472],eax
	mov	dword [ebp-424],0
	mov	eax,dword [_bb_testtileO]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-424],eax
	jb	_2078
	call	_brl_blitz_ArrayBoundsError
_2078:
	mov	edi,3
	mov	eax,dword [_bb_testtileO]
	cmp	edi,dword [eax+20]
	jb	_2080
	call	_brl_blitz_ArrayBoundsError
_2080:
	mov	esi,2
	mov	eax,dword [_bb_testtileO]
	cmp	esi,dword [eax+20]
	jb	_2082
	call	_brl_blitz_ArrayBoundsError
_2082:
	mov	ebx,1
	mov	eax,dword [_bb_testtileO]
	cmp	ebx,dword [eax+20]
	jb	_2084
	call	_brl_blitz_ArrayBoundsError
_2084:
	mov	eax,dword [_bb_testtileO]
	push	dword [eax+ebx*4+24]
	mov	eax,dword [_bb_testtileO]
	push	dword [eax+esi*4+24]
	mov	eax,dword [_bb_testtileO]
	push	dword [eax+edi*4+24]
	mov	edx,dword [_bb_testtileO]
	mov	eax,dword [ebp-424]
	push	dword [edx+eax*4+24]
	call	_bb_getdiff
	add	esp,16
	mov	edx,dword [ebp-472]
	mov	dword [edx+28],eax
	push	_2085
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-160],1
	call	dword [_bbOnDebugLeaveScope]
_2070:
	call	dword [_bbOnDebugLeaveScope]
_224:
	cmp	dword [ebp-160],1
	jne	_226
_225:
	push	_2089
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],1
	call	dword [_bbOnDebugLeaveScope]
_1759:
	push	_2092
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_2093
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1120403456
	push	1144750080
	push	dword [ebp-88]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_2094
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_2096
	call	_brl_blitz_ArrayBoundsError
_2096:
	mov	esi,0
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_2098
	call	_brl_blitz_ArrayBoundsError
_2098:
	push	_1
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	push	dword [eax+ebx*4+28]
	push	30
	push	75
	push	100
	push	800
	push	_243
	call	_bb_button
	add	esp,28
	cmp	eax,1
	jne	_2099
	mov	eax,ebp
	push	eax
	push	_2111
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2100
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+20]
	jb	_2102
	call	_brl_blitz_ArrayBoundsError
_2102:
	mov	ebx,0
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+24]
	jb	_2104
	call	_brl_blitz_ArrayBoundsError
_2104:
	mov	eax,dword [_bb_combospeicher]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	edi,eax
	mov	eax,dword [ebp-88]
	mov	edx,dword [_bb_combospeicher]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+20]
	jb	_2107
	call	_brl_blitz_ArrayBoundsError
_2107:
	mov	ebx,0
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+24]
	jb	_2109
	call	_brl_blitz_ArrayBoundsError
_2109:
	mov	edx,1
	mov	eax,dword [_bb_combospeicher]
	mov	ecx,esi
	add	ecx,ebx
	sub	edx,dword [eax+ecx*4+28]
	mov	dword [edi+28],edx
	push	_2110
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],1
	call	dword [_bbOnDebugLeaveScope]
_2099:
	push	_2112
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_2114
	call	_brl_blitz_ArrayBoundsError
_2114:
	mov	esi,1
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_2116
	call	_brl_blitz_ArrayBoundsError
_2116:
	push	_1
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	push	dword [eax+ebx*4+28]
	push	30
	push	75
	push	150
	push	800
	push	_244
	call	_bb_button
	add	esp,28
	cmp	eax,1
	jne	_2117
	mov	eax,ebp
	push	eax
	push	_2129
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2118
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+20]
	jb	_2120
	call	_brl_blitz_ArrayBoundsError
_2120:
	mov	ebx,1
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+24]
	jb	_2122
	call	_brl_blitz_ArrayBoundsError
_2122:
	mov	eax,dword [_bb_combospeicher]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	edi,eax
	mov	eax,dword [ebp-88]
	mov	edx,dword [_bb_combospeicher]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+20]
	jb	_2125
	call	_brl_blitz_ArrayBoundsError
_2125:
	mov	ebx,1
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+24]
	jb	_2127
	call	_brl_blitz_ArrayBoundsError
_2127:
	mov	edx,1
	mov	eax,dword [_bb_combospeicher]
	mov	ecx,esi
	add	ecx,ebx
	sub	edx,dword [eax+ecx*4+28]
	mov	dword [edi+28],edx
	push	_2128
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],1
	call	dword [_bbOnDebugLeaveScope]
_2117:
	push	_2130
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_2132
	call	_brl_blitz_ArrayBoundsError
_2132:
	mov	esi,2
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_2134
	call	_brl_blitz_ArrayBoundsError
_2134:
	push	_1
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	push	dword [eax+ebx*4+28]
	push	30
	push	75
	push	200
	push	800
	push	_245
	call	_bb_button
	add	esp,28
	cmp	eax,1
	jne	_2135
	mov	eax,ebp
	push	eax
	push	_2147
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2136
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+20]
	jb	_2138
	call	_brl_blitz_ArrayBoundsError
_2138:
	mov	ebx,2
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+24]
	jb	_2140
	call	_brl_blitz_ArrayBoundsError
_2140:
	mov	eax,dword [_bb_combospeicher]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	edi,eax
	mov	eax,dword [ebp-88]
	mov	edx,dword [_bb_combospeicher]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+20]
	jb	_2143
	call	_brl_blitz_ArrayBoundsError
_2143:
	mov	ebx,2
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+24]
	jb	_2145
	call	_brl_blitz_ArrayBoundsError
_2145:
	mov	edx,1
	mov	eax,dword [_bb_combospeicher]
	mov	ecx,esi
	add	ecx,ebx
	sub	edx,dword [eax+ecx*4+28]
	mov	dword [edi+28],edx
	push	_2146
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],1
	call	dword [_bbOnDebugLeaveScope]
_2135:
	push	_2148
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_2150
	call	_brl_blitz_ArrayBoundsError
_2150:
	mov	esi,3
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_2152
	call	_brl_blitz_ArrayBoundsError
_2152:
	push	_1
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	push	dword [eax+ebx*4+28]
	push	30
	push	75
	push	250
	push	800
	push	_246
	call	_bb_button
	add	esp,28
	cmp	eax,1
	jne	_2153
	mov	eax,ebp
	push	eax
	push	_2165
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2154
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+20]
	jb	_2156
	call	_brl_blitz_ArrayBoundsError
_2156:
	mov	ebx,3
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+24]
	jb	_2158
	call	_brl_blitz_ArrayBoundsError
_2158:
	mov	eax,dword [_bb_combospeicher]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	edi,eax
	mov	eax,dword [ebp-88]
	mov	edx,dword [_bb_combospeicher]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+20]
	jb	_2161
	call	_brl_blitz_ArrayBoundsError
_2161:
	mov	ebx,3
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+24]
	jb	_2163
	call	_brl_blitz_ArrayBoundsError
_2163:
	mov	edx,1
	mov	eax,dword [_bb_combospeicher]
	mov	ecx,esi
	add	ecx,ebx
	sub	edx,dword [eax+ecx*4+28]
	mov	dword [edi+28],edx
	push	_2164
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],1
	call	dword [_bbOnDebugLeaveScope]
_2153:
	push	_2166
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_2168
	call	_brl_blitz_ArrayBoundsError
_2168:
	mov	esi,4
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_2170
	call	_brl_blitz_ArrayBoundsError
_2170:
	push	_1
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	push	dword [eax+ebx*4+28]
	push	30
	push	75
	push	300
	push	800
	push	_247
	call	_bb_button
	add	esp,28
	cmp	eax,1
	jne	_2171
	mov	eax,ebp
	push	eax
	push	_2183
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2172
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+20]
	jb	_2174
	call	_brl_blitz_ArrayBoundsError
_2174:
	mov	ebx,4
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+24]
	jb	_2176
	call	_brl_blitz_ArrayBoundsError
_2176:
	mov	eax,dword [_bb_combospeicher]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	edi,eax
	mov	eax,dword [ebp-88]
	mov	edx,dword [_bb_combospeicher]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+20]
	jb	_2179
	call	_brl_blitz_ArrayBoundsError
_2179:
	mov	ebx,4
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+24]
	jb	_2181
	call	_brl_blitz_ArrayBoundsError
_2181:
	mov	edx,1
	mov	eax,dword [_bb_combospeicher]
	mov	ecx,esi
	add	ecx,ebx
	sub	edx,dword [eax+ecx*4+28]
	mov	dword [edi+28],edx
	push	_2182
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],1
	call	dword [_bbOnDebugLeaveScope]
_2171:
	push	_2184
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	0
	push	30
	push	75
	push	350
	push	800
	push	_248
	call	_bb_button
	add	esp,28
	cmp	eax,1
	jne	_2185
	mov	eax,ebp
	push	eax
	push	_2210
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2186
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+20]
	jb	_2188
	call	_brl_blitz_ArrayBoundsError
_2188:
	mov	ebx,5
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+24]
	jb	_2190
	call	_brl_blitz_ArrayBoundsError
_2190:
	mov	eax,dword [_bb_combospeicher]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	edi,eax
	mov	eax,dword [ebp-88]
	mov	edx,dword [_bb_combospeicher]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+20]
	jb	_2193
	call	_brl_blitz_ArrayBoundsError
_2193:
	mov	ebx,5
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+24]
	jb	_2195
	call	_brl_blitz_ArrayBoundsError
_2195:
	mov	edx,dword [_bb_combospeicher]
	mov	eax,esi
	add	eax,ebx
	mov	eax,dword [edx+eax*4+28]
	add	eax,1
	mov	dword [edi+28],eax
	push	_2196
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_2198
	call	_brl_blitz_ArrayBoundsError
_2198:
	mov	esi,5
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_2200
	call	_brl_blitz_ArrayBoundsError
_2200:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	cmp	dword [eax+ebx*4+28],3
	jle	_2201
	mov	eax,ebp
	push	eax
	push	_2208
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2202
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+20]
	jb	_2204
	call	_brl_blitz_ArrayBoundsError
_2204:
	mov	ebx,5
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+24]
	jb	_2206
	call	_brl_blitz_ArrayBoundsError
_2206:
	mov	eax,dword [_bb_combospeicher]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	dword [eax+28],0
	call	dword [_bbOnDebugLeaveScope]
_2201:
	push	_2209
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],1
	call	dword [_bbOnDebugLeaveScope]
_2185:
	push	_2211
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_2212
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_2214
	call	_brl_blitz_ArrayBoundsError
_2214:
	mov	esi,5
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_2216
	call	_brl_blitz_ArrayBoundsError
_2216:
	push	1135542272
	push	1144750080
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	push	dword [eax+ebx*4+28]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_2217
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_2219
	call	_brl_blitz_ArrayBoundsError
_2219:
	mov	esi,6
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_2221
	call	_brl_blitz_ArrayBoundsError
_2221:
	push	_1
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	push	dword [eax+ebx*4+28]
	push	30
	push	75
	push	400
	push	800
	push	_249
	call	_bb_button
	add	esp,28
	cmp	eax,1
	jne	_2222
	mov	eax,ebp
	push	eax
	push	_2234
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2223
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+20]
	jb	_2225
	call	_brl_blitz_ArrayBoundsError
_2225:
	mov	ebx,6
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+24]
	jb	_2227
	call	_brl_blitz_ArrayBoundsError
_2227:
	mov	eax,dword [_bb_combospeicher]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	edi,eax
	mov	eax,dword [ebp-88]
	mov	edx,dword [_bb_combospeicher]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+20]
	jb	_2230
	call	_brl_blitz_ArrayBoundsError
_2230:
	mov	ebx,6
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+24]
	jb	_2232
	call	_brl_blitz_ArrayBoundsError
_2232:
	mov	edx,1
	mov	eax,dword [_bb_combospeicher]
	mov	ecx,esi
	add	ecx,ebx
	sub	edx,dword [eax+ecx*4+28]
	mov	dword [edi+28],edx
	push	_2233
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],1
	call	dword [_bbOnDebugLeaveScope]
_2222:
	push	_2235
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_2237
	call	_brl_blitz_ArrayBoundsError
_2237:
	mov	esi,7
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_2239
	call	_brl_blitz_ArrayBoundsError
_2239:
	push	_1
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	push	dword [eax+ebx*4+28]
	push	30
	push	75
	push	450
	push	800
	push	_250
	call	_bb_button
	add	esp,28
	cmp	eax,1
	jne	_2240
	mov	eax,ebp
	push	eax
	push	_2252
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2241
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+20]
	jb	_2243
	call	_brl_blitz_ArrayBoundsError
_2243:
	mov	ebx,7
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+24]
	jb	_2245
	call	_brl_blitz_ArrayBoundsError
_2245:
	mov	eax,dword [_bb_combospeicher]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	edi,eax
	mov	eax,dword [ebp-88]
	mov	edx,dword [_bb_combospeicher]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+20]
	jb	_2248
	call	_brl_blitz_ArrayBoundsError
_2248:
	mov	ebx,7
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+24]
	jb	_2250
	call	_brl_blitz_ArrayBoundsError
_2250:
	mov	edx,1
	mov	eax,dword [_bb_combospeicher]
	mov	ecx,esi
	add	ecx,ebx
	sub	edx,dword [eax+ecx*4+28]
	mov	dword [edi+28],edx
	push	_2251
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],1
	call	dword [_bbOnDebugLeaveScope]
_2240:
	push	_2253
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	0
	push	30
	push	75
	push	500
	push	800
	push	_251
	call	_bb_button
	add	esp,28
	cmp	eax,1
	jne	_2254
	mov	eax,ebp
	push	eax
	push	_2264
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2255
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-428],0
	mov	eax,dword [_bb_testtileO]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-428],eax
	jb	_2257
	call	_brl_blitz_ArrayBoundsError
_2257:
	mov	edi,3
	mov	eax,dword [_bb_testtileO]
	cmp	edi,dword [eax+20]
	jb	_2259
	call	_brl_blitz_ArrayBoundsError
_2259:
	mov	esi,2
	mov	eax,dword [_bb_testtileO]
	cmp	esi,dword [eax+20]
	jb	_2261
	call	_brl_blitz_ArrayBoundsError
_2261:
	mov	ebx,1
	mov	eax,dword [_bb_testtileO]
	cmp	ebx,dword [eax+20]
	jb	_2263
	call	_brl_blitz_ArrayBoundsError
_2263:
	push	0
	mov	eax,dword [_bb_testtileO]
	push	dword [eax+ebx*4+24]
	mov	eax,dword [_bb_testtileO]
	push	dword [eax+esi*4+24]
	mov	eax,dword [_bb_testtileO]
	push	dword [eax+edi*4+24]
	mov	edx,dword [_bb_testtileO]
	mov	eax,dword [ebp-428]
	push	dword [edx+eax*4+24]
	call	_bb_getdiff
	add	esp,16
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	call	_brl_system_Notify
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_2254:
	push	_2265
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-96],1
	jne	_2266
	mov	eax,ebp
	push	eax
	push	_2889
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2267
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [_bb_testtile]
	cmp	ebx,dword [eax+20]
	jb	_2269
	call	_brl_blitz_ArrayBoundsError
_2269:
	mov	esi,dword [_bb_testtile]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,0
	mov	eax,dword [_bb_testtileO]
	cmp	ebx,dword [eax+20]
	jb	_2272
	call	_brl_blitz_ArrayBoundsError
_2272:
	mov	eax,dword [_bb_testtileO]
	push	dword [eax+ebx*4+24]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2276
	push	eax
	call	_bbGCFree
	add	esp,4
_2276:
	mov	dword [esi+24],ebx
	push	_2277
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [_bb_testtile]
	cmp	ebx,dword [eax+20]
	jb	_2279
	call	_brl_blitz_ArrayBoundsError
_2279:
	mov	esi,dword [_bb_testtile]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,1
	mov	eax,dword [_bb_testtileO]
	cmp	ebx,dword [eax+20]
	jb	_2282
	call	_brl_blitz_ArrayBoundsError
_2282:
	mov	eax,dword [_bb_testtileO]
	push	dword [eax+ebx*4+24]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2286
	push	eax
	call	_bbGCFree
	add	esp,4
_2286:
	mov	dword [esi+24],ebx
	push	_2287
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [_bb_testtile]
	cmp	ebx,dword [eax+20]
	jb	_2289
	call	_brl_blitz_ArrayBoundsError
_2289:
	mov	esi,dword [_bb_testtile]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,2
	mov	eax,dword [_bb_testtileO]
	cmp	ebx,dword [eax+20]
	jb	_2292
	call	_brl_blitz_ArrayBoundsError
_2292:
	mov	eax,dword [_bb_testtileO]
	push	dword [eax+ebx*4+24]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2296
	push	eax
	call	_bbGCFree
	add	esp,4
_2296:
	mov	dword [esi+24],ebx
	push	_2297
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [_bb_testtile]
	cmp	ebx,dword [eax+20]
	jb	_2299
	call	_brl_blitz_ArrayBoundsError
_2299:
	mov	esi,dword [_bb_testtile]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,3
	mov	eax,dword [_bb_testtileO]
	cmp	ebx,dword [eax+20]
	jb	_2302
	call	_brl_blitz_ArrayBoundsError
_2302:
	mov	eax,dword [_bb_testtileO]
	push	dword [eax+ebx*4+24]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2306
	push	eax
	call	_bbGCFree
	add	esp,4
_2306:
	mov	dword [esi+24],ebx
	push	_2307
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [_bb_lutesttile]
	cmp	ebx,dword [eax+20]
	jb	_2309
	call	_brl_blitz_ArrayBoundsError
_2309:
	mov	esi,dword [_bb_lutesttile]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,0
	mov	eax,dword [_bb_lutesttileO]
	cmp	ebx,dword [eax+20]
	jb	_2312
	call	_brl_blitz_ArrayBoundsError
_2312:
	mov	eax,dword [_bb_lutesttileO]
	push	dword [eax+ebx*4+24]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2316
	push	eax
	call	_bbGCFree
	add	esp,4
_2316:
	mov	dword [esi+24],ebx
	push	_2317
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [_bb_lutesttile]
	cmp	ebx,dword [eax+20]
	jb	_2319
	call	_brl_blitz_ArrayBoundsError
_2319:
	mov	esi,dword [_bb_lutesttile]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,1
	mov	eax,dword [_bb_lutesttileO]
	cmp	ebx,dword [eax+20]
	jb	_2322
	call	_brl_blitz_ArrayBoundsError
_2322:
	mov	eax,dword [_bb_lutesttileO]
	push	dword [eax+ebx*4+24]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2326
	push	eax
	call	_bbGCFree
	add	esp,4
_2326:
	mov	dword [esi+24],ebx
	push	_2327
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [_bb_lutesttile]
	cmp	ebx,dword [eax+20]
	jb	_2329
	call	_brl_blitz_ArrayBoundsError
_2329:
	mov	esi,dword [_bb_lutesttile]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,2
	mov	eax,dword [_bb_lutesttileO]
	cmp	ebx,dword [eax+20]
	jb	_2332
	call	_brl_blitz_ArrayBoundsError
_2332:
	mov	eax,dword [_bb_lutesttileO]
	push	dword [eax+ebx*4+24]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2336
	push	eax
	call	_bbGCFree
	add	esp,4
_2336:
	mov	dword [esi+24],ebx
	push	_2337
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [_bb_lutesttile]
	cmp	ebx,dword [eax+20]
	jb	_2339
	call	_brl_blitz_ArrayBoundsError
_2339:
	mov	esi,dword [_bb_lutesttile]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,3
	mov	eax,dword [_bb_lutesttileO]
	cmp	ebx,dword [eax+20]
	jb	_2342
	call	_brl_blitz_ArrayBoundsError
_2342:
	mov	eax,dword [_bb_lutesttileO]
	push	dword [eax+ebx*4+24]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2346
	push	eax
	call	_bbGCFree
	add	esp,4
_2346:
	mov	dword [esi+24],ebx
	push	_2347
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [_bb_rotesttile]
	cmp	ebx,dword [eax+20]
	jb	_2349
	call	_brl_blitz_ArrayBoundsError
_2349:
	mov	esi,dword [_bb_rotesttile]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,0
	mov	eax,dword [_bb_rotesttileO]
	cmp	ebx,dword [eax+20]
	jb	_2352
	call	_brl_blitz_ArrayBoundsError
_2352:
	mov	eax,dword [_bb_rotesttileO]
	push	dword [eax+ebx*4+24]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2356
	push	eax
	call	_bbGCFree
	add	esp,4
_2356:
	mov	dword [esi+24],ebx
	push	_2357
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [_bb_rotesttile]
	cmp	ebx,dword [eax+20]
	jb	_2359
	call	_brl_blitz_ArrayBoundsError
_2359:
	mov	esi,dword [_bb_rotesttile]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,1
	mov	eax,dword [_bb_rotesttileO]
	cmp	ebx,dword [eax+20]
	jb	_2362
	call	_brl_blitz_ArrayBoundsError
_2362:
	mov	eax,dword [_bb_rotesttileO]
	push	dword [eax+ebx*4+24]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2366
	push	eax
	call	_bbGCFree
	add	esp,4
_2366:
	mov	dword [esi+24],ebx
	push	_2367
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [_bb_rotesttile]
	cmp	ebx,dword [eax+20]
	jb	_2369
	call	_brl_blitz_ArrayBoundsError
_2369:
	mov	esi,dword [_bb_rotesttile]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,2
	mov	eax,dword [_bb_rotesttileO]
	cmp	ebx,dword [eax+20]
	jb	_2372
	call	_brl_blitz_ArrayBoundsError
_2372:
	mov	eax,dword [_bb_rotesttileO]
	push	dword [eax+ebx*4+24]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2376
	push	eax
	call	_bbGCFree
	add	esp,4
_2376:
	mov	dword [esi+24],ebx
	push	_2377
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [_bb_rotesttile]
	cmp	ebx,dword [eax+20]
	jb	_2379
	call	_brl_blitz_ArrayBoundsError
_2379:
	mov	esi,dword [_bb_rotesttile]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,3
	mov	eax,dword [_bb_rotesttileO]
	cmp	ebx,dword [eax+20]
	jb	_2382
	call	_brl_blitz_ArrayBoundsError
_2382:
	mov	eax,dword [_bb_rotesttileO]
	push	dword [eax+ebx*4+24]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2386
	push	eax
	call	_bbGCFree
	add	esp,4
_2386:
	mov	dword [esi+24],ebx
	push	_2387
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [_bb_lotesttile]
	cmp	ebx,dword [eax+20]
	jb	_2389
	call	_brl_blitz_ArrayBoundsError
_2389:
	mov	esi,dword [_bb_lotesttile]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,0
	mov	eax,dword [_bb_lotesttileO]
	cmp	ebx,dword [eax+20]
	jb	_2392
	call	_brl_blitz_ArrayBoundsError
_2392:
	mov	eax,dword [_bb_lotesttileO]
	push	dword [eax+ebx*4+24]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2396
	push	eax
	call	_bbGCFree
	add	esp,4
_2396:
	mov	dword [esi+24],ebx
	push	_2397
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [_bb_lotesttile]
	cmp	ebx,dword [eax+20]
	jb	_2399
	call	_brl_blitz_ArrayBoundsError
_2399:
	mov	esi,dword [_bb_lotesttile]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,1
	mov	eax,dword [_bb_lotesttileO]
	cmp	ebx,dword [eax+20]
	jb	_2402
	call	_brl_blitz_ArrayBoundsError
_2402:
	mov	eax,dword [_bb_lotesttileO]
	push	dword [eax+ebx*4+24]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2406
	push	eax
	call	_bbGCFree
	add	esp,4
_2406:
	mov	dword [esi+24],ebx
	push	_2407
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [_bb_lotesttile]
	cmp	ebx,dword [eax+20]
	jb	_2409
	call	_brl_blitz_ArrayBoundsError
_2409:
	mov	esi,dword [_bb_lotesttile]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,2
	mov	eax,dword [_bb_lotesttileO]
	cmp	ebx,dword [eax+20]
	jb	_2412
	call	_brl_blitz_ArrayBoundsError
_2412:
	mov	eax,dword [_bb_lotesttileO]
	push	dword [eax+ebx*4+24]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2416
	push	eax
	call	_bbGCFree
	add	esp,4
_2416:
	mov	dword [esi+24],ebx
	push	_2417
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [_bb_lotesttile]
	cmp	ebx,dword [eax+20]
	jb	_2419
	call	_brl_blitz_ArrayBoundsError
_2419:
	mov	esi,dword [_bb_lotesttile]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,3
	mov	eax,dword [_bb_lotesttileO]
	cmp	ebx,dword [eax+20]
	jb	_2422
	call	_brl_blitz_ArrayBoundsError
_2422:
	mov	eax,dword [_bb_lotesttileO]
	push	dword [eax+ebx*4+24]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2426
	push	eax
	call	_bbGCFree
	add	esp,4
_2426:
	mov	dword [esi+24],ebx
	push	_2427
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-192],0
	mov	dword [ebp-192],0
	jmp	_2429
_254:
	mov	eax,ebp
	push	eax
	push	_2506
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2430
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-196],0
	mov	dword [ebp-196],0
	jmp	_2432
_257:
	mov	eax,ebp
	push	eax
	push	_2493
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2433
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-200],0
	mov	dword [ebp-204],0
	mov	dword [ebp-208],0
	mov	dword [ebp-212],0
	mov	dword [ebp-216],0
	mov	dword [ebp-220],0
	mov	dword [ebp-224],0
	mov	dword [ebp-228],0
	mov	dword [ebp-232],0
	mov	dword [ebp-236],0
	mov	dword [ebp-240],0
	mov	dword [ebp-244],0
	push	_2446
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-200],3
	push	_2447
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-204],2
	push	_2448
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-208],1
	push	_2449
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-212],0
	push	_2450
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-216],31
	push	_2451
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-220],0
	push	_2452
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-224],31
	push	_2453
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_2455
	call	_brl_blitz_ArrayBoundsError
_2455:
	mov	esi,0
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_2457
	call	_brl_blitz_ArrayBoundsError
_2457:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	mov	dword [ebp-228],eax
	push	_2458
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_2460
	call	_brl_blitz_ArrayBoundsError
_2460:
	mov	esi,1
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_2462
	call	_brl_blitz_ArrayBoundsError
_2462:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	mov	dword [ebp-232],eax
	push	_2463
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_2465
	call	_brl_blitz_ArrayBoundsError
_2465:
	mov	esi,2
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_2467
	call	_brl_blitz_ArrayBoundsError
_2467:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	mov	dword [ebp-236],eax
	push	_2468
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_2470
	call	_brl_blitz_ArrayBoundsError
_2470:
	mov	esi,3
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_2472
	call	_brl_blitz_ArrayBoundsError
_2472:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	add	eax,1
	mov	dword [ebp-240],eax
	push	_2473
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_2475
	call	_brl_blitz_ArrayBoundsError
_2475:
	mov	esi,4
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_2477
	call	_brl_blitz_ArrayBoundsError
_2477:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	mov	dword [ebp-244],eax
	push	_2478
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-508],0
	mov	eax,dword [_bb_testtile]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-508],eax
	jb	_2480
	call	_brl_blitz_ArrayBoundsError
_2480:
	mov	edx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	edx,dword [eax+24]
	mov	dword [ebp-480],edx
	mov	eax,dword [_bb_combospeicher]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-480],eax
	jb	_2482
	call	_brl_blitz_ArrayBoundsError
_2482:
	mov	dword [ebp-452],5
	mov	eax,dword [_bb_combospeicher]
	mov	eax,dword [eax+24]
	cmp	dword [ebp-452],eax
	jb	_2484
	call	_brl_blitz_ArrayBoundsError
_2484:
	mov	edx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	edx,dword [eax+24]
	mov	dword [ebp-432],edx
	mov	eax,dword [_bb_combospeicher]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-432],eax
	jb	_2486
	call	_brl_blitz_ArrayBoundsError
_2486:
	mov	edi,6
	mov	eax,dword [_bb_combospeicher]
	cmp	edi,dword [eax+24]
	jb	_2488
	call	_brl_blitz_ArrayBoundsError
_2488:
	mov	eax,dword [ebp-88]
	mov	edx,dword [_bb_combospeicher]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+20]
	jb	_2490
	call	_brl_blitz_ArrayBoundsError
_2490:
	mov	ebx,7
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+24]
	jb	_2492
	call	_brl_blitz_ArrayBoundsError
_2492:
	mov	edx,1
	mov	eax,dword [_bb_combospeicher]
	mov	ecx,esi
	add	ecx,ebx
	sub	edx,dword [eax+ecx*4+28]
	push	edx
	mov	ecx,1
	mov	edx,dword [_bb_combospeicher]
	mov	eax,dword [ebp-432]
	add	eax,edi
	sub	ecx,dword [edx+eax*4+28]
	push	ecx
	mov	edx,dword [_bb_combospeicher]
	mov	eax,dword [ebp-480]
	add	eax,dword [ebp-452]
	push	dword [edx+eax*4+28]
	push	dword [ebp-244]
	push	dword [ebp-240]
	push	dword [ebp-236]
	push	dword [ebp-232]
	push	dword [ebp-228]
	push	31
	push	1106771968
	push	dword [ebp-224]
	push	dword [ebp-220]
	push	dword [ebp-216]
	push	dword [ebp-212]
	push	dword [ebp-192]
	push	dword [ebp-196]
	push	dword [ebp-208]
	push	dword [ebp-204]
	push	dword [ebp-200]
	lea	eax,dword [_bb_testtile]
	push	eax
	mov	edx,dword [_bb_testtile]
	mov	eax,dword [ebp-508]
	lea	eax,dword [edx+eax*4+24]
	push	eax
	call	_bb_drawPixel
	add	esp,84
	call	dword [_bbOnDebugLeaveScope]
_255:
	add	dword [ebp-196],1
_2432:
	cmp	dword [ebp-196],31
	jle	_257
_256:
	call	dword [_bbOnDebugLeaveScope]
_252:
	add	dword [ebp-192],1
_2429:
	cmp	dword [ebp-192],31
	jle	_254
_253:
	push	_2507
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-248],0
	mov	dword [ebp-248],0
	jmp	_2509
_260:
	mov	eax,ebp
	push	eax
	push	_2574
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2510
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-252],0
	mov	dword [ebp-252],0
	jmp	_2512
_263:
	mov	eax,ebp
	push	eax
	push	_2573
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2513
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-256],0
	mov	dword [ebp-260],0
	mov	dword [ebp-264],0
	mov	dword [ebp-268],0
	mov	dword [ebp-272],0
	mov	dword [ebp-276],0
	mov	dword [ebp-280],0
	mov	dword [ebp-284],0
	mov	dword [ebp-288],0
	mov	dword [ebp-292],0
	mov	dword [ebp-296],0
	mov	dword [ebp-300],0
	push	_2526
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-256],3
	push	_2527
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-260],2
	push	_2528
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-264],1
	push	_2529
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-268],0
	push	_2530
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-272],31
	push	_2531
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-276],0
	push	_2532
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-280],31
	push	_2533
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_2535
	call	_brl_blitz_ArrayBoundsError
_2535:
	mov	esi,0
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_2537
	call	_brl_blitz_ArrayBoundsError
_2537:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	mov	dword [ebp-284],eax
	push	_2538
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_2540
	call	_brl_blitz_ArrayBoundsError
_2540:
	mov	esi,1
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_2542
	call	_brl_blitz_ArrayBoundsError
_2542:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	mov	dword [ebp-288],eax
	push	_2543
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_2545
	call	_brl_blitz_ArrayBoundsError
_2545:
	mov	esi,2
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_2547
	call	_brl_blitz_ArrayBoundsError
_2547:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	add	eax,1
	mov	dword [ebp-292],eax
	push	_2548
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_2550
	call	_brl_blitz_ArrayBoundsError
_2550:
	mov	esi,3
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_2552
	call	_brl_blitz_ArrayBoundsError
_2552:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	add	eax,1
	mov	dword [ebp-296],eax
	push	_2553
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_2555
	call	_brl_blitz_ArrayBoundsError
_2555:
	mov	esi,4
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_2557
	call	_brl_blitz_ArrayBoundsError
_2557:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	mov	dword [ebp-300],eax
	push	_2558
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-504],0
	mov	eax,dword [_bb_lutesttile]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-504],eax
	jb	_2560
	call	_brl_blitz_ArrayBoundsError
_2560:
	mov	edx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	edx,dword [eax+24]
	mov	dword [ebp-484],edx
	mov	eax,dword [_bb_combospeicher]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-484],eax
	jb	_2562
	call	_brl_blitz_ArrayBoundsError
_2562:
	mov	dword [ebp-456],5
	mov	eax,dword [_bb_combospeicher]
	mov	eax,dword [eax+24]
	cmp	dword [ebp-456],eax
	jb	_2564
	call	_brl_blitz_ArrayBoundsError
_2564:
	mov	edx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	edx,dword [eax+24]
	mov	dword [ebp-436],edx
	mov	eax,dword [_bb_combospeicher]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-436],eax
	jb	_2566
	call	_brl_blitz_ArrayBoundsError
_2566:
	mov	edi,6
	mov	eax,dword [_bb_combospeicher]
	cmp	edi,dword [eax+24]
	jb	_2568
	call	_brl_blitz_ArrayBoundsError
_2568:
	mov	eax,dword [ebp-88]
	mov	edx,dword [_bb_combospeicher]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+20]
	jb	_2570
	call	_brl_blitz_ArrayBoundsError
_2570:
	mov	ebx,7
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+24]
	jb	_2572
	call	_brl_blitz_ArrayBoundsError
_2572:
	mov	edx,1
	mov	eax,dword [_bb_combospeicher]
	mov	ecx,esi
	add	ecx,ebx
	sub	edx,dword [eax+ecx*4+28]
	push	edx
	mov	ecx,1
	mov	edx,dword [_bb_combospeicher]
	mov	eax,dword [ebp-436]
	add	eax,edi
	sub	ecx,dword [edx+eax*4+28]
	push	ecx
	mov	edx,dword [_bb_combospeicher]
	mov	eax,dword [ebp-484]
	add	eax,dword [ebp-456]
	push	dword [edx+eax*4+28]
	push	dword [ebp-300]
	push	dword [ebp-296]
	push	dword [ebp-292]
	push	dword [ebp-288]
	push	dword [ebp-284]
	push	31
	push	1106771968
	push	dword [ebp-280]
	push	dword [ebp-276]
	push	dword [ebp-272]
	push	dword [ebp-268]
	push	dword [ebp-248]
	push	dword [ebp-252]
	push	dword [ebp-264]
	push	dword [ebp-260]
	push	dword [ebp-256]
	lea	eax,dword [_bb_lutesttile]
	push	eax
	mov	edx,dword [_bb_lutesttile]
	mov	eax,dword [ebp-504]
	lea	eax,dword [edx+eax*4+24]
	push	eax
	call	_bb_drawPixel
	add	esp,84
	call	dword [_bbOnDebugLeaveScope]
_261:
	add	dword [ebp-252],1
_2512:
	cmp	dword [ebp-252],31
	jle	_263
_262:
	call	dword [_bbOnDebugLeaveScope]
_258:
	add	dword [ebp-248],1
_2509:
	cmp	dword [ebp-248],31
	jle	_260
_259:
	push	_2575
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-304],0
	mov	dword [ebp-304],0
	jmp	_2577
_266:
	mov	eax,ebp
	push	eax
	push	_2642
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2578
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-308],0
	mov	dword [ebp-308],0
	jmp	_2580
_269:
	mov	eax,ebp
	push	eax
	push	_2641
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2581
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-312],0
	mov	dword [ebp-316],0
	mov	dword [ebp-320],0
	mov	dword [ebp-324],0
	mov	dword [ebp-328],0
	mov	dword [ebp-332],0
	mov	dword [ebp-336],0
	mov	dword [ebp-340],0
	mov	dword [ebp-344],0
	mov	dword [ebp-348],0
	mov	dword [ebp-352],0
	mov	dword [ebp-356],0
	push	_2594
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-312],3
	push	_2595
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-316],2
	push	_2596
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-320],1
	push	_2597
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-324],0
	push	_2598
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-328],31
	push	_2599
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-332],0
	push	_2600
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-336],31
	push	_2601
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_2603
	call	_brl_blitz_ArrayBoundsError
_2603:
	mov	esi,0
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_2605
	call	_brl_blitz_ArrayBoundsError
_2605:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	add	eax,1
	mov	dword [ebp-340],eax
	push	_2606
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_2608
	call	_brl_blitz_ArrayBoundsError
_2608:
	mov	esi,1
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_2610
	call	_brl_blitz_ArrayBoundsError
_2610:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	add	eax,1
	mov	dword [ebp-344],eax
	push	_2611
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_2613
	call	_brl_blitz_ArrayBoundsError
_2613:
	mov	esi,2
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_2615
	call	_brl_blitz_ArrayBoundsError
_2615:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	mov	dword [ebp-348],eax
	push	_2616
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_2618
	call	_brl_blitz_ArrayBoundsError
_2618:
	mov	esi,3
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_2620
	call	_brl_blitz_ArrayBoundsError
_2620:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	add	eax,1
	mov	dword [ebp-352],eax
	push	_2621
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_2623
	call	_brl_blitz_ArrayBoundsError
_2623:
	mov	esi,4
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_2625
	call	_brl_blitz_ArrayBoundsError
_2625:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	mov	dword [ebp-356],eax
	push	_2626
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-500],0
	mov	eax,dword [_bb_rotesttile]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-500],eax
	jb	_2628
	call	_brl_blitz_ArrayBoundsError
_2628:
	mov	edx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	edx,dword [eax+24]
	mov	dword [ebp-488],edx
	mov	eax,dword [_bb_combospeicher]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-488],eax
	jb	_2630
	call	_brl_blitz_ArrayBoundsError
_2630:
	mov	dword [ebp-460],5
	mov	eax,dword [_bb_combospeicher]
	mov	eax,dword [eax+24]
	cmp	dword [ebp-460],eax
	jb	_2632
	call	_brl_blitz_ArrayBoundsError
_2632:
	mov	edx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	edx,dword [eax+24]
	mov	dword [ebp-440],edx
	mov	eax,dword [_bb_combospeicher]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-440],eax
	jb	_2634
	call	_brl_blitz_ArrayBoundsError
_2634:
	mov	edi,6
	mov	eax,dword [_bb_combospeicher]
	cmp	edi,dword [eax+24]
	jb	_2636
	call	_brl_blitz_ArrayBoundsError
_2636:
	mov	eax,dword [ebp-88]
	mov	edx,dword [_bb_combospeicher]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+20]
	jb	_2638
	call	_brl_blitz_ArrayBoundsError
_2638:
	mov	ebx,7
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+24]
	jb	_2640
	call	_brl_blitz_ArrayBoundsError
_2640:
	mov	edx,1
	mov	eax,dword [_bb_combospeicher]
	mov	ecx,esi
	add	ecx,ebx
	sub	edx,dword [eax+ecx*4+28]
	push	edx
	mov	ecx,1
	mov	edx,dword [_bb_combospeicher]
	mov	eax,dword [ebp-440]
	add	eax,edi
	sub	ecx,dword [edx+eax*4+28]
	push	ecx
	mov	edx,dword [_bb_combospeicher]
	mov	eax,dword [ebp-488]
	add	eax,dword [ebp-460]
	push	dword [edx+eax*4+28]
	push	dword [ebp-356]
	push	dword [ebp-352]
	push	dword [ebp-348]
	push	dword [ebp-344]
	push	dword [ebp-340]
	push	31
	push	1106771968
	push	dword [ebp-336]
	push	dword [ebp-332]
	push	dword [ebp-328]
	push	dword [ebp-324]
	push	dword [ebp-304]
	push	dword [ebp-308]
	push	dword [ebp-320]
	push	dword [ebp-316]
	push	dword [ebp-312]
	lea	eax,dword [_bb_rotesttile]
	push	eax
	mov	edx,dword [_bb_rotesttile]
	mov	eax,dword [ebp-500]
	lea	eax,dword [edx+eax*4+24]
	push	eax
	call	_bb_drawPixel
	add	esp,84
	call	dword [_bbOnDebugLeaveScope]
_267:
	add	dword [ebp-308],1
_2580:
	cmp	dword [ebp-308],31
	jle	_269
_268:
	call	dword [_bbOnDebugLeaveScope]
_264:
	add	dword [ebp-304],1
_2577:
	cmp	dword [ebp-304],31
	jle	_266
_265:
	push	_2643
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-360],0
	mov	dword [ebp-360],0
	jmp	_2645
_272:
	mov	eax,ebp
	push	eax
	push	_2710
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2646
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-364],0
	mov	dword [ebp-364],0
	jmp	_2648
_275:
	mov	eax,ebp
	push	eax
	push	_2709
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2649
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-368],0
	mov	dword [ebp-372],0
	mov	dword [ebp-376],0
	mov	dword [ebp-380],0
	mov	dword [ebp-384],0
	mov	dword [ebp-388],0
	mov	dword [ebp-392],0
	mov	dword [ebp-396],0
	mov	dword [ebp-400],0
	mov	dword [ebp-404],0
	mov	dword [ebp-408],0
	mov	dword [ebp-412],0
	push	_2662
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-368],3
	push	_2663
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-372],2
	push	_2664
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-376],1
	push	_2665
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-380],0
	push	_2666
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-384],31
	push	_2667
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-388],0
	push	_2668
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-392],31
	push	_2669
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_2671
	call	_brl_blitz_ArrayBoundsError
_2671:
	mov	esi,0
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_2673
	call	_brl_blitz_ArrayBoundsError
_2673:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	add	eax,1
	mov	dword [ebp-396],eax
	push	_2674
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_2676
	call	_brl_blitz_ArrayBoundsError
_2676:
	mov	esi,1
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_2678
	call	_brl_blitz_ArrayBoundsError
_2678:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	add	eax,1
	mov	dword [ebp-400],eax
	push	_2679
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_2681
	call	_brl_blitz_ArrayBoundsError
_2681:
	mov	esi,2
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_2683
	call	_brl_blitz_ArrayBoundsError
_2683:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	add	eax,1
	mov	dword [ebp-404],eax
	push	_2684
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_2686
	call	_brl_blitz_ArrayBoundsError
_2686:
	mov	esi,3
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_2688
	call	_brl_blitz_ArrayBoundsError
_2688:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	add	eax,1
	mov	dword [ebp-408],eax
	push	_2689
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_2691
	call	_brl_blitz_ArrayBoundsError
_2691:
	mov	esi,4
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_2693
	call	_brl_blitz_ArrayBoundsError
_2693:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	mov	dword [ebp-412],eax
	push	_2694
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-496],0
	mov	eax,dword [_bb_lotesttile]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-496],eax
	jb	_2696
	call	_brl_blitz_ArrayBoundsError
_2696:
	mov	edx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	edx,dword [eax+24]
	mov	dword [ebp-492],edx
	mov	eax,dword [_bb_combospeicher]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-492],eax
	jb	_2698
	call	_brl_blitz_ArrayBoundsError
_2698:
	mov	dword [ebp-464],5
	mov	eax,dword [_bb_combospeicher]
	mov	eax,dword [eax+24]
	cmp	dword [ebp-464],eax
	jb	_2700
	call	_brl_blitz_ArrayBoundsError
_2700:
	mov	edx,dword [ebp-88]
	mov	eax,dword [_bb_combospeicher]
	imul	edx,dword [eax+24]
	mov	dword [ebp-444],edx
	mov	eax,dword [_bb_combospeicher]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-444],eax
	jb	_2702
	call	_brl_blitz_ArrayBoundsError
_2702:
	mov	edi,6
	mov	eax,dword [_bb_combospeicher]
	cmp	edi,dword [eax+24]
	jb	_2704
	call	_brl_blitz_ArrayBoundsError
_2704:
	mov	eax,dword [ebp-88]
	mov	edx,dword [_bb_combospeicher]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+20]
	jb	_2706
	call	_brl_blitz_ArrayBoundsError
_2706:
	mov	ebx,7
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+24]
	jb	_2708
	call	_brl_blitz_ArrayBoundsError
_2708:
	mov	edx,1
	mov	eax,dword [_bb_combospeicher]
	mov	ecx,esi
	add	ecx,ebx
	sub	edx,dword [eax+ecx*4+28]
	push	edx
	mov	ecx,1
	mov	edx,dword [_bb_combospeicher]
	mov	eax,dword [ebp-444]
	add	eax,edi
	sub	ecx,dword [edx+eax*4+28]
	push	ecx
	mov	edx,dword [_bb_combospeicher]
	mov	eax,dword [ebp-492]
	add	eax,dword [ebp-464]
	push	dword [edx+eax*4+28]
	push	dword [ebp-412]
	push	dword [ebp-408]
	push	dword [ebp-404]
	push	dword [ebp-400]
	push	dword [ebp-396]
	push	31
	push	1106771968
	push	dword [ebp-392]
	push	dword [ebp-388]
	push	dword [ebp-384]
	push	dword [ebp-380]
	push	dword [ebp-360]
	push	dword [ebp-364]
	push	dword [ebp-376]
	push	dword [ebp-372]
	push	dword [ebp-368]
	lea	eax,dword [_bb_lotesttile]
	push	eax
	mov	edx,dword [_bb_lotesttile]
	mov	eax,dword [ebp-496]
	lea	eax,dword [edx+eax*4+24]
	push	eax
	call	_bb_drawPixel
	add	esp,84
	call	dword [_bbOnDebugLeaveScope]
_273:
	add	dword [ebp-364],1
_2648:
	cmp	dword [ebp-364],31
	jle	_275
_274:
	call	dword [_bbOnDebugLeaveScope]
_270:
	add	dword [ebp-360],1
_2645:
	cmp	dword [ebp-360],31
	jle	_272
_271:
	push	_2711
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,8
	mov	eax,dword [_bb_GtesttileO]
	cmp	ebx,dword [eax+20]
	jb	_2713
	call	_brl_blitz_ArrayBoundsError
_2713:
	mov	eax,dword [_bb_GtesttileO]
	push	dword [eax+ebx*4+24]
	call	_brl_pixmap_CopyPixmap
	add	esp,4
	mov	dword [ebp-188],eax
	push	_2715
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-188]
	inc	dword [eax+4]
	mov	ebx,8
	mov	eax,dword [_bb_GtesttileO]
	cmp	ebx,dword [eax+20]
	jb	_2718
	call	_brl_blitz_ArrayBoundsError
_2718:
	lea	eax,dword [_bb_GtesttileO]
	push	eax
	mov	eax,dword [_bb_GtesttileO]
	lea	eax,dword [eax+ebx*4+24]
	push	eax
	lea	eax,dword [ebp-188]
	push	eax
	call	_bb_drawTile
	add	esp,12
	mov	eax,dword [ebp-188]
	dec	dword [eax+4]
	jnz	_2716
	push	dword [ebp-188]
	call	_bbGCFree
	add	esp,4
_2716:
	push	_2720
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,8
	mov	eax,dword [_bb_GtesttileI]
	cmp	ebx,dword [eax+20]
	jb	_2722
	call	_brl_blitz_ArrayBoundsError
_2722:
	mov	esi,dword [_bb_GtesttileI]
	shl	ebx,2
	add	esi,ebx
	push	-1
	push	dword [ebp-188]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2727
	push	eax
	call	_bbGCFree
	add	esp,4
_2727:
	mov	dword [esi+24],ebx
	push	_2728
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [_bb_testtileI]
	cmp	ebx,dword [eax+20]
	jb	_2730
	call	_brl_blitz_ArrayBoundsError
_2730:
	mov	esi,dword [_bb_testtileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,0
	mov	eax,dword [_bb_testtile]
	cmp	ebx,dword [eax+20]
	jb	_2733
	call	_brl_blitz_ArrayBoundsError
_2733:
	push	-1
	mov	eax,dword [_bb_testtile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2737
	push	eax
	call	_bbGCFree
	add	esp,4
_2737:
	mov	dword [esi+24],ebx
	push	_2738
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [_bb_testtileI]
	cmp	ebx,dword [eax+20]
	jb	_2740
	call	_brl_blitz_ArrayBoundsError
_2740:
	mov	esi,dword [_bb_testtileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,1
	mov	eax,dword [_bb_testtile]
	cmp	ebx,dword [eax+20]
	jb	_2743
	call	_brl_blitz_ArrayBoundsError
_2743:
	push	-1
	mov	eax,dword [_bb_testtile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2747
	push	eax
	call	_bbGCFree
	add	esp,4
_2747:
	mov	dword [esi+24],ebx
	push	_2748
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [_bb_testtileI]
	cmp	ebx,dword [eax+20]
	jb	_2750
	call	_brl_blitz_ArrayBoundsError
_2750:
	mov	esi,dword [_bb_testtileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,2
	mov	eax,dword [_bb_testtile]
	cmp	ebx,dword [eax+20]
	jb	_2753
	call	_brl_blitz_ArrayBoundsError
_2753:
	push	-1
	mov	eax,dword [_bb_testtile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2757
	push	eax
	call	_bbGCFree
	add	esp,4
_2757:
	mov	dword [esi+24],ebx
	push	_2758
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [_bb_testtileI]
	cmp	ebx,dword [eax+20]
	jb	_2760
	call	_brl_blitz_ArrayBoundsError
_2760:
	mov	esi,dword [_bb_testtileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,3
	mov	eax,dword [_bb_testtile]
	cmp	ebx,dword [eax+20]
	jb	_2763
	call	_brl_blitz_ArrayBoundsError
_2763:
	push	-1
	mov	eax,dword [_bb_testtile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2767
	push	eax
	call	_bbGCFree
	add	esp,4
_2767:
	mov	dword [esi+24],ebx
	push	_2768
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [_bb_lutesttileI]
	cmp	ebx,dword [eax+20]
	jb	_2770
	call	_brl_blitz_ArrayBoundsError
_2770:
	mov	esi,dword [_bb_lutesttileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,0
	mov	eax,dword [_bb_lutesttile]
	cmp	ebx,dword [eax+20]
	jb	_2773
	call	_brl_blitz_ArrayBoundsError
_2773:
	push	-1
	mov	eax,dword [_bb_lutesttile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2777
	push	eax
	call	_bbGCFree
	add	esp,4
_2777:
	mov	dword [esi+24],ebx
	push	_2778
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [_bb_lutesttileI]
	cmp	ebx,dword [eax+20]
	jb	_2780
	call	_brl_blitz_ArrayBoundsError
_2780:
	mov	esi,dword [_bb_lutesttileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,1
	mov	eax,dword [_bb_lutesttile]
	cmp	ebx,dword [eax+20]
	jb	_2783
	call	_brl_blitz_ArrayBoundsError
_2783:
	push	-1
	mov	eax,dword [_bb_lutesttile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2787
	push	eax
	call	_bbGCFree
	add	esp,4
_2787:
	mov	dword [esi+24],ebx
	push	_2788
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [_bb_lutesttileI]
	cmp	ebx,dword [eax+20]
	jb	_2790
	call	_brl_blitz_ArrayBoundsError
_2790:
	mov	esi,dword [_bb_lutesttileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,2
	mov	eax,dword [_bb_lutesttile]
	cmp	ebx,dword [eax+20]
	jb	_2793
	call	_brl_blitz_ArrayBoundsError
_2793:
	push	-1
	mov	eax,dword [_bb_lutesttile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2797
	push	eax
	call	_bbGCFree
	add	esp,4
_2797:
	mov	dword [esi+24],ebx
	push	_2798
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [_bb_lutesttileI]
	cmp	ebx,dword [eax+20]
	jb	_2800
	call	_brl_blitz_ArrayBoundsError
_2800:
	mov	esi,dword [_bb_lutesttileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,3
	mov	eax,dword [_bb_lutesttile]
	cmp	ebx,dword [eax+20]
	jb	_2803
	call	_brl_blitz_ArrayBoundsError
_2803:
	push	-1
	mov	eax,dword [_bb_lutesttile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2807
	push	eax
	call	_bbGCFree
	add	esp,4
_2807:
	mov	dword [esi+24],ebx
	push	_2808
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [_bb_rotesttileI]
	cmp	ebx,dword [eax+20]
	jb	_2810
	call	_brl_blitz_ArrayBoundsError
_2810:
	mov	esi,dword [_bb_rotesttileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,0
	mov	eax,dword [_bb_rotesttile]
	cmp	ebx,dword [eax+20]
	jb	_2813
	call	_brl_blitz_ArrayBoundsError
_2813:
	push	-1
	mov	eax,dword [_bb_rotesttile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2817
	push	eax
	call	_bbGCFree
	add	esp,4
_2817:
	mov	dword [esi+24],ebx
	push	_2818
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [_bb_rotesttileI]
	cmp	ebx,dword [eax+20]
	jb	_2820
	call	_brl_blitz_ArrayBoundsError
_2820:
	mov	esi,dword [_bb_rotesttileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,1
	mov	eax,dword [_bb_rotesttile]
	cmp	ebx,dword [eax+20]
	jb	_2823
	call	_brl_blitz_ArrayBoundsError
_2823:
	push	-1
	mov	eax,dword [_bb_rotesttile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2827
	push	eax
	call	_bbGCFree
	add	esp,4
_2827:
	mov	dword [esi+24],ebx
	push	_2828
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [_bb_rotesttileI]
	cmp	ebx,dword [eax+20]
	jb	_2830
	call	_brl_blitz_ArrayBoundsError
_2830:
	mov	esi,dword [_bb_rotesttileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,2
	mov	eax,dword [_bb_rotesttile]
	cmp	ebx,dword [eax+20]
	jb	_2833
	call	_brl_blitz_ArrayBoundsError
_2833:
	push	-1
	mov	eax,dword [_bb_rotesttile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2837
	push	eax
	call	_bbGCFree
	add	esp,4
_2837:
	mov	dword [esi+24],ebx
	push	_2838
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [_bb_rotesttileI]
	cmp	ebx,dword [eax+20]
	jb	_2840
	call	_brl_blitz_ArrayBoundsError
_2840:
	mov	esi,dword [_bb_rotesttileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,3
	mov	eax,dword [_bb_rotesttile]
	cmp	ebx,dword [eax+20]
	jb	_2843
	call	_brl_blitz_ArrayBoundsError
_2843:
	push	-1
	mov	eax,dword [_bb_rotesttile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2847
	push	eax
	call	_bbGCFree
	add	esp,4
_2847:
	mov	dword [esi+24],ebx
	push	_2848
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [_bb_lotesttileI]
	cmp	ebx,dword [eax+20]
	jb	_2850
	call	_brl_blitz_ArrayBoundsError
_2850:
	mov	esi,dword [_bb_lotesttileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,0
	mov	eax,dword [_bb_lotesttile]
	cmp	ebx,dword [eax+20]
	jb	_2853
	call	_brl_blitz_ArrayBoundsError
_2853:
	push	-1
	mov	eax,dword [_bb_lotesttile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2857
	push	eax
	call	_bbGCFree
	add	esp,4
_2857:
	mov	dword [esi+24],ebx
	push	_2858
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [_bb_lotesttileI]
	cmp	ebx,dword [eax+20]
	jb	_2860
	call	_brl_blitz_ArrayBoundsError
_2860:
	mov	esi,dword [_bb_lotesttileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,1
	mov	eax,dword [_bb_lotesttile]
	cmp	ebx,dword [eax+20]
	jb	_2863
	call	_brl_blitz_ArrayBoundsError
_2863:
	push	-1
	mov	eax,dword [_bb_lotesttile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2867
	push	eax
	call	_bbGCFree
	add	esp,4
_2867:
	mov	dword [esi+24],ebx
	push	_2868
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [_bb_lotesttileI]
	cmp	ebx,dword [eax+20]
	jb	_2870
	call	_brl_blitz_ArrayBoundsError
_2870:
	mov	esi,dword [_bb_lotesttileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,2
	mov	eax,dword [_bb_lotesttile]
	cmp	ebx,dword [eax+20]
	jb	_2873
	call	_brl_blitz_ArrayBoundsError
_2873:
	push	-1
	mov	eax,dword [_bb_lotesttile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2877
	push	eax
	call	_bbGCFree
	add	esp,4
_2877:
	mov	dword [esi+24],ebx
	push	_2878
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [_bb_lotesttileI]
	cmp	ebx,dword [eax+20]
	jb	_2880
	call	_brl_blitz_ArrayBoundsError
_2880:
	mov	esi,dword [_bb_lotesttileI]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,3
	mov	eax,dword [_bb_lotesttile]
	cmp	ebx,dword [eax+20]
	jb	_2883
	call	_brl_blitz_ArrayBoundsError
_2883:
	push	-1
	mov	eax,dword [_bb_lotesttile]
	push	dword [eax+ebx*4+24]
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2887
	push	eax
	call	_bbGCFree
	add	esp,4
_2887:
	mov	dword [esi+24],ebx
	push	_2888
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],0
	call	dword [_bbOnDebugLeaveScope]
_2266:
	push	_2891
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
	push	_2892
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	call	_brl_polledinput_MouseHit
	add	esp,4
	cmp	eax,0
	je	_2893
	mov	eax,ebp
	push	eax
	push	_2895
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2894
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_WaitKey
	call	dword [_bbOnDebugLeaveScope]
_2893:
	call	dword [_bbOnDebugLeaveScope]
_220:
	push	27
	call	_brl_polledinput_KeyHit
	add	esp,4
	cmp	eax,0
	je	_222
_221:
	mov	ebx,0
	jmp	_353
_353:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Ttextur_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_2984
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Ttextur
	push	8
	push	_2974
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+8],eax
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],0
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],edx
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],0
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+32],edx
	mov	eax,dword [ebp-4]
	mov	byte [eax+36],0
	mov	eax,dword [ebp-4]
	mov	byte [eax+37],0
	mov	eax,dword [ebp-4]
	mov	byte [eax+38],0
	mov	eax,dword [ebp-4]
	mov	byte [eax+39],0
	mov	eax,dword [ebp-4]
	mov	byte [eax+40],0
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+44],edx
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+48],edx
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+52],edx
	mov	eax,dword [ebp-4]
	mov	byte [eax+56],0
	push	ebp
	push	_2983
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_356
_356:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Ttextur_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_359:
	mov	eax,dword [ebx+52]
	dec	dword [eax+4]
	jnz	_2988
	push	eax
	call	_bbGCFree
	add	esp,4
_2988:
	mov	eax,dword [ebx+48]
	dec	dword [eax+4]
	jnz	_2990
	push	eax
	call	_bbGCFree
	add	esp,4
_2990:
	mov	eax,dword [ebx+44]
	dec	dword [eax+4]
	jnz	_2992
	push	eax
	call	_bbGCFree
	add	esp,4
_2992:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_2994
	push	eax
	call	_bbGCFree
	add	esp,4
_2994:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_2996
	push	eax
	call	_bbGCFree
	add	esp,4
_2996:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_2998
	push	eax
	call	_bbGCFree
	add	esp,4
_2998:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_3000
	push	eax
	call	_bbGCFree
	add	esp,4
_3000:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_3002
	push	eax
	call	_bbGCFree
	add	esp,4
_3002:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_2986
_2986:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Ttexgroup_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_3007
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Ttexgroup
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],edx
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+16],eax
	push	ebp
	push	_3006
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_362
_362:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Ttexgroup_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_365:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_3011
	push	eax
	call	_bbGCFree
	add	esp,4
_3011:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_3013
	push	eax
	call	_bbGCFree
	add	esp,4
_3013:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_3015
	push	eax
	call	_bbGCFree
	add	esp,4
_3015:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_3009
_3009:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Twaypoint_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_3021
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Twaypoint
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+8]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+12]
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],0
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],edx
	push	16
	push	_3017
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+24],eax
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],1
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+32]
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+36],eax
	push	ebp
	push	_3020
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_368
_368:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Twaypoint_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_371:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_3024
	push	eax
	call	_bbGCFree
	add	esp,4
_3024:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_3026
	push	eax
	call	_bbGCFree
	add	esp,4
_3026:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_3028
	push	eax
	call	_bbGCFree
	add	esp,4
_3028:
	mov	dword [ebx],_bbObjectClass
	push	ebx
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_3022
_3022:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_DrawPicture:
	push	ebp
	mov	ebp,esp
	sub	esp,80
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	fld	dword [ebp+20]
	fstp	dword [ebp-16]
	fld	dword [ebp+24]
	fstp	dword [ebp-20]
	fldz
	fstp	dword [ebp-24]
	fldz
	fstp	dword [ebp-28]
	fldz
	fstp	dword [ebp-32]
	fldz
	fstp	dword [ebp-36]
	fldz
	fstp	dword [ebp-40]
	fldz
	fstp	dword [ebp-44]
	fldz
	fstp	dword [ebp-48]
	fldz
	fstp	dword [ebp-52]
	push	ebp
	push	_3054
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3029
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-24]
	push	_3031
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-28]
	push	_3033
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	eax,dword [ebp-28]
	push	eax
	lea	eax,dword [ebp-24]
	push	eax
	call	_brl_max2d_GetScale
	add	esp,8
	push	_3034
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-32]
	push	_3036
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-36]
	push	_3038
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	eax,dword [ebp-36]
	push	eax
	lea	eax,dword [ebp-32]
	push	eax
	call	_brl_max2d_GetHandle
	add	esp,8
	push	_3039
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3041
	call	_brl_blitz_NullObjectError
_3041:
	fld	dword [ebp-16]
	mov	eax,dword [ebx+8]
	mov	dword [ebp+-80],eax
	fild	dword [ebp+-80]
	fdivp	st1,st0
	fstp	dword [ebp-40]
	push	_3043
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3045
	call	_brl_blitz_NullObjectError
_3045:
	fld	dword [ebp-20]
	mov	eax,dword [ebx+12]
	mov	dword [ebp+-80],eax
	fild	dword [ebp+-80]
	fdivp	st1,st0
	fstp	dword [ebp-44]
	push	_3047
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-44]
	fmul	dword [ebp-28]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-40]
	fmul	dword [ebp-24]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetScale
	add	esp,8
	push	_3048
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_6320]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-60]
	fld	qword [_6321]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-60]
	faddp	st1,st0
	fstp	qword [ebp-60]
	fld	qword [ebp-60]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fstp	dword [ebp-48]
	push	_3050
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-32]
	sub	esp,8
	fstp	qword [esp]
	call	_bbATan2
	add	esp,16
	fchs
	fld	qword [_6322]
	faddp	st1,st0
	fstp	dword [ebp-52]
	push	_3052
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	fld	dword [ebp-12]
	fstp	qword [ebp-68]
	call	_brl_max2d_GetRotation
	fsub	dword [ebp-52]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	dword [ebp-48]
	fmul	dword [ebp-28]
	fmulp	st1,st0
	fld	qword [ebp-68]
	faddp	st1,st0
	fstp	qword [ebp-68]
	fld	qword [ebp-68]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [ebp-8]
	fstp	qword [ebp-76]
	call	_brl_max2d_GetRotation
	fsub	dword [ebp-52]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	dword [ebp-48]
	fmul	dword [ebp-24]
	fmulp	st1,st0
	fld	qword [ebp-76]
	faddp	st1,st0
	fstp	qword [ebp-76]
	fld	qword [ebp-76]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebp-4]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_3053
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-28]
	push	dword [ebp-24]
	call	_brl_max2d_SetScale
	add	esp,8
	mov	ebx,0
	jmp	_378
_378:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_PushCollision:
	push	ebp
	mov	ebp,esp
	sub	esp,92
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-12],eax
	fld	dword [ebp+16]
	fstp	dword [ebp-16]
	mov	eax,dword [ebp+20]
	mov	dword [ebp-20],eax
	mov	eax,dword [ebp+24]
	mov	dword [ebp-24],eax
	fld	dword [ebp+28]
	fstp	dword [ebp-28]
	movzx	eax,byte [ebp+32]
	mov	eax,eax
	mov	byte [ebp-4],al
	fldz
	fstp	dword [ebp-32]
	fldz
	fstp	dword [ebp-36]
	push	ebp
	push	_3088
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3068
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_6327]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	mov	eax,dword [ebp-20]
	fsub	dword [eax]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-44]
	fld	qword [_6328]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	mov	eax,dword [ebp-24]
	fsub	dword [eax]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-44]
	faddp	st1,st0
	fstp	qword [ebp-44]
	fld	qword [ebp-44]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fstp	dword [ebp-32]
	push	_3070
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fdiv	dword [_6329]
	fstp	dword [ebp-16]
	push	_3071
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-28]
	fdiv	dword [_6330]
	fstp	dword [ebp-28]
	push	_3072
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-32]
	fld	dword [ebp-16]
	fadd	dword [ebp-28]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_3073
	push	ebp
	push	_3087
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3074
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	mov	eax,dword [ebp-24]
	fsub	dword [eax]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	mov	eax,dword [ebp-20]
	fsub	dword [eax]
	sub	esp,4
	fstp	dword [esp]
	call	_bb_CalcWinkel
	add	esp,8
	fadd	dword [_6331]
	fstp	dword [ebp-36]
	push	_3076
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,1
	jne	_3077
	push	ebp
	push	_3080
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3078
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fstp	qword [ebp-52]
	fld	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	dword [ebp-16]
	fadd	dword [ebp-28]
	fsub	dword [ebp-32]
	fmulp	st1,st0
	fld	qword [ebp-52]
	faddp	st1,st0
	fstp	qword [ebp-52]
	fld	qword [ebp-52]
	fstp	dword [ebx]
	push	_3079
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fstp	qword [ebp-60]
	fld	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	dword [ebp-16]
	fadd	dword [ebp-28]
	fsub	dword [ebp-32]
	fmulp	st1,st0
	fld	qword [ebp-60]
	faddp	st1,st0
	fstp	qword [ebp-60]
	fld	qword [ebp-60]
	fstp	dword [ebx]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3081
_3077:
	push	ebp
	push	_3086
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3082
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fstp	qword [ebp-68]
	fld	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	dword [ebp-16]
	fadd	dword [ebp-28]
	fsub	dword [ebp-32]
	fdiv	dword [_6332]
	fmulp	st1,st0
	fld	qword [ebp-68]
	faddp	st1,st0
	fstp	qword [ebp-68]
	fld	qword [ebp-68]
	fstp	dword [ebx]
	push	_3083
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fstp	qword [ebp-76]
	fld	dword [ebp-36]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	dword [ebp-16]
	fadd	dword [ebp-28]
	fsub	dword [ebp-32]
	fdiv	dword [_6333]
	fmulp	st1,st0
	fld	qword [ebp-76]
	faddp	st1,st0
	fstp	qword [ebp-76]
	fld	qword [ebp-76]
	fstp	dword [ebx]
	push	_3084
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	mov	eax,dword [ebp-20]
	fld	dword [eax]
	fstp	qword [ebp-84]
	fld	dword [ebp-36]
	fsub	dword [_6334]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fld	dword [ebp-16]
	fadd	dword [ebp-28]
	fsub	dword [ebp-32]
	fdiv	dword [_6335]
	fmulp	st1,st0
	fld	qword [ebp-84]
	faddp	st1,st0
	fstp	qword [ebp-84]
	fld	qword [ebp-84]
	fstp	dword [ebx]
	push	_3085
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	mov	eax,dword [ebp-24]
	fld	dword [eax]
	fstp	qword [ebp-92]
	fld	dword [ebp-36]
	fsub	dword [_6336]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fld	dword [ebp-16]
	fadd	dword [ebp-28]
	fsub	dword [ebp-32]
	fdiv	dword [_6337]
	fmulp	st1,st0
	fld	qword [ebp-92]
	faddp	st1,st0
	fstp	qword [ebp-92]
	fld	qword [ebp-92]
	fstp	dword [ebx]
	call	dword [_bbOnDebugLeaveScope]
_3081:
	call	dword [_bbOnDebugLeaveScope]
_3073:
	mov	ebx,0
	jmp	_387
_387:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_PushTank:
	push	ebp
	mov	ebp,esp
	sub	esp,484
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	eax,dword [ebp+24]
	mov	dword [ebp-20],eax
	mov	eax,dword [ebp+28]
	mov	dword [ebp-24],eax
	mov	eax,dword [ebp+32]
	mov	dword [ebp-28],eax
	mov	eax,dword [ebp+36]
	mov	dword [ebp-32],eax
	fldz
	fstp	dword [ebp-36]
	fldz
	fstp	dword [ebp-40]
	fldz
	fstp	dword [ebp-44]
	mov	dword [ebp-48],_bbEmptyArray
	mov	dword [ebp-52],0
	mov	dword [ebp-56],_bbEmptyArray
	mov	dword [ebp-60],0
	mov	dword [ebp-64],_bbEmptyArray
	mov	dword [ebp-68],_bbEmptyArray
	mov	dword [ebp-96],0
	mov	dword [ebp-100],0
	fldz
	fstp	dword [ebp-104]
	mov	dword [ebp-108],0
	mov	dword [ebp-112],0
	fldz
	fstp	dword [ebp-116]
	mov	dword [ebp-120],0
	mov	dword [ebp-124],0
	mov	dword [ebp-128],0
	mov	dword [ebp-132],0
	mov	dword [ebp-136],0
	mov	dword [ebp-140],0
	mov	dword [ebp-144],0
	mov	dword [ebp-148],0
	fldz
	fstp	dword [ebp-152]
	fldz
	fstp	dword [ebp-156]
	fldz
	fstp	dword [ebp-72]
	fldz
	fstp	dword [ebp-76]
	mov	dword [ebp-160],0
	mov	dword [ebp-164],0
	fldz
	fstp	dword [ebp-80]
	fldz
	fstp	dword [ebp-84]
	mov	dword [ebp-168],0
	mov	dword [ebp-172],0
	fldz
	fstp	dword [ebp-88]
	mov	dword [ebp-176],0
	mov	dword [ebp-180],0
	fldz
	fstp	dword [ebp-184]
	fldz
	fstp	dword [ebp-188]
	fldz
	fstp	dword [ebp-192]
	fldz
	fstp	dword [ebp-196]
	fldz
	fstp	dword [ebp-92]
	mov	dword [ebp-200],0
	mov	dword [ebp-204],0
	fldz
	fstp	dword [ebp-208]
	fldz
	fstp	dword [ebp-212]
	fldz
	fstp	dword [ebp-216]
	fldz
	fstp	dword [ebp-220]
	mov	eax,ebp
	push	eax
	push	_3552
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3097
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_6342]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-4]
	fld	dword [eax]
	mov	eax,dword [ebp-20]
	fsub	dword [eax]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-480]
	fld	qword [_6343]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	mov	eax,dword [ebp-24]
	fsub	dword [eax]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-480]
	faddp	st1,st0
	fstp	qword [ebp-480]
	fld	qword [ebp-480]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fstp	dword [ebp-36]
	push	_3099
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-36]
	fld	dword [_6344]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_3100
	mov	eax,ebp
	push	eax
	push	_3536
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3101
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_6345]
	fstp	dword [ebp-40]
	push	_3103
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_6346]
	fmul	dword [ebp-40]
	fstp	dword [ebp-44]
	push	_3105
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	9
	push	2
	push	_3106
	call	_bbArrayNew
	add	esp,16
	mov	dword [ebp-48],eax
	mov	dword [ebp-52],-1
	push	_3109
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	9
	push	2
	push	_3110
	call	_bbArrayNew
	add	esp,16
	mov	dword [ebp-56],eax
	mov	dword [ebp-60],-1
	push	_3113
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	9
	push	2
	push	_3114
	call	_bbArrayNew
	add	esp,16
	mov	dword [ebp-64],eax
	push	_3116
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	9
	push	2
	push	_3117
	call	_bbArrayNew
	add	esp,16
	mov	dword [ebp-68],eax
	push	_3119
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],0
	mov	dword [ebp-96],0
	jmp	_3121
_30:
	mov	eax,ebp
	push	eax
	push	_3149
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3122
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-100],0
	mov	dword [ebp-100],0
	jmp	_3124
_33:
	mov	eax,ebp
	push	eax
	push	_3146
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3125
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-96]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_3126
	mov	eax,dword [ebp-100]
	cmp	eax,1
	sete	al
	movzx	eax,al
_3126:
	cmp	eax,0
	je	_3128
	mov	eax,ebp
	push	eax
	push	_3130
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3129
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_31
_3128:
	push	_3131
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-52],1
	push	_3132
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-100]
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-96]
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,4
	fstp	dword [esp]
	call	_bb_CalcWinkel
	add	esp,8
	fadd	dword [_6347]
	fstp	dword [ebp-104]
	push	_3134
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-52]
	mov	eax,dword [ebp-48]
	imul	esi,dword [eax+24]
	mov	eax,dword [ebp-48]
	cmp	esi,dword [eax+20]
	jb	_3136
	call	_brl_blitz_ArrayBoundsError
_3136:
	mov	ebx,0
	mov	eax,dword [ebp-48]
	cmp	ebx,dword [eax+24]
	jb	_3138
	call	_brl_blitz_ArrayBoundsError
_3138:
	mov	eax,dword [ebp-48]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	eax,dword [ebp-4]
	fld	dword [eax]
	fstp	qword [ebp-448]
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fadd	dword [ebp-104]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fstp	qword [ebp-400]
	fld	qword [_6348]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-96]
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-328]
	fld	qword [_6349]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-100]
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-328]
	faddp	st1,st0
	fstp	qword [ebp-328]
	fld	qword [ebp-328]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [ebp-40]
	fmulp	st1,st0
	fld	qword [ebp-400]
	fmulp	st1,st0
	fstp	qword [ebp-400]
	fld	qword [ebp-448]
	fadd	qword [ebp-400]
	fstp	qword [ebp-448]
	fld	qword [ebp-448]
	fstp	dword [ebx+28]
	push	_3140
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-52]
	mov	eax,dword [ebp-48]
	imul	esi,dword [eax+24]
	mov	eax,dword [ebp-48]
	cmp	esi,dword [eax+20]
	jb	_3142
	call	_brl_blitz_ArrayBoundsError
_3142:
	mov	ebx,1
	mov	eax,dword [ebp-48]
	cmp	ebx,dword [eax+24]
	jb	_3144
	call	_brl_blitz_ArrayBoundsError
_3144:
	mov	eax,dword [ebp-48]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fstp	qword [ebp-440]
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fadd	dword [ebp-104]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fstp	qword [ebp-392]
	fld	qword [_6350]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-96]
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-320]
	fld	qword [_6351]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-100]
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-320]
	faddp	st1,st0
	fstp	qword [ebp-320]
	fld	qword [ebp-320]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [ebp-40]
	fmulp	st1,st0
	fld	qword [ebp-392]
	fmulp	st1,st0
	fstp	qword [ebp-392]
	fld	qword [ebp-440]
	fadd	qword [ebp-392]
	fstp	qword [ebp-440]
	fld	qword [ebp-440]
	fstp	dword [ebx+28]
	call	dword [_bbOnDebugLeaveScope]
_31:
	add	dword [ebp-100],1
_3124:
	cmp	dword [ebp-100],2
	jle	_33
_32:
	call	dword [_bbOnDebugLeaveScope]
_28:
	add	dword [ebp-96],1
_3121:
	cmp	dword [ebp-96],2
	jle	_30
_29:
	push	_3151
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],-1
	push	_3152
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-108],0
	mov	dword [ebp-108],0
	jmp	_3154
_36:
	mov	eax,ebp
	push	eax
	push	_3182
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3155
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-112],0
	mov	dword [ebp-112],0
	jmp	_3157
_39:
	mov	eax,ebp
	push	eax
	push	_3179
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3158
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-108]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_3159
	mov	eax,dword [ebp-112]
	cmp	eax,1
	sete	al
	movzx	eax,al
_3159:
	cmp	eax,0
	je	_3161
	mov	eax,ebp
	push	eax
	push	_3163
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3162
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_37
_3161:
	push	_3164
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-60],1
	push	_3165
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-112]
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-108]
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,4
	fstp	dword [esp]
	call	_bb_CalcWinkel
	add	esp,8
	fadd	dword [_6352]
	fstp	dword [ebp-116]
	push	_3167
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-60]
	mov	eax,dword [ebp-56]
	imul	esi,dword [eax+24]
	mov	eax,dword [ebp-56]
	cmp	esi,dword [eax+20]
	jb	_3169
	call	_brl_blitz_ArrayBoundsError
_3169:
	mov	ebx,0
	mov	eax,dword [ebp-56]
	cmp	ebx,dword [eax+24]
	jb	_3171
	call	_brl_blitz_ArrayBoundsError
_3171:
	mov	eax,dword [ebp-56]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	eax,dword [ebp-20]
	fld	dword [eax]
	fstp	qword [ebp-432]
	mov	eax,dword [ebp-28]
	fld	dword [eax]
	fadd	dword [ebp-116]
	sub	esp,8
	fstp	qword [esp]
	call	_bbCos
	add	esp,8
	fstp	qword [ebp-384]
	fld	qword [_6353]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-108]
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-312]
	fld	qword [_6354]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-112]
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-312]
	faddp	st1,st0
	fstp	qword [ebp-312]
	fld	qword [ebp-312]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [ebp-40]
	fmulp	st1,st0
	fld	qword [ebp-384]
	fmulp	st1,st0
	fstp	qword [ebp-384]
	fld	qword [ebp-432]
	fadd	qword [ebp-384]
	fstp	qword [ebp-432]
	fld	qword [ebp-432]
	fstp	dword [ebx+28]
	push	_3173
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-60]
	mov	eax,dword [ebp-56]
	imul	esi,dword [eax+24]
	mov	eax,dword [ebp-56]
	cmp	esi,dword [eax+20]
	jb	_3175
	call	_brl_blitz_ArrayBoundsError
_3175:
	mov	ebx,1
	mov	eax,dword [ebp-56]
	cmp	ebx,dword [eax+24]
	jb	_3177
	call	_brl_blitz_ArrayBoundsError
_3177:
	mov	eax,dword [ebp-56]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	eax,dword [ebp-24]
	fld	dword [eax]
	fstp	qword [ebp-424]
	mov	eax,dword [ebp-28]
	fld	dword [eax]
	fadd	dword [ebp-116]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSin
	add	esp,8
	fstp	qword [ebp-376]
	fld	qword [_6355]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-108]
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-304]
	fld	qword [_6356]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-112]
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-304]
	faddp	st1,st0
	fstp	qword [ebp-304]
	fld	qword [ebp-304]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [ebp-40]
	fmulp	st1,st0
	fld	qword [ebp-376]
	fmulp	st1,st0
	fstp	qword [ebp-376]
	fld	qword [ebp-424]
	fadd	qword [ebp-376]
	fstp	qword [ebp-424]
	fld	qword [ebp-424]
	fstp	dword [ebx+28]
	call	dword [_bbOnDebugLeaveScope]
_37:
	add	dword [ebp-112],1
_3157:
	cmp	dword [ebp-112],2
	jle	_39
_38:
	call	dword [_bbOnDebugLeaveScope]
_34:
	add	dword [ebp-108],1
_3154:
	cmp	dword [ebp-108],2
	jle	_36
_35:
	push	_3184
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],-1
	push	_3185
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-120],0
	mov	dword [ebp-120],0
	jmp	_3187
_42:
	mov	eax,ebp
	push	eax
	push	_3232
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3188
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-124],0
	mov	dword [ebp-124],0
	jmp	_3190
_45:
	mov	eax,ebp
	push	eax
	push	_3231
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3191
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-120]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_3192
	mov	eax,dword [ebp-124]
	cmp	eax,1
	sete	al
	movzx	eax,al
_3192:
	cmp	eax,0
	je	_3194
	mov	eax,ebp
	push	eax
	push	_3196
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3195
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_43
_3194:
	push	_3197
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-52],1
	push	_3198
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-128],0
	mov	dword [ebp-128],0
	jmp	_3200
_48:
	mov	eax,ebp
	push	eax
	push	_3229
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3201
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-132],0
	mov	dword [ebp-132],0
	jmp	_3203
_51:
	mov	eax,ebp
	push	eax
	push	_3228
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3204
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-128]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_3205
	mov	eax,dword [ebp-132]
	cmp	eax,1
	sete	al
	movzx	eax,al
_3205:
	cmp	eax,0
	je	_3207
	mov	eax,ebp
	push	eax
	push	_3209
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3208
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_49
_3207:
	push	_3210
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-60],1
	push	_3211
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-52]
	mov	eax,dword [ebp-48]
	imul	edx,dword [eax+24]
	mov	dword [ebp-296],edx
	mov	eax,dword [ebp-48]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-296],eax
	jb	_3213
	call	_brl_blitz_ArrayBoundsError
_3213:
	mov	dword [ebp-276],0
	mov	eax,dword [ebp-48]
	mov	eax,dword [eax+24]
	cmp	dword [ebp-276],eax
	jb	_3215
	call	_brl_blitz_ArrayBoundsError
_3215:
	mov	edx,dword [ebp-52]
	mov	eax,dword [ebp-48]
	imul	edx,dword [eax+24]
	mov	dword [ebp-264],edx
	mov	eax,dword [ebp-48]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-264],eax
	jb	_3217
	call	_brl_blitz_ArrayBoundsError
_3217:
	mov	dword [ebp-260],1
	mov	eax,dword [ebp-48]
	mov	eax,dword [eax+24]
	cmp	dword [ebp-260],eax
	jb	_3219
	call	_brl_blitz_ArrayBoundsError
_3219:
	mov	edx,dword [ebp-60]
	mov	eax,dword [ebp-56]
	imul	edx,dword [eax+24]
	mov	dword [ebp-240],edx
	mov	eax,dword [ebp-56]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-240],eax
	jb	_3221
	call	_brl_blitz_ArrayBoundsError
_3221:
	mov	edi,0
	mov	eax,dword [ebp-56]
	cmp	edi,dword [eax+24]
	jb	_3223
	call	_brl_blitz_ArrayBoundsError
_3223:
	mov	eax,dword [ebp-60]
	mov	edx,dword [ebp-56]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [ebp-56]
	cmp	esi,dword [eax+20]
	jb	_3225
	call	_brl_blitz_ArrayBoundsError
_3225:
	mov	ebx,1
	mov	eax,dword [ebp-56]
	cmp	ebx,dword [eax+24]
	jb	_3227
	call	_brl_blitz_ArrayBoundsError
_3227:
	push	0
	push	dword [ebp-44]
	mov	edx,dword [ebp-56]
	mov	eax,esi
	add	eax,ebx
	lea	eax,dword [edx+eax*4+28]
	push	eax
	mov	edx,dword [ebp-56]
	mov	eax,dword [ebp-240]
	add	eax,edi
	lea	eax,dword [edx+eax*4+28]
	push	eax
	push	dword [ebp-44]
	mov	edx,dword [ebp-48]
	mov	eax,dword [ebp-264]
	add	eax,dword [ebp-260]
	lea	eax,dword [edx+eax*4+28]
	push	eax
	mov	edx,dword [ebp-48]
	mov	eax,dword [ebp-296]
	add	eax,dword [ebp-276]
	lea	eax,dword [edx+eax*4+28]
	push	eax
	call	_bb_PushCollision
	add	esp,28
	call	dword [_bbOnDebugLeaveScope]
_49:
	add	dword [ebp-132],1
_3203:
	cmp	dword [ebp-132],2
	jle	_51
_50:
	call	dword [_bbOnDebugLeaveScope]
_46:
	add	dword [ebp-128],1
_3200:
	cmp	dword [ebp-128],2
	jle	_48
_47:
	push	_3230
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],-1
	call	dword [_bbOnDebugLeaveScope]
_43:
	add	dword [ebp-124],1
_3190:
	cmp	dword [ebp-124],2
	jle	_45
_44:
	call	dword [_bbOnDebugLeaveScope]
_40:
	add	dword [ebp-120],1
_3187:
	cmp	dword [ebp-120],2
	jle	_42
_41:
	push	_3233
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],-1
	push	_3234
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-136],0
	mov	dword [ebp-136],0
	jmp	_3236
_54:
	mov	eax,ebp
	push	eax
	push	_3328
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3237
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-140],0
	mov	dword [ebp-140],0
	jmp	_3239
_57:
	mov	eax,ebp
	push	eax
	push	_3327
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3240
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-136]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_3241
	mov	eax,dword [ebp-140]
	cmp	eax,1
	sete	al
	movzx	eax,al
_3241:
	cmp	eax,0
	je	_3243
	mov	eax,ebp
	push	eax
	push	_3245
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3244
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_55
_3243:
	push	_3246
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-52],1
	push	_3247
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-144],0
	mov	dword [ebp-144],0
	jmp	_3249
_60:
	mov	eax,ebp
	push	eax
	push	_3325
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3250
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-148],0
	mov	dword [ebp-148],0
	jmp	_3252
_63:
	mov	eax,ebp
	push	eax
	push	_3322
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3253
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-144]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_3254
	mov	eax,dword [ebp-148]
	cmp	eax,1
	sete	al
	movzx	eax,al
_3254:
	cmp	eax,0
	je	_3256
	mov	eax,ebp
	push	eax
	push	_3258
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3257
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_61
_3256:
	push	_3259
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-60],1
	push	_3260
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_6357]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-136]
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-236]
	fld	qword [_6358]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-140]
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-236]
	faddp	st1,st0
	fstp	qword [ebp-236]
	fld	qword [ebp-236]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [ebp-40]
	fmulp	st1,st0
	fstp	dword [ebp-152]
	push	_3262
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_6359]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-144]
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-228]
	fld	qword [_6360]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-148]
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-228]
	faddp	st1,st0
	fstp	qword [ebp-228]
	fld	qword [ebp-228]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [ebp-40]
	fmulp	st1,st0
	fstp	dword [ebp-156]
	push	_3264
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-52]
	mov	eax,dword [ebp-64]
	imul	esi,dword [eax+24]
	mov	eax,dword [ebp-64]
	cmp	esi,dword [eax+20]
	jb	_3266
	call	_brl_blitz_ArrayBoundsError
_3266:
	mov	ebx,0
	mov	eax,dword [ebp-64]
	cmp	ebx,dword [eax+24]
	jb	_3268
	call	_brl_blitz_ArrayBoundsError
_3268:
	mov	eax,dword [ebp-64]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	edx,dword [ebp-4]
	fld	dword [edx]
	fstp	dword [eax+28]
	push	_3270
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-52]
	mov	eax,dword [ebp-64]
	imul	esi,dword [eax+24]
	mov	eax,dword [ebp-64]
	cmp	esi,dword [eax+20]
	jb	_3272
	call	_brl_blitz_ArrayBoundsError
_3272:
	mov	ebx,1
	mov	eax,dword [ebp-64]
	cmp	ebx,dword [eax+24]
	jb	_3274
	call	_brl_blitz_ArrayBoundsError
_3274:
	mov	eax,dword [ebp-64]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	edx,dword [ebp-8]
	fld	dword [edx]
	fstp	dword [eax+28]
	push	_3276
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-60]
	mov	eax,dword [ebp-68]
	imul	esi,dword [eax+24]
	mov	eax,dword [ebp-68]
	cmp	esi,dword [eax+20]
	jb	_3278
	call	_brl_blitz_ArrayBoundsError
_3278:
	mov	ebx,0
	mov	eax,dword [ebp-68]
	cmp	ebx,dword [eax+24]
	jb	_3280
	call	_brl_blitz_ArrayBoundsError
_3280:
	mov	eax,dword [ebp-68]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	edx,dword [ebp-20]
	fld	dword [edx]
	fstp	dword [eax+28]
	push	_3282
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-60]
	mov	eax,dword [ebp-68]
	imul	esi,dword [eax+24]
	mov	eax,dword [ebp-68]
	cmp	esi,dword [eax+20]
	jb	_3284
	call	_brl_blitz_ArrayBoundsError
_3284:
	mov	ebx,1
	mov	eax,dword [ebp-68]
	cmp	ebx,dword [eax+24]
	jb	_3286
	call	_brl_blitz_ArrayBoundsError
_3286:
	mov	eax,dword [ebp-68]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	edx,dword [ebp-24]
	fld	dword [edx]
	fstp	dword [eax+28]
	push	_3288
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-52]
	mov	eax,dword [ebp-64]
	imul	edx,dword [eax+24]
	mov	dword [ebp-292],edx
	mov	eax,dword [ebp-64]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-292],eax
	jb	_3290
	call	_brl_blitz_ArrayBoundsError
_3290:
	mov	dword [ebp-280],0
	mov	eax,dword [ebp-64]
	mov	eax,dword [eax+24]
	cmp	dword [ebp-280],eax
	jb	_3292
	call	_brl_blitz_ArrayBoundsError
_3292:
	mov	edx,dword [ebp-52]
	mov	eax,dword [ebp-64]
	imul	edx,dword [eax+24]
	mov	dword [ebp-268],edx
	mov	eax,dword [ebp-64]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-268],eax
	jb	_3294
	call	_brl_blitz_ArrayBoundsError
_3294:
	mov	dword [ebp-256],1
	mov	eax,dword [ebp-64]
	mov	eax,dword [eax+24]
	cmp	dword [ebp-256],eax
	jb	_3296
	call	_brl_blitz_ArrayBoundsError
_3296:
	mov	edx,dword [ebp-52]
	mov	eax,dword [ebp-48]
	imul	edx,dword [eax+24]
	mov	dword [ebp-244],edx
	mov	eax,dword [ebp-48]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-244],eax
	jb	_3298
	call	_brl_blitz_ArrayBoundsError
_3298:
	mov	edi,0
	mov	eax,dword [ebp-48]
	cmp	edi,dword [eax+24]
	jb	_3300
	call	_brl_blitz_ArrayBoundsError
_3300:
	mov	eax,dword [ebp-52]
	mov	edx,dword [ebp-48]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [ebp-48]
	cmp	esi,dword [eax+20]
	jb	_3302
	call	_brl_blitz_ArrayBoundsError
_3302:
	mov	ebx,1
	mov	eax,dword [ebp-48]
	cmp	ebx,dword [eax+24]
	jb	_3304
	call	_brl_blitz_ArrayBoundsError
_3304:
	push	1
	push	dword [ebp-152]
	mov	edx,dword [ebp-48]
	mov	eax,esi
	add	eax,ebx
	lea	eax,dword [edx+eax*4+28]
	push	eax
	mov	edx,dword [ebp-48]
	mov	eax,dword [ebp-244]
	add	eax,edi
	lea	eax,dword [edx+eax*4+28]
	push	eax
	push	dword [ebp-152]
	mov	edx,dword [ebp-64]
	mov	eax,dword [ebp-268]
	add	eax,dword [ebp-256]
	lea	eax,dword [edx+eax*4+28]
	push	eax
	mov	edx,dword [ebp-64]
	mov	eax,dword [ebp-292]
	add	eax,dword [ebp-280]
	lea	eax,dword [edx+eax*4+28]
	push	eax
	call	_bb_PushCollision
	add	esp,28
	push	_3305
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-60]
	mov	eax,dword [ebp-68]
	imul	edx,dword [eax+24]
	mov	dword [ebp-288],edx
	mov	eax,dword [ebp-68]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-288],eax
	jb	_3307
	call	_brl_blitz_ArrayBoundsError
_3307:
	mov	dword [ebp-284],0
	mov	eax,dword [ebp-68]
	mov	eax,dword [eax+24]
	cmp	dword [ebp-284],eax
	jb	_3309
	call	_brl_blitz_ArrayBoundsError
_3309:
	mov	edx,dword [ebp-60]
	mov	eax,dword [ebp-68]
	imul	edx,dword [eax+24]
	mov	dword [ebp-272],edx
	mov	eax,dword [ebp-68]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-272],eax
	jb	_3311
	call	_brl_blitz_ArrayBoundsError
_3311:
	mov	dword [ebp-252],1
	mov	eax,dword [ebp-68]
	mov	eax,dword [eax+24]
	cmp	dword [ebp-252],eax
	jb	_3313
	call	_brl_blitz_ArrayBoundsError
_3313:
	mov	edx,dword [ebp-60]
	mov	eax,dword [ebp-56]
	imul	edx,dword [eax+24]
	mov	dword [ebp-248],edx
	mov	eax,dword [ebp-56]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-248],eax
	jb	_3315
	call	_brl_blitz_ArrayBoundsError
_3315:
	mov	edi,0
	mov	eax,dword [ebp-56]
	cmp	edi,dword [eax+24]
	jb	_3317
	call	_brl_blitz_ArrayBoundsError
_3317:
	mov	eax,dword [ebp-60]
	mov	edx,dword [ebp-56]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [ebp-56]
	cmp	esi,dword [eax+20]
	jb	_3319
	call	_brl_blitz_ArrayBoundsError
_3319:
	mov	ebx,1
	mov	eax,dword [ebp-56]
	cmp	ebx,dword [eax+24]
	jb	_3321
	call	_brl_blitz_ArrayBoundsError
_3321:
	push	1
	push	dword [ebp-156]
	mov	edx,dword [ebp-56]
	mov	eax,esi
	add	eax,ebx
	lea	eax,dword [edx+eax*4+28]
	push	eax
	mov	edx,dword [ebp-56]
	mov	eax,dword [ebp-248]
	add	eax,edi
	lea	eax,dword [edx+eax*4+28]
	push	eax
	push	dword [ebp-156]
	mov	edx,dword [ebp-68]
	mov	eax,dword [ebp-272]
	add	eax,dword [ebp-252]
	lea	eax,dword [edx+eax*4+28]
	push	eax
	mov	edx,dword [ebp-68]
	mov	eax,dword [ebp-288]
	add	eax,dword [ebp-284]
	lea	eax,dword [edx+eax*4+28]
	push	eax
	call	_bb_PushCollision
	add	esp,28
	call	dword [_bbOnDebugLeaveScope]
_61:
	add	dword [ebp-148],1
_3252:
	cmp	dword [ebp-148],2
	jle	_63
_62:
	call	dword [_bbOnDebugLeaveScope]
_58:
	add	dword [ebp-144],1
_3249:
	cmp	dword [ebp-144],2
	jle	_60
_59:
	push	_3326
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],-1
	call	dword [_bbOnDebugLeaveScope]
_55:
	add	dword [ebp-140],1
_3239:
	cmp	dword [ebp-140],2
	jle	_57
_56:
	call	dword [_bbOnDebugLeaveScope]
_52:
	add	dword [ebp-136],1
_3236:
	cmp	dword [ebp-136],2
	jle	_54
_53:
	push	_3329
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],-1
	push	_3330
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-72]
	fldz
	fstp	dword [ebp-76]
	push	_3333
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-160],0
	mov	dword [ebp-160],0
	jmp	_3335
_66:
	mov	eax,ebp
	push	eax
	push	_3357
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3336
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-164],0
	mov	dword [ebp-164],0
	jmp	_3338
_69:
	mov	eax,ebp
	push	eax
	push	_3356
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3339
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-160]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_3340
	mov	eax,dword [ebp-164]
	cmp	eax,1
	sete	al
	movzx	eax,al
_3340:
	cmp	eax,0
	je	_3342
	mov	eax,ebp
	push	eax
	push	_3344
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3343
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_67
_3342:
	push	_3345
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-52],1
	push	_3346
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	mov	eax,dword [ebp-64]
	imul	ebx,dword [eax+24]
	mov	eax,dword [ebp-64]
	cmp	ebx,dword [eax+20]
	jb	_3348
	call	_brl_blitz_ArrayBoundsError
_3348:
	mov	esi,0
	mov	eax,dword [ebp-64]
	cmp	esi,dword [eax+24]
	jb	_3350
	call	_brl_blitz_ArrayBoundsError
_3350:
	fld	dword [ebp-72]
	mov	eax,dword [ebp-64]
	add	ebx,esi
	fld	dword [eax+ebx*4+28]
	mov	eax,dword [ebp-4]
	fsub	dword [eax]
	faddp	st1,st0
	fstp	dword [ebp-72]
	push	_3351
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	mov	eax,dword [ebp-64]
	imul	ebx,dword [eax+24]
	mov	eax,dword [ebp-64]
	cmp	ebx,dword [eax+20]
	jb	_3353
	call	_brl_blitz_ArrayBoundsError
_3353:
	mov	esi,1
	mov	eax,dword [ebp-64]
	cmp	esi,dword [eax+24]
	jb	_3355
	call	_brl_blitz_ArrayBoundsError
_3355:
	fld	dword [ebp-76]
	mov	eax,dword [ebp-64]
	add	ebx,esi
	fld	dword [eax+ebx*4+28]
	mov	eax,dword [ebp-8]
	fsub	dword [eax]
	faddp	st1,st0
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
_67:
	add	dword [ebp-164],1
_3338:
	cmp	dword [ebp-164],2
	jle	_69
_68:
	call	dword [_bbOnDebugLeaveScope]
_64:
	add	dword [ebp-160],1
_3335:
	cmp	dword [ebp-160],2
	jle	_66
_65:
	push	_3358
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],-1
	push	_3359
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_3360
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_3361
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-4]
	mov	eax,dword [ebp-4]
	fld	dword [eax]
	fadd	dword [ebp-72]
	fstp	dword [edx]
	push	_3362
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-8]
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fadd	dword [ebp-76]
	fstp	dword [edx]
	push	_3363
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-80]
	fldz
	fstp	dword [ebp-84]
	push	_3366
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-168],0
	mov	dword [ebp-168],0
	jmp	_3368
_72:
	mov	eax,ebp
	push	eax
	push	_3390
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3369
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-172],0
	mov	dword [ebp-172],0
	jmp	_3371
_75:
	mov	eax,ebp
	push	eax
	push	_3389
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3372
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-168]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_3373
	mov	eax,dword [ebp-172]
	cmp	eax,1
	sete	al
	movzx	eax,al
_3373:
	cmp	eax,0
	je	_3375
	mov	eax,ebp
	push	eax
	push	_3377
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3376
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_73
_3375:
	push	_3378
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-60],1
	push	_3379
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-60]
	mov	eax,dword [ebp-68]
	imul	ebx,dword [eax+24]
	mov	eax,dword [ebp-68]
	cmp	ebx,dword [eax+20]
	jb	_3381
	call	_brl_blitz_ArrayBoundsError
_3381:
	mov	esi,0
	mov	eax,dword [ebp-68]
	cmp	esi,dword [eax+24]
	jb	_3383
	call	_brl_blitz_ArrayBoundsError
_3383:
	fld	dword [ebp-80]
	mov	eax,dword [ebp-68]
	add	ebx,esi
	fld	dword [eax+ebx*4+28]
	mov	eax,dword [ebp-20]
	fsub	dword [eax]
	faddp	st1,st0
	fstp	dword [ebp-80]
	push	_3384
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-60]
	mov	eax,dword [ebp-68]
	imul	ebx,dword [eax+24]
	mov	eax,dword [ebp-68]
	cmp	ebx,dword [eax+20]
	jb	_3386
	call	_brl_blitz_ArrayBoundsError
_3386:
	mov	esi,1
	mov	eax,dword [ebp-68]
	cmp	esi,dword [eax+24]
	jb	_3388
	call	_brl_blitz_ArrayBoundsError
_3388:
	fld	dword [ebp-84]
	mov	eax,dword [ebp-68]
	add	ebx,esi
	fld	dword [eax+ebx*4+28]
	mov	eax,dword [ebp-24]
	fsub	dword [eax]
	faddp	st1,st0
	fstp	dword [ebp-84]
	call	dword [_bbOnDebugLeaveScope]
_73:
	add	dword [ebp-172],1
_3371:
	cmp	dword [ebp-172],2
	jle	_75
_74:
	call	dword [_bbOnDebugLeaveScope]
_70:
	add	dword [ebp-168],1
_3368:
	cmp	dword [ebp-168],2
	jle	_72
_71:
	push	_3391
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],-1
	push	_3392
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_3393
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_3394
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-20]
	fld	dword [eax]
	fadd	dword [ebp-80]
	fstp	dword [edx]
	push	_3395
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-24]
	mov	eax,dword [ebp-24]
	fld	dword [eax]
	fadd	dword [ebp-84]
	fstp	dword [edx]
	push	_3396
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-88]
	push	_3398
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-176],0
	mov	dword [ebp-176],0
	jmp	_3400
_78:
	mov	eax,ebp
	push	eax
	push	_3465
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3401
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-180],0
	mov	dword [ebp-180],0
	jmp	_3403
_81:
	mov	eax,ebp
	push	eax
	push	_3460
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3404
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-176]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_3405
	mov	eax,dword [ebp-180]
	cmp	eax,1
	sete	al
	movzx	eax,al
_3405:
	cmp	eax,0
	je	_3407
	mov	eax,ebp
	push	eax
	push	_3409
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3408
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_79
_3407:
	push	_3410
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-52],1
	push	_3411
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-52]
	mov	eax,dword [ebp-48]
	imul	edx,dword [eax+24]
	mov	dword [ebp-460],edx
	mov	eax,dword [ebp-48]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-460],eax
	jb	_3413
	call	_brl_blitz_ArrayBoundsError
_3413:
	mov	edi,0
	mov	eax,dword [ebp-48]
	cmp	edi,dword [eax+24]
	jb	_3415
	call	_brl_blitz_ArrayBoundsError
_3415:
	mov	eax,dword [ebp-52]
	mov	edx,dword [ebp-48]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [ebp-48]
	cmp	esi,dword [eax+20]
	jb	_3417
	call	_brl_blitz_ArrayBoundsError
_3417:
	mov	ebx,1
	mov	eax,dword [ebp-48]
	cmp	ebx,dword [eax+24]
	jb	_3419
	call	_brl_blitz_ArrayBoundsError
_3419:
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	mov	edx,dword [ebp-48]
	mov	eax,esi
	add	eax,ebx
	fsub	dword [edx+eax*4+28]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-4]
	fld	dword [eax]
	mov	edx,dword [ebp-48]
	mov	eax,dword [ebp-460]
	add	eax,edi
	fsub	dword [edx+eax*4+28]
	sub	esp,4
	fstp	dword [esp]
	call	_bb_CalcWinkel
	add	esp,8
	fadd	dword [_6361]
	fstp	dword [ebp-184]
	push	_3421
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fstp	dword [ebp-368]
	mov	eax,dword [ebp-180]
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-176]
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,4
	fstp	dword [esp]
	call	_bb_CalcWinkel
	add	esp,8
	fld	dword [ebp-368]
	faddp	st1,st0
	fstp	dword [ebp-368]
	fld	dword [ebp-368]
	fadd	dword [_6362]
	fstp	dword [ebp-188]
	push	_3423
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-188]
	fsub	dword [ebp-184]
	fadd	dword [_6363]
	fstp	dword [ebp-192]
	push	_3425
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_82
_84:
	mov	eax,ebp
	push	eax
	push	_3427
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3426
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-192]
	fadd	dword [_6364]
	fstp	dword [ebp-192]
	call	dword [_bbOnDebugLeaveScope]
_82:
	fld	dword [ebp-192]
	fld	dword [_6365]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_84
_83:
	push	_3428
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_85
_87:
	mov	eax,ebp
	push	eax
	push	_3430
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3429
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-192]
	fsub	dword [_6366]
	fstp	dword [ebp-192]
	call	dword [_bbOnDebugLeaveScope]
_85:
	fld	dword [ebp-192]
	fld	dword [_6367]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_87
_86:
	push	_3431
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-176]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_3432
	mov	eax,dword [ebp-180]
	cmp	eax,0
	sete	al
	movzx	eax,al
_3432:
	cmp	eax,0
	jne	_3436
	mov	eax,dword [ebp-176]
	cmp	eax,2
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_3434
	mov	eax,dword [ebp-180]
	cmp	eax,2
	sete	al
	movzx	eax,al
_3434:
_3436:
	cmp	eax,0
	jne	_3444
	mov	eax,dword [ebp-176]
	cmp	eax,2
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_3438
	mov	eax,dword [ebp-180]
	cmp	eax,0
	sete	al
	movzx	eax,al
_3438:
	cmp	eax,0
	jne	_3442
	mov	eax,dword [ebp-176]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_3440
	mov	eax,dword [ebp-180]
	cmp	eax,2
	sete	al
	movzx	eax,al
_3440:
_3442:
_3444:
	cmp	eax,0
	je	_3446
	mov	eax,ebp
	push	eax
	push	_3448
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3447
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-88]
	fsub	dword [ebp-192]
	fstp	dword [ebp-88]
	call	dword [_bbOnDebugLeaveScope]
_3446:
	push	_3449
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_6368]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-176]
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-364]
	fld	qword [_6369]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-180]
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-364]
	faddp	st1,st0
	fstp	qword [ebp-364]
	fld	qword [ebp-364]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [ebp-40]
	fmulp	st1,st0
	fstp	dword [ebp-196]
	push	_3451
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-52]
	mov	eax,dword [ebp-48]
	imul	edx,dword [eax+24]
	mov	dword [ebp-468],edx
	mov	eax,dword [ebp-48]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-468],eax
	jb	_3453
	call	_brl_blitz_ArrayBoundsError
_3453:
	mov	dword [ebp-456],0
	mov	eax,dword [ebp-48]
	mov	eax,dword [eax+24]
	cmp	dword [ebp-456],eax
	jb	_3455
	call	_brl_blitz_ArrayBoundsError
_3455:
	mov	eax,dword [ebp-52]
	mov	edx,dword [ebp-48]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-48]
	cmp	edi,dword [eax+20]
	jb	_3457
	call	_brl_blitz_ArrayBoundsError
_3457:
	mov	esi,1
	mov	eax,dword [ebp-48]
	cmp	esi,dword [eax+24]
	jb	_3459
	call	_brl_blitz_ArrayBoundsError
_3459:
	mov	ebx,dword [ebp-16]
	mov	eax,dword [ebp-16]
	fld	dword [eax]
	fstp	qword [ebp-416]
	fld	qword [_6370]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-4]
	fld	dword [eax]
	mov	edx,dword [ebp-48]
	mov	eax,dword [ebp-468]
	add	eax,dword [ebp-456]
	fsub	dword [edx+eax*4+28]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-344]
	fld	qword [_6371]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	mov	edx,dword [ebp-48]
	mov	eax,edi
	add	eax,esi
	fsub	dword [edx+eax*4+28]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-344]
	faddp	st1,st0
	fstp	qword [ebp-344]
	fld	qword [ebp-344]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [ebp-196]
	fdivp	st1,st0
	fld	qword [ebp-416]
	fmulp	st1,st0
	fstp	qword [ebp-416]
	fld	qword [ebp-416]
	fstp	dword [ebx]
	call	dword [_bbOnDebugLeaveScope]
_79:
	add	dword [ebp-180],1
_3403:
	cmp	dword [ebp-180],2
	jle	_81
_80:
	call	dword [_bbOnDebugLeaveScope]
_76:
	add	dword [ebp-176],1
_3400:
	cmp	dword [ebp-176],2
	jle	_78
_77:
	push	_3466
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],-1
	push	_3467
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-12]
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fadd	dword [ebp-88]
	fstp	dword [edx]
	push	_3468
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-92]
	push	_3470
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-200],0
	mov	dword [ebp-200],0
	jmp	_3472
_90:
	mov	eax,ebp
	push	eax
	push	_3533
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3473
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-204],0
	mov	dword [ebp-204],0
	jmp	_3475
_93:
	mov	eax,ebp
	push	eax
	push	_3532
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3476
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-200]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_3477
	mov	eax,dword [ebp-204]
	cmp	eax,1
	sete	al
	movzx	eax,al
_3477:
	cmp	eax,0
	je	_3479
	mov	eax,ebp
	push	eax
	push	_3481
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3480
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_91
_3479:
	push	_3482
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-60],1
	push	_3483
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-60]
	mov	eax,dword [ebp-56]
	imul	edx,dword [eax+24]
	mov	dword [ebp-464],edx
	mov	eax,dword [ebp-56]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-464],eax
	jb	_3485
	call	_brl_blitz_ArrayBoundsError
_3485:
	mov	edi,0
	mov	eax,dword [ebp-56]
	cmp	edi,dword [eax+24]
	jb	_3487
	call	_brl_blitz_ArrayBoundsError
_3487:
	mov	eax,dword [ebp-60]
	mov	edx,dword [ebp-56]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [ebp-56]
	cmp	esi,dword [eax+20]
	jb	_3489
	call	_brl_blitz_ArrayBoundsError
_3489:
	mov	ebx,1
	mov	eax,dword [ebp-56]
	cmp	ebx,dword [eax+24]
	jb	_3491
	call	_brl_blitz_ArrayBoundsError
_3491:
	mov	eax,dword [ebp-24]
	fld	dword [eax]
	mov	edx,dword [ebp-56]
	mov	eax,esi
	add	eax,ebx
	fsub	dword [edx+eax*4+28]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-20]
	fld	dword [eax]
	mov	edx,dword [ebp-56]
	mov	eax,dword [ebp-464]
	add	eax,edi
	fsub	dword [edx+eax*4+28]
	sub	esp,4
	fstp	dword [esp]
	call	_bb_CalcWinkel
	add	esp,8
	fadd	dword [_6372]
	fstp	dword [ebp-208]
	push	_3493
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	fld	dword [eax]
	fstp	dword [ebp-356]
	mov	eax,dword [ebp-204]
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-200]
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,4
	fstp	dword [esp]
	call	_bb_CalcWinkel
	add	esp,8
	fld	dword [ebp-356]
	faddp	st1,st0
	fstp	dword [ebp-356]
	fld	dword [ebp-356]
	fadd	dword [_6373]
	fstp	dword [ebp-212]
	push	_3495
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-212]
	fsub	dword [ebp-208]
	fadd	dword [_6374]
	fstp	dword [ebp-216]
	push	_3497
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_94
_96:
	mov	eax,ebp
	push	eax
	push	_3499
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3498
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-216]
	fadd	dword [_6375]
	fstp	dword [ebp-216]
	call	dword [_bbOnDebugLeaveScope]
_94:
	fld	dword [ebp-216]
	fld	dword [_6376]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_96
_95:
	push	_3500
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_97
_99:
	mov	eax,ebp
	push	eax
	push	_3502
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3501
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-216]
	fsub	dword [_6377]
	fstp	dword [ebp-216]
	call	dword [_bbOnDebugLeaveScope]
_97:
	fld	dword [ebp-216]
	fld	dword [_6378]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_99
_98:
	push	_3503
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-200]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_3504
	mov	eax,dword [ebp-204]
	cmp	eax,0
	sete	al
	movzx	eax,al
_3504:
	cmp	eax,0
	jne	_3508
	mov	eax,dword [ebp-200]
	cmp	eax,2
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_3506
	mov	eax,dword [ebp-204]
	cmp	eax,2
	sete	al
	movzx	eax,al
_3506:
_3508:
	cmp	eax,0
	jne	_3516
	mov	eax,dword [ebp-200]
	cmp	eax,2
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_3510
	mov	eax,dword [ebp-204]
	cmp	eax,0
	sete	al
	movzx	eax,al
_3510:
	cmp	eax,0
	jne	_3514
	mov	eax,dword [ebp-200]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_3512
	mov	eax,dword [ebp-204]
	cmp	eax,2
	sete	al
	movzx	eax,al
_3512:
_3514:
_3516:
	cmp	eax,0
	je	_3518
	mov	eax,ebp
	push	eax
	push	_3520
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3519
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-92]
	fsub	dword [ebp-216]
	fstp	dword [ebp-92]
	call	dword [_bbOnDebugLeaveScope]
_3518:
	push	_3521
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [_6379]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-200]
	sub	eax,1
	imul	eax,15
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-352]
	fld	qword [_6380]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-204]
	sub	eax,1
	imul	eax,22
	mov	dword [ebp+-484],eax
	fild	dword [ebp+-484]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-352]
	faddp	st1,st0
	fstp	qword [ebp-352]
	fld	qword [ebp-352]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [ebp-40]
	fmulp	st1,st0
	fstp	dword [ebp-220]
	push	_3523
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-60]
	mov	eax,dword [ebp-56]
	imul	edx,dword [eax+24]
	mov	dword [ebp-472],edx
	mov	eax,dword [ebp-56]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-472],eax
	jb	_3525
	call	_brl_blitz_ArrayBoundsError
_3525:
	mov	dword [ebp-452],0
	mov	eax,dword [ebp-56]
	mov	eax,dword [eax+24]
	cmp	dword [ebp-452],eax
	jb	_3527
	call	_brl_blitz_ArrayBoundsError
_3527:
	mov	eax,dword [ebp-60]
	mov	edx,dword [ebp-56]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-56]
	cmp	edi,dword [eax+20]
	jb	_3529
	call	_brl_blitz_ArrayBoundsError
_3529:
	mov	esi,1
	mov	eax,dword [ebp-56]
	cmp	esi,dword [eax+24]
	jb	_3531
	call	_brl_blitz_ArrayBoundsError
_3531:
	mov	ebx,dword [ebp-32]
	mov	eax,dword [ebp-32]
	fld	dword [eax]
	fstp	qword [ebp-408]
	fld	qword [_6381]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-20]
	fld	dword [eax]
	mov	edx,dword [ebp-56]
	mov	eax,dword [ebp-472]
	add	eax,dword [ebp-452]
	fsub	dword [edx+eax*4+28]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-336]
	fld	qword [_6382]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-24]
	fld	dword [eax]
	mov	edx,dword [ebp-56]
	mov	eax,edi
	add	eax,esi
	fsub	dword [edx+eax*4+28]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-336]
	faddp	st1,st0
	fstp	qword [ebp-336]
	fld	qword [ebp-336]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fld	dword [ebp-220]
	fdivp	st1,st0
	fld	qword [ebp-408]
	fmulp	st1,st0
	fstp	qword [ebp-408]
	fld	qword [ebp-408]
	fstp	dword [ebx]
	call	dword [_bbOnDebugLeaveScope]
_91:
	add	dword [ebp-204],1
_3475:
	cmp	dword [ebp-204],2
	jle	_93
_92:
	call	dword [_bbOnDebugLeaveScope]
_88:
	add	dword [ebp-200],1
_3472:
	cmp	dword [ebp-200],2
	jle	_90
_89:
	push	_3534
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],-1
	push	_3535
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-28]
	mov	eax,dword [ebp-28]
	fld	dword [eax]
	fadd	dword [ebp-92]
	fstp	dword [edx]
	call	dword [_bbOnDebugLeaveScope]
_3100:
	mov	ebx,0
	jmp	_397
_397:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_BufferTower:
	push	ebp
	mov	ebp,esp
	sub	esp,28
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	fldz
	fstp	dword [ebp-16]
	fldz
	fstp	dword [ebp-20]
	mov	dword [ebp-24],0
	push	ebp
	push	_3584
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3558
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fsub	dword [ebp-8]
	fadd	dword [_6496]
	fstp	dword [ebp-16]
	push	_3560
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_100
_102:
	push	ebp
	push	_3562
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3561
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fadd	dword [_6497]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
_100:
	fld	dword [ebp-16]
	fld	dword [_6498]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_102
_101:
	push	_3563
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_103
_105:
	push	ebp
	push	_3565
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3564
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fsub	dword [_6499]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
_103:
	fld	dword [ebp-16]
	fld	dword [_6500]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_105
_104:
	push	_3566
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-20]
	mov	dword [ebp-24],0
	push	_3569
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fld	dword [ebp-12]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_3570
	push	ebp
	push	_3573
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3571
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fchs
	fstp	dword [ebp-20]
	push	_3572
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],1
	call	dword [_bbOnDebugLeaveScope]
_3570:
	push	_3574
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fld	dword [ebp-12]
	fchs
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_3575
	push	ebp
	push	_3578
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3576
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fstp	dword [ebp-20]
	push	_3577
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],1
	call	dword [_bbOnDebugLeaveScope]
_3575:
	push	_3579
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-24],0
	jne	_3580
	push	ebp
	push	_3582
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3581
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fchs
	fstp	dword [ebp-20]
	call	dword [_bbOnDebugLeaveScope]
_3580:
	push	_3583
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-20]
	fstp	dword [ebp-28]
	jmp	_402
_402:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-28]
	mov	esp,ebp
	pop	ebp
	ret
_bb_BufferTarget:
	push	ebp
	mov	ebp,esp
	sub	esp,28
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	fldz
	fstp	dword [ebp-16]
	fldz
	fstp	dword [ebp-20]
	mov	dword [ebp-24],0
	push	ebp
	push	_3615
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3591
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fsub	dword [ebp-8]
	fadd	dword [_6508]
	fstp	dword [ebp-16]
	push	_3593
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_106
_108:
	push	ebp
	push	_3595
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3594
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fadd	dword [_6509]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
_106:
	fld	dword [ebp-16]
	fld	dword [_6510]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_108
_107:
	push	_3596
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_109
_111:
	push	ebp
	push	_3598
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3597
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fsub	dword [_6511]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
_109:
	fld	dword [ebp-16]
	fld	dword [_6512]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_111
_110:
	push	_3599
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-20]
	mov	dword [ebp-24],0
	push	_3602
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fld	dword [ebp-12]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_3603
	push	ebp
	push	_3605
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3604
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],1
	call	dword [_bbOnDebugLeaveScope]
_3603:
	push	_3606
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fld	dword [ebp-12]
	fchs
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_3607
	push	ebp
	push	_3609
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3608
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],1
	call	dword [_bbOnDebugLeaveScope]
_3607:
	push	_3610
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-24],0
	jne	_3611
	push	ebp
	push	_3613
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3612
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-20]
	call	dword [_bbOnDebugLeaveScope]
_3611:
	push	_3614
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-20]
	fstp	dword [ebp-28]
	jmp	_407
_407:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-28]
	mov	esp,ebp
	pop	ebp
	ret
_bb_CalcWinkel:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fldz
	fstp	dword [ebp-12]
	push	ebp
	push	_3627
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3618
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-8]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebp-4]
	sub	esp,8
	fstp	qword [esp]
	call	_bbATan2
	add	esp,16
	fchs
	fstp	dword [ebp-12]
	push	_3620
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_112
_114:
	push	ebp
	push	_3622
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3621
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fadd	dword [_6520]
	fstp	dword [ebp-12]
	call	dword [_bbOnDebugLeaveScope]
_112:
	fld	dword [ebp-12]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_114
_113:
	push	_3623
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_115
_117:
	push	ebp
	push	_3625
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3624
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fsub	dword [_6521]
	fstp	dword [ebp-12]
	call	dword [_bbOnDebugLeaveScope]
_115:
	fld	dword [ebp-12]
	fld	dword [_6522]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_117
_116:
	push	_3626
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fstp	dword [ebp-16]
	jmp	_411
_411:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-16]
	mov	esp,ebp
	pop	ebp
	ret
_bb_waypointtodest:
	push	ebp
	mov	ebp,esp
	sub	esp,72
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-24],_bbNullObject
	mov	dword [ebp-28],0
	fldz
	fstp	dword [ebp-32]
	fldz
	fstp	dword [ebp-16]
	mov	dword [ebp-20],0
	mov	eax,ebp
	push	eax
	push	_3748
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3629
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbNullObject
	push	_3631
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	mov	eax,dword [_bb_waypointlist]
	mov	dword [ebp-64],eax
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_3635
	call	_brl_blitz_NullObjectError
_3635:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-68],eax
	jmp	_118
_120:
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_3640
	call	_brl_blitz_NullObjectError
_3640:
	push	_bb_Twaypoint
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-24],eax
	cmp	dword [ebp-24],_bbNullObject
	je	_118
	mov	eax,ebp
	push	eax
	push	_3703
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3641
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_3643
	call	_brl_blitz_NullObjectError
_3643:
	mov	dword [ebx+16],9999
	push	_3645
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_3647
	call	_brl_blitz_NullObjectError
_3647:
	fldz
	fstp	dword [ebx+32]
	push	_3649
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_3651
	call	_brl_blitz_NullObjectError
_3651:
	cmp	dword [ebx+28],1
	jne	_3652
	mov	eax,ebp
	push	eax
	push	_3701
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3653
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_3655
	call	_brl_blitz_NullObjectError
_3655:
	mov	dword [ebx+28],0
	push	_3657
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	push	_3659
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_3661
	call	_brl_blitz_NullObjectError
_3661:
	mov	dword [ebp-48],ebx
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_3664
	call	_brl_blitz_NullObjectError
_3664:
	mov	eax,dword [ebx+36]
	mov	dword [ebp-56],eax
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_3667
	call	_brl_blitz_NullObjectError
_3667:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-52],eax
	jmp	_121
_123:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_3672
	call	_brl_blitz_NullObjectError
_3672:
	push	_bb_Twaypoint
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp-48]
	mov	eax,dword [eax+20]
	dec	dword [eax+4]
	jnz	_3676
	push	eax
	call	_bbGCFree
	add	esp,4
_3676:
	mov	eax,dword [ebp-48]
	mov	dword [eax+20],ebx
	mov	eax,dword [ebp-48]
	cmp	dword [eax+20],_bbNullObject
	je	_121
	mov	eax,ebp
	push	eax
	push	_3699
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3677
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	mov	dword [ebp-44],eax
	cmp	dword [ebp-44],_bbNullObject
	jne	_3679
	call	_brl_blitz_NullObjectError
_3679:
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_3681
	call	_brl_blitz_NullObjectError
_3681:
	mov	edi,dword [ebx+20]
	cmp	edi,_bbNullObject
	jne	_3683
	call	_brl_blitz_NullObjectError
_3683:
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_3685
	call	_brl_blitz_NullObjectError
_3685:
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_3687
	call	_brl_blitz_NullObjectError
_3687:
	mov	esi,dword [esi+20]
	cmp	esi,_bbNullObject
	jne	_3689
	call	_brl_blitz_NullObjectError
_3689:
	fld	qword [_6527]
	sub	esp,8
	fstp	qword [esp]
	mov	eax,dword [ebp-44]
	fld	dword [eax+8]
	fsub	dword [edi+8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fstp	qword [ebp-40]
	fld	qword [_6528]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebx+12]
	fsub	dword [esi+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatPow
	add	esp,16
	fld	qword [ebp-40]
	faddp	st1,st0
	fstp	qword [ebp-40]
	fld	qword [ebp-40]
	sub	esp,8
	fstp	qword [esp]
	call	_bbSqr
	add	esp,8
	fstp	dword [ebp-32]
	push	_3691
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_3693
	call	_brl_blitz_NullObjectError
_3693:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-28]
	cmp	ebx,dword [esi+20]
	jb	_3696
	call	_brl_blitz_ArrayBoundsError
_3696:
	shl	ebx,2
	add	esi,ebx
	fld	dword [ebp-32]
	fstp	dword [esi+24]
	push	_3698
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-28],1
	call	dword [_bbOnDebugLeaveScope]
_121:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_3670
	call	_brl_blitz_NullObjectError
_3670:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_123
_122:
	call	dword [_bbOnDebugLeaveScope]
_3652:
	call	dword [_bbOnDebugLeaveScope]
_118:
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_3638
	call	_brl_blitz_NullObjectError
_3638:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_120
_119:
	push	_3705
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	cmp	dword [ebp-4],eax
	jne	_3706
	mov	eax,ebp
	push	eax
	push	_3708
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3707
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_415
_3706:
	push	_3709
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	push	dword [ebp-8]
	call	_bb_wayray
	fstp	st0
	add	esp,8
	push	_3710
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_6529]
	fstp	dword [ebp-16]
	mov	dword [ebp-20],0
	push	_3713
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3715
	call	_brl_blitz_NullObjectError
_3715:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3718
	call	_brl_blitz_NullObjectError
_3718:
	mov	eax,dword [esi+36]
	mov	dword [ebp-60],eax
	mov	esi,dword [ebp-60]
	cmp	esi,_bbNullObject
	jne	_3721
	call	_brl_blitz_NullObjectError
_3721:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_124
_126:
	mov	esi,edi
	cmp	esi,_bbNullObject
	jne	_3726
	call	_brl_blitz_NullObjectError
_3726:
	push	_bb_Twaypoint
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_3730
	push	eax
	call	_bbGCFree
	add	esp,4
_3730:
	mov	dword [ebx+20],esi
	cmp	dword [ebx+20],_bbNullObject
	je	_124
	mov	eax,ebp
	push	eax
	push	_3746
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3731
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3733
	call	_brl_blitz_NullObjectError
_3733:
	mov	esi,dword [esi+20]
	cmp	esi,_bbNullObject
	jne	_3735
	call	_brl_blitz_NullObjectError
_3735:
	mov	eax,dword [esi+16]
	mov	dword [ebp+-72],eax
	fild	dword [ebp+-72]
	fld	dword [ebp-16]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_3736
	mov	eax,ebp
	push	eax
	push	_3745
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3737
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3739
	call	_brl_blitz_NullObjectError
_3739:
	mov	eax,dword [esi+20]
	mov	dword [ebp-12],eax
	push	_3740
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3742
	call	_brl_blitz_NullObjectError
_3742:
	mov	esi,dword [esi+20]
	cmp	esi,_bbNullObject
	jne	_3744
	call	_brl_blitz_NullObjectError
_3744:
	mov	eax,dword [esi+16]
	mov	dword [ebp+-72],eax
	fild	dword [ebp+-72]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
_3736:
	call	dword [_bbOnDebugLeaveScope]
_124:
	mov	esi,edi
	cmp	esi,_bbNullObject
	jne	_3724
	call	_brl_blitz_NullObjectError
_3724:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_126
_125:
	push	_3747
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	jmp	_415
_415:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_wayray:
	push	ebp
	mov	ebp,esp
	sub	esp,72
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	mov	dword [ebp-12],_bbEmptyArray
	mov	dword [ebp-16],0
	fldz
	fstp	dword [ebp-20]
	mov	dword [ebp-24],0
	mov	dword [ebp-28],0
	mov	eax,ebp
	push	eax
	push	_3930
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3755
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3757
	call	_brl_blitz_NullObjectError
_3757:
	fld1
	fstp	dword [ebx+32]
	push	_3759
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-8]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_3760
	mov	eax,ebp
	push	eax
	push	_3765
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3761
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3763
	call	_brl_blitz_NullObjectError
_3763:
	fld	dword [ebp-8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebx+16],eax
	call	dword [_bbOnDebugLeaveScope]
_3760:
	push	_3766
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	16
	push	_3767
	call	_bbArrayNew1D
	add	esp,8
	mov	dword [ebp-12],eax
	push	_3769
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	push	_3771
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3773
	call	_brl_blitz_NullObjectError
_3773:
	mov	dword [ebp-60],ebx
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3776
	call	_brl_blitz_NullObjectError
_3776:
	mov	eax,dword [ebx+36]
	mov	dword [ebp-68],eax
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_3779
	call	_brl_blitz_NullObjectError
_3779:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-64],eax
	jmp	_127
_129:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_3784
	call	_brl_blitz_NullObjectError
_3784:
	push	_bb_Twaypoint
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp-60]
	mov	eax,dword [eax+20]
	dec	dword [eax+4]
	jnz	_3788
	push	eax
	call	_bbGCFree
	add	esp,4
_3788:
	mov	eax,dword [ebp-60]
	mov	dword [eax+20],ebx
	mov	eax,dword [ebp-60]
	cmp	dword [eax+20],_bbNullObject
	je	_127
	mov	eax,ebp
	push	eax
	push	_3834
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3789
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3791
	call	_brl_blitz_NullObjectError
_3791:
	mov	edi,dword [ebx+20]
	cmp	edi,_bbNullObject
	jne	_3793
	call	_brl_blitz_NullObjectError
_3793:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3795
	call	_brl_blitz_NullObjectError
_3795:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_3798
	call	_brl_blitz_ArrayBoundsError
_3798:
	mov	eax,dword [edi+16]
	mov	dword [ebp+-72],eax
	fild	dword [ebp+-72]
	fld	dword [esi+ebx*4+24]
	fadd	dword [ebp-8]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_3799
	mov	eax,ebp
	push	eax
	push	_3832
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3800
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3802
	call	_brl_blitz_NullObjectError
_3802:
	mov	eax,dword [ebx+20]
	cmp	dword [ebp-4],eax
	je	_3803
	mov	eax,ebp
	push	eax
	push	_3831
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3804
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3806
	call	_brl_blitz_NullObjectError
_3806:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_3808
	call	_brl_blitz_NullObjectError
_3808:
	mov	edi,ebx
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3811
	call	_brl_blitz_NullObjectError
_3811:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_3814
	call	_brl_blitz_ArrayBoundsError
_3814:
	fld	dword [esi+ebx*4+24]
	fadd	dword [ebp-8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [edi+16],eax
	push	_3815
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3817
	call	_brl_blitz_NullObjectError
_3817:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_3819
	call	_brl_blitz_NullObjectError
_3819:
	fld	dword [ebx+32]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_3820
	mov	eax,ebp
	push	eax
	push	_3830
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3821
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_3823
	call	_brl_blitz_ArrayBoundsError
_3823:
	mov	eax,dword [ebp-12]
	shl	ebx,2
	add	eax,ebx
	mov	edi,eax
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3826
	call	_brl_blitz_NullObjectError
_3826:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_3829
	call	_brl_blitz_ArrayBoundsError
_3829:
	fld	dword [esi+ebx*4+24]
	fadd	dword [ebp-8]
	fstp	dword [edi+24]
	call	dword [_bbOnDebugLeaveScope]
_3820:
	call	dword [_bbOnDebugLeaveScope]
_3803:
	call	dword [_bbOnDebugLeaveScope]
_3799:
	push	_3833
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-16],1
	call	dword [_bbOnDebugLeaveScope]
_127:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_3782
	call	_brl_blitz_NullObjectError
_3782:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_129
_128:
	push	_3835
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_6570]
	fstp	dword [ebp-20]
	mov	dword [ebp-24],-1
	push	_3838
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	mov	dword [ebp-28],0
	jmp	_3840
_132:
	mov	eax,ebp
	push	eax
	push	_3854
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3841
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_3843
	call	_brl_blitz_ArrayBoundsError
_3843:
	mov	eax,dword [ebp-12]
	fld	dword [eax+ebx*4+24]
	fld	dword [ebp-20]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	je	_3846
	mov	ebx,dword [ebp-28]
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_3845
	call	_brl_blitz_ArrayBoundsError
_3845:
	mov	eax,dword [ebp-12]
	fld	dword [eax+ebx*4+24]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
_3846:
	cmp	eax,0
	je	_3848
	mov	eax,ebp
	push	eax
	push	_3853
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3849
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	mov	dword [ebp-24],eax
	push	_3850
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_3852
	call	_brl_blitz_ArrayBoundsError
_3852:
	mov	eax,dword [ebp-12]
	fld	dword [eax+ebx*4+24]
	fstp	dword [ebp-20]
	call	dword [_bbOnDebugLeaveScope]
_3848:
	call	dword [_bbOnDebugLeaveScope]
_130:
	add	dword [ebp-28],1
_3840:
	cmp	dword [ebp-28],15
	jle	_132
_131:
	push	_3856
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	push	_3857
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3859
	call	_brl_blitz_NullObjectError
_3859:
	mov	dword [ebp-36],ebx
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3862
	call	_brl_blitz_NullObjectError
_3862:
	mov	eax,dword [ebx+36]
	mov	dword [ebp-48],eax
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_3865
	call	_brl_blitz_NullObjectError
_3865:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-44],eax
	jmp	_133
_135:
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_3870
	call	_brl_blitz_NullObjectError
_3870:
	push	_bb_Twaypoint
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp-36]
	mov	eax,dword [eax+20]
	dec	dword [eax+4]
	jnz	_3874
	push	eax
	call	_bbGCFree
	add	esp,4
_3874:
	mov	eax,dword [ebp-36]
	mov	dword [eax+20],ebx
	mov	eax,dword [ebp-36]
	cmp	dword [eax+20],_bbNullObject
	je	_133
	mov	eax,ebp
	push	eax
	push	_3887
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3875
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	cmp	dword [ebp-24],eax
	jne	_3876
	mov	eax,ebp
	push	eax
	push	_3885
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3877
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_3879
	call	_brl_blitz_NullObjectError
_3879:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3881
	call	_brl_blitz_NullObjectError
_3881:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_3884
	call	_brl_blitz_ArrayBoundsError
_3884:
	fld	dword [esi+ebx*4+24]
	fadd	dword [ebp-8]
	sub	esp,4
	fstp	dword [esp]
	push	dword [edi+20]
	call	_bb_wayray
	fstp	st0
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_3876:
	push	_3886
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-16],1
	call	dword [_bbOnDebugLeaveScope]
_133:
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_3868
	call	_brl_blitz_NullObjectError
_3868:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_135
_134:
	push	_3888
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	push	_3889
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3891
	call	_brl_blitz_NullObjectError
_3891:
	mov	dword [ebp-40],ebx
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3894
	call	_brl_blitz_NullObjectError
_3894:
	mov	eax,dword [ebx+36]
	mov	dword [ebp-56],eax
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_3897
	call	_brl_blitz_NullObjectError
_3897:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-52],eax
	jmp	_136
_138:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_3902
	call	_brl_blitz_NullObjectError
_3902:
	push	_bb_Twaypoint
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp-40]
	mov	eax,dword [eax+20]
	dec	dword [eax+4]
	jnz	_3906
	push	eax
	call	_bbGCFree
	add	esp,4
_3906:
	mov	eax,dword [ebp-40]
	mov	dword [eax+20],ebx
	mov	eax,dword [ebp-40]
	cmp	dword [eax+20],_bbNullObject
	je	_136
	mov	eax,ebp
	push	eax
	push	_3926
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3907
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	cmp	dword [ebp-24],eax
	je	_3908
	mov	eax,ebp
	push	eax
	push	_3924
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3909
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3911
	call	_brl_blitz_NullObjectError
_3911:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_3913
	call	_brl_blitz_NullObjectError
_3913:
	fld	dword [ebx+32]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_3914
	mov	eax,ebp
	push	eax
	push	_3923
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3915
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_3917
	call	_brl_blitz_NullObjectError
_3917:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3919
	call	_brl_blitz_NullObjectError
_3919:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_3922
	call	_brl_blitz_ArrayBoundsError
_3922:
	fld	dword [esi+ebx*4+24]
	fadd	dword [ebp-8]
	sub	esp,4
	fstp	dword [esp]
	push	dword [edi+20]
	call	_bb_wayray
	fstp	st0
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_3914:
	call	dword [_bbOnDebugLeaveScope]
_3908:
	push	_3925
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-16],1
	call	dword [_bbOnDebugLeaveScope]
_136:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_3900
	call	_brl_blitz_NullObjectError
_3900:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_138
_137:
	push	_3927
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3929
	call	_brl_blitz_NullObjectError
_3929:
	mov	eax,dword [ebx+16]
	mov	dword [ebp+-72],eax
	fild	dword [ebp+-72]
	fstp	dword [ebp-32]
	jmp	_419
_419:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-32]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_maptodest:
	push	ebp
	mov	ebp,esp
	sub	esp,96
	push	ebx
	push	esi
	push	edi
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	fld	dword [ebp+20]
	fstp	dword [ebp-16]
	mov	eax,dword [ebp+24]
	mov	dword [ebp-20],eax
	mov	eax,dword [ebp+28]
	mov	dword [ebp-24],eax
	mov	eax,dword [ebp+32]
	mov	dword [ebp-28],eax
	fldz
	fstp	dword [ebp-32]
	mov	dword [ebp-36],_bbEmptyArray
	mov	dword [ebp-48],0
	mov	dword [ebp-52],0
	fldz
	fstp	dword [ebp-40]
	mov	dword [ebp-44],0
	mov	dword [ebp-56],0
	mov	dword [ebp-60],0
	mov	dword [ebp-64],0
	mov	dword [ebp-68],0
	mov	eax,ebp
	push	eax
	push	_4126
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3936
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_6630]
	fstp	dword [ebp-32]
	push	_3938
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	3
	mov	eax,dword [ebp-28]
	add	eax,1
	push	eax
	mov	eax,dword [ebp-24]
	add	eax,1
	push	eax
	push	3
	push	_3939
	call	_bbArrayNew
	add	esp,20
	mov	dword [ebp-36],eax
	push	_3941
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],0
	mov	dword [ebp-48],0
	mov	eax,dword [ebp-24]
	mov	dword [ebp-92],eax
	jmp	_3943
_141:
	mov	eax,ebp
	push	eax
	push	_3970
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3945
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],0
	mov	dword [ebp-52],0
	mov	eax,dword [ebp-28]
	mov	dword [ebp-84],eax
	jmp	_3947
_144:
	mov	eax,ebp
	push	eax
	push	_3969
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3949
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-48]
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-36]
	cmp	edi,dword [eax+20]
	jb	_3951
	call	_brl_blitz_ArrayBoundsError
_3951:
	mov	eax,dword [ebp-52]
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-36]
	cmp	esi,dword [eax+24]
	jb	_3953
	call	_brl_blitz_ArrayBoundsError
_3953:
	mov	ebx,2
	mov	eax,dword [ebp-36]
	cmp	ebx,dword [eax+28]
	jb	_3955
	call	_brl_blitz_ArrayBoundsError
_3955:
	mov	eax,dword [ebp-36]
	mov	edx,edi
	add	edx,esi
	add	edx,ebx
	shl	edx,2
	add	eax,edx
	mov	edi,eax
	mov	eax,dword [ebp-48]
	mov	edx,dword [ebp-20]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+20]
	jb	_3958
	call	_brl_blitz_ArrayBoundsError
_3958:
	mov	ebx,dword [ebp-52]
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+24]
	jb	_3960
	call	_brl_blitz_ArrayBoundsError
_3960:
	mov	eax,dword [ebp-20]
	mov	edx,dword [eax]
	mov	eax,esi
	add	eax,ebx
	mov	eax,dword [edx+eax*4+28]
	mov	dword [edi+32],eax
	push	_3961
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-48]
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-36]
	cmp	edi,dword [eax+20]
	jb	_3963
	call	_brl_blitz_ArrayBoundsError
_3963:
	mov	eax,dword [ebp-52]
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-36]
	cmp	esi,dword [eax+24]
	jb	_3965
	call	_brl_blitz_ArrayBoundsError
_3965:
	mov	ebx,1
	mov	eax,dword [ebp-36]
	cmp	ebx,dword [eax+28]
	jb	_3967
	call	_brl_blitz_ArrayBoundsError
_3967:
	mov	edx,dword [ebp-36]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	shl	eax,2
	add	edx,eax
	mov	dword [edx+32],9999
	call	dword [_bbOnDebugLeaveScope]
_142:
	add	dword [ebp-52],1
_3947:
	mov	eax,dword [ebp-84]
	cmp	dword [ebp-52],eax
	jle	_144
_143:
	call	dword [_bbOnDebugLeaveScope]
_139:
	add	dword [ebp-48],1
_3943:
	mov	eax,dword [ebp-92]
	cmp	dword [ebp-48],eax
	jle	_141
_140:
	push	_3971
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fld	dword [ebp-12]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	je	_3972
	fld	dword [ebp-8]
	fld	dword [ebp-16]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
_3972:
	cmp	eax,0
	je	_3974
	mov	eax,ebp
	push	eax
	push	_3976
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3975
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_6631]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_428
_3974:
	push	_3977
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_3978
	mov	eax,ebp
	push	eax
	push	_3980
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3979
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_6632]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_428
_3978:
	push	_3981
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	mov	eax,dword [ebp-24]
	mov	dword [ebp+-96],eax
	fild	dword [ebp+-96]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_3982
	mov	eax,ebp
	push	eax
	push	_3984
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3983
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_6633]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_428
_3982:
	push	_3985
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-8]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_3986
	mov	eax,ebp
	push	eax
	push	_3988
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3987
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_6634]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_428
_3986:
	push	_3989
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-8]
	mov	eax,dword [ebp-28]
	mov	dword [ebp+-96],eax
	fild	dword [ebp+-96]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_3990
	mov	eax,ebp
	push	eax
	push	_3992
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3991
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_6635]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_428
_3990:
	push	_3993
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_3994
	mov	eax,ebp
	push	eax
	push	_3996
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3995
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_6636]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_428
_3994:
	push	_3997
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	mov	eax,dword [ebp-24]
	mov	dword [ebp+-96],eax
	fild	dword [ebp+-96]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_3998
	mov	eax,ebp
	push	eax
	push	_4000
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3999
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_6637]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_428
_3998:
	push	_4001
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_4002
	mov	eax,ebp
	push	eax
	push	_4004
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4003
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_6638]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_428
_4002:
	push	_4005
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	mov	eax,dword [ebp-28]
	mov	dword [ebp+-96],eax
	fild	dword [ebp+-96]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_4006
	mov	eax,ebp
	push	eax
	push	_4008
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4007
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_6639]
	fstp	dword [ebp-76]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_428
_4006:
	push	_4009
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-36]
	cmp	edi,dword [eax+20]
	jb	_4011
	call	_brl_blitz_ArrayBoundsError
_4011:
	fld	dword [ebp-8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-36]
	cmp	esi,dword [eax+24]
	jb	_4013
	call	_brl_blitz_ArrayBoundsError
_4013:
	mov	ebx,1
	mov	eax,dword [ebp-36]
	cmp	ebx,dword [eax+28]
	jb	_4015
	call	_brl_blitz_ArrayBoundsError
_4015:
	mov	edx,dword [ebp-36]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	shl	eax,2
	add	edx,eax
	mov	dword [edx+32],1
	push	_4017
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-36]
	inc	dword [eax+4]
	push	1065353216
	push	dword [ebp-28]
	push	dword [ebp-24]
	lea	eax,dword [ebp-36]
	push	eax
	fld	dword [ebp-16]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebp-12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	call	_bb_mapray
	add	esp,24
	mov	eax,dword [ebp-36]
	dec	dword [eax+4]
	jnz	_4018
	push	dword [ebp-36]
	call	_bbGCFree
	add	esp,4
_4018:
	push	_4020
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_6640]
	fstp	dword [ebp-40]
	mov	dword [ebp-44],-1
	push	_4023
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],0
	mov	dword [ebp-56],-1
	jmp	_4025
_147:
	mov	eax,ebp
	push	eax
	push	_4102
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4026
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],0
	mov	dword [ebp-60],-1
	jmp	_4028
_150:
	mov	eax,ebp
	push	eax
	push	_4101
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4029
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4030
	mov	eax,dword [ebp-60]
	cmp	eax,0
	sete	al
	movzx	eax,al
_4030:
	cmp	eax,0
	je	_4032
	mov	eax,ebp
	push	eax
	push	_4033
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_4034
_4032:
	mov	eax,ebp
	push	eax
	push	_4100
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4035
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4036
	mov	eax,dword [ebp-60]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_4036:
	cmp	eax,0
	je	_4038
	mov	eax,ebp
	push	eax
	push	_4040
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4039
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],315
	call	dword [_bbOnDebugLeaveScope]
_4038:
	push	_4041
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4042
	mov	eax,dword [ebp-60]
	cmp	eax,0
	sete	al
	movzx	eax,al
_4042:
	cmp	eax,0
	je	_4044
	mov	eax,ebp
	push	eax
	push	_4046
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4045
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],180
	call	dword [_bbOnDebugLeaveScope]
_4044:
	push	_4047
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4048
	mov	eax,dword [ebp-60]
	cmp	eax,1
	sete	al
	movzx	eax,al
_4048:
	cmp	eax,0
	je	_4050
	mov	eax,ebp
	push	eax
	push	_4052
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4051
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],45
	call	dword [_bbOnDebugLeaveScope]
_4050:
	push	_4053
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4054
	mov	eax,dword [ebp-60]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_4054:
	cmp	eax,0
	je	_4056
	mov	eax,ebp
	push	eax
	push	_4058
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4057
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],270
	call	dword [_bbOnDebugLeaveScope]
_4056:
	push	_4059
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4060
	mov	eax,dword [ebp-60]
	cmp	eax,1
	sete	al
	movzx	eax,al
_4060:
	cmp	eax,0
	je	_4062
	mov	eax,ebp
	push	eax
	push	_4064
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4063
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],90
	call	dword [_bbOnDebugLeaveScope]
_4062:
	push	_4065
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4066
	mov	eax,dword [ebp-60]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_4066:
	cmp	eax,0
	je	_4068
	mov	eax,ebp
	push	eax
	push	_4070
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4069
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],225
	call	dword [_bbOnDebugLeaveScope]
_4068:
	push	_4071
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4072
	mov	eax,dword [ebp-60]
	cmp	eax,0
	sete	al
	movzx	eax,al
_4072:
	cmp	eax,0
	je	_4074
	mov	eax,ebp
	push	eax
	push	_4076
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4075
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],0
	call	dword [_bbOnDebugLeaveScope]
_4074:
	push	_4077
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4078
	mov	eax,dword [ebp-60]
	cmp	eax,1
	sete	al
	movzx	eax,al
_4078:
	cmp	eax,0
	je	_4080
	mov	eax,ebp
	push	eax
	push	_4082
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4081
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],135
	call	dword [_bbOnDebugLeaveScope]
_4080:
	push	_4083
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	mov	eax,dword [ebp-56]
	mov	dword [ebp+-96],eax
	fild	dword [ebp+-96]
	faddp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-36]
	cmp	edi,dword [eax+20]
	jb	_4085
	call	_brl_blitz_ArrayBoundsError
_4085:
	fld	dword [ebp-8]
	mov	eax,dword [ebp-60]
	mov	dword [ebp+-96],eax
	fild	dword [ebp+-96]
	faddp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-36]
	cmp	esi,dword [eax+24]
	jb	_4087
	call	_brl_blitz_ArrayBoundsError
_4087:
	mov	ebx,1
	mov	eax,dword [ebp-36]
	cmp	ebx,dword [eax+28]
	jb	_4089
	call	_brl_blitz_ArrayBoundsError
_4089:
	mov	edx,dword [ebp-36]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	mov	eax,dword [edx+eax*4+32]
	mov	dword [ebp+-96],eax
	fild	dword [ebp+-96]
	fld	dword [ebp-40]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_4090
	mov	eax,ebp
	push	eax
	push	_4099
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4091
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-44]
	mov	dword [ebp+-96],eax
	fild	dword [ebp+-96]
	fstp	dword [ebp-32]
	push	_4092
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	mov	eax,dword [ebp-56]
	mov	dword [ebp+-96],eax
	fild	dword [ebp+-96]
	faddp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-36]
	cmp	edi,dword [eax+20]
	jb	_4094
	call	_brl_blitz_ArrayBoundsError
_4094:
	fld	dword [ebp-8]
	mov	eax,dword [ebp-60]
	mov	dword [ebp+-96],eax
	fild	dword [ebp+-96]
	faddp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-36]
	cmp	esi,dword [eax+24]
	jb	_4096
	call	_brl_blitz_ArrayBoundsError
_4096:
	mov	ebx,1
	mov	eax,dword [ebp-36]
	cmp	ebx,dword [eax+28]
	jb	_4098
	call	_brl_blitz_ArrayBoundsError
_4098:
	mov	edx,dword [ebp-36]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	mov	eax,dword [edx+eax*4+32]
	mov	dword [ebp+-96],eax
	fild	dword [ebp+-96]
	fstp	dword [ebp-40]
	call	dword [_bbOnDebugLeaveScope]
_4090:
	call	dword [_bbOnDebugLeaveScope]
_4034:
	call	dword [_bbOnDebugLeaveScope]
_148:
	add	dword [ebp-60],1
_4028:
	cmp	dword [ebp-60],1
	jle	_150
_149:
	call	dword [_bbOnDebugLeaveScope]
_145:
	add	dword [ebp-56],1
_4025:
	cmp	dword [ebp-56],1
	jle	_147
_146:
	push	_4103
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-64],0
	mov	dword [ebp-64],0
	mov	eax,dword [ebp-24]
	mov	dword [ebp-88],eax
	jmp	_4105
_153:
	mov	eax,ebp
	push	eax
	push	_4124
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4107
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-68],0
	mov	dword [ebp-68],0
	mov	eax,dword [ebp-28]
	mov	dword [ebp-80],eax
	jmp	_4109
_156:
	mov	eax,ebp
	push	eax
	push	_4123
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4111
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-64]
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax]
	imul	ebx,dword [eax+24]
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+20]
	jb	_4113
	call	_brl_blitz_ArrayBoundsError
_4113:
	mov	esi,dword [ebp-68]
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_4115
	call	_brl_blitz_ArrayBoundsError
_4115:
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax]
	add	ebx,esi
	shl	ebx,2
	add	eax,ebx
	mov	dword [ebp-72],eax
	mov	eax,dword [ebp-64]
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-36]
	cmp	edi,dword [eax+20]
	jb	_4118
	call	_brl_blitz_ArrayBoundsError
_4118:
	mov	eax,dword [ebp-68]
	mov	edx,dword [ebp-36]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-36]
	cmp	esi,dword [eax+24]
	jb	_4120
	call	_brl_blitz_ArrayBoundsError
_4120:
	mov	ebx,1
	mov	eax,dword [ebp-36]
	cmp	ebx,dword [eax+28]
	jb	_4122
	call	_brl_blitz_ArrayBoundsError
_4122:
	mov	edx,dword [ebp-36]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	mov	edx,dword [edx+eax*4+32]
	mov	eax,dword [ebp-72]
	mov	dword [eax+28],edx
	call	dword [_bbOnDebugLeaveScope]
_154:
	add	dword [ebp-68],1
_4109:
	mov	eax,dword [ebp-80]
	cmp	dword [ebp-68],eax
	jle	_156
_155:
	call	dword [_bbOnDebugLeaveScope]
_151:
	add	dword [ebp-64],1
_4105:
	mov	eax,dword [ebp-88]
	cmp	dword [ebp-64],eax
	jle	_153
_152:
	push	_4125
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-32]
	fstp	dword [ebp-76]
	jmp	_428
_428:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-76]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_mapray:
	push	ebp
	mov	ebp,esp
	sub	esp,104
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	eax,dword [ebp+24]
	mov	dword [ebp-20],eax
	fld	dword [ebp+28]
	fstp	dword [ebp-24]
	mov	dword [ebp-28],0
	mov	dword [ebp-32],0
	fldz
	fstp	dword [ebp-36]
	mov	dword [ebp-40],0
	mov	dword [ebp-44],0
	fldz
	fstp	dword [ebp-48]
	mov	dword [ebp-52],0
	mov	dword [ebp-56],0
	fldz
	fstp	dword [ebp-60]
	mov	eax,ebp
	push	eax
	push	_4483
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4139
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+20]
	jb	_4141
	call	_brl_blitz_ArrayBoundsError
_4141:
	mov	eax,dword [ebp-8]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_4143
	call	_brl_blitz_ArrayBoundsError
_4143:
	mov	ebx,0
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_4145
	call	_brl_blitz_ArrayBoundsError
_4145:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	shl	eax,2
	add	edx,eax
	mov	dword [edx+32],1
	push	_4147
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	cmp	eax,0
	setg	al
	movzx	eax,al
	cmp	eax,0
	je	_4148
	mov	eax,dword [ebp-4]
	cmp	eax,dword [ebp-16]
	setl	al
	movzx	eax,al
_4148:
	cmp	eax,0
	je	_4150
	mov	eax,dword [ebp-8]
	cmp	eax,0
	setg	al
	movzx	eax,al
_4150:
	cmp	eax,0
	je	_4152
	mov	eax,dword [ebp-8]
	cmp	eax,dword [ebp-20]
	setl	al
	movzx	eax,al
_4152:
	cmp	eax,0
	je	_4154
	mov	eax,ebp
	push	eax
	push	_4482
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4155
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-24]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_4156
	mov	eax,ebp
	push	eax
	push	_4165
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4157
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+20]
	jb	_4159
	call	_brl_blitz_ArrayBoundsError
_4159:
	mov	eax,dword [ebp-8]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_4161
	call	_brl_blitz_ArrayBoundsError
_4161:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_4163
	call	_brl_blitz_ArrayBoundsError
_4163:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	shl	eax,2
	add	edx,eax
	mov	ebx,edx
	fld	dword [ebp-24]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebx+32],eax
	call	dword [_bbOnDebugLeaveScope]
_4156:
	push	_4166
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	mov	dword [ebp-28],-1
	jmp	_4168
_159:
	mov	eax,ebp
	push	eax
	push	_4286
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4169
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],0
	mov	dword [ebp-32],-1
	jmp	_4171
_162:
	mov	eax,ebp
	push	eax
	push	_4285
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4172
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4173
	mov	eax,dword [ebp-32]
	cmp	eax,0
	sete	al
	movzx	eax,al
_4173:
	cmp	eax,0
	je	_4175
	mov	eax,ebp
	push	eax
	push	_4176
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_4177
_4175:
	mov	eax,ebp
	push	eax
	push	_4283
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4178
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-36]
	push	_4180
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4181
	mov	eax,dword [ebp-32]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_4181:
	cmp	eax,0
	je	_4183
	mov	eax,ebp
	push	eax
	push	_4185
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4184
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
_4183:
	push	_4186
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4187
	mov	eax,dword [ebp-32]
	cmp	eax,0
	sete	al
	movzx	eax,al
_4187:
	cmp	eax,0
	je	_4189
	mov	eax,ebp
	push	eax
	push	_4191
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4190
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
_4189:
	push	_4192
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4193
	mov	eax,dword [ebp-32]
	cmp	eax,1
	sete	al
	movzx	eax,al
_4193:
	cmp	eax,0
	je	_4195
	mov	eax,ebp
	push	eax
	push	_4197
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4196
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
_4195:
	push	_4198
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4199
	mov	eax,dword [ebp-32]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_4199:
	cmp	eax,0
	je	_4201
	mov	eax,ebp
	push	eax
	push	_4203
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4202
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
_4201:
	push	_4204
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4205
	mov	eax,dword [ebp-32]
	cmp	eax,1
	sete	al
	movzx	eax,al
_4205:
	cmp	eax,0
	je	_4207
	mov	eax,ebp
	push	eax
	push	_4209
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4208
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
_4207:
	push	_4210
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4211
	mov	eax,dword [ebp-32]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_4211:
	cmp	eax,0
	je	_4213
	mov	eax,ebp
	push	eax
	push	_4215
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4214
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
_4213:
	push	_4216
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4217
	mov	eax,dword [ebp-32]
	cmp	eax,0
	sete	al
	movzx	eax,al
_4217:
	cmp	eax,0
	je	_4219
	mov	eax,ebp
	push	eax
	push	_4221
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4220
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
_4219:
	push	_4222
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4223
	mov	eax,dword [ebp-32]
	cmp	eax,1
	sete	al
	movzx	eax,al
_4223:
	cmp	eax,0
	je	_4225
	mov	eax,ebp
	push	eax
	push	_4227
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4226
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
_4225:
	push	_4228
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-28]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+20]
	jb	_4230
	call	_brl_blitz_ArrayBoundsError
_4230:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-32]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_4232
	call	_brl_blitz_ArrayBoundsError
_4232:
	mov	ebx,2
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_4234
	call	_brl_blitz_ArrayBoundsError
_4234:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	cmp	dword [edx+eax*4+32],0
	jne	_4235
	mov	eax,ebp
	push	eax
	push	_4253
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4236
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-28]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+20]
	jb	_4238
	call	_brl_blitz_ArrayBoundsError
_4238:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-32]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_4240
	call	_brl_blitz_ArrayBoundsError
_4240:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_4242
	call	_brl_blitz_ArrayBoundsError
_4242:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	mov	eax,dword [edx+eax*4+32]
	mov	dword [ebp+-104],eax
	fild	dword [ebp+-104]
	fld	dword [ebp-36]
	fadd	dword [ebp-24]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_4243
	mov	eax,ebp
	push	eax
	push	_4252
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4244
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-28]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+20]
	jb	_4246
	call	_brl_blitz_ArrayBoundsError
_4246:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-32]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_4248
	call	_brl_blitz_ArrayBoundsError
_4248:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_4250
	call	_brl_blitz_ArrayBoundsError
_4250:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	shl	eax,2
	add	edx,eax
	mov	ebx,edx
	fld	dword [ebp-36]
	fadd	dword [ebp-24]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebx+32],eax
	call	dword [_bbOnDebugLeaveScope]
_4243:
	call	dword [_bbOnDebugLeaveScope]
_4235:
	push	_4254
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-28]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	dword [ebp-100],eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-100],eax
	jb	_4256
	call	_brl_blitz_ArrayBoundsError
_4256:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-32]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	dword [ebp-92],eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	mov	eax,dword [eax+24]
	cmp	dword [ebp-92],eax
	jb	_4258
	call	_brl_blitz_ArrayBoundsError
_4258:
	mov	dword [ebp-84],1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	mov	eax,dword [eax+28]
	cmp	dword [ebp-84],eax
	jb	_4260
	call	_brl_blitz_ArrayBoundsError
_4260:
	mov	edx,dword [ebp-4]
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	imul	edx,dword [eax+24]
	mov	dword [ebp-68],edx
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-68],eax
	jb	_4262
	call	_brl_blitz_ArrayBoundsError
_4262:
	mov	eax,dword [ebp-8]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+24]
	jb	_4264
	call	_brl_blitz_ArrayBoundsError
_4264:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_4266
	call	_brl_blitz_ArrayBoundsError
_4266:
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax]
	mov	eax,dword [ebp-100]
	add	eax,dword [ebp-92]
	mov	ecx,eax
	add	ecx,dword [ebp-84]
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,dword [ebp-68]
	add	eax,edi
	add	eax,ebx
	mov	eax,dword [edx+eax*4+32]
	cmp	dword [esi+ecx*4+32],eax
	jge	_4267
	mov	eax,ebp
	push	eax
	push	_4282
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4268
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+20]
	jb	_4270
	call	_brl_blitz_ArrayBoundsError
_4270:
	mov	eax,dword [ebp-8]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_4272
	call	_brl_blitz_ArrayBoundsError
_4272:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_4274
	call	_brl_blitz_ArrayBoundsError
_4274:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	shl	eax,2
	add	edx,eax
	mov	dword [ebp-76],edx
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-28]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+20]
	jb	_4277
	call	_brl_blitz_ArrayBoundsError
_4277:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-32]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_4279
	call	_brl_blitz_ArrayBoundsError
_4279:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_4281
	call	_brl_blitz_ArrayBoundsError
_4281:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	mov	eax,dword [edx+eax*4+32]
	mov	dword [ebp+-104],eax
	fild	dword [ebp+-104]
	fadd	dword [ebp-36]
	fadd	dword [ebp-24]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	edx,dword [ebp-76]
	mov	dword [edx+32],eax
	call	dword [_bbOnDebugLeaveScope]
_4267:
	call	dword [_bbOnDebugLeaveScope]
_4177:
	call	dword [_bbOnDebugLeaveScope]
_160:
	add	dword [ebp-32],1
_4171:
	cmp	dword [ebp-32],1
	jle	_162
_161:
	call	dword [_bbOnDebugLeaveScope]
_157:
	add	dword [ebp-28],1
_4168:
	cmp	dword [ebp-28],1
	jle	_159
_158:
	push	_4287
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],0
	mov	dword [ebp-40],-1
	jmp	_4289
_165:
	mov	eax,ebp
	push	eax
	push	_4361
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4290
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],0
	mov	dword [ebp-44],-1
	jmp	_4292
_168:
	mov	eax,ebp
	push	eax
	push	_4360
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4293
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4294
	mov	eax,dword [ebp-44]
	cmp	eax,0
	sete	al
	movzx	eax,al
_4294:
	cmp	eax,0
	je	_4296
	mov	eax,ebp
	push	eax
	push	_4297
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_4298
_4296:
	mov	eax,ebp
	push	eax
	push	_4359
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4299
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-48]
	push	_4301
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4302
	mov	eax,dword [ebp-44]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_4302:
	cmp	eax,0
	je	_4304
	mov	eax,ebp
	push	eax
	push	_4306
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4305
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-48]
	call	dword [_bbOnDebugLeaveScope]
_4304:
	push	_4307
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4308
	mov	eax,dword [ebp-44]
	cmp	eax,0
	sete	al
	movzx	eax,al
_4308:
	cmp	eax,0
	je	_4310
	mov	eax,ebp
	push	eax
	push	_4312
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4311
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-48]
	call	dword [_bbOnDebugLeaveScope]
_4310:
	push	_4313
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4314
	mov	eax,dword [ebp-44]
	cmp	eax,1
	sete	al
	movzx	eax,al
_4314:
	cmp	eax,0
	je	_4316
	mov	eax,ebp
	push	eax
	push	_4318
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4317
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-48]
	call	dword [_bbOnDebugLeaveScope]
_4316:
	push	_4319
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4320
	mov	eax,dword [ebp-44]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_4320:
	cmp	eax,0
	je	_4322
	mov	eax,ebp
	push	eax
	push	_4324
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4323
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-48]
	call	dword [_bbOnDebugLeaveScope]
_4322:
	push	_4325
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4326
	mov	eax,dword [ebp-44]
	cmp	eax,1
	sete	al
	movzx	eax,al
_4326:
	cmp	eax,0
	je	_4328
	mov	eax,ebp
	push	eax
	push	_4330
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4329
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-48]
	call	dword [_bbOnDebugLeaveScope]
_4328:
	push	_4331
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4332
	mov	eax,dword [ebp-44]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_4332:
	cmp	eax,0
	je	_4334
	mov	eax,ebp
	push	eax
	push	_4336
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4335
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-48]
	call	dword [_bbOnDebugLeaveScope]
_4334:
	push	_4337
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4338
	mov	eax,dword [ebp-44]
	cmp	eax,0
	sete	al
	movzx	eax,al
_4338:
	cmp	eax,0
	je	_4340
	mov	eax,ebp
	push	eax
	push	_4342
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4341
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-48]
	call	dword [_bbOnDebugLeaveScope]
_4340:
	push	_4343
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-40]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4344
	mov	eax,dword [ebp-44]
	cmp	eax,1
	sete	al
	movzx	eax,al
_4344:
	cmp	eax,0
	je	_4346
	mov	eax,ebp
	push	eax
	push	_4348
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4347
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-48]
	call	dword [_bbOnDebugLeaveScope]
_4346:
	push	_4349
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-40]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+20]
	jb	_4351
	call	_brl_blitz_ArrayBoundsError
_4351:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-44]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_4353
	call	_brl_blitz_ArrayBoundsError
_4353:
	mov	ebx,0
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_4355
	call	_brl_blitz_ArrayBoundsError
_4355:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	cmp	dword [edx+eax*4+32],0
	jne	_4356
	mov	eax,ebp
	push	eax
	push	_4358
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4357
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-48]
	fadd	dword [ebp-24]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebp-20]
	push	dword [ebp-16]
	mov	eax,dword [ebp-12]
	lea	eax,dword [eax]
	push	eax
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-44]
	push	eax
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-40]
	push	eax
	call	_bb_mapray
	add	esp,24
	call	dword [_bbOnDebugLeaveScope]
_4356:
	call	dword [_bbOnDebugLeaveScope]
_4298:
	call	dword [_bbOnDebugLeaveScope]
_166:
	add	dword [ebp-44],1
_4292:
	cmp	dword [ebp-44],1
	jle	_168
_167:
	call	dword [_bbOnDebugLeaveScope]
_163:
	add	dword [ebp-40],1
_4289:
	cmp	dword [ebp-40],1
	jle	_165
_164:
	push	_4362
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],0
	mov	dword [ebp-52],-1
	jmp	_4364
_171:
	mov	eax,ebp
	push	eax
	push	_4481
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4365
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],0
	mov	dword [ebp-56],-1
	jmp	_4367
_174:
	mov	eax,ebp
	push	eax
	push	_4480
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4368
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4369
	mov	eax,dword [ebp-56]
	cmp	eax,0
	sete	al
	movzx	eax,al
_4369:
	cmp	eax,0
	je	_4371
	mov	eax,ebp
	push	eax
	push	_4372
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_4373
_4371:
	mov	eax,ebp
	push	eax
	push	_4479
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4374
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-60]
	push	_4376
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4377
	mov	eax,dword [ebp-56]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_4377:
	cmp	eax,0
	je	_4379
	mov	eax,ebp
	push	eax
	push	_4381
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4380
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-60]
	call	dword [_bbOnDebugLeaveScope]
_4379:
	push	_4382
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4383
	mov	eax,dword [ebp-56]
	cmp	eax,0
	sete	al
	movzx	eax,al
_4383:
	cmp	eax,0
	je	_4385
	mov	eax,ebp
	push	eax
	push	_4387
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4386
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-60]
	call	dword [_bbOnDebugLeaveScope]
_4385:
	push	_4388
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,-1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4389
	mov	eax,dword [ebp-56]
	cmp	eax,1
	sete	al
	movzx	eax,al
_4389:
	cmp	eax,0
	je	_4391
	mov	eax,ebp
	push	eax
	push	_4393
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4392
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-60]
	call	dword [_bbOnDebugLeaveScope]
_4391:
	push	_4394
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4395
	mov	eax,dword [ebp-56]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_4395:
	cmp	eax,0
	je	_4397
	mov	eax,ebp
	push	eax
	push	_4399
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4398
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-60]
	call	dword [_bbOnDebugLeaveScope]
_4397:
	push	_4400
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4401
	mov	eax,dword [ebp-56]
	cmp	eax,1
	sete	al
	movzx	eax,al
_4401:
	cmp	eax,0
	je	_4403
	mov	eax,ebp
	push	eax
	push	_4405
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4404
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-60]
	call	dword [_bbOnDebugLeaveScope]
_4403:
	push	_4406
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4407
	mov	eax,dword [ebp-56]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_4407:
	cmp	eax,0
	je	_4409
	mov	eax,ebp
	push	eax
	push	_4411
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4410
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-60]
	call	dword [_bbOnDebugLeaveScope]
_4409:
	push	_4412
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4413
	mov	eax,dword [ebp-56]
	cmp	eax,0
	sete	al
	movzx	eax,al
_4413:
	cmp	eax,0
	je	_4415
	mov	eax,ebp
	push	eax
	push	_4417
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4416
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld1
	fstp	dword [ebp-60]
	call	dword [_bbOnDebugLeaveScope]
_4415:
	push	_4418
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	cmp	eax,1
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4419
	mov	eax,dword [ebp-56]
	cmp	eax,1
	sete	al
	movzx	eax,al
_4419:
	cmp	eax,0
	je	_4421
	mov	eax,ebp
	push	eax
	push	_4423
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4422
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_bb_diagonal]
	fstp	dword [ebp-60]
	call	dword [_bbOnDebugLeaveScope]
_4421:
	push	_4424
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-52]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+20]
	jb	_4426
	call	_brl_blitz_ArrayBoundsError
_4426:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-56]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_4428
	call	_brl_blitz_ArrayBoundsError
_4428:
	mov	ebx,2
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_4430
	call	_brl_blitz_ArrayBoundsError
_4430:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	cmp	dword [edx+eax*4+32],0
	jne	_4431
	mov	eax,ebp
	push	eax
	push	_4449
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4432
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-52]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+20]
	jb	_4434
	call	_brl_blitz_ArrayBoundsError
_4434:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-56]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_4436
	call	_brl_blitz_ArrayBoundsError
_4436:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_4438
	call	_brl_blitz_ArrayBoundsError
_4438:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	mov	eax,dword [edx+eax*4+32]
	mov	dword [ebp+-104],eax
	fild	dword [ebp+-104]
	fld	dword [ebp-60]
	fadd	dword [ebp-24]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_4439
	mov	eax,ebp
	push	eax
	push	_4448
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4440
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-52]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+20]
	jb	_4442
	call	_brl_blitz_ArrayBoundsError
_4442:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-56]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_4444
	call	_brl_blitz_ArrayBoundsError
_4444:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_4446
	call	_brl_blitz_ArrayBoundsError
_4446:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	shl	eax,2
	add	edx,eax
	mov	ebx,edx
	fld	dword [ebp-60]
	fadd	dword [ebp-24]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebx+32],eax
	call	dword [_bbOnDebugLeaveScope]
_4439:
	call	dword [_bbOnDebugLeaveScope]
_4431:
	push	_4450
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-52]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	dword [ebp-96],eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-96],eax
	jb	_4452
	call	_brl_blitz_ArrayBoundsError
_4452:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-56]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	dword [ebp-88],eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	mov	eax,dword [eax+24]
	cmp	dword [ebp-88],eax
	jb	_4454
	call	_brl_blitz_ArrayBoundsError
_4454:
	mov	dword [ebp-80],1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	mov	eax,dword [eax+28]
	cmp	dword [ebp-80],eax
	jb	_4456
	call	_brl_blitz_ArrayBoundsError
_4456:
	mov	edx,dword [ebp-4]
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	imul	edx,dword [eax+24]
	mov	dword [ebp-64],edx
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-64],eax
	jb	_4458
	call	_brl_blitz_ArrayBoundsError
_4458:
	mov	eax,dword [ebp-8]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+24]
	jb	_4460
	call	_brl_blitz_ArrayBoundsError
_4460:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_4462
	call	_brl_blitz_ArrayBoundsError
_4462:
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax]
	mov	eax,dword [ebp-96]
	add	eax,dword [ebp-88]
	mov	ecx,eax
	add	ecx,dword [ebp-80]
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,dword [ebp-64]
	add	eax,edi
	add	eax,ebx
	mov	eax,dword [edx+eax*4+32]
	cmp	dword [esi+ecx*4+32],eax
	jge	_4463
	mov	eax,ebp
	push	eax
	push	_4478
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4464
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+20]
	jb	_4466
	call	_brl_blitz_ArrayBoundsError
_4466:
	mov	eax,dword [ebp-8]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_4468
	call	_brl_blitz_ArrayBoundsError
_4468:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_4470
	call	_brl_blitz_ArrayBoundsError
_4470:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	shl	eax,2
	add	edx,eax
	mov	dword [ebp-72],edx
	mov	eax,dword [ebp-4]
	add	eax,dword [ebp-52]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+24]
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+20]
	jb	_4473
	call	_brl_blitz_ArrayBoundsError
_4473:
	mov	eax,dword [ebp-8]
	add	eax,dword [ebp-56]
	mov	edx,dword [ebp-12]
	mov	edx,dword [edx]
	imul	eax,dword [edx+28]
	mov	esi,eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	esi,dword [eax+24]
	jb	_4475
	call	_brl_blitz_ArrayBoundsError
_4475:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+28]
	jb	_4477
	call	_brl_blitz_ArrayBoundsError
_4477:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,edi
	add	eax,esi
	add	eax,ebx
	mov	eax,dword [edx+eax*4+32]
	mov	dword [ebp+-104],eax
	fild	dword [ebp+-104]
	fadd	dword [ebp-60]
	fadd	dword [ebp-24]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	edx,dword [ebp-72]
	mov	dword [edx+32],eax
	call	dword [_bbOnDebugLeaveScope]
_4463:
	call	dword [_bbOnDebugLeaveScope]
_4373:
	call	dword [_bbOnDebugLeaveScope]
_172:
	add	dword [ebp-56],1
_4367:
	cmp	dword [ebp-56],1
	jle	_174
_173:
	call	dword [_bbOnDebugLeaveScope]
_169:
	add	dword [ebp-52],1
_4364:
	cmp	dword [ebp-52],1
	jle	_171
_170:
	call	dword [_bbOnDebugLeaveScope]
_4154:
	mov	ebx,0
	jmp	_436
_436:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_button:
	push	ebp
	mov	ebp,esp
	sub	esp,36
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	eax,dword [ebp+24]
	mov	dword [ebp-20],eax
	mov	eax,dword [ebp+28]
	mov	dword [ebp-24],eax
	mov	eax,dword [ebp+32]
	mov	dword [ebp-28],eax
	mov	dword [ebp-32],0
	push	ebp
	push	_4528
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4485
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],0
	push	_4487
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	_4488
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-20]
	add	eax,4
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-16]
	add	eax,4
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-12]
	sub	eax,2
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-8]
	sub	eax,2
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_4489
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-20]
	push	dword [ebp-16]
	push	dword [ebp-12]
	push	dword [ebp-8]
	call	_bb_mouseover
	add	esp,16
	cmp	eax,0
	je	_4490
	push	ebp
	push	_4492
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4491
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	180
	push	180
	push	180
	call	_brl_max2d_SetColor
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
	jmp	_4493
_4490:
	push	ebp
	push	_4501
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4494
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-24],0
	je	_4495
	push	ebp
	push	_4497
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4496
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	180
	push	200
	push	180
	call	_brl_max2d_SetColor
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
	jmp	_4498
_4495:
	push	ebp
	push	_4500
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4499
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	120
	push	120
	push	120
	call	_brl_max2d_SetColor
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_4498:
	call	dword [_bbOnDebugLeaveScope]
_4493:
	push	_4502
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-20]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-16]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-12]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawRect
	add	esp,16
	push	_4503
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-20]
	push	dword [ebp-16]
	push	dword [ebp-12]
	push	dword [ebp-8]
	call	_bb_mouseover
	add	esp,16
	cmp	eax,0
	je	_4504
	push	ebp
	push	_4506
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4505
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
	jmp	_4507
_4504:
	push	ebp
	push	_4515
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4508
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-24],0
	je	_4509
	push	ebp
	push	_4511
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4510
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
	jmp	_4512
_4509:
	push	ebp
	push	_4514
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4513
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_4512:
	call	dword [_bbOnDebugLeaveScope]
_4507:
	push	_4516
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ecx,dword [ebp-12]
	mov	eax,dword [ebp-20]
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	add	ecx,eax
	sub	ecx,7
	mov	dword [ebp+-36],ecx
	fild	dword [ebp+-36]
	sub	esp,4
	fstp	dword [esp]
	mov	ecx,dword [ebp-8]
	mov	eax,dword [ebp-16]
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	add	ecx,eax
	mov	dword [ebp+-36],ecx
	fild	dword [ebp+-36]
	mov	eax,dword [ebp-4]
	mov	eax,dword [eax+8]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	fmul	dword [_6824]
	fdiv	dword [_6825]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebp-4]
	call	_brl_max2d_DrawText
	add	esp,12
	push	_4517
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_md],0
	je	_4518
	push	ebp
	push	_4526
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4519
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-20]
	push	dword [ebp-16]
	push	dword [ebp-12]
	push	dword [ebp-8]
	call	_bb_mouseover
	add	esp,16
	cmp	eax,0
	je	_4520
	push	ebp
	push	_4525
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4521
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_md],0
	je	_4522
	push	ebp
	push	_4524
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4523
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],1
	call	dword [_bbOnDebugLeaveScope]
_4522:
	call	dword [_bbOnDebugLeaveScope]
_4520:
	call	dword [_bbOnDebugLeaveScope]
_4518:
	push	_4527
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	jmp	_445
_445:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_mouseover:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	dword [ebp-20],0
	push	ebp
	push	_4549
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4536
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	push	_4538
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_MouseX
	cmp	eax,dword [ebp-4]
	setg	al
	movzx	eax,al
	cmp	eax,0
	je	_4539
	call	_brl_polledinput_MouseX
	mov	edx,dword [ebp-4]
	add	edx,dword [ebp-12]
	cmp	eax,edx
	setl	al
	movzx	eax,al
_4539:
	cmp	eax,0
	je	_4541
	call	_brl_polledinput_MouseY
	cmp	eax,dword [ebp-8]
	setg	al
	movzx	eax,al
_4541:
	cmp	eax,0
	je	_4543
	call	_brl_polledinput_MouseY
	mov	edx,dword [ebp-8]
	add	edx,dword [ebp-16]
	cmp	eax,edx
	setl	al
	movzx	eax,al
_4543:
	cmp	eax,0
	je	_4545
	push	ebp
	push	_4547
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4546
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],1
	call	dword [_bbOnDebugLeaveScope]
_4545:
	push	_4548
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	jmp	_451
_451:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_savetheshit:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],_bbNullObject
	mov	dword [ebp-8],0
	mov	dword [ebp-12],0
	mov	eax,ebp
	push	eax
	push	_4571
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4551
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_276
	call	_brl_filesystem_WriteFile
	add	esp,4
	mov	dword [ebp-4],eax
	push	_4553
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	mov	dword [ebp-8],0
	jmp	_4555
_279:
	mov	eax,ebp
	push	eax
	push	_4567
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4556
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	dword [ebp-12],0
	jmp	_4558
_282:
	mov	eax,ebp
	push	eax
	push	_4566
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4559
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_4561
	call	_brl_blitz_NullObjectError
_4561:
	mov	eax,dword [ebp-8]
	mov	edx,dword [_bb_combospeicher]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+20]
	jb	_4563
	call	_brl_blitz_ArrayBoundsError
_4563:
	mov	ebx,dword [ebp-12]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+24]
	jb	_4565
	call	_brl_blitz_ArrayBoundsError
_4565:
	mov	edx,dword [_bb_combospeicher]
	mov	eax,esi
	add	eax,ebx
	push	dword [edx+eax*4+28]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+112]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_280:
	add	dword [ebp-12],1
_4558:
	cmp	dword [ebp-12],8
	jle	_282
_281:
	call	dword [_bbOnDebugLeaveScope]
_277:
	add	dword [ebp-8],1
_4555:
	cmp	dword [ebp-8],15
	jle	_279
_278:
	push	_4568
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4570
	call	_brl_blitz_NullObjectError
_4570:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,4
	mov	ebx,0
	jmp	_453
_453:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_loadtheshit:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	mov	dword [ebp-4],_bbNullObject
	mov	dword [ebp-8],0
	mov	dword [ebp-12],0
	push	ebp
	push	_4596
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4575
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_276
	call	_brl_filesystem_ReadFile
	add	esp,4
	mov	dword [ebp-4],eax
	push	_4577
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	mov	dword [ebp-8],0
	jmp	_4579
_285:
	push	ebp
	push	_4592
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4580
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	dword [ebp-12],0
	jmp	_4582
_288:
	push	ebp
	push	_4591
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4583
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	mov	eax,dword [_bb_combospeicher]
	imul	esi,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+20]
	jb	_4585
	call	_brl_blitz_ArrayBoundsError
_4585:
	mov	ebx,dword [ebp-12]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+24]
	jb	_4587
	call	_brl_blitz_ArrayBoundsError
_4587:
	mov	eax,dword [_bb_combospeicher]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_4590
	call	_brl_blitz_NullObjectError
_4590:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+108]
	add	esp,4
	mov	dword [ebx+28],eax
	call	dword [_bbOnDebugLeaveScope]
_286:
	add	dword [ebp-12],1
_4582:
	cmp	dword [ebp-12],8
	jle	_288
_287:
	call	dword [_bbOnDebugLeaveScope]
_283:
	add	dword [ebp-8],1
_4579:
	cmp	dword [ebp-8],15
	jle	_285
_284:
	push	_4593
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4595
	call	_brl_blitz_NullObjectError
_4595:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,4
	mov	ebx,0
	jmp	_455
_455:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_getdiff:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	dword [ebp-20],0
	push	ebp
	push	_4626
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4599
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	push	_4601
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	cmp	dword [ebp-4],eax
	jne	_4602
	push	ebp
	push	_4604
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4603
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-20],1
	call	dword [_bbOnDebugLeaveScope]
_4602:
	push	_4605
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	cmp	dword [ebp-4],eax
	jne	_4606
	push	ebp
	push	_4608
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4607
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-20],2
	call	dword [_bbOnDebugLeaveScope]
_4606:
	push	_4609
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	cmp	dword [ebp-4],eax
	jne	_4610
	push	ebp
	push	_4612
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4611
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-20],4
	call	dword [_bbOnDebugLeaveScope]
_4610:
	push	_4613
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	cmp	dword [ebp-8],eax
	jne	_4614
	push	ebp
	push	_4616
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4615
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-20],8
	call	dword [_bbOnDebugLeaveScope]
_4614:
	push	_4617
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	cmp	dword [ebp-8],eax
	jne	_4618
	push	ebp
	push	_4620
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4619
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-20],16
	call	dword [_bbOnDebugLeaveScope]
_4618:
	push	_4621
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	cmp	dword [ebp-12],eax
	jne	_4622
	push	ebp
	push	_4624
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4623
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-20],32
	call	dword [_bbOnDebugLeaveScope]
_4622:
	push	_4625
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	jmp	_461
_461:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_drawTile:
	push	ebp
	mov	ebp,esp
	sub	esp,136
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	dword [ebp-16],0
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	mov	dword [ebp-28],0
	mov	dword [ebp-32],0
	mov	dword [ebp-36],0
	mov	dword [ebp-40],0
	mov	dword [ebp-44],0
	mov	dword [ebp-48],0
	mov	dword [ebp-52],0
	mov	dword [ebp-56],0
	mov	dword [ebp-60],0
	mov	dword [ebp-64],0
	mov	dword [ebp-68],0
	mov	dword [ebp-72],0
	mov	dword [ebp-76],0
	mov	dword [ebp-80],0
	mov	dword [ebp-84],0
	mov	dword [ebp-88],0
	mov	dword [ebp-92],0
	mov	eax,ebp
	push	eax
	push	_5003
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4631
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],1
	push	_4633
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	mov	dword [ebp-20],0
	jmp	_4635
_291:
	mov	eax,ebp
	push	eax
	push	_5002
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4636
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],0
	mov	dword [ebp-24],0
	jmp	_4638
_294:
	mov	eax,ebp
	push	eax
	push	_5000
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4639
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	push	_4641
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	cmp	eax,10
	setl	al
	movzx	eax,al
	cmp	eax,0
	jne	_4642
	mov	eax,dword [ebp-24]
	cmp	eax,21
	setg	al
	movzx	eax,al
_4642:
	cmp	eax,0
	je	_4646
	mov	eax,dword [ebp-20]
	cmp	eax,10
	setl	al
	movzx	eax,al
	cmp	eax,0
	jne	_4644
	mov	eax,dword [ebp-20]
	cmp	eax,21
	setg	al
	movzx	eax,al
_4644:
_4646:
	cmp	eax,0
	jne	_4654
	mov	eax,dword [ebp-24]
	cmp	eax,10
	setge	al
	movzx	eax,al
	cmp	eax,0
	je	_4648
	mov	eax,dword [ebp-24]
	cmp	eax,21
	setle	al
	movzx	eax,al
_4648:
	cmp	eax,0
	jne	_4652
	mov	eax,dword [ebp-20]
	cmp	eax,10
	setge	al
	movzx	eax,al
	cmp	eax,0
	je	_4650
	mov	eax,dword [ebp-20]
	cmp	eax,21
	setle	al
	movzx	eax,al
_4650:
_4652:
_4654:
	cmp	eax,0
	je	_4656
	mov	eax,ebp
	push	eax
	push	_4999
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4657
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],0
	mov	dword [ebp-36],0
	mov	dword [ebp-40],0
	mov	dword [ebp-44],0
	mov	dword [ebp-48],0
	mov	dword [ebp-52],0
	mov	dword [ebp-56],0
	mov	dword [ebp-60],0
	mov	dword [ebp-64],0
	mov	dword [ebp-68],0
	mov	dword [ebp-72],0
	mov	dword [ebp-76],0
	push	_4670
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	cmp	eax,10
	setge	al
	movzx	eax,al
	cmp	eax,0
	je	_4671
	mov	eax,dword [ebp-24]
	cmp	eax,21
	setle	al
	movzx	eax,al
_4671:
	cmp	eax,0
	je	_4673
	mov	eax,dword [ebp-20]
	cmp	eax,10
	setl	al
	movzx	eax,al
_4673:
	cmp	eax,0
	je	_4675
	mov	eax,ebp
	push	eax
	push	_4688
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4676
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],0
	push	_4677
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],1
	push	_4678
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],7
	push	_4679
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],10
	push	_4680
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],21
	push	_4681
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],0
	push	_4682
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],9
	push	_4683
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],0
	push	_4684
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-64],0
	push	_4685
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-68],0
	push	_4686
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-72],0
	push	_4687
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-76],0
	call	dword [_bbOnDebugLeaveScope]
	jmp	_4689
_4675:
	mov	eax,ebp
	push	eax
	push	_4979
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4690
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	cmp	eax,21
	setg	al
	movzx	eax,al
	cmp	eax,0
	je	_4691
	mov	eax,dword [ebp-20]
	cmp	eax,10
	setl	al
	movzx	eax,al
_4691:
	cmp	eax,0
	je	_4693
	mov	eax,ebp
	push	eax
	push	_4744
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4694
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],1
	push	_4695
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],2
	push	_4696
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],0
	push	_4697
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],22
	push	_4698
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],31
	push	_4699
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],0
	push	_4700
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],9
	push	_4701
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-80],0
	mov	dword [ebp-80],0
	jmp	_4703
_297:
	mov	eax,ebp
	push	eax
	push	_4718
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4704
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-32]
	mov	dword [ebp-112],eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-112],eax
	jb	_4706
	call	_brl_blitz_ArrayBoundsError
_4706:
	mov	eax,dword [ebp-36]
	mov	dword [ebp-96],eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-96],eax
	jb	_4708
	call	_brl_blitz_ArrayBoundsError
_4708:
	mov	edi,dword [ebp-40]
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+20]
	jb	_4710
	call	_brl_blitz_ArrayBoundsError
_4710:
	mov	eax,dword [ebp-80]
	mov	edx,dword [_bb_combospeicher]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+20]
	jb	_4712
	call	_brl_blitz_ArrayBoundsError
_4712:
	mov	ebx,8
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+24]
	jb	_4714
	call	_brl_blitz_ArrayBoundsError
_4714:
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	push	dword [eax+edi*4+24]
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,dword [ebp-96]
	push	dword [edx+eax*4+24]
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,dword [ebp-112]
	push	dword [edx+eax*4+24]
	mov	eax,dword [ebp-8]
	push	dword [eax]
	call	_bb_getdiff
	add	esp,16
	mov	ecx,dword [_bb_combospeicher]
	mov	edx,esi
	add	edx,ebx
	cmp	eax,dword [ecx+edx*4+28]
	jne	_4715
	mov	eax,ebp
	push	eax
	push	_4717
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4716
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-80]
	mov	dword [ebp-28],eax
	call	dword [_bbOnDebugLeaveScope]
_4715:
	call	dword [_bbOnDebugLeaveScope]
_295:
	add	dword [ebp-80],1
_4703:
	cmp	dword [ebp-80],15
	jle	_297
_296:
	push	_4719
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_4721
	call	_brl_blitz_ArrayBoundsError
_4721:
	mov	esi,0
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_4723
	call	_brl_blitz_ArrayBoundsError
_4723:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	add	eax,1
	mov	dword [ebp-60],eax
	push	_4724
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_4726
	call	_brl_blitz_ArrayBoundsError
_4726:
	mov	esi,1
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_4728
	call	_brl_blitz_ArrayBoundsError
_4728:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	add	eax,1
	mov	dword [ebp-64],eax
	push	_4729
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_4731
	call	_brl_blitz_ArrayBoundsError
_4731:
	mov	esi,2
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_4733
	call	_brl_blitz_ArrayBoundsError
_4733:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	add	eax,1
	mov	dword [ebp-68],eax
	push	_4734
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_4736
	call	_brl_blitz_ArrayBoundsError
_4736:
	mov	esi,3
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_4738
	call	_brl_blitz_ArrayBoundsError
_4738:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	add	eax,1
	mov	dword [ebp-72],eax
	push	_4739
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_4741
	call	_brl_blitz_ArrayBoundsError
_4741:
	mov	esi,4
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_4743
	call	_brl_blitz_ArrayBoundsError
_4743:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	mov	dword [ebp-76],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_4745
_4693:
	mov	eax,ebp
	push	eax
	push	_4978
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4746
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	cmp	eax,21
	setg	al
	movzx	eax,al
	cmp	eax,0
	je	_4747
	mov	eax,dword [ebp-20]
	cmp	eax,10
	setge	al
	movzx	eax,al
_4747:
	cmp	eax,0
	je	_4749
	mov	eax,dword [ebp-20]
	cmp	eax,21
	setle	al
	movzx	eax,al
_4749:
	cmp	eax,0
	je	_4751
	mov	eax,ebp
	push	eax
	push	_4764
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4752
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],2
	push	_4753
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],3
	push	_4754
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],1
	push	_4755
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],22
	push	_4756
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],31
	push	_4757
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],10
	push	_4758
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],21
	push	_4759
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],0
	push	_4760
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-64],0
	push	_4761
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-68],1
	push	_4762
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-72],0
	push	_4763
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-76],0
	call	dword [_bbOnDebugLeaveScope]
	jmp	_4765
_4751:
	mov	eax,ebp
	push	eax
	push	_4977
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4766
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	cmp	eax,21
	setg	al
	movzx	eax,al
	cmp	eax,0
	je	_4767
	mov	eax,dword [ebp-20]
	cmp	eax,21
	setg	al
	movzx	eax,al
_4767:
	cmp	eax,0
	je	_4769
	mov	eax,ebp
	push	eax
	push	_4820
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4770
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],3
	push	_4771
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],4
	push	_4772
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],2
	push	_4773
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],22
	push	_4774
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],31
	push	_4775
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],22
	push	_4776
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],31
	push	_4777
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-84],0
	mov	dword [ebp-84],0
	jmp	_4779
_300:
	mov	eax,ebp
	push	eax
	push	_4794
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4780
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-32]
	mov	dword [ebp-116],eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-116],eax
	jb	_4782
	call	_brl_blitz_ArrayBoundsError
_4782:
	mov	eax,dword [ebp-36]
	mov	dword [ebp-100],eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-100],eax
	jb	_4784
	call	_brl_blitz_ArrayBoundsError
_4784:
	mov	edi,dword [ebp-40]
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+20]
	jb	_4786
	call	_brl_blitz_ArrayBoundsError
_4786:
	mov	eax,dword [ebp-84]
	mov	edx,dword [_bb_combospeicher]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+20]
	jb	_4788
	call	_brl_blitz_ArrayBoundsError
_4788:
	mov	ebx,8
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+24]
	jb	_4790
	call	_brl_blitz_ArrayBoundsError
_4790:
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	push	dword [eax+edi*4+24]
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,dword [ebp-100]
	push	dword [edx+eax*4+24]
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,dword [ebp-116]
	push	dword [edx+eax*4+24]
	mov	eax,dword [ebp-8]
	push	dword [eax]
	call	_bb_getdiff
	add	esp,16
	mov	ecx,dword [_bb_combospeicher]
	mov	edx,esi
	add	edx,ebx
	cmp	eax,dword [ecx+edx*4+28]
	jne	_4791
	mov	eax,ebp
	push	eax
	push	_4793
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4792
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-84]
	mov	dword [ebp-28],eax
	call	dword [_bbOnDebugLeaveScope]
_4791:
	call	dword [_bbOnDebugLeaveScope]
_298:
	add	dword [ebp-84],1
_4779:
	cmp	dword [ebp-84],15
	jle	_300
_299:
	push	_4795
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_4797
	call	_brl_blitz_ArrayBoundsError
_4797:
	mov	esi,0
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_4799
	call	_brl_blitz_ArrayBoundsError
_4799:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	mov	dword [ebp-60],eax
	push	_4800
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_4802
	call	_brl_blitz_ArrayBoundsError
_4802:
	mov	esi,1
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_4804
	call	_brl_blitz_ArrayBoundsError
_4804:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	mov	dword [ebp-64],eax
	push	_4805
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_4807
	call	_brl_blitz_ArrayBoundsError
_4807:
	mov	esi,2
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_4809
	call	_brl_blitz_ArrayBoundsError
_4809:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	mov	dword [ebp-68],eax
	push	_4810
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_4812
	call	_brl_blitz_ArrayBoundsError
_4812:
	mov	esi,3
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_4814
	call	_brl_blitz_ArrayBoundsError
_4814:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	add	eax,1
	mov	dword [ebp-72],eax
	push	_4815
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_4817
	call	_brl_blitz_ArrayBoundsError
_4817:
	mov	esi,4
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_4819
	call	_brl_blitz_ArrayBoundsError
_4819:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	mov	dword [ebp-76],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_4821
_4769:
	mov	eax,ebp
	push	eax
	push	_4976
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4822
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	cmp	eax,10
	setge	al
	movzx	eax,al
	cmp	eax,0
	je	_4823
	mov	eax,dword [ebp-24]
	cmp	eax,21
	setle	al
	movzx	eax,al
_4823:
	cmp	eax,0
	je	_4825
	mov	eax,dword [ebp-20]
	cmp	eax,21
	setg	al
	movzx	eax,al
_4825:
	cmp	eax,0
	je	_4827
	mov	eax,ebp
	push	eax
	push	_4840
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4828
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],4
	push	_4829
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],5
	push	_4830
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],3
	push	_4831
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],10
	push	_4832
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],21
	push	_4833
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],22
	push	_4834
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],31
	push	_4835
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],1
	push	_4836
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-64],0
	push	_4837
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-68],0
	push	_4838
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-72],0
	push	_4839
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-76],0
	call	dword [_bbOnDebugLeaveScope]
	jmp	_4841
_4827:
	mov	eax,ebp
	push	eax
	push	_4975
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4842
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	cmp	eax,10
	setl	al
	movzx	eax,al
	cmp	eax,0
	je	_4843
	mov	eax,dword [ebp-20]
	cmp	eax,21
	setg	al
	movzx	eax,al
_4843:
	cmp	eax,0
	je	_4845
	mov	eax,ebp
	push	eax
	push	_4896
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4846
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],5
	push	_4847
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],6
	push	_4848
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],4
	push	_4849
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],0
	push	_4850
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],9
	push	_4851
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],22
	push	_4852
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],31
	push	_4853
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-88],0
	mov	dword [ebp-88],0
	jmp	_4855
_303:
	mov	eax,ebp
	push	eax
	push	_4870
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4856
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-32]
	mov	dword [ebp-120],eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-120],eax
	jb	_4858
	call	_brl_blitz_ArrayBoundsError
_4858:
	mov	eax,dword [ebp-36]
	mov	dword [ebp-104],eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-104],eax
	jb	_4860
	call	_brl_blitz_ArrayBoundsError
_4860:
	mov	edi,dword [ebp-40]
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+20]
	jb	_4862
	call	_brl_blitz_ArrayBoundsError
_4862:
	mov	eax,dword [ebp-88]
	mov	edx,dword [_bb_combospeicher]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+20]
	jb	_4864
	call	_brl_blitz_ArrayBoundsError
_4864:
	mov	ebx,8
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+24]
	jb	_4866
	call	_brl_blitz_ArrayBoundsError
_4866:
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	push	dword [eax+edi*4+24]
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,dword [ebp-104]
	push	dword [edx+eax*4+24]
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,dword [ebp-120]
	push	dword [edx+eax*4+24]
	mov	eax,dword [ebp-8]
	push	dword [eax]
	call	_bb_getdiff
	add	esp,16
	mov	ecx,dword [_bb_combospeicher]
	mov	edx,esi
	add	edx,ebx
	cmp	eax,dword [ecx+edx*4+28]
	jne	_4867
	mov	eax,ebp
	push	eax
	push	_4869
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4868
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-88]
	mov	dword [ebp-28],eax
	call	dword [_bbOnDebugLeaveScope]
_4867:
	call	dword [_bbOnDebugLeaveScope]
_301:
	add	dword [ebp-88],1
_4855:
	cmp	dword [ebp-88],15
	jle	_303
_302:
	push	_4871
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_4873
	call	_brl_blitz_ArrayBoundsError
_4873:
	mov	esi,0
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_4875
	call	_brl_blitz_ArrayBoundsError
_4875:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	mov	dword [ebp-60],eax
	push	_4876
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_4878
	call	_brl_blitz_ArrayBoundsError
_4878:
	mov	esi,1
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_4880
	call	_brl_blitz_ArrayBoundsError
_4880:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	mov	dword [ebp-64],eax
	push	_4881
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_4883
	call	_brl_blitz_ArrayBoundsError
_4883:
	mov	esi,2
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_4885
	call	_brl_blitz_ArrayBoundsError
_4885:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	add	eax,1
	mov	dword [ebp-68],eax
	push	_4886
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_4888
	call	_brl_blitz_ArrayBoundsError
_4888:
	mov	esi,3
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_4890
	call	_brl_blitz_ArrayBoundsError
_4890:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	add	eax,1
	mov	dword [ebp-72],eax
	push	_4891
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_4893
	call	_brl_blitz_ArrayBoundsError
_4893:
	mov	esi,4
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_4895
	call	_brl_blitz_ArrayBoundsError
_4895:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	mov	dword [ebp-76],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_4897
_4845:
	mov	eax,ebp
	push	eax
	push	_4974
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4898
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	cmp	eax,10
	setl	al
	movzx	eax,al
	cmp	eax,0
	je	_4899
	mov	eax,dword [ebp-20]
	cmp	eax,10
	setge	al
	movzx	eax,al
_4899:
	cmp	eax,0
	je	_4901
	mov	eax,dword [ebp-20]
	cmp	eax,21
	setle	al
	movzx	eax,al
_4901:
	cmp	eax,0
	je	_4903
	mov	eax,ebp
	push	eax
	push	_4916
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4904
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],6
	push	_4905
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],7
	push	_4906
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],5
	push	_4907
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],0
	push	_4908
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],9
	push	_4909
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],10
	push	_4910
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],21
	push	_4911
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],0
	push	_4912
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-64],1
	push	_4913
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-68],1
	push	_4914
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-72],0
	push	_4915
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-76],0
	call	dword [_bbOnDebugLeaveScope]
	jmp	_4917
_4903:
	mov	eax,ebp
	push	eax
	push	_4973
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4918
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	cmp	eax,10
	setl	al
	movzx	eax,al
	cmp	eax,0
	je	_4919
	mov	eax,dword [ebp-20]
	cmp	eax,10
	setl	al
	movzx	eax,al
_4919:
	cmp	eax,0
	je	_4921
	mov	eax,ebp
	push	eax
	push	_4972
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4922
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],7
	push	_4923
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],0
	push	_4924
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],6
	push	_4925
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],0
	push	_4926
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],9
	push	_4927
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],0
	push	_4928
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],9
	push	_4929
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-92],0
	mov	dword [ebp-92],0
	jmp	_4931
_306:
	mov	eax,ebp
	push	eax
	push	_4946
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4932
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-32]
	mov	dword [ebp-124],eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-124],eax
	jb	_4934
	call	_brl_blitz_ArrayBoundsError
_4934:
	mov	eax,dword [ebp-36]
	mov	dword [ebp-108],eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-108],eax
	jb	_4936
	call	_brl_blitz_ArrayBoundsError
_4936:
	mov	edi,dword [ebp-40]
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	cmp	edi,dword [eax+20]
	jb	_4938
	call	_brl_blitz_ArrayBoundsError
_4938:
	mov	eax,dword [ebp-92]
	mov	edx,dword [_bb_combospeicher]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+20]
	jb	_4940
	call	_brl_blitz_ArrayBoundsError
_4940:
	mov	ebx,8
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+24]
	jb	_4942
	call	_brl_blitz_ArrayBoundsError
_4942:
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	push	dword [eax+edi*4+24]
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,dword [ebp-108]
	push	dword [edx+eax*4+24]
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	mov	eax,dword [ebp-124]
	push	dword [edx+eax*4+24]
	mov	eax,dword [ebp-8]
	push	dword [eax]
	call	_bb_getdiff
	add	esp,16
	mov	ecx,dword [_bb_combospeicher]
	mov	edx,esi
	add	edx,ebx
	cmp	eax,dword [ecx+edx*4+28]
	jne	_4943
	mov	eax,ebp
	push	eax
	push	_4945
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4944
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-92]
	mov	dword [ebp-28],eax
	call	dword [_bbOnDebugLeaveScope]
_4943:
	call	dword [_bbOnDebugLeaveScope]
_304:
	add	dword [ebp-92],1
_4931:
	cmp	dword [ebp-92],15
	jle	_306
_305:
	push	_4947
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_4949
	call	_brl_blitz_ArrayBoundsError
_4949:
	mov	esi,0
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_4951
	call	_brl_blitz_ArrayBoundsError
_4951:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	add	eax,1
	mov	dword [ebp-60],eax
	push	_4952
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_4954
	call	_brl_blitz_ArrayBoundsError
_4954:
	mov	esi,1
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_4956
	call	_brl_blitz_ArrayBoundsError
_4956:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	add	eax,1
	mov	dword [ebp-64],eax
	push	_4957
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_4959
	call	_brl_blitz_ArrayBoundsError
_4959:
	mov	esi,2
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_4961
	call	_brl_blitz_ArrayBoundsError
_4961:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	mov	dword [ebp-68],eax
	push	_4962
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_4964
	call	_brl_blitz_ArrayBoundsError
_4964:
	mov	esi,3
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_4966
	call	_brl_blitz_ArrayBoundsError
_4966:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	add	eax,1
	mov	dword [ebp-72],eax
	push	_4967
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	mov	eax,dword [_bb_combospeicher]
	imul	ebx,dword [eax+24]
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+20]
	jb	_4969
	call	_brl_blitz_ArrayBoundsError
_4969:
	mov	esi,4
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+24]
	jb	_4971
	call	_brl_blitz_ArrayBoundsError
_4971:
	mov	eax,dword [_bb_combospeicher]
	add	ebx,esi
	mov	eax,dword [eax+ebx*4+28]
	mov	dword [ebp-76],eax
	call	dword [_bbOnDebugLeaveScope]
_4921:
	call	dword [_bbOnDebugLeaveScope]
_4917:
	call	dword [_bbOnDebugLeaveScope]
_4897:
	call	dword [_bbOnDebugLeaveScope]
_4841:
	call	dword [_bbOnDebugLeaveScope]
_4821:
	call	dword [_bbOnDebugLeaveScope]
_4765:
	call	dword [_bbOnDebugLeaveScope]
_4745:
	call	dword [_bbOnDebugLeaveScope]
_4689:
	push	_4980
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-28],-1
	jne	_4981
	mov	eax,ebp
	push	eax
	push	_4983
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4982
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	push	1
	push	0
	push	dword [ebp-76]
	push	dword [ebp-72]
	push	dword [ebp-68]
	push	dword [ebp-64]
	push	dword [ebp-60]
	push	31
	push	1092616192
	push	dword [ebp-56]
	push	dword [ebp-52]
	push	dword [ebp-48]
	push	dword [ebp-44]
	push	dword [ebp-20]
	push	dword [ebp-24]
	push	dword [ebp-40]
	push	dword [ebp-36]
	push	dword [ebp-32]
	mov	eax,dword [ebp-12]
	lea	eax,dword [eax]
	push	eax
	mov	eax,dword [ebp-4]
	lea	eax,dword [eax]
	push	eax
	call	_bb_drawPixel
	add	esp,84
	call	dword [_bbOnDebugLeaveScope]
	jmp	_4984
_4981:
	mov	eax,ebp
	push	eax
	push	_4998
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4985
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-28]
	mov	eax,dword [_bb_combospeicher]
	imul	edx,dword [eax+24]
	mov	dword [ebp-136],edx
	mov	eax,dword [_bb_combospeicher]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-136],eax
	jb	_4987
	call	_brl_blitz_ArrayBoundsError
_4987:
	mov	dword [ebp-132],5
	mov	eax,dword [_bb_combospeicher]
	mov	eax,dword [eax+24]
	cmp	dword [ebp-132],eax
	jb	_4989
	call	_brl_blitz_ArrayBoundsError
_4989:
	mov	edx,dword [ebp-28]
	mov	eax,dword [_bb_combospeicher]
	imul	edx,dword [eax+24]
	mov	dword [ebp-128],edx
	mov	eax,dword [_bb_combospeicher]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-128],eax
	jb	_4991
	call	_brl_blitz_ArrayBoundsError
_4991:
	mov	edi,6
	mov	eax,dword [_bb_combospeicher]
	cmp	edi,dword [eax+24]
	jb	_4993
	call	_brl_blitz_ArrayBoundsError
_4993:
	mov	eax,dword [ebp-28]
	mov	edx,dword [_bb_combospeicher]
	imul	eax,dword [edx+24]
	mov	esi,eax
	mov	eax,dword [_bb_combospeicher]
	cmp	esi,dword [eax+20]
	jb	_4995
	call	_brl_blitz_ArrayBoundsError
_4995:
	mov	ebx,7
	mov	eax,dword [_bb_combospeicher]
	cmp	ebx,dword [eax+24]
	jb	_4997
	call	_brl_blitz_ArrayBoundsError
_4997:
	mov	edx,1
	mov	eax,dword [_bb_combospeicher]
	mov	ecx,esi
	add	ecx,ebx
	sub	edx,dword [eax+ecx*4+28]
	push	edx
	mov	ecx,1
	mov	edx,dword [_bb_combospeicher]
	mov	eax,dword [ebp-128]
	add	eax,edi
	sub	ecx,dword [edx+eax*4+28]
	push	ecx
	mov	edx,dword [_bb_combospeicher]
	mov	eax,dword [ebp-136]
	add	eax,dword [ebp-132]
	push	dword [edx+eax*4+28]
	push	dword [ebp-76]
	push	dword [ebp-72]
	push	dword [ebp-68]
	push	dword [ebp-64]
	push	dword [ebp-60]
	push	31
	push	1092616192
	push	dword [ebp-56]
	push	dword [ebp-52]
	push	dword [ebp-48]
	push	dword [ebp-44]
	push	dword [ebp-20]
	push	dword [ebp-24]
	push	dword [ebp-40]
	push	dword [ebp-36]
	push	dword [ebp-32]
	mov	eax,dword [ebp-12]
	lea	eax,dword [eax]
	push	eax
	mov	eax,dword [ebp-4]
	lea	eax,dword [eax]
	push	eax
	call	_bb_drawPixel
	add	esp,84
	call	dword [_bbOnDebugLeaveScope]
_4984:
	call	dword [_bbOnDebugLeaveScope]
_4656:
	call	dword [_bbOnDebugLeaveScope]
_292:
	add	dword [ebp-24],1
_4638:
	cmp	dword [ebp-24],31
	jle	_294
_293:
	call	dword [_bbOnDebugLeaveScope]
_289:
	add	dword [ebp-20],1
_4635:
	cmp	dword [ebp-20],31
	jle	_291
_290:
	mov	ebx,0
	jmp	_466
_466:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_drawPixel:
	push	ebp
	mov	ebp,esp
	sub	esp,152
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	eax,dword [ebp+24]
	mov	dword [ebp-20],eax
	mov	eax,dword [ebp+28]
	mov	dword [ebp-24],eax
	mov	eax,dword [ebp+32]
	mov	dword [ebp-28],eax
	mov	eax,dword [ebp+36]
	mov	dword [ebp-32],eax
	mov	eax,dword [ebp+40]
	mov	dword [ebp-36],eax
	mov	eax,dword [ebp+44]
	mov	dword [ebp-40],eax
	mov	eax,dword [ebp+48]
	mov	dword [ebp-44],eax
	fld	dword [ebp+52]
	fstp	dword [ebp-48]
	mov	eax,dword [ebp+56]
	mov	dword [ebp-52],eax
	mov	eax,dword [ebp+60]
	mov	dword [ebp-56],eax
	mov	eax,dword [ebp+64]
	mov	dword [ebp-60],eax
	mov	eax,dword [ebp+68]
	mov	dword [ebp-64],eax
	mov	eax,dword [ebp+72]
	mov	dword [ebp-68],eax
	mov	eax,dword [ebp+76]
	mov	dword [ebp-72],eax
	mov	eax,dword [ebp+80]
	mov	dword [ebp-76],eax
	mov	eax,dword [ebp+84]
	mov	dword [ebp-80],eax
	mov	eax,dword [ebp+88]
	mov	dword [ebp-84],eax
	mov	dword [ebp-88],0
	mov	dword [ebp-92],0
	mov	dword [ebp-96],0
	mov	dword [ebp-100],0
	mov	dword [ebp-104],0
	mov	dword [ebp-108],0
	mov	dword [ebp-112],0
	mov	dword [ebp-116],0
	mov	dword [ebp-120],0
	mov	dword [ebp-128],0
	mov	dword [ebp-132],0
	mov	dword [ebp-136],0
	mov	dword [ebp-144],0
	mov	dword [ebp-148],0
	mov	dword [ebp-140],0
	mov	dword [ebp-124],0
	push	ebp
	push	_5125
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5009
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-88],0
	mov	dword [ebp-92],0
	push	_5012
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	cmp	eax,dword [ebp-32]
	setl	al
	movzx	eax,al
	cmp	eax,0
	jne	_5013
	mov	eax,dword [ebp-24]
	cmp	eax,dword [ebp-36]
	setg	al
	movzx	eax,al
_5013:
	cmp	eax,0
	je	_5015
	push	ebp
	push	_5017
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5016
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	call	dword [_bbOnDebugLeaveScope]
	jmp	_489
_5015:
	push	_5018
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	cmp	eax,dword [ebp-40]
	setl	al
	movzx	eax,al
	cmp	eax,0
	jne	_5019
	mov	eax,dword [ebp-28]
	cmp	eax,dword [ebp-44]
	setg	al
	movzx	eax,al
_5019:
	cmp	eax,0
	je	_5021
	push	ebp
	push	_5023
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5022
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	call	dword [_bbOnDebugLeaveScope]
	jmp	_489
_5021:
	push	_5024
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-36]
	sub	eax,dword [ebp-32]
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fstp	dword [ebp-48]
	push	_5025
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],0
	push	_5027
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	sub	eax,dword [ebp-32]
	mov	dword [ebp-100],eax
	mov	eax,dword [ebp-28]
	sub	eax,dword [ebp-40]
	mov	dword [ebp-104],eax
	mov	eax,dword [ebp-24]
	sub	eax,dword [ebp-32]
	mov	dword [ebp-108],eax
	mov	eax,dword [ebp-28]
	sub	eax,dword [ebp-40]
	mov	dword [ebp-112],eax
	mov	eax,dword [ebp-24]
	sub	eax,dword [ebp-32]
	mov	dword [ebp-116],eax
	mov	eax,dword [ebp-28]
	sub	eax,dword [ebp-40]
	mov	dword [ebp-120],eax
	push	_5034
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-56],1
	jne	_5035
	push	ebp
	push	_5039
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5036
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-44]
	sub	eax,dword [ebp-40]
	sub	eax,dword [ebp-104]
	mov	dword [ebp-104],eax
	push	_5037
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-44]
	sub	eax,dword [ebp-40]
	sub	eax,dword [ebp-112]
	mov	dword [ebp-112],eax
	push	_5038
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-44]
	sub	eax,dword [ebp-40]
	sub	eax,dword [ebp-120]
	mov	dword [ebp-120],eax
	call	dword [_bbOnDebugLeaveScope]
_5035:
	push	_5040
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-60],1
	jne	_5041
	push	ebp
	push	_5045
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5042
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-36]
	sub	eax,dword [ebp-32]
	sub	eax,dword [ebp-100]
	mov	dword [ebp-100],eax
	push	_5043
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-36]
	sub	eax,dword [ebp-32]
	sub	eax,dword [ebp-108]
	mov	dword [ebp-108],eax
	push	_5044
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-36]
	sub	eax,dword [ebp-32]
	sub	eax,dword [ebp-116]
	mov	dword [ebp-116],eax
	call	dword [_bbOnDebugLeaveScope]
_5041:
	push	_5046
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-64],1
	jne	_5047
	push	ebp
	push	_5061
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5048
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-100]
	mov	dword [ebp-128],eax
	push	_5050
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-104]
	mov	dword [ebp-100],eax
	push	_5051
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-44]
	sub	eax,dword [ebp-40]
	sub	eax,dword [ebp-128]
	mov	dword [ebp-104],eax
	push	_5052
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-44]
	sub	eax,dword [ebp-40]
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fstp	dword [ebp-48]
	push	_5053
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-108]
	mov	dword [ebp-132],eax
	push	_5055
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-116]
	mov	dword [ebp-136],eax
	push	_5057
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-112]
	mov	dword [ebp-108],eax
	push	_5058
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-120]
	mov	dword [ebp-116],eax
	push	_5059
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-44]
	sub	eax,dword [ebp-40]
	sub	eax,dword [ebp-132]
	mov	dword [ebp-112],eax
	push	_5060
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-44]
	sub	eax,dword [ebp-40]
	sub	eax,dword [ebp-136]
	mov	dword [ebp-120],eax
	call	dword [_bbOnDebugLeaveScope]
_5047:
	push	_5065
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-68],1
	jne	_5066
	push	ebp
	push	_5087
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5067
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-100]
	cmp	dword [ebp-104],eax
	jge	_5068
	push	ebp
	push	_5073
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5069
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-100]
	mov	dword [ebp-144],eax
	push	_5071
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-104]
	mov	dword [ebp-100],eax
	push	_5072
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-36]
	sub	eax,dword [ebp-32]
	sub	eax,dword [ebp-144]
	mov	dword [ebp-104],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_5074
_5068:
	push	ebp
	push	_5079
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5075
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-104]
	mov	dword [ebp-148],eax
	push	_5077
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-104]
	mov	dword [ebp-100],eax
	push	_5078
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-44]
	sub	eax,dword [ebp-40]
	sub	eax,dword [ebp-148]
	mov	dword [ebp-104],eax
	call	dword [_bbOnDebugLeaveScope]
_5074:
	push	_5080
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-36]
	sub	eax,dword [ebp-32]
	sub	eax,dword [ebp-108]
	mov	dword [ebp-108],eax
	push	_5081
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-44]
	sub	eax,dword [ebp-40]
	sub	eax,dword [ebp-112]
	mov	dword [ebp-112],eax
	push	_5082
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-116]
	mov	dword [ebp-140],eax
	push	_5084
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-120]
	mov	dword [ebp-116],eax
	push	_5085
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-44]
	sub	eax,dword [ebp-40]
	sub	eax,dword [ebp-140]
	mov	dword [ebp-120],eax
	push	_5086
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],1
	call	dword [_bbOnDebugLeaveScope]
_5066:
	push	_5088
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-72],1
	jne	_5089
	push	ebp
	push	_5099
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5090
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-36]
	sub	edx,dword [ebp-32]
	mov	eax,dword [ebp-44]
	sub	eax,dword [ebp-40]
	cmp	edx,eax
	jne	_5091
	push	ebp
	push	_5098
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5092
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-36]
	sub	eax,dword [ebp-32]
	sub	eax,dword [ebp-100]
	mov	dword [ebp-100],eax
	push	_5093
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-44]
	sub	eax,dword [ebp-40]
	sub	eax,dword [ebp-104]
	mov	dword [ebp-104],eax
	push	_5094
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-36]
	sub	eax,dword [ebp-32]
	sub	eax,dword [ebp-108]
	mov	dword [ebp-108],eax
	push	_5095
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-36]
	sub	eax,dword [ebp-32]
	sub	eax,dword [ebp-116]
	mov	dword [ebp-116],eax
	push	_5096
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-44]
	sub	eax,dword [ebp-40]
	sub	eax,dword [ebp-112]
	mov	dword [ebp-112],eax
	push	_5097
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-44]
	sub	eax,dword [ebp-40]
	sub	eax,dword [ebp-120]
	mov	dword [ebp-120],eax
	call	dword [_bbOnDebugLeaveScope]
_5091:
	call	dword [_bbOnDebugLeaveScope]
_5089:
	push	_5100
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-124],0
	push	_5102
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-88],0
	jle	_5103
	push	ebp
	push	_5113
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5104
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-92],0
	jle	_5105
	push	ebp
	push	_5108
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5106
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-52]
	fld	dword [ebp-48]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	push	dword [ebp-116]
	push	dword [ebp-108]
	push	dword [ebp-84]
	push	dword [ebp-80]
	push	dword [ebp-76]
	push	dword [ebp-96]
	push	dword [ebp-104]
	push	dword [ebp-100]
	mov	eax,dword [ebp-92]
	sub	eax,dword [ebp-28]
	push	eax
	mov	eax,dword [ebp-88]
	sub	eax,dword [ebp-24]
	push	eax
	push	dword [ebp-20]
	push	dword [ebp-16]
	push	dword [ebp-12]
	mov	eax,dword [ebp-8]
	lea	eax,dword [eax]
	push	eax
	mov	eax,dword [ebp-4]
	lea	eax,dword [eax]
	push	eax
	call	_bb_getAllColors
	add	esp,68
	mov	dword [ebp-124],eax
	push	_5107
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-124]
	mov	eax,dword [ebp-92]
	sub	eax,dword [ebp-28]
	push	eax
	mov	eax,dword [ebp-88]
	sub	eax,dword [ebp-24]
	push	eax
	mov	eax,dword [ebp-4]
	push	dword [eax]
	call	_brl_pixmap_WritePixel
	add	esp,16
	call	dword [_bbOnDebugLeaveScope]
	jmp	_5109
_5105:
	push	ebp
	push	_5112
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5110
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-52]
	fld	dword [ebp-48]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	push	dword [ebp-116]
	push	dword [ebp-84]
	push	dword [ebp-80]
	push	dword [ebp-76]
	push	dword [ebp-108]
	push	dword [ebp-96]
	push	dword [ebp-104]
	push	dword [ebp-100]
	push	dword [ebp-28]
	mov	eax,dword [ebp-88]
	sub	eax,dword [ebp-24]
	push	eax
	push	dword [ebp-20]
	push	dword [ebp-16]
	push	dword [ebp-12]
	mov	eax,dword [ebp-8]
	lea	eax,dword [eax]
	push	eax
	mov	eax,dword [ebp-4]
	lea	eax,dword [eax]
	push	eax
	call	_bb_getAllColors
	add	esp,68
	mov	dword [ebp-124],eax
	push	_5111
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-124]
	push	dword [ebp-28]
	mov	eax,dword [ebp-88]
	sub	eax,dword [ebp-24]
	push	eax
	mov	eax,dword [ebp-4]
	push	dword [eax]
	call	_brl_pixmap_WritePixel
	add	esp,16
	call	dword [_bbOnDebugLeaveScope]
_5109:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_5114
_5103:
	push	ebp
	push	_5124
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5115
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-92],0
	jle	_5116
	push	ebp
	push	_5119
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5117
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-52]
	fld	dword [ebp-48]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	push	dword [ebp-116]
	push	dword [ebp-108]
	push	dword [ebp-84]
	push	dword [ebp-80]
	push	dword [ebp-76]
	push	dword [ebp-96]
	push	dword [ebp-104]
	push	dword [ebp-100]
	mov	eax,dword [ebp-92]
	sub	eax,dword [ebp-28]
	push	eax
	push	dword [ebp-24]
	push	dword [ebp-20]
	push	dword [ebp-16]
	push	dword [ebp-12]
	mov	eax,dword [ebp-8]
	lea	eax,dword [eax]
	push	eax
	mov	eax,dword [ebp-4]
	lea	eax,dword [eax]
	push	eax
	call	_bb_getAllColors
	add	esp,68
	mov	dword [ebp-124],eax
	push	_5118
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-124]
	mov	eax,dword [ebp-92]
	sub	eax,dword [ebp-28]
	push	eax
	push	dword [ebp-24]
	mov	eax,dword [ebp-4]
	push	dword [eax]
	call	_brl_pixmap_WritePixel
	add	esp,16
	call	dword [_bbOnDebugLeaveScope]
	jmp	_5120
_5116:
	push	ebp
	push	_5123
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5121
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-52]
	fld	dword [ebp-48]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	push	dword [ebp-116]
	push	dword [ebp-108]
	push	dword [ebp-84]
	push	dword [ebp-80]
	push	dword [ebp-76]
	push	dword [ebp-96]
	push	dword [ebp-104]
	push	dword [ebp-100]
	push	dword [ebp-28]
	push	dword [ebp-24]
	push	dword [ebp-20]
	push	dword [ebp-16]
	push	dword [ebp-12]
	mov	eax,dword [ebp-8]
	lea	eax,dword [eax]
	push	eax
	mov	eax,dword [ebp-4]
	lea	eax,dword [eax]
	push	eax
	call	_bb_getAllColors
	add	esp,68
	mov	dword [ebp-124],eax
	push	_5122
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-124]
	push	dword [ebp-28]
	push	dword [ebp-24]
	mov	eax,dword [ebp-4]
	push	dword [eax]
	call	_brl_pixmap_WritePixel
	add	esp,16
	call	dword [_bbOnDebugLeaveScope]
_5120:
	call	dword [_bbOnDebugLeaveScope]
_5114:
	mov	ebx,0
	jmp	_489
_489:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_getAllColors:
	push	ebp
	mov	ebp,esp
	sub	esp,76
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	eax,dword [ebp+24]
	mov	dword [ebp-20],eax
	mov	eax,dword [ebp+28]
	mov	dword [ebp-24],eax
	mov	eax,dword [ebp+32]
	mov	dword [ebp-28],eax
	mov	eax,dword [ebp+36]
	mov	dword [ebp-32],eax
	mov	eax,dword [ebp+40]
	mov	dword [ebp-36],eax
	mov	eax,dword [ebp+44]
	mov	dword [ebp-40],eax
	mov	eax,dword [ebp+48]
	mov	dword [ebp-44],eax
	mov	eax,dword [ebp+52]
	mov	dword [ebp-48],eax
	mov	eax,dword [ebp+56]
	mov	dword [ebp-52],eax
	mov	eax,dword [ebp+60]
	mov	dword [ebp-56],eax
	mov	eax,dword [ebp+64]
	mov	dword [ebp-60],eax
	mov	eax,dword [ebp+68]
	mov	dword [ebp-64],eax
	mov	eax,dword [ebp+72]
	mov	dword [ebp-68],eax
	mov	dword [ebp-72],0
	push	ebp
	push	_5231
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5148
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-72],0
	push	_5150
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-68]
	mov	eax,dword [ebp-64]
	mov	dword [ebp+-76],eax
	fild	dword [ebp+-76]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebp-40]
	push	dword [ebp-60]
	push	dword [ebp-56]
	push	dword [ebp-36]
	push	dword [ebp-32]
	call	_bb_setfeedColor
	add	esp,28
	push	_5151
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	ebx,dword [eax]
	cmp	ebx,_bbNullObject
	jne	_5153
	call	_brl_blitz_NullObjectError
_5153:
	push	dword [ebp-28]
	push	dword [ebp-24]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,12
	push	eax
	call	_bb_feedColor
	add	esp,4
	push	_5154
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+20]
	jb	_5156
	call	_brl_blitz_ArrayBoundsError
_5156:
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax]
	cmp	dword [eax+ebx*4+24],_bbNullObject
	je	_5157
	push	ebp
	push	_5204
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5158
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-44],0
	jne	_5159
	push	ebp
	push	_5165
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5160
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+20]
	jb	_5162
	call	_brl_blitz_ArrayBoundsError
_5162:
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax]
	mov	ebx,dword [eax+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_5164
	call	_brl_blitz_NullObjectError
_5164:
	push	dword [ebp-28]
	push	dword [ebp-24]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,12
	push	eax
	call	_bb_feedColor
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_5166
_5159:
	push	ebp
	push	_5203
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5167
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-44],1
	jne	_5168
	push	ebp
	push	_5172
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5169
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	ebx,dword [eax]
	cmp	ebx,_bbNullObject
	jne	_5171
	call	_brl_blitz_NullObjectError
_5171:
	push	dword [ebp-28]
	push	dword [ebp-24]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,12
	push	eax
	call	_bb_feedColor
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_5173
_5168:
	push	ebp
	push	_5202
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5174
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-44],2
	jne	_5175
	push	ebp
	push	_5186
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5176
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+20]
	jb	_5178
	call	_brl_blitz_ArrayBoundsError
_5178:
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax]
	cmp	dword [eax+ebx*4+24],_bbNullObject
	je	_5179
	push	ebp
	push	_5185
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5180
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+20]
	jb	_5182
	call	_brl_blitz_ArrayBoundsError
_5182:
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax]
	mov	ebx,dword [eax+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_5184
	call	_brl_blitz_NullObjectError
_5184:
	push	dword [ebp-28]
	push	dword [ebp-24]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,12
	push	eax
	call	_bb_feedColor
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_5179:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_5187
_5175:
	push	ebp
	push	_5201
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5188
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-44],3
	jne	_5189
	push	ebp
	push	_5200
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5190
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+20]
	jb	_5192
	call	_brl_blitz_ArrayBoundsError
_5192:
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax]
	cmp	dword [eax+ebx*4+24],_bbNullObject
	je	_5193
	push	ebp
	push	_5199
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5194
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+20]
	jb	_5196
	call	_brl_blitz_ArrayBoundsError
_5196:
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax]
	mov	ebx,dword [eax+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_5198
	call	_brl_blitz_NullObjectError
_5198:
	push	dword [ebp-28]
	push	dword [ebp-24]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,12
	push	eax
	call	_bb_feedColor
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_5193:
	call	dword [_bbOnDebugLeaveScope]
_5189:
	call	dword [_bbOnDebugLeaveScope]
_5187:
	call	dword [_bbOnDebugLeaveScope]
_5173:
	call	dword [_bbOnDebugLeaveScope]
_5166:
	call	dword [_bbOnDebugLeaveScope]
_5157:
	push	_5205
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+20]
	jb	_5207
	call	_brl_blitz_ArrayBoundsError
_5207:
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax]
	mov	eax,dword [eax+ebx*4+24]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_5208
	mov	eax,dword [ebp-48]
	cmp	eax,1
	sete	al
	movzx	eax,al
_5208:
	cmp	eax,0
	je	_5210
	push	ebp
	push	_5216
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5211
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+20]
	jb	_5213
	call	_brl_blitz_ArrayBoundsError
_5213:
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax]
	mov	ebx,dword [eax+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_5215
	call	_brl_blitz_NullObjectError
_5215:
	push	dword [ebp-28]
	push	dword [ebp-24]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,12
	push	eax
	call	_bb_feedColor
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_5210:
	push	_5217
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+20]
	jb	_5219
	call	_brl_blitz_ArrayBoundsError
_5219:
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax]
	mov	eax,dword [eax+ebx*4+24]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_5220
	mov	eax,dword [ebp-52]
	cmp	eax,1
	sete	al
	movzx	eax,al
_5220:
	cmp	eax,0
	je	_5222
	push	ebp
	push	_5228
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5223
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax]
	cmp	ebx,dword [eax+20]
	jb	_5225
	call	_brl_blitz_ArrayBoundsError
_5225:
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax]
	mov	ebx,dword [eax+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_5227
	call	_brl_blitz_NullObjectError
_5227:
	push	dword [ebp-28]
	push	dword [ebp-24]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,12
	push	eax
	call	_bb_feedColor
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_5222:
	push	_5229
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_pokefeedColor
	mov	dword [ebp-72],eax
	push	_5230
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-72]
	jmp	_508
_508:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_setfeedColor:
	push	ebp
	mov	ebp,esp
	sub	esp,28
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	eax,dword [ebp+24]
	mov	dword [ebp-20],eax
	fld	dword [ebp+28]
	fstp	dword [ebp-24]
	mov	eax,dword [ebp+32]
	mov	dword [ebp-28],eax
	push	ebp
	push	_5245
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5238
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-24]
	fstp	dword [_bb_feedfactor]
	push	_5239
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	mov	dword [_bb_feedpixel],eax
	push	_5240
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [_bb_feedposx],eax
	push	_5241
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	mov	dword [_bb_feedposy],eax
	push	_5242
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	dword [_bb_feedtexA],eax
	push	_5243
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	mov	dword [_bb_feedtexB],eax
	push	_5244
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-20]
	mov	dword [_bb_feedtexACT],eax
	mov	ebx,0
	jmp	_517
_517:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_feedColor:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_5260
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5250
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [_bb_feedcount],1
	push	_5251
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_feedcount],5
	jne	_5252
	push	ebp
	push	_5255
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5253
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_307
	call	_brl_system_Notify
	add	esp,8
	push	_5254
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	call	dword [_bbOnDebugLeaveScope]
_5252:
	push	_5256
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_feedcount]
	mov	eax,dword [_bb_feeddata]
	cmp	ebx,dword [eax+20]
	jb	_5258
	call	_brl_blitz_ArrayBoundsError
_5258:
	mov	eax,dword [_bb_feeddata]
	shl	ebx,2
	add	eax,ebx
	mov	edx,dword [ebp-4]
	mov	dword [eax+24],edx
	mov	ebx,0
	jmp	_520
_520:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_pokefeedColor:
	push	ebp
	mov	ebp,esp
	sub	esp,152
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],0
	mov	dword [ebp-8],0
	mov	dword [ebp-12],_bbEmptyArray
	mov	dword [ebp-16],0
	mov	dword [ebp-20],0
	mov	eax,ebp
	push	eax
	push	_5794
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5263
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	mov	dword [ebp-8],0
	push	_5266
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	4
	push	5
	push	2
	push	_5267
	call	_bbArrayNew
	add	esp,16
	mov	dword [ebp-12],eax
	push	_5269
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_feedcount],0
	jl	_5270
	mov	eax,ebp
	push	eax
	push	_5790
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5271
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,0
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5273
	call	_brl_blitz_ArrayBoundsError
_5273:
	mov	ebx,0
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5275
	call	_brl_blitz_ArrayBoundsError
_5275:
	mov	eax,dword [ebp-12]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	esi,0
	mov	eax,dword [_bb_feeddata]
	cmp	esi,dword [eax+20]
	jb	_5278
	call	_brl_blitz_ArrayBoundsError
_5278:
	mov	eax,dword [_bb_feeddata]
	mov	eax,dword [eax+esi*4+24]
	shr	eax,24
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fstp	dword [ebx+28]
	push	_5279
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,0
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5281
	call	_brl_blitz_ArrayBoundsError
_5281:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5283
	call	_brl_blitz_ArrayBoundsError
_5283:
	mov	eax,dword [ebp-12]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	esi,0
	mov	eax,dword [_bb_feeddata]
	cmp	esi,dword [eax+20]
	jb	_5286
	call	_brl_blitz_ArrayBoundsError
_5286:
	mov	eax,dword [_bb_feeddata]
	mov	eax,dword [eax+esi*4+24]
	shr	eax,16
	and	eax,255
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fstp	dword [ebx+28]
	push	_5287
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,0
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5289
	call	_brl_blitz_ArrayBoundsError
_5289:
	mov	ebx,2
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5291
	call	_brl_blitz_ArrayBoundsError
_5291:
	mov	eax,dword [ebp-12]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	esi,0
	mov	eax,dword [_bb_feeddata]
	cmp	esi,dword [eax+20]
	jb	_5294
	call	_brl_blitz_ArrayBoundsError
_5294:
	mov	eax,dword [_bb_feeddata]
	mov	eax,dword [eax+esi*4+24]
	shr	eax,8
	and	eax,255
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fstp	dword [ebx+28]
	push	_5295
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,0
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5297
	call	_brl_blitz_ArrayBoundsError
_5297:
	mov	ebx,3
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5299
	call	_brl_blitz_ArrayBoundsError
_5299:
	mov	eax,dword [ebp-12]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	esi,0
	mov	eax,dword [_bb_feeddata]
	cmp	esi,dword [eax+20]
	jb	_5302
	call	_brl_blitz_ArrayBoundsError
_5302:
	mov	eax,dword [_bb_feeddata]
	mov	eax,dword [eax+esi*4+24]
	and	eax,255
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fstp	dword [ebx+28]
	push	_5303
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,0
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5305
	call	_brl_blitz_ArrayBoundsError
_5305:
	mov	ebx,0
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5307
	call	_brl_blitz_ArrayBoundsError
_5307:
	mov	eax,dword [ebp-12]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	edi,eax
	mov	esi,0
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5310
	call	_brl_blitz_ArrayBoundsError
_5310:
	mov	ebx,0
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5312
	call	_brl_blitz_ArrayBoundsError
_5312:
	mov	edx,dword [ebp-12]
	mov	eax,esi
	add	eax,ebx
	fld	dword [edx+eax*4+28]
	mov	eax,dword [_bb_feedposy]
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fadd	dword [_bb_feedfactor]
	fld	dword [_bb_feedfactor]
	fmul	dword [_7020]
	fdivp	st1,st0
	fmulp	st1,st0
	fstp	dword [edi+28]
	push	_5313
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,0
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5315
	call	_brl_blitz_ArrayBoundsError
_5315:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5317
	call	_brl_blitz_ArrayBoundsError
_5317:
	mov	eax,dword [ebp-12]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	edi,eax
	mov	esi,0
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5320
	call	_brl_blitz_ArrayBoundsError
_5320:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5322
	call	_brl_blitz_ArrayBoundsError
_5322:
	mov	edx,dword [ebp-12]
	mov	eax,esi
	add	eax,ebx
	fld	dword [edx+eax*4+28]
	mov	eax,dword [_bb_feedposy]
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fadd	dword [_bb_feedfactor]
	fld	dword [_bb_feedfactor]
	fmul	dword [_7021]
	fdivp	st1,st0
	fmulp	st1,st0
	fstp	dword [edi+28]
	push	_5323
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,0
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5325
	call	_brl_blitz_ArrayBoundsError
_5325:
	mov	ebx,2
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5327
	call	_brl_blitz_ArrayBoundsError
_5327:
	mov	eax,dword [ebp-12]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	edi,eax
	mov	esi,0
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5330
	call	_brl_blitz_ArrayBoundsError
_5330:
	mov	ebx,2
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5332
	call	_brl_blitz_ArrayBoundsError
_5332:
	mov	edx,dword [ebp-12]
	mov	eax,esi
	add	eax,ebx
	fld	dword [edx+eax*4+28]
	mov	eax,dword [_bb_feedposy]
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fadd	dword [_bb_feedfactor]
	fld	dword [_bb_feedfactor]
	fmul	dword [_7022]
	fdivp	st1,st0
	fmulp	st1,st0
	fstp	dword [edi+28]
	push	_5333
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,0
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5335
	call	_brl_blitz_ArrayBoundsError
_5335:
	mov	ebx,3
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5337
	call	_brl_blitz_ArrayBoundsError
_5337:
	mov	eax,dword [ebp-12]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	edi,eax
	mov	esi,0
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5340
	call	_brl_blitz_ArrayBoundsError
_5340:
	mov	ebx,3
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5342
	call	_brl_blitz_ArrayBoundsError
_5342:
	mov	edx,dword [ebp-12]
	mov	eax,esi
	add	eax,ebx
	fld	dword [edx+eax*4+28]
	mov	eax,dword [_bb_feedposy]
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fadd	dword [_bb_feedfactor]
	fld	dword [_bb_feedfactor]
	fmul	dword [_7023]
	fdivp	st1,st0
	fmulp	st1,st0
	fstp	dword [edi+28]
	push	_5343
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-8],1
	push	_5344
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_feedcount],1
	jl	_5345
	mov	eax,ebp
	push	eax
	push	_5456
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5346
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_feedtexACT],0
	jne	_5347
	mov	eax,ebp
	push	eax
	push	_5420
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5348
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax+24]
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5350
	call	_brl_blitz_ArrayBoundsError
_5350:
	mov	ebx,0
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5352
	call	_brl_blitz_ArrayBoundsError
_5352:
	mov	eax,dword [ebp-12]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	esi,1
	mov	eax,dword [_bb_feeddata]
	cmp	esi,dword [eax+20]
	jb	_5355
	call	_brl_blitz_ArrayBoundsError
_5355:
	mov	eax,dword [_bb_feeddata]
	mov	eax,dword [eax+esi*4+24]
	shr	eax,24
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fstp	dword [ebx+28]
	push	_5356
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax+24]
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5358
	call	_brl_blitz_ArrayBoundsError
_5358:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5360
	call	_brl_blitz_ArrayBoundsError
_5360:
	mov	eax,dword [ebp-12]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	esi,1
	mov	eax,dword [_bb_feeddata]
	cmp	esi,dword [eax+20]
	jb	_5363
	call	_brl_blitz_ArrayBoundsError
_5363:
	mov	eax,dword [_bb_feeddata]
	mov	eax,dword [eax+esi*4+24]
	shr	eax,16
	and	eax,255
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fstp	dword [ebx+28]
	push	_5364
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax+24]
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5366
	call	_brl_blitz_ArrayBoundsError
_5366:
	mov	ebx,2
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5368
	call	_brl_blitz_ArrayBoundsError
_5368:
	mov	eax,dword [ebp-12]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	esi,1
	mov	eax,dword [_bb_feeddata]
	cmp	esi,dword [eax+20]
	jb	_5371
	call	_brl_blitz_ArrayBoundsError
_5371:
	mov	eax,dword [_bb_feeddata]
	mov	eax,dword [eax+esi*4+24]
	shr	eax,8
	and	eax,255
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fstp	dword [ebx+28]
	push	_5372
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax+24]
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5374
	call	_brl_blitz_ArrayBoundsError
_5374:
	mov	ebx,3
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5376
	call	_brl_blitz_ArrayBoundsError
_5376:
	mov	eax,dword [ebp-12]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	esi,1
	mov	eax,dword [_bb_feeddata]
	cmp	esi,dword [eax+20]
	jb	_5379
	call	_brl_blitz_ArrayBoundsError
_5379:
	mov	eax,dword [_bb_feeddata]
	mov	eax,dword [eax+esi*4+24]
	and	eax,255
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fstp	dword [ebx+28]
	push	_5380
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax+24]
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5382
	call	_brl_blitz_ArrayBoundsError
_5382:
	mov	ebx,0
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5384
	call	_brl_blitz_ArrayBoundsError
_5384:
	mov	eax,dword [ebp-12]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax+24]
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5387
	call	_brl_blitz_ArrayBoundsError
_5387:
	mov	ebx,0
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5389
	call	_brl_blitz_ArrayBoundsError
_5389:
	mov	edx,dword [ebp-12]
	mov	eax,esi
	add	eax,ebx
	fld	dword [edx+eax*4+28]
	mov	eax,dword [_bb_feedposy]
	neg	eax
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fadd	dword [_bb_feedfactor]
	fld	dword [_bb_feedfactor]
	fmul	dword [_7024]
	fdivp	st1,st0
	fmulp	st1,st0
	fstp	dword [edi+28]
	push	_5390
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax+24]
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5392
	call	_brl_blitz_ArrayBoundsError
_5392:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5394
	call	_brl_blitz_ArrayBoundsError
_5394:
	mov	eax,dword [ebp-12]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax+24]
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5397
	call	_brl_blitz_ArrayBoundsError
_5397:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5399
	call	_brl_blitz_ArrayBoundsError
_5399:
	mov	edx,dword [ebp-12]
	mov	eax,esi
	add	eax,ebx
	fld	dword [edx+eax*4+28]
	mov	eax,dword [_bb_feedposy]
	neg	eax
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fadd	dword [_bb_feedfactor]
	fld	dword [_bb_feedfactor]
	fmul	dword [_7025]
	fdivp	st1,st0
	fmulp	st1,st0
	fstp	dword [edi+28]
	push	_5400
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax+24]
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5402
	call	_brl_blitz_ArrayBoundsError
_5402:
	mov	ebx,2
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5404
	call	_brl_blitz_ArrayBoundsError
_5404:
	mov	eax,dword [ebp-12]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax+24]
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5407
	call	_brl_blitz_ArrayBoundsError
_5407:
	mov	ebx,2
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5409
	call	_brl_blitz_ArrayBoundsError
_5409:
	mov	edx,dword [ebp-12]
	mov	eax,esi
	add	eax,ebx
	fld	dword [edx+eax*4+28]
	mov	eax,dword [_bb_feedposy]
	neg	eax
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fadd	dword [_bb_feedfactor]
	fld	dword [_bb_feedfactor]
	fmul	dword [_7026]
	fdivp	st1,st0
	fmulp	st1,st0
	fstp	dword [edi+28]
	push	_5410
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax+24]
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5412
	call	_brl_blitz_ArrayBoundsError
_5412:
	mov	ebx,3
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5414
	call	_brl_blitz_ArrayBoundsError
_5414:
	mov	eax,dword [ebp-12]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	edi,eax
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax+24]
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5417
	call	_brl_blitz_ArrayBoundsError
_5417:
	mov	ebx,3
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5419
	call	_brl_blitz_ArrayBoundsError
_5419:
	mov	edx,dword [ebp-12]
	mov	eax,esi
	add	eax,ebx
	fld	dword [edx+eax*4+28]
	mov	eax,dword [_bb_feedposy]
	neg	eax
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fadd	dword [_bb_feedfactor]
	fld	dword [_bb_feedfactor]
	fmul	dword [_7027]
	fdivp	st1,st0
	fmulp	st1,st0
	fstp	dword [edi+28]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_5421
_5347:
	mov	eax,ebp
	push	eax
	push	_5454
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5422
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax+24]
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5424
	call	_brl_blitz_ArrayBoundsError
_5424:
	mov	ebx,0
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5426
	call	_brl_blitz_ArrayBoundsError
_5426:
	mov	eax,dword [ebp-12]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	esi,1
	mov	eax,dword [_bb_feeddata]
	cmp	esi,dword [eax+20]
	jb	_5429
	call	_brl_blitz_ArrayBoundsError
_5429:
	mov	eax,dword [_bb_feeddata]
	mov	eax,dword [eax+esi*4+24]
	shr	eax,24
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fstp	dword [ebx+28]
	push	_5430
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax+24]
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5432
	call	_brl_blitz_ArrayBoundsError
_5432:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5434
	call	_brl_blitz_ArrayBoundsError
_5434:
	mov	eax,dword [ebp-12]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	esi,1
	mov	eax,dword [_bb_feeddata]
	cmp	esi,dword [eax+20]
	jb	_5437
	call	_brl_blitz_ArrayBoundsError
_5437:
	mov	eax,dword [_bb_feeddata]
	mov	eax,dword [eax+esi*4+24]
	shr	eax,16
	and	eax,255
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fstp	dword [ebx+28]
	push	_5438
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax+24]
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5440
	call	_brl_blitz_ArrayBoundsError
_5440:
	mov	ebx,2
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5442
	call	_brl_blitz_ArrayBoundsError
_5442:
	mov	eax,dword [ebp-12]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	esi,1
	mov	eax,dword [_bb_feeddata]
	cmp	esi,dword [eax+20]
	jb	_5445
	call	_brl_blitz_ArrayBoundsError
_5445:
	mov	eax,dword [_bb_feeddata]
	mov	eax,dword [eax+esi*4+24]
	shr	eax,8
	and	eax,255
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fstp	dword [ebx+28]
	push	_5446
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax+24]
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5448
	call	_brl_blitz_ArrayBoundsError
_5448:
	mov	ebx,3
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5450
	call	_brl_blitz_ArrayBoundsError
_5450:
	mov	eax,dword [ebp-12]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	esi,1
	mov	eax,dword [_bb_feeddata]
	cmp	esi,dword [eax+20]
	jb	_5453
	call	_brl_blitz_ArrayBoundsError
_5453:
	mov	eax,dword [_bb_feeddata]
	mov	eax,dword [eax+esi*4+24]
	and	eax,255
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fstp	dword [ebx+28]
	call	dword [_bbOnDebugLeaveScope]
_5421:
	push	_5455
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-8],1
	call	dword [_bbOnDebugLeaveScope]
_5345:
	push	_5457
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_feedcount]
	cmp	eax,2
	setge	al
	movzx	eax,al
	cmp	eax,0
	je	_5458
	mov	eax,dword [_bb_feedtexACT]
	cmp	eax,1
	sete	al
	movzx	eax,al
_5458:
	cmp	eax,0
	je	_5460
	mov	eax,ebp
	push	eax
	push	_5550
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5461
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax+24]
	shl	esi,1
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5463
	call	_brl_blitz_ArrayBoundsError
_5463:
	mov	ebx,0
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5465
	call	_brl_blitz_ArrayBoundsError
_5465:
	mov	eax,dword [ebp-12]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	esi,2
	mov	eax,dword [_bb_feeddata]
	cmp	esi,dword [eax+20]
	jb	_5468
	call	_brl_blitz_ArrayBoundsError
_5468:
	mov	eax,dword [_bb_feeddata]
	mov	eax,dword [eax+esi*4+24]
	shr	eax,24
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fstp	dword [ebx+28]
	push	_5469
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax+24]
	shl	esi,1
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5471
	call	_brl_blitz_ArrayBoundsError
_5471:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5473
	call	_brl_blitz_ArrayBoundsError
_5473:
	mov	eax,dword [ebp-12]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	esi,2
	mov	eax,dword [_bb_feeddata]
	cmp	esi,dword [eax+20]
	jb	_5476
	call	_brl_blitz_ArrayBoundsError
_5476:
	mov	eax,dword [_bb_feeddata]
	mov	eax,dword [eax+esi*4+24]
	shr	eax,16
	and	eax,255
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fstp	dword [ebx+28]
	push	_5477
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax+24]
	shl	esi,1
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5479
	call	_brl_blitz_ArrayBoundsError
_5479:
	mov	ebx,2
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5481
	call	_brl_blitz_ArrayBoundsError
_5481:
	mov	eax,dword [ebp-12]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	esi,2
	mov	eax,dword [_bb_feeddata]
	cmp	esi,dword [eax+20]
	jb	_5484
	call	_brl_blitz_ArrayBoundsError
_5484:
	mov	eax,dword [_bb_feeddata]
	mov	eax,dword [eax+esi*4+24]
	shr	eax,8
	and	eax,255
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fstp	dword [ebx+28]
	push	_5485
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax+24]
	shl	esi,1
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5487
	call	_brl_blitz_ArrayBoundsError
_5487:
	mov	ebx,3
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5489
	call	_brl_blitz_ArrayBoundsError
_5489:
	mov	eax,dword [ebp-12]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	esi,2
	mov	eax,dword [_bb_feeddata]
	cmp	esi,dword [eax+20]
	jb	_5492
	call	_brl_blitz_ArrayBoundsError
_5492:
	mov	eax,dword [_bb_feeddata]
	mov	eax,dword [eax+esi*4+24]
	and	eax,255
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fstp	dword [ebx+28]
	push	_5493
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	ebx,dword [eax+24]
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_5495
	call	_brl_blitz_ArrayBoundsError
_5495:
	mov	esi,0
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+24]
	jb	_5497
	call	_brl_blitz_ArrayBoundsError
_5497:
	mov	eax,dword [ebp-12]
	add	ebx,esi
	shl	ebx,2
	add	eax,ebx
	mov	dword [ebp-88],eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+24]
	mov	dword [ebp-24],eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-24],eax
	jb	_5500
	call	_brl_blitz_ArrayBoundsError
_5500:
	mov	edi,0
	mov	eax,dword [ebp-12]
	cmp	edi,dword [eax+24]
	jb	_5502
	call	_brl_blitz_ArrayBoundsError
_5502:
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+24]
	shl	eax,1
	mov	esi,eax
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5504
	call	_brl_blitz_ArrayBoundsError
_5504:
	mov	ebx,0
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5506
	call	_brl_blitz_ArrayBoundsError
_5506:
	mov	edx,dword [ebp-12]
	mov	eax,dword [ebp-24]
	add	eax,edi
	fld	dword [edx+eax*4+28]
	mov	eax,dword [_bb_feedtexA]
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fadd	dword [_bb_feedfactor]
	fld	dword [_bb_feedfactor]
	fmul	dword [_7028]
	fdivp	st1,st0
	fmulp	st1,st0
	mov	edx,dword [ebp-12]
	mov	eax,esi
	add	eax,ebx
	fld	dword [edx+eax*4+28]
	mov	eax,dword [_bb_feedtexA]
	neg	eax
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fadd	dword [_bb_feedfactor]
	fld	dword [_bb_feedfactor]
	fmul	dword [_7029]
	fdivp	st1,st0
	fmulp	st1,st0
	faddp	st1,st0
	mov	eax,dword [ebp-88]
	fstp	dword [eax+28]
	push	_5507
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	ebx,dword [eax+24]
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_5509
	call	_brl_blitz_ArrayBoundsError
_5509:
	mov	esi,1
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+24]
	jb	_5511
	call	_brl_blitz_ArrayBoundsError
_5511:
	mov	eax,dword [ebp-12]
	add	ebx,esi
	shl	ebx,2
	add	eax,ebx
	mov	dword [ebp-92],eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+24]
	mov	dword [ebp-28],eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-28],eax
	jb	_5514
	call	_brl_blitz_ArrayBoundsError
_5514:
	mov	edi,1
	mov	eax,dword [ebp-12]
	cmp	edi,dword [eax+24]
	jb	_5516
	call	_brl_blitz_ArrayBoundsError
_5516:
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+24]
	shl	eax,1
	mov	esi,eax
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5518
	call	_brl_blitz_ArrayBoundsError
_5518:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5520
	call	_brl_blitz_ArrayBoundsError
_5520:
	mov	edx,dword [ebp-12]
	mov	eax,dword [ebp-28]
	add	eax,edi
	fld	dword [edx+eax*4+28]
	mov	eax,dword [_bb_feedtexA]
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fadd	dword [_bb_feedfactor]
	fld	dword [_bb_feedfactor]
	fmul	dword [_7030]
	fdivp	st1,st0
	fmulp	st1,st0
	mov	edx,dword [ebp-12]
	mov	eax,esi
	add	eax,ebx
	fld	dword [edx+eax*4+28]
	mov	eax,dword [_bb_feedtexA]
	neg	eax
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fadd	dword [_bb_feedfactor]
	fld	dword [_bb_feedfactor]
	fmul	dword [_7031]
	fdivp	st1,st0
	fmulp	st1,st0
	faddp	st1,st0
	mov	eax,dword [ebp-92]
	fstp	dword [eax+28]
	push	_5521
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	ebx,dword [eax+24]
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_5523
	call	_brl_blitz_ArrayBoundsError
_5523:
	mov	esi,2
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+24]
	jb	_5525
	call	_brl_blitz_ArrayBoundsError
_5525:
	mov	eax,dword [ebp-12]
	add	ebx,esi
	shl	ebx,2
	add	eax,ebx
	mov	dword [ebp-96],eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+24]
	mov	dword [ebp-32],eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-32],eax
	jb	_5528
	call	_brl_blitz_ArrayBoundsError
_5528:
	mov	edi,2
	mov	eax,dword [ebp-12]
	cmp	edi,dword [eax+24]
	jb	_5530
	call	_brl_blitz_ArrayBoundsError
_5530:
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+24]
	shl	eax,1
	mov	esi,eax
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5532
	call	_brl_blitz_ArrayBoundsError
_5532:
	mov	ebx,2
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5534
	call	_brl_blitz_ArrayBoundsError
_5534:
	mov	edx,dword [ebp-12]
	mov	eax,dword [ebp-32]
	add	eax,edi
	fld	dword [edx+eax*4+28]
	mov	eax,dword [_bb_feedtexA]
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fadd	dword [_bb_feedfactor]
	fld	dword [_bb_feedfactor]
	fmul	dword [_7032]
	fdivp	st1,st0
	fmulp	st1,st0
	mov	edx,dword [ebp-12]
	mov	eax,esi
	add	eax,ebx
	fld	dword [edx+eax*4+28]
	mov	eax,dword [_bb_feedtexA]
	neg	eax
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fadd	dword [_bb_feedfactor]
	fld	dword [_bb_feedfactor]
	fmul	dword [_7033]
	fdivp	st1,st0
	fmulp	st1,st0
	faddp	st1,st0
	mov	eax,dword [ebp-96]
	fstp	dword [eax+28]
	push	_5535
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	ebx,dword [eax+24]
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_5537
	call	_brl_blitz_ArrayBoundsError
_5537:
	mov	esi,3
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+24]
	jb	_5539
	call	_brl_blitz_ArrayBoundsError
_5539:
	mov	eax,dword [ebp-12]
	add	ebx,esi
	shl	ebx,2
	add	eax,ebx
	mov	dword [ebp-100],eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+24]
	mov	dword [ebp-36],eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-36],eax
	jb	_5542
	call	_brl_blitz_ArrayBoundsError
_5542:
	mov	edi,3
	mov	eax,dword [ebp-12]
	cmp	edi,dword [eax+24]
	jb	_5544
	call	_brl_blitz_ArrayBoundsError
_5544:
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+24]
	shl	eax,1
	mov	esi,eax
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5546
	call	_brl_blitz_ArrayBoundsError
_5546:
	mov	ebx,3
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5548
	call	_brl_blitz_ArrayBoundsError
_5548:
	mov	edx,dword [ebp-12]
	mov	eax,dword [ebp-36]
	add	eax,edi
	fld	dword [edx+eax*4+28]
	mov	eax,dword [_bb_feedtexA]
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fadd	dword [_bb_feedfactor]
	fld	dword [_bb_feedfactor]
	fmul	dword [_7034]
	fdivp	st1,st0
	fmulp	st1,st0
	mov	edx,dword [ebp-12]
	mov	eax,esi
	add	eax,ebx
	fld	dword [edx+eax*4+28]
	mov	eax,dword [_bb_feedtexA]
	neg	eax
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fadd	dword [_bb_feedfactor]
	fld	dword [_bb_feedfactor]
	fmul	dword [_7035]
	fdivp	st1,st0
	fmulp	st1,st0
	faddp	st1,st0
	mov	eax,dword [ebp-100]
	fstp	dword [eax+28]
	push	_5549
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-8],1
	call	dword [_bbOnDebugLeaveScope]
_5460:
	push	_5551
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_feedcount]
	cmp	eax,3
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_5552
	mov	eax,dword [_bb_feedtexACT]
	cmp	eax,1
	sete	al
	movzx	eax,al
_5552:
	cmp	eax,0
	je	_5554
	mov	eax,ebp
	push	eax
	push	_5644
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5555
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax+24]
	imul	esi,3
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5557
	call	_brl_blitz_ArrayBoundsError
_5557:
	mov	ebx,0
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5559
	call	_brl_blitz_ArrayBoundsError
_5559:
	mov	eax,dword [ebp-12]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	esi,3
	mov	eax,dword [_bb_feeddata]
	cmp	esi,dword [eax+20]
	jb	_5562
	call	_brl_blitz_ArrayBoundsError
_5562:
	mov	eax,dword [_bb_feeddata]
	mov	eax,dword [eax+esi*4+24]
	shr	eax,24
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fstp	dword [ebx+28]
	push	_5563
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax+24]
	imul	esi,3
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5565
	call	_brl_blitz_ArrayBoundsError
_5565:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5567
	call	_brl_blitz_ArrayBoundsError
_5567:
	mov	eax,dword [ebp-12]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	esi,3
	mov	eax,dword [_bb_feeddata]
	cmp	esi,dword [eax+20]
	jb	_5570
	call	_brl_blitz_ArrayBoundsError
_5570:
	mov	eax,dword [_bb_feeddata]
	mov	eax,dword [eax+esi*4+24]
	shr	eax,16
	and	eax,255
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fstp	dword [ebx+28]
	push	_5571
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax+24]
	imul	esi,3
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5573
	call	_brl_blitz_ArrayBoundsError
_5573:
	mov	ebx,2
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5575
	call	_brl_blitz_ArrayBoundsError
_5575:
	mov	eax,dword [ebp-12]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	esi,3
	mov	eax,dword [_bb_feeddata]
	cmp	esi,dword [eax+20]
	jb	_5578
	call	_brl_blitz_ArrayBoundsError
_5578:
	mov	eax,dword [_bb_feeddata]
	mov	eax,dword [eax+esi*4+24]
	shr	eax,8
	and	eax,255
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fstp	dword [ebx+28]
	push	_5579
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax+24]
	imul	esi,3
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5581
	call	_brl_blitz_ArrayBoundsError
_5581:
	mov	ebx,3
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5583
	call	_brl_blitz_ArrayBoundsError
_5583:
	mov	eax,dword [ebp-12]
	add	esi,ebx
	shl	esi,2
	add	eax,esi
	mov	ebx,eax
	mov	esi,3
	mov	eax,dword [_bb_feeddata]
	cmp	esi,dword [eax+20]
	jb	_5586
	call	_brl_blitz_ArrayBoundsError
_5586:
	mov	eax,dword [_bb_feeddata]
	mov	eax,dword [eax+esi*4+24]
	and	eax,255
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fstp	dword [ebx+28]
	push	_5587
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	ebx,dword [eax+24]
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_5589
	call	_brl_blitz_ArrayBoundsError
_5589:
	mov	esi,0
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+24]
	jb	_5591
	call	_brl_blitz_ArrayBoundsError
_5591:
	mov	eax,dword [ebp-12]
	add	ebx,esi
	shl	ebx,2
	add	eax,ebx
	mov	dword [ebp-104],eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+24]
	mov	dword [ebp-40],eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-40],eax
	jb	_5594
	call	_brl_blitz_ArrayBoundsError
_5594:
	mov	edi,0
	mov	eax,dword [ebp-12]
	cmp	edi,dword [eax+24]
	jb	_5596
	call	_brl_blitz_ArrayBoundsError
_5596:
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+24]
	imul	eax,3
	mov	esi,eax
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5598
	call	_brl_blitz_ArrayBoundsError
_5598:
	mov	ebx,0
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5600
	call	_brl_blitz_ArrayBoundsError
_5600:
	mov	edx,dword [ebp-12]
	mov	eax,dword [ebp-40]
	add	eax,edi
	fld	dword [edx+eax*4+28]
	mov	eax,dword [_bb_feedtexB]
	neg	eax
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fld	dword [_bb_feedfactor]
	fmul	dword [_7036]
	faddp	st1,st0
	fld	dword [_bb_feedfactor]
	fmul	dword [_7037]
	fdivp	st1,st0
	fmulp	st1,st0
	mov	edx,dword [ebp-12]
	mov	eax,esi
	add	eax,ebx
	fld	dword [edx+eax*4+28]
	mov	eax,dword [_bb_feedtexB]
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fld	dword [_bb_feedfactor]
	fmul	dword [_7038]
	fdivp	st1,st0
	fmulp	st1,st0
	faddp	st1,st0
	mov	eax,dword [ebp-104]
	fstp	dword [eax+28]
	push	_5601
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	ebx,dword [eax+24]
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_5603
	call	_brl_blitz_ArrayBoundsError
_5603:
	mov	esi,1
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+24]
	jb	_5605
	call	_brl_blitz_ArrayBoundsError
_5605:
	mov	eax,dword [ebp-12]
	add	ebx,esi
	shl	ebx,2
	add	eax,ebx
	mov	dword [ebp-108],eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+24]
	mov	dword [ebp-44],eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-44],eax
	jb	_5608
	call	_brl_blitz_ArrayBoundsError
_5608:
	mov	edi,1
	mov	eax,dword [ebp-12]
	cmp	edi,dword [eax+24]
	jb	_5610
	call	_brl_blitz_ArrayBoundsError
_5610:
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+24]
	imul	eax,3
	mov	esi,eax
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5612
	call	_brl_blitz_ArrayBoundsError
_5612:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5614
	call	_brl_blitz_ArrayBoundsError
_5614:
	mov	edx,dword [ebp-12]
	mov	eax,dword [ebp-44]
	add	eax,edi
	fld	dword [edx+eax*4+28]
	mov	eax,dword [_bb_feedtexB]
	neg	eax
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fld	dword [_bb_feedfactor]
	fmul	dword [_7039]
	faddp	st1,st0
	fld	dword [_bb_feedfactor]
	fmul	dword [_7040]
	fdivp	st1,st0
	fmulp	st1,st0
	mov	edx,dword [ebp-12]
	mov	eax,esi
	add	eax,ebx
	fld	dword [edx+eax*4+28]
	mov	eax,dword [_bb_feedtexB]
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fld	dword [_bb_feedfactor]
	fmul	dword [_7041]
	fdivp	st1,st0
	fmulp	st1,st0
	faddp	st1,st0
	mov	eax,dword [ebp-108]
	fstp	dword [eax+28]
	push	_5615
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	ebx,dword [eax+24]
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_5617
	call	_brl_blitz_ArrayBoundsError
_5617:
	mov	esi,2
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+24]
	jb	_5619
	call	_brl_blitz_ArrayBoundsError
_5619:
	mov	eax,dword [ebp-12]
	add	ebx,esi
	shl	ebx,2
	add	eax,ebx
	mov	dword [ebp-112],eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+24]
	mov	dword [ebp-48],eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-48],eax
	jb	_5622
	call	_brl_blitz_ArrayBoundsError
_5622:
	mov	edi,2
	mov	eax,dword [ebp-12]
	cmp	edi,dword [eax+24]
	jb	_5624
	call	_brl_blitz_ArrayBoundsError
_5624:
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+24]
	imul	eax,3
	mov	esi,eax
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5626
	call	_brl_blitz_ArrayBoundsError
_5626:
	mov	ebx,2
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5628
	call	_brl_blitz_ArrayBoundsError
_5628:
	mov	edx,dword [ebp-12]
	mov	eax,dword [ebp-48]
	add	eax,edi
	fld	dword [edx+eax*4+28]
	mov	eax,dword [_bb_feedtexB]
	neg	eax
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fld	dword [_bb_feedfactor]
	fmul	dword [_7042]
	faddp	st1,st0
	fld	dword [_bb_feedfactor]
	fmul	dword [_7043]
	fdivp	st1,st0
	fmulp	st1,st0
	mov	edx,dword [ebp-12]
	mov	eax,esi
	add	eax,ebx
	fld	dword [edx+eax*4+28]
	mov	eax,dword [_bb_feedtexB]
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fld	dword [_bb_feedfactor]
	fmul	dword [_7044]
	fdivp	st1,st0
	fmulp	st1,st0
	faddp	st1,st0
	mov	eax,dword [ebp-112]
	fstp	dword [eax+28]
	push	_5629
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	ebx,dword [eax+24]
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_5631
	call	_brl_blitz_ArrayBoundsError
_5631:
	mov	esi,3
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+24]
	jb	_5633
	call	_brl_blitz_ArrayBoundsError
_5633:
	mov	eax,dword [ebp-12]
	add	ebx,esi
	shl	ebx,2
	add	eax,ebx
	mov	dword [ebp-116],eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+24]
	mov	dword [ebp-52],eax
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-52],eax
	jb	_5636
	call	_brl_blitz_ArrayBoundsError
_5636:
	mov	edi,3
	mov	eax,dword [ebp-12]
	cmp	edi,dword [eax+24]
	jb	_5638
	call	_brl_blitz_ArrayBoundsError
_5638:
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+24]
	imul	eax,3
	mov	esi,eax
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5640
	call	_brl_blitz_ArrayBoundsError
_5640:
	mov	ebx,3
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5642
	call	_brl_blitz_ArrayBoundsError
_5642:
	mov	edx,dword [ebp-12]
	mov	eax,dword [ebp-52]
	add	eax,edi
	fld	dword [edx+eax*4+28]
	mov	eax,dword [_bb_feedtexB]
	neg	eax
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fld	dword [_bb_feedfactor]
	fmul	dword [_7045]
	faddp	st1,st0
	fld	dword [_bb_feedfactor]
	fmul	dword [_7046]
	fdivp	st1,st0
	fmulp	st1,st0
	mov	edx,dword [ebp-12]
	mov	eax,esi
	add	eax,ebx
	fld	dword [edx+eax*4+28]
	mov	eax,dword [_bb_feedtexB]
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fld	dword [_bb_feedfactor]
	fmul	dword [_7047]
	fdivp	st1,st0
	fmulp	st1,st0
	faddp	st1,st0
	mov	eax,dword [ebp-116]
	fstp	dword [eax+28]
	push	_5643
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-8],1
	call	dword [_bbOnDebugLeaveScope]
_5554:
	push	_5645
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_feedcount],1
	jl	_5646
	mov	eax,ebp
	push	eax
	push	_5764
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5647
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_feedtexACT],0
	jne	_5648
	mov	eax,ebp
	push	eax
	push	_5705
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5649
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_5651
	call	_brl_blitz_ArrayBoundsError
_5651:
	mov	esi,0
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+24]
	jb	_5653
	call	_brl_blitz_ArrayBoundsError
_5653:
	mov	eax,dword [ebp-12]
	add	ebx,esi
	shl	ebx,2
	add	eax,ebx
	mov	dword [ebp-120],eax
	mov	dword [ebp-56],0
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-56],eax
	jb	_5656
	call	_brl_blitz_ArrayBoundsError
_5656:
	mov	edi,0
	mov	eax,dword [ebp-12]
	cmp	edi,dword [eax+24]
	jb	_5658
	call	_brl_blitz_ArrayBoundsError
_5658:
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax+24]
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5660
	call	_brl_blitz_ArrayBoundsError
_5660:
	mov	ebx,0
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5662
	call	_brl_blitz_ArrayBoundsError
_5662:
	mov	edx,dword [ebp-12]
	mov	eax,dword [ebp-56]
	add	eax,edi
	fld	dword [edx+eax*4+28]
	mov	edx,dword [ebp-12]
	mov	eax,esi
	add	eax,ebx
	fadd	dword [edx+eax*4+28]
	mov	eax,dword [ebp-120]
	fstp	dword [eax+28]
	push	_5663
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_5665
	call	_brl_blitz_ArrayBoundsError
_5665:
	mov	esi,1
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+24]
	jb	_5667
	call	_brl_blitz_ArrayBoundsError
_5667:
	mov	eax,dword [ebp-12]
	add	ebx,esi
	shl	ebx,2
	add	eax,ebx
	mov	dword [ebp-124],eax
	mov	dword [ebp-60],0
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-60],eax
	jb	_5670
	call	_brl_blitz_ArrayBoundsError
_5670:
	mov	edi,1
	mov	eax,dword [ebp-12]
	cmp	edi,dword [eax+24]
	jb	_5672
	call	_brl_blitz_ArrayBoundsError
_5672:
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax+24]
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5674
	call	_brl_blitz_ArrayBoundsError
_5674:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5676
	call	_brl_blitz_ArrayBoundsError
_5676:
	mov	edx,dword [ebp-12]
	mov	eax,dword [ebp-60]
	add	eax,edi
	fld	dword [edx+eax*4+28]
	mov	edx,dword [ebp-12]
	mov	eax,esi
	add	eax,ebx
	fadd	dword [edx+eax*4+28]
	mov	eax,dword [ebp-124]
	fstp	dword [eax+28]
	push	_5677
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_5679
	call	_brl_blitz_ArrayBoundsError
_5679:
	mov	esi,2
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+24]
	jb	_5681
	call	_brl_blitz_ArrayBoundsError
_5681:
	mov	eax,dword [ebp-12]
	add	ebx,esi
	shl	ebx,2
	add	eax,ebx
	mov	dword [ebp-128],eax
	mov	dword [ebp-64],0
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-64],eax
	jb	_5684
	call	_brl_blitz_ArrayBoundsError
_5684:
	mov	edi,2
	mov	eax,dword [ebp-12]
	cmp	edi,dword [eax+24]
	jb	_5686
	call	_brl_blitz_ArrayBoundsError
_5686:
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax+24]
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5688
	call	_brl_blitz_ArrayBoundsError
_5688:
	mov	ebx,2
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5690
	call	_brl_blitz_ArrayBoundsError
_5690:
	mov	edx,dword [ebp-12]
	mov	eax,dword [ebp-64]
	add	eax,edi
	fld	dword [edx+eax*4+28]
	mov	edx,dword [ebp-12]
	mov	eax,esi
	add	eax,ebx
	fadd	dword [edx+eax*4+28]
	mov	eax,dword [ebp-128]
	fstp	dword [eax+28]
	push	_5691
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_5693
	call	_brl_blitz_ArrayBoundsError
_5693:
	mov	esi,3
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+24]
	jb	_5695
	call	_brl_blitz_ArrayBoundsError
_5695:
	mov	eax,dword [ebp-12]
	add	ebx,esi
	shl	ebx,2
	add	eax,ebx
	mov	dword [ebp-132],eax
	mov	dword [ebp-68],0
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-68],eax
	jb	_5698
	call	_brl_blitz_ArrayBoundsError
_5698:
	mov	edi,3
	mov	eax,dword [ebp-12]
	cmp	edi,dword [eax+24]
	jb	_5700
	call	_brl_blitz_ArrayBoundsError
_5700:
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax+24]
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5702
	call	_brl_blitz_ArrayBoundsError
_5702:
	mov	ebx,3
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5704
	call	_brl_blitz_ArrayBoundsError
_5704:
	mov	edx,dword [ebp-12]
	mov	eax,dword [ebp-68]
	add	eax,edi
	fld	dword [edx+eax*4+28]
	mov	edx,dword [ebp-12]
	mov	eax,esi
	add	eax,ebx
	fadd	dword [edx+eax*4+28]
	mov	eax,dword [ebp-132]
	fstp	dword [eax+28]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_5706
_5648:
	mov	eax,ebp
	push	eax
	push	_5763
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5707
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_5709
	call	_brl_blitz_ArrayBoundsError
_5709:
	mov	esi,0
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+24]
	jb	_5711
	call	_brl_blitz_ArrayBoundsError
_5711:
	mov	eax,dword [ebp-12]
	add	ebx,esi
	shl	ebx,2
	add	eax,ebx
	mov	dword [ebp-136],eax
	mov	dword [ebp-72],0
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-72],eax
	jb	_5714
	call	_brl_blitz_ArrayBoundsError
_5714:
	mov	edi,0
	mov	eax,dword [ebp-12]
	cmp	edi,dword [eax+24]
	jb	_5716
	call	_brl_blitz_ArrayBoundsError
_5716:
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax+24]
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5718
	call	_brl_blitz_ArrayBoundsError
_5718:
	mov	ebx,0
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5720
	call	_brl_blitz_ArrayBoundsError
_5720:
	mov	edx,dword [ebp-12]
	mov	eax,dword [ebp-72]
	add	eax,edi
	fld	dword [edx+eax*4+28]
	mov	edx,dword [ebp-12]
	mov	eax,esi
	add	eax,ebx
	fld	dword [edx+eax*4+28]
	mov	eax,dword [_bb_feedposy]
	neg	eax
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fadd	dword [_bb_feedfactor]
	fld	dword [_bb_feedfactor]
	fmul	dword [_7048]
	fdivp	st1,st0
	fmulp	st1,st0
	faddp	st1,st0
	mov	eax,dword [ebp-136]
	fstp	dword [eax+28]
	push	_5721
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_5723
	call	_brl_blitz_ArrayBoundsError
_5723:
	mov	esi,1
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+24]
	jb	_5725
	call	_brl_blitz_ArrayBoundsError
_5725:
	mov	eax,dword [ebp-12]
	add	ebx,esi
	shl	ebx,2
	add	eax,ebx
	mov	dword [ebp-140],eax
	mov	dword [ebp-76],0
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-76],eax
	jb	_5728
	call	_brl_blitz_ArrayBoundsError
_5728:
	mov	edi,1
	mov	eax,dword [ebp-12]
	cmp	edi,dword [eax+24]
	jb	_5730
	call	_brl_blitz_ArrayBoundsError
_5730:
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax+24]
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5732
	call	_brl_blitz_ArrayBoundsError
_5732:
	mov	ebx,1
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5734
	call	_brl_blitz_ArrayBoundsError
_5734:
	mov	edx,dword [ebp-12]
	mov	eax,dword [ebp-76]
	add	eax,edi
	fld	dword [edx+eax*4+28]
	mov	edx,dword [ebp-12]
	mov	eax,esi
	add	eax,ebx
	fld	dword [edx+eax*4+28]
	mov	eax,dword [_bb_feedposy]
	neg	eax
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fadd	dword [_bb_feedfactor]
	fld	dword [_bb_feedfactor]
	fmul	dword [_7049]
	fdivp	st1,st0
	fmulp	st1,st0
	faddp	st1,st0
	mov	eax,dword [ebp-140]
	fstp	dword [eax+28]
	push	_5735
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_5737
	call	_brl_blitz_ArrayBoundsError
_5737:
	mov	esi,2
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+24]
	jb	_5739
	call	_brl_blitz_ArrayBoundsError
_5739:
	mov	eax,dword [ebp-12]
	add	ebx,esi
	shl	ebx,2
	add	eax,ebx
	mov	dword [ebp-144],eax
	mov	dword [ebp-80],0
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-80],eax
	jb	_5742
	call	_brl_blitz_ArrayBoundsError
_5742:
	mov	edi,2
	mov	eax,dword [ebp-12]
	cmp	edi,dword [eax+24]
	jb	_5744
	call	_brl_blitz_ArrayBoundsError
_5744:
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax+24]
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5746
	call	_brl_blitz_ArrayBoundsError
_5746:
	mov	ebx,2
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5748
	call	_brl_blitz_ArrayBoundsError
_5748:
	mov	edx,dword [ebp-12]
	mov	eax,dword [ebp-80]
	add	eax,edi
	fld	dword [edx+eax*4+28]
	mov	edx,dword [ebp-12]
	mov	eax,esi
	add	eax,ebx
	fld	dword [edx+eax*4+28]
	mov	eax,dword [_bb_feedposy]
	neg	eax
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fadd	dword [_bb_feedfactor]
	fld	dword [_bb_feedfactor]
	fmul	dword [_7050]
	fdivp	st1,st0
	fmulp	st1,st0
	faddp	st1,st0
	mov	eax,dword [ebp-144]
	fstp	dword [eax+28]
	push	_5749
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_5751
	call	_brl_blitz_ArrayBoundsError
_5751:
	mov	esi,3
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+24]
	jb	_5753
	call	_brl_blitz_ArrayBoundsError
_5753:
	mov	eax,dword [ebp-12]
	add	ebx,esi
	shl	ebx,2
	add	eax,ebx
	mov	dword [ebp-148],eax
	mov	dword [ebp-84],0
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-84],eax
	jb	_5756
	call	_brl_blitz_ArrayBoundsError
_5756:
	mov	edi,3
	mov	eax,dword [ebp-12]
	cmp	edi,dword [eax+24]
	jb	_5758
	call	_brl_blitz_ArrayBoundsError
_5758:
	mov	eax,dword [ebp-12]
	mov	esi,dword [eax+24]
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+20]
	jb	_5760
	call	_brl_blitz_ArrayBoundsError
_5760:
	mov	ebx,3
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+24]
	jb	_5762
	call	_brl_blitz_ArrayBoundsError
_5762:
	mov	edx,dword [ebp-12]
	mov	eax,dword [ebp-84]
	add	eax,edi
	fld	dword [edx+eax*4+28]
	mov	edx,dword [ebp-12]
	mov	eax,esi
	add	eax,ebx
	fld	dword [edx+eax*4+28]
	mov	eax,dword [_bb_feedposy]
	neg	eax
	mov	dword [ebp+-152],eax
	fild	dword [ebp+-152]
	fadd	dword [_bb_feedfactor]
	fld	dword [_bb_feedfactor]
	fmul	dword [_7051]
	fdivp	st1,st0
	fmulp	st1,st0
	faddp	st1,st0
	mov	eax,dword [ebp-148]
	fstp	dword [eax+28]
	call	dword [_bbOnDebugLeaveScope]
_5706:
	call	dword [_bbOnDebugLeaveScope]
_5646:
	push	_5765
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	push	_5767
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	lea	eax,dword [ebp-16]
	mov	dword [ebp-20],eax
	push	_5769
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,0
	mov	eax,dword [ebp-12]
	cmp	edi,dword [eax+20]
	jb	_5771
	call	_brl_blitz_ArrayBoundsError
_5771:
	mov	esi,3
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+24]
	jb	_5773
	call	_brl_blitz_ArrayBoundsError
_5773:
	mov	ebx,dword [ebp-20]
	mov	edx,dword [ebp-12]
	mov	eax,edi
	add	eax,esi
	fld	dword [edx+eax*4+28]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [ebx],al
	push	_5774
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,0
	mov	eax,dword [ebp-12]
	cmp	edi,dword [eax+20]
	jb	_5776
	call	_brl_blitz_ArrayBoundsError
_5776:
	mov	esi,2
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+24]
	jb	_5778
	call	_brl_blitz_ArrayBoundsError
_5778:
	mov	ebx,dword [ebp-20]
	mov	edx,dword [ebp-12]
	mov	eax,edi
	add	eax,esi
	fld	dword [edx+eax*4+28]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [ebx+1],al
	push	_5779
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,0
	mov	eax,dword [ebp-12]
	cmp	edi,dword [eax+20]
	jb	_5781
	call	_brl_blitz_ArrayBoundsError
_5781:
	mov	esi,1
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+24]
	jb	_5783
	call	_brl_blitz_ArrayBoundsError
_5783:
	mov	ebx,dword [ebp-20]
	mov	edx,dword [ebp-12]
	mov	eax,edi
	add	eax,esi
	fld	dword [edx+eax*4+28]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [ebx+2],al
	push	_5784
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,0
	mov	eax,dword [ebp-12]
	cmp	edi,dword [eax+20]
	jb	_5786
	call	_brl_blitz_ArrayBoundsError
_5786:
	mov	esi,0
	mov	eax,dword [ebp-12]
	cmp	esi,dword [eax+24]
	jb	_5788
	call	_brl_blitz_ArrayBoundsError
_5788:
	mov	ebx,dword [ebp-20]
	mov	edx,dword [ebp-12]
	mov	eax,edi
	add	eax,esi
	fld	dword [edx+eax*4+28]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [ebx+3],al
	push	_5789
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	mov	dword [ebp-4],eax
	call	dword [_bbOnDebugLeaveScope]
_5270:
	push	_5792
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_feedcount],-1
	push	_5793
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	jmp	_522
_522:
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
_2972:
	dd	0
_2898:
	db	"testlap",0
_2899:
	db	"texturlist",0
_339:
	db	":brl.linkedlist.TList",0
	align	4
_bb_texturlist:
	dd	_bbNullObject
_2900:
	db	"maptexturlist",0
	align	4
_bb_maptexturlist:
	dd	_bbNullObject
_2901:
	db	"texgrouplist",0
	align	4
_bb_texgrouplist:
	dd	_bbNullObject
_2902:
	db	"maptexgrouplist",0
	align	4
_bb_maptexgrouplist:
	dd	_bbNullObject
_2903:
	db	"waypointlist",0
	align	4
_bb_waypointlist:
	dd	_bbNullObject
_2904:
	db	"printlistlist",0
	align	4
_bb_printlistlist:
	dd	_bbNullObject
_2905:
	db	"fenster",0
_2906:
	db	":brl.graphics.TGraphics",0
	align	4
_bb_fenster:
	dd	_bbNullObject
_2907:
	db	"tex",0
_2908:
	db	"[]:brl.pixmap.TPixmap",0
	align	4
_bb_tex:
	dd	_bbEmptyArray
_2909:
	db	"texI",0
_2910:
	db	"[]:brl.max2d.Timage",0
	align	4
_bb_texI:
	dd	_bbEmptyArray
_2911:
	db	"waycecker",0
_313:
	db	"i",0
	align	4
_bb_waycecker:
	dd	0
_2912:
	db	"diagonal",0
_343:
	db	"f",0
	align	4
_bb_diagonal:
	dd	0x0
_2913:
	db	"texmap",0
_2914:
	db	"[,]:brl.pixmap.TPixmap",0
	align	4
_bb_texmap:
	dd	_bbEmptyArray
_2915:
	db	"texmapstrip",0
	align	4
_bb_texmapstrip:
	dd	_bbEmptyArray
_2916:
	db	"feedcount",0
	align	4
_bb_feedcount:
	dd	-1
_2917:
	db	"feeddata",0
_2918:
	db	"[]i",0
	align	4
_bb_feeddata:
	dd	_bbEmptyArray
_2919:
	db	"feedfactor",0
	align	4
_bb_feedfactor:
	dd	0x0
_2920:
	db	"feedpixel",0
	align	4
_bb_feedpixel:
	dd	0
_2921:
	db	"feedposx",0
	align	4
_bb_feedposx:
	dd	0
_2922:
	db	"feedposy",0
	align	4
_bb_feedposy:
	dd	0
_2923:
	db	"feedtexA",0
	align	4
_bb_feedtexA:
	dd	0
_2924:
	db	"feedtexB",0
	align	4
_bb_feedtexB:
	dd	0
_2925:
	db	"feedtexACT",0
	align	4
_bb_feedtexACT:
	dd	0
_2926:
	db	"combospeicher",0
_2927:
	db	"[,]i",0
	align	4
_bb_combospeicher:
	dd	_bbEmptyArray
_2928:
	db	"fromtestpic",0
_2929:
	db	"testpic",0
_319:
	db	":brl.pixmap.TPixmap",0
_2930:
	db	"testcolor",0
_2931:
	db	"bytes2",0
_2932:
	db	"*b",0
_2933:
	db	"testcolor2",0
_2934:
	db	"bytes3",0
_2935:
	db	"totestimg",0
_317:
	db	":brl.max2d.TImage",0
_2936:
	db	"fromtestimg",0
_2937:
	db	"texmapI",0
_2938:
	db	"[,]:brl.max2d.TImage",0
_2939:
	db	"rot",0
_2940:
	db	"testcolorrot",0
_2941:
	db	"bytes2rot",0
_2942:
	db	"gruen",0
_2943:
	db	"testcolorgruen",0
_2944:
	db	"bytes2gruen",0
_2945:
	db	"blau",0
_2946:
	db	"testcolorblau",0
_2947:
	db	"bytes2blau",0
_2948:
	db	"gelb",0
_2949:
	db	"testcolorgelb",0
_2950:
	db	"bytes2gelb",0
_2951:
	db	"testtile",0
	align	4
_bb_testtile:
	dd	_bbEmptyArray
_2952:
	db	"testtileO",0
	align	4
_bb_testtileO:
	dd	_bbEmptyArray
_2953:
	db	"testtileI",0
	align	4
_bb_testtileI:
	dd	_bbEmptyArray
_2954:
	db	"lutesttile",0
	align	4
_bb_lutesttile:
	dd	_bbEmptyArray
_2955:
	db	"lutesttileO",0
	align	4
_bb_lutesttileO:
	dd	_bbEmptyArray
_2956:
	db	"lutesttileI",0
	align	4
_bb_lutesttileI:
	dd	_bbEmptyArray
_2957:
	db	"lotesttile",0
	align	4
_bb_lotesttile:
	dd	_bbEmptyArray
_2958:
	db	"lotesttileO",0
	align	4
_bb_lotesttileO:
	dd	_bbEmptyArray
_2959:
	db	"lotesttileI",0
	align	4
_bb_lotesttileI:
	dd	_bbEmptyArray
_2960:
	db	"rotesttile",0
	align	4
_bb_rotesttile:
	dd	_bbEmptyArray
_2961:
	db	"rotesttileO",0
	align	4
_bb_rotesttileO:
	dd	_bbEmptyArray
_2962:
	db	"rotesttileI",0
	align	4
_bb_rotesttileI:
	dd	_bbEmptyArray
_2963:
	db	"Gtesttile",0
	align	4
_bb_Gtesttile:
	dd	_bbEmptyArray
_2964:
	db	"GtesttileO",0
	align	4
_bb_GtesttileO:
	dd	_bbEmptyArray
_2965:
	db	"GtesttileI",0
	align	4
_bb_GtesttileI:
	dd	_bbEmptyArray
_2966:
	db	"used_combo",0
_2967:
	db	"testtileU",0
_2968:
	db	"md",0
	align	4
_bb_md:
	dd	0
_2969:
	db	"gorender",0
_2970:
	db	"tmr",0
_2971:
	db	":brl.timer.Ttimer",0
	align	4
_bb_tmr:
	dd	_bbNullObject
	align	4
_2897:
	dd	1
	dd	_2898
	dd	4
	dd	_2899
	dd	_339
	dd	_bb_texturlist
	dd	4
	dd	_2900
	dd	_339
	dd	_bb_maptexturlist
	dd	4
	dd	_2901
	dd	_339
	dd	_bb_texgrouplist
	dd	4
	dd	_2902
	dd	_339
	dd	_bb_maptexgrouplist
	dd	4
	dd	_2903
	dd	_339
	dd	_bb_waypointlist
	dd	4
	dd	_2904
	dd	_339
	dd	_bb_printlistlist
	dd	4
	dd	_2905
	dd	_2906
	dd	_bb_fenster
	dd	4
	dd	_2907
	dd	_2908
	dd	_bb_tex
	dd	4
	dd	_2909
	dd	_2910
	dd	_bb_texI
	dd	4
	dd	_2911
	dd	_313
	dd	_bb_waycecker
	dd	4
	dd	_2912
	dd	_343
	dd	_bb_diagonal
	dd	4
	dd	_2913
	dd	_2914
	dd	_bb_texmap
	dd	4
	dd	_2915
	dd	_2908
	dd	_bb_texmapstrip
	dd	4
	dd	_2916
	dd	_313
	dd	_bb_feedcount
	dd	4
	dd	_2917
	dd	_2918
	dd	_bb_feeddata
	dd	4
	dd	_2919
	dd	_343
	dd	_bb_feedfactor
	dd	4
	dd	_2920
	dd	_313
	dd	_bb_feedpixel
	dd	4
	dd	_2921
	dd	_313
	dd	_bb_feedposx
	dd	4
	dd	_2922
	dd	_313
	dd	_bb_feedposy
	dd	4
	dd	_2923
	dd	_313
	dd	_bb_feedtexA
	dd	4
	dd	_2924
	dd	_313
	dd	_bb_feedtexB
	dd	4
	dd	_2925
	dd	_313
	dd	_bb_feedtexACT
	dd	4
	dd	_2926
	dd	_2927
	dd	_bb_combospeicher
	dd	2
	dd	_2928
	dd	_2908
	dd	-4
	dd	2
	dd	_2929
	dd	_319
	dd	-8
	dd	2
	dd	_2930
	dd	_313
	dd	-12
	dd	2
	dd	_2931
	dd	_2932
	dd	-16
	dd	2
	dd	_2933
	dd	_313
	dd	-20
	dd	2
	dd	_2934
	dd	_2932
	dd	-24
	dd	2
	dd	_2935
	dd	_317
	dd	-28
	dd	2
	dd	_2936
	dd	_317
	dd	-32
	dd	2
	dd	_2937
	dd	_2938
	dd	-36
	dd	2
	dd	_2939
	dd	_319
	dd	-40
	dd	2
	dd	_2940
	dd	_313
	dd	-44
	dd	2
	dd	_2941
	dd	_2932
	dd	-48
	dd	2
	dd	_2942
	dd	_319
	dd	-52
	dd	2
	dd	_2943
	dd	_313
	dd	-56
	dd	2
	dd	_2944
	dd	_2932
	dd	-60
	dd	2
	dd	_2945
	dd	_319
	dd	-64
	dd	2
	dd	_2946
	dd	_313
	dd	-68
	dd	2
	dd	_2947
	dd	_2932
	dd	-72
	dd	2
	dd	_2948
	dd	_319
	dd	-76
	dd	2
	dd	_2949
	dd	_313
	dd	-80
	dd	2
	dd	_2950
	dd	_2932
	dd	-84
	dd	4
	dd	_2951
	dd	_2908
	dd	_bb_testtile
	dd	4
	dd	_2952
	dd	_2908
	dd	_bb_testtileO
	dd	4
	dd	_2953
	dd	_2910
	dd	_bb_testtileI
	dd	4
	dd	_2954
	dd	_2908
	dd	_bb_lutesttile
	dd	4
	dd	_2955
	dd	_2908
	dd	_bb_lutesttileO
	dd	4
	dd	_2956
	dd	_2910
	dd	_bb_lutesttileI
	dd	4
	dd	_2957
	dd	_2908
	dd	_bb_lotesttile
	dd	4
	dd	_2958
	dd	_2908
	dd	_bb_lotesttileO
	dd	4
	dd	_2959
	dd	_2910
	dd	_bb_lotesttileI
	dd	4
	dd	_2960
	dd	_2908
	dd	_bb_rotesttile
	dd	4
	dd	_2961
	dd	_2908
	dd	_bb_rotesttileO
	dd	4
	dd	_2962
	dd	_2910
	dd	_bb_rotesttileI
	dd	4
	dd	_2963
	dd	_2908
	dd	_bb_Gtesttile
	dd	4
	dd	_2964
	dd	_2908
	dd	_bb_GtesttileO
	dd	4
	dd	_2965
	dd	_2910
	dd	_bb_GtesttileI
	dd	2
	dd	_2966
	dd	_313
	dd	-88
	dd	2
	dd	_2967
	dd	_2918
	dd	-92
	dd	4
	dd	_2968
	dd	_313
	dd	_bb_md
	dd	2
	dd	_2969
	dd	_313
	dd	-96
	dd	4
	dd	_2970
	dd	_2971
	dd	_bb_tmr
	dd	0
_309:
	db	"Ttextur",0
_310:
	db	"render",0
_311:
	db	"[]:Ttextur",0
_312:
	db	"isRendert",0
_314:
	db	"orginal",0
_315:
	db	":Ttextur",0
_316:
	db	"img",0
_318:
	db	"pic",0
_320:
	db	"version",0
_321:
	db	"beforeTex",0
_322:
	db	"isAlpha",0
_323:
	db	"b",0
_324:
	db	"isDust",0
_325:
	db	"r",0
_326:
	db	"g",0
_327:
	db	"speicherort",0
_328:
	db	"$",0
_329:
	db	"datname",0
_330:
	db	"group",0
_331:
	db	"eingestellt",0
_332:
	db	"New",0
_333:
	db	"()i",0
_334:
	db	"Delete",0
	align	4
_308:
	dd	2
	dd	_309
	dd	3
	dd	_310
	dd	_311
	dd	8
	dd	3
	dd	_312
	dd	_313
	dd	12
	dd	3
	dd	_314
	dd	_315
	dd	16
	dd	3
	dd	_316
	dd	_317
	dd	20
	dd	3
	dd	_318
	dd	_319
	dd	24
	dd	3
	dd	_320
	dd	_313
	dd	28
	dd	3
	dd	_321
	dd	_315
	dd	32
	dd	3
	dd	_322
	dd	_323
	dd	36
	dd	3
	dd	_324
	dd	_323
	dd	37
	dd	3
	dd	_325
	dd	_323
	dd	38
	dd	3
	dd	_326
	dd	_323
	dd	39
	dd	3
	dd	_323
	dd	_323
	dd	40
	dd	3
	dd	_327
	dd	_328
	dd	44
	dd	3
	dd	_329
	dd	_328
	dd	48
	dd	3
	dd	_330
	dd	_328
	dd	52
	dd	3
	dd	_331
	dd	_323
	dd	56
	dd	6
	dd	_332
	dd	_333
	dd	16
	dd	6
	dd	_334
	dd	_333
	dd	20
	dd	0
	align	4
_bb_Ttextur:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_308
	dd	57
	dd	__bb_Ttextur_New
	dd	__bb_Ttextur_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_336:
	db	"Ttexgroup",0
_337:
	db	"texlink",0
_338:
	db	"texlist",0
	align	4
_335:
	dd	2
	dd	_336
	dd	3
	dd	_330
	dd	_328
	dd	8
	dd	3
	dd	_337
	dd	_315
	dd	12
	dd	3
	dd	_338
	dd	_339
	dd	16
	dd	6
	dd	_332
	dd	_333
	dd	16
	dd	6
	dd	_334
	dd	_333
	dd	20
	dd	0
	align	4
_bb_Ttexgroup:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_335
	dd	20
	dd	__bb_Ttexgroup_New
	dd	__bb_Ttexgroup_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_341:
	db	"Twaypoint",0
_342:
	db	"x",0
_344:
	db	"y",0
_345:
	db	"cheacked",0
_346:
	db	"otherWP",0
_347:
	db	":Twaypoint",0
_348:
	db	"dist",0
_349:
	db	"[]f",0
_350:
	db	"chaged",0
_351:
	db	"used",0
_352:
	db	"otherlist",0
	align	4
_340:
	dd	2
	dd	_341
	dd	3
	dd	_342
	dd	_343
	dd	8
	dd	3
	dd	_344
	dd	_343
	dd	12
	dd	3
	dd	_345
	dd	_313
	dd	16
	dd	3
	dd	_346
	dd	_347
	dd	20
	dd	3
	dd	_348
	dd	_349
	dd	24
	dd	3
	dd	_350
	dd	_313
	dd	28
	dd	3
	dd	_351
	dd	_343
	dd	32
	dd	3
	dd	_352
	dd	_339
	dd	36
	dd	6
	dd	_332
	dd	_333
	dd	16
	dd	6
	dd	_334
	dd	_333
	dd	20
	dd	0
	align	4
_bb_Twaypoint:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_340
	dd	40
	dd	__bb_Twaypoint_New
	dd	__bb_Twaypoint_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_525:
	db	"D:/Proggen/projecte/team/PanzerS/testlap.bmx",0
	align	4
_524:
	dd	_525
	dd	23
	dd	1
	align	4
_527:
	dd	0
	align	4
_529:
	dd	_525
	dd	24
	dd	1
	align	4
_532:
	dd	_525
	dd	30
	dd	1
	align	4
_535:
	dd	_525
	dd	31
	dd	1
	align	4
_538:
	dd	_525
	dd	39
	dd	1
	align	4
_541:
	dd	_525
	dd	40
	dd	1
	align	4
_544:
	dd	_525
	dd	44
	dd	1
	align	4
_18:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	80,97,110,122,101,114,83,58,32,84,101,115,116,108,97,112
	dw	33
	align	4
_549:
	dd	_525
	dd	45
	dd	1
	align	4
_552:
	dd	_525
	dd	46
	dd	1
	align	4
_553:
	dd	_525
	dd	48
	dd	1
_554:
	db	":brl.pixmap.TPixmap",0
_557:
	db	":brl.max2d.Timage",0
	align	4
_560:
	dd	_525
	dd	49
	dd	1
	align	4
_19:
	dd	_bbStringClass
	dd	2147483647
	dd	37
	dw	103,102,120,92,116,101,120,116,117,114,101,110,92,115,116,97
	dw	110,100,97,114,116,92,102,97,114,98,112,97,112,105,101,114
	dw	49,46,112,110,103
	align	4
_568:
	dd	_525
	dd	50
	dd	1
	align	4
_20:
	dd	_bbStringClass
	dd	2147483647
	dd	37
	dw	103,102,120,92,116,101,120,116,117,114,101,110,92,115,116,97
	dw	110,100,97,114,116,92,102,97,114,98,112,97,112,105,101,114
	dw	52,46,112,110,103
	align	4
_576:
	dd	_525
	dd	51
	dd	1
	align	4
_21:
	dd	_bbStringClass
	dd	2147483647
	dd	31
	dw	103,102,120,92,116,101,120,116,117,114,101,110,92,115,116,97
	dw	110,100,97,114,116,92,103,114,97,115,115,46,112,110,103
	align	4
_584:
	dd	_525
	dd	52
	dd	1
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	33
	dw	103,102,120,92,116,101,120,116,117,114,101,110,92,115,116,97
	dw	110,100,97,114,116,92,109,117,115,116,101,114,50,46,112,110
	dw	103
	align	4
_592:
	dd	_525
	dd	53
	dd	1
	align	4
_23:
	dd	_bbStringClass
	dd	2147483647
	dd	33
	dw	103,102,120,92,116,101,120,116,117,114,101,110,92,115,116,97
	dw	110,100,97,114,116,92,109,117,115,116,101,114,51,46,112,110
	dw	103
	align	4
_600:
	dd	_525
	dd	54
	dd	1
	align	4
_24:
	dd	_bbStringClass
	dd	2147483647
	dd	33
	dw	103,102,120,92,116,101,120,116,117,114,101,110,92,115,116,97
	dw	110,100,97,114,116,92,109,117,115,116,101,114,54,46,112,110
	dw	103
	align	4
_608:
	dd	_525
	dd	55
	dd	1
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	32
	dw	103,102,120,92,116,101,120,116,117,114,101,110,92,115,116,97
	dw	110,100,97,114,116,92,115,116,101,105,110,52,46,112,110,103
	align	4
_616:
	dd	_525
	dd	56
	dd	1
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	32
	dw	103,102,120,92,116,101,120,116,117,114,101,110,92,115,116,97
	dw	110,100,97,114,116,92,115,116,101,105,110,51,46,112,110,103
	align	4
_624:
	dd	_525
	dd	57
	dd	1
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	32
	dw	103,102,120,92,116,101,120,116,117,114,101,110,92,115,116,97
	dw	110,100,97,114,116,92,115,116,101,105,110,50,46,112,110,103
	align	4
_632:
	dd	_525
	dd	59
	dd	1
	align	4
_640:
	dd	_525
	dd	60
	dd	1
	align	4
_648:
	dd	_525
	dd	61
	dd	1
	align	4
_656:
	dd	_525
	dd	62
	dd	1
	align	4
_664:
	dd	_525
	dd	63
	dd	1
	align	4
_672:
	dd	_525
	dd	64
	dd	1
	align	4
_680:
	dd	_525
	dd	65
	dd	1
	align	4
_688:
	dd	_525
	dd	66
	dd	1
	align	4
_696:
	dd	_525
	dd	67
	dd	1
	align	4
_704:
	dd	_525
	dd	69
	dd	1
_706:
	db	"D:/Proggen/projecte/team/PanzerS/inc/may.bmx",0
	align	4
_705:
	dd	_706
	dd	447
	dd	1
	align	8
_5798:
	dd	0x0,0x40000000
	align	4
_708:
	dd	_525
	dd	72
	dd	1
_709:
	db	":brl.pixmap.TPixmap",0
_712:
	db	":brl.pixmap.TPixmap",0
	align	4
_715:
	dd	_525
	dd	74
	dd	1
	align	4
_727:
	dd	_525
	dd	75
	dd	1
	align	4
_739:
	dd	_525
	dd	76
	dd	1
	align	4
_751:
	dd	_525
	dd	77
	dd	1
	align	4
_763:
	dd	_525
	dd	78
	dd	1
	align	4
_775:
	dd	_525
	dd	79
	dd	1
	align	4
_787:
	dd	_525
	dd	80
	dd	1
	align	4
_799:
	dd	_525
	dd	81
	dd	1
	align	4
_811:
	dd	_525
	dd	82
	dd	1
	align	4
_823:
	dd	_525
	dd	83
	dd	1
	align	4
_835:
	dd	_525
	dd	84
	dd	1
	align	4
_847:
	dd	_525
	dd	85
	dd	1
	align	4
_859:
	dd	_525
	dd	86
	dd	1
	align	4
_871:
	dd	_525
	dd	87
	dd	1
	align	4
_883:
	dd	_525
	dd	88
	dd	1
	align	4
_895:
	dd	_525
	dd	89
	dd	1
	align	4
_907:
	dd	_525
	dd	91
	dd	1
	align	4
_919:
	dd	_525
	dd	94
	dd	1
_920:
	db	"i",0
	align	4
_923:
	dd	_525
	dd	95
	dd	1
_924:
	db	"i",0
	align	4
_927:
	dd	_525
	dd	98
	dd	1
_928:
	db	":brl.pixmap.TPixmap",0
	align	4
_930:
	dd	_525
	dd	99
	dd	1
	align	4
_938:
	dd	_525
	dd	100
	dd	1
	align	4
_940:
	dd	_525
	dd	102
	dd	2
	align	4
_942:
	dd	_525
	dd	103
	dd	2
	align	4
_944:
	dd	_525
	dd	104
	dd	2
	align	4
_945:
	dd	_525
	dd	105
	dd	2
	align	4
_946:
	dd	_525
	dd	106
	dd	2
	align	4
_947:
	dd	_525
	dd	107
	dd	2
	align	4
_948:
	dd	_525
	dd	109
	dd	1
	align	4
_960:
	dd	3
	dd	0
	dd	2
	dd	_344
	dd	_313
	dd	-100
	dd	0
	align	4
_951:
	dd	_525
	dd	110
	dd	2
	align	4
_959:
	dd	3
	dd	0
	dd	2
	dd	_342
	dd	_313
	dd	-104
	dd	0
	align	4
_954:
	dd	_525
	dd	111
	dd	3
	align	4
_961:
	dd	_525
	dd	114
	dd	2
	align	4
_963:
	dd	_525
	dd	115
	dd	2
	align	4
_965:
	dd	_525
	dd	116
	dd	2
	align	4
_966:
	dd	_525
	dd	117
	dd	2
	align	4
_967:
	dd	_525
	dd	118
	dd	2
	align	4
_968:
	dd	_525
	dd	119
	dd	2
	align	4
_969:
	dd	_525
	dd	122
	dd	1
	align	4
_979:
	dd	3
	dd	0
	dd	2
	dd	_344
	dd	_313
	dd	-108
	dd	0
	align	4
_972:
	dd	_525
	dd	123
	dd	2
	align	4
_978:
	dd	3
	dd	0
	dd	2
	dd	_342
	dd	_313
	dd	-112
	dd	0
	align	4
_975:
	dd	_525
	dd	125
	dd	3
	align	4
_980:
	dd	_525
	dd	129
	dd	1
	align	4
_983:
	dd	_525
	dd	205
	dd	1
	align	4
_985:
	dd	_525
	dd	206
	dd	1
	align	4
_989:
	dd	_525
	dd	208
	dd	1
_990:
	db	":brl.max2d.TImage",0
	align	4
_992:
	dd	_525
	dd	209
	dd	1
	align	4
_1013:
	dd	3
	dd	0
	dd	2
	dd	_344
	dd	_313
	dd	-116
	dd	0
	align	4
_995:
	dd	_525
	dd	210
	dd	3
	align	4
_1012:
	dd	3
	dd	0
	dd	2
	dd	_342
	dd	_313
	dd	-120
	dd	0
	align	4
_998:
	dd	_525
	dd	211
	dd	4
	align	4
_1014:
	dd	_525
	dd	216
	dd	1
	align	4
_1016:
	dd	_525
	dd	218
	dd	1
	align	4
_1018:
	dd	_525
	dd	219
	dd	1
	align	4
_1020:
	dd	_525
	dd	220
	dd	1
	align	4
_1021:
	dd	_525
	dd	221
	dd	1
	align	4
_1022:
	dd	_525
	dd	222
	dd	1
	align	4
_1023:
	dd	_525
	dd	223
	dd	1
	align	4
_1024:
	dd	_525
	dd	225
	dd	1
	align	4
_1034:
	dd	3
	dd	0
	dd	2
	dd	_344
	dd	_313
	dd	-124
	dd	0
	align	4
_1027:
	dd	_525
	dd	226
	dd	2
	align	4
_1033:
	dd	3
	dd	0
	dd	2
	dd	_342
	dd	_313
	dd	-128
	dd	0
	align	4
_1030:
	dd	_525
	dd	227
	dd	3
	align	4
_1035:
	dd	_525
	dd	231
	dd	1
	align	4
_1037:
	dd	_525
	dd	233
	dd	1
	align	4
_1039:
	dd	_525
	dd	234
	dd	1
	align	4
_1041:
	dd	_525
	dd	235
	dd	1
	align	4
_1042:
	dd	_525
	dd	236
	dd	1
	align	4
_1043:
	dd	_525
	dd	237
	dd	1
	align	4
_1044:
	dd	_525
	dd	238
	dd	1
	align	4
_1045:
	dd	_525
	dd	240
	dd	1
	align	4
_1055:
	dd	3
	dd	0
	dd	2
	dd	_344
	dd	_313
	dd	-132
	dd	0
	align	4
_1048:
	dd	_525
	dd	241
	dd	2
	align	4
_1054:
	dd	3
	dd	0
	dd	2
	dd	_342
	dd	_313
	dd	-136
	dd	0
	align	4
_1051:
	dd	_525
	dd	242
	dd	3
	align	4
_1056:
	dd	_525
	dd	246
	dd	1
	align	4
_1058:
	dd	_525
	dd	248
	dd	1
	align	4
_1060:
	dd	_525
	dd	249
	dd	1
	align	4
_1062:
	dd	_525
	dd	250
	dd	1
	align	4
_1063:
	dd	_525
	dd	251
	dd	1
	align	4
_1064:
	dd	_525
	dd	252
	dd	1
	align	4
_1065:
	dd	_525
	dd	253
	dd	1
	align	4
_1066:
	dd	_525
	dd	255
	dd	1
	align	4
_1076:
	dd	3
	dd	0
	dd	2
	dd	_344
	dd	_313
	dd	-140
	dd	0
	align	4
_1069:
	dd	_525
	dd	256
	dd	2
	align	4
_1075:
	dd	3
	dd	0
	dd	2
	dd	_342
	dd	_313
	dd	-144
	dd	0
	align	4
_1072:
	dd	_525
	dd	257
	dd	3
	align	4
_1077:
	dd	_525
	dd	262
	dd	1
	align	4
_1079:
	dd	_525
	dd	264
	dd	1
	align	4
_1081:
	dd	_525
	dd	265
	dd	1
	align	4
_1083:
	dd	_525
	dd	266
	dd	1
	align	4
_1084:
	dd	_525
	dd	267
	dd	1
	align	4
_1085:
	dd	_525
	dd	268
	dd	1
	align	4
_1086:
	dd	_525
	dd	269
	dd	1
	align	4
_1087:
	dd	_525
	dd	271
	dd	1
	align	4
_1097:
	dd	3
	dd	0
	dd	2
	dd	_344
	dd	_313
	dd	-148
	dd	0
	align	4
_1090:
	dd	_525
	dd	272
	dd	2
	align	4
_1096:
	dd	3
	dd	0
	dd	2
	dd	_342
	dd	_313
	dd	-152
	dd	0
	align	4
_1093:
	dd	_525
	dd	273
	dd	3
	align	4
_1098:
	dd	_525
	dd	278
	dd	1
_1099:
	db	":brl.pixmap.TPixmap",0
_1102:
	db	":brl.pixmap.TPixmap",0
	align	4
_1105:
	dd	_525
	dd	280
	dd	1
	align	4
_1113:
	dd	_525
	dd	281
	dd	1
	align	4
_1121:
	dd	_525
	dd	282
	dd	1
	align	4
_1129:
	dd	_525
	dd	283
	dd	1
	align	4
_1137:
	dd	_525
	dd	285
	dd	1
	align	4
_1145:
	dd	_525
	dd	286
	dd	1
	align	4
_1153:
	dd	_525
	dd	287
	dd	1
	align	4
_1161:
	dd	_525
	dd	288
	dd	1
	align	4
_1169:
	dd	_525
	dd	290
	dd	1
_1170:
	db	":brl.max2d.Timage",0
	align	4
_1173:
	dd	_525
	dd	292
	dd	1
	align	4
_1183:
	dd	_525
	dd	293
	dd	1
	align	4
_1193:
	dd	_525
	dd	294
	dd	1
	align	4
_1203:
	dd	_525
	dd	295
	dd	1
	align	4
_1213:
	dd	_525
	dd	300
	dd	1
_1214:
	db	":brl.pixmap.TPixmap",0
_1217:
	db	":brl.pixmap.TPixmap",0
	align	4
_1220:
	dd	_525
	dd	302
	dd	1
	align	4
_1228:
	dd	_525
	dd	303
	dd	1
	align	4
_1236:
	dd	_525
	dd	304
	dd	1
	align	4
_1244:
	dd	_525
	dd	305
	dd	1
	align	4
_1252:
	dd	_525
	dd	307
	dd	1
	align	4
_1260:
	dd	_525
	dd	308
	dd	1
	align	4
_1268:
	dd	_525
	dd	309
	dd	1
	align	4
_1276:
	dd	_525
	dd	310
	dd	1
	align	4
_1284:
	dd	_525
	dd	312
	dd	1
_1285:
	db	":brl.max2d.Timage",0
	align	4
_1288:
	dd	_525
	dd	314
	dd	1
	align	4
_1298:
	dd	_525
	dd	315
	dd	1
	align	4
_1308:
	dd	_525
	dd	316
	dd	1
	align	4
_1318:
	dd	_525
	dd	317
	dd	1
	align	4
_1328:
	dd	_525
	dd	319
	dd	1
_1329:
	db	":brl.pixmap.TPixmap",0
_1332:
	db	":brl.pixmap.TPixmap",0
	align	4
_1335:
	dd	_525
	dd	321
	dd	1
	align	4
_1343:
	dd	_525
	dd	322
	dd	1
	align	4
_1351:
	dd	_525
	dd	323
	dd	1
	align	4
_1359:
	dd	_525
	dd	324
	dd	1
	align	4
_1367:
	dd	_525
	dd	326
	dd	1
	align	4
_1375:
	dd	_525
	dd	327
	dd	1
	align	4
_1383:
	dd	_525
	dd	328
	dd	1
	align	4
_1391:
	dd	_525
	dd	329
	dd	1
	align	4
_1399:
	dd	_525
	dd	331
	dd	1
_1400:
	db	":brl.max2d.Timage",0
	align	4
_1403:
	dd	_525
	dd	333
	dd	1
	align	4
_1413:
	dd	_525
	dd	334
	dd	1
	align	4
_1423:
	dd	_525
	dd	335
	dd	1
	align	4
_1433:
	dd	_525
	dd	336
	dd	1
	align	4
_1443:
	dd	_525
	dd	339
	dd	1
_1444:
	db	":brl.pixmap.TPixmap",0
_1447:
	db	":brl.pixmap.TPixmap",0
	align	4
_1450:
	dd	_525
	dd	341
	dd	1
	align	4
_1458:
	dd	_525
	dd	342
	dd	1
	align	4
_1466:
	dd	_525
	dd	343
	dd	1
	align	4
_1474:
	dd	_525
	dd	344
	dd	1
	align	4
_1482:
	dd	_525
	dd	346
	dd	1
	align	4
_1490:
	dd	_525
	dd	347
	dd	1
	align	4
_1498:
	dd	_525
	dd	348
	dd	1
	align	4
_1506:
	dd	_525
	dd	349
	dd	1
	align	4
_1514:
	dd	_525
	dd	351
	dd	1
_1515:
	db	":brl.max2d.Timage",0
	align	4
_1518:
	dd	_525
	dd	353
	dd	1
	align	4
_1528:
	dd	_525
	dd	354
	dd	1
	align	4
_1538:
	dd	_525
	dd	355
	dd	1
	align	4
_1548:
	dd	_525
	dd	356
	dd	1
	align	4
_1558:
	dd	_525
	dd	360
	dd	1
_1559:
	db	":brl.pixmap.TPixmap",0
_1562:
	db	":brl.pixmap.TPixmap",0
	align	4
_1565:
	dd	_525
	dd	362
	dd	1
_1566:
	db	":brl.max2d.Timage",0
	align	4
_1569:
	dd	_525
	dd	363
	dd	1
	align	4
_1598:
	dd	3
	dd	0
	dd	2
	dd	_342
	dd	_313
	dd	-156
	dd	0
	align	4
_1572:
	dd	_525
	dd	364
	dd	2
	align	4
_1580:
	dd	_525
	dd	365
	dd	2
	align	4
_1588:
	dd	_525
	dd	366
	dd	2
	align	4
_1599:
	dd	_525
	dd	369
	dd	1
	align	4
_1607:
	dd	_525
	dd	370
	dd	1
	align	4
_1615:
	dd	_525
	dd	371
	dd	1
	align	4
_1625:
	dd	_525
	dd	373
	dd	1
	align	4
_1633:
	dd	_525
	dd	374
	dd	1
	align	4
_1641:
	dd	_525
	dd	375
	dd	1
	align	4
_1651:
	dd	_525
	dd	377
	dd	1
_1653:
	db	"i",0
	align	4
_1655:
	dd	_525
	dd	378
	dd	1
	align	4
_1656:
	dd	_525
	dd	380
	dd	1
	align	4
_1670:
	dd	_525
	dd	381
	dd	1
	align	4
_1672:
	dd	_525
	dd	382
	dd	1
	align	4
_1673:
	dd	_525
	dd	385
	dd	1
	align	4
_1676:
	dd	_525
	dd	387
	dd	1
	align	4
_2896:
	dd	3
	dd	0
	dd	0
	align	4
_1677:
	dd	_525
	dd	388
	dd	2
	align	4
_1680:
	dd	_525
	dd	389
	dd	2
	align	4
_1681:
	dd	_525
	dd	390
	dd	2
	align	4
_1682:
	dd	_525
	dd	391
	dd	2
	align	4
_1683:
	dd	_525
	dd	392
	dd	2
	align	4
_1686:
	dd	_525
	dd	393
	dd	2
	align	4
_1689:
	dd	_525
	dd	394
	dd	2
	align	4
_1692:
	dd	_525
	dd	395
	dd	2
	align	4
_1695:
	dd	_525
	dd	397
	dd	2
	align	4
_1698:
	dd	_525
	dd	398
	dd	2
	align	4
_1701:
	dd	_525
	dd	399
	dd	2
	align	4
_1704:
	dd	_525
	dd	400
	dd	2
	align	4
_1707:
	dd	_525
	dd	402
	dd	2
	align	4
_1710:
	dd	_525
	dd	403
	dd	2
	align	4
_1713:
	dd	_525
	dd	404
	dd	2
	align	4
_1716:
	dd	_525
	dd	405
	dd	2
	align	4
_1719:
	dd	_525
	dd	407
	dd	2
	align	4
_1722:
	dd	_525
	dd	408
	dd	2
	align	4
_1725:
	dd	_525
	dd	409
	dd	2
	align	4
_1728:
	dd	_525
	dd	410
	dd	2
	align	4
_1731:
	dd	_525
	dd	413
	dd	2
	align	4
_1734:
	dd	_525
	dd	414
	dd	2
	align	4
_1737:
	dd	_525
	dd	415
	dd	2
	align	4
_1740:
	dd	_525
	dd	416
	dd	2
	align	4
_1743:
	dd	_525
	dd	417
	dd	2
	align	4
_1746:
	dd	_525
	dd	418
	dd	2
	align	4
_1749:
	dd	_525
	dd	419
	dd	2
	align	4
_1752:
	dd	_525
	dd	420
	dd	2
	align	4
_1755:
	dd	_525
	dd	421
	dd	2
	align	4
_1758:
	dd	_525
	dd	423
	dd	2
	align	4
_1:
	dd	_bbStringClass
	dd	2147483647
	dd	0
	align	4
_223:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	78,101,120,116
_2091:
	db	"go",0
	align	4
_2090:
	dd	3
	dd	0
	dd	2
	dd	_2091
	dd	_313
	dd	-160
	dd	0
	align	4
_1760:
	dd	_525
	dd	424
	dd	3
	align	4
_1761:
	dd	_525
	dd	425
	dd	3
	align	4
_1763:
	dd	_525
	dd	470
	dd	3
_2088:
	db	"found",0
	align	4
_2087:
	dd	3
	dd	0
	dd	2
	dd	_2088
	dd	_313
	dd	-164
	dd	0
	align	4
_1764:
	dd	_525
	dd	427
	dd	4
	align	4
_1770:
	dd	_525
	dd	428
	dd	4
	align	4
_1784:
	dd	3
	dd	0
	dd	0
	align	4
_1774:
	dd	_525
	dd	428
	dd	29
	align	4
_1778:
	dd	_525
	dd	428
	dd	48
	align	4
_1785:
	dd	_525
	dd	429
	dd	4
	align	4
_1799:
	dd	3
	dd	0
	dd	0
	align	4
_1789:
	dd	_525
	dd	429
	dd	29
	align	4
_1793:
	dd	_525
	dd	429
	dd	48
	align	4
_1800:
	dd	_525
	dd	430
	dd	4
	align	4
_1814:
	dd	3
	dd	0
	dd	0
	align	4
_1804:
	dd	_525
	dd	430
	dd	29
	align	4
_1808:
	dd	_525
	dd	430
	dd	48
	align	4
_1815:
	dd	_525
	dd	431
	dd	4
	align	4
_1822:
	dd	3
	dd	0
	dd	0
	align	4
_1819:
	dd	_525
	dd	431
	dd	29
	align	4
_227:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	111,107,102,101,114,116,105,103,32,62,32,115,97,118,105,110
	dw	103
	align	4
_1820:
	dd	_525
	dd	431
	dd	59
	align	4
_1821:
	dd	_525
	dd	431
	dd	75
	align	4
_1823:
	dd	_525
	dd	433
	dd	4
	align	4
_1878:
	dd	3
	dd	0
	dd	2
	dd	_342
	dd	_313
	dd	-168
	dd	0
	align	4
_1826:
	dd	_525
	dd	434
	dd	5
	align	4
_1838:
	dd	3
	dd	0
	dd	0
	align	4
_1830:
	dd	_525
	dd	434
	dd	30
	align	4
_1839:
	dd	_525
	dd	435
	dd	5
	align	4
_1851:
	dd	3
	dd	0
	dd	0
	align	4
_1843:
	dd	_525
	dd	435
	dd	30
	align	4
_1852:
	dd	_525
	dd	436
	dd	5
	align	4
_1864:
	dd	3
	dd	0
	dd	0
	align	4
_1856:
	dd	_525
	dd	436
	dd	30
	align	4
_1865:
	dd	_525
	dd	437
	dd	5
	align	4
_1877:
	dd	3
	dd	0
	dd	0
	align	4
_1869:
	dd	_525
	dd	437
	dd	30
	align	4
_1879:
	dd	_525
	dd	440
	dd	4
	align	4
_1934:
	dd	3
	dd	0
	dd	2
	dd	_342
	dd	_313
	dd	-172
	dd	0
	align	4
_1882:
	dd	_525
	dd	441
	dd	5
	align	4
_1894:
	dd	3
	dd	0
	dd	0
	align	4
_1886:
	dd	_525
	dd	441
	dd	30
	align	4
_1895:
	dd	_525
	dd	442
	dd	5
	align	4
_1907:
	dd	3
	dd	0
	dd	0
	align	4
_1899:
	dd	_525
	dd	442
	dd	30
	align	4
_1908:
	dd	_525
	dd	443
	dd	5
	align	4
_1920:
	dd	3
	dd	0
	dd	0
	align	4
_1912:
	dd	_525
	dd	443
	dd	30
	align	4
_1921:
	dd	_525
	dd	444
	dd	5
	align	4
_1933:
	dd	3
	dd	0
	dd	0
	align	4
_1925:
	dd	_525
	dd	444
	dd	30
	align	4
_1935:
	dd	_525
	dd	447
	dd	4
	align	4
_1990:
	dd	3
	dd	0
	dd	2
	dd	_342
	dd	_313
	dd	-176
	dd	0
	align	4
_1938:
	dd	_525
	dd	448
	dd	5
	align	4
_1950:
	dd	3
	dd	0
	dd	0
	align	4
_1942:
	dd	_525
	dd	448
	dd	30
	align	4
_1951:
	dd	_525
	dd	449
	dd	5
	align	4
_1963:
	dd	3
	dd	0
	dd	0
	align	4
_1955:
	dd	_525
	dd	449
	dd	30
	align	4
_1964:
	dd	_525
	dd	450
	dd	5
	align	4
_1976:
	dd	3
	dd	0
	dd	0
	align	4
_1968:
	dd	_525
	dd	450
	dd	30
	align	4
_1977:
	dd	_525
	dd	451
	dd	5
	align	4
_1989:
	dd	3
	dd	0
	dd	0
	align	4
_1981:
	dd	_525
	dd	451
	dd	30
	align	4
_1991:
	dd	_525
	dd	454
	dd	4
	align	4
_2046:
	dd	3
	dd	0
	dd	2
	dd	_342
	dd	_313
	dd	-180
	dd	0
	align	4
_1994:
	dd	_525
	dd	455
	dd	5
	align	4
_2006:
	dd	3
	dd	0
	dd	0
	align	4
_1998:
	dd	_525
	dd	455
	dd	30
	align	4
_2007:
	dd	_525
	dd	456
	dd	5
	align	4
_2019:
	dd	3
	dd	0
	dd	0
	align	4
_2011:
	dd	_525
	dd	456
	dd	30
	align	4
_2020:
	dd	_525
	dd	457
	dd	5
	align	4
_2032:
	dd	3
	dd	0
	dd	0
	align	4
_2024:
	dd	_525
	dd	457
	dd	30
	align	4
_2033:
	dd	_525
	dd	458
	dd	5
	align	4
_2045:
	dd	3
	dd	0
	dd	0
	align	4
_2037:
	dd	_525
	dd	458
	dd	30
	align	4
_2047:
	dd	_525
	dd	461
	dd	4
	align	4
_2049:
	dd	_525
	dd	462
	dd	4
	align	4
_2068:
	dd	3
	dd	0
	dd	2
	dd	_342
	dd	_313
	dd	-184
	dd	0
	align	4
_2052:
	dd	_525
	dd	463
	dd	5
	align	4
_2067:
	dd	3
	dd	0
	dd	0
	align	4
_2066:
	dd	_525
	dd	463
	dd	99
	align	4
_2069:
	dd	_525
	dd	465
	dd	4
	align	4
_2086:
	dd	3
	dd	0
	dd	0
	align	4
_2071:
	dd	_525
	dd	466
	dd	6
	align	4
_2085:
	dd	_525
	dd	467
	dd	6
	align	4
_2089:
	dd	_525
	dd	472
	dd	3
	align	4
_2092:
	dd	_525
	dd	475
	dd	2
	align	4
_2093:
	dd	_525
	dd	476
	dd	2
	align	4
_2094:
	dd	_525
	dd	478
	dd	2
	align	4
_243:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	102,108,105,112,120
	align	4
_2111:
	dd	3
	dd	0
	dd	0
	align	4
_2100:
	dd	_525
	dd	479
	dd	3
	align	4
_2110:
	dd	_525
	dd	480
	dd	3
	align	4
_2112:
	dd	_525
	dd	483
	dd	2
	align	4
_244:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	102,108,105,112,121
	align	4
_2129:
	dd	3
	dd	0
	dd	0
	align	4
_2118:
	dd	_525
	dd	484
	dd	3
	align	4
_2128:
	dd	_525
	dd	485
	dd	3
	align	4
_2130:
	dd	_525
	dd	488
	dd	2
	align	4
_245:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	116,117,114,110,57,48
	align	4
_2147:
	dd	3
	dd	0
	dd	0
	align	4
_2136:
	dd	_525
	dd	489
	dd	3
	align	4
_2146:
	dd	_525
	dd	490
	dd	3
	align	4
_2148:
	dd	_525
	dd	493
	dd	2
	align	4
_246:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	116,117,114,110,52,53
	align	4
_2165:
	dd	3
	dd	0
	dd	0
	align	4
_2154:
	dd	_525
	dd	494
	dd	3
	align	4
_2164:
	dd	_525
	dd	495
	dd	3
	align	4
_2166:
	dd	_525
	dd	498
	dd	2
	align	4
_247:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	105,110,118,101,114,116
	align	4
_2183:
	dd	3
	dd	0
	dd	0
	align	4
_2172:
	dd	_525
	dd	499
	dd	3
	align	4
_2182:
	dd	_525
	dd	500
	dd	3
	align	4
_2184:
	dd	_525
	dd	503
	dd	2
	align	4
_248:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	117,115,101
	align	4
_2210:
	dd	3
	dd	0
	dd	0
	align	4
_2186:
	dd	_525
	dd	504
	dd	3
	align	4
_2196:
	dd	_525
	dd	505
	dd	3
	align	4
_2208:
	dd	3
	dd	0
	dd	0
	align	4
_2202:
	dd	_525
	dd	505
	dd	44
	align	4
_2209:
	dd	_525
	dd	506
	dd	3
	align	4
_2211:
	dd	_525
	dd	509
	dd	2
	align	4
_2212:
	dd	_525
	dd	510
	dd	2
	align	4
_2217:
	dd	_525
	dd	512
	dd	2
	align	4
_249:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	65
	align	4
_2234:
	dd	3
	dd	0
	dd	0
	align	4
_2223:
	dd	_525
	dd	513
	dd	3
	align	4
_2233:
	dd	_525
	dd	514
	dd	3
	align	4
_2235:
	dd	_525
	dd	517
	dd	2
	align	4
_250:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	66
	align	4
_2252:
	dd	3
	dd	0
	dd	0
	align	4
_2241:
	dd	_525
	dd	518
	dd	3
	align	4
_2251:
	dd	_525
	dd	519
	dd	3
	align	4
_2253:
	dd	_525
	dd	522
	dd	2
	align	4
_251:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	103,101,116,32,100,105,102,102
	align	4
_2264:
	dd	3
	dd	0
	dd	0
	align	4
_2255:
	dd	_525
	dd	523
	dd	3
	align	4
_2265:
	dd	_525
	dd	526
	dd	2
_2890:
	db	"testbildsad",0
	align	4
_2889:
	dd	3
	dd	0
	dd	2
	dd	_2890
	dd	_319
	dd	-188
	dd	0
	align	4
_2267:
	dd	_525
	dd	528
	dd	3
	align	4
_2277:
	dd	_525
	dd	529
	dd	3
	align	4
_2287:
	dd	_525
	dd	530
	dd	3
	align	4
_2297:
	dd	_525
	dd	531
	dd	3
	align	4
_2307:
	dd	_525
	dd	533
	dd	3
	align	4
_2317:
	dd	_525
	dd	534
	dd	3
	align	4
_2327:
	dd	_525
	dd	535
	dd	3
	align	4
_2337:
	dd	_525
	dd	536
	dd	3
	align	4
_2347:
	dd	_525
	dd	538
	dd	3
	align	4
_2357:
	dd	_525
	dd	539
	dd	3
	align	4
_2367:
	dd	_525
	dd	540
	dd	3
	align	4
_2377:
	dd	_525
	dd	541
	dd	3
	align	4
_2387:
	dd	_525
	dd	543
	dd	3
	align	4
_2397:
	dd	_525
	dd	544
	dd	3
	align	4
_2407:
	dd	_525
	dd	545
	dd	3
	align	4
_2417:
	dd	_525
	dd	546
	dd	3
	align	4
_2427:
	dd	_525
	dd	548
	dd	3
	align	4
_2506:
	dd	3
	dd	0
	dd	2
	dd	_344
	dd	_313
	dd	-192
	dd	0
	align	4
_2430:
	dd	_525
	dd	549
	dd	4
_2494:
	db	"use",0
_2495:
	db	"pos",0
_2496:
	db	"neg",0
_2497:
	db	"fromx",0
_2498:
	db	"tox",0
_2499:
	db	"fromy",0
_2500:
	db	"toy",0
_2501:
	db	"flipx",0
_2502:
	db	"flipy",0
_2503:
	db	"turn90",0
_2504:
	db	"turn45",0
_2505:
	db	"invert",0
	align	4
_2493:
	dd	3
	dd	0
	dd	2
	dd	_342
	dd	_313
	dd	-196
	dd	2
	dd	_2494
	dd	_313
	dd	-200
	dd	2
	dd	_2495
	dd	_313
	dd	-204
	dd	2
	dd	_2496
	dd	_313
	dd	-208
	dd	2
	dd	_2497
	dd	_313
	dd	-212
	dd	2
	dd	_2498
	dd	_313
	dd	-216
	dd	2
	dd	_2499
	dd	_313
	dd	-220
	dd	2
	dd	_2500
	dd	_313
	dd	-224
	dd	2
	dd	_2501
	dd	_313
	dd	-228
	dd	2
	dd	_2502
	dd	_313
	dd	-232
	dd	2
	dd	_2503
	dd	_313
	dd	-236
	dd	2
	dd	_2504
	dd	_313
	dd	-240
	dd	2
	dd	_2505
	dd	_313
	dd	-244
	dd	0
	align	4
_2433:
	dd	_525
	dd	550
	dd	5
	align	4
_2446:
	dd	_525
	dd	552
	dd	5
	align	4
_2447:
	dd	_525
	dd	552
	dd	14
	align	4
_2448:
	dd	_525
	dd	552
	dd	24
	align	4
_2449:
	dd	_525
	dd	553
	dd	5
	align	4
_2450:
	dd	_525
	dd	553
	dd	17
	align	4
_2451:
	dd	_525
	dd	553
	dd	28
	align	4
_2452:
	dd	_525
	dd	553
	dd	40
	align	4
_2453:
	dd	_525
	dd	554
	dd	5
	align	4
_2458:
	dd	_525
	dd	554
	dd	48
	align	4
_2463:
	dd	_525
	dd	555
	dd	5
	align	4
_2468:
	dd	_525
	dd	555
	dd	49
	align	4
_2473:
	dd	_525
	dd	555
	dd	93
	align	4
_2478:
	dd	_525
	dd	557
	dd	5
	align	4
_2507:
	dd	_525
	dd	561
	dd	3
	align	4
_2574:
	dd	3
	dd	0
	dd	2
	dd	_344
	dd	_313
	dd	-248
	dd	0
	align	4
_2510:
	dd	_525
	dd	562
	dd	4
	align	4
_2573:
	dd	3
	dd	0
	dd	2
	dd	_342
	dd	_313
	dd	-252
	dd	2
	dd	_2494
	dd	_313
	dd	-256
	dd	2
	dd	_2495
	dd	_313
	dd	-260
	dd	2
	dd	_2496
	dd	_313
	dd	-264
	dd	2
	dd	_2497
	dd	_313
	dd	-268
	dd	2
	dd	_2498
	dd	_313
	dd	-272
	dd	2
	dd	_2499
	dd	_313
	dd	-276
	dd	2
	dd	_2500
	dd	_313
	dd	-280
	dd	2
	dd	_2501
	dd	_313
	dd	-284
	dd	2
	dd	_2502
	dd	_313
	dd	-288
	dd	2
	dd	_2503
	dd	_313
	dd	-292
	dd	2
	dd	_2504
	dd	_313
	dd	-296
	dd	2
	dd	_2505
	dd	_313
	dd	-300
	dd	0
	align	4
_2513:
	dd	_525
	dd	563
	dd	5
	align	4
_2526:
	dd	_525
	dd	565
	dd	5
	align	4
_2527:
	dd	_525
	dd	565
	dd	14
	align	4
_2528:
	dd	_525
	dd	565
	dd	24
	align	4
_2529:
	dd	_525
	dd	566
	dd	5
	align	4
_2530:
	dd	_525
	dd	566
	dd	17
	align	4
_2531:
	dd	_525
	dd	566
	dd	28
	align	4
_2532:
	dd	_525
	dd	566
	dd	40
	align	4
_2533:
	dd	_525
	dd	567
	dd	5
	align	4
_2538:
	dd	_525
	dd	567
	dd	48
	align	4
_2543:
	dd	_525
	dd	568
	dd	5
	align	4
_2548:
	dd	_525
	dd	568
	dd	49
	align	4
_2553:
	dd	_525
	dd	568
	dd	93
	align	4
_2558:
	dd	_525
	dd	570
	dd	5
	align	4
_2575:
	dd	_525
	dd	575
	dd	3
	align	4
_2642:
	dd	3
	dd	0
	dd	2
	dd	_344
	dd	_313
	dd	-304
	dd	0
	align	4
_2578:
	dd	_525
	dd	576
	dd	4
	align	4
_2641:
	dd	3
	dd	0
	dd	2
	dd	_342
	dd	_313
	dd	-308
	dd	2
	dd	_2494
	dd	_313
	dd	-312
	dd	2
	dd	_2495
	dd	_313
	dd	-316
	dd	2
	dd	_2496
	dd	_313
	dd	-320
	dd	2
	dd	_2497
	dd	_313
	dd	-324
	dd	2
	dd	_2498
	dd	_313
	dd	-328
	dd	2
	dd	_2499
	dd	_313
	dd	-332
	dd	2
	dd	_2500
	dd	_313
	dd	-336
	dd	2
	dd	_2501
	dd	_313
	dd	-340
	dd	2
	dd	_2502
	dd	_313
	dd	-344
	dd	2
	dd	_2503
	dd	_313
	dd	-348
	dd	2
	dd	_2504
	dd	_313
	dd	-352
	dd	2
	dd	_2505
	dd	_313
	dd	-356
	dd	0
	align	4
_2581:
	dd	_525
	dd	577
	dd	5
	align	4
_2594:
	dd	_525
	dd	579
	dd	5
	align	4
_2595:
	dd	_525
	dd	579
	dd	14
	align	4
_2596:
	dd	_525
	dd	579
	dd	24
	align	4
_2597:
	dd	_525
	dd	580
	dd	5
	align	4
_2598:
	dd	_525
	dd	580
	dd	17
	align	4
_2599:
	dd	_525
	dd	580
	dd	28
	align	4
_2600:
	dd	_525
	dd	580
	dd	40
	align	4
_2601:
	dd	_525
	dd	581
	dd	5
	align	4
_2606:
	dd	_525
	dd	581
	dd	48
	align	4
_2611:
	dd	_525
	dd	582
	dd	5
	align	4
_2616:
	dd	_525
	dd	582
	dd	49
	align	4
_2621:
	dd	_525
	dd	582
	dd	93
	align	4
_2626:
	dd	_525
	dd	584
	dd	5
	align	4
_2643:
	dd	_525
	dd	588
	dd	3
	align	4
_2710:
	dd	3
	dd	0
	dd	2
	dd	_344
	dd	_313
	dd	-360
	dd	0
	align	4
_2646:
	dd	_525
	dd	589
	dd	4
	align	4
_2709:
	dd	3
	dd	0
	dd	2
	dd	_342
	dd	_313
	dd	-364
	dd	2
	dd	_2494
	dd	_313
	dd	-368
	dd	2
	dd	_2495
	dd	_313
	dd	-372
	dd	2
	dd	_2496
	dd	_313
	dd	-376
	dd	2
	dd	_2497
	dd	_313
	dd	-380
	dd	2
	dd	_2498
	dd	_313
	dd	-384
	dd	2
	dd	_2499
	dd	_313
	dd	-388
	dd	2
	dd	_2500
	dd	_313
	dd	-392
	dd	2
	dd	_2501
	dd	_313
	dd	-396
	dd	2
	dd	_2502
	dd	_313
	dd	-400
	dd	2
	dd	_2503
	dd	_313
	dd	-404
	dd	2
	dd	_2504
	dd	_313
	dd	-408
	dd	2
	dd	_2505
	dd	_313
	dd	-412
	dd	0
	align	4
_2649:
	dd	_525
	dd	590
	dd	5
	align	4
_2662:
	dd	_525
	dd	592
	dd	5
	align	4
_2663:
	dd	_525
	dd	592
	dd	14
	align	4
_2664:
	dd	_525
	dd	592
	dd	24
	align	4
_2665:
	dd	_525
	dd	593
	dd	5
	align	4
_2666:
	dd	_525
	dd	593
	dd	17
	align	4
_2667:
	dd	_525
	dd	593
	dd	28
	align	4
_2668:
	dd	_525
	dd	593
	dd	40
	align	4
_2669:
	dd	_525
	dd	594
	dd	5
	align	4
_2674:
	dd	_525
	dd	594
	dd	48
	align	4
_2679:
	dd	_525
	dd	595
	dd	5
	align	4
_2684:
	dd	_525
	dd	595
	dd	49
	align	4
_2689:
	dd	_525
	dd	595
	dd	93
	align	4
_2694:
	dd	_525
	dd	597
	dd	5
	align	4
_2711:
	dd	_525
	dd	601
	dd	3
	align	4
_2715:
	dd	_525
	dd	602
	dd	3
	align	4
_2720:
	dd	_525
	dd	603
	dd	3
	align	4
_2728:
	dd	_525
	dd	605
	dd	3
	align	4
_2738:
	dd	_525
	dd	606
	dd	3
	align	4
_2748:
	dd	_525
	dd	607
	dd	3
	align	4
_2758:
	dd	_525
	dd	608
	dd	3
	align	4
_2768:
	dd	_525
	dd	610
	dd	3
	align	4
_2778:
	dd	_525
	dd	611
	dd	3
	align	4
_2788:
	dd	_525
	dd	612
	dd	3
	align	4
_2798:
	dd	_525
	dd	613
	dd	3
	align	4
_2808:
	dd	_525
	dd	615
	dd	3
	align	4
_2818:
	dd	_525
	dd	616
	dd	3
	align	4
_2828:
	dd	_525
	dd	617
	dd	3
	align	4
_2838:
	dd	_525
	dd	618
	dd	3
	align	4
_2848:
	dd	_525
	dd	620
	dd	3
	align	4
_2858:
	dd	_525
	dd	621
	dd	3
	align	4
_2868:
	dd	_525
	dd	622
	dd	3
	align	4
_2878:
	dd	_525
	dd	623
	dd	3
	align	4
_2888:
	dd	_525
	dd	624
	dd	3
	align	4
_2891:
	dd	_525
	dd	627
	dd	2
	align	4
_2892:
	dd	_525
	dd	628
	dd	2
	align	4
_2895:
	dd	3
	dd	0
	dd	0
	align	4
_2894:
	dd	_525
	dd	628
	dd	22
_2985:
	db	"Self",0
	align	4
_2984:
	dd	1
	dd	_332
	dd	2
	dd	_2985
	dd	_315
	dd	-4
	dd	0
_2974:
	db	":Ttextur",0
	align	4
_2983:
	dd	3
	dd	0
	dd	0
_3008:
	db	":Ttexgroup",0
	align	4
_3007:
	dd	1
	dd	_332
	dd	2
	dd	_2985
	dd	_3008
	dd	-4
	dd	0
	align	4
_3006:
	dd	3
	dd	0
	dd	0
	align	4
_3021:
	dd	1
	dd	_332
	dd	2
	dd	_2985
	dd	_347
	dd	-4
	dd	0
_3017:
	db	"f",0
	align	4
_3020:
	dd	3
	dd	0
	dd	0
_3055:
	db	"DrawPicture",0
_3056:
	db	"bild",0
_3057:
	db	":brl.max2d.Timage",0
_3058:
	db	"width",0
_3059:
	db	"height",0
_3060:
	db	"nowscale_X",0
_3061:
	db	"nowscale_Y",0
_3062:
	db	"nowhandle_X",0
_3063:
	db	"nowhandle_Y",0
_3064:
	db	"factorx",0
_3065:
	db	"factory",0
_3066:
	db	"entferung",0
_3067:
	db	"winkel",0
	align	4
_3054:
	dd	1
	dd	_3055
	dd	2
	dd	_3056
	dd	_3057
	dd	-4
	dd	2
	dd	_342
	dd	_343
	dd	-8
	dd	2
	dd	_344
	dd	_343
	dd	-12
	dd	2
	dd	_3058
	dd	_343
	dd	-16
	dd	2
	dd	_3059
	dd	_343
	dd	-20
	dd	2
	dd	_3060
	dd	_343
	dd	-24
	dd	2
	dd	_3061
	dd	_343
	dd	-28
	dd	2
	dd	_3062
	dd	_343
	dd	-32
	dd	2
	dd	_3063
	dd	_343
	dd	-36
	dd	2
	dd	_3064
	dd	_343
	dd	-40
	dd	2
	dd	_3065
	dd	_343
	dd	-44
	dd	2
	dd	_3066
	dd	_343
	dd	-48
	dd	2
	dd	_3067
	dd	_343
	dd	-52
	dd	0
	align	4
_3029:
	dd	_706
	dd	2
	dd	2
	align	4
_3031:
	dd	_706
	dd	3
	dd	2
	align	4
_3033:
	dd	_706
	dd	4
	dd	2
	align	4
_3034:
	dd	_706
	dd	6
	dd	2
	align	4
_3036:
	dd	_706
	dd	7
	dd	2
	align	4
_3038:
	dd	_706
	dd	8
	dd	2
	align	4
_3039:
	dd	_706
	dd	10
	dd	2
	align	4
_3043:
	dd	_706
	dd	11
	dd	2
	align	4
_3047:
	dd	_706
	dd	13
	dd	2
	align	4
_3048:
	dd	_706
	dd	16
	dd	2
	align	8
_6320:
	dd	0x0,0x40000000
	align	8
_6321:
	dd	0x0,0x40000000
	align	4
_3050:
	dd	_706
	dd	17
	dd	2
	align	8
_6322:
	dd	0x0,0x40668000
	align	4
_3052:
	dd	_706
	dd	19
	dd	2
	align	4
_3053:
	dd	_706
	dd	21
	dd	2
_3089:
	db	"PushCollision",0
_3090:
	db	"x1",0
_3091:
	db	"y1",0
_3092:
	db	"size1",0
_3093:
	db	"x2",0
_3094:
	db	"y2",0
_3095:
	db	"size2",0
_3096:
	db	"festergegenstend2",0
	align	4
_3088:
	dd	1
	dd	_3089
	dd	5
	dd	_3090
	dd	_343
	dd	-8
	dd	5
	dd	_3091
	dd	_343
	dd	-12
	dd	2
	dd	_3092
	dd	_343
	dd	-16
	dd	5
	dd	_3093
	dd	_343
	dd	-20
	dd	5
	dd	_3094
	dd	_343
	dd	-24
	dd	2
	dd	_3095
	dd	_343
	dd	-28
	dd	2
	dd	_3096
	dd	_323
	dd	-4
	dd	2
	dd	_3066
	dd	_343
	dd	-32
	dd	0
	align	4
_3068:
	dd	_706
	dd	25
	dd	2
	align	8
_6327:
	dd	0x0,0x40000000
	align	8
_6328:
	dd	0x0,0x40000000
	align	4
_3070:
	dd	_706
	dd	26
	dd	2
	align	4
_6329:
	dd	0x40000000
	align	4
_3071:
	dd	_706
	dd	27
	dd	2
	align	4
_6330:
	dd	0x40000000
	align	4
_3072:
	dd	_706
	dd	28
	dd	2
	align	4
_3087:
	dd	3
	dd	0
	dd	2
	dd	_3067
	dd	_343
	dd	-36
	dd	0
	align	4
_3074:
	dd	_706
	dd	29
	dd	3
	align	4
_6331:
	dd	0x42b40000
	align	4
_3076:
	dd	_706
	dd	31
	dd	3
	align	4
_3080:
	dd	3
	dd	0
	dd	0
	align	4
_3078:
	dd	_706
	dd	32
	dd	4
	align	4
_3079:
	dd	_706
	dd	33
	dd	4
	align	4
_3086:
	dd	3
	dd	0
	dd	0
	align	4
_3082:
	dd	_706
	dd	35
	dd	4
	align	4
_6332:
	dd	0x40000000
	align	4
_3083:
	dd	_706
	dd	36
	dd	4
	align	4
_6333:
	dd	0x40000000
	align	4
_3084:
	dd	_706
	dd	37
	dd	4
	align	4
_6334:
	dd	0x43340000
	align	4
_6335:
	dd	0x40000000
	align	4
_3085:
	dd	_706
	dd	38
	dd	4
	align	4
_6336:
	dd	0x43340000
	align	4
_6337:
	dd	0x40000000
_3553:
	db	"PushTank",0
_3554:
	db	"r1",0
_3555:
	db	"s1",0
_3556:
	db	"r2",0
_3557:
	db	"s2",0
	align	4
_3552:
	dd	1
	dd	_3553
	dd	5
	dd	_3090
	dd	_343
	dd	-4
	dd	5
	dd	_3091
	dd	_343
	dd	-8
	dd	5
	dd	_3554
	dd	_343
	dd	-12
	dd	5
	dd	_3555
	dd	_343
	dd	-16
	dd	5
	dd	_3093
	dd	_343
	dd	-20
	dd	5
	dd	_3094
	dd	_343
	dd	-24
	dd	5
	dd	_3556
	dd	_343
	dd	-28
	dd	5
	dd	_3557
	dd	_343
	dd	-32
	dd	2
	dd	_3066
	dd	_343
	dd	-36
	dd	0
	align	4
_3097:
	dd	_706
	dd	44
	dd	2
	align	8
_6342:
	dd	0x0,0x40000000
	align	8
_6343:
	dd	0x0,0x40000000
	align	4
_3099:
	dd	_706
	dd	45
	dd	2
	align	4
_6344:
	dd	0x42a00000
_3537:
	db	"scalexxx",0
_3538:
	db	"ballsize",0
_3539:
	db	"tmp1",0
_3540:
	db	"[,]f",0
_3541:
	db	"da1",0
_3542:
	db	"tmp2",0
_3543:
	db	"da2",0
_3544:
	db	"tmpr1",0
_3545:
	db	"tmpr2",0
_3546:
	db	"totalvx1",0
_3547:
	db	"totalvy1",0
_3548:
	db	"totalvx2",0
_3549:
	db	"totalvy2",0
_3550:
	db	"vwinkel1",0
_3551:
	db	"vwinkel2",0
	align	4
_3536:
	dd	3
	dd	0
	dd	2
	dd	_3537
	dd	_343
	dd	-40
	dd	2
	dd	_3538
	dd	_343
	dd	-44
	dd	2
	dd	_3539
	dd	_3540
	dd	-48
	dd	2
	dd	_3541
	dd	_313
	dd	-52
	dd	2
	dd	_3542
	dd	_3540
	dd	-56
	dd	2
	dd	_3543
	dd	_313
	dd	-60
	dd	2
	dd	_3544
	dd	_3540
	dd	-64
	dd	2
	dd	_3545
	dd	_3540
	dd	-68
	dd	2
	dd	_3546
	dd	_343
	dd	-72
	dd	2
	dd	_3547
	dd	_343
	dd	-76
	dd	2
	dd	_3548
	dd	_343
	dd	-80
	dd	2
	dd	_3549
	dd	_343
	dd	-84
	dd	2
	dd	_3550
	dd	_343
	dd	-88
	dd	2
	dd	_3551
	dd	_343
	dd	-92
	dd	0
	align	4
_3101:
	dd	_706
	dd	47
	dd	3
	align	4
_6345:
	dd	0x3f19999a
	align	4
_3103:
	dd	_706
	dd	48
	dd	3
	align	4
_6346:
	dd	0x42200000
	align	4
_3105:
	dd	_706
	dd	50
	dd	3
_3106:
	db	"f",0
	align	4
_3109:
	dd	_706
	dd	51
	dd	3
_3110:
	db	"f",0
	align	4
_3113:
	dd	_706
	dd	53
	dd	3
_3114:
	db	"f",0
	align	4
_3116:
	dd	_706
	dd	54
	dd	3
_3117:
	db	"f",0
	align	4
_3119:
	dd	_706
	dd	56
	dd	3
_3150:
	db	"ax1",0
	align	4
_3149:
	dd	3
	dd	0
	dd	2
	dd	_3150
	dd	_313
	dd	-96
	dd	0
	align	4
_3122:
	dd	_706
	dd	57
	dd	4
_3147:
	db	"ay1",0
_3148:
	db	"winkel4",0
	align	4
_3146:
	dd	3
	dd	0
	dd	2
	dd	_3147
	dd	_313
	dd	-100
	dd	2
	dd	_3148
	dd	_343
	dd	-104
	dd	0
	align	4
_3125:
	dd	_706
	dd	58
	dd	5
	align	4
_3130:
	dd	3
	dd	0
	dd	0
	align	4
_3129:
	dd	_706
	dd	58
	dd	33
	align	4
_3131:
	dd	_706
	dd	59
	dd	5
	align	4
_3132:
	dd	_706
	dd	60
	dd	5
	align	4
_6347:
	dd	0x42b40000
	align	4
_3134:
	dd	_706
	dd	61
	dd	5
	align	8
_6348:
	dd	0x0,0x40000000
	align	8
_6349:
	dd	0x0,0x40000000
	align	4
_3140:
	dd	_706
	dd	62
	dd	5
	align	8
_6350:
	dd	0x0,0x40000000
	align	8
_6351:
	dd	0x0,0x40000000
	align	4
_3151:
	dd	_706
	dd	65
	dd	3
	align	4
_3152:
	dd	_706
	dd	67
	dd	3
_3183:
	db	"ax2",0
	align	4
_3182:
	dd	3
	dd	0
	dd	2
	dd	_3183
	dd	_313
	dd	-108
	dd	0
	align	4
_3155:
	dd	_706
	dd	68
	dd	4
_3180:
	db	"ay2",0
_3181:
	db	"winkel5",0
	align	4
_3179:
	dd	3
	dd	0
	dd	2
	dd	_3180
	dd	_313
	dd	-112
	dd	2
	dd	_3181
	dd	_343
	dd	-116
	dd	0
	align	4
_3158:
	dd	_706
	dd	69
	dd	5
	align	4
_3163:
	dd	3
	dd	0
	dd	0
	align	4
_3162:
	dd	_706
	dd	69
	dd	33
	align	4
_3164:
	dd	_706
	dd	70
	dd	5
	align	4
_3165:
	dd	_706
	dd	71
	dd	5
	align	4
_6352:
	dd	0x42b40000
	align	4
_3167:
	dd	_706
	dd	72
	dd	5
	align	8
_6353:
	dd	0x0,0x40000000
	align	8
_6354:
	dd	0x0,0x40000000
	align	4
_3173:
	dd	_706
	dd	73
	dd	5
	align	8
_6355:
	dd	0x0,0x40000000
	align	8
_6356:
	dd	0x0,0x40000000
	align	4
_3184:
	dd	_706
	dd	76
	dd	3
	align	4
_3185:
	dd	_706
	dd	78
	dd	3
	align	4
_3232:
	dd	3
	dd	0
	dd	2
	dd	_3150
	dd	_313
	dd	-120
	dd	0
	align	4
_3188:
	dd	_706
	dd	79
	dd	4
	align	4
_3231:
	dd	3
	dd	0
	dd	2
	dd	_3147
	dd	_313
	dd	-124
	dd	0
	align	4
_3191:
	dd	_706
	dd	80
	dd	5
	align	4
_3196:
	dd	3
	dd	0
	dd	0
	align	4
_3195:
	dd	_706
	dd	80
	dd	33
	align	4
_3197:
	dd	_706
	dd	81
	dd	5
	align	4
_3198:
	dd	_706
	dd	82
	dd	5
	align	4
_3229:
	dd	3
	dd	0
	dd	2
	dd	_3183
	dd	_313
	dd	-128
	dd	0
	align	4
_3201:
	dd	_706
	dd	83
	dd	6
	align	4
_3228:
	dd	3
	dd	0
	dd	2
	dd	_3180
	dd	_313
	dd	-132
	dd	0
	align	4
_3204:
	dd	_706
	dd	84
	dd	7
	align	4
_3209:
	dd	3
	dd	0
	dd	0
	align	4
_3208:
	dd	_706
	dd	84
	dd	35
	align	4
_3210:
	dd	_706
	dd	85
	dd	7
	align	4
_3211:
	dd	_706
	dd	86
	dd	7
	align	4
_3230:
	dd	_706
	dd	89
	dd	5
	align	4
_3233:
	dd	_706
	dd	92
	dd	3
	align	4
_3234:
	dd	_706
	dd	94
	dd	3
	align	4
_3328:
	dd	3
	dd	0
	dd	2
	dd	_3150
	dd	_313
	dd	-136
	dd	0
	align	4
_3237:
	dd	_706
	dd	95
	dd	4
	align	4
_3327:
	dd	3
	dd	0
	dd	2
	dd	_3147
	dd	_313
	dd	-140
	dd	0
	align	4
_3240:
	dd	_706
	dd	96
	dd	5
	align	4
_3245:
	dd	3
	dd	0
	dd	0
	align	4
_3244:
	dd	_706
	dd	96
	dd	33
	align	4
_3246:
	dd	_706
	dd	97
	dd	5
	align	4
_3247:
	dd	_706
	dd	98
	dd	5
	align	4
_3325:
	dd	3
	dd	0
	dd	2
	dd	_3183
	dd	_313
	dd	-144
	dd	0
	align	4
_3250:
	dd	_706
	dd	99
	dd	6
_3323:
	db	"entferung5",0
_3324:
	db	"entferung6",0
	align	4
_3322:
	dd	3
	dd	0
	dd	2
	dd	_3180
	dd	_313
	dd	-148
	dd	2
	dd	_3323
	dd	_343
	dd	-152
	dd	2
	dd	_3324
	dd	_343
	dd	-156
	dd	0
	align	4
_3253:
	dd	_706
	dd	100
	dd	7
	align	4
_3258:
	dd	3
	dd	0
	dd	0
	align	4
_3257:
	dd	_706
	dd	100
	dd	35
	align	4
_3259:
	dd	_706
	dd	101
	dd	7
	align	4
_3260:
	dd	_706
	dd	102
	dd	7
	align	8
_6357:
	dd	0x0,0x40000000
	align	8
_6358:
	dd	0x0,0x40000000
	align	4
_3262:
	dd	_706
	dd	103
	dd	7
	align	8
_6359:
	dd	0x0,0x40000000
	align	8
_6360:
	dd	0x0,0x40000000
	align	4
_3264:
	dd	_706
	dd	105
	dd	7
	align	4
_3270:
	dd	_706
	dd	105
	dd	28
	align	4
_3276:
	dd	_706
	dd	106
	dd	7
	align	4
_3282:
	dd	_706
	dd	106
	dd	28
	align	4
_3288:
	dd	_706
	dd	108
	dd	7
	align	4
_3305:
	dd	_706
	dd	109
	dd	7
	align	4
_3326:
	dd	_706
	dd	112
	dd	5
	align	4
_3329:
	dd	_706
	dd	115
	dd	3
	align	4
_3330:
	dd	_706
	dd	117
	dd	3
	align	4
_3333:
	dd	_706
	dd	118
	dd	3
	align	4
_3357:
	dd	3
	dd	0
	dd	2
	dd	_3150
	dd	_313
	dd	-160
	dd	0
	align	4
_3336:
	dd	_706
	dd	119
	dd	4
	align	4
_3356:
	dd	3
	dd	0
	dd	2
	dd	_3147
	dd	_313
	dd	-164
	dd	0
	align	4
_3339:
	dd	_706
	dd	120
	dd	5
	align	4
_3344:
	dd	3
	dd	0
	dd	0
	align	4
_3343:
	dd	_706
	dd	120
	dd	33
	align	4
_3345:
	dd	_706
	dd	121
	dd	5
	align	4
_3346:
	dd	_706
	dd	122
	dd	5
	align	4
_3351:
	dd	_706
	dd	123
	dd	5
	align	4
_3358:
	dd	_706
	dd	126
	dd	3
	align	4
_3359:
	dd	_706
	dd	127
	dd	3
	align	4
_3360:
	dd	_706
	dd	128
	dd	3
	align	4
_3361:
	dd	_706
	dd	129
	dd	3
	align	4
_3362:
	dd	_706
	dd	130
	dd	3
	align	4
_3363:
	dd	_706
	dd	133
	dd	3
	align	4
_3366:
	dd	_706
	dd	134
	dd	3
	align	4
_3390:
	dd	3
	dd	0
	dd	2
	dd	_3183
	dd	_313
	dd	-168
	dd	0
	align	4
_3369:
	dd	_706
	dd	135
	dd	4
	align	4
_3389:
	dd	3
	dd	0
	dd	2
	dd	_3180
	dd	_313
	dd	-172
	dd	0
	align	4
_3372:
	dd	_706
	dd	136
	dd	5
	align	4
_3377:
	dd	3
	dd	0
	dd	0
	align	4
_3376:
	dd	_706
	dd	136
	dd	33
	align	4
_3378:
	dd	_706
	dd	137
	dd	5
	align	4
_3379:
	dd	_706
	dd	138
	dd	5
	align	4
_3384:
	dd	_706
	dd	139
	dd	5
	align	4
_3391:
	dd	_706
	dd	142
	dd	3
	align	4
_3392:
	dd	_706
	dd	143
	dd	3
	align	4
_3393:
	dd	_706
	dd	144
	dd	3
	align	4
_3394:
	dd	_706
	dd	145
	dd	3
	align	4
_3395:
	dd	_706
	dd	146
	dd	3
	align	4
_3396:
	dd	_706
	dd	182
	dd	3
	align	4
_3398:
	dd	_706
	dd	183
	dd	3
	align	4
_3465:
	dd	3
	dd	0
	dd	2
	dd	_3150
	dd	_313
	dd	-176
	dd	0
	align	4
_3401:
	dd	_706
	dd	184
	dd	4
_3461:
	db	"winkel2",0
_3462:
	db	"winkel3",0
_3463:
	db	"totalwinkel",0
_3464:
	db	"entferung2",0
	align	4
_3460:
	dd	3
	dd	0
	dd	2
	dd	_3147
	dd	_313
	dd	-180
	dd	2
	dd	_3461
	dd	_343
	dd	-184
	dd	2
	dd	_3462
	dd	_343
	dd	-188
	dd	2
	dd	_3463
	dd	_343
	dd	-192
	dd	2
	dd	_3464
	dd	_343
	dd	-196
	dd	0
	align	4
_3404:
	dd	_706
	dd	185
	dd	5
	align	4
_3409:
	dd	3
	dd	0
	dd	0
	align	4
_3408:
	dd	_706
	dd	185
	dd	33
	align	4
_3410:
	dd	_706
	dd	186
	dd	5
	align	4
_3411:
	dd	_706
	dd	187
	dd	5
	align	4
_6361:
	dd	0x42b40000
	align	4
_3421:
	dd	_706
	dd	188
	dd	5
	align	4
_6362:
	dd	0x42b40000
	align	4
_3423:
	dd	_706
	dd	189
	dd	5
	align	4
_6363:
	dd	0x43340000
	align	4
_3425:
	dd	_706
	dd	190
	dd	5
	align	4
_3427:
	dd	3
	dd	0
	dd	0
	align	4
_3426:
	dd	_706
	dd	191
	dd	6
	align	4
_6364:
	dd	0x43b40000
	align	4
_6365:
	dd	0xc3340000
	align	4
_3428:
	dd	_706
	dd	193
	dd	5
	align	4
_3430:
	dd	3
	dd	0
	dd	0
	align	4
_3429:
	dd	_706
	dd	194
	dd	6
	align	4
_6366:
	dd	0x43b40000
	align	4
_6367:
	dd	0x43340000
	align	4
_3431:
	dd	_706
	dd	197
	dd	5
	align	4
_3448:
	dd	3
	dd	0
	dd	0
	align	4
_3447:
	dd	_706
	dd	197
	dd	114
	align	4
_3449:
	dd	_706
	dd	198
	dd	5
	align	8
_6368:
	dd	0x0,0x40000000
	align	8
_6369:
	dd	0x0,0x40000000
	align	4
_3451:
	dd	_706
	dd	199
	dd	5
	align	8
_6370:
	dd	0x0,0x40000000
	align	8
_6371:
	dd	0x0,0x40000000
	align	4
_3466:
	dd	_706
	dd	203
	dd	3
	align	4
_3467:
	dd	_706
	dd	206
	dd	3
	align	4
_3468:
	dd	_706
	dd	209
	dd	3
	align	4
_3470:
	dd	_706
	dd	210
	dd	3
	align	4
_3533:
	dd	3
	dd	0
	dd	2
	dd	_3183
	dd	_313
	dd	-200
	dd	0
	align	4
_3473:
	dd	_706
	dd	211
	dd	4
	align	4
_3532:
	dd	3
	dd	0
	dd	2
	dd	_3180
	dd	_313
	dd	-204
	dd	2
	dd	_3461
	dd	_343
	dd	-208
	dd	2
	dd	_3462
	dd	_343
	dd	-212
	dd	2
	dd	_3463
	dd	_343
	dd	-216
	dd	2
	dd	_3464
	dd	_343
	dd	-220
	dd	0
	align	4
_3476:
	dd	_706
	dd	212
	dd	5
	align	4
_3481:
	dd	3
	dd	0
	dd	0
	align	4
_3480:
	dd	_706
	dd	212
	dd	33
	align	4
_3482:
	dd	_706
	dd	213
	dd	5
	align	4
_3483:
	dd	_706
	dd	214
	dd	5
	align	4
_6372:
	dd	0x42b40000
	align	4
_3493:
	dd	_706
	dd	215
	dd	5
	align	4
_6373:
	dd	0x42b40000
	align	4
_3495:
	dd	_706
	dd	216
	dd	5
	align	4
_6374:
	dd	0x43340000
	align	4
_3497:
	dd	_706
	dd	217
	dd	5
	align	4
_3499:
	dd	3
	dd	0
	dd	0
	align	4
_3498:
	dd	_706
	dd	218
	dd	6
	align	4
_6375:
	dd	0x43b40000
	align	4
_6376:
	dd	0xc3340000
	align	4
_3500:
	dd	_706
	dd	220
	dd	5
	align	4
_3502:
	dd	3
	dd	0
	dd	0
	align	4
_3501:
	dd	_706
	dd	221
	dd	6
	align	4
_6377:
	dd	0x43b40000
	align	4
_6378:
	dd	0x43340000
	align	4
_3503:
	dd	_706
	dd	224
	dd	5
	align	4
_3520:
	dd	3
	dd	0
	dd	0
	align	4
_3519:
	dd	_706
	dd	224
	dd	114
	align	4
_3521:
	dd	_706
	dd	225
	dd	5
	align	8
_6379:
	dd	0x0,0x40000000
	align	8
_6380:
	dd	0x0,0x40000000
	align	4
_3523:
	dd	_706
	dd	226
	dd	5
	align	8
_6381:
	dd	0x0,0x40000000
	align	8
_6382:
	dd	0x0,0x40000000
	align	4
_3534:
	dd	_706
	dd	230
	dd	3
	align	4
_3535:
	dd	_706
	dd	233
	dd	3
_3585:
	db	"BufferTower",0
_3586:
	db	"turmwinkel",0
_3587:
	db	"zielwinkel",0
_3588:
	db	"drehspeed",0
_3589:
	db	"bufftore",0
_3590:
	db	"test",0
	align	4
_3584:
	dd	1
	dd	_3585
	dd	2
	dd	_3586
	dd	_343
	dd	-4
	dd	2
	dd	_3587
	dd	_343
	dd	-8
	dd	2
	dd	_3588
	dd	_343
	dd	-12
	dd	2
	dd	_3463
	dd	_343
	dd	-16
	dd	2
	dd	_3589
	dd	_343
	dd	-20
	dd	2
	dd	_3590
	dd	_313
	dd	-24
	dd	0
	align	4
_3558:
	dd	_706
	dd	271
	dd	2
	align	4
_6496:
	dd	0x43340000
	align	4
_3560:
	dd	_706
	dd	272
	dd	2
	align	4
_3562:
	dd	3
	dd	0
	dd	0
	align	4
_3561:
	dd	_706
	dd	273
	dd	3
	align	4
_6497:
	dd	0x43b40000
	align	4
_6498:
	dd	0xc3340000
	align	4
_3563:
	dd	_706
	dd	275
	dd	2
	align	4
_3565:
	dd	3
	dd	0
	dd	0
	align	4
_3564:
	dd	_706
	dd	276
	dd	3
	align	4
_6499:
	dd	0x43b40000
	align	4
_6500:
	dd	0x43340000
	align	4
_3566:
	dd	_706
	dd	278
	dd	2
	align	4
_3569:
	dd	_706
	dd	279
	dd	2
	align	4
_3573:
	dd	3
	dd	0
	dd	0
	align	4
_3571:
	dd	_706
	dd	279
	dd	34
	align	4
_3572:
	dd	_706
	dd	279
	dd	58
	align	4
_3574:
	dd	_706
	dd	280
	dd	2
	align	4
_3578:
	dd	3
	dd	0
	dd	0
	align	4
_3576:
	dd	_706
	dd	280
	dd	36
	align	4
_3577:
	dd	_706
	dd	280
	dd	59
	align	4
_3579:
	dd	_706
	dd	281
	dd	2
	align	4
_3582:
	dd	3
	dd	0
	dd	0
	align	4
_3581:
	dd	_706
	dd	281
	dd	19
	align	4
_3583:
	dd	_706
	dd	282
	dd	2
_3616:
	db	"BufferTarget",0
_3617:
	db	"drehschalter",0
	align	4
_3615:
	dd	1
	dd	_3616
	dd	2
	dd	_3586
	dd	_343
	dd	-4
	dd	2
	dd	_3587
	dd	_343
	dd	-8
	dd	2
	dd	_3617
	dd	_343
	dd	-12
	dd	2
	dd	_3463
	dd	_343
	dd	-16
	dd	2
	dd	_3589
	dd	_343
	dd	-20
	dd	2
	dd	_3590
	dd	_313
	dd	-24
	dd	0
	align	4
_3591:
	dd	_706
	dd	286
	dd	2
	align	4
_6508:
	dd	0x43340000
	align	4
_3593:
	dd	_706
	dd	287
	dd	2
	align	4
_3595:
	dd	3
	dd	0
	dd	0
	align	4
_3594:
	dd	_706
	dd	288
	dd	3
	align	4
_6509:
	dd	0x43b40000
	align	4
_6510:
	dd	0xc3340000
	align	4
_3596:
	dd	_706
	dd	290
	dd	2
	align	4
_3598:
	dd	3
	dd	0
	dd	0
	align	4
_3597:
	dd	_706
	dd	291
	dd	3
	align	4
_6511:
	dd	0x43b40000
	align	4
_6512:
	dd	0x43340000
	align	4
_3599:
	dd	_706
	dd	293
	dd	2
	align	4
_3602:
	dd	_706
	dd	294
	dd	2
	align	4
_3605:
	dd	3
	dd	0
	dd	0
	align	4
_3604:
	dd	_706
	dd	294
	dd	37
	align	4
_3606:
	dd	_706
	dd	295
	dd	2
	align	4
_3609:
	dd	3
	dd	0
	dd	0
	align	4
_3608:
	dd	_706
	dd	295
	dd	39
	align	4
_3610:
	dd	_706
	dd	296
	dd	2
	align	4
_3613:
	dd	3
	dd	0
	dd	0
	align	4
_3612:
	dd	_706
	dd	296
	dd	19
	align	4
_3614:
	dd	_706
	dd	297
	dd	2
_3628:
	db	"CalcWinkel",0
	align	4
_3627:
	dd	1
	dd	_3628
	dd	2
	dd	_342
	dd	_343
	dd	-4
	dd	2
	dd	_344
	dd	_343
	dd	-8
	dd	2
	dd	_3067
	dd	_343
	dd	-12
	dd	0
	align	4
_3618:
	dd	_706
	dd	301
	dd	2
	align	4
_3620:
	dd	_706
	dd	302
	dd	2
	align	4
_3622:
	dd	3
	dd	0
	dd	0
	align	4
_3621:
	dd	_706
	dd	303
	dd	3
	align	4
_6520:
	dd	0x43b40000
	align	4
_3623:
	dd	_706
	dd	305
	dd	2
	align	4
_3625:
	dd	3
	dd	0
	dd	0
	align	4
_3624:
	dd	_706
	dd	306
	dd	3
	align	4
_6521:
	dd	0x43b40000
	align	4
_6522:
	dd	0x43b40000
	align	4
_3626:
	dd	_706
	dd	308
	dd	2
_3749:
	db	"waypointtodest",0
_3750:
	db	"postition",0
_3751:
	db	"ziel",0
_3752:
	db	"foundwp",0
_3753:
	db	"enf84",0
_3754:
	db	"nr8",0
	align	4
_3748:
	dd	1
	dd	_3749
	dd	2
	dd	_3750
	dd	_347
	dd	-4
	dd	2
	dd	_3751
	dd	_347
	dd	-8
	dd	2
	dd	_3752
	dd	_347
	dd	-12
	dd	2
	dd	_3753
	dd	_343
	dd	-16
	dd	2
	dd	_3754
	dd	_313
	dd	-20
	dd	0
	align	4
_3629:
	dd	_706
	dd	312
	dd	2
	align	4
_3631:
	dd	_706
	dd	314
	dd	2
_3704:
	db	"eTwaypoint",0
	align	4
_3703:
	dd	3
	dd	0
	dd	2
	dd	_3704
	dd	_347
	dd	-24
	dd	0
	align	4
_3641:
	dd	_706
	dd	315
	dd	3
	align	4
_3645:
	dd	_706
	dd	316
	dd	3
	align	4
_3649:
	dd	_706
	dd	317
	dd	3
_3702:
	db	"nr3",0
	align	4
_3701:
	dd	3
	dd	0
	dd	2
	dd	_3702
	dd	_313
	dd	-28
	dd	0
	align	4
_3653:
	dd	_706
	dd	318
	dd	4
	align	4
_3657:
	dd	_706
	dd	319
	dd	4
	align	4
_3659:
	dd	_706
	dd	320
	dd	4
_3700:
	db	"entf55",0
	align	4
_3699:
	dd	3
	dd	0
	dd	2
	dd	_3700
	dd	_343
	dd	-32
	dd	0
	align	4
_3677:
	dd	_706
	dd	321
	dd	5
	align	8
_6527:
	dd	0x0,0x40000000
	align	8
_6528:
	dd	0x0,0x40000000
	align	4
_3691:
	dd	_706
	dd	322
	dd	5
	align	4
_3698:
	dd	_706
	dd	323
	dd	5
	align	4
_3705:
	dd	_706
	dd	328
	dd	2
	align	4
_3708:
	dd	3
	dd	0
	dd	0
	align	4
_3707:
	dd	_706
	dd	328
	dd	27
	align	4
_3709:
	dd	_706
	dd	330
	dd	2
	align	4
_3710:
	dd	_706
	dd	332
	dd	2
	align	4
_6529:
	dd	0x461c3c00
	align	4
_3713:
	dd	_706
	dd	333
	dd	2
	align	4
_3746:
	dd	3
	dd	0
	dd	0
	align	4
_3731:
	dd	_706
	dd	334
	dd	3
	align	4
_3745:
	dd	3
	dd	0
	dd	0
	align	4
_3737:
	dd	_706
	dd	335
	dd	4
	align	4
_3740:
	dd	_706
	dd	336
	dd	4
	align	4
_3747:
	dd	_706
	dd	340
	dd	2
_3931:
	db	"wayray",0
_3932:
	db	"dian",0
_3933:
	db	"nr40",0
_3934:
	db	"enf844",0
_3935:
	db	"best",0
	align	4
_3930:
	dd	1
	dd	_3931
	dd	2
	dd	_3751
	dd	_347
	dd	-4
	dd	2
	dd	_3932
	dd	_343
	dd	-8
	dd	2
	dd	_348
	dd	_349
	dd	-12
	dd	2
	dd	_3933
	dd	_313
	dd	-16
	dd	2
	dd	_3934
	dd	_343
	dd	-20
	dd	2
	dd	_3935
	dd	_313
	dd	-24
	dd	0
	align	4
_3755:
	dd	_706
	dd	344
	dd	2
	align	4
_3759:
	dd	_706
	dd	345
	dd	2
	align	4
_3765:
	dd	3
	dd	0
	dd	0
	align	4
_3761:
	dd	_706
	dd	345
	dd	19
	align	4
_3766:
	dd	_706
	dd	346
	dd	2
_3767:
	db	"f",0
	align	4
_3769:
	dd	_706
	dd	348
	dd	2
	align	4
_3771:
	dd	_706
	dd	349
	dd	2
	align	4
_3834:
	dd	3
	dd	0
	dd	0
	align	4
_3789:
	dd	_706
	dd	350
	dd	3
	align	4
_3832:
	dd	3
	dd	0
	dd	0
	align	4
_3800:
	dd	_706
	dd	351
	dd	4
	align	4
_3831:
	dd	3
	dd	0
	dd	0
	align	4
_3804:
	dd	_706
	dd	352
	dd	5
	align	4
_3815:
	dd	_706
	dd	353
	dd	5
	align	4
_3830:
	dd	3
	dd	0
	dd	0
	align	4
_3821:
	dd	_706
	dd	353
	dd	35
	align	4
_3833:
	dd	_706
	dd	356
	dd	3
	align	4
_3835:
	dd	_706
	dd	359
	dd	2
	align	4
_6570:
	dd	0x461c3c00
	align	4
_3838:
	dd	_706
	dd	360
	dd	2
_3855:
	db	"nr5",0
	align	4
_3854:
	dd	3
	dd	0
	dd	2
	dd	_3855
	dd	_313
	dd	-28
	dd	0
	align	4
_3841:
	dd	_706
	dd	361
	dd	3
	align	4
_3853:
	dd	3
	dd	0
	dd	0
	align	4
_3849:
	dd	_706
	dd	362
	dd	4
	align	4
_3850:
	dd	_706
	dd	363
	dd	4
	align	4
_3856:
	dd	_706
	dd	367
	dd	2
	align	4
_3857:
	dd	_706
	dd	368
	dd	2
	align	4
_3887:
	dd	3
	dd	0
	dd	0
	align	4
_3875:
	dd	_706
	dd	369
	dd	3
	align	4
_3885:
	dd	3
	dd	0
	dd	0
	align	4
_3877:
	dd	_706
	dd	370
	dd	4
	align	4
_3886:
	dd	_706
	dd	372
	dd	3
	align	4
_3888:
	dd	_706
	dd	375
	dd	2
	align	4
_3889:
	dd	_706
	dd	376
	dd	2
	align	4
_3926:
	dd	3
	dd	0
	dd	0
	align	4
_3907:
	dd	_706
	dd	377
	dd	3
	align	4
_3924:
	dd	3
	dd	0
	dd	0
	align	4
_3909:
	dd	_706
	dd	378
	dd	4
	align	4
_3923:
	dd	3
	dd	0
	dd	0
	align	4
_3915:
	dd	_706
	dd	378
	dd	34
	align	4
_3925:
	dd	_706
	dd	380
	dd	3
	align	4
_3927:
	dd	_706
	dd	383
	dd	2
_4127:
	db	"maptodest",0
_4128:
	db	"postitionx",0
_4129:
	db	"postitiony",0
_4130:
	db	"zielx",0
_4131:
	db	"ziely",0
_4132:
	db	"map",0
_4133:
	db	"mapx",0
_4134:
	db	"mapy",0
_4135:
	db	"mapdat",0
_4136:
	db	"[,,]i",0
_4137:
	db	"enf",0
_4138:
	db	"rig",0
	align	4
_4126:
	dd	1
	dd	_4127
	dd	2
	dd	_4128
	dd	_343
	dd	-4
	dd	2
	dd	_4129
	dd	_343
	dd	-8
	dd	2
	dd	_4130
	dd	_343
	dd	-12
	dd	2
	dd	_4131
	dd	_343
	dd	-16
	dd	5
	dd	_4132
	dd	_2927
	dd	-20
	dd	2
	dd	_4133
	dd	_313
	dd	-24
	dd	2
	dd	_4134
	dd	_313
	dd	-28
	dd	2
	dd	_3752
	dd	_343
	dd	-32
	dd	2
	dd	_4135
	dd	_4136
	dd	-36
	dd	2
	dd	_4137
	dd	_343
	dd	-40
	dd	2
	dd	_4138
	dd	_313
	dd	-44
	dd	0
	align	4
_3936:
	dd	_706
	dd	390
	dd	2
	align	4
_6630:
	dd	0xbf800000
	align	4
_3938:
	dd	_706
	dd	392
	dd	2
_3939:
	db	"i",0
	align	4
_3941:
	dd	_706
	dd	394
	dd	2
	align	4
_3970:
	dd	3
	dd	0
	dd	2
	dd	_342
	dd	_313
	dd	-48
	dd	0
	align	4
_3945:
	dd	_706
	dd	395
	dd	3
	align	4
_3969:
	dd	3
	dd	0
	dd	2
	dd	_344
	dd	_313
	dd	-52
	dd	0
	align	4
_3949:
	dd	_706
	dd	396
	dd	4
	align	4
_3961:
	dd	_706
	dd	397
	dd	4
	align	4
_3971:
	dd	_706
	dd	401
	dd	2
	align	4
_3976:
	dd	3
	dd	0
	dd	0
	align	4
_3975:
	dd	_706
	dd	401
	dd	52
	align	4
_6631:
	dd	0xbf800000
	align	4
_3977:
	dd	_706
	dd	402
	dd	2
	align	4
_3980:
	dd	3
	dd	0
	dd	0
	align	4
_3979:
	dd	_706
	dd	402
	dd	26
	align	4
_6632:
	dd	0xbf800000
	align	4
_3981:
	dd	_706
	dd	403
	dd	2
	align	4
_3984:
	dd	3
	dd	0
	dd	0
	align	4
_3983:
	dd	_706
	dd	403
	dd	28
	align	4
_6633:
	dd	0xbf800000
	align	4
_3985:
	dd	_706
	dd	404
	dd	2
	align	4
_3988:
	dd	3
	dd	0
	dd	0
	align	4
_3987:
	dd	_706
	dd	404
	dd	26
	align	4
_6634:
	dd	0xbf800000
	align	4
_3989:
	dd	_706
	dd	405
	dd	2
	align	4
_3992:
	dd	3
	dd	0
	dd	0
	align	4
_3991:
	dd	_706
	dd	405
	dd	28
	align	4
_6635:
	dd	0xbf800000
	align	4
_3993:
	dd	_706
	dd	406
	dd	2
	align	4
_3996:
	dd	3
	dd	0
	dd	0
	align	4
_3995:
	dd	_706
	dd	406
	dd	21
	align	4
_6636:
	dd	0xbf800000
	align	4
_3997:
	dd	_706
	dd	407
	dd	2
	align	4
_4000:
	dd	3
	dd	0
	dd	0
	align	4
_3999:
	dd	_706
	dd	407
	dd	23
	align	4
_6637:
	dd	0xbf800000
	align	4
_4001:
	dd	_706
	dd	408
	dd	2
	align	4
_4004:
	dd	3
	dd	0
	dd	0
	align	4
_4003:
	dd	_706
	dd	408
	dd	21
	align	4
_6638:
	dd	0xbf800000
	align	4
_4005:
	dd	_706
	dd	409
	dd	2
	align	4
_4008:
	dd	3
	dd	0
	dd	0
	align	4
_4007:
	dd	_706
	dd	409
	dd	23
	align	4
_6639:
	dd	0xbf800000
	align	4
_4009:
	dd	_706
	dd	411
	dd	2
	align	4
_4017:
	dd	_706
	dd	413
	dd	2
	align	4
_4020:
	dd	_706
	dd	415
	dd	2
	align	4
_6640:
	dd	0x461c3c00
	align	4
_4023:
	dd	_706
	dd	416
	dd	2
	align	4
_4102:
	dd	3
	dd	0
	dd	2
	dd	_342
	dd	_313
	dd	-56
	dd	0
	align	4
_4026:
	dd	_706
	dd	417
	dd	3
	align	4
_4101:
	dd	3
	dd	0
	dd	2
	dd	_344
	dd	_313
	dd	-60
	dd	0
	align	4
_4029:
	dd	_706
	dd	418
	dd	4
	align	4
_4033:
	dd	3
	dd	0
	dd	0
	align	4
_4100:
	dd	3
	dd	0
	dd	0
	align	4
_4035:
	dd	_706
	dd	421
	dd	5
	align	4
_4040:
	dd	3
	dd	0
	dd	0
	align	4
_4039:
	dd	_706
	dd	421
	dd	31
	align	4
_4041:
	dd	_706
	dd	422
	dd	5
	align	4
_4046:
	dd	3
	dd	0
	dd	0
	align	4
_4045:
	dd	_706
	dd	422
	dd	30
	align	4
_4047:
	dd	_706
	dd	423
	dd	5
	align	4
_4052:
	dd	3
	dd	0
	dd	0
	align	4
_4051:
	dd	_706
	dd	423
	dd	30
	align	4
_4053:
	dd	_706
	dd	424
	dd	5
	align	4
_4058:
	dd	3
	dd	0
	dd	0
	align	4
_4057:
	dd	_706
	dd	424
	dd	30
	align	4
_4059:
	dd	_706
	dd	425
	dd	5
	align	4
_4064:
	dd	3
	dd	0
	dd	0
	align	4
_4063:
	dd	_706
	dd	425
	dd	29
	align	4
_4065:
	dd	_706
	dd	426
	dd	5
	align	4
_4070:
	dd	3
	dd	0
	dd	0
	align	4
_4069:
	dd	_706
	dd	426
	dd	30
	align	4
_4071:
	dd	_706
	dd	427
	dd	5
	align	4
_4076:
	dd	3
	dd	0
	dd	0
	align	4
_4075:
	dd	_706
	dd	427
	dd	29
	align	4
_4077:
	dd	_706
	dd	428
	dd	5
	align	4
_4082:
	dd	3
	dd	0
	dd	0
	align	4
_4081:
	dd	_706
	dd	428
	dd	29
	align	4
_4083:
	dd	_706
	dd	430
	dd	5
	align	4
_4099:
	dd	3
	dd	0
	dd	0
	align	4
_4091:
	dd	_706
	dd	431
	dd	6
	align	4
_4092:
	dd	_706
	dd	432
	dd	6
	align	4
_4103:
	dd	_706
	dd	438
	dd	2
	align	4
_4124:
	dd	3
	dd	0
	dd	2
	dd	_342
	dd	_313
	dd	-64
	dd	0
	align	4
_4107:
	dd	_706
	dd	439
	dd	3
	align	4
_4123:
	dd	3
	dd	0
	dd	2
	dd	_344
	dd	_313
	dd	-68
	dd	0
	align	4
_4111:
	dd	_706
	dd	440
	dd	4
	align	4
_4125:
	dd	_706
	dd	444
	dd	2
_4484:
	db	"mapray",0
	align	4
_4483:
	dd	1
	dd	_4484
	dd	2
	dd	_4130
	dd	_313
	dd	-4
	dd	2
	dd	_4131
	dd	_313
	dd	-8
	dd	5
	dd	_4132
	dd	_4136
	dd	-12
	dd	2
	dd	_4133
	dd	_313
	dd	-16
	dd	2
	dd	_4134
	dd	_313
	dd	-20
	dd	2
	dd	_3932
	dd	_343
	dd	-24
	dd	0
	align	4
_4139:
	dd	_706
	dd	449
	dd	2
	align	4
_4147:
	dd	_706
	dd	450
	dd	2
	align	4
_4482:
	dd	3
	dd	0
	dd	0
	align	4
_4155:
	dd	_706
	dd	451
	dd	3
	align	4
_4165:
	dd	3
	dd	0
	dd	0
	align	4
_4157:
	dd	_706
	dd	451
	dd	20
	align	4
_4166:
	dd	_706
	dd	453
	dd	3
	align	4
_4286:
	dd	3
	dd	0
	dd	2
	dd	_342
	dd	_313
	dd	-28
	dd	0
	align	4
_4169:
	dd	_706
	dd	454
	dd	4
	align	4
_4285:
	dd	3
	dd	0
	dd	2
	dd	_344
	dd	_313
	dd	-32
	dd	0
	align	4
_4172:
	dd	_706
	dd	455
	dd	5
	align	4
_4176:
	dd	3
	dd	0
	dd	0
_4284:
	db	"diagonalset",0
	align	4
_4283:
	dd	3
	dd	0
	dd	2
	dd	_4284
	dd	_343
	dd	-36
	dd	0
	align	4
_4178:
	dd	_706
	dd	458
	dd	6
	align	4
_4180:
	dd	_706
	dd	459
	dd	6
	align	4
_4185:
	dd	3
	dd	0
	dd	0
	align	4
_4184:
	dd	_706
	dd	459
	dd	32
	align	4
_4186:
	dd	_706
	dd	460
	dd	6
	align	4
_4191:
	dd	3
	dd	0
	dd	0
	align	4
_4190:
	dd	_706
	dd	460
	dd	31
	align	4
_4192:
	dd	_706
	dd	461
	dd	6
	align	4
_4197:
	dd	3
	dd	0
	dd	0
	align	4
_4196:
	dd	_706
	dd	461
	dd	31
	align	4
_4198:
	dd	_706
	dd	462
	dd	6
	align	4
_4203:
	dd	3
	dd	0
	dd	0
	align	4
_4202:
	dd	_706
	dd	462
	dd	31
	align	4
_4204:
	dd	_706
	dd	463
	dd	6
	align	4
_4209:
	dd	3
	dd	0
	dd	0
	align	4
_4208:
	dd	_706
	dd	463
	dd	30
	align	4
_4210:
	dd	_706
	dd	464
	dd	6
	align	4
_4215:
	dd	3
	dd	0
	dd	0
	align	4
_4214:
	dd	_706
	dd	464
	dd	31
	align	4
_4216:
	dd	_706
	dd	465
	dd	6
	align	4
_4221:
	dd	3
	dd	0
	dd	0
	align	4
_4220:
	dd	_706
	dd	465
	dd	30
	align	4
_4222:
	dd	_706
	dd	466
	dd	6
	align	4
_4227:
	dd	3
	dd	0
	dd	0
	align	4
_4226:
	dd	_706
	dd	466
	dd	30
	align	4
_4228:
	dd	_706
	dd	468
	dd	6
	align	4
_4253:
	dd	3
	dd	0
	dd	0
	align	4
_4236:
	dd	_706
	dd	469
	dd	7
	align	4
_4252:
	dd	3
	dd	0
	dd	0
	align	4
_4244:
	dd	_706
	dd	470
	dd	8
	align	4
_4254:
	dd	_706
	dd	473
	dd	6
	align	4
_4282:
	dd	3
	dd	0
	dd	0
	align	4
_4268:
	dd	_706
	dd	474
	dd	7
	align	4
_4287:
	dd	_706
	dd	480
	dd	3
	align	4
_4361:
	dd	3
	dd	0
	dd	2
	dd	_342
	dd	_313
	dd	-40
	dd	0
	align	4
_4290:
	dd	_706
	dd	481
	dd	4
	align	4
_4360:
	dd	3
	dd	0
	dd	2
	dd	_344
	dd	_313
	dd	-44
	dd	0
	align	4
_4293:
	dd	_706
	dd	482
	dd	5
	align	4
_4297:
	dd	3
	dd	0
	dd	0
	align	4
_4359:
	dd	3
	dd	0
	dd	2
	dd	_4284
	dd	_343
	dd	-48
	dd	0
	align	4
_4299:
	dd	_706
	dd	485
	dd	6
	align	4
_4301:
	dd	_706
	dd	486
	dd	6
	align	4
_4306:
	dd	3
	dd	0
	dd	0
	align	4
_4305:
	dd	_706
	dd	486
	dd	32
	align	4
_4307:
	dd	_706
	dd	487
	dd	6
	align	4
_4312:
	dd	3
	dd	0
	dd	0
	align	4
_4311:
	dd	_706
	dd	487
	dd	31
	align	4
_4313:
	dd	_706
	dd	488
	dd	6
	align	4
_4318:
	dd	3
	dd	0
	dd	0
	align	4
_4317:
	dd	_706
	dd	488
	dd	31
	align	4
_4319:
	dd	_706
	dd	489
	dd	6
	align	4
_4324:
	dd	3
	dd	0
	dd	0
	align	4
_4323:
	dd	_706
	dd	489
	dd	31
	align	4
_4325:
	dd	_706
	dd	490
	dd	6
	align	4
_4330:
	dd	3
	dd	0
	dd	0
	align	4
_4329:
	dd	_706
	dd	490
	dd	30
	align	4
_4331:
	dd	_706
	dd	491
	dd	6
	align	4
_4336:
	dd	3
	dd	0
	dd	0
	align	4
_4335:
	dd	_706
	dd	491
	dd	31
	align	4
_4337:
	dd	_706
	dd	492
	dd	6
	align	4
_4342:
	dd	3
	dd	0
	dd	0
	align	4
_4341:
	dd	_706
	dd	492
	dd	30
	align	4
_4343:
	dd	_706
	dd	493
	dd	6
	align	4
_4348:
	dd	3
	dd	0
	dd	0
	align	4
_4347:
	dd	_706
	dd	493
	dd	30
	align	4
_4349:
	dd	_706
	dd	495
	dd	6
	align	4
_4358:
	dd	3
	dd	0
	dd	0
	align	4
_4357:
	dd	_706
	dd	496
	dd	7
	align	4
_4362:
	dd	_706
	dd	502
	dd	3
	align	4
_4481:
	dd	3
	dd	0
	dd	2
	dd	_342
	dd	_313
	dd	-52
	dd	0
	align	4
_4365:
	dd	_706
	dd	503
	dd	4
	align	4
_4480:
	dd	3
	dd	0
	dd	2
	dd	_344
	dd	_313
	dd	-56
	dd	0
	align	4
_4368:
	dd	_706
	dd	504
	dd	5
	align	4
_4372:
	dd	3
	dd	0
	dd	0
	align	4
_4479:
	dd	3
	dd	0
	dd	2
	dd	_4284
	dd	_343
	dd	-60
	dd	0
	align	4
_4374:
	dd	_706
	dd	507
	dd	6
	align	4
_4376:
	dd	_706
	dd	508
	dd	6
	align	4
_4381:
	dd	3
	dd	0
	dd	0
	align	4
_4380:
	dd	_706
	dd	508
	dd	32
	align	4
_4382:
	dd	_706
	dd	509
	dd	6
	align	4
_4387:
	dd	3
	dd	0
	dd	0
	align	4
_4386:
	dd	_706
	dd	509
	dd	31
	align	4
_4388:
	dd	_706
	dd	510
	dd	6
	align	4
_4393:
	dd	3
	dd	0
	dd	0
	align	4
_4392:
	dd	_706
	dd	510
	dd	31
	align	4
_4394:
	dd	_706
	dd	511
	dd	6
	align	4
_4399:
	dd	3
	dd	0
	dd	0
	align	4
_4398:
	dd	_706
	dd	511
	dd	31
	align	4
_4400:
	dd	_706
	dd	512
	dd	6
	align	4
_4405:
	dd	3
	dd	0
	dd	0
	align	4
_4404:
	dd	_706
	dd	512
	dd	30
	align	4
_4406:
	dd	_706
	dd	513
	dd	6
	align	4
_4411:
	dd	3
	dd	0
	dd	0
	align	4
_4410:
	dd	_706
	dd	513
	dd	31
	align	4
_4412:
	dd	_706
	dd	514
	dd	6
	align	4
_4417:
	dd	3
	dd	0
	dd	0
	align	4
_4416:
	dd	_706
	dd	514
	dd	30
	align	4
_4418:
	dd	_706
	dd	515
	dd	6
	align	4
_4423:
	dd	3
	dd	0
	dd	0
	align	4
_4422:
	dd	_706
	dd	515
	dd	30
	align	4
_4424:
	dd	_706
	dd	517
	dd	6
	align	4
_4449:
	dd	3
	dd	0
	dd	0
	align	4
_4432:
	dd	_706
	dd	518
	dd	7
	align	4
_4448:
	dd	3
	dd	0
	dd	0
	align	4
_4440:
	dd	_706
	dd	519
	dd	8
	align	4
_4450:
	dd	_706
	dd	522
	dd	6
	align	4
_4478:
	dd	3
	dd	0
	dd	0
	align	4
_4464:
	dd	_706
	dd	523
	dd	7
_4529:
	db	"button",0
_4530:
	db	"text",0
_4531:
	db	"w",0
_4532:
	db	"h",0
_4533:
	db	"on",0
_4534:
	db	"infotext",0
_4535:
	db	"ret",0
	align	4
_4528:
	dd	1
	dd	_4529
	dd	2
	dd	_4530
	dd	_328
	dd	-4
	dd	2
	dd	_342
	dd	_313
	dd	-8
	dd	2
	dd	_344
	dd	_313
	dd	-12
	dd	2
	dd	_4531
	dd	_313
	dd	-16
	dd	2
	dd	_4532
	dd	_313
	dd	-20
	dd	2
	dd	_4533
	dd	_313
	dd	-24
	dd	2
	dd	_4534
	dd	_328
	dd	-28
	dd	2
	dd	_4535
	dd	_313
	dd	-32
	dd	0
	align	4
_4485:
	dd	_525
	dd	634
	dd	2
	align	4
_4487:
	dd	_525
	dd	635
	dd	2
	align	4
_4488:
	dd	_525
	dd	636
	dd	2
	align	4
_4489:
	dd	_525
	dd	637
	dd	2
	align	4
_4492:
	dd	3
	dd	0
	dd	0
	align	4
_4491:
	dd	_525
	dd	638
	dd	3
	align	4
_4501:
	dd	3
	dd	0
	dd	0
	align	4
_4494:
	dd	_525
	dd	640
	dd	3
	align	4
_4497:
	dd	3
	dd	0
	dd	0
	align	4
_4496:
	dd	_525
	dd	640
	dd	14
	align	4
_4500:
	dd	3
	dd	0
	dd	0
	align	4
_4499:
	dd	_525
	dd	640
	dd	43
	align	4
_4502:
	dd	_525
	dd	642
	dd	2
	align	4
_4503:
	dd	_525
	dd	643
	dd	2
	align	4
_4506:
	dd	3
	dd	0
	dd	0
	align	4
_4505:
	dd	_525
	dd	644
	dd	3
	align	4
_4515:
	dd	3
	dd	0
	dd	0
	align	4
_4508:
	dd	_525
	dd	646
	dd	3
	align	4
_4511:
	dd	3
	dd	0
	dd	0
	align	4
_4510:
	dd	_525
	dd	646
	dd	14
	align	4
_4514:
	dd	3
	dd	0
	dd	0
	align	4
_4513:
	dd	_525
	dd	646
	dd	37
	align	4
_4516:
	dd	_525
	dd	648
	dd	2
	align	4
_6824:
	dd	0x41080000
	align	4
_6825:
	dd	0x40000000
	align	4
_4517:
	dd	_525
	dd	650
	dd	2
	align	4
_4526:
	dd	3
	dd	0
	dd	0
	align	4
_4519:
	dd	_525
	dd	651
	dd	3
	align	4
_4525:
	dd	3
	dd	0
	dd	0
	align	4
_4521:
	dd	_525
	dd	652
	dd	4
	align	4
_4524:
	dd	3
	dd	0
	dd	0
	align	4
_4523:
	dd	_525
	dd	652
	dd	15
	align	4
_4527:
	dd	_525
	dd	658
	dd	2
_4550:
	db	"mouseover",0
	align	4
_4549:
	dd	1
	dd	_4550
	dd	2
	dd	_342
	dd	_313
	dd	-4
	dd	2
	dd	_344
	dd	_313
	dd	-8
	dd	2
	dd	_4531
	dd	_313
	dd	-12
	dd	2
	dd	_4532
	dd	_313
	dd	-16
	dd	2
	dd	_4535
	dd	_313
	dd	-20
	dd	0
	align	4
_4536:
	dd	_525
	dd	664
	dd	2
	align	4
_4538:
	dd	_525
	dd	666
	dd	2
	align	4
_4547:
	dd	3
	dd	0
	dd	0
	align	4
_4546:
	dd	_525
	dd	666
	dd	82
	align	4
_4548:
	dd	_525
	dd	668
	dd	2
_4572:
	db	"savetheshit",0
_4573:
	db	"outdata",0
_4574:
	db	":brl.stream.TStream",0
	align	4
_4571:
	dd	1
	dd	_4572
	dd	2
	dd	_4573
	dd	_4574
	dd	-4
	dd	0
	align	4
_4551:
	dd	_525
	dd	672
	dd	2
	align	4
_276:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	103,102,120,92,102,117,99,107,117,112,46,98,97,104
	align	4
_4553:
	dd	_525
	dd	674
	dd	2
	align	4
_4567:
	dd	3
	dd	0
	dd	2
	dd	_342
	dd	_313
	dd	-8
	dd	0
	align	4
_4556:
	dd	_525
	dd	675
	dd	3
	align	4
_4566:
	dd	3
	dd	0
	dd	2
	dd	_344
	dd	_313
	dd	-12
	dd	0
	align	4
_4559:
	dd	_525
	dd	676
	dd	4
	align	4
_4568:
	dd	_525
	dd	680
	dd	2
_4597:
	db	"loadtheshit",0
_4598:
	db	"indata",0
	align	4
_4596:
	dd	1
	dd	_4597
	dd	2
	dd	_4598
	dd	_4574
	dd	-4
	dd	0
	align	4
_4575:
	dd	_525
	dd	684
	dd	2
	align	4
_4577:
	dd	_525
	dd	686
	dd	2
	align	4
_4592:
	dd	3
	dd	0
	dd	2
	dd	_342
	dd	_313
	dd	-8
	dd	0
	align	4
_4580:
	dd	_525
	dd	687
	dd	3
	align	4
_4591:
	dd	3
	dd	0
	dd	2
	dd	_344
	dd	_313
	dd	-12
	dd	0
	align	4
_4583:
	dd	_525
	dd	688
	dd	4
	align	4
_4593:
	dd	_525
	dd	692
	dd	2
_4627:
	db	"getdiff",0
_4628:
	db	"bilduse",0
_4629:
	db	"bildpos",0
_4630:
	db	"bildneg",0
	align	4
_4626:
	dd	1
	dd	_4627
	dd	2
	dd	_3056
	dd	_319
	dd	-4
	dd	2
	dd	_4628
	dd	_319
	dd	-8
	dd	2
	dd	_4629
	dd	_319
	dd	-12
	dd	2
	dd	_4630
	dd	_319
	dd	-16
	dd	2
	dd	_4535
	dd	_313
	dd	-20
	dd	0
	align	4
_4599:
	dd	_525
	dd	697
	dd	2
	align	4
_4601:
	dd	_525
	dd	699
	dd	2
	align	4
_4604:
	dd	3
	dd	0
	dd	0
	align	4
_4603:
	dd	_525
	dd	699
	dd	25
	align	4
_4605:
	dd	_525
	dd	700
	dd	2
	align	4
_4608:
	dd	3
	dd	0
	dd	0
	align	4
_4607:
	dd	_525
	dd	700
	dd	25
	align	4
_4609:
	dd	_525
	dd	701
	dd	2
	align	4
_4612:
	dd	3
	dd	0
	dd	0
	align	4
_4611:
	dd	_525
	dd	701
	dd	25
	align	4
_4613:
	dd	_525
	dd	703
	dd	2
	align	4
_4616:
	dd	3
	dd	0
	dd	0
	align	4
_4615:
	dd	_525
	dd	703
	dd	28
	align	4
_4617:
	dd	_525
	dd	704
	dd	2
	align	4
_4620:
	dd	3
	dd	0
	dd	0
	align	4
_4619:
	dd	_525
	dd	704
	dd	28
	align	4
_4621:
	dd	_525
	dd	706
	dd	2
	align	4
_4624:
	dd	3
	dd	0
	dd	0
	align	4
_4623:
	dd	_525
	dd	706
	dd	28
	align	4
_4625:
	dd	_525
	dd	708
	dd	2
_5004:
	db	"drawTile",0
_5005:
	db	"tobild",0
_5006:
	db	"orginalbild",0
_5007:
	db	"fromlist",0
_5008:
	db	"asdasf",0
	align	4
_5003:
	dd	1
	dd	_5004
	dd	5
	dd	_5005
	dd	_319
	dd	-4
	dd	5
	dd	_5006
	dd	_319
	dd	-8
	dd	5
	dd	_5007
	dd	_2908
	dd	-12
	dd	2
	dd	_5008
	dd	_313
	dd	-16
	dd	0
	align	4
_4631:
	dd	_525
	dd	717
	dd	2
	align	4
_4633:
	dd	_525
	dd	719
	dd	1
	align	4
_5002:
	dd	3
	dd	0
	dd	2
	dd	_344
	dd	_313
	dd	-20
	dd	0
	align	4
_4636:
	dd	_525
	dd	720
	dd	2
_5001:
	db	"used_combox",0
	align	4
_5000:
	dd	3
	dd	0
	dd	2
	dd	_342
	dd	_313
	dd	-24
	dd	2
	dd	_5001
	dd	_313
	dd	-28
	dd	0
	align	4
_4639:
	dd	_525
	dd	721
	dd	3
	align	4
_4641:
	dd	_525
	dd	722
	dd	3
	align	4
_4999:
	dd	3
	dd	0
	dd	2
	dd	_2494
	dd	_313
	dd	-32
	dd	2
	dd	_2495
	dd	_313
	dd	-36
	dd	2
	dd	_2496
	dd	_313
	dd	-40
	dd	2
	dd	_2497
	dd	_313
	dd	-44
	dd	2
	dd	_2498
	dd	_313
	dd	-48
	dd	2
	dd	_2499
	dd	_313
	dd	-52
	dd	2
	dd	_2500
	dd	_313
	dd	-56
	dd	2
	dd	_2501
	dd	_313
	dd	-60
	dd	2
	dd	_2502
	dd	_313
	dd	-64
	dd	2
	dd	_2503
	dd	_313
	dd	-68
	dd	2
	dd	_2504
	dd	_313
	dd	-72
	dd	2
	dd	_2505
	dd	_313
	dd	-76
	dd	0
	align	4
_4657:
	dd	_525
	dd	723
	dd	4
	align	4
_4670:
	dd	_525
	dd	724
	dd	4
	align	4
_4688:
	dd	3
	dd	0
	dd	0
	align	4
_4676:
	dd	_525
	dd	725
	dd	5
	align	4
_4677:
	dd	_525
	dd	725
	dd	14
	align	4
_4678:
	dd	_525
	dd	725
	dd	24
	align	4
_4679:
	dd	_525
	dd	726
	dd	5
	align	4
_4680:
	dd	_525
	dd	726
	dd	18
	align	4
_4681:
	dd	_525
	dd	726
	dd	29
	align	4
_4682:
	dd	_525
	dd	726
	dd	41
	align	4
_4683:
	dd	_525
	dd	727
	dd	5
	align	4
_4684:
	dd	_525
	dd	727
	dd	17
	align	4
_4685:
	dd	_525
	dd	727
	dd	29
	align	4
_4686:
	dd	_525
	dd	727
	dd	41
	align	4
_4687:
	dd	_525
	dd	727
	dd	53
	align	4
_4979:
	dd	3
	dd	0
	dd	0
	align	4
_4690:
	dd	_525
	dd	728
	dd	4
	align	4
_4744:
	dd	3
	dd	0
	dd	0
	align	4
_4694:
	dd	_525
	dd	729
	dd	5
	align	4
_4695:
	dd	_525
	dd	729
	dd	14
	align	4
_4696:
	dd	_525
	dd	729
	dd	24
	align	4
_4697:
	dd	_525
	dd	730
	dd	5
	align	4
_4698:
	dd	_525
	dd	730
	dd	18
	align	4
_4699:
	dd	_525
	dd	730
	dd	29
	align	4
_4700:
	dd	_525
	dd	730
	dd	41
	align	4
_4701:
	dd	_525
	dd	731
	dd	5
	align	4
_4718:
	dd	3
	dd	0
	dd	2
	dd	_342
	dd	_313
	dd	-80
	dd	0
	align	4
_4704:
	dd	_525
	dd	732
	dd	6
	align	4
_4717:
	dd	3
	dd	0
	dd	0
	align	4
_4716:
	dd	_525
	dd	732
	dd	102
	align	4
_4719:
	dd	_525
	dd	734
	dd	5
	align	4
_4724:
	dd	_525
	dd	734
	dd	49
	align	4
_4729:
	dd	_525
	dd	735
	dd	5
	align	4
_4734:
	dd	_525
	dd	735
	dd	50
	align	4
_4739:
	dd	_525
	dd	735
	dd	95
	align	4
_4978:
	dd	3
	dd	0
	dd	0
	align	4
_4746:
	dd	_525
	dd	736
	dd	4
	align	4
_4764:
	dd	3
	dd	0
	dd	0
	align	4
_4752:
	dd	_525
	dd	737
	dd	5
	align	4
_4753:
	dd	_525
	dd	737
	dd	14
	align	4
_4754:
	dd	_525
	dd	737
	dd	24
	align	4
_4755:
	dd	_525
	dd	738
	dd	5
	align	4
_4756:
	dd	_525
	dd	738
	dd	18
	align	4
_4757:
	dd	_525
	dd	738
	dd	29
	align	4
_4758:
	dd	_525
	dd	738
	dd	42
	align	4
_4759:
	dd	_525
	dd	739
	dd	5
	align	4
_4760:
	dd	_525
	dd	739
	dd	17
	align	4
_4761:
	dd	_525
	dd	739
	dd	29
	align	4
_4762:
	dd	_525
	dd	739
	dd	41
	align	4
_4763:
	dd	_525
	dd	739
	dd	53
	align	4
_4977:
	dd	3
	dd	0
	dd	0
	align	4
_4766:
	dd	_525
	dd	740
	dd	4
	align	4
_4820:
	dd	3
	dd	0
	dd	0
	align	4
_4770:
	dd	_525
	dd	741
	dd	5
	align	4
_4771:
	dd	_525
	dd	741
	dd	14
	align	4
_4772:
	dd	_525
	dd	741
	dd	24
	align	4
_4773:
	dd	_525
	dd	742
	dd	5
	align	4
_4774:
	dd	_525
	dd	742
	dd	18
	align	4
_4775:
	dd	_525
	dd	742
	dd	29
	align	4
_4776:
	dd	_525
	dd	742
	dd	42
	align	4
_4777:
	dd	_525
	dd	743
	dd	5
	align	4
_4794:
	dd	3
	dd	0
	dd	2
	dd	_342
	dd	_313
	dd	-84
	dd	0
	align	4
_4780:
	dd	_525
	dd	744
	dd	6
	align	4
_4793:
	dd	3
	dd	0
	dd	0
	align	4
_4792:
	dd	_525
	dd	744
	dd	102
	align	4
_4795:
	dd	_525
	dd	747
	dd	5
	align	4
_4800:
	dd	_525
	dd	747
	dd	49
	align	4
_4805:
	dd	_525
	dd	748
	dd	5
	align	4
_4810:
	dd	_525
	dd	748
	dd	50
	align	4
_4815:
	dd	_525
	dd	748
	dd	95
	align	4
_4976:
	dd	3
	dd	0
	dd	0
	align	4
_4822:
	dd	_525
	dd	749
	dd	4
	align	4
_4840:
	dd	3
	dd	0
	dd	0
	align	4
_4828:
	dd	_525
	dd	750
	dd	5
	align	4
_4829:
	dd	_525
	dd	750
	dd	14
	align	4
_4830:
	dd	_525
	dd	750
	dd	24
	align	4
_4831:
	dd	_525
	dd	751
	dd	5
	align	4
_4832:
	dd	_525
	dd	751
	dd	18
	align	4
_4833:
	dd	_525
	dd	751
	dd	29
	align	4
_4834:
	dd	_525
	dd	751
	dd	42
	align	4
_4835:
	dd	_525
	dd	752
	dd	5
	align	4
_4836:
	dd	_525
	dd	752
	dd	17
	align	4
_4837:
	dd	_525
	dd	752
	dd	29
	align	4
_4838:
	dd	_525
	dd	752
	dd	41
	align	4
_4839:
	dd	_525
	dd	752
	dd	53
	align	4
_4975:
	dd	3
	dd	0
	dd	0
	align	4
_4842:
	dd	_525
	dd	753
	dd	4
	align	4
_4896:
	dd	3
	dd	0
	dd	0
	align	4
_4846:
	dd	_525
	dd	754
	dd	5
	align	4
_4847:
	dd	_525
	dd	754
	dd	14
	align	4
_4848:
	dd	_525
	dd	754
	dd	24
	align	4
_4849:
	dd	_525
	dd	755
	dd	5
	align	4
_4850:
	dd	_525
	dd	755
	dd	17
	align	4
_4851:
	dd	_525
	dd	755
	dd	27
	align	4
_4852:
	dd	_525
	dd	755
	dd	40
	align	4
_4853:
	dd	_525
	dd	756
	dd	5
	align	4
_4870:
	dd	3
	dd	0
	dd	2
	dd	_342
	dd	_313
	dd	-88
	dd	0
	align	4
_4856:
	dd	_525
	dd	757
	dd	6
	align	4
_4869:
	dd	3
	dd	0
	dd	0
	align	4
_4868:
	dd	_525
	dd	757
	dd	102
	align	4
_4871:
	dd	_525
	dd	759
	dd	5
	align	4
_4876:
	dd	_525
	dd	759
	dd	49
	align	4
_4881:
	dd	_525
	dd	760
	dd	5
	align	4
_4886:
	dd	_525
	dd	760
	dd	50
	align	4
_4891:
	dd	_525
	dd	760
	dd	95
	align	4
_4974:
	dd	3
	dd	0
	dd	0
	align	4
_4898:
	dd	_525
	dd	761
	dd	4
	align	4
_4916:
	dd	3
	dd	0
	dd	0
	align	4
_4904:
	dd	_525
	dd	762
	dd	5
	align	4
_4905:
	dd	_525
	dd	762
	dd	14
	align	4
_4906:
	dd	_525
	dd	762
	dd	24
	align	4
_4907:
	dd	_525
	dd	763
	dd	5
	align	4
_4908:
	dd	_525
	dd	763
	dd	17
	align	4
_4909:
	dd	_525
	dd	763
	dd	27
	align	4
_4910:
	dd	_525
	dd	763
	dd	40
	align	4
_4911:
	dd	_525
	dd	764
	dd	5
	align	4
_4912:
	dd	_525
	dd	764
	dd	17
	align	4
_4913:
	dd	_525
	dd	764
	dd	29
	align	4
_4914:
	dd	_525
	dd	764
	dd	41
	align	4
_4915:
	dd	_525
	dd	764
	dd	53
	align	4
_4973:
	dd	3
	dd	0
	dd	0
	align	4
_4918:
	dd	_525
	dd	765
	dd	4
	align	4
_4972:
	dd	3
	dd	0
	dd	0
	align	4
_4922:
	dd	_525
	dd	766
	dd	5
	align	4
_4923:
	dd	_525
	dd	766
	dd	14
	align	4
_4924:
	dd	_525
	dd	766
	dd	24
	align	4
_4925:
	dd	_525
	dd	767
	dd	5
	align	4
_4926:
	dd	_525
	dd	767
	dd	17
	align	4
_4927:
	dd	_525
	dd	767
	dd	27
	align	4
_4928:
	dd	_525
	dd	767
	dd	39
	align	4
_4929:
	dd	_525
	dd	768
	dd	5
	align	4
_4946:
	dd	3
	dd	0
	dd	2
	dd	_342
	dd	_313
	dd	-92
	dd	0
	align	4
_4932:
	dd	_525
	dd	769
	dd	6
	align	4
_4945:
	dd	3
	dd	0
	dd	0
	align	4
_4944:
	dd	_525
	dd	769
	dd	102
	align	4
_4947:
	dd	_525
	dd	771
	dd	5
	align	4
_4952:
	dd	_525
	dd	771
	dd	49
	align	4
_4957:
	dd	_525
	dd	772
	dd	5
	align	4
_4962:
	dd	_525
	dd	772
	dd	50
	align	4
_4967:
	dd	_525
	dd	772
	dd	95
	align	4
_4980:
	dd	_525
	dd	774
	dd	4
	align	4
_4983:
	dd	3
	dd	0
	dd	0
	align	4
_4982:
	dd	_525
	dd	775
	dd	5
	align	4
_4998:
	dd	3
	dd	0
	dd	0
	align	4
_4985:
	dd	_525
	dd	777
	dd	5
_5126:
	db	"drawPixel",0
_5127:
	db	"frombild",0
_5128:
	db	"nrUSE",0
_5129:
	db	"nrPOS",0
_5130:
	db	"nrNEG",0
_5131:
	db	"amay",0
_5132:
	db	"pixel",0
_5133:
	db	"flipX",0
_5134:
	db	"flipY",0
_5135:
	db	"usetexuse",0
_5136:
	db	"usetexA",0
_5137:
	db	"usetexB",0
_5138:
	db	"red_x",0
_5139:
	db	"red_y",0
_5140:
	db	"texACT",0
_5141:
	db	"x6",0
_5142:
	db	"y6",0
_5143:
	db	"texAx",0
_5144:
	db	"texAy",0
_5145:
	db	"texBx",0
_5146:
	db	"texBy",0
_5147:
	db	"tcolorm",0
	align	4
_5125:
	dd	1
	dd	_5126
	dd	5
	dd	_5005
	dd	_319
	dd	-4
	dd	5
	dd	_5127
	dd	_2908
	dd	-8
	dd	2
	dd	_5128
	dd	_313
	dd	-12
	dd	2
	dd	_5129
	dd	_313
	dd	-16
	dd	2
	dd	_5130
	dd	_313
	dd	-20
	dd	2
	dd	_342
	dd	_313
	dd	-24
	dd	2
	dd	_344
	dd	_313
	dd	-28
	dd	2
	dd	_2497
	dd	_313
	dd	-32
	dd	2
	dd	_2498
	dd	_313
	dd	-36
	dd	2
	dd	_2499
	dd	_313
	dd	-40
	dd	2
	dd	_2500
	dd	_313
	dd	-44
	dd	2
	dd	_5131
	dd	_343
	dd	-48
	dd	2
	dd	_5132
	dd	_313
	dd	-52
	dd	2
	dd	_5133
	dd	_313
	dd	-56
	dd	2
	dd	_5134
	dd	_313
	dd	-60
	dd	2
	dd	_2503
	dd	_313
	dd	-64
	dd	2
	dd	_2504
	dd	_313
	dd	-68
	dd	2
	dd	_2505
	dd	_313
	dd	-72
	dd	2
	dd	_5135
	dd	_313
	dd	-76
	dd	2
	dd	_5136
	dd	_313
	dd	-80
	dd	2
	dd	_5137
	dd	_313
	dd	-84
	dd	2
	dd	_5138
	dd	_313
	dd	-88
	dd	2
	dd	_5139
	dd	_313
	dd	-92
	dd	2
	dd	_5140
	dd	_313
	dd	-96
	dd	2
	dd	_5141
	dd	_313
	dd	-100
	dd	2
	dd	_5142
	dd	_313
	dd	-104
	dd	2
	dd	_5143
	dd	_313
	dd	-108
	dd	2
	dd	_5144
	dd	_313
	dd	-112
	dd	2
	dd	_5145
	dd	_313
	dd	-116
	dd	2
	dd	_5146
	dd	_313
	dd	-120
	dd	2
	dd	_5147
	dd	_313
	dd	-124
	dd	0
	align	4
_5009:
	dd	_525
	dd	787
	dd	2
	align	4
_5012:
	dd	_525
	dd	789
	dd	2
	align	4
_5017:
	dd	3
	dd	0
	dd	0
	align	4
_5016:
	dd	_525
	dd	789
	dd	31
	align	4
_5018:
	dd	_525
	dd	790
	dd	2
	align	4
_5023:
	dd	3
	dd	0
	dd	0
	align	4
_5022:
	dd	_525
	dd	790
	dd	31
	align	4
_5024:
	dd	_525
	dd	792
	dd	2
	align	4
_5025:
	dd	_525
	dd	793
	dd	2
	align	4
_5027:
	dd	_525
	dd	794
	dd	2
	align	4
_5034:
	dd	_525
	dd	795
	dd	2
	align	4
_5039:
	dd	3
	dd	0
	dd	0
	align	4
_5036:
	dd	_525
	dd	796
	dd	3
	align	4
_5037:
	dd	_525
	dd	797
	dd	3
	align	4
_5038:
	dd	_525
	dd	798
	dd	3
	align	4
_5040:
	dd	_525
	dd	800
	dd	2
	align	4
_5045:
	dd	3
	dd	0
	dd	0
	align	4
_5042:
	dd	_525
	dd	801
	dd	3
	align	4
_5043:
	dd	_525
	dd	802
	dd	3
	align	4
_5044:
	dd	_525
	dd	803
	dd	3
	align	4
_5046:
	dd	_525
	dd	806
	dd	2
_5062:
	db	"tmp",0
_5063:
	db	"tmpA",0
_5064:
	db	"tmpB",0
	align	4
_5061:
	dd	3
	dd	0
	dd	2
	dd	_5062
	dd	_313
	dd	-128
	dd	2
	dd	_5063
	dd	_313
	dd	-132
	dd	2
	dd	_5064
	dd	_313
	dd	-136
	dd	0
	align	4
_5048:
	dd	_525
	dd	807
	dd	3
	align	4
_5050:
	dd	_525
	dd	808
	dd	3
	align	4
_5051:
	dd	_525
	dd	809
	dd	3
	align	4
_5052:
	dd	_525
	dd	810
	dd	3
	align	4
_5053:
	dd	_525
	dd	812
	dd	3
	align	4
_5055:
	dd	_525
	dd	813
	dd	3
	align	4
_5057:
	dd	_525
	dd	814
	dd	3
	align	4
_5058:
	dd	_525
	dd	815
	dd	3
	align	4
_5059:
	dd	_525
	dd	816
	dd	3
	align	4
_5060:
	dd	_525
	dd	817
	dd	3
	align	4
_5065:
	dd	_525
	dd	820
	dd	2
	align	4
_5087:
	dd	3
	dd	0
	dd	2
	dd	_5064
	dd	_313
	dd	-140
	dd	0
	align	4
_5067:
	dd	_525
	dd	821
	dd	3
	align	4
_5073:
	dd	3
	dd	0
	dd	2
	dd	_5062
	dd	_313
	dd	-144
	dd	0
	align	4
_5069:
	dd	_525
	dd	822
	dd	4
	align	4
_5071:
	dd	_525
	dd	823
	dd	4
	align	4
_5072:
	dd	_525
	dd	824
	dd	4
	align	4
_5079:
	dd	3
	dd	0
	dd	2
	dd	_5062
	dd	_313
	dd	-148
	dd	0
	align	4
_5075:
	dd	_525
	dd	826
	dd	4
	align	4
_5077:
	dd	_525
	dd	827
	dd	4
	align	4
_5078:
	dd	_525
	dd	828
	dd	4
	align	4
_5080:
	dd	_525
	dd	830
	dd	3
	align	4
_5081:
	dd	_525
	dd	831
	dd	3
	align	4
_5082:
	dd	_525
	dd	833
	dd	3
	align	4
_5084:
	dd	_525
	dd	834
	dd	3
	align	4
_5085:
	dd	_525
	dd	835
	dd	3
	align	4
_5086:
	dd	_525
	dd	836
	dd	3
	align	4
_5088:
	dd	_525
	dd	839
	dd	2
	align	4
_5099:
	dd	3
	dd	0
	dd	0
	align	4
_5090:
	dd	_525
	dd	840
	dd	3
	align	4
_5098:
	dd	3
	dd	0
	dd	0
	align	4
_5092:
	dd	_525
	dd	841
	dd	4
	align	4
_5093:
	dd	_525
	dd	842
	dd	4
	align	4
_5094:
	dd	_525
	dd	843
	dd	4
	align	4
_5095:
	dd	_525
	dd	844
	dd	4
	align	4
_5096:
	dd	_525
	dd	845
	dd	4
	align	4
_5097:
	dd	_525
	dd	846
	dd	4
	align	4
_5100:
	dd	_525
	dd	875
	dd	2
	align	4
_5102:
	dd	_525
	dd	876
	dd	2
	align	4
_5113:
	dd	3
	dd	0
	dd	0
	align	4
_5104:
	dd	_525
	dd	877
	dd	3
	align	4
_5108:
	dd	3
	dd	0
	dd	0
	align	4
_5106:
	dd	_525
	dd	878
	dd	4
	align	4
_5107:
	dd	_525
	dd	879
	dd	4
	align	4
_5112:
	dd	3
	dd	0
	dd	0
	align	4
_5110:
	dd	_525
	dd	881
	dd	4
	align	4
_5111:
	dd	_525
	dd	882
	dd	4
	align	4
_5124:
	dd	3
	dd	0
	dd	0
	align	4
_5115:
	dd	_525
	dd	885
	dd	3
	align	4
_5119:
	dd	3
	dd	0
	dd	0
	align	4
_5117:
	dd	_525
	dd	886
	dd	4
	align	4
_5118:
	dd	_525
	dd	887
	dd	4
	align	4
_5123:
	dd	3
	dd	0
	dd	0
	align	4
_5121:
	dd	_525
	dd	889
	dd	4
	align	4
_5122:
	dd	_525
	dd	890
	dd	4
_5232:
	db	"getAllColors",0
_5233:
	db	"posx",0
_5234:
	db	"posy",0
_5235:
	db	"texA",0
_5236:
	db	"texB",0
_5237:
	db	"factor",0
	align	4
_5231:
	dd	1
	dd	_5232
	dd	5
	dd	_5005
	dd	_319
	dd	-4
	dd	5
	dd	_5127
	dd	_2908
	dd	-8
	dd	2
	dd	_5128
	dd	_313
	dd	-12
	dd	2
	dd	_5129
	dd	_313
	dd	-16
	dd	2
	dd	_5130
	dd	_313
	dd	-20
	dd	2
	dd	_342
	dd	_313
	dd	-24
	dd	2
	dd	_344
	dd	_313
	dd	-28
	dd	2
	dd	_5233
	dd	_313
	dd	-32
	dd	2
	dd	_5234
	dd	_313
	dd	-36
	dd	2
	dd	_5140
	dd	_313
	dd	-40
	dd	2
	dd	_5135
	dd	_313
	dd	-44
	dd	2
	dd	_5136
	dd	_313
	dd	-48
	dd	2
	dd	_5137
	dd	_313
	dd	-52
	dd	2
	dd	_5235
	dd	_313
	dd	-56
	dd	2
	dd	_5236
	dd	_313
	dd	-60
	dd	2
	dd	_5237
	dd	_313
	dd	-64
	dd	2
	dd	_5132
	dd	_313
	dd	-68
	dd	2
	dd	_4535
	dd	_313
	dd	-72
	dd	0
	align	4
_5148:
	dd	_525
	dd	897
	dd	2
	align	4
_5150:
	dd	_525
	dd	899
	dd	2
	align	4
_5151:
	dd	_525
	dd	901
	dd	2
	align	4
_5154:
	dd	_525
	dd	903
	dd	2
	align	4
_5204:
	dd	3
	dd	0
	dd	0
	align	4
_5158:
	dd	_525
	dd	904
	dd	3
	align	4
_5165:
	dd	3
	dd	0
	dd	0
	align	4
_5160:
	dd	_525
	dd	905
	dd	4
	align	4
_5203:
	dd	3
	dd	0
	dd	0
	align	4
_5167:
	dd	_525
	dd	906
	dd	3
	align	4
_5172:
	dd	3
	dd	0
	dd	0
	align	4
_5169:
	dd	_525
	dd	907
	dd	4
	align	4
_5202:
	dd	3
	dd	0
	dd	0
	align	4
_5174:
	dd	_525
	dd	908
	dd	3
	align	4
_5186:
	dd	3
	dd	0
	dd	0
	align	4
_5176:
	dd	_525
	dd	909
	dd	4
	align	4
_5185:
	dd	3
	dd	0
	dd	0
	align	4
_5180:
	dd	_525
	dd	909
	dd	36
	align	4
_5201:
	dd	3
	dd	0
	dd	0
	align	4
_5188:
	dd	_525
	dd	910
	dd	3
	align	4
_5200:
	dd	3
	dd	0
	dd	0
	align	4
_5190:
	dd	_525
	dd	911
	dd	4
	align	4
_5199:
	dd	3
	dd	0
	dd	0
	align	4
_5194:
	dd	_525
	dd	911
	dd	36
	align	4
_5205:
	dd	_525
	dd	915
	dd	2
	align	4
_5216:
	dd	3
	dd	0
	dd	0
	align	4
_5211:
	dd	_525
	dd	915
	dd	50
	align	4
_5217:
	dd	_525
	dd	916
	dd	2
	align	4
_5228:
	dd	3
	dd	0
	dd	0
	align	4
_5223:
	dd	_525
	dd	916
	dd	50
	align	4
_5229:
	dd	_525
	dd	918
	dd	2
	align	4
_5230:
	dd	_525
	dd	920
	dd	2
_5246:
	db	"setfeedColor",0
_5247:
	db	"pos_x",0
_5248:
	db	"pos_y",0
_5249:
	db	"facor",0
	align	4
_5245:
	dd	1
	dd	_5246
	dd	2
	dd	_5247
	dd	_313
	dd	-4
	dd	2
	dd	_5248
	dd	_313
	dd	-8
	dd	2
	dd	_5235
	dd	_313
	dd	-12
	dd	2
	dd	_5236
	dd	_313
	dd	-16
	dd	2
	dd	_5140
	dd	_313
	dd	-20
	dd	2
	dd	_5249
	dd	_343
	dd	-24
	dd	2
	dd	_5132
	dd	_313
	dd	-28
	dd	0
	align	4
_5238:
	dd	_525
	dd	925
	dd	2
	align	4
_5239:
	dd	_525
	dd	926
	dd	2
	align	4
_5240:
	dd	_525
	dd	927
	dd	2
	align	4
_5241:
	dd	_525
	dd	928
	dd	2
	align	4
_5242:
	dd	_525
	dd	929
	dd	2
	align	4
_5243:
	dd	_525
	dd	930
	dd	2
	align	4
_5244:
	dd	_525
	dd	931
	dd	2
_5261:
	db	"feedColor",0
_5262:
	db	"value",0
	align	4
_5260:
	dd	1
	dd	_5261
	dd	2
	dd	_5262
	dd	_313
	dd	-4
	dd	0
	align	4
_5250:
	dd	_525
	dd	935
	dd	2
	align	4
_5251:
	dd	_525
	dd	936
	dd	2
	align	4
_5255:
	dd	3
	dd	0
	dd	0
	align	4
_5253:
	dd	_525
	dd	936
	dd	24
	align	4
_307:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	116,111,32,109,117,116,99,104,32,99,111,108,111,114,115
	align	4
_5254:
	dd	_525
	dd	936
	dd	51
	align	4
_5256:
	dd	_525
	dd	937
	dd	2
_5795:
	db	"pokefeedColor",0
_5796:
	db	"workedtex",0
_5797:
	db	"splitColor",0
	align	4
_5794:
	dd	1
	dd	_5795
	dd	2
	dd	_4535
	dd	_313
	dd	-4
	dd	2
	dd	_5796
	dd	_313
	dd	-8
	dd	2
	dd	_5797
	dd	_3540
	dd	-12
	dd	0
	align	4
_5263:
	dd	_525
	dd	941
	dd	2
	align	4
_5266:
	dd	_525
	dd	942
	dd	2
_5267:
	db	"f",0
	align	4
_5269:
	dd	_525
	dd	945
	dd	2
_5791:
	db	"nextcolor",0
	align	4
_5790:
	dd	3
	dd	0
	dd	2
	dd	_5791
	dd	_313
	dd	-16
	dd	2
	dd	_2931
	dd	_2932
	dd	-20
	dd	0
	align	4
_5271:
	dd	_525
	dd	947
	dd	3
	align	4
_5279:
	dd	_525
	dd	948
	dd	3
	align	4
_5287:
	dd	_525
	dd	949
	dd	3
	align	4
_5295:
	dd	_525
	dd	950
	dd	3
	align	4
_5303:
	dd	_525
	dd	951
	dd	3
	align	4
_7020:
	dd	0x40000000
	align	4
_5313:
	dd	_525
	dd	952
	dd	3
	align	4
_7021:
	dd	0x40000000
	align	4
_5323:
	dd	_525
	dd	953
	dd	3
	align	4
_7022:
	dd	0x40000000
	align	4
_5333:
	dd	_525
	dd	954
	dd	3
	align	4
_7023:
	dd	0x40000000
	align	4
_5343:
	dd	_525
	dd	955
	dd	3
	align	4
_5344:
	dd	_525
	dd	957
	dd	3
	align	4
_5456:
	dd	3
	dd	0
	dd	0
	align	4
_5346:
	dd	_525
	dd	958
	dd	4
	align	4
_5420:
	dd	3
	dd	0
	dd	0
	align	4
_5348:
	dd	_525
	dd	959
	dd	5
	align	4
_5356:
	dd	_525
	dd	960
	dd	5
	align	4
_5364:
	dd	_525
	dd	961
	dd	5
	align	4
_5372:
	dd	_525
	dd	962
	dd	5
	align	4
_5380:
	dd	_525
	dd	963
	dd	5
	align	4
_7024:
	dd	0x40000000
	align	4
_5390:
	dd	_525
	dd	964
	dd	5
	align	4
_7025:
	dd	0x40000000
	align	4
_5400:
	dd	_525
	dd	965
	dd	5
	align	4
_7026:
	dd	0x40000000
	align	4
_5410:
	dd	_525
	dd	966
	dd	5
	align	4
_7027:
	dd	0x40000000
	align	4
_5454:
	dd	3
	dd	0
	dd	0
	align	4
_5422:
	dd	_525
	dd	968
	dd	5
	align	4
_5430:
	dd	_525
	dd	969
	dd	5
	align	4
_5438:
	dd	_525
	dd	970
	dd	5
	align	4
_5446:
	dd	_525
	dd	971
	dd	5
	align	4
_5455:
	dd	_525
	dd	973
	dd	4
	align	4
_5457:
	dd	_525
	dd	978
	dd	3
	align	4
_5550:
	dd	3
	dd	0
	dd	0
	align	4
_5461:
	dd	_525
	dd	979
	dd	4
	align	4
_5469:
	dd	_525
	dd	980
	dd	4
	align	4
_5477:
	dd	_525
	dd	981
	dd	4
	align	4
_5485:
	dd	_525
	dd	982
	dd	4
	align	4
_5493:
	dd	_525
	dd	983
	dd	4
	align	4
_7028:
	dd	0x40000000
	align	4
_7029:
	dd	0x40000000
	align	4
_5507:
	dd	_525
	dd	984
	dd	4
	align	4
_7030:
	dd	0x40000000
	align	4
_7031:
	dd	0x40000000
	align	4
_5521:
	dd	_525
	dd	985
	dd	4
	align	4
_7032:
	dd	0x40000000
	align	4
_7033:
	dd	0x40000000
	align	4
_5535:
	dd	_525
	dd	986
	dd	4
	align	4
_7034:
	dd	0x40000000
	align	4
_7035:
	dd	0x40000000
	align	4
_5549:
	dd	_525
	dd	987
	dd	4
	align	4
_5551:
	dd	_525
	dd	992
	dd	3
	align	4
_5644:
	dd	3
	dd	0
	dd	0
	align	4
_5555:
	dd	_525
	dd	993
	dd	4
	align	4
_5563:
	dd	_525
	dd	994
	dd	4
	align	4
_5571:
	dd	_525
	dd	995
	dd	4
	align	4
_5579:
	dd	_525
	dd	996
	dd	4
	align	4
_5587:
	dd	_525
	dd	997
	dd	4
	align	4
_7036:
	dd	0x40000000
	align	4
_7037:
	dd	0x40000000
	align	4
_7038:
	dd	0x40000000
	align	4
_5601:
	dd	_525
	dd	998
	dd	4
	align	4
_7039:
	dd	0x40000000
	align	4
_7040:
	dd	0x40000000
	align	4
_7041:
	dd	0x40000000
	align	4
_5615:
	dd	_525
	dd	999
	dd	4
	align	4
_7042:
	dd	0x40000000
	align	4
_7043:
	dd	0x40000000
	align	4
_7044:
	dd	0x40000000
	align	4
_5629:
	dd	_525
	dd	1000
	dd	4
	align	4
_7045:
	dd	0x40000000
	align	4
_7046:
	dd	0x40000000
	align	4
_7047:
	dd	0x40000000
	align	4
_5643:
	dd	_525
	dd	1001
	dd	4
	align	4
_5645:
	dd	_525
	dd	1005
	dd	3
	align	4
_5764:
	dd	3
	dd	0
	dd	0
	align	4
_5647:
	dd	_525
	dd	1006
	dd	4
	align	4
_5705:
	dd	3
	dd	0
	dd	0
	align	4
_5649:
	dd	_525
	dd	1007
	dd	5
	align	4
_5663:
	dd	_525
	dd	1008
	dd	5
	align	4
_5677:
	dd	_525
	dd	1009
	dd	5
	align	4
_5691:
	dd	_525
	dd	1010
	dd	5
	align	4
_5763:
	dd	3
	dd	0
	dd	0
	align	4
_5707:
	dd	_525
	dd	1012
	dd	5
	align	4
_7048:
	dd	0x40000000
	align	4
_5721:
	dd	_525
	dd	1013
	dd	5
	align	4
_7049:
	dd	0x40000000
	align	4
_5735:
	dd	_525
	dd	1014
	dd	5
	align	4
_7050:
	dd	0x40000000
	align	4
_5749:
	dd	_525
	dd	1015
	dd	5
	align	4
_7051:
	dd	0x40000000
	align	4
_5765:
	dd	_525
	dd	1019
	dd	3
	align	4
_5767:
	dd	_525
	dd	1020
	dd	3
	align	4
_5769:
	dd	_525
	dd	1021
	dd	3
	align	4
_5774:
	dd	_525
	dd	1022
	dd	3
	align	4
_5779:
	dd	_525
	dd	1023
	dd	3
	align	4
_5784:
	dd	_525
	dd	1024
	dd	3
	align	4
_5789:
	dd	_525
	dd	1026
	dd	3
	align	4
_5792:
	dd	_525
	dd	1029
	dd	2
	align	4
_5793:
	dd	_525
	dd	1030
	dd	2
