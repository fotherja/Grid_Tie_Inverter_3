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
L ACS722LLCTR-05AB-T:ACS722LLCTR-05AB-T U4
U 1 1 628B783F
P 9200 4700
F 0 "U4" H 9200 5470 50  0000 C CNN
F 1 "ACS722LLCTR-05AB-T" H 9200 5379 50  0000 C CNN
F 2 "ACS722LLCTR-05AB-T:SOIC127P600X175-8N" H 9200 4700 50  0001 L BNN
F 3 "" H 9200 4700 50  0001 L BNN
F 4 "SOIC127P600X175-8N" H 9200 4700 50  0001 L BNN "Package"
F 5 "Allegro" H 9200 4700 50  0001 L BNN "Manufacturer"
	1    9200 4700
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:DGD2110S16-13 IC2
U 1 1 628D5FC0
P 4450 5200
F 0 "IC2" H 5000 5465 50  0000 C CNN
F 1 "DGD2110S16-13" H 5000 5374 50  0000 C CNN
F 2 "DGD2110S16-13:SOIC127P1032X264-16N" H 5400 5300 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/DGD2110S16-13.pdf" H 5400 5200 50  0001 L CNN
F 4 "Gate Drivers High-Side Low-Side 600V Gate Driver" H 5400 5100 50  0001 L CNN "Description"
F 5 "2.64" H 5400 5000 50  0001 L CNN "Height"
F 6 "621-DGD2110S16-13" H 5400 4900 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=621-DGD2110S16-13" H 5400 4800 50  0001 L CNN "Mouser Price/Stock"
F 8 "Diodes Inc." H 5400 4700 50  0001 L CNN "Manufacturer_Name"
F 9 "DGD2110S16-13" H 5400 4600 50  0001 L CNN "Manufacturer_Part_Number"
	1    4450 5200
	-1   0    0    1   
$EndComp
$Comp
L ES1J:ES1J D2
U 1 1 628FB06F
P 5050 3850
F 0 "D2" H 5350 3583 50  0000 C CNN
F 1 "ES1J" H 5350 3674 50  0000 C CNN
F 2 "ES1J:DIOM5227X250N" H 5500 3850 50  0001 L CNN
F 3 "http://www.onsemi.com/PowerSolutions/product.do?id=ES1J" H 5500 3750 50  0001 L CNN
F 4 "Fairchild ES1J SMT Fast Recovery Diode, 600V 1A, 35ns, 2-Pin DO-214AC" H 5500 3650 50  0001 L CNN "Description"
F 5 "2.5" H 5500 3550 50  0001 L CNN "Height"
F 6 "onsemi" H 5500 3450 50  0001 L CNN "Manufacturer_Name"
F 7 "ES1J" H 5500 3350 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "512-ES1J" H 5500 3250 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/ON-Semiconductor-Fairchild/ES1J?qs=ZaZfTJZxiphg%252BqNC2EhLqQ%3D%3D" H 5500 3150 50  0001 L CNN "Mouser Price/Stock"
F 10 "ES1J" H 5500 3050 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/es1j/on-semiconductor?region=nac" H 5500 2950 50  0001 L CNN "Arrow Price/Stock"
	1    5050 3850
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:IRF540N Q3
U 1 1 6292696B
P 6250 4400
F 0 "Q3" H 6454 4446 50  0000 L CNN
F 1 "STF35N60DM2" H 6454 4355 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 6500 4325 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 6250 4400 50  0001 L CNN
	1    6250 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 62926971
P 5750 4400
F 0 "R21" V 5543 4400 50  0000 C CNN
F 1 "4.7R" V 5634 4400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5680 4400 50  0001 C CNN
F 3 "~" H 5750 4400 50  0001 C CNN
	1    5750 4400
	0    1    1    0   
$EndComp
$Comp
L Device:R R23
U 1 1 6292697D
P 6150 4700
F 0 "R23" V 6357 4700 50  0000 C CNN
F 1 "10K" V 6266 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6080 4700 50  0001 C CNN
F 3 "~" H 6150 4700 50  0001 C CNN
	1    6150 4700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6300 4700 6350 4700
Connection ~ 6350 4700
Wire Wire Line
	6350 4700 6350 4600
Wire Wire Line
	5900 4400 5950 4400
Wire Wire Line
	6000 4700 5950 4700
Wire Wire Line
	5950 4700 5950 4400
Connection ~ 5950 4400
Wire Wire Line
	5950 4400 6050 4400
$Comp
L Transistor_FET:IRF540N Q4
U 1 1 62926998
P 6250 5350
F 0 "Q4" H 6454 5396 50  0000 L CNN
F 1 "STF35N60DM2" H 6454 5305 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 6500 5275 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 6250 5350 50  0001 L CNN
	1    6250 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R24
U 1 1 6292699E
P 5750 5350
F 0 "R24" V 5543 5350 50  0000 C CNN
F 1 "4.7R" V 5634 5350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5680 5350 50  0001 C CNN
F 3 "~" H 5750 5350 50  0001 C CNN
	1    5750 5350
	0    1    1    0   
$EndComp
$Comp
L Device:R R26
U 1 1 629269AA
P 6150 5650
F 0 "R26" V 6357 5650 50  0000 C CNN
F 1 "10K" V 6266 5650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6080 5650 50  0001 C CNN
F 3 "~" H 6150 5650 50  0001 C CNN
	1    6150 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6300 5650 6350 5650
Connection ~ 6350 5650
Wire Wire Line
	6350 5650 6350 5550
Wire Wire Line
	5900 5350 5950 5350
Wire Wire Line
	6000 5650 5950 5650
Wire Wire Line
	5950 5650 5950 5350
Connection ~ 5950 5350
Wire Wire Line
	5950 5350 6050 5350
Wire Wire Line
	6350 4900 7600 4900
Connection ~ 6350 4900
$Comp
L power:GND #PWR032
U 1 1 62939EE7
P 6350 5800
F 0 "#PWR032" H 6350 5550 50  0001 C CNN
F 1 "GND" H 6355 5627 50  0000 C CNN
F 2 "" H 6350 5800 50  0001 C CNN
F 3 "" H 6350 5800 50  0001 C CNN
	1    6350 5800
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR024
U 1 1 6293A9B8
P 6350 4000
F 0 "#PWR024" H 6350 3850 50  0001 C CNN
F 1 "VBUS" H 6365 4173 50  0000 C CNN
F 2 "" H 6350 4000 50  0001 C CNN
F 3 "" H 6350 4000 50  0001 C CNN
	1    6350 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4500 4700 4500
Wire Wire Line
	4700 4500 4700 4400
Wire Wire Line
	4700 4400 5600 4400
Wire Wire Line
	4450 5200 4700 5200
Wire Wire Line
	4700 5200 4700 5350
Wire Wire Line
	4700 5350 5600 5350
$Comp
L Device:C C15
U 1 1 62948DE0
P 4900 4650
F 0 "C15" H 5015 4696 50  0000 L CNN
F 1 "100nF" H 5015 4605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4938 4500 50  0001 C CNN
F 3 "~" H 4900 4650 50  0001 C CNN
	1    4900 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 62949B89
P 5350 4650
F 0 "C16" H 5465 4696 50  0000 L CNN
F 1 "2.2uF" H 5465 4605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5388 4500 50  0001 C CNN
F 3 "~" H 5350 4650 50  0001 C CNN
	1    5350 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 6294AA33
P 4900 5100
F 0 "C17" H 5015 5146 50  0000 L CNN
F 1 "100nF" H 5015 5055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4938 4950 50  0001 C CNN
F 3 "~" H 4900 5100 50  0001 C CNN
	1    4900 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C18
U 1 1 6294ADCA
P 5350 5100
F 0 "C18" H 5465 5146 50  0000 L CNN
F 1 "2.2uF" H 5465 5055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5388 4950 50  0001 C CNN
F 3 "~" H 5350 5100 50  0001 C CNN
	1    5350 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 62954982
P 4900 5450
F 0 "#PWR029" H 4900 5200 50  0001 C CNN
F 1 "GND" H 4905 5277 50  0000 C CNN
F 2 "" H 4900 5450 50  0001 C CNN
F 3 "" H 4900 5450 50  0001 C CNN
	1    4900 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 5450 4900 5300
Wire Wire Line
	4450 5100 4750 5100
Wire Wire Line
	4750 5100 4750 5300
Wire Wire Line
	4750 5300 4900 5300
Connection ~ 4900 5300
Wire Wire Line
	4900 5300 4900 5250
Wire Wire Line
	4900 5300 5350 5300
Wire Wire Line
	5350 5300 5350 5250
Wire Wire Line
	5350 4950 5350 4900
Wire Wire Line
	5350 4900 4900 4900
Wire Wire Line
	4900 4900 4900 4950
Wire Wire Line
	4900 4900 4750 4900
Wire Wire Line
	4750 4900 4750 5000
Wire Wire Line
	4750 5000 4450 5000
Connection ~ 4900 4900
Wire Wire Line
	4750 4700 4750 4850
Wire Wire Line
	4750 4850 4900 4850
Wire Wire Line
	4900 4850 4900 4800
Wire Wire Line
	4900 4850 5350 4850
Wire Wire Line
	5350 4850 5350 4800
Connection ~ 4900 4850
Wire Wire Line
	5350 4500 5350 4450
Wire Wire Line
	5350 4450 5100 4450
Wire Wire Line
	4900 4450 4900 4500
Wire Wire Line
	4900 4450 4750 4450
Wire Wire Line
	4750 4450 4750 4600
Wire Wire Line
	4750 4600 4450 4600
Connection ~ 4900 4450
$Comp
L power:+12V #PWR023
U 1 1 6296F882
P 4000 3750
F 0 "#PWR023" H 4000 3600 50  0001 C CNN
F 1 "+12V" H 4015 3923 50  0000 C CNN
F 2 "" H 4000 3750 50  0001 C CNN
F 3 "" H 4000 3750 50  0001 C CNN
	1    4000 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4700 4750 4700
$Comp
L Device:R R20
U 1 1 6297AC83
P 4250 4150
F 0 "R20" V 4043 4150 50  0000 C CNN
F 1 "2.2R" V 4134 4150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4180 4150 50  0001 C CNN
F 3 "~" H 4250 4150 50  0001 C CNN
	1    4250 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 4850 6350 4850
Connection ~ 5350 4850
Connection ~ 6350 4850
Wire Wire Line
	6350 4850 6350 4900
$Comp
L Device:R R19
U 1 1 62999ACD
P 4250 3850
F 0 "R19" V 4043 3850 50  0000 C CNN
F 1 "2.2R" V 4134 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4180 3850 50  0001 C CNN
F 3 "~" H 4250 3850 50  0001 C CNN
	1    4250 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 4150 4550 4150
Wire Wire Line
	4550 4150 4550 4900
Wire Wire Line
	4550 4900 4750 4900
Connection ~ 4750 4900
Wire Wire Line
	4400 3850 4450 3850
Wire Wire Line
	5050 3850 5100 3850
Wire Wire Line
	5100 3850 5100 4450
Connection ~ 5100 4450
Wire Wire Line
	5100 4450 4900 4450
Wire Wire Line
	4000 3750 4000 3850
Wire Wire Line
	4000 3850 4100 3850
Wire Wire Line
	4000 3850 4000 4150
Wire Wire Line
	4000 4150 4100 4150
Connection ~ 4000 3850
$Comp
L Device:C C21
U 1 1 629A6B2C
P 2950 5350
F 0 "C21" H 3065 5396 50  0000 L CNN
F 1 "100nF" H 3065 5305 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2988 5200 50  0001 C CNN
F 3 "~" H 2950 5350 50  0001 C CNN
	1    2950 5350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR026
U 1 1 629A8C6E
P 2950 4600
F 0 "#PWR026" H 2950 4450 50  0001 C CNN
F 1 "+3.3V" H 2965 4773 50  0000 C CNN
F 2 "" H 2950 4600 50  0001 C CNN
F 3 "" H 2950 4600 50  0001 C CNN
	1    2950 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 4600 2950 4700
Wire Wire Line
	3350 4700 2950 4700
Connection ~ 2950 4700
Wire Wire Line
	2950 5500 2950 5600
$Comp
L Device:L L2
U 1 1 629B8000
P 7750 4900
F 0 "L2" V 7940 4900 50  0000 C CNN
F 1 "L" V 7849 4900 50  0000 C CNN
F 2 "Choke_Toroid_ThroughHole:Choke_Toroid_horizontal_Diameter12-5mm_Amidon-T44" H 7750 4900 50  0001 C CNN
F 3 "~" H 7750 4900 50  0001 C CNN
	1    7750 4900
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C19
U 1 1 629B9A3D
P 7950 5100
F 0 "C19" H 8065 5146 50  0000 L CNN
F 1 "C" H 8065 5055 50  0000 L CNN
F 2 "Capacitors_SMD:C_2225_HandSoldering" H 7988 4950 50  0001 C CNN
F 3 "~" H 7950 5100 50  0001 C CNN
	1    7950 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 629BA1FA
P 7950 5300
F 0 "#PWR028" H 7950 5050 50  0001 C CNN
F 1 "GND" H 7955 5127 50  0000 C CNN
F 2 "" H 7950 5300 50  0001 C CNN
F 3 "" H 7950 5300 50  0001 C CNN
	1    7950 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 4900 7950 4900
Wire Wire Line
	7950 4900 7950 4950
Wire Wire Line
	7950 5250 7950 5300
$Comp
L power:+3.3V #PWR025
U 1 1 629C50E9
P 10100 4150
F 0 "#PWR025" H 10100 4000 50  0001 C CNN
F 1 "+3.3V" H 10115 4323 50  0000 C CNN
F 2 "" H 10100 4150 50  0001 C CNN
F 3 "" H 10100 4150 50  0001 C CNN
	1    10100 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 4200 10100 4200
Wire Wire Line
	10100 4200 10100 4150
Wire Wire Line
	9900 5100 10100 5100
Wire Wire Line
	10100 5100 10100 5200
$Comp
L SamacSys_Parts:DGD2110S16-13 IC1
U 1 1 629F96EA
P 4450 2650
F 0 "IC1" H 5000 2915 50  0000 C CNN
F 1 "DGD2110S16-13" H 5000 2824 50  0000 C CNN
F 2 "DGD2110S16-13:SOIC127P1032X264-16N" H 5400 2750 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/DGD2110S16-13.pdf" H 5400 2650 50  0001 L CNN
F 4 "Gate Drivers High-Side Low-Side 600V Gate Driver" H 5400 2550 50  0001 L CNN "Description"
F 5 "2.64" H 5400 2450 50  0001 L CNN "Height"
F 6 "621-DGD2110S16-13" H 5400 2350 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=621-DGD2110S16-13" H 5400 2250 50  0001 L CNN "Mouser Price/Stock"
F 8 "Diodes Inc." H 5400 2150 50  0001 L CNN "Manufacturer_Name"
F 9 "DGD2110S16-13" H 5400 2050 50  0001 L CNN "Manufacturer_Part_Number"
	1    4450 2650
	-1   0    0    1   
$EndComp
$Comp
L ES1J:ES1J D1
U 1 1 629F96F8
P 5050 1300
F 0 "D1" H 5350 1033 50  0000 C CNN
F 1 "ES1J" H 5350 1124 50  0000 C CNN
F 2 "ES1J:DIOM5227X250N" H 5500 1300 50  0001 L CNN
F 3 "http://www.onsemi.com/PowerSolutions/product.do?id=ES1J" H 5500 1200 50  0001 L CNN
F 4 "Fairchild ES1J SMT Fast Recovery Diode, 600V 1A, 35ns, 2-Pin DO-214AC" H 5500 1100 50  0001 L CNN "Description"
F 5 "2.5" H 5500 1000 50  0001 L CNN "Height"
F 6 "onsemi" H 5500 900 50  0001 L CNN "Manufacturer_Name"
F 7 "ES1J" H 5500 800 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "512-ES1J" H 5500 700 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/ON-Semiconductor-Fairchild/ES1J?qs=ZaZfTJZxiphg%252BqNC2EhLqQ%3D%3D" H 5500 600 50  0001 L CNN "Mouser Price/Stock"
F 10 "ES1J" H 5500 500 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/es1j/on-semiconductor?region=nac" H 5500 400 50  0001 L CNN "Arrow Price/Stock"
	1    5050 1300
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:IRF540N Q1
U 1 1 629F96FE
P 6250 1850
F 0 "Q1" H 6454 1896 50  0000 L CNN
F 1 "STF35N60DM2" H 6454 1805 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 6500 1775 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 6250 1850 50  0001 L CNN
	1    6250 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 629F9704
P 5750 1850
F 0 "R3" V 5543 1850 50  0000 C CNN
F 1 "4.7R" V 5634 1850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5680 1850 50  0001 C CNN
F 3 "~" H 5750 1850 50  0001 C CNN
	1    5750 1850
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 629F9710
P 6150 2150
F 0 "R5" V 6357 2150 50  0000 C CNN
F 1 "10K" V 6266 2150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6080 2150 50  0001 C CNN
F 3 "~" H 6150 2150 50  0001 C CNN
	1    6150 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6300 2150 6350 2150
Connection ~ 6350 2150
Wire Wire Line
	6350 2150 6350 2050
Wire Wire Line
	5900 1850 5950 1850
Wire Wire Line
	6000 2150 5950 2150
Wire Wire Line
	5950 2150 5950 1850
Connection ~ 5950 1850
Wire Wire Line
	5950 1850 6050 1850
$Comp
L Transistor_FET:IRF540N Q2
U 1 1 629F972B
P 6250 2800
F 0 "Q2" H 6454 2846 50  0000 L CNN
F 1 "STF35N60DM2" H 6454 2755 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 6500 2725 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 6250 2800 50  0001 L CNN
	1    6250 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 629F9731
P 5750 2800
F 0 "R6" V 5543 2800 50  0000 C CNN
F 1 "4.7R" V 5634 2800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5680 2800 50  0001 C CNN
F 3 "~" H 5750 2800 50  0001 C CNN
	1    5750 2800
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 629F973D
P 6150 3100
F 0 "R8" V 6357 3100 50  0000 C CNN
F 1 "10K" V 6266 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6080 3100 50  0001 C CNN
F 3 "~" H 6150 3100 50  0001 C CNN
	1    6150 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6300 3100 6350 3100
Connection ~ 6350 3100
Wire Wire Line
	6350 3100 6350 3000
Wire Wire Line
	5900 2800 5950 2800
Wire Wire Line
	6000 3100 5950 3100
Wire Wire Line
	5950 3100 5950 2800
Connection ~ 5950 2800
Wire Wire Line
	5950 2800 6050 2800
Wire Wire Line
	6350 2350 7600 2350
Connection ~ 6350 2350
$Comp
L power:GND #PWR021
U 1 1 629F975E
P 6350 3250
F 0 "#PWR021" H 6350 3000 50  0001 C CNN
F 1 "GND" H 6355 3077 50  0000 C CNN
F 2 "" H 6350 3250 50  0001 C CNN
F 3 "" H 6350 3250 50  0001 C CNN
	1    6350 3250
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR07
U 1 1 629F9764
P 6350 1450
F 0 "#PWR07" H 6350 1300 50  0001 C CNN
F 1 "VBUS" H 6365 1623 50  0000 C CNN
F 2 "" H 6350 1450 50  0001 C CNN
F 3 "" H 6350 1450 50  0001 C CNN
	1    6350 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1950 4700 1950
Wire Wire Line
	4700 1950 4700 1850
Wire Wire Line
	4700 1850 5600 1850
Wire Wire Line
	4450 2650 4700 2650
Wire Wire Line
	4700 2650 4700 2800
Wire Wire Line
	4700 2800 5600 2800
$Comp
L Device:C C5
U 1 1 629F9774
P 4900 2100
F 0 "C5" H 5015 2146 50  0000 L CNN
F 1 "100nF" H 5015 2055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4938 1950 50  0001 C CNN
F 3 "~" H 4900 2100 50  0001 C CNN
	1    4900 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 629F977A
P 5350 2100
F 0 "C6" H 5465 2146 50  0000 L CNN
F 1 "2.2uF" H 5465 2055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5388 1950 50  0001 C CNN
F 3 "~" H 5350 2100 50  0001 C CNN
	1    5350 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 629F9780
P 4900 2550
F 0 "C8" H 5015 2596 50  0000 L CNN
F 1 "100nF" H 5015 2505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4938 2400 50  0001 C CNN
F 3 "~" H 4900 2550 50  0001 C CNN
	1    4900 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 629F9786
P 5350 2550
F 0 "C9" H 5465 2596 50  0000 L CNN
F 1 "2.2uF" H 5465 2505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5388 2400 50  0001 C CNN
F 3 "~" H 5350 2550 50  0001 C CNN
	1    5350 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 629F978C
P 4900 2900
F 0 "#PWR018" H 4900 2650 50  0001 C CNN
F 1 "GND" H 4905 2727 50  0000 C CNN
F 2 "" H 4900 2900 50  0001 C CNN
F 3 "" H 4900 2900 50  0001 C CNN
	1    4900 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2900 4900 2750
Wire Wire Line
	4450 2550 4750 2550
Wire Wire Line
	4750 2550 4750 2750
Wire Wire Line
	4750 2750 4900 2750
Connection ~ 4900 2750
Wire Wire Line
	4900 2750 4900 2700
Wire Wire Line
	4900 2750 5350 2750
Wire Wire Line
	5350 2750 5350 2700
Wire Wire Line
	5350 2400 5350 2350
Wire Wire Line
	5350 2350 4900 2350
Wire Wire Line
	4900 2350 4900 2400
Wire Wire Line
	4900 2350 4750 2350
Wire Wire Line
	4750 2350 4750 2450
Wire Wire Line
	4750 2450 4450 2450
Connection ~ 4900 2350
Wire Wire Line
	4750 2150 4750 2300
Wire Wire Line
	4750 2300 4900 2300
Wire Wire Line
	4900 2300 4900 2250
Wire Wire Line
	4900 2300 5350 2300
Wire Wire Line
	5350 2300 5350 2250
Connection ~ 4900 2300
Wire Wire Line
	5350 1950 5350 1900
Wire Wire Line
	5350 1900 5100 1900
Wire Wire Line
	4900 1900 4900 1950
Wire Wire Line
	4900 1900 4750 1900
Wire Wire Line
	4750 1900 4750 2050
Wire Wire Line
	4750 2050 4450 2050
Connection ~ 4900 1900
$Comp
L power:+12V #PWR05
U 1 1 629F97AE
P 4000 1200
F 0 "#PWR05" H 4000 1050 50  0001 C CNN
F 1 "+12V" H 4015 1373 50  0000 C CNN
F 2 "" H 4000 1200 50  0001 C CNN
F 3 "" H 4000 1200 50  0001 C CNN
	1    4000 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2150 4750 2150
$Comp
L Device:R R2
U 1 1 629F97B5
P 4250 1600
F 0 "R2" V 4043 1600 50  0000 C CNN
F 1 "2.2R" V 4134 1600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4180 1600 50  0001 C CNN
F 3 "~" H 4250 1600 50  0001 C CNN
	1    4250 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 2300 6350 2300
Connection ~ 5350 2300
Connection ~ 6350 2300
Wire Wire Line
	6350 2300 6350 2350
$Comp
L Device:R R1
U 1 1 629F97BF
P 4250 1300
F 0 "R1" V 4043 1300 50  0000 C CNN
F 1 "2.2R" V 4134 1300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4180 1300 50  0001 C CNN
F 3 "~" H 4250 1300 50  0001 C CNN
	1    4250 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 1600 4550 1600
Wire Wire Line
	4550 1600 4550 2350
Wire Wire Line
	4550 2350 4750 2350
Connection ~ 4750 2350
Wire Wire Line
	4400 1300 4450 1300
Wire Wire Line
	5050 1300 5100 1300
Wire Wire Line
	5100 1300 5100 1900
Connection ~ 5100 1900
Wire Wire Line
	5100 1900 4900 1900
Wire Wire Line
	4000 1200 4000 1300
Wire Wire Line
	4000 1300 4100 1300
Wire Wire Line
	4000 1300 4000 1600
Wire Wire Line
	4000 1600 4100 1600
Connection ~ 4000 1300
$Comp
L Device:C C12
U 1 1 629F97D3
P 2950 2800
F 0 "C12" H 3065 2846 50  0000 L CNN
F 1 "100nF" H 3065 2755 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2988 2650 50  0001 C CNN
F 3 "~" H 2950 2800 50  0001 C CNN
	1    2950 2800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR014
U 1 1 629F97DF
P 2950 2050
F 0 "#PWR014" H 2950 1900 50  0001 C CNN
F 1 "+3.3V" H 2965 2223 50  0000 C CNN
F 2 "" H 2950 2050 50  0001 C CNN
F 3 "" H 2950 2050 50  0001 C CNN
	1    2950 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2050 2950 2150
Wire Wire Line
	3350 2150 2950 2150
Connection ~ 2950 2150
Wire Wire Line
	2950 2950 2950 3050
$Comp
L Device:L L1
U 1 1 629F97ED
P 7750 2350
F 0 "L1" V 7940 2350 50  0000 C CNN
F 1 "L" V 7849 2350 50  0000 C CNN
F 2 "Choke_Toroid_ThroughHole:Choke_Toroid_horizontal_Diameter12-5mm_Amidon-T44" H 7750 2350 50  0001 C CNN
F 3 "~" H 7750 2350 50  0001 C CNN
	1    7750 2350
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C10
U 1 1 629F97F3
P 7950 2550
F 0 "C10" H 8065 2596 50  0000 L CNN
F 1 "C" H 8065 2505 50  0000 L CNN
F 2 "Capacitors_SMD:C_2225_HandSoldering" H 7988 2400 50  0001 C CNN
F 3 "~" H 7950 2550 50  0001 C CNN
	1    7950 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 629F97F9
P 7950 2750
F 0 "#PWR016" H 7950 2500 50  0001 C CNN
F 1 "GND" H 7955 2577 50  0000 C CNN
F 2 "" H 7950 2750 50  0001 C CNN
F 3 "" H 7950 2750 50  0001 C CNN
	1    7950 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2350 7950 2350
Wire Wire Line
	7950 2350 7950 2400
Wire Wire Line
	7950 2700 7950 2750
$Comp
L Device:C C7
U 1 1 629F980A
P 10100 2250
F 0 "C7" H 10215 2296 50  0000 L CNN
F 1 "100nF" H 10215 2205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 10138 2100 50  0001 C CNN
F 3 "~" H 10100 2250 50  0001 C CNN
	1    10100 2250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR015
U 1 1 629F9810
P 10100 1700
F 0 "#PWR015" H 10100 1550 50  0001 C CNN
F 1 "+3.3V" H 10115 1873 50  0000 C CNN
F 2 "" H 10100 1700 50  0001 C CNN
F 3 "" H 10100 1700 50  0001 C CNN
	1    10100 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 1750 10100 1700
Wire Wire Line
	10100 1750 10100 2100
Connection ~ 10100 1750
Wire Wire Line
	10100 2400 10100 2650
Connection ~ 10100 2650
Wire Wire Line
	10100 2650 10100 2750
Wire Wire Line
	9900 2650 10100 2650
Wire Wire Line
	9900 1750 10100 1750
$Comp
L Device:C C23
U 1 1 62B2A98F
P 5250 6650
F 0 "C23" H 5365 6696 50  0000 L CNN
F 1 "10uF" H 5365 6605 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L31.5mm_W13.0mm_P27.50mm_MKS4" H 5288 6500 50  0001 C CNN
F 3 "~" H 5250 6650 50  0001 C CNN
	1    5250 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C24
U 1 1 62B2AE2D
P 5750 6650
F 0 "C24" H 5865 6696 50  0000 L CNN
F 1 "0.47uF" H 5865 6605 50  0000 L CNN
F 2 "Capacitors_SMD:C_2225_HandSoldering" H 5788 6500 50  0001 C CNN
F 3 "~" H 5750 6650 50  0001 C CNN
	1    5750 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C25
U 1 1 62B41AB1
P 6250 6650
F 0 "C25" H 6365 6696 50  0000 L CNN
F 1 "0.47uF" H 6365 6605 50  0000 L CNN
F 2 "Capacitors_SMD:C_2225_HandSoldering" H 6288 6500 50  0001 C CNN
F 3 "~" H 6250 6650 50  0001 C CNN
	1    6250 6650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR039
U 1 1 62B4D109
P 5750 6900
F 0 "#PWR039" H 5750 6650 50  0001 C CNN
F 1 "GND" H 5755 6727 50  0000 C CNN
F 2 "" H 5750 6900 50  0001 C CNN
F 3 "" H 5750 6900 50  0001 C CNN
	1    5750 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR040
U 1 1 62B4D61F
P 6250 6900
F 0 "#PWR040" H 6250 6650 50  0001 C CNN
F 1 "GND" H 6255 6727 50  0000 C CNN
F 2 "" H 6250 6900 50  0001 C CNN
F 3 "" H 6250 6900 50  0001 C CNN
	1    6250 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR038
U 1 1 62B4D7E1
P 5250 6900
F 0 "#PWR038" H 5250 6650 50  0001 C CNN
F 1 "GND" H 5255 6727 50  0000 C CNN
F 2 "" H 5250 6900 50  0001 C CNN
F 3 "" H 5250 6900 50  0001 C CNN
	1    5250 6900
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR034
U 1 1 62B4DB2E
P 5250 6400
F 0 "#PWR034" H 5250 6250 50  0001 C CNN
F 1 "VBUS" H 5265 6573 50  0000 C CNN
F 2 "" H 5250 6400 50  0001 C CNN
F 3 "" H 5250 6400 50  0001 C CNN
	1    5250 6400
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR035
U 1 1 62B4E9C5
P 5750 6400
F 0 "#PWR035" H 5750 6250 50  0001 C CNN
F 1 "VBUS" H 5765 6573 50  0000 C CNN
F 2 "" H 5750 6400 50  0001 C CNN
F 3 "" H 5750 6400 50  0001 C CNN
	1    5750 6400
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR036
U 1 1 62B4ECB6
P 6250 6400
F 0 "#PWR036" H 6250 6250 50  0001 C CNN
F 1 "VBUS" H 6265 6573 50  0000 C CNN
F 2 "" H 6250 6400 50  0001 C CNN
F 3 "" H 6250 6400 50  0001 C CNN
	1    6250 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 6900 5250 6800
Wire Wire Line
	5250 6500 5250 6400
Wire Wire Line
	5750 6400 5750 6500
Wire Wire Line
	5750 6800 5750 6900
Wire Wire Line
	6250 6900 6250 6800
Wire Wire Line
	6250 6500 6250 6400
$Comp
L ACS722LLCTR-05AB-T:ACS722LLCTR-05AB-T U3
U 1 1 629F96DE
P 9200 2250
F 0 "U3" H 9200 3020 50  0000 C CNN
F 1 "ACS722LLCTR-05AB-T" H 9200 2929 50  0000 C CNN
F 2 "ACS722LLCTR-05AB-T:SOIC127P600X175-8N" H 9200 2250 50  0001 L BNN
F 3 "" H 9200 2250 50  0001 L BNN
F 4 "SOIC127P600X175-8N" H 9200 2250 50  0001 L BNN "Package"
F 5 "Allegro" H 9200 2250 50  0001 L BNN "Manufacturer"
	1    9200 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 2350 8500 2350
Wire Wire Line
	8500 2450 8350 2450
Wire Wire Line
	8350 2450 8350 2350
Wire Wire Line
	8350 2350 7950 2350
Connection ~ 7950 2350
Wire Wire Line
	8450 4900 8500 4900
Wire Wire Line
	7950 4900 8350 4900
Wire Wire Line
	8350 4900 8350 4800
Wire Wire Line
	8350 4800 8500 4800
Connection ~ 7950 4900
Text Label 6250 6450 0    50   ~ 0
VBUS
$Comp
L Connector:Conn_01x07_Male J3
U 1 1 62934120
P 1600 2450
F 0 "J3" H 1708 2931 50  0000 C CNN
F 1 "Conn_01x07_Male" H 1708 2840 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x07_Pitch2.54mm" H 1600 2450 50  0001 C CNN
F 3 "~" H 1600 2450 50  0001 C CNN
	1    1600 2450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x07_Male J6
U 1 1 62942E4F
P 1650 4800
F 0 "J6" H 1758 5281 50  0000 C CNN
F 1 "Conn_01x07_Male" H 1758 5190 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x07_Pitch2.54mm" H 1650 4800 50  0001 C CNN
F 3 "~" H 1650 4800 50  0001 C CNN
	1    1650 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2150 2950 2150
Wire Wire Line
	1800 2650 1950 2650
Wire Wire Line
	1800 2750 1950 2750
Text Label 1950 2650 0    50   ~ 0
V_Sense_A
Text Label 1950 2750 0    50   ~ 0
I_Sense_A
Wire Wire Line
	3350 5000 1850 5000
Wire Wire Line
	1850 4900 3350 4900
Wire Wire Line
	3350 4800 1850 4800
Wire Wire Line
	1850 4700 2950 4700
Wire Wire Line
	9900 1950 10200 1950
Text Label 10200 1950 0    50   ~ 0
I_Sense_A
Wire Wire Line
	9900 4400 10200 4400
Text Label 10200 4400 0    50   ~ 0
I_Sense_B
Wire Wire Line
	2550 5100 2550 5600
$Comp
L Isolator:6N137 U5
U 1 1 629440A1
P 3400 6350
F 0 "U5" H 3400 6817 50  0000 C CNN
F 1 "6N137" H 3400 6726 50  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 3400 5850 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-0940EN" H 2550 6900 50  0001 C CNN
	1    3400 6350
	1    0    0    -1  
$EndComp
$Comp
L Isolator:6N137 U6
U 1 1 62949835
P 3400 7250
F 0 "U6" H 3400 7717 50  0000 C CNN
F 1 "6N137" H 3400 7626 50  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 3400 6750 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-0940EN" H 2550 7800 50  0001 C CNN
	1    3400 7250
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R27
U 1 1 6295BC94
P 4050 6050
F 0 "R27" V 4257 6050 50  0000 C CNN
F 1 "470R" V 4166 6050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3980 6050 50  0001 C CNN
F 3 "~" H 4050 6050 50  0001 C CNN
	1    4050 6050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R29
U 1 1 6295CB4D
P 2750 6950
F 0 "R29" V 2950 6950 50  0000 C CNN
F 1 "470R" V 2850 6950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2680 6950 50  0001 C CNN
F 3 "~" H 2750 6950 50  0001 C CNN
	1    2750 6950
	0    1    -1   0   
$EndComp
$Comp
L Device:C C22
U 1 1 6295CEDD
P 4250 6350
F 0 "C22" H 4365 6396 50  0000 L CNN
F 1 "100nF" H 4365 6305 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4288 6200 50  0001 C CNN
F 3 "~" H 4250 6350 50  0001 C CNN
	1    4250 6350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C26
U 1 1 6295E174
P 2550 7250
F 0 "C26" H 2665 7296 50  0000 L CNN
F 1 "100nF" H 2665 7205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2588 7100 50  0001 C CNN
F 3 "~" H 2550 7250 50  0001 C CNN
	1    2550 7250
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R28
U 1 1 6297C127
P 2850 6350
F 0 "R28" V 2650 6350 50  0000 C CNN
F 1 "330R" V 2750 6350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2780 6350 50  0001 C CNN
F 3 "~" H 2850 6350 50  0001 C CNN
	1    2850 6350
	0    1    1    0   
$EndComp
$Comp
L Device:R R30
U 1 1 6297C991
P 3950 7450
F 0 "R30" V 4150 7450 50  0000 C CNN
F 1 "330R" V 4050 7450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3880 7450 50  0001 C CNN
F 3 "~" H 3950 7450 50  0001 C CNN
	1    3950 7450
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 7100 2550 7050
Wire Wire Line
	2550 7050 3100 7050
Wire Wire Line
	3100 7450 2550 7450
Wire Wire Line
	2550 7450 2550 7400
Wire Wire Line
	4250 6500 4250 6550
Wire Wire Line
	4250 6550 3700 6550
Wire Wire Line
	3700 6150 4250 6150
Wire Wire Line
	4250 6150 4250 6200
Wire Wire Line
	2600 6950 2550 6950
Wire Wire Line
	2550 6950 2550 7050
Connection ~ 2550 7050
Wire Wire Line
	2900 6950 2950 6950
Wire Wire Line
	2950 6950 2950 7250
Wire Wire Line
	2950 7250 3100 7250
Wire Wire Line
	3900 6050 3850 6050
Wire Wire Line
	3850 6050 3850 6350
Wire Wire Line
	3850 6350 3700 6350
$Comp
L power:+3.3V #PWR033
U 1 1 62ABA7F3
P 4250 6000
F 0 "#PWR033" H 4250 5850 50  0001 C CNN
F 1 "+3.3V" H 4265 6173 50  0000 C CNN
F 2 "" H 4250 6000 50  0001 C CNN
F 3 "" H 4250 6000 50  0001 C CNN
	1    4250 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 6050 4250 6050
Wire Wire Line
	4250 6050 4250 6000
Wire Wire Line
	4250 6050 4250 6150
Connection ~ 4250 6050
Connection ~ 4250 6150
Wire Wire Line
	3000 6350 3100 6350
Wire Wire Line
	1850 3900 2000 3900
Wire Wire Line
	1850 4000 2000 4000
Wire Wire Line
	3800 7450 3700 7450
$Comp
L power:+3.3V #PWR041
U 1 1 62CCE38F
P 3800 7200
F 0 "#PWR041" H 3800 7050 50  0001 C CNN
F 1 "+3.3V" H 3815 7373 50  0000 C CNN
F 2 "" H 3800 7200 50  0001 C CNN
F 3 "" H 3800 7200 50  0001 C CNN
	1    3800 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 7200 3800 7250
Wire Wire Line
	3800 7250 3700 7250
Wire Wire Line
	4100 7450 4250 7450
Wire Wire Line
	4250 6550 4250 6600
Connection ~ 4250 6550
Wire Wire Line
	3850 6900 4450 6900
Wire Wire Line
	4250 7450 4250 7050
Wire Wire Line
	4250 7050 4450 7050
Text Label 4450 6900 0    50   ~ 0
Rx
Text Label 4450 7050 0    50   ~ 0
Tx
Wire Wire Line
	3850 6900 3850 6350
Connection ~ 3850 6350
Wire Wire Line
	2550 6950 2550 6350
Wire Wire Line
	2550 6350 2700 6350
Connection ~ 2550 6950
Wire Wire Line
	2950 6950 2950 6700
Connection ~ 2950 6950
Wire Wire Line
	2550 7450 2100 7450
Connection ~ 2550 7450
Wire Wire Line
	2100 6700 2950 6700
Connection ~ 2550 6350
Wire Wire Line
	1850 6700 1900 6700
Wire Wire Line
	1900 6700 1900 6350
Wire Wire Line
	1900 6350 2550 6350
Wire Wire Line
	2100 6700 2100 6900
Wire Wire Line
	2100 6900 1850 6900
Wire Wire Line
	2100 7450 2100 7000
Wire Wire Line
	2100 7000 1850 7000
Wire Wire Line
	2000 6550 2000 6800
Wire Wire Line
	2000 6800 1850 6800
Wire Wire Line
	2000 6550 3100 6550
Text Label 2150 6350 0    50   ~ 0
Ext_Vdd
Text Label 2150 6550 0    50   ~ 0
Ext_Tx
Text Label 2150 6700 0    50   ~ 0
Ext_Rx
Text Label 2150 7450 0    50   ~ 0
Ext_Gnd
Text Label 2000 3900 0    50   ~ 0
Tx
Text Label 2000 4000 0    50   ~ 0
Rx
$Comp
L Connector:Conn_01x04_Male J7
U 1 1 62E89B4A
P 1650 6800
F 0 "J7" H 1500 7100 50  0000 C CNN
F 1 "Conn_01x04_Male" H 1500 7000 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x04_Pitch2.54mm" H 1650 6800 50  0001 C CNN
F 3 "~" H 1650 6800 50  0001 C CNN
	1    1650 6800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 62E8ADBA
P 1650 3900
F 0 "J4" H 1550 4100 50  0000 C CNN
F 1 "Conn_01x02_Male" H 1500 4000 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02_Pitch2.54mm" H 1650 3900 50  0001 C CNN
F 3 "~" H 1650 3900 50  0001 C CNN
	1    1650 3900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 62EBE6EB
P 8000 1100
F 0 "J2" H 8080 1092 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 8080 1001 50  0000 L CNN
F 2 "Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 8000 1100 50  0001 C CNN
F 3 "~" H 8000 1100 50  0001 C CNN
	1    8000 1100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J5
U 1 1 62EC0D4E
P 10050 3700
F 0 "J5" H 9968 3375 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 9968 3466 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 10050 3700 50  0001 C CNN
F 3 "~" H 10050 3700 50  0001 C CNN
	1    10050 3700
	1    0    0    1   
$EndComp
Wire Wire Line
	9750 3600 9750 3450
Wire Wire Line
	9750 3700 9750 3850
$Comp
L power:VBUS #PWR04
U 1 1 62EF140C
P 7700 1000
F 0 "#PWR04" H 7700 850 50  0001 C CNN
F 1 "VBUS" H 7715 1173 50  0000 C CNN
F 2 "" H 7700 1000 50  0001 C CNN
F 3 "" H 7700 1000 50  0001 C CNN
	1    7700 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 62EF1871
P 7700 1300
F 0 "#PWR06" H 7700 1050 50  0001 C CNN
F 1 "GND" H 7705 1127 50  0000 C CNN
F 2 "" H 7700 1300 50  0001 C CNN
F 3 "" H 7700 1300 50  0001 C CNN
	1    7700 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1000 7700 1100
Wire Wire Line
	7700 1100 7800 1100
Wire Wire Line
	7800 1200 7700 1200
Wire Wire Line
	7700 1200 7700 1300
$Comp
L Regulator_Linear:NCP1117-3.3_SOT223 U1
U 1 1 62F432DE
P 1100 1100
F 0 "U1" H 1100 1342 50  0000 C CNN
F 1 "NCP1117-3.3_SOT223" H 1100 1251 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 1100 1300 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/NCP1117-D.PDF" H 1200 850 50  0001 C CNN
	1    1100 1100
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01
U 1 1 6302109D
P 650 850
F 0 "#PWR01" H 650 700 50  0001 C CNN
F 1 "+3.3V" H 665 1023 50  0000 C CNN
F 2 "" H 650 850 50  0001 C CNN
F 3 "" H 650 850 50  0001 C CNN
	1    650  850 
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR02
U 1 1 63021529
P 1550 850
F 0 "#PWR02" H 1550 700 50  0001 C CNN
F 1 "+12V" H 1565 1023 50  0000 C CNN
F 2 "" H 1550 850 50  0001 C CNN
F 3 "" H 1550 850 50  0001 C CNN
	1    1550 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1550 1100 1400
Wire Wire Line
	1400 1100 1550 1100
Wire Wire Line
	1550 850  1550 1100
Connection ~ 1550 1100
Wire Wire Line
	650  850  650  1100
Wire Wire Line
	650  1100 800  1100
Wire Wire Line
	1550 1100 1700 1100
Wire Wire Line
	2000 1550 2000 1400
$Comp
L Regulator_Linear:NCP1117-12_SOT223 U2
U 1 1 62F44E86
P 2000 1100
F 0 "U2" H 2000 1342 50  0000 C CNN
F 1 "NCP1117-12_SOT223" H 2000 1251 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 2000 1300 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/NCP1117-D.PDF" H 2100 850 50  0001 C CNN
	1    2000 1100
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 631D5246
P 1550 1400
F 0 "C2" H 1665 1446 50  0000 L CNN
F 1 "10uF" H 1665 1355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1588 1250 50  0001 C CNN
F 3 "~" H 1550 1400 50  0001 C CNN
	1    1550 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 631D5A22
P 2400 1400
F 0 "C3" H 2515 1446 50  0000 L CNN
F 1 "10uF" H 2515 1355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2438 1250 50  0001 C CNN
F 3 "~" H 2400 1400 50  0001 C CNN
	1    2400 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1100 2400 1100
Connection ~ 2750 1100
$Comp
L power:VCC #PWR03
U 1 1 62F40558
P 2750 850
F 0 "#PWR03" H 2750 700 50  0001 C CNN
F 1 "VCC" H 2765 1023 50  0000 C CNN
F 2 "" H 2750 850 50  0001 C CNN
F 3 "" H 2750 850 50  0001 C CNN
	1    2750 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1100 2750 850 
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 62F3F69E
P 2950 1100
F 0 "J1" H 2850 900 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 2850 800 50  0000 L CNN
F 2 "Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 2950 1100 50  0001 C CNN
F 3 "~" H 2950 1100 50  0001 C CNN
	1    2950 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 6325A836
P 650 1400
F 0 "C1" H 765 1446 50  0000 L CNN
F 1 "10uF" H 765 1355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 688 1250 50  0001 C CNN
F 3 "~" H 650 1400 50  0001 C CNN
	1    650  1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  1250 650  1100
Connection ~ 650  1100
Wire Wire Line
	1550 1100 1550 1250
Wire Wire Line
	2400 1250 2400 1100
Connection ~ 2400 1100
Wire Wire Line
	2400 1100 2300 1100
Wire Wire Line
	9850 3600 9750 3600
Wire Wire Line
	9750 3700 9850 3700
Wire Wire Line
	5400 850  5400 1300
$Comp
L Device:R R32
U 1 1 634C1B37
P 5550 850
F 0 "R32" V 5757 850 50  0000 C CNN
F 1 "2.2K" V 5666 850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5480 850 50  0001 C CNN
F 3 "~" H 5550 850 50  0001 C CNN
	1    5550 850 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5700 850  5750 850 
$Comp
L power:GND #PWR0103
U 1 1 634DEFA7
P 5400 1300
F 0 "#PWR0103" H 5400 1050 50  0001 C CNN
F 1 "GND" H 5405 1127 50  0000 C CNN
F 2 "" H 5400 1300 50  0001 C CNN
F 3 "" H 5400 1300 50  0001 C CNN
	1    5400 1300
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR0104
U 1 1 634DF393
P 7150 800
F 0 "#PWR0104" H 7150 650 50  0001 C CNN
F 1 "VBUS" H 7165 973 50  0000 C CNN
F 2 "" H 7150 800 50  0001 C CNN
F 3 "" H 7150 800 50  0001 C CNN
	1    7150 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 6354E8A3
P 5600 1300
F 0 "#PWR0105" H 5600 1050 50  0001 C CNN
F 1 "GND" H 5605 1127 50  0000 C CNN
F 2 "" H 5600 1300 50  0001 C CNN
F 3 "" H 5600 1300 50  0001 C CNN
	1    5600 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 850  5750 1000
Wire Wire Line
	5750 1000 5600 1000
Connection ~ 5750 850 
Wire Wire Line
	5750 850  5800 850 
Wire Wire Line
	5750 1000 5850 1000
Connection ~ 5750 1000
Text Label 5850 1000 0    50   ~ 0
VBUS_Sense
Wire Wire Line
	1800 3100 1950 3100
Text Label 1950 3100 0    50   ~ 0
VBUS_Sense
Wire Wire Line
	7000 850  7150 850 
Wire Wire Line
	7150 850  7150 800 
$Comp
L Connector:Conn_01x02_Male J8
U 1 1 6299B21D
P 1600 3100
F 0 "J8" H 1500 3300 50  0000 C CNN
F 1 "Conn_01x02_Male" H 1450 3200 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02_Pitch2.54mm" H 1600 3100 50  0001 C CNN
F 3 "~" H 1600 3100 50  0001 C CNN
	1    1600 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3250 2150 3200
Wire Wire Line
	2150 3200 1800 3200
Text Label 7150 3250 0    50   ~ 0
V_Sense_A
Wire Wire Line
	7100 3250 7150 3250
Wire Wire Line
	7100 3250 7100 3500
Text Label 7150 3950 0    50   ~ 0
V_Sense_B
Connection ~ 7100 3500
Wire Wire Line
	7050 3500 7100 3500
Wire Wire Line
	7100 3500 7150 3500
Wire Wire Line
	7100 3800 7100 3950
Wire Wire Line
	7100 3950 7150 3950
Connection ~ 7100 3800
Wire Wire Line
	7100 3800 7150 3800
Wire Wire Line
	7050 3800 7100 3800
Connection ~ 8450 3500
Wire Wire Line
	8350 3500 8450 3500
Connection ~ 8450 3800
Wire Wire Line
	8350 3800 8450 3800
$Comp
L Device:R R18
U 1 1 62B971BE
P 8200 3800
F 0 "R18" V 7993 3800 50  0000 C CNN
F 1 "100K" V 8084 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8130 3800 50  0001 C CNN
F 3 "~" H 8200 3800 50  0001 C CNN
	1    8200 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 62B96E5F
P 7900 3800
F 0 "R17" V 7693 3800 50  0000 C CNN
F 1 "100K" V 7784 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7830 3800 50  0001 C CNN
F 3 "~" H 7900 3800 50  0001 C CNN
	1    7900 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 62B96B94
P 7600 3800
F 0 "R16" V 7393 3800 50  0000 C CNN
F 1 "100K" V 7484 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7530 3800 50  0001 C CNN
F 3 "~" H 7600 3800 50  0001 C CNN
	1    7600 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 62B967B0
P 7300 3800
F 0 "R15" V 7093 3800 50  0000 C CNN
F 1 "100K" V 7184 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7230 3800 50  0001 C CNN
F 3 "~" H 7300 3800 50  0001 C CNN
	1    7300 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 62B964A0
P 8200 3500
F 0 "R13" V 7993 3500 50  0000 C CNN
F 1 "100K" V 8084 3500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8130 3500 50  0001 C CNN
F 3 "~" H 8200 3500 50  0001 C CNN
	1    8200 3500
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 62B51C48
P 7900 3500
F 0 "R12" V 7693 3500 50  0000 C CNN
F 1 "100K" V 7784 3500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7830 3500 50  0001 C CNN
F 3 "~" H 7900 3500 50  0001 C CNN
	1    7900 3500
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 62B51785
P 7600 3500
F 0 "R11" V 7393 3500 50  0000 C CNN
F 1 "100K" V 7484 3500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7530 3500 50  0001 C CNN
F 3 "~" H 7600 3500 50  0001 C CNN
	1    7600 3500
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 629F9827
P 6900 3500
F 0 "R9" V 7107 3500 50  0000 C CNN
F 1 "2.2K" V 7016 3500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6830 3500 50  0001 C CNN
F 3 "~" H 6900 3500 50  0001 C CNN
	1    6900 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6750 3500 6750 3650
$Comp
L Device:R R14
U 1 1 629E0137
P 6900 3800
F 0 "R14" V 7107 3800 50  0000 C CNN
F 1 "2.2K" V 7016 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6830 3800 50  0001 C CNN
F 3 "~" H 6900 3800 50  0001 C CNN
	1    6900 3800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R10
U 1 1 62A3CE61
P 7300 3500
F 0 "R10" V 7093 3500 50  0000 C CNN
F 1 "100K" V 7184 3500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7230 3500 50  0001 C CNN
F 3 "~" H 7300 3500 50  0001 C CNN
	1    7300 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	8450 3850 9750 3850
Wire Wire Line
	8450 3450 8450 3500
Wire Wire Line
	8450 3450 9750 3450
Wire Wire Line
	6750 3650 6750 3800
Connection ~ 6750 3650
Wire Wire Line
	6600 3650 6750 3650
Wire Wire Line
	6600 3700 6600 3650
$Comp
L Device:C C13
U 1 1 629DF319
P 8450 3650
F 0 "C13" H 8565 3696 50  0000 L CNN
F 1 "2uF" H 8565 3605 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L24.0mm_W12.8mm_P22.50mm_MKT" H 8488 3500 50  0001 C CNN
F 3 "~" H 8450 3650 50  0001 C CNN
	1    8450 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 3800 8450 3850
$Comp
L power:GND #PWR022
U 1 1 629E0381
P 6600 3700
F 0 "#PWR022" H 6600 3450 50  0001 C CNN
F 1 "GND" H 6605 3527 50  0000 C CNN
F 2 "" H 6600 3700 50  0001 C CNN
F 3 "" H 6600 3700 50  0001 C CNN
	1    6600 3700
	1    0    0    -1  
$EndComp
Connection ~ 8450 3850
Wire Wire Line
	8450 3850 8450 4900
Connection ~ 8450 3450
Wire Wire Line
	8450 2350 8450 3450
Wire Wire Line
	1850 5100 2550 5100
Text Label 1950 4500 0    50   ~ 0
I_Sense_B
Wire Wire Line
	1850 4500 1950 4500
Text Label 1950 4600 0    50   ~ 0
V_Sense_B
Wire Wire Line
	1850 4600 1950 4600
Wire Wire Line
	2600 2250 1800 2250
Wire Wire Line
	2600 2250 2600 3050
Wire Wire Line
	3350 2250 2650 2250
Wire Wire Line
	2650 2250 2650 2350
Wire Wire Line
	2650 2350 1800 2350
Wire Wire Line
	1800 2450 2700 2450
Wire Wire Line
	2700 2450 2700 2350
Wire Wire Line
	2700 2350 3350 2350
Wire Wire Line
	3350 2450 2750 2450
Wire Wire Line
	2750 2550 1800 2550
Wire Wire Line
	2750 2450 2750 2550
$Comp
L power:GND #PWR0101
U 1 1 629D8BEE
P 2950 5600
F 0 "#PWR0101" H 2950 5350 50  0001 C CNN
F 1 "GND" H 2955 5427 50  0000 C CNN
F 2 "" H 2950 5600 50  0001 C CNN
F 3 "" H 2950 5600 50  0001 C CNN
	1    2950 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 629D907F
P 2550 5600
F 0 "#PWR0102" H 2550 5350 50  0001 C CNN
F 1 "GND" H 2555 5427 50  0000 C CNN
F 2 "" H 2550 5600 50  0001 C CNN
F 3 "" H 2550 5600 50  0001 C CNN
	1    2550 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 629D92DD
P 4250 6600
F 0 "#PWR0106" H 4250 6350 50  0001 C CNN
F 1 "GND" H 4255 6427 50  0000 C CNN
F 2 "" H 4250 6600 50  0001 C CNN
F 3 "" H 4250 6600 50  0001 C CNN
	1    4250 6600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 629D972F
P 2950 3050
F 0 "#PWR0107" H 2950 2800 50  0001 C CNN
F 1 "GND" H 2955 2877 50  0000 C CNN
F 2 "" H 2950 3050 50  0001 C CNN
F 3 "" H 2950 3050 50  0001 C CNN
	1    2950 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 629D9B51
P 2600 3050
F 0 "#PWR0108" H 2600 2800 50  0001 C CNN
F 1 "GND" H 2605 2877 50  0000 C CNN
F 2 "" H 2600 3050 50  0001 C CNN
F 3 "" H 2600 3050 50  0001 C CNN
	1    2600 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 629DABAC
P 2150 3250
F 0 "#PWR0109" H 2150 3000 50  0001 C CNN
F 1 "GND" H 2155 3077 50  0000 C CNN
F 2 "" H 2150 3250 50  0001 C CNN
F 3 "" H 2150 3250 50  0001 C CNN
	1    2150 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1200 2750 1550
$Comp
L power:GND #PWR0110
U 1 1 629DC911
P 2750 1550
F 0 "#PWR0110" H 2750 1300 50  0001 C CNN
F 1 "GND" H 2755 1377 50  0000 C CNN
F 2 "" H 2750 1550 50  0001 C CNN
F 3 "" H 2750 1550 50  0001 C CNN
	1    2750 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 629DCCC9
P 2400 1550
F 0 "#PWR0111" H 2400 1300 50  0001 C CNN
F 1 "GND" H 2405 1377 50  0000 C CNN
F 2 "" H 2400 1550 50  0001 C CNN
F 3 "" H 2400 1550 50  0001 C CNN
	1    2400 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 629DCF5E
P 2000 1550
F 0 "#PWR0112" H 2000 1300 50  0001 C CNN
F 1 "GND" H 2005 1377 50  0000 C CNN
F 2 "" H 2000 1550 50  0001 C CNN
F 3 "" H 2000 1550 50  0001 C CNN
	1    2000 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 629DD26A
P 1550 1550
F 0 "#PWR0113" H 1550 1300 50  0001 C CNN
F 1 "GND" H 1555 1377 50  0000 C CNN
F 2 "" H 1550 1550 50  0001 C CNN
F 3 "" H 1550 1550 50  0001 C CNN
	1    1550 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 629DD53D
P 1100 1550
F 0 "#PWR0114" H 1100 1300 50  0001 C CNN
F 1 "GND" H 1105 1377 50  0000 C CNN
F 2 "" H 1100 1550 50  0001 C CNN
F 3 "" H 1100 1550 50  0001 C CNN
	1    1100 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 629DD8B2
P 650 1550
F 0 "#PWR0115" H 650 1300 50  0001 C CNN
F 1 "GND" H 655 1377 50  0000 C CNN
F 2 "" H 650 1550 50  0001 C CNN
F 3 "" H 650 1550 50  0001 C CNN
	1    650  1550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR027
U 1 1 629C4495
P 10100 5200
F 0 "#PWR027" H 10100 4950 50  0001 C CNN
F 1 "GNDA" H 10105 5027 50  0000 C CNN
F 2 "" H 10100 5200 50  0001 C CNN
F 3 "" H 10100 5200 50  0001 C CNN
	1    10100 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR017
U 1 1 629F9804
P 10100 2750
F 0 "#PWR017" H 10100 2500 50  0001 C CNN
F 1 "GNDA" H 10105 2577 50  0000 C CNN
F 2 "" H 10100 2750 50  0001 C CNN
F 3 "" H 10100 2750 50  0001 C CNN
	1    10100 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0116
U 1 1 629F26B4
P 2800 3750
F 0 "#PWR0116" H 2800 3500 50  0001 C CNN
F 1 "GNDA" H 2805 3577 50  0000 C CNN
F 2 "" H 2800 3750 50  0001 C CNN
F 3 "" H 2800 3750 50  0001 C CNN
	1    2800 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 629F2D54
P 3200 3750
F 0 "#PWR0117" H 3200 3500 50  0001 C CNN
F 1 "GND" H 3205 3577 50  0000 C CNN
F 2 "" H 3200 3750 50  0001 C CNN
F 3 "" H 3200 3750 50  0001 C CNN
	1    3200 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3650 3200 3750
Wire Wire Line
	2800 3650 2800 3750
Wire Wire Line
	2850 3650 2800 3650
Wire Wire Line
	3150 3650 3200 3650
$Comp
L Device:R R31
U 1 1 629F3072
P 3000 3650
F 0 "R31" V 2793 3650 50  0000 C CNN
F 1 "0R" V 2884 3650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2930 3650 50  0001 C CNN
F 3 "~" H 3000 3650 50  0001 C CNN
	1    3000 3650
	0    1    1    0   
$EndComp
$Comp
L Device:C C29
U 1 1 62AF251F
P 1600 5750
F 0 "C29" H 1715 5796 50  0000 L CNN
F 1 "100nF" H 1715 5705 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1638 5600 50  0001 C CNN
F 3 "~" H 1600 5750 50  0001 C CNN
	1    1600 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C28
U 1 1 62AF2D7F
P 1150 5750
F 0 "C28" H 1265 5796 50  0000 L CNN
F 1 "100nF" H 1265 5705 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1188 5600 50  0001 C CNN
F 3 "~" H 1150 5750 50  0001 C CNN
	1    1150 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 62B11732
P 1150 5900
F 0 "#PWR010" H 1150 5650 50  0001 C CNN
F 1 "GND" H 1155 5727 50  0000 C CNN
F 2 "" H 1150 5900 50  0001 C CNN
F 3 "" H 1150 5900 50  0001 C CNN
	1    1150 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 62B119F0
P 1600 5900
F 0 "#PWR011" H 1600 5650 50  0001 C CNN
F 1 "GND" H 1605 5727 50  0000 C CNN
F 2 "" H 1600 5900 50  0001 C CNN
F 3 "" H 1600 5900 50  0001 C CNN
	1    1600 5900
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 62B381D7
P 1150 5600
F 0 "#PWR?" H 1150 5450 50  0001 C CNN
F 1 "+12V" H 1165 5773 50  0000 C CNN
F 2 "" H 1150 5600 50  0001 C CNN
F 3 "" H 1150 5600 50  0001 C CNN
	1    1150 5600
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 62B56AA0
P 1600 5600
F 0 "#PWR?" H 1600 5450 50  0001 C CNN
F 1 "+12V" H 1615 5773 50  0000 C CNN
F 2 "" H 1600 5600 50  0001 C CNN
F 3 "" H 1600 5600 50  0001 C CNN
	1    1600 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2150 2950 2650
Wire Wire Line
	2950 4700 2950 5200
Wire Wire Line
	3350 5100 3300 5100
Wire Wire Line
	3300 5100 3300 5600
$Comp
L power:GND #PWR?
U 1 1 62A0477A
P 3300 5600
F 0 "#PWR?" H 3300 5350 50  0001 C CNN
F 1 "GND" H 3305 5427 50  0000 C CNN
F 2 "" H 3300 5600 50  0001 C CNN
F 3 "" H 3300 5600 50  0001 C CNN
	1    3300 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 3050 3300 2550
Wire Wire Line
	3300 2550 3350 2550
$Comp
L power:GND #PWR?
U 1 1 62A24493
P 3300 3050
F 0 "#PWR?" H 3300 2800 50  0001 C CNN
F 1 "GND" H 3305 2877 50  0000 C CNN
F 2 "" H 3300 3050 50  0001 C CNN
F 3 "" H 3300 3050 50  0001 C CNN
	1    3300 3050
	1    0    0    -1  
$EndComp
Connection ~ 6350 1500
Connection ~ 6350 2250
Wire Wire Line
	6350 2250 6350 2300
Wire Wire Line
	6350 2250 6350 2150
Wire Wire Line
	6350 1450 6350 1500
Wire Wire Line
	6350 1500 6350 1650
Wire Wire Line
	7100 2250 6350 2250
Wire Wire Line
	7100 2200 7100 2250
Wire Wire Line
	7100 1850 7100 1900
Wire Wire Line
	7100 1500 7100 1550
Wire Wire Line
	6350 1500 7100 1500
$Comp
L Device:C C4
U 1 1 629F9716
P 7100 1700
F 0 "C4" H 7215 1746 50  0000 L CNN
F 1 "22pF" H 7215 1655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7138 1550 50  0001 C CNN
F 3 "~" H 7100 1700 50  0001 C CNN
	1    7100 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 629F970A
P 7100 2050
F 0 "R4" H 7030 2004 50  0000 R CNN
F 1 "15R" H 7030 2095 50  0000 R CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7030 2050 50  0001 C CNN
F 3 "~" H 7100 2050 50  0001 C CNN
	1    7100 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	6350 5800 6350 5750
Wire Wire Line
	6350 5750 6350 5650
Connection ~ 6350 5750
Wire Wire Line
	7100 5750 6350 5750
Wire Wire Line
	7100 5700 7100 5750
Wire Wire Line
	7100 5350 7100 5400
Wire Wire Line
	7100 5000 7100 5050
Wire Wire Line
	6350 4900 6350 5000
Wire Wire Line
	6350 5000 6350 5150
Connection ~ 6350 5000
Wire Wire Line
	6350 5000 7100 5000
$Comp
L Device:C C20
U 1 1 629269B0
P 7100 5200
F 0 "C20" H 7215 5246 50  0000 L CNN
F 1 "22pF" H 7215 5155 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7138 5050 50  0001 C CNN
F 3 "~" H 7100 5200 50  0001 C CNN
	1    7100 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R25
U 1 1 629269A4
P 7100 5550
F 0 "R25" H 7030 5504 50  0000 R CNN
F 1 "15R" H 7030 5595 50  0000 R CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7030 5550 50  0001 C CNN
F 3 "~" H 7100 5550 50  0001 C CNN
	1    7100 5550
	-1   0    0    1   
$EndComp
Wire Wire Line
	6350 4800 6350 4850
Wire Wire Line
	6350 4800 6350 4700
Connection ~ 6350 4800
Wire Wire Line
	7100 4800 6350 4800
Wire Wire Line
	7100 4750 7100 4800
Wire Wire Line
	7100 4400 7100 4450
Wire Wire Line
	7100 4050 7100 4100
Wire Wire Line
	6350 4000 6350 4050
Wire Wire Line
	6350 4050 6350 4200
Connection ~ 6350 4050
Wire Wire Line
	6350 4050 7100 4050
$Comp
L Device:C C14
U 1 1 62926983
P 7100 4250
F 0 "C14" H 7215 4296 50  0000 L CNN
F 1 "22pF" H 7215 4205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7138 4100 50  0001 C CNN
F 3 "~" H 7100 4250 50  0001 C CNN
	1    7100 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R22
U 1 1 62926977
P 7100 4600
F 0 "R22" H 7030 4554 50  0000 R CNN
F 1 "15R" H 7030 4645 50  0000 R CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7030 4600 50  0001 C CNN
F 3 "~" H 7100 4600 50  0001 C CNN
	1    7100 4600
	-1   0    0    1   
$EndComp
Wire Wire Line
	6350 3250 6350 3200
Wire Wire Line
	6350 3200 6350 3100
Connection ~ 6350 3200
Wire Wire Line
	7100 3200 6350 3200
Wire Wire Line
	7100 2450 7100 2500
$Comp
L Device:C C11
U 1 1 629F9743
P 7100 2650
F 0 "C11" H 7215 2696 50  0000 L CNN
F 1 "22pF" H 7215 2605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7138 2500 50  0001 C CNN
F 3 "~" H 7100 2650 50  0001 C CNN
	1    7100 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2800 7100 2850
$Comp
L Device:R R7
U 1 1 629F9737
P 7100 3000
F 0 "R7" H 7030 2954 50  0000 R CNN
F 1 "15R" H 7030 3045 50  0000 R CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7030 3000 50  0001 C CNN
F 3 "~" H 7100 3000 50  0001 C CNN
	1    7100 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	7100 3150 7100 3200
Wire Wire Line
	6350 2350 6350 2450
Wire Wire Line
	6350 2450 6350 2600
Connection ~ 6350 2450
Wire Wire Line
	6350 2450 7100 2450
$Comp
L Device:C C27
U 1 1 634DF6E4
P 5600 1150
F 0 "C27" H 5715 1196 50  0000 L CNN
F 1 "10nF" H 5715 1105 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5638 1000 50  0001 C CNN
F 3 "~" H 5600 1150 50  0001 C CNN
	1    5600 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R36
U 1 1 634C1B49
P 6850 850
F 0 "R36" V 6643 850 50  0000 C CNN
F 1 "100K" V 6734 850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6780 850 50  0001 C CNN
F 3 "~" H 6850 850 50  0001 C CNN
	1    6850 850 
	0    1    1    0   
$EndComp
$Comp
L Device:R R33
U 1 1 634C1B30
P 5950 850
F 0 "R33" V 5743 850 50  0000 C CNN
F 1 "100K" V 5834 850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5880 850 50  0001 C CNN
F 3 "~" H 5950 850 50  0001 C CNN
	1    5950 850 
	0    1    1    0   
$EndComp
$Comp
L Device:R R34
U 1 1 634C1B3D
P 6250 850
F 0 "R34" V 6043 850 50  0000 C CNN
F 1 "100K" V 6134 850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6180 850 50  0001 C CNN
F 3 "~" H 6250 850 50  0001 C CNN
	1    6250 850 
	0    1    1    0   
$EndComp
$Comp
L Device:R R35
U 1 1 634C1B43
P 6550 850
F 0 "R35" V 6343 850 50  0000 C CNN
F 1 "100K" V 6434 850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6480 850 50  0001 C CNN
F 3 "~" H 6550 850 50  0001 C CNN
	1    6550 850 
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 62E01E31
P 8150 5950
F 0 "C?" H 8265 5996 50  0000 L CNN
F 1 "100nF" H 8265 5905 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8188 5800 50  0001 C CNN
F 3 "~" H 8150 5950 50  0001 C CNN
	1    8150 5950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
