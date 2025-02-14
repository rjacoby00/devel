EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "IoT Radio Board"
Date "2021-02-18"
Rev "1"
Comp "Las Lomas"
Comment1 "Ryan Jacoby"
Comment2 "Senior Project"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RF_Module:RFM69HCW U1
U 1 1 6028A441
P 1900 3250
F 0 "U1" H 1550 3700 50  0000 C CNN
F 1 "RFM69HCW" V 1900 3200 50  0000 C CNN
F 2 "Digikey Footprints:RF_Module_COM-13909" H -1400 4900 50  0001 C CNN
F 3 "https://www.hoperf.com/data/upload/portal/20181127/5bfcb8284d838.pdf" H -1400 4900 50  0001 C CNN
F 4 "" H 1900 3250 50  0001 C CNN "LCSC Part #"
F 5 "0" H 1900 3250 50  0001 C CNN "LCSC Part"
	1    1900 3250
	1    0    0    -1  
$EndComp
Text GLabel 1400 2950 0    50   Input ~ 0
SCK
Text GLabel 1400 3050 0    50   Input ~ 0
MOSI
Text GLabel 1400 3150 0    50   Input ~ 0
MISO
$Comp
L Connector:Conn_01x01_Male J1
U 1 1 60292EA1
P 2850 2950
F 0 "J1" H 2800 2950 50  0000 R CNN
F 1 "Conn_01x01_Male" H 3200 3050 50  0000 R CNN
F 2 "RF_Antenna:Wire_Antena" H 2850 2950 50  0001 C CNN
F 3 "~" H 2850 2950 50  0001 C CNN
F 4 "" H 2850 2950 50  0001 C CNN "LCSC Part #"
F 5 "0" H 2850 2950 50  0001 C CNN "LCSC Part"
	1    2850 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	2400 2950 2650 2950
$Comp
L rj_microprocessors:UFL_SMA X1
U 1 1 60294052
P 2650 2550
F 0 "X1" H 2650 2815 50  0000 C CNN
F 1 "UFL_SMA" H 2650 2724 50  0000 C CNN
F 2 "Connector_Coaxial:U.FL_Hirose_U.FL-R-SMT-1_Vertical" H 2650 2550 50  0001 C CNN
F 3 "" H 2650 2550 50  0001 C CNN
F 4 " C88374" H 2650 2550 50  0001 C CNN "LCSC Part #"
F 5 " C88374" H 2650 2550 50  0001 C CNN "LCSC Part"
	1    2650 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2600 2450 2500
Wire Wire Line
	2850 2600 2850 2500
$Comp
L power:GND #PWR0101
U 1 1 60295136
P 2850 2600
F 0 "#PWR0101" H 2850 2350 50  0001 C CNN
F 1 "GND" H 2855 2427 50  0000 C CNN
F 2 "" H 2850 2600 50  0001 C CNN
F 3 "" H 2850 2600 50  0001 C CNN
	1    2850 2600
	1    0    0    -1  
$EndComp
Connection ~ 2850 2600
$Comp
L power:GND #PWR0102
U 1 1 60295367
P 2450 2600
F 0 "#PWR0102" H 2450 2350 50  0001 C CNN
F 1 "GND" H 2455 2427 50  0000 C CNN
F 2 "" H 2450 2600 50  0001 C CNN
F 3 "" H 2450 2600 50  0001 C CNN
	1    2450 2600
	1    0    0    -1  
$EndComp
Connection ~ 2450 2600
Wire Wire Line
	2650 2550 2650 2950
$Comp
L Device:R R1
U 1 1 602987DC
P 1050 3250
F 0 "R1" V 950 3250 50  0000 C CNN
F 1 "100K" V 1050 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 980 3250 50  0001 C CNN
F 3 "~" H 1050 3250 50  0001 C CNN
F 4 " C25741" H 1050 3250 50  0001 C CNN "LCSC Part #"
F 5 " C25741" H 1050 3250 50  0001 C CNN "LCSC Part"
	1    1050 3250
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 60298D21
P 1050 3450
F 0 "R2" V 950 3450 50  0000 C CNN
F 1 "100K" V 1050 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 980 3450 50  0001 C CNN
F 3 "~" H 1050 3450 50  0001 C CNN
F 4 " C25741" H 1050 3450 50  0001 C CNN "LCSC Part #"
F 5 " C25741" H 1050 3450 50  0001 C CNN "LCSC Part"
	1    1050 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	1200 3250 1400 3250
Wire Wire Line
	1200 3450 1400 3450
Text GLabel 1400 3350 0    50   Input ~ 0
CS
Connection ~ 1400 3250
Text GLabel 1400 3550 0    50   Input ~ 0
RST
Connection ~ 1400 3450
Wire Wire Line
	900  3450 900  3250
$Comp
L power:+3.3V #PWR0103
U 1 1 6029B15D
P 900 3200
F 0 "#PWR0103" H 900 3050 50  0001 C CNN
F 1 "+3.3V" H 915 3373 50  0000 C CNN
F 2 "" H 900 3200 50  0001 C CNN
F 3 "" H 900 3200 50  0001 C CNN
	1    900  3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  3250 900  3200
Connection ~ 900  3250
$Comp
L power:+3.3V #PWR0104
U 1 1 6029BF43
P 1900 2750
F 0 "#PWR0104" H 1900 2600 50  0001 C CNN
F 1 "+3.3V" H 1915 2923 50  0000 C CNN
F 2 "" H 1900 2750 50  0001 C CNN
F 3 "" H 1900 2750 50  0001 C CNN
	1    1900 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 6029E254
P 1800 3950
F 0 "#PWR0105" H 1800 3700 50  0001 C CNN
F 1 "GND" H 1805 3777 50  0000 C CNN
F 2 "" H 1800 3950 50  0001 C CNN
F 3 "" H 1800 3950 50  0001 C CNN
	1    1800 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3950 1800 3900
Wire Wire Line
	1800 3900 1900 3900
Wire Wire Line
	1900 3900 1900 3850
Connection ~ 1800 3900
Wire Wire Line
	1800 3900 1800 3850
Wire Wire Line
	1900 3900 2000 3900
Wire Wire Line
	2000 3900 2000 3850
Connection ~ 1900 3900
$Comp
L Device:C C1
U 1 1 6029F2BC
P 900 3750
F 0 "C1" H 1015 3796 50  0000 L CNN
F 1 "10u" H 1015 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 938 3600 50  0001 C CNN
F 3 "~" H 900 3750 50  0001 C CNN
F 4 " C15525" H 900 3750 50  0001 C CNN "LCSC Part #"
F 5 " C15525" H 900 3750 50  0001 C CNN "LCSC Part"
	1    900  3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  3600 900  3450
Connection ~ 900  3450
Wire Wire Line
	900  3900 1800 3900
Wire Wire Line
	1400 3450 1400 3550
Wire Wire Line
	1400 3250 1400 3350
$Comp
L power:GND #PWR0106
U 1 1 602A7991
P 5300 7200
F 0 "#PWR0106" H 5300 6950 50  0001 C CNN
F 1 "GND" H 5305 7027 50  0000 C CNN
F 2 "" H 5300 7200 50  0001 C CNN
F 3 "" H 5300 7200 50  0001 C CNN
	1    5300 7200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0107
U 1 1 602A8890
P 4200 5750
F 0 "#PWR0107" H 4200 5600 50  0001 C CNN
F 1 "+3.3V" H 4215 5923 50  0000 C CNN
F 2 "" H 4200 5750 50  0001 C CNN
F 3 "" H 4200 5750 50  0001 C CNN
	1    4200 5750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0108
U 1 1 602A8B83
P 5750 6450
F 0 "#PWR0108" H 5750 6300 50  0001 C CNN
F 1 "+3.3V" H 5900 6450 50  0000 C CNN
F 2 "" H 5750 6450 50  0001 C CNN
F 3 "" H 5750 6450 50  0001 C CNN
	1    5750 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 5750 4200 5800
Wire Wire Line
	4200 5800 4250 5800
Wire Wire Line
	5750 6450 5750 6500
Wire Wire Line
	5750 6500 5650 6500
$Comp
L power:+3.3VA #PWR0109
U 1 1 602A9910
P 3900 6150
F 0 "#PWR0109" H 3900 6000 50  0001 C CNN
F 1 "+3.3VA" H 3700 6200 50  0000 C CNN
F 2 "" H 3900 6150 50  0001 C CNN
F 3 "" H 3900 6150 50  0001 C CNN
	1    3900 6150
	1    0    0    -1  
$EndComp
Text GLabel 4250 6100 0    50   Input ~ 0
NRST
Text GLabel 4700 5150 1    50   Input ~ 0
BOOT0
Wire Wire Line
	3900 6200 3900 6150
Wire Wire Line
	3900 6200 4250 6200
Wire Wire Line
	5300 7200 5300 7150
$Comp
L power:GND #PWR0110
U 1 1 602ABE14
P 4450 5000
F 0 "#PWR0110" H 4450 4750 50  0001 C CNN
F 1 "GND" H 4455 4827 50  0000 C CNN
F 2 "" H 4450 5000 50  0001 C CNN
F 3 "" H 4450 5000 50  0001 C CNN
	1    4450 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 5000 4600 5000
Wire Wire Line
	4600 5000 4600 5150
$Comp
L Device:C C11
U 1 1 602D20A5
P 5750 6650
F 0 "C11" H 5865 6696 50  0000 L CNN
F 1 "100n" H 5865 6605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5788 6500 50  0001 C CNN
F 3 "~" H 5750 6650 50  0001 C CNN
F 4 " C1525" H 5750 6650 50  0001 C CNN "LCSC Part #"
F 5 " C1525" H 5750 6650 50  0001 C CNN "LCSC Part"
	1    5750 6650
	1    0    0    -1  
$EndComp
Connection ~ 5750 6500
$Comp
L power:GND #PWR0111
U 1 1 602D26D1
P 5750 6800
F 0 "#PWR0111" H 5750 6550 50  0001 C CNN
F 1 "GND" H 5755 6627 50  0000 C CNN
F 2 "" H 5750 6800 50  0001 C CNN
F 3 "" H 5750 6800 50  0001 C CNN
	1    5750 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 602D2D51
P 6200 6650
F 0 "C12" H 6315 6696 50  0000 L CNN
F 1 "10u" H 6315 6605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6238 6500 50  0001 C CNN
F 3 "~" H 6200 6650 50  0001 C CNN
F 4 " C15525" H 6200 6650 50  0001 C CNN "LCSC Part #"
F 5 " C15525" H 6200 6650 50  0001 C CNN "LCSC Part"
	1    6200 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 6500 6200 6500
Wire Wire Line
	6200 6800 5750 6800
Connection ~ 5750 6800
$Comp
L Device:C C8
U 1 1 602D7E63
P 3350 5950
F 0 "C8" H 3465 5996 50  0000 L CNN
F 1 "100n" H 3465 5905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3388 5800 50  0001 C CNN
F 3 "~" H 3350 5950 50  0001 C CNN
F 4 " C1525" H 3350 5950 50  0001 C CNN "LCSC Part #"
F 5 " C1525" H 3350 5950 50  0001 C CNN "LCSC Part"
	1    3350 5950
	1    0    0    -1  
$EndComp
Connection ~ 4200 5800
$Comp
L power:GND #PWR0112
U 1 1 602D891F
P 3350 6100
F 0 "#PWR0112" H 3350 5850 50  0001 C CNN
F 1 "GND" H 3355 5927 50  0000 C CNN
F 2 "" H 3350 6100 50  0001 C CNN
F 3 "" H 3350 6100 50  0001 C CNN
	1    3350 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 5800 4200 5800
Text GLabel 4700 7150 3    50   Input ~ 0
CS
Text GLabel 4800 7150 3    50   Input ~ 0
SCK
Text GLabel 4900 7150 3    50   Input ~ 0
MISO
Text GLabel 5000 7150 3    50   Input ~ 0
MOSI
$Comp
L Device:L L1
U 1 1 60306359
P 2750 6800
F 0 "L1" H 2802 6846 50  0000 L CNN
F 1 "39n" H 2802 6755 50  0000 L CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 2750 6800 50  0001 C CNN
F 3 "~" H 2750 6800 50  0001 C CNN
F 4 " C86063" H 2750 6800 50  0001 C CNN "LCSC Part #"
F 5 " C86063" H 2750 6800 50  0001 C CNN "LCSC Part"
	1    2750 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 60307136
P 2750 7250
F 0 "C5" H 2865 7296 50  0000 L CNN
F 1 "1u" H 2865 7205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2788 7100 50  0001 C CNN
F 3 "~" H 2750 7250 50  0001 C CNN
F 4 " C15849" H 2750 7250 50  0001 C CNN "LCSC Part #"
F 5 " C15849" H 2750 7250 50  0001 C CNN "LCSC Part"
	1    2750 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 60307772
P 3150 7250
F 0 "C6" H 3265 7296 50  0000 L CNN
F 1 "10n" H 3265 7205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3188 7100 50  0001 C CNN
F 3 "~" H 3150 7250 50  0001 C CNN
F 4 " C57112" H 3150 7250 50  0001 C CNN "LCSC Part #"
F 5 " C57112" H 3150 7250 50  0001 C CNN "LCSC Part"
	1    3150 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 6950 2750 7100
Wire Wire Line
	2750 7100 3150 7100
Connection ~ 2750 7100
Wire Wire Line
	3150 7400 2750 7400
$Comp
L power:+3.3VA #PWR0113
U 1 1 6030A6F6
P 3150 7100
F 0 "#PWR0113" H 3150 6950 50  0001 C CNN
F 1 "+3.3VA" H 3165 7273 50  0000 C CNN
F 2 "" H 3150 7100 50  0001 C CNN
F 3 "" H 3150 7100 50  0001 C CNN
	1    3150 7100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 6030ACB4
P 2750 7400
F 0 "#PWR0114" H 2750 7150 50  0001 C CNN
F 1 "GND" H 2755 7227 50  0000 C CNN
F 2 "" H 2750 7400 50  0001 C CNN
F 3 "" H 2750 7400 50  0001 C CNN
	1    2750 7400
	1    0    0    -1  
$EndComp
Connection ~ 2750 7400
$Comp
L power:+3.3V #PWR0115
U 1 1 6030D0C5
P 2750 6650
F 0 "#PWR0115" H 2750 6500 50  0001 C CNN
F 1 "+3.3V" H 2765 6823 50  0000 C CNN
F 2 "" H 2750 6650 50  0001 C CNN
F 3 "" H 2750 6650 50  0001 C CNN
	1    2750 6650
	1    0    0    -1  
$EndComp
Connection ~ 3150 7100
$Comp
L Device:C C2
U 1 1 6031D07A
P 900 5700
F 0 "C2" H 1015 5746 50  0000 L CNN
F 1 "12p" H 1015 5655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 938 5550 50  0001 C CNN
F 3 "~" H 900 5700 50  0001 C CNN
F 4 " C1547" H 900 5700 50  0001 C CNN "LCSC Part #"
F 5 " C1547" H 900 5700 50  0001 C CNN "LCSC Part"
	1    900  5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  5950 900  5850
Connection ~ 900  5450
Wire Wire Line
	900  5550 900  5450
Text GLabel 1250 7300 0    50   Input ~ 0
NRST
$Comp
L dk_Pushbutton-Switches:GPTS203211B S2
U 1 1 6032ADFC
P 1450 7300
F 0 "S2" H 1450 7575 50  0000 C CNN
F 1 "GPTS203211B" H 1450 7484 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 1650 7500 50  0001 L CNN
F 3 "http://switches-connectors-custom.cwind.com/Asset/GPTS203211BR2.pdf" H 1650 7600 60  0001 L CNN
F 4 "CW181-ND" H 1650 7700 60  0001 L CNN "Digi-Key_PN"
F 5 "GPTS203211B" H 1650 7800 60  0001 L CNN "MPN"
F 6 "Switches" H 1650 7900 60  0001 L CNN "Category"
F 7 "Pushbutton Switches" H 1650 8000 60  0001 L CNN "Family"
F 8 "http://switches-connectors-custom.cwind.com/Asset/GPTS203211BR2.pdf" H 1650 8100 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cw-industries/GPTS203211B/CW181-ND/3190590" H 1650 8200 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH PUSHBUTTON SPST 1A 30V" H 1650 8300 60  0001 L CNN "Description"
F 11 "CW Industries" H 1650 8400 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1650 8500 60  0001 L CNN "Status"
F 13 "" H 1450 7300 50  0001 C CNN "LCSC Part #"
F 14 "0" H 1450 7300 50  0001 C CNN "LCSC Part"
	1    1450 7300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0116
U 1 1 6032A062
P 1300 6500
F 0 "#PWR0116" H 1300 6350 50  0001 C CNN
F 1 "+3.3V" H 1315 6673 50  0000 C CNN
F 2 "" H 1300 6500 50  0001 C CNN
F 3 "" H 1300 6500 50  0001 C CNN
	1    1300 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 60329DF3
P 1300 6700
F 0 "#PWR0117" H 1300 6450 50  0001 C CNN
F 1 "GND" H 1305 6527 50  0000 C CNN
F 2 "" H 1300 6700 50  0001 C CNN
F 3 "" H 1300 6700 50  0001 C CNN
	1    1300 6700
	1    0    0    -1  
$EndComp
Text GLabel 2100 6600 2    50   Input ~ 0
BOOT0
$Comp
L Switch:SW_SPDT S1
U 1 1 603297F4
P 1500 6600
F 0 "S1" H 1500 6400 50  0000 C CNN
F 1 "SW_SPDT" H 1350 6500 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Bridged12_Pad1.0x1.5mm" H 1500 6600 50  0001 C CNN
F 3 "~" H 1500 6600 50  0001 C CNN
F 4 "" H 1500 6600 50  0001 C CNN "LCSC Part #"
F 5 "0" H 1500 6600 50  0001 C CNN "LCSC Part"
	1    1500 6600
	-1   0    0    1   
$EndComp
Text GLabel 1650 5150 2    50   Input ~ 0
OSC_OUT
Text GLabel 1650 5050 2    50   Input ~ 0
OSC_IN
Wire Wire Line
	1250 5950 900  5950
Connection ~ 1250 5950
$Comp
L power:GND #PWR0118
U 1 1 6032389A
P 1250 5950
F 0 "#PWR0118" H 1250 5700 50  0001 C CNN
F 1 "GND" H 1255 5777 50  0000 C CNN
F 2 "" H 1250 5950 50  0001 C CNN
F 3 "" H 1250 5950 50  0001 C CNN
	1    1250 5950
	1    0    0    -1  
$EndComp
Connection ~ 1650 5450
Wire Wire Line
	1650 5850 1650 5950
Wire Wire Line
	1650 5450 1650 5550
Wire Wire Line
	1450 5450 1650 5450
Wire Wire Line
	900  5450 1150 5450
$Comp
L Device:C C3
U 1 1 6031DD0E
P 1650 5700
F 0 "C3" H 1765 5746 50  0000 L CNN
F 1 "12p" H 1765 5655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1688 5550 50  0001 C CNN
F 3 "~" H 1650 5700 50  0001 C CNN
F 4 " C1547" H 1650 5700 50  0001 C CNN "LCSC Part #"
F 5 " C1547" H 1650 5700 50  0001 C CNN "LCSC Part"
	1    1650 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 603575EE
P 5300 5000
F 0 "D1" V 5247 5080 50  0000 L CNN
F 1 "Blue" V 5338 5080 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 5300 5000 50  0001 C CNN
F 3 "~" H 5300 5000 50  0001 C CNN
F 4 " C2293" H 5300 5000 50  0001 C CNN "LCSC Part #"
F 5 " C2293" H 5300 5000 50  0001 C CNN "LCSC Part"
	1    5300 5000
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 60358509
P 5300 4700
F 0 "R4" H 5370 4746 50  0000 L CNN
F 1 "1k5" H 5370 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5230 4700 50  0001 C CNN
F 3 "~" H 5300 4700 50  0001 C CNN
F 4 " C22843" H 5300 4700 50  0001 C CNN "LCSC Part #"
F 5 " C22843" H 5300 4700 50  0001 C CNN "LCSC Part"
	1    5300 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 60358C1C
P 5600 4550
F 0 "#PWR0119" H 5600 4300 50  0001 C CNN
F 1 "GND" H 5605 4377 50  0000 C CNN
F 2 "" H 5600 4550 50  0001 C CNN
F 3 "" H 5600 4550 50  0001 C CNN
	1    5600 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4550 5300 4500
Wire Wire Line
	5300 4500 5600 4500
Wire Wire Line
	5600 4500 5600 4550
Text GLabel 4250 6400 0    50   Input ~ 0
ADC_1
Text GLabel 4250 6500 0    50   Input ~ 0
SYS_WAKEUP
Text GLabel 5100 7150 3    50   Input ~ 0
ADC_8
Text GLabel 5200 7150 3    50   Input ~ 0
ADC_9
Text GLabel 5650 5800 2    50   Input ~ 0
SWCLK
Text GLabel 5650 5900 2    50   Input ~ 0
SWDIO
Text GLabel 5650 6200 2    50   Input ~ 0
I2C_SDA
Text GLabel 5650 6300 2    50   Input ~ 0
I2C_SCL
Text GLabel 4800 5150 1    50   Input ~ 0
USART2_RX
Text GLabel 4900 5150 1    50   Input ~ 0
USART2_TX
Text GLabel 5650 6000 2    50   Input ~ 0
USART2_RTS
Text GLabel 5650 6100 2    50   Input ~ 0
USART2_CTS
$Comp
L power:GND #PWR0120
U 1 1 6036CFDC
P 1650 7300
F 0 "#PWR0120" H 1650 7050 50  0001 C CNN
F 1 "GND" H 1655 7127 50  0000 C CNN
F 2 "" H 1650 7300 50  0001 C CNN
F 3 "" H 1650 7300 50  0001 C CNN
	1    1650 7300
	1    0    0    -1  
$EndComp
Text GLabel 4250 6000 0    50   Input ~ 0
OSC_OUT
Text GLabel 4250 5900 0    50   Input ~ 0
OSC_IN
$Comp
L Device:Crystal Y1
U 1 1 6039017F
P 1300 5450
F 0 "Y1" H 1300 5718 50  0000 C CNN
F 1 "32.768k" H 1300 5627 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_3215-2Pin_3.2x1.5mm" H 1300 5450 50  0001 C CNN
F 3 "~" H 1300 5450 50  0001 C CNN
F 4 " C32346" H 1300 5450 50  0001 C CNN "LCSC Part #"
F 5 " C32346" H 1300 5450 50  0001 C CNN "LCSC Part"
	1    1300 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 5950 1650 5950
Wire Wire Line
	1650 5050 900  5050
Wire Wire Line
	900  5050 900  5450
Wire Wire Line
	1650 5150 1650 5450
$Comp
L rj_microprocessors:AHT20 U4
U 1 1 603DFFF5
P 5550 3150
F 0 "U4" H 5750 3665 50  0000 C CNN
F 1 "AHT20" H 5750 3574 50  0000 C CNN
F 2 "Package_LGA:LGA-6_3x3mm_AHT20" H 5850 3550 50  0001 C CNN
F 3 "" H 5850 3550 50  0001 C CNN
F 4 " C503357" H 5550 3150 50  0001 C CNN "LCSC Part #"
F 5 " C503357" H 5550 3150 50  0001 C CNN "LCSC Part"
	1    5550 3150
	1    0    0    -1  
$EndComp
NoConn ~ 5450 2900
NoConn ~ 6050 2900
$Comp
L power:+3.3V #PWR0121
U 1 1 603E3B24
P 5250 2900
F 0 "#PWR0121" H 5250 2750 50  0001 C CNN
F 1 "+3.3V" H 5265 3073 50  0000 C CNN
F 2 "" H 5250 2900 50  0001 C CNN
F 3 "" H 5250 2900 50  0001 C CNN
	1    5250 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2900 5250 3000
Wire Wire Line
	5250 3000 5450 3000
$Comp
L power:GND #PWR0122
U 1 1 603E4F4C
P 6400 3000
F 0 "#PWR0122" H 6400 2750 50  0001 C CNN
F 1 "GND" H 6405 2827 50  0000 C CNN
F 2 "" H 6400 3000 50  0001 C CNN
F 3 "" H 6400 3000 50  0001 C CNN
	1    6400 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3000 6050 3000
$Comp
L Device:C C10
U 1 1 603E6E27
P 5050 3150
F 0 "C10" H 5165 3196 50  0000 L CNN
F 1 "10u" H 5165 3105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5088 3000 50  0001 C CNN
F 3 "~" H 5050 3150 50  0001 C CNN
F 4 " C15525" H 5050 3150 50  0001 C CNN "LCSC Part #"
F 5 " C15525" H 5050 3150 50  0001 C CNN "LCSC Part"
	1    5050 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 603E7404
P 4650 3150
F 0 "C9" H 4765 3196 50  0000 L CNN
F 1 "100n" H 4765 3105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4688 3000 50  0001 C CNN
F 3 "~" H 4650 3150 50  0001 C CNN
F 4 " C1525" H 4650 3150 50  0001 C CNN "LCSC Part #"
F 5 " C1525" H 4650 3150 50  0001 C CNN "LCSC Part"
	1    4650 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3000 5050 3000
Connection ~ 5250 3000
Wire Wire Line
	5050 3000 4650 3000
Connection ~ 5050 3000
Wire Wire Line
	5050 3300 4650 3300
$Comp
L power:GND #PWR0123
U 1 1 603EB546
P 4650 3300
F 0 "#PWR0123" H 4650 3050 50  0001 C CNN
F 1 "GND" H 4655 3127 50  0000 C CNN
F 2 "" H 4650 3300 50  0001 C CNN
F 3 "" H 4650 3300 50  0001 C CNN
	1    4650 3300
	1    0    0    -1  
$EndComp
Connection ~ 4650 3300
Text GLabel 6050 3200 0    50   Input ~ 0
I2C_SDA
Text GLabel 5450 3300 2    50   Input ~ 0
I2C_SCL
Wire Wire Line
	5450 3300 5450 3100
Wire Wire Line
	6050 3200 6050 3100
$Comp
L Device:R R3
U 1 1 603EF43A
P 5300 3450
F 0 "R3" H 5370 3496 50  0000 L CNN
F 1 "10k" V 5300 3400 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5230 3450 50  0001 C CNN
F 3 "~" H 5300 3450 50  0001 C CNN
F 4 " C25744" H 5300 3450 50  0001 C CNN "LCSC Part #"
F 5 " C25744" H 5300 3450 50  0001 C CNN "LCSC Part"
	1    5300 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 603EFFD9
P 6200 3450
F 0 "R5" H 6270 3496 50  0000 L CNN
F 1 "10k" V 6200 3400 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6130 3450 50  0001 C CNN
F 3 "~" H 6200 3450 50  0001 C CNN
F 4 " C25744" H 6200 3450 50  0001 C CNN "LCSC Part #"
F 5 " C25744" H 6200 3450 50  0001 C CNN "LCSC Part"
	1    6200 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3300 6200 3200
Wire Wire Line
	6200 3200 6050 3200
Wire Wire Line
	5450 3300 5300 3300
Wire Wire Line
	5300 3600 5900 3600
$Comp
L power:+3.3V #PWR0124
U 1 1 603F37A4
P 5900 3600
F 0 "#PWR0124" H 5900 3450 50  0001 C CNN
F 1 "+3.3V" H 5915 3773 50  0000 C CNN
F 2 "" H 5900 3600 50  0001 C CNN
F 3 "" H 5900 3600 50  0001 C CNN
	1    5900 3600
	1    0    0    -1  
$EndComp
Connection ~ 5900 3600
Wire Wire Line
	5900 3600 6200 3600
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 60429833
P 8050 4300
F 0 "J2" H 8050 4500 50  0000 C CNN
F 1 "Bat" H 8050 4400 50  0000 C CNN
F 2 "Connector_JST:JST_PH_S2B-PH-SM4-TB_1x02-1MP_P2.00mm_Horizontal" H 8050 4300 50  0001 C CNN
F 3 "~" H 8050 4300 50  0001 C CNN
F 4 "" H 8050 4300 50  0001 C CNN "LCSC Part #"
F 5 "0" H 8050 4300 50  0001 C CNN "LCSC Part"
	1    8050 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 6042ABFA
P 8250 4400
F 0 "#PWR0125" H 8250 4150 50  0001 C CNN
F 1 "GND" H 8255 4227 50  0000 C CNN
F 2 "" H 8250 4400 50  0001 C CNN
F 3 "" H 8250 4400 50  0001 C CNN
	1    8250 4400
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:VIN #SUPPLY0101
U 1 1 6042B49D
P 8250 4300
F 0 "#SUPPLY0101" H 8300 4300 45  0001 L BNN
F 1 "VIN" H 8250 4450 45  0000 C CNN
F 2 "XXX-00000" H 8450 4450 60  0001 C CNN
F 3 "" H 8250 4300 60  0001 C CNN
	1    8250 4300
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:VIN #SUPPLY0102
U 1 1 6042C4EB
P 850 900
F 0 "#SUPPLY0102" H 900 900 45  0001 L BNN
F 1 "VIN" H 850 1070 45  0000 C CNN
F 2 "XXX-00000" H 850 1081 60  0001 C CNN
F 3 "" H 850 900 60  0001 C CNN
	1    850  900 
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:XC6206PxxxMR U2
U 1 1 6042D74F
P 2650 1150
F 0 "U2" H 2650 1392 50  0000 C CNN
F 1 "XC6206P332MR" H 2650 1301 50  0000 C CNN
F 2 "Digikey Footprints:SOT-23-3" H 2650 1375 50  0001 C CIN
F 3 "https://www.torexsemi.com/file/xc6206/XC6206.pdf" H 2650 1150 50  0001 C CNN
F 4 " C5446" H 2650 1150 50  0001 C CNN "LCSC Part #"
F 5 "C5446" H 2650 1150 50  0001 C CNN "LCSC Part"
	1    2650 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  900  850  1150
$Comp
L Transistor_FET:AO3401A Q1
U 1 1 6043B99F
P 1650 1250
F 0 "Q1" V 1992 1250 50  0000 C CNN
F 1 "AO3401A" V 1901 1250 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1850 1175 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3401A.pdf" H 1650 1250 50  0001 L CNN
F 4 " C15127" H 1650 1250 50  0001 C CNN "LCSC Part #"
F 5 " C15127" H 1650 1250 50  0001 C CNN "LCSC Part"
	1    1650 1250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 60442000
P 1650 1450
F 0 "#PWR0126" H 1650 1200 50  0001 C CNN
F 1 "GND" H 1655 1277 50  0000 C CNN
F 2 "" H 1650 1450 50  0001 C CNN
F 3 "" H 1650 1450 50  0001 C CNN
	1    1650 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 60449361
P 1950 1300
F 0 "C4" H 2065 1346 50  0000 L CNN
F 1 "1u" H 2065 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1988 1150 50  0001 C CNN
F 3 "~" H 1950 1300 50  0001 C CNN
F 4 " C28323" H 1950 1300 50  0001 C CNN "LCSC Part #"
F 5 " C28323" H 1950 1300 50  0001 C CNN "LCSC Part"
	1    1950 1300
	1    0    0    -1  
$EndComp
Connection ~ 1950 1150
Wire Wire Line
	1950 1150 1850 1150
Wire Wire Line
	1950 1450 1650 1450
Connection ~ 1650 1450
Wire Wire Line
	1950 1150 2350 1150
$Comp
L power:GND #PWR0127
U 1 1 6044E2FE
P 2650 1450
F 0 "#PWR0127" H 2650 1200 50  0001 C CNN
F 1 "GND" H 2655 1277 50  0000 C CNN
F 2 "" H 2650 1450 50  0001 C CNN
F 3 "" H 2650 1450 50  0001 C CNN
	1    2650 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 6044EA2F
P 3200 1300
F 0 "C7" H 3315 1346 50  0000 L CNN
F 1 "1u" H 3315 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3238 1150 50  0001 C CNN
F 3 "~" H 3200 1300 50  0001 C CNN
F 4 " C28323" H 3200 1300 50  0001 C CNN "LCSC Part #"
F 5 " C28323" H 3200 1300 50  0001 C CNN "LCSC Part"
	1    3200 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1150 3100 1150
$Comp
L power:GND #PWR0128
U 1 1 6045121B
P 3200 1450
F 0 "#PWR0128" H 3200 1200 50  0001 C CNN
F 1 "GND" H 3205 1277 50  0000 C CNN
F 2 "" H 3200 1450 50  0001 C CNN
F 3 "" H 3200 1450 50  0001 C CNN
	1    3200 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0129
U 1 1 604518B4
P 3100 1150
F 0 "#PWR0129" H 3100 1000 50  0001 C CNN
F 1 "+3.3V" H 3115 1323 50  0000 C CNN
F 2 "" H 3100 1150 50  0001 C CNN
F 3 "" H 3100 1150 50  0001 C CNN
	1    3100 1150
	1    0    0    -1  
$EndComp
Connection ~ 3100 1150
Wire Wire Line
	3100 1150 3200 1150
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J4
U 1 1 604686AD
P 8900 2250
F 0 "J4" H 8950 2550 50  0000 C CNN
F 1 "SWD" H 8950 1950 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x05_P1.27mm_Vertical_SMD" H 8900 2250 50  0001 C CNN
F 3 "~" H 8900 2250 50  0001 C CNN
F 4 "" H 8900 2250 50  0001 C CNN "LCSC Part #"
F 5 "0" H 8900 2250 50  0001 C CNN "LCSC Part"
	1    8900 2250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0130
U 1 1 60469B9E
P 8400 1950
F 0 "#PWR0130" H 8400 1800 50  0001 C CNN
F 1 "+3.3V" H 8415 2123 50  0000 C CNN
F 2 "" H 8400 1950 50  0001 C CNN
F 3 "" H 8400 1950 50  0001 C CNN
	1    8400 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 1950 8400 2050
Wire Wire Line
	8400 2050 8700 2050
$Comp
L power:GND #PWR0131
U 1 1 6046B869
P 8400 2550
F 0 "#PWR0131" H 8400 2300 50  0001 C CNN
F 1 "GND" H 8405 2377 50  0000 C CNN
F 2 "" H 8400 2550 50  0001 C CNN
F 3 "" H 8400 2550 50  0001 C CNN
	1    8400 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2550 8400 2450
Wire Wire Line
	8400 2150 8700 2150
Wire Wire Line
	8700 2250 8400 2250
Connection ~ 8400 2250
Wire Wire Line
	8400 2250 8400 2150
Wire Wire Line
	8700 2450 8400 2450
Connection ~ 8400 2450
Wire Wire Line
	8400 2450 8400 2250
NoConn ~ 8700 2350
$Comp
L Device:R R6
U 1 1 604737C9
P 9400 2050
F 0 "R6" V 9350 1900 50  0000 C CNN
F 1 "22" V 9400 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9330 2050 50  0001 C CNN
F 3 "~" H 9400 2050 50  0001 C CNN
F 4 " C25092" H 9400 2050 50  0001 C CNN "LCSC Part #"
F 5 " C25092" H 9400 2050 50  0001 C CNN "LCSC Part"
	1    9400 2050
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 60473E28
P 9400 2150
F 0 "R7" V 9350 2000 50  0000 C CNN
F 1 "22" V 9400 2150 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9330 2150 50  0001 C CNN
F 3 "~" H 9400 2150 50  0001 C CNN
F 4 " C25092" H 9400 2150 50  0001 C CNN "LCSC Part #"
F 5 " C25092" H 9400 2150 50  0001 C CNN "LCSC Part"
	1    9400 2150
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 60479FA4
P 9400 2450
F 0 "R8" V 9350 2300 50  0000 C CNN
F 1 "22" V 9400 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9330 2450 50  0001 C CNN
F 3 "~" H 9400 2450 50  0001 C CNN
F 4 " C25092" H 9400 2450 50  0001 C CNN "LCSC Part #"
F 5 " C25092" H 9400 2450 50  0001 C CNN "LCSC Part"
	1    9400 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 2450 9250 2450
Wire Wire Line
	9200 2150 9250 2150
Wire Wire Line
	9200 2050 9250 2050
NoConn ~ 9200 2350
Text GLabel 9600 2450 2    50   Input ~ 0
NRST
Text GLabel 9600 2150 2    50   Input ~ 0
SWCLK
Text GLabel 9600 2050 2    50   Input ~ 0
SWDIO
Wire Wire Line
	9550 2150 9600 2150
Wire Wire Line
	9550 2050 9600 2050
Wire Wire Line
	9550 2450 9600 2450
NoConn ~ 9200 2250
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 604B57AE
P 8100 3150
F 0 "J3" H 8180 3142 50  0000 L CNN
F 1 "UART" H 8180 3051 50  0000 L CNN
F 2 "TestPoint:TestPoint_SMD_4Pads_2mm" H 8100 3150 50  0001 C CNN
F 3 "~" H 8100 3150 50  0001 C CNN
F 4 "" H 8100 3150 50  0001 C CNN "LCSC Part #"
F 5 "0" H 8100 3150 50  0001 C CNN "LCSC Part"
	1    8100 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J5
U 1 1 604B6524
P 9000 3150
F 0 "J5" H 9080 3142 50  0000 L CNN
F 1 "I2C" H 9080 3051 50  0000 L CNN
F 2 "TestPoint:TestPoint_SMD_4Pads_2mm" H 9000 3150 50  0001 C CNN
F 3 "~" H 9000 3150 50  0001 C CNN
F 4 "" H 9000 3150 50  0001 C CNN "LCSC Part #"
F 5 "0" H 9000 3150 50  0001 C CNN "LCSC Part"
	1    9000 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J6
U 1 1 604C0E65
P 9750 3250
F 0 "J6" H 9830 3242 50  0000 L CNN
F 1 "SPI" H 9830 3151 50  0000 L CNN
F 2 "TestPoint:TestPoint_SMD_6Pads_2mm" H 9750 3250 50  0001 C CNN
F 3 "~" H 9750 3250 50  0001 C CNN
F 4 "" H 9750 3250 50  0001 C CNN "LCSC Part #"
F 5 "0" H 9750 3250 50  0001 C CNN "LCSC Part"
	1    9750 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 604CC3E0
P 8800 3350
F 0 "#PWR0132" H 8800 3100 50  0001 C CNN
F 1 "GND" H 8805 3177 50  0000 C CNN
F 2 "" H 8800 3350 50  0001 C CNN
F 3 "" H 8800 3350 50  0001 C CNN
	1    8800 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 604CC8B7
P 7900 3350
F 0 "#PWR0133" H 7900 3100 50  0001 C CNN
F 1 "GND" H 7905 3177 50  0000 C CNN
F 2 "" H 7900 3350 50  0001 C CNN
F 3 "" H 7900 3350 50  0001 C CNN
	1    7900 3350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0134
U 1 1 604DBB03
P 7900 3050
F 0 "#PWR0134" H 7900 2900 50  0001 C CNN
F 1 "+3.3V" H 7915 3223 50  0000 C CNN
F 2 "" H 7900 3050 50  0001 C CNN
F 3 "" H 7900 3050 50  0001 C CNN
	1    7900 3050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0135
U 1 1 604DC0EC
P 8800 3050
F 0 "#PWR0135" H 8800 2900 50  0001 C CNN
F 1 "+3.3V" H 8815 3223 50  0000 C CNN
F 2 "" H 8800 3050 50  0001 C CNN
F 3 "" H 8800 3050 50  0001 C CNN
	1    8800 3050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0136
U 1 1 604DF9F4
P 9550 3050
F 0 "#PWR0136" H 9550 2900 50  0001 C CNN
F 1 "+3.3V" H 9565 3223 50  0000 C CNN
F 2 "" H 9550 3050 50  0001 C CNN
F 3 "" H 9550 3050 50  0001 C CNN
	1    9550 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0137
U 1 1 604E348B
P 9550 3550
F 0 "#PWR0137" H 9550 3300 50  0001 C CNN
F 1 "GND" H 9555 3377 50  0000 C CNN
F 2 "" H 9550 3550 50  0001 C CNN
F 3 "" H 9550 3550 50  0001 C CNN
	1    9550 3550
	1    0    0    -1  
$EndComp
Text GLabel 7900 3250 0    50   Input ~ 0
USART2_TX
Text GLabel 7900 3150 0    50   Input ~ 0
USART2_RX
Text GLabel 8800 3150 0    50   Input ~ 0
I2C_SDA
Text GLabel 8800 3250 0    50   Input ~ 0
I2C_SCL
Text GLabel 9550 3150 0    50   Input ~ 0
MOSI
Text GLabel 9550 3250 0    50   Input ~ 0
MISO
Text GLabel 9550 3350 0    50   Input ~ 0
SCK
Text GLabel 9550 3450 0    50   Input ~ 0
CS
$Comp
L power:GND #PWR0138
U 1 1 60536FE0
P 9650 4950
F 0 "#PWR0138" H 9650 4700 50  0001 C CNN
F 1 "GND" H 9655 4777 50  0000 C CNN
F 2 "" H 9650 4950 50  0001 C CNN
F 3 "" H 9650 4950 50  0001 C CNN
	1    9650 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0139
U 1 1 605375F9
P 9650 4250
F 0 "#PWR0139" H 9650 4100 50  0001 C CNN
F 1 "+3.3V" H 9665 4423 50  0000 C CNN
F 2 "" H 9650 4250 50  0001 C CNN
F 3 "" H 9650 4250 50  0001 C CNN
	1    9650 4250
	1    0    0    -1  
$EndComp
Text GLabel 9650 4650 0    50   Input ~ 0
USART2_RTS
Text GLabel 9650 4750 0    50   Input ~ 0
USART2_CTS
Text GLabel 9650 4350 0    50   Input ~ 0
ADC_1
Text GLabel 9650 4450 0    50   Input ~ 0
ADC_8
Text GLabel 9650 4550 0    50   Input ~ 0
ADC_9
Connection ~ 2650 2950
NoConn ~ 5100 5150
NoConn ~ 5200 5150
NoConn ~ 5650 6400
NoConn ~ 2400 3250
NoConn ~ 2400 3350
NoConn ~ 2400 3450
NoConn ~ 2400 3550
NoConn ~ 2400 3650
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 607A7601
P 7900 5600
F 0 "H1" H 8000 5603 50  0000 L CNN
F 1 "MountingHole_Pad" H 8000 5558 50  0001 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_DIN965_Pad" H 7900 5600 50  0001 C CNN
F 3 "~" H 7900 5600 50  0001 C CNN
F 4 "" H 7900 5600 50  0001 C CNN "LCSC Part #"
F 5 "0" H 7900 5600 50  0001 C CNN "LCSC Part"
	1    7900 5600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 607A8C67
P 8200 5600
F 0 "H2" H 8300 5603 50  0000 L CNN
F 1 "MountingHole_Pad" H 8300 5558 50  0001 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_DIN965_Pad" H 8200 5600 50  0001 C CNN
F 3 "~" H 8200 5600 50  0001 C CNN
F 4 "" H 8200 5600 50  0001 C CNN "LCSC Part #"
F 5 "0" H 8200 5600 50  0001 C CNN "LCSC Part"
	1    8200 5600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 607A9164
P 8500 5600
F 0 "H3" H 8600 5603 50  0000 L CNN
F 1 "MountingHole_Pad" H 8600 5558 50  0001 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_DIN965_Pad" H 8500 5600 50  0001 C CNN
F 3 "~" H 8500 5600 50  0001 C CNN
F 4 "" H 8500 5600 50  0001 C CNN "LCSC Part #"
F 5 "0" H 8500 5600 50  0001 C CNN "LCSC Part"
	1    8500 5600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 607A95C4
P 8800 5600
F 0 "H4" H 8900 5603 50  0000 L CNN
F 1 "MountingHole_Pad" H 8900 5558 50  0001 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_DIN965_Pad" H 8800 5600 50  0001 C CNN
F 3 "~" H 8800 5600 50  0001 C CNN
F 4 "" H 8800 5600 50  0001 C CNN "LCSC Part #"
F 5 "0" H 8800 5600 50  0001 C CNN "LCSC Part"
	1    8800 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 607A9D18
P 7900 5850
F 0 "#PWR01" H 7900 5600 50  0001 C CNN
F 1 "GND" H 7905 5677 50  0000 C CNN
F 2 "" H 7900 5850 50  0001 C CNN
F 3 "" H 7900 5850 50  0001 C CNN
	1    7900 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 5850 7900 5800
Wire Wire Line
	8200 5700 8200 5800
Wire Wire Line
	8200 5800 7900 5800
Connection ~ 7900 5800
Wire Wire Line
	7900 5800 7900 5700
Wire Wire Line
	8500 5700 8500 5800
Wire Wire Line
	8500 5800 8200 5800
Connection ~ 8200 5800
Wire Wire Line
	8800 5700 8800 5800
Wire Wire Line
	8800 5800 8500 5800
Connection ~ 8500 5800
Text GLabel 5000 5150 1    50   Input ~ 0
RST
Text GLabel 9650 4850 0    50   Input ~ 0
SYS_WAKEUP
$Comp
L Connector_Generic:Conn_01x08 J7
U 1 1 607D2075
P 9850 4550
F 0 "J7" H 9930 4542 50  0000 L CNN
F 1 "GPIO" H 9930 4451 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 9850 4550 50  0001 C CNN
F 3 "~" H 9850 4550 50  0001 C CNN
F 4 "" H 9850 4550 50  0001 C CNN "LCSC Part #"
F 5 "0" H 9850 4550 50  0001 C CNN "LCSC Part"
	1    9850 4550
	1    0    0    -1  
$EndComp
NoConn ~ 4600 7150
$Comp
L rj_microprocessors:STM32L010K4T6 U3
U 1 1 602A2634
P 4350 7050
F 0 "U3" H 5450 8900 50  0000 L CNN
F 1 "STM32L010K4T6" H 4750 7400 50  0000 L CNN
F 2 "Package_QFP:LQFP-32_7x7mm_P0.8mm" H 4300 7250 50  0001 C CNN
F 3 "" H 4450 7150 50  0001 C CNN
F 4 " C529416" H 4350 7050 50  0001 C CNN "LCSC Part #"
F 5 " C529416" H 4350 7050 50  0001 C CNN "LCSC Part"
	1    4350 7050
	1    0    0    -1  
$EndComp
Text GLabel 4250 6300 0    50   Input ~ 0
HSE_IN
Text GLabel 2850 3150 2    50   Input ~ 0
HSE_IN
$Comp
L Device:R CFG1
U 1 1 6031988E
P 2650 3150
F 0 "CFG1" V 2750 3150 50  0000 C CNN
F 1 "0" V 2650 3100 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" V 2580 3150 50  0001 C CNN
F 3 "~" H 2650 3150 50  0001 C CNN
F 4 "" H 2650 3150 50  0001 C CNN "LCSC Part #"
F 5 "0" H 2650 3150 50  0001 C CNN "LCSC Part"
	1    2650 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 3150 2500 3150
Wire Wire Line
	2800 3150 2850 3150
Wire Wire Line
	850  1150 1450 1150
$Comp
L Device:R R9
U 1 1 6037B798
P 1900 6600
F 0 "R9" V 2000 6550 50  0000 L CNN
F 1 "10k" V 1900 6550 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 1830 6600 50  0001 C CNN
F 3 "~" H 1900 6600 50  0001 C CNN
F 4 " C25744" H 1900 6600 50  0001 C CNN "LCSC Part #"
F 5 " C25744" H 1900 6600 50  0001 C CNN "LCSC Part"
	1    1900 6600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1700 6600 1750 6600
Wire Wire Line
	2100 6600 2050 6600
$EndSCHEMATC
