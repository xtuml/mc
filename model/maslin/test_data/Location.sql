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
	10);
INSERT INTO CNST_CSP
	VALUES (61,
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
	VALUES (62,
	'longitudeIncrement',
	'',
	45,
	61,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (62,
	45);
INSERT INTO CNST_LSC
	VALUES (62,
	45,
	'0.00002');
INSERT INTO CNST_SYC
	VALUES (63,
	'latitudeIncrement',
	'',
	45,
	61,
	62,
	45);
INSERT INTO CNST_LFSC
	VALUES (63,
	45);
INSERT INTO CNST_LSC
	VALUES (63,
	45,
	'0.00001');
INSERT INTO CNST_SYC
	VALUES (64,
	'initialLatitude',
	'',
	45,
	61,
	63,
	45);
INSERT INTO CNST_LFSC
	VALUES (64,
	45);
INSERT INTO CNST_LSC
	VALUES (64,
	45,
	'32.432237');
INSERT INTO CNST_SYC
	VALUES (65,
	'initialLongitude',
	'',
	45,
	61,
	64,
	45);
INSERT INTO CNST_LFSC
	VALUES (65,
	45);
INSERT INTO CNST_LSC
	VALUES (65,
	45,
	'-110.812283');
INSERT INTO CNST_SYC
	VALUES (66,
	'updatePeriod',
	'',
	26,
	61,
	65,
	45);
INSERT INTO CNST_LFSC
	VALUES (66,
	26);
INSERT INTO CNST_LSC
	VALUES (66,
	26,
	'1000000');
INSERT INTO PE_PE
	VALUES (67,
	1,
	60,
	0,
	5);
INSERT INTO S_EE
	VALUES (67,
	'Math',
	'',
	'MATH',
	0,
	'',
	'Math',
	1);
INSERT INTO S_BRG
	VALUES (46,
	67,
	'sqrt',
	'',
	0,
	45,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (68,
	46,
	'x',
	45,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (69,
	46);
INSERT INTO ACT_ACT
	VALUES (69,
	'bridge',
	0,
	70,
	0,
	0,
	'Math::sqrt',
	0);
INSERT INTO ACT_BLK
	VALUES (70,
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
	69,
	0);
INSERT INTO PE_PE
	VALUES (71,
	1,
	60,
	0,
	5);
INSERT INTO S_EE
	VALUES (71,
	'Logging',
	'',
	'LOG',
	0,
	'',
	'Logging',
	1);
INSERT INTO S_BRG
	VALUES (72,
	71,
	'LogSuccess',
	'',
	0,
	73,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (74,
	72,
	'message',
	75,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (76,
	72);
INSERT INTO ACT_ACT
	VALUES (76,
	'bridge',
	0,
	77,
	0,
	0,
	'Logging::LogSuccess',
	0);
INSERT INTO ACT_BLK
	VALUES (77,
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
	76,
	0);
INSERT INTO S_BRG
	VALUES (78,
	71,
	'LogFailure',
	'',
	0,
	73,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (79,
	78,
	'message',
	75,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (80,
	78);
INSERT INTO ACT_ACT
	VALUES (80,
	'bridge',
	0,
	81,
	0,
	0,
	'Logging::LogFailure',
	0);
INSERT INTO ACT_BLK
	VALUES (81,
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
	80,
	0);
INSERT INTO S_BRG
	VALUES (82,
	71,
	'LogInfo',
	'',
	0,
	73,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (83,
	82,
	'message',
	75,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (84,
	82);
INSERT INTO ACT_ACT
	VALUES (84,
	'bridge',
	0,
	85,
	0,
	0,
	'Logging::LogInfo',
	0);
INSERT INTO ACT_BLK
	VALUES (85,
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
	84,
	0);
INSERT INTO S_BRG
	VALUES (86,
	71,
	'LogDate',
	'',
	0,
	73,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (87,
	86,
	'd',
	88,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (89,
	86,
	'message',
	75,
	0,
	'',
	87,
	'');
INSERT INTO ACT_BRB
	VALUES (90,
	86);
INSERT INTO ACT_ACT
	VALUES (90,
	'bridge',
	0,
	91,
	0,
	0,
	'Logging::LogDate',
	0);
INSERT INTO ACT_BLK
	VALUES (91,
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
	90,
	0);
INSERT INTO S_BRG
	VALUES (92,
	71,
	'LogTime',
	'',
	0,
	73,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (93,
	92,
	't',
	94,
	0,
	'',
	95,
	'');
INSERT INTO S_BPARM
	VALUES (95,
	92,
	'message',
	75,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (96,
	92);
INSERT INTO ACT_ACT
	VALUES (96,
	'bridge',
	0,
	97,
	0,
	0,
	'Logging::LogTime',
	0);
INSERT INTO ACT_BLK
	VALUES (97,
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
	96,
	0);
INSERT INTO S_BRG
	VALUES (98,
	71,
	'LogReal',
	'',
	0,
	73,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (99,
	98,
	'r',
	45,
	0,
	'',
	100,
	'');
INSERT INTO S_BPARM
	VALUES (100,
	98,
	'message',
	75,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (101,
	98);
INSERT INTO ACT_ACT
	VALUES (101,
	'bridge',
	0,
	102,
	0,
	0,
	'Logging::LogReal',
	0);
INSERT INTO ACT_BLK
	VALUES (102,
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
	101,
	0);
INSERT INTO S_BRG
	VALUES (103,
	71,
	'LogInteger',
	'',
	0,
	73,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (104,
	103,
	'message',
	26,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (105,
	103);
INSERT INTO ACT_ACT
	VALUES (105,
	'bridge',
	0,
	106,
	0,
	0,
	'Logging::LogInteger',
	0);
INSERT INTO ACT_BLK
	VALUES (106,
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
	105,
	0);
INSERT INTO PE_PE
	VALUES (107,
	1,
	60,
	0,
	5);
INSERT INTO S_EE
	VALUES (107,
	'Time',
	'The Time external entity provides date, timestamp, and timer related operations.',
	'TIM',
	0,
	'',
	'Time',
	1);
INSERT INTO S_BRG
	VALUES (108,
	107,
	'current_date',
	'',
	1,
	88,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (109,
	108);
INSERT INTO ACT_ACT
	VALUES (109,
	'bridge',
	0,
	110,
	0,
	0,
	'Time::current_date',
	0);
INSERT INTO ACT_BLK
	VALUES (110,
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
	109,
	0);
INSERT INTO S_BRG
	VALUES (111,
	107,
	'create_date',
	'',
	1,
	88,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (112,
	111,
	'second',
	26,
	0,
	'',
	113,
	'');
INSERT INTO S_BPARM
	VALUES (114,
	111,
	'minute',
	26,
	0,
	'',
	115,
	'');
INSERT INTO S_BPARM
	VALUES (115,
	111,
	'hour',
	26,
	0,
	'',
	116,
	'');
INSERT INTO S_BPARM
	VALUES (116,
	111,
	'day',
	26,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (113,
	111,
	'month',
	26,
	0,
	'',
	114,
	'');
INSERT INTO S_BPARM
	VALUES (117,
	111,
	'year',
	26,
	0,
	'',
	112,
	'');
INSERT INTO ACT_BRB
	VALUES (118,
	111);
INSERT INTO ACT_ACT
	VALUES (118,
	'bridge',
	0,
	119,
	0,
	0,
	'Time::create_date',
	0);
INSERT INTO ACT_BLK
	VALUES (119,
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
	118,
	0);
INSERT INTO S_BRG
	VALUES (120,
	107,
	'get_second',
	'',
	1,
	26,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (121,
	120,
	'date',
	88,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (122,
	120);
INSERT INTO ACT_ACT
	VALUES (122,
	'bridge',
	0,
	123,
	0,
	0,
	'Time::get_second',
	0);
INSERT INTO ACT_BLK
	VALUES (123,
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
	122,
	0);
INSERT INTO S_BRG
	VALUES (124,
	107,
	'get_minute',
	'',
	1,
	26,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (125,
	124,
	'date',
	88,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (126,
	124);
INSERT INTO ACT_ACT
	VALUES (126,
	'bridge',
	0,
	127,
	0,
	0,
	'Time::get_minute',
	0);
INSERT INTO ACT_BLK
	VALUES (127,
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
	126,
	0);
INSERT INTO S_BRG
	VALUES (128,
	107,
	'get_hour',
	'',
	1,
	26,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (129,
	128,
	'date',
	88,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (130,
	128);
INSERT INTO ACT_ACT
	VALUES (130,
	'bridge',
	0,
	131,
	0,
	0,
	'Time::get_hour',
	0);
INSERT INTO ACT_BLK
	VALUES (131,
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
	130,
	0);
INSERT INTO S_BRG
	VALUES (132,
	107,
	'get_day',
	'',
	1,
	26,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (133,
	132,
	'date',
	88,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (134,
	132);
INSERT INTO ACT_ACT
	VALUES (134,
	'bridge',
	0,
	135,
	0,
	0,
	'Time::get_day',
	0);
INSERT INTO ACT_BLK
	VALUES (135,
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
	134,
	0);
INSERT INTO S_BRG
	VALUES (136,
	107,
	'get_month',
	'',
	1,
	26,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (137,
	136,
	'date',
	88,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (138,
	136);
INSERT INTO ACT_ACT
	VALUES (138,
	'bridge',
	0,
	139,
	0,
	0,
	'Time::get_month',
	0);
INSERT INTO ACT_BLK
	VALUES (139,
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
	138,
	0);
INSERT INTO S_BRG
	VALUES (140,
	107,
	'get_year',
	'',
	1,
	26,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (141,
	140,
	'date',
	88,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (142,
	140);
INSERT INTO ACT_ACT
	VALUES (142,
	'bridge',
	0,
	143,
	0,
	0,
	'Time::get_year',
	0);
INSERT INTO ACT_BLK
	VALUES (143,
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
	142,
	0);
INSERT INTO S_BRG
	VALUES (144,
	107,
	'current_clock',
	'',
	1,
	94,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (145,
	144);
INSERT INTO ACT_ACT
	VALUES (145,
	'bridge',
	0,
	146,
	0,
	0,
	'Time::current_clock',
	0);
INSERT INTO ACT_BLK
	VALUES (146,
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
	145,
	0);
INSERT INTO S_BRG
	VALUES (147,
	107,
	'timer_start',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Returns the instance
handle of the timer.',
	1,
	148,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (149,
	147,
	'microseconds',
	26,
	0,
	'',
	150,
	'');
INSERT INTO S_BPARM
	VALUES (150,
	147,
	'event_inst',
	151,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (152,
	147);
INSERT INTO ACT_ACT
	VALUES (152,
	'bridge',
	0,
	153,
	0,
	0,
	'Time::timer_start',
	0);
INSERT INTO ACT_BLK
	VALUES (153,
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
	152,
	0);
INSERT INTO S_BRG
	VALUES (154,
	107,
	'timer_start_recurring',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Upon expiration, the
timer will be restarted and fire again in the specified number of microseconds
generating the passed event. This bridge operation returns the instance handle
of the timer.',
	1,
	148,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (155,
	154,
	'microseconds',
	26,
	0,
	'',
	156,
	'');
INSERT INTO S_BPARM
	VALUES (156,
	154,
	'event_inst',
	151,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (157,
	154);
INSERT INTO ACT_ACT
	VALUES (157,
	'bridge',
	0,
	158,
	0,
	0,
	'Time::timer_start_recurring',
	0);
INSERT INTO ACT_BLK
	VALUES (158,
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
	157,
	0);
INSERT INTO S_BRG
	VALUES (159,
	107,
	'timer_remaining_time',
	'Returns the time remaining (in microseconds) for the passed timer instance. If
the timer has expired, a zero value is returned.',
	1,
	26,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (160,
	159,
	'timer_inst_ref',
	148,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (161,
	159);
INSERT INTO ACT_ACT
	VALUES (161,
	'bridge',
	0,
	162,
	0,
	0,
	'Time::timer_remaining_time',
	0);
INSERT INTO ACT_BLK
	VALUES (162,
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
	161,
	0);
INSERT INTO S_BRG
	VALUES (163,
	107,
	'timer_reset_time',
	'This bridge operation attempts to set the passed existing timer to expire in
the specified number of microseconds. If the timer exists (that is, it has not
expired), a TRUE value is returned. If the timer no longer exists, a FALSE value
is returned.',
	1,
	164,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (165,
	163,
	'timer_inst_ref',
	148,
	0,
	'',
	166,
	'');
INSERT INTO S_BPARM
	VALUES (166,
	163,
	'microseconds',
	26,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (167,
	163);
INSERT INTO ACT_ACT
	VALUES (167,
	'bridge',
	0,
	168,
	0,
	0,
	'Time::timer_reset_time',
	0);
INSERT INTO ACT_BLK
	VALUES (168,
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
	167,
	0);
INSERT INTO S_BRG
	VALUES (169,
	107,
	'timer_add_time',
	'This bridge operation attempts to add the specified number of microseconds to a
passed existing timer. If the timer exists (that is, it has not expired), a TRUE
value is returned. If the timer no longer exists, a FALSE value is returned.',
	1,
	164,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (170,
	169,
	'timer_inst_ref',
	148,
	0,
	'',
	171,
	'');
INSERT INTO S_BPARM
	VALUES (171,
	169,
	'microseconds',
	26,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (172,
	169);
INSERT INTO ACT_ACT
	VALUES (172,
	'bridge',
	0,
	173,
	0,
	0,
	'Time::timer_add_time',
	0);
INSERT INTO ACT_BLK
	VALUES (173,
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
	172,
	0);
INSERT INTO S_BRG
	VALUES (174,
	107,
	'timer_cancel',
	'This bridge operation cancels and deletes the passed timer instance. If the 
timer exists (that is, it had not expired), a TRUE value is returned. If the
timer no longer exists, a FALSE value is returned.',
	1,
	164,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (175,
	174,
	'timer_inst_ref',
	148,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (176,
	174);
INSERT INTO ACT_ACT
	VALUES (176,
	'bridge',
	0,
	177,
	0,
	0,
	'Time::timer_cancel',
	0);
INSERT INTO ACT_BLK
	VALUES (177,
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
	176,
	0);
INSERT INTO PE_PE
	VALUES (178,
	1,
	60,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (178,
	'GPS',
	1,
	'GPS',
	'Simulates a GPS.',
	0);
INSERT INTO O_TFR
	VALUES (179,
	178,
	'activate',
	'',
	73,
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
	VALUES (180,
	179);
INSERT INTO ACT_ACT
	VALUES (180,
	'class operation',
	0,
	181,
	0,
	0,
	'GPS::activate',
	0);
INSERT INTO ACT_BLK
	VALUES (181,
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
	180,
	0);
INSERT INTO ACT_SMT
	VALUES (182,
	181,
	183,
	3,
	1,
	'GPS::activate line: 3');
INSERT INTO ACT_FIO
	VALUES (182,
	184,
	1,
	'any',
	178,
	3,
	34);
INSERT INTO ACT_SMT
	VALUES (183,
	181,
	185,
	4,
	1,
	'GPS::activate line: 4');
INSERT INTO ACT_IF
	VALUES (183,
	186,
	187,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (185,
	181,
	188,
	13,
	1,
	'GPS::activate line: 13');
INSERT INTO E_ESS
	VALUES (185,
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
	VALUES (185,
	1,
	189);
INSERT INTO E_CSME
	VALUES (185,
	190);
INSERT INTO E_CEA
	VALUES (185);
INSERT INTO ACT_SMT
	VALUES (188,
	181,
	0,
	14,
	1,
	'GPS::activate line: 14');
INSERT INTO ACT_AI
	VALUES (188,
	191,
	192,
	0,
	0);
INSERT INTO V_VAL
	VALUES (193,
	0,
	0,
	4,
	12,
	14,
	0,
	0,
	0,
	0,
	194,
	181);
INSERT INTO V_IRF
	VALUES (193,
	184);
INSERT INTO V_VAL
	VALUES (187,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	164,
	181);
INSERT INTO V_UNY
	VALUES (187,
	193,
	'empty');
INSERT INTO V_VAL
	VALUES (195,
	1,
	0,
	14,
	1,
	3,
	0,
	0,
	0,
	0,
	194,
	181);
INSERT INTO V_IRF
	VALUES (195,
	184);
INSERT INTO V_VAL
	VALUES (192,
	1,
	0,
	14,
	5,
	9,
	0,
	0,
	0,
	0,
	148,
	181);
INSERT INTO V_AVL
	VALUES (192,
	195,
	178,
	196);
INSERT INTO V_VAL
	VALUES (191,
	0,
	0,
	14,
	18,
	-1,
	14,
	41,
	14,
	59,
	148,
	181);
INSERT INTO V_BRV
	VALUES (191,
	154,
	1,
	14,
	13);
INSERT INTO V_VAL
	VALUES (197,
	0,
	0,
	14,
	53,
	56,
	0,
	0,
	0,
	0,
	151,
	181);
INSERT INTO V_TVL
	VALUES (197,
	189);
INSERT INTO V_PAR
	VALUES (197,
	0,
	191,
	'event_inst',
	198,
	14,
	41);
INSERT INTO V_VAL
	VALUES (198,
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
	181);
INSERT INTO V_SCV
	VALUES (198,
	66,
	26);
INSERT INTO V_PAR
	VALUES (198,
	0,
	191,
	'microseconds',
	0,
	14,
	59);
INSERT INTO V_VAR
	VALUES (184,
	181,
	'gps',
	1,
	194);
INSERT INTO V_INT
	VALUES (184,
	0,
	178);
INSERT INTO V_VAR
	VALUES (189,
	181,
	'tick',
	1,
	151);
INSERT INTO V_TRN
	VALUES (189,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (186,
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
	180,
	0);
INSERT INTO ACT_SMT
	VALUES (199,
	186,
	200,
	6,
	3,
	'GPS::activate line: 6');
INSERT INTO ACT_CR
	VALUES (199,
	184,
	0,
	178,
	6,
	33);
INSERT INTO ACT_SMT
	VALUES (200,
	186,
	201,
	7,
	3,
	'GPS::activate line: 7');
INSERT INTO ACT_AI
	VALUES (200,
	202,
	203,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (201,
	186,
	204,
	8,
	3,
	'GPS::activate line: 8');
INSERT INTO ACT_AI
	VALUES (201,
	205,
	206,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (204,
	186,
	0,
	9,
	3,
	'GPS::activate line: 9');
INSERT INTO ACT_AI
	VALUES (204,
	207,
	208,
	0,
	0);
INSERT INTO V_VAL
	VALUES (209,
	1,
	0,
	7,
	3,
	5,
	0,
	0,
	0,
	0,
	194,
	186);
INSERT INTO V_IRF
	VALUES (209,
	184);
INSERT INTO V_VAL
	VALUES (203,
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
	186);
INSERT INTO V_AVL
	VALUES (203,
	209,
	178,
	210);
INSERT INTO V_VAL
	VALUES (202,
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
	186);
INSERT INTO V_LIN
	VALUES (202,
	'0');
INSERT INTO V_VAL
	VALUES (211,
	1,
	0,
	8,
	3,
	5,
	0,
	0,
	0,
	0,
	194,
	186);
INSERT INTO V_IRF
	VALUES (211,
	184);
INSERT INTO V_VAL
	VALUES (206,
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
	186);
INSERT INTO V_AVL
	VALUES (206,
	211,
	178,
	212);
INSERT INTO V_VAL
	VALUES (205,
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
	186);
INSERT INTO V_SCV
	VALUES (205,
	64,
	45);
INSERT INTO V_VAL
	VALUES (213,
	1,
	0,
	9,
	3,
	5,
	0,
	0,
	0,
	0,
	194,
	186);
INSERT INTO V_IRF
	VALUES (213,
	184);
INSERT INTO V_VAL
	VALUES (208,
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
	186);
INSERT INTO V_AVL
	VALUES (208,
	213,
	178,
	214);
INSERT INTO V_VAL
	VALUES (207,
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
	186);
INSERT INTO V_SCV
	VALUES (207,
	65,
	45);
INSERT INTO O_NBATTR
	VALUES (196,
	178);
INSERT INTO O_BATTR
	VALUES (196,
	178);
INSERT INTO O_ATTR
	VALUES (196,
	178,
	210,
	'timer',
	'Handle for underlying timer mechanism enabling the generation 
of delayed events that drive the GPS simulator.',
	'',
	'timer',
	0,
	148,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (212,
	178);
INSERT INTO O_BATTR
	VALUES (212,
	178);
INSERT INTO O_ATTR
	VALUES (212,
	178,
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
	VALUES (214,
	178);
INSERT INTO O_BATTR
	VALUES (214,
	178);
INSERT INTO O_ATTR
	VALUES (214,
	178,
	212,
	'currentLongitude',
	'Current longitude, expressed in decimal degrees, of the simulated GPS.',
	'',
	'currentLongitude',
	0,
	45,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (210,
	178);
INSERT INTO O_BATTR
	VALUES (210,
	178);
INSERT INTO O_ATTR
	VALUES (210,
	178,
	214,
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
	178);
INSERT INTO O_ID
	VALUES (1,
	178);
INSERT INTO O_ID
	VALUES (2,
	178);
INSERT INTO SM_ASM
	VALUES (215,
	178);
INSERT INTO SM_SM
	VALUES (215,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (215);
INSERT INTO SM_LEVT
	VALUES (190,
	215,
	0);
INSERT INTO SM_SEVT
	VALUES (190,
	215,
	0);
INSERT INTO SM_EVT
	VALUES (190,
	215,
	0,
	1,
	'tick',
	0,
	'',
	'GPS_A1',
	'');
INSERT INTO SM_LEVT
	VALUES (216,
	215,
	0);
INSERT INTO SM_SEVT
	VALUES (216,
	215,
	0);
INSERT INTO SM_EVT
	VALUES (216,
	215,
	0,
	2,
	'registerListener',
	0,
	'',
	'GPS_A2',
	'');
INSERT INTO SM_LEVT
	VALUES (217,
	215,
	0);
INSERT INTO SM_SEVT
	VALUES (217,
	215,
	0);
INSERT INTO SM_EVT
	VALUES (217,
	215,
	0,
	3,
	'unregisterListener',
	0,
	'',
	'GPS_A3',
	'');
INSERT INTO SM_STATE
	VALUES (218,
	215,
	0,
	'idle',
	1,
	0);
INSERT INTO SM_EIGN
	VALUES (218,
	190,
	215,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (218,
	190,
	215,
	0);
INSERT INTO SM_SEME
	VALUES (218,
	216,
	215,
	0);
INSERT INTO SM_CH
	VALUES (218,
	217,
	215,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (218,
	217,
	215,
	0);
INSERT INTO SM_MOAH
	VALUES (219,
	215,
	218);
INSERT INTO SM_AH
	VALUES (219,
	215);
INSERT INTO SM_ACT
	VALUES (219,
	215,
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
	VALUES (220,
	215,
	219);
INSERT INTO ACT_ACT
	VALUES (220,
	'class state',
	0,
	221,
	0,
	0,
	'GPS::idle',
	0);
INSERT INTO ACT_BLK
	VALUES (221,
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
	220,
	0);
INSERT INTO ACT_SMT
	VALUES (222,
	221,
	223,
	2,
	1,
	'GPS::idle line: 2');
INSERT INTO ACT_FIO
	VALUES (222,
	224,
	1,
	'any',
	178,
	2,
	34);
INSERT INTO ACT_SMT
	VALUES (223,
	221,
	225,
	3,
	1,
	'GPS::idle line: 3');
INSERT INTO ACT_AI
	VALUES (223,
	226,
	227,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (225,
	221,
	228,
	4,
	1,
	'GPS::idle line: 4');
INSERT INTO ACT_BRG
	VALUES (225,
	82,
	4,
	6,
	4,
	1);
INSERT INTO ACT_SMT
	VALUES (228,
	221,
	0,
	6,
	1,
	'GPS::idle line: 6');
INSERT INTO ACT_IF
	VALUES (228,
	229,
	230,
	0,
	0);
INSERT INTO V_VAL
	VALUES (227,
	1,
	1,
	3,
	1,
	3,
	0,
	0,
	0,
	0,
	164,
	221);
INSERT INTO V_TVL
	VALUES (227,
	231);
INSERT INTO V_VAL
	VALUES (226,
	0,
	0,
	3,
	12,
	-1,
	3,
	25,
	0,
	0,
	164,
	221);
INSERT INTO V_BRV
	VALUES (226,
	174,
	1,
	3,
	7);
INSERT INTO V_VAL
	VALUES (232,
	0,
	0,
	3,
	41,
	43,
	0,
	0,
	0,
	0,
	194,
	221);
INSERT INTO V_IRF
	VALUES (232,
	224);
INSERT INTO V_VAL
	VALUES (233,
	0,
	0,
	3,
	45,
	49,
	0,
	0,
	0,
	0,
	148,
	221);
INSERT INTO V_AVL
	VALUES (233,
	232,
	178,
	196);
INSERT INTO V_PAR
	VALUES (233,
	0,
	226,
	'timer_inst_ref',
	0,
	3,
	25);
INSERT INTO V_VAL
	VALUES (234,
	0,
	0,
	4,
	23,
	54,
	0,
	0,
	0,
	0,
	75,
	221);
INSERT INTO V_LST
	VALUES (234,
	'Location listener unregistered.');
INSERT INTO V_PAR
	VALUES (234,
	225,
	0,
	'message',
	0,
	4,
	14);
INSERT INTO V_VAL
	VALUES (235,
	0,
	0,
	6,
	10,
	12,
	0,
	0,
	0,
	0,
	164,
	221);
INSERT INTO V_TVL
	VALUES (235,
	231);
INSERT INTO V_VAL
	VALUES (230,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	164,
	221);
INSERT INTO V_UNY
	VALUES (230,
	235,
	'not');
INSERT INTO V_VAR
	VALUES (224,
	221,
	'gps',
	1,
	194);
INSERT INTO V_INT
	VALUES (224,
	0,
	178);
INSERT INTO V_VAR
	VALUES (231,
	221,
	'res',
	1,
	164);
INSERT INTO V_TRN
	VALUES (231,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (229,
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
	220,
	0);
INSERT INTO ACT_SMT
	VALUES (236,
	229,
	0,
	7,
	3,
	'GPS::idle line: 7');
INSERT INTO ACT_BRG
	VALUES (236,
	78,
	7,
	8,
	7,
	3);
INSERT INTO V_VAL
	VALUES (237,
	0,
	0,
	7,
	29,
	70,
	0,
	0,
	0,
	0,
	75,
	229);
INSERT INTO V_LST
	VALUES (237,
	'Location listener: timer_cancel() failed.');
INSERT INTO V_PAR
	VALUES (237,
	236,
	0,
	'message',
	0,
	7,
	20);
INSERT INTO SM_STATE
	VALUES (238,
	215,
	0,
	'locating',
	2,
	0);
INSERT INTO SM_SEME
	VALUES (238,
	190,
	215,
	0);
INSERT INTO SM_CH
	VALUES (238,
	216,
	215,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (238,
	216,
	215,
	0);
INSERT INTO SM_SEME
	VALUES (238,
	217,
	215,
	0);
INSERT INTO SM_MOAH
	VALUES (239,
	215,
	238);
INSERT INTO SM_AH
	VALUES (239,
	215);
INSERT INTO SM_ACT
	VALUES (239,
	215,
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
	VALUES (240,
	215,
	239);
INSERT INTO ACT_ACT
	VALUES (240,
	'class state',
	0,
	241,
	0,
	0,
	'GPS::locating',
	0);
INSERT INTO ACT_BLK
	VALUES (241,
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
	240,
	0);
INSERT INTO ACT_SMT
	VALUES (242,
	241,
	243,
	2,
	1,
	'GPS::locating line: 2');
INSERT INTO ACT_FIO
	VALUES (242,
	244,
	1,
	'any',
	178,
	2,
	34);
INSERT INTO ACT_SMT
	VALUES (243,
	241,
	0,
	3,
	1,
	'GPS::locating line: 3');
INSERT INTO ACT_IF
	VALUES (243,
	245,
	246,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (247,
	241,
	0,
	6,
	1,
	'GPS::locating line: 6');
INSERT INTO ACT_EL
	VALUES (247,
	248,
	249,
	243);
INSERT INTO ACT_SMT
	VALUES (250,
	241,
	0,
	9,
	1,
	'GPS::locating line: 9');
INSERT INTO ACT_E
	VALUES (250,
	251,
	243);
INSERT INTO V_VAL
	VALUES (252,
	0,
	0,
	3,
	7,
	9,
	0,
	0,
	0,
	0,
	194,
	241);
INSERT INTO V_IRF
	VALUES (252,
	244);
INSERT INTO V_VAL
	VALUES (253,
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
	241);
INSERT INTO V_AVL
	VALUES (253,
	252,
	178,
	210);
INSERT INTO V_VAL
	VALUES (254,
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
	241);
INSERT INTO V_BIN
	VALUES (254,
	255,
	253,
	'%');
INSERT INTO V_VAL
	VALUES (255,
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
	241);
INSERT INTO V_LIN
	VALUES (255,
	'3');
INSERT INTO V_VAL
	VALUES (246,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	164,
	241);
INSERT INTO V_BIN
	VALUES (246,
	256,
	254,
	'==');
INSERT INTO V_VAL
	VALUES (256,
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
	241);
INSERT INTO V_LIN
	VALUES (256,
	'0');
INSERT INTO V_VAL
	VALUES (257,
	0,
	0,
	6,
	9,
	11,
	0,
	0,
	0,
	0,
	194,
	241);
INSERT INTO V_IRF
	VALUES (257,
	244);
INSERT INTO V_VAL
	VALUES (258,
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
	241);
INSERT INTO V_AVL
	VALUES (258,
	257,
	178,
	210);
INSERT INTO V_VAL
	VALUES (259,
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
	241);
INSERT INTO V_BIN
	VALUES (259,
	260,
	258,
	'%');
INSERT INTO V_VAL
	VALUES (260,
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
	241);
INSERT INTO V_LIN
	VALUES (260,
	'5');
INSERT INTO V_VAL
	VALUES (249,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	164,
	241);
INSERT INTO V_BIN
	VALUES (249,
	261,
	259,
	'==');
INSERT INTO V_VAL
	VALUES (261,
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
	241);
INSERT INTO V_LIN
	VALUES (261,
	'0');
INSERT INTO V_VAR
	VALUES (244,
	241,
	'gps',
	1,
	194);
INSERT INTO V_INT
	VALUES (244,
	0,
	178);
INSERT INTO ACT_BLK
	VALUES (245,
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
	240,
	0);
INSERT INTO ACT_SMT
	VALUES (262,
	245,
	263,
	4,
	3,
	'GPS::locating line: 4');
INSERT INTO ACT_AI
	VALUES (262,
	264,
	265,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (263,
	245,
	0,
	5,
	3,
	'GPS::locating line: 5');
INSERT INTO ACT_AI
	VALUES (263,
	266,
	267,
	0,
	0);
INSERT INTO V_VAL
	VALUES (268,
	1,
	0,
	4,
	3,
	5,
	0,
	0,
	0,
	0,
	194,
	245);
INSERT INTO V_IRF
	VALUES (268,
	244);
INSERT INTO V_VAL
	VALUES (265,
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
	245);
INSERT INTO V_AVL
	VALUES (265,
	268,
	178,
	214);
INSERT INTO V_VAL
	VALUES (269,
	0,
	0,
	4,
	26,
	28,
	0,
	0,
	0,
	0,
	194,
	245);
INSERT INTO V_IRF
	VALUES (269,
	244);
INSERT INTO V_VAL
	VALUES (270,
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
	245);
INSERT INTO V_AVL
	VALUES (270,
	269,
	178,
	214);
INSERT INTO V_VAL
	VALUES (264,
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
	245);
INSERT INTO V_BIN
	VALUES (264,
	271,
	270,
	'+');
INSERT INTO V_VAL
	VALUES (272,
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
	245);
INSERT INTO V_SCV
	VALUES (272,
	62,
	45);
INSERT INTO V_VAL
	VALUES (271,
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
	245);
INSERT INTO V_BIN
	VALUES (271,
	273,
	272,
	'*');
INSERT INTO V_VAL
	VALUES (273,
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
	245);
INSERT INTO V_LIN
	VALUES (273,
	'2');
INSERT INTO V_VAL
	VALUES (274,
	1,
	0,
	5,
	3,
	5,
	0,
	0,
	0,
	0,
	194,
	245);
INSERT INTO V_IRF
	VALUES (274,
	244);
INSERT INTO V_VAL
	VALUES (267,
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
	245);
INSERT INTO V_AVL
	VALUES (267,
	274,
	178,
	212);
INSERT INTO V_VAL
	VALUES (275,
	0,
	0,
	5,
	25,
	27,
	0,
	0,
	0,
	0,
	194,
	245);
INSERT INTO V_IRF
	VALUES (275,
	244);
INSERT INTO V_VAL
	VALUES (276,
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
	245);
INSERT INTO V_AVL
	VALUES (276,
	275,
	178,
	212);
INSERT INTO V_VAL
	VALUES (266,
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
	245);
INSERT INTO V_BIN
	VALUES (266,
	277,
	276,
	'+');
INSERT INTO V_VAL
	VALUES (277,
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
	245);
INSERT INTO V_SCV
	VALUES (277,
	63,
	45);
INSERT INTO ACT_BLK
	VALUES (248,
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
	240,
	0);
INSERT INTO ACT_SMT
	VALUES (278,
	248,
	279,
	7,
	3,
	'GPS::locating line: 7');
INSERT INTO ACT_AI
	VALUES (278,
	280,
	281,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (279,
	248,
	0,
	8,
	3,
	'GPS::locating line: 8');
INSERT INTO ACT_AI
	VALUES (279,
	282,
	283,
	0,
	0);
INSERT INTO V_VAL
	VALUES (284,
	1,
	0,
	7,
	3,
	5,
	0,
	0,
	0,
	0,
	194,
	248);
INSERT INTO V_IRF
	VALUES (284,
	244);
INSERT INTO V_VAL
	VALUES (281,
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
	248);
INSERT INTO V_AVL
	VALUES (281,
	284,
	178,
	214);
INSERT INTO V_VAL
	VALUES (285,
	0,
	0,
	7,
	26,
	28,
	0,
	0,
	0,
	0,
	194,
	248);
INSERT INTO V_IRF
	VALUES (285,
	244);
INSERT INTO V_VAL
	VALUES (286,
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
	248);
INSERT INTO V_AVL
	VALUES (286,
	285,
	178,
	214);
INSERT INTO V_VAL
	VALUES (280,
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
	248);
INSERT INTO V_BIN
	VALUES (280,
	287,
	286,
	'+');
INSERT INTO V_VAL
	VALUES (287,
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
	248);
INSERT INTO V_SCV
	VALUES (287,
	62,
	45);
INSERT INTO V_VAL
	VALUES (288,
	1,
	0,
	8,
	3,
	5,
	0,
	0,
	0,
	0,
	194,
	248);
INSERT INTO V_IRF
	VALUES (288,
	244);
INSERT INTO V_VAL
	VALUES (283,
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
	248);
INSERT INTO V_AVL
	VALUES (283,
	288,
	178,
	212);
INSERT INTO V_VAL
	VALUES (289,
	0,
	0,
	8,
	25,
	27,
	0,
	0,
	0,
	0,
	194,
	248);
INSERT INTO V_IRF
	VALUES (289,
	244);
INSERT INTO V_VAL
	VALUES (290,
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
	248);
INSERT INTO V_AVL
	VALUES (290,
	289,
	178,
	212);
INSERT INTO V_VAL
	VALUES (282,
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
	248);
INSERT INTO V_BIN
	VALUES (282,
	291,
	290,
	'+');
INSERT INTO V_VAL
	VALUES (292,
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
	248);
INSERT INTO V_SCV
	VALUES (292,
	63,
	45);
INSERT INTO V_VAL
	VALUES (291,
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
	248);
INSERT INTO V_BIN
	VALUES (291,
	293,
	292,
	'*');
INSERT INTO V_VAL
	VALUES (293,
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
	248);
INSERT INTO V_LIN
	VALUES (293,
	'3');
INSERT INTO ACT_BLK
	VALUES (251,
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
	240,
	0);
INSERT INTO ACT_SMT
	VALUES (294,
	251,
	295,
	10,
	3,
	'GPS::locating line: 10');
INSERT INTO ACT_AI
	VALUES (294,
	296,
	297,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (295,
	251,
	0,
	11,
	3,
	'GPS::locating line: 11');
INSERT INTO ACT_AI
	VALUES (295,
	298,
	299,
	0,
	0);
INSERT INTO V_VAL
	VALUES (300,
	1,
	0,
	10,
	3,
	5,
	0,
	0,
	0,
	0,
	194,
	251);
INSERT INTO V_IRF
	VALUES (300,
	244);
INSERT INTO V_VAL
	VALUES (297,
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
	251);
INSERT INTO V_AVL
	VALUES (297,
	300,
	178,
	214);
INSERT INTO V_VAL
	VALUES (301,
	0,
	0,
	10,
	26,
	28,
	0,
	0,
	0,
	0,
	194,
	251);
INSERT INTO V_IRF
	VALUES (301,
	244);
INSERT INTO V_VAL
	VALUES (302,
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
	251);
INSERT INTO V_AVL
	VALUES (302,
	301,
	178,
	214);
INSERT INTO V_VAL
	VALUES (296,
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
	251);
INSERT INTO V_BIN
	VALUES (296,
	303,
	302,
	'+');
INSERT INTO V_VAL
	VALUES (303,
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
	251);
INSERT INTO V_SCV
	VALUES (303,
	62,
	45);
INSERT INTO V_VAL
	VALUES (304,
	1,
	0,
	11,
	3,
	5,
	0,
	0,
	0,
	0,
	194,
	251);
INSERT INTO V_IRF
	VALUES (304,
	244);
INSERT INTO V_VAL
	VALUES (299,
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
	251);
INSERT INTO V_AVL
	VALUES (299,
	304,
	178,
	212);
INSERT INTO V_VAL
	VALUES (305,
	0,
	0,
	11,
	25,
	27,
	0,
	0,
	0,
	0,
	194,
	251);
INSERT INTO V_IRF
	VALUES (305,
	244);
INSERT INTO V_VAL
	VALUES (306,
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
	251);
INSERT INTO V_AVL
	VALUES (306,
	305,
	178,
	212);
INSERT INTO V_VAL
	VALUES (298,
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
	251);
INSERT INTO V_BIN
	VALUES (298,
	307,
	306,
	'+');
INSERT INTO V_VAL
	VALUES (307,
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
	251);
INSERT INTO V_SCV
	VALUES (307,
	63,
	45);
INSERT INTO SM_NSTXN
	VALUES (308,
	215,
	218,
	216,
	0);
INSERT INTO SM_TAH
	VALUES (309,
	215,
	308);
INSERT INTO SM_AH
	VALUES (309,
	215);
INSERT INTO SM_ACT
	VALUES (309,
	215,
	1,
	'// Activate the simulated GPS.
GPS::activate();

LOG::LogInfo(message: "Location listener registered.");
',
	'');
INSERT INTO ACT_TAB
	VALUES (310,
	215,
	309);
INSERT INTO ACT_ACT
	VALUES (310,
	'class transition',
	0,
	311,
	0,
	0,
	'GPS_A2: registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (311,
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
	310,
	0);
INSERT INTO ACT_SMT
	VALUES (312,
	311,
	313,
	2,
	1,
	'GPS_A2: registerListener line: 2');
INSERT INTO ACT_TFM
	VALUES (312,
	179,
	0,
	2,
	6,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (313,
	311,
	0,
	4,
	1,
	'GPS_A2: registerListener line: 4');
INSERT INTO ACT_BRG
	VALUES (313,
	82,
	4,
	6,
	4,
	1);
INSERT INTO V_VAL
	VALUES (314,
	0,
	0,
	4,
	23,
	52,
	0,
	0,
	0,
	0,
	75,
	311);
INSERT INTO V_LST
	VALUES (314,
	'Location listener registered.');
INSERT INTO V_PAR
	VALUES (314,
	313,
	0,
	'message',
	0,
	4,
	14);
INSERT INTO SM_TXN
	VALUES (308,
	215,
	238,
	0);
INSERT INTO SM_NSTXN
	VALUES (315,
	215,
	238,
	217,
	0);
INSERT INTO SM_TAH
	VALUES (316,
	215,
	315);
INSERT INTO SM_AH
	VALUES (316,
	215);
INSERT INTO SM_ACT
	VALUES (316,
	215,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (317,
	215,
	316);
INSERT INTO ACT_ACT
	VALUES (317,
	'class transition',
	0,
	318,
	0,
	0,
	'GPS_A3: unregisterListener',
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
INSERT INTO SM_TXN
	VALUES (315,
	215,
	218,
	0);
INSERT INTO SM_NSTXN
	VALUES (319,
	215,
	238,
	190,
	0);
INSERT INTO SM_TAH
	VALUES (320,
	215,
	319);
INSERT INTO SM_AH
	VALUES (320,
	215);
INSERT INTO SM_ACT
	VALUES (320,
	215,
	1,
	'// Increment simulated motion segment count.
select any gps from instances of GPS;
gps.motionSegments = gps.motionSegments + 1;
',
	'');
INSERT INTO ACT_TAB
	VALUES (321,
	215,
	320);
INSERT INTO ACT_ACT
	VALUES (321,
	'class transition',
	0,
	322,
	0,
	0,
	'GPS_A1: tick',
	0);
INSERT INTO ACT_BLK
	VALUES (322,
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
	321,
	0);
INSERT INTO ACT_SMT
	VALUES (323,
	322,
	324,
	2,
	1,
	'GPS_A1: tick line: 2');
INSERT INTO ACT_FIO
	VALUES (323,
	325,
	1,
	'any',
	178,
	2,
	34);
INSERT INTO ACT_SMT
	VALUES (324,
	322,
	0,
	3,
	1,
	'GPS_A1: tick line: 3');
INSERT INTO ACT_AI
	VALUES (324,
	326,
	327,
	0,
	0);
INSERT INTO V_VAL
	VALUES (328,
	1,
	0,
	3,
	1,
	3,
	0,
	0,
	0,
	0,
	194,
	322);
INSERT INTO V_IRF
	VALUES (328,
	325);
INSERT INTO V_VAL
	VALUES (327,
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
	322);
INSERT INTO V_AVL
	VALUES (327,
	328,
	178,
	210);
INSERT INTO V_VAL
	VALUES (329,
	0,
	0,
	3,
	22,
	24,
	0,
	0,
	0,
	0,
	194,
	322);
INSERT INTO V_IRF
	VALUES (329,
	325);
INSERT INTO V_VAL
	VALUES (330,
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
	322);
INSERT INTO V_AVL
	VALUES (330,
	329,
	178,
	210);
INSERT INTO V_VAL
	VALUES (326,
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
	322);
INSERT INTO V_BIN
	VALUES (326,
	331,
	330,
	'+');
INSERT INTO V_VAL
	VALUES (331,
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
	322);
INSERT INTO V_LIN
	VALUES (331,
	'1');
INSERT INTO V_VAR
	VALUES (325,
	322,
	'gps',
	1,
	194);
INSERT INTO V_INT
	VALUES (325,
	0,
	178);
INSERT INTO SM_TXN
	VALUES (319,
	215,
	238,
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
	VALUES (333,
	1,
	332,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (333,
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
	333,
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
	VALUES (334,
	1,
	332,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (334,
	'Speed',
	'SpeedAveragingWindow is the number of track points used to calculate the current average speed.
SecondsPerHour is the number of seconds in one hour.');
INSERT INTO CNST_SYC
	VALUES (335,
	'SecondsPerHour',
	'',
	26,
	334,
	336,
	26);
INSERT INTO CNST_LFSC
	VALUES (335,
	26);
INSERT INTO CNST_LSC
	VALUES (335,
	26,
	'3600');
INSERT INTO CNST_SYC
	VALUES (336,
	'SpeedAveragingWindow',
	'',
	26,
	334,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (336,
	26);
INSERT INTO CNST_LSC
	VALUES (336,
	26,
	'5');
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
	73,
	'getLocation',
	'',
	0,
	'',
	12);
INSERT INTO C_PP
	VALUES (337,
	8,
	26,
	'latitude',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (338,
	8,
	26,
	'longitude',
	'',
	0,
	'',
	337);
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
	73,
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
	73,
	'unregisterListener',
	'',
	0,
	'',
	53);
INSERT INTO PE_PE
	VALUES (73,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (73,
	0,
	'void',
	'',
	'');
INSERT INTO S_CDT
	VALUES (73,
	0);
INSERT INTO PE_PE
	VALUES (164,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (164,
	0,
	'boolean',
	'',
	'');
INSERT INTO S_CDT
	VALUES (164,
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
	VALUES (75,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (75,
	0,
	'string',
	'',
	'');
INSERT INTO S_CDT
	VALUES (75,
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
	VALUES (194,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (194,
	0,
	'inst_ref<Object>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (194,
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
	VALUES (151,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (151,
	0,
	'inst<Event>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (151,
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
	VALUES (88,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (88,
	0,
	'date',
	'',
	'');
INSERT INTO S_UDT
	VALUES (88,
	343,
	1);
INSERT INTO PE_PE
	VALUES (148,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (148,
	0,
	'inst_ref<Timer>',
	'',
	'');
INSERT INTO S_UDT
	VALUES (148,
	344,
	3);
INSERT INTO PE_PE
	VALUES (94,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (94,
	0,
	'timestamp',
	'',
	'');
INSERT INTO S_UDT
	VALUES (94,
	343,
	2);
