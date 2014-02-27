
' MAX Drehzahl = 2500

Global motor_100PS:Tdrive = New Tdrive
motor_100PS.Drehmoment = 350
motor_100PS.Drehzahl = 2000

Global motor_400PS:Tdrive = New Tdrive
motor_400PS.Drehmoment = 1400
motor_400PS.Drehzahl = 2000

Global motor_500PS:Tdrive = New Tdrive
motor_500PS.Drehmoment = 1750
motor_500PS.Drehzahl = 2000

Global motor_1000PS:Tdrive = New Tdrive
motor_1000PS.Drehmoment = 3500
motor_1000PS.Drehzahl = 2000

Global motor_2000PS:Tdrive = New Tdrive
motor_2000PS.Drehmoment = 7000
motor_2000PS.Drehzahl = 2000

Global motor_5000PS:Tdrive = New Tdrive
motor_5000PS.Drehmoment = 17500
motor_5000PS.Drehzahl = 2000

Function Drive(gas:Int, break:Int, gewicht:Float, motordata:Tengine, panzermodel:Int = 0, motor:Tdrive)
	
	If motor.Drehzahl > 2500 Then motor.Drehzahl = 2500 ' sicherheits abfrege

	If motordata.gang = 1 Then
		If gas Then
			
		Else
			If break Then motordata.gang = 0
			If motordata.Drehzahl < (motor.Drehzahl / 4.0) * 2 Then motordata.gang = 0
		End If
	ElseIf motordata.gang = 0 Then
		If gas Then
			If motordata.Drehzahl > (motor.Drehzahl / 4.0) * 3 Then motordata.gang = 1
		End If
		If break Then
			motordata.rucktimer = motordata.rucktimer + 1
			If motordata.rucktimer > 60 Then motordata.gang = -1
		Else
			motordata.rucktimer = 0
		End If
	ElseIf motordata.gang = -1 Then
		If break Then
			If Not gas Then gas = 1
		Else
			motordata.gang = 0
		End If
	End If


	If gas Then
		If motordata.gang = 0 Then
			motordata.Drehzahl = motordata.Drehzahl + ((motor.Drehzahl - motordata.Drehzahl) / (50 + ((motordata.Drehzahl - motor.Drehzahl) / 50)))
		Else
			motordata.Drehzahl = motordata.Drehzahl + ((motor.Drehzahl - motordata.Drehzahl) / (100 + ((motordata.Drehzahl - motor.Drehzahl) / 100)))
		End If
	Else
		If motordata.gang = 0 Then
			motordata.Drehzahl = motordata.Drehzahl - ((motor.Drehzahl - motordata.Drehzahl) / (50 + ((motordata.Drehzahl - motor.Drehzahl) / 50))) - 1
		Else
			motordata.Drehzahl = motordata.Drehzahl - ((motor.Drehzahl - motordata.Drehzahl) / (50 + ((motordata.Drehzahl - motor.Drehzahl) / 50))) - 0.1
		EndIf
	EndIf
	
	If motordata.Drehzahl < (motor.Drehzahl / 10.0) Then motordata.Drehzahl = (motor.Drehzahl / 10.0)
	
	
	motordata.Drehmoment = ((motor.Drehmoment / motor.Drehzahl) * motordata.Drehzahl)
	
	
	Local leistung:Float = motordata.Drehmoment * ((2 * Pi) * (motordata.Drehzahl / 60))

	Local wiederstand:Float = 0.00005
	If break And motordata.gang > - 1 Then wiederstand = 0.00025
	
	
	
	If motordata.gang = 0 Then
		motordata.speed = motordata.speed - ((wiederstand * gewicht) * (((motordata.speed) / 50)))
		
	ElseIf motordata.gang = 1 Then
		motordata.speed = motordata.speed + ((leistung / gewicht) / (50 + ((- motordata.speed) / 50)))
		motordata.speed = motordata.speed - ((wiederstand * gewicht) * (((motordata.speed) / 25)))
	ElseIf motordata.gang = -1 Then
		motordata.speed = motordata.speed - ((leistung / gewicht) / (100 + ((motordata.speed) / 100)))
		motordata.speed = motordata.speed + ((wiederstand * gewicht) * (((- motordata.speed) / 25)))
	EndIf
	
	If motordata.speed < 0.001 And motordata.speed > - 0.001 Then motordata.speed = 0
	rem
	DrawText("effective leistung: " + leistung, 10, 10)
	DrawText("leistung pro Kg: " + (leistung / gewicht), 10, 30)
	DrawText("speed: " + (motordata.speed / 10), 10, 50)
	DrawText("Drehzahl: " + motordata.Drehzahl, 10, 70)
	DrawText("Drehmoment: " + motordata.Drehmoment, 10, 90)
	endrem
End Function