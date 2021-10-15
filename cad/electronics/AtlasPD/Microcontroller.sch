EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
Title "Microcontroller Board"
Date ""
Rev "0.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_ATmega:ATmega328P-AU U2
U 1 1 615F5687
P 8050 2750
F 0 "U2" H 7650 2000 50  0000 C CNN
F 1 "ATmega328P-AU" H 7900 2100 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 8050 2750 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 8050 2750 50  0001 C CNN
	1    8050 2750
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_C_Receptacle_USB2.0 J2
U 1 1 615F7EF6
P 1350 1900
F 0 "J2" H 1457 2767 50  0000 C CNN
F 1 "USB_C_Receptacle_USB2.0" H 1457 2676 50  0000 C CNN
F 2 "Connector_USB:USB_C_Receptacle_HRO_TYPE-C-31-M-12" H 1500 1900 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 1500 1900 50  0001 C CNN
	1    1350 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1900 1950 1900
Wire Wire Line
	1950 2000 2100 2000
Wire Wire Line
	2100 2000 2100 2100
Wire Wire Line
	2100 2100 1950 2100
Text Label 2750 1800 2    50   ~ 0
USB_DN
Text Label 2450 2000 2    50   ~ 0
USB_DP
Wire Wire Line
	2450 2000 2100 2000
Connection ~ 2100 2000
$Comp
L power:GND #PWR02
U 1 1 615FDD6B
P 1350 2900
F 0 "#PWR02" H 1350 2650 50  0001 C CNN
F 1 "GND" H 1355 2727 50  0000 C CNN
F 2 "" H 1350 2900 50  0001 C CNN
F 3 "" H 1350 2900 50  0001 C CNN
	1    1350 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 2800 1350 2900
$Comp
L power:+5V #PWR07
U 1 1 615FE889
P 2150 1100
F 0 "#PWR07" H 2150 950 50  0001 C CNN
F 1 "+5V" H 2165 1273 50  0000 C CNN
F 2 "" H 2150 1100 50  0001 C CNN
F 3 "" H 2150 1100 50  0001 C CNN
	1    2150 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1300 2150 1300
Wire Wire Line
	2150 1300 2150 1100
NoConn ~ 1950 2400
NoConn ~ 1950 2500
$Comp
L Device:R_Small R3
U 1 1 6160033E
P 2550 1600
F 0 "R3" V 2550 1600 50  0000 C CNN
F 1 "5.11K" V 2600 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2550 1600 50  0001 C CNN
F 3 "~" H 2550 1600 50  0001 C CNN
	1    2550 1600
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 61600F72
P 2550 1500
F 0 "R2" V 2550 1500 50  0000 C CNN
F 1 "5.11K" V 2500 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2550 1500 50  0001 C CNN
F 3 "~" H 2550 1500 50  0001 C CNN
	1    2550 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 1600 2900 1600
Wire Wire Line
	2900 1600 2900 1500
Wire Wire Line
	2900 1500 2650 1500
$Comp
L power:GND #PWR08
U 1 1 616032B8
P 2900 1650
F 0 "#PWR08" H 2900 1400 50  0001 C CNN
F 1 "GND" H 2905 1477 50  0000 C CNN
F 2 "" H 2900 1650 50  0001 C CNN
F 3 "" H 2900 1650 50  0001 C CNN
	1    2900 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1650 2900 1600
Connection ~ 2900 1600
NoConn ~ 5500 1050
NoConn ~ 4600 2350
NoConn ~ 4600 2450
NoConn ~ 6000 1350
NoConn ~ 6000 1450
NoConn ~ 6000 1650
NoConn ~ 6000 2150
NoConn ~ 6000 2250
Text Label 4150 1850 0    50   ~ 0
USB_DN
Text Label 4150 1950 0    50   ~ 0
USB_DP
Wire Wire Line
	4600 1850 4150 1850
Wire Wire Line
	4600 1950 4150 1950
$Comp
L power:+5V #PWR015
U 1 1 61616B15
P 4500 1550
F 0 "#PWR015" H 4500 1400 50  0001 C CNN
F 1 "+5V" H 4515 1723 50  0000 C CNN
F 2 "" H 4500 1550 50  0001 C CNN
F 3 "" H 4500 1550 50  0001 C CNN
	1    4500 1550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 61617CDC
P 5350 3200
F 0 "#PWR017" H 5350 2950 50  0001 C CNN
F 1 "GND" H 5355 3027 50  0000 C CNN
F 2 "" H 5350 3200 50  0001 C CNN
F 3 "" H 5350 3200 50  0001 C CNN
	1    5350 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 1050 5300 950 
Wire Wire Line
	5300 950  5100 950 
Wire Wire Line
	5100 1050 5100 950 
Connection ~ 5100 950 
Wire Wire Line
	5100 950  4350 950 
Wire Wire Line
	4600 1350 4350 1350
$Comp
L power:+3.3V #PWR016
U 1 1 61620247
P 5100 850
F 0 "#PWR016" H 5100 700 50  0001 C CNN
F 1 "+3.3V" H 5115 1023 50  0000 C CNN
F 2 "" H 5100 850 50  0001 C CNN
F 3 "" H 5100 850 50  0001 C CNN
	1    5100 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1550 4600 1550
$Comp
L Device:LED_Small D3
U 1 1 6162EBE7
P 3850 2050
F 0 "D3" V 3896 1980 50  0000 R CNN
F 1 "RED" V 3805 1980 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 3850 2050 50  0001 C CNN
F 3 "~" V 3850 2050 50  0001 C CNN
	1    3850 2050
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D2
U 1 1 616307F8
P 3700 2150
F 0 "D2" V 3650 2300 50  0000 R CNN
F 1 "RED" V 3550 2300 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 3700 2150 50  0001 C CNN
F 3 "~" V 3700 2150 50  0001 C CNN
	1    3700 2150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 616320EF
P 4100 2250
F 0 "R5" V 4100 2250 50  0000 C CNN
F 1 "1K" V 4150 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4100 2250 50  0001 C CNN
F 3 "~" H 4100 2250 50  0001 C CNN
	1    4100 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 61632B2E
P 4300 2150
F 0 "R6" V 4300 2150 50  0000 C CNN
F 1 "1K" V 4250 2300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4300 2150 50  0001 C CNN
F 3 "~" H 4300 2150 50  0001 C CNN
	1    4300 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 2150 4400 2150
Wire Wire Line
	4200 2150 3850 2150
Wire Wire Line
	3700 2250 4000 2250
Wire Wire Line
	4200 2250 4600 2250
$Comp
L power:+5V #PWR010
U 1 1 61634D5E
P 3700 1850
F 0 "#PWR010" H 3700 1700 50  0001 C CNN
F 1 "+5V" H 3715 2023 50  0000 C CNN
F 2 "" H 3700 1850 50  0001 C CNN
F 3 "" H 3700 1850 50  0001 C CNN
	1    3700 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2050 3700 1950
Wire Wire Line
	3850 1950 3700 1950
Connection ~ 3700 1950
Wire Wire Line
	3700 1950 3700 1850
Wire Wire Line
	4350 1350 4350 950 
Wire Wire Line
	4350 2650 4600 2650
Wire Wire Line
	4350 3000 4350 2950
Wire Wire Line
	4350 2650 4350 2750
$Comp
L Device:C_Small C2
U 1 1 6161AC35
P 4350 2850
F 0 "C2" H 4258 2804 50  0000 R CNN
F 1 "10uF" H 4258 2895 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4350 2850 50  0001 C CNN
F 3 "~" H 4350 2850 50  0001 C CNN
	1    4350 2850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 61618BD2
P 4350 3000
F 0 "#PWR012" H 4350 2750 50  0001 C CNN
F 1 "GND" H 4355 2827 50  0000 C CNN
F 2 "" H 4350 3000 50  0001 C CNN
F 3 "" H 4350 3000 50  0001 C CNN
	1    4350 3000
	1    0    0    -1  
$EndComp
$Comp
L Interface_USB:CP2104 U1
U 1 1 61606FDD
P 5300 1950
F 0 "U1" H 5800 1100 50  0000 C CNN
F 1 "CP2104" H 4900 1100 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_4x4mm_P0.5mm_EP2.6x2.6mm" H 5450 1000 50  0001 L CNN
F 3 "https://www.silabs.com/documents/public/data-sheets/cp2104.pdf" H 4750 3200 50  0001 C CNN
	1    5300 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 950  4350 950 
Wire Wire Line
	4100 1300 4100 1250
Wire Wire Line
	4100 950  4100 1050
$Comp
L Device:C_Small C1
U 1 1 61642FEF
P 4100 1150
F 0 "C1" H 4300 1100 50  0000 R CNN
F 1 "0.1uF" H 4400 1200 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4100 1150 50  0001 C CNN
F 3 "~" H 4100 1150 50  0001 C CNN
	1    4100 1150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 61642FF9
P 4100 1300
F 0 "#PWR011" H 4100 1050 50  0001 C CNN
F 1 "GND" H 4105 1127 50  0000 C CNN
F 2 "" H 4100 1300 50  0001 C CNN
F 3 "" H 4100 1300 50  0001 C CNN
	1    4100 1300
	1    0    0    -1  
$EndComp
Connection ~ 4350 950 
NoConn ~ 6000 2450
NoConn ~ 6000 2550
NoConn ~ 6000 2650
Text Label 6300 1550 2    50   ~ 0
DTR
Text Label 6300 1950 2    50   ~ 0
TXD
Text Label 6300 1850 2    50   ~ 0
RXD
Wire Wire Line
	6000 1550 6300 1550
Wire Wire Line
	6000 1850 6300 1850
Wire Wire Line
	6000 1950 6300 1950
Wire Wire Line
	5300 2950 5300 3050
Wire Wire Line
	5300 3050 5350 3050
Wire Wire Line
	5400 3050 5400 2950
Wire Wire Line
	5350 3200 5350 3050
Connection ~ 5350 3050
Wire Wire Line
	5350 3050 5400 3050
Wire Wire Line
	5100 850  5100 950 
Text Label 8800 2950 0    50   ~ 0
AD5_SCL
Text Label 8800 2850 0    50   ~ 0
AD4_SDA
Text Label 8800 2750 0    50   ~ 0
AD3
Text Label 8800 2650 0    50   ~ 0
AD2
Text Label 8800 2550 0    50   ~ 0
AD1
Text Label 8800 2450 0    50   ~ 0
AD0
Wire Wire Line
	8650 2450 8800 2450
Wire Wire Line
	8650 2550 8800 2550
Wire Wire Line
	8650 2650 8800 2650
Wire Wire Line
	8650 2750 8800 2750
Wire Wire Line
	8650 2850 8800 2850
Wire Wire Line
	8650 2950 8800 2950
Text Label 8800 3250 0    50   ~ 0
IO0
Text Label 8800 3450 0    50   ~ 0
IO2
Text Label 8800 3550 0    50   ~ 0
IO3
Text Label 8800 3650 0    50   ~ 0
IO4
Text Label 8800 3750 0    50   ~ 0
IO5
Text Label 8800 3850 0    50   ~ 0
IO6
Text Label 8800 3950 0    50   ~ 0
IO7
Text Label 8800 1550 0    50   ~ 0
IO8
Text Label 8800 1650 0    50   ~ 0
IO9
$Comp
L power:+5V #PWR01
U 1 1 61687643
P 1100 5950
F 0 "#PWR01" H 1100 5800 50  0001 C CNN
F 1 "+5V" H 1115 6123 50  0000 C CNN
F 2 "" H 1100 5950 50  0001 C CNN
F 3 "" H 1100 5950 50  0001 C CNN
	1    1100 5950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR04
U 1 1 61688274
P 1600 5950
F 0 "#PWR04" H 1600 5800 50  0001 C CNN
F 1 "+3.3V" H 1615 6123 50  0000 C CNN
F 2 "" H 1600 5950 50  0001 C CNN
F 3 "" H 1600 5950 50  0001 C CNN
	1    1600 5950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR03
U 1 1 6168E0AB
P 1350 5850
F 0 "#PWR03" H 1350 5700 50  0001 C CNN
F 1 "VCC" H 1365 6023 50  0000 C CNN
F 2 "" H 1350 5850 50  0001 C CNN
F 3 "" H 1350 5850 50  0001 C CNN
	1    1350 5850
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP1
U 1 1 6169124D
P 1350 6000
F 0 "JP1" H 1350 6113 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 1350 6204 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P2.0mm_Open_TrianglePad1.0x1.5mm" H 1350 6000 50  0001 C CNN
F 3 "~" H 1350 6000 50  0001 C CNN
	1    1350 6000
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 6000 1600 6000
Wire Wire Line
	1600 6000 1600 5950
Wire Wire Line
	1100 5950 1100 6000
Wire Wire Line
	1100 6000 1150 6000
$Comp
L power:VCC #PWR019
U 1 1 6169CD10
P 8100 950
F 0 "#PWR019" H 8100 800 50  0001 C CNN
F 1 "VCC" H 8115 1123 50  0000 C CNN
F 2 "" H 8100 950 50  0001 C CNN
F 3 "" H 8100 950 50  0001 C CNN
	1    8100 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 6169DE72
P 8650 1100
F 0 "C3" H 8850 1050 50  0000 R CNN
F 1 "0.1uF" H 8950 1150 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8650 1100 50  0001 C CNN
F 3 "~" H 8650 1100 50  0001 C CNN
	1    8650 1100
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C4
U 1 1 6169F1EF
P 8950 1100
F 0 "C4" H 9150 1050 50  0000 R CNN
F 1 "0.1uF" H 8850 1150 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8950 1100 50  0001 C CNN
F 3 "~" H 8950 1100 50  0001 C CNN
	1    8950 1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	8100 950  8250 950 
Connection ~ 8100 950 
Wire Wire Line
	7950 1250 8050 1250
Wire Wire Line
	8150 1250 8250 1250
$Comp
L power:GND #PWR018
U 1 1 616A8BEE
P 8050 4300
F 0 "#PWR018" H 8050 4050 50  0001 C CNN
F 1 "GND" H 8055 4127 50  0000 C CNN
F 2 "" H 8050 4300 50  0001 C CNN
F 3 "" H 8050 4300 50  0001 C CNN
	1    8050 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 4250 8050 4300
Wire Wire Line
	7450 1550 7400 1550
NoConn ~ 7450 1750
NoConn ~ 7450 1850
Wire Wire Line
	9950 2150 10150 2150
Wire Wire Line
	10150 2150 10150 2250
$Comp
L power:GND #PWR021
U 1 1 616C1378
P 10150 2250
F 0 "#PWR021" H 10150 2000 50  0001 C CNN
F 1 "GND" H 10155 2077 50  0000 C CNN
F 2 "" H 10150 2250 50  0001 C CNN
F 3 "" H 10150 2250 50  0001 C CNN
	1    10150 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 3450 8800 3450
Wire Wire Line
	8650 3550 8800 3550
Wire Wire Line
	8650 3650 8800 3650
Wire Wire Line
	8650 3750 8800 3750
Wire Wire Line
	8650 3850 8800 3850
Wire Wire Line
	8650 3950 8800 3950
Wire Wire Line
	8650 2050 8800 2050
Wire Wire Line
	8650 1950 8800 1950
Wire Wire Line
	8650 1850 8800 1850
Wire Wire Line
	8650 1750 8800 1750
Wire Wire Line
	8650 1650 8800 1650
Wire Wire Line
	8650 1550 8800 1550
$Comp
L Device:Resonator_Small Y1
U 1 1 616F5A36
P 9750 2150
F 0 "Y1" V 9800 2400 50  0000 C CNN
F 1 "CSTNE16M0V53-R0" V 9700 2650 50  0000 C CNN
F 2 "SamacSys_Parts:CSTNE16M0V530000R0" H 9725 2150 50  0001 C CNN
F 3 "~" H 9725 2150 50  0001 C CNN
	1    9750 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8650 2150 9550 2150
Wire Wire Line
	9550 2150 9550 2050
Wire Wire Line
	9550 2050 9650 2050
$Comp
L power:GND #PWR022
U 1 1 61703581
P 10700 3050
F 0 "#PWR022" H 10700 2800 50  0001 C CNN
F 1 "GND" H 10705 2877 50  0000 C CNN
F 2 "" H 10700 3050 50  0001 C CNN
F 3 "" H 10700 3050 50  0001 C CNN
	1    10700 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10550 3050 10700 3050
$Comp
L Device:R_Small R9
U 1 1 6170B714
P 9650 2800
F 0 "R9" V 9650 2850 50  0000 R CNN
F 1 "10K" H 9850 2800 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9650 2800 50  0001 C CNN
F 3 "~" H 9650 2800 50  0001 C CNN
	1    9650 2800
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C5
U 1 1 617187A2
P 9850 2800
F 0 "C5" H 9942 2846 50  0000 L CNN
F 1 "0.1uF" H 9942 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9850 2800 50  0001 C CNN
F 3 "~" H 9850 2800 50  0001 C CNN
	1    9850 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 2900 9850 3050
Connection ~ 9850 3050
Wire Wire Line
	9650 2900 9650 3050
Connection ~ 9650 3050
Wire Wire Line
	9650 3050 9850 3050
$Comp
L power:VCC #PWR020
U 1 1 617246AC
P 9650 2650
F 0 "#PWR020" H 9650 2500 50  0001 C CNN
F 1 "VCC" H 9665 2823 50  0000 C CNN
F 2 "" H 9650 2650 50  0001 C CNN
F 3 "" H 9650 2650 50  0001 C CNN
	1    9650 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 2650 9650 2700
Wire Wire Line
	9850 2700 9850 2650
Wire Wire Line
	9850 2650 10100 2650
Text Label 10100 2650 2    50   ~ 0
DTR
Text Label 9550 3350 2    50   ~ 0
TXD
Text Label 8800 3350 0    50   ~ 0
IO1
Text Label 9550 3250 2    50   ~ 0
RXD
Wire Wire Line
	8650 3050 9650 3050
$Comp
L Device:R_Small R8
U 1 1 6172F4AE
P 9250 3250
F 0 "R8" V 9250 3250 50  0000 C CNN
F 1 "1K" V 9150 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9250 3250 50  0001 C CNN
F 3 "~" H 9250 3250 50  0001 C CNN
	1    9250 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 3250 9150 3250
Wire Wire Line
	9350 3250 9550 3250
Wire Wire Line
	8650 3350 9550 3350
Text HLabel 9750 6250 2    50   Input ~ 0
IN_1
Text HLabel 9750 6150 2    50   Input ~ 0
IN_2
Text HLabel 9750 6050 2    50   Input ~ 0
PWM_A
Text HLabel 9750 5950 2    50   Input ~ 0
IN_3
Text HLabel 9750 5850 2    50   Input ~ 0
IN_4
Text HLabel 9750 5750 2    50   Input ~ 0
PWM_B
Text HLabel 9750 5650 2    50   Input ~ 0
S1
Text HLabel 9750 5550 2    50   Input ~ 0
S2
Text HLabel 9750 5450 2    50   Input ~ 0
S3
Text HLabel 9750 5350 2    50   Input ~ 0
S4
Wire Wire Line
	9750 6250 9200 6250
Wire Wire Line
	9750 6150 9200 6150
Wire Wire Line
	9750 6050 9200 6050
Wire Wire Line
	9750 5950 9200 5950
Wire Wire Line
	9750 5850 9200 5850
Wire Wire Line
	9750 5750 9200 5750
Wire Wire Line
	9750 5650 9200 5650
Wire Wire Line
	9750 5550 9200 5550
Wire Wire Line
	9750 5450 9200 5450
Wire Wire Line
	9750 5350 9200 5350
Text Label 8800 1750 0    50   ~ 0
IO10_SS
Text Label 8800 1850 0    50   ~ 0
IO11_MOSI
Text Label 8800 1950 0    50   ~ 0
IO12_MISO
Text Label 8800 2050 0    50   ~ 0
IO13_SCK
Text Label 9200 6250 2    50   ~ 0
IO2
Text Label 9200 6150 2    50   ~ 0
IO3
Text Label 9200 6050 2    50   ~ 0
IO4
Text Label 9200 5950 2    50   ~ 0
IO5
Text Label 9200 5850 2    50   ~ 0
IO6
Text Label 9200 5750 2    50   ~ 0
IO7
Text Label 9200 5650 2    50   ~ 0
IO8
Text Label 9200 5550 2    50   ~ 0
IO9
Text Label 9200 5450 2    50   ~ 0
IO10_SS
Text Label 9200 5350 2    50   ~ 0
IO11_MOSI
$Comp
L Device:LED D1
U 1 1 617B9E36
P 3650 4750
F 0 "D1" V 3689 4632 50  0000 R CNN
F 1 "YELLOW" V 3598 4632 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 3650 4750 50  0001 C CNN
F 3 "~" H 3650 4750 50  0001 C CNN
	1    3650 4750
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D4
U 1 1 617BA40F
P 4350 4750
F 0 "D4" V 4389 4632 50  0000 R CNN
F 1 "GREEN" V 4298 4632 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 4350 4750 50  0001 C CNN
F 3 "~" H 4350 4750 50  0001 C CNN
	1    4350 4750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 617BA838
P 3650 5350
F 0 "#PWR09" H 3650 5100 50  0001 C CNN
F 1 "GND" H 3655 5177 50  0000 C CNN
F 2 "" H 3650 5350 50  0001 C CNN
F 3 "" H 3650 5350 50  0001 C CNN
	1    3650 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 617BABD3
P 4350 5350
F 0 "#PWR014" H 4350 5100 50  0001 C CNN
F 1 "GND" H 4355 5177 50  0000 C CNN
F 2 "" H 4350 5350 50  0001 C CNN
F 3 "" H 4350 5350 50  0001 C CNN
	1    4350 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 617BAEE8
P 3650 5150
F 0 "R4" H 3720 5196 50  0000 L CNN
F 1 "R" H 3720 5105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3580 5150 50  0001 C CNN
F 3 "~" H 3650 5150 50  0001 C CNN
	1    3650 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 617BB7BC
P 4350 5150
F 0 "R7" H 4420 5196 50  0000 L CNN
F 1 "R" H 4420 5105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4280 5150 50  0001 C CNN
F 3 "~" H 4350 5150 50  0001 C CNN
	1    4350 5150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR013
U 1 1 617BBB3A
P 4350 4300
F 0 "#PWR013" H 4350 4150 50  0001 C CNN
F 1 "+5V" H 4365 4473 50  0000 C CNN
F 2 "" H 4350 4300 50  0001 C CNN
F 3 "" H 4350 4300 50  0001 C CNN
	1    4350 4300
	1    0    0    -1  
$EndComp
Text Label 3650 4150 3    50   ~ 0
IO13_SCK
Wire Wire Line
	3650 4150 3650 4600
Wire Wire Line
	4350 4300 4350 4600
Wire Wire Line
	4350 4900 4350 5000
Wire Wire Line
	4350 5300 4350 5350
Wire Wire Line
	3650 5350 3650 5300
Wire Wire Line
	3650 5000 3650 4900
Wire Wire Line
	7400 950  7950 950 
Wire Wire Line
	7400 1550 7400 950 
Connection ~ 7950 950 
Wire Wire Line
	7950 950  8100 950 
$Comp
L Switch:SW_SPST SW1
U 1 1 61815A6D
P 10350 3050
F 0 "SW1" H 10350 3000 50  0000 C CNN
F 1 "SW_SPST" H 10350 3194 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 10350 3050 50  0001 C CNN
F 3 "~" H 10350 3050 50  0001 C CNN
	1    10350 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 3050 10150 3050
$Comp
L Device:R_Small R1
U 1 1 6182599D
P 2200 1900
F 0 "R1" V 2200 1900 50  0000 C CNN
F 1 "0" V 2150 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2200 1900 50  0001 C CNN
F 3 "~" H 2200 1900 50  0001 C CNN
	1    2200 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	1950 1800 2450 1800
Wire Wire Line
	2300 1900 2450 1900
Wire Wire Line
	2450 1900 2450 1800
Wire Wire Line
	2450 1800 2750 1800
Connection ~ 2450 1800
Wire Wire Line
	1950 1500 2450 1500
Wire Wire Line
	1950 1600 2450 1600
Wire Wire Line
	8650 2250 9650 2250
$Comp
L power:+5V #PWR05
U 1 1 616772F2
P 1750 4150
F 0 "#PWR05" H 1750 4000 50  0001 C CNN
F 1 "+5V" H 1765 4323 50  0000 C CNN
F 2 "" H 1750 4150 50  0001 C CNN
F 3 "" H 1750 4150 50  0001 C CNN
	1    1750 4150
	1    0    0    -1  
$EndComp
Text HLabel 9750 5250 2    50   Input ~ 0
EN_MTRS
Text Label 9150 5250 2    50   ~ 0
IO13_SCK
Wire Wire Line
	9150 5250 9750 5250
Wire Notes Line
	500  3550 6850 3550
Wire Notes Line
	500  5250 3200 5250
Wire Notes Line
	3200 6850 500  6850
Wire Notes Line
	3200 500  3200 6850
Wire Notes Line
	3200 6350 5300 6350
Wire Notes Line
	5300 6350 5300 3550
Wire Notes Line
	6850 4750 11200 4750
Wire Notes Line
	6850 500  6850 6450
Text Notes 500  3500 0    50   Italic 10
USB Type-C Connector
Text Notes 3250 3500 0    50   Italic 10
USB to UART Serial Bridge
Text Notes 6900 4700 0    50   Italic 10
ATMEGA328P Microcontroller
Text Notes 500  5200 0    50   Italic 10
Power Port
Text Notes 500  6800 0    50   Italic 10
IO Voltage Level Selector
Text Notes 3250 6300 0    50   Italic 10
Status LEDs
Text Notes 6900 6450 0    50   Italic 10
Design Block Interconnects
$Comp
L power:+BATT #PWR0102
U 1 1 616E2C85
P 1600 4400
F 0 "#PWR0102" H 1600 4250 50  0001 C CNN
F 1 "+BATT" H 1615 4573 50  0000 C CNN
F 2 "" H 1600 4400 50  0001 C CNN
F 3 "" H 1600 4400 50  0001 C CNN
	1    1600 4400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 6171DD7E
P 2050 4350
F 0 "J1" H 2130 4342 50  0000 L CNN
F 1 "Conn_01x04" H 2130 4251 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B4B-PH-K_1x04_P2.00mm_Vertical" H 2050 4350 50  0001 C CNN
F 3 "~" H 2050 4350 50  0001 C CNN
	1    2050 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 61722E0C
P 1750 4650
F 0 "#PWR0101" H 1750 4400 50  0001 C CNN
F 1 "GND" H 1755 4477 50  0000 C CNN
F 2 "" H 1750 4650 50  0001 C CNN
F 3 "" H 1750 4650 50  0001 C CNN
	1    1750 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 4150 1750 4250
Wire Wire Line
	1750 4250 1850 4250
Wire Wire Line
	1600 4400 1600 4450
Wire Wire Line
	1600 4450 1850 4450
Wire Wire Line
	1750 4650 1750 4550
Wire Wire Line
	1750 4550 1850 4550
Wire Wire Line
	1850 4350 1750 4350
Wire Wire Line
	1750 4350 1750 4550
Connection ~ 1750 4550
Wire Wire Line
	7950 950  7950 1250
Wire Wire Line
	8250 950  8250 1250
Wire Wire Line
	8250 950  8650 950 
Wire Wire Line
	8950 950  8950 1000
Connection ~ 8250 950 
Wire Wire Line
	8950 1200 8800 1200
Wire Wire Line
	8650 1000 8650 950 
Connection ~ 8650 950 
Wire Wire Line
	8650 950  8950 950 
$Comp
L power:GND #PWR0105
U 1 1 616E0BBD
P 8800 1200
F 0 "#PWR0105" H 8800 950 50  0001 C CNN
F 1 "GND" H 8805 1027 50  0000 C CNN
F 2 "" H 8800 1200 50  0001 C CNN
F 3 "" H 8800 1200 50  0001 C CNN
	1    8800 1200
	1    0    0    -1  
$EndComp
Connection ~ 8800 1200
Wire Wire Line
	8800 1200 8650 1200
NoConn ~ 1050 2800
$Comp
L Connector:TestPoint_Alt TP1
U 1 1 617127E7
P 10000 3650
F 0 "TP1" H 10058 3722 50  0000 L CNN
F 1 "TestPoint_Alt" H 10058 3677 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 10200 3650 50  0001 C CNN
F 3 "~" H 10200 3650 50  0001 C CNN
	1    10000 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Alt TP2
U 1 1 61713F79
P 10100 3650
F 0 "TP2" H 10158 3722 50  0000 L CNN
F 1 "TestPoint_Alt" H 10158 3677 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 10300 3650 50  0001 C CNN
F 3 "~" H 10300 3650 50  0001 C CNN
	1    10100 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Alt TP3
U 1 1 61714148
P 10200 3650
F 0 "TP3" H 10258 3722 50  0000 L CNN
F 1 "TestPoint_Alt" H 10258 3677 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 10400 3650 50  0001 C CNN
F 3 "~" H 10400 3650 50  0001 C CNN
	1    10200 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Alt TP4
U 1 1 61714471
P 10300 3650
F 0 "TP4" H 10358 3722 50  0000 L CNN
F 1 "TestPoint_Alt" H 10358 3677 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 10500 3650 50  0001 C CNN
F 3 "~" H 10500 3650 50  0001 C CNN
	1    10300 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Alt TP5
U 1 1 61714782
P 10400 3650
F 0 "TP5" H 10458 3722 50  0000 L CNN
F 1 "TestPoint_Alt" H 10458 3677 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 10600 3650 50  0001 C CNN
F 3 "~" H 10600 3650 50  0001 C CNN
	1    10400 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Alt TP6
U 1 1 617149A7
P 10500 3650
F 0 "TP6" H 10558 3722 50  0000 L CNN
F 1 "TestPoint_Alt" H 10558 3677 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 10700 3650 50  0001 C CNN
F 3 "~" H 10700 3650 50  0001 C CNN
	1    10500 3650
	1    0    0    -1  
$EndComp
Text Label 10800 4200 0    50   ~ 0
AD5_SCL
Text Label 10800 4100 0    50   ~ 0
AD4_SDA
Text Label 10800 4000 0    50   ~ 0
AD3
Text Label 10800 3900 0    50   ~ 0
AD2
Text Label 10800 3800 0    50   ~ 0
AD1
Text Label 10800 3700 0    50   ~ 0
AD0
Wire Wire Line
	10500 3650 10500 3700
Wire Wire Line
	10500 3700 10800 3700
Wire Wire Line
	10400 3650 10400 3800
Wire Wire Line
	10400 3800 10800 3800
Wire Wire Line
	10300 3650 10300 3900
Wire Wire Line
	10300 3900 10800 3900
Wire Wire Line
	10200 4000 10200 3650
Wire Wire Line
	10200 4000 10800 4000
Wire Wire Line
	10100 3650 10100 4100
Wire Wire Line
	10100 4100 10800 4100
Wire Wire Line
	10000 4200 10000 3650
Wire Wire Line
	10000 4200 10800 4200
$EndSCHEMATC
