' Mandelbrot - Speedtest
' Complied under BlitzMax v1.22

SuperStrict
Framework BRL.GLMax2D
Import BRL.Pixmap

Const MaxI:Int = 128   	' max iterations
Const SX#		= -2.025 	' start value real
Const SY#		= -1.125 	' start value imaginary
Const EX#		= 0.6    	' end value real
Const EY#		= 1.125  	' end value imaginary

Const x1:Int = 100    	' ScreenX
Const y1:Int = 75    	' ScreenY
Const xy:Float = Float(x1) / Float(y1)	' x/y-ratio

Global xstart:Double = SX
Global ystart:Double = SY
Global xende:Double = EX
Global yende:Double = EY

Global xzoom:Double = (xende - xstart) / x1
Global yzoom:Double = (yende - ystart) / y1

AppTitle$="BlitzMax Mandlebrot test"
Graphics x1,y1
Global pm:TPixmap=CreatePixmap(x1,y1,PF_RGB888)

While Not KeyHit(KEY_ESCAPE)
	Const fac:Float = 0.999
	Global thistime%, lasttime%
	xende = xende*fac
	xstart:*fac
	ystart:*fac
	yende:*fac
	xzoom = (xende - xstart) / x1
	yzoom = (yende - ystart) / y1
	MandelBrot
	thistime = MilliSecs()
	DrawPixmap pm,0,0
	DrawText "Speed: " + String(Int(x1*y1 / (1+(thistime-lasttime)))) + " Kpix/sec", 0, 0
	lasttime=thistime
	Flip False
Wend

End

' ------------------------------------------------------------- '
' -=#  Mandelbrot  #=-
' ------------------------------------------------------------- '
Function MandelBrot() ' calculate all points
	Global old#
	Local col%
	For Local x% = 0 Until x1
		For Local y% = 0 Until y1
			Local h# = DotsColor(xstart + xzoom * Double(x), ystart + yzoom * Double(y))
			If h <> old
				' Local b# = 1.0 - h * h ' brightness
				col = HSB2RGB(h, 0.8, 1.0 - h * h)
				old = h
			EndIf
			WritePixel pm,x,y,col
		Next
	Next
End Function

' ------------------------------------------------------------- '
' -=#  DotsColor  #=-
' ------------------------------------------------------------- '
Function DotsColor:Float(xval:Double, yval:Double) ' color value from 0.0 to 1.0 by iterations
	Local r:Double, i:Double, m:Double
	Local j:Int
	While (j < MaxI) And (m < 4.0)
		j:+1
		m = r * r - i * i
		i = 2.0 * r * i + yval
		r = m + xval
	Wend
	Return Float(j) / Float(MaxI)
End Function

' ------------------------------------------------------------- ;
' -=#  RGB-Function - Come on, that's an important one...  #=-
' ------------------------------------------------------------- ;
Function RGB%(red%, green%, blue%)
   Return (red Shl 16) + (green Shl 8) + blue
End Function

' ------------------------------------------------------------- '
' -=#  HSB2RGB  #=-
' ------------------------------------------------------------- '
Function HSB2RGB%(hue:Double, saturation:Double, brightness:Double)
	Local red#, green:Double, blue:Double, domainOffset:Double ' hue mod 1/6
	If brightness = 0 Return 0
	If saturation = 0 Return RGB(brightness*255.0, brightness*255.0, brightness*255.0)

	If hue < 1.0/6.0
		' red domain; green ascends
		domainOffset = hue
		red   = brightness
		blue  = brightness * (1.0 - saturation)
		green = blue + (brightness - blue) * domainOffset * 6.0
	ElseIf hue < 2.0/6.0
		' yellow domain; red descends
		domainOffset = hue - 1.0/6
		green = brightness
		blue  = brightness * (1.0 - saturation)
		red   = green - (brightness - blue) * domainOffset * 6.0
	ElseIf hue < 3.0/6.0
		' green domain; blue ascends
		domainOffset = hue - 2.0/6
		green = brightness
		red   = brightness * (1.0 - saturation)
		blue  = red + (brightness - red) * domainOffset * 6.0
	ElseIf hue < 4.0/6.0
		' cyan domain; green descends
		domainOffset = hue - 3.0/6
		blue  = brightness
		red   = brightness * (1.0 - saturation)
		green = blue - (brightness - red) * domainOffset * 6.0
	ElseIf hue < 5.0/6.0
		' blue domain; red ascends
		domainOffset = hue - 4.0/6.0
		blue  = brightness
		green = brightness * (1.0 - saturation)
		red   = green + (brightness - green) * domainOffset * 6.0
	Else
		' magenta domain; blue descends
		domainOffset = hue - 5.0/6.0
		red   = brightness
		green = brightness * (1.0 - saturation)
		blue  = red - (brightness - green) * domainOffset * 6.0
	EndIf
	Return RGB(red*255.0, green*255.0, blue*255.0)
EndFunction