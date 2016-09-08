EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:Dual RS232 Convertor-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MAX232 U1
U 1 1 578AC056
P 4200 3750
F 0 "U1" H 3750 4600 50  0000 L CNN
F 1 "MAX232" H 4400 4600 50  0000 L CNN
F 2 "" H 4200 3750 50  0000 C CNN
F 3 "" H 4200 3750 50  0000 C CNN
	1    4200 3750
	1    0    0    -1  
$EndComp
$Comp
L DB9 J2
U 1 1 578AC1E3
P 5400 5300
F 0 "J2" V 5400 5850 50  0000 C CNN
F 1 "DB9" V 5400 4750 50  0000 C CNN
F 2 "" H 5400 5300 50  0000 C CNN
F 3 "" H 5400 5300 50  0000 C CNN
	1    5400 5300
	0    1    1    0   
$EndComp
$Comp
L DB9 J1
U 1 1 578AC2C6
P 6650 5300
F 0 "J1" V 6650 5850 50  0000 C CNN
F 1 "DB9" V 6650 4750 50  0000 C CNN
F 2 "" H 6650 5300 50  0000 C CNN
F 3 "" H 6650 5300 50  0000 C CNN
	1    6650 5300
	0    1    1    0   
$EndComp
$Comp
L CP C1
U 1 1 578ACB20
P 3250 3250
F 0 "C1" H 3275 3350 50  0000 L CNN
F 1 "2.2uf" H 3275 3150 50  0000 L CNN
F 2 "" H 3288 3100 50  0000 C CNN
F 3 "" H 3250 3250 50  0000 C CNN
	1    3250 3250
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 578ACC4D
P 3250 3750
F 0 "C2" H 3275 3850 50  0000 L CNN
F 1 "2.2uf" H 3275 3650 50  0000 L CNN
F 2 "" H 3288 3600 50  0000 C CNN
F 3 "" H 3250 3750 50  0000 C CNN
	1    3250 3750
	1    0    0    -1  
$EndComp
$Comp
L CP C3
U 1 1 578ACCDE
P 5050 3250
F 0 "C3" H 5075 3350 50  0000 L CNN
F 1 "2.2uf" H 5075 3150 50  0000 L CNN
F 2 "" H 5088 3100 50  0000 C CNN
F 3 "" H 5050 3250 50  0000 C CNN
	1    5050 3250
	-1   0    0    1   
$EndComp
$Comp
L CP C4
U 1 1 578ACDA1
P 5050 3800
F 0 "C4" H 5075 3900 50  0000 L CNN
F 1 "2.2uf" H 5075 3700 50  0000 L CNN
F 2 "" H 5088 3650 50  0000 C CNN
F 3 "" H 5050 3800 50  0000 C CNN
	1    5050 3800
	1    0    0    -1  
$EndComp
$Comp
L CP C5
U 1 1 578AE99C
P 5400 3050
F 0 "C5" V 5425 3150 50  0000 L TNN
F 1 "2.2uf" V 5425 2950 50  0000 R TNN
F 2 "" H 5438 2900 50  0000 C CNN
F 3 "" H 5400 3050 50  0000 C CNN
	1    5400 3050
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 578AEA3B
P 5550 3300
F 0 "#PWR?" H 5550 3050 50  0001 C CNN
F 1 "GND" H 5550 3150 50  0000 C CNN
F 2 "" H 5550 3300 50  0000 C CNN
F 3 "" H 5550 3300 50  0000 C CNN
	1    5550 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 578AEEE9
P 5950 4900
F 0 "#PWR?" H 5950 4650 50  0001 C CNN
F 1 "GND" H 5950 4750 50  0000 C CNN
F 2 "" H 5950 4900 50  0000 C CNN
F 3 "" H 5950 4900 50  0000 C CNN
	1    5950 4900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 578AEF0D
P 7200 4900
F 0 "#PWR?" H 7200 4650 50  0001 C CNN
F 1 "GND" H 7200 4750 50  0000 C CNN
F 2 "" H 7200 4900 50  0000 C CNN
F 3 "" H 7200 4900 50  0000 C CNN
	1    7200 4900
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X06 P3
U 1 1 578B01BB
P 3150 4400
F 0 "P3" H 3150 4750 50  0000 C CNN
F 1 "Arduino Mega Serial 1&2" V 3250 4400 50  0000 C CNN
F 2 "" H 3150 4400 50  0000 C CNN
F 3 "" H 3150 4400 50  0000 C CNN
	1    3150 4400
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 578B037D
P 3400 4700
F 0 "#PWR?" H 3400 4450 50  0001 C CNN
F 1 "GND" H 3400 4550 50  0000 C CNN
F 2 "" H 3400 4700 50  0000 C CNN
F 3 "" H 3400 4700 50  0000 C CNN
	1    3400 4700
	1    0    0    -1  
$EndComp
$Comp
L VCC +5V
U 1 1 578B03A3
P 3650 4700
F 0 "+5V" H 3650 4550 50  0001 C CNN
F 1 "VCC" H 3650 4850 50  0000 C CNN
F 2 "" H 3650 4700 50  0000 C CNN
F 3 "" H 3650 4700 50  0000 C CNN
	1    3650 4700
	-1   0    0    1   
$EndComp
$Comp
L VCC +5V
U 1 1 578B0AEF
P 5050 2900
F 0 "+5V" H 5050 2750 50  0001 C CNN
F 1 "VCC" H 5050 3050 50  0000 C CNN
F 2 "" H 5050 2900 50  0000 C CNN
F 3 "" H 5050 2900 50  0000 C CNN
	1    5050 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3450 5050 3450
Wire Wire Line
	5050 3450 5050 3400
Wire Wire Line
	4800 3950 5050 3950
Wire Wire Line
	3250 3100 3250 3050
Wire Wire Line
	3250 3050 3600 3050
Wire Wire Line
	3250 3400 3250 3450
Wire Wire Line
	3250 3450 3600 3450
Wire Wire Line
	3250 3600 3250 3550
Wire Wire Line
	3250 3550 3600 3550
Wire Wire Line
	3250 3900 3250 3950
Wire Wire Line
	3250 3950 3600 3950
Wire Wire Line
	4800 3650 5050 3650
Wire Wire Line
	4800 3050 5250 3050
Wire Wire Line
	5050 2900 5050 3100
Connection ~ 5050 3050
Wire Wire Line
	5550 3050 5550 3300
Wire Wire Line
	7050 4850 7200 4850
Wire Wire Line
	7200 4850 7200 4900
Wire Wire Line
	5800 4850 5950 4850
Wire Wire Line
	5950 4850 5950 4900
Wire Wire Line
	3350 4150 3600 4150
Wire Wire Line
	3350 4250 3600 4250
Wire Wire Line
	3350 4350 3600 4350
Wire Wire Line
	3350 4450 3600 4450
Wire Wire Line
	3350 4550 3650 4550
Wire Wire Line
	3650 4550 3650 4700
Wire Wire Line
	3350 4650 3400 4650
Wire Wire Line
	3400 4650 3400 4700
Text Notes 7350 7500 0    60   ~ 0
Dual RS232 converter for Arduino Mega
Text Notes 10600 7650 0    60   ~ 0
1
Text Notes 8150 7650 0    60   ~ 0
14th August 2016
Text Notes 7400 7250 0    60   ~ 0
1
Text Notes 7300 7250 0    60   ~ 0
1
Text Notes 6350 5650 0    60   ~ 0
JPS PPS-100
Text Notes 5000 5650 0    60   ~ 0
Codan NGT/Envoy
Text Notes 2200 4100 0    60   ~ 0
To Arduino Mega
Wire Wire Line
	4800 4450 5200 4450
Wire Wire Line
	5200 4450 5200 4850
Wire Wire Line
	4800 4250 5400 4250
Wire Wire Line
	5400 4250 5400 4850
Wire Wire Line
	4800 4350 6450 4350
Wire Wire Line
	6450 4350 6450 4850
Wire Wire Line
	4800 4150 6650 4150
Wire Wire Line
	6650 4150 6650 4850
Wire Wire Line
	3150 4450 2700 4450
Wire Wire Line
	3150 4350 2700 4350
Wire Wire Line
	3150 4250 2700 4250
Wire Wire Line
	3150 4150 2700 4150
Text Notes 2200 4200 0    60   ~ 0
TxD1 (18)
Text Notes 2200 4300 0    60   ~ 0
TxD2 (16)
Text Notes 2200 4400 0    60   ~ 0
RxD1 (19)
Text Notes 2200 4500 0    60   ~ 0
RxD2 (17)
Text Notes 3400 5050 0    60   ~ 0
12VDC
Wire Wire Line
	3150 4550 2700 4550
Wire Wire Line
	3150 4650 2700 4650
Text Notes 2400 4600 0    60   ~ 0
PWRIN
Text Notes 2500 4700 0    60   ~ 0
GND
Text Notes 9550 7100 0    60   ~ 0
Drawn by Callum McEwen (VK5MCA)
$EndSCHEMATC
