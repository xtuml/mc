-- root-types-contained: SystemModel_c,PackageableElement_c,DataType_c,CoreDataType_c,UserDataType_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES (1,
	'Tracking',
	1);
INSERT INTO EP_PKG
	VALUES (2,
	1,
	1,
	'Tracking',
	'',
	0);
INSERT INTO PE_PE
	VALUES (3,
	1,
	2,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (3,
	0,
	1,
	'shared',
	'',
	0);
INSERT INTO PE_PE
	VALUES (4,
	1,
	3,
	0,
	6);
INSERT INTO C_I
	VALUES (4,
	0,
	'TrackingHeartRateMonitor',
	'');
INSERT INTO C_EP
	VALUES (5,
	4,
	-1,
	'registerListener',
	'');
INSERT INTO C_IO
	VALUES (5,
	6,
	'registerListener',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (7,
	4,
	-1,
	'unregisterListener',
	'');
INSERT INTO C_IO
	VALUES (7,
	6,
	'unregisterListener',
	'',
	0,
	'',
	5);
INSERT INTO PE_PE
	VALUES (8,
	1,
	3,
	0,
	6);
INSERT INTO C_I
	VALUES (8,
	0,
	'TrackingLocation',
	'');
INSERT INTO C_EP
	VALUES (9,
	8,
	-1,
	'getDistance',
	'Returns distance, in kilometers, between the "from" and "to" coordinates passed as parameters.
The coordinates must be passed as decimal degrees.');
INSERT INTO C_IO
	VALUES (9,
	10,
	'getDistance',
	'Returns distance, in kilometers, between the "from" and "to" coordinates passed as parameters.
The coordinates must be passed as decimal degrees.',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (11,
	9,
	10,
	'fromLat',
	'Latitude for the "from" coordinates.',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (12,
	9,
	10,
	'toLat',
	'Latitude for the "to" coordinates.',
	0,
	'',
	13);
INSERT INTO C_PP
	VALUES (13,
	9,
	10,
	'fromLong',
	'Longitude for the "from" coordinates.',
	0,
	'',
	11);
INSERT INTO C_PP
	VALUES (14,
	9,
	10,
	'toLong',
	'Longitude for the "to" coordinates.',
	0,
	'',
	12);
INSERT INTO C_EP
	VALUES (15,
	8,
	-1,
	'getLocation',
	'');
INSERT INTO C_IO
	VALUES (15,
	6,
	'getLocation',
	'',
	0,
	'',
	9);
INSERT INTO C_PP
	VALUES (16,
	15,
	10,
	'latitude',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (17,
	15,
	10,
	'longitude',
	'',
	0,
	'',
	16);
INSERT INTO C_EP
	VALUES (18,
	8,
	-1,
	'registerListener',
	'');
INSERT INTO C_IO
	VALUES (18,
	6,
	'registerListener',
	'',
	0,
	'',
	15);
INSERT INTO C_EP
	VALUES (19,
	8,
	-1,
	'unregisterListener',
	'');
INSERT INTO C_IO
	VALUES (19,
	6,
	'unregisterListener',
	'',
	0,
	'',
	18);
INSERT INTO PE_PE
	VALUES (20,
	1,
	3,
	0,
	6);
INSERT INTO C_I
	VALUES (20,
	0,
	'TrackingUI',
	'');
INSERT INTO C_EP
	VALUES (21,
	20,
	-1,
	'setData',
	'');
INSERT INTO C_IO
	VALUES (21,
	6,
	'setData',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (22,
	21,
	10,
	'value',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (23,
	21,
	24,
	'unit',
	'',
	0,
	'',
	22);
INSERT INTO C_EP
	VALUES (25,
	20,
	-1,
	'setIndicator',
	'');
INSERT INTO C_IO
	VALUES (25,
	6,
	'setIndicator',
	'',
	0,
	'',
	21);
INSERT INTO C_PP
	VALUES (26,
	25,
	27,
	'indicator',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (28,
	20,
	-1,
	'setTime',
	'');
INSERT INTO C_IO
	VALUES (28,
	6,
	'setTime',
	'',
	0,
	'',
	25);
INSERT INTO C_PP
	VALUES (29,
	28,
	30,
	'time',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (31,
	20,
	-1,
	'newGoalSpec',
	'');
INSERT INTO C_IO
	VALUES (31,
	6,
	'newGoalSpec',
	'',
	0,
	'',
	28);
INSERT INTO C_PP
	VALUES (32,
	31,
	30,
	'sequenceNumber',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (33,
	31,
	10,
	'minimum',
	'',
	0,
	'',
	32);
INSERT INTO C_PP
	VALUES (34,
	31,
	10,
	'maximum',
	'',
	0,
	'',
	33);
INSERT INTO C_PP
	VALUES (35,
	31,
	10,
	'span',
	'',
	0,
	'',
	34);
INSERT INTO C_PP
	VALUES (36,
	31,
	37,
	'criteriaType',
	'',
	0,
	'',
	35);
INSERT INTO C_PP
	VALUES (38,
	31,
	39,
	'spanType',
	'',
	0,
	'',
	36);
INSERT INTO PE_PE
	VALUES (40,
	1,
	3,
	0,
	6);
INSERT INTO C_I
	VALUES (40,
	0,
	'Tracking',
	'');
INSERT INTO C_EP
	VALUES (41,
	40,
	-1,
	'heartRateChanged',
	'');
INSERT INTO C_IO
	VALUES (41,
	6,
	'heartRateChanged',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (42,
	41,
	30,
	'heartRate',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (43,
	40,
	-1,
	'lapResetPressed',
	'');
INSERT INTO C_IO
	VALUES (43,
	6,
	'lapResetPressed',
	'',
	0,
	'',
	41);
INSERT INTO C_EP
	VALUES (44,
	40,
	-1,
	'modePressed',
	'');
INSERT INTO C_IO
	VALUES (44,
	6,
	'modePressed',
	'',
	0,
	'',
	43);
INSERT INTO C_EP
	VALUES (45,
	40,
	-1,
	'setTargetPressed',
	'');
INSERT INTO C_IO
	VALUES (45,
	6,
	'setTargetPressed',
	'',
	0,
	'',
	44);
INSERT INTO C_EP
	VALUES (46,
	40,
	-1,
	'startStopPressed',
	'');
INSERT INTO C_IO
	VALUES (46,
	6,
	'startStopPressed',
	'',
	0,
	'',
	45);
INSERT INTO C_EP
	VALUES (47,
	40,
	-1,
	'newGoalSpec',
	'');
INSERT INTO C_IO
	VALUES (47,
	6,
	'newGoalSpec',
	'',
	0,
	'',
	46);
INSERT INTO C_PP
	VALUES (48,
	47,
	30,
	'sequenceNumber',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (49,
	47,
	10,
	'minimum',
	'',
	0,
	'',
	48);
INSERT INTO C_PP
	VALUES (50,
	47,
	10,
	'maximum',
	'',
	0,
	'',
	49);
INSERT INTO C_PP
	VALUES (51,
	47,
	10,
	'span',
	'',
	0,
	'',
	50);
INSERT INTO C_PP
	VALUES (52,
	47,
	37,
	'criteriaType',
	'',
	0,
	'',
	51);
INSERT INTO C_PP
	VALUES (53,
	47,
	39,
	'spanType',
	'',
	0,
	'',
	52);
INSERT INTO C_EP
	VALUES (54,
	40,
	-1,
	'lightPressed',
	'');
INSERT INTO C_IO
	VALUES (54,
	6,
	'lightPressed',
	'',
	0,
	'',
	47);
INSERT INTO PE_PE
	VALUES (55,
	1,
	2,
	0,
	2);
INSERT INTO C_C
	VALUES (55,
	0,
	0,
	'Tracking',
	'The Tracking component encapsulates the entire application software. This is the 
only component in the system from which code will be generated for the final 
product.',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (56,
	55,
	'Location',
	0,
	0);
INSERT INTO C_IR
	VALUES (57,
	8,
	0,
	56);
INSERT INTO C_R
	VALUES (57,
	'TrackingLocation',
	'',
	'Unnamed Interface',
	'Tracking::Location::TrackingLocation');
INSERT INTO SPR_REP
	VALUES (58,
	9,
	57);
INSERT INTO SPR_RO
	VALUES (58,
	'getDistance',
	'Returns distance, in kilometers, between the "from" and "to" coordinates passed as parameters.
The coordinates must be passed as decimal degrees.',
	'return 1;',
	1);
INSERT INTO ACT_ROB
	VALUES (59,
	58);
INSERT INTO ACT_ACT
	VALUES (59,
	'interface operation',
	0,
	60,
	0,
	0,
	'Location::TrackingLocation::getDistance',
	0);
INSERT INTO ACT_BLK
	VALUES (60,
	0,
	0,
	0,
	'',
	'',
	'',
	1,
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
	0,
	0,
	59,
	0);
INSERT INTO ACT_SMT
	VALUES (61,
	60,
	0,
	1,
	1,
	'Location::TrackingLocation::getDistance line: 1');
INSERT INTO ACT_RET
	VALUES (61,
	62);
INSERT INTO V_VAL
	VALUES (62,
	0,
	0,
	1,
	8,
	8,
	0,
	0,
	0,
	0,
	30,
	60);
INSERT INTO V_LIN
	VALUES (62,
	'1');
INSERT INTO SPR_REP
	VALUES (63,
	15,
	57);
INSERT INTO SPR_RO
	VALUES (63,
	'getLocation',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (64,
	63);
INSERT INTO ACT_ACT
	VALUES (64,
	'interface operation',
	0,
	65,
	0,
	0,
	'Location::TrackingLocation::getLocation',
	0);
INSERT INTO ACT_BLK
	VALUES (65,
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
	64,
	0);
INSERT INTO SPR_REP
	VALUES (66,
	18,
	57);
INSERT INTO SPR_RO
	VALUES (66,
	'registerListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (67,
	66);
INSERT INTO ACT_ACT
	VALUES (67,
	'interface operation',
	0,
	68,
	0,
	0,
	'Location::TrackingLocation::registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (68,
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
	67,
	0);
INSERT INTO SPR_REP
	VALUES (69,
	19,
	57);
INSERT INTO SPR_RO
	VALUES (69,
	'unregisterListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (70,
	69);
INSERT INTO ACT_ACT
	VALUES (70,
	'interface operation',
	0,
	71,
	0,
	0,
	'Location::TrackingLocation::unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (71,
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
	70,
	0);
INSERT INTO C_PO
	VALUES (72,
	55,
	'UI',
	0,
	0);
INSERT INTO C_IR
	VALUES (73,
	20,
	0,
	72);
INSERT INTO C_R
	VALUES (73,
	'TrackingUI',
	'',
	'Unnamed Interface',
	'Tracking::UI::TrackingUI');
INSERT INTO SPR_REP
	VALUES (74,
	21,
	73);
INSERT INTO SPR_RO
	VALUES (74,
	'setData',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (75,
	74);
INSERT INTO ACT_ACT
	VALUES (75,
	'interface operation',
	0,
	76,
	0,
	0,
	'UI::TrackingUI::setData',
	0);
INSERT INTO ACT_BLK
	VALUES (76,
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
	75,
	0);
INSERT INTO SPR_REP
	VALUES (77,
	25,
	73);
INSERT INTO SPR_RO
	VALUES (77,
	'setIndicator',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (78,
	77);
INSERT INTO ACT_ACT
	VALUES (78,
	'interface operation',
	0,
	79,
	0,
	0,
	'UI::TrackingUI::setIndicator',
	0);
INSERT INTO ACT_BLK
	VALUES (79,
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
	78,
	0);
INSERT INTO SPR_REP
	VALUES (80,
	28,
	73);
INSERT INTO SPR_RO
	VALUES (80,
	'setTime',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (81,
	80);
INSERT INTO ACT_ACT
	VALUES (81,
	'interface operation',
	0,
	82,
	0,
	0,
	'UI::TrackingUI::setTime',
	0);
INSERT INTO ACT_BLK
	VALUES (82,
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
	81,
	0);
INSERT INTO SPR_REP
	VALUES (83,
	31,
	73);
INSERT INTO SPR_RO
	VALUES (83,
	'newGoalSpec',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (84,
	83);
INSERT INTO ACT_ACT
	VALUES (84,
	'interface operation',
	0,
	85,
	0,
	0,
	'UI::TrackingUI::newGoalSpec',
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
INSERT INTO C_PO
	VALUES (86,
	55,
	'HeartRateMonitor',
	0,
	0);
INSERT INTO C_IR
	VALUES (87,
	4,
	0,
	86);
INSERT INTO C_R
	VALUES (87,
	'TrackingHeartRateMonitor',
	'',
	'Unnamed Interface',
	'Tracking::HeartRateMonitor::TrackingHeartRateMonitor');
INSERT INTO SPR_REP
	VALUES (88,
	5,
	87);
INSERT INTO SPR_RO
	VALUES (88,
	'registerListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (89,
	88);
INSERT INTO ACT_ACT
	VALUES (89,
	'interface operation',
	0,
	90,
	0,
	0,
	'HeartRateMonitor::TrackingHeartRateMonitor::registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (90,
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
	89,
	0);
INSERT INTO SPR_REP
	VALUES (91,
	7,
	87);
INSERT INTO SPR_RO
	VALUES (91,
	'unregisterListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (92,
	91);
INSERT INTO ACT_ACT
	VALUES (92,
	'interface operation',
	0,
	93,
	0,
	0,
	'HeartRateMonitor::TrackingHeartRateMonitor::unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (93,
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
	92,
	0);
INSERT INTO C_PO
	VALUES (94,
	55,
	'Tracking',
	0,
	0);
INSERT INTO C_IR
	VALUES (95,
	40,
	0,
	94);
INSERT INTO C_P
	VALUES (95,
	'Tracking',
	'Unnamed Interface',
	'',
	'Tracking::Tracking::Tracking');
INSERT INTO SPR_PEP
	VALUES (96,
	41,
	95);
INSERT INTO SPR_PO
	VALUES (96,
	'heartRateChanged',
	'',
	'// Find the singleton instance of the workout session
// and forward this signal, as an event, to it.
// If there is no active workout session, then this 
// sample is simply ignored and not recorded.

select any session from instances of WorkoutSession;
if (not empty session)
  session.addHeartRateSample(heartRate: param.heartRate);
end if;',
	1);
INSERT INTO ACT_POB
	VALUES (97,
	96);
INSERT INTO ACT_ACT
	VALUES (97,
	'interface operation',
	0,
	98,
	0,
	0,
	'Tracking::Tracking::heartRateChanged',
	0);
INSERT INTO ACT_BLK
	VALUES (98,
	1,
	0,
	0,
	'',
	'',
	'',
	7,
	1,
	6,
	38,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	97,
	0);
INSERT INTO ACT_SMT
	VALUES (99,
	98,
	100,
	6,
	1,
	'Tracking::Tracking::heartRateChanged line: 6');
INSERT INTO ACT_FIO
	VALUES (99,
	101,
	1,
	'any',
	102,
	6,
	38);
INSERT INTO ACT_SMT
	VALUES (100,
	98,
	0,
	7,
	1,
	'Tracking::Tracking::heartRateChanged line: 7');
INSERT INTO ACT_IF
	VALUES (100,
	103,
	104,
	0,
	0);
INSERT INTO V_VAL
	VALUES (105,
	0,
	0,
	7,
	15,
	21,
	0,
	0,
	0,
	0,
	106,
	98);
INSERT INTO V_IRF
	VALUES (105,
	101);
INSERT INTO V_VAL
	VALUES (107,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	98);
INSERT INTO V_UNY
	VALUES (107,
	105,
	'empty');
INSERT INTO V_VAL
	VALUES (104,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	98);
INSERT INTO V_UNY
	VALUES (104,
	107,
	'not');
INSERT INTO V_VAR
	VALUES (101,
	98,
	'session',
	1,
	106);
INSERT INTO V_INT
	VALUES (101,
	0,
	102);
INSERT INTO ACT_BLK
	VALUES (103,
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
	97,
	0);
INSERT INTO ACT_SMT
	VALUES (109,
	103,
	0,
	8,
	3,
	'Tracking::Tracking::heartRateChanged line: 8');
INSERT INTO ACT_TFM
	VALUES (109,
	110,
	101,
	8,
	11,
	0,
	0);
INSERT INTO V_VAL
	VALUES (111,
	0,
	0,
	8,
	47,
	55,
	0,
	0,
	0,
	0,
	30,
	103);
INSERT INTO V_PVL
	VALUES (111,
	0,
	0,
	0,
	42);
INSERT INTO V_PAR
	VALUES (111,
	109,
	0,
	'heartRate',
	0,
	8,
	30);
INSERT INTO SPR_PEP
	VALUES (112,
	43,
	95);
INSERT INTO SPR_PO
	VALUES (112,
	'lapResetPressed',
	'',
	'// Find the singleton instance of the workout timer 
// and forward this signal, as an event, to it.

select any workoutTimer from instances of WorkoutTimer;
if (not empty workoutTimer)
  generate WorkoutTimer2:lapResetPressed() to workoutTimer;
else
  LOG::LogFailure( message:"Tracking:UI:lapResetPressed - No WorkoutTimer, so nothing to do." );
end if;
',
	1);
INSERT INTO ACT_POB
	VALUES (113,
	112);
INSERT INTO ACT_ACT
	VALUES (113,
	'interface operation',
	0,
	114,
	0,
	0,
	'Tracking::Tracking::lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (114,
	1,
	0,
	0,
	'',
	'',
	'',
	7,
	1,
	4,
	43,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	113,
	0);
INSERT INTO ACT_SMT
	VALUES (115,
	114,
	116,
	4,
	1,
	'Tracking::Tracking::lapResetPressed line: 4');
INSERT INTO ACT_FIO
	VALUES (115,
	117,
	1,
	'any',
	118,
	4,
	43);
INSERT INTO ACT_SMT
	VALUES (116,
	114,
	0,
	5,
	1,
	'Tracking::Tracking::lapResetPressed line: 5');
INSERT INTO ACT_IF
	VALUES (116,
	119,
	120,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (121,
	114,
	0,
	7,
	1,
	'Tracking::Tracking::lapResetPressed line: 7');
INSERT INTO ACT_E
	VALUES (121,
	122,
	116);
INSERT INTO V_VAL
	VALUES (123,
	0,
	0,
	5,
	15,
	26,
	0,
	0,
	0,
	0,
	106,
	114);
INSERT INTO V_IRF
	VALUES (123,
	117);
INSERT INTO V_VAL
	VALUES (124,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	114);
INSERT INTO V_UNY
	VALUES (124,
	123,
	'empty');
INSERT INTO V_VAL
	VALUES (120,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	114);
INSERT INTO V_UNY
	VALUES (120,
	124,
	'not');
INSERT INTO V_VAR
	VALUES (117,
	114,
	'workoutTimer',
	1,
	106);
INSERT INTO V_INT
	VALUES (117,
	0,
	118);
INSERT INTO ACT_BLK
	VALUES (119,
	0,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	6,
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
	113,
	0);
INSERT INTO ACT_SMT
	VALUES (125,
	119,
	0,
	6,
	3,
	'Tracking::Tracking::lapResetPressed line: 6');
INSERT INTO E_ESS
	VALUES (125,
	1,
	0,
	6,
	12,
	6,
	26,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (125);
INSERT INTO E_GSME
	VALUES (125,
	126);
INSERT INTO E_GEN
	VALUES (125,
	117);
INSERT INTO ACT_BLK
	VALUES (122,
	0,
	0,
	0,
	'LOG',
	'',
	'',
	8,
	3,
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
	113,
	0);
INSERT INTO ACT_SMT
	VALUES (127,
	122,
	0,
	8,
	3,
	'Tracking::Tracking::lapResetPressed line: 8');
INSERT INTO ACT_BRG
	VALUES (127,
	128,
	8,
	8,
	8,
	3);
INSERT INTO V_VAL
	VALUES (129,
	0,
	0,
	8,
	28,
	92,
	0,
	0,
	0,
	0,
	130,
	122);
INSERT INTO V_LST
	VALUES (129,
	'Tracking:UI:lapResetPressed - No WorkoutTimer, so nothing to do.');
INSERT INTO V_PAR
	VALUES (129,
	127,
	0,
	'message',
	0,
	8,
	20);
INSERT INTO SPR_PEP
	VALUES (131,
	44,
	95);
INSERT INTO SPR_PO
	VALUES (131,
	'modePressed',
	'',
	'// Notify the display to change modes.

// Find the display related to the singleton instance of 
//   workout session (if it exists), and notify it.
select any session from instances of WorkoutSession;
if ( not empty session )
  select one display related by session->Display[R7.''current status indicated on''];
  generate Display1:modeChange to display;
end if;',
	1);
INSERT INTO ACT_POB
	VALUES (132,
	131);
INSERT INTO ACT_ACT
	VALUES (132,
	'interface operation',
	0,
	133,
	0,
	0,
	'Tracking::Tracking::modePressed',
	0);
INSERT INTO ACT_BLK
	VALUES (133,
	1,
	0,
	0,
	'',
	'',
	'',
	6,
	1,
	5,
	38,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	132,
	0);
INSERT INTO ACT_SMT
	VALUES (134,
	133,
	135,
	5,
	1,
	'Tracking::Tracking::modePressed line: 5');
INSERT INTO ACT_FIO
	VALUES (134,
	136,
	1,
	'any',
	102,
	5,
	38);
INSERT INTO ACT_SMT
	VALUES (135,
	133,
	0,
	6,
	1,
	'Tracking::Tracking::modePressed line: 6');
INSERT INTO ACT_IF
	VALUES (135,
	137,
	138,
	0,
	0);
INSERT INTO V_VAL
	VALUES (139,
	0,
	0,
	6,
	16,
	22,
	0,
	0,
	0,
	0,
	106,
	133);
INSERT INTO V_IRF
	VALUES (139,
	136);
INSERT INTO V_VAL
	VALUES (140,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	133);
INSERT INTO V_UNY
	VALUES (140,
	139,
	'empty');
INSERT INTO V_VAL
	VALUES (138,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	133);
INSERT INTO V_UNY
	VALUES (138,
	140,
	'not');
INSERT INTO V_VAR
	VALUES (136,
	133,
	'session',
	1,
	106);
INSERT INTO V_INT
	VALUES (136,
	0,
	102);
INSERT INTO ACT_BLK
	VALUES (137,
	1,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	8,
	3,
	7,
	42,
	0,
	0,
	7,
	50,
	7,
	53,
	0,
	0,
	0,
	132,
	0);
INSERT INTO ACT_SMT
	VALUES (141,
	137,
	142,
	7,
	3,
	'Tracking::Tracking::modePressed line: 7');
INSERT INTO ACT_SEL
	VALUES (141,
	143,
	1,
	'one',
	144);
INSERT INTO ACT_SR
	VALUES (141);
INSERT INTO ACT_LNK
	VALUES (145,
	'''current status indicated on''',
	141,
	146,
	0,
	2,
	147,
	7,
	42,
	7,
	50,
	7,
	53);
INSERT INTO ACT_SMT
	VALUES (142,
	137,
	0,
	8,
	3,
	'Tracking::Tracking::modePressed line: 8');
INSERT INTO E_ESS
	VALUES (142,
	1,
	0,
	8,
	12,
	8,
	21,
	7,
	42,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (142);
INSERT INTO E_GSME
	VALUES (142,
	148);
INSERT INTO E_GEN
	VALUES (142,
	143);
INSERT INTO V_VAL
	VALUES (144,
	0,
	0,
	7,
	33,
	39,
	0,
	0,
	0,
	0,
	106,
	137);
INSERT INTO V_IRF
	VALUES (144,
	136);
INSERT INTO V_VAR
	VALUES (143,
	137,
	'display',
	1,
	106);
INSERT INTO V_INT
	VALUES (143,
	0,
	147);
INSERT INTO SPR_PEP
	VALUES (149,
	45,
	95);
INSERT INTO SPR_PO
	VALUES (149,
	'setTargetPressed',
	'',
	'// If a goal is currently executing, advance to the next one,
//   otherwise start the first specified goal, if it exists.
Goal::nextGoal();',
	1);
INSERT INTO ACT_POB
	VALUES (150,
	149);
INSERT INTO ACT_ACT
	VALUES (150,
	'interface operation',
	0,
	151,
	0,
	0,
	'Tracking::Tracking::setTargetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (151,
	0,
	0,
	0,
	'Goal',
	'',
	'',
	3,
	1,
	3,
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
	150,
	0);
INSERT INTO ACT_SMT
	VALUES (152,
	151,
	0,
	3,
	1,
	'Tracking::Tracking::setTargetPressed line: 3');
INSERT INTO ACT_TFM
	VALUES (152,
	153,
	0,
	3,
	7,
	3,
	1);
INSERT INTO SPR_PEP
	VALUES (154,
	46,
	95);
INSERT INTO SPR_PO
	VALUES (154,
	'startStopPressed',
	'',
	'// If necessary, create a workout session and everything required to 
// support it.  Then, forward this signal to the workout timer.

WorkoutSession::sessioncreate();

// Forward this signal, as an event, to the singleton instance of WorkoutTimer.
select any workoutTimer from instances of WorkoutTimer;
generate WorkoutTimer1:startStopPressed() to workoutTimer;',
	1);
INSERT INTO ACT_POB
	VALUES (155,
	154);
INSERT INTO ACT_ACT
	VALUES (155,
	'interface operation',
	0,
	156,
	0,
	0,
	'Tracking::Tracking::startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (156,
	1,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	8,
	1,
	7,
	43,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	155,
	0);
INSERT INTO ACT_SMT
	VALUES (157,
	156,
	158,
	4,
	1,
	'Tracking::Tracking::startStopPressed line: 4');
INSERT INTO ACT_TFM
	VALUES (157,
	159,
	0,
	4,
	17,
	4,
	1);
INSERT INTO ACT_SMT
	VALUES (158,
	156,
	160,
	7,
	1,
	'Tracking::Tracking::startStopPressed line: 7');
INSERT INTO ACT_FIO
	VALUES (158,
	161,
	1,
	'any',
	118,
	7,
	43);
INSERT INTO ACT_SMT
	VALUES (160,
	156,
	0,
	8,
	1,
	'Tracking::Tracking::startStopPressed line: 8');
INSERT INTO E_ESS
	VALUES (160,
	1,
	0,
	8,
	10,
	8,
	24,
	7,
	43,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (160);
INSERT INTO E_GSME
	VALUES (160,
	162);
INSERT INTO E_GEN
	VALUES (160,
	161);
INSERT INTO V_VAR
	VALUES (161,
	156,
	'workoutTimer',
	1,
	106);
INSERT INTO V_INT
	VALUES (161,
	0,
	118);
INSERT INTO SPR_PEP
	VALUES (163,
	47,
	95);
INSERT INTO SPR_PO
	VALUES (163,
	'newGoalSpec',
	'',
	'// Create a new goal specification and relate it to the
//   singleton instance of workout session if it exists.
select any session from instances of WorkoutSession;
if ( not empty session )
  create object instance goalSpec of GoalSpec;
  goalSpec.sequenceNumber = param.sequenceNumber;
  goalSpec.minimum = param.minimum;
  goalSpec.maximum = param.maximum;
  goalSpec.span = param.span;
  goalSpec.criteriaType = param.criteriaType;
  goalSpec.spanType = param.spanType;
  relate goalSpec to session across R10.''included in'';
end if;',
	1);
INSERT INTO ACT_POB
	VALUES (164,
	163);
INSERT INTO ACT_ACT
	VALUES (164,
	'interface operation',
	0,
	165,
	0,
	0,
	'Tracking::Tracking::newGoalSpec',
	0);
INSERT INTO ACT_BLK
	VALUES (165,
	1,
	0,
	0,
	'',
	'',
	'',
	4,
	1,
	3,
	38,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	164,
	0);
INSERT INTO ACT_SMT
	VALUES (166,
	165,
	167,
	3,
	1,
	'Tracking::Tracking::newGoalSpec line: 3');
INSERT INTO ACT_FIO
	VALUES (166,
	168,
	1,
	'any',
	102,
	3,
	38);
INSERT INTO ACT_SMT
	VALUES (167,
	165,
	0,
	4,
	1,
	'Tracking::Tracking::newGoalSpec line: 4');
INSERT INTO ACT_IF
	VALUES (167,
	169,
	170,
	0,
	0);
INSERT INTO V_VAL
	VALUES (171,
	0,
	0,
	4,
	16,
	22,
	0,
	0,
	0,
	0,
	106,
	165);
INSERT INTO V_IRF
	VALUES (171,
	168);
INSERT INTO V_VAL
	VALUES (172,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	165);
INSERT INTO V_UNY
	VALUES (172,
	171,
	'empty');
INSERT INTO V_VAL
	VALUES (170,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	165);
INSERT INTO V_UNY
	VALUES (170,
	172,
	'not');
INSERT INTO V_VAR
	VALUES (168,
	165,
	'session',
	1,
	106);
INSERT INTO V_INT
	VALUES (168,
	0,
	102);
INSERT INTO ACT_BLK
	VALUES (169,
	0,
	0,
	0,
	'''included in''',
	'',
	'',
	12,
	3,
	5,
	38,
	0,
	0,
	12,
	37,
	12,
	41,
	0,
	0,
	0,
	164,
	0);
INSERT INTO ACT_SMT
	VALUES (173,
	169,
	174,
	5,
	3,
	'Tracking::Tracking::newGoalSpec line: 5');
INSERT INTO ACT_CR
	VALUES (173,
	175,
	1,
	176,
	5,
	38);
INSERT INTO ACT_SMT
	VALUES (174,
	169,
	177,
	6,
	3,
	'Tracking::Tracking::newGoalSpec line: 6');
INSERT INTO ACT_AI
	VALUES (174,
	178,
	179,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (177,
	169,
	180,
	7,
	3,
	'Tracking::Tracking::newGoalSpec line: 7');
INSERT INTO ACT_AI
	VALUES (177,
	181,
	182,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (180,
	169,
	183,
	8,
	3,
	'Tracking::Tracking::newGoalSpec line: 8');
INSERT INTO ACT_AI
	VALUES (180,
	184,
	185,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (183,
	169,
	186,
	9,
	3,
	'Tracking::Tracking::newGoalSpec line: 9');
INSERT INTO ACT_AI
	VALUES (183,
	187,
	188,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (186,
	169,
	189,
	10,
	3,
	'Tracking::Tracking::newGoalSpec line: 10');
INSERT INTO ACT_AI
	VALUES (186,
	190,
	191,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (189,
	169,
	192,
	11,
	3,
	'Tracking::Tracking::newGoalSpec line: 11');
INSERT INTO ACT_AI
	VALUES (189,
	193,
	194,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (192,
	169,
	0,
	12,
	3,
	'Tracking::Tracking::newGoalSpec line: 12');
INSERT INTO ACT_REL
	VALUES (192,
	175,
	168,
	'''included in''',
	195,
	12,
	37,
	12,
	41);
INSERT INTO V_VAL
	VALUES (196,
	1,
	0,
	6,
	3,
	10,
	0,
	0,
	0,
	0,
	106,
	169);
INSERT INTO V_IRF
	VALUES (196,
	175);
INSERT INTO V_VAL
	VALUES (179,
	1,
	0,
	6,
	12,
	25,
	0,
	0,
	0,
	0,
	30,
	169);
INSERT INTO V_AVL
	VALUES (179,
	196,
	176,
	197);
INSERT INTO V_VAL
	VALUES (178,
	0,
	0,
	6,
	35,
	48,
	0,
	0,
	0,
	0,
	30,
	169);
INSERT INTO V_PVL
	VALUES (178,
	0,
	0,
	0,
	48);
INSERT INTO V_VAL
	VALUES (198,
	1,
	0,
	7,
	3,
	10,
	0,
	0,
	0,
	0,
	106,
	169);
INSERT INTO V_IRF
	VALUES (198,
	175);
INSERT INTO V_VAL
	VALUES (182,
	1,
	0,
	7,
	12,
	18,
	0,
	0,
	0,
	0,
	10,
	169);
INSERT INTO V_AVL
	VALUES (182,
	198,
	176,
	199);
INSERT INTO V_VAL
	VALUES (181,
	0,
	0,
	7,
	28,
	34,
	0,
	0,
	0,
	0,
	10,
	169);
INSERT INTO V_PVL
	VALUES (181,
	0,
	0,
	0,
	49);
INSERT INTO V_VAL
	VALUES (200,
	1,
	0,
	8,
	3,
	10,
	0,
	0,
	0,
	0,
	106,
	169);
INSERT INTO V_IRF
	VALUES (200,
	175);
INSERT INTO V_VAL
	VALUES (185,
	1,
	0,
	8,
	12,
	18,
	0,
	0,
	0,
	0,
	10,
	169);
INSERT INTO V_AVL
	VALUES (185,
	200,
	176,
	201);
INSERT INTO V_VAL
	VALUES (184,
	0,
	0,
	8,
	28,
	34,
	0,
	0,
	0,
	0,
	10,
	169);
INSERT INTO V_PVL
	VALUES (184,
	0,
	0,
	0,
	50);
INSERT INTO V_VAL
	VALUES (202,
	1,
	0,
	9,
	3,
	10,
	0,
	0,
	0,
	0,
	106,
	169);
INSERT INTO V_IRF
	VALUES (202,
	175);
INSERT INTO V_VAL
	VALUES (188,
	1,
	0,
	9,
	12,
	15,
	0,
	0,
	0,
	0,
	10,
	169);
INSERT INTO V_AVL
	VALUES (188,
	202,
	176,
	203);
INSERT INTO V_VAL
	VALUES (187,
	0,
	0,
	9,
	25,
	28,
	0,
	0,
	0,
	0,
	10,
	169);
INSERT INTO V_PVL
	VALUES (187,
	0,
	0,
	0,
	51);
INSERT INTO V_VAL
	VALUES (204,
	1,
	0,
	10,
	3,
	10,
	0,
	0,
	0,
	0,
	106,
	169);
INSERT INTO V_IRF
	VALUES (204,
	175);
INSERT INTO V_VAL
	VALUES (191,
	1,
	0,
	10,
	12,
	23,
	0,
	0,
	0,
	0,
	37,
	169);
INSERT INTO V_AVL
	VALUES (191,
	204,
	176,
	205);
INSERT INTO V_VAL
	VALUES (190,
	0,
	0,
	10,
	33,
	44,
	0,
	0,
	0,
	0,
	37,
	169);
INSERT INTO V_PVL
	VALUES (190,
	0,
	0,
	0,
	52);
INSERT INTO V_VAL
	VALUES (206,
	1,
	0,
	11,
	3,
	10,
	0,
	0,
	0,
	0,
	106,
	169);
INSERT INTO V_IRF
	VALUES (206,
	175);
INSERT INTO V_VAL
	VALUES (194,
	1,
	0,
	11,
	12,
	19,
	0,
	0,
	0,
	0,
	39,
	169);
INSERT INTO V_AVL
	VALUES (194,
	206,
	176,
	207);
INSERT INTO V_VAL
	VALUES (193,
	0,
	0,
	11,
	29,
	36,
	0,
	0,
	0,
	0,
	39,
	169);
INSERT INTO V_PVL
	VALUES (193,
	0,
	0,
	0,
	53);
INSERT INTO V_VAR
	VALUES (175,
	169,
	'goalSpec',
	1,
	106);
INSERT INTO V_INT
	VALUES (175,
	0,
	176);
INSERT INTO SPR_PEP
	VALUES (208,
	54,
	95);
INSERT INTO SPR_PO
	VALUES (208,
	'lightPressed',
	'',
	'',
	1);
INSERT INTO ACT_POB
	VALUES (209,
	208);
INSERT INTO ACT_ACT
	VALUES (209,
	'interface operation',
	0,
	210,
	0,
	0,
	'Tracking::Tracking::lightPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (210,
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
	209,
	0);
INSERT INTO PE_PE
	VALUES (211,
	1,
	0,
	55,
	7);
INSERT INTO EP_PKG
	VALUES (211,
	0,
	1,
	'Tracking',
	'',
	0);
INSERT INTO PE_PE
	VALUES (212,
	1,
	211,
	0,
	9);
INSERT INTO R_REL
	VALUES (212,
	1,
	'Indicates the first track point for a track log.  In
other words, this is the first recorded location in 
a chronological series of track points that make up
a track log.
Established when the first track point is recorded and 
exists for the lifetime of the track log.',
	0);
INSERT INTO R_SIMP
	VALUES (212);
INSERT INTO R_PART
	VALUES (213,
	212,
	214,
	0,
	1,
	'is start of');
INSERT INTO R_RTO
	VALUES (213,
	212,
	214,
	-1);
INSERT INTO R_OIR
	VALUES (213,
	212,
	214,
	0);
INSERT INTO R_PART
	VALUES (215,
	212,
	216,
	0,
	1,
	'has first');
INSERT INTO R_RTO
	VALUES (215,
	212,
	216,
	-1);
INSERT INTO R_OIR
	VALUES (215,
	212,
	216,
	0);
INSERT INTO PE_PE
	VALUES (217,
	1,
	211,
	0,
	9);
INSERT INTO R_REL
	VALUES (217,
	2,
	'Chronologically sequences the track points in a track log.
Established each time a new track point is recorded and 
exists for the lifetime of the track log.',
	0);
INSERT INTO R_SIMP
	VALUES (217);
INSERT INTO R_PART
	VALUES (215,
	217,
	218,
	0,
	1,
	'preceeds');
INSERT INTO R_RTO
	VALUES (215,
	217,
	218,
	-1);
INSERT INTO R_OIR
	VALUES (215,
	217,
	218,
	0);
INSERT INTO R_PART
	VALUES (215,
	217,
	219,
	0,
	1,
	'follows');
INSERT INTO R_RTO
	VALUES (215,
	217,
	219,
	-1);
INSERT INTO R_OIR
	VALUES (215,
	217,
	219,
	0);
INSERT INTO PE_PE
	VALUES (220,
	1,
	211,
	0,
	9);
INSERT INTO R_REL
	VALUES (220,
	3,
	'Represents the most recently recorded track point
in a track log.  
Established each time a new track point is recorded and
removed from the previously recorded track point at the same time.',
	0);
INSERT INTO R_SIMP
	VALUES (220);
INSERT INTO R_PART
	VALUES (215,
	220,
	221,
	0,
	1,
	'has last');
INSERT INTO R_RTO
	VALUES (215,
	220,
	221,
	-1);
INSERT INTO R_OIR
	VALUES (215,
	220,
	221,
	0);
INSERT INTO R_PART
	VALUES (213,
	220,
	222,
	0,
	1,
	'is last for');
INSERT INTO R_RTO
	VALUES (213,
	220,
	222,
	-1);
INSERT INTO R_OIR
	VALUES (213,
	220,
	222,
	0);
INSERT INTO PE_PE
	VALUES (223,
	1,
	211,
	0,
	9);
INSERT INTO R_REL
	VALUES (223,
	5,
	'Established when a lap marker is created and exists
for the lifetime of the track log.',
	0);
INSERT INTO R_SIMP
	VALUES (223);
INSERT INTO R_PART
	VALUES (224,
	223,
	225,
	1,
	1,
	'has laps defined by');
INSERT INTO R_RTO
	VALUES (224,
	223,
	225,
	-1);
INSERT INTO R_OIR
	VALUES (224,
	223,
	225,
	0);
INSERT INTO R_PART
	VALUES (213,
	223,
	226,
	0,
	0,
	'marks end of lap in');
INSERT INTO R_RTO
	VALUES (213,
	223,
	226,
	-1);
INSERT INTO R_OIR
	VALUES (213,
	223,
	226,
	0);
INSERT INTO PE_PE
	VALUES (146,
	1,
	211,
	0,
	9);
INSERT INTO R_REL
	VALUES (146,
	7,
	'Established when a workout session is created and 
exists for the duration of the session.',
	0);
INSERT INTO R_SIMP
	VALUES (146);
INSERT INTO R_PART
	VALUES (102,
	146,
	227,
	0,
	0,
	'indicates current status of');
INSERT INTO R_RTO
	VALUES (102,
	146,
	227,
	-1);
INSERT INTO R_OIR
	VALUES (102,
	146,
	227,
	0);
INSERT INTO R_PART
	VALUES (147,
	146,
	228,
	0,
	0,
	'current status indicated on');
INSERT INTO R_RTO
	VALUES (147,
	146,
	228,
	-1);
INSERT INTO R_OIR
	VALUES (147,
	146,
	228,
	0);
INSERT INTO PE_PE
	VALUES (229,
	1,
	211,
	0,
	9);
INSERT INTO R_REL
	VALUES (229,
	8,
	'Established when a workout session is created and exists for the duration
of the session.',
	0);
INSERT INTO R_SIMP
	VALUES (229);
INSERT INTO R_PART
	VALUES (102,
	229,
	230,
	0,
	0,
	'acts as the stopwatch for');
INSERT INTO R_RTO
	VALUES (102,
	229,
	230,
	-1);
INSERT INTO R_OIR
	VALUES (102,
	229,
	230,
	0);
INSERT INTO R_PART
	VALUES (118,
	229,
	231,
	0,
	0,
	'is timed by');
INSERT INTO R_RTO
	VALUES (118,
	229,
	231,
	-1);
INSERT INTO R_OIR
	VALUES (118,
	229,
	231,
	0);
INSERT INTO PE_PE
	VALUES (232,
	1,
	211,
	0,
	9);
INSERT INTO R_REL
	VALUES (232,
	4,
	'Established when a workout session is created and
exists for the duration of the session.',
	0);
INSERT INTO R_SIMP
	VALUES (232);
INSERT INTO R_PART
	VALUES (102,
	232,
	233,
	0,
	0,
	'represents path for');
INSERT INTO R_RTO
	VALUES (102,
	232,
	233,
	-1);
INSERT INTO R_OIR
	VALUES (102,
	232,
	233,
	0);
INSERT INTO R_PART
	VALUES (213,
	232,
	234,
	0,
	0,
	'captures path in');
INSERT INTO R_RTO
	VALUES (213,
	232,
	234,
	-1);
INSERT INTO R_OIR
	VALUES (213,
	232,
	234,
	0);
INSERT INTO PE_PE
	VALUES (235,
	1,
	211,
	0,
	9);
INSERT INTO R_REL
	VALUES (235,
	6,
	'Established when a heart rate sample is created and exists for
the duration of the workout session.',
	0);
INSERT INTO R_SIMP
	VALUES (235);
INSERT INTO R_PART
	VALUES (236,
	235,
	237,
	1,
	1,
	'tracks heart rate over time as');
INSERT INTO R_RTO
	VALUES (236,
	235,
	237,
	-1);
INSERT INTO R_OIR
	VALUES (236,
	235,
	237,
	0);
INSERT INTO R_PART
	VALUES (102,
	235,
	238,
	0,
	0,
	'was collected during');
INSERT INTO R_RTO
	VALUES (102,
	235,
	238,
	-1);
INSERT INTO R_OIR
	VALUES (102,
	235,
	238,
	0);
INSERT INTO PE_PE
	VALUES (239,
	1,
	211,
	0,
	9);
INSERT INTO R_REL
	VALUES (239,
	9,
	'Established when goal execution begins and removed when it ends.',
	0);
INSERT INTO R_SIMP
	VALUES (239);
INSERT INTO R_PART
	VALUES (176,
	239,
	240,
	0,
	0,
	'specified by');
INSERT INTO R_RTO
	VALUES (176,
	239,
	240,
	-1);
INSERT INTO R_OIR
	VALUES (176,
	239,
	240,
	0);
INSERT INTO R_PART
	VALUES (241,
	239,
	242,
	1,
	1,
	'specifies');
INSERT INTO R_RTO
	VALUES (241,
	239,
	242,
	-1);
INSERT INTO R_OIR
	VALUES (241,
	239,
	242,
	0);
INSERT INTO PE_PE
	VALUES (195,
	1,
	211,
	0,
	9);
INSERT INTO R_REL
	VALUES (195,
	10,
	'Established when a goal specification is created and exists 
for the duration of a workout session.',
	0);
INSERT INTO R_SIMP
	VALUES (195);
INSERT INTO R_PART
	VALUES (102,
	195,
	243,
	0,
	0,
	'included in');
INSERT INTO R_RTO
	VALUES (102,
	195,
	243,
	-1);
INSERT INTO R_OIR
	VALUES (102,
	195,
	243,
	0);
INSERT INTO R_PART
	VALUES (176,
	195,
	244,
	1,
	1,
	'includes');
INSERT INTO R_RTO
	VALUES (176,
	195,
	244,
	-1);
INSERT INTO R_OIR
	VALUES (176,
	195,
	244,
	0);
INSERT INTO PE_PE
	VALUES (245,
	1,
	211,
	0,
	9);
INSERT INTO R_REL
	VALUES (245,
	11,
	'Established when a goal begins executing and removed when it ends.',
	0);
INSERT INTO R_SIMP
	VALUES (245);
INSERT INTO R_PART
	VALUES (102,
	245,
	246,
	0,
	1,
	'is currently executing within');
INSERT INTO R_RTO
	VALUES (102,
	245,
	246,
	-1);
INSERT INTO R_OIR
	VALUES (102,
	245,
	246,
	0);
INSERT INTO R_PART
	VALUES (241,
	245,
	247,
	0,
	1,
	'is currently executing');
INSERT INTO R_RTO
	VALUES (241,
	245,
	247,
	-1);
INSERT INTO R_OIR
	VALUES (241,
	245,
	247,
	0);
INSERT INTO PE_PE
	VALUES (248,
	1,
	211,
	0,
	9);
INSERT INTO R_REL
	VALUES (248,
	12,
	'Established when an achievement period begins and exists for 
the duration of the associated workout session.',
	0);
INSERT INTO R_SIMP
	VALUES (248);
INSERT INTO R_PART
	VALUES (241,
	248,
	249,
	0,
	0,
	'specifies achievement of');
INSERT INTO R_RTO
	VALUES (241,
	248,
	249,
	-1);
INSERT INTO R_OIR
	VALUES (241,
	248,
	249,
	0);
INSERT INTO R_PART
	VALUES (250,
	248,
	251,
	1,
	1,
	'has recorded');
INSERT INTO R_RTO
	VALUES (250,
	248,
	251,
	-1);
INSERT INTO R_OIR
	VALUES (250,
	248,
	251,
	0);
INSERT INTO PE_PE
	VALUES (252,
	1,
	211,
	0,
	9);
INSERT INTO R_REL
	VALUES (252,
	13,
	'Established when a goal completes execution and exists for the 
duration of the associated workout session.',
	0);
INSERT INTO R_SIMP
	VALUES (252);
INSERT INTO R_PART
	VALUES (241,
	252,
	253,
	1,
	1,
	'has executed');
INSERT INTO R_RTO
	VALUES (241,
	252,
	253,
	-1);
INSERT INTO R_OIR
	VALUES (241,
	252,
	253,
	0);
INSERT INTO R_PART
	VALUES (102,
	252,
	254,
	0,
	0,
	'was executed within');
INSERT INTO R_RTO
	VALUES (102,
	252,
	254,
	-1);
INSERT INTO R_OIR
	VALUES (102,
	252,
	254,
	0);
INSERT INTO PE_PE
	VALUES (255,
	1,
	211,
	0,
	9);
INSERT INTO R_REL
	VALUES (255,
	14,
	'Represents an open achievement record, one for which a start time has been recorded
but no end time has yet been recorded.  In other words, this association exists only
while the currently executing goal is being achieved.',
	0);
INSERT INTO R_SIMP
	VALUES (255);
INSERT INTO R_PART
	VALUES (241,
	255,
	256,
	0,
	1,
	'is open for');
INSERT INTO R_RTO
	VALUES (241,
	255,
	256,
	-1);
INSERT INTO R_OIR
	VALUES (241,
	255,
	256,
	0);
INSERT INTO R_PART
	VALUES (250,
	255,
	257,
	0,
	1,
	'has open');
INSERT INTO R_RTO
	VALUES (250,
	255,
	257,
	-1);
INSERT INTO R_OIR
	VALUES (250,
	255,
	257,
	0);
INSERT INTO PE_PE
	VALUES (258,
	1,
	211,
	0,
	5);
INSERT INTO S_EE
	VALUES (258,
	'Logging',
	'',
	'LOG',
	0,
	'',
	'Logging',
	1);
INSERT INTO S_BRG
	VALUES (259,
	258,
	'LogSuccess',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (260,
	259,
	'message',
	130,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (261,
	259);
INSERT INTO ACT_ACT
	VALUES (261,
	'bridge',
	0,
	262,
	0,
	0,
	'Logging::LogSuccess',
	0);
INSERT INTO ACT_BLK
	VALUES (262,
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
	261,
	0);
INSERT INTO S_BRG
	VALUES (128,
	258,
	'LogFailure',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (263,
	128,
	'message',
	130,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (264,
	128);
INSERT INTO ACT_ACT
	VALUES (264,
	'bridge',
	0,
	265,
	0,
	0,
	'Logging::LogFailure',
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
INSERT INTO S_BRG
	VALUES (266,
	258,
	'LogInfo',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (267,
	266,
	'message',
	130,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (268,
	266);
INSERT INTO ACT_ACT
	VALUES (268,
	'bridge',
	0,
	269,
	0,
	0,
	'Logging::LogInfo',
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
	258,
	'LogDate',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (271,
	270,
	'd',
	272,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (273,
	270,
	'message',
	130,
	0,
	'',
	271,
	'');
INSERT INTO ACT_BRB
	VALUES (274,
	270);
INSERT INTO ACT_ACT
	VALUES (274,
	'bridge',
	0,
	275,
	0,
	0,
	'Logging::LogDate',
	0);
INSERT INTO ACT_BLK
	VALUES (275,
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
	274,
	0);
INSERT INTO S_BRG
	VALUES (276,
	258,
	'LogTime',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (277,
	276,
	't',
	278,
	0,
	'',
	279,
	'');
INSERT INTO S_BPARM
	VALUES (279,
	276,
	'message',
	130,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (280,
	276);
INSERT INTO ACT_ACT
	VALUES (280,
	'bridge',
	0,
	281,
	0,
	0,
	'Logging::LogTime',
	0);
INSERT INTO ACT_BLK
	VALUES (281,
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
	280,
	0);
INSERT INTO S_BRG
	VALUES (282,
	258,
	'LogReal',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (283,
	282,
	'r',
	10,
	0,
	'',
	284,
	'');
INSERT INTO S_BPARM
	VALUES (284,
	282,
	'message',
	130,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (285,
	282);
INSERT INTO ACT_ACT
	VALUES (285,
	'bridge',
	0,
	286,
	0,
	0,
	'Logging::LogReal',
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
	258,
	'LogInteger',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (288,
	287,
	'message',
	30,
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
	'Logging::LogInteger',
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
INSERT INTO PE_PE
	VALUES (291,
	1,
	211,
	0,
	5);
INSERT INTO S_EE
	VALUES (291,
	'Time',
	'The Time external entity provides date, timestamp, and timer related operations.',
	'TIM',
	0,
	'',
	'Time',
	1);
INSERT INTO S_BRG
	VALUES (292,
	291,
	'current_date',
	'',
	1,
	272,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (293,
	292);
INSERT INTO ACT_ACT
	VALUES (293,
	'bridge',
	0,
	294,
	0,
	0,
	'Time::current_date',
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
	291,
	'create_date',
	'',
	1,
	272,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (296,
	295,
	'second',
	30,
	0,
	'',
	297,
	'');
INSERT INTO S_BPARM
	VALUES (298,
	295,
	'minute',
	30,
	0,
	'',
	299,
	'');
INSERT INTO S_BPARM
	VALUES (299,
	295,
	'hour',
	30,
	0,
	'',
	300,
	'');
INSERT INTO S_BPARM
	VALUES (300,
	295,
	'day',
	30,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (297,
	295,
	'month',
	30,
	0,
	'',
	298,
	'');
INSERT INTO S_BPARM
	VALUES (301,
	295,
	'year',
	30,
	0,
	'',
	296,
	'');
INSERT INTO ACT_BRB
	VALUES (302,
	295);
INSERT INTO ACT_ACT
	VALUES (302,
	'bridge',
	0,
	303,
	0,
	0,
	'Time::create_date',
	0);
INSERT INTO ACT_BLK
	VALUES (303,
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
	302,
	0);
INSERT INTO S_BRG
	VALUES (304,
	291,
	'get_second',
	'',
	1,
	30,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (305,
	304,
	'date',
	272,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (306,
	304);
INSERT INTO ACT_ACT
	VALUES (306,
	'bridge',
	0,
	307,
	0,
	0,
	'Time::get_second',
	0);
INSERT INTO ACT_BLK
	VALUES (307,
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
	306,
	0);
INSERT INTO S_BRG
	VALUES (308,
	291,
	'get_minute',
	'',
	1,
	30,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (309,
	308,
	'date',
	272,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (310,
	308);
INSERT INTO ACT_ACT
	VALUES (310,
	'bridge',
	0,
	311,
	0,
	0,
	'Time::get_minute',
	0);
INSERT INTO ACT_BLK
	VALUES (311,
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
	310,
	0);
INSERT INTO S_BRG
	VALUES (312,
	291,
	'get_hour',
	'',
	1,
	30,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (313,
	312,
	'date',
	272,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (314,
	312);
INSERT INTO ACT_ACT
	VALUES (314,
	'bridge',
	0,
	315,
	0,
	0,
	'Time::get_hour',
	0);
INSERT INTO ACT_BLK
	VALUES (315,
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
	314,
	0);
INSERT INTO S_BRG
	VALUES (316,
	291,
	'get_day',
	'',
	1,
	30,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (317,
	316,
	'date',
	272,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (318,
	316);
INSERT INTO ACT_ACT
	VALUES (318,
	'bridge',
	0,
	319,
	0,
	0,
	'Time::get_day',
	0);
INSERT INTO ACT_BLK
	VALUES (319,
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
	318,
	0);
INSERT INTO S_BRG
	VALUES (320,
	291,
	'get_month',
	'',
	1,
	30,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (321,
	320,
	'date',
	272,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (322,
	320);
INSERT INTO ACT_ACT
	VALUES (322,
	'bridge',
	0,
	323,
	0,
	0,
	'Time::get_month',
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
	291,
	'get_year',
	'',
	1,
	30,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (325,
	324,
	'date',
	272,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (326,
	324);
INSERT INTO ACT_ACT
	VALUES (326,
	'bridge',
	0,
	327,
	0,
	0,
	'Time::get_year',
	0);
INSERT INTO ACT_BLK
	VALUES (327,
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
	326,
	0);
INSERT INTO S_BRG
	VALUES (328,
	291,
	'current_clock',
	'',
	1,
	278,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (329,
	328);
INSERT INTO ACT_ACT
	VALUES (329,
	'bridge',
	0,
	330,
	0,
	0,
	'Time::current_clock',
	0);
INSERT INTO ACT_BLK
	VALUES (330,
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
	329,
	0);
INSERT INTO S_BRG
	VALUES (331,
	291,
	'timer_start',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Returns the instance
handle of the timer.',
	1,
	332,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (333,
	331,
	'microseconds',
	30,
	0,
	'',
	334,
	'');
INSERT INTO S_BPARM
	VALUES (334,
	331,
	'event_inst',
	335,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (336,
	331);
INSERT INTO ACT_ACT
	VALUES (336,
	'bridge',
	0,
	337,
	0,
	0,
	'Time::timer_start',
	0);
INSERT INTO ACT_BLK
	VALUES (337,
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
	336,
	0);
INSERT INTO S_BRG
	VALUES (338,
	291,
	'timer_start_recurring',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Upon expiration, the
timer will be restarted and fire again in the specified number of microseconds
generating the passed event. This bridge operation returns the instance handle
of the timer.',
	1,
	332,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (339,
	338,
	'microseconds',
	30,
	0,
	'',
	340,
	'');
INSERT INTO S_BPARM
	VALUES (340,
	338,
	'event_inst',
	335,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (341,
	338);
INSERT INTO ACT_ACT
	VALUES (341,
	'bridge',
	0,
	342,
	0,
	0,
	'Time::timer_start_recurring',
	0);
INSERT INTO ACT_BLK
	VALUES (342,
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
	341,
	0);
INSERT INTO S_BRG
	VALUES (343,
	291,
	'timer_remaining_time',
	'Returns the time remaining (in microseconds) for the passed timer instance. If
the timer has expired, a zero value is returned.',
	1,
	30,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (344,
	343,
	'timer_inst_ref',
	332,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (345,
	343);
INSERT INTO ACT_ACT
	VALUES (345,
	'bridge',
	0,
	346,
	0,
	0,
	'Time::timer_remaining_time',
	0);
INSERT INTO ACT_BLK
	VALUES (346,
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
	345,
	0);
INSERT INTO S_BRG
	VALUES (347,
	291,
	'timer_reset_time',
	'This bridge operation attempts to set the passed existing timer to expire in
the specified number of microseconds. If the timer exists (that is, it has not
expired), a TRUE value is returned. If the timer no longer exists, a FALSE value
is returned.',
	1,
	108,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (348,
	347,
	'timer_inst_ref',
	332,
	0,
	'',
	349,
	'');
INSERT INTO S_BPARM
	VALUES (349,
	347,
	'microseconds',
	30,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (350,
	347);
INSERT INTO ACT_ACT
	VALUES (350,
	'bridge',
	0,
	351,
	0,
	0,
	'Time::timer_reset_time',
	0);
INSERT INTO ACT_BLK
	VALUES (351,
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
	350,
	0);
INSERT INTO S_BRG
	VALUES (352,
	291,
	'timer_add_time',
	'This bridge operation attempts to add the specified number of microseconds to a
passed existing timer. If the timer exists (that is, it has not expired), a TRUE
value is returned. If the timer no longer exists, a FALSE value is returned.',
	1,
	108,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (353,
	352,
	'timer_inst_ref',
	332,
	0,
	'',
	354,
	'');
INSERT INTO S_BPARM
	VALUES (354,
	352,
	'microseconds',
	30,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (355,
	352);
INSERT INTO ACT_ACT
	VALUES (355,
	'bridge',
	0,
	356,
	0,
	0,
	'Time::timer_add_time',
	0);
INSERT INTO ACT_BLK
	VALUES (356,
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
	355,
	0);
INSERT INTO S_BRG
	VALUES (357,
	291,
	'timer_cancel',
	'This bridge operation cancels and deletes the passed timer instance. If the 
timer exists (that is, it had not expired), a TRUE value is returned. If the
timer no longer exists, a FALSE value is returned.',
	1,
	108,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (358,
	357,
	'timer_inst_ref',
	332,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (359,
	357);
INSERT INTO ACT_ACT
	VALUES (359,
	'bridge',
	0,
	360,
	0,
	0,
	'Time::timer_cancel',
	0);
INSERT INTO ACT_BLK
	VALUES (360,
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
	359,
	0);
INSERT INTO PE_PE
	VALUES (361,
	1,
	211,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (361,
	0,
	'GoalTest_1',
	'',
	'// Initialize the system.
::Initialize();

// Create some goal specifications.
send UI::newGoalSpec( 
  sequenceNumber: 1,
  minimum: 2.0,
  maximum: 8.0,
  span: 150.0,
  criteriaType: GoalCriteria::Pace,
  spanType: GoalSpan::Distance );
  
send UI::newGoalSpec( 
  sequenceNumber: 2,
  minimum: 60.0,
  maximum: 80.0,
  span: 10,
  criteriaType: GoalCriteria::HeartRate,
  spanType: GoalSpan::Time );
  
send UI::newGoalSpec( 
  sequenceNumber: 3,
  minimum: 5.0,
  maximum: 6.0,
  span: 15,
  criteriaType: GoalCriteria::Pace,
  spanType: GoalSpan::Time );
  
send UI::newGoalSpec( 
  sequenceNumber: 4,
  minimum: 1.0,
  maximum: 2.0,
  span: 15,
  criteriaType: GoalCriteria::Pace,
  spanType: GoalSpan::Time );
  ',
	6,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (362,
	361);
INSERT INTO ACT_ACT
	VALUES (362,
	'function',
	0,
	363,
	0,
	0,
	'GoalTest_1',
	0);
INSERT INTO ACT_BLK
	VALUES (363,
	0,
	0,
	0,
	'UI',
	'',
	'',
	29,
	1,
	29,
	6,
	0,
	0,
	0,
	0,
	0,
	0,
	35,
	13,
	0,
	362,
	0);
INSERT INTO ACT_SMT
	VALUES (364,
	363,
	365,
	2,
	1,
	'GoalTest_1 line: 2');
INSERT INTO ACT_FNC
	VALUES (364,
	366,
	2,
	3);
INSERT INTO ACT_SMT
	VALUES (365,
	363,
	367,
	5,
	1,
	'GoalTest_1 line: 5');
INSERT INTO ACT_IOP
	VALUES (365,
	5,
	10,
	5,
	6,
	0,
	83,
	0);
INSERT INTO ACT_SMT
	VALUES (367,
	363,
	368,
	13,
	1,
	'GoalTest_1 line: 13');
INSERT INTO ACT_IOP
	VALUES (367,
	13,
	10,
	13,
	6,
	0,
	83,
	0);
INSERT INTO ACT_SMT
	VALUES (368,
	363,
	369,
	21,
	1,
	'GoalTest_1 line: 21');
INSERT INTO ACT_IOP
	VALUES (368,
	21,
	10,
	21,
	6,
	0,
	83,
	0);
INSERT INTO ACT_SMT
	VALUES (369,
	363,
	0,
	29,
	1,
	'GoalTest_1 line: 29');
INSERT INTO ACT_IOP
	VALUES (369,
	29,
	10,
	29,
	6,
	0,
	83,
	0);
INSERT INTO V_VAL
	VALUES (370,
	0,
	0,
	6,
	19,
	19,
	0,
	0,
	0,
	0,
	30,
	363);
INSERT INTO V_LIN
	VALUES (370,
	'1');
INSERT INTO V_PAR
	VALUES (370,
	365,
	0,
	'sequenceNumber',
	371,
	6,
	3);
INSERT INTO V_VAL
	VALUES (371,
	0,
	0,
	7,
	12,
	14,
	0,
	0,
	0,
	0,
	10,
	363);
INSERT INTO V_LRL
	VALUES (371,
	'2.0');
INSERT INTO V_PAR
	VALUES (371,
	365,
	0,
	'minimum',
	372,
	7,
	3);
INSERT INTO V_VAL
	VALUES (372,
	0,
	0,
	8,
	12,
	14,
	0,
	0,
	0,
	0,
	10,
	363);
INSERT INTO V_LRL
	VALUES (372,
	'8.0');
INSERT INTO V_PAR
	VALUES (372,
	365,
	0,
	'maximum',
	373,
	8,
	3);
INSERT INTO V_VAL
	VALUES (373,
	0,
	0,
	9,
	9,
	13,
	0,
	0,
	0,
	0,
	10,
	363);
INSERT INTO V_LRL
	VALUES (373,
	'150.0');
INSERT INTO V_PAR
	VALUES (373,
	365,
	0,
	'span',
	374,
	9,
	3);
INSERT INTO V_VAL
	VALUES (374,
	0,
	0,
	10,
	31,
	34,
	0,
	0,
	0,
	0,
	37,
	363);
INSERT INTO V_LEN
	VALUES (374,
	375,
	10,
	17);
INSERT INTO V_PAR
	VALUES (374,
	365,
	0,
	'criteriaType',
	376,
	10,
	3);
INSERT INTO V_VAL
	VALUES (376,
	0,
	0,
	11,
	23,
	30,
	0,
	0,
	0,
	0,
	39,
	363);
INSERT INTO V_LEN
	VALUES (376,
	377,
	11,
	13);
INSERT INTO V_PAR
	VALUES (376,
	365,
	0,
	'spanType',
	0,
	11,
	3);
INSERT INTO V_VAL
	VALUES (378,
	0,
	0,
	14,
	19,
	19,
	0,
	0,
	0,
	0,
	30,
	363);
INSERT INTO V_LIN
	VALUES (378,
	'2');
INSERT INTO V_PAR
	VALUES (378,
	367,
	0,
	'sequenceNumber',
	379,
	14,
	3);
INSERT INTO V_VAL
	VALUES (379,
	0,
	0,
	15,
	12,
	15,
	0,
	0,
	0,
	0,
	10,
	363);
INSERT INTO V_LRL
	VALUES (379,
	'60.0');
INSERT INTO V_PAR
	VALUES (379,
	367,
	0,
	'minimum',
	380,
	15,
	3);
INSERT INTO V_VAL
	VALUES (380,
	0,
	0,
	16,
	12,
	15,
	0,
	0,
	0,
	0,
	10,
	363);
INSERT INTO V_LRL
	VALUES (380,
	'80.0');
INSERT INTO V_PAR
	VALUES (380,
	367,
	0,
	'maximum',
	381,
	16,
	3);
INSERT INTO V_VAL
	VALUES (381,
	0,
	0,
	17,
	9,
	10,
	0,
	0,
	0,
	0,
	30,
	363);
INSERT INTO V_LIN
	VALUES (381,
	'10');
INSERT INTO V_PAR
	VALUES (381,
	367,
	0,
	'span',
	382,
	17,
	3);
INSERT INTO V_VAL
	VALUES (382,
	0,
	0,
	18,
	31,
	39,
	0,
	0,
	0,
	0,
	37,
	363);
INSERT INTO V_LEN
	VALUES (382,
	383,
	18,
	17);
INSERT INTO V_PAR
	VALUES (382,
	367,
	0,
	'criteriaType',
	384,
	18,
	3);
INSERT INTO V_VAL
	VALUES (384,
	0,
	0,
	19,
	23,
	26,
	0,
	0,
	0,
	0,
	39,
	363);
INSERT INTO V_LEN
	VALUES (384,
	385,
	19,
	13);
INSERT INTO V_PAR
	VALUES (384,
	367,
	0,
	'spanType',
	0,
	19,
	3);
INSERT INTO V_VAL
	VALUES (386,
	0,
	0,
	22,
	19,
	19,
	0,
	0,
	0,
	0,
	30,
	363);
INSERT INTO V_LIN
	VALUES (386,
	'3');
INSERT INTO V_PAR
	VALUES (386,
	368,
	0,
	'sequenceNumber',
	387,
	22,
	3);
INSERT INTO V_VAL
	VALUES (387,
	0,
	0,
	23,
	12,
	14,
	0,
	0,
	0,
	0,
	10,
	363);
INSERT INTO V_LRL
	VALUES (387,
	'5.0');
INSERT INTO V_PAR
	VALUES (387,
	368,
	0,
	'minimum',
	388,
	23,
	3);
INSERT INTO V_VAL
	VALUES (388,
	0,
	0,
	24,
	12,
	14,
	0,
	0,
	0,
	0,
	10,
	363);
INSERT INTO V_LRL
	VALUES (388,
	'6.0');
INSERT INTO V_PAR
	VALUES (388,
	368,
	0,
	'maximum',
	389,
	24,
	3);
INSERT INTO V_VAL
	VALUES (389,
	0,
	0,
	25,
	9,
	10,
	0,
	0,
	0,
	0,
	30,
	363);
INSERT INTO V_LIN
	VALUES (389,
	'15');
INSERT INTO V_PAR
	VALUES (389,
	368,
	0,
	'span',
	390,
	25,
	3);
INSERT INTO V_VAL
	VALUES (390,
	0,
	0,
	26,
	31,
	34,
	0,
	0,
	0,
	0,
	37,
	363);
INSERT INTO V_LEN
	VALUES (390,
	375,
	26,
	17);
INSERT INTO V_PAR
	VALUES (390,
	368,
	0,
	'criteriaType',
	391,
	26,
	3);
INSERT INTO V_VAL
	VALUES (391,
	0,
	0,
	27,
	23,
	26,
	0,
	0,
	0,
	0,
	39,
	363);
INSERT INTO V_LEN
	VALUES (391,
	385,
	27,
	13);
INSERT INTO V_PAR
	VALUES (391,
	368,
	0,
	'spanType',
	0,
	27,
	3);
INSERT INTO V_VAL
	VALUES (392,
	0,
	0,
	30,
	19,
	19,
	0,
	0,
	0,
	0,
	30,
	363);
INSERT INTO V_LIN
	VALUES (392,
	'4');
INSERT INTO V_PAR
	VALUES (392,
	369,
	0,
	'sequenceNumber',
	393,
	30,
	3);
INSERT INTO V_VAL
	VALUES (393,
	0,
	0,
	31,
	12,
	14,
	0,
	0,
	0,
	0,
	10,
	363);
INSERT INTO V_LRL
	VALUES (393,
	'1.0');
INSERT INTO V_PAR
	VALUES (393,
	369,
	0,
	'minimum',
	394,
	31,
	3);
INSERT INTO V_VAL
	VALUES (394,
	0,
	0,
	32,
	12,
	14,
	0,
	0,
	0,
	0,
	10,
	363);
INSERT INTO V_LRL
	VALUES (394,
	'2.0');
INSERT INTO V_PAR
	VALUES (394,
	369,
	0,
	'maximum',
	395,
	32,
	3);
INSERT INTO V_VAL
	VALUES (395,
	0,
	0,
	33,
	9,
	10,
	0,
	0,
	0,
	0,
	30,
	363);
INSERT INTO V_LIN
	VALUES (395,
	'15');
INSERT INTO V_PAR
	VALUES (395,
	369,
	0,
	'span',
	396,
	33,
	3);
INSERT INTO V_VAL
	VALUES (396,
	0,
	0,
	34,
	31,
	34,
	0,
	0,
	0,
	0,
	37,
	363);
INSERT INTO V_LEN
	VALUES (396,
	375,
	34,
	17);
INSERT INTO V_PAR
	VALUES (396,
	369,
	0,
	'criteriaType',
	397,
	34,
	3);
INSERT INTO V_VAL
	VALUES (397,
	0,
	0,
	35,
	23,
	26,
	0,
	0,
	0,
	0,
	39,
	363);
INSERT INTO V_LEN
	VALUES (397,
	385,
	35,
	13);
INSERT INTO V_PAR
	VALUES (397,
	369,
	0,
	'spanType',
	0,
	35,
	3);
INSERT INTO PE_PE
	VALUES (366,
	1,
	211,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (366,
	0,
	'Initialize',
	'',
	'// Create a workout session and everything required to support it.
WorkoutSession::sessioncreate();',
	6,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (398,
	366);
INSERT INTO ACT_ACT
	VALUES (398,
	'function',
	0,
	399,
	0,
	0,
	'Initialize',
	0);
INSERT INTO ACT_BLK
	VALUES (399,
	0,
	0,
	0,
	'WorkoutSession',
	'',
	'',
	2,
	1,
	2,
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
	398,
	0);
INSERT INTO ACT_SMT
	VALUES (400,
	399,
	0,
	2,
	1,
	'Initialize line: 2');
INSERT INTO ACT_TFM
	VALUES (400,
	159,
	0,
	2,
	17,
	2,
	1);
INSERT INTO PE_PE
	VALUES (250,
	1,
	211,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (250,
	'Achievement',
	10,
	'Achievement',
	'Each instance represents one contiguous period of time during 
which a particular goal was being met (achieved).',
	0);
INSERT INTO O_TFR
	VALUES (401,
	250,
	'close',
	'',
	6,
	1,
	'// Close this open achievement record by storing the end time, relating this
//   record as a recorded one and unrelating it as the open one.
select one goal related by self->Goal[R14.''is open for''];
select one workoutTimer related by 
  goal->WorkoutSession[R11.''is currently executing within'']->WorkoutTimer[R8.''is timed by''];
  self.endTime = workoutTimer.time;
unrelate self from goal across R14.''is open for'';
relate self to goal across R12.''specifies achievement of'';


',
	1,
	'',
	0);
INSERT INTO ACT_OPB
	VALUES (402,
	401);
INSERT INTO ACT_ACT
	VALUES (402,
	'operation',
	0,
	403,
	0,
	0,
	'Achievement::close',
	0);
INSERT INTO ACT_BLK
	VALUES (403,
	1,
	0,
	0,
	'''specifies achievement of''',
	'',
	'',
	8,
	1,
	5,
	62,
	0,
	0,
	8,
	28,
	8,
	32,
	0,
	0,
	0,
	402,
	0);
INSERT INTO ACT_SMT
	VALUES (404,
	403,
	405,
	3,
	1,
	'Achievement::close line: 3');
INSERT INTO ACT_SEL
	VALUES (404,
	406,
	1,
	'one',
	407);
INSERT INTO ACT_SR
	VALUES (404);
INSERT INTO ACT_LNK
	VALUES (408,
	'''is open for''',
	404,
	255,
	0,
	2,
	241,
	3,
	34,
	3,
	39,
	3,
	43);
INSERT INTO ACT_SMT
	VALUES (405,
	403,
	409,
	4,
	1,
	'Achievement::close line: 4');
INSERT INTO ACT_SEL
	VALUES (405,
	410,
	1,
	'one',
	411);
INSERT INTO ACT_SR
	VALUES (405);
INSERT INTO ACT_LNK
	VALUES (412,
	'''is currently executing within''',
	405,
	245,
	413,
	2,
	102,
	5,
	9,
	5,
	24,
	5,
	28);
INSERT INTO ACT_LNK
	VALUES (413,
	'''is timed by''',
	0,
	229,
	0,
	2,
	118,
	5,
	62,
	5,
	75,
	5,
	78);
INSERT INTO ACT_SMT
	VALUES (409,
	403,
	414,
	6,
	3,
	'Achievement::close line: 6');
INSERT INTO ACT_AI
	VALUES (409,
	415,
	416,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (414,
	403,
	417,
	7,
	1,
	'Achievement::close line: 7');
INSERT INTO ACT_UNR
	VALUES (414,
	418,
	406,
	'''is open for''',
	255,
	7,
	32,
	7,
	36);
INSERT INTO ACT_SMT
	VALUES (417,
	403,
	0,
	8,
	1,
	'Achievement::close line: 8');
INSERT INTO ACT_REL
	VALUES (417,
	418,
	406,
	'''specifies achievement of''',
	248,
	8,
	28,
	8,
	32);
INSERT INTO V_VAL
	VALUES (407,
	0,
	0,
	3,
	28,
	31,
	0,
	0,
	0,
	0,
	106,
	403);
INSERT INTO V_IRF
	VALUES (407,
	418);
INSERT INTO V_VAL
	VALUES (411,
	0,
	0,
	5,
	3,
	6,
	0,
	0,
	0,
	0,
	106,
	403);
INSERT INTO V_IRF
	VALUES (411,
	406);
INSERT INTO V_VAL
	VALUES (419,
	1,
	0,
	6,
	3,
	6,
	0,
	0,
	0,
	0,
	106,
	403);
INSERT INTO V_IRF
	VALUES (419,
	418);
INSERT INTO V_VAL
	VALUES (416,
	1,
	0,
	6,
	8,
	14,
	0,
	0,
	0,
	0,
	30,
	403);
INSERT INTO V_AVL
	VALUES (416,
	419,
	250,
	420);
INSERT INTO V_VAL
	VALUES (421,
	0,
	0,
	6,
	18,
	29,
	0,
	0,
	0,
	0,
	106,
	403);
INSERT INTO V_IRF
	VALUES (421,
	410);
INSERT INTO V_VAL
	VALUES (415,
	0,
	0,
	6,
	31,
	34,
	0,
	0,
	0,
	0,
	30,
	403);
INSERT INTO V_AVL
	VALUES (415,
	421,
	118,
	422);
INSERT INTO V_VAR
	VALUES (406,
	403,
	'goal',
	1,
	106);
INSERT INTO V_INT
	VALUES (406,
	0,
	241);
INSERT INTO V_VAR
	VALUES (418,
	403,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (418,
	0,
	250);
INSERT INTO V_VAR
	VALUES (410,
	403,
	'workoutTimer',
	1,
	106);
INSERT INTO V_INT
	VALUES (410,
	0,
	118);
INSERT INTO O_NBATTR
	VALUES (423,
	250);
INSERT INTO O_BATTR
	VALUES (423,
	250);
INSERT INTO O_ATTR
	VALUES (423,
	250,
	0,
	'startTime',
	'Starting time for this achievement, expressed as the number of seconds
since the beginning of the associated workout session.',
	'',
	'startTime',
	0,
	30,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (420,
	250);
INSERT INTO O_BATTR
	VALUES (420,
	250);
INSERT INTO O_ATTR
	VALUES (420,
	250,
	423,
	'endTime',
	'Ending time for this achievement, expressed as the number of seconds
since the beginning of the associated workout session.',
	'',
	'endTime',
	0,
	30,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	250);
INSERT INTO O_ID
	VALUES (1,
	250);
INSERT INTO O_ID
	VALUES (2,
	250);
INSERT INTO PE_PE
	VALUES (147,
	1,
	211,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (147,
	'Display',
	6,
	'Display',
	'Represents the display for the device, managing the sequence of screens
and displaying the appropriate values based on the current mode of the 
display.  
This is a singleton instance.
',
	0);
INSERT INTO O_TFR
	VALUES (424,
	147,
	'goalDispositionIndicator',
	'',
	27,
	0,
	'// Return the indicator value representing the disposition of 
// the currently executing goal, if one exists.  If there is
// no currently executing goal, return Blank.

// Find the currently executing goal (if one exists) associated 
// with the singleton instance of the workout session.
select any session from instances of WorkoutSession;
select one goal related by session->Goal[R11.''is currently executing''];

// Convert the disposition of the currently executing goal
// (if it exists) to a UI indicator.
indicator = Indicator::Blank;
if ( not empty goal )
  if ( goal.disposition == GoalDisposition::Increase )
    indicator = Indicator::Up;
  elif ( goal.disposition == GoalDisposition::Decrease )
    indicator = Indicator::Down;
  else
    indicator = Indicator::Flat;
  end if;
end if;

return( indicator );',
	1,
	'',
	0);
INSERT INTO ACT_OPB
	VALUES (425,
	424);
INSERT INTO ACT_ACT
	VALUES (425,
	'class operation',
	0,
	426,
	0,
	0,
	'Display::goalDispositionIndicator',
	0);
INSERT INTO ACT_BLK
	VALUES (426,
	1,
	0,
	0,
	'',
	'',
	'',
	23,
	1,
	8,
	37,
	0,
	0,
	8,
	42,
	8,
	46,
	12,
	13,
	0,
	425,
	0);
INSERT INTO ACT_SMT
	VALUES (427,
	426,
	428,
	7,
	1,
	'Display::goalDispositionIndicator line: 7');
INSERT INTO ACT_FIO
	VALUES (427,
	429,
	1,
	'any',
	102,
	7,
	38);
INSERT INTO ACT_SMT
	VALUES (428,
	426,
	430,
	8,
	1,
	'Display::goalDispositionIndicator line: 8');
INSERT INTO ACT_SEL
	VALUES (428,
	431,
	1,
	'one',
	432);
INSERT INTO ACT_SR
	VALUES (428);
INSERT INTO ACT_LNK
	VALUES (433,
	'''is currently executing''',
	428,
	245,
	0,
	2,
	241,
	8,
	37,
	8,
	42,
	8,
	46);
INSERT INTO ACT_SMT
	VALUES (430,
	426,
	434,
	12,
	1,
	'Display::goalDispositionIndicator line: 12');
INSERT INTO ACT_AI
	VALUES (430,
	435,
	436,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (434,
	426,
	437,
	13,
	1,
	'Display::goalDispositionIndicator line: 13');
INSERT INTO ACT_IF
	VALUES (434,
	438,
	439,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (437,
	426,
	0,
	23,
	1,
	'Display::goalDispositionIndicator line: 23');
INSERT INTO ACT_RET
	VALUES (437,
	440);
INSERT INTO V_VAL
	VALUES (432,
	0,
	0,
	8,
	28,
	34,
	0,
	0,
	0,
	0,
	106,
	426);
INSERT INTO V_IRF
	VALUES (432,
	429);
INSERT INTO V_VAL
	VALUES (436,
	1,
	1,
	12,
	1,
	9,
	0,
	0,
	0,
	0,
	27,
	426);
INSERT INTO V_TVL
	VALUES (436,
	441);
INSERT INTO V_VAL
	VALUES (435,
	0,
	0,
	12,
	24,
	28,
	0,
	0,
	0,
	0,
	27,
	426);
INSERT INTO V_LEN
	VALUES (435,
	442,
	12,
	13);
INSERT INTO V_VAL
	VALUES (443,
	0,
	0,
	13,
	16,
	19,
	0,
	0,
	0,
	0,
	106,
	426);
INSERT INTO V_IRF
	VALUES (443,
	431);
INSERT INTO V_VAL
	VALUES (444,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	426);
INSERT INTO V_UNY
	VALUES (444,
	443,
	'empty');
INSERT INTO V_VAL
	VALUES (439,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	426);
INSERT INTO V_UNY
	VALUES (439,
	444,
	'not');
INSERT INTO V_VAL
	VALUES (440,
	0,
	0,
	23,
	9,
	17,
	0,
	0,
	0,
	0,
	27,
	426);
INSERT INTO V_TVL
	VALUES (440,
	441);
INSERT INTO V_VAR
	VALUES (429,
	426,
	'session',
	1,
	106);
INSERT INTO V_INT
	VALUES (429,
	0,
	102);
INSERT INTO V_VAR
	VALUES (431,
	426,
	'goal',
	1,
	106);
INSERT INTO V_INT
	VALUES (431,
	0,
	241);
INSERT INTO V_VAR
	VALUES (441,
	426,
	'indicator',
	1,
	27);
INSERT INTO V_TRN
	VALUES (441,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (438,
	0,
	0,
	0,
	'',
	'',
	'',
	18,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	16,
	30,
	0,
	425,
	0);
INSERT INTO ACT_SMT
	VALUES (445,
	438,
	0,
	14,
	3,
	'Display::goalDispositionIndicator line: 14');
INSERT INTO ACT_IF
	VALUES (445,
	446,
	447,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (448,
	438,
	0,
	16,
	3,
	'Display::goalDispositionIndicator line: 16');
INSERT INTO ACT_EL
	VALUES (448,
	449,
	450,
	445);
INSERT INTO ACT_SMT
	VALUES (451,
	438,
	0,
	18,
	3,
	'Display::goalDispositionIndicator line: 18');
INSERT INTO ACT_E
	VALUES (451,
	452,
	445);
INSERT INTO V_VAL
	VALUES (453,
	0,
	0,
	14,
	8,
	11,
	0,
	0,
	0,
	0,
	106,
	438);
INSERT INTO V_IRF
	VALUES (453,
	431);
INSERT INTO V_VAL
	VALUES (454,
	0,
	0,
	14,
	13,
	23,
	0,
	0,
	0,
	0,
	455,
	438);
INSERT INTO V_AVL
	VALUES (454,
	453,
	241,
	456);
INSERT INTO V_VAL
	VALUES (447,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	438);
INSERT INTO V_BIN
	VALUES (447,
	457,
	454,
	'==');
INSERT INTO V_VAL
	VALUES (457,
	0,
	0,
	14,
	45,
	52,
	0,
	0,
	0,
	0,
	455,
	438);
INSERT INTO V_LEN
	VALUES (457,
	458,
	14,
	28);
INSERT INTO V_VAL
	VALUES (459,
	0,
	0,
	16,
	10,
	13,
	0,
	0,
	0,
	0,
	106,
	438);
INSERT INTO V_IRF
	VALUES (459,
	431);
INSERT INTO V_VAL
	VALUES (460,
	0,
	0,
	16,
	15,
	25,
	0,
	0,
	0,
	0,
	455,
	438);
INSERT INTO V_AVL
	VALUES (460,
	459,
	241,
	456);
INSERT INTO V_VAL
	VALUES (450,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	438);
INSERT INTO V_BIN
	VALUES (450,
	461,
	460,
	'==');
INSERT INTO V_VAL
	VALUES (461,
	0,
	0,
	16,
	47,
	54,
	0,
	0,
	0,
	0,
	455,
	438);
INSERT INTO V_LEN
	VALUES (461,
	462,
	16,
	30);
INSERT INTO ACT_BLK
	VALUES (446,
	0,
	0,
	0,
	'',
	'',
	'',
	15,
	5,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	15,
	17,
	0,
	425,
	0);
INSERT INTO ACT_SMT
	VALUES (463,
	446,
	0,
	15,
	5,
	'Display::goalDispositionIndicator line: 15');
INSERT INTO ACT_AI
	VALUES (463,
	464,
	465,
	0,
	0);
INSERT INTO V_VAL
	VALUES (465,
	1,
	0,
	15,
	5,
	13,
	0,
	0,
	0,
	0,
	27,
	446);
INSERT INTO V_TVL
	VALUES (465,
	441);
INSERT INTO V_VAL
	VALUES (464,
	0,
	0,
	15,
	28,
	29,
	0,
	0,
	0,
	0,
	27,
	446);
INSERT INTO V_LEN
	VALUES (464,
	466,
	15,
	17);
INSERT INTO ACT_BLK
	VALUES (449,
	0,
	0,
	0,
	'',
	'',
	'',
	17,
	5,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	17,
	17,
	0,
	425,
	0);
INSERT INTO ACT_SMT
	VALUES (467,
	449,
	0,
	17,
	5,
	'Display::goalDispositionIndicator line: 17');
INSERT INTO ACT_AI
	VALUES (467,
	468,
	469,
	0,
	0);
INSERT INTO V_VAL
	VALUES (469,
	1,
	0,
	17,
	5,
	13,
	0,
	0,
	0,
	0,
	27,
	449);
INSERT INTO V_TVL
	VALUES (469,
	441);
INSERT INTO V_VAL
	VALUES (468,
	0,
	0,
	17,
	28,
	31,
	0,
	0,
	0,
	0,
	27,
	449);
INSERT INTO V_LEN
	VALUES (468,
	470,
	17,
	17);
INSERT INTO ACT_BLK
	VALUES (452,
	0,
	0,
	0,
	'',
	'',
	'',
	19,
	5,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	19,
	17,
	0,
	425,
	0);
INSERT INTO ACT_SMT
	VALUES (471,
	452,
	0,
	19,
	5,
	'Display::goalDispositionIndicator line: 19');
INSERT INTO ACT_AI
	VALUES (471,
	472,
	473,
	0,
	0);
INSERT INTO V_VAL
	VALUES (473,
	1,
	0,
	19,
	5,
	13,
	0,
	0,
	0,
	0,
	27,
	452);
INSERT INTO V_TVL
	VALUES (473,
	441);
INSERT INTO V_VAL
	VALUES (472,
	0,
	0,
	19,
	28,
	31,
	0,
	0,
	0,
	0,
	27,
	452);
INSERT INTO V_LEN
	VALUES (472,
	474,
	19,
	17);
INSERT INTO O_NBATTR
	VALUES (475,
	147);
INSERT INTO O_BATTR
	VALUES (475,
	147);
INSERT INTO O_ATTR
	VALUES (475,
	147,
	0,
	'current_state',
	'',
	'',
	'current_state',
	0,
	476,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	147);
INSERT INTO O_ID
	VALUES (1,
	147);
INSERT INTO O_ID
	VALUES (2,
	147);
INSERT INTO SM_ISM
	VALUES (477,
	147);
INSERT INTO SM_SM
	VALUES (477,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (477);
INSERT INTO SM_LEVT
	VALUES (148,
	477,
	0);
INSERT INTO SM_SEVT
	VALUES (148,
	477,
	0);
INSERT INTO SM_EVT
	VALUES (148,
	477,
	0,
	1,
	'modeChange',
	0,
	'',
	'Display1',
	'');
INSERT INTO SM_LEVT
	VALUES (478,
	477,
	0);
INSERT INTO SM_SEVT
	VALUES (478,
	477,
	0);
INSERT INTO SM_EVT
	VALUES (478,
	477,
	0,
	2,
	'refresh',
	0,
	'',
	'Display2',
	'');
INSERT INTO SM_STATE
	VALUES (479,
	477,
	0,
	'displayDistance',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (479,
	148,
	477,
	0);
INSERT INTO SM_SEME
	VALUES (479,
	478,
	477,
	0);
INSERT INTO SM_MOAH
	VALUES (480,
	477,
	479);
INSERT INTO SM_AH
	VALUES (480,
	477);
INSERT INTO SM_ACT
	VALUES (480,
	477,
	1,
	'select one session related by self->WorkoutSession[R7.''indicates current status of''];
distance = session.accumulatedDistance;
if ( distance > 1000.0 )
  send UI::setData(value: distance / 1000.0, unit: Unit::km);
else 
  send UI::setData(value: distance, unit: Unit::meters);
end if;
send UI::setIndicator( indicator: Display::goalDispositionIndicator() );',
	'');
INSERT INTO ACT_SAB
	VALUES (481,
	477,
	480);
INSERT INTO ACT_ACT
	VALUES (481,
	'state',
	0,
	482,
	0,
	0,
	'Display::displayDistance',
	0);
INSERT INTO ACT_BLK
	VALUES (482,
	1,
	0,
	0,
	'Display',
	'',
	'',
	8,
	1,
	8,
	35,
	0,
	0,
	1,
	52,
	1,
	55,
	0,
	0,
	0,
	481,
	0);
INSERT INTO ACT_SMT
	VALUES (483,
	482,
	484,
	1,
	1,
	'Display::displayDistance line: 1');
INSERT INTO ACT_SEL
	VALUES (483,
	485,
	1,
	'one',
	486);
INSERT INTO ACT_SR
	VALUES (483);
INSERT INTO ACT_LNK
	VALUES (487,
	'''indicates current status of''',
	483,
	146,
	0,
	2,
	102,
	1,
	37,
	1,
	52,
	1,
	55);
INSERT INTO ACT_SMT
	VALUES (484,
	482,
	488,
	2,
	1,
	'Display::displayDistance line: 2');
INSERT INTO ACT_AI
	VALUES (484,
	489,
	490,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (488,
	482,
	491,
	3,
	1,
	'Display::displayDistance line: 3');
INSERT INTO ACT_IF
	VALUES (488,
	492,
	493,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (494,
	482,
	0,
	5,
	1,
	'Display::displayDistance line: 5');
INSERT INTO ACT_E
	VALUES (494,
	495,
	488);
INSERT INTO ACT_SMT
	VALUES (491,
	482,
	0,
	8,
	1,
	'Display::displayDistance line: 8');
INSERT INTO ACT_IOP
	VALUES (491,
	8,
	10,
	8,
	6,
	0,
	77,
	0);
INSERT INTO V_VAL
	VALUES (486,
	0,
	0,
	1,
	31,
	34,
	0,
	0,
	0,
	0,
	106,
	482);
INSERT INTO V_IRF
	VALUES (486,
	496);
INSERT INTO V_VAL
	VALUES (490,
	1,
	1,
	2,
	1,
	8,
	0,
	0,
	0,
	0,
	10,
	482);
INSERT INTO V_TVL
	VALUES (490,
	497);
INSERT INTO V_VAL
	VALUES (498,
	0,
	0,
	2,
	12,
	18,
	0,
	0,
	0,
	0,
	106,
	482);
INSERT INTO V_IRF
	VALUES (498,
	485);
INSERT INTO V_VAL
	VALUES (489,
	0,
	0,
	2,
	20,
	38,
	0,
	0,
	0,
	0,
	10,
	482);
INSERT INTO V_AVL
	VALUES (489,
	498,
	102,
	499);
INSERT INTO V_VAL
	VALUES (500,
	0,
	0,
	3,
	6,
	13,
	0,
	0,
	0,
	0,
	10,
	482);
INSERT INTO V_TVL
	VALUES (500,
	497);
INSERT INTO V_VAL
	VALUES (493,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	482);
INSERT INTO V_BIN
	VALUES (493,
	501,
	500,
	'>');
INSERT INTO V_VAL
	VALUES (501,
	0,
	0,
	3,
	17,
	22,
	0,
	0,
	0,
	0,
	10,
	482);
INSERT INTO V_LRL
	VALUES (501,
	'1000.0');
INSERT INTO V_VAL
	VALUES (502,
	0,
	0,
	8,
	44,
	-1,
	0,
	0,
	0,
	0,
	27,
	482);
INSERT INTO V_TRV
	VALUES (502,
	424,
	0,
	1,
	8,
	35);
INSERT INTO V_PAR
	VALUES (502,
	491,
	0,
	'indicator',
	0,
	8,
	24);
INSERT INTO V_VAR
	VALUES (485,
	482,
	'session',
	1,
	106);
INSERT INTO V_INT
	VALUES (485,
	0,
	102);
INSERT INTO V_VAR
	VALUES (496,
	482,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (496,
	0,
	147);
INSERT INTO V_VAR
	VALUES (497,
	482,
	'distance',
	1,
	10);
INSERT INTO V_TRN
	VALUES (497,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (492,
	0,
	0,
	0,
	'UI',
	'',
	'',
	4,
	3,
	4,
	8,
	0,
	0,
	0,
	0,
	0,
	0,
	4,
	52,
	0,
	481,
	0);
INSERT INTO ACT_SMT
	VALUES (503,
	492,
	0,
	4,
	3,
	'Display::displayDistance line: 4');
INSERT INTO ACT_IOP
	VALUES (503,
	4,
	12,
	4,
	8,
	0,
	74,
	0);
INSERT INTO V_VAL
	VALUES (504,
	0,
	0,
	4,
	27,
	34,
	0,
	0,
	0,
	0,
	10,
	492);
INSERT INTO V_TVL
	VALUES (504,
	497);
INSERT INTO V_VAL
	VALUES (505,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	10,
	492);
INSERT INTO V_BIN
	VALUES (505,
	506,
	504,
	'/');
INSERT INTO V_PAR
	VALUES (505,
	503,
	0,
	'value',
	507,
	4,
	20);
INSERT INTO V_VAL
	VALUES (506,
	0,
	0,
	4,
	38,
	43,
	0,
	0,
	0,
	0,
	10,
	492);
INSERT INTO V_LRL
	VALUES (506,
	'1000.0');
INSERT INTO V_VAL
	VALUES (507,
	0,
	0,
	4,
	58,
	59,
	0,
	0,
	0,
	0,
	24,
	492);
INSERT INTO V_LEN
	VALUES (507,
	508,
	4,
	52);
INSERT INTO V_PAR
	VALUES (507,
	503,
	0,
	'unit',
	0,
	4,
	46);
INSERT INTO ACT_BLK
	VALUES (495,
	0,
	0,
	0,
	'UI',
	'',
	'',
	6,
	3,
	6,
	8,
	0,
	0,
	0,
	0,
	0,
	0,
	6,
	43,
	0,
	481,
	0);
INSERT INTO ACT_SMT
	VALUES (509,
	495,
	0,
	6,
	3,
	'Display::displayDistance line: 6');
INSERT INTO ACT_IOP
	VALUES (509,
	6,
	12,
	6,
	8,
	0,
	74,
	0);
INSERT INTO V_VAL
	VALUES (510,
	0,
	0,
	6,
	27,
	34,
	0,
	0,
	0,
	0,
	10,
	495);
INSERT INTO V_TVL
	VALUES (510,
	497);
INSERT INTO V_PAR
	VALUES (510,
	509,
	0,
	'value',
	511,
	6,
	20);
INSERT INTO V_VAL
	VALUES (511,
	0,
	0,
	6,
	49,
	54,
	0,
	0,
	0,
	0,
	24,
	495);
INSERT INTO V_LEN
	VALUES (511,
	512,
	6,
	43);
INSERT INTO V_PAR
	VALUES (511,
	509,
	0,
	'unit',
	0,
	6,
	37);
INSERT INTO SM_STATE
	VALUES (513,
	477,
	0,
	'displaySpeed',
	2,
	0);
INSERT INTO SM_SEME
	VALUES (513,
	148,
	477,
	0);
INSERT INTO SM_SEME
	VALUES (513,
	478,
	477,
	0);
INSERT INTO SM_MOAH
	VALUES (514,
	477,
	513);
INSERT INTO SM_AH
	VALUES (514,
	477);
INSERT INTO SM_ACT
	VALUES (514,
	477,
	1,
	'select one session 
  related by self->WorkoutSession[R7.''indicates current status of''];
speed = session.currentSpeed;
send UI::setData(value: speed, unit: Unit::kmPerHour);
send UI::setIndicator( indicator: Display::goalDispositionIndicator() );',
	'');
INSERT INTO ACT_SAB
	VALUES (515,
	477,
	514);
INSERT INTO ACT_ACT
	VALUES (515,
	'state',
	0,
	516,
	0,
	0,
	'Display::displaySpeed',
	0);
INSERT INTO ACT_BLK
	VALUES (516,
	1,
	0,
	0,
	'Display',
	'',
	'',
	5,
	1,
	5,
	35,
	0,
	0,
	2,
	35,
	2,
	38,
	4,
	38,
	0,
	515,
	0);
INSERT INTO ACT_SMT
	VALUES (517,
	516,
	518,
	1,
	1,
	'Display::displaySpeed line: 1');
INSERT INTO ACT_SEL
	VALUES (517,
	519,
	1,
	'one',
	520);
INSERT INTO ACT_SR
	VALUES (517);
INSERT INTO ACT_LNK
	VALUES (521,
	'''indicates current status of''',
	517,
	146,
	0,
	2,
	102,
	2,
	20,
	2,
	35,
	2,
	38);
INSERT INTO ACT_SMT
	VALUES (518,
	516,
	522,
	3,
	1,
	'Display::displaySpeed line: 3');
INSERT INTO ACT_AI
	VALUES (518,
	523,
	524,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (522,
	516,
	525,
	4,
	1,
	'Display::displaySpeed line: 4');
INSERT INTO ACT_IOP
	VALUES (522,
	4,
	10,
	4,
	6,
	0,
	74,
	0);
INSERT INTO ACT_SMT
	VALUES (525,
	516,
	0,
	5,
	1,
	'Display::displaySpeed line: 5');
INSERT INTO ACT_IOP
	VALUES (525,
	5,
	10,
	5,
	6,
	0,
	77,
	0);
INSERT INTO V_VAL
	VALUES (520,
	0,
	0,
	2,
	14,
	17,
	0,
	0,
	0,
	0,
	106,
	516);
INSERT INTO V_IRF
	VALUES (520,
	526);
INSERT INTO V_VAL
	VALUES (524,
	1,
	1,
	3,
	1,
	5,
	0,
	0,
	0,
	0,
	10,
	516);
INSERT INTO V_TVL
	VALUES (524,
	527);
INSERT INTO V_VAL
	VALUES (528,
	0,
	0,
	3,
	9,
	15,
	0,
	0,
	0,
	0,
	106,
	516);
INSERT INTO V_IRF
	VALUES (528,
	519);
INSERT INTO V_VAL
	VALUES (523,
	0,
	0,
	3,
	17,
	28,
	0,
	0,
	0,
	0,
	10,
	516);
INSERT INTO V_AVL
	VALUES (523,
	528,
	102,
	529);
INSERT INTO V_VAL
	VALUES (530,
	0,
	0,
	4,
	25,
	29,
	0,
	0,
	0,
	0,
	10,
	516);
INSERT INTO V_TVL
	VALUES (530,
	527);
INSERT INTO V_PAR
	VALUES (530,
	522,
	0,
	'value',
	531,
	4,
	18);
INSERT INTO V_VAL
	VALUES (531,
	0,
	0,
	4,
	44,
	52,
	0,
	0,
	0,
	0,
	24,
	516);
INSERT INTO V_LEN
	VALUES (531,
	532,
	4,
	38);
INSERT INTO V_PAR
	VALUES (531,
	522,
	0,
	'unit',
	0,
	4,
	32);
INSERT INTO V_VAL
	VALUES (533,
	0,
	0,
	5,
	44,
	-1,
	0,
	0,
	0,
	0,
	27,
	516);
INSERT INTO V_TRV
	VALUES (533,
	424,
	0,
	1,
	5,
	35);
INSERT INTO V_PAR
	VALUES (533,
	525,
	0,
	'indicator',
	0,
	5,
	24);
INSERT INTO V_VAR
	VALUES (519,
	516,
	'session',
	1,
	106);
INSERT INTO V_INT
	VALUES (519,
	0,
	102);
INSERT INTO V_VAR
	VALUES (526,
	516,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (526,
	0,
	147);
INSERT INTO V_VAR
	VALUES (527,
	516,
	'speed',
	1,
	10);
INSERT INTO V_TRN
	VALUES (527,
	0,
	'');
INSERT INTO SM_STATE
	VALUES (534,
	477,
	0,
	'displayPace',
	3,
	0);
INSERT INTO SM_SEME
	VALUES (534,
	148,
	477,
	0);
INSERT INTO SM_SEME
	VALUES (534,
	478,
	477,
	0);
INSERT INTO SM_MOAH
	VALUES (535,
	477,
	534);
INSERT INTO SM_AH
	VALUES (535,
	477);
INSERT INTO SM_ACT
	VALUES (535,
	477,
	1,
	'select one session 
  related by self->WorkoutSession[R7.''indicates current status of''];
pace = session.currentPace;
send UI::setData(value: pace, unit: Unit::minPerKm);
send UI::setIndicator( indicator: Display::goalDispositionIndicator() );',
	'');
INSERT INTO ACT_SAB
	VALUES (536,
	477,
	535);
INSERT INTO ACT_ACT
	VALUES (536,
	'state',
	0,
	537,
	0,
	0,
	'Display::displayPace',
	0);
INSERT INTO ACT_BLK
	VALUES (537,
	1,
	0,
	0,
	'Display',
	'',
	'',
	5,
	1,
	5,
	35,
	0,
	0,
	2,
	35,
	2,
	38,
	4,
	37,
	0,
	536,
	0);
INSERT INTO ACT_SMT
	VALUES (538,
	537,
	539,
	1,
	1,
	'Display::displayPace line: 1');
INSERT INTO ACT_SEL
	VALUES (538,
	540,
	1,
	'one',
	541);
INSERT INTO ACT_SR
	VALUES (538);
INSERT INTO ACT_LNK
	VALUES (542,
	'''indicates current status of''',
	538,
	146,
	0,
	2,
	102,
	2,
	20,
	2,
	35,
	2,
	38);
INSERT INTO ACT_SMT
	VALUES (539,
	537,
	543,
	3,
	1,
	'Display::displayPace line: 3');
INSERT INTO ACT_AI
	VALUES (539,
	544,
	545,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (543,
	537,
	546,
	4,
	1,
	'Display::displayPace line: 4');
INSERT INTO ACT_IOP
	VALUES (543,
	4,
	10,
	4,
	6,
	0,
	74,
	0);
INSERT INTO ACT_SMT
	VALUES (546,
	537,
	0,
	5,
	1,
	'Display::displayPace line: 5');
INSERT INTO ACT_IOP
	VALUES (546,
	5,
	10,
	5,
	6,
	0,
	77,
	0);
INSERT INTO V_VAL
	VALUES (541,
	0,
	0,
	2,
	14,
	17,
	0,
	0,
	0,
	0,
	106,
	537);
INSERT INTO V_IRF
	VALUES (541,
	547);
INSERT INTO V_VAL
	VALUES (545,
	1,
	1,
	3,
	1,
	4,
	0,
	0,
	0,
	0,
	10,
	537);
INSERT INTO V_TVL
	VALUES (545,
	548);
INSERT INTO V_VAL
	VALUES (549,
	0,
	0,
	3,
	8,
	14,
	0,
	0,
	0,
	0,
	106,
	537);
INSERT INTO V_IRF
	VALUES (549,
	540);
INSERT INTO V_VAL
	VALUES (544,
	0,
	0,
	3,
	16,
	26,
	0,
	0,
	0,
	0,
	10,
	537);
INSERT INTO V_AVL
	VALUES (544,
	549,
	102,
	550);
INSERT INTO V_VAL
	VALUES (551,
	0,
	0,
	4,
	25,
	28,
	0,
	0,
	0,
	0,
	10,
	537);
INSERT INTO V_TVL
	VALUES (551,
	548);
INSERT INTO V_PAR
	VALUES (551,
	543,
	0,
	'value',
	552,
	4,
	18);
INSERT INTO V_VAL
	VALUES (552,
	0,
	0,
	4,
	43,
	50,
	0,
	0,
	0,
	0,
	24,
	537);
INSERT INTO V_LEN
	VALUES (552,
	553,
	4,
	37);
INSERT INTO V_PAR
	VALUES (552,
	543,
	0,
	'unit',
	0,
	4,
	31);
INSERT INTO V_VAL
	VALUES (554,
	0,
	0,
	5,
	44,
	-1,
	0,
	0,
	0,
	0,
	27,
	537);
INSERT INTO V_TRV
	VALUES (554,
	424,
	0,
	1,
	5,
	35);
INSERT INTO V_PAR
	VALUES (554,
	546,
	0,
	'indicator',
	0,
	5,
	24);
INSERT INTO V_VAR
	VALUES (540,
	537,
	'session',
	1,
	106);
INSERT INTO V_INT
	VALUES (540,
	0,
	102);
INSERT INTO V_VAR
	VALUES (547,
	537,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (547,
	0,
	147);
INSERT INTO V_VAR
	VALUES (548,
	537,
	'pace',
	1,
	10);
INSERT INTO V_TRN
	VALUES (548,
	0,
	'');
INSERT INTO SM_STATE
	VALUES (555,
	477,
	0,
	'displayHeartRate',
	4,
	0);
INSERT INTO SM_SEME
	VALUES (555,
	148,
	477,
	0);
INSERT INTO SM_SEME
	VALUES (555,
	478,
	477,
	0);
INSERT INTO SM_MOAH
	VALUES (556,
	477,
	555);
INSERT INTO SM_AH
	VALUES (556,
	477);
INSERT INTO SM_ACT
	VALUES (556,
	477,
	1,
	'select one session 
  related by self->WorkoutSession[R7.''indicates current status of''];
heartRate = session.currentHeartRate;
send UI::setData(value: heartRate, unit: Unit::bpm);
send UI::setIndicator( indicator: Display::goalDispositionIndicator() );
',
	'');
INSERT INTO ACT_SAB
	VALUES (557,
	477,
	556);
INSERT INTO ACT_ACT
	VALUES (557,
	'state',
	0,
	558,
	0,
	0,
	'Display::displayHeartRate',
	0);
INSERT INTO ACT_BLK
	VALUES (558,
	1,
	0,
	0,
	'Display',
	'',
	'',
	5,
	1,
	5,
	35,
	0,
	0,
	2,
	35,
	2,
	38,
	4,
	42,
	0,
	557,
	0);
INSERT INTO ACT_SMT
	VALUES (559,
	558,
	560,
	1,
	1,
	'Display::displayHeartRate line: 1');
INSERT INTO ACT_SEL
	VALUES (559,
	561,
	1,
	'one',
	562);
INSERT INTO ACT_SR
	VALUES (559);
INSERT INTO ACT_LNK
	VALUES (563,
	'''indicates current status of''',
	559,
	146,
	0,
	2,
	102,
	2,
	20,
	2,
	35,
	2,
	38);
INSERT INTO ACT_SMT
	VALUES (560,
	558,
	564,
	3,
	1,
	'Display::displayHeartRate line: 3');
INSERT INTO ACT_AI
	VALUES (560,
	565,
	566,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (564,
	558,
	567,
	4,
	1,
	'Display::displayHeartRate line: 4');
INSERT INTO ACT_IOP
	VALUES (564,
	4,
	10,
	4,
	6,
	0,
	74,
	0);
INSERT INTO ACT_SMT
	VALUES (567,
	558,
	0,
	5,
	1,
	'Display::displayHeartRate line: 5');
INSERT INTO ACT_IOP
	VALUES (567,
	5,
	10,
	5,
	6,
	0,
	77,
	0);
INSERT INTO V_VAL
	VALUES (562,
	0,
	0,
	2,
	14,
	17,
	0,
	0,
	0,
	0,
	106,
	558);
INSERT INTO V_IRF
	VALUES (562,
	568);
INSERT INTO V_VAL
	VALUES (566,
	1,
	1,
	3,
	1,
	9,
	0,
	0,
	0,
	0,
	30,
	558);
INSERT INTO V_TVL
	VALUES (566,
	569);
INSERT INTO V_VAL
	VALUES (570,
	0,
	0,
	3,
	13,
	19,
	0,
	0,
	0,
	0,
	106,
	558);
INSERT INTO V_IRF
	VALUES (570,
	561);
INSERT INTO V_VAL
	VALUES (565,
	0,
	0,
	3,
	21,
	36,
	0,
	0,
	0,
	0,
	30,
	558);
INSERT INTO V_AVL
	VALUES (565,
	570,
	102,
	571);
INSERT INTO V_VAL
	VALUES (572,
	0,
	0,
	4,
	25,
	33,
	0,
	0,
	0,
	0,
	30,
	558);
INSERT INTO V_TVL
	VALUES (572,
	569);
INSERT INTO V_PAR
	VALUES (572,
	564,
	0,
	'value',
	573,
	4,
	18);
INSERT INTO V_VAL
	VALUES (573,
	0,
	0,
	4,
	48,
	50,
	0,
	0,
	0,
	0,
	24,
	558);
INSERT INTO V_LEN
	VALUES (573,
	574,
	4,
	42);
INSERT INTO V_PAR
	VALUES (573,
	564,
	0,
	'unit',
	0,
	4,
	36);
INSERT INTO V_VAL
	VALUES (575,
	0,
	0,
	5,
	44,
	-1,
	0,
	0,
	0,
	0,
	27,
	558);
INSERT INTO V_TRV
	VALUES (575,
	424,
	0,
	1,
	5,
	35);
INSERT INTO V_PAR
	VALUES (575,
	567,
	0,
	'indicator',
	0,
	5,
	24);
INSERT INTO V_VAR
	VALUES (561,
	558,
	'session',
	1,
	106);
INSERT INTO V_INT
	VALUES (561,
	0,
	102);
INSERT INTO V_VAR
	VALUES (568,
	558,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (568,
	0,
	147);
INSERT INTO V_VAR
	VALUES (569,
	558,
	'heartRate',
	1,
	30);
INSERT INTO V_TRN
	VALUES (569,
	0,
	'');
INSERT INTO SM_STATE
	VALUES (576,
	477,
	0,
	'displayLapCount',
	5,
	0);
INSERT INTO SM_SEME
	VALUES (576,
	148,
	477,
	0);
INSERT INTO SM_SEME
	VALUES (576,
	478,
	477,
	0);
INSERT INTO SM_MOAH
	VALUES (577,
	477,
	576);
INSERT INTO SM_AH
	VALUES (577,
	477);
INSERT INTO SM_ACT
	VALUES (577,
	477,
	1,
	'select many lapMarkers related by
  self->WorkoutSession[R7.''indicates current status of'']->
  TrackLog[R4.''captures path in'']->LapMarker[R5.''has laps defined by''];
send UI::setData(value: cardinality lapMarkers, unit: Unit::laps);
send UI::setIndicator( indicator: Display::goalDispositionIndicator() );
',
	'');
INSERT INTO ACT_SAB
	VALUES (578,
	477,
	577);
INSERT INTO ACT_ACT
	VALUES (578,
	'state',
	0,
	579,
	0,
	0,
	'Display::displayLapCount',
	0);
INSERT INTO ACT_BLK
	VALUES (579,
	1,
	0,
	0,
	'Display',
	'',
	'',
	5,
	1,
	5,
	35,
	0,
	0,
	3,
	46,
	3,
	49,
	4,
	55,
	0,
	578,
	0);
INSERT INTO ACT_SMT
	VALUES (580,
	579,
	581,
	1,
	1,
	'Display::displayLapCount line: 1');
INSERT INTO ACT_SEL
	VALUES (580,
	582,
	1,
	'many',
	583);
INSERT INTO ACT_SR
	VALUES (580);
INSERT INTO ACT_LNK
	VALUES (584,
	'''indicates current status of''',
	580,
	146,
	585,
	2,
	102,
	2,
	9,
	2,
	24,
	2,
	27);
INSERT INTO ACT_LNK
	VALUES (585,
	'''captures path in''',
	0,
	232,
	586,
	2,
	213,
	3,
	3,
	3,
	12,
	3,
	15);
INSERT INTO ACT_LNK
	VALUES (586,
	'''has laps defined by''',
	0,
	223,
	0,
	3,
	224,
	3,
	36,
	3,
	46,
	3,
	49);
INSERT INTO ACT_SMT
	VALUES (581,
	579,
	587,
	4,
	1,
	'Display::displayLapCount line: 4');
INSERT INTO ACT_IOP
	VALUES (581,
	4,
	10,
	4,
	6,
	0,
	74,
	0);
INSERT INTO ACT_SMT
	VALUES (587,
	579,
	0,
	5,
	1,
	'Display::displayLapCount line: 5');
INSERT INTO ACT_IOP
	VALUES (587,
	5,
	10,
	5,
	6,
	0,
	77,
	0);
INSERT INTO V_VAL
	VALUES (583,
	0,
	0,
	2,
	3,
	6,
	0,
	0,
	0,
	0,
	106,
	579);
INSERT INTO V_IRF
	VALUES (583,
	588);
INSERT INTO V_VAL
	VALUES (589,
	0,
	0,
	4,
	37,
	46,
	0,
	0,
	0,
	0,
	590,
	579);
INSERT INTO V_ISR
	VALUES (589,
	582);
INSERT INTO V_VAL
	VALUES (591,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	30,
	579);
INSERT INTO V_UNY
	VALUES (591,
	589,
	'cardinality');
INSERT INTO V_PAR
	VALUES (591,
	581,
	0,
	'value',
	592,
	4,
	18);
INSERT INTO V_VAL
	VALUES (592,
	0,
	0,
	4,
	61,
	64,
	0,
	0,
	0,
	0,
	24,
	579);
INSERT INTO V_LEN
	VALUES (592,
	593,
	4,
	55);
INSERT INTO V_PAR
	VALUES (592,
	581,
	0,
	'unit',
	0,
	4,
	49);
INSERT INTO V_VAL
	VALUES (594,
	0,
	0,
	5,
	44,
	-1,
	0,
	0,
	0,
	0,
	27,
	579);
INSERT INTO V_TRV
	VALUES (594,
	424,
	0,
	1,
	5,
	35);
INSERT INTO V_PAR
	VALUES (594,
	587,
	0,
	'indicator',
	0,
	5,
	24);
INSERT INTO V_VAR
	VALUES (582,
	579,
	'lapMarkers',
	1,
	590);
INSERT INTO V_INS
	VALUES (582,
	224);
INSERT INTO V_VAR
	VALUES (588,
	579,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (588,
	0,
	147);
INSERT INTO SM_NSTXN
	VALUES (595,
	477,
	479,
	148,
	0);
INSERT INTO SM_TAH
	VALUES (596,
	477,
	595);
INSERT INTO SM_AH
	VALUES (596,
	477);
INSERT INTO SM_ACT
	VALUES (596,
	477,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (597,
	477,
	596);
INSERT INTO ACT_ACT
	VALUES (597,
	'transition',
	0,
	598,
	0,
	0,
	'Display1: modeChange',
	0);
INSERT INTO ACT_BLK
	VALUES (598,
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
	597,
	0);
INSERT INTO SM_TXN
	VALUES (595,
	477,
	513,
	0);
INSERT INTO SM_NSTXN
	VALUES (599,
	477,
	513,
	148,
	0);
INSERT INTO SM_TAH
	VALUES (600,
	477,
	599);
INSERT INTO SM_AH
	VALUES (600,
	477);
INSERT INTO SM_ACT
	VALUES (600,
	477,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (601,
	477,
	600);
INSERT INTO ACT_ACT
	VALUES (601,
	'transition',
	0,
	602,
	0,
	0,
	'Display1: modeChange',
	0);
INSERT INTO ACT_BLK
	VALUES (602,
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
	601,
	0);
INSERT INTO SM_TXN
	VALUES (599,
	477,
	534,
	0);
INSERT INTO SM_NSTXN
	VALUES (603,
	477,
	534,
	148,
	0);
INSERT INTO SM_TAH
	VALUES (604,
	477,
	603);
INSERT INTO SM_AH
	VALUES (604,
	477);
INSERT INTO SM_ACT
	VALUES (604,
	477,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (605,
	477,
	604);
INSERT INTO ACT_ACT
	VALUES (605,
	'transition',
	0,
	606,
	0,
	0,
	'Display1: modeChange',
	0);
INSERT INTO ACT_BLK
	VALUES (606,
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
	605,
	0);
INSERT INTO SM_TXN
	VALUES (603,
	477,
	555,
	0);
INSERT INTO SM_NSTXN
	VALUES (607,
	477,
	555,
	148,
	0);
INSERT INTO SM_TAH
	VALUES (608,
	477,
	607);
INSERT INTO SM_AH
	VALUES (608,
	477);
INSERT INTO SM_ACT
	VALUES (608,
	477,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (609,
	477,
	608);
INSERT INTO ACT_ACT
	VALUES (609,
	'transition',
	0,
	610,
	0,
	0,
	'Display1: modeChange',
	0);
INSERT INTO ACT_BLK
	VALUES (610,
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
	609,
	0);
INSERT INTO SM_TXN
	VALUES (607,
	477,
	576,
	0);
INSERT INTO SM_NSTXN
	VALUES (611,
	477,
	479,
	478,
	0);
INSERT INTO SM_TAH
	VALUES (612,
	477,
	611);
INSERT INTO SM_AH
	VALUES (612,
	477);
INSERT INTO SM_ACT
	VALUES (612,
	477,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (613,
	477,
	612);
INSERT INTO ACT_ACT
	VALUES (613,
	'transition',
	0,
	614,
	0,
	0,
	'Display2: refresh',
	0);
INSERT INTO ACT_BLK
	VALUES (614,
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
	613,
	0);
INSERT INTO SM_TXN
	VALUES (611,
	477,
	479,
	0);
INSERT INTO SM_NSTXN
	VALUES (615,
	477,
	513,
	478,
	0);
INSERT INTO SM_TAH
	VALUES (616,
	477,
	615);
INSERT INTO SM_AH
	VALUES (616,
	477);
INSERT INTO SM_ACT
	VALUES (616,
	477,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (617,
	477,
	616);
INSERT INTO ACT_ACT
	VALUES (617,
	'transition',
	0,
	618,
	0,
	0,
	'Display2: refresh',
	0);
INSERT INTO ACT_BLK
	VALUES (618,
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
	617,
	0);
INSERT INTO SM_TXN
	VALUES (615,
	477,
	513,
	0);
INSERT INTO SM_NSTXN
	VALUES (619,
	477,
	555,
	478,
	0);
INSERT INTO SM_TAH
	VALUES (620,
	477,
	619);
INSERT INTO SM_AH
	VALUES (620,
	477);
INSERT INTO SM_ACT
	VALUES (620,
	477,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (621,
	477,
	620);
INSERT INTO ACT_ACT
	VALUES (621,
	'transition',
	0,
	622,
	0,
	0,
	'Display2: refresh',
	0);
INSERT INTO ACT_BLK
	VALUES (622,
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
	621,
	0);
INSERT INTO SM_TXN
	VALUES (619,
	477,
	555,
	0);
INSERT INTO SM_NSTXN
	VALUES (623,
	477,
	576,
	478,
	0);
INSERT INTO SM_TAH
	VALUES (624,
	477,
	623);
INSERT INTO SM_AH
	VALUES (624,
	477);
INSERT INTO SM_ACT
	VALUES (624,
	477,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (625,
	477,
	624);
INSERT INTO ACT_ACT
	VALUES (625,
	'transition',
	0,
	626,
	0,
	0,
	'Display2: refresh',
	0);
INSERT INTO ACT_BLK
	VALUES (626,
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
	625,
	0);
INSERT INTO SM_TXN
	VALUES (623,
	477,
	576,
	0);
INSERT INTO SM_NSTXN
	VALUES (627,
	477,
	534,
	478,
	0);
INSERT INTO SM_TAH
	VALUES (628,
	477,
	627);
INSERT INTO SM_AH
	VALUES (628,
	477);
INSERT INTO SM_ACT
	VALUES (628,
	477,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (629,
	477,
	628);
INSERT INTO ACT_ACT
	VALUES (629,
	'transition',
	0,
	630,
	0,
	0,
	'Display2: refresh',
	0);
INSERT INTO ACT_BLK
	VALUES (630,
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
	629,
	0);
INSERT INTO SM_TXN
	VALUES (627,
	477,
	534,
	0);
INSERT INTO SM_NSTXN
	VALUES (631,
	477,
	576,
	148,
	0);
INSERT INTO SM_TAH
	VALUES (632,
	477,
	631);
INSERT INTO SM_AH
	VALUES (632,
	477);
INSERT INTO SM_ACT
	VALUES (632,
	477,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (633,
	477,
	632);
INSERT INTO ACT_ACT
	VALUES (633,
	'transition',
	0,
	634,
	0,
	0,
	'Display1: modeChange',
	0);
INSERT INTO ACT_BLK
	VALUES (634,
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
	633,
	0);
INSERT INTO SM_TXN
	VALUES (631,
	477,
	479,
	0);
INSERT INTO PE_PE
	VALUES (236,
	1,
	211,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (236,
	'HeartRateSample',
	5,
	'HeartRateSample',
	'Each instance represents a single heart-rate sample.',
	0);
INSERT INTO O_NBATTR
	VALUES (635,
	236);
INSERT INTO O_BATTR
	VALUES (635,
	236);
INSERT INTO O_ATTR
	VALUES (635,
	236,
	0,
	'heartRate',
	'Heart rate expressed in beats per minute.',
	'',
	'heartRate',
	0,
	30,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (636,
	236);
INSERT INTO O_BATTR
	VALUES (636,
	236);
INSERT INTO O_ATTR
	VALUES (636,
	236,
	635,
	'time',
	'Number of seconds between start time for the associated workout and recording of this heart rate sample.',
	'',
	'time',
	0,
	30,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	236);
INSERT INTO O_ID
	VALUES (1,
	236);
INSERT INTO O_ID
	VALUES (2,
	236);
INSERT INTO PE_PE
	VALUES (224,
	1,
	211,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (224,
	'LapMarker',
	4,
	'LapMarker',
	'Each instance represents a single lap marker.',
	0);
INSERT INTO O_NBATTR
	VALUES (637,
	224);
INSERT INTO O_BATTR
	VALUES (637,
	224);
INSERT INTO O_ATTR
	VALUES (637,
	224,
	0,
	'lapTime',
	'Number of seconds between start time for the associated workout and this lap marker.',
	'',
	'lapTime',
	0,
	30,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	224);
INSERT INTO O_ID
	VALUES (1,
	224);
INSERT INTO O_ID
	VALUES (2,
	224);
INSERT INTO PE_PE
	VALUES (213,
	1,
	211,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (213,
	'TrackLog',
	2,
	'TrackLog',
	'The collection of track points stored during a workout session.

Presently the device supports only a single track log, and it 
is always the active one for the current workout session.
However, future releases may add a capability for storing
multiple track logs on the device.',
	0);
INSERT INTO O_TFR
	VALUES (638,
	213,
	'addTrackPoint',
	'',
	6,
	1,
	'// Add a track point to this track log, update the accumulated distance
// and current speed, and then notify the UI.

// Create a new track point, retrieving the current location from the GPS.
create object instance trackPoint of TrackPoint;
select one workoutTimer related by 
  self->WorkoutSession[R4.''represents path for'']->WorkoutTimer[R8.''is timed by''];
trackPoint.time = workoutTimer.time;
send Location::getLocation( latitude: trackPoint.latitude, longitude: trackPoint.longitude );

// Add the newly created track point to the track log.
select one firstPoint related by self->TrackPoint[R1];
select one lastPoint related by self->TrackPoint[R3];

// Explicit variable declarations for later use outside if-else clause.
isFirstTrackPoint = false;
lastLatitude = 0.0;
lastLongitude = 0.0;  
if (empty firstPoint)
  isFirstTrackPoint = true;
  relate self to trackPoint across R1.''has first'';
  relate self to trackPoint across R3.''has last'';
else 
  // Save last location for use in updating accumulated distance.
  lastLatitude = lastPoint.latitude;
  lastLongitude = lastPoint.longitude;
  unrelate self from lastPoint across R3.''has last'';
  relate self to trackPoint across R3.''has last'';
  relate lastPoint to trackPoint across R2.''follows'';
end if;

// Update accumulated distance and current speed.
distance = 0.0;
if (not isFirstTrackPoint)
  send distance = Location::getDistance( fromLat: lastLatitude, fromLong: lastLongitude,
                                     toLat: trackPoint.latitude, toLong: trackPoint.longitude );
end if;

select one session related by self->WorkoutSession[R4.''represents path for''];
session.accumulatedDistance = session.accumulatedDistance + distance;

// Notify display of of the updated values.
self.updateDisplay();',
	1,
	'',
	0);
INSERT INTO ACT_OPB
	VALUES (639,
	638);
INSERT INTO ACT_ACT
	VALUES (639,
	'operation',
	0,
	640,
	0,
	0,
	'TrackLog::addTrackPoint',
	0);
INSERT INTO ACT_BLK
	VALUES (640,
	1,
	0,
	0,
	'',
	'',
	'',
	43,
	1,
	39,
	37,
	0,
	0,
	39,
	52,
	39,
	55,
	0,
	0,
	0,
	639,
	0);
INSERT INTO ACT_SMT
	VALUES (641,
	640,
	642,
	5,
	1,
	'TrackLog::addTrackPoint line: 5');
INSERT INTO ACT_CR
	VALUES (641,
	643,
	1,
	215,
	5,
	38);
INSERT INTO ACT_SMT
	VALUES (642,
	640,
	644,
	6,
	1,
	'TrackLog::addTrackPoint line: 6');
INSERT INTO ACT_SEL
	VALUES (642,
	645,
	1,
	'one',
	646);
INSERT INTO ACT_SR
	VALUES (642);
INSERT INTO ACT_LNK
	VALUES (647,
	'''represents path for''',
	642,
	232,
	648,
	2,
	102,
	7,
	9,
	7,
	24,
	7,
	27);
INSERT INTO ACT_LNK
	VALUES (648,
	'''is timed by''',
	0,
	229,
	0,
	2,
	118,
	7,
	51,
	7,
	64,
	7,
	67);
INSERT INTO ACT_SMT
	VALUES (644,
	640,
	649,
	8,
	1,
	'TrackLog::addTrackPoint line: 8');
INSERT INTO ACT_AI
	VALUES (644,
	650,
	651,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (649,
	640,
	652,
	9,
	1,
	'TrackLog::addTrackPoint line: 9');
INSERT INTO ACT_IOP
	VALUES (649,
	9,
	16,
	9,
	6,
	0,
	63,
	0);
INSERT INTO ACT_SMT
	VALUES (652,
	640,
	653,
	12,
	1,
	'TrackLog::addTrackPoint line: 12');
INSERT INTO ACT_SEL
	VALUES (652,
	654,
	1,
	'one',
	655);
INSERT INTO ACT_SR
	VALUES (652);
INSERT INTO ACT_LNK
	VALUES (656,
	'',
	652,
	212,
	0,
	2,
	215,
	12,
	40,
	12,
	51,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (653,
	640,
	657,
	13,
	1,
	'TrackLog::addTrackPoint line: 13');
INSERT INTO ACT_SEL
	VALUES (653,
	658,
	1,
	'one',
	659);
INSERT INTO ACT_SR
	VALUES (653);
INSERT INTO ACT_LNK
	VALUES (660,
	'',
	653,
	220,
	0,
	2,
	215,
	13,
	39,
	13,
	50,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (657,
	640,
	661,
	16,
	1,
	'TrackLog::addTrackPoint line: 16');
INSERT INTO ACT_AI
	VALUES (657,
	662,
	663,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (661,
	640,
	664,
	17,
	1,
	'TrackLog::addTrackPoint line: 17');
INSERT INTO ACT_AI
	VALUES (661,
	665,
	666,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (664,
	640,
	667,
	18,
	1,
	'TrackLog::addTrackPoint line: 18');
INSERT INTO ACT_AI
	VALUES (664,
	668,
	669,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (667,
	640,
	670,
	19,
	1,
	'TrackLog::addTrackPoint line: 19');
INSERT INTO ACT_IF
	VALUES (667,
	671,
	672,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (673,
	640,
	0,
	23,
	1,
	'TrackLog::addTrackPoint line: 23');
INSERT INTO ACT_E
	VALUES (673,
	674,
	667);
INSERT INTO ACT_SMT
	VALUES (670,
	640,
	675,
	33,
	1,
	'TrackLog::addTrackPoint line: 33');
INSERT INTO ACT_AI
	VALUES (670,
	676,
	677,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (675,
	640,
	678,
	34,
	1,
	'TrackLog::addTrackPoint line: 34');
INSERT INTO ACT_IF
	VALUES (675,
	679,
	680,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (678,
	640,
	681,
	39,
	1,
	'TrackLog::addTrackPoint line: 39');
INSERT INTO ACT_SEL
	VALUES (678,
	682,
	1,
	'one',
	683);
INSERT INTO ACT_SR
	VALUES (678);
INSERT INTO ACT_LNK
	VALUES (684,
	'''represents path for''',
	678,
	232,
	0,
	2,
	102,
	39,
	37,
	39,
	52,
	39,
	55);
INSERT INTO ACT_SMT
	VALUES (681,
	640,
	685,
	40,
	1,
	'TrackLog::addTrackPoint line: 40');
INSERT INTO ACT_AI
	VALUES (681,
	686,
	687,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (685,
	640,
	0,
	43,
	1,
	'TrackLog::addTrackPoint line: 43');
INSERT INTO ACT_TFM
	VALUES (685,
	688,
	689,
	43,
	6,
	0,
	0);
INSERT INTO V_VAL
	VALUES (646,
	0,
	0,
	7,
	3,
	6,
	0,
	0,
	0,
	0,
	106,
	640);
INSERT INTO V_IRF
	VALUES (646,
	689);
INSERT INTO V_VAL
	VALUES (690,
	1,
	0,
	8,
	1,
	10,
	0,
	0,
	0,
	0,
	106,
	640);
INSERT INTO V_IRF
	VALUES (690,
	643);
INSERT INTO V_VAL
	VALUES (651,
	1,
	0,
	8,
	12,
	15,
	0,
	0,
	0,
	0,
	30,
	640);
INSERT INTO V_AVL
	VALUES (651,
	690,
	215,
	691);
INSERT INTO V_VAL
	VALUES (692,
	0,
	0,
	8,
	19,
	30,
	0,
	0,
	0,
	0,
	106,
	640);
INSERT INTO V_IRF
	VALUES (692,
	645);
INSERT INTO V_VAL
	VALUES (650,
	0,
	0,
	8,
	32,
	35,
	0,
	0,
	0,
	0,
	30,
	640);
INSERT INTO V_AVL
	VALUES (650,
	692,
	118,
	422);
INSERT INTO V_VAL
	VALUES (693,
	0,
	0,
	9,
	39,
	48,
	0,
	0,
	0,
	0,
	106,
	640);
INSERT INTO V_IRF
	VALUES (693,
	643);
INSERT INTO V_VAL
	VALUES (694,
	0,
	0,
	9,
	50,
	57,
	0,
	0,
	0,
	0,
	10,
	640);
INSERT INTO V_AVL
	VALUES (694,
	693,
	215,
	695);
INSERT INTO V_PAR
	VALUES (694,
	649,
	0,
	'latitude',
	696,
	9,
	29);
INSERT INTO V_VAL
	VALUES (697,
	0,
	0,
	9,
	71,
	80,
	0,
	0,
	0,
	0,
	106,
	640);
INSERT INTO V_IRF
	VALUES (697,
	643);
INSERT INTO V_VAL
	VALUES (696,
	0,
	0,
	9,
	82,
	90,
	0,
	0,
	0,
	0,
	10,
	640);
INSERT INTO V_AVL
	VALUES (696,
	697,
	215,
	698);
INSERT INTO V_PAR
	VALUES (696,
	649,
	0,
	'longitude',
	0,
	9,
	60);
INSERT INTO V_VAL
	VALUES (655,
	0,
	0,
	12,
	34,
	37,
	0,
	0,
	0,
	0,
	106,
	640);
INSERT INTO V_IRF
	VALUES (655,
	689);
INSERT INTO V_VAL
	VALUES (659,
	0,
	0,
	13,
	33,
	36,
	0,
	0,
	0,
	0,
	106,
	640);
INSERT INTO V_IRF
	VALUES (659,
	689);
INSERT INTO V_VAL
	VALUES (663,
	1,
	1,
	16,
	1,
	17,
	0,
	0,
	0,
	0,
	108,
	640);
INSERT INTO V_TVL
	VALUES (663,
	699);
INSERT INTO V_VAL
	VALUES (662,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	640);
INSERT INTO V_LBO
	VALUES (662,
	'FALSE');
INSERT INTO V_VAL
	VALUES (666,
	1,
	1,
	17,
	1,
	12,
	0,
	0,
	0,
	0,
	10,
	640);
INSERT INTO V_TVL
	VALUES (666,
	700);
INSERT INTO V_VAL
	VALUES (665,
	0,
	0,
	17,
	16,
	18,
	0,
	0,
	0,
	0,
	10,
	640);
INSERT INTO V_LRL
	VALUES (665,
	'0.0');
INSERT INTO V_VAL
	VALUES (669,
	1,
	1,
	18,
	1,
	13,
	0,
	0,
	0,
	0,
	10,
	640);
INSERT INTO V_TVL
	VALUES (669,
	701);
INSERT INTO V_VAL
	VALUES (668,
	0,
	0,
	18,
	17,
	19,
	0,
	0,
	0,
	0,
	10,
	640);
INSERT INTO V_LRL
	VALUES (668,
	'0.0');
INSERT INTO V_VAL
	VALUES (702,
	0,
	0,
	19,
	11,
	20,
	0,
	0,
	0,
	0,
	106,
	640);
INSERT INTO V_IRF
	VALUES (702,
	654);
INSERT INTO V_VAL
	VALUES (672,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	640);
INSERT INTO V_UNY
	VALUES (672,
	702,
	'empty');
INSERT INTO V_VAL
	VALUES (677,
	1,
	1,
	33,
	1,
	8,
	0,
	0,
	0,
	0,
	10,
	640);
INSERT INTO V_TVL
	VALUES (677,
	703);
INSERT INTO V_VAL
	VALUES (676,
	0,
	0,
	33,
	12,
	14,
	0,
	0,
	0,
	0,
	10,
	640);
INSERT INTO V_LRL
	VALUES (676,
	'0.0');
INSERT INTO V_VAL
	VALUES (704,
	0,
	0,
	34,
	9,
	25,
	0,
	0,
	0,
	0,
	108,
	640);
INSERT INTO V_TVL
	VALUES (704,
	699);
INSERT INTO V_VAL
	VALUES (680,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	640);
INSERT INTO V_UNY
	VALUES (680,
	704,
	'not');
INSERT INTO V_VAL
	VALUES (683,
	0,
	0,
	39,
	31,
	34,
	0,
	0,
	0,
	0,
	106,
	640);
INSERT INTO V_IRF
	VALUES (683,
	689);
INSERT INTO V_VAL
	VALUES (705,
	1,
	0,
	40,
	1,
	7,
	0,
	0,
	0,
	0,
	106,
	640);
INSERT INTO V_IRF
	VALUES (705,
	682);
INSERT INTO V_VAL
	VALUES (687,
	1,
	0,
	40,
	9,
	27,
	0,
	0,
	0,
	0,
	10,
	640);
INSERT INTO V_AVL
	VALUES (687,
	705,
	102,
	499);
INSERT INTO V_VAL
	VALUES (706,
	0,
	0,
	40,
	31,
	37,
	0,
	0,
	0,
	0,
	106,
	640);
INSERT INTO V_IRF
	VALUES (706,
	682);
INSERT INTO V_VAL
	VALUES (707,
	0,
	0,
	40,
	39,
	57,
	0,
	0,
	0,
	0,
	10,
	640);
INSERT INTO V_AVL
	VALUES (707,
	706,
	102,
	499);
INSERT INTO V_VAL
	VALUES (686,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	10,
	640);
INSERT INTO V_BIN
	VALUES (686,
	708,
	707,
	'+');
INSERT INTO V_VAL
	VALUES (708,
	0,
	0,
	40,
	61,
	68,
	0,
	0,
	0,
	0,
	10,
	640);
INSERT INTO V_TVL
	VALUES (708,
	703);
INSERT INTO V_VAR
	VALUES (643,
	640,
	'trackPoint',
	1,
	106);
INSERT INTO V_INT
	VALUES (643,
	0,
	215);
INSERT INTO V_VAR
	VALUES (645,
	640,
	'workoutTimer',
	1,
	106);
INSERT INTO V_INT
	VALUES (645,
	0,
	118);
INSERT INTO V_VAR
	VALUES (689,
	640,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (689,
	0,
	213);
INSERT INTO V_VAR
	VALUES (654,
	640,
	'firstPoint',
	1,
	106);
INSERT INTO V_INT
	VALUES (654,
	0,
	215);
INSERT INTO V_VAR
	VALUES (658,
	640,
	'lastPoint',
	1,
	106);
INSERT INTO V_INT
	VALUES (658,
	0,
	215);
INSERT INTO V_VAR
	VALUES (699,
	640,
	'isFirstTrackPoint',
	1,
	108);
INSERT INTO V_TRN
	VALUES (699,
	0,
	'');
INSERT INTO V_VAR
	VALUES (700,
	640,
	'lastLatitude',
	1,
	10);
INSERT INTO V_TRN
	VALUES (700,
	0,
	'');
INSERT INTO V_VAR
	VALUES (701,
	640,
	'lastLongitude',
	1,
	10);
INSERT INTO V_TRN
	VALUES (701,
	0,
	'');
INSERT INTO V_VAR
	VALUES (703,
	640,
	'distance',
	1,
	10);
INSERT INTO V_TRN
	VALUES (703,
	0,
	'');
INSERT INTO V_VAR
	VALUES (682,
	640,
	'session',
	1,
	106);
INSERT INTO V_INT
	VALUES (682,
	0,
	102);
INSERT INTO ACT_BLK
	VALUES (671,
	0,
	0,
	0,
	'''has last''',
	'',
	'',
	22,
	3,
	0,
	0,
	0,
	0,
	22,
	36,
	22,
	39,
	0,
	0,
	0,
	639,
	0);
INSERT INTO ACT_SMT
	VALUES (709,
	671,
	710,
	20,
	3,
	'TrackLog::addTrackPoint line: 20');
INSERT INTO ACT_AI
	VALUES (709,
	711,
	712,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (710,
	671,
	713,
	21,
	3,
	'TrackLog::addTrackPoint line: 21');
INSERT INTO ACT_REL
	VALUES (710,
	689,
	643,
	'''has first''',
	212,
	21,
	36,
	21,
	39);
INSERT INTO ACT_SMT
	VALUES (713,
	671,
	0,
	22,
	3,
	'TrackLog::addTrackPoint line: 22');
INSERT INTO ACT_REL
	VALUES (713,
	689,
	643,
	'''has last''',
	220,
	22,
	36,
	22,
	39);
INSERT INTO V_VAL
	VALUES (712,
	1,
	0,
	20,
	3,
	19,
	0,
	0,
	0,
	0,
	108,
	671);
INSERT INTO V_TVL
	VALUES (712,
	699);
INSERT INTO V_VAL
	VALUES (711,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	671);
INSERT INTO V_LBO
	VALUES (711,
	'TRUE');
INSERT INTO ACT_BLK
	VALUES (674,
	0,
	0,
	0,
	'''follows''',
	'',
	'',
	29,
	3,
	0,
	0,
	0,
	0,
	29,
	41,
	29,
	44,
	0,
	0,
	0,
	639,
	0);
INSERT INTO ACT_SMT
	VALUES (714,
	674,
	715,
	25,
	3,
	'TrackLog::addTrackPoint line: 25');
INSERT INTO ACT_AI
	VALUES (714,
	716,
	717,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (715,
	674,
	718,
	26,
	3,
	'TrackLog::addTrackPoint line: 26');
INSERT INTO ACT_AI
	VALUES (715,
	719,
	720,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (718,
	674,
	721,
	27,
	3,
	'TrackLog::addTrackPoint line: 27');
INSERT INTO ACT_UNR
	VALUES (718,
	689,
	658,
	'''has last''',
	220,
	27,
	39,
	27,
	42);
INSERT INTO ACT_SMT
	VALUES (721,
	674,
	722,
	28,
	3,
	'TrackLog::addTrackPoint line: 28');
INSERT INTO ACT_REL
	VALUES (721,
	689,
	643,
	'''has last''',
	220,
	28,
	36,
	28,
	39);
INSERT INTO ACT_SMT
	VALUES (722,
	674,
	0,
	29,
	3,
	'TrackLog::addTrackPoint line: 29');
INSERT INTO ACT_REL
	VALUES (722,
	658,
	643,
	'''follows''',
	217,
	29,
	41,
	29,
	44);
INSERT INTO V_VAL
	VALUES (717,
	1,
	0,
	25,
	3,
	14,
	0,
	0,
	0,
	0,
	10,
	674);
INSERT INTO V_TVL
	VALUES (717,
	700);
INSERT INTO V_VAL
	VALUES (723,
	0,
	0,
	25,
	18,
	26,
	0,
	0,
	0,
	0,
	106,
	674);
INSERT INTO V_IRF
	VALUES (723,
	658);
INSERT INTO V_VAL
	VALUES (716,
	0,
	0,
	25,
	28,
	35,
	0,
	0,
	0,
	0,
	10,
	674);
INSERT INTO V_AVL
	VALUES (716,
	723,
	215,
	695);
INSERT INTO V_VAL
	VALUES (720,
	1,
	0,
	26,
	3,
	15,
	0,
	0,
	0,
	0,
	10,
	674);
INSERT INTO V_TVL
	VALUES (720,
	701);
INSERT INTO V_VAL
	VALUES (724,
	0,
	0,
	26,
	19,
	27,
	0,
	0,
	0,
	0,
	106,
	674);
INSERT INTO V_IRF
	VALUES (724,
	658);
INSERT INTO V_VAL
	VALUES (719,
	0,
	0,
	26,
	29,
	37,
	0,
	0,
	0,
	0,
	10,
	674);
INSERT INTO V_AVL
	VALUES (719,
	724,
	215,
	698);
INSERT INTO ACT_BLK
	VALUES (679,
	0,
	0,
	0,
	'Location',
	'',
	'',
	35,
	3,
	35,
	19,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	639,
	0);
INSERT INTO ACT_SMT
	VALUES (725,
	679,
	0,
	35,
	3,
	'TrackLog::addTrackPoint line: 35');
INSERT INTO ACT_AI
	VALUES (725,
	726,
	727,
	0,
	0);
INSERT INTO V_VAL
	VALUES (727,
	1,
	0,
	35,
	8,
	15,
	0,
	0,
	0,
	0,
	10,
	679);
INSERT INTO V_TVL
	VALUES (727,
	703);
INSERT INTO V_VAL
	VALUES (726,
	0,
	0,
	35,
	29,
	40,
	35,
	42,
	36,
	66,
	10,
	679);
INSERT INTO V_MSV
	VALUES (726,
	0,
	58,
	1,
	35,
	19,
	0);
INSERT INTO V_VAL
	VALUES (728,
	0,
	0,
	35,
	51,
	62,
	0,
	0,
	0,
	0,
	10,
	679);
INSERT INTO V_TVL
	VALUES (728,
	700);
INSERT INTO V_PAR
	VALUES (728,
	0,
	726,
	'fromLat',
	729,
	35,
	42);
INSERT INTO V_VAL
	VALUES (729,
	0,
	0,
	35,
	75,
	87,
	0,
	0,
	0,
	0,
	10,
	679);
INSERT INTO V_TVL
	VALUES (729,
	701);
INSERT INTO V_PAR
	VALUES (729,
	0,
	726,
	'fromLong',
	730,
	35,
	65);
INSERT INTO V_VAL
	VALUES (731,
	0,
	0,
	36,
	45,
	54,
	0,
	0,
	0,
	0,
	106,
	679);
INSERT INTO V_IRF
	VALUES (731,
	643);
INSERT INTO V_VAL
	VALUES (730,
	0,
	0,
	36,
	56,
	63,
	0,
	0,
	0,
	0,
	10,
	679);
INSERT INTO V_AVL
	VALUES (730,
	731,
	215,
	695);
INSERT INTO V_PAR
	VALUES (730,
	0,
	726,
	'toLat',
	732,
	36,
	38);
INSERT INTO V_VAL
	VALUES (733,
	0,
	0,
	36,
	74,
	83,
	0,
	0,
	0,
	0,
	106,
	679);
INSERT INTO V_IRF
	VALUES (733,
	643);
INSERT INTO V_VAL
	VALUES (732,
	0,
	0,
	36,
	85,
	93,
	0,
	0,
	0,
	0,
	10,
	679);
INSERT INTO V_AVL
	VALUES (732,
	733,
	215,
	698);
INSERT INTO V_PAR
	VALUES (732,
	0,
	726,
	'toLong',
	0,
	36,
	66);
INSERT INTO O_TFR
	VALUES (734,
	213,
	'clearTrackPoints',
	'',
	6,
	1,
	'select one nextPoint related by self->TrackPoint[R1];
select one lastPoint related by self->TrackPoint[R3];

if (not empty lastPoint)
  unrelate self from lastPoint across R3;
end if;

if (not empty nextPoint)
  unrelate self from nextPoint across R1;
end if;

while (not empty nextPoint)
  prevPoint = nextPoint;
  select one nextPoint related by nextPoint->TrackPoint[R2.''follows''];
  if ( not_empty nextPoint )
    unrelate prevPoint from nextPoint across R2.''follows'';
  end if;
  delete object instance prevPoint;
end while;
',
	1,
	'',
	638);
INSERT INTO ACT_OPB
	VALUES (735,
	734);
INSERT INTO ACT_ACT
	VALUES (735,
	'operation',
	0,
	736,
	0,
	0,
	'TrackLog::clearTrackPoints',
	0);
INSERT INTO ACT_BLK
	VALUES (736,
	1,
	0,
	0,
	'',
	'',
	'',
	12,
	1,
	2,
	39,
	0,
	0,
	2,
	50,
	0,
	0,
	0,
	0,
	0,
	735,
	0);
INSERT INTO ACT_SMT
	VALUES (737,
	736,
	738,
	1,
	1,
	'TrackLog::clearTrackPoints line: 1');
INSERT INTO ACT_SEL
	VALUES (737,
	739,
	1,
	'one',
	740);
INSERT INTO ACT_SR
	VALUES (737);
INSERT INTO ACT_LNK
	VALUES (741,
	'',
	737,
	212,
	0,
	2,
	215,
	1,
	39,
	1,
	50,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (738,
	736,
	742,
	2,
	1,
	'TrackLog::clearTrackPoints line: 2');
INSERT INTO ACT_SEL
	VALUES (738,
	743,
	1,
	'one',
	744);
INSERT INTO ACT_SR
	VALUES (738);
INSERT INTO ACT_LNK
	VALUES (745,
	'',
	738,
	220,
	0,
	2,
	215,
	2,
	39,
	2,
	50,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (742,
	736,
	746,
	4,
	1,
	'TrackLog::clearTrackPoints line: 4');
INSERT INTO ACT_IF
	VALUES (742,
	747,
	748,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (746,
	736,
	749,
	8,
	1,
	'TrackLog::clearTrackPoints line: 8');
INSERT INTO ACT_IF
	VALUES (746,
	750,
	751,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (749,
	736,
	0,
	12,
	1,
	'TrackLog::clearTrackPoints line: 12');
INSERT INTO ACT_WHL
	VALUES (749,
	752,
	753);
INSERT INTO V_VAL
	VALUES (740,
	0,
	0,
	1,
	33,
	36,
	0,
	0,
	0,
	0,
	106,
	736);
INSERT INTO V_IRF
	VALUES (740,
	754);
INSERT INTO V_VAL
	VALUES (744,
	0,
	0,
	2,
	33,
	36,
	0,
	0,
	0,
	0,
	106,
	736);
INSERT INTO V_IRF
	VALUES (744,
	754);
INSERT INTO V_VAL
	VALUES (755,
	0,
	0,
	4,
	15,
	23,
	0,
	0,
	0,
	0,
	106,
	736);
INSERT INTO V_IRF
	VALUES (755,
	743);
INSERT INTO V_VAL
	VALUES (756,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	736);
INSERT INTO V_UNY
	VALUES (756,
	755,
	'empty');
INSERT INTO V_VAL
	VALUES (748,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	736);
INSERT INTO V_UNY
	VALUES (748,
	756,
	'not');
INSERT INTO V_VAL
	VALUES (757,
	0,
	0,
	8,
	15,
	23,
	0,
	0,
	0,
	0,
	106,
	736);
INSERT INTO V_IRF
	VALUES (757,
	739);
INSERT INTO V_VAL
	VALUES (758,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	736);
INSERT INTO V_UNY
	VALUES (758,
	757,
	'empty');
INSERT INTO V_VAL
	VALUES (751,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	736);
INSERT INTO V_UNY
	VALUES (751,
	758,
	'not');
INSERT INTO V_VAL
	VALUES (759,
	0,
	0,
	12,
	18,
	26,
	0,
	0,
	0,
	0,
	106,
	736);
INSERT INTO V_IRF
	VALUES (759,
	739);
INSERT INTO V_VAL
	VALUES (760,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	736);
INSERT INTO V_UNY
	VALUES (760,
	759,
	'empty');
INSERT INTO V_VAL
	VALUES (752,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	736);
INSERT INTO V_UNY
	VALUES (752,
	760,
	'not');
INSERT INTO V_VAR
	VALUES (739,
	736,
	'nextPoint',
	1,
	106);
INSERT INTO V_INT
	VALUES (739,
	0,
	215);
INSERT INTO V_VAR
	VALUES (754,
	736,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (754,
	0,
	213);
INSERT INTO V_VAR
	VALUES (743,
	736,
	'lastPoint',
	1,
	106);
INSERT INTO V_INT
	VALUES (743,
	0,
	215);
INSERT INTO ACT_BLK
	VALUES (747,
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
	5,
	39,
	0,
	0,
	0,
	0,
	0,
	735,
	0);
INSERT INTO ACT_SMT
	VALUES (761,
	747,
	0,
	5,
	3,
	'TrackLog::clearTrackPoints line: 5');
INSERT INTO ACT_UNR
	VALUES (761,
	754,
	743,
	'',
	220,
	5,
	39,
	0,
	0);
INSERT INTO ACT_BLK
	VALUES (750,
	0,
	0,
	0,
	'',
	'',
	'',
	9,
	3,
	0,
	0,
	0,
	0,
	9,
	39,
	0,
	0,
	0,
	0,
	0,
	735,
	0);
INSERT INTO ACT_SMT
	VALUES (762,
	750,
	0,
	9,
	3,
	'TrackLog::clearTrackPoints line: 9');
INSERT INTO ACT_UNR
	VALUES (762,
	754,
	739,
	'',
	212,
	9,
	39,
	0,
	0);
INSERT INTO ACT_BLK
	VALUES (753,
	1,
	0,
	0,
	'',
	'',
	'',
	18,
	3,
	14,
	46,
	0,
	0,
	14,
	57,
	14,
	60,
	0,
	0,
	0,
	735,
	0);
INSERT INTO ACT_SMT
	VALUES (763,
	753,
	764,
	13,
	3,
	'TrackLog::clearTrackPoints line: 13');
INSERT INTO ACT_AI
	VALUES (763,
	765,
	766,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (764,
	753,
	767,
	14,
	3,
	'TrackLog::clearTrackPoints line: 14');
INSERT INTO ACT_SEL
	VALUES (764,
	739,
	0,
	'one',
	768);
INSERT INTO ACT_SR
	VALUES (764);
INSERT INTO ACT_LNK
	VALUES (769,
	'''follows''',
	764,
	217,
	0,
	2,
	215,
	14,
	46,
	14,
	57,
	14,
	60);
INSERT INTO ACT_SMT
	VALUES (767,
	753,
	770,
	15,
	3,
	'TrackLog::clearTrackPoints line: 15');
INSERT INTO ACT_IF
	VALUES (767,
	771,
	772,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (770,
	753,
	0,
	18,
	3,
	'TrackLog::clearTrackPoints line: 18');
INSERT INTO ACT_DEL
	VALUES (770,
	773);
INSERT INTO V_VAL
	VALUES (766,
	1,
	1,
	13,
	3,
	11,
	0,
	0,
	0,
	0,
	106,
	753);
INSERT INTO V_IRF
	VALUES (766,
	773);
INSERT INTO V_VAL
	VALUES (765,
	0,
	0,
	13,
	15,
	23,
	0,
	0,
	0,
	0,
	106,
	753);
INSERT INTO V_IRF
	VALUES (765,
	739);
INSERT INTO V_VAL
	VALUES (768,
	0,
	0,
	14,
	35,
	43,
	0,
	0,
	0,
	0,
	106,
	753);
INSERT INTO V_IRF
	VALUES (768,
	739);
INSERT INTO V_VAL
	VALUES (774,
	0,
	0,
	15,
	18,
	26,
	0,
	0,
	0,
	0,
	106,
	753);
INSERT INTO V_IRF
	VALUES (774,
	739);
INSERT INTO V_VAL
	VALUES (772,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	753);
INSERT INTO V_UNY
	VALUES (772,
	774,
	'not_empty');
INSERT INTO V_VAR
	VALUES (773,
	753,
	'prevPoint',
	1,
	106);
INSERT INTO V_INT
	VALUES (773,
	0,
	215);
INSERT INTO ACT_BLK
	VALUES (771,
	0,
	0,
	0,
	'''follows''',
	'',
	'',
	16,
	5,
	0,
	0,
	0,
	0,
	16,
	46,
	16,
	49,
	0,
	0,
	0,
	735,
	0);
INSERT INTO ACT_SMT
	VALUES (775,
	771,
	0,
	16,
	5,
	'TrackLog::clearTrackPoints line: 16');
INSERT INTO ACT_UNR
	VALUES (775,
	773,
	739,
	'''follows''',
	217,
	16,
	46,
	16,
	49);
INSERT INTO O_TFR
	VALUES (776,
	213,
	'addLapMarker',
	'',
	6,
	1,
	'select one timer related by self->WorkoutSession[R4.''represents path for'']->WorkoutTimer[R8.''is timed by''];
create object instance lapMarker of LapMarker;
lapMarker.lapTime = timer.time; 
relate self to lapMarker across R5.''has laps defined by'';

// Notify display of the new value.
self.updateDisplay();',
	1,
	'',
	734);
INSERT INTO ACT_OPB
	VALUES (777,
	776);
INSERT INTO ACT_ACT
	VALUES (777,
	'operation',
	0,
	778,
	0,
	0,
	'TrackLog::addLapMarker',
	0);
INSERT INTO ACT_BLK
	VALUES (778,
	1,
	0,
	0,
	'''has laps defined by''',
	'',
	'',
	7,
	1,
	2,
	37,
	0,
	0,
	4,
	33,
	4,
	36,
	0,
	0,
	0,
	777,
	0);
INSERT INTO ACT_SMT
	VALUES (779,
	778,
	780,
	1,
	1,
	'TrackLog::addLapMarker line: 1');
INSERT INTO ACT_SEL
	VALUES (779,
	781,
	1,
	'one',
	782);
INSERT INTO ACT_SR
	VALUES (779);
INSERT INTO ACT_LNK
	VALUES (783,
	'''represents path for''',
	779,
	232,
	784,
	2,
	102,
	1,
	35,
	1,
	50,
	1,
	53);
INSERT INTO ACT_LNK
	VALUES (784,
	'''is timed by''',
	0,
	229,
	0,
	2,
	118,
	1,
	77,
	1,
	90,
	1,
	93);
INSERT INTO ACT_SMT
	VALUES (780,
	778,
	785,
	2,
	1,
	'TrackLog::addLapMarker line: 2');
INSERT INTO ACT_CR
	VALUES (780,
	786,
	1,
	224,
	2,
	37);
INSERT INTO ACT_SMT
	VALUES (785,
	778,
	787,
	3,
	1,
	'TrackLog::addLapMarker line: 3');
INSERT INTO ACT_AI
	VALUES (785,
	788,
	789,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (787,
	778,
	790,
	4,
	1,
	'TrackLog::addLapMarker line: 4');
INSERT INTO ACT_REL
	VALUES (787,
	791,
	786,
	'''has laps defined by''',
	223,
	4,
	33,
	4,
	36);
INSERT INTO ACT_SMT
	VALUES (790,
	778,
	0,
	7,
	1,
	'TrackLog::addLapMarker line: 7');
INSERT INTO ACT_TFM
	VALUES (790,
	688,
	791,
	7,
	6,
	0,
	0);
INSERT INTO V_VAL
	VALUES (782,
	0,
	0,
	1,
	29,
	32,
	0,
	0,
	0,
	0,
	106,
	778);
INSERT INTO V_IRF
	VALUES (782,
	791);
INSERT INTO V_VAL
	VALUES (792,
	1,
	0,
	3,
	1,
	9,
	0,
	0,
	0,
	0,
	106,
	778);
INSERT INTO V_IRF
	VALUES (792,
	786);
INSERT INTO V_VAL
	VALUES (789,
	1,
	0,
	3,
	11,
	17,
	0,
	0,
	0,
	0,
	30,
	778);
INSERT INTO V_AVL
	VALUES (789,
	792,
	224,
	637);
INSERT INTO V_VAL
	VALUES (793,
	0,
	0,
	3,
	21,
	25,
	0,
	0,
	0,
	0,
	106,
	778);
INSERT INTO V_IRF
	VALUES (793,
	781);
INSERT INTO V_VAL
	VALUES (788,
	0,
	0,
	3,
	27,
	30,
	0,
	0,
	0,
	0,
	30,
	778);
INSERT INTO V_AVL
	VALUES (788,
	793,
	118,
	422);
INSERT INTO V_VAR
	VALUES (781,
	778,
	'timer',
	1,
	106);
INSERT INTO V_INT
	VALUES (781,
	0,
	118);
INSERT INTO V_VAR
	VALUES (791,
	778,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (791,
	0,
	213);
INSERT INTO V_VAR
	VALUES (786,
	778,
	'lapMarker',
	1,
	106);
INSERT INTO V_INT
	VALUES (786,
	0,
	224);
INSERT INTO O_TFR
	VALUES (794,
	213,
	'clearLapMarkers',
	'',
	6,
	1,
	'select many lapMarkers related by self->LapMarker[R5];
for each lapMarker in lapMarkers
  unrelate self from lapMarker across R5;
  delete object instance lapMarker;
end for;',
	1,
	'',
	776);
INSERT INTO ACT_OPB
	VALUES (795,
	794);
INSERT INTO ACT_ACT
	VALUES (795,
	'operation',
	0,
	796,
	0,
	0,
	'TrackLog::clearLapMarkers',
	0);
INSERT INTO ACT_BLK
	VALUES (796,
	1,
	0,
	0,
	'',
	'',
	'',
	2,
	1,
	1,
	41,
	0,
	0,
	1,
	51,
	0,
	0,
	0,
	0,
	0,
	795,
	0);
INSERT INTO ACT_SMT
	VALUES (797,
	796,
	798,
	1,
	1,
	'TrackLog::clearLapMarkers line: 1');
INSERT INTO ACT_SEL
	VALUES (797,
	799,
	1,
	'many',
	800);
INSERT INTO ACT_SR
	VALUES (797);
INSERT INTO ACT_LNK
	VALUES (801,
	'',
	797,
	223,
	0,
	3,
	224,
	1,
	41,
	1,
	51,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (798,
	796,
	0,
	2,
	1,
	'TrackLog::clearLapMarkers line: 2');
INSERT INTO ACT_FOR
	VALUES (798,
	802,
	1,
	803,
	799,
	224);
INSERT INTO V_VAL
	VALUES (800,
	0,
	0,
	1,
	35,
	38,
	0,
	0,
	0,
	0,
	106,
	796);
INSERT INTO V_IRF
	VALUES (800,
	804);
INSERT INTO V_VAR
	VALUES (799,
	796,
	'lapMarkers',
	1,
	590);
INSERT INTO V_INS
	VALUES (799,
	224);
INSERT INTO V_VAR
	VALUES (804,
	796,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (804,
	0,
	213);
INSERT INTO V_VAR
	VALUES (803,
	796,
	'lapMarker',
	1,
	106);
INSERT INTO V_INT
	VALUES (803,
	1,
	224);
INSERT INTO ACT_BLK
	VALUES (802,
	0,
	0,
	0,
	'',
	'',
	'',
	4,
	3,
	0,
	0,
	0,
	0,
	3,
	39,
	0,
	0,
	0,
	0,
	0,
	795,
	0);
INSERT INTO ACT_SMT
	VALUES (805,
	802,
	806,
	3,
	3,
	'TrackLog::clearLapMarkers line: 3');
INSERT INTO ACT_UNR
	VALUES (805,
	804,
	803,
	'',
	223,
	3,
	39,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (806,
	802,
	0,
	4,
	3,
	'TrackLog::clearLapMarkers line: 4');
INSERT INTO ACT_DEL
	VALUES (806,
	803);
INSERT INTO O_TFR
	VALUES (688,
	213,
	'updateDisplay',
	'',
	6,
	1,
	'// Update the display so that newly updated values will be shown.
select one display related by 
  self->WorkoutSession[R4.''represents path for'']->Display[R7.''current status indicated on''];
generate Display2:refresh to display;',
	1,
	'',
	794);
INSERT INTO ACT_OPB
	VALUES (807,
	688);
INSERT INTO ACT_ACT
	VALUES (807,
	'operation',
	0,
	808,
	0,
	0,
	'TrackLog::updateDisplay',
	0);
INSERT INTO ACT_BLK
	VALUES (808,
	1,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	4,
	1,
	3,
	51,
	0,
	0,
	3,
	59,
	3,
	62,
	0,
	0,
	0,
	807,
	0);
INSERT INTO ACT_SMT
	VALUES (809,
	808,
	810,
	2,
	1,
	'TrackLog::updateDisplay line: 2');
INSERT INTO ACT_SEL
	VALUES (809,
	811,
	1,
	'one',
	812);
INSERT INTO ACT_SR
	VALUES (809);
INSERT INTO ACT_LNK
	VALUES (813,
	'''represents path for''',
	809,
	232,
	814,
	2,
	102,
	3,
	9,
	3,
	24,
	3,
	27);
INSERT INTO ACT_LNK
	VALUES (814,
	'''current status indicated on''',
	0,
	146,
	0,
	2,
	147,
	3,
	51,
	3,
	59,
	3,
	62);
INSERT INTO ACT_SMT
	VALUES (810,
	808,
	0,
	4,
	1,
	'TrackLog::updateDisplay line: 4');
INSERT INTO E_ESS
	VALUES (810,
	1,
	0,
	4,
	10,
	4,
	19,
	3,
	51,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (810);
INSERT INTO E_GSME
	VALUES (810,
	478);
INSERT INTO E_GEN
	VALUES (810,
	811);
INSERT INTO V_VAL
	VALUES (812,
	0,
	0,
	3,
	3,
	6,
	0,
	0,
	0,
	0,
	106,
	808);
INSERT INTO V_IRF
	VALUES (812,
	815);
INSERT INTO V_VAR
	VALUES (811,
	808,
	'display',
	1,
	106);
INSERT INTO V_INT
	VALUES (811,
	0,
	147);
INSERT INTO V_VAR
	VALUES (815,
	808,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (815,
	0,
	213);
INSERT INTO O_ID
	VALUES (0,
	213);
INSERT INTO O_ID
	VALUES (1,
	213);
INSERT INTO O_ID
	VALUES (2,
	213);
INSERT INTO PE_PE
	VALUES (215,
	1,
	211,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (215,
	'TrackPoint',
	3,
	'TrackPoint',
	'Each instance represents a single location through which the device
passed during a workout session.',
	0);
INSERT INTO O_NBATTR
	VALUES (691,
	215);
INSERT INTO O_BATTR
	VALUES (691,
	215);
INSERT INTO O_ATTR
	VALUES (691,
	215,
	0,
	'time',
	'Number of seconds between start time for the associated workout and recording of this location.
',
	'',
	'time',
	0,
	30,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (698,
	215);
INSERT INTO O_BATTR
	VALUES (698,
	215);
INSERT INTO O_ATTR
	VALUES (698,
	215,
	691,
	'longitude',
	'Longitude, expressed in decimal degrees where eastern figures are positve
and western ones are negative.',
	'',
	'longitude',
	0,
	10,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (695,
	215);
INSERT INTO O_BATTR
	VALUES (695,
	215);
INSERT INTO O_ATTR
	VALUES (695,
	215,
	698,
	'latitude',
	'Latitude, expressed in decimal degrees, where northern figures are positive
and southern ones are negative.',
	'',
	'latitude',
	0,
	10,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	215);
INSERT INTO O_ID
	VALUES (1,
	215);
INSERT INTO O_ID
	VALUES (2,
	215);
INSERT INTO PE_PE
	VALUES (102,
	1,
	211,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (102,
	'WorkoutSession',
	7,
	'WorkoutSession',
	'Each instance represents a single workout session.  

Presently, the device supports only a single session, 
but future releases may support multiple sessions.  
Even in that case, only a single session is executing 
at any given time.  Other sessions represent completed
or planned workout sessions.',
	0);
INSERT INTO O_TFR
	VALUES (110,
	102,
	'addHeartRateSample',
	'',
	6,
	1,
	'// Add a new heart-rate sample and notify the UI of the current heart rate.

select one workoutTimer related by self->WorkoutTimer[R8.''is timed by''];

// Create and initialize a new heart-rate sample.
create object instance sample of HeartRateSample;
sample.heartRate = param.heartRate;
sample.time = workoutTimer.time;
relate self to sample across R6.''tracks heart rate over time as'';

// Notify UI of the new heart rate.
select one display related by self->Display[R7.''current status indicated on''];
generate Display2:refresh to display;',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (816,
	110,
	'heartRate',
	30,
	0,
	'',
	0,
	'');
INSERT INTO ACT_OPB
	VALUES (817,
	110);
INSERT INTO ACT_ACT
	VALUES (817,
	'operation',
	0,
	818,
	0,
	0,
	'WorkoutSession::addHeartRateSample',
	0);
INSERT INTO ACT_BLK
	VALUES (818,
	1,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	13,
	1,
	12,
	37,
	0,
	0,
	12,
	45,
	12,
	48,
	0,
	0,
	0,
	817,
	0);
INSERT INTO ACT_SMT
	VALUES (819,
	818,
	820,
	3,
	1,
	'WorkoutSession::addHeartRateSample line: 3');
INSERT INTO ACT_SEL
	VALUES (819,
	821,
	1,
	'one',
	822);
INSERT INTO ACT_SR
	VALUES (819);
INSERT INTO ACT_LNK
	VALUES (823,
	'''is timed by''',
	819,
	229,
	0,
	2,
	118,
	3,
	42,
	3,
	55,
	3,
	58);
INSERT INTO ACT_SMT
	VALUES (820,
	818,
	824,
	6,
	1,
	'WorkoutSession::addHeartRateSample line: 6');
INSERT INTO ACT_CR
	VALUES (820,
	825,
	1,
	236,
	6,
	34);
INSERT INTO ACT_SMT
	VALUES (824,
	818,
	826,
	7,
	1,
	'WorkoutSession::addHeartRateSample line: 7');
INSERT INTO ACT_AI
	VALUES (824,
	827,
	828,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (826,
	818,
	829,
	8,
	1,
	'WorkoutSession::addHeartRateSample line: 8');
INSERT INTO ACT_AI
	VALUES (826,
	830,
	831,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (829,
	818,
	832,
	9,
	1,
	'WorkoutSession::addHeartRateSample line: 9');
INSERT INTO ACT_REL
	VALUES (829,
	833,
	825,
	'''tracks heart rate over time as''',
	235,
	9,
	30,
	9,
	33);
INSERT INTO ACT_SMT
	VALUES (832,
	818,
	834,
	12,
	1,
	'WorkoutSession::addHeartRateSample line: 12');
INSERT INTO ACT_SEL
	VALUES (832,
	835,
	1,
	'one',
	836);
INSERT INTO ACT_SR
	VALUES (832);
INSERT INTO ACT_LNK
	VALUES (837,
	'''current status indicated on''',
	832,
	146,
	0,
	2,
	147,
	12,
	37,
	12,
	45,
	12,
	48);
INSERT INTO ACT_SMT
	VALUES (834,
	818,
	0,
	13,
	1,
	'WorkoutSession::addHeartRateSample line: 13');
INSERT INTO E_ESS
	VALUES (834,
	1,
	0,
	13,
	10,
	13,
	19,
	12,
	37,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (834);
INSERT INTO E_GSME
	VALUES (834,
	478);
INSERT INTO E_GEN
	VALUES (834,
	835);
INSERT INTO V_VAL
	VALUES (822,
	0,
	0,
	3,
	36,
	39,
	0,
	0,
	0,
	0,
	106,
	818);
INSERT INTO V_IRF
	VALUES (822,
	833);
INSERT INTO V_VAL
	VALUES (838,
	1,
	0,
	7,
	1,
	6,
	0,
	0,
	0,
	0,
	106,
	818);
INSERT INTO V_IRF
	VALUES (838,
	825);
INSERT INTO V_VAL
	VALUES (828,
	1,
	0,
	7,
	8,
	16,
	0,
	0,
	0,
	0,
	30,
	818);
INSERT INTO V_AVL
	VALUES (828,
	838,
	236,
	635);
INSERT INTO V_VAL
	VALUES (827,
	0,
	0,
	7,
	26,
	34,
	0,
	0,
	0,
	0,
	30,
	818);
INSERT INTO V_PVL
	VALUES (827,
	0,
	0,
	816,
	0);
INSERT INTO V_VAL
	VALUES (839,
	1,
	0,
	8,
	1,
	6,
	0,
	0,
	0,
	0,
	106,
	818);
INSERT INTO V_IRF
	VALUES (839,
	825);
INSERT INTO V_VAL
	VALUES (831,
	1,
	0,
	8,
	8,
	11,
	0,
	0,
	0,
	0,
	30,
	818);
INSERT INTO V_AVL
	VALUES (831,
	839,
	236,
	636);
INSERT INTO V_VAL
	VALUES (840,
	0,
	0,
	8,
	15,
	26,
	0,
	0,
	0,
	0,
	106,
	818);
INSERT INTO V_IRF
	VALUES (840,
	821);
INSERT INTO V_VAL
	VALUES (830,
	0,
	0,
	8,
	28,
	31,
	0,
	0,
	0,
	0,
	30,
	818);
INSERT INTO V_AVL
	VALUES (830,
	840,
	118,
	422);
INSERT INTO V_VAL
	VALUES (836,
	0,
	0,
	12,
	31,
	34,
	0,
	0,
	0,
	0,
	106,
	818);
INSERT INTO V_IRF
	VALUES (836,
	833);
INSERT INTO V_VAR
	VALUES (821,
	818,
	'workoutTimer',
	1,
	106);
INSERT INTO V_INT
	VALUES (821,
	0,
	118);
INSERT INTO V_VAR
	VALUES (833,
	818,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (833,
	0,
	102);
INSERT INTO V_VAR
	VALUES (825,
	818,
	'sample',
	1,
	106);
INSERT INTO V_INT
	VALUES (825,
	0,
	236);
INSERT INTO V_VAR
	VALUES (835,
	818,
	'display',
	1,
	106);
INSERT INTO V_INT
	VALUES (835,
	0,
	147);
INSERT INTO O_TFR
	VALUES (841,
	102,
	'clearHeartRateSamples',
	'',
	6,
	1,
	'select many samples related by self->HeartRateSample[R6];
for each sample in samples
  unrelate self from sample across R6;
  delete object instance sample;
end for;',
	1,
	'',
	110);
INSERT INTO ACT_OPB
	VALUES (842,
	841);
INSERT INTO ACT_ACT
	VALUES (842,
	'operation',
	0,
	843,
	0,
	0,
	'WorkoutSession::clearHeartRateSamples',
	0);
INSERT INTO ACT_BLK
	VALUES (843,
	1,
	0,
	0,
	'',
	'',
	'',
	2,
	1,
	1,
	38,
	0,
	0,
	1,
	54,
	0,
	0,
	0,
	0,
	0,
	842,
	0);
INSERT INTO ACT_SMT
	VALUES (844,
	843,
	845,
	1,
	1,
	'WorkoutSession::clearHeartRateSamples line: 1');
INSERT INTO ACT_SEL
	VALUES (844,
	846,
	1,
	'many',
	847);
INSERT INTO ACT_SR
	VALUES (844);
INSERT INTO ACT_LNK
	VALUES (848,
	'',
	844,
	235,
	0,
	3,
	236,
	1,
	38,
	1,
	54,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (845,
	843,
	0,
	2,
	1,
	'WorkoutSession::clearHeartRateSamples line: 2');
INSERT INTO ACT_FOR
	VALUES (845,
	849,
	1,
	850,
	846,
	236);
INSERT INTO V_VAL
	VALUES (847,
	0,
	0,
	1,
	32,
	35,
	0,
	0,
	0,
	0,
	106,
	843);
INSERT INTO V_IRF
	VALUES (847,
	851);
INSERT INTO V_VAR
	VALUES (846,
	843,
	'samples',
	1,
	590);
INSERT INTO V_INS
	VALUES (846,
	236);
INSERT INTO V_VAR
	VALUES (851,
	843,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (851,
	0,
	102);
INSERT INTO V_VAR
	VALUES (850,
	843,
	'sample',
	1,
	106);
INSERT INTO V_INT
	VALUES (850,
	1,
	236);
INSERT INTO ACT_BLK
	VALUES (849,
	0,
	0,
	0,
	'',
	'',
	'',
	4,
	3,
	0,
	0,
	0,
	0,
	3,
	36,
	0,
	0,
	0,
	0,
	0,
	842,
	0);
INSERT INTO ACT_SMT
	VALUES (852,
	849,
	853,
	3,
	3,
	'WorkoutSession::clearHeartRateSamples line: 3');
INSERT INTO ACT_UNR
	VALUES (852,
	851,
	850,
	'',
	235,
	3,
	36,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (853,
	849,
	0,
	4,
	3,
	'WorkoutSession::clearHeartRateSamples line: 4');
INSERT INTO ACT_DEL
	VALUES (853,
	850);
INSERT INTO O_TFR
	VALUES (854,
	102,
	'initialize',
	'',
	6,
	1,
	'// Initialize this workout session.

self.startDate = TIM::current_date();
self.startTime = TIM::current_clock();
self.accumulatedDistance = 0.0;',
	1,
	'',
	841);
INSERT INTO ACT_OPB
	VALUES (855,
	854);
INSERT INTO ACT_ACT
	VALUES (855,
	'operation',
	0,
	856,
	0,
	0,
	'WorkoutSession::initialize',
	0);
INSERT INTO ACT_BLK
	VALUES (856,
	0,
	0,
	0,
	'TIM',
	'',
	'',
	5,
	1,
	4,
	18,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	855,
	0);
INSERT INTO ACT_SMT
	VALUES (857,
	856,
	858,
	3,
	1,
	'WorkoutSession::initialize line: 3');
INSERT INTO ACT_AI
	VALUES (857,
	859,
	860,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (858,
	856,
	861,
	4,
	1,
	'WorkoutSession::initialize line: 4');
INSERT INTO ACT_AI
	VALUES (858,
	862,
	863,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (861,
	856,
	0,
	5,
	1,
	'WorkoutSession::initialize line: 5');
INSERT INTO ACT_AI
	VALUES (861,
	864,
	865,
	0,
	0);
INSERT INTO V_VAL
	VALUES (866,
	1,
	0,
	3,
	1,
	4,
	0,
	0,
	0,
	0,
	106,
	856);
INSERT INTO V_IRF
	VALUES (866,
	867);
INSERT INTO V_VAL
	VALUES (860,
	1,
	0,
	3,
	6,
	14,
	0,
	0,
	0,
	0,
	272,
	856);
INSERT INTO V_AVL
	VALUES (860,
	866,
	102,
	868);
INSERT INTO V_VAL
	VALUES (859,
	0,
	0,
	3,
	23,
	-1,
	0,
	0,
	0,
	0,
	272,
	856);
INSERT INTO V_BRV
	VALUES (859,
	292,
	1,
	3,
	18);
INSERT INTO V_VAL
	VALUES (869,
	1,
	0,
	4,
	1,
	4,
	0,
	0,
	0,
	0,
	106,
	856);
INSERT INTO V_IRF
	VALUES (869,
	867);
INSERT INTO V_VAL
	VALUES (863,
	1,
	0,
	4,
	6,
	14,
	0,
	0,
	0,
	0,
	278,
	856);
INSERT INTO V_AVL
	VALUES (863,
	869,
	102,
	870);
INSERT INTO V_VAL
	VALUES (862,
	0,
	0,
	4,
	23,
	-1,
	0,
	0,
	0,
	0,
	278,
	856);
INSERT INTO V_BRV
	VALUES (862,
	328,
	1,
	4,
	18);
INSERT INTO V_VAL
	VALUES (871,
	1,
	0,
	5,
	1,
	4,
	0,
	0,
	0,
	0,
	106,
	856);
INSERT INTO V_IRF
	VALUES (871,
	867);
INSERT INTO V_VAL
	VALUES (865,
	1,
	0,
	5,
	6,
	24,
	0,
	0,
	0,
	0,
	10,
	856);
INSERT INTO V_AVL
	VALUES (865,
	871,
	102,
	499);
INSERT INTO V_VAL
	VALUES (864,
	0,
	0,
	5,
	28,
	30,
	0,
	0,
	0,
	0,
	10,
	856);
INSERT INTO V_LRL
	VALUES (864,
	'0.0');
INSERT INTO V_VAR
	VALUES (867,
	856,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (867,
	0,
	102);
INSERT INTO O_TFR
	VALUES (159,
	102,
	'sessioncreate',
	'',
	6,
	0,
	'// Unless a workout session already exists, create and initialize a 
// workout session, workout timer, and tracklog, and relate them all.

select any session from instances of WorkoutSession;

if ( empty session )

  // Create a workout session.
  create object instance session of WorkoutSession;
  session.initialize();

  // Create a workout timer.
  create object instance workoutTimer of WorkoutTimer;
  workoutTimer.initialize();

  // Create a track log.
  create object instance trackLog of TrackLog;
  
  // Create a display.
  create object instance display of Display;

  // Relate them all together.
  relate trackLog to session across R4.''represents path for'';
  relate workoutTimer to session across R8.''acts as the stopwatch for'';
  relate display to session across R7.''indicates current status of'';
  
end if;
',
	1,
	'',
	854);
INSERT INTO ACT_OPB
	VALUES (872,
	159);
INSERT INTO ACT_ACT
	VALUES (872,
	'class operation',
	0,
	873,
	0,
	0,
	'WorkoutSession::sessioncreate',
	0);
INSERT INTO ACT_BLK
	VALUES (873,
	1,
	0,
	0,
	'',
	'',
	'',
	6,
	1,
	4,
	38,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	872,
	0);
INSERT INTO ACT_SMT
	VALUES (874,
	873,
	875,
	4,
	1,
	'WorkoutSession::sessioncreate line: 4');
INSERT INTO ACT_FIO
	VALUES (874,
	876,
	1,
	'any',
	102,
	4,
	38);
INSERT INTO ACT_SMT
	VALUES (875,
	873,
	0,
	6,
	1,
	'WorkoutSession::sessioncreate line: 6');
INSERT INTO ACT_IF
	VALUES (875,
	877,
	878,
	0,
	0);
INSERT INTO V_VAL
	VALUES (879,
	0,
	0,
	6,
	12,
	18,
	0,
	0,
	0,
	0,
	106,
	873);
INSERT INTO V_IRF
	VALUES (879,
	876);
INSERT INTO V_VAL
	VALUES (878,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	873);
INSERT INTO V_UNY
	VALUES (878,
	879,
	'empty');
INSERT INTO V_VAR
	VALUES (876,
	873,
	'session',
	1,
	106);
INSERT INTO V_INT
	VALUES (876,
	0,
	102);
INSERT INTO ACT_BLK
	VALUES (877,
	0,
	0,
	0,
	'''indicates current status of''',
	'',
	'',
	25,
	3,
	20,
	37,
	0,
	0,
	25,
	36,
	25,
	39,
	0,
	0,
	0,
	872,
	0);
INSERT INTO ACT_SMT
	VALUES (880,
	877,
	881,
	9,
	3,
	'WorkoutSession::sessioncreate line: 9');
INSERT INTO ACT_CR
	VALUES (880,
	876,
	0,
	102,
	9,
	37);
INSERT INTO ACT_SMT
	VALUES (881,
	877,
	882,
	10,
	3,
	'WorkoutSession::sessioncreate line: 10');
INSERT INTO ACT_TFM
	VALUES (881,
	854,
	876,
	10,
	11,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (882,
	877,
	883,
	13,
	3,
	'WorkoutSession::sessioncreate line: 13');
INSERT INTO ACT_CR
	VALUES (882,
	884,
	1,
	118,
	13,
	42);
INSERT INTO ACT_SMT
	VALUES (883,
	877,
	885,
	14,
	3,
	'WorkoutSession::sessioncreate line: 14');
INSERT INTO ACT_TFM
	VALUES (883,
	886,
	884,
	14,
	16,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (885,
	877,
	887,
	17,
	3,
	'WorkoutSession::sessioncreate line: 17');
INSERT INTO ACT_CR
	VALUES (885,
	888,
	1,
	213,
	17,
	38);
INSERT INTO ACT_SMT
	VALUES (887,
	877,
	889,
	20,
	3,
	'WorkoutSession::sessioncreate line: 20');
INSERT INTO ACT_CR
	VALUES (887,
	890,
	1,
	147,
	20,
	37);
INSERT INTO ACT_SMT
	VALUES (889,
	877,
	891,
	23,
	3,
	'WorkoutSession::sessioncreate line: 23');
INSERT INTO ACT_REL
	VALUES (889,
	888,
	876,
	'''represents path for''',
	232,
	23,
	37,
	23,
	40);
INSERT INTO ACT_SMT
	VALUES (891,
	877,
	892,
	24,
	3,
	'WorkoutSession::sessioncreate line: 24');
INSERT INTO ACT_REL
	VALUES (891,
	884,
	876,
	'''acts as the stopwatch for''',
	229,
	24,
	41,
	24,
	44);
INSERT INTO ACT_SMT
	VALUES (892,
	877,
	0,
	25,
	3,
	'WorkoutSession::sessioncreate line: 25');
INSERT INTO ACT_REL
	VALUES (892,
	890,
	876,
	'''indicates current status of''',
	146,
	25,
	36,
	25,
	39);
INSERT INTO V_VAR
	VALUES (884,
	877,
	'workoutTimer',
	1,
	106);
INSERT INTO V_INT
	VALUES (884,
	0,
	118);
INSERT INTO V_VAR
	VALUES (888,
	877,
	'trackLog',
	1,
	106);
INSERT INTO V_INT
	VALUES (888,
	0,
	213);
INSERT INTO V_VAR
	VALUES (890,
	877,
	'display',
	1,
	106);
INSERT INTO V_INT
	VALUES (890,
	0,
	147);
INSERT INTO O_TFR
	VALUES (893,
	102,
	'reset',
	'',
	6,
	1,
	'// Reset this session, including the timer, track log, goal specifications,
// goals, and achievement records.

// Reset the timer.
select one workoutTimer related by self->WorkoutTimer[R8.''is timed by''];
workoutTimer.initialize();

// Reset the track log.
select one trackLog related by self->TrackLog[R4.''captures path in''];
trackLog.clearTrackPoints();
trackLog.clearLapMarkers();

// Remove all goal specifications.
select many goalSpecs related by self->GoalSpec[R10.''includes''];
for each goalSpec in goalSpecs
  unrelate self from goalSpec across R10.''includes'';
  delete object instance goalSpec;
end for;

// Remove any currently executing goal and open achievement record.
select one executingGoal related by self->Goal[R11.''is currently executing''];
if ( not empty executingGoal )
  select one openAchievement related by executingGoal->Achievement[R14.''has open''];
  if ( not empty openAchievement )
    unrelate openAchievement from executingGoal across R14.''is open for'';
    delete object instance openAchievement;
  end if;
  unrelate self from executingGoal across R11.''is currently executing'';
  delete object instance executingGoal;
end if;

// Remove all other goals and achievement records.
select many goals related by self->Goal[R13.''has executed''];
for each goal in goals
  select many achievements related by goal->Achievement[R12.''has recorded''];
  for each achievement in achievements
    unrelate goal from achievement across R12.''has recorded'';
    delete object instance achievement;
  end for;
  unrelate self from goal across R13.''has executed'';
  delete object instance goal;
end for;

// Reset the session.
self.accumulatedDistance = 0.0;
self.clearHeartRateSamples();
',
	1,
	'',
	159);
INSERT INTO ACT_OPB
	VALUES (894,
	893);
INSERT INTO ACT_ACT
	VALUES (894,
	'operation',
	0,
	895,
	0,
	0,
	'WorkoutSession::reset',
	0);
INSERT INTO ACT_BLK
	VALUES (895,
	1,
	0,
	0,
	'',
	'',
	'',
	46,
	1,
	33,
	36,
	0,
	0,
	33,
	41,
	33,
	45,
	0,
	0,
	0,
	894,
	0);
INSERT INTO ACT_SMT
	VALUES (896,
	895,
	897,
	5,
	1,
	'WorkoutSession::reset line: 5');
INSERT INTO ACT_SEL
	VALUES (896,
	898,
	1,
	'one',
	899);
INSERT INTO ACT_SR
	VALUES (896);
INSERT INTO ACT_LNK
	VALUES (900,
	'''is timed by''',
	896,
	229,
	0,
	2,
	118,
	5,
	42,
	5,
	55,
	5,
	58);
INSERT INTO ACT_SMT
	VALUES (897,
	895,
	901,
	6,
	1,
	'WorkoutSession::reset line: 6');
INSERT INTO ACT_TFM
	VALUES (897,
	886,
	898,
	6,
	14,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (901,
	895,
	902,
	9,
	1,
	'WorkoutSession::reset line: 9');
INSERT INTO ACT_SEL
	VALUES (901,
	903,
	1,
	'one',
	904);
INSERT INTO ACT_SR
	VALUES (901);
INSERT INTO ACT_LNK
	VALUES (905,
	'''captures path in''',
	901,
	232,
	0,
	2,
	213,
	9,
	38,
	9,
	47,
	9,
	50);
INSERT INTO ACT_SMT
	VALUES (902,
	895,
	906,
	10,
	1,
	'WorkoutSession::reset line: 10');
INSERT INTO ACT_TFM
	VALUES (902,
	734,
	903,
	10,
	10,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (906,
	895,
	907,
	11,
	1,
	'WorkoutSession::reset line: 11');
INSERT INTO ACT_TFM
	VALUES (906,
	794,
	903,
	11,
	10,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (907,
	895,
	908,
	14,
	1,
	'WorkoutSession::reset line: 14');
INSERT INTO ACT_SEL
	VALUES (907,
	909,
	1,
	'many',
	910);
INSERT INTO ACT_SR
	VALUES (907);
INSERT INTO ACT_LNK
	VALUES (911,
	'''includes''',
	907,
	195,
	0,
	3,
	176,
	14,
	40,
	14,
	49,
	14,
	53);
INSERT INTO ACT_SMT
	VALUES (908,
	895,
	912,
	15,
	1,
	'WorkoutSession::reset line: 15');
INSERT INTO ACT_FOR
	VALUES (908,
	913,
	1,
	914,
	909,
	176);
INSERT INTO ACT_SMT
	VALUES (912,
	895,
	915,
	21,
	1,
	'WorkoutSession::reset line: 21');
INSERT INTO ACT_SEL
	VALUES (912,
	916,
	1,
	'one',
	917);
INSERT INTO ACT_SR
	VALUES (912);
INSERT INTO ACT_LNK
	VALUES (918,
	'''is currently executing''',
	912,
	245,
	0,
	2,
	241,
	21,
	43,
	21,
	48,
	21,
	52);
INSERT INTO ACT_SMT
	VALUES (915,
	895,
	919,
	22,
	1,
	'WorkoutSession::reset line: 22');
INSERT INTO ACT_IF
	VALUES (915,
	920,
	921,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (919,
	895,
	922,
	33,
	1,
	'WorkoutSession::reset line: 33');
INSERT INTO ACT_SEL
	VALUES (919,
	923,
	1,
	'many',
	924);
INSERT INTO ACT_SR
	VALUES (919);
INSERT INTO ACT_LNK
	VALUES (925,
	'''has executed''',
	919,
	252,
	0,
	3,
	241,
	33,
	36,
	33,
	41,
	33,
	45);
INSERT INTO ACT_SMT
	VALUES (922,
	895,
	926,
	34,
	1,
	'WorkoutSession::reset line: 34');
INSERT INTO ACT_FOR
	VALUES (922,
	927,
	1,
	928,
	923,
	241);
INSERT INTO ACT_SMT
	VALUES (926,
	895,
	929,
	45,
	1,
	'WorkoutSession::reset line: 45');
INSERT INTO ACT_AI
	VALUES (926,
	930,
	931,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (929,
	895,
	0,
	46,
	1,
	'WorkoutSession::reset line: 46');
INSERT INTO ACT_TFM
	VALUES (929,
	841,
	932,
	46,
	6,
	0,
	0);
INSERT INTO V_VAL
	VALUES (899,
	0,
	0,
	5,
	36,
	39,
	0,
	0,
	0,
	0,
	106,
	895);
INSERT INTO V_IRF
	VALUES (899,
	932);
INSERT INTO V_VAL
	VALUES (904,
	0,
	0,
	9,
	32,
	35,
	0,
	0,
	0,
	0,
	106,
	895);
INSERT INTO V_IRF
	VALUES (904,
	932);
INSERT INTO V_VAL
	VALUES (910,
	0,
	0,
	14,
	34,
	37,
	0,
	0,
	0,
	0,
	106,
	895);
INSERT INTO V_IRF
	VALUES (910,
	932);
INSERT INTO V_VAL
	VALUES (917,
	0,
	0,
	21,
	37,
	40,
	0,
	0,
	0,
	0,
	106,
	895);
INSERT INTO V_IRF
	VALUES (917,
	932);
INSERT INTO V_VAL
	VALUES (933,
	0,
	0,
	22,
	16,
	28,
	0,
	0,
	0,
	0,
	106,
	895);
INSERT INTO V_IRF
	VALUES (933,
	916);
INSERT INTO V_VAL
	VALUES (934,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	895);
INSERT INTO V_UNY
	VALUES (934,
	933,
	'empty');
INSERT INTO V_VAL
	VALUES (921,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	895);
INSERT INTO V_UNY
	VALUES (921,
	934,
	'not');
INSERT INTO V_VAL
	VALUES (924,
	0,
	0,
	33,
	30,
	33,
	0,
	0,
	0,
	0,
	106,
	895);
INSERT INTO V_IRF
	VALUES (924,
	932);
INSERT INTO V_VAL
	VALUES (935,
	1,
	0,
	45,
	1,
	4,
	0,
	0,
	0,
	0,
	106,
	895);
INSERT INTO V_IRF
	VALUES (935,
	932);
INSERT INTO V_VAL
	VALUES (931,
	1,
	0,
	45,
	6,
	24,
	0,
	0,
	0,
	0,
	10,
	895);
INSERT INTO V_AVL
	VALUES (931,
	935,
	102,
	499);
INSERT INTO V_VAL
	VALUES (930,
	0,
	0,
	45,
	28,
	30,
	0,
	0,
	0,
	0,
	10,
	895);
INSERT INTO V_LRL
	VALUES (930,
	'0.0');
INSERT INTO V_VAR
	VALUES (898,
	895,
	'workoutTimer',
	1,
	106);
INSERT INTO V_INT
	VALUES (898,
	0,
	118);
INSERT INTO V_VAR
	VALUES (932,
	895,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (932,
	0,
	102);
INSERT INTO V_VAR
	VALUES (903,
	895,
	'trackLog',
	1,
	106);
INSERT INTO V_INT
	VALUES (903,
	0,
	213);
INSERT INTO V_VAR
	VALUES (909,
	895,
	'goalSpecs',
	1,
	590);
INSERT INTO V_INS
	VALUES (909,
	176);
INSERT INTO V_VAR
	VALUES (914,
	895,
	'goalSpec',
	1,
	106);
INSERT INTO V_INT
	VALUES (914,
	1,
	176);
INSERT INTO V_VAR
	VALUES (916,
	895,
	'executingGoal',
	1,
	106);
INSERT INTO V_INT
	VALUES (916,
	0,
	241);
INSERT INTO V_VAR
	VALUES (923,
	895,
	'goals',
	1,
	590);
INSERT INTO V_INS
	VALUES (923,
	241);
INSERT INTO V_VAR
	VALUES (928,
	895,
	'goal',
	1,
	106);
INSERT INTO V_INT
	VALUES (928,
	1,
	241);
INSERT INTO ACT_BLK
	VALUES (913,
	0,
	0,
	0,
	'''includes''',
	'',
	'',
	17,
	3,
	0,
	0,
	0,
	0,
	16,
	38,
	16,
	42,
	0,
	0,
	0,
	894,
	0);
INSERT INTO ACT_SMT
	VALUES (936,
	913,
	937,
	16,
	3,
	'WorkoutSession::reset line: 16');
INSERT INTO ACT_UNR
	VALUES (936,
	932,
	914,
	'''includes''',
	195,
	16,
	38,
	16,
	42);
INSERT INTO ACT_SMT
	VALUES (937,
	913,
	0,
	17,
	3,
	'WorkoutSession::reset line: 17');
INSERT INTO ACT_DEL
	VALUES (937,
	914);
INSERT INTO ACT_BLK
	VALUES (920,
	1,
	0,
	0,
	'''is currently executing''',
	'',
	'',
	29,
	3,
	23,
	56,
	0,
	0,
	28,
	43,
	28,
	47,
	0,
	0,
	0,
	894,
	0);
INSERT INTO ACT_SMT
	VALUES (938,
	920,
	939,
	23,
	3,
	'WorkoutSession::reset line: 23');
INSERT INTO ACT_SEL
	VALUES (938,
	940,
	1,
	'one',
	941);
INSERT INTO ACT_SR
	VALUES (938);
INSERT INTO ACT_LNK
	VALUES (942,
	'''has open''',
	938,
	255,
	0,
	2,
	250,
	23,
	56,
	23,
	68,
	23,
	72);
INSERT INTO ACT_SMT
	VALUES (939,
	920,
	943,
	24,
	3,
	'WorkoutSession::reset line: 24');
INSERT INTO ACT_IF
	VALUES (939,
	944,
	945,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (943,
	920,
	946,
	28,
	3,
	'WorkoutSession::reset line: 28');
INSERT INTO ACT_UNR
	VALUES (943,
	932,
	916,
	'''is currently executing''',
	245,
	28,
	43,
	28,
	47);
INSERT INTO ACT_SMT
	VALUES (946,
	920,
	0,
	29,
	3,
	'WorkoutSession::reset line: 29');
INSERT INTO ACT_DEL
	VALUES (946,
	916);
INSERT INTO V_VAL
	VALUES (941,
	0,
	0,
	23,
	41,
	53,
	0,
	0,
	0,
	0,
	106,
	920);
INSERT INTO V_IRF
	VALUES (941,
	916);
INSERT INTO V_VAL
	VALUES (947,
	0,
	0,
	24,
	18,
	32,
	0,
	0,
	0,
	0,
	106,
	920);
INSERT INTO V_IRF
	VALUES (947,
	940);
INSERT INTO V_VAL
	VALUES (948,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	920);
INSERT INTO V_UNY
	VALUES (948,
	947,
	'empty');
INSERT INTO V_VAL
	VALUES (945,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	920);
INSERT INTO V_UNY
	VALUES (945,
	948,
	'not');
INSERT INTO V_VAR
	VALUES (940,
	920,
	'openAchievement',
	1,
	106);
INSERT INTO V_INT
	VALUES (940,
	0,
	250);
INSERT INTO ACT_BLK
	VALUES (944,
	0,
	0,
	0,
	'''is open for''',
	'',
	'',
	26,
	5,
	0,
	0,
	0,
	0,
	25,
	56,
	25,
	60,
	0,
	0,
	0,
	894,
	0);
INSERT INTO ACT_SMT
	VALUES (949,
	944,
	950,
	25,
	5,
	'WorkoutSession::reset line: 25');
INSERT INTO ACT_UNR
	VALUES (949,
	940,
	916,
	'''is open for''',
	255,
	25,
	56,
	25,
	60);
INSERT INTO ACT_SMT
	VALUES (950,
	944,
	0,
	26,
	5,
	'WorkoutSession::reset line: 26');
INSERT INTO ACT_DEL
	VALUES (950,
	940);
INSERT INTO ACT_BLK
	VALUES (927,
	1,
	0,
	0,
	'''has executed''',
	'',
	'',
	41,
	3,
	35,
	45,
	0,
	0,
	40,
	34,
	40,
	38,
	0,
	0,
	0,
	894,
	0);
INSERT INTO ACT_SMT
	VALUES (951,
	927,
	952,
	35,
	3,
	'WorkoutSession::reset line: 35');
INSERT INTO ACT_SEL
	VALUES (951,
	953,
	1,
	'many',
	954);
INSERT INTO ACT_SR
	VALUES (951);
INSERT INTO ACT_LNK
	VALUES (955,
	'''has recorded''',
	951,
	248,
	0,
	3,
	250,
	35,
	45,
	35,
	57,
	35,
	61);
INSERT INTO ACT_SMT
	VALUES (952,
	927,
	956,
	36,
	3,
	'WorkoutSession::reset line: 36');
INSERT INTO ACT_FOR
	VALUES (952,
	957,
	1,
	958,
	953,
	250);
INSERT INTO ACT_SMT
	VALUES (956,
	927,
	959,
	40,
	3,
	'WorkoutSession::reset line: 40');
INSERT INTO ACT_UNR
	VALUES (956,
	932,
	928,
	'''has executed''',
	252,
	40,
	34,
	40,
	38);
INSERT INTO ACT_SMT
	VALUES (959,
	927,
	0,
	41,
	3,
	'WorkoutSession::reset line: 41');
INSERT INTO ACT_DEL
	VALUES (959,
	928);
INSERT INTO V_VAL
	VALUES (954,
	0,
	0,
	35,
	39,
	42,
	0,
	0,
	0,
	0,
	106,
	927);
INSERT INTO V_IRF
	VALUES (954,
	928);
INSERT INTO V_VAR
	VALUES (953,
	927,
	'achievements',
	1,
	590);
INSERT INTO V_INS
	VALUES (953,
	250);
INSERT INTO V_VAR
	VALUES (958,
	927,
	'achievement',
	1,
	106);
INSERT INTO V_INT
	VALUES (958,
	1,
	250);
INSERT INTO ACT_BLK
	VALUES (957,
	0,
	0,
	0,
	'''has recorded''',
	'',
	'',
	38,
	5,
	0,
	0,
	0,
	0,
	37,
	43,
	37,
	47,
	0,
	0,
	0,
	894,
	0);
INSERT INTO ACT_SMT
	VALUES (960,
	957,
	961,
	37,
	5,
	'WorkoutSession::reset line: 37');
INSERT INTO ACT_UNR
	VALUES (960,
	928,
	958,
	'''has recorded''',
	248,
	37,
	43,
	37,
	47);
INSERT INTO ACT_SMT
	VALUES (961,
	957,
	0,
	38,
	5,
	'WorkoutSession::reset line: 38');
INSERT INTO ACT_DEL
	VALUES (961,
	958);
INSERT INTO O_NBATTR
	VALUES (868,
	102);
INSERT INTO O_BATTR
	VALUES (868,
	102);
INSERT INTO O_ATTR
	VALUES (868,
	102,
	0,
	'startDate',
	'UTC Date on which this session commenced.',
	'',
	'startDate',
	0,
	272,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (870,
	102);
INSERT INTO O_BATTR
	VALUES (870,
	102);
INSERT INTO O_ATTR
	VALUES (870,
	102,
	868,
	'startTime',
	'UTC time at which this session commenced.',
	'',
	'startTime',
	0,
	278,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (529,
	102,
	'// Calculate the current speed, expressed in km per hour, by summing 
// the straight-line distance between each of several of the most recent 
// track points and then dividing that sum by the elapsed time between 
// the first and last point in the subset used for the calculation.

select one lastPoint related by self->TrackLog[R4.''captures path in'']->TrackPoint[R3.''has last''];
speed = 0.0;
if ( not empty lastPoint )
  cursor = lastPoint;
  index = SpeedAveragingWindow;  // Number of track points to use when calculating average speed.
  totalDistance = 0.0;
  elapsedTime = 0.0;  // Explicit delcaration because a Real is required for a later calculation.
  elapsedTime = lastPoint.time;
  while ( index > 0 )
    select one previousPoint related by cursor->TrackPoint[R2.preceeds];
    if ( empty previousPoint )
      break;
    end if;
    send distance = Location::getDistance( fromLat:cursor.latitude, fromLong: cursor.longitude,
                                      toLat: previousPoint.latitude, toLong: previousPoint.longitude );
    totalDistance = totalDistance + distance;
    index = index - 1;
    cursor = previousPoint;
  end while;
  elapsedTime = elapsedTime - cursor.time;
  speed = (totalDistance / 1000) / (elapsedTime / SecondsPerHour);
end if;

// Return the value by writing to the (derived) attribute.
self.currentSpeed = speed;',
	1);
INSERT INTO ACT_DAB
	VALUES (962,
	102,
	529,
	1);
INSERT INTO ACT_ACT
	VALUES (962,
	'derived attribute',
	0,
	963,
	0,
	0,
	'WorkoutSession::currentSpeed',
	0);
INSERT INTO ACT_BLK
	VALUES (963,
	1,
	0,
	0,
	'',
	'',
	'',
	30,
	1,
	6,
	72,
	0,
	0,
	6,
	83,
	6,
	86,
	0,
	0,
	0,
	962,
	0);
INSERT INTO ACT_SMT
	VALUES (964,
	963,
	965,
	6,
	1,
	'WorkoutSession::currentSpeed line: 6');
INSERT INTO ACT_SEL
	VALUES (964,
	966,
	1,
	'one',
	967);
INSERT INTO ACT_SR
	VALUES (964);
INSERT INTO ACT_LNK
	VALUES (968,
	'''captures path in''',
	964,
	232,
	969,
	2,
	213,
	6,
	39,
	6,
	48,
	6,
	51);
INSERT INTO ACT_LNK
	VALUES (969,
	'''has last''',
	0,
	220,
	0,
	2,
	215,
	6,
	72,
	6,
	83,
	6,
	86);
INSERT INTO ACT_SMT
	VALUES (965,
	963,
	970,
	7,
	1,
	'WorkoutSession::currentSpeed line: 7');
INSERT INTO ACT_AI
	VALUES (965,
	971,
	972,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (970,
	963,
	973,
	8,
	1,
	'WorkoutSession::currentSpeed line: 8');
INSERT INTO ACT_IF
	VALUES (970,
	974,
	975,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (973,
	963,
	0,
	30,
	1,
	'WorkoutSession::currentSpeed line: 30');
INSERT INTO ACT_AI
	VALUES (973,
	976,
	977,
	0,
	0);
INSERT INTO V_VAL
	VALUES (967,
	0,
	0,
	6,
	33,
	36,
	0,
	0,
	0,
	0,
	106,
	963);
INSERT INTO V_IRF
	VALUES (967,
	978);
INSERT INTO V_VAL
	VALUES (972,
	1,
	1,
	7,
	1,
	5,
	0,
	0,
	0,
	0,
	10,
	963);
INSERT INTO V_TVL
	VALUES (972,
	979);
INSERT INTO V_VAL
	VALUES (971,
	0,
	0,
	7,
	9,
	11,
	0,
	0,
	0,
	0,
	10,
	963);
INSERT INTO V_LRL
	VALUES (971,
	'0.0');
INSERT INTO V_VAL
	VALUES (980,
	0,
	0,
	8,
	16,
	24,
	0,
	0,
	0,
	0,
	106,
	963);
INSERT INTO V_IRF
	VALUES (980,
	966);
INSERT INTO V_VAL
	VALUES (981,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	963);
INSERT INTO V_UNY
	VALUES (981,
	980,
	'empty');
INSERT INTO V_VAL
	VALUES (975,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	963);
INSERT INTO V_UNY
	VALUES (975,
	981,
	'not');
INSERT INTO V_VAL
	VALUES (982,
	1,
	0,
	30,
	1,
	4,
	0,
	0,
	0,
	0,
	106,
	963);
INSERT INTO V_IRF
	VALUES (982,
	978);
INSERT INTO V_VAL
	VALUES (977,
	1,
	0,
	30,
	6,
	17,
	0,
	0,
	0,
	0,
	10,
	963);
INSERT INTO V_AVL
	VALUES (977,
	982,
	102,
	529);
INSERT INTO V_VAL
	VALUES (976,
	0,
	0,
	30,
	21,
	25,
	0,
	0,
	0,
	0,
	10,
	963);
INSERT INTO V_TVL
	VALUES (976,
	979);
INSERT INTO V_VAR
	VALUES (966,
	963,
	'lastPoint',
	1,
	106);
INSERT INTO V_INT
	VALUES (966,
	0,
	215);
INSERT INTO V_VAR
	VALUES (978,
	963,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (978,
	0,
	102);
INSERT INTO V_VAR
	VALUES (979,
	963,
	'speed',
	1,
	10);
INSERT INTO V_TRN
	VALUES (979,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (974,
	0,
	0,
	0,
	'',
	'',
	'',
	26,
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
	962,
	0);
INSERT INTO ACT_SMT
	VALUES (983,
	974,
	984,
	9,
	3,
	'WorkoutSession::currentSpeed line: 9');
INSERT INTO ACT_AI
	VALUES (983,
	985,
	986,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (984,
	974,
	987,
	10,
	3,
	'WorkoutSession::currentSpeed line: 10');
INSERT INTO ACT_AI
	VALUES (984,
	988,
	989,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (987,
	974,
	990,
	11,
	3,
	'WorkoutSession::currentSpeed line: 11');
INSERT INTO ACT_AI
	VALUES (987,
	991,
	992,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (990,
	974,
	993,
	12,
	3,
	'WorkoutSession::currentSpeed line: 12');
INSERT INTO ACT_AI
	VALUES (990,
	994,
	995,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (993,
	974,
	996,
	13,
	3,
	'WorkoutSession::currentSpeed line: 13');
INSERT INTO ACT_AI
	VALUES (993,
	997,
	998,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (996,
	974,
	999,
	14,
	3,
	'WorkoutSession::currentSpeed line: 14');
INSERT INTO ACT_WHL
	VALUES (996,
	1000,
	1001);
INSERT INTO ACT_SMT
	VALUES (999,
	974,
	1002,
	25,
	3,
	'WorkoutSession::currentSpeed line: 25');
INSERT INTO ACT_AI
	VALUES (999,
	1003,
	1004,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1002,
	974,
	0,
	26,
	3,
	'WorkoutSession::currentSpeed line: 26');
INSERT INTO ACT_AI
	VALUES (1002,
	1005,
	1006,
	0,
	0);
INSERT INTO V_VAL
	VALUES (986,
	1,
	1,
	9,
	3,
	8,
	0,
	0,
	0,
	0,
	106,
	974);
INSERT INTO V_IRF
	VALUES (986,
	1007);
INSERT INTO V_VAL
	VALUES (985,
	0,
	0,
	9,
	12,
	20,
	0,
	0,
	0,
	0,
	106,
	974);
INSERT INTO V_IRF
	VALUES (985,
	966);
INSERT INTO V_VAL
	VALUES (989,
	1,
	1,
	10,
	3,
	7,
	0,
	0,
	0,
	0,
	30,
	974);
INSERT INTO V_TVL
	VALUES (989,
	1008);
INSERT INTO V_VAL
	VALUES (988,
	0,
	0,
	10,
	11,
	30,
	0,
	0,
	0,
	0,
	30,
	974);
INSERT INTO V_SCV
	VALUES (988,
	1009,
	30);
INSERT INTO V_VAL
	VALUES (992,
	1,
	1,
	11,
	3,
	15,
	0,
	0,
	0,
	0,
	10,
	974);
INSERT INTO V_TVL
	VALUES (992,
	1010);
INSERT INTO V_VAL
	VALUES (991,
	0,
	0,
	11,
	19,
	21,
	0,
	0,
	0,
	0,
	10,
	974);
INSERT INTO V_LRL
	VALUES (991,
	'0.0');
INSERT INTO V_VAL
	VALUES (995,
	1,
	1,
	12,
	3,
	13,
	0,
	0,
	0,
	0,
	10,
	974);
INSERT INTO V_TVL
	VALUES (995,
	1011);
INSERT INTO V_VAL
	VALUES (994,
	0,
	0,
	12,
	17,
	19,
	0,
	0,
	0,
	0,
	10,
	974);
INSERT INTO V_LRL
	VALUES (994,
	'0.0');
INSERT INTO V_VAL
	VALUES (998,
	1,
	0,
	13,
	3,
	13,
	0,
	0,
	0,
	0,
	10,
	974);
INSERT INTO V_TVL
	VALUES (998,
	1011);
INSERT INTO V_VAL
	VALUES (1012,
	0,
	0,
	13,
	17,
	25,
	0,
	0,
	0,
	0,
	106,
	974);
INSERT INTO V_IRF
	VALUES (1012,
	966);
INSERT INTO V_VAL
	VALUES (997,
	0,
	0,
	13,
	27,
	30,
	0,
	0,
	0,
	0,
	30,
	974);
INSERT INTO V_AVL
	VALUES (997,
	1012,
	215,
	691);
INSERT INTO V_VAL
	VALUES (1013,
	0,
	0,
	14,
	11,
	15,
	0,
	0,
	0,
	0,
	30,
	974);
INSERT INTO V_TVL
	VALUES (1013,
	1008);
INSERT INTO V_VAL
	VALUES (1000,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	974);
INSERT INTO V_BIN
	VALUES (1000,
	1014,
	1013,
	'>');
INSERT INTO V_VAL
	VALUES (1014,
	0,
	0,
	14,
	19,
	19,
	0,
	0,
	0,
	0,
	30,
	974);
INSERT INTO V_LIN
	VALUES (1014,
	'0');
INSERT INTO V_VAL
	VALUES (1004,
	1,
	0,
	25,
	3,
	13,
	0,
	0,
	0,
	0,
	10,
	974);
INSERT INTO V_TVL
	VALUES (1004,
	1011);
INSERT INTO V_VAL
	VALUES (1015,
	0,
	0,
	25,
	17,
	27,
	0,
	0,
	0,
	0,
	10,
	974);
INSERT INTO V_TVL
	VALUES (1015,
	1011);
INSERT INTO V_VAL
	VALUES (1003,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	10,
	974);
INSERT INTO V_BIN
	VALUES (1003,
	1016,
	1015,
	'-');
INSERT INTO V_VAL
	VALUES (1017,
	0,
	0,
	25,
	31,
	36,
	0,
	0,
	0,
	0,
	106,
	974);
INSERT INTO V_IRF
	VALUES (1017,
	1007);
INSERT INTO V_VAL
	VALUES (1016,
	0,
	0,
	25,
	38,
	41,
	0,
	0,
	0,
	0,
	30,
	974);
INSERT INTO V_AVL
	VALUES (1016,
	1017,
	215,
	691);
INSERT INTO V_VAL
	VALUES (1006,
	1,
	0,
	26,
	3,
	7,
	0,
	0,
	0,
	0,
	10,
	974);
INSERT INTO V_TVL
	VALUES (1006,
	979);
INSERT INTO V_VAL
	VALUES (1018,
	0,
	0,
	26,
	12,
	24,
	0,
	0,
	0,
	0,
	10,
	974);
INSERT INTO V_TVL
	VALUES (1018,
	1010);
INSERT INTO V_VAL
	VALUES (1019,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	10,
	974);
INSERT INTO V_BIN
	VALUES (1019,
	1020,
	1018,
	'/');
INSERT INTO V_VAL
	VALUES (1020,
	0,
	0,
	26,
	28,
	31,
	0,
	0,
	0,
	0,
	30,
	974);
INSERT INTO V_LIN
	VALUES (1020,
	'1000');
INSERT INTO V_VAL
	VALUES (1005,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	10,
	974);
INSERT INTO V_BIN
	VALUES (1005,
	1021,
	1019,
	'/');
INSERT INTO V_VAL
	VALUES (1022,
	0,
	0,
	26,
	37,
	47,
	0,
	0,
	0,
	0,
	10,
	974);
INSERT INTO V_TVL
	VALUES (1022,
	1011);
INSERT INTO V_VAL
	VALUES (1021,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	10,
	974);
INSERT INTO V_BIN
	VALUES (1021,
	1023,
	1022,
	'/');
INSERT INTO V_VAL
	VALUES (1023,
	0,
	0,
	26,
	51,
	64,
	0,
	0,
	0,
	0,
	30,
	974);
INSERT INTO V_SCV
	VALUES (1023,
	1024,
	30);
INSERT INTO V_VAR
	VALUES (1007,
	974,
	'cursor',
	1,
	106);
INSERT INTO V_INT
	VALUES (1007,
	0,
	215);
INSERT INTO V_VAR
	VALUES (1008,
	974,
	'index',
	1,
	30);
INSERT INTO V_TRN
	VALUES (1008,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1010,
	974,
	'totalDistance',
	1,
	10);
INSERT INTO V_TRN
	VALUES (1010,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1011,
	974,
	'elapsedTime',
	1,
	10);
INSERT INTO V_TRN
	VALUES (1011,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (1001,
	1,
	0,
	0,
	'Location',
	'',
	'',
	23,
	5,
	19,
	21,
	0,
	0,
	15,
	60,
	15,
	63,
	0,
	0,
	0,
	962,
	0);
INSERT INTO ACT_SMT
	VALUES (1025,
	1001,
	1026,
	15,
	5,
	'WorkoutSession::currentSpeed line: 15');
INSERT INTO ACT_SEL
	VALUES (1025,
	1027,
	1,
	'one',
	1028);
INSERT INTO ACT_SR
	VALUES (1025);
INSERT INTO ACT_LNK
	VALUES (1029,
	'preceeds',
	1025,
	217,
	0,
	2,
	215,
	15,
	49,
	15,
	60,
	15,
	63);
INSERT INTO ACT_SMT
	VALUES (1026,
	1001,
	1030,
	16,
	5,
	'WorkoutSession::currentSpeed line: 16');
INSERT INTO ACT_IF
	VALUES (1026,
	1031,
	1032,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1030,
	1001,
	1033,
	19,
	5,
	'WorkoutSession::currentSpeed line: 19');
INSERT INTO ACT_AI
	VALUES (1030,
	1034,
	1035,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1033,
	1001,
	1036,
	21,
	5,
	'WorkoutSession::currentSpeed line: 21');
INSERT INTO ACT_AI
	VALUES (1033,
	1037,
	1038,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1036,
	1001,
	1039,
	22,
	5,
	'WorkoutSession::currentSpeed line: 22');
INSERT INTO ACT_AI
	VALUES (1036,
	1040,
	1041,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1039,
	1001,
	0,
	23,
	5,
	'WorkoutSession::currentSpeed line: 23');
INSERT INTO ACT_AI
	VALUES (1039,
	1042,
	1043,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1028,
	0,
	0,
	15,
	41,
	46,
	0,
	0,
	0,
	0,
	106,
	1001);
INSERT INTO V_IRF
	VALUES (1028,
	1007);
INSERT INTO V_VAL
	VALUES (1044,
	0,
	0,
	16,
	16,
	28,
	0,
	0,
	0,
	0,
	106,
	1001);
INSERT INTO V_IRF
	VALUES (1044,
	1027);
INSERT INTO V_VAL
	VALUES (1032,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1001);
INSERT INTO V_UNY
	VALUES (1032,
	1044,
	'empty');
INSERT INTO V_VAL
	VALUES (1035,
	1,
	1,
	19,
	10,
	17,
	0,
	0,
	0,
	0,
	10,
	1001);
INSERT INTO V_TVL
	VALUES (1035,
	1045);
INSERT INTO V_VAL
	VALUES (1034,
	0,
	0,
	19,
	31,
	42,
	19,
	44,
	20,
	70,
	10,
	1001);
INSERT INTO V_MSV
	VALUES (1034,
	0,
	58,
	1,
	19,
	21,
	0);
INSERT INTO V_VAL
	VALUES (1046,
	0,
	0,
	19,
	52,
	57,
	0,
	0,
	0,
	0,
	106,
	1001);
INSERT INTO V_IRF
	VALUES (1046,
	1007);
INSERT INTO V_VAL
	VALUES (1047,
	0,
	0,
	19,
	59,
	66,
	0,
	0,
	0,
	0,
	10,
	1001);
INSERT INTO V_AVL
	VALUES (1047,
	1046,
	215,
	695);
INSERT INTO V_PAR
	VALUES (1047,
	0,
	1034,
	'fromLat',
	1048,
	19,
	44);
INSERT INTO V_VAL
	VALUES (1049,
	0,
	0,
	19,
	79,
	84,
	0,
	0,
	0,
	0,
	106,
	1001);
INSERT INTO V_IRF
	VALUES (1049,
	1007);
INSERT INTO V_VAL
	VALUES (1048,
	0,
	0,
	19,
	86,
	94,
	0,
	0,
	0,
	0,
	10,
	1001);
INSERT INTO V_AVL
	VALUES (1048,
	1049,
	215,
	698);
INSERT INTO V_PAR
	VALUES (1048,
	0,
	1034,
	'fromLong',
	1050,
	19,
	69);
INSERT INTO V_VAL
	VALUES (1051,
	0,
	0,
	20,
	46,
	58,
	0,
	0,
	0,
	0,
	106,
	1001);
INSERT INTO V_IRF
	VALUES (1051,
	1027);
INSERT INTO V_VAL
	VALUES (1050,
	0,
	0,
	20,
	60,
	67,
	0,
	0,
	0,
	0,
	10,
	1001);
INSERT INTO V_AVL
	VALUES (1050,
	1051,
	215,
	695);
INSERT INTO V_PAR
	VALUES (1050,
	0,
	1034,
	'toLat',
	1052,
	20,
	39);
INSERT INTO V_VAL
	VALUES (1053,
	0,
	0,
	20,
	78,
	90,
	0,
	0,
	0,
	0,
	106,
	1001);
INSERT INTO V_IRF
	VALUES (1053,
	1027);
INSERT INTO V_VAL
	VALUES (1052,
	0,
	0,
	20,
	92,
	100,
	0,
	0,
	0,
	0,
	10,
	1001);
INSERT INTO V_AVL
	VALUES (1052,
	1053,
	215,
	698);
INSERT INTO V_PAR
	VALUES (1052,
	0,
	1034,
	'toLong',
	0,
	20,
	70);
INSERT INTO V_VAL
	VALUES (1038,
	1,
	0,
	21,
	5,
	17,
	0,
	0,
	0,
	0,
	10,
	1001);
INSERT INTO V_TVL
	VALUES (1038,
	1010);
INSERT INTO V_VAL
	VALUES (1054,
	0,
	0,
	21,
	21,
	33,
	0,
	0,
	0,
	0,
	10,
	1001);
INSERT INTO V_TVL
	VALUES (1054,
	1010);
INSERT INTO V_VAL
	VALUES (1037,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	10,
	1001);
INSERT INTO V_BIN
	VALUES (1037,
	1055,
	1054,
	'+');
INSERT INTO V_VAL
	VALUES (1055,
	0,
	0,
	21,
	37,
	44,
	0,
	0,
	0,
	0,
	10,
	1001);
INSERT INTO V_TVL
	VALUES (1055,
	1045);
INSERT INTO V_VAL
	VALUES (1041,
	1,
	0,
	22,
	5,
	9,
	0,
	0,
	0,
	0,
	30,
	1001);
INSERT INTO V_TVL
	VALUES (1041,
	1008);
INSERT INTO V_VAL
	VALUES (1056,
	0,
	0,
	22,
	13,
	17,
	0,
	0,
	0,
	0,
	30,
	1001);
INSERT INTO V_TVL
	VALUES (1056,
	1008);
INSERT INTO V_VAL
	VALUES (1040,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	30,
	1001);
INSERT INTO V_BIN
	VALUES (1040,
	1057,
	1056,
	'-');
INSERT INTO V_VAL
	VALUES (1057,
	0,
	0,
	22,
	21,
	21,
	0,
	0,
	0,
	0,
	30,
	1001);
INSERT INTO V_LIN
	VALUES (1057,
	'1');
INSERT INTO V_VAL
	VALUES (1043,
	1,
	0,
	23,
	5,
	10,
	0,
	0,
	0,
	0,
	106,
	1001);
INSERT INTO V_IRF
	VALUES (1043,
	1007);
INSERT INTO V_VAL
	VALUES (1042,
	0,
	0,
	23,
	14,
	26,
	0,
	0,
	0,
	0,
	106,
	1001);
INSERT INTO V_IRF
	VALUES (1042,
	1027);
INSERT INTO V_VAR
	VALUES (1027,
	1001,
	'previousPoint',
	1,
	106);
INSERT INTO V_INT
	VALUES (1027,
	0,
	215);
INSERT INTO V_VAR
	VALUES (1045,
	1001,
	'distance',
	1,
	10);
INSERT INTO V_TRN
	VALUES (1045,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (1031,
	0,
	0,
	0,
	'',
	'',
	'',
	17,
	7,
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
	962,
	0);
INSERT INTO ACT_SMT
	VALUES (1058,
	1031,
	0,
	17,
	7,
	'WorkoutSession::currentSpeed line: 17');
INSERT INTO ACT_BRK
	VALUES (1058);
INSERT INTO O_BATTR
	VALUES (529,
	102);
INSERT INTO O_ATTR
	VALUES (529,
	102,
	870,
	'currentSpeed',
	'The current speed of the device, expressed in kilometers per hour, averaged 
over a predefined number of the most recently acquired track points.
',
	'',
	'currentSpeed',
	0,
	10,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (550,
	102,
	'// Calculate current pace from current speed, converting from km/hour to minutes/km.

if ( self.currentSpeed != 0.0 )
  self.currentPace = 60.0 / self.currentSpeed;
else
  self.currentPace = 0.0;
end if;',
	1);
INSERT INTO ACT_DAB
	VALUES (1059,
	102,
	550,
	1);
INSERT INTO ACT_ACT
	VALUES (1059,
	'derived attribute',
	0,
	1060,
	0,
	0,
	'WorkoutSession::currentPace',
	0);
INSERT INTO ACT_BLK
	VALUES (1060,
	0,
	0,
	0,
	'',
	'',
	'',
	5,
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
	0,
	0,
	1059,
	0);
INSERT INTO ACT_SMT
	VALUES (1061,
	1060,
	0,
	3,
	1,
	'WorkoutSession::currentPace line: 3');
INSERT INTO ACT_IF
	VALUES (1061,
	1062,
	1063,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1064,
	1060,
	0,
	5,
	1,
	'WorkoutSession::currentPace line: 5');
INSERT INTO ACT_E
	VALUES (1064,
	1065,
	1061);
INSERT INTO V_VAL
	VALUES (1066,
	0,
	0,
	3,
	6,
	9,
	0,
	0,
	0,
	0,
	106,
	1060);
INSERT INTO V_IRF
	VALUES (1066,
	1067);
INSERT INTO V_VAL
	VALUES (1068,
	0,
	0,
	3,
	11,
	22,
	0,
	0,
	0,
	0,
	10,
	1060);
INSERT INTO V_AVL
	VALUES (1068,
	1066,
	102,
	529);
INSERT INTO V_VAL
	VALUES (1063,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1060);
INSERT INTO V_BIN
	VALUES (1063,
	1069,
	1068,
	'!=');
INSERT INTO V_VAL
	VALUES (1069,
	0,
	0,
	3,
	27,
	29,
	0,
	0,
	0,
	0,
	10,
	1060);
INSERT INTO V_LRL
	VALUES (1069,
	'0.0');
INSERT INTO V_VAR
	VALUES (1067,
	1060,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (1067,
	0,
	102);
INSERT INTO ACT_BLK
	VALUES (1062,
	0,
	0,
	0,
	'',
	'',
	'',
	4,
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
	1059,
	0);
INSERT INTO ACT_SMT
	VALUES (1070,
	1062,
	0,
	4,
	3,
	'WorkoutSession::currentPace line: 4');
INSERT INTO ACT_AI
	VALUES (1070,
	1071,
	1072,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1073,
	1,
	0,
	4,
	3,
	6,
	0,
	0,
	0,
	0,
	106,
	1062);
INSERT INTO V_IRF
	VALUES (1073,
	1067);
INSERT INTO V_VAL
	VALUES (1072,
	1,
	0,
	4,
	8,
	18,
	0,
	0,
	0,
	0,
	10,
	1062);
INSERT INTO V_AVL
	VALUES (1072,
	1073,
	102,
	550);
INSERT INTO V_VAL
	VALUES (1074,
	0,
	0,
	4,
	22,
	25,
	0,
	0,
	0,
	0,
	10,
	1062);
INSERT INTO V_LRL
	VALUES (1074,
	'60.0');
INSERT INTO V_VAL
	VALUES (1071,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	10,
	1062);
INSERT INTO V_BIN
	VALUES (1071,
	1075,
	1074,
	'/');
INSERT INTO V_VAL
	VALUES (1076,
	0,
	0,
	4,
	29,
	32,
	0,
	0,
	0,
	0,
	106,
	1062);
INSERT INTO V_IRF
	VALUES (1076,
	1067);
INSERT INTO V_VAL
	VALUES (1075,
	0,
	0,
	4,
	34,
	45,
	0,
	0,
	0,
	0,
	10,
	1062);
INSERT INTO V_AVL
	VALUES (1075,
	1076,
	102,
	529);
INSERT INTO ACT_BLK
	VALUES (1065,
	0,
	0,
	0,
	'',
	'',
	'',
	6,
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
	1059,
	0);
INSERT INTO ACT_SMT
	VALUES (1077,
	1065,
	0,
	6,
	3,
	'WorkoutSession::currentPace line: 6');
INSERT INTO ACT_AI
	VALUES (1077,
	1078,
	1079,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1080,
	1,
	0,
	6,
	3,
	6,
	0,
	0,
	0,
	0,
	106,
	1065);
INSERT INTO V_IRF
	VALUES (1080,
	1067);
INSERT INTO V_VAL
	VALUES (1079,
	1,
	0,
	6,
	8,
	18,
	0,
	0,
	0,
	0,
	10,
	1065);
INSERT INTO V_AVL
	VALUES (1079,
	1080,
	102,
	550);
INSERT INTO V_VAL
	VALUES (1078,
	0,
	0,
	6,
	22,
	24,
	0,
	0,
	0,
	0,
	10,
	1065);
INSERT INTO V_LRL
	VALUES (1078,
	'0.0');
INSERT INTO O_BATTR
	VALUES (550,
	102);
INSERT INTO O_ATTR
	VALUES (550,
	102,
	529,
	'currentPace',
	'The inverse of currentSpeed, expressed in minutes per kilometer.',
	'',
	'currentPace',
	0,
	10,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (571,
	102,
	'// Calculate sliding average using the most recent samples.

select one workoutTimer related by self->WorkoutTimer[R8.''is timed by''];
select many samples related by self->HeartRateSample[R6.''tracks heart rate over time as'']
  where ( selected.time >= ( workoutTimer.time - (HeartRateSamplingPeriod * HeartRateAveragingWindow) ) );
numberOfSamples = 0;
sum = 0;
for each sample in samples
  numberOfSamples = numberOfSamples + 1;
  sum = sum + sample.heartRate;
end for;
if ( numberOfSamples > 0 )
  self.currentHeartRate = sum / numberOfSamples;
else
  self.currentHeartRate = 0;
end if;
',
	1);
INSERT INTO ACT_DAB
	VALUES (1081,
	102,
	571,
	1);
INSERT INTO ACT_ACT
	VALUES (1081,
	'derived attribute',
	0,
	1082,
	0,
	0,
	'WorkoutSession::currentHeartRate',
	0);
INSERT INTO ACT_BLK
	VALUES (1082,
	1,
	0,
	1,
	'',
	'',
	'',
	14,
	1,
	4,
	38,
	0,
	0,
	4,
	54,
	4,
	57,
	0,
	0,
	0,
	1081,
	0);
INSERT INTO ACT_SMT
	VALUES (1083,
	1082,
	1084,
	3,
	1,
	'WorkoutSession::currentHeartRate line: 3');
INSERT INTO ACT_SEL
	VALUES (1083,
	1085,
	1,
	'one',
	1086);
INSERT INTO ACT_SR
	VALUES (1083);
INSERT INTO ACT_LNK
	VALUES (1087,
	'''is timed by''',
	1083,
	229,
	0,
	2,
	118,
	3,
	42,
	3,
	55,
	3,
	58);
INSERT INTO ACT_SMT
	VALUES (1084,
	1082,
	1088,
	4,
	1,
	'WorkoutSession::currentHeartRate line: 4');
INSERT INTO ACT_SEL
	VALUES (1084,
	1089,
	1,
	'many',
	1090);
INSERT INTO ACT_SRW
	VALUES (1084,
	1091);
INSERT INTO ACT_LNK
	VALUES (1092,
	'''tracks heart rate over time as''',
	1084,
	235,
	0,
	3,
	236,
	4,
	38,
	4,
	54,
	4,
	57);
INSERT INTO ACT_SMT
	VALUES (1088,
	1082,
	1093,
	6,
	1,
	'WorkoutSession::currentHeartRate line: 6');
INSERT INTO ACT_AI
	VALUES (1088,
	1094,
	1095,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1093,
	1082,
	1096,
	7,
	1,
	'WorkoutSession::currentHeartRate line: 7');
INSERT INTO ACT_AI
	VALUES (1093,
	1097,
	1098,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1096,
	1082,
	1099,
	8,
	1,
	'WorkoutSession::currentHeartRate line: 8');
INSERT INTO ACT_FOR
	VALUES (1096,
	1100,
	1,
	1101,
	1089,
	236);
INSERT INTO ACT_SMT
	VALUES (1099,
	1082,
	0,
	12,
	1,
	'WorkoutSession::currentHeartRate line: 12');
INSERT INTO ACT_IF
	VALUES (1099,
	1102,
	1103,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1104,
	1082,
	0,
	14,
	1,
	'WorkoutSession::currentHeartRate line: 14');
INSERT INTO ACT_E
	VALUES (1104,
	1105,
	1099);
INSERT INTO V_VAL
	VALUES (1086,
	0,
	0,
	3,
	36,
	39,
	0,
	0,
	0,
	0,
	106,
	1082);
INSERT INTO V_IRF
	VALUES (1086,
	1106);
INSERT INTO V_VAL
	VALUES (1090,
	0,
	0,
	4,
	32,
	35,
	0,
	0,
	0,
	0,
	106,
	1082);
INSERT INTO V_IRF
	VALUES (1090,
	1106);
INSERT INTO V_VAL
	VALUES (1107,
	0,
	0,
	5,
	11,
	-1,
	0,
	0,
	0,
	0,
	106,
	1082);
INSERT INTO V_SLR
	VALUES (1107,
	0,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1108,
	0,
	0,
	5,
	20,
	23,
	0,
	0,
	0,
	0,
	30,
	1082);
INSERT INTO V_AVL
	VALUES (1108,
	1107,
	236,
	636);
INSERT INTO V_VAL
	VALUES (1091,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1082);
INSERT INTO V_BIN
	VALUES (1091,
	1109,
	1108,
	'>=');
INSERT INTO V_VAL
	VALUES (1110,
	0,
	0,
	5,
	30,
	41,
	0,
	0,
	0,
	0,
	106,
	1082);
INSERT INTO V_IRF
	VALUES (1110,
	1085);
INSERT INTO V_VAL
	VALUES (1111,
	0,
	0,
	5,
	43,
	46,
	0,
	0,
	0,
	0,
	30,
	1082);
INSERT INTO V_AVL
	VALUES (1111,
	1110,
	118,
	422);
INSERT INTO V_VAL
	VALUES (1109,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	30,
	1082);
INSERT INTO V_BIN
	VALUES (1109,
	1112,
	1111,
	'-');
INSERT INTO V_VAL
	VALUES (1113,
	0,
	0,
	5,
	51,
	73,
	0,
	0,
	0,
	0,
	30,
	1082);
INSERT INTO V_SCV
	VALUES (1113,
	1114,
	30);
INSERT INTO V_VAL
	VALUES (1112,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	30,
	1082);
INSERT INTO V_BIN
	VALUES (1112,
	1115,
	1113,
	'*');
INSERT INTO V_VAL
	VALUES (1115,
	0,
	0,
	5,
	77,
	100,
	0,
	0,
	0,
	0,
	30,
	1082);
INSERT INTO V_SCV
	VALUES (1115,
	1116,
	30);
INSERT INTO V_VAL
	VALUES (1095,
	1,
	1,
	6,
	1,
	15,
	0,
	0,
	0,
	0,
	30,
	1082);
INSERT INTO V_TVL
	VALUES (1095,
	1117);
INSERT INTO V_VAL
	VALUES (1094,
	0,
	0,
	6,
	19,
	19,
	0,
	0,
	0,
	0,
	30,
	1082);
INSERT INTO V_LIN
	VALUES (1094,
	'0');
INSERT INTO V_VAL
	VALUES (1098,
	1,
	1,
	7,
	1,
	3,
	0,
	0,
	0,
	0,
	30,
	1082);
INSERT INTO V_TVL
	VALUES (1098,
	1118);
INSERT INTO V_VAL
	VALUES (1097,
	0,
	0,
	7,
	7,
	7,
	0,
	0,
	0,
	0,
	30,
	1082);
INSERT INTO V_LIN
	VALUES (1097,
	'0');
INSERT INTO V_VAL
	VALUES (1119,
	0,
	0,
	12,
	6,
	20,
	0,
	0,
	0,
	0,
	30,
	1082);
INSERT INTO V_TVL
	VALUES (1119,
	1117);
INSERT INTO V_VAL
	VALUES (1103,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1082);
INSERT INTO V_BIN
	VALUES (1103,
	1120,
	1119,
	'>');
INSERT INTO V_VAL
	VALUES (1120,
	0,
	0,
	12,
	24,
	24,
	0,
	0,
	0,
	0,
	30,
	1082);
INSERT INTO V_LIN
	VALUES (1120,
	'0');
INSERT INTO V_VAR
	VALUES (1085,
	1082,
	'workoutTimer',
	1,
	106);
INSERT INTO V_INT
	VALUES (1085,
	0,
	118);
INSERT INTO V_VAR
	VALUES (1106,
	1082,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (1106,
	0,
	102);
INSERT INTO V_VAR
	VALUES (1089,
	1082,
	'samples',
	1,
	590);
INSERT INTO V_INS
	VALUES (1089,
	236);
INSERT INTO V_VAR
	VALUES (1117,
	1082,
	'numberOfSamples',
	1,
	30);
INSERT INTO V_TRN
	VALUES (1117,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1118,
	1082,
	'sum',
	1,
	30);
INSERT INTO V_TRN
	VALUES (1118,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1101,
	1082,
	'sample',
	1,
	106);
INSERT INTO V_INT
	VALUES (1101,
	1,
	236);
INSERT INTO ACT_BLK
	VALUES (1100,
	0,
	0,
	0,
	'',
	'',
	'',
	10,
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
	1081,
	0);
INSERT INTO ACT_SMT
	VALUES (1121,
	1100,
	1122,
	9,
	3,
	'WorkoutSession::currentHeartRate line: 9');
INSERT INTO ACT_AI
	VALUES (1121,
	1123,
	1124,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1122,
	1100,
	0,
	10,
	3,
	'WorkoutSession::currentHeartRate line: 10');
INSERT INTO ACT_AI
	VALUES (1122,
	1125,
	1126,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1124,
	1,
	0,
	9,
	3,
	17,
	0,
	0,
	0,
	0,
	30,
	1100);
INSERT INTO V_TVL
	VALUES (1124,
	1117);
INSERT INTO V_VAL
	VALUES (1127,
	0,
	0,
	9,
	21,
	35,
	0,
	0,
	0,
	0,
	30,
	1100);
INSERT INTO V_TVL
	VALUES (1127,
	1117);
INSERT INTO V_VAL
	VALUES (1123,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	30,
	1100);
INSERT INTO V_BIN
	VALUES (1123,
	1128,
	1127,
	'+');
INSERT INTO V_VAL
	VALUES (1128,
	0,
	0,
	9,
	39,
	39,
	0,
	0,
	0,
	0,
	30,
	1100);
INSERT INTO V_LIN
	VALUES (1128,
	'1');
INSERT INTO V_VAL
	VALUES (1126,
	1,
	0,
	10,
	3,
	5,
	0,
	0,
	0,
	0,
	30,
	1100);
INSERT INTO V_TVL
	VALUES (1126,
	1118);
INSERT INTO V_VAL
	VALUES (1129,
	0,
	0,
	10,
	9,
	11,
	0,
	0,
	0,
	0,
	30,
	1100);
INSERT INTO V_TVL
	VALUES (1129,
	1118);
INSERT INTO V_VAL
	VALUES (1125,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	30,
	1100);
INSERT INTO V_BIN
	VALUES (1125,
	1130,
	1129,
	'+');
INSERT INTO V_VAL
	VALUES (1131,
	0,
	0,
	10,
	15,
	20,
	0,
	0,
	0,
	0,
	106,
	1100);
INSERT INTO V_IRF
	VALUES (1131,
	1101);
INSERT INTO V_VAL
	VALUES (1130,
	0,
	0,
	10,
	22,
	30,
	0,
	0,
	0,
	0,
	30,
	1100);
INSERT INTO V_AVL
	VALUES (1130,
	1131,
	236,
	635);
INSERT INTO ACT_BLK
	VALUES (1102,
	0,
	0,
	0,
	'',
	'',
	'',
	13,
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
	1081,
	0);
INSERT INTO ACT_SMT
	VALUES (1132,
	1102,
	0,
	13,
	3,
	'WorkoutSession::currentHeartRate line: 13');
INSERT INTO ACT_AI
	VALUES (1132,
	1133,
	1134,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1135,
	1,
	0,
	13,
	3,
	6,
	0,
	0,
	0,
	0,
	106,
	1102);
INSERT INTO V_IRF
	VALUES (1135,
	1106);
INSERT INTO V_VAL
	VALUES (1134,
	1,
	0,
	13,
	8,
	23,
	0,
	0,
	0,
	0,
	30,
	1102);
INSERT INTO V_AVL
	VALUES (1134,
	1135,
	102,
	571);
INSERT INTO V_VAL
	VALUES (1136,
	0,
	0,
	13,
	27,
	29,
	0,
	0,
	0,
	0,
	30,
	1102);
INSERT INTO V_TVL
	VALUES (1136,
	1118);
INSERT INTO V_VAL
	VALUES (1133,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	30,
	1102);
INSERT INTO V_BIN
	VALUES (1133,
	1137,
	1136,
	'/');
INSERT INTO V_VAL
	VALUES (1137,
	0,
	0,
	13,
	33,
	47,
	0,
	0,
	0,
	0,
	30,
	1102);
INSERT INTO V_TVL
	VALUES (1137,
	1117);
INSERT INTO ACT_BLK
	VALUES (1105,
	0,
	0,
	0,
	'',
	'',
	'',
	15,
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
	1081,
	0);
INSERT INTO ACT_SMT
	VALUES (1138,
	1105,
	0,
	15,
	3,
	'WorkoutSession::currentHeartRate line: 15');
INSERT INTO ACT_AI
	VALUES (1138,
	1139,
	1140,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1141,
	1,
	0,
	15,
	3,
	6,
	0,
	0,
	0,
	0,
	106,
	1105);
INSERT INTO V_IRF
	VALUES (1141,
	1106);
INSERT INTO V_VAL
	VALUES (1140,
	1,
	0,
	15,
	8,
	23,
	0,
	0,
	0,
	0,
	30,
	1105);
INSERT INTO V_AVL
	VALUES (1140,
	1141,
	102,
	571);
INSERT INTO V_VAL
	VALUES (1139,
	0,
	0,
	15,
	27,
	27,
	0,
	0,
	0,
	0,
	30,
	1105);
INSERT INTO V_LIN
	VALUES (1139,
	'0');
INSERT INTO O_BATTR
	VALUES (571,
	102);
INSERT INTO O_ATTR
	VALUES (571,
	102,
	550,
	'currentHeartRate',
	'Current heart rate, expressed in beats per minute, averaged over 
a predefined number of the most recent heart-rate samples.',
	'',
	'currentHeartRate',
	0,
	30,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (499,
	102);
INSERT INTO O_BATTR
	VALUES (499,
	102);
INSERT INTO O_ATTR
	VALUES (499,
	102,
	571,
	'accumulatedDistance',
	'Accumulated distance, expressed in meters, for this workout session.',
	'',
	'accumulatedDistance',
	0,
	10,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	102);
INSERT INTO O_OIDA
	VALUES (868,
	102,
	0,
	'startDate');
INSERT INTO O_OIDA
	VALUES (870,
	102,
	0,
	'startTime');
INSERT INTO O_ID
	VALUES (1,
	102);
INSERT INTO O_ID
	VALUES (2,
	102);
INSERT INTO PE_PE
	VALUES (118,
	1,
	211,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (118,
	'WorkoutTimer',
	1,
	'WorkoutTimer',
	'Represents the stopwatch portion of the device.
This class also knows:
- Track points are stored only when the stopwatch is running.
- If a goal is executing, evaluation of it must be paused when
the timer pauses.
- How to handle the lap/reset signal based on whether the 
stopwatch is currently running.

This is a singleton instance.
',
	0);
INSERT INTO O_TFR
	VALUES (1142,
	118,
	'activate',
	'',
	6,
	1,
	'// Start the underlying timer that drives the workout timer.
create event instance evt of WorkoutTimer3:tick() to self;
self.timer = TIM::timer_start_recurring( event_inst: evt, microseconds: (timerPeriod * 1000000) );

// Resume evaluation of the currently executing goal, if there is one.
select one executingGoal related by
  self->WorkoutSession[R8.''acts as the stopwatch for'']->Goal[R11.''is currently executing''];
if ( not empty executingGoal )
  generate Goal2:Evaluate to executingGoal;
end if;

// Resume listening for updates from the GPS and heart monitor.
send Location::registerListener();
send HeartRateMonitor::registerListener();',
	1,
	'',
	0);
INSERT INTO ACT_OPB
	VALUES (1143,
	1142);
INSERT INTO ACT_ACT
	VALUES (1143,
	'operation',
	0,
	1144,
	0,
	0,
	'WorkoutTimer::activate',
	0);
INSERT INTO ACT_BLK
	VALUES (1144,
	1,
	0,
	0,
	'HeartRateMonitor',
	'',
	'',
	14,
	1,
	14,
	6,
	0,
	0,
	7,
	62,
	7,
	66,
	0,
	0,
	0,
	1143,
	0);
INSERT INTO ACT_SMT
	VALUES (1145,
	1144,
	1146,
	2,
	1,
	'WorkoutTimer::activate line: 2');
INSERT INTO E_ESS
	VALUES (1145,
	1,
	0,
	2,
	30,
	2,
	44,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES (1145,
	1,
	1147);
INSERT INTO E_CSME
	VALUES (1145,
	1148);
INSERT INTO E_CEI
	VALUES (1145,
	1149);
INSERT INTO ACT_SMT
	VALUES (1146,
	1144,
	1150,
	3,
	1,
	'WorkoutTimer::activate line: 3');
INSERT INTO ACT_AI
	VALUES (1146,
	1151,
	1152,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1150,
	1144,
	1153,
	6,
	1,
	'WorkoutTimer::activate line: 6');
INSERT INTO ACT_SEL
	VALUES (1150,
	1154,
	1,
	'one',
	1155);
INSERT INTO ACT_SR
	VALUES (1150);
INSERT INTO ACT_LNK
	VALUES (1156,
	'''acts as the stopwatch for''',
	1150,
	229,
	1157,
	2,
	102,
	7,
	9,
	7,
	24,
	7,
	27);
INSERT INTO ACT_LNK
	VALUES (1157,
	'''is currently executing''',
	0,
	245,
	0,
	2,
	241,
	7,
	57,
	7,
	62,
	7,
	66);
INSERT INTO ACT_SMT
	VALUES (1153,
	1144,
	1158,
	8,
	1,
	'WorkoutTimer::activate line: 8');
INSERT INTO ACT_IF
	VALUES (1153,
	1159,
	1160,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1158,
	1144,
	1161,
	13,
	1,
	'WorkoutTimer::activate line: 13');
INSERT INTO ACT_IOP
	VALUES (1158,
	13,
	16,
	13,
	6,
	0,
	66,
	0);
INSERT INTO ACT_SMT
	VALUES (1161,
	1144,
	0,
	14,
	1,
	'WorkoutTimer::activate line: 14');
INSERT INTO ACT_IOP
	VALUES (1161,
	14,
	24,
	14,
	6,
	0,
	88,
	0);
INSERT INTO V_VAL
	VALUES (1162,
	1,
	0,
	3,
	1,
	4,
	0,
	0,
	0,
	0,
	106,
	1144);
INSERT INTO V_IRF
	VALUES (1162,
	1149);
INSERT INTO V_VAL
	VALUES (1152,
	1,
	0,
	3,
	6,
	10,
	0,
	0,
	0,
	0,
	332,
	1144);
INSERT INTO V_AVL
	VALUES (1152,
	1162,
	118,
	1163);
INSERT INTO V_VAL
	VALUES (1151,
	0,
	0,
	3,
	19,
	-1,
	3,
	42,
	3,
	59,
	332,
	1144);
INSERT INTO V_BRV
	VALUES (1151,
	338,
	1,
	3,
	14);
INSERT INTO V_VAL
	VALUES (1164,
	0,
	0,
	3,
	54,
	56,
	0,
	0,
	0,
	0,
	335,
	1144);
INSERT INTO V_TVL
	VALUES (1164,
	1147);
INSERT INTO V_PAR
	VALUES (1164,
	0,
	1151,
	'event_inst',
	1165,
	3,
	42);
INSERT INTO V_VAL
	VALUES (1166,
	0,
	0,
	3,
	74,
	84,
	0,
	0,
	0,
	0,
	30,
	1144);
INSERT INTO V_SCV
	VALUES (1166,
	1167,
	30);
INSERT INTO V_VAL
	VALUES (1165,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	30,
	1144);
INSERT INTO V_BIN
	VALUES (1165,
	1168,
	1166,
	'*');
INSERT INTO V_PAR
	VALUES (1165,
	0,
	1151,
	'microseconds',
	0,
	3,
	59);
INSERT INTO V_VAL
	VALUES (1168,
	0,
	0,
	3,
	88,
	94,
	0,
	0,
	0,
	0,
	30,
	1144);
INSERT INTO V_LIN
	VALUES (1168,
	'1000000');
INSERT INTO V_VAL
	VALUES (1155,
	0,
	0,
	7,
	3,
	6,
	0,
	0,
	0,
	0,
	106,
	1144);
INSERT INTO V_IRF
	VALUES (1155,
	1149);
INSERT INTO V_VAL
	VALUES (1169,
	0,
	0,
	8,
	16,
	28,
	0,
	0,
	0,
	0,
	106,
	1144);
INSERT INTO V_IRF
	VALUES (1169,
	1154);
INSERT INTO V_VAL
	VALUES (1170,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1144);
INSERT INTO V_UNY
	VALUES (1170,
	1169,
	'empty');
INSERT INTO V_VAL
	VALUES (1160,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1144);
INSERT INTO V_UNY
	VALUES (1160,
	1170,
	'not');
INSERT INTO V_VAR
	VALUES (1147,
	1144,
	'evt',
	1,
	335);
INSERT INTO V_TRN
	VALUES (1147,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1149,
	1144,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (1149,
	0,
	118);
INSERT INTO V_VAR
	VALUES (1154,
	1144,
	'executingGoal',
	1,
	106);
INSERT INTO V_INT
	VALUES (1154,
	0,
	241);
INSERT INTO ACT_BLK
	VALUES (1159,
	0,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	9,
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
	1143,
	0);
INSERT INTO ACT_SMT
	VALUES (1171,
	1159,
	0,
	9,
	3,
	'WorkoutTimer::activate line: 9');
INSERT INTO E_ESS
	VALUES (1171,
	1,
	0,
	9,
	12,
	9,
	18,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (1171);
INSERT INTO E_GSME
	VALUES (1171,
	1172);
INSERT INTO E_GEN
	VALUES (1171,
	1154);
INSERT INTO O_TFR
	VALUES (1173,
	118,
	'deactivate',
	'',
	6,
	1,
	'// Cancel the timer driving the workout timer, ignoring the return code.
cancelSucceeded = TIM::timer_cancel(timer_inst_ref: self.timer);

// Pause evaluation of the currently executing goal, if there is one.
select one executingGoal related by
  self->WorkoutSession[R8.''acts as the stopwatch for'']->Goal[R11.''is currently executing''];
if ( not empty executingGoal )
  generate Goal3:Pause to executingGoal;
end if;

// Stop listening for updates from the GPS and heart monitor.
send Location::unregisterListener();
send HeartRateMonitor::unregisterListener();',
	1,
	'',
	1142);
INSERT INTO ACT_OPB
	VALUES (1174,
	1173);
INSERT INTO ACT_ACT
	VALUES (1174,
	'operation',
	0,
	1175,
	0,
	0,
	'WorkoutTimer::deactivate',
	0);
INSERT INTO ACT_BLK
	VALUES (1175,
	1,
	0,
	0,
	'HeartRateMonitor',
	'',
	'',
	13,
	1,
	13,
	6,
	0,
	0,
	6,
	62,
	6,
	66,
	0,
	0,
	0,
	1174,
	0);
INSERT INTO ACT_SMT
	VALUES (1176,
	1175,
	1177,
	2,
	1,
	'WorkoutTimer::deactivate line: 2');
INSERT INTO ACT_AI
	VALUES (1176,
	1178,
	1179,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1177,
	1175,
	1180,
	5,
	1,
	'WorkoutTimer::deactivate line: 5');
INSERT INTO ACT_SEL
	VALUES (1177,
	1181,
	1,
	'one',
	1182);
INSERT INTO ACT_SR
	VALUES (1177);
INSERT INTO ACT_LNK
	VALUES (1183,
	'''acts as the stopwatch for''',
	1177,
	229,
	1184,
	2,
	102,
	6,
	9,
	6,
	24,
	6,
	27);
INSERT INTO ACT_LNK
	VALUES (1184,
	'''is currently executing''',
	0,
	245,
	0,
	2,
	241,
	6,
	57,
	6,
	62,
	6,
	66);
INSERT INTO ACT_SMT
	VALUES (1180,
	1175,
	1185,
	7,
	1,
	'WorkoutTimer::deactivate line: 7');
INSERT INTO ACT_IF
	VALUES (1180,
	1186,
	1187,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1185,
	1175,
	1188,
	12,
	1,
	'WorkoutTimer::deactivate line: 12');
INSERT INTO ACT_IOP
	VALUES (1185,
	12,
	16,
	12,
	6,
	0,
	69,
	0);
INSERT INTO ACT_SMT
	VALUES (1188,
	1175,
	0,
	13,
	1,
	'WorkoutTimer::deactivate line: 13');
INSERT INTO ACT_IOP
	VALUES (1188,
	13,
	24,
	13,
	6,
	0,
	91,
	0);
INSERT INTO V_VAL
	VALUES (1179,
	1,
	1,
	2,
	1,
	15,
	0,
	0,
	0,
	0,
	108,
	1175);
INSERT INTO V_TVL
	VALUES (1179,
	1189);
INSERT INTO V_VAL
	VALUES (1178,
	0,
	0,
	2,
	24,
	-1,
	2,
	37,
	0,
	0,
	108,
	1175);
INSERT INTO V_BRV
	VALUES (1178,
	357,
	1,
	2,
	19);
INSERT INTO V_VAL
	VALUES (1190,
	0,
	0,
	2,
	53,
	56,
	0,
	0,
	0,
	0,
	106,
	1175);
INSERT INTO V_IRF
	VALUES (1190,
	1191);
INSERT INTO V_VAL
	VALUES (1192,
	0,
	0,
	2,
	58,
	62,
	0,
	0,
	0,
	0,
	332,
	1175);
INSERT INTO V_AVL
	VALUES (1192,
	1190,
	118,
	1163);
INSERT INTO V_PAR
	VALUES (1192,
	0,
	1178,
	'timer_inst_ref',
	0,
	2,
	37);
INSERT INTO V_VAL
	VALUES (1182,
	0,
	0,
	6,
	3,
	6,
	0,
	0,
	0,
	0,
	106,
	1175);
INSERT INTO V_IRF
	VALUES (1182,
	1191);
INSERT INTO V_VAL
	VALUES (1193,
	0,
	0,
	7,
	16,
	28,
	0,
	0,
	0,
	0,
	106,
	1175);
INSERT INTO V_IRF
	VALUES (1193,
	1181);
INSERT INTO V_VAL
	VALUES (1194,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1175);
INSERT INTO V_UNY
	VALUES (1194,
	1193,
	'empty');
INSERT INTO V_VAL
	VALUES (1187,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1175);
INSERT INTO V_UNY
	VALUES (1187,
	1194,
	'not');
INSERT INTO V_VAR
	VALUES (1189,
	1175,
	'cancelSucceeded',
	1,
	108);
INSERT INTO V_TRN
	VALUES (1189,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1191,
	1175,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (1191,
	0,
	118);
INSERT INTO V_VAR
	VALUES (1181,
	1175,
	'executingGoal',
	1,
	106);
INSERT INTO V_INT
	VALUES (1181,
	0,
	241);
INSERT INTO ACT_BLK
	VALUES (1186,
	0,
	0,
	0,
	'V_VAR.Var_ID',
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
	1174,
	0);
INSERT INTO ACT_SMT
	VALUES (1195,
	1186,
	0,
	8,
	3,
	'WorkoutTimer::deactivate line: 8');
INSERT INTO E_ESS
	VALUES (1195,
	1,
	0,
	8,
	12,
	8,
	18,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (1195);
INSERT INTO E_GSME
	VALUES (1195,
	1196);
INSERT INTO E_GEN
	VALUES (1195,
	1181);
INSERT INTO O_TFR
	VALUES (886,
	118,
	'initialize',
	'',
	6,
	1,
	'// Initialize this instance.

self.time = 0;',
	1,
	'',
	1173);
INSERT INTO ACT_OPB
	VALUES (1197,
	886);
INSERT INTO ACT_ACT
	VALUES (1197,
	'operation',
	0,
	1198,
	0,
	0,
	'WorkoutTimer::initialize',
	0);
INSERT INTO ACT_BLK
	VALUES (1198,
	0,
	0,
	0,
	'',
	'',
	'',
	3,
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
	0,
	0,
	1197,
	0);
INSERT INTO ACT_SMT
	VALUES (1199,
	1198,
	0,
	3,
	1,
	'WorkoutTimer::initialize line: 3');
INSERT INTO ACT_AI
	VALUES (1199,
	1200,
	1201,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1202,
	1,
	0,
	3,
	1,
	4,
	0,
	0,
	0,
	0,
	106,
	1198);
INSERT INTO V_IRF
	VALUES (1202,
	1203);
INSERT INTO V_VAL
	VALUES (1201,
	1,
	0,
	3,
	6,
	9,
	0,
	0,
	0,
	0,
	30,
	1198);
INSERT INTO V_AVL
	VALUES (1201,
	1202,
	118,
	422);
INSERT INTO V_VAL
	VALUES (1200,
	0,
	0,
	3,
	13,
	13,
	0,
	0,
	0,
	0,
	30,
	1198);
INSERT INTO V_LIN
	VALUES (1200,
	'0');
INSERT INTO V_VAR
	VALUES (1203,
	1198,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (1203,
	0,
	118);
INSERT INTO O_NBATTR
	VALUES (1204,
	118);
INSERT INTO O_BATTR
	VALUES (1204,
	118);
INSERT INTO O_ATTR
	VALUES (1204,
	118,
	0,
	'current_state',
	'',
	'',
	'current_state',
	0,
	476,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (422,
	118);
INSERT INTO O_BATTR
	VALUES (422,
	118);
INSERT INTO O_ATTR
	VALUES (422,
	118,
	1204,
	'time',
	'Number of seconds elapsed during the associated workout session.
Time elapses only when this timer is running.',
	'',
	'time',
	0,
	30,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1163,
	118);
INSERT INTO O_BATTR
	VALUES (1163,
	118);
INSERT INTO O_ATTR
	VALUES (1163,
	118,
	422,
	'timer',
	'Handle for underlying timer mechanism that produces the 
delayed events enabling the timer to track elapsed time.',
	'',
	'timer',
	0,
	332,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	118);
INSERT INTO O_ID
	VALUES (1,
	118);
INSERT INTO O_ID
	VALUES (2,
	118);
INSERT INTO SM_ISM
	VALUES (1205,
	118);
INSERT INTO SM_SM
	VALUES (1205,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (1205);
INSERT INTO SM_LEVT
	VALUES (162,
	1205,
	0);
INSERT INTO SM_SEVT
	VALUES (162,
	1205,
	0);
INSERT INTO SM_EVT
	VALUES (162,
	1205,
	0,
	1,
	'startStopPressed',
	0,
	'',
	'WorkoutTimer1',
	'');
INSERT INTO SM_LEVT
	VALUES (126,
	1205,
	0);
INSERT INTO SM_SEVT
	VALUES (126,
	1205,
	0);
INSERT INTO SM_EVT
	VALUES (126,
	1205,
	0,
	2,
	'lapResetPressed',
	0,
	'',
	'WorkoutTimer2',
	'');
INSERT INTO SM_LEVT
	VALUES (1148,
	1205,
	0);
INSERT INTO SM_SEVT
	VALUES (1148,
	1205,
	0);
INSERT INTO SM_EVT
	VALUES (1148,
	1205,
	0,
	3,
	'tick',
	0,
	'',
	'WorkoutTimer3',
	'');
INSERT INTO SM_STATE
	VALUES (1206,
	1205,
	0,
	'stopped',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (1206,
	162,
	1205,
	0);
INSERT INTO SM_EIGN
	VALUES (1206,
	126,
	1205,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1206,
	126,
	1205,
	0);
INSERT INTO SM_EIGN
	VALUES (1206,
	1148,
	1205,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1206,
	1148,
	1205,
	0);
INSERT INTO SM_MOAH
	VALUES (1207,
	1205,
	1206);
INSERT INTO SM_AH
	VALUES (1207,
	1205);
INSERT INTO SM_ACT
	VALUES (1207,
	1205,
	1,
	'// Reset the session
select one session related by self->WorkoutSession[R8.''acts as the stopwatch for''];
session.reset();

// Update the UI.
send UI::setTime(time: self.time);
select one display related by
  self->WorkoutSession[R8.''acts as the stopwatch for'']->
  Display[R7.''current status indicated on''];
generate Display2:refresh to display;',
	'');
INSERT INTO ACT_SAB
	VALUES (1208,
	1205,
	1207);
INSERT INTO ACT_ACT
	VALUES (1208,
	'state',
	0,
	1209,
	0,
	0,
	'WorkoutTimer::stopped',
	0);
INSERT INTO ACT_BLK
	VALUES (1209,
	1,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	10,
	1,
	9,
	3,
	0,
	0,
	9,
	11,
	9,
	14,
	0,
	0,
	0,
	1208,
	0);
INSERT INTO ACT_SMT
	VALUES (1210,
	1209,
	1211,
	2,
	1,
	'WorkoutTimer::stopped line: 2');
INSERT INTO ACT_SEL
	VALUES (1210,
	1212,
	1,
	'one',
	1213);
INSERT INTO ACT_SR
	VALUES (1210);
INSERT INTO ACT_LNK
	VALUES (1214,
	'''acts as the stopwatch for''',
	1210,
	229,
	0,
	2,
	102,
	2,
	37,
	2,
	52,
	2,
	55);
INSERT INTO ACT_SMT
	VALUES (1211,
	1209,
	1215,
	3,
	1,
	'WorkoutTimer::stopped line: 3');
INSERT INTO ACT_TFM
	VALUES (1211,
	893,
	1212,
	3,
	9,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1215,
	1209,
	1216,
	6,
	1,
	'WorkoutTimer::stopped line: 6');
INSERT INTO ACT_IOP
	VALUES (1215,
	6,
	10,
	6,
	6,
	0,
	80,
	0);
INSERT INTO ACT_SMT
	VALUES (1216,
	1209,
	1217,
	7,
	1,
	'WorkoutTimer::stopped line: 7');
INSERT INTO ACT_SEL
	VALUES (1216,
	1218,
	1,
	'one',
	1219);
INSERT INTO ACT_SR
	VALUES (1216);
INSERT INTO ACT_LNK
	VALUES (1220,
	'''acts as the stopwatch for''',
	1216,
	229,
	1221,
	2,
	102,
	8,
	9,
	8,
	24,
	8,
	27);
INSERT INTO ACT_LNK
	VALUES (1221,
	'''current status indicated on''',
	0,
	146,
	0,
	2,
	147,
	9,
	3,
	9,
	11,
	9,
	14);
INSERT INTO ACT_SMT
	VALUES (1217,
	1209,
	0,
	10,
	1,
	'WorkoutTimer::stopped line: 10');
INSERT INTO E_ESS
	VALUES (1217,
	1,
	0,
	10,
	10,
	10,
	19,
	9,
	3,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (1217);
INSERT INTO E_GSME
	VALUES (1217,
	478);
INSERT INTO E_GEN
	VALUES (1217,
	1218);
INSERT INTO V_VAL
	VALUES (1213,
	0,
	0,
	2,
	31,
	34,
	0,
	0,
	0,
	0,
	106,
	1209);
INSERT INTO V_IRF
	VALUES (1213,
	1222);
INSERT INTO V_VAL
	VALUES (1223,
	0,
	0,
	6,
	24,
	27,
	0,
	0,
	0,
	0,
	106,
	1209);
INSERT INTO V_IRF
	VALUES (1223,
	1222);
INSERT INTO V_VAL
	VALUES (1224,
	0,
	0,
	6,
	29,
	32,
	0,
	0,
	0,
	0,
	30,
	1209);
INSERT INTO V_AVL
	VALUES (1224,
	1223,
	118,
	422);
INSERT INTO V_PAR
	VALUES (1224,
	1215,
	0,
	'time',
	0,
	6,
	18);
INSERT INTO V_VAL
	VALUES (1219,
	0,
	0,
	8,
	3,
	6,
	0,
	0,
	0,
	0,
	106,
	1209);
INSERT INTO V_IRF
	VALUES (1219,
	1222);
INSERT INTO V_VAR
	VALUES (1212,
	1209,
	'session',
	1,
	106);
INSERT INTO V_INT
	VALUES (1212,
	0,
	102);
INSERT INTO V_VAR
	VALUES (1222,
	1209,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (1222,
	0,
	118);
INSERT INTO V_VAR
	VALUES (1218,
	1209,
	'display',
	1,
	106);
INSERT INTO V_INT
	VALUES (1218,
	0,
	147);
INSERT INTO SM_STATE
	VALUES (1225,
	1205,
	0,
	'running',
	2,
	0);
INSERT INTO SM_SEME
	VALUES (1225,
	162,
	1205,
	0);
INSERT INTO SM_SEME
	VALUES (1225,
	126,
	1205,
	0);
INSERT INTO SM_SEME
	VALUES (1225,
	1148,
	1205,
	0);
INSERT INTO SM_MOAH
	VALUES (1226,
	1205,
	1225);
INSERT INTO SM_AH
	VALUES (1226,
	1205);
INSERT INTO SM_ACT
	VALUES (1226,
	1205,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (1227,
	1205,
	1226);
INSERT INTO ACT_ACT
	VALUES (1227,
	'state',
	0,
	1228,
	0,
	0,
	'WorkoutTimer::running',
	0);
INSERT INTO ACT_BLK
	VALUES (1228,
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
	1227,
	0);
INSERT INTO SM_STATE
	VALUES (1229,
	1205,
	0,
	'paused',
	3,
	0);
INSERT INTO SM_SEME
	VALUES (1229,
	162,
	1205,
	0);
INSERT INTO SM_SEME
	VALUES (1229,
	126,
	1205,
	0);
INSERT INTO SM_EIGN
	VALUES (1229,
	1148,
	1205,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1229,
	1148,
	1205,
	0);
INSERT INTO SM_MOAH
	VALUES (1230,
	1205,
	1229);
INSERT INTO SM_AH
	VALUES (1230,
	1205);
INSERT INTO SM_ACT
	VALUES (1230,
	1205,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (1231,
	1205,
	1230);
INSERT INTO ACT_ACT
	VALUES (1231,
	'state',
	0,
	1232,
	0,
	0,
	'WorkoutTimer::paused',
	0);
INSERT INTO ACT_BLK
	VALUES (1232,
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
	1231,
	0);
INSERT INTO SM_NSTXN
	VALUES (1233,
	1205,
	1206,
	162,
	0);
INSERT INTO SM_TAH
	VALUES (1234,
	1205,
	1233);
INSERT INTO SM_AH
	VALUES (1234,
	1205);
INSERT INTO SM_ACT
	VALUES (1234,
	1205,
	1,
	'// Start the timer.
self.activate();',
	'');
INSERT INTO ACT_TAB
	VALUES (1235,
	1205,
	1234);
INSERT INTO ACT_ACT
	VALUES (1235,
	'transition',
	0,
	1236,
	0,
	0,
	'WorkoutTimer1: startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1236,
	0,
	0,
	0,
	'',
	'',
	'',
	2,
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
	0,
	0,
	1235,
	0);
INSERT INTO ACT_SMT
	VALUES (1237,
	1236,
	0,
	2,
	1,
	'WorkoutTimer1: startStopPressed line: 2');
INSERT INTO ACT_TFM
	VALUES (1237,
	1142,
	1238,
	2,
	6,
	0,
	0);
INSERT INTO V_VAR
	VALUES (1238,
	1236,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (1238,
	0,
	118);
INSERT INTO SM_TXN
	VALUES (1233,
	1205,
	1225,
	0);
INSERT INTO SM_NSTXN
	VALUES (1239,
	1205,
	1225,
	126,
	0);
INSERT INTO SM_TAH
	VALUES (1240,
	1205,
	1239);
INSERT INTO SM_AH
	VALUES (1240,
	1205);
INSERT INTO SM_ACT
	VALUES (1240,
	1205,
	1,
	'select any trackLog from instances of TrackLog;
if (not empty trackLog)
  trackLog.addLapMarker();
end if;',
	'');
INSERT INTO ACT_TAB
	VALUES (1241,
	1205,
	1240);
INSERT INTO ACT_ACT
	VALUES (1241,
	'transition',
	0,
	1242,
	0,
	0,
	'WorkoutTimer2: lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1242,
	1,
	0,
	0,
	'',
	'',
	'',
	2,
	1,
	1,
	39,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1241,
	0);
INSERT INTO ACT_SMT
	VALUES (1243,
	1242,
	1244,
	1,
	1,
	'WorkoutTimer2: lapResetPressed line: 1');
INSERT INTO ACT_FIO
	VALUES (1243,
	1245,
	1,
	'any',
	213,
	1,
	39);
INSERT INTO ACT_SMT
	VALUES (1244,
	1242,
	0,
	2,
	1,
	'WorkoutTimer2: lapResetPressed line: 2');
INSERT INTO ACT_IF
	VALUES (1244,
	1246,
	1247,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1248,
	0,
	0,
	2,
	15,
	22,
	0,
	0,
	0,
	0,
	106,
	1242);
INSERT INTO V_IRF
	VALUES (1248,
	1245);
INSERT INTO V_VAL
	VALUES (1249,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1242);
INSERT INTO V_UNY
	VALUES (1249,
	1248,
	'empty');
INSERT INTO V_VAL
	VALUES (1247,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1242);
INSERT INTO V_UNY
	VALUES (1247,
	1249,
	'not');
INSERT INTO V_VAR
	VALUES (1245,
	1242,
	'trackLog',
	1,
	106);
INSERT INTO V_INT
	VALUES (1245,
	0,
	213);
INSERT INTO ACT_BLK
	VALUES (1246,
	0,
	0,
	0,
	'',
	'',
	'',
	3,
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
	1241,
	0);
INSERT INTO ACT_SMT
	VALUES (1250,
	1246,
	0,
	3,
	3,
	'WorkoutTimer2: lapResetPressed line: 3');
INSERT INTO ACT_TFM
	VALUES (1250,
	776,
	1245,
	3,
	12,
	0,
	0);
INSERT INTO SM_TXN
	VALUES (1239,
	1205,
	1225,
	0);
INSERT INTO SM_NSTXN
	VALUES (1251,
	1205,
	1229,
	126,
	0);
INSERT INTO SM_TAH
	VALUES (1252,
	1205,
	1251);
INSERT INTO SM_AH
	VALUES (1252,
	1205);
INSERT INTO SM_ACT
	VALUES (1252,
	1205,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1253,
	1205,
	1252);
INSERT INTO ACT_ACT
	VALUES (1253,
	'transition',
	0,
	1254,
	0,
	0,
	'WorkoutTimer2: lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1254,
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
	1253,
	0);
INSERT INTO SM_TXN
	VALUES (1251,
	1205,
	1206,
	0);
INSERT INTO SM_NSTXN
	VALUES (1255,
	1205,
	1229,
	162,
	0);
INSERT INTO SM_TAH
	VALUES (1256,
	1205,
	1255);
INSERT INTO SM_AH
	VALUES (1256,
	1205);
INSERT INTO SM_ACT
	VALUES (1256,
	1205,
	1,
	'self.activate();',
	'');
INSERT INTO ACT_TAB
	VALUES (1257,
	1205,
	1256);
INSERT INTO ACT_ACT
	VALUES (1257,
	'transition',
	0,
	1258,
	0,
	0,
	'WorkoutTimer1: startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1258,
	0,
	0,
	0,
	'',
	'',
	'',
	1,
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
	0,
	0,
	1257,
	0);
INSERT INTO ACT_SMT
	VALUES (1259,
	1258,
	0,
	1,
	1,
	'WorkoutTimer1: startStopPressed line: 1');
INSERT INTO ACT_TFM
	VALUES (1259,
	1142,
	1260,
	1,
	6,
	0,
	0);
INSERT INTO V_VAR
	VALUES (1260,
	1258,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (1260,
	0,
	118);
INSERT INTO SM_TXN
	VALUES (1255,
	1205,
	1225,
	0);
INSERT INTO SM_NSTXN
	VALUES (1261,
	1205,
	1225,
	162,
	0);
INSERT INTO SM_TAH
	VALUES (1262,
	1205,
	1261);
INSERT INTO SM_AH
	VALUES (1262,
	1205);
INSERT INTO SM_ACT
	VALUES (1262,
	1205,
	1,
	'self.deactivate();',
	'');
INSERT INTO ACT_TAB
	VALUES (1263,
	1205,
	1262);
INSERT INTO ACT_ACT
	VALUES (1263,
	'transition',
	0,
	1264,
	0,
	0,
	'WorkoutTimer1: startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1264,
	0,
	0,
	0,
	'',
	'',
	'',
	1,
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
	0,
	0,
	1263,
	0);
INSERT INTO ACT_SMT
	VALUES (1265,
	1264,
	0,
	1,
	1,
	'WorkoutTimer1: startStopPressed line: 1');
INSERT INTO ACT_TFM
	VALUES (1265,
	1173,
	1266,
	1,
	6,
	0,
	0);
INSERT INTO V_VAR
	VALUES (1266,
	1264,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (1266,
	0,
	118);
INSERT INTO SM_TXN
	VALUES (1261,
	1205,
	1229,
	0);
INSERT INTO SM_NSTXN
	VALUES (1267,
	1205,
	1225,
	1148,
	0);
INSERT INTO SM_TAH
	VALUES (1268,
	1205,
	1267);
INSERT INTO SM_AH
	VALUES (1268,
	1205);
INSERT INTO SM_ACT
	VALUES (1268,
	1205,
	1,
	'// Update the stopwatch time.
self.time = self.time + timerPeriod;

// Store a new track point.
select one trackLog related by 
  self->WorkoutSession[R8.''acts as the stopwatch for'']->TrackLog[R4.''captures path in''];
trackLog.addTrackPoint();

// Refresh the user interface.
send UI::setTime(time: self.time);',
	'');
INSERT INTO ACT_TAB
	VALUES (1269,
	1205,
	1268);
INSERT INTO ACT_ACT
	VALUES (1269,
	'transition',
	0,
	1270,
	0,
	0,
	'WorkoutTimer3: tick',
	0);
INSERT INTO ACT_BLK
	VALUES (1270,
	1,
	0,
	0,
	'UI',
	'',
	'',
	10,
	1,
	10,
	6,
	0,
	0,
	6,
	66,
	6,
	69,
	0,
	0,
	0,
	1269,
	0);
INSERT INTO ACT_SMT
	VALUES (1271,
	1270,
	1272,
	2,
	1,
	'WorkoutTimer3: tick line: 2');
INSERT INTO ACT_AI
	VALUES (1271,
	1273,
	1274,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1272,
	1270,
	1275,
	5,
	1,
	'WorkoutTimer3: tick line: 5');
INSERT INTO ACT_SEL
	VALUES (1272,
	1276,
	1,
	'one',
	1277);
INSERT INTO ACT_SR
	VALUES (1272);
INSERT INTO ACT_LNK
	VALUES (1278,
	'''acts as the stopwatch for''',
	1272,
	229,
	1279,
	2,
	102,
	6,
	9,
	6,
	24,
	6,
	27);
INSERT INTO ACT_LNK
	VALUES (1279,
	'''captures path in''',
	0,
	232,
	0,
	2,
	213,
	6,
	57,
	6,
	66,
	6,
	69);
INSERT INTO ACT_SMT
	VALUES (1275,
	1270,
	1280,
	7,
	1,
	'WorkoutTimer3: tick line: 7');
INSERT INTO ACT_TFM
	VALUES (1275,
	638,
	1276,
	7,
	10,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1280,
	1270,
	0,
	10,
	1,
	'WorkoutTimer3: tick line: 10');
INSERT INTO ACT_IOP
	VALUES (1280,
	10,
	10,
	10,
	6,
	0,
	80,
	0);
INSERT INTO V_VAL
	VALUES (1281,
	1,
	0,
	2,
	1,
	4,
	0,
	0,
	0,
	0,
	106,
	1270);
INSERT INTO V_IRF
	VALUES (1281,
	1282);
INSERT INTO V_VAL
	VALUES (1274,
	1,
	0,
	2,
	6,
	9,
	0,
	0,
	0,
	0,
	30,
	1270);
INSERT INTO V_AVL
	VALUES (1274,
	1281,
	118,
	422);
INSERT INTO V_VAL
	VALUES (1283,
	0,
	0,
	2,
	13,
	16,
	0,
	0,
	0,
	0,
	106,
	1270);
INSERT INTO V_IRF
	VALUES (1283,
	1282);
INSERT INTO V_VAL
	VALUES (1284,
	0,
	0,
	2,
	18,
	21,
	0,
	0,
	0,
	0,
	30,
	1270);
INSERT INTO V_AVL
	VALUES (1284,
	1283,
	118,
	422);
INSERT INTO V_VAL
	VALUES (1273,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	30,
	1270);
INSERT INTO V_BIN
	VALUES (1273,
	1285,
	1284,
	'+');
INSERT INTO V_VAL
	VALUES (1285,
	0,
	0,
	2,
	25,
	35,
	0,
	0,
	0,
	0,
	30,
	1270);
INSERT INTO V_SCV
	VALUES (1285,
	1167,
	30);
INSERT INTO V_VAL
	VALUES (1277,
	0,
	0,
	6,
	3,
	6,
	0,
	0,
	0,
	0,
	106,
	1270);
INSERT INTO V_IRF
	VALUES (1277,
	1282);
INSERT INTO V_VAL
	VALUES (1286,
	0,
	0,
	10,
	24,
	27,
	0,
	0,
	0,
	0,
	106,
	1270);
INSERT INTO V_IRF
	VALUES (1286,
	1282);
INSERT INTO V_VAL
	VALUES (1287,
	0,
	0,
	10,
	29,
	32,
	0,
	0,
	0,
	0,
	30,
	1270);
INSERT INTO V_AVL
	VALUES (1287,
	1286,
	118,
	422);
INSERT INTO V_PAR
	VALUES (1287,
	1280,
	0,
	'time',
	0,
	10,
	18);
INSERT INTO V_VAR
	VALUES (1282,
	1270,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (1282,
	0,
	118);
INSERT INTO V_VAR
	VALUES (1276,
	1270,
	'trackLog',
	1,
	106);
INSERT INTO V_INT
	VALUES (1276,
	0,
	213);
INSERT INTO SM_TXN
	VALUES (1267,
	1205,
	1225,
	0);
INSERT INTO PE_PE
	VALUES (241,
	1,
	211,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (241,
	'Goal',
	9,
	'Goal',
	'Each instance represents a particular goal as it is executing.
This class knows how to evaluate whether the goal is being achieved 
and whether the goal has completed.',
	0);
INSERT INTO O_TFR
	VALUES (1288,
	241,
	'goalcreate',
	'',
	6,
	0,
	'// Create and activate an instance of a goal specified by
//   the goal specification, if it exists, identified by 
//   the incoming parameter.

// Find the goal specification for this goal, then
//   create and relate this goal to the specification
//   and to the singleton workout session.
select any goalSpec from instances of GoalSpec 
  where ( selected.sequenceNumber == param.sequenceNumber );
if ( not empty goalSpec )
  create object instance goal of Goal;
  relate goal to goalSpec across R9.''specified by'';
  select any session from instances of WorkoutSession;  // WorkoutSession is a singleton
  relate goal to session across R11.''is currently executing within'';

  // Initialize this goal.
  goal.calculateStart();
  goal.disposition = GoalDisposition::Increase;

  // Start a timer that periodically causes evaluation of goal achievement.
  create event instance evaluateEvent of Goal2:Evaluate to goal;
  goal.evaluationTimer = TIM::timer_start_recurring( event_inst: evaluateEvent, microseconds: evaluationPeriod );
end if;

',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (1289,
	1288,
	'sequenceNumber',
	30,
	0,
	'',
	0,
	'Sequence number of the goal specification for which an instance of a goal should be created.');
INSERT INTO ACT_OPB
	VALUES (1290,
	1288);
INSERT INTO ACT_ACT
	VALUES (1290,
	'class operation',
	0,
	1291,
	0,
	0,
	'Goal::goalcreate',
	0);
INSERT INTO ACT_BLK
	VALUES (1291,
	1,
	0,
	1,
	'',
	'',
	'',
	10,
	1,
	8,
	39,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1290,
	0);
INSERT INTO ACT_SMT
	VALUES (1292,
	1291,
	1293,
	8,
	1,
	'Goal::goalcreate line: 8');
INSERT INTO ACT_FIW
	VALUES (1292,
	1294,
	1,
	'any',
	1295,
	176,
	8,
	39);
INSERT INTO ACT_SMT
	VALUES (1293,
	1291,
	0,
	10,
	1,
	'Goal::goalcreate line: 10');
INSERT INTO ACT_IF
	VALUES (1293,
	1296,
	1297,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1298,
	0,
	0,
	9,
	11,
	-1,
	0,
	0,
	0,
	0,
	106,
	1291);
INSERT INTO V_SLR
	VALUES (1298,
	0,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1299,
	0,
	0,
	9,
	20,
	33,
	0,
	0,
	0,
	0,
	30,
	1291);
INSERT INTO V_AVL
	VALUES (1299,
	1298,
	176,
	197);
INSERT INTO V_VAL
	VALUES (1295,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1291);
INSERT INTO V_BIN
	VALUES (1295,
	1300,
	1299,
	'==');
INSERT INTO V_VAL
	VALUES (1300,
	0,
	0,
	9,
	44,
	57,
	0,
	0,
	0,
	0,
	30,
	1291);
INSERT INTO V_PVL
	VALUES (1300,
	0,
	0,
	1289,
	0);
INSERT INTO V_VAL
	VALUES (1301,
	0,
	0,
	10,
	16,
	23,
	0,
	0,
	0,
	0,
	106,
	1291);
INSERT INTO V_IRF
	VALUES (1301,
	1294);
INSERT INTO V_VAL
	VALUES (1302,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1291);
INSERT INTO V_UNY
	VALUES (1302,
	1301,
	'empty');
INSERT INTO V_VAL
	VALUES (1297,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1291);
INSERT INTO V_UNY
	VALUES (1297,
	1302,
	'not');
INSERT INTO V_VAR
	VALUES (1294,
	1291,
	'goalSpec',
	1,
	106);
INSERT INTO V_INT
	VALUES (1294,
	0,
	176);
INSERT INTO ACT_BLK
	VALUES (1296,
	1,
	0,
	0,
	'TIM',
	'',
	'',
	22,
	3,
	22,
	26,
	0,
	0,
	14,
	33,
	14,
	37,
	18,
	22,
	0,
	1290,
	0);
INSERT INTO ACT_SMT
	VALUES (1303,
	1296,
	1304,
	11,
	3,
	'Goal::goalcreate line: 11');
INSERT INTO ACT_CR
	VALUES (1303,
	1305,
	1,
	241,
	11,
	34);
INSERT INTO ACT_SMT
	VALUES (1304,
	1296,
	1306,
	12,
	3,
	'Goal::goalcreate line: 12');
INSERT INTO ACT_REL
	VALUES (1304,
	1305,
	1294,
	'''specified by''',
	239,
	12,
	34,
	12,
	37);
INSERT INTO ACT_SMT
	VALUES (1306,
	1296,
	1307,
	13,
	3,
	'Goal::goalcreate line: 13');
INSERT INTO ACT_FIO
	VALUES (1306,
	1308,
	1,
	'any',
	102,
	13,
	40);
INSERT INTO ACT_SMT
	VALUES (1307,
	1296,
	1309,
	14,
	3,
	'Goal::goalcreate line: 14');
INSERT INTO ACT_REL
	VALUES (1307,
	1305,
	1308,
	'''is currently executing within''',
	245,
	14,
	33,
	14,
	37);
INSERT INTO ACT_SMT
	VALUES (1309,
	1296,
	1310,
	17,
	3,
	'Goal::goalcreate line: 17');
INSERT INTO ACT_TFM
	VALUES (1309,
	1311,
	1305,
	17,
	8,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1310,
	1296,
	1312,
	18,
	3,
	'Goal::goalcreate line: 18');
INSERT INTO ACT_AI
	VALUES (1310,
	1313,
	1314,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1312,
	1296,
	1315,
	21,
	3,
	'Goal::goalcreate line: 21');
INSERT INTO E_ESS
	VALUES (1312,
	1,
	0,
	21,
	42,
	21,
	48,
	13,
	40,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES (1312,
	1,
	1316);
INSERT INTO E_CSME
	VALUES (1312,
	1172);
INSERT INTO E_CEI
	VALUES (1312,
	1305);
INSERT INTO ACT_SMT
	VALUES (1315,
	1296,
	0,
	22,
	3,
	'Goal::goalcreate line: 22');
INSERT INTO ACT_AI
	VALUES (1315,
	1317,
	1318,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1319,
	1,
	0,
	18,
	3,
	6,
	0,
	0,
	0,
	0,
	106,
	1296);
INSERT INTO V_IRF
	VALUES (1319,
	1305);
INSERT INTO V_VAL
	VALUES (1314,
	1,
	0,
	18,
	8,
	18,
	0,
	0,
	0,
	0,
	455,
	1296);
INSERT INTO V_AVL
	VALUES (1314,
	1319,
	241,
	456);
INSERT INTO V_VAL
	VALUES (1313,
	0,
	0,
	18,
	39,
	46,
	0,
	0,
	0,
	0,
	455,
	1296);
INSERT INTO V_LEN
	VALUES (1313,
	458,
	18,
	22);
INSERT INTO V_VAL
	VALUES (1320,
	1,
	0,
	22,
	3,
	6,
	0,
	0,
	0,
	0,
	106,
	1296);
INSERT INTO V_IRF
	VALUES (1320,
	1305);
INSERT INTO V_VAL
	VALUES (1318,
	1,
	0,
	22,
	8,
	22,
	0,
	0,
	0,
	0,
	332,
	1296);
INSERT INTO V_AVL
	VALUES (1318,
	1320,
	241,
	1321);
INSERT INTO V_VAL
	VALUES (1317,
	0,
	0,
	22,
	31,
	-1,
	22,
	54,
	22,
	81,
	332,
	1296);
INSERT INTO V_BRV
	VALUES (1317,
	338,
	1,
	22,
	26);
INSERT INTO V_VAL
	VALUES (1322,
	0,
	0,
	22,
	66,
	78,
	0,
	0,
	0,
	0,
	335,
	1296);
INSERT INTO V_TVL
	VALUES (1322,
	1316);
INSERT INTO V_PAR
	VALUES (1322,
	0,
	1317,
	'event_inst',
	1323,
	22,
	54);
INSERT INTO V_VAL
	VALUES (1323,
	0,
	0,
	22,
	95,
	110,
	0,
	0,
	0,
	0,
	30,
	1296);
INSERT INTO V_SCV
	VALUES (1323,
	1324,
	30);
INSERT INTO V_PAR
	VALUES (1323,
	0,
	1317,
	'microseconds',
	0,
	22,
	81);
INSERT INTO V_VAR
	VALUES (1305,
	1296,
	'goal',
	1,
	106);
INSERT INTO V_INT
	VALUES (1305,
	0,
	241);
INSERT INTO V_VAR
	VALUES (1308,
	1296,
	'session',
	1,
	106);
INSERT INTO V_INT
	VALUES (1308,
	0,
	102);
INSERT INTO V_VAR
	VALUES (1316,
	1296,
	'evaluateEvent',
	1,
	335);
INSERT INTO V_TRN
	VALUES (1316,
	0,
	'');
INSERT INTO O_TFR
	VALUES (1311,
	241,
	'calculateStart',
	'',
	6,
	1,
	'// Based on the span type for this goal, calculate and
//   store the value of the start attribute.
select one goalSpec related by self->GoalSpec[R9.''specified by''];
if ( goalSpec.spanType == GoalSpan::Time )
  select one workoutTimer related by 
    self->WorkoutSession[R11.''is currently executing within'']->WorkoutTimer[R8.''is timed by''];
  self.goalstart = workoutTimer.time;
elif ( goalSpec.spanType == GoalSpan::Distance )
  select one session related by self->WorkoutSession[R11.''is currently executing within''];
  self.goalstart = session.accumulatedDistance;
else
  LOG::LogFailure( message: "Goal.calculateStart: Unknown Goal Span Type." );
end if;',
	1,
	'',
	1288);
INSERT INTO ACT_OPB
	VALUES (1325,
	1311);
INSERT INTO ACT_ACT
	VALUES (1325,
	'operation',
	0,
	1326,
	0,
	0,
	'Goal::calculateStart',
	0);
INSERT INTO ACT_BLK
	VALUES (1326,
	1,
	0,
	0,
	'',
	'',
	'',
	11,
	1,
	3,
	38,
	0,
	0,
	3,
	47,
	3,
	50,
	8,
	29,
	0,
	1325,
	0);
INSERT INTO ACT_SMT
	VALUES (1327,
	1326,
	1328,
	3,
	1,
	'Goal::calculateStart line: 3');
INSERT INTO ACT_SEL
	VALUES (1327,
	1329,
	1,
	'one',
	1330);
INSERT INTO ACT_SR
	VALUES (1327);
INSERT INTO ACT_LNK
	VALUES (1331,
	'''specified by''',
	1327,
	239,
	0,
	2,
	176,
	3,
	38,
	3,
	47,
	3,
	50);
INSERT INTO ACT_SMT
	VALUES (1328,
	1326,
	0,
	4,
	1,
	'Goal::calculateStart line: 4');
INSERT INTO ACT_IF
	VALUES (1328,
	1332,
	1333,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1334,
	1326,
	0,
	8,
	1,
	'Goal::calculateStart line: 8');
INSERT INTO ACT_EL
	VALUES (1334,
	1335,
	1336,
	1328);
INSERT INTO ACT_SMT
	VALUES (1337,
	1326,
	0,
	11,
	1,
	'Goal::calculateStart line: 11');
INSERT INTO ACT_E
	VALUES (1337,
	1338,
	1328);
INSERT INTO V_VAL
	VALUES (1330,
	0,
	0,
	3,
	32,
	35,
	0,
	0,
	0,
	0,
	106,
	1326);
INSERT INTO V_IRF
	VALUES (1330,
	1339);
INSERT INTO V_VAL
	VALUES (1340,
	0,
	0,
	4,
	6,
	13,
	0,
	0,
	0,
	0,
	106,
	1326);
INSERT INTO V_IRF
	VALUES (1340,
	1329);
INSERT INTO V_VAL
	VALUES (1341,
	0,
	0,
	4,
	15,
	22,
	0,
	0,
	0,
	0,
	39,
	1326);
INSERT INTO V_AVL
	VALUES (1341,
	1340,
	176,
	207);
INSERT INTO V_VAL
	VALUES (1333,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1326);
INSERT INTO V_BIN
	VALUES (1333,
	1342,
	1341,
	'==');
INSERT INTO V_VAL
	VALUES (1342,
	0,
	0,
	4,
	37,
	40,
	0,
	0,
	0,
	0,
	39,
	1326);
INSERT INTO V_LEN
	VALUES (1342,
	385,
	4,
	27);
INSERT INTO V_VAL
	VALUES (1343,
	0,
	0,
	8,
	8,
	15,
	0,
	0,
	0,
	0,
	106,
	1326);
INSERT INTO V_IRF
	VALUES (1343,
	1329);
INSERT INTO V_VAL
	VALUES (1344,
	0,
	0,
	8,
	17,
	24,
	0,
	0,
	0,
	0,
	39,
	1326);
INSERT INTO V_AVL
	VALUES (1344,
	1343,
	176,
	207);
INSERT INTO V_VAL
	VALUES (1336,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1326);
INSERT INTO V_BIN
	VALUES (1336,
	1345,
	1344,
	'==');
INSERT INTO V_VAL
	VALUES (1345,
	0,
	0,
	8,
	39,
	46,
	0,
	0,
	0,
	0,
	39,
	1326);
INSERT INTO V_LEN
	VALUES (1345,
	377,
	8,
	29);
INSERT INTO V_VAR
	VALUES (1329,
	1326,
	'goalSpec',
	1,
	106);
INSERT INTO V_INT
	VALUES (1329,
	0,
	176);
INSERT INTO V_VAR
	VALUES (1339,
	1326,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (1339,
	0,
	241);
INSERT INTO ACT_BLK
	VALUES (1332,
	1,
	0,
	0,
	'',
	'',
	'',
	7,
	3,
	6,
	64,
	0,
	0,
	6,
	77,
	6,
	80,
	0,
	0,
	0,
	1325,
	0);
INSERT INTO ACT_SMT
	VALUES (1346,
	1332,
	1347,
	5,
	3,
	'Goal::calculateStart line: 5');
INSERT INTO ACT_SEL
	VALUES (1346,
	1348,
	1,
	'one',
	1349);
INSERT INTO ACT_SR
	VALUES (1346);
INSERT INTO ACT_LNK
	VALUES (1350,
	'''is currently executing within''',
	1346,
	245,
	1351,
	2,
	102,
	6,
	11,
	6,
	26,
	6,
	30);
INSERT INTO ACT_LNK
	VALUES (1351,
	'''is timed by''',
	0,
	229,
	0,
	2,
	118,
	6,
	64,
	6,
	77,
	6,
	80);
INSERT INTO ACT_SMT
	VALUES (1347,
	1332,
	0,
	7,
	3,
	'Goal::calculateStart line: 7');
INSERT INTO ACT_AI
	VALUES (1347,
	1352,
	1353,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1349,
	0,
	0,
	6,
	5,
	8,
	0,
	0,
	0,
	0,
	106,
	1332);
INSERT INTO V_IRF
	VALUES (1349,
	1339);
INSERT INTO V_VAL
	VALUES (1354,
	1,
	0,
	7,
	3,
	6,
	0,
	0,
	0,
	0,
	106,
	1332);
INSERT INTO V_IRF
	VALUES (1354,
	1339);
INSERT INTO V_VAL
	VALUES (1353,
	1,
	0,
	7,
	8,
	16,
	0,
	0,
	0,
	0,
	10,
	1332);
INSERT INTO V_AVL
	VALUES (1353,
	1354,
	241,
	1355);
INSERT INTO V_VAL
	VALUES (1356,
	0,
	0,
	7,
	20,
	31,
	0,
	0,
	0,
	0,
	106,
	1332);
INSERT INTO V_IRF
	VALUES (1356,
	1348);
INSERT INTO V_VAL
	VALUES (1352,
	0,
	0,
	7,
	33,
	36,
	0,
	0,
	0,
	0,
	30,
	1332);
INSERT INTO V_AVL
	VALUES (1352,
	1356,
	118,
	422);
INSERT INTO V_VAR
	VALUES (1348,
	1332,
	'workoutTimer',
	1,
	106);
INSERT INTO V_INT
	VALUES (1348,
	0,
	118);
INSERT INTO ACT_BLK
	VALUES (1335,
	1,
	0,
	0,
	'',
	'',
	'',
	10,
	3,
	9,
	39,
	0,
	0,
	9,
	54,
	9,
	58,
	0,
	0,
	0,
	1325,
	0);
INSERT INTO ACT_SMT
	VALUES (1357,
	1335,
	1358,
	9,
	3,
	'Goal::calculateStart line: 9');
INSERT INTO ACT_SEL
	VALUES (1357,
	1359,
	1,
	'one',
	1360);
INSERT INTO ACT_SR
	VALUES (1357);
INSERT INTO ACT_LNK
	VALUES (1361,
	'''is currently executing within''',
	1357,
	245,
	0,
	2,
	102,
	9,
	39,
	9,
	54,
	9,
	58);
INSERT INTO ACT_SMT
	VALUES (1358,
	1335,
	0,
	10,
	3,
	'Goal::calculateStart line: 10');
INSERT INTO ACT_AI
	VALUES (1358,
	1362,
	1363,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1360,
	0,
	0,
	9,
	33,
	36,
	0,
	0,
	0,
	0,
	106,
	1335);
INSERT INTO V_IRF
	VALUES (1360,
	1339);
INSERT INTO V_VAL
	VALUES (1364,
	1,
	0,
	10,
	3,
	6,
	0,
	0,
	0,
	0,
	106,
	1335);
INSERT INTO V_IRF
	VALUES (1364,
	1339);
INSERT INTO V_VAL
	VALUES (1363,
	1,
	0,
	10,
	8,
	16,
	0,
	0,
	0,
	0,
	10,
	1335);
INSERT INTO V_AVL
	VALUES (1363,
	1364,
	241,
	1355);
INSERT INTO V_VAL
	VALUES (1365,
	0,
	0,
	10,
	20,
	26,
	0,
	0,
	0,
	0,
	106,
	1335);
INSERT INTO V_IRF
	VALUES (1365,
	1359);
INSERT INTO V_VAL
	VALUES (1362,
	0,
	0,
	10,
	28,
	46,
	0,
	0,
	0,
	0,
	10,
	1335);
INSERT INTO V_AVL
	VALUES (1362,
	1365,
	102,
	499);
INSERT INTO V_VAR
	VALUES (1359,
	1335,
	'session',
	1,
	106);
INSERT INTO V_INT
	VALUES (1359,
	0,
	102);
INSERT INTO ACT_BLK
	VALUES (1338,
	0,
	0,
	0,
	'LOG',
	'',
	'',
	12,
	3,
	12,
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
	1325,
	0);
INSERT INTO ACT_SMT
	VALUES (1366,
	1338,
	0,
	12,
	3,
	'Goal::calculateStart line: 12');
INSERT INTO ACT_BRG
	VALUES (1366,
	128,
	12,
	8,
	12,
	3);
INSERT INTO V_VAL
	VALUES (1367,
	0,
	0,
	12,
	29,
	73,
	0,
	0,
	0,
	0,
	130,
	1338);
INSERT INTO V_LST
	VALUES (1367,
	'Goal.calculateStart: Unknown Goal Span Type.');
INSERT INTO V_PAR
	VALUES (1367,
	1366,
	0,
	'message',
	0,
	12,
	20);
INSERT INTO O_TFR
	VALUES (1368,
	241,
	'evaluateAchievement',
	'',
	455,
	1,
	'// Based on the type of goal, determine whether this one is 
//   currently being achieved and return a value indicating
//   the disposition of the this goal.    

// Find the related goal specification and workout session for this goal.
select one goalSpec related by self->GoalSpec[R9.''specified by''];
select one session related by self->WorkoutSession[R11.''is currently executing within''];

// Based on the goal criteria type, get the appropriate current value
//   for comparison against the criteria (minimum and maximum).
currentValue = 0.0;  // Explicit declaration
if ( goalSpec.criteriaType == GoalCriteria::HeartRate )
  currentValue = session.currentHeartRate;
elif ( goalSpec.criteriaType == GoalCriteria::Pace )
  currentValue = session.currentPace;
else
  LOG::LogFailure( message: "Goal.evaluateAchievement: Unknown Goal Criteria Type." );
end if;
 
// Compare the current value against the criteria to calculate the return value.
goalDisposition = GoalDisposition::Achieving; 
if ( currentValue < goalSpec.minimum )
  goalDisposition = GoalDisposition::Increase;
elif ( currentValue > goalSpec.maximum )
  goalDisposition = GoalDisposition::Decrease;
end if;

// Invert the disposition value to produce a logical, semantic disposition for
//   goal types, such as pace, that require it.
if ( goalSpec.criteriaType == GoalCriteria::Pace )
  if ( goalDisposition == GoalDisposition::Increase )
    goalDisposition = GoalDisposition::Decrease;
  elif ( goalDisposition == GoalDisposition::Decrease )
    goalDisposition = GoalDisposition::Increase;
  end if;
end if;
 
return( goalDisposition );',
	1,
	'',
	1311);
INSERT INTO ACT_OPB
	VALUES (1369,
	1368);
INSERT INTO ACT_ACT
	VALUES (1369,
	'operation',
	0,
	1370,
	0,
	0,
	'Goal::evaluateAchievement',
	0);
INSERT INTO ACT_BLK
	VALUES (1370,
	1,
	0,
	0,
	'',
	'',
	'',
	38,
	1,
	7,
	37,
	0,
	0,
	7,
	52,
	7,
	56,
	30,
	31,
	0,
	1369,
	0);
INSERT INTO ACT_SMT
	VALUES (1371,
	1370,
	1372,
	6,
	1,
	'Goal::evaluateAchievement line: 6');
INSERT INTO ACT_SEL
	VALUES (1371,
	1373,
	1,
	'one',
	1374);
INSERT INTO ACT_SR
	VALUES (1371);
INSERT INTO ACT_LNK
	VALUES (1375,
	'''specified by''',
	1371,
	239,
	0,
	2,
	176,
	6,
	38,
	6,
	47,
	6,
	50);
INSERT INTO ACT_SMT
	VALUES (1372,
	1370,
	1376,
	7,
	1,
	'Goal::evaluateAchievement line: 7');
INSERT INTO ACT_SEL
	VALUES (1372,
	1377,
	1,
	'one',
	1378);
INSERT INTO ACT_SR
	VALUES (1372);
INSERT INTO ACT_LNK
	VALUES (1379,
	'''is currently executing within''',
	1372,
	245,
	0,
	2,
	102,
	7,
	37,
	7,
	52,
	7,
	56);
INSERT INTO ACT_SMT
	VALUES (1376,
	1370,
	1380,
	11,
	1,
	'Goal::evaluateAchievement line: 11');
INSERT INTO ACT_AI
	VALUES (1376,
	1381,
	1382,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1380,
	1370,
	1383,
	12,
	1,
	'Goal::evaluateAchievement line: 12');
INSERT INTO ACT_IF
	VALUES (1380,
	1384,
	1385,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1386,
	1370,
	0,
	14,
	1,
	'Goal::evaluateAchievement line: 14');
INSERT INTO ACT_EL
	VALUES (1386,
	1387,
	1388,
	1380);
INSERT INTO ACT_SMT
	VALUES (1389,
	1370,
	0,
	16,
	1,
	'Goal::evaluateAchievement line: 16');
INSERT INTO ACT_E
	VALUES (1389,
	1390,
	1380);
INSERT INTO ACT_SMT
	VALUES (1383,
	1370,
	1391,
	21,
	1,
	'Goal::evaluateAchievement line: 21');
INSERT INTO ACT_AI
	VALUES (1383,
	1392,
	1393,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1391,
	1370,
	1394,
	22,
	1,
	'Goal::evaluateAchievement line: 22');
INSERT INTO ACT_IF
	VALUES (1391,
	1395,
	1396,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1397,
	1370,
	0,
	24,
	1,
	'Goal::evaluateAchievement line: 24');
INSERT INTO ACT_EL
	VALUES (1397,
	1398,
	1399,
	1391);
INSERT INTO ACT_SMT
	VALUES (1394,
	1370,
	1400,
	30,
	1,
	'Goal::evaluateAchievement line: 30');
INSERT INTO ACT_IF
	VALUES (1394,
	1401,
	1402,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1400,
	1370,
	0,
	38,
	1,
	'Goal::evaluateAchievement line: 38');
INSERT INTO ACT_RET
	VALUES (1400,
	1403);
INSERT INTO V_VAL
	VALUES (1374,
	0,
	0,
	6,
	32,
	35,
	0,
	0,
	0,
	0,
	106,
	1370);
INSERT INTO V_IRF
	VALUES (1374,
	1404);
INSERT INTO V_VAL
	VALUES (1378,
	0,
	0,
	7,
	31,
	34,
	0,
	0,
	0,
	0,
	106,
	1370);
INSERT INTO V_IRF
	VALUES (1378,
	1404);
INSERT INTO V_VAL
	VALUES (1382,
	1,
	1,
	11,
	1,
	12,
	0,
	0,
	0,
	0,
	10,
	1370);
INSERT INTO V_TVL
	VALUES (1382,
	1405);
INSERT INTO V_VAL
	VALUES (1381,
	0,
	0,
	11,
	16,
	18,
	0,
	0,
	0,
	0,
	10,
	1370);
INSERT INTO V_LRL
	VALUES (1381,
	'0.0');
INSERT INTO V_VAL
	VALUES (1406,
	0,
	0,
	12,
	6,
	13,
	0,
	0,
	0,
	0,
	106,
	1370);
INSERT INTO V_IRF
	VALUES (1406,
	1373);
INSERT INTO V_VAL
	VALUES (1407,
	0,
	0,
	12,
	15,
	26,
	0,
	0,
	0,
	0,
	37,
	1370);
INSERT INTO V_AVL
	VALUES (1407,
	1406,
	176,
	205);
INSERT INTO V_VAL
	VALUES (1385,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1370);
INSERT INTO V_BIN
	VALUES (1385,
	1408,
	1407,
	'==');
INSERT INTO V_VAL
	VALUES (1408,
	0,
	0,
	12,
	45,
	53,
	0,
	0,
	0,
	0,
	37,
	1370);
INSERT INTO V_LEN
	VALUES (1408,
	383,
	12,
	31);
INSERT INTO V_VAL
	VALUES (1409,
	0,
	0,
	14,
	8,
	15,
	0,
	0,
	0,
	0,
	106,
	1370);
INSERT INTO V_IRF
	VALUES (1409,
	1373);
INSERT INTO V_VAL
	VALUES (1410,
	0,
	0,
	14,
	17,
	28,
	0,
	0,
	0,
	0,
	37,
	1370);
INSERT INTO V_AVL
	VALUES (1410,
	1409,
	176,
	205);
INSERT INTO V_VAL
	VALUES (1388,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1370);
INSERT INTO V_BIN
	VALUES (1388,
	1411,
	1410,
	'==');
INSERT INTO V_VAL
	VALUES (1411,
	0,
	0,
	14,
	47,
	50,
	0,
	0,
	0,
	0,
	37,
	1370);
INSERT INTO V_LEN
	VALUES (1411,
	375,
	14,
	33);
INSERT INTO V_VAL
	VALUES (1393,
	1,
	1,
	21,
	1,
	15,
	0,
	0,
	0,
	0,
	455,
	1370);
INSERT INTO V_TVL
	VALUES (1393,
	1412);
INSERT INTO V_VAL
	VALUES (1392,
	0,
	0,
	21,
	36,
	44,
	0,
	0,
	0,
	0,
	455,
	1370);
INSERT INTO V_LEN
	VALUES (1392,
	1413,
	21,
	19);
INSERT INTO V_VAL
	VALUES (1414,
	0,
	0,
	22,
	6,
	17,
	0,
	0,
	0,
	0,
	10,
	1370);
INSERT INTO V_TVL
	VALUES (1414,
	1405);
INSERT INTO V_VAL
	VALUES (1396,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1370);
INSERT INTO V_BIN
	VALUES (1396,
	1415,
	1414,
	'<');
INSERT INTO V_VAL
	VALUES (1416,
	0,
	0,
	22,
	21,
	28,
	0,
	0,
	0,
	0,
	106,
	1370);
INSERT INTO V_IRF
	VALUES (1416,
	1373);
INSERT INTO V_VAL
	VALUES (1415,
	0,
	0,
	22,
	30,
	36,
	0,
	0,
	0,
	0,
	10,
	1370);
INSERT INTO V_AVL
	VALUES (1415,
	1416,
	176,
	199);
INSERT INTO V_VAL
	VALUES (1417,
	0,
	0,
	24,
	8,
	19,
	0,
	0,
	0,
	0,
	10,
	1370);
INSERT INTO V_TVL
	VALUES (1417,
	1405);
INSERT INTO V_VAL
	VALUES (1399,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1370);
INSERT INTO V_BIN
	VALUES (1399,
	1418,
	1417,
	'>');
INSERT INTO V_VAL
	VALUES (1419,
	0,
	0,
	24,
	23,
	30,
	0,
	0,
	0,
	0,
	106,
	1370);
INSERT INTO V_IRF
	VALUES (1419,
	1373);
INSERT INTO V_VAL
	VALUES (1418,
	0,
	0,
	24,
	32,
	38,
	0,
	0,
	0,
	0,
	10,
	1370);
INSERT INTO V_AVL
	VALUES (1418,
	1419,
	176,
	201);
INSERT INTO V_VAL
	VALUES (1420,
	0,
	0,
	30,
	6,
	13,
	0,
	0,
	0,
	0,
	106,
	1370);
INSERT INTO V_IRF
	VALUES (1420,
	1373);
INSERT INTO V_VAL
	VALUES (1421,
	0,
	0,
	30,
	15,
	26,
	0,
	0,
	0,
	0,
	37,
	1370);
INSERT INTO V_AVL
	VALUES (1421,
	1420,
	176,
	205);
INSERT INTO V_VAL
	VALUES (1402,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1370);
INSERT INTO V_BIN
	VALUES (1402,
	1422,
	1421,
	'==');
INSERT INTO V_VAL
	VALUES (1422,
	0,
	0,
	30,
	45,
	48,
	0,
	0,
	0,
	0,
	37,
	1370);
INSERT INTO V_LEN
	VALUES (1422,
	375,
	30,
	31);
INSERT INTO V_VAL
	VALUES (1403,
	0,
	0,
	38,
	9,
	23,
	0,
	0,
	0,
	0,
	455,
	1370);
INSERT INTO V_TVL
	VALUES (1403,
	1412);
INSERT INTO V_VAR
	VALUES (1373,
	1370,
	'goalSpec',
	1,
	106);
INSERT INTO V_INT
	VALUES (1373,
	0,
	176);
INSERT INTO V_VAR
	VALUES (1404,
	1370,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (1404,
	0,
	241);
INSERT INTO V_VAR
	VALUES (1377,
	1370,
	'session',
	1,
	106);
INSERT INTO V_INT
	VALUES (1377,
	0,
	102);
INSERT INTO V_VAR
	VALUES (1405,
	1370,
	'currentValue',
	1,
	10);
INSERT INTO V_TRN
	VALUES (1405,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1412,
	1370,
	'goalDisposition',
	1,
	455);
INSERT INTO V_TRN
	VALUES (1412,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (1384,
	0,
	0,
	0,
	'',
	'',
	'',
	13,
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
	1369,
	0);
INSERT INTO ACT_SMT
	VALUES (1423,
	1384,
	0,
	13,
	3,
	'Goal::evaluateAchievement line: 13');
INSERT INTO ACT_AI
	VALUES (1423,
	1424,
	1425,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1425,
	1,
	0,
	13,
	3,
	14,
	0,
	0,
	0,
	0,
	10,
	1384);
INSERT INTO V_TVL
	VALUES (1425,
	1405);
INSERT INTO V_VAL
	VALUES (1426,
	0,
	0,
	13,
	18,
	24,
	0,
	0,
	0,
	0,
	106,
	1384);
INSERT INTO V_IRF
	VALUES (1426,
	1377);
INSERT INTO V_VAL
	VALUES (1424,
	0,
	0,
	13,
	26,
	41,
	0,
	0,
	0,
	0,
	30,
	1384);
INSERT INTO V_AVL
	VALUES (1424,
	1426,
	102,
	571);
INSERT INTO ACT_BLK
	VALUES (1387,
	0,
	0,
	0,
	'',
	'',
	'',
	15,
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
	1369,
	0);
INSERT INTO ACT_SMT
	VALUES (1427,
	1387,
	0,
	15,
	3,
	'Goal::evaluateAchievement line: 15');
INSERT INTO ACT_AI
	VALUES (1427,
	1428,
	1429,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1429,
	1,
	0,
	15,
	3,
	14,
	0,
	0,
	0,
	0,
	10,
	1387);
INSERT INTO V_TVL
	VALUES (1429,
	1405);
INSERT INTO V_VAL
	VALUES (1430,
	0,
	0,
	15,
	18,
	24,
	0,
	0,
	0,
	0,
	106,
	1387);
INSERT INTO V_IRF
	VALUES (1430,
	1377);
INSERT INTO V_VAL
	VALUES (1428,
	0,
	0,
	15,
	26,
	36,
	0,
	0,
	0,
	0,
	10,
	1387);
INSERT INTO V_AVL
	VALUES (1428,
	1430,
	102,
	550);
INSERT INTO ACT_BLK
	VALUES (1390,
	0,
	0,
	0,
	'LOG',
	'',
	'',
	17,
	3,
	17,
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
	1369,
	0);
INSERT INTO ACT_SMT
	VALUES (1431,
	1390,
	0,
	17,
	3,
	'Goal::evaluateAchievement line: 17');
INSERT INTO ACT_BRG
	VALUES (1431,
	128,
	17,
	8,
	17,
	3);
INSERT INTO V_VAL
	VALUES (1432,
	0,
	0,
	17,
	29,
	82,
	0,
	0,
	0,
	0,
	130,
	1390);
INSERT INTO V_LST
	VALUES (1432,
	'Goal.evaluateAchievement: Unknown Goal Criteria Type.');
INSERT INTO V_PAR
	VALUES (1432,
	1431,
	0,
	'message',
	0,
	17,
	20);
INSERT INTO ACT_BLK
	VALUES (1395,
	0,
	0,
	0,
	'',
	'',
	'',
	23,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	23,
	21,
	0,
	1369,
	0);
INSERT INTO ACT_SMT
	VALUES (1433,
	1395,
	0,
	23,
	3,
	'Goal::evaluateAchievement line: 23');
INSERT INTO ACT_AI
	VALUES (1433,
	1434,
	1435,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1435,
	1,
	0,
	23,
	3,
	17,
	0,
	0,
	0,
	0,
	455,
	1395);
INSERT INTO V_TVL
	VALUES (1435,
	1412);
INSERT INTO V_VAL
	VALUES (1434,
	0,
	0,
	23,
	38,
	45,
	0,
	0,
	0,
	0,
	455,
	1395);
INSERT INTO V_LEN
	VALUES (1434,
	458,
	23,
	21);
INSERT INTO ACT_BLK
	VALUES (1398,
	0,
	0,
	0,
	'',
	'',
	'',
	25,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	25,
	21,
	0,
	1369,
	0);
INSERT INTO ACT_SMT
	VALUES (1436,
	1398,
	0,
	25,
	3,
	'Goal::evaluateAchievement line: 25');
INSERT INTO ACT_AI
	VALUES (1436,
	1437,
	1438,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1438,
	1,
	0,
	25,
	3,
	17,
	0,
	0,
	0,
	0,
	455,
	1398);
INSERT INTO V_TVL
	VALUES (1438,
	1412);
INSERT INTO V_VAL
	VALUES (1437,
	0,
	0,
	25,
	38,
	45,
	0,
	0,
	0,
	0,
	455,
	1398);
INSERT INTO V_LEN
	VALUES (1437,
	462,
	25,
	21);
INSERT INTO ACT_BLK
	VALUES (1401,
	0,
	0,
	0,
	'',
	'',
	'',
	33,
	3,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	33,
	29,
	0,
	1369,
	0);
INSERT INTO ACT_SMT
	VALUES (1439,
	1401,
	0,
	31,
	3,
	'Goal::evaluateAchievement line: 31');
INSERT INTO ACT_IF
	VALUES (1439,
	1440,
	1441,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1442,
	1401,
	0,
	33,
	3,
	'Goal::evaluateAchievement line: 33');
INSERT INTO ACT_EL
	VALUES (1442,
	1443,
	1444,
	1439);
INSERT INTO V_VAL
	VALUES (1445,
	0,
	0,
	31,
	8,
	22,
	0,
	0,
	0,
	0,
	455,
	1401);
INSERT INTO V_TVL
	VALUES (1445,
	1412);
INSERT INTO V_VAL
	VALUES (1441,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1401);
INSERT INTO V_BIN
	VALUES (1441,
	1446,
	1445,
	'==');
INSERT INTO V_VAL
	VALUES (1446,
	0,
	0,
	31,
	44,
	51,
	0,
	0,
	0,
	0,
	455,
	1401);
INSERT INTO V_LEN
	VALUES (1446,
	458,
	31,
	27);
INSERT INTO V_VAL
	VALUES (1447,
	0,
	0,
	33,
	10,
	24,
	0,
	0,
	0,
	0,
	455,
	1401);
INSERT INTO V_TVL
	VALUES (1447,
	1412);
INSERT INTO V_VAL
	VALUES (1444,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1401);
INSERT INTO V_BIN
	VALUES (1444,
	1448,
	1447,
	'==');
INSERT INTO V_VAL
	VALUES (1448,
	0,
	0,
	33,
	46,
	53,
	0,
	0,
	0,
	0,
	455,
	1401);
INSERT INTO V_LEN
	VALUES (1448,
	462,
	33,
	29);
INSERT INTO ACT_BLK
	VALUES (1440,
	0,
	0,
	0,
	'',
	'',
	'',
	32,
	5,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	32,
	23,
	0,
	1369,
	0);
INSERT INTO ACT_SMT
	VALUES (1449,
	1440,
	0,
	32,
	5,
	'Goal::evaluateAchievement line: 32');
INSERT INTO ACT_AI
	VALUES (1449,
	1450,
	1451,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1451,
	1,
	0,
	32,
	5,
	19,
	0,
	0,
	0,
	0,
	455,
	1440);
INSERT INTO V_TVL
	VALUES (1451,
	1412);
INSERT INTO V_VAL
	VALUES (1450,
	0,
	0,
	32,
	40,
	47,
	0,
	0,
	0,
	0,
	455,
	1440);
INSERT INTO V_LEN
	VALUES (1450,
	462,
	32,
	23);
INSERT INTO ACT_BLK
	VALUES (1443,
	0,
	0,
	0,
	'',
	'',
	'',
	34,
	5,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	34,
	23,
	0,
	1369,
	0);
INSERT INTO ACT_SMT
	VALUES (1452,
	1443,
	0,
	34,
	5,
	'Goal::evaluateAchievement line: 34');
INSERT INTO ACT_AI
	VALUES (1452,
	1453,
	1454,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1454,
	1,
	0,
	34,
	5,
	19,
	0,
	0,
	0,
	0,
	455,
	1443);
INSERT INTO V_TVL
	VALUES (1454,
	1412);
INSERT INTO V_VAL
	VALUES (1453,
	0,
	0,
	34,
	40,
	47,
	0,
	0,
	0,
	0,
	455,
	1443);
INSERT INTO V_LEN
	VALUES (1453,
	458,
	34,
	23);
INSERT INTO O_TFR
	VALUES (1455,
	241,
	'evaluateCompletion',
	'',
	6,
	1,
	'// Based on the span type for this goal, determine 
//  whether it has been completed, update achievement
//  records as necessary, and advance to the next goal
//  if appropriate.

select one goalSpec related by self->GoalSpec[R9.''specified by''];

// Based on the span type for the goal, get the elapsed span 
//   for comparison against the specified span for the goal.
elapsedSpan = 0.0;  // Explicit declaration
if ( goalSpec.spanType == GoalSpan::Distance )
  select one session related by self->WorkoutSession[R11.''is currently executing within''];
  elapsedSpan = session.accumulatedDistance - self.goalstart;
elif ( goalSpec.spanType == GoalSpan::Time )
  select one workoutTimer related by 
    self->WorkoutSession[R11.''is currently executing within'']->WorkoutTimer[R8.''is timed by''];
  elapsedSpan = workoutTimer.time - self.goalstart;
else
  LOG::LogFailure( message: "Goal.evaluateCompletion: Unknown Goal Span Type." );
end if;

// Compare the current value against the specified span to determine 
//   whether the execution of this workout goal is complete.
if ( elapsedSpan >= goalSpec.span )
  select one openAchievement related by self->Achievement[R14.''has open''];
  if ( not empty openAchievement )
    openAchievement.close();
  end if;
  generate Goal1:Completed to self;
end if;
',
	1,
	'',
	1368);
INSERT INTO ACT_OPB
	VALUES (1456,
	1455);
INSERT INTO ACT_ACT
	VALUES (1456,
	'operation',
	0,
	1457,
	0,
	0,
	'Goal::evaluateCompletion',
	0);
INSERT INTO ACT_BLK
	VALUES (1457,
	1,
	0,
	0,
	'',
	'',
	'',
	24,
	1,
	6,
	38,
	0,
	0,
	6,
	47,
	6,
	50,
	14,
	29,
	0,
	1456,
	0);
INSERT INTO ACT_SMT
	VALUES (1458,
	1457,
	1459,
	6,
	1,
	'Goal::evaluateCompletion line: 6');
INSERT INTO ACT_SEL
	VALUES (1458,
	1460,
	1,
	'one',
	1461);
INSERT INTO ACT_SR
	VALUES (1458);
INSERT INTO ACT_LNK
	VALUES (1462,
	'''specified by''',
	1458,
	239,
	0,
	2,
	176,
	6,
	38,
	6,
	47,
	6,
	50);
INSERT INTO ACT_SMT
	VALUES (1459,
	1457,
	1463,
	10,
	1,
	'Goal::evaluateCompletion line: 10');
INSERT INTO ACT_AI
	VALUES (1459,
	1464,
	1465,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1463,
	1457,
	1466,
	11,
	1,
	'Goal::evaluateCompletion line: 11');
INSERT INTO ACT_IF
	VALUES (1463,
	1467,
	1468,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1469,
	1457,
	0,
	14,
	1,
	'Goal::evaluateCompletion line: 14');
INSERT INTO ACT_EL
	VALUES (1469,
	1470,
	1471,
	1463);
INSERT INTO ACT_SMT
	VALUES (1472,
	1457,
	0,
	18,
	1,
	'Goal::evaluateCompletion line: 18');
INSERT INTO ACT_E
	VALUES (1472,
	1473,
	1463);
INSERT INTO ACT_SMT
	VALUES (1466,
	1457,
	0,
	24,
	1,
	'Goal::evaluateCompletion line: 24');
INSERT INTO ACT_IF
	VALUES (1466,
	1474,
	1475,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1461,
	0,
	0,
	6,
	32,
	35,
	0,
	0,
	0,
	0,
	106,
	1457);
INSERT INTO V_IRF
	VALUES (1461,
	1476);
INSERT INTO V_VAL
	VALUES (1465,
	1,
	1,
	10,
	1,
	11,
	0,
	0,
	0,
	0,
	10,
	1457);
INSERT INTO V_TVL
	VALUES (1465,
	1477);
INSERT INTO V_VAL
	VALUES (1464,
	0,
	0,
	10,
	15,
	17,
	0,
	0,
	0,
	0,
	10,
	1457);
INSERT INTO V_LRL
	VALUES (1464,
	'0.0');
INSERT INTO V_VAL
	VALUES (1478,
	0,
	0,
	11,
	6,
	13,
	0,
	0,
	0,
	0,
	106,
	1457);
INSERT INTO V_IRF
	VALUES (1478,
	1460);
INSERT INTO V_VAL
	VALUES (1479,
	0,
	0,
	11,
	15,
	22,
	0,
	0,
	0,
	0,
	39,
	1457);
INSERT INTO V_AVL
	VALUES (1479,
	1478,
	176,
	207);
INSERT INTO V_VAL
	VALUES (1468,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1457);
INSERT INTO V_BIN
	VALUES (1468,
	1480,
	1479,
	'==');
INSERT INTO V_VAL
	VALUES (1480,
	0,
	0,
	11,
	37,
	44,
	0,
	0,
	0,
	0,
	39,
	1457);
INSERT INTO V_LEN
	VALUES (1480,
	377,
	11,
	27);
INSERT INTO V_VAL
	VALUES (1481,
	0,
	0,
	14,
	8,
	15,
	0,
	0,
	0,
	0,
	106,
	1457);
INSERT INTO V_IRF
	VALUES (1481,
	1460);
INSERT INTO V_VAL
	VALUES (1482,
	0,
	0,
	14,
	17,
	24,
	0,
	0,
	0,
	0,
	39,
	1457);
INSERT INTO V_AVL
	VALUES (1482,
	1481,
	176,
	207);
INSERT INTO V_VAL
	VALUES (1471,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1457);
INSERT INTO V_BIN
	VALUES (1471,
	1483,
	1482,
	'==');
INSERT INTO V_VAL
	VALUES (1483,
	0,
	0,
	14,
	39,
	42,
	0,
	0,
	0,
	0,
	39,
	1457);
INSERT INTO V_LEN
	VALUES (1483,
	385,
	14,
	29);
INSERT INTO V_VAL
	VALUES (1484,
	0,
	0,
	24,
	6,
	16,
	0,
	0,
	0,
	0,
	10,
	1457);
INSERT INTO V_TVL
	VALUES (1484,
	1477);
INSERT INTO V_VAL
	VALUES (1475,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1457);
INSERT INTO V_BIN
	VALUES (1475,
	1485,
	1484,
	'>=');
INSERT INTO V_VAL
	VALUES (1486,
	0,
	0,
	24,
	21,
	28,
	0,
	0,
	0,
	0,
	106,
	1457);
INSERT INTO V_IRF
	VALUES (1486,
	1460);
INSERT INTO V_VAL
	VALUES (1485,
	0,
	0,
	24,
	30,
	33,
	0,
	0,
	0,
	0,
	10,
	1457);
INSERT INTO V_AVL
	VALUES (1485,
	1486,
	176,
	203);
INSERT INTO V_VAR
	VALUES (1460,
	1457,
	'goalSpec',
	1,
	106);
INSERT INTO V_INT
	VALUES (1460,
	0,
	176);
INSERT INTO V_VAR
	VALUES (1476,
	1457,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (1476,
	0,
	241);
INSERT INTO V_VAR
	VALUES (1477,
	1457,
	'elapsedSpan',
	1,
	10);
INSERT INTO V_TRN
	VALUES (1477,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (1467,
	1,
	0,
	0,
	'',
	'',
	'',
	13,
	3,
	12,
	39,
	0,
	0,
	12,
	54,
	12,
	58,
	0,
	0,
	0,
	1456,
	0);
INSERT INTO ACT_SMT
	VALUES (1487,
	1467,
	1488,
	12,
	3,
	'Goal::evaluateCompletion line: 12');
INSERT INTO ACT_SEL
	VALUES (1487,
	1489,
	1,
	'one',
	1490);
INSERT INTO ACT_SR
	VALUES (1487);
INSERT INTO ACT_LNK
	VALUES (1491,
	'''is currently executing within''',
	1487,
	245,
	0,
	2,
	102,
	12,
	39,
	12,
	54,
	12,
	58);
INSERT INTO ACT_SMT
	VALUES (1488,
	1467,
	0,
	13,
	3,
	'Goal::evaluateCompletion line: 13');
INSERT INTO ACT_AI
	VALUES (1488,
	1492,
	1493,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1490,
	0,
	0,
	12,
	33,
	36,
	0,
	0,
	0,
	0,
	106,
	1467);
INSERT INTO V_IRF
	VALUES (1490,
	1476);
INSERT INTO V_VAL
	VALUES (1493,
	1,
	0,
	13,
	3,
	13,
	0,
	0,
	0,
	0,
	10,
	1467);
INSERT INTO V_TVL
	VALUES (1493,
	1477);
INSERT INTO V_VAL
	VALUES (1494,
	0,
	0,
	13,
	17,
	23,
	0,
	0,
	0,
	0,
	106,
	1467);
INSERT INTO V_IRF
	VALUES (1494,
	1489);
INSERT INTO V_VAL
	VALUES (1495,
	0,
	0,
	13,
	25,
	43,
	0,
	0,
	0,
	0,
	10,
	1467);
INSERT INTO V_AVL
	VALUES (1495,
	1494,
	102,
	499);
INSERT INTO V_VAL
	VALUES (1492,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	10,
	1467);
INSERT INTO V_BIN
	VALUES (1492,
	1496,
	1495,
	'-');
INSERT INTO V_VAL
	VALUES (1497,
	0,
	0,
	13,
	47,
	50,
	0,
	0,
	0,
	0,
	106,
	1467);
INSERT INTO V_IRF
	VALUES (1497,
	1476);
INSERT INTO V_VAL
	VALUES (1496,
	0,
	0,
	13,
	52,
	60,
	0,
	0,
	0,
	0,
	10,
	1467);
INSERT INTO V_AVL
	VALUES (1496,
	1497,
	241,
	1355);
INSERT INTO V_VAR
	VALUES (1489,
	1467,
	'session',
	1,
	106);
INSERT INTO V_INT
	VALUES (1489,
	0,
	102);
INSERT INTO ACT_BLK
	VALUES (1470,
	1,
	0,
	0,
	'',
	'',
	'',
	17,
	3,
	16,
	64,
	0,
	0,
	16,
	77,
	16,
	80,
	0,
	0,
	0,
	1456,
	0);
INSERT INTO ACT_SMT
	VALUES (1498,
	1470,
	1499,
	15,
	3,
	'Goal::evaluateCompletion line: 15');
INSERT INTO ACT_SEL
	VALUES (1498,
	1500,
	1,
	'one',
	1501);
INSERT INTO ACT_SR
	VALUES (1498);
INSERT INTO ACT_LNK
	VALUES (1502,
	'''is currently executing within''',
	1498,
	245,
	1503,
	2,
	102,
	16,
	11,
	16,
	26,
	16,
	30);
INSERT INTO ACT_LNK
	VALUES (1503,
	'''is timed by''',
	0,
	229,
	0,
	2,
	118,
	16,
	64,
	16,
	77,
	16,
	80);
INSERT INTO ACT_SMT
	VALUES (1499,
	1470,
	0,
	17,
	3,
	'Goal::evaluateCompletion line: 17');
INSERT INTO ACT_AI
	VALUES (1499,
	1504,
	1505,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1501,
	0,
	0,
	16,
	5,
	8,
	0,
	0,
	0,
	0,
	106,
	1470);
INSERT INTO V_IRF
	VALUES (1501,
	1476);
INSERT INTO V_VAL
	VALUES (1505,
	1,
	0,
	17,
	3,
	13,
	0,
	0,
	0,
	0,
	10,
	1470);
INSERT INTO V_TVL
	VALUES (1505,
	1477);
INSERT INTO V_VAL
	VALUES (1506,
	0,
	0,
	17,
	17,
	28,
	0,
	0,
	0,
	0,
	106,
	1470);
INSERT INTO V_IRF
	VALUES (1506,
	1500);
INSERT INTO V_VAL
	VALUES (1507,
	0,
	0,
	17,
	30,
	33,
	0,
	0,
	0,
	0,
	30,
	1470);
INSERT INTO V_AVL
	VALUES (1507,
	1506,
	118,
	422);
INSERT INTO V_VAL
	VALUES (1504,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	10,
	1470);
INSERT INTO V_BIN
	VALUES (1504,
	1508,
	1507,
	'-');
INSERT INTO V_VAL
	VALUES (1509,
	0,
	0,
	17,
	37,
	40,
	0,
	0,
	0,
	0,
	106,
	1470);
INSERT INTO V_IRF
	VALUES (1509,
	1476);
INSERT INTO V_VAL
	VALUES (1508,
	0,
	0,
	17,
	42,
	50,
	0,
	0,
	0,
	0,
	10,
	1470);
INSERT INTO V_AVL
	VALUES (1508,
	1509,
	241,
	1355);
INSERT INTO V_VAR
	VALUES (1500,
	1470,
	'workoutTimer',
	1,
	106);
INSERT INTO V_INT
	VALUES (1500,
	0,
	118);
INSERT INTO ACT_BLK
	VALUES (1473,
	0,
	0,
	0,
	'LOG',
	'',
	'',
	19,
	3,
	19,
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
	1456,
	0);
INSERT INTO ACT_SMT
	VALUES (1510,
	1473,
	0,
	19,
	3,
	'Goal::evaluateCompletion line: 19');
INSERT INTO ACT_BRG
	VALUES (1510,
	128,
	19,
	8,
	19,
	3);
INSERT INTO V_VAL
	VALUES (1511,
	0,
	0,
	19,
	29,
	77,
	0,
	0,
	0,
	0,
	130,
	1473);
INSERT INTO V_LST
	VALUES (1511,
	'Goal.evaluateCompletion: Unknown Goal Span Type.');
INSERT INTO V_PAR
	VALUES (1511,
	1510,
	0,
	'message',
	0,
	19,
	20);
INSERT INTO ACT_BLK
	VALUES (1474,
	1,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	29,
	3,
	25,
	47,
	0,
	0,
	25,
	59,
	25,
	63,
	0,
	0,
	0,
	1456,
	0);
INSERT INTO ACT_SMT
	VALUES (1512,
	1474,
	1513,
	25,
	3,
	'Goal::evaluateCompletion line: 25');
INSERT INTO ACT_SEL
	VALUES (1512,
	1514,
	1,
	'one',
	1515);
INSERT INTO ACT_SR
	VALUES (1512);
INSERT INTO ACT_LNK
	VALUES (1516,
	'''has open''',
	1512,
	255,
	0,
	2,
	250,
	25,
	47,
	25,
	59,
	25,
	63);
INSERT INTO ACT_SMT
	VALUES (1513,
	1474,
	1517,
	26,
	3,
	'Goal::evaluateCompletion line: 26');
INSERT INTO ACT_IF
	VALUES (1513,
	1518,
	1519,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1517,
	1474,
	0,
	29,
	3,
	'Goal::evaluateCompletion line: 29');
INSERT INTO E_ESS
	VALUES (1517,
	1,
	0,
	29,
	12,
	29,
	18,
	25,
	47,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (1517);
INSERT INTO E_GSME
	VALUES (1517,
	1520);
INSERT INTO E_GEN
	VALUES (1517,
	1476);
INSERT INTO V_VAL
	VALUES (1515,
	0,
	0,
	25,
	41,
	44,
	0,
	0,
	0,
	0,
	106,
	1474);
INSERT INTO V_IRF
	VALUES (1515,
	1476);
INSERT INTO V_VAL
	VALUES (1521,
	0,
	0,
	26,
	18,
	32,
	0,
	0,
	0,
	0,
	106,
	1474);
INSERT INTO V_IRF
	VALUES (1521,
	1514);
INSERT INTO V_VAL
	VALUES (1522,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1474);
INSERT INTO V_UNY
	VALUES (1522,
	1521,
	'empty');
INSERT INTO V_VAL
	VALUES (1519,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1474);
INSERT INTO V_UNY
	VALUES (1519,
	1522,
	'not');
INSERT INTO V_VAR
	VALUES (1514,
	1474,
	'openAchievement',
	1,
	106);
INSERT INTO V_INT
	VALUES (1514,
	0,
	250);
INSERT INTO ACT_BLK
	VALUES (1518,
	0,
	0,
	0,
	'',
	'',
	'',
	27,
	5,
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
	1456,
	0);
INSERT INTO ACT_SMT
	VALUES (1523,
	1518,
	0,
	27,
	5,
	'Goal::evaluateCompletion line: 27');
INSERT INTO ACT_TFM
	VALUES (1523,
	401,
	1514,
	27,
	21,
	0,
	0);
INSERT INTO O_TFR
	VALUES (153,
	241,
	'nextGoal',
	'',
	6,
	0,
	'// Advance to the next goal or start the first one if one
//   is currently not exectuing.

//  If there is a goal currently executing, notify it that its execution
//    has completed.
//  Otherwise, create and start a goal for the first goal specification
//    if one exists.
select any session from instances of WorkoutSession;  // WorkoutSession is a singleton.
if ( not empty session )
  select one goal related by session->Goal[R11.''is currently executing''];
  if ( not empty goal )
    generate Goal1:Completed to goal;
  else
    Goal::goalcreate( sequenceNumber: GoalSpecOrigin );
  end if;
end if;',
	1,
	'',
	1455);
INSERT INTO ACT_OPB
	VALUES (1524,
	153);
INSERT INTO ACT_ACT
	VALUES (1524,
	'class operation',
	0,
	1525,
	0,
	0,
	'Goal::nextGoal',
	0);
INSERT INTO ACT_BLK
	VALUES (1525,
	1,
	0,
	0,
	'',
	'',
	'',
	9,
	1,
	8,
	38,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1524,
	0);
INSERT INTO ACT_SMT
	VALUES (1526,
	1525,
	1527,
	8,
	1,
	'Goal::nextGoal line: 8');
INSERT INTO ACT_FIO
	VALUES (1526,
	1528,
	1,
	'any',
	102,
	8,
	38);
INSERT INTO ACT_SMT
	VALUES (1527,
	1525,
	0,
	9,
	1,
	'Goal::nextGoal line: 9');
INSERT INTO ACT_IF
	VALUES (1527,
	1529,
	1530,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1531,
	0,
	0,
	9,
	16,
	22,
	0,
	0,
	0,
	0,
	106,
	1525);
INSERT INTO V_IRF
	VALUES (1531,
	1528);
INSERT INTO V_VAL
	VALUES (1532,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1525);
INSERT INTO V_UNY
	VALUES (1532,
	1531,
	'empty');
INSERT INTO V_VAL
	VALUES (1530,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1525);
INSERT INTO V_UNY
	VALUES (1530,
	1532,
	'not');
INSERT INTO V_VAR
	VALUES (1528,
	1525,
	'session',
	1,
	106);
INSERT INTO V_INT
	VALUES (1528,
	0,
	102);
INSERT INTO ACT_BLK
	VALUES (1529,
	1,
	0,
	0,
	'',
	'',
	'',
	13,
	3,
	10,
	39,
	0,
	0,
	10,
	44,
	10,
	48,
	0,
	0,
	0,
	1524,
	0);
INSERT INTO ACT_SMT
	VALUES (1533,
	1529,
	1534,
	10,
	3,
	'Goal::nextGoal line: 10');
INSERT INTO ACT_SEL
	VALUES (1533,
	1535,
	1,
	'one',
	1536);
INSERT INTO ACT_SR
	VALUES (1533);
INSERT INTO ACT_LNK
	VALUES (1537,
	'''is currently executing''',
	1533,
	245,
	0,
	2,
	241,
	10,
	39,
	10,
	44,
	10,
	48);
INSERT INTO ACT_SMT
	VALUES (1534,
	1529,
	0,
	11,
	3,
	'Goal::nextGoal line: 11');
INSERT INTO ACT_IF
	VALUES (1534,
	1538,
	1539,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1540,
	1529,
	0,
	13,
	3,
	'Goal::nextGoal line: 13');
INSERT INTO ACT_E
	VALUES (1540,
	1541,
	1534);
INSERT INTO V_VAL
	VALUES (1536,
	0,
	0,
	10,
	30,
	36,
	0,
	0,
	0,
	0,
	106,
	1529);
INSERT INTO V_IRF
	VALUES (1536,
	1528);
INSERT INTO V_VAL
	VALUES (1542,
	0,
	0,
	11,
	18,
	21,
	0,
	0,
	0,
	0,
	106,
	1529);
INSERT INTO V_IRF
	VALUES (1542,
	1535);
INSERT INTO V_VAL
	VALUES (1543,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1529);
INSERT INTO V_UNY
	VALUES (1543,
	1542,
	'empty');
INSERT INTO V_VAL
	VALUES (1539,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1529);
INSERT INTO V_UNY
	VALUES (1539,
	1543,
	'not');
INSERT INTO V_VAR
	VALUES (1535,
	1529,
	'goal',
	1,
	106);
INSERT INTO V_INT
	VALUES (1535,
	0,
	241);
INSERT INTO ACT_BLK
	VALUES (1538,
	0,
	0,
	0,
	'V_VAR.Var_ID',
	'',
	'',
	12,
	5,
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
	1524,
	0);
INSERT INTO ACT_SMT
	VALUES (1544,
	1538,
	0,
	12,
	5,
	'Goal::nextGoal line: 12');
INSERT INTO E_ESS
	VALUES (1544,
	1,
	0,
	12,
	14,
	12,
	20,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (1544);
INSERT INTO E_GSME
	VALUES (1544,
	1520);
INSERT INTO E_GEN
	VALUES (1544,
	1535);
INSERT INTO ACT_BLK
	VALUES (1541,
	0,
	0,
	0,
	'Goal',
	'',
	'',
	14,
	5,
	14,
	5,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1524,
	0);
INSERT INTO ACT_SMT
	VALUES (1545,
	1541,
	0,
	14,
	5,
	'Goal::nextGoal line: 14');
INSERT INTO ACT_TFM
	VALUES (1545,
	1288,
	0,
	14,
	11,
	14,
	5);
INSERT INTO V_VAL
	VALUES (1546,
	0,
	0,
	14,
	39,
	52,
	0,
	0,
	0,
	0,
	30,
	1541);
INSERT INTO V_SCV
	VALUES (1546,
	1547,
	30);
INSERT INTO V_PAR
	VALUES (1546,
	1545,
	0,
	'sequenceNumber',
	0,
	14,
	23);
INSERT INTO O_NBATTR
	VALUES (456,
	241);
INSERT INTO O_BATTR
	VALUES (456,
	241);
INSERT INTO O_ATTR
	VALUES (456,
	241,
	1355,
	'disposition',
	'The disposition of this goal.  See data type descriptions for details.
This attribute represents the logical or semantic disposition of the goal.
For example, a disposition indicating the need to increase the value in question
for a heart-rate goal means that activity should be increased to drive up the 
heart rate.  Since pace is the inverse of speed, a disposition indicating 
the need to increase the value in question (pace) means that the user must
increase speed, causing a lower (faster) pace number.',
	'',
	'disposition',
	0,
	455,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1355,
	241);
INSERT INTO O_BATTR
	VALUES (1355,
	241);
INSERT INTO O_ATTR
	VALUES (1355,
	241,
	1548,
	'goalstart',
	'Captures the starting point of the span for this particular goal so 
that the end of the goal execution period can be determined.  In other
words, using the value of this attribute together with the span specified
by the associated goal specification, the goal knows when it is finished.

For distance-based goals, it is expressed as the accumulated distance
in meters for the associated workout session at the time this goal
execution commenced.

For time-based goals, it is expressed as the elapsed time in seconds
for the associated workout session at the time this goal execution
commenced.',
	'',
	'goalstart',
	0,
	10,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1548,
	241);
INSERT INTO O_BATTR
	VALUES (1548,
	241);
INSERT INTO O_ATTR
	VALUES (1548,
	241,
	0,
	'ID',
	'An arbitrary identifier.',
	'',
	'ID',
	0,
	1549,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1550,
	241);
INSERT INTO O_BATTR
	VALUES (1550,
	241);
INSERT INTO O_ATTR
	VALUES (1550,
	241,
	1321,
	'current_state',
	'',
	'',
	'current_state',
	0,
	476,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1321,
	241);
INSERT INTO O_BATTR
	VALUES (1321,
	241);
INSERT INTO O_ATTR
	VALUES (1321,
	241,
	456,
	'evaluationTimer',
	'Handle for the timer used for periodic evaluation of goal achievement.',
	'',
	'evaluationTimer',
	0,
	332,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	241);
INSERT INTO O_ID
	VALUES (1,
	241);
INSERT INTO O_ID
	VALUES (2,
	241);
INSERT INTO SM_ISM
	VALUES (1551,
	241);
INSERT INTO SM_SM
	VALUES (1551,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (1551);
INSERT INTO SM_LEVT
	VALUES (1520,
	1551,
	0);
INSERT INTO SM_SEVT
	VALUES (1520,
	1551,
	0);
INSERT INTO SM_EVT
	VALUES (1520,
	1551,
	0,
	1,
	'Completed',
	0,
	'',
	'Goal1',
	'Indicates that execution of this goal has been completed.  ');
INSERT INTO SM_LEVT
	VALUES (1172,
	1551,
	0);
INSERT INTO SM_SEVT
	VALUES (1172,
	1551,
	0);
INSERT INTO SM_EVT
	VALUES (1172,
	1551,
	0,
	2,
	'Evaluate',
	0,
	'',
	'Goal2',
	'Indicates that this goal should be evaluated for completeness and achievement.');
INSERT INTO SM_LEVT
	VALUES (1196,
	1551,
	0);
INSERT INTO SM_SEVT
	VALUES (1196,
	1551,
	0);
INSERT INTO SM_EVT
	VALUES (1196,
	1551,
	0,
	3,
	'Pause',
	0,
	'',
	'Goal3',
	'');
INSERT INTO SM_STATE
	VALUES (1552,
	1551,
	0,
	'Executing',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (1552,
	1520,
	1551,
	0);
INSERT INTO SM_SEME
	VALUES (1552,
	1172,
	1551,
	0);
INSERT INTO SM_SEME
	VALUES (1552,
	1196,
	1551,
	0);
INSERT INTO SM_MOAH
	VALUES (1553,
	1551,
	1552);
INSERT INTO SM_AH
	VALUES (1553,
	1551);
INSERT INTO SM_ACT
	VALUES (1553,
	1551,
	1,
	'// Determine whether this goal is currently being achieved.
disposition = self.evaluateAchievement();

// Update achievement records if necessary.  There are four cases:
//   0. Still not achieving this goal. 
//   1. Just started achieving this goal.
//   2. Just stopped achieving this goal.
//   3. Still achieving this goal.
// For cases 0 and 3, there is nothing to be done for achievement records.
// Case 1 requires the creation of a new achievment record, storing the start time.
// Case 2 requires the storing of the end time for the open achievement record.
if ( (self.disposition != GoalDisposition::Achieving) and (disposition == GoalDisposition::Achieving) )
  // Case 1, create achievement record, store start time, relate it as open record.
  create object instance achievement of Achievement;
  relate self to achievement across R14.''has open'';
  select one workoutTimer related by 
    self->WorkoutSession[R11.''is currently executing within'']->WorkoutTimer[R8.''is timed by''];
  achievement.startTime = workoutTimer.time;
elif ( (self.disposition == GoalDisposition::Achieving) and (disposition != GoalDisposition::Achieving) )
  // Case 2, store end time, relate as recorded record, unrelate as open record.
  select one achievement related by self->Achievement[R14.''has open''];
  achievement.close();
end if;

// Update disposition of this goal.
self.disposition = disposition;

// Determine whether execution of this goal is complete, 
//  and if so, advance to the next one if it exists.
self.evaluateCompletion();',
	'');
INSERT INTO ACT_SAB
	VALUES (1554,
	1551,
	1553);
INSERT INTO ACT_ACT
	VALUES (1554,
	'state',
	0,
	1555,
	0,
	0,
	'Goal::Executing',
	0);
INSERT INTO ACT_BLK
	VALUES (1555,
	0,
	0,
	0,
	'',
	'',
	'',
	30,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	19,
	77,
	0,
	1554,
	0);
INSERT INTO ACT_SMT
	VALUES (1556,
	1555,
	1557,
	2,
	1,
	'Goal::Executing line: 2');
INSERT INTO ACT_AI
	VALUES (1556,
	1558,
	1559,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1557,
	1555,
	1560,
	12,
	1,
	'Goal::Executing line: 12');
INSERT INTO ACT_IF
	VALUES (1557,
	1561,
	1562,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1563,
	1555,
	0,
	19,
	1,
	'Goal::Executing line: 19');
INSERT INTO ACT_EL
	VALUES (1563,
	1564,
	1565,
	1557);
INSERT INTO ACT_SMT
	VALUES (1560,
	1555,
	1566,
	26,
	1,
	'Goal::Executing line: 26');
INSERT INTO ACT_AI
	VALUES (1560,
	1567,
	1568,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1566,
	1555,
	0,
	30,
	1,
	'Goal::Executing line: 30');
INSERT INTO ACT_TFM
	VALUES (1566,
	1455,
	1569,
	30,
	6,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1559,
	1,
	1,
	2,
	1,
	11,
	0,
	0,
	0,
	0,
	455,
	1555);
INSERT INTO V_TVL
	VALUES (1559,
	1570);
INSERT INTO V_VAL
	VALUES (1558,
	0,
	0,
	2,
	20,
	-1,
	0,
	0,
	0,
	0,
	455,
	1555);
INSERT INTO V_TRV
	VALUES (1558,
	1368,
	1569,
	1,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1571,
	0,
	0,
	12,
	7,
	10,
	0,
	0,
	0,
	0,
	106,
	1555);
INSERT INTO V_IRF
	VALUES (1571,
	1569);
INSERT INTO V_VAL
	VALUES (1572,
	0,
	0,
	12,
	12,
	22,
	0,
	0,
	0,
	0,
	455,
	1555);
INSERT INTO V_AVL
	VALUES (1572,
	1571,
	241,
	456);
INSERT INTO V_VAL
	VALUES (1573,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1555);
INSERT INTO V_BIN
	VALUES (1573,
	1574,
	1572,
	'!=');
INSERT INTO V_VAL
	VALUES (1574,
	0,
	0,
	12,
	44,
	52,
	0,
	0,
	0,
	0,
	455,
	1555);
INSERT INTO V_LEN
	VALUES (1574,
	1413,
	12,
	27);
INSERT INTO V_VAL
	VALUES (1575,
	0,
	0,
	12,
	60,
	70,
	0,
	0,
	0,
	0,
	455,
	1555);
INSERT INTO V_TVL
	VALUES (1575,
	1570);
INSERT INTO V_VAL
	VALUES (1576,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1555);
INSERT INTO V_BIN
	VALUES (1576,
	1577,
	1575,
	'==');
INSERT INTO V_VAL
	VALUES (1577,
	0,
	0,
	12,
	92,
	100,
	0,
	0,
	0,
	0,
	455,
	1555);
INSERT INTO V_LEN
	VALUES (1577,
	1413,
	12,
	75);
INSERT INTO V_VAL
	VALUES (1562,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1555);
INSERT INTO V_BIN
	VALUES (1562,
	1576,
	1573,
	'and');
INSERT INTO V_VAL
	VALUES (1578,
	0,
	0,
	19,
	9,
	12,
	0,
	0,
	0,
	0,
	106,
	1555);
INSERT INTO V_IRF
	VALUES (1578,
	1569);
INSERT INTO V_VAL
	VALUES (1579,
	0,
	0,
	19,
	14,
	24,
	0,
	0,
	0,
	0,
	455,
	1555);
INSERT INTO V_AVL
	VALUES (1579,
	1578,
	241,
	456);
INSERT INTO V_VAL
	VALUES (1580,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1555);
INSERT INTO V_BIN
	VALUES (1580,
	1581,
	1579,
	'==');
INSERT INTO V_VAL
	VALUES (1581,
	0,
	0,
	19,
	46,
	54,
	0,
	0,
	0,
	0,
	455,
	1555);
INSERT INTO V_LEN
	VALUES (1581,
	1413,
	19,
	29);
INSERT INTO V_VAL
	VALUES (1582,
	0,
	0,
	19,
	62,
	72,
	0,
	0,
	0,
	0,
	455,
	1555);
INSERT INTO V_TVL
	VALUES (1582,
	1570);
INSERT INTO V_VAL
	VALUES (1583,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1555);
INSERT INTO V_BIN
	VALUES (1583,
	1584,
	1582,
	'!=');
INSERT INTO V_VAL
	VALUES (1584,
	0,
	0,
	19,
	94,
	102,
	0,
	0,
	0,
	0,
	455,
	1555);
INSERT INTO V_LEN
	VALUES (1584,
	1413,
	19,
	77);
INSERT INTO V_VAL
	VALUES (1565,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1555);
INSERT INTO V_BIN
	VALUES (1565,
	1583,
	1580,
	'and');
INSERT INTO V_VAL
	VALUES (1585,
	1,
	0,
	26,
	1,
	4,
	0,
	0,
	0,
	0,
	106,
	1555);
INSERT INTO V_IRF
	VALUES (1585,
	1569);
INSERT INTO V_VAL
	VALUES (1568,
	1,
	0,
	26,
	6,
	16,
	0,
	0,
	0,
	0,
	455,
	1555);
INSERT INTO V_AVL
	VALUES (1568,
	1585,
	241,
	456);
INSERT INTO V_VAL
	VALUES (1567,
	0,
	0,
	26,
	20,
	30,
	0,
	0,
	0,
	0,
	455,
	1555);
INSERT INTO V_TVL
	VALUES (1567,
	1570);
INSERT INTO V_VAR
	VALUES (1570,
	1555,
	'disposition',
	1,
	455);
INSERT INTO V_TRN
	VALUES (1570,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1569,
	1555,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (1569,
	0,
	241);
INSERT INTO ACT_BLK
	VALUES (1561,
	1,
	0,
	0,
	'',
	'',
	'',
	18,
	3,
	17,
	64,
	0,
	0,
	17,
	77,
	17,
	80,
	0,
	0,
	0,
	1554,
	0);
INSERT INTO ACT_SMT
	VALUES (1586,
	1561,
	1587,
	14,
	3,
	'Goal::Executing line: 14');
INSERT INTO ACT_CR
	VALUES (1586,
	1588,
	1,
	250,
	14,
	41);
INSERT INTO ACT_SMT
	VALUES (1587,
	1561,
	1589,
	15,
	3,
	'Goal::Executing line: 15');
INSERT INTO ACT_REL
	VALUES (1587,
	1569,
	1588,
	'''has open''',
	255,
	15,
	37,
	15,
	41);
INSERT INTO ACT_SMT
	VALUES (1589,
	1561,
	1590,
	16,
	3,
	'Goal::Executing line: 16');
INSERT INTO ACT_SEL
	VALUES (1589,
	1591,
	1,
	'one',
	1592);
INSERT INTO ACT_SR
	VALUES (1589);
INSERT INTO ACT_LNK
	VALUES (1593,
	'''is currently executing within''',
	1589,
	245,
	1594,
	2,
	102,
	17,
	11,
	17,
	26,
	17,
	30);
INSERT INTO ACT_LNK
	VALUES (1594,
	'''is timed by''',
	0,
	229,
	0,
	2,
	118,
	17,
	64,
	17,
	77,
	17,
	80);
INSERT INTO ACT_SMT
	VALUES (1590,
	1561,
	0,
	18,
	3,
	'Goal::Executing line: 18');
INSERT INTO ACT_AI
	VALUES (1590,
	1595,
	1596,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1592,
	0,
	0,
	17,
	5,
	8,
	0,
	0,
	0,
	0,
	106,
	1561);
INSERT INTO V_IRF
	VALUES (1592,
	1569);
INSERT INTO V_VAL
	VALUES (1597,
	1,
	0,
	18,
	3,
	13,
	0,
	0,
	0,
	0,
	106,
	1561);
INSERT INTO V_IRF
	VALUES (1597,
	1588);
INSERT INTO V_VAL
	VALUES (1596,
	1,
	0,
	18,
	15,
	23,
	0,
	0,
	0,
	0,
	30,
	1561);
INSERT INTO V_AVL
	VALUES (1596,
	1597,
	250,
	423);
INSERT INTO V_VAL
	VALUES (1598,
	0,
	0,
	18,
	27,
	38,
	0,
	0,
	0,
	0,
	106,
	1561);
INSERT INTO V_IRF
	VALUES (1598,
	1591);
INSERT INTO V_VAL
	VALUES (1595,
	0,
	0,
	18,
	40,
	43,
	0,
	0,
	0,
	0,
	30,
	1561);
INSERT INTO V_AVL
	VALUES (1595,
	1598,
	118,
	422);
INSERT INTO V_VAR
	VALUES (1588,
	1561,
	'achievement',
	1,
	106);
INSERT INTO V_INT
	VALUES (1588,
	0,
	250);
INSERT INTO V_VAR
	VALUES (1591,
	1561,
	'workoutTimer',
	1,
	106);
INSERT INTO V_INT
	VALUES (1591,
	0,
	118);
INSERT INTO ACT_BLK
	VALUES (1564,
	1,
	0,
	0,
	'',
	'',
	'',
	22,
	3,
	21,
	43,
	0,
	0,
	21,
	55,
	21,
	59,
	0,
	0,
	0,
	1554,
	0);
INSERT INTO ACT_SMT
	VALUES (1599,
	1564,
	1600,
	21,
	3,
	'Goal::Executing line: 21');
INSERT INTO ACT_SEL
	VALUES (1599,
	1601,
	1,
	'one',
	1602);
INSERT INTO ACT_SR
	VALUES (1599);
INSERT INTO ACT_LNK
	VALUES (1603,
	'''has open''',
	1599,
	255,
	0,
	2,
	250,
	21,
	43,
	21,
	55,
	21,
	59);
INSERT INTO ACT_SMT
	VALUES (1600,
	1564,
	0,
	22,
	3,
	'Goal::Executing line: 22');
INSERT INTO ACT_TFM
	VALUES (1600,
	401,
	1601,
	22,
	15,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1602,
	0,
	0,
	21,
	37,
	40,
	0,
	0,
	0,
	0,
	106,
	1564);
INSERT INTO V_IRF
	VALUES (1602,
	1569);
INSERT INTO V_VAR
	VALUES (1601,
	1564,
	'achievement',
	1,
	106);
INSERT INTO V_INT
	VALUES (1601,
	0,
	250);
INSERT INTO SM_STATE
	VALUES (1604,
	1551,
	0,
	'Completed',
	2,
	0);
INSERT INTO SM_EIGN
	VALUES (1604,
	1520,
	1551,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1604,
	1520,
	1551,
	0);
INSERT INTO SM_EIGN
	VALUES (1604,
	1172,
	1551,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1604,
	1172,
	1551,
	0);
INSERT INTO SM_CH
	VALUES (1604,
	1196,
	1551,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1604,
	1196,
	1551,
	0);
INSERT INTO SM_MOAH
	VALUES (1605,
	1551,
	1604);
INSERT INTO SM_AH
	VALUES (1605,
	1551);
INSERT INTO SM_ACT
	VALUES (1605,
	1551,
	1,
	'// Stop executing this goal and begin executing the next one, if there is one.

// Stop the goal-evaluation timer, ignoring the return code which indicates 
//   whether a timer event was in flight when the timer was cancelled.
cancelSucceeded = TIM::timer_cancel( timer_inst_ref: self.evaluationTimer );

// If this goal has an open achievement record, close it.
select one openAchievement related by self->Achievement[R14.''has open''];
if ( not empty openAchievement )
  openAchievement.close();
end if;

// Add this goal to the collection of those that have already executed.
select one session related by self->WorkoutSession[R11.''is currently executing within''];
relate self to session across R13.''was executed within'';

// Remove this goal from the collection of currently executing ones.
unrelate self from session across R11.''is currently executing within'';

// Find the next goal specification in the sequence and start executing it, if it exists.
select one currentGoalSpec related by self->GoalSpec[R9.''specified by''];

select any nextGoalSpec related by session->GoalSpec[R10.''includes'']
  where ( selected.sequenceNumber == (currentGoalSpec.sequenceNumber + 1) );
  
if ( not empty nextGoalSpec )
  Goal::goalcreate( sequenceNumber: nextGoalSpec.sequenceNumber );
end if;
',
	'');
INSERT INTO ACT_SAB
	VALUES (1606,
	1551,
	1605);
INSERT INTO ACT_ACT
	VALUES (1606,
	'state',
	0,
	1607,
	0,
	0,
	'Goal::Completed',
	0);
INSERT INTO ACT_BLK
	VALUES (1607,
	1,
	0,
	1,
	'',
	'',
	'',
	26,
	1,
	23,
	45,
	0,
	0,
	23,
	54,
	23,
	58,
	0,
	0,
	0,
	1606,
	0);
INSERT INTO ACT_SMT
	VALUES (1608,
	1607,
	1609,
	5,
	1,
	'Goal::Completed line: 5');
INSERT INTO ACT_AI
	VALUES (1608,
	1610,
	1611,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1609,
	1607,
	1612,
	8,
	1,
	'Goal::Completed line: 8');
INSERT INTO ACT_SEL
	VALUES (1609,
	1613,
	1,
	'one',
	1614);
INSERT INTO ACT_SR
	VALUES (1609);
INSERT INTO ACT_LNK
	VALUES (1615,
	'''has open''',
	1609,
	255,
	0,
	2,
	250,
	8,
	45,
	8,
	57,
	8,
	61);
INSERT INTO ACT_SMT
	VALUES (1612,
	1607,
	1616,
	9,
	1,
	'Goal::Completed line: 9');
INSERT INTO ACT_IF
	VALUES (1612,
	1617,
	1618,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1616,
	1607,
	1619,
	14,
	1,
	'Goal::Completed line: 14');
INSERT INTO ACT_SEL
	VALUES (1616,
	1620,
	1,
	'one',
	1621);
INSERT INTO ACT_SR
	VALUES (1616);
INSERT INTO ACT_LNK
	VALUES (1622,
	'''is currently executing within''',
	1616,
	245,
	0,
	2,
	102,
	14,
	37,
	14,
	52,
	14,
	56);
INSERT INTO ACT_SMT
	VALUES (1619,
	1607,
	1623,
	15,
	1,
	'Goal::Completed line: 15');
INSERT INTO ACT_REL
	VALUES (1619,
	1624,
	1620,
	'''was executed within''',
	252,
	15,
	31,
	15,
	35);
INSERT INTO ACT_SMT
	VALUES (1623,
	1607,
	1625,
	18,
	1,
	'Goal::Completed line: 18');
INSERT INTO ACT_UNR
	VALUES (1623,
	1624,
	1620,
	'''is currently executing within''',
	245,
	18,
	35,
	18,
	39);
INSERT INTO ACT_SMT
	VALUES (1625,
	1607,
	1626,
	21,
	1,
	'Goal::Completed line: 21');
INSERT INTO ACT_SEL
	VALUES (1625,
	1627,
	1,
	'one',
	1628);
INSERT INTO ACT_SR
	VALUES (1625);
INSERT INTO ACT_LNK
	VALUES (1629,
	'''specified by''',
	1625,
	239,
	0,
	2,
	176,
	21,
	45,
	21,
	54,
	21,
	57);
INSERT INTO ACT_SMT
	VALUES (1626,
	1607,
	1630,
	23,
	1,
	'Goal::Completed line: 23');
INSERT INTO ACT_SEL
	VALUES (1626,
	1631,
	1,
	'any',
	1632);
INSERT INTO ACT_SRW
	VALUES (1626,
	1633);
INSERT INTO ACT_LNK
	VALUES (1634,
	'''includes''',
	1626,
	195,
	0,
	3,
	176,
	23,
	45,
	23,
	54,
	23,
	58);
INSERT INTO ACT_SMT
	VALUES (1630,
	1607,
	0,
	26,
	1,
	'Goal::Completed line: 26');
INSERT INTO ACT_IF
	VALUES (1630,
	1635,
	1636,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1611,
	1,
	1,
	5,
	1,
	15,
	0,
	0,
	0,
	0,
	108,
	1607);
INSERT INTO V_TVL
	VALUES (1611,
	1637);
INSERT INTO V_VAL
	VALUES (1610,
	0,
	0,
	5,
	24,
	-1,
	5,
	38,
	0,
	0,
	108,
	1607);
INSERT INTO V_BRV
	VALUES (1610,
	357,
	1,
	5,
	19);
INSERT INTO V_VAL
	VALUES (1638,
	0,
	0,
	5,
	54,
	57,
	0,
	0,
	0,
	0,
	106,
	1607);
INSERT INTO V_IRF
	VALUES (1638,
	1624);
INSERT INTO V_VAL
	VALUES (1639,
	0,
	0,
	5,
	59,
	73,
	0,
	0,
	0,
	0,
	332,
	1607);
INSERT INTO V_AVL
	VALUES (1639,
	1638,
	241,
	1321);
INSERT INTO V_PAR
	VALUES (1639,
	0,
	1610,
	'timer_inst_ref',
	0,
	5,
	38);
INSERT INTO V_VAL
	VALUES (1614,
	0,
	0,
	8,
	39,
	42,
	0,
	0,
	0,
	0,
	106,
	1607);
INSERT INTO V_IRF
	VALUES (1614,
	1624);
INSERT INTO V_VAL
	VALUES (1640,
	0,
	0,
	9,
	16,
	30,
	0,
	0,
	0,
	0,
	106,
	1607);
INSERT INTO V_IRF
	VALUES (1640,
	1613);
INSERT INTO V_VAL
	VALUES (1641,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1607);
INSERT INTO V_UNY
	VALUES (1641,
	1640,
	'empty');
INSERT INTO V_VAL
	VALUES (1618,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1607);
INSERT INTO V_UNY
	VALUES (1618,
	1641,
	'not');
INSERT INTO V_VAL
	VALUES (1621,
	0,
	0,
	14,
	31,
	34,
	0,
	0,
	0,
	0,
	106,
	1607);
INSERT INTO V_IRF
	VALUES (1621,
	1624);
INSERT INTO V_VAL
	VALUES (1628,
	0,
	0,
	21,
	39,
	42,
	0,
	0,
	0,
	0,
	106,
	1607);
INSERT INTO V_IRF
	VALUES (1628,
	1624);
INSERT INTO V_VAL
	VALUES (1632,
	0,
	0,
	23,
	36,
	42,
	0,
	0,
	0,
	0,
	106,
	1607);
INSERT INTO V_IRF
	VALUES (1632,
	1620);
INSERT INTO V_VAL
	VALUES (1642,
	0,
	0,
	24,
	11,
	-1,
	0,
	0,
	0,
	0,
	106,
	1607);
INSERT INTO V_SLR
	VALUES (1642,
	0,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1643,
	0,
	0,
	24,
	20,
	33,
	0,
	0,
	0,
	0,
	30,
	1607);
INSERT INTO V_AVL
	VALUES (1643,
	1642,
	176,
	197);
INSERT INTO V_VAL
	VALUES (1633,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1607);
INSERT INTO V_BIN
	VALUES (1633,
	1644,
	1643,
	'==');
INSERT INTO V_VAL
	VALUES (1645,
	0,
	0,
	24,
	39,
	53,
	0,
	0,
	0,
	0,
	106,
	1607);
INSERT INTO V_IRF
	VALUES (1645,
	1627);
INSERT INTO V_VAL
	VALUES (1646,
	0,
	0,
	24,
	55,
	68,
	0,
	0,
	0,
	0,
	30,
	1607);
INSERT INTO V_AVL
	VALUES (1646,
	1645,
	176,
	197);
INSERT INTO V_VAL
	VALUES (1644,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	30,
	1607);
INSERT INTO V_BIN
	VALUES (1644,
	1647,
	1646,
	'+');
INSERT INTO V_VAL
	VALUES (1647,
	0,
	0,
	24,
	72,
	72,
	0,
	0,
	0,
	0,
	30,
	1607);
INSERT INTO V_LIN
	VALUES (1647,
	'1');
INSERT INTO V_VAL
	VALUES (1648,
	0,
	0,
	26,
	16,
	27,
	0,
	0,
	0,
	0,
	106,
	1607);
INSERT INTO V_IRF
	VALUES (1648,
	1631);
INSERT INTO V_VAL
	VALUES (1649,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1607);
INSERT INTO V_UNY
	VALUES (1649,
	1648,
	'empty');
INSERT INTO V_VAL
	VALUES (1636,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1607);
INSERT INTO V_UNY
	VALUES (1636,
	1649,
	'not');
INSERT INTO V_VAR
	VALUES (1637,
	1607,
	'cancelSucceeded',
	1,
	108);
INSERT INTO V_TRN
	VALUES (1637,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1624,
	1607,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (1624,
	0,
	241);
INSERT INTO V_VAR
	VALUES (1613,
	1607,
	'openAchievement',
	1,
	106);
INSERT INTO V_INT
	VALUES (1613,
	0,
	250);
INSERT INTO V_VAR
	VALUES (1620,
	1607,
	'session',
	1,
	106);
INSERT INTO V_INT
	VALUES (1620,
	0,
	102);
INSERT INTO V_VAR
	VALUES (1627,
	1607,
	'currentGoalSpec',
	1,
	106);
INSERT INTO V_INT
	VALUES (1627,
	0,
	176);
INSERT INTO V_VAR
	VALUES (1631,
	1607,
	'nextGoalSpec',
	1,
	106);
INSERT INTO V_INT
	VALUES (1631,
	0,
	176);
INSERT INTO ACT_BLK
	VALUES (1617,
	0,
	0,
	0,
	'',
	'',
	'',
	10,
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
	1606,
	0);
INSERT INTO ACT_SMT
	VALUES (1650,
	1617,
	0,
	10,
	3,
	'Goal::Completed line: 10');
INSERT INTO ACT_TFM
	VALUES (1650,
	401,
	1613,
	10,
	19,
	0,
	0);
INSERT INTO ACT_BLK
	VALUES (1635,
	0,
	0,
	0,
	'Goal',
	'',
	'',
	27,
	3,
	27,
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
	1606,
	0);
INSERT INTO ACT_SMT
	VALUES (1651,
	1635,
	0,
	27,
	3,
	'Goal::Completed line: 27');
INSERT INTO ACT_TFM
	VALUES (1651,
	1288,
	0,
	27,
	9,
	27,
	3);
INSERT INTO V_VAL
	VALUES (1652,
	0,
	0,
	27,
	37,
	48,
	0,
	0,
	0,
	0,
	106,
	1635);
INSERT INTO V_IRF
	VALUES (1652,
	1631);
INSERT INTO V_VAL
	VALUES (1653,
	0,
	0,
	27,
	50,
	63,
	0,
	0,
	0,
	0,
	30,
	1635);
INSERT INTO V_AVL
	VALUES (1653,
	1652,
	176,
	197);
INSERT INTO V_PAR
	VALUES (1653,
	1651,
	0,
	'sequenceNumber',
	0,
	27,
	21);
INSERT INTO SM_STATE
	VALUES (1654,
	1551,
	0,
	'Paused',
	3,
	0);
INSERT INTO SM_SEME
	VALUES (1654,
	1520,
	1551,
	0);
INSERT INTO SM_SEME
	VALUES (1654,
	1172,
	1551,
	0);
INSERT INTO SM_CH
	VALUES (1654,
	1196,
	1551,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1654,
	1196,
	1551,
	0);
INSERT INTO SM_MOAH
	VALUES (1655,
	1551,
	1654);
INSERT INTO SM_AH
	VALUES (1655,
	1551);
INSERT INTO SM_ACT
	VALUES (1655,
	1551,
	1,
	'// Deactivate evaluation timer, ignoring the return code because this 
//   state model ignores any latent timer events.
cancelSucceeded = TIM::timer_cancel( timer_inst_ref: self.evaluationTimer );',
	'');
INSERT INTO ACT_SAB
	VALUES (1656,
	1551,
	1655);
INSERT INTO ACT_ACT
	VALUES (1656,
	'state',
	0,
	1657,
	0,
	0,
	'Goal::Paused',
	0);
INSERT INTO ACT_BLK
	VALUES (1657,
	0,
	0,
	0,
	'TIM',
	'',
	'',
	3,
	1,
	3,
	19,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1656,
	0);
INSERT INTO ACT_SMT
	VALUES (1658,
	1657,
	0,
	3,
	1,
	'Goal::Paused line: 3');
INSERT INTO ACT_AI
	VALUES (1658,
	1659,
	1660,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1660,
	1,
	1,
	3,
	1,
	15,
	0,
	0,
	0,
	0,
	108,
	1657);
INSERT INTO V_TVL
	VALUES (1660,
	1661);
INSERT INTO V_VAL
	VALUES (1659,
	0,
	0,
	3,
	24,
	-1,
	3,
	38,
	0,
	0,
	108,
	1657);
INSERT INTO V_BRV
	VALUES (1659,
	357,
	1,
	3,
	19);
INSERT INTO V_VAL
	VALUES (1662,
	0,
	0,
	3,
	54,
	57,
	0,
	0,
	0,
	0,
	106,
	1657);
INSERT INTO V_IRF
	VALUES (1662,
	1663);
INSERT INTO V_VAL
	VALUES (1664,
	0,
	0,
	3,
	59,
	73,
	0,
	0,
	0,
	0,
	332,
	1657);
INSERT INTO V_AVL
	VALUES (1664,
	1662,
	241,
	1321);
INSERT INTO V_PAR
	VALUES (1664,
	0,
	1659,
	'timer_inst_ref',
	0,
	3,
	38);
INSERT INTO V_VAR
	VALUES (1661,
	1657,
	'cancelSucceeded',
	1,
	108);
INSERT INTO V_TRN
	VALUES (1661,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1663,
	1657,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (1663,
	0,
	241);
INSERT INTO SM_NSTXN
	VALUES (1665,
	1551,
	1552,
	1520,
	0);
INSERT INTO SM_TAH
	VALUES (1666,
	1551,
	1665);
INSERT INTO SM_AH
	VALUES (1666,
	1551);
INSERT INTO SM_ACT
	VALUES (1666,
	1551,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1667,
	1551,
	1666);
INSERT INTO ACT_ACT
	VALUES (1667,
	'transition',
	0,
	1668,
	0,
	0,
	'Goal1: Completed',
	0);
INSERT INTO ACT_BLK
	VALUES (1668,
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
	1667,
	0);
INSERT INTO SM_TXN
	VALUES (1665,
	1551,
	1604,
	0);
INSERT INTO SM_NSTXN
	VALUES (1669,
	1551,
	1552,
	1172,
	0);
INSERT INTO SM_TAH
	VALUES (1670,
	1551,
	1669);
INSERT INTO SM_AH
	VALUES (1670,
	1551);
INSERT INTO SM_ACT
	VALUES (1670,
	1551,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1671,
	1551,
	1670);
INSERT INTO ACT_ACT
	VALUES (1671,
	'transition',
	0,
	1672,
	0,
	0,
	'Goal2: Evaluate',
	0);
INSERT INTO ACT_BLK
	VALUES (1672,
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
	1671,
	0);
INSERT INTO SM_TXN
	VALUES (1669,
	1551,
	1552,
	0);
INSERT INTO SM_NSTXN
	VALUES (1673,
	1551,
	1552,
	1196,
	0);
INSERT INTO SM_TAH
	VALUES (1674,
	1551,
	1673);
INSERT INTO SM_AH
	VALUES (1674,
	1551);
INSERT INTO SM_ACT
	VALUES (1674,
	1551,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1675,
	1551,
	1674);
INSERT INTO ACT_ACT
	VALUES (1675,
	'transition',
	0,
	1676,
	0,
	0,
	'Goal3: Pause',
	0);
INSERT INTO ACT_BLK
	VALUES (1676,
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
	1675,
	0);
INSERT INTO SM_TXN
	VALUES (1673,
	1551,
	1654,
	0);
INSERT INTO SM_NSTXN
	VALUES (1677,
	1551,
	1654,
	1172,
	0);
INSERT INTO SM_TAH
	VALUES (1678,
	1551,
	1677);
INSERT INTO SM_AH
	VALUES (1678,
	1551);
INSERT INTO SM_ACT
	VALUES (1678,
	1551,
	1,
	'// Start a timer that periodically causes evaluation of goal achievement.
create event instance evaluateEvent of Goal2:Evaluate to self;
self.evaluationTimer = TIM::timer_start_recurring( event_inst: evaluateEvent, microseconds: evaluationPeriod );',
	'');
INSERT INTO ACT_TAB
	VALUES (1679,
	1551,
	1678);
INSERT INTO ACT_ACT
	VALUES (1679,
	'transition',
	0,
	1680,
	0,
	0,
	'Goal2: Evaluate',
	0);
INSERT INTO ACT_BLK
	VALUES (1680,
	0,
	0,
	0,
	'TIM',
	'',
	'',
	3,
	1,
	3,
	24,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1679,
	0);
INSERT INTO ACT_SMT
	VALUES (1681,
	1680,
	1682,
	2,
	1,
	'Goal2: Evaluate line: 2');
INSERT INTO E_ESS
	VALUES (1681,
	1,
	0,
	2,
	40,
	2,
	46,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES (1681,
	1,
	1683);
INSERT INTO E_CSME
	VALUES (1681,
	1172);
INSERT INTO E_CEI
	VALUES (1681,
	1684);
INSERT INTO ACT_SMT
	VALUES (1682,
	1680,
	0,
	3,
	1,
	'Goal2: Evaluate line: 3');
INSERT INTO ACT_AI
	VALUES (1682,
	1685,
	1686,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1687,
	1,
	0,
	3,
	1,
	4,
	0,
	0,
	0,
	0,
	106,
	1680);
INSERT INTO V_IRF
	VALUES (1687,
	1684);
INSERT INTO V_VAL
	VALUES (1686,
	1,
	0,
	3,
	6,
	20,
	0,
	0,
	0,
	0,
	332,
	1680);
INSERT INTO V_AVL
	VALUES (1686,
	1687,
	241,
	1321);
INSERT INTO V_VAL
	VALUES (1685,
	0,
	0,
	3,
	29,
	-1,
	3,
	52,
	3,
	79,
	332,
	1680);
INSERT INTO V_BRV
	VALUES (1685,
	338,
	1,
	3,
	24);
INSERT INTO V_VAL
	VALUES (1688,
	0,
	0,
	3,
	64,
	76,
	0,
	0,
	0,
	0,
	335,
	1680);
INSERT INTO V_TVL
	VALUES (1688,
	1683);
INSERT INTO V_PAR
	VALUES (1688,
	0,
	1685,
	'event_inst',
	1689,
	3,
	52);
INSERT INTO V_VAL
	VALUES (1689,
	0,
	0,
	3,
	93,
	108,
	0,
	0,
	0,
	0,
	30,
	1680);
INSERT INTO V_SCV
	VALUES (1689,
	1324,
	30);
INSERT INTO V_PAR
	VALUES (1689,
	0,
	1685,
	'microseconds',
	0,
	3,
	79);
INSERT INTO V_VAR
	VALUES (1683,
	1680,
	'evaluateEvent',
	1,
	335);
INSERT INTO V_TRN
	VALUES (1683,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1684,
	1680,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (1684,
	0,
	241);
INSERT INTO SM_TXN
	VALUES (1677,
	1551,
	1552,
	0);
INSERT INTO SM_NSTXN
	VALUES (1690,
	1551,
	1654,
	1520,
	0);
INSERT INTO SM_TAH
	VALUES (1691,
	1551,
	1690);
INSERT INTO SM_AH
	VALUES (1691,
	1551);
INSERT INTO SM_ACT
	VALUES (1691,
	1551,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1692,
	1551,
	1691);
INSERT INTO ACT_ACT
	VALUES (1692,
	'transition',
	0,
	1693,
	0,
	0,
	'Goal1: Completed',
	0);
INSERT INTO ACT_BLK
	VALUES (1693,
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
	1692,
	0);
INSERT INTO SM_TXN
	VALUES (1690,
	1551,
	1604,
	0);
INSERT INTO PE_PE
	VALUES (176,
	1,
	211,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (176,
	'GoalSpec',
	8,
	'GoalSpec',
	'Each instance specifies one particular workout goal.  The actual execution of the goal
along with evaluation of whether it is currently being achieved is handled by another
class, not this one.

The criteria for the goal are merely numerical figures for comparison against the 
measured quantity.  Accordingly, the terms may create confusion with certain goal
types such as pace.  Since pace is the inverse of speed, a lower number represents
a faster speed.  Even so, when specifying a pace-related goal the value for 
minimum should be the lowest number (fastest pace) and the value for maximum should
be the higher number (slower pace).',
	0);
INSERT INTO O_NBATTR
	VALUES (199,
	176);
INSERT INTO O_BATTR
	VALUES (199,
	176);
INSERT INTO O_ATTR
	VALUES (199,
	176,
	197,
	'minimum',
	'The minimum value for the quantity associated with the goal.
For example, a minimum heart rate to be maintained.
The units (e.g., beats per minute or minutes per km) for this
attribute are determined by another attribute indicating the 
type of criteria for this goal.',
	'',
	'minimum',
	0,
	10,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (201,
	176);
INSERT INTO O_BATTR
	VALUES (201,
	176);
INSERT INTO O_ATTR
	VALUES (201,
	176,
	199,
	'maximum',
	'The maximum value for the quantity associated with the goal.
For example, a maximum pace to be maintained.
The units (e.g., beats per minute or minutes per km) for this
attribute are determined by another attribute indicating the 
type of criteria for this goal.',
	'',
	'maximum',
	0,
	10,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (203,
	176);
INSERT INTO O_BATTR
	VALUES (203,
	176);
INSERT INTO O_ATTR
	VALUES (203,
	176,
	201,
	'span',
	'The span of the goal.  For example, a time-based goal specifies a span
as a duration or length of time, while a distance-based goal uses specifies
a distance.  The units for this attribute (e.g., seconds or km) are specified 
by another attribute indicating the type of span.
',
	'',
	'span',
	0,
	10,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (205,
	176);
INSERT INTO O_BATTR
	VALUES (205,
	176);
INSERT INTO O_ATTR
	VALUES (205,
	176,
	203,
	'criteriaType',
	'See data type description.',
	'',
	'criteriaType',
	0,
	37,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (207,
	176);
INSERT INTO O_BATTR
	VALUES (207,
	176);
INSERT INTO O_ATTR
	VALUES (207,
	176,
	205,
	'spanType',
	'See data type description.',
	'',
	'spanType',
	0,
	39,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (197,
	176);
INSERT INTO O_BATTR
	VALUES (197,
	176);
INSERT INTO O_ATTR
	VALUES (197,
	176,
	0,
	'sequenceNumber',
	'Workout goals are sequenced according to a number specified by the user when the goal
is specified.  This attribute represents that user-specified number. ',
	'',
	'sequenceNumber',
	0,
	30,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	176);
INSERT INTO O_OIDA
	VALUES (197,
	176,
	0,
	'sequenceNumber');
INSERT INTO O_ID
	VALUES (1,
	176);
INSERT INTO O_ID
	VALUES (2,
	176);
INSERT INTO PE_PE
	VALUES (1694,
	1,
	2,
	0,
	22);
INSERT INTO C_SF
	VALUES (1694,
	57,
	1695,
	'',
	'GPSWatch::TrackingLocation::TrackingLocation -o)- Tracking::Location::TrackingLocation');
INSERT INTO PE_PE
	VALUES (1696,
	1,
	2,
	0,
	22);
INSERT INTO C_SF
	VALUES (1696,
	73,
	1697,
	'',
	'GPSWatch::TrackingUI::TrackingUI -o)- Tracking::UI::TrackingUI');
INSERT INTO PE_PE
	VALUES (1698,
	1,
	2,
	0,
	22);
INSERT INTO C_SF
	VALUES (1698,
	87,
	1699,
	'',
	'GPSWatch::TrackingHeartRateMonitor::TrackingHeartRateMonitor -o)- Tracking::HeartRateMonitor::TrackingHeartRateMonitor');
INSERT INTO PE_PE
	VALUES (1700,
	1,
	2,
	0,
	22);
INSERT INTO C_SF
	VALUES (1700,
	1701,
	95,
	'',
	'Tracking::Tracking::Tracking -o)- GPSWatch::Tracking::Tracking');
INSERT INTO PE_PE
	VALUES (37,
	1,
	2,
	0,
	3);
INSERT INTO S_DT
	VALUES (37,
	0,
	'GoalCriteria',
	'The criteria type for a particular workout goal.  ',
	'');
INSERT INTO S_EDT
	VALUES (37);
INSERT INTO S_ENUM
	VALUES (383,
	'HeartRate',
	'A heart-rate criteria is specified as a range of heart rates between
minimum and maximum values, in beats per minute.',
	37,
	0);
INSERT INTO S_ENUM
	VALUES (375,
	'Pace',
	'A pace criteria is specified as a range of paces between
miniumum and maximum values specified in minutes per kilometer.',
	37,
	383);
INSERT INTO PE_PE
	VALUES (455,
	1,
	2,
	0,
	3);
INSERT INTO S_DT
	VALUES (455,
	0,
	'GoalDisposition',
	'Disposition of a currently executing goal.',
	'');
INSERT INTO S_EDT
	VALUES (455);
INSERT INTO S_ENUM
	VALUES (1413,
	'Achieving',
	'The goal is currently being achieved.',
	455,
	0);
INSERT INTO S_ENUM
	VALUES (458,
	'Increase',
	'The value associated with the goal is presently below the minimum 
specified in the criteria for the goal, so the user must increase
that value to achieve the goal.',
	455,
	1413);
INSERT INTO S_ENUM
	VALUES (462,
	'Decrease',
	'The value associated with the goal is presently above the maximum 
specified in the criteria for the goal, so the user must decrease
that value to achieve the goal.',
	455,
	458);
INSERT INTO PE_PE
	VALUES (39,
	1,
	2,
	0,
	3);
INSERT INTO S_DT
	VALUES (39,
	0,
	'GoalSpan',
	'',
	'');
INSERT INTO S_EDT
	VALUES (39);
INSERT INTO S_ENUM
	VALUES (377,
	'Distance',
	'A distance-based span is specified in meters.',
	39,
	0);
INSERT INTO S_ENUM
	VALUES (385,
	'Time',
	'A time-based span is specified in seconds.',
	39,
	377);
INSERT INTO PE_PE
	VALUES (1702,
	1,
	2,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (1702,
	'GoalAchievement',
	'evaluationPeriod is the period, expressed in microseconds, at which goal achievement is evaluated.');
INSERT INTO CNST_SYC
	VALUES (1324,
	'evaluationPeriod',
	'',
	30,
	1702,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (1324,
	30);
INSERT INTO CNST_LSC
	VALUES (1324,
	30,
	'3000000');
INSERT INTO PE_PE
	VALUES (1703,
	1,
	2,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (1703,
	'GoalSpec',
	'GoalSpecOrigin indicates the sequence number of the first goal.');
INSERT INTO CNST_SYC
	VALUES (1547,
	'GoalSpecOrigin',
	'',
	30,
	1703,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (1547,
	30);
INSERT INTO CNST_LSC
	VALUES (1547,
	30,
	'1');
INSERT INTO PE_PE
	VALUES (1704,
	1,
	2,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (1704,
	'WorkoutTimer',
	'timerPeriod specifies, in seconds, the period for the workout timer.');
INSERT INTO CNST_SYC
	VALUES (1167,
	'timerPeriod',
	'',
	30,
	1704,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (1167,
	30);
INSERT INTO CNST_LSC
	VALUES (1167,
	30,
	'1');
INSERT INTO PE_PE
	VALUES (6,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (6,
	0,
	'void',
	'',
	'');
INSERT INTO S_CDT
	VALUES (6,
	0);
INSERT INTO PE_PE
	VALUES (108,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (108,
	0,
	'boolean',
	'',
	'');
INSERT INTO S_CDT
	VALUES (108,
	1);
INSERT INTO PE_PE
	VALUES (30,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (30,
	0,
	'integer',
	'',
	'');
INSERT INTO S_CDT
	VALUES (30,
	2);
INSERT INTO PE_PE
	VALUES (10,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (10,
	0,
	'real',
	'',
	'');
INSERT INTO S_CDT
	VALUES (10,
	3);
INSERT INTO PE_PE
	VALUES (130,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (130,
	0,
	'string',
	'',
	'');
INSERT INTO S_CDT
	VALUES (130,
	4);
INSERT INTO PE_PE
	VALUES (1549,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (1549,
	0,
	'unique_id',
	'',
	'');
INSERT INTO S_CDT
	VALUES (1549,
	5);
INSERT INTO PE_PE
	VALUES (476,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (476,
	0,
	'state<State_Model>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (476,
	6);
INSERT INTO PE_PE
	VALUES (1705,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (1705,
	0,
	'same_as<Base_Attribute>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (1705,
	7);
INSERT INTO PE_PE
	VALUES (106,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (106,
	0,
	'inst_ref<Object>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (106,
	8);
INSERT INTO PE_PE
	VALUES (590,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (590,
	0,
	'inst_ref_set<Object>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (590,
	9);
INSERT INTO PE_PE
	VALUES (335,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (335,
	0,
	'inst<Event>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (335,
	10);
INSERT INTO PE_PE
	VALUES (1706,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (1706,
	0,
	'inst<Mapping>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (1706,
	11);
INSERT INTO PE_PE
	VALUES (1707,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (1707,
	0,
	'inst_ref<Mapping>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (1707,
	12);
INSERT INTO PE_PE
	VALUES (1708,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (1708,
	0,
	'component_ref',
	'',
	'');
INSERT INTO S_CDT
	VALUES (1708,
	13);
INSERT INTO PE_PE
	VALUES (272,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (272,
	0,
	'date',
	'',
	'');
INSERT INTO S_UDT
	VALUES (272,
	1706,
	1);
INSERT INTO PE_PE
	VALUES (332,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (332,
	0,
	'inst_ref<Timer>',
	'',
	'');
INSERT INTO S_UDT
	VALUES (332,
	1707,
	3);
INSERT INTO PE_PE
	VALUES (278,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (278,
	0,
	'timestamp',
	'',
	'');
INSERT INTO S_UDT
	VALUES (278,
	1706,
	2);
-- root-types-contained: SystemModel_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES (1709,
	'UI',
	1);
INSERT INTO EP_PKG
	VALUES (1710,
	1709,
	1709,
	'UI',
	'',
	0);
INSERT INTO PE_PE
	VALUES (1711,
	1,
	1710,
	0,
	2);
INSERT INTO C_C
	VALUES (1711,
	0,
	0,
	'UI',
	'Simulates the user interface and has the ability to connect an external GUI
representing the physical watch.

Uses the BridgePoint Java API to connect to an animated version of the watch
while the models are executing in Verifier.

There is also hand-written C code that implments parts of this component to 
allow generated code to connect to the exact same animated watch.',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (1712,
	1711,
	'UI',
	0,
	0);
INSERT INTO C_IR
	VALUES (1713,
	1714,
	0,
	1712);
INSERT INTO C_P
	VALUES (1713,
	'UI',
	'Unnamed Interface',
	'',
	'UI::UI::UI');
INSERT INTO SPR_PEP
	VALUES (1715,
	1716,
	1713);
INSERT INTO SPR_PO
	VALUES (1715,
	'setTime',
	'',
	'::setTime(time:param.time);',
	1);
INSERT INTO ACT_POB
	VALUES (1717,
	1715);
INSERT INTO ACT_ACT
	VALUES (1717,
	'interface operation',
	0,
	1718,
	0,
	0,
	'UI::UI::setTime',
	0);
INSERT INTO ACT_BLK
	VALUES (1718,
	0,
	0,
	0,
	'',
	'',
	'',
	1,
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
	0,
	0,
	1717,
	0);
INSERT INTO ACT_SMT
	VALUES (1719,
	1718,
	0,
	1,
	1,
	'UI::UI::setTime line: 1');
INSERT INTO ACT_FNC
	VALUES (1719,
	1720,
	1,
	3);
INSERT INTO V_VAL
	VALUES (1721,
	0,
	0,
	1,
	22,
	25,
	0,
	0,
	0,
	0,
	30,
	1718);
INSERT INTO V_PVL
	VALUES (1721,
	0,
	0,
	0,
	1722);
INSERT INTO V_PAR
	VALUES (1721,
	1719,
	0,
	'time',
	0,
	1,
	11);
INSERT INTO SPR_PEP
	VALUES (1723,
	1724,
	1713);
INSERT INTO SPR_PO
	VALUES (1723,
	'setData',
	'',
	'::setData( value:param.value, unit:param.unit );
',
	1);
INSERT INTO ACT_POB
	VALUES (1725,
	1723);
INSERT INTO ACT_ACT
	VALUES (1725,
	'interface operation',
	0,
	1726,
	0,
	0,
	'UI::UI::setData',
	0);
INSERT INTO ACT_BLK
	VALUES (1726,
	0,
	0,
	0,
	'',
	'',
	'',
	1,
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
	0,
	0,
	1725,
	0);
INSERT INTO ACT_SMT
	VALUES (1727,
	1726,
	0,
	1,
	1,
	'UI::UI::setData line: 1');
INSERT INTO ACT_FNC
	VALUES (1727,
	1728,
	1,
	3);
INSERT INTO V_VAL
	VALUES (1729,
	0,
	0,
	1,
	24,
	28,
	0,
	0,
	0,
	0,
	10,
	1726);
INSERT INTO V_PVL
	VALUES (1729,
	0,
	0,
	0,
	1730);
INSERT INTO V_PAR
	VALUES (1729,
	1727,
	0,
	'value',
	1731,
	1,
	12);
INSERT INTO V_VAL
	VALUES (1731,
	0,
	0,
	1,
	42,
	45,
	0,
	0,
	0,
	0,
	24,
	1726);
INSERT INTO V_PVL
	VALUES (1731,
	0,
	0,
	0,
	1732);
INSERT INTO V_PAR
	VALUES (1731,
	1727,
	0,
	'unit',
	0,
	1,
	31);
INSERT INTO SPR_PEP
	VALUES (1733,
	1734,
	1713);
INSERT INTO SPR_PO
	VALUES (1733,
	'startTest',
	'',
	'generate TestCase2:tcstart(iterations: 2) to TestCase creator;',
	1);
INSERT INTO ACT_POB
	VALUES (1735,
	1733);
INSERT INTO ACT_ACT
	VALUES (1735,
	'interface operation',
	0,
	1736,
	0,
	0,
	'UI::UI::startTest',
	0);
INSERT INTO ACT_BLK
	VALUES (1736,
	0,
	0,
	0,
	'',
	'iterations',
	'iterations',
	1,
	1,
	1,
	46,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1735,
	0);
INSERT INTO ACT_SMT
	VALUES (1737,
	1736,
	0,
	1,
	1,
	'UI::UI::startTest line: 1');
INSERT INTO E_ESS
	VALUES (1737,
	1,
	0,
	1,
	10,
	1,
	20,
	1,
	46,
	1,
	28,
	0,
	0);
INSERT INTO V_PAR
	VALUES (1738,
	1737,
	0,
	'iterations',
	0,
	1,
	28);
INSERT INTO E_GES
	VALUES (1737);
INSERT INTO E_GSME
	VALUES (1737,
	1739);
INSERT INTO E_GEC
	VALUES (1737);
INSERT INTO V_VAL
	VALUES (1738,
	0,
	0,
	1,
	40,
	40,
	0,
	0,
	0,
	0,
	30,
	1736);
INSERT INTO V_LIN
	VALUES (1738,
	'2');
INSERT INTO SPR_PEP
	VALUES (1740,
	1741,
	1713);
INSERT INTO SPR_PO
	VALUES (1740,
	'setIndicator',
	'',
	'::setIndicator( indicator:param.indicator );
',
	1);
INSERT INTO ACT_POB
	VALUES (1742,
	1740);
INSERT INTO ACT_ACT
	VALUES (1742,
	'interface operation',
	0,
	1743,
	0,
	0,
	'UI::UI::setIndicator',
	0);
INSERT INTO ACT_BLK
	VALUES (1743,
	0,
	0,
	0,
	'',
	'',
	'',
	1,
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
	0,
	0,
	1742,
	0);
INSERT INTO ACT_SMT
	VALUES (1744,
	1743,
	0,
	1,
	1,
	'UI::UI::setIndicator line: 1');
INSERT INTO ACT_FNC
	VALUES (1744,
	1745,
	1,
	3);
INSERT INTO V_VAL
	VALUES (1746,
	0,
	0,
	1,
	33,
	41,
	0,
	0,
	0,
	0,
	27,
	1743);
INSERT INTO V_PVL
	VALUES (1746,
	0,
	0,
	0,
	1747);
INSERT INTO V_PAR
	VALUES (1746,
	1744,
	0,
	'indicator',
	0,
	1,
	17);
INSERT INTO SPR_PEP
	VALUES (1748,
	1749,
	1713);
INSERT INTO SPR_PO
	VALUES (1748,
	'newGoalSpec',
	'',
	'::newGoalSpec( sequenceNumber:param.sequenceNumber, minimum:param.minimum, maximum:param.maximum, span:param.span, criteriaType:param.criteriaType, spanType:param.spanType );',
	1);
INSERT INTO ACT_POB
	VALUES (1750,
	1748);
INSERT INTO ACT_ACT
	VALUES (1750,
	'interface operation',
	0,
	1751,
	0,
	0,
	'UI::UI::newGoalSpec',
	0);
INSERT INTO ACT_BLK
	VALUES (1751,
	0,
	0,
	0,
	'',
	'',
	'',
	1,
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
	0,
	0,
	1750,
	0);
INSERT INTO ACT_SMT
	VALUES (1752,
	1751,
	0,
	1,
	1,
	'UI::UI::newGoalSpec line: 1');
INSERT INTO ACT_FNC
	VALUES (1752,
	1753,
	1,
	3);
INSERT INTO V_VAL
	VALUES (1754,
	0,
	0,
	1,
	37,
	50,
	0,
	0,
	0,
	0,
	30,
	1751);
INSERT INTO V_PVL
	VALUES (1754,
	0,
	0,
	0,
	1755);
INSERT INTO V_PAR
	VALUES (1754,
	1752,
	0,
	'sequenceNumber',
	1756,
	1,
	16);
INSERT INTO V_VAL
	VALUES (1756,
	0,
	0,
	1,
	67,
	73,
	0,
	0,
	0,
	0,
	10,
	1751);
INSERT INTO V_PVL
	VALUES (1756,
	0,
	0,
	0,
	1757);
INSERT INTO V_PAR
	VALUES (1756,
	1752,
	0,
	'minimum',
	1758,
	1,
	53);
INSERT INTO V_VAL
	VALUES (1758,
	0,
	0,
	1,
	90,
	96,
	0,
	0,
	0,
	0,
	10,
	1751);
INSERT INTO V_PVL
	VALUES (1758,
	0,
	0,
	0,
	1759);
INSERT INTO V_PAR
	VALUES (1758,
	1752,
	0,
	'maximum',
	1760,
	1,
	76);
INSERT INTO V_VAL
	VALUES (1760,
	0,
	0,
	1,
	110,
	113,
	0,
	0,
	0,
	0,
	10,
	1751);
INSERT INTO V_PVL
	VALUES (1760,
	0,
	0,
	0,
	1761);
INSERT INTO V_PAR
	VALUES (1760,
	1752,
	0,
	'span',
	1762,
	1,
	99);
INSERT INTO V_VAL
	VALUES (1762,
	0,
	0,
	1,
	135,
	146,
	0,
	0,
	0,
	0,
	37,
	1751);
INSERT INTO V_PVL
	VALUES (1762,
	0,
	0,
	0,
	1763);
INSERT INTO V_PAR
	VALUES (1762,
	1752,
	0,
	'criteriaType',
	1764,
	1,
	116);
INSERT INTO V_VAL
	VALUES (1764,
	0,
	0,
	1,
	164,
	171,
	0,
	0,
	0,
	0,
	39,
	1751);
INSERT INTO V_PVL
	VALUES (1764,
	0,
	0,
	0,
	1765);
INSERT INTO V_PAR
	VALUES (1764,
	1752,
	0,
	'spanType',
	0,
	1,
	149);
INSERT INTO C_PO
	VALUES (1766,
	1711,
	'Tracking',
	0,
	0);
INSERT INTO C_IR
	VALUES (1767,
	1768,
	0,
	1766);
INSERT INTO C_R
	VALUES (1767,
	'UITracking',
	'',
	'Unnamed Interface',
	'UI::Tracking::UITracking');
INSERT INTO SPR_REP
	VALUES (1769,
	1770,
	1767);
INSERT INTO SPR_RO
	VALUES (1769,
	'setTargetPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (1771,
	1769);
INSERT INTO ACT_ACT
	VALUES (1771,
	'interface operation',
	0,
	1772,
	0,
	0,
	'Tracking::UITracking::setTargetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1772,
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
	1771,
	0);
INSERT INTO SPR_REP
	VALUES (1773,
	1774,
	1767);
INSERT INTO SPR_RO
	VALUES (1773,
	'startStopPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (1775,
	1773);
INSERT INTO ACT_ACT
	VALUES (1775,
	'interface operation',
	0,
	1776,
	0,
	0,
	'Tracking::UITracking::startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1776,
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
	1775,
	0);
INSERT INTO SPR_REP
	VALUES (1777,
	1778,
	1767);
INSERT INTO SPR_RO
	VALUES (1777,
	'lapResetPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (1779,
	1777);
INSERT INTO ACT_ACT
	VALUES (1779,
	'interface operation',
	0,
	1780,
	0,
	0,
	'Tracking::UITracking::lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1780,
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
	1779,
	0);
INSERT INTO SPR_REP
	VALUES (1781,
	1782,
	1767);
INSERT INTO SPR_RO
	VALUES (1781,
	'modePressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (1783,
	1781);
INSERT INTO ACT_ACT
	VALUES (1783,
	'interface operation',
	0,
	1784,
	0,
	0,
	'Tracking::UITracking::modePressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1784,
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
	1783,
	0);
INSERT INTO SPR_REP
	VALUES (1785,
	1786,
	1767);
INSERT INTO SPR_RO
	VALUES (1785,
	'newGoalSpec',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (1787,
	1785);
INSERT INTO ACT_ACT
	VALUES (1787,
	'interface operation',
	0,
	1788,
	0,
	0,
	'Tracking::UITracking::newGoalSpec',
	0);
INSERT INTO ACT_BLK
	VALUES (1788,
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
	1787,
	0);
INSERT INTO SPR_REP
	VALUES (1789,
	1790,
	1767);
INSERT INTO SPR_RO
	VALUES (1789,
	'lightPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (1791,
	1789);
INSERT INTO ACT_ACT
	VALUES (1791,
	'interface operation',
	0,
	1792,
	0,
	0,
	'Tracking::UITracking::lightPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1792,
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
	1791,
	0);
INSERT INTO PE_PE
	VALUES (1793,
	1,
	0,
	1711,
	7);
INSERT INTO EP_PKG
	VALUES (1793,
	0,
	1709,
	'UI',
	'',
	0);
INSERT INTO PE_PE
	VALUES (1794,
	1,
	1793,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (1794,
	'TestCase',
	2,
	'TestCase',
	'Represents a very simple automated test case.',
	0);
INSERT INTO O_TFR
	VALUES (1795,
	1794,
	'execute',
	'',
	6,
	0,
	'generate TestCase2:tcstart(iterations: 2) to TestCase creator;',
	1,
	'',
	0);
INSERT INTO ACT_OPB
	VALUES (1796,
	1795);
INSERT INTO ACT_ACT
	VALUES (1796,
	'class operation',
	0,
	1797,
	0,
	0,
	'TestCase::execute',
	0);
INSERT INTO ACT_BLK
	VALUES (1797,
	0,
	0,
	0,
	'',
	'iterations',
	'iterations',
	1,
	1,
	1,
	46,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1796,
	0);
INSERT INTO ACT_SMT
	VALUES (1798,
	1797,
	0,
	1,
	1,
	'TestCase::execute line: 1');
INSERT INTO E_ESS
	VALUES (1798,
	1,
	0,
	1,
	10,
	1,
	20,
	1,
	46,
	1,
	28,
	0,
	0);
INSERT INTO V_PAR
	VALUES (1799,
	1798,
	0,
	'iterations',
	0,
	1,
	28);
INSERT INTO E_GES
	VALUES (1798);
INSERT INTO E_GSME
	VALUES (1798,
	1739);
INSERT INTO E_GEC
	VALUES (1798);
INSERT INTO V_VAL
	VALUES (1799,
	0,
	0,
	1,
	40,
	40,
	0,
	0,
	0,
	0,
	30,
	1797);
INSERT INTO V_LIN
	VALUES (1799,
	'2');
INSERT INTO O_NBATTR
	VALUES (1800,
	1794);
INSERT INTO O_BATTR
	VALUES (1800,
	1794);
INSERT INTO O_ATTR
	VALUES (1800,
	1794,
	0,
	'current_state',
	'',
	'',
	'current_state',
	0,
	476,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1801,
	1794);
INSERT INTO O_BATTR
	VALUES (1801,
	1794);
INSERT INTO O_ATTR
	VALUES (1801,
	1794,
	1800,
	'iterations',
	'',
	'',
	'iterations',
	0,
	30,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1794);
INSERT INTO O_ID
	VALUES (1,
	1794);
INSERT INTO O_ID
	VALUES (2,
	1794);
INSERT INTO SM_ISM
	VALUES (1802,
	1794);
INSERT INTO SM_SM
	VALUES (1802,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (1802);
INSERT INTO SM_EVTDI
	VALUES (1803,
	1802,
	'iterations',
	'',
	30,
	'',
	1739,
	0);
INSERT INTO SM_LEVT
	VALUES (1804,
	1802,
	0);
INSERT INTO SM_SEVT
	VALUES (1804,
	1802,
	0);
INSERT INTO SM_EVT
	VALUES (1804,
	1802,
	0,
	1,
	'tcdelay',
	0,
	'',
	'TestCase1',
	'');
INSERT INTO SM_LEVT
	VALUES (1739,
	1802,
	0);
INSERT INTO SM_SEVT
	VALUES (1739,
	1802,
	0);
INSERT INTO SM_EVT
	VALUES (1739,
	1802,
	0,
	2,
	'tcstart',
	0,
	'',
	'TestCase2',
	'');
INSERT INTO SM_LEVT
	VALUES (1805,
	1802,
	0);
INSERT INTO SM_SEVT
	VALUES (1805,
	1802,
	0);
INSERT INTO SM_EVT
	VALUES (1805,
	1802,
	0,
	3,
	'tcfinish',
	0,
	'',
	'TestCase3',
	'');
INSERT INTO SM_STATE
	VALUES (1806,
	1802,
	0,
	'pressStartStop',
	2,
	0);
INSERT INTO SM_SEME
	VALUES (1806,
	1804,
	1802,
	0);
INSERT INTO SM_CH
	VALUES (1806,
	1739,
	1802,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1806,
	1739,
	1802,
	0);
INSERT INTO SM_SEME
	VALUES (1806,
	1805,
	1802,
	0);
INSERT INTO SM_MOAH
	VALUES (1807,
	1802,
	1806);
INSERT INTO SM_AH
	VALUES (1807,
	1802);
INSERT INTO SM_ACT
	VALUES (1807,
	1802,
	1,
	'if (self.iterations > 0)
  self.iterations = self.iterations - 1;
  create event instance evt of TestCase1 to self;
  handle = TIM::timer_start(event_inst: evt, microseconds: 4000000);
  send Tracking::startStopPressed();
else
  generate TestCase3:tcfinish to self;
  send Tracking::lapResetPressed();
end if;',
	'');
INSERT INTO ACT_SAB
	VALUES (1808,
	1802,
	1807);
INSERT INTO ACT_ACT
	VALUES (1808,
	'state',
	0,
	1809,
	0,
	0,
	'TestCase::pressStartStop',
	0);
INSERT INTO ACT_BLK
	VALUES (1809,
	0,
	0,
	0,
	'',
	'',
	'',
	6,
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
	0,
	0,
	1808,
	0);
INSERT INTO ACT_SMT
	VALUES (1810,
	1809,
	0,
	1,
	1,
	'TestCase::pressStartStop line: 1');
INSERT INTO ACT_IF
	VALUES (1810,
	1811,
	1812,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1813,
	1809,
	0,
	6,
	1,
	'TestCase::pressStartStop line: 6');
INSERT INTO ACT_E
	VALUES (1813,
	1814,
	1810);
INSERT INTO V_VAL
	VALUES (1815,
	0,
	0,
	1,
	5,
	8,
	0,
	0,
	0,
	0,
	106,
	1809);
INSERT INTO V_IRF
	VALUES (1815,
	1816);
INSERT INTO V_VAL
	VALUES (1817,
	0,
	0,
	1,
	10,
	19,
	0,
	0,
	0,
	0,
	30,
	1809);
INSERT INTO V_AVL
	VALUES (1817,
	1815,
	1794,
	1801);
INSERT INTO V_VAL
	VALUES (1812,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	1809);
INSERT INTO V_BIN
	VALUES (1812,
	1818,
	1817,
	'>');
INSERT INTO V_VAL
	VALUES (1818,
	0,
	0,
	1,
	23,
	23,
	0,
	0,
	0,
	0,
	30,
	1809);
INSERT INTO V_LIN
	VALUES (1818,
	'0');
INSERT INTO V_VAR
	VALUES (1816,
	1809,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (1816,
	0,
	1794);
INSERT INTO ACT_BLK
	VALUES (1811,
	0,
	0,
	0,
	'Tracking',
	'',
	'',
	5,
	3,
	5,
	8,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1808,
	0);
INSERT INTO ACT_SMT
	VALUES (1819,
	1811,
	1820,
	2,
	3,
	'TestCase::pressStartStop line: 2');
INSERT INTO ACT_AI
	VALUES (1819,
	1821,
	1822,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1820,
	1811,
	1823,
	3,
	3,
	'TestCase::pressStartStop line: 3');
INSERT INTO E_ESS
	VALUES (1820,
	1,
	0,
	3,
	32,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES (1820,
	1,
	1824);
INSERT INTO E_CSME
	VALUES (1820,
	1804);
INSERT INTO E_CEI
	VALUES (1820,
	1816);
INSERT INTO ACT_SMT
	VALUES (1823,
	1811,
	1825,
	4,
	3,
	'TestCase::pressStartStop line: 4');
INSERT INTO ACT_AI
	VALUES (1823,
	1826,
	1827,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1825,
	1811,
	0,
	5,
	3,
	'TestCase::pressStartStop line: 5');
INSERT INTO ACT_IOP
	VALUES (1825,
	5,
	18,
	5,
	8,
	0,
	1773,
	0);
INSERT INTO V_VAL
	VALUES (1828,
	1,
	0,
	2,
	3,
	6,
	0,
	0,
	0,
	0,
	106,
	1811);
INSERT INTO V_IRF
	VALUES (1828,
	1816);
INSERT INTO V_VAL
	VALUES (1822,
	1,
	0,
	2,
	8,
	17,
	0,
	0,
	0,
	0,
	30,
	1811);
INSERT INTO V_AVL
	VALUES (1822,
	1828,
	1794,
	1801);
INSERT INTO V_VAL
	VALUES (1829,
	0,
	0,
	2,
	21,
	24,
	0,
	0,
	0,
	0,
	106,
	1811);
INSERT INTO V_IRF
	VALUES (1829,
	1816);
INSERT INTO V_VAL
	VALUES (1830,
	0,
	0,
	2,
	26,
	35,
	0,
	0,
	0,
	0,
	30,
	1811);
INSERT INTO V_AVL
	VALUES (1830,
	1829,
	1794,
	1801);
INSERT INTO V_VAL
	VALUES (1821,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	30,
	1811);
INSERT INTO V_BIN
	VALUES (1821,
	1831,
	1830,
	'-');
INSERT INTO V_VAL
	VALUES (1831,
	0,
	0,
	2,
	39,
	39,
	0,
	0,
	0,
	0,
	30,
	1811);
INSERT INTO V_LIN
	VALUES (1831,
	'1');
INSERT INTO V_VAL
	VALUES (1827,
	1,
	1,
	4,
	3,
	8,
	0,
	0,
	0,
	0,
	332,
	1811);
INSERT INTO V_TVL
	VALUES (1827,
	1832);
INSERT INTO V_VAL
	VALUES (1826,
	0,
	0,
	4,
	17,
	-1,
	4,
	29,
	4,
	46,
	332,
	1811);
INSERT INTO V_BRV
	VALUES (1826,
	1833,
	1,
	4,
	12);
INSERT INTO V_VAL
	VALUES (1834,
	0,
	0,
	4,
	41,
	43,
	0,
	0,
	0,
	0,
	335,
	1811);
INSERT INTO V_TVL
	VALUES (1834,
	1824);
INSERT INTO V_PAR
	VALUES (1834,
	0,
	1826,
	'event_inst',
	1835,
	4,
	29);
INSERT INTO V_VAL
	VALUES (1835,
	0,
	0,
	4,
	60,
	66,
	0,
	0,
	0,
	0,
	30,
	1811);
INSERT INTO V_LIN
	VALUES (1835,
	'4000000');
INSERT INTO V_PAR
	VALUES (1835,
	0,
	1826,
	'microseconds',
	0,
	4,
	46);
INSERT INTO V_VAR
	VALUES (1824,
	1811,
	'evt',
	1,
	335);
INSERT INTO V_TRN
	VALUES (1824,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1832,
	1811,
	'handle',
	1,
	332);
INSERT INTO V_TRN
	VALUES (1832,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (1814,
	0,
	0,
	0,
	'Tracking',
	'',
	'',
	8,
	3,
	8,
	8,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1808,
	0);
INSERT INTO ACT_SMT
	VALUES (1836,
	1814,
	1837,
	7,
	3,
	'TestCase::pressStartStop line: 7');
INSERT INTO E_ESS
	VALUES (1836,
	1,
	0,
	7,
	12,
	7,
	22,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (1836);
INSERT INTO E_GSME
	VALUES (1836,
	1805);
INSERT INTO E_GEN
	VALUES (1836,
	1816);
INSERT INTO ACT_SMT
	VALUES (1837,
	1814,
	0,
	8,
	3,
	'TestCase::pressStartStop line: 8');
INSERT INTO ACT_IOP
	VALUES (1837,
	8,
	18,
	8,
	8,
	0,
	1777,
	0);
INSERT INTO SM_STATE
	VALUES (1838,
	1802,
	0,
	'testCaseFinished',
	3,
	1);
INSERT INTO SM_CH
	VALUES (1838,
	1804,
	1802,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1838,
	1804,
	1802,
	0);
INSERT INTO SM_CH
	VALUES (1838,
	1739,
	1802,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1838,
	1739,
	1802,
	0);
INSERT INTO SM_CH
	VALUES (1838,
	1805,
	1802,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1838,
	1805,
	1802,
	0);
INSERT INTO SM_MOAH
	VALUES (1839,
	1802,
	1838);
INSERT INTO SM_AH
	VALUES (1839,
	1802);
INSERT INTO SM_ACT
	VALUES (1839,
	1802,
	1,
	'LOG::LogInfo(message: "End of test case"); ',
	'');
INSERT INTO ACT_SAB
	VALUES (1840,
	1802,
	1839);
INSERT INTO ACT_ACT
	VALUES (1840,
	'state',
	0,
	1841,
	0,
	0,
	'TestCase::testCaseFinished',
	0);
INSERT INTO ACT_BLK
	VALUES (1841,
	0,
	0,
	0,
	'LOG',
	'',
	'',
	1,
	1,
	1,
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
	1840,
	0);
INSERT INTO ACT_SMT
	VALUES (1842,
	1841,
	0,
	1,
	1,
	'TestCase::testCaseFinished line: 1');
INSERT INTO ACT_BRG
	VALUES (1842,
	1843,
	1,
	6,
	1,
	1);
INSERT INTO V_VAL
	VALUES (1844,
	0,
	0,
	1,
	23,
	39,
	0,
	0,
	0,
	0,
	130,
	1841);
INSERT INTO V_LST
	VALUES (1844,
	'End of test case');
INSERT INTO V_PAR
	VALUES (1844,
	1842,
	0,
	'message',
	0,
	1,
	14);
INSERT INTO SM_NSTXN
	VALUES (1845,
	1802,
	1806,
	1804,
	0);
INSERT INTO SM_TAH
	VALUES (1846,
	1802,
	1845);
INSERT INTO SM_AH
	VALUES (1846,
	1802);
INSERT INTO SM_ACT
	VALUES (1846,
	1802,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1847,
	1802,
	1846);
INSERT INTO ACT_ACT
	VALUES (1847,
	'transition',
	0,
	1848,
	0,
	0,
	'TestCase1: tcdelay',
	0);
INSERT INTO ACT_BLK
	VALUES (1848,
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
	1847,
	0);
INSERT INTO SM_TXN
	VALUES (1845,
	1802,
	1806,
	0);
INSERT INTO SM_CRTXN
	VALUES (1849,
	1802,
	1739,
	0);
INSERT INTO SM_TAH
	VALUES (1850,
	1802,
	1849);
INSERT INTO SM_AH
	VALUES (1850,
	1802);
INSERT INTO SM_ACT
	VALUES (1850,
	1802,
	1,
	'LOG::LogInfo(message: "Start of test case"); 
self.iterations = rcvd_evt.iterations * 2;',
	'');
INSERT INTO ACT_TAB
	VALUES (1851,
	1802,
	1850);
INSERT INTO ACT_ACT
	VALUES (1851,
	'transition',
	0,
	1852,
	0,
	0,
	'TestCase2: tcstart(iterations)',
	0);
INSERT INTO ACT_BLK
	VALUES (1852,
	0,
	0,
	0,
	'LOG',
	'',
	'',
	2,
	1,
	1,
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
	1851,
	0);
INSERT INTO ACT_SMT
	VALUES (1853,
	1852,
	1854,
	1,
	1,
	'TestCase2: tcstart(iterations) line: 1');
INSERT INTO ACT_BRG
	VALUES (1853,
	1843,
	1,
	6,
	1,
	1);
INSERT INTO ACT_SMT
	VALUES (1854,
	1852,
	0,
	2,
	1,
	'TestCase2: tcstart(iterations) line: 2');
INSERT INTO ACT_AI
	VALUES (1854,
	1855,
	1856,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1857,
	0,
	0,
	1,
	23,
	41,
	0,
	0,
	0,
	0,
	130,
	1852);
INSERT INTO V_LST
	VALUES (1857,
	'Start of test case');
INSERT INTO V_PAR
	VALUES (1857,
	1853,
	0,
	'message',
	0,
	1,
	14);
INSERT INTO V_VAL
	VALUES (1858,
	1,
	0,
	2,
	1,
	4,
	0,
	0,
	0,
	0,
	106,
	1852);
INSERT INTO V_IRF
	VALUES (1858,
	1859);
INSERT INTO V_VAL
	VALUES (1856,
	1,
	0,
	2,
	6,
	15,
	0,
	0,
	0,
	0,
	30,
	1852);
INSERT INTO V_AVL
	VALUES (1856,
	1858,
	1794,
	1801);
INSERT INTO V_VAL
	VALUES (1860,
	0,
	0,
	2,
	28,
	37,
	0,
	0,
	0,
	0,
	30,
	1852);
INSERT INTO V_EDV
	VALUES (1860);
INSERT INTO V_EPR
	VALUES (1860,
	1802,
	1803,
	0);
INSERT INTO V_VAL
	VALUES (1855,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	30,
	1852);
INSERT INTO V_BIN
	VALUES (1855,
	1861,
	1860,
	'*');
INSERT INTO V_VAL
	VALUES (1861,
	0,
	0,
	2,
	41,
	41,
	0,
	0,
	0,
	0,
	30,
	1852);
INSERT INTO V_LIN
	VALUES (1861,
	'2');
INSERT INTO V_VAR
	VALUES (1859,
	1852,
	'self',
	1,
	106);
INSERT INTO V_INT
	VALUES (1859,
	0,
	1794);
INSERT INTO SM_TXN
	VALUES (1849,
	1802,
	1806,
	0);
INSERT INTO SM_NSTXN
	VALUES (1862,
	1802,
	1806,
	1805,
	0);
INSERT INTO SM_TAH
	VALUES (1863,
	1802,
	1862);
INSERT INTO SM_AH
	VALUES (1863,
	1802);
INSERT INTO SM_ACT
	VALUES (1863,
	1802,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1864,
	1802,
	1863);
INSERT INTO ACT_ACT
	VALUES (1864,
	'transition',
	0,
	1865,
	0,
	0,
	'TestCase3: tcfinish',
	0);
INSERT INTO ACT_BLK
	VALUES (1865,
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
	1864,
	0);
INSERT INTO SM_TXN
	VALUES (1862,
	1802,
	1838,
	0);
INSERT INTO PE_PE
	VALUES (1866,
	1,
	1793,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (1866,
	'UI',
	1,
	'UI',
	'Provides an interface between Verifier and an external user interface representing 
the watch, in this case an animated rendition of the watch containing virtual
buttons that can be "pushed" by clicking on them with a mouse.

The system is first primed by creating, within the Verifier execution engine, an 
instance of each event that can be received by this class-based state machine.
This priming is done through execution of the feed*() bridge operations within 
the GuiBridge external entity.  Each of these operations is bound to a realized
Java function that queues the appropriate event within the Verifier execution 
engine.

Whenever a button on the animated watch is pushed, it causes the associated
event to be generated.  The activity on the transition then queues another instance
of the same event within the Verifier execution engine before sending the 
corresponding interface signal out through the UI port.  That interface signal 
can then be received by an application, such as the Tracking component, that is 
controlled by the animated watch.',
	0);
INSERT INTO O_TFR
	VALUES (1867,
	1866,
	'connect',
	'',
	6,
	0,
	'GuiBridge::connect();

create event instance evt of UI_A3:setTargetPressed() to UI class;
GuiBridge::feedSetTargetPressedEvent(evt: evt);

create event instance evt of UI_A4:startStopPressed() to UI class;
GuiBridge::feedStartStopPressedEvent(evt: evt);

create event instance evt of UI_A5:lapResetPressed() to UI class;
GuiBridge::feedLapResetPressedEvent(evt: evt);

create event instance evt of UI_A6:lightPressed() to UI class;
GuiBridge::feedLightPressedEvent(evt: evt);

create event instance evt of UI_A7:modePressed() to UI class;
GuiBridge::feedModePressedEvent(evt: evt);',
	1,
	'',
	0);
INSERT INTO ACT_OPB
	VALUES (1868,
	1867);
INSERT INTO ACT_ACT
	VALUES (1868,
	'class operation',
	0,
	1869,
	0,
	0,
	'UI::connect',
	0);
INSERT INTO ACT_BLK
	VALUES (1869,
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	16,
	1,
	16,
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
	1868,
	0);
INSERT INTO ACT_SMT
	VALUES (1870,
	1869,
	1871,
	1,
	1,
	'UI::connect line: 1');
INSERT INTO ACT_BRG
	VALUES (1870,
	1872,
	1,
	12,
	1,
	1);
INSERT INTO ACT_SMT
	VALUES (1871,
	1869,
	1873,
	3,
	1,
	'UI::connect line: 3');
INSERT INTO E_ESS
	VALUES (1871,
	1,
	0,
	3,
	30,
	3,
	36,
	3,
	58,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES (1871,
	1,
	1874);
INSERT INTO E_CSME
	VALUES (1871,
	1875);
INSERT INTO E_CEA
	VALUES (1871);
INSERT INTO ACT_SMT
	VALUES (1873,
	1869,
	1876,
	4,
	1,
	'UI::connect line: 4');
INSERT INTO ACT_BRG
	VALUES (1873,
	1877,
	4,
	12,
	4,
	1);
INSERT INTO ACT_SMT
	VALUES (1876,
	1869,
	1878,
	6,
	1,
	'UI::connect line: 6');
INSERT INTO E_ESS
	VALUES (1876,
	1,
	0,
	6,
	30,
	6,
	36,
	6,
	58,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES (1876,
	0,
	1874);
INSERT INTO E_CSME
	VALUES (1876,
	1879);
INSERT INTO E_CEA
	VALUES (1876);
INSERT INTO ACT_SMT
	VALUES (1878,
	1869,
	1880,
	7,
	1,
	'UI::connect line: 7');
INSERT INTO ACT_BRG
	VALUES (1878,
	1881,
	7,
	12,
	7,
	1);
INSERT INTO ACT_SMT
	VALUES (1880,
	1869,
	1882,
	9,
	1,
	'UI::connect line: 9');
INSERT INTO E_ESS
	VALUES (1880,
	1,
	0,
	9,
	30,
	9,
	36,
	9,
	57,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES (1880,
	0,
	1874);
INSERT INTO E_CSME
	VALUES (1880,
	1883);
INSERT INTO E_CEA
	VALUES (1880);
INSERT INTO ACT_SMT
	VALUES (1882,
	1869,
	1884,
	10,
	1,
	'UI::connect line: 10');
INSERT INTO ACT_BRG
	VALUES (1882,
	1885,
	10,
	12,
	10,
	1);
INSERT INTO ACT_SMT
	VALUES (1884,
	1869,
	1886,
	12,
	1,
	'UI::connect line: 12');
INSERT INTO E_ESS
	VALUES (1884,
	1,
	0,
	12,
	30,
	12,
	36,
	12,
	54,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES (1884,
	0,
	1874);
INSERT INTO E_CSME
	VALUES (1884,
	1887);
INSERT INTO E_CEA
	VALUES (1884);
INSERT INTO ACT_SMT
	VALUES (1886,
	1869,
	1888,
	13,
	1,
	'UI::connect line: 13');
INSERT INTO ACT_BRG
	VALUES (1886,
	1889,
	13,
	12,
	13,
	1);
INSERT INTO ACT_SMT
	VALUES (1888,
	1869,
	1890,
	15,
	1,
	'UI::connect line: 15');
INSERT INTO E_ESS
	VALUES (1888,
	1,
	0,
	15,
	30,
	15,
	36,
	15,
	53,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES (1888,
	0,
	1874);
INSERT INTO E_CSME
	VALUES (1888,
	1891);
INSERT INTO E_CEA
	VALUES (1888);
INSERT INTO ACT_SMT
	VALUES (1890,
	1869,
	0,
	16,
	1,
	'UI::connect line: 16');
INSERT INTO ACT_BRG
	VALUES (1890,
	1892,
	16,
	12,
	16,
	1);
INSERT INTO V_VAL
	VALUES (1893,
	0,
	0,
	4,
	43,
	45,
	0,
	0,
	0,
	0,
	335,
	1869);
INSERT INTO V_TVL
	VALUES (1893,
	1874);
INSERT INTO V_PAR
	VALUES (1893,
	1873,
	0,
	'evt',
	0,
	4,
	38);
INSERT INTO V_VAL
	VALUES (1894,
	0,
	0,
	7,
	43,
	45,
	0,
	0,
	0,
	0,
	335,
	1869);
INSERT INTO V_TVL
	VALUES (1894,
	1874);
INSERT INTO V_PAR
	VALUES (1894,
	1878,
	0,
	'evt',
	0,
	7,
	38);
INSERT INTO V_VAL
	VALUES (1895,
	0,
	0,
	10,
	42,
	44,
	0,
	0,
	0,
	0,
	335,
	1869);
INSERT INTO V_TVL
	VALUES (1895,
	1874);
INSERT INTO V_PAR
	VALUES (1895,
	1882,
	0,
	'evt',
	0,
	10,
	37);
INSERT INTO V_VAL
	VALUES (1896,
	0,
	0,
	13,
	39,
	41,
	0,
	0,
	0,
	0,
	335,
	1869);
INSERT INTO V_TVL
	VALUES (1896,
	1874);
INSERT INTO V_PAR
	VALUES (1896,
	1886,
	0,
	'evt',
	0,
	13,
	34);
INSERT INTO V_VAL
	VALUES (1897,
	0,
	0,
	16,
	38,
	40,
	0,
	0,
	0,
	0,
	335,
	1869);
INSERT INTO V_TVL
	VALUES (1897,
	1874);
INSERT INTO V_PAR
	VALUES (1897,
	1890,
	0,
	'evt',
	0,
	16,
	33);
INSERT INTO V_VAR
	VALUES (1874,
	1869,
	'evt',
	1,
	335);
INSERT INTO V_TRN
	VALUES (1874,
	0,
	'');
INSERT INTO O_ID
	VALUES (0,
	1866);
INSERT INTO O_ID
	VALUES (1,
	1866);
INSERT INTO O_ID
	VALUES (2,
	1866);
INSERT INTO SM_ASM
	VALUES (1898,
	1866);
INSERT INTO SM_SM
	VALUES (1898,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (1898);
INSERT INTO SM_LEVT
	VALUES (1875,
	1898,
	0);
INSERT INTO SM_SEVT
	VALUES (1875,
	1898,
	0);
INSERT INTO SM_EVT
	VALUES (1875,
	1898,
	0,
	3,
	'setTargetPressed',
	0,
	'',
	'UI_A3',
	'');
INSERT INTO SM_LEVT
	VALUES (1879,
	1898,
	0);
INSERT INTO SM_SEVT
	VALUES (1879,
	1898,
	0);
INSERT INTO SM_EVT
	VALUES (1879,
	1898,
	0,
	4,
	'startStopPressed',
	0,
	'',
	'UI_A4',
	'');
INSERT INTO SM_LEVT
	VALUES (1883,
	1898,
	0);
INSERT INTO SM_SEVT
	VALUES (1883,
	1898,
	0);
INSERT INTO SM_EVT
	VALUES (1883,
	1898,
	0,
	5,
	'lapResetPressed',
	0,
	'',
	'UI_A5',
	'');
INSERT INTO SM_LEVT
	VALUES (1887,
	1898,
	0);
INSERT INTO SM_SEVT
	VALUES (1887,
	1898,
	0);
INSERT INTO SM_EVT
	VALUES (1887,
	1898,
	0,
	6,
	'lightPressed',
	0,
	'',
	'UI_A6',
	'');
INSERT INTO SM_LEVT
	VALUES (1891,
	1898,
	0);
INSERT INTO SM_SEVT
	VALUES (1891,
	1898,
	0);
INSERT INTO SM_EVT
	VALUES (1891,
	1898,
	0,
	7,
	'modePressed',
	0,
	'',
	'UI_A7',
	'');
INSERT INTO SM_STATE
	VALUES (1899,
	1898,
	0,
	'running',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (1899,
	1875,
	1898,
	0);
INSERT INTO SM_SEME
	VALUES (1899,
	1879,
	1898,
	0);
INSERT INTO SM_SEME
	VALUES (1899,
	1883,
	1898,
	0);
INSERT INTO SM_SEME
	VALUES (1899,
	1887,
	1898,
	0);
INSERT INTO SM_SEME
	VALUES (1899,
	1891,
	1898,
	0);
INSERT INTO SM_MOAH
	VALUES (1900,
	1898,
	1899);
INSERT INTO SM_AH
	VALUES (1900,
	1898);
INSERT INTO SM_ACT
	VALUES (1900,
	1898,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (1901,
	1898,
	1900);
INSERT INTO ACT_ACT
	VALUES (1901,
	'class state',
	0,
	1902,
	0,
	0,
	'UI::running',
	0);
INSERT INTO ACT_BLK
	VALUES (1902,
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
	1901,
	0);
INSERT INTO SM_NSTXN
	VALUES (1903,
	1898,
	1899,
	1875,
	0);
INSERT INTO SM_TAH
	VALUES (1904,
	1898,
	1903);
INSERT INTO SM_AH
	VALUES (1904,
	1898);
INSERT INTO SM_ACT
	VALUES (1904,
	1898,
	1,
	'create event instance evt of UI_A3:setTargetPressed() to UI class;
GuiBridge::feedSetTargetPressedEvent(evt: evt);
::sendTargetPressed();',
	'');
INSERT INTO ACT_TAB
	VALUES (1905,
	1898,
	1904);
INSERT INTO ACT_ACT
	VALUES (1905,
	'class transition',
	0,
	1906,
	0,
	0,
	'UI_A3: setTargetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1906,
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	3,
	1,
	2,
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
	1905,
	0);
INSERT INTO ACT_SMT
	VALUES (1907,
	1906,
	1908,
	1,
	1,
	'UI_A3: setTargetPressed line: 1');
INSERT INTO E_ESS
	VALUES (1907,
	1,
	0,
	1,
	30,
	1,
	36,
	1,
	58,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES (1907,
	1,
	1909);
INSERT INTO E_CSME
	VALUES (1907,
	1875);
INSERT INTO E_CEA
	VALUES (1907);
INSERT INTO ACT_SMT
	VALUES (1908,
	1906,
	1910,
	2,
	1,
	'UI_A3: setTargetPressed line: 2');
INSERT INTO ACT_BRG
	VALUES (1908,
	1877,
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (1910,
	1906,
	0,
	3,
	1,
	'UI_A3: setTargetPressed line: 3');
INSERT INTO ACT_FNC
	VALUES (1910,
	1911,
	3,
	3);
INSERT INTO V_VAL
	VALUES (1912,
	0,
	0,
	2,
	43,
	45,
	0,
	0,
	0,
	0,
	335,
	1906);
INSERT INTO V_TVL
	VALUES (1912,
	1909);
INSERT INTO V_PAR
	VALUES (1912,
	1908,
	0,
	'evt',
	0,
	2,
	38);
INSERT INTO V_VAR
	VALUES (1909,
	1906,
	'evt',
	1,
	335);
INSERT INTO V_TRN
	VALUES (1909,
	0,
	'');
INSERT INTO SM_TXN
	VALUES (1903,
	1898,
	1899,
	0);
INSERT INTO SM_NSTXN
	VALUES (1913,
	1898,
	1899,
	1879,
	0);
INSERT INTO SM_TAH
	VALUES (1914,
	1898,
	1913);
INSERT INTO SM_AH
	VALUES (1914,
	1898);
INSERT INTO SM_ACT
	VALUES (1914,
	1898,
	1,
	'create event instance evt of UI_A4:startStopPressed() to UI class;
GuiBridge::feedStartStopPressedEvent(evt: evt);
::sendStartStopPressed();',
	'');
INSERT INTO ACT_TAB
	VALUES (1915,
	1898,
	1914);
INSERT INTO ACT_ACT
	VALUES (1915,
	'class transition',
	0,
	1916,
	0,
	0,
	'UI_A4: startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1916,
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	3,
	1,
	2,
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
	1915,
	0);
INSERT INTO ACT_SMT
	VALUES (1917,
	1916,
	1918,
	1,
	1,
	'UI_A4: startStopPressed line: 1');
INSERT INTO E_ESS
	VALUES (1917,
	1,
	0,
	1,
	30,
	1,
	36,
	1,
	58,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES (1917,
	1,
	1919);
INSERT INTO E_CSME
	VALUES (1917,
	1879);
INSERT INTO E_CEA
	VALUES (1917);
INSERT INTO ACT_SMT
	VALUES (1918,
	1916,
	1920,
	2,
	1,
	'UI_A4: startStopPressed line: 2');
INSERT INTO ACT_BRG
	VALUES (1918,
	1881,
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (1920,
	1916,
	0,
	3,
	1,
	'UI_A4: startStopPressed line: 3');
INSERT INTO ACT_FNC
	VALUES (1920,
	1921,
	3,
	3);
INSERT INTO V_VAL
	VALUES (1922,
	0,
	0,
	2,
	43,
	45,
	0,
	0,
	0,
	0,
	335,
	1916);
INSERT INTO V_TVL
	VALUES (1922,
	1919);
INSERT INTO V_PAR
	VALUES (1922,
	1918,
	0,
	'evt',
	0,
	2,
	38);
INSERT INTO V_VAR
	VALUES (1919,
	1916,
	'evt',
	1,
	335);
INSERT INTO V_TRN
	VALUES (1919,
	0,
	'');
INSERT INTO SM_TXN
	VALUES (1913,
	1898,
	1899,
	0);
INSERT INTO SM_NSTXN
	VALUES (1923,
	1898,
	1899,
	1883,
	0);
INSERT INTO SM_TAH
	VALUES (1924,
	1898,
	1923);
INSERT INTO SM_AH
	VALUES (1924,
	1898);
INSERT INTO SM_ACT
	VALUES (1924,
	1898,
	1,
	'create event instance evt of UI_A5:lapResetPressed() to UI class;
GuiBridge::feedLapResetPressedEvent(evt: evt);
::sendLapResetPressed();',
	'');
INSERT INTO ACT_TAB
	VALUES (1925,
	1898,
	1924);
INSERT INTO ACT_ACT
	VALUES (1925,
	'class transition',
	0,
	1926,
	0,
	0,
	'UI_A5: lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1926,
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	3,
	1,
	2,
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
	1925,
	0);
INSERT INTO ACT_SMT
	VALUES (1927,
	1926,
	1928,
	1,
	1,
	'UI_A5: lapResetPressed line: 1');
INSERT INTO E_ESS
	VALUES (1927,
	1,
	0,
	1,
	30,
	1,
	36,
	1,
	57,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES (1927,
	1,
	1929);
INSERT INTO E_CSME
	VALUES (1927,
	1883);
INSERT INTO E_CEA
	VALUES (1927);
INSERT INTO ACT_SMT
	VALUES (1928,
	1926,
	1930,
	2,
	1,
	'UI_A5: lapResetPressed line: 2');
INSERT INTO ACT_BRG
	VALUES (1928,
	1885,
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (1930,
	1926,
	0,
	3,
	1,
	'UI_A5: lapResetPressed line: 3');
INSERT INTO ACT_FNC
	VALUES (1930,
	1931,
	3,
	3);
INSERT INTO V_VAL
	VALUES (1932,
	0,
	0,
	2,
	42,
	44,
	0,
	0,
	0,
	0,
	335,
	1926);
INSERT INTO V_TVL
	VALUES (1932,
	1929);
INSERT INTO V_PAR
	VALUES (1932,
	1928,
	0,
	'evt',
	0,
	2,
	37);
INSERT INTO V_VAR
	VALUES (1929,
	1926,
	'evt',
	1,
	335);
INSERT INTO V_TRN
	VALUES (1929,
	0,
	'');
INSERT INTO SM_TXN
	VALUES (1923,
	1898,
	1899,
	0);
INSERT INTO SM_NSTXN
	VALUES (1933,
	1898,
	1899,
	1887,
	0);
INSERT INTO SM_TAH
	VALUES (1934,
	1898,
	1933);
INSERT INTO SM_AH
	VALUES (1934,
	1898);
INSERT INTO SM_ACT
	VALUES (1934,
	1898,
	1,
	'create event instance evt of UI_A6:lightPressed() to UI class;
GuiBridge::feedLightPressedEvent(evt: evt);
::sendLightPressed();',
	'');
INSERT INTO ACT_TAB
	VALUES (1935,
	1898,
	1934);
INSERT INTO ACT_ACT
	VALUES (1935,
	'class transition',
	0,
	1936,
	0,
	0,
	'UI_A6: lightPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1936,
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	3,
	1,
	2,
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
	1935,
	0);
INSERT INTO ACT_SMT
	VALUES (1937,
	1936,
	1938,
	1,
	1,
	'UI_A6: lightPressed line: 1');
INSERT INTO E_ESS
	VALUES (1937,
	1,
	0,
	1,
	30,
	1,
	36,
	1,
	54,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES (1937,
	1,
	1939);
INSERT INTO E_CSME
	VALUES (1937,
	1887);
INSERT INTO E_CEA
	VALUES (1937);
INSERT INTO ACT_SMT
	VALUES (1938,
	1936,
	1940,
	2,
	1,
	'UI_A6: lightPressed line: 2');
INSERT INTO ACT_BRG
	VALUES (1938,
	1889,
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (1940,
	1936,
	0,
	3,
	1,
	'UI_A6: lightPressed line: 3');
INSERT INTO ACT_FNC
	VALUES (1940,
	1941,
	3,
	3);
INSERT INTO V_VAL
	VALUES (1942,
	0,
	0,
	2,
	39,
	41,
	0,
	0,
	0,
	0,
	335,
	1936);
INSERT INTO V_TVL
	VALUES (1942,
	1939);
INSERT INTO V_PAR
	VALUES (1942,
	1938,
	0,
	'evt',
	0,
	2,
	34);
INSERT INTO V_VAR
	VALUES (1939,
	1936,
	'evt',
	1,
	335);
INSERT INTO V_TRN
	VALUES (1939,
	0,
	'');
INSERT INTO SM_TXN
	VALUES (1933,
	1898,
	1899,
	0);
INSERT INTO SM_NSTXN
	VALUES (1943,
	1898,
	1899,
	1891,
	0);
INSERT INTO SM_TAH
	VALUES (1944,
	1898,
	1943);
INSERT INTO SM_AH
	VALUES (1944,
	1898);
INSERT INTO SM_ACT
	VALUES (1944,
	1898,
	1,
	'create event instance evt of UI_A7:modePressed() to UI class;
GuiBridge::feedModePressedEvent(evt: evt);
::sendModePressed();',
	'');
INSERT INTO ACT_TAB
	VALUES (1945,
	1898,
	1944);
INSERT INTO ACT_ACT
	VALUES (1945,
	'class transition',
	0,
	1946,
	0,
	0,
	'UI_A7: modePressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1946,
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	3,
	1,
	2,
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
	1945,
	0);
INSERT INTO ACT_SMT
	VALUES (1947,
	1946,
	1948,
	1,
	1,
	'UI_A7: modePressed line: 1');
INSERT INTO E_ESS
	VALUES (1947,
	1,
	0,
	1,
	30,
	1,
	36,
	1,
	53,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES (1947,
	1,
	1949);
INSERT INTO E_CSME
	VALUES (1947,
	1891);
INSERT INTO E_CEA
	VALUES (1947);
INSERT INTO ACT_SMT
	VALUES (1948,
	1946,
	1950,
	2,
	1,
	'UI_A7: modePressed line: 2');
INSERT INTO ACT_BRG
	VALUES (1948,
	1892,
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (1950,
	1946,
	0,
	3,
	1,
	'UI_A7: modePressed line: 3');
INSERT INTO ACT_FNC
	VALUES (1950,
	1951,
	3,
	3);
INSERT INTO V_VAL
	VALUES (1952,
	0,
	0,
	2,
	38,
	40,
	0,
	0,
	0,
	0,
	335,
	1946);
INSERT INTO V_TVL
	VALUES (1952,
	1949);
INSERT INTO V_PAR
	VALUES (1952,
	1948,
	0,
	'evt',
	0,
	2,
	33);
INSERT INTO V_VAR
	VALUES (1949,
	1946,
	'evt',
	1,
	335);
INSERT INTO V_TRN
	VALUES (1949,
	0,
	'');
INSERT INTO SM_TXN
	VALUES (1943,
	1898,
	1899,
	0);
INSERT INTO PE_PE
	VALUES (1953,
	1,
	1793,
	0,
	5);
INSERT INTO S_EE
	VALUES (1953,
	'Time',
	'The Time external entity provides date, timestamp, and timer related operations.',
	'TIM',
	0,
	'',
	'Time',
	1);
INSERT INTO S_BRG
	VALUES (1954,
	1953,
	'current_date',
	'',
	1,
	272,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (1955,
	1954);
INSERT INTO ACT_ACT
	VALUES (1955,
	'bridge',
	0,
	1956,
	0,
	0,
	'Time::current_date',
	0);
INSERT INTO ACT_BLK
	VALUES (1956,
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
	1955,
	0);
INSERT INTO S_BRG
	VALUES (1957,
	1953,
	'create_date',
	'',
	1,
	272,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (1958,
	1957,
	'second',
	30,
	0,
	'',
	1959,
	'');
INSERT INTO S_BPARM
	VALUES (1960,
	1957,
	'minute',
	30,
	0,
	'',
	1961,
	'');
INSERT INTO S_BPARM
	VALUES (1961,
	1957,
	'hour',
	30,
	0,
	'',
	1962,
	'');
INSERT INTO S_BPARM
	VALUES (1962,
	1957,
	'day',
	30,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (1959,
	1957,
	'month',
	30,
	0,
	'',
	1960,
	'');
INSERT INTO S_BPARM
	VALUES (1963,
	1957,
	'year',
	30,
	0,
	'',
	1958,
	'');
INSERT INTO ACT_BRB
	VALUES (1964,
	1957);
INSERT INTO ACT_ACT
	VALUES (1964,
	'bridge',
	0,
	1965,
	0,
	0,
	'Time::create_date',
	0);
INSERT INTO ACT_BLK
	VALUES (1965,
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
	1964,
	0);
INSERT INTO S_BRG
	VALUES (1966,
	1953,
	'get_second',
	'',
	1,
	30,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (1967,
	1966,
	'date',
	272,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (1968,
	1966);
INSERT INTO ACT_ACT
	VALUES (1968,
	'bridge',
	0,
	1969,
	0,
	0,
	'Time::get_second',
	0);
INSERT INTO ACT_BLK
	VALUES (1969,
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
	1968,
	0);
INSERT INTO S_BRG
	VALUES (1970,
	1953,
	'get_minute',
	'',
	1,
	30,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (1971,
	1970,
	'date',
	272,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (1972,
	1970);
INSERT INTO ACT_ACT
	VALUES (1972,
	'bridge',
	0,
	1973,
	0,
	0,
	'Time::get_minute',
	0);
INSERT INTO ACT_BLK
	VALUES (1973,
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
	1972,
	0);
INSERT INTO S_BRG
	VALUES (1974,
	1953,
	'get_hour',
	'',
	1,
	30,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (1975,
	1974,
	'date',
	272,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (1976,
	1974);
INSERT INTO ACT_ACT
	VALUES (1976,
	'bridge',
	0,
	1977,
	0,
	0,
	'Time::get_hour',
	0);
INSERT INTO ACT_BLK
	VALUES (1977,
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
	1976,
	0);
INSERT INTO S_BRG
	VALUES (1978,
	1953,
	'get_day',
	'',
	1,
	30,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (1979,
	1978,
	'date',
	272,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (1980,
	1978);
INSERT INTO ACT_ACT
	VALUES (1980,
	'bridge',
	0,
	1981,
	0,
	0,
	'Time::get_day',
	0);
INSERT INTO ACT_BLK
	VALUES (1981,
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
	1980,
	0);
INSERT INTO S_BRG
	VALUES (1982,
	1953,
	'get_month',
	'',
	1,
	30,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (1983,
	1982,
	'date',
	272,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (1984,
	1982);
INSERT INTO ACT_ACT
	VALUES (1984,
	'bridge',
	0,
	1985,
	0,
	0,
	'Time::get_month',
	0);
INSERT INTO ACT_BLK
	VALUES (1985,
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
	1984,
	0);
INSERT INTO S_BRG
	VALUES (1986,
	1953,
	'get_year',
	'',
	1,
	30,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (1987,
	1986,
	'date',
	272,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (1988,
	1986);
INSERT INTO ACT_ACT
	VALUES (1988,
	'bridge',
	0,
	1989,
	0,
	0,
	'Time::get_year',
	0);
INSERT INTO ACT_BLK
	VALUES (1989,
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
	1988,
	0);
INSERT INTO S_BRG
	VALUES (1990,
	1953,
	'current_clock',
	'',
	1,
	278,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (1991,
	1990);
INSERT INTO ACT_ACT
	VALUES (1991,
	'bridge',
	0,
	1992,
	0,
	0,
	'Time::current_clock',
	0);
INSERT INTO ACT_BLK
	VALUES (1992,
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
	1991,
	0);
INSERT INTO S_BRG
	VALUES (1833,
	1953,
	'timer_start',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Returns the instance
handle of the timer.',
	1,
	332,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (1993,
	1833,
	'microseconds',
	30,
	0,
	'',
	1994,
	'');
INSERT INTO S_BPARM
	VALUES (1994,
	1833,
	'event_inst',
	335,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (1995,
	1833);
INSERT INTO ACT_ACT
	VALUES (1995,
	'bridge',
	0,
	1996,
	0,
	0,
	'Time::timer_start',
	0);
INSERT INTO ACT_BLK
	VALUES (1996,
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
	1995,
	0);
INSERT INTO S_BRG
	VALUES (1997,
	1953,
	'timer_start_recurring',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Upon expiration, the
timer will be restarted and fire again in the specified number of microseconds
generating the passed event. This bridge operation returns the instance handle
of the timer.',
	1,
	332,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (1998,
	1997,
	'microseconds',
	30,
	0,
	'',
	1999,
	'');
INSERT INTO S_BPARM
	VALUES (1999,
	1997,
	'event_inst',
	335,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2000,
	1997);
INSERT INTO ACT_ACT
	VALUES (2000,
	'bridge',
	0,
	2001,
	0,
	0,
	'Time::timer_start_recurring',
	0);
INSERT INTO ACT_BLK
	VALUES (2001,
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
	2000,
	0);
INSERT INTO S_BRG
	VALUES (2002,
	1953,
	'timer_remaining_time',
	'Returns the time remaining (in microseconds) for the passed timer instance. If
the timer has expired, a zero value is returned.',
	1,
	30,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2003,
	2002,
	'timer_inst_ref',
	332,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2004,
	2002);
INSERT INTO ACT_ACT
	VALUES (2004,
	'bridge',
	0,
	2005,
	0,
	0,
	'Time::timer_remaining_time',
	0);
INSERT INTO ACT_BLK
	VALUES (2005,
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
	2004,
	0);
INSERT INTO S_BRG
	VALUES (2006,
	1953,
	'timer_reset_time',
	'This bridge operation attempts to set the passed existing timer to expire in
the specified number of microseconds. If the timer exists (that is, it has not
expired), a TRUE value is returned. If the timer no longer exists, a FALSE value
is returned.',
	1,
	108,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2007,
	2006,
	'timer_inst_ref',
	332,
	0,
	'',
	2008,
	'');
INSERT INTO S_BPARM
	VALUES (2008,
	2006,
	'microseconds',
	30,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2009,
	2006);
INSERT INTO ACT_ACT
	VALUES (2009,
	'bridge',
	0,
	2010,
	0,
	0,
	'Time::timer_reset_time',
	0);
INSERT INTO ACT_BLK
	VALUES (2010,
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
	2009,
	0);
INSERT INTO S_BRG
	VALUES (2011,
	1953,
	'timer_add_time',
	'This bridge operation attempts to add the specified number of microseconds to a
passed existing timer. If the timer exists (that is, it has not expired), a TRUE
value is returned. If the timer no longer exists, a FALSE value is returned.',
	1,
	108,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2012,
	2011,
	'timer_inst_ref',
	332,
	0,
	'',
	2013,
	'');
INSERT INTO S_BPARM
	VALUES (2013,
	2011,
	'microseconds',
	30,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2014,
	2011);
INSERT INTO ACT_ACT
	VALUES (2014,
	'bridge',
	0,
	2015,
	0,
	0,
	'Time::timer_add_time',
	0);
INSERT INTO ACT_BLK
	VALUES (2015,
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
	2014,
	0);
INSERT INTO S_BRG
	VALUES (2016,
	1953,
	'timer_cancel',
	'This bridge operation cancels and deletes the passed timer instance. If the 
timer exists (that is, it had not expired), a TRUE value is returned. If the
timer no longer exists, a FALSE value is returned.',
	1,
	108,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2017,
	2016,
	'timer_inst_ref',
	332,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2018,
	2016);
INSERT INTO ACT_ACT
	VALUES (2018,
	'bridge',
	0,
	2019,
	0,
	0,
	'Time::timer_cancel',
	0);
INSERT INTO ACT_BLK
	VALUES (2019,
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
	2018,
	0);
INSERT INTO PE_PE
	VALUES (2020,
	1,
	1793,
	0,
	5);
INSERT INTO S_EE
	VALUES (2020,
	'Graphical User Interface',
	'',
	'GuiBridge',
	0,
	'',
	'Graphical User Interface',
	1);
INSERT INTO S_BRG
	VALUES (1877,
	2020,
	'feedSetTargetPressedEvent',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2021,
	1877,
	'evt',
	335,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2022,
	1877);
INSERT INTO ACT_ACT
	VALUES (2022,
	'bridge',
	0,
	2023,
	0,
	0,
	'Graphical User Interface::feedSetTargetPressedEvent',
	0);
INSERT INTO ACT_BLK
	VALUES (2023,
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
	2022,
	0);
INSERT INTO S_BRG
	VALUES (1892,
	2020,
	'feedModePressedEvent',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2024,
	1892,
	'evt',
	335,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2025,
	1892);
INSERT INTO ACT_ACT
	VALUES (2025,
	'bridge',
	0,
	2026,
	0,
	0,
	'Graphical User Interface::feedModePressedEvent',
	0);
INSERT INTO ACT_BLK
	VALUES (2026,
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
	2025,
	0);
INSERT INTO S_BRG
	VALUES (1889,
	2020,
	'feedLightPressedEvent',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2027,
	1889,
	'evt',
	335,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2028,
	1889);
INSERT INTO ACT_ACT
	VALUES (2028,
	'bridge',
	0,
	2029,
	0,
	0,
	'Graphical User Interface::feedLightPressedEvent',
	0);
INSERT INTO ACT_BLK
	VALUES (2029,
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
	2028,
	0);
INSERT INTO S_BRG
	VALUES (1885,
	2020,
	'feedLapResetPressedEvent',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2030,
	1885,
	'evt',
	335,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2031,
	1885);
INSERT INTO ACT_ACT
	VALUES (2031,
	'bridge',
	0,
	2032,
	0,
	0,
	'Graphical User Interface::feedLapResetPressedEvent',
	0);
INSERT INTO ACT_BLK
	VALUES (2032,
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
	2031,
	0);
INSERT INTO S_BRG
	VALUES (1881,
	2020,
	'feedStartStopPressedEvent',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2033,
	1881,
	'evt',
	335,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2034,
	1881);
INSERT INTO ACT_ACT
	VALUES (2034,
	'bridge',
	0,
	2035,
	0,
	0,
	'Graphical User Interface::feedStartStopPressedEvent',
	0);
INSERT INTO ACT_BLK
	VALUES (2035,
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
	2034,
	0);
INSERT INTO S_BRG
	VALUES (2036,
	2020,
	'setData',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2037,
	2036,
	'value',
	10,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2038,
	2036,
	'unit',
	30,
	0,
	'',
	2037,
	'');
INSERT INTO ACT_BRB
	VALUES (2039,
	2036);
INSERT INTO ACT_ACT
	VALUES (2039,
	'bridge',
	0,
	2040,
	0,
	0,
	'Graphical User Interface::setData',
	0);
INSERT INTO ACT_BLK
	VALUES (2040,
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
	2039,
	0);
INSERT INTO S_BRG
	VALUES (2041,
	2020,
	'setTime',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2042,
	2041,
	'time',
	30,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2043,
	2041);
INSERT INTO ACT_ACT
	VALUES (2043,
	'bridge',
	0,
	2044,
	0,
	0,
	'Graphical User Interface::setTime',
	0);
INSERT INTO ACT_BLK
	VALUES (2044,
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
	2043,
	0);
INSERT INTO S_BRG
	VALUES (1872,
	2020,
	'connect',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (2045,
	1872);
INSERT INTO ACT_ACT
	VALUES (2045,
	'bridge',
	0,
	2046,
	0,
	0,
	'Graphical User Interface::connect',
	0);
INSERT INTO ACT_BLK
	VALUES (2046,
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
	2045,
	0);
INSERT INTO S_BRG
	VALUES (2047,
	2020,
	'setIndicator',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2048,
	2047,
	'value',
	30,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2049,
	2047);
INSERT INTO ACT_ACT
	VALUES (2049,
	'bridge',
	0,
	2050,
	0,
	0,
	'Graphical User Interface::setIndicator',
	0);
INSERT INTO ACT_BLK
	VALUES (2050,
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
	2049,
	0);
INSERT INTO PE_PE
	VALUES (2051,
	1,
	1793,
	0,
	5);
INSERT INTO S_EE
	VALUES (2051,
	'Logging',
	'',
	'LOG',
	0,
	'',
	'Logging',
	1);
INSERT INTO S_BRG
	VALUES (2052,
	2051,
	'LogSuccess',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2053,
	2052,
	'message',
	130,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2054,
	2052);
INSERT INTO ACT_ACT
	VALUES (2054,
	'bridge',
	0,
	2055,
	0,
	0,
	'Logging::LogSuccess',
	0);
INSERT INTO ACT_BLK
	VALUES (2055,
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
	2054,
	0);
INSERT INTO S_BRG
	VALUES (2056,
	2051,
	'LogFailure',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2057,
	2056,
	'message',
	130,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2058,
	2056);
INSERT INTO ACT_ACT
	VALUES (2058,
	'bridge',
	0,
	2059,
	0,
	0,
	'Logging::LogFailure',
	0);
INSERT INTO ACT_BLK
	VALUES (2059,
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
	2058,
	0);
INSERT INTO S_BRG
	VALUES (1843,
	2051,
	'LogInfo',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2060,
	1843,
	'message',
	130,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2061,
	1843);
INSERT INTO ACT_ACT
	VALUES (2061,
	'bridge',
	0,
	2062,
	0,
	0,
	'Logging::LogInfo',
	0);
INSERT INTO ACT_BLK
	VALUES (2062,
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
	2061,
	0);
INSERT INTO S_BRG
	VALUES (2063,
	2051,
	'LogDate',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2064,
	2063,
	'd',
	272,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2065,
	2063,
	'message',
	130,
	0,
	'',
	2064,
	'');
INSERT INTO ACT_BRB
	VALUES (2066,
	2063);
INSERT INTO ACT_ACT
	VALUES (2066,
	'bridge',
	0,
	2067,
	0,
	0,
	'Logging::LogDate',
	0);
INSERT INTO ACT_BLK
	VALUES (2067,
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
	2066,
	0);
INSERT INTO S_BRG
	VALUES (2068,
	2051,
	'LogTime',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2069,
	2068,
	't',
	278,
	0,
	'',
	2070,
	'');
INSERT INTO S_BPARM
	VALUES (2070,
	2068,
	'message',
	130,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2071,
	2068);
INSERT INTO ACT_ACT
	VALUES (2071,
	'bridge',
	0,
	2072,
	0,
	0,
	'Logging::LogTime',
	0);
INSERT INTO ACT_BLK
	VALUES (2072,
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
	2071,
	0);
INSERT INTO S_BRG
	VALUES (2073,
	2051,
	'LogReal',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2074,
	2073,
	'r',
	10,
	0,
	'',
	2075,
	'');
INSERT INTO S_BPARM
	VALUES (2075,
	2073,
	'message',
	130,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2076,
	2073);
INSERT INTO ACT_ACT
	VALUES (2076,
	'bridge',
	0,
	2077,
	0,
	0,
	'Logging::LogReal',
	0);
INSERT INTO ACT_BLK
	VALUES (2077,
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
	2076,
	0);
INSERT INTO S_BRG
	VALUES (2078,
	2051,
	'LogInteger',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2079,
	2078,
	'message',
	30,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2080,
	2078);
INSERT INTO ACT_ACT
	VALUES (2080,
	'bridge',
	0,
	2081,
	0,
	0,
	'Logging::LogInteger',
	0);
INSERT INTO ACT_BLK
	VALUES (2081,
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
	2080,
	0);
INSERT INTO PE_PE
	VALUES (2082,
	1,
	1793,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (2082,
	0,
	'createGoals_1',
	'',
	'// Create some goal specifications.
send Tracking::newGoalSpec( 
  sequenceNumber: 1,
  minimum: 2.0,
  maximum: 8.0,
  span: 150.0,
  criteriaType: GoalCriteria::Pace,
  spanType: GoalSpan::Distance );
  
send Tracking::newGoalSpec( 
  sequenceNumber: 2,
  minimum: 60.0,
  maximum: 80.0,
  span: 10,
  criteriaType: GoalCriteria::HeartRate,
  spanType: GoalSpan::Time );
  
send Tracking::newGoalSpec( 
  sequenceNumber: 3,
  minimum: 5.0,
  maximum: 6.0,
  span: 15,
  criteriaType: GoalCriteria::Pace,
  spanType: GoalSpan::Time );
  
send Tracking::newGoalSpec( 
  sequenceNumber: 4,
  minimum: 1.0,
  maximum: 2.0,
  span: 15,
  criteriaType: GoalCriteria::Pace,
  spanType: GoalSpan::Time );
  ',
	6,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (2083,
	2082);
INSERT INTO ACT_ACT
	VALUES (2083,
	'function',
	0,
	2084,
	0,
	0,
	'createGoals_1',
	0);
INSERT INTO ACT_BLK
	VALUES (2084,
	0,
	0,
	0,
	'Tracking',
	'',
	'',
	26,
	1,
	26,
	6,
	0,
	0,
	0,
	0,
	0,
	0,
	32,
	13,
	0,
	2083,
	0);
INSERT INTO ACT_SMT
	VALUES (2085,
	2084,
	2086,
	2,
	1,
	'createGoals_1 line: 2');
INSERT INTO ACT_IOP
	VALUES (2085,
	2,
	16,
	2,
	6,
	0,
	1785,
	0);
INSERT INTO ACT_SMT
	VALUES (2086,
	2084,
	2087,
	10,
	1,
	'createGoals_1 line: 10');
INSERT INTO ACT_IOP
	VALUES (2086,
	10,
	16,
	10,
	6,
	0,
	1785,
	0);
INSERT INTO ACT_SMT
	VALUES (2087,
	2084,
	2088,
	18,
	1,
	'createGoals_1 line: 18');
INSERT INTO ACT_IOP
	VALUES (2087,
	18,
	16,
	18,
	6,
	0,
	1785,
	0);
INSERT INTO ACT_SMT
	VALUES (2088,
	2084,
	0,
	26,
	1,
	'createGoals_1 line: 26');
INSERT INTO ACT_IOP
	VALUES (2088,
	26,
	16,
	26,
	6,
	0,
	1785,
	0);
INSERT INTO V_VAL
	VALUES (2089,
	0,
	0,
	3,
	19,
	19,
	0,
	0,
	0,
	0,
	30,
	2084);
INSERT INTO V_LIN
	VALUES (2089,
	'1');
INSERT INTO V_PAR
	VALUES (2089,
	2085,
	0,
	'sequenceNumber',
	2090,
	3,
	3);
INSERT INTO V_VAL
	VALUES (2090,
	0,
	0,
	4,
	12,
	14,
	0,
	0,
	0,
	0,
	10,
	2084);
INSERT INTO V_LRL
	VALUES (2090,
	'2.0');
INSERT INTO V_PAR
	VALUES (2090,
	2085,
	0,
	'minimum',
	2091,
	4,
	3);
INSERT INTO V_VAL
	VALUES (2091,
	0,
	0,
	5,
	12,
	14,
	0,
	0,
	0,
	0,
	10,
	2084);
INSERT INTO V_LRL
	VALUES (2091,
	'8.0');
INSERT INTO V_PAR
	VALUES (2091,
	2085,
	0,
	'maximum',
	2092,
	5,
	3);
INSERT INTO V_VAL
	VALUES (2092,
	0,
	0,
	6,
	9,
	13,
	0,
	0,
	0,
	0,
	10,
	2084);
INSERT INTO V_LRL
	VALUES (2092,
	'150.0');
INSERT INTO V_PAR
	VALUES (2092,
	2085,
	0,
	'span',
	2093,
	6,
	3);
INSERT INTO V_VAL
	VALUES (2093,
	0,
	0,
	7,
	31,
	34,
	0,
	0,
	0,
	0,
	37,
	2084);
INSERT INTO V_LEN
	VALUES (2093,
	375,
	7,
	17);
INSERT INTO V_PAR
	VALUES (2093,
	2085,
	0,
	'criteriaType',
	2094,
	7,
	3);
INSERT INTO V_VAL
	VALUES (2094,
	0,
	0,
	8,
	23,
	30,
	0,
	0,
	0,
	0,
	39,
	2084);
INSERT INTO V_LEN
	VALUES (2094,
	377,
	8,
	13);
INSERT INTO V_PAR
	VALUES (2094,
	2085,
	0,
	'spanType',
	0,
	8,
	3);
INSERT INTO V_VAL
	VALUES (2095,
	0,
	0,
	11,
	19,
	19,
	0,
	0,
	0,
	0,
	30,
	2084);
INSERT INTO V_LIN
	VALUES (2095,
	'2');
INSERT INTO V_PAR
	VALUES (2095,
	2086,
	0,
	'sequenceNumber',
	2096,
	11,
	3);
INSERT INTO V_VAL
	VALUES (2096,
	0,
	0,
	12,
	12,
	15,
	0,
	0,
	0,
	0,
	10,
	2084);
INSERT INTO V_LRL
	VALUES (2096,
	'60.0');
INSERT INTO V_PAR
	VALUES (2096,
	2086,
	0,
	'minimum',
	2097,
	12,
	3);
INSERT INTO V_VAL
	VALUES (2097,
	0,
	0,
	13,
	12,
	15,
	0,
	0,
	0,
	0,
	10,
	2084);
INSERT INTO V_LRL
	VALUES (2097,
	'80.0');
INSERT INTO V_PAR
	VALUES (2097,
	2086,
	0,
	'maximum',
	2098,
	13,
	3);
INSERT INTO V_VAL
	VALUES (2098,
	0,
	0,
	14,
	9,
	10,
	0,
	0,
	0,
	0,
	30,
	2084);
INSERT INTO V_LIN
	VALUES (2098,
	'10');
INSERT INTO V_PAR
	VALUES (2098,
	2086,
	0,
	'span',
	2099,
	14,
	3);
INSERT INTO V_VAL
	VALUES (2099,
	0,
	0,
	15,
	31,
	39,
	0,
	0,
	0,
	0,
	37,
	2084);
INSERT INTO V_LEN
	VALUES (2099,
	383,
	15,
	17);
INSERT INTO V_PAR
	VALUES (2099,
	2086,
	0,
	'criteriaType',
	2100,
	15,
	3);
INSERT INTO V_VAL
	VALUES (2100,
	0,
	0,
	16,
	23,
	26,
	0,
	0,
	0,
	0,
	39,
	2084);
INSERT INTO V_LEN
	VALUES (2100,
	385,
	16,
	13);
INSERT INTO V_PAR
	VALUES (2100,
	2086,
	0,
	'spanType',
	0,
	16,
	3);
INSERT INTO V_VAL
	VALUES (2101,
	0,
	0,
	19,
	19,
	19,
	0,
	0,
	0,
	0,
	30,
	2084);
INSERT INTO V_LIN
	VALUES (2101,
	'3');
INSERT INTO V_PAR
	VALUES (2101,
	2087,
	0,
	'sequenceNumber',
	2102,
	19,
	3);
INSERT INTO V_VAL
	VALUES (2102,
	0,
	0,
	20,
	12,
	14,
	0,
	0,
	0,
	0,
	10,
	2084);
INSERT INTO V_LRL
	VALUES (2102,
	'5.0');
INSERT INTO V_PAR
	VALUES (2102,
	2087,
	0,
	'minimum',
	2103,
	20,
	3);
INSERT INTO V_VAL
	VALUES (2103,
	0,
	0,
	21,
	12,
	14,
	0,
	0,
	0,
	0,
	10,
	2084);
INSERT INTO V_LRL
	VALUES (2103,
	'6.0');
INSERT INTO V_PAR
	VALUES (2103,
	2087,
	0,
	'maximum',
	2104,
	21,
	3);
INSERT INTO V_VAL
	VALUES (2104,
	0,
	0,
	22,
	9,
	10,
	0,
	0,
	0,
	0,
	30,
	2084);
INSERT INTO V_LIN
	VALUES (2104,
	'15');
INSERT INTO V_PAR
	VALUES (2104,
	2087,
	0,
	'span',
	2105,
	22,
	3);
INSERT INTO V_VAL
	VALUES (2105,
	0,
	0,
	23,
	31,
	34,
	0,
	0,
	0,
	0,
	37,
	2084);
INSERT INTO V_LEN
	VALUES (2105,
	375,
	23,
	17);
INSERT INTO V_PAR
	VALUES (2105,
	2087,
	0,
	'criteriaType',
	2106,
	23,
	3);
INSERT INTO V_VAL
	VALUES (2106,
	0,
	0,
	24,
	23,
	26,
	0,
	0,
	0,
	0,
	39,
	2084);
INSERT INTO V_LEN
	VALUES (2106,
	385,
	24,
	13);
INSERT INTO V_PAR
	VALUES (2106,
	2087,
	0,
	'spanType',
	0,
	24,
	3);
INSERT INTO V_VAL
	VALUES (2107,
	0,
	0,
	27,
	19,
	19,
	0,
	0,
	0,
	0,
	30,
	2084);
INSERT INTO V_LIN
	VALUES (2107,
	'4');
INSERT INTO V_PAR
	VALUES (2107,
	2088,
	0,
	'sequenceNumber',
	2108,
	27,
	3);
INSERT INTO V_VAL
	VALUES (2108,
	0,
	0,
	28,
	12,
	14,
	0,
	0,
	0,
	0,
	10,
	2084);
INSERT INTO V_LRL
	VALUES (2108,
	'1.0');
INSERT INTO V_PAR
	VALUES (2108,
	2088,
	0,
	'minimum',
	2109,
	28,
	3);
INSERT INTO V_VAL
	VALUES (2109,
	0,
	0,
	29,
	12,
	14,
	0,
	0,
	0,
	0,
	10,
	2084);
INSERT INTO V_LRL
	VALUES (2109,
	'2.0');
INSERT INTO V_PAR
	VALUES (2109,
	2088,
	0,
	'maximum',
	2110,
	29,
	3);
INSERT INTO V_VAL
	VALUES (2110,
	0,
	0,
	30,
	9,
	10,
	0,
	0,
	0,
	0,
	30,
	2084);
INSERT INTO V_LIN
	VALUES (2110,
	'15');
INSERT INTO V_PAR
	VALUES (2110,
	2088,
	0,
	'span',
	2111,
	30,
	3);
INSERT INTO V_VAL
	VALUES (2111,
	0,
	0,
	31,
	31,
	34,
	0,
	0,
	0,
	0,
	37,
	2084);
INSERT INTO V_LEN
	VALUES (2111,
	375,
	31,
	17);
INSERT INTO V_PAR
	VALUES (2111,
	2088,
	0,
	'criteriaType',
	2112,
	31,
	3);
INSERT INTO V_VAL
	VALUES (2112,
	0,
	0,
	32,
	23,
	26,
	0,
	0,
	0,
	0,
	39,
	2084);
INSERT INTO V_LEN
	VALUES (2112,
	385,
	32,
	13);
INSERT INTO V_PAR
	VALUES (2112,
	2088,
	0,
	'spanType',
	0,
	32,
	3);
INSERT INTO PE_PE
	VALUES (2113,
	1,
	1793,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (2113,
	0,
	'init',
	'',
	'GuiBridge::connect();',
	6,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (2114,
	2113);
INSERT INTO ACT_ACT
	VALUES (2114,
	'function',
	0,
	2115,
	0,
	0,
	'init',
	0);
INSERT INTO ACT_BLK
	VALUES (2115,
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	1,
	1,
	1,
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
	2114,
	0);
INSERT INTO ACT_SMT
	VALUES (2116,
	2115,
	0,
	1,
	1,
	'init line: 1');
INSERT INTO ACT_BRG
	VALUES (2116,
	1872,
	1,
	12,
	1,
	1);
INSERT INTO PE_PE
	VALUES (2117,
	1,
	1793,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (2117,
	0,
	'RunTestCase',
	'',
	'TestCase::execute();',
	6,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (2118,
	2117);
INSERT INTO ACT_ACT
	VALUES (2118,
	'function',
	0,
	2119,
	0,
	0,
	'RunTestCase',
	0);
INSERT INTO ACT_BLK
	VALUES (2119,
	0,
	0,
	0,
	'TestCase',
	'',
	'',
	1,
	1,
	1,
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
	2118,
	0);
INSERT INTO ACT_SMT
	VALUES (2120,
	2119,
	0,
	1,
	1,
	'RunTestCase line: 1');
INSERT INTO ACT_TFM
	VALUES (2120,
	1795,
	0,
	1,
	11,
	1,
	1);
INSERT INTO PE_PE
	VALUES (1931,
	1,
	1793,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (1931,
	0,
	'sendLapResetPressed',
	'',
	'send Tracking::lapResetPressed();',
	6,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (2121,
	1931);
INSERT INTO ACT_ACT
	VALUES (2121,
	'function',
	0,
	2122,
	0,
	0,
	'sendLapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2122,
	0,
	0,
	0,
	'Tracking',
	'',
	'',
	1,
	1,
	1,
	6,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2121,
	0);
INSERT INTO ACT_SMT
	VALUES (2123,
	2122,
	0,
	1,
	1,
	'sendLapResetPressed line: 1');
INSERT INTO ACT_IOP
	VALUES (2123,
	1,
	16,
	1,
	6,
	0,
	1777,
	0);
INSERT INTO PE_PE
	VALUES (1941,
	1,
	1793,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (1941,
	0,
	'sendLightPressed',
	'',
	'send Tracking::lightPressed();',
	6,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (2124,
	1941);
INSERT INTO ACT_ACT
	VALUES (2124,
	'function',
	0,
	2125,
	0,
	0,
	'sendLightPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2125,
	0,
	0,
	0,
	'Tracking',
	'',
	'',
	1,
	1,
	1,
	6,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2124,
	0);
INSERT INTO ACT_SMT
	VALUES (2126,
	2125,
	0,
	1,
	1,
	'sendLightPressed line: 1');
INSERT INTO ACT_IOP
	VALUES (2126,
	1,
	16,
	1,
	6,
	0,
	1789,
	0);
INSERT INTO PE_PE
	VALUES (1951,
	1,
	1793,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (1951,
	0,
	'sendModePressed',
	'',
	'send Tracking::modePressed();',
	6,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (2127,
	1951);
INSERT INTO ACT_ACT
	VALUES (2127,
	'function',
	0,
	2128,
	0,
	0,
	'sendModePressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2128,
	0,
	0,
	0,
	'Tracking',
	'',
	'',
	1,
	1,
	1,
	6,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2127,
	0);
INSERT INTO ACT_SMT
	VALUES (2129,
	2128,
	0,
	1,
	1,
	'sendModePressed line: 1');
INSERT INTO ACT_IOP
	VALUES (2129,
	1,
	16,
	1,
	6,
	0,
	1781,
	0);
INSERT INTO PE_PE
	VALUES (1921,
	1,
	1793,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (1921,
	0,
	'sendStartStopPressed',
	'',
	'send Tracking::startStopPressed();',
	6,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (2130,
	1921);
INSERT INTO ACT_ACT
	VALUES (2130,
	'function',
	0,
	2131,
	0,
	0,
	'sendStartStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2131,
	0,
	0,
	0,
	'Tracking',
	'',
	'',
	1,
	1,
	1,
	6,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2130,
	0);
INSERT INTO ACT_SMT
	VALUES (2132,
	2131,
	0,
	1,
	1,
	'sendStartStopPressed line: 1');
INSERT INTO ACT_IOP
	VALUES (2132,
	1,
	16,
	1,
	6,
	0,
	1773,
	0);
INSERT INTO PE_PE
	VALUES (1911,
	1,
	1793,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (1911,
	0,
	'sendTargetPressed',
	'',
	'send Tracking::setTargetPressed();',
	6,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (2133,
	1911);
INSERT INTO ACT_ACT
	VALUES (2133,
	'function',
	0,
	2134,
	0,
	0,
	'sendTargetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2134,
	0,
	0,
	0,
	'Tracking',
	'',
	'',
	1,
	1,
	1,
	6,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2133,
	0);
INSERT INTO ACT_SMT
	VALUES (2135,
	2134,
	0,
	1,
	1,
	'sendTargetPressed line: 1');
INSERT INTO ACT_IOP
	VALUES (2135,
	1,
	16,
	1,
	6,
	0,
	1769,
	0);
INSERT INTO PE_PE
	VALUES (1728,
	1,
	1793,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (1728,
	0,
	'setData',
	'',
	'if (param.unit == Unit::km)
  GuiBridge::setData(value: param.value, unit: 0);
elif (param.unit == Unit::meters)
  GuiBridge::setData(value: param.value, unit: 1);
elif (param.unit == Unit::minPerKm)
  GuiBridge::setData(value: param.value, unit: 2);
elif (param.unit == Unit::kmPerHour)
  GuiBridge::setData(value: param.value, unit: 3);
elif (param.unit == Unit::miles)
  GuiBridge::setData(value: param.value, unit: 4);
elif (param.unit == Unit::yards)
  GuiBridge::setData(value: param.value, unit: 5);
elif (param.unit == Unit::feet)
  GuiBridge::setData(value: param.value, unit: 6);
elif (param.unit == Unit::minPerMile)
  GuiBridge::setData(value: param.value, unit: 7);
elif (param.unit == Unit::mph)
  GuiBridge::setData(value: param.value, unit: 8);
elif (param.unit == Unit::bpm)
  GuiBridge::setData(value: param.value, unit: 9);
elif (param.unit == Unit::laps)
  GuiBridge::setData(value: param.value, unit: 10);
end if;
',
	6,
	1,
	'');
INSERT INTO S_SPARM
	VALUES (2136,
	1728,
	'value',
	10,
	0,
	'',
	0,
	'');
INSERT INTO S_SPARM
	VALUES (2137,
	1728,
	'unit',
	24,
	0,
	'',
	2136,
	'');
INSERT INTO ACT_FNB
	VALUES (2138,
	1728);
INSERT INTO ACT_ACT
	VALUES (2138,
	'function',
	0,
	2139,
	0,
	0,
	'setData',
	0);
INSERT INTO ACT_BLK
	VALUES (2139,
	0,
	0,
	0,
	'',
	'',
	'',
	21,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	21,
	21,
	0,
	2138,
	0);
INSERT INTO ACT_SMT
	VALUES (2140,
	2139,
	0,
	1,
	1,
	'setData line: 1');
INSERT INTO ACT_IF
	VALUES (2140,
	2141,
	2142,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2143,
	2139,
	0,
	3,
	1,
	'setData line: 3');
INSERT INTO ACT_EL
	VALUES (2143,
	2144,
	2145,
	2140);
INSERT INTO ACT_SMT
	VALUES (2146,
	2139,
	0,
	5,
	1,
	'setData line: 5');
INSERT INTO ACT_EL
	VALUES (2146,
	2147,
	2148,
	2140);
INSERT INTO ACT_SMT
	VALUES (2149,
	2139,
	0,
	7,
	1,
	'setData line: 7');
INSERT INTO ACT_EL
	VALUES (2149,
	2150,
	2151,
	2140);
INSERT INTO ACT_SMT
	VALUES (2152,
	2139,
	0,
	9,
	1,
	'setData line: 9');
INSERT INTO ACT_EL
	VALUES (2152,
	2153,
	2154,
	2140);
INSERT INTO ACT_SMT
	VALUES (2155,
	2139,
	0,
	11,
	1,
	'setData line: 11');
INSERT INTO ACT_EL
	VALUES (2155,
	2156,
	2157,
	2140);
INSERT INTO ACT_SMT
	VALUES (2158,
	2139,
	0,
	13,
	1,
	'setData line: 13');
INSERT INTO ACT_EL
	VALUES (2158,
	2159,
	2160,
	2140);
INSERT INTO ACT_SMT
	VALUES (2161,
	2139,
	0,
	15,
	1,
	'setData line: 15');
INSERT INTO ACT_EL
	VALUES (2161,
	2162,
	2163,
	2140);
INSERT INTO ACT_SMT
	VALUES (2164,
	2139,
	0,
	17,
	1,
	'setData line: 17');
INSERT INTO ACT_EL
	VALUES (2164,
	2165,
	2166,
	2140);
INSERT INTO ACT_SMT
	VALUES (2167,
	2139,
	0,
	19,
	1,
	'setData line: 19');
INSERT INTO ACT_EL
	VALUES (2167,
	2168,
	2169,
	2140);
INSERT INTO ACT_SMT
	VALUES (2170,
	2139,
	0,
	21,
	1,
	'setData line: 21');
INSERT INTO ACT_EL
	VALUES (2170,
	2171,
	2172,
	2140);
INSERT INTO V_VAL
	VALUES (2173,
	0,
	0,
	1,
	11,
	14,
	0,
	0,
	0,
	0,
	24,
	2139);
INSERT INTO V_PVL
	VALUES (2173,
	0,
	2137,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2142,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	2139);
INSERT INTO V_BIN
	VALUES (2142,
	2174,
	2173,
	'==');
INSERT INTO V_VAL
	VALUES (2174,
	0,
	0,
	1,
	25,
	26,
	0,
	0,
	0,
	0,
	24,
	2139);
INSERT INTO V_LEN
	VALUES (2174,
	508,
	1,
	19);
INSERT INTO V_VAL
	VALUES (2175,
	0,
	0,
	3,
	13,
	16,
	0,
	0,
	0,
	0,
	24,
	2139);
INSERT INTO V_PVL
	VALUES (2175,
	0,
	2137,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2145,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	2139);
INSERT INTO V_BIN
	VALUES (2145,
	2176,
	2175,
	'==');
INSERT INTO V_VAL
	VALUES (2176,
	0,
	0,
	3,
	27,
	32,
	0,
	0,
	0,
	0,
	24,
	2139);
INSERT INTO V_LEN
	VALUES (2176,
	512,
	3,
	21);
INSERT INTO V_VAL
	VALUES (2177,
	0,
	0,
	5,
	13,
	16,
	0,
	0,
	0,
	0,
	24,
	2139);
INSERT INTO V_PVL
	VALUES (2177,
	0,
	2137,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2148,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	2139);
INSERT INTO V_BIN
	VALUES (2148,
	2178,
	2177,
	'==');
INSERT INTO V_VAL
	VALUES (2178,
	0,
	0,
	5,
	27,
	34,
	0,
	0,
	0,
	0,
	24,
	2139);
INSERT INTO V_LEN
	VALUES (2178,
	553,
	5,
	21);
INSERT INTO V_VAL
	VALUES (2179,
	0,
	0,
	7,
	13,
	16,
	0,
	0,
	0,
	0,
	24,
	2139);
INSERT INTO V_PVL
	VALUES (2179,
	0,
	2137,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2151,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	2139);
INSERT INTO V_BIN
	VALUES (2151,
	2180,
	2179,
	'==');
INSERT INTO V_VAL
	VALUES (2180,
	0,
	0,
	7,
	27,
	35,
	0,
	0,
	0,
	0,
	24,
	2139);
INSERT INTO V_LEN
	VALUES (2180,
	532,
	7,
	21);
INSERT INTO V_VAL
	VALUES (2181,
	0,
	0,
	9,
	13,
	16,
	0,
	0,
	0,
	0,
	24,
	2139);
INSERT INTO V_PVL
	VALUES (2181,
	0,
	2137,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2154,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	2139);
INSERT INTO V_BIN
	VALUES (2154,
	2182,
	2181,
	'==');
INSERT INTO V_VAL
	VALUES (2182,
	0,
	0,
	9,
	27,
	31,
	0,
	0,
	0,
	0,
	24,
	2139);
INSERT INTO V_LEN
	VALUES (2182,
	2183,
	9,
	21);
INSERT INTO V_VAL
	VALUES (2184,
	0,
	0,
	11,
	13,
	16,
	0,
	0,
	0,
	0,
	24,
	2139);
INSERT INTO V_PVL
	VALUES (2184,
	0,
	2137,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2157,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	2139);
INSERT INTO V_BIN
	VALUES (2157,
	2185,
	2184,
	'==');
INSERT INTO V_VAL
	VALUES (2185,
	0,
	0,
	11,
	27,
	31,
	0,
	0,
	0,
	0,
	24,
	2139);
INSERT INTO V_LEN
	VALUES (2185,
	2186,
	11,
	21);
INSERT INTO V_VAL
	VALUES (2187,
	0,
	0,
	13,
	13,
	16,
	0,
	0,
	0,
	0,
	24,
	2139);
INSERT INTO V_PVL
	VALUES (2187,
	0,
	2137,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2160,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	2139);
INSERT INTO V_BIN
	VALUES (2160,
	2188,
	2187,
	'==');
INSERT INTO V_VAL
	VALUES (2188,
	0,
	0,
	13,
	27,
	30,
	0,
	0,
	0,
	0,
	24,
	2139);
INSERT INTO V_LEN
	VALUES (2188,
	2189,
	13,
	21);
INSERT INTO V_VAL
	VALUES (2190,
	0,
	0,
	15,
	13,
	16,
	0,
	0,
	0,
	0,
	24,
	2139);
INSERT INTO V_PVL
	VALUES (2190,
	0,
	2137,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2163,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	2139);
INSERT INTO V_BIN
	VALUES (2163,
	2191,
	2190,
	'==');
INSERT INTO V_VAL
	VALUES (2191,
	0,
	0,
	15,
	27,
	36,
	0,
	0,
	0,
	0,
	24,
	2139);
INSERT INTO V_LEN
	VALUES (2191,
	2192,
	15,
	21);
INSERT INTO V_VAL
	VALUES (2193,
	0,
	0,
	17,
	13,
	16,
	0,
	0,
	0,
	0,
	24,
	2139);
INSERT INTO V_PVL
	VALUES (2193,
	0,
	2137,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2166,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	2139);
INSERT INTO V_BIN
	VALUES (2166,
	2194,
	2193,
	'==');
INSERT INTO V_VAL
	VALUES (2194,
	0,
	0,
	17,
	27,
	29,
	0,
	0,
	0,
	0,
	24,
	2139);
INSERT INTO V_LEN
	VALUES (2194,
	2195,
	17,
	21);
INSERT INTO V_VAL
	VALUES (2196,
	0,
	0,
	19,
	13,
	16,
	0,
	0,
	0,
	0,
	24,
	2139);
INSERT INTO V_PVL
	VALUES (2196,
	0,
	2137,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2169,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	2139);
INSERT INTO V_BIN
	VALUES (2169,
	2197,
	2196,
	'==');
INSERT INTO V_VAL
	VALUES (2197,
	0,
	0,
	19,
	27,
	29,
	0,
	0,
	0,
	0,
	24,
	2139);
INSERT INTO V_LEN
	VALUES (2197,
	574,
	19,
	21);
INSERT INTO V_VAL
	VALUES (2198,
	0,
	0,
	21,
	13,
	16,
	0,
	0,
	0,
	0,
	24,
	2139);
INSERT INTO V_PVL
	VALUES (2198,
	0,
	2137,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2172,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	2139);
INSERT INTO V_BIN
	VALUES (2172,
	2199,
	2198,
	'==');
INSERT INTO V_VAL
	VALUES (2199,
	0,
	0,
	21,
	27,
	30,
	0,
	0,
	0,
	0,
	24,
	2139);
INSERT INTO V_LEN
	VALUES (2199,
	593,
	21,
	21);
INSERT INTO ACT_BLK
	VALUES (2141,
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	2,
	3,
	2,
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
	2138,
	0);
INSERT INTO ACT_SMT
	VALUES (2200,
	2141,
	0,
	2,
	3,
	'setData line: 2');
INSERT INTO ACT_BRG
	VALUES (2200,
	2036,
	2,
	14,
	2,
	3);
INSERT INTO V_VAL
	VALUES (2201,
	0,
	0,
	2,
	35,
	39,
	0,
	0,
	0,
	0,
	10,
	2141);
INSERT INTO V_PVL
	VALUES (2201,
	0,
	2136,
	0,
	0);
INSERT INTO V_PAR
	VALUES (2201,
	2200,
	0,
	'value',
	2202,
	2,
	22);
INSERT INTO V_VAL
	VALUES (2202,
	0,
	0,
	2,
	48,
	48,
	0,
	0,
	0,
	0,
	30,
	2141);
INSERT INTO V_LIN
	VALUES (2202,
	'0');
INSERT INTO V_PAR
	VALUES (2202,
	2200,
	0,
	'unit',
	0,
	2,
	42);
INSERT INTO ACT_BLK
	VALUES (2144,
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	4,
	3,
	4,
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
	2138,
	0);
INSERT INTO ACT_SMT
	VALUES (2203,
	2144,
	0,
	4,
	3,
	'setData line: 4');
INSERT INTO ACT_BRG
	VALUES (2203,
	2036,
	4,
	14,
	4,
	3);
INSERT INTO V_VAL
	VALUES (2204,
	0,
	0,
	4,
	35,
	39,
	0,
	0,
	0,
	0,
	10,
	2144);
INSERT INTO V_PVL
	VALUES (2204,
	0,
	2136,
	0,
	0);
INSERT INTO V_PAR
	VALUES (2204,
	2203,
	0,
	'value',
	2205,
	4,
	22);
INSERT INTO V_VAL
	VALUES (2205,
	0,
	0,
	4,
	48,
	48,
	0,
	0,
	0,
	0,
	30,
	2144);
INSERT INTO V_LIN
	VALUES (2205,
	'1');
INSERT INTO V_PAR
	VALUES (2205,
	2203,
	0,
	'unit',
	0,
	4,
	42);
INSERT INTO ACT_BLK
	VALUES (2147,
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	6,
	3,
	6,
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
	2138,
	0);
INSERT INTO ACT_SMT
	VALUES (2206,
	2147,
	0,
	6,
	3,
	'setData line: 6');
INSERT INTO ACT_BRG
	VALUES (2206,
	2036,
	6,
	14,
	6,
	3);
INSERT INTO V_VAL
	VALUES (2207,
	0,
	0,
	6,
	35,
	39,
	0,
	0,
	0,
	0,
	10,
	2147);
INSERT INTO V_PVL
	VALUES (2207,
	0,
	2136,
	0,
	0);
INSERT INTO V_PAR
	VALUES (2207,
	2206,
	0,
	'value',
	2208,
	6,
	22);
INSERT INTO V_VAL
	VALUES (2208,
	0,
	0,
	6,
	48,
	48,
	0,
	0,
	0,
	0,
	30,
	2147);
INSERT INTO V_LIN
	VALUES (2208,
	'2');
INSERT INTO V_PAR
	VALUES (2208,
	2206,
	0,
	'unit',
	0,
	6,
	42);
INSERT INTO ACT_BLK
	VALUES (2150,
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	8,
	3,
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
	2138,
	0);
INSERT INTO ACT_SMT
	VALUES (2209,
	2150,
	0,
	8,
	3,
	'setData line: 8');
INSERT INTO ACT_BRG
	VALUES (2209,
	2036,
	8,
	14,
	8,
	3);
INSERT INTO V_VAL
	VALUES (2210,
	0,
	0,
	8,
	35,
	39,
	0,
	0,
	0,
	0,
	10,
	2150);
INSERT INTO V_PVL
	VALUES (2210,
	0,
	2136,
	0,
	0);
INSERT INTO V_PAR
	VALUES (2210,
	2209,
	0,
	'value',
	2211,
	8,
	22);
INSERT INTO V_VAL
	VALUES (2211,
	0,
	0,
	8,
	48,
	48,
	0,
	0,
	0,
	0,
	30,
	2150);
INSERT INTO V_LIN
	VALUES (2211,
	'3');
INSERT INTO V_PAR
	VALUES (2211,
	2209,
	0,
	'unit',
	0,
	8,
	42);
INSERT INTO ACT_BLK
	VALUES (2153,
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	10,
	3,
	10,
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
	2138,
	0);
INSERT INTO ACT_SMT
	VALUES (2212,
	2153,
	0,
	10,
	3,
	'setData line: 10');
INSERT INTO ACT_BRG
	VALUES (2212,
	2036,
	10,
	14,
	10,
	3);
INSERT INTO V_VAL
	VALUES (2213,
	0,
	0,
	10,
	35,
	39,
	0,
	0,
	0,
	0,
	10,
	2153);
INSERT INTO V_PVL
	VALUES (2213,
	0,
	2136,
	0,
	0);
INSERT INTO V_PAR
	VALUES (2213,
	2212,
	0,
	'value',
	2214,
	10,
	22);
INSERT INTO V_VAL
	VALUES (2214,
	0,
	0,
	10,
	48,
	48,
	0,
	0,
	0,
	0,
	30,
	2153);
INSERT INTO V_LIN
	VALUES (2214,
	'4');
INSERT INTO V_PAR
	VALUES (2214,
	2212,
	0,
	'unit',
	0,
	10,
	42);
INSERT INTO ACT_BLK
	VALUES (2156,
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	12,
	3,
	12,
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
	2138,
	0);
INSERT INTO ACT_SMT
	VALUES (2215,
	2156,
	0,
	12,
	3,
	'setData line: 12');
INSERT INTO ACT_BRG
	VALUES (2215,
	2036,
	12,
	14,
	12,
	3);
INSERT INTO V_VAL
	VALUES (2216,
	0,
	0,
	12,
	35,
	39,
	0,
	0,
	0,
	0,
	10,
	2156);
INSERT INTO V_PVL
	VALUES (2216,
	0,
	2136,
	0,
	0);
INSERT INTO V_PAR
	VALUES (2216,
	2215,
	0,
	'value',
	2217,
	12,
	22);
INSERT INTO V_VAL
	VALUES (2217,
	0,
	0,
	12,
	48,
	48,
	0,
	0,
	0,
	0,
	30,
	2156);
INSERT INTO V_LIN
	VALUES (2217,
	'5');
INSERT INTO V_PAR
	VALUES (2217,
	2215,
	0,
	'unit',
	0,
	12,
	42);
INSERT INTO ACT_BLK
	VALUES (2159,
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	14,
	3,
	14,
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
	2138,
	0);
INSERT INTO ACT_SMT
	VALUES (2218,
	2159,
	0,
	14,
	3,
	'setData line: 14');
INSERT INTO ACT_BRG
	VALUES (2218,
	2036,
	14,
	14,
	14,
	3);
INSERT INTO V_VAL
	VALUES (2219,
	0,
	0,
	14,
	35,
	39,
	0,
	0,
	0,
	0,
	10,
	2159);
INSERT INTO V_PVL
	VALUES (2219,
	0,
	2136,
	0,
	0);
INSERT INTO V_PAR
	VALUES (2219,
	2218,
	0,
	'value',
	2220,
	14,
	22);
INSERT INTO V_VAL
	VALUES (2220,
	0,
	0,
	14,
	48,
	48,
	0,
	0,
	0,
	0,
	30,
	2159);
INSERT INTO V_LIN
	VALUES (2220,
	'6');
INSERT INTO V_PAR
	VALUES (2220,
	2218,
	0,
	'unit',
	0,
	14,
	42);
INSERT INTO ACT_BLK
	VALUES (2162,
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	16,
	3,
	16,
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
	2138,
	0);
INSERT INTO ACT_SMT
	VALUES (2221,
	2162,
	0,
	16,
	3,
	'setData line: 16');
INSERT INTO ACT_BRG
	VALUES (2221,
	2036,
	16,
	14,
	16,
	3);
INSERT INTO V_VAL
	VALUES (2222,
	0,
	0,
	16,
	35,
	39,
	0,
	0,
	0,
	0,
	10,
	2162);
INSERT INTO V_PVL
	VALUES (2222,
	0,
	2136,
	0,
	0);
INSERT INTO V_PAR
	VALUES (2222,
	2221,
	0,
	'value',
	2223,
	16,
	22);
INSERT INTO V_VAL
	VALUES (2223,
	0,
	0,
	16,
	48,
	48,
	0,
	0,
	0,
	0,
	30,
	2162);
INSERT INTO V_LIN
	VALUES (2223,
	'7');
INSERT INTO V_PAR
	VALUES (2223,
	2221,
	0,
	'unit',
	0,
	16,
	42);
INSERT INTO ACT_BLK
	VALUES (2165,
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	18,
	3,
	18,
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
	2138,
	0);
INSERT INTO ACT_SMT
	VALUES (2224,
	2165,
	0,
	18,
	3,
	'setData line: 18');
INSERT INTO ACT_BRG
	VALUES (2224,
	2036,
	18,
	14,
	18,
	3);
INSERT INTO V_VAL
	VALUES (2225,
	0,
	0,
	18,
	35,
	39,
	0,
	0,
	0,
	0,
	10,
	2165);
INSERT INTO V_PVL
	VALUES (2225,
	0,
	2136,
	0,
	0);
INSERT INTO V_PAR
	VALUES (2225,
	2224,
	0,
	'value',
	2226,
	18,
	22);
INSERT INTO V_VAL
	VALUES (2226,
	0,
	0,
	18,
	48,
	48,
	0,
	0,
	0,
	0,
	30,
	2165);
INSERT INTO V_LIN
	VALUES (2226,
	'8');
INSERT INTO V_PAR
	VALUES (2226,
	2224,
	0,
	'unit',
	0,
	18,
	42);
INSERT INTO ACT_BLK
	VALUES (2168,
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	20,
	3,
	20,
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
	2138,
	0);
INSERT INTO ACT_SMT
	VALUES (2227,
	2168,
	0,
	20,
	3,
	'setData line: 20');
INSERT INTO ACT_BRG
	VALUES (2227,
	2036,
	20,
	14,
	20,
	3);
INSERT INTO V_VAL
	VALUES (2228,
	0,
	0,
	20,
	35,
	39,
	0,
	0,
	0,
	0,
	10,
	2168);
INSERT INTO V_PVL
	VALUES (2228,
	0,
	2136,
	0,
	0);
INSERT INTO V_PAR
	VALUES (2228,
	2227,
	0,
	'value',
	2229,
	20,
	22);
INSERT INTO V_VAL
	VALUES (2229,
	0,
	0,
	20,
	48,
	48,
	0,
	0,
	0,
	0,
	30,
	2168);
INSERT INTO V_LIN
	VALUES (2229,
	'9');
INSERT INTO V_PAR
	VALUES (2229,
	2227,
	0,
	'unit',
	0,
	20,
	42);
INSERT INTO ACT_BLK
	VALUES (2171,
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	22,
	3,
	22,
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
	2138,
	0);
INSERT INTO ACT_SMT
	VALUES (2230,
	2171,
	0,
	22,
	3,
	'setData line: 22');
INSERT INTO ACT_BRG
	VALUES (2230,
	2036,
	22,
	14,
	22,
	3);
INSERT INTO V_VAL
	VALUES (2231,
	0,
	0,
	22,
	35,
	39,
	0,
	0,
	0,
	0,
	10,
	2171);
INSERT INTO V_PVL
	VALUES (2231,
	0,
	2136,
	0,
	0);
INSERT INTO V_PAR
	VALUES (2231,
	2230,
	0,
	'value',
	2232,
	22,
	22);
INSERT INTO V_VAL
	VALUES (2232,
	0,
	0,
	22,
	48,
	49,
	0,
	0,
	0,
	0,
	30,
	2171);
INSERT INTO V_LIN
	VALUES (2232,
	'10');
INSERT INTO V_PAR
	VALUES (2232,
	2230,
	0,
	'unit',
	0,
	22,
	42);
INSERT INTO PE_PE
	VALUES (1720,
	1,
	1793,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (1720,
	0,
	'setTime',
	'',
	'GuiBridge::setTime(time: param.time);',
	6,
	1,
	'');
INSERT INTO S_SPARM
	VALUES (2233,
	1720,
	'time',
	30,
	0,
	'',
	0,
	'');
INSERT INTO ACT_FNB
	VALUES (2234,
	1720);
INSERT INTO ACT_ACT
	VALUES (2234,
	'function',
	0,
	2235,
	0,
	0,
	'setTime',
	0);
INSERT INTO ACT_BLK
	VALUES (2235,
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	1,
	1,
	1,
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
	2234,
	0);
INSERT INTO ACT_SMT
	VALUES (2236,
	2235,
	0,
	1,
	1,
	'setTime line: 1');
INSERT INTO ACT_BRG
	VALUES (2236,
	2041,
	1,
	12,
	1,
	1);
INSERT INTO V_VAL
	VALUES (2237,
	0,
	0,
	1,
	32,
	35,
	0,
	0,
	0,
	0,
	30,
	2235);
INSERT INTO V_PVL
	VALUES (2237,
	0,
	2233,
	0,
	0);
INSERT INTO V_PAR
	VALUES (2237,
	2236,
	0,
	'time',
	0,
	1,
	20);
INSERT INTO PE_PE
	VALUES (1745,
	1,
	1793,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (1745,
	0,
	'setIndicator',
	'',
	'// Map values of UIDatatypes/Indicator to values defined in WatchGUI.java.
if ( param.indicator == Indicator::Blank  )
  GuiBridge::setIndicator( value: 0 );
elif ( param.indicator == Indicator::Down )
  GuiBridge::setIndicator( value: 1 );
elif ( param.indicator == Indicator::Flat )
  GuiBridge::setIndicator( value: 2 );
elif ( param.indicator == Indicator::Up )
  GuiBridge::setIndicator( value: 3 );
end if;',
	6,
	1,
	'');
INSERT INTO S_SPARM
	VALUES (2238,
	1745,
	'indicator',
	27,
	0,
	'',
	0,
	'');
INSERT INTO ACT_FNB
	VALUES (2239,
	1745);
INSERT INTO ACT_ACT
	VALUES (2239,
	'function',
	0,
	2240,
	0,
	0,
	'setIndicator',
	0);
INSERT INTO ACT_BLK
	VALUES (2240,
	0,
	0,
	0,
	'',
	'',
	'',
	8,
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	8,
	27,
	0,
	2239,
	0);
INSERT INTO ACT_SMT
	VALUES (2241,
	2240,
	0,
	2,
	1,
	'setIndicator line: 2');
INSERT INTO ACT_IF
	VALUES (2241,
	2242,
	2243,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2244,
	2240,
	0,
	4,
	1,
	'setIndicator line: 4');
INSERT INTO ACT_EL
	VALUES (2244,
	2245,
	2246,
	2241);
INSERT INTO ACT_SMT
	VALUES (2247,
	2240,
	0,
	6,
	1,
	'setIndicator line: 6');
INSERT INTO ACT_EL
	VALUES (2247,
	2248,
	2249,
	2241);
INSERT INTO ACT_SMT
	VALUES (2250,
	2240,
	0,
	8,
	1,
	'setIndicator line: 8');
INSERT INTO ACT_EL
	VALUES (2250,
	2251,
	2252,
	2241);
INSERT INTO V_VAL
	VALUES (2253,
	0,
	0,
	2,
	12,
	20,
	0,
	0,
	0,
	0,
	27,
	2240);
INSERT INTO V_PVL
	VALUES (2253,
	0,
	2238,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2243,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	2240);
INSERT INTO V_BIN
	VALUES (2243,
	2254,
	2253,
	'==');
INSERT INTO V_VAL
	VALUES (2254,
	0,
	0,
	2,
	36,
	40,
	0,
	0,
	0,
	0,
	27,
	2240);
INSERT INTO V_LEN
	VALUES (2254,
	442,
	2,
	25);
INSERT INTO V_VAL
	VALUES (2255,
	0,
	0,
	4,
	14,
	22,
	0,
	0,
	0,
	0,
	27,
	2240);
INSERT INTO V_PVL
	VALUES (2255,
	0,
	2238,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2246,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	2240);
INSERT INTO V_BIN
	VALUES (2246,
	2256,
	2255,
	'==');
INSERT INTO V_VAL
	VALUES (2256,
	0,
	0,
	4,
	38,
	41,
	0,
	0,
	0,
	0,
	27,
	2240);
INSERT INTO V_LEN
	VALUES (2256,
	470,
	4,
	27);
INSERT INTO V_VAL
	VALUES (2257,
	0,
	0,
	6,
	14,
	22,
	0,
	0,
	0,
	0,
	27,
	2240);
INSERT INTO V_PVL
	VALUES (2257,
	0,
	2238,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2249,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	2240);
INSERT INTO V_BIN
	VALUES (2249,
	2258,
	2257,
	'==');
INSERT INTO V_VAL
	VALUES (2258,
	0,
	0,
	6,
	38,
	41,
	0,
	0,
	0,
	0,
	27,
	2240);
INSERT INTO V_LEN
	VALUES (2258,
	474,
	6,
	27);
INSERT INTO V_VAL
	VALUES (2259,
	0,
	0,
	8,
	14,
	22,
	0,
	0,
	0,
	0,
	27,
	2240);
INSERT INTO V_PVL
	VALUES (2259,
	0,
	2238,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2252,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	2240);
INSERT INTO V_BIN
	VALUES (2252,
	2260,
	2259,
	'==');
INSERT INTO V_VAL
	VALUES (2260,
	0,
	0,
	8,
	38,
	39,
	0,
	0,
	0,
	0,
	27,
	2240);
INSERT INTO V_LEN
	VALUES (2260,
	466,
	8,
	27);
INSERT INTO ACT_BLK
	VALUES (2242,
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	3,
	3,
	3,
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
	2239,
	0);
INSERT INTO ACT_SMT
	VALUES (2261,
	2242,
	0,
	3,
	3,
	'setIndicator line: 3');
INSERT INTO ACT_BRG
	VALUES (2261,
	2047,
	3,
	14,
	3,
	3);
INSERT INTO V_VAL
	VALUES (2262,
	0,
	0,
	3,
	35,
	35,
	0,
	0,
	0,
	0,
	30,
	2242);
INSERT INTO V_LIN
	VALUES (2262,
	'0');
INSERT INTO V_PAR
	VALUES (2262,
	2261,
	0,
	'value',
	0,
	3,
	28);
INSERT INTO ACT_BLK
	VALUES (2245,
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	5,
	3,
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
	2239,
	0);
INSERT INTO ACT_SMT
	VALUES (2263,
	2245,
	0,
	5,
	3,
	'setIndicator line: 5');
INSERT INTO ACT_BRG
	VALUES (2263,
	2047,
	5,
	14,
	5,
	3);
INSERT INTO V_VAL
	VALUES (2264,
	0,
	0,
	5,
	35,
	35,
	0,
	0,
	0,
	0,
	30,
	2245);
INSERT INTO V_LIN
	VALUES (2264,
	'1');
INSERT INTO V_PAR
	VALUES (2264,
	2263,
	0,
	'value',
	0,
	5,
	28);
INSERT INTO ACT_BLK
	VALUES (2248,
	0,
	0,
	0,
	'GuiBridge',
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
	2239,
	0);
INSERT INTO ACT_SMT
	VALUES (2265,
	2248,
	0,
	7,
	3,
	'setIndicator line: 7');
INSERT INTO ACT_BRG
	VALUES (2265,
	2047,
	7,
	14,
	7,
	3);
INSERT INTO V_VAL
	VALUES (2266,
	0,
	0,
	7,
	35,
	35,
	0,
	0,
	0,
	0,
	30,
	2248);
INSERT INTO V_LIN
	VALUES (2266,
	'2');
INSERT INTO V_PAR
	VALUES (2266,
	2265,
	0,
	'value',
	0,
	7,
	28);
INSERT INTO ACT_BLK
	VALUES (2251,
	0,
	0,
	0,
	'GuiBridge',
	'',
	'',
	9,
	3,
	9,
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
	2239,
	0);
INSERT INTO ACT_SMT
	VALUES (2267,
	2251,
	0,
	9,
	3,
	'setIndicator line: 9');
INSERT INTO ACT_BRG
	VALUES (2267,
	2047,
	9,
	14,
	9,
	3);
INSERT INTO V_VAL
	VALUES (2268,
	0,
	0,
	9,
	35,
	35,
	0,
	0,
	0,
	0,
	30,
	2251);
INSERT INTO V_LIN
	VALUES (2268,
	'3');
INSERT INTO V_PAR
	VALUES (2268,
	2267,
	0,
	'value',
	0,
	9,
	28);
INSERT INTO PE_PE
	VALUES (1753,
	1,
	1793,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (1753,
	0,
	'newGoalSpec',
	'',
	'',
	6,
	1,
	'');
INSERT INTO S_SPARM
	VALUES (2269,
	1753,
	'sequenceNumber',
	30,
	0,
	'',
	0,
	'');
INSERT INTO S_SPARM
	VALUES (2270,
	1753,
	'minimum',
	10,
	0,
	'',
	2269,
	'');
INSERT INTO S_SPARM
	VALUES (2271,
	1753,
	'maximum',
	10,
	0,
	'',
	2270,
	'');
INSERT INTO S_SPARM
	VALUES (2272,
	1753,
	'span',
	10,
	0,
	'',
	2271,
	'');
INSERT INTO S_SPARM
	VALUES (2273,
	1753,
	'criteriaType',
	37,
	0,
	'',
	2272,
	'');
INSERT INTO S_SPARM
	VALUES (2274,
	1753,
	'spanType',
	39,
	0,
	'',
	2273,
	'');
INSERT INTO ACT_FNB
	VALUES (2275,
	1753);
INSERT INTO ACT_ACT
	VALUES (2275,
	'function',
	0,
	2276,
	0,
	0,
	'newGoalSpec',
	0);
INSERT INTO ACT_BLK
	VALUES (2276,
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
	2275,
	0);
INSERT INTO PE_PE
	VALUES (2277,
	1,
	1710,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (2277,
	0,
	1709,
	'shared',
	'',
	0);
INSERT INTO PE_PE
	VALUES (1714,
	1,
	2277,
	0,
	6);
INSERT INTO C_I
	VALUES (1714,
	0,
	'UI',
	'');
INSERT INTO C_EP
	VALUES (1716,
	1714,
	-1,
	'setTime',
	'');
INSERT INTO C_IO
	VALUES (1716,
	6,
	'setTime',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (1722,
	1716,
	30,
	'time',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (1724,
	1714,
	-1,
	'setData',
	'');
INSERT INTO C_IO
	VALUES (1724,
	6,
	'setData',
	'',
	0,
	'',
	1716);
INSERT INTO C_PP
	VALUES (1730,
	1724,
	10,
	'value',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (1732,
	1724,
	24,
	'unit',
	'',
	0,
	'',
	1730);
INSERT INTO C_EP
	VALUES (1734,
	1714,
	-1,
	'startTest',
	'');
INSERT INTO C_IO
	VALUES (1734,
	6,
	'startTest',
	'',
	0,
	'',
	1724);
INSERT INTO C_EP
	VALUES (1741,
	1714,
	-1,
	'setIndicator',
	'');
INSERT INTO C_IO
	VALUES (1741,
	6,
	'setIndicator',
	'',
	0,
	'',
	1734);
INSERT INTO C_PP
	VALUES (1747,
	1741,
	27,
	'indicator',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (1749,
	1714,
	-1,
	'newGoalSpec',
	'');
INSERT INTO C_IO
	VALUES (1749,
	6,
	'newGoalSpec',
	'',
	0,
	'',
	1741);
INSERT INTO C_PP
	VALUES (1755,
	1749,
	30,
	'sequenceNumber',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (1757,
	1749,
	10,
	'minimum',
	'',
	0,
	'',
	1755);
INSERT INTO C_PP
	VALUES (1759,
	1749,
	10,
	'maximum',
	'',
	0,
	'',
	1757);
INSERT INTO C_PP
	VALUES (1761,
	1749,
	10,
	'span',
	'',
	0,
	'',
	1759);
INSERT INTO C_PP
	VALUES (1763,
	1749,
	37,
	'criteriaType',
	'',
	0,
	'',
	1761);
INSERT INTO C_PP
	VALUES (1765,
	1749,
	39,
	'spanType',
	'',
	0,
	'',
	1763);
INSERT INTO PE_PE
	VALUES (1768,
	1,
	2277,
	0,
	6);
INSERT INTO C_I
	VALUES (1768,
	0,
	'UITracking',
	'');
INSERT INTO C_EP
	VALUES (1770,
	1768,
	-1,
	'setTargetPressed',
	'');
INSERT INTO C_IO
	VALUES (1770,
	6,
	'setTargetPressed',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (1774,
	1768,
	-1,
	'startStopPressed',
	'');
INSERT INTO C_IO
	VALUES (1774,
	6,
	'startStopPressed',
	'',
	0,
	'',
	1770);
INSERT INTO C_EP
	VALUES (1778,
	1768,
	-1,
	'lapResetPressed',
	'');
INSERT INTO C_IO
	VALUES (1778,
	6,
	'lapResetPressed',
	'',
	0,
	'',
	1774);
INSERT INTO C_EP
	VALUES (1782,
	1768,
	-1,
	'modePressed',
	'');
INSERT INTO C_IO
	VALUES (1782,
	6,
	'modePressed',
	'',
	0,
	'',
	1778);
INSERT INTO C_EP
	VALUES (1786,
	1768,
	-1,
	'newGoalSpec',
	'');
INSERT INTO C_IO
	VALUES (1786,
	6,
	'newGoalSpec',
	'',
	0,
	'',
	1782);
INSERT INTO C_PP
	VALUES (2278,
	1786,
	30,
	'sequenceNumber',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (2279,
	1786,
	10,
	'minimum',
	'',
	0,
	'',
	2278);
INSERT INTO C_PP
	VALUES (2280,
	1786,
	10,
	'maximum',
	'',
	0,
	'',
	2279);
INSERT INTO C_PP
	VALUES (2281,
	1786,
	10,
	'span',
	'',
	0,
	'',
	2280);
INSERT INTO C_PP
	VALUES (2282,
	1786,
	37,
	'criteriaType',
	'',
	0,
	'',
	2281);
INSERT INTO C_PP
	VALUES (2283,
	1786,
	39,
	'spanType',
	'',
	0,
	'',
	2282);
INSERT INTO C_EP
	VALUES (1790,
	1768,
	-1,
	'lightPressed',
	'');
INSERT INTO C_IO
	VALUES (1790,
	6,
	'lightPressed',
	'',
	0,
	'',
	1786);
INSERT INTO PE_PE
	VALUES (24,
	1,
	1710,
	0,
	3);
INSERT INTO S_DT
	VALUES (24,
	0,
	'Unit',
	'',
	'');
INSERT INTO S_EDT
	VALUES (24);
INSERT INTO S_ENUM
	VALUES (508,
	'km',
	'',
	24,
	0);
INSERT INTO S_ENUM
	VALUES (512,
	'meters',
	'',
	24,
	508);
INSERT INTO S_ENUM
	VALUES (553,
	'minPerKm',
	'',
	24,
	512);
INSERT INTO S_ENUM
	VALUES (532,
	'kmPerHour',
	'',
	24,
	553);
INSERT INTO S_ENUM
	VALUES (2183,
	'miles',
	'',
	24,
	532);
INSERT INTO S_ENUM
	VALUES (2186,
	'yards',
	'',
	24,
	2183);
INSERT INTO S_ENUM
	VALUES (2189,
	'feet',
	'',
	24,
	2186);
INSERT INTO S_ENUM
	VALUES (2192,
	'minPerMile',
	'',
	24,
	2189);
INSERT INTO S_ENUM
	VALUES (2195,
	'mph',
	'',
	24,
	2192);
INSERT INTO S_ENUM
	VALUES (574,
	'bpm',
	'',
	24,
	2195);
INSERT INTO S_ENUM
	VALUES (593,
	'laps',
	'',
	24,
	574);
INSERT INTO PE_PE
	VALUES (27,
	1,
	1710,
	0,
	3);
INSERT INTO S_DT
	VALUES (27,
	0,
	'Indicator',
	'',
	'');
INSERT INTO S_EDT
	VALUES (27);
INSERT INTO S_ENUM
	VALUES (442,
	'Blank',
	'',
	27,
	0);
INSERT INTO S_ENUM
	VALUES (470,
	'Down',
	'',
	27,
	442);
INSERT INTO S_ENUM
	VALUES (474,
	'Flat',
	'',
	27,
	470);
INSERT INTO S_ENUM
	VALUES (466,
	'Up',
	'',
	27,
	474);
-- root-types-contained: SystemModel_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES (2284,
	'HeartRateMonitor',
	1);
INSERT INTO EP_PKG
	VALUES (2285,
	2284,
	2284,
	'HeartRateMonitor',
	'',
	0);
INSERT INTO PE_PE
	VALUES (2286,
	1,
	2285,
	0,
	2);
INSERT INTO C_C
	VALUES (2286,
	0,
	0,
	'HeartRateMonitor',
	'Simulates a pulse monitor hardware/firmware. This component is only behavioral and included for testing purposes.',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (2287,
	2286,
	'HeartRateMonitor',
	0,
	0);
INSERT INTO C_IR
	VALUES (2288,
	2289,
	0,
	2287);
INSERT INTO C_P
	VALUES (2288,
	'HeartRateMonitor',
	'Unnamed Interface',
	'',
	'HeartRateMonitor::HeartRateMonitor::HeartRateMonitor');
INSERT INTO SPR_PEP
	VALUES (2290,
	2291,
	2288);
INSERT INTO SPR_PO
	VALUES (2290,
	'registerListener',
	'',
	'generate HeartRateMonitor_A1:registerListener() to HeartRateMonitor class;

',
	1);
INSERT INTO ACT_POB
	VALUES (2292,
	2290);
INSERT INTO ACT_ACT
	VALUES (2292,
	'interface operation',
	0,
	2293,
	0,
	0,
	'HeartRateMonitor::HeartRateMonitor::registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2293,
	0,
	0,
	0,
	'',
	'',
	'',
	1,
	1,
	1,
	52,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2292,
	0);
INSERT INTO ACT_SMT
	VALUES (2294,
	2293,
	0,
	1,
	1,
	'HeartRateMonitor::HeartRateMonitor::registerListener line: 1');
INSERT INTO E_ESS
	VALUES (2294,
	1,
	0,
	1,
	10,
	1,
	30,
	1,
	52,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (2294);
INSERT INTO E_GSME
	VALUES (2294,
	2295);
INSERT INTO E_GAR
	VALUES (2294);
INSERT INTO SPR_PEP
	VALUES (2296,
	2297,
	2288);
INSERT INTO SPR_PO
	VALUES (2296,
	'unregisterListener',
	'',
	'generate HeartRateMonitor_A2:unregisterListener() to HeartRateMonitor class;

',
	1);
INSERT INTO ACT_POB
	VALUES (2298,
	2296);
INSERT INTO ACT_ACT
	VALUES (2298,
	'interface operation',
	0,
	2299,
	0,
	0,
	'HeartRateMonitor::HeartRateMonitor::unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2299,
	0,
	0,
	0,
	'',
	'',
	'',
	1,
	1,
	1,
	54,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2298,
	0);
INSERT INTO ACT_SMT
	VALUES (2300,
	2299,
	0,
	1,
	1,
	'HeartRateMonitor::HeartRateMonitor::unregisterListener line: 1');
INSERT INTO E_ESS
	VALUES (2300,
	1,
	0,
	1,
	10,
	1,
	30,
	1,
	54,
	0,
	0,
	0,
	0);
INSERT INTO E_GES
	VALUES (2300);
INSERT INTO E_GSME
	VALUES (2300,
	2301);
INSERT INTO E_GAR
	VALUES (2300);
INSERT INTO C_PO
	VALUES (2302,
	2286,
	'Unspecified',
	0,
	0);
INSERT INTO C_IR
	VALUES (2303,
	2304,
	0,
	2302);
INSERT INTO C_R
	VALUES (2303,
	'HeartRateMonitorUnspecified',
	'',
	'Unnamed Interface',
	'HeartRateMonitor::Unspecified::HeartRateMonitorUnspecified');
INSERT INTO SPR_REP
	VALUES (2305,
	2306,
	2303);
INSERT INTO SPR_RO
	VALUES (2305,
	'heartRateChanged',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2307,
	2305);
INSERT INTO ACT_ACT
	VALUES (2307,
	'interface operation',
	0,
	2308,
	0,
	0,
	'Unspecified::HeartRateMonitorUnspecified::heartRateChanged',
	0);
INSERT INTO ACT_BLK
	VALUES (2308,
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
	2307,
	0);
INSERT INTO PE_PE
	VALUES (2309,
	1,
	0,
	2286,
	7);
INSERT INTO EP_PKG
	VALUES (2309,
	0,
	2284,
	'HeartRateMonitor',
	'',
	0);
INSERT INTO PE_PE
	VALUES (2310,
	1,
	2309,
	0,
	5);
INSERT INTO S_EE
	VALUES (2310,
	'Logging',
	'',
	'LOG',
	0,
	'',
	'Logging',
	1);
INSERT INTO S_BRG
	VALUES (2311,
	2310,
	'LogSuccess',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2312,
	2311,
	'message',
	130,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2313,
	2311);
INSERT INTO ACT_ACT
	VALUES (2313,
	'bridge',
	0,
	2314,
	0,
	0,
	'Logging::LogSuccess',
	0);
INSERT INTO ACT_BLK
	VALUES (2314,
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
	2313,
	0);
INSERT INTO S_BRG
	VALUES (2315,
	2310,
	'LogFailure',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2316,
	2315,
	'message',
	130,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2317,
	2315);
INSERT INTO ACT_ACT
	VALUES (2317,
	'bridge',
	0,
	2318,
	0,
	0,
	'Logging::LogFailure',
	0);
INSERT INTO ACT_BLK
	VALUES (2318,
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
	2317,
	0);
INSERT INTO S_BRG
	VALUES (2319,
	2310,
	'LogInfo',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2320,
	2319,
	'message',
	130,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2321,
	2319);
INSERT INTO ACT_ACT
	VALUES (2321,
	'bridge',
	0,
	2322,
	0,
	0,
	'Logging::LogInfo',
	0);
INSERT INTO ACT_BLK
	VALUES (2322,
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
	2321,
	0);
INSERT INTO S_BRG
	VALUES (2323,
	2310,
	'LogDate',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2324,
	2323,
	'd',
	272,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2325,
	2323,
	'message',
	130,
	0,
	'',
	2324,
	'');
INSERT INTO ACT_BRB
	VALUES (2326,
	2323);
INSERT INTO ACT_ACT
	VALUES (2326,
	'bridge',
	0,
	2327,
	0,
	0,
	'Logging::LogDate',
	0);
INSERT INTO ACT_BLK
	VALUES (2327,
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
	2326,
	0);
INSERT INTO S_BRG
	VALUES (2328,
	2310,
	'LogTime',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2329,
	2328,
	't',
	278,
	0,
	'',
	2330,
	'');
INSERT INTO S_BPARM
	VALUES (2330,
	2328,
	'message',
	130,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2331,
	2328);
INSERT INTO ACT_ACT
	VALUES (2331,
	'bridge',
	0,
	2332,
	0,
	0,
	'Logging::LogTime',
	0);
INSERT INTO ACT_BLK
	VALUES (2332,
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
	2331,
	0);
INSERT INTO S_BRG
	VALUES (2333,
	2310,
	'LogReal',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2334,
	2333,
	'r',
	10,
	0,
	'',
	2335,
	'');
INSERT INTO S_BPARM
	VALUES (2335,
	2333,
	'message',
	130,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2336,
	2333);
INSERT INTO ACT_ACT
	VALUES (2336,
	'bridge',
	0,
	2337,
	0,
	0,
	'Logging::LogReal',
	0);
INSERT INTO ACT_BLK
	VALUES (2337,
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
	2336,
	0);
INSERT INTO S_BRG
	VALUES (2338,
	2310,
	'LogInteger',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2339,
	2338,
	'message',
	30,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2340,
	2338);
INSERT INTO ACT_ACT
	VALUES (2340,
	'bridge',
	0,
	2341,
	0,
	0,
	'Logging::LogInteger',
	0);
INSERT INTO ACT_BLK
	VALUES (2341,
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
	2340,
	0);
INSERT INTO PE_PE
	VALUES (2342,
	1,
	2309,
	0,
	5);
INSERT INTO S_EE
	VALUES (2342,
	'Time',
	'The Time external entity provides date, timestamp, and timer related operations.',
	'TIM',
	0,
	'',
	'Time',
	1);
INSERT INTO S_BRG
	VALUES (2343,
	2342,
	'current_date',
	'',
	1,
	272,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (2344,
	2343);
INSERT INTO ACT_ACT
	VALUES (2344,
	'bridge',
	0,
	2345,
	0,
	0,
	'Time::current_date',
	0);
INSERT INTO ACT_BLK
	VALUES (2345,
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
	2344,
	0);
INSERT INTO S_BRG
	VALUES (2346,
	2342,
	'create_date',
	'',
	1,
	272,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2347,
	2346,
	'second',
	30,
	0,
	'',
	2348,
	'');
INSERT INTO S_BPARM
	VALUES (2349,
	2346,
	'minute',
	30,
	0,
	'',
	2350,
	'');
INSERT INTO S_BPARM
	VALUES (2350,
	2346,
	'hour',
	30,
	0,
	'',
	2351,
	'');
INSERT INTO S_BPARM
	VALUES (2351,
	2346,
	'day',
	30,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2348,
	2346,
	'month',
	30,
	0,
	'',
	2349,
	'');
INSERT INTO S_BPARM
	VALUES (2352,
	2346,
	'year',
	30,
	0,
	'',
	2347,
	'');
INSERT INTO ACT_BRB
	VALUES (2353,
	2346);
INSERT INTO ACT_ACT
	VALUES (2353,
	'bridge',
	0,
	2354,
	0,
	0,
	'Time::create_date',
	0);
INSERT INTO ACT_BLK
	VALUES (2354,
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
	2353,
	0);
INSERT INTO S_BRG
	VALUES (2355,
	2342,
	'get_second',
	'',
	1,
	30,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2356,
	2355,
	'date',
	272,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2357,
	2355);
INSERT INTO ACT_ACT
	VALUES (2357,
	'bridge',
	0,
	2358,
	0,
	0,
	'Time::get_second',
	0);
INSERT INTO ACT_BLK
	VALUES (2358,
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
	2357,
	0);
INSERT INTO S_BRG
	VALUES (2359,
	2342,
	'get_minute',
	'',
	1,
	30,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2360,
	2359,
	'date',
	272,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2361,
	2359);
INSERT INTO ACT_ACT
	VALUES (2361,
	'bridge',
	0,
	2362,
	0,
	0,
	'Time::get_minute',
	0);
INSERT INTO ACT_BLK
	VALUES (2362,
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
	2361,
	0);
INSERT INTO S_BRG
	VALUES (2363,
	2342,
	'get_hour',
	'',
	1,
	30,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2364,
	2363,
	'date',
	272,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2365,
	2363);
INSERT INTO ACT_ACT
	VALUES (2365,
	'bridge',
	0,
	2366,
	0,
	0,
	'Time::get_hour',
	0);
INSERT INTO ACT_BLK
	VALUES (2366,
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
	2365,
	0);
INSERT INTO S_BRG
	VALUES (2367,
	2342,
	'get_day',
	'',
	1,
	30,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2368,
	2367,
	'date',
	272,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2369,
	2367);
INSERT INTO ACT_ACT
	VALUES (2369,
	'bridge',
	0,
	2370,
	0,
	0,
	'Time::get_day',
	0);
INSERT INTO ACT_BLK
	VALUES (2370,
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
	2369,
	0);
INSERT INTO S_BRG
	VALUES (2371,
	2342,
	'get_month',
	'',
	1,
	30,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2372,
	2371,
	'date',
	272,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2373,
	2371);
INSERT INTO ACT_ACT
	VALUES (2373,
	'bridge',
	0,
	2374,
	0,
	0,
	'Time::get_month',
	0);
INSERT INTO ACT_BLK
	VALUES (2374,
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
	2373,
	0);
INSERT INTO S_BRG
	VALUES (2375,
	2342,
	'get_year',
	'',
	1,
	30,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2376,
	2375,
	'date',
	272,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2377,
	2375);
INSERT INTO ACT_ACT
	VALUES (2377,
	'bridge',
	0,
	2378,
	0,
	0,
	'Time::get_year',
	0);
INSERT INTO ACT_BLK
	VALUES (2378,
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
	2377,
	0);
INSERT INTO S_BRG
	VALUES (2379,
	2342,
	'current_clock',
	'',
	1,
	278,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (2380,
	2379);
INSERT INTO ACT_ACT
	VALUES (2380,
	'bridge',
	0,
	2381,
	0,
	0,
	'Time::current_clock',
	0);
INSERT INTO ACT_BLK
	VALUES (2381,
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
	2380,
	0);
INSERT INTO S_BRG
	VALUES (2382,
	2342,
	'timer_start',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Returns the instance
handle of the timer.',
	1,
	332,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2383,
	2382,
	'microseconds',
	30,
	0,
	'',
	2384,
	'');
INSERT INTO S_BPARM
	VALUES (2384,
	2382,
	'event_inst',
	335,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2385,
	2382);
INSERT INTO ACT_ACT
	VALUES (2385,
	'bridge',
	0,
	2386,
	0,
	0,
	'Time::timer_start',
	0);
INSERT INTO ACT_BLK
	VALUES (2386,
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
	2385,
	0);
INSERT INTO S_BRG
	VALUES (2387,
	2342,
	'timer_start_recurring',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Upon expiration, the
timer will be restarted and fire again in the specified number of microseconds
generating the passed event. This bridge operation returns the instance handle
of the timer.',
	1,
	332,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2388,
	2387,
	'microseconds',
	30,
	0,
	'',
	2389,
	'');
INSERT INTO S_BPARM
	VALUES (2389,
	2387,
	'event_inst',
	335,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2390,
	2387);
INSERT INTO ACT_ACT
	VALUES (2390,
	'bridge',
	0,
	2391,
	0,
	0,
	'Time::timer_start_recurring',
	0);
INSERT INTO ACT_BLK
	VALUES (2391,
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
	2390,
	0);
INSERT INTO S_BRG
	VALUES (2392,
	2342,
	'timer_remaining_time',
	'Returns the time remaining (in microseconds) for the passed timer instance. If
the timer has expired, a zero value is returned.',
	1,
	30,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2393,
	2392,
	'timer_inst_ref',
	332,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2394,
	2392);
INSERT INTO ACT_ACT
	VALUES (2394,
	'bridge',
	0,
	2395,
	0,
	0,
	'Time::timer_remaining_time',
	0);
INSERT INTO ACT_BLK
	VALUES (2395,
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
	2394,
	0);
INSERT INTO S_BRG
	VALUES (2396,
	2342,
	'timer_reset_time',
	'This bridge operation attempts to set the passed existing timer to expire in
the specified number of microseconds. If the timer exists (that is, it has not
expired), a TRUE value is returned. If the timer no longer exists, a FALSE value
is returned.',
	1,
	108,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2397,
	2396,
	'timer_inst_ref',
	332,
	0,
	'',
	2398,
	'');
INSERT INTO S_BPARM
	VALUES (2398,
	2396,
	'microseconds',
	30,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2399,
	2396);
INSERT INTO ACT_ACT
	VALUES (2399,
	'bridge',
	0,
	2400,
	0,
	0,
	'Time::timer_reset_time',
	0);
INSERT INTO ACT_BLK
	VALUES (2400,
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
	2399,
	0);
INSERT INTO S_BRG
	VALUES (2401,
	2342,
	'timer_add_time',
	'This bridge operation attempts to add the specified number of microseconds to a
passed existing timer. If the timer exists (that is, it has not expired), a TRUE
value is returned. If the timer no longer exists, a FALSE value is returned.',
	1,
	108,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2402,
	2401,
	'timer_inst_ref',
	332,
	0,
	'',
	2403,
	'');
INSERT INTO S_BPARM
	VALUES (2403,
	2401,
	'microseconds',
	30,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2404,
	2401);
INSERT INTO ACT_ACT
	VALUES (2404,
	'bridge',
	0,
	2405,
	0,
	0,
	'Time::timer_add_time',
	0);
INSERT INTO ACT_BLK
	VALUES (2405,
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
	2404,
	0);
INSERT INTO S_BRG
	VALUES (2406,
	2342,
	'timer_cancel',
	'This bridge operation cancels and deletes the passed timer instance. If the 
timer exists (that is, it had not expired), a TRUE value is returned. If the
timer no longer exists, a FALSE value is returned.',
	1,
	108,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2407,
	2406,
	'timer_inst_ref',
	332,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2408,
	2406);
INSERT INTO ACT_ACT
	VALUES (2408,
	'bridge',
	0,
	2409,
	0,
	0,
	'Time::timer_cancel',
	0);
INSERT INTO ACT_BLK
	VALUES (2409,
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
	2408,
	0);
INSERT INTO PE_PE
	VALUES (2410,
	1,
	2309,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (2410,
	'HeartRateMonitor',
	1,
	'HeartRateMonitor',
	'Represents the heart-rate monitoring facility.',
	0);
INSERT INTO O_NBATTR
	VALUES (2411,
	2410);
INSERT INTO O_BATTR
	VALUES (2411,
	2410);
INSERT INTO O_ATTR
	VALUES (2411,
	2410,
	0,
	'recentHeartRate',
	'Most recent heart-rate sample, expressed in beats per minute.',
	'',
	'recentHeartRate',
	0,
	30,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2412,
	2410);
INSERT INTO O_BATTR
	VALUES (2412,
	2410);
INSERT INTO O_ATTR
	VALUES (2412,
	2410,
	2411,
	'timer',
	'Handle for underlying timer mechanism enabling the 
generation of delayed events that drive the model
of the heart-rate monitor.',
	'',
	'timer',
	0,
	332,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2410);
INSERT INTO O_ID
	VALUES (1,
	2410);
INSERT INTO O_ID
	VALUES (2,
	2410);
INSERT INTO SM_ASM
	VALUES (2413,
	2410);
INSERT INTO SM_SM
	VALUES (2413,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (2413);
INSERT INTO SM_LEVT
	VALUES (2414,
	2413,
	0);
INSERT INTO SM_SEVT
	VALUES (2414,
	2413,
	0);
INSERT INTO SM_EVT
	VALUES (2414,
	2413,
	0,
	3,
	'timeout',
	0,
	'',
	'HeartRateMonitor_A3',
	'');
INSERT INTO SM_LEVT
	VALUES (2295,
	2413,
	0);
INSERT INTO SM_SEVT
	VALUES (2295,
	2413,
	0);
INSERT INTO SM_EVT
	VALUES (2295,
	2413,
	0,
	1,
	'registerListener',
	0,
	'',
	'HeartRateMonitor_A1',
	'');
INSERT INTO SM_LEVT
	VALUES (2301,
	2413,
	0);
INSERT INTO SM_SEVT
	VALUES (2301,
	2413,
	0);
INSERT INTO SM_EVT
	VALUES (2301,
	2413,
	0,
	2,
	'unregisterListener',
	0,
	'',
	'HeartRateMonitor_A2',
	'');
INSERT INTO SM_STATE
	VALUES (2415,
	2413,
	0,
	'idle',
	1,
	0);
INSERT INTO SM_EIGN
	VALUES (2415,
	2414,
	2413,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2415,
	2414,
	2413,
	0);
INSERT INTO SM_SEME
	VALUES (2415,
	2295,
	2413,
	0);
INSERT INTO SM_CH
	VALUES (2415,
	2301,
	2413,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2415,
	2301,
	2413,
	0);
INSERT INTO SM_MOAH
	VALUES (2416,
	2413,
	2415);
INSERT INTO SM_AH
	VALUES (2416,
	2413);
INSERT INTO SM_ACT
	VALUES (2416,
	2413,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (2417,
	2413,
	2416);
INSERT INTO ACT_ACT
	VALUES (2417,
	'class state',
	0,
	2418,
	0,
	0,
	'HeartRateMonitor::idle',
	0);
INSERT INTO ACT_BLK
	VALUES (2418,
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
	2417,
	0);
INSERT INTO SM_STATE
	VALUES (2419,
	2413,
	0,
	'monitoring',
	2,
	0);
INSERT INTO SM_SEME
	VALUES (2419,
	2414,
	2413,
	0);
INSERT INTO SM_CH
	VALUES (2419,
	2295,
	2413,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2419,
	2295,
	2413,
	0);
INSERT INTO SM_SEME
	VALUES (2419,
	2301,
	2413,
	0);
INSERT INTO SM_MOAH
	VALUES (2420,
	2413,
	2419);
INSERT INTO SM_AH
	VALUES (2420,
	2413);
INSERT INTO SM_ACT
	VALUES (2420,
	2413,
	1,
	'select any monitor from instances of HeartRateMonitor;
send Unspecified::heartRateChanged(heartRate: monitor.recentHeartRate);
monitor.recentHeartRate = monitor.recentHeartRate + 1;',
	'');
INSERT INTO ACT_SAB
	VALUES (2421,
	2413,
	2420);
INSERT INTO ACT_ACT
	VALUES (2421,
	'class state',
	0,
	2422,
	0,
	0,
	'HeartRateMonitor::monitoring',
	0);
INSERT INTO ACT_BLK
	VALUES (2422,
	1,
	0,
	0,
	'Unspecified',
	'',
	'',
	3,
	1,
	2,
	6,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2421,
	0);
INSERT INTO ACT_SMT
	VALUES (2423,
	2422,
	2424,
	1,
	1,
	'HeartRateMonitor::monitoring line: 1');
INSERT INTO ACT_FIO
	VALUES (2423,
	2425,
	1,
	'any',
	2410,
	1,
	38);
INSERT INTO ACT_SMT
	VALUES (2424,
	2422,
	2426,
	2,
	1,
	'HeartRateMonitor::monitoring line: 2');
INSERT INTO ACT_IOP
	VALUES (2424,
	2,
	19,
	2,
	6,
	0,
	2305,
	0);
INSERT INTO ACT_SMT
	VALUES (2426,
	2422,
	0,
	3,
	1,
	'HeartRateMonitor::monitoring line: 3');
INSERT INTO ACT_AI
	VALUES (2426,
	2427,
	2428,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2429,
	0,
	0,
	2,
	47,
	53,
	0,
	0,
	0,
	0,
	106,
	2422);
INSERT INTO V_IRF
	VALUES (2429,
	2425);
INSERT INTO V_VAL
	VALUES (2430,
	0,
	0,
	2,
	55,
	69,
	0,
	0,
	0,
	0,
	30,
	2422);
INSERT INTO V_AVL
	VALUES (2430,
	2429,
	2410,
	2411);
INSERT INTO V_PAR
	VALUES (2430,
	2424,
	0,
	'heartRate',
	0,
	2,
	36);
INSERT INTO V_VAL
	VALUES (2431,
	1,
	0,
	3,
	1,
	7,
	0,
	0,
	0,
	0,
	106,
	2422);
INSERT INTO V_IRF
	VALUES (2431,
	2425);
INSERT INTO V_VAL
	VALUES (2428,
	1,
	0,
	3,
	9,
	23,
	0,
	0,
	0,
	0,
	30,
	2422);
INSERT INTO V_AVL
	VALUES (2428,
	2431,
	2410,
	2411);
INSERT INTO V_VAL
	VALUES (2432,
	0,
	0,
	3,
	27,
	33,
	0,
	0,
	0,
	0,
	106,
	2422);
INSERT INTO V_IRF
	VALUES (2432,
	2425);
INSERT INTO V_VAL
	VALUES (2433,
	0,
	0,
	3,
	35,
	49,
	0,
	0,
	0,
	0,
	30,
	2422);
INSERT INTO V_AVL
	VALUES (2433,
	2432,
	2410,
	2411);
INSERT INTO V_VAL
	VALUES (2427,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	30,
	2422);
INSERT INTO V_BIN
	VALUES (2427,
	2434,
	2433,
	'+');
INSERT INTO V_VAL
	VALUES (2434,
	0,
	0,
	3,
	53,
	53,
	0,
	0,
	0,
	0,
	30,
	2422);
INSERT INTO V_LIN
	VALUES (2434,
	'1');
INSERT INTO V_VAR
	VALUES (2425,
	2422,
	'monitor',
	1,
	106);
INSERT INTO V_INT
	VALUES (2425,
	0,
	2410);
INSERT INTO SM_NSTXN
	VALUES (2435,
	2413,
	2415,
	2295,
	0);
INSERT INTO SM_TAH
	VALUES (2436,
	2413,
	2435);
INSERT INTO SM_AH
	VALUES (2436,
	2413);
INSERT INTO SM_ACT
	VALUES (2436,
	2413,
	1,
	'
select any monitor from instances of HeartRateMonitor;
if (empty monitor)
  create object instance monitor of HeartRateMonitor;
end if;
monitor.recentHeartRate = 50;

LOG::LogInfo(message: "listener registered");

// start timer
create event instance timeout of HeartRateMonitor_A3:timeout() to HeartRateMonitor class;
monitor.timer = TIM::timer_start_recurring( event_inst: timeout, microseconds: (HeartRateSamplingPeriod * 1000000) ); ',
	'');
INSERT INTO ACT_TAB
	VALUES (2437,
	2413,
	2436);
INSERT INTO ACT_ACT
	VALUES (2437,
	'class transition',
	0,
	2438,
	0,
	0,
	'HeartRateMonitor_A1: registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2438,
	1,
	0,
	0,
	'TIM',
	'',
	'',
	12,
	1,
	12,
	17,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2437,
	0);
INSERT INTO ACT_SMT
	VALUES (2439,
	2438,
	2440,
	2,
	1,
	'HeartRateMonitor_A1: registerListener line: 2');
INSERT INTO ACT_FIO
	VALUES (2439,
	2441,
	1,
	'any',
	2410,
	2,
	38);
INSERT INTO ACT_SMT
	VALUES (2440,
	2438,
	2442,
	3,
	1,
	'HeartRateMonitor_A1: registerListener line: 3');
INSERT INTO ACT_IF
	VALUES (2440,
	2443,
	2444,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2442,
	2438,
	2445,
	6,
	1,
	'HeartRateMonitor_A1: registerListener line: 6');
INSERT INTO ACT_AI
	VALUES (2442,
	2446,
	2447,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2445,
	2438,
	2448,
	8,
	1,
	'HeartRateMonitor_A1: registerListener line: 8');
INSERT INTO ACT_BRG
	VALUES (2445,
	2319,
	8,
	6,
	8,
	1);
INSERT INTO ACT_SMT
	VALUES (2448,
	2438,
	2449,
	11,
	1,
	'HeartRateMonitor_A1: registerListener line: 11');
INSERT INTO E_ESS
	VALUES (2448,
	1,
	0,
	11,
	34,
	11,
	54,
	11,
	67,
	0,
	0,
	0,
	0);
INSERT INTO E_CES
	VALUES (2448,
	1,
	2450);
INSERT INTO E_CSME
	VALUES (2448,
	2414);
INSERT INTO E_CEA
	VALUES (2448);
INSERT INTO ACT_SMT
	VALUES (2449,
	2438,
	0,
	12,
	1,
	'HeartRateMonitor_A1: registerListener line: 12');
INSERT INTO ACT_AI
	VALUES (2449,
	2451,
	2452,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2453,
	0,
	0,
	3,
	11,
	17,
	0,
	0,
	0,
	0,
	106,
	2438);
INSERT INTO V_IRF
	VALUES (2453,
	2441);
INSERT INTO V_VAL
	VALUES (2444,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	2438);
INSERT INTO V_UNY
	VALUES (2444,
	2453,
	'empty');
INSERT INTO V_VAL
	VALUES (2454,
	1,
	0,
	6,
	1,
	7,
	0,
	0,
	0,
	0,
	106,
	2438);
INSERT INTO V_IRF
	VALUES (2454,
	2441);
INSERT INTO V_VAL
	VALUES (2447,
	1,
	0,
	6,
	9,
	23,
	0,
	0,
	0,
	0,
	30,
	2438);
INSERT INTO V_AVL
	VALUES (2447,
	2454,
	2410,
	2411);
INSERT INTO V_VAL
	VALUES (2446,
	0,
	0,
	6,
	27,
	28,
	0,
	0,
	0,
	0,
	30,
	2438);
INSERT INTO V_LIN
	VALUES (2446,
	'50');
INSERT INTO V_VAL
	VALUES (2455,
	0,
	0,
	8,
	23,
	42,
	0,
	0,
	0,
	0,
	130,
	2438);
INSERT INTO V_LST
	VALUES (2455,
	'listener registered');
INSERT INTO V_PAR
	VALUES (2455,
	2445,
	0,
	'message',
	0,
	8,
	14);
INSERT INTO V_VAL
	VALUES (2456,
	1,
	0,
	12,
	1,
	7,
	0,
	0,
	0,
	0,
	106,
	2438);
INSERT INTO V_IRF
	VALUES (2456,
	2441);
INSERT INTO V_VAL
	VALUES (2452,
	1,
	0,
	12,
	9,
	13,
	0,
	0,
	0,
	0,
	332,
	2438);
INSERT INTO V_AVL
	VALUES (2452,
	2456,
	2410,
	2412);
INSERT INTO V_VAL
	VALUES (2451,
	0,
	0,
	12,
	22,
	-1,
	12,
	45,
	12,
	66,
	332,
	2438);
INSERT INTO V_BRV
	VALUES (2451,
	2387,
	1,
	12,
	17);
INSERT INTO V_VAL
	VALUES (2457,
	0,
	0,
	12,
	57,
	63,
	0,
	0,
	0,
	0,
	335,
	2438);
INSERT INTO V_TVL
	VALUES (2457,
	2450);
INSERT INTO V_PAR
	VALUES (2457,
	0,
	2451,
	'event_inst',
	2458,
	12,
	45);
INSERT INTO V_VAL
	VALUES (2459,
	0,
	0,
	12,
	81,
	103,
	0,
	0,
	0,
	0,
	30,
	2438);
INSERT INTO V_SCV
	VALUES (2459,
	1114,
	30);
INSERT INTO V_VAL
	VALUES (2458,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	30,
	2438);
INSERT INTO V_BIN
	VALUES (2458,
	2460,
	2459,
	'*');
INSERT INTO V_PAR
	VALUES (2458,
	0,
	2451,
	'microseconds',
	0,
	12,
	66);
INSERT INTO V_VAL
	VALUES (2460,
	0,
	0,
	12,
	107,
	113,
	0,
	0,
	0,
	0,
	30,
	2438);
INSERT INTO V_LIN
	VALUES (2460,
	'1000000');
INSERT INTO V_VAR
	VALUES (2441,
	2438,
	'monitor',
	1,
	106);
INSERT INTO V_INT
	VALUES (2441,
	0,
	2410);
INSERT INTO V_VAR
	VALUES (2450,
	2438,
	'timeout',
	1,
	335);
INSERT INTO V_TRN
	VALUES (2450,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (2443,
	0,
	0,
	0,
	'',
	'',
	'',
	4,
	3,
	4,
	37,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2437,
	0);
INSERT INTO ACT_SMT
	VALUES (2461,
	2443,
	0,
	4,
	3,
	'HeartRateMonitor_A1: registerListener line: 4');
INSERT INTO ACT_CR
	VALUES (2461,
	2441,
	0,
	2410,
	4,
	37);
INSERT INTO SM_TXN
	VALUES (2435,
	2413,
	2419,
	0);
INSERT INTO SM_NSTXN
	VALUES (2462,
	2413,
	2419,
	2301,
	0);
INSERT INTO SM_TAH
	VALUES (2463,
	2413,
	2462);
INSERT INTO SM_AH
	VALUES (2463,
	2413);
INSERT INTO SM_ACT
	VALUES (2463,
	2413,
	1,
	'select any monitor from instances of HeartRateMonitor;
res = TIM::timer_cancel(timer_inst_ref: monitor.timer);
if ( res )
  LOG::LogSuccess( message: "Heart Rate Monitor: timer_cancel() succeeded." );
else
  LOG::LogFailure( message: "Heart Rate Monitor: timer_cancel() failed." );
end if;',
	'');
INSERT INTO ACT_TAB
	VALUES (2464,
	2413,
	2463);
INSERT INTO ACT_ACT
	VALUES (2464,
	'class transition',
	0,
	2465,
	0,
	0,
	'HeartRateMonitor_A2: unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2465,
	1,
	0,
	0,
	'TIM',
	'',
	'',
	5,
	1,
	2,
	7,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2464,
	0);
INSERT INTO ACT_SMT
	VALUES (2466,
	2465,
	2467,
	1,
	1,
	'HeartRateMonitor_A2: unregisterListener line: 1');
INSERT INTO ACT_FIO
	VALUES (2466,
	2468,
	1,
	'any',
	2410,
	1,
	38);
INSERT INTO ACT_SMT
	VALUES (2467,
	2465,
	2469,
	2,
	1,
	'HeartRateMonitor_A2: unregisterListener line: 2');
INSERT INTO ACT_AI
	VALUES (2467,
	2470,
	2471,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2469,
	2465,
	0,
	3,
	1,
	'HeartRateMonitor_A2: unregisterListener line: 3');
INSERT INTO ACT_IF
	VALUES (2469,
	2472,
	2473,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2474,
	2465,
	0,
	5,
	1,
	'HeartRateMonitor_A2: unregisterListener line: 5');
INSERT INTO ACT_E
	VALUES (2474,
	2475,
	2469);
INSERT INTO V_VAL
	VALUES (2471,
	1,
	1,
	2,
	1,
	3,
	0,
	0,
	0,
	0,
	108,
	2465);
INSERT INTO V_TVL
	VALUES (2471,
	2476);
INSERT INTO V_VAL
	VALUES (2470,
	0,
	0,
	2,
	12,
	-1,
	2,
	25,
	0,
	0,
	108,
	2465);
INSERT INTO V_BRV
	VALUES (2470,
	2406,
	1,
	2,
	7);
INSERT INTO V_VAL
	VALUES (2477,
	0,
	0,
	2,
	41,
	47,
	0,
	0,
	0,
	0,
	106,
	2465);
INSERT INTO V_IRF
	VALUES (2477,
	2468);
INSERT INTO V_VAL
	VALUES (2478,
	0,
	0,
	2,
	49,
	53,
	0,
	0,
	0,
	0,
	332,
	2465);
INSERT INTO V_AVL
	VALUES (2478,
	2477,
	2410,
	2412);
INSERT INTO V_PAR
	VALUES (2478,
	0,
	2470,
	'timer_inst_ref',
	0,
	2,
	25);
INSERT INTO V_VAL
	VALUES (2473,
	0,
	0,
	3,
	6,
	8,
	0,
	0,
	0,
	0,
	108,
	2465);
INSERT INTO V_TVL
	VALUES (2473,
	2476);
INSERT INTO V_VAR
	VALUES (2468,
	2465,
	'monitor',
	1,
	106);
INSERT INTO V_INT
	VALUES (2468,
	0,
	2410);
INSERT INTO V_VAR
	VALUES (2476,
	2465,
	'res',
	1,
	108);
INSERT INTO V_TRN
	VALUES (2476,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (2472,
	0,
	0,
	0,
	'LOG',
	'',
	'',
	4,
	3,
	4,
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
	2464,
	0);
INSERT INTO ACT_SMT
	VALUES (2479,
	2472,
	0,
	4,
	3,
	'HeartRateMonitor_A2: unregisterListener line: 4');
INSERT INTO ACT_BRG
	VALUES (2479,
	2311,
	4,
	8,
	4,
	3);
INSERT INTO V_VAL
	VALUES (2480,
	0,
	0,
	4,
	29,
	74,
	0,
	0,
	0,
	0,
	130,
	2472);
INSERT INTO V_LST
	VALUES (2480,
	'Heart Rate Monitor: timer_cancel() succeeded.');
INSERT INTO V_PAR
	VALUES (2480,
	2479,
	0,
	'message',
	0,
	4,
	20);
INSERT INTO ACT_BLK
	VALUES (2475,
	0,
	0,
	0,
	'LOG',
	'',
	'',
	6,
	3,
	6,
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
	2464,
	0);
INSERT INTO ACT_SMT
	VALUES (2481,
	2475,
	0,
	6,
	3,
	'HeartRateMonitor_A2: unregisterListener line: 6');
INSERT INTO ACT_BRG
	VALUES (2481,
	2315,
	6,
	8,
	6,
	3);
INSERT INTO V_VAL
	VALUES (2482,
	0,
	0,
	6,
	29,
	71,
	0,
	0,
	0,
	0,
	130,
	2475);
INSERT INTO V_LST
	VALUES (2482,
	'Heart Rate Monitor: timer_cancel() failed.');
INSERT INTO V_PAR
	VALUES (2482,
	2481,
	0,
	'message',
	0,
	6,
	20);
INSERT INTO SM_TXN
	VALUES (2462,
	2413,
	2415,
	0);
INSERT INTO SM_NSTXN
	VALUES (2483,
	2413,
	2419,
	2414,
	0);
INSERT INTO SM_TAH
	VALUES (2484,
	2413,
	2483);
INSERT INTO SM_AH
	VALUES (2484,
	2413);
INSERT INTO SM_ACT
	VALUES (2484,
	2413,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2485,
	2413,
	2484);
INSERT INTO ACT_ACT
	VALUES (2485,
	'class transition',
	0,
	2486,
	0,
	0,
	'HeartRateMonitor_A3: timeout',
	0);
INSERT INTO ACT_BLK
	VALUES (2486,
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
	2485,
	0);
INSERT INTO SM_TXN
	VALUES (2483,
	2413,
	2419,
	0);
INSERT INTO PE_PE
	VALUES (2487,
	1,
	2285,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (2487,
	0,
	2284,
	'shared',
	'',
	0);
INSERT INTO PE_PE
	VALUES (2488,
	1,
	2487,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (2488,
	'HeartRateConstants',
	'SamplingPeriod is expressed in seconds and represents the period at which heart-rate samples are recorded.
AveragingWindow is expressed in samples and represents the number of samples used when calculating the current average.');
INSERT INTO CNST_SYC
	VALUES (1116,
	'HeartRateAveragingWindow',
	'',
	30,
	2488,
	1114,
	30);
INSERT INTO CNST_LFSC
	VALUES (1116,
	30);
INSERT INTO CNST_LSC
	VALUES (1116,
	30,
	'5');
INSERT INTO CNST_SYC
	VALUES (1114,
	'HeartRateSamplingPeriod',
	'',
	30,
	2488,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (1114,
	30);
INSERT INTO CNST_LSC
	VALUES (1114,
	30,
	'3');
INSERT INTO PE_PE
	VALUES (2289,
	1,
	2487,
	0,
	6);
INSERT INTO C_I
	VALUES (2289,
	0,
	'HeartRateMonitor',
	'');
INSERT INTO C_EP
	VALUES (2291,
	2289,
	-1,
	'registerListener',
	'');
INSERT INTO C_IO
	VALUES (2291,
	6,
	'registerListener',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (2297,
	2289,
	-1,
	'unregisterListener',
	'');
INSERT INTO C_IO
	VALUES (2297,
	6,
	'unregisterListener',
	'',
	0,
	'',
	2291);
INSERT INTO PE_PE
	VALUES (2304,
	1,
	2487,
	0,
	6);
INSERT INTO C_I
	VALUES (2304,
	0,
	'HeartRateMonitorUnspecified',
	'');
INSERT INTO C_EP
	VALUES (2306,
	2304,
	-1,
	'heartRateChanged',
	'');
INSERT INTO C_IO
	VALUES (2306,
	6,
	'heartRateChanged',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (2489,
	2306,
	30,
	'heartRate',
	'',
	0,
	'',
	0);
-- root-types-contained: SystemModel_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES (2490,
	'GPSWatch',
	1);
INSERT INTO EP_PKG
	VALUES (2491,
	2490,
	2490,
	'GPSWatch',
	'',
	0);
INSERT INTO PE_PE
	VALUES (2492,
	1,
	2491,
	0,
	21);
INSERT INTO CL_IC
	VALUES (2492,
	2286,
	0,
	0,
	0,
	'',
	'HeartRateMonitor::HeartRateMonitor::HeartRateMonitor',
	'');
INSERT INTO CL_POR
	VALUES (2492,
	2287,
	'HeartRateMonitor',
	2493);
INSERT INTO CL_IIR
	VALUES (2494,
	2288,
	2493,
	0,
	'HeartRateMonitor',
	'');
INSERT INTO CL_IP
	VALUES (2494,
	'HeartRateMonitor',
	'');
INSERT INTO CL_IPINS
	VALUES (2495,
	2494);
INSERT INTO CL_POR
	VALUES (2492,
	2302,
	'Unspecified',
	2496);
INSERT INTO CL_IIR
	VALUES (2497,
	2303,
	2496,
	0,
	'HeartRateMonitorUnspecified',
	'');
INSERT INTO CL_IR
	VALUES (2497,
	2498,
	'HeartRateMonitorUnspecified',
	'');
INSERT INTO PE_PE
	VALUES (2499,
	1,
	2491,
	0,
	21);
INSERT INTO CL_IC
	VALUES (2499,
	55,
	0,
	0,
	0,
	'',
	'Tracking::Tracking::Tracking',
	'');
INSERT INTO CL_POR
	VALUES (2499,
	56,
	'Location',
	2500);
INSERT INTO CL_IIR
	VALUES (2501,
	57,
	2500,
	0,
	'TrackingLocation',
	'');
INSERT INTO CL_IR
	VALUES (2501,
	1694,
	'TrackingLocation',
	'');
INSERT INTO CL_POR
	VALUES (2499,
	72,
	'UI',
	2502);
INSERT INTO CL_IIR
	VALUES (2503,
	73,
	2502,
	0,
	'TrackingUI',
	'');
INSERT INTO CL_IR
	VALUES (2503,
	1696,
	'TrackingUI',
	'');
INSERT INTO CL_POR
	VALUES (2499,
	86,
	'HeartRateMonitor',
	2504);
INSERT INTO CL_IIR
	VALUES (2505,
	87,
	2504,
	0,
	'TrackingHeartRateMonitor',
	'');
INSERT INTO CL_IR
	VALUES (2505,
	1698,
	'TrackingHeartRateMonitor',
	'');
INSERT INTO CL_POR
	VALUES (2499,
	94,
	'Tracking',
	2506);
INSERT INTO CL_IIR
	VALUES (2507,
	95,
	2506,
	0,
	'Tracking',
	'');
INSERT INTO CL_IP
	VALUES (2507,
	'Tracking',
	'');
INSERT INTO CL_IPINS
	VALUES (1700,
	2507);
INSERT INTO PE_PE
	VALUES (2508,
	1,
	2491,
	0,
	21);
INSERT INTO CL_IC
	VALUES (2508,
	1711,
	0,
	0,
	0,
	'',
	'UI::UI::UI',
	'');
INSERT INTO CL_POR
	VALUES (2508,
	1712,
	'UI',
	2509);
INSERT INTO CL_IIR
	VALUES (2510,
	1713,
	2509,
	0,
	'UI',
	'');
INSERT INTO CL_IP
	VALUES (2510,
	'UI',
	'');
INSERT INTO CL_IPINS
	VALUES (2511,
	2510);
INSERT INTO CL_POR
	VALUES (2508,
	1766,
	'Tracking',
	2512);
INSERT INTO CL_IIR
	VALUES (2513,
	1767,
	2512,
	0,
	'UITracking',
	'');
INSERT INTO CL_IR
	VALUES (2513,
	2514,
	'UITracking',
	'');
INSERT INTO PE_PE
	VALUES (2515,
	1,
	2491,
	0,
	21);
INSERT INTO CL_IC
	VALUES (2515,
	2516,
	0,
	0,
	0,
	'',
	'Location::Location::Location',
	'');
INSERT INTO CL_POR
	VALUES (2515,
	2517,
	'Location',
	2518);
INSERT INTO CL_IIR
	VALUES (2519,
	2520,
	2518,
	0,
	'Location',
	'');
INSERT INTO CL_IP
	VALUES (2519,
	'Location',
	'');
INSERT INTO CL_IPINS
	VALUES (2521,
	2519);
INSERT INTO PE_PE
	VALUES (2498,
	1,
	2491,
	0,
	22);
INSERT INTO C_SF
	VALUES (2498,
	2303,
	2522,
	'',
	'GPSWatch::HeartRateMonitorUnspecified::HeartRateMonitorUnspecified -o)- HeartRateMonitor::Unspecified::HeartRateMonitorUnspecified');
INSERT INTO PE_PE
	VALUES (2495,
	1,
	2491,
	0,
	22);
INSERT INTO C_SF
	VALUES (2495,
	2523,
	2288,
	'',
	'HeartRateMonitor::HeartRateMonitor::HeartRateMonitor -o)- GPSWatch::HeartRateMonitor::HeartRateMonitor');
INSERT INTO PE_PE
	VALUES (2521,
	1,
	2491,
	0,
	22);
INSERT INTO C_SF
	VALUES (2521,
	2524,
	2520,
	'',
	'Location::Location::Location -o)- GPSWatch::Location::Location');
INSERT INTO PE_PE
	VALUES (2525,
	1,
	2491,
	0,
	2);
INSERT INTO C_C
	VALUES (2525,
	0,
	0,
	'GPSWatch',
	'',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (2526,
	2525,
	'Location',
	0,
	0);
INSERT INTO C_IR
	VALUES (2524,
	2527,
	0,
	2526);
INSERT INTO C_R
	VALUES (2524,
	'Location',
	'',
	'Unnamed Interface',
	'GPSWatch::Location::Location');
INSERT INTO SPR_REP
	VALUES (2528,
	2529,
	2524);
INSERT INTO SPR_RO
	VALUES (2528,
	'getLocation',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2530,
	2528);
INSERT INTO ACT_ACT
	VALUES (2530,
	'interface operation',
	0,
	2531,
	0,
	0,
	'Location::Location::getLocation',
	0);
INSERT INTO ACT_BLK
	VALUES (2531,
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
	2530,
	0);
INSERT INTO SPR_REP
	VALUES (2532,
	2533,
	2524);
INSERT INTO SPR_RO
	VALUES (2532,
	'getDistance',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2534,
	2532);
INSERT INTO ACT_ACT
	VALUES (2534,
	'interface operation',
	0,
	2535,
	0,
	0,
	'Location::Location::getDistance',
	0);
INSERT INTO ACT_BLK
	VALUES (2535,
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
	2534,
	0);
INSERT INTO SPR_REP
	VALUES (2536,
	2537,
	2524);
INSERT INTO SPR_RO
	VALUES (2536,
	'registerListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2538,
	2536);
INSERT INTO ACT_ACT
	VALUES (2538,
	'interface operation',
	0,
	2539,
	0,
	0,
	'Location::Location::registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2539,
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
	2538,
	0);
INSERT INTO SPR_REP
	VALUES (2540,
	2541,
	2524);
INSERT INTO SPR_RO
	VALUES (2540,
	'unregisterListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2542,
	2540);
INSERT INTO ACT_ACT
	VALUES (2542,
	'interface operation',
	0,
	2543,
	0,
	0,
	'Location::Location::unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2543,
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
	2542,
	0);
INSERT INTO C_PO
	VALUES (2544,
	2525,
	'HeartRateMonitor',
	0,
	0);
INSERT INTO C_IR
	VALUES (2523,
	2289,
	0,
	2544);
INSERT INTO C_R
	VALUES (2523,
	'HeartRateMonitor',
	'',
	'Unnamed Interface',
	'GPSWatch::HeartRateMonitor::HeartRateMonitor');
INSERT INTO SPR_REP
	VALUES (2545,
	2291,
	2523);
INSERT INTO SPR_RO
	VALUES (2545,
	'registerListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2546,
	2545);
INSERT INTO ACT_ACT
	VALUES (2546,
	'interface operation',
	0,
	2547,
	0,
	0,
	'HeartRateMonitor::HeartRateMonitor::registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2547,
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
	2546,
	0);
INSERT INTO SPR_REP
	VALUES (2548,
	2297,
	2523);
INSERT INTO SPR_RO
	VALUES (2548,
	'unregisterListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2549,
	2548);
INSERT INTO ACT_ACT
	VALUES (2549,
	'interface operation',
	0,
	2550,
	0,
	0,
	'HeartRateMonitor::HeartRateMonitor::unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2550,
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
	2549,
	0);
INSERT INTO C_PO
	VALUES (2551,
	2525,
	'UI',
	0,
	0);
INSERT INTO C_IR
	VALUES (2552,
	1714,
	0,
	2551);
INSERT INTO C_R
	VALUES (2552,
	'UI',
	'',
	'Unnamed Interface',
	'GPSWatch::UI::UI');
INSERT INTO SPR_REP
	VALUES (2553,
	1716,
	2552);
INSERT INTO SPR_RO
	VALUES (2553,
	'setTime',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2554,
	2553);
INSERT INTO ACT_ACT
	VALUES (2554,
	'interface operation',
	0,
	2555,
	0,
	0,
	'UI::UI::setTime',
	0);
INSERT INTO ACT_BLK
	VALUES (2555,
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
	2554,
	0);
INSERT INTO SPR_REP
	VALUES (2556,
	1724,
	2552);
INSERT INTO SPR_RO
	VALUES (2556,
	'setData',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2557,
	2556);
INSERT INTO ACT_ACT
	VALUES (2557,
	'interface operation',
	0,
	2558,
	0,
	0,
	'UI::UI::setData',
	0);
INSERT INTO ACT_BLK
	VALUES (2558,
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
	2557,
	0);
INSERT INTO SPR_REP
	VALUES (2559,
	1734,
	2552);
INSERT INTO SPR_RO
	VALUES (2559,
	'startTest',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2560,
	2559);
INSERT INTO ACT_ACT
	VALUES (2560,
	'interface operation',
	0,
	2561,
	0,
	0,
	'UI::UI::startTest',
	0);
INSERT INTO ACT_BLK
	VALUES (2561,
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
	2560,
	0);
INSERT INTO SPR_REP
	VALUES (2562,
	1741,
	2552);
INSERT INTO SPR_RO
	VALUES (2562,
	'setIndicator',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2563,
	2562);
INSERT INTO ACT_ACT
	VALUES (2563,
	'interface operation',
	0,
	2564,
	0,
	0,
	'UI::UI::setIndicator',
	0);
INSERT INTO ACT_BLK
	VALUES (2564,
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
	2563,
	0);
INSERT INTO SPR_REP
	VALUES (2565,
	1749,
	2552);
INSERT INTO SPR_RO
	VALUES (2565,
	'newGoalSpec',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2566,
	2565);
INSERT INTO ACT_ACT
	VALUES (2566,
	'interface operation',
	0,
	2567,
	0,
	0,
	'UI::UI::newGoalSpec',
	0);
INSERT INTO ACT_BLK
	VALUES (2567,
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
	2566,
	0);
INSERT INTO C_PO
	VALUES (2568,
	2525,
	'TrackingHeartRateMonitor',
	0,
	0);
INSERT INTO C_IR
	VALUES (1699,
	4,
	0,
	2568);
INSERT INTO C_P
	VALUES (1699,
	'TrackingHeartRateMonitor',
	'Unnamed Interface',
	'',
	'GPSWatch::TrackingHeartRateMonitor::TrackingHeartRateMonitor');
INSERT INTO SPR_PEP
	VALUES (2569,
	5,
	1699);
INSERT INTO SPR_PO
	VALUES (2569,
	'registerListener',
	'',
	'HeartRateMonitor::registerListener();',
	1);
INSERT INTO ACT_POB
	VALUES (2570,
	2569);
INSERT INTO ACT_ACT
	VALUES (2570,
	'interface operation',
	0,
	2571,
	0,
	0,
	'TrackingHeartRateMonitor::TrackingHeartRateMonitor::registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2571,
	0,
	0,
	0,
	'HeartRateMonitor',
	'',
	'',
	1,
	1,
	1,
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
	2570,
	0);
INSERT INTO ACT_SMT
	VALUES (2572,
	2571,
	0,
	1,
	1,
	'TrackingHeartRateMonitor::TrackingHeartRateMonitor::registerListener line: 1');
INSERT INTO ACT_IOP
	VALUES (2572,
	1,
	19,
	1,
	1,
	0,
	2545,
	0);
INSERT INTO SPR_PEP
	VALUES (2573,
	7,
	1699);
INSERT INTO SPR_PO
	VALUES (2573,
	'unregisterListener',
	'',
	'HeartRateMonitor::unregisterListener();',
	1);
INSERT INTO ACT_POB
	VALUES (2574,
	2573);
INSERT INTO ACT_ACT
	VALUES (2574,
	'interface operation',
	0,
	2575,
	0,
	0,
	'TrackingHeartRateMonitor::TrackingHeartRateMonitor::unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2575,
	0,
	0,
	0,
	'HeartRateMonitor',
	'',
	'',
	1,
	1,
	1,
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
	2574,
	0);
INSERT INTO ACT_SMT
	VALUES (2576,
	2575,
	0,
	1,
	1,
	'TrackingHeartRateMonitor::TrackingHeartRateMonitor::unregisterListener line: 1');
INSERT INTO ACT_IOP
	VALUES (2576,
	1,
	19,
	1,
	1,
	0,
	2548,
	0);
INSERT INTO C_PO
	VALUES (2577,
	2525,
	'TrackingLocation',
	0,
	0);
INSERT INTO C_IR
	VALUES (1695,
	8,
	0,
	2577);
INSERT INTO C_P
	VALUES (1695,
	'TrackingLocation',
	'Unnamed Interface',
	'',
	'GPSWatch::TrackingLocation::TrackingLocation');
INSERT INTO SPR_PEP
	VALUES (2578,
	9,
	1695);
INSERT INTO SPR_PO
	VALUES (2578,
	'getDistance',
	'Returns distance, in kilometers, between the "from" and "to" coordinates passed as parameters.
The coordinates must be passed as decimal degrees.',
	'return Location::getDistance(fromLat:param.fromLat, fromLong:param.fromLong, toLat:param.toLat, toLong:param.toLong);',
	1);
INSERT INTO ACT_POB
	VALUES (2579,
	2578);
INSERT INTO ACT_ACT
	VALUES (2579,
	'interface operation',
	0,
	2580,
	0,
	0,
	'TrackingLocation::TrackingLocation::getDistance',
	0);
INSERT INTO ACT_BLK
	VALUES (2580,
	0,
	0,
	0,
	'Location',
	'',
	'',
	1,
	1,
	1,
	8,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2579,
	0);
INSERT INTO ACT_SMT
	VALUES (2581,
	2580,
	0,
	1,
	1,
	'TrackingLocation::TrackingLocation::getDistance line: 1');
INSERT INTO ACT_RET
	VALUES (2581,
	2582);
INSERT INTO V_VAL
	VALUES (2582,
	0,
	0,
	1,
	18,
	29,
	1,
	30,
	1,
	97,
	10,
	2580);
INSERT INTO V_MSV
	VALUES (2582,
	0,
	2532,
	1,
	1,
	8,
	0);
INSERT INTO V_VAL
	VALUES (2583,
	0,
	0,
	1,
	44,
	50,
	0,
	0,
	0,
	0,
	10,
	2580);
INSERT INTO V_PVL
	VALUES (2583,
	0,
	0,
	0,
	11);
INSERT INTO V_PAR
	VALUES (2583,
	0,
	2582,
	'fromLat',
	2584,
	1,
	30);
INSERT INTO V_VAL
	VALUES (2584,
	0,
	0,
	1,
	68,
	75,
	0,
	0,
	0,
	0,
	10,
	2580);
INSERT INTO V_PVL
	VALUES (2584,
	0,
	0,
	0,
	13);
INSERT INTO V_PAR
	VALUES (2584,
	0,
	2582,
	'fromLong',
	2585,
	1,
	53);
INSERT INTO V_VAL
	VALUES (2585,
	0,
	0,
	1,
	90,
	94,
	0,
	0,
	0,
	0,
	10,
	2580);
INSERT INTO V_PVL
	VALUES (2585,
	0,
	0,
	0,
	12);
INSERT INTO V_PAR
	VALUES (2585,
	0,
	2582,
	'toLat',
	2586,
	1,
	78);
INSERT INTO V_VAL
	VALUES (2586,
	0,
	0,
	1,
	110,
	115,
	0,
	0,
	0,
	0,
	10,
	2580);
INSERT INTO V_PVL
	VALUES (2586,
	0,
	0,
	0,
	14);
INSERT INTO V_PAR
	VALUES (2586,
	0,
	2582,
	'toLong',
	0,
	1,
	97);
INSERT INTO SPR_PEP
	VALUES (2587,
	15,
	1695);
INSERT INTO SPR_PO
	VALUES (2587,
	'getLocation',
	'',
	'Location::getLocation(latitude:param.latitude, longitude:param.longitude);',
	1);
INSERT INTO ACT_POB
	VALUES (2588,
	2587);
INSERT INTO ACT_ACT
	VALUES (2588,
	'interface operation',
	0,
	2589,
	0,
	0,
	'TrackingLocation::TrackingLocation::getLocation',
	0);
INSERT INTO ACT_BLK
	VALUES (2589,
	0,
	0,
	0,
	'Location',
	'',
	'',
	1,
	1,
	1,
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
	2588,
	0);
INSERT INTO ACT_SMT
	VALUES (2590,
	2589,
	0,
	1,
	1,
	'TrackingLocation::TrackingLocation::getLocation line: 1');
INSERT INTO ACT_IOP
	VALUES (2590,
	1,
	11,
	1,
	1,
	0,
	2528,
	0);
INSERT INTO V_VAL
	VALUES (2591,
	0,
	0,
	1,
	38,
	45,
	0,
	0,
	0,
	0,
	10,
	2589);
INSERT INTO V_PVL
	VALUES (2591,
	0,
	0,
	0,
	16);
INSERT INTO V_PAR
	VALUES (2591,
	2590,
	0,
	'latitude',
	2592,
	1,
	23);
INSERT INTO V_VAL
	VALUES (2592,
	0,
	0,
	1,
	64,
	72,
	0,
	0,
	0,
	0,
	10,
	2589);
INSERT INTO V_PVL
	VALUES (2592,
	0,
	0,
	0,
	17);
INSERT INTO V_PAR
	VALUES (2592,
	2590,
	0,
	'longitude',
	0,
	1,
	48);
INSERT INTO SPR_PEP
	VALUES (2593,
	18,
	1695);
INSERT INTO SPR_PO
	VALUES (2593,
	'registerListener',
	'',
	'Location::registerListener();',
	1);
INSERT INTO ACT_POB
	VALUES (2594,
	2593);
INSERT INTO ACT_ACT
	VALUES (2594,
	'interface operation',
	0,
	2595,
	0,
	0,
	'TrackingLocation::TrackingLocation::registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2595,
	0,
	0,
	0,
	'Location',
	'',
	'',
	1,
	1,
	1,
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
	2594,
	0);
INSERT INTO ACT_SMT
	VALUES (2596,
	2595,
	0,
	1,
	1,
	'TrackingLocation::TrackingLocation::registerListener line: 1');
INSERT INTO ACT_IOP
	VALUES (2596,
	1,
	11,
	1,
	1,
	0,
	2536,
	0);
INSERT INTO SPR_PEP
	VALUES (2597,
	19,
	1695);
INSERT INTO SPR_PO
	VALUES (2597,
	'unregisterListener',
	'',
	'Location::unregisterListener();',
	1);
INSERT INTO ACT_POB
	VALUES (2598,
	2597);
INSERT INTO ACT_ACT
	VALUES (2598,
	'interface operation',
	0,
	2599,
	0,
	0,
	'TrackingLocation::TrackingLocation::unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2599,
	0,
	0,
	0,
	'Location',
	'',
	'',
	1,
	1,
	1,
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
	2598,
	0);
INSERT INTO ACT_SMT
	VALUES (2600,
	2599,
	0,
	1,
	1,
	'TrackingLocation::TrackingLocation::unregisterListener line: 1');
INSERT INTO ACT_IOP
	VALUES (2600,
	1,
	11,
	1,
	1,
	0,
	2540,
	0);
INSERT INTO C_PO
	VALUES (2601,
	2525,
	'TrackingUI',
	0,
	0);
INSERT INTO C_IR
	VALUES (1697,
	20,
	0,
	2601);
INSERT INTO C_P
	VALUES (1697,
	'TrackingUI',
	'Unnamed Interface',
	'',
	'GPSWatch::TrackingUI::TrackingUI');
INSERT INTO SPR_PEP
	VALUES (2602,
	21,
	1697);
INSERT INTO SPR_PO
	VALUES (2602,
	'setData',
	'',
	'UI::setData(value:param.value, unit:param.unit);',
	1);
INSERT INTO ACT_POB
	VALUES (2603,
	2602);
INSERT INTO ACT_ACT
	VALUES (2603,
	'interface operation',
	0,
	2604,
	0,
	0,
	'TrackingUI::TrackingUI::setData',
	0);
INSERT INTO ACT_BLK
	VALUES (2604,
	0,
	0,
	0,
	'UI',
	'',
	'',
	1,
	1,
	1,
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
	2603,
	0);
INSERT INTO ACT_SMT
	VALUES (2605,
	2604,
	0,
	1,
	1,
	'TrackingUI::TrackingUI::setData line: 1');
INSERT INTO ACT_IOP
	VALUES (2605,
	1,
	5,
	1,
	1,
	0,
	2556,
	0);
INSERT INTO V_VAL
	VALUES (2606,
	0,
	0,
	1,
	25,
	29,
	0,
	0,
	0,
	0,
	10,
	2604);
INSERT INTO V_PVL
	VALUES (2606,
	0,
	0,
	0,
	22);
INSERT INTO V_PAR
	VALUES (2606,
	2605,
	0,
	'value',
	2607,
	1,
	13);
INSERT INTO V_VAL
	VALUES (2607,
	0,
	0,
	1,
	43,
	46,
	0,
	0,
	0,
	0,
	24,
	2604);
INSERT INTO V_PVL
	VALUES (2607,
	0,
	0,
	0,
	23);
INSERT INTO V_PAR
	VALUES (2607,
	2605,
	0,
	'unit',
	0,
	1,
	32);
INSERT INTO SPR_PEP
	VALUES (2608,
	25,
	1697);
INSERT INTO SPR_PO
	VALUES (2608,
	'setIndicator',
	'',
	'UI::setIndicator(indicator:param.indicator);',
	1);
INSERT INTO ACT_POB
	VALUES (2609,
	2608);
INSERT INTO ACT_ACT
	VALUES (2609,
	'interface operation',
	0,
	2610,
	0,
	0,
	'TrackingUI::TrackingUI::setIndicator',
	0);
INSERT INTO ACT_BLK
	VALUES (2610,
	0,
	0,
	0,
	'UI',
	'',
	'',
	1,
	1,
	1,
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
	2609,
	0);
INSERT INTO ACT_SMT
	VALUES (2611,
	2610,
	0,
	1,
	1,
	'TrackingUI::TrackingUI::setIndicator line: 1');
INSERT INTO ACT_IOP
	VALUES (2611,
	1,
	5,
	1,
	1,
	0,
	2562,
	0);
INSERT INTO V_VAL
	VALUES (2612,
	0,
	0,
	1,
	34,
	42,
	0,
	0,
	0,
	0,
	27,
	2610);
INSERT INTO V_PVL
	VALUES (2612,
	0,
	0,
	0,
	26);
INSERT INTO V_PAR
	VALUES (2612,
	2611,
	0,
	'indicator',
	0,
	1,
	18);
INSERT INTO SPR_PEP
	VALUES (2613,
	28,
	1697);
INSERT INTO SPR_PO
	VALUES (2613,
	'setTime',
	'',
	'UI::setTime(time:param.time);',
	1);
INSERT INTO ACT_POB
	VALUES (2614,
	2613);
INSERT INTO ACT_ACT
	VALUES (2614,
	'interface operation',
	0,
	2615,
	0,
	0,
	'TrackingUI::TrackingUI::setTime',
	0);
INSERT INTO ACT_BLK
	VALUES (2615,
	0,
	0,
	0,
	'UI',
	'',
	'',
	1,
	1,
	1,
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
	2614,
	0);
INSERT INTO ACT_SMT
	VALUES (2616,
	2615,
	0,
	1,
	1,
	'TrackingUI::TrackingUI::setTime line: 1');
INSERT INTO ACT_IOP
	VALUES (2616,
	1,
	5,
	1,
	1,
	0,
	2553,
	0);
INSERT INTO V_VAL
	VALUES (2617,
	0,
	0,
	1,
	24,
	27,
	0,
	0,
	0,
	0,
	30,
	2615);
INSERT INTO V_PVL
	VALUES (2617,
	0,
	0,
	0,
	29);
INSERT INTO V_PAR
	VALUES (2617,
	2616,
	0,
	'time',
	0,
	1,
	13);
INSERT INTO SPR_PEP
	VALUES (2618,
	31,
	1697);
INSERT INTO SPR_PO
	VALUES (2618,
	'newGoalSpec',
	'',
	'UI::newGoalSpec(sequenceNumber:param.sequenceNumber, minimum:param.minimum, maximum:param.maximum, span:param.span, criteriaType:param.criteriaType, spanType:param.spanType);',
	1);
INSERT INTO ACT_POB
	VALUES (2619,
	2618);
INSERT INTO ACT_ACT
	VALUES (2619,
	'interface operation',
	0,
	2620,
	0,
	0,
	'TrackingUI::TrackingUI::newGoalSpec',
	0);
INSERT INTO ACT_BLK
	VALUES (2620,
	0,
	0,
	0,
	'UI',
	'',
	'',
	1,
	1,
	1,
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
	2619,
	0);
INSERT INTO ACT_SMT
	VALUES (2621,
	2620,
	0,
	1,
	1,
	'TrackingUI::TrackingUI::newGoalSpec line: 1');
INSERT INTO ACT_IOP
	VALUES (2621,
	1,
	5,
	1,
	1,
	0,
	2565,
	0);
INSERT INTO V_VAL
	VALUES (2622,
	0,
	0,
	1,
	38,
	51,
	0,
	0,
	0,
	0,
	30,
	2620);
INSERT INTO V_PVL
	VALUES (2622,
	0,
	0,
	0,
	32);
INSERT INTO V_PAR
	VALUES (2622,
	2621,
	0,
	'sequenceNumber',
	2623,
	1,
	17);
INSERT INTO V_VAL
	VALUES (2623,
	0,
	0,
	1,
	68,
	74,
	0,
	0,
	0,
	0,
	10,
	2620);
INSERT INTO V_PVL
	VALUES (2623,
	0,
	0,
	0,
	33);
INSERT INTO V_PAR
	VALUES (2623,
	2621,
	0,
	'minimum',
	2624,
	1,
	54);
INSERT INTO V_VAL
	VALUES (2624,
	0,
	0,
	1,
	91,
	97,
	0,
	0,
	0,
	0,
	10,
	2620);
INSERT INTO V_PVL
	VALUES (2624,
	0,
	0,
	0,
	34);
INSERT INTO V_PAR
	VALUES (2624,
	2621,
	0,
	'maximum',
	2625,
	1,
	77);
INSERT INTO V_VAL
	VALUES (2625,
	0,
	0,
	1,
	111,
	114,
	0,
	0,
	0,
	0,
	10,
	2620);
INSERT INTO V_PVL
	VALUES (2625,
	0,
	0,
	0,
	35);
INSERT INTO V_PAR
	VALUES (2625,
	2621,
	0,
	'span',
	2626,
	1,
	100);
INSERT INTO V_VAL
	VALUES (2626,
	0,
	0,
	1,
	136,
	147,
	0,
	0,
	0,
	0,
	37,
	2620);
INSERT INTO V_PVL
	VALUES (2626,
	0,
	0,
	0,
	36);
INSERT INTO V_PAR
	VALUES (2626,
	2621,
	0,
	'criteriaType',
	2627,
	1,
	117);
INSERT INTO V_VAL
	VALUES (2627,
	0,
	0,
	1,
	165,
	172,
	0,
	0,
	0,
	0,
	39,
	2620);
INSERT INTO V_PVL
	VALUES (2627,
	0,
	0,
	0,
	38);
INSERT INTO V_PAR
	VALUES (2627,
	2621,
	0,
	'spanType',
	0,
	1,
	150);
INSERT INTO C_PO
	VALUES (2628,
	2525,
	'Tracking',
	0,
	0);
INSERT INTO C_IR
	VALUES (1701,
	40,
	0,
	2628);
INSERT INTO C_R
	VALUES (1701,
	'Tracking',
	'',
	'Unnamed Interface',
	'GPSWatch::Tracking::Tracking');
INSERT INTO SPR_REP
	VALUES (2629,
	41,
	1701);
INSERT INTO SPR_RO
	VALUES (2629,
	'heartRateChanged',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2630,
	2629);
INSERT INTO ACT_ACT
	VALUES (2630,
	'interface operation',
	0,
	2631,
	0,
	0,
	'Tracking::Tracking::heartRateChanged',
	0);
INSERT INTO ACT_BLK
	VALUES (2631,
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
	2630,
	0);
INSERT INTO SPR_REP
	VALUES (2632,
	43,
	1701);
INSERT INTO SPR_RO
	VALUES (2632,
	'lapResetPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2633,
	2632);
INSERT INTO ACT_ACT
	VALUES (2633,
	'interface operation',
	0,
	2634,
	0,
	0,
	'Tracking::Tracking::lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2634,
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
	2633,
	0);
INSERT INTO SPR_REP
	VALUES (2635,
	44,
	1701);
INSERT INTO SPR_RO
	VALUES (2635,
	'modePressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2636,
	2635);
INSERT INTO ACT_ACT
	VALUES (2636,
	'interface operation',
	0,
	2637,
	0,
	0,
	'Tracking::Tracking::modePressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2637,
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
	2636,
	0);
INSERT INTO SPR_REP
	VALUES (2638,
	45,
	1701);
INSERT INTO SPR_RO
	VALUES (2638,
	'setTargetPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2639,
	2638);
INSERT INTO ACT_ACT
	VALUES (2639,
	'interface operation',
	0,
	2640,
	0,
	0,
	'Tracking::Tracking::setTargetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2640,
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
	2639,
	0);
INSERT INTO SPR_REP
	VALUES (2641,
	46,
	1701);
INSERT INTO SPR_RO
	VALUES (2641,
	'startStopPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2642,
	2641);
INSERT INTO ACT_ACT
	VALUES (2642,
	'interface operation',
	0,
	2643,
	0,
	0,
	'Tracking::Tracking::startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2643,
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
	2642,
	0);
INSERT INTO SPR_REP
	VALUES (2644,
	47,
	1701);
INSERT INTO SPR_RO
	VALUES (2644,
	'newGoalSpec',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2645,
	2644);
INSERT INTO ACT_ACT
	VALUES (2645,
	'interface operation',
	0,
	2646,
	0,
	0,
	'Tracking::Tracking::newGoalSpec',
	0);
INSERT INTO ACT_BLK
	VALUES (2646,
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
	2645,
	0);
INSERT INTO SPR_REP
	VALUES (2647,
	54,
	1701);
INSERT INTO SPR_RO
	VALUES (2647,
	'lightPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2648,
	2647);
INSERT INTO ACT_ACT
	VALUES (2648,
	'interface operation',
	0,
	2649,
	0,
	0,
	'Tracking::Tracking::lightPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2649,
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
	2648,
	0);
INSERT INTO C_PO
	VALUES (2650,
	2525,
	'HeartRateMonitorUnspecified',
	0,
	0);
INSERT INTO C_IR
	VALUES (2522,
	2304,
	0,
	2650);
INSERT INTO C_P
	VALUES (2522,
	'HeartRateMonitorUnspecified',
	'Unnamed Interface',
	'',
	'GPSWatch::HeartRateMonitorUnspecified::HeartRateMonitorUnspecified');
INSERT INTO SPR_PEP
	VALUES (2651,
	2306,
	2522);
INSERT INTO SPR_PO
	VALUES (2651,
	'heartRateChanged',
	'',
	'Tracking::heartRateChanged(heartRate:param.heartRate);',
	1);
INSERT INTO ACT_POB
	VALUES (2652,
	2651);
INSERT INTO ACT_ACT
	VALUES (2652,
	'interface operation',
	0,
	2653,
	0,
	0,
	'HeartRateMonitorUnspecified::HeartRateMonitorUnspecified::heartRateChanged',
	0);
INSERT INTO ACT_BLK
	VALUES (2653,
	0,
	0,
	0,
	'Tracking',
	'',
	'',
	1,
	1,
	1,
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
	2652,
	0);
INSERT INTO ACT_SMT
	VALUES (2654,
	2653,
	0,
	1,
	1,
	'HeartRateMonitorUnspecified::HeartRateMonitorUnspecified::heartRateChanged line: 1');
INSERT INTO ACT_IOP
	VALUES (2654,
	1,
	11,
	1,
	1,
	0,
	2629,
	0);
INSERT INTO V_VAL
	VALUES (2655,
	0,
	0,
	1,
	44,
	52,
	0,
	0,
	0,
	0,
	30,
	2653);
INSERT INTO V_PVL
	VALUES (2655,
	0,
	0,
	0,
	2489);
INSERT INTO V_PAR
	VALUES (2655,
	2654,
	0,
	'heartRate',
	0,
	1,
	28);
INSERT INTO C_PO
	VALUES (2656,
	2525,
	'UITracking',
	0,
	0);
INSERT INTO C_IR
	VALUES (2657,
	1768,
	0,
	2656);
INSERT INTO C_P
	VALUES (2657,
	'UITracking',
	'Unnamed Interface',
	'',
	'GPSWatch::UITracking::UITracking');
INSERT INTO SPR_PEP
	VALUES (2658,
	1770,
	2657);
INSERT INTO SPR_PO
	VALUES (2658,
	'setTargetPressed',
	'',
	'Tracking::setTargetPressed();',
	1);
INSERT INTO ACT_POB
	VALUES (2659,
	2658);
INSERT INTO ACT_ACT
	VALUES (2659,
	'interface operation',
	0,
	2660,
	0,
	0,
	'UITracking::UITracking::setTargetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2660,
	0,
	0,
	0,
	'Tracking',
	'',
	'',
	1,
	1,
	1,
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
	2659,
	0);
INSERT INTO ACT_SMT
	VALUES (2661,
	2660,
	0,
	1,
	1,
	'UITracking::UITracking::setTargetPressed line: 1');
INSERT INTO ACT_IOP
	VALUES (2661,
	1,
	11,
	1,
	1,
	0,
	2638,
	0);
INSERT INTO SPR_PEP
	VALUES (2662,
	1774,
	2657);
INSERT INTO SPR_PO
	VALUES (2662,
	'startStopPressed',
	'',
	'Tracking::startStopPressed();',
	1);
INSERT INTO ACT_POB
	VALUES (2663,
	2662);
INSERT INTO ACT_ACT
	VALUES (2663,
	'interface operation',
	0,
	2664,
	0,
	0,
	'UITracking::UITracking::startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2664,
	0,
	0,
	0,
	'Tracking',
	'',
	'',
	1,
	1,
	1,
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
	2663,
	0);
INSERT INTO ACT_SMT
	VALUES (2665,
	2664,
	0,
	1,
	1,
	'UITracking::UITracking::startStopPressed line: 1');
INSERT INTO ACT_IOP
	VALUES (2665,
	1,
	11,
	1,
	1,
	0,
	2641,
	0);
INSERT INTO SPR_PEP
	VALUES (2666,
	1778,
	2657);
INSERT INTO SPR_PO
	VALUES (2666,
	'lapResetPressed',
	'',
	'Tracking::lapResetPressed();',
	1);
INSERT INTO ACT_POB
	VALUES (2667,
	2666);
INSERT INTO ACT_ACT
	VALUES (2667,
	'interface operation',
	0,
	2668,
	0,
	0,
	'UITracking::UITracking::lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2668,
	0,
	0,
	0,
	'Tracking',
	'',
	'',
	1,
	1,
	1,
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
	2667,
	0);
INSERT INTO ACT_SMT
	VALUES (2669,
	2668,
	0,
	1,
	1,
	'UITracking::UITracking::lapResetPressed line: 1');
INSERT INTO ACT_IOP
	VALUES (2669,
	1,
	11,
	1,
	1,
	0,
	2632,
	0);
INSERT INTO SPR_PEP
	VALUES (2670,
	1782,
	2657);
INSERT INTO SPR_PO
	VALUES (2670,
	'modePressed',
	'',
	'Tracking::modePressed();',
	1);
INSERT INTO ACT_POB
	VALUES (2671,
	2670);
INSERT INTO ACT_ACT
	VALUES (2671,
	'interface operation',
	0,
	2672,
	0,
	0,
	'UITracking::UITracking::modePressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2672,
	0,
	0,
	0,
	'Tracking',
	'',
	'',
	1,
	1,
	1,
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
	2671,
	0);
INSERT INTO ACT_SMT
	VALUES (2673,
	2672,
	0,
	1,
	1,
	'UITracking::UITracking::modePressed line: 1');
INSERT INTO ACT_IOP
	VALUES (2673,
	1,
	11,
	1,
	1,
	0,
	2635,
	0);
INSERT INTO SPR_PEP
	VALUES (2674,
	1786,
	2657);
INSERT INTO SPR_PO
	VALUES (2674,
	'newGoalSpec',
	'',
	'Tracking::newGoalSpec(sequenceNumber:param.sequenceNumber, minimum:param.minimum, maximum:param.maximum, span:param.span, criteriaType:param.criteriaType, spanType:param.spanType);',
	1);
INSERT INTO ACT_POB
	VALUES (2675,
	2674);
INSERT INTO ACT_ACT
	VALUES (2675,
	'interface operation',
	0,
	2676,
	0,
	0,
	'UITracking::UITracking::newGoalSpec',
	0);
INSERT INTO ACT_BLK
	VALUES (2676,
	0,
	0,
	0,
	'Tracking',
	'',
	'',
	1,
	1,
	1,
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
	2675,
	0);
INSERT INTO ACT_SMT
	VALUES (2677,
	2676,
	0,
	1,
	1,
	'UITracking::UITracking::newGoalSpec line: 1');
INSERT INTO ACT_IOP
	VALUES (2677,
	1,
	11,
	1,
	1,
	0,
	2644,
	0);
INSERT INTO V_VAL
	VALUES (2678,
	0,
	0,
	1,
	44,
	57,
	0,
	0,
	0,
	0,
	30,
	2676);
INSERT INTO V_PVL
	VALUES (2678,
	0,
	0,
	0,
	2278);
INSERT INTO V_PAR
	VALUES (2678,
	2677,
	0,
	'sequenceNumber',
	2679,
	1,
	23);
INSERT INTO V_VAL
	VALUES (2679,
	0,
	0,
	1,
	74,
	80,
	0,
	0,
	0,
	0,
	10,
	2676);
INSERT INTO V_PVL
	VALUES (2679,
	0,
	0,
	0,
	2279);
INSERT INTO V_PAR
	VALUES (2679,
	2677,
	0,
	'minimum',
	2680,
	1,
	60);
INSERT INTO V_VAL
	VALUES (2680,
	0,
	0,
	1,
	97,
	103,
	0,
	0,
	0,
	0,
	10,
	2676);
INSERT INTO V_PVL
	VALUES (2680,
	0,
	0,
	0,
	2280);
INSERT INTO V_PAR
	VALUES (2680,
	2677,
	0,
	'maximum',
	2681,
	1,
	83);
INSERT INTO V_VAL
	VALUES (2681,
	0,
	0,
	1,
	117,
	120,
	0,
	0,
	0,
	0,
	10,
	2676);
INSERT INTO V_PVL
	VALUES (2681,
	0,
	0,
	0,
	2281);
INSERT INTO V_PAR
	VALUES (2681,
	2677,
	0,
	'span',
	2682,
	1,
	106);
INSERT INTO V_VAL
	VALUES (2682,
	0,
	0,
	1,
	142,
	153,
	0,
	0,
	0,
	0,
	37,
	2676);
INSERT INTO V_PVL
	VALUES (2682,
	0,
	0,
	0,
	2282);
INSERT INTO V_PAR
	VALUES (2682,
	2677,
	0,
	'criteriaType',
	2683,
	1,
	123);
INSERT INTO V_VAL
	VALUES (2683,
	0,
	0,
	1,
	171,
	178,
	0,
	0,
	0,
	0,
	39,
	2676);
INSERT INTO V_PVL
	VALUES (2683,
	0,
	0,
	0,
	2283);
INSERT INTO V_PAR
	VALUES (2683,
	2677,
	0,
	'spanType',
	0,
	1,
	156);
INSERT INTO SPR_PEP
	VALUES (2684,
	1790,
	2657);
INSERT INTO SPR_PO
	VALUES (2684,
	'lightPressed',
	'',
	'Tracking::lightPressed();',
	1);
INSERT INTO ACT_POB
	VALUES (2685,
	2684);
INSERT INTO ACT_ACT
	VALUES (2685,
	'interface operation',
	0,
	2686,
	0,
	0,
	'UITracking::UITracking::lightPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2686,
	0,
	0,
	0,
	'Tracking',
	'',
	'',
	1,
	1,
	1,
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
	2685,
	0);
INSERT INTO ACT_SMT
	VALUES (2687,
	2686,
	0,
	1,
	1,
	'UITracking::UITracking::lightPressed line: 1');
INSERT INTO ACT_IOP
	VALUES (2687,
	1,
	11,
	1,
	1,
	0,
	2647,
	0);
-- root-types-contained: SystemModel_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES (2688,
	'Location',
	1);
INSERT INTO EP_PKG
	VALUES (2689,
	2688,
	2688,
	'Location',
	'',
	0);
INSERT INTO PE_PE
	VALUES (2516,
	1,
	2689,
	0,
	2);
INSERT INTO C_C
	VALUES (2516,
	0,
	0,
	'Location',
	'Simulates a the GPS hardware/firmware. This component is only behavioral and included for testing purposes.',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (2517,
	2516,
	'Location',
	0,
	0);
INSERT INTO C_IR
	VALUES (2520,
	2527,
	0,
	2517);
INSERT INTO C_P
	VALUES (2520,
	'Location',
	'Unnamed Interface',
	'',
	'Location::Location::Location');
INSERT INTO SPR_PEP
	VALUES (2690,
	2529,
	2520);
INSERT INTO SPR_PO
	VALUES (2690,
	'getLocation',
	'',
	'',
	1);
INSERT INTO ACT_POB
	VALUES (2691,
	2690);
INSERT INTO ACT_ACT
	VALUES (2691,
	'interface operation',
	0,
	2692,
	0,
	0,
	'Location::Location::getLocation',
	0);
INSERT INTO ACT_BLK
	VALUES (2692,
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
	2691,
	0);
INSERT INTO SPR_PEP
	VALUES (2693,
	2533,
	2520);
INSERT INTO SPR_PO
	VALUES (2693,
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
	VALUES (2694,
	2693);
INSERT INTO ACT_ACT
	VALUES (2694,
	'interface operation',
	0,
	2695,
	0,
	0,
	'Location::Location::getDistance',
	0);
INSERT INTO ACT_BLK
	VALUES (2695,
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
	2694,
	0);
INSERT INTO ACT_SMT
	VALUES (2696,
	2695,
	2697,
	4,
	1,
	'Location::Location::getDistance line: 4');
INSERT INTO ACT_AI
	VALUES (2696,
	2698,
	2699,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2697,
	2695,
	2700,
	5,
	1,
	'Location::Location::getDistance line: 5');
INSERT INTO ACT_AI
	VALUES (2697,
	2701,
	2702,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2700,
	2695,
	2703,
	6,
	1,
	'Location::Location::getDistance line: 6');
INSERT INTO ACT_AI
	VALUES (2700,
	2704,
	2705,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2703,
	2695,
	0,
	7,
	1,
	'Location::Location::getDistance line: 7');
INSERT INTO ACT_RET
	VALUES (2703,
	2706);
INSERT INTO V_VAL
	VALUES (2699,
	1,
	1,
	4,
	1,
	8,
	0,
	0,
	0,
	0,
	30,
	2695);
INSERT INTO V_TVL
	VALUES (2699,
	2707);
INSERT INTO V_VAL
	VALUES (2708,
	0,
	0,
	4,
	18,
	22,
	0,
	0,
	0,
	0,
	30,
	2695);
INSERT INTO V_PVL
	VALUES (2708,
	0,
	0,
	0,
	2709);
INSERT INTO V_VAL
	VALUES (2698,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	30,
	2695);
INSERT INTO V_BIN
	VALUES (2698,
	2710,
	2708,
	'-');
INSERT INTO V_VAL
	VALUES (2710,
	0,
	0,
	4,
	32,
	38,
	0,
	0,
	0,
	0,
	30,
	2695);
INSERT INTO V_PVL
	VALUES (2710,
	0,
	0,
	0,
	2711);
INSERT INTO V_VAL
	VALUES (2702,
	1,
	1,
	5,
	1,
	9,
	0,
	0,
	0,
	0,
	30,
	2695);
INSERT INTO V_TVL
	VALUES (2702,
	2712);
INSERT INTO V_VAL
	VALUES (2713,
	0,
	0,
	5,
	19,
	24,
	0,
	0,
	0,
	0,
	30,
	2695);
INSERT INTO V_PVL
	VALUES (2713,
	0,
	0,
	0,
	2714);
INSERT INTO V_VAL
	VALUES (2701,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	30,
	2695);
INSERT INTO V_BIN
	VALUES (2701,
	2715,
	2713,
	'-');
INSERT INTO V_VAL
	VALUES (2715,
	0,
	0,
	5,
	34,
	41,
	0,
	0,
	0,
	0,
	30,
	2695);
INSERT INTO V_PVL
	VALUES (2715,
	0,
	0,
	0,
	2716);
INSERT INTO V_VAL
	VALUES (2705,
	1,
	1,
	6,
	1,
	10,
	0,
	0,
	0,
	0,
	30,
	2695);
INSERT INTO V_TVL
	VALUES (2705,
	2717);
INSERT INTO V_VAL
	VALUES (2718,
	0,
	0,
	6,
	15,
	22,
	0,
	0,
	0,
	0,
	30,
	2695);
INSERT INTO V_TVL
	VALUES (2718,
	2707);
INSERT INTO V_VAL
	VALUES (2719,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	30,
	2695);
INSERT INTO V_BIN
	VALUES (2719,
	2720,
	2718,
	'*');
INSERT INTO V_VAL
	VALUES (2720,
	0,
	0,
	6,
	26,
	33,
	0,
	0,
	0,
	0,
	30,
	2695);
INSERT INTO V_TVL
	VALUES (2720,
	2707);
INSERT INTO V_VAL
	VALUES (2704,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	30,
	2695);
INSERT INTO V_BIN
	VALUES (2704,
	2721,
	2719,
	'+');
INSERT INTO V_VAL
	VALUES (2722,
	0,
	0,
	6,
	39,
	47,
	0,
	0,
	0,
	0,
	30,
	2695);
INSERT INTO V_TVL
	VALUES (2722,
	2712);
INSERT INTO V_VAL
	VALUES (2721,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	30,
	2695);
INSERT INTO V_BIN
	VALUES (2721,
	2723,
	2722,
	'*');
INSERT INTO V_VAL
	VALUES (2723,
	0,
	0,
	6,
	51,
	59,
	0,
	0,
	0,
	0,
	30,
	2695);
INSERT INTO V_TVL
	VALUES (2723,
	2712);
INSERT INTO V_VAL
	VALUES (2724,
	0,
	0,
	7,
	17,
	-1,
	7,
	23,
	0,
	0,
	10,
	2695);
INSERT INTO V_BRV
	VALUES (2724,
	2725,
	1,
	7,
	11);
INSERT INTO V_VAL
	VALUES (2726,
	0,
	0,
	7,
	26,
	35,
	0,
	0,
	0,
	0,
	30,
	2695);
INSERT INTO V_TVL
	VALUES (2726,
	2717);
INSERT INTO V_PAR
	VALUES (2726,
	0,
	2724,
	'x',
	0,
	7,
	23);
INSERT INTO V_VAL
	VALUES (2727,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	10,
	2695);
INSERT INTO V_BIN
	VALUES (2727,
	2728,
	2724,
	'*');
INSERT INTO V_VAL
	VALUES (2728,
	0,
	0,
	7,
	41,
	51,
	0,
	0,
	0,
	0,
	10,
	2695);
INSERT INTO V_SCV
	VALUES (2728,
	2729,
	10);
INSERT INTO V_VAL
	VALUES (2706,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	10,
	2695);
INSERT INTO V_BIN
	VALUES (2706,
	2730,
	2727,
	'*');
INSERT INTO V_VAL
	VALUES (2730,
	0,
	0,
	7,
	55,
	58,
	0,
	0,
	0,
	0,
	30,
	2695);
INSERT INTO V_LIN
	VALUES (2730,
	'1000');
INSERT INTO V_VAR
	VALUES (2707,
	2695,
	'deltaLat',
	1,
	30);
INSERT INTO V_TRN
	VALUES (2707,
	0,
	'');
INSERT INTO V_VAR
	VALUES (2712,
	2695,
	'deltaLong',
	1,
	30);
INSERT INTO V_TRN
	VALUES (2712,
	0,
	'');
INSERT INTO V_VAR
	VALUES (2717,
	2695,
	'sumSquares',
	1,
	30);
INSERT INTO V_TRN
	VALUES (2717,
	0,
	'');
INSERT INTO SPR_PEP
	VALUES (2731,
	2537,
	2520);
INSERT INTO SPR_PO
	VALUES (2731,
	'registerListener',
	'',
	'',
	1);
INSERT INTO ACT_POB
	VALUES (2732,
	2731);
INSERT INTO ACT_ACT
	VALUES (2732,
	'interface operation',
	0,
	2733,
	0,
	0,
	'Location::Location::registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2733,
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
	2732,
	0);
INSERT INTO SPR_PEP
	VALUES (2734,
	2541,
	2520);
INSERT INTO SPR_PO
	VALUES (2734,
	'unregisterListener',
	'',
	'',
	1);
INSERT INTO ACT_POB
	VALUES (2735,
	2734);
INSERT INTO ACT_ACT
	VALUES (2735,
	'interface operation',
	0,
	2736,
	0,
	0,
	'Location::Location::unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2736,
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
	2735,
	0);
INSERT INTO PE_PE
	VALUES (2737,
	1,
	0,
	2516,
	7);
INSERT INTO EP_PKG
	VALUES (2737,
	0,
	2688,
	'Location',
	'',
	0);
INSERT INTO PE_PE
	VALUES (2738,
	1,
	2737,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (2738,
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
	VALUES (2739,
	'longitudeIncrement',
	'',
	10,
	2738,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (2739,
	10);
INSERT INTO CNST_LSC
	VALUES (2739,
	10,
	'0.00002');
INSERT INTO CNST_SYC
	VALUES (2740,
	'latitudeIncrement',
	'',
	10,
	2738,
	2739,
	10);
INSERT INTO CNST_LFSC
	VALUES (2740,
	10);
INSERT INTO CNST_LSC
	VALUES (2740,
	10,
	'0.00001');
INSERT INTO CNST_SYC
	VALUES (2741,
	'initialLatitude',
	'',
	10,
	2738,
	2740,
	10);
INSERT INTO CNST_LFSC
	VALUES (2741,
	10);
INSERT INTO CNST_LSC
	VALUES (2741,
	10,
	'32.432237');
INSERT INTO CNST_SYC
	VALUES (2742,
	'initialLongitude',
	'',
	10,
	2738,
	2741,
	10);
INSERT INTO CNST_LFSC
	VALUES (2742,
	10);
INSERT INTO CNST_LSC
	VALUES (2742,
	10,
	'-110.812283');
INSERT INTO CNST_SYC
	VALUES (2743,
	'updatePeriod',
	'',
	30,
	2738,
	2742,
	10);
INSERT INTO CNST_LFSC
	VALUES (2743,
	30);
INSERT INTO CNST_LSC
	VALUES (2743,
	30,
	'1000000');
INSERT INTO PE_PE
	VALUES (2744,
	1,
	2737,
	0,
	5);
INSERT INTO S_EE
	VALUES (2744,
	'Math',
	'',
	'MATH',
	0,
	'',
	'Math',
	1);
INSERT INTO S_BRG
	VALUES (2725,
	2744,
	'sqrt',
	'',
	0,
	10,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2745,
	2725,
	'x',
	10,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2746,
	2725);
INSERT INTO ACT_ACT
	VALUES (2746,
	'bridge',
	0,
	2747,
	0,
	0,
	'Math::sqrt',
	0);
INSERT INTO ACT_BLK
	VALUES (2747,
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
	2746,
	0);
INSERT INTO PE_PE
	VALUES (2748,
	1,
	2737,
	0,
	5);
INSERT INTO S_EE
	VALUES (2748,
	'Logging',
	'',
	'LOG',
	0,
	'',
	'Logging',
	1);
INSERT INTO S_BRG
	VALUES (2749,
	2748,
	'LogSuccess',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2750,
	2749,
	'message',
	130,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2751,
	2749);
INSERT INTO ACT_ACT
	VALUES (2751,
	'bridge',
	0,
	2752,
	0,
	0,
	'Logging::LogSuccess',
	0);
INSERT INTO ACT_BLK
	VALUES (2752,
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
	2751,
	0);
INSERT INTO S_BRG
	VALUES (2753,
	2748,
	'LogFailure',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2754,
	2753,
	'message',
	130,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2755,
	2753);
INSERT INTO ACT_ACT
	VALUES (2755,
	'bridge',
	0,
	2756,
	0,
	0,
	'Logging::LogFailure',
	0);
INSERT INTO ACT_BLK
	VALUES (2756,
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
	2755,
	0);
INSERT INTO S_BRG
	VALUES (2757,
	2748,
	'LogInfo',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2758,
	2757,
	'message',
	130,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2759,
	2757);
INSERT INTO ACT_ACT
	VALUES (2759,
	'bridge',
	0,
	2760,
	0,
	0,
	'Logging::LogInfo',
	0);
INSERT INTO ACT_BLK
	VALUES (2760,
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
	2759,
	0);
INSERT INTO S_BRG
	VALUES (2761,
	2748,
	'LogDate',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2762,
	2761,
	'd',
	272,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2763,
	2761,
	'message',
	130,
	0,
	'',
	2762,
	'');
INSERT INTO ACT_BRB
	VALUES (2764,
	2761);
INSERT INTO ACT_ACT
	VALUES (2764,
	'bridge',
	0,
	2765,
	0,
	0,
	'Logging::LogDate',
	0);
INSERT INTO ACT_BLK
	VALUES (2765,
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
	2764,
	0);
INSERT INTO S_BRG
	VALUES (2766,
	2748,
	'LogTime',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2767,
	2766,
	't',
	278,
	0,
	'',
	2768,
	'');
INSERT INTO S_BPARM
	VALUES (2768,
	2766,
	'message',
	130,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2769,
	2766);
INSERT INTO ACT_ACT
	VALUES (2769,
	'bridge',
	0,
	2770,
	0,
	0,
	'Logging::LogTime',
	0);
INSERT INTO ACT_BLK
	VALUES (2770,
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
	2769,
	0);
INSERT INTO S_BRG
	VALUES (2771,
	2748,
	'LogReal',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2772,
	2771,
	'r',
	10,
	0,
	'',
	2773,
	'');
INSERT INTO S_BPARM
	VALUES (2773,
	2771,
	'message',
	130,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2774,
	2771);
INSERT INTO ACT_ACT
	VALUES (2774,
	'bridge',
	0,
	2775,
	0,
	0,
	'Logging::LogReal',
	0);
INSERT INTO ACT_BLK
	VALUES (2775,
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
	2774,
	0);
INSERT INTO S_BRG
	VALUES (2776,
	2748,
	'LogInteger',
	'',
	0,
	6,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2777,
	2776,
	'message',
	30,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2778,
	2776);
INSERT INTO ACT_ACT
	VALUES (2778,
	'bridge',
	0,
	2779,
	0,
	0,
	'Logging::LogInteger',
	0);
INSERT INTO ACT_BLK
	VALUES (2779,
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
	2778,
	0);
INSERT INTO PE_PE
	VALUES (2780,
	1,
	2737,
	0,
	5);
INSERT INTO S_EE
	VALUES (2780,
	'Time',
	'The Time external entity provides date, timestamp, and timer related operations.',
	'TIM',
	0,
	'',
	'Time',
	1);
INSERT INTO S_BRG
	VALUES (2781,
	2780,
	'current_date',
	'',
	1,
	272,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (2782,
	2781);
INSERT INTO ACT_ACT
	VALUES (2782,
	'bridge',
	0,
	2783,
	0,
	0,
	'Time::current_date',
	0);
INSERT INTO ACT_BLK
	VALUES (2783,
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
	2782,
	0);
INSERT INTO S_BRG
	VALUES (2784,
	2780,
	'create_date',
	'',
	1,
	272,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2785,
	2784,
	'second',
	30,
	0,
	'',
	2786,
	'');
INSERT INTO S_BPARM
	VALUES (2787,
	2784,
	'minute',
	30,
	0,
	'',
	2788,
	'');
INSERT INTO S_BPARM
	VALUES (2788,
	2784,
	'hour',
	30,
	0,
	'',
	2789,
	'');
INSERT INTO S_BPARM
	VALUES (2789,
	2784,
	'day',
	30,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2786,
	2784,
	'month',
	30,
	0,
	'',
	2787,
	'');
INSERT INTO S_BPARM
	VALUES (2790,
	2784,
	'year',
	30,
	0,
	'',
	2785,
	'');
INSERT INTO ACT_BRB
	VALUES (2791,
	2784);
INSERT INTO ACT_ACT
	VALUES (2791,
	'bridge',
	0,
	2792,
	0,
	0,
	'Time::create_date',
	0);
INSERT INTO ACT_BLK
	VALUES (2792,
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
	2791,
	0);
INSERT INTO S_BRG
	VALUES (2793,
	2780,
	'get_second',
	'',
	1,
	30,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2794,
	2793,
	'date',
	272,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2795,
	2793);
INSERT INTO ACT_ACT
	VALUES (2795,
	'bridge',
	0,
	2796,
	0,
	0,
	'Time::get_second',
	0);
INSERT INTO ACT_BLK
	VALUES (2796,
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
	2795,
	0);
INSERT INTO S_BRG
	VALUES (2797,
	2780,
	'get_minute',
	'',
	1,
	30,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2798,
	2797,
	'date',
	272,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2799,
	2797);
INSERT INTO ACT_ACT
	VALUES (2799,
	'bridge',
	0,
	2800,
	0,
	0,
	'Time::get_minute',
	0);
INSERT INTO ACT_BLK
	VALUES (2800,
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
	2799,
	0);
INSERT INTO S_BRG
	VALUES (2801,
	2780,
	'get_hour',
	'',
	1,
	30,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2802,
	2801,
	'date',
	272,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2803,
	2801);
INSERT INTO ACT_ACT
	VALUES (2803,
	'bridge',
	0,
	2804,
	0,
	0,
	'Time::get_hour',
	0);
INSERT INTO ACT_BLK
	VALUES (2804,
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
	2803,
	0);
INSERT INTO S_BRG
	VALUES (2805,
	2780,
	'get_day',
	'',
	1,
	30,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2806,
	2805,
	'date',
	272,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2807,
	2805);
INSERT INTO ACT_ACT
	VALUES (2807,
	'bridge',
	0,
	2808,
	0,
	0,
	'Time::get_day',
	0);
INSERT INTO ACT_BLK
	VALUES (2808,
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
	2807,
	0);
INSERT INTO S_BRG
	VALUES (2809,
	2780,
	'get_month',
	'',
	1,
	30,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2810,
	2809,
	'date',
	272,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2811,
	2809);
INSERT INTO ACT_ACT
	VALUES (2811,
	'bridge',
	0,
	2812,
	0,
	0,
	'Time::get_month',
	0);
INSERT INTO ACT_BLK
	VALUES (2812,
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
	2811,
	0);
INSERT INTO S_BRG
	VALUES (2813,
	2780,
	'get_year',
	'',
	1,
	30,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2814,
	2813,
	'date',
	272,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2815,
	2813);
INSERT INTO ACT_ACT
	VALUES (2815,
	'bridge',
	0,
	2816,
	0,
	0,
	'Time::get_year',
	0);
INSERT INTO ACT_BLK
	VALUES (2816,
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
	2815,
	0);
INSERT INTO S_BRG
	VALUES (2817,
	2780,
	'current_clock',
	'',
	1,
	278,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (2818,
	2817);
INSERT INTO ACT_ACT
	VALUES (2818,
	'bridge',
	0,
	2819,
	0,
	0,
	'Time::current_clock',
	0);
INSERT INTO ACT_BLK
	VALUES (2819,
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
	2818,
	0);
INSERT INTO S_BRG
	VALUES (2820,
	2780,
	'timer_start',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Returns the instance
handle of the timer.',
	1,
	332,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2821,
	2820,
	'microseconds',
	30,
	0,
	'',
	2822,
	'');
INSERT INTO S_BPARM
	VALUES (2822,
	2820,
	'event_inst',
	335,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2823,
	2820);
INSERT INTO ACT_ACT
	VALUES (2823,
	'bridge',
	0,
	2824,
	0,
	0,
	'Time::timer_start',
	0);
INSERT INTO ACT_BLK
	VALUES (2824,
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
	2823,
	0);
INSERT INTO S_BRG
	VALUES (2825,
	2780,
	'timer_start_recurring',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Upon expiration, the
timer will be restarted and fire again in the specified number of microseconds
generating the passed event. This bridge operation returns the instance handle
of the timer.',
	1,
	332,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2826,
	2825,
	'microseconds',
	30,
	0,
	'',
	2827,
	'');
INSERT INTO S_BPARM
	VALUES (2827,
	2825,
	'event_inst',
	335,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2828,
	2825);
INSERT INTO ACT_ACT
	VALUES (2828,
	'bridge',
	0,
	2829,
	0,
	0,
	'Time::timer_start_recurring',
	0);
INSERT INTO ACT_BLK
	VALUES (2829,
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
	2828,
	0);
INSERT INTO S_BRG
	VALUES (2830,
	2780,
	'timer_remaining_time',
	'Returns the time remaining (in microseconds) for the passed timer instance. If
the timer has expired, a zero value is returned.',
	1,
	30,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2831,
	2830,
	'timer_inst_ref',
	332,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2832,
	2830);
INSERT INTO ACT_ACT
	VALUES (2832,
	'bridge',
	0,
	2833,
	0,
	0,
	'Time::timer_remaining_time',
	0);
INSERT INTO ACT_BLK
	VALUES (2833,
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
	2832,
	0);
INSERT INTO S_BRG
	VALUES (2834,
	2780,
	'timer_reset_time',
	'This bridge operation attempts to set the passed existing timer to expire in
the specified number of microseconds. If the timer exists (that is, it has not
expired), a TRUE value is returned. If the timer no longer exists, a FALSE value
is returned.',
	1,
	108,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2835,
	2834,
	'timer_inst_ref',
	332,
	0,
	'',
	2836,
	'');
INSERT INTO S_BPARM
	VALUES (2836,
	2834,
	'microseconds',
	30,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2837,
	2834);
INSERT INTO ACT_ACT
	VALUES (2837,
	'bridge',
	0,
	2838,
	0,
	0,
	'Time::timer_reset_time',
	0);
INSERT INTO ACT_BLK
	VALUES (2838,
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
	2837,
	0);
INSERT INTO S_BRG
	VALUES (2839,
	2780,
	'timer_add_time',
	'This bridge operation attempts to add the specified number of microseconds to a
passed existing timer. If the timer exists (that is, it has not expired), a TRUE
value is returned. If the timer no longer exists, a FALSE value is returned.',
	1,
	108,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2840,
	2839,
	'timer_inst_ref',
	332,
	0,
	'',
	2841,
	'');
INSERT INTO S_BPARM
	VALUES (2841,
	2839,
	'microseconds',
	30,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2842,
	2839);
INSERT INTO ACT_ACT
	VALUES (2842,
	'bridge',
	0,
	2843,
	0,
	0,
	'Time::timer_add_time',
	0);
INSERT INTO ACT_BLK
	VALUES (2843,
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
	2842,
	0);
INSERT INTO S_BRG
	VALUES (2844,
	2780,
	'timer_cancel',
	'This bridge operation cancels and deletes the passed timer instance. If the 
timer exists (that is, it had not expired), a TRUE value is returned. If the
timer no longer exists, a FALSE value is returned.',
	1,
	108,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2845,
	2844,
	'timer_inst_ref',
	332,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2846,
	2844);
INSERT INTO ACT_ACT
	VALUES (2846,
	'bridge',
	0,
	2847,
	0,
	0,
	'Time::timer_cancel',
	0);
INSERT INTO ACT_BLK
	VALUES (2847,
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
	2846,
	0);
INSERT INTO PE_PE
	VALUES (2848,
	1,
	2737,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (2848,
	'GPS',
	1,
	'GPS',
	'Simulates a GPS.',
	0);
INSERT INTO O_TFR
	VALUES (2849,
	2848,
	'activate',
	'',
	6,
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
	VALUES (2850,
	2849);
INSERT INTO ACT_ACT
	VALUES (2850,
	'class operation',
	0,
	2851,
	0,
	0,
	'GPS::activate',
	0);
INSERT INTO ACT_BLK
	VALUES (2851,
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
	2850,
	0);
INSERT INTO ACT_SMT
	VALUES (2852,
	2851,
	2853,
	3,
	1,
	'GPS::activate line: 3');
INSERT INTO ACT_FIO
	VALUES (2852,
	2854,
	1,
	'any',
	2848,
	3,
	34);
INSERT INTO ACT_SMT
	VALUES (2853,
	2851,
	2855,
	4,
	1,
	'GPS::activate line: 4');
INSERT INTO ACT_IF
	VALUES (2853,
	2856,
	2857,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2855,
	2851,
	2858,
	13,
	1,
	'GPS::activate line: 13');
INSERT INTO E_ESS
	VALUES (2855,
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
	VALUES (2855,
	1,
	2859);
INSERT INTO E_CSME
	VALUES (2855,
	2860);
INSERT INTO E_CEA
	VALUES (2855);
INSERT INTO ACT_SMT
	VALUES (2858,
	2851,
	0,
	14,
	1,
	'GPS::activate line: 14');
INSERT INTO ACT_AI
	VALUES (2858,
	2861,
	2862,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2863,
	0,
	0,
	4,
	12,
	14,
	0,
	0,
	0,
	0,
	106,
	2851);
INSERT INTO V_IRF
	VALUES (2863,
	2854);
INSERT INTO V_VAL
	VALUES (2857,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	2851);
INSERT INTO V_UNY
	VALUES (2857,
	2863,
	'empty');
INSERT INTO V_VAL
	VALUES (2864,
	1,
	0,
	14,
	1,
	3,
	0,
	0,
	0,
	0,
	106,
	2851);
INSERT INTO V_IRF
	VALUES (2864,
	2854);
INSERT INTO V_VAL
	VALUES (2862,
	1,
	0,
	14,
	5,
	9,
	0,
	0,
	0,
	0,
	332,
	2851);
INSERT INTO V_AVL
	VALUES (2862,
	2864,
	2848,
	2865);
INSERT INTO V_VAL
	VALUES (2861,
	0,
	0,
	14,
	18,
	-1,
	14,
	41,
	14,
	59,
	332,
	2851);
INSERT INTO V_BRV
	VALUES (2861,
	2825,
	1,
	14,
	13);
INSERT INTO V_VAL
	VALUES (2866,
	0,
	0,
	14,
	53,
	56,
	0,
	0,
	0,
	0,
	335,
	2851);
INSERT INTO V_TVL
	VALUES (2866,
	2859);
INSERT INTO V_PAR
	VALUES (2866,
	0,
	2861,
	'event_inst',
	2867,
	14,
	41);
INSERT INTO V_VAL
	VALUES (2867,
	0,
	0,
	14,
	73,
	84,
	0,
	0,
	0,
	0,
	30,
	2851);
INSERT INTO V_SCV
	VALUES (2867,
	2743,
	30);
INSERT INTO V_PAR
	VALUES (2867,
	0,
	2861,
	'microseconds',
	0,
	14,
	59);
INSERT INTO V_VAR
	VALUES (2854,
	2851,
	'gps',
	1,
	106);
INSERT INTO V_INT
	VALUES (2854,
	0,
	2848);
INSERT INTO V_VAR
	VALUES (2859,
	2851,
	'tick',
	1,
	335);
INSERT INTO V_TRN
	VALUES (2859,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (2856,
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
	2850,
	0);
INSERT INTO ACT_SMT
	VALUES (2868,
	2856,
	2869,
	6,
	3,
	'GPS::activate line: 6');
INSERT INTO ACT_CR
	VALUES (2868,
	2854,
	0,
	2848,
	6,
	33);
INSERT INTO ACT_SMT
	VALUES (2869,
	2856,
	2870,
	7,
	3,
	'GPS::activate line: 7');
INSERT INTO ACT_AI
	VALUES (2869,
	2871,
	2872,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2870,
	2856,
	2873,
	8,
	3,
	'GPS::activate line: 8');
INSERT INTO ACT_AI
	VALUES (2870,
	2874,
	2875,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2873,
	2856,
	0,
	9,
	3,
	'GPS::activate line: 9');
INSERT INTO ACT_AI
	VALUES (2873,
	2876,
	2877,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2878,
	1,
	0,
	7,
	3,
	5,
	0,
	0,
	0,
	0,
	106,
	2856);
INSERT INTO V_IRF
	VALUES (2878,
	2854);
INSERT INTO V_VAL
	VALUES (2872,
	1,
	0,
	7,
	7,
	20,
	0,
	0,
	0,
	0,
	30,
	2856);
INSERT INTO V_AVL
	VALUES (2872,
	2878,
	2848,
	2879);
INSERT INTO V_VAL
	VALUES (2871,
	0,
	0,
	7,
	24,
	24,
	0,
	0,
	0,
	0,
	30,
	2856);
INSERT INTO V_LIN
	VALUES (2871,
	'0');
INSERT INTO V_VAL
	VALUES (2880,
	1,
	0,
	8,
	3,
	5,
	0,
	0,
	0,
	0,
	106,
	2856);
INSERT INTO V_IRF
	VALUES (2880,
	2854);
INSERT INTO V_VAL
	VALUES (2875,
	1,
	0,
	8,
	7,
	21,
	0,
	0,
	0,
	0,
	10,
	2856);
INSERT INTO V_AVL
	VALUES (2875,
	2880,
	2848,
	2881);
INSERT INTO V_VAL
	VALUES (2874,
	0,
	0,
	8,
	26,
	40,
	0,
	0,
	0,
	0,
	10,
	2856);
INSERT INTO V_SCV
	VALUES (2874,
	2741,
	10);
INSERT INTO V_VAL
	VALUES (2882,
	1,
	0,
	9,
	3,
	5,
	0,
	0,
	0,
	0,
	106,
	2856);
INSERT INTO V_IRF
	VALUES (2882,
	2854);
INSERT INTO V_VAL
	VALUES (2877,
	1,
	0,
	9,
	7,
	22,
	0,
	0,
	0,
	0,
	10,
	2856);
INSERT INTO V_AVL
	VALUES (2877,
	2882,
	2848,
	2883);
INSERT INTO V_VAL
	VALUES (2876,
	0,
	0,
	9,
	26,
	41,
	0,
	0,
	0,
	0,
	10,
	2856);
INSERT INTO V_SCV
	VALUES (2876,
	2742,
	10);
INSERT INTO O_NBATTR
	VALUES (2865,
	2848);
INSERT INTO O_BATTR
	VALUES (2865,
	2848);
INSERT INTO O_ATTR
	VALUES (2865,
	2848,
	2879,
	'timer',
	'Handle for underlying timer mechanism enabling the generation 
of delayed events that drive the GPS simulator.',
	'',
	'timer',
	0,
	332,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2881,
	2848);
INSERT INTO O_BATTR
	VALUES (2881,
	2848);
INSERT INTO O_ATTR
	VALUES (2881,
	2848,
	0,
	'currentLatitude',
	'Current latitude, expressed in decimal degrees, of the simulated GPS.',
	'',
	'currentLatitude',
	0,
	10,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2883,
	2848);
INSERT INTO O_BATTR
	VALUES (2883,
	2848);
INSERT INTO O_ATTR
	VALUES (2883,
	2848,
	2881,
	'currentLongitude',
	'Current longitude, expressed in decimal degrees, of the simulated GPS.',
	'',
	'currentLongitude',
	0,
	10,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2879,
	2848);
INSERT INTO O_BATTR
	VALUES (2879,
	2848);
INSERT INTO O_ATTR
	VALUES (2879,
	2848,
	2883,
	'motionSegments',
	'The number of motion segments simulated by the GPS.',
	'',
	'motionSegments',
	0,
	30,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2848);
INSERT INTO O_ID
	VALUES (1,
	2848);
INSERT INTO O_ID
	VALUES (2,
	2848);
INSERT INTO SM_ASM
	VALUES (2884,
	2848);
INSERT INTO SM_SM
	VALUES (2884,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (2884);
INSERT INTO SM_LEVT
	VALUES (2860,
	2884,
	0);
INSERT INTO SM_SEVT
	VALUES (2860,
	2884,
	0);
INSERT INTO SM_EVT
	VALUES (2860,
	2884,
	0,
	1,
	'tick',
	0,
	'',
	'GPS_A1',
	'');
INSERT INTO SM_LEVT
	VALUES (2885,
	2884,
	0);
INSERT INTO SM_SEVT
	VALUES (2885,
	2884,
	0);
INSERT INTO SM_EVT
	VALUES (2885,
	2884,
	0,
	2,
	'registerListener',
	0,
	'',
	'GPS_A2',
	'');
INSERT INTO SM_LEVT
	VALUES (2886,
	2884,
	0);
INSERT INTO SM_SEVT
	VALUES (2886,
	2884,
	0);
INSERT INTO SM_EVT
	VALUES (2886,
	2884,
	0,
	3,
	'unregisterListener',
	0,
	'',
	'GPS_A3',
	'');
INSERT INTO SM_STATE
	VALUES (2887,
	2884,
	0,
	'idle',
	1,
	0);
INSERT INTO SM_EIGN
	VALUES (2887,
	2860,
	2884,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2887,
	2860,
	2884,
	0);
INSERT INTO SM_SEME
	VALUES (2887,
	2885,
	2884,
	0);
INSERT INTO SM_CH
	VALUES (2887,
	2886,
	2884,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2887,
	2886,
	2884,
	0);
INSERT INTO SM_MOAH
	VALUES (2888,
	2884,
	2887);
INSERT INTO SM_AH
	VALUES (2888,
	2884);
INSERT INTO SM_ACT
	VALUES (2888,
	2884,
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
	VALUES (2889,
	2884,
	2888);
INSERT INTO ACT_ACT
	VALUES (2889,
	'class state',
	0,
	2890,
	0,
	0,
	'GPS::idle',
	0);
INSERT INTO ACT_BLK
	VALUES (2890,
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
	2889,
	0);
INSERT INTO ACT_SMT
	VALUES (2891,
	2890,
	2892,
	2,
	1,
	'GPS::idle line: 2');
INSERT INTO ACT_FIO
	VALUES (2891,
	2893,
	1,
	'any',
	2848,
	2,
	34);
INSERT INTO ACT_SMT
	VALUES (2892,
	2890,
	2894,
	3,
	1,
	'GPS::idle line: 3');
INSERT INTO ACT_AI
	VALUES (2892,
	2895,
	2896,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2894,
	2890,
	2897,
	4,
	1,
	'GPS::idle line: 4');
INSERT INTO ACT_BRG
	VALUES (2894,
	2757,
	4,
	6,
	4,
	1);
INSERT INTO ACT_SMT
	VALUES (2897,
	2890,
	0,
	6,
	1,
	'GPS::idle line: 6');
INSERT INTO ACT_IF
	VALUES (2897,
	2898,
	2899,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2896,
	1,
	1,
	3,
	1,
	3,
	0,
	0,
	0,
	0,
	108,
	2890);
INSERT INTO V_TVL
	VALUES (2896,
	2900);
INSERT INTO V_VAL
	VALUES (2895,
	0,
	0,
	3,
	12,
	-1,
	3,
	25,
	0,
	0,
	108,
	2890);
INSERT INTO V_BRV
	VALUES (2895,
	2844,
	1,
	3,
	7);
INSERT INTO V_VAL
	VALUES (2901,
	0,
	0,
	3,
	41,
	43,
	0,
	0,
	0,
	0,
	106,
	2890);
INSERT INTO V_IRF
	VALUES (2901,
	2893);
INSERT INTO V_VAL
	VALUES (2902,
	0,
	0,
	3,
	45,
	49,
	0,
	0,
	0,
	0,
	332,
	2890);
INSERT INTO V_AVL
	VALUES (2902,
	2901,
	2848,
	2865);
INSERT INTO V_PAR
	VALUES (2902,
	0,
	2895,
	'timer_inst_ref',
	0,
	3,
	25);
INSERT INTO V_VAL
	VALUES (2903,
	0,
	0,
	4,
	23,
	54,
	0,
	0,
	0,
	0,
	130,
	2890);
INSERT INTO V_LST
	VALUES (2903,
	'Location listener unregistered.');
INSERT INTO V_PAR
	VALUES (2903,
	2894,
	0,
	'message',
	0,
	4,
	14);
INSERT INTO V_VAL
	VALUES (2904,
	0,
	0,
	6,
	10,
	12,
	0,
	0,
	0,
	0,
	108,
	2890);
INSERT INTO V_TVL
	VALUES (2904,
	2900);
INSERT INTO V_VAL
	VALUES (2899,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	2890);
INSERT INTO V_UNY
	VALUES (2899,
	2904,
	'not');
INSERT INTO V_VAR
	VALUES (2893,
	2890,
	'gps',
	1,
	106);
INSERT INTO V_INT
	VALUES (2893,
	0,
	2848);
INSERT INTO V_VAR
	VALUES (2900,
	2890,
	'res',
	1,
	108);
INSERT INTO V_TRN
	VALUES (2900,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (2898,
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
	2889,
	0);
INSERT INTO ACT_SMT
	VALUES (2905,
	2898,
	0,
	7,
	3,
	'GPS::idle line: 7');
INSERT INTO ACT_BRG
	VALUES (2905,
	2753,
	7,
	8,
	7,
	3);
INSERT INTO V_VAL
	VALUES (2906,
	0,
	0,
	7,
	29,
	70,
	0,
	0,
	0,
	0,
	130,
	2898);
INSERT INTO V_LST
	VALUES (2906,
	'Location listener: timer_cancel() failed.');
INSERT INTO V_PAR
	VALUES (2906,
	2905,
	0,
	'message',
	0,
	7,
	20);
INSERT INTO SM_STATE
	VALUES (2907,
	2884,
	0,
	'locating',
	2,
	0);
INSERT INTO SM_SEME
	VALUES (2907,
	2860,
	2884,
	0);
INSERT INTO SM_CH
	VALUES (2907,
	2885,
	2884,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2907,
	2885,
	2884,
	0);
INSERT INTO SM_SEME
	VALUES (2907,
	2886,
	2884,
	0);
INSERT INTO SM_MOAH
	VALUES (2908,
	2884,
	2907);
INSERT INTO SM_AH
	VALUES (2908,
	2884);
INSERT INTO SM_ACT
	VALUES (2908,
	2884,
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
	VALUES (2909,
	2884,
	2908);
INSERT INTO ACT_ACT
	VALUES (2909,
	'class state',
	0,
	2910,
	0,
	0,
	'GPS::locating',
	0);
INSERT INTO ACT_BLK
	VALUES (2910,
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
	2909,
	0);
INSERT INTO ACT_SMT
	VALUES (2911,
	2910,
	2912,
	2,
	1,
	'GPS::locating line: 2');
INSERT INTO ACT_FIO
	VALUES (2911,
	2913,
	1,
	'any',
	2848,
	2,
	34);
INSERT INTO ACT_SMT
	VALUES (2912,
	2910,
	0,
	3,
	1,
	'GPS::locating line: 3');
INSERT INTO ACT_IF
	VALUES (2912,
	2914,
	2915,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2916,
	2910,
	0,
	6,
	1,
	'GPS::locating line: 6');
INSERT INTO ACT_EL
	VALUES (2916,
	2917,
	2918,
	2912);
INSERT INTO ACT_SMT
	VALUES (2919,
	2910,
	0,
	9,
	1,
	'GPS::locating line: 9');
INSERT INTO ACT_E
	VALUES (2919,
	2920,
	2912);
INSERT INTO V_VAL
	VALUES (2921,
	0,
	0,
	3,
	7,
	9,
	0,
	0,
	0,
	0,
	106,
	2910);
INSERT INTO V_IRF
	VALUES (2921,
	2913);
INSERT INTO V_VAL
	VALUES (2922,
	0,
	0,
	3,
	11,
	24,
	0,
	0,
	0,
	0,
	30,
	2910);
INSERT INTO V_AVL
	VALUES (2922,
	2921,
	2848,
	2879);
INSERT INTO V_VAL
	VALUES (2923,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	30,
	2910);
INSERT INTO V_BIN
	VALUES (2923,
	2924,
	2922,
	'%');
INSERT INTO V_VAL
	VALUES (2924,
	0,
	0,
	3,
	28,
	28,
	0,
	0,
	0,
	0,
	30,
	2910);
INSERT INTO V_LIN
	VALUES (2924,
	'3');
INSERT INTO V_VAL
	VALUES (2915,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	2910);
INSERT INTO V_BIN
	VALUES (2915,
	2925,
	2923,
	'==');
INSERT INTO V_VAL
	VALUES (2925,
	0,
	0,
	3,
	34,
	34,
	0,
	0,
	0,
	0,
	30,
	2910);
INSERT INTO V_LIN
	VALUES (2925,
	'0');
INSERT INTO V_VAL
	VALUES (2926,
	0,
	0,
	6,
	9,
	11,
	0,
	0,
	0,
	0,
	106,
	2910);
INSERT INTO V_IRF
	VALUES (2926,
	2913);
INSERT INTO V_VAL
	VALUES (2927,
	0,
	0,
	6,
	13,
	26,
	0,
	0,
	0,
	0,
	30,
	2910);
INSERT INTO V_AVL
	VALUES (2927,
	2926,
	2848,
	2879);
INSERT INTO V_VAL
	VALUES (2928,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	30,
	2910);
INSERT INTO V_BIN
	VALUES (2928,
	2929,
	2927,
	'%');
INSERT INTO V_VAL
	VALUES (2929,
	0,
	0,
	6,
	29,
	29,
	0,
	0,
	0,
	0,
	30,
	2910);
INSERT INTO V_LIN
	VALUES (2929,
	'5');
INSERT INTO V_VAL
	VALUES (2918,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	108,
	2910);
INSERT INTO V_BIN
	VALUES (2918,
	2930,
	2928,
	'==');
INSERT INTO V_VAL
	VALUES (2930,
	0,
	0,
	6,
	35,
	35,
	0,
	0,
	0,
	0,
	30,
	2910);
INSERT INTO V_LIN
	VALUES (2930,
	'0');
INSERT INTO V_VAR
	VALUES (2913,
	2910,
	'gps',
	1,
	106);
INSERT INTO V_INT
	VALUES (2913,
	0,
	2848);
INSERT INTO ACT_BLK
	VALUES (2914,
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
	2909,
	0);
INSERT INTO ACT_SMT
	VALUES (2931,
	2914,
	2932,
	4,
	3,
	'GPS::locating line: 4');
INSERT INTO ACT_AI
	VALUES (2931,
	2933,
	2934,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2932,
	2914,
	0,
	5,
	3,
	'GPS::locating line: 5');
INSERT INTO ACT_AI
	VALUES (2932,
	2935,
	2936,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2937,
	1,
	0,
	4,
	3,
	5,
	0,
	0,
	0,
	0,
	106,
	2914);
INSERT INTO V_IRF
	VALUES (2937,
	2913);
INSERT INTO V_VAL
	VALUES (2934,
	1,
	0,
	4,
	7,
	22,
	0,
	0,
	0,
	0,
	10,
	2914);
INSERT INTO V_AVL
	VALUES (2934,
	2937,
	2848,
	2883);
INSERT INTO V_VAL
	VALUES (2938,
	0,
	0,
	4,
	26,
	28,
	0,
	0,
	0,
	0,
	106,
	2914);
INSERT INTO V_IRF
	VALUES (2938,
	2913);
INSERT INTO V_VAL
	VALUES (2939,
	0,
	0,
	4,
	30,
	45,
	0,
	0,
	0,
	0,
	10,
	2914);
INSERT INTO V_AVL
	VALUES (2939,
	2938,
	2848,
	2883);
INSERT INTO V_VAL
	VALUES (2933,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	10,
	2914);
INSERT INTO V_BIN
	VALUES (2933,
	2940,
	2939,
	'+');
INSERT INTO V_VAL
	VALUES (2941,
	0,
	0,
	4,
	50,
	67,
	0,
	0,
	0,
	0,
	10,
	2914);
INSERT INTO V_SCV
	VALUES (2941,
	2739,
	10);
INSERT INTO V_VAL
	VALUES (2940,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	10,
	2914);
INSERT INTO V_BIN
	VALUES (2940,
	2942,
	2941,
	'*');
INSERT INTO V_VAL
	VALUES (2942,
	0,
	0,
	4,
	71,
	71,
	0,
	0,
	0,
	0,
	30,
	2914);
INSERT INTO V_LIN
	VALUES (2942,
	'2');
INSERT INTO V_VAL
	VALUES (2943,
	1,
	0,
	5,
	3,
	5,
	0,
	0,
	0,
	0,
	106,
	2914);
INSERT INTO V_IRF
	VALUES (2943,
	2913);
INSERT INTO V_VAL
	VALUES (2936,
	1,
	0,
	5,
	7,
	21,
	0,
	0,
	0,
	0,
	10,
	2914);
INSERT INTO V_AVL
	VALUES (2936,
	2943,
	2848,
	2881);
INSERT INTO V_VAL
	VALUES (2944,
	0,
	0,
	5,
	25,
	27,
	0,
	0,
	0,
	0,
	106,
	2914);
INSERT INTO V_IRF
	VALUES (2944,
	2913);
INSERT INTO V_VAL
	VALUES (2945,
	0,
	0,
	5,
	29,
	43,
	0,
	0,
	0,
	0,
	10,
	2914);
INSERT INTO V_AVL
	VALUES (2945,
	2944,
	2848,
	2881);
INSERT INTO V_VAL
	VALUES (2935,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	10,
	2914);
INSERT INTO V_BIN
	VALUES (2935,
	2946,
	2945,
	'+');
INSERT INTO V_VAL
	VALUES (2946,
	0,
	0,
	5,
	47,
	63,
	0,
	0,
	0,
	0,
	10,
	2914);
INSERT INTO V_SCV
	VALUES (2946,
	2740,
	10);
INSERT INTO ACT_BLK
	VALUES (2917,
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
	2909,
	0);
INSERT INTO ACT_SMT
	VALUES (2947,
	2917,
	2948,
	7,
	3,
	'GPS::locating line: 7');
INSERT INTO ACT_AI
	VALUES (2947,
	2949,
	2950,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2948,
	2917,
	0,
	8,
	3,
	'GPS::locating line: 8');
INSERT INTO ACT_AI
	VALUES (2948,
	2951,
	2952,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2953,
	1,
	0,
	7,
	3,
	5,
	0,
	0,
	0,
	0,
	106,
	2917);
INSERT INTO V_IRF
	VALUES (2953,
	2913);
INSERT INTO V_VAL
	VALUES (2950,
	1,
	0,
	7,
	7,
	22,
	0,
	0,
	0,
	0,
	10,
	2917);
INSERT INTO V_AVL
	VALUES (2950,
	2953,
	2848,
	2883);
INSERT INTO V_VAL
	VALUES (2954,
	0,
	0,
	7,
	26,
	28,
	0,
	0,
	0,
	0,
	106,
	2917);
INSERT INTO V_IRF
	VALUES (2954,
	2913);
INSERT INTO V_VAL
	VALUES (2955,
	0,
	0,
	7,
	30,
	45,
	0,
	0,
	0,
	0,
	10,
	2917);
INSERT INTO V_AVL
	VALUES (2955,
	2954,
	2848,
	2883);
INSERT INTO V_VAL
	VALUES (2949,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	10,
	2917);
INSERT INTO V_BIN
	VALUES (2949,
	2956,
	2955,
	'+');
INSERT INTO V_VAL
	VALUES (2956,
	0,
	0,
	7,
	49,
	66,
	0,
	0,
	0,
	0,
	10,
	2917);
INSERT INTO V_SCV
	VALUES (2956,
	2739,
	10);
INSERT INTO V_VAL
	VALUES (2957,
	1,
	0,
	8,
	3,
	5,
	0,
	0,
	0,
	0,
	106,
	2917);
INSERT INTO V_IRF
	VALUES (2957,
	2913);
INSERT INTO V_VAL
	VALUES (2952,
	1,
	0,
	8,
	7,
	21,
	0,
	0,
	0,
	0,
	10,
	2917);
INSERT INTO V_AVL
	VALUES (2952,
	2957,
	2848,
	2881);
INSERT INTO V_VAL
	VALUES (2958,
	0,
	0,
	8,
	25,
	27,
	0,
	0,
	0,
	0,
	106,
	2917);
INSERT INTO V_IRF
	VALUES (2958,
	2913);
INSERT INTO V_VAL
	VALUES (2959,
	0,
	0,
	8,
	29,
	43,
	0,
	0,
	0,
	0,
	10,
	2917);
INSERT INTO V_AVL
	VALUES (2959,
	2958,
	2848,
	2881);
INSERT INTO V_VAL
	VALUES (2951,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	10,
	2917);
INSERT INTO V_BIN
	VALUES (2951,
	2960,
	2959,
	'+');
INSERT INTO V_VAL
	VALUES (2961,
	0,
	0,
	8,
	48,
	64,
	0,
	0,
	0,
	0,
	10,
	2917);
INSERT INTO V_SCV
	VALUES (2961,
	2740,
	10);
INSERT INTO V_VAL
	VALUES (2960,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	10,
	2917);
INSERT INTO V_BIN
	VALUES (2960,
	2962,
	2961,
	'*');
INSERT INTO V_VAL
	VALUES (2962,
	0,
	0,
	8,
	68,
	68,
	0,
	0,
	0,
	0,
	30,
	2917);
INSERT INTO V_LIN
	VALUES (2962,
	'3');
INSERT INTO ACT_BLK
	VALUES (2920,
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
	2909,
	0);
INSERT INTO ACT_SMT
	VALUES (2963,
	2920,
	2964,
	10,
	3,
	'GPS::locating line: 10');
INSERT INTO ACT_AI
	VALUES (2963,
	2965,
	2966,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2964,
	2920,
	0,
	11,
	3,
	'GPS::locating line: 11');
INSERT INTO ACT_AI
	VALUES (2964,
	2967,
	2968,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2969,
	1,
	0,
	10,
	3,
	5,
	0,
	0,
	0,
	0,
	106,
	2920);
INSERT INTO V_IRF
	VALUES (2969,
	2913);
INSERT INTO V_VAL
	VALUES (2966,
	1,
	0,
	10,
	7,
	22,
	0,
	0,
	0,
	0,
	10,
	2920);
INSERT INTO V_AVL
	VALUES (2966,
	2969,
	2848,
	2883);
INSERT INTO V_VAL
	VALUES (2970,
	0,
	0,
	10,
	26,
	28,
	0,
	0,
	0,
	0,
	106,
	2920);
INSERT INTO V_IRF
	VALUES (2970,
	2913);
INSERT INTO V_VAL
	VALUES (2971,
	0,
	0,
	10,
	30,
	45,
	0,
	0,
	0,
	0,
	10,
	2920);
INSERT INTO V_AVL
	VALUES (2971,
	2970,
	2848,
	2883);
INSERT INTO V_VAL
	VALUES (2965,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	10,
	2920);
INSERT INTO V_BIN
	VALUES (2965,
	2972,
	2971,
	'+');
INSERT INTO V_VAL
	VALUES (2972,
	0,
	0,
	10,
	49,
	66,
	0,
	0,
	0,
	0,
	10,
	2920);
INSERT INTO V_SCV
	VALUES (2972,
	2739,
	10);
INSERT INTO V_VAL
	VALUES (2973,
	1,
	0,
	11,
	3,
	5,
	0,
	0,
	0,
	0,
	106,
	2920);
INSERT INTO V_IRF
	VALUES (2973,
	2913);
INSERT INTO V_VAL
	VALUES (2968,
	1,
	0,
	11,
	7,
	21,
	0,
	0,
	0,
	0,
	10,
	2920);
INSERT INTO V_AVL
	VALUES (2968,
	2973,
	2848,
	2881);
INSERT INTO V_VAL
	VALUES (2974,
	0,
	0,
	11,
	25,
	27,
	0,
	0,
	0,
	0,
	106,
	2920);
INSERT INTO V_IRF
	VALUES (2974,
	2913);
INSERT INTO V_VAL
	VALUES (2975,
	0,
	0,
	11,
	29,
	43,
	0,
	0,
	0,
	0,
	10,
	2920);
INSERT INTO V_AVL
	VALUES (2975,
	2974,
	2848,
	2881);
INSERT INTO V_VAL
	VALUES (2967,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	10,
	2920);
INSERT INTO V_BIN
	VALUES (2967,
	2976,
	2975,
	'+');
INSERT INTO V_VAL
	VALUES (2976,
	0,
	0,
	11,
	47,
	63,
	0,
	0,
	0,
	0,
	10,
	2920);
INSERT INTO V_SCV
	VALUES (2976,
	2740,
	10);
INSERT INTO SM_NSTXN
	VALUES (2977,
	2884,
	2887,
	2885,
	0);
INSERT INTO SM_TAH
	VALUES (2978,
	2884,
	2977);
INSERT INTO SM_AH
	VALUES (2978,
	2884);
INSERT INTO SM_ACT
	VALUES (2978,
	2884,
	1,
	'// Activate the simulated GPS.
GPS::activate();

LOG::LogInfo(message: "Location listener registered.");
',
	'');
INSERT INTO ACT_TAB
	VALUES (2979,
	2884,
	2978);
INSERT INTO ACT_ACT
	VALUES (2979,
	'class transition',
	0,
	2980,
	0,
	0,
	'GPS_A2: registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2980,
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
	2979,
	0);
INSERT INTO ACT_SMT
	VALUES (2981,
	2980,
	2982,
	2,
	1,
	'GPS_A2: registerListener line: 2');
INSERT INTO ACT_TFM
	VALUES (2981,
	2849,
	0,
	2,
	6,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (2982,
	2980,
	0,
	4,
	1,
	'GPS_A2: registerListener line: 4');
INSERT INTO ACT_BRG
	VALUES (2982,
	2757,
	4,
	6,
	4,
	1);
INSERT INTO V_VAL
	VALUES (2983,
	0,
	0,
	4,
	23,
	52,
	0,
	0,
	0,
	0,
	130,
	2980);
INSERT INTO V_LST
	VALUES (2983,
	'Location listener registered.');
INSERT INTO V_PAR
	VALUES (2983,
	2982,
	0,
	'message',
	0,
	4,
	14);
INSERT INTO SM_TXN
	VALUES (2977,
	2884,
	2907,
	0);
INSERT INTO SM_NSTXN
	VALUES (2984,
	2884,
	2907,
	2886,
	0);
INSERT INTO SM_TAH
	VALUES (2985,
	2884,
	2984);
INSERT INTO SM_AH
	VALUES (2985,
	2884);
INSERT INTO SM_ACT
	VALUES (2985,
	2884,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2986,
	2884,
	2985);
INSERT INTO ACT_ACT
	VALUES (2986,
	'class transition',
	0,
	2987,
	0,
	0,
	'GPS_A3: unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2987,
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
	2986,
	0);
INSERT INTO SM_TXN
	VALUES (2984,
	2884,
	2887,
	0);
INSERT INTO SM_NSTXN
	VALUES (2988,
	2884,
	2907,
	2860,
	0);
INSERT INTO SM_TAH
	VALUES (2989,
	2884,
	2988);
INSERT INTO SM_AH
	VALUES (2989,
	2884);
INSERT INTO SM_ACT
	VALUES (2989,
	2884,
	1,
	'// Increment simulated motion segment count.
select any gps from instances of GPS;
gps.motionSegments = gps.motionSegments + 1;
',
	'');
INSERT INTO ACT_TAB
	VALUES (2990,
	2884,
	2989);
INSERT INTO ACT_ACT
	VALUES (2990,
	'class transition',
	0,
	2991,
	0,
	0,
	'GPS_A1: tick',
	0);
INSERT INTO ACT_BLK
	VALUES (2991,
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
	2990,
	0);
INSERT INTO ACT_SMT
	VALUES (2992,
	2991,
	2993,
	2,
	1,
	'GPS_A1: tick line: 2');
INSERT INTO ACT_FIO
	VALUES (2992,
	2994,
	1,
	'any',
	2848,
	2,
	34);
INSERT INTO ACT_SMT
	VALUES (2993,
	2991,
	0,
	3,
	1,
	'GPS_A1: tick line: 3');
INSERT INTO ACT_AI
	VALUES (2993,
	2995,
	2996,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2997,
	1,
	0,
	3,
	1,
	3,
	0,
	0,
	0,
	0,
	106,
	2991);
INSERT INTO V_IRF
	VALUES (2997,
	2994);
INSERT INTO V_VAL
	VALUES (2996,
	1,
	0,
	3,
	5,
	18,
	0,
	0,
	0,
	0,
	30,
	2991);
INSERT INTO V_AVL
	VALUES (2996,
	2997,
	2848,
	2879);
INSERT INTO V_VAL
	VALUES (2998,
	0,
	0,
	3,
	22,
	24,
	0,
	0,
	0,
	0,
	106,
	2991);
INSERT INTO V_IRF
	VALUES (2998,
	2994);
INSERT INTO V_VAL
	VALUES (2999,
	0,
	0,
	3,
	26,
	39,
	0,
	0,
	0,
	0,
	30,
	2991);
INSERT INTO V_AVL
	VALUES (2999,
	2998,
	2848,
	2879);
INSERT INTO V_VAL
	VALUES (2995,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	30,
	2991);
INSERT INTO V_BIN
	VALUES (2995,
	3000,
	2999,
	'+');
INSERT INTO V_VAL
	VALUES (3000,
	0,
	0,
	3,
	43,
	43,
	0,
	0,
	0,
	0,
	30,
	2991);
INSERT INTO V_LIN
	VALUES (3000,
	'1');
INSERT INTO V_VAR
	VALUES (2994,
	2991,
	'gps',
	1,
	106);
INSERT INTO V_INT
	VALUES (2994,
	0,
	2848);
INSERT INTO SM_TXN
	VALUES (2988,
	2884,
	2907,
	0);
INSERT INTO PE_PE
	VALUES (3001,
	1,
	2689,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (3001,
	0,
	2688,
	'shared',
	'',
	0);
INSERT INTO PE_PE
	VALUES (3002,
	1,
	3001,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (3002,
	'Distance',
	'kmPerDegree is a rough conversion figure valid for most latitude figures (except where 
the irregular shape of the earth perturbs the value) and for longitude figures
away from the poles (where the distance between longitude lines decreases to zero).

latitudeIncrement and longitudeIncrement specify the distance traveled by the simulated
GPS during each interval.');
INSERT INTO CNST_SYC
	VALUES (2729,
	'kmPerDegree',
	'',
	10,
	3002,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (2729,
	10);
INSERT INTO CNST_LSC
	VALUES (2729,
	10,
	'111.32');
INSERT INTO PE_PE
	VALUES (3003,
	1,
	3001,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (3003,
	'Speed',
	'SpeedAveragingWindow is the number of track points used to calculate the current average speed.
SecondsPerHour is the number of seconds in one hour.');
INSERT INTO CNST_SYC
	VALUES (1024,
	'SecondsPerHour',
	'',
	30,
	3003,
	1009,
	30);
INSERT INTO CNST_LFSC
	VALUES (1024,
	30);
INSERT INTO CNST_LSC
	VALUES (1024,
	30,
	'3600');
INSERT INTO CNST_SYC
	VALUES (1009,
	'SpeedAveragingWindow',
	'',
	30,
	3003,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (1009,
	30);
INSERT INTO CNST_LSC
	VALUES (1009,
	30,
	'5');
INSERT INTO PE_PE
	VALUES (2527,
	1,
	3001,
	0,
	6);
INSERT INTO C_I
	VALUES (2527,
	0,
	'Location',
	'');
INSERT INTO C_EP
	VALUES (2529,
	2527,
	-1,
	'getLocation',
	'');
INSERT INTO C_IO
	VALUES (2529,
	6,
	'getLocation',
	'',
	0,
	'',
	2533);
INSERT INTO C_PP
	VALUES (3004,
	2529,
	30,
	'latitude',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (3005,
	2529,
	30,
	'longitude',
	'',
	0,
	'',
	3004);
INSERT INTO C_EP
	VALUES (2533,
	2527,
	-1,
	'getDistance',
	'');
INSERT INTO C_IO
	VALUES (2533,
	10,
	'getDistance',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (2709,
	2533,
	30,
	'toLat',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (2711,
	2533,
	30,
	'fromLat',
	'',
	0,
	'',
	2709);
INSERT INTO C_PP
	VALUES (2714,
	2533,
	30,
	'toLong',
	'',
	0,
	'',
	2711);
INSERT INTO C_PP
	VALUES (2716,
	2533,
	30,
	'fromLong',
	'',
	0,
	'',
	2714);
INSERT INTO C_EP
	VALUES (2537,
	2527,
	-1,
	'registerListener',
	'');
INSERT INTO C_IO
	VALUES (2537,
	6,
	'registerListener',
	'',
	0,
	'',
	2529);
INSERT INTO C_EP
	VALUES (2541,
	2527,
	-1,
	'unregisterListener',
	'');
INSERT INTO C_IO
	VALUES (2541,
	6,
	'unregisterListener',
	'',
	0,
	'',
	2537);
