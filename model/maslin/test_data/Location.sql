-- root-types-contained: SystemModel_c,PackageableElement_c,DataType_c,CoreDataType_c,UserDataType_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES (1,
	'Location',
	1);
INSERT INTO EP_PKG
	VALUES (2,
	1,
	1,
	'Location',
	'',
	0);
INSERT INTO PE_PE
	VALUES (3,
	1,
	2,
	0,
	2);
INSERT INTO C_C
	VALUES (3,
	0,
	0,
	'Location',
	'Simulates a the GPS hardware/firmware. This component is only behavioral and included for testing purposes.',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (4,
	3,
	'Location',
	0,
	0);
INSERT INTO C_IR
	VALUES (5,
	6,
	0,
	4);
INSERT INTO C_P
	VALUES (5,
	'Location',
	'Unnamed Interface',
	'',
	'Location::Location::Location');
INSERT INTO SPR_PEP
	VALUES (7,
	8,
	5);
INSERT INTO SPR_PO
	VALUES (7,
	'getLocation',
	'',
	'',
	1);
INSERT INTO ACT_POB
	VALUES (9,
	7);
INSERT INTO ACT_ACT
	VALUES (9,
	'interface operation',
	0,
	10,
	0,
	0,
	'Location::Location::getLocation',
	0);
INSERT INTO ACT_BLK
	VALUES (10,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	9,
	0);
INSERT INTO SPR_PEP
	VALUES (11,
	12,
	5);
INSERT INTO SPR_PO
	VALUES (11,
	'getDistance',
	'',
	'// Return the straight-line distance, expressed in meters, between the
// two points passed as parameters, expressed in decimal degrees.

deltaLat = param.toLat - param.fromLat;
deltaLong = param.toLong - param.fromLong;
sumSquares = (deltaLat * deltaLat) + (deltaLong * deltaLong);
return ( (MATH::sqrt( x: sumSquares ) * kmPerDegree * 1000 ) );',
	1);
INSERT INTO ACT_POB
	VALUES (13,
	11);
INSERT INTO ACT_ACT
	VALUES (13,
	'interface operation',
	0,
	14,
	0,
	0,
	'Location::Location::getDistance',
	0);
INSERT INTO ACT_BLK
	VALUES (14,
	0,
	0,
	0,
	'MATH',
	'',
	'',
	7,
	1,
	7,
	11,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	13,
	0);
INSERT INTO ACT_SMT
	VALUES (15,
	14,
	16,
	4,
	1,
	'Location::Location::getDistance line: 4');
INSERT INTO ACT_AI
	VALUES (15,
	17,
	18,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (16,
	14,
	19,
	5,
	1,
	'Location::Location::getDistance line: 5');
INSERT INTO ACT_AI
	VALUES (16,
	20,
	21,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (19,
	14,
	22,
	6,
	1,
	'Location::Location::getDistance line: 6');
INSERT INTO ACT_AI
	VALUES (19,
	23,
	24,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (22,
	14,
	0,
	7,
	1,
	'Location::Location::getDistance line: 7');
INSERT INTO ACT_RET
	VALUES (22,
	25);
INSERT INTO V_VAL
	VALUES (18,
	1,
	1,
	4,
	1,
	8,
	0,
	0,
	0,
	0,
	26,
	14);
INSERT INTO V_TVL
	VALUES (18,
	27);
INSERT INTO V_VAL
	VALUES (28,
	0,
	0,
	4,
	18,
	22,
	0,
	0,
	0,
	0,
	26,
	14);
INSERT INTO V_PVL
	VALUES (28,
	0,
	0,
	0,
	29);
INSERT INTO V_VAL
	VALUES (17,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	26,
	14);
INSERT INTO V_BIN
	VALUES (17,
	30,
	28,
	'-');
INSERT INTO V_VAL
	VALUES (30,
	0,
	0,
	4,
	32,
	38,
	0,
	0,
	0,
	0,
	26,
	14);
INSERT INTO V_PVL
	VALUES (30,
	0,
	0,
	0,
	31);
INSERT INTO V_VAL
	VALUES (21,
	1,
	1,
	5,
	1,
	9,
	0,
	0,
	0,
	0,
	26,
	14);
INSERT INTO V_TVL
	VALUES (21,
	32);
INSERT INTO V_VAL
	VALUES (33,
	0,
	0,
	5,
	19,
	24,
	0,
	0,
	0,
	0,
	26,
	14);
INSERT INTO V_PVL
	VALUES (33,
	0,
	0,
	0,
	34);
INSERT INTO V_VAL
	VALUES (20,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	26,
	14);
INSERT INTO V_BIN
	VALUES (20,
	35,
	33,
	'-');
INSERT INTO V_VAL
	VALUES (35,
	0,
	0,
	5,
	34,
	41,
	0,
	0,
	0,
	0,
	26,
	14);
INSERT INTO V_PVL
	VALUES (35,
	0,
	0,
	0,
	36);
INSERT INTO V_VAL
	VALUES (24,
	1,
	1,
	6,
	1,
	10,
	0,
	0,
	0,
	0,
	26,
	14);
INSERT INTO V_TVL
	VALUES (24,
	37);
INSERT INTO V_VAL
	VALUES (38,
	0,
	0,
	6,
	15,
	22,
	0,
	0,
	0,
	0,
	26,
	14);
INSERT INTO V_TVL
	VALUES (38,
	27);
INSERT INTO V_VAL
	VALUES (39,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	26,
	14);
INSERT INTO V_BIN
	VALUES (39,
	40,
	38,
	'*');
INSERT INTO V_VAL
	VALUES (40,
	0,
	0,
	6,
	26,
	33,
	0,
	0,
	0,
	0,
	26,
	14);
INSERT INTO V_TVL
	VALUES (40,
	27);
INSERT INTO V_VAL
	VALUES (23,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	26,
	14);
INSERT INTO V_BIN
	VALUES (23,
	41,
	39,
	'+');
INSERT INTO V_VAL
	VALUES (42,
	0,
	0,
	6,
	39,
	47,
	0,
	0,
	0,
	0,
	26,
	14);
INSERT INTO V_TVL
	VALUES (42,
	32);
INSERT INTO V_VAL
	VALUES (41,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	26,
	14);
INSERT INTO V_BIN
	VALUES (41,
	43,
	42,
	'*');
INSERT INTO V_VAL
	VALUES (43,
	0,
	0,
	6,
	51,
	59,
	0,
	0,
	0,
	0,
	26,
	14);
INSERT INTO V_TVL
	VALUES (43,
	32);
INSERT INTO V_VAL
	VALUES (44,
	0,
	0,
	7,
	17,
	-1,
	7,
	23,
	0,
	0,
	45,
	14);
INSERT INTO V_BRV
	VALUES (44,
	46,
	1,
	7,
	11);
INSERT INTO V_VAL
	VALUES (47,
	0,
	0,
	7,
	26,
	35,
	0,
	0,
	0,
	0,
	26,
	14);
INSERT INTO V_TVL
	VALUES (47,
	37);
INSERT INTO V_PAR
	VALUES (47,
	0,
	44,
	'x',
	0,
	7,
	23);
INSERT INTO V_VAL
	VALUES (48,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	45,
	14);
INSERT INTO V_BIN
	VALUES (48,
	49,
	44,
	'*');
INSERT INTO V_VAL
	VALUES (49,
	0,
	0,
	7,
	41,
	51,
	0,
	0,
	0,
	0,
	45,
	14);
INSERT INTO V_SCV
	VALUES (49,
	50,
	45);
INSERT INTO V_VAL
	VALUES (25,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	45,
	14);
INSERT INTO V_BIN
	VALUES (25,
	51,
	48,
	'*');
INSERT INTO V_VAL
	VALUES (51,
	0,
	0,
	7,
	55,
	58,
	0,
	0,
	0,
	0,
	26,
	14);
INSERT INTO V_LIN
	VALUES (51,
	'1000');
INSERT INTO V_VAR
	VALUES (27,
	14,
	'deltaLat',
	1,
	26);
INSERT INTO V_TRN
	VALUES (27,
	0,
	'');
INSERT INTO V_VAR
	VALUES (32,
	14,
	'deltaLong',
	1,
	26);
INSERT INTO V_TRN
	VALUES (32,
	0,
	'');
INSERT INTO V_VAR
	VALUES (37,
	14,
	'sumSquares',
	1,
	26);
INSERT INTO V_TRN
	VALUES (37,
	0,
	'');
INSERT INTO SPR_PEP
	VALUES (52,
	53,
	5);
INSERT INTO SPR_PO
	VALUES (52,
	'registerListener',
	'',
	'',
	1);
INSERT INTO ACT_POB
	VALUES (54,
	52);
INSERT INTO ACT_ACT
	VALUES (54,
	'interface operation',
	0,
	55,
	0,
	0,
	'Location::Location::registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (55,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	54,
	0);
INSERT INTO SPR_PEP
	VALUES (56,
	57,
	5);
INSERT INTO SPR_PO
	VALUES (56,
	'unregisterListener',
	'',
	'',
	1);
INSERT INTO ACT_POB
	VALUES (58,
	56);
INSERT INTO ACT_ACT
	VALUES (58,
	'interface operation',
	0,
	59,
	0,
	0,
	'Location::Location::unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (59,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	58,
	0);
INSERT INTO PE_PE
	VALUES (60,
	1,
	0,
	3,
	7);
INSERT INTO EP_PKG
	VALUES (60,
	0,
	1,
	'Location',
	'',
	0);
INSERT INTO PE_PE
	VALUES (61,
	1,
	60,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (61,
	'GPS',
	1,
	'GPS',
	'Simulates a GPS.',
	0);
INSERT INTO O_TFR
	VALUES (62,
	61,
	'activate',
	'',
	63,
	0,
	'// The GPS is a singleton instance, so create it if it does not exist.

select any gps from instances of GPS;
if ( empty gps )
  // Create and initialize the singleton instance of the GPS.
  create object instance gps of GPS;
  gps.motionSegments = 0;
  gps.currentLatitude  = initialLatitude;
  gps.currentLongitude = initialLongitude;
end if;

// Establish recurring timer for periodic position updates.
create event instance tick of GPS_A1:tick() to GPS class;
gps.timer = TIM::timer_start_recurring( event_inst: tick, microseconds: updatePeriod );',
	1,
	'',
	0);
INSERT INTO ACT_OPB
	VALUES (64,
	62);
INSERT INTO ACT_ACT
	VALUES (64,
	'class operation',
	0,
	65,
	0,
	0,
	'GPS::activate',
	0);
INSERT INTO ACT_BLK
	VALUES (65,
	1,
	0,
	0,
	'TIM',
	'',
	'',
	14,
	1,
	14,
	13,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	64,
	0);
INSERT INTO ACT_SMT
	VALUES (66,
	65,
	67,
	3,
	1,
	'GPS::activate line: 3');
INSERT INTO ACT_FIO
	VALUES (66,
	68,
	1,
	'any',
	61,
	3,
	34);
INSERT INTO ACT_SMT
	VALUES (67,
	65,
	69,
	4,
	1,
	'GPS::activate line: 4');
INSERT INTO ACT_IF
	VALUES (67,
	70,
	71,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (69,
	65,
	72,
	13,
	1,
	'GPS::activate line: 13');
INSERT INTO E_ESS
	VALUES (69,
	1,
	0,
	13,
	31,
	13,
	38,
	13,
	48,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES (69,
	1,
	73);
INSERT INTO E_CSME
	VALUES (69,
	74);
INSERT INTO E_CEA
	VALUES (69);
INSERT INTO ACT_SMT
	VALUES (72,
	65,
	0,
	14,
	1,
	'GPS::activate line: 14');
INSERT INTO ACT_AI
	VALUES (72,
	75,
	76,
	0,
	0);
INSERT INTO V_VAL
	VALUES (77,
	0,
	0,
	4,
	12,
	14,
	0,
	0,
	0,
	0,
	78,
	65);
INSERT INTO V_IRF
	VALUES (77,
	68);
INSERT INTO V_VAL
	VALUES (71,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	79,
	65);
INSERT INTO V_UNY
	VALUES (71,
	77,
	'empty');
INSERT INTO V_VAL
	VALUES (80,
	1,
	0,
	14,
	1,
	3,
	0,
	0,
	0,
	0,
	78,
	65);
INSERT INTO V_IRF
	VALUES (80,
	68);
INSERT INTO V_VAL
	VALUES (76,
	1,
	0,
	14,
	5,
	9,
	0,
	0,
	0,
	0,
	81,
	65);
INSERT INTO V_AVL
	VALUES (76,
	80,
	61,
	82);
INSERT INTO V_VAL
	VALUES (75,
	0,
	0,
	14,
	18,
	-1,
	14,
	41,
	14,
	59,
	81,
	65);
INSERT INTO V_BRV
	VALUES (75,
	83,
	1,
	14,
	13);
INSERT INTO V_VAL
	VALUES (84,
	0,
	0,
	14,
	53,
	56,
	0,
	0,
	0,
	0,
	85,
	65);
INSERT INTO V_TVL
	VALUES (84,
	73);
INSERT INTO V_PAR
	VALUES (84,
	0,
	75,
	'event_inst',
	86,
	14,
	41);
INSERT INTO V_VAL
	VALUES (86,
	0,
	0,
	14,
	73,
	84,
	0,
	0,
	0,
	0,
	26,
	65);
INSERT INTO V_SCV
	VALUES (86,
	87,
	26);
INSERT INTO V_PAR
	VALUES (86,
	0,
	75,
	'microseconds',
	0,
	14,
	59);
INSERT INTO V_VAR
	VALUES (68,
	65,
	'gps',
	1,
	78);
INSERT INTO V_INT
	VALUES (68,
	0,
	61);
INSERT INTO V_VAR
	VALUES (73,
	65,
	'tick',
	1,
	85);
INSERT INTO V_TRN
	VALUES (73,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (70,
	0,
	0,
	0,
	'',
	'',
	'',
	9,
	3,
	6,
	33,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	64,
	0);
INSERT INTO ACT_SMT
	VALUES (88,
	70,
	89,
	6,
	3,
	'GPS::activate line: 6');
INSERT INTO ACT_CR
	VALUES (88,
	68,
	0,
	61,
	6,
	33);
INSERT INTO ACT_SMT
	VALUES (89,
	70,
	90,
	7,
	3,
	'GPS::activate line: 7');
INSERT INTO ACT_AI
	VALUES (89,
	91,
	92,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (90,
	70,
	93,
	8,
	3,
	'GPS::activate line: 8');
INSERT INTO ACT_AI
	VALUES (90,
	94,
	95,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (93,
	70,
	0,
	9,
	3,
	'GPS::activate line: 9');
INSERT INTO ACT_AI
	VALUES (93,
	96,
	97,
	0,
	0);
INSERT INTO V_VAL
	VALUES (98,
	1,
	0,
	7,
	3,
	5,
	0,
	0,
	0,
	0,
	78,
	70);
INSERT INTO V_IRF
	VALUES (98,
	68);
INSERT INTO V_VAL
	VALUES (92,
	1,
	0,
	7,
	7,
	20,
	0,
	0,
	0,
	0,
	26,
	70);
INSERT INTO V_AVL
	VALUES (92,
	98,
	61,
	99);
INSERT INTO V_VAL
	VALUES (91,
	0,
	0,
	7,
	24,
	24,
	0,
	0,
	0,
	0,
	26,
	70);
INSERT INTO V_LIN
	VALUES (91,
	'0');
INSERT INTO V_VAL
	VALUES (100,
	1,
	0,
	8,
	3,
	5,
	0,
	0,
	0,
	0,
	78,
	70);
INSERT INTO V_IRF
	VALUES (100,
	68);
INSERT INTO V_VAL
	VALUES (95,
	1,
	0,
	8,
	7,
	21,
	0,
	0,
	0,
	0,
	45,
	70);
INSERT INTO V_AVL
	VALUES (95,
	100,
	61,
	101);
INSERT INTO V_VAL
	VALUES (94,
	0,
	0,
	8,
	26,
	40,
	0,
	0,
	0,
	0,
	45,
	70);
INSERT INTO V_SCV
	VALUES (94,
	102,
	45);
INSERT INTO V_VAL
	VALUES (103,
	1,
	0,
	9,
	3,
	5,
	0,
	0,
	0,
	0,
	78,
	70);
INSERT INTO V_IRF
	VALUES (103,
	68);
INSERT INTO V_VAL
	VALUES (97,
	1,
	0,
	9,
	7,
	22,
	0,
	0,
	0,
	0,
	45,
	70);
INSERT INTO V_AVL
	VALUES (97,
	103,
	61,
	104);
INSERT INTO V_VAL
	VALUES (96,
	0,
	0,
	9,
	26,
	41,
	0,
	0,
	0,
	0,
	45,
	70);
INSERT INTO V_SCV
	VALUES (96,
	105,
	45);
INSERT INTO O_NBATTR
	VALUES (82,
	61);
INSERT INTO O_BATTR
	VALUES (82,
	61);
INSERT INTO O_ATTR
	VALUES (82,
	61,
	99,
	'timer',
	'Handle for underlying timer mechanism enabling the generation 
of delayed events that drive the GPS simulator.',
	'',
	'timer',
	0,
	81,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (101,
	61);
INSERT INTO O_BATTR
	VALUES (101,
	61);
INSERT INTO O_ATTR
	VALUES (101,
	61,
	0,
	'currentLatitude',
	'Current latitude, expressed in decimal degrees, of the simulated GPS.',
	'',
	'currentLatitude',
	0,
	45,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (104,
	61);
INSERT INTO O_BATTR
	VALUES (104,
	61);
INSERT INTO O_ATTR
	VALUES (104,
	61,
	101,
	'currentLongitude',
	'Current longitude, expressed in decimal degrees, of the simulated GPS.',
	'',
	'currentLongitude',
	0,
	45,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (99,
	61);
INSERT INTO O_BATTR
	VALUES (99,
	61);
INSERT INTO O_ATTR
	VALUES (99,
	61,
	104,
	'motionSegments',
	'The number of motion segments simulated by the GPS.',
	'',
	'motionSegments',
	0,
	26,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	61);
INSERT INTO O_ID
	VALUES (1,
	61);
INSERT INTO O_ID
	VALUES (2,
	61);
INSERT INTO SM_ASM
	VALUES (106,
	61);
INSERT INTO SM_SM
	VALUES (106,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (106);
INSERT INTO SM_LEVT
	VALUES (74,
	106,
	0);
INSERT INTO SM_SEVT
	VALUES (74,
	106,
	0);
INSERT INTO SM_EVT
	VALUES (74,
	106,
	0,
	1,
	'tick',
	0,
	'',
	'GPS_A1',
	'');
INSERT INTO SM_LEVT
	VALUES (107,
	106,
	0);
INSERT INTO SM_SEVT
	VALUES (107,
	106,
	0);
INSERT INTO SM_EVT
	VALUES (107,
	106,
	0,
	2,
	'registerListener',
	0,
	'',
	'GPS_A2',
	'');
INSERT INTO SM_LEVT
	VALUES (108,
	106,
	0);
INSERT INTO SM_SEVT
	VALUES (108,
	106,
	0);
INSERT INTO SM_EVT
	VALUES (108,
	106,
	0,
	3,
	'unregisterListener',
	0,
	'',
	'GPS_A3',
	'');
INSERT INTO SM_STATE
	VALUES (109,
	106,
	0,
	'idle',
	1,
	0);
INSERT INTO SM_EIGN
	VALUES (109,
	74,
	106,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (109,
	74,
	106,
	0);
INSERT INTO SM_SEME
	VALUES (109,
	107,
	106,
	0);
INSERT INTO SM_CH
	VALUES (109,
	108,
	106,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (109,
	108,
	106,
	0);
INSERT INTO SM_MOAH
	VALUES (110,
	106,
	109);
INSERT INTO SM_AH
	VALUES (110,
	106);
INSERT INTO SM_ACT
	VALUES (110,
	106,
	1,
	'// Deactivate the timer.
select any gps from instances of GPS;
res = TIM::timer_cancel(timer_inst_ref: gps.timer);
LOG::LogInfo(message: "Location listener unregistered.");

if ( not res )
  LOG::LogFailure( message: "Location listener: timer_cancel() failed." );
end if;
',
	'');
INSERT INTO ACT_SAB
	VALUES (111,
	106,
	110);
INSERT INTO ACT_ACT
	VALUES (111,
	'class state',
	0,
	112,
	0,
	0,
	'GPS::idle',
	0);
INSERT INTO ACT_BLK
	VALUES (112,
	1,
	0,
	0,
	'LOG',
	'',
	'',
	6,
	1,
	4,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	111,
	0);
INSERT INTO ACT_SMT
	VALUES (113,
	112,
	114,
	2,
	1,
	'GPS::idle line: 2');
INSERT INTO ACT_FIO
	VALUES (113,
	115,
	1,
	'any',
	61,
	2,
	34);
INSERT INTO ACT_SMT
	VALUES (114,
	112,
	116,
	3,
	1,
	'GPS::idle line: 3');
INSERT INTO ACT_AI
	VALUES (114,
	117,
	118,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (116,
	112,
	119,
	4,
	1,
	'GPS::idle line: 4');
INSERT INTO ACT_BRG
	VALUES (116,
	120,
	4,
	6,
	4,
	1);
INSERT INTO ACT_SMT
	VALUES (119,
	112,
	0,
	6,
	1,
	'GPS::idle line: 6');
INSERT INTO ACT_IF
	VALUES (119,
	121,
	122,
	0,
	0);
INSERT INTO V_VAL
	VALUES (118,
	1,
	1,
	3,
	1,
	3,
	0,
	0,
	0,
	0,
	79,
	112);
INSERT INTO V_TVL
	VALUES (118,
	123);
INSERT INTO V_VAL
	VALUES (117,
	0,
	0,
	3,
	12,
	-1,
	3,
	25,
	0,
	0,
	79,
	112);
INSERT INTO V_BRV
	VALUES (117,
	124,
	1,
	3,
	7);
INSERT INTO V_VAL
	VALUES (125,
	0,
	0,
	3,
	41,
	43,
	0,
	0,
	0,
	0,
	78,
	112);
INSERT INTO V_IRF
	VALUES (125,
	115);
INSERT INTO V_VAL
	VALUES (126,
	0,
	0,
	3,
	45,
	49,
	0,
	0,
	0,
	0,
	81,
	112);
INSERT INTO V_AVL
	VALUES (126,
	125,
	61,
	82);
INSERT INTO V_PAR
	VALUES (126,
	0,
	117,
	'timer_inst_ref',
	0,
	3,
	25);
INSERT INTO V_VAL
	VALUES (127,
	0,
	0,
	4,
	23,
	54,
	0,
	0,
	0,
	0,
	128,
	112);
INSERT INTO V_LST
	VALUES (127,
	'Location listener unregistered.');
INSERT INTO V_PAR
	VALUES (127,
	116,
	0,
	'message',
	0,
	4,
	14);
INSERT INTO V_VAL
	VALUES (129,
	0,
	0,
	6,
	10,
	12,
	0,
	0,
	0,
	0,
	79,
	112);
INSERT INTO V_TVL
	VALUES (129,
	123);
INSERT INTO V_VAL
	VALUES (122,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	79,
	112);
INSERT INTO V_UNY
	VALUES (122,
	129,
	'not');
INSERT INTO V_VAR
	VALUES (115,
	112,
	'gps',
	1,
	78);
INSERT INTO V_INT
	VALUES (115,
	0,
	61);
INSERT INTO V_VAR
	VALUES (123,
	112,
	'res',
	1,
	79);
INSERT INTO V_TRN
	VALUES (123,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (121,
	0,
	0,
	0,
	'LOG',
	'',
	'',
	7,
	3,
	7,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	111,
	0);
INSERT INTO ACT_SMT
	VALUES (130,
	121,
	0,
	7,
	3,
	'GPS::idle line: 7');
INSERT INTO ACT_BRG
	VALUES (130,
	131,
	7,
	8,
	7,
	3);
INSERT INTO V_VAL
	VALUES (132,
	0,
	0,
	7,
	29,
	70,
	0,
	0,
	0,
	0,
	128,
	121);
INSERT INTO V_LST
	VALUES (132,
	'Location listener: timer_cancel() failed.');
INSERT INTO V_PAR
	VALUES (132,
	130,
	0,
	'message',
	0,
	7,
	20);
INSERT INTO SM_STATE
	VALUES (133,
	106,
	0,
	'locating',
	2,
	0);
INSERT INTO SM_SEME
	VALUES (133,
	74,
	106,
	0);
INSERT INTO SM_CH
	VALUES (133,
	107,
	106,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (133,
	107,
	106,
	0);
INSERT INTO SM_SEME
	VALUES (133,
	108,
	106,
	0);
INSERT INTO SM_MOAH
	VALUES (134,
	106,
	133);
INSERT INTO SM_AH
	VALUES (134,
	106);
INSERT INTO SM_ACT
	VALUES (134,
	106,
	1,
	'// Simulate movement.
select any gps from instances of GPS;
if ( (gps.motionSegments % 3) == 0 )
  gps.currentLongitude = gps.currentLongitude + (longitudeIncrement * 2);
  gps.currentLatitude = gps.currentLatitude + latitudeIncrement;
elif ( (gps.motionSegments %5) == 0 )
  gps.currentLongitude = gps.currentLongitude + longitudeIncrement;
  gps.currentLatitude = gps.currentLatitude + (latitudeIncrement * 3);
else
  gps.currentLongitude = gps.currentLongitude + longitudeIncrement;
  gps.currentLatitude = gps.currentLatitude + latitudeIncrement;
end if;
',
	'');
INSERT INTO ACT_SAB
	VALUES (135,
	106,
	134);
INSERT INTO ACT_ACT
	VALUES (135,
	'class state',
	0,
	136,
	0,
	0,
	'GPS::locating',
	0);
INSERT INTO ACT_BLK
	VALUES (136,
	1,
	0,
	0,
	'',
	'',
	'',
	9,
	1,
	2,
	34,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	135,
	0);
INSERT INTO ACT_SMT
	VALUES (137,
	136,
	138,
	2,
	1,
	'GPS::locating line: 2');
INSERT INTO ACT_FIO
	VALUES (137,
	139,
	1,
	'any',
	61,
	2,
	34);
INSERT INTO ACT_SMT
	VALUES (138,
	136,
	0,
	3,
	1,
	'GPS::locating line: 3');
INSERT INTO ACT_IF
	VALUES (138,
	140,
	141,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (142,
	136,
	0,
	6,
	1,
	'GPS::locating line: 6');
INSERT INTO ACT_EL
	VALUES (142,
	143,
	144,
	138);
INSERT INTO ACT_SMT
	VALUES (145,
	136,
	0,
	9,
	1,
	'GPS::locating line: 9');
INSERT INTO ACT_E
	VALUES (145,
	146,
	138);
INSERT INTO V_VAL
	VALUES (147,
	0,
	0,
	3,
	7,
	9,
	0,
	0,
	0,
	0,
	78,
	136);
INSERT INTO V_IRF
	VALUES (147,
	139);
INSERT INTO V_VAL
	VALUES (148,
	0,
	0,
	3,
	11,
	24,
	0,
	0,
	0,
	0,
	26,
	136);
INSERT INTO V_AVL
	VALUES (148,
	147,
	61,
	99);
INSERT INTO V_VAL
	VALUES (149,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	26,
	136);
INSERT INTO V_BIN
	VALUES (149,
	150,
	148,
	'%');
INSERT INTO V_VAL
	VALUES (150,
	0,
	0,
	3,
	28,
	28,
	0,
	0,
	0,
	0,
	26,
	136);
INSERT INTO V_LIN
	VALUES (150,
	'3');
INSERT INTO V_VAL
	VALUES (141,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	79,
	136);
INSERT INTO V_BIN
	VALUES (141,
	151,
	149,
	'==');
INSERT INTO V_VAL
	VALUES (151,
	0,
	0,
	3,
	34,
	34,
	0,
	0,
	0,
	0,
	26,
	136);
INSERT INTO V_LIN
	VALUES (151,
	'0');
INSERT INTO V_VAL
	VALUES (152,
	0,
	0,
	6,
	9,
	11,
	0,
	0,
	0,
	0,
	78,
	136);
INSERT INTO V_IRF
	VALUES (152,
	139);
INSERT INTO V_VAL
	VALUES (153,
	0,
	0,
	6,
	13,
	26,
	0,
	0,
	0,
	0,
	26,
	136);
INSERT INTO V_AVL
	VALUES (153,
	152,
	61,
	99);
INSERT INTO V_VAL
	VALUES (154,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	26,
	136);
INSERT INTO V_BIN
	VALUES (154,
	155,
	153,
	'%');
INSERT INTO V_VAL
	VALUES (155,
	0,
	0,
	6,
	29,
	29,
	0,
	0,
	0,
	0,
	26,
	136);
INSERT INTO V_LIN
	VALUES (155,
	'5');
INSERT INTO V_VAL
	VALUES (144,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	79,
	136);
INSERT INTO V_BIN
	VALUES (144,
	156,
	154,
	'==');
INSERT INTO V_VAL
	VALUES (156,
	0,
	0,
	6,
	35,
	35,
	0,
	0,
	0,
	0,
	26,
	136);
INSERT INTO V_LIN
	VALUES (156,
	'0');
INSERT INTO V_VAR
	VALUES (139,
	136,
	'gps',
	1,
	78);
INSERT INTO V_INT
	VALUES (139,
	0,
	61);
INSERT INTO ACT_BLK
	VALUES (140,
	0,
	0,
	0,
	'',
	'',
	'',
	5,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	135,
	0);
INSERT INTO ACT_SMT
	VALUES (157,
	140,
	158,
	4,
	3,
	'GPS::locating line: 4');
INSERT INTO ACT_AI
	VALUES (157,
	159,
	160,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (158,
	140,
	0,
	5,
	3,
	'GPS::locating line: 5');
INSERT INTO ACT_AI
	VALUES (158,
	161,
	162,
	0,
	0);
INSERT INTO V_VAL
	VALUES (163,
	1,
	0,
	4,
	3,
	5,
	0,
	0,
	0,
	0,
	78,
	140);
INSERT INTO V_IRF
	VALUES (163,
	139);
INSERT INTO V_VAL
	VALUES (160,
	1,
	0,
	4,
	7,
	22,
	0,
	0,
	0,
	0,
	45,
	140);
INSERT INTO V_AVL
	VALUES (160,
	163,
	61,
	104);
INSERT INTO V_VAL
	VALUES (164,
	0,
	0,
	4,
	26,
	28,
	0,
	0,
	0,
	0,
	78,
	140);
INSERT INTO V_IRF
	VALUES (164,
	139);
INSERT INTO V_VAL
	VALUES (165,
	0,
	0,
	4,
	30,
	45,
	0,
	0,
	0,
	0,
	45,
	140);
INSERT INTO V_AVL
	VALUES (165,
	164,
	61,
	104);
INSERT INTO V_VAL
	VALUES (159,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	45,
	140);
INSERT INTO V_BIN
	VALUES (159,
	166,
	165,
	'+');
INSERT INTO V_VAL
	VALUES (167,
	0,
	0,
	4,
	50,
	67,
	0,
	0,
	0,
	0,
	45,
	140);
INSERT INTO V_SCV
	VALUES (167,
	168,
	45);
INSERT INTO V_VAL
	VALUES (166,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	45,
	140);
INSERT INTO V_BIN
	VALUES (166,
	169,
	167,
	'*');
INSERT INTO V_VAL
	VALUES (169,
	0,
	0,
	4,
	71,
	71,
	0,
	0,
	0,
	0,
	26,
	140);
INSERT INTO V_LIN
	VALUES (169,
	'2');
INSERT INTO V_VAL
	VALUES (170,
	1,
	0,
	5,
	3,
	5,
	0,
	0,
	0,
	0,
	78,
	140);
INSERT INTO V_IRF
	VALUES (170,
	139);
INSERT INTO V_VAL
	VALUES (162,
	1,
	0,
	5,
	7,
	21,
	0,
	0,
	0,
	0,
	45,
	140);
INSERT INTO V_AVL
	VALUES (162,
	170,
	61,
	101);
INSERT INTO V_VAL
	VALUES (171,
	0,
	0,
	5,
	25,
	27,
	0,
	0,
	0,
	0,
	78,
	140);
INSERT INTO V_IRF
	VALUES (171,
	139);
INSERT INTO V_VAL
	VALUES (172,
	0,
	0,
	5,
	29,
	43,
	0,
	0,
	0,
	0,
	45,
	140);
INSERT INTO V_AVL
	VALUES (172,
	171,
	61,
	101);
INSERT INTO V_VAL
	VALUES (161,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	45,
	140);
INSERT INTO V_BIN
	VALUES (161,
	173,
	172,
	'+');
INSERT INTO V_VAL
	VALUES (173,
	0,
	0,
	5,
	47,
	63,
	0,
	0,
	0,
	0,
	45,
	140);
INSERT INTO V_SCV
	VALUES (173,
	174,
	45);
INSERT INTO ACT_BLK
	VALUES (143,
	0,
	0,
	0,
	'',
	'',
	'',
	8,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	135,
	0);
INSERT INTO ACT_SMT
	VALUES (175,
	143,
	176,
	7,
	3,
	'GPS::locating line: 7');
INSERT INTO ACT_AI
	VALUES (175,
	177,
	178,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (176,
	143,
	0,
	8,
	3,
	'GPS::locating line: 8');
INSERT INTO ACT_AI
	VALUES (176,
	179,
	180,
	0,
	0);
INSERT INTO V_VAL
	VALUES (181,
	1,
	0,
	7,
	3,
	5,
	0,
	0,
	0,
	0,
	78,
	143);
INSERT INTO V_IRF
	VALUES (181,
	139);
INSERT INTO V_VAL
	VALUES (178,
	1,
	0,
	7,
	7,
	22,
	0,
	0,
	0,
	0,
	45,
	143);
INSERT INTO V_AVL
	VALUES (178,
	181,
	61,
	104);
INSERT INTO V_VAL
	VALUES (182,
	0,
	0,
	7,
	26,
	28,
	0,
	0,
	0,
	0,
	78,
	143);
INSERT INTO V_IRF
	VALUES (182,
	139);
INSERT INTO V_VAL
	VALUES (183,
	0,
	0,
	7,
	30,
	45,
	0,
	0,
	0,
	0,
	45,
	143);
INSERT INTO V_AVL
	VALUES (183,
	182,
	61,
	104);
INSERT INTO V_VAL
	VALUES (177,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	45,
	143);
INSERT INTO V_BIN
	VALUES (177,
	184,
	183,
	'+');
INSERT INTO V_VAL
	VALUES (184,
	0,
	0,
	7,
	49,
	66,
	0,
	0,
	0,
	0,
	45,
	143);
INSERT INTO V_SCV
	VALUES (184,
	168,
	45);
INSERT INTO V_VAL
	VALUES (185,
	1,
	0,
	8,
	3,
	5,
	0,
	0,
	0,
	0,
	78,
	143);
INSERT INTO V_IRF
	VALUES (185,
	139);
INSERT INTO V_VAL
	VALUES (180,
	1,
	0,
	8,
	7,
	21,
	0,
	0,
	0,
	0,
	45,
	143);
INSERT INTO V_AVL
	VALUES (180,
	185,
	61,
	101);
INSERT INTO V_VAL
	VALUES (186,
	0,
	0,
	8,
	25,
	27,
	0,
	0,
	0,
	0,
	78,
	143);
INSERT INTO V_IRF
	VALUES (186,
	139);
INSERT INTO V_VAL
	VALUES (187,
	0,
	0,
	8,
	29,
	43,
	0,
	0,
	0,
	0,
	45,
	143);
INSERT INTO V_AVL
	VALUES (187,
	186,
	61,
	101);
INSERT INTO V_VAL
	VALUES (179,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	45,
	143);
INSERT INTO V_BIN
	VALUES (179,
	188,
	187,
	'+');
INSERT INTO V_VAL
	VALUES (189,
	0,
	0,
	8,
	48,
	64,
	0,
	0,
	0,
	0,
	45,
	143);
INSERT INTO V_SCV
	VALUES (189,
	174,
	45);
INSERT INTO V_VAL
	VALUES (188,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	45,
	143);
INSERT INTO V_BIN
	VALUES (188,
	190,
	189,
	'*');
INSERT INTO V_VAL
	VALUES (190,
	0,
	0,
	8,
	68,
	68,
	0,
	0,
	0,
	0,
	26,
	143);
INSERT INTO V_LIN
	VALUES (190,
	'3');
INSERT INTO ACT_BLK
	VALUES (146,
	0,
	0,
	0,
	'',
	'',
	'',
	11,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	135,
	0);
INSERT INTO ACT_SMT
	VALUES (191,
	146,
	192,
	10,
	3,
	'GPS::locating line: 10');
INSERT INTO ACT_AI
	VALUES (191,
	193,
	194,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (192,
	146,
	0,
	11,
	3,
	'GPS::locating line: 11');
INSERT INTO ACT_AI
	VALUES (192,
	195,
	196,
	0,
	0);
INSERT INTO V_VAL
	VALUES (197,
	1,
	0,
	10,
	3,
	5,
	0,
	0,
	0,
	0,
	78,
	146);
INSERT INTO V_IRF
	VALUES (197,
	139);
INSERT INTO V_VAL
	VALUES (194,
	1,
	0,
	10,
	7,
	22,
	0,
	0,
	0,
	0,
	45,
	146);
INSERT INTO V_AVL
	VALUES (194,
	197,
	61,
	104);
INSERT INTO V_VAL
	VALUES (198,
	0,
	0,
	10,
	26,
	28,
	0,
	0,
	0,
	0,
	78,
	146);
INSERT INTO V_IRF
	VALUES (198,
	139);
INSERT INTO V_VAL
	VALUES (199,
	0,
	0,
	10,
	30,
	45,
	0,
	0,
	0,
	0,
	45,
	146);
INSERT INTO V_AVL
	VALUES (199,
	198,
	61,
	104);
INSERT INTO V_VAL
	VALUES (193,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	45,
	146);
INSERT INTO V_BIN
	VALUES (193,
	200,
	199,
	'+');
INSERT INTO V_VAL
	VALUES (200,
	0,
	0,
	10,
	49,
	66,
	0,
	0,
	0,
	0,
	45,
	146);
INSERT INTO V_SCV
	VALUES (200,
	168,
	45);
INSERT INTO V_VAL
	VALUES (201,
	1,
	0,
	11,
	3,
	5,
	0,
	0,
	0,
	0,
	78,
	146);
INSERT INTO V_IRF
	VALUES (201,
	139);
INSERT INTO V_VAL
	VALUES (196,
	1,
	0,
	11,
	7,
	21,
	0,
	0,
	0,
	0,
	45,
	146);
INSERT INTO V_AVL
	VALUES (196,
	201,
	61,
	101);
INSERT INTO V_VAL
	VALUES (202,
	0,
	0,
	11,
	25,
	27,
	0,
	0,
	0,
	0,
	78,
	146);
INSERT INTO V_IRF
	VALUES (202,
	139);
INSERT INTO V_VAL
	VALUES (203,
	0,
	0,
	11,
	29,
	43,
	0,
	0,
	0,
	0,
	45,
	146);
INSERT INTO V_AVL
	VALUES (203,
	202,
	61,
	101);
INSERT INTO V_VAL
	VALUES (195,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	45,
	146);
INSERT INTO V_BIN
	VALUES (195,
	204,
	203,
	'+');
INSERT INTO V_VAL
	VALUES (204,
	0,
	0,
	11,
	47,
	63,
	0,
	0,
	0,
	0,
	45,
	146);
INSERT INTO V_SCV
	VALUES (204,
	174,
	45);
INSERT INTO SM_NSTXN
	VALUES (205,
	106,
	109,
	107,
	0);
INSERT INTO SM_TAH
	VALUES (206,
	106,
	205);
INSERT INTO SM_AH
	VALUES (206,
	106);
INSERT INTO SM_ACT
	VALUES (206,
	106,
	1,
	'// Activate the simulated GPS.
GPS::activate();

LOG::LogInfo(message: "Location listener registered.");
',
	'');
INSERT INTO ACT_TAB
	VALUES (207,
	106,
	206);
INSERT INTO ACT_ACT
	VALUES (207,
	'class transition',
	0,
	208,
	0,
	0,
	'GPS_A2: registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (208,
	0,
	0,
	0,
	'LOG',
	'',
	'',
	4,
	1,
	4,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	207,
	0);
INSERT INTO ACT_SMT
	VALUES (209,
	208,
	210,
	2,
	1,
	'GPS_A2: registerListener line: 2');
INSERT INTO ACT_TFM
	VALUES (209,
	62,
	0,
	2,
	6,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (210,
	208,
	0,
	4,
	1,
	'GPS_A2: registerListener line: 4');
INSERT INTO ACT_BRG
	VALUES (210,
	120,
	4,
	6,
	4,
	1);
INSERT INTO V_VAL
	VALUES (211,
	0,
	0,
	4,
	23,
	52,
	0,
	0,
	0,
	0,
	128,
	208);
INSERT INTO V_LST
	VALUES (211,
	'Location listener registered.');
INSERT INTO V_PAR
	VALUES (211,
	210,
	0,
	'message',
	0,
	4,
	14);
INSERT INTO SM_TXN
	VALUES (205,
	106,
	133,
	0);
INSERT INTO SM_NSTXN
	VALUES (212,
	106,
	133,
	108,
	0);
INSERT INTO SM_TAH
	VALUES (213,
	106,
	212);
INSERT INTO SM_AH
	VALUES (213,
	106);
INSERT INTO SM_ACT
	VALUES (213,
	106,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (214,
	106,
	213);
INSERT INTO ACT_ACT
	VALUES (214,
	'class transition',
	0,
	215,
	0,
	0,
	'GPS_A3: unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (215,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	214,
	0);
INSERT INTO SM_TXN
	VALUES (212,
	106,
	109,
	0);
INSERT INTO SM_NSTXN
	VALUES (216,
	106,
	133,
	74,
	0);
INSERT INTO SM_TAH
	VALUES (217,
	106,
	216);
INSERT INTO SM_AH
	VALUES (217,
	106);
INSERT INTO SM_ACT
	VALUES (217,
	106,
	1,
	'// Increment simulated motion segment count.
select any gps from instances of GPS;
gps.motionSegments = gps.motionSegments + 1;
',
	'');
INSERT INTO ACT_TAB
	VALUES (218,
	106,
	217);
INSERT INTO ACT_ACT
	VALUES (218,
	'class transition',
	0,
	219,
	0,
	0,
	'GPS_A1: tick',
	0);
INSERT INTO ACT_BLK
	VALUES (219,
	1,
	0,
	0,
	'',
	'',
	'',
	3,
	1,
	2,
	34,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	218,
	0);
INSERT INTO ACT_SMT
	VALUES (220,
	219,
	221,
	2,
	1,
	'GPS_A1: tick line: 2');
INSERT INTO ACT_FIO
	VALUES (220,
	222,
	1,
	'any',
	61,
	2,
	34);
INSERT INTO ACT_SMT
	VALUES (221,
	219,
	0,
	3,
	1,
	'GPS_A1: tick line: 3');
INSERT INTO ACT_AI
	VALUES (221,
	223,
	224,
	0,
	0);
INSERT INTO V_VAL
	VALUES (225,
	1,
	0,
	3,
	1,
	3,
	0,
	0,
	0,
	0,
	78,
	219);
INSERT INTO V_IRF
	VALUES (225,
	222);
INSERT INTO V_VAL
	VALUES (224,
	1,
	0,
	3,
	5,
	18,
	0,
	0,
	0,
	0,
	26,
	219);
INSERT INTO V_AVL
	VALUES (224,
	225,
	61,
	99);
INSERT INTO V_VAL
	VALUES (226,
	0,
	0,
	3,
	22,
	24,
	0,
	0,
	0,
	0,
	78,
	219);
INSERT INTO V_IRF
	VALUES (226,
	222);
INSERT INTO V_VAL
	VALUES (227,
	0,
	0,
	3,
	26,
	39,
	0,
	0,
	0,
	0,
	26,
	219);
INSERT INTO V_AVL
	VALUES (227,
	226,
	61,
	99);
INSERT INTO V_VAL
	VALUES (223,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	26,
	219);
INSERT INTO V_BIN
	VALUES (223,
	228,
	227,
	'+');
INSERT INTO V_VAL
	VALUES (228,
	0,
	0,
	3,
	43,
	43,
	0,
	0,
	0,
	0,
	26,
	219);
INSERT INTO V_LIN
	VALUES (228,
	'1');
INSERT INTO V_VAR
	VALUES (222,
	219,
	'gps',
	1,
	78);
INSERT INTO V_INT
	VALUES (222,
	0,
	61);
INSERT INTO SM_TXN
	VALUES (216,
	106,
	133,
	0);
INSERT INTO PE_PE
	VALUES (229,
	1,
	60,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (229,
	'simulatedGPS',
	'Constants specifying the behavior of the simulated GPS.

initialLatitude and initialLongitude specify, as decimal degrees, 
the initial location of the simulated GPS.

latitudeIncrement and longitudeIncrement specify, as decimal degrees, 
the distance the simulated GPS moves during each update period.

updatePeriod specifies, in microseconds, the update period for the
simulated GPS.  In other words, the simulated GPS updates its location
once per updatePeriod.');
INSERT INTO CNST_SYC
	VALUES (168,
	'longitudeIncrement',
	'',
	45,
	229,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (168,
	45);
INSERT INTO CNST_LSC
	VALUES (168,
	45,
	'0.00002');
INSERT INTO CNST_SYC
	VALUES (174,
	'latitudeIncrement',
	'',
	45,
	229,
	168,
	45);
INSERT INTO CNST_LFSC
	VALUES (174,
	45);
INSERT INTO CNST_LSC
	VALUES (174,
	45,
	'0.00001');
INSERT INTO CNST_SYC
	VALUES (102,
	'initialLatitude',
	'',
	45,
	229,
	174,
	45);
INSERT INTO CNST_LFSC
	VALUES (102,
	45);
INSERT INTO CNST_LSC
	VALUES (102,
	45,
	'32.432237');
INSERT INTO CNST_SYC
	VALUES (105,
	'initialLongitude',
	'',
	45,
	229,
	102,
	45);
INSERT INTO CNST_LFSC
	VALUES (105,
	45);
INSERT INTO CNST_LSC
	VALUES (105,
	45,
	'-110.812283');
INSERT INTO CNST_SYC
	VALUES (87,
	'updatePeriod',
	'',
	26,
	229,
	105,
	45);
INSERT INTO CNST_LFSC
	VALUES (87,
	26);
INSERT INTO CNST_LSC
	VALUES (87,
	26,
	'1000000');
INSERT INTO PE_PE
	VALUES (230,
	1,
	60,
	0,
	5);
INSERT INTO S_EE
	VALUES (230,
	'Math',
	'',
	'MATH',
	0,
	'',
	'Math',
	1);
INSERT INTO S_BRG
	VALUES (46,
	230,
	'sqrt',
	'',
	0,
	45,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (231,
	46,
	'x',
	45,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (232,
	46);
INSERT INTO ACT_ACT
	VALUES (232,
	'bridge',
	0,
	233,
	0,
	0,
	'Math::sqrt',
	0);
INSERT INTO ACT_BLK
	VALUES (233,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	232,
	0);
INSERT INTO PE_PE
	VALUES (234,
	1,
	60,
	0,
	5);
INSERT INTO S_EE
	VALUES (234,
	'Logging',
	'',
	'LOG',
	0,
	'',
	'Logging',
	1);
INSERT INTO S_BRG
	VALUES (235,
	234,
	'LogSuccess',
	'',
	0,
	63,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (236,
	235,
	'message',
	128,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (237,
	235);
INSERT INTO ACT_ACT
	VALUES (237,
	'bridge',
	0,
	238,
	0,
	0,
	'Logging::LogSuccess',
	0);
INSERT INTO ACT_BLK
	VALUES (238,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	237,
	0);
INSERT INTO S_BRG
	VALUES (131,
	234,
	'LogFailure',
	'',
	0,
	63,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (239,
	131,
	'message',
	128,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (240,
	131);
INSERT INTO ACT_ACT
	VALUES (240,
	'bridge',
	0,
	241,
	0,
	0,
	'Logging::LogFailure',
	0);
INSERT INTO ACT_BLK
	VALUES (241,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	240,
	0);
INSERT INTO S_BRG
	VALUES (120,
	234,
	'LogInfo',
	'',
	0,
	63,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (242,
	120,
	'message',
	128,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (243,
	120);
INSERT INTO ACT_ACT
	VALUES (243,
	'bridge',
	0,
	244,
	0,
	0,
	'Logging::LogInfo',
	0);
INSERT INTO ACT_BLK
	VALUES (244,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	243,
	0);
INSERT INTO S_BRG
	VALUES (245,
	234,
	'LogDate',
	'',
	0,
	63,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (246,
	245,
	'd',
	247,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (248,
	245,
	'message',
	128,
	0,
	'',
	246,
	'');
INSERT INTO ACT_BRB
	VALUES (249,
	245);
INSERT INTO ACT_ACT
	VALUES (249,
	'bridge',
	0,
	250,
	0,
	0,
	'Logging::LogDate',
	0);
INSERT INTO ACT_BLK
	VALUES (250,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	249,
	0);
INSERT INTO S_BRG
	VALUES (251,
	234,
	'LogTime',
	'',
	0,
	63,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (252,
	251,
	't',
	253,
	0,
	'',
	254,
	'');
INSERT INTO S_BPARM
	VALUES (254,
	251,
	'message',
	128,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (255,
	251);
INSERT INTO ACT_ACT
	VALUES (255,
	'bridge',
	0,
	256,
	0,
	0,
	'Logging::LogTime',
	0);
INSERT INTO ACT_BLK
	VALUES (256,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	255,
	0);
INSERT INTO S_BRG
	VALUES (257,
	234,
	'LogReal',
	'',
	0,
	63,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (258,
	257,
	'r',
	45,
	0,
	'',
	259,
	'');
INSERT INTO S_BPARM
	VALUES (259,
	257,
	'message',
	128,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (260,
	257);
INSERT INTO ACT_ACT
	VALUES (260,
	'bridge',
	0,
	261,
	0,
	0,
	'Logging::LogReal',
	0);
INSERT INTO ACT_BLK
	VALUES (261,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	260,
	0);
INSERT INTO S_BRG
	VALUES (262,
	234,
	'LogInteger',
	'',
	0,
	63,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (263,
	262,
	'message',
	26,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (264,
	262);
INSERT INTO ACT_ACT
	VALUES (264,
	'bridge',
	0,
	265,
	0,
	0,
	'Logging::LogInteger',
	0);
INSERT INTO ACT_BLK
	VALUES (265,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	264,
	0);
INSERT INTO PE_PE
	VALUES (266,
	1,
	60,
	0,
	5);
INSERT INTO S_EE
	VALUES (266,
	'Time',
	'The Time external entity provides date, timestamp, and timer related operations.',
	'TIM',
	0,
	'',
	'Time',
	1);
INSERT INTO S_BRG
	VALUES (267,
	266,
	'current_date',
	'',
	1,
	247,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (268,
	267);
INSERT INTO ACT_ACT
	VALUES (268,
	'bridge',
	0,
	269,
	0,
	0,
	'Time::current_date',
	0);
INSERT INTO ACT_BLK
	VALUES (269,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	268,
	0);
INSERT INTO S_BRG
	VALUES (270,
	266,
	'create_date',
	'',
	1,
	247,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (271,
	270,
	'second',
	26,
	0,
	'',
	272,
	'');
INSERT INTO S_BPARM
	VALUES (273,
	270,
	'minute',
	26,
	0,
	'',
	274,
	'');
INSERT INTO S_BPARM
	VALUES (274,
	270,
	'hour',
	26,
	0,
	'',
	275,
	'');
INSERT INTO S_BPARM
	VALUES (275,
	270,
	'day',
	26,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (272,
	270,
	'month',
	26,
	0,
	'',
	273,
	'');
INSERT INTO S_BPARM
	VALUES (276,
	270,
	'year',
	26,
	0,
	'',
	271,
	'');
INSERT INTO ACT_BRB
	VALUES (277,
	270);
INSERT INTO ACT_ACT
	VALUES (277,
	'bridge',
	0,
	278,
	0,
	0,
	'Time::create_date',
	0);
INSERT INTO ACT_BLK
	VALUES (278,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	277,
	0);
INSERT INTO S_BRG
	VALUES (279,
	266,
	'get_second',
	'',
	1,
	26,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (280,
	279,
	'date',
	247,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (281,
	279);
INSERT INTO ACT_ACT
	VALUES (281,
	'bridge',
	0,
	282,
	0,
	0,
	'Time::get_second',
	0);
INSERT INTO ACT_BLK
	VALUES (282,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	281,
	0);
INSERT INTO S_BRG
	VALUES (283,
	266,
	'get_minute',
	'',
	1,
	26,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (284,
	283,
	'date',
	247,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (285,
	283);
INSERT INTO ACT_ACT
	VALUES (285,
	'bridge',
	0,
	286,
	0,
	0,
	'Time::get_minute',
	0);
INSERT INTO ACT_BLK
	VALUES (286,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	285,
	0);
INSERT INTO S_BRG
	VALUES (287,
	266,
	'get_hour',
	'',
	1,
	26,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (288,
	287,
	'date',
	247,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (289,
	287);
INSERT INTO ACT_ACT
	VALUES (289,
	'bridge',
	0,
	290,
	0,
	0,
	'Time::get_hour',
	0);
INSERT INTO ACT_BLK
	VALUES (290,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	289,
	0);
INSERT INTO S_BRG
	VALUES (291,
	266,
	'get_day',
	'',
	1,
	26,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (292,
	291,
	'date',
	247,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (293,
	291);
INSERT INTO ACT_ACT
	VALUES (293,
	'bridge',
	0,
	294,
	0,
	0,
	'Time::get_day',
	0);
INSERT INTO ACT_BLK
	VALUES (294,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	293,
	0);
INSERT INTO S_BRG
	VALUES (295,
	266,
	'get_month',
	'',
	1,
	26,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (296,
	295,
	'date',
	247,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (297,
	295);
INSERT INTO ACT_ACT
	VALUES (297,
	'bridge',
	0,
	298,
	0,
	0,
	'Time::get_month',
	0);
INSERT INTO ACT_BLK
	VALUES (298,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	297,
	0);
INSERT INTO S_BRG
	VALUES (299,
	266,
	'get_year',
	'',
	1,
	26,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (300,
	299,
	'date',
	247,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (301,
	299);
INSERT INTO ACT_ACT
	VALUES (301,
	'bridge',
	0,
	302,
	0,
	0,
	'Time::get_year',
	0);
INSERT INTO ACT_BLK
	VALUES (302,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	301,
	0);
INSERT INTO S_BRG
	VALUES (303,
	266,
	'current_clock',
	'',
	1,
	253,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (304,
	303);
INSERT INTO ACT_ACT
	VALUES (304,
	'bridge',
	0,
	305,
	0,
	0,
	'Time::current_clock',
	0);
INSERT INTO ACT_BLK
	VALUES (305,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	304,
	0);
INSERT INTO S_BRG
	VALUES (306,
	266,
	'timer_start',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Returns the instance
handle of the timer.',
	1,
	81,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (307,
	306,
	'microseconds',
	26,
	0,
	'',
	308,
	'');
INSERT INTO S_BPARM
	VALUES (308,
	306,
	'event_inst',
	85,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (309,
	306);
INSERT INTO ACT_ACT
	VALUES (309,
	'bridge',
	0,
	310,
	0,
	0,
	'Time::timer_start',
	0);
INSERT INTO ACT_BLK
	VALUES (310,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	309,
	0);
INSERT INTO S_BRG
	VALUES (83,
	266,
	'timer_start_recurring',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Upon expiration, the
timer will be restarted and fire again in the specified number of microseconds
generating the passed event. This bridge operation returns the instance handle
of the timer.',
	1,
	81,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (311,
	83,
	'microseconds',
	26,
	0,
	'',
	312,
	'');
INSERT INTO S_BPARM
	VALUES (312,
	83,
	'event_inst',
	85,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (313,
	83);
INSERT INTO ACT_ACT
	VALUES (313,
	'bridge',
	0,
	314,
	0,
	0,
	'Time::timer_start_recurring',
	0);
INSERT INTO ACT_BLK
	VALUES (314,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	313,
	0);
INSERT INTO S_BRG
	VALUES (315,
	266,
	'timer_remaining_time',
	'Returns the time remaining (in microseconds) for the passed timer instance. If
the timer has expired, a zero value is returned.',
	1,
	26,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (316,
	315,
	'timer_inst_ref',
	81,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (317,
	315);
INSERT INTO ACT_ACT
	VALUES (317,
	'bridge',
	0,
	318,
	0,
	0,
	'Time::timer_remaining_time',
	0);
INSERT INTO ACT_BLK
	VALUES (318,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	317,
	0);
INSERT INTO S_BRG
	VALUES (319,
	266,
	'timer_reset_time',
	'This bridge operation attempts to set the passed existing timer to expire in
the specified number of microseconds. If the timer exists (that is, it has not
expired), a TRUE value is returned. If the timer no longer exists, a FALSE value
is returned.',
	1,
	79,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (320,
	319,
	'timer_inst_ref',
	81,
	0,
	'',
	321,
	'');
INSERT INTO S_BPARM
	VALUES (321,
	319,
	'microseconds',
	26,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (322,
	319);
INSERT INTO ACT_ACT
	VALUES (322,
	'bridge',
	0,
	323,
	0,
	0,
	'Time::timer_reset_time',
	0);
INSERT INTO ACT_BLK
	VALUES (323,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	322,
	0);
INSERT INTO S_BRG
	VALUES (324,
	266,
	'timer_add_time',
	'This bridge operation attempts to add the specified number of microseconds to a
passed existing timer. If the timer exists (that is, it has not expired), a TRUE
value is returned. If the timer no longer exists, a FALSE value is returned.',
	1,
	79,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (325,
	324,
	'timer_inst_ref',
	81,
	0,
	'',
	326,
	'');
INSERT INTO S_BPARM
	VALUES (326,
	324,
	'microseconds',
	26,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (327,
	324);
INSERT INTO ACT_ACT
	VALUES (327,
	'bridge',
	0,
	328,
	0,
	0,
	'Time::timer_add_time',
	0);
INSERT INTO ACT_BLK
	VALUES (328,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	327,
	0);
INSERT INTO S_BRG
	VALUES (124,
	266,
	'timer_cancel',
	'This bridge operation cancels and deletes the passed timer instance. If the 
timer exists (that is, it had not expired), a TRUE value is returned. If the
timer no longer exists, a FALSE value is returned.',
	1,
	79,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (329,
	124,
	'timer_inst_ref',
	81,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (330,
	124);
INSERT INTO ACT_ACT
	VALUES (330,
	'bridge',
	0,
	331,
	0,
	0,
	'Time::timer_cancel',
	0);
INSERT INTO ACT_BLK
	VALUES (331,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	330,
	0);
INSERT INTO PE_PE
	VALUES (332,
	1,
	2,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (332,
	0,
	1,
	'shared',
	'',
	0);
INSERT INTO PE_PE
	VALUES (6,
	1,
	332,
	0,
	6);
INSERT INTO C_I
	VALUES (6,
	0,
	'Location',
	'');
INSERT INTO C_EP
	VALUES (8,
	6,
	-1,
	'getLocation',
	'');
INSERT INTO C_IO
	VALUES (8,
	63,
	'getLocation',
	'',
	0,
	'',
	12);
INSERT INTO C_PP
	VALUES (333,
	8,
	26,
	'latitude',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (334,
	8,
	26,
	'longitude',
	'',
	0,
	'',
	333);
INSERT INTO C_EP
	VALUES (12,
	6,
	-1,
	'getDistance',
	'');
INSERT INTO C_IO
	VALUES (12,
	45,
	'getDistance',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (29,
	12,
	26,
	'toLat',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (31,
	12,
	26,
	'fromLat',
	'',
	0,
	'',
	29);
INSERT INTO C_PP
	VALUES (34,
	12,
	26,
	'toLong',
	'',
	0,
	'',
	31);
INSERT INTO C_PP
	VALUES (36,
	12,
	26,
	'fromLong',
	'',
	0,
	'',
	34);
INSERT INTO C_EP
	VALUES (53,
	6,
	-1,
	'registerListener',
	'');
INSERT INTO C_IO
	VALUES (53,
	63,
	'registerListener',
	'',
	0,
	'',
	8);
INSERT INTO C_EP
	VALUES (57,
	6,
	-1,
	'unregisterListener',
	'');
INSERT INTO C_IO
	VALUES (57,
	63,
	'unregisterListener',
	'',
	0,
	'',
	53);
INSERT INTO PE_PE
	VALUES (335,
	1,
	332,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (335,
	'Distance',
	'kmPerDegree is a rough conversion figure valid for most latitude figures (except where 
the irregular shape of the earth perturbs the value) and for longitude figures
away from the poles (where the distance between longitude lines decreases to zero).

latitudeIncrement and longitudeIncrement specify the distance traveled by the simulated
GPS during each interval.');
INSERT INTO CNST_SYC
	VALUES (50,
	'kmPerDegree',
	'',
	45,
	335,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (50,
	45);
INSERT INTO CNST_LSC
	VALUES (50,
	45,
	'111.32');
INSERT INTO PE_PE
	VALUES (336,
	1,
	332,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (336,
	'Speed',
	'SpeedAveragingWindow is the number of track points used to calculate the current average speed.
SecondsPerHour is the number of seconds in one hour.');
INSERT INTO CNST_SYC
	VALUES (337,
	'SecondsPerHour',
	'',
	26,
	336,
	338,
	26);
INSERT INTO CNST_LFSC
	VALUES (337,
	26);
INSERT INTO CNST_LSC
	VALUES (337,
	26,
	'3600');
INSERT INTO CNST_SYC
	VALUES (338,
	'SpeedAveragingWindow',
	'',
	26,
	336,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (338,
	26);
INSERT INTO CNST_LSC
	VALUES (338,
	26,
	'5');
INSERT INTO PE_PE
	VALUES (63,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (63,
	0,
	'void',
	'',
	'');
INSERT INTO S_CDT
	VALUES (63,
	0);
INSERT INTO PE_PE
	VALUES (79,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (79,
	0,
	'boolean',
	'',
	'');
INSERT INTO S_CDT
	VALUES (79,
	1);
INSERT INTO PE_PE
	VALUES (26,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (26,
	0,
	'integer',
	'',
	'');
INSERT INTO S_CDT
	VALUES (26,
	2);
INSERT INTO PE_PE
	VALUES (45,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (45,
	0,
	'real',
	'',
	'');
INSERT INTO S_CDT
	VALUES (45,
	3);
INSERT INTO PE_PE
	VALUES (128,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (128,
	0,
	'string',
	'',
	'');
INSERT INTO S_CDT
	VALUES (128,
	4);
INSERT INTO PE_PE
	VALUES (339,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (339,
	0,
	'unique_id',
	'',
	'');
INSERT INTO S_CDT
	VALUES (339,
	5);
INSERT INTO PE_PE
	VALUES (340,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (340,
	0,
	'state<State_Model>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (340,
	6);
INSERT INTO PE_PE
	VALUES (341,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (341,
	0,
	'same_as<Base_Attribute>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (341,
	7);
INSERT INTO PE_PE
	VALUES (78,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (78,
	0,
	'inst_ref<Object>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (78,
	8);
INSERT INTO PE_PE
	VALUES (342,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (342,
	0,
	'inst_ref_set<Object>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (342,
	9);
INSERT INTO PE_PE
	VALUES (85,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (85,
	0,
	'inst<Event>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (85,
	10);
INSERT INTO PE_PE
	VALUES (343,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (343,
	0,
	'inst<Mapping>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (343,
	11);
INSERT INTO PE_PE
	VALUES (344,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (344,
	0,
	'inst_ref<Mapping>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (344,
	12);
INSERT INTO PE_PE
	VALUES (345,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (345,
	0,
	'component_ref',
	'',
	'');
INSERT INTO S_CDT
	VALUES (345,
	13);
INSERT INTO PE_PE
	VALUES (247,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (247,
	0,
	'date',
	'',
	'');
INSERT INTO S_UDT
	VALUES (247,
	343,
	1);
INSERT INTO PE_PE
	VALUES (81,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (81,
	0,
	'inst_ref<Timer>',
	'',
	'');
INSERT INTO S_UDT
	VALUES (81,
	344,
	3);
INSERT INTO PE_PE
	VALUES (253,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (253,
	0,
	'timestamp',
	'',
	'');
INSERT INTO S_UDT
	VALUES (253,
	343,
	2);
