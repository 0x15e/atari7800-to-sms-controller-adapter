EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Atari 7800 to SMS Controller Adapter"
Date "2021-04-20"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 "Allows Atari 7800 Proline joysticks to function as Sega Master System controllers"
Comment4 "Licensed under CC0 1.0 Universal"
$EndDescr
$Comp
L Connector:DB9_Female J2
U 1 1 6066016A
P 5900 2700
F 0 "J2" V 6100 2400 50  0000 L CNN
F 1 "DB9_Female" V 6100 2550 50  0000 L CNN
F 2 "Connector_Dsub:DSUB-9_Female_EdgeMount_P2.77mm" H 5900 2700 50  0001 C CNN
F 3 " ~" H 5900 2700 50  0001 C CNN
	1    5900 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector:DB9_Male J1
U 1 1 60660490
P 2400 2700
F 0 "J1" V 2600 2850 50  0000 C CNN
F 1 "DB9_Male" V 2600 2550 50  0000 C CNN
F 2 "Connector_Dsub:DSUB-9_Male_EdgeMount_P2.77mm" H 2400 2700 50  0001 C CNN
F 3 " ~" H 2400 2700 50  0001 C CNN
	1    2400 2700
	-1   0    0    1   
$EndComp
Text Label 2700 2300 0    50   ~ 0
UP
Text Label 2700 2500 0    50   ~ 0
DOWN
Text Label 2700 2700 0    50   ~ 0
LEFT
Text Label 2700 2900 0    50   ~ 0
RIGHT
Text Label 5600 2300 2    50   ~ 0
UP
Text Label 5600 2500 2    50   ~ 0
DOWN
Text Label 5600 2700 2    50   ~ 0
LEFT
Text Label 5600 2900 2    50   ~ 0
RIGHT
Text Label 2700 3000 0    50   ~ 0
L_FIRE
Text Label 2700 3100 0    50   ~ 0
R_FIRE
Text Label 5600 2400 2    50   ~ 0
FIRE1
Text Label 5600 3000 2    50   ~ 0
FIRE2
NoConn ~ 5600 2600
NoConn ~ 2700 2600
Text Label 3650 2150 2    50   ~ 0
L_FIRE
$Comp
L Device:R_US R2
U 1 1 606B70FC
P 3800 3050
F 0 "R2" V 3595 3050 50  0000 C CNN
F 1 "1.8K" V 3686 3050 50  0000 C CNN
F 2 "Resistors_Universal:Resistor_SMD+THTuniversal_0805to1206_RM10_HandSoldering_RevA_Date25Jun2010" V 3840 3040 50  0001 C CNN
F 3 "~" H 3800 3050 50  0001 C CNN
	1    3800 3050
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R1
U 1 1 606B73D5
P 3800 2150
F 0 "R1" V 3595 2150 50  0000 C CNN
F 1 "1.8K" V 3686 2150 50  0000 C CNN
F 2 "Resistors_Universal:Resistor_SMD+THTuniversal_0805to1206_RM10_HandSoldering_RevA_Date25Jun2010" V 3840 2140 50  0001 C CNN
F 3 "~" H 3800 2150 50  0001 C CNN
	1    3800 2150
	0    1    1    0   
$EndComp
Text Label 3650 3050 2    50   ~ 0
R_FIRE
$Comp
L Device:R_US R3
U 1 1 606B87DB
P 4400 1950
F 0 "R3" V 4195 1950 50  0000 C CNN
F 1 "270" V 4286 1950 50  0000 C CNN
F 2 "Resistors_Universal:Resistor_SMD+THTuniversal_0805to1206_RM10_HandSoldering_RevA_Date25Jun2010" V 4440 1940 50  0001 C CNN
F 3 "~" H 4400 1950 50  0001 C CNN
	1    4400 1950
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R4
U 1 1 606B8C10
P 4400 2850
F 0 "R4" V 4195 2850 50  0000 C CNN
F 1 "270" V 4286 2850 50  0000 C CNN
F 2 "Resistors_Universal:Resistor_SMD+THTuniversal_0805to1206_RM10_HandSoldering_RevA_Date25Jun2010" V 4440 2840 50  0001 C CNN
F 3 "~" H 4400 2850 50  0001 C CNN
	1    4400 2850
	0    1    1    0   
$EndComp
Text Label 4550 1950 0    50   ~ 0
FIRE1
Text Label 4550 2850 0    50   ~ 0
FIRE2
Text Label 5600 3100 2    50   ~ 0
Vcc
Text Label 2700 2400 0    50   ~ 0
Vcc
$Comp
L power:GND #PWR01
U 1 1 606B9B5F
P 3100 2800
F 0 "#PWR01" H 3100 2550 50  0001 C CNN
F 1 "GND" H 3105 2627 50  0000 C CNN
F 2 "" H 3100 2800 50  0001 C CNN
F 3 "" H 3100 2800 50  0001 C CNN
	1    3100 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 606B9F48
P 5200 2800
F 0 "#PWR04" H 5200 2550 50  0001 C CNN
F 1 "GND" H 5205 2627 50  0000 C CNN
F 2 "" H 5200 2800 50  0001 C CNN
F 3 "" H 5200 2800 50  0001 C CNN
	1    5200 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2800 5600 2800
Wire Wire Line
	2700 2800 3100 2800
$Comp
L power:GND #PWR02
U 1 1 606BA499
P 4250 2350
F 0 "#PWR02" H 4250 2100 50  0001 C CNN
F 1 "GND" H 4255 2177 50  0000 C CNN
F 2 "" H 4250 2350 50  0001 C CNN
F 3 "" H 4250 2350 50  0001 C CNN
	1    4250 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 606BA85F
P 4250 3250
F 0 "#PWR03" H 4250 3000 50  0001 C CNN
F 1 "GND" H 4255 3077 50  0000 C CNN
F 2 "" H 4250 3250 50  0001 C CNN
F 3 "" H 4250 3250 50  0001 C CNN
	1    4250 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_EBC Q1
U 1 1 606C38C9
P 4150 2150
F 0 "Q1" H 4340 2196 50  0000 L CNN
F 1 "2N4401" H 4340 2105 50  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 4350 2250 50  0001 C CNN
F 3 "~" H 4150 2150 50  0001 C CNN
	1    4150 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_EBC Q2
U 1 1 606C3D5B
P 4150 3050
F 0 "Q2" H 4340 3096 50  0000 L CNN
F 1 "2N4401" H 4340 3005 50  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 4350 3150 50  0001 C CNN
F 3 "~" H 4150 3050 50  0001 C CNN
	1    4150 3050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
