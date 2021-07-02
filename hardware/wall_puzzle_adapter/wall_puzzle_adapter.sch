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
L Connector:Conn_01x04_Male J3
U 1 1 60D3D578
P 5900 2500
F 0 "J3" H 6008 2781 50  0000 C CNN
F 1 "Conn_01x04_Male" H 6008 2690 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_Altech_AK300-4_P5.00mm" H 5900 2500 50  0001 C CNN
F 3 "~" H 5900 2500 50  0001 C CNN
	1    5900 2500
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J4
U 1 1 60D3F128
P 5900 3100
F 0 "J4" H 6008 3381 50  0000 C CNN
F 1 "Conn_01x04_Male" H 6008 3290 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_Altech_AK300-4_P5.00mm" H 5900 3100 50  0001 C CNN
F 3 "~" H 5900 3100 50  0001 C CNN
	1    5900 3100
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J2
U 1 1 60D3F358
P 4900 1750
F 0 "J2" V 4735 1678 50  0000 C CNN
F 1 "Conn_01x08_Male" V 4826 1678 50  0000 C CNN
F 2 "Connector_JST:JST_XH_S8B-XH-A_1x08_P2.50mm_Horizontal" H 4900 1750 50  0001 C CNN
F 3 "~" H 4900 1750 50  0001 C CNN
	1    4900 1750
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x08_Male J1
U 1 1 60D42B66
P 4800 3750
F 0 "J1" V 4635 3678 50  0000 C CNN
F 1 "Conn_01x08_Male" V 4726 3678 50  0000 C CNN
F 2 "Connector_RJ:RJ45_Amphenol_54602-x08_Horizontal" H 4800 3750 50  0001 C CNN
F 3 "~" H 4800 3750 50  0001 C CNN
	1    4800 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5700 2400 5200 2400
Wire Wire Line
	5200 2400 5200 1950
Wire Wire Line
	5700 2500 5100 2500
Wire Wire Line
	5100 2500 5100 1950
Wire Wire Line
	5700 2600 5000 2600
Wire Wire Line
	5000 2600 5000 1950
Wire Wire Line
	5700 2700 4900 2700
Wire Wire Line
	4900 2700 4900 1950
Wire Wire Line
	5700 3200 4600 3200
Wire Wire Line
	4600 3200 4600 3550
Wire Wire Line
	5700 3300 4800 3300
Wire Wire Line
	4800 3300 4800 3550
Wire Wire Line
	5700 3100 5100 3100
Wire Wire Line
	5100 3100 5100 3550
Wire Wire Line
	5700 3000 5000 3000
Wire Wire Line
	4900 3000 4900 3550
Wire Wire Line
	4900 3000 4800 3000
Wire Wire Line
	4800 3000 4800 1950
Connection ~ 4900 3000
Wire Wire Line
	4700 1950 4700 3550
Wire Wire Line
	4600 1950 4600 3100
Wire Wire Line
	4600 3100 4500 3100
Wire Wire Line
	4500 3100 4500 3550
$Comp
L power:GND #PWR0101
U 1 1 60D49DC0
P 5000 3000
F 0 "#PWR0101" H 5000 2750 50  0001 C CNN
F 1 "GND" H 5000 3050 50  0000 C CNN
F 2 "" H 5000 3000 50  0001 C CNN
F 3 "" H 5000 3000 50  0001 C CNN
	1    5000 3000
	1    0    0    -1  
$EndComp
Connection ~ 5000 3000
Wire Wire Line
	5000 3000 4900 3000
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 60D4A345
P 2950 2600
F 0 "H1" H 2900 2800 50  0000 L CNN
F 1 "MountingHole_Pad" H 3050 2558 50  0001 L CNN
F 2 "MountingHole:MountingHole_4mm_Pad_Via" H 2950 2600 50  0001 C CNN
F 3 "~" H 2950 2600 50  0001 C CNN
	1    2950 2600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 60D4B0E0
P 3150 2600
F 0 "H2" H 3100 2800 50  0000 L CNN
F 1 "MountingHole_Pad" H 3250 2558 50  0001 L CNN
F 2 "MountingHole:MountingHole_4mm_Pad_Via" H 3150 2600 50  0001 C CNN
F 3 "~" H 3150 2600 50  0001 C CNN
	1    3150 2600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 60D4B6E1
P 3350 2600
F 0 "H3" H 3300 2800 50  0000 L CNN
F 1 "MountingHole_Pad" H 3450 2558 50  0001 L CNN
F 2 "MountingHole:MountingHole_4mm_Pad_Via" H 3350 2600 50  0001 C CNN
F 3 "~" H 3350 2600 50  0001 C CNN
	1    3350 2600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 60D4BCCB
P 3550 2600
F 0 "H4" H 3500 2800 50  0000 L CNN
F 1 "MountingHole_Pad" H 3650 2558 50  0001 L CNN
F 2 "MountingHole:MountingHole_4mm_Pad_Via" H 3550 2600 50  0001 C CNN
F 3 "~" H 3550 2600 50  0001 C CNN
	1    3550 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 60D4C13C
P 2950 2900
F 0 "#PWR0102" H 2950 2650 50  0001 C CNN
F 1 "GND" H 2955 2727 50  0000 C CNN
F 2 "" H 2950 2900 50  0001 C CNN
F 3 "" H 2950 2900 50  0001 C CNN
	1    2950 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2800 3150 2800
Wire Wire Line
	3550 2800 3550 2700
Wire Wire Line
	3350 2800 3350 2700
Connection ~ 3350 2800
Wire Wire Line
	3350 2800 3550 2800
Wire Wire Line
	3150 2700 3150 2800
Connection ~ 3150 2800
Wire Wire Line
	3150 2800 3350 2800
Wire Wire Line
	2950 2800 2950 2700
Wire Wire Line
	2950 2800 2950 2900
Connection ~ 2950 2800
$EndSCHEMATC
