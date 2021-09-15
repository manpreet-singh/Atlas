EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1650 2300 1250 1050
U 60A23887
F0 "Sheet60A23886" 50
F1 "5V Buck Converter.sch" 50
F2 "Output" I R 2900 2550 50 
$EndSheet
$Sheet
S 6200 1900 1100 1800
U 60A2E58B
F0 "Sheet60A2E58A" 50
F1 "Microcontroller.sch" 50
F2 "IN_1" I R 7300 2150 50 
F3 "IN_2" I R 7300 2250 50 
F4 "PWM_A" I R 7300 2350 50 
F5 "IN_3" I R 7300 2600 50 
F6 "IN_4" I R 7300 2700 50 
F7 "PWM_B" I R 7300 2800 50 
F8 "S1" I R 7300 3050 50 
F9 "S2" I R 7300 3150 50 
F10 "S3" I R 7300 3250 50 
F11 "S4" I R 7300 3350 50 
$EndSheet
$Sheet
S 8350 2000 800  1500
U 6125CBA9
F0 "Motor Driver" 50
F1 "MotorDriver.sch" 50
F2 "S1" I L 8350 3050 50 
F3 "S2" I L 8350 3150 50 
F4 "S3" I L 8350 3250 50 
F5 "S4" I L 8350 3350 50 
F6 "IN1" I L 8350 2150 50 
F7 "IN2" I L 8350 2250 50 
F8 "IN3" I L 8350 2600 50 
F9 "IN4" I L 8350 2700 50 
F10 "PWM_A" I L 8350 2350 50 
F11 "PWM_B" I L 8350 2800 50 
$EndSheet
Wire Wire Line
	7300 2150 8350 2150
Wire Wire Line
	7300 2250 8350 2250
Wire Wire Line
	7300 2350 8350 2350
Wire Wire Line
	7300 2600 8350 2600
Wire Wire Line
	7300 2700 8350 2700
Wire Wire Line
	7300 2800 8350 2800
Wire Wire Line
	7300 3050 8350 3050
Wire Wire Line
	7300 3150 8350 3150
Wire Wire Line
	7300 3250 8350 3250
Wire Wire Line
	7300 3350 8350 3350
$Comp
L Regulator_Linear:L78L05_SO8 U2
U 1 1 6141FB78
P 3850 2550
F 0 "U2" H 3850 2792 50  0000 C CNN
F 1 "L78L05_SO8" H 3850 2701 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3950 2750 50  0001 C CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/15/55/e5/aa/23/5b/43/fd/CD00000446.pdf/files/CD00000446.pdf/jcr:content/translations/en.CD00000446.pdf" H 4050 2550 50  0001 C CNN
	1    3850 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2550 3550 2550
$Comp
L power:+5V #PWR02
U 1 1 61424002
P 4350 2300
F 0 "#PWR02" H 4350 2150 50  0001 C CNN
F 1 "+5V" H 4365 2473 50  0000 C CNN
F 2 "" H 4350 2300 50  0001 C CNN
F 3 "" H 4350 2300 50  0001 C CNN
	1    4350 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2300 4350 2550
Wire Wire Line
	4350 2550 4150 2550
$Comp
L power:GND #PWR01
U 1 1 614248BE
P 3850 3050
F 0 "#PWR01" H 3850 2800 50  0001 C CNN
F 1 "GND" H 3855 2877 50  0000 C CNN
F 2 "" H 3850 3050 50  0001 C CNN
F 3 "" H 3850 3050 50  0001 C CNN
	1    3850 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2850 3850 3050
$EndSCHEMATC
