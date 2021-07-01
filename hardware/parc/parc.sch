EESchema Schematic File Version 4
EELAYER 30 0
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
L dk_Transistors-FETs-MOSFETs-Single:IRLB3034PBF Q2
U 1 1 5F5DCDD4
P -5550 6300
F 0 "Q2" H -5442 6300 60  0000 L CNN
F 1 "IRLB3034PBF" H -5442 6247 60  0001 L CNN
F 2 "Digikey Footprints:TO-220-3" H -5350 6500 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlb3034pbf.pdf?fileId=5546d462533600a40153566027b22585" H -5350 6600 60  0001 L CNN
F 4 "IRLB3034PBF-ND" H -5350 6700 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLB3034PBF" H -5350 6800 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H -5350 6900 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H -5350 7000 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlb3034pbf.pdf?fileId=5546d462533600a40153566027b22585" H -5350 7100 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLB3034PBF/IRLB3034PBF-ND/2096638" H -5350 7200 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 40V 195A TO220AB" H -5350 7300 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H -5350 7400 60  0001 L CNN "Manufacturer"
F 12 "Active" H -5350 7500 60  0001 L CNN "Status"
	1    -5550 6300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5F5DEBA5
P -5750 1400
F 0 "J2" H -5642 1581 50  0000 C CNN
F 1 "XT30" H -5642 1490 50  0000 C CNN
F 2 "parc:XT30" H -5750 1400 50  0001 C CNN
F 3 "~" H -5750 1400 50  0001 C CNN
	1    -5750 1400
	1    0    0    -1  
$EndComp
$Comp
L parc:FeatherAdaloggerM0 U3
U 1 1 5F5E0AE5
P -4250 4550
F 0 "U3" H -3600 6300 50  0000 C CNN
F 1 "FeatherAdaloggerM0" H -3600 6400 50  0000 C CNN
F 2 "parc:Feather" H -4250 4550 50  0001 C CNN
F 3 "" H -4250 4550 50  0001 C CNN
	1    -4250 4550
	1    0    0    -1  
$EndComp
$Comp
L parc:BMP388_Breakout U4
U 1 1 5F5E86B5
P -1550 3900
F 0 "U4" H -1072 4446 50  0000 L CNN
F 1 "BMP388_Breakout" H -1072 4355 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H -1550 3900 50  0001 C CNN
F 3 "" H -1550 3900 50  0001 C CNN
	1    -1550 3900
	1    0    0    -1  
$EndComp
$Comp
L parc:HC06 U1
U 1 1 5F5EB7BA
P -5050 4100
F 0 "U1" H -4883 3935 50  0000 C CNN
F 1 "HC06" H -4883 4026 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H -5050 4100 50  0001 C CNN
F 3 "" H -5050 4100 50  0001 C CNN
	1    -5050 4100
	-1   0    0    1   
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLB3034PBF Q3
U 1 1 5F5ECB26
P -4550 6300
F 0 "Q3" H -4442 6300 60  0000 L CNN
F 1 "IRLB3034PBF" H -4442 6247 60  0001 L CNN
F 2 "Digikey Footprints:TO-220-3" H -4350 6500 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlb3034pbf.pdf?fileId=5546d462533600a40153566027b22585" H -4350 6600 60  0001 L CNN
F 4 "IRLB3034PBF-ND" H -4350 6700 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLB3034PBF" H -4350 6800 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H -4350 6900 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H -4350 7000 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlb3034pbf.pdf?fileId=5546d462533600a40153566027b22585" H -4350 7100 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLB3034PBF/IRLB3034PBF-ND/2096638" H -4350 7200 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 40V 195A TO220AB" H -4350 7300 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H -4350 7400 60  0001 L CNN "Manufacturer"
F 12 "Active" H -4350 7500 60  0001 L CNN "Status"
	1    -4550 6300
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLB3034PBF Q1
U 1 1 5F5ED016
P -6650 6300
F 0 "Q1" H -6542 6300 60  0000 L CNN
F 1 "IRLB3034PBF" H -6542 6247 60  0001 L CNN
F 2 "Digikey Footprints:TO-220-3" H -6450 6500 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlb3034pbf.pdf?fileId=5546d462533600a40153566027b22585" H -6450 6600 60  0001 L CNN
F 4 "IRLB3034PBF-ND" H -6450 6700 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLB3034PBF" H -6450 6800 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H -6450 6900 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H -6450 7000 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlb3034pbf.pdf?fileId=5546d462533600a40153566027b22585" H -6450 7100 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLB3034PBF/IRLB3034PBF-ND/2096638" H -6450 7200 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 40V 195A TO220AB" H -6450 7300 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H -6450 7400 60  0001 L CNN "Manufacturer"
F 12 "Active" H -6450 7500 60  0001 L CNN "Status"
	1    -6650 6300
	1    0    0    -1  
$EndComp
$Comp
L parc:MPM3610 U2
U 1 1 5F5EDE69
P -4800 1800
F 0 "U2" H -4272 2146 50  0000 L CNN
F 1 "MPM3610" H -4272 2055 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H -4800 1800 50  0001 C CNN
F 3 "" H -4800 1800 50  0001 C CNN
	1    -4800 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	-4950 4200 -4350 4200
Wire Wire Line
	-4950 4300 -4350 4300
$Comp
L power:+5V #PWR04
U 1 1 5F5F5220
P -4850 4100
F 0 "#PWR04" H -4850 3950 50  0001 C CNN
F 1 "+5V" H -4835 4273 50  0000 C CNN
F 2 "" H -4850 4100 50  0001 C CNN
F 3 "" H -4850 4100 50  0001 C CNN
	1    -4850 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	-4850 4100 -4850 4400
Wire Wire Line
	-4850 4400 -4950 4400
$Comp
L power:GND #PWR05
U 1 1 5F5F7713
P -4850 4550
F 0 "#PWR05" H -4850 4300 50  0001 C CNN
F 1 "GND" H -4845 4377 50  0000 C CNN
F 2 "" H -4850 4550 50  0001 C CNN
F 3 "" H -4850 4550 50  0001 C CNN
	1    -4850 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	-4950 4500 -4850 4500
Wire Wire Line
	-4850 4500 -4850 4550
Wire Wire Line
	-1650 4600 -2100 4600
Wire Wire Line
	-2100 4600 -2100 4300
Wire Wire Line
	-2100 4300 -2850 4300
Wire Wire Line
	-1650 4500 -2150 4500
Wire Wire Line
	-2150 4500 -2150 4400
Wire Wire Line
	-2150 4400 -2850 4400
$Comp
L power:+5V #PWR010
U 1 1 5F6087E0
P -1850 4100
F 0 "#PWR010" H -1850 3950 50  0001 C CNN
F 1 "+5V" H -1835 4273 50  0000 C CNN
F 2 "" H -1850 4100 50  0001 C CNN
F 3 "" H -1850 4100 50  0001 C CNN
	1    -1850 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	-1850 4100 -1850 4200
Wire Wire Line
	-1850 4200 -1650 4200
$Comp
L power:+5V #PWR012
U 1 1 5F616C28
P -1750 2950
F 0 "#PWR012" H -1750 2800 50  0001 C CNN
F 1 "+5V" H -1735 3123 50  0000 C CNN
F 2 "" H -1750 2950 50  0001 C CNN
F 3 "" H -1750 2950 50  0001 C CNN
	1    -1750 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	-1750 2950 -1750 3050
Wire Wire Line
	-1750 3050 -1650 3050
$Comp
L power:GND #PWR09
U 1 1 5F61EAB1
P -2000 3850
F 0 "#PWR09" H -2000 3600 50  0001 C CNN
F 1 "GND" H -1995 3677 50  0000 C CNN
F 2 "" H -2000 3850 50  0001 C CNN
F 3 "" H -2000 3850 50  0001 C CNN
	1    -2000 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	-2000 3850 -2000 3250
Wire Wire Line
	-2000 3250 -1650 3250
Wire Wire Line
	-1650 3350 -2700 3350
Wire Wire Line
	-2700 3350 -2700 3600
Wire Wire Line
	-2700 3600 -2850 3600
Wire Wire Line
	-1650 3450 -2650 3450
Wire Wire Line
	-2650 3450 -2650 3700
Wire Wire Line
	-2650 3700 -2850 3700
Wire Wire Line
	-2600 3550 -2600 3800
Wire Wire Line
	-2600 3800 -2850 3800
Wire Wire Line
	-2600 3550 -1650 3550
Wire Wire Line
	-1650 3650 -2550 3650
Wire Wire Line
	-2550 3650 -2550 3900
Wire Wire Line
	-2550 3900 -2850 3900
$Comp
L power:GND #PWR011
U 1 1 5F6078F1
P -1850 4900
F 0 "#PWR011" H -1850 4650 50  0001 C CNN
F 1 "GND" H -1845 4727 50  0000 C CNN
F 2 "" H -1850 4900 50  0001 C CNN
F 3 "" H -1850 4900 50  0001 C CNN
	1    -1850 4900
	1    0    0    -1  
$EndComp
$Comp
L parc:BNO055_Breakout U5
U 1 1 5F5EAD59
P -1550 4850
F 0 "U5" H -1000 5600 50  0000 C CNN
F 1 "BNO055_Breakout" H -1000 5700 50  0000 C CNN
F 2 "parc:BNO055_Breakout" H -1550 4850 50  0001 C CNN
F 3 "" H -1550 4850 50  0001 C CNN
	1    -1550 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	-1850 4900 -1850 4400
Wire Wire Line
	-1850 4400 -1650 4400
Text GLabel -2850 4000 2    50   Input ~ 0
M1
Text GLabel -2850 4100 2    50   Input ~ 0
M2
Text GLabel -2850 4200 2    50   Input ~ 0
M3
Text GLabel -7000 5900 1    50   Input ~ 0
M1
Text GLabel -5900 5900 1    50   Input ~ 0
M2
Text GLabel -4900 5900 1    50   Input ~ 0
M3
$Comp
L power:GND #PWR06
U 1 1 5F63D6D2
P -4500 3250
F 0 "#PWR06" H -4500 3000 50  0001 C CNN
F 1 "GND" H -4495 3077 50  0000 C CNN
F 2 "" H -4500 3250 50  0001 C CNN
F 3 "" H -4500 3250 50  0001 C CNN
	1    -4500 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	-4350 3200 -4500 3200
Wire Wire Line
	-4500 3200 -4500 3250
$Comp
L power:+5V #PWR08
U 1 1 5F63E812
P -2750 3150
F 0 "#PWR08" H -2750 3000 50  0001 C CNN
F 1 "+5V" H -2735 3323 50  0000 C CNN
F 2 "" H -2750 3150 50  0001 C CNN
F 3 "" H -2750 3150 50  0001 C CNN
	1    -2750 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	-2850 3500 -2750 3500
Wire Wire Line
	-2750 3500 -2750 3150
Wire Wire Line
	-5550 1400 -5200 1400
Wire Wire Line
	-5550 1500 -5550 1600
$Comp
L power:+5V #PWR03
U 1 1 5F645AAF
P -5000 1250
F 0 "#PWR03" H -5000 1100 50  0001 C CNN
F 1 "+5V" H -4985 1423 50  0000 C CNN
F 2 "" H -5000 1250 50  0001 C CNN
F 3 "" H -5000 1250 50  0001 C CNN
	1    -5000 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5F645F80
P -5200 2200
F 0 "#PWR02" H -5200 1950 50  0001 C CNN
F 1 "GND" H -5195 2027 50  0000 C CNN
F 2 "" H -5200 2200 50  0001 C CNN
F 3 "" H -5200 2200 50  0001 C CNN
	1    -5200 2200
	1    0    0    -1  
$EndComp
Connection ~ -5200 1400
Wire Wire Line
	-5200 1400 -4900 1400
Wire Wire Line
	-4900 1500 -5000 1500
Wire Wire Line
	-5000 1500 -5000 1250
$Comp
L power:GND #PWR01
U 1 1 5F65520C
P -6650 7000
F 0 "#PWR01" H -6650 6750 50  0001 C CNN
F 1 "GND" H -6645 6827 50  0000 C CNN
F 2 "" H -6650 7000 50  0001 C CNN
F 3 "" H -6650 7000 50  0001 C CNN
	1    -6650 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	-5550 6900 -5900 6900
Connection ~ -6650 6900
Wire Wire Line
	-6650 6900 -6650 7000
Connection ~ -5550 6900
$Comp
L Device:R R6
U 1 1 5F66682D
P -4900 6650
F 0 "R6" H -4830 6696 50  0000 L CNN
F 1 "1M" H -4830 6605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V -4970 6650 50  0001 C CNN
F 3 "~" H -4900 6650 50  0001 C CNN
	1    -4900 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	-5550 6900 -4900 6900
Wire Wire Line
	-4900 6500 -4900 6400
Wire Wire Line
	-4900 6400 -4850 6400
Wire Wire Line
	-4900 6800 -4900 6900
Connection ~ -4900 6900
Wire Wire Line
	-4900 6900 -4550 6900
$Comp
L Device:R R4
U 1 1 5F673DFF
P -5900 6650
F 0 "R4" H -5830 6696 50  0000 L CNN
F 1 "1M" H -5830 6605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V -5970 6650 50  0001 C CNN
F 3 "~" H -5900 6650 50  0001 C CNN
	1    -5900 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5F674DBE
P -7000 6650
F 0 "R2" H -6930 6696 50  0000 L CNN
F 1 "1M" H -6930 6605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V -7070 6650 50  0001 C CNN
F 3 "~" H -7000 6650 50  0001 C CNN
	1    -7000 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	-5850 6400 -5900 6400
Wire Wire Line
	-5900 6400 -5900 6500
Wire Wire Line
	-5900 6800 -5900 6900
Connection ~ -5900 6900
Wire Wire Line
	-5900 6900 -6650 6900
Wire Wire Line
	-6950 6400 -7000 6400
Wire Wire Line
	-7000 6400 -7000 6500
Wire Wire Line
	-7000 6800 -7000 6900
Wire Wire Line
	-7000 6900 -6650 6900
$Comp
L Device:R R1
U 1 1 5F67BBF9
P -7000 6150
F 0 "R1" H -6930 6196 50  0000 L CNN
F 1 "1K" H -6930 6105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V -7070 6150 50  0001 C CNN
F 3 "~" H -7000 6150 50  0001 C CNN
	1    -7000 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5F67EF41
P -5900 6150
F 0 "R3" H -5830 6196 50  0000 L CNN
F 1 "1K" H -5830 6105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V -5970 6150 50  0001 C CNN
F 3 "~" H -5900 6150 50  0001 C CNN
	1    -5900 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5F680206
P -4900 6150
F 0 "R5" H -4830 6196 50  0000 L CNN
F 1 "1K" H -4830 6105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V -4970 6150 50  0001 C CNN
F 3 "~" H -4900 6150 50  0001 C CNN
	1    -4900 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	-4900 6300 -4900 6400
Connection ~ -4900 6400
Wire Wire Line
	-5900 6300 -5900 6400
Connection ~ -5900 6400
Wire Wire Line
	-7000 6300 -7000 6400
Connection ~ -7000 6400
Wire Wire Line
	-7000 5900 -7000 6000
Wire Wire Line
	-5900 5900 -5900 6000
Wire Wire Line
	-4900 5900 -4900 6000
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5F699622
P -6650 5750
F 0 "J1" V -6588 5794 50  0000 L CNN
F 1 "XT30" V -6497 5794 50  0000 L CNN
F 2 "parc:XT30" H -6650 5750 50  0001 C CNN
F 3 "~" H -6650 5750 50  0001 C CNN
	1    -6650 5750
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5F69A4BC
P -5550 5750
F 0 "J3" V -5488 5794 50  0000 L CNN
F 1 "XT30" V -5397 5794 50  0000 L CNN
F 2 "parc:XT30" H -5550 5750 50  0001 C CNN
F 3 "~" H -5550 5750 50  0001 C CNN
	1    -5550 5750
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 5F69B40A
P -4550 5750
F 0 "J4" V -4488 5794 50  0000 L CNN
F 1 "XT30" V -4397 5794 50  0000 L CNN
F 2 "parc:XT30" H -4550 5750 50  0001 C CNN
F 3 "~" H -4550 5750 50  0001 C CNN
	1    -4550 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	-5550 5950 -5550 6100
Wire Wire Line
	-6650 5950 -6650 6100
Wire Wire Line
	-4550 5950 -4550 6100
NoConn ~ -4900 1700
NoConn ~ -4350 2900
NoConn ~ -4350 3000
NoConn ~ -4350 3100
NoConn ~ -4350 3300
NoConn ~ -4350 3400
NoConn ~ -4350 3500
NoConn ~ -4350 3600
NoConn ~ -4350 3700
NoConn ~ -4350 3800
NoConn ~ -4350 3900
NoConn ~ -4350 4000
NoConn ~ -4350 4100
NoConn ~ -2850 3400
NoConn ~ -2850 3300
$Comp
L power:GND #PWR07
U 1 1 5F6DE94E
P -4500 4450
F 0 "#PWR07" H -4500 4200 50  0001 C CNN
F 1 "GND" H -4495 4277 50  0000 C CNN
F 2 "" H -4500 4450 50  0001 C CNN
F 3 "" H -4500 4450 50  0001 C CNN
	1    -4500 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	-4350 4400 -4500 4400
Wire Wire Line
	-4500 4400 -4500 4450
Wire Wire Line
	-6650 6500 -6650 6900
Wire Wire Line
	-5550 6500 -5550 6900
Wire Wire Line
	-4550 6500 -4550 6900
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 5F6FEE57
P -5750 1900
F 0 "J5" H -5642 2081 50  0000 C CNN
F 1 "XT30" H -5642 1990 50  0000 C CNN
F 2 "parc:XT30" H -5750 1900 50  0001 C CNN
F 3 "~" H -5750 1900 50  0001 C CNN
	1    -5750 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	-5550 1600 -4900 1600
Text GLabel -5350 1600 1    50   Input ~ 0
B1
Wire Wire Line
	-5550 1900 -5200 1900
Wire Wire Line
	-5200 1400 -5200 1900
Connection ~ -5200 1900
Wire Wire Line
	-5200 1900 -5200 2200
Text GLabel -5350 2100 3    50   Input ~ 0
B2
Wire Wire Line
	-5550 2000 -5350 2000
Wire Wire Line
	-5350 2000 -5350 2100
Text GLabel -6750 5950 3    50   Input ~ 0
B1
Text GLabel -5650 5950 3    50   Input ~ 0
B2
Text GLabel -4650 5950 3    50   Input ~ 0
B2
NoConn ~ -450 4300
NoConn ~ -450 4400
NoConn ~ -450 4500
NoConn ~ -450 4600
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5F779252
P -2400 1750
F 0 "H4" H -2300 1799 50  0000 L CNN
F 1 "MountingHole_Pad" H -2300 1708 50  0000 L CNN
F 2 "MountingHole:MountingHole_4mm_Pad_Via" H -2400 1750 50  0001 C CNN
F 3 "~" H -2400 1750 50  0001 C CNN
	1    -2400 1750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5F77AEAC
P -2600 1750
F 0 "H3" H -2500 1799 50  0000 L CNN
F 1 "MountingHole_Pad" H -2500 1708 50  0000 L CNN
F 2 "MountingHole:MountingHole_4mm_Pad_Via" H -2600 1750 50  0001 C CNN
F 3 "~" H -2600 1750 50  0001 C CNN
	1    -2600 1750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5F77CD36
P -2800 1750
F 0 "H2" H -2700 1799 50  0000 L CNN
F 1 "MountingHole_Pad" H -2700 1708 50  0000 L CNN
F 2 "MountingHole:MountingHole_4mm_Pad_Via" H -2800 1750 50  0001 C CNN
F 3 "~" H -2800 1750 50  0001 C CNN
	1    -2800 1750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5F77EBBB
P -3000 1750
F 0 "H1" H -2900 1799 50  0000 L CNN
F 1 "MountingHole_Pad" H -2900 1708 50  0000 L CNN
F 2 "MountingHole:MountingHole_4mm_Pad_Via" H -3000 1750 50  0001 C CNN
F 3 "~" H -3000 1750 50  0001 C CNN
	1    -3000 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5F78462E
P -3000 2000
F 0 "#PWR0101" H -3000 1750 50  0001 C CNN
F 1 "GND" H -2995 1827 50  0000 C CNN
F 2 "" H -3000 2000 50  0001 C CNN
F 3 "" H -3000 2000 50  0001 C CNN
	1    -3000 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	-3000 2000 -3000 1850
Wire Wire Line
	-3000 1850 -2800 1850
Connection ~ -3000 1850
Wire Wire Line
	-2800 1850 -2600 1850
Connection ~ -2800 1850
Wire Wire Line
	-2600 1850 -2400 1850
Connection ~ -2600 1850
$Comp
L parc:FeatherAdaloggerM0 U1
U 1 1 5FA33607
P -2400 -250
F 0 "U1" H -1750 1815 50  0000 C CNN
F 1 "Feather ESP8266" H -1750 1724 50  0000 C CNN
F 2 "" H -2400 -250 50  0001 C CNN
F 3 "" H -2400 -250 50  0001 C CNN
	1    -2400 -250
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 5FA3571A
P -1450 -2900
F 0 "BT1" V -1705 -2850 50  0000 C CNN
F 1 "3.7V LiPo" V -1614 -2850 50  0000 C CNN
F 2 "" V -1450 -2840 50  0001 C CNN
F 3 "~" V -1450 -2840 50  0001 C CNN
	1    -1450 -2900
	0    1    1    0   
$EndComp
Wire Wire Line
	-1550 -2900 -2850 -2900
Wire Wire Line
	-2850 -2900 -2850 -2550
Wire Wire Line
	-2850 -1600 -2500 -1600
Wire Wire Line
	-1250 -2900 -650 -2900
Wire Wire Line
	-650 -2900 -650 -1850
Wire Wire Line
	-650 -1500 -1000 -1500
$Comp
L parc:PM2.5Sensor U2
U 1 1 5FA40521
P 650 -1600
F 0 "U2" H 1150 -1250 50  0000 L CNN
F 1 "PM2.5Sensor" H 800 -1150 50  0000 L CNN
F 2 "" H 650 -1600 50  0001 C CNN
F 3 "" H 650 -1600 50  0001 C CNN
	1    650  -1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  -1750 -600 -1750
Wire Wire Line
	-600 -1750 -600 -1200
Wire Wire Line
	-600 -1200 -1000 -1200
Wire Wire Line
	650  -1850 -650 -1850
Connection ~ -650 -1850
Wire Wire Line
	-650 -1850 -650 -1500
Wire Wire Line
	650  -1950 -900 -1950
Wire Wire Line
	-900 -1950 -900 -2550
Wire Wire Line
	-900 -2550 -2850 -2550
Connection ~ -2850 -2550
Wire Wire Line
	-2850 -2550 -2850 -1600
$Comp
L LED:NeoPixel_THT D1
U 1 1 5FA5B91C
P 5800 3000
F 0 "D1" H 5800 3500 50  0000 L CNN
F 1 "NeoPixel_THT" H 5800 3400 50  0000 L CNN
F 2 "" H 5850 2700 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1938" H 5900 2625 50  0001 L TNN
	1    5800 3000
	1    0    0    -1  
$EndComp
$Comp
L LED:NeoPixel_THT D2
U 1 1 5FA5CEF2
P 6650 3000
F 0 "D2" H 6650 3500 50  0000 L CNN
F 1 "NeoPixel_THT" H 6650 3400 50  0000 L CNN
F 2 "" H 6700 2700 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1938" H 6750 2625 50  0001 L TNN
	1    6650 3000
	1    0    0    -1  
$EndComp
$Comp
L LED:NeoPixel_THT D3
U 1 1 5FA601E6
P 7500 3000
F 0 "D3" H 7500 3500 50  0000 L CNN
F 1 "NeoPixel_THT" H 7500 3400 50  0000 L CNN
F 2 "" H 7550 2700 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1938" H 7600 2625 50  0001 L TNN
	1    7500 3000
	1    0    0    -1  
$EndComp
$Comp
L LED:NeoPixel_THT D4
U 1 1 5FA631B7
P 9000 3000
F 0 "D4" H 9000 3500 50  0000 L CNN
F 1 "NeoPixel_THT" H 9000 3400 50  0000 L CNN
F 2 "" H 9050 2700 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1938" H 9100 2625 50  0001 L TNN
	1    9000 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3000 6350 3000
Wire Wire Line
	6950 3000 7200 3000
Wire Wire Line
	7800 3000 8700 3000
Wire Wire Line
	5800 2700 6650 2700
Wire Wire Line
	6650 2700 7500 2700
Connection ~ 6650 2700
Wire Wire Line
	7500 2700 9000 2700
Connection ~ 7500 2700
Wire Wire Line
	5800 3300 6650 3300
Wire Wire Line
	6650 3300 7500 3300
Connection ~ 6650 3300
Wire Wire Line
	7500 3300 9000 3300
Connection ~ 7500 3300
$Comp
L dk_Embedded-Microcontrollers:ATMEGA328P-AU U2
U 1 1 5FA7FB43
P 3550 3200
F 0 "U2" H 3878 3303 60  0000 L CNN
F 1 "ATMEGA328P-AU" H 3878 3197 60  0000 L CNN
F 2 "digikey-footprints:TQFP-32_7x7mm" H 3750 3400 60  0001 L CNN
F 3 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en608326" H 3750 3500 60  0001 L CNN
F 4 "ATMEGA328P-AU-ND" H 3750 3600 60  0001 L CNN "Digi-Key_PN"
F 5 "ATMEGA328P-AU" H 3750 3700 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 3750 3800 60  0001 L CNN "Category"
F 7 "Embedded - Microcontrollers" H 3750 3900 60  0001 L CNN "Family"
F 8 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en608326" H 3750 4000 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/microchip-technology/ATMEGA328P-AU/ATMEGA328P-AU-ND/1832260" H 3750 4100 60  0001 L CNN "DK_Detail_Page"
F 10 "IC MCU 8BIT 32KB FLASH 32TQFP" H 3750 4200 60  0001 L CNN "Description"
F 11 "Microchip Technology" H 3750 4300 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3750 4400 60  0001 L CNN "Status"
	1    3550 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 1600 3650 1500
Wire Wire Line
	3650 1500 5150 1500
Wire Wire Line
	5150 1500 5150 2700
Wire Wire Line
	5150 2700 5800 2700
Connection ~ 5800 2700
Wire Wire Line
	3750 4700 3750 4750
Wire Wire Line
	3750 4750 5150 4750
Wire Wire Line
	5150 4750 5150 3300
Wire Wire Line
	5150 3300 5800 3300
Connection ~ 5800 3300
Wire Wire Line
	3050 2700 2700 2700
Wire Wire Line
	2700 2700 2700 1350
Wire Wire Line
	2700 1350 5100 1350
Wire Wire Line
	5100 1350 5100 3000
Wire Wire Line
	5100 3000 5500 3000
$Comp
L parc:ESP32-CoProcessor U1
U 1 1 5FAA1035
P 950 3700
F 0 "U1" H 1150 5050 50  0000 C CNN
F 1 "ESP32-CoProcessor" H 1150 4950 50  0000 C CNN
F 2 "" H 950 3700 50  0001 C CNN
F 3 "" H 950 3700 50  0001 C CNN
	1    950  3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1500 3650 1500
Connection ~ 3650 1500
Wire Wire Line
	1650 4750 3750 4750
Connection ~ 3750 4750
Wire Wire Line
	1550 2550 1550 1500
Wire Wire Line
	1550 2750 1650 2750
Wire Wire Line
	1650 2750 1650 4750
Wire Wire Line
	1550 2850 2700 2850
Wire Wire Line
	2700 2850 2700 3100
Wire Wire Line
	2700 3100 3050 3100
Wire Wire Line
	1550 2950 2650 2950
Wire Wire Line
	2650 2950 2650 3000
Wire Wire Line
	2650 3000 3050 3000
Wire Wire Line
	1550 3050 2600 3050
Wire Wire Line
	2600 2900 3050 2900
Wire Wire Line
	2600 3050 2600 2900
Wire Wire Line
	1550 3150 2550 3150
Wire Wire Line
	2550 3150 2550 2600
Wire Wire Line
	2550 2600 3050 2600
Wire Wire Line
	1550 3250 2500 3250
Wire Wire Line
	2500 3250 2500 2500
Wire Wire Line
	2500 2500 3050 2500
Wire Wire Line
	1550 3350 2450 3350
Wire Wire Line
	2450 3350 2450 2400
Wire Wire Line
	2450 2400 3050 2400
Wire Wire Line
	1550 3450 2700 3450
Wire Wire Line
	2700 3450 2700 4100
Wire Wire Line
	2700 4100 3050 4100
$EndSCHEMATC
