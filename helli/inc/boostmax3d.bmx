
Global boostMax2D_Driver:TD3D7Max2DDriver, boostMax2D_active:Int

Rem
bbdoc: init_boostMax2D(D3D7Max2DDriver())
End Rem
Function init_boostMax2D(device:TD3D7Max2DDriver)
	boostMax2D_Driver = device
	boostMax2D_active = True
End Function


Rem
bbdoc: Draw an image with polycords to the back buffer
about:
xy:Float[] <= an array with 8 xy cords: = [x1, y1, x2, y2, x3, y3, x4, x4]
tx:Float and ty:Float <= the orgin data
color:Int[] <= an array with 4 color data for every image corner
End Rem
Function DrawPolyImage(image:TImage, xy:Float[], tx:Float = 0, ty:Float = 0, frame:Int = 0, color:Int[] = Null)
	Function Pow2Size:Int(n:Int)
		Local t:Int = 1
		While t < n
			t:*2
		Wend
		Return t
	End Function
	
	If Not boostMax2D_Driver.IsValid() Return
	If Not boostMax2D_active Then RuntimeError("boostMax2D: run first 'init_boostMax2D(D3D7Max2DDriver())'")
	
	Local iframe:TImageFrame = image.Frame(frame)
	Local d3d7frame:TD3D7ImageFrame = TD3D7ImageFrame(image.frames[frame])
	
	Local swidth:Float = Pow2Size(image.width)
	Local sheight:Float = Pow2Size(image.height)
	
	Local uv:Float Ptr
	Local c:Int Ptr
	Local xyzuv:Float[] = New Float[24]

	xyzuv[4] = 0.0
	xyzuv[5] = 0.0
	xyzuv[10] = Float(image.width) / swidth
	xyzuv[11] = 0.0
	xyzuv[16] = Float(image.width) / swidth
	xyzuv[17] = Float(image.height) / sheight
	xyzuv[22] = 0.0
	xyzuv[23] = Float(image.height) / sheight
		
	uv = xyzuv
	c = Int Ptr(uv)
		
	uv[0] = xy[0] * boostMax2D_Driver.ix + xy[1] * boostMax2D_Driver.iy + tx
	uv[1] = xy[0] * boostMax2D_Driver.jx + xy[1] * boostMax2D_Driver.jy + ty
	If color Then c[3] = color[0] Else c[3] = boostMax2D_Driver.drawcolor
	
	uv[6] = xy[2] * boostMax2D_Driver.ix + xy[3] * boostMax2D_Driver.iy + tx
	uv[7] = xy[2] * boostMax2D_Driver.jx + xy[3] * boostMax2D_Driver.jy + ty
	If color Then c[9] = color[1] Else c[9] = boostMax2D_Driver.drawcolor
		
	uv[12] = xy[4] * boostMax2D_Driver.ix + xy[5] * boostMax2D_Driver.iy + tx
	uv[13] = xy[4] * boostMax2D_Driver.jx + xy[5] * boostMax2D_Driver.jy + ty
	If color Then c[15] = color[2] Else c[15] = boostMax2D_Driver.drawcolor
		
	uv[18] = xy[6] * boostMax2D_Driver.ix + xy[7] * boostMax2D_Driver.iy + tx
	uv[19] = xy[6] * boostMax2D_Driver.jx + xy[7] * boostMax2D_Driver.jy + ty
	If color Then c[21] = color[3] Else c[21] = boostMax2D_Driver.drawcolor

	boostMax2D_Driver.SetActiveFrame(d3d7frame)
	boostMax2D_Driver.device.DrawPrimitive(D3DPT_TRIANGLEFAN, D3DFVF_XYZ | D3DFVF_DIFFUSE | D3DFVF_TEX1, uv, 4, 0)
End Function
