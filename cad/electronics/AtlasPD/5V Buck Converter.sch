EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Atlas Power Board"
Date "2021-10-08"
Rev "0.2"
Comp ""
Comment1 "Manpreet Singh"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LM2678T-ADJ/NOPB:LM2678T-ADJ_NOPB U402
U 1 1 60A2CC5E
P 4000 1900
F 0 "U402" H 4000 2367 50  0000 C CNN
F 1 "LM2678S-ADJ_NOPB" H 4000 2276 50  0000 C CNN
F 2 "SamacSys_Parts:TO127P1435X464-8N" H 4000 1900 50  0001 L BNN
F 3 "" H 4000 1900 50  0001 L BNN
F 4 "TEXAS INSTRUMENTS" H 4000 1900 50  0001 L BNN "MANUFACTURER"
F 5 "LM2678S-5.0/NOPB-ND" H 4000 1900 50  0001 C CNN "Digikey Part #"
	1    4000 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C402
U 1 1 60A2CC64
P 2450 2100
F 0 "C402" H 2565 2146 50  0000 L CNN
F 1 "10uF" H 2565 2055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2488 1950 50  0001 C CNN
F 3 "~" H 2450 2100 50  0001 C CNN
	1    2450 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C405
U 1 1 60A2CC6A
P 5950 2150
F 0 "C405" H 6065 2196 50  0000 L CNN
F 1 "10uF" H 6065 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5988 2000 50  0001 C CNN
F 3 "~" H 5950 2150 50  0001 C CNN
	1    5950 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C401
U 1 1 60A2CC70
P 2050 2100
F 0 "C401" H 2165 2146 50  0000 L CNN
F 1 "220uF" H 2165 2055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2050 2100 50  0001 C CNN
F 3 "~" H 2050 2100 50  0001 C CNN
	1    2050 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C406
U 1 1 60A2CC76
P 6300 2150
F 0 "C406" H 6415 2196 50  0000 L CNN
F 1 "1000uF" H 6415 2105 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P3.50mm" H 6300 2150 50  0001 C CNN
F 3 "~" H 6300 2150 50  0001 C CNN
	1    6300 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D401
U 1 1 60A2CC7C
P 5050 2150
F 0 "D401" V 5004 2230 50  0000 L CNN
F 1 "D_Schottky" V 5095 2230 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-128" H 5050 2150 50  0001 C CNN
F 3 "~" H 5050 2150 50  0001 C CNN
	1    5050 2150
	0    1    1    0   
$EndComp
$Comp
L Device:R R401
U 1 1 60A2CC82
P 7250 1950
F 0 "R401" H 7320 1996 50  0000 L CNN
F 1 "3.16k" H 7320 1905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7180 1950 50  0001 C CNN
F 3 "~" H 7250 1950 50  0001 C CNN
F 4 "RMCF0805FT3K16CT-ND" H 7250 1950 50  0001 C CNN "Digikey Part #"
	1    7250 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R402
U 1 1 60A2CC88
P 7250 2400
F 0 "R402" H 7320 2446 50  0000 L CNN
F 1 "1k" H 7320 2355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7180 2400 50  0001 C CNN
F 3 "~" H 7250 2400 50  0001 C CNN
F 4 "RMCF0805FT1K00CT-ND" H 7250 2400 50  0001 C CNN "Digikey Part #"
	1    7250 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:L L401
U 1 1 60A2CC94
P 5300 1700
F 0 "L401" V 5490 1700 50  0000 C CNN
F 1 "22 uH" V 5399 1700 50  0000 C CNN
F 2 "Inductor_SMD:L_TDK_NLV32_3.2x2.5mm" H 5300 1700 50  0001 C CNN
F 3 "~" H 5300 1700 50  0001 C CNN
F 4 "308-1335-1-ND" H 5300 1700 50  0001 C CNN "Digikey Part #"
	1    5300 1700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0402
U 1 1 60A2CC9B
P 1650 2700
F 0 "#PWR0402" H 1650 2450 50  0001 C CNN
F 1 "GND" H 1655 2527 50  0000 C CNN
F 2 "" H 1650 2700 50  0001 C CNN
F 3 "" H 1650 2700 50  0001 C CNN
	1    1650 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 1950 2050 1700
Connection ~ 2050 1700
Wire Wire Line
	2050 1700 2450 1700
Wire Wire Line
	2450 1950 2450 1700
Connection ~ 2450 1700
Wire Wire Line
	2450 1700 3300 1700
Wire Wire Line
	2050 2250 2050 2650
Wire Wire Line
	2050 2650 1650 2650
Wire Wire Line
	1650 2650 1650 2700
Wire Wire Line
	2050 2650 2450 2650
Wire Wire Line
	2450 2650 2450 2250
Connection ~ 2050 2650
Wire Wire Line
	4700 2100 4700 2650
Wire Wire Line
	4700 2650 2450 2650
Connection ~ 2450 2650
Wire Wire Line
	4700 1700 5050 1700
Wire Wire Line
	5450 1700 5950 1700
Wire Wire Line
	7250 1700 7250 1800
Wire Wire Line
	5950 2000 5950 1700
Connection ~ 5950 1700
Wire Wire Line
	5950 1700 6300 1700
Wire Wire Line
	6300 2000 6300 1700
Connection ~ 6300 1700
Wire Wire Line
	6300 1700 7250 1700
Wire Wire Line
	5050 2000 5050 1700
Connection ~ 5050 1700
Wire Wire Line
	5050 1700 5150 1700
Wire Wire Line
	5050 2300 5050 2650
Wire Wire Line
	5050 2650 4700 2650
Connection ~ 4700 2650
Wire Wire Line
	5950 2300 5950 2650
Wire Wire Line
	5950 2650 5050 2650
Connection ~ 5050 2650
Wire Wire Line
	6300 2300 6300 2650
Wire Wire Line
	6300 2650 5950 2650
Connection ~ 5950 2650
Wire Wire Line
	7250 2550 7250 2650
Wire Wire Line
	7250 2650 6300 2650
Connection ~ 6300 2650
$Comp
L Device:C C404
U 1 1 60A2CCCA
P 3850 1200
F 0 "C404" V 3598 1200 50  0000 C CNN
F 1 "10uF" V 3689 1200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3888 1050 50  0001 C CNN
F 3 "~" H 3850 1200 50  0001 C CNN
	1    3850 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 2200 6950 2200
Wire Wire Line
	6950 2200 6950 2400
Wire Wire Line
	6950 2400 3300 2400
Wire Wire Line
	3300 2400 3300 2100
Wire Wire Line
	7250 2100 7250 2200
Connection ~ 7250 2200
Wire Wire Line
	7250 2200 7250 2250
Wire Wire Line
	3300 2000 3100 2000
Wire Wire Line
	3100 2000 3100 1200
Wire Wire Line
	3100 1200 3700 1200
Wire Wire Line
	4000 1200 5050 1200
Wire Wire Line
	5050 1200 5050 1700
$Comp
L Device:R R403
U 1 1 60A2CCE3
P 7800 2400
F 0 "R403" H 7870 2446 50  0000 L CNN
F 1 "1k" H 7870 2355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7730 2400 50  0001 C CNN
F 3 "~" H 7800 2400 50  0001 C CNN
F 4 "RMCF0805FT1K00CT-ND" H 7800 2400 50  0001 C CNN "Digikey Part #"
	1    7800 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D402
U 1 1 60A2CCE9
P 7800 1950
F 0 "D402" V 7839 1832 50  0000 R CNN
F 1 "LED" V 7748 1832 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 7800 1950 50  0001 C CNN
F 3 "~" H 7800 1950 50  0001 C CNN
	1    7800 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7250 1700 7800 1700
Wire Wire Line
	7800 1700 7800 1800
Connection ~ 7250 1700
Wire Wire Line
	7800 2100 7800 2250
Wire Wire Line
	7800 2550 7800 2650
Wire Wire Line
	7800 2650 7250 2650
Connection ~ 7250 2650
Text Notes 2750 1200 2    118  ~ 24
5V Buck Converter
NoConn ~ 3300 1800
$Comp
L power:+5V #PWR0410
U 1 1 615F3821
P 7800 1600
F 0 "#PWR0410" H 7800 1450 50  0001 C CNN
F 1 "+5V" H 7815 1773 50  0000 C CNN
F 2 "" H 7800 1600 50  0001 C CNN
F 3 "" H 7800 1600 50  0001 C CNN
	1    7800 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 1600 7800 1700
Connection ~ 7800 1700
$Comp
L Regulator_Linear:AMS1117-3.3 U401
U 1 1 616268E3
P 2150 4200
F 0 "U401" H 2150 4442 50  0000 C CNN
F 1 "AMS1117-3.3" H 2150 4351 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2150 4400 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 2250 3950 50  0001 C CNN
	1    2150 4200
	1    0    0    -1  
$EndComp
Text Notes 1100 3450 0    118  ~ 24
3.3V LDO
$Comp
L power:+5V #PWR0403
U 1 1 6162A464
P 1700 3800
F 0 "#PWR0403" H 1700 3650 50  0001 C CNN
F 1 "+5V" H 1715 3973 50  0000 C CNN
F 2 "" H 1700 3800 50  0001 C CNN
F 3 "" H 1700 3800 50  0001 C CNN
	1    1700 3800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0405
U 1 1 6162B28C
P 2550 3800
F 0 "#PWR0405" H 2550 3650 50  0001 C CNN
F 1 "+3.3V" H 2565 3973 50  0000 C CNN
F 2 "" H 2550 3800 50  0001 C CNN
F 3 "" H 2550 3800 50  0001 C CNN
	1    2550 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0404
U 1 1 6162B9AF
P 2150 4550
F 0 "#PWR0404" H 2150 4300 50  0001 C CNN
F 1 "GND" H 2155 4377 50  0000 C CNN
F 2 "" H 2150 4550 50  0001 C CNN
F 3 "" H 2150 4550 50  0001 C CNN
	1    2150 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 4200 1850 4200
Wire Wire Line
	2450 4200 2550 4200
Wire Wire Line
	2150 4500 2150 4550
$Comp
L Device:C C403
U 1 1 6163B27F
P 2550 4350
F 0 "C403" H 2665 4396 50  0000 L CNN
F 1 "10uF" H 2665 4305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2588 4200 50  0001 C CNN
F 3 "~" H 2550 4350 50  0001 C CNN
F 4 "" H 2550 4350 50  0001 C CNN "LCSC Part #"
F 5 "C96446" H 2550 4350 50  0001 C CNN "LCSC"
	1    2550 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 3800 1700 4200
$Comp
L Device:Battery_Cell BT401
U 1 1 61621A89
P 1050 2050
F 0 "BT401" H 1168 2146 50  0000 L CNN
F 1 "Battery_Cell" H 1168 2055 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_1042_1x18650" V 1050 2110 50  0001 C CNN
F 3 "~" V 1050 2110 50  0001 C CNN
	1    1050 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT402
U 1 1 616223C5
P 1050 2350
F 0 "BT402" H 1168 2446 50  0000 L CNN
F 1 "Battery_Cell" H 1168 2355 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_1042_1x18650" V 1050 2410 50  0001 C CNN
F 3 "~" V 1050 2410 50  0001 C CNN
	1    1050 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1850 1050 1700
Wire Wire Line
	1050 1700 2050 1700
Wire Wire Line
	1050 2450 1050 2650
Wire Wire Line
	1050 2650 1650 2650
Connection ~ 1650 2650
$Comp
L power:+BATT #PWR0401
U 1 1 616386ED
P 1050 1550
F 0 "#PWR0401" H 1050 1400 50  0001 C CNN
F 1 "+BATT" H 1065 1723 50  0000 C CNN
F 2 "" H 1050 1550 50  0001 C CNN
F 3 "" H 1050 1550 50  0001 C CNN
	1    1050 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1550 1050 1700
Connection ~ 1050 1700
Connection ~ 2550 4200
Wire Wire Line
	2550 3800 2550 4200
Wire Wire Line
	2550 4500 2150 4500
Connection ~ 2150 4500
$Comp
L power:+5V #PWR0406
U 1 1 6168DE84
P 4450 4000
F 0 "#PWR0406" H 4450 3850 50  0001 C CNN
F 1 "+5V" V 4450 4200 50  0000 C CNN
F 2 "" H 4450 4000 50  0001 C CNN
F 3 "" H 4450 4000 50  0001 C CNN
	1    4450 4000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0407
U 1 1 6168E347
P 4450 4100
F 0 "#PWR0407" H 4450 3850 50  0001 C CNN
F 1 "GND" V 4450 3900 50  0000 C CNN
F 2 "" H 4450 4100 50  0001 C CNN
F 3 "" H 4450 4100 50  0001 C CNN
	1    4450 4100
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J401
U 1 1 616A0CC6
P 4650 4100
F 0 "J401" H 4730 4092 50  0000 L CNN
F 1 "Conn_01x04" H 4730 4001 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B4B-PH-K_1x04_P2.00mm_Vertical" H 4650 4100 50  0001 C CNN
F 3 "~" H 4650 4100 50  0001 C CNN
	1    4650 4100
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0408
U 1 1 616AC55C
P 4450 4200
F 0 "#PWR0408" H 4450 4050 50  0001 C CNN
F 1 "+BATT" V 4450 4450 50  0000 C CNN
F 2 "" H 4450 4200 50  0001 C CNN
F 3 "" H 4450 4200 50  0001 C CNN
	1    4450 4200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0409
U 1 1 616AD750
P 4450 4300
F 0 "#PWR0409" H 4450 4050 50  0001 C CNN
F 1 "GND" V 4450 4100 50  0000 C CNN
F 2 "" H 4450 4300 50  0001 C CNN
F 3 "" H 4450 4300 50  0001 C CNN
	1    4450 4300
	0    1    1    0   
$EndComp
Text Notes 3900 3450 0    118  ~ 24
Power Output Connector
Text Label 6550 2400 0    50   ~ 0
FEEDBACK
Text Label 5050 1200 0    50   ~ 0
SWITCH_OUT
Text Label 3100 1200 0    50   ~ 0
CB
$EndSCHEMATC
