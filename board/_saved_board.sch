EESchema Schematic File Version 4
LIBS:board-cache
EELAYER 26 0
EELAYER END
$Descr A 11000 8500
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
P 5700 3050
F 0 "U2" H 5700 3000 50  0000 C CNN
F 1 "ATxmega128A4U-AU" H 5700 2000 50  0000 C CNN
F 2 "Package_QFP:TQFP-44_10x10mm_P0.8mm" H 5700 3050 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-8387-8-and16-bit-AVR-Microcontroller-XMEGA-A4U_Datasheet.pdf" H 5700 3050 50  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/microchip-technology/ATXMEGA32A4U-AUR/ATXMEGA32A4U-AURCT-ND/3903783" H 5700 3050 50  0001 C CNN "Vendor Link"
	1    5700 3050
	1    0    0    -1  
$EndComp
Text Label 6400 3550 0    50   ~ 0
USARTC0_RX
$Comp
L power:GND #PWR0103
U 1 1 5BD11CE2
P 5700 4500
F 0 "#PWR0103" H 5700 4250 50  0001 C CNN
F 1 "GND" H 5705 4327 50  0000 C CNN
F 2 "" H 5700 4500 50  0001 C CNN
F 3 "" H 5700 4500 50  0001 C CNN
	1    5700 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4500 5700 4450
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5BD2483E
P 9250 2150
F 0 "J1" H 9330 2142 50  0000 L CNN
F 1 "Screw_Terminal_01x02" V 9650 1450 50  0001 L CNN
F 2 "custom_components:2 pin 2.54mm screw terminal OSTVN02A150" H 9250 2150 50  0001 C CNN
F 3 "~" H 9250 2150 50  0001 C CNN
	1    9250 2150
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5BD2499D
P 9850 2300
F 0 "R1" H 9909 2346 50  0000 L CNN
F 1 "10k" H 9909 2255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9850 2300 50  0001 C CNN
F 3 "~" H 9850 2300 50  0001 C CNN
	1    9850 2300
	0    1    1    0   
$EndComp
Text Label 9650 2650 0    50   ~ 0
E_Match_Fire_1
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 5BD2838C
P 8850 2150
F 0 "J3" H 8930 2142 50  0000 L CNN
F 1 "Screw_Terminal_01x02" V 9100 1850 50  0000 L CNN
F 2 "custom_components:2 pin 2.54mm screw terminal OSTVN02A150" H 8850 2150 50  0001 C CNN
F 3 "~" H 8850 2150 50  0001 C CNN
	1    8850 2150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5BD28399
P 7550 1950
F 0 "#PWR0102" H 7550 1700 50  0001 C CNN
F 1 "GND" H 7555 1777 50  0000 C CNN
F 2 "" H 7550 1950 50  0001 C CNN
F 3 "" H 7550 1950 50  0001 C CNN
	1    7550 1950
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5BD2839F
P 7850 1600
F 0 "R2" H 7909 1646 50  0000 L CNN
F 1 "10k" H 7909 1555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7850 1600 50  0001 C CNN
F 3 "~" H 7850 1600 50  0001 C CNN
	1    7850 1600
	0    1    1    0   
$EndComp
Text Label 8100 1500 0    50   ~ 0
E_Match_Fire_2
Text Label 5000 2850 2    50   ~ 0
E_Match_Fire_1
Text Label 5000 2950 2    50   ~ 0
E_Match_Fire_2
$Comp
L Device:Battery BT1
U 1 1 5BDC05D7
P 850 2700
F 0 "BT1" H 958 2746 50  0000 L CNN
F 1 "Battery" H 958 2655 50  0000 L CNN
F 2 "custom_components:CR123A Battery Holder" V 850 2760 50  0001 C CNN
F 3 "~" V 850 2760 50  0001 C CNN
	1    850  2700
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery BT2
U 1 1 5BDC065A
P 850 3200
F 0 "BT2" H 958 3246 50  0000 L CNN
F 1 "Battery" H 958 3155 50  0000 L CNN
F 2 "custom_components:CR123A Battery Holder" V 850 3260 50  0001 C CNN
F 3 "~" V 850 3260 50  0001 C CNN
	1    850  3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  2900 850  3000
$Comp
L power:GND #PWR0104
U 1 1 5BDC09C1
P 850 4100
F 0 "#PWR0104" H 850 3850 50  0001 C CNN
F 1 "GND" H 855 3927 50  0000 C CNN
F 2 "" H 850 4100 50  0001 C CNN
F 3 "" H 850 4100 50  0001 C CNN
	1    850  4100
	1    0    0    -1  
$EndComp
$Comp
L Custom_components:XBee U1
U 1 1 5BE8EE7C
P 9600 4050
F 0 "U1" H 9600 5015 50  0000 C CNN
F 1 "XBee" H 9600 4924 50  0000 C CNN
F 2 "custom_components:XBee_SMD" H 9450 4200 50  0001 C CNN
F 3 "" H 9450 4200 50  0001 C CNN
	1    9600 4050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0108
U 1 1 5BE8EFA0
P 7550 3600
F 0 "#PWR0108" H 7550 3450 50  0001 C CNN
F 1 "+3.3V" H 7565 3773 50  0000 C CNN
F 2 "" H 7550 3600 50  0001 C CNN
F 3 "" H 7550 3600 50  0001 C CNN
	1    7550 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 3600 7850 3600
Text Label 8950 3700 2    50   ~ 0
USARTC0_RX
$Comp
L power:GND #PWR0109
U 1 1 5BE9061D
P 8500 4500
F 0 "#PWR0109" H 8500 4250 50  0001 C CNN
F 1 "GND" H 8505 4327 50  0000 C CNN
F 2 "" H 8500 4500 50  0001 C CNN
F 3 "" H 8500 4500 50  0001 C CNN
	1    8500 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 4500 8950 4500
Text Label 7800 3800 2    50   ~ 0
USARTC0_TX
Text Label 6400 3650 0    50   ~ 0
USARTC0_TX
$Comp
L Device:C_Small C5
U 1 1 5BE91BDA
P 7850 3450
F 0 "C5" H 7942 3496 50  0000 L CNN
F 1 "10uF" H 7942 3405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7850 3450 50  0001 C CNN
F 3 "~" H 7850 3450 50  0001 C CNN
	1    7850 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5BE91C36
P 8300 3450
F 0 "C6" H 8392 3496 50  0000 L CNN
F 1 "1uF" H 8392 3405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8300 3450 50  0001 C CNN
F 3 "~" H 8300 3450 50  0001 C CNN
	1    8300 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5BE91C7C
P 8700 3450
F 0 "C7" H 8792 3496 50  0000 L CNN
F 1 "47pF" H 8792 3405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8700 3450 50  0001 C CNN
F 3 "~" H 8700 3450 50  0001 C CNN
	1    8700 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 3800 8500 3800
Wire Wire Line
	8700 3550 8700 3600
Wire Wire Line
	8300 3550 8300 3600
Wire Wire Line
	7850 3550 7850 3600
Connection ~ 7850 3600
Wire Wire Line
	7850 3600 8300 3600
$Comp
L power:GND #PWR0101
U 1 1 5BE93AA7
P 8700 3300
F 0 "#PWR0101" H 8700 3050 50  0001 C CNN
F 1 "GND" H 8705 3127 50  0000 C CNN
F 2 "" H 8700 3300 50  0001 C CNN
F 3 "" H 8700 3300 50  0001 C CNN
	1    8700 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	8700 3350 8700 3300
$Comp
L power:GND #PWR0107
U 1 1 5BE9450D
P 8300 3300
F 0 "#PWR0107" H 8300 3050 50  0001 C CNN
F 1 "GND" H 8305 3127 50  0000 C CNN
F 2 "" H 8300 3300 50  0001 C CNN
F 3 "" H 8300 3300 50  0001 C CNN
	1    8300 3300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5BE9456B
P 7850 3300
F 0 "#PWR0110" H 7850 3050 50  0001 C CNN
F 1 "GND" H 7855 3127 50  0000 C CNN
F 2 "" H 7850 3300 50  0001 C CNN
F 3 "" H 7850 3300 50  0001 C CNN
	1    7850 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	7850 3300 7850 3350
Wire Wire Line
	8300 3300 8300 3350
Connection ~ 8300 3600
Wire Wire Line
	8300 3600 8700 3600
Wire Wire Line
	8950 3600 8700 3600
Connection ~ 8700 3600
Wire Notes Line
	10400 3000 10400 4750
Wire Notes Line
	10400 4750 7300 4750
Wire Notes Line
	7300 4750 7300 3000
Wire Notes Line
	7300 3000 10400 3000
Text Notes 8650 2950 0    50   ~ 0
Radio
$Comp
L Device:Buzzer BZ1
U 1 1 5BE9AC1A
P 8450 5600
F 0 "BZ1" H 8603 5629 50  0000 L CNN
F 1 "Buzzer" H 8603 5538 50  0000 L CNN
F 2 "Buzzer_Beeper:Buzzer_12x9.5RM7.6" V 8425 5700 50  0001 C CNN
F 3 "~" V 8425 5700 50  0001 C CNN
	1    8450 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5BE9AD02
P 9700 5600
F 0 "D1" H 9692 5345 50  0000 C CNN
F 1 "LED" H 9692 5436 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9700 5600 50  0001 C CNN
F 3 "~" H 9700 5600 50  0001 C CNN
	1    9700 5600
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 5BE9ADEF
P 9700 6050
F 0 "D2" H 9692 5795 50  0000 C CNN
F 1 "LED" H 9692 5886 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9700 6050 50  0001 C CNN
F 3 "~" H 9700 6050 50  0001 C CNN
	1    9700 6050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5BE9B7F3
P 8350 6400
F 0 "#PWR0111" H 8350 6150 50  0001 C CNN
F 1 "GND" H 8355 6227 50  0000 C CNN
F 2 "" H 8350 6400 50  0001 C CNN
F 3 "" H 8350 6400 50  0001 C CNN
	1    8350 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 5950 8000 5950
Text Label 7850 5950 3    50   ~ 0
BUZZER_CTRL
$Comp
L Device:R_Small R5
U 1 1 5BE9BDBA
P 8000 6150
F 0 "R5" H 8059 6196 50  0000 L CNN
F 1 "10k" H 8059 6105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8000 6150 50  0001 C CNN
F 3 "~" H 8000 6150 50  0001 C CNN
	1    8000 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 6050 8000 5950
Connection ~ 8000 5950
Wire Wire Line
	8000 5950 7850 5950
Wire Wire Line
	8350 6150 8350 6350
Wire Wire Line
	8000 6250 8000 6350
Wire Wire Line
	8000 6350 8350 6350
Connection ~ 8350 6350
Wire Wire Line
	8350 6350 8350 6400
Wire Wire Line
	8350 5700 8350 5750
Wire Wire Line
	8350 5400 8350 5500
$Comp
L power:GND #PWR0113
U 1 1 5BEA622D
P 10250 6150
F 0 "#PWR0113" H 10250 5900 50  0001 C CNN
F 1 "GND" H 10255 5977 50  0000 C CNN
F 2 "" H 10250 6150 50  0001 C CNN
F 3 "" H 10250 6150 50  0001 C CNN
	1    10250 6150
	1    0    0    -1  
$EndComp
Text Label 6400 3350 0    50   ~ 0
LED1CTRL
Text Label 5000 3350 2    50   ~ 0
LED2CTRL
Text Label 9550 5600 2    50   ~ 0
LED1CTRL
Text Label 9550 6050 2    50   ~ 0
LED2CTRL
Wire Notes Line
	10400 5150 10400 6650
Wire Notes Line
	10400 6650 7650 6650
Wire Notes Line
	7650 6650 7650 5150
Wire Notes Line
	7650 5150 10400 5150
Text Notes 8750 5100 0    50   ~ 0
Indicators
$Comp
L power:GND #PWR0114
U 1 1 5BEB5BFE
P 10050 1950
F 0 "#PWR0114" H 10050 1700 50  0001 C CNN
F 1 "GND" V 10055 1822 50  0000 R CNN
F 2 "" H 10050 1950 50  0001 C CNN
F 3 "" H 10050 1950 50  0001 C CNN
	1    10050 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9650 2250 9650 2300
Wire Wire Line
	9750 2300 9650 2300
Connection ~ 9650 2300
Wire Wire Line
	9650 2300 9650 2650
Wire Wire Line
	9850 1950 10000 1950
Wire Wire Line
	9950 2300 10000 2300
Wire Wire Line
	10000 2300 10000 1950
Connection ~ 10000 1950
Wire Wire Line
	10000 1950 10050 1950
Wire Wire Line
	9450 1950 9250 1950
Wire Wire Line
	7550 1950 7650 1950
Wire Wire Line
	7750 1600 7650 1600
Wire Wire Line
	7650 1600 7650 1950
Connection ~ 7650 1950
Wire Wire Line
	7650 1950 7900 1950
Wire Wire Line
	8100 1650 8100 1600
Wire Wire Line
	7950 1600 8100 1600
Connection ~ 8100 1600
Wire Wire Line
	8100 1600 8100 1500
$Comp
L Switch:SW_SPDT SW1
U 1 1 5BEC265F
P 8900 1050
F 0 "SW1" V 8950 1250 50  0000 C CNN
F 1 "SW_SPDT" V 8850 1250 50  0000 C CNN
F 2 "Connector_JST:JST_EH_B03B-EH-A_1x03_P2.50mm_Vertical" H 8900 1050 50  0001 C CNN
F 3 "" H 8900 1050 50  0001 C CNN
	1    8900 1050
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5BEC4298
P 8350 1250
F 0 "R6" V 8154 1250 50  0000 C CNN
F 1 "10k" V 8245 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8350 1250 50  0001 C CNN
F 3 "~" H 8350 1250 50  0001 C CNN
	1    8350 1250
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5BEC432F
P 7850 1250
F 0 "R7" V 8046 1250 50  0000 C CNN
F 1 "10k" V 7955 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7850 1250 50  0001 C CNN
F 3 "~" H 7850 1250 50  0001 C CNN
	1    7850 1250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5BEC43BA
P 7550 1250
F 0 "#PWR0115" H 7550 1000 50  0001 C CNN
F 1 "GND" H 7650 1100 50  0000 R CNN
F 2 "" H 7550 1250 50  0001 C CNN
F 3 "" H 7550 1250 50  0001 C CNN
	1    7550 1250
	0    1    1    0   
$EndComp
Text Label 8100 950  0    50   ~ 0
LATCH_SENSE
Text Label 6400 3750 0    50   ~ 0
LATCH_SENSE
Wire Wire Line
	8100 950  8100 1250
Wire Notes Line
	10400 2750 7300 2750
Wire Notes Line
	7300 2750 7300 650 
Wire Notes Line
	7300 650  10400 650 
Text Notes 8400 600  0    50   ~ 0
E-Match Firing Circuits
$Comp
L Interface_USB:FT230XS U3
U 1 1 5BEDC42A
P 4850 6700
F 0 "U3" H 4850 6850 50  0000 C CNN
F 1 "FT230XS" H 4850 6700 50  0000 C CNN
F 2 "Package_SO:SSOP-16_3.9x4.9mm_P0.635mm" H 5300 6050 50  0001 C CNN
F 3 "http://www.ftdichip.com/Products/ICs/FT230X.html" H 4850 6700 50  0001 C CNN
	1    4850 6700
	1    0    0    -1  
$EndComp
Text Label 5000 3550 2    50   ~ 0
USARTD0_RX
Text Label 5000 3650 2    50   ~ 0
USARTD0_TX
Text Label 5550 6300 0    50   ~ 0
USARTD0_RX
Text Label 5550 6400 0    50   ~ 0
USARTD0_TX
$Comp
L Device:C_Small C2
U 1 1 5BEE2353
P 5150 7600
F 0 "C2" V 5379 7600 50  0000 C CNN
F 1 "100nF" V 5288 7600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5150 7600 50  0001 C CNN
F 3 "~" H 5150 7600 50  0001 C CNN
	1    5150 7600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5BEE5284
P 4850 7600
F 0 "#PWR0116" H 4850 7350 50  0001 C CNN
F 1 "GND" H 4855 7427 50  0000 C CNN
F 2 "" H 4850 7600 50  0001 C CNN
F 3 "" H 4850 7600 50  0001 C CNN
	1    4850 7600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5BEE653E
P 4650 5900
F 0 "C1" V 4600 5650 50  0000 C CNN
F 1 "100nF" V 4700 5650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4650 5900 50  0001 C CNN
F 3 "~" H 4650 5900 50  0001 C CNN
	1    4650 5900
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5BEE659A
P 4650 5500
F 0 "C3" V 4600 5250 50  0000 C CNN
F 1 "100nF" V 4700 5250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4650 5500 50  0001 C CNN
F 3 "~" H 4650 5500 50  0001 C CNN
	1    4650 5500
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5BEE65F8
P 4650 5700
F 0 "C4" V 4600 5450 50  0000 C CNN
F 1 "4.7uF" V 4700 5450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4650 5700 50  0001 C CNN
F 3 "~" H 4650 5700 50  0001 C CNN
	1    4650 5700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5BEE8EB9
P 4550 5400
F 0 "#PWR0117" H 4550 5150 50  0001 C CNN
F 1 "GND" H 4555 5227 50  0000 C CNN
F 2 "" H 4550 5400 50  0001 C CNN
F 3 "" H 4550 5400 50  0001 C CNN
	1    4550 5400
	-1   0    0    1   
$EndComp
$Comp
L Connector:USB_B_Micro J2
U 1 1 5BEEE507
P 2350 7000
F 0 "J2" H 2405 7467 50  0000 C CNN
F 1 "USB_B_Micro" H 2405 7376 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Amphenol_10103594-0001LF_Horizontal" H 2500 6950 50  0001 C CNN
F 3 "~" H 2500 6950 50  0001 C CNN
	1    2350 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5BEEE60D
P 2650 6250
F 0 "R3" H 2709 6296 50  0000 L CNN
F 1 "47k" H 2709 6205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2650 6250 50  0001 C CNN
F 3 "~" H 2650 6250 50  0001 C CNN
	1    2650 6250
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5BEEE6A9
P 2650 5950
F 0 "R4" H 2709 5996 50  0000 L CNN
F 1 "10k" H 2709 5905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2650 5950 50  0001 C CNN
F 3 "~" H 2650 5950 50  0001 C CNN
	1    2650 5950
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 6150 2650 6100
$Comp
L Device:R_Small R9
U 1 1 5BF0E6B2
P 3950 6700
F 0 "R9" V 4050 6700 50  0000 C CNN
F 1 "27" V 4150 6700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3950 6700 50  0001 C CNN
F 3 "~" H 3950 6700 50  0001 C CNN
	1    3950 6700
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R8
U 1 1 5BF0E77E
P 3950 6600
F 0 "R8" V 3754 6600 50  0000 C CNN
F 1 "27" V 3845 6600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3950 6600 50  0001 C CNN
F 3 "~" H 3950 6600 50  0001 C CNN
	1    3950 6600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5BF33C05
P 2350 7550
F 0 "#PWR01" H 2350 7300 50  0001 C CNN
F 1 "GND" H 2355 7377 50  0000 C CNN
F 2 "" H 2350 7550 50  0001 C CNN
F 3 "" H 2350 7550 50  0001 C CNN
	1    2350 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 7550 2350 7500
Wire Wire Line
	2250 7400 2250 7500
Wire Wire Line
	2250 7500 2350 7500
Connection ~ 2350 7500
Wire Wire Line
	2350 7500 2350 7400
Text Label 5550 6800 0    50   ~ 0
VBUS_SENSE
$Comp
L power:GND #PWR03
U 1 1 5BF431F4
P 2650 5750
F 0 "#PWR03" H 2650 5500 50  0001 C CNN
F 1 "GND" H 2655 5577 50  0000 C CNN
F 2 "" H 2650 5750 50  0001 C CNN
F 3 "" H 2650 5750 50  0001 C CNN
	1    2650 5750
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 5750 2650 5850
Wire Wire Line
	2650 6100 2900 6100
Connection ~ 2650 6100
Wire Wire Line
	2650 6100 2650 6050
Text Label 2900 6100 1    50   ~ 0
VBUS_SENSE
Text Label 4950 6000 0    50   ~ 0
FTDI_DECOUPLED_V
Text Label 4150 6300 2    50   ~ 0
FTDI_DECOUPLED_V
Wire Wire Line
	4550 5500 4550 5700
Connection ~ 4550 5700
Wire Wire Line
	4550 5500 4550 5400
Connection ~ 4550 5500
Wire Wire Line
	4750 5700 4750 5500
Wire Wire Line
	4750 5700 4750 5900
Wire Wire Line
	4550 5700 4550 5900
Connection ~ 4750 5700
Wire Wire Line
	4750 5900 4750 6000
Connection ~ 4750 5900
Text Label 2850 7000 0    50   ~ 0
USB_D+
Text Label 2850 7100 0    50   ~ 0
USB_D-
Text Label 4150 6900 3    50   ~ 0
FTDI_DECOUPLED_V
Wire Wire Line
	4750 7400 4850 7400
Text Label 5250 7600 0    50   ~ 0
FTDI_DECOUPLED_V
Wire Wire Line
	4850 7600 5050 7600
Wire Wire Line
	4850 7600 4850 7400
Connection ~ 4850 7600
Connection ~ 4850 7400
Wire Wire Line
	4850 7400 4950 7400
Wire Notes Line
	10400 650  10400 2750
Wire Wire Line
	4050 6600 4150 6600
Wire Wire Line
	4050 6700 4150 6700
Text Label 3850 6600 2    50   ~ 0
USB_D-
Text Label 3850 6700 2    50   ~ 0
USB_D+
Wire Notes Line
	3350 5150 6100 5150
Wire Notes Line
	6100 5150 6100 7850
Wire Notes Line
	6100 7850 3350 7850
Wire Notes Line
	3350 7850 3350 5150
Text Notes 4500 5100 0    50   ~ 0
FTDI Chip
Wire Notes Line
	2100 5150 3200 5150
Wire Notes Line
	3200 5150 3200 7850
Wire Notes Line
	3200 7850 2100 7850
Wire Notes Line
	2100 7850 2100 5150
Text Notes 2400 5100 0    50   ~ 0
USB Connector
Text Label 6400 3850 0    50   ~ 0
LATCH_ENABLE
Wire Notes Line
	550  650  550  4750
Wire Notes Line
	550  4750 4050 4750
$Comp
L Switch:SW_SPDT SW2
U 1 1 5C08D6C1
P 850 2200
F 0 "SW2" V 896 2012 50  0000 R CNN
F 1 "SW_SPDT" V 805 2012 50  0000 R CNN
F 2 "Connector_JST:JST_PH_B2B-PH-K_1x02_P2.00mm_Vertical" H 850 2200 50  0001 C CNN
F 3 "" H 850 2200 50  0001 C CNN
	1    850  2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	850  2400 850  2500
Wire Wire Line
	750  1900 750  2000
Wire Notes Line
	550  650  4050 650 
Wire Notes Line
	4050 650  4050 4750
Text Notes 2300 900  0    50   ~ 0
3.3V Buck Converter
$Comp
L Device:C_Small C13
U 1 1 5C18BE4E
P 5550 1600
F 0 "C13" V 5500 1350 50  0000 C CNN
F 1 "100nF" V 5412 1600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5550 1600 50  0001 C CNN
F 3 "~" H 5550 1600 50  0001 C CNN
	1    5550 1600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5C18BF33
P 5100 1600
F 0 "#PWR08" H 5100 1350 50  0001 C CNN
F 1 "GND" V 5105 1472 50  0000 R CNN
F 2 "" H 5100 1600 50  0001 C CNN
F 3 "" H 5100 1600 50  0001 C CNN
	1    5100 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 1600 5400 1600
$Comp
L Device:L L3
U 1 1 5C199B17
P 5800 1200
F 0 "L3" H 5853 1246 50  0000 L CNN
F 1 "27nH" H 5853 1155 50  0000 L CNN
F 2 "Inductor_SMD:L_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 5800 1200 50  0001 C CNN
F 3 "~" H 5800 1200 50  0001 C CNN
	1    5800 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C15
U 1 1 5C199C85
P 5950 1600
F 0 "C15" V 5721 1600 50  0000 C CNN
F 1 "100nF" V 5812 1600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5950 1600 50  0001 C CNN
F 3 "~" H 5950 1600 50  0001 C CNN
	1    5950 1600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5C199E1A
P 6100 1600
F 0 "#PWR011" H 6100 1350 50  0001 C CNN
F 1 "GND" V 6105 1472 50  0000 R CNN
F 2 "" H 6100 1600 50  0001 C CNN
F 3 "" H 6100 1600 50  0001 C CNN
	1    6100 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6100 1600 6050 1600
Wire Wire Line
	5800 1650 5800 1600
Wire Wire Line
	5850 1600 5800 1600
Connection ~ 5800 1600
Wire Wire Line
	5800 1600 5800 1350
Wire Wire Line
	5650 1600 5700 1600
Wire Wire Line
	5700 1600 5700 1650
$Comp
L power:+3.3V #PWR010
U 1 1 5C1DFEF7
P 5900 750
F 0 "#PWR010" H 5900 600 50  0001 C CNN
F 1 "+3.3V" V 5900 1000 50  0000 C CNN
F 2 "" H 5900 750 50  0001 C CNN
F 3 "" H 5900 750 50  0001 C CNN
	1    5900 750 
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 750  5700 750 
Wire Wire Line
	5700 750  5700 900 
Connection ~ 5800 750 
Wire Wire Line
	5800 750  5800 1050
Connection ~ 5700 1600
Wire Notes Line
	600  5150 1900 5150
Wire Notes Line
	1900 5150 1900 7850
Wire Notes Line
	1900 7850 600  7850
Wire Notes Line
	600  7850 600  5150
Wire Notes Line
	4400 4750 4400 650 
Wire Notes Line
	4400 650  7000 650 
Wire Notes Line
	7000 650  7000 4750
Wire Notes Line
	7000 4750 4400 4750
Text Notes 5550 600  0    50   ~ 0
Microcontroller
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J5
U 1 1 5C4DF7A4
P 6850 5900
F 0 "J5" V 6900 5850 50  0000 L CNN
F 1 "Conn_02x03_Odd_Even" V 7500 5700 50  0001 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x03_P1.27mm_Vertical" H 6850 5900 50  0001 C CNN
F 3 "~" H 6850 5900 50  0001 C CNN
	1    6850 5900
	0    1    1    0   
$EndComp
Text Label 5000 1950 2    50   ~ 0
PDI_CLK
Text Label 5000 2050 2    50   ~ 0
PDI_DATA
Text Label 6950 5700 1    50   ~ 0
PDI_DATA
$Comp
L power:+3.3V #PWR014
U 1 1 5C4DFED2
P 7000 6300
F 0 "#PWR014" H 7000 6150 50  0001 C CNN
F 1 "+3.3V" H 6900 6450 50  0000 L CNN
F 2 "" H 7000 6300 50  0001 C CNN
F 3 "" H 7000 6300 50  0001 C CNN
	1    7000 6300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5C4E7D11
P 6750 6250
F 0 "#PWR013" H 6750 6000 50  0001 C CNN
F 1 "GND" H 6800 6100 50  0000 R CNN
F 2 "" H 6750 6250 50  0001 C CNN
F 3 "" H 6750 6250 50  0001 C CNN
	1    6750 6250
	1    0    0    -1  
$EndComp
Text Label 6750 5600 1    50   ~ 0
PDI_CLK
Wire Wire Line
	6750 6250 6750 6200
Wire Wire Line
	6750 5600 6750 5650
$Comp
L Device:R_Small R13
U 1 1 5C58DC34
P 6450 5950
F 0 "R13" H 6509 5996 50  0000 L CNN
F 1 "10k" H 6509 5905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6450 5950 50  0001 C CNN
F 3 "~" H 6450 5950 50  0001 C CNN
	1    6450 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 5650 6450 5650
Wire Wire Line
	6450 5650 6450 5850
Connection ~ 6750 5650
Wire Wire Line
	6750 5650 6750 5700
Wire Wire Line
	6450 6050 6450 6500
Wire Wire Line
	6450 6500 6950 6500
Wire Wire Line
	6950 6500 6950 6300
Wire Wire Line
	7000 6300 6950 6300
Connection ~ 6950 6300
Wire Wire Line
	6950 6300 6950 6200
Wire Notes Line
	7250 5150 7250 6650
Wire Notes Line
	7250 6650 6300 6650
Wire Notes Line
	6300 6650 6300 5150
Wire Notes Line
	6300 5150 7250 5150
Text Notes 6600 5100 0    50   ~ 0
PDI Port
Wire Wire Line
	8300 1950 8750 1950
Wire Wire Line
	7750 1250 7550 1250
Wire Wire Line
	7950 1250 8100 1250
Wire Wire Line
	8100 1250 8250 1250
Connection ~ 8100 1250
Wire Wire Line
	8850 1950 9000 1950
Wire Wire Line
	8800 1250 8450 1250
Wire Wire Line
	9000 1250 9000 1950
Connection ~ 9000 1950
Wire Wire Line
	9000 1950 9150 1950
Wire Wire Line
	9250 750  8900 750 
Wire Wire Line
	8900 750  8900 850 
$Comp
L Device:Q_NJFET_GSD Q1
U 1 1 5C763513
P 8100 1850
F 0 "Q1" V 8336 1850 50  0000 C CNN
F 1 "Q_NJFET_GSD" V 8427 1850 50  0000 C CNN
F 2 "custom_components:NFET Toshiba SSM3K339R" H 8300 1950 50  0001 C CNN
F 3 "~" H 8100 1850 50  0001 C CNN
	1    8100 1850
	0    1    1    0   
$EndComp
$Comp
L Device:Q_NJFET_GSD Q3
U 1 1 5C76363A
P 9650 2050
F 0 "Q3" V 9978 2050 50  0000 C CNN
F 1 "Q_NJFET_GSD" V 9887 2050 50  0000 C CNN
F 2 "custom_components:NFET Toshiba SSM3K339R" H 9850 2150 50  0001 C CNN
F 3 "~" H 9650 2050 50  0001 C CNN
	1    9650 2050
	0    -1   -1   0   
$EndComp
$Comp
L Device:Q_NJFET_GSD Q2
U 1 1 5C7639FA
P 8250 5950
F 0 "Q2" H 8441 5996 50  0000 L CNN
F 1 "Q_NJFET_GSD" H 8441 5905 50  0000 L CNN
F 2 "custom_components:NFET Toshiba SSM3K339R" H 8450 6050 50  0001 C CNN
F 3 "~" H 8250 5950 50  0001 C CNN
	1    8250 5950
	1    0    0    -1  
$EndComp
Text Label 5000 3750 2    50   ~ 0
BUZZER_CTRL
Text Label 6400 1950 0    50   ~ 0
SOLENOID_CTRL
$Comp
L Connector:Conn_01x02_Male J6
U 1 1 5C7670F6
P 1200 5750
F 0 "J6" H 1300 5800 50  0000 R CNN
F 1 "Conn_01x02_Male" V 1100 6100 50  0000 R CNN
F 2 "Connector_JST:JST_PH_B2B-PH-K_1x02_P2.00mm_Vertical" H 1200 5750 50  0001 C CNN
F 3 "~" H 1200 5750 50  0001 C CNN
	1    1200 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NJFET_GSD Q4
U 1 1 5C767885
P 1300 6400
F 0 "Q4" H 1200 6550 50  0000 L CNN
F 1 "Q_NJFET_GSD" V 1550 6150 50  0000 L CNN
F 2 "custom_components:NFET Toshiba SSM3K339R" H 1500 6500 50  0001 C CNN
F 3 "~" H 1300 6400 50  0001 C CNN
	1    1300 6400
	1    0    0    -1  
$EndComp
Text Label 800  6400 1    50   ~ 0
SOLENOID_CTRL
$Comp
L Device:R_Small R14
U 1 1 5C76FECF
P 950 6600
F 0 "R14" H 1009 6646 50  0000 L CNN
F 1 "10k" H 1009 6555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 950 6600 50  0001 C CNN
F 3 "~" H 950 6600 50  0001 C CNN
	1    950  6600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5C788DF8
P 1400 6800
F 0 "#PWR015" H 1400 6550 50  0001 C CNN
F 1 "GND" H 1405 6627 50  0000 C CNN
F 2 "" H 1400 6800 50  0001 C CNN
F 3 "" H 1400 6800 50  0001 C CNN
	1    1400 6800
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR016
U 1 1 5C7A3006
P 1400 5550
F 0 "#PWR016" H 1400 5400 50  0001 C CNN
F 1 "+12V" H 1415 5723 50  0000 C CNN
F 2 "" H 1400 5550 50  0001 C CNN
F 3 "" H 1400 5550 50  0001 C CNN
	1    1400 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 5550 1400 5650
$Comp
L Device:D_Small D4
U 1 1 5C7ABD8D
P 1600 5850
F 0 "D4" V 1650 6050 50  0000 R CNN
F 1 "D_Small" H 1600 5950 50  0000 R CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" V 1600 5850 50  0001 C CNN
F 3 "~" V 1600 5850 50  0001 C CNN
	1    1600 5850
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 5750 1600 5650
Wire Wire Line
	1600 5650 1400 5650
Connection ~ 1400 5650
Wire Wire Line
	1400 5650 1400 5750
Text Notes 2000 600  0    50   ~ 0
Power System
Text Notes 1050 5100 0    50   ~ 0
Latch Solenoid
Wire Wire Line
	10250 5600 10250 6050
$Comp
L Device:R_Small R15
U 1 1 5C036F52
P 10050 5600
F 0 "R15" V 9854 5600 50  0000 C CNN
F 1 "220" V 9945 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10050 5600 50  0001 C CNN
F 3 "~" H 10050 5600 50  0001 C CNN
	1    10050 5600
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R16
U 1 1 5C037053
P 10050 6050
F 0 "R16" V 9854 6050 50  0000 C CNN
F 1 "220" V 9945 6050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10050 6050 50  0001 C CNN
F 3 "~" H 10050 6050 50  0001 C CNN
	1    10050 6050
	0    1    1    0   
$EndComp
Wire Wire Line
	10150 5600 10250 5600
Wire Wire Line
	10150 6050 10250 6050
Connection ~ 10250 6050
Wire Wire Line
	10250 6050 10250 6150
Wire Wire Line
	9850 5600 9950 5600
Wire Wire Line
	9850 6050 9950 6050
$Comp
L Device:C_Small C18
U 1 1 5C0E561E
P 2800 7250
F 0 "C18" H 2892 7296 50  0000 L CNN
F 1 "47pF" H 2892 7205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2800 7250 50  0001 C CNN
F 3 "~" H 2800 7250 50  0001 C CNN
	1    2800 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C17
U 1 1 5C0E57E3
P 2800 6800
F 0 "C17" H 2892 6846 50  0000 L CNN
F 1 "47pF" H 2892 6755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2800 6800 50  0001 C CNN
F 3 "~" H 2800 6800 50  0001 C CNN
	1    2800 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 6350 2650 6800
Wire Wire Line
	2650 7000 2800 7000
Wire Wire Line
	2800 6900 2800 7000
Connection ~ 2800 7000
Wire Wire Line
	2800 7000 2850 7000
Wire Wire Line
	2850 7100 2800 7100
Wire Wire Line
	2800 7150 2800 7100
Connection ~ 2800 7100
Wire Wire Line
	2800 7100 2650 7100
$Comp
L power:GND #PWR017
U 1 1 5C1346C3
P 2800 6650
F 0 "#PWR017" H 2800 6400 50  0001 C CNN
F 1 "GND" H 2805 6477 50  0000 C CNN
F 2 "" H 2800 6650 50  0001 C CNN
F 3 "" H 2800 6650 50  0001 C CNN
	1    2800 6650
	-1   0    0    1   
$EndComp
Wire Wire Line
	2800 6650 2800 6700
$Comp
L power:GND #PWR018
U 1 1 5C13ECAE
P 2800 7400
F 0 "#PWR018" H 2800 7150 50  0001 C CNN
F 1 "GND" H 2805 7227 50  0000 C CNN
F 2 "" H 2800 7400 50  0001 C CNN
F 3 "" H 2800 7400 50  0001 C CNN
	1    2800 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 7400 2800 7350
$Comp
L Mechanical:MountingHole MH1
U 1 1 5C0E485B
P 850 7100
F 0 "MH1" H 950 7146 50  0000 L CNN
F 1 "MountingHole" H 950 7055 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 850 7100 50  0001 C CNN
F 3 "~" H 850 7100 50  0001 C CNN
	1    850  7100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH2
U 1 1 5C0E491B
P 850 7300
F 0 "MH2" H 950 7346 50  0000 L CNN
F 1 "MountingHole" H 950 7255 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 850 7300 50  0001 C CNN
F 3 "~" H 850 7300 50  0001 C CNN
	1    850  7300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH3
U 1 1 5C0E49C1
P 850 7500
F 0 "MH3" H 950 7546 50  0000 L CNN
F 1 "MountingHole" H 950 7455 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 850 7500 50  0001 C CNN
F 3 "~" H 850 7500 50  0001 C CNN
	1    850  7500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH4
U 1 1 5C0E4A6B
P 850 7700
F 0 "MH4" H 950 7746 50  0000 L CNN
F 1 "MountingHole" H 950 7655 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 850 7700 50  0001 C CNN
F 3 "~" H 850 7700 50  0001 C CNN
	1    850  7700
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x01 SW3
U 1 1 5C0E6EA0
P 8100 3800
F 0 "SW3" H 8100 3950 50  0000 C CNN
F 1 "SW_DIP_x01" H 8100 3650 50  0000 C CNN
F 2 "custom_components:DIP Switch CHS-01TA" H 8100 3800 50  0001 C CNN
F 3 "" H 8100 3800 50  0001 C CNN
	1    8100 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R17
U 1 1 5C0F1CA2
P 8500 4000
F 0 "R17" H 8559 4046 50  0000 L CNN
F 1 "10k" H 8559 3955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8500 4000 50  0001 C CNN
F 3 "~" H 8500 4000 50  0001 C CNN
	1    8500 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 3900 8500 3800
Connection ~ 8500 3800
Wire Wire Line
	8500 3800 8950 3800
Wire Wire Line
	8500 4100 8500 4500
Connection ~ 8500 4500
$Comp
L Device:C_Small C19
U 1 1 5C1204F1
P 5550 1250
F 0 "C19" V 5550 1000 50  0000 C CNN
F 1 "100nF" V 5412 1250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5550 1250 50  0001 C CNN
F 3 "~" H 5550 1250 50  0001 C CNN
	1    5550 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 1250 5400 1250
Wire Wire Line
	5400 1250 5400 1600
Connection ~ 5400 1600
Wire Wire Line
	5400 1600 5450 1600
Wire Wire Line
	5650 1250 5700 1250
Connection ~ 5700 1250
Wire Wire Line
	5700 1250 5700 1600
$Comp
L power:+3.3V #PWR0118
U 1 1 5C1372B3
P 4750 5400
F 0 "#PWR0118" H 4750 5250 50  0001 C CNN
F 1 "+3.3V" H 4765 5573 50  0000 C CNN
F 2 "" H 4750 5400 50  0001 C CNN
F 3 "" H 4750 5400 50  0001 C CNN
	1    4750 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 5400 4750 5500
Connection ~ 4750 5500
Wire Wire Line
	5800 750  5900 750 
$Comp
L Device:C_Small C20
U 1 1 5C18751B
P 5550 900
F 0 "C20" V 5550 650 50  0000 C CNN
F 1 "100nF" V 5412 900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5550 900 50  0001 C CNN
F 3 "~" H 5550 900 50  0001 C CNN
	1    5550 900 
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 900  5400 900 
Wire Wire Line
	5400 900  5400 1250
Connection ~ 5400 1250
Wire Wire Line
	5650 900  5700 900 
Connection ~ 5700 900 
Wire Wire Line
	5700 900  5700 1250
Wire Wire Line
	1600 5950 1600 6050
Wire Wire Line
	1600 6050 1400 6050
Connection ~ 1400 6050
Wire Wire Line
	1400 5850 1400 6050
Wire Wire Line
	1400 6050 1400 6200
Wire Wire Line
	1400 6600 1400 6750
Wire Wire Line
	800  6400 950  6400
Wire Wire Line
	950  6700 950  6750
Wire Wire Line
	950  6750 1400 6750
Connection ~ 1400 6750
Wire Wire Line
	1400 6750 1400 6800
Wire Wire Line
	950  6500 950  6400
Connection ~ 950  6400
Wire Wire Line
	950  6400 1100 6400
$Comp
L power:+12V #PWR?
U 1 1 5C6A9409
P 750 1900
F 0 "#PWR?" H 750 1750 50  0001 C CNN
F 1 "+12V" H 765 2073 50  0000 C CNN
F 2 "" H 750 1900 50  0001 C CNN
F 3 "" H 750 1900 50  0001 C CNN
	1    750  1900
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5C6A9C8C
P 9250 750
F 0 "#PWR?" H 9250 600 50  0001 C CNN
F 1 "+12V" V 9265 878 50  0000 L CNN
F 2 "" H 9250 750 50  0001 C CNN
F 3 "" H 9250 750 50  0001 C CNN
	1    9250 750 
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5C6AA293
P 8350 5400
F 0 "#PWR?" H 8350 5250 50  0001 C CNN
F 1 "+12V" H 8365 5573 50  0000 C CNN
F 2 "" H 8350 5400 50  0001 C CNN
F 3 "" H 8350 5400 50  0001 C CNN
	1    8350 5400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 5C6AAD4F
P 1050 3800
F 0 "J?" H 1023 3680 50  0000 R CNN
F 1 "Conn_01x02_Male" H 1023 3771 50  0000 R CNN
F 2 "" H 1050 3800 50  0001 C CNN
F 3 "~" H 1050 3800 50  0001 C CNN
	1    1050 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	850  3400 850  3700
Wire Wire Line
	850  3800 850  4100
Text Notes 1050 3950 0    50   ~ 0
External power header
$Comp
L Custom_Components:IC_REG_BUCK_3.3_VAP1509 U?
U 1 1 5C6DB9D9
P 2650 1400
F 0 "U?" H 2650 1550 50  0000 C CNN
F 1 "IC_REG_BUCK_3.3_VAP1509" H 2650 1350 50  0000 C CNN
F 2 "" H 3150 1300 50  0001 C CNN
F 3 "" H 3150 1300 50  0001 C CNN
	1    2650 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L?
U 1 1 5C6DBCD4
P 1650 1150
F 0 "L?" H 1698 1196 50  0000 L CNN
F 1 "47nH" H 1698 1105 50  0000 L CNN
F 2 "" H 1650 1150 50  0001 C CNN
F 3 "~" H 1650 1150 50  0001 C CNN
	1    1650 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Small D?
U 1 1 5C6DBE4C
P 1700 1550
F 0 "D?" H 1700 1755 50  0000 C CNN
F 1 "D_Small" H 1700 1664 50  0000 C CNN
F 2 "" V 1700 1550 50  0001 C CNN
F 3 "~" V 1700 1550 50  0001 C CNN
	1    1700 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5C6DBF12
P 2150 1750
F 0 "C?" H 2242 1796 50  0000 L CNN
F 1 "C_Small" H 2242 1705 50  0000 L CNN
F 2 "" H 2150 1750 50  0001 C CNN
F 3 "~" H 2150 1750 50  0001 C CNN
	1    2150 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5C6DBFD8
P 2750 1950
F 0 "C?" H 2842 1996 50  0000 L CNN
F 1 "C_Small" H 2842 1905 50  0000 L CNN
F 2 "" H 2750 1950 50  0001 C CNN
F 3 "~" H 2750 1950 50  0001 C CNN
	1    2750 1950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
