EESchema Schematic File Version 4
LIBS:board-cache
EELAYER 26 0
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
L MCU_Microchip_ATmega:ATxmega128A4U-AU U2
U 1 1 5BD116FB
P 4500 3000
F 0 "U2" H 4500 2950 50  0000 C CNN
F 1 "ATxmega128A4U-AU" H 4500 1950 50  0000 C CNN
F 2 "Package_QFP:TQFP-44_10x10mm_P0.8mm" H 4500 3000 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-8387-8-and16-bit-AVR-Microcontroller-XMEGA-A4U_Datasheet.pdf" H 4500 3000 50  0001 C CNN
	1    4500 3000
	1    0    0    -1  
$EndComp
Text Label 5200 3600 0    50   ~ 0
USARTC0_RX
$Comp
L power:GND #PWR0103
U 1 1 5BD11CE2
P 4500 4450
F 0 "#PWR0103" H 4500 4200 50  0001 C CNN
F 1 "GND" H 4505 4277 50  0000 C CNN
F 2 "" H 4500 4450 50  0001 C CNN
F 3 "" H 4500 4450 50  0001 C CNN
	1    4500 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4450 4500 4400
$Comp
L Device:Q_NJFET_GDS Q1
U 1 1 5BD24778
P 9950 3000
F 0 "Q1" H 10141 3046 50  0000 L CNN
F 1 "Q_NJFET_GDS" H 10141 2955 50  0000 L CNN
F 2 "" H 10150 3100 50  0001 C CNN
F 3 "~" H 9950 3000 50  0001 C CNN
	1    9950 3000
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5BD2483E
P 9550 3100
F 0 "J1" H 9630 3092 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 9630 3001 50  0000 L CNN
F 2 "" H 9550 3100 50  0001 C CNN
F 3 "~" H 9550 3100 50  0001 C CNN
	1    9550 3100
	0    1    1    0   
$EndComp
$Comp
L power:+6V #PWR0106
U 1 1 5BD2490D
P 9400 1400
F 0 "#PWR0106" H 9400 1250 50  0001 C CNN
F 1 "+6V" H 9415 1573 50  0000 C CNN
F 2 "" H 9400 1400 50  0001 C CNN
F 3 "" H 9400 1400 50  0001 C CNN
	1    9400 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5BD2499D
P 10150 3250
F 0 "R1" H 10209 3296 50  0000 L CNN
F 1 "10k" H 10209 3205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10150 3250 50  0001 C CNN
F 3 "~" H 10150 3250 50  0001 C CNN
	1    10150 3250
	0    1    1    0   
$EndComp
Text Label 9950 3350 3    50   ~ 0
E_Match_Fire_1
$Comp
L Device:Q_NJFET_GDS Q2
U 1 1 5BD28385
P 8700 2800
F 0 "Q2" H 8891 2846 50  0000 L CNN
F 1 "Q_NJFET_GDS" H 8891 2755 50  0000 L CNN
F 2 "" H 8900 2900 50  0001 C CNN
F 3 "~" H 8700 2800 50  0001 C CNN
	1    8700 2800
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 5BD2838C
P 9150 3100
F 0 "J3" H 9230 3092 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 9230 3001 50  0000 L CNN
F 2 "" H 9150 3100 50  0001 C CNN
F 3 "~" H 9150 3100 50  0001 C CNN
	1    9150 3100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5BD28399
P 8150 2900
F 0 "#PWR0102" H 8150 2650 50  0001 C CNN
F 1 "GND" H 8155 2727 50  0000 C CNN
F 2 "" H 8150 2900 50  0001 C CNN
F 3 "" H 8150 2900 50  0001 C CNN
	1    8150 2900
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5BD2839F
P 8450 2550
F 0 "R2" H 8509 2596 50  0000 L CNN
F 1 "10k" H 8509 2505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8450 2550 50  0001 C CNN
F 3 "~" H 8450 2550 50  0001 C CNN
	1    8450 2550
	0    1    1    0   
$EndComp
Text Label 8700 2450 1    50   ~ 0
E_Match_Fire_2
Text Label 3800 2800 2    50   ~ 0
E_Match_Fire_1
Text Label 3800 2900 2    50   ~ 0
E_Match_Fire_2
$Comp
L Connector:USB_B_Micro J2
U 1 1 5BD28F8B
P 1750 2100
F 0 "J2" H 1805 2567 50  0000 C CNN
F 1 "USB_B_Micro" H 1805 2476 50  0000 C CNN
F 2 "" H 1900 2050 50  0001 C CNN
F 3 "~" H 1900 2050 50  0001 C CNN
	1    1750 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery BT1
U 1 1 5BDC05D7
P 1200 3450
F 0 "BT1" H 1308 3496 50  0000 L CNN
F 1 "Battery" H 1308 3405 50  0000 L CNN
F 2 "" V 1200 3510 50  0001 C CNN
F 3 "~" V 1200 3510 50  0001 C CNN
	1    1200 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery BT2
U 1 1 5BDC065A
P 1200 3950
F 0 "BT2" H 1308 3996 50  0000 L CNN
F 1 "Battery" H 1308 3905 50  0000 L CNN
F 2 "" V 1200 4010 50  0001 C CNN
F 3 "~" V 1200 4010 50  0001 C CNN
	1    1200 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 3650 1200 3750
$Comp
L power:GND #PWR0104
U 1 1 5BDC09C1
P 1200 4250
F 0 "#PWR0104" H 1200 4000 50  0001 C CNN
F 1 "GND" H 1205 4077 50  0000 C CNN
F 2 "" H 1200 4250 50  0001 C CNN
F 3 "" H 1200 4250 50  0001 C CNN
	1    1200 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 4250 1200 4150
$Comp
L power:+6V #PWR0105
U 1 1 5BDC0C8C
P 1200 3200
F 0 "#PWR0105" H 1200 3050 50  0001 C CNN
F 1 "+6V" H 1215 3373 50  0000 C CNN
F 2 "" H 1200 3200 50  0001 C CNN
F 3 "" H 1200 3200 50  0001 C CNN
	1    1200 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 3200 1200 3250
$Comp
L Custom_components:XBee U1
U 1 1 5BE8EE7C
P 10150 5750
F 0 "U1" H 10150 6715 50  0000 C CNN
F 1 "XBee" H 10150 6624 50  0000 C CNN
F 2 "" H 10000 5900 50  0001 C CNN
F 3 "" H 10000 5900 50  0001 C CNN
	1    10150 5750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0108
U 1 1 5BE8EFA0
P 8100 5300
F 0 "#PWR0108" H 8100 5150 50  0001 C CNN
F 1 "+3.3V" H 8115 5473 50  0000 C CNN
F 2 "" H 8100 5300 50  0001 C CNN
F 3 "" H 8100 5300 50  0001 C CNN
	1    8100 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 5300 8400 5300
Text Label 9500 5400 2    50   ~ 0
USARTC0_RX
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 5BE8F6B7
P 8550 5700
F 0 "J4" V 8703 5513 50  0000 R CNN
F 1 "Conn_01x02_Male" V 8612 5513 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 8550 5700 50  0001 C CNN
F 3 "~" H 8550 5700 50  0001 C CNN
	1    8550 5700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5BE9061D
P 9250 6200
F 0 "#PWR0109" H 9250 5950 50  0001 C CNN
F 1 "GND" H 9255 6027 50  0000 C CNN
F 2 "" H 9250 6200 50  0001 C CNN
F 3 "" H 9250 6200 50  0001 C CNN
	1    9250 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 6200 9500 6200
Text Label 8550 5500 2    50   ~ 0
USARTC0_TX
Text Label 5200 3500 0    50   ~ 0
USARTC0_TX
$Comp
L Device:C_Small C?
U 1 1 5BE91BDA
P 8400 5150
F 0 "C?" H 8492 5196 50  0000 L CNN
F 1 "10uF" H 8492 5105 50  0000 L CNN
F 2 "" H 8400 5150 50  0001 C CNN
F 3 "~" H 8400 5150 50  0001 C CNN
	1    8400 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5BE91C36
P 8850 5150
F 0 "C?" H 8942 5196 50  0000 L CNN
F 1 "1uF" H 8942 5105 50  0000 L CNN
F 2 "" H 8850 5150 50  0001 C CNN
F 3 "~" H 8850 5150 50  0001 C CNN
	1    8850 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5BE91C7C
P 9250 5150
F 0 "C?" H 9342 5196 50  0000 L CNN
F 1 "47pF" H 9342 5105 50  0000 L CNN
F 2 "" H 9250 5150 50  0001 C CNN
F 3 "~" H 9250 5150 50  0001 C CNN
	1    9250 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 5500 9500 5500
Wire Wire Line
	9250 5250 9250 5300
Wire Wire Line
	8850 5250 8850 5300
Wire Wire Line
	8400 5250 8400 5300
Connection ~ 8400 5300
Wire Wire Line
	8400 5300 8850 5300
$Comp
L power:GND #PWR?
U 1 1 5BE93AA7
P 9250 5000
F 0 "#PWR?" H 9250 4750 50  0001 C CNN
F 1 "GND" H 9255 4827 50  0000 C CNN
F 2 "" H 9250 5000 50  0001 C CNN
F 3 "" H 9250 5000 50  0001 C CNN
	1    9250 5000
	-1   0    0    1   
$EndComp
Wire Wire Line
	9250 5050 9250 5000
$Comp
L power:GND #PWR?
U 1 1 5BE9450D
P 8850 5000
F 0 "#PWR?" H 8850 4750 50  0001 C CNN
F 1 "GND" H 8855 4827 50  0000 C CNN
F 2 "" H 8850 5000 50  0001 C CNN
F 3 "" H 8850 5000 50  0001 C CNN
	1    8850 5000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BE9456B
P 8400 5000
F 0 "#PWR?" H 8400 4750 50  0001 C CNN
F 1 "GND" H 8405 4827 50  0000 C CNN
F 2 "" H 8400 5000 50  0001 C CNN
F 3 "" H 8400 5000 50  0001 C CNN
	1    8400 5000
	-1   0    0    1   
$EndComp
Wire Wire Line
	8400 5000 8400 5050
Wire Wire Line
	8850 5000 8850 5050
Connection ~ 8850 5300
Wire Wire Line
	8850 5300 9250 5300
Wire Wire Line
	9500 5300 9250 5300
Connection ~ 9250 5300
Wire Notes Line
	10950 4700 10950 6450
Wire Notes Line
	10950 6450 7850 6450
Wire Notes Line
	7850 6450 7850 4700
Wire Notes Line
	7850 4700 10950 4700
Text Notes 9200 4650 0    50   ~ 0
Radio
$Comp
L Device:Buzzer BZ?
U 1 1 5BE9AC1A
P 5200 6650
F 0 "BZ?" H 5353 6679 50  0000 L CNN
F 1 "Buzzer" H 5353 6588 50  0000 L CNN
F 2 "" V 5175 6750 50  0001 C CNN
F 3 "~" V 5175 6750 50  0001 C CNN
	1    5200 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5BE9AD02
P 6400 6650
F 0 "D?" H 6392 6395 50  0000 C CNN
F 1 "LED" H 6392 6486 50  0000 C CNN
F 2 "" H 6400 6650 50  0001 C CNN
F 3 "~" H 6400 6650 50  0001 C CNN
	1    6400 6650
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D?
U 1 1 5BE9ADEF
P 6400 7100
F 0 "D?" H 6392 6845 50  0000 C CNN
F 1 "LED" H 6392 6936 50  0000 C CNN
F 2 "" H 6400 7100 50  0001 C CNN
F 3 "~" H 6400 7100 50  0001 C CNN
	1    6400 7100
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NJFET_GDS Q?
U 1 1 5BE9B599
P 5000 7000
F 0 "Q?" H 5191 7046 50  0000 L CNN
F 1 "Q_NJFET_GDS" H 5191 6955 50  0000 L CNN
F 2 "" H 5200 7100 50  0001 C CNN
F 3 "~" H 5000 7000 50  0001 C CNN
	1    5000 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BE9B7F3
P 5100 7450
F 0 "#PWR?" H 5100 7200 50  0001 C CNN
F 1 "GND" H 5105 7277 50  0000 C CNN
F 2 "" H 5100 7450 50  0001 C CNN
F 3 "" H 5100 7450 50  0001 C CNN
	1    5100 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 7000 4750 7000
Text Label 4600 7000 2    50   ~ 0
BUZZER_CTRL
$Comp
L Device:R_Small R?
U 1 1 5BE9BDBA
P 4750 7200
F 0 "R?" H 4809 7246 50  0000 L CNN
F 1 "10k" H 4809 7155 50  0000 L CNN
F 2 "" H 4750 7200 50  0001 C CNN
F 3 "~" H 4750 7200 50  0001 C CNN
	1    4750 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 7100 4750 7000
Connection ~ 4750 7000
Wire Wire Line
	4750 7000 4600 7000
Wire Wire Line
	5100 7200 5100 7400
Wire Wire Line
	4750 7300 4750 7400
Wire Wire Line
	4750 7400 5100 7400
Connection ~ 5100 7400
Wire Wire Line
	5100 7400 5100 7450
Wire Wire Line
	5100 6750 5100 6800
$Comp
L power:+6V #PWR?
U 1 1 5BE9E734
P 5100 6450
F 0 "#PWR?" H 5100 6300 50  0001 C CNN
F 1 "+6V" H 5115 6623 50  0000 C CNN
F 2 "" H 5100 6450 50  0001 C CNN
F 3 "" H 5100 6450 50  0001 C CNN
	1    5100 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 6450 5100 6550
$Comp
L power:GND #PWR?
U 1 1 5BEA622D
P 6700 7200
F 0 "#PWR?" H 6700 6950 50  0001 C CNN
F 1 "GND" H 6705 7027 50  0000 C CNN
F 2 "" H 6700 7200 50  0001 C CNN
F 3 "" H 6700 7200 50  0001 C CNN
	1    6700 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 7100 6700 7100
Wire Wire Line
	6700 7100 6700 7200
Wire Wire Line
	6550 6650 6700 6650
Wire Wire Line
	6700 6650 6700 7100
Connection ~ 6700 7100
Text Label 5200 3300 0    50   ~ 0
LED1CTRL
Text Label 3800 3300 2    50   ~ 0
LED2CTRL
Text Label 6250 6650 2    50   ~ 0
LED1CTRL
Text Label 6250 7100 2    50   ~ 0
LED2CTRL
Wire Notes Line
	6900 6200 6900 7700
Wire Notes Line
	6900 7700 4000 7700
Wire Notes Line
	4000 7700 4000 6200
Wire Notes Line
	4000 6200 6900 6200
Text Notes 5350 6150 0    50   ~ 0
Indicators
$Comp
L power:GND #PWR?
U 1 1 5BEB5BFE
P 10500 2900
F 0 "#PWR?" H 10500 2650 50  0001 C CNN
F 1 "GND" V 10505 2772 50  0000 R CNN
F 2 "" H 10500 2900 50  0001 C CNN
F 3 "" H 10500 2900 50  0001 C CNN
	1    10500 2900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9950 3200 9950 3250
Wire Wire Line
	10050 3250 9950 3250
Connection ~ 9950 3250
Wire Wire Line
	9950 3250 9950 3350
Wire Wire Line
	10150 2900 10350 2900
Wire Wire Line
	10250 3250 10350 3250
Wire Wire Line
	10350 3250 10350 2900
Connection ~ 10350 2900
Wire Wire Line
	10350 2900 10500 2900
Wire Wire Line
	9750 2900 9550 2900
Wire Wire Line
	8800 2900 8900 2900
Wire Wire Line
	8150 2900 8250 2900
Wire Wire Line
	8350 2550 8250 2550
Wire Wire Line
	8250 2550 8250 2900
Connection ~ 8250 2900
Wire Wire Line
	8250 2900 8500 2900
Wire Wire Line
	8700 2600 8700 2550
Wire Wire Line
	8550 2550 8700 2550
Connection ~ 8700 2550
Wire Wire Line
	8700 2550 8700 2450
$Comp
L Switch:SW_SPDT SW?
U 1 1 5BEC265F
P 9400 1700
F 0 "SW?" V 9354 1848 50  0000 L CNN
F 1 "SW_SPDT" V 9445 1848 50  0000 L CNN
F 2 "" H 9400 1700 50  0001 C CNN
F 3 "" H 9400 1700 50  0001 C CNN
	1    9400 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	9400 1400 9400 1500
$Comp
L Device:R_Small R?
U 1 1 5BEC4298
P 10000 2100
F 0 "R?" V 9804 2100 50  0000 C CNN
F 1 "30k" V 9895 2100 50  0000 C CNN
F 2 "" H 10000 2100 50  0001 C CNN
F 3 "~" H 10000 2100 50  0001 C CNN
	1    10000 2100
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5BEC432F
P 10450 2100
F 0 "R?" V 10254 2100 50  0000 C CNN
F 1 "10k" V 10345 2100 50  0000 C CNN
F 2 "" H 10450 2100 50  0001 C CNN
F 3 "~" H 10450 2100 50  0001 C CNN
	1    10450 2100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BEC43BA
P 10650 2100
F 0 "#PWR?" H 10650 1850 50  0001 C CNN
F 1 "GND" V 10655 1972 50  0000 R CNN
F 2 "" H 10650 2100 50  0001 C CNN
F 3 "" H 10650 2100 50  0001 C CNN
	1    10650 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10550 2100 10650 2100
Text Label 10250 1950 1    50   ~ 0
LATCH_SENSE
Text Label 5200 3700 0    50   ~ 0
LATCH_SENSE
Wire Wire Line
	9300 1900 9300 2900
Connection ~ 9300 2900
Wire Wire Line
	9300 2900 9450 2900
Wire Wire Line
	9150 2900 9300 2900
Wire Wire Line
	10100 2100 10250 2100
Wire Wire Line
	10250 1950 10250 2100
Connection ~ 10250 2100
Wire Wire Line
	10250 2100 10350 2100
Wire Wire Line
	9500 1900 9500 2100
Wire Wire Line
	9500 2100 9900 2100
Wire Notes Line
	10950 1100 10950 4100
Wire Notes Line
	10950 4100 7850 4100
Wire Notes Line
	7850 4100 7850 1100
Wire Notes Line
	7850 1100 10950 1100
Text Notes 8950 1050 0    50   ~ 0
E-Match Firing Circuits
Connection ~ 8900 2900
Wire Wire Line
	8900 2900 9050 2900
$EndSCHEMATC
