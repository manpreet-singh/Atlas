EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title "Motor Driver Board"
Date "2021-10-08"
Rev "0.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_01x06 J3
U 1 1 6125E0E9
P 7900 1950
F 0 "J3" H 7980 1942 50  0000 L CNN
F 1 "Conn_01x06" H 7980 1851 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B6B-PH-K_1x06_P2.00mm_Vertical" H 7900 1950 50  0001 C CNN
F 3 "~" H 7900 1950 50  0001 C CNN
	1    7900 1950
	1    0    0    -1  
$EndComp
Text Label 7600 1750 2    50   ~ 0
+M1
Text Label 7600 1850 2    50   ~ 0
-M1
$Comp
L power:+5V #PWR06
U 1 1 6125FD45
P 7300 1950
F 0 "#PWR06" H 7300 1800 50  0001 C CNN
F 1 "+5V" H 7315 2123 50  0000 C CNN
F 2 "" H 7300 1950 50  0001 C CNN
F 3 "" H 7300 1950 50  0001 C CNN
	1    7300 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 612604AA
P 7300 2050
F 0 "#PWR07" H 7300 1800 50  0001 C CNN
F 1 "GND" H 7305 1877 50  0000 C CNN
F 2 "" H 7300 2050 50  0001 C CNN
F 3 "" H 7300 2050 50  0001 C CNN
	1    7300 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 1750 7700 1750
Wire Wire Line
	7600 1850 7700 1850
Wire Wire Line
	7300 1950 7700 1950
Wire Wire Line
	7300 2050 7700 2050
Wire Wire Line
	7600 2150 7700 2150
Wire Wire Line
	7600 2250 7700 2250
Text HLabel 7600 2150 0    50   Input ~ 0
S1
Text HLabel 7600 2250 0    50   Input ~ 0
S2
$Comp
L Connector_Generic:Conn_01x06 J4
U 1 1 6127A362
P 7900 2800
F 0 "J4" H 7980 2792 50  0000 L CNN
F 1 "Conn_01x06" H 7980 2701 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B6B-PH-K_1x06_P2.00mm_Vertical" H 7900 2800 50  0001 C CNN
F 3 "~" H 7900 2800 50  0001 C CNN
	1    7900 2800
	1    0    0    -1  
$EndComp
Text Label 7600 2600 2    50   ~ 0
+M2
Text Label 7600 2700 2    50   ~ 0
-M2
$Comp
L power:+5V #PWR08
U 1 1 6127A3C2
P 7300 2800
F 0 "#PWR08" H 7300 2650 50  0001 C CNN
F 1 "+5V" H 7315 2973 50  0000 C CNN
F 2 "" H 7300 2800 50  0001 C CNN
F 3 "" H 7300 2800 50  0001 C CNN
	1    7300 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 6127A3CC
P 7300 2900
F 0 "#PWR09" H 7300 2650 50  0001 C CNN
F 1 "GND" H 7305 2727 50  0000 C CNN
F 2 "" H 7300 2900 50  0001 C CNN
F 3 "" H 7300 2900 50  0001 C CNN
	1    7300 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 2600 7700 2600
Wire Wire Line
	7600 2700 7700 2700
Wire Wire Line
	7300 2800 7700 2800
Wire Wire Line
	7300 2900 7700 2900
Wire Wire Line
	7600 3000 7700 3000
Wire Wire Line
	7600 3100 7700 3100
Text HLabel 7600 3000 0    50   Input ~ 0
S3
Text HLabel 7600 3100 0    50   Input ~ 0
S4
Text HLabel 2400 1400 0    50   Input ~ 0
IN1
Text HLabel 2400 2050 0    50   Input ~ 0
IN2
Text HLabel 2400 2250 0    50   Input ~ 0
IN3
Text HLabel 2400 2850 0    50   Input ~ 0
IN4
Text HLabel 2400 1750 0    50   Input ~ 0
PWM_A
Text HLabel 2400 2550 0    50   Input ~ 0
PWM_B
$Comp
L Driver_Motor:DRV8837C U6
U 1 1 61623F54
P 4650 3100
F 0 "U6" H 4650 2511 50  0000 C CNN
F 1 "DRV8837C" H 4650 2420 50  0000 C CNN
F 2 "Package_SON:WSON-8-1EP_2x2mm_P0.5mm_EP0.9x1.6mm" H 4650 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/drv8837c.pdf" H 4650 3100 50  0001 C CNN
	1    4650 3100
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:DRV8837C U7
U 1 1 6162467C
P 4650 1400
F 0 "U7" H 4650 811 50  0000 C CNN
F 1 "DRV8837C" H 4650 720 50  0000 C CNN
F 2 "Package_SON:WSON-8-1EP_2x2mm_P0.5mm_EP0.9x1.6mm" H 4650 550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/drv8837c.pdf" H 4650 1400 50  0001 C CNN
	1    4650 1400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U3
U 1 1 61640DB0
P 3100 1500
F 0 "U3" H 3100 1825 50  0000 C CNN
F 1 "74LS08" H 3100 1734 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 3100 1500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 3100 1500 50  0001 C CNN
	1    3100 1500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U3
U 2 1 616444B9
P 3100 1950
F 0 "U3" H 3100 2275 50  0000 C CNN
F 1 "74LS08" H 3100 2184 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 3100 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 3100 1950 50  0001 C CNN
	2    3100 1950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U3
U 3 1 616454A9
P 3100 2350
F 0 "U3" H 3100 2675 50  0000 C CNN
F 1 "74LS08" H 3100 2584 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 3100 2350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 3100 2350 50  0001 C CNN
	3    3100 2350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U3
U 4 1 61646528
P 3100 2750
F 0 "U3" H 3100 3075 50  0000 C CNN
F 1 "74LS08" H 3100 2984 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 3100 2750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 3100 2750 50  0001 C CNN
	4    3100 2750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U3
U 5 1 61647348
P 1100 2200
F 0 "U3" H 1330 2246 50  0000 L CNN
F 1 "74LS08" H 1330 2155 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 1100 2200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 1100 2200 50  0001 C CNN
	5    1100 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1400 2800 1400
Wire Wire Line
	2400 2050 2800 2050
Wire Wire Line
	2800 1600 2700 1600
Wire Wire Line
	2700 1600 2700 1750
Wire Wire Line
	2700 1850 2800 1850
Wire Wire Line
	2400 1750 2700 1750
Connection ~ 2700 1750
Wire Wire Line
	2700 1750 2700 1850
Wire Wire Line
	2400 2250 2800 2250
Wire Wire Line
	2400 2850 2800 2850
Wire Wire Line
	2800 2450 2700 2450
Wire Wire Line
	2700 2450 2700 2550
Wire Wire Line
	2700 2650 2800 2650
Wire Wire Line
	2400 2550 2700 2550
Connection ~ 2700 2550
Wire Wire Line
	2700 2550 2700 2650
$Comp
L power:GND #PWR0106
U 1 1 61660824
P 1100 2850
F 0 "#PWR0106" H 1100 2600 50  0001 C CNN
F 1 "GND" H 1105 2677 50  0000 C CNN
F 2 "" H 1100 2850 50  0001 C CNN
F 3 "" H 1100 2850 50  0001 C CNN
	1    1100 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1500 3750 1500
Wire Wire Line
	3750 1500 3750 1400
Wire Wire Line
	3750 1400 4250 1400
Wire Wire Line
	3400 1950 3900 1950
Wire Wire Line
	3900 1950 3900 1500
Wire Wire Line
	3900 1500 4250 1500
Wire Wire Line
	3400 2750 3750 2750
Wire Wire Line
	3750 2750 3750 3200
Wire Wire Line
	3750 3200 4250 3200
Wire Wire Line
	3400 2350 3900 2350
Wire Wire Line
	3900 2350 3900 3100
Wire Wire Line
	3900 3100 4250 3100
Text HLabel 2400 850  0    50   Input ~ 0
EN
Wire Wire Line
	2400 850  4050 850 
Wire Wire Line
	4050 850  4050 1300
Wire Wire Line
	4050 1300 4250 1300
Wire Wire Line
	4050 1300 4050 3000
Wire Wire Line
	4050 3000 4250 3000
Connection ~ 4050 1300
Text Label 3450 1500 0    50   ~ 0
OUT1
Text Label 3450 1950 0    50   ~ 0
OUT2
Text Label 3450 2350 0    50   ~ 0
OUT3
Text Label 3450 2750 0    50   ~ 0
OUT4
Wire Wire Line
	1100 1600 1100 1700
Wire Wire Line
	1100 2700 1100 2850
Text Label 5200 1100 0    50   ~ 0
+M1
Text Label 5200 1700 0    50   ~ 0
-M1
Text Label 5200 2800 0    50   ~ 0
+M2
Text Label 5200 3400 0    50   ~ 0
-M2
Wire Wire Line
	5050 1100 5200 1100
Wire Wire Line
	5050 1700 5200 1700
Wire Wire Line
	5050 2800 5200 2800
Wire Wire Line
	5050 3400 5200 3400
$Comp
L power:VCC #PWR0107
U 1 1 6163AB7D
P 4000 700
F 0 "#PWR0107" H 4000 550 50  0001 C CNN
F 1 "VCC" H 4015 873 50  0000 C CNN
F 2 "" H 4000 700 50  0001 C CNN
F 3 "" H 4000 700 50  0001 C CNN
	1    4000 700 
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0108
U 1 1 6163C3B1
P 4250 700
F 0 "#PWR0108" H 4250 550 50  0001 C CNN
F 1 "+BATT" H 4265 873 50  0000 C CNN
F 2 "" H 4250 700 50  0001 C CNN
F 3 "" H 4250 700 50  0001 C CNN
	1    4250 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 700  4250 750 
Wire Wire Line
	4250 750  4650 750 
Wire Wire Line
	4650 750  4650 900 
Wire Wire Line
	4000 700  4000 800 
Wire Wire Line
	4000 800  4100 800 
Wire Wire Line
	4550 800  4550 900 
Wire Wire Line
	4100 800  4100 2500
Wire Wire Line
	4100 2500 4550 2500
Wire Wire Line
	4550 2500 4550 2600
Connection ~ 4100 800 
Wire Wire Line
	4100 800  4550 800 
Wire Wire Line
	4250 750  4200 750 
Wire Wire Line
	4200 750  4200 2400
Wire Wire Line
	4200 2400 4650 2400
Wire Wire Line
	4650 2400 4650 2600
Connection ~ 4250 750 
$Comp
L power:VCC #PWR0105
U 1 1 61698F37
P 1100 1600
F 0 "#PWR0105" H 1100 1450 50  0001 C CNN
F 1 "VCC" H 1115 1773 50  0000 C CNN
F 2 "" H 1100 1600 50  0001 C CNN
F 3 "" H 1100 1600 50  0001 C CNN
	1    1100 1600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
