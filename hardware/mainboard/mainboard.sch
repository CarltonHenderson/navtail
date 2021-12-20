EESchema Schematic File Version 4
LIBS:mainboard-cache
EELAYER 26 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Nav-Tail Communicator"
Date "2021-12-20"
Rev "0.2.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 "Ethan's Comments"
Comment4 "Dreadflint"
$EndDescr
$Comp
L Device:LED DRED1
U 1 1 61BE3269
P 1650 5300
F 0 "DRED1" H 1642 5045 50  0000 C CNN
F 1 "LED" H 1642 5136 50  0000 C CNN
F 2 "" H 1650 5300 50  0001 C CNN
F 3 "~" H 1650 5300 50  0001 C CNN
	1    1650 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:LED DYEL1
U 1 1 61BE3495
P 1650 5700
F 0 "DYEL1" H 1642 5445 50  0000 C CNN
F 1 "LED" H 1642 5536 50  0000 C CNN
F 2 "" H 1650 5700 50  0001 C CNN
F 3 "~" H 1650 5700 50  0001 C CNN
	1    1650 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:LED DBLU1
U 1 1 61BE399E
P 1650 6500
F 0 "DBLU1" H 1642 6245 50  0000 C CNN
F 1 "LED" H 1642 6336 50  0000 C CNN
F 2 "" H 1650 6500 50  0001 C CNN
F 3 "~" H 1650 6500 50  0001 C CNN
	1    1650 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED DGRN1
U 1 1 61BE39F4
P 1650 6100
F 0 "DGRN1" H 1642 5845 50  0000 C CNN
F 1 "LED" H 1642 5936 50  0000 C CNN
F 2 "" H 1650 6100 50  0001 C CNN
F 3 "~" H 1650 6100 50  0001 C CNN
	1    1650 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:LED DERR1
U 1 1 61BE4930
P 1650 6900
F 0 "DERR1" H 1642 6645 50  0000 C CNN
F 1 "LED" H 1642 6736 50  0000 C CNN
F 2 "" H 1650 6900 50  0001 C CNN
F 3 "~" H 1650 6900 50  0001 C CNN
	1    1650 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 61BE5850
P 1200 6900
F 0 "R1" V 993 6900 50  0000 C CNN
F 1 "R" V 1084 6900 50  0000 C CNN
F 2 "" V 1130 6900 50  0001 C CNN
F 3 "~" H 1200 6900 50  0001 C CNN
	1    1200 6900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 61BE5A1D
P 1200 6500
F 0 "R2" V 993 6500 50  0000 C CNN
F 1 "R" V 1084 6500 50  0000 C CNN
F 2 "" V 1130 6500 50  0001 C CNN
F 3 "~" H 1200 6500 50  0001 C CNN
	1    1200 6500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 61BE5A49
P 1200 6100
F 0 "R3" V 993 6100 50  0000 C CNN
F 1 "R" V 1084 6100 50  0000 C CNN
F 2 "" V 1130 6100 50  0001 C CNN
F 3 "~" H 1200 6100 50  0001 C CNN
	1    1200 6100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 61BE5A77
P 1200 5700
F 0 "R4" V 993 5700 50  0000 C CNN
F 1 "R" V 1084 5700 50  0000 C CNN
F 2 "" V 1130 5700 50  0001 C CNN
F 3 "~" H 1200 5700 50  0001 C CNN
	1    1200 5700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 61BE5AA7
P 1200 5300
F 0 "R5" V 993 5300 50  0000 C CNN
F 1 "R" V 1084 5300 50  0000 C CNN
F 2 "" V 1130 5300 50  0001 C CNN
F 3 "~" H 1200 5300 50  0001 C CNN
	1    1200 5300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4650 2850 2200 2850
Wire Wire Line
	4650 2950 2300 2950
Wire Wire Line
	1500 6900 1350 6900
Wire Wire Line
	1500 6500 1350 6500
Wire Wire Line
	1500 6100 1350 6100
Wire Wire Line
	1500 5700 1350 5700
Wire Wire Line
	1500 5300 1350 5300
$Comp
L Device:Battery_Cell BT-LIPO1
U 1 1 61BE7ABB
P 4150 2150
F 0 "BT-LIPO1" H 4268 2246 50  0000 L CNN
F 1 "Battery_Cell" H 4268 2155 50  0000 L CNN
F 2 "" V 4150 2210 50  0001 C CNN
F 3 "~" V 4150 2210 50  0001 C CNN
	1    4150 2150
	1    0    0    -1  
$EndComp
NoConn ~ 5650 2850
$Comp
L power:GND #PWR0101
U 1 1 61BEC851
P 5150 5050
F 0 "#PWR0101" H 5150 4800 50  0001 C CNN
F 1 "GND" H 5155 4877 50  0000 C CNN
F 2 "" H 5150 5050 50  0001 C CNN
F 3 "" H 5150 5050 50  0001 C CNN
	1    5150 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 4950 5150 5050
NoConn ~ 5650 3250
NoConn ~ 5650 3550
NoConn ~ 5650 3450
NoConn ~ 4650 3750
NoConn ~ 4650 3850
NoConn ~ 4650 3950
NoConn ~ 4650 4450
NoConn ~ 4650 4550
$Comp
L power:GND #PWR0102
U 1 1 61BF08CA
P 4150 2350
F 0 "#PWR0102" H 4150 2100 50  0001 C CNN
F 1 "GND" H 4155 2177 50  0000 C CNN
F 2 "" H 4150 2350 50  0001 C CNN
F 3 "" H 4150 2350 50  0001 C CNN
	1    4150 2350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW-RED1
U 1 1 61BF1126
P 7550 3950
F 0 "SW-RED1" H 7550 4235 50  0000 C CNN
F 1 "SW_Push" H 7550 4144 50  0000 C CNN
F 2 "" H 7550 4150 50  0001 C CNN
F 3 "" H 7550 4150 50  0001 C CNN
	1    7550 3950
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW-YEL1
U 1 1 61BF11C9
P 7550 3550
F 0 "SW-YEL1" H 7550 3835 50  0000 C CNN
F 1 "SW_Push" H 7550 3744 50  0000 C CNN
F 2 "" H 7550 3750 50  0001 C CNN
F 3 "" H 7550 3750 50  0001 C CNN
	1    7550 3550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW-GRN1
U 1 1 61BF1205
P 7550 3150
F 0 "SW-GRN1" H 7550 3435 50  0000 C CNN
F 1 "SW_Push" H 7550 3344 50  0000 C CNN
F 2 "" H 7550 3350 50  0001 C CNN
F 3 "" H 7550 3350 50  0001 C CNN
	1    7550 3150
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW-BLU1
U 1 1 61BF1241
P 7550 2750
F 0 "SW-BLU1" H 7550 3035 50  0000 C CNN
F 1 "SW_Push" H 7550 2944 50  0000 C CNN
F 2 "" H 7550 2950 50  0001 C CNN
F 3 "" H 7550 2950 50  0001 C CNN
	1    7550 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3750 6300 3750
Wire Wire Line
	6300 3750 6300 3150
Wire Wire Line
	6300 3150 7000 3150
Wire Wire Line
	7350 2750 7300 2750
Wire Wire Line
	6200 3650 5650 3650
$Comp
L power:GND #PWR0103
U 1 1 61BF33A5
P 8150 4100
F 0 "#PWR0103" H 8150 3850 50  0001 C CNN
F 1 "GND" H 8155 3927 50  0000 C CNN
F 2 "" H 8150 4100 50  0001 C CNN
F 3 "" H 8150 4100 50  0001 C CNN
	1    8150 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 61BF5245
P 1050 7200
F 0 "#PWR0104" H 1050 6950 50  0001 C CNN
F 1 "GND" H 1055 7027 50  0000 C CNN
F 2 "" H 1050 7200 50  0001 C CNN
F 3 "" H 1050 7200 50  0001 C CNN
	1    1050 7200
	1    0    0    -1  
$EndComp
$Comp
L MCU_Module_2:Adafruit_Feather_M0_Basic_Proto A1
U 1 1 61BF5AB8
P 5150 3650
F 0 "A1" H 4800 4800 50  0000 C CNN
F 1 "Adafruit_Feather_M0_Basic_Proto" H 5800 2400 50  0000 C CNN
F 2 "Module:Adafruit_Feather" H 5250 2300 50  0001 L CNN
F 3 "https://cdn-learn.adafruit.com/downloads/pdf/adafruit-feather-m0-basic-proto.pdf" H 5150 2450 50  0001 C CNN
	1    5150 3650
	1    0    0    -1  
$EndComp
NoConn ~ 3500 6100
NoConn ~ 3500 5600
$Comp
L power:VBUS #PWR06
U 1 1 61C06D81
P 4000 5150
F 0 "#PWR06" H 4000 5000 50  0001 C CNN
F 1 "VBUS" H 4150 5250 50  0000 C CNN
F 2 "" H 4000 5150 50  0001 C CNN
F 3 "" H 4000 5150 50  0001 C CNN
	1    4000 5150
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR01
U 1 1 61C1FE9A
P 5350 1850
F 0 "#PWR01" H 5350 1700 50  0001 C CNN
F 1 "VBUS" H 5500 1900 50  0000 C CNN
F 2 "" H 5350 1850 50  0001 C CNN
F 3 "" H 5350 1850 50  0001 C CNN
	1    5350 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2450 5350 1900
$Comp
L power:+3V3 #PWR02
U 1 1 61C24AE2
P 5250 1850
F 0 "#PWR02" H 5250 1700 50  0001 C CNN
F 1 "+3V3" H 5100 1900 50  0000 C CNN
F 2 "" H 5250 1850 50  0001 C CNN
F 3 "" H 5250 1850 50  0001 C CNN
	1    5250 1850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR05
U 1 1 61C24B89
P 4000 6550
F 0 "#PWR05" H 4000 6400 50  0001 C CNN
F 1 "+3V3" H 3850 6600 50  0000 C CNN
F 2 "" H 4000 6550 50  0001 C CNN
F 3 "" H 4000 6550 50  0001 C CNN
	1    4000 6550
	-1   0    0    1   
$EndComp
Wire Wire Line
	5250 2450 5250 1850
$Comp
L Connector:Conn_01x04_Female JDIAG1
U 1 1 61C2E1B9
P 5250 6050
F 0 "JDIAG1" H 5277 6026 50  0000 L CNN
F 1 "Conn_01x04_Female" H 5277 5935 50  0000 L CNN
F 2 "" H 5250 6050 50  0001 C CNN
F 3 "~" H 5250 6050 50  0001 C CNN
	1    5250 6050
	1    0    0    -1  
$EndComp
NoConn ~ 4500 5550
NoConn ~ 4500 5650
NoConn ~ 4500 5750
NoConn ~ 4500 5850
Wire Wire Line
	1050 6900 1050 6500
Connection ~ 1050 6500
Wire Wire Line
	1050 6500 1050 6100
Connection ~ 1050 6100
Wire Wire Line
	1050 6100 1050 5700
Connection ~ 1050 5700
Wire Wire Line
	1050 5700 1050 5300
NoConn ~ 3500 6200
Wire Wire Line
	4500 3450 4650 3450
$Comp
L blues-symbols:Notecarrier-B A2
U 1 1 61C59FA5
P 3950 5850
F 0 "A2" H 3650 6350 50  0000 C CNN
F 1 "Notecarrier-B" H 4300 5350 50  0000 C CNN
F 2 "blues-footprints:Notecarrier-B" H 4150 5650 50  0001 C CNN
F 3 "" H 4150 5650 50  0001 C CNN
	1    3950 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 6150 5050 6150
Wire Wire Line
	4500 6250 5050 6250
Wire Wire Line
	4000 5150 4000 5300
Wire Wire Line
	4500 6050 5050 6050
Wire Wire Line
	5050 5950 4900 5950
Wire Wire Line
	4000 6400 4000 6500
$Comp
L power:+BATT #PWR0105
U 1 1 61C7C00B
P 4150 1850
F 0 "#PWR0105" H 4150 1700 50  0001 C CNN
F 1 "+BATT" H 4165 2023 50  0000 C CNN
F 2 "" H 4150 1850 50  0001 C CNN
F 3 "" H 4150 1850 50  0001 C CNN
	1    4150 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1950 5050 2450
Connection ~ 4150 1950
Wire Wire Line
	4150 1950 5050 1950
Wire Wire Line
	4000 6500 4900 6500
Wire Wire Line
	4900 6500 4900 5950
Connection ~ 4000 6500
Wire Wire Line
	4000 6500 4000 6550
Wire Wire Line
	5650 3850 6400 3850
Wire Wire Line
	6400 3850 6400 3550
Wire Wire Line
	6400 3550 7000 3550
$Comp
L power:+BATT #PWR0106
U 1 1 61C932F8
P 3900 5150
F 0 "#PWR0106" H 3900 5000 50  0001 C CNN
F 1 "+BATT" H 3750 5250 50  0000 C CNN
F 2 "" H 3900 5150 50  0001 C CNN
F 3 "" H 3900 5150 50  0001 C CNN
	1    3900 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 5150 3900 5300
$Comp
L power:GND #PWR0107
U 1 1 61C96F1D
P 3900 6550
F 0 "#PWR0107" H 3900 6300 50  0001 C CNN
F 1 "GND" H 3750 6500 50  0000 C CNN
F 2 "" H 3900 6550 50  0001 C CNN
F 3 "" H 3900 6550 50  0001 C CNN
	1    3900 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 6400 3900 6550
Wire Wire Line
	4650 4150 2900 4150
Wire Wire Line
	2900 5900 3500 5900
Wire Wire Line
	2900 4150 2900 5900
Wire Wire Line
	3500 5800 3000 5800
Wire Wire Line
	3000 5800 3000 4250
Wire Wire Line
	3000 4250 4650 4250
Wire Wire Line
	4500 3450 4500 5450
Connection ~ 1050 6900
Wire Wire Line
	1050 6900 1050 7200
Wire Wire Line
	2400 3050 2400 6100
Wire Wire Line
	2400 6100 1800 6100
Wire Wire Line
	2400 3050 4650 3050
Wire Wire Line
	2500 6500 2500 3150
Wire Wire Line
	2500 3150 4650 3150
Wire Wire Line
	1800 6500 2500 6500
Wire Wire Line
	4650 3250 2600 3250
Wire Wire Line
	2600 3250 2600 6900
Wire Wire Line
	2600 6900 1800 6900
Wire Wire Line
	2300 2950 2300 5700
Wire Wire Line
	2300 5700 1800 5700
Wire Wire Line
	6200 2750 6200 3650
Wire Wire Line
	5650 3950 7000 3950
Wire Wire Line
	4150 1950 4150 1900
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 61CDE5E3
P 4150 1900
F 0 "#FLG0101" H 4150 1975 50  0001 C CNN
F 1 "PWR_FLAG" V 4150 2028 50  0000 L CNN
F 2 "" H 4150 1900 50  0001 C CNN
F 3 "~" H 4150 1900 50  0001 C CNN
	1    4150 1900
	0    -1   -1   0   
$EndComp
Connection ~ 4150 1900
Wire Wire Line
	4150 1900 4150 1850
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 61CDEFB5
P 4150 2300
F 0 "#FLG0102" H 4150 2375 50  0001 C CNN
F 1 "PWR_FLAG" V 4150 2428 50  0000 L CNN
F 2 "" H 4150 2300 50  0001 C CNN
F 3 "~" H 4150 2300 50  0001 C CNN
	1    4150 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4150 2250 4150 2300
Wire Wire Line
	4150 2350 4150 2300
Connection ~ 4150 2300
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 61CE17D1
P 5350 1900
F 0 "#FLG0103" H 5350 1975 50  0001 C CNN
F 1 "PWR_FLAG" V 5350 2028 50  0000 L CNN
F 2 "" H 5350 1900 50  0001 C CNN
F 3 "~" H 5350 1900 50  0001 C CNN
	1    5350 1900
	0    1    1    0   
$EndComp
Connection ~ 5350 1900
Wire Wire Line
	5350 1900 5350 1850
$Comp
L Switch:SW_SPST SW_PWR1
U 1 1 61CF0767
P 6200 1250
F 0 "SW_PWR1" H 6200 1485 50  0000 C CNN
F 1 "SW_SPST" H 6200 1394 50  0000 C CNN
F 2 "" H 6200 1250 50  0001 C CNN
F 3 "" H 6200 1250 50  0001 C CNN
	1    6200 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 61CF081F
P 6400 1450
F 0 "#PWR0108" H 6400 1200 50  0001 C CNN
F 1 "GND" H 6405 1277 50  0000 C CNN
F 2 "" H 6400 1450 50  0001 C CNN
F 3 "" H 6400 1450 50  0001 C CNN
	1    6400 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1250 6400 1450
Wire Wire Line
	6000 3150 5650 3150
Wire Wire Line
	6000 1250 6000 3150
Wire Wire Line
	1800 5300 2200 5300
Wire Wire Line
	2200 5300 2200 2850
Text Notes 7900 5100 0    50   ~ 0
Ethan:
Text Notes 7950 5300 0    50   ~ 0
Feather EN usually turns off MCU
$Comp
L Device:R R?
U 1 1 61C1679A
P 3300 5050
F 0 "R?" H 3370 5096 50  0000 L CNN
F 1 "100K" H 3370 5005 50  0000 L CNN
F 2 "" V 3230 5050 50  0001 C CNN
F 3 "~" H 3300 5050 50  0001 C CNN
	1    3300 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C1688E
P 3300 5200
F 0 "#PWR?" H 3300 4950 50  0001 C CNN
F 1 "GND" H 3305 5027 50  0000 C CNN
F 2 "" H 3300 5200 50  0001 C CNN
F 3 "" H 3300 5200 50  0001 C CNN
	1    3300 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61C168E5
P 7150 3950
F 0 "R?" V 6943 3950 50  0000 C CNN
F 1 "R" V 7034 3950 50  0000 C CNN
F 2 "" V 7080 3950 50  0001 C CNN
F 3 "~" H 7150 3950 50  0001 C CNN
	1    7150 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 3950 7350 3950
$Comp
L Device:R R?
U 1 1 61C16A13
P 7150 3550
F 0 "R?" V 6943 3550 50  0000 C CNN
F 1 "R" V 7034 3550 50  0000 C CNN
F 2 "" V 7080 3550 50  0001 C CNN
F 3 "~" H 7150 3550 50  0001 C CNN
	1    7150 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 3550 7350 3550
$Comp
L Device:R R?
U 1 1 61C16A63
P 7150 3150
F 0 "R?" V 6943 3150 50  0000 C CNN
F 1 "R" V 7034 3150 50  0000 C CNN
F 2 "" V 7080 3150 50  0001 C CNN
F 3 "~" H 7150 3150 50  0001 C CNN
	1    7150 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 3150 7350 3150
$Comp
L Device:R R?
U 1 1 61C16AB1
P 7150 2750
F 0 "R?" V 6943 2750 50  0000 C CNN
F 1 "R" V 7034 2750 50  0000 C CNN
F 2 "" V 7080 2750 50  0001 C CNN
F 3 "~" H 7150 2750 50  0001 C CNN
	1    7150 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	7000 2750 6750 2750
Wire Wire Line
	7750 2750 8150 2750
Wire Wire Line
	8150 2750 8150 3150
Wire Wire Line
	7750 3150 8150 3150
Connection ~ 8150 3150
Wire Wire Line
	8150 3150 8150 3550
Wire Wire Line
	7750 3550 8150 3550
Connection ~ 8150 3550
Wire Wire Line
	8150 3550 8150 3950
Wire Wire Line
	7750 3950 8150 3950
Connection ~ 8150 3950
Wire Wire Line
	8150 3950 8150 4100
$Comp
L pspice:C C?
U 1 1 61C25C96
P 6750 3000
F 0 "C?" H 6928 3046 50  0000 L CNN
F 1 "C" H 6928 2955 50  0000 L CNN
F 2 "" H 6750 3000 50  0001 C CNN
F 3 "~" H 6750 3000 50  0001 C CNN
	1    6750 3000
	1    0    0    -1  
$EndComp
Connection ~ 6750 2750
Wire Wire Line
	6750 2750 6200 2750
$Comp
L Device:Q_NJFET_DGS Q?
U 1 1 61C3DE63
P 1650 4850
F 0 "Q?" H 1841 4896 50  0000 L CNN
F 1 "Q_NJFET_DGS" H 1841 4805 50  0000 L CNN
F 2 "" H 1850 4950 50  0001 C CNN
F 3 "~" H 1650 4850 50  0001 C CNN
	1    1650 4850
	1    0    0    -1  
$EndComp
$Comp
L Driver_LED:CL220K4-G U?
U 1 1 61C3E50C
P 1400 4350
F 0 "U?" H 1530 4396 50  0000 L CNN
F 1 "CL220K4-G" H 1530 4305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 1550 4300 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005413A.pdf" H 1410 4350 50  0001 C CNN
	1    1400 4350
	1    0    0    -1  
$EndComp
Text Notes 7950 5450 0    50   ~ 0
Test points?
Text Notes 7950 5600 0    50   ~ 0
Oktopart for managing BOM?
Text Notes 7950 5750 0    50   ~ 0
DRC from Sparkfun
Text Notes 1050 8300 0    50   ~ 0
When done, RUN DRC, Make mfg drawing with drill table, design notes like slots for things, , export Gerber files, open them in a gerb viewer, look at all the layers, make sure silkscreen looks good to ensure ref designators look good.
Text Notes 7950 5950 0    50   ~ 0
10 boards, 8 sets of parts, build 5, get 3 working.
Wire Wire Line
	3500 5500 3500 4900
Wire Wire Line
	3500 4900 3300 4900
Wire Wire Line
	3150 4900 3150 3350
Connection ~ 3300 4900
Wire Wire Line
	3300 4900 3150 4900
Wire Wire Line
	3150 3350 4650 3350
$EndSCHEMATC
