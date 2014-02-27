Global igfxWidth:Int = 1024
Global igfxHeight:Int = 768
Global igfxWidthHalf:Int = igfxwidth / 2
Global igfxHeightHalf:Int = igfxheight / 2


Const iTilesizeGFX:Int = 32
Const iTilesizeObj:Int = 16
Global iMapXSizeGFX:Int = 30
Global iMapYSizeGFX:Int = 22
Global iMapXSizeObj:Int = imapxsizegfx * 2
Global iMapYSizeObj:Int = iMapysizegfx * 2

Global iTileMapGFX:Int[iMapXSizeGFX, iMapYSizeGFX]
Global iTileMapObj:Int[iMapXSizeObj, iMapYSizeObj]

Global iXOffSetGFX:Int = itilesizegfx + (itilesizegfx / 2)
Global iYOffSetGFX:Int = itilesizegfx + (itilesizegfx / 2)
Global iXOffSetObj:Int = itilesizeobj * 2 + (itilesizeobj / 2)
Global iYOffSetObj:Int = itilesizeobj * 2+ (itilesizeobj/2)
