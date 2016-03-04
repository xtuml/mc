-- root-types-contained: SystemModel_c,PackageableElement_c,DataType_c,CoreDataType_c,UserDataType_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES (1,
	'GPSWatch',
	1);
INSERT INTO EP_PKG
	VALUES (2,
	1,
	1,
	'GPSWatch',
	'GPSWatch',
	0);
INSERT INTO PE_PE
	VALUES (3,
	1,
	2,
	0,
	21);
INSERT INTO CL_IC
	VALUES (3,
	4,
	0,
	0,
	0,
	'',
	'HeartRateMonitor::HeartRateMonitor::HeartRateMonitor',
	'');
INSERT INTO CL_POR
	VALUES (3,
	5,
	'HeartRateMonitor',
	6);
INSERT INTO CL_IIR
	VALUES (7,
	8,
	6,
	0,
	'HeartRateMonitor',
	'');
INSERT INTO CL_IP
	VALUES (7,
	'HeartRateMonitor',
	'');
INSERT INTO CL_IPINS
	VALUES (9,
	7);
INSERT INTO CL_POR
	VALUES (3,
	10,
	'Unspecified',
	11);
INSERT INTO CL_IIR
	VALUES (12,
	13,
	11,
	0,
	'HeartRateMonitorUnspecified',
	'');
INSERT INTO CL_IR
	VALUES (12,
	14,
	'HeartRateMonitorUnspecified',
	'');
INSERT INTO PE_PE
	VALUES (15,
	1,
	2,
	0,
	21);
INSERT INTO CL_IC
	VALUES (15,
	16,
	0,
	0,
	0,
	'',
	'Tracking::Tracking::Tracking',
	'');
INSERT INTO CL_POR
	VALUES (15,
	17,
	'Location',
	18);
INSERT INTO CL_IIR
	VALUES (19,
	20,
	18,
	0,
	'TrackingLocation',
	'');
INSERT INTO CL_IR
	VALUES (19,
	21,
	'TrackingLocation',
	'');
INSERT INTO CL_POR
	VALUES (15,
	22,
	'UI',
	23);
INSERT INTO CL_IIR
	VALUES (24,
	25,
	23,
	0,
	'TrackingUI',
	'');
INSERT INTO CL_IR
	VALUES (24,
	26,
	'TrackingUI',
	'');
INSERT INTO CL_POR
	VALUES (15,
	27,
	'HeartRateMonitor',
	28);
INSERT INTO CL_IIR
	VALUES (29,
	30,
	28,
	0,
	'TrackingHeartRateMonitor',
	'');
INSERT INTO CL_IR
	VALUES (29,
	31,
	'TrackingHeartRateMonitor',
	'');
INSERT INTO CL_POR
	VALUES (15,
	32,
	'Tracking',
	33);
INSERT INTO CL_IIR
	VALUES (34,
	35,
	33,
	0,
	'Tracking',
	'');
INSERT INTO CL_IP
	VALUES (34,
	'Tracking',
	'');
INSERT INTO CL_IPINS
	VALUES (36,
	34);
INSERT INTO PE_PE
	VALUES (37,
	1,
	2,
	0,
	21);
INSERT INTO CL_IC
	VALUES (37,
	38,
	0,
	0,
	0,
	'',
	'UI::UI::UI',
	'');
INSERT INTO CL_POR
	VALUES (37,
	39,
	'UI',
	40);
INSERT INTO CL_IIR
	VALUES (41,
	42,
	40,
	0,
	'UI',
	'');
INSERT INTO CL_IP
	VALUES (41,
	'UI',
	'');
INSERT INTO CL_IPINS
	VALUES (43,
	41);
INSERT INTO CL_POR
	VALUES (37,
	44,
	'Tracking',
	45);
INSERT INTO CL_IIR
	VALUES (46,
	47,
	45,
	0,
	'UITracking',
	'');
INSERT INTO CL_IR
	VALUES (46,
	48,
	'UITracking',
	'');
INSERT INTO PE_PE
	VALUES (49,
	1,
	2,
	0,
	21);
INSERT INTO CL_IC
	VALUES (49,
	50,
	0,
	0,
	0,
	'',
	'Location::Location::Location',
	'');
INSERT INTO CL_POR
	VALUES (49,
	51,
	'Location',
	52);
INSERT INTO CL_IIR
	VALUES (53,
	54,
	52,
	0,
	'Location',
	'');
INSERT INTO CL_IP
	VALUES (53,
	'Location',
	'');
INSERT INTO CL_IPINS
	VALUES (55,
	53);
INSERT INTO PE_PE
	VALUES (14,
	1,
	2,
	0,
	22);
INSERT INTO C_SF
	VALUES (14,
	13,
	56,
	'',
	'GPSWatch::HeartRateMonitorUnspecified::HeartRateMonitorUnspecified -o)- HeartRateMonitor::Unspecified::HeartRateMonitorUnspecified');
INSERT INTO PE_PE
	VALUES (57,
	1,
	2,
	0,
	2);
INSERT INTO C_C
	VALUES (57,
	0,
	0,
	'GPSWatch',
	'',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (58,
	57,
	'Location',
	0,
	0);
INSERT INTO C_IR
	VALUES (59,
	60,
	0,
	58);
INSERT INTO C_R
	VALUES (59,
	'Location',
	'',
	'Unnamed Interface',
	'GPSWatch::Location::Location');
INSERT INTO SPR_REP
	VALUES (61,
	62,
	59);
INSERT INTO SPR_RO
	VALUES (61,
	'getLocation',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (63,
	61);
INSERT INTO ACT_ACT
	VALUES (63,
	'interface operation',
	0,
	64,
	0,
	0,
	'Location::Location::getLocation',
	0);
INSERT INTO ACT_BLK
	VALUES (64,
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
	63,
	0);
INSERT INTO SPR_REP
	VALUES (65,
	66,
	59);
INSERT INTO SPR_RO
	VALUES (65,
	'getDistance',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (67,
	65);
INSERT INTO ACT_ACT
	VALUES (67,
	'interface operation',
	0,
	68,
	0,
	0,
	'Location::Location::getDistance',
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
	70,
	59);
INSERT INTO SPR_RO
	VALUES (69,
	'registerListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (71,
	69);
INSERT INTO ACT_ACT
	VALUES (71,
	'interface operation',
	0,
	72,
	0,
	0,
	'Location::Location::registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (72,
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
	71,
	0);
INSERT INTO SPR_REP
	VALUES (73,
	74,
	59);
INSERT INTO SPR_RO
	VALUES (73,
	'unregisterListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (75,
	73);
INSERT INTO ACT_ACT
	VALUES (75,
	'interface operation',
	0,
	76,
	0,
	0,
	'Location::Location::unregisterListener',
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
INSERT INTO C_PO
	VALUES (77,
	57,
	'HeartRateMonitor',
	0,
	0);
INSERT INTO C_IR
	VALUES (78,
	79,
	0,
	77);
INSERT INTO C_R
	VALUES (78,
	'HeartRateMonitor',
	'',
	'Unnamed Interface',
	'GPSWatch::HeartRateMonitor::HeartRateMonitor');
INSERT INTO SPR_REP
	VALUES (80,
	81,
	78);
INSERT INTO SPR_RO
	VALUES (80,
	'registerListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (82,
	80);
INSERT INTO ACT_ACT
	VALUES (82,
	'interface operation',
	0,
	83,
	0,
	0,
	'HeartRateMonitor::HeartRateMonitor::registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (83,
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
	82,
	0);
INSERT INTO SPR_REP
	VALUES (84,
	85,
	78);
INSERT INTO SPR_RO
	VALUES (84,
	'unregisterListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (86,
	84);
INSERT INTO ACT_ACT
	VALUES (86,
	'interface operation',
	0,
	87,
	0,
	0,
	'HeartRateMonitor::HeartRateMonitor::unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (87,
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
	86,
	0);
INSERT INTO C_PO
	VALUES (88,
	57,
	'UI',
	0,
	0);
INSERT INTO C_IR
	VALUES (89,
	90,
	0,
	88);
INSERT INTO C_R
	VALUES (89,
	'UI',
	'',
	'Unnamed Interface',
	'GPSWatch::UI::UI');
INSERT INTO SPR_REP
	VALUES (91,
	92,
	89);
INSERT INTO SPR_RO
	VALUES (91,
	'setTime',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (93,
	91);
INSERT INTO ACT_ACT
	VALUES (93,
	'interface operation',
	0,
	94,
	0,
	0,
	'UI::UI::setTime',
	0);
INSERT INTO ACT_BLK
	VALUES (94,
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
	93,
	0);
INSERT INTO SPR_REP
	VALUES (95,
	96,
	89);
INSERT INTO SPR_RO
	VALUES (95,
	'setData',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (97,
	95);
INSERT INTO ACT_ACT
	VALUES (97,
	'interface operation',
	0,
	98,
	0,
	0,
	'UI::UI::setData',
	0);
INSERT INTO ACT_BLK
	VALUES (98,
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
	97,
	0);
INSERT INTO SPR_REP
	VALUES (99,
	100,
	89);
INSERT INTO SPR_RO
	VALUES (99,
	'startTest',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (101,
	99);
INSERT INTO ACT_ACT
	VALUES (101,
	'interface operation',
	0,
	102,
	0,
	0,
	'UI::UI::startTest',
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
INSERT INTO SPR_REP
	VALUES (103,
	104,
	89);
INSERT INTO SPR_RO
	VALUES (103,
	'setIndicator',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (105,
	103);
INSERT INTO ACT_ACT
	VALUES (105,
	'interface operation',
	0,
	106,
	0,
	0,
	'UI::UI::setIndicator',
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
INSERT INTO SPR_REP
	VALUES (107,
	108,
	89);
INSERT INTO SPR_RO
	VALUES (107,
	'newGoalSpec',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (109,
	107);
INSERT INTO ACT_ACT
	VALUES (109,
	'interface operation',
	0,
	110,
	0,
	0,
	'UI::UI::newGoalSpec',
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
INSERT INTO C_PO
	VALUES (111,
	57,
	'TrackingHeartRateMonitor',
	0,
	0);
INSERT INTO C_IR
	VALUES (112,
	113,
	0,
	111);
INSERT INTO C_P
	VALUES (112,
	'TrackingHeartRateMonitor',
	'Unnamed Interface',
	'',
	'GPSWatch::TrackingHeartRateMonitor::TrackingHeartRateMonitor');
INSERT INTO SPR_PEP
	VALUES (114,
	115,
	112);
INSERT INTO SPR_PO
	VALUES (114,
	'registerListener',
	'',
	'HeartRateMonitor::registerListener();',
	1);
INSERT INTO ACT_POB
	VALUES (116,
	114);
INSERT INTO ACT_ACT
	VALUES (116,
	'interface operation',
	0,
	117,
	0,
	0,
	'TrackingHeartRateMonitor::TrackingHeartRateMonitor::registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (117,
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
	116,
	0);
INSERT INTO ACT_SMT
	VALUES (118,
	117,
	0,
	1,
	1,
	'TrackingHeartRateMonitor::TrackingHeartRateMonitor::registerListener line: 1');
INSERT INTO ACT_IOP
	VALUES (118,
	1,
	19,
	1,
	1,
	0,
	80,
	0);
INSERT INTO SPR_PEP
	VALUES (119,
	120,
	112);
INSERT INTO SPR_PO
	VALUES (119,
	'unregisterListener',
	'',
	'HeartRateMonitor::unregisterListener();',
	1);
INSERT INTO ACT_POB
	VALUES (121,
	119);
INSERT INTO ACT_ACT
	VALUES (121,
	'interface operation',
	0,
	122,
	0,
	0,
	'TrackingHeartRateMonitor::TrackingHeartRateMonitor::unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (122,
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
	121,
	0);
INSERT INTO ACT_SMT
	VALUES (123,
	122,
	0,
	1,
	1,
	'TrackingHeartRateMonitor::TrackingHeartRateMonitor::unregisterListener line: 1');
INSERT INTO ACT_IOP
	VALUES (123,
	1,
	19,
	1,
	1,
	0,
	84,
	0);
INSERT INTO C_PO
	VALUES (124,
	57,
	'TrackingLocation',
	0,
	0);
INSERT INTO C_IR
	VALUES (125,
	126,
	0,
	124);
INSERT INTO C_P
	VALUES (125,
	'TrackingLocation',
	'Unnamed Interface',
	'',
	'GPSWatch::TrackingLocation::TrackingLocation');
INSERT INTO SPR_PEP
	VALUES (127,
	128,
	125);
INSERT INTO SPR_PO
	VALUES (127,
	'getDistance',
	'Returns distance, in kilometers, between the "from" and "to" coordinates passed as parameters.
The coordinates must be passed as decimal degrees.',
	'return Location::getDistance(fromLat:param.fromLat, fromLong:param.fromLong, toLat:param.toLat, toLong:param.toLong);',
	1);
INSERT INTO ACT_POB
	VALUES (129,
	127);
INSERT INTO ACT_ACT
	VALUES (129,
	'interface operation',
	0,
	130,
	0,
	0,
	'TrackingLocation::TrackingLocation::getDistance',
	0);
INSERT INTO ACT_BLK
	VALUES (130,
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
	129,
	0);
INSERT INTO ACT_SMT
	VALUES (131,
	130,
	0,
	1,
	1,
	'TrackingLocation::TrackingLocation::getDistance line: 1');
INSERT INTO ACT_RET
	VALUES (131,
	132);
INSERT INTO V_VAL
	VALUES (132,
	0,
	0,
	1,
	18,
	29,
	1,
	30,
	1,
	97,
	133,
	130);
INSERT INTO V_MSV
	VALUES (132,
	0,
	65,
	1,
	1,
	8,
	0);
INSERT INTO V_VAL
	VALUES (134,
	0,
	0,
	1,
	44,
	50,
	0,
	0,
	0,
	0,
	133,
	130);
INSERT INTO V_PVL
	VALUES (134,
	0,
	0,
	0,
	135);
INSERT INTO V_PAR
	VALUES (134,
	0,
	132,
	'fromLat',
	136,
	1,
	30);
INSERT INTO V_VAL
	VALUES (136,
	0,
	0,
	1,
	68,
	75,
	0,
	0,
	0,
	0,
	133,
	130);
INSERT INTO V_PVL
	VALUES (136,
	0,
	0,
	0,
	137);
INSERT INTO V_PAR
	VALUES (136,
	0,
	132,
	'fromLong',
	138,
	1,
	53);
INSERT INTO V_VAL
	VALUES (138,
	0,
	0,
	1,
	90,
	94,
	0,
	0,
	0,
	0,
	133,
	130);
INSERT INTO V_PVL
	VALUES (138,
	0,
	0,
	0,
	139);
INSERT INTO V_PAR
	VALUES (138,
	0,
	132,
	'toLat',
	140,
	1,
	78);
INSERT INTO V_VAL
	VALUES (140,
	0,
	0,
	1,
	110,
	115,
	0,
	0,
	0,
	0,
	133,
	130);
INSERT INTO V_PVL
	VALUES (140,
	0,
	0,
	0,
	141);
INSERT INTO V_PAR
	VALUES (140,
	0,
	132,
	'toLong',
	0,
	1,
	97);
INSERT INTO SPR_PEP
	VALUES (142,
	143,
	125);
INSERT INTO SPR_PO
	VALUES (142,
	'getLocation',
	'',
	'Location::getLocation(latitude:param.latitude, longitude:param.longitude);',
	1);
INSERT INTO ACT_POB
	VALUES (144,
	142);
INSERT INTO ACT_ACT
	VALUES (144,
	'interface operation',
	0,
	145,
	0,
	0,
	'TrackingLocation::TrackingLocation::getLocation',
	0);
INSERT INTO ACT_BLK
	VALUES (145,
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
	144,
	0);
INSERT INTO ACT_SMT
	VALUES (146,
	145,
	0,
	1,
	1,
	'TrackingLocation::TrackingLocation::getLocation line: 1');
INSERT INTO ACT_IOP
	VALUES (146,
	1,
	11,
	1,
	1,
	0,
	61,
	0);
INSERT INTO V_VAL
	VALUES (147,
	0,
	0,
	1,
	38,
	45,
	0,
	0,
	0,
	0,
	133,
	145);
INSERT INTO V_PVL
	VALUES (147,
	0,
	0,
	0,
	148);
INSERT INTO V_PAR
	VALUES (147,
	146,
	0,
	'latitude',
	149,
	1,
	23);
INSERT INTO V_VAL
	VALUES (149,
	0,
	0,
	1,
	64,
	72,
	0,
	0,
	0,
	0,
	133,
	145);
INSERT INTO V_PVL
	VALUES (149,
	0,
	0,
	0,
	150);
INSERT INTO V_PAR
	VALUES (149,
	146,
	0,
	'longitude',
	0,
	1,
	48);
INSERT INTO SPR_PEP
	VALUES (151,
	152,
	125);
INSERT INTO SPR_PO
	VALUES (151,
	'registerListener',
	'',
	'Location::registerListener();',
	1);
INSERT INTO ACT_POB
	VALUES (153,
	151);
INSERT INTO ACT_ACT
	VALUES (153,
	'interface operation',
	0,
	154,
	0,
	0,
	'TrackingLocation::TrackingLocation::registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (154,
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
	153,
	0);
INSERT INTO ACT_SMT
	VALUES (155,
	154,
	0,
	1,
	1,
	'TrackingLocation::TrackingLocation::registerListener line: 1');
INSERT INTO ACT_IOP
	VALUES (155,
	1,
	11,
	1,
	1,
	0,
	69,
	0);
INSERT INTO SPR_PEP
	VALUES (156,
	157,
	125);
INSERT INTO SPR_PO
	VALUES (156,
	'unregisterListener',
	'',
	'Location::unregisterListener();',
	1);
INSERT INTO ACT_POB
	VALUES (158,
	156);
INSERT INTO ACT_ACT
	VALUES (158,
	'interface operation',
	0,
	159,
	0,
	0,
	'TrackingLocation::TrackingLocation::unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (159,
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
	158,
	0);
INSERT INTO ACT_SMT
	VALUES (160,
	159,
	0,
	1,
	1,
	'TrackingLocation::TrackingLocation::unregisterListener line: 1');
INSERT INTO ACT_IOP
	VALUES (160,
	1,
	11,
	1,
	1,
	0,
	73,
	0);
INSERT INTO C_PO
	VALUES (161,
	57,
	'TrackingUI',
	0,
	0);
INSERT INTO C_IR
	VALUES (162,
	163,
	0,
	161);
INSERT INTO C_P
	VALUES (162,
	'TrackingUI',
	'Unnamed Interface',
	'',
	'GPSWatch::TrackingUI::TrackingUI');
INSERT INTO SPR_PEP
	VALUES (164,
	165,
	162);
INSERT INTO SPR_PO
	VALUES (164,
	'setData',
	'',
	'UI::setData(value:param.value, unit:param.unit);',
	1);
INSERT INTO ACT_POB
	VALUES (166,
	164);
INSERT INTO ACT_ACT
	VALUES (166,
	'interface operation',
	0,
	167,
	0,
	0,
	'TrackingUI::TrackingUI::setData',
	0);
INSERT INTO ACT_BLK
	VALUES (167,
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
	166,
	0);
INSERT INTO ACT_SMT
	VALUES (168,
	167,
	0,
	1,
	1,
	'TrackingUI::TrackingUI::setData line: 1');
INSERT INTO ACT_IOP
	VALUES (168,
	1,
	5,
	1,
	1,
	0,
	95,
	0);
INSERT INTO V_VAL
	VALUES (169,
	0,
	0,
	1,
	25,
	29,
	0,
	0,
	0,
	0,
	133,
	167);
INSERT INTO V_PVL
	VALUES (169,
	0,
	0,
	0,
	170);
INSERT INTO V_PAR
	VALUES (169,
	168,
	0,
	'value',
	171,
	1,
	13);
INSERT INTO V_VAL
	VALUES (171,
	0,
	0,
	1,
	43,
	46,
	0,
	0,
	0,
	0,
	172,
	167);
INSERT INTO V_PVL
	VALUES (171,
	0,
	0,
	0,
	173);
INSERT INTO V_PAR
	VALUES (171,
	168,
	0,
	'unit',
	0,
	1,
	32);
INSERT INTO SPR_PEP
	VALUES (174,
	175,
	162);
INSERT INTO SPR_PO
	VALUES (174,
	'setIndicator',
	'',
	'UI::setIndicator(indicator:param.indicator);',
	1);
INSERT INTO ACT_POB
	VALUES (176,
	174);
INSERT INTO ACT_ACT
	VALUES (176,
	'interface operation',
	0,
	177,
	0,
	0,
	'TrackingUI::TrackingUI::setIndicator',
	0);
INSERT INTO ACT_BLK
	VALUES (177,
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
	176,
	0);
INSERT INTO ACT_SMT
	VALUES (178,
	177,
	0,
	1,
	1,
	'TrackingUI::TrackingUI::setIndicator line: 1');
INSERT INTO ACT_IOP
	VALUES (178,
	1,
	5,
	1,
	1,
	0,
	103,
	0);
INSERT INTO V_VAL
	VALUES (179,
	0,
	0,
	1,
	34,
	42,
	0,
	0,
	0,
	0,
	180,
	177);
INSERT INTO V_PVL
	VALUES (179,
	0,
	0,
	0,
	181);
INSERT INTO V_PAR
	VALUES (179,
	178,
	0,
	'indicator',
	0,
	1,
	18);
INSERT INTO SPR_PEP
	VALUES (182,
	183,
	162);
INSERT INTO SPR_PO
	VALUES (182,
	'setTime',
	'',
	'UI::setTime(time:param.time);',
	1);
INSERT INTO ACT_POB
	VALUES (184,
	182);
INSERT INTO ACT_ACT
	VALUES (184,
	'interface operation',
	0,
	185,
	0,
	0,
	'TrackingUI::TrackingUI::setTime',
	0);
INSERT INTO ACT_BLK
	VALUES (185,
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
	184,
	0);
INSERT INTO ACT_SMT
	VALUES (186,
	185,
	0,
	1,
	1,
	'TrackingUI::TrackingUI::setTime line: 1');
INSERT INTO ACT_IOP
	VALUES (186,
	1,
	5,
	1,
	1,
	0,
	91,
	0);
INSERT INTO V_VAL
	VALUES (187,
	0,
	0,
	1,
	24,
	27,
	0,
	0,
	0,
	0,
	188,
	185);
INSERT INTO V_PVL
	VALUES (187,
	0,
	0,
	0,
	189);
INSERT INTO V_PAR
	VALUES (187,
	186,
	0,
	'time',
	0,
	1,
	13);
INSERT INTO SPR_PEP
	VALUES (190,
	191,
	162);
INSERT INTO SPR_PO
	VALUES (190,
	'newGoalSpec',
	'',
	'UI::newGoalSpec(sequenceNumber:param.sequenceNumber, minimum:param.minimum, maximum:param.maximum, span:param.span, criteriaType:param.criteriaType, spanType:param.spanType);',
	1);
INSERT INTO ACT_POB
	VALUES (192,
	190);
INSERT INTO ACT_ACT
	VALUES (192,
	'interface operation',
	0,
	193,
	0,
	0,
	'TrackingUI::TrackingUI::newGoalSpec',
	0);
INSERT INTO ACT_BLK
	VALUES (193,
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
	192,
	0);
INSERT INTO ACT_SMT
	VALUES (194,
	193,
	0,
	1,
	1,
	'TrackingUI::TrackingUI::newGoalSpec line: 1');
INSERT INTO ACT_IOP
	VALUES (194,
	1,
	5,
	1,
	1,
	0,
	107,
	0);
INSERT INTO V_VAL
	VALUES (195,
	0,
	0,
	1,
	38,
	51,
	0,
	0,
	0,
	0,
	188,
	193);
INSERT INTO V_PVL
	VALUES (195,
	0,
	0,
	0,
	196);
INSERT INTO V_PAR
	VALUES (195,
	194,
	0,
	'sequenceNumber',
	197,
	1,
	17);
INSERT INTO V_VAL
	VALUES (197,
	0,
	0,
	1,
	68,
	74,
	0,
	0,
	0,
	0,
	133,
	193);
INSERT INTO V_PVL
	VALUES (197,
	0,
	0,
	0,
	198);
INSERT INTO V_PAR
	VALUES (197,
	194,
	0,
	'minimum',
	199,
	1,
	54);
INSERT INTO V_VAL
	VALUES (199,
	0,
	0,
	1,
	91,
	97,
	0,
	0,
	0,
	0,
	133,
	193);
INSERT INTO V_PVL
	VALUES (199,
	0,
	0,
	0,
	200);
INSERT INTO V_PAR
	VALUES (199,
	194,
	0,
	'maximum',
	201,
	1,
	77);
INSERT INTO V_VAL
	VALUES (201,
	0,
	0,
	1,
	111,
	114,
	0,
	0,
	0,
	0,
	133,
	193);
INSERT INTO V_PVL
	VALUES (201,
	0,
	0,
	0,
	202);
INSERT INTO V_PAR
	VALUES (201,
	194,
	0,
	'span',
	203,
	1,
	100);
INSERT INTO V_VAL
	VALUES (203,
	0,
	0,
	1,
	136,
	147,
	0,
	0,
	0,
	0,
	204,
	193);
INSERT INTO V_PVL
	VALUES (203,
	0,
	0,
	0,
	205);
INSERT INTO V_PAR
	VALUES (203,
	194,
	0,
	'criteriaType',
	206,
	1,
	117);
INSERT INTO V_VAL
	VALUES (206,
	0,
	0,
	1,
	165,
	172,
	0,
	0,
	0,
	0,
	207,
	193);
INSERT INTO V_PVL
	VALUES (206,
	0,
	0,
	0,
	208);
INSERT INTO V_PAR
	VALUES (206,
	194,
	0,
	'spanType',
	0,
	1,
	150);
INSERT INTO C_PO
	VALUES (209,
	57,
	'Tracking',
	0,
	0);
INSERT INTO C_IR
	VALUES (210,
	211,
	0,
	209);
INSERT INTO C_R
	VALUES (210,
	'Tracking',
	'',
	'Unnamed Interface',
	'GPSWatch::Tracking::Tracking');
INSERT INTO SPR_REP
	VALUES (212,
	213,
	210);
INSERT INTO SPR_RO
	VALUES (212,
	'heartRateChanged',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (214,
	212);
INSERT INTO ACT_ACT
	VALUES (214,
	'interface operation',
	0,
	215,
	0,
	0,
	'Tracking::Tracking::heartRateChanged',
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
INSERT INTO SPR_REP
	VALUES (216,
	217,
	210);
INSERT INTO SPR_RO
	VALUES (216,
	'lapResetPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (218,
	216);
INSERT INTO ACT_ACT
	VALUES (218,
	'interface operation',
	0,
	219,
	0,
	0,
	'Tracking::Tracking::lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (219,
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
	218,
	0);
INSERT INTO SPR_REP
	VALUES (220,
	221,
	210);
INSERT INTO SPR_RO
	VALUES (220,
	'modePressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (222,
	220);
INSERT INTO ACT_ACT
	VALUES (222,
	'interface operation',
	0,
	223,
	0,
	0,
	'Tracking::Tracking::modePressed',
	0);
INSERT INTO ACT_BLK
	VALUES (223,
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
	222,
	0);
INSERT INTO SPR_REP
	VALUES (224,
	225,
	210);
INSERT INTO SPR_RO
	VALUES (224,
	'setTargetPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (226,
	224);
INSERT INTO ACT_ACT
	VALUES (226,
	'interface operation',
	0,
	227,
	0,
	0,
	'Tracking::Tracking::setTargetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (227,
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
	226,
	0);
INSERT INTO SPR_REP
	VALUES (228,
	229,
	210);
INSERT INTO SPR_RO
	VALUES (228,
	'startStopPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (230,
	228);
INSERT INTO ACT_ACT
	VALUES (230,
	'interface operation',
	0,
	231,
	0,
	0,
	'Tracking::Tracking::startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (231,
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
	230,
	0);
INSERT INTO SPR_REP
	VALUES (232,
	233,
	210);
INSERT INTO SPR_RO
	VALUES (232,
	'newGoalSpec',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (234,
	232);
INSERT INTO ACT_ACT
	VALUES (234,
	'interface operation',
	0,
	235,
	0,
	0,
	'Tracking::Tracking::newGoalSpec',
	0);
INSERT INTO ACT_BLK
	VALUES (235,
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
	234,
	0);
INSERT INTO SPR_REP
	VALUES (236,
	237,
	210);
INSERT INTO SPR_RO
	VALUES (236,
	'lightPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (238,
	236);
INSERT INTO ACT_ACT
	VALUES (238,
	'interface operation',
	0,
	239,
	0,
	0,
	'Tracking::Tracking::lightPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (239,
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
	238,
	0);
INSERT INTO C_PO
	VALUES (240,
	57,
	'HeartRateMonitorUnspecified',
	0,
	0);
INSERT INTO C_IR
	VALUES (56,
	241,
	0,
	240);
INSERT INTO C_P
	VALUES (56,
	'HeartRateMonitorUnspecified',
	'Unnamed Interface',
	'',
	'GPSWatch::HeartRateMonitorUnspecified::HeartRateMonitorUnspecified');
INSERT INTO SPR_PEP
	VALUES (242,
	243,
	56);
INSERT INTO SPR_PO
	VALUES (242,
	'heartRateChanged',
	'',
	'Tracking::heartRateChanged(heartRate:param.heartRate);',
	1);
INSERT INTO ACT_POB
	VALUES (244,
	242);
INSERT INTO ACT_ACT
	VALUES (244,
	'interface operation',
	0,
	245,
	0,
	0,
	'HeartRateMonitorUnspecified::HeartRateMonitorUnspecified::heartRateChanged',
	0);
INSERT INTO ACT_BLK
	VALUES (245,
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
	244,
	0);
INSERT INTO ACT_SMT
	VALUES (246,
	245,
	0,
	1,
	1,
	'HeartRateMonitorUnspecified::HeartRateMonitorUnspecified::heartRateChanged line: 1');
INSERT INTO ACT_IOP
	VALUES (246,
	1,
	11,
	1,
	1,
	0,
	212,
	0);
INSERT INTO V_VAL
	VALUES (247,
	0,
	0,
	1,
	44,
	52,
	0,
	0,
	0,
	0,
	188,
	245);
INSERT INTO V_PVL
	VALUES (247,
	0,
	0,
	0,
	248);
INSERT INTO V_PAR
	VALUES (247,
	246,
	0,
	'heartRate',
	0,
	1,
	28);
INSERT INTO C_PO
	VALUES (249,
	57,
	'UITracking',
	0,
	0);
INSERT INTO C_IR
	VALUES (250,
	251,
	0,
	249);
INSERT INTO C_P
	VALUES (250,
	'UITracking',
	'Unnamed Interface',
	'',
	'GPSWatch::UITracking::UITracking');
INSERT INTO SPR_PEP
	VALUES (252,
	253,
	250);
INSERT INTO SPR_PO
	VALUES (252,
	'setTargetPressed',
	'',
	'Tracking::setTargetPressed();',
	1);
INSERT INTO ACT_POB
	VALUES (254,
	252);
INSERT INTO ACT_ACT
	VALUES (254,
	'interface operation',
	0,
	255,
	0,
	0,
	'UITracking::UITracking::setTargetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (255,
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
	254,
	0);
INSERT INTO ACT_SMT
	VALUES (256,
	255,
	0,
	1,
	1,
	'UITracking::UITracking::setTargetPressed line: 1');
INSERT INTO ACT_IOP
	VALUES (256,
	1,
	11,
	1,
	1,
	0,
	224,
	0);
INSERT INTO SPR_PEP
	VALUES (257,
	258,
	250);
INSERT INTO SPR_PO
	VALUES (257,
	'startStopPressed',
	'',
	'Tracking::startStopPressed();',
	1);
INSERT INTO ACT_POB
	VALUES (259,
	257);
INSERT INTO ACT_ACT
	VALUES (259,
	'interface operation',
	0,
	260,
	0,
	0,
	'UITracking::UITracking::startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (260,
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
	259,
	0);
INSERT INTO ACT_SMT
	VALUES (261,
	260,
	0,
	1,
	1,
	'UITracking::UITracking::startStopPressed line: 1');
INSERT INTO ACT_IOP
	VALUES (261,
	1,
	11,
	1,
	1,
	0,
	228,
	0);
INSERT INTO SPR_PEP
	VALUES (262,
	263,
	250);
INSERT INTO SPR_PO
	VALUES (262,
	'lapResetPressed',
	'',
	'Tracking::lapResetPressed();',
	1);
INSERT INTO ACT_POB
	VALUES (264,
	262);
INSERT INTO ACT_ACT
	VALUES (264,
	'interface operation',
	0,
	265,
	0,
	0,
	'UITracking::UITracking::lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (265,
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
	264,
	0);
INSERT INTO ACT_SMT
	VALUES (266,
	265,
	0,
	1,
	1,
	'UITracking::UITracking::lapResetPressed line: 1');
INSERT INTO ACT_IOP
	VALUES (266,
	1,
	11,
	1,
	1,
	0,
	216,
	0);
INSERT INTO SPR_PEP
	VALUES (267,
	268,
	250);
INSERT INTO SPR_PO
	VALUES (267,
	'modePressed',
	'',
	'Tracking::modePressed();',
	1);
INSERT INTO ACT_POB
	VALUES (269,
	267);
INSERT INTO ACT_ACT
	VALUES (269,
	'interface operation',
	0,
	270,
	0,
	0,
	'UITracking::UITracking::modePressed',
	0);
INSERT INTO ACT_BLK
	VALUES (270,
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
	269,
	0);
INSERT INTO ACT_SMT
	VALUES (271,
	270,
	0,
	1,
	1,
	'UITracking::UITracking::modePressed line: 1');
INSERT INTO ACT_IOP
	VALUES (271,
	1,
	11,
	1,
	1,
	0,
	220,
	0);
INSERT INTO SPR_PEP
	VALUES (272,
	273,
	250);
INSERT INTO SPR_PO
	VALUES (272,
	'newGoalSpec',
	'',
	'Tracking::newGoalSpec(sequenceNumber:param.sequenceNumber, minimum:param.minimum, maximum:param.maximum, span:param.span, criteriaType:param.criteriaType, spanType:param.spanType);',
	1);
INSERT INTO ACT_POB
	VALUES (274,
	272);
INSERT INTO ACT_ACT
	VALUES (274,
	'interface operation',
	0,
	275,
	0,
	0,
	'UITracking::UITracking::newGoalSpec',
	0);
INSERT INTO ACT_BLK
	VALUES (275,
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
	274,
	0);
INSERT INTO ACT_SMT
	VALUES (276,
	275,
	0,
	1,
	1,
	'UITracking::UITracking::newGoalSpec line: 1');
INSERT INTO ACT_IOP
	VALUES (276,
	1,
	11,
	1,
	1,
	0,
	232,
	0);
INSERT INTO V_VAL
	VALUES (277,
	0,
	0,
	1,
	44,
	57,
	0,
	0,
	0,
	0,
	188,
	275);
INSERT INTO V_PVL
	VALUES (277,
	0,
	0,
	0,
	278);
INSERT INTO V_PAR
	VALUES (277,
	276,
	0,
	'sequenceNumber',
	279,
	1,
	23);
INSERT INTO V_VAL
	VALUES (279,
	0,
	0,
	1,
	74,
	80,
	0,
	0,
	0,
	0,
	133,
	275);
INSERT INTO V_PVL
	VALUES (279,
	0,
	0,
	0,
	280);
INSERT INTO V_PAR
	VALUES (279,
	276,
	0,
	'minimum',
	281,
	1,
	60);
INSERT INTO V_VAL
	VALUES (281,
	0,
	0,
	1,
	97,
	103,
	0,
	0,
	0,
	0,
	133,
	275);
INSERT INTO V_PVL
	VALUES (281,
	0,
	0,
	0,
	282);
INSERT INTO V_PAR
	VALUES (281,
	276,
	0,
	'maximum',
	283,
	1,
	83);
INSERT INTO V_VAL
	VALUES (283,
	0,
	0,
	1,
	117,
	120,
	0,
	0,
	0,
	0,
	133,
	275);
INSERT INTO V_PVL
	VALUES (283,
	0,
	0,
	0,
	284);
INSERT INTO V_PAR
	VALUES (283,
	276,
	0,
	'span',
	285,
	1,
	106);
INSERT INTO V_VAL
	VALUES (285,
	0,
	0,
	1,
	142,
	153,
	0,
	0,
	0,
	0,
	204,
	275);
INSERT INTO V_PVL
	VALUES (285,
	0,
	0,
	0,
	286);
INSERT INTO V_PAR
	VALUES (285,
	276,
	0,
	'criteriaType',
	287,
	1,
	123);
INSERT INTO V_VAL
	VALUES (287,
	0,
	0,
	1,
	171,
	178,
	0,
	0,
	0,
	0,
	207,
	275);
INSERT INTO V_PVL
	VALUES (287,
	0,
	0,
	0,
	288);
INSERT INTO V_PAR
	VALUES (287,
	276,
	0,
	'spanType',
	0,
	1,
	156);
INSERT INTO SPR_PEP
	VALUES (289,
	290,
	250);
INSERT INTO SPR_PO
	VALUES (289,
	'lightPressed',
	'',
	'Tracking::lightPressed();',
	1);
INSERT INTO ACT_POB
	VALUES (291,
	289);
INSERT INTO ACT_ACT
	VALUES (291,
	'interface operation',
	0,
	292,
	0,
	0,
	'UITracking::UITracking::lightPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (292,
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
	291,
	0);
INSERT INTO ACT_SMT
	VALUES (293,
	292,
	0,
	1,
	1,
	'UITracking::UITracking::lightPressed line: 1');
INSERT INTO ACT_IOP
	VALUES (293,
	1,
	11,
	1,
	1,
	0,
	236,
	0);
INSERT INTO PE_PE
	VALUES (9,
	1,
	2,
	0,
	22);
INSERT INTO C_SF
	VALUES (9,
	78,
	8,
	'',
	'HeartRateMonitor::HeartRateMonitor::HeartRateMonitor -o)- GPSWatch::HeartRateMonitor::HeartRateMonitor');
INSERT INTO PE_PE
	VALUES (21,
	1,
	2,
	0,
	22);
INSERT INTO C_SF
	VALUES (21,
	20,
	125,
	'',
	'GPSWatch::TrackingLocation::TrackingLocation -o)- Tracking::Location::TrackingLocation');
INSERT INTO PE_PE
	VALUES (26,
	1,
	2,
	0,
	22);
INSERT INTO C_SF
	VALUES (26,
	25,
	162,
	'',
	'GPSWatch::TrackingUI::TrackingUI -o)- Tracking::UI::TrackingUI');
INSERT INTO PE_PE
	VALUES (31,
	1,
	2,
	0,
	22);
INSERT INTO C_SF
	VALUES (31,
	30,
	112,
	'',
	'GPSWatch::TrackingHeartRateMonitor::TrackingHeartRateMonitor -o)- Tracking::HeartRateMonitor::TrackingHeartRateMonitor');
INSERT INTO PE_PE
	VALUES (36,
	1,
	2,
	0,
	22);
INSERT INTO C_SF
	VALUES (36,
	210,
	35,
	'',
	'Tracking::Tracking::Tracking -o)- GPSWatch::Tracking::Tracking');
INSERT INTO PE_PE
	VALUES (43,
	1,
	2,
	0,
	22);
INSERT INTO C_SF
	VALUES (43,
	89,
	42,
	'',
	'UI::UI::UI -o)- GPSWatch::UI::UI');
INSERT INTO PE_PE
	VALUES (48,
	1,
	2,
	0,
	22);
INSERT INTO C_SF
	VALUES (48,
	47,
	250,
	'',
	'GPSWatch::UITracking::UITracking -o)- UI::Tracking::UITracking');
INSERT INTO PE_PE
	VALUES (55,
	1,
	2,
	0,
	22);
INSERT INTO C_SF
	VALUES (55,
	59,
	54,
	'',
	'Location::Location::Location -o)- GPSWatch::Location::Location');
INSERT INTO PE_PE
	VALUES (294,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (294,
	0,
	'void',
	'',
	'');
INSERT INTO S_CDT
	VALUES (294,
	0);
INSERT INTO PE_PE
	VALUES (295,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (295,
	0,
	'boolean',
	'',
	'');
INSERT INTO S_CDT
	VALUES (295,
	1);
INSERT INTO PE_PE
	VALUES (188,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (188,
	0,
	'integer',
	'',
	'');
INSERT INTO S_CDT
	VALUES (188,
	2);
INSERT INTO PE_PE
	VALUES (133,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (133,
	0,
	'real',
	'',
	'');
INSERT INTO S_CDT
	VALUES (133,
	3);
INSERT INTO PE_PE
	VALUES (296,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (296,
	0,
	'string',
	'',
	'');
INSERT INTO S_CDT
	VALUES (296,
	4);
INSERT INTO PE_PE
	VALUES (297,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (297,
	0,
	'unique_id',
	'',
	'');
INSERT INTO S_CDT
	VALUES (297,
	5);
INSERT INTO PE_PE
	VALUES (298,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (298,
	0,
	'state<State_Model>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (298,
	6);
INSERT INTO PE_PE
	VALUES (299,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (299,
	0,
	'same_as<Base_Attribute>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (299,
	7);
INSERT INTO PE_PE
	VALUES (300,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (300,
	0,
	'inst_ref<Object>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (300,
	8);
INSERT INTO PE_PE
	VALUES (301,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (301,
	0,
	'inst_ref_set<Object>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (301,
	9);
INSERT INTO PE_PE
	VALUES (302,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (302,
	0,
	'inst<Event>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (302,
	10);
INSERT INTO PE_PE
	VALUES (303,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (303,
	0,
	'inst<Mapping>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (303,
	11);
INSERT INTO PE_PE
	VALUES (304,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (304,
	0,
	'inst_ref<Mapping>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (304,
	12);
INSERT INTO PE_PE
	VALUES (305,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (305,
	0,
	'component_ref',
	'',
	'');
INSERT INTO S_CDT
	VALUES (305,
	13);
INSERT INTO PE_PE
	VALUES (306,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (306,
	0,
	'date',
	'',
	'');
INSERT INTO S_UDT
	VALUES (306,
	303,
	1);
INSERT INTO PE_PE
	VALUES (307,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (307,
	0,
	'inst_ref<Timer>',
	'',
	'');
INSERT INTO S_UDT
	VALUES (307,
	304,
	3);
INSERT INTO PE_PE
	VALUES (308,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (308,
	0,
	'timestamp',
	'',
	'');
INSERT INTO S_UDT
	VALUES (308,
	303,
	2);
-- root-types-contained: SystemModel_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES (309,
	'Tracking',
	1);
INSERT INTO EP_PKG
	VALUES (310,
	309,
	309,
	'Tracking',
	'',
	0);
INSERT INTO PE_PE
	VALUES (16,
	1,
	310,
	0,
	2);
INSERT INTO C_C
	VALUES (16,
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
	VALUES (17,
	16,
	'Location',
	0,
	0);
INSERT INTO C_IR
	VALUES (20,
	126,
	0,
	17);
INSERT INTO C_R
	VALUES (20,
	'TrackingLocation',
	'',
	'Unnamed Interface',
	'Tracking::Location::TrackingLocation');
INSERT INTO SPR_REP
	VALUES (311,
	128,
	20);
INSERT INTO SPR_RO
	VALUES (311,
	'getDistance',
	'Returns distance, in kilometers, between the "from" and "to" coordinates passed as parameters.
The coordinates must be passed as decimal degrees.',
	'return 1;',
	1);
INSERT INTO ACT_ROB
	VALUES (312,
	311);
INSERT INTO ACT_ACT
	VALUES (312,
	'interface operation',
	0,
	313,
	0,
	0,
	'Location::TrackingLocation::getDistance',
	0);
INSERT INTO ACT_BLK
	VALUES (313,
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
	312,
	0);
INSERT INTO ACT_SMT
	VALUES (314,
	313,
	0,
	1,
	1,
	'Location::TrackingLocation::getDistance line: 1');
INSERT INTO ACT_RET
	VALUES (314,
	315);
INSERT INTO V_VAL
	VALUES (315,
	0,
	0,
	1,
	8,
	8,
	0,
	0,
	0,
	0,
	188,
	313);
INSERT INTO V_LIN
	VALUES (315,
	'1');
INSERT INTO SPR_REP
	VALUES (316,
	143,
	20);
INSERT INTO SPR_RO
	VALUES (316,
	'getLocation',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (317,
	316);
INSERT INTO ACT_ACT
	VALUES (317,
	'interface operation',
	0,
	318,
	0,
	0,
	'Location::TrackingLocation::getLocation',
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
INSERT INTO SPR_REP
	VALUES (319,
	152,
	20);
INSERT INTO SPR_RO
	VALUES (319,
	'registerListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (320,
	319);
INSERT INTO ACT_ACT
	VALUES (320,
	'interface operation',
	0,
	321,
	0,
	0,
	'Location::TrackingLocation::registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (321,
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
	320,
	0);
INSERT INTO SPR_REP
	VALUES (322,
	157,
	20);
INSERT INTO SPR_RO
	VALUES (322,
	'unregisterListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (323,
	322);
INSERT INTO ACT_ACT
	VALUES (323,
	'interface operation',
	0,
	324,
	0,
	0,
	'Location::TrackingLocation::unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (324,
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
	323,
	0);
INSERT INTO C_PO
	VALUES (22,
	16,
	'UI',
	0,
	0);
INSERT INTO C_IR
	VALUES (25,
	163,
	0,
	22);
INSERT INTO C_R
	VALUES (25,
	'TrackingUI',
	'',
	'Unnamed Interface',
	'Tracking::UI::TrackingUI');
INSERT INTO SPR_REP
	VALUES (325,
	165,
	25);
INSERT INTO SPR_RO
	VALUES (325,
	'setData',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (326,
	325);
INSERT INTO ACT_ACT
	VALUES (326,
	'interface operation',
	0,
	327,
	0,
	0,
	'UI::TrackingUI::setData',
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
INSERT INTO SPR_REP
	VALUES (328,
	175,
	25);
INSERT INTO SPR_RO
	VALUES (328,
	'setIndicator',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (329,
	328);
INSERT INTO ACT_ACT
	VALUES (329,
	'interface operation',
	0,
	330,
	0,
	0,
	'UI::TrackingUI::setIndicator',
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
INSERT INTO SPR_REP
	VALUES (331,
	183,
	25);
INSERT INTO SPR_RO
	VALUES (331,
	'setTime',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (332,
	331);
INSERT INTO ACT_ACT
	VALUES (332,
	'interface operation',
	0,
	333,
	0,
	0,
	'UI::TrackingUI::setTime',
	0);
INSERT INTO ACT_BLK
	VALUES (333,
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
	332,
	0);
INSERT INTO SPR_REP
	VALUES (334,
	191,
	25);
INSERT INTO SPR_RO
	VALUES (334,
	'newGoalSpec',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (335,
	334);
INSERT INTO ACT_ACT
	VALUES (335,
	'interface operation',
	0,
	336,
	0,
	0,
	'UI::TrackingUI::newGoalSpec',
	0);
INSERT INTO ACT_BLK
	VALUES (336,
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
	335,
	0);
INSERT INTO C_PO
	VALUES (27,
	16,
	'HeartRateMonitor',
	0,
	0);
INSERT INTO C_IR
	VALUES (30,
	113,
	0,
	27);
INSERT INTO C_R
	VALUES (30,
	'TrackingHeartRateMonitor',
	'',
	'Unnamed Interface',
	'Tracking::HeartRateMonitor::TrackingHeartRateMonitor');
INSERT INTO SPR_REP
	VALUES (337,
	115,
	30);
INSERT INTO SPR_RO
	VALUES (337,
	'registerListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (338,
	337);
INSERT INTO ACT_ACT
	VALUES (338,
	'interface operation',
	0,
	339,
	0,
	0,
	'HeartRateMonitor::TrackingHeartRateMonitor::registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (339,
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
	338,
	0);
INSERT INTO SPR_REP
	VALUES (340,
	120,
	30);
INSERT INTO SPR_RO
	VALUES (340,
	'unregisterListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (341,
	340);
INSERT INTO ACT_ACT
	VALUES (341,
	'interface operation',
	0,
	342,
	0,
	0,
	'HeartRateMonitor::TrackingHeartRateMonitor::unregisterListener',
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
INSERT INTO C_PO
	VALUES (32,
	16,
	'Tracking',
	0,
	0);
INSERT INTO C_IR
	VALUES (35,
	211,
	0,
	32);
INSERT INTO C_P
	VALUES (35,
	'Tracking',
	'Unnamed Interface',
	'',
	'Tracking::Tracking::Tracking');
INSERT INTO SPR_PEP
	VALUES (343,
	213,
	35);
INSERT INTO SPR_PO
	VALUES (343,
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
	VALUES (344,
	343);
INSERT INTO ACT_ACT
	VALUES (344,
	'interface operation',
	0,
	345,
	0,
	0,
	'Tracking::Tracking::heartRateChanged',
	0);
INSERT INTO ACT_BLK
	VALUES (345,
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
	344,
	0);
INSERT INTO ACT_SMT
	VALUES (346,
	345,
	347,
	6,
	1,
	'Tracking::Tracking::heartRateChanged line: 6');
INSERT INTO ACT_FIO
	VALUES (346,
	348,
	1,
	'any',
	349,
	6,
	38);
INSERT INTO ACT_SMT
	VALUES (347,
	345,
	0,
	7,
	1,
	'Tracking::Tracking::heartRateChanged line: 7');
INSERT INTO ACT_IF
	VALUES (347,
	350,
	351,
	0,
	0);
INSERT INTO V_VAL
	VALUES (352,
	0,
	0,
	7,
	15,
	21,
	0,
	0,
	0,
	0,
	300,
	345);
INSERT INTO V_IRF
	VALUES (352,
	348);
INSERT INTO V_VAL
	VALUES (353,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	345);
INSERT INTO V_UNY
	VALUES (353,
	352,
	'empty');
INSERT INTO V_VAL
	VALUES (351,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	345);
INSERT INTO V_UNY
	VALUES (351,
	353,
	'not');
INSERT INTO V_VAR
	VALUES (348,
	345,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (348,
	0,
	349);
INSERT INTO ACT_BLK
	VALUES (350,
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
	344,
	0);
INSERT INTO ACT_SMT
	VALUES (354,
	350,
	0,
	8,
	3,
	'Tracking::Tracking::heartRateChanged line: 8');
INSERT INTO ACT_TFM
	VALUES (354,
	355,
	348,
	8,
	11,
	0,
	0);
INSERT INTO V_VAL
	VALUES (356,
	0,
	0,
	8,
	47,
	55,
	0,
	0,
	0,
	0,
	188,
	350);
INSERT INTO V_PVL
	VALUES (356,
	0,
	0,
	0,
	357);
INSERT INTO V_PAR
	VALUES (356,
	354,
	0,
	'heartRate',
	0,
	8,
	30);
INSERT INTO SPR_PEP
	VALUES (358,
	217,
	35);
INSERT INTO SPR_PO
	VALUES (358,
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
	VALUES (359,
	358);
INSERT INTO ACT_ACT
	VALUES (359,
	'interface operation',
	0,
	360,
	0,
	0,
	'Tracking::Tracking::lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (360,
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
	359,
	0);
INSERT INTO ACT_SMT
	VALUES (361,
	360,
	362,
	4,
	1,
	'Tracking::Tracking::lapResetPressed line: 4');
INSERT INTO ACT_FIO
	VALUES (361,
	363,
	1,
	'any',
	364,
	4,
	43);
INSERT INTO ACT_SMT
	VALUES (362,
	360,
	0,
	5,
	1,
	'Tracking::Tracking::lapResetPressed line: 5');
INSERT INTO ACT_IF
	VALUES (362,
	365,
	366,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (367,
	360,
	0,
	7,
	1,
	'Tracking::Tracking::lapResetPressed line: 7');
INSERT INTO ACT_E
	VALUES (367,
	368,
	362);
INSERT INTO V_VAL
	VALUES (369,
	0,
	0,
	5,
	15,
	26,
	0,
	0,
	0,
	0,
	300,
	360);
INSERT INTO V_IRF
	VALUES (369,
	363);
INSERT INTO V_VAL
	VALUES (370,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	360);
INSERT INTO V_UNY
	VALUES (370,
	369,
	'empty');
INSERT INTO V_VAL
	VALUES (366,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	360);
INSERT INTO V_UNY
	VALUES (366,
	370,
	'not');
INSERT INTO V_VAR
	VALUES (363,
	360,
	'workoutTimer',
	1,
	300);
INSERT INTO V_INT
	VALUES (363,
	0,
	364);
INSERT INTO ACT_BLK
	VALUES (365,
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
	359,
	0);
INSERT INTO ACT_SMT
	VALUES (371,
	365,
	0,
	6,
	3,
	'Tracking::Tracking::lapResetPressed line: 6');
INSERT INTO E_ESS
	VALUES (371,
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
	VALUES (371);
INSERT INTO E_GSME
	VALUES (371,
	372);
INSERT INTO E_GEN
	VALUES (371,
	363);
INSERT INTO ACT_BLK
	VALUES (368,
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
	359,
	0);
INSERT INTO ACT_SMT
	VALUES (373,
	368,
	0,
	8,
	3,
	'Tracking::Tracking::lapResetPressed line: 8');
INSERT INTO ACT_BRG
	VALUES (373,
	374,
	8,
	8,
	8,
	3);
INSERT INTO V_VAL
	VALUES (375,
	0,
	0,
	8,
	28,
	92,
	0,
	0,
	0,
	0,
	296,
	368);
INSERT INTO V_LST
	VALUES (375,
	'Tracking:UI:lapResetPressed - No WorkoutTimer, so nothing to do.');
INSERT INTO V_PAR
	VALUES (375,
	373,
	0,
	'message',
	0,
	8,
	20);
INSERT INTO SPR_PEP
	VALUES (376,
	221,
	35);
INSERT INTO SPR_PO
	VALUES (376,
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
	VALUES (377,
	376);
INSERT INTO ACT_ACT
	VALUES (377,
	'interface operation',
	0,
	378,
	0,
	0,
	'Tracking::Tracking::modePressed',
	0);
INSERT INTO ACT_BLK
	VALUES (378,
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
	377,
	0);
INSERT INTO ACT_SMT
	VALUES (379,
	378,
	380,
	5,
	1,
	'Tracking::Tracking::modePressed line: 5');
INSERT INTO ACT_FIO
	VALUES (379,
	381,
	1,
	'any',
	349,
	5,
	38);
INSERT INTO ACT_SMT
	VALUES (380,
	378,
	0,
	6,
	1,
	'Tracking::Tracking::modePressed line: 6');
INSERT INTO ACT_IF
	VALUES (380,
	382,
	383,
	0,
	0);
INSERT INTO V_VAL
	VALUES (384,
	0,
	0,
	6,
	16,
	22,
	0,
	0,
	0,
	0,
	300,
	378);
INSERT INTO V_IRF
	VALUES (384,
	381);
INSERT INTO V_VAL
	VALUES (385,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	378);
INSERT INTO V_UNY
	VALUES (385,
	384,
	'empty');
INSERT INTO V_VAL
	VALUES (383,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	378);
INSERT INTO V_UNY
	VALUES (383,
	385,
	'not');
INSERT INTO V_VAR
	VALUES (381,
	378,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (381,
	0,
	349);
INSERT INTO ACT_BLK
	VALUES (382,
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
	377,
	0);
INSERT INTO ACT_SMT
	VALUES (386,
	382,
	387,
	7,
	3,
	'Tracking::Tracking::modePressed line: 7');
INSERT INTO ACT_SEL
	VALUES (386,
	388,
	1,
	'one',
	389);
INSERT INTO ACT_SR
	VALUES (386);
INSERT INTO ACT_LNK
	VALUES (390,
	'''current status indicated on''',
	386,
	391,
	0,
	2,
	392,
	7,
	42,
	7,
	50,
	7,
	53);
INSERT INTO ACT_SMT
	VALUES (387,
	382,
	0,
	8,
	3,
	'Tracking::Tracking::modePressed line: 8');
INSERT INTO E_ESS
	VALUES (387,
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
	VALUES (387);
INSERT INTO E_GSME
	VALUES (387,
	393);
INSERT INTO E_GEN
	VALUES (387,
	388);
INSERT INTO V_VAL
	VALUES (389,
	0,
	0,
	7,
	33,
	39,
	0,
	0,
	0,
	0,
	300,
	382);
INSERT INTO V_IRF
	VALUES (389,
	381);
INSERT INTO V_VAR
	VALUES (388,
	382,
	'display',
	1,
	300);
INSERT INTO V_INT
	VALUES (388,
	0,
	392);
INSERT INTO SPR_PEP
	VALUES (394,
	225,
	35);
INSERT INTO SPR_PO
	VALUES (394,
	'setTargetPressed',
	'',
	'// If a goal is currently executing, advance to the next one,
//   otherwise start the first specified goal, if it exists.
Goal::nextGoal();',
	1);
INSERT INTO ACT_POB
	VALUES (395,
	394);
INSERT INTO ACT_ACT
	VALUES (395,
	'interface operation',
	0,
	396,
	0,
	0,
	'Tracking::Tracking::setTargetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (396,
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
	395,
	0);
INSERT INTO ACT_SMT
	VALUES (397,
	396,
	0,
	3,
	1,
	'Tracking::Tracking::setTargetPressed line: 3');
INSERT INTO ACT_TFM
	VALUES (397,
	398,
	0,
	3,
	7,
	3,
	1);
INSERT INTO SPR_PEP
	VALUES (399,
	229,
	35);
INSERT INTO SPR_PO
	VALUES (399,
	'startStopPressed',
	'',
	'// If necessary, create a workout session and everything required to 
// support it.  Then, forward this signal to the workout timer.

WorkoutSession::create();

// Forward this signal, as an event, to the singleton instance of WorkoutTimer.
select any workoutTimer from instances of WorkoutTimer;
generate WorkoutTimer1:startStopPressed() to workoutTimer;',
	1);
INSERT INTO ACT_POB
	VALUES (400,
	399);
INSERT INTO ACT_ACT
	VALUES (400,
	'interface operation',
	0,
	401,
	0,
	0,
	'Tracking::Tracking::startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (401,
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
	400,
	0);
INSERT INTO ACT_SMT
	VALUES (402,
	401,
	403,
	4,
	1,
	'Tracking::Tracking::startStopPressed line: 4');
INSERT INTO ACT_TFM
	VALUES (402,
	404,
	0,
	4,
	17,
	4,
	1);
INSERT INTO ACT_SMT
	VALUES (403,
	401,
	405,
	7,
	1,
	'Tracking::Tracking::startStopPressed line: 7');
INSERT INTO ACT_FIO
	VALUES (403,
	406,
	1,
	'any',
	364,
	7,
	43);
INSERT INTO ACT_SMT
	VALUES (405,
	401,
	0,
	8,
	1,
	'Tracking::Tracking::startStopPressed line: 8');
INSERT INTO E_ESS
	VALUES (405,
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
	VALUES (405);
INSERT INTO E_GSME
	VALUES (405,
	407);
INSERT INTO E_GEN
	VALUES (405,
	406);
INSERT INTO V_VAR
	VALUES (406,
	401,
	'workoutTimer',
	1,
	300);
INSERT INTO V_INT
	VALUES (406,
	0,
	364);
INSERT INTO SPR_PEP
	VALUES (408,
	233,
	35);
INSERT INTO SPR_PO
	VALUES (408,
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
	VALUES (409,
	408);
INSERT INTO ACT_ACT
	VALUES (409,
	'interface operation',
	0,
	410,
	0,
	0,
	'Tracking::Tracking::newGoalSpec',
	0);
INSERT INTO ACT_BLK
	VALUES (410,
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
	409,
	0);
INSERT INTO ACT_SMT
	VALUES (411,
	410,
	412,
	3,
	1,
	'Tracking::Tracking::newGoalSpec line: 3');
INSERT INTO ACT_FIO
	VALUES (411,
	413,
	1,
	'any',
	349,
	3,
	38);
INSERT INTO ACT_SMT
	VALUES (412,
	410,
	0,
	4,
	1,
	'Tracking::Tracking::newGoalSpec line: 4');
INSERT INTO ACT_IF
	VALUES (412,
	414,
	415,
	0,
	0);
INSERT INTO V_VAL
	VALUES (416,
	0,
	0,
	4,
	16,
	22,
	0,
	0,
	0,
	0,
	300,
	410);
INSERT INTO V_IRF
	VALUES (416,
	413);
INSERT INTO V_VAL
	VALUES (417,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	410);
INSERT INTO V_UNY
	VALUES (417,
	416,
	'empty');
INSERT INTO V_VAL
	VALUES (415,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	410);
INSERT INTO V_UNY
	VALUES (415,
	417,
	'not');
INSERT INTO V_VAR
	VALUES (413,
	410,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (413,
	0,
	349);
INSERT INTO ACT_BLK
	VALUES (414,
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
	409,
	0);
INSERT INTO ACT_SMT
	VALUES (418,
	414,
	419,
	5,
	3,
	'Tracking::Tracking::newGoalSpec line: 5');
INSERT INTO ACT_CR
	VALUES (418,
	420,
	1,
	421,
	5,
	38);
INSERT INTO ACT_SMT
	VALUES (419,
	414,
	422,
	6,
	3,
	'Tracking::Tracking::newGoalSpec line: 6');
INSERT INTO ACT_AI
	VALUES (419,
	423,
	424,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (422,
	414,
	425,
	7,
	3,
	'Tracking::Tracking::newGoalSpec line: 7');
INSERT INTO ACT_AI
	VALUES (422,
	426,
	427,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (425,
	414,
	428,
	8,
	3,
	'Tracking::Tracking::newGoalSpec line: 8');
INSERT INTO ACT_AI
	VALUES (425,
	429,
	430,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (428,
	414,
	431,
	9,
	3,
	'Tracking::Tracking::newGoalSpec line: 9');
INSERT INTO ACT_AI
	VALUES (428,
	432,
	433,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (431,
	414,
	434,
	10,
	3,
	'Tracking::Tracking::newGoalSpec line: 10');
INSERT INTO ACT_AI
	VALUES (431,
	435,
	436,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (434,
	414,
	437,
	11,
	3,
	'Tracking::Tracking::newGoalSpec line: 11');
INSERT INTO ACT_AI
	VALUES (434,
	438,
	439,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (437,
	414,
	0,
	12,
	3,
	'Tracking::Tracking::newGoalSpec line: 12');
INSERT INTO ACT_REL
	VALUES (437,
	420,
	413,
	'''included in''',
	440,
	12,
	37,
	12,
	41);
INSERT INTO V_VAL
	VALUES (441,
	1,
	0,
	6,
	3,
	10,
	0,
	0,
	0,
	0,
	300,
	414);
INSERT INTO V_IRF
	VALUES (441,
	420);
INSERT INTO V_VAL
	VALUES (424,
	1,
	0,
	6,
	12,
	25,
	0,
	0,
	0,
	0,
	188,
	414);
INSERT INTO V_AVL
	VALUES (424,
	441,
	421,
	442);
INSERT INTO V_VAL
	VALUES (423,
	0,
	0,
	6,
	35,
	48,
	0,
	0,
	0,
	0,
	188,
	414);
INSERT INTO V_PVL
	VALUES (423,
	0,
	0,
	0,
	443);
INSERT INTO V_VAL
	VALUES (444,
	1,
	0,
	7,
	3,
	10,
	0,
	0,
	0,
	0,
	300,
	414);
INSERT INTO V_IRF
	VALUES (444,
	420);
INSERT INTO V_VAL
	VALUES (427,
	1,
	0,
	7,
	12,
	18,
	0,
	0,
	0,
	0,
	133,
	414);
INSERT INTO V_AVL
	VALUES (427,
	444,
	421,
	445);
INSERT INTO V_VAL
	VALUES (426,
	0,
	0,
	7,
	28,
	34,
	0,
	0,
	0,
	0,
	133,
	414);
INSERT INTO V_PVL
	VALUES (426,
	0,
	0,
	0,
	446);
INSERT INTO V_VAL
	VALUES (447,
	1,
	0,
	8,
	3,
	10,
	0,
	0,
	0,
	0,
	300,
	414);
INSERT INTO V_IRF
	VALUES (447,
	420);
INSERT INTO V_VAL
	VALUES (430,
	1,
	0,
	8,
	12,
	18,
	0,
	0,
	0,
	0,
	133,
	414);
INSERT INTO V_AVL
	VALUES (430,
	447,
	421,
	448);
INSERT INTO V_VAL
	VALUES (429,
	0,
	0,
	8,
	28,
	34,
	0,
	0,
	0,
	0,
	133,
	414);
INSERT INTO V_PVL
	VALUES (429,
	0,
	0,
	0,
	449);
INSERT INTO V_VAL
	VALUES (450,
	1,
	0,
	9,
	3,
	10,
	0,
	0,
	0,
	0,
	300,
	414);
INSERT INTO V_IRF
	VALUES (450,
	420);
INSERT INTO V_VAL
	VALUES (433,
	1,
	0,
	9,
	12,
	15,
	0,
	0,
	0,
	0,
	133,
	414);
INSERT INTO V_AVL
	VALUES (433,
	450,
	421,
	451);
INSERT INTO V_VAL
	VALUES (432,
	0,
	0,
	9,
	25,
	28,
	0,
	0,
	0,
	0,
	133,
	414);
INSERT INTO V_PVL
	VALUES (432,
	0,
	0,
	0,
	452);
INSERT INTO V_VAL
	VALUES (453,
	1,
	0,
	10,
	3,
	10,
	0,
	0,
	0,
	0,
	300,
	414);
INSERT INTO V_IRF
	VALUES (453,
	420);
INSERT INTO V_VAL
	VALUES (436,
	1,
	0,
	10,
	12,
	23,
	0,
	0,
	0,
	0,
	204,
	414);
INSERT INTO V_AVL
	VALUES (436,
	453,
	421,
	454);
INSERT INTO V_VAL
	VALUES (435,
	0,
	0,
	10,
	33,
	44,
	0,
	0,
	0,
	0,
	204,
	414);
INSERT INTO V_PVL
	VALUES (435,
	0,
	0,
	0,
	455);
INSERT INTO V_VAL
	VALUES (456,
	1,
	0,
	11,
	3,
	10,
	0,
	0,
	0,
	0,
	300,
	414);
INSERT INTO V_IRF
	VALUES (456,
	420);
INSERT INTO V_VAL
	VALUES (439,
	1,
	0,
	11,
	12,
	19,
	0,
	0,
	0,
	0,
	207,
	414);
INSERT INTO V_AVL
	VALUES (439,
	456,
	421,
	457);
INSERT INTO V_VAL
	VALUES (438,
	0,
	0,
	11,
	29,
	36,
	0,
	0,
	0,
	0,
	207,
	414);
INSERT INTO V_PVL
	VALUES (438,
	0,
	0,
	0,
	458);
INSERT INTO V_VAR
	VALUES (420,
	414,
	'goalSpec',
	1,
	300);
INSERT INTO V_INT
	VALUES (420,
	0,
	421);
INSERT INTO SPR_PEP
	VALUES (459,
	237,
	35);
INSERT INTO SPR_PO
	VALUES (459,
	'lightPressed',
	'',
	'',
	1);
INSERT INTO ACT_POB
	VALUES (460,
	459);
INSERT INTO ACT_ACT
	VALUES (460,
	'interface operation',
	0,
	461,
	0,
	0,
	'Tracking::Tracking::lightPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (461,
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
	460,
	0);
INSERT INTO PE_PE
	VALUES (462,
	1,
	0,
	16,
	7);
INSERT INTO EP_PKG
	VALUES (462,
	0,
	309,
	'Tracking',
	'',
	0);
INSERT INTO PE_PE
	VALUES (463,
	1,
	462,
	0,
	9);
INSERT INTO R_REL
	VALUES (463,
	1,
	'Indicates the first track point for a track log.  In
other words, this is the first recorded location in 
a chronological series of track points that make up
a track log.
Established when the first track point is recorded and 
exists for the lifetime of the track log.',
	0);
INSERT INTO R_SIMP
	VALUES (463);
INSERT INTO R_PART
	VALUES (464,
	463,
	465,
	0,
	1,
	'is start of');
INSERT INTO R_RTO
	VALUES (464,
	463,
	465,
	-1);
INSERT INTO R_OIR
	VALUES (464,
	463,
	465,
	0);
INSERT INTO R_PART
	VALUES (466,
	463,
	467,
	0,
	1,
	'has first');
INSERT INTO R_RTO
	VALUES (466,
	463,
	467,
	-1);
INSERT INTO R_OIR
	VALUES (466,
	463,
	467,
	0);
INSERT INTO PE_PE
	VALUES (468,
	1,
	462,
	0,
	9);
INSERT INTO R_REL
	VALUES (468,
	2,
	'Chronologically sequences the track points in a track log.
Established each time a new track point is recorded and 
exists for the lifetime of the track log.',
	0);
INSERT INTO R_SIMP
	VALUES (468);
INSERT INTO R_PART
	VALUES (466,
	468,
	469,
	0,
	1,
	'preceeds');
INSERT INTO R_RTO
	VALUES (466,
	468,
	469,
	-1);
INSERT INTO R_OIR
	VALUES (466,
	468,
	469,
	0);
INSERT INTO R_PART
	VALUES (466,
	468,
	470,
	0,
	1,
	'follows');
INSERT INTO R_RTO
	VALUES (466,
	468,
	470,
	-1);
INSERT INTO R_OIR
	VALUES (466,
	468,
	470,
	0);
INSERT INTO PE_PE
	VALUES (471,
	1,
	462,
	0,
	9);
INSERT INTO R_REL
	VALUES (471,
	3,
	'Represents the most recently recorded track point
in a track log.  
Established each time a new track point is recorded and
removed from the previously recorded track point at the same time.',
	0);
INSERT INTO R_SIMP
	VALUES (471);
INSERT INTO R_PART
	VALUES (466,
	471,
	472,
	0,
	1,
	'has last');
INSERT INTO R_RTO
	VALUES (466,
	471,
	472,
	-1);
INSERT INTO R_OIR
	VALUES (466,
	471,
	472,
	0);
INSERT INTO R_PART
	VALUES (464,
	471,
	473,
	0,
	1,
	'is last for');
INSERT INTO R_RTO
	VALUES (464,
	471,
	473,
	-1);
INSERT INTO R_OIR
	VALUES (464,
	471,
	473,
	0);
INSERT INTO PE_PE
	VALUES (474,
	1,
	462,
	0,
	9);
INSERT INTO R_REL
	VALUES (474,
	5,
	'Established when a lap marker is created and exists
for the lifetime of the track log.',
	0);
INSERT INTO R_SIMP
	VALUES (474);
INSERT INTO R_PART
	VALUES (475,
	474,
	476,
	1,
	1,
	'has laps defined by');
INSERT INTO R_RTO
	VALUES (475,
	474,
	476,
	-1);
INSERT INTO R_OIR
	VALUES (475,
	474,
	476,
	0);
INSERT INTO R_PART
	VALUES (464,
	474,
	477,
	0,
	0,
	'marks end of lap in');
INSERT INTO R_RTO
	VALUES (464,
	474,
	477,
	-1);
INSERT INTO R_OIR
	VALUES (464,
	474,
	477,
	0);
INSERT INTO PE_PE
	VALUES (391,
	1,
	462,
	0,
	9);
INSERT INTO R_REL
	VALUES (391,
	7,
	'Established when a workout session is created and 
exists for the duration of the session.',
	0);
INSERT INTO R_SIMP
	VALUES (391);
INSERT INTO R_PART
	VALUES (349,
	391,
	478,
	0,
	0,
	'indicates current status of');
INSERT INTO R_RTO
	VALUES (349,
	391,
	478,
	-1);
INSERT INTO R_OIR
	VALUES (349,
	391,
	478,
	0);
INSERT INTO R_PART
	VALUES (392,
	391,
	479,
	0,
	0,
	'current status indicated on');
INSERT INTO R_RTO
	VALUES (392,
	391,
	479,
	-1);
INSERT INTO R_OIR
	VALUES (392,
	391,
	479,
	0);
INSERT INTO PE_PE
	VALUES (480,
	1,
	462,
	0,
	9);
INSERT INTO R_REL
	VALUES (480,
	8,
	'Established when a workout session is created and exists for the duration
of the session.',
	0);
INSERT INTO R_SIMP
	VALUES (480);
INSERT INTO R_PART
	VALUES (349,
	480,
	481,
	0,
	0,
	'acts as the stopwatch for');
INSERT INTO R_RTO
	VALUES (349,
	480,
	481,
	-1);
INSERT INTO R_OIR
	VALUES (349,
	480,
	481,
	0);
INSERT INTO R_PART
	VALUES (364,
	480,
	482,
	0,
	0,
	'is timed by');
INSERT INTO R_RTO
	VALUES (364,
	480,
	482,
	-1);
INSERT INTO R_OIR
	VALUES (364,
	480,
	482,
	0);
INSERT INTO PE_PE
	VALUES (483,
	1,
	462,
	0,
	9);
INSERT INTO R_REL
	VALUES (483,
	4,
	'Established when a workout session is created and
exists for the duration of the session.',
	0);
INSERT INTO R_SIMP
	VALUES (483);
INSERT INTO R_PART
	VALUES (349,
	483,
	484,
	0,
	0,
	'represents path for');
INSERT INTO R_RTO
	VALUES (349,
	483,
	484,
	-1);
INSERT INTO R_OIR
	VALUES (349,
	483,
	484,
	0);
INSERT INTO R_PART
	VALUES (464,
	483,
	485,
	0,
	0,
	'captures path in');
INSERT INTO R_RTO
	VALUES (464,
	483,
	485,
	-1);
INSERT INTO R_OIR
	VALUES (464,
	483,
	485,
	0);
INSERT INTO PE_PE
	VALUES (486,
	1,
	462,
	0,
	9);
INSERT INTO R_REL
	VALUES (486,
	6,
	'Established when a heart rate sample is created and exists for
the duration of the workout session.',
	0);
INSERT INTO R_SIMP
	VALUES (486);
INSERT INTO R_PART
	VALUES (487,
	486,
	488,
	1,
	1,
	'tracks heart rate over time as');
INSERT INTO R_RTO
	VALUES (487,
	486,
	488,
	-1);
INSERT INTO R_OIR
	VALUES (487,
	486,
	488,
	0);
INSERT INTO R_PART
	VALUES (349,
	486,
	489,
	0,
	0,
	'was collected during');
INSERT INTO R_RTO
	VALUES (349,
	486,
	489,
	-1);
INSERT INTO R_OIR
	VALUES (349,
	486,
	489,
	0);
INSERT INTO PE_PE
	VALUES (490,
	1,
	462,
	0,
	9);
INSERT INTO R_REL
	VALUES (490,
	9,
	'Established when goal execution begins and removed when it ends.',
	0);
INSERT INTO R_SIMP
	VALUES (490);
INSERT INTO R_PART
	VALUES (421,
	490,
	491,
	0,
	0,
	'specified by');
INSERT INTO R_RTO
	VALUES (421,
	490,
	491,
	-1);
INSERT INTO R_OIR
	VALUES (421,
	490,
	491,
	0);
INSERT INTO R_PART
	VALUES (492,
	490,
	493,
	1,
	1,
	'specifies');
INSERT INTO R_RTO
	VALUES (492,
	490,
	493,
	-1);
INSERT INTO R_OIR
	VALUES (492,
	490,
	493,
	0);
INSERT INTO PE_PE
	VALUES (440,
	1,
	462,
	0,
	9);
INSERT INTO R_REL
	VALUES (440,
	10,
	'Established when a goal specification is created and exists 
for the duration of a workout session.',
	0);
INSERT INTO R_SIMP
	VALUES (440);
INSERT INTO R_PART
	VALUES (349,
	440,
	494,
	0,
	0,
	'included in');
INSERT INTO R_RTO
	VALUES (349,
	440,
	494,
	-1);
INSERT INTO R_OIR
	VALUES (349,
	440,
	494,
	0);
INSERT INTO R_PART
	VALUES (421,
	440,
	495,
	1,
	1,
	'includes');
INSERT INTO R_RTO
	VALUES (421,
	440,
	495,
	-1);
INSERT INTO R_OIR
	VALUES (421,
	440,
	495,
	0);
INSERT INTO PE_PE
	VALUES (496,
	1,
	462,
	0,
	9);
INSERT INTO R_REL
	VALUES (496,
	11,
	'Established when a goal begins executing and removed when it ends.',
	0);
INSERT INTO R_SIMP
	VALUES (496);
INSERT INTO R_PART
	VALUES (349,
	496,
	497,
	0,
	1,
	'is currently executing within');
INSERT INTO R_RTO
	VALUES (349,
	496,
	497,
	-1);
INSERT INTO R_OIR
	VALUES (349,
	496,
	497,
	0);
INSERT INTO R_PART
	VALUES (492,
	496,
	498,
	0,
	1,
	'is currently executing');
INSERT INTO R_RTO
	VALUES (492,
	496,
	498,
	-1);
INSERT INTO R_OIR
	VALUES (492,
	496,
	498,
	0);
INSERT INTO PE_PE
	VALUES (499,
	1,
	462,
	0,
	9);
INSERT INTO R_REL
	VALUES (499,
	12,
	'Established when an achievement period begins and exists for 
the duration of the associated workout session.',
	0);
INSERT INTO R_SIMP
	VALUES (499);
INSERT INTO R_PART
	VALUES (492,
	499,
	500,
	0,
	0,
	'specifies achievement of');
INSERT INTO R_RTO
	VALUES (492,
	499,
	500,
	-1);
INSERT INTO R_OIR
	VALUES (492,
	499,
	500,
	0);
INSERT INTO R_PART
	VALUES (501,
	499,
	502,
	1,
	1,
	'has recorded');
INSERT INTO R_RTO
	VALUES (501,
	499,
	502,
	-1);
INSERT INTO R_OIR
	VALUES (501,
	499,
	502,
	0);
INSERT INTO PE_PE
	VALUES (503,
	1,
	462,
	0,
	9);
INSERT INTO R_REL
	VALUES (503,
	13,
	'Established when a goal completes execution and exists for the 
duration of the associated workout session.',
	0);
INSERT INTO R_SIMP
	VALUES (503);
INSERT INTO R_PART
	VALUES (492,
	503,
	504,
	1,
	1,
	'has executed');
INSERT INTO R_RTO
	VALUES (492,
	503,
	504,
	-1);
INSERT INTO R_OIR
	VALUES (492,
	503,
	504,
	0);
INSERT INTO R_PART
	VALUES (349,
	503,
	505,
	0,
	0,
	'was executed within');
INSERT INTO R_RTO
	VALUES (349,
	503,
	505,
	-1);
INSERT INTO R_OIR
	VALUES (349,
	503,
	505,
	0);
INSERT INTO PE_PE
	VALUES (506,
	1,
	462,
	0,
	9);
INSERT INTO R_REL
	VALUES (506,
	14,
	'Represents an open achievement record, one for which a start time has been recorded
but no end time has yet been recorded.  In other words, this association exists only
while the currently executing goal is being achieved.',
	0);
INSERT INTO R_SIMP
	VALUES (506);
INSERT INTO R_PART
	VALUES (492,
	506,
	507,
	0,
	1,
	'is open for');
INSERT INTO R_RTO
	VALUES (492,
	506,
	507,
	-1);
INSERT INTO R_OIR
	VALUES (492,
	506,
	507,
	0);
INSERT INTO R_PART
	VALUES (501,
	506,
	508,
	0,
	1,
	'has open');
INSERT INTO R_RTO
	VALUES (501,
	506,
	508,
	-1);
INSERT INTO R_OIR
	VALUES (501,
	506,
	508,
	0);
INSERT INTO PE_PE
	VALUES (509,
	1,
	462,
	0,
	5);
INSERT INTO S_EE
	VALUES (509,
	'Logging',
	'',
	'LOG',
	0,
	'',
	'Logging',
	1);
INSERT INTO S_BRG
	VALUES (510,
	509,
	'LogSuccess',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (511,
	510,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (512,
	510);
INSERT INTO ACT_ACT
	VALUES (512,
	'bridge',
	0,
	513,
	0,
	0,
	'Logging::LogSuccess',
	0);
INSERT INTO ACT_BLK
	VALUES (513,
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
	512,
	0);
INSERT INTO S_BRG
	VALUES (374,
	509,
	'LogFailure',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (514,
	374,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (515,
	374);
INSERT INTO ACT_ACT
	VALUES (515,
	'bridge',
	0,
	516,
	0,
	0,
	'Logging::LogFailure',
	0);
INSERT INTO ACT_BLK
	VALUES (516,
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
	515,
	0);
INSERT INTO S_BRG
	VALUES (517,
	509,
	'LogInfo',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (518,
	517,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (519,
	517);
INSERT INTO ACT_ACT
	VALUES (519,
	'bridge',
	0,
	520,
	0,
	0,
	'Logging::LogInfo',
	0);
INSERT INTO ACT_BLK
	VALUES (520,
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
	519,
	0);
INSERT INTO S_BRG
	VALUES (521,
	509,
	'LogDate',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (522,
	521,
	'd',
	306,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (523,
	521,
	'message',
	296,
	0,
	'',
	522,
	'');
INSERT INTO ACT_BRB
	VALUES (524,
	521);
INSERT INTO ACT_ACT
	VALUES (524,
	'bridge',
	0,
	525,
	0,
	0,
	'Logging::LogDate',
	0);
INSERT INTO ACT_BLK
	VALUES (525,
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
	524,
	0);
INSERT INTO S_BRG
	VALUES (526,
	509,
	'LogTime',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (527,
	526,
	't',
	308,
	0,
	'',
	528,
	'');
INSERT INTO S_BPARM
	VALUES (528,
	526,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (529,
	526);
INSERT INTO ACT_ACT
	VALUES (529,
	'bridge',
	0,
	530,
	0,
	0,
	'Logging::LogTime',
	0);
INSERT INTO ACT_BLK
	VALUES (530,
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
	529,
	0);
INSERT INTO S_BRG
	VALUES (531,
	509,
	'LogReal',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (532,
	531,
	'r',
	133,
	0,
	'',
	533,
	'');
INSERT INTO S_BPARM
	VALUES (533,
	531,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (534,
	531);
INSERT INTO ACT_ACT
	VALUES (534,
	'bridge',
	0,
	535,
	0,
	0,
	'Logging::LogReal',
	0);
INSERT INTO ACT_BLK
	VALUES (535,
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
	534,
	0);
INSERT INTO S_BRG
	VALUES (536,
	509,
	'LogInteger',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (537,
	536,
	'message',
	188,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (538,
	536);
INSERT INTO ACT_ACT
	VALUES (538,
	'bridge',
	0,
	539,
	0,
	0,
	'Logging::LogInteger',
	0);
INSERT INTO ACT_BLK
	VALUES (539,
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
	538,
	0);
INSERT INTO PE_PE
	VALUES (540,
	1,
	462,
	0,
	5);
INSERT INTO S_EE
	VALUES (540,
	'Time',
	'The Time external entity provides date, timestamp, and timer related operations.',
	'TIM',
	0,
	'',
	'Time',
	1);
INSERT INTO S_BRG
	VALUES (541,
	540,
	'current_date',
	'',
	1,
	306,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (542,
	541);
INSERT INTO ACT_ACT
	VALUES (542,
	'bridge',
	0,
	543,
	0,
	0,
	'Time::current_date',
	0);
INSERT INTO ACT_BLK
	VALUES (543,
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
	542,
	0);
INSERT INTO S_BRG
	VALUES (544,
	540,
	'create_date',
	'',
	1,
	306,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (545,
	544,
	'second',
	188,
	0,
	'',
	546,
	'');
INSERT INTO S_BPARM
	VALUES (547,
	544,
	'minute',
	188,
	0,
	'',
	548,
	'');
INSERT INTO S_BPARM
	VALUES (548,
	544,
	'hour',
	188,
	0,
	'',
	549,
	'');
INSERT INTO S_BPARM
	VALUES (549,
	544,
	'day',
	188,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (546,
	544,
	'month',
	188,
	0,
	'',
	547,
	'');
INSERT INTO S_BPARM
	VALUES (550,
	544,
	'year',
	188,
	0,
	'',
	545,
	'');
INSERT INTO ACT_BRB
	VALUES (551,
	544);
INSERT INTO ACT_ACT
	VALUES (551,
	'bridge',
	0,
	552,
	0,
	0,
	'Time::create_date',
	0);
INSERT INTO ACT_BLK
	VALUES (552,
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
	551,
	0);
INSERT INTO S_BRG
	VALUES (553,
	540,
	'get_second',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (554,
	553,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (555,
	553);
INSERT INTO ACT_ACT
	VALUES (555,
	'bridge',
	0,
	556,
	0,
	0,
	'Time::get_second',
	0);
INSERT INTO ACT_BLK
	VALUES (556,
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
	555,
	0);
INSERT INTO S_BRG
	VALUES (557,
	540,
	'get_minute',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (558,
	557,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (559,
	557);
INSERT INTO ACT_ACT
	VALUES (559,
	'bridge',
	0,
	560,
	0,
	0,
	'Time::get_minute',
	0);
INSERT INTO ACT_BLK
	VALUES (560,
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
	559,
	0);
INSERT INTO S_BRG
	VALUES (561,
	540,
	'get_hour',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (562,
	561,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (563,
	561);
INSERT INTO ACT_ACT
	VALUES (563,
	'bridge',
	0,
	564,
	0,
	0,
	'Time::get_hour',
	0);
INSERT INTO ACT_BLK
	VALUES (564,
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
	563,
	0);
INSERT INTO S_BRG
	VALUES (565,
	540,
	'get_day',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (566,
	565,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (567,
	565);
INSERT INTO ACT_ACT
	VALUES (567,
	'bridge',
	0,
	568,
	0,
	0,
	'Time::get_day',
	0);
INSERT INTO ACT_BLK
	VALUES (568,
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
	567,
	0);
INSERT INTO S_BRG
	VALUES (569,
	540,
	'get_month',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (570,
	569,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (571,
	569);
INSERT INTO ACT_ACT
	VALUES (571,
	'bridge',
	0,
	572,
	0,
	0,
	'Time::get_month',
	0);
INSERT INTO ACT_BLK
	VALUES (572,
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
	571,
	0);
INSERT INTO S_BRG
	VALUES (573,
	540,
	'get_year',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (574,
	573,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (575,
	573);
INSERT INTO ACT_ACT
	VALUES (575,
	'bridge',
	0,
	576,
	0,
	0,
	'Time::get_year',
	0);
INSERT INTO ACT_BLK
	VALUES (576,
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
	575,
	0);
INSERT INTO S_BRG
	VALUES (577,
	540,
	'current_clock',
	'',
	1,
	308,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (578,
	577);
INSERT INTO ACT_ACT
	VALUES (578,
	'bridge',
	0,
	579,
	0,
	0,
	'Time::current_clock',
	0);
INSERT INTO ACT_BLK
	VALUES (579,
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
	578,
	0);
INSERT INTO S_BRG
	VALUES (580,
	540,
	'timer_start',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Returns the instance
handle of the timer.',
	1,
	307,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (581,
	580,
	'microseconds',
	188,
	0,
	'',
	582,
	'');
INSERT INTO S_BPARM
	VALUES (582,
	580,
	'event_inst',
	302,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (583,
	580);
INSERT INTO ACT_ACT
	VALUES (583,
	'bridge',
	0,
	584,
	0,
	0,
	'Time::timer_start',
	0);
INSERT INTO ACT_BLK
	VALUES (584,
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
	583,
	0);
INSERT INTO S_BRG
	VALUES (585,
	540,
	'timer_start_recurring',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Upon expiration, the
timer will be restarted and fire again in the specified number of microseconds
generating the passed event. This bridge operation returns the instance handle
of the timer.',
	1,
	307,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (586,
	585,
	'microseconds',
	188,
	0,
	'',
	587,
	'');
INSERT INTO S_BPARM
	VALUES (587,
	585,
	'event_inst',
	302,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (588,
	585);
INSERT INTO ACT_ACT
	VALUES (588,
	'bridge',
	0,
	589,
	0,
	0,
	'Time::timer_start_recurring',
	0);
INSERT INTO ACT_BLK
	VALUES (589,
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
	588,
	0);
INSERT INTO S_BRG
	VALUES (590,
	540,
	'timer_remaining_time',
	'Returns the time remaining (in microseconds) for the passed timer instance. If
the timer has expired, a zero value is returned.',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (591,
	590,
	'timer_inst_ref',
	307,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (592,
	590);
INSERT INTO ACT_ACT
	VALUES (592,
	'bridge',
	0,
	593,
	0,
	0,
	'Time::timer_remaining_time',
	0);
INSERT INTO ACT_BLK
	VALUES (593,
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
	592,
	0);
INSERT INTO S_BRG
	VALUES (594,
	540,
	'timer_reset_time',
	'This bridge operation attempts to set the passed existing timer to expire in
the specified number of microseconds. If the timer exists (that is, it has not
expired), a TRUE value is returned. If the timer no longer exists, a FALSE value
is returned.',
	1,
	295,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (595,
	594,
	'timer_inst_ref',
	307,
	0,
	'',
	596,
	'');
INSERT INTO S_BPARM
	VALUES (596,
	594,
	'microseconds',
	188,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (597,
	594);
INSERT INTO ACT_ACT
	VALUES (597,
	'bridge',
	0,
	598,
	0,
	0,
	'Time::timer_reset_time',
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
INSERT INTO S_BRG
	VALUES (599,
	540,
	'timer_add_time',
	'This bridge operation attempts to add the specified number of microseconds to a
passed existing timer. If the timer exists (that is, it has not expired), a TRUE
value is returned. If the timer no longer exists, a FALSE value is returned.',
	1,
	295,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (600,
	599,
	'timer_inst_ref',
	307,
	0,
	'',
	601,
	'');
INSERT INTO S_BPARM
	VALUES (601,
	599,
	'microseconds',
	188,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (602,
	599);
INSERT INTO ACT_ACT
	VALUES (602,
	'bridge',
	0,
	603,
	0,
	0,
	'Time::timer_add_time',
	0);
INSERT INTO ACT_BLK
	VALUES (603,
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
	602,
	0);
INSERT INTO S_BRG
	VALUES (604,
	540,
	'timer_cancel',
	'This bridge operation cancels and deletes the passed timer instance. If the 
timer exists (that is, it had not expired), a TRUE value is returned. If the
timer no longer exists, a FALSE value is returned.',
	1,
	295,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (605,
	604,
	'timer_inst_ref',
	307,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (606,
	604);
INSERT INTO ACT_ACT
	VALUES (606,
	'bridge',
	0,
	607,
	0,
	0,
	'Time::timer_cancel',
	0);
INSERT INTO ACT_BLK
	VALUES (607,
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
	606,
	0);
INSERT INTO PE_PE
	VALUES (608,
	1,
	462,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (608,
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
	294,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (609,
	608);
INSERT INTO ACT_ACT
	VALUES (609,
	'function',
	0,
	610,
	0,
	0,
	'GoalTest_1',
	0);
INSERT INTO ACT_BLK
	VALUES (610,
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
	609,
	0);
INSERT INTO ACT_SMT
	VALUES (611,
	610,
	612,
	2,
	1,
	'GoalTest_1 line: 2');
INSERT INTO ACT_FNC
	VALUES (611,
	613,
	2,
	3);
INSERT INTO ACT_SMT
	VALUES (612,
	610,
	614,
	5,
	1,
	'GoalTest_1 line: 5');
INSERT INTO ACT_IOP
	VALUES (612,
	5,
	10,
	5,
	6,
	0,
	334,
	0);
INSERT INTO ACT_SMT
	VALUES (614,
	610,
	615,
	13,
	1,
	'GoalTest_1 line: 13');
INSERT INTO ACT_IOP
	VALUES (614,
	13,
	10,
	13,
	6,
	0,
	334,
	0);
INSERT INTO ACT_SMT
	VALUES (615,
	610,
	616,
	21,
	1,
	'GoalTest_1 line: 21');
INSERT INTO ACT_IOP
	VALUES (615,
	21,
	10,
	21,
	6,
	0,
	334,
	0);
INSERT INTO ACT_SMT
	VALUES (616,
	610,
	0,
	29,
	1,
	'GoalTest_1 line: 29');
INSERT INTO ACT_IOP
	VALUES (616,
	29,
	10,
	29,
	6,
	0,
	334,
	0);
INSERT INTO V_VAL
	VALUES (617,
	0,
	0,
	6,
	19,
	19,
	0,
	0,
	0,
	0,
	188,
	610);
INSERT INTO V_LIN
	VALUES (617,
	'1');
INSERT INTO V_PAR
	VALUES (617,
	612,
	0,
	'sequenceNumber',
	618,
	6,
	3);
INSERT INTO V_VAL
	VALUES (618,
	0,
	0,
	7,
	12,
	14,
	0,
	0,
	0,
	0,
	133,
	610);
INSERT INTO V_LRL
	VALUES (618,
	'2.0');
INSERT INTO V_PAR
	VALUES (618,
	612,
	0,
	'minimum',
	619,
	7,
	3);
INSERT INTO V_VAL
	VALUES (619,
	0,
	0,
	8,
	12,
	14,
	0,
	0,
	0,
	0,
	133,
	610);
INSERT INTO V_LRL
	VALUES (619,
	'8.0');
INSERT INTO V_PAR
	VALUES (619,
	612,
	0,
	'maximum',
	620,
	8,
	3);
INSERT INTO V_VAL
	VALUES (620,
	0,
	0,
	9,
	9,
	13,
	0,
	0,
	0,
	0,
	133,
	610);
INSERT INTO V_LRL
	VALUES (620,
	'150.0');
INSERT INTO V_PAR
	VALUES (620,
	612,
	0,
	'span',
	621,
	9,
	3);
INSERT INTO V_VAL
	VALUES (621,
	0,
	0,
	10,
	31,
	34,
	0,
	0,
	0,
	0,
	204,
	610);
INSERT INTO V_LEN
	VALUES (621,
	622,
	10,
	17);
INSERT INTO V_PAR
	VALUES (621,
	612,
	0,
	'criteriaType',
	623,
	10,
	3);
INSERT INTO V_VAL
	VALUES (623,
	0,
	0,
	11,
	23,
	30,
	0,
	0,
	0,
	0,
	207,
	610);
INSERT INTO V_LEN
	VALUES (623,
	624,
	11,
	13);
INSERT INTO V_PAR
	VALUES (623,
	612,
	0,
	'spanType',
	0,
	11,
	3);
INSERT INTO V_VAL
	VALUES (625,
	0,
	0,
	14,
	19,
	19,
	0,
	0,
	0,
	0,
	188,
	610);
INSERT INTO V_LIN
	VALUES (625,
	'2');
INSERT INTO V_PAR
	VALUES (625,
	614,
	0,
	'sequenceNumber',
	626,
	14,
	3);
INSERT INTO V_VAL
	VALUES (626,
	0,
	0,
	15,
	12,
	15,
	0,
	0,
	0,
	0,
	133,
	610);
INSERT INTO V_LRL
	VALUES (626,
	'60.0');
INSERT INTO V_PAR
	VALUES (626,
	614,
	0,
	'minimum',
	627,
	15,
	3);
INSERT INTO V_VAL
	VALUES (627,
	0,
	0,
	16,
	12,
	15,
	0,
	0,
	0,
	0,
	133,
	610);
INSERT INTO V_LRL
	VALUES (627,
	'80.0');
INSERT INTO V_PAR
	VALUES (627,
	614,
	0,
	'maximum',
	628,
	16,
	3);
INSERT INTO V_VAL
	VALUES (628,
	0,
	0,
	17,
	9,
	10,
	0,
	0,
	0,
	0,
	188,
	610);
INSERT INTO V_LIN
	VALUES (628,
	'10');
INSERT INTO V_PAR
	VALUES (628,
	614,
	0,
	'span',
	629,
	17,
	3);
INSERT INTO V_VAL
	VALUES (629,
	0,
	0,
	18,
	31,
	39,
	0,
	0,
	0,
	0,
	204,
	610);
INSERT INTO V_LEN
	VALUES (629,
	630,
	18,
	17);
INSERT INTO V_PAR
	VALUES (629,
	614,
	0,
	'criteriaType',
	631,
	18,
	3);
INSERT INTO V_VAL
	VALUES (631,
	0,
	0,
	19,
	23,
	26,
	0,
	0,
	0,
	0,
	207,
	610);
INSERT INTO V_LEN
	VALUES (631,
	632,
	19,
	13);
INSERT INTO V_PAR
	VALUES (631,
	614,
	0,
	'spanType',
	0,
	19,
	3);
INSERT INTO V_VAL
	VALUES (633,
	0,
	0,
	22,
	19,
	19,
	0,
	0,
	0,
	0,
	188,
	610);
INSERT INTO V_LIN
	VALUES (633,
	'3');
INSERT INTO V_PAR
	VALUES (633,
	615,
	0,
	'sequenceNumber',
	634,
	22,
	3);
INSERT INTO V_VAL
	VALUES (634,
	0,
	0,
	23,
	12,
	14,
	0,
	0,
	0,
	0,
	133,
	610);
INSERT INTO V_LRL
	VALUES (634,
	'5.0');
INSERT INTO V_PAR
	VALUES (634,
	615,
	0,
	'minimum',
	635,
	23,
	3);
INSERT INTO V_VAL
	VALUES (635,
	0,
	0,
	24,
	12,
	14,
	0,
	0,
	0,
	0,
	133,
	610);
INSERT INTO V_LRL
	VALUES (635,
	'6.0');
INSERT INTO V_PAR
	VALUES (635,
	615,
	0,
	'maximum',
	636,
	24,
	3);
INSERT INTO V_VAL
	VALUES (636,
	0,
	0,
	25,
	9,
	10,
	0,
	0,
	0,
	0,
	188,
	610);
INSERT INTO V_LIN
	VALUES (636,
	'15');
INSERT INTO V_PAR
	VALUES (636,
	615,
	0,
	'span',
	637,
	25,
	3);
INSERT INTO V_VAL
	VALUES (637,
	0,
	0,
	26,
	31,
	34,
	0,
	0,
	0,
	0,
	204,
	610);
INSERT INTO V_LEN
	VALUES (637,
	622,
	26,
	17);
INSERT INTO V_PAR
	VALUES (637,
	615,
	0,
	'criteriaType',
	638,
	26,
	3);
INSERT INTO V_VAL
	VALUES (638,
	0,
	0,
	27,
	23,
	26,
	0,
	0,
	0,
	0,
	207,
	610);
INSERT INTO V_LEN
	VALUES (638,
	632,
	27,
	13);
INSERT INTO V_PAR
	VALUES (638,
	615,
	0,
	'spanType',
	0,
	27,
	3);
INSERT INTO V_VAL
	VALUES (639,
	0,
	0,
	30,
	19,
	19,
	0,
	0,
	0,
	0,
	188,
	610);
INSERT INTO V_LIN
	VALUES (639,
	'4');
INSERT INTO V_PAR
	VALUES (639,
	616,
	0,
	'sequenceNumber',
	640,
	30,
	3);
INSERT INTO V_VAL
	VALUES (640,
	0,
	0,
	31,
	12,
	14,
	0,
	0,
	0,
	0,
	133,
	610);
INSERT INTO V_LRL
	VALUES (640,
	'1.0');
INSERT INTO V_PAR
	VALUES (640,
	616,
	0,
	'minimum',
	641,
	31,
	3);
INSERT INTO V_VAL
	VALUES (641,
	0,
	0,
	32,
	12,
	14,
	0,
	0,
	0,
	0,
	133,
	610);
INSERT INTO V_LRL
	VALUES (641,
	'2.0');
INSERT INTO V_PAR
	VALUES (641,
	616,
	0,
	'maximum',
	642,
	32,
	3);
INSERT INTO V_VAL
	VALUES (642,
	0,
	0,
	33,
	9,
	10,
	0,
	0,
	0,
	0,
	188,
	610);
INSERT INTO V_LIN
	VALUES (642,
	'15');
INSERT INTO V_PAR
	VALUES (642,
	616,
	0,
	'span',
	643,
	33,
	3);
INSERT INTO V_VAL
	VALUES (643,
	0,
	0,
	34,
	31,
	34,
	0,
	0,
	0,
	0,
	204,
	610);
INSERT INTO V_LEN
	VALUES (643,
	622,
	34,
	17);
INSERT INTO V_PAR
	VALUES (643,
	616,
	0,
	'criteriaType',
	644,
	34,
	3);
INSERT INTO V_VAL
	VALUES (644,
	0,
	0,
	35,
	23,
	26,
	0,
	0,
	0,
	0,
	207,
	610);
INSERT INTO V_LEN
	VALUES (644,
	632,
	35,
	13);
INSERT INTO V_PAR
	VALUES (644,
	616,
	0,
	'spanType',
	0,
	35,
	3);
INSERT INTO PE_PE
	VALUES (613,
	1,
	462,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (613,
	0,
	'Initialize',
	'',
	'// Create a workout session and everything required to support it.
WorkoutSession::create();',
	294,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (645,
	613);
INSERT INTO ACT_ACT
	VALUES (645,
	'function',
	0,
	646,
	0,
	0,
	'Initialize',
	0);
INSERT INTO ACT_BLK
	VALUES (646,
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
	645,
	0);
INSERT INTO ACT_SMT
	VALUES (647,
	646,
	0,
	2,
	1,
	'Initialize line: 2');
INSERT INTO ACT_TFM
	VALUES (647,
	404,
	0,
	2,
	17,
	2,
	1);
INSERT INTO PE_PE
	VALUES (501,
	1,
	462,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (501,
	'Achievement',
	10,
	'Achievement',
	'Each instance represents one contiguous period of time during 
which a particular goal was being met (achieved).',
	0);
INSERT INTO O_TFR
	VALUES (648,
	501,
	'close',
	'',
	294,
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
	VALUES (649,
	648);
INSERT INTO ACT_ACT
	VALUES (649,
	'operation',
	0,
	650,
	0,
	0,
	'Achievement::close',
	0);
INSERT INTO ACT_BLK
	VALUES (650,
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
	649,
	0);
INSERT INTO ACT_SMT
	VALUES (651,
	650,
	652,
	3,
	1,
	'Achievement::close line: 3');
INSERT INTO ACT_SEL
	VALUES (651,
	653,
	1,
	'one',
	654);
INSERT INTO ACT_SR
	VALUES (651);
INSERT INTO ACT_LNK
	VALUES (655,
	'''is open for''',
	651,
	506,
	0,
	2,
	492,
	3,
	34,
	3,
	39,
	3,
	43);
INSERT INTO ACT_SMT
	VALUES (652,
	650,
	656,
	4,
	1,
	'Achievement::close line: 4');
INSERT INTO ACT_SEL
	VALUES (652,
	657,
	1,
	'one',
	658);
INSERT INTO ACT_SR
	VALUES (652);
INSERT INTO ACT_LNK
	VALUES (659,
	'''is currently executing within''',
	652,
	496,
	660,
	2,
	349,
	5,
	9,
	5,
	24,
	5,
	28);
INSERT INTO ACT_LNK
	VALUES (660,
	'''is timed by''',
	0,
	480,
	0,
	2,
	364,
	5,
	62,
	5,
	75,
	5,
	78);
INSERT INTO ACT_SMT
	VALUES (656,
	650,
	661,
	6,
	3,
	'Achievement::close line: 6');
INSERT INTO ACT_AI
	VALUES (656,
	662,
	663,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (661,
	650,
	664,
	7,
	1,
	'Achievement::close line: 7');
INSERT INTO ACT_UNR
	VALUES (661,
	665,
	653,
	'''is open for''',
	506,
	7,
	32,
	7,
	36);
INSERT INTO ACT_SMT
	VALUES (664,
	650,
	0,
	8,
	1,
	'Achievement::close line: 8');
INSERT INTO ACT_REL
	VALUES (664,
	665,
	653,
	'''specifies achievement of''',
	499,
	8,
	28,
	8,
	32);
INSERT INTO V_VAL
	VALUES (654,
	0,
	0,
	3,
	28,
	31,
	0,
	0,
	0,
	0,
	300,
	650);
INSERT INTO V_IRF
	VALUES (654,
	665);
INSERT INTO V_VAL
	VALUES (658,
	0,
	0,
	5,
	3,
	6,
	0,
	0,
	0,
	0,
	300,
	650);
INSERT INTO V_IRF
	VALUES (658,
	653);
INSERT INTO V_VAL
	VALUES (666,
	1,
	0,
	6,
	3,
	6,
	0,
	0,
	0,
	0,
	300,
	650);
INSERT INTO V_IRF
	VALUES (666,
	665);
INSERT INTO V_VAL
	VALUES (663,
	1,
	0,
	6,
	8,
	14,
	0,
	0,
	0,
	0,
	188,
	650);
INSERT INTO V_AVL
	VALUES (663,
	666,
	501,
	667);
INSERT INTO V_VAL
	VALUES (668,
	0,
	0,
	6,
	18,
	29,
	0,
	0,
	0,
	0,
	300,
	650);
INSERT INTO V_IRF
	VALUES (668,
	657);
INSERT INTO V_VAL
	VALUES (662,
	0,
	0,
	6,
	31,
	34,
	0,
	0,
	0,
	0,
	188,
	650);
INSERT INTO V_AVL
	VALUES (662,
	668,
	364,
	669);
INSERT INTO V_VAR
	VALUES (653,
	650,
	'goal',
	1,
	300);
INSERT INTO V_INT
	VALUES (653,
	0,
	492);
INSERT INTO V_VAR
	VALUES (665,
	650,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (665,
	0,
	501);
INSERT INTO V_VAR
	VALUES (657,
	650,
	'workoutTimer',
	1,
	300);
INSERT INTO V_INT
	VALUES (657,
	0,
	364);
INSERT INTO O_NBATTR
	VALUES (670,
	501);
INSERT INTO O_BATTR
	VALUES (670,
	501);
INSERT INTO O_ATTR
	VALUES (670,
	501,
	0,
	'startTime',
	'Starting time for this achievement, expressed as the number of seconds
since the beginning of the associated workout session.',
	'',
	'startTime',
	0,
	188,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (667,
	501);
INSERT INTO O_BATTR
	VALUES (667,
	501);
INSERT INTO O_ATTR
	VALUES (667,
	501,
	670,
	'endTime',
	'Ending time for this achievement, expressed as the number of seconds
since the beginning of the associated workout session.',
	'',
	'endTime',
	0,
	188,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	501);
INSERT INTO O_ID
	VALUES (1,
	501);
INSERT INTO O_ID
	VALUES (2,
	501);
INSERT INTO PE_PE
	VALUES (392,
	1,
	462,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (392,
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
	VALUES (671,
	392,
	'goalDispositionIndicator',
	'',
	180,
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
	VALUES (672,
	671);
INSERT INTO ACT_ACT
	VALUES (672,
	'class operation',
	0,
	673,
	0,
	0,
	'Display::goalDispositionIndicator',
	0);
INSERT INTO ACT_BLK
	VALUES (673,
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
	672,
	0);
INSERT INTO ACT_SMT
	VALUES (674,
	673,
	675,
	7,
	1,
	'Display::goalDispositionIndicator line: 7');
INSERT INTO ACT_FIO
	VALUES (674,
	676,
	1,
	'any',
	349,
	7,
	38);
INSERT INTO ACT_SMT
	VALUES (675,
	673,
	677,
	8,
	1,
	'Display::goalDispositionIndicator line: 8');
INSERT INTO ACT_SEL
	VALUES (675,
	678,
	1,
	'one',
	679);
INSERT INTO ACT_SR
	VALUES (675);
INSERT INTO ACT_LNK
	VALUES (680,
	'''is currently executing''',
	675,
	496,
	0,
	2,
	492,
	8,
	37,
	8,
	42,
	8,
	46);
INSERT INTO ACT_SMT
	VALUES (677,
	673,
	681,
	12,
	1,
	'Display::goalDispositionIndicator line: 12');
INSERT INTO ACT_AI
	VALUES (677,
	682,
	683,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (681,
	673,
	684,
	13,
	1,
	'Display::goalDispositionIndicator line: 13');
INSERT INTO ACT_IF
	VALUES (681,
	685,
	686,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (684,
	673,
	0,
	23,
	1,
	'Display::goalDispositionIndicator line: 23');
INSERT INTO ACT_RET
	VALUES (684,
	687);
INSERT INTO V_VAL
	VALUES (679,
	0,
	0,
	8,
	28,
	34,
	0,
	0,
	0,
	0,
	300,
	673);
INSERT INTO V_IRF
	VALUES (679,
	676);
INSERT INTO V_VAL
	VALUES (683,
	1,
	1,
	12,
	1,
	9,
	0,
	0,
	0,
	0,
	180,
	673);
INSERT INTO V_TVL
	VALUES (683,
	688);
INSERT INTO V_VAL
	VALUES (682,
	0,
	0,
	12,
	24,
	28,
	0,
	0,
	0,
	0,
	180,
	673);
INSERT INTO V_LEN
	VALUES (682,
	689,
	12,
	13);
INSERT INTO V_VAL
	VALUES (690,
	0,
	0,
	13,
	16,
	19,
	0,
	0,
	0,
	0,
	300,
	673);
INSERT INTO V_IRF
	VALUES (690,
	678);
INSERT INTO V_VAL
	VALUES (691,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	673);
INSERT INTO V_UNY
	VALUES (691,
	690,
	'empty');
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
	295,
	673);
INSERT INTO V_UNY
	VALUES (686,
	691,
	'not');
INSERT INTO V_VAL
	VALUES (687,
	0,
	0,
	23,
	9,
	17,
	0,
	0,
	0,
	0,
	180,
	673);
INSERT INTO V_TVL
	VALUES (687,
	688);
INSERT INTO V_VAR
	VALUES (676,
	673,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (676,
	0,
	349);
INSERT INTO V_VAR
	VALUES (678,
	673,
	'goal',
	1,
	300);
INSERT INTO V_INT
	VALUES (678,
	0,
	492);
INSERT INTO V_VAR
	VALUES (688,
	673,
	'indicator',
	1,
	180);
INSERT INTO V_TRN
	VALUES (688,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (685,
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
	672,
	0);
INSERT INTO ACT_SMT
	VALUES (692,
	685,
	0,
	14,
	3,
	'Display::goalDispositionIndicator line: 14');
INSERT INTO ACT_IF
	VALUES (692,
	693,
	694,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (695,
	685,
	0,
	16,
	3,
	'Display::goalDispositionIndicator line: 16');
INSERT INTO ACT_EL
	VALUES (695,
	696,
	697,
	692);
INSERT INTO ACT_SMT
	VALUES (698,
	685,
	0,
	18,
	3,
	'Display::goalDispositionIndicator line: 18');
INSERT INTO ACT_E
	VALUES (698,
	699,
	692);
INSERT INTO V_VAL
	VALUES (700,
	0,
	0,
	14,
	8,
	11,
	0,
	0,
	0,
	0,
	300,
	685);
INSERT INTO V_IRF
	VALUES (700,
	678);
INSERT INTO V_VAL
	VALUES (701,
	0,
	0,
	14,
	13,
	23,
	0,
	0,
	0,
	0,
	702,
	685);
INSERT INTO V_AVL
	VALUES (701,
	700,
	492,
	703);
INSERT INTO V_VAL
	VALUES (694,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	685);
INSERT INTO V_BIN
	VALUES (694,
	704,
	701,
	'==');
INSERT INTO V_VAL
	VALUES (704,
	0,
	0,
	14,
	45,
	52,
	0,
	0,
	0,
	0,
	702,
	685);
INSERT INTO V_LEN
	VALUES (704,
	705,
	14,
	28);
INSERT INTO V_VAL
	VALUES (706,
	0,
	0,
	16,
	10,
	13,
	0,
	0,
	0,
	0,
	300,
	685);
INSERT INTO V_IRF
	VALUES (706,
	678);
INSERT INTO V_VAL
	VALUES (707,
	0,
	0,
	16,
	15,
	25,
	0,
	0,
	0,
	0,
	702,
	685);
INSERT INTO V_AVL
	VALUES (707,
	706,
	492,
	703);
INSERT INTO V_VAL
	VALUES (697,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	685);
INSERT INTO V_BIN
	VALUES (697,
	708,
	707,
	'==');
INSERT INTO V_VAL
	VALUES (708,
	0,
	0,
	16,
	47,
	54,
	0,
	0,
	0,
	0,
	702,
	685);
INSERT INTO V_LEN
	VALUES (708,
	709,
	16,
	30);
INSERT INTO ACT_BLK
	VALUES (693,
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
	672,
	0);
INSERT INTO ACT_SMT
	VALUES (710,
	693,
	0,
	15,
	5,
	'Display::goalDispositionIndicator line: 15');
INSERT INTO ACT_AI
	VALUES (710,
	711,
	712,
	0,
	0);
INSERT INTO V_VAL
	VALUES (712,
	1,
	0,
	15,
	5,
	13,
	0,
	0,
	0,
	0,
	180,
	693);
INSERT INTO V_TVL
	VALUES (712,
	688);
INSERT INTO V_VAL
	VALUES (711,
	0,
	0,
	15,
	28,
	29,
	0,
	0,
	0,
	0,
	180,
	693);
INSERT INTO V_LEN
	VALUES (711,
	713,
	15,
	17);
INSERT INTO ACT_BLK
	VALUES (696,
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
	672,
	0);
INSERT INTO ACT_SMT
	VALUES (714,
	696,
	0,
	17,
	5,
	'Display::goalDispositionIndicator line: 17');
INSERT INTO ACT_AI
	VALUES (714,
	715,
	716,
	0,
	0);
INSERT INTO V_VAL
	VALUES (716,
	1,
	0,
	17,
	5,
	13,
	0,
	0,
	0,
	0,
	180,
	696);
INSERT INTO V_TVL
	VALUES (716,
	688);
INSERT INTO V_VAL
	VALUES (715,
	0,
	0,
	17,
	28,
	31,
	0,
	0,
	0,
	0,
	180,
	696);
INSERT INTO V_LEN
	VALUES (715,
	717,
	17,
	17);
INSERT INTO ACT_BLK
	VALUES (699,
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
	672,
	0);
INSERT INTO ACT_SMT
	VALUES (718,
	699,
	0,
	19,
	5,
	'Display::goalDispositionIndicator line: 19');
INSERT INTO ACT_AI
	VALUES (718,
	719,
	720,
	0,
	0);
INSERT INTO V_VAL
	VALUES (720,
	1,
	0,
	19,
	5,
	13,
	0,
	0,
	0,
	0,
	180,
	699);
INSERT INTO V_TVL
	VALUES (720,
	688);
INSERT INTO V_VAL
	VALUES (719,
	0,
	0,
	19,
	28,
	31,
	0,
	0,
	0,
	0,
	180,
	699);
INSERT INTO V_LEN
	VALUES (719,
	721,
	19,
	17);
INSERT INTO O_NBATTR
	VALUES (722,
	392);
INSERT INTO O_BATTR
	VALUES (722,
	392);
INSERT INTO O_ATTR
	VALUES (722,
	392,
	0,
	'current_state',
	'',
	'',
	'current_state',
	0,
	298,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	392);
INSERT INTO O_ID
	VALUES (1,
	392);
INSERT INTO O_ID
	VALUES (2,
	392);
INSERT INTO SM_ISM
	VALUES (723,
	392);
INSERT INTO SM_SM
	VALUES (723,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (723);
INSERT INTO SM_LEVT
	VALUES (393,
	723,
	0);
INSERT INTO SM_SEVT
	VALUES (393,
	723,
	0);
INSERT INTO SM_EVT
	VALUES (393,
	723,
	0,
	1,
	'modeChange',
	0,
	'',
	'Display1',
	'');
INSERT INTO SM_LEVT
	VALUES (724,
	723,
	0);
INSERT INTO SM_SEVT
	VALUES (724,
	723,
	0);
INSERT INTO SM_EVT
	VALUES (724,
	723,
	0,
	2,
	'refresh',
	0,
	'',
	'Display2',
	'');
INSERT INTO SM_STATE
	VALUES (725,
	723,
	0,
	'displayDistance',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (725,
	393,
	723,
	0);
INSERT INTO SM_SEME
	VALUES (725,
	724,
	723,
	0);
INSERT INTO SM_MOAH
	VALUES (726,
	723,
	725);
INSERT INTO SM_AH
	VALUES (726,
	723);
INSERT INTO SM_ACT
	VALUES (726,
	723,
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
	VALUES (727,
	723,
	726);
INSERT INTO ACT_ACT
	VALUES (727,
	'state',
	0,
	728,
	0,
	0,
	'Display::displayDistance',
	0);
INSERT INTO ACT_BLK
	VALUES (728,
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
	727,
	0);
INSERT INTO ACT_SMT
	VALUES (729,
	728,
	730,
	1,
	1,
	'Display::displayDistance line: 1');
INSERT INTO ACT_SEL
	VALUES (729,
	731,
	1,
	'one',
	732);
INSERT INTO ACT_SR
	VALUES (729);
INSERT INTO ACT_LNK
	VALUES (733,
	'''indicates current status of''',
	729,
	391,
	0,
	2,
	349,
	1,
	37,
	1,
	52,
	1,
	55);
INSERT INTO ACT_SMT
	VALUES (730,
	728,
	734,
	2,
	1,
	'Display::displayDistance line: 2');
INSERT INTO ACT_AI
	VALUES (730,
	735,
	736,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (734,
	728,
	737,
	3,
	1,
	'Display::displayDistance line: 3');
INSERT INTO ACT_IF
	VALUES (734,
	738,
	739,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (740,
	728,
	0,
	5,
	1,
	'Display::displayDistance line: 5');
INSERT INTO ACT_E
	VALUES (740,
	741,
	734);
INSERT INTO ACT_SMT
	VALUES (737,
	728,
	0,
	8,
	1,
	'Display::displayDistance line: 8');
INSERT INTO ACT_IOP
	VALUES (737,
	8,
	10,
	8,
	6,
	0,
	328,
	0);
INSERT INTO V_VAL
	VALUES (732,
	0,
	0,
	1,
	31,
	34,
	0,
	0,
	0,
	0,
	300,
	728);
INSERT INTO V_IRF
	VALUES (732,
	742);
INSERT INTO V_VAL
	VALUES (736,
	1,
	1,
	2,
	1,
	8,
	0,
	0,
	0,
	0,
	133,
	728);
INSERT INTO V_TVL
	VALUES (736,
	743);
INSERT INTO V_VAL
	VALUES (744,
	0,
	0,
	2,
	12,
	18,
	0,
	0,
	0,
	0,
	300,
	728);
INSERT INTO V_IRF
	VALUES (744,
	731);
INSERT INTO V_VAL
	VALUES (735,
	0,
	0,
	2,
	20,
	38,
	0,
	0,
	0,
	0,
	133,
	728);
INSERT INTO V_AVL
	VALUES (735,
	744,
	349,
	745);
INSERT INTO V_VAL
	VALUES (746,
	0,
	0,
	3,
	6,
	13,
	0,
	0,
	0,
	0,
	133,
	728);
INSERT INTO V_TVL
	VALUES (746,
	743);
INSERT INTO V_VAL
	VALUES (739,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	728);
INSERT INTO V_BIN
	VALUES (739,
	747,
	746,
	'>');
INSERT INTO V_VAL
	VALUES (747,
	0,
	0,
	3,
	17,
	22,
	0,
	0,
	0,
	0,
	133,
	728);
INSERT INTO V_LRL
	VALUES (747,
	'1000.0');
INSERT INTO V_VAL
	VALUES (748,
	0,
	0,
	8,
	44,
	-1,
	0,
	0,
	0,
	0,
	180,
	728);
INSERT INTO V_TRV
	VALUES (748,
	671,
	0,
	1,
	8,
	35);
INSERT INTO V_PAR
	VALUES (748,
	737,
	0,
	'indicator',
	0,
	8,
	24);
INSERT INTO V_VAR
	VALUES (731,
	728,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (731,
	0,
	349);
INSERT INTO V_VAR
	VALUES (742,
	728,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (742,
	0,
	392);
INSERT INTO V_VAR
	VALUES (743,
	728,
	'distance',
	1,
	133);
INSERT INTO V_TRN
	VALUES (743,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (738,
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
	727,
	0);
INSERT INTO ACT_SMT
	VALUES (749,
	738,
	0,
	4,
	3,
	'Display::displayDistance line: 4');
INSERT INTO ACT_IOP
	VALUES (749,
	4,
	12,
	4,
	8,
	0,
	325,
	0);
INSERT INTO V_VAL
	VALUES (750,
	0,
	0,
	4,
	27,
	34,
	0,
	0,
	0,
	0,
	133,
	738);
INSERT INTO V_TVL
	VALUES (750,
	743);
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
	133,
	738);
INSERT INTO V_BIN
	VALUES (751,
	752,
	750,
	'/');
INSERT INTO V_PAR
	VALUES (751,
	749,
	0,
	'value',
	753,
	4,
	20);
INSERT INTO V_VAL
	VALUES (752,
	0,
	0,
	4,
	38,
	43,
	0,
	0,
	0,
	0,
	133,
	738);
INSERT INTO V_LRL
	VALUES (752,
	'1000.0');
INSERT INTO V_VAL
	VALUES (753,
	0,
	0,
	4,
	58,
	59,
	0,
	0,
	0,
	0,
	172,
	738);
INSERT INTO V_LEN
	VALUES (753,
	754,
	4,
	52);
INSERT INTO V_PAR
	VALUES (753,
	749,
	0,
	'unit',
	0,
	4,
	46);
INSERT INTO ACT_BLK
	VALUES (741,
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
	727,
	0);
INSERT INTO ACT_SMT
	VALUES (755,
	741,
	0,
	6,
	3,
	'Display::displayDistance line: 6');
INSERT INTO ACT_IOP
	VALUES (755,
	6,
	12,
	6,
	8,
	0,
	325,
	0);
INSERT INTO V_VAL
	VALUES (756,
	0,
	0,
	6,
	27,
	34,
	0,
	0,
	0,
	0,
	133,
	741);
INSERT INTO V_TVL
	VALUES (756,
	743);
INSERT INTO V_PAR
	VALUES (756,
	755,
	0,
	'value',
	757,
	6,
	20);
INSERT INTO V_VAL
	VALUES (757,
	0,
	0,
	6,
	49,
	54,
	0,
	0,
	0,
	0,
	172,
	741);
INSERT INTO V_LEN
	VALUES (757,
	758,
	6,
	43);
INSERT INTO V_PAR
	VALUES (757,
	755,
	0,
	'unit',
	0,
	6,
	37);
INSERT INTO SM_STATE
	VALUES (759,
	723,
	0,
	'displaySpeed',
	2,
	0);
INSERT INTO SM_SEME
	VALUES (759,
	393,
	723,
	0);
INSERT INTO SM_SEME
	VALUES (759,
	724,
	723,
	0);
INSERT INTO SM_MOAH
	VALUES (760,
	723,
	759);
INSERT INTO SM_AH
	VALUES (760,
	723);
INSERT INTO SM_ACT
	VALUES (760,
	723,
	1,
	'select one session 
  related by self->WorkoutSession[R7.''indicates current status of''];
speed = session.currentSpeed;
send UI::setData(value: speed, unit: Unit::kmPerHour);
send UI::setIndicator( indicator: Display::goalDispositionIndicator() );',
	'');
INSERT INTO ACT_SAB
	VALUES (761,
	723,
	760);
INSERT INTO ACT_ACT
	VALUES (761,
	'state',
	0,
	762,
	0,
	0,
	'Display::displaySpeed',
	0);
INSERT INTO ACT_BLK
	VALUES (762,
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
	761,
	0);
INSERT INTO ACT_SMT
	VALUES (763,
	762,
	764,
	1,
	1,
	'Display::displaySpeed line: 1');
INSERT INTO ACT_SEL
	VALUES (763,
	765,
	1,
	'one',
	766);
INSERT INTO ACT_SR
	VALUES (763);
INSERT INTO ACT_LNK
	VALUES (767,
	'''indicates current status of''',
	763,
	391,
	0,
	2,
	349,
	2,
	20,
	2,
	35,
	2,
	38);
INSERT INTO ACT_SMT
	VALUES (764,
	762,
	768,
	3,
	1,
	'Display::displaySpeed line: 3');
INSERT INTO ACT_AI
	VALUES (764,
	769,
	770,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (768,
	762,
	771,
	4,
	1,
	'Display::displaySpeed line: 4');
INSERT INTO ACT_IOP
	VALUES (768,
	4,
	10,
	4,
	6,
	0,
	325,
	0);
INSERT INTO ACT_SMT
	VALUES (771,
	762,
	0,
	5,
	1,
	'Display::displaySpeed line: 5');
INSERT INTO ACT_IOP
	VALUES (771,
	5,
	10,
	5,
	6,
	0,
	328,
	0);
INSERT INTO V_VAL
	VALUES (766,
	0,
	0,
	2,
	14,
	17,
	0,
	0,
	0,
	0,
	300,
	762);
INSERT INTO V_IRF
	VALUES (766,
	772);
INSERT INTO V_VAL
	VALUES (770,
	1,
	1,
	3,
	1,
	5,
	0,
	0,
	0,
	0,
	133,
	762);
INSERT INTO V_TVL
	VALUES (770,
	773);
INSERT INTO V_VAL
	VALUES (774,
	0,
	0,
	3,
	9,
	15,
	0,
	0,
	0,
	0,
	300,
	762);
INSERT INTO V_IRF
	VALUES (774,
	765);
INSERT INTO V_VAL
	VALUES (769,
	0,
	0,
	3,
	17,
	28,
	0,
	0,
	0,
	0,
	133,
	762);
INSERT INTO V_AVL
	VALUES (769,
	774,
	349,
	775);
INSERT INTO V_VAL
	VALUES (776,
	0,
	0,
	4,
	25,
	29,
	0,
	0,
	0,
	0,
	133,
	762);
INSERT INTO V_TVL
	VALUES (776,
	773);
INSERT INTO V_PAR
	VALUES (776,
	768,
	0,
	'value',
	777,
	4,
	18);
INSERT INTO V_VAL
	VALUES (777,
	0,
	0,
	4,
	44,
	52,
	0,
	0,
	0,
	0,
	172,
	762);
INSERT INTO V_LEN
	VALUES (777,
	778,
	4,
	38);
INSERT INTO V_PAR
	VALUES (777,
	768,
	0,
	'unit',
	0,
	4,
	32);
INSERT INTO V_VAL
	VALUES (779,
	0,
	0,
	5,
	44,
	-1,
	0,
	0,
	0,
	0,
	180,
	762);
INSERT INTO V_TRV
	VALUES (779,
	671,
	0,
	1,
	5,
	35);
INSERT INTO V_PAR
	VALUES (779,
	771,
	0,
	'indicator',
	0,
	5,
	24);
INSERT INTO V_VAR
	VALUES (765,
	762,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (765,
	0,
	349);
INSERT INTO V_VAR
	VALUES (772,
	762,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (772,
	0,
	392);
INSERT INTO V_VAR
	VALUES (773,
	762,
	'speed',
	1,
	133);
INSERT INTO V_TRN
	VALUES (773,
	0,
	'');
INSERT INTO SM_STATE
	VALUES (780,
	723,
	0,
	'displayPace',
	3,
	0);
INSERT INTO SM_SEME
	VALUES (780,
	393,
	723,
	0);
INSERT INTO SM_SEME
	VALUES (780,
	724,
	723,
	0);
INSERT INTO SM_MOAH
	VALUES (781,
	723,
	780);
INSERT INTO SM_AH
	VALUES (781,
	723);
INSERT INTO SM_ACT
	VALUES (781,
	723,
	1,
	'select one session 
  related by self->WorkoutSession[R7.''indicates current status of''];
pace = session.currentPace;
send UI::setData(value: pace, unit: Unit::minPerKm);
send UI::setIndicator( indicator: Display::goalDispositionIndicator() );',
	'');
INSERT INTO ACT_SAB
	VALUES (782,
	723,
	781);
INSERT INTO ACT_ACT
	VALUES (782,
	'state',
	0,
	783,
	0,
	0,
	'Display::displayPace',
	0);
INSERT INTO ACT_BLK
	VALUES (783,
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
	782,
	0);
INSERT INTO ACT_SMT
	VALUES (784,
	783,
	785,
	1,
	1,
	'Display::displayPace line: 1');
INSERT INTO ACT_SEL
	VALUES (784,
	786,
	1,
	'one',
	787);
INSERT INTO ACT_SR
	VALUES (784);
INSERT INTO ACT_LNK
	VALUES (788,
	'''indicates current status of''',
	784,
	391,
	0,
	2,
	349,
	2,
	20,
	2,
	35,
	2,
	38);
INSERT INTO ACT_SMT
	VALUES (785,
	783,
	789,
	3,
	1,
	'Display::displayPace line: 3');
INSERT INTO ACT_AI
	VALUES (785,
	790,
	791,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (789,
	783,
	792,
	4,
	1,
	'Display::displayPace line: 4');
INSERT INTO ACT_IOP
	VALUES (789,
	4,
	10,
	4,
	6,
	0,
	325,
	0);
INSERT INTO ACT_SMT
	VALUES (792,
	783,
	0,
	5,
	1,
	'Display::displayPace line: 5');
INSERT INTO ACT_IOP
	VALUES (792,
	5,
	10,
	5,
	6,
	0,
	328,
	0);
INSERT INTO V_VAL
	VALUES (787,
	0,
	0,
	2,
	14,
	17,
	0,
	0,
	0,
	0,
	300,
	783);
INSERT INTO V_IRF
	VALUES (787,
	793);
INSERT INTO V_VAL
	VALUES (791,
	1,
	1,
	3,
	1,
	4,
	0,
	0,
	0,
	0,
	133,
	783);
INSERT INTO V_TVL
	VALUES (791,
	794);
INSERT INTO V_VAL
	VALUES (795,
	0,
	0,
	3,
	8,
	14,
	0,
	0,
	0,
	0,
	300,
	783);
INSERT INTO V_IRF
	VALUES (795,
	786);
INSERT INTO V_VAL
	VALUES (790,
	0,
	0,
	3,
	16,
	26,
	0,
	0,
	0,
	0,
	133,
	783);
INSERT INTO V_AVL
	VALUES (790,
	795,
	349,
	796);
INSERT INTO V_VAL
	VALUES (797,
	0,
	0,
	4,
	25,
	28,
	0,
	0,
	0,
	0,
	133,
	783);
INSERT INTO V_TVL
	VALUES (797,
	794);
INSERT INTO V_PAR
	VALUES (797,
	789,
	0,
	'value',
	798,
	4,
	18);
INSERT INTO V_VAL
	VALUES (798,
	0,
	0,
	4,
	43,
	50,
	0,
	0,
	0,
	0,
	172,
	783);
INSERT INTO V_LEN
	VALUES (798,
	799,
	4,
	37);
INSERT INTO V_PAR
	VALUES (798,
	789,
	0,
	'unit',
	0,
	4,
	31);
INSERT INTO V_VAL
	VALUES (800,
	0,
	0,
	5,
	44,
	-1,
	0,
	0,
	0,
	0,
	180,
	783);
INSERT INTO V_TRV
	VALUES (800,
	671,
	0,
	1,
	5,
	35);
INSERT INTO V_PAR
	VALUES (800,
	792,
	0,
	'indicator',
	0,
	5,
	24);
INSERT INTO V_VAR
	VALUES (786,
	783,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (786,
	0,
	349);
INSERT INTO V_VAR
	VALUES (793,
	783,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (793,
	0,
	392);
INSERT INTO V_VAR
	VALUES (794,
	783,
	'pace',
	1,
	133);
INSERT INTO V_TRN
	VALUES (794,
	0,
	'');
INSERT INTO SM_STATE
	VALUES (801,
	723,
	0,
	'displayHeartRate',
	4,
	0);
INSERT INTO SM_SEME
	VALUES (801,
	393,
	723,
	0);
INSERT INTO SM_SEME
	VALUES (801,
	724,
	723,
	0);
INSERT INTO SM_MOAH
	VALUES (802,
	723,
	801);
INSERT INTO SM_AH
	VALUES (802,
	723);
INSERT INTO SM_ACT
	VALUES (802,
	723,
	1,
	'select one session 
  related by self->WorkoutSession[R7.''indicates current status of''];
heartRate = session.currentHeartRate;
send UI::setData(value: heartRate, unit: Unit::bpm);
send UI::setIndicator( indicator: Display::goalDispositionIndicator() );
',
	'');
INSERT INTO ACT_SAB
	VALUES (803,
	723,
	802);
INSERT INTO ACT_ACT
	VALUES (803,
	'state',
	0,
	804,
	0,
	0,
	'Display::displayHeartRate',
	0);
INSERT INTO ACT_BLK
	VALUES (804,
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
	803,
	0);
INSERT INTO ACT_SMT
	VALUES (805,
	804,
	806,
	1,
	1,
	'Display::displayHeartRate line: 1');
INSERT INTO ACT_SEL
	VALUES (805,
	807,
	1,
	'one',
	808);
INSERT INTO ACT_SR
	VALUES (805);
INSERT INTO ACT_LNK
	VALUES (809,
	'''indicates current status of''',
	805,
	391,
	0,
	2,
	349,
	2,
	20,
	2,
	35,
	2,
	38);
INSERT INTO ACT_SMT
	VALUES (806,
	804,
	810,
	3,
	1,
	'Display::displayHeartRate line: 3');
INSERT INTO ACT_AI
	VALUES (806,
	811,
	812,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (810,
	804,
	813,
	4,
	1,
	'Display::displayHeartRate line: 4');
INSERT INTO ACT_IOP
	VALUES (810,
	4,
	10,
	4,
	6,
	0,
	325,
	0);
INSERT INTO ACT_SMT
	VALUES (813,
	804,
	0,
	5,
	1,
	'Display::displayHeartRate line: 5');
INSERT INTO ACT_IOP
	VALUES (813,
	5,
	10,
	5,
	6,
	0,
	328,
	0);
INSERT INTO V_VAL
	VALUES (808,
	0,
	0,
	2,
	14,
	17,
	0,
	0,
	0,
	0,
	300,
	804);
INSERT INTO V_IRF
	VALUES (808,
	814);
INSERT INTO V_VAL
	VALUES (812,
	1,
	1,
	3,
	1,
	9,
	0,
	0,
	0,
	0,
	188,
	804);
INSERT INTO V_TVL
	VALUES (812,
	815);
INSERT INTO V_VAL
	VALUES (816,
	0,
	0,
	3,
	13,
	19,
	0,
	0,
	0,
	0,
	300,
	804);
INSERT INTO V_IRF
	VALUES (816,
	807);
INSERT INTO V_VAL
	VALUES (811,
	0,
	0,
	3,
	21,
	36,
	0,
	0,
	0,
	0,
	188,
	804);
INSERT INTO V_AVL
	VALUES (811,
	816,
	349,
	817);
INSERT INTO V_VAL
	VALUES (818,
	0,
	0,
	4,
	25,
	33,
	0,
	0,
	0,
	0,
	188,
	804);
INSERT INTO V_TVL
	VALUES (818,
	815);
INSERT INTO V_PAR
	VALUES (818,
	810,
	0,
	'value',
	819,
	4,
	18);
INSERT INTO V_VAL
	VALUES (819,
	0,
	0,
	4,
	48,
	50,
	0,
	0,
	0,
	0,
	172,
	804);
INSERT INTO V_LEN
	VALUES (819,
	820,
	4,
	42);
INSERT INTO V_PAR
	VALUES (819,
	810,
	0,
	'unit',
	0,
	4,
	36);
INSERT INTO V_VAL
	VALUES (821,
	0,
	0,
	5,
	44,
	-1,
	0,
	0,
	0,
	0,
	180,
	804);
INSERT INTO V_TRV
	VALUES (821,
	671,
	0,
	1,
	5,
	35);
INSERT INTO V_PAR
	VALUES (821,
	813,
	0,
	'indicator',
	0,
	5,
	24);
INSERT INTO V_VAR
	VALUES (807,
	804,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (807,
	0,
	349);
INSERT INTO V_VAR
	VALUES (814,
	804,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (814,
	0,
	392);
INSERT INTO V_VAR
	VALUES (815,
	804,
	'heartRate',
	1,
	188);
INSERT INTO V_TRN
	VALUES (815,
	0,
	'');
INSERT INTO SM_STATE
	VALUES (822,
	723,
	0,
	'displayLapCount',
	5,
	0);
INSERT INTO SM_SEME
	VALUES (822,
	393,
	723,
	0);
INSERT INTO SM_SEME
	VALUES (822,
	724,
	723,
	0);
INSERT INTO SM_MOAH
	VALUES (823,
	723,
	822);
INSERT INTO SM_AH
	VALUES (823,
	723);
INSERT INTO SM_ACT
	VALUES (823,
	723,
	1,
	'select many lapMarkers related by
  self->WorkoutSession[R7.''indicates current status of'']->
  TrackLog[R4.''captures path in'']->LapMarker[R5.''has laps defined by''];
send UI::setData(value: cardinality lapMarkers, unit: Unit::laps);
send UI::setIndicator( indicator: Display::goalDispositionIndicator() );
',
	'');
INSERT INTO ACT_SAB
	VALUES (824,
	723,
	823);
INSERT INTO ACT_ACT
	VALUES (824,
	'state',
	0,
	825,
	0,
	0,
	'Display::displayLapCount',
	0);
INSERT INTO ACT_BLK
	VALUES (825,
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
	824,
	0);
INSERT INTO ACT_SMT
	VALUES (826,
	825,
	827,
	1,
	1,
	'Display::displayLapCount line: 1');
INSERT INTO ACT_SEL
	VALUES (826,
	828,
	1,
	'many',
	829);
INSERT INTO ACT_SR
	VALUES (826);
INSERT INTO ACT_LNK
	VALUES (830,
	'''indicates current status of''',
	826,
	391,
	831,
	2,
	349,
	2,
	9,
	2,
	24,
	2,
	27);
INSERT INTO ACT_LNK
	VALUES (831,
	'''captures path in''',
	0,
	483,
	832,
	2,
	464,
	3,
	3,
	3,
	12,
	3,
	15);
INSERT INTO ACT_LNK
	VALUES (832,
	'''has laps defined by''',
	0,
	474,
	0,
	3,
	475,
	3,
	36,
	3,
	46,
	3,
	49);
INSERT INTO ACT_SMT
	VALUES (827,
	825,
	833,
	4,
	1,
	'Display::displayLapCount line: 4');
INSERT INTO ACT_IOP
	VALUES (827,
	4,
	10,
	4,
	6,
	0,
	325,
	0);
INSERT INTO ACT_SMT
	VALUES (833,
	825,
	0,
	5,
	1,
	'Display::displayLapCount line: 5');
INSERT INTO ACT_IOP
	VALUES (833,
	5,
	10,
	5,
	6,
	0,
	328,
	0);
INSERT INTO V_VAL
	VALUES (829,
	0,
	0,
	2,
	3,
	6,
	0,
	0,
	0,
	0,
	300,
	825);
INSERT INTO V_IRF
	VALUES (829,
	834);
INSERT INTO V_VAL
	VALUES (835,
	0,
	0,
	4,
	37,
	46,
	0,
	0,
	0,
	0,
	301,
	825);
INSERT INTO V_ISR
	VALUES (835,
	828);
INSERT INTO V_VAL
	VALUES (836,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	188,
	825);
INSERT INTO V_UNY
	VALUES (836,
	835,
	'cardinality');
INSERT INTO V_PAR
	VALUES (836,
	827,
	0,
	'value',
	837,
	4,
	18);
INSERT INTO V_VAL
	VALUES (837,
	0,
	0,
	4,
	61,
	64,
	0,
	0,
	0,
	0,
	172,
	825);
INSERT INTO V_LEN
	VALUES (837,
	838,
	4,
	55);
INSERT INTO V_PAR
	VALUES (837,
	827,
	0,
	'unit',
	0,
	4,
	49);
INSERT INTO V_VAL
	VALUES (839,
	0,
	0,
	5,
	44,
	-1,
	0,
	0,
	0,
	0,
	180,
	825);
INSERT INTO V_TRV
	VALUES (839,
	671,
	0,
	1,
	5,
	35);
INSERT INTO V_PAR
	VALUES (839,
	833,
	0,
	'indicator',
	0,
	5,
	24);
INSERT INTO V_VAR
	VALUES (828,
	825,
	'lapMarkers',
	1,
	301);
INSERT INTO V_INS
	VALUES (828,
	475);
INSERT INTO V_VAR
	VALUES (834,
	825,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (834,
	0,
	392);
INSERT INTO SM_NSTXN
	VALUES (840,
	723,
	725,
	393,
	0);
INSERT INTO SM_TAH
	VALUES (841,
	723,
	840);
INSERT INTO SM_AH
	VALUES (841,
	723);
INSERT INTO SM_ACT
	VALUES (841,
	723,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (842,
	723,
	841);
INSERT INTO ACT_ACT
	VALUES (842,
	'transition',
	0,
	843,
	0,
	0,
	'Display1: modeChange',
	0);
INSERT INTO ACT_BLK
	VALUES (843,
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
	842,
	0);
INSERT INTO SM_TXN
	VALUES (840,
	723,
	759,
	0);
INSERT INTO SM_NSTXN
	VALUES (844,
	723,
	759,
	393,
	0);
INSERT INTO SM_TAH
	VALUES (845,
	723,
	844);
INSERT INTO SM_AH
	VALUES (845,
	723);
INSERT INTO SM_ACT
	VALUES (845,
	723,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (846,
	723,
	845);
INSERT INTO ACT_ACT
	VALUES (846,
	'transition',
	0,
	847,
	0,
	0,
	'Display1: modeChange',
	0);
INSERT INTO ACT_BLK
	VALUES (847,
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
	846,
	0);
INSERT INTO SM_TXN
	VALUES (844,
	723,
	780,
	0);
INSERT INTO SM_NSTXN
	VALUES (848,
	723,
	780,
	393,
	0);
INSERT INTO SM_TAH
	VALUES (849,
	723,
	848);
INSERT INTO SM_AH
	VALUES (849,
	723);
INSERT INTO SM_ACT
	VALUES (849,
	723,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (850,
	723,
	849);
INSERT INTO ACT_ACT
	VALUES (850,
	'transition',
	0,
	851,
	0,
	0,
	'Display1: modeChange',
	0);
INSERT INTO ACT_BLK
	VALUES (851,
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
	850,
	0);
INSERT INTO SM_TXN
	VALUES (848,
	723,
	801,
	0);
INSERT INTO SM_NSTXN
	VALUES (852,
	723,
	801,
	393,
	0);
INSERT INTO SM_TAH
	VALUES (853,
	723,
	852);
INSERT INTO SM_AH
	VALUES (853,
	723);
INSERT INTO SM_ACT
	VALUES (853,
	723,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (854,
	723,
	853);
INSERT INTO ACT_ACT
	VALUES (854,
	'transition',
	0,
	855,
	0,
	0,
	'Display1: modeChange',
	0);
INSERT INTO ACT_BLK
	VALUES (855,
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
	854,
	0);
INSERT INTO SM_TXN
	VALUES (852,
	723,
	822,
	0);
INSERT INTO SM_NSTXN
	VALUES (856,
	723,
	725,
	724,
	0);
INSERT INTO SM_TAH
	VALUES (857,
	723,
	856);
INSERT INTO SM_AH
	VALUES (857,
	723);
INSERT INTO SM_ACT
	VALUES (857,
	723,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (858,
	723,
	857);
INSERT INTO ACT_ACT
	VALUES (858,
	'transition',
	0,
	859,
	0,
	0,
	'Display2: refresh',
	0);
INSERT INTO ACT_BLK
	VALUES (859,
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
	858,
	0);
INSERT INTO SM_TXN
	VALUES (856,
	723,
	725,
	0);
INSERT INTO SM_NSTXN
	VALUES (860,
	723,
	759,
	724,
	0);
INSERT INTO SM_TAH
	VALUES (861,
	723,
	860);
INSERT INTO SM_AH
	VALUES (861,
	723);
INSERT INTO SM_ACT
	VALUES (861,
	723,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (862,
	723,
	861);
INSERT INTO ACT_ACT
	VALUES (862,
	'transition',
	0,
	863,
	0,
	0,
	'Display2: refresh',
	0);
INSERT INTO ACT_BLK
	VALUES (863,
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
	862,
	0);
INSERT INTO SM_TXN
	VALUES (860,
	723,
	759,
	0);
INSERT INTO SM_NSTXN
	VALUES (864,
	723,
	801,
	724,
	0);
INSERT INTO SM_TAH
	VALUES (865,
	723,
	864);
INSERT INTO SM_AH
	VALUES (865,
	723);
INSERT INTO SM_ACT
	VALUES (865,
	723,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (866,
	723,
	865);
INSERT INTO ACT_ACT
	VALUES (866,
	'transition',
	0,
	867,
	0,
	0,
	'Display2: refresh',
	0);
INSERT INTO ACT_BLK
	VALUES (867,
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
	866,
	0);
INSERT INTO SM_TXN
	VALUES (864,
	723,
	801,
	0);
INSERT INTO SM_NSTXN
	VALUES (868,
	723,
	822,
	724,
	0);
INSERT INTO SM_TAH
	VALUES (869,
	723,
	868);
INSERT INTO SM_AH
	VALUES (869,
	723);
INSERT INTO SM_ACT
	VALUES (869,
	723,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (870,
	723,
	869);
INSERT INTO ACT_ACT
	VALUES (870,
	'transition',
	0,
	871,
	0,
	0,
	'Display2: refresh',
	0);
INSERT INTO ACT_BLK
	VALUES (871,
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
	870,
	0);
INSERT INTO SM_TXN
	VALUES (868,
	723,
	822,
	0);
INSERT INTO SM_NSTXN
	VALUES (872,
	723,
	780,
	724,
	0);
INSERT INTO SM_TAH
	VALUES (873,
	723,
	872);
INSERT INTO SM_AH
	VALUES (873,
	723);
INSERT INTO SM_ACT
	VALUES (873,
	723,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (874,
	723,
	873);
INSERT INTO ACT_ACT
	VALUES (874,
	'transition',
	0,
	875,
	0,
	0,
	'Display2: refresh',
	0);
INSERT INTO ACT_BLK
	VALUES (875,
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
	874,
	0);
INSERT INTO SM_TXN
	VALUES (872,
	723,
	780,
	0);
INSERT INTO SM_NSTXN
	VALUES (876,
	723,
	822,
	393,
	0);
INSERT INTO SM_TAH
	VALUES (877,
	723,
	876);
INSERT INTO SM_AH
	VALUES (877,
	723);
INSERT INTO SM_ACT
	VALUES (877,
	723,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (878,
	723,
	877);
INSERT INTO ACT_ACT
	VALUES (878,
	'transition',
	0,
	879,
	0,
	0,
	'Display1: modeChange',
	0);
INSERT INTO ACT_BLK
	VALUES (879,
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
	878,
	0);
INSERT INTO SM_TXN
	VALUES (876,
	723,
	725,
	0);
INSERT INTO PE_PE
	VALUES (492,
	1,
	462,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (492,
	'Goal',
	9,
	'Goal',
	'Each instance represents a particular goal as it is executing.
This class knows how to evaluate whether the goal is being achieved 
and whether the goal has completed.',
	0);
INSERT INTO O_TFR
	VALUES (880,
	492,
	'create',
	'',
	294,
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
	VALUES (881,
	880,
	'sequenceNumber',
	188,
	0,
	'',
	0,
	'Sequence number of the goal specification for which an instance of a goal should be created.');
INSERT INTO ACT_OPB
	VALUES (882,
	880);
INSERT INTO ACT_ACT
	VALUES (882,
	'class operation',
	0,
	883,
	0,
	0,
	'Goal::create',
	0);
INSERT INTO ACT_BLK
	VALUES (883,
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
	882,
	0);
INSERT INTO ACT_SMT
	VALUES (884,
	883,
	885,
	8,
	1,
	'Goal::create line: 8');
INSERT INTO ACT_FIW
	VALUES (884,
	886,
	1,
	'any',
	887,
	421,
	8,
	39);
INSERT INTO ACT_SMT
	VALUES (885,
	883,
	0,
	10,
	1,
	'Goal::create line: 10');
INSERT INTO ACT_IF
	VALUES (885,
	888,
	889,
	0,
	0);
INSERT INTO V_VAL
	VALUES (890,
	0,
	0,
	9,
	11,
	-1,
	0,
	0,
	0,
	0,
	300,
	883);
INSERT INTO V_SLR
	VALUES (890,
	0,
	0,
	0);
INSERT INTO V_VAL
	VALUES (891,
	0,
	0,
	9,
	20,
	33,
	0,
	0,
	0,
	0,
	188,
	883);
INSERT INTO V_AVL
	VALUES (891,
	890,
	421,
	442);
INSERT INTO V_VAL
	VALUES (887,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	883);
INSERT INTO V_BIN
	VALUES (887,
	892,
	891,
	'==');
INSERT INTO V_VAL
	VALUES (892,
	0,
	0,
	9,
	44,
	57,
	0,
	0,
	0,
	0,
	188,
	883);
INSERT INTO V_PVL
	VALUES (892,
	0,
	0,
	881,
	0);
INSERT INTO V_VAL
	VALUES (893,
	0,
	0,
	10,
	16,
	23,
	0,
	0,
	0,
	0,
	300,
	883);
INSERT INTO V_IRF
	VALUES (893,
	886);
INSERT INTO V_VAL
	VALUES (894,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	883);
INSERT INTO V_UNY
	VALUES (894,
	893,
	'empty');
INSERT INTO V_VAL
	VALUES (889,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	883);
INSERT INTO V_UNY
	VALUES (889,
	894,
	'not');
INSERT INTO V_VAR
	VALUES (886,
	883,
	'goalSpec',
	1,
	300);
INSERT INTO V_INT
	VALUES (886,
	0,
	421);
INSERT INTO ACT_BLK
	VALUES (888,
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
	882,
	0);
INSERT INTO ACT_SMT
	VALUES (895,
	888,
	896,
	11,
	3,
	'Goal::create line: 11');
INSERT INTO ACT_CR
	VALUES (895,
	897,
	1,
	492,
	11,
	34);
INSERT INTO ACT_SMT
	VALUES (896,
	888,
	898,
	12,
	3,
	'Goal::create line: 12');
INSERT INTO ACT_REL
	VALUES (896,
	897,
	886,
	'''specified by''',
	490,
	12,
	34,
	12,
	37);
INSERT INTO ACT_SMT
	VALUES (898,
	888,
	899,
	13,
	3,
	'Goal::create line: 13');
INSERT INTO ACT_FIO
	VALUES (898,
	900,
	1,
	'any',
	349,
	13,
	40);
INSERT INTO ACT_SMT
	VALUES (899,
	888,
	901,
	14,
	3,
	'Goal::create line: 14');
INSERT INTO ACT_REL
	VALUES (899,
	897,
	900,
	'''is currently executing within''',
	496,
	14,
	33,
	14,
	37);
INSERT INTO ACT_SMT
	VALUES (901,
	888,
	902,
	17,
	3,
	'Goal::create line: 17');
INSERT INTO ACT_TFM
	VALUES (901,
	903,
	897,
	17,
	8,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (902,
	888,
	904,
	18,
	3,
	'Goal::create line: 18');
INSERT INTO ACT_AI
	VALUES (902,
	905,
	906,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (904,
	888,
	907,
	21,
	3,
	'Goal::create line: 21');
INSERT INTO E_ESS
	VALUES (904,
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
	VALUES (904,
	1,
	908);
INSERT INTO E_CSME
	VALUES (904,
	909);
INSERT INTO E_CEI
	VALUES (904,
	897);
INSERT INTO ACT_SMT
	VALUES (907,
	888,
	0,
	22,
	3,
	'Goal::create line: 22');
INSERT INTO ACT_AI
	VALUES (907,
	910,
	911,
	0,
	0);
INSERT INTO V_VAL
	VALUES (912,
	1,
	0,
	18,
	3,
	6,
	0,
	0,
	0,
	0,
	300,
	888);
INSERT INTO V_IRF
	VALUES (912,
	897);
INSERT INTO V_VAL
	VALUES (906,
	1,
	0,
	18,
	8,
	18,
	0,
	0,
	0,
	0,
	702,
	888);
INSERT INTO V_AVL
	VALUES (906,
	912,
	492,
	703);
INSERT INTO V_VAL
	VALUES (905,
	0,
	0,
	18,
	39,
	46,
	0,
	0,
	0,
	0,
	702,
	888);
INSERT INTO V_LEN
	VALUES (905,
	705,
	18,
	22);
INSERT INTO V_VAL
	VALUES (913,
	1,
	0,
	22,
	3,
	6,
	0,
	0,
	0,
	0,
	300,
	888);
INSERT INTO V_IRF
	VALUES (913,
	897);
INSERT INTO V_VAL
	VALUES (911,
	1,
	0,
	22,
	8,
	22,
	0,
	0,
	0,
	0,
	307,
	888);
INSERT INTO V_AVL
	VALUES (911,
	913,
	492,
	914);
INSERT INTO V_VAL
	VALUES (910,
	0,
	0,
	22,
	31,
	-1,
	22,
	54,
	22,
	81,
	307,
	888);
INSERT INTO V_BRV
	VALUES (910,
	585,
	1,
	22,
	26);
INSERT INTO V_VAL
	VALUES (915,
	0,
	0,
	22,
	66,
	78,
	0,
	0,
	0,
	0,
	302,
	888);
INSERT INTO V_TVL
	VALUES (915,
	908);
INSERT INTO V_PAR
	VALUES (915,
	0,
	910,
	'event_inst',
	916,
	22,
	54);
INSERT INTO V_VAL
	VALUES (916,
	0,
	0,
	22,
	95,
	110,
	0,
	0,
	0,
	0,
	188,
	888);
INSERT INTO V_SCV
	VALUES (916,
	917,
	188);
INSERT INTO V_PAR
	VALUES (916,
	0,
	910,
	'microseconds',
	0,
	22,
	81);
INSERT INTO V_VAR
	VALUES (897,
	888,
	'goal',
	1,
	300);
INSERT INTO V_INT
	VALUES (897,
	0,
	492);
INSERT INTO V_VAR
	VALUES (900,
	888,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (900,
	0,
	349);
INSERT INTO V_VAR
	VALUES (908,
	888,
	'evaluateEvent',
	1,
	302);
INSERT INTO V_TRN
	VALUES (908,
	0,
	'');
INSERT INTO O_TFR
	VALUES (903,
	492,
	'calculateStart',
	'',
	294,
	1,
	'// Based on the span type for this goal, calculate and
//   store the value of the start attribute.
select one goalSpec related by self->GoalSpec[R9.''specified by''];
if ( goalSpec.spanType == GoalSpan::Time )
  select one workoutTimer related by 
    self->WorkoutSession[R11.''is currently executing within'']->WorkoutTimer[R8.''is timed by''];
  self.start = workoutTimer.time;
elif ( goalSpec.spanType == GoalSpan::Distance )
  select one session related by self->WorkoutSession[R11.''is currently executing within''];
  self.start = session.accumulatedDistance;
else
  LOG::LogFailure( message: "Goal.calculateStart: Unknown Goal Span Type." );
end if;',
	1,
	'',
	880);
INSERT INTO ACT_OPB
	VALUES (918,
	903);
INSERT INTO ACT_ACT
	VALUES (918,
	'operation',
	0,
	919,
	0,
	0,
	'Goal::calculateStart',
	0);
INSERT INTO ACT_BLK
	VALUES (919,
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
	918,
	0);
INSERT INTO ACT_SMT
	VALUES (920,
	919,
	921,
	3,
	1,
	'Goal::calculateStart line: 3');
INSERT INTO ACT_SEL
	VALUES (920,
	922,
	1,
	'one',
	923);
INSERT INTO ACT_SR
	VALUES (920);
INSERT INTO ACT_LNK
	VALUES (924,
	'''specified by''',
	920,
	490,
	0,
	2,
	421,
	3,
	38,
	3,
	47,
	3,
	50);
INSERT INTO ACT_SMT
	VALUES (921,
	919,
	0,
	4,
	1,
	'Goal::calculateStart line: 4');
INSERT INTO ACT_IF
	VALUES (921,
	925,
	926,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (927,
	919,
	0,
	8,
	1,
	'Goal::calculateStart line: 8');
INSERT INTO ACT_EL
	VALUES (927,
	928,
	929,
	921);
INSERT INTO ACT_SMT
	VALUES (930,
	919,
	0,
	11,
	1,
	'Goal::calculateStart line: 11');
INSERT INTO ACT_E
	VALUES (930,
	931,
	921);
INSERT INTO V_VAL
	VALUES (923,
	0,
	0,
	3,
	32,
	35,
	0,
	0,
	0,
	0,
	300,
	919);
INSERT INTO V_IRF
	VALUES (923,
	932);
INSERT INTO V_VAL
	VALUES (933,
	0,
	0,
	4,
	6,
	13,
	0,
	0,
	0,
	0,
	300,
	919);
INSERT INTO V_IRF
	VALUES (933,
	922);
INSERT INTO V_VAL
	VALUES (934,
	0,
	0,
	4,
	15,
	22,
	0,
	0,
	0,
	0,
	207,
	919);
INSERT INTO V_AVL
	VALUES (934,
	933,
	421,
	457);
INSERT INTO V_VAL
	VALUES (926,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	919);
INSERT INTO V_BIN
	VALUES (926,
	935,
	934,
	'==');
INSERT INTO V_VAL
	VALUES (935,
	0,
	0,
	4,
	37,
	40,
	0,
	0,
	0,
	0,
	207,
	919);
INSERT INTO V_LEN
	VALUES (935,
	632,
	4,
	27);
INSERT INTO V_VAL
	VALUES (936,
	0,
	0,
	8,
	8,
	15,
	0,
	0,
	0,
	0,
	300,
	919);
INSERT INTO V_IRF
	VALUES (936,
	922);
INSERT INTO V_VAL
	VALUES (937,
	0,
	0,
	8,
	17,
	24,
	0,
	0,
	0,
	0,
	207,
	919);
INSERT INTO V_AVL
	VALUES (937,
	936,
	421,
	457);
INSERT INTO V_VAL
	VALUES (929,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	919);
INSERT INTO V_BIN
	VALUES (929,
	938,
	937,
	'==');
INSERT INTO V_VAL
	VALUES (938,
	0,
	0,
	8,
	39,
	46,
	0,
	0,
	0,
	0,
	207,
	919);
INSERT INTO V_LEN
	VALUES (938,
	624,
	8,
	29);
INSERT INTO V_VAR
	VALUES (922,
	919,
	'goalSpec',
	1,
	300);
INSERT INTO V_INT
	VALUES (922,
	0,
	421);
INSERT INTO V_VAR
	VALUES (932,
	919,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (932,
	0,
	492);
INSERT INTO ACT_BLK
	VALUES (925,
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
	918,
	0);
INSERT INTO ACT_SMT
	VALUES (939,
	925,
	940,
	5,
	3,
	'Goal::calculateStart line: 5');
INSERT INTO ACT_SEL
	VALUES (939,
	941,
	1,
	'one',
	942);
INSERT INTO ACT_SR
	VALUES (939);
INSERT INTO ACT_LNK
	VALUES (943,
	'''is currently executing within''',
	939,
	496,
	944,
	2,
	349,
	6,
	11,
	6,
	26,
	6,
	30);
INSERT INTO ACT_LNK
	VALUES (944,
	'''is timed by''',
	0,
	480,
	0,
	2,
	364,
	6,
	64,
	6,
	77,
	6,
	80);
INSERT INTO ACT_SMT
	VALUES (940,
	925,
	0,
	7,
	3,
	'Goal::calculateStart line: 7');
INSERT INTO ACT_AI
	VALUES (940,
	945,
	946,
	0,
	0);
INSERT INTO V_VAL
	VALUES (942,
	0,
	0,
	6,
	5,
	8,
	0,
	0,
	0,
	0,
	300,
	925);
INSERT INTO V_IRF
	VALUES (942,
	932);
INSERT INTO V_VAL
	VALUES (947,
	1,
	0,
	7,
	3,
	6,
	0,
	0,
	0,
	0,
	300,
	925);
INSERT INTO V_IRF
	VALUES (947,
	932);
INSERT INTO V_VAL
	VALUES (946,
	1,
	0,
	7,
	8,
	12,
	0,
	0,
	0,
	0,
	133,
	925);
INSERT INTO V_AVL
	VALUES (946,
	947,
	492,
	948);
INSERT INTO V_VAL
	VALUES (949,
	0,
	0,
	7,
	16,
	27,
	0,
	0,
	0,
	0,
	300,
	925);
INSERT INTO V_IRF
	VALUES (949,
	941);
INSERT INTO V_VAL
	VALUES (945,
	0,
	0,
	7,
	29,
	32,
	0,
	0,
	0,
	0,
	188,
	925);
INSERT INTO V_AVL
	VALUES (945,
	949,
	364,
	669);
INSERT INTO V_VAR
	VALUES (941,
	925,
	'workoutTimer',
	1,
	300);
INSERT INTO V_INT
	VALUES (941,
	0,
	364);
INSERT INTO ACT_BLK
	VALUES (928,
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
	918,
	0);
INSERT INTO ACT_SMT
	VALUES (950,
	928,
	951,
	9,
	3,
	'Goal::calculateStart line: 9');
INSERT INTO ACT_SEL
	VALUES (950,
	952,
	1,
	'one',
	953);
INSERT INTO ACT_SR
	VALUES (950);
INSERT INTO ACT_LNK
	VALUES (954,
	'''is currently executing within''',
	950,
	496,
	0,
	2,
	349,
	9,
	39,
	9,
	54,
	9,
	58);
INSERT INTO ACT_SMT
	VALUES (951,
	928,
	0,
	10,
	3,
	'Goal::calculateStart line: 10');
INSERT INTO ACT_AI
	VALUES (951,
	955,
	956,
	0,
	0);
INSERT INTO V_VAL
	VALUES (953,
	0,
	0,
	9,
	33,
	36,
	0,
	0,
	0,
	0,
	300,
	928);
INSERT INTO V_IRF
	VALUES (953,
	932);
INSERT INTO V_VAL
	VALUES (957,
	1,
	0,
	10,
	3,
	6,
	0,
	0,
	0,
	0,
	300,
	928);
INSERT INTO V_IRF
	VALUES (957,
	932);
INSERT INTO V_VAL
	VALUES (956,
	1,
	0,
	10,
	8,
	12,
	0,
	0,
	0,
	0,
	133,
	928);
INSERT INTO V_AVL
	VALUES (956,
	957,
	492,
	948);
INSERT INTO V_VAL
	VALUES (958,
	0,
	0,
	10,
	16,
	22,
	0,
	0,
	0,
	0,
	300,
	928);
INSERT INTO V_IRF
	VALUES (958,
	952);
INSERT INTO V_VAL
	VALUES (955,
	0,
	0,
	10,
	24,
	42,
	0,
	0,
	0,
	0,
	133,
	928);
INSERT INTO V_AVL
	VALUES (955,
	958,
	349,
	745);
INSERT INTO V_VAR
	VALUES (952,
	928,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (952,
	0,
	349);
INSERT INTO ACT_BLK
	VALUES (931,
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
	918,
	0);
INSERT INTO ACT_SMT
	VALUES (959,
	931,
	0,
	12,
	3,
	'Goal::calculateStart line: 12');
INSERT INTO ACT_BRG
	VALUES (959,
	374,
	12,
	8,
	12,
	3);
INSERT INTO V_VAL
	VALUES (960,
	0,
	0,
	12,
	29,
	73,
	0,
	0,
	0,
	0,
	296,
	931);
INSERT INTO V_LST
	VALUES (960,
	'Goal.calculateStart: Unknown Goal Span Type.');
INSERT INTO V_PAR
	VALUES (960,
	959,
	0,
	'message',
	0,
	12,
	20);
INSERT INTO O_TFR
	VALUES (961,
	492,
	'evaluateAchievement',
	'',
	702,
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
	903);
INSERT INTO ACT_OPB
	VALUES (962,
	961);
INSERT INTO ACT_ACT
	VALUES (962,
	'operation',
	0,
	963,
	0,
	0,
	'Goal::evaluateAchievement',
	0);
INSERT INTO ACT_BLK
	VALUES (963,
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
	962,
	0);
INSERT INTO ACT_SMT
	VALUES (964,
	963,
	965,
	6,
	1,
	'Goal::evaluateAchievement line: 6');
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
	'''specified by''',
	964,
	490,
	0,
	2,
	421,
	6,
	38,
	6,
	47,
	6,
	50);
INSERT INTO ACT_SMT
	VALUES (965,
	963,
	969,
	7,
	1,
	'Goal::evaluateAchievement line: 7');
INSERT INTO ACT_SEL
	VALUES (965,
	970,
	1,
	'one',
	971);
INSERT INTO ACT_SR
	VALUES (965);
INSERT INTO ACT_LNK
	VALUES (972,
	'''is currently executing within''',
	965,
	496,
	0,
	2,
	349,
	7,
	37,
	7,
	52,
	7,
	56);
INSERT INTO ACT_SMT
	VALUES (969,
	963,
	973,
	11,
	1,
	'Goal::evaluateAchievement line: 11');
INSERT INTO ACT_AI
	VALUES (969,
	974,
	975,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (973,
	963,
	976,
	12,
	1,
	'Goal::evaluateAchievement line: 12');
INSERT INTO ACT_IF
	VALUES (973,
	977,
	978,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (979,
	963,
	0,
	14,
	1,
	'Goal::evaluateAchievement line: 14');
INSERT INTO ACT_EL
	VALUES (979,
	980,
	981,
	973);
INSERT INTO ACT_SMT
	VALUES (982,
	963,
	0,
	16,
	1,
	'Goal::evaluateAchievement line: 16');
INSERT INTO ACT_E
	VALUES (982,
	983,
	973);
INSERT INTO ACT_SMT
	VALUES (976,
	963,
	984,
	21,
	1,
	'Goal::evaluateAchievement line: 21');
INSERT INTO ACT_AI
	VALUES (976,
	985,
	986,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (984,
	963,
	987,
	22,
	1,
	'Goal::evaluateAchievement line: 22');
INSERT INTO ACT_IF
	VALUES (984,
	988,
	989,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (990,
	963,
	0,
	24,
	1,
	'Goal::evaluateAchievement line: 24');
INSERT INTO ACT_EL
	VALUES (990,
	991,
	992,
	984);
INSERT INTO ACT_SMT
	VALUES (987,
	963,
	993,
	30,
	1,
	'Goal::evaluateAchievement line: 30');
INSERT INTO ACT_IF
	VALUES (987,
	994,
	995,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (993,
	963,
	0,
	38,
	1,
	'Goal::evaluateAchievement line: 38');
INSERT INTO ACT_RET
	VALUES (993,
	996);
INSERT INTO V_VAL
	VALUES (967,
	0,
	0,
	6,
	32,
	35,
	0,
	0,
	0,
	0,
	300,
	963);
INSERT INTO V_IRF
	VALUES (967,
	997);
INSERT INTO V_VAL
	VALUES (971,
	0,
	0,
	7,
	31,
	34,
	0,
	0,
	0,
	0,
	300,
	963);
INSERT INTO V_IRF
	VALUES (971,
	997);
INSERT INTO V_VAL
	VALUES (975,
	1,
	1,
	11,
	1,
	12,
	0,
	0,
	0,
	0,
	133,
	963);
INSERT INTO V_TVL
	VALUES (975,
	998);
INSERT INTO V_VAL
	VALUES (974,
	0,
	0,
	11,
	16,
	18,
	0,
	0,
	0,
	0,
	133,
	963);
INSERT INTO V_LRL
	VALUES (974,
	'0.0');
INSERT INTO V_VAL
	VALUES (999,
	0,
	0,
	12,
	6,
	13,
	0,
	0,
	0,
	0,
	300,
	963);
INSERT INTO V_IRF
	VALUES (999,
	966);
INSERT INTO V_VAL
	VALUES (1000,
	0,
	0,
	12,
	15,
	26,
	0,
	0,
	0,
	0,
	204,
	963);
INSERT INTO V_AVL
	VALUES (1000,
	999,
	421,
	454);
INSERT INTO V_VAL
	VALUES (978,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	963);
INSERT INTO V_BIN
	VALUES (978,
	1001,
	1000,
	'==');
INSERT INTO V_VAL
	VALUES (1001,
	0,
	0,
	12,
	45,
	53,
	0,
	0,
	0,
	0,
	204,
	963);
INSERT INTO V_LEN
	VALUES (1001,
	630,
	12,
	31);
INSERT INTO V_VAL
	VALUES (1002,
	0,
	0,
	14,
	8,
	15,
	0,
	0,
	0,
	0,
	300,
	963);
INSERT INTO V_IRF
	VALUES (1002,
	966);
INSERT INTO V_VAL
	VALUES (1003,
	0,
	0,
	14,
	17,
	28,
	0,
	0,
	0,
	0,
	204,
	963);
INSERT INTO V_AVL
	VALUES (1003,
	1002,
	421,
	454);
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
	295,
	963);
INSERT INTO V_BIN
	VALUES (981,
	1004,
	1003,
	'==');
INSERT INTO V_VAL
	VALUES (1004,
	0,
	0,
	14,
	47,
	50,
	0,
	0,
	0,
	0,
	204,
	963);
INSERT INTO V_LEN
	VALUES (1004,
	622,
	14,
	33);
INSERT INTO V_VAL
	VALUES (986,
	1,
	1,
	21,
	1,
	15,
	0,
	0,
	0,
	0,
	702,
	963);
INSERT INTO V_TVL
	VALUES (986,
	1005);
INSERT INTO V_VAL
	VALUES (985,
	0,
	0,
	21,
	36,
	44,
	0,
	0,
	0,
	0,
	702,
	963);
INSERT INTO V_LEN
	VALUES (985,
	1006,
	21,
	19);
INSERT INTO V_VAL
	VALUES (1007,
	0,
	0,
	22,
	6,
	17,
	0,
	0,
	0,
	0,
	133,
	963);
INSERT INTO V_TVL
	VALUES (1007,
	998);
INSERT INTO V_VAL
	VALUES (989,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	963);
INSERT INTO V_BIN
	VALUES (989,
	1008,
	1007,
	'<');
INSERT INTO V_VAL
	VALUES (1009,
	0,
	0,
	22,
	21,
	28,
	0,
	0,
	0,
	0,
	300,
	963);
INSERT INTO V_IRF
	VALUES (1009,
	966);
INSERT INTO V_VAL
	VALUES (1008,
	0,
	0,
	22,
	30,
	36,
	0,
	0,
	0,
	0,
	133,
	963);
INSERT INTO V_AVL
	VALUES (1008,
	1009,
	421,
	445);
INSERT INTO V_VAL
	VALUES (1010,
	0,
	0,
	24,
	8,
	19,
	0,
	0,
	0,
	0,
	133,
	963);
INSERT INTO V_TVL
	VALUES (1010,
	998);
INSERT INTO V_VAL
	VALUES (992,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	963);
INSERT INTO V_BIN
	VALUES (992,
	1011,
	1010,
	'>');
INSERT INTO V_VAL
	VALUES (1012,
	0,
	0,
	24,
	23,
	30,
	0,
	0,
	0,
	0,
	300,
	963);
INSERT INTO V_IRF
	VALUES (1012,
	966);
INSERT INTO V_VAL
	VALUES (1011,
	0,
	0,
	24,
	32,
	38,
	0,
	0,
	0,
	0,
	133,
	963);
INSERT INTO V_AVL
	VALUES (1011,
	1012,
	421,
	448);
INSERT INTO V_VAL
	VALUES (1013,
	0,
	0,
	30,
	6,
	13,
	0,
	0,
	0,
	0,
	300,
	963);
INSERT INTO V_IRF
	VALUES (1013,
	966);
INSERT INTO V_VAL
	VALUES (1014,
	0,
	0,
	30,
	15,
	26,
	0,
	0,
	0,
	0,
	204,
	963);
INSERT INTO V_AVL
	VALUES (1014,
	1013,
	421,
	454);
INSERT INTO V_VAL
	VALUES (995,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	963);
INSERT INTO V_BIN
	VALUES (995,
	1015,
	1014,
	'==');
INSERT INTO V_VAL
	VALUES (1015,
	0,
	0,
	30,
	45,
	48,
	0,
	0,
	0,
	0,
	204,
	963);
INSERT INTO V_LEN
	VALUES (1015,
	622,
	30,
	31);
INSERT INTO V_VAL
	VALUES (996,
	0,
	0,
	38,
	9,
	23,
	0,
	0,
	0,
	0,
	702,
	963);
INSERT INTO V_TVL
	VALUES (996,
	1005);
INSERT INTO V_VAR
	VALUES (966,
	963,
	'goalSpec',
	1,
	300);
INSERT INTO V_INT
	VALUES (966,
	0,
	421);
INSERT INTO V_VAR
	VALUES (997,
	963,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (997,
	0,
	492);
INSERT INTO V_VAR
	VALUES (970,
	963,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (970,
	0,
	349);
INSERT INTO V_VAR
	VALUES (998,
	963,
	'currentValue',
	1,
	133);
INSERT INTO V_TRN
	VALUES (998,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1005,
	963,
	'goalDisposition',
	1,
	702);
INSERT INTO V_TRN
	VALUES (1005,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (977,
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
	962,
	0);
INSERT INTO ACT_SMT
	VALUES (1016,
	977,
	0,
	13,
	3,
	'Goal::evaluateAchievement line: 13');
INSERT INTO ACT_AI
	VALUES (1016,
	1017,
	1018,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1018,
	1,
	0,
	13,
	3,
	14,
	0,
	0,
	0,
	0,
	133,
	977);
INSERT INTO V_TVL
	VALUES (1018,
	998);
INSERT INTO V_VAL
	VALUES (1019,
	0,
	0,
	13,
	18,
	24,
	0,
	0,
	0,
	0,
	300,
	977);
INSERT INTO V_IRF
	VALUES (1019,
	970);
INSERT INTO V_VAL
	VALUES (1017,
	0,
	0,
	13,
	26,
	41,
	0,
	0,
	0,
	0,
	188,
	977);
INSERT INTO V_AVL
	VALUES (1017,
	1019,
	349,
	817);
INSERT INTO ACT_BLK
	VALUES (980,
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
	962,
	0);
INSERT INTO ACT_SMT
	VALUES (1020,
	980,
	0,
	15,
	3,
	'Goal::evaluateAchievement line: 15');
INSERT INTO ACT_AI
	VALUES (1020,
	1021,
	1022,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1022,
	1,
	0,
	15,
	3,
	14,
	0,
	0,
	0,
	0,
	133,
	980);
INSERT INTO V_TVL
	VALUES (1022,
	998);
INSERT INTO V_VAL
	VALUES (1023,
	0,
	0,
	15,
	18,
	24,
	0,
	0,
	0,
	0,
	300,
	980);
INSERT INTO V_IRF
	VALUES (1023,
	970);
INSERT INTO V_VAL
	VALUES (1021,
	0,
	0,
	15,
	26,
	36,
	0,
	0,
	0,
	0,
	133,
	980);
INSERT INTO V_AVL
	VALUES (1021,
	1023,
	349,
	796);
INSERT INTO ACT_BLK
	VALUES (983,
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
	962,
	0);
INSERT INTO ACT_SMT
	VALUES (1024,
	983,
	0,
	17,
	3,
	'Goal::evaluateAchievement line: 17');
INSERT INTO ACT_BRG
	VALUES (1024,
	374,
	17,
	8,
	17,
	3);
INSERT INTO V_VAL
	VALUES (1025,
	0,
	0,
	17,
	29,
	82,
	0,
	0,
	0,
	0,
	296,
	983);
INSERT INTO V_LST
	VALUES (1025,
	'Goal.evaluateAchievement: Unknown Goal Criteria Type.');
INSERT INTO V_PAR
	VALUES (1025,
	1024,
	0,
	'message',
	0,
	17,
	20);
INSERT INTO ACT_BLK
	VALUES (988,
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
	962,
	0);
INSERT INTO ACT_SMT
	VALUES (1026,
	988,
	0,
	23,
	3,
	'Goal::evaluateAchievement line: 23');
INSERT INTO ACT_AI
	VALUES (1026,
	1027,
	1028,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1028,
	1,
	0,
	23,
	3,
	17,
	0,
	0,
	0,
	0,
	702,
	988);
INSERT INTO V_TVL
	VALUES (1028,
	1005);
INSERT INTO V_VAL
	VALUES (1027,
	0,
	0,
	23,
	38,
	45,
	0,
	0,
	0,
	0,
	702,
	988);
INSERT INTO V_LEN
	VALUES (1027,
	705,
	23,
	21);
INSERT INTO ACT_BLK
	VALUES (991,
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
	962,
	0);
INSERT INTO ACT_SMT
	VALUES (1029,
	991,
	0,
	25,
	3,
	'Goal::evaluateAchievement line: 25');
INSERT INTO ACT_AI
	VALUES (1029,
	1030,
	1031,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1031,
	1,
	0,
	25,
	3,
	17,
	0,
	0,
	0,
	0,
	702,
	991);
INSERT INTO V_TVL
	VALUES (1031,
	1005);
INSERT INTO V_VAL
	VALUES (1030,
	0,
	0,
	25,
	38,
	45,
	0,
	0,
	0,
	0,
	702,
	991);
INSERT INTO V_LEN
	VALUES (1030,
	709,
	25,
	21);
INSERT INTO ACT_BLK
	VALUES (994,
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
	962,
	0);
INSERT INTO ACT_SMT
	VALUES (1032,
	994,
	0,
	31,
	3,
	'Goal::evaluateAchievement line: 31');
INSERT INTO ACT_IF
	VALUES (1032,
	1033,
	1034,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1035,
	994,
	0,
	33,
	3,
	'Goal::evaluateAchievement line: 33');
INSERT INTO ACT_EL
	VALUES (1035,
	1036,
	1037,
	1032);
INSERT INTO V_VAL
	VALUES (1038,
	0,
	0,
	31,
	8,
	22,
	0,
	0,
	0,
	0,
	702,
	994);
INSERT INTO V_TVL
	VALUES (1038,
	1005);
INSERT INTO V_VAL
	VALUES (1034,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	994);
INSERT INTO V_BIN
	VALUES (1034,
	1039,
	1038,
	'==');
INSERT INTO V_VAL
	VALUES (1039,
	0,
	0,
	31,
	44,
	51,
	0,
	0,
	0,
	0,
	702,
	994);
INSERT INTO V_LEN
	VALUES (1039,
	705,
	31,
	27);
INSERT INTO V_VAL
	VALUES (1040,
	0,
	0,
	33,
	10,
	24,
	0,
	0,
	0,
	0,
	702,
	994);
INSERT INTO V_TVL
	VALUES (1040,
	1005);
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
	295,
	994);
INSERT INTO V_BIN
	VALUES (1037,
	1041,
	1040,
	'==');
INSERT INTO V_VAL
	VALUES (1041,
	0,
	0,
	33,
	46,
	53,
	0,
	0,
	0,
	0,
	702,
	994);
INSERT INTO V_LEN
	VALUES (1041,
	709,
	33,
	29);
INSERT INTO ACT_BLK
	VALUES (1033,
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
	962,
	0);
INSERT INTO ACT_SMT
	VALUES (1042,
	1033,
	0,
	32,
	5,
	'Goal::evaluateAchievement line: 32');
INSERT INTO ACT_AI
	VALUES (1042,
	1043,
	1044,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1044,
	1,
	0,
	32,
	5,
	19,
	0,
	0,
	0,
	0,
	702,
	1033);
INSERT INTO V_TVL
	VALUES (1044,
	1005);
INSERT INTO V_VAL
	VALUES (1043,
	0,
	0,
	32,
	40,
	47,
	0,
	0,
	0,
	0,
	702,
	1033);
INSERT INTO V_LEN
	VALUES (1043,
	709,
	32,
	23);
INSERT INTO ACT_BLK
	VALUES (1036,
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
	962,
	0);
INSERT INTO ACT_SMT
	VALUES (1045,
	1036,
	0,
	34,
	5,
	'Goal::evaluateAchievement line: 34');
INSERT INTO ACT_AI
	VALUES (1045,
	1046,
	1047,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1047,
	1,
	0,
	34,
	5,
	19,
	0,
	0,
	0,
	0,
	702,
	1036);
INSERT INTO V_TVL
	VALUES (1047,
	1005);
INSERT INTO V_VAL
	VALUES (1046,
	0,
	0,
	34,
	40,
	47,
	0,
	0,
	0,
	0,
	702,
	1036);
INSERT INTO V_LEN
	VALUES (1046,
	705,
	34,
	23);
INSERT INTO O_TFR
	VALUES (1048,
	492,
	'evaluateCompletion',
	'',
	294,
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
  elapsedSpan = session.accumulatedDistance - self.start;
elif ( goalSpec.spanType == GoalSpan::Time )
  select one workoutTimer related by 
    self->WorkoutSession[R11.''is currently executing within'']->WorkoutTimer[R8.''is timed by''];
  elapsedSpan = workoutTimer.time - self.start;
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
	961);
INSERT INTO ACT_OPB
	VALUES (1049,
	1048);
INSERT INTO ACT_ACT
	VALUES (1049,
	'operation',
	0,
	1050,
	0,
	0,
	'Goal::evaluateCompletion',
	0);
INSERT INTO ACT_BLK
	VALUES (1050,
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
	1049,
	0);
INSERT INTO ACT_SMT
	VALUES (1051,
	1050,
	1052,
	6,
	1,
	'Goal::evaluateCompletion line: 6');
INSERT INTO ACT_SEL
	VALUES (1051,
	1053,
	1,
	'one',
	1054);
INSERT INTO ACT_SR
	VALUES (1051);
INSERT INTO ACT_LNK
	VALUES (1055,
	'''specified by''',
	1051,
	490,
	0,
	2,
	421,
	6,
	38,
	6,
	47,
	6,
	50);
INSERT INTO ACT_SMT
	VALUES (1052,
	1050,
	1056,
	10,
	1,
	'Goal::evaluateCompletion line: 10');
INSERT INTO ACT_AI
	VALUES (1052,
	1057,
	1058,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1056,
	1050,
	1059,
	11,
	1,
	'Goal::evaluateCompletion line: 11');
INSERT INTO ACT_IF
	VALUES (1056,
	1060,
	1061,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1062,
	1050,
	0,
	14,
	1,
	'Goal::evaluateCompletion line: 14');
INSERT INTO ACT_EL
	VALUES (1062,
	1063,
	1064,
	1056);
INSERT INTO ACT_SMT
	VALUES (1065,
	1050,
	0,
	18,
	1,
	'Goal::evaluateCompletion line: 18');
INSERT INTO ACT_E
	VALUES (1065,
	1066,
	1056);
INSERT INTO ACT_SMT
	VALUES (1059,
	1050,
	0,
	24,
	1,
	'Goal::evaluateCompletion line: 24');
INSERT INTO ACT_IF
	VALUES (1059,
	1067,
	1068,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1054,
	0,
	0,
	6,
	32,
	35,
	0,
	0,
	0,
	0,
	300,
	1050);
INSERT INTO V_IRF
	VALUES (1054,
	1069);
INSERT INTO V_VAL
	VALUES (1058,
	1,
	1,
	10,
	1,
	11,
	0,
	0,
	0,
	0,
	133,
	1050);
INSERT INTO V_TVL
	VALUES (1058,
	1070);
INSERT INTO V_VAL
	VALUES (1057,
	0,
	0,
	10,
	15,
	17,
	0,
	0,
	0,
	0,
	133,
	1050);
INSERT INTO V_LRL
	VALUES (1057,
	'0.0');
INSERT INTO V_VAL
	VALUES (1071,
	0,
	0,
	11,
	6,
	13,
	0,
	0,
	0,
	0,
	300,
	1050);
INSERT INTO V_IRF
	VALUES (1071,
	1053);
INSERT INTO V_VAL
	VALUES (1072,
	0,
	0,
	11,
	15,
	22,
	0,
	0,
	0,
	0,
	207,
	1050);
INSERT INTO V_AVL
	VALUES (1072,
	1071,
	421,
	457);
INSERT INTO V_VAL
	VALUES (1061,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1050);
INSERT INTO V_BIN
	VALUES (1061,
	1073,
	1072,
	'==');
INSERT INTO V_VAL
	VALUES (1073,
	0,
	0,
	11,
	37,
	44,
	0,
	0,
	0,
	0,
	207,
	1050);
INSERT INTO V_LEN
	VALUES (1073,
	624,
	11,
	27);
INSERT INTO V_VAL
	VALUES (1074,
	0,
	0,
	14,
	8,
	15,
	0,
	0,
	0,
	0,
	300,
	1050);
INSERT INTO V_IRF
	VALUES (1074,
	1053);
INSERT INTO V_VAL
	VALUES (1075,
	0,
	0,
	14,
	17,
	24,
	0,
	0,
	0,
	0,
	207,
	1050);
INSERT INTO V_AVL
	VALUES (1075,
	1074,
	421,
	457);
INSERT INTO V_VAL
	VALUES (1064,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1050);
INSERT INTO V_BIN
	VALUES (1064,
	1076,
	1075,
	'==');
INSERT INTO V_VAL
	VALUES (1076,
	0,
	0,
	14,
	39,
	42,
	0,
	0,
	0,
	0,
	207,
	1050);
INSERT INTO V_LEN
	VALUES (1076,
	632,
	14,
	29);
INSERT INTO V_VAL
	VALUES (1077,
	0,
	0,
	24,
	6,
	16,
	0,
	0,
	0,
	0,
	133,
	1050);
INSERT INTO V_TVL
	VALUES (1077,
	1070);
INSERT INTO V_VAL
	VALUES (1068,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1050);
INSERT INTO V_BIN
	VALUES (1068,
	1078,
	1077,
	'>=');
INSERT INTO V_VAL
	VALUES (1079,
	0,
	0,
	24,
	21,
	28,
	0,
	0,
	0,
	0,
	300,
	1050);
INSERT INTO V_IRF
	VALUES (1079,
	1053);
INSERT INTO V_VAL
	VALUES (1078,
	0,
	0,
	24,
	30,
	33,
	0,
	0,
	0,
	0,
	133,
	1050);
INSERT INTO V_AVL
	VALUES (1078,
	1079,
	421,
	451);
INSERT INTO V_VAR
	VALUES (1053,
	1050,
	'goalSpec',
	1,
	300);
INSERT INTO V_INT
	VALUES (1053,
	0,
	421);
INSERT INTO V_VAR
	VALUES (1069,
	1050,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1069,
	0,
	492);
INSERT INTO V_VAR
	VALUES (1070,
	1050,
	'elapsedSpan',
	1,
	133);
INSERT INTO V_TRN
	VALUES (1070,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (1060,
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
	1049,
	0);
INSERT INTO ACT_SMT
	VALUES (1080,
	1060,
	1081,
	12,
	3,
	'Goal::evaluateCompletion line: 12');
INSERT INTO ACT_SEL
	VALUES (1080,
	1082,
	1,
	'one',
	1083);
INSERT INTO ACT_SR
	VALUES (1080);
INSERT INTO ACT_LNK
	VALUES (1084,
	'''is currently executing within''',
	1080,
	496,
	0,
	2,
	349,
	12,
	39,
	12,
	54,
	12,
	58);
INSERT INTO ACT_SMT
	VALUES (1081,
	1060,
	0,
	13,
	3,
	'Goal::evaluateCompletion line: 13');
INSERT INTO ACT_AI
	VALUES (1081,
	1085,
	1086,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1083,
	0,
	0,
	12,
	33,
	36,
	0,
	0,
	0,
	0,
	300,
	1060);
INSERT INTO V_IRF
	VALUES (1083,
	1069);
INSERT INTO V_VAL
	VALUES (1086,
	1,
	0,
	13,
	3,
	13,
	0,
	0,
	0,
	0,
	133,
	1060);
INSERT INTO V_TVL
	VALUES (1086,
	1070);
INSERT INTO V_VAL
	VALUES (1087,
	0,
	0,
	13,
	17,
	23,
	0,
	0,
	0,
	0,
	300,
	1060);
INSERT INTO V_IRF
	VALUES (1087,
	1082);
INSERT INTO V_VAL
	VALUES (1088,
	0,
	0,
	13,
	25,
	43,
	0,
	0,
	0,
	0,
	133,
	1060);
INSERT INTO V_AVL
	VALUES (1088,
	1087,
	349,
	745);
INSERT INTO V_VAL
	VALUES (1085,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	133,
	1060);
INSERT INTO V_BIN
	VALUES (1085,
	1089,
	1088,
	'-');
INSERT INTO V_VAL
	VALUES (1090,
	0,
	0,
	13,
	47,
	50,
	0,
	0,
	0,
	0,
	300,
	1060);
INSERT INTO V_IRF
	VALUES (1090,
	1069);
INSERT INTO V_VAL
	VALUES (1089,
	0,
	0,
	13,
	52,
	56,
	0,
	0,
	0,
	0,
	133,
	1060);
INSERT INTO V_AVL
	VALUES (1089,
	1090,
	492,
	948);
INSERT INTO V_VAR
	VALUES (1082,
	1060,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (1082,
	0,
	349);
INSERT INTO ACT_BLK
	VALUES (1063,
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
	1049,
	0);
INSERT INTO ACT_SMT
	VALUES (1091,
	1063,
	1092,
	15,
	3,
	'Goal::evaluateCompletion line: 15');
INSERT INTO ACT_SEL
	VALUES (1091,
	1093,
	1,
	'one',
	1094);
INSERT INTO ACT_SR
	VALUES (1091);
INSERT INTO ACT_LNK
	VALUES (1095,
	'''is currently executing within''',
	1091,
	496,
	1096,
	2,
	349,
	16,
	11,
	16,
	26,
	16,
	30);
INSERT INTO ACT_LNK
	VALUES (1096,
	'''is timed by''',
	0,
	480,
	0,
	2,
	364,
	16,
	64,
	16,
	77,
	16,
	80);
INSERT INTO ACT_SMT
	VALUES (1092,
	1063,
	0,
	17,
	3,
	'Goal::evaluateCompletion line: 17');
INSERT INTO ACT_AI
	VALUES (1092,
	1097,
	1098,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1094,
	0,
	0,
	16,
	5,
	8,
	0,
	0,
	0,
	0,
	300,
	1063);
INSERT INTO V_IRF
	VALUES (1094,
	1069);
INSERT INTO V_VAL
	VALUES (1098,
	1,
	0,
	17,
	3,
	13,
	0,
	0,
	0,
	0,
	133,
	1063);
INSERT INTO V_TVL
	VALUES (1098,
	1070);
INSERT INTO V_VAL
	VALUES (1099,
	0,
	0,
	17,
	17,
	28,
	0,
	0,
	0,
	0,
	300,
	1063);
INSERT INTO V_IRF
	VALUES (1099,
	1093);
INSERT INTO V_VAL
	VALUES (1100,
	0,
	0,
	17,
	30,
	33,
	0,
	0,
	0,
	0,
	188,
	1063);
INSERT INTO V_AVL
	VALUES (1100,
	1099,
	364,
	669);
INSERT INTO V_VAL
	VALUES (1097,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	133,
	1063);
INSERT INTO V_BIN
	VALUES (1097,
	1101,
	1100,
	'-');
INSERT INTO V_VAL
	VALUES (1102,
	0,
	0,
	17,
	37,
	40,
	0,
	0,
	0,
	0,
	300,
	1063);
INSERT INTO V_IRF
	VALUES (1102,
	1069);
INSERT INTO V_VAL
	VALUES (1101,
	0,
	0,
	17,
	42,
	46,
	0,
	0,
	0,
	0,
	133,
	1063);
INSERT INTO V_AVL
	VALUES (1101,
	1102,
	492,
	948);
INSERT INTO V_VAR
	VALUES (1093,
	1063,
	'workoutTimer',
	1,
	300);
INSERT INTO V_INT
	VALUES (1093,
	0,
	364);
INSERT INTO ACT_BLK
	VALUES (1066,
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
	1049,
	0);
INSERT INTO ACT_SMT
	VALUES (1103,
	1066,
	0,
	19,
	3,
	'Goal::evaluateCompletion line: 19');
INSERT INTO ACT_BRG
	VALUES (1103,
	374,
	19,
	8,
	19,
	3);
INSERT INTO V_VAL
	VALUES (1104,
	0,
	0,
	19,
	29,
	77,
	0,
	0,
	0,
	0,
	296,
	1066);
INSERT INTO V_LST
	VALUES (1104,
	'Goal.evaluateCompletion: Unknown Goal Span Type.');
INSERT INTO V_PAR
	VALUES (1104,
	1103,
	0,
	'message',
	0,
	19,
	20);
INSERT INTO ACT_BLK
	VALUES (1067,
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
	1049,
	0);
INSERT INTO ACT_SMT
	VALUES (1105,
	1067,
	1106,
	25,
	3,
	'Goal::evaluateCompletion line: 25');
INSERT INTO ACT_SEL
	VALUES (1105,
	1107,
	1,
	'one',
	1108);
INSERT INTO ACT_SR
	VALUES (1105);
INSERT INTO ACT_LNK
	VALUES (1109,
	'''has open''',
	1105,
	506,
	0,
	2,
	501,
	25,
	47,
	25,
	59,
	25,
	63);
INSERT INTO ACT_SMT
	VALUES (1106,
	1067,
	1110,
	26,
	3,
	'Goal::evaluateCompletion line: 26');
INSERT INTO ACT_IF
	VALUES (1106,
	1111,
	1112,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1110,
	1067,
	0,
	29,
	3,
	'Goal::evaluateCompletion line: 29');
INSERT INTO E_ESS
	VALUES (1110,
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
	VALUES (1110);
INSERT INTO E_GSME
	VALUES (1110,
	1113);
INSERT INTO E_GEN
	VALUES (1110,
	1069);
INSERT INTO V_VAL
	VALUES (1108,
	0,
	0,
	25,
	41,
	44,
	0,
	0,
	0,
	0,
	300,
	1067);
INSERT INTO V_IRF
	VALUES (1108,
	1069);
INSERT INTO V_VAL
	VALUES (1114,
	0,
	0,
	26,
	18,
	32,
	0,
	0,
	0,
	0,
	300,
	1067);
INSERT INTO V_IRF
	VALUES (1114,
	1107);
INSERT INTO V_VAL
	VALUES (1115,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1067);
INSERT INTO V_UNY
	VALUES (1115,
	1114,
	'empty');
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
	295,
	1067);
INSERT INTO V_UNY
	VALUES (1112,
	1115,
	'not');
INSERT INTO V_VAR
	VALUES (1107,
	1067,
	'openAchievement',
	1,
	300);
INSERT INTO V_INT
	VALUES (1107,
	0,
	501);
INSERT INTO ACT_BLK
	VALUES (1111,
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
	1049,
	0);
INSERT INTO ACT_SMT
	VALUES (1116,
	1111,
	0,
	27,
	5,
	'Goal::evaluateCompletion line: 27');
INSERT INTO ACT_TFM
	VALUES (1116,
	648,
	1107,
	27,
	21,
	0,
	0);
INSERT INTO O_TFR
	VALUES (398,
	492,
	'nextGoal',
	'',
	294,
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
    Goal::create( sequenceNumber: GoalSpecOrigin );
  end if;
end if;',
	1,
	'',
	1048);
INSERT INTO ACT_OPB
	VALUES (1117,
	398);
INSERT INTO ACT_ACT
	VALUES (1117,
	'class operation',
	0,
	1118,
	0,
	0,
	'Goal::nextGoal',
	0);
INSERT INTO ACT_BLK
	VALUES (1118,
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
	1117,
	0);
INSERT INTO ACT_SMT
	VALUES (1119,
	1118,
	1120,
	8,
	1,
	'Goal::nextGoal line: 8');
INSERT INTO ACT_FIO
	VALUES (1119,
	1121,
	1,
	'any',
	349,
	8,
	38);
INSERT INTO ACT_SMT
	VALUES (1120,
	1118,
	0,
	9,
	1,
	'Goal::nextGoal line: 9');
INSERT INTO ACT_IF
	VALUES (1120,
	1122,
	1123,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1124,
	0,
	0,
	9,
	16,
	22,
	0,
	0,
	0,
	0,
	300,
	1118);
INSERT INTO V_IRF
	VALUES (1124,
	1121);
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
	295,
	1118);
INSERT INTO V_UNY
	VALUES (1125,
	1124,
	'empty');
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
	295,
	1118);
INSERT INTO V_UNY
	VALUES (1123,
	1125,
	'not');
INSERT INTO V_VAR
	VALUES (1121,
	1118,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (1121,
	0,
	349);
INSERT INTO ACT_BLK
	VALUES (1122,
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
	1117,
	0);
INSERT INTO ACT_SMT
	VALUES (1126,
	1122,
	1127,
	10,
	3,
	'Goal::nextGoal line: 10');
INSERT INTO ACT_SEL
	VALUES (1126,
	1128,
	1,
	'one',
	1129);
INSERT INTO ACT_SR
	VALUES (1126);
INSERT INTO ACT_LNK
	VALUES (1130,
	'''is currently executing''',
	1126,
	496,
	0,
	2,
	492,
	10,
	39,
	10,
	44,
	10,
	48);
INSERT INTO ACT_SMT
	VALUES (1127,
	1122,
	0,
	11,
	3,
	'Goal::nextGoal line: 11');
INSERT INTO ACT_IF
	VALUES (1127,
	1131,
	1132,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1133,
	1122,
	0,
	13,
	3,
	'Goal::nextGoal line: 13');
INSERT INTO ACT_E
	VALUES (1133,
	1134,
	1127);
INSERT INTO V_VAL
	VALUES (1129,
	0,
	0,
	10,
	30,
	36,
	0,
	0,
	0,
	0,
	300,
	1122);
INSERT INTO V_IRF
	VALUES (1129,
	1121);
INSERT INTO V_VAL
	VALUES (1135,
	0,
	0,
	11,
	18,
	21,
	0,
	0,
	0,
	0,
	300,
	1122);
INSERT INTO V_IRF
	VALUES (1135,
	1128);
INSERT INTO V_VAL
	VALUES (1136,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1122);
INSERT INTO V_UNY
	VALUES (1136,
	1135,
	'empty');
INSERT INTO V_VAL
	VALUES (1132,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1122);
INSERT INTO V_UNY
	VALUES (1132,
	1136,
	'not');
INSERT INTO V_VAR
	VALUES (1128,
	1122,
	'goal',
	1,
	300);
INSERT INTO V_INT
	VALUES (1128,
	0,
	492);
INSERT INTO ACT_BLK
	VALUES (1131,
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
	1117,
	0);
INSERT INTO ACT_SMT
	VALUES (1137,
	1131,
	0,
	12,
	5,
	'Goal::nextGoal line: 12');
INSERT INTO E_ESS
	VALUES (1137,
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
	VALUES (1137);
INSERT INTO E_GSME
	VALUES (1137,
	1113);
INSERT INTO E_GEN
	VALUES (1137,
	1128);
INSERT INTO ACT_BLK
	VALUES (1134,
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
	1117,
	0);
INSERT INTO ACT_SMT
	VALUES (1138,
	1134,
	0,
	14,
	5,
	'Goal::nextGoal line: 14');
INSERT INTO ACT_TFM
	VALUES (1138,
	880,
	0,
	14,
	11,
	14,
	5);
INSERT INTO V_VAL
	VALUES (1139,
	0,
	0,
	14,
	35,
	48,
	0,
	0,
	0,
	0,
	188,
	1134);
INSERT INTO V_SCV
	VALUES (1139,
	1140,
	188);
INSERT INTO V_PAR
	VALUES (1139,
	1138,
	0,
	'sequenceNumber',
	0,
	14,
	19);
INSERT INTO O_NBATTR
	VALUES (703,
	492);
INSERT INTO O_BATTR
	VALUES (703,
	492);
INSERT INTO O_ATTR
	VALUES (703,
	492,
	948,
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
	702,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (948,
	492);
INSERT INTO O_BATTR
	VALUES (948,
	492);
INSERT INTO O_ATTR
	VALUES (948,
	492,
	1141,
	'start',
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
	'start',
	0,
	133,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1141,
	492);
INSERT INTO O_BATTR
	VALUES (1141,
	492);
INSERT INTO O_ATTR
	VALUES (1141,
	492,
	0,
	'ID',
	'An arbitrary identifier.',
	'',
	'ID',
	0,
	297,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1142,
	492);
INSERT INTO O_BATTR
	VALUES (1142,
	492);
INSERT INTO O_ATTR
	VALUES (1142,
	492,
	914,
	'current_state',
	'',
	'',
	'current_state',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (914,
	492);
INSERT INTO O_BATTR
	VALUES (914,
	492);
INSERT INTO O_ATTR
	VALUES (914,
	492,
	703,
	'evaluationTimer',
	'Handle for the timer used for periodic evaluation of goal achievement.',
	'',
	'evaluationTimer',
	0,
	307,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	492);
INSERT INTO O_ID
	VALUES (1,
	492);
INSERT INTO O_ID
	VALUES (2,
	492);
INSERT INTO SM_ISM
	VALUES (1143,
	492);
INSERT INTO SM_SM
	VALUES (1143,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (1143);
INSERT INTO SM_LEVT
	VALUES (1113,
	1143,
	0);
INSERT INTO SM_SEVT
	VALUES (1113,
	1143,
	0);
INSERT INTO SM_EVT
	VALUES (1113,
	1143,
	0,
	1,
	'Completed',
	0,
	'',
	'Goal1',
	'Indicates that execution of this goal has been completed.  ');
INSERT INTO SM_LEVT
	VALUES (909,
	1143,
	0);
INSERT INTO SM_SEVT
	VALUES (909,
	1143,
	0);
INSERT INTO SM_EVT
	VALUES (909,
	1143,
	0,
	2,
	'Evaluate',
	0,
	'',
	'Goal2',
	'Indicates that this goal should be evaluated for completeness and achievement.');
INSERT INTO SM_LEVT
	VALUES (1144,
	1143,
	0);
INSERT INTO SM_SEVT
	VALUES (1144,
	1143,
	0);
INSERT INTO SM_EVT
	VALUES (1144,
	1143,
	0,
	3,
	'Pause',
	0,
	'',
	'Goal3',
	'');
INSERT INTO SM_STATE
	VALUES (1145,
	1143,
	0,
	'Executing',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (1145,
	1113,
	1143,
	0);
INSERT INTO SM_SEME
	VALUES (1145,
	909,
	1143,
	0);
INSERT INTO SM_SEME
	VALUES (1145,
	1144,
	1143,
	0);
INSERT INTO SM_MOAH
	VALUES (1146,
	1143,
	1145);
INSERT INTO SM_AH
	VALUES (1146,
	1143);
INSERT INTO SM_ACT
	VALUES (1146,
	1143,
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
	VALUES (1147,
	1143,
	1146);
INSERT INTO ACT_ACT
	VALUES (1147,
	'state',
	0,
	1148,
	0,
	0,
	'Goal::Executing',
	0);
INSERT INTO ACT_BLK
	VALUES (1148,
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
	1147,
	0);
INSERT INTO ACT_SMT
	VALUES (1149,
	1148,
	1150,
	2,
	1,
	'Goal::Executing line: 2');
INSERT INTO ACT_AI
	VALUES (1149,
	1151,
	1152,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1150,
	1148,
	1153,
	12,
	1,
	'Goal::Executing line: 12');
INSERT INTO ACT_IF
	VALUES (1150,
	1154,
	1155,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1156,
	1148,
	0,
	19,
	1,
	'Goal::Executing line: 19');
INSERT INTO ACT_EL
	VALUES (1156,
	1157,
	1158,
	1150);
INSERT INTO ACT_SMT
	VALUES (1153,
	1148,
	1159,
	26,
	1,
	'Goal::Executing line: 26');
INSERT INTO ACT_AI
	VALUES (1153,
	1160,
	1161,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1159,
	1148,
	0,
	30,
	1,
	'Goal::Executing line: 30');
INSERT INTO ACT_TFM
	VALUES (1159,
	1048,
	1162,
	30,
	6,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1152,
	1,
	1,
	2,
	1,
	11,
	0,
	0,
	0,
	0,
	702,
	1148);
INSERT INTO V_TVL
	VALUES (1152,
	1163);
INSERT INTO V_VAL
	VALUES (1151,
	0,
	0,
	2,
	20,
	-1,
	0,
	0,
	0,
	0,
	702,
	1148);
INSERT INTO V_TRV
	VALUES (1151,
	961,
	1162,
	1,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1164,
	0,
	0,
	12,
	7,
	10,
	0,
	0,
	0,
	0,
	300,
	1148);
INSERT INTO V_IRF
	VALUES (1164,
	1162);
INSERT INTO V_VAL
	VALUES (1165,
	0,
	0,
	12,
	12,
	22,
	0,
	0,
	0,
	0,
	702,
	1148);
INSERT INTO V_AVL
	VALUES (1165,
	1164,
	492,
	703);
INSERT INTO V_VAL
	VALUES (1166,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1148);
INSERT INTO V_BIN
	VALUES (1166,
	1167,
	1165,
	'!=');
INSERT INTO V_VAL
	VALUES (1167,
	0,
	0,
	12,
	44,
	52,
	0,
	0,
	0,
	0,
	702,
	1148);
INSERT INTO V_LEN
	VALUES (1167,
	1006,
	12,
	27);
INSERT INTO V_VAL
	VALUES (1168,
	0,
	0,
	12,
	60,
	70,
	0,
	0,
	0,
	0,
	702,
	1148);
INSERT INTO V_TVL
	VALUES (1168,
	1163);
INSERT INTO V_VAL
	VALUES (1169,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1148);
INSERT INTO V_BIN
	VALUES (1169,
	1170,
	1168,
	'==');
INSERT INTO V_VAL
	VALUES (1170,
	0,
	0,
	12,
	92,
	100,
	0,
	0,
	0,
	0,
	702,
	1148);
INSERT INTO V_LEN
	VALUES (1170,
	1006,
	12,
	75);
INSERT INTO V_VAL
	VALUES (1155,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1148);
INSERT INTO V_BIN
	VALUES (1155,
	1169,
	1166,
	'and');
INSERT INTO V_VAL
	VALUES (1171,
	0,
	0,
	19,
	9,
	12,
	0,
	0,
	0,
	0,
	300,
	1148);
INSERT INTO V_IRF
	VALUES (1171,
	1162);
INSERT INTO V_VAL
	VALUES (1172,
	0,
	0,
	19,
	14,
	24,
	0,
	0,
	0,
	0,
	702,
	1148);
INSERT INTO V_AVL
	VALUES (1172,
	1171,
	492,
	703);
INSERT INTO V_VAL
	VALUES (1173,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1148);
INSERT INTO V_BIN
	VALUES (1173,
	1174,
	1172,
	'==');
INSERT INTO V_VAL
	VALUES (1174,
	0,
	0,
	19,
	46,
	54,
	0,
	0,
	0,
	0,
	702,
	1148);
INSERT INTO V_LEN
	VALUES (1174,
	1006,
	19,
	29);
INSERT INTO V_VAL
	VALUES (1175,
	0,
	0,
	19,
	62,
	72,
	0,
	0,
	0,
	0,
	702,
	1148);
INSERT INTO V_TVL
	VALUES (1175,
	1163);
INSERT INTO V_VAL
	VALUES (1176,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1148);
INSERT INTO V_BIN
	VALUES (1176,
	1177,
	1175,
	'!=');
INSERT INTO V_VAL
	VALUES (1177,
	0,
	0,
	19,
	94,
	102,
	0,
	0,
	0,
	0,
	702,
	1148);
INSERT INTO V_LEN
	VALUES (1177,
	1006,
	19,
	77);
INSERT INTO V_VAL
	VALUES (1158,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1148);
INSERT INTO V_BIN
	VALUES (1158,
	1176,
	1173,
	'and');
INSERT INTO V_VAL
	VALUES (1178,
	1,
	0,
	26,
	1,
	4,
	0,
	0,
	0,
	0,
	300,
	1148);
INSERT INTO V_IRF
	VALUES (1178,
	1162);
INSERT INTO V_VAL
	VALUES (1161,
	1,
	0,
	26,
	6,
	16,
	0,
	0,
	0,
	0,
	702,
	1148);
INSERT INTO V_AVL
	VALUES (1161,
	1178,
	492,
	703);
INSERT INTO V_VAL
	VALUES (1160,
	0,
	0,
	26,
	20,
	30,
	0,
	0,
	0,
	0,
	702,
	1148);
INSERT INTO V_TVL
	VALUES (1160,
	1163);
INSERT INTO V_VAR
	VALUES (1163,
	1148,
	'disposition',
	1,
	702);
INSERT INTO V_TRN
	VALUES (1163,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1162,
	1148,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1162,
	0,
	492);
INSERT INTO ACT_BLK
	VALUES (1154,
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
	1147,
	0);
INSERT INTO ACT_SMT
	VALUES (1179,
	1154,
	1180,
	14,
	3,
	'Goal::Executing line: 14');
INSERT INTO ACT_CR
	VALUES (1179,
	1181,
	1,
	501,
	14,
	41);
INSERT INTO ACT_SMT
	VALUES (1180,
	1154,
	1182,
	15,
	3,
	'Goal::Executing line: 15');
INSERT INTO ACT_REL
	VALUES (1180,
	1162,
	1181,
	'''has open''',
	506,
	15,
	37,
	15,
	41);
INSERT INTO ACT_SMT
	VALUES (1182,
	1154,
	1183,
	16,
	3,
	'Goal::Executing line: 16');
INSERT INTO ACT_SEL
	VALUES (1182,
	1184,
	1,
	'one',
	1185);
INSERT INTO ACT_SR
	VALUES (1182);
INSERT INTO ACT_LNK
	VALUES (1186,
	'''is currently executing within''',
	1182,
	496,
	1187,
	2,
	349,
	17,
	11,
	17,
	26,
	17,
	30);
INSERT INTO ACT_LNK
	VALUES (1187,
	'''is timed by''',
	0,
	480,
	0,
	2,
	364,
	17,
	64,
	17,
	77,
	17,
	80);
INSERT INTO ACT_SMT
	VALUES (1183,
	1154,
	0,
	18,
	3,
	'Goal::Executing line: 18');
INSERT INTO ACT_AI
	VALUES (1183,
	1188,
	1189,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1185,
	0,
	0,
	17,
	5,
	8,
	0,
	0,
	0,
	0,
	300,
	1154);
INSERT INTO V_IRF
	VALUES (1185,
	1162);
INSERT INTO V_VAL
	VALUES (1190,
	1,
	0,
	18,
	3,
	13,
	0,
	0,
	0,
	0,
	300,
	1154);
INSERT INTO V_IRF
	VALUES (1190,
	1181);
INSERT INTO V_VAL
	VALUES (1189,
	1,
	0,
	18,
	15,
	23,
	0,
	0,
	0,
	0,
	188,
	1154);
INSERT INTO V_AVL
	VALUES (1189,
	1190,
	501,
	670);
INSERT INTO V_VAL
	VALUES (1191,
	0,
	0,
	18,
	27,
	38,
	0,
	0,
	0,
	0,
	300,
	1154);
INSERT INTO V_IRF
	VALUES (1191,
	1184);
INSERT INTO V_VAL
	VALUES (1188,
	0,
	0,
	18,
	40,
	43,
	0,
	0,
	0,
	0,
	188,
	1154);
INSERT INTO V_AVL
	VALUES (1188,
	1191,
	364,
	669);
INSERT INTO V_VAR
	VALUES (1181,
	1154,
	'achievement',
	1,
	300);
INSERT INTO V_INT
	VALUES (1181,
	0,
	501);
INSERT INTO V_VAR
	VALUES (1184,
	1154,
	'workoutTimer',
	1,
	300);
INSERT INTO V_INT
	VALUES (1184,
	0,
	364);
INSERT INTO ACT_BLK
	VALUES (1157,
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
	1147,
	0);
INSERT INTO ACT_SMT
	VALUES (1192,
	1157,
	1193,
	21,
	3,
	'Goal::Executing line: 21');
INSERT INTO ACT_SEL
	VALUES (1192,
	1194,
	1,
	'one',
	1195);
INSERT INTO ACT_SR
	VALUES (1192);
INSERT INTO ACT_LNK
	VALUES (1196,
	'''has open''',
	1192,
	506,
	0,
	2,
	501,
	21,
	43,
	21,
	55,
	21,
	59);
INSERT INTO ACT_SMT
	VALUES (1193,
	1157,
	0,
	22,
	3,
	'Goal::Executing line: 22');
INSERT INTO ACT_TFM
	VALUES (1193,
	648,
	1194,
	22,
	15,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1195,
	0,
	0,
	21,
	37,
	40,
	0,
	0,
	0,
	0,
	300,
	1157);
INSERT INTO V_IRF
	VALUES (1195,
	1162);
INSERT INTO V_VAR
	VALUES (1194,
	1157,
	'achievement',
	1,
	300);
INSERT INTO V_INT
	VALUES (1194,
	0,
	501);
INSERT INTO SM_STATE
	VALUES (1197,
	1143,
	0,
	'Completed',
	2,
	0);
INSERT INTO SM_EIGN
	VALUES (1197,
	1113,
	1143,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1197,
	1113,
	1143,
	0);
INSERT INTO SM_EIGN
	VALUES (1197,
	909,
	1143,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1197,
	909,
	1143,
	0);
INSERT INTO SM_CH
	VALUES (1197,
	1144,
	1143,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1197,
	1144,
	1143,
	0);
INSERT INTO SM_MOAH
	VALUES (1198,
	1143,
	1197);
INSERT INTO SM_AH
	VALUES (1198,
	1143);
INSERT INTO SM_ACT
	VALUES (1198,
	1143,
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
  Goal::create( sequenceNumber: nextGoalSpec.sequenceNumber );
end if;
',
	'');
INSERT INTO ACT_SAB
	VALUES (1199,
	1143,
	1198);
INSERT INTO ACT_ACT
	VALUES (1199,
	'state',
	0,
	1200,
	0,
	0,
	'Goal::Completed',
	0);
INSERT INTO ACT_BLK
	VALUES (1200,
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
	1199,
	0);
INSERT INTO ACT_SMT
	VALUES (1201,
	1200,
	1202,
	5,
	1,
	'Goal::Completed line: 5');
INSERT INTO ACT_AI
	VALUES (1201,
	1203,
	1204,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1202,
	1200,
	1205,
	8,
	1,
	'Goal::Completed line: 8');
INSERT INTO ACT_SEL
	VALUES (1202,
	1206,
	1,
	'one',
	1207);
INSERT INTO ACT_SR
	VALUES (1202);
INSERT INTO ACT_LNK
	VALUES (1208,
	'''has open''',
	1202,
	506,
	0,
	2,
	501,
	8,
	45,
	8,
	57,
	8,
	61);
INSERT INTO ACT_SMT
	VALUES (1205,
	1200,
	1209,
	9,
	1,
	'Goal::Completed line: 9');
INSERT INTO ACT_IF
	VALUES (1205,
	1210,
	1211,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1209,
	1200,
	1212,
	14,
	1,
	'Goal::Completed line: 14');
INSERT INTO ACT_SEL
	VALUES (1209,
	1213,
	1,
	'one',
	1214);
INSERT INTO ACT_SR
	VALUES (1209);
INSERT INTO ACT_LNK
	VALUES (1215,
	'''is currently executing within''',
	1209,
	496,
	0,
	2,
	349,
	14,
	37,
	14,
	52,
	14,
	56);
INSERT INTO ACT_SMT
	VALUES (1212,
	1200,
	1216,
	15,
	1,
	'Goal::Completed line: 15');
INSERT INTO ACT_REL
	VALUES (1212,
	1217,
	1213,
	'''was executed within''',
	503,
	15,
	31,
	15,
	35);
INSERT INTO ACT_SMT
	VALUES (1216,
	1200,
	1218,
	18,
	1,
	'Goal::Completed line: 18');
INSERT INTO ACT_UNR
	VALUES (1216,
	1217,
	1213,
	'''is currently executing within''',
	496,
	18,
	35,
	18,
	39);
INSERT INTO ACT_SMT
	VALUES (1218,
	1200,
	1219,
	21,
	1,
	'Goal::Completed line: 21');
INSERT INTO ACT_SEL
	VALUES (1218,
	1220,
	1,
	'one',
	1221);
INSERT INTO ACT_SR
	VALUES (1218);
INSERT INTO ACT_LNK
	VALUES (1222,
	'''specified by''',
	1218,
	490,
	0,
	2,
	421,
	21,
	45,
	21,
	54,
	21,
	57);
INSERT INTO ACT_SMT
	VALUES (1219,
	1200,
	1223,
	23,
	1,
	'Goal::Completed line: 23');
INSERT INTO ACT_SEL
	VALUES (1219,
	1224,
	1,
	'any',
	1225);
INSERT INTO ACT_SRW
	VALUES (1219,
	1226);
INSERT INTO ACT_LNK
	VALUES (1227,
	'''includes''',
	1219,
	440,
	0,
	3,
	421,
	23,
	45,
	23,
	54,
	23,
	58);
INSERT INTO ACT_SMT
	VALUES (1223,
	1200,
	0,
	26,
	1,
	'Goal::Completed line: 26');
INSERT INTO ACT_IF
	VALUES (1223,
	1228,
	1229,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1204,
	1,
	1,
	5,
	1,
	15,
	0,
	0,
	0,
	0,
	295,
	1200);
INSERT INTO V_TVL
	VALUES (1204,
	1230);
INSERT INTO V_VAL
	VALUES (1203,
	0,
	0,
	5,
	24,
	-1,
	5,
	38,
	0,
	0,
	295,
	1200);
INSERT INTO V_BRV
	VALUES (1203,
	604,
	1,
	5,
	19);
INSERT INTO V_VAL
	VALUES (1231,
	0,
	0,
	5,
	54,
	57,
	0,
	0,
	0,
	0,
	300,
	1200);
INSERT INTO V_IRF
	VALUES (1231,
	1217);
INSERT INTO V_VAL
	VALUES (1232,
	0,
	0,
	5,
	59,
	73,
	0,
	0,
	0,
	0,
	307,
	1200);
INSERT INTO V_AVL
	VALUES (1232,
	1231,
	492,
	914);
INSERT INTO V_PAR
	VALUES (1232,
	0,
	1203,
	'timer_inst_ref',
	0,
	5,
	38);
INSERT INTO V_VAL
	VALUES (1207,
	0,
	0,
	8,
	39,
	42,
	0,
	0,
	0,
	0,
	300,
	1200);
INSERT INTO V_IRF
	VALUES (1207,
	1217);
INSERT INTO V_VAL
	VALUES (1233,
	0,
	0,
	9,
	16,
	30,
	0,
	0,
	0,
	0,
	300,
	1200);
INSERT INTO V_IRF
	VALUES (1233,
	1206);
INSERT INTO V_VAL
	VALUES (1234,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1200);
INSERT INTO V_UNY
	VALUES (1234,
	1233,
	'empty');
INSERT INTO V_VAL
	VALUES (1211,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1200);
INSERT INTO V_UNY
	VALUES (1211,
	1234,
	'not');
INSERT INTO V_VAL
	VALUES (1214,
	0,
	0,
	14,
	31,
	34,
	0,
	0,
	0,
	0,
	300,
	1200);
INSERT INTO V_IRF
	VALUES (1214,
	1217);
INSERT INTO V_VAL
	VALUES (1221,
	0,
	0,
	21,
	39,
	42,
	0,
	0,
	0,
	0,
	300,
	1200);
INSERT INTO V_IRF
	VALUES (1221,
	1217);
INSERT INTO V_VAL
	VALUES (1225,
	0,
	0,
	23,
	36,
	42,
	0,
	0,
	0,
	0,
	300,
	1200);
INSERT INTO V_IRF
	VALUES (1225,
	1213);
INSERT INTO V_VAL
	VALUES (1235,
	0,
	0,
	24,
	11,
	-1,
	0,
	0,
	0,
	0,
	300,
	1200);
INSERT INTO V_SLR
	VALUES (1235,
	0,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1236,
	0,
	0,
	24,
	20,
	33,
	0,
	0,
	0,
	0,
	188,
	1200);
INSERT INTO V_AVL
	VALUES (1236,
	1235,
	421,
	442);
INSERT INTO V_VAL
	VALUES (1226,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1200);
INSERT INTO V_BIN
	VALUES (1226,
	1237,
	1236,
	'==');
INSERT INTO V_VAL
	VALUES (1238,
	0,
	0,
	24,
	39,
	53,
	0,
	0,
	0,
	0,
	300,
	1200);
INSERT INTO V_IRF
	VALUES (1238,
	1220);
INSERT INTO V_VAL
	VALUES (1239,
	0,
	0,
	24,
	55,
	68,
	0,
	0,
	0,
	0,
	188,
	1200);
INSERT INTO V_AVL
	VALUES (1239,
	1238,
	421,
	442);
INSERT INTO V_VAL
	VALUES (1237,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	188,
	1200);
INSERT INTO V_BIN
	VALUES (1237,
	1240,
	1239,
	'+');
INSERT INTO V_VAL
	VALUES (1240,
	0,
	0,
	24,
	72,
	72,
	0,
	0,
	0,
	0,
	188,
	1200);
INSERT INTO V_LIN
	VALUES (1240,
	'1');
INSERT INTO V_VAL
	VALUES (1241,
	0,
	0,
	26,
	16,
	27,
	0,
	0,
	0,
	0,
	300,
	1200);
INSERT INTO V_IRF
	VALUES (1241,
	1224);
INSERT INTO V_VAL
	VALUES (1242,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1200);
INSERT INTO V_UNY
	VALUES (1242,
	1241,
	'empty');
INSERT INTO V_VAL
	VALUES (1229,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1200);
INSERT INTO V_UNY
	VALUES (1229,
	1242,
	'not');
INSERT INTO V_VAR
	VALUES (1230,
	1200,
	'cancelSucceeded',
	1,
	295);
INSERT INTO V_TRN
	VALUES (1230,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1217,
	1200,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1217,
	0,
	492);
INSERT INTO V_VAR
	VALUES (1206,
	1200,
	'openAchievement',
	1,
	300);
INSERT INTO V_INT
	VALUES (1206,
	0,
	501);
INSERT INTO V_VAR
	VALUES (1213,
	1200,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (1213,
	0,
	349);
INSERT INTO V_VAR
	VALUES (1220,
	1200,
	'currentGoalSpec',
	1,
	300);
INSERT INTO V_INT
	VALUES (1220,
	0,
	421);
INSERT INTO V_VAR
	VALUES (1224,
	1200,
	'nextGoalSpec',
	1,
	300);
INSERT INTO V_INT
	VALUES (1224,
	0,
	421);
INSERT INTO ACT_BLK
	VALUES (1210,
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
	1199,
	0);
INSERT INTO ACT_SMT
	VALUES (1243,
	1210,
	0,
	10,
	3,
	'Goal::Completed line: 10');
INSERT INTO ACT_TFM
	VALUES (1243,
	648,
	1206,
	10,
	19,
	0,
	0);
INSERT INTO ACT_BLK
	VALUES (1228,
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
	1199,
	0);
INSERT INTO ACT_SMT
	VALUES (1244,
	1228,
	0,
	27,
	3,
	'Goal::Completed line: 27');
INSERT INTO ACT_TFM
	VALUES (1244,
	880,
	0,
	27,
	9,
	27,
	3);
INSERT INTO V_VAL
	VALUES (1245,
	0,
	0,
	27,
	33,
	44,
	0,
	0,
	0,
	0,
	300,
	1228);
INSERT INTO V_IRF
	VALUES (1245,
	1224);
INSERT INTO V_VAL
	VALUES (1246,
	0,
	0,
	27,
	46,
	59,
	0,
	0,
	0,
	0,
	188,
	1228);
INSERT INTO V_AVL
	VALUES (1246,
	1245,
	421,
	442);
INSERT INTO V_PAR
	VALUES (1246,
	1244,
	0,
	'sequenceNumber',
	0,
	27,
	17);
INSERT INTO SM_STATE
	VALUES (1247,
	1143,
	0,
	'Paused',
	3,
	0);
INSERT INTO SM_SEME
	VALUES (1247,
	1113,
	1143,
	0);
INSERT INTO SM_SEME
	VALUES (1247,
	909,
	1143,
	0);
INSERT INTO SM_CH
	VALUES (1247,
	1144,
	1143,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1247,
	1144,
	1143,
	0);
INSERT INTO SM_MOAH
	VALUES (1248,
	1143,
	1247);
INSERT INTO SM_AH
	VALUES (1248,
	1143);
INSERT INTO SM_ACT
	VALUES (1248,
	1143,
	1,
	'// Deactivate evaluation timer, ignoring the return code because this 
//   state model ignores any latent timer events.
cancelSucceeded = TIM::timer_cancel( timer_inst_ref: self.evaluationTimer );',
	'');
INSERT INTO ACT_SAB
	VALUES (1249,
	1143,
	1248);
INSERT INTO ACT_ACT
	VALUES (1249,
	'state',
	0,
	1250,
	0,
	0,
	'Goal::Paused',
	0);
INSERT INTO ACT_BLK
	VALUES (1250,
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
	1249,
	0);
INSERT INTO ACT_SMT
	VALUES (1251,
	1250,
	0,
	3,
	1,
	'Goal::Paused line: 3');
INSERT INTO ACT_AI
	VALUES (1251,
	1252,
	1253,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1253,
	1,
	1,
	3,
	1,
	15,
	0,
	0,
	0,
	0,
	295,
	1250);
INSERT INTO V_TVL
	VALUES (1253,
	1254);
INSERT INTO V_VAL
	VALUES (1252,
	0,
	0,
	3,
	24,
	-1,
	3,
	38,
	0,
	0,
	295,
	1250);
INSERT INTO V_BRV
	VALUES (1252,
	604,
	1,
	3,
	19);
INSERT INTO V_VAL
	VALUES (1255,
	0,
	0,
	3,
	54,
	57,
	0,
	0,
	0,
	0,
	300,
	1250);
INSERT INTO V_IRF
	VALUES (1255,
	1256);
INSERT INTO V_VAL
	VALUES (1257,
	0,
	0,
	3,
	59,
	73,
	0,
	0,
	0,
	0,
	307,
	1250);
INSERT INTO V_AVL
	VALUES (1257,
	1255,
	492,
	914);
INSERT INTO V_PAR
	VALUES (1257,
	0,
	1252,
	'timer_inst_ref',
	0,
	3,
	38);
INSERT INTO V_VAR
	VALUES (1254,
	1250,
	'cancelSucceeded',
	1,
	295);
INSERT INTO V_TRN
	VALUES (1254,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1256,
	1250,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1256,
	0,
	492);
INSERT INTO SM_NSTXN
	VALUES (1258,
	1143,
	1145,
	1113,
	0);
INSERT INTO SM_TAH
	VALUES (1259,
	1143,
	1258);
INSERT INTO SM_AH
	VALUES (1259,
	1143);
INSERT INTO SM_ACT
	VALUES (1259,
	1143,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1260,
	1143,
	1259);
INSERT INTO ACT_ACT
	VALUES (1260,
	'transition',
	0,
	1261,
	0,
	0,
	'Goal1: Completed',
	0);
INSERT INTO ACT_BLK
	VALUES (1261,
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
	1260,
	0);
INSERT INTO SM_TXN
	VALUES (1258,
	1143,
	1197,
	0);
INSERT INTO SM_NSTXN
	VALUES (1262,
	1143,
	1145,
	909,
	0);
INSERT INTO SM_TAH
	VALUES (1263,
	1143,
	1262);
INSERT INTO SM_AH
	VALUES (1263,
	1143);
INSERT INTO SM_ACT
	VALUES (1263,
	1143,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1264,
	1143,
	1263);
INSERT INTO ACT_ACT
	VALUES (1264,
	'transition',
	0,
	1265,
	0,
	0,
	'Goal2: Evaluate',
	0);
INSERT INTO ACT_BLK
	VALUES (1265,
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
	1264,
	0);
INSERT INTO SM_TXN
	VALUES (1262,
	1143,
	1145,
	0);
INSERT INTO SM_NSTXN
	VALUES (1266,
	1143,
	1145,
	1144,
	0);
INSERT INTO SM_TAH
	VALUES (1267,
	1143,
	1266);
INSERT INTO SM_AH
	VALUES (1267,
	1143);
INSERT INTO SM_ACT
	VALUES (1267,
	1143,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1268,
	1143,
	1267);
INSERT INTO ACT_ACT
	VALUES (1268,
	'transition',
	0,
	1269,
	0,
	0,
	'Goal3: Pause',
	0);
INSERT INTO ACT_BLK
	VALUES (1269,
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
	1268,
	0);
INSERT INTO SM_TXN
	VALUES (1266,
	1143,
	1247,
	0);
INSERT INTO SM_NSTXN
	VALUES (1270,
	1143,
	1247,
	909,
	0);
INSERT INTO SM_TAH
	VALUES (1271,
	1143,
	1270);
INSERT INTO SM_AH
	VALUES (1271,
	1143);
INSERT INTO SM_ACT
	VALUES (1271,
	1143,
	1,
	'// Start a timer that periodically causes evaluation of goal achievement.
create event instance evaluateEvent of Goal2:Evaluate to self;
self.evaluationTimer = TIM::timer_start_recurring( event_inst: evaluateEvent, microseconds: evaluationPeriod );',
	'');
INSERT INTO ACT_TAB
	VALUES (1272,
	1143,
	1271);
INSERT INTO ACT_ACT
	VALUES (1272,
	'transition',
	0,
	1273,
	0,
	0,
	'Goal2: Evaluate',
	0);
INSERT INTO ACT_BLK
	VALUES (1273,
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
	1272,
	0);
INSERT INTO ACT_SMT
	VALUES (1274,
	1273,
	1275,
	2,
	1,
	'Goal2: Evaluate line: 2');
INSERT INTO E_ESS
	VALUES (1274,
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
	VALUES (1274,
	1,
	1276);
INSERT INTO E_CSME
	VALUES (1274,
	909);
INSERT INTO E_CEI
	VALUES (1274,
	1277);
INSERT INTO ACT_SMT
	VALUES (1275,
	1273,
	0,
	3,
	1,
	'Goal2: Evaluate line: 3');
INSERT INTO ACT_AI
	VALUES (1275,
	1278,
	1279,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1280,
	1,
	0,
	3,
	1,
	4,
	0,
	0,
	0,
	0,
	300,
	1273);
INSERT INTO V_IRF
	VALUES (1280,
	1277);
INSERT INTO V_VAL
	VALUES (1279,
	1,
	0,
	3,
	6,
	20,
	0,
	0,
	0,
	0,
	307,
	1273);
INSERT INTO V_AVL
	VALUES (1279,
	1280,
	492,
	914);
INSERT INTO V_VAL
	VALUES (1278,
	0,
	0,
	3,
	29,
	-1,
	3,
	52,
	3,
	79,
	307,
	1273);
INSERT INTO V_BRV
	VALUES (1278,
	585,
	1,
	3,
	24);
INSERT INTO V_VAL
	VALUES (1281,
	0,
	0,
	3,
	64,
	76,
	0,
	0,
	0,
	0,
	302,
	1273);
INSERT INTO V_TVL
	VALUES (1281,
	1276);
INSERT INTO V_PAR
	VALUES (1281,
	0,
	1278,
	'event_inst',
	1282,
	3,
	52);
INSERT INTO V_VAL
	VALUES (1282,
	0,
	0,
	3,
	93,
	108,
	0,
	0,
	0,
	0,
	188,
	1273);
INSERT INTO V_SCV
	VALUES (1282,
	917,
	188);
INSERT INTO V_PAR
	VALUES (1282,
	0,
	1278,
	'microseconds',
	0,
	3,
	79);
INSERT INTO V_VAR
	VALUES (1276,
	1273,
	'evaluateEvent',
	1,
	302);
INSERT INTO V_TRN
	VALUES (1276,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1277,
	1273,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1277,
	0,
	492);
INSERT INTO SM_TXN
	VALUES (1270,
	1143,
	1145,
	0);
INSERT INTO SM_NSTXN
	VALUES (1283,
	1143,
	1247,
	1113,
	0);
INSERT INTO SM_TAH
	VALUES (1284,
	1143,
	1283);
INSERT INTO SM_AH
	VALUES (1284,
	1143);
INSERT INTO SM_ACT
	VALUES (1284,
	1143,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1285,
	1143,
	1284);
INSERT INTO ACT_ACT
	VALUES (1285,
	'transition',
	0,
	1286,
	0,
	0,
	'Goal1: Completed',
	0);
INSERT INTO ACT_BLK
	VALUES (1286,
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
	1285,
	0);
INSERT INTO SM_TXN
	VALUES (1283,
	1143,
	1197,
	0);
INSERT INTO PE_PE
	VALUES (421,
	1,
	462,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (421,
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
	VALUES (445,
	421);
INSERT INTO O_BATTR
	VALUES (445,
	421);
INSERT INTO O_ATTR
	VALUES (445,
	421,
	442,
	'minimum',
	'The minimum value for the quantity associated with the goal.
For example, a minimum heart rate to be maintained.
The units (e.g., beats per minute or minutes per km) for this
attribute are determined by another attribute indicating the 
type of criteria for this goal.',
	'',
	'minimum',
	0,
	133,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (448,
	421);
INSERT INTO O_BATTR
	VALUES (448,
	421);
INSERT INTO O_ATTR
	VALUES (448,
	421,
	445,
	'maximum',
	'The maximum value for the quantity associated with the goal.
For example, a maximum pace to be maintained.
The units (e.g., beats per minute or minutes per km) for this
attribute are determined by another attribute indicating the 
type of criteria for this goal.',
	'',
	'maximum',
	0,
	133,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (451,
	421);
INSERT INTO O_BATTR
	VALUES (451,
	421);
INSERT INTO O_ATTR
	VALUES (451,
	421,
	448,
	'span',
	'The span of the goal.  For example, a time-based goal specifies a span
as a duration or length of time, while a distance-based goal uses specifies
a distance.  The units for this attribute (e.g., seconds or km) are specified 
by another attribute indicating the type of span.
',
	'',
	'span',
	0,
	133,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (454,
	421);
INSERT INTO O_BATTR
	VALUES (454,
	421);
INSERT INTO O_ATTR
	VALUES (454,
	421,
	451,
	'criteriaType',
	'See data type description.',
	'',
	'criteriaType',
	0,
	204,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (457,
	421);
INSERT INTO O_BATTR
	VALUES (457,
	421);
INSERT INTO O_ATTR
	VALUES (457,
	421,
	454,
	'spanType',
	'See data type description.',
	'',
	'spanType',
	0,
	207,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (442,
	421);
INSERT INTO O_BATTR
	VALUES (442,
	421);
INSERT INTO O_ATTR
	VALUES (442,
	421,
	0,
	'sequenceNumber',
	'Workout goals are sequenced according to a number specified by the user when the goal
is specified.  This attribute represents that user-specified number. ',
	'',
	'sequenceNumber',
	0,
	188,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	421);
INSERT INTO O_OIDA
	VALUES (442,
	421,
	0,
	'sequenceNumber');
INSERT INTO O_ID
	VALUES (1,
	421);
INSERT INTO O_ID
	VALUES (2,
	421);
INSERT INTO PE_PE
	VALUES (487,
	1,
	462,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (487,
	'HeartRateSample',
	5,
	'HeartRateSample',
	'Each instance represents a single heart-rate sample.',
	0);
INSERT INTO O_NBATTR
	VALUES (1287,
	487);
INSERT INTO O_BATTR
	VALUES (1287,
	487);
INSERT INTO O_ATTR
	VALUES (1287,
	487,
	0,
	'heartRate',
	'Heart rate expressed in beats per minute.',
	'',
	'heartRate',
	0,
	188,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1288,
	487);
INSERT INTO O_BATTR
	VALUES (1288,
	487);
INSERT INTO O_ATTR
	VALUES (1288,
	487,
	1287,
	'time',
	'Number of seconds between start time for the associated workout and recording of this heart rate sample.',
	'',
	'time',
	0,
	188,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	487);
INSERT INTO O_ID
	VALUES (1,
	487);
INSERT INTO O_ID
	VALUES (2,
	487);
INSERT INTO PE_PE
	VALUES (475,
	1,
	462,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (475,
	'LapMarker',
	4,
	'LapMarker',
	'Each instance represents a single lap marker.',
	0);
INSERT INTO O_NBATTR
	VALUES (1289,
	475);
INSERT INTO O_BATTR
	VALUES (1289,
	475);
INSERT INTO O_ATTR
	VALUES (1289,
	475,
	0,
	'lapTime',
	'Number of seconds between start time for the associated workout and this lap marker.',
	'',
	'lapTime',
	0,
	188,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	475);
INSERT INTO O_ID
	VALUES (1,
	475);
INSERT INTO O_ID
	VALUES (2,
	475);
INSERT INTO PE_PE
	VALUES (464,
	1,
	462,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (464,
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
	VALUES (1290,
	464,
	'addTrackPoint',
	'',
	294,
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
	VALUES (1291,
	1290);
INSERT INTO ACT_ACT
	VALUES (1291,
	'operation',
	0,
	1292,
	0,
	0,
	'TrackLog::addTrackPoint',
	0);
INSERT INTO ACT_BLK
	VALUES (1292,
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
	1291,
	0);
INSERT INTO ACT_SMT
	VALUES (1293,
	1292,
	1294,
	5,
	1,
	'TrackLog::addTrackPoint line: 5');
INSERT INTO ACT_CR
	VALUES (1293,
	1295,
	1,
	466,
	5,
	38);
INSERT INTO ACT_SMT
	VALUES (1294,
	1292,
	1296,
	6,
	1,
	'TrackLog::addTrackPoint line: 6');
INSERT INTO ACT_SEL
	VALUES (1294,
	1297,
	1,
	'one',
	1298);
INSERT INTO ACT_SR
	VALUES (1294);
INSERT INTO ACT_LNK
	VALUES (1299,
	'''represents path for''',
	1294,
	483,
	1300,
	2,
	349,
	7,
	9,
	7,
	24,
	7,
	27);
INSERT INTO ACT_LNK
	VALUES (1300,
	'''is timed by''',
	0,
	480,
	0,
	2,
	364,
	7,
	51,
	7,
	64,
	7,
	67);
INSERT INTO ACT_SMT
	VALUES (1296,
	1292,
	1301,
	8,
	1,
	'TrackLog::addTrackPoint line: 8');
INSERT INTO ACT_AI
	VALUES (1296,
	1302,
	1303,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1301,
	1292,
	1304,
	9,
	1,
	'TrackLog::addTrackPoint line: 9');
INSERT INTO ACT_IOP
	VALUES (1301,
	9,
	16,
	9,
	6,
	0,
	316,
	0);
INSERT INTO ACT_SMT
	VALUES (1304,
	1292,
	1305,
	12,
	1,
	'TrackLog::addTrackPoint line: 12');
INSERT INTO ACT_SEL
	VALUES (1304,
	1306,
	1,
	'one',
	1307);
INSERT INTO ACT_SR
	VALUES (1304);
INSERT INTO ACT_LNK
	VALUES (1308,
	'',
	1304,
	463,
	0,
	2,
	466,
	12,
	40,
	12,
	51,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1305,
	1292,
	1309,
	13,
	1,
	'TrackLog::addTrackPoint line: 13');
INSERT INTO ACT_SEL
	VALUES (1305,
	1310,
	1,
	'one',
	1311);
INSERT INTO ACT_SR
	VALUES (1305);
INSERT INTO ACT_LNK
	VALUES (1312,
	'',
	1305,
	471,
	0,
	2,
	466,
	13,
	39,
	13,
	50,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1309,
	1292,
	1313,
	16,
	1,
	'TrackLog::addTrackPoint line: 16');
INSERT INTO ACT_AI
	VALUES (1309,
	1314,
	1315,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1313,
	1292,
	1316,
	17,
	1,
	'TrackLog::addTrackPoint line: 17');
INSERT INTO ACT_AI
	VALUES (1313,
	1317,
	1318,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1316,
	1292,
	1319,
	18,
	1,
	'TrackLog::addTrackPoint line: 18');
INSERT INTO ACT_AI
	VALUES (1316,
	1320,
	1321,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1319,
	1292,
	1322,
	19,
	1,
	'TrackLog::addTrackPoint line: 19');
INSERT INTO ACT_IF
	VALUES (1319,
	1323,
	1324,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1325,
	1292,
	0,
	23,
	1,
	'TrackLog::addTrackPoint line: 23');
INSERT INTO ACT_E
	VALUES (1325,
	1326,
	1319);
INSERT INTO ACT_SMT
	VALUES (1322,
	1292,
	1327,
	33,
	1,
	'TrackLog::addTrackPoint line: 33');
INSERT INTO ACT_AI
	VALUES (1322,
	1328,
	1329,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1327,
	1292,
	1330,
	34,
	1,
	'TrackLog::addTrackPoint line: 34');
INSERT INTO ACT_IF
	VALUES (1327,
	1331,
	1332,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1330,
	1292,
	1333,
	39,
	1,
	'TrackLog::addTrackPoint line: 39');
INSERT INTO ACT_SEL
	VALUES (1330,
	1334,
	1,
	'one',
	1335);
INSERT INTO ACT_SR
	VALUES (1330);
INSERT INTO ACT_LNK
	VALUES (1336,
	'''represents path for''',
	1330,
	483,
	0,
	2,
	349,
	39,
	37,
	39,
	52,
	39,
	55);
INSERT INTO ACT_SMT
	VALUES (1333,
	1292,
	1337,
	40,
	1,
	'TrackLog::addTrackPoint line: 40');
INSERT INTO ACT_AI
	VALUES (1333,
	1338,
	1339,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1337,
	1292,
	0,
	43,
	1,
	'TrackLog::addTrackPoint line: 43');
INSERT INTO ACT_TFM
	VALUES (1337,
	1340,
	1341,
	43,
	6,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1298,
	0,
	0,
	7,
	3,
	6,
	0,
	0,
	0,
	0,
	300,
	1292);
INSERT INTO V_IRF
	VALUES (1298,
	1341);
INSERT INTO V_VAL
	VALUES (1342,
	1,
	0,
	8,
	1,
	10,
	0,
	0,
	0,
	0,
	300,
	1292);
INSERT INTO V_IRF
	VALUES (1342,
	1295);
INSERT INTO V_VAL
	VALUES (1303,
	1,
	0,
	8,
	12,
	15,
	0,
	0,
	0,
	0,
	188,
	1292);
INSERT INTO V_AVL
	VALUES (1303,
	1342,
	466,
	1343);
INSERT INTO V_VAL
	VALUES (1344,
	0,
	0,
	8,
	19,
	30,
	0,
	0,
	0,
	0,
	300,
	1292);
INSERT INTO V_IRF
	VALUES (1344,
	1297);
INSERT INTO V_VAL
	VALUES (1302,
	0,
	0,
	8,
	32,
	35,
	0,
	0,
	0,
	0,
	188,
	1292);
INSERT INTO V_AVL
	VALUES (1302,
	1344,
	364,
	669);
INSERT INTO V_VAL
	VALUES (1345,
	0,
	0,
	9,
	39,
	48,
	0,
	0,
	0,
	0,
	300,
	1292);
INSERT INTO V_IRF
	VALUES (1345,
	1295);
INSERT INTO V_VAL
	VALUES (1346,
	0,
	0,
	9,
	50,
	57,
	0,
	0,
	0,
	0,
	133,
	1292);
INSERT INTO V_AVL
	VALUES (1346,
	1345,
	466,
	1347);
INSERT INTO V_PAR
	VALUES (1346,
	1301,
	0,
	'latitude',
	1348,
	9,
	29);
INSERT INTO V_VAL
	VALUES (1349,
	0,
	0,
	9,
	71,
	80,
	0,
	0,
	0,
	0,
	300,
	1292);
INSERT INTO V_IRF
	VALUES (1349,
	1295);
INSERT INTO V_VAL
	VALUES (1348,
	0,
	0,
	9,
	82,
	90,
	0,
	0,
	0,
	0,
	133,
	1292);
INSERT INTO V_AVL
	VALUES (1348,
	1349,
	466,
	1350);
INSERT INTO V_PAR
	VALUES (1348,
	1301,
	0,
	'longitude',
	0,
	9,
	60);
INSERT INTO V_VAL
	VALUES (1307,
	0,
	0,
	12,
	34,
	37,
	0,
	0,
	0,
	0,
	300,
	1292);
INSERT INTO V_IRF
	VALUES (1307,
	1341);
INSERT INTO V_VAL
	VALUES (1311,
	0,
	0,
	13,
	33,
	36,
	0,
	0,
	0,
	0,
	300,
	1292);
INSERT INTO V_IRF
	VALUES (1311,
	1341);
INSERT INTO V_VAL
	VALUES (1315,
	1,
	1,
	16,
	1,
	17,
	0,
	0,
	0,
	0,
	295,
	1292);
INSERT INTO V_TVL
	VALUES (1315,
	1351);
INSERT INTO V_VAL
	VALUES (1314,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1292);
INSERT INTO V_LBO
	VALUES (1314,
	'FALSE');
INSERT INTO V_VAL
	VALUES (1318,
	1,
	1,
	17,
	1,
	12,
	0,
	0,
	0,
	0,
	133,
	1292);
INSERT INTO V_TVL
	VALUES (1318,
	1352);
INSERT INTO V_VAL
	VALUES (1317,
	0,
	0,
	17,
	16,
	18,
	0,
	0,
	0,
	0,
	133,
	1292);
INSERT INTO V_LRL
	VALUES (1317,
	'0.0');
INSERT INTO V_VAL
	VALUES (1321,
	1,
	1,
	18,
	1,
	13,
	0,
	0,
	0,
	0,
	133,
	1292);
INSERT INTO V_TVL
	VALUES (1321,
	1353);
INSERT INTO V_VAL
	VALUES (1320,
	0,
	0,
	18,
	17,
	19,
	0,
	0,
	0,
	0,
	133,
	1292);
INSERT INTO V_LRL
	VALUES (1320,
	'0.0');
INSERT INTO V_VAL
	VALUES (1354,
	0,
	0,
	19,
	11,
	20,
	0,
	0,
	0,
	0,
	300,
	1292);
INSERT INTO V_IRF
	VALUES (1354,
	1306);
INSERT INTO V_VAL
	VALUES (1324,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1292);
INSERT INTO V_UNY
	VALUES (1324,
	1354,
	'empty');
INSERT INTO V_VAL
	VALUES (1329,
	1,
	1,
	33,
	1,
	8,
	0,
	0,
	0,
	0,
	133,
	1292);
INSERT INTO V_TVL
	VALUES (1329,
	1355);
INSERT INTO V_VAL
	VALUES (1328,
	0,
	0,
	33,
	12,
	14,
	0,
	0,
	0,
	0,
	133,
	1292);
INSERT INTO V_LRL
	VALUES (1328,
	'0.0');
INSERT INTO V_VAL
	VALUES (1356,
	0,
	0,
	34,
	9,
	25,
	0,
	0,
	0,
	0,
	295,
	1292);
INSERT INTO V_TVL
	VALUES (1356,
	1351);
INSERT INTO V_VAL
	VALUES (1332,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1292);
INSERT INTO V_UNY
	VALUES (1332,
	1356,
	'not');
INSERT INTO V_VAL
	VALUES (1335,
	0,
	0,
	39,
	31,
	34,
	0,
	0,
	0,
	0,
	300,
	1292);
INSERT INTO V_IRF
	VALUES (1335,
	1341);
INSERT INTO V_VAL
	VALUES (1357,
	1,
	0,
	40,
	1,
	7,
	0,
	0,
	0,
	0,
	300,
	1292);
INSERT INTO V_IRF
	VALUES (1357,
	1334);
INSERT INTO V_VAL
	VALUES (1339,
	1,
	0,
	40,
	9,
	27,
	0,
	0,
	0,
	0,
	133,
	1292);
INSERT INTO V_AVL
	VALUES (1339,
	1357,
	349,
	745);
INSERT INTO V_VAL
	VALUES (1358,
	0,
	0,
	40,
	31,
	37,
	0,
	0,
	0,
	0,
	300,
	1292);
INSERT INTO V_IRF
	VALUES (1358,
	1334);
INSERT INTO V_VAL
	VALUES (1359,
	0,
	0,
	40,
	39,
	57,
	0,
	0,
	0,
	0,
	133,
	1292);
INSERT INTO V_AVL
	VALUES (1359,
	1358,
	349,
	745);
INSERT INTO V_VAL
	VALUES (1338,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	133,
	1292);
INSERT INTO V_BIN
	VALUES (1338,
	1360,
	1359,
	'+');
INSERT INTO V_VAL
	VALUES (1360,
	0,
	0,
	40,
	61,
	68,
	0,
	0,
	0,
	0,
	133,
	1292);
INSERT INTO V_TVL
	VALUES (1360,
	1355);
INSERT INTO V_VAR
	VALUES (1295,
	1292,
	'trackPoint',
	1,
	300);
INSERT INTO V_INT
	VALUES (1295,
	0,
	466);
INSERT INTO V_VAR
	VALUES (1297,
	1292,
	'workoutTimer',
	1,
	300);
INSERT INTO V_INT
	VALUES (1297,
	0,
	364);
INSERT INTO V_VAR
	VALUES (1341,
	1292,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1341,
	0,
	464);
INSERT INTO V_VAR
	VALUES (1306,
	1292,
	'firstPoint',
	1,
	300);
INSERT INTO V_INT
	VALUES (1306,
	0,
	466);
INSERT INTO V_VAR
	VALUES (1310,
	1292,
	'lastPoint',
	1,
	300);
INSERT INTO V_INT
	VALUES (1310,
	0,
	466);
INSERT INTO V_VAR
	VALUES (1351,
	1292,
	'isFirstTrackPoint',
	1,
	295);
INSERT INTO V_TRN
	VALUES (1351,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1352,
	1292,
	'lastLatitude',
	1,
	133);
INSERT INTO V_TRN
	VALUES (1352,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1353,
	1292,
	'lastLongitude',
	1,
	133);
INSERT INTO V_TRN
	VALUES (1353,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1355,
	1292,
	'distance',
	1,
	133);
INSERT INTO V_TRN
	VALUES (1355,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1334,
	1292,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (1334,
	0,
	349);
INSERT INTO ACT_BLK
	VALUES (1323,
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
	1291,
	0);
INSERT INTO ACT_SMT
	VALUES (1361,
	1323,
	1362,
	20,
	3,
	'TrackLog::addTrackPoint line: 20');
INSERT INTO ACT_AI
	VALUES (1361,
	1363,
	1364,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1362,
	1323,
	1365,
	21,
	3,
	'TrackLog::addTrackPoint line: 21');
INSERT INTO ACT_REL
	VALUES (1362,
	1341,
	1295,
	'''has first''',
	463,
	21,
	36,
	21,
	39);
INSERT INTO ACT_SMT
	VALUES (1365,
	1323,
	0,
	22,
	3,
	'TrackLog::addTrackPoint line: 22');
INSERT INTO ACT_REL
	VALUES (1365,
	1341,
	1295,
	'''has last''',
	471,
	22,
	36,
	22,
	39);
INSERT INTO V_VAL
	VALUES (1364,
	1,
	0,
	20,
	3,
	19,
	0,
	0,
	0,
	0,
	295,
	1323);
INSERT INTO V_TVL
	VALUES (1364,
	1351);
INSERT INTO V_VAL
	VALUES (1363,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1323);
INSERT INTO V_LBO
	VALUES (1363,
	'TRUE');
INSERT INTO ACT_BLK
	VALUES (1326,
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
	1291,
	0);
INSERT INTO ACT_SMT
	VALUES (1366,
	1326,
	1367,
	25,
	3,
	'TrackLog::addTrackPoint line: 25');
INSERT INTO ACT_AI
	VALUES (1366,
	1368,
	1369,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1367,
	1326,
	1370,
	26,
	3,
	'TrackLog::addTrackPoint line: 26');
INSERT INTO ACT_AI
	VALUES (1367,
	1371,
	1372,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1370,
	1326,
	1373,
	27,
	3,
	'TrackLog::addTrackPoint line: 27');
INSERT INTO ACT_UNR
	VALUES (1370,
	1341,
	1310,
	'''has last''',
	471,
	27,
	39,
	27,
	42);
INSERT INTO ACT_SMT
	VALUES (1373,
	1326,
	1374,
	28,
	3,
	'TrackLog::addTrackPoint line: 28');
INSERT INTO ACT_REL
	VALUES (1373,
	1341,
	1295,
	'''has last''',
	471,
	28,
	36,
	28,
	39);
INSERT INTO ACT_SMT
	VALUES (1374,
	1326,
	0,
	29,
	3,
	'TrackLog::addTrackPoint line: 29');
INSERT INTO ACT_REL
	VALUES (1374,
	1310,
	1295,
	'''follows''',
	468,
	29,
	41,
	29,
	44);
INSERT INTO V_VAL
	VALUES (1369,
	1,
	0,
	25,
	3,
	14,
	0,
	0,
	0,
	0,
	133,
	1326);
INSERT INTO V_TVL
	VALUES (1369,
	1352);
INSERT INTO V_VAL
	VALUES (1375,
	0,
	0,
	25,
	18,
	26,
	0,
	0,
	0,
	0,
	300,
	1326);
INSERT INTO V_IRF
	VALUES (1375,
	1310);
INSERT INTO V_VAL
	VALUES (1368,
	0,
	0,
	25,
	28,
	35,
	0,
	0,
	0,
	0,
	133,
	1326);
INSERT INTO V_AVL
	VALUES (1368,
	1375,
	466,
	1347);
INSERT INTO V_VAL
	VALUES (1372,
	1,
	0,
	26,
	3,
	15,
	0,
	0,
	0,
	0,
	133,
	1326);
INSERT INTO V_TVL
	VALUES (1372,
	1353);
INSERT INTO V_VAL
	VALUES (1376,
	0,
	0,
	26,
	19,
	27,
	0,
	0,
	0,
	0,
	300,
	1326);
INSERT INTO V_IRF
	VALUES (1376,
	1310);
INSERT INTO V_VAL
	VALUES (1371,
	0,
	0,
	26,
	29,
	37,
	0,
	0,
	0,
	0,
	133,
	1326);
INSERT INTO V_AVL
	VALUES (1371,
	1376,
	466,
	1350);
INSERT INTO ACT_BLK
	VALUES (1331,
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
	1291,
	0);
INSERT INTO ACT_SMT
	VALUES (1377,
	1331,
	0,
	35,
	3,
	'TrackLog::addTrackPoint line: 35');
INSERT INTO ACT_AI
	VALUES (1377,
	1378,
	1379,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1379,
	1,
	0,
	35,
	8,
	15,
	0,
	0,
	0,
	0,
	133,
	1331);
INSERT INTO V_TVL
	VALUES (1379,
	1355);
INSERT INTO V_VAL
	VALUES (1378,
	0,
	0,
	35,
	29,
	40,
	35,
	42,
	36,
	66,
	133,
	1331);
INSERT INTO V_MSV
	VALUES (1378,
	0,
	311,
	1,
	35,
	19,
	0);
INSERT INTO V_VAL
	VALUES (1380,
	0,
	0,
	35,
	51,
	62,
	0,
	0,
	0,
	0,
	133,
	1331);
INSERT INTO V_TVL
	VALUES (1380,
	1352);
INSERT INTO V_PAR
	VALUES (1380,
	0,
	1378,
	'fromLat',
	1381,
	35,
	42);
INSERT INTO V_VAL
	VALUES (1381,
	0,
	0,
	35,
	75,
	87,
	0,
	0,
	0,
	0,
	133,
	1331);
INSERT INTO V_TVL
	VALUES (1381,
	1353);
INSERT INTO V_PAR
	VALUES (1381,
	0,
	1378,
	'fromLong',
	1382,
	35,
	65);
INSERT INTO V_VAL
	VALUES (1383,
	0,
	0,
	36,
	45,
	54,
	0,
	0,
	0,
	0,
	300,
	1331);
INSERT INTO V_IRF
	VALUES (1383,
	1295);
INSERT INTO V_VAL
	VALUES (1382,
	0,
	0,
	36,
	56,
	63,
	0,
	0,
	0,
	0,
	133,
	1331);
INSERT INTO V_AVL
	VALUES (1382,
	1383,
	466,
	1347);
INSERT INTO V_PAR
	VALUES (1382,
	0,
	1378,
	'toLat',
	1384,
	36,
	38);
INSERT INTO V_VAL
	VALUES (1385,
	0,
	0,
	36,
	74,
	83,
	0,
	0,
	0,
	0,
	300,
	1331);
INSERT INTO V_IRF
	VALUES (1385,
	1295);
INSERT INTO V_VAL
	VALUES (1384,
	0,
	0,
	36,
	85,
	93,
	0,
	0,
	0,
	0,
	133,
	1331);
INSERT INTO V_AVL
	VALUES (1384,
	1385,
	466,
	1350);
INSERT INTO V_PAR
	VALUES (1384,
	0,
	1378,
	'toLong',
	0,
	36,
	66);
INSERT INTO O_TFR
	VALUES (1386,
	464,
	'clearTrackPoints',
	'',
	294,
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
	1290);
INSERT INTO ACT_OPB
	VALUES (1387,
	1386);
INSERT INTO ACT_ACT
	VALUES (1387,
	'operation',
	0,
	1388,
	0,
	0,
	'TrackLog::clearTrackPoints',
	0);
INSERT INTO ACT_BLK
	VALUES (1388,
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
	1387,
	0);
INSERT INTO ACT_SMT
	VALUES (1389,
	1388,
	1390,
	1,
	1,
	'TrackLog::clearTrackPoints line: 1');
INSERT INTO ACT_SEL
	VALUES (1389,
	1391,
	1,
	'one',
	1392);
INSERT INTO ACT_SR
	VALUES (1389);
INSERT INTO ACT_LNK
	VALUES (1393,
	'',
	1389,
	463,
	0,
	2,
	466,
	1,
	39,
	1,
	50,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1390,
	1388,
	1394,
	2,
	1,
	'TrackLog::clearTrackPoints line: 2');
INSERT INTO ACT_SEL
	VALUES (1390,
	1395,
	1,
	'one',
	1396);
INSERT INTO ACT_SR
	VALUES (1390);
INSERT INTO ACT_LNK
	VALUES (1397,
	'',
	1390,
	471,
	0,
	2,
	466,
	2,
	39,
	2,
	50,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1394,
	1388,
	1398,
	4,
	1,
	'TrackLog::clearTrackPoints line: 4');
INSERT INTO ACT_IF
	VALUES (1394,
	1399,
	1400,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1398,
	1388,
	1401,
	8,
	1,
	'TrackLog::clearTrackPoints line: 8');
INSERT INTO ACT_IF
	VALUES (1398,
	1402,
	1403,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1401,
	1388,
	0,
	12,
	1,
	'TrackLog::clearTrackPoints line: 12');
INSERT INTO ACT_WHL
	VALUES (1401,
	1404,
	1405);
INSERT INTO V_VAL
	VALUES (1392,
	0,
	0,
	1,
	33,
	36,
	0,
	0,
	0,
	0,
	300,
	1388);
INSERT INTO V_IRF
	VALUES (1392,
	1406);
INSERT INTO V_VAL
	VALUES (1396,
	0,
	0,
	2,
	33,
	36,
	0,
	0,
	0,
	0,
	300,
	1388);
INSERT INTO V_IRF
	VALUES (1396,
	1406);
INSERT INTO V_VAL
	VALUES (1407,
	0,
	0,
	4,
	15,
	23,
	0,
	0,
	0,
	0,
	300,
	1388);
INSERT INTO V_IRF
	VALUES (1407,
	1395);
INSERT INTO V_VAL
	VALUES (1408,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1388);
INSERT INTO V_UNY
	VALUES (1408,
	1407,
	'empty');
INSERT INTO V_VAL
	VALUES (1400,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1388);
INSERT INTO V_UNY
	VALUES (1400,
	1408,
	'not');
INSERT INTO V_VAL
	VALUES (1409,
	0,
	0,
	8,
	15,
	23,
	0,
	0,
	0,
	0,
	300,
	1388);
INSERT INTO V_IRF
	VALUES (1409,
	1391);
INSERT INTO V_VAL
	VALUES (1410,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1388);
INSERT INTO V_UNY
	VALUES (1410,
	1409,
	'empty');
INSERT INTO V_VAL
	VALUES (1403,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1388);
INSERT INTO V_UNY
	VALUES (1403,
	1410,
	'not');
INSERT INTO V_VAL
	VALUES (1411,
	0,
	0,
	12,
	18,
	26,
	0,
	0,
	0,
	0,
	300,
	1388);
INSERT INTO V_IRF
	VALUES (1411,
	1391);
INSERT INTO V_VAL
	VALUES (1412,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1388);
INSERT INTO V_UNY
	VALUES (1412,
	1411,
	'empty');
INSERT INTO V_VAL
	VALUES (1404,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1388);
INSERT INTO V_UNY
	VALUES (1404,
	1412,
	'not');
INSERT INTO V_VAR
	VALUES (1391,
	1388,
	'nextPoint',
	1,
	300);
INSERT INTO V_INT
	VALUES (1391,
	0,
	466);
INSERT INTO V_VAR
	VALUES (1406,
	1388,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1406,
	0,
	464);
INSERT INTO V_VAR
	VALUES (1395,
	1388,
	'lastPoint',
	1,
	300);
INSERT INTO V_INT
	VALUES (1395,
	0,
	466);
INSERT INTO ACT_BLK
	VALUES (1399,
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
	1387,
	0);
INSERT INTO ACT_SMT
	VALUES (1413,
	1399,
	0,
	5,
	3,
	'TrackLog::clearTrackPoints line: 5');
INSERT INTO ACT_UNR
	VALUES (1413,
	1406,
	1395,
	'',
	471,
	5,
	39,
	0,
	0);
INSERT INTO ACT_BLK
	VALUES (1402,
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
	1387,
	0);
INSERT INTO ACT_SMT
	VALUES (1414,
	1402,
	0,
	9,
	3,
	'TrackLog::clearTrackPoints line: 9');
INSERT INTO ACT_UNR
	VALUES (1414,
	1406,
	1391,
	'',
	463,
	9,
	39,
	0,
	0);
INSERT INTO ACT_BLK
	VALUES (1405,
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
	1387,
	0);
INSERT INTO ACT_SMT
	VALUES (1415,
	1405,
	1416,
	13,
	3,
	'TrackLog::clearTrackPoints line: 13');
INSERT INTO ACT_AI
	VALUES (1415,
	1417,
	1418,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1416,
	1405,
	1419,
	14,
	3,
	'TrackLog::clearTrackPoints line: 14');
INSERT INTO ACT_SEL
	VALUES (1416,
	1391,
	0,
	'one',
	1420);
INSERT INTO ACT_SR
	VALUES (1416);
INSERT INTO ACT_LNK
	VALUES (1421,
	'''follows''',
	1416,
	468,
	0,
	2,
	466,
	14,
	46,
	14,
	57,
	14,
	60);
INSERT INTO ACT_SMT
	VALUES (1419,
	1405,
	1422,
	15,
	3,
	'TrackLog::clearTrackPoints line: 15');
INSERT INTO ACT_IF
	VALUES (1419,
	1423,
	1424,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1422,
	1405,
	0,
	18,
	3,
	'TrackLog::clearTrackPoints line: 18');
INSERT INTO ACT_DEL
	VALUES (1422,
	1425);
INSERT INTO V_VAL
	VALUES (1418,
	1,
	1,
	13,
	3,
	11,
	0,
	0,
	0,
	0,
	300,
	1405);
INSERT INTO V_IRF
	VALUES (1418,
	1425);
INSERT INTO V_VAL
	VALUES (1417,
	0,
	0,
	13,
	15,
	23,
	0,
	0,
	0,
	0,
	300,
	1405);
INSERT INTO V_IRF
	VALUES (1417,
	1391);
INSERT INTO V_VAL
	VALUES (1420,
	0,
	0,
	14,
	35,
	43,
	0,
	0,
	0,
	0,
	300,
	1405);
INSERT INTO V_IRF
	VALUES (1420,
	1391);
INSERT INTO V_VAL
	VALUES (1426,
	0,
	0,
	15,
	18,
	26,
	0,
	0,
	0,
	0,
	300,
	1405);
INSERT INTO V_IRF
	VALUES (1426,
	1391);
INSERT INTO V_VAL
	VALUES (1424,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1405);
INSERT INTO V_UNY
	VALUES (1424,
	1426,
	'not_empty');
INSERT INTO V_VAR
	VALUES (1425,
	1405,
	'prevPoint',
	1,
	300);
INSERT INTO V_INT
	VALUES (1425,
	0,
	466);
INSERT INTO ACT_BLK
	VALUES (1423,
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
	1387,
	0);
INSERT INTO ACT_SMT
	VALUES (1427,
	1423,
	0,
	16,
	5,
	'TrackLog::clearTrackPoints line: 16');
INSERT INTO ACT_UNR
	VALUES (1427,
	1425,
	1391,
	'''follows''',
	468,
	16,
	46,
	16,
	49);
INSERT INTO O_TFR
	VALUES (1428,
	464,
	'addLapMarker',
	'',
	294,
	1,
	'select one timer related by self->WorkoutSession[R4.''represents path for'']->WorkoutTimer[R8.''is timed by''];
create object instance lapMarker of LapMarker;
lapMarker.lapTime = timer.time; 
relate self to lapMarker across R5.''has laps defined by'';

// Notify display of the new value.
self.updateDisplay();',
	1,
	'',
	1386);
INSERT INTO ACT_OPB
	VALUES (1429,
	1428);
INSERT INTO ACT_ACT
	VALUES (1429,
	'operation',
	0,
	1430,
	0,
	0,
	'TrackLog::addLapMarker',
	0);
INSERT INTO ACT_BLK
	VALUES (1430,
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
	1429,
	0);
INSERT INTO ACT_SMT
	VALUES (1431,
	1430,
	1432,
	1,
	1,
	'TrackLog::addLapMarker line: 1');
INSERT INTO ACT_SEL
	VALUES (1431,
	1433,
	1,
	'one',
	1434);
INSERT INTO ACT_SR
	VALUES (1431);
INSERT INTO ACT_LNK
	VALUES (1435,
	'''represents path for''',
	1431,
	483,
	1436,
	2,
	349,
	1,
	35,
	1,
	50,
	1,
	53);
INSERT INTO ACT_LNK
	VALUES (1436,
	'''is timed by''',
	0,
	480,
	0,
	2,
	364,
	1,
	77,
	1,
	90,
	1,
	93);
INSERT INTO ACT_SMT
	VALUES (1432,
	1430,
	1437,
	2,
	1,
	'TrackLog::addLapMarker line: 2');
INSERT INTO ACT_CR
	VALUES (1432,
	1438,
	1,
	475,
	2,
	37);
INSERT INTO ACT_SMT
	VALUES (1437,
	1430,
	1439,
	3,
	1,
	'TrackLog::addLapMarker line: 3');
INSERT INTO ACT_AI
	VALUES (1437,
	1440,
	1441,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1439,
	1430,
	1442,
	4,
	1,
	'TrackLog::addLapMarker line: 4');
INSERT INTO ACT_REL
	VALUES (1439,
	1443,
	1438,
	'''has laps defined by''',
	474,
	4,
	33,
	4,
	36);
INSERT INTO ACT_SMT
	VALUES (1442,
	1430,
	0,
	7,
	1,
	'TrackLog::addLapMarker line: 7');
INSERT INTO ACT_TFM
	VALUES (1442,
	1340,
	1443,
	7,
	6,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1434,
	0,
	0,
	1,
	29,
	32,
	0,
	0,
	0,
	0,
	300,
	1430);
INSERT INTO V_IRF
	VALUES (1434,
	1443);
INSERT INTO V_VAL
	VALUES (1444,
	1,
	0,
	3,
	1,
	9,
	0,
	0,
	0,
	0,
	300,
	1430);
INSERT INTO V_IRF
	VALUES (1444,
	1438);
INSERT INTO V_VAL
	VALUES (1441,
	1,
	0,
	3,
	11,
	17,
	0,
	0,
	0,
	0,
	188,
	1430);
INSERT INTO V_AVL
	VALUES (1441,
	1444,
	475,
	1289);
INSERT INTO V_VAL
	VALUES (1445,
	0,
	0,
	3,
	21,
	25,
	0,
	0,
	0,
	0,
	300,
	1430);
INSERT INTO V_IRF
	VALUES (1445,
	1433);
INSERT INTO V_VAL
	VALUES (1440,
	0,
	0,
	3,
	27,
	30,
	0,
	0,
	0,
	0,
	188,
	1430);
INSERT INTO V_AVL
	VALUES (1440,
	1445,
	364,
	669);
INSERT INTO V_VAR
	VALUES (1433,
	1430,
	'timer',
	1,
	300);
INSERT INTO V_INT
	VALUES (1433,
	0,
	364);
INSERT INTO V_VAR
	VALUES (1443,
	1430,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1443,
	0,
	464);
INSERT INTO V_VAR
	VALUES (1438,
	1430,
	'lapMarker',
	1,
	300);
INSERT INTO V_INT
	VALUES (1438,
	0,
	475);
INSERT INTO O_TFR
	VALUES (1446,
	464,
	'clearLapMarkers',
	'',
	294,
	1,
	'select many lapMarkers related by self->LapMarker[R5];
for each lapMarker in lapMarkers
  unrelate self from lapMarker across R5;
  delete object instance lapMarker;
end for;',
	1,
	'',
	1428);
INSERT INTO ACT_OPB
	VALUES (1447,
	1446);
INSERT INTO ACT_ACT
	VALUES (1447,
	'operation',
	0,
	1448,
	0,
	0,
	'TrackLog::clearLapMarkers',
	0);
INSERT INTO ACT_BLK
	VALUES (1448,
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
	1447,
	0);
INSERT INTO ACT_SMT
	VALUES (1449,
	1448,
	1450,
	1,
	1,
	'TrackLog::clearLapMarkers line: 1');
INSERT INTO ACT_SEL
	VALUES (1449,
	1451,
	1,
	'many',
	1452);
INSERT INTO ACT_SR
	VALUES (1449);
INSERT INTO ACT_LNK
	VALUES (1453,
	'',
	1449,
	474,
	0,
	3,
	475,
	1,
	41,
	1,
	51,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1450,
	1448,
	0,
	2,
	1,
	'TrackLog::clearLapMarkers line: 2');
INSERT INTO ACT_FOR
	VALUES (1450,
	1454,
	1,
	1455,
	1451,
	475);
INSERT INTO V_VAL
	VALUES (1452,
	0,
	0,
	1,
	35,
	38,
	0,
	0,
	0,
	0,
	300,
	1448);
INSERT INTO V_IRF
	VALUES (1452,
	1456);
INSERT INTO V_VAR
	VALUES (1451,
	1448,
	'lapMarkers',
	1,
	301);
INSERT INTO V_INS
	VALUES (1451,
	475);
INSERT INTO V_VAR
	VALUES (1456,
	1448,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1456,
	0,
	464);
INSERT INTO V_VAR
	VALUES (1455,
	1448,
	'lapMarker',
	1,
	300);
INSERT INTO V_INT
	VALUES (1455,
	1,
	475);
INSERT INTO ACT_BLK
	VALUES (1454,
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
	1447,
	0);
INSERT INTO ACT_SMT
	VALUES (1457,
	1454,
	1458,
	3,
	3,
	'TrackLog::clearLapMarkers line: 3');
INSERT INTO ACT_UNR
	VALUES (1457,
	1456,
	1455,
	'',
	474,
	3,
	39,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1458,
	1454,
	0,
	4,
	3,
	'TrackLog::clearLapMarkers line: 4');
INSERT INTO ACT_DEL
	VALUES (1458,
	1455);
INSERT INTO O_TFR
	VALUES (1340,
	464,
	'updateDisplay',
	'',
	294,
	1,
	'// Update the display so that newly updated values will be shown.
select one display related by 
  self->WorkoutSession[R4.''represents path for'']->Display[R7.''current status indicated on''];
generate Display2:refresh to display;',
	1,
	'',
	1446);
INSERT INTO ACT_OPB
	VALUES (1459,
	1340);
INSERT INTO ACT_ACT
	VALUES (1459,
	'operation',
	0,
	1460,
	0,
	0,
	'TrackLog::updateDisplay',
	0);
INSERT INTO ACT_BLK
	VALUES (1460,
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
	1459,
	0);
INSERT INTO ACT_SMT
	VALUES (1461,
	1460,
	1462,
	2,
	1,
	'TrackLog::updateDisplay line: 2');
INSERT INTO ACT_SEL
	VALUES (1461,
	1463,
	1,
	'one',
	1464);
INSERT INTO ACT_SR
	VALUES (1461);
INSERT INTO ACT_LNK
	VALUES (1465,
	'''represents path for''',
	1461,
	483,
	1466,
	2,
	349,
	3,
	9,
	3,
	24,
	3,
	27);
INSERT INTO ACT_LNK
	VALUES (1466,
	'''current status indicated on''',
	0,
	391,
	0,
	2,
	392,
	3,
	51,
	3,
	59,
	3,
	62);
INSERT INTO ACT_SMT
	VALUES (1462,
	1460,
	0,
	4,
	1,
	'TrackLog::updateDisplay line: 4');
INSERT INTO E_ESS
	VALUES (1462,
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
	VALUES (1462);
INSERT INTO E_GSME
	VALUES (1462,
	724);
INSERT INTO E_GEN
	VALUES (1462,
	1463);
INSERT INTO V_VAL
	VALUES (1464,
	0,
	0,
	3,
	3,
	6,
	0,
	0,
	0,
	0,
	300,
	1460);
INSERT INTO V_IRF
	VALUES (1464,
	1467);
INSERT INTO V_VAR
	VALUES (1463,
	1460,
	'display',
	1,
	300);
INSERT INTO V_INT
	VALUES (1463,
	0,
	392);
INSERT INTO V_VAR
	VALUES (1467,
	1460,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1467,
	0,
	464);
INSERT INTO O_ID
	VALUES (0,
	464);
INSERT INTO O_ID
	VALUES (1,
	464);
INSERT INTO O_ID
	VALUES (2,
	464);
INSERT INTO PE_PE
	VALUES (466,
	1,
	462,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (466,
	'TrackPoint',
	3,
	'TrackPoint',
	'Each instance represents a single location through which the device
passed during a workout session.',
	0);
INSERT INTO O_NBATTR
	VALUES (1343,
	466);
INSERT INTO O_BATTR
	VALUES (1343,
	466);
INSERT INTO O_ATTR
	VALUES (1343,
	466,
	0,
	'time',
	'Number of seconds between start time for the associated workout and recording of this location.
',
	'',
	'time',
	0,
	188,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1350,
	466);
INSERT INTO O_BATTR
	VALUES (1350,
	466);
INSERT INTO O_ATTR
	VALUES (1350,
	466,
	1343,
	'longitude',
	'Longitude, expressed in decimal degrees where eastern figures are positve
and western ones are negative.',
	'',
	'longitude',
	0,
	133,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1347,
	466);
INSERT INTO O_BATTR
	VALUES (1347,
	466);
INSERT INTO O_ATTR
	VALUES (1347,
	466,
	1350,
	'latitude',
	'Latitude, expressed in decimal degrees, where northern figures are positive
and southern ones are negative.',
	'',
	'latitude',
	0,
	133,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	466);
INSERT INTO O_ID
	VALUES (1,
	466);
INSERT INTO O_ID
	VALUES (2,
	466);
INSERT INTO PE_PE
	VALUES (349,
	1,
	462,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (349,
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
	VALUES (355,
	349,
	'addHeartRateSample',
	'',
	294,
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
	VALUES (1468,
	355,
	'heartRate',
	188,
	0,
	'',
	0,
	'');
INSERT INTO ACT_OPB
	VALUES (1469,
	355);
INSERT INTO ACT_ACT
	VALUES (1469,
	'operation',
	0,
	1470,
	0,
	0,
	'WorkoutSession::addHeartRateSample',
	0);
INSERT INTO ACT_BLK
	VALUES (1470,
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
	1469,
	0);
INSERT INTO ACT_SMT
	VALUES (1471,
	1470,
	1472,
	3,
	1,
	'WorkoutSession::addHeartRateSample line: 3');
INSERT INTO ACT_SEL
	VALUES (1471,
	1473,
	1,
	'one',
	1474);
INSERT INTO ACT_SR
	VALUES (1471);
INSERT INTO ACT_LNK
	VALUES (1475,
	'''is timed by''',
	1471,
	480,
	0,
	2,
	364,
	3,
	42,
	3,
	55,
	3,
	58);
INSERT INTO ACT_SMT
	VALUES (1472,
	1470,
	1476,
	6,
	1,
	'WorkoutSession::addHeartRateSample line: 6');
INSERT INTO ACT_CR
	VALUES (1472,
	1477,
	1,
	487,
	6,
	34);
INSERT INTO ACT_SMT
	VALUES (1476,
	1470,
	1478,
	7,
	1,
	'WorkoutSession::addHeartRateSample line: 7');
INSERT INTO ACT_AI
	VALUES (1476,
	1479,
	1480,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1478,
	1470,
	1481,
	8,
	1,
	'WorkoutSession::addHeartRateSample line: 8');
INSERT INTO ACT_AI
	VALUES (1478,
	1482,
	1483,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1481,
	1470,
	1484,
	9,
	1,
	'WorkoutSession::addHeartRateSample line: 9');
INSERT INTO ACT_REL
	VALUES (1481,
	1485,
	1477,
	'''tracks heart rate over time as''',
	486,
	9,
	30,
	9,
	33);
INSERT INTO ACT_SMT
	VALUES (1484,
	1470,
	1486,
	12,
	1,
	'WorkoutSession::addHeartRateSample line: 12');
INSERT INTO ACT_SEL
	VALUES (1484,
	1487,
	1,
	'one',
	1488);
INSERT INTO ACT_SR
	VALUES (1484);
INSERT INTO ACT_LNK
	VALUES (1489,
	'''current status indicated on''',
	1484,
	391,
	0,
	2,
	392,
	12,
	37,
	12,
	45,
	12,
	48);
INSERT INTO ACT_SMT
	VALUES (1486,
	1470,
	0,
	13,
	1,
	'WorkoutSession::addHeartRateSample line: 13');
INSERT INTO E_ESS
	VALUES (1486,
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
	VALUES (1486);
INSERT INTO E_GSME
	VALUES (1486,
	724);
INSERT INTO E_GEN
	VALUES (1486,
	1487);
INSERT INTO V_VAL
	VALUES (1474,
	0,
	0,
	3,
	36,
	39,
	0,
	0,
	0,
	0,
	300,
	1470);
INSERT INTO V_IRF
	VALUES (1474,
	1485);
INSERT INTO V_VAL
	VALUES (1490,
	1,
	0,
	7,
	1,
	6,
	0,
	0,
	0,
	0,
	300,
	1470);
INSERT INTO V_IRF
	VALUES (1490,
	1477);
INSERT INTO V_VAL
	VALUES (1480,
	1,
	0,
	7,
	8,
	16,
	0,
	0,
	0,
	0,
	188,
	1470);
INSERT INTO V_AVL
	VALUES (1480,
	1490,
	487,
	1287);
INSERT INTO V_VAL
	VALUES (1479,
	0,
	0,
	7,
	26,
	34,
	0,
	0,
	0,
	0,
	188,
	1470);
INSERT INTO V_PVL
	VALUES (1479,
	0,
	0,
	1468,
	0);
INSERT INTO V_VAL
	VALUES (1491,
	1,
	0,
	8,
	1,
	6,
	0,
	0,
	0,
	0,
	300,
	1470);
INSERT INTO V_IRF
	VALUES (1491,
	1477);
INSERT INTO V_VAL
	VALUES (1483,
	1,
	0,
	8,
	8,
	11,
	0,
	0,
	0,
	0,
	188,
	1470);
INSERT INTO V_AVL
	VALUES (1483,
	1491,
	487,
	1288);
INSERT INTO V_VAL
	VALUES (1492,
	0,
	0,
	8,
	15,
	26,
	0,
	0,
	0,
	0,
	300,
	1470);
INSERT INTO V_IRF
	VALUES (1492,
	1473);
INSERT INTO V_VAL
	VALUES (1482,
	0,
	0,
	8,
	28,
	31,
	0,
	0,
	0,
	0,
	188,
	1470);
INSERT INTO V_AVL
	VALUES (1482,
	1492,
	364,
	669);
INSERT INTO V_VAL
	VALUES (1488,
	0,
	0,
	12,
	31,
	34,
	0,
	0,
	0,
	0,
	300,
	1470);
INSERT INTO V_IRF
	VALUES (1488,
	1485);
INSERT INTO V_VAR
	VALUES (1473,
	1470,
	'workoutTimer',
	1,
	300);
INSERT INTO V_INT
	VALUES (1473,
	0,
	364);
INSERT INTO V_VAR
	VALUES (1485,
	1470,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1485,
	0,
	349);
INSERT INTO V_VAR
	VALUES (1477,
	1470,
	'sample',
	1,
	300);
INSERT INTO V_INT
	VALUES (1477,
	0,
	487);
INSERT INTO V_VAR
	VALUES (1487,
	1470,
	'display',
	1,
	300);
INSERT INTO V_INT
	VALUES (1487,
	0,
	392);
INSERT INTO O_TFR
	VALUES (1493,
	349,
	'clearHeartRateSamples',
	'',
	294,
	1,
	'select many samples related by self->HeartRateSample[R6];
for each sample in samples
  unrelate self from sample across R6;
  delete object instance sample;
end for;',
	1,
	'',
	355);
INSERT INTO ACT_OPB
	VALUES (1494,
	1493);
INSERT INTO ACT_ACT
	VALUES (1494,
	'operation',
	0,
	1495,
	0,
	0,
	'WorkoutSession::clearHeartRateSamples',
	0);
INSERT INTO ACT_BLK
	VALUES (1495,
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
	1494,
	0);
INSERT INTO ACT_SMT
	VALUES (1496,
	1495,
	1497,
	1,
	1,
	'WorkoutSession::clearHeartRateSamples line: 1');
INSERT INTO ACT_SEL
	VALUES (1496,
	1498,
	1,
	'many',
	1499);
INSERT INTO ACT_SR
	VALUES (1496);
INSERT INTO ACT_LNK
	VALUES (1500,
	'',
	1496,
	486,
	0,
	3,
	487,
	1,
	38,
	1,
	54,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1497,
	1495,
	0,
	2,
	1,
	'WorkoutSession::clearHeartRateSamples line: 2');
INSERT INTO ACT_FOR
	VALUES (1497,
	1501,
	1,
	1502,
	1498,
	487);
INSERT INTO V_VAL
	VALUES (1499,
	0,
	0,
	1,
	32,
	35,
	0,
	0,
	0,
	0,
	300,
	1495);
INSERT INTO V_IRF
	VALUES (1499,
	1503);
INSERT INTO V_VAR
	VALUES (1498,
	1495,
	'samples',
	1,
	301);
INSERT INTO V_INS
	VALUES (1498,
	487);
INSERT INTO V_VAR
	VALUES (1503,
	1495,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1503,
	0,
	349);
INSERT INTO V_VAR
	VALUES (1502,
	1495,
	'sample',
	1,
	300);
INSERT INTO V_INT
	VALUES (1502,
	1,
	487);
INSERT INTO ACT_BLK
	VALUES (1501,
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
	1494,
	0);
INSERT INTO ACT_SMT
	VALUES (1504,
	1501,
	1505,
	3,
	3,
	'WorkoutSession::clearHeartRateSamples line: 3');
INSERT INTO ACT_UNR
	VALUES (1504,
	1503,
	1502,
	'',
	486,
	3,
	36,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1505,
	1501,
	0,
	4,
	3,
	'WorkoutSession::clearHeartRateSamples line: 4');
INSERT INTO ACT_DEL
	VALUES (1505,
	1502);
INSERT INTO O_TFR
	VALUES (1506,
	349,
	'initialize',
	'',
	294,
	1,
	'// Initialize this workout session.

self.startDate = TIM::current_date();
self.startTime = TIM::current_clock();
self.accumulatedDistance = 0.0;',
	1,
	'',
	1493);
INSERT INTO ACT_OPB
	VALUES (1507,
	1506);
INSERT INTO ACT_ACT
	VALUES (1507,
	'operation',
	0,
	1508,
	0,
	0,
	'WorkoutSession::initialize',
	0);
INSERT INTO ACT_BLK
	VALUES (1508,
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
	1507,
	0);
INSERT INTO ACT_SMT
	VALUES (1509,
	1508,
	1510,
	3,
	1,
	'WorkoutSession::initialize line: 3');
INSERT INTO ACT_AI
	VALUES (1509,
	1511,
	1512,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1510,
	1508,
	1513,
	4,
	1,
	'WorkoutSession::initialize line: 4');
INSERT INTO ACT_AI
	VALUES (1510,
	1514,
	1515,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1513,
	1508,
	0,
	5,
	1,
	'WorkoutSession::initialize line: 5');
INSERT INTO ACT_AI
	VALUES (1513,
	1516,
	1517,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1518,
	1,
	0,
	3,
	1,
	4,
	0,
	0,
	0,
	0,
	300,
	1508);
INSERT INTO V_IRF
	VALUES (1518,
	1519);
INSERT INTO V_VAL
	VALUES (1512,
	1,
	0,
	3,
	6,
	14,
	0,
	0,
	0,
	0,
	306,
	1508);
INSERT INTO V_AVL
	VALUES (1512,
	1518,
	349,
	1520);
INSERT INTO V_VAL
	VALUES (1511,
	0,
	0,
	3,
	23,
	-1,
	0,
	0,
	0,
	0,
	306,
	1508);
INSERT INTO V_BRV
	VALUES (1511,
	541,
	1,
	3,
	18);
INSERT INTO V_VAL
	VALUES (1521,
	1,
	0,
	4,
	1,
	4,
	0,
	0,
	0,
	0,
	300,
	1508);
INSERT INTO V_IRF
	VALUES (1521,
	1519);
INSERT INTO V_VAL
	VALUES (1515,
	1,
	0,
	4,
	6,
	14,
	0,
	0,
	0,
	0,
	308,
	1508);
INSERT INTO V_AVL
	VALUES (1515,
	1521,
	349,
	1522);
INSERT INTO V_VAL
	VALUES (1514,
	0,
	0,
	4,
	23,
	-1,
	0,
	0,
	0,
	0,
	308,
	1508);
INSERT INTO V_BRV
	VALUES (1514,
	577,
	1,
	4,
	18);
INSERT INTO V_VAL
	VALUES (1523,
	1,
	0,
	5,
	1,
	4,
	0,
	0,
	0,
	0,
	300,
	1508);
INSERT INTO V_IRF
	VALUES (1523,
	1519);
INSERT INTO V_VAL
	VALUES (1517,
	1,
	0,
	5,
	6,
	24,
	0,
	0,
	0,
	0,
	133,
	1508);
INSERT INTO V_AVL
	VALUES (1517,
	1523,
	349,
	745);
INSERT INTO V_VAL
	VALUES (1516,
	0,
	0,
	5,
	28,
	30,
	0,
	0,
	0,
	0,
	133,
	1508);
INSERT INTO V_LRL
	VALUES (1516,
	'0.0');
INSERT INTO V_VAR
	VALUES (1519,
	1508,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1519,
	0,
	349);
INSERT INTO O_TFR
	VALUES (404,
	349,
	'create',
	'',
	294,
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
	1506);
INSERT INTO ACT_OPB
	VALUES (1524,
	404);
INSERT INTO ACT_ACT
	VALUES (1524,
	'class operation',
	0,
	1525,
	0,
	0,
	'WorkoutSession::create',
	0);
INSERT INTO ACT_BLK
	VALUES (1525,
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
	1524,
	0);
INSERT INTO ACT_SMT
	VALUES (1526,
	1525,
	1527,
	4,
	1,
	'WorkoutSession::create line: 4');
INSERT INTO ACT_FIO
	VALUES (1526,
	1528,
	1,
	'any',
	349,
	4,
	38);
INSERT INTO ACT_SMT
	VALUES (1527,
	1525,
	0,
	6,
	1,
	'WorkoutSession::create line: 6');
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
	6,
	12,
	18,
	0,
	0,
	0,
	0,
	300,
	1525);
INSERT INTO V_IRF
	VALUES (1531,
	1528);
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
	295,
	1525);
INSERT INTO V_UNY
	VALUES (1530,
	1531,
	'empty');
INSERT INTO V_VAR
	VALUES (1528,
	1525,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (1528,
	0,
	349);
INSERT INTO ACT_BLK
	VALUES (1529,
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
	1524,
	0);
INSERT INTO ACT_SMT
	VALUES (1532,
	1529,
	1533,
	9,
	3,
	'WorkoutSession::create line: 9');
INSERT INTO ACT_CR
	VALUES (1532,
	1528,
	0,
	349,
	9,
	37);
INSERT INTO ACT_SMT
	VALUES (1533,
	1529,
	1534,
	10,
	3,
	'WorkoutSession::create line: 10');
INSERT INTO ACT_TFM
	VALUES (1533,
	1506,
	1528,
	10,
	11,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1534,
	1529,
	1535,
	13,
	3,
	'WorkoutSession::create line: 13');
INSERT INTO ACT_CR
	VALUES (1534,
	1536,
	1,
	364,
	13,
	42);
INSERT INTO ACT_SMT
	VALUES (1535,
	1529,
	1537,
	14,
	3,
	'WorkoutSession::create line: 14');
INSERT INTO ACT_TFM
	VALUES (1535,
	1538,
	1536,
	14,
	16,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1537,
	1529,
	1539,
	17,
	3,
	'WorkoutSession::create line: 17');
INSERT INTO ACT_CR
	VALUES (1537,
	1540,
	1,
	464,
	17,
	38);
INSERT INTO ACT_SMT
	VALUES (1539,
	1529,
	1541,
	20,
	3,
	'WorkoutSession::create line: 20');
INSERT INTO ACT_CR
	VALUES (1539,
	1542,
	1,
	392,
	20,
	37);
INSERT INTO ACT_SMT
	VALUES (1541,
	1529,
	1543,
	23,
	3,
	'WorkoutSession::create line: 23');
INSERT INTO ACT_REL
	VALUES (1541,
	1540,
	1528,
	'''represents path for''',
	483,
	23,
	37,
	23,
	40);
INSERT INTO ACT_SMT
	VALUES (1543,
	1529,
	1544,
	24,
	3,
	'WorkoutSession::create line: 24');
INSERT INTO ACT_REL
	VALUES (1543,
	1536,
	1528,
	'''acts as the stopwatch for''',
	480,
	24,
	41,
	24,
	44);
INSERT INTO ACT_SMT
	VALUES (1544,
	1529,
	0,
	25,
	3,
	'WorkoutSession::create line: 25');
INSERT INTO ACT_REL
	VALUES (1544,
	1542,
	1528,
	'''indicates current status of''',
	391,
	25,
	36,
	25,
	39);
INSERT INTO V_VAR
	VALUES (1536,
	1529,
	'workoutTimer',
	1,
	300);
INSERT INTO V_INT
	VALUES (1536,
	0,
	364);
INSERT INTO V_VAR
	VALUES (1540,
	1529,
	'trackLog',
	1,
	300);
INSERT INTO V_INT
	VALUES (1540,
	0,
	464);
INSERT INTO V_VAR
	VALUES (1542,
	1529,
	'display',
	1,
	300);
INSERT INTO V_INT
	VALUES (1542,
	0,
	392);
INSERT INTO O_TFR
	VALUES (1545,
	349,
	'reset',
	'',
	294,
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
	404);
INSERT INTO ACT_OPB
	VALUES (1546,
	1545);
INSERT INTO ACT_ACT
	VALUES (1546,
	'operation',
	0,
	1547,
	0,
	0,
	'WorkoutSession::reset',
	0);
INSERT INTO ACT_BLK
	VALUES (1547,
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
	1546,
	0);
INSERT INTO ACT_SMT
	VALUES (1548,
	1547,
	1549,
	5,
	1,
	'WorkoutSession::reset line: 5');
INSERT INTO ACT_SEL
	VALUES (1548,
	1550,
	1,
	'one',
	1551);
INSERT INTO ACT_SR
	VALUES (1548);
INSERT INTO ACT_LNK
	VALUES (1552,
	'''is timed by''',
	1548,
	480,
	0,
	2,
	364,
	5,
	42,
	5,
	55,
	5,
	58);
INSERT INTO ACT_SMT
	VALUES (1549,
	1547,
	1553,
	6,
	1,
	'WorkoutSession::reset line: 6');
INSERT INTO ACT_TFM
	VALUES (1549,
	1538,
	1550,
	6,
	14,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1553,
	1547,
	1554,
	9,
	1,
	'WorkoutSession::reset line: 9');
INSERT INTO ACT_SEL
	VALUES (1553,
	1555,
	1,
	'one',
	1556);
INSERT INTO ACT_SR
	VALUES (1553);
INSERT INTO ACT_LNK
	VALUES (1557,
	'''captures path in''',
	1553,
	483,
	0,
	2,
	464,
	9,
	38,
	9,
	47,
	9,
	50);
INSERT INTO ACT_SMT
	VALUES (1554,
	1547,
	1558,
	10,
	1,
	'WorkoutSession::reset line: 10');
INSERT INTO ACT_TFM
	VALUES (1554,
	1386,
	1555,
	10,
	10,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1558,
	1547,
	1559,
	11,
	1,
	'WorkoutSession::reset line: 11');
INSERT INTO ACT_TFM
	VALUES (1558,
	1446,
	1555,
	11,
	10,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1559,
	1547,
	1560,
	14,
	1,
	'WorkoutSession::reset line: 14');
INSERT INTO ACT_SEL
	VALUES (1559,
	1561,
	1,
	'many',
	1562);
INSERT INTO ACT_SR
	VALUES (1559);
INSERT INTO ACT_LNK
	VALUES (1563,
	'''includes''',
	1559,
	440,
	0,
	3,
	421,
	14,
	40,
	14,
	49,
	14,
	53);
INSERT INTO ACT_SMT
	VALUES (1560,
	1547,
	1564,
	15,
	1,
	'WorkoutSession::reset line: 15');
INSERT INTO ACT_FOR
	VALUES (1560,
	1565,
	1,
	1566,
	1561,
	421);
INSERT INTO ACT_SMT
	VALUES (1564,
	1547,
	1567,
	21,
	1,
	'WorkoutSession::reset line: 21');
INSERT INTO ACT_SEL
	VALUES (1564,
	1568,
	1,
	'one',
	1569);
INSERT INTO ACT_SR
	VALUES (1564);
INSERT INTO ACT_LNK
	VALUES (1570,
	'''is currently executing''',
	1564,
	496,
	0,
	2,
	492,
	21,
	43,
	21,
	48,
	21,
	52);
INSERT INTO ACT_SMT
	VALUES (1567,
	1547,
	1571,
	22,
	1,
	'WorkoutSession::reset line: 22');
INSERT INTO ACT_IF
	VALUES (1567,
	1572,
	1573,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1571,
	1547,
	1574,
	33,
	1,
	'WorkoutSession::reset line: 33');
INSERT INTO ACT_SEL
	VALUES (1571,
	1575,
	1,
	'many',
	1576);
INSERT INTO ACT_SR
	VALUES (1571);
INSERT INTO ACT_LNK
	VALUES (1577,
	'''has executed''',
	1571,
	503,
	0,
	3,
	492,
	33,
	36,
	33,
	41,
	33,
	45);
INSERT INTO ACT_SMT
	VALUES (1574,
	1547,
	1578,
	34,
	1,
	'WorkoutSession::reset line: 34');
INSERT INTO ACT_FOR
	VALUES (1574,
	1579,
	1,
	1580,
	1575,
	492);
INSERT INTO ACT_SMT
	VALUES (1578,
	1547,
	1581,
	45,
	1,
	'WorkoutSession::reset line: 45');
INSERT INTO ACT_AI
	VALUES (1578,
	1582,
	1583,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1581,
	1547,
	0,
	46,
	1,
	'WorkoutSession::reset line: 46');
INSERT INTO ACT_TFM
	VALUES (1581,
	1493,
	1584,
	46,
	6,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1551,
	0,
	0,
	5,
	36,
	39,
	0,
	0,
	0,
	0,
	300,
	1547);
INSERT INTO V_IRF
	VALUES (1551,
	1584);
INSERT INTO V_VAL
	VALUES (1556,
	0,
	0,
	9,
	32,
	35,
	0,
	0,
	0,
	0,
	300,
	1547);
INSERT INTO V_IRF
	VALUES (1556,
	1584);
INSERT INTO V_VAL
	VALUES (1562,
	0,
	0,
	14,
	34,
	37,
	0,
	0,
	0,
	0,
	300,
	1547);
INSERT INTO V_IRF
	VALUES (1562,
	1584);
INSERT INTO V_VAL
	VALUES (1569,
	0,
	0,
	21,
	37,
	40,
	0,
	0,
	0,
	0,
	300,
	1547);
INSERT INTO V_IRF
	VALUES (1569,
	1584);
INSERT INTO V_VAL
	VALUES (1585,
	0,
	0,
	22,
	16,
	28,
	0,
	0,
	0,
	0,
	300,
	1547);
INSERT INTO V_IRF
	VALUES (1585,
	1568);
INSERT INTO V_VAL
	VALUES (1586,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1547);
INSERT INTO V_UNY
	VALUES (1586,
	1585,
	'empty');
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
	295,
	1547);
INSERT INTO V_UNY
	VALUES (1573,
	1586,
	'not');
INSERT INTO V_VAL
	VALUES (1576,
	0,
	0,
	33,
	30,
	33,
	0,
	0,
	0,
	0,
	300,
	1547);
INSERT INTO V_IRF
	VALUES (1576,
	1584);
INSERT INTO V_VAL
	VALUES (1587,
	1,
	0,
	45,
	1,
	4,
	0,
	0,
	0,
	0,
	300,
	1547);
INSERT INTO V_IRF
	VALUES (1587,
	1584);
INSERT INTO V_VAL
	VALUES (1583,
	1,
	0,
	45,
	6,
	24,
	0,
	0,
	0,
	0,
	133,
	1547);
INSERT INTO V_AVL
	VALUES (1583,
	1587,
	349,
	745);
INSERT INTO V_VAL
	VALUES (1582,
	0,
	0,
	45,
	28,
	30,
	0,
	0,
	0,
	0,
	133,
	1547);
INSERT INTO V_LRL
	VALUES (1582,
	'0.0');
INSERT INTO V_VAR
	VALUES (1550,
	1547,
	'workoutTimer',
	1,
	300);
INSERT INTO V_INT
	VALUES (1550,
	0,
	364);
INSERT INTO V_VAR
	VALUES (1584,
	1547,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1584,
	0,
	349);
INSERT INTO V_VAR
	VALUES (1555,
	1547,
	'trackLog',
	1,
	300);
INSERT INTO V_INT
	VALUES (1555,
	0,
	464);
INSERT INTO V_VAR
	VALUES (1561,
	1547,
	'goalSpecs',
	1,
	301);
INSERT INTO V_INS
	VALUES (1561,
	421);
INSERT INTO V_VAR
	VALUES (1566,
	1547,
	'goalSpec',
	1,
	300);
INSERT INTO V_INT
	VALUES (1566,
	1,
	421);
INSERT INTO V_VAR
	VALUES (1568,
	1547,
	'executingGoal',
	1,
	300);
INSERT INTO V_INT
	VALUES (1568,
	0,
	492);
INSERT INTO V_VAR
	VALUES (1575,
	1547,
	'goals',
	1,
	301);
INSERT INTO V_INS
	VALUES (1575,
	492);
INSERT INTO V_VAR
	VALUES (1580,
	1547,
	'goal',
	1,
	300);
INSERT INTO V_INT
	VALUES (1580,
	1,
	492);
INSERT INTO ACT_BLK
	VALUES (1565,
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
	1546,
	0);
INSERT INTO ACT_SMT
	VALUES (1588,
	1565,
	1589,
	16,
	3,
	'WorkoutSession::reset line: 16');
INSERT INTO ACT_UNR
	VALUES (1588,
	1584,
	1566,
	'''includes''',
	440,
	16,
	38,
	16,
	42);
INSERT INTO ACT_SMT
	VALUES (1589,
	1565,
	0,
	17,
	3,
	'WorkoutSession::reset line: 17');
INSERT INTO ACT_DEL
	VALUES (1589,
	1566);
INSERT INTO ACT_BLK
	VALUES (1572,
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
	1546,
	0);
INSERT INTO ACT_SMT
	VALUES (1590,
	1572,
	1591,
	23,
	3,
	'WorkoutSession::reset line: 23');
INSERT INTO ACT_SEL
	VALUES (1590,
	1592,
	1,
	'one',
	1593);
INSERT INTO ACT_SR
	VALUES (1590);
INSERT INTO ACT_LNK
	VALUES (1594,
	'''has open''',
	1590,
	506,
	0,
	2,
	501,
	23,
	56,
	23,
	68,
	23,
	72);
INSERT INTO ACT_SMT
	VALUES (1591,
	1572,
	1595,
	24,
	3,
	'WorkoutSession::reset line: 24');
INSERT INTO ACT_IF
	VALUES (1591,
	1596,
	1597,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1595,
	1572,
	1598,
	28,
	3,
	'WorkoutSession::reset line: 28');
INSERT INTO ACT_UNR
	VALUES (1595,
	1584,
	1568,
	'''is currently executing''',
	496,
	28,
	43,
	28,
	47);
INSERT INTO ACT_SMT
	VALUES (1598,
	1572,
	0,
	29,
	3,
	'WorkoutSession::reset line: 29');
INSERT INTO ACT_DEL
	VALUES (1598,
	1568);
INSERT INTO V_VAL
	VALUES (1593,
	0,
	0,
	23,
	41,
	53,
	0,
	0,
	0,
	0,
	300,
	1572);
INSERT INTO V_IRF
	VALUES (1593,
	1568);
INSERT INTO V_VAL
	VALUES (1599,
	0,
	0,
	24,
	18,
	32,
	0,
	0,
	0,
	0,
	300,
	1572);
INSERT INTO V_IRF
	VALUES (1599,
	1592);
INSERT INTO V_VAL
	VALUES (1600,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1572);
INSERT INTO V_UNY
	VALUES (1600,
	1599,
	'empty');
INSERT INTO V_VAL
	VALUES (1597,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1572);
INSERT INTO V_UNY
	VALUES (1597,
	1600,
	'not');
INSERT INTO V_VAR
	VALUES (1592,
	1572,
	'openAchievement',
	1,
	300);
INSERT INTO V_INT
	VALUES (1592,
	0,
	501);
INSERT INTO ACT_BLK
	VALUES (1596,
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
	1546,
	0);
INSERT INTO ACT_SMT
	VALUES (1601,
	1596,
	1602,
	25,
	5,
	'WorkoutSession::reset line: 25');
INSERT INTO ACT_UNR
	VALUES (1601,
	1592,
	1568,
	'''is open for''',
	506,
	25,
	56,
	25,
	60);
INSERT INTO ACT_SMT
	VALUES (1602,
	1596,
	0,
	26,
	5,
	'WorkoutSession::reset line: 26');
INSERT INTO ACT_DEL
	VALUES (1602,
	1592);
INSERT INTO ACT_BLK
	VALUES (1579,
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
	1546,
	0);
INSERT INTO ACT_SMT
	VALUES (1603,
	1579,
	1604,
	35,
	3,
	'WorkoutSession::reset line: 35');
INSERT INTO ACT_SEL
	VALUES (1603,
	1605,
	1,
	'many',
	1606);
INSERT INTO ACT_SR
	VALUES (1603);
INSERT INTO ACT_LNK
	VALUES (1607,
	'''has recorded''',
	1603,
	499,
	0,
	3,
	501,
	35,
	45,
	35,
	57,
	35,
	61);
INSERT INTO ACT_SMT
	VALUES (1604,
	1579,
	1608,
	36,
	3,
	'WorkoutSession::reset line: 36');
INSERT INTO ACT_FOR
	VALUES (1604,
	1609,
	1,
	1610,
	1605,
	501);
INSERT INTO ACT_SMT
	VALUES (1608,
	1579,
	1611,
	40,
	3,
	'WorkoutSession::reset line: 40');
INSERT INTO ACT_UNR
	VALUES (1608,
	1584,
	1580,
	'''has executed''',
	503,
	40,
	34,
	40,
	38);
INSERT INTO ACT_SMT
	VALUES (1611,
	1579,
	0,
	41,
	3,
	'WorkoutSession::reset line: 41');
INSERT INTO ACT_DEL
	VALUES (1611,
	1580);
INSERT INTO V_VAL
	VALUES (1606,
	0,
	0,
	35,
	39,
	42,
	0,
	0,
	0,
	0,
	300,
	1579);
INSERT INTO V_IRF
	VALUES (1606,
	1580);
INSERT INTO V_VAR
	VALUES (1605,
	1579,
	'achievements',
	1,
	301);
INSERT INTO V_INS
	VALUES (1605,
	501);
INSERT INTO V_VAR
	VALUES (1610,
	1579,
	'achievement',
	1,
	300);
INSERT INTO V_INT
	VALUES (1610,
	1,
	501);
INSERT INTO ACT_BLK
	VALUES (1609,
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
	1546,
	0);
INSERT INTO ACT_SMT
	VALUES (1612,
	1609,
	1613,
	37,
	5,
	'WorkoutSession::reset line: 37');
INSERT INTO ACT_UNR
	VALUES (1612,
	1580,
	1610,
	'''has recorded''',
	499,
	37,
	43,
	37,
	47);
INSERT INTO ACT_SMT
	VALUES (1613,
	1609,
	0,
	38,
	5,
	'WorkoutSession::reset line: 38');
INSERT INTO ACT_DEL
	VALUES (1613,
	1610);
INSERT INTO O_NBATTR
	VALUES (1520,
	349);
INSERT INTO O_BATTR
	VALUES (1520,
	349);
INSERT INTO O_ATTR
	VALUES (1520,
	349,
	0,
	'startDate',
	'UTC Date on which this session commenced.',
	'',
	'startDate',
	0,
	306,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1522,
	349);
INSERT INTO O_BATTR
	VALUES (1522,
	349);
INSERT INTO O_ATTR
	VALUES (1522,
	349,
	1520,
	'startTime',
	'UTC time at which this session commenced.',
	'',
	'startTime',
	0,
	308,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (775,
	349,
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
	VALUES (1614,
	349,
	775,
	1);
INSERT INTO ACT_ACT
	VALUES (1614,
	'derived attribute',
	0,
	1615,
	0,
	0,
	'WorkoutSession::currentSpeed',
	0);
INSERT INTO ACT_BLK
	VALUES (1615,
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
	1614,
	0);
INSERT INTO ACT_SMT
	VALUES (1616,
	1615,
	1617,
	6,
	1,
	'WorkoutSession::currentSpeed line: 6');
INSERT INTO ACT_SEL
	VALUES (1616,
	1618,
	1,
	'one',
	1619);
INSERT INTO ACT_SR
	VALUES (1616);
INSERT INTO ACT_LNK
	VALUES (1620,
	'''captures path in''',
	1616,
	483,
	1621,
	2,
	464,
	6,
	39,
	6,
	48,
	6,
	51);
INSERT INTO ACT_LNK
	VALUES (1621,
	'''has last''',
	0,
	471,
	0,
	2,
	466,
	6,
	72,
	6,
	83,
	6,
	86);
INSERT INTO ACT_SMT
	VALUES (1617,
	1615,
	1622,
	7,
	1,
	'WorkoutSession::currentSpeed line: 7');
INSERT INTO ACT_AI
	VALUES (1617,
	1623,
	1624,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1622,
	1615,
	1625,
	8,
	1,
	'WorkoutSession::currentSpeed line: 8');
INSERT INTO ACT_IF
	VALUES (1622,
	1626,
	1627,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1625,
	1615,
	0,
	30,
	1,
	'WorkoutSession::currentSpeed line: 30');
INSERT INTO ACT_AI
	VALUES (1625,
	1628,
	1629,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1619,
	0,
	0,
	6,
	33,
	36,
	0,
	0,
	0,
	0,
	300,
	1615);
INSERT INTO V_IRF
	VALUES (1619,
	1630);
INSERT INTO V_VAL
	VALUES (1624,
	1,
	1,
	7,
	1,
	5,
	0,
	0,
	0,
	0,
	133,
	1615);
INSERT INTO V_TVL
	VALUES (1624,
	1631);
INSERT INTO V_VAL
	VALUES (1623,
	0,
	0,
	7,
	9,
	11,
	0,
	0,
	0,
	0,
	133,
	1615);
INSERT INTO V_LRL
	VALUES (1623,
	'0.0');
INSERT INTO V_VAL
	VALUES (1632,
	0,
	0,
	8,
	16,
	24,
	0,
	0,
	0,
	0,
	300,
	1615);
INSERT INTO V_IRF
	VALUES (1632,
	1618);
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
	295,
	1615);
INSERT INTO V_UNY
	VALUES (1633,
	1632,
	'empty');
INSERT INTO V_VAL
	VALUES (1627,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1615);
INSERT INTO V_UNY
	VALUES (1627,
	1633,
	'not');
INSERT INTO V_VAL
	VALUES (1634,
	1,
	0,
	30,
	1,
	4,
	0,
	0,
	0,
	0,
	300,
	1615);
INSERT INTO V_IRF
	VALUES (1634,
	1630);
INSERT INTO V_VAL
	VALUES (1629,
	1,
	0,
	30,
	6,
	17,
	0,
	0,
	0,
	0,
	133,
	1615);
INSERT INTO V_AVL
	VALUES (1629,
	1634,
	349,
	775);
INSERT INTO V_VAL
	VALUES (1628,
	0,
	0,
	30,
	21,
	25,
	0,
	0,
	0,
	0,
	133,
	1615);
INSERT INTO V_TVL
	VALUES (1628,
	1631);
INSERT INTO V_VAR
	VALUES (1618,
	1615,
	'lastPoint',
	1,
	300);
INSERT INTO V_INT
	VALUES (1618,
	0,
	466);
INSERT INTO V_VAR
	VALUES (1630,
	1615,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1630,
	0,
	349);
INSERT INTO V_VAR
	VALUES (1631,
	1615,
	'speed',
	1,
	133);
INSERT INTO V_TRN
	VALUES (1631,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (1626,
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
	1614,
	0);
INSERT INTO ACT_SMT
	VALUES (1635,
	1626,
	1636,
	9,
	3,
	'WorkoutSession::currentSpeed line: 9');
INSERT INTO ACT_AI
	VALUES (1635,
	1637,
	1638,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1636,
	1626,
	1639,
	10,
	3,
	'WorkoutSession::currentSpeed line: 10');
INSERT INTO ACT_AI
	VALUES (1636,
	1640,
	1641,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1639,
	1626,
	1642,
	11,
	3,
	'WorkoutSession::currentSpeed line: 11');
INSERT INTO ACT_AI
	VALUES (1639,
	1643,
	1644,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1642,
	1626,
	1645,
	12,
	3,
	'WorkoutSession::currentSpeed line: 12');
INSERT INTO ACT_AI
	VALUES (1642,
	1646,
	1647,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1645,
	1626,
	1648,
	13,
	3,
	'WorkoutSession::currentSpeed line: 13');
INSERT INTO ACT_AI
	VALUES (1645,
	1649,
	1650,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1648,
	1626,
	1651,
	14,
	3,
	'WorkoutSession::currentSpeed line: 14');
INSERT INTO ACT_WHL
	VALUES (1648,
	1652,
	1653);
INSERT INTO ACT_SMT
	VALUES (1651,
	1626,
	1654,
	25,
	3,
	'WorkoutSession::currentSpeed line: 25');
INSERT INTO ACT_AI
	VALUES (1651,
	1655,
	1656,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1654,
	1626,
	0,
	26,
	3,
	'WorkoutSession::currentSpeed line: 26');
INSERT INTO ACT_AI
	VALUES (1654,
	1657,
	1658,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1638,
	1,
	1,
	9,
	3,
	8,
	0,
	0,
	0,
	0,
	300,
	1626);
INSERT INTO V_IRF
	VALUES (1638,
	1659);
INSERT INTO V_VAL
	VALUES (1637,
	0,
	0,
	9,
	12,
	20,
	0,
	0,
	0,
	0,
	300,
	1626);
INSERT INTO V_IRF
	VALUES (1637,
	1618);
INSERT INTO V_VAL
	VALUES (1641,
	1,
	1,
	10,
	3,
	7,
	0,
	0,
	0,
	0,
	188,
	1626);
INSERT INTO V_TVL
	VALUES (1641,
	1660);
INSERT INTO V_VAL
	VALUES (1640,
	0,
	0,
	10,
	11,
	30,
	0,
	0,
	0,
	0,
	188,
	1626);
INSERT INTO V_SCV
	VALUES (1640,
	1661,
	188);
INSERT INTO V_VAL
	VALUES (1644,
	1,
	1,
	11,
	3,
	15,
	0,
	0,
	0,
	0,
	133,
	1626);
INSERT INTO V_TVL
	VALUES (1644,
	1662);
INSERT INTO V_VAL
	VALUES (1643,
	0,
	0,
	11,
	19,
	21,
	0,
	0,
	0,
	0,
	133,
	1626);
INSERT INTO V_LRL
	VALUES (1643,
	'0.0');
INSERT INTO V_VAL
	VALUES (1647,
	1,
	1,
	12,
	3,
	13,
	0,
	0,
	0,
	0,
	133,
	1626);
INSERT INTO V_TVL
	VALUES (1647,
	1663);
INSERT INTO V_VAL
	VALUES (1646,
	0,
	0,
	12,
	17,
	19,
	0,
	0,
	0,
	0,
	133,
	1626);
INSERT INTO V_LRL
	VALUES (1646,
	'0.0');
INSERT INTO V_VAL
	VALUES (1650,
	1,
	0,
	13,
	3,
	13,
	0,
	0,
	0,
	0,
	133,
	1626);
INSERT INTO V_TVL
	VALUES (1650,
	1663);
INSERT INTO V_VAL
	VALUES (1664,
	0,
	0,
	13,
	17,
	25,
	0,
	0,
	0,
	0,
	300,
	1626);
INSERT INTO V_IRF
	VALUES (1664,
	1618);
INSERT INTO V_VAL
	VALUES (1649,
	0,
	0,
	13,
	27,
	30,
	0,
	0,
	0,
	0,
	188,
	1626);
INSERT INTO V_AVL
	VALUES (1649,
	1664,
	466,
	1343);
INSERT INTO V_VAL
	VALUES (1665,
	0,
	0,
	14,
	11,
	15,
	0,
	0,
	0,
	0,
	188,
	1626);
INSERT INTO V_TVL
	VALUES (1665,
	1660);
INSERT INTO V_VAL
	VALUES (1652,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1626);
INSERT INTO V_BIN
	VALUES (1652,
	1666,
	1665,
	'>');
INSERT INTO V_VAL
	VALUES (1666,
	0,
	0,
	14,
	19,
	19,
	0,
	0,
	0,
	0,
	188,
	1626);
INSERT INTO V_LIN
	VALUES (1666,
	'0');
INSERT INTO V_VAL
	VALUES (1656,
	1,
	0,
	25,
	3,
	13,
	0,
	0,
	0,
	0,
	133,
	1626);
INSERT INTO V_TVL
	VALUES (1656,
	1663);
INSERT INTO V_VAL
	VALUES (1667,
	0,
	0,
	25,
	17,
	27,
	0,
	0,
	0,
	0,
	133,
	1626);
INSERT INTO V_TVL
	VALUES (1667,
	1663);
INSERT INTO V_VAL
	VALUES (1655,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	133,
	1626);
INSERT INTO V_BIN
	VALUES (1655,
	1668,
	1667,
	'-');
INSERT INTO V_VAL
	VALUES (1669,
	0,
	0,
	25,
	31,
	36,
	0,
	0,
	0,
	0,
	300,
	1626);
INSERT INTO V_IRF
	VALUES (1669,
	1659);
INSERT INTO V_VAL
	VALUES (1668,
	0,
	0,
	25,
	38,
	41,
	0,
	0,
	0,
	0,
	188,
	1626);
INSERT INTO V_AVL
	VALUES (1668,
	1669,
	466,
	1343);
INSERT INTO V_VAL
	VALUES (1658,
	1,
	0,
	26,
	3,
	7,
	0,
	0,
	0,
	0,
	133,
	1626);
INSERT INTO V_TVL
	VALUES (1658,
	1631);
INSERT INTO V_VAL
	VALUES (1670,
	0,
	0,
	26,
	12,
	24,
	0,
	0,
	0,
	0,
	133,
	1626);
INSERT INTO V_TVL
	VALUES (1670,
	1662);
INSERT INTO V_VAL
	VALUES (1671,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	133,
	1626);
INSERT INTO V_BIN
	VALUES (1671,
	1672,
	1670,
	'/');
INSERT INTO V_VAL
	VALUES (1672,
	0,
	0,
	26,
	28,
	31,
	0,
	0,
	0,
	0,
	188,
	1626);
INSERT INTO V_LIN
	VALUES (1672,
	'1000');
INSERT INTO V_VAL
	VALUES (1657,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	133,
	1626);
INSERT INTO V_BIN
	VALUES (1657,
	1673,
	1671,
	'/');
INSERT INTO V_VAL
	VALUES (1674,
	0,
	0,
	26,
	37,
	47,
	0,
	0,
	0,
	0,
	133,
	1626);
INSERT INTO V_TVL
	VALUES (1674,
	1663);
INSERT INTO V_VAL
	VALUES (1673,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	133,
	1626);
INSERT INTO V_BIN
	VALUES (1673,
	1675,
	1674,
	'/');
INSERT INTO V_VAL
	VALUES (1675,
	0,
	0,
	26,
	51,
	64,
	0,
	0,
	0,
	0,
	188,
	1626);
INSERT INTO V_SCV
	VALUES (1675,
	1676,
	188);
INSERT INTO V_VAR
	VALUES (1659,
	1626,
	'cursor',
	1,
	300);
INSERT INTO V_INT
	VALUES (1659,
	0,
	466);
INSERT INTO V_VAR
	VALUES (1660,
	1626,
	'index',
	1,
	188);
INSERT INTO V_TRN
	VALUES (1660,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1662,
	1626,
	'totalDistance',
	1,
	133);
INSERT INTO V_TRN
	VALUES (1662,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1663,
	1626,
	'elapsedTime',
	1,
	133);
INSERT INTO V_TRN
	VALUES (1663,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (1653,
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
	1614,
	0);
INSERT INTO ACT_SMT
	VALUES (1677,
	1653,
	1678,
	15,
	5,
	'WorkoutSession::currentSpeed line: 15');
INSERT INTO ACT_SEL
	VALUES (1677,
	1679,
	1,
	'one',
	1680);
INSERT INTO ACT_SR
	VALUES (1677);
INSERT INTO ACT_LNK
	VALUES (1681,
	'preceeds',
	1677,
	468,
	0,
	2,
	466,
	15,
	49,
	15,
	60,
	15,
	63);
INSERT INTO ACT_SMT
	VALUES (1678,
	1653,
	1682,
	16,
	5,
	'WorkoutSession::currentSpeed line: 16');
INSERT INTO ACT_IF
	VALUES (1678,
	1683,
	1684,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1682,
	1653,
	1685,
	19,
	5,
	'WorkoutSession::currentSpeed line: 19');
INSERT INTO ACT_AI
	VALUES (1682,
	1686,
	1687,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1685,
	1653,
	1688,
	21,
	5,
	'WorkoutSession::currentSpeed line: 21');
INSERT INTO ACT_AI
	VALUES (1685,
	1689,
	1690,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1688,
	1653,
	1691,
	22,
	5,
	'WorkoutSession::currentSpeed line: 22');
INSERT INTO ACT_AI
	VALUES (1688,
	1692,
	1693,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1691,
	1653,
	0,
	23,
	5,
	'WorkoutSession::currentSpeed line: 23');
INSERT INTO ACT_AI
	VALUES (1691,
	1694,
	1695,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1680,
	0,
	0,
	15,
	41,
	46,
	0,
	0,
	0,
	0,
	300,
	1653);
INSERT INTO V_IRF
	VALUES (1680,
	1659);
INSERT INTO V_VAL
	VALUES (1696,
	0,
	0,
	16,
	16,
	28,
	0,
	0,
	0,
	0,
	300,
	1653);
INSERT INTO V_IRF
	VALUES (1696,
	1679);
INSERT INTO V_VAL
	VALUES (1684,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1653);
INSERT INTO V_UNY
	VALUES (1684,
	1696,
	'empty');
INSERT INTO V_VAL
	VALUES (1687,
	1,
	1,
	19,
	10,
	17,
	0,
	0,
	0,
	0,
	133,
	1653);
INSERT INTO V_TVL
	VALUES (1687,
	1697);
INSERT INTO V_VAL
	VALUES (1686,
	0,
	0,
	19,
	31,
	42,
	19,
	44,
	20,
	70,
	133,
	1653);
INSERT INTO V_MSV
	VALUES (1686,
	0,
	311,
	1,
	19,
	21,
	0);
INSERT INTO V_VAL
	VALUES (1698,
	0,
	0,
	19,
	52,
	57,
	0,
	0,
	0,
	0,
	300,
	1653);
INSERT INTO V_IRF
	VALUES (1698,
	1659);
INSERT INTO V_VAL
	VALUES (1699,
	0,
	0,
	19,
	59,
	66,
	0,
	0,
	0,
	0,
	133,
	1653);
INSERT INTO V_AVL
	VALUES (1699,
	1698,
	466,
	1347);
INSERT INTO V_PAR
	VALUES (1699,
	0,
	1686,
	'fromLat',
	1700,
	19,
	44);
INSERT INTO V_VAL
	VALUES (1701,
	0,
	0,
	19,
	79,
	84,
	0,
	0,
	0,
	0,
	300,
	1653);
INSERT INTO V_IRF
	VALUES (1701,
	1659);
INSERT INTO V_VAL
	VALUES (1700,
	0,
	0,
	19,
	86,
	94,
	0,
	0,
	0,
	0,
	133,
	1653);
INSERT INTO V_AVL
	VALUES (1700,
	1701,
	466,
	1350);
INSERT INTO V_PAR
	VALUES (1700,
	0,
	1686,
	'fromLong',
	1702,
	19,
	69);
INSERT INTO V_VAL
	VALUES (1703,
	0,
	0,
	20,
	46,
	58,
	0,
	0,
	0,
	0,
	300,
	1653);
INSERT INTO V_IRF
	VALUES (1703,
	1679);
INSERT INTO V_VAL
	VALUES (1702,
	0,
	0,
	20,
	60,
	67,
	0,
	0,
	0,
	0,
	133,
	1653);
INSERT INTO V_AVL
	VALUES (1702,
	1703,
	466,
	1347);
INSERT INTO V_PAR
	VALUES (1702,
	0,
	1686,
	'toLat',
	1704,
	20,
	39);
INSERT INTO V_VAL
	VALUES (1705,
	0,
	0,
	20,
	78,
	90,
	0,
	0,
	0,
	0,
	300,
	1653);
INSERT INTO V_IRF
	VALUES (1705,
	1679);
INSERT INTO V_VAL
	VALUES (1704,
	0,
	0,
	20,
	92,
	100,
	0,
	0,
	0,
	0,
	133,
	1653);
INSERT INTO V_AVL
	VALUES (1704,
	1705,
	466,
	1350);
INSERT INTO V_PAR
	VALUES (1704,
	0,
	1686,
	'toLong',
	0,
	20,
	70);
INSERT INTO V_VAL
	VALUES (1690,
	1,
	0,
	21,
	5,
	17,
	0,
	0,
	0,
	0,
	133,
	1653);
INSERT INTO V_TVL
	VALUES (1690,
	1662);
INSERT INTO V_VAL
	VALUES (1706,
	0,
	0,
	21,
	21,
	33,
	0,
	0,
	0,
	0,
	133,
	1653);
INSERT INTO V_TVL
	VALUES (1706,
	1662);
INSERT INTO V_VAL
	VALUES (1689,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	133,
	1653);
INSERT INTO V_BIN
	VALUES (1689,
	1707,
	1706,
	'+');
INSERT INTO V_VAL
	VALUES (1707,
	0,
	0,
	21,
	37,
	44,
	0,
	0,
	0,
	0,
	133,
	1653);
INSERT INTO V_TVL
	VALUES (1707,
	1697);
INSERT INTO V_VAL
	VALUES (1693,
	1,
	0,
	22,
	5,
	9,
	0,
	0,
	0,
	0,
	188,
	1653);
INSERT INTO V_TVL
	VALUES (1693,
	1660);
INSERT INTO V_VAL
	VALUES (1708,
	0,
	0,
	22,
	13,
	17,
	0,
	0,
	0,
	0,
	188,
	1653);
INSERT INTO V_TVL
	VALUES (1708,
	1660);
INSERT INTO V_VAL
	VALUES (1692,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	188,
	1653);
INSERT INTO V_BIN
	VALUES (1692,
	1709,
	1708,
	'-');
INSERT INTO V_VAL
	VALUES (1709,
	0,
	0,
	22,
	21,
	21,
	0,
	0,
	0,
	0,
	188,
	1653);
INSERT INTO V_LIN
	VALUES (1709,
	'1');
INSERT INTO V_VAL
	VALUES (1695,
	1,
	0,
	23,
	5,
	10,
	0,
	0,
	0,
	0,
	300,
	1653);
INSERT INTO V_IRF
	VALUES (1695,
	1659);
INSERT INTO V_VAL
	VALUES (1694,
	0,
	0,
	23,
	14,
	26,
	0,
	0,
	0,
	0,
	300,
	1653);
INSERT INTO V_IRF
	VALUES (1694,
	1679);
INSERT INTO V_VAR
	VALUES (1679,
	1653,
	'previousPoint',
	1,
	300);
INSERT INTO V_INT
	VALUES (1679,
	0,
	466);
INSERT INTO V_VAR
	VALUES (1697,
	1653,
	'distance',
	1,
	133);
INSERT INTO V_TRN
	VALUES (1697,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (1683,
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
	1614,
	0);
INSERT INTO ACT_SMT
	VALUES (1710,
	1683,
	0,
	17,
	7,
	'WorkoutSession::currentSpeed line: 17');
INSERT INTO ACT_BRK
	VALUES (1710);
INSERT INTO O_BATTR
	VALUES (775,
	349);
INSERT INTO O_ATTR
	VALUES (775,
	349,
	1522,
	'currentSpeed',
	'The current speed of the device, expressed in kilometers per hour, averaged 
over a predefined number of the most recently acquired track points.
',
	'',
	'currentSpeed',
	0,
	133,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (796,
	349,
	'// Calculate current pace from current speed, converting from km/hour to minutes/km.

if ( self.currentSpeed != 0.0 )
  self.currentPace = 60.0 / self.currentSpeed;
else
  self.currentPace = 0.0;
end if;',
	1);
INSERT INTO ACT_DAB
	VALUES (1711,
	349,
	796,
	1);
INSERT INTO ACT_ACT
	VALUES (1711,
	'derived attribute',
	0,
	1712,
	0,
	0,
	'WorkoutSession::currentPace',
	0);
INSERT INTO ACT_BLK
	VALUES (1712,
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
	1711,
	0);
INSERT INTO ACT_SMT
	VALUES (1713,
	1712,
	0,
	3,
	1,
	'WorkoutSession::currentPace line: 3');
INSERT INTO ACT_IF
	VALUES (1713,
	1714,
	1715,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1716,
	1712,
	0,
	5,
	1,
	'WorkoutSession::currentPace line: 5');
INSERT INTO ACT_E
	VALUES (1716,
	1717,
	1713);
INSERT INTO V_VAL
	VALUES (1718,
	0,
	0,
	3,
	6,
	9,
	0,
	0,
	0,
	0,
	300,
	1712);
INSERT INTO V_IRF
	VALUES (1718,
	1719);
INSERT INTO V_VAL
	VALUES (1720,
	0,
	0,
	3,
	11,
	22,
	0,
	0,
	0,
	0,
	133,
	1712);
INSERT INTO V_AVL
	VALUES (1720,
	1718,
	349,
	775);
INSERT INTO V_VAL
	VALUES (1715,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1712);
INSERT INTO V_BIN
	VALUES (1715,
	1721,
	1720,
	'!=');
INSERT INTO V_VAL
	VALUES (1721,
	0,
	0,
	3,
	27,
	29,
	0,
	0,
	0,
	0,
	133,
	1712);
INSERT INTO V_LRL
	VALUES (1721,
	'0.0');
INSERT INTO V_VAR
	VALUES (1719,
	1712,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1719,
	0,
	349);
INSERT INTO ACT_BLK
	VALUES (1714,
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
	1711,
	0);
INSERT INTO ACT_SMT
	VALUES (1722,
	1714,
	0,
	4,
	3,
	'WorkoutSession::currentPace line: 4');
INSERT INTO ACT_AI
	VALUES (1722,
	1723,
	1724,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1725,
	1,
	0,
	4,
	3,
	6,
	0,
	0,
	0,
	0,
	300,
	1714);
INSERT INTO V_IRF
	VALUES (1725,
	1719);
INSERT INTO V_VAL
	VALUES (1724,
	1,
	0,
	4,
	8,
	18,
	0,
	0,
	0,
	0,
	133,
	1714);
INSERT INTO V_AVL
	VALUES (1724,
	1725,
	349,
	796);
INSERT INTO V_VAL
	VALUES (1726,
	0,
	0,
	4,
	22,
	25,
	0,
	0,
	0,
	0,
	133,
	1714);
INSERT INTO V_LRL
	VALUES (1726,
	'60.0');
INSERT INTO V_VAL
	VALUES (1723,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	133,
	1714);
INSERT INTO V_BIN
	VALUES (1723,
	1727,
	1726,
	'/');
INSERT INTO V_VAL
	VALUES (1728,
	0,
	0,
	4,
	29,
	32,
	0,
	0,
	0,
	0,
	300,
	1714);
INSERT INTO V_IRF
	VALUES (1728,
	1719);
INSERT INTO V_VAL
	VALUES (1727,
	0,
	0,
	4,
	34,
	45,
	0,
	0,
	0,
	0,
	133,
	1714);
INSERT INTO V_AVL
	VALUES (1727,
	1728,
	349,
	775);
INSERT INTO ACT_BLK
	VALUES (1717,
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
	1711,
	0);
INSERT INTO ACT_SMT
	VALUES (1729,
	1717,
	0,
	6,
	3,
	'WorkoutSession::currentPace line: 6');
INSERT INTO ACT_AI
	VALUES (1729,
	1730,
	1731,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1732,
	1,
	0,
	6,
	3,
	6,
	0,
	0,
	0,
	0,
	300,
	1717);
INSERT INTO V_IRF
	VALUES (1732,
	1719);
INSERT INTO V_VAL
	VALUES (1731,
	1,
	0,
	6,
	8,
	18,
	0,
	0,
	0,
	0,
	133,
	1717);
INSERT INTO V_AVL
	VALUES (1731,
	1732,
	349,
	796);
INSERT INTO V_VAL
	VALUES (1730,
	0,
	0,
	6,
	22,
	24,
	0,
	0,
	0,
	0,
	133,
	1717);
INSERT INTO V_LRL
	VALUES (1730,
	'0.0');
INSERT INTO O_BATTR
	VALUES (796,
	349);
INSERT INTO O_ATTR
	VALUES (796,
	349,
	775,
	'currentPace',
	'The inverse of currentSpeed, expressed in minutes per kilometer.',
	'',
	'currentPace',
	0,
	133,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (817,
	349,
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
	VALUES (1733,
	349,
	817,
	1);
INSERT INTO ACT_ACT
	VALUES (1733,
	'derived attribute',
	0,
	1734,
	0,
	0,
	'WorkoutSession::currentHeartRate',
	0);
INSERT INTO ACT_BLK
	VALUES (1734,
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
	1733,
	0);
INSERT INTO ACT_SMT
	VALUES (1735,
	1734,
	1736,
	3,
	1,
	'WorkoutSession::currentHeartRate line: 3');
INSERT INTO ACT_SEL
	VALUES (1735,
	1737,
	1,
	'one',
	1738);
INSERT INTO ACT_SR
	VALUES (1735);
INSERT INTO ACT_LNK
	VALUES (1739,
	'''is timed by''',
	1735,
	480,
	0,
	2,
	364,
	3,
	42,
	3,
	55,
	3,
	58);
INSERT INTO ACT_SMT
	VALUES (1736,
	1734,
	1740,
	4,
	1,
	'WorkoutSession::currentHeartRate line: 4');
INSERT INTO ACT_SEL
	VALUES (1736,
	1741,
	1,
	'many',
	1742);
INSERT INTO ACT_SRW
	VALUES (1736,
	1743);
INSERT INTO ACT_LNK
	VALUES (1744,
	'''tracks heart rate over time as''',
	1736,
	486,
	0,
	3,
	487,
	4,
	38,
	4,
	54,
	4,
	57);
INSERT INTO ACT_SMT
	VALUES (1740,
	1734,
	1745,
	6,
	1,
	'WorkoutSession::currentHeartRate line: 6');
INSERT INTO ACT_AI
	VALUES (1740,
	1746,
	1747,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1745,
	1734,
	1748,
	7,
	1,
	'WorkoutSession::currentHeartRate line: 7');
INSERT INTO ACT_AI
	VALUES (1745,
	1749,
	1750,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1748,
	1734,
	1751,
	8,
	1,
	'WorkoutSession::currentHeartRate line: 8');
INSERT INTO ACT_FOR
	VALUES (1748,
	1752,
	1,
	1753,
	1741,
	487);
INSERT INTO ACT_SMT
	VALUES (1751,
	1734,
	0,
	12,
	1,
	'WorkoutSession::currentHeartRate line: 12');
INSERT INTO ACT_IF
	VALUES (1751,
	1754,
	1755,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1756,
	1734,
	0,
	14,
	1,
	'WorkoutSession::currentHeartRate line: 14');
INSERT INTO ACT_E
	VALUES (1756,
	1757,
	1751);
INSERT INTO V_VAL
	VALUES (1738,
	0,
	0,
	3,
	36,
	39,
	0,
	0,
	0,
	0,
	300,
	1734);
INSERT INTO V_IRF
	VALUES (1738,
	1758);
INSERT INTO V_VAL
	VALUES (1742,
	0,
	0,
	4,
	32,
	35,
	0,
	0,
	0,
	0,
	300,
	1734);
INSERT INTO V_IRF
	VALUES (1742,
	1758);
INSERT INTO V_VAL
	VALUES (1759,
	0,
	0,
	5,
	11,
	-1,
	0,
	0,
	0,
	0,
	300,
	1734);
INSERT INTO V_SLR
	VALUES (1759,
	0,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1760,
	0,
	0,
	5,
	20,
	23,
	0,
	0,
	0,
	0,
	188,
	1734);
INSERT INTO V_AVL
	VALUES (1760,
	1759,
	487,
	1288);
INSERT INTO V_VAL
	VALUES (1743,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1734);
INSERT INTO V_BIN
	VALUES (1743,
	1761,
	1760,
	'>=');
INSERT INTO V_VAL
	VALUES (1762,
	0,
	0,
	5,
	30,
	41,
	0,
	0,
	0,
	0,
	300,
	1734);
INSERT INTO V_IRF
	VALUES (1762,
	1737);
INSERT INTO V_VAL
	VALUES (1763,
	0,
	0,
	5,
	43,
	46,
	0,
	0,
	0,
	0,
	188,
	1734);
INSERT INTO V_AVL
	VALUES (1763,
	1762,
	364,
	669);
INSERT INTO V_VAL
	VALUES (1761,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	188,
	1734);
INSERT INTO V_BIN
	VALUES (1761,
	1764,
	1763,
	'-');
INSERT INTO V_VAL
	VALUES (1765,
	0,
	0,
	5,
	51,
	73,
	0,
	0,
	0,
	0,
	188,
	1734);
INSERT INTO V_SCV
	VALUES (1765,
	1766,
	188);
INSERT INTO V_VAL
	VALUES (1764,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	188,
	1734);
INSERT INTO V_BIN
	VALUES (1764,
	1767,
	1765,
	'*');
INSERT INTO V_VAL
	VALUES (1767,
	0,
	0,
	5,
	77,
	100,
	0,
	0,
	0,
	0,
	188,
	1734);
INSERT INTO V_SCV
	VALUES (1767,
	1768,
	188);
INSERT INTO V_VAL
	VALUES (1747,
	1,
	1,
	6,
	1,
	15,
	0,
	0,
	0,
	0,
	188,
	1734);
INSERT INTO V_TVL
	VALUES (1747,
	1769);
INSERT INTO V_VAL
	VALUES (1746,
	0,
	0,
	6,
	19,
	19,
	0,
	0,
	0,
	0,
	188,
	1734);
INSERT INTO V_LIN
	VALUES (1746,
	'0');
INSERT INTO V_VAL
	VALUES (1750,
	1,
	1,
	7,
	1,
	3,
	0,
	0,
	0,
	0,
	188,
	1734);
INSERT INTO V_TVL
	VALUES (1750,
	1770);
INSERT INTO V_VAL
	VALUES (1749,
	0,
	0,
	7,
	7,
	7,
	0,
	0,
	0,
	0,
	188,
	1734);
INSERT INTO V_LIN
	VALUES (1749,
	'0');
INSERT INTO V_VAL
	VALUES (1771,
	0,
	0,
	12,
	6,
	20,
	0,
	0,
	0,
	0,
	188,
	1734);
INSERT INTO V_TVL
	VALUES (1771,
	1769);
INSERT INTO V_VAL
	VALUES (1755,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1734);
INSERT INTO V_BIN
	VALUES (1755,
	1772,
	1771,
	'>');
INSERT INTO V_VAL
	VALUES (1772,
	0,
	0,
	12,
	24,
	24,
	0,
	0,
	0,
	0,
	188,
	1734);
INSERT INTO V_LIN
	VALUES (1772,
	'0');
INSERT INTO V_VAR
	VALUES (1737,
	1734,
	'workoutTimer',
	1,
	300);
INSERT INTO V_INT
	VALUES (1737,
	0,
	364);
INSERT INTO V_VAR
	VALUES (1758,
	1734,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1758,
	0,
	349);
INSERT INTO V_VAR
	VALUES (1741,
	1734,
	'samples',
	1,
	301);
INSERT INTO V_INS
	VALUES (1741,
	487);
INSERT INTO V_VAR
	VALUES (1769,
	1734,
	'numberOfSamples',
	1,
	188);
INSERT INTO V_TRN
	VALUES (1769,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1770,
	1734,
	'sum',
	1,
	188);
INSERT INTO V_TRN
	VALUES (1770,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1753,
	1734,
	'sample',
	1,
	300);
INSERT INTO V_INT
	VALUES (1753,
	1,
	487);
INSERT INTO ACT_BLK
	VALUES (1752,
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
	1733,
	0);
INSERT INTO ACT_SMT
	VALUES (1773,
	1752,
	1774,
	9,
	3,
	'WorkoutSession::currentHeartRate line: 9');
INSERT INTO ACT_AI
	VALUES (1773,
	1775,
	1776,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1774,
	1752,
	0,
	10,
	3,
	'WorkoutSession::currentHeartRate line: 10');
INSERT INTO ACT_AI
	VALUES (1774,
	1777,
	1778,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1776,
	1,
	0,
	9,
	3,
	17,
	0,
	0,
	0,
	0,
	188,
	1752);
INSERT INTO V_TVL
	VALUES (1776,
	1769);
INSERT INTO V_VAL
	VALUES (1779,
	0,
	0,
	9,
	21,
	35,
	0,
	0,
	0,
	0,
	188,
	1752);
INSERT INTO V_TVL
	VALUES (1779,
	1769);
INSERT INTO V_VAL
	VALUES (1775,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	188,
	1752);
INSERT INTO V_BIN
	VALUES (1775,
	1780,
	1779,
	'+');
INSERT INTO V_VAL
	VALUES (1780,
	0,
	0,
	9,
	39,
	39,
	0,
	0,
	0,
	0,
	188,
	1752);
INSERT INTO V_LIN
	VALUES (1780,
	'1');
INSERT INTO V_VAL
	VALUES (1778,
	1,
	0,
	10,
	3,
	5,
	0,
	0,
	0,
	0,
	188,
	1752);
INSERT INTO V_TVL
	VALUES (1778,
	1770);
INSERT INTO V_VAL
	VALUES (1781,
	0,
	0,
	10,
	9,
	11,
	0,
	0,
	0,
	0,
	188,
	1752);
INSERT INTO V_TVL
	VALUES (1781,
	1770);
INSERT INTO V_VAL
	VALUES (1777,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	188,
	1752);
INSERT INTO V_BIN
	VALUES (1777,
	1782,
	1781,
	'+');
INSERT INTO V_VAL
	VALUES (1783,
	0,
	0,
	10,
	15,
	20,
	0,
	0,
	0,
	0,
	300,
	1752);
INSERT INTO V_IRF
	VALUES (1783,
	1753);
INSERT INTO V_VAL
	VALUES (1782,
	0,
	0,
	10,
	22,
	30,
	0,
	0,
	0,
	0,
	188,
	1752);
INSERT INTO V_AVL
	VALUES (1782,
	1783,
	487,
	1287);
INSERT INTO ACT_BLK
	VALUES (1754,
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
	1733,
	0);
INSERT INTO ACT_SMT
	VALUES (1784,
	1754,
	0,
	13,
	3,
	'WorkoutSession::currentHeartRate line: 13');
INSERT INTO ACT_AI
	VALUES (1784,
	1785,
	1786,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1787,
	1,
	0,
	13,
	3,
	6,
	0,
	0,
	0,
	0,
	300,
	1754);
INSERT INTO V_IRF
	VALUES (1787,
	1758);
INSERT INTO V_VAL
	VALUES (1786,
	1,
	0,
	13,
	8,
	23,
	0,
	0,
	0,
	0,
	188,
	1754);
INSERT INTO V_AVL
	VALUES (1786,
	1787,
	349,
	817);
INSERT INTO V_VAL
	VALUES (1788,
	0,
	0,
	13,
	27,
	29,
	0,
	0,
	0,
	0,
	188,
	1754);
INSERT INTO V_TVL
	VALUES (1788,
	1770);
INSERT INTO V_VAL
	VALUES (1785,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	188,
	1754);
INSERT INTO V_BIN
	VALUES (1785,
	1789,
	1788,
	'/');
INSERT INTO V_VAL
	VALUES (1789,
	0,
	0,
	13,
	33,
	47,
	0,
	0,
	0,
	0,
	188,
	1754);
INSERT INTO V_TVL
	VALUES (1789,
	1769);
INSERT INTO ACT_BLK
	VALUES (1757,
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
	1733,
	0);
INSERT INTO ACT_SMT
	VALUES (1790,
	1757,
	0,
	15,
	3,
	'WorkoutSession::currentHeartRate line: 15');
INSERT INTO ACT_AI
	VALUES (1790,
	1791,
	1792,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1793,
	1,
	0,
	15,
	3,
	6,
	0,
	0,
	0,
	0,
	300,
	1757);
INSERT INTO V_IRF
	VALUES (1793,
	1758);
INSERT INTO V_VAL
	VALUES (1792,
	1,
	0,
	15,
	8,
	23,
	0,
	0,
	0,
	0,
	188,
	1757);
INSERT INTO V_AVL
	VALUES (1792,
	1793,
	349,
	817);
INSERT INTO V_VAL
	VALUES (1791,
	0,
	0,
	15,
	27,
	27,
	0,
	0,
	0,
	0,
	188,
	1757);
INSERT INTO V_LIN
	VALUES (1791,
	'0');
INSERT INTO O_BATTR
	VALUES (817,
	349);
INSERT INTO O_ATTR
	VALUES (817,
	349,
	796,
	'currentHeartRate',
	'Current heart rate, expressed in beats per minute, averaged over 
a predefined number of the most recent heart-rate samples.',
	'',
	'currentHeartRate',
	0,
	188,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (745,
	349);
INSERT INTO O_BATTR
	VALUES (745,
	349);
INSERT INTO O_ATTR
	VALUES (745,
	349,
	817,
	'accumulatedDistance',
	'Accumulated distance, expressed in meters, for this workout session.',
	'',
	'accumulatedDistance',
	0,
	133,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	349);
INSERT INTO O_OIDA
	VALUES (1520,
	349,
	0,
	'startDate');
INSERT INTO O_OIDA
	VALUES (1522,
	349,
	0,
	'startTime');
INSERT INTO O_ID
	VALUES (1,
	349);
INSERT INTO O_ID
	VALUES (2,
	349);
INSERT INTO PE_PE
	VALUES (364,
	1,
	462,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (364,
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
	VALUES (1794,
	364,
	'activate',
	'',
	294,
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
	VALUES (1795,
	1794);
INSERT INTO ACT_ACT
	VALUES (1795,
	'operation',
	0,
	1796,
	0,
	0,
	'WorkoutTimer::activate',
	0);
INSERT INTO ACT_BLK
	VALUES (1796,
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
	1795,
	0);
INSERT INTO ACT_SMT
	VALUES (1797,
	1796,
	1798,
	2,
	1,
	'WorkoutTimer::activate line: 2');
INSERT INTO E_ESS
	VALUES (1797,
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
	VALUES (1797,
	1,
	1799);
INSERT INTO E_CSME
	VALUES (1797,
	1800);
INSERT INTO E_CEI
	VALUES (1797,
	1801);
INSERT INTO ACT_SMT
	VALUES (1798,
	1796,
	1802,
	3,
	1,
	'WorkoutTimer::activate line: 3');
INSERT INTO ACT_AI
	VALUES (1798,
	1803,
	1804,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1802,
	1796,
	1805,
	6,
	1,
	'WorkoutTimer::activate line: 6');
INSERT INTO ACT_SEL
	VALUES (1802,
	1806,
	1,
	'one',
	1807);
INSERT INTO ACT_SR
	VALUES (1802);
INSERT INTO ACT_LNK
	VALUES (1808,
	'''acts as the stopwatch for''',
	1802,
	480,
	1809,
	2,
	349,
	7,
	9,
	7,
	24,
	7,
	27);
INSERT INTO ACT_LNK
	VALUES (1809,
	'''is currently executing''',
	0,
	496,
	0,
	2,
	492,
	7,
	57,
	7,
	62,
	7,
	66);
INSERT INTO ACT_SMT
	VALUES (1805,
	1796,
	1810,
	8,
	1,
	'WorkoutTimer::activate line: 8');
INSERT INTO ACT_IF
	VALUES (1805,
	1811,
	1812,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1810,
	1796,
	1813,
	13,
	1,
	'WorkoutTimer::activate line: 13');
INSERT INTO ACT_IOP
	VALUES (1810,
	13,
	16,
	13,
	6,
	0,
	319,
	0);
INSERT INTO ACT_SMT
	VALUES (1813,
	1796,
	0,
	14,
	1,
	'WorkoutTimer::activate line: 14');
INSERT INTO ACT_IOP
	VALUES (1813,
	14,
	24,
	14,
	6,
	0,
	337,
	0);
INSERT INTO V_VAL
	VALUES (1814,
	1,
	0,
	3,
	1,
	4,
	0,
	0,
	0,
	0,
	300,
	1796);
INSERT INTO V_IRF
	VALUES (1814,
	1801);
INSERT INTO V_VAL
	VALUES (1804,
	1,
	0,
	3,
	6,
	10,
	0,
	0,
	0,
	0,
	307,
	1796);
INSERT INTO V_AVL
	VALUES (1804,
	1814,
	364,
	1815);
INSERT INTO V_VAL
	VALUES (1803,
	0,
	0,
	3,
	19,
	-1,
	3,
	42,
	3,
	59,
	307,
	1796);
INSERT INTO V_BRV
	VALUES (1803,
	585,
	1,
	3,
	14);
INSERT INTO V_VAL
	VALUES (1816,
	0,
	0,
	3,
	54,
	56,
	0,
	0,
	0,
	0,
	302,
	1796);
INSERT INTO V_TVL
	VALUES (1816,
	1799);
INSERT INTO V_PAR
	VALUES (1816,
	0,
	1803,
	'event_inst',
	1817,
	3,
	42);
INSERT INTO V_VAL
	VALUES (1818,
	0,
	0,
	3,
	74,
	84,
	0,
	0,
	0,
	0,
	188,
	1796);
INSERT INTO V_SCV
	VALUES (1818,
	1819,
	188);
INSERT INTO V_VAL
	VALUES (1817,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	188,
	1796);
INSERT INTO V_BIN
	VALUES (1817,
	1820,
	1818,
	'*');
INSERT INTO V_PAR
	VALUES (1817,
	0,
	1803,
	'microseconds',
	0,
	3,
	59);
INSERT INTO V_VAL
	VALUES (1820,
	0,
	0,
	3,
	88,
	94,
	0,
	0,
	0,
	0,
	188,
	1796);
INSERT INTO V_LIN
	VALUES (1820,
	'1000000');
INSERT INTO V_VAL
	VALUES (1807,
	0,
	0,
	7,
	3,
	6,
	0,
	0,
	0,
	0,
	300,
	1796);
INSERT INTO V_IRF
	VALUES (1807,
	1801);
INSERT INTO V_VAL
	VALUES (1821,
	0,
	0,
	8,
	16,
	28,
	0,
	0,
	0,
	0,
	300,
	1796);
INSERT INTO V_IRF
	VALUES (1821,
	1806);
INSERT INTO V_VAL
	VALUES (1822,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1796);
INSERT INTO V_UNY
	VALUES (1822,
	1821,
	'empty');
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
	295,
	1796);
INSERT INTO V_UNY
	VALUES (1812,
	1822,
	'not');
INSERT INTO V_VAR
	VALUES (1799,
	1796,
	'evt',
	1,
	302);
INSERT INTO V_TRN
	VALUES (1799,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1801,
	1796,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1801,
	0,
	364);
INSERT INTO V_VAR
	VALUES (1806,
	1796,
	'executingGoal',
	1,
	300);
INSERT INTO V_INT
	VALUES (1806,
	0,
	492);
INSERT INTO ACT_BLK
	VALUES (1811,
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
	1795,
	0);
INSERT INTO ACT_SMT
	VALUES (1823,
	1811,
	0,
	9,
	3,
	'WorkoutTimer::activate line: 9');
INSERT INTO E_ESS
	VALUES (1823,
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
	VALUES (1823);
INSERT INTO E_GSME
	VALUES (1823,
	909);
INSERT INTO E_GEN
	VALUES (1823,
	1806);
INSERT INTO O_TFR
	VALUES (1824,
	364,
	'deactivate',
	'',
	294,
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
	1794);
INSERT INTO ACT_OPB
	VALUES (1825,
	1824);
INSERT INTO ACT_ACT
	VALUES (1825,
	'operation',
	0,
	1826,
	0,
	0,
	'WorkoutTimer::deactivate',
	0);
INSERT INTO ACT_BLK
	VALUES (1826,
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
	1825,
	0);
INSERT INTO ACT_SMT
	VALUES (1827,
	1826,
	1828,
	2,
	1,
	'WorkoutTimer::deactivate line: 2');
INSERT INTO ACT_AI
	VALUES (1827,
	1829,
	1830,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1828,
	1826,
	1831,
	5,
	1,
	'WorkoutTimer::deactivate line: 5');
INSERT INTO ACT_SEL
	VALUES (1828,
	1832,
	1,
	'one',
	1833);
INSERT INTO ACT_SR
	VALUES (1828);
INSERT INTO ACT_LNK
	VALUES (1834,
	'''acts as the stopwatch for''',
	1828,
	480,
	1835,
	2,
	349,
	6,
	9,
	6,
	24,
	6,
	27);
INSERT INTO ACT_LNK
	VALUES (1835,
	'''is currently executing''',
	0,
	496,
	0,
	2,
	492,
	6,
	57,
	6,
	62,
	6,
	66);
INSERT INTO ACT_SMT
	VALUES (1831,
	1826,
	1836,
	7,
	1,
	'WorkoutTimer::deactivate line: 7');
INSERT INTO ACT_IF
	VALUES (1831,
	1837,
	1838,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1836,
	1826,
	1839,
	12,
	1,
	'WorkoutTimer::deactivate line: 12');
INSERT INTO ACT_IOP
	VALUES (1836,
	12,
	16,
	12,
	6,
	0,
	322,
	0);
INSERT INTO ACT_SMT
	VALUES (1839,
	1826,
	0,
	13,
	1,
	'WorkoutTimer::deactivate line: 13');
INSERT INTO ACT_IOP
	VALUES (1839,
	13,
	24,
	13,
	6,
	0,
	340,
	0);
INSERT INTO V_VAL
	VALUES (1830,
	1,
	1,
	2,
	1,
	15,
	0,
	0,
	0,
	0,
	295,
	1826);
INSERT INTO V_TVL
	VALUES (1830,
	1840);
INSERT INTO V_VAL
	VALUES (1829,
	0,
	0,
	2,
	24,
	-1,
	2,
	37,
	0,
	0,
	295,
	1826);
INSERT INTO V_BRV
	VALUES (1829,
	604,
	1,
	2,
	19);
INSERT INTO V_VAL
	VALUES (1841,
	0,
	0,
	2,
	53,
	56,
	0,
	0,
	0,
	0,
	300,
	1826);
INSERT INTO V_IRF
	VALUES (1841,
	1842);
INSERT INTO V_VAL
	VALUES (1843,
	0,
	0,
	2,
	58,
	62,
	0,
	0,
	0,
	0,
	307,
	1826);
INSERT INTO V_AVL
	VALUES (1843,
	1841,
	364,
	1815);
INSERT INTO V_PAR
	VALUES (1843,
	0,
	1829,
	'timer_inst_ref',
	0,
	2,
	37);
INSERT INTO V_VAL
	VALUES (1833,
	0,
	0,
	6,
	3,
	6,
	0,
	0,
	0,
	0,
	300,
	1826);
INSERT INTO V_IRF
	VALUES (1833,
	1842);
INSERT INTO V_VAL
	VALUES (1844,
	0,
	0,
	7,
	16,
	28,
	0,
	0,
	0,
	0,
	300,
	1826);
INSERT INTO V_IRF
	VALUES (1844,
	1832);
INSERT INTO V_VAL
	VALUES (1845,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1826);
INSERT INTO V_UNY
	VALUES (1845,
	1844,
	'empty');
INSERT INTO V_VAL
	VALUES (1838,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1826);
INSERT INTO V_UNY
	VALUES (1838,
	1845,
	'not');
INSERT INTO V_VAR
	VALUES (1840,
	1826,
	'cancelSucceeded',
	1,
	295);
INSERT INTO V_TRN
	VALUES (1840,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1842,
	1826,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1842,
	0,
	364);
INSERT INTO V_VAR
	VALUES (1832,
	1826,
	'executingGoal',
	1,
	300);
INSERT INTO V_INT
	VALUES (1832,
	0,
	492);
INSERT INTO ACT_BLK
	VALUES (1837,
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
	1825,
	0);
INSERT INTO ACT_SMT
	VALUES (1846,
	1837,
	0,
	8,
	3,
	'WorkoutTimer::deactivate line: 8');
INSERT INTO E_ESS
	VALUES (1846,
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
	VALUES (1846);
INSERT INTO E_GSME
	VALUES (1846,
	1144);
INSERT INTO E_GEN
	VALUES (1846,
	1832);
INSERT INTO O_TFR
	VALUES (1538,
	364,
	'initialize',
	'',
	294,
	1,
	'// Initialize this instance.

self.time = 0;',
	1,
	'',
	1824);
INSERT INTO ACT_OPB
	VALUES (1847,
	1538);
INSERT INTO ACT_ACT
	VALUES (1847,
	'operation',
	0,
	1848,
	0,
	0,
	'WorkoutTimer::initialize',
	0);
INSERT INTO ACT_BLK
	VALUES (1848,
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
	1847,
	0);
INSERT INTO ACT_SMT
	VALUES (1849,
	1848,
	0,
	3,
	1,
	'WorkoutTimer::initialize line: 3');
INSERT INTO ACT_AI
	VALUES (1849,
	1850,
	1851,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1852,
	1,
	0,
	3,
	1,
	4,
	0,
	0,
	0,
	0,
	300,
	1848);
INSERT INTO V_IRF
	VALUES (1852,
	1853);
INSERT INTO V_VAL
	VALUES (1851,
	1,
	0,
	3,
	6,
	9,
	0,
	0,
	0,
	0,
	188,
	1848);
INSERT INTO V_AVL
	VALUES (1851,
	1852,
	364,
	669);
INSERT INTO V_VAL
	VALUES (1850,
	0,
	0,
	3,
	13,
	13,
	0,
	0,
	0,
	0,
	188,
	1848);
INSERT INTO V_LIN
	VALUES (1850,
	'0');
INSERT INTO V_VAR
	VALUES (1853,
	1848,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1853,
	0,
	364);
INSERT INTO O_NBATTR
	VALUES (1854,
	364);
INSERT INTO O_BATTR
	VALUES (1854,
	364);
INSERT INTO O_ATTR
	VALUES (1854,
	364,
	0,
	'current_state',
	'',
	'',
	'current_state',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (669,
	364);
INSERT INTO O_BATTR
	VALUES (669,
	364);
INSERT INTO O_ATTR
	VALUES (669,
	364,
	1854,
	'time',
	'Number of seconds elapsed during the associated workout session.
Time elapses only when this timer is running.',
	'',
	'time',
	0,
	188,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1815,
	364);
INSERT INTO O_BATTR
	VALUES (1815,
	364);
INSERT INTO O_ATTR
	VALUES (1815,
	364,
	669,
	'timer',
	'Handle for underlying timer mechanism that produces the 
delayed events enabling the timer to track elapsed time.',
	'',
	'timer',
	0,
	307,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	364);
INSERT INTO O_ID
	VALUES (1,
	364);
INSERT INTO O_ID
	VALUES (2,
	364);
INSERT INTO SM_ISM
	VALUES (1855,
	364);
INSERT INTO SM_SM
	VALUES (1855,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (1855);
INSERT INTO SM_LEVT
	VALUES (407,
	1855,
	0);
INSERT INTO SM_SEVT
	VALUES (407,
	1855,
	0);
INSERT INTO SM_EVT
	VALUES (407,
	1855,
	0,
	1,
	'startStopPressed',
	0,
	'',
	'WorkoutTimer1',
	'');
INSERT INTO SM_LEVT
	VALUES (372,
	1855,
	0);
INSERT INTO SM_SEVT
	VALUES (372,
	1855,
	0);
INSERT INTO SM_EVT
	VALUES (372,
	1855,
	0,
	2,
	'lapResetPressed',
	0,
	'',
	'WorkoutTimer2',
	'');
INSERT INTO SM_LEVT
	VALUES (1800,
	1855,
	0);
INSERT INTO SM_SEVT
	VALUES (1800,
	1855,
	0);
INSERT INTO SM_EVT
	VALUES (1800,
	1855,
	0,
	3,
	'tick',
	0,
	'',
	'WorkoutTimer3',
	'');
INSERT INTO SM_STATE
	VALUES (1856,
	1855,
	0,
	'stopped',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (1856,
	407,
	1855,
	0);
INSERT INTO SM_EIGN
	VALUES (1856,
	372,
	1855,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1856,
	372,
	1855,
	0);
INSERT INTO SM_EIGN
	VALUES (1856,
	1800,
	1855,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1856,
	1800,
	1855,
	0);
INSERT INTO SM_MOAH
	VALUES (1857,
	1855,
	1856);
INSERT INTO SM_AH
	VALUES (1857,
	1855);
INSERT INTO SM_ACT
	VALUES (1857,
	1855,
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
	VALUES (1858,
	1855,
	1857);
INSERT INTO ACT_ACT
	VALUES (1858,
	'state',
	0,
	1859,
	0,
	0,
	'WorkoutTimer::stopped',
	0);
INSERT INTO ACT_BLK
	VALUES (1859,
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
	1858,
	0);
INSERT INTO ACT_SMT
	VALUES (1860,
	1859,
	1861,
	2,
	1,
	'WorkoutTimer::stopped line: 2');
INSERT INTO ACT_SEL
	VALUES (1860,
	1862,
	1,
	'one',
	1863);
INSERT INTO ACT_SR
	VALUES (1860);
INSERT INTO ACT_LNK
	VALUES (1864,
	'''acts as the stopwatch for''',
	1860,
	480,
	0,
	2,
	349,
	2,
	37,
	2,
	52,
	2,
	55);
INSERT INTO ACT_SMT
	VALUES (1861,
	1859,
	1865,
	3,
	1,
	'WorkoutTimer::stopped line: 3');
INSERT INTO ACT_TFM
	VALUES (1861,
	1545,
	1862,
	3,
	9,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1865,
	1859,
	1866,
	6,
	1,
	'WorkoutTimer::stopped line: 6');
INSERT INTO ACT_IOP
	VALUES (1865,
	6,
	10,
	6,
	6,
	0,
	331,
	0);
INSERT INTO ACT_SMT
	VALUES (1866,
	1859,
	1867,
	7,
	1,
	'WorkoutTimer::stopped line: 7');
INSERT INTO ACT_SEL
	VALUES (1866,
	1868,
	1,
	'one',
	1869);
INSERT INTO ACT_SR
	VALUES (1866);
INSERT INTO ACT_LNK
	VALUES (1870,
	'''acts as the stopwatch for''',
	1866,
	480,
	1871,
	2,
	349,
	8,
	9,
	8,
	24,
	8,
	27);
INSERT INTO ACT_LNK
	VALUES (1871,
	'''current status indicated on''',
	0,
	391,
	0,
	2,
	392,
	9,
	3,
	9,
	11,
	9,
	14);
INSERT INTO ACT_SMT
	VALUES (1867,
	1859,
	0,
	10,
	1,
	'WorkoutTimer::stopped line: 10');
INSERT INTO E_ESS
	VALUES (1867,
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
	VALUES (1867);
INSERT INTO E_GSME
	VALUES (1867,
	724);
INSERT INTO E_GEN
	VALUES (1867,
	1868);
INSERT INTO V_VAL
	VALUES (1863,
	0,
	0,
	2,
	31,
	34,
	0,
	0,
	0,
	0,
	300,
	1859);
INSERT INTO V_IRF
	VALUES (1863,
	1872);
INSERT INTO V_VAL
	VALUES (1873,
	0,
	0,
	6,
	24,
	27,
	0,
	0,
	0,
	0,
	300,
	1859);
INSERT INTO V_IRF
	VALUES (1873,
	1872);
INSERT INTO V_VAL
	VALUES (1874,
	0,
	0,
	6,
	29,
	32,
	0,
	0,
	0,
	0,
	188,
	1859);
INSERT INTO V_AVL
	VALUES (1874,
	1873,
	364,
	669);
INSERT INTO V_PAR
	VALUES (1874,
	1865,
	0,
	'time',
	0,
	6,
	18);
INSERT INTO V_VAL
	VALUES (1869,
	0,
	0,
	8,
	3,
	6,
	0,
	0,
	0,
	0,
	300,
	1859);
INSERT INTO V_IRF
	VALUES (1869,
	1872);
INSERT INTO V_VAR
	VALUES (1862,
	1859,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (1862,
	0,
	349);
INSERT INTO V_VAR
	VALUES (1872,
	1859,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1872,
	0,
	364);
INSERT INTO V_VAR
	VALUES (1868,
	1859,
	'display',
	1,
	300);
INSERT INTO V_INT
	VALUES (1868,
	0,
	392);
INSERT INTO SM_STATE
	VALUES (1875,
	1855,
	0,
	'running',
	2,
	0);
INSERT INTO SM_SEME
	VALUES (1875,
	407,
	1855,
	0);
INSERT INTO SM_SEME
	VALUES (1875,
	372,
	1855,
	0);
INSERT INTO SM_SEME
	VALUES (1875,
	1800,
	1855,
	0);
INSERT INTO SM_MOAH
	VALUES (1876,
	1855,
	1875);
INSERT INTO SM_AH
	VALUES (1876,
	1855);
INSERT INTO SM_ACT
	VALUES (1876,
	1855,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (1877,
	1855,
	1876);
INSERT INTO ACT_ACT
	VALUES (1877,
	'state',
	0,
	1878,
	0,
	0,
	'WorkoutTimer::running',
	0);
INSERT INTO ACT_BLK
	VALUES (1878,
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
	1877,
	0);
INSERT INTO SM_STATE
	VALUES (1879,
	1855,
	0,
	'paused',
	3,
	0);
INSERT INTO SM_SEME
	VALUES (1879,
	407,
	1855,
	0);
INSERT INTO SM_SEME
	VALUES (1879,
	372,
	1855,
	0);
INSERT INTO SM_EIGN
	VALUES (1879,
	1800,
	1855,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1879,
	1800,
	1855,
	0);
INSERT INTO SM_MOAH
	VALUES (1880,
	1855,
	1879);
INSERT INTO SM_AH
	VALUES (1880,
	1855);
INSERT INTO SM_ACT
	VALUES (1880,
	1855,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (1881,
	1855,
	1880);
INSERT INTO ACT_ACT
	VALUES (1881,
	'state',
	0,
	1882,
	0,
	0,
	'WorkoutTimer::paused',
	0);
INSERT INTO ACT_BLK
	VALUES (1882,
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
	1881,
	0);
INSERT INTO SM_NSTXN
	VALUES (1883,
	1855,
	1856,
	407,
	0);
INSERT INTO SM_TAH
	VALUES (1884,
	1855,
	1883);
INSERT INTO SM_AH
	VALUES (1884,
	1855);
INSERT INTO SM_ACT
	VALUES (1884,
	1855,
	1,
	'// Start the timer.
self.activate();',
	'');
INSERT INTO ACT_TAB
	VALUES (1885,
	1855,
	1884);
INSERT INTO ACT_ACT
	VALUES (1885,
	'transition',
	0,
	1886,
	0,
	0,
	'WorkoutTimer1: startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1886,
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
	1885,
	0);
INSERT INTO ACT_SMT
	VALUES (1887,
	1886,
	0,
	2,
	1,
	'WorkoutTimer1: startStopPressed line: 2');
INSERT INTO ACT_TFM
	VALUES (1887,
	1794,
	1888,
	2,
	6,
	0,
	0);
INSERT INTO V_VAR
	VALUES (1888,
	1886,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1888,
	0,
	364);
INSERT INTO SM_TXN
	VALUES (1883,
	1855,
	1875,
	0);
INSERT INTO SM_NSTXN
	VALUES (1889,
	1855,
	1875,
	372,
	0);
INSERT INTO SM_TAH
	VALUES (1890,
	1855,
	1889);
INSERT INTO SM_AH
	VALUES (1890,
	1855);
INSERT INTO SM_ACT
	VALUES (1890,
	1855,
	1,
	'select any trackLog from instances of TrackLog;
if (not empty trackLog)
  trackLog.addLapMarker();
end if;',
	'');
INSERT INTO ACT_TAB
	VALUES (1891,
	1855,
	1890);
INSERT INTO ACT_ACT
	VALUES (1891,
	'transition',
	0,
	1892,
	0,
	0,
	'WorkoutTimer2: lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1892,
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
	1891,
	0);
INSERT INTO ACT_SMT
	VALUES (1893,
	1892,
	1894,
	1,
	1,
	'WorkoutTimer2: lapResetPressed line: 1');
INSERT INTO ACT_FIO
	VALUES (1893,
	1895,
	1,
	'any',
	464,
	1,
	39);
INSERT INTO ACT_SMT
	VALUES (1894,
	1892,
	0,
	2,
	1,
	'WorkoutTimer2: lapResetPressed line: 2');
INSERT INTO ACT_IF
	VALUES (1894,
	1896,
	1897,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1898,
	0,
	0,
	2,
	15,
	22,
	0,
	0,
	0,
	0,
	300,
	1892);
INSERT INTO V_IRF
	VALUES (1898,
	1895);
INSERT INTO V_VAL
	VALUES (1899,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1892);
INSERT INTO V_UNY
	VALUES (1899,
	1898,
	'empty');
INSERT INTO V_VAL
	VALUES (1897,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1892);
INSERT INTO V_UNY
	VALUES (1897,
	1899,
	'not');
INSERT INTO V_VAR
	VALUES (1895,
	1892,
	'trackLog',
	1,
	300);
INSERT INTO V_INT
	VALUES (1895,
	0,
	464);
INSERT INTO ACT_BLK
	VALUES (1896,
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
	1891,
	0);
INSERT INTO ACT_SMT
	VALUES (1900,
	1896,
	0,
	3,
	3,
	'WorkoutTimer2: lapResetPressed line: 3');
INSERT INTO ACT_TFM
	VALUES (1900,
	1428,
	1895,
	3,
	12,
	0,
	0);
INSERT INTO SM_TXN
	VALUES (1889,
	1855,
	1875,
	0);
INSERT INTO SM_NSTXN
	VALUES (1901,
	1855,
	1879,
	372,
	0);
INSERT INTO SM_TAH
	VALUES (1902,
	1855,
	1901);
INSERT INTO SM_AH
	VALUES (1902,
	1855);
INSERT INTO SM_ACT
	VALUES (1902,
	1855,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1903,
	1855,
	1902);
INSERT INTO ACT_ACT
	VALUES (1903,
	'transition',
	0,
	1904,
	0,
	0,
	'WorkoutTimer2: lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1904,
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
	1903,
	0);
INSERT INTO SM_TXN
	VALUES (1901,
	1855,
	1856,
	0);
INSERT INTO SM_NSTXN
	VALUES (1905,
	1855,
	1879,
	407,
	0);
INSERT INTO SM_TAH
	VALUES (1906,
	1855,
	1905);
INSERT INTO SM_AH
	VALUES (1906,
	1855);
INSERT INTO SM_ACT
	VALUES (1906,
	1855,
	1,
	'self.activate();',
	'');
INSERT INTO ACT_TAB
	VALUES (1907,
	1855,
	1906);
INSERT INTO ACT_ACT
	VALUES (1907,
	'transition',
	0,
	1908,
	0,
	0,
	'WorkoutTimer1: startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1908,
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
	1907,
	0);
INSERT INTO ACT_SMT
	VALUES (1909,
	1908,
	0,
	1,
	1,
	'WorkoutTimer1: startStopPressed line: 1');
INSERT INTO ACT_TFM
	VALUES (1909,
	1794,
	1910,
	1,
	6,
	0,
	0);
INSERT INTO V_VAR
	VALUES (1910,
	1908,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1910,
	0,
	364);
INSERT INTO SM_TXN
	VALUES (1905,
	1855,
	1875,
	0);
INSERT INTO SM_NSTXN
	VALUES (1911,
	1855,
	1875,
	407,
	0);
INSERT INTO SM_TAH
	VALUES (1912,
	1855,
	1911);
INSERT INTO SM_AH
	VALUES (1912,
	1855);
INSERT INTO SM_ACT
	VALUES (1912,
	1855,
	1,
	'self.deactivate();',
	'');
INSERT INTO ACT_TAB
	VALUES (1913,
	1855,
	1912);
INSERT INTO ACT_ACT
	VALUES (1913,
	'transition',
	0,
	1914,
	0,
	0,
	'WorkoutTimer1: startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1914,
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
	1913,
	0);
INSERT INTO ACT_SMT
	VALUES (1915,
	1914,
	0,
	1,
	1,
	'WorkoutTimer1: startStopPressed line: 1');
INSERT INTO ACT_TFM
	VALUES (1915,
	1824,
	1916,
	1,
	6,
	0,
	0);
INSERT INTO V_VAR
	VALUES (1916,
	1914,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1916,
	0,
	364);
INSERT INTO SM_TXN
	VALUES (1911,
	1855,
	1879,
	0);
INSERT INTO SM_NSTXN
	VALUES (1917,
	1855,
	1875,
	1800,
	0);
INSERT INTO SM_TAH
	VALUES (1918,
	1855,
	1917);
INSERT INTO SM_AH
	VALUES (1918,
	1855);
INSERT INTO SM_ACT
	VALUES (1918,
	1855,
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
	VALUES (1919,
	1855,
	1918);
INSERT INTO ACT_ACT
	VALUES (1919,
	'transition',
	0,
	1920,
	0,
	0,
	'WorkoutTimer3: tick',
	0);
INSERT INTO ACT_BLK
	VALUES (1920,
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
	1919,
	0);
INSERT INTO ACT_SMT
	VALUES (1921,
	1920,
	1922,
	2,
	1,
	'WorkoutTimer3: tick line: 2');
INSERT INTO ACT_AI
	VALUES (1921,
	1923,
	1924,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1922,
	1920,
	1925,
	5,
	1,
	'WorkoutTimer3: tick line: 5');
INSERT INTO ACT_SEL
	VALUES (1922,
	1926,
	1,
	'one',
	1927);
INSERT INTO ACT_SR
	VALUES (1922);
INSERT INTO ACT_LNK
	VALUES (1928,
	'''acts as the stopwatch for''',
	1922,
	480,
	1929,
	2,
	349,
	6,
	9,
	6,
	24,
	6,
	27);
INSERT INTO ACT_LNK
	VALUES (1929,
	'''captures path in''',
	0,
	483,
	0,
	2,
	464,
	6,
	57,
	6,
	66,
	6,
	69);
INSERT INTO ACT_SMT
	VALUES (1925,
	1920,
	1930,
	7,
	1,
	'WorkoutTimer3: tick line: 7');
INSERT INTO ACT_TFM
	VALUES (1925,
	1290,
	1926,
	7,
	10,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1930,
	1920,
	0,
	10,
	1,
	'WorkoutTimer3: tick line: 10');
INSERT INTO ACT_IOP
	VALUES (1930,
	10,
	10,
	10,
	6,
	0,
	331,
	0);
INSERT INTO V_VAL
	VALUES (1931,
	1,
	0,
	2,
	1,
	4,
	0,
	0,
	0,
	0,
	300,
	1920);
INSERT INTO V_IRF
	VALUES (1931,
	1932);
INSERT INTO V_VAL
	VALUES (1924,
	1,
	0,
	2,
	6,
	9,
	0,
	0,
	0,
	0,
	188,
	1920);
INSERT INTO V_AVL
	VALUES (1924,
	1931,
	364,
	669);
INSERT INTO V_VAL
	VALUES (1933,
	0,
	0,
	2,
	13,
	16,
	0,
	0,
	0,
	0,
	300,
	1920);
INSERT INTO V_IRF
	VALUES (1933,
	1932);
INSERT INTO V_VAL
	VALUES (1934,
	0,
	0,
	2,
	18,
	21,
	0,
	0,
	0,
	0,
	188,
	1920);
INSERT INTO V_AVL
	VALUES (1934,
	1933,
	364,
	669);
INSERT INTO V_VAL
	VALUES (1923,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	188,
	1920);
INSERT INTO V_BIN
	VALUES (1923,
	1935,
	1934,
	'+');
INSERT INTO V_VAL
	VALUES (1935,
	0,
	0,
	2,
	25,
	35,
	0,
	0,
	0,
	0,
	188,
	1920);
INSERT INTO V_SCV
	VALUES (1935,
	1819,
	188);
INSERT INTO V_VAL
	VALUES (1927,
	0,
	0,
	6,
	3,
	6,
	0,
	0,
	0,
	0,
	300,
	1920);
INSERT INTO V_IRF
	VALUES (1927,
	1932);
INSERT INTO V_VAL
	VALUES (1936,
	0,
	0,
	10,
	24,
	27,
	0,
	0,
	0,
	0,
	300,
	1920);
INSERT INTO V_IRF
	VALUES (1936,
	1932);
INSERT INTO V_VAL
	VALUES (1937,
	0,
	0,
	10,
	29,
	32,
	0,
	0,
	0,
	0,
	188,
	1920);
INSERT INTO V_AVL
	VALUES (1937,
	1936,
	364,
	669);
INSERT INTO V_PAR
	VALUES (1937,
	1930,
	0,
	'time',
	0,
	10,
	18);
INSERT INTO V_VAR
	VALUES (1932,
	1920,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1932,
	0,
	364);
INSERT INTO V_VAR
	VALUES (1926,
	1920,
	'trackLog',
	1,
	300);
INSERT INTO V_INT
	VALUES (1926,
	0,
	464);
INSERT INTO SM_TXN
	VALUES (1917,
	1855,
	1875,
	0);
INSERT INTO PE_PE
	VALUES (1938,
	1,
	310,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (1938,
	0,
	309,
	'shared',
	'',
	0);
INSERT INTO PE_PE
	VALUES (204,
	1,
	1938,
	0,
	3);
INSERT INTO S_DT
	VALUES (204,
	0,
	'GoalCriteria',
	'The criteria type for a particular workout goal.  ',
	'');
INSERT INTO S_EDT
	VALUES (204);
INSERT INTO S_ENUM
	VALUES (630,
	'HeartRate',
	'A heart-rate criteria is specified as a range of heart rates between
minimum and maximum values, in beats per minute.',
	204,
	0);
INSERT INTO S_ENUM
	VALUES (622,
	'Pace',
	'A pace criteria is specified as a range of paces between
miniumum and maximum values specified in minutes per kilometer.',
	204,
	630);
INSERT INTO PE_PE
	VALUES (702,
	1,
	1938,
	0,
	3);
INSERT INTO S_DT
	VALUES (702,
	0,
	'GoalDisposition',
	'Disposition of a currently executing goal.',
	'');
INSERT INTO S_EDT
	VALUES (702);
INSERT INTO S_ENUM
	VALUES (1006,
	'Achieving',
	'The goal is currently being achieved.',
	702,
	0);
INSERT INTO S_ENUM
	VALUES (705,
	'Increase',
	'The value associated with the goal is presently below the minimum 
specified in the criteria for the goal, so the user must increase
that value to achieve the goal.',
	702,
	1006);
INSERT INTO S_ENUM
	VALUES (709,
	'Decrease',
	'The value associated with the goal is presently above the maximum 
specified in the criteria for the goal, so the user must decrease
that value to achieve the goal.',
	702,
	705);
INSERT INTO PE_PE
	VALUES (207,
	1,
	1938,
	0,
	3);
INSERT INTO S_DT
	VALUES (207,
	0,
	'GoalSpan',
	'',
	'');
INSERT INTO S_EDT
	VALUES (207);
INSERT INTO S_ENUM
	VALUES (624,
	'Distance',
	'A distance-based span is specified in meters.',
	207,
	0);
INSERT INTO S_ENUM
	VALUES (632,
	'Time',
	'A time-based span is specified in seconds.',
	207,
	624);
INSERT INTO PE_PE
	VALUES (1939,
	1,
	1938,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (1939,
	'GoalAchievement',
	'evaluationPeriod is the period, expressed in microseconds, at which goal achievement is evaluated.');
INSERT INTO CNST_SYC
	VALUES (917,
	'evaluationPeriod',
	'',
	188,
	1939,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (917,
	188);
INSERT INTO CNST_LSC
	VALUES (917,
	188,
	'3000000');
INSERT INTO PE_PE
	VALUES (1940,
	1,
	1938,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (1940,
	'GoalSpec',
	'GoalSpecOrigin indicates the sequence number of the first goal.');
INSERT INTO CNST_SYC
	VALUES (1140,
	'GoalSpecOrigin',
	'',
	188,
	1940,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (1140,
	188);
INSERT INTO CNST_LSC
	VALUES (1140,
	188,
	'1');
INSERT INTO PE_PE
	VALUES (1941,
	1,
	1938,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (1941,
	'WorkoutTimer',
	'timerPeriod specifies, in seconds, the period for the workout timer.');
INSERT INTO CNST_SYC
	VALUES (1819,
	'timerPeriod',
	'',
	188,
	1941,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (1819,
	188);
INSERT INTO CNST_LSC
	VALUES (1819,
	188,
	'1');
INSERT INTO PE_PE
	VALUES (126,
	1,
	1938,
	0,
	6);
INSERT INTO C_I
	VALUES (126,
	0,
	'TrackingLocation',
	'');
INSERT INTO C_EP
	VALUES (128,
	126,
	-1,
	'getDistance',
	'Returns distance, in kilometers, between the "from" and "to" coordinates passed as parameters.
The coordinates must be passed as decimal degrees.');
INSERT INTO C_IO
	VALUES (128,
	133,
	'getDistance',
	'Returns distance, in kilometers, between the "from" and "to" coordinates passed as parameters.
The coordinates must be passed as decimal degrees.',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (135,
	128,
	133,
	'fromLat',
	'Latitude for the "from" coordinates.',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (139,
	128,
	133,
	'toLat',
	'Latitude for the "to" coordinates.',
	0,
	'',
	137);
INSERT INTO C_PP
	VALUES (137,
	128,
	133,
	'fromLong',
	'Longitude for the "from" coordinates.',
	0,
	'',
	135);
INSERT INTO C_PP
	VALUES (141,
	128,
	133,
	'toLong',
	'Longitude for the "to" coordinates.',
	0,
	'',
	139);
INSERT INTO C_EP
	VALUES (143,
	126,
	-1,
	'getLocation',
	'');
INSERT INTO C_IO
	VALUES (143,
	294,
	'getLocation',
	'',
	0,
	'',
	128);
INSERT INTO C_PP
	VALUES (148,
	143,
	133,
	'latitude',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (150,
	143,
	133,
	'longitude',
	'',
	0,
	'',
	148);
INSERT INTO C_EP
	VALUES (152,
	126,
	-1,
	'registerListener',
	'');
INSERT INTO C_IO
	VALUES (152,
	294,
	'registerListener',
	'',
	0,
	'',
	143);
INSERT INTO C_EP
	VALUES (157,
	126,
	-1,
	'unregisterListener',
	'');
INSERT INTO C_IO
	VALUES (157,
	294,
	'unregisterListener',
	'',
	0,
	'',
	152);
INSERT INTO PE_PE
	VALUES (163,
	1,
	1938,
	0,
	6);
INSERT INTO C_I
	VALUES (163,
	0,
	'TrackingUI',
	'');
INSERT INTO C_EP
	VALUES (165,
	163,
	-1,
	'setData',
	'');
INSERT INTO C_IO
	VALUES (165,
	294,
	'setData',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (170,
	165,
	133,
	'value',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (173,
	165,
	172,
	'unit',
	'',
	0,
	'',
	170);
INSERT INTO C_EP
	VALUES (175,
	163,
	-1,
	'setIndicator',
	'');
INSERT INTO C_IO
	VALUES (175,
	294,
	'setIndicator',
	'',
	0,
	'',
	165);
INSERT INTO C_PP
	VALUES (181,
	175,
	180,
	'indicator',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (183,
	163,
	-1,
	'setTime',
	'');
INSERT INTO C_IO
	VALUES (183,
	294,
	'setTime',
	'',
	0,
	'',
	175);
INSERT INTO C_PP
	VALUES (189,
	183,
	188,
	'time',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (191,
	163,
	-1,
	'newGoalSpec',
	'');
INSERT INTO C_IO
	VALUES (191,
	294,
	'newGoalSpec',
	'',
	0,
	'',
	183);
INSERT INTO C_PP
	VALUES (196,
	191,
	188,
	'sequenceNumber',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (198,
	191,
	133,
	'minimum',
	'',
	0,
	'',
	196);
INSERT INTO C_PP
	VALUES (200,
	191,
	133,
	'maximum',
	'',
	0,
	'',
	198);
INSERT INTO C_PP
	VALUES (202,
	191,
	133,
	'span',
	'',
	0,
	'',
	200);
INSERT INTO C_PP
	VALUES (205,
	191,
	204,
	'criteriaType',
	'',
	0,
	'',
	202);
INSERT INTO C_PP
	VALUES (208,
	191,
	207,
	'spanType',
	'',
	0,
	'',
	205);
INSERT INTO PE_PE
	VALUES (113,
	1,
	1938,
	0,
	6);
INSERT INTO C_I
	VALUES (113,
	0,
	'TrackingHeartRateMonitor',
	'');
INSERT INTO C_EP
	VALUES (115,
	113,
	-1,
	'registerListener',
	'');
INSERT INTO C_IO
	VALUES (115,
	294,
	'registerListener',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (120,
	113,
	-1,
	'unregisterListener',
	'');
INSERT INTO C_IO
	VALUES (120,
	294,
	'unregisterListener',
	'',
	0,
	'',
	115);
INSERT INTO PE_PE
	VALUES (211,
	1,
	1938,
	0,
	6);
INSERT INTO C_I
	VALUES (211,
	0,
	'Tracking',
	'');
INSERT INTO C_EP
	VALUES (213,
	211,
	-1,
	'heartRateChanged',
	'');
INSERT INTO C_IO
	VALUES (213,
	294,
	'heartRateChanged',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (357,
	213,
	188,
	'heartRate',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (217,
	211,
	-1,
	'lapResetPressed',
	'');
INSERT INTO C_IO
	VALUES (217,
	294,
	'lapResetPressed',
	'',
	0,
	'',
	213);
INSERT INTO C_EP
	VALUES (221,
	211,
	-1,
	'modePressed',
	'');
INSERT INTO C_IO
	VALUES (221,
	294,
	'modePressed',
	'',
	0,
	'',
	217);
INSERT INTO C_EP
	VALUES (225,
	211,
	-1,
	'setTargetPressed',
	'');
INSERT INTO C_IO
	VALUES (225,
	294,
	'setTargetPressed',
	'',
	0,
	'',
	221);
INSERT INTO C_EP
	VALUES (229,
	211,
	-1,
	'startStopPressed',
	'');
INSERT INTO C_IO
	VALUES (229,
	294,
	'startStopPressed',
	'',
	0,
	'',
	225);
INSERT INTO C_EP
	VALUES (233,
	211,
	-1,
	'newGoalSpec',
	'');
INSERT INTO C_IO
	VALUES (233,
	294,
	'newGoalSpec',
	'',
	0,
	'',
	229);
INSERT INTO C_PP
	VALUES (443,
	233,
	188,
	'sequenceNumber',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (446,
	233,
	133,
	'minimum',
	'',
	0,
	'',
	443);
INSERT INTO C_PP
	VALUES (449,
	233,
	133,
	'maximum',
	'',
	0,
	'',
	446);
INSERT INTO C_PP
	VALUES (452,
	233,
	133,
	'span',
	'',
	0,
	'',
	449);
INSERT INTO C_PP
	VALUES (455,
	233,
	204,
	'criteriaType',
	'',
	0,
	'',
	452);
INSERT INTO C_PP
	VALUES (458,
	233,
	207,
	'spanType',
	'',
	0,
	'',
	455);
INSERT INTO C_EP
	VALUES (237,
	211,
	-1,
	'lightPressed',
	'');
INSERT INTO C_IO
	VALUES (237,
	294,
	'lightPressed',
	'',
	0,
	'',
	233);
-- root-types-contained: SystemModel_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES (1942,
	'UI',
	1);
INSERT INTO EP_PKG
	VALUES (1943,
	1942,
	1942,
	'UI',
	'',
	0);
INSERT INTO PE_PE
	VALUES (38,
	1,
	1943,
	0,
	2);
INSERT INTO C_C
	VALUES (38,
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
	VALUES (39,
	38,
	'UI',
	0,
	0);
INSERT INTO C_IR
	VALUES (42,
	90,
	0,
	39);
INSERT INTO C_P
	VALUES (42,
	'UI',
	'Unnamed Interface',
	'',
	'UI::UI::UI');
INSERT INTO SPR_PEP
	VALUES (1944,
	92,
	42);
INSERT INTO SPR_PO
	VALUES (1944,
	'setTime',
	'',
	'GuiBridge::setTime(time: param.time);',
	1);
INSERT INTO ACT_POB
	VALUES (1945,
	1944);
INSERT INTO ACT_ACT
	VALUES (1945,
	'interface operation',
	0,
	1946,
	0,
	0,
	'UI::UI::setTime',
	0);
INSERT INTO ACT_BLK
	VALUES (1946,
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
	1945,
	0);
INSERT INTO ACT_SMT
	VALUES (1947,
	1946,
	0,
	1,
	1,
	'UI::UI::setTime line: 1');
INSERT INTO ACT_BRG
	VALUES (1947,
	1948,
	1,
	12,
	1,
	1);
INSERT INTO V_VAL
	VALUES (1949,
	0,
	0,
	1,
	32,
	35,
	0,
	0,
	0,
	0,
	188,
	1946);
INSERT INTO V_PVL
	VALUES (1949,
	0,
	0,
	0,
	1950);
INSERT INTO V_PAR
	VALUES (1949,
	1947,
	0,
	'time',
	0,
	1,
	20);
INSERT INTO SPR_PEP
	VALUES (1951,
	96,
	42);
INSERT INTO SPR_PO
	VALUES (1951,
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
	1);
INSERT INTO ACT_POB
	VALUES (1952,
	1951);
INSERT INTO ACT_ACT
	VALUES (1952,
	'interface operation',
	0,
	1953,
	0,
	0,
	'UI::UI::setData',
	0);
INSERT INTO ACT_BLK
	VALUES (1953,
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
	1952,
	0);
INSERT INTO ACT_SMT
	VALUES (1954,
	1953,
	0,
	1,
	1,
	'UI::UI::setData line: 1');
INSERT INTO ACT_IF
	VALUES (1954,
	1955,
	1956,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1957,
	1953,
	0,
	3,
	1,
	'UI::UI::setData line: 3');
INSERT INTO ACT_EL
	VALUES (1957,
	1958,
	1959,
	1954);
INSERT INTO ACT_SMT
	VALUES (1960,
	1953,
	0,
	5,
	1,
	'UI::UI::setData line: 5');
INSERT INTO ACT_EL
	VALUES (1960,
	1961,
	1962,
	1954);
INSERT INTO ACT_SMT
	VALUES (1963,
	1953,
	0,
	7,
	1,
	'UI::UI::setData line: 7');
INSERT INTO ACT_EL
	VALUES (1963,
	1964,
	1965,
	1954);
INSERT INTO ACT_SMT
	VALUES (1966,
	1953,
	0,
	9,
	1,
	'UI::UI::setData line: 9');
INSERT INTO ACT_EL
	VALUES (1966,
	1967,
	1968,
	1954);
INSERT INTO ACT_SMT
	VALUES (1969,
	1953,
	0,
	11,
	1,
	'UI::UI::setData line: 11');
INSERT INTO ACT_EL
	VALUES (1969,
	1970,
	1971,
	1954);
INSERT INTO ACT_SMT
	VALUES (1972,
	1953,
	0,
	13,
	1,
	'UI::UI::setData line: 13');
INSERT INTO ACT_EL
	VALUES (1972,
	1973,
	1974,
	1954);
INSERT INTO ACT_SMT
	VALUES (1975,
	1953,
	0,
	15,
	1,
	'UI::UI::setData line: 15');
INSERT INTO ACT_EL
	VALUES (1975,
	1976,
	1977,
	1954);
INSERT INTO ACT_SMT
	VALUES (1978,
	1953,
	0,
	17,
	1,
	'UI::UI::setData line: 17');
INSERT INTO ACT_EL
	VALUES (1978,
	1979,
	1980,
	1954);
INSERT INTO ACT_SMT
	VALUES (1981,
	1953,
	0,
	19,
	1,
	'UI::UI::setData line: 19');
INSERT INTO ACT_EL
	VALUES (1981,
	1982,
	1983,
	1954);
INSERT INTO ACT_SMT
	VALUES (1984,
	1953,
	0,
	21,
	1,
	'UI::UI::setData line: 21');
INSERT INTO ACT_EL
	VALUES (1984,
	1985,
	1986,
	1954);
INSERT INTO V_VAL
	VALUES (1987,
	0,
	0,
	1,
	11,
	14,
	0,
	0,
	0,
	0,
	172,
	1953);
INSERT INTO V_PVL
	VALUES (1987,
	0,
	0,
	0,
	1988);
INSERT INTO V_VAL
	VALUES (1956,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1953);
INSERT INTO V_BIN
	VALUES (1956,
	1989,
	1987,
	'==');
INSERT INTO V_VAL
	VALUES (1989,
	0,
	0,
	1,
	25,
	26,
	0,
	0,
	0,
	0,
	172,
	1953);
INSERT INTO V_LEN
	VALUES (1989,
	754,
	1,
	19);
INSERT INTO V_VAL
	VALUES (1990,
	0,
	0,
	3,
	13,
	16,
	0,
	0,
	0,
	0,
	172,
	1953);
INSERT INTO V_PVL
	VALUES (1990,
	0,
	0,
	0,
	1988);
INSERT INTO V_VAL
	VALUES (1959,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1953);
INSERT INTO V_BIN
	VALUES (1959,
	1991,
	1990,
	'==');
INSERT INTO V_VAL
	VALUES (1991,
	0,
	0,
	3,
	27,
	32,
	0,
	0,
	0,
	0,
	172,
	1953);
INSERT INTO V_LEN
	VALUES (1991,
	758,
	3,
	21);
INSERT INTO V_VAL
	VALUES (1992,
	0,
	0,
	5,
	13,
	16,
	0,
	0,
	0,
	0,
	172,
	1953);
INSERT INTO V_PVL
	VALUES (1992,
	0,
	0,
	0,
	1988);
INSERT INTO V_VAL
	VALUES (1962,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1953);
INSERT INTO V_BIN
	VALUES (1962,
	1993,
	1992,
	'==');
INSERT INTO V_VAL
	VALUES (1993,
	0,
	0,
	5,
	27,
	34,
	0,
	0,
	0,
	0,
	172,
	1953);
INSERT INTO V_LEN
	VALUES (1993,
	799,
	5,
	21);
INSERT INTO V_VAL
	VALUES (1994,
	0,
	0,
	7,
	13,
	16,
	0,
	0,
	0,
	0,
	172,
	1953);
INSERT INTO V_PVL
	VALUES (1994,
	0,
	0,
	0,
	1988);
INSERT INTO V_VAL
	VALUES (1965,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1953);
INSERT INTO V_BIN
	VALUES (1965,
	1995,
	1994,
	'==');
INSERT INTO V_VAL
	VALUES (1995,
	0,
	0,
	7,
	27,
	35,
	0,
	0,
	0,
	0,
	172,
	1953);
INSERT INTO V_LEN
	VALUES (1995,
	778,
	7,
	21);
INSERT INTO V_VAL
	VALUES (1996,
	0,
	0,
	9,
	13,
	16,
	0,
	0,
	0,
	0,
	172,
	1953);
INSERT INTO V_PVL
	VALUES (1996,
	0,
	0,
	0,
	1988);
INSERT INTO V_VAL
	VALUES (1968,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1953);
INSERT INTO V_BIN
	VALUES (1968,
	1997,
	1996,
	'==');
INSERT INTO V_VAL
	VALUES (1997,
	0,
	0,
	9,
	27,
	31,
	0,
	0,
	0,
	0,
	172,
	1953);
INSERT INTO V_LEN
	VALUES (1997,
	1998,
	9,
	21);
INSERT INTO V_VAL
	VALUES (1999,
	0,
	0,
	11,
	13,
	16,
	0,
	0,
	0,
	0,
	172,
	1953);
INSERT INTO V_PVL
	VALUES (1999,
	0,
	0,
	0,
	1988);
INSERT INTO V_VAL
	VALUES (1971,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1953);
INSERT INTO V_BIN
	VALUES (1971,
	2000,
	1999,
	'==');
INSERT INTO V_VAL
	VALUES (2000,
	0,
	0,
	11,
	27,
	31,
	0,
	0,
	0,
	0,
	172,
	1953);
INSERT INTO V_LEN
	VALUES (2000,
	2001,
	11,
	21);
INSERT INTO V_VAL
	VALUES (2002,
	0,
	0,
	13,
	13,
	16,
	0,
	0,
	0,
	0,
	172,
	1953);
INSERT INTO V_PVL
	VALUES (2002,
	0,
	0,
	0,
	1988);
INSERT INTO V_VAL
	VALUES (1974,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1953);
INSERT INTO V_BIN
	VALUES (1974,
	2003,
	2002,
	'==');
INSERT INTO V_VAL
	VALUES (2003,
	0,
	0,
	13,
	27,
	30,
	0,
	0,
	0,
	0,
	172,
	1953);
INSERT INTO V_LEN
	VALUES (2003,
	2004,
	13,
	21);
INSERT INTO V_VAL
	VALUES (2005,
	0,
	0,
	15,
	13,
	16,
	0,
	0,
	0,
	0,
	172,
	1953);
INSERT INTO V_PVL
	VALUES (2005,
	0,
	0,
	0,
	1988);
INSERT INTO V_VAL
	VALUES (1977,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1953);
INSERT INTO V_BIN
	VALUES (1977,
	2006,
	2005,
	'==');
INSERT INTO V_VAL
	VALUES (2006,
	0,
	0,
	15,
	27,
	36,
	0,
	0,
	0,
	0,
	172,
	1953);
INSERT INTO V_LEN
	VALUES (2006,
	2007,
	15,
	21);
INSERT INTO V_VAL
	VALUES (2008,
	0,
	0,
	17,
	13,
	16,
	0,
	0,
	0,
	0,
	172,
	1953);
INSERT INTO V_PVL
	VALUES (2008,
	0,
	0,
	0,
	1988);
INSERT INTO V_VAL
	VALUES (1980,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1953);
INSERT INTO V_BIN
	VALUES (1980,
	2009,
	2008,
	'==');
INSERT INTO V_VAL
	VALUES (2009,
	0,
	0,
	17,
	27,
	29,
	0,
	0,
	0,
	0,
	172,
	1953);
INSERT INTO V_LEN
	VALUES (2009,
	2010,
	17,
	21);
INSERT INTO V_VAL
	VALUES (2011,
	0,
	0,
	19,
	13,
	16,
	0,
	0,
	0,
	0,
	172,
	1953);
INSERT INTO V_PVL
	VALUES (2011,
	0,
	0,
	0,
	1988);
INSERT INTO V_VAL
	VALUES (1983,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1953);
INSERT INTO V_BIN
	VALUES (1983,
	2012,
	2011,
	'==');
INSERT INTO V_VAL
	VALUES (2012,
	0,
	0,
	19,
	27,
	29,
	0,
	0,
	0,
	0,
	172,
	1953);
INSERT INTO V_LEN
	VALUES (2012,
	820,
	19,
	21);
INSERT INTO V_VAL
	VALUES (2013,
	0,
	0,
	21,
	13,
	16,
	0,
	0,
	0,
	0,
	172,
	1953);
INSERT INTO V_PVL
	VALUES (2013,
	0,
	0,
	0,
	1988);
INSERT INTO V_VAL
	VALUES (1986,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	1953);
INSERT INTO V_BIN
	VALUES (1986,
	2014,
	2013,
	'==');
INSERT INTO V_VAL
	VALUES (2014,
	0,
	0,
	21,
	27,
	30,
	0,
	0,
	0,
	0,
	172,
	1953);
INSERT INTO V_LEN
	VALUES (2014,
	838,
	21,
	21);
INSERT INTO ACT_BLK
	VALUES (1955,
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
	1952,
	0);
INSERT INTO ACT_SMT
	VALUES (2015,
	1955,
	0,
	2,
	3,
	'UI::UI::setData line: 2');
INSERT INTO ACT_BRG
	VALUES (2015,
	2016,
	2,
	14,
	2,
	3);
INSERT INTO V_VAL
	VALUES (2017,
	0,
	0,
	2,
	35,
	39,
	0,
	0,
	0,
	0,
	133,
	1955);
INSERT INTO V_PVL
	VALUES (2017,
	0,
	0,
	0,
	2018);
INSERT INTO V_PAR
	VALUES (2017,
	2015,
	0,
	'value',
	2019,
	2,
	22);
INSERT INTO V_VAL
	VALUES (2019,
	0,
	0,
	2,
	48,
	48,
	0,
	0,
	0,
	0,
	188,
	1955);
INSERT INTO V_LIN
	VALUES (2019,
	'0');
INSERT INTO V_PAR
	VALUES (2019,
	2015,
	0,
	'unit',
	0,
	2,
	42);
INSERT INTO ACT_BLK
	VALUES (1958,
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
	1952,
	0);
INSERT INTO ACT_SMT
	VALUES (2020,
	1958,
	0,
	4,
	3,
	'UI::UI::setData line: 4');
INSERT INTO ACT_BRG
	VALUES (2020,
	2016,
	4,
	14,
	4,
	3);
INSERT INTO V_VAL
	VALUES (2021,
	0,
	0,
	4,
	35,
	39,
	0,
	0,
	0,
	0,
	133,
	1958);
INSERT INTO V_PVL
	VALUES (2021,
	0,
	0,
	0,
	2018);
INSERT INTO V_PAR
	VALUES (2021,
	2020,
	0,
	'value',
	2022,
	4,
	22);
INSERT INTO V_VAL
	VALUES (2022,
	0,
	0,
	4,
	48,
	48,
	0,
	0,
	0,
	0,
	188,
	1958);
INSERT INTO V_LIN
	VALUES (2022,
	'1');
INSERT INTO V_PAR
	VALUES (2022,
	2020,
	0,
	'unit',
	0,
	4,
	42);
INSERT INTO ACT_BLK
	VALUES (1961,
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
	1952,
	0);
INSERT INTO ACT_SMT
	VALUES (2023,
	1961,
	0,
	6,
	3,
	'UI::UI::setData line: 6');
INSERT INTO ACT_BRG
	VALUES (2023,
	2016,
	6,
	14,
	6,
	3);
INSERT INTO V_VAL
	VALUES (2024,
	0,
	0,
	6,
	35,
	39,
	0,
	0,
	0,
	0,
	133,
	1961);
INSERT INTO V_PVL
	VALUES (2024,
	0,
	0,
	0,
	2018);
INSERT INTO V_PAR
	VALUES (2024,
	2023,
	0,
	'value',
	2025,
	6,
	22);
INSERT INTO V_VAL
	VALUES (2025,
	0,
	0,
	6,
	48,
	48,
	0,
	0,
	0,
	0,
	188,
	1961);
INSERT INTO V_LIN
	VALUES (2025,
	'2');
INSERT INTO V_PAR
	VALUES (2025,
	2023,
	0,
	'unit',
	0,
	6,
	42);
INSERT INTO ACT_BLK
	VALUES (1964,
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
	1952,
	0);
INSERT INTO ACT_SMT
	VALUES (2026,
	1964,
	0,
	8,
	3,
	'UI::UI::setData line: 8');
INSERT INTO ACT_BRG
	VALUES (2026,
	2016,
	8,
	14,
	8,
	3);
INSERT INTO V_VAL
	VALUES (2027,
	0,
	0,
	8,
	35,
	39,
	0,
	0,
	0,
	0,
	133,
	1964);
INSERT INTO V_PVL
	VALUES (2027,
	0,
	0,
	0,
	2018);
INSERT INTO V_PAR
	VALUES (2027,
	2026,
	0,
	'value',
	2028,
	8,
	22);
INSERT INTO V_VAL
	VALUES (2028,
	0,
	0,
	8,
	48,
	48,
	0,
	0,
	0,
	0,
	188,
	1964);
INSERT INTO V_LIN
	VALUES (2028,
	'3');
INSERT INTO V_PAR
	VALUES (2028,
	2026,
	0,
	'unit',
	0,
	8,
	42);
INSERT INTO ACT_BLK
	VALUES (1967,
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
	1952,
	0);
INSERT INTO ACT_SMT
	VALUES (2029,
	1967,
	0,
	10,
	3,
	'UI::UI::setData line: 10');
INSERT INTO ACT_BRG
	VALUES (2029,
	2016,
	10,
	14,
	10,
	3);
INSERT INTO V_VAL
	VALUES (2030,
	0,
	0,
	10,
	35,
	39,
	0,
	0,
	0,
	0,
	133,
	1967);
INSERT INTO V_PVL
	VALUES (2030,
	0,
	0,
	0,
	2018);
INSERT INTO V_PAR
	VALUES (2030,
	2029,
	0,
	'value',
	2031,
	10,
	22);
INSERT INTO V_VAL
	VALUES (2031,
	0,
	0,
	10,
	48,
	48,
	0,
	0,
	0,
	0,
	188,
	1967);
INSERT INTO V_LIN
	VALUES (2031,
	'4');
INSERT INTO V_PAR
	VALUES (2031,
	2029,
	0,
	'unit',
	0,
	10,
	42);
INSERT INTO ACT_BLK
	VALUES (1970,
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
	1952,
	0);
INSERT INTO ACT_SMT
	VALUES (2032,
	1970,
	0,
	12,
	3,
	'UI::UI::setData line: 12');
INSERT INTO ACT_BRG
	VALUES (2032,
	2016,
	12,
	14,
	12,
	3);
INSERT INTO V_VAL
	VALUES (2033,
	0,
	0,
	12,
	35,
	39,
	0,
	0,
	0,
	0,
	133,
	1970);
INSERT INTO V_PVL
	VALUES (2033,
	0,
	0,
	0,
	2018);
INSERT INTO V_PAR
	VALUES (2033,
	2032,
	0,
	'value',
	2034,
	12,
	22);
INSERT INTO V_VAL
	VALUES (2034,
	0,
	0,
	12,
	48,
	48,
	0,
	0,
	0,
	0,
	188,
	1970);
INSERT INTO V_LIN
	VALUES (2034,
	'5');
INSERT INTO V_PAR
	VALUES (2034,
	2032,
	0,
	'unit',
	0,
	12,
	42);
INSERT INTO ACT_BLK
	VALUES (1973,
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
	1952,
	0);
INSERT INTO ACT_SMT
	VALUES (2035,
	1973,
	0,
	14,
	3,
	'UI::UI::setData line: 14');
INSERT INTO ACT_BRG
	VALUES (2035,
	2016,
	14,
	14,
	14,
	3);
INSERT INTO V_VAL
	VALUES (2036,
	0,
	0,
	14,
	35,
	39,
	0,
	0,
	0,
	0,
	133,
	1973);
INSERT INTO V_PVL
	VALUES (2036,
	0,
	0,
	0,
	2018);
INSERT INTO V_PAR
	VALUES (2036,
	2035,
	0,
	'value',
	2037,
	14,
	22);
INSERT INTO V_VAL
	VALUES (2037,
	0,
	0,
	14,
	48,
	48,
	0,
	0,
	0,
	0,
	188,
	1973);
INSERT INTO V_LIN
	VALUES (2037,
	'6');
INSERT INTO V_PAR
	VALUES (2037,
	2035,
	0,
	'unit',
	0,
	14,
	42);
INSERT INTO ACT_BLK
	VALUES (1976,
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
	1952,
	0);
INSERT INTO ACT_SMT
	VALUES (2038,
	1976,
	0,
	16,
	3,
	'UI::UI::setData line: 16');
INSERT INTO ACT_BRG
	VALUES (2038,
	2016,
	16,
	14,
	16,
	3);
INSERT INTO V_VAL
	VALUES (2039,
	0,
	0,
	16,
	35,
	39,
	0,
	0,
	0,
	0,
	133,
	1976);
INSERT INTO V_PVL
	VALUES (2039,
	0,
	0,
	0,
	2018);
INSERT INTO V_PAR
	VALUES (2039,
	2038,
	0,
	'value',
	2040,
	16,
	22);
INSERT INTO V_VAL
	VALUES (2040,
	0,
	0,
	16,
	48,
	48,
	0,
	0,
	0,
	0,
	188,
	1976);
INSERT INTO V_LIN
	VALUES (2040,
	'7');
INSERT INTO V_PAR
	VALUES (2040,
	2038,
	0,
	'unit',
	0,
	16,
	42);
INSERT INTO ACT_BLK
	VALUES (1979,
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
	1952,
	0);
INSERT INTO ACT_SMT
	VALUES (2041,
	1979,
	0,
	18,
	3,
	'UI::UI::setData line: 18');
INSERT INTO ACT_BRG
	VALUES (2041,
	2016,
	18,
	14,
	18,
	3);
INSERT INTO V_VAL
	VALUES (2042,
	0,
	0,
	18,
	35,
	39,
	0,
	0,
	0,
	0,
	133,
	1979);
INSERT INTO V_PVL
	VALUES (2042,
	0,
	0,
	0,
	2018);
INSERT INTO V_PAR
	VALUES (2042,
	2041,
	0,
	'value',
	2043,
	18,
	22);
INSERT INTO V_VAL
	VALUES (2043,
	0,
	0,
	18,
	48,
	48,
	0,
	0,
	0,
	0,
	188,
	1979);
INSERT INTO V_LIN
	VALUES (2043,
	'8');
INSERT INTO V_PAR
	VALUES (2043,
	2041,
	0,
	'unit',
	0,
	18,
	42);
INSERT INTO ACT_BLK
	VALUES (1982,
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
	1952,
	0);
INSERT INTO ACT_SMT
	VALUES (2044,
	1982,
	0,
	20,
	3,
	'UI::UI::setData line: 20');
INSERT INTO ACT_BRG
	VALUES (2044,
	2016,
	20,
	14,
	20,
	3);
INSERT INTO V_VAL
	VALUES (2045,
	0,
	0,
	20,
	35,
	39,
	0,
	0,
	0,
	0,
	133,
	1982);
INSERT INTO V_PVL
	VALUES (2045,
	0,
	0,
	0,
	2018);
INSERT INTO V_PAR
	VALUES (2045,
	2044,
	0,
	'value',
	2046,
	20,
	22);
INSERT INTO V_VAL
	VALUES (2046,
	0,
	0,
	20,
	48,
	48,
	0,
	0,
	0,
	0,
	188,
	1982);
INSERT INTO V_LIN
	VALUES (2046,
	'9');
INSERT INTO V_PAR
	VALUES (2046,
	2044,
	0,
	'unit',
	0,
	20,
	42);
INSERT INTO ACT_BLK
	VALUES (1985,
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
	1952,
	0);
INSERT INTO ACT_SMT
	VALUES (2047,
	1985,
	0,
	22,
	3,
	'UI::UI::setData line: 22');
INSERT INTO ACT_BRG
	VALUES (2047,
	2016,
	22,
	14,
	22,
	3);
INSERT INTO V_VAL
	VALUES (2048,
	0,
	0,
	22,
	35,
	39,
	0,
	0,
	0,
	0,
	133,
	1985);
INSERT INTO V_PVL
	VALUES (2048,
	0,
	0,
	0,
	2018);
INSERT INTO V_PAR
	VALUES (2048,
	2047,
	0,
	'value',
	2049,
	22,
	22);
INSERT INTO V_VAL
	VALUES (2049,
	0,
	0,
	22,
	48,
	49,
	0,
	0,
	0,
	0,
	188,
	1985);
INSERT INTO V_LIN
	VALUES (2049,
	'10');
INSERT INTO V_PAR
	VALUES (2049,
	2047,
	0,
	'unit',
	0,
	22,
	42);
INSERT INTO SPR_PEP
	VALUES (2050,
	100,
	42);
INSERT INTO SPR_PO
	VALUES (2050,
	'startTest',
	'',
	'generate TestCase2:start(iterations: 2) to TestCase creator;',
	1);
INSERT INTO ACT_POB
	VALUES (2051,
	2050);
INSERT INTO ACT_ACT
	VALUES (2051,
	'interface operation',
	0,
	2052,
	0,
	0,
	'UI::UI::startTest',
	0);
INSERT INTO ACT_BLK
	VALUES (2052,
	0,
	0,
	0,
	'',
	'iterations',
	'iterations',
	1,
	1,
	1,
	44,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2051,
	0);
INSERT INTO ACT_SMT
	VALUES (2053,
	2052,
	0,
	1,
	1,
	'UI::UI::startTest line: 1');
INSERT INTO E_ESS
	VALUES (2053,
	1,
	0,
	1,
	10,
	1,
	20,
	1,
	44,
	1,
	26,
	0,
	0);
INSERT INTO V_PAR
	VALUES (2054,
	2053,
	0,
	'iterations',
	0,
	1,
	26);
INSERT INTO E_GES
	VALUES (2053);
INSERT INTO E_GSME
	VALUES (2053,
	2055);
INSERT INTO E_GEC
	VALUES (2053);
INSERT INTO V_VAL
	VALUES (2054,
	0,
	0,
	1,
	38,
	38,
	0,
	0,
	0,
	0,
	188,
	2052);
INSERT INTO V_LIN
	VALUES (2054,
	'2');
INSERT INTO SPR_PEP
	VALUES (2056,
	104,
	42);
INSERT INTO SPR_PO
	VALUES (2056,
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
	1);
INSERT INTO ACT_POB
	VALUES (2057,
	2056);
INSERT INTO ACT_ACT
	VALUES (2057,
	'interface operation',
	0,
	2058,
	0,
	0,
	'UI::UI::setIndicator',
	0);
INSERT INTO ACT_BLK
	VALUES (2058,
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
	2057,
	0);
INSERT INTO ACT_SMT
	VALUES (2059,
	2058,
	0,
	2,
	1,
	'UI::UI::setIndicator line: 2');
INSERT INTO ACT_IF
	VALUES (2059,
	2060,
	2061,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2062,
	2058,
	0,
	4,
	1,
	'UI::UI::setIndicator line: 4');
INSERT INTO ACT_EL
	VALUES (2062,
	2063,
	2064,
	2059);
INSERT INTO ACT_SMT
	VALUES (2065,
	2058,
	0,
	6,
	1,
	'UI::UI::setIndicator line: 6');
INSERT INTO ACT_EL
	VALUES (2065,
	2066,
	2067,
	2059);
INSERT INTO ACT_SMT
	VALUES (2068,
	2058,
	0,
	8,
	1,
	'UI::UI::setIndicator line: 8');
INSERT INTO ACT_EL
	VALUES (2068,
	2069,
	2070,
	2059);
INSERT INTO V_VAL
	VALUES (2071,
	0,
	0,
	2,
	12,
	20,
	0,
	0,
	0,
	0,
	180,
	2058);
INSERT INTO V_PVL
	VALUES (2071,
	0,
	0,
	0,
	2072);
INSERT INTO V_VAL
	VALUES (2061,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	2058);
INSERT INTO V_BIN
	VALUES (2061,
	2073,
	2071,
	'==');
INSERT INTO V_VAL
	VALUES (2073,
	0,
	0,
	2,
	36,
	40,
	0,
	0,
	0,
	0,
	180,
	2058);
INSERT INTO V_LEN
	VALUES (2073,
	689,
	2,
	25);
INSERT INTO V_VAL
	VALUES (2074,
	0,
	0,
	4,
	14,
	22,
	0,
	0,
	0,
	0,
	180,
	2058);
INSERT INTO V_PVL
	VALUES (2074,
	0,
	0,
	0,
	2072);
INSERT INTO V_VAL
	VALUES (2064,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	2058);
INSERT INTO V_BIN
	VALUES (2064,
	2075,
	2074,
	'==');
INSERT INTO V_VAL
	VALUES (2075,
	0,
	0,
	4,
	38,
	41,
	0,
	0,
	0,
	0,
	180,
	2058);
INSERT INTO V_LEN
	VALUES (2075,
	717,
	4,
	27);
INSERT INTO V_VAL
	VALUES (2076,
	0,
	0,
	6,
	14,
	22,
	0,
	0,
	0,
	0,
	180,
	2058);
INSERT INTO V_PVL
	VALUES (2076,
	0,
	0,
	0,
	2072);
INSERT INTO V_VAL
	VALUES (2067,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	2058);
INSERT INTO V_BIN
	VALUES (2067,
	2077,
	2076,
	'==');
INSERT INTO V_VAL
	VALUES (2077,
	0,
	0,
	6,
	38,
	41,
	0,
	0,
	0,
	0,
	180,
	2058);
INSERT INTO V_LEN
	VALUES (2077,
	721,
	6,
	27);
INSERT INTO V_VAL
	VALUES (2078,
	0,
	0,
	8,
	14,
	22,
	0,
	0,
	0,
	0,
	180,
	2058);
INSERT INTO V_PVL
	VALUES (2078,
	0,
	0,
	0,
	2072);
INSERT INTO V_VAL
	VALUES (2070,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	2058);
INSERT INTO V_BIN
	VALUES (2070,
	2079,
	2078,
	'==');
INSERT INTO V_VAL
	VALUES (2079,
	0,
	0,
	8,
	38,
	39,
	0,
	0,
	0,
	0,
	180,
	2058);
INSERT INTO V_LEN
	VALUES (2079,
	713,
	8,
	27);
INSERT INTO ACT_BLK
	VALUES (2060,
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
	2057,
	0);
INSERT INTO ACT_SMT
	VALUES (2080,
	2060,
	0,
	3,
	3,
	'UI::UI::setIndicator line: 3');
INSERT INTO ACT_BRG
	VALUES (2080,
	2081,
	3,
	14,
	3,
	3);
INSERT INTO V_VAL
	VALUES (2082,
	0,
	0,
	3,
	35,
	35,
	0,
	0,
	0,
	0,
	188,
	2060);
INSERT INTO V_LIN
	VALUES (2082,
	'0');
INSERT INTO V_PAR
	VALUES (2082,
	2080,
	0,
	'value',
	0,
	3,
	28);
INSERT INTO ACT_BLK
	VALUES (2063,
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
	2057,
	0);
INSERT INTO ACT_SMT
	VALUES (2083,
	2063,
	0,
	5,
	3,
	'UI::UI::setIndicator line: 5');
INSERT INTO ACT_BRG
	VALUES (2083,
	2081,
	5,
	14,
	5,
	3);
INSERT INTO V_VAL
	VALUES (2084,
	0,
	0,
	5,
	35,
	35,
	0,
	0,
	0,
	0,
	188,
	2063);
INSERT INTO V_LIN
	VALUES (2084,
	'1');
INSERT INTO V_PAR
	VALUES (2084,
	2083,
	0,
	'value',
	0,
	5,
	28);
INSERT INTO ACT_BLK
	VALUES (2066,
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
	2057,
	0);
INSERT INTO ACT_SMT
	VALUES (2085,
	2066,
	0,
	7,
	3,
	'UI::UI::setIndicator line: 7');
INSERT INTO ACT_BRG
	VALUES (2085,
	2081,
	7,
	14,
	7,
	3);
INSERT INTO V_VAL
	VALUES (2086,
	0,
	0,
	7,
	35,
	35,
	0,
	0,
	0,
	0,
	188,
	2066);
INSERT INTO V_LIN
	VALUES (2086,
	'2');
INSERT INTO V_PAR
	VALUES (2086,
	2085,
	0,
	'value',
	0,
	7,
	28);
INSERT INTO ACT_BLK
	VALUES (2069,
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
	2057,
	0);
INSERT INTO ACT_SMT
	VALUES (2087,
	2069,
	0,
	9,
	3,
	'UI::UI::setIndicator line: 9');
INSERT INTO ACT_BRG
	VALUES (2087,
	2081,
	9,
	14,
	9,
	3);
INSERT INTO V_VAL
	VALUES (2088,
	0,
	0,
	9,
	35,
	35,
	0,
	0,
	0,
	0,
	188,
	2069);
INSERT INTO V_LIN
	VALUES (2088,
	'3');
INSERT INTO V_PAR
	VALUES (2088,
	2087,
	0,
	'value',
	0,
	9,
	28);
INSERT INTO SPR_PEP
	VALUES (2089,
	108,
	42);
INSERT INTO SPR_PO
	VALUES (2089,
	'newGoalSpec',
	'',
	'',
	1);
INSERT INTO ACT_POB
	VALUES (2090,
	2089);
INSERT INTO ACT_ACT
	VALUES (2090,
	'interface operation',
	0,
	2091,
	0,
	0,
	'UI::UI::newGoalSpec',
	0);
INSERT INTO ACT_BLK
	VALUES (2091,
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
	2090,
	0);
INSERT INTO C_PO
	VALUES (44,
	38,
	'Tracking',
	0,
	0);
INSERT INTO C_IR
	VALUES (47,
	251,
	0,
	44);
INSERT INTO C_R
	VALUES (47,
	'UITracking',
	'',
	'Unnamed Interface',
	'UI::Tracking::UITracking');
INSERT INTO SPR_REP
	VALUES (2092,
	253,
	47);
INSERT INTO SPR_RO
	VALUES (2092,
	'setTargetPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2093,
	2092);
INSERT INTO ACT_ACT
	VALUES (2093,
	'interface operation',
	0,
	2094,
	0,
	0,
	'Tracking::UITracking::setTargetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2094,
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
	2093,
	0);
INSERT INTO SPR_REP
	VALUES (2095,
	258,
	47);
INSERT INTO SPR_RO
	VALUES (2095,
	'startStopPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2096,
	2095);
INSERT INTO ACT_ACT
	VALUES (2096,
	'interface operation',
	0,
	2097,
	0,
	0,
	'Tracking::UITracking::startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2097,
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
	2096,
	0);
INSERT INTO SPR_REP
	VALUES (2098,
	263,
	47);
INSERT INTO SPR_RO
	VALUES (2098,
	'lapResetPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2099,
	2098);
INSERT INTO ACT_ACT
	VALUES (2099,
	'interface operation',
	0,
	2100,
	0,
	0,
	'Tracking::UITracking::lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2100,
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
	2099,
	0);
INSERT INTO SPR_REP
	VALUES (2101,
	268,
	47);
INSERT INTO SPR_RO
	VALUES (2101,
	'modePressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2102,
	2101);
INSERT INTO ACT_ACT
	VALUES (2102,
	'interface operation',
	0,
	2103,
	0,
	0,
	'Tracking::UITracking::modePressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2103,
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
	2102,
	0);
INSERT INTO SPR_REP
	VALUES (2104,
	273,
	47);
INSERT INTO SPR_RO
	VALUES (2104,
	'newGoalSpec',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2105,
	2104);
INSERT INTO ACT_ACT
	VALUES (2105,
	'interface operation',
	0,
	2106,
	0,
	0,
	'Tracking::UITracking::newGoalSpec',
	0);
INSERT INTO ACT_BLK
	VALUES (2106,
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
	2105,
	0);
INSERT INTO SPR_REP
	VALUES (2107,
	290,
	47);
INSERT INTO SPR_RO
	VALUES (2107,
	'lightPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2108,
	2107);
INSERT INTO ACT_ACT
	VALUES (2108,
	'interface operation',
	0,
	2109,
	0,
	0,
	'Tracking::UITracking::lightPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2109,
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
	2108,
	0);
INSERT INTO PE_PE
	VALUES (2110,
	1,
	0,
	38,
	7);
INSERT INTO EP_PKG
	VALUES (2110,
	0,
	1942,
	'ButtonFunctions',
	'Each function within this package represents one of the buttons
on the watch.  When a function is executed, it sends the 
corresponding interface signal out through the UI port.
This allows a user executing models in Verifier to simulate
the use of the watch by invoking these functions to 
represent button pushes.',
	0);
INSERT INTO PE_PE
	VALUES (2111,
	1,
	2110,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (2111,
	0,
	'sendLapResetPressed',
	'',
	'send Tracking::lapResetPressed();',
	294,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (2112,
	2111);
INSERT INTO ACT_ACT
	VALUES (2112,
	'function',
	0,
	2113,
	0,
	0,
	'sendLapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2113,
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
	2112,
	0);
INSERT INTO ACT_SMT
	VALUES (2114,
	2113,
	0,
	1,
	1,
	'sendLapResetPressed line: 1');
INSERT INTO ACT_IOP
	VALUES (2114,
	1,
	16,
	1,
	6,
	0,
	2098,
	0);
INSERT INTO PE_PE
	VALUES (2115,
	1,
	2110,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (2115,
	0,
	'sendLightPressed',
	'',
	'send Tracking::lightPressed();',
	294,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (2116,
	2115);
INSERT INTO ACT_ACT
	VALUES (2116,
	'function',
	0,
	2117,
	0,
	0,
	'sendLightPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2117,
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
	2116,
	0);
INSERT INTO ACT_SMT
	VALUES (2118,
	2117,
	0,
	1,
	1,
	'sendLightPressed line: 1');
INSERT INTO ACT_IOP
	VALUES (2118,
	1,
	16,
	1,
	6,
	0,
	2107,
	0);
INSERT INTO PE_PE
	VALUES (2119,
	1,
	2110,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (2119,
	0,
	'sendModePressed',
	'',
	'send Tracking::modePressed();',
	294,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (2120,
	2119);
INSERT INTO ACT_ACT
	VALUES (2120,
	'function',
	0,
	2121,
	0,
	0,
	'sendModePressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2121,
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
	2120,
	0);
INSERT INTO ACT_SMT
	VALUES (2122,
	2121,
	0,
	1,
	1,
	'sendModePressed line: 1');
INSERT INTO ACT_IOP
	VALUES (2122,
	1,
	16,
	1,
	6,
	0,
	2101,
	0);
INSERT INTO PE_PE
	VALUES (2123,
	1,
	2110,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (2123,
	0,
	'sendStartStopPressed',
	'',
	'send Tracking::startStopPressed();',
	294,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (2124,
	2123);
INSERT INTO ACT_ACT
	VALUES (2124,
	'function',
	0,
	2125,
	0,
	0,
	'sendStartStopPressed',
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
	'sendStartStopPressed line: 1');
INSERT INTO ACT_IOP
	VALUES (2126,
	1,
	16,
	1,
	6,
	0,
	2095,
	0);
INSERT INTO PE_PE
	VALUES (2127,
	1,
	2110,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (2127,
	0,
	'sendTargetPressed',
	'',
	'send Tracking::setTargetPressed();',
	294,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (2128,
	2127);
INSERT INTO ACT_ACT
	VALUES (2128,
	'function',
	0,
	2129,
	0,
	0,
	'sendTargetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2129,
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
	2128,
	0);
INSERT INTO ACT_SMT
	VALUES (2130,
	2129,
	0,
	1,
	1,
	'sendTargetPressed line: 1');
INSERT INTO ACT_IOP
	VALUES (2130,
	1,
	16,
	1,
	6,
	0,
	2092,
	0);
INSERT INTO PE_PE
	VALUES (2131,
	1,
	0,
	38,
	7);
INSERT INTO EP_PKG
	VALUES (2131,
	0,
	1942,
	'UI',
	'',
	0);
INSERT INTO PE_PE
	VALUES (2132,
	1,
	2131,
	0,
	5);
INSERT INTO S_EE
	VALUES (2132,
	'Time',
	'The Time external entity provides date, timestamp, and timer related operations.',
	'TIM',
	0,
	'',
	'Time',
	1);
INSERT INTO S_BRG
	VALUES (2133,
	2132,
	'current_date',
	'',
	1,
	306,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (2134,
	2133);
INSERT INTO ACT_ACT
	VALUES (2134,
	'bridge',
	0,
	2135,
	0,
	0,
	'Time::current_date',
	0);
INSERT INTO ACT_BLK
	VALUES (2135,
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
	2134,
	0);
INSERT INTO S_BRG
	VALUES (2136,
	2132,
	'create_date',
	'',
	1,
	306,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2137,
	2136,
	'second',
	188,
	0,
	'',
	2138,
	'');
INSERT INTO S_BPARM
	VALUES (2139,
	2136,
	'minute',
	188,
	0,
	'',
	2140,
	'');
INSERT INTO S_BPARM
	VALUES (2140,
	2136,
	'hour',
	188,
	0,
	'',
	2141,
	'');
INSERT INTO S_BPARM
	VALUES (2141,
	2136,
	'day',
	188,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2138,
	2136,
	'month',
	188,
	0,
	'',
	2139,
	'');
INSERT INTO S_BPARM
	VALUES (2142,
	2136,
	'year',
	188,
	0,
	'',
	2137,
	'');
INSERT INTO ACT_BRB
	VALUES (2143,
	2136);
INSERT INTO ACT_ACT
	VALUES (2143,
	'bridge',
	0,
	2144,
	0,
	0,
	'Time::create_date',
	0);
INSERT INTO ACT_BLK
	VALUES (2144,
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
	2143,
	0);
INSERT INTO S_BRG
	VALUES (2145,
	2132,
	'get_second',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2146,
	2145,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2147,
	2145);
INSERT INTO ACT_ACT
	VALUES (2147,
	'bridge',
	0,
	2148,
	0,
	0,
	'Time::get_second',
	0);
INSERT INTO ACT_BLK
	VALUES (2148,
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
	2147,
	0);
INSERT INTO S_BRG
	VALUES (2149,
	2132,
	'get_minute',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2150,
	2149,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2151,
	2149);
INSERT INTO ACT_ACT
	VALUES (2151,
	'bridge',
	0,
	2152,
	0,
	0,
	'Time::get_minute',
	0);
INSERT INTO ACT_BLK
	VALUES (2152,
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
	2151,
	0);
INSERT INTO S_BRG
	VALUES (2153,
	2132,
	'get_hour',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2154,
	2153,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2155,
	2153);
INSERT INTO ACT_ACT
	VALUES (2155,
	'bridge',
	0,
	2156,
	0,
	0,
	'Time::get_hour',
	0);
INSERT INTO ACT_BLK
	VALUES (2156,
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
	2155,
	0);
INSERT INTO S_BRG
	VALUES (2157,
	2132,
	'get_day',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2158,
	2157,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2159,
	2157);
INSERT INTO ACT_ACT
	VALUES (2159,
	'bridge',
	0,
	2160,
	0,
	0,
	'Time::get_day',
	0);
INSERT INTO ACT_BLK
	VALUES (2160,
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
	2159,
	0);
INSERT INTO S_BRG
	VALUES (2161,
	2132,
	'get_month',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2162,
	2161,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2163,
	2161);
INSERT INTO ACT_ACT
	VALUES (2163,
	'bridge',
	0,
	2164,
	0,
	0,
	'Time::get_month',
	0);
INSERT INTO ACT_BLK
	VALUES (2164,
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
	2163,
	0);
INSERT INTO S_BRG
	VALUES (2165,
	2132,
	'get_year',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2166,
	2165,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2167,
	2165);
INSERT INTO ACT_ACT
	VALUES (2167,
	'bridge',
	0,
	2168,
	0,
	0,
	'Time::get_year',
	0);
INSERT INTO ACT_BLK
	VALUES (2168,
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
	2167,
	0);
INSERT INTO S_BRG
	VALUES (2169,
	2132,
	'current_clock',
	'',
	1,
	308,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (2170,
	2169);
INSERT INTO ACT_ACT
	VALUES (2170,
	'bridge',
	0,
	2171,
	0,
	0,
	'Time::current_clock',
	0);
INSERT INTO ACT_BLK
	VALUES (2171,
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
	2170,
	0);
INSERT INTO S_BRG
	VALUES (2172,
	2132,
	'timer_start',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Returns the instance
handle of the timer.',
	1,
	307,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2173,
	2172,
	'microseconds',
	188,
	0,
	'',
	2174,
	'');
INSERT INTO S_BPARM
	VALUES (2174,
	2172,
	'event_inst',
	302,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2175,
	2172);
INSERT INTO ACT_ACT
	VALUES (2175,
	'bridge',
	0,
	2176,
	0,
	0,
	'Time::timer_start',
	0);
INSERT INTO ACT_BLK
	VALUES (2176,
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
	2175,
	0);
INSERT INTO S_BRG
	VALUES (2177,
	2132,
	'timer_start_recurring',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Upon expiration, the
timer will be restarted and fire again in the specified number of microseconds
generating the passed event. This bridge operation returns the instance handle
of the timer.',
	1,
	307,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2178,
	2177,
	'microseconds',
	188,
	0,
	'',
	2179,
	'');
INSERT INTO S_BPARM
	VALUES (2179,
	2177,
	'event_inst',
	302,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2180,
	2177);
INSERT INTO ACT_ACT
	VALUES (2180,
	'bridge',
	0,
	2181,
	0,
	0,
	'Time::timer_start_recurring',
	0);
INSERT INTO ACT_BLK
	VALUES (2181,
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
	2180,
	0);
INSERT INTO S_BRG
	VALUES (2182,
	2132,
	'timer_remaining_time',
	'Returns the time remaining (in microseconds) for the passed timer instance. If
the timer has expired, a zero value is returned.',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2183,
	2182,
	'timer_inst_ref',
	307,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2184,
	2182);
INSERT INTO ACT_ACT
	VALUES (2184,
	'bridge',
	0,
	2185,
	0,
	0,
	'Time::timer_remaining_time',
	0);
INSERT INTO ACT_BLK
	VALUES (2185,
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
	2184,
	0);
INSERT INTO S_BRG
	VALUES (2186,
	2132,
	'timer_reset_time',
	'This bridge operation attempts to set the passed existing timer to expire in
the specified number of microseconds. If the timer exists (that is, it has not
expired), a TRUE value is returned. If the timer no longer exists, a FALSE value
is returned.',
	1,
	295,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2187,
	2186,
	'timer_inst_ref',
	307,
	0,
	'',
	2188,
	'');
INSERT INTO S_BPARM
	VALUES (2188,
	2186,
	'microseconds',
	188,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2189,
	2186);
INSERT INTO ACT_ACT
	VALUES (2189,
	'bridge',
	0,
	2190,
	0,
	0,
	'Time::timer_reset_time',
	0);
INSERT INTO ACT_BLK
	VALUES (2190,
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
	2189,
	0);
INSERT INTO S_BRG
	VALUES (2191,
	2132,
	'timer_add_time',
	'This bridge operation attempts to add the specified number of microseconds to a
passed existing timer. If the timer exists (that is, it has not expired), a TRUE
value is returned. If the timer no longer exists, a FALSE value is returned.',
	1,
	295,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2192,
	2191,
	'timer_inst_ref',
	307,
	0,
	'',
	2193,
	'');
INSERT INTO S_BPARM
	VALUES (2193,
	2191,
	'microseconds',
	188,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2194,
	2191);
INSERT INTO ACT_ACT
	VALUES (2194,
	'bridge',
	0,
	2195,
	0,
	0,
	'Time::timer_add_time',
	0);
INSERT INTO ACT_BLK
	VALUES (2195,
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
	2194,
	0);
INSERT INTO S_BRG
	VALUES (2196,
	2132,
	'timer_cancel',
	'This bridge operation cancels and deletes the passed timer instance. If the 
timer exists (that is, it had not expired), a TRUE value is returned. If the
timer no longer exists, a FALSE value is returned.',
	1,
	295,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2197,
	2196,
	'timer_inst_ref',
	307,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2198,
	2196);
INSERT INTO ACT_ACT
	VALUES (2198,
	'bridge',
	0,
	2199,
	0,
	0,
	'Time::timer_cancel',
	0);
INSERT INTO ACT_BLK
	VALUES (2199,
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
	2198,
	0);
INSERT INTO PE_PE
	VALUES (2200,
	1,
	2131,
	0,
	5);
INSERT INTO S_EE
	VALUES (2200,
	'Graphical User Interface',
	'',
	'GuiBridge',
	0,
	'',
	'Graphical User Interface',
	1);
INSERT INTO S_BRG
	VALUES (2201,
	2200,
	'feedSetTargetPressedEvent',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2202,
	2201,
	'evt',
	302,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2203,
	2201);
INSERT INTO ACT_ACT
	VALUES (2203,
	'bridge',
	0,
	2204,
	0,
	0,
	'Graphical User Interface::feedSetTargetPressedEvent',
	0);
INSERT INTO ACT_BLK
	VALUES (2204,
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
	2203,
	0);
INSERT INTO S_BRG
	VALUES (2205,
	2200,
	'feedModePressedEvent',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2206,
	2205,
	'evt',
	302,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2207,
	2205);
INSERT INTO ACT_ACT
	VALUES (2207,
	'bridge',
	0,
	2208,
	0,
	0,
	'Graphical User Interface::feedModePressedEvent',
	0);
INSERT INTO ACT_BLK
	VALUES (2208,
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
	2207,
	0);
INSERT INTO S_BRG
	VALUES (2209,
	2200,
	'feedLightPressedEvent',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2210,
	2209,
	'evt',
	302,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2211,
	2209);
INSERT INTO ACT_ACT
	VALUES (2211,
	'bridge',
	0,
	2212,
	0,
	0,
	'Graphical User Interface::feedLightPressedEvent',
	0);
INSERT INTO ACT_BLK
	VALUES (2212,
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
	2211,
	0);
INSERT INTO S_BRG
	VALUES (2213,
	2200,
	'feedLapResetPressedEvent',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2214,
	2213,
	'evt',
	302,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2215,
	2213);
INSERT INTO ACT_ACT
	VALUES (2215,
	'bridge',
	0,
	2216,
	0,
	0,
	'Graphical User Interface::feedLapResetPressedEvent',
	0);
INSERT INTO ACT_BLK
	VALUES (2216,
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
	2215,
	0);
INSERT INTO S_BRG
	VALUES (2217,
	2200,
	'feedStartStopPressedEvent',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2218,
	2217,
	'evt',
	302,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2219,
	2217);
INSERT INTO ACT_ACT
	VALUES (2219,
	'bridge',
	0,
	2220,
	0,
	0,
	'Graphical User Interface::feedStartStopPressedEvent',
	0);
INSERT INTO ACT_BLK
	VALUES (2220,
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
	2219,
	0);
INSERT INTO S_BRG
	VALUES (2016,
	2200,
	'setData',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2221,
	2016,
	'value',
	133,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2222,
	2016,
	'unit',
	188,
	0,
	'',
	2221,
	'');
INSERT INTO ACT_BRB
	VALUES (2223,
	2016);
INSERT INTO ACT_ACT
	VALUES (2223,
	'bridge',
	0,
	2224,
	0,
	0,
	'Graphical User Interface::setData',
	0);
INSERT INTO ACT_BLK
	VALUES (2224,
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
	2223,
	0);
INSERT INTO S_BRG
	VALUES (1948,
	2200,
	'setTime',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2225,
	1948,
	'time',
	188,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2226,
	1948);
INSERT INTO ACT_ACT
	VALUES (2226,
	'bridge',
	0,
	2227,
	0,
	0,
	'Graphical User Interface::setTime',
	0);
INSERT INTO ACT_BLK
	VALUES (2227,
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
	2226,
	0);
INSERT INTO S_BRG
	VALUES (2228,
	2200,
	'connect',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (2229,
	2228);
INSERT INTO ACT_ACT
	VALUES (2229,
	'bridge',
	0,
	2230,
	0,
	0,
	'Graphical User Interface::connect',
	0);
INSERT INTO ACT_BLK
	VALUES (2230,
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
	2229,
	0);
INSERT INTO S_BRG
	VALUES (2081,
	2200,
	'setIndicator',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2231,
	2081,
	'value',
	188,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2232,
	2081);
INSERT INTO ACT_ACT
	VALUES (2232,
	'bridge',
	0,
	2233,
	0,
	0,
	'Graphical User Interface::setIndicator',
	0);
INSERT INTO ACT_BLK
	VALUES (2233,
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
	2232,
	0);
INSERT INTO PE_PE
	VALUES (2234,
	1,
	2131,
	0,
	5);
INSERT INTO S_EE
	VALUES (2234,
	'Logging',
	'',
	'LOG',
	0,
	'',
	'Logging',
	1);
INSERT INTO S_BRG
	VALUES (2235,
	2234,
	'LogSuccess',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2236,
	2235,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2237,
	2235);
INSERT INTO ACT_ACT
	VALUES (2237,
	'bridge',
	0,
	2238,
	0,
	0,
	'Logging::LogSuccess',
	0);
INSERT INTO ACT_BLK
	VALUES (2238,
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
	2237,
	0);
INSERT INTO S_BRG
	VALUES (2239,
	2234,
	'LogFailure',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2240,
	2239,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2241,
	2239);
INSERT INTO ACT_ACT
	VALUES (2241,
	'bridge',
	0,
	2242,
	0,
	0,
	'Logging::LogFailure',
	0);
INSERT INTO ACT_BLK
	VALUES (2242,
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
	2241,
	0);
INSERT INTO S_BRG
	VALUES (2243,
	2234,
	'LogInfo',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2244,
	2243,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2245,
	2243);
INSERT INTO ACT_ACT
	VALUES (2245,
	'bridge',
	0,
	2246,
	0,
	0,
	'Logging::LogInfo',
	0);
INSERT INTO ACT_BLK
	VALUES (2246,
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
	2245,
	0);
INSERT INTO S_BRG
	VALUES (2247,
	2234,
	'LogDate',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2248,
	2247,
	'd',
	306,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2249,
	2247,
	'message',
	296,
	0,
	'',
	2248,
	'');
INSERT INTO ACT_BRB
	VALUES (2250,
	2247);
INSERT INTO ACT_ACT
	VALUES (2250,
	'bridge',
	0,
	2251,
	0,
	0,
	'Logging::LogDate',
	0);
INSERT INTO ACT_BLK
	VALUES (2251,
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
	2250,
	0);
INSERT INTO S_BRG
	VALUES (2252,
	2234,
	'LogTime',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2253,
	2252,
	't',
	308,
	0,
	'',
	2254,
	'');
INSERT INTO S_BPARM
	VALUES (2254,
	2252,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2255,
	2252);
INSERT INTO ACT_ACT
	VALUES (2255,
	'bridge',
	0,
	2256,
	0,
	0,
	'Logging::LogTime',
	0);
INSERT INTO ACT_BLK
	VALUES (2256,
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
	2255,
	0);
INSERT INTO S_BRG
	VALUES (2257,
	2234,
	'LogReal',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2258,
	2257,
	'r',
	133,
	0,
	'',
	2259,
	'');
INSERT INTO S_BPARM
	VALUES (2259,
	2257,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2260,
	2257);
INSERT INTO ACT_ACT
	VALUES (2260,
	'bridge',
	0,
	2261,
	0,
	0,
	'Logging::LogReal',
	0);
INSERT INTO ACT_BLK
	VALUES (2261,
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
	2260,
	0);
INSERT INTO S_BRG
	VALUES (2262,
	2234,
	'LogInteger',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2263,
	2262,
	'message',
	188,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2264,
	2262);
INSERT INTO ACT_ACT
	VALUES (2264,
	'bridge',
	0,
	2265,
	0,
	0,
	'Logging::LogInteger',
	0);
INSERT INTO ACT_BLK
	VALUES (2265,
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
	2264,
	0);
INSERT INTO PE_PE
	VALUES (2266,
	1,
	2131,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (2266,
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
	294,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (2267,
	2266);
INSERT INTO ACT_ACT
	VALUES (2267,
	'function',
	0,
	2268,
	0,
	0,
	'createGoals_1',
	0);
INSERT INTO ACT_BLK
	VALUES (2268,
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
	2267,
	0);
INSERT INTO ACT_SMT
	VALUES (2269,
	2268,
	2270,
	2,
	1,
	'createGoals_1 line: 2');
INSERT INTO ACT_IOP
	VALUES (2269,
	2,
	16,
	2,
	6,
	0,
	2104,
	0);
INSERT INTO ACT_SMT
	VALUES (2270,
	2268,
	2271,
	10,
	1,
	'createGoals_1 line: 10');
INSERT INTO ACT_IOP
	VALUES (2270,
	10,
	16,
	10,
	6,
	0,
	2104,
	0);
INSERT INTO ACT_SMT
	VALUES (2271,
	2268,
	2272,
	18,
	1,
	'createGoals_1 line: 18');
INSERT INTO ACT_IOP
	VALUES (2271,
	18,
	16,
	18,
	6,
	0,
	2104,
	0);
INSERT INTO ACT_SMT
	VALUES (2272,
	2268,
	0,
	26,
	1,
	'createGoals_1 line: 26');
INSERT INTO ACT_IOP
	VALUES (2272,
	26,
	16,
	26,
	6,
	0,
	2104,
	0);
INSERT INTO V_VAL
	VALUES (2273,
	0,
	0,
	3,
	19,
	19,
	0,
	0,
	0,
	0,
	188,
	2268);
INSERT INTO V_LIN
	VALUES (2273,
	'1');
INSERT INTO V_PAR
	VALUES (2273,
	2269,
	0,
	'sequenceNumber',
	2274,
	3,
	3);
INSERT INTO V_VAL
	VALUES (2274,
	0,
	0,
	4,
	12,
	14,
	0,
	0,
	0,
	0,
	133,
	2268);
INSERT INTO V_LRL
	VALUES (2274,
	'2.0');
INSERT INTO V_PAR
	VALUES (2274,
	2269,
	0,
	'minimum',
	2275,
	4,
	3);
INSERT INTO V_VAL
	VALUES (2275,
	0,
	0,
	5,
	12,
	14,
	0,
	0,
	0,
	0,
	133,
	2268);
INSERT INTO V_LRL
	VALUES (2275,
	'8.0');
INSERT INTO V_PAR
	VALUES (2275,
	2269,
	0,
	'maximum',
	2276,
	5,
	3);
INSERT INTO V_VAL
	VALUES (2276,
	0,
	0,
	6,
	9,
	13,
	0,
	0,
	0,
	0,
	133,
	2268);
INSERT INTO V_LRL
	VALUES (2276,
	'150.0');
INSERT INTO V_PAR
	VALUES (2276,
	2269,
	0,
	'span',
	2277,
	6,
	3);
INSERT INTO V_VAL
	VALUES (2277,
	0,
	0,
	7,
	31,
	34,
	0,
	0,
	0,
	0,
	204,
	2268);
INSERT INTO V_LEN
	VALUES (2277,
	622,
	7,
	17);
INSERT INTO V_PAR
	VALUES (2277,
	2269,
	0,
	'criteriaType',
	2278,
	7,
	3);
INSERT INTO V_VAL
	VALUES (2278,
	0,
	0,
	8,
	23,
	30,
	0,
	0,
	0,
	0,
	207,
	2268);
INSERT INTO V_LEN
	VALUES (2278,
	624,
	8,
	13);
INSERT INTO V_PAR
	VALUES (2278,
	2269,
	0,
	'spanType',
	0,
	8,
	3);
INSERT INTO V_VAL
	VALUES (2279,
	0,
	0,
	11,
	19,
	19,
	0,
	0,
	0,
	0,
	188,
	2268);
INSERT INTO V_LIN
	VALUES (2279,
	'2');
INSERT INTO V_PAR
	VALUES (2279,
	2270,
	0,
	'sequenceNumber',
	2280,
	11,
	3);
INSERT INTO V_VAL
	VALUES (2280,
	0,
	0,
	12,
	12,
	15,
	0,
	0,
	0,
	0,
	133,
	2268);
INSERT INTO V_LRL
	VALUES (2280,
	'60.0');
INSERT INTO V_PAR
	VALUES (2280,
	2270,
	0,
	'minimum',
	2281,
	12,
	3);
INSERT INTO V_VAL
	VALUES (2281,
	0,
	0,
	13,
	12,
	15,
	0,
	0,
	0,
	0,
	133,
	2268);
INSERT INTO V_LRL
	VALUES (2281,
	'80.0');
INSERT INTO V_PAR
	VALUES (2281,
	2270,
	0,
	'maximum',
	2282,
	13,
	3);
INSERT INTO V_VAL
	VALUES (2282,
	0,
	0,
	14,
	9,
	10,
	0,
	0,
	0,
	0,
	188,
	2268);
INSERT INTO V_LIN
	VALUES (2282,
	'10');
INSERT INTO V_PAR
	VALUES (2282,
	2270,
	0,
	'span',
	2283,
	14,
	3);
INSERT INTO V_VAL
	VALUES (2283,
	0,
	0,
	15,
	31,
	39,
	0,
	0,
	0,
	0,
	204,
	2268);
INSERT INTO V_LEN
	VALUES (2283,
	630,
	15,
	17);
INSERT INTO V_PAR
	VALUES (2283,
	2270,
	0,
	'criteriaType',
	2284,
	15,
	3);
INSERT INTO V_VAL
	VALUES (2284,
	0,
	0,
	16,
	23,
	26,
	0,
	0,
	0,
	0,
	207,
	2268);
INSERT INTO V_LEN
	VALUES (2284,
	632,
	16,
	13);
INSERT INTO V_PAR
	VALUES (2284,
	2270,
	0,
	'spanType',
	0,
	16,
	3);
INSERT INTO V_VAL
	VALUES (2285,
	0,
	0,
	19,
	19,
	19,
	0,
	0,
	0,
	0,
	188,
	2268);
INSERT INTO V_LIN
	VALUES (2285,
	'3');
INSERT INTO V_PAR
	VALUES (2285,
	2271,
	0,
	'sequenceNumber',
	2286,
	19,
	3);
INSERT INTO V_VAL
	VALUES (2286,
	0,
	0,
	20,
	12,
	14,
	0,
	0,
	0,
	0,
	133,
	2268);
INSERT INTO V_LRL
	VALUES (2286,
	'5.0');
INSERT INTO V_PAR
	VALUES (2286,
	2271,
	0,
	'minimum',
	2287,
	20,
	3);
INSERT INTO V_VAL
	VALUES (2287,
	0,
	0,
	21,
	12,
	14,
	0,
	0,
	0,
	0,
	133,
	2268);
INSERT INTO V_LRL
	VALUES (2287,
	'6.0');
INSERT INTO V_PAR
	VALUES (2287,
	2271,
	0,
	'maximum',
	2288,
	21,
	3);
INSERT INTO V_VAL
	VALUES (2288,
	0,
	0,
	22,
	9,
	10,
	0,
	0,
	0,
	0,
	188,
	2268);
INSERT INTO V_LIN
	VALUES (2288,
	'15');
INSERT INTO V_PAR
	VALUES (2288,
	2271,
	0,
	'span',
	2289,
	22,
	3);
INSERT INTO V_VAL
	VALUES (2289,
	0,
	0,
	23,
	31,
	34,
	0,
	0,
	0,
	0,
	204,
	2268);
INSERT INTO V_LEN
	VALUES (2289,
	622,
	23,
	17);
INSERT INTO V_PAR
	VALUES (2289,
	2271,
	0,
	'criteriaType',
	2290,
	23,
	3);
INSERT INTO V_VAL
	VALUES (2290,
	0,
	0,
	24,
	23,
	26,
	0,
	0,
	0,
	0,
	207,
	2268);
INSERT INTO V_LEN
	VALUES (2290,
	632,
	24,
	13);
INSERT INTO V_PAR
	VALUES (2290,
	2271,
	0,
	'spanType',
	0,
	24,
	3);
INSERT INTO V_VAL
	VALUES (2291,
	0,
	0,
	27,
	19,
	19,
	0,
	0,
	0,
	0,
	188,
	2268);
INSERT INTO V_LIN
	VALUES (2291,
	'4');
INSERT INTO V_PAR
	VALUES (2291,
	2272,
	0,
	'sequenceNumber',
	2292,
	27,
	3);
INSERT INTO V_VAL
	VALUES (2292,
	0,
	0,
	28,
	12,
	14,
	0,
	0,
	0,
	0,
	133,
	2268);
INSERT INTO V_LRL
	VALUES (2292,
	'1.0');
INSERT INTO V_PAR
	VALUES (2292,
	2272,
	0,
	'minimum',
	2293,
	28,
	3);
INSERT INTO V_VAL
	VALUES (2293,
	0,
	0,
	29,
	12,
	14,
	0,
	0,
	0,
	0,
	133,
	2268);
INSERT INTO V_LRL
	VALUES (2293,
	'2.0');
INSERT INTO V_PAR
	VALUES (2293,
	2272,
	0,
	'maximum',
	2294,
	29,
	3);
INSERT INTO V_VAL
	VALUES (2294,
	0,
	0,
	30,
	9,
	10,
	0,
	0,
	0,
	0,
	188,
	2268);
INSERT INTO V_LIN
	VALUES (2294,
	'15');
INSERT INTO V_PAR
	VALUES (2294,
	2272,
	0,
	'span',
	2295,
	30,
	3);
INSERT INTO V_VAL
	VALUES (2295,
	0,
	0,
	31,
	31,
	34,
	0,
	0,
	0,
	0,
	204,
	2268);
INSERT INTO V_LEN
	VALUES (2295,
	622,
	31,
	17);
INSERT INTO V_PAR
	VALUES (2295,
	2272,
	0,
	'criteriaType',
	2296,
	31,
	3);
INSERT INTO V_VAL
	VALUES (2296,
	0,
	0,
	32,
	23,
	26,
	0,
	0,
	0,
	0,
	207,
	2268);
INSERT INTO V_LEN
	VALUES (2296,
	632,
	32,
	13);
INSERT INTO V_PAR
	VALUES (2296,
	2272,
	0,
	'spanType',
	0,
	32,
	3);
INSERT INTO PE_PE
	VALUES (2297,
	1,
	2131,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (2297,
	0,
	'init',
	'',
	'GuiBridge::connect();',
	294,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (2298,
	2297);
INSERT INTO ACT_ACT
	VALUES (2298,
	'function',
	0,
	2299,
	0,
	0,
	'init',
	0);
INSERT INTO ACT_BLK
	VALUES (2299,
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
	2298,
	0);
INSERT INTO ACT_SMT
	VALUES (2300,
	2299,
	0,
	1,
	1,
	'init line: 1');
INSERT INTO ACT_BRG
	VALUES (2300,
	2228,
	1,
	12,
	1,
	1);
INSERT INTO PE_PE
	VALUES (2301,
	1,
	2131,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (2301,
	0,
	'RunTestCase',
	'',
	'TestCase::execute();',
	294,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (2302,
	2301);
INSERT INTO ACT_ACT
	VALUES (2302,
	'function',
	0,
	2303,
	0,
	0,
	'RunTestCase',
	0);
INSERT INTO ACT_BLK
	VALUES (2303,
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
	2302,
	0);
INSERT INTO ACT_SMT
	VALUES (2304,
	2303,
	0,
	1,
	1,
	'RunTestCase line: 1');
INSERT INTO ACT_TFM
	VALUES (2304,
	2305,
	0,
	1,
	11,
	1,
	1);
INSERT INTO PE_PE
	VALUES (2306,
	1,
	2131,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (2306,
	'TestCase',
	2,
	'TestCase',
	'Represents a very simple automated test case.',
	0);
INSERT INTO O_TFR
	VALUES (2305,
	2306,
	'execute',
	'',
	294,
	0,
	'generate TestCase2:start(iterations: 2) to TestCase creator;',
	1,
	'',
	0);
INSERT INTO ACT_OPB
	VALUES (2307,
	2305);
INSERT INTO ACT_ACT
	VALUES (2307,
	'class operation',
	0,
	2308,
	0,
	0,
	'TestCase::execute',
	0);
INSERT INTO ACT_BLK
	VALUES (2308,
	0,
	0,
	0,
	'',
	'iterations',
	'iterations',
	1,
	1,
	1,
	44,
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
INSERT INTO ACT_SMT
	VALUES (2309,
	2308,
	0,
	1,
	1,
	'TestCase::execute line: 1');
INSERT INTO E_ESS
	VALUES (2309,
	1,
	0,
	1,
	10,
	1,
	20,
	1,
	44,
	1,
	26,
	0,
	0);
INSERT INTO V_PAR
	VALUES (2310,
	2309,
	0,
	'iterations',
	0,
	1,
	26);
INSERT INTO E_GES
	VALUES (2309);
INSERT INTO E_GSME
	VALUES (2309,
	2055);
INSERT INTO E_GEC
	VALUES (2309);
INSERT INTO V_VAL
	VALUES (2310,
	0,
	0,
	1,
	38,
	38,
	0,
	0,
	0,
	0,
	188,
	2308);
INSERT INTO V_LIN
	VALUES (2310,
	'2');
INSERT INTO O_NBATTR
	VALUES (2311,
	2306);
INSERT INTO O_BATTR
	VALUES (2311,
	2306);
INSERT INTO O_ATTR
	VALUES (2311,
	2306,
	0,
	'current_state',
	'',
	'',
	'current_state',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2312,
	2306);
INSERT INTO O_BATTR
	VALUES (2312,
	2306);
INSERT INTO O_ATTR
	VALUES (2312,
	2306,
	2311,
	'iterations',
	'',
	'',
	'iterations',
	0,
	188,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2306);
INSERT INTO O_ID
	VALUES (1,
	2306);
INSERT INTO O_ID
	VALUES (2,
	2306);
INSERT INTO SM_ISM
	VALUES (2313,
	2306);
INSERT INTO SM_SM
	VALUES (2313,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (2313);
INSERT INTO SM_EVTDI
	VALUES (2314,
	2313,
	'iterations',
	'',
	188,
	'',
	2055,
	0);
INSERT INTO SM_LEVT
	VALUES (2315,
	2313,
	0);
INSERT INTO SM_SEVT
	VALUES (2315,
	2313,
	0);
INSERT INTO SM_EVT
	VALUES (2315,
	2313,
	0,
	1,
	'delay',
	0,
	'',
	'TestCase1',
	'');
INSERT INTO SM_LEVT
	VALUES (2055,
	2313,
	0);
INSERT INTO SM_SEVT
	VALUES (2055,
	2313,
	0);
INSERT INTO SM_EVT
	VALUES (2055,
	2313,
	0,
	2,
	'start',
	0,
	'',
	'TestCase2',
	'');
INSERT INTO SM_LEVT
	VALUES (2316,
	2313,
	0);
INSERT INTO SM_SEVT
	VALUES (2316,
	2313,
	0);
INSERT INTO SM_EVT
	VALUES (2316,
	2313,
	0,
	3,
	'finish',
	0,
	'',
	'TestCase3',
	'');
INSERT INTO SM_STATE
	VALUES (2317,
	2313,
	0,
	'pressStartStop',
	2,
	0);
INSERT INTO SM_SEME
	VALUES (2317,
	2315,
	2313,
	0);
INSERT INTO SM_CH
	VALUES (2317,
	2055,
	2313,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2317,
	2055,
	2313,
	0);
INSERT INTO SM_SEME
	VALUES (2317,
	2316,
	2313,
	0);
INSERT INTO SM_MOAH
	VALUES (2318,
	2313,
	2317);
INSERT INTO SM_AH
	VALUES (2318,
	2313);
INSERT INTO SM_ACT
	VALUES (2318,
	2313,
	1,
	'if (self.iterations > 0)
  self.iterations = self.iterations - 1;
  create event instance evt of TestCase1 to self;
  handle = TIM::timer_start(event_inst: evt, microseconds: 4000000);
  send Tracking::startStopPressed();
else
  generate TestCase3:finish to self;
  send Tracking::lapResetPressed();
end if;',
	'');
INSERT INTO ACT_SAB
	VALUES (2319,
	2313,
	2318);
INSERT INTO ACT_ACT
	VALUES (2319,
	'state',
	0,
	2320,
	0,
	0,
	'TestCase::pressStartStop',
	0);
INSERT INTO ACT_BLK
	VALUES (2320,
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
	2319,
	0);
INSERT INTO ACT_SMT
	VALUES (2321,
	2320,
	0,
	1,
	1,
	'TestCase::pressStartStop line: 1');
INSERT INTO ACT_IF
	VALUES (2321,
	2322,
	2323,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2324,
	2320,
	0,
	6,
	1,
	'TestCase::pressStartStop line: 6');
INSERT INTO ACT_E
	VALUES (2324,
	2325,
	2321);
INSERT INTO V_VAL
	VALUES (2326,
	0,
	0,
	1,
	5,
	8,
	0,
	0,
	0,
	0,
	300,
	2320);
INSERT INTO V_IRF
	VALUES (2326,
	2327);
INSERT INTO V_VAL
	VALUES (2328,
	0,
	0,
	1,
	10,
	19,
	0,
	0,
	0,
	0,
	188,
	2320);
INSERT INTO V_AVL
	VALUES (2328,
	2326,
	2306,
	2312);
INSERT INTO V_VAL
	VALUES (2323,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	2320);
INSERT INTO V_BIN
	VALUES (2323,
	2329,
	2328,
	'>');
INSERT INTO V_VAL
	VALUES (2329,
	0,
	0,
	1,
	23,
	23,
	0,
	0,
	0,
	0,
	188,
	2320);
INSERT INTO V_LIN
	VALUES (2329,
	'0');
INSERT INTO V_VAR
	VALUES (2327,
	2320,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (2327,
	0,
	2306);
INSERT INTO ACT_BLK
	VALUES (2322,
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
	2319,
	0);
INSERT INTO ACT_SMT
	VALUES (2330,
	2322,
	2331,
	2,
	3,
	'TestCase::pressStartStop line: 2');
INSERT INTO ACT_AI
	VALUES (2330,
	2332,
	2333,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2331,
	2322,
	2334,
	3,
	3,
	'TestCase::pressStartStop line: 3');
INSERT INTO E_ESS
	VALUES (2331,
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
	VALUES (2331,
	1,
	2335);
INSERT INTO E_CSME
	VALUES (2331,
	2315);
INSERT INTO E_CEI
	VALUES (2331,
	2327);
INSERT INTO ACT_SMT
	VALUES (2334,
	2322,
	2336,
	4,
	3,
	'TestCase::pressStartStop line: 4');
INSERT INTO ACT_AI
	VALUES (2334,
	2337,
	2338,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2336,
	2322,
	0,
	5,
	3,
	'TestCase::pressStartStop line: 5');
INSERT INTO ACT_IOP
	VALUES (2336,
	5,
	18,
	5,
	8,
	0,
	2095,
	0);
INSERT INTO V_VAL
	VALUES (2339,
	1,
	0,
	2,
	3,
	6,
	0,
	0,
	0,
	0,
	300,
	2322);
INSERT INTO V_IRF
	VALUES (2339,
	2327);
INSERT INTO V_VAL
	VALUES (2333,
	1,
	0,
	2,
	8,
	17,
	0,
	0,
	0,
	0,
	188,
	2322);
INSERT INTO V_AVL
	VALUES (2333,
	2339,
	2306,
	2312);
INSERT INTO V_VAL
	VALUES (2340,
	0,
	0,
	2,
	21,
	24,
	0,
	0,
	0,
	0,
	300,
	2322);
INSERT INTO V_IRF
	VALUES (2340,
	2327);
INSERT INTO V_VAL
	VALUES (2341,
	0,
	0,
	2,
	26,
	35,
	0,
	0,
	0,
	0,
	188,
	2322);
INSERT INTO V_AVL
	VALUES (2341,
	2340,
	2306,
	2312);
INSERT INTO V_VAL
	VALUES (2332,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	188,
	2322);
INSERT INTO V_BIN
	VALUES (2332,
	2342,
	2341,
	'-');
INSERT INTO V_VAL
	VALUES (2342,
	0,
	0,
	2,
	39,
	39,
	0,
	0,
	0,
	0,
	188,
	2322);
INSERT INTO V_LIN
	VALUES (2342,
	'1');
INSERT INTO V_VAL
	VALUES (2338,
	1,
	1,
	4,
	3,
	8,
	0,
	0,
	0,
	0,
	307,
	2322);
INSERT INTO V_TVL
	VALUES (2338,
	2343);
INSERT INTO V_VAL
	VALUES (2337,
	0,
	0,
	4,
	17,
	-1,
	4,
	29,
	4,
	46,
	307,
	2322);
INSERT INTO V_BRV
	VALUES (2337,
	2172,
	1,
	4,
	12);
INSERT INTO V_VAL
	VALUES (2344,
	0,
	0,
	4,
	41,
	43,
	0,
	0,
	0,
	0,
	302,
	2322);
INSERT INTO V_TVL
	VALUES (2344,
	2335);
INSERT INTO V_PAR
	VALUES (2344,
	0,
	2337,
	'event_inst',
	2345,
	4,
	29);
INSERT INTO V_VAL
	VALUES (2345,
	0,
	0,
	4,
	60,
	66,
	0,
	0,
	0,
	0,
	188,
	2322);
INSERT INTO V_LIN
	VALUES (2345,
	'4000000');
INSERT INTO V_PAR
	VALUES (2345,
	0,
	2337,
	'microseconds',
	0,
	4,
	46);
INSERT INTO V_VAR
	VALUES (2335,
	2322,
	'evt',
	1,
	302);
INSERT INTO V_TRN
	VALUES (2335,
	0,
	'');
INSERT INTO V_VAR
	VALUES (2343,
	2322,
	'handle',
	1,
	307);
INSERT INTO V_TRN
	VALUES (2343,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (2325,
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
	2319,
	0);
INSERT INTO ACT_SMT
	VALUES (2346,
	2325,
	2347,
	7,
	3,
	'TestCase::pressStartStop line: 7');
INSERT INTO E_ESS
	VALUES (2346,
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
	VALUES (2346);
INSERT INTO E_GSME
	VALUES (2346,
	2316);
INSERT INTO E_GEN
	VALUES (2346,
	2327);
INSERT INTO ACT_SMT
	VALUES (2347,
	2325,
	0,
	8,
	3,
	'TestCase::pressStartStop line: 8');
INSERT INTO ACT_IOP
	VALUES (2347,
	8,
	18,
	8,
	8,
	0,
	2098,
	0);
INSERT INTO SM_STATE
	VALUES (2348,
	2313,
	0,
	'testCaseFinished',
	3,
	1);
INSERT INTO SM_CH
	VALUES (2348,
	2315,
	2313,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2348,
	2315,
	2313,
	0);
INSERT INTO SM_CH
	VALUES (2348,
	2055,
	2313,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2348,
	2055,
	2313,
	0);
INSERT INTO SM_CH
	VALUES (2348,
	2316,
	2313,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2348,
	2316,
	2313,
	0);
INSERT INTO SM_MOAH
	VALUES (2349,
	2313,
	2348);
INSERT INTO SM_AH
	VALUES (2349,
	2313);
INSERT INTO SM_ACT
	VALUES (2349,
	2313,
	1,
	'LOG::LogInfo(message: "End of test case"); ',
	'');
INSERT INTO ACT_SAB
	VALUES (2350,
	2313,
	2349);
INSERT INTO ACT_ACT
	VALUES (2350,
	'state',
	0,
	2351,
	0,
	0,
	'TestCase::testCaseFinished',
	0);
INSERT INTO ACT_BLK
	VALUES (2351,
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
	2350,
	0);
INSERT INTO ACT_SMT
	VALUES (2352,
	2351,
	0,
	1,
	1,
	'TestCase::testCaseFinished line: 1');
INSERT INTO ACT_BRG
	VALUES (2352,
	2243,
	1,
	6,
	1,
	1);
INSERT INTO V_VAL
	VALUES (2353,
	0,
	0,
	1,
	23,
	39,
	0,
	0,
	0,
	0,
	296,
	2351);
INSERT INTO V_LST
	VALUES (2353,
	'End of test case');
INSERT INTO V_PAR
	VALUES (2353,
	2352,
	0,
	'message',
	0,
	1,
	14);
INSERT INTO SM_NSTXN
	VALUES (2354,
	2313,
	2317,
	2315,
	0);
INSERT INTO SM_TAH
	VALUES (2355,
	2313,
	2354);
INSERT INTO SM_AH
	VALUES (2355,
	2313);
INSERT INTO SM_ACT
	VALUES (2355,
	2313,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2356,
	2313,
	2355);
INSERT INTO ACT_ACT
	VALUES (2356,
	'transition',
	0,
	2357,
	0,
	0,
	'TestCase1: delay',
	0);
INSERT INTO ACT_BLK
	VALUES (2357,
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
	2356,
	0);
INSERT INTO SM_TXN
	VALUES (2354,
	2313,
	2317,
	0);
INSERT INTO SM_CRTXN
	VALUES (2358,
	2313,
	2055,
	0);
INSERT INTO SM_TAH
	VALUES (2359,
	2313,
	2358);
INSERT INTO SM_AH
	VALUES (2359,
	2313);
INSERT INTO SM_ACT
	VALUES (2359,
	2313,
	1,
	'LOG::LogInfo(message: "Start of test case"); 
self.iterations = rcvd_evt.iterations * 2;',
	'');
INSERT INTO ACT_TAB
	VALUES (2360,
	2313,
	2359);
INSERT INTO ACT_ACT
	VALUES (2360,
	'transition',
	0,
	2361,
	0,
	0,
	'TestCase2: start(iterations)',
	0);
INSERT INTO ACT_BLK
	VALUES (2361,
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
	2360,
	0);
INSERT INTO ACT_SMT
	VALUES (2362,
	2361,
	2363,
	1,
	1,
	'TestCase2: start(iterations) line: 1');
INSERT INTO ACT_BRG
	VALUES (2362,
	2243,
	1,
	6,
	1,
	1);
INSERT INTO ACT_SMT
	VALUES (2363,
	2361,
	0,
	2,
	1,
	'TestCase2: start(iterations) line: 2');
INSERT INTO ACT_AI
	VALUES (2363,
	2364,
	2365,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2366,
	0,
	0,
	1,
	23,
	41,
	0,
	0,
	0,
	0,
	296,
	2361);
INSERT INTO V_LST
	VALUES (2366,
	'Start of test case');
INSERT INTO V_PAR
	VALUES (2366,
	2362,
	0,
	'message',
	0,
	1,
	14);
INSERT INTO V_VAL
	VALUES (2367,
	1,
	0,
	2,
	1,
	4,
	0,
	0,
	0,
	0,
	300,
	2361);
INSERT INTO V_IRF
	VALUES (2367,
	2368);
INSERT INTO V_VAL
	VALUES (2365,
	1,
	0,
	2,
	6,
	15,
	0,
	0,
	0,
	0,
	188,
	2361);
INSERT INTO V_AVL
	VALUES (2365,
	2367,
	2306,
	2312);
INSERT INTO V_VAL
	VALUES (2369,
	0,
	0,
	2,
	28,
	37,
	0,
	0,
	0,
	0,
	188,
	2361);
INSERT INTO V_EDV
	VALUES (2369);
INSERT INTO V_EPR
	VALUES (2369,
	2313,
	2314,
	0);
INSERT INTO V_VAL
	VALUES (2364,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	188,
	2361);
INSERT INTO V_BIN
	VALUES (2364,
	2370,
	2369,
	'*');
INSERT INTO V_VAL
	VALUES (2370,
	0,
	0,
	2,
	41,
	41,
	0,
	0,
	0,
	0,
	188,
	2361);
INSERT INTO V_LIN
	VALUES (2370,
	'2');
INSERT INTO V_VAR
	VALUES (2368,
	2361,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (2368,
	0,
	2306);
INSERT INTO SM_TXN
	VALUES (2358,
	2313,
	2317,
	0);
INSERT INTO SM_NSTXN
	VALUES (2371,
	2313,
	2317,
	2316,
	0);
INSERT INTO SM_TAH
	VALUES (2372,
	2313,
	2371);
INSERT INTO SM_AH
	VALUES (2372,
	2313);
INSERT INTO SM_ACT
	VALUES (2372,
	2313,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2373,
	2313,
	2372);
INSERT INTO ACT_ACT
	VALUES (2373,
	'transition',
	0,
	2374,
	0,
	0,
	'TestCase3: finish',
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
INSERT INTO SM_TXN
	VALUES (2371,
	2313,
	2348,
	0);
INSERT INTO PE_PE
	VALUES (2375,
	1,
	2131,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (2375,
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
	VALUES (2376,
	2375,
	'connect',
	'',
	294,
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
	VALUES (2377,
	2376);
INSERT INTO ACT_ACT
	VALUES (2377,
	'class operation',
	0,
	2378,
	0,
	0,
	'UI::connect',
	0);
INSERT INTO ACT_BLK
	VALUES (2378,
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
	2377,
	0);
INSERT INTO ACT_SMT
	VALUES (2379,
	2378,
	2380,
	1,
	1,
	'UI::connect line: 1');
INSERT INTO ACT_BRG
	VALUES (2379,
	2228,
	1,
	12,
	1,
	1);
INSERT INTO ACT_SMT
	VALUES (2380,
	2378,
	2381,
	3,
	1,
	'UI::connect line: 3');
INSERT INTO E_ESS
	VALUES (2380,
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
	VALUES (2380,
	1,
	2382);
INSERT INTO E_CSME
	VALUES (2380,
	2383);
INSERT INTO E_CEA
	VALUES (2380);
INSERT INTO ACT_SMT
	VALUES (2381,
	2378,
	2384,
	4,
	1,
	'UI::connect line: 4');
INSERT INTO ACT_BRG
	VALUES (2381,
	2201,
	4,
	12,
	4,
	1);
INSERT INTO ACT_SMT
	VALUES (2384,
	2378,
	2385,
	6,
	1,
	'UI::connect line: 6');
INSERT INTO E_ESS
	VALUES (2384,
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
	VALUES (2384,
	0,
	2382);
INSERT INTO E_CSME
	VALUES (2384,
	2386);
INSERT INTO E_CEA
	VALUES (2384);
INSERT INTO ACT_SMT
	VALUES (2385,
	2378,
	2387,
	7,
	1,
	'UI::connect line: 7');
INSERT INTO ACT_BRG
	VALUES (2385,
	2217,
	7,
	12,
	7,
	1);
INSERT INTO ACT_SMT
	VALUES (2387,
	2378,
	2388,
	9,
	1,
	'UI::connect line: 9');
INSERT INTO E_ESS
	VALUES (2387,
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
	VALUES (2387,
	0,
	2382);
INSERT INTO E_CSME
	VALUES (2387,
	2389);
INSERT INTO E_CEA
	VALUES (2387);
INSERT INTO ACT_SMT
	VALUES (2388,
	2378,
	2390,
	10,
	1,
	'UI::connect line: 10');
INSERT INTO ACT_BRG
	VALUES (2388,
	2213,
	10,
	12,
	10,
	1);
INSERT INTO ACT_SMT
	VALUES (2390,
	2378,
	2391,
	12,
	1,
	'UI::connect line: 12');
INSERT INTO E_ESS
	VALUES (2390,
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
	VALUES (2390,
	0,
	2382);
INSERT INTO E_CSME
	VALUES (2390,
	2392);
INSERT INTO E_CEA
	VALUES (2390);
INSERT INTO ACT_SMT
	VALUES (2391,
	2378,
	2393,
	13,
	1,
	'UI::connect line: 13');
INSERT INTO ACT_BRG
	VALUES (2391,
	2209,
	13,
	12,
	13,
	1);
INSERT INTO ACT_SMT
	VALUES (2393,
	2378,
	2394,
	15,
	1,
	'UI::connect line: 15');
INSERT INTO E_ESS
	VALUES (2393,
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
	VALUES (2393,
	0,
	2382);
INSERT INTO E_CSME
	VALUES (2393,
	2395);
INSERT INTO E_CEA
	VALUES (2393);
INSERT INTO ACT_SMT
	VALUES (2394,
	2378,
	0,
	16,
	1,
	'UI::connect line: 16');
INSERT INTO ACT_BRG
	VALUES (2394,
	2205,
	16,
	12,
	16,
	1);
INSERT INTO V_VAL
	VALUES (2396,
	0,
	0,
	4,
	43,
	45,
	0,
	0,
	0,
	0,
	302,
	2378);
INSERT INTO V_TVL
	VALUES (2396,
	2382);
INSERT INTO V_PAR
	VALUES (2396,
	2381,
	0,
	'evt',
	0,
	4,
	38);
INSERT INTO V_VAL
	VALUES (2397,
	0,
	0,
	7,
	43,
	45,
	0,
	0,
	0,
	0,
	302,
	2378);
INSERT INTO V_TVL
	VALUES (2397,
	2382);
INSERT INTO V_PAR
	VALUES (2397,
	2385,
	0,
	'evt',
	0,
	7,
	38);
INSERT INTO V_VAL
	VALUES (2398,
	0,
	0,
	10,
	42,
	44,
	0,
	0,
	0,
	0,
	302,
	2378);
INSERT INTO V_TVL
	VALUES (2398,
	2382);
INSERT INTO V_PAR
	VALUES (2398,
	2388,
	0,
	'evt',
	0,
	10,
	37);
INSERT INTO V_VAL
	VALUES (2399,
	0,
	0,
	13,
	39,
	41,
	0,
	0,
	0,
	0,
	302,
	2378);
INSERT INTO V_TVL
	VALUES (2399,
	2382);
INSERT INTO V_PAR
	VALUES (2399,
	2391,
	0,
	'evt',
	0,
	13,
	34);
INSERT INTO V_VAL
	VALUES (2400,
	0,
	0,
	16,
	38,
	40,
	0,
	0,
	0,
	0,
	302,
	2378);
INSERT INTO V_TVL
	VALUES (2400,
	2382);
INSERT INTO V_PAR
	VALUES (2400,
	2394,
	0,
	'evt',
	0,
	16,
	33);
INSERT INTO V_VAR
	VALUES (2382,
	2378,
	'evt',
	1,
	302);
INSERT INTO V_TRN
	VALUES (2382,
	0,
	'');
INSERT INTO O_ID
	VALUES (0,
	2375);
INSERT INTO O_ID
	VALUES (1,
	2375);
INSERT INTO O_ID
	VALUES (2,
	2375);
INSERT INTO SM_ASM
	VALUES (2401,
	2375);
INSERT INTO SM_SM
	VALUES (2401,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (2401);
INSERT INTO SM_LEVT
	VALUES (2383,
	2401,
	0);
INSERT INTO SM_SEVT
	VALUES (2383,
	2401,
	0);
INSERT INTO SM_EVT
	VALUES (2383,
	2401,
	0,
	3,
	'setTargetPressed',
	0,
	'',
	'UI_A3',
	'');
INSERT INTO SM_LEVT
	VALUES (2386,
	2401,
	0);
INSERT INTO SM_SEVT
	VALUES (2386,
	2401,
	0);
INSERT INTO SM_EVT
	VALUES (2386,
	2401,
	0,
	4,
	'startStopPressed',
	0,
	'',
	'UI_A4',
	'');
INSERT INTO SM_LEVT
	VALUES (2389,
	2401,
	0);
INSERT INTO SM_SEVT
	VALUES (2389,
	2401,
	0);
INSERT INTO SM_EVT
	VALUES (2389,
	2401,
	0,
	5,
	'lapResetPressed',
	0,
	'',
	'UI_A5',
	'');
INSERT INTO SM_LEVT
	VALUES (2392,
	2401,
	0);
INSERT INTO SM_SEVT
	VALUES (2392,
	2401,
	0);
INSERT INTO SM_EVT
	VALUES (2392,
	2401,
	0,
	6,
	'lightPressed',
	0,
	'',
	'UI_A6',
	'');
INSERT INTO SM_LEVT
	VALUES (2395,
	2401,
	0);
INSERT INTO SM_SEVT
	VALUES (2395,
	2401,
	0);
INSERT INTO SM_EVT
	VALUES (2395,
	2401,
	0,
	7,
	'modePressed',
	0,
	'',
	'UI_A7',
	'');
INSERT INTO SM_STATE
	VALUES (2402,
	2401,
	0,
	'running',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (2402,
	2383,
	2401,
	0);
INSERT INTO SM_SEME
	VALUES (2402,
	2386,
	2401,
	0);
INSERT INTO SM_SEME
	VALUES (2402,
	2389,
	2401,
	0);
INSERT INTO SM_SEME
	VALUES (2402,
	2392,
	2401,
	0);
INSERT INTO SM_SEME
	VALUES (2402,
	2395,
	2401,
	0);
INSERT INTO SM_MOAH
	VALUES (2403,
	2401,
	2402);
INSERT INTO SM_AH
	VALUES (2403,
	2401);
INSERT INTO SM_ACT
	VALUES (2403,
	2401,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (2404,
	2401,
	2403);
INSERT INTO ACT_ACT
	VALUES (2404,
	'class state',
	0,
	2405,
	0,
	0,
	'UI::running',
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
INSERT INTO SM_NSTXN
	VALUES (2406,
	2401,
	2402,
	2383,
	0);
INSERT INTO SM_TAH
	VALUES (2407,
	2401,
	2406);
INSERT INTO SM_AH
	VALUES (2407,
	2401);
INSERT INTO SM_ACT
	VALUES (2407,
	2401,
	1,
	'create event instance evt of UI_A3:setTargetPressed() to UI class;
GuiBridge::feedSetTargetPressedEvent(evt: evt);
::sendTargetPressed();',
	'');
INSERT INTO ACT_TAB
	VALUES (2408,
	2401,
	2407);
INSERT INTO ACT_ACT
	VALUES (2408,
	'class transition',
	0,
	2409,
	0,
	0,
	'UI_A3: setTargetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2409,
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
	2408,
	0);
INSERT INTO ACT_SMT
	VALUES (2410,
	2409,
	2411,
	1,
	1,
	'UI_A3: setTargetPressed line: 1');
INSERT INTO E_ESS
	VALUES (2410,
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
	VALUES (2410,
	1,
	2412);
INSERT INTO E_CSME
	VALUES (2410,
	2383);
INSERT INTO E_CEA
	VALUES (2410);
INSERT INTO ACT_SMT
	VALUES (2411,
	2409,
	2413,
	2,
	1,
	'UI_A3: setTargetPressed line: 2');
INSERT INTO ACT_BRG
	VALUES (2411,
	2201,
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (2413,
	2409,
	0,
	3,
	1,
	'UI_A3: setTargetPressed line: 3');
INSERT INTO ACT_FNC
	VALUES (2413,
	2127,
	3,
	3);
INSERT INTO V_VAL
	VALUES (2414,
	0,
	0,
	2,
	43,
	45,
	0,
	0,
	0,
	0,
	302,
	2409);
INSERT INTO V_TVL
	VALUES (2414,
	2412);
INSERT INTO V_PAR
	VALUES (2414,
	2411,
	0,
	'evt',
	0,
	2,
	38);
INSERT INTO V_VAR
	VALUES (2412,
	2409,
	'evt',
	1,
	302);
INSERT INTO V_TRN
	VALUES (2412,
	0,
	'');
INSERT INTO SM_TXN
	VALUES (2406,
	2401,
	2402,
	0);
INSERT INTO SM_NSTXN
	VALUES (2415,
	2401,
	2402,
	2386,
	0);
INSERT INTO SM_TAH
	VALUES (2416,
	2401,
	2415);
INSERT INTO SM_AH
	VALUES (2416,
	2401);
INSERT INTO SM_ACT
	VALUES (2416,
	2401,
	1,
	'create event instance evt of UI_A4:startStopPressed() to UI class;
GuiBridge::feedStartStopPressedEvent(evt: evt);
::sendStartStopPressed();',
	'');
INSERT INTO ACT_TAB
	VALUES (2417,
	2401,
	2416);
INSERT INTO ACT_ACT
	VALUES (2417,
	'class transition',
	0,
	2418,
	0,
	0,
	'UI_A4: startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2418,
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
	2417,
	0);
INSERT INTO ACT_SMT
	VALUES (2419,
	2418,
	2420,
	1,
	1,
	'UI_A4: startStopPressed line: 1');
INSERT INTO E_ESS
	VALUES (2419,
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
	VALUES (2419,
	1,
	2421);
INSERT INTO E_CSME
	VALUES (2419,
	2386);
INSERT INTO E_CEA
	VALUES (2419);
INSERT INTO ACT_SMT
	VALUES (2420,
	2418,
	2422,
	2,
	1,
	'UI_A4: startStopPressed line: 2');
INSERT INTO ACT_BRG
	VALUES (2420,
	2217,
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (2422,
	2418,
	0,
	3,
	1,
	'UI_A4: startStopPressed line: 3');
INSERT INTO ACT_FNC
	VALUES (2422,
	2123,
	3,
	3);
INSERT INTO V_VAL
	VALUES (2423,
	0,
	0,
	2,
	43,
	45,
	0,
	0,
	0,
	0,
	302,
	2418);
INSERT INTO V_TVL
	VALUES (2423,
	2421);
INSERT INTO V_PAR
	VALUES (2423,
	2420,
	0,
	'evt',
	0,
	2,
	38);
INSERT INTO V_VAR
	VALUES (2421,
	2418,
	'evt',
	1,
	302);
INSERT INTO V_TRN
	VALUES (2421,
	0,
	'');
INSERT INTO SM_TXN
	VALUES (2415,
	2401,
	2402,
	0);
INSERT INTO SM_NSTXN
	VALUES (2424,
	2401,
	2402,
	2389,
	0);
INSERT INTO SM_TAH
	VALUES (2425,
	2401,
	2424);
INSERT INTO SM_AH
	VALUES (2425,
	2401);
INSERT INTO SM_ACT
	VALUES (2425,
	2401,
	1,
	'create event instance evt of UI_A5:lapResetPressed() to UI class;
GuiBridge::feedLapResetPressedEvent(evt: evt);
::sendLapResetPressed();',
	'');
INSERT INTO ACT_TAB
	VALUES (2426,
	2401,
	2425);
INSERT INTO ACT_ACT
	VALUES (2426,
	'class transition',
	0,
	2427,
	0,
	0,
	'UI_A5: lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2427,
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
	2426,
	0);
INSERT INTO ACT_SMT
	VALUES (2428,
	2427,
	2429,
	1,
	1,
	'UI_A5: lapResetPressed line: 1');
INSERT INTO E_ESS
	VALUES (2428,
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
	VALUES (2428,
	1,
	2430);
INSERT INTO E_CSME
	VALUES (2428,
	2389);
INSERT INTO E_CEA
	VALUES (2428);
INSERT INTO ACT_SMT
	VALUES (2429,
	2427,
	2431,
	2,
	1,
	'UI_A5: lapResetPressed line: 2');
INSERT INTO ACT_BRG
	VALUES (2429,
	2213,
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (2431,
	2427,
	0,
	3,
	1,
	'UI_A5: lapResetPressed line: 3');
INSERT INTO ACT_FNC
	VALUES (2431,
	2111,
	3,
	3);
INSERT INTO V_VAL
	VALUES (2432,
	0,
	0,
	2,
	42,
	44,
	0,
	0,
	0,
	0,
	302,
	2427);
INSERT INTO V_TVL
	VALUES (2432,
	2430);
INSERT INTO V_PAR
	VALUES (2432,
	2429,
	0,
	'evt',
	0,
	2,
	37);
INSERT INTO V_VAR
	VALUES (2430,
	2427,
	'evt',
	1,
	302);
INSERT INTO V_TRN
	VALUES (2430,
	0,
	'');
INSERT INTO SM_TXN
	VALUES (2424,
	2401,
	2402,
	0);
INSERT INTO SM_NSTXN
	VALUES (2433,
	2401,
	2402,
	2392,
	0);
INSERT INTO SM_TAH
	VALUES (2434,
	2401,
	2433);
INSERT INTO SM_AH
	VALUES (2434,
	2401);
INSERT INTO SM_ACT
	VALUES (2434,
	2401,
	1,
	'create event instance evt of UI_A6:lightPressed() to UI class;
GuiBridge::feedLightPressedEvent(evt: evt);
::sendLightPressed();',
	'');
INSERT INTO ACT_TAB
	VALUES (2435,
	2401,
	2434);
INSERT INTO ACT_ACT
	VALUES (2435,
	'class transition',
	0,
	2436,
	0,
	0,
	'UI_A6: lightPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2436,
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
	2435,
	0);
INSERT INTO ACT_SMT
	VALUES (2437,
	2436,
	2438,
	1,
	1,
	'UI_A6: lightPressed line: 1');
INSERT INTO E_ESS
	VALUES (2437,
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
	VALUES (2437,
	1,
	2439);
INSERT INTO E_CSME
	VALUES (2437,
	2392);
INSERT INTO E_CEA
	VALUES (2437);
INSERT INTO ACT_SMT
	VALUES (2438,
	2436,
	2440,
	2,
	1,
	'UI_A6: lightPressed line: 2');
INSERT INTO ACT_BRG
	VALUES (2438,
	2209,
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (2440,
	2436,
	0,
	3,
	1,
	'UI_A6: lightPressed line: 3');
INSERT INTO ACT_FNC
	VALUES (2440,
	2115,
	3,
	3);
INSERT INTO V_VAL
	VALUES (2441,
	0,
	0,
	2,
	39,
	41,
	0,
	0,
	0,
	0,
	302,
	2436);
INSERT INTO V_TVL
	VALUES (2441,
	2439);
INSERT INTO V_PAR
	VALUES (2441,
	2438,
	0,
	'evt',
	0,
	2,
	34);
INSERT INTO V_VAR
	VALUES (2439,
	2436,
	'evt',
	1,
	302);
INSERT INTO V_TRN
	VALUES (2439,
	0,
	'');
INSERT INTO SM_TXN
	VALUES (2433,
	2401,
	2402,
	0);
INSERT INTO SM_NSTXN
	VALUES (2442,
	2401,
	2402,
	2395,
	0);
INSERT INTO SM_TAH
	VALUES (2443,
	2401,
	2442);
INSERT INTO SM_AH
	VALUES (2443,
	2401);
INSERT INTO SM_ACT
	VALUES (2443,
	2401,
	1,
	'create event instance evt of UI_A7:modePressed() to UI class;
GuiBridge::feedModePressedEvent(evt: evt);
::sendModePressed();',
	'');
INSERT INTO ACT_TAB
	VALUES (2444,
	2401,
	2443);
INSERT INTO ACT_ACT
	VALUES (2444,
	'class transition',
	0,
	2445,
	0,
	0,
	'UI_A7: modePressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2445,
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
	2444,
	0);
INSERT INTO ACT_SMT
	VALUES (2446,
	2445,
	2447,
	1,
	1,
	'UI_A7: modePressed line: 1');
INSERT INTO E_ESS
	VALUES (2446,
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
	VALUES (2446,
	1,
	2448);
INSERT INTO E_CSME
	VALUES (2446,
	2395);
INSERT INTO E_CEA
	VALUES (2446);
INSERT INTO ACT_SMT
	VALUES (2447,
	2445,
	2449,
	2,
	1,
	'UI_A7: modePressed line: 2');
INSERT INTO ACT_BRG
	VALUES (2447,
	2205,
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (2449,
	2445,
	0,
	3,
	1,
	'UI_A7: modePressed line: 3');
INSERT INTO ACT_FNC
	VALUES (2449,
	2119,
	3,
	3);
INSERT INTO V_VAL
	VALUES (2450,
	0,
	0,
	2,
	38,
	40,
	0,
	0,
	0,
	0,
	302,
	2445);
INSERT INTO V_TVL
	VALUES (2450,
	2448);
INSERT INTO V_PAR
	VALUES (2450,
	2447,
	0,
	'evt',
	0,
	2,
	33);
INSERT INTO V_VAR
	VALUES (2448,
	2445,
	'evt',
	1,
	302);
INSERT INTO V_TRN
	VALUES (2448,
	0,
	'');
INSERT INTO SM_TXN
	VALUES (2442,
	2401,
	2402,
	0);
INSERT INTO PE_PE
	VALUES (2451,
	1,
	1943,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (2451,
	0,
	1942,
	'shared',
	'',
	0);
INSERT INTO PE_PE
	VALUES (172,
	1,
	2451,
	0,
	3);
INSERT INTO S_DT
	VALUES (172,
	0,
	'Unit',
	'',
	'');
INSERT INTO S_EDT
	VALUES (172);
INSERT INTO S_ENUM
	VALUES (754,
	'km',
	'',
	172,
	0);
INSERT INTO S_ENUM
	VALUES (758,
	'meters',
	'',
	172,
	754);
INSERT INTO S_ENUM
	VALUES (799,
	'minPerKm',
	'',
	172,
	758);
INSERT INTO S_ENUM
	VALUES (778,
	'kmPerHour',
	'',
	172,
	799);
INSERT INTO S_ENUM
	VALUES (1998,
	'miles',
	'',
	172,
	778);
INSERT INTO S_ENUM
	VALUES (2001,
	'yards',
	'',
	172,
	1998);
INSERT INTO S_ENUM
	VALUES (2004,
	'feet',
	'',
	172,
	2001);
INSERT INTO S_ENUM
	VALUES (2007,
	'minPerMile',
	'',
	172,
	2004);
INSERT INTO S_ENUM
	VALUES (2010,
	'mph',
	'',
	172,
	2007);
INSERT INTO S_ENUM
	VALUES (820,
	'bpm',
	'',
	172,
	2010);
INSERT INTO S_ENUM
	VALUES (838,
	'laps',
	'',
	172,
	820);
INSERT INTO PE_PE
	VALUES (180,
	1,
	2451,
	0,
	3);
INSERT INTO S_DT
	VALUES (180,
	0,
	'Indicator',
	'',
	'');
INSERT INTO S_EDT
	VALUES (180);
INSERT INTO S_ENUM
	VALUES (689,
	'Blank',
	'',
	180,
	0);
INSERT INTO S_ENUM
	VALUES (717,
	'Down',
	'',
	180,
	689);
INSERT INTO S_ENUM
	VALUES (721,
	'Flat',
	'',
	180,
	717);
INSERT INTO S_ENUM
	VALUES (713,
	'Up',
	'',
	180,
	721);
INSERT INTO PE_PE
	VALUES (90,
	1,
	2451,
	0,
	6);
INSERT INTO C_I
	VALUES (90,
	0,
	'UI',
	'');
INSERT INTO C_EP
	VALUES (92,
	90,
	-1,
	'setTime',
	'');
INSERT INTO C_IO
	VALUES (92,
	294,
	'setTime',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (1950,
	92,
	188,
	'time',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (96,
	90,
	-1,
	'setData',
	'');
INSERT INTO C_IO
	VALUES (96,
	294,
	'setData',
	'',
	0,
	'',
	92);
INSERT INTO C_PP
	VALUES (2018,
	96,
	133,
	'value',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (1988,
	96,
	172,
	'unit',
	'',
	0,
	'',
	2018);
INSERT INTO C_EP
	VALUES (100,
	90,
	-1,
	'startTest',
	'');
INSERT INTO C_IO
	VALUES (100,
	294,
	'startTest',
	'',
	0,
	'',
	96);
INSERT INTO C_EP
	VALUES (104,
	90,
	-1,
	'setIndicator',
	'');
INSERT INTO C_IO
	VALUES (104,
	294,
	'setIndicator',
	'',
	0,
	'',
	100);
INSERT INTO C_PP
	VALUES (2072,
	104,
	180,
	'indicator',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (108,
	90,
	-1,
	'newGoalSpec',
	'');
INSERT INTO C_IO
	VALUES (108,
	294,
	'newGoalSpec',
	'',
	0,
	'',
	104);
INSERT INTO C_PP
	VALUES (2452,
	108,
	188,
	'sequenceNumber',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (2453,
	108,
	133,
	'minimum',
	'',
	0,
	'',
	2452);
INSERT INTO C_PP
	VALUES (2454,
	108,
	133,
	'maximum',
	'',
	0,
	'',
	2453);
INSERT INTO C_PP
	VALUES (2455,
	108,
	133,
	'span',
	'',
	0,
	'',
	2454);
INSERT INTO C_PP
	VALUES (2456,
	108,
	204,
	'criteriaType',
	'',
	0,
	'',
	2455);
INSERT INTO C_PP
	VALUES (2457,
	108,
	207,
	'spanType',
	'',
	0,
	'',
	2456);
INSERT INTO PE_PE
	VALUES (251,
	1,
	2451,
	0,
	6);
INSERT INTO C_I
	VALUES (251,
	0,
	'UITracking',
	'');
INSERT INTO C_EP
	VALUES (253,
	251,
	-1,
	'setTargetPressed',
	'');
INSERT INTO C_IO
	VALUES (253,
	294,
	'setTargetPressed',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (258,
	251,
	-1,
	'startStopPressed',
	'');
INSERT INTO C_IO
	VALUES (258,
	294,
	'startStopPressed',
	'',
	0,
	'',
	253);
INSERT INTO C_EP
	VALUES (263,
	251,
	-1,
	'lapResetPressed',
	'');
INSERT INTO C_IO
	VALUES (263,
	294,
	'lapResetPressed',
	'',
	0,
	'',
	258);
INSERT INTO C_EP
	VALUES (268,
	251,
	-1,
	'modePressed',
	'');
INSERT INTO C_IO
	VALUES (268,
	294,
	'modePressed',
	'',
	0,
	'',
	263);
INSERT INTO C_EP
	VALUES (273,
	251,
	-1,
	'newGoalSpec',
	'');
INSERT INTO C_IO
	VALUES (273,
	294,
	'newGoalSpec',
	'',
	0,
	'',
	268);
INSERT INTO C_PP
	VALUES (278,
	273,
	188,
	'sequenceNumber',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (280,
	273,
	133,
	'minimum',
	'',
	0,
	'',
	278);
INSERT INTO C_PP
	VALUES (282,
	273,
	133,
	'maximum',
	'',
	0,
	'',
	280);
INSERT INTO C_PP
	VALUES (284,
	273,
	133,
	'span',
	'',
	0,
	'',
	282);
INSERT INTO C_PP
	VALUES (286,
	273,
	204,
	'criteriaType',
	'',
	0,
	'',
	284);
INSERT INTO C_PP
	VALUES (288,
	273,
	207,
	'spanType',
	'',
	0,
	'',
	286);
INSERT INTO C_EP
	VALUES (290,
	251,
	-1,
	'lightPressed',
	'');
INSERT INTO C_IO
	VALUES (290,
	294,
	'lightPressed',
	'',
	0,
	'',
	273);
-- root-types-contained: SystemModel_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES (2458,
	'HeartRateMonitor',
	1);
INSERT INTO EP_PKG
	VALUES (2459,
	2458,
	2458,
	'HeartRateMonitor',
	'',
	0);
INSERT INTO PE_PE
	VALUES (4,
	1,
	2459,
	0,
	2);
INSERT INTO C_C
	VALUES (4,
	0,
	0,
	'HeartRateMonitor',
	'Simulates a pulse monitor hardware/firmware. This component is only behavioral and included for testing purposes.',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (5,
	4,
	'HeartRateMonitor',
	0,
	0);
INSERT INTO C_IR
	VALUES (8,
	79,
	0,
	5);
INSERT INTO C_P
	VALUES (8,
	'HeartRateMonitor',
	'Unnamed Interface',
	'',
	'HeartRateMonitor::HeartRateMonitor::HeartRateMonitor');
INSERT INTO SPR_PEP
	VALUES (2460,
	81,
	8);
INSERT INTO SPR_PO
	VALUES (2460,
	'registerListener',
	'',
	'generate HeartRateMonitor_A1:registerListener() to HeartRateMonitor class;

',
	1);
INSERT INTO ACT_POB
	VALUES (2461,
	2460);
INSERT INTO ACT_ACT
	VALUES (2461,
	'interface operation',
	0,
	2462,
	0,
	0,
	'HeartRateMonitor::HeartRateMonitor::registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2462,
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
	2461,
	0);
INSERT INTO ACT_SMT
	VALUES (2463,
	2462,
	0,
	1,
	1,
	'HeartRateMonitor::HeartRateMonitor::registerListener line: 1');
INSERT INTO E_ESS
	VALUES (2463,
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
	VALUES (2463);
INSERT INTO E_GSME
	VALUES (2463,
	2464);
INSERT INTO E_GAR
	VALUES (2463);
INSERT INTO SPR_PEP
	VALUES (2465,
	85,
	8);
INSERT INTO SPR_PO
	VALUES (2465,
	'unregisterListener',
	'',
	'generate HeartRateMonitor_A2:unregisterListener() to HeartRateMonitor class;

',
	1);
INSERT INTO ACT_POB
	VALUES (2466,
	2465);
INSERT INTO ACT_ACT
	VALUES (2466,
	'interface operation',
	0,
	2467,
	0,
	0,
	'HeartRateMonitor::HeartRateMonitor::unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2467,
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
	2466,
	0);
INSERT INTO ACT_SMT
	VALUES (2468,
	2467,
	0,
	1,
	1,
	'HeartRateMonitor::HeartRateMonitor::unregisterListener line: 1');
INSERT INTO E_ESS
	VALUES (2468,
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
	VALUES (2468);
INSERT INTO E_GSME
	VALUES (2468,
	2469);
INSERT INTO E_GAR
	VALUES (2468);
INSERT INTO C_PO
	VALUES (10,
	4,
	'Unspecified',
	0,
	0);
INSERT INTO C_IR
	VALUES (13,
	241,
	0,
	10);
INSERT INTO C_R
	VALUES (13,
	'HeartRateMonitorUnspecified',
	'',
	'Unnamed Interface',
	'HeartRateMonitor::Unspecified::HeartRateMonitorUnspecified');
INSERT INTO SPR_REP
	VALUES (2470,
	243,
	13);
INSERT INTO SPR_RO
	VALUES (2470,
	'heartRateChanged',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2471,
	2470);
INSERT INTO ACT_ACT
	VALUES (2471,
	'interface operation',
	0,
	2472,
	0,
	0,
	'Unspecified::HeartRateMonitorUnspecified::heartRateChanged',
	0);
INSERT INTO ACT_BLK
	VALUES (2472,
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
	2471,
	0);
INSERT INTO PE_PE
	VALUES (2473,
	1,
	0,
	4,
	7);
INSERT INTO EP_PKG
	VALUES (2473,
	0,
	2458,
	'HeartRateMonitor',
	'',
	0);
INSERT INTO PE_PE
	VALUES (2474,
	1,
	2473,
	0,
	5);
INSERT INTO S_EE
	VALUES (2474,
	'Logging',
	'',
	'LOG',
	0,
	'',
	'Logging',
	1);
INSERT INTO S_BRG
	VALUES (2475,
	2474,
	'LogSuccess',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2476,
	2475,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2477,
	2475);
INSERT INTO ACT_ACT
	VALUES (2477,
	'bridge',
	0,
	2478,
	0,
	0,
	'Logging::LogSuccess',
	0);
INSERT INTO ACT_BLK
	VALUES (2478,
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
	2477,
	0);
INSERT INTO S_BRG
	VALUES (2479,
	2474,
	'LogFailure',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2480,
	2479,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2481,
	2479);
INSERT INTO ACT_ACT
	VALUES (2481,
	'bridge',
	0,
	2482,
	0,
	0,
	'Logging::LogFailure',
	0);
INSERT INTO ACT_BLK
	VALUES (2482,
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
	2481,
	0);
INSERT INTO S_BRG
	VALUES (2483,
	2474,
	'LogInfo',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2484,
	2483,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2485,
	2483);
INSERT INTO ACT_ACT
	VALUES (2485,
	'bridge',
	0,
	2486,
	0,
	0,
	'Logging::LogInfo',
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
INSERT INTO S_BRG
	VALUES (2487,
	2474,
	'LogDate',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2488,
	2487,
	'd',
	306,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2489,
	2487,
	'message',
	296,
	0,
	'',
	2488,
	'');
INSERT INTO ACT_BRB
	VALUES (2490,
	2487);
INSERT INTO ACT_ACT
	VALUES (2490,
	'bridge',
	0,
	2491,
	0,
	0,
	'Logging::LogDate',
	0);
INSERT INTO ACT_BLK
	VALUES (2491,
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
	2490,
	0);
INSERT INTO S_BRG
	VALUES (2492,
	2474,
	'LogTime',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2493,
	2492,
	't',
	308,
	0,
	'',
	2494,
	'');
INSERT INTO S_BPARM
	VALUES (2494,
	2492,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2495,
	2492);
INSERT INTO ACT_ACT
	VALUES (2495,
	'bridge',
	0,
	2496,
	0,
	0,
	'Logging::LogTime',
	0);
INSERT INTO ACT_BLK
	VALUES (2496,
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
	2495,
	0);
INSERT INTO S_BRG
	VALUES (2497,
	2474,
	'LogReal',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2498,
	2497,
	'r',
	133,
	0,
	'',
	2499,
	'');
INSERT INTO S_BPARM
	VALUES (2499,
	2497,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2500,
	2497);
INSERT INTO ACT_ACT
	VALUES (2500,
	'bridge',
	0,
	2501,
	0,
	0,
	'Logging::LogReal',
	0);
INSERT INTO ACT_BLK
	VALUES (2501,
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
	2500,
	0);
INSERT INTO S_BRG
	VALUES (2502,
	2474,
	'LogInteger',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2503,
	2502,
	'message',
	188,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2504,
	2502);
INSERT INTO ACT_ACT
	VALUES (2504,
	'bridge',
	0,
	2505,
	0,
	0,
	'Logging::LogInteger',
	0);
INSERT INTO ACT_BLK
	VALUES (2505,
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
	2504,
	0);
INSERT INTO PE_PE
	VALUES (2506,
	1,
	2473,
	0,
	5);
INSERT INTO S_EE
	VALUES (2506,
	'Time',
	'The Time external entity provides date, timestamp, and timer related operations.',
	'TIM',
	0,
	'',
	'Time',
	1);
INSERT INTO S_BRG
	VALUES (2507,
	2506,
	'current_date',
	'',
	1,
	306,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (2508,
	2507);
INSERT INTO ACT_ACT
	VALUES (2508,
	'bridge',
	0,
	2509,
	0,
	0,
	'Time::current_date',
	0);
INSERT INTO ACT_BLK
	VALUES (2509,
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
	2508,
	0);
INSERT INTO S_BRG
	VALUES (2510,
	2506,
	'create_date',
	'',
	1,
	306,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2511,
	2510,
	'second',
	188,
	0,
	'',
	2512,
	'');
INSERT INTO S_BPARM
	VALUES (2513,
	2510,
	'minute',
	188,
	0,
	'',
	2514,
	'');
INSERT INTO S_BPARM
	VALUES (2514,
	2510,
	'hour',
	188,
	0,
	'',
	2515,
	'');
INSERT INTO S_BPARM
	VALUES (2515,
	2510,
	'day',
	188,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2512,
	2510,
	'month',
	188,
	0,
	'',
	2513,
	'');
INSERT INTO S_BPARM
	VALUES (2516,
	2510,
	'year',
	188,
	0,
	'',
	2511,
	'');
INSERT INTO ACT_BRB
	VALUES (2517,
	2510);
INSERT INTO ACT_ACT
	VALUES (2517,
	'bridge',
	0,
	2518,
	0,
	0,
	'Time::create_date',
	0);
INSERT INTO ACT_BLK
	VALUES (2518,
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
	2517,
	0);
INSERT INTO S_BRG
	VALUES (2519,
	2506,
	'get_second',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2520,
	2519,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2521,
	2519);
INSERT INTO ACT_ACT
	VALUES (2521,
	'bridge',
	0,
	2522,
	0,
	0,
	'Time::get_second',
	0);
INSERT INTO ACT_BLK
	VALUES (2522,
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
	2521,
	0);
INSERT INTO S_BRG
	VALUES (2523,
	2506,
	'get_minute',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2524,
	2523,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2525,
	2523);
INSERT INTO ACT_ACT
	VALUES (2525,
	'bridge',
	0,
	2526,
	0,
	0,
	'Time::get_minute',
	0);
INSERT INTO ACT_BLK
	VALUES (2526,
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
	2525,
	0);
INSERT INTO S_BRG
	VALUES (2527,
	2506,
	'get_hour',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2528,
	2527,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2529,
	2527);
INSERT INTO ACT_ACT
	VALUES (2529,
	'bridge',
	0,
	2530,
	0,
	0,
	'Time::get_hour',
	0);
INSERT INTO ACT_BLK
	VALUES (2530,
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
	2529,
	0);
INSERT INTO S_BRG
	VALUES (2531,
	2506,
	'get_day',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2532,
	2531,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2533,
	2531);
INSERT INTO ACT_ACT
	VALUES (2533,
	'bridge',
	0,
	2534,
	0,
	0,
	'Time::get_day',
	0);
INSERT INTO ACT_BLK
	VALUES (2534,
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
	2533,
	0);
INSERT INTO S_BRG
	VALUES (2535,
	2506,
	'get_month',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2536,
	2535,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2537,
	2535);
INSERT INTO ACT_ACT
	VALUES (2537,
	'bridge',
	0,
	2538,
	0,
	0,
	'Time::get_month',
	0);
INSERT INTO ACT_BLK
	VALUES (2538,
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
	2537,
	0);
INSERT INTO S_BRG
	VALUES (2539,
	2506,
	'get_year',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2540,
	2539,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2541,
	2539);
INSERT INTO ACT_ACT
	VALUES (2541,
	'bridge',
	0,
	2542,
	0,
	0,
	'Time::get_year',
	0);
INSERT INTO ACT_BLK
	VALUES (2542,
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
	2541,
	0);
INSERT INTO S_BRG
	VALUES (2543,
	2506,
	'current_clock',
	'',
	1,
	308,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (2544,
	2543);
INSERT INTO ACT_ACT
	VALUES (2544,
	'bridge',
	0,
	2545,
	0,
	0,
	'Time::current_clock',
	0);
INSERT INTO ACT_BLK
	VALUES (2545,
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
	2544,
	0);
INSERT INTO S_BRG
	VALUES (2546,
	2506,
	'timer_start',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Returns the instance
handle of the timer.',
	1,
	307,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2547,
	2546,
	'microseconds',
	188,
	0,
	'',
	2548,
	'');
INSERT INTO S_BPARM
	VALUES (2548,
	2546,
	'event_inst',
	302,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2549,
	2546);
INSERT INTO ACT_ACT
	VALUES (2549,
	'bridge',
	0,
	2550,
	0,
	0,
	'Time::timer_start',
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
INSERT INTO S_BRG
	VALUES (2551,
	2506,
	'timer_start_recurring',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Upon expiration, the
timer will be restarted and fire again in the specified number of microseconds
generating the passed event. This bridge operation returns the instance handle
of the timer.',
	1,
	307,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2552,
	2551,
	'microseconds',
	188,
	0,
	'',
	2553,
	'');
INSERT INTO S_BPARM
	VALUES (2553,
	2551,
	'event_inst',
	302,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2554,
	2551);
INSERT INTO ACT_ACT
	VALUES (2554,
	'bridge',
	0,
	2555,
	0,
	0,
	'Time::timer_start_recurring',
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
INSERT INTO S_BRG
	VALUES (2556,
	2506,
	'timer_remaining_time',
	'Returns the time remaining (in microseconds) for the passed timer instance. If
the timer has expired, a zero value is returned.',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2557,
	2556,
	'timer_inst_ref',
	307,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2558,
	2556);
INSERT INTO ACT_ACT
	VALUES (2558,
	'bridge',
	0,
	2559,
	0,
	0,
	'Time::timer_remaining_time',
	0);
INSERT INTO ACT_BLK
	VALUES (2559,
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
	2558,
	0);
INSERT INTO S_BRG
	VALUES (2560,
	2506,
	'timer_reset_time',
	'This bridge operation attempts to set the passed existing timer to expire in
the specified number of microseconds. If the timer exists (that is, it has not
expired), a TRUE value is returned. If the timer no longer exists, a FALSE value
is returned.',
	1,
	295,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2561,
	2560,
	'timer_inst_ref',
	307,
	0,
	'',
	2562,
	'');
INSERT INTO S_BPARM
	VALUES (2562,
	2560,
	'microseconds',
	188,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2563,
	2560);
INSERT INTO ACT_ACT
	VALUES (2563,
	'bridge',
	0,
	2564,
	0,
	0,
	'Time::timer_reset_time',
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
INSERT INTO S_BRG
	VALUES (2565,
	2506,
	'timer_add_time',
	'This bridge operation attempts to add the specified number of microseconds to a
passed existing timer. If the timer exists (that is, it has not expired), a TRUE
value is returned. If the timer no longer exists, a FALSE value is returned.',
	1,
	295,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2566,
	2565,
	'timer_inst_ref',
	307,
	0,
	'',
	2567,
	'');
INSERT INTO S_BPARM
	VALUES (2567,
	2565,
	'microseconds',
	188,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2568,
	2565);
INSERT INTO ACT_ACT
	VALUES (2568,
	'bridge',
	0,
	2569,
	0,
	0,
	'Time::timer_add_time',
	0);
INSERT INTO ACT_BLK
	VALUES (2569,
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
	2568,
	0);
INSERT INTO S_BRG
	VALUES (2570,
	2506,
	'timer_cancel',
	'This bridge operation cancels and deletes the passed timer instance. If the 
timer exists (that is, it had not expired), a TRUE value is returned. If the
timer no longer exists, a FALSE value is returned.',
	1,
	295,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2571,
	2570,
	'timer_inst_ref',
	307,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2572,
	2570);
INSERT INTO ACT_ACT
	VALUES (2572,
	'bridge',
	0,
	2573,
	0,
	0,
	'Time::timer_cancel',
	0);
INSERT INTO ACT_BLK
	VALUES (2573,
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
	2572,
	0);
INSERT INTO PE_PE
	VALUES (2574,
	1,
	2473,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (2574,
	'HeartRateMonitor',
	1,
	'HeartRateMonitor',
	'Represents the heart-rate monitoring facility.',
	0);
INSERT INTO O_NBATTR
	VALUES (2575,
	2574);
INSERT INTO O_BATTR
	VALUES (2575,
	2574);
INSERT INTO O_ATTR
	VALUES (2575,
	2574,
	0,
	'recentHeartRate',
	'Most recent heart-rate sample, expressed in beats per minute.',
	'',
	'recentHeartRate',
	0,
	188,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2576,
	2574);
INSERT INTO O_BATTR
	VALUES (2576,
	2574);
INSERT INTO O_ATTR
	VALUES (2576,
	2574,
	2575,
	'timer',
	'Handle for underlying timer mechanism enabling the 
generation of delayed events that drive the model
of the heart-rate monitor.',
	'',
	'timer',
	0,
	307,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2574);
INSERT INTO O_ID
	VALUES (1,
	2574);
INSERT INTO O_ID
	VALUES (2,
	2574);
INSERT INTO SM_ASM
	VALUES (2577,
	2574);
INSERT INTO SM_SM
	VALUES (2577,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (2577);
INSERT INTO SM_LEVT
	VALUES (2578,
	2577,
	0);
INSERT INTO SM_SEVT
	VALUES (2578,
	2577,
	0);
INSERT INTO SM_EVT
	VALUES (2578,
	2577,
	0,
	3,
	'timeout',
	0,
	'',
	'HeartRateMonitor_A3',
	'');
INSERT INTO SM_LEVT
	VALUES (2464,
	2577,
	0);
INSERT INTO SM_SEVT
	VALUES (2464,
	2577,
	0);
INSERT INTO SM_EVT
	VALUES (2464,
	2577,
	0,
	1,
	'registerListener',
	0,
	'',
	'HeartRateMonitor_A1',
	'');
INSERT INTO SM_LEVT
	VALUES (2469,
	2577,
	0);
INSERT INTO SM_SEVT
	VALUES (2469,
	2577,
	0);
INSERT INTO SM_EVT
	VALUES (2469,
	2577,
	0,
	2,
	'unregisterListener',
	0,
	'',
	'HeartRateMonitor_A2',
	'');
INSERT INTO SM_STATE
	VALUES (2579,
	2577,
	0,
	'idle',
	1,
	0);
INSERT INTO SM_EIGN
	VALUES (2579,
	2578,
	2577,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2579,
	2578,
	2577,
	0);
INSERT INTO SM_SEME
	VALUES (2579,
	2464,
	2577,
	0);
INSERT INTO SM_CH
	VALUES (2579,
	2469,
	2577,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2579,
	2469,
	2577,
	0);
INSERT INTO SM_MOAH
	VALUES (2580,
	2577,
	2579);
INSERT INTO SM_AH
	VALUES (2580,
	2577);
INSERT INTO SM_ACT
	VALUES (2580,
	2577,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (2581,
	2577,
	2580);
INSERT INTO ACT_ACT
	VALUES (2581,
	'class state',
	0,
	2582,
	0,
	0,
	'HeartRateMonitor::idle',
	0);
INSERT INTO ACT_BLK
	VALUES (2582,
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
	2581,
	0);
INSERT INTO SM_STATE
	VALUES (2583,
	2577,
	0,
	'monitoring',
	2,
	0);
INSERT INTO SM_SEME
	VALUES (2583,
	2578,
	2577,
	0);
INSERT INTO SM_CH
	VALUES (2583,
	2464,
	2577,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2583,
	2464,
	2577,
	0);
INSERT INTO SM_SEME
	VALUES (2583,
	2469,
	2577,
	0);
INSERT INTO SM_MOAH
	VALUES (2584,
	2577,
	2583);
INSERT INTO SM_AH
	VALUES (2584,
	2577);
INSERT INTO SM_ACT
	VALUES (2584,
	2577,
	1,
	'select any monitor from instances of HeartRateMonitor;
send Unspecified::heartRateChanged(heartRate: monitor.recentHeartRate);
monitor.recentHeartRate = monitor.recentHeartRate + 1;',
	'');
INSERT INTO ACT_SAB
	VALUES (2585,
	2577,
	2584);
INSERT INTO ACT_ACT
	VALUES (2585,
	'class state',
	0,
	2586,
	0,
	0,
	'HeartRateMonitor::monitoring',
	0);
INSERT INTO ACT_BLK
	VALUES (2586,
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
	2585,
	0);
INSERT INTO ACT_SMT
	VALUES (2587,
	2586,
	2588,
	1,
	1,
	'HeartRateMonitor::monitoring line: 1');
INSERT INTO ACT_FIO
	VALUES (2587,
	2589,
	1,
	'any',
	2574,
	1,
	38);
INSERT INTO ACT_SMT
	VALUES (2588,
	2586,
	2590,
	2,
	1,
	'HeartRateMonitor::monitoring line: 2');
INSERT INTO ACT_IOP
	VALUES (2588,
	2,
	19,
	2,
	6,
	0,
	2470,
	0);
INSERT INTO ACT_SMT
	VALUES (2590,
	2586,
	0,
	3,
	1,
	'HeartRateMonitor::monitoring line: 3');
INSERT INTO ACT_AI
	VALUES (2590,
	2591,
	2592,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2593,
	0,
	0,
	2,
	47,
	53,
	0,
	0,
	0,
	0,
	300,
	2586);
INSERT INTO V_IRF
	VALUES (2593,
	2589);
INSERT INTO V_VAL
	VALUES (2594,
	0,
	0,
	2,
	55,
	69,
	0,
	0,
	0,
	0,
	188,
	2586);
INSERT INTO V_AVL
	VALUES (2594,
	2593,
	2574,
	2575);
INSERT INTO V_PAR
	VALUES (2594,
	2588,
	0,
	'heartRate',
	0,
	2,
	36);
INSERT INTO V_VAL
	VALUES (2595,
	1,
	0,
	3,
	1,
	7,
	0,
	0,
	0,
	0,
	300,
	2586);
INSERT INTO V_IRF
	VALUES (2595,
	2589);
INSERT INTO V_VAL
	VALUES (2592,
	1,
	0,
	3,
	9,
	23,
	0,
	0,
	0,
	0,
	188,
	2586);
INSERT INTO V_AVL
	VALUES (2592,
	2595,
	2574,
	2575);
INSERT INTO V_VAL
	VALUES (2596,
	0,
	0,
	3,
	27,
	33,
	0,
	0,
	0,
	0,
	300,
	2586);
INSERT INTO V_IRF
	VALUES (2596,
	2589);
INSERT INTO V_VAL
	VALUES (2597,
	0,
	0,
	3,
	35,
	49,
	0,
	0,
	0,
	0,
	188,
	2586);
INSERT INTO V_AVL
	VALUES (2597,
	2596,
	2574,
	2575);
INSERT INTO V_VAL
	VALUES (2591,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	188,
	2586);
INSERT INTO V_BIN
	VALUES (2591,
	2598,
	2597,
	'+');
INSERT INTO V_VAL
	VALUES (2598,
	0,
	0,
	3,
	53,
	53,
	0,
	0,
	0,
	0,
	188,
	2586);
INSERT INTO V_LIN
	VALUES (2598,
	'1');
INSERT INTO V_VAR
	VALUES (2589,
	2586,
	'monitor',
	1,
	300);
INSERT INTO V_INT
	VALUES (2589,
	0,
	2574);
INSERT INTO SM_NSTXN
	VALUES (2599,
	2577,
	2579,
	2464,
	0);
INSERT INTO SM_TAH
	VALUES (2600,
	2577,
	2599);
INSERT INTO SM_AH
	VALUES (2600,
	2577);
INSERT INTO SM_ACT
	VALUES (2600,
	2577,
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
	VALUES (2601,
	2577,
	2600);
INSERT INTO ACT_ACT
	VALUES (2601,
	'class transition',
	0,
	2602,
	0,
	0,
	'HeartRateMonitor_A1: registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2602,
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
	2601,
	0);
INSERT INTO ACT_SMT
	VALUES (2603,
	2602,
	2604,
	2,
	1,
	'HeartRateMonitor_A1: registerListener line: 2');
INSERT INTO ACT_FIO
	VALUES (2603,
	2605,
	1,
	'any',
	2574,
	2,
	38);
INSERT INTO ACT_SMT
	VALUES (2604,
	2602,
	2606,
	3,
	1,
	'HeartRateMonitor_A1: registerListener line: 3');
INSERT INTO ACT_IF
	VALUES (2604,
	2607,
	2608,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2606,
	2602,
	2609,
	6,
	1,
	'HeartRateMonitor_A1: registerListener line: 6');
INSERT INTO ACT_AI
	VALUES (2606,
	2610,
	2611,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2609,
	2602,
	2612,
	8,
	1,
	'HeartRateMonitor_A1: registerListener line: 8');
INSERT INTO ACT_BRG
	VALUES (2609,
	2483,
	8,
	6,
	8,
	1);
INSERT INTO ACT_SMT
	VALUES (2612,
	2602,
	2613,
	11,
	1,
	'HeartRateMonitor_A1: registerListener line: 11');
INSERT INTO E_ESS
	VALUES (2612,
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
	VALUES (2612,
	1,
	2614);
INSERT INTO E_CSME
	VALUES (2612,
	2578);
INSERT INTO E_CEA
	VALUES (2612);
INSERT INTO ACT_SMT
	VALUES (2613,
	2602,
	0,
	12,
	1,
	'HeartRateMonitor_A1: registerListener line: 12');
INSERT INTO ACT_AI
	VALUES (2613,
	2615,
	2616,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2617,
	0,
	0,
	3,
	11,
	17,
	0,
	0,
	0,
	0,
	300,
	2602);
INSERT INTO V_IRF
	VALUES (2617,
	2605);
INSERT INTO V_VAL
	VALUES (2608,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	2602);
INSERT INTO V_UNY
	VALUES (2608,
	2617,
	'empty');
INSERT INTO V_VAL
	VALUES (2618,
	1,
	0,
	6,
	1,
	7,
	0,
	0,
	0,
	0,
	300,
	2602);
INSERT INTO V_IRF
	VALUES (2618,
	2605);
INSERT INTO V_VAL
	VALUES (2611,
	1,
	0,
	6,
	9,
	23,
	0,
	0,
	0,
	0,
	188,
	2602);
INSERT INTO V_AVL
	VALUES (2611,
	2618,
	2574,
	2575);
INSERT INTO V_VAL
	VALUES (2610,
	0,
	0,
	6,
	27,
	28,
	0,
	0,
	0,
	0,
	188,
	2602);
INSERT INTO V_LIN
	VALUES (2610,
	'50');
INSERT INTO V_VAL
	VALUES (2619,
	0,
	0,
	8,
	23,
	42,
	0,
	0,
	0,
	0,
	296,
	2602);
INSERT INTO V_LST
	VALUES (2619,
	'listener registered');
INSERT INTO V_PAR
	VALUES (2619,
	2609,
	0,
	'message',
	0,
	8,
	14);
INSERT INTO V_VAL
	VALUES (2620,
	1,
	0,
	12,
	1,
	7,
	0,
	0,
	0,
	0,
	300,
	2602);
INSERT INTO V_IRF
	VALUES (2620,
	2605);
INSERT INTO V_VAL
	VALUES (2616,
	1,
	0,
	12,
	9,
	13,
	0,
	0,
	0,
	0,
	307,
	2602);
INSERT INTO V_AVL
	VALUES (2616,
	2620,
	2574,
	2576);
INSERT INTO V_VAL
	VALUES (2615,
	0,
	0,
	12,
	22,
	-1,
	12,
	45,
	12,
	66,
	307,
	2602);
INSERT INTO V_BRV
	VALUES (2615,
	2551,
	1,
	12,
	17);
INSERT INTO V_VAL
	VALUES (2621,
	0,
	0,
	12,
	57,
	63,
	0,
	0,
	0,
	0,
	302,
	2602);
INSERT INTO V_TVL
	VALUES (2621,
	2614);
INSERT INTO V_PAR
	VALUES (2621,
	0,
	2615,
	'event_inst',
	2622,
	12,
	45);
INSERT INTO V_VAL
	VALUES (2623,
	0,
	0,
	12,
	81,
	103,
	0,
	0,
	0,
	0,
	188,
	2602);
INSERT INTO V_SCV
	VALUES (2623,
	1766,
	188);
INSERT INTO V_VAL
	VALUES (2622,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	188,
	2602);
INSERT INTO V_BIN
	VALUES (2622,
	2624,
	2623,
	'*');
INSERT INTO V_PAR
	VALUES (2622,
	0,
	2615,
	'microseconds',
	0,
	12,
	66);
INSERT INTO V_VAL
	VALUES (2624,
	0,
	0,
	12,
	107,
	113,
	0,
	0,
	0,
	0,
	188,
	2602);
INSERT INTO V_LIN
	VALUES (2624,
	'1000000');
INSERT INTO V_VAR
	VALUES (2605,
	2602,
	'monitor',
	1,
	300);
INSERT INTO V_INT
	VALUES (2605,
	0,
	2574);
INSERT INTO V_VAR
	VALUES (2614,
	2602,
	'timeout',
	1,
	302);
INSERT INTO V_TRN
	VALUES (2614,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (2607,
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
	2601,
	0);
INSERT INTO ACT_SMT
	VALUES (2625,
	2607,
	0,
	4,
	3,
	'HeartRateMonitor_A1: registerListener line: 4');
INSERT INTO ACT_CR
	VALUES (2625,
	2605,
	0,
	2574,
	4,
	37);
INSERT INTO SM_TXN
	VALUES (2599,
	2577,
	2583,
	0);
INSERT INTO SM_NSTXN
	VALUES (2626,
	2577,
	2583,
	2469,
	0);
INSERT INTO SM_TAH
	VALUES (2627,
	2577,
	2626);
INSERT INTO SM_AH
	VALUES (2627,
	2577);
INSERT INTO SM_ACT
	VALUES (2627,
	2577,
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
	VALUES (2628,
	2577,
	2627);
INSERT INTO ACT_ACT
	VALUES (2628,
	'class transition',
	0,
	2629,
	0,
	0,
	'HeartRateMonitor_A2: unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2629,
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
	2628,
	0);
INSERT INTO ACT_SMT
	VALUES (2630,
	2629,
	2631,
	1,
	1,
	'HeartRateMonitor_A2: unregisterListener line: 1');
INSERT INTO ACT_FIO
	VALUES (2630,
	2632,
	1,
	'any',
	2574,
	1,
	38);
INSERT INTO ACT_SMT
	VALUES (2631,
	2629,
	2633,
	2,
	1,
	'HeartRateMonitor_A2: unregisterListener line: 2');
INSERT INTO ACT_AI
	VALUES (2631,
	2634,
	2635,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2633,
	2629,
	0,
	3,
	1,
	'HeartRateMonitor_A2: unregisterListener line: 3');
INSERT INTO ACT_IF
	VALUES (2633,
	2636,
	2637,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2638,
	2629,
	0,
	5,
	1,
	'HeartRateMonitor_A2: unregisterListener line: 5');
INSERT INTO ACT_E
	VALUES (2638,
	2639,
	2633);
INSERT INTO V_VAL
	VALUES (2635,
	1,
	1,
	2,
	1,
	3,
	0,
	0,
	0,
	0,
	295,
	2629);
INSERT INTO V_TVL
	VALUES (2635,
	2640);
INSERT INTO V_VAL
	VALUES (2634,
	0,
	0,
	2,
	12,
	-1,
	2,
	25,
	0,
	0,
	295,
	2629);
INSERT INTO V_BRV
	VALUES (2634,
	2570,
	1,
	2,
	7);
INSERT INTO V_VAL
	VALUES (2641,
	0,
	0,
	2,
	41,
	47,
	0,
	0,
	0,
	0,
	300,
	2629);
INSERT INTO V_IRF
	VALUES (2641,
	2632);
INSERT INTO V_VAL
	VALUES (2642,
	0,
	0,
	2,
	49,
	53,
	0,
	0,
	0,
	0,
	307,
	2629);
INSERT INTO V_AVL
	VALUES (2642,
	2641,
	2574,
	2576);
INSERT INTO V_PAR
	VALUES (2642,
	0,
	2634,
	'timer_inst_ref',
	0,
	2,
	25);
INSERT INTO V_VAL
	VALUES (2637,
	0,
	0,
	3,
	6,
	8,
	0,
	0,
	0,
	0,
	295,
	2629);
INSERT INTO V_TVL
	VALUES (2637,
	2640);
INSERT INTO V_VAR
	VALUES (2632,
	2629,
	'monitor',
	1,
	300);
INSERT INTO V_INT
	VALUES (2632,
	0,
	2574);
INSERT INTO V_VAR
	VALUES (2640,
	2629,
	'res',
	1,
	295);
INSERT INTO V_TRN
	VALUES (2640,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (2636,
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
	2628,
	0);
INSERT INTO ACT_SMT
	VALUES (2643,
	2636,
	0,
	4,
	3,
	'HeartRateMonitor_A2: unregisterListener line: 4');
INSERT INTO ACT_BRG
	VALUES (2643,
	2475,
	4,
	8,
	4,
	3);
INSERT INTO V_VAL
	VALUES (2644,
	0,
	0,
	4,
	29,
	74,
	0,
	0,
	0,
	0,
	296,
	2636);
INSERT INTO V_LST
	VALUES (2644,
	'Heart Rate Monitor: timer_cancel() succeeded.');
INSERT INTO V_PAR
	VALUES (2644,
	2643,
	0,
	'message',
	0,
	4,
	20);
INSERT INTO ACT_BLK
	VALUES (2639,
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
	2628,
	0);
INSERT INTO ACT_SMT
	VALUES (2645,
	2639,
	0,
	6,
	3,
	'HeartRateMonitor_A2: unregisterListener line: 6');
INSERT INTO ACT_BRG
	VALUES (2645,
	2479,
	6,
	8,
	6,
	3);
INSERT INTO V_VAL
	VALUES (2646,
	0,
	0,
	6,
	29,
	71,
	0,
	0,
	0,
	0,
	296,
	2639);
INSERT INTO V_LST
	VALUES (2646,
	'Heart Rate Monitor: timer_cancel() failed.');
INSERT INTO V_PAR
	VALUES (2646,
	2645,
	0,
	'message',
	0,
	6,
	20);
INSERT INTO SM_TXN
	VALUES (2626,
	2577,
	2579,
	0);
INSERT INTO SM_NSTXN
	VALUES (2647,
	2577,
	2583,
	2578,
	0);
INSERT INTO SM_TAH
	VALUES (2648,
	2577,
	2647);
INSERT INTO SM_AH
	VALUES (2648,
	2577);
INSERT INTO SM_ACT
	VALUES (2648,
	2577,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2649,
	2577,
	2648);
INSERT INTO ACT_ACT
	VALUES (2649,
	'class transition',
	0,
	2650,
	0,
	0,
	'HeartRateMonitor_A3: timeout',
	0);
INSERT INTO ACT_BLK
	VALUES (2650,
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
	2649,
	0);
INSERT INTO SM_TXN
	VALUES (2647,
	2577,
	2583,
	0);
INSERT INTO PE_PE
	VALUES (2651,
	1,
	2459,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (2651,
	0,
	2458,
	'shared',
	'',
	0);
INSERT INTO PE_PE
	VALUES (2652,
	1,
	2651,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (2652,
	'HeartRateConstants',
	'SamplingPeriod is expressed in seconds and represents the period at which heart-rate samples are recorded.
AveragingWindow is expressed in samples and represents the number of samples used when calculating the current average.');
INSERT INTO CNST_SYC
	VALUES (1768,
	'HeartRateAveragingWindow',
	'',
	188,
	2652,
	1766,
	188);
INSERT INTO CNST_LFSC
	VALUES (1768,
	188);
INSERT INTO CNST_LSC
	VALUES (1768,
	188,
	'5');
INSERT INTO CNST_SYC
	VALUES (1766,
	'HeartRateSamplingPeriod',
	'',
	188,
	2652,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (1766,
	188);
INSERT INTO CNST_LSC
	VALUES (1766,
	188,
	'3');
INSERT INTO PE_PE
	VALUES (79,
	1,
	2651,
	0,
	6);
INSERT INTO C_I
	VALUES (79,
	0,
	'HeartRateMonitor',
	'');
INSERT INTO C_EP
	VALUES (81,
	79,
	-1,
	'registerListener',
	'');
INSERT INTO C_IO
	VALUES (81,
	294,
	'registerListener',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (85,
	79,
	-1,
	'unregisterListener',
	'');
INSERT INTO C_IO
	VALUES (85,
	294,
	'unregisterListener',
	'',
	0,
	'',
	81);
INSERT INTO PE_PE
	VALUES (241,
	1,
	2651,
	0,
	6);
INSERT INTO C_I
	VALUES (241,
	0,
	'HeartRateMonitorUnspecified',
	'');
INSERT INTO C_EP
	VALUES (243,
	241,
	-1,
	'heartRateChanged',
	'');
INSERT INTO C_IO
	VALUES (243,
	294,
	'heartRateChanged',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (248,
	243,
	188,
	'heartRate',
	'',
	0,
	'',
	0);
-- root-types-contained: SystemModel_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES (2653,
	'Location',
	1);
INSERT INTO EP_PKG
	VALUES (2654,
	2653,
	2653,
	'Location',
	'',
	0);
INSERT INTO PE_PE
	VALUES (50,
	1,
	2654,
	0,
	2);
INSERT INTO C_C
	VALUES (50,
	0,
	0,
	'Location',
	'Simulates a the GPS hardware/firmware. This component is only behavioral and included for testing purposes.',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (51,
	50,
	'Location',
	0,
	0);
INSERT INTO C_IR
	VALUES (54,
	60,
	0,
	51);
INSERT INTO C_P
	VALUES (54,
	'Location',
	'Unnamed Interface',
	'',
	'Location::Location::Location');
INSERT INTO SPR_PEP
	VALUES (2655,
	62,
	54);
INSERT INTO SPR_PO
	VALUES (2655,
	'getLocation',
	'',
	'',
	1);
INSERT INTO ACT_POB
	VALUES (2656,
	2655);
INSERT INTO ACT_ACT
	VALUES (2656,
	'interface operation',
	0,
	2657,
	0,
	0,
	'Location::Location::getLocation',
	0);
INSERT INTO ACT_BLK
	VALUES (2657,
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
	2656,
	0);
INSERT INTO SPR_PEP
	VALUES (2658,
	66,
	54);
INSERT INTO SPR_PO
	VALUES (2658,
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
	VALUES (2659,
	2658);
INSERT INTO ACT_ACT
	VALUES (2659,
	'interface operation',
	0,
	2660,
	0,
	0,
	'Location::Location::getDistance',
	0);
INSERT INTO ACT_BLK
	VALUES (2660,
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
	2659,
	0);
INSERT INTO ACT_SMT
	VALUES (2661,
	2660,
	2662,
	4,
	1,
	'Location::Location::getDistance line: 4');
INSERT INTO ACT_AI
	VALUES (2661,
	2663,
	2664,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2662,
	2660,
	2665,
	5,
	1,
	'Location::Location::getDistance line: 5');
INSERT INTO ACT_AI
	VALUES (2662,
	2666,
	2667,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2665,
	2660,
	2668,
	6,
	1,
	'Location::Location::getDistance line: 6');
INSERT INTO ACT_AI
	VALUES (2665,
	2669,
	2670,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2668,
	2660,
	0,
	7,
	1,
	'Location::Location::getDistance line: 7');
INSERT INTO ACT_RET
	VALUES (2668,
	2671);
INSERT INTO V_VAL
	VALUES (2664,
	1,
	1,
	4,
	1,
	8,
	0,
	0,
	0,
	0,
	188,
	2660);
INSERT INTO V_TVL
	VALUES (2664,
	2672);
INSERT INTO V_VAL
	VALUES (2673,
	0,
	0,
	4,
	18,
	22,
	0,
	0,
	0,
	0,
	188,
	2660);
INSERT INTO V_PVL
	VALUES (2673,
	0,
	0,
	0,
	2674);
INSERT INTO V_VAL
	VALUES (2663,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	188,
	2660);
INSERT INTO V_BIN
	VALUES (2663,
	2675,
	2673,
	'-');
INSERT INTO V_VAL
	VALUES (2675,
	0,
	0,
	4,
	32,
	38,
	0,
	0,
	0,
	0,
	188,
	2660);
INSERT INTO V_PVL
	VALUES (2675,
	0,
	0,
	0,
	2676);
INSERT INTO V_VAL
	VALUES (2667,
	1,
	1,
	5,
	1,
	9,
	0,
	0,
	0,
	0,
	188,
	2660);
INSERT INTO V_TVL
	VALUES (2667,
	2677);
INSERT INTO V_VAL
	VALUES (2678,
	0,
	0,
	5,
	19,
	24,
	0,
	0,
	0,
	0,
	188,
	2660);
INSERT INTO V_PVL
	VALUES (2678,
	0,
	0,
	0,
	2679);
INSERT INTO V_VAL
	VALUES (2666,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	188,
	2660);
INSERT INTO V_BIN
	VALUES (2666,
	2680,
	2678,
	'-');
INSERT INTO V_VAL
	VALUES (2680,
	0,
	0,
	5,
	34,
	41,
	0,
	0,
	0,
	0,
	188,
	2660);
INSERT INTO V_PVL
	VALUES (2680,
	0,
	0,
	0,
	2681);
INSERT INTO V_VAL
	VALUES (2670,
	1,
	1,
	6,
	1,
	10,
	0,
	0,
	0,
	0,
	188,
	2660);
INSERT INTO V_TVL
	VALUES (2670,
	2682);
INSERT INTO V_VAL
	VALUES (2683,
	0,
	0,
	6,
	15,
	22,
	0,
	0,
	0,
	0,
	188,
	2660);
INSERT INTO V_TVL
	VALUES (2683,
	2672);
INSERT INTO V_VAL
	VALUES (2684,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	188,
	2660);
INSERT INTO V_BIN
	VALUES (2684,
	2685,
	2683,
	'*');
INSERT INTO V_VAL
	VALUES (2685,
	0,
	0,
	6,
	26,
	33,
	0,
	0,
	0,
	0,
	188,
	2660);
INSERT INTO V_TVL
	VALUES (2685,
	2672);
INSERT INTO V_VAL
	VALUES (2669,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	188,
	2660);
INSERT INTO V_BIN
	VALUES (2669,
	2686,
	2684,
	'+');
INSERT INTO V_VAL
	VALUES (2687,
	0,
	0,
	6,
	39,
	47,
	0,
	0,
	0,
	0,
	188,
	2660);
INSERT INTO V_TVL
	VALUES (2687,
	2677);
INSERT INTO V_VAL
	VALUES (2686,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	188,
	2660);
INSERT INTO V_BIN
	VALUES (2686,
	2688,
	2687,
	'*');
INSERT INTO V_VAL
	VALUES (2688,
	0,
	0,
	6,
	51,
	59,
	0,
	0,
	0,
	0,
	188,
	2660);
INSERT INTO V_TVL
	VALUES (2688,
	2677);
INSERT INTO V_VAL
	VALUES (2689,
	0,
	0,
	7,
	17,
	-1,
	7,
	23,
	0,
	0,
	133,
	2660);
INSERT INTO V_BRV
	VALUES (2689,
	2690,
	1,
	7,
	11);
INSERT INTO V_VAL
	VALUES (2691,
	0,
	0,
	7,
	26,
	35,
	0,
	0,
	0,
	0,
	188,
	2660);
INSERT INTO V_TVL
	VALUES (2691,
	2682);
INSERT INTO V_PAR
	VALUES (2691,
	0,
	2689,
	'x',
	0,
	7,
	23);
INSERT INTO V_VAL
	VALUES (2692,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	133,
	2660);
INSERT INTO V_BIN
	VALUES (2692,
	2693,
	2689,
	'*');
INSERT INTO V_VAL
	VALUES (2693,
	0,
	0,
	7,
	41,
	51,
	0,
	0,
	0,
	0,
	133,
	2660);
INSERT INTO V_SCV
	VALUES (2693,
	2694,
	133);
INSERT INTO V_VAL
	VALUES (2671,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	133,
	2660);
INSERT INTO V_BIN
	VALUES (2671,
	2695,
	2692,
	'*');
INSERT INTO V_VAL
	VALUES (2695,
	0,
	0,
	7,
	55,
	58,
	0,
	0,
	0,
	0,
	188,
	2660);
INSERT INTO V_LIN
	VALUES (2695,
	'1000');
INSERT INTO V_VAR
	VALUES (2672,
	2660,
	'deltaLat',
	1,
	188);
INSERT INTO V_TRN
	VALUES (2672,
	0,
	'');
INSERT INTO V_VAR
	VALUES (2677,
	2660,
	'deltaLong',
	1,
	188);
INSERT INTO V_TRN
	VALUES (2677,
	0,
	'');
INSERT INTO V_VAR
	VALUES (2682,
	2660,
	'sumSquares',
	1,
	188);
INSERT INTO V_TRN
	VALUES (2682,
	0,
	'');
INSERT INTO SPR_PEP
	VALUES (2696,
	70,
	54);
INSERT INTO SPR_PO
	VALUES (2696,
	'registerListener',
	'',
	'',
	1);
INSERT INTO ACT_POB
	VALUES (2697,
	2696);
INSERT INTO ACT_ACT
	VALUES (2697,
	'interface operation',
	0,
	2698,
	0,
	0,
	'Location::Location::registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2698,
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
	2697,
	0);
INSERT INTO SPR_PEP
	VALUES (2699,
	74,
	54);
INSERT INTO SPR_PO
	VALUES (2699,
	'unregisterListener',
	'',
	'',
	1);
INSERT INTO ACT_POB
	VALUES (2700,
	2699);
INSERT INTO ACT_ACT
	VALUES (2700,
	'interface operation',
	0,
	2701,
	0,
	0,
	'Location::Location::unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2701,
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
	2700,
	0);
INSERT INTO PE_PE
	VALUES (2702,
	1,
	0,
	50,
	7);
INSERT INTO EP_PKG
	VALUES (2702,
	0,
	2653,
	'Location',
	'',
	0);
INSERT INTO PE_PE
	VALUES (2703,
	1,
	2702,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (2703,
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
	VALUES (2704,
	'longitudeIncrement',
	'',
	133,
	2703,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (2704,
	133);
INSERT INTO CNST_LSC
	VALUES (2704,
	133,
	'0.00002');
INSERT INTO CNST_SYC
	VALUES (2705,
	'latitudeIncrement',
	'',
	133,
	2703,
	2704,
	133);
INSERT INTO CNST_LFSC
	VALUES (2705,
	133);
INSERT INTO CNST_LSC
	VALUES (2705,
	133,
	'0.00001');
INSERT INTO CNST_SYC
	VALUES (2706,
	'initialLatitude',
	'',
	133,
	2703,
	2705,
	133);
INSERT INTO CNST_LFSC
	VALUES (2706,
	133);
INSERT INTO CNST_LSC
	VALUES (2706,
	133,
	'32.432237');
INSERT INTO CNST_SYC
	VALUES (2707,
	'initialLongitude',
	'',
	133,
	2703,
	2706,
	133);
INSERT INTO CNST_LFSC
	VALUES (2707,
	133);
INSERT INTO CNST_LSC
	VALUES (2707,
	133,
	'-110.812283');
INSERT INTO CNST_SYC
	VALUES (2708,
	'updatePeriod',
	'',
	188,
	2703,
	2707,
	133);
INSERT INTO CNST_LFSC
	VALUES (2708,
	188);
INSERT INTO CNST_LSC
	VALUES (2708,
	188,
	'1000000');
INSERT INTO PE_PE
	VALUES (2709,
	1,
	2702,
	0,
	5);
INSERT INTO S_EE
	VALUES (2709,
	'Math',
	'',
	'MATH',
	0,
	'',
	'Math',
	1);
INSERT INTO S_BRG
	VALUES (2690,
	2709,
	'sqrt',
	'',
	0,
	133,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2710,
	2690,
	'x',
	133,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2711,
	2690);
INSERT INTO ACT_ACT
	VALUES (2711,
	'bridge',
	0,
	2712,
	0,
	0,
	'Math::sqrt',
	0);
INSERT INTO ACT_BLK
	VALUES (2712,
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
	2711,
	0);
INSERT INTO PE_PE
	VALUES (2713,
	1,
	2702,
	0,
	5);
INSERT INTO S_EE
	VALUES (2713,
	'Logging',
	'',
	'LOG',
	0,
	'',
	'Logging',
	1);
INSERT INTO S_BRG
	VALUES (2714,
	2713,
	'LogSuccess',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2715,
	2714,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2716,
	2714);
INSERT INTO ACT_ACT
	VALUES (2716,
	'bridge',
	0,
	2717,
	0,
	0,
	'Logging::LogSuccess',
	0);
INSERT INTO ACT_BLK
	VALUES (2717,
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
	2716,
	0);
INSERT INTO S_BRG
	VALUES (2718,
	2713,
	'LogFailure',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2719,
	2718,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2720,
	2718);
INSERT INTO ACT_ACT
	VALUES (2720,
	'bridge',
	0,
	2721,
	0,
	0,
	'Logging::LogFailure',
	0);
INSERT INTO ACT_BLK
	VALUES (2721,
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
	2720,
	0);
INSERT INTO S_BRG
	VALUES (2722,
	2713,
	'LogInfo',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2723,
	2722,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2724,
	2722);
INSERT INTO ACT_ACT
	VALUES (2724,
	'bridge',
	0,
	2725,
	0,
	0,
	'Logging::LogInfo',
	0);
INSERT INTO ACT_BLK
	VALUES (2725,
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
	2724,
	0);
INSERT INTO S_BRG
	VALUES (2726,
	2713,
	'LogDate',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2727,
	2726,
	'd',
	306,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2728,
	2726,
	'message',
	296,
	0,
	'',
	2727,
	'');
INSERT INTO ACT_BRB
	VALUES (2729,
	2726);
INSERT INTO ACT_ACT
	VALUES (2729,
	'bridge',
	0,
	2730,
	0,
	0,
	'Logging::LogDate',
	0);
INSERT INTO ACT_BLK
	VALUES (2730,
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
	2729,
	0);
INSERT INTO S_BRG
	VALUES (2731,
	2713,
	'LogTime',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2732,
	2731,
	't',
	308,
	0,
	'',
	2733,
	'');
INSERT INTO S_BPARM
	VALUES (2733,
	2731,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2734,
	2731);
INSERT INTO ACT_ACT
	VALUES (2734,
	'bridge',
	0,
	2735,
	0,
	0,
	'Logging::LogTime',
	0);
INSERT INTO ACT_BLK
	VALUES (2735,
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
	2734,
	0);
INSERT INTO S_BRG
	VALUES (2736,
	2713,
	'LogReal',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2737,
	2736,
	'r',
	133,
	0,
	'',
	2738,
	'');
INSERT INTO S_BPARM
	VALUES (2738,
	2736,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2739,
	2736);
INSERT INTO ACT_ACT
	VALUES (2739,
	'bridge',
	0,
	2740,
	0,
	0,
	'Logging::LogReal',
	0);
INSERT INTO ACT_BLK
	VALUES (2740,
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
	2739,
	0);
INSERT INTO S_BRG
	VALUES (2741,
	2713,
	'LogInteger',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2742,
	2741,
	'message',
	188,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2743,
	2741);
INSERT INTO ACT_ACT
	VALUES (2743,
	'bridge',
	0,
	2744,
	0,
	0,
	'Logging::LogInteger',
	0);
INSERT INTO ACT_BLK
	VALUES (2744,
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
	2743,
	0);
INSERT INTO PE_PE
	VALUES (2745,
	1,
	2702,
	0,
	5);
INSERT INTO S_EE
	VALUES (2745,
	'Time',
	'The Time external entity provides date, timestamp, and timer related operations.',
	'TIM',
	0,
	'',
	'Time',
	1);
INSERT INTO S_BRG
	VALUES (2746,
	2745,
	'current_date',
	'',
	1,
	306,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (2747,
	2746);
INSERT INTO ACT_ACT
	VALUES (2747,
	'bridge',
	0,
	2748,
	0,
	0,
	'Time::current_date',
	0);
INSERT INTO ACT_BLK
	VALUES (2748,
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
	2747,
	0);
INSERT INTO S_BRG
	VALUES (2749,
	2745,
	'create_date',
	'',
	1,
	306,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2750,
	2749,
	'second',
	188,
	0,
	'',
	2751,
	'');
INSERT INTO S_BPARM
	VALUES (2752,
	2749,
	'minute',
	188,
	0,
	'',
	2753,
	'');
INSERT INTO S_BPARM
	VALUES (2753,
	2749,
	'hour',
	188,
	0,
	'',
	2754,
	'');
INSERT INTO S_BPARM
	VALUES (2754,
	2749,
	'day',
	188,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2751,
	2749,
	'month',
	188,
	0,
	'',
	2752,
	'');
INSERT INTO S_BPARM
	VALUES (2755,
	2749,
	'year',
	188,
	0,
	'',
	2750,
	'');
INSERT INTO ACT_BRB
	VALUES (2756,
	2749);
INSERT INTO ACT_ACT
	VALUES (2756,
	'bridge',
	0,
	2757,
	0,
	0,
	'Time::create_date',
	0);
INSERT INTO ACT_BLK
	VALUES (2757,
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
	2756,
	0);
INSERT INTO S_BRG
	VALUES (2758,
	2745,
	'get_second',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2759,
	2758,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2760,
	2758);
INSERT INTO ACT_ACT
	VALUES (2760,
	'bridge',
	0,
	2761,
	0,
	0,
	'Time::get_second',
	0);
INSERT INTO ACT_BLK
	VALUES (2761,
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
	2760,
	0);
INSERT INTO S_BRG
	VALUES (2762,
	2745,
	'get_minute',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2763,
	2762,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2764,
	2762);
INSERT INTO ACT_ACT
	VALUES (2764,
	'bridge',
	0,
	2765,
	0,
	0,
	'Time::get_minute',
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
	2745,
	'get_hour',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2767,
	2766,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2768,
	2766);
INSERT INTO ACT_ACT
	VALUES (2768,
	'bridge',
	0,
	2769,
	0,
	0,
	'Time::get_hour',
	0);
INSERT INTO ACT_BLK
	VALUES (2769,
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
	2768,
	0);
INSERT INTO S_BRG
	VALUES (2770,
	2745,
	'get_day',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2771,
	2770,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2772,
	2770);
INSERT INTO ACT_ACT
	VALUES (2772,
	'bridge',
	0,
	2773,
	0,
	0,
	'Time::get_day',
	0);
INSERT INTO ACT_BLK
	VALUES (2773,
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
	2772,
	0);
INSERT INTO S_BRG
	VALUES (2774,
	2745,
	'get_month',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2775,
	2774,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2776,
	2774);
INSERT INTO ACT_ACT
	VALUES (2776,
	'bridge',
	0,
	2777,
	0,
	0,
	'Time::get_month',
	0);
INSERT INTO ACT_BLK
	VALUES (2777,
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
	2776,
	0);
INSERT INTO S_BRG
	VALUES (2778,
	2745,
	'get_year',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2779,
	2778,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2780,
	2778);
INSERT INTO ACT_ACT
	VALUES (2780,
	'bridge',
	0,
	2781,
	0,
	0,
	'Time::get_year',
	0);
INSERT INTO ACT_BLK
	VALUES (2781,
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
	2780,
	0);
INSERT INTO S_BRG
	VALUES (2782,
	2745,
	'current_clock',
	'',
	1,
	308,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (2783,
	2782);
INSERT INTO ACT_ACT
	VALUES (2783,
	'bridge',
	0,
	2784,
	0,
	0,
	'Time::current_clock',
	0);
INSERT INTO ACT_BLK
	VALUES (2784,
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
	2783,
	0);
INSERT INTO S_BRG
	VALUES (2785,
	2745,
	'timer_start',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Returns the instance
handle of the timer.',
	1,
	307,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2786,
	2785,
	'microseconds',
	188,
	0,
	'',
	2787,
	'');
INSERT INTO S_BPARM
	VALUES (2787,
	2785,
	'event_inst',
	302,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2788,
	2785);
INSERT INTO ACT_ACT
	VALUES (2788,
	'bridge',
	0,
	2789,
	0,
	0,
	'Time::timer_start',
	0);
INSERT INTO ACT_BLK
	VALUES (2789,
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
	2788,
	0);
INSERT INTO S_BRG
	VALUES (2790,
	2745,
	'timer_start_recurring',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Upon expiration, the
timer will be restarted and fire again in the specified number of microseconds
generating the passed event. This bridge operation returns the instance handle
of the timer.',
	1,
	307,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2791,
	2790,
	'microseconds',
	188,
	0,
	'',
	2792,
	'');
INSERT INTO S_BPARM
	VALUES (2792,
	2790,
	'event_inst',
	302,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2793,
	2790);
INSERT INTO ACT_ACT
	VALUES (2793,
	'bridge',
	0,
	2794,
	0,
	0,
	'Time::timer_start_recurring',
	0);
INSERT INTO ACT_BLK
	VALUES (2794,
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
	2793,
	0);
INSERT INTO S_BRG
	VALUES (2795,
	2745,
	'timer_remaining_time',
	'Returns the time remaining (in microseconds) for the passed timer instance. If
the timer has expired, a zero value is returned.',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2796,
	2795,
	'timer_inst_ref',
	307,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2797,
	2795);
INSERT INTO ACT_ACT
	VALUES (2797,
	'bridge',
	0,
	2798,
	0,
	0,
	'Time::timer_remaining_time',
	0);
INSERT INTO ACT_BLK
	VALUES (2798,
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
	2797,
	0);
INSERT INTO S_BRG
	VALUES (2799,
	2745,
	'timer_reset_time',
	'This bridge operation attempts to set the passed existing timer to expire in
the specified number of microseconds. If the timer exists (that is, it has not
expired), a TRUE value is returned. If the timer no longer exists, a FALSE value
is returned.',
	1,
	295,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2800,
	2799,
	'timer_inst_ref',
	307,
	0,
	'',
	2801,
	'');
INSERT INTO S_BPARM
	VALUES (2801,
	2799,
	'microseconds',
	188,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2802,
	2799);
INSERT INTO ACT_ACT
	VALUES (2802,
	'bridge',
	0,
	2803,
	0,
	0,
	'Time::timer_reset_time',
	0);
INSERT INTO ACT_BLK
	VALUES (2803,
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
	2802,
	0);
INSERT INTO S_BRG
	VALUES (2804,
	2745,
	'timer_add_time',
	'This bridge operation attempts to add the specified number of microseconds to a
passed existing timer. If the timer exists (that is, it has not expired), a TRUE
value is returned. If the timer no longer exists, a FALSE value is returned.',
	1,
	295,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2805,
	2804,
	'timer_inst_ref',
	307,
	0,
	'',
	2806,
	'');
INSERT INTO S_BPARM
	VALUES (2806,
	2804,
	'microseconds',
	188,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2807,
	2804);
INSERT INTO ACT_ACT
	VALUES (2807,
	'bridge',
	0,
	2808,
	0,
	0,
	'Time::timer_add_time',
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
	2745,
	'timer_cancel',
	'This bridge operation cancels and deletes the passed timer instance. If the 
timer exists (that is, it had not expired), a TRUE value is returned. If the
timer no longer exists, a FALSE value is returned.',
	1,
	295,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2810,
	2809,
	'timer_inst_ref',
	307,
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
	'Time::timer_cancel',
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
INSERT INTO PE_PE
	VALUES (2813,
	1,
	2702,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (2813,
	'GPS',
	1,
	'GPS',
	'Simulates a GPS.',
	0);
INSERT INTO O_TFR
	VALUES (2814,
	2813,
	'activate',
	'',
	294,
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
	VALUES (2815,
	2814);
INSERT INTO ACT_ACT
	VALUES (2815,
	'class operation',
	0,
	2816,
	0,
	0,
	'GPS::activate',
	0);
INSERT INTO ACT_BLK
	VALUES (2816,
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
	2815,
	0);
INSERT INTO ACT_SMT
	VALUES (2817,
	2816,
	2818,
	3,
	1,
	'GPS::activate line: 3');
INSERT INTO ACT_FIO
	VALUES (2817,
	2819,
	1,
	'any',
	2813,
	3,
	34);
INSERT INTO ACT_SMT
	VALUES (2818,
	2816,
	2820,
	4,
	1,
	'GPS::activate line: 4');
INSERT INTO ACT_IF
	VALUES (2818,
	2821,
	2822,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2820,
	2816,
	2823,
	13,
	1,
	'GPS::activate line: 13');
INSERT INTO E_ESS
	VALUES (2820,
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
	VALUES (2820,
	1,
	2824);
INSERT INTO E_CSME
	VALUES (2820,
	2825);
INSERT INTO E_CEA
	VALUES (2820);
INSERT INTO ACT_SMT
	VALUES (2823,
	2816,
	0,
	14,
	1,
	'GPS::activate line: 14');
INSERT INTO ACT_AI
	VALUES (2823,
	2826,
	2827,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2828,
	0,
	0,
	4,
	12,
	14,
	0,
	0,
	0,
	0,
	300,
	2816);
INSERT INTO V_IRF
	VALUES (2828,
	2819);
INSERT INTO V_VAL
	VALUES (2822,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	2816);
INSERT INTO V_UNY
	VALUES (2822,
	2828,
	'empty');
INSERT INTO V_VAL
	VALUES (2829,
	1,
	0,
	14,
	1,
	3,
	0,
	0,
	0,
	0,
	300,
	2816);
INSERT INTO V_IRF
	VALUES (2829,
	2819);
INSERT INTO V_VAL
	VALUES (2827,
	1,
	0,
	14,
	5,
	9,
	0,
	0,
	0,
	0,
	307,
	2816);
INSERT INTO V_AVL
	VALUES (2827,
	2829,
	2813,
	2830);
INSERT INTO V_VAL
	VALUES (2826,
	0,
	0,
	14,
	18,
	-1,
	14,
	41,
	14,
	59,
	307,
	2816);
INSERT INTO V_BRV
	VALUES (2826,
	2790,
	1,
	14,
	13);
INSERT INTO V_VAL
	VALUES (2831,
	0,
	0,
	14,
	53,
	56,
	0,
	0,
	0,
	0,
	302,
	2816);
INSERT INTO V_TVL
	VALUES (2831,
	2824);
INSERT INTO V_PAR
	VALUES (2831,
	0,
	2826,
	'event_inst',
	2832,
	14,
	41);
INSERT INTO V_VAL
	VALUES (2832,
	0,
	0,
	14,
	73,
	84,
	0,
	0,
	0,
	0,
	188,
	2816);
INSERT INTO V_SCV
	VALUES (2832,
	2708,
	188);
INSERT INTO V_PAR
	VALUES (2832,
	0,
	2826,
	'microseconds',
	0,
	14,
	59);
INSERT INTO V_VAR
	VALUES (2819,
	2816,
	'gps',
	1,
	300);
INSERT INTO V_INT
	VALUES (2819,
	0,
	2813);
INSERT INTO V_VAR
	VALUES (2824,
	2816,
	'tick',
	1,
	302);
INSERT INTO V_TRN
	VALUES (2824,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (2821,
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
	2815,
	0);
INSERT INTO ACT_SMT
	VALUES (2833,
	2821,
	2834,
	6,
	3,
	'GPS::activate line: 6');
INSERT INTO ACT_CR
	VALUES (2833,
	2819,
	0,
	2813,
	6,
	33);
INSERT INTO ACT_SMT
	VALUES (2834,
	2821,
	2835,
	7,
	3,
	'GPS::activate line: 7');
INSERT INTO ACT_AI
	VALUES (2834,
	2836,
	2837,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2835,
	2821,
	2838,
	8,
	3,
	'GPS::activate line: 8');
INSERT INTO ACT_AI
	VALUES (2835,
	2839,
	2840,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2838,
	2821,
	0,
	9,
	3,
	'GPS::activate line: 9');
INSERT INTO ACT_AI
	VALUES (2838,
	2841,
	2842,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2843,
	1,
	0,
	7,
	3,
	5,
	0,
	0,
	0,
	0,
	300,
	2821);
INSERT INTO V_IRF
	VALUES (2843,
	2819);
INSERT INTO V_VAL
	VALUES (2837,
	1,
	0,
	7,
	7,
	20,
	0,
	0,
	0,
	0,
	188,
	2821);
INSERT INTO V_AVL
	VALUES (2837,
	2843,
	2813,
	2844);
INSERT INTO V_VAL
	VALUES (2836,
	0,
	0,
	7,
	24,
	24,
	0,
	0,
	0,
	0,
	188,
	2821);
INSERT INTO V_LIN
	VALUES (2836,
	'0');
INSERT INTO V_VAL
	VALUES (2845,
	1,
	0,
	8,
	3,
	5,
	0,
	0,
	0,
	0,
	300,
	2821);
INSERT INTO V_IRF
	VALUES (2845,
	2819);
INSERT INTO V_VAL
	VALUES (2840,
	1,
	0,
	8,
	7,
	21,
	0,
	0,
	0,
	0,
	133,
	2821);
INSERT INTO V_AVL
	VALUES (2840,
	2845,
	2813,
	2846);
INSERT INTO V_VAL
	VALUES (2839,
	0,
	0,
	8,
	26,
	40,
	0,
	0,
	0,
	0,
	133,
	2821);
INSERT INTO V_SCV
	VALUES (2839,
	2706,
	133);
INSERT INTO V_VAL
	VALUES (2847,
	1,
	0,
	9,
	3,
	5,
	0,
	0,
	0,
	0,
	300,
	2821);
INSERT INTO V_IRF
	VALUES (2847,
	2819);
INSERT INTO V_VAL
	VALUES (2842,
	1,
	0,
	9,
	7,
	22,
	0,
	0,
	0,
	0,
	133,
	2821);
INSERT INTO V_AVL
	VALUES (2842,
	2847,
	2813,
	2848);
INSERT INTO V_VAL
	VALUES (2841,
	0,
	0,
	9,
	26,
	41,
	0,
	0,
	0,
	0,
	133,
	2821);
INSERT INTO V_SCV
	VALUES (2841,
	2707,
	133);
INSERT INTO O_NBATTR
	VALUES (2830,
	2813);
INSERT INTO O_BATTR
	VALUES (2830,
	2813);
INSERT INTO O_ATTR
	VALUES (2830,
	2813,
	2844,
	'timer',
	'Handle for underlying timer mechanism enabling the generation 
of delayed events that drive the GPS simulator.',
	'',
	'timer',
	0,
	307,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2846,
	2813);
INSERT INTO O_BATTR
	VALUES (2846,
	2813);
INSERT INTO O_ATTR
	VALUES (2846,
	2813,
	0,
	'currentLatitude',
	'Current latitude, expressed in decimal degrees, of the simulated GPS.',
	'',
	'currentLatitude',
	0,
	133,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2848,
	2813);
INSERT INTO O_BATTR
	VALUES (2848,
	2813);
INSERT INTO O_ATTR
	VALUES (2848,
	2813,
	2846,
	'currentLongitude',
	'Current longitude, expressed in decimal degrees, of the simulated GPS.',
	'',
	'currentLongitude',
	0,
	133,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2844,
	2813);
INSERT INTO O_BATTR
	VALUES (2844,
	2813);
INSERT INTO O_ATTR
	VALUES (2844,
	2813,
	2848,
	'motionSegments',
	'The number of motion segments simulated by the GPS.',
	'',
	'motionSegments',
	0,
	188,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2813);
INSERT INTO O_ID
	VALUES (1,
	2813);
INSERT INTO O_ID
	VALUES (2,
	2813);
INSERT INTO SM_ASM
	VALUES (2849,
	2813);
INSERT INTO SM_SM
	VALUES (2849,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (2849);
INSERT INTO SM_LEVT
	VALUES (2825,
	2849,
	0);
INSERT INTO SM_SEVT
	VALUES (2825,
	2849,
	0);
INSERT INTO SM_EVT
	VALUES (2825,
	2849,
	0,
	1,
	'tick',
	0,
	'',
	'GPS_A1',
	'');
INSERT INTO SM_LEVT
	VALUES (2850,
	2849,
	0);
INSERT INTO SM_SEVT
	VALUES (2850,
	2849,
	0);
INSERT INTO SM_EVT
	VALUES (2850,
	2849,
	0,
	2,
	'registerListener',
	0,
	'',
	'GPS_A2',
	'');
INSERT INTO SM_LEVT
	VALUES (2851,
	2849,
	0);
INSERT INTO SM_SEVT
	VALUES (2851,
	2849,
	0);
INSERT INTO SM_EVT
	VALUES (2851,
	2849,
	0,
	3,
	'unregisterListener',
	0,
	'',
	'GPS_A3',
	'');
INSERT INTO SM_STATE
	VALUES (2852,
	2849,
	0,
	'idle',
	1,
	0);
INSERT INTO SM_EIGN
	VALUES (2852,
	2825,
	2849,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2852,
	2825,
	2849,
	0);
INSERT INTO SM_SEME
	VALUES (2852,
	2850,
	2849,
	0);
INSERT INTO SM_CH
	VALUES (2852,
	2851,
	2849,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2852,
	2851,
	2849,
	0);
INSERT INTO SM_MOAH
	VALUES (2853,
	2849,
	2852);
INSERT INTO SM_AH
	VALUES (2853,
	2849);
INSERT INTO SM_ACT
	VALUES (2853,
	2849,
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
	VALUES (2854,
	2849,
	2853);
INSERT INTO ACT_ACT
	VALUES (2854,
	'class state',
	0,
	2855,
	0,
	0,
	'GPS::idle',
	0);
INSERT INTO ACT_BLK
	VALUES (2855,
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
	2854,
	0);
INSERT INTO ACT_SMT
	VALUES (2856,
	2855,
	2857,
	2,
	1,
	'GPS::idle line: 2');
INSERT INTO ACT_FIO
	VALUES (2856,
	2858,
	1,
	'any',
	2813,
	2,
	34);
INSERT INTO ACT_SMT
	VALUES (2857,
	2855,
	2859,
	3,
	1,
	'GPS::idle line: 3');
INSERT INTO ACT_AI
	VALUES (2857,
	2860,
	2861,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2859,
	2855,
	2862,
	4,
	1,
	'GPS::idle line: 4');
INSERT INTO ACT_BRG
	VALUES (2859,
	2722,
	4,
	6,
	4,
	1);
INSERT INTO ACT_SMT
	VALUES (2862,
	2855,
	0,
	6,
	1,
	'GPS::idle line: 6');
INSERT INTO ACT_IF
	VALUES (2862,
	2863,
	2864,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2861,
	1,
	1,
	3,
	1,
	3,
	0,
	0,
	0,
	0,
	295,
	2855);
INSERT INTO V_TVL
	VALUES (2861,
	2865);
INSERT INTO V_VAL
	VALUES (2860,
	0,
	0,
	3,
	12,
	-1,
	3,
	25,
	0,
	0,
	295,
	2855);
INSERT INTO V_BRV
	VALUES (2860,
	2809,
	1,
	3,
	7);
INSERT INTO V_VAL
	VALUES (2866,
	0,
	0,
	3,
	41,
	43,
	0,
	0,
	0,
	0,
	300,
	2855);
INSERT INTO V_IRF
	VALUES (2866,
	2858);
INSERT INTO V_VAL
	VALUES (2867,
	0,
	0,
	3,
	45,
	49,
	0,
	0,
	0,
	0,
	307,
	2855);
INSERT INTO V_AVL
	VALUES (2867,
	2866,
	2813,
	2830);
INSERT INTO V_PAR
	VALUES (2867,
	0,
	2860,
	'timer_inst_ref',
	0,
	3,
	25);
INSERT INTO V_VAL
	VALUES (2868,
	0,
	0,
	4,
	23,
	54,
	0,
	0,
	0,
	0,
	296,
	2855);
INSERT INTO V_LST
	VALUES (2868,
	'Location listener unregistered.');
INSERT INTO V_PAR
	VALUES (2868,
	2859,
	0,
	'message',
	0,
	4,
	14);
INSERT INTO V_VAL
	VALUES (2869,
	0,
	0,
	6,
	10,
	12,
	0,
	0,
	0,
	0,
	295,
	2855);
INSERT INTO V_TVL
	VALUES (2869,
	2865);
INSERT INTO V_VAL
	VALUES (2864,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	2855);
INSERT INTO V_UNY
	VALUES (2864,
	2869,
	'not');
INSERT INTO V_VAR
	VALUES (2858,
	2855,
	'gps',
	1,
	300);
INSERT INTO V_INT
	VALUES (2858,
	0,
	2813);
INSERT INTO V_VAR
	VALUES (2865,
	2855,
	'res',
	1,
	295);
INSERT INTO V_TRN
	VALUES (2865,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (2863,
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
	2854,
	0);
INSERT INTO ACT_SMT
	VALUES (2870,
	2863,
	0,
	7,
	3,
	'GPS::idle line: 7');
INSERT INTO ACT_BRG
	VALUES (2870,
	2718,
	7,
	8,
	7,
	3);
INSERT INTO V_VAL
	VALUES (2871,
	0,
	0,
	7,
	29,
	70,
	0,
	0,
	0,
	0,
	296,
	2863);
INSERT INTO V_LST
	VALUES (2871,
	'Location listener: timer_cancel() failed.');
INSERT INTO V_PAR
	VALUES (2871,
	2870,
	0,
	'message',
	0,
	7,
	20);
INSERT INTO SM_STATE
	VALUES (2872,
	2849,
	0,
	'locating',
	2,
	0);
INSERT INTO SM_SEME
	VALUES (2872,
	2825,
	2849,
	0);
INSERT INTO SM_CH
	VALUES (2872,
	2850,
	2849,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2872,
	2850,
	2849,
	0);
INSERT INTO SM_SEME
	VALUES (2872,
	2851,
	2849,
	0);
INSERT INTO SM_MOAH
	VALUES (2873,
	2849,
	2872);
INSERT INTO SM_AH
	VALUES (2873,
	2849);
INSERT INTO SM_ACT
	VALUES (2873,
	2849,
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
	VALUES (2874,
	2849,
	2873);
INSERT INTO ACT_ACT
	VALUES (2874,
	'class state',
	0,
	2875,
	0,
	0,
	'GPS::locating',
	0);
INSERT INTO ACT_BLK
	VALUES (2875,
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
	2874,
	0);
INSERT INTO ACT_SMT
	VALUES (2876,
	2875,
	2877,
	2,
	1,
	'GPS::locating line: 2');
INSERT INTO ACT_FIO
	VALUES (2876,
	2878,
	1,
	'any',
	2813,
	2,
	34);
INSERT INTO ACT_SMT
	VALUES (2877,
	2875,
	0,
	3,
	1,
	'GPS::locating line: 3');
INSERT INTO ACT_IF
	VALUES (2877,
	2879,
	2880,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2881,
	2875,
	0,
	6,
	1,
	'GPS::locating line: 6');
INSERT INTO ACT_EL
	VALUES (2881,
	2882,
	2883,
	2877);
INSERT INTO ACT_SMT
	VALUES (2884,
	2875,
	0,
	9,
	1,
	'GPS::locating line: 9');
INSERT INTO ACT_E
	VALUES (2884,
	2885,
	2877);
INSERT INTO V_VAL
	VALUES (2886,
	0,
	0,
	3,
	7,
	9,
	0,
	0,
	0,
	0,
	300,
	2875);
INSERT INTO V_IRF
	VALUES (2886,
	2878);
INSERT INTO V_VAL
	VALUES (2887,
	0,
	0,
	3,
	11,
	24,
	0,
	0,
	0,
	0,
	188,
	2875);
INSERT INTO V_AVL
	VALUES (2887,
	2886,
	2813,
	2844);
INSERT INTO V_VAL
	VALUES (2888,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	188,
	2875);
INSERT INTO V_BIN
	VALUES (2888,
	2889,
	2887,
	'%');
INSERT INTO V_VAL
	VALUES (2889,
	0,
	0,
	3,
	28,
	28,
	0,
	0,
	0,
	0,
	188,
	2875);
INSERT INTO V_LIN
	VALUES (2889,
	'3');
INSERT INTO V_VAL
	VALUES (2880,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	2875);
INSERT INTO V_BIN
	VALUES (2880,
	2890,
	2888,
	'==');
INSERT INTO V_VAL
	VALUES (2890,
	0,
	0,
	3,
	34,
	34,
	0,
	0,
	0,
	0,
	188,
	2875);
INSERT INTO V_LIN
	VALUES (2890,
	'0');
INSERT INTO V_VAL
	VALUES (2891,
	0,
	0,
	6,
	9,
	11,
	0,
	0,
	0,
	0,
	300,
	2875);
INSERT INTO V_IRF
	VALUES (2891,
	2878);
INSERT INTO V_VAL
	VALUES (2892,
	0,
	0,
	6,
	13,
	26,
	0,
	0,
	0,
	0,
	188,
	2875);
INSERT INTO V_AVL
	VALUES (2892,
	2891,
	2813,
	2844);
INSERT INTO V_VAL
	VALUES (2893,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	188,
	2875);
INSERT INTO V_BIN
	VALUES (2893,
	2894,
	2892,
	'%');
INSERT INTO V_VAL
	VALUES (2894,
	0,
	0,
	6,
	29,
	29,
	0,
	0,
	0,
	0,
	188,
	2875);
INSERT INTO V_LIN
	VALUES (2894,
	'5');
INSERT INTO V_VAL
	VALUES (2883,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	295,
	2875);
INSERT INTO V_BIN
	VALUES (2883,
	2895,
	2893,
	'==');
INSERT INTO V_VAL
	VALUES (2895,
	0,
	0,
	6,
	35,
	35,
	0,
	0,
	0,
	0,
	188,
	2875);
INSERT INTO V_LIN
	VALUES (2895,
	'0');
INSERT INTO V_VAR
	VALUES (2878,
	2875,
	'gps',
	1,
	300);
INSERT INTO V_INT
	VALUES (2878,
	0,
	2813);
INSERT INTO ACT_BLK
	VALUES (2879,
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
	2874,
	0);
INSERT INTO ACT_SMT
	VALUES (2896,
	2879,
	2897,
	4,
	3,
	'GPS::locating line: 4');
INSERT INTO ACT_AI
	VALUES (2896,
	2898,
	2899,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2897,
	2879,
	0,
	5,
	3,
	'GPS::locating line: 5');
INSERT INTO ACT_AI
	VALUES (2897,
	2900,
	2901,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2902,
	1,
	0,
	4,
	3,
	5,
	0,
	0,
	0,
	0,
	300,
	2879);
INSERT INTO V_IRF
	VALUES (2902,
	2878);
INSERT INTO V_VAL
	VALUES (2899,
	1,
	0,
	4,
	7,
	22,
	0,
	0,
	0,
	0,
	133,
	2879);
INSERT INTO V_AVL
	VALUES (2899,
	2902,
	2813,
	2848);
INSERT INTO V_VAL
	VALUES (2903,
	0,
	0,
	4,
	26,
	28,
	0,
	0,
	0,
	0,
	300,
	2879);
INSERT INTO V_IRF
	VALUES (2903,
	2878);
INSERT INTO V_VAL
	VALUES (2904,
	0,
	0,
	4,
	30,
	45,
	0,
	0,
	0,
	0,
	133,
	2879);
INSERT INTO V_AVL
	VALUES (2904,
	2903,
	2813,
	2848);
INSERT INTO V_VAL
	VALUES (2898,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	133,
	2879);
INSERT INTO V_BIN
	VALUES (2898,
	2905,
	2904,
	'+');
INSERT INTO V_VAL
	VALUES (2906,
	0,
	0,
	4,
	50,
	67,
	0,
	0,
	0,
	0,
	133,
	2879);
INSERT INTO V_SCV
	VALUES (2906,
	2704,
	133);
INSERT INTO V_VAL
	VALUES (2905,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	133,
	2879);
INSERT INTO V_BIN
	VALUES (2905,
	2907,
	2906,
	'*');
INSERT INTO V_VAL
	VALUES (2907,
	0,
	0,
	4,
	71,
	71,
	0,
	0,
	0,
	0,
	188,
	2879);
INSERT INTO V_LIN
	VALUES (2907,
	'2');
INSERT INTO V_VAL
	VALUES (2908,
	1,
	0,
	5,
	3,
	5,
	0,
	0,
	0,
	0,
	300,
	2879);
INSERT INTO V_IRF
	VALUES (2908,
	2878);
INSERT INTO V_VAL
	VALUES (2901,
	1,
	0,
	5,
	7,
	21,
	0,
	0,
	0,
	0,
	133,
	2879);
INSERT INTO V_AVL
	VALUES (2901,
	2908,
	2813,
	2846);
INSERT INTO V_VAL
	VALUES (2909,
	0,
	0,
	5,
	25,
	27,
	0,
	0,
	0,
	0,
	300,
	2879);
INSERT INTO V_IRF
	VALUES (2909,
	2878);
INSERT INTO V_VAL
	VALUES (2910,
	0,
	0,
	5,
	29,
	43,
	0,
	0,
	0,
	0,
	133,
	2879);
INSERT INTO V_AVL
	VALUES (2910,
	2909,
	2813,
	2846);
INSERT INTO V_VAL
	VALUES (2900,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	133,
	2879);
INSERT INTO V_BIN
	VALUES (2900,
	2911,
	2910,
	'+');
INSERT INTO V_VAL
	VALUES (2911,
	0,
	0,
	5,
	47,
	63,
	0,
	0,
	0,
	0,
	133,
	2879);
INSERT INTO V_SCV
	VALUES (2911,
	2705,
	133);
INSERT INTO ACT_BLK
	VALUES (2882,
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
	2874,
	0);
INSERT INTO ACT_SMT
	VALUES (2912,
	2882,
	2913,
	7,
	3,
	'GPS::locating line: 7');
INSERT INTO ACT_AI
	VALUES (2912,
	2914,
	2915,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2913,
	2882,
	0,
	8,
	3,
	'GPS::locating line: 8');
INSERT INTO ACT_AI
	VALUES (2913,
	2916,
	2917,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2918,
	1,
	0,
	7,
	3,
	5,
	0,
	0,
	0,
	0,
	300,
	2882);
INSERT INTO V_IRF
	VALUES (2918,
	2878);
INSERT INTO V_VAL
	VALUES (2915,
	1,
	0,
	7,
	7,
	22,
	0,
	0,
	0,
	0,
	133,
	2882);
INSERT INTO V_AVL
	VALUES (2915,
	2918,
	2813,
	2848);
INSERT INTO V_VAL
	VALUES (2919,
	0,
	0,
	7,
	26,
	28,
	0,
	0,
	0,
	0,
	300,
	2882);
INSERT INTO V_IRF
	VALUES (2919,
	2878);
INSERT INTO V_VAL
	VALUES (2920,
	0,
	0,
	7,
	30,
	45,
	0,
	0,
	0,
	0,
	133,
	2882);
INSERT INTO V_AVL
	VALUES (2920,
	2919,
	2813,
	2848);
INSERT INTO V_VAL
	VALUES (2914,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	133,
	2882);
INSERT INTO V_BIN
	VALUES (2914,
	2921,
	2920,
	'+');
INSERT INTO V_VAL
	VALUES (2921,
	0,
	0,
	7,
	49,
	66,
	0,
	0,
	0,
	0,
	133,
	2882);
INSERT INTO V_SCV
	VALUES (2921,
	2704,
	133);
INSERT INTO V_VAL
	VALUES (2922,
	1,
	0,
	8,
	3,
	5,
	0,
	0,
	0,
	0,
	300,
	2882);
INSERT INTO V_IRF
	VALUES (2922,
	2878);
INSERT INTO V_VAL
	VALUES (2917,
	1,
	0,
	8,
	7,
	21,
	0,
	0,
	0,
	0,
	133,
	2882);
INSERT INTO V_AVL
	VALUES (2917,
	2922,
	2813,
	2846);
INSERT INTO V_VAL
	VALUES (2923,
	0,
	0,
	8,
	25,
	27,
	0,
	0,
	0,
	0,
	300,
	2882);
INSERT INTO V_IRF
	VALUES (2923,
	2878);
INSERT INTO V_VAL
	VALUES (2924,
	0,
	0,
	8,
	29,
	43,
	0,
	0,
	0,
	0,
	133,
	2882);
INSERT INTO V_AVL
	VALUES (2924,
	2923,
	2813,
	2846);
INSERT INTO V_VAL
	VALUES (2916,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	133,
	2882);
INSERT INTO V_BIN
	VALUES (2916,
	2925,
	2924,
	'+');
INSERT INTO V_VAL
	VALUES (2926,
	0,
	0,
	8,
	48,
	64,
	0,
	0,
	0,
	0,
	133,
	2882);
INSERT INTO V_SCV
	VALUES (2926,
	2705,
	133);
INSERT INTO V_VAL
	VALUES (2925,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	133,
	2882);
INSERT INTO V_BIN
	VALUES (2925,
	2927,
	2926,
	'*');
INSERT INTO V_VAL
	VALUES (2927,
	0,
	0,
	8,
	68,
	68,
	0,
	0,
	0,
	0,
	188,
	2882);
INSERT INTO V_LIN
	VALUES (2927,
	'3');
INSERT INTO ACT_BLK
	VALUES (2885,
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
	2874,
	0);
INSERT INTO ACT_SMT
	VALUES (2928,
	2885,
	2929,
	10,
	3,
	'GPS::locating line: 10');
INSERT INTO ACT_AI
	VALUES (2928,
	2930,
	2931,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2929,
	2885,
	0,
	11,
	3,
	'GPS::locating line: 11');
INSERT INTO ACT_AI
	VALUES (2929,
	2932,
	2933,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2934,
	1,
	0,
	10,
	3,
	5,
	0,
	0,
	0,
	0,
	300,
	2885);
INSERT INTO V_IRF
	VALUES (2934,
	2878);
INSERT INTO V_VAL
	VALUES (2931,
	1,
	0,
	10,
	7,
	22,
	0,
	0,
	0,
	0,
	133,
	2885);
INSERT INTO V_AVL
	VALUES (2931,
	2934,
	2813,
	2848);
INSERT INTO V_VAL
	VALUES (2935,
	0,
	0,
	10,
	26,
	28,
	0,
	0,
	0,
	0,
	300,
	2885);
INSERT INTO V_IRF
	VALUES (2935,
	2878);
INSERT INTO V_VAL
	VALUES (2936,
	0,
	0,
	10,
	30,
	45,
	0,
	0,
	0,
	0,
	133,
	2885);
INSERT INTO V_AVL
	VALUES (2936,
	2935,
	2813,
	2848);
INSERT INTO V_VAL
	VALUES (2930,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	133,
	2885);
INSERT INTO V_BIN
	VALUES (2930,
	2937,
	2936,
	'+');
INSERT INTO V_VAL
	VALUES (2937,
	0,
	0,
	10,
	49,
	66,
	0,
	0,
	0,
	0,
	133,
	2885);
INSERT INTO V_SCV
	VALUES (2937,
	2704,
	133);
INSERT INTO V_VAL
	VALUES (2938,
	1,
	0,
	11,
	3,
	5,
	0,
	0,
	0,
	0,
	300,
	2885);
INSERT INTO V_IRF
	VALUES (2938,
	2878);
INSERT INTO V_VAL
	VALUES (2933,
	1,
	0,
	11,
	7,
	21,
	0,
	0,
	0,
	0,
	133,
	2885);
INSERT INTO V_AVL
	VALUES (2933,
	2938,
	2813,
	2846);
INSERT INTO V_VAL
	VALUES (2939,
	0,
	0,
	11,
	25,
	27,
	0,
	0,
	0,
	0,
	300,
	2885);
INSERT INTO V_IRF
	VALUES (2939,
	2878);
INSERT INTO V_VAL
	VALUES (2940,
	0,
	0,
	11,
	29,
	43,
	0,
	0,
	0,
	0,
	133,
	2885);
INSERT INTO V_AVL
	VALUES (2940,
	2939,
	2813,
	2846);
INSERT INTO V_VAL
	VALUES (2932,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	133,
	2885);
INSERT INTO V_BIN
	VALUES (2932,
	2941,
	2940,
	'+');
INSERT INTO V_VAL
	VALUES (2941,
	0,
	0,
	11,
	47,
	63,
	0,
	0,
	0,
	0,
	133,
	2885);
INSERT INTO V_SCV
	VALUES (2941,
	2705,
	133);
INSERT INTO SM_NSTXN
	VALUES (2942,
	2849,
	2852,
	2850,
	0);
INSERT INTO SM_TAH
	VALUES (2943,
	2849,
	2942);
INSERT INTO SM_AH
	VALUES (2943,
	2849);
INSERT INTO SM_ACT
	VALUES (2943,
	2849,
	1,
	'// Activate the simulated GPS.
GPS::activate();

LOG::LogInfo(message: "Location listener registered.");
',
	'');
INSERT INTO ACT_TAB
	VALUES (2944,
	2849,
	2943);
INSERT INTO ACT_ACT
	VALUES (2944,
	'class transition',
	0,
	2945,
	0,
	0,
	'GPS_A2: registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2945,
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
	2944,
	0);
INSERT INTO ACT_SMT
	VALUES (2946,
	2945,
	2947,
	2,
	1,
	'GPS_A2: registerListener line: 2');
INSERT INTO ACT_TFM
	VALUES (2946,
	2814,
	0,
	2,
	6,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (2947,
	2945,
	0,
	4,
	1,
	'GPS_A2: registerListener line: 4');
INSERT INTO ACT_BRG
	VALUES (2947,
	2722,
	4,
	6,
	4,
	1);
INSERT INTO V_VAL
	VALUES (2948,
	0,
	0,
	4,
	23,
	52,
	0,
	0,
	0,
	0,
	296,
	2945);
INSERT INTO V_LST
	VALUES (2948,
	'Location listener registered.');
INSERT INTO V_PAR
	VALUES (2948,
	2947,
	0,
	'message',
	0,
	4,
	14);
INSERT INTO SM_TXN
	VALUES (2942,
	2849,
	2872,
	0);
INSERT INTO SM_NSTXN
	VALUES (2949,
	2849,
	2872,
	2851,
	0);
INSERT INTO SM_TAH
	VALUES (2950,
	2849,
	2949);
INSERT INTO SM_AH
	VALUES (2950,
	2849);
INSERT INTO SM_ACT
	VALUES (2950,
	2849,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2951,
	2849,
	2950);
INSERT INTO ACT_ACT
	VALUES (2951,
	'class transition',
	0,
	2952,
	0,
	0,
	'GPS_A3: unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2952,
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
	2951,
	0);
INSERT INTO SM_TXN
	VALUES (2949,
	2849,
	2852,
	0);
INSERT INTO SM_NSTXN
	VALUES (2953,
	2849,
	2872,
	2825,
	0);
INSERT INTO SM_TAH
	VALUES (2954,
	2849,
	2953);
INSERT INTO SM_AH
	VALUES (2954,
	2849);
INSERT INTO SM_ACT
	VALUES (2954,
	2849,
	1,
	'// Increment simulated motion segment count.
select any gps from instances of GPS;
gps.motionSegments = gps.motionSegments + 1;
',
	'');
INSERT INTO ACT_TAB
	VALUES (2955,
	2849,
	2954);
INSERT INTO ACT_ACT
	VALUES (2955,
	'class transition',
	0,
	2956,
	0,
	0,
	'GPS_A1: tick',
	0);
INSERT INTO ACT_BLK
	VALUES (2956,
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
	2955,
	0);
INSERT INTO ACT_SMT
	VALUES (2957,
	2956,
	2958,
	2,
	1,
	'GPS_A1: tick line: 2');
INSERT INTO ACT_FIO
	VALUES (2957,
	2959,
	1,
	'any',
	2813,
	2,
	34);
INSERT INTO ACT_SMT
	VALUES (2958,
	2956,
	0,
	3,
	1,
	'GPS_A1: tick line: 3');
INSERT INTO ACT_AI
	VALUES (2958,
	2960,
	2961,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2962,
	1,
	0,
	3,
	1,
	3,
	0,
	0,
	0,
	0,
	300,
	2956);
INSERT INTO V_IRF
	VALUES (2962,
	2959);
INSERT INTO V_VAL
	VALUES (2961,
	1,
	0,
	3,
	5,
	18,
	0,
	0,
	0,
	0,
	188,
	2956);
INSERT INTO V_AVL
	VALUES (2961,
	2962,
	2813,
	2844);
INSERT INTO V_VAL
	VALUES (2963,
	0,
	0,
	3,
	22,
	24,
	0,
	0,
	0,
	0,
	300,
	2956);
INSERT INTO V_IRF
	VALUES (2963,
	2959);
INSERT INTO V_VAL
	VALUES (2964,
	0,
	0,
	3,
	26,
	39,
	0,
	0,
	0,
	0,
	188,
	2956);
INSERT INTO V_AVL
	VALUES (2964,
	2963,
	2813,
	2844);
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
	188,
	2956);
INSERT INTO V_BIN
	VALUES (2960,
	2965,
	2964,
	'+');
INSERT INTO V_VAL
	VALUES (2965,
	0,
	0,
	3,
	43,
	43,
	0,
	0,
	0,
	0,
	188,
	2956);
INSERT INTO V_LIN
	VALUES (2965,
	'1');
INSERT INTO V_VAR
	VALUES (2959,
	2956,
	'gps',
	1,
	300);
INSERT INTO V_INT
	VALUES (2959,
	0,
	2813);
INSERT INTO SM_TXN
	VALUES (2953,
	2849,
	2872,
	0);
INSERT INTO PE_PE
	VALUES (2966,
	1,
	2654,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (2966,
	0,
	2653,
	'shared',
	'',
	0);
INSERT INTO PE_PE
	VALUES (2967,
	1,
	2966,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (2967,
	'Distance',
	'kmPerDegree is a rough conversion figure valid for most latitude figures (except where 
the irregular shape of the earth perturbs the value) and for longitude figures
away from the poles (where the distance between longitude lines decreases to zero).

latitudeIncrement and longitudeIncrement specify the distance traveled by the simulated
GPS during each interval.');
INSERT INTO CNST_SYC
	VALUES (2694,
	'kmPerDegree',
	'',
	133,
	2967,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (2694,
	133);
INSERT INTO CNST_LSC
	VALUES (2694,
	133,
	'111.32');
INSERT INTO PE_PE
	VALUES (2968,
	1,
	2966,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (2968,
	'Speed',
	'SpeedAveragingWindow is the number of track points used to calculate the current average speed.
SecondsPerHour is the number of seconds in one hour.');
INSERT INTO CNST_SYC
	VALUES (1676,
	'SecondsPerHour',
	'',
	188,
	2968,
	1661,
	188);
INSERT INTO CNST_LFSC
	VALUES (1676,
	188);
INSERT INTO CNST_LSC
	VALUES (1676,
	188,
	'3600');
INSERT INTO CNST_SYC
	VALUES (1661,
	'SpeedAveragingWindow',
	'',
	188,
	2968,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (1661,
	188);
INSERT INTO CNST_LSC
	VALUES (1661,
	188,
	'5');
INSERT INTO PE_PE
	VALUES (60,
	1,
	2966,
	0,
	6);
INSERT INTO C_I
	VALUES (60,
	0,
	'Location',
	'');
INSERT INTO C_EP
	VALUES (62,
	60,
	-1,
	'getLocation',
	'');
INSERT INTO C_IO
	VALUES (62,
	294,
	'getLocation',
	'',
	0,
	'',
	66);
INSERT INTO C_PP
	VALUES (2969,
	62,
	188,
	'latitude',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (2970,
	62,
	188,
	'longitude',
	'',
	0,
	'',
	2969);
INSERT INTO C_EP
	VALUES (66,
	60,
	-1,
	'getDistance',
	'');
INSERT INTO C_IO
	VALUES (66,
	133,
	'getDistance',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (2674,
	66,
	188,
	'toLat',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (2676,
	66,
	188,
	'fromLat',
	'',
	0,
	'',
	2674);
INSERT INTO C_PP
	VALUES (2679,
	66,
	188,
	'toLong',
	'',
	0,
	'',
	2676);
INSERT INTO C_PP
	VALUES (2681,
	66,
	188,
	'fromLong',
	'',
	0,
	'',
	2679);
INSERT INTO C_EP
	VALUES (70,
	60,
	-1,
	'registerListener',
	'');
INSERT INTO C_IO
	VALUES (70,
	294,
	'registerListener',
	'',
	0,
	'',
	62);
INSERT INTO C_EP
	VALUES (74,
	60,
	-1,
	'unregisterListener',
	'');
INSERT INTO C_IO
	VALUES (74,
	294,
	'unregisterListener',
	'',
	0,
	'',
	70);
