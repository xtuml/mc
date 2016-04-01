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
	'',
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
	VALUES (9,
	1,
	2,
	0,
	22);
INSERT INTO C_SF
	VALUES (9,
	57,
	8,
	'',
	'HeartRateMonitor::HeartRateMonitor::HeartRateMonitor -o)- GPSWatch::HeartRateMonitor::HeartRateMonitor');
INSERT INTO PE_PE
	VALUES (55,
	1,
	2,
	0,
	22);
INSERT INTO C_SF
	VALUES (55,
	58,
	54,
	'',
	'Location::Location::Location -o)- GPSWatch::Location::Location');
INSERT INTO PE_PE
	VALUES (59,
	1,
	2,
	0,
	2);
INSERT INTO C_C
	VALUES (59,
	0,
	0,
	'GPSWatch',
	'',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (60,
	59,
	'Location',
	0,
	0);
INSERT INTO C_IR
	VALUES (58,
	61,
	0,
	60);
INSERT INTO C_R
	VALUES (58,
	'Location',
	'',
	'Unnamed Interface',
	'GPSWatch::Location::Location');
INSERT INTO SPR_REP
	VALUES (62,
	63,
	58);
INSERT INTO SPR_RO
	VALUES (62,
	'getLocation',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (64,
	62);
INSERT INTO ACT_ACT
	VALUES (64,
	'interface operation',
	0,
	65,
	0,
	0,
	'Location::Location::getLocation',
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
	67,
	58);
INSERT INTO SPR_RO
	VALUES (66,
	'getDistance',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (68,
	66);
INSERT INTO ACT_ACT
	VALUES (68,
	'interface operation',
	0,
	69,
	0,
	0,
	'Location::Location::getDistance',
	0);
INSERT INTO ACT_BLK
	VALUES (69,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	68,
	0);
INSERT INTO SPR_REP
	VALUES (70,
	71,
	58);
INSERT INTO SPR_RO
	VALUES (70,
	'registerListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (72,
	70);
INSERT INTO ACT_ACT
	VALUES (72,
	'interface operation',
	0,
	73,
	0,
	0,
	'Location::Location::registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (73,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	72,
	0);
INSERT INTO SPR_REP
	VALUES (74,
	75,
	58);
INSERT INTO SPR_RO
	VALUES (74,
	'unregisterListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (76,
	74);
INSERT INTO ACT_ACT
	VALUES (76,
	'interface operation',
	0,
	77,
	0,
	0,
	'Location::Location::unregisterListener',
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
INSERT INTO C_PO
	VALUES (78,
	59,
	'HeartRateMonitor',
	0,
	0);
INSERT INTO C_IR
	VALUES (57,
	79,
	0,
	78);
INSERT INTO C_R
	VALUES (57,
	'HeartRateMonitor',
	'',
	'Unnamed Interface',
	'GPSWatch::HeartRateMonitor::HeartRateMonitor');
INSERT INTO SPR_REP
	VALUES (80,
	81,
	57);
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
	57);
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
	59,
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
	59,
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
	59,
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
	66,
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
	62,
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
	70,
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
	74,
	0);
INSERT INTO C_PO
	VALUES (161,
	59,
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
	59,
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
	59,
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
	59,
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
	VALUES (311,
	1,
	310,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (311,
	0,
	309,
	'shared',
	'',
	0);
INSERT INTO PE_PE
	VALUES (113,
	1,
	311,
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
	VALUES (126,
	1,
	311,
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
	311,
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
	VALUES (211,
	1,
	311,
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
	VALUES (312,
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
	VALUES (313,
	233,
	188,
	'sequenceNumber',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (314,
	233,
	133,
	'minimum',
	'',
	0,
	'',
	313);
INSERT INTO C_PP
	VALUES (315,
	233,
	133,
	'maximum',
	'',
	0,
	'',
	314);
INSERT INTO C_PP
	VALUES (316,
	233,
	133,
	'span',
	'',
	0,
	'',
	315);
INSERT INTO C_PP
	VALUES (317,
	233,
	204,
	'criteriaType',
	'',
	0,
	'',
	316);
INSERT INTO C_PP
	VALUES (318,
	233,
	207,
	'spanType',
	'',
	0,
	'',
	317);
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
	VALUES (319,
	128,
	20);
INSERT INTO SPR_RO
	VALUES (319,
	'getDistance',
	'Returns distance, in kilometers, between the "from" and "to" coordinates passed as parameters.
The coordinates must be passed as decimal degrees.',
	'return 1;',
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
	'Location::TrackingLocation::getDistance',
	0);
INSERT INTO ACT_BLK
	VALUES (321,
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
	320,
	0);
INSERT INTO ACT_SMT
	VALUES (322,
	321,
	0,
	1,
	1,
	'Location::TrackingLocation::getDistance line: 1');
INSERT INTO ACT_RET
	VALUES (322,
	323);
INSERT INTO V_VAL
	VALUES (323,
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
	321);
INSERT INTO V_LIN
	VALUES (323,
	'1');
INSERT INTO SPR_REP
	VALUES (324,
	143,
	20);
INSERT INTO SPR_RO
	VALUES (324,
	'getLocation',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (325,
	324);
INSERT INTO ACT_ACT
	VALUES (325,
	'interface operation',
	0,
	326,
	0,
	0,
	'Location::TrackingLocation::getLocation',
	0);
INSERT INTO ACT_BLK
	VALUES (326,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	325,
	0);
INSERT INTO SPR_REP
	VALUES (327,
	152,
	20);
INSERT INTO SPR_RO
	VALUES (327,
	'registerListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (328,
	327);
INSERT INTO ACT_ACT
	VALUES (328,
	'interface operation',
	0,
	329,
	0,
	0,
	'Location::TrackingLocation::registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (329,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	328,
	0);
INSERT INTO SPR_REP
	VALUES (330,
	157,
	20);
INSERT INTO SPR_RO
	VALUES (330,
	'unregisterListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (331,
	330);
INSERT INTO ACT_ACT
	VALUES (331,
	'interface operation',
	0,
	332,
	0,
	0,
	'Location::TrackingLocation::unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (332,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	331,
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
	VALUES (333,
	165,
	25);
INSERT INTO SPR_RO
	VALUES (333,
	'setData',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (334,
	333);
INSERT INTO ACT_ACT
	VALUES (334,
	'interface operation',
	0,
	335,
	0,
	0,
	'UI::TrackingUI::setData',
	0);
INSERT INTO ACT_BLK
	VALUES (335,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	334,
	0);
INSERT INTO SPR_REP
	VALUES (336,
	175,
	25);
INSERT INTO SPR_RO
	VALUES (336,
	'setIndicator',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (337,
	336);
INSERT INTO ACT_ACT
	VALUES (337,
	'interface operation',
	0,
	338,
	0,
	0,
	'UI::TrackingUI::setIndicator',
	0);
INSERT INTO ACT_BLK
	VALUES (338,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	337,
	0);
INSERT INTO SPR_REP
	VALUES (339,
	183,
	25);
INSERT INTO SPR_RO
	VALUES (339,
	'setTime',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (340,
	339);
INSERT INTO ACT_ACT
	VALUES (340,
	'interface operation',
	0,
	341,
	0,
	0,
	'UI::TrackingUI::setTime',
	0);
INSERT INTO ACT_BLK
	VALUES (341,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	340,
	0);
INSERT INTO SPR_REP
	VALUES (342,
	191,
	25);
INSERT INTO SPR_RO
	VALUES (342,
	'newGoalSpec',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (343,
	342);
INSERT INTO ACT_ACT
	VALUES (343,
	'interface operation',
	0,
	344,
	0,
	0,
	'UI::TrackingUI::newGoalSpec',
	0);
INSERT INTO ACT_BLK
	VALUES (344,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	343,
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
	VALUES (345,
	115,
	30);
INSERT INTO SPR_RO
	VALUES (345,
	'registerListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (346,
	345);
INSERT INTO ACT_ACT
	VALUES (346,
	'interface operation',
	0,
	347,
	0,
	0,
	'HeartRateMonitor::TrackingHeartRateMonitor::registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (347,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	346,
	0);
INSERT INTO SPR_REP
	VALUES (348,
	120,
	30);
INSERT INTO SPR_RO
	VALUES (348,
	'unregisterListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (349,
	348);
INSERT INTO ACT_ACT
	VALUES (349,
	'interface operation',
	0,
	350,
	0,
	0,
	'HeartRateMonitor::TrackingHeartRateMonitor::unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (350,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	349,
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
	VALUES (351,
	213,
	35);
INSERT INTO SPR_PO
	VALUES (351,
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
	VALUES (352,
	351);
INSERT INTO ACT_ACT
	VALUES (352,
	'interface operation',
	0,
	353,
	0,
	0,
	'Tracking::Tracking::heartRateChanged',
	0);
INSERT INTO ACT_BLK
	VALUES (353,
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
	352,
	0);
INSERT INTO ACT_SMT
	VALUES (354,
	353,
	355,
	6,
	1,
	'Tracking::Tracking::heartRateChanged line: 6');
INSERT INTO ACT_FIO
	VALUES (354,
	356,
	1,
	'any',
	357,
	6,
	38);
INSERT INTO ACT_SMT
	VALUES (355,
	353,
	0,
	7,
	1,
	'Tracking::Tracking::heartRateChanged line: 7');
INSERT INTO ACT_IF
	VALUES (355,
	358,
	359,
	0,
	0);
INSERT INTO V_VAL
	VALUES (360,
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
	353);
INSERT INTO V_IRF
	VALUES (360,
	356);
INSERT INTO V_VAL
	VALUES (361,
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
	353);
INSERT INTO V_UNY
	VALUES (361,
	360,
	'empty');
INSERT INTO V_VAL
	VALUES (359,
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
	353);
INSERT INTO V_UNY
	VALUES (359,
	361,
	'not');
INSERT INTO V_VAR
	VALUES (356,
	353,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (356,
	0,
	357);
INSERT INTO ACT_BLK
	VALUES (358,
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
	352,
	0);
INSERT INTO ACT_SMT
	VALUES (362,
	358,
	0,
	8,
	3,
	'Tracking::Tracking::heartRateChanged line: 8');
INSERT INTO ACT_TFM
	VALUES (362,
	363,
	356,
	8,
	11,
	0,
	0);
INSERT INTO V_VAL
	VALUES (364,
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
	358);
INSERT INTO V_PVL
	VALUES (364,
	0,
	0,
	0,
	312);
INSERT INTO V_PAR
	VALUES (364,
	362,
	0,
	'heartRate',
	0,
	8,
	30);
INSERT INTO SPR_PEP
	VALUES (365,
	217,
	35);
INSERT INTO SPR_PO
	VALUES (365,
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
	VALUES (366,
	365);
INSERT INTO ACT_ACT
	VALUES (366,
	'interface operation',
	0,
	367,
	0,
	0,
	'Tracking::Tracking::lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (367,
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
	366,
	0);
INSERT INTO ACT_SMT
	VALUES (368,
	367,
	369,
	4,
	1,
	'Tracking::Tracking::lapResetPressed line: 4');
INSERT INTO ACT_FIO
	VALUES (368,
	370,
	1,
	'any',
	371,
	4,
	43);
INSERT INTO ACT_SMT
	VALUES (369,
	367,
	0,
	5,
	1,
	'Tracking::Tracking::lapResetPressed line: 5');
INSERT INTO ACT_IF
	VALUES (369,
	372,
	373,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (374,
	367,
	0,
	7,
	1,
	'Tracking::Tracking::lapResetPressed line: 7');
INSERT INTO ACT_E
	VALUES (374,
	375,
	369);
INSERT INTO V_VAL
	VALUES (376,
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
	367);
INSERT INTO V_IRF
	VALUES (376,
	370);
INSERT INTO V_VAL
	VALUES (377,
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
	367);
INSERT INTO V_UNY
	VALUES (377,
	376,
	'empty');
INSERT INTO V_VAL
	VALUES (373,
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
	367);
INSERT INTO V_UNY
	VALUES (373,
	377,
	'not');
INSERT INTO V_VAR
	VALUES (370,
	367,
	'workoutTimer',
	1,
	300);
INSERT INTO V_INT
	VALUES (370,
	0,
	371);
INSERT INTO ACT_BLK
	VALUES (372,
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
	366,
	0);
INSERT INTO ACT_SMT
	VALUES (378,
	372,
	0,
	6,
	3,
	'Tracking::Tracking::lapResetPressed line: 6');
INSERT INTO E_ESS
	VALUES (378,
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
	VALUES (378);
INSERT INTO E_GSME
	VALUES (378,
	379);
INSERT INTO E_GEN
	VALUES (378,
	370);
INSERT INTO ACT_BLK
	VALUES (375,
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
	366,
	0);
INSERT INTO ACT_SMT
	VALUES (380,
	375,
	0,
	8,
	3,
	'Tracking::Tracking::lapResetPressed line: 8');
INSERT INTO ACT_BRG
	VALUES (380,
	381,
	8,
	8,
	8,
	3);
INSERT INTO V_VAL
	VALUES (382,
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
	375);
INSERT INTO V_LST
	VALUES (382,
	'Tracking:UI:lapResetPressed - No WorkoutTimer, so nothing to do.');
INSERT INTO V_PAR
	VALUES (382,
	380,
	0,
	'message',
	0,
	8,
	20);
INSERT INTO SPR_PEP
	VALUES (383,
	221,
	35);
INSERT INTO SPR_PO
	VALUES (383,
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
	VALUES (384,
	383);
INSERT INTO ACT_ACT
	VALUES (384,
	'interface operation',
	0,
	385,
	0,
	0,
	'Tracking::Tracking::modePressed',
	0);
INSERT INTO ACT_BLK
	VALUES (385,
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
	384,
	0);
INSERT INTO ACT_SMT
	VALUES (386,
	385,
	387,
	5,
	1,
	'Tracking::Tracking::modePressed line: 5');
INSERT INTO ACT_FIO
	VALUES (386,
	388,
	1,
	'any',
	357,
	5,
	38);
INSERT INTO ACT_SMT
	VALUES (387,
	385,
	0,
	6,
	1,
	'Tracking::Tracking::modePressed line: 6');
INSERT INTO ACT_IF
	VALUES (387,
	389,
	390,
	0,
	0);
INSERT INTO V_VAL
	VALUES (391,
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
	385);
INSERT INTO V_IRF
	VALUES (391,
	388);
INSERT INTO V_VAL
	VALUES (392,
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
	385);
INSERT INTO V_UNY
	VALUES (392,
	391,
	'empty');
INSERT INTO V_VAL
	VALUES (390,
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
	385);
INSERT INTO V_UNY
	VALUES (390,
	392,
	'not');
INSERT INTO V_VAR
	VALUES (388,
	385,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (388,
	0,
	357);
INSERT INTO ACT_BLK
	VALUES (389,
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
	384,
	0);
INSERT INTO ACT_SMT
	VALUES (393,
	389,
	394,
	7,
	3,
	'Tracking::Tracking::modePressed line: 7');
INSERT INTO ACT_SEL
	VALUES (393,
	395,
	1,
	'one',
	396);
INSERT INTO ACT_SR
	VALUES (393);
INSERT INTO ACT_LNK
	VALUES (397,
	'''current status indicated on''',
	393,
	398,
	0,
	2,
	399,
	7,
	42,
	7,
	50,
	7,
	53);
INSERT INTO ACT_SMT
	VALUES (394,
	389,
	0,
	8,
	3,
	'Tracking::Tracking::modePressed line: 8');
INSERT INTO E_ESS
	VALUES (394,
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
	VALUES (394);
INSERT INTO E_GSME
	VALUES (394,
	400);
INSERT INTO E_GEN
	VALUES (394,
	395);
INSERT INTO V_VAL
	VALUES (396,
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
	389);
INSERT INTO V_IRF
	VALUES (396,
	388);
INSERT INTO V_VAR
	VALUES (395,
	389,
	'display',
	1,
	300);
INSERT INTO V_INT
	VALUES (395,
	0,
	399);
INSERT INTO SPR_PEP
	VALUES (401,
	225,
	35);
INSERT INTO SPR_PO
	VALUES (401,
	'setTargetPressed',
	'',
	'// If a goal is currently executing, advance to the next one,
//   otherwise start the first specified goal, if it exists.
Goal::nextGoal();',
	1);
INSERT INTO ACT_POB
	VALUES (402,
	401);
INSERT INTO ACT_ACT
	VALUES (402,
	'interface operation',
	0,
	403,
	0,
	0,
	'Tracking::Tracking::setTargetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (403,
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
	402,
	0);
INSERT INTO ACT_SMT
	VALUES (404,
	403,
	0,
	3,
	1,
	'Tracking::Tracking::setTargetPressed line: 3');
INSERT INTO ACT_TFM
	VALUES (404,
	405,
	0,
	3,
	7,
	3,
	1);
INSERT INTO SPR_PEP
	VALUES (406,
	229,
	35);
INSERT INTO SPR_PO
	VALUES (406,
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
	VALUES (407,
	406);
INSERT INTO ACT_ACT
	VALUES (407,
	'interface operation',
	0,
	408,
	0,
	0,
	'Tracking::Tracking::startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (408,
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
	407,
	0);
INSERT INTO ACT_SMT
	VALUES (409,
	408,
	410,
	4,
	1,
	'Tracking::Tracking::startStopPressed line: 4');
INSERT INTO ACT_TFM
	VALUES (409,
	411,
	0,
	4,
	17,
	4,
	1);
INSERT INTO ACT_SMT
	VALUES (410,
	408,
	412,
	7,
	1,
	'Tracking::Tracking::startStopPressed line: 7');
INSERT INTO ACT_FIO
	VALUES (410,
	413,
	1,
	'any',
	371,
	7,
	43);
INSERT INTO ACT_SMT
	VALUES (412,
	408,
	0,
	8,
	1,
	'Tracking::Tracking::startStopPressed line: 8');
INSERT INTO E_ESS
	VALUES (412,
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
	VALUES (412);
INSERT INTO E_GSME
	VALUES (412,
	414);
INSERT INTO E_GEN
	VALUES (412,
	413);
INSERT INTO V_VAR
	VALUES (413,
	408,
	'workoutTimer',
	1,
	300);
INSERT INTO V_INT
	VALUES (413,
	0,
	371);
INSERT INTO SPR_PEP
	VALUES (415,
	233,
	35);
INSERT INTO SPR_PO
	VALUES (415,
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
	VALUES (416,
	415);
INSERT INTO ACT_ACT
	VALUES (416,
	'interface operation',
	0,
	417,
	0,
	0,
	'Tracking::Tracking::newGoalSpec',
	0);
INSERT INTO ACT_BLK
	VALUES (417,
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
	416,
	0);
INSERT INTO ACT_SMT
	VALUES (418,
	417,
	419,
	3,
	1,
	'Tracking::Tracking::newGoalSpec line: 3');
INSERT INTO ACT_FIO
	VALUES (418,
	420,
	1,
	'any',
	357,
	3,
	38);
INSERT INTO ACT_SMT
	VALUES (419,
	417,
	0,
	4,
	1,
	'Tracking::Tracking::newGoalSpec line: 4');
INSERT INTO ACT_IF
	VALUES (419,
	421,
	422,
	0,
	0);
INSERT INTO V_VAL
	VALUES (423,
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
	417);
INSERT INTO V_IRF
	VALUES (423,
	420);
INSERT INTO V_VAL
	VALUES (424,
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
	417);
INSERT INTO V_UNY
	VALUES (424,
	423,
	'empty');
INSERT INTO V_VAL
	VALUES (422,
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
	417);
INSERT INTO V_UNY
	VALUES (422,
	424,
	'not');
INSERT INTO V_VAR
	VALUES (420,
	417,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (420,
	0,
	357);
INSERT INTO ACT_BLK
	VALUES (421,
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
	416,
	0);
INSERT INTO ACT_SMT
	VALUES (425,
	421,
	426,
	5,
	3,
	'Tracking::Tracking::newGoalSpec line: 5');
INSERT INTO ACT_CR
	VALUES (425,
	427,
	1,
	428,
	5,
	38);
INSERT INTO ACT_SMT
	VALUES (426,
	421,
	429,
	6,
	3,
	'Tracking::Tracking::newGoalSpec line: 6');
INSERT INTO ACT_AI
	VALUES (426,
	430,
	431,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (429,
	421,
	432,
	7,
	3,
	'Tracking::Tracking::newGoalSpec line: 7');
INSERT INTO ACT_AI
	VALUES (429,
	433,
	434,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (432,
	421,
	435,
	8,
	3,
	'Tracking::Tracking::newGoalSpec line: 8');
INSERT INTO ACT_AI
	VALUES (432,
	436,
	437,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (435,
	421,
	438,
	9,
	3,
	'Tracking::Tracking::newGoalSpec line: 9');
INSERT INTO ACT_AI
	VALUES (435,
	439,
	440,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (438,
	421,
	441,
	10,
	3,
	'Tracking::Tracking::newGoalSpec line: 10');
INSERT INTO ACT_AI
	VALUES (438,
	442,
	443,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (441,
	421,
	444,
	11,
	3,
	'Tracking::Tracking::newGoalSpec line: 11');
INSERT INTO ACT_AI
	VALUES (441,
	445,
	446,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (444,
	421,
	0,
	12,
	3,
	'Tracking::Tracking::newGoalSpec line: 12');
INSERT INTO ACT_REL
	VALUES (444,
	427,
	420,
	'''included in''',
	447,
	12,
	37,
	12,
	41);
INSERT INTO V_VAL
	VALUES (448,
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
	421);
INSERT INTO V_IRF
	VALUES (448,
	427);
INSERT INTO V_VAL
	VALUES (431,
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
	421);
INSERT INTO V_AVL
	VALUES (431,
	448,
	428,
	449);
INSERT INTO V_VAL
	VALUES (430,
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
	421);
INSERT INTO V_PVL
	VALUES (430,
	0,
	0,
	0,
	313);
INSERT INTO V_VAL
	VALUES (450,
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
	421);
INSERT INTO V_IRF
	VALUES (450,
	427);
INSERT INTO V_VAL
	VALUES (434,
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
	421);
INSERT INTO V_AVL
	VALUES (434,
	450,
	428,
	451);
INSERT INTO V_VAL
	VALUES (433,
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
	421);
INSERT INTO V_PVL
	VALUES (433,
	0,
	0,
	0,
	314);
INSERT INTO V_VAL
	VALUES (452,
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
	421);
INSERT INTO V_IRF
	VALUES (452,
	427);
INSERT INTO V_VAL
	VALUES (437,
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
	421);
INSERT INTO V_AVL
	VALUES (437,
	452,
	428,
	453);
INSERT INTO V_VAL
	VALUES (436,
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
	421);
INSERT INTO V_PVL
	VALUES (436,
	0,
	0,
	0,
	315);
INSERT INTO V_VAL
	VALUES (454,
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
	421);
INSERT INTO V_IRF
	VALUES (454,
	427);
INSERT INTO V_VAL
	VALUES (440,
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
	421);
INSERT INTO V_AVL
	VALUES (440,
	454,
	428,
	455);
INSERT INTO V_VAL
	VALUES (439,
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
	421);
INSERT INTO V_PVL
	VALUES (439,
	0,
	0,
	0,
	316);
INSERT INTO V_VAL
	VALUES (456,
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
	421);
INSERT INTO V_IRF
	VALUES (456,
	427);
INSERT INTO V_VAL
	VALUES (443,
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
	421);
INSERT INTO V_AVL
	VALUES (443,
	456,
	428,
	457);
INSERT INTO V_VAL
	VALUES (442,
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
	421);
INSERT INTO V_PVL
	VALUES (442,
	0,
	0,
	0,
	317);
INSERT INTO V_VAL
	VALUES (458,
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
	421);
INSERT INTO V_IRF
	VALUES (458,
	427);
INSERT INTO V_VAL
	VALUES (446,
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
	421);
INSERT INTO V_AVL
	VALUES (446,
	458,
	428,
	459);
INSERT INTO V_VAL
	VALUES (445,
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
	421);
INSERT INTO V_PVL
	VALUES (445,
	0,
	0,
	0,
	318);
INSERT INTO V_VAR
	VALUES (427,
	421,
	'goalSpec',
	1,
	300);
INSERT INTO V_INT
	VALUES (427,
	0,
	428);
INSERT INTO SPR_PEP
	VALUES (460,
	237,
	35);
INSERT INTO SPR_PO
	VALUES (460,
	'lightPressed',
	'',
	'',
	1);
INSERT INTO ACT_POB
	VALUES (461,
	460);
INSERT INTO ACT_ACT
	VALUES (461,
	'interface operation',
	0,
	462,
	0,
	0,
	'Tracking::Tracking::lightPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (462,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	461,
	0);
INSERT INTO PE_PE
	VALUES (463,
	1,
	0,
	16,
	7);
INSERT INTO EP_PKG
	VALUES (463,
	0,
	309,
	'Tracking',
	'',
	0);
INSERT INTO PE_PE
	VALUES (464,
	1,
	463,
	0,
	9);
INSERT INTO R_REL
	VALUES (464,
	1,
	'Indicates the first track point for a track log.  In
other words, this is the first recorded location in 
a chronological series of track points that make up
a track log.
Established when the first track point is recorded and 
exists for the lifetime of the track log.',
	0);
INSERT INTO R_SIMP
	VALUES (464);
INSERT INTO R_PART
	VALUES (465,
	464,
	466,
	0,
	1,
	'is start of');
INSERT INTO R_RTO
	VALUES (465,
	464,
	466,
	-1);
INSERT INTO R_OIR
	VALUES (465,
	464,
	466,
	0);
INSERT INTO R_PART
	VALUES (467,
	464,
	468,
	0,
	1,
	'has first');
INSERT INTO R_RTO
	VALUES (467,
	464,
	468,
	-1);
INSERT INTO R_OIR
	VALUES (467,
	464,
	468,
	0);
INSERT INTO PE_PE
	VALUES (469,
	1,
	463,
	0,
	9);
INSERT INTO R_REL
	VALUES (469,
	2,
	'Chronologically sequences the track points in a track log.
Established each time a new track point is recorded and 
exists for the lifetime of the track log.',
	0);
INSERT INTO R_SIMP
	VALUES (469);
INSERT INTO R_PART
	VALUES (467,
	469,
	470,
	0,
	1,
	'preceeds');
INSERT INTO R_RTO
	VALUES (467,
	469,
	470,
	-1);
INSERT INTO R_OIR
	VALUES (467,
	469,
	470,
	0);
INSERT INTO R_PART
	VALUES (467,
	469,
	471,
	0,
	1,
	'follows');
INSERT INTO R_RTO
	VALUES (467,
	469,
	471,
	-1);
INSERT INTO R_OIR
	VALUES (467,
	469,
	471,
	0);
INSERT INTO PE_PE
	VALUES (472,
	1,
	463,
	0,
	9);
INSERT INTO R_REL
	VALUES (472,
	3,
	'Represents the most recently recorded track point
in a track log.  
Established each time a new track point is recorded and
removed from the previously recorded track point at the same time.',
	0);
INSERT INTO R_SIMP
	VALUES (472);
INSERT INTO R_PART
	VALUES (467,
	472,
	473,
	0,
	1,
	'has last');
INSERT INTO R_RTO
	VALUES (467,
	472,
	473,
	-1);
INSERT INTO R_OIR
	VALUES (467,
	472,
	473,
	0);
INSERT INTO R_PART
	VALUES (465,
	472,
	474,
	0,
	1,
	'is last for');
INSERT INTO R_RTO
	VALUES (465,
	472,
	474,
	-1);
INSERT INTO R_OIR
	VALUES (465,
	472,
	474,
	0);
INSERT INTO PE_PE
	VALUES (475,
	1,
	463,
	0,
	9);
INSERT INTO R_REL
	VALUES (475,
	5,
	'Established when a lap marker is created and exists
for the lifetime of the track log.',
	0);
INSERT INTO R_SIMP
	VALUES (475);
INSERT INTO R_PART
	VALUES (476,
	475,
	477,
	1,
	1,
	'has laps defined by');
INSERT INTO R_RTO
	VALUES (476,
	475,
	477,
	-1);
INSERT INTO R_OIR
	VALUES (476,
	475,
	477,
	0);
INSERT INTO R_PART
	VALUES (465,
	475,
	478,
	0,
	0,
	'marks end of lap in');
INSERT INTO R_RTO
	VALUES (465,
	475,
	478,
	-1);
INSERT INTO R_OIR
	VALUES (465,
	475,
	478,
	0);
INSERT INTO PE_PE
	VALUES (398,
	1,
	463,
	0,
	9);
INSERT INTO R_REL
	VALUES (398,
	7,
	'Established when a workout session is created and 
exists for the duration of the session.',
	0);
INSERT INTO R_SIMP
	VALUES (398);
INSERT INTO R_PART
	VALUES (357,
	398,
	479,
	0,
	0,
	'indicates current status of');
INSERT INTO R_RTO
	VALUES (357,
	398,
	479,
	-1);
INSERT INTO R_OIR
	VALUES (357,
	398,
	479,
	0);
INSERT INTO R_PART
	VALUES (399,
	398,
	480,
	0,
	0,
	'current status indicated on');
INSERT INTO R_RTO
	VALUES (399,
	398,
	480,
	-1);
INSERT INTO R_OIR
	VALUES (399,
	398,
	480,
	0);
INSERT INTO PE_PE
	VALUES (481,
	1,
	463,
	0,
	9);
INSERT INTO R_REL
	VALUES (481,
	8,
	'Established when a workout session is created and exists for the duration
of the session.',
	0);
INSERT INTO R_SIMP
	VALUES (481);
INSERT INTO R_PART
	VALUES (357,
	481,
	482,
	0,
	0,
	'acts as the stopwatch for');
INSERT INTO R_RTO
	VALUES (357,
	481,
	482,
	-1);
INSERT INTO R_OIR
	VALUES (357,
	481,
	482,
	0);
INSERT INTO R_PART
	VALUES (371,
	481,
	483,
	0,
	0,
	'is timed by');
INSERT INTO R_RTO
	VALUES (371,
	481,
	483,
	-1);
INSERT INTO R_OIR
	VALUES (371,
	481,
	483,
	0);
INSERT INTO PE_PE
	VALUES (484,
	1,
	463,
	0,
	9);
INSERT INTO R_REL
	VALUES (484,
	4,
	'Established when a workout session is created and
exists for the duration of the session.',
	0);
INSERT INTO R_SIMP
	VALUES (484);
INSERT INTO R_PART
	VALUES (357,
	484,
	485,
	0,
	0,
	'represents path for');
INSERT INTO R_RTO
	VALUES (357,
	484,
	485,
	-1);
INSERT INTO R_OIR
	VALUES (357,
	484,
	485,
	0);
INSERT INTO R_PART
	VALUES (465,
	484,
	486,
	0,
	0,
	'captures path in');
INSERT INTO R_RTO
	VALUES (465,
	484,
	486,
	-1);
INSERT INTO R_OIR
	VALUES (465,
	484,
	486,
	0);
INSERT INTO PE_PE
	VALUES (487,
	1,
	463,
	0,
	9);
INSERT INTO R_REL
	VALUES (487,
	6,
	'Established when a heart rate sample is created and exists for
the duration of the workout session.',
	0);
INSERT INTO R_SIMP
	VALUES (487);
INSERT INTO R_PART
	VALUES (488,
	487,
	489,
	1,
	1,
	'tracks heart rate over time as');
INSERT INTO R_RTO
	VALUES (488,
	487,
	489,
	-1);
INSERT INTO R_OIR
	VALUES (488,
	487,
	489,
	0);
INSERT INTO R_PART
	VALUES (357,
	487,
	490,
	0,
	0,
	'was collected during');
INSERT INTO R_RTO
	VALUES (357,
	487,
	490,
	-1);
INSERT INTO R_OIR
	VALUES (357,
	487,
	490,
	0);
INSERT INTO PE_PE
	VALUES (491,
	1,
	463,
	0,
	9);
INSERT INTO R_REL
	VALUES (491,
	9,
	'Established when goal execution begins and removed when it ends.',
	0);
INSERT INTO R_SIMP
	VALUES (491);
INSERT INTO R_PART
	VALUES (428,
	491,
	492,
	0,
	0,
	'specified by');
INSERT INTO R_RTO
	VALUES (428,
	491,
	492,
	-1);
INSERT INTO R_OIR
	VALUES (428,
	491,
	492,
	0);
INSERT INTO R_PART
	VALUES (493,
	491,
	494,
	1,
	1,
	'specifies');
INSERT INTO R_RTO
	VALUES (493,
	491,
	494,
	-1);
INSERT INTO R_OIR
	VALUES (493,
	491,
	494,
	0);
INSERT INTO PE_PE
	VALUES (447,
	1,
	463,
	0,
	9);
INSERT INTO R_REL
	VALUES (447,
	10,
	'Established when a goal specification is created and exists 
for the duration of a workout session.',
	0);
INSERT INTO R_SIMP
	VALUES (447);
INSERT INTO R_PART
	VALUES (357,
	447,
	495,
	0,
	0,
	'included in');
INSERT INTO R_RTO
	VALUES (357,
	447,
	495,
	-1);
INSERT INTO R_OIR
	VALUES (357,
	447,
	495,
	0);
INSERT INTO R_PART
	VALUES (428,
	447,
	496,
	1,
	1,
	'includes');
INSERT INTO R_RTO
	VALUES (428,
	447,
	496,
	-1);
INSERT INTO R_OIR
	VALUES (428,
	447,
	496,
	0);
INSERT INTO PE_PE
	VALUES (497,
	1,
	463,
	0,
	9);
INSERT INTO R_REL
	VALUES (497,
	11,
	'Established when a goal begins executing and removed when it ends.',
	0);
INSERT INTO R_SIMP
	VALUES (497);
INSERT INTO R_PART
	VALUES (357,
	497,
	498,
	0,
	1,
	'is currently executing within');
INSERT INTO R_RTO
	VALUES (357,
	497,
	498,
	-1);
INSERT INTO R_OIR
	VALUES (357,
	497,
	498,
	0);
INSERT INTO R_PART
	VALUES (493,
	497,
	499,
	0,
	1,
	'is currently executing');
INSERT INTO R_RTO
	VALUES (493,
	497,
	499,
	-1);
INSERT INTO R_OIR
	VALUES (493,
	497,
	499,
	0);
INSERT INTO PE_PE
	VALUES (500,
	1,
	463,
	0,
	9);
INSERT INTO R_REL
	VALUES (500,
	12,
	'Established when an achievement period begins and exists for 
the duration of the associated workout session.',
	0);
INSERT INTO R_SIMP
	VALUES (500);
INSERT INTO R_PART
	VALUES (493,
	500,
	501,
	0,
	0,
	'specifies achievement of');
INSERT INTO R_RTO
	VALUES (493,
	500,
	501,
	-1);
INSERT INTO R_OIR
	VALUES (493,
	500,
	501,
	0);
INSERT INTO R_PART
	VALUES (502,
	500,
	503,
	1,
	1,
	'has recorded');
INSERT INTO R_RTO
	VALUES (502,
	500,
	503,
	-1);
INSERT INTO R_OIR
	VALUES (502,
	500,
	503,
	0);
INSERT INTO PE_PE
	VALUES (504,
	1,
	463,
	0,
	9);
INSERT INTO R_REL
	VALUES (504,
	13,
	'Established when a goal completes execution and exists for the 
duration of the associated workout session.',
	0);
INSERT INTO R_SIMP
	VALUES (504);
INSERT INTO R_PART
	VALUES (493,
	504,
	505,
	1,
	1,
	'has executed');
INSERT INTO R_RTO
	VALUES (493,
	504,
	505,
	-1);
INSERT INTO R_OIR
	VALUES (493,
	504,
	505,
	0);
INSERT INTO R_PART
	VALUES (357,
	504,
	506,
	0,
	0,
	'was executed within');
INSERT INTO R_RTO
	VALUES (357,
	504,
	506,
	-1);
INSERT INTO R_OIR
	VALUES (357,
	504,
	506,
	0);
INSERT INTO PE_PE
	VALUES (507,
	1,
	463,
	0,
	9);
INSERT INTO R_REL
	VALUES (507,
	14,
	'Represents an open achievement record, one for which a start time has been recorded
but no end time has yet been recorded.  In other words, this association exists only
while the currently executing goal is being achieved.',
	0);
INSERT INTO R_SIMP
	VALUES (507);
INSERT INTO R_PART
	VALUES (493,
	507,
	508,
	0,
	1,
	'is open for');
INSERT INTO R_RTO
	VALUES (493,
	507,
	508,
	-1);
INSERT INTO R_OIR
	VALUES (493,
	507,
	508,
	0);
INSERT INTO R_PART
	VALUES (502,
	507,
	509,
	0,
	1,
	'has open');
INSERT INTO R_RTO
	VALUES (502,
	507,
	509,
	-1);
INSERT INTO R_OIR
	VALUES (502,
	507,
	509,
	0);
INSERT INTO PE_PE
	VALUES (510,
	1,
	463,
	0,
	5);
INSERT INTO S_EE
	VALUES (510,
	'Logging',
	'',
	'LOG',
	0,
	'',
	'Logging',
	1);
INSERT INTO S_BRG
	VALUES (511,
	510,
	'LogSuccess',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (512,
	511,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (513,
	511);
INSERT INTO ACT_ACT
	VALUES (513,
	'bridge',
	0,
	514,
	0,
	0,
	'Logging::LogSuccess',
	0);
INSERT INTO ACT_BLK
	VALUES (514,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	513,
	0);
INSERT INTO S_BRG
	VALUES (381,
	510,
	'LogFailure',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (515,
	381,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (516,
	381);
INSERT INTO ACT_ACT
	VALUES (516,
	'bridge',
	0,
	517,
	0,
	0,
	'Logging::LogFailure',
	0);
INSERT INTO ACT_BLK
	VALUES (517,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	516,
	0);
INSERT INTO S_BRG
	VALUES (518,
	510,
	'LogInfo',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (519,
	518,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (520,
	518);
INSERT INTO ACT_ACT
	VALUES (520,
	'bridge',
	0,
	521,
	0,
	0,
	'Logging::LogInfo',
	0);
INSERT INTO ACT_BLK
	VALUES (521,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	520,
	0);
INSERT INTO S_BRG
	VALUES (522,
	510,
	'LogDate',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (523,
	522,
	'd',
	306,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (524,
	522,
	'message',
	296,
	0,
	'',
	523,
	'');
INSERT INTO ACT_BRB
	VALUES (525,
	522);
INSERT INTO ACT_ACT
	VALUES (525,
	'bridge',
	0,
	526,
	0,
	0,
	'Logging::LogDate',
	0);
INSERT INTO ACT_BLK
	VALUES (526,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	525,
	0);
INSERT INTO S_BRG
	VALUES (527,
	510,
	'LogTime',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (528,
	527,
	't',
	308,
	0,
	'',
	529,
	'');
INSERT INTO S_BPARM
	VALUES (529,
	527,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (530,
	527);
INSERT INTO ACT_ACT
	VALUES (530,
	'bridge',
	0,
	531,
	0,
	0,
	'Logging::LogTime',
	0);
INSERT INTO ACT_BLK
	VALUES (531,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	530,
	0);
INSERT INTO S_BRG
	VALUES (532,
	510,
	'LogReal',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (533,
	532,
	'r',
	133,
	0,
	'',
	534,
	'');
INSERT INTO S_BPARM
	VALUES (534,
	532,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (535,
	532);
INSERT INTO ACT_ACT
	VALUES (535,
	'bridge',
	0,
	536,
	0,
	0,
	'Logging::LogReal',
	0);
INSERT INTO ACT_BLK
	VALUES (536,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	535,
	0);
INSERT INTO S_BRG
	VALUES (537,
	510,
	'LogInteger',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (538,
	537,
	'message',
	188,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (539,
	537);
INSERT INTO ACT_ACT
	VALUES (539,
	'bridge',
	0,
	540,
	0,
	0,
	'Logging::LogInteger',
	0);
INSERT INTO ACT_BLK
	VALUES (540,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	539,
	0);
INSERT INTO PE_PE
	VALUES (541,
	1,
	463,
	0,
	5);
INSERT INTO S_EE
	VALUES (541,
	'Time',
	'The Time external entity provides date, timestamp, and timer related operations.',
	'TIM',
	0,
	'',
	'Time',
	1);
INSERT INTO S_BRG
	VALUES (542,
	541,
	'current_date',
	'',
	1,
	306,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (543,
	542);
INSERT INTO ACT_ACT
	VALUES (543,
	'bridge',
	0,
	544,
	0,
	0,
	'Time::current_date',
	0);
INSERT INTO ACT_BLK
	VALUES (544,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	543,
	0);
INSERT INTO S_BRG
	VALUES (545,
	541,
	'create_date',
	'',
	1,
	306,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (546,
	545,
	'second',
	188,
	0,
	'',
	547,
	'');
INSERT INTO S_BPARM
	VALUES (548,
	545,
	'minute',
	188,
	0,
	'',
	549,
	'');
INSERT INTO S_BPARM
	VALUES (549,
	545,
	'hour',
	188,
	0,
	'',
	550,
	'');
INSERT INTO S_BPARM
	VALUES (550,
	545,
	'day',
	188,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (547,
	545,
	'month',
	188,
	0,
	'',
	548,
	'');
INSERT INTO S_BPARM
	VALUES (551,
	545,
	'year',
	188,
	0,
	'',
	546,
	'');
INSERT INTO ACT_BRB
	VALUES (552,
	545);
INSERT INTO ACT_ACT
	VALUES (552,
	'bridge',
	0,
	553,
	0,
	0,
	'Time::create_date',
	0);
INSERT INTO ACT_BLK
	VALUES (553,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	552,
	0);
INSERT INTO S_BRG
	VALUES (554,
	541,
	'get_second',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (555,
	554,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (556,
	554);
INSERT INTO ACT_ACT
	VALUES (556,
	'bridge',
	0,
	557,
	0,
	0,
	'Time::get_second',
	0);
INSERT INTO ACT_BLK
	VALUES (557,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	556,
	0);
INSERT INTO S_BRG
	VALUES (558,
	541,
	'get_minute',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (559,
	558,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (560,
	558);
INSERT INTO ACT_ACT
	VALUES (560,
	'bridge',
	0,
	561,
	0,
	0,
	'Time::get_minute',
	0);
INSERT INTO ACT_BLK
	VALUES (561,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	560,
	0);
INSERT INTO S_BRG
	VALUES (562,
	541,
	'get_hour',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (563,
	562,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (564,
	562);
INSERT INTO ACT_ACT
	VALUES (564,
	'bridge',
	0,
	565,
	0,
	0,
	'Time::get_hour',
	0);
INSERT INTO ACT_BLK
	VALUES (565,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	564,
	0);
INSERT INTO S_BRG
	VALUES (566,
	541,
	'get_day',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (567,
	566,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (568,
	566);
INSERT INTO ACT_ACT
	VALUES (568,
	'bridge',
	0,
	569,
	0,
	0,
	'Time::get_day',
	0);
INSERT INTO ACT_BLK
	VALUES (569,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	568,
	0);
INSERT INTO S_BRG
	VALUES (570,
	541,
	'get_month',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (571,
	570,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (572,
	570);
INSERT INTO ACT_ACT
	VALUES (572,
	'bridge',
	0,
	573,
	0,
	0,
	'Time::get_month',
	0);
INSERT INTO ACT_BLK
	VALUES (573,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	572,
	0);
INSERT INTO S_BRG
	VALUES (574,
	541,
	'get_year',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (575,
	574,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (576,
	574);
INSERT INTO ACT_ACT
	VALUES (576,
	'bridge',
	0,
	577,
	0,
	0,
	'Time::get_year',
	0);
INSERT INTO ACT_BLK
	VALUES (577,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	576,
	0);
INSERT INTO S_BRG
	VALUES (578,
	541,
	'current_clock',
	'',
	1,
	308,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (579,
	578);
INSERT INTO ACT_ACT
	VALUES (579,
	'bridge',
	0,
	580,
	0,
	0,
	'Time::current_clock',
	0);
INSERT INTO ACT_BLK
	VALUES (580,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	579,
	0);
INSERT INTO S_BRG
	VALUES (581,
	541,
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
	VALUES (582,
	581,
	'microseconds',
	188,
	0,
	'',
	583,
	'');
INSERT INTO S_BPARM
	VALUES (583,
	581,
	'event_inst',
	302,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (584,
	581);
INSERT INTO ACT_ACT
	VALUES (584,
	'bridge',
	0,
	585,
	0,
	0,
	'Time::timer_start',
	0);
INSERT INTO ACT_BLK
	VALUES (585,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	584,
	0);
INSERT INTO S_BRG
	VALUES (586,
	541,
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
	VALUES (587,
	586,
	'microseconds',
	188,
	0,
	'',
	588,
	'');
INSERT INTO S_BPARM
	VALUES (588,
	586,
	'event_inst',
	302,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (589,
	586);
INSERT INTO ACT_ACT
	VALUES (589,
	'bridge',
	0,
	590,
	0,
	0,
	'Time::timer_start_recurring',
	0);
INSERT INTO ACT_BLK
	VALUES (590,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	589,
	0);
INSERT INTO S_BRG
	VALUES (591,
	541,
	'timer_remaining_time',
	'Returns the time remaining (in microseconds) for the passed timer instance. If
the timer has expired, a zero value is returned.',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (592,
	591,
	'timer_inst_ref',
	307,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (593,
	591);
INSERT INTO ACT_ACT
	VALUES (593,
	'bridge',
	0,
	594,
	0,
	0,
	'Time::timer_remaining_time',
	0);
INSERT INTO ACT_BLK
	VALUES (594,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	593,
	0);
INSERT INTO S_BRG
	VALUES (595,
	541,
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
	VALUES (596,
	595,
	'timer_inst_ref',
	307,
	0,
	'',
	597,
	'');
INSERT INTO S_BPARM
	VALUES (597,
	595,
	'microseconds',
	188,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (598,
	595);
INSERT INTO ACT_ACT
	VALUES (598,
	'bridge',
	0,
	599,
	0,
	0,
	'Time::timer_reset_time',
	0);
INSERT INTO ACT_BLK
	VALUES (599,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	598,
	0);
INSERT INTO S_BRG
	VALUES (600,
	541,
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
	VALUES (601,
	600,
	'timer_inst_ref',
	307,
	0,
	'',
	602,
	'');
INSERT INTO S_BPARM
	VALUES (602,
	600,
	'microseconds',
	188,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (603,
	600);
INSERT INTO ACT_ACT
	VALUES (603,
	'bridge',
	0,
	604,
	0,
	0,
	'Time::timer_add_time',
	0);
INSERT INTO ACT_BLK
	VALUES (604,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	603,
	0);
INSERT INTO S_BRG
	VALUES (605,
	541,
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
	VALUES (606,
	605,
	'timer_inst_ref',
	307,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (607,
	605);
INSERT INTO ACT_ACT
	VALUES (607,
	'bridge',
	0,
	608,
	0,
	0,
	'Time::timer_cancel',
	0);
INSERT INTO ACT_BLK
	VALUES (608,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	607,
	0);
INSERT INTO PE_PE
	VALUES (609,
	1,
	463,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (609,
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
	VALUES (610,
	609);
INSERT INTO ACT_ACT
	VALUES (610,
	'function',
	0,
	611,
	0,
	0,
	'GoalTest_1',
	0);
INSERT INTO ACT_BLK
	VALUES (611,
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
	610,
	0);
INSERT INTO ACT_SMT
	VALUES (612,
	611,
	613,
	2,
	1,
	'GoalTest_1 line: 2');
INSERT INTO ACT_FNC
	VALUES (612,
	614,
	2,
	3);
INSERT INTO ACT_SMT
	VALUES (613,
	611,
	615,
	5,
	1,
	'GoalTest_1 line: 5');
INSERT INTO ACT_IOP
	VALUES (613,
	5,
	10,
	5,
	6,
	0,
	342,
	0);
INSERT INTO ACT_SMT
	VALUES (615,
	611,
	616,
	13,
	1,
	'GoalTest_1 line: 13');
INSERT INTO ACT_IOP
	VALUES (615,
	13,
	10,
	13,
	6,
	0,
	342,
	0);
INSERT INTO ACT_SMT
	VALUES (616,
	611,
	617,
	21,
	1,
	'GoalTest_1 line: 21');
INSERT INTO ACT_IOP
	VALUES (616,
	21,
	10,
	21,
	6,
	0,
	342,
	0);
INSERT INTO ACT_SMT
	VALUES (617,
	611,
	0,
	29,
	1,
	'GoalTest_1 line: 29');
INSERT INTO ACT_IOP
	VALUES (617,
	29,
	10,
	29,
	6,
	0,
	342,
	0);
INSERT INTO V_VAL
	VALUES (618,
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
	611);
INSERT INTO V_LIN
	VALUES (618,
	'1');
INSERT INTO V_PAR
	VALUES (618,
	613,
	0,
	'sequenceNumber',
	619,
	6,
	3);
INSERT INTO V_VAL
	VALUES (619,
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
	611);
INSERT INTO V_LRL
	VALUES (619,
	'2.0');
INSERT INTO V_PAR
	VALUES (619,
	613,
	0,
	'minimum',
	620,
	7,
	3);
INSERT INTO V_VAL
	VALUES (620,
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
	611);
INSERT INTO V_LRL
	VALUES (620,
	'8.0');
INSERT INTO V_PAR
	VALUES (620,
	613,
	0,
	'maximum',
	621,
	8,
	3);
INSERT INTO V_VAL
	VALUES (621,
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
	611);
INSERT INTO V_LRL
	VALUES (621,
	'150.0');
INSERT INTO V_PAR
	VALUES (621,
	613,
	0,
	'span',
	622,
	9,
	3);
INSERT INTO V_VAL
	VALUES (622,
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
	611);
INSERT INTO V_LEN
	VALUES (622,
	623,
	10,
	17);
INSERT INTO V_PAR
	VALUES (622,
	613,
	0,
	'criteriaType',
	624,
	10,
	3);
INSERT INTO V_VAL
	VALUES (624,
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
	611);
INSERT INTO V_LEN
	VALUES (624,
	625,
	11,
	13);
INSERT INTO V_PAR
	VALUES (624,
	613,
	0,
	'spanType',
	0,
	11,
	3);
INSERT INTO V_VAL
	VALUES (626,
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
	611);
INSERT INTO V_LIN
	VALUES (626,
	'2');
INSERT INTO V_PAR
	VALUES (626,
	615,
	0,
	'sequenceNumber',
	627,
	14,
	3);
INSERT INTO V_VAL
	VALUES (627,
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
	611);
INSERT INTO V_LRL
	VALUES (627,
	'60.0');
INSERT INTO V_PAR
	VALUES (627,
	615,
	0,
	'minimum',
	628,
	15,
	3);
INSERT INTO V_VAL
	VALUES (628,
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
	611);
INSERT INTO V_LRL
	VALUES (628,
	'80.0');
INSERT INTO V_PAR
	VALUES (628,
	615,
	0,
	'maximum',
	629,
	16,
	3);
INSERT INTO V_VAL
	VALUES (629,
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
	611);
INSERT INTO V_LIN
	VALUES (629,
	'10');
INSERT INTO V_PAR
	VALUES (629,
	615,
	0,
	'span',
	630,
	17,
	3);
INSERT INTO V_VAL
	VALUES (630,
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
	611);
INSERT INTO V_LEN
	VALUES (630,
	631,
	18,
	17);
INSERT INTO V_PAR
	VALUES (630,
	615,
	0,
	'criteriaType',
	632,
	18,
	3);
INSERT INTO V_VAL
	VALUES (632,
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
	611);
INSERT INTO V_LEN
	VALUES (632,
	633,
	19,
	13);
INSERT INTO V_PAR
	VALUES (632,
	615,
	0,
	'spanType',
	0,
	19,
	3);
INSERT INTO V_VAL
	VALUES (634,
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
	611);
INSERT INTO V_LIN
	VALUES (634,
	'3');
INSERT INTO V_PAR
	VALUES (634,
	616,
	0,
	'sequenceNumber',
	635,
	22,
	3);
INSERT INTO V_VAL
	VALUES (635,
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
	611);
INSERT INTO V_LRL
	VALUES (635,
	'5.0');
INSERT INTO V_PAR
	VALUES (635,
	616,
	0,
	'minimum',
	636,
	23,
	3);
INSERT INTO V_VAL
	VALUES (636,
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
	611);
INSERT INTO V_LRL
	VALUES (636,
	'6.0');
INSERT INTO V_PAR
	VALUES (636,
	616,
	0,
	'maximum',
	637,
	24,
	3);
INSERT INTO V_VAL
	VALUES (637,
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
	611);
INSERT INTO V_LIN
	VALUES (637,
	'15');
INSERT INTO V_PAR
	VALUES (637,
	616,
	0,
	'span',
	638,
	25,
	3);
INSERT INTO V_VAL
	VALUES (638,
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
	611);
INSERT INTO V_LEN
	VALUES (638,
	623,
	26,
	17);
INSERT INTO V_PAR
	VALUES (638,
	616,
	0,
	'criteriaType',
	639,
	26,
	3);
INSERT INTO V_VAL
	VALUES (639,
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
	611);
INSERT INTO V_LEN
	VALUES (639,
	633,
	27,
	13);
INSERT INTO V_PAR
	VALUES (639,
	616,
	0,
	'spanType',
	0,
	27,
	3);
INSERT INTO V_VAL
	VALUES (640,
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
	611);
INSERT INTO V_LIN
	VALUES (640,
	'4');
INSERT INTO V_PAR
	VALUES (640,
	617,
	0,
	'sequenceNumber',
	641,
	30,
	3);
INSERT INTO V_VAL
	VALUES (641,
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
	611);
INSERT INTO V_LRL
	VALUES (641,
	'1.0');
INSERT INTO V_PAR
	VALUES (641,
	617,
	0,
	'minimum',
	642,
	31,
	3);
INSERT INTO V_VAL
	VALUES (642,
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
	611);
INSERT INTO V_LRL
	VALUES (642,
	'2.0');
INSERT INTO V_PAR
	VALUES (642,
	617,
	0,
	'maximum',
	643,
	32,
	3);
INSERT INTO V_VAL
	VALUES (643,
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
	611);
INSERT INTO V_LIN
	VALUES (643,
	'15');
INSERT INTO V_PAR
	VALUES (643,
	617,
	0,
	'span',
	644,
	33,
	3);
INSERT INTO V_VAL
	VALUES (644,
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
	611);
INSERT INTO V_LEN
	VALUES (644,
	623,
	34,
	17);
INSERT INTO V_PAR
	VALUES (644,
	617,
	0,
	'criteriaType',
	645,
	34,
	3);
INSERT INTO V_VAL
	VALUES (645,
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
	611);
INSERT INTO V_LEN
	VALUES (645,
	633,
	35,
	13);
INSERT INTO V_PAR
	VALUES (645,
	617,
	0,
	'spanType',
	0,
	35,
	3);
INSERT INTO PE_PE
	VALUES (614,
	1,
	463,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (614,
	0,
	'Initialize',
	'',
	'// Create a workout session and everything required to support it.
WorkoutSession::sessioncreate();',
	294,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (646,
	614);
INSERT INTO ACT_ACT
	VALUES (646,
	'function',
	0,
	647,
	0,
	0,
	'Initialize',
	0);
INSERT INTO ACT_BLK
	VALUES (647,
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
	646,
	0);
INSERT INTO ACT_SMT
	VALUES (648,
	647,
	0,
	2,
	1,
	'Initialize line: 2');
INSERT INTO ACT_TFM
	VALUES (648,
	411,
	0,
	2,
	17,
	2,
	1);
INSERT INTO PE_PE
	VALUES (502,
	1,
	463,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (502,
	'Achievement',
	10,
	'Achievement',
	'Each instance represents one contiguous period of time during 
which a particular goal was being met (achieved).',
	0);
INSERT INTO O_TFR
	VALUES (649,
	502,
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
	VALUES (650,
	649);
INSERT INTO ACT_ACT
	VALUES (650,
	'operation',
	0,
	651,
	0,
	0,
	'Achievement::close',
	0);
INSERT INTO ACT_BLK
	VALUES (651,
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
	650,
	0);
INSERT INTO ACT_SMT
	VALUES (652,
	651,
	653,
	3,
	1,
	'Achievement::close line: 3');
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
	'''is open for''',
	652,
	507,
	0,
	2,
	493,
	3,
	34,
	3,
	39,
	3,
	43);
INSERT INTO ACT_SMT
	VALUES (653,
	651,
	657,
	4,
	1,
	'Achievement::close line: 4');
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
	'''is currently executing within''',
	653,
	497,
	661,
	2,
	357,
	5,
	9,
	5,
	24,
	5,
	28);
INSERT INTO ACT_LNK
	VALUES (661,
	'''is timed by''',
	0,
	481,
	0,
	2,
	371,
	5,
	62,
	5,
	75,
	5,
	78);
INSERT INTO ACT_SMT
	VALUES (657,
	651,
	662,
	6,
	3,
	'Achievement::close line: 6');
INSERT INTO ACT_AI
	VALUES (657,
	663,
	664,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (662,
	651,
	665,
	7,
	1,
	'Achievement::close line: 7');
INSERT INTO ACT_UNR
	VALUES (662,
	666,
	654,
	'''is open for''',
	507,
	7,
	32,
	7,
	36);
INSERT INTO ACT_SMT
	VALUES (665,
	651,
	0,
	8,
	1,
	'Achievement::close line: 8');
INSERT INTO ACT_REL
	VALUES (665,
	666,
	654,
	'''specifies achievement of''',
	500,
	8,
	28,
	8,
	32);
INSERT INTO V_VAL
	VALUES (655,
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
	651);
INSERT INTO V_IRF
	VALUES (655,
	666);
INSERT INTO V_VAL
	VALUES (659,
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
	651);
INSERT INTO V_IRF
	VALUES (659,
	654);
INSERT INTO V_VAL
	VALUES (667,
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
	651);
INSERT INTO V_IRF
	VALUES (667,
	666);
INSERT INTO V_VAL
	VALUES (664,
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
	651);
INSERT INTO V_AVL
	VALUES (664,
	667,
	502,
	668);
INSERT INTO V_VAL
	VALUES (669,
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
	651);
INSERT INTO V_IRF
	VALUES (669,
	658);
INSERT INTO V_VAL
	VALUES (663,
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
	651);
INSERT INTO V_AVL
	VALUES (663,
	669,
	371,
	670);
INSERT INTO V_VAR
	VALUES (654,
	651,
	'goal',
	1,
	300);
INSERT INTO V_INT
	VALUES (654,
	0,
	493);
INSERT INTO V_VAR
	VALUES (666,
	651,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (666,
	0,
	502);
INSERT INTO V_VAR
	VALUES (658,
	651,
	'workoutTimer',
	1,
	300);
INSERT INTO V_INT
	VALUES (658,
	0,
	371);
INSERT INTO O_NBATTR
	VALUES (671,
	502);
INSERT INTO O_BATTR
	VALUES (671,
	502);
INSERT INTO O_ATTR
	VALUES (671,
	502,
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
	VALUES (668,
	502);
INSERT INTO O_BATTR
	VALUES (668,
	502);
INSERT INTO O_ATTR
	VALUES (668,
	502,
	671,
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
	502);
INSERT INTO O_ID
	VALUES (1,
	502);
INSERT INTO O_ID
	VALUES (2,
	502);
INSERT INTO PE_PE
	VALUES (399,
	1,
	463,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (399,
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
	VALUES (672,
	399,
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
	VALUES (673,
	672);
INSERT INTO ACT_ACT
	VALUES (673,
	'class operation',
	0,
	674,
	0,
	0,
	'Display::goalDispositionIndicator',
	0);
INSERT INTO ACT_BLK
	VALUES (674,
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
	673,
	0);
INSERT INTO ACT_SMT
	VALUES (675,
	674,
	676,
	7,
	1,
	'Display::goalDispositionIndicator line: 7');
INSERT INTO ACT_FIO
	VALUES (675,
	677,
	1,
	'any',
	357,
	7,
	38);
INSERT INTO ACT_SMT
	VALUES (676,
	674,
	678,
	8,
	1,
	'Display::goalDispositionIndicator line: 8');
INSERT INTO ACT_SEL
	VALUES (676,
	679,
	1,
	'one',
	680);
INSERT INTO ACT_SR
	VALUES (676);
INSERT INTO ACT_LNK
	VALUES (681,
	'''is currently executing''',
	676,
	497,
	0,
	2,
	493,
	8,
	37,
	8,
	42,
	8,
	46);
INSERT INTO ACT_SMT
	VALUES (678,
	674,
	682,
	12,
	1,
	'Display::goalDispositionIndicator line: 12');
INSERT INTO ACT_AI
	VALUES (678,
	683,
	684,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (682,
	674,
	685,
	13,
	1,
	'Display::goalDispositionIndicator line: 13');
INSERT INTO ACT_IF
	VALUES (682,
	686,
	687,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (685,
	674,
	0,
	23,
	1,
	'Display::goalDispositionIndicator line: 23');
INSERT INTO ACT_RET
	VALUES (685,
	688);
INSERT INTO V_VAL
	VALUES (680,
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
	674);
INSERT INTO V_IRF
	VALUES (680,
	677);
INSERT INTO V_VAL
	VALUES (684,
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
	674);
INSERT INTO V_TVL
	VALUES (684,
	689);
INSERT INTO V_VAL
	VALUES (683,
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
	674);
INSERT INTO V_LEN
	VALUES (683,
	690,
	12,
	13);
INSERT INTO V_VAL
	VALUES (691,
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
	674);
INSERT INTO V_IRF
	VALUES (691,
	679);
INSERT INTO V_VAL
	VALUES (692,
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
	674);
INSERT INTO V_UNY
	VALUES (692,
	691,
	'empty');
INSERT INTO V_VAL
	VALUES (687,
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
	674);
INSERT INTO V_UNY
	VALUES (687,
	692,
	'not');
INSERT INTO V_VAL
	VALUES (688,
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
	674);
INSERT INTO V_TVL
	VALUES (688,
	689);
INSERT INTO V_VAR
	VALUES (677,
	674,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (677,
	0,
	357);
INSERT INTO V_VAR
	VALUES (679,
	674,
	'goal',
	1,
	300);
INSERT INTO V_INT
	VALUES (679,
	0,
	493);
INSERT INTO V_VAR
	VALUES (689,
	674,
	'indicator',
	1,
	180);
INSERT INTO V_TRN
	VALUES (689,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (686,
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
	673,
	0);
INSERT INTO ACT_SMT
	VALUES (693,
	686,
	0,
	14,
	3,
	'Display::goalDispositionIndicator line: 14');
INSERT INTO ACT_IF
	VALUES (693,
	694,
	695,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (696,
	686,
	0,
	16,
	3,
	'Display::goalDispositionIndicator line: 16');
INSERT INTO ACT_EL
	VALUES (696,
	697,
	698,
	693);
INSERT INTO ACT_SMT
	VALUES (699,
	686,
	0,
	18,
	3,
	'Display::goalDispositionIndicator line: 18');
INSERT INTO ACT_E
	VALUES (699,
	700,
	693);
INSERT INTO V_VAL
	VALUES (701,
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
	686);
INSERT INTO V_IRF
	VALUES (701,
	679);
INSERT INTO V_VAL
	VALUES (702,
	0,
	0,
	14,
	13,
	23,
	0,
	0,
	0,
	0,
	703,
	686);
INSERT INTO V_AVL
	VALUES (702,
	701,
	493,
	704);
INSERT INTO V_VAL
	VALUES (695,
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
	686);
INSERT INTO V_BIN
	VALUES (695,
	705,
	702,
	'==');
INSERT INTO V_VAL
	VALUES (705,
	0,
	0,
	14,
	45,
	52,
	0,
	0,
	0,
	0,
	703,
	686);
INSERT INTO V_LEN
	VALUES (705,
	706,
	14,
	28);
INSERT INTO V_VAL
	VALUES (707,
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
	686);
INSERT INTO V_IRF
	VALUES (707,
	679);
INSERT INTO V_VAL
	VALUES (708,
	0,
	0,
	16,
	15,
	25,
	0,
	0,
	0,
	0,
	703,
	686);
INSERT INTO V_AVL
	VALUES (708,
	707,
	493,
	704);
INSERT INTO V_VAL
	VALUES (698,
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
	686);
INSERT INTO V_BIN
	VALUES (698,
	709,
	708,
	'==');
INSERT INTO V_VAL
	VALUES (709,
	0,
	0,
	16,
	47,
	54,
	0,
	0,
	0,
	0,
	703,
	686);
INSERT INTO V_LEN
	VALUES (709,
	710,
	16,
	30);
INSERT INTO ACT_BLK
	VALUES (694,
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
	673,
	0);
INSERT INTO ACT_SMT
	VALUES (711,
	694,
	0,
	15,
	5,
	'Display::goalDispositionIndicator line: 15');
INSERT INTO ACT_AI
	VALUES (711,
	712,
	713,
	0,
	0);
INSERT INTO V_VAL
	VALUES (713,
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
	694);
INSERT INTO V_TVL
	VALUES (713,
	689);
INSERT INTO V_VAL
	VALUES (712,
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
	694);
INSERT INTO V_LEN
	VALUES (712,
	714,
	15,
	17);
INSERT INTO ACT_BLK
	VALUES (697,
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
	673,
	0);
INSERT INTO ACT_SMT
	VALUES (715,
	697,
	0,
	17,
	5,
	'Display::goalDispositionIndicator line: 17');
INSERT INTO ACT_AI
	VALUES (715,
	716,
	717,
	0,
	0);
INSERT INTO V_VAL
	VALUES (717,
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
	697);
INSERT INTO V_TVL
	VALUES (717,
	689);
INSERT INTO V_VAL
	VALUES (716,
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
	697);
INSERT INTO V_LEN
	VALUES (716,
	718,
	17,
	17);
INSERT INTO ACT_BLK
	VALUES (700,
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
	673,
	0);
INSERT INTO ACT_SMT
	VALUES (719,
	700,
	0,
	19,
	5,
	'Display::goalDispositionIndicator line: 19');
INSERT INTO ACT_AI
	VALUES (719,
	720,
	721,
	0,
	0);
INSERT INTO V_VAL
	VALUES (721,
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
	700);
INSERT INTO V_TVL
	VALUES (721,
	689);
INSERT INTO V_VAL
	VALUES (720,
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
	700);
INSERT INTO V_LEN
	VALUES (720,
	722,
	19,
	17);
INSERT INTO O_NBATTR
	VALUES (723,
	399);
INSERT INTO O_BATTR
	VALUES (723,
	399);
INSERT INTO O_ATTR
	VALUES (723,
	399,
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
	399);
INSERT INTO O_ID
	VALUES (1,
	399);
INSERT INTO O_ID
	VALUES (2,
	399);
INSERT INTO SM_ISM
	VALUES (724,
	399);
INSERT INTO SM_SM
	VALUES (724,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (724);
INSERT INTO SM_LEVT
	VALUES (400,
	724,
	0);
INSERT INTO SM_SEVT
	VALUES (400,
	724,
	0);
INSERT INTO SM_EVT
	VALUES (400,
	724,
	0,
	1,
	'modeChange',
	0,
	'',
	'Display1',
	'');
INSERT INTO SM_LEVT
	VALUES (725,
	724,
	0);
INSERT INTO SM_SEVT
	VALUES (725,
	724,
	0);
INSERT INTO SM_EVT
	VALUES (725,
	724,
	0,
	2,
	'refresh',
	0,
	'',
	'Display2',
	'');
INSERT INTO SM_STATE
	VALUES (726,
	724,
	0,
	'displayDistance',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (726,
	400,
	724,
	0);
INSERT INTO SM_SEME
	VALUES (726,
	725,
	724,
	0);
INSERT INTO SM_MOAH
	VALUES (727,
	724,
	726);
INSERT INTO SM_AH
	VALUES (727,
	724);
INSERT INTO SM_ACT
	VALUES (727,
	724,
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
	VALUES (728,
	724,
	727);
INSERT INTO ACT_ACT
	VALUES (728,
	'state',
	0,
	729,
	0,
	0,
	'Display::displayDistance',
	0);
INSERT INTO ACT_BLK
	VALUES (729,
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
	728,
	0);
INSERT INTO ACT_SMT
	VALUES (730,
	729,
	731,
	1,
	1,
	'Display::displayDistance line: 1');
INSERT INTO ACT_SEL
	VALUES (730,
	732,
	1,
	'one',
	733);
INSERT INTO ACT_SR
	VALUES (730);
INSERT INTO ACT_LNK
	VALUES (734,
	'''indicates current status of''',
	730,
	398,
	0,
	2,
	357,
	1,
	37,
	1,
	52,
	1,
	55);
INSERT INTO ACT_SMT
	VALUES (731,
	729,
	735,
	2,
	1,
	'Display::displayDistance line: 2');
INSERT INTO ACT_AI
	VALUES (731,
	736,
	737,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (735,
	729,
	738,
	3,
	1,
	'Display::displayDistance line: 3');
INSERT INTO ACT_IF
	VALUES (735,
	739,
	740,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (741,
	729,
	0,
	5,
	1,
	'Display::displayDistance line: 5');
INSERT INTO ACT_E
	VALUES (741,
	742,
	735);
INSERT INTO ACT_SMT
	VALUES (738,
	729,
	0,
	8,
	1,
	'Display::displayDistance line: 8');
INSERT INTO ACT_IOP
	VALUES (738,
	8,
	10,
	8,
	6,
	0,
	336,
	0);
INSERT INTO V_VAL
	VALUES (733,
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
	729);
INSERT INTO V_IRF
	VALUES (733,
	743);
INSERT INTO V_VAL
	VALUES (737,
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
	729);
INSERT INTO V_TVL
	VALUES (737,
	744);
INSERT INTO V_VAL
	VALUES (745,
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
	729);
INSERT INTO V_IRF
	VALUES (745,
	732);
INSERT INTO V_VAL
	VALUES (736,
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
	729);
INSERT INTO V_AVL
	VALUES (736,
	745,
	357,
	746);
INSERT INTO V_VAL
	VALUES (747,
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
	729);
INSERT INTO V_TVL
	VALUES (747,
	744);
INSERT INTO V_VAL
	VALUES (740,
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
	729);
INSERT INTO V_BIN
	VALUES (740,
	748,
	747,
	'>');
INSERT INTO V_VAL
	VALUES (748,
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
	729);
INSERT INTO V_LRL
	VALUES (748,
	'1000.0');
INSERT INTO V_VAL
	VALUES (749,
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
	729);
INSERT INTO V_TRV
	VALUES (749,
	672,
	0,
	1,
	8,
	35);
INSERT INTO V_PAR
	VALUES (749,
	738,
	0,
	'indicator',
	0,
	8,
	24);
INSERT INTO V_VAR
	VALUES (732,
	729,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (732,
	0,
	357);
INSERT INTO V_VAR
	VALUES (743,
	729,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (743,
	0,
	399);
INSERT INTO V_VAR
	VALUES (744,
	729,
	'distance',
	1,
	133);
INSERT INTO V_TRN
	VALUES (744,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (739,
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
	728,
	0);
INSERT INTO ACT_SMT
	VALUES (750,
	739,
	0,
	4,
	3,
	'Display::displayDistance line: 4');
INSERT INTO ACT_IOP
	VALUES (750,
	4,
	12,
	4,
	8,
	0,
	333,
	0);
INSERT INTO V_VAL
	VALUES (751,
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
	739);
INSERT INTO V_TVL
	VALUES (751,
	744);
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
	133,
	739);
INSERT INTO V_BIN
	VALUES (752,
	753,
	751,
	'/');
INSERT INTO V_PAR
	VALUES (752,
	750,
	0,
	'value',
	754,
	4,
	20);
INSERT INTO V_VAL
	VALUES (753,
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
	739);
INSERT INTO V_LRL
	VALUES (753,
	'1000.0');
INSERT INTO V_VAL
	VALUES (754,
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
	739);
INSERT INTO V_LEN
	VALUES (754,
	755,
	4,
	52);
INSERT INTO V_PAR
	VALUES (754,
	750,
	0,
	'unit',
	0,
	4,
	46);
INSERT INTO ACT_BLK
	VALUES (742,
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
	728,
	0);
INSERT INTO ACT_SMT
	VALUES (756,
	742,
	0,
	6,
	3,
	'Display::displayDistance line: 6');
INSERT INTO ACT_IOP
	VALUES (756,
	6,
	12,
	6,
	8,
	0,
	333,
	0);
INSERT INTO V_VAL
	VALUES (757,
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
	742);
INSERT INTO V_TVL
	VALUES (757,
	744);
INSERT INTO V_PAR
	VALUES (757,
	756,
	0,
	'value',
	758,
	6,
	20);
INSERT INTO V_VAL
	VALUES (758,
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
	742);
INSERT INTO V_LEN
	VALUES (758,
	759,
	6,
	43);
INSERT INTO V_PAR
	VALUES (758,
	756,
	0,
	'unit',
	0,
	6,
	37);
INSERT INTO SM_STATE
	VALUES (760,
	724,
	0,
	'displaySpeed',
	2,
	0);
INSERT INTO SM_SEME
	VALUES (760,
	400,
	724,
	0);
INSERT INTO SM_SEME
	VALUES (760,
	725,
	724,
	0);
INSERT INTO SM_MOAH
	VALUES (761,
	724,
	760);
INSERT INTO SM_AH
	VALUES (761,
	724);
INSERT INTO SM_ACT
	VALUES (761,
	724,
	1,
	'select one session 
  related by self->WorkoutSession[R7.''indicates current status of''];
speed = session.currentSpeed;
send UI::setData(value: speed, unit: Unit::kmPerHour);
send UI::setIndicator( indicator: Display::goalDispositionIndicator() );',
	'');
INSERT INTO ACT_SAB
	VALUES (762,
	724,
	761);
INSERT INTO ACT_ACT
	VALUES (762,
	'state',
	0,
	763,
	0,
	0,
	'Display::displaySpeed',
	0);
INSERT INTO ACT_BLK
	VALUES (763,
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
	762,
	0);
INSERT INTO ACT_SMT
	VALUES (764,
	763,
	765,
	1,
	1,
	'Display::displaySpeed line: 1');
INSERT INTO ACT_SEL
	VALUES (764,
	766,
	1,
	'one',
	767);
INSERT INTO ACT_SR
	VALUES (764);
INSERT INTO ACT_LNK
	VALUES (768,
	'''indicates current status of''',
	764,
	398,
	0,
	2,
	357,
	2,
	20,
	2,
	35,
	2,
	38);
INSERT INTO ACT_SMT
	VALUES (765,
	763,
	769,
	3,
	1,
	'Display::displaySpeed line: 3');
INSERT INTO ACT_AI
	VALUES (765,
	770,
	771,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (769,
	763,
	772,
	4,
	1,
	'Display::displaySpeed line: 4');
INSERT INTO ACT_IOP
	VALUES (769,
	4,
	10,
	4,
	6,
	0,
	333,
	0);
INSERT INTO ACT_SMT
	VALUES (772,
	763,
	0,
	5,
	1,
	'Display::displaySpeed line: 5');
INSERT INTO ACT_IOP
	VALUES (772,
	5,
	10,
	5,
	6,
	0,
	336,
	0);
INSERT INTO V_VAL
	VALUES (767,
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
	763);
INSERT INTO V_IRF
	VALUES (767,
	773);
INSERT INTO V_VAL
	VALUES (771,
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
	763);
INSERT INTO V_TVL
	VALUES (771,
	774);
INSERT INTO V_VAL
	VALUES (775,
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
	763);
INSERT INTO V_IRF
	VALUES (775,
	766);
INSERT INTO V_VAL
	VALUES (770,
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
	763);
INSERT INTO V_AVL
	VALUES (770,
	775,
	357,
	776);
INSERT INTO V_VAL
	VALUES (777,
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
	763);
INSERT INTO V_TVL
	VALUES (777,
	774);
INSERT INTO V_PAR
	VALUES (777,
	769,
	0,
	'value',
	778,
	4,
	18);
INSERT INTO V_VAL
	VALUES (778,
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
	763);
INSERT INTO V_LEN
	VALUES (778,
	779,
	4,
	38);
INSERT INTO V_PAR
	VALUES (778,
	769,
	0,
	'unit',
	0,
	4,
	32);
INSERT INTO V_VAL
	VALUES (780,
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
	763);
INSERT INTO V_TRV
	VALUES (780,
	672,
	0,
	1,
	5,
	35);
INSERT INTO V_PAR
	VALUES (780,
	772,
	0,
	'indicator',
	0,
	5,
	24);
INSERT INTO V_VAR
	VALUES (766,
	763,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (766,
	0,
	357);
INSERT INTO V_VAR
	VALUES (773,
	763,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (773,
	0,
	399);
INSERT INTO V_VAR
	VALUES (774,
	763,
	'speed',
	1,
	133);
INSERT INTO V_TRN
	VALUES (774,
	0,
	'');
INSERT INTO SM_STATE
	VALUES (781,
	724,
	0,
	'displayPace',
	3,
	0);
INSERT INTO SM_SEME
	VALUES (781,
	400,
	724,
	0);
INSERT INTO SM_SEME
	VALUES (781,
	725,
	724,
	0);
INSERT INTO SM_MOAH
	VALUES (782,
	724,
	781);
INSERT INTO SM_AH
	VALUES (782,
	724);
INSERT INTO SM_ACT
	VALUES (782,
	724,
	1,
	'select one session 
  related by self->WorkoutSession[R7.''indicates current status of''];
pace = session.currentPace;
send UI::setData(value: pace, unit: Unit::minPerKm);
send UI::setIndicator( indicator: Display::goalDispositionIndicator() );',
	'');
INSERT INTO ACT_SAB
	VALUES (783,
	724,
	782);
INSERT INTO ACT_ACT
	VALUES (783,
	'state',
	0,
	784,
	0,
	0,
	'Display::displayPace',
	0);
INSERT INTO ACT_BLK
	VALUES (784,
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
	783,
	0);
INSERT INTO ACT_SMT
	VALUES (785,
	784,
	786,
	1,
	1,
	'Display::displayPace line: 1');
INSERT INTO ACT_SEL
	VALUES (785,
	787,
	1,
	'one',
	788);
INSERT INTO ACT_SR
	VALUES (785);
INSERT INTO ACT_LNK
	VALUES (789,
	'''indicates current status of''',
	785,
	398,
	0,
	2,
	357,
	2,
	20,
	2,
	35,
	2,
	38);
INSERT INTO ACT_SMT
	VALUES (786,
	784,
	790,
	3,
	1,
	'Display::displayPace line: 3');
INSERT INTO ACT_AI
	VALUES (786,
	791,
	792,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (790,
	784,
	793,
	4,
	1,
	'Display::displayPace line: 4');
INSERT INTO ACT_IOP
	VALUES (790,
	4,
	10,
	4,
	6,
	0,
	333,
	0);
INSERT INTO ACT_SMT
	VALUES (793,
	784,
	0,
	5,
	1,
	'Display::displayPace line: 5');
INSERT INTO ACT_IOP
	VALUES (793,
	5,
	10,
	5,
	6,
	0,
	336,
	0);
INSERT INTO V_VAL
	VALUES (788,
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
	784);
INSERT INTO V_IRF
	VALUES (788,
	794);
INSERT INTO V_VAL
	VALUES (792,
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
	784);
INSERT INTO V_TVL
	VALUES (792,
	795);
INSERT INTO V_VAL
	VALUES (796,
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
	784);
INSERT INTO V_IRF
	VALUES (796,
	787);
INSERT INTO V_VAL
	VALUES (791,
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
	784);
INSERT INTO V_AVL
	VALUES (791,
	796,
	357,
	797);
INSERT INTO V_VAL
	VALUES (798,
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
	784);
INSERT INTO V_TVL
	VALUES (798,
	795);
INSERT INTO V_PAR
	VALUES (798,
	790,
	0,
	'value',
	799,
	4,
	18);
INSERT INTO V_VAL
	VALUES (799,
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
	784);
INSERT INTO V_LEN
	VALUES (799,
	800,
	4,
	37);
INSERT INTO V_PAR
	VALUES (799,
	790,
	0,
	'unit',
	0,
	4,
	31);
INSERT INTO V_VAL
	VALUES (801,
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
	784);
INSERT INTO V_TRV
	VALUES (801,
	672,
	0,
	1,
	5,
	35);
INSERT INTO V_PAR
	VALUES (801,
	793,
	0,
	'indicator',
	0,
	5,
	24);
INSERT INTO V_VAR
	VALUES (787,
	784,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (787,
	0,
	357);
INSERT INTO V_VAR
	VALUES (794,
	784,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (794,
	0,
	399);
INSERT INTO V_VAR
	VALUES (795,
	784,
	'pace',
	1,
	133);
INSERT INTO V_TRN
	VALUES (795,
	0,
	'');
INSERT INTO SM_STATE
	VALUES (802,
	724,
	0,
	'displayHeartRate',
	4,
	0);
INSERT INTO SM_SEME
	VALUES (802,
	400,
	724,
	0);
INSERT INTO SM_SEME
	VALUES (802,
	725,
	724,
	0);
INSERT INTO SM_MOAH
	VALUES (803,
	724,
	802);
INSERT INTO SM_AH
	VALUES (803,
	724);
INSERT INTO SM_ACT
	VALUES (803,
	724,
	1,
	'select one session 
  related by self->WorkoutSession[R7.''indicates current status of''];
heartRate = session.currentHeartRate;
send UI::setData(value: heartRate, unit: Unit::bpm);
send UI::setIndicator( indicator: Display::goalDispositionIndicator() );
',
	'');
INSERT INTO ACT_SAB
	VALUES (804,
	724,
	803);
INSERT INTO ACT_ACT
	VALUES (804,
	'state',
	0,
	805,
	0,
	0,
	'Display::displayHeartRate',
	0);
INSERT INTO ACT_BLK
	VALUES (805,
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
	804,
	0);
INSERT INTO ACT_SMT
	VALUES (806,
	805,
	807,
	1,
	1,
	'Display::displayHeartRate line: 1');
INSERT INTO ACT_SEL
	VALUES (806,
	808,
	1,
	'one',
	809);
INSERT INTO ACT_SR
	VALUES (806);
INSERT INTO ACT_LNK
	VALUES (810,
	'''indicates current status of''',
	806,
	398,
	0,
	2,
	357,
	2,
	20,
	2,
	35,
	2,
	38);
INSERT INTO ACT_SMT
	VALUES (807,
	805,
	811,
	3,
	1,
	'Display::displayHeartRate line: 3');
INSERT INTO ACT_AI
	VALUES (807,
	812,
	813,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (811,
	805,
	814,
	4,
	1,
	'Display::displayHeartRate line: 4');
INSERT INTO ACT_IOP
	VALUES (811,
	4,
	10,
	4,
	6,
	0,
	333,
	0);
INSERT INTO ACT_SMT
	VALUES (814,
	805,
	0,
	5,
	1,
	'Display::displayHeartRate line: 5');
INSERT INTO ACT_IOP
	VALUES (814,
	5,
	10,
	5,
	6,
	0,
	336,
	0);
INSERT INTO V_VAL
	VALUES (809,
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
	805);
INSERT INTO V_IRF
	VALUES (809,
	815);
INSERT INTO V_VAL
	VALUES (813,
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
	805);
INSERT INTO V_TVL
	VALUES (813,
	816);
INSERT INTO V_VAL
	VALUES (817,
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
	805);
INSERT INTO V_IRF
	VALUES (817,
	808);
INSERT INTO V_VAL
	VALUES (812,
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
	805);
INSERT INTO V_AVL
	VALUES (812,
	817,
	357,
	818);
INSERT INTO V_VAL
	VALUES (819,
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
	805);
INSERT INTO V_TVL
	VALUES (819,
	816);
INSERT INTO V_PAR
	VALUES (819,
	811,
	0,
	'value',
	820,
	4,
	18);
INSERT INTO V_VAL
	VALUES (820,
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
	805);
INSERT INTO V_LEN
	VALUES (820,
	821,
	4,
	42);
INSERT INTO V_PAR
	VALUES (820,
	811,
	0,
	'unit',
	0,
	4,
	36);
INSERT INTO V_VAL
	VALUES (822,
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
	805);
INSERT INTO V_TRV
	VALUES (822,
	672,
	0,
	1,
	5,
	35);
INSERT INTO V_PAR
	VALUES (822,
	814,
	0,
	'indicator',
	0,
	5,
	24);
INSERT INTO V_VAR
	VALUES (808,
	805,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (808,
	0,
	357);
INSERT INTO V_VAR
	VALUES (815,
	805,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (815,
	0,
	399);
INSERT INTO V_VAR
	VALUES (816,
	805,
	'heartRate',
	1,
	188);
INSERT INTO V_TRN
	VALUES (816,
	0,
	'');
INSERT INTO SM_STATE
	VALUES (823,
	724,
	0,
	'displayLapCount',
	5,
	0);
INSERT INTO SM_SEME
	VALUES (823,
	400,
	724,
	0);
INSERT INTO SM_SEME
	VALUES (823,
	725,
	724,
	0);
INSERT INTO SM_MOAH
	VALUES (824,
	724,
	823);
INSERT INTO SM_AH
	VALUES (824,
	724);
INSERT INTO SM_ACT
	VALUES (824,
	724,
	1,
	'select many lapMarkers related by
  self->WorkoutSession[R7.''indicates current status of'']->
  TrackLog[R4.''captures path in'']->LapMarker[R5.''has laps defined by''];
send UI::setData(value: cardinality lapMarkers, unit: Unit::laps);
send UI::setIndicator( indicator: Display::goalDispositionIndicator() );
',
	'');
INSERT INTO ACT_SAB
	VALUES (825,
	724,
	824);
INSERT INTO ACT_ACT
	VALUES (825,
	'state',
	0,
	826,
	0,
	0,
	'Display::displayLapCount',
	0);
INSERT INTO ACT_BLK
	VALUES (826,
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
	825,
	0);
INSERT INTO ACT_SMT
	VALUES (827,
	826,
	828,
	1,
	1,
	'Display::displayLapCount line: 1');
INSERT INTO ACT_SEL
	VALUES (827,
	829,
	1,
	'many',
	830);
INSERT INTO ACT_SR
	VALUES (827);
INSERT INTO ACT_LNK
	VALUES (831,
	'''indicates current status of''',
	827,
	398,
	832,
	2,
	357,
	2,
	9,
	2,
	24,
	2,
	27);
INSERT INTO ACT_LNK
	VALUES (832,
	'''captures path in''',
	0,
	484,
	833,
	2,
	465,
	3,
	3,
	3,
	12,
	3,
	15);
INSERT INTO ACT_LNK
	VALUES (833,
	'''has laps defined by''',
	0,
	475,
	0,
	3,
	476,
	3,
	36,
	3,
	46,
	3,
	49);
INSERT INTO ACT_SMT
	VALUES (828,
	826,
	834,
	4,
	1,
	'Display::displayLapCount line: 4');
INSERT INTO ACT_IOP
	VALUES (828,
	4,
	10,
	4,
	6,
	0,
	333,
	0);
INSERT INTO ACT_SMT
	VALUES (834,
	826,
	0,
	5,
	1,
	'Display::displayLapCount line: 5');
INSERT INTO ACT_IOP
	VALUES (834,
	5,
	10,
	5,
	6,
	0,
	336,
	0);
INSERT INTO V_VAL
	VALUES (830,
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
	826);
INSERT INTO V_IRF
	VALUES (830,
	835);
INSERT INTO V_VAL
	VALUES (836,
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
	826);
INSERT INTO V_ISR
	VALUES (836,
	829);
INSERT INTO V_VAL
	VALUES (837,
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
	826);
INSERT INTO V_UNY
	VALUES (837,
	836,
	'cardinality');
INSERT INTO V_PAR
	VALUES (837,
	828,
	0,
	'value',
	838,
	4,
	18);
INSERT INTO V_VAL
	VALUES (838,
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
	826);
INSERT INTO V_LEN
	VALUES (838,
	839,
	4,
	55);
INSERT INTO V_PAR
	VALUES (838,
	828,
	0,
	'unit',
	0,
	4,
	49);
INSERT INTO V_VAL
	VALUES (840,
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
	826);
INSERT INTO V_TRV
	VALUES (840,
	672,
	0,
	1,
	5,
	35);
INSERT INTO V_PAR
	VALUES (840,
	834,
	0,
	'indicator',
	0,
	5,
	24);
INSERT INTO V_VAR
	VALUES (829,
	826,
	'lapMarkers',
	1,
	301);
INSERT INTO V_INS
	VALUES (829,
	476);
INSERT INTO V_VAR
	VALUES (835,
	826,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (835,
	0,
	399);
INSERT INTO SM_NSTXN
	VALUES (841,
	724,
	726,
	400,
	0);
INSERT INTO SM_TAH
	VALUES (842,
	724,
	841);
INSERT INTO SM_AH
	VALUES (842,
	724);
INSERT INTO SM_ACT
	VALUES (842,
	724,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (843,
	724,
	842);
INSERT INTO ACT_ACT
	VALUES (843,
	'transition',
	0,
	844,
	0,
	0,
	'Display1: modeChange',
	0);
INSERT INTO ACT_BLK
	VALUES (844,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	843,
	0);
INSERT INTO SM_TXN
	VALUES (841,
	724,
	760,
	0);
INSERT INTO SM_NSTXN
	VALUES (845,
	724,
	760,
	400,
	0);
INSERT INTO SM_TAH
	VALUES (846,
	724,
	845);
INSERT INTO SM_AH
	VALUES (846,
	724);
INSERT INTO SM_ACT
	VALUES (846,
	724,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (847,
	724,
	846);
INSERT INTO ACT_ACT
	VALUES (847,
	'transition',
	0,
	848,
	0,
	0,
	'Display1: modeChange',
	0);
INSERT INTO ACT_BLK
	VALUES (848,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	847,
	0);
INSERT INTO SM_TXN
	VALUES (845,
	724,
	781,
	0);
INSERT INTO SM_NSTXN
	VALUES (849,
	724,
	781,
	400,
	0);
INSERT INTO SM_TAH
	VALUES (850,
	724,
	849);
INSERT INTO SM_AH
	VALUES (850,
	724);
INSERT INTO SM_ACT
	VALUES (850,
	724,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (851,
	724,
	850);
INSERT INTO ACT_ACT
	VALUES (851,
	'transition',
	0,
	852,
	0,
	0,
	'Display1: modeChange',
	0);
INSERT INTO ACT_BLK
	VALUES (852,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	851,
	0);
INSERT INTO SM_TXN
	VALUES (849,
	724,
	802,
	0);
INSERT INTO SM_NSTXN
	VALUES (853,
	724,
	802,
	400,
	0);
INSERT INTO SM_TAH
	VALUES (854,
	724,
	853);
INSERT INTO SM_AH
	VALUES (854,
	724);
INSERT INTO SM_ACT
	VALUES (854,
	724,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (855,
	724,
	854);
INSERT INTO ACT_ACT
	VALUES (855,
	'transition',
	0,
	856,
	0,
	0,
	'Display1: modeChange',
	0);
INSERT INTO ACT_BLK
	VALUES (856,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
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
INSERT INTO SM_TXN
	VALUES (853,
	724,
	823,
	0);
INSERT INTO SM_NSTXN
	VALUES (857,
	724,
	726,
	725,
	0);
INSERT INTO SM_TAH
	VALUES (858,
	724,
	857);
INSERT INTO SM_AH
	VALUES (858,
	724);
INSERT INTO SM_ACT
	VALUES (858,
	724,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (859,
	724,
	858);
INSERT INTO ACT_ACT
	VALUES (859,
	'transition',
	0,
	860,
	0,
	0,
	'Display2: refresh',
	0);
INSERT INTO ACT_BLK
	VALUES (860,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	859,
	0);
INSERT INTO SM_TXN
	VALUES (857,
	724,
	726,
	0);
INSERT INTO SM_NSTXN
	VALUES (861,
	724,
	760,
	725,
	0);
INSERT INTO SM_TAH
	VALUES (862,
	724,
	861);
INSERT INTO SM_AH
	VALUES (862,
	724);
INSERT INTO SM_ACT
	VALUES (862,
	724,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (863,
	724,
	862);
INSERT INTO ACT_ACT
	VALUES (863,
	'transition',
	0,
	864,
	0,
	0,
	'Display2: refresh',
	0);
INSERT INTO ACT_BLK
	VALUES (864,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	863,
	0);
INSERT INTO SM_TXN
	VALUES (861,
	724,
	760,
	0);
INSERT INTO SM_NSTXN
	VALUES (865,
	724,
	802,
	725,
	0);
INSERT INTO SM_TAH
	VALUES (866,
	724,
	865);
INSERT INTO SM_AH
	VALUES (866,
	724);
INSERT INTO SM_ACT
	VALUES (866,
	724,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (867,
	724,
	866);
INSERT INTO ACT_ACT
	VALUES (867,
	'transition',
	0,
	868,
	0,
	0,
	'Display2: refresh',
	0);
INSERT INTO ACT_BLK
	VALUES (868,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	867,
	0);
INSERT INTO SM_TXN
	VALUES (865,
	724,
	802,
	0);
INSERT INTO SM_NSTXN
	VALUES (869,
	724,
	823,
	725,
	0);
INSERT INTO SM_TAH
	VALUES (870,
	724,
	869);
INSERT INTO SM_AH
	VALUES (870,
	724);
INSERT INTO SM_ACT
	VALUES (870,
	724,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (871,
	724,
	870);
INSERT INTO ACT_ACT
	VALUES (871,
	'transition',
	0,
	872,
	0,
	0,
	'Display2: refresh',
	0);
INSERT INTO ACT_BLK
	VALUES (872,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	871,
	0);
INSERT INTO SM_TXN
	VALUES (869,
	724,
	823,
	0);
INSERT INTO SM_NSTXN
	VALUES (873,
	724,
	781,
	725,
	0);
INSERT INTO SM_TAH
	VALUES (874,
	724,
	873);
INSERT INTO SM_AH
	VALUES (874,
	724);
INSERT INTO SM_ACT
	VALUES (874,
	724,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (875,
	724,
	874);
INSERT INTO ACT_ACT
	VALUES (875,
	'transition',
	0,
	876,
	0,
	0,
	'Display2: refresh',
	0);
INSERT INTO ACT_BLK
	VALUES (876,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	875,
	0);
INSERT INTO SM_TXN
	VALUES (873,
	724,
	781,
	0);
INSERT INTO SM_NSTXN
	VALUES (877,
	724,
	823,
	400,
	0);
INSERT INTO SM_TAH
	VALUES (878,
	724,
	877);
INSERT INTO SM_AH
	VALUES (878,
	724);
INSERT INTO SM_ACT
	VALUES (878,
	724,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (879,
	724,
	878);
INSERT INTO ACT_ACT
	VALUES (879,
	'transition',
	0,
	880,
	0,
	0,
	'Display1: modeChange',
	0);
INSERT INTO ACT_BLK
	VALUES (880,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	879,
	0);
INSERT INTO SM_TXN
	VALUES (877,
	724,
	726,
	0);
INSERT INTO PE_PE
	VALUES (488,
	1,
	463,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (488,
	'HeartRateSample',
	5,
	'HeartRateSample',
	'Each instance represents a single heart-rate sample.',
	0);
INSERT INTO O_NBATTR
	VALUES (881,
	488);
INSERT INTO O_BATTR
	VALUES (881,
	488);
INSERT INTO O_ATTR
	VALUES (881,
	488,
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
	VALUES (882,
	488);
INSERT INTO O_BATTR
	VALUES (882,
	488);
INSERT INTO O_ATTR
	VALUES (882,
	488,
	881,
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
	488);
INSERT INTO O_ID
	VALUES (1,
	488);
INSERT INTO O_ID
	VALUES (2,
	488);
INSERT INTO PE_PE
	VALUES (476,
	1,
	463,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (476,
	'LapMarker',
	4,
	'LapMarker',
	'Each instance represents a single lap marker.',
	0);
INSERT INTO O_NBATTR
	VALUES (883,
	476);
INSERT INTO O_BATTR
	VALUES (883,
	476);
INSERT INTO O_ATTR
	VALUES (883,
	476,
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
	476);
INSERT INTO O_ID
	VALUES (1,
	476);
INSERT INTO O_ID
	VALUES (2,
	476);
INSERT INTO PE_PE
	VALUES (465,
	1,
	463,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (465,
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
	VALUES (884,
	465,
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
	VALUES (885,
	884);
INSERT INTO ACT_ACT
	VALUES (885,
	'operation',
	0,
	886,
	0,
	0,
	'TrackLog::addTrackPoint',
	0);
INSERT INTO ACT_BLK
	VALUES (886,
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
	885,
	0);
INSERT INTO ACT_SMT
	VALUES (887,
	886,
	888,
	5,
	1,
	'TrackLog::addTrackPoint line: 5');
INSERT INTO ACT_CR
	VALUES (887,
	889,
	1,
	467,
	5,
	38);
INSERT INTO ACT_SMT
	VALUES (888,
	886,
	890,
	6,
	1,
	'TrackLog::addTrackPoint line: 6');
INSERT INTO ACT_SEL
	VALUES (888,
	891,
	1,
	'one',
	892);
INSERT INTO ACT_SR
	VALUES (888);
INSERT INTO ACT_LNK
	VALUES (893,
	'''represents path for''',
	888,
	484,
	894,
	2,
	357,
	7,
	9,
	7,
	24,
	7,
	27);
INSERT INTO ACT_LNK
	VALUES (894,
	'''is timed by''',
	0,
	481,
	0,
	2,
	371,
	7,
	51,
	7,
	64,
	7,
	67);
INSERT INTO ACT_SMT
	VALUES (890,
	886,
	895,
	8,
	1,
	'TrackLog::addTrackPoint line: 8');
INSERT INTO ACT_AI
	VALUES (890,
	896,
	897,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (895,
	886,
	898,
	9,
	1,
	'TrackLog::addTrackPoint line: 9');
INSERT INTO ACT_IOP
	VALUES (895,
	9,
	16,
	9,
	6,
	0,
	324,
	0);
INSERT INTO ACT_SMT
	VALUES (898,
	886,
	899,
	12,
	1,
	'TrackLog::addTrackPoint line: 12');
INSERT INTO ACT_SEL
	VALUES (898,
	900,
	1,
	'one',
	901);
INSERT INTO ACT_SR
	VALUES (898);
INSERT INTO ACT_LNK
	VALUES (902,
	'',
	898,
	464,
	0,
	2,
	467,
	12,
	40,
	12,
	51,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (899,
	886,
	903,
	13,
	1,
	'TrackLog::addTrackPoint line: 13');
INSERT INTO ACT_SEL
	VALUES (899,
	904,
	1,
	'one',
	905);
INSERT INTO ACT_SR
	VALUES (899);
INSERT INTO ACT_LNK
	VALUES (906,
	'',
	899,
	472,
	0,
	2,
	467,
	13,
	39,
	13,
	50,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (903,
	886,
	907,
	16,
	1,
	'TrackLog::addTrackPoint line: 16');
INSERT INTO ACT_AI
	VALUES (903,
	908,
	909,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (907,
	886,
	910,
	17,
	1,
	'TrackLog::addTrackPoint line: 17');
INSERT INTO ACT_AI
	VALUES (907,
	911,
	912,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (910,
	886,
	913,
	18,
	1,
	'TrackLog::addTrackPoint line: 18');
INSERT INTO ACT_AI
	VALUES (910,
	914,
	915,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (913,
	886,
	916,
	19,
	1,
	'TrackLog::addTrackPoint line: 19');
INSERT INTO ACT_IF
	VALUES (913,
	917,
	918,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (919,
	886,
	0,
	23,
	1,
	'TrackLog::addTrackPoint line: 23');
INSERT INTO ACT_E
	VALUES (919,
	920,
	913);
INSERT INTO ACT_SMT
	VALUES (916,
	886,
	921,
	33,
	1,
	'TrackLog::addTrackPoint line: 33');
INSERT INTO ACT_AI
	VALUES (916,
	922,
	923,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (921,
	886,
	924,
	34,
	1,
	'TrackLog::addTrackPoint line: 34');
INSERT INTO ACT_IF
	VALUES (921,
	925,
	926,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (924,
	886,
	927,
	39,
	1,
	'TrackLog::addTrackPoint line: 39');
INSERT INTO ACT_SEL
	VALUES (924,
	928,
	1,
	'one',
	929);
INSERT INTO ACT_SR
	VALUES (924);
INSERT INTO ACT_LNK
	VALUES (930,
	'''represents path for''',
	924,
	484,
	0,
	2,
	357,
	39,
	37,
	39,
	52,
	39,
	55);
INSERT INTO ACT_SMT
	VALUES (927,
	886,
	931,
	40,
	1,
	'TrackLog::addTrackPoint line: 40');
INSERT INTO ACT_AI
	VALUES (927,
	932,
	933,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (931,
	886,
	0,
	43,
	1,
	'TrackLog::addTrackPoint line: 43');
INSERT INTO ACT_TFM
	VALUES (931,
	934,
	935,
	43,
	6,
	0,
	0);
INSERT INTO V_VAL
	VALUES (892,
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
	886);
INSERT INTO V_IRF
	VALUES (892,
	935);
INSERT INTO V_VAL
	VALUES (936,
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
	886);
INSERT INTO V_IRF
	VALUES (936,
	889);
INSERT INTO V_VAL
	VALUES (897,
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
	886);
INSERT INTO V_AVL
	VALUES (897,
	936,
	467,
	937);
INSERT INTO V_VAL
	VALUES (938,
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
	886);
INSERT INTO V_IRF
	VALUES (938,
	891);
INSERT INTO V_VAL
	VALUES (896,
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
	886);
INSERT INTO V_AVL
	VALUES (896,
	938,
	371,
	670);
INSERT INTO V_VAL
	VALUES (939,
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
	886);
INSERT INTO V_IRF
	VALUES (939,
	889);
INSERT INTO V_VAL
	VALUES (940,
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
	886);
INSERT INTO V_AVL
	VALUES (940,
	939,
	467,
	941);
INSERT INTO V_PAR
	VALUES (940,
	895,
	0,
	'latitude',
	942,
	9,
	29);
INSERT INTO V_VAL
	VALUES (943,
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
	886);
INSERT INTO V_IRF
	VALUES (943,
	889);
INSERT INTO V_VAL
	VALUES (942,
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
	886);
INSERT INTO V_AVL
	VALUES (942,
	943,
	467,
	944);
INSERT INTO V_PAR
	VALUES (942,
	895,
	0,
	'longitude',
	0,
	9,
	60);
INSERT INTO V_VAL
	VALUES (901,
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
	886);
INSERT INTO V_IRF
	VALUES (901,
	935);
INSERT INTO V_VAL
	VALUES (905,
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
	886);
INSERT INTO V_IRF
	VALUES (905,
	935);
INSERT INTO V_VAL
	VALUES (909,
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
	886);
INSERT INTO V_TVL
	VALUES (909,
	945);
INSERT INTO V_VAL
	VALUES (908,
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
	886);
INSERT INTO V_LBO
	VALUES (908,
	'FALSE');
INSERT INTO V_VAL
	VALUES (912,
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
	886);
INSERT INTO V_TVL
	VALUES (912,
	946);
INSERT INTO V_VAL
	VALUES (911,
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
	886);
INSERT INTO V_LRL
	VALUES (911,
	'0.0');
INSERT INTO V_VAL
	VALUES (915,
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
	886);
INSERT INTO V_TVL
	VALUES (915,
	947);
INSERT INTO V_VAL
	VALUES (914,
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
	886);
INSERT INTO V_LRL
	VALUES (914,
	'0.0');
INSERT INTO V_VAL
	VALUES (948,
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
	886);
INSERT INTO V_IRF
	VALUES (948,
	900);
INSERT INTO V_VAL
	VALUES (918,
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
	886);
INSERT INTO V_UNY
	VALUES (918,
	948,
	'empty');
INSERT INTO V_VAL
	VALUES (923,
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
	886);
INSERT INTO V_TVL
	VALUES (923,
	949);
INSERT INTO V_VAL
	VALUES (922,
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
	886);
INSERT INTO V_LRL
	VALUES (922,
	'0.0');
INSERT INTO V_VAL
	VALUES (950,
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
	886);
INSERT INTO V_TVL
	VALUES (950,
	945);
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
	886);
INSERT INTO V_UNY
	VALUES (926,
	950,
	'not');
INSERT INTO V_VAL
	VALUES (929,
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
	886);
INSERT INTO V_IRF
	VALUES (929,
	935);
INSERT INTO V_VAL
	VALUES (951,
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
	886);
INSERT INTO V_IRF
	VALUES (951,
	928);
INSERT INTO V_VAL
	VALUES (933,
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
	886);
INSERT INTO V_AVL
	VALUES (933,
	951,
	357,
	746);
INSERT INTO V_VAL
	VALUES (952,
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
	886);
INSERT INTO V_IRF
	VALUES (952,
	928);
INSERT INTO V_VAL
	VALUES (953,
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
	886);
INSERT INTO V_AVL
	VALUES (953,
	952,
	357,
	746);
INSERT INTO V_VAL
	VALUES (932,
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
	886);
INSERT INTO V_BIN
	VALUES (932,
	954,
	953,
	'+');
INSERT INTO V_VAL
	VALUES (954,
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
	886);
INSERT INTO V_TVL
	VALUES (954,
	949);
INSERT INTO V_VAR
	VALUES (889,
	886,
	'trackPoint',
	1,
	300);
INSERT INTO V_INT
	VALUES (889,
	0,
	467);
INSERT INTO V_VAR
	VALUES (891,
	886,
	'workoutTimer',
	1,
	300);
INSERT INTO V_INT
	VALUES (891,
	0,
	371);
INSERT INTO V_VAR
	VALUES (935,
	886,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (935,
	0,
	465);
INSERT INTO V_VAR
	VALUES (900,
	886,
	'firstPoint',
	1,
	300);
INSERT INTO V_INT
	VALUES (900,
	0,
	467);
INSERT INTO V_VAR
	VALUES (904,
	886,
	'lastPoint',
	1,
	300);
INSERT INTO V_INT
	VALUES (904,
	0,
	467);
INSERT INTO V_VAR
	VALUES (945,
	886,
	'isFirstTrackPoint',
	1,
	295);
INSERT INTO V_TRN
	VALUES (945,
	0,
	'');
INSERT INTO V_VAR
	VALUES (946,
	886,
	'lastLatitude',
	1,
	133);
INSERT INTO V_TRN
	VALUES (946,
	0,
	'');
INSERT INTO V_VAR
	VALUES (947,
	886,
	'lastLongitude',
	1,
	133);
INSERT INTO V_TRN
	VALUES (947,
	0,
	'');
INSERT INTO V_VAR
	VALUES (949,
	886,
	'distance',
	1,
	133);
INSERT INTO V_TRN
	VALUES (949,
	0,
	'');
INSERT INTO V_VAR
	VALUES (928,
	886,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (928,
	0,
	357);
INSERT INTO ACT_BLK
	VALUES (917,
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
	885,
	0);
INSERT INTO ACT_SMT
	VALUES (955,
	917,
	956,
	20,
	3,
	'TrackLog::addTrackPoint line: 20');
INSERT INTO ACT_AI
	VALUES (955,
	957,
	958,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (956,
	917,
	959,
	21,
	3,
	'TrackLog::addTrackPoint line: 21');
INSERT INTO ACT_REL
	VALUES (956,
	935,
	889,
	'''has first''',
	464,
	21,
	36,
	21,
	39);
INSERT INTO ACT_SMT
	VALUES (959,
	917,
	0,
	22,
	3,
	'TrackLog::addTrackPoint line: 22');
INSERT INTO ACT_REL
	VALUES (959,
	935,
	889,
	'''has last''',
	472,
	22,
	36,
	22,
	39);
INSERT INTO V_VAL
	VALUES (958,
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
	917);
INSERT INTO V_TVL
	VALUES (958,
	945);
INSERT INTO V_VAL
	VALUES (957,
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
	917);
INSERT INTO V_LBO
	VALUES (957,
	'TRUE');
INSERT INTO ACT_BLK
	VALUES (920,
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
	885,
	0);
INSERT INTO ACT_SMT
	VALUES (960,
	920,
	961,
	25,
	3,
	'TrackLog::addTrackPoint line: 25');
INSERT INTO ACT_AI
	VALUES (960,
	962,
	963,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (961,
	920,
	964,
	26,
	3,
	'TrackLog::addTrackPoint line: 26');
INSERT INTO ACT_AI
	VALUES (961,
	965,
	966,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (964,
	920,
	967,
	27,
	3,
	'TrackLog::addTrackPoint line: 27');
INSERT INTO ACT_UNR
	VALUES (964,
	935,
	904,
	'''has last''',
	472,
	27,
	39,
	27,
	42);
INSERT INTO ACT_SMT
	VALUES (967,
	920,
	968,
	28,
	3,
	'TrackLog::addTrackPoint line: 28');
INSERT INTO ACT_REL
	VALUES (967,
	935,
	889,
	'''has last''',
	472,
	28,
	36,
	28,
	39);
INSERT INTO ACT_SMT
	VALUES (968,
	920,
	0,
	29,
	3,
	'TrackLog::addTrackPoint line: 29');
INSERT INTO ACT_REL
	VALUES (968,
	904,
	889,
	'''follows''',
	469,
	29,
	41,
	29,
	44);
INSERT INTO V_VAL
	VALUES (963,
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
	920);
INSERT INTO V_TVL
	VALUES (963,
	946);
INSERT INTO V_VAL
	VALUES (969,
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
	920);
INSERT INTO V_IRF
	VALUES (969,
	904);
INSERT INTO V_VAL
	VALUES (962,
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
	920);
INSERT INTO V_AVL
	VALUES (962,
	969,
	467,
	941);
INSERT INTO V_VAL
	VALUES (966,
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
	920);
INSERT INTO V_TVL
	VALUES (966,
	947);
INSERT INTO V_VAL
	VALUES (970,
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
	920);
INSERT INTO V_IRF
	VALUES (970,
	904);
INSERT INTO V_VAL
	VALUES (965,
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
	920);
INSERT INTO V_AVL
	VALUES (965,
	970,
	467,
	944);
INSERT INTO ACT_BLK
	VALUES (925,
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
	885,
	0);
INSERT INTO ACT_SMT
	VALUES (971,
	925,
	0,
	35,
	3,
	'TrackLog::addTrackPoint line: 35');
INSERT INTO ACT_AI
	VALUES (971,
	972,
	973,
	0,
	0);
INSERT INTO V_VAL
	VALUES (973,
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
	925);
INSERT INTO V_TVL
	VALUES (973,
	949);
INSERT INTO V_VAL
	VALUES (972,
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
	925);
INSERT INTO V_MSV
	VALUES (972,
	0,
	319,
	1,
	35,
	19,
	0);
INSERT INTO V_VAL
	VALUES (974,
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
	925);
INSERT INTO V_TVL
	VALUES (974,
	946);
INSERT INTO V_PAR
	VALUES (974,
	0,
	972,
	'fromLat',
	975,
	35,
	42);
INSERT INTO V_VAL
	VALUES (975,
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
	925);
INSERT INTO V_TVL
	VALUES (975,
	947);
INSERT INTO V_PAR
	VALUES (975,
	0,
	972,
	'fromLong',
	976,
	35,
	65);
INSERT INTO V_VAL
	VALUES (977,
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
	925);
INSERT INTO V_IRF
	VALUES (977,
	889);
INSERT INTO V_VAL
	VALUES (976,
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
	925);
INSERT INTO V_AVL
	VALUES (976,
	977,
	467,
	941);
INSERT INTO V_PAR
	VALUES (976,
	0,
	972,
	'toLat',
	978,
	36,
	38);
INSERT INTO V_VAL
	VALUES (979,
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
	925);
INSERT INTO V_IRF
	VALUES (979,
	889);
INSERT INTO V_VAL
	VALUES (978,
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
	925);
INSERT INTO V_AVL
	VALUES (978,
	979,
	467,
	944);
INSERT INTO V_PAR
	VALUES (978,
	0,
	972,
	'toLong',
	0,
	36,
	66);
INSERT INTO O_TFR
	VALUES (980,
	465,
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
	884);
INSERT INTO ACT_OPB
	VALUES (981,
	980);
INSERT INTO ACT_ACT
	VALUES (981,
	'operation',
	0,
	982,
	0,
	0,
	'TrackLog::clearTrackPoints',
	0);
INSERT INTO ACT_BLK
	VALUES (982,
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
	981,
	0);
INSERT INTO ACT_SMT
	VALUES (983,
	982,
	984,
	1,
	1,
	'TrackLog::clearTrackPoints line: 1');
INSERT INTO ACT_SEL
	VALUES (983,
	985,
	1,
	'one',
	986);
INSERT INTO ACT_SR
	VALUES (983);
INSERT INTO ACT_LNK
	VALUES (987,
	'',
	983,
	464,
	0,
	2,
	467,
	1,
	39,
	1,
	50,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (984,
	982,
	988,
	2,
	1,
	'TrackLog::clearTrackPoints line: 2');
INSERT INTO ACT_SEL
	VALUES (984,
	989,
	1,
	'one',
	990);
INSERT INTO ACT_SR
	VALUES (984);
INSERT INTO ACT_LNK
	VALUES (991,
	'',
	984,
	472,
	0,
	2,
	467,
	2,
	39,
	2,
	50,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (988,
	982,
	992,
	4,
	1,
	'TrackLog::clearTrackPoints line: 4');
INSERT INTO ACT_IF
	VALUES (988,
	993,
	994,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (992,
	982,
	995,
	8,
	1,
	'TrackLog::clearTrackPoints line: 8');
INSERT INTO ACT_IF
	VALUES (992,
	996,
	997,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (995,
	982,
	0,
	12,
	1,
	'TrackLog::clearTrackPoints line: 12');
INSERT INTO ACT_WHL
	VALUES (995,
	998,
	999);
INSERT INTO V_VAL
	VALUES (986,
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
	982);
INSERT INTO V_IRF
	VALUES (986,
	1000);
INSERT INTO V_VAL
	VALUES (990,
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
	982);
INSERT INTO V_IRF
	VALUES (990,
	1000);
INSERT INTO V_VAL
	VALUES (1001,
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
	982);
INSERT INTO V_IRF
	VALUES (1001,
	989);
INSERT INTO V_VAL
	VALUES (1002,
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
	982);
INSERT INTO V_UNY
	VALUES (1002,
	1001,
	'empty');
INSERT INTO V_VAL
	VALUES (994,
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
	982);
INSERT INTO V_UNY
	VALUES (994,
	1002,
	'not');
INSERT INTO V_VAL
	VALUES (1003,
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
	982);
INSERT INTO V_IRF
	VALUES (1003,
	985);
INSERT INTO V_VAL
	VALUES (1004,
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
	982);
INSERT INTO V_UNY
	VALUES (1004,
	1003,
	'empty');
INSERT INTO V_VAL
	VALUES (997,
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
	982);
INSERT INTO V_UNY
	VALUES (997,
	1004,
	'not');
INSERT INTO V_VAL
	VALUES (1005,
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
	982);
INSERT INTO V_IRF
	VALUES (1005,
	985);
INSERT INTO V_VAL
	VALUES (1006,
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
	982);
INSERT INTO V_UNY
	VALUES (1006,
	1005,
	'empty');
INSERT INTO V_VAL
	VALUES (998,
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
	982);
INSERT INTO V_UNY
	VALUES (998,
	1006,
	'not');
INSERT INTO V_VAR
	VALUES (985,
	982,
	'nextPoint',
	1,
	300);
INSERT INTO V_INT
	VALUES (985,
	0,
	467);
INSERT INTO V_VAR
	VALUES (1000,
	982,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1000,
	0,
	465);
INSERT INTO V_VAR
	VALUES (989,
	982,
	'lastPoint',
	1,
	300);
INSERT INTO V_INT
	VALUES (989,
	0,
	467);
INSERT INTO ACT_BLK
	VALUES (993,
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
	981,
	0);
INSERT INTO ACT_SMT
	VALUES (1007,
	993,
	0,
	5,
	3,
	'TrackLog::clearTrackPoints line: 5');
INSERT INTO ACT_UNR
	VALUES (1007,
	1000,
	989,
	'',
	472,
	5,
	39,
	0,
	0);
INSERT INTO ACT_BLK
	VALUES (996,
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
	981,
	0);
INSERT INTO ACT_SMT
	VALUES (1008,
	996,
	0,
	9,
	3,
	'TrackLog::clearTrackPoints line: 9');
INSERT INTO ACT_UNR
	VALUES (1008,
	1000,
	985,
	'',
	464,
	9,
	39,
	0,
	0);
INSERT INTO ACT_BLK
	VALUES (999,
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
	981,
	0);
INSERT INTO ACT_SMT
	VALUES (1009,
	999,
	1010,
	13,
	3,
	'TrackLog::clearTrackPoints line: 13');
INSERT INTO ACT_AI
	VALUES (1009,
	1011,
	1012,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1010,
	999,
	1013,
	14,
	3,
	'TrackLog::clearTrackPoints line: 14');
INSERT INTO ACT_SEL
	VALUES (1010,
	985,
	0,
	'one',
	1014);
INSERT INTO ACT_SR
	VALUES (1010);
INSERT INTO ACT_LNK
	VALUES (1015,
	'''follows''',
	1010,
	469,
	0,
	2,
	467,
	14,
	46,
	14,
	57,
	14,
	60);
INSERT INTO ACT_SMT
	VALUES (1013,
	999,
	1016,
	15,
	3,
	'TrackLog::clearTrackPoints line: 15');
INSERT INTO ACT_IF
	VALUES (1013,
	1017,
	1018,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1016,
	999,
	0,
	18,
	3,
	'TrackLog::clearTrackPoints line: 18');
INSERT INTO ACT_DEL
	VALUES (1016,
	1019);
INSERT INTO V_VAL
	VALUES (1012,
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
	999);
INSERT INTO V_IRF
	VALUES (1012,
	1019);
INSERT INTO V_VAL
	VALUES (1011,
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
	999);
INSERT INTO V_IRF
	VALUES (1011,
	985);
INSERT INTO V_VAL
	VALUES (1014,
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
	999);
INSERT INTO V_IRF
	VALUES (1014,
	985);
INSERT INTO V_VAL
	VALUES (1020,
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
	999);
INSERT INTO V_IRF
	VALUES (1020,
	985);
INSERT INTO V_VAL
	VALUES (1018,
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
	999);
INSERT INTO V_UNY
	VALUES (1018,
	1020,
	'not_empty');
INSERT INTO V_VAR
	VALUES (1019,
	999,
	'prevPoint',
	1,
	300);
INSERT INTO V_INT
	VALUES (1019,
	0,
	467);
INSERT INTO ACT_BLK
	VALUES (1017,
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
	981,
	0);
INSERT INTO ACT_SMT
	VALUES (1021,
	1017,
	0,
	16,
	5,
	'TrackLog::clearTrackPoints line: 16');
INSERT INTO ACT_UNR
	VALUES (1021,
	1019,
	985,
	'''follows''',
	469,
	16,
	46,
	16,
	49);
INSERT INTO O_TFR
	VALUES (1022,
	465,
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
	980);
INSERT INTO ACT_OPB
	VALUES (1023,
	1022);
INSERT INTO ACT_ACT
	VALUES (1023,
	'operation',
	0,
	1024,
	0,
	0,
	'TrackLog::addLapMarker',
	0);
INSERT INTO ACT_BLK
	VALUES (1024,
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
	1023,
	0);
INSERT INTO ACT_SMT
	VALUES (1025,
	1024,
	1026,
	1,
	1,
	'TrackLog::addLapMarker line: 1');
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
	'''represents path for''',
	1025,
	484,
	1030,
	2,
	357,
	1,
	35,
	1,
	50,
	1,
	53);
INSERT INTO ACT_LNK
	VALUES (1030,
	'''is timed by''',
	0,
	481,
	0,
	2,
	371,
	1,
	77,
	1,
	90,
	1,
	93);
INSERT INTO ACT_SMT
	VALUES (1026,
	1024,
	1031,
	2,
	1,
	'TrackLog::addLapMarker line: 2');
INSERT INTO ACT_CR
	VALUES (1026,
	1032,
	1,
	476,
	2,
	37);
INSERT INTO ACT_SMT
	VALUES (1031,
	1024,
	1033,
	3,
	1,
	'TrackLog::addLapMarker line: 3');
INSERT INTO ACT_AI
	VALUES (1031,
	1034,
	1035,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1033,
	1024,
	1036,
	4,
	1,
	'TrackLog::addLapMarker line: 4');
INSERT INTO ACT_REL
	VALUES (1033,
	1037,
	1032,
	'''has laps defined by''',
	475,
	4,
	33,
	4,
	36);
INSERT INTO ACT_SMT
	VALUES (1036,
	1024,
	0,
	7,
	1,
	'TrackLog::addLapMarker line: 7');
INSERT INTO ACT_TFM
	VALUES (1036,
	934,
	1037,
	7,
	6,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1028,
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
	1024);
INSERT INTO V_IRF
	VALUES (1028,
	1037);
INSERT INTO V_VAL
	VALUES (1038,
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
	1024);
INSERT INTO V_IRF
	VALUES (1038,
	1032);
INSERT INTO V_VAL
	VALUES (1035,
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
	1024);
INSERT INTO V_AVL
	VALUES (1035,
	1038,
	476,
	883);
INSERT INTO V_VAL
	VALUES (1039,
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
	1024);
INSERT INTO V_IRF
	VALUES (1039,
	1027);
INSERT INTO V_VAL
	VALUES (1034,
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
	1024);
INSERT INTO V_AVL
	VALUES (1034,
	1039,
	371,
	670);
INSERT INTO V_VAR
	VALUES (1027,
	1024,
	'timer',
	1,
	300);
INSERT INTO V_INT
	VALUES (1027,
	0,
	371);
INSERT INTO V_VAR
	VALUES (1037,
	1024,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1037,
	0,
	465);
INSERT INTO V_VAR
	VALUES (1032,
	1024,
	'lapMarker',
	1,
	300);
INSERT INTO V_INT
	VALUES (1032,
	0,
	476);
INSERT INTO O_TFR
	VALUES (1040,
	465,
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
	1022);
INSERT INTO ACT_OPB
	VALUES (1041,
	1040);
INSERT INTO ACT_ACT
	VALUES (1041,
	'operation',
	0,
	1042,
	0,
	0,
	'TrackLog::clearLapMarkers',
	0);
INSERT INTO ACT_BLK
	VALUES (1042,
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
	1041,
	0);
INSERT INTO ACT_SMT
	VALUES (1043,
	1042,
	1044,
	1,
	1,
	'TrackLog::clearLapMarkers line: 1');
INSERT INTO ACT_SEL
	VALUES (1043,
	1045,
	1,
	'many',
	1046);
INSERT INTO ACT_SR
	VALUES (1043);
INSERT INTO ACT_LNK
	VALUES (1047,
	'',
	1043,
	475,
	0,
	3,
	476,
	1,
	41,
	1,
	51,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1044,
	1042,
	0,
	2,
	1,
	'TrackLog::clearLapMarkers line: 2');
INSERT INTO ACT_FOR
	VALUES (1044,
	1048,
	1,
	1049,
	1045,
	476);
INSERT INTO V_VAL
	VALUES (1046,
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
	1042);
INSERT INTO V_IRF
	VALUES (1046,
	1050);
INSERT INTO V_VAR
	VALUES (1045,
	1042,
	'lapMarkers',
	1,
	301);
INSERT INTO V_INS
	VALUES (1045,
	476);
INSERT INTO V_VAR
	VALUES (1050,
	1042,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1050,
	0,
	465);
INSERT INTO V_VAR
	VALUES (1049,
	1042,
	'lapMarker',
	1,
	300);
INSERT INTO V_INT
	VALUES (1049,
	1,
	476);
INSERT INTO ACT_BLK
	VALUES (1048,
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
	1041,
	0);
INSERT INTO ACT_SMT
	VALUES (1051,
	1048,
	1052,
	3,
	3,
	'TrackLog::clearLapMarkers line: 3');
INSERT INTO ACT_UNR
	VALUES (1051,
	1050,
	1049,
	'',
	475,
	3,
	39,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1052,
	1048,
	0,
	4,
	3,
	'TrackLog::clearLapMarkers line: 4');
INSERT INTO ACT_DEL
	VALUES (1052,
	1049);
INSERT INTO O_TFR
	VALUES (934,
	465,
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
	1040);
INSERT INTO ACT_OPB
	VALUES (1053,
	934);
INSERT INTO ACT_ACT
	VALUES (1053,
	'operation',
	0,
	1054,
	0,
	0,
	'TrackLog::updateDisplay',
	0);
INSERT INTO ACT_BLK
	VALUES (1054,
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
	1053,
	0);
INSERT INTO ACT_SMT
	VALUES (1055,
	1054,
	1056,
	2,
	1,
	'TrackLog::updateDisplay line: 2');
INSERT INTO ACT_SEL
	VALUES (1055,
	1057,
	1,
	'one',
	1058);
INSERT INTO ACT_SR
	VALUES (1055);
INSERT INTO ACT_LNK
	VALUES (1059,
	'''represents path for''',
	1055,
	484,
	1060,
	2,
	357,
	3,
	9,
	3,
	24,
	3,
	27);
INSERT INTO ACT_LNK
	VALUES (1060,
	'''current status indicated on''',
	0,
	398,
	0,
	2,
	399,
	3,
	51,
	3,
	59,
	3,
	62);
INSERT INTO ACT_SMT
	VALUES (1056,
	1054,
	0,
	4,
	1,
	'TrackLog::updateDisplay line: 4');
INSERT INTO E_ESS
	VALUES (1056,
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
	VALUES (1056);
INSERT INTO E_GSME
	VALUES (1056,
	725);
INSERT INTO E_GEN
	VALUES (1056,
	1057);
INSERT INTO V_VAL
	VALUES (1058,
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
	1054);
INSERT INTO V_IRF
	VALUES (1058,
	1061);
INSERT INTO V_VAR
	VALUES (1057,
	1054,
	'display',
	1,
	300);
INSERT INTO V_INT
	VALUES (1057,
	0,
	399);
INSERT INTO V_VAR
	VALUES (1061,
	1054,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1061,
	0,
	465);
INSERT INTO O_ID
	VALUES (0,
	465);
INSERT INTO O_ID
	VALUES (1,
	465);
INSERT INTO O_ID
	VALUES (2,
	465);
INSERT INTO PE_PE
	VALUES (467,
	1,
	463,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (467,
	'TrackPoint',
	3,
	'TrackPoint',
	'Each instance represents a single location through which the device
passed during a workout session.',
	0);
INSERT INTO O_NBATTR
	VALUES (937,
	467);
INSERT INTO O_BATTR
	VALUES (937,
	467);
INSERT INTO O_ATTR
	VALUES (937,
	467,
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
	VALUES (944,
	467);
INSERT INTO O_BATTR
	VALUES (944,
	467);
INSERT INTO O_ATTR
	VALUES (944,
	467,
	937,
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
	VALUES (941,
	467);
INSERT INTO O_BATTR
	VALUES (941,
	467);
INSERT INTO O_ATTR
	VALUES (941,
	467,
	944,
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
	467);
INSERT INTO O_ID
	VALUES (1,
	467);
INSERT INTO O_ID
	VALUES (2,
	467);
INSERT INTO PE_PE
	VALUES (357,
	1,
	463,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (357,
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
	VALUES (363,
	357,
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
	VALUES (1062,
	363,
	'heartRate',
	188,
	0,
	'',
	0,
	'');
INSERT INTO ACT_OPB
	VALUES (1063,
	363);
INSERT INTO ACT_ACT
	VALUES (1063,
	'operation',
	0,
	1064,
	0,
	0,
	'WorkoutSession::addHeartRateSample',
	0);
INSERT INTO ACT_BLK
	VALUES (1064,
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
	1063,
	0);
INSERT INTO ACT_SMT
	VALUES (1065,
	1064,
	1066,
	3,
	1,
	'WorkoutSession::addHeartRateSample line: 3');
INSERT INTO ACT_SEL
	VALUES (1065,
	1067,
	1,
	'one',
	1068);
INSERT INTO ACT_SR
	VALUES (1065);
INSERT INTO ACT_LNK
	VALUES (1069,
	'''is timed by''',
	1065,
	481,
	0,
	2,
	371,
	3,
	42,
	3,
	55,
	3,
	58);
INSERT INTO ACT_SMT
	VALUES (1066,
	1064,
	1070,
	6,
	1,
	'WorkoutSession::addHeartRateSample line: 6');
INSERT INTO ACT_CR
	VALUES (1066,
	1071,
	1,
	488,
	6,
	34);
INSERT INTO ACT_SMT
	VALUES (1070,
	1064,
	1072,
	7,
	1,
	'WorkoutSession::addHeartRateSample line: 7');
INSERT INTO ACT_AI
	VALUES (1070,
	1073,
	1074,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1072,
	1064,
	1075,
	8,
	1,
	'WorkoutSession::addHeartRateSample line: 8');
INSERT INTO ACT_AI
	VALUES (1072,
	1076,
	1077,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1075,
	1064,
	1078,
	9,
	1,
	'WorkoutSession::addHeartRateSample line: 9');
INSERT INTO ACT_REL
	VALUES (1075,
	1079,
	1071,
	'''tracks heart rate over time as''',
	487,
	9,
	30,
	9,
	33);
INSERT INTO ACT_SMT
	VALUES (1078,
	1064,
	1080,
	12,
	1,
	'WorkoutSession::addHeartRateSample line: 12');
INSERT INTO ACT_SEL
	VALUES (1078,
	1081,
	1,
	'one',
	1082);
INSERT INTO ACT_SR
	VALUES (1078);
INSERT INTO ACT_LNK
	VALUES (1083,
	'''current status indicated on''',
	1078,
	398,
	0,
	2,
	399,
	12,
	37,
	12,
	45,
	12,
	48);
INSERT INTO ACT_SMT
	VALUES (1080,
	1064,
	0,
	13,
	1,
	'WorkoutSession::addHeartRateSample line: 13');
INSERT INTO E_ESS
	VALUES (1080,
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
	VALUES (1080);
INSERT INTO E_GSME
	VALUES (1080,
	725);
INSERT INTO E_GEN
	VALUES (1080,
	1081);
INSERT INTO V_VAL
	VALUES (1068,
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
	1064);
INSERT INTO V_IRF
	VALUES (1068,
	1079);
INSERT INTO V_VAL
	VALUES (1084,
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
	1064);
INSERT INTO V_IRF
	VALUES (1084,
	1071);
INSERT INTO V_VAL
	VALUES (1074,
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
	1064);
INSERT INTO V_AVL
	VALUES (1074,
	1084,
	488,
	881);
INSERT INTO V_VAL
	VALUES (1073,
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
	1064);
INSERT INTO V_PVL
	VALUES (1073,
	0,
	0,
	1062,
	0);
INSERT INTO V_VAL
	VALUES (1085,
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
	1064);
INSERT INTO V_IRF
	VALUES (1085,
	1071);
INSERT INTO V_VAL
	VALUES (1077,
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
	1064);
INSERT INTO V_AVL
	VALUES (1077,
	1085,
	488,
	882);
INSERT INTO V_VAL
	VALUES (1086,
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
	1064);
INSERT INTO V_IRF
	VALUES (1086,
	1067);
INSERT INTO V_VAL
	VALUES (1076,
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
	1064);
INSERT INTO V_AVL
	VALUES (1076,
	1086,
	371,
	670);
INSERT INTO V_VAL
	VALUES (1082,
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
	1064);
INSERT INTO V_IRF
	VALUES (1082,
	1079);
INSERT INTO V_VAR
	VALUES (1067,
	1064,
	'workoutTimer',
	1,
	300);
INSERT INTO V_INT
	VALUES (1067,
	0,
	371);
INSERT INTO V_VAR
	VALUES (1079,
	1064,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1079,
	0,
	357);
INSERT INTO V_VAR
	VALUES (1071,
	1064,
	'sample',
	1,
	300);
INSERT INTO V_INT
	VALUES (1071,
	0,
	488);
INSERT INTO V_VAR
	VALUES (1081,
	1064,
	'display',
	1,
	300);
INSERT INTO V_INT
	VALUES (1081,
	0,
	399);
INSERT INTO O_TFR
	VALUES (1087,
	357,
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
	363);
INSERT INTO ACT_OPB
	VALUES (1088,
	1087);
INSERT INTO ACT_ACT
	VALUES (1088,
	'operation',
	0,
	1089,
	0,
	0,
	'WorkoutSession::clearHeartRateSamples',
	0);
INSERT INTO ACT_BLK
	VALUES (1089,
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
	1088,
	0);
INSERT INTO ACT_SMT
	VALUES (1090,
	1089,
	1091,
	1,
	1,
	'WorkoutSession::clearHeartRateSamples line: 1');
INSERT INTO ACT_SEL
	VALUES (1090,
	1092,
	1,
	'many',
	1093);
INSERT INTO ACT_SR
	VALUES (1090);
INSERT INTO ACT_LNK
	VALUES (1094,
	'',
	1090,
	487,
	0,
	3,
	488,
	1,
	38,
	1,
	54,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1091,
	1089,
	0,
	2,
	1,
	'WorkoutSession::clearHeartRateSamples line: 2');
INSERT INTO ACT_FOR
	VALUES (1091,
	1095,
	1,
	1096,
	1092,
	488);
INSERT INTO V_VAL
	VALUES (1093,
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
	1089);
INSERT INTO V_IRF
	VALUES (1093,
	1097);
INSERT INTO V_VAR
	VALUES (1092,
	1089,
	'samples',
	1,
	301);
INSERT INTO V_INS
	VALUES (1092,
	488);
INSERT INTO V_VAR
	VALUES (1097,
	1089,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1097,
	0,
	357);
INSERT INTO V_VAR
	VALUES (1096,
	1089,
	'sample',
	1,
	300);
INSERT INTO V_INT
	VALUES (1096,
	1,
	488);
INSERT INTO ACT_BLK
	VALUES (1095,
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
	1088,
	0);
INSERT INTO ACT_SMT
	VALUES (1098,
	1095,
	1099,
	3,
	3,
	'WorkoutSession::clearHeartRateSamples line: 3');
INSERT INTO ACT_UNR
	VALUES (1098,
	1097,
	1096,
	'',
	487,
	3,
	36,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1099,
	1095,
	0,
	4,
	3,
	'WorkoutSession::clearHeartRateSamples line: 4');
INSERT INTO ACT_DEL
	VALUES (1099,
	1096);
INSERT INTO O_TFR
	VALUES (1100,
	357,
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
	1087);
INSERT INTO ACT_OPB
	VALUES (1101,
	1100);
INSERT INTO ACT_ACT
	VALUES (1101,
	'operation',
	0,
	1102,
	0,
	0,
	'WorkoutSession::initialize',
	0);
INSERT INTO ACT_BLK
	VALUES (1102,
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
	1101,
	0);
INSERT INTO ACT_SMT
	VALUES (1103,
	1102,
	1104,
	3,
	1,
	'WorkoutSession::initialize line: 3');
INSERT INTO ACT_AI
	VALUES (1103,
	1105,
	1106,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1104,
	1102,
	1107,
	4,
	1,
	'WorkoutSession::initialize line: 4');
INSERT INTO ACT_AI
	VALUES (1104,
	1108,
	1109,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1107,
	1102,
	0,
	5,
	1,
	'WorkoutSession::initialize line: 5');
INSERT INTO ACT_AI
	VALUES (1107,
	1110,
	1111,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1112,
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
	1102);
INSERT INTO V_IRF
	VALUES (1112,
	1113);
INSERT INTO V_VAL
	VALUES (1106,
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
	1102);
INSERT INTO V_AVL
	VALUES (1106,
	1112,
	357,
	1114);
INSERT INTO V_VAL
	VALUES (1105,
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
	1102);
INSERT INTO V_BRV
	VALUES (1105,
	542,
	1,
	3,
	18);
INSERT INTO V_VAL
	VALUES (1115,
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
	1102);
INSERT INTO V_IRF
	VALUES (1115,
	1113);
INSERT INTO V_VAL
	VALUES (1109,
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
	1102);
INSERT INTO V_AVL
	VALUES (1109,
	1115,
	357,
	1116);
INSERT INTO V_VAL
	VALUES (1108,
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
	1102);
INSERT INTO V_BRV
	VALUES (1108,
	578,
	1,
	4,
	18);
INSERT INTO V_VAL
	VALUES (1117,
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
	1102);
INSERT INTO V_IRF
	VALUES (1117,
	1113);
INSERT INTO V_VAL
	VALUES (1111,
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
	1102);
INSERT INTO V_AVL
	VALUES (1111,
	1117,
	357,
	746);
INSERT INTO V_VAL
	VALUES (1110,
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
	1102);
INSERT INTO V_LRL
	VALUES (1110,
	'0.0');
INSERT INTO V_VAR
	VALUES (1113,
	1102,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1113,
	0,
	357);
INSERT INTO O_TFR
	VALUES (411,
	357,
	'sessioncreate',
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
	1100);
INSERT INTO ACT_OPB
	VALUES (1118,
	411);
INSERT INTO ACT_ACT
	VALUES (1118,
	'class operation',
	0,
	1119,
	0,
	0,
	'WorkoutSession::sessioncreate',
	0);
INSERT INTO ACT_BLK
	VALUES (1119,
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
	1118,
	0);
INSERT INTO ACT_SMT
	VALUES (1120,
	1119,
	1121,
	4,
	1,
	'WorkoutSession::sessioncreate line: 4');
INSERT INTO ACT_FIO
	VALUES (1120,
	1122,
	1,
	'any',
	357,
	4,
	38);
INSERT INTO ACT_SMT
	VALUES (1121,
	1119,
	0,
	6,
	1,
	'WorkoutSession::sessioncreate line: 6');
INSERT INTO ACT_IF
	VALUES (1121,
	1123,
	1124,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1125,
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
	1119);
INSERT INTO V_IRF
	VALUES (1125,
	1122);
INSERT INTO V_VAL
	VALUES (1124,
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
	1119);
INSERT INTO V_UNY
	VALUES (1124,
	1125,
	'empty');
INSERT INTO V_VAR
	VALUES (1122,
	1119,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (1122,
	0,
	357);
INSERT INTO ACT_BLK
	VALUES (1123,
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
	1118,
	0);
INSERT INTO ACT_SMT
	VALUES (1126,
	1123,
	1127,
	9,
	3,
	'WorkoutSession::sessioncreate line: 9');
INSERT INTO ACT_CR
	VALUES (1126,
	1122,
	0,
	357,
	9,
	37);
INSERT INTO ACT_SMT
	VALUES (1127,
	1123,
	1128,
	10,
	3,
	'WorkoutSession::sessioncreate line: 10');
INSERT INTO ACT_TFM
	VALUES (1127,
	1100,
	1122,
	10,
	11,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1128,
	1123,
	1129,
	13,
	3,
	'WorkoutSession::sessioncreate line: 13');
INSERT INTO ACT_CR
	VALUES (1128,
	1130,
	1,
	371,
	13,
	42);
INSERT INTO ACT_SMT
	VALUES (1129,
	1123,
	1131,
	14,
	3,
	'WorkoutSession::sessioncreate line: 14');
INSERT INTO ACT_TFM
	VALUES (1129,
	1132,
	1130,
	14,
	16,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1131,
	1123,
	1133,
	17,
	3,
	'WorkoutSession::sessioncreate line: 17');
INSERT INTO ACT_CR
	VALUES (1131,
	1134,
	1,
	465,
	17,
	38);
INSERT INTO ACT_SMT
	VALUES (1133,
	1123,
	1135,
	20,
	3,
	'WorkoutSession::sessioncreate line: 20');
INSERT INTO ACT_CR
	VALUES (1133,
	1136,
	1,
	399,
	20,
	37);
INSERT INTO ACT_SMT
	VALUES (1135,
	1123,
	1137,
	23,
	3,
	'WorkoutSession::sessioncreate line: 23');
INSERT INTO ACT_REL
	VALUES (1135,
	1134,
	1122,
	'''represents path for''',
	484,
	23,
	37,
	23,
	40);
INSERT INTO ACT_SMT
	VALUES (1137,
	1123,
	1138,
	24,
	3,
	'WorkoutSession::sessioncreate line: 24');
INSERT INTO ACT_REL
	VALUES (1137,
	1130,
	1122,
	'''acts as the stopwatch for''',
	481,
	24,
	41,
	24,
	44);
INSERT INTO ACT_SMT
	VALUES (1138,
	1123,
	0,
	25,
	3,
	'WorkoutSession::sessioncreate line: 25');
INSERT INTO ACT_REL
	VALUES (1138,
	1136,
	1122,
	'''indicates current status of''',
	398,
	25,
	36,
	25,
	39);
INSERT INTO V_VAR
	VALUES (1130,
	1123,
	'workoutTimer',
	1,
	300);
INSERT INTO V_INT
	VALUES (1130,
	0,
	371);
INSERT INTO V_VAR
	VALUES (1134,
	1123,
	'trackLog',
	1,
	300);
INSERT INTO V_INT
	VALUES (1134,
	0,
	465);
INSERT INTO V_VAR
	VALUES (1136,
	1123,
	'display',
	1,
	300);
INSERT INTO V_INT
	VALUES (1136,
	0,
	399);
INSERT INTO O_TFR
	VALUES (1139,
	357,
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
	411);
INSERT INTO ACT_OPB
	VALUES (1140,
	1139);
INSERT INTO ACT_ACT
	VALUES (1140,
	'operation',
	0,
	1141,
	0,
	0,
	'WorkoutSession::reset',
	0);
INSERT INTO ACT_BLK
	VALUES (1141,
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
	1140,
	0);
INSERT INTO ACT_SMT
	VALUES (1142,
	1141,
	1143,
	5,
	1,
	'WorkoutSession::reset line: 5');
INSERT INTO ACT_SEL
	VALUES (1142,
	1144,
	1,
	'one',
	1145);
INSERT INTO ACT_SR
	VALUES (1142);
INSERT INTO ACT_LNK
	VALUES (1146,
	'''is timed by''',
	1142,
	481,
	0,
	2,
	371,
	5,
	42,
	5,
	55,
	5,
	58);
INSERT INTO ACT_SMT
	VALUES (1143,
	1141,
	1147,
	6,
	1,
	'WorkoutSession::reset line: 6');
INSERT INTO ACT_TFM
	VALUES (1143,
	1132,
	1144,
	6,
	14,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1147,
	1141,
	1148,
	9,
	1,
	'WorkoutSession::reset line: 9');
INSERT INTO ACT_SEL
	VALUES (1147,
	1149,
	1,
	'one',
	1150);
INSERT INTO ACT_SR
	VALUES (1147);
INSERT INTO ACT_LNK
	VALUES (1151,
	'''captures path in''',
	1147,
	484,
	0,
	2,
	465,
	9,
	38,
	9,
	47,
	9,
	50);
INSERT INTO ACT_SMT
	VALUES (1148,
	1141,
	1152,
	10,
	1,
	'WorkoutSession::reset line: 10');
INSERT INTO ACT_TFM
	VALUES (1148,
	980,
	1149,
	10,
	10,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1152,
	1141,
	1153,
	11,
	1,
	'WorkoutSession::reset line: 11');
INSERT INTO ACT_TFM
	VALUES (1152,
	1040,
	1149,
	11,
	10,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1153,
	1141,
	1154,
	14,
	1,
	'WorkoutSession::reset line: 14');
INSERT INTO ACT_SEL
	VALUES (1153,
	1155,
	1,
	'many',
	1156);
INSERT INTO ACT_SR
	VALUES (1153);
INSERT INTO ACT_LNK
	VALUES (1157,
	'''includes''',
	1153,
	447,
	0,
	3,
	428,
	14,
	40,
	14,
	49,
	14,
	53);
INSERT INTO ACT_SMT
	VALUES (1154,
	1141,
	1158,
	15,
	1,
	'WorkoutSession::reset line: 15');
INSERT INTO ACT_FOR
	VALUES (1154,
	1159,
	1,
	1160,
	1155,
	428);
INSERT INTO ACT_SMT
	VALUES (1158,
	1141,
	1161,
	21,
	1,
	'WorkoutSession::reset line: 21');
INSERT INTO ACT_SEL
	VALUES (1158,
	1162,
	1,
	'one',
	1163);
INSERT INTO ACT_SR
	VALUES (1158);
INSERT INTO ACT_LNK
	VALUES (1164,
	'''is currently executing''',
	1158,
	497,
	0,
	2,
	493,
	21,
	43,
	21,
	48,
	21,
	52);
INSERT INTO ACT_SMT
	VALUES (1161,
	1141,
	1165,
	22,
	1,
	'WorkoutSession::reset line: 22');
INSERT INTO ACT_IF
	VALUES (1161,
	1166,
	1167,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1165,
	1141,
	1168,
	33,
	1,
	'WorkoutSession::reset line: 33');
INSERT INTO ACT_SEL
	VALUES (1165,
	1169,
	1,
	'many',
	1170);
INSERT INTO ACT_SR
	VALUES (1165);
INSERT INTO ACT_LNK
	VALUES (1171,
	'''has executed''',
	1165,
	504,
	0,
	3,
	493,
	33,
	36,
	33,
	41,
	33,
	45);
INSERT INTO ACT_SMT
	VALUES (1168,
	1141,
	1172,
	34,
	1,
	'WorkoutSession::reset line: 34');
INSERT INTO ACT_FOR
	VALUES (1168,
	1173,
	1,
	1174,
	1169,
	493);
INSERT INTO ACT_SMT
	VALUES (1172,
	1141,
	1175,
	45,
	1,
	'WorkoutSession::reset line: 45');
INSERT INTO ACT_AI
	VALUES (1172,
	1176,
	1177,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1175,
	1141,
	0,
	46,
	1,
	'WorkoutSession::reset line: 46');
INSERT INTO ACT_TFM
	VALUES (1175,
	1087,
	1178,
	46,
	6,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1145,
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
	1141);
INSERT INTO V_IRF
	VALUES (1145,
	1178);
INSERT INTO V_VAL
	VALUES (1150,
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
	1141);
INSERT INTO V_IRF
	VALUES (1150,
	1178);
INSERT INTO V_VAL
	VALUES (1156,
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
	1141);
INSERT INTO V_IRF
	VALUES (1156,
	1178);
INSERT INTO V_VAL
	VALUES (1163,
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
	1141);
INSERT INTO V_IRF
	VALUES (1163,
	1178);
INSERT INTO V_VAL
	VALUES (1179,
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
	1141);
INSERT INTO V_IRF
	VALUES (1179,
	1162);
INSERT INTO V_VAL
	VALUES (1180,
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
	1141);
INSERT INTO V_UNY
	VALUES (1180,
	1179,
	'empty');
INSERT INTO V_VAL
	VALUES (1167,
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
	1141);
INSERT INTO V_UNY
	VALUES (1167,
	1180,
	'not');
INSERT INTO V_VAL
	VALUES (1170,
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
	1141);
INSERT INTO V_IRF
	VALUES (1170,
	1178);
INSERT INTO V_VAL
	VALUES (1181,
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
	1141);
INSERT INTO V_IRF
	VALUES (1181,
	1178);
INSERT INTO V_VAL
	VALUES (1177,
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
	1141);
INSERT INTO V_AVL
	VALUES (1177,
	1181,
	357,
	746);
INSERT INTO V_VAL
	VALUES (1176,
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
	1141);
INSERT INTO V_LRL
	VALUES (1176,
	'0.0');
INSERT INTO V_VAR
	VALUES (1144,
	1141,
	'workoutTimer',
	1,
	300);
INSERT INTO V_INT
	VALUES (1144,
	0,
	371);
INSERT INTO V_VAR
	VALUES (1178,
	1141,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1178,
	0,
	357);
INSERT INTO V_VAR
	VALUES (1149,
	1141,
	'trackLog',
	1,
	300);
INSERT INTO V_INT
	VALUES (1149,
	0,
	465);
INSERT INTO V_VAR
	VALUES (1155,
	1141,
	'goalSpecs',
	1,
	301);
INSERT INTO V_INS
	VALUES (1155,
	428);
INSERT INTO V_VAR
	VALUES (1160,
	1141,
	'goalSpec',
	1,
	300);
INSERT INTO V_INT
	VALUES (1160,
	1,
	428);
INSERT INTO V_VAR
	VALUES (1162,
	1141,
	'executingGoal',
	1,
	300);
INSERT INTO V_INT
	VALUES (1162,
	0,
	493);
INSERT INTO V_VAR
	VALUES (1169,
	1141,
	'goals',
	1,
	301);
INSERT INTO V_INS
	VALUES (1169,
	493);
INSERT INTO V_VAR
	VALUES (1174,
	1141,
	'goal',
	1,
	300);
INSERT INTO V_INT
	VALUES (1174,
	1,
	493);
INSERT INTO ACT_BLK
	VALUES (1159,
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
	1140,
	0);
INSERT INTO ACT_SMT
	VALUES (1182,
	1159,
	1183,
	16,
	3,
	'WorkoutSession::reset line: 16');
INSERT INTO ACT_UNR
	VALUES (1182,
	1178,
	1160,
	'''includes''',
	447,
	16,
	38,
	16,
	42);
INSERT INTO ACT_SMT
	VALUES (1183,
	1159,
	0,
	17,
	3,
	'WorkoutSession::reset line: 17');
INSERT INTO ACT_DEL
	VALUES (1183,
	1160);
INSERT INTO ACT_BLK
	VALUES (1166,
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
	1140,
	0);
INSERT INTO ACT_SMT
	VALUES (1184,
	1166,
	1185,
	23,
	3,
	'WorkoutSession::reset line: 23');
INSERT INTO ACT_SEL
	VALUES (1184,
	1186,
	1,
	'one',
	1187);
INSERT INTO ACT_SR
	VALUES (1184);
INSERT INTO ACT_LNK
	VALUES (1188,
	'''has open''',
	1184,
	507,
	0,
	2,
	502,
	23,
	56,
	23,
	68,
	23,
	72);
INSERT INTO ACT_SMT
	VALUES (1185,
	1166,
	1189,
	24,
	3,
	'WorkoutSession::reset line: 24');
INSERT INTO ACT_IF
	VALUES (1185,
	1190,
	1191,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1189,
	1166,
	1192,
	28,
	3,
	'WorkoutSession::reset line: 28');
INSERT INTO ACT_UNR
	VALUES (1189,
	1178,
	1162,
	'''is currently executing''',
	497,
	28,
	43,
	28,
	47);
INSERT INTO ACT_SMT
	VALUES (1192,
	1166,
	0,
	29,
	3,
	'WorkoutSession::reset line: 29');
INSERT INTO ACT_DEL
	VALUES (1192,
	1162);
INSERT INTO V_VAL
	VALUES (1187,
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
	1166);
INSERT INTO V_IRF
	VALUES (1187,
	1162);
INSERT INTO V_VAL
	VALUES (1193,
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
	1166);
INSERT INTO V_IRF
	VALUES (1193,
	1186);
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
	295,
	1166);
INSERT INTO V_UNY
	VALUES (1194,
	1193,
	'empty');
INSERT INTO V_VAL
	VALUES (1191,
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
	1166);
INSERT INTO V_UNY
	VALUES (1191,
	1194,
	'not');
INSERT INTO V_VAR
	VALUES (1186,
	1166,
	'openAchievement',
	1,
	300);
INSERT INTO V_INT
	VALUES (1186,
	0,
	502);
INSERT INTO ACT_BLK
	VALUES (1190,
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
	1140,
	0);
INSERT INTO ACT_SMT
	VALUES (1195,
	1190,
	1196,
	25,
	5,
	'WorkoutSession::reset line: 25');
INSERT INTO ACT_UNR
	VALUES (1195,
	1186,
	1162,
	'''is open for''',
	507,
	25,
	56,
	25,
	60);
INSERT INTO ACT_SMT
	VALUES (1196,
	1190,
	0,
	26,
	5,
	'WorkoutSession::reset line: 26');
INSERT INTO ACT_DEL
	VALUES (1196,
	1186);
INSERT INTO ACT_BLK
	VALUES (1173,
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
	1140,
	0);
INSERT INTO ACT_SMT
	VALUES (1197,
	1173,
	1198,
	35,
	3,
	'WorkoutSession::reset line: 35');
INSERT INTO ACT_SEL
	VALUES (1197,
	1199,
	1,
	'many',
	1200);
INSERT INTO ACT_SR
	VALUES (1197);
INSERT INTO ACT_LNK
	VALUES (1201,
	'''has recorded''',
	1197,
	500,
	0,
	3,
	502,
	35,
	45,
	35,
	57,
	35,
	61);
INSERT INTO ACT_SMT
	VALUES (1198,
	1173,
	1202,
	36,
	3,
	'WorkoutSession::reset line: 36');
INSERT INTO ACT_FOR
	VALUES (1198,
	1203,
	1,
	1204,
	1199,
	502);
INSERT INTO ACT_SMT
	VALUES (1202,
	1173,
	1205,
	40,
	3,
	'WorkoutSession::reset line: 40');
INSERT INTO ACT_UNR
	VALUES (1202,
	1178,
	1174,
	'''has executed''',
	504,
	40,
	34,
	40,
	38);
INSERT INTO ACT_SMT
	VALUES (1205,
	1173,
	0,
	41,
	3,
	'WorkoutSession::reset line: 41');
INSERT INTO ACT_DEL
	VALUES (1205,
	1174);
INSERT INTO V_VAL
	VALUES (1200,
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
	1173);
INSERT INTO V_IRF
	VALUES (1200,
	1174);
INSERT INTO V_VAR
	VALUES (1199,
	1173,
	'achievements',
	1,
	301);
INSERT INTO V_INS
	VALUES (1199,
	502);
INSERT INTO V_VAR
	VALUES (1204,
	1173,
	'achievement',
	1,
	300);
INSERT INTO V_INT
	VALUES (1204,
	1,
	502);
INSERT INTO ACT_BLK
	VALUES (1203,
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
	1140,
	0);
INSERT INTO ACT_SMT
	VALUES (1206,
	1203,
	1207,
	37,
	5,
	'WorkoutSession::reset line: 37');
INSERT INTO ACT_UNR
	VALUES (1206,
	1174,
	1204,
	'''has recorded''',
	500,
	37,
	43,
	37,
	47);
INSERT INTO ACT_SMT
	VALUES (1207,
	1203,
	0,
	38,
	5,
	'WorkoutSession::reset line: 38');
INSERT INTO ACT_DEL
	VALUES (1207,
	1204);
INSERT INTO O_NBATTR
	VALUES (1114,
	357);
INSERT INTO O_BATTR
	VALUES (1114,
	357);
INSERT INTO O_ATTR
	VALUES (1114,
	357,
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
	VALUES (1116,
	357);
INSERT INTO O_BATTR
	VALUES (1116,
	357);
INSERT INTO O_ATTR
	VALUES (1116,
	357,
	1114,
	'startTime',
	'UTC time at which this session commenced.',
	'',
	'startTime',
	0,
	308,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (776,
	357,
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
	VALUES (1208,
	357,
	776,
	1);
INSERT INTO ACT_ACT
	VALUES (1208,
	'derived attribute',
	0,
	1209,
	0,
	0,
	'WorkoutSession::currentSpeed',
	0);
INSERT INTO ACT_BLK
	VALUES (1209,
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
	1208,
	0);
INSERT INTO ACT_SMT
	VALUES (1210,
	1209,
	1211,
	6,
	1,
	'WorkoutSession::currentSpeed line: 6');
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
	'''captures path in''',
	1210,
	484,
	1215,
	2,
	465,
	6,
	39,
	6,
	48,
	6,
	51);
INSERT INTO ACT_LNK
	VALUES (1215,
	'''has last''',
	0,
	472,
	0,
	2,
	467,
	6,
	72,
	6,
	83,
	6,
	86);
INSERT INTO ACT_SMT
	VALUES (1211,
	1209,
	1216,
	7,
	1,
	'WorkoutSession::currentSpeed line: 7');
INSERT INTO ACT_AI
	VALUES (1211,
	1217,
	1218,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1216,
	1209,
	1219,
	8,
	1,
	'WorkoutSession::currentSpeed line: 8');
INSERT INTO ACT_IF
	VALUES (1216,
	1220,
	1221,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1219,
	1209,
	0,
	30,
	1,
	'WorkoutSession::currentSpeed line: 30');
INSERT INTO ACT_AI
	VALUES (1219,
	1222,
	1223,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1213,
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
	1209);
INSERT INTO V_IRF
	VALUES (1213,
	1224);
INSERT INTO V_VAL
	VALUES (1218,
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
	1209);
INSERT INTO V_TVL
	VALUES (1218,
	1225);
INSERT INTO V_VAL
	VALUES (1217,
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
	1209);
INSERT INTO V_LRL
	VALUES (1217,
	'0.0');
INSERT INTO V_VAL
	VALUES (1226,
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
	1209);
INSERT INTO V_IRF
	VALUES (1226,
	1212);
INSERT INTO V_VAL
	VALUES (1227,
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
	1209);
INSERT INTO V_UNY
	VALUES (1227,
	1226,
	'empty');
INSERT INTO V_VAL
	VALUES (1221,
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
	1209);
INSERT INTO V_UNY
	VALUES (1221,
	1227,
	'not');
INSERT INTO V_VAL
	VALUES (1228,
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
	1209);
INSERT INTO V_IRF
	VALUES (1228,
	1224);
INSERT INTO V_VAL
	VALUES (1223,
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
	1209);
INSERT INTO V_AVL
	VALUES (1223,
	1228,
	357,
	776);
INSERT INTO V_VAL
	VALUES (1222,
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
	1209);
INSERT INTO V_TVL
	VALUES (1222,
	1225);
INSERT INTO V_VAR
	VALUES (1212,
	1209,
	'lastPoint',
	1,
	300);
INSERT INTO V_INT
	VALUES (1212,
	0,
	467);
INSERT INTO V_VAR
	VALUES (1224,
	1209,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1224,
	0,
	357);
INSERT INTO V_VAR
	VALUES (1225,
	1209,
	'speed',
	1,
	133);
INSERT INTO V_TRN
	VALUES (1225,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (1220,
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
	1208,
	0);
INSERT INTO ACT_SMT
	VALUES (1229,
	1220,
	1230,
	9,
	3,
	'WorkoutSession::currentSpeed line: 9');
INSERT INTO ACT_AI
	VALUES (1229,
	1231,
	1232,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1230,
	1220,
	1233,
	10,
	3,
	'WorkoutSession::currentSpeed line: 10');
INSERT INTO ACT_AI
	VALUES (1230,
	1234,
	1235,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1233,
	1220,
	1236,
	11,
	3,
	'WorkoutSession::currentSpeed line: 11');
INSERT INTO ACT_AI
	VALUES (1233,
	1237,
	1238,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1236,
	1220,
	1239,
	12,
	3,
	'WorkoutSession::currentSpeed line: 12');
INSERT INTO ACT_AI
	VALUES (1236,
	1240,
	1241,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1239,
	1220,
	1242,
	13,
	3,
	'WorkoutSession::currentSpeed line: 13');
INSERT INTO ACT_AI
	VALUES (1239,
	1243,
	1244,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1242,
	1220,
	1245,
	14,
	3,
	'WorkoutSession::currentSpeed line: 14');
INSERT INTO ACT_WHL
	VALUES (1242,
	1246,
	1247);
INSERT INTO ACT_SMT
	VALUES (1245,
	1220,
	1248,
	25,
	3,
	'WorkoutSession::currentSpeed line: 25');
INSERT INTO ACT_AI
	VALUES (1245,
	1249,
	1250,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1248,
	1220,
	0,
	26,
	3,
	'WorkoutSession::currentSpeed line: 26');
INSERT INTO ACT_AI
	VALUES (1248,
	1251,
	1252,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1232,
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
	1220);
INSERT INTO V_IRF
	VALUES (1232,
	1253);
INSERT INTO V_VAL
	VALUES (1231,
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
	1220);
INSERT INTO V_IRF
	VALUES (1231,
	1212);
INSERT INTO V_VAL
	VALUES (1235,
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
	1220);
INSERT INTO V_TVL
	VALUES (1235,
	1254);
INSERT INTO V_VAL
	VALUES (1234,
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
	1220);
INSERT INTO V_SCV
	VALUES (1234,
	1255,
	188);
INSERT INTO V_VAL
	VALUES (1238,
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
	1220);
INSERT INTO V_TVL
	VALUES (1238,
	1256);
INSERT INTO V_VAL
	VALUES (1237,
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
	1220);
INSERT INTO V_LRL
	VALUES (1237,
	'0.0');
INSERT INTO V_VAL
	VALUES (1241,
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
	1220);
INSERT INTO V_TVL
	VALUES (1241,
	1257);
INSERT INTO V_VAL
	VALUES (1240,
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
	1220);
INSERT INTO V_LRL
	VALUES (1240,
	'0.0');
INSERT INTO V_VAL
	VALUES (1244,
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
	1220);
INSERT INTO V_TVL
	VALUES (1244,
	1257);
INSERT INTO V_VAL
	VALUES (1258,
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
	1220);
INSERT INTO V_IRF
	VALUES (1258,
	1212);
INSERT INTO V_VAL
	VALUES (1243,
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
	1220);
INSERT INTO V_AVL
	VALUES (1243,
	1258,
	467,
	937);
INSERT INTO V_VAL
	VALUES (1259,
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
	1220);
INSERT INTO V_TVL
	VALUES (1259,
	1254);
INSERT INTO V_VAL
	VALUES (1246,
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
	1220);
INSERT INTO V_BIN
	VALUES (1246,
	1260,
	1259,
	'>');
INSERT INTO V_VAL
	VALUES (1260,
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
	1220);
INSERT INTO V_LIN
	VALUES (1260,
	'0');
INSERT INTO V_VAL
	VALUES (1250,
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
	1220);
INSERT INTO V_TVL
	VALUES (1250,
	1257);
INSERT INTO V_VAL
	VALUES (1261,
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
	1220);
INSERT INTO V_TVL
	VALUES (1261,
	1257);
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
	133,
	1220);
INSERT INTO V_BIN
	VALUES (1249,
	1262,
	1261,
	'-');
INSERT INTO V_VAL
	VALUES (1263,
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
	1220);
INSERT INTO V_IRF
	VALUES (1263,
	1253);
INSERT INTO V_VAL
	VALUES (1262,
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
	1220);
INSERT INTO V_AVL
	VALUES (1262,
	1263,
	467,
	937);
INSERT INTO V_VAL
	VALUES (1252,
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
	1220);
INSERT INTO V_TVL
	VALUES (1252,
	1225);
INSERT INTO V_VAL
	VALUES (1264,
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
	1220);
INSERT INTO V_TVL
	VALUES (1264,
	1256);
INSERT INTO V_VAL
	VALUES (1265,
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
	1220);
INSERT INTO V_BIN
	VALUES (1265,
	1266,
	1264,
	'/');
INSERT INTO V_VAL
	VALUES (1266,
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
	1220);
INSERT INTO V_LIN
	VALUES (1266,
	'1000');
INSERT INTO V_VAL
	VALUES (1251,
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
	1220);
INSERT INTO V_BIN
	VALUES (1251,
	1267,
	1265,
	'/');
INSERT INTO V_VAL
	VALUES (1268,
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
	1220);
INSERT INTO V_TVL
	VALUES (1268,
	1257);
INSERT INTO V_VAL
	VALUES (1267,
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
	1220);
INSERT INTO V_BIN
	VALUES (1267,
	1269,
	1268,
	'/');
INSERT INTO V_VAL
	VALUES (1269,
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
	1220);
INSERT INTO V_SCV
	VALUES (1269,
	1270,
	188);
INSERT INTO V_VAR
	VALUES (1253,
	1220,
	'cursor',
	1,
	300);
INSERT INTO V_INT
	VALUES (1253,
	0,
	467);
INSERT INTO V_VAR
	VALUES (1254,
	1220,
	'index',
	1,
	188);
INSERT INTO V_TRN
	VALUES (1254,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1256,
	1220,
	'totalDistance',
	1,
	133);
INSERT INTO V_TRN
	VALUES (1256,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1257,
	1220,
	'elapsedTime',
	1,
	133);
INSERT INTO V_TRN
	VALUES (1257,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (1247,
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
	1208,
	0);
INSERT INTO ACT_SMT
	VALUES (1271,
	1247,
	1272,
	15,
	5,
	'WorkoutSession::currentSpeed line: 15');
INSERT INTO ACT_SEL
	VALUES (1271,
	1273,
	1,
	'one',
	1274);
INSERT INTO ACT_SR
	VALUES (1271);
INSERT INTO ACT_LNK
	VALUES (1275,
	'preceeds',
	1271,
	469,
	0,
	2,
	467,
	15,
	49,
	15,
	60,
	15,
	63);
INSERT INTO ACT_SMT
	VALUES (1272,
	1247,
	1276,
	16,
	5,
	'WorkoutSession::currentSpeed line: 16');
INSERT INTO ACT_IF
	VALUES (1272,
	1277,
	1278,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1276,
	1247,
	1279,
	19,
	5,
	'WorkoutSession::currentSpeed line: 19');
INSERT INTO ACT_AI
	VALUES (1276,
	1280,
	1281,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1279,
	1247,
	1282,
	21,
	5,
	'WorkoutSession::currentSpeed line: 21');
INSERT INTO ACT_AI
	VALUES (1279,
	1283,
	1284,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1282,
	1247,
	1285,
	22,
	5,
	'WorkoutSession::currentSpeed line: 22');
INSERT INTO ACT_AI
	VALUES (1282,
	1286,
	1287,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1285,
	1247,
	0,
	23,
	5,
	'WorkoutSession::currentSpeed line: 23');
INSERT INTO ACT_AI
	VALUES (1285,
	1288,
	1289,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1274,
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
	1247);
INSERT INTO V_IRF
	VALUES (1274,
	1253);
INSERT INTO V_VAL
	VALUES (1290,
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
	1247);
INSERT INTO V_IRF
	VALUES (1290,
	1273);
INSERT INTO V_VAL
	VALUES (1278,
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
	1247);
INSERT INTO V_UNY
	VALUES (1278,
	1290,
	'empty');
INSERT INTO V_VAL
	VALUES (1281,
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
	1247);
INSERT INTO V_TVL
	VALUES (1281,
	1291);
INSERT INTO V_VAL
	VALUES (1280,
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
	1247);
INSERT INTO V_MSV
	VALUES (1280,
	0,
	319,
	1,
	19,
	21,
	0);
INSERT INTO V_VAL
	VALUES (1292,
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
	1247);
INSERT INTO V_IRF
	VALUES (1292,
	1253);
INSERT INTO V_VAL
	VALUES (1293,
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
	1247);
INSERT INTO V_AVL
	VALUES (1293,
	1292,
	467,
	941);
INSERT INTO V_PAR
	VALUES (1293,
	0,
	1280,
	'fromLat',
	1294,
	19,
	44);
INSERT INTO V_VAL
	VALUES (1295,
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
	1247);
INSERT INTO V_IRF
	VALUES (1295,
	1253);
INSERT INTO V_VAL
	VALUES (1294,
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
	1247);
INSERT INTO V_AVL
	VALUES (1294,
	1295,
	467,
	944);
INSERT INTO V_PAR
	VALUES (1294,
	0,
	1280,
	'fromLong',
	1296,
	19,
	69);
INSERT INTO V_VAL
	VALUES (1297,
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
	1247);
INSERT INTO V_IRF
	VALUES (1297,
	1273);
INSERT INTO V_VAL
	VALUES (1296,
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
	1247);
INSERT INTO V_AVL
	VALUES (1296,
	1297,
	467,
	941);
INSERT INTO V_PAR
	VALUES (1296,
	0,
	1280,
	'toLat',
	1298,
	20,
	39);
INSERT INTO V_VAL
	VALUES (1299,
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
	1247);
INSERT INTO V_IRF
	VALUES (1299,
	1273);
INSERT INTO V_VAL
	VALUES (1298,
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
	1247);
INSERT INTO V_AVL
	VALUES (1298,
	1299,
	467,
	944);
INSERT INTO V_PAR
	VALUES (1298,
	0,
	1280,
	'toLong',
	0,
	20,
	70);
INSERT INTO V_VAL
	VALUES (1284,
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
	1247);
INSERT INTO V_TVL
	VALUES (1284,
	1256);
INSERT INTO V_VAL
	VALUES (1300,
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
	1247);
INSERT INTO V_TVL
	VALUES (1300,
	1256);
INSERT INTO V_VAL
	VALUES (1283,
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
	1247);
INSERT INTO V_BIN
	VALUES (1283,
	1301,
	1300,
	'+');
INSERT INTO V_VAL
	VALUES (1301,
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
	1247);
INSERT INTO V_TVL
	VALUES (1301,
	1291);
INSERT INTO V_VAL
	VALUES (1287,
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
	1247);
INSERT INTO V_TVL
	VALUES (1287,
	1254);
INSERT INTO V_VAL
	VALUES (1302,
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
	1247);
INSERT INTO V_TVL
	VALUES (1302,
	1254);
INSERT INTO V_VAL
	VALUES (1286,
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
	1247);
INSERT INTO V_BIN
	VALUES (1286,
	1303,
	1302,
	'-');
INSERT INTO V_VAL
	VALUES (1303,
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
	1247);
INSERT INTO V_LIN
	VALUES (1303,
	'1');
INSERT INTO V_VAL
	VALUES (1289,
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
	1247);
INSERT INTO V_IRF
	VALUES (1289,
	1253);
INSERT INTO V_VAL
	VALUES (1288,
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
	1247);
INSERT INTO V_IRF
	VALUES (1288,
	1273);
INSERT INTO V_VAR
	VALUES (1273,
	1247,
	'previousPoint',
	1,
	300);
INSERT INTO V_INT
	VALUES (1273,
	0,
	467);
INSERT INTO V_VAR
	VALUES (1291,
	1247,
	'distance',
	1,
	133);
INSERT INTO V_TRN
	VALUES (1291,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (1277,
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
	1208,
	0);
INSERT INTO ACT_SMT
	VALUES (1304,
	1277,
	0,
	17,
	7,
	'WorkoutSession::currentSpeed line: 17');
INSERT INTO ACT_BRK
	VALUES (1304);
INSERT INTO O_BATTR
	VALUES (776,
	357);
INSERT INTO O_ATTR
	VALUES (776,
	357,
	1116,
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
	VALUES (797,
	357,
	'// Calculate current pace from current speed, converting from km/hour to minutes/km.

if ( self.currentSpeed != 0.0 )
  self.currentPace = 60.0 / self.currentSpeed;
else
  self.currentPace = 0.0;
end if;',
	1);
INSERT INTO ACT_DAB
	VALUES (1305,
	357,
	797,
	1);
INSERT INTO ACT_ACT
	VALUES (1305,
	'derived attribute',
	0,
	1306,
	0,
	0,
	'WorkoutSession::currentPace',
	0);
INSERT INTO ACT_BLK
	VALUES (1306,
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
	1305,
	0);
INSERT INTO ACT_SMT
	VALUES (1307,
	1306,
	0,
	3,
	1,
	'WorkoutSession::currentPace line: 3');
INSERT INTO ACT_IF
	VALUES (1307,
	1308,
	1309,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1310,
	1306,
	0,
	5,
	1,
	'WorkoutSession::currentPace line: 5');
INSERT INTO ACT_E
	VALUES (1310,
	1311,
	1307);
INSERT INTO V_VAL
	VALUES (1312,
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
	1306);
INSERT INTO V_IRF
	VALUES (1312,
	1313);
INSERT INTO V_VAL
	VALUES (1314,
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
	1306);
INSERT INTO V_AVL
	VALUES (1314,
	1312,
	357,
	776);
INSERT INTO V_VAL
	VALUES (1309,
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
	1306);
INSERT INTO V_BIN
	VALUES (1309,
	1315,
	1314,
	'!=');
INSERT INTO V_VAL
	VALUES (1315,
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
	1306);
INSERT INTO V_LRL
	VALUES (1315,
	'0.0');
INSERT INTO V_VAR
	VALUES (1313,
	1306,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1313,
	0,
	357);
INSERT INTO ACT_BLK
	VALUES (1308,
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
	1305,
	0);
INSERT INTO ACT_SMT
	VALUES (1316,
	1308,
	0,
	4,
	3,
	'WorkoutSession::currentPace line: 4');
INSERT INTO ACT_AI
	VALUES (1316,
	1317,
	1318,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1319,
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
	1308);
INSERT INTO V_IRF
	VALUES (1319,
	1313);
INSERT INTO V_VAL
	VALUES (1318,
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
	1308);
INSERT INTO V_AVL
	VALUES (1318,
	1319,
	357,
	797);
INSERT INTO V_VAL
	VALUES (1320,
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
	1308);
INSERT INTO V_LRL
	VALUES (1320,
	'60.0');
INSERT INTO V_VAL
	VALUES (1317,
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
	1308);
INSERT INTO V_BIN
	VALUES (1317,
	1321,
	1320,
	'/');
INSERT INTO V_VAL
	VALUES (1322,
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
	1308);
INSERT INTO V_IRF
	VALUES (1322,
	1313);
INSERT INTO V_VAL
	VALUES (1321,
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
	1308);
INSERT INTO V_AVL
	VALUES (1321,
	1322,
	357,
	776);
INSERT INTO ACT_BLK
	VALUES (1311,
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
	1305,
	0);
INSERT INTO ACT_SMT
	VALUES (1323,
	1311,
	0,
	6,
	3,
	'WorkoutSession::currentPace line: 6');
INSERT INTO ACT_AI
	VALUES (1323,
	1324,
	1325,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1326,
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
	1311);
INSERT INTO V_IRF
	VALUES (1326,
	1313);
INSERT INTO V_VAL
	VALUES (1325,
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
	1311);
INSERT INTO V_AVL
	VALUES (1325,
	1326,
	357,
	797);
INSERT INTO V_VAL
	VALUES (1324,
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
	1311);
INSERT INTO V_LRL
	VALUES (1324,
	'0.0');
INSERT INTO O_BATTR
	VALUES (797,
	357);
INSERT INTO O_ATTR
	VALUES (797,
	357,
	776,
	'currentPace',
	'The inverse of currentSpeed, expressed in minutes per kilometer.',
	'',
	'currentPace',
	0,
	133,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (818,
	357,
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
	VALUES (1327,
	357,
	818,
	1);
INSERT INTO ACT_ACT
	VALUES (1327,
	'derived attribute',
	0,
	1328,
	0,
	0,
	'WorkoutSession::currentHeartRate',
	0);
INSERT INTO ACT_BLK
	VALUES (1328,
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
	1327,
	0);
INSERT INTO ACT_SMT
	VALUES (1329,
	1328,
	1330,
	3,
	1,
	'WorkoutSession::currentHeartRate line: 3');
INSERT INTO ACT_SEL
	VALUES (1329,
	1331,
	1,
	'one',
	1332);
INSERT INTO ACT_SR
	VALUES (1329);
INSERT INTO ACT_LNK
	VALUES (1333,
	'''is timed by''',
	1329,
	481,
	0,
	2,
	371,
	3,
	42,
	3,
	55,
	3,
	58);
INSERT INTO ACT_SMT
	VALUES (1330,
	1328,
	1334,
	4,
	1,
	'WorkoutSession::currentHeartRate line: 4');
INSERT INTO ACT_SEL
	VALUES (1330,
	1335,
	1,
	'many',
	1336);
INSERT INTO ACT_SRW
	VALUES (1330,
	1337);
INSERT INTO ACT_LNK
	VALUES (1338,
	'''tracks heart rate over time as''',
	1330,
	487,
	0,
	3,
	488,
	4,
	38,
	4,
	54,
	4,
	57);
INSERT INTO ACT_SMT
	VALUES (1334,
	1328,
	1339,
	6,
	1,
	'WorkoutSession::currentHeartRate line: 6');
INSERT INTO ACT_AI
	VALUES (1334,
	1340,
	1341,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1339,
	1328,
	1342,
	7,
	1,
	'WorkoutSession::currentHeartRate line: 7');
INSERT INTO ACT_AI
	VALUES (1339,
	1343,
	1344,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1342,
	1328,
	1345,
	8,
	1,
	'WorkoutSession::currentHeartRate line: 8');
INSERT INTO ACT_FOR
	VALUES (1342,
	1346,
	1,
	1347,
	1335,
	488);
INSERT INTO ACT_SMT
	VALUES (1345,
	1328,
	0,
	12,
	1,
	'WorkoutSession::currentHeartRate line: 12');
INSERT INTO ACT_IF
	VALUES (1345,
	1348,
	1349,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1350,
	1328,
	0,
	14,
	1,
	'WorkoutSession::currentHeartRate line: 14');
INSERT INTO ACT_E
	VALUES (1350,
	1351,
	1345);
INSERT INTO V_VAL
	VALUES (1332,
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
	1328);
INSERT INTO V_IRF
	VALUES (1332,
	1352);
INSERT INTO V_VAL
	VALUES (1336,
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
	1328);
INSERT INTO V_IRF
	VALUES (1336,
	1352);
INSERT INTO V_VAL
	VALUES (1353,
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
	1328);
INSERT INTO V_SLR
	VALUES (1353,
	0,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1354,
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
	1328);
INSERT INTO V_AVL
	VALUES (1354,
	1353,
	488,
	882);
INSERT INTO V_VAL
	VALUES (1337,
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
	1328);
INSERT INTO V_BIN
	VALUES (1337,
	1355,
	1354,
	'>=');
INSERT INTO V_VAL
	VALUES (1356,
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
	1328);
INSERT INTO V_IRF
	VALUES (1356,
	1331);
INSERT INTO V_VAL
	VALUES (1357,
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
	1328);
INSERT INTO V_AVL
	VALUES (1357,
	1356,
	371,
	670);
INSERT INTO V_VAL
	VALUES (1355,
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
	1328);
INSERT INTO V_BIN
	VALUES (1355,
	1358,
	1357,
	'-');
INSERT INTO V_VAL
	VALUES (1359,
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
	1328);
INSERT INTO V_SCV
	VALUES (1359,
	1360,
	188);
INSERT INTO V_VAL
	VALUES (1358,
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
	1328);
INSERT INTO V_BIN
	VALUES (1358,
	1361,
	1359,
	'*');
INSERT INTO V_VAL
	VALUES (1361,
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
	1328);
INSERT INTO V_SCV
	VALUES (1361,
	1362,
	188);
INSERT INTO V_VAL
	VALUES (1341,
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
	1328);
INSERT INTO V_TVL
	VALUES (1341,
	1363);
INSERT INTO V_VAL
	VALUES (1340,
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
	1328);
INSERT INTO V_LIN
	VALUES (1340,
	'0');
INSERT INTO V_VAL
	VALUES (1344,
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
	1328);
INSERT INTO V_TVL
	VALUES (1344,
	1364);
INSERT INTO V_VAL
	VALUES (1343,
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
	1328);
INSERT INTO V_LIN
	VALUES (1343,
	'0');
INSERT INTO V_VAL
	VALUES (1365,
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
	1328);
INSERT INTO V_TVL
	VALUES (1365,
	1363);
INSERT INTO V_VAL
	VALUES (1349,
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
	1328);
INSERT INTO V_BIN
	VALUES (1349,
	1366,
	1365,
	'>');
INSERT INTO V_VAL
	VALUES (1366,
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
	1328);
INSERT INTO V_LIN
	VALUES (1366,
	'0');
INSERT INTO V_VAR
	VALUES (1331,
	1328,
	'workoutTimer',
	1,
	300);
INSERT INTO V_INT
	VALUES (1331,
	0,
	371);
INSERT INTO V_VAR
	VALUES (1352,
	1328,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1352,
	0,
	357);
INSERT INTO V_VAR
	VALUES (1335,
	1328,
	'samples',
	1,
	301);
INSERT INTO V_INS
	VALUES (1335,
	488);
INSERT INTO V_VAR
	VALUES (1363,
	1328,
	'numberOfSamples',
	1,
	188);
INSERT INTO V_TRN
	VALUES (1363,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1364,
	1328,
	'sum',
	1,
	188);
INSERT INTO V_TRN
	VALUES (1364,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1347,
	1328,
	'sample',
	1,
	300);
INSERT INTO V_INT
	VALUES (1347,
	1,
	488);
INSERT INTO ACT_BLK
	VALUES (1346,
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
	1327,
	0);
INSERT INTO ACT_SMT
	VALUES (1367,
	1346,
	1368,
	9,
	3,
	'WorkoutSession::currentHeartRate line: 9');
INSERT INTO ACT_AI
	VALUES (1367,
	1369,
	1370,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1368,
	1346,
	0,
	10,
	3,
	'WorkoutSession::currentHeartRate line: 10');
INSERT INTO ACT_AI
	VALUES (1368,
	1371,
	1372,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1370,
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
	1346);
INSERT INTO V_TVL
	VALUES (1370,
	1363);
INSERT INTO V_VAL
	VALUES (1373,
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
	1346);
INSERT INTO V_TVL
	VALUES (1373,
	1363);
INSERT INTO V_VAL
	VALUES (1369,
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
	1346);
INSERT INTO V_BIN
	VALUES (1369,
	1374,
	1373,
	'+');
INSERT INTO V_VAL
	VALUES (1374,
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
	1346);
INSERT INTO V_LIN
	VALUES (1374,
	'1');
INSERT INTO V_VAL
	VALUES (1372,
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
	1346);
INSERT INTO V_TVL
	VALUES (1372,
	1364);
INSERT INTO V_VAL
	VALUES (1375,
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
	1346);
INSERT INTO V_TVL
	VALUES (1375,
	1364);
INSERT INTO V_VAL
	VALUES (1371,
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
	1346);
INSERT INTO V_BIN
	VALUES (1371,
	1376,
	1375,
	'+');
INSERT INTO V_VAL
	VALUES (1377,
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
	1346);
INSERT INTO V_IRF
	VALUES (1377,
	1347);
INSERT INTO V_VAL
	VALUES (1376,
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
	1346);
INSERT INTO V_AVL
	VALUES (1376,
	1377,
	488,
	881);
INSERT INTO ACT_BLK
	VALUES (1348,
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
	1327,
	0);
INSERT INTO ACT_SMT
	VALUES (1378,
	1348,
	0,
	13,
	3,
	'WorkoutSession::currentHeartRate line: 13');
INSERT INTO ACT_AI
	VALUES (1378,
	1379,
	1380,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1381,
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
	1348);
INSERT INTO V_IRF
	VALUES (1381,
	1352);
INSERT INTO V_VAL
	VALUES (1380,
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
	1348);
INSERT INTO V_AVL
	VALUES (1380,
	1381,
	357,
	818);
INSERT INTO V_VAL
	VALUES (1382,
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
	1348);
INSERT INTO V_TVL
	VALUES (1382,
	1364);
INSERT INTO V_VAL
	VALUES (1379,
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
	1348);
INSERT INTO V_BIN
	VALUES (1379,
	1383,
	1382,
	'/');
INSERT INTO V_VAL
	VALUES (1383,
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
	1348);
INSERT INTO V_TVL
	VALUES (1383,
	1363);
INSERT INTO ACT_BLK
	VALUES (1351,
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
	1327,
	0);
INSERT INTO ACT_SMT
	VALUES (1384,
	1351,
	0,
	15,
	3,
	'WorkoutSession::currentHeartRate line: 15');
INSERT INTO ACT_AI
	VALUES (1384,
	1385,
	1386,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1387,
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
	1351);
INSERT INTO V_IRF
	VALUES (1387,
	1352);
INSERT INTO V_VAL
	VALUES (1386,
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
	1351);
INSERT INTO V_AVL
	VALUES (1386,
	1387,
	357,
	818);
INSERT INTO V_VAL
	VALUES (1385,
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
	1351);
INSERT INTO V_LIN
	VALUES (1385,
	'0');
INSERT INTO O_BATTR
	VALUES (818,
	357);
INSERT INTO O_ATTR
	VALUES (818,
	357,
	797,
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
	VALUES (746,
	357);
INSERT INTO O_BATTR
	VALUES (746,
	357);
INSERT INTO O_ATTR
	VALUES (746,
	357,
	818,
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
	357);
INSERT INTO O_OIDA
	VALUES (1114,
	357,
	0,
	'startDate');
INSERT INTO O_OIDA
	VALUES (1116,
	357,
	0,
	'startTime');
INSERT INTO O_ID
	VALUES (1,
	357);
INSERT INTO O_ID
	VALUES (2,
	357);
INSERT INTO PE_PE
	VALUES (371,
	1,
	463,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (371,
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
	VALUES (1388,
	371,
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
	VALUES (1389,
	1388);
INSERT INTO ACT_ACT
	VALUES (1389,
	'operation',
	0,
	1390,
	0,
	0,
	'WorkoutTimer::activate',
	0);
INSERT INTO ACT_BLK
	VALUES (1390,
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
	1389,
	0);
INSERT INTO ACT_SMT
	VALUES (1391,
	1390,
	1392,
	2,
	1,
	'WorkoutTimer::activate line: 2');
INSERT INTO E_ESS
	VALUES (1391,
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
	VALUES (1391,
	1,
	1393);
INSERT INTO E_CSME
	VALUES (1391,
	1394);
INSERT INTO E_CEI
	VALUES (1391,
	1395);
INSERT INTO ACT_SMT
	VALUES (1392,
	1390,
	1396,
	3,
	1,
	'WorkoutTimer::activate line: 3');
INSERT INTO ACT_AI
	VALUES (1392,
	1397,
	1398,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1396,
	1390,
	1399,
	6,
	1,
	'WorkoutTimer::activate line: 6');
INSERT INTO ACT_SEL
	VALUES (1396,
	1400,
	1,
	'one',
	1401);
INSERT INTO ACT_SR
	VALUES (1396);
INSERT INTO ACT_LNK
	VALUES (1402,
	'''acts as the stopwatch for''',
	1396,
	481,
	1403,
	2,
	357,
	7,
	9,
	7,
	24,
	7,
	27);
INSERT INTO ACT_LNK
	VALUES (1403,
	'''is currently executing''',
	0,
	497,
	0,
	2,
	493,
	7,
	57,
	7,
	62,
	7,
	66);
INSERT INTO ACT_SMT
	VALUES (1399,
	1390,
	1404,
	8,
	1,
	'WorkoutTimer::activate line: 8');
INSERT INTO ACT_IF
	VALUES (1399,
	1405,
	1406,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1404,
	1390,
	1407,
	13,
	1,
	'WorkoutTimer::activate line: 13');
INSERT INTO ACT_IOP
	VALUES (1404,
	13,
	16,
	13,
	6,
	0,
	327,
	0);
INSERT INTO ACT_SMT
	VALUES (1407,
	1390,
	0,
	14,
	1,
	'WorkoutTimer::activate line: 14');
INSERT INTO ACT_IOP
	VALUES (1407,
	14,
	24,
	14,
	6,
	0,
	345,
	0);
INSERT INTO V_VAL
	VALUES (1408,
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
	1390);
INSERT INTO V_IRF
	VALUES (1408,
	1395);
INSERT INTO V_VAL
	VALUES (1398,
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
	1390);
INSERT INTO V_AVL
	VALUES (1398,
	1408,
	371,
	1409);
INSERT INTO V_VAL
	VALUES (1397,
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
	1390);
INSERT INTO V_BRV
	VALUES (1397,
	586,
	1,
	3,
	14);
INSERT INTO V_VAL
	VALUES (1410,
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
	1390);
INSERT INTO V_TVL
	VALUES (1410,
	1393);
INSERT INTO V_PAR
	VALUES (1410,
	0,
	1397,
	'event_inst',
	1411,
	3,
	42);
INSERT INTO V_VAL
	VALUES (1412,
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
	1390);
INSERT INTO V_SCV
	VALUES (1412,
	1413,
	188);
INSERT INTO V_VAL
	VALUES (1411,
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
	1390);
INSERT INTO V_BIN
	VALUES (1411,
	1414,
	1412,
	'*');
INSERT INTO V_PAR
	VALUES (1411,
	0,
	1397,
	'microseconds',
	0,
	3,
	59);
INSERT INTO V_VAL
	VALUES (1414,
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
	1390);
INSERT INTO V_LIN
	VALUES (1414,
	'1000000');
INSERT INTO V_VAL
	VALUES (1401,
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
	1390);
INSERT INTO V_IRF
	VALUES (1401,
	1395);
INSERT INTO V_VAL
	VALUES (1415,
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
	1390);
INSERT INTO V_IRF
	VALUES (1415,
	1400);
INSERT INTO V_VAL
	VALUES (1416,
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
	1390);
INSERT INTO V_UNY
	VALUES (1416,
	1415,
	'empty');
INSERT INTO V_VAL
	VALUES (1406,
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
	1390);
INSERT INTO V_UNY
	VALUES (1406,
	1416,
	'not');
INSERT INTO V_VAR
	VALUES (1393,
	1390,
	'evt',
	1,
	302);
INSERT INTO V_TRN
	VALUES (1393,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1395,
	1390,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1395,
	0,
	371);
INSERT INTO V_VAR
	VALUES (1400,
	1390,
	'executingGoal',
	1,
	300);
INSERT INTO V_INT
	VALUES (1400,
	0,
	493);
INSERT INTO ACT_BLK
	VALUES (1405,
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
	1389,
	0);
INSERT INTO ACT_SMT
	VALUES (1417,
	1405,
	0,
	9,
	3,
	'WorkoutTimer::activate line: 9');
INSERT INTO E_ESS
	VALUES (1417,
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
	VALUES (1417);
INSERT INTO E_GSME
	VALUES (1417,
	1418);
INSERT INTO E_GEN
	VALUES (1417,
	1400);
INSERT INTO O_TFR
	VALUES (1419,
	371,
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
	1388);
INSERT INTO ACT_OPB
	VALUES (1420,
	1419);
INSERT INTO ACT_ACT
	VALUES (1420,
	'operation',
	0,
	1421,
	0,
	0,
	'WorkoutTimer::deactivate',
	0);
INSERT INTO ACT_BLK
	VALUES (1421,
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
	1420,
	0);
INSERT INTO ACT_SMT
	VALUES (1422,
	1421,
	1423,
	2,
	1,
	'WorkoutTimer::deactivate line: 2');
INSERT INTO ACT_AI
	VALUES (1422,
	1424,
	1425,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1423,
	1421,
	1426,
	5,
	1,
	'WorkoutTimer::deactivate line: 5');
INSERT INTO ACT_SEL
	VALUES (1423,
	1427,
	1,
	'one',
	1428);
INSERT INTO ACT_SR
	VALUES (1423);
INSERT INTO ACT_LNK
	VALUES (1429,
	'''acts as the stopwatch for''',
	1423,
	481,
	1430,
	2,
	357,
	6,
	9,
	6,
	24,
	6,
	27);
INSERT INTO ACT_LNK
	VALUES (1430,
	'''is currently executing''',
	0,
	497,
	0,
	2,
	493,
	6,
	57,
	6,
	62,
	6,
	66);
INSERT INTO ACT_SMT
	VALUES (1426,
	1421,
	1431,
	7,
	1,
	'WorkoutTimer::deactivate line: 7');
INSERT INTO ACT_IF
	VALUES (1426,
	1432,
	1433,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1431,
	1421,
	1434,
	12,
	1,
	'WorkoutTimer::deactivate line: 12');
INSERT INTO ACT_IOP
	VALUES (1431,
	12,
	16,
	12,
	6,
	0,
	330,
	0);
INSERT INTO ACT_SMT
	VALUES (1434,
	1421,
	0,
	13,
	1,
	'WorkoutTimer::deactivate line: 13');
INSERT INTO ACT_IOP
	VALUES (1434,
	13,
	24,
	13,
	6,
	0,
	348,
	0);
INSERT INTO V_VAL
	VALUES (1425,
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
	1421);
INSERT INTO V_TVL
	VALUES (1425,
	1435);
INSERT INTO V_VAL
	VALUES (1424,
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
	1421);
INSERT INTO V_BRV
	VALUES (1424,
	605,
	1,
	2,
	19);
INSERT INTO V_VAL
	VALUES (1436,
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
	1421);
INSERT INTO V_IRF
	VALUES (1436,
	1437);
INSERT INTO V_VAL
	VALUES (1438,
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
	1421);
INSERT INTO V_AVL
	VALUES (1438,
	1436,
	371,
	1409);
INSERT INTO V_PAR
	VALUES (1438,
	0,
	1424,
	'timer_inst_ref',
	0,
	2,
	37);
INSERT INTO V_VAL
	VALUES (1428,
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
	1421);
INSERT INTO V_IRF
	VALUES (1428,
	1437);
INSERT INTO V_VAL
	VALUES (1439,
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
	1421);
INSERT INTO V_IRF
	VALUES (1439,
	1427);
INSERT INTO V_VAL
	VALUES (1440,
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
	1421);
INSERT INTO V_UNY
	VALUES (1440,
	1439,
	'empty');
INSERT INTO V_VAL
	VALUES (1433,
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
	1421);
INSERT INTO V_UNY
	VALUES (1433,
	1440,
	'not');
INSERT INTO V_VAR
	VALUES (1435,
	1421,
	'cancelSucceeded',
	1,
	295);
INSERT INTO V_TRN
	VALUES (1435,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1437,
	1421,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1437,
	0,
	371);
INSERT INTO V_VAR
	VALUES (1427,
	1421,
	'executingGoal',
	1,
	300);
INSERT INTO V_INT
	VALUES (1427,
	0,
	493);
INSERT INTO ACT_BLK
	VALUES (1432,
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
	1420,
	0);
INSERT INTO ACT_SMT
	VALUES (1441,
	1432,
	0,
	8,
	3,
	'WorkoutTimer::deactivate line: 8');
INSERT INTO E_ESS
	VALUES (1441,
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
	VALUES (1441);
INSERT INTO E_GSME
	VALUES (1441,
	1442);
INSERT INTO E_GEN
	VALUES (1441,
	1427);
INSERT INTO O_TFR
	VALUES (1132,
	371,
	'initialize',
	'',
	294,
	1,
	'// Initialize this instance.

self.time = 0;',
	1,
	'',
	1419);
INSERT INTO ACT_OPB
	VALUES (1443,
	1132);
INSERT INTO ACT_ACT
	VALUES (1443,
	'operation',
	0,
	1444,
	0,
	0,
	'WorkoutTimer::initialize',
	0);
INSERT INTO ACT_BLK
	VALUES (1444,
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
	1443,
	0);
INSERT INTO ACT_SMT
	VALUES (1445,
	1444,
	0,
	3,
	1,
	'WorkoutTimer::initialize line: 3');
INSERT INTO ACT_AI
	VALUES (1445,
	1446,
	1447,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1448,
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
	1444);
INSERT INTO V_IRF
	VALUES (1448,
	1449);
INSERT INTO V_VAL
	VALUES (1447,
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
	1444);
INSERT INTO V_AVL
	VALUES (1447,
	1448,
	371,
	670);
INSERT INTO V_VAL
	VALUES (1446,
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
	1444);
INSERT INTO V_LIN
	VALUES (1446,
	'0');
INSERT INTO V_VAR
	VALUES (1449,
	1444,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1449,
	0,
	371);
INSERT INTO O_NBATTR
	VALUES (1450,
	371);
INSERT INTO O_BATTR
	VALUES (1450,
	371);
INSERT INTO O_ATTR
	VALUES (1450,
	371,
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
	VALUES (670,
	371);
INSERT INTO O_BATTR
	VALUES (670,
	371);
INSERT INTO O_ATTR
	VALUES (670,
	371,
	1450,
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
	VALUES (1409,
	371);
INSERT INTO O_BATTR
	VALUES (1409,
	371);
INSERT INTO O_ATTR
	VALUES (1409,
	371,
	670,
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
	371);
INSERT INTO O_ID
	VALUES (1,
	371);
INSERT INTO O_ID
	VALUES (2,
	371);
INSERT INTO SM_ISM
	VALUES (1451,
	371);
INSERT INTO SM_SM
	VALUES (1451,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (1451);
INSERT INTO SM_LEVT
	VALUES (414,
	1451,
	0);
INSERT INTO SM_SEVT
	VALUES (414,
	1451,
	0);
INSERT INTO SM_EVT
	VALUES (414,
	1451,
	0,
	1,
	'startStopPressed',
	0,
	'',
	'WorkoutTimer1',
	'');
INSERT INTO SM_LEVT
	VALUES (379,
	1451,
	0);
INSERT INTO SM_SEVT
	VALUES (379,
	1451,
	0);
INSERT INTO SM_EVT
	VALUES (379,
	1451,
	0,
	2,
	'lapResetPressed',
	0,
	'',
	'WorkoutTimer2',
	'');
INSERT INTO SM_LEVT
	VALUES (1394,
	1451,
	0);
INSERT INTO SM_SEVT
	VALUES (1394,
	1451,
	0);
INSERT INTO SM_EVT
	VALUES (1394,
	1451,
	0,
	3,
	'tick',
	0,
	'',
	'WorkoutTimer3',
	'');
INSERT INTO SM_STATE
	VALUES (1452,
	1451,
	0,
	'stopped',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (1452,
	414,
	1451,
	0);
INSERT INTO SM_EIGN
	VALUES (1452,
	379,
	1451,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1452,
	379,
	1451,
	0);
INSERT INTO SM_EIGN
	VALUES (1452,
	1394,
	1451,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1452,
	1394,
	1451,
	0);
INSERT INTO SM_MOAH
	VALUES (1453,
	1451,
	1452);
INSERT INTO SM_AH
	VALUES (1453,
	1451);
INSERT INTO SM_ACT
	VALUES (1453,
	1451,
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
	VALUES (1454,
	1451,
	1453);
INSERT INTO ACT_ACT
	VALUES (1454,
	'state',
	0,
	1455,
	0,
	0,
	'WorkoutTimer::stopped',
	0);
INSERT INTO ACT_BLK
	VALUES (1455,
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
	1454,
	0);
INSERT INTO ACT_SMT
	VALUES (1456,
	1455,
	1457,
	2,
	1,
	'WorkoutTimer::stopped line: 2');
INSERT INTO ACT_SEL
	VALUES (1456,
	1458,
	1,
	'one',
	1459);
INSERT INTO ACT_SR
	VALUES (1456);
INSERT INTO ACT_LNK
	VALUES (1460,
	'''acts as the stopwatch for''',
	1456,
	481,
	0,
	2,
	357,
	2,
	37,
	2,
	52,
	2,
	55);
INSERT INTO ACT_SMT
	VALUES (1457,
	1455,
	1461,
	3,
	1,
	'WorkoutTimer::stopped line: 3');
INSERT INTO ACT_TFM
	VALUES (1457,
	1139,
	1458,
	3,
	9,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1461,
	1455,
	1462,
	6,
	1,
	'WorkoutTimer::stopped line: 6');
INSERT INTO ACT_IOP
	VALUES (1461,
	6,
	10,
	6,
	6,
	0,
	339,
	0);
INSERT INTO ACT_SMT
	VALUES (1462,
	1455,
	1463,
	7,
	1,
	'WorkoutTimer::stopped line: 7');
INSERT INTO ACT_SEL
	VALUES (1462,
	1464,
	1,
	'one',
	1465);
INSERT INTO ACT_SR
	VALUES (1462);
INSERT INTO ACT_LNK
	VALUES (1466,
	'''acts as the stopwatch for''',
	1462,
	481,
	1467,
	2,
	357,
	8,
	9,
	8,
	24,
	8,
	27);
INSERT INTO ACT_LNK
	VALUES (1467,
	'''current status indicated on''',
	0,
	398,
	0,
	2,
	399,
	9,
	3,
	9,
	11,
	9,
	14);
INSERT INTO ACT_SMT
	VALUES (1463,
	1455,
	0,
	10,
	1,
	'WorkoutTimer::stopped line: 10');
INSERT INTO E_ESS
	VALUES (1463,
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
	VALUES (1463);
INSERT INTO E_GSME
	VALUES (1463,
	725);
INSERT INTO E_GEN
	VALUES (1463,
	1464);
INSERT INTO V_VAL
	VALUES (1459,
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
	1455);
INSERT INTO V_IRF
	VALUES (1459,
	1468);
INSERT INTO V_VAL
	VALUES (1469,
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
	1455);
INSERT INTO V_IRF
	VALUES (1469,
	1468);
INSERT INTO V_VAL
	VALUES (1470,
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
	1455);
INSERT INTO V_AVL
	VALUES (1470,
	1469,
	371,
	670);
INSERT INTO V_PAR
	VALUES (1470,
	1461,
	0,
	'time',
	0,
	6,
	18);
INSERT INTO V_VAL
	VALUES (1465,
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
	1455);
INSERT INTO V_IRF
	VALUES (1465,
	1468);
INSERT INTO V_VAR
	VALUES (1458,
	1455,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (1458,
	0,
	357);
INSERT INTO V_VAR
	VALUES (1468,
	1455,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1468,
	0,
	371);
INSERT INTO V_VAR
	VALUES (1464,
	1455,
	'display',
	1,
	300);
INSERT INTO V_INT
	VALUES (1464,
	0,
	399);
INSERT INTO SM_STATE
	VALUES (1471,
	1451,
	0,
	'running',
	2,
	0);
INSERT INTO SM_SEME
	VALUES (1471,
	414,
	1451,
	0);
INSERT INTO SM_SEME
	VALUES (1471,
	379,
	1451,
	0);
INSERT INTO SM_SEME
	VALUES (1471,
	1394,
	1451,
	0);
INSERT INTO SM_MOAH
	VALUES (1472,
	1451,
	1471);
INSERT INTO SM_AH
	VALUES (1472,
	1451);
INSERT INTO SM_ACT
	VALUES (1472,
	1451,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (1473,
	1451,
	1472);
INSERT INTO ACT_ACT
	VALUES (1473,
	'state',
	0,
	1474,
	0,
	0,
	'WorkoutTimer::running',
	0);
INSERT INTO ACT_BLK
	VALUES (1474,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1473,
	0);
INSERT INTO SM_STATE
	VALUES (1475,
	1451,
	0,
	'paused',
	3,
	0);
INSERT INTO SM_SEME
	VALUES (1475,
	414,
	1451,
	0);
INSERT INTO SM_SEME
	VALUES (1475,
	379,
	1451,
	0);
INSERT INTO SM_EIGN
	VALUES (1475,
	1394,
	1451,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1475,
	1394,
	1451,
	0);
INSERT INTO SM_MOAH
	VALUES (1476,
	1451,
	1475);
INSERT INTO SM_AH
	VALUES (1476,
	1451);
INSERT INTO SM_ACT
	VALUES (1476,
	1451,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (1477,
	1451,
	1476);
INSERT INTO ACT_ACT
	VALUES (1477,
	'state',
	0,
	1478,
	0,
	0,
	'WorkoutTimer::paused',
	0);
INSERT INTO ACT_BLK
	VALUES (1478,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1477,
	0);
INSERT INTO SM_NSTXN
	VALUES (1479,
	1451,
	1452,
	414,
	0);
INSERT INTO SM_TAH
	VALUES (1480,
	1451,
	1479);
INSERT INTO SM_AH
	VALUES (1480,
	1451);
INSERT INTO SM_ACT
	VALUES (1480,
	1451,
	1,
	'// Start the timer.
self.activate();',
	'');
INSERT INTO ACT_TAB
	VALUES (1481,
	1451,
	1480);
INSERT INTO ACT_ACT
	VALUES (1481,
	'transition',
	0,
	1482,
	0,
	0,
	'WorkoutTimer1: startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1482,
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
	1481,
	0);
INSERT INTO ACT_SMT
	VALUES (1483,
	1482,
	0,
	2,
	1,
	'WorkoutTimer1: startStopPressed line: 2');
INSERT INTO ACT_TFM
	VALUES (1483,
	1388,
	1484,
	2,
	6,
	0,
	0);
INSERT INTO V_VAR
	VALUES (1484,
	1482,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1484,
	0,
	371);
INSERT INTO SM_TXN
	VALUES (1479,
	1451,
	1471,
	0);
INSERT INTO SM_NSTXN
	VALUES (1485,
	1451,
	1471,
	379,
	0);
INSERT INTO SM_TAH
	VALUES (1486,
	1451,
	1485);
INSERT INTO SM_AH
	VALUES (1486,
	1451);
INSERT INTO SM_ACT
	VALUES (1486,
	1451,
	1,
	'select any trackLog from instances of TrackLog;
if (not empty trackLog)
  trackLog.addLapMarker();
end if;',
	'');
INSERT INTO ACT_TAB
	VALUES (1487,
	1451,
	1486);
INSERT INTO ACT_ACT
	VALUES (1487,
	'transition',
	0,
	1488,
	0,
	0,
	'WorkoutTimer2: lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1488,
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
	1487,
	0);
INSERT INTO ACT_SMT
	VALUES (1489,
	1488,
	1490,
	1,
	1,
	'WorkoutTimer2: lapResetPressed line: 1');
INSERT INTO ACT_FIO
	VALUES (1489,
	1491,
	1,
	'any',
	465,
	1,
	39);
INSERT INTO ACT_SMT
	VALUES (1490,
	1488,
	0,
	2,
	1,
	'WorkoutTimer2: lapResetPressed line: 2');
INSERT INTO ACT_IF
	VALUES (1490,
	1492,
	1493,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1494,
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
	1488);
INSERT INTO V_IRF
	VALUES (1494,
	1491);
INSERT INTO V_VAL
	VALUES (1495,
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
	1488);
INSERT INTO V_UNY
	VALUES (1495,
	1494,
	'empty');
INSERT INTO V_VAL
	VALUES (1493,
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
	1488);
INSERT INTO V_UNY
	VALUES (1493,
	1495,
	'not');
INSERT INTO V_VAR
	VALUES (1491,
	1488,
	'trackLog',
	1,
	300);
INSERT INTO V_INT
	VALUES (1491,
	0,
	465);
INSERT INTO ACT_BLK
	VALUES (1492,
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
	1487,
	0);
INSERT INTO ACT_SMT
	VALUES (1496,
	1492,
	0,
	3,
	3,
	'WorkoutTimer2: lapResetPressed line: 3');
INSERT INTO ACT_TFM
	VALUES (1496,
	1022,
	1491,
	3,
	12,
	0,
	0);
INSERT INTO SM_TXN
	VALUES (1485,
	1451,
	1471,
	0);
INSERT INTO SM_NSTXN
	VALUES (1497,
	1451,
	1475,
	379,
	0);
INSERT INTO SM_TAH
	VALUES (1498,
	1451,
	1497);
INSERT INTO SM_AH
	VALUES (1498,
	1451);
INSERT INTO SM_ACT
	VALUES (1498,
	1451,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1499,
	1451,
	1498);
INSERT INTO ACT_ACT
	VALUES (1499,
	'transition',
	0,
	1500,
	0,
	0,
	'WorkoutTimer2: lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1500,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1499,
	0);
INSERT INTO SM_TXN
	VALUES (1497,
	1451,
	1452,
	0);
INSERT INTO SM_NSTXN
	VALUES (1501,
	1451,
	1475,
	414,
	0);
INSERT INTO SM_TAH
	VALUES (1502,
	1451,
	1501);
INSERT INTO SM_AH
	VALUES (1502,
	1451);
INSERT INTO SM_ACT
	VALUES (1502,
	1451,
	1,
	'self.activate();',
	'');
INSERT INTO ACT_TAB
	VALUES (1503,
	1451,
	1502);
INSERT INTO ACT_ACT
	VALUES (1503,
	'transition',
	0,
	1504,
	0,
	0,
	'WorkoutTimer1: startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1504,
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
	1503,
	0);
INSERT INTO ACT_SMT
	VALUES (1505,
	1504,
	0,
	1,
	1,
	'WorkoutTimer1: startStopPressed line: 1');
INSERT INTO ACT_TFM
	VALUES (1505,
	1388,
	1506,
	1,
	6,
	0,
	0);
INSERT INTO V_VAR
	VALUES (1506,
	1504,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1506,
	0,
	371);
INSERT INTO SM_TXN
	VALUES (1501,
	1451,
	1471,
	0);
INSERT INTO SM_NSTXN
	VALUES (1507,
	1451,
	1471,
	414,
	0);
INSERT INTO SM_TAH
	VALUES (1508,
	1451,
	1507);
INSERT INTO SM_AH
	VALUES (1508,
	1451);
INSERT INTO SM_ACT
	VALUES (1508,
	1451,
	1,
	'self.deactivate();',
	'');
INSERT INTO ACT_TAB
	VALUES (1509,
	1451,
	1508);
INSERT INTO ACT_ACT
	VALUES (1509,
	'transition',
	0,
	1510,
	0,
	0,
	'WorkoutTimer1: startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1510,
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
	1509,
	0);
INSERT INTO ACT_SMT
	VALUES (1511,
	1510,
	0,
	1,
	1,
	'WorkoutTimer1: startStopPressed line: 1');
INSERT INTO ACT_TFM
	VALUES (1511,
	1419,
	1512,
	1,
	6,
	0,
	0);
INSERT INTO V_VAR
	VALUES (1512,
	1510,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1512,
	0,
	371);
INSERT INTO SM_TXN
	VALUES (1507,
	1451,
	1475,
	0);
INSERT INTO SM_NSTXN
	VALUES (1513,
	1451,
	1471,
	1394,
	0);
INSERT INTO SM_TAH
	VALUES (1514,
	1451,
	1513);
INSERT INTO SM_AH
	VALUES (1514,
	1451);
INSERT INTO SM_ACT
	VALUES (1514,
	1451,
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
	VALUES (1515,
	1451,
	1514);
INSERT INTO ACT_ACT
	VALUES (1515,
	'transition',
	0,
	1516,
	0,
	0,
	'WorkoutTimer3: tick',
	0);
INSERT INTO ACT_BLK
	VALUES (1516,
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
	1515,
	0);
INSERT INTO ACT_SMT
	VALUES (1517,
	1516,
	1518,
	2,
	1,
	'WorkoutTimer3: tick line: 2');
INSERT INTO ACT_AI
	VALUES (1517,
	1519,
	1520,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1518,
	1516,
	1521,
	5,
	1,
	'WorkoutTimer3: tick line: 5');
INSERT INTO ACT_SEL
	VALUES (1518,
	1522,
	1,
	'one',
	1523);
INSERT INTO ACT_SR
	VALUES (1518);
INSERT INTO ACT_LNK
	VALUES (1524,
	'''acts as the stopwatch for''',
	1518,
	481,
	1525,
	2,
	357,
	6,
	9,
	6,
	24,
	6,
	27);
INSERT INTO ACT_LNK
	VALUES (1525,
	'''captures path in''',
	0,
	484,
	0,
	2,
	465,
	6,
	57,
	6,
	66,
	6,
	69);
INSERT INTO ACT_SMT
	VALUES (1521,
	1516,
	1526,
	7,
	1,
	'WorkoutTimer3: tick line: 7');
INSERT INTO ACT_TFM
	VALUES (1521,
	884,
	1522,
	7,
	10,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1526,
	1516,
	0,
	10,
	1,
	'WorkoutTimer3: tick line: 10');
INSERT INTO ACT_IOP
	VALUES (1526,
	10,
	10,
	10,
	6,
	0,
	339,
	0);
INSERT INTO V_VAL
	VALUES (1527,
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
	1516);
INSERT INTO V_IRF
	VALUES (1527,
	1528);
INSERT INTO V_VAL
	VALUES (1520,
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
	1516);
INSERT INTO V_AVL
	VALUES (1520,
	1527,
	371,
	670);
INSERT INTO V_VAL
	VALUES (1529,
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
	1516);
INSERT INTO V_IRF
	VALUES (1529,
	1528);
INSERT INTO V_VAL
	VALUES (1530,
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
	1516);
INSERT INTO V_AVL
	VALUES (1530,
	1529,
	371,
	670);
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
	188,
	1516);
INSERT INTO V_BIN
	VALUES (1519,
	1531,
	1530,
	'+');
INSERT INTO V_VAL
	VALUES (1531,
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
	1516);
INSERT INTO V_SCV
	VALUES (1531,
	1413,
	188);
INSERT INTO V_VAL
	VALUES (1523,
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
	1516);
INSERT INTO V_IRF
	VALUES (1523,
	1528);
INSERT INTO V_VAL
	VALUES (1532,
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
	1516);
INSERT INTO V_IRF
	VALUES (1532,
	1528);
INSERT INTO V_VAL
	VALUES (1533,
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
	1516);
INSERT INTO V_AVL
	VALUES (1533,
	1532,
	371,
	670);
INSERT INTO V_PAR
	VALUES (1533,
	1526,
	0,
	'time',
	0,
	10,
	18);
INSERT INTO V_VAR
	VALUES (1528,
	1516,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1528,
	0,
	371);
INSERT INTO V_VAR
	VALUES (1522,
	1516,
	'trackLog',
	1,
	300);
INSERT INTO V_INT
	VALUES (1522,
	0,
	465);
INSERT INTO SM_TXN
	VALUES (1513,
	1451,
	1471,
	0);
INSERT INTO PE_PE
	VALUES (493,
	1,
	463,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (493,
	'Goal',
	9,
	'Goal',
	'Each instance represents a particular goal as it is executing.
This class knows how to evaluate whether the goal is being achieved 
and whether the goal has completed.',
	0);
INSERT INTO O_TFR
	VALUES (1534,
	493,
	'goalcreate',
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
	VALUES (1535,
	1534,
	'sequenceNumber',
	188,
	0,
	'',
	0,
	'Sequence number of the goal specification for which an instance of a goal should be created.');
INSERT INTO ACT_OPB
	VALUES (1536,
	1534);
INSERT INTO ACT_ACT
	VALUES (1536,
	'class operation',
	0,
	1537,
	0,
	0,
	'Goal::goalcreate',
	0);
INSERT INTO ACT_BLK
	VALUES (1537,
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
	1536,
	0);
INSERT INTO ACT_SMT
	VALUES (1538,
	1537,
	1539,
	8,
	1,
	'Goal::goalcreate line: 8');
INSERT INTO ACT_FIW
	VALUES (1538,
	1540,
	1,
	'any',
	1541,
	428,
	8,
	39);
INSERT INTO ACT_SMT
	VALUES (1539,
	1537,
	0,
	10,
	1,
	'Goal::goalcreate line: 10');
INSERT INTO ACT_IF
	VALUES (1539,
	1542,
	1543,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1544,
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
	1537);
INSERT INTO V_SLR
	VALUES (1544,
	0,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1545,
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
	1537);
INSERT INTO V_AVL
	VALUES (1545,
	1544,
	428,
	449);
INSERT INTO V_VAL
	VALUES (1541,
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
	1537);
INSERT INTO V_BIN
	VALUES (1541,
	1546,
	1545,
	'==');
INSERT INTO V_VAL
	VALUES (1546,
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
	1537);
INSERT INTO V_PVL
	VALUES (1546,
	0,
	0,
	1535,
	0);
INSERT INTO V_VAL
	VALUES (1547,
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
	1537);
INSERT INTO V_IRF
	VALUES (1547,
	1540);
INSERT INTO V_VAL
	VALUES (1548,
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
	1537);
INSERT INTO V_UNY
	VALUES (1548,
	1547,
	'empty');
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
	295,
	1537);
INSERT INTO V_UNY
	VALUES (1543,
	1548,
	'not');
INSERT INTO V_VAR
	VALUES (1540,
	1537,
	'goalSpec',
	1,
	300);
INSERT INTO V_INT
	VALUES (1540,
	0,
	428);
INSERT INTO ACT_BLK
	VALUES (1542,
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
	1536,
	0);
INSERT INTO ACT_SMT
	VALUES (1549,
	1542,
	1550,
	11,
	3,
	'Goal::goalcreate line: 11');
INSERT INTO ACT_CR
	VALUES (1549,
	1551,
	1,
	493,
	11,
	34);
INSERT INTO ACT_SMT
	VALUES (1550,
	1542,
	1552,
	12,
	3,
	'Goal::goalcreate line: 12');
INSERT INTO ACT_REL
	VALUES (1550,
	1551,
	1540,
	'''specified by''',
	491,
	12,
	34,
	12,
	37);
INSERT INTO ACT_SMT
	VALUES (1552,
	1542,
	1553,
	13,
	3,
	'Goal::goalcreate line: 13');
INSERT INTO ACT_FIO
	VALUES (1552,
	1554,
	1,
	'any',
	357,
	13,
	40);
INSERT INTO ACT_SMT
	VALUES (1553,
	1542,
	1555,
	14,
	3,
	'Goal::goalcreate line: 14');
INSERT INTO ACT_REL
	VALUES (1553,
	1551,
	1554,
	'''is currently executing within''',
	497,
	14,
	33,
	14,
	37);
INSERT INTO ACT_SMT
	VALUES (1555,
	1542,
	1556,
	17,
	3,
	'Goal::goalcreate line: 17');
INSERT INTO ACT_TFM
	VALUES (1555,
	1557,
	1551,
	17,
	8,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1556,
	1542,
	1558,
	18,
	3,
	'Goal::goalcreate line: 18');
INSERT INTO ACT_AI
	VALUES (1556,
	1559,
	1560,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1558,
	1542,
	1561,
	21,
	3,
	'Goal::goalcreate line: 21');
INSERT INTO E_ESS
	VALUES (1558,
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
	VALUES (1558,
	1,
	1562);
INSERT INTO E_CSME
	VALUES (1558,
	1418);
INSERT INTO E_CEI
	VALUES (1558,
	1551);
INSERT INTO ACT_SMT
	VALUES (1561,
	1542,
	0,
	22,
	3,
	'Goal::goalcreate line: 22');
INSERT INTO ACT_AI
	VALUES (1561,
	1563,
	1564,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1565,
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
	1542);
INSERT INTO V_IRF
	VALUES (1565,
	1551);
INSERT INTO V_VAL
	VALUES (1560,
	1,
	0,
	18,
	8,
	18,
	0,
	0,
	0,
	0,
	703,
	1542);
INSERT INTO V_AVL
	VALUES (1560,
	1565,
	493,
	704);
INSERT INTO V_VAL
	VALUES (1559,
	0,
	0,
	18,
	39,
	46,
	0,
	0,
	0,
	0,
	703,
	1542);
INSERT INTO V_LEN
	VALUES (1559,
	706,
	18,
	22);
INSERT INTO V_VAL
	VALUES (1566,
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
	1542);
INSERT INTO V_IRF
	VALUES (1566,
	1551);
INSERT INTO V_VAL
	VALUES (1564,
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
	1542);
INSERT INTO V_AVL
	VALUES (1564,
	1566,
	493,
	1567);
INSERT INTO V_VAL
	VALUES (1563,
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
	1542);
INSERT INTO V_BRV
	VALUES (1563,
	586,
	1,
	22,
	26);
INSERT INTO V_VAL
	VALUES (1568,
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
	1542);
INSERT INTO V_TVL
	VALUES (1568,
	1562);
INSERT INTO V_PAR
	VALUES (1568,
	0,
	1563,
	'event_inst',
	1569,
	22,
	54);
INSERT INTO V_VAL
	VALUES (1569,
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
	1542);
INSERT INTO V_SCV
	VALUES (1569,
	1570,
	188);
INSERT INTO V_PAR
	VALUES (1569,
	0,
	1563,
	'microseconds',
	0,
	22,
	81);
INSERT INTO V_VAR
	VALUES (1551,
	1542,
	'goal',
	1,
	300);
INSERT INTO V_INT
	VALUES (1551,
	0,
	493);
INSERT INTO V_VAR
	VALUES (1554,
	1542,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (1554,
	0,
	357);
INSERT INTO V_VAR
	VALUES (1562,
	1542,
	'evaluateEvent',
	1,
	302);
INSERT INTO V_TRN
	VALUES (1562,
	0,
	'');
INSERT INTO O_TFR
	VALUES (1557,
	493,
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
  self.goalstart = workoutTimer.time;
elif ( goalSpec.spanType == GoalSpan::Distance )
  select one session related by self->WorkoutSession[R11.''is currently executing within''];
  self.goalstart = session.accumulatedDistance;
else
  LOG::LogFailure( message: "Goal.calculateStart: Unknown Goal Span Type." );
end if;',
	1,
	'',
	1534);
INSERT INTO ACT_OPB
	VALUES (1571,
	1557);
INSERT INTO ACT_ACT
	VALUES (1571,
	'operation',
	0,
	1572,
	0,
	0,
	'Goal::calculateStart',
	0);
INSERT INTO ACT_BLK
	VALUES (1572,
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
	1571,
	0);
INSERT INTO ACT_SMT
	VALUES (1573,
	1572,
	1574,
	3,
	1,
	'Goal::calculateStart line: 3');
INSERT INTO ACT_SEL
	VALUES (1573,
	1575,
	1,
	'one',
	1576);
INSERT INTO ACT_SR
	VALUES (1573);
INSERT INTO ACT_LNK
	VALUES (1577,
	'''specified by''',
	1573,
	491,
	0,
	2,
	428,
	3,
	38,
	3,
	47,
	3,
	50);
INSERT INTO ACT_SMT
	VALUES (1574,
	1572,
	0,
	4,
	1,
	'Goal::calculateStart line: 4');
INSERT INTO ACT_IF
	VALUES (1574,
	1578,
	1579,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1580,
	1572,
	0,
	8,
	1,
	'Goal::calculateStart line: 8');
INSERT INTO ACT_EL
	VALUES (1580,
	1581,
	1582,
	1574);
INSERT INTO ACT_SMT
	VALUES (1583,
	1572,
	0,
	11,
	1,
	'Goal::calculateStart line: 11');
INSERT INTO ACT_E
	VALUES (1583,
	1584,
	1574);
INSERT INTO V_VAL
	VALUES (1576,
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
	1572);
INSERT INTO V_IRF
	VALUES (1576,
	1585);
INSERT INTO V_VAL
	VALUES (1586,
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
	1572);
INSERT INTO V_IRF
	VALUES (1586,
	1575);
INSERT INTO V_VAL
	VALUES (1587,
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
	1572);
INSERT INTO V_AVL
	VALUES (1587,
	1586,
	428,
	459);
INSERT INTO V_VAL
	VALUES (1579,
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
INSERT INTO V_BIN
	VALUES (1579,
	1588,
	1587,
	'==');
INSERT INTO V_VAL
	VALUES (1588,
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
	1572);
INSERT INTO V_LEN
	VALUES (1588,
	633,
	4,
	27);
INSERT INTO V_VAL
	VALUES (1589,
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
	1572);
INSERT INTO V_IRF
	VALUES (1589,
	1575);
INSERT INTO V_VAL
	VALUES (1590,
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
	1572);
INSERT INTO V_AVL
	VALUES (1590,
	1589,
	428,
	459);
INSERT INTO V_VAL
	VALUES (1582,
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
INSERT INTO V_BIN
	VALUES (1582,
	1591,
	1590,
	'==');
INSERT INTO V_VAL
	VALUES (1591,
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
	1572);
INSERT INTO V_LEN
	VALUES (1591,
	625,
	8,
	29);
INSERT INTO V_VAR
	VALUES (1575,
	1572,
	'goalSpec',
	1,
	300);
INSERT INTO V_INT
	VALUES (1575,
	0,
	428);
INSERT INTO V_VAR
	VALUES (1585,
	1572,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1585,
	0,
	493);
INSERT INTO ACT_BLK
	VALUES (1578,
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
	1571,
	0);
INSERT INTO ACT_SMT
	VALUES (1592,
	1578,
	1593,
	5,
	3,
	'Goal::calculateStart line: 5');
INSERT INTO ACT_SEL
	VALUES (1592,
	1594,
	1,
	'one',
	1595);
INSERT INTO ACT_SR
	VALUES (1592);
INSERT INTO ACT_LNK
	VALUES (1596,
	'''is currently executing within''',
	1592,
	497,
	1597,
	2,
	357,
	6,
	11,
	6,
	26,
	6,
	30);
INSERT INTO ACT_LNK
	VALUES (1597,
	'''is timed by''',
	0,
	481,
	0,
	2,
	371,
	6,
	64,
	6,
	77,
	6,
	80);
INSERT INTO ACT_SMT
	VALUES (1593,
	1578,
	0,
	7,
	3,
	'Goal::calculateStart line: 7');
INSERT INTO ACT_AI
	VALUES (1593,
	1598,
	1599,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1595,
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
	1578);
INSERT INTO V_IRF
	VALUES (1595,
	1585);
INSERT INTO V_VAL
	VALUES (1600,
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
	1578);
INSERT INTO V_IRF
	VALUES (1600,
	1585);
INSERT INTO V_VAL
	VALUES (1599,
	1,
	0,
	7,
	8,
	16,
	0,
	0,
	0,
	0,
	133,
	1578);
INSERT INTO V_AVL
	VALUES (1599,
	1600,
	493,
	1601);
INSERT INTO V_VAL
	VALUES (1602,
	0,
	0,
	7,
	20,
	31,
	0,
	0,
	0,
	0,
	300,
	1578);
INSERT INTO V_IRF
	VALUES (1602,
	1594);
INSERT INTO V_VAL
	VALUES (1598,
	0,
	0,
	7,
	33,
	36,
	0,
	0,
	0,
	0,
	188,
	1578);
INSERT INTO V_AVL
	VALUES (1598,
	1602,
	371,
	670);
INSERT INTO V_VAR
	VALUES (1594,
	1578,
	'workoutTimer',
	1,
	300);
INSERT INTO V_INT
	VALUES (1594,
	0,
	371);
INSERT INTO ACT_BLK
	VALUES (1581,
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
	1571,
	0);
INSERT INTO ACT_SMT
	VALUES (1603,
	1581,
	1604,
	9,
	3,
	'Goal::calculateStart line: 9');
INSERT INTO ACT_SEL
	VALUES (1603,
	1605,
	1,
	'one',
	1606);
INSERT INTO ACT_SR
	VALUES (1603);
INSERT INTO ACT_LNK
	VALUES (1607,
	'''is currently executing within''',
	1603,
	497,
	0,
	2,
	357,
	9,
	39,
	9,
	54,
	9,
	58);
INSERT INTO ACT_SMT
	VALUES (1604,
	1581,
	0,
	10,
	3,
	'Goal::calculateStart line: 10');
INSERT INTO ACT_AI
	VALUES (1604,
	1608,
	1609,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1606,
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
	1581);
INSERT INTO V_IRF
	VALUES (1606,
	1585);
INSERT INTO V_VAL
	VALUES (1610,
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
	1581);
INSERT INTO V_IRF
	VALUES (1610,
	1585);
INSERT INTO V_VAL
	VALUES (1609,
	1,
	0,
	10,
	8,
	16,
	0,
	0,
	0,
	0,
	133,
	1581);
INSERT INTO V_AVL
	VALUES (1609,
	1610,
	493,
	1601);
INSERT INTO V_VAL
	VALUES (1611,
	0,
	0,
	10,
	20,
	26,
	0,
	0,
	0,
	0,
	300,
	1581);
INSERT INTO V_IRF
	VALUES (1611,
	1605);
INSERT INTO V_VAL
	VALUES (1608,
	0,
	0,
	10,
	28,
	46,
	0,
	0,
	0,
	0,
	133,
	1581);
INSERT INTO V_AVL
	VALUES (1608,
	1611,
	357,
	746);
INSERT INTO V_VAR
	VALUES (1605,
	1581,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (1605,
	0,
	357);
INSERT INTO ACT_BLK
	VALUES (1584,
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
	1571,
	0);
INSERT INTO ACT_SMT
	VALUES (1612,
	1584,
	0,
	12,
	3,
	'Goal::calculateStart line: 12');
INSERT INTO ACT_BRG
	VALUES (1612,
	381,
	12,
	8,
	12,
	3);
INSERT INTO V_VAL
	VALUES (1613,
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
	1584);
INSERT INTO V_LST
	VALUES (1613,
	'Goal.calculateStart: Unknown Goal Span Type.');
INSERT INTO V_PAR
	VALUES (1613,
	1612,
	0,
	'message',
	0,
	12,
	20);
INSERT INTO O_TFR
	VALUES (1614,
	493,
	'evaluateAchievement',
	'',
	703,
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
	1557);
INSERT INTO ACT_OPB
	VALUES (1615,
	1614);
INSERT INTO ACT_ACT
	VALUES (1615,
	'operation',
	0,
	1616,
	0,
	0,
	'Goal::evaluateAchievement',
	0);
INSERT INTO ACT_BLK
	VALUES (1616,
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
	1615,
	0);
INSERT INTO ACT_SMT
	VALUES (1617,
	1616,
	1618,
	6,
	1,
	'Goal::evaluateAchievement line: 6');
INSERT INTO ACT_SEL
	VALUES (1617,
	1619,
	1,
	'one',
	1620);
INSERT INTO ACT_SR
	VALUES (1617);
INSERT INTO ACT_LNK
	VALUES (1621,
	'''specified by''',
	1617,
	491,
	0,
	2,
	428,
	6,
	38,
	6,
	47,
	6,
	50);
INSERT INTO ACT_SMT
	VALUES (1618,
	1616,
	1622,
	7,
	1,
	'Goal::evaluateAchievement line: 7');
INSERT INTO ACT_SEL
	VALUES (1618,
	1623,
	1,
	'one',
	1624);
INSERT INTO ACT_SR
	VALUES (1618);
INSERT INTO ACT_LNK
	VALUES (1625,
	'''is currently executing within''',
	1618,
	497,
	0,
	2,
	357,
	7,
	37,
	7,
	52,
	7,
	56);
INSERT INTO ACT_SMT
	VALUES (1622,
	1616,
	1626,
	11,
	1,
	'Goal::evaluateAchievement line: 11');
INSERT INTO ACT_AI
	VALUES (1622,
	1627,
	1628,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1626,
	1616,
	1629,
	12,
	1,
	'Goal::evaluateAchievement line: 12');
INSERT INTO ACT_IF
	VALUES (1626,
	1630,
	1631,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1632,
	1616,
	0,
	14,
	1,
	'Goal::evaluateAchievement line: 14');
INSERT INTO ACT_EL
	VALUES (1632,
	1633,
	1634,
	1626);
INSERT INTO ACT_SMT
	VALUES (1635,
	1616,
	0,
	16,
	1,
	'Goal::evaluateAchievement line: 16');
INSERT INTO ACT_E
	VALUES (1635,
	1636,
	1626);
INSERT INTO ACT_SMT
	VALUES (1629,
	1616,
	1637,
	21,
	1,
	'Goal::evaluateAchievement line: 21');
INSERT INTO ACT_AI
	VALUES (1629,
	1638,
	1639,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1637,
	1616,
	1640,
	22,
	1,
	'Goal::evaluateAchievement line: 22');
INSERT INTO ACT_IF
	VALUES (1637,
	1641,
	1642,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1643,
	1616,
	0,
	24,
	1,
	'Goal::evaluateAchievement line: 24');
INSERT INTO ACT_EL
	VALUES (1643,
	1644,
	1645,
	1637);
INSERT INTO ACT_SMT
	VALUES (1640,
	1616,
	1646,
	30,
	1,
	'Goal::evaluateAchievement line: 30');
INSERT INTO ACT_IF
	VALUES (1640,
	1647,
	1648,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1646,
	1616,
	0,
	38,
	1,
	'Goal::evaluateAchievement line: 38');
INSERT INTO ACT_RET
	VALUES (1646,
	1649);
INSERT INTO V_VAL
	VALUES (1620,
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
	1616);
INSERT INTO V_IRF
	VALUES (1620,
	1650);
INSERT INTO V_VAL
	VALUES (1624,
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
	1616);
INSERT INTO V_IRF
	VALUES (1624,
	1650);
INSERT INTO V_VAL
	VALUES (1628,
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
	1616);
INSERT INTO V_TVL
	VALUES (1628,
	1651);
INSERT INTO V_VAL
	VALUES (1627,
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
	1616);
INSERT INTO V_LRL
	VALUES (1627,
	'0.0');
INSERT INTO V_VAL
	VALUES (1652,
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
	1616);
INSERT INTO V_IRF
	VALUES (1652,
	1619);
INSERT INTO V_VAL
	VALUES (1653,
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
	1616);
INSERT INTO V_AVL
	VALUES (1653,
	1652,
	428,
	457);
INSERT INTO V_VAL
	VALUES (1631,
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
	1616);
INSERT INTO V_BIN
	VALUES (1631,
	1654,
	1653,
	'==');
INSERT INTO V_VAL
	VALUES (1654,
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
	1616);
INSERT INTO V_LEN
	VALUES (1654,
	631,
	12,
	31);
INSERT INTO V_VAL
	VALUES (1655,
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
	1616);
INSERT INTO V_IRF
	VALUES (1655,
	1619);
INSERT INTO V_VAL
	VALUES (1656,
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
	1616);
INSERT INTO V_AVL
	VALUES (1656,
	1655,
	428,
	457);
INSERT INTO V_VAL
	VALUES (1634,
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
	1616);
INSERT INTO V_BIN
	VALUES (1634,
	1657,
	1656,
	'==');
INSERT INTO V_VAL
	VALUES (1657,
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
	1616);
INSERT INTO V_LEN
	VALUES (1657,
	623,
	14,
	33);
INSERT INTO V_VAL
	VALUES (1639,
	1,
	1,
	21,
	1,
	15,
	0,
	0,
	0,
	0,
	703,
	1616);
INSERT INTO V_TVL
	VALUES (1639,
	1658);
INSERT INTO V_VAL
	VALUES (1638,
	0,
	0,
	21,
	36,
	44,
	0,
	0,
	0,
	0,
	703,
	1616);
INSERT INTO V_LEN
	VALUES (1638,
	1659,
	21,
	19);
INSERT INTO V_VAL
	VALUES (1660,
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
	1616);
INSERT INTO V_TVL
	VALUES (1660,
	1651);
INSERT INTO V_VAL
	VALUES (1642,
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
	1616);
INSERT INTO V_BIN
	VALUES (1642,
	1661,
	1660,
	'<');
INSERT INTO V_VAL
	VALUES (1662,
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
	1616);
INSERT INTO V_IRF
	VALUES (1662,
	1619);
INSERT INTO V_VAL
	VALUES (1661,
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
	1616);
INSERT INTO V_AVL
	VALUES (1661,
	1662,
	428,
	451);
INSERT INTO V_VAL
	VALUES (1663,
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
	1616);
INSERT INTO V_TVL
	VALUES (1663,
	1651);
INSERT INTO V_VAL
	VALUES (1645,
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
	1616);
INSERT INTO V_BIN
	VALUES (1645,
	1664,
	1663,
	'>');
INSERT INTO V_VAL
	VALUES (1665,
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
	1616);
INSERT INTO V_IRF
	VALUES (1665,
	1619);
INSERT INTO V_VAL
	VALUES (1664,
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
	1616);
INSERT INTO V_AVL
	VALUES (1664,
	1665,
	428,
	453);
INSERT INTO V_VAL
	VALUES (1666,
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
	1616);
INSERT INTO V_IRF
	VALUES (1666,
	1619);
INSERT INTO V_VAL
	VALUES (1667,
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
	1616);
INSERT INTO V_AVL
	VALUES (1667,
	1666,
	428,
	457);
INSERT INTO V_VAL
	VALUES (1648,
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
	1616);
INSERT INTO V_BIN
	VALUES (1648,
	1668,
	1667,
	'==');
INSERT INTO V_VAL
	VALUES (1668,
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
	1616);
INSERT INTO V_LEN
	VALUES (1668,
	623,
	30,
	31);
INSERT INTO V_VAL
	VALUES (1649,
	0,
	0,
	38,
	9,
	23,
	0,
	0,
	0,
	0,
	703,
	1616);
INSERT INTO V_TVL
	VALUES (1649,
	1658);
INSERT INTO V_VAR
	VALUES (1619,
	1616,
	'goalSpec',
	1,
	300);
INSERT INTO V_INT
	VALUES (1619,
	0,
	428);
INSERT INTO V_VAR
	VALUES (1650,
	1616,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1650,
	0,
	493);
INSERT INTO V_VAR
	VALUES (1623,
	1616,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (1623,
	0,
	357);
INSERT INTO V_VAR
	VALUES (1651,
	1616,
	'currentValue',
	1,
	133);
INSERT INTO V_TRN
	VALUES (1651,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1658,
	1616,
	'goalDisposition',
	1,
	703);
INSERT INTO V_TRN
	VALUES (1658,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (1630,
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
	1615,
	0);
INSERT INTO ACT_SMT
	VALUES (1669,
	1630,
	0,
	13,
	3,
	'Goal::evaluateAchievement line: 13');
INSERT INTO ACT_AI
	VALUES (1669,
	1670,
	1671,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1671,
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
	1630);
INSERT INTO V_TVL
	VALUES (1671,
	1651);
INSERT INTO V_VAL
	VALUES (1672,
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
	1630);
INSERT INTO V_IRF
	VALUES (1672,
	1623);
INSERT INTO V_VAL
	VALUES (1670,
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
	1630);
INSERT INTO V_AVL
	VALUES (1670,
	1672,
	357,
	818);
INSERT INTO ACT_BLK
	VALUES (1633,
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
	1615,
	0);
INSERT INTO ACT_SMT
	VALUES (1673,
	1633,
	0,
	15,
	3,
	'Goal::evaluateAchievement line: 15');
INSERT INTO ACT_AI
	VALUES (1673,
	1674,
	1675,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1675,
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
	1633);
INSERT INTO V_TVL
	VALUES (1675,
	1651);
INSERT INTO V_VAL
	VALUES (1676,
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
	1633);
INSERT INTO V_IRF
	VALUES (1676,
	1623);
INSERT INTO V_VAL
	VALUES (1674,
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
	1633);
INSERT INTO V_AVL
	VALUES (1674,
	1676,
	357,
	797);
INSERT INTO ACT_BLK
	VALUES (1636,
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
	1615,
	0);
INSERT INTO ACT_SMT
	VALUES (1677,
	1636,
	0,
	17,
	3,
	'Goal::evaluateAchievement line: 17');
INSERT INTO ACT_BRG
	VALUES (1677,
	381,
	17,
	8,
	17,
	3);
INSERT INTO V_VAL
	VALUES (1678,
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
	1636);
INSERT INTO V_LST
	VALUES (1678,
	'Goal.evaluateAchievement: Unknown Goal Criteria Type.');
INSERT INTO V_PAR
	VALUES (1678,
	1677,
	0,
	'message',
	0,
	17,
	20);
INSERT INTO ACT_BLK
	VALUES (1641,
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
	1615,
	0);
INSERT INTO ACT_SMT
	VALUES (1679,
	1641,
	0,
	23,
	3,
	'Goal::evaluateAchievement line: 23');
INSERT INTO ACT_AI
	VALUES (1679,
	1680,
	1681,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1681,
	1,
	0,
	23,
	3,
	17,
	0,
	0,
	0,
	0,
	703,
	1641);
INSERT INTO V_TVL
	VALUES (1681,
	1658);
INSERT INTO V_VAL
	VALUES (1680,
	0,
	0,
	23,
	38,
	45,
	0,
	0,
	0,
	0,
	703,
	1641);
INSERT INTO V_LEN
	VALUES (1680,
	706,
	23,
	21);
INSERT INTO ACT_BLK
	VALUES (1644,
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
	1615,
	0);
INSERT INTO ACT_SMT
	VALUES (1682,
	1644,
	0,
	25,
	3,
	'Goal::evaluateAchievement line: 25');
INSERT INTO ACT_AI
	VALUES (1682,
	1683,
	1684,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1684,
	1,
	0,
	25,
	3,
	17,
	0,
	0,
	0,
	0,
	703,
	1644);
INSERT INTO V_TVL
	VALUES (1684,
	1658);
INSERT INTO V_VAL
	VALUES (1683,
	0,
	0,
	25,
	38,
	45,
	0,
	0,
	0,
	0,
	703,
	1644);
INSERT INTO V_LEN
	VALUES (1683,
	710,
	25,
	21);
INSERT INTO ACT_BLK
	VALUES (1647,
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
	1615,
	0);
INSERT INTO ACT_SMT
	VALUES (1685,
	1647,
	0,
	31,
	3,
	'Goal::evaluateAchievement line: 31');
INSERT INTO ACT_IF
	VALUES (1685,
	1686,
	1687,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1688,
	1647,
	0,
	33,
	3,
	'Goal::evaluateAchievement line: 33');
INSERT INTO ACT_EL
	VALUES (1688,
	1689,
	1690,
	1685);
INSERT INTO V_VAL
	VALUES (1691,
	0,
	0,
	31,
	8,
	22,
	0,
	0,
	0,
	0,
	703,
	1647);
INSERT INTO V_TVL
	VALUES (1691,
	1658);
INSERT INTO V_VAL
	VALUES (1687,
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
	1647);
INSERT INTO V_BIN
	VALUES (1687,
	1692,
	1691,
	'==');
INSERT INTO V_VAL
	VALUES (1692,
	0,
	0,
	31,
	44,
	51,
	0,
	0,
	0,
	0,
	703,
	1647);
INSERT INTO V_LEN
	VALUES (1692,
	706,
	31,
	27);
INSERT INTO V_VAL
	VALUES (1693,
	0,
	0,
	33,
	10,
	24,
	0,
	0,
	0,
	0,
	703,
	1647);
INSERT INTO V_TVL
	VALUES (1693,
	1658);
INSERT INTO V_VAL
	VALUES (1690,
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
	1647);
INSERT INTO V_BIN
	VALUES (1690,
	1694,
	1693,
	'==');
INSERT INTO V_VAL
	VALUES (1694,
	0,
	0,
	33,
	46,
	53,
	0,
	0,
	0,
	0,
	703,
	1647);
INSERT INTO V_LEN
	VALUES (1694,
	710,
	33,
	29);
INSERT INTO ACT_BLK
	VALUES (1686,
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
	1615,
	0);
INSERT INTO ACT_SMT
	VALUES (1695,
	1686,
	0,
	32,
	5,
	'Goal::evaluateAchievement line: 32');
INSERT INTO ACT_AI
	VALUES (1695,
	1696,
	1697,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1697,
	1,
	0,
	32,
	5,
	19,
	0,
	0,
	0,
	0,
	703,
	1686);
INSERT INTO V_TVL
	VALUES (1697,
	1658);
INSERT INTO V_VAL
	VALUES (1696,
	0,
	0,
	32,
	40,
	47,
	0,
	0,
	0,
	0,
	703,
	1686);
INSERT INTO V_LEN
	VALUES (1696,
	710,
	32,
	23);
INSERT INTO ACT_BLK
	VALUES (1689,
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
	1615,
	0);
INSERT INTO ACT_SMT
	VALUES (1698,
	1689,
	0,
	34,
	5,
	'Goal::evaluateAchievement line: 34');
INSERT INTO ACT_AI
	VALUES (1698,
	1699,
	1700,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1700,
	1,
	0,
	34,
	5,
	19,
	0,
	0,
	0,
	0,
	703,
	1689);
INSERT INTO V_TVL
	VALUES (1700,
	1658);
INSERT INTO V_VAL
	VALUES (1699,
	0,
	0,
	34,
	40,
	47,
	0,
	0,
	0,
	0,
	703,
	1689);
INSERT INTO V_LEN
	VALUES (1699,
	706,
	34,
	23);
INSERT INTO O_TFR
	VALUES (1701,
	493,
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
	1614);
INSERT INTO ACT_OPB
	VALUES (1702,
	1701);
INSERT INTO ACT_ACT
	VALUES (1702,
	'operation',
	0,
	1703,
	0,
	0,
	'Goal::evaluateCompletion',
	0);
INSERT INTO ACT_BLK
	VALUES (1703,
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
	1702,
	0);
INSERT INTO ACT_SMT
	VALUES (1704,
	1703,
	1705,
	6,
	1,
	'Goal::evaluateCompletion line: 6');
INSERT INTO ACT_SEL
	VALUES (1704,
	1706,
	1,
	'one',
	1707);
INSERT INTO ACT_SR
	VALUES (1704);
INSERT INTO ACT_LNK
	VALUES (1708,
	'''specified by''',
	1704,
	491,
	0,
	2,
	428,
	6,
	38,
	6,
	47,
	6,
	50);
INSERT INTO ACT_SMT
	VALUES (1705,
	1703,
	1709,
	10,
	1,
	'Goal::evaluateCompletion line: 10');
INSERT INTO ACT_AI
	VALUES (1705,
	1710,
	1711,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1709,
	1703,
	1712,
	11,
	1,
	'Goal::evaluateCompletion line: 11');
INSERT INTO ACT_IF
	VALUES (1709,
	1713,
	1714,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1715,
	1703,
	0,
	14,
	1,
	'Goal::evaluateCompletion line: 14');
INSERT INTO ACT_EL
	VALUES (1715,
	1716,
	1717,
	1709);
INSERT INTO ACT_SMT
	VALUES (1718,
	1703,
	0,
	18,
	1,
	'Goal::evaluateCompletion line: 18');
INSERT INTO ACT_E
	VALUES (1718,
	1719,
	1709);
INSERT INTO ACT_SMT
	VALUES (1712,
	1703,
	0,
	24,
	1,
	'Goal::evaluateCompletion line: 24');
INSERT INTO ACT_IF
	VALUES (1712,
	1720,
	1721,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1707,
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
	1703);
INSERT INTO V_IRF
	VALUES (1707,
	1722);
INSERT INTO V_VAL
	VALUES (1711,
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
	1703);
INSERT INTO V_TVL
	VALUES (1711,
	1723);
INSERT INTO V_VAL
	VALUES (1710,
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
	1703);
INSERT INTO V_LRL
	VALUES (1710,
	'0.0');
INSERT INTO V_VAL
	VALUES (1724,
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
	1703);
INSERT INTO V_IRF
	VALUES (1724,
	1706);
INSERT INTO V_VAL
	VALUES (1725,
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
	1703);
INSERT INTO V_AVL
	VALUES (1725,
	1724,
	428,
	459);
INSERT INTO V_VAL
	VALUES (1714,
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
	1703);
INSERT INTO V_BIN
	VALUES (1714,
	1726,
	1725,
	'==');
INSERT INTO V_VAL
	VALUES (1726,
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
	1703);
INSERT INTO V_LEN
	VALUES (1726,
	625,
	11,
	27);
INSERT INTO V_VAL
	VALUES (1727,
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
	1703);
INSERT INTO V_IRF
	VALUES (1727,
	1706);
INSERT INTO V_VAL
	VALUES (1728,
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
	1703);
INSERT INTO V_AVL
	VALUES (1728,
	1727,
	428,
	459);
INSERT INTO V_VAL
	VALUES (1717,
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
	1703);
INSERT INTO V_BIN
	VALUES (1717,
	1729,
	1728,
	'==');
INSERT INTO V_VAL
	VALUES (1729,
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
	1703);
INSERT INTO V_LEN
	VALUES (1729,
	633,
	14,
	29);
INSERT INTO V_VAL
	VALUES (1730,
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
	1703);
INSERT INTO V_TVL
	VALUES (1730,
	1723);
INSERT INTO V_VAL
	VALUES (1721,
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
	1703);
INSERT INTO V_BIN
	VALUES (1721,
	1731,
	1730,
	'>=');
INSERT INTO V_VAL
	VALUES (1732,
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
	1703);
INSERT INTO V_IRF
	VALUES (1732,
	1706);
INSERT INTO V_VAL
	VALUES (1731,
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
	1703);
INSERT INTO V_AVL
	VALUES (1731,
	1732,
	428,
	455);
INSERT INTO V_VAR
	VALUES (1706,
	1703,
	'goalSpec',
	1,
	300);
INSERT INTO V_INT
	VALUES (1706,
	0,
	428);
INSERT INTO V_VAR
	VALUES (1722,
	1703,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1722,
	0,
	493);
INSERT INTO V_VAR
	VALUES (1723,
	1703,
	'elapsedSpan',
	1,
	133);
INSERT INTO V_TRN
	VALUES (1723,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (1713,
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
	1702,
	0);
INSERT INTO ACT_SMT
	VALUES (1733,
	1713,
	1734,
	12,
	3,
	'Goal::evaluateCompletion line: 12');
INSERT INTO ACT_SEL
	VALUES (1733,
	1735,
	1,
	'one',
	1736);
INSERT INTO ACT_SR
	VALUES (1733);
INSERT INTO ACT_LNK
	VALUES (1737,
	'''is currently executing within''',
	1733,
	497,
	0,
	2,
	357,
	12,
	39,
	12,
	54,
	12,
	58);
INSERT INTO ACT_SMT
	VALUES (1734,
	1713,
	0,
	13,
	3,
	'Goal::evaluateCompletion line: 13');
INSERT INTO ACT_AI
	VALUES (1734,
	1738,
	1739,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1736,
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
	1713);
INSERT INTO V_IRF
	VALUES (1736,
	1722);
INSERT INTO V_VAL
	VALUES (1739,
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
	1713);
INSERT INTO V_TVL
	VALUES (1739,
	1723);
INSERT INTO V_VAL
	VALUES (1740,
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
	1713);
INSERT INTO V_IRF
	VALUES (1740,
	1735);
INSERT INTO V_VAL
	VALUES (1741,
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
	1713);
INSERT INTO V_AVL
	VALUES (1741,
	1740,
	357,
	746);
INSERT INTO V_VAL
	VALUES (1738,
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
	1713);
INSERT INTO V_BIN
	VALUES (1738,
	1742,
	1741,
	'-');
INSERT INTO V_VAL
	VALUES (1743,
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
	1713);
INSERT INTO V_IRF
	VALUES (1743,
	1722);
INSERT INTO V_VAL
	VALUES (1742,
	0,
	0,
	13,
	52,
	60,
	0,
	0,
	0,
	0,
	133,
	1713);
INSERT INTO V_AVL
	VALUES (1742,
	1743,
	493,
	1601);
INSERT INTO V_VAR
	VALUES (1735,
	1713,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (1735,
	0,
	357);
INSERT INTO ACT_BLK
	VALUES (1716,
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
	1702,
	0);
INSERT INTO ACT_SMT
	VALUES (1744,
	1716,
	1745,
	15,
	3,
	'Goal::evaluateCompletion line: 15');
INSERT INTO ACT_SEL
	VALUES (1744,
	1746,
	1,
	'one',
	1747);
INSERT INTO ACT_SR
	VALUES (1744);
INSERT INTO ACT_LNK
	VALUES (1748,
	'''is currently executing within''',
	1744,
	497,
	1749,
	2,
	357,
	16,
	11,
	16,
	26,
	16,
	30);
INSERT INTO ACT_LNK
	VALUES (1749,
	'''is timed by''',
	0,
	481,
	0,
	2,
	371,
	16,
	64,
	16,
	77,
	16,
	80);
INSERT INTO ACT_SMT
	VALUES (1745,
	1716,
	0,
	17,
	3,
	'Goal::evaluateCompletion line: 17');
INSERT INTO ACT_AI
	VALUES (1745,
	1750,
	1751,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1747,
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
	1716);
INSERT INTO V_IRF
	VALUES (1747,
	1722);
INSERT INTO V_VAL
	VALUES (1751,
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
	1716);
INSERT INTO V_TVL
	VALUES (1751,
	1723);
INSERT INTO V_VAL
	VALUES (1752,
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
	1716);
INSERT INTO V_IRF
	VALUES (1752,
	1746);
INSERT INTO V_VAL
	VALUES (1753,
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
	1716);
INSERT INTO V_AVL
	VALUES (1753,
	1752,
	371,
	670);
INSERT INTO V_VAL
	VALUES (1750,
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
	1716);
INSERT INTO V_BIN
	VALUES (1750,
	1754,
	1753,
	'-');
INSERT INTO V_VAL
	VALUES (1755,
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
	1716);
INSERT INTO V_IRF
	VALUES (1755,
	1722);
INSERT INTO V_VAL
	VALUES (1754,
	0,
	0,
	17,
	42,
	50,
	0,
	0,
	0,
	0,
	133,
	1716);
INSERT INTO V_AVL
	VALUES (1754,
	1755,
	493,
	1601);
INSERT INTO V_VAR
	VALUES (1746,
	1716,
	'workoutTimer',
	1,
	300);
INSERT INTO V_INT
	VALUES (1746,
	0,
	371);
INSERT INTO ACT_BLK
	VALUES (1719,
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
	1702,
	0);
INSERT INTO ACT_SMT
	VALUES (1756,
	1719,
	0,
	19,
	3,
	'Goal::evaluateCompletion line: 19');
INSERT INTO ACT_BRG
	VALUES (1756,
	381,
	19,
	8,
	19,
	3);
INSERT INTO V_VAL
	VALUES (1757,
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
	1719);
INSERT INTO V_LST
	VALUES (1757,
	'Goal.evaluateCompletion: Unknown Goal Span Type.');
INSERT INTO V_PAR
	VALUES (1757,
	1756,
	0,
	'message',
	0,
	19,
	20);
INSERT INTO ACT_BLK
	VALUES (1720,
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
	1702,
	0);
INSERT INTO ACT_SMT
	VALUES (1758,
	1720,
	1759,
	25,
	3,
	'Goal::evaluateCompletion line: 25');
INSERT INTO ACT_SEL
	VALUES (1758,
	1760,
	1,
	'one',
	1761);
INSERT INTO ACT_SR
	VALUES (1758);
INSERT INTO ACT_LNK
	VALUES (1762,
	'''has open''',
	1758,
	507,
	0,
	2,
	502,
	25,
	47,
	25,
	59,
	25,
	63);
INSERT INTO ACT_SMT
	VALUES (1759,
	1720,
	1763,
	26,
	3,
	'Goal::evaluateCompletion line: 26');
INSERT INTO ACT_IF
	VALUES (1759,
	1764,
	1765,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1763,
	1720,
	0,
	29,
	3,
	'Goal::evaluateCompletion line: 29');
INSERT INTO E_ESS
	VALUES (1763,
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
	VALUES (1763);
INSERT INTO E_GSME
	VALUES (1763,
	1766);
INSERT INTO E_GEN
	VALUES (1763,
	1722);
INSERT INTO V_VAL
	VALUES (1761,
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
	1720);
INSERT INTO V_IRF
	VALUES (1761,
	1722);
INSERT INTO V_VAL
	VALUES (1767,
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
	1720);
INSERT INTO V_IRF
	VALUES (1767,
	1760);
INSERT INTO V_VAL
	VALUES (1768,
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
	1720);
INSERT INTO V_UNY
	VALUES (1768,
	1767,
	'empty');
INSERT INTO V_VAL
	VALUES (1765,
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
	1720);
INSERT INTO V_UNY
	VALUES (1765,
	1768,
	'not');
INSERT INTO V_VAR
	VALUES (1760,
	1720,
	'openAchievement',
	1,
	300);
INSERT INTO V_INT
	VALUES (1760,
	0,
	502);
INSERT INTO ACT_BLK
	VALUES (1764,
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
	1702,
	0);
INSERT INTO ACT_SMT
	VALUES (1769,
	1764,
	0,
	27,
	5,
	'Goal::evaluateCompletion line: 27');
INSERT INTO ACT_TFM
	VALUES (1769,
	649,
	1760,
	27,
	21,
	0,
	0);
INSERT INTO O_TFR
	VALUES (405,
	493,
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
    Goal::goalcreate( sequenceNumber: GoalSpecOrigin );
  end if;
end if;',
	1,
	'',
	1701);
INSERT INTO ACT_OPB
	VALUES (1770,
	405);
INSERT INTO ACT_ACT
	VALUES (1770,
	'class operation',
	0,
	1771,
	0,
	0,
	'Goal::nextGoal',
	0);
INSERT INTO ACT_BLK
	VALUES (1771,
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
	1770,
	0);
INSERT INTO ACT_SMT
	VALUES (1772,
	1771,
	1773,
	8,
	1,
	'Goal::nextGoal line: 8');
INSERT INTO ACT_FIO
	VALUES (1772,
	1774,
	1,
	'any',
	357,
	8,
	38);
INSERT INTO ACT_SMT
	VALUES (1773,
	1771,
	0,
	9,
	1,
	'Goal::nextGoal line: 9');
INSERT INTO ACT_IF
	VALUES (1773,
	1775,
	1776,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1777,
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
	1771);
INSERT INTO V_IRF
	VALUES (1777,
	1774);
INSERT INTO V_VAL
	VALUES (1778,
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
	1771);
INSERT INTO V_UNY
	VALUES (1778,
	1777,
	'empty');
INSERT INTO V_VAL
	VALUES (1776,
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
	1771);
INSERT INTO V_UNY
	VALUES (1776,
	1778,
	'not');
INSERT INTO V_VAR
	VALUES (1774,
	1771,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (1774,
	0,
	357);
INSERT INTO ACT_BLK
	VALUES (1775,
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
	1770,
	0);
INSERT INTO ACT_SMT
	VALUES (1779,
	1775,
	1780,
	10,
	3,
	'Goal::nextGoal line: 10');
INSERT INTO ACT_SEL
	VALUES (1779,
	1781,
	1,
	'one',
	1782);
INSERT INTO ACT_SR
	VALUES (1779);
INSERT INTO ACT_LNK
	VALUES (1783,
	'''is currently executing''',
	1779,
	497,
	0,
	2,
	493,
	10,
	39,
	10,
	44,
	10,
	48);
INSERT INTO ACT_SMT
	VALUES (1780,
	1775,
	0,
	11,
	3,
	'Goal::nextGoal line: 11');
INSERT INTO ACT_IF
	VALUES (1780,
	1784,
	1785,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1786,
	1775,
	0,
	13,
	3,
	'Goal::nextGoal line: 13');
INSERT INTO ACT_E
	VALUES (1786,
	1787,
	1780);
INSERT INTO V_VAL
	VALUES (1782,
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
	1775);
INSERT INTO V_IRF
	VALUES (1782,
	1774);
INSERT INTO V_VAL
	VALUES (1788,
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
	1775);
INSERT INTO V_IRF
	VALUES (1788,
	1781);
INSERT INTO V_VAL
	VALUES (1789,
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
	1775);
INSERT INTO V_UNY
	VALUES (1789,
	1788,
	'empty');
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
	295,
	1775);
INSERT INTO V_UNY
	VALUES (1785,
	1789,
	'not');
INSERT INTO V_VAR
	VALUES (1781,
	1775,
	'goal',
	1,
	300);
INSERT INTO V_INT
	VALUES (1781,
	0,
	493);
INSERT INTO ACT_BLK
	VALUES (1784,
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
	1770,
	0);
INSERT INTO ACT_SMT
	VALUES (1790,
	1784,
	0,
	12,
	5,
	'Goal::nextGoal line: 12');
INSERT INTO E_ESS
	VALUES (1790,
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
	VALUES (1790);
INSERT INTO E_GSME
	VALUES (1790,
	1766);
INSERT INTO E_GEN
	VALUES (1790,
	1781);
INSERT INTO ACT_BLK
	VALUES (1787,
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
	1770,
	0);
INSERT INTO ACT_SMT
	VALUES (1791,
	1787,
	0,
	14,
	5,
	'Goal::nextGoal line: 14');
INSERT INTO ACT_TFM
	VALUES (1791,
	1534,
	0,
	14,
	11,
	14,
	5);
INSERT INTO V_VAL
	VALUES (1792,
	0,
	0,
	14,
	39,
	52,
	0,
	0,
	0,
	0,
	188,
	1787);
INSERT INTO V_SCV
	VALUES (1792,
	1793,
	188);
INSERT INTO V_PAR
	VALUES (1792,
	1791,
	0,
	'sequenceNumber',
	0,
	14,
	23);
INSERT INTO O_NBATTR
	VALUES (704,
	493);
INSERT INTO O_BATTR
	VALUES (704,
	493);
INSERT INTO O_ATTR
	VALUES (704,
	493,
	1601,
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
	703,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1601,
	493);
INSERT INTO O_BATTR
	VALUES (1601,
	493);
INSERT INTO O_ATTR
	VALUES (1601,
	493,
	1794,
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
	133,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1794,
	493);
INSERT INTO O_BATTR
	VALUES (1794,
	493);
INSERT INTO O_ATTR
	VALUES (1794,
	493,
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
	VALUES (1795,
	493);
INSERT INTO O_BATTR
	VALUES (1795,
	493);
INSERT INTO O_ATTR
	VALUES (1795,
	493,
	1567,
	'current_state',
	'',
	'',
	'current_state',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1567,
	493);
INSERT INTO O_BATTR
	VALUES (1567,
	493);
INSERT INTO O_ATTR
	VALUES (1567,
	493,
	704,
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
	493);
INSERT INTO O_ID
	VALUES (1,
	493);
INSERT INTO O_ID
	VALUES (2,
	493);
INSERT INTO SM_ISM
	VALUES (1796,
	493);
INSERT INTO SM_SM
	VALUES (1796,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (1796);
INSERT INTO SM_LEVT
	VALUES (1766,
	1796,
	0);
INSERT INTO SM_SEVT
	VALUES (1766,
	1796,
	0);
INSERT INTO SM_EVT
	VALUES (1766,
	1796,
	0,
	1,
	'Completed',
	0,
	'',
	'Goal1',
	'Indicates that execution of this goal has been completed.  ');
INSERT INTO SM_LEVT
	VALUES (1418,
	1796,
	0);
INSERT INTO SM_SEVT
	VALUES (1418,
	1796,
	0);
INSERT INTO SM_EVT
	VALUES (1418,
	1796,
	0,
	2,
	'Evaluate',
	0,
	'',
	'Goal2',
	'Indicates that this goal should be evaluated for completeness and achievement.');
INSERT INTO SM_LEVT
	VALUES (1442,
	1796,
	0);
INSERT INTO SM_SEVT
	VALUES (1442,
	1796,
	0);
INSERT INTO SM_EVT
	VALUES (1442,
	1796,
	0,
	3,
	'Pause',
	0,
	'',
	'Goal3',
	'');
INSERT INTO SM_STATE
	VALUES (1797,
	1796,
	0,
	'Executing',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (1797,
	1766,
	1796,
	0);
INSERT INTO SM_SEME
	VALUES (1797,
	1418,
	1796,
	0);
INSERT INTO SM_SEME
	VALUES (1797,
	1442,
	1796,
	0);
INSERT INTO SM_MOAH
	VALUES (1798,
	1796,
	1797);
INSERT INTO SM_AH
	VALUES (1798,
	1796);
INSERT INTO SM_ACT
	VALUES (1798,
	1796,
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
	VALUES (1799,
	1796,
	1798);
INSERT INTO ACT_ACT
	VALUES (1799,
	'state',
	0,
	1800,
	0,
	0,
	'Goal::Executing',
	0);
INSERT INTO ACT_BLK
	VALUES (1800,
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
	1799,
	0);
INSERT INTO ACT_SMT
	VALUES (1801,
	1800,
	1802,
	2,
	1,
	'Goal::Executing line: 2');
INSERT INTO ACT_AI
	VALUES (1801,
	1803,
	1804,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1802,
	1800,
	1805,
	12,
	1,
	'Goal::Executing line: 12');
INSERT INTO ACT_IF
	VALUES (1802,
	1806,
	1807,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1808,
	1800,
	0,
	19,
	1,
	'Goal::Executing line: 19');
INSERT INTO ACT_EL
	VALUES (1808,
	1809,
	1810,
	1802);
INSERT INTO ACT_SMT
	VALUES (1805,
	1800,
	1811,
	26,
	1,
	'Goal::Executing line: 26');
INSERT INTO ACT_AI
	VALUES (1805,
	1812,
	1813,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1811,
	1800,
	0,
	30,
	1,
	'Goal::Executing line: 30');
INSERT INTO ACT_TFM
	VALUES (1811,
	1701,
	1814,
	30,
	6,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1804,
	1,
	1,
	2,
	1,
	11,
	0,
	0,
	0,
	0,
	703,
	1800);
INSERT INTO V_TVL
	VALUES (1804,
	1815);
INSERT INTO V_VAL
	VALUES (1803,
	0,
	0,
	2,
	20,
	-1,
	0,
	0,
	0,
	0,
	703,
	1800);
INSERT INTO V_TRV
	VALUES (1803,
	1614,
	1814,
	1,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1816,
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
	1800);
INSERT INTO V_IRF
	VALUES (1816,
	1814);
INSERT INTO V_VAL
	VALUES (1817,
	0,
	0,
	12,
	12,
	22,
	0,
	0,
	0,
	0,
	703,
	1800);
INSERT INTO V_AVL
	VALUES (1817,
	1816,
	493,
	704);
INSERT INTO V_VAL
	VALUES (1818,
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
	1800);
INSERT INTO V_BIN
	VALUES (1818,
	1819,
	1817,
	'!=');
INSERT INTO V_VAL
	VALUES (1819,
	0,
	0,
	12,
	44,
	52,
	0,
	0,
	0,
	0,
	703,
	1800);
INSERT INTO V_LEN
	VALUES (1819,
	1659,
	12,
	27);
INSERT INTO V_VAL
	VALUES (1820,
	0,
	0,
	12,
	60,
	70,
	0,
	0,
	0,
	0,
	703,
	1800);
INSERT INTO V_TVL
	VALUES (1820,
	1815);
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
	295,
	1800);
INSERT INTO V_BIN
	VALUES (1821,
	1822,
	1820,
	'==');
INSERT INTO V_VAL
	VALUES (1822,
	0,
	0,
	12,
	92,
	100,
	0,
	0,
	0,
	0,
	703,
	1800);
INSERT INTO V_LEN
	VALUES (1822,
	1659,
	12,
	75);
INSERT INTO V_VAL
	VALUES (1807,
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
	1800);
INSERT INTO V_BIN
	VALUES (1807,
	1821,
	1818,
	'and');
INSERT INTO V_VAL
	VALUES (1823,
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
	1800);
INSERT INTO V_IRF
	VALUES (1823,
	1814);
INSERT INTO V_VAL
	VALUES (1824,
	0,
	0,
	19,
	14,
	24,
	0,
	0,
	0,
	0,
	703,
	1800);
INSERT INTO V_AVL
	VALUES (1824,
	1823,
	493,
	704);
INSERT INTO V_VAL
	VALUES (1825,
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
	1800);
INSERT INTO V_BIN
	VALUES (1825,
	1826,
	1824,
	'==');
INSERT INTO V_VAL
	VALUES (1826,
	0,
	0,
	19,
	46,
	54,
	0,
	0,
	0,
	0,
	703,
	1800);
INSERT INTO V_LEN
	VALUES (1826,
	1659,
	19,
	29);
INSERT INTO V_VAL
	VALUES (1827,
	0,
	0,
	19,
	62,
	72,
	0,
	0,
	0,
	0,
	703,
	1800);
INSERT INTO V_TVL
	VALUES (1827,
	1815);
INSERT INTO V_VAL
	VALUES (1828,
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
	1800);
INSERT INTO V_BIN
	VALUES (1828,
	1829,
	1827,
	'!=');
INSERT INTO V_VAL
	VALUES (1829,
	0,
	0,
	19,
	94,
	102,
	0,
	0,
	0,
	0,
	703,
	1800);
INSERT INTO V_LEN
	VALUES (1829,
	1659,
	19,
	77);
INSERT INTO V_VAL
	VALUES (1810,
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
	1800);
INSERT INTO V_BIN
	VALUES (1810,
	1828,
	1825,
	'and');
INSERT INTO V_VAL
	VALUES (1830,
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
	1800);
INSERT INTO V_IRF
	VALUES (1830,
	1814);
INSERT INTO V_VAL
	VALUES (1813,
	1,
	0,
	26,
	6,
	16,
	0,
	0,
	0,
	0,
	703,
	1800);
INSERT INTO V_AVL
	VALUES (1813,
	1830,
	493,
	704);
INSERT INTO V_VAL
	VALUES (1812,
	0,
	0,
	26,
	20,
	30,
	0,
	0,
	0,
	0,
	703,
	1800);
INSERT INTO V_TVL
	VALUES (1812,
	1815);
INSERT INTO V_VAR
	VALUES (1815,
	1800,
	'disposition',
	1,
	703);
INSERT INTO V_TRN
	VALUES (1815,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1814,
	1800,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1814,
	0,
	493);
INSERT INTO ACT_BLK
	VALUES (1806,
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
	1799,
	0);
INSERT INTO ACT_SMT
	VALUES (1831,
	1806,
	1832,
	14,
	3,
	'Goal::Executing line: 14');
INSERT INTO ACT_CR
	VALUES (1831,
	1833,
	1,
	502,
	14,
	41);
INSERT INTO ACT_SMT
	VALUES (1832,
	1806,
	1834,
	15,
	3,
	'Goal::Executing line: 15');
INSERT INTO ACT_REL
	VALUES (1832,
	1814,
	1833,
	'''has open''',
	507,
	15,
	37,
	15,
	41);
INSERT INTO ACT_SMT
	VALUES (1834,
	1806,
	1835,
	16,
	3,
	'Goal::Executing line: 16');
INSERT INTO ACT_SEL
	VALUES (1834,
	1836,
	1,
	'one',
	1837);
INSERT INTO ACT_SR
	VALUES (1834);
INSERT INTO ACT_LNK
	VALUES (1838,
	'''is currently executing within''',
	1834,
	497,
	1839,
	2,
	357,
	17,
	11,
	17,
	26,
	17,
	30);
INSERT INTO ACT_LNK
	VALUES (1839,
	'''is timed by''',
	0,
	481,
	0,
	2,
	371,
	17,
	64,
	17,
	77,
	17,
	80);
INSERT INTO ACT_SMT
	VALUES (1835,
	1806,
	0,
	18,
	3,
	'Goal::Executing line: 18');
INSERT INTO ACT_AI
	VALUES (1835,
	1840,
	1841,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1837,
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
	1806);
INSERT INTO V_IRF
	VALUES (1837,
	1814);
INSERT INTO V_VAL
	VALUES (1842,
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
	1806);
INSERT INTO V_IRF
	VALUES (1842,
	1833);
INSERT INTO V_VAL
	VALUES (1841,
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
	1806);
INSERT INTO V_AVL
	VALUES (1841,
	1842,
	502,
	671);
INSERT INTO V_VAL
	VALUES (1843,
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
	1806);
INSERT INTO V_IRF
	VALUES (1843,
	1836);
INSERT INTO V_VAL
	VALUES (1840,
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
	1806);
INSERT INTO V_AVL
	VALUES (1840,
	1843,
	371,
	670);
INSERT INTO V_VAR
	VALUES (1833,
	1806,
	'achievement',
	1,
	300);
INSERT INTO V_INT
	VALUES (1833,
	0,
	502);
INSERT INTO V_VAR
	VALUES (1836,
	1806,
	'workoutTimer',
	1,
	300);
INSERT INTO V_INT
	VALUES (1836,
	0,
	371);
INSERT INTO ACT_BLK
	VALUES (1809,
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
	1799,
	0);
INSERT INTO ACT_SMT
	VALUES (1844,
	1809,
	1845,
	21,
	3,
	'Goal::Executing line: 21');
INSERT INTO ACT_SEL
	VALUES (1844,
	1846,
	1,
	'one',
	1847);
INSERT INTO ACT_SR
	VALUES (1844);
INSERT INTO ACT_LNK
	VALUES (1848,
	'''has open''',
	1844,
	507,
	0,
	2,
	502,
	21,
	43,
	21,
	55,
	21,
	59);
INSERT INTO ACT_SMT
	VALUES (1845,
	1809,
	0,
	22,
	3,
	'Goal::Executing line: 22');
INSERT INTO ACT_TFM
	VALUES (1845,
	649,
	1846,
	22,
	15,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1847,
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
	1809);
INSERT INTO V_IRF
	VALUES (1847,
	1814);
INSERT INTO V_VAR
	VALUES (1846,
	1809,
	'achievement',
	1,
	300);
INSERT INTO V_INT
	VALUES (1846,
	0,
	502);
INSERT INTO SM_STATE
	VALUES (1849,
	1796,
	0,
	'Completed',
	2,
	0);
INSERT INTO SM_EIGN
	VALUES (1849,
	1766,
	1796,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1849,
	1766,
	1796,
	0);
INSERT INTO SM_EIGN
	VALUES (1849,
	1418,
	1796,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1849,
	1418,
	1796,
	0);
INSERT INTO SM_CH
	VALUES (1849,
	1442,
	1796,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1849,
	1442,
	1796,
	0);
INSERT INTO SM_MOAH
	VALUES (1850,
	1796,
	1849);
INSERT INTO SM_AH
	VALUES (1850,
	1796);
INSERT INTO SM_ACT
	VALUES (1850,
	1796,
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
	VALUES (1851,
	1796,
	1850);
INSERT INTO ACT_ACT
	VALUES (1851,
	'state',
	0,
	1852,
	0,
	0,
	'Goal::Completed',
	0);
INSERT INTO ACT_BLK
	VALUES (1852,
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
	1851,
	0);
INSERT INTO ACT_SMT
	VALUES (1853,
	1852,
	1854,
	5,
	1,
	'Goal::Completed line: 5');
INSERT INTO ACT_AI
	VALUES (1853,
	1855,
	1856,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1854,
	1852,
	1857,
	8,
	1,
	'Goal::Completed line: 8');
INSERT INTO ACT_SEL
	VALUES (1854,
	1858,
	1,
	'one',
	1859);
INSERT INTO ACT_SR
	VALUES (1854);
INSERT INTO ACT_LNK
	VALUES (1860,
	'''has open''',
	1854,
	507,
	0,
	2,
	502,
	8,
	45,
	8,
	57,
	8,
	61);
INSERT INTO ACT_SMT
	VALUES (1857,
	1852,
	1861,
	9,
	1,
	'Goal::Completed line: 9');
INSERT INTO ACT_IF
	VALUES (1857,
	1862,
	1863,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1861,
	1852,
	1864,
	14,
	1,
	'Goal::Completed line: 14');
INSERT INTO ACT_SEL
	VALUES (1861,
	1865,
	1,
	'one',
	1866);
INSERT INTO ACT_SR
	VALUES (1861);
INSERT INTO ACT_LNK
	VALUES (1867,
	'''is currently executing within''',
	1861,
	497,
	0,
	2,
	357,
	14,
	37,
	14,
	52,
	14,
	56);
INSERT INTO ACT_SMT
	VALUES (1864,
	1852,
	1868,
	15,
	1,
	'Goal::Completed line: 15');
INSERT INTO ACT_REL
	VALUES (1864,
	1869,
	1865,
	'''was executed within''',
	504,
	15,
	31,
	15,
	35);
INSERT INTO ACT_SMT
	VALUES (1868,
	1852,
	1870,
	18,
	1,
	'Goal::Completed line: 18');
INSERT INTO ACT_UNR
	VALUES (1868,
	1869,
	1865,
	'''is currently executing within''',
	497,
	18,
	35,
	18,
	39);
INSERT INTO ACT_SMT
	VALUES (1870,
	1852,
	1871,
	21,
	1,
	'Goal::Completed line: 21');
INSERT INTO ACT_SEL
	VALUES (1870,
	1872,
	1,
	'one',
	1873);
INSERT INTO ACT_SR
	VALUES (1870);
INSERT INTO ACT_LNK
	VALUES (1874,
	'''specified by''',
	1870,
	491,
	0,
	2,
	428,
	21,
	45,
	21,
	54,
	21,
	57);
INSERT INTO ACT_SMT
	VALUES (1871,
	1852,
	1875,
	23,
	1,
	'Goal::Completed line: 23');
INSERT INTO ACT_SEL
	VALUES (1871,
	1876,
	1,
	'any',
	1877);
INSERT INTO ACT_SRW
	VALUES (1871,
	1878);
INSERT INTO ACT_LNK
	VALUES (1879,
	'''includes''',
	1871,
	447,
	0,
	3,
	428,
	23,
	45,
	23,
	54,
	23,
	58);
INSERT INTO ACT_SMT
	VALUES (1875,
	1852,
	0,
	26,
	1,
	'Goal::Completed line: 26');
INSERT INTO ACT_IF
	VALUES (1875,
	1880,
	1881,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1856,
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
	1852);
INSERT INTO V_TVL
	VALUES (1856,
	1882);
INSERT INTO V_VAL
	VALUES (1855,
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
	1852);
INSERT INTO V_BRV
	VALUES (1855,
	605,
	1,
	5,
	19);
INSERT INTO V_VAL
	VALUES (1883,
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
	1852);
INSERT INTO V_IRF
	VALUES (1883,
	1869);
INSERT INTO V_VAL
	VALUES (1884,
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
	1852);
INSERT INTO V_AVL
	VALUES (1884,
	1883,
	493,
	1567);
INSERT INTO V_PAR
	VALUES (1884,
	0,
	1855,
	'timer_inst_ref',
	0,
	5,
	38);
INSERT INTO V_VAL
	VALUES (1859,
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
	1852);
INSERT INTO V_IRF
	VALUES (1859,
	1869);
INSERT INTO V_VAL
	VALUES (1885,
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
	1852);
INSERT INTO V_IRF
	VALUES (1885,
	1858);
INSERT INTO V_VAL
	VALUES (1886,
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
	1852);
INSERT INTO V_UNY
	VALUES (1886,
	1885,
	'empty');
INSERT INTO V_VAL
	VALUES (1863,
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
	1852);
INSERT INTO V_UNY
	VALUES (1863,
	1886,
	'not');
INSERT INTO V_VAL
	VALUES (1866,
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
	1852);
INSERT INTO V_IRF
	VALUES (1866,
	1869);
INSERT INTO V_VAL
	VALUES (1873,
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
	1852);
INSERT INTO V_IRF
	VALUES (1873,
	1869);
INSERT INTO V_VAL
	VALUES (1877,
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
	1852);
INSERT INTO V_IRF
	VALUES (1877,
	1865);
INSERT INTO V_VAL
	VALUES (1887,
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
	1852);
INSERT INTO V_SLR
	VALUES (1887,
	0,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1888,
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
	1852);
INSERT INTO V_AVL
	VALUES (1888,
	1887,
	428,
	449);
INSERT INTO V_VAL
	VALUES (1878,
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
	1852);
INSERT INTO V_BIN
	VALUES (1878,
	1889,
	1888,
	'==');
INSERT INTO V_VAL
	VALUES (1890,
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
	1852);
INSERT INTO V_IRF
	VALUES (1890,
	1872);
INSERT INTO V_VAL
	VALUES (1891,
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
	1852);
INSERT INTO V_AVL
	VALUES (1891,
	1890,
	428,
	449);
INSERT INTO V_VAL
	VALUES (1889,
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
	1852);
INSERT INTO V_BIN
	VALUES (1889,
	1892,
	1891,
	'+');
INSERT INTO V_VAL
	VALUES (1892,
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
	1852);
INSERT INTO V_LIN
	VALUES (1892,
	'1');
INSERT INTO V_VAL
	VALUES (1893,
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
	1852);
INSERT INTO V_IRF
	VALUES (1893,
	1876);
INSERT INTO V_VAL
	VALUES (1894,
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
	1852);
INSERT INTO V_UNY
	VALUES (1894,
	1893,
	'empty');
INSERT INTO V_VAL
	VALUES (1881,
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
	1852);
INSERT INTO V_UNY
	VALUES (1881,
	1894,
	'not');
INSERT INTO V_VAR
	VALUES (1882,
	1852,
	'cancelSucceeded',
	1,
	295);
INSERT INTO V_TRN
	VALUES (1882,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1869,
	1852,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1869,
	0,
	493);
INSERT INTO V_VAR
	VALUES (1858,
	1852,
	'openAchievement',
	1,
	300);
INSERT INTO V_INT
	VALUES (1858,
	0,
	502);
INSERT INTO V_VAR
	VALUES (1865,
	1852,
	'session',
	1,
	300);
INSERT INTO V_INT
	VALUES (1865,
	0,
	357);
INSERT INTO V_VAR
	VALUES (1872,
	1852,
	'currentGoalSpec',
	1,
	300);
INSERT INTO V_INT
	VALUES (1872,
	0,
	428);
INSERT INTO V_VAR
	VALUES (1876,
	1852,
	'nextGoalSpec',
	1,
	300);
INSERT INTO V_INT
	VALUES (1876,
	0,
	428);
INSERT INTO ACT_BLK
	VALUES (1862,
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
	1851,
	0);
INSERT INTO ACT_SMT
	VALUES (1895,
	1862,
	0,
	10,
	3,
	'Goal::Completed line: 10');
INSERT INTO ACT_TFM
	VALUES (1895,
	649,
	1858,
	10,
	19,
	0,
	0);
INSERT INTO ACT_BLK
	VALUES (1880,
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
	1851,
	0);
INSERT INTO ACT_SMT
	VALUES (1896,
	1880,
	0,
	27,
	3,
	'Goal::Completed line: 27');
INSERT INTO ACT_TFM
	VALUES (1896,
	1534,
	0,
	27,
	9,
	27,
	3);
INSERT INTO V_VAL
	VALUES (1897,
	0,
	0,
	27,
	37,
	48,
	0,
	0,
	0,
	0,
	300,
	1880);
INSERT INTO V_IRF
	VALUES (1897,
	1876);
INSERT INTO V_VAL
	VALUES (1898,
	0,
	0,
	27,
	50,
	63,
	0,
	0,
	0,
	0,
	188,
	1880);
INSERT INTO V_AVL
	VALUES (1898,
	1897,
	428,
	449);
INSERT INTO V_PAR
	VALUES (1898,
	1896,
	0,
	'sequenceNumber',
	0,
	27,
	21);
INSERT INTO SM_STATE
	VALUES (1899,
	1796,
	0,
	'Paused',
	3,
	0);
INSERT INTO SM_SEME
	VALUES (1899,
	1766,
	1796,
	0);
INSERT INTO SM_SEME
	VALUES (1899,
	1418,
	1796,
	0);
INSERT INTO SM_CH
	VALUES (1899,
	1442,
	1796,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1899,
	1442,
	1796,
	0);
INSERT INTO SM_MOAH
	VALUES (1900,
	1796,
	1899);
INSERT INTO SM_AH
	VALUES (1900,
	1796);
INSERT INTO SM_ACT
	VALUES (1900,
	1796,
	1,
	'// Deactivate evaluation timer, ignoring the return code because this 
//   state model ignores any latent timer events.
cancelSucceeded = TIM::timer_cancel( timer_inst_ref: self.evaluationTimer );',
	'');
INSERT INTO ACT_SAB
	VALUES (1901,
	1796,
	1900);
INSERT INTO ACT_ACT
	VALUES (1901,
	'state',
	0,
	1902,
	0,
	0,
	'Goal::Paused',
	0);
INSERT INTO ACT_BLK
	VALUES (1902,
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
	1901,
	0);
INSERT INTO ACT_SMT
	VALUES (1903,
	1902,
	0,
	3,
	1,
	'Goal::Paused line: 3');
INSERT INTO ACT_AI
	VALUES (1903,
	1904,
	1905,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1905,
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
	1902);
INSERT INTO V_TVL
	VALUES (1905,
	1906);
INSERT INTO V_VAL
	VALUES (1904,
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
	1902);
INSERT INTO V_BRV
	VALUES (1904,
	605,
	1,
	3,
	19);
INSERT INTO V_VAL
	VALUES (1907,
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
	1902);
INSERT INTO V_IRF
	VALUES (1907,
	1908);
INSERT INTO V_VAL
	VALUES (1909,
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
	1902);
INSERT INTO V_AVL
	VALUES (1909,
	1907,
	493,
	1567);
INSERT INTO V_PAR
	VALUES (1909,
	0,
	1904,
	'timer_inst_ref',
	0,
	3,
	38);
INSERT INTO V_VAR
	VALUES (1906,
	1902,
	'cancelSucceeded',
	1,
	295);
INSERT INTO V_TRN
	VALUES (1906,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1908,
	1902,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1908,
	0,
	493);
INSERT INTO SM_NSTXN
	VALUES (1910,
	1796,
	1797,
	1766,
	0);
INSERT INTO SM_TAH
	VALUES (1911,
	1796,
	1910);
INSERT INTO SM_AH
	VALUES (1911,
	1796);
INSERT INTO SM_ACT
	VALUES (1911,
	1796,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1912,
	1796,
	1911);
INSERT INTO ACT_ACT
	VALUES (1912,
	'transition',
	0,
	1913,
	0,
	0,
	'Goal1: Completed',
	0);
INSERT INTO ACT_BLK
	VALUES (1913,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1912,
	0);
INSERT INTO SM_TXN
	VALUES (1910,
	1796,
	1849,
	0);
INSERT INTO SM_NSTXN
	VALUES (1914,
	1796,
	1797,
	1418,
	0);
INSERT INTO SM_TAH
	VALUES (1915,
	1796,
	1914);
INSERT INTO SM_AH
	VALUES (1915,
	1796);
INSERT INTO SM_ACT
	VALUES (1915,
	1796,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1916,
	1796,
	1915);
INSERT INTO ACT_ACT
	VALUES (1916,
	'transition',
	0,
	1917,
	0,
	0,
	'Goal2: Evaluate',
	0);
INSERT INTO ACT_BLK
	VALUES (1917,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1916,
	0);
INSERT INTO SM_TXN
	VALUES (1914,
	1796,
	1797,
	0);
INSERT INTO SM_NSTXN
	VALUES (1918,
	1796,
	1797,
	1442,
	0);
INSERT INTO SM_TAH
	VALUES (1919,
	1796,
	1918);
INSERT INTO SM_AH
	VALUES (1919,
	1796);
INSERT INTO SM_ACT
	VALUES (1919,
	1796,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1920,
	1796,
	1919);
INSERT INTO ACT_ACT
	VALUES (1920,
	'transition',
	0,
	1921,
	0,
	0,
	'Goal3: Pause',
	0);
INSERT INTO ACT_BLK
	VALUES (1921,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1920,
	0);
INSERT INTO SM_TXN
	VALUES (1918,
	1796,
	1899,
	0);
INSERT INTO SM_NSTXN
	VALUES (1922,
	1796,
	1899,
	1418,
	0);
INSERT INTO SM_TAH
	VALUES (1923,
	1796,
	1922);
INSERT INTO SM_AH
	VALUES (1923,
	1796);
INSERT INTO SM_ACT
	VALUES (1923,
	1796,
	1,
	'// Start a timer that periodically causes evaluation of goal achievement.
create event instance evaluateEvent of Goal2:Evaluate to self;
self.evaluationTimer = TIM::timer_start_recurring( event_inst: evaluateEvent, microseconds: evaluationPeriod );',
	'');
INSERT INTO ACT_TAB
	VALUES (1924,
	1796,
	1923);
INSERT INTO ACT_ACT
	VALUES (1924,
	'transition',
	0,
	1925,
	0,
	0,
	'Goal2: Evaluate',
	0);
INSERT INTO ACT_BLK
	VALUES (1925,
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
	1924,
	0);
INSERT INTO ACT_SMT
	VALUES (1926,
	1925,
	1927,
	2,
	1,
	'Goal2: Evaluate line: 2');
INSERT INTO E_ESS
	VALUES (1926,
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
	VALUES (1926,
	1,
	1928);
INSERT INTO E_CSME
	VALUES (1926,
	1418);
INSERT INTO E_CEI
	VALUES (1926,
	1929);
INSERT INTO ACT_SMT
	VALUES (1927,
	1925,
	0,
	3,
	1,
	'Goal2: Evaluate line: 3');
INSERT INTO ACT_AI
	VALUES (1927,
	1930,
	1931,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1932,
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
	1925);
INSERT INTO V_IRF
	VALUES (1932,
	1929);
INSERT INTO V_VAL
	VALUES (1931,
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
	1925);
INSERT INTO V_AVL
	VALUES (1931,
	1932,
	493,
	1567);
INSERT INTO V_VAL
	VALUES (1930,
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
	1925);
INSERT INTO V_BRV
	VALUES (1930,
	586,
	1,
	3,
	24);
INSERT INTO V_VAL
	VALUES (1933,
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
	1925);
INSERT INTO V_TVL
	VALUES (1933,
	1928);
INSERT INTO V_PAR
	VALUES (1933,
	0,
	1930,
	'event_inst',
	1934,
	3,
	52);
INSERT INTO V_VAL
	VALUES (1934,
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
	1925);
INSERT INTO V_SCV
	VALUES (1934,
	1570,
	188);
INSERT INTO V_PAR
	VALUES (1934,
	0,
	1930,
	'microseconds',
	0,
	3,
	79);
INSERT INTO V_VAR
	VALUES (1928,
	1925,
	'evaluateEvent',
	1,
	302);
INSERT INTO V_TRN
	VALUES (1928,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1929,
	1925,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (1929,
	0,
	493);
INSERT INTO SM_TXN
	VALUES (1922,
	1796,
	1797,
	0);
INSERT INTO SM_NSTXN
	VALUES (1935,
	1796,
	1899,
	1766,
	0);
INSERT INTO SM_TAH
	VALUES (1936,
	1796,
	1935);
INSERT INTO SM_AH
	VALUES (1936,
	1796);
INSERT INTO SM_ACT
	VALUES (1936,
	1796,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1937,
	1796,
	1936);
INSERT INTO ACT_ACT
	VALUES (1937,
	'transition',
	0,
	1938,
	0,
	0,
	'Goal1: Completed',
	0);
INSERT INTO ACT_BLK
	VALUES (1938,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1937,
	0);
INSERT INTO SM_TXN
	VALUES (1935,
	1796,
	1849,
	0);
INSERT INTO PE_PE
	VALUES (428,
	1,
	463,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (428,
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
	VALUES (451,
	428);
INSERT INTO O_BATTR
	VALUES (451,
	428);
INSERT INTO O_ATTR
	VALUES (451,
	428,
	449,
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
	VALUES (453,
	428);
INSERT INTO O_BATTR
	VALUES (453,
	428);
INSERT INTO O_ATTR
	VALUES (453,
	428,
	451,
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
	VALUES (455,
	428);
INSERT INTO O_BATTR
	VALUES (455,
	428);
INSERT INTO O_ATTR
	VALUES (455,
	428,
	453,
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
	VALUES (457,
	428);
INSERT INTO O_BATTR
	VALUES (457,
	428);
INSERT INTO O_ATTR
	VALUES (457,
	428,
	455,
	'criteriaType',
	'See data type description.',
	'',
	'criteriaType',
	0,
	204,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (459,
	428);
INSERT INTO O_BATTR
	VALUES (459,
	428);
INSERT INTO O_ATTR
	VALUES (459,
	428,
	457,
	'spanType',
	'See data type description.',
	'',
	'spanType',
	0,
	207,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (449,
	428);
INSERT INTO O_BATTR
	VALUES (449,
	428);
INSERT INTO O_ATTR
	VALUES (449,
	428,
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
	428);
INSERT INTO O_OIDA
	VALUES (449,
	428,
	0,
	'sequenceNumber');
INSERT INTO O_ID
	VALUES (1,
	428);
INSERT INTO O_ID
	VALUES (2,
	428);
INSERT INTO PE_PE
	VALUES (21,
	1,
	310,
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
	310,
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
	310,
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
	310,
	0,
	22);
INSERT INTO C_SF
	VALUES (36,
	210,
	35,
	'',
	'Tracking::Tracking::Tracking -o)- GPSWatch::Tracking::Tracking');
INSERT INTO PE_PE
	VALUES (204,
	1,
	310,
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
	VALUES (631,
	'HeartRate',
	'A heart-rate criteria is specified as a range of heart rates between
minimum and maximum values, in beats per minute.',
	204,
	0);
INSERT INTO S_ENUM
	VALUES (623,
	'Pace',
	'A pace criteria is specified as a range of paces between
miniumum and maximum values specified in minutes per kilometer.',
	204,
	631);
INSERT INTO PE_PE
	VALUES (703,
	1,
	310,
	0,
	3);
INSERT INTO S_DT
	VALUES (703,
	0,
	'GoalDisposition',
	'Disposition of a currently executing goal.',
	'');
INSERT INTO S_EDT
	VALUES (703);
INSERT INTO S_ENUM
	VALUES (1659,
	'Achieving',
	'The goal is currently being achieved.',
	703,
	0);
INSERT INTO S_ENUM
	VALUES (706,
	'Increase',
	'The value associated with the goal is presently below the minimum 
specified in the criteria for the goal, so the user must increase
that value to achieve the goal.',
	703,
	1659);
INSERT INTO S_ENUM
	VALUES (710,
	'Decrease',
	'The value associated with the goal is presently above the maximum 
specified in the criteria for the goal, so the user must decrease
that value to achieve the goal.',
	703,
	706);
INSERT INTO PE_PE
	VALUES (207,
	1,
	310,
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
	VALUES (625,
	'Distance',
	'A distance-based span is specified in meters.',
	207,
	0);
INSERT INTO S_ENUM
	VALUES (633,
	'Time',
	'A time-based span is specified in seconds.',
	207,
	625);
INSERT INTO PE_PE
	VALUES (1939,
	1,
	310,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (1939,
	'GoalAchievement',
	'evaluationPeriod is the period, expressed in microseconds, at which goal achievement is evaluated.');
INSERT INTO CNST_SYC
	VALUES (1570,
	'evaluationPeriod',
	'',
	188,
	1939,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (1570,
	188);
INSERT INTO CNST_LSC
	VALUES (1570,
	188,
	'3000000');
INSERT INTO PE_PE
	VALUES (1940,
	1,
	310,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (1940,
	'GoalSpec',
	'GoalSpecOrigin indicates the sequence number of the first goal.');
INSERT INTO CNST_SYC
	VALUES (1793,
	'GoalSpecOrigin',
	'',
	188,
	1940,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (1793,
	188);
INSERT INTO CNST_LSC
	VALUES (1793,
	188,
	'1');
INSERT INTO PE_PE
	VALUES (1941,
	1,
	310,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (1941,
	'WorkoutTimer',
	'timerPeriod specifies, in seconds, the period for the workout timer.');
INSERT INTO CNST_SYC
	VALUES (1413,
	'timerPeriod',
	'',
	188,
	1941,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (1413,
	188);
INSERT INTO CNST_LSC
	VALUES (1413,
	188,
	'1');
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
	'::setTime(time:param.time);',
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
	1945,
	0);
INSERT INTO ACT_SMT
	VALUES (1947,
	1946,
	0,
	1,
	1,
	'UI::UI::setTime line: 1');
INSERT INTO ACT_FNC
	VALUES (1947,
	1948,
	1,
	3);
INSERT INTO V_VAL
	VALUES (1949,
	0,
	0,
	1,
	22,
	25,
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
	11);
INSERT INTO SPR_PEP
	VALUES (1951,
	96,
	42);
INSERT INTO SPR_PO
	VALUES (1951,
	'setData',
	'',
	'::setData( value:param.value, unit:param.unit );
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
	1952,
	0);
INSERT INTO ACT_SMT
	VALUES (1954,
	1953,
	0,
	1,
	1,
	'UI::UI::setData line: 1');
INSERT INTO ACT_FNC
	VALUES (1954,
	1955,
	1,
	3);
INSERT INTO V_VAL
	VALUES (1956,
	0,
	0,
	1,
	24,
	28,
	0,
	0,
	0,
	0,
	133,
	1953);
INSERT INTO V_PVL
	VALUES (1956,
	0,
	0,
	0,
	1957);
INSERT INTO V_PAR
	VALUES (1956,
	1954,
	0,
	'value',
	1958,
	1,
	12);
INSERT INTO V_VAL
	VALUES (1958,
	0,
	0,
	1,
	42,
	45,
	0,
	0,
	0,
	0,
	172,
	1953);
INSERT INTO V_PVL
	VALUES (1958,
	0,
	0,
	0,
	1959);
INSERT INTO V_PAR
	VALUES (1958,
	1954,
	0,
	'unit',
	0,
	1,
	31);
INSERT INTO SPR_PEP
	VALUES (1960,
	100,
	42);
INSERT INTO SPR_PO
	VALUES (1960,
	'startTest',
	'',
	'generate TestCase2:tcstart(iterations: 2) to TestCase creator;',
	1);
INSERT INTO ACT_POB
	VALUES (1961,
	1960);
INSERT INTO ACT_ACT
	VALUES (1961,
	'interface operation',
	0,
	1962,
	0,
	0,
	'UI::UI::startTest',
	0);
INSERT INTO ACT_BLK
	VALUES (1962,
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
	1961,
	0);
INSERT INTO ACT_SMT
	VALUES (1963,
	1962,
	0,
	1,
	1,
	'UI::UI::startTest line: 1');
INSERT INTO E_ESS
	VALUES (1963,
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
	VALUES (1964,
	1963,
	0,
	'iterations',
	0,
	1,
	28);
INSERT INTO E_GES
	VALUES (1963);
INSERT INTO E_GSME
	VALUES (1963,
	1965);
INSERT INTO E_GEC
	VALUES (1963);
INSERT INTO V_VAL
	VALUES (1964,
	0,
	0,
	1,
	40,
	40,
	0,
	0,
	0,
	0,
	188,
	1962);
INSERT INTO V_LIN
	VALUES (1964,
	'2');
INSERT INTO SPR_PEP
	VALUES (1966,
	104,
	42);
INSERT INTO SPR_PO
	VALUES (1966,
	'setIndicator',
	'',
	'::setIndicator( indicator:param.indicator );
',
	1);
INSERT INTO ACT_POB
	VALUES (1967,
	1966);
INSERT INTO ACT_ACT
	VALUES (1967,
	'interface operation',
	0,
	1968,
	0,
	0,
	'UI::UI::setIndicator',
	0);
INSERT INTO ACT_BLK
	VALUES (1968,
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
	1967,
	0);
INSERT INTO ACT_SMT
	VALUES (1969,
	1968,
	0,
	1,
	1,
	'UI::UI::setIndicator line: 1');
INSERT INTO ACT_FNC
	VALUES (1969,
	1970,
	1,
	3);
INSERT INTO V_VAL
	VALUES (1971,
	0,
	0,
	1,
	33,
	41,
	0,
	0,
	0,
	0,
	180,
	1968);
INSERT INTO V_PVL
	VALUES (1971,
	0,
	0,
	0,
	1972);
INSERT INTO V_PAR
	VALUES (1971,
	1969,
	0,
	'indicator',
	0,
	1,
	17);
INSERT INTO SPR_PEP
	VALUES (1973,
	108,
	42);
INSERT INTO SPR_PO
	VALUES (1973,
	'newGoalSpec',
	'',
	'::newGoalSpec( sequenceNumber:param.sequenceNumber, minimum:param.minimum, maximum:param.maximum, span:param.span, criteriaType:param.criteriaType, spanType:param.spanType );',
	1);
INSERT INTO ACT_POB
	VALUES (1974,
	1973);
INSERT INTO ACT_ACT
	VALUES (1974,
	'interface operation',
	0,
	1975,
	0,
	0,
	'UI::UI::newGoalSpec',
	0);
INSERT INTO ACT_BLK
	VALUES (1975,
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
	1974,
	0);
INSERT INTO ACT_SMT
	VALUES (1976,
	1975,
	0,
	1,
	1,
	'UI::UI::newGoalSpec line: 1');
INSERT INTO ACT_FNC
	VALUES (1976,
	1977,
	1,
	3);
INSERT INTO V_VAL
	VALUES (1978,
	0,
	0,
	1,
	37,
	50,
	0,
	0,
	0,
	0,
	188,
	1975);
INSERT INTO V_PVL
	VALUES (1978,
	0,
	0,
	0,
	1979);
INSERT INTO V_PAR
	VALUES (1978,
	1976,
	0,
	'sequenceNumber',
	1980,
	1,
	16);
INSERT INTO V_VAL
	VALUES (1980,
	0,
	0,
	1,
	67,
	73,
	0,
	0,
	0,
	0,
	133,
	1975);
INSERT INTO V_PVL
	VALUES (1980,
	0,
	0,
	0,
	1981);
INSERT INTO V_PAR
	VALUES (1980,
	1976,
	0,
	'minimum',
	1982,
	1,
	53);
INSERT INTO V_VAL
	VALUES (1982,
	0,
	0,
	1,
	90,
	96,
	0,
	0,
	0,
	0,
	133,
	1975);
INSERT INTO V_PVL
	VALUES (1982,
	0,
	0,
	0,
	1983);
INSERT INTO V_PAR
	VALUES (1982,
	1976,
	0,
	'maximum',
	1984,
	1,
	76);
INSERT INTO V_VAL
	VALUES (1984,
	0,
	0,
	1,
	110,
	113,
	0,
	0,
	0,
	0,
	133,
	1975);
INSERT INTO V_PVL
	VALUES (1984,
	0,
	0,
	0,
	1985);
INSERT INTO V_PAR
	VALUES (1984,
	1976,
	0,
	'span',
	1986,
	1,
	99);
INSERT INTO V_VAL
	VALUES (1986,
	0,
	0,
	1,
	135,
	146,
	0,
	0,
	0,
	0,
	204,
	1975);
INSERT INTO V_PVL
	VALUES (1986,
	0,
	0,
	0,
	1987);
INSERT INTO V_PAR
	VALUES (1986,
	1976,
	0,
	'criteriaType',
	1988,
	1,
	116);
INSERT INTO V_VAL
	VALUES (1988,
	0,
	0,
	1,
	164,
	171,
	0,
	0,
	0,
	0,
	207,
	1975);
INSERT INTO V_PVL
	VALUES (1988,
	0,
	0,
	0,
	1989);
INSERT INTO V_PAR
	VALUES (1988,
	1976,
	0,
	'spanType',
	0,
	1,
	149);
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
	VALUES (1990,
	253,
	47);
INSERT INTO SPR_RO
	VALUES (1990,
	'setTargetPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (1991,
	1990);
INSERT INTO ACT_ACT
	VALUES (1991,
	'interface operation',
	0,
	1992,
	0,
	0,
	'Tracking::UITracking::setTargetPressed',
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
INSERT INTO SPR_REP
	VALUES (1993,
	258,
	47);
INSERT INTO SPR_RO
	VALUES (1993,
	'startStopPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (1994,
	1993);
INSERT INTO ACT_ACT
	VALUES (1994,
	'interface operation',
	0,
	1995,
	0,
	0,
	'Tracking::UITracking::startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1995,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1994,
	0);
INSERT INTO SPR_REP
	VALUES (1996,
	263,
	47);
INSERT INTO SPR_RO
	VALUES (1996,
	'lapResetPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (1997,
	1996);
INSERT INTO ACT_ACT
	VALUES (1997,
	'interface operation',
	0,
	1998,
	0,
	0,
	'Tracking::UITracking::lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1998,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1997,
	0);
INSERT INTO SPR_REP
	VALUES (1999,
	268,
	47);
INSERT INTO SPR_RO
	VALUES (1999,
	'modePressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2000,
	1999);
INSERT INTO ACT_ACT
	VALUES (2000,
	'interface operation',
	0,
	2001,
	0,
	0,
	'Tracking::UITracking::modePressed',
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
INSERT INTO SPR_REP
	VALUES (2002,
	273,
	47);
INSERT INTO SPR_RO
	VALUES (2002,
	'newGoalSpec',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2003,
	2002);
INSERT INTO ACT_ACT
	VALUES (2003,
	'interface operation',
	0,
	2004,
	0,
	0,
	'Tracking::UITracking::newGoalSpec',
	0);
INSERT INTO ACT_BLK
	VALUES (2004,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2003,
	0);
INSERT INTO SPR_REP
	VALUES (2005,
	290,
	47);
INSERT INTO SPR_RO
	VALUES (2005,
	'lightPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2006,
	2005);
INSERT INTO ACT_ACT
	VALUES (2006,
	'interface operation',
	0,
	2007,
	0,
	0,
	'Tracking::UITracking::lightPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2007,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2006,
	0);
INSERT INTO PE_PE
	VALUES (2008,
	1,
	0,
	38,
	7);
INSERT INTO EP_PKG
	VALUES (2008,
	0,
	1942,
	'UI',
	'',
	0);
INSERT INTO PE_PE
	VALUES (2009,
	1,
	2008,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (2009,
	'TestCase',
	2,
	'TestCase',
	'Represents a very simple automated test case.',
	0);
INSERT INTO O_TFR
	VALUES (2010,
	2009,
	'execute',
	'',
	294,
	0,
	'generate TestCase2:tcstart(iterations: 2) to TestCase creator;',
	1,
	'',
	0);
INSERT INTO ACT_OPB
	VALUES (2011,
	2010);
INSERT INTO ACT_ACT
	VALUES (2011,
	'class operation',
	0,
	2012,
	0,
	0,
	'TestCase::execute',
	0);
INSERT INTO ACT_BLK
	VALUES (2012,
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
	2011,
	0);
INSERT INTO ACT_SMT
	VALUES (2013,
	2012,
	0,
	1,
	1,
	'TestCase::execute line: 1');
INSERT INTO E_ESS
	VALUES (2013,
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
	VALUES (2014,
	2013,
	0,
	'iterations',
	0,
	1,
	28);
INSERT INTO E_GES
	VALUES (2013);
INSERT INTO E_GSME
	VALUES (2013,
	1965);
INSERT INTO E_GEC
	VALUES (2013);
INSERT INTO V_VAL
	VALUES (2014,
	0,
	0,
	1,
	40,
	40,
	0,
	0,
	0,
	0,
	188,
	2012);
INSERT INTO V_LIN
	VALUES (2014,
	'2');
INSERT INTO O_NBATTR
	VALUES (2015,
	2009);
INSERT INTO O_BATTR
	VALUES (2015,
	2009);
INSERT INTO O_ATTR
	VALUES (2015,
	2009,
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
	VALUES (2016,
	2009);
INSERT INTO O_BATTR
	VALUES (2016,
	2009);
INSERT INTO O_ATTR
	VALUES (2016,
	2009,
	2015,
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
	2009);
INSERT INTO O_ID
	VALUES (1,
	2009);
INSERT INTO O_ID
	VALUES (2,
	2009);
INSERT INTO SM_ISM
	VALUES (2017,
	2009);
INSERT INTO SM_SM
	VALUES (2017,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (2017);
INSERT INTO SM_EVTDI
	VALUES (2018,
	2017,
	'iterations',
	'',
	188,
	'',
	1965,
	0);
INSERT INTO SM_LEVT
	VALUES (2019,
	2017,
	0);
INSERT INTO SM_SEVT
	VALUES (2019,
	2017,
	0);
INSERT INTO SM_EVT
	VALUES (2019,
	2017,
	0,
	1,
	'tcdelay',
	0,
	'',
	'TestCase1',
	'');
INSERT INTO SM_LEVT
	VALUES (1965,
	2017,
	0);
INSERT INTO SM_SEVT
	VALUES (1965,
	2017,
	0);
INSERT INTO SM_EVT
	VALUES (1965,
	2017,
	0,
	2,
	'tcstart',
	0,
	'',
	'TestCase2',
	'');
INSERT INTO SM_LEVT
	VALUES (2020,
	2017,
	0);
INSERT INTO SM_SEVT
	VALUES (2020,
	2017,
	0);
INSERT INTO SM_EVT
	VALUES (2020,
	2017,
	0,
	3,
	'tcfinish',
	0,
	'',
	'TestCase3',
	'');
INSERT INTO SM_STATE
	VALUES (2021,
	2017,
	0,
	'pressStartStop',
	2,
	0);
INSERT INTO SM_SEME
	VALUES (2021,
	2019,
	2017,
	0);
INSERT INTO SM_CH
	VALUES (2021,
	1965,
	2017,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2021,
	1965,
	2017,
	0);
INSERT INTO SM_SEME
	VALUES (2021,
	2020,
	2017,
	0);
INSERT INTO SM_MOAH
	VALUES (2022,
	2017,
	2021);
INSERT INTO SM_AH
	VALUES (2022,
	2017);
INSERT INTO SM_ACT
	VALUES (2022,
	2017,
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
	VALUES (2023,
	2017,
	2022);
INSERT INTO ACT_ACT
	VALUES (2023,
	'state',
	0,
	2024,
	0,
	0,
	'TestCase::pressStartStop',
	0);
INSERT INTO ACT_BLK
	VALUES (2024,
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
	2023,
	0);
INSERT INTO ACT_SMT
	VALUES (2025,
	2024,
	0,
	1,
	1,
	'TestCase::pressStartStop line: 1');
INSERT INTO ACT_IF
	VALUES (2025,
	2026,
	2027,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2028,
	2024,
	0,
	6,
	1,
	'TestCase::pressStartStop line: 6');
INSERT INTO ACT_E
	VALUES (2028,
	2029,
	2025);
INSERT INTO V_VAL
	VALUES (2030,
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
	2024);
INSERT INTO V_IRF
	VALUES (2030,
	2031);
INSERT INTO V_VAL
	VALUES (2032,
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
	2024);
INSERT INTO V_AVL
	VALUES (2032,
	2030,
	2009,
	2016);
INSERT INTO V_VAL
	VALUES (2027,
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
	2024);
INSERT INTO V_BIN
	VALUES (2027,
	2033,
	2032,
	'>');
INSERT INTO V_VAL
	VALUES (2033,
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
	2024);
INSERT INTO V_LIN
	VALUES (2033,
	'0');
INSERT INTO V_VAR
	VALUES (2031,
	2024,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (2031,
	0,
	2009);
INSERT INTO ACT_BLK
	VALUES (2026,
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
	2023,
	0);
INSERT INTO ACT_SMT
	VALUES (2034,
	2026,
	2035,
	2,
	3,
	'TestCase::pressStartStop line: 2');
INSERT INTO ACT_AI
	VALUES (2034,
	2036,
	2037,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2035,
	2026,
	2038,
	3,
	3,
	'TestCase::pressStartStop line: 3');
INSERT INTO E_ESS
	VALUES (2035,
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
	VALUES (2035,
	1,
	2039);
INSERT INTO E_CSME
	VALUES (2035,
	2019);
INSERT INTO E_CEI
	VALUES (2035,
	2031);
INSERT INTO ACT_SMT
	VALUES (2038,
	2026,
	2040,
	4,
	3,
	'TestCase::pressStartStop line: 4');
INSERT INTO ACT_AI
	VALUES (2038,
	2041,
	2042,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2040,
	2026,
	0,
	5,
	3,
	'TestCase::pressStartStop line: 5');
INSERT INTO ACT_IOP
	VALUES (2040,
	5,
	18,
	5,
	8,
	0,
	1993,
	0);
INSERT INTO V_VAL
	VALUES (2043,
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
	2026);
INSERT INTO V_IRF
	VALUES (2043,
	2031);
INSERT INTO V_VAL
	VALUES (2037,
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
	2026);
INSERT INTO V_AVL
	VALUES (2037,
	2043,
	2009,
	2016);
INSERT INTO V_VAL
	VALUES (2044,
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
	2026);
INSERT INTO V_IRF
	VALUES (2044,
	2031);
INSERT INTO V_VAL
	VALUES (2045,
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
	2026);
INSERT INTO V_AVL
	VALUES (2045,
	2044,
	2009,
	2016);
INSERT INTO V_VAL
	VALUES (2036,
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
	2026);
INSERT INTO V_BIN
	VALUES (2036,
	2046,
	2045,
	'-');
INSERT INTO V_VAL
	VALUES (2046,
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
	2026);
INSERT INTO V_LIN
	VALUES (2046,
	'1');
INSERT INTO V_VAL
	VALUES (2042,
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
	2026);
INSERT INTO V_TVL
	VALUES (2042,
	2047);
INSERT INTO V_VAL
	VALUES (2041,
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
	2026);
INSERT INTO V_BRV
	VALUES (2041,
	2048,
	1,
	4,
	12);
INSERT INTO V_VAL
	VALUES (2049,
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
	2026);
INSERT INTO V_TVL
	VALUES (2049,
	2039);
INSERT INTO V_PAR
	VALUES (2049,
	0,
	2041,
	'event_inst',
	2050,
	4,
	29);
INSERT INTO V_VAL
	VALUES (2050,
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
	2026);
INSERT INTO V_LIN
	VALUES (2050,
	'4000000');
INSERT INTO V_PAR
	VALUES (2050,
	0,
	2041,
	'microseconds',
	0,
	4,
	46);
INSERT INTO V_VAR
	VALUES (2039,
	2026,
	'evt',
	1,
	302);
INSERT INTO V_TRN
	VALUES (2039,
	0,
	'');
INSERT INTO V_VAR
	VALUES (2047,
	2026,
	'handle',
	1,
	307);
INSERT INTO V_TRN
	VALUES (2047,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (2029,
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
	2023,
	0);
INSERT INTO ACT_SMT
	VALUES (2051,
	2029,
	2052,
	7,
	3,
	'TestCase::pressStartStop line: 7');
INSERT INTO E_ESS
	VALUES (2051,
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
	VALUES (2051);
INSERT INTO E_GSME
	VALUES (2051,
	2020);
INSERT INTO E_GEN
	VALUES (2051,
	2031);
INSERT INTO ACT_SMT
	VALUES (2052,
	2029,
	0,
	8,
	3,
	'TestCase::pressStartStop line: 8');
INSERT INTO ACT_IOP
	VALUES (2052,
	8,
	18,
	8,
	8,
	0,
	1996,
	0);
INSERT INTO SM_STATE
	VALUES (2053,
	2017,
	0,
	'testCaseFinished',
	3,
	1);
INSERT INTO SM_CH
	VALUES (2053,
	2019,
	2017,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2053,
	2019,
	2017,
	0);
INSERT INTO SM_CH
	VALUES (2053,
	1965,
	2017,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2053,
	1965,
	2017,
	0);
INSERT INTO SM_CH
	VALUES (2053,
	2020,
	2017,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2053,
	2020,
	2017,
	0);
INSERT INTO SM_MOAH
	VALUES (2054,
	2017,
	2053);
INSERT INTO SM_AH
	VALUES (2054,
	2017);
INSERT INTO SM_ACT
	VALUES (2054,
	2017,
	1,
	'LOG::LogInfo(message: "End of test case"); ',
	'');
INSERT INTO ACT_SAB
	VALUES (2055,
	2017,
	2054);
INSERT INTO ACT_ACT
	VALUES (2055,
	'state',
	0,
	2056,
	0,
	0,
	'TestCase::testCaseFinished',
	0);
INSERT INTO ACT_BLK
	VALUES (2056,
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
	2055,
	0);
INSERT INTO ACT_SMT
	VALUES (2057,
	2056,
	0,
	1,
	1,
	'TestCase::testCaseFinished line: 1');
INSERT INTO ACT_BRG
	VALUES (2057,
	2058,
	1,
	6,
	1,
	1);
INSERT INTO V_VAL
	VALUES (2059,
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
	2056);
INSERT INTO V_LST
	VALUES (2059,
	'End of test case');
INSERT INTO V_PAR
	VALUES (2059,
	2057,
	0,
	'message',
	0,
	1,
	14);
INSERT INTO SM_NSTXN
	VALUES (2060,
	2017,
	2021,
	2019,
	0);
INSERT INTO SM_TAH
	VALUES (2061,
	2017,
	2060);
INSERT INTO SM_AH
	VALUES (2061,
	2017);
INSERT INTO SM_ACT
	VALUES (2061,
	2017,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2062,
	2017,
	2061);
INSERT INTO ACT_ACT
	VALUES (2062,
	'transition',
	0,
	2063,
	0,
	0,
	'TestCase1: tcdelay',
	0);
INSERT INTO ACT_BLK
	VALUES (2063,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2062,
	0);
INSERT INTO SM_TXN
	VALUES (2060,
	2017,
	2021,
	0);
INSERT INTO SM_CRTXN
	VALUES (2064,
	2017,
	1965,
	0);
INSERT INTO SM_TAH
	VALUES (2065,
	2017,
	2064);
INSERT INTO SM_AH
	VALUES (2065,
	2017);
INSERT INTO SM_ACT
	VALUES (2065,
	2017,
	1,
	'LOG::LogInfo(message: "Start of test case"); 
self.iterations = rcvd_evt.iterations * 2;',
	'');
INSERT INTO ACT_TAB
	VALUES (2066,
	2017,
	2065);
INSERT INTO ACT_ACT
	VALUES (2066,
	'transition',
	0,
	2067,
	0,
	0,
	'TestCase2: tcstart(iterations)',
	0);
INSERT INTO ACT_BLK
	VALUES (2067,
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
	2066,
	0);
INSERT INTO ACT_SMT
	VALUES (2068,
	2067,
	2069,
	1,
	1,
	'TestCase2: tcstart(iterations) line: 1');
INSERT INTO ACT_BRG
	VALUES (2068,
	2058,
	1,
	6,
	1,
	1);
INSERT INTO ACT_SMT
	VALUES (2069,
	2067,
	0,
	2,
	1,
	'TestCase2: tcstart(iterations) line: 2');
INSERT INTO ACT_AI
	VALUES (2069,
	2070,
	2071,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2072,
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
	2067);
INSERT INTO V_LST
	VALUES (2072,
	'Start of test case');
INSERT INTO V_PAR
	VALUES (2072,
	2068,
	0,
	'message',
	0,
	1,
	14);
INSERT INTO V_VAL
	VALUES (2073,
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
	2067);
INSERT INTO V_IRF
	VALUES (2073,
	2074);
INSERT INTO V_VAL
	VALUES (2071,
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
	2067);
INSERT INTO V_AVL
	VALUES (2071,
	2073,
	2009,
	2016);
INSERT INTO V_VAL
	VALUES (2075,
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
	2067);
INSERT INTO V_EDV
	VALUES (2075);
INSERT INTO V_EPR
	VALUES (2075,
	2017,
	2018,
	0);
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
	188,
	2067);
INSERT INTO V_BIN
	VALUES (2070,
	2076,
	2075,
	'*');
INSERT INTO V_VAL
	VALUES (2076,
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
	2067);
INSERT INTO V_LIN
	VALUES (2076,
	'2');
INSERT INTO V_VAR
	VALUES (2074,
	2067,
	'self',
	1,
	300);
INSERT INTO V_INT
	VALUES (2074,
	0,
	2009);
INSERT INTO SM_TXN
	VALUES (2064,
	2017,
	2021,
	0);
INSERT INTO SM_NSTXN
	VALUES (2077,
	2017,
	2021,
	2020,
	0);
INSERT INTO SM_TAH
	VALUES (2078,
	2017,
	2077);
INSERT INTO SM_AH
	VALUES (2078,
	2017);
INSERT INTO SM_ACT
	VALUES (2078,
	2017,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2079,
	2017,
	2078);
INSERT INTO ACT_ACT
	VALUES (2079,
	'transition',
	0,
	2080,
	0,
	0,
	'TestCase3: tcfinish',
	0);
INSERT INTO ACT_BLK
	VALUES (2080,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2079,
	0);
INSERT INTO SM_TXN
	VALUES (2077,
	2017,
	2053,
	0);
INSERT INTO PE_PE
	VALUES (2081,
	1,
	2008,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (2081,
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
	VALUES (2082,
	2081,
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
	VALUES (2083,
	2082);
INSERT INTO ACT_ACT
	VALUES (2083,
	'class operation',
	0,
	2084,
	0,
	0,
	'UI::connect',
	0);
INSERT INTO ACT_BLK
	VALUES (2084,
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
	2083,
	0);
INSERT INTO ACT_SMT
	VALUES (2085,
	2084,
	2086,
	1,
	1,
	'UI::connect line: 1');
INSERT INTO ACT_BRG
	VALUES (2085,
	2087,
	1,
	12,
	1,
	1);
INSERT INTO ACT_SMT
	VALUES (2086,
	2084,
	2088,
	3,
	1,
	'UI::connect line: 3');
INSERT INTO E_ESS
	VALUES (2086,
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
	VALUES (2086,
	1,
	2089);
INSERT INTO E_CSME
	VALUES (2086,
	2090);
INSERT INTO E_CEA
	VALUES (2086);
INSERT INTO ACT_SMT
	VALUES (2088,
	2084,
	2091,
	4,
	1,
	'UI::connect line: 4');
INSERT INTO ACT_BRG
	VALUES (2088,
	2092,
	4,
	12,
	4,
	1);
INSERT INTO ACT_SMT
	VALUES (2091,
	2084,
	2093,
	6,
	1,
	'UI::connect line: 6');
INSERT INTO E_ESS
	VALUES (2091,
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
	VALUES (2091,
	0,
	2089);
INSERT INTO E_CSME
	VALUES (2091,
	2094);
INSERT INTO E_CEA
	VALUES (2091);
INSERT INTO ACT_SMT
	VALUES (2093,
	2084,
	2095,
	7,
	1,
	'UI::connect line: 7');
INSERT INTO ACT_BRG
	VALUES (2093,
	2096,
	7,
	12,
	7,
	1);
INSERT INTO ACT_SMT
	VALUES (2095,
	2084,
	2097,
	9,
	1,
	'UI::connect line: 9');
INSERT INTO E_ESS
	VALUES (2095,
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
	VALUES (2095,
	0,
	2089);
INSERT INTO E_CSME
	VALUES (2095,
	2098);
INSERT INTO E_CEA
	VALUES (2095);
INSERT INTO ACT_SMT
	VALUES (2097,
	2084,
	2099,
	10,
	1,
	'UI::connect line: 10');
INSERT INTO ACT_BRG
	VALUES (2097,
	2100,
	10,
	12,
	10,
	1);
INSERT INTO ACT_SMT
	VALUES (2099,
	2084,
	2101,
	12,
	1,
	'UI::connect line: 12');
INSERT INTO E_ESS
	VALUES (2099,
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
	VALUES (2099,
	0,
	2089);
INSERT INTO E_CSME
	VALUES (2099,
	2102);
INSERT INTO E_CEA
	VALUES (2099);
INSERT INTO ACT_SMT
	VALUES (2101,
	2084,
	2103,
	13,
	1,
	'UI::connect line: 13');
INSERT INTO ACT_BRG
	VALUES (2101,
	2104,
	13,
	12,
	13,
	1);
INSERT INTO ACT_SMT
	VALUES (2103,
	2084,
	2105,
	15,
	1,
	'UI::connect line: 15');
INSERT INTO E_ESS
	VALUES (2103,
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
	VALUES (2103,
	0,
	2089);
INSERT INTO E_CSME
	VALUES (2103,
	2106);
INSERT INTO E_CEA
	VALUES (2103);
INSERT INTO ACT_SMT
	VALUES (2105,
	2084,
	0,
	16,
	1,
	'UI::connect line: 16');
INSERT INTO ACT_BRG
	VALUES (2105,
	2107,
	16,
	12,
	16,
	1);
INSERT INTO V_VAL
	VALUES (2108,
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
	2084);
INSERT INTO V_TVL
	VALUES (2108,
	2089);
INSERT INTO V_PAR
	VALUES (2108,
	2088,
	0,
	'evt',
	0,
	4,
	38);
INSERT INTO V_VAL
	VALUES (2109,
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
	2084);
INSERT INTO V_TVL
	VALUES (2109,
	2089);
INSERT INTO V_PAR
	VALUES (2109,
	2093,
	0,
	'evt',
	0,
	7,
	38);
INSERT INTO V_VAL
	VALUES (2110,
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
	2084);
INSERT INTO V_TVL
	VALUES (2110,
	2089);
INSERT INTO V_PAR
	VALUES (2110,
	2097,
	0,
	'evt',
	0,
	10,
	37);
INSERT INTO V_VAL
	VALUES (2111,
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
	2084);
INSERT INTO V_TVL
	VALUES (2111,
	2089);
INSERT INTO V_PAR
	VALUES (2111,
	2101,
	0,
	'evt',
	0,
	13,
	34);
INSERT INTO V_VAL
	VALUES (2112,
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
	2084);
INSERT INTO V_TVL
	VALUES (2112,
	2089);
INSERT INTO V_PAR
	VALUES (2112,
	2105,
	0,
	'evt',
	0,
	16,
	33);
INSERT INTO V_VAR
	VALUES (2089,
	2084,
	'evt',
	1,
	302);
INSERT INTO V_TRN
	VALUES (2089,
	0,
	'');
INSERT INTO O_ID
	VALUES (0,
	2081);
INSERT INTO O_ID
	VALUES (1,
	2081);
INSERT INTO O_ID
	VALUES (2,
	2081);
INSERT INTO SM_ASM
	VALUES (2113,
	2081);
INSERT INTO SM_SM
	VALUES (2113,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (2113);
INSERT INTO SM_LEVT
	VALUES (2090,
	2113,
	0);
INSERT INTO SM_SEVT
	VALUES (2090,
	2113,
	0);
INSERT INTO SM_EVT
	VALUES (2090,
	2113,
	0,
	3,
	'setTargetPressed',
	0,
	'',
	'UI_A3',
	'');
INSERT INTO SM_LEVT
	VALUES (2094,
	2113,
	0);
INSERT INTO SM_SEVT
	VALUES (2094,
	2113,
	0);
INSERT INTO SM_EVT
	VALUES (2094,
	2113,
	0,
	4,
	'startStopPressed',
	0,
	'',
	'UI_A4',
	'');
INSERT INTO SM_LEVT
	VALUES (2098,
	2113,
	0);
INSERT INTO SM_SEVT
	VALUES (2098,
	2113,
	0);
INSERT INTO SM_EVT
	VALUES (2098,
	2113,
	0,
	5,
	'lapResetPressed',
	0,
	'',
	'UI_A5',
	'');
INSERT INTO SM_LEVT
	VALUES (2102,
	2113,
	0);
INSERT INTO SM_SEVT
	VALUES (2102,
	2113,
	0);
INSERT INTO SM_EVT
	VALUES (2102,
	2113,
	0,
	6,
	'lightPressed',
	0,
	'',
	'UI_A6',
	'');
INSERT INTO SM_LEVT
	VALUES (2106,
	2113,
	0);
INSERT INTO SM_SEVT
	VALUES (2106,
	2113,
	0);
INSERT INTO SM_EVT
	VALUES (2106,
	2113,
	0,
	7,
	'modePressed',
	0,
	'',
	'UI_A7',
	'');
INSERT INTO SM_STATE
	VALUES (2114,
	2113,
	0,
	'running',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (2114,
	2090,
	2113,
	0);
INSERT INTO SM_SEME
	VALUES (2114,
	2094,
	2113,
	0);
INSERT INTO SM_SEME
	VALUES (2114,
	2098,
	2113,
	0);
INSERT INTO SM_SEME
	VALUES (2114,
	2102,
	2113,
	0);
INSERT INTO SM_SEME
	VALUES (2114,
	2106,
	2113,
	0);
INSERT INTO SM_MOAH
	VALUES (2115,
	2113,
	2114);
INSERT INTO SM_AH
	VALUES (2115,
	2113);
INSERT INTO SM_ACT
	VALUES (2115,
	2113,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (2116,
	2113,
	2115);
INSERT INTO ACT_ACT
	VALUES (2116,
	'class state',
	0,
	2117,
	0,
	0,
	'UI::running',
	0);
INSERT INTO ACT_BLK
	VALUES (2117,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
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
INSERT INTO SM_NSTXN
	VALUES (2118,
	2113,
	2114,
	2090,
	0);
INSERT INTO SM_TAH
	VALUES (2119,
	2113,
	2118);
INSERT INTO SM_AH
	VALUES (2119,
	2113);
INSERT INTO SM_ACT
	VALUES (2119,
	2113,
	1,
	'create event instance evt of UI_A3:setTargetPressed() to UI class;
GuiBridge::feedSetTargetPressedEvent(evt: evt);
::sendTargetPressed();',
	'');
INSERT INTO ACT_TAB
	VALUES (2120,
	2113,
	2119);
INSERT INTO ACT_ACT
	VALUES (2120,
	'class transition',
	0,
	2121,
	0,
	0,
	'UI_A3: setTargetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2121,
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
	2120,
	0);
INSERT INTO ACT_SMT
	VALUES (2122,
	2121,
	2123,
	1,
	1,
	'UI_A3: setTargetPressed line: 1');
INSERT INTO E_ESS
	VALUES (2122,
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
	VALUES (2122,
	1,
	2124);
INSERT INTO E_CSME
	VALUES (2122,
	2090);
INSERT INTO E_CEA
	VALUES (2122);
INSERT INTO ACT_SMT
	VALUES (2123,
	2121,
	2125,
	2,
	1,
	'UI_A3: setTargetPressed line: 2');
INSERT INTO ACT_BRG
	VALUES (2123,
	2092,
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (2125,
	2121,
	0,
	3,
	1,
	'UI_A3: setTargetPressed line: 3');
INSERT INTO ACT_FNC
	VALUES (2125,
	2126,
	3,
	3);
INSERT INTO V_VAL
	VALUES (2127,
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
	2121);
INSERT INTO V_TVL
	VALUES (2127,
	2124);
INSERT INTO V_PAR
	VALUES (2127,
	2123,
	0,
	'evt',
	0,
	2,
	38);
INSERT INTO V_VAR
	VALUES (2124,
	2121,
	'evt',
	1,
	302);
INSERT INTO V_TRN
	VALUES (2124,
	0,
	'');
INSERT INTO SM_TXN
	VALUES (2118,
	2113,
	2114,
	0);
INSERT INTO SM_NSTXN
	VALUES (2128,
	2113,
	2114,
	2094,
	0);
INSERT INTO SM_TAH
	VALUES (2129,
	2113,
	2128);
INSERT INTO SM_AH
	VALUES (2129,
	2113);
INSERT INTO SM_ACT
	VALUES (2129,
	2113,
	1,
	'create event instance evt of UI_A4:startStopPressed() to UI class;
GuiBridge::feedStartStopPressedEvent(evt: evt);
::sendStartStopPressed();',
	'');
INSERT INTO ACT_TAB
	VALUES (2130,
	2113,
	2129);
INSERT INTO ACT_ACT
	VALUES (2130,
	'class transition',
	0,
	2131,
	0,
	0,
	'UI_A4: startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2131,
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
	2130,
	0);
INSERT INTO ACT_SMT
	VALUES (2132,
	2131,
	2133,
	1,
	1,
	'UI_A4: startStopPressed line: 1');
INSERT INTO E_ESS
	VALUES (2132,
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
	VALUES (2132,
	1,
	2134);
INSERT INTO E_CSME
	VALUES (2132,
	2094);
INSERT INTO E_CEA
	VALUES (2132);
INSERT INTO ACT_SMT
	VALUES (2133,
	2131,
	2135,
	2,
	1,
	'UI_A4: startStopPressed line: 2');
INSERT INTO ACT_BRG
	VALUES (2133,
	2096,
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (2135,
	2131,
	0,
	3,
	1,
	'UI_A4: startStopPressed line: 3');
INSERT INTO ACT_FNC
	VALUES (2135,
	2136,
	3,
	3);
INSERT INTO V_VAL
	VALUES (2137,
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
	2131);
INSERT INTO V_TVL
	VALUES (2137,
	2134);
INSERT INTO V_PAR
	VALUES (2137,
	2133,
	0,
	'evt',
	0,
	2,
	38);
INSERT INTO V_VAR
	VALUES (2134,
	2131,
	'evt',
	1,
	302);
INSERT INTO V_TRN
	VALUES (2134,
	0,
	'');
INSERT INTO SM_TXN
	VALUES (2128,
	2113,
	2114,
	0);
INSERT INTO SM_NSTXN
	VALUES (2138,
	2113,
	2114,
	2098,
	0);
INSERT INTO SM_TAH
	VALUES (2139,
	2113,
	2138);
INSERT INTO SM_AH
	VALUES (2139,
	2113);
INSERT INTO SM_ACT
	VALUES (2139,
	2113,
	1,
	'create event instance evt of UI_A5:lapResetPressed() to UI class;
GuiBridge::feedLapResetPressedEvent(evt: evt);
::sendLapResetPressed();',
	'');
INSERT INTO ACT_TAB
	VALUES (2140,
	2113,
	2139);
INSERT INTO ACT_ACT
	VALUES (2140,
	'class transition',
	0,
	2141,
	0,
	0,
	'UI_A5: lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2141,
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
	2140,
	0);
INSERT INTO ACT_SMT
	VALUES (2142,
	2141,
	2143,
	1,
	1,
	'UI_A5: lapResetPressed line: 1');
INSERT INTO E_ESS
	VALUES (2142,
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
	VALUES (2142,
	1,
	2144);
INSERT INTO E_CSME
	VALUES (2142,
	2098);
INSERT INTO E_CEA
	VALUES (2142);
INSERT INTO ACT_SMT
	VALUES (2143,
	2141,
	2145,
	2,
	1,
	'UI_A5: lapResetPressed line: 2');
INSERT INTO ACT_BRG
	VALUES (2143,
	2100,
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (2145,
	2141,
	0,
	3,
	1,
	'UI_A5: lapResetPressed line: 3');
INSERT INTO ACT_FNC
	VALUES (2145,
	2146,
	3,
	3);
INSERT INTO V_VAL
	VALUES (2147,
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
	2141);
INSERT INTO V_TVL
	VALUES (2147,
	2144);
INSERT INTO V_PAR
	VALUES (2147,
	2143,
	0,
	'evt',
	0,
	2,
	37);
INSERT INTO V_VAR
	VALUES (2144,
	2141,
	'evt',
	1,
	302);
INSERT INTO V_TRN
	VALUES (2144,
	0,
	'');
INSERT INTO SM_TXN
	VALUES (2138,
	2113,
	2114,
	0);
INSERT INTO SM_NSTXN
	VALUES (2148,
	2113,
	2114,
	2102,
	0);
INSERT INTO SM_TAH
	VALUES (2149,
	2113,
	2148);
INSERT INTO SM_AH
	VALUES (2149,
	2113);
INSERT INTO SM_ACT
	VALUES (2149,
	2113,
	1,
	'create event instance evt of UI_A6:lightPressed() to UI class;
GuiBridge::feedLightPressedEvent(evt: evt);
::sendLightPressed();',
	'');
INSERT INTO ACT_TAB
	VALUES (2150,
	2113,
	2149);
INSERT INTO ACT_ACT
	VALUES (2150,
	'class transition',
	0,
	2151,
	0,
	0,
	'UI_A6: lightPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2151,
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
	2150,
	0);
INSERT INTO ACT_SMT
	VALUES (2152,
	2151,
	2153,
	1,
	1,
	'UI_A6: lightPressed line: 1');
INSERT INTO E_ESS
	VALUES (2152,
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
	VALUES (2152,
	1,
	2154);
INSERT INTO E_CSME
	VALUES (2152,
	2102);
INSERT INTO E_CEA
	VALUES (2152);
INSERT INTO ACT_SMT
	VALUES (2153,
	2151,
	2155,
	2,
	1,
	'UI_A6: lightPressed line: 2');
INSERT INTO ACT_BRG
	VALUES (2153,
	2104,
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (2155,
	2151,
	0,
	3,
	1,
	'UI_A6: lightPressed line: 3');
INSERT INTO ACT_FNC
	VALUES (2155,
	2156,
	3,
	3);
INSERT INTO V_VAL
	VALUES (2157,
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
	2151);
INSERT INTO V_TVL
	VALUES (2157,
	2154);
INSERT INTO V_PAR
	VALUES (2157,
	2153,
	0,
	'evt',
	0,
	2,
	34);
INSERT INTO V_VAR
	VALUES (2154,
	2151,
	'evt',
	1,
	302);
INSERT INTO V_TRN
	VALUES (2154,
	0,
	'');
INSERT INTO SM_TXN
	VALUES (2148,
	2113,
	2114,
	0);
INSERT INTO SM_NSTXN
	VALUES (2158,
	2113,
	2114,
	2106,
	0);
INSERT INTO SM_TAH
	VALUES (2159,
	2113,
	2158);
INSERT INTO SM_AH
	VALUES (2159,
	2113);
INSERT INTO SM_ACT
	VALUES (2159,
	2113,
	1,
	'create event instance evt of UI_A7:modePressed() to UI class;
GuiBridge::feedModePressedEvent(evt: evt);
::sendModePressed();',
	'');
INSERT INTO ACT_TAB
	VALUES (2160,
	2113,
	2159);
INSERT INTO ACT_ACT
	VALUES (2160,
	'class transition',
	0,
	2161,
	0,
	0,
	'UI_A7: modePressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2161,
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
	2160,
	0);
INSERT INTO ACT_SMT
	VALUES (2162,
	2161,
	2163,
	1,
	1,
	'UI_A7: modePressed line: 1');
INSERT INTO E_ESS
	VALUES (2162,
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
	VALUES (2162,
	1,
	2164);
INSERT INTO E_CSME
	VALUES (2162,
	2106);
INSERT INTO E_CEA
	VALUES (2162);
INSERT INTO ACT_SMT
	VALUES (2163,
	2161,
	2165,
	2,
	1,
	'UI_A7: modePressed line: 2');
INSERT INTO ACT_BRG
	VALUES (2163,
	2107,
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (2165,
	2161,
	0,
	3,
	1,
	'UI_A7: modePressed line: 3');
INSERT INTO ACT_FNC
	VALUES (2165,
	2166,
	3,
	3);
INSERT INTO V_VAL
	VALUES (2167,
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
	2161);
INSERT INTO V_TVL
	VALUES (2167,
	2164);
INSERT INTO V_PAR
	VALUES (2167,
	2163,
	0,
	'evt',
	0,
	2,
	33);
INSERT INTO V_VAR
	VALUES (2164,
	2161,
	'evt',
	1,
	302);
INSERT INTO V_TRN
	VALUES (2164,
	0,
	'');
INSERT INTO SM_TXN
	VALUES (2158,
	2113,
	2114,
	0);
INSERT INTO PE_PE
	VALUES (2168,
	1,
	2008,
	0,
	5);
INSERT INTO S_EE
	VALUES (2168,
	'Time',
	'The Time external entity provides date, timestamp, and timer related operations.',
	'TIM',
	0,
	'',
	'Time',
	1);
INSERT INTO S_BRG
	VALUES (2169,
	2168,
	'current_date',
	'',
	1,
	306,
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
	'Time::current_date',
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
	2168,
	'create_date',
	'',
	1,
	306,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2173,
	2172,
	'second',
	188,
	0,
	'',
	2174,
	'');
INSERT INTO S_BPARM
	VALUES (2175,
	2172,
	'minute',
	188,
	0,
	'',
	2176,
	'');
INSERT INTO S_BPARM
	VALUES (2176,
	2172,
	'hour',
	188,
	0,
	'',
	2177,
	'');
INSERT INTO S_BPARM
	VALUES (2177,
	2172,
	'day',
	188,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2174,
	2172,
	'month',
	188,
	0,
	'',
	2175,
	'');
INSERT INTO S_BPARM
	VALUES (2178,
	2172,
	'year',
	188,
	0,
	'',
	2173,
	'');
INSERT INTO ACT_BRB
	VALUES (2179,
	2172);
INSERT INTO ACT_ACT
	VALUES (2179,
	'bridge',
	0,
	2180,
	0,
	0,
	'Time::create_date',
	0);
INSERT INTO ACT_BLK
	VALUES (2180,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2179,
	0);
INSERT INTO S_BRG
	VALUES (2181,
	2168,
	'get_second',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2182,
	2181,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2183,
	2181);
INSERT INTO ACT_ACT
	VALUES (2183,
	'bridge',
	0,
	2184,
	0,
	0,
	'Time::get_second',
	0);
INSERT INTO ACT_BLK
	VALUES (2184,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2183,
	0);
INSERT INTO S_BRG
	VALUES (2185,
	2168,
	'get_minute',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2186,
	2185,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2187,
	2185);
INSERT INTO ACT_ACT
	VALUES (2187,
	'bridge',
	0,
	2188,
	0,
	0,
	'Time::get_minute',
	0);
INSERT INTO ACT_BLK
	VALUES (2188,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2187,
	0);
INSERT INTO S_BRG
	VALUES (2189,
	2168,
	'get_hour',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2190,
	2189,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2191,
	2189);
INSERT INTO ACT_ACT
	VALUES (2191,
	'bridge',
	0,
	2192,
	0,
	0,
	'Time::get_hour',
	0);
INSERT INTO ACT_BLK
	VALUES (2192,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2191,
	0);
INSERT INTO S_BRG
	VALUES (2193,
	2168,
	'get_day',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2194,
	2193,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2195,
	2193);
INSERT INTO ACT_ACT
	VALUES (2195,
	'bridge',
	0,
	2196,
	0,
	0,
	'Time::get_day',
	0);
INSERT INTO ACT_BLK
	VALUES (2196,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2195,
	0);
INSERT INTO S_BRG
	VALUES (2197,
	2168,
	'get_month',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2198,
	2197,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2199,
	2197);
INSERT INTO ACT_ACT
	VALUES (2199,
	'bridge',
	0,
	2200,
	0,
	0,
	'Time::get_month',
	0);
INSERT INTO ACT_BLK
	VALUES (2200,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2199,
	0);
INSERT INTO S_BRG
	VALUES (2201,
	2168,
	'get_year',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2202,
	2201,
	'date',
	306,
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
	'Time::get_year',
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
	2168,
	'current_clock',
	'',
	1,
	308,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (2206,
	2205);
INSERT INTO ACT_ACT
	VALUES (2206,
	'bridge',
	0,
	2207,
	0,
	0,
	'Time::current_clock',
	0);
INSERT INTO ACT_BLK
	VALUES (2207,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2206,
	0);
INSERT INTO S_BRG
	VALUES (2048,
	2168,
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
	VALUES (2208,
	2048,
	'microseconds',
	188,
	0,
	'',
	2209,
	'');
INSERT INTO S_BPARM
	VALUES (2209,
	2048,
	'event_inst',
	302,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2210,
	2048);
INSERT INTO ACT_ACT
	VALUES (2210,
	'bridge',
	0,
	2211,
	0,
	0,
	'Time::timer_start',
	0);
INSERT INTO ACT_BLK
	VALUES (2211,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2210,
	0);
INSERT INTO S_BRG
	VALUES (2212,
	2168,
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
	VALUES (2213,
	2212,
	'microseconds',
	188,
	0,
	'',
	2214,
	'');
INSERT INTO S_BPARM
	VALUES (2214,
	2212,
	'event_inst',
	302,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2215,
	2212);
INSERT INTO ACT_ACT
	VALUES (2215,
	'bridge',
	0,
	2216,
	0,
	0,
	'Time::timer_start_recurring',
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
	2168,
	'timer_remaining_time',
	'Returns the time remaining (in microseconds) for the passed timer instance. If
the timer has expired, a zero value is returned.',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2218,
	2217,
	'timer_inst_ref',
	307,
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
	'Time::timer_remaining_time',
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
	VALUES (2221,
	2168,
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
	VALUES (2222,
	2221,
	'timer_inst_ref',
	307,
	0,
	'',
	2223,
	'');
INSERT INTO S_BPARM
	VALUES (2223,
	2221,
	'microseconds',
	188,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2224,
	2221);
INSERT INTO ACT_ACT
	VALUES (2224,
	'bridge',
	0,
	2225,
	0,
	0,
	'Time::timer_reset_time',
	0);
INSERT INTO ACT_BLK
	VALUES (2225,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2224,
	0);
INSERT INTO S_BRG
	VALUES (2226,
	2168,
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
	VALUES (2227,
	2226,
	'timer_inst_ref',
	307,
	0,
	'',
	2228,
	'');
INSERT INTO S_BPARM
	VALUES (2228,
	2226,
	'microseconds',
	188,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2229,
	2226);
INSERT INTO ACT_ACT
	VALUES (2229,
	'bridge',
	0,
	2230,
	0,
	0,
	'Time::timer_add_time',
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
	VALUES (2231,
	2168,
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
	VALUES (2232,
	2231,
	'timer_inst_ref',
	307,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2233,
	2231);
INSERT INTO ACT_ACT
	VALUES (2233,
	'bridge',
	0,
	2234,
	0,
	0,
	'Time::timer_cancel',
	0);
INSERT INTO ACT_BLK
	VALUES (2234,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2233,
	0);
INSERT INTO PE_PE
	VALUES (2235,
	1,
	2008,
	0,
	5);
INSERT INTO S_EE
	VALUES (2235,
	'Graphical User Interface',
	'',
	'GuiBridge',
	0,
	'',
	'Graphical User Interface',
	1);
INSERT INTO S_BRG
	VALUES (2092,
	2235,
	'feedSetTargetPressedEvent',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2236,
	2092,
	'evt',
	302,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2237,
	2092);
INSERT INTO ACT_ACT
	VALUES (2237,
	'bridge',
	0,
	2238,
	0,
	0,
	'Graphical User Interface::feedSetTargetPressedEvent',
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
	VALUES (2107,
	2235,
	'feedModePressedEvent',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2239,
	2107,
	'evt',
	302,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2240,
	2107);
INSERT INTO ACT_ACT
	VALUES (2240,
	'bridge',
	0,
	2241,
	0,
	0,
	'Graphical User Interface::feedModePressedEvent',
	0);
INSERT INTO ACT_BLK
	VALUES (2241,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2240,
	0);
INSERT INTO S_BRG
	VALUES (2104,
	2235,
	'feedLightPressedEvent',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2242,
	2104,
	'evt',
	302,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2243,
	2104);
INSERT INTO ACT_ACT
	VALUES (2243,
	'bridge',
	0,
	2244,
	0,
	0,
	'Graphical User Interface::feedLightPressedEvent',
	0);
INSERT INTO ACT_BLK
	VALUES (2244,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2243,
	0);
INSERT INTO S_BRG
	VALUES (2100,
	2235,
	'feedLapResetPressedEvent',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2245,
	2100,
	'evt',
	302,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2246,
	2100);
INSERT INTO ACT_ACT
	VALUES (2246,
	'bridge',
	0,
	2247,
	0,
	0,
	'Graphical User Interface::feedLapResetPressedEvent',
	0);
INSERT INTO ACT_BLK
	VALUES (2247,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2246,
	0);
INSERT INTO S_BRG
	VALUES (2096,
	2235,
	'feedStartStopPressedEvent',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2248,
	2096,
	'evt',
	302,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2249,
	2096);
INSERT INTO ACT_ACT
	VALUES (2249,
	'bridge',
	0,
	2250,
	0,
	0,
	'Graphical User Interface::feedStartStopPressedEvent',
	0);
INSERT INTO ACT_BLK
	VALUES (2250,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2249,
	0);
INSERT INTO S_BRG
	VALUES (2251,
	2235,
	'setData',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2252,
	2251,
	'value',
	133,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2253,
	2251,
	'unit',
	188,
	0,
	'',
	2252,
	'');
INSERT INTO ACT_BRB
	VALUES (2254,
	2251);
INSERT INTO ACT_ACT
	VALUES (2254,
	'bridge',
	0,
	2255,
	0,
	0,
	'Graphical User Interface::setData',
	0);
INSERT INTO ACT_BLK
	VALUES (2255,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2254,
	0);
INSERT INTO S_BRG
	VALUES (2256,
	2235,
	'setTime',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2257,
	2256,
	'time',
	188,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2258,
	2256);
INSERT INTO ACT_ACT
	VALUES (2258,
	'bridge',
	0,
	2259,
	0,
	0,
	'Graphical User Interface::setTime',
	0);
INSERT INTO ACT_BLK
	VALUES (2259,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2258,
	0);
INSERT INTO S_BRG
	VALUES (2087,
	2235,
	'connect',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (2260,
	2087);
INSERT INTO ACT_ACT
	VALUES (2260,
	'bridge',
	0,
	2261,
	0,
	0,
	'Graphical User Interface::connect',
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
	2235,
	'setIndicator',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2263,
	2262,
	'value',
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
	'Graphical User Interface::setIndicator',
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
	2008,
	0,
	5);
INSERT INTO S_EE
	VALUES (2266,
	'Logging',
	'',
	'LOG',
	0,
	'',
	'Logging',
	1);
INSERT INTO S_BRG
	VALUES (2267,
	2266,
	'LogSuccess',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2268,
	2267,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2269,
	2267);
INSERT INTO ACT_ACT
	VALUES (2269,
	'bridge',
	0,
	2270,
	0,
	0,
	'Logging::LogSuccess',
	0);
INSERT INTO ACT_BLK
	VALUES (2270,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2269,
	0);
INSERT INTO S_BRG
	VALUES (2271,
	2266,
	'LogFailure',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2272,
	2271,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2273,
	2271);
INSERT INTO ACT_ACT
	VALUES (2273,
	'bridge',
	0,
	2274,
	0,
	0,
	'Logging::LogFailure',
	0);
INSERT INTO ACT_BLK
	VALUES (2274,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2273,
	0);
INSERT INTO S_BRG
	VALUES (2058,
	2266,
	'LogInfo',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2275,
	2058,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2276,
	2058);
INSERT INTO ACT_ACT
	VALUES (2276,
	'bridge',
	0,
	2277,
	0,
	0,
	'Logging::LogInfo',
	0);
INSERT INTO ACT_BLK
	VALUES (2277,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2276,
	0);
INSERT INTO S_BRG
	VALUES (2278,
	2266,
	'LogDate',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2279,
	2278,
	'd',
	306,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2280,
	2278,
	'message',
	296,
	0,
	'',
	2279,
	'');
INSERT INTO ACT_BRB
	VALUES (2281,
	2278);
INSERT INTO ACT_ACT
	VALUES (2281,
	'bridge',
	0,
	2282,
	0,
	0,
	'Logging::LogDate',
	0);
INSERT INTO ACT_BLK
	VALUES (2282,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2281,
	0);
INSERT INTO S_BRG
	VALUES (2283,
	2266,
	'LogTime',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2284,
	2283,
	't',
	308,
	0,
	'',
	2285,
	'');
INSERT INTO S_BPARM
	VALUES (2285,
	2283,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2286,
	2283);
INSERT INTO ACT_ACT
	VALUES (2286,
	'bridge',
	0,
	2287,
	0,
	0,
	'Logging::LogTime',
	0);
INSERT INTO ACT_BLK
	VALUES (2287,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2286,
	0);
INSERT INTO S_BRG
	VALUES (2288,
	2266,
	'LogReal',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2289,
	2288,
	'r',
	133,
	0,
	'',
	2290,
	'');
INSERT INTO S_BPARM
	VALUES (2290,
	2288,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2291,
	2288);
INSERT INTO ACT_ACT
	VALUES (2291,
	'bridge',
	0,
	2292,
	0,
	0,
	'Logging::LogReal',
	0);
INSERT INTO ACT_BLK
	VALUES (2292,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2291,
	0);
INSERT INTO S_BRG
	VALUES (2293,
	2266,
	'LogInteger',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2294,
	2293,
	'message',
	188,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2295,
	2293);
INSERT INTO ACT_ACT
	VALUES (2295,
	'bridge',
	0,
	2296,
	0,
	0,
	'Logging::LogInteger',
	0);
INSERT INTO ACT_BLK
	VALUES (2296,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2295,
	0);
INSERT INTO PE_PE
	VALUES (2297,
	1,
	2008,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (2297,
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
	VALUES (2298,
	2297);
INSERT INTO ACT_ACT
	VALUES (2298,
	'function',
	0,
	2299,
	0,
	0,
	'createGoals_1',
	0);
INSERT INTO ACT_BLK
	VALUES (2299,
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
	2298,
	0);
INSERT INTO ACT_SMT
	VALUES (2300,
	2299,
	2301,
	2,
	1,
	'createGoals_1 line: 2');
INSERT INTO ACT_IOP
	VALUES (2300,
	2,
	16,
	2,
	6,
	0,
	2002,
	0);
INSERT INTO ACT_SMT
	VALUES (2301,
	2299,
	2302,
	10,
	1,
	'createGoals_1 line: 10');
INSERT INTO ACT_IOP
	VALUES (2301,
	10,
	16,
	10,
	6,
	0,
	2002,
	0);
INSERT INTO ACT_SMT
	VALUES (2302,
	2299,
	2303,
	18,
	1,
	'createGoals_1 line: 18');
INSERT INTO ACT_IOP
	VALUES (2302,
	18,
	16,
	18,
	6,
	0,
	2002,
	0);
INSERT INTO ACT_SMT
	VALUES (2303,
	2299,
	0,
	26,
	1,
	'createGoals_1 line: 26');
INSERT INTO ACT_IOP
	VALUES (2303,
	26,
	16,
	26,
	6,
	0,
	2002,
	0);
INSERT INTO V_VAL
	VALUES (2304,
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
	2299);
INSERT INTO V_LIN
	VALUES (2304,
	'1');
INSERT INTO V_PAR
	VALUES (2304,
	2300,
	0,
	'sequenceNumber',
	2305,
	3,
	3);
INSERT INTO V_VAL
	VALUES (2305,
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
	2299);
INSERT INTO V_LRL
	VALUES (2305,
	'2.0');
INSERT INTO V_PAR
	VALUES (2305,
	2300,
	0,
	'minimum',
	2306,
	4,
	3);
INSERT INTO V_VAL
	VALUES (2306,
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
	2299);
INSERT INTO V_LRL
	VALUES (2306,
	'8.0');
INSERT INTO V_PAR
	VALUES (2306,
	2300,
	0,
	'maximum',
	2307,
	5,
	3);
INSERT INTO V_VAL
	VALUES (2307,
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
	2299);
INSERT INTO V_LRL
	VALUES (2307,
	'150.0');
INSERT INTO V_PAR
	VALUES (2307,
	2300,
	0,
	'span',
	2308,
	6,
	3);
INSERT INTO V_VAL
	VALUES (2308,
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
	2299);
INSERT INTO V_LEN
	VALUES (2308,
	623,
	7,
	17);
INSERT INTO V_PAR
	VALUES (2308,
	2300,
	0,
	'criteriaType',
	2309,
	7,
	3);
INSERT INTO V_VAL
	VALUES (2309,
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
	2299);
INSERT INTO V_LEN
	VALUES (2309,
	625,
	8,
	13);
INSERT INTO V_PAR
	VALUES (2309,
	2300,
	0,
	'spanType',
	0,
	8,
	3);
INSERT INTO V_VAL
	VALUES (2310,
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
	2299);
INSERT INTO V_LIN
	VALUES (2310,
	'2');
INSERT INTO V_PAR
	VALUES (2310,
	2301,
	0,
	'sequenceNumber',
	2311,
	11,
	3);
INSERT INTO V_VAL
	VALUES (2311,
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
	2299);
INSERT INTO V_LRL
	VALUES (2311,
	'60.0');
INSERT INTO V_PAR
	VALUES (2311,
	2301,
	0,
	'minimum',
	2312,
	12,
	3);
INSERT INTO V_VAL
	VALUES (2312,
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
	2299);
INSERT INTO V_LRL
	VALUES (2312,
	'80.0');
INSERT INTO V_PAR
	VALUES (2312,
	2301,
	0,
	'maximum',
	2313,
	13,
	3);
INSERT INTO V_VAL
	VALUES (2313,
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
	2299);
INSERT INTO V_LIN
	VALUES (2313,
	'10');
INSERT INTO V_PAR
	VALUES (2313,
	2301,
	0,
	'span',
	2314,
	14,
	3);
INSERT INTO V_VAL
	VALUES (2314,
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
	2299);
INSERT INTO V_LEN
	VALUES (2314,
	631,
	15,
	17);
INSERT INTO V_PAR
	VALUES (2314,
	2301,
	0,
	'criteriaType',
	2315,
	15,
	3);
INSERT INTO V_VAL
	VALUES (2315,
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
	2299);
INSERT INTO V_LEN
	VALUES (2315,
	633,
	16,
	13);
INSERT INTO V_PAR
	VALUES (2315,
	2301,
	0,
	'spanType',
	0,
	16,
	3);
INSERT INTO V_VAL
	VALUES (2316,
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
	2299);
INSERT INTO V_LIN
	VALUES (2316,
	'3');
INSERT INTO V_PAR
	VALUES (2316,
	2302,
	0,
	'sequenceNumber',
	2317,
	19,
	3);
INSERT INTO V_VAL
	VALUES (2317,
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
	2299);
INSERT INTO V_LRL
	VALUES (2317,
	'5.0');
INSERT INTO V_PAR
	VALUES (2317,
	2302,
	0,
	'minimum',
	2318,
	20,
	3);
INSERT INTO V_VAL
	VALUES (2318,
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
	2299);
INSERT INTO V_LRL
	VALUES (2318,
	'6.0');
INSERT INTO V_PAR
	VALUES (2318,
	2302,
	0,
	'maximum',
	2319,
	21,
	3);
INSERT INTO V_VAL
	VALUES (2319,
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
	2299);
INSERT INTO V_LIN
	VALUES (2319,
	'15');
INSERT INTO V_PAR
	VALUES (2319,
	2302,
	0,
	'span',
	2320,
	22,
	3);
INSERT INTO V_VAL
	VALUES (2320,
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
	2299);
INSERT INTO V_LEN
	VALUES (2320,
	623,
	23,
	17);
INSERT INTO V_PAR
	VALUES (2320,
	2302,
	0,
	'criteriaType',
	2321,
	23,
	3);
INSERT INTO V_VAL
	VALUES (2321,
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
	2299);
INSERT INTO V_LEN
	VALUES (2321,
	633,
	24,
	13);
INSERT INTO V_PAR
	VALUES (2321,
	2302,
	0,
	'spanType',
	0,
	24,
	3);
INSERT INTO V_VAL
	VALUES (2322,
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
	2299);
INSERT INTO V_LIN
	VALUES (2322,
	'4');
INSERT INTO V_PAR
	VALUES (2322,
	2303,
	0,
	'sequenceNumber',
	2323,
	27,
	3);
INSERT INTO V_VAL
	VALUES (2323,
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
	2299);
INSERT INTO V_LRL
	VALUES (2323,
	'1.0');
INSERT INTO V_PAR
	VALUES (2323,
	2303,
	0,
	'minimum',
	2324,
	28,
	3);
INSERT INTO V_VAL
	VALUES (2324,
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
	2299);
INSERT INTO V_LRL
	VALUES (2324,
	'2.0');
INSERT INTO V_PAR
	VALUES (2324,
	2303,
	0,
	'maximum',
	2325,
	29,
	3);
INSERT INTO V_VAL
	VALUES (2325,
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
	2299);
INSERT INTO V_LIN
	VALUES (2325,
	'15');
INSERT INTO V_PAR
	VALUES (2325,
	2303,
	0,
	'span',
	2326,
	30,
	3);
INSERT INTO V_VAL
	VALUES (2326,
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
	2299);
INSERT INTO V_LEN
	VALUES (2326,
	623,
	31,
	17);
INSERT INTO V_PAR
	VALUES (2326,
	2303,
	0,
	'criteriaType',
	2327,
	31,
	3);
INSERT INTO V_VAL
	VALUES (2327,
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
	2299);
INSERT INTO V_LEN
	VALUES (2327,
	633,
	32,
	13);
INSERT INTO V_PAR
	VALUES (2327,
	2303,
	0,
	'spanType',
	0,
	32,
	3);
INSERT INTO PE_PE
	VALUES (2328,
	1,
	2008,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (2328,
	0,
	'init',
	'',
	'GuiBridge::connect();',
	294,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (2329,
	2328);
INSERT INTO ACT_ACT
	VALUES (2329,
	'function',
	0,
	2330,
	0,
	0,
	'init',
	0);
INSERT INTO ACT_BLK
	VALUES (2330,
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
	2329,
	0);
INSERT INTO ACT_SMT
	VALUES (2331,
	2330,
	0,
	1,
	1,
	'init line: 1');
INSERT INTO ACT_BRG
	VALUES (2331,
	2087,
	1,
	12,
	1,
	1);
INSERT INTO PE_PE
	VALUES (2332,
	1,
	2008,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (2332,
	0,
	'RunTestCase',
	'',
	'TestCase::execute();',
	294,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (2333,
	2332);
INSERT INTO ACT_ACT
	VALUES (2333,
	'function',
	0,
	2334,
	0,
	0,
	'RunTestCase',
	0);
INSERT INTO ACT_BLK
	VALUES (2334,
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
	2333,
	0);
INSERT INTO ACT_SMT
	VALUES (2335,
	2334,
	0,
	1,
	1,
	'RunTestCase line: 1');
INSERT INTO ACT_TFM
	VALUES (2335,
	2010,
	0,
	1,
	11,
	1,
	1);
INSERT INTO PE_PE
	VALUES (2146,
	1,
	2008,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (2146,
	0,
	'sendLapResetPressed',
	'',
	'send Tracking::lapResetPressed();',
	294,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (2336,
	2146);
INSERT INTO ACT_ACT
	VALUES (2336,
	'function',
	0,
	2337,
	0,
	0,
	'sendLapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2337,
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
	2336,
	0);
INSERT INTO ACT_SMT
	VALUES (2338,
	2337,
	0,
	1,
	1,
	'sendLapResetPressed line: 1');
INSERT INTO ACT_IOP
	VALUES (2338,
	1,
	16,
	1,
	6,
	0,
	1996,
	0);
INSERT INTO PE_PE
	VALUES (2156,
	1,
	2008,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (2156,
	0,
	'sendLightPressed',
	'',
	'send Tracking::lightPressed();',
	294,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (2339,
	2156);
INSERT INTO ACT_ACT
	VALUES (2339,
	'function',
	0,
	2340,
	0,
	0,
	'sendLightPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2340,
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
	2339,
	0);
INSERT INTO ACT_SMT
	VALUES (2341,
	2340,
	0,
	1,
	1,
	'sendLightPressed line: 1');
INSERT INTO ACT_IOP
	VALUES (2341,
	1,
	16,
	1,
	6,
	0,
	2005,
	0);
INSERT INTO PE_PE
	VALUES (2166,
	1,
	2008,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (2166,
	0,
	'sendModePressed',
	'',
	'send Tracking::modePressed();',
	294,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (2342,
	2166);
INSERT INTO ACT_ACT
	VALUES (2342,
	'function',
	0,
	2343,
	0,
	0,
	'sendModePressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2343,
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
	2342,
	0);
INSERT INTO ACT_SMT
	VALUES (2344,
	2343,
	0,
	1,
	1,
	'sendModePressed line: 1');
INSERT INTO ACT_IOP
	VALUES (2344,
	1,
	16,
	1,
	6,
	0,
	1999,
	0);
INSERT INTO PE_PE
	VALUES (2136,
	1,
	2008,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (2136,
	0,
	'sendStartStopPressed',
	'',
	'send Tracking::startStopPressed();',
	294,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (2345,
	2136);
INSERT INTO ACT_ACT
	VALUES (2345,
	'function',
	0,
	2346,
	0,
	0,
	'sendStartStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2346,
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
	2345,
	0);
INSERT INTO ACT_SMT
	VALUES (2347,
	2346,
	0,
	1,
	1,
	'sendStartStopPressed line: 1');
INSERT INTO ACT_IOP
	VALUES (2347,
	1,
	16,
	1,
	6,
	0,
	1993,
	0);
INSERT INTO PE_PE
	VALUES (2126,
	1,
	2008,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (2126,
	0,
	'sendTargetPressed',
	'',
	'send Tracking::setTargetPressed();',
	294,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (2348,
	2126);
INSERT INTO ACT_ACT
	VALUES (2348,
	'function',
	0,
	2349,
	0,
	0,
	'sendTargetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2349,
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
	2348,
	0);
INSERT INTO ACT_SMT
	VALUES (2350,
	2349,
	0,
	1,
	1,
	'sendTargetPressed line: 1');
INSERT INTO ACT_IOP
	VALUES (2350,
	1,
	16,
	1,
	6,
	0,
	1990,
	0);
INSERT INTO PE_PE
	VALUES (1955,
	1,
	2008,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (1955,
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
	294,
	1,
	'');
INSERT INTO S_SPARM
	VALUES (2351,
	1955,
	'value',
	133,
	0,
	'',
	0,
	'');
INSERT INTO S_SPARM
	VALUES (2352,
	1955,
	'unit',
	172,
	0,
	'',
	2351,
	'');
INSERT INTO ACT_FNB
	VALUES (2353,
	1955);
INSERT INTO ACT_ACT
	VALUES (2353,
	'function',
	0,
	2354,
	0,
	0,
	'setData',
	0);
INSERT INTO ACT_BLK
	VALUES (2354,
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
	2353,
	0);
INSERT INTO ACT_SMT
	VALUES (2355,
	2354,
	0,
	1,
	1,
	'setData line: 1');
INSERT INTO ACT_IF
	VALUES (2355,
	2356,
	2357,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2358,
	2354,
	0,
	3,
	1,
	'setData line: 3');
INSERT INTO ACT_EL
	VALUES (2358,
	2359,
	2360,
	2355);
INSERT INTO ACT_SMT
	VALUES (2361,
	2354,
	0,
	5,
	1,
	'setData line: 5');
INSERT INTO ACT_EL
	VALUES (2361,
	2362,
	2363,
	2355);
INSERT INTO ACT_SMT
	VALUES (2364,
	2354,
	0,
	7,
	1,
	'setData line: 7');
INSERT INTO ACT_EL
	VALUES (2364,
	2365,
	2366,
	2355);
INSERT INTO ACT_SMT
	VALUES (2367,
	2354,
	0,
	9,
	1,
	'setData line: 9');
INSERT INTO ACT_EL
	VALUES (2367,
	2368,
	2369,
	2355);
INSERT INTO ACT_SMT
	VALUES (2370,
	2354,
	0,
	11,
	1,
	'setData line: 11');
INSERT INTO ACT_EL
	VALUES (2370,
	2371,
	2372,
	2355);
INSERT INTO ACT_SMT
	VALUES (2373,
	2354,
	0,
	13,
	1,
	'setData line: 13');
INSERT INTO ACT_EL
	VALUES (2373,
	2374,
	2375,
	2355);
INSERT INTO ACT_SMT
	VALUES (2376,
	2354,
	0,
	15,
	1,
	'setData line: 15');
INSERT INTO ACT_EL
	VALUES (2376,
	2377,
	2378,
	2355);
INSERT INTO ACT_SMT
	VALUES (2379,
	2354,
	0,
	17,
	1,
	'setData line: 17');
INSERT INTO ACT_EL
	VALUES (2379,
	2380,
	2381,
	2355);
INSERT INTO ACT_SMT
	VALUES (2382,
	2354,
	0,
	19,
	1,
	'setData line: 19');
INSERT INTO ACT_EL
	VALUES (2382,
	2383,
	2384,
	2355);
INSERT INTO ACT_SMT
	VALUES (2385,
	2354,
	0,
	21,
	1,
	'setData line: 21');
INSERT INTO ACT_EL
	VALUES (2385,
	2386,
	2387,
	2355);
INSERT INTO V_VAL
	VALUES (2388,
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
	2354);
INSERT INTO V_PVL
	VALUES (2388,
	0,
	2352,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2357,
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
	2354);
INSERT INTO V_BIN
	VALUES (2357,
	2389,
	2388,
	'==');
INSERT INTO V_VAL
	VALUES (2389,
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
	2354);
INSERT INTO V_LEN
	VALUES (2389,
	755,
	1,
	19);
INSERT INTO V_VAL
	VALUES (2390,
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
	2354);
INSERT INTO V_PVL
	VALUES (2390,
	0,
	2352,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2360,
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
	2354);
INSERT INTO V_BIN
	VALUES (2360,
	2391,
	2390,
	'==');
INSERT INTO V_VAL
	VALUES (2391,
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
	2354);
INSERT INTO V_LEN
	VALUES (2391,
	759,
	3,
	21);
INSERT INTO V_VAL
	VALUES (2392,
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
	2354);
INSERT INTO V_PVL
	VALUES (2392,
	0,
	2352,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2363,
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
	2354);
INSERT INTO V_BIN
	VALUES (2363,
	2393,
	2392,
	'==');
INSERT INTO V_VAL
	VALUES (2393,
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
	2354);
INSERT INTO V_LEN
	VALUES (2393,
	800,
	5,
	21);
INSERT INTO V_VAL
	VALUES (2394,
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
	2354);
INSERT INTO V_PVL
	VALUES (2394,
	0,
	2352,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2366,
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
	2354);
INSERT INTO V_BIN
	VALUES (2366,
	2395,
	2394,
	'==');
INSERT INTO V_VAL
	VALUES (2395,
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
	2354);
INSERT INTO V_LEN
	VALUES (2395,
	779,
	7,
	21);
INSERT INTO V_VAL
	VALUES (2396,
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
	2354);
INSERT INTO V_PVL
	VALUES (2396,
	0,
	2352,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2369,
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
	2354);
INSERT INTO V_BIN
	VALUES (2369,
	2397,
	2396,
	'==');
INSERT INTO V_VAL
	VALUES (2397,
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
	2354);
INSERT INTO V_LEN
	VALUES (2397,
	2398,
	9,
	21);
INSERT INTO V_VAL
	VALUES (2399,
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
	2354);
INSERT INTO V_PVL
	VALUES (2399,
	0,
	2352,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2372,
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
	2354);
INSERT INTO V_BIN
	VALUES (2372,
	2400,
	2399,
	'==');
INSERT INTO V_VAL
	VALUES (2400,
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
	2354);
INSERT INTO V_LEN
	VALUES (2400,
	2401,
	11,
	21);
INSERT INTO V_VAL
	VALUES (2402,
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
	2354);
INSERT INTO V_PVL
	VALUES (2402,
	0,
	2352,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2375,
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
	2354);
INSERT INTO V_BIN
	VALUES (2375,
	2403,
	2402,
	'==');
INSERT INTO V_VAL
	VALUES (2403,
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
	2354);
INSERT INTO V_LEN
	VALUES (2403,
	2404,
	13,
	21);
INSERT INTO V_VAL
	VALUES (2405,
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
	2354);
INSERT INTO V_PVL
	VALUES (2405,
	0,
	2352,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2378,
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
	2354);
INSERT INTO V_BIN
	VALUES (2378,
	2406,
	2405,
	'==');
INSERT INTO V_VAL
	VALUES (2406,
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
	2354);
INSERT INTO V_LEN
	VALUES (2406,
	2407,
	15,
	21);
INSERT INTO V_VAL
	VALUES (2408,
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
	2354);
INSERT INTO V_PVL
	VALUES (2408,
	0,
	2352,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2381,
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
	2354);
INSERT INTO V_BIN
	VALUES (2381,
	2409,
	2408,
	'==');
INSERT INTO V_VAL
	VALUES (2409,
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
	2354);
INSERT INTO V_LEN
	VALUES (2409,
	2410,
	17,
	21);
INSERT INTO V_VAL
	VALUES (2411,
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
	2354);
INSERT INTO V_PVL
	VALUES (2411,
	0,
	2352,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2384,
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
	2354);
INSERT INTO V_BIN
	VALUES (2384,
	2412,
	2411,
	'==');
INSERT INTO V_VAL
	VALUES (2412,
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
	2354);
INSERT INTO V_LEN
	VALUES (2412,
	821,
	19,
	21);
INSERT INTO V_VAL
	VALUES (2413,
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
	2354);
INSERT INTO V_PVL
	VALUES (2413,
	0,
	2352,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2387,
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
	2354);
INSERT INTO V_BIN
	VALUES (2387,
	2414,
	2413,
	'==');
INSERT INTO V_VAL
	VALUES (2414,
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
	2354);
INSERT INTO V_LEN
	VALUES (2414,
	839,
	21,
	21);
INSERT INTO ACT_BLK
	VALUES (2356,
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
	2353,
	0);
INSERT INTO ACT_SMT
	VALUES (2415,
	2356,
	0,
	2,
	3,
	'setData line: 2');
INSERT INTO ACT_BRG
	VALUES (2415,
	2251,
	2,
	14,
	2,
	3);
INSERT INTO V_VAL
	VALUES (2416,
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
	2356);
INSERT INTO V_PVL
	VALUES (2416,
	0,
	2351,
	0,
	0);
INSERT INTO V_PAR
	VALUES (2416,
	2415,
	0,
	'value',
	2417,
	2,
	22);
INSERT INTO V_VAL
	VALUES (2417,
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
	2356);
INSERT INTO V_LIN
	VALUES (2417,
	'0');
INSERT INTO V_PAR
	VALUES (2417,
	2415,
	0,
	'unit',
	0,
	2,
	42);
INSERT INTO ACT_BLK
	VALUES (2359,
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
	2353,
	0);
INSERT INTO ACT_SMT
	VALUES (2418,
	2359,
	0,
	4,
	3,
	'setData line: 4');
INSERT INTO ACT_BRG
	VALUES (2418,
	2251,
	4,
	14,
	4,
	3);
INSERT INTO V_VAL
	VALUES (2419,
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
	2359);
INSERT INTO V_PVL
	VALUES (2419,
	0,
	2351,
	0,
	0);
INSERT INTO V_PAR
	VALUES (2419,
	2418,
	0,
	'value',
	2420,
	4,
	22);
INSERT INTO V_VAL
	VALUES (2420,
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
	2359);
INSERT INTO V_LIN
	VALUES (2420,
	'1');
INSERT INTO V_PAR
	VALUES (2420,
	2418,
	0,
	'unit',
	0,
	4,
	42);
INSERT INTO ACT_BLK
	VALUES (2362,
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
	2353,
	0);
INSERT INTO ACT_SMT
	VALUES (2421,
	2362,
	0,
	6,
	3,
	'setData line: 6');
INSERT INTO ACT_BRG
	VALUES (2421,
	2251,
	6,
	14,
	6,
	3);
INSERT INTO V_VAL
	VALUES (2422,
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
	2362);
INSERT INTO V_PVL
	VALUES (2422,
	0,
	2351,
	0,
	0);
INSERT INTO V_PAR
	VALUES (2422,
	2421,
	0,
	'value',
	2423,
	6,
	22);
INSERT INTO V_VAL
	VALUES (2423,
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
	2362);
INSERT INTO V_LIN
	VALUES (2423,
	'2');
INSERT INTO V_PAR
	VALUES (2423,
	2421,
	0,
	'unit',
	0,
	6,
	42);
INSERT INTO ACT_BLK
	VALUES (2365,
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
	2353,
	0);
INSERT INTO ACT_SMT
	VALUES (2424,
	2365,
	0,
	8,
	3,
	'setData line: 8');
INSERT INTO ACT_BRG
	VALUES (2424,
	2251,
	8,
	14,
	8,
	3);
INSERT INTO V_VAL
	VALUES (2425,
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
	2365);
INSERT INTO V_PVL
	VALUES (2425,
	0,
	2351,
	0,
	0);
INSERT INTO V_PAR
	VALUES (2425,
	2424,
	0,
	'value',
	2426,
	8,
	22);
INSERT INTO V_VAL
	VALUES (2426,
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
	2365);
INSERT INTO V_LIN
	VALUES (2426,
	'3');
INSERT INTO V_PAR
	VALUES (2426,
	2424,
	0,
	'unit',
	0,
	8,
	42);
INSERT INTO ACT_BLK
	VALUES (2368,
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
	2353,
	0);
INSERT INTO ACT_SMT
	VALUES (2427,
	2368,
	0,
	10,
	3,
	'setData line: 10');
INSERT INTO ACT_BRG
	VALUES (2427,
	2251,
	10,
	14,
	10,
	3);
INSERT INTO V_VAL
	VALUES (2428,
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
	2368);
INSERT INTO V_PVL
	VALUES (2428,
	0,
	2351,
	0,
	0);
INSERT INTO V_PAR
	VALUES (2428,
	2427,
	0,
	'value',
	2429,
	10,
	22);
INSERT INTO V_VAL
	VALUES (2429,
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
	2368);
INSERT INTO V_LIN
	VALUES (2429,
	'4');
INSERT INTO V_PAR
	VALUES (2429,
	2427,
	0,
	'unit',
	0,
	10,
	42);
INSERT INTO ACT_BLK
	VALUES (2371,
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
	2353,
	0);
INSERT INTO ACT_SMT
	VALUES (2430,
	2371,
	0,
	12,
	3,
	'setData line: 12');
INSERT INTO ACT_BRG
	VALUES (2430,
	2251,
	12,
	14,
	12,
	3);
INSERT INTO V_VAL
	VALUES (2431,
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
	2371);
INSERT INTO V_PVL
	VALUES (2431,
	0,
	2351,
	0,
	0);
INSERT INTO V_PAR
	VALUES (2431,
	2430,
	0,
	'value',
	2432,
	12,
	22);
INSERT INTO V_VAL
	VALUES (2432,
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
	2371);
INSERT INTO V_LIN
	VALUES (2432,
	'5');
INSERT INTO V_PAR
	VALUES (2432,
	2430,
	0,
	'unit',
	0,
	12,
	42);
INSERT INTO ACT_BLK
	VALUES (2374,
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
	2353,
	0);
INSERT INTO ACT_SMT
	VALUES (2433,
	2374,
	0,
	14,
	3,
	'setData line: 14');
INSERT INTO ACT_BRG
	VALUES (2433,
	2251,
	14,
	14,
	14,
	3);
INSERT INTO V_VAL
	VALUES (2434,
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
	2374);
INSERT INTO V_PVL
	VALUES (2434,
	0,
	2351,
	0,
	0);
INSERT INTO V_PAR
	VALUES (2434,
	2433,
	0,
	'value',
	2435,
	14,
	22);
INSERT INTO V_VAL
	VALUES (2435,
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
	2374);
INSERT INTO V_LIN
	VALUES (2435,
	'6');
INSERT INTO V_PAR
	VALUES (2435,
	2433,
	0,
	'unit',
	0,
	14,
	42);
INSERT INTO ACT_BLK
	VALUES (2377,
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
	2353,
	0);
INSERT INTO ACT_SMT
	VALUES (2436,
	2377,
	0,
	16,
	3,
	'setData line: 16');
INSERT INTO ACT_BRG
	VALUES (2436,
	2251,
	16,
	14,
	16,
	3);
INSERT INTO V_VAL
	VALUES (2437,
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
	2377);
INSERT INTO V_PVL
	VALUES (2437,
	0,
	2351,
	0,
	0);
INSERT INTO V_PAR
	VALUES (2437,
	2436,
	0,
	'value',
	2438,
	16,
	22);
INSERT INTO V_VAL
	VALUES (2438,
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
	2377);
INSERT INTO V_LIN
	VALUES (2438,
	'7');
INSERT INTO V_PAR
	VALUES (2438,
	2436,
	0,
	'unit',
	0,
	16,
	42);
INSERT INTO ACT_BLK
	VALUES (2380,
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
	2353,
	0);
INSERT INTO ACT_SMT
	VALUES (2439,
	2380,
	0,
	18,
	3,
	'setData line: 18');
INSERT INTO ACT_BRG
	VALUES (2439,
	2251,
	18,
	14,
	18,
	3);
INSERT INTO V_VAL
	VALUES (2440,
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
	2380);
INSERT INTO V_PVL
	VALUES (2440,
	0,
	2351,
	0,
	0);
INSERT INTO V_PAR
	VALUES (2440,
	2439,
	0,
	'value',
	2441,
	18,
	22);
INSERT INTO V_VAL
	VALUES (2441,
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
	2380);
INSERT INTO V_LIN
	VALUES (2441,
	'8');
INSERT INTO V_PAR
	VALUES (2441,
	2439,
	0,
	'unit',
	0,
	18,
	42);
INSERT INTO ACT_BLK
	VALUES (2383,
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
	2353,
	0);
INSERT INTO ACT_SMT
	VALUES (2442,
	2383,
	0,
	20,
	3,
	'setData line: 20');
INSERT INTO ACT_BRG
	VALUES (2442,
	2251,
	20,
	14,
	20,
	3);
INSERT INTO V_VAL
	VALUES (2443,
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
	2383);
INSERT INTO V_PVL
	VALUES (2443,
	0,
	2351,
	0,
	0);
INSERT INTO V_PAR
	VALUES (2443,
	2442,
	0,
	'value',
	2444,
	20,
	22);
INSERT INTO V_VAL
	VALUES (2444,
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
	2383);
INSERT INTO V_LIN
	VALUES (2444,
	'9');
INSERT INTO V_PAR
	VALUES (2444,
	2442,
	0,
	'unit',
	0,
	20,
	42);
INSERT INTO ACT_BLK
	VALUES (2386,
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
	2353,
	0);
INSERT INTO ACT_SMT
	VALUES (2445,
	2386,
	0,
	22,
	3,
	'setData line: 22');
INSERT INTO ACT_BRG
	VALUES (2445,
	2251,
	22,
	14,
	22,
	3);
INSERT INTO V_VAL
	VALUES (2446,
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
	2386);
INSERT INTO V_PVL
	VALUES (2446,
	0,
	2351,
	0,
	0);
INSERT INTO V_PAR
	VALUES (2446,
	2445,
	0,
	'value',
	2447,
	22,
	22);
INSERT INTO V_VAL
	VALUES (2447,
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
	2386);
INSERT INTO V_LIN
	VALUES (2447,
	'10');
INSERT INTO V_PAR
	VALUES (2447,
	2445,
	0,
	'unit',
	0,
	22,
	42);
INSERT INTO PE_PE
	VALUES (1948,
	1,
	2008,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (1948,
	0,
	'setTime',
	'',
	'GuiBridge::setTime(time: param.time);',
	294,
	1,
	'');
INSERT INTO S_SPARM
	VALUES (2448,
	1948,
	'time',
	188,
	0,
	'',
	0,
	'');
INSERT INTO ACT_FNB
	VALUES (2449,
	1948);
INSERT INTO ACT_ACT
	VALUES (2449,
	'function',
	0,
	2450,
	0,
	0,
	'setTime',
	0);
INSERT INTO ACT_BLK
	VALUES (2450,
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
	2449,
	0);
INSERT INTO ACT_SMT
	VALUES (2451,
	2450,
	0,
	1,
	1,
	'setTime line: 1');
INSERT INTO ACT_BRG
	VALUES (2451,
	2256,
	1,
	12,
	1,
	1);
INSERT INTO V_VAL
	VALUES (2452,
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
	2450);
INSERT INTO V_PVL
	VALUES (2452,
	0,
	2448,
	0,
	0);
INSERT INTO V_PAR
	VALUES (2452,
	2451,
	0,
	'time',
	0,
	1,
	20);
INSERT INTO PE_PE
	VALUES (1970,
	1,
	2008,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (1970,
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
	294,
	1,
	'');
INSERT INTO S_SPARM
	VALUES (2453,
	1970,
	'indicator',
	180,
	0,
	'',
	0,
	'');
INSERT INTO ACT_FNB
	VALUES (2454,
	1970);
INSERT INTO ACT_ACT
	VALUES (2454,
	'function',
	0,
	2455,
	0,
	0,
	'setIndicator',
	0);
INSERT INTO ACT_BLK
	VALUES (2455,
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
	2454,
	0);
INSERT INTO ACT_SMT
	VALUES (2456,
	2455,
	0,
	2,
	1,
	'setIndicator line: 2');
INSERT INTO ACT_IF
	VALUES (2456,
	2457,
	2458,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2459,
	2455,
	0,
	4,
	1,
	'setIndicator line: 4');
INSERT INTO ACT_EL
	VALUES (2459,
	2460,
	2461,
	2456);
INSERT INTO ACT_SMT
	VALUES (2462,
	2455,
	0,
	6,
	1,
	'setIndicator line: 6');
INSERT INTO ACT_EL
	VALUES (2462,
	2463,
	2464,
	2456);
INSERT INTO ACT_SMT
	VALUES (2465,
	2455,
	0,
	8,
	1,
	'setIndicator line: 8');
INSERT INTO ACT_EL
	VALUES (2465,
	2466,
	2467,
	2456);
INSERT INTO V_VAL
	VALUES (2468,
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
	2455);
INSERT INTO V_PVL
	VALUES (2468,
	0,
	2453,
	0,
	0);
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
	295,
	2455);
INSERT INTO V_BIN
	VALUES (2458,
	2469,
	2468,
	'==');
INSERT INTO V_VAL
	VALUES (2469,
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
	2455);
INSERT INTO V_LEN
	VALUES (2469,
	690,
	2,
	25);
INSERT INTO V_VAL
	VALUES (2470,
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
	2455);
INSERT INTO V_PVL
	VALUES (2470,
	0,
	2453,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2461,
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
	2455);
INSERT INTO V_BIN
	VALUES (2461,
	2471,
	2470,
	'==');
INSERT INTO V_VAL
	VALUES (2471,
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
	2455);
INSERT INTO V_LEN
	VALUES (2471,
	718,
	4,
	27);
INSERT INTO V_VAL
	VALUES (2472,
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
	2455);
INSERT INTO V_PVL
	VALUES (2472,
	0,
	2453,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2464,
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
	2455);
INSERT INTO V_BIN
	VALUES (2464,
	2473,
	2472,
	'==');
INSERT INTO V_VAL
	VALUES (2473,
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
	2455);
INSERT INTO V_LEN
	VALUES (2473,
	722,
	6,
	27);
INSERT INTO V_VAL
	VALUES (2474,
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
	2455);
INSERT INTO V_PVL
	VALUES (2474,
	0,
	2453,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2467,
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
	2455);
INSERT INTO V_BIN
	VALUES (2467,
	2475,
	2474,
	'==');
INSERT INTO V_VAL
	VALUES (2475,
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
	2455);
INSERT INTO V_LEN
	VALUES (2475,
	714,
	8,
	27);
INSERT INTO ACT_BLK
	VALUES (2457,
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
	2454,
	0);
INSERT INTO ACT_SMT
	VALUES (2476,
	2457,
	0,
	3,
	3,
	'setIndicator line: 3');
INSERT INTO ACT_BRG
	VALUES (2476,
	2262,
	3,
	14,
	3,
	3);
INSERT INTO V_VAL
	VALUES (2477,
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
	2457);
INSERT INTO V_LIN
	VALUES (2477,
	'0');
INSERT INTO V_PAR
	VALUES (2477,
	2476,
	0,
	'value',
	0,
	3,
	28);
INSERT INTO ACT_BLK
	VALUES (2460,
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
	2454,
	0);
INSERT INTO ACT_SMT
	VALUES (2478,
	2460,
	0,
	5,
	3,
	'setIndicator line: 5');
INSERT INTO ACT_BRG
	VALUES (2478,
	2262,
	5,
	14,
	5,
	3);
INSERT INTO V_VAL
	VALUES (2479,
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
	2460);
INSERT INTO V_LIN
	VALUES (2479,
	'1');
INSERT INTO V_PAR
	VALUES (2479,
	2478,
	0,
	'value',
	0,
	5,
	28);
INSERT INTO ACT_BLK
	VALUES (2463,
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
	2454,
	0);
INSERT INTO ACT_SMT
	VALUES (2480,
	2463,
	0,
	7,
	3,
	'setIndicator line: 7');
INSERT INTO ACT_BRG
	VALUES (2480,
	2262,
	7,
	14,
	7,
	3);
INSERT INTO V_VAL
	VALUES (2481,
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
	2463);
INSERT INTO V_LIN
	VALUES (2481,
	'2');
INSERT INTO V_PAR
	VALUES (2481,
	2480,
	0,
	'value',
	0,
	7,
	28);
INSERT INTO ACT_BLK
	VALUES (2466,
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
	2454,
	0);
INSERT INTO ACT_SMT
	VALUES (2482,
	2466,
	0,
	9,
	3,
	'setIndicator line: 9');
INSERT INTO ACT_BRG
	VALUES (2482,
	2262,
	9,
	14,
	9,
	3);
INSERT INTO V_VAL
	VALUES (2483,
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
	2466);
INSERT INTO V_LIN
	VALUES (2483,
	'3');
INSERT INTO V_PAR
	VALUES (2483,
	2482,
	0,
	'value',
	0,
	9,
	28);
INSERT INTO PE_PE
	VALUES (1977,
	1,
	2008,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (1977,
	0,
	'newGoalSpec',
	'',
	'',
	294,
	1,
	'');
INSERT INTO S_SPARM
	VALUES (2484,
	1977,
	'sequenceNumber',
	188,
	0,
	'',
	0,
	'');
INSERT INTO S_SPARM
	VALUES (2485,
	1977,
	'minimum',
	133,
	0,
	'',
	2484,
	'');
INSERT INTO S_SPARM
	VALUES (2486,
	1977,
	'maximum',
	133,
	0,
	'',
	2485,
	'');
INSERT INTO S_SPARM
	VALUES (2487,
	1977,
	'span',
	133,
	0,
	'',
	2486,
	'');
INSERT INTO S_SPARM
	VALUES (2488,
	1977,
	'criteriaType',
	204,
	0,
	'',
	2487,
	'');
INSERT INTO S_SPARM
	VALUES (2489,
	1977,
	'spanType',
	207,
	0,
	'',
	2488,
	'');
INSERT INTO ACT_FNB
	VALUES (2490,
	1977);
INSERT INTO ACT_ACT
	VALUES (2490,
	'function',
	0,
	2491,
	0,
	0,
	'newGoalSpec',
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
INSERT INTO PE_PE
	VALUES (2492,
	1,
	1943,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (2492,
	0,
	1942,
	'shared',
	'',
	0);
INSERT INTO PE_PE
	VALUES (90,
	1,
	2492,
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
	VALUES (1957,
	96,
	133,
	'value',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (1959,
	96,
	172,
	'unit',
	'',
	0,
	'',
	1957);
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
	VALUES (1972,
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
	VALUES (1979,
	108,
	188,
	'sequenceNumber',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (1981,
	108,
	133,
	'minimum',
	'',
	0,
	'',
	1979);
INSERT INTO C_PP
	VALUES (1983,
	108,
	133,
	'maximum',
	'',
	0,
	'',
	1981);
INSERT INTO C_PP
	VALUES (1985,
	108,
	133,
	'span',
	'',
	0,
	'',
	1983);
INSERT INTO C_PP
	VALUES (1987,
	108,
	204,
	'criteriaType',
	'',
	0,
	'',
	1985);
INSERT INTO C_PP
	VALUES (1989,
	108,
	207,
	'spanType',
	'',
	0,
	'',
	1987);
INSERT INTO PE_PE
	VALUES (251,
	1,
	2492,
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
INSERT INTO PE_PE
	VALUES (172,
	1,
	1943,
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
	VALUES (755,
	'km',
	'',
	172,
	0);
INSERT INTO S_ENUM
	VALUES (759,
	'meters',
	'',
	172,
	755);
INSERT INTO S_ENUM
	VALUES (800,
	'minPerKm',
	'',
	172,
	759);
INSERT INTO S_ENUM
	VALUES (779,
	'kmPerHour',
	'',
	172,
	800);
INSERT INTO S_ENUM
	VALUES (2398,
	'miles',
	'',
	172,
	779);
INSERT INTO S_ENUM
	VALUES (2401,
	'yards',
	'',
	172,
	2398);
INSERT INTO S_ENUM
	VALUES (2404,
	'feet',
	'',
	172,
	2401);
INSERT INTO S_ENUM
	VALUES (2407,
	'minPerMile',
	'',
	172,
	2404);
INSERT INTO S_ENUM
	VALUES (2410,
	'mph',
	'',
	172,
	2407);
INSERT INTO S_ENUM
	VALUES (821,
	'bpm',
	'',
	172,
	2410);
INSERT INTO S_ENUM
	VALUES (839,
	'laps',
	'',
	172,
	821);
INSERT INTO PE_PE
	VALUES (180,
	1,
	1943,
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
	VALUES (690,
	'Blank',
	'',
	180,
	0);
INSERT INTO S_ENUM
	VALUES (718,
	'Down',
	'',
	180,
	690);
INSERT INTO S_ENUM
	VALUES (722,
	'Flat',
	'',
	180,
	718);
INSERT INTO S_ENUM
	VALUES (714,
	'Up',
	'',
	180,
	722);
-- root-types-contained: SystemModel_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES (2493,
	'HeartRateMonitor',
	1);
INSERT INTO EP_PKG
	VALUES (2494,
	2493,
	2493,
	'HeartRateMonitor',
	'',
	0);
INSERT INTO PE_PE
	VALUES (4,
	1,
	2494,
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
	VALUES (2495,
	81,
	8);
INSERT INTO SPR_PO
	VALUES (2495,
	'registerListener',
	'',
	'generate HeartRateMonitor_A1:registerListener() to HeartRateMonitor class;

',
	1);
INSERT INTO ACT_POB
	VALUES (2496,
	2495);
INSERT INTO ACT_ACT
	VALUES (2496,
	'interface operation',
	0,
	2497,
	0,
	0,
	'HeartRateMonitor::HeartRateMonitor::registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2497,
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
	2496,
	0);
INSERT INTO ACT_SMT
	VALUES (2498,
	2497,
	0,
	1,
	1,
	'HeartRateMonitor::HeartRateMonitor::registerListener line: 1');
INSERT INTO E_ESS
	VALUES (2498,
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
	VALUES (2498);
INSERT INTO E_GSME
	VALUES (2498,
	2499);
INSERT INTO E_GAR
	VALUES (2498);
INSERT INTO SPR_PEP
	VALUES (2500,
	85,
	8);
INSERT INTO SPR_PO
	VALUES (2500,
	'unregisterListener',
	'',
	'generate HeartRateMonitor_A2:unregisterListener() to HeartRateMonitor class;

',
	1);
INSERT INTO ACT_POB
	VALUES (2501,
	2500);
INSERT INTO ACT_ACT
	VALUES (2501,
	'interface operation',
	0,
	2502,
	0,
	0,
	'HeartRateMonitor::HeartRateMonitor::unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2502,
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
	2501,
	0);
INSERT INTO ACT_SMT
	VALUES (2503,
	2502,
	0,
	1,
	1,
	'HeartRateMonitor::HeartRateMonitor::unregisterListener line: 1');
INSERT INTO E_ESS
	VALUES (2503,
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
	VALUES (2503);
INSERT INTO E_GSME
	VALUES (2503,
	2504);
INSERT INTO E_GAR
	VALUES (2503);
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
	VALUES (2505,
	243,
	13);
INSERT INTO SPR_RO
	VALUES (2505,
	'heartRateChanged',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2506,
	2505);
INSERT INTO ACT_ACT
	VALUES (2506,
	'interface operation',
	0,
	2507,
	0,
	0,
	'Unspecified::HeartRateMonitorUnspecified::heartRateChanged',
	0);
INSERT INTO ACT_BLK
	VALUES (2507,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2506,
	0);
INSERT INTO PE_PE
	VALUES (2508,
	1,
	0,
	4,
	7);
INSERT INTO EP_PKG
	VALUES (2508,
	0,
	2493,
	'HeartRateMonitor',
	'',
	0);
INSERT INTO PE_PE
	VALUES (2509,
	1,
	2508,
	0,
	5);
INSERT INTO S_EE
	VALUES (2509,
	'Logging',
	'',
	'LOG',
	0,
	'',
	'Logging',
	1);
INSERT INTO S_BRG
	VALUES (2510,
	2509,
	'LogSuccess',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2511,
	2510,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2512,
	2510);
INSERT INTO ACT_ACT
	VALUES (2512,
	'bridge',
	0,
	2513,
	0,
	0,
	'Logging::LogSuccess',
	0);
INSERT INTO ACT_BLK
	VALUES (2513,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2512,
	0);
INSERT INTO S_BRG
	VALUES (2514,
	2509,
	'LogFailure',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2515,
	2514,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2516,
	2514);
INSERT INTO ACT_ACT
	VALUES (2516,
	'bridge',
	0,
	2517,
	0,
	0,
	'Logging::LogFailure',
	0);
INSERT INTO ACT_BLK
	VALUES (2517,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2516,
	0);
INSERT INTO S_BRG
	VALUES (2518,
	2509,
	'LogInfo',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2519,
	2518,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2520,
	2518);
INSERT INTO ACT_ACT
	VALUES (2520,
	'bridge',
	0,
	2521,
	0,
	0,
	'Logging::LogInfo',
	0);
INSERT INTO ACT_BLK
	VALUES (2521,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2520,
	0);
INSERT INTO S_BRG
	VALUES (2522,
	2509,
	'LogDate',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2523,
	2522,
	'd',
	306,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2524,
	2522,
	'message',
	296,
	0,
	'',
	2523,
	'');
INSERT INTO ACT_BRB
	VALUES (2525,
	2522);
INSERT INTO ACT_ACT
	VALUES (2525,
	'bridge',
	0,
	2526,
	0,
	0,
	'Logging::LogDate',
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
	2509,
	'LogTime',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2528,
	2527,
	't',
	308,
	0,
	'',
	2529,
	'');
INSERT INTO S_BPARM
	VALUES (2529,
	2527,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2530,
	2527);
INSERT INTO ACT_ACT
	VALUES (2530,
	'bridge',
	0,
	2531,
	0,
	0,
	'Logging::LogTime',
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
INSERT INTO S_BRG
	VALUES (2532,
	2509,
	'LogReal',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2533,
	2532,
	'r',
	133,
	0,
	'',
	2534,
	'');
INSERT INTO S_BPARM
	VALUES (2534,
	2532,
	'message',
	296,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2535,
	2532);
INSERT INTO ACT_ACT
	VALUES (2535,
	'bridge',
	0,
	2536,
	0,
	0,
	'Logging::LogReal',
	0);
INSERT INTO ACT_BLK
	VALUES (2536,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2535,
	0);
INSERT INTO S_BRG
	VALUES (2537,
	2509,
	'LogInteger',
	'',
	0,
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2538,
	2537,
	'message',
	188,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2539,
	2537);
INSERT INTO ACT_ACT
	VALUES (2539,
	'bridge',
	0,
	2540,
	0,
	0,
	'Logging::LogInteger',
	0);
INSERT INTO ACT_BLK
	VALUES (2540,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2539,
	0);
INSERT INTO PE_PE
	VALUES (2541,
	1,
	2508,
	0,
	5);
INSERT INTO S_EE
	VALUES (2541,
	'Time',
	'The Time external entity provides date, timestamp, and timer related operations.',
	'TIM',
	0,
	'',
	'Time',
	1);
INSERT INTO S_BRG
	VALUES (2542,
	2541,
	'current_date',
	'',
	1,
	306,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (2543,
	2542);
INSERT INTO ACT_ACT
	VALUES (2543,
	'bridge',
	0,
	2544,
	0,
	0,
	'Time::current_date',
	0);
INSERT INTO ACT_BLK
	VALUES (2544,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2543,
	0);
INSERT INTO S_BRG
	VALUES (2545,
	2541,
	'create_date',
	'',
	1,
	306,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2546,
	2545,
	'second',
	188,
	0,
	'',
	2547,
	'');
INSERT INTO S_BPARM
	VALUES (2548,
	2545,
	'minute',
	188,
	0,
	'',
	2549,
	'');
INSERT INTO S_BPARM
	VALUES (2549,
	2545,
	'hour',
	188,
	0,
	'',
	2550,
	'');
INSERT INTO S_BPARM
	VALUES (2550,
	2545,
	'day',
	188,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2547,
	2545,
	'month',
	188,
	0,
	'',
	2548,
	'');
INSERT INTO S_BPARM
	VALUES (2551,
	2545,
	'year',
	188,
	0,
	'',
	2546,
	'');
INSERT INTO ACT_BRB
	VALUES (2552,
	2545);
INSERT INTO ACT_ACT
	VALUES (2552,
	'bridge',
	0,
	2553,
	0,
	0,
	'Time::create_date',
	0);
INSERT INTO ACT_BLK
	VALUES (2553,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2552,
	0);
INSERT INTO S_BRG
	VALUES (2554,
	2541,
	'get_second',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2555,
	2554,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2556,
	2554);
INSERT INTO ACT_ACT
	VALUES (2556,
	'bridge',
	0,
	2557,
	0,
	0,
	'Time::get_second',
	0);
INSERT INTO ACT_BLK
	VALUES (2557,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2556,
	0);
INSERT INTO S_BRG
	VALUES (2558,
	2541,
	'get_minute',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2559,
	2558,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2560,
	2558);
INSERT INTO ACT_ACT
	VALUES (2560,
	'bridge',
	0,
	2561,
	0,
	0,
	'Time::get_minute',
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
INSERT INTO S_BRG
	VALUES (2562,
	2541,
	'get_hour',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2563,
	2562,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2564,
	2562);
INSERT INTO ACT_ACT
	VALUES (2564,
	'bridge',
	0,
	2565,
	0,
	0,
	'Time::get_hour',
	0);
INSERT INTO ACT_BLK
	VALUES (2565,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2564,
	0);
INSERT INTO S_BRG
	VALUES (2566,
	2541,
	'get_day',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2567,
	2566,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2568,
	2566);
INSERT INTO ACT_ACT
	VALUES (2568,
	'bridge',
	0,
	2569,
	0,
	0,
	'Time::get_day',
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
	2541,
	'get_month',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2571,
	2570,
	'date',
	306,
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
	'Time::get_month',
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
INSERT INTO S_BRG
	VALUES (2574,
	2541,
	'get_year',
	'',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2575,
	2574,
	'date',
	306,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2576,
	2574);
INSERT INTO ACT_ACT
	VALUES (2576,
	'bridge',
	0,
	2577,
	0,
	0,
	'Time::get_year',
	0);
INSERT INTO ACT_BLK
	VALUES (2577,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2576,
	0);
INSERT INTO S_BRG
	VALUES (2578,
	2541,
	'current_clock',
	'',
	1,
	308,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (2579,
	2578);
INSERT INTO ACT_ACT
	VALUES (2579,
	'bridge',
	0,
	2580,
	0,
	0,
	'Time::current_clock',
	0);
INSERT INTO ACT_BLK
	VALUES (2580,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
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
INSERT INTO S_BRG
	VALUES (2581,
	2541,
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
	VALUES (2582,
	2581,
	'microseconds',
	188,
	0,
	'',
	2583,
	'');
INSERT INTO S_BPARM
	VALUES (2583,
	2581,
	'event_inst',
	302,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2584,
	2581);
INSERT INTO ACT_ACT
	VALUES (2584,
	'bridge',
	0,
	2585,
	0,
	0,
	'Time::timer_start',
	0);
INSERT INTO ACT_BLK
	VALUES (2585,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2584,
	0);
INSERT INTO S_BRG
	VALUES (2586,
	2541,
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
	VALUES (2587,
	2586,
	'microseconds',
	188,
	0,
	'',
	2588,
	'');
INSERT INTO S_BPARM
	VALUES (2588,
	2586,
	'event_inst',
	302,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2589,
	2586);
INSERT INTO ACT_ACT
	VALUES (2589,
	'bridge',
	0,
	2590,
	0,
	0,
	'Time::timer_start_recurring',
	0);
INSERT INTO ACT_BLK
	VALUES (2590,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2589,
	0);
INSERT INTO S_BRG
	VALUES (2591,
	2541,
	'timer_remaining_time',
	'Returns the time remaining (in microseconds) for the passed timer instance. If
the timer has expired, a zero value is returned.',
	1,
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2592,
	2591,
	'timer_inst_ref',
	307,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2593,
	2591);
INSERT INTO ACT_ACT
	VALUES (2593,
	'bridge',
	0,
	2594,
	0,
	0,
	'Time::timer_remaining_time',
	0);
INSERT INTO ACT_BLK
	VALUES (2594,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2593,
	0);
INSERT INTO S_BRG
	VALUES (2595,
	2541,
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
	VALUES (2596,
	2595,
	'timer_inst_ref',
	307,
	0,
	'',
	2597,
	'');
INSERT INTO S_BPARM
	VALUES (2597,
	2595,
	'microseconds',
	188,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2598,
	2595);
INSERT INTO ACT_ACT
	VALUES (2598,
	'bridge',
	0,
	2599,
	0,
	0,
	'Time::timer_reset_time',
	0);
INSERT INTO ACT_BLK
	VALUES (2599,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
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
INSERT INTO S_BRG
	VALUES (2600,
	2541,
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
	VALUES (2601,
	2600,
	'timer_inst_ref',
	307,
	0,
	'',
	2602,
	'');
INSERT INTO S_BPARM
	VALUES (2602,
	2600,
	'microseconds',
	188,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2603,
	2600);
INSERT INTO ACT_ACT
	VALUES (2603,
	'bridge',
	0,
	2604,
	0,
	0,
	'Time::timer_add_time',
	0);
INSERT INTO ACT_BLK
	VALUES (2604,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
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
INSERT INTO S_BRG
	VALUES (2605,
	2541,
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
	VALUES (2606,
	2605,
	'timer_inst_ref',
	307,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2607,
	2605);
INSERT INTO ACT_ACT
	VALUES (2607,
	'bridge',
	0,
	2608,
	0,
	0,
	'Time::timer_cancel',
	0);
INSERT INTO ACT_BLK
	VALUES (2608,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2607,
	0);
INSERT INTO PE_PE
	VALUES (2609,
	1,
	2508,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (2609,
	'HeartRateMonitor',
	1,
	'HeartRateMonitor',
	'Represents the heart-rate monitoring facility.',
	0);
INSERT INTO O_NBATTR
	VALUES (2610,
	2609);
INSERT INTO O_BATTR
	VALUES (2610,
	2609);
INSERT INTO O_ATTR
	VALUES (2610,
	2609,
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
	VALUES (2611,
	2609);
INSERT INTO O_BATTR
	VALUES (2611,
	2609);
INSERT INTO O_ATTR
	VALUES (2611,
	2609,
	2610,
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
	2609);
INSERT INTO O_ID
	VALUES (1,
	2609);
INSERT INTO O_ID
	VALUES (2,
	2609);
INSERT INTO SM_ASM
	VALUES (2612,
	2609);
INSERT INTO SM_SM
	VALUES (2612,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (2612);
INSERT INTO SM_LEVT
	VALUES (2613,
	2612,
	0);
INSERT INTO SM_SEVT
	VALUES (2613,
	2612,
	0);
INSERT INTO SM_EVT
	VALUES (2613,
	2612,
	0,
	3,
	'timeout',
	0,
	'',
	'HeartRateMonitor_A3',
	'');
INSERT INTO SM_LEVT
	VALUES (2499,
	2612,
	0);
INSERT INTO SM_SEVT
	VALUES (2499,
	2612,
	0);
INSERT INTO SM_EVT
	VALUES (2499,
	2612,
	0,
	1,
	'registerListener',
	0,
	'',
	'HeartRateMonitor_A1',
	'');
INSERT INTO SM_LEVT
	VALUES (2504,
	2612,
	0);
INSERT INTO SM_SEVT
	VALUES (2504,
	2612,
	0);
INSERT INTO SM_EVT
	VALUES (2504,
	2612,
	0,
	2,
	'unregisterListener',
	0,
	'',
	'HeartRateMonitor_A2',
	'');
INSERT INTO SM_STATE
	VALUES (2614,
	2612,
	0,
	'idle',
	1,
	0);
INSERT INTO SM_EIGN
	VALUES (2614,
	2613,
	2612,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2614,
	2613,
	2612,
	0);
INSERT INTO SM_SEME
	VALUES (2614,
	2499,
	2612,
	0);
INSERT INTO SM_CH
	VALUES (2614,
	2504,
	2612,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2614,
	2504,
	2612,
	0);
INSERT INTO SM_MOAH
	VALUES (2615,
	2612,
	2614);
INSERT INTO SM_AH
	VALUES (2615,
	2612);
INSERT INTO SM_ACT
	VALUES (2615,
	2612,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (2616,
	2612,
	2615);
INSERT INTO ACT_ACT
	VALUES (2616,
	'class state',
	0,
	2617,
	0,
	0,
	'HeartRateMonitor::idle',
	0);
INSERT INTO ACT_BLK
	VALUES (2617,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2616,
	0);
INSERT INTO SM_STATE
	VALUES (2618,
	2612,
	0,
	'monitoring',
	2,
	0);
INSERT INTO SM_SEME
	VALUES (2618,
	2613,
	2612,
	0);
INSERT INTO SM_CH
	VALUES (2618,
	2499,
	2612,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2618,
	2499,
	2612,
	0);
INSERT INTO SM_SEME
	VALUES (2618,
	2504,
	2612,
	0);
INSERT INTO SM_MOAH
	VALUES (2619,
	2612,
	2618);
INSERT INTO SM_AH
	VALUES (2619,
	2612);
INSERT INTO SM_ACT
	VALUES (2619,
	2612,
	1,
	'select any monitor from instances of HeartRateMonitor;
send Unspecified::heartRateChanged(heartRate: monitor.recentHeartRate);
monitor.recentHeartRate = monitor.recentHeartRate + 1;',
	'');
INSERT INTO ACT_SAB
	VALUES (2620,
	2612,
	2619);
INSERT INTO ACT_ACT
	VALUES (2620,
	'class state',
	0,
	2621,
	0,
	0,
	'HeartRateMonitor::monitoring',
	0);
INSERT INTO ACT_BLK
	VALUES (2621,
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
	2620,
	0);
INSERT INTO ACT_SMT
	VALUES (2622,
	2621,
	2623,
	1,
	1,
	'HeartRateMonitor::monitoring line: 1');
INSERT INTO ACT_FIO
	VALUES (2622,
	2624,
	1,
	'any',
	2609,
	1,
	38);
INSERT INTO ACT_SMT
	VALUES (2623,
	2621,
	2625,
	2,
	1,
	'HeartRateMonitor::monitoring line: 2');
INSERT INTO ACT_IOP
	VALUES (2623,
	2,
	19,
	2,
	6,
	0,
	2505,
	0);
INSERT INTO ACT_SMT
	VALUES (2625,
	2621,
	0,
	3,
	1,
	'HeartRateMonitor::monitoring line: 3');
INSERT INTO ACT_AI
	VALUES (2625,
	2626,
	2627,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2628,
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
	2621);
INSERT INTO V_IRF
	VALUES (2628,
	2624);
INSERT INTO V_VAL
	VALUES (2629,
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
	2621);
INSERT INTO V_AVL
	VALUES (2629,
	2628,
	2609,
	2610);
INSERT INTO V_PAR
	VALUES (2629,
	2623,
	0,
	'heartRate',
	0,
	2,
	36);
INSERT INTO V_VAL
	VALUES (2630,
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
	2621);
INSERT INTO V_IRF
	VALUES (2630,
	2624);
INSERT INTO V_VAL
	VALUES (2627,
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
	2621);
INSERT INTO V_AVL
	VALUES (2627,
	2630,
	2609,
	2610);
INSERT INTO V_VAL
	VALUES (2631,
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
	2621);
INSERT INTO V_IRF
	VALUES (2631,
	2624);
INSERT INTO V_VAL
	VALUES (2632,
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
	2621);
INSERT INTO V_AVL
	VALUES (2632,
	2631,
	2609,
	2610);
INSERT INTO V_VAL
	VALUES (2626,
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
	2621);
INSERT INTO V_BIN
	VALUES (2626,
	2633,
	2632,
	'+');
INSERT INTO V_VAL
	VALUES (2633,
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
	2621);
INSERT INTO V_LIN
	VALUES (2633,
	'1');
INSERT INTO V_VAR
	VALUES (2624,
	2621,
	'monitor',
	1,
	300);
INSERT INTO V_INT
	VALUES (2624,
	0,
	2609);
INSERT INTO SM_NSTXN
	VALUES (2634,
	2612,
	2614,
	2499,
	0);
INSERT INTO SM_TAH
	VALUES (2635,
	2612,
	2634);
INSERT INTO SM_AH
	VALUES (2635,
	2612);
INSERT INTO SM_ACT
	VALUES (2635,
	2612,
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
	VALUES (2636,
	2612,
	2635);
INSERT INTO ACT_ACT
	VALUES (2636,
	'class transition',
	0,
	2637,
	0,
	0,
	'HeartRateMonitor_A1: registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2637,
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
	2636,
	0);
INSERT INTO ACT_SMT
	VALUES (2638,
	2637,
	2639,
	2,
	1,
	'HeartRateMonitor_A1: registerListener line: 2');
INSERT INTO ACT_FIO
	VALUES (2638,
	2640,
	1,
	'any',
	2609,
	2,
	38);
INSERT INTO ACT_SMT
	VALUES (2639,
	2637,
	2641,
	3,
	1,
	'HeartRateMonitor_A1: registerListener line: 3');
INSERT INTO ACT_IF
	VALUES (2639,
	2642,
	2643,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2641,
	2637,
	2644,
	6,
	1,
	'HeartRateMonitor_A1: registerListener line: 6');
INSERT INTO ACT_AI
	VALUES (2641,
	2645,
	2646,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2644,
	2637,
	2647,
	8,
	1,
	'HeartRateMonitor_A1: registerListener line: 8');
INSERT INTO ACT_BRG
	VALUES (2644,
	2518,
	8,
	6,
	8,
	1);
INSERT INTO ACT_SMT
	VALUES (2647,
	2637,
	2648,
	11,
	1,
	'HeartRateMonitor_A1: registerListener line: 11');
INSERT INTO E_ESS
	VALUES (2647,
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
	VALUES (2647,
	1,
	2649);
INSERT INTO E_CSME
	VALUES (2647,
	2613);
INSERT INTO E_CEA
	VALUES (2647);
INSERT INTO ACT_SMT
	VALUES (2648,
	2637,
	0,
	12,
	1,
	'HeartRateMonitor_A1: registerListener line: 12');
INSERT INTO ACT_AI
	VALUES (2648,
	2650,
	2651,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2652,
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
	2637);
INSERT INTO V_IRF
	VALUES (2652,
	2640);
INSERT INTO V_VAL
	VALUES (2643,
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
	2637);
INSERT INTO V_UNY
	VALUES (2643,
	2652,
	'empty');
INSERT INTO V_VAL
	VALUES (2653,
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
	2637);
INSERT INTO V_IRF
	VALUES (2653,
	2640);
INSERT INTO V_VAL
	VALUES (2646,
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
	2637);
INSERT INTO V_AVL
	VALUES (2646,
	2653,
	2609,
	2610);
INSERT INTO V_VAL
	VALUES (2645,
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
	2637);
INSERT INTO V_LIN
	VALUES (2645,
	'50');
INSERT INTO V_VAL
	VALUES (2654,
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
	2637);
INSERT INTO V_LST
	VALUES (2654,
	'listener registered');
INSERT INTO V_PAR
	VALUES (2654,
	2644,
	0,
	'message',
	0,
	8,
	14);
INSERT INTO V_VAL
	VALUES (2655,
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
	2637);
INSERT INTO V_IRF
	VALUES (2655,
	2640);
INSERT INTO V_VAL
	VALUES (2651,
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
	2637);
INSERT INTO V_AVL
	VALUES (2651,
	2655,
	2609,
	2611);
INSERT INTO V_VAL
	VALUES (2650,
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
	2637);
INSERT INTO V_BRV
	VALUES (2650,
	2586,
	1,
	12,
	17);
INSERT INTO V_VAL
	VALUES (2656,
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
	2637);
INSERT INTO V_TVL
	VALUES (2656,
	2649);
INSERT INTO V_PAR
	VALUES (2656,
	0,
	2650,
	'event_inst',
	2657,
	12,
	45);
INSERT INTO V_VAL
	VALUES (2658,
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
	2637);
INSERT INTO V_SCV
	VALUES (2658,
	1360,
	188);
INSERT INTO V_VAL
	VALUES (2657,
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
	2637);
INSERT INTO V_BIN
	VALUES (2657,
	2659,
	2658,
	'*');
INSERT INTO V_PAR
	VALUES (2657,
	0,
	2650,
	'microseconds',
	0,
	12,
	66);
INSERT INTO V_VAL
	VALUES (2659,
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
	2637);
INSERT INTO V_LIN
	VALUES (2659,
	'1000000');
INSERT INTO V_VAR
	VALUES (2640,
	2637,
	'monitor',
	1,
	300);
INSERT INTO V_INT
	VALUES (2640,
	0,
	2609);
INSERT INTO V_VAR
	VALUES (2649,
	2637,
	'timeout',
	1,
	302);
INSERT INTO V_TRN
	VALUES (2649,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (2642,
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
	2636,
	0);
INSERT INTO ACT_SMT
	VALUES (2660,
	2642,
	0,
	4,
	3,
	'HeartRateMonitor_A1: registerListener line: 4');
INSERT INTO ACT_CR
	VALUES (2660,
	2640,
	0,
	2609,
	4,
	37);
INSERT INTO SM_TXN
	VALUES (2634,
	2612,
	2618,
	0);
INSERT INTO SM_NSTXN
	VALUES (2661,
	2612,
	2618,
	2504,
	0);
INSERT INTO SM_TAH
	VALUES (2662,
	2612,
	2661);
INSERT INTO SM_AH
	VALUES (2662,
	2612);
INSERT INTO SM_ACT
	VALUES (2662,
	2612,
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
	VALUES (2663,
	2612,
	2662);
INSERT INTO ACT_ACT
	VALUES (2663,
	'class transition',
	0,
	2664,
	0,
	0,
	'HeartRateMonitor_A2: unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2664,
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
	2663,
	0);
INSERT INTO ACT_SMT
	VALUES (2665,
	2664,
	2666,
	1,
	1,
	'HeartRateMonitor_A2: unregisterListener line: 1');
INSERT INTO ACT_FIO
	VALUES (2665,
	2667,
	1,
	'any',
	2609,
	1,
	38);
INSERT INTO ACT_SMT
	VALUES (2666,
	2664,
	2668,
	2,
	1,
	'HeartRateMonitor_A2: unregisterListener line: 2');
INSERT INTO ACT_AI
	VALUES (2666,
	2669,
	2670,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2668,
	2664,
	0,
	3,
	1,
	'HeartRateMonitor_A2: unregisterListener line: 3');
INSERT INTO ACT_IF
	VALUES (2668,
	2671,
	2672,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2673,
	2664,
	0,
	5,
	1,
	'HeartRateMonitor_A2: unregisterListener line: 5');
INSERT INTO ACT_E
	VALUES (2673,
	2674,
	2668);
INSERT INTO V_VAL
	VALUES (2670,
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
	2664);
INSERT INTO V_TVL
	VALUES (2670,
	2675);
INSERT INTO V_VAL
	VALUES (2669,
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
	2664);
INSERT INTO V_BRV
	VALUES (2669,
	2605,
	1,
	2,
	7);
INSERT INTO V_VAL
	VALUES (2676,
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
	2664);
INSERT INTO V_IRF
	VALUES (2676,
	2667);
INSERT INTO V_VAL
	VALUES (2677,
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
	2664);
INSERT INTO V_AVL
	VALUES (2677,
	2676,
	2609,
	2611);
INSERT INTO V_PAR
	VALUES (2677,
	0,
	2669,
	'timer_inst_ref',
	0,
	2,
	25);
INSERT INTO V_VAL
	VALUES (2672,
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
	2664);
INSERT INTO V_TVL
	VALUES (2672,
	2675);
INSERT INTO V_VAR
	VALUES (2667,
	2664,
	'monitor',
	1,
	300);
INSERT INTO V_INT
	VALUES (2667,
	0,
	2609);
INSERT INTO V_VAR
	VALUES (2675,
	2664,
	'res',
	1,
	295);
INSERT INTO V_TRN
	VALUES (2675,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (2671,
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
	2663,
	0);
INSERT INTO ACT_SMT
	VALUES (2678,
	2671,
	0,
	4,
	3,
	'HeartRateMonitor_A2: unregisterListener line: 4');
INSERT INTO ACT_BRG
	VALUES (2678,
	2510,
	4,
	8,
	4,
	3);
INSERT INTO V_VAL
	VALUES (2679,
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
	2671);
INSERT INTO V_LST
	VALUES (2679,
	'Heart Rate Monitor: timer_cancel() succeeded.');
INSERT INTO V_PAR
	VALUES (2679,
	2678,
	0,
	'message',
	0,
	4,
	20);
INSERT INTO ACT_BLK
	VALUES (2674,
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
	2663,
	0);
INSERT INTO ACT_SMT
	VALUES (2680,
	2674,
	0,
	6,
	3,
	'HeartRateMonitor_A2: unregisterListener line: 6');
INSERT INTO ACT_BRG
	VALUES (2680,
	2514,
	6,
	8,
	6,
	3);
INSERT INTO V_VAL
	VALUES (2681,
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
	2674);
INSERT INTO V_LST
	VALUES (2681,
	'Heart Rate Monitor: timer_cancel() failed.');
INSERT INTO V_PAR
	VALUES (2681,
	2680,
	0,
	'message',
	0,
	6,
	20);
INSERT INTO SM_TXN
	VALUES (2661,
	2612,
	2614,
	0);
INSERT INTO SM_NSTXN
	VALUES (2682,
	2612,
	2618,
	2613,
	0);
INSERT INTO SM_TAH
	VALUES (2683,
	2612,
	2682);
INSERT INTO SM_AH
	VALUES (2683,
	2612);
INSERT INTO SM_ACT
	VALUES (2683,
	2612,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2684,
	2612,
	2683);
INSERT INTO ACT_ACT
	VALUES (2684,
	'class transition',
	0,
	2685,
	0,
	0,
	'HeartRateMonitor_A3: timeout',
	0);
INSERT INTO ACT_BLK
	VALUES (2685,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2684,
	0);
INSERT INTO SM_TXN
	VALUES (2682,
	2612,
	2618,
	0);
INSERT INTO PE_PE
	VALUES (2686,
	1,
	2494,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (2686,
	0,
	2493,
	'shared',
	'',
	0);
INSERT INTO PE_PE
	VALUES (2687,
	1,
	2686,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (2687,
	'HeartRateConstants',
	'SamplingPeriod is expressed in seconds and represents the period at which heart-rate samples are recorded.
AveragingWindow is expressed in samples and represents the number of samples used when calculating the current average.');
INSERT INTO CNST_SYC
	VALUES (1362,
	'HeartRateAveragingWindow',
	'',
	188,
	2687,
	1360,
	188);
INSERT INTO CNST_LFSC
	VALUES (1362,
	188);
INSERT INTO CNST_LSC
	VALUES (1362,
	188,
	'5');
INSERT INTO CNST_SYC
	VALUES (1360,
	'HeartRateSamplingPeriod',
	'',
	188,
	2687,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (1360,
	188);
INSERT INTO CNST_LSC
	VALUES (1360,
	188,
	'3');
INSERT INTO PE_PE
	VALUES (79,
	1,
	2686,
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
	2686,
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
	VALUES (50,
	1,
	2689,
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
	61,
	0,
	51);
INSERT INTO C_P
	VALUES (54,
	'Location',
	'Unnamed Interface',
	'',
	'Location::Location::Location');
INSERT INTO SPR_PEP
	VALUES (2690,
	63,
	54);
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
	67,
	54);
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
	188,
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
	188,
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
	188,
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
	188,
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
	188,
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
	188,
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
	188,
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
	188,
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
	188,
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
	188,
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
	188,
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
	188,
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
	188,
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
	188,
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
	188,
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
	188,
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
	133,
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
	188,
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
	133,
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
	133,
	2695);
INSERT INTO V_SCV
	VALUES (2728,
	2729,
	133);
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
	133,
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
	188,
	2695);
INSERT INTO V_LIN
	VALUES (2730,
	'1000');
INSERT INTO V_VAR
	VALUES (2707,
	2695,
	'deltaLat',
	1,
	188);
INSERT INTO V_TRN
	VALUES (2707,
	0,
	'');
INSERT INTO V_VAR
	VALUES (2712,
	2695,
	'deltaLong',
	1,
	188);
INSERT INTO V_TRN
	VALUES (2712,
	0,
	'');
INSERT INTO V_VAR
	VALUES (2717,
	2695,
	'sumSquares',
	1,
	188);
INSERT INTO V_TRN
	VALUES (2717,
	0,
	'');
INSERT INTO SPR_PEP
	VALUES (2731,
	71,
	54);
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
	75,
	54);
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
	50,
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
	133,
	2738,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (2739,
	133);
INSERT INTO CNST_LSC
	VALUES (2739,
	133,
	'0.00002');
INSERT INTO CNST_SYC
	VALUES (2740,
	'latitudeIncrement',
	'',
	133,
	2738,
	2739,
	133);
INSERT INTO CNST_LFSC
	VALUES (2740,
	133);
INSERT INTO CNST_LSC
	VALUES (2740,
	133,
	'0.00001');
INSERT INTO CNST_SYC
	VALUES (2741,
	'initialLatitude',
	'',
	133,
	2738,
	2740,
	133);
INSERT INTO CNST_LFSC
	VALUES (2741,
	133);
INSERT INTO CNST_LSC
	VALUES (2741,
	133,
	'32.432237');
INSERT INTO CNST_SYC
	VALUES (2742,
	'initialLongitude',
	'',
	133,
	2738,
	2741,
	133);
INSERT INTO CNST_LFSC
	VALUES (2742,
	133);
INSERT INTO CNST_LSC
	VALUES (2742,
	133,
	'-110.812283');
INSERT INTO CNST_SYC
	VALUES (2743,
	'updatePeriod',
	'',
	188,
	2738,
	2742,
	133);
INSERT INTO CNST_LFSC
	VALUES (2743,
	188);
INSERT INTO CNST_LSC
	VALUES (2743,
	188,
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
	133,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2745,
	2725,
	'x',
	133,
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
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2750,
	2749,
	'message',
	296,
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
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2754,
	2753,
	'message',
	296,
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
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2758,
	2757,
	'message',
	296,
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
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2762,
	2761,
	'd',
	306,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2763,
	2761,
	'message',
	296,
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
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2767,
	2766,
	't',
	308,
	0,
	'',
	2768,
	'');
INSERT INTO S_BPARM
	VALUES (2768,
	2766,
	'message',
	296,
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
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2772,
	2771,
	'r',
	133,
	0,
	'',
	2773,
	'');
INSERT INTO S_BPARM
	VALUES (2773,
	2771,
	'message',
	296,
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
	294,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2777,
	2776,
	'message',
	188,
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
	306,
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
	306,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2785,
	2784,
	'second',
	188,
	0,
	'',
	2786,
	'');
INSERT INTO S_BPARM
	VALUES (2787,
	2784,
	'minute',
	188,
	0,
	'',
	2788,
	'');
INSERT INTO S_BPARM
	VALUES (2788,
	2784,
	'hour',
	188,
	0,
	'',
	2789,
	'');
INSERT INTO S_BPARM
	VALUES (2789,
	2784,
	'day',
	188,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2786,
	2784,
	'month',
	188,
	0,
	'',
	2787,
	'');
INSERT INTO S_BPARM
	VALUES (2790,
	2784,
	'year',
	188,
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
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2794,
	2793,
	'date',
	306,
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
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2798,
	2797,
	'date',
	306,
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
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2802,
	2801,
	'date',
	306,
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
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2806,
	2805,
	'date',
	306,
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
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2810,
	2809,
	'date',
	306,
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
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2814,
	2813,
	'date',
	306,
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
	308,
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
	307,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2821,
	2820,
	'microseconds',
	188,
	0,
	'',
	2822,
	'');
INSERT INTO S_BPARM
	VALUES (2822,
	2820,
	'event_inst',
	302,
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
	307,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2826,
	2825,
	'microseconds',
	188,
	0,
	'',
	2827,
	'');
INSERT INTO S_BPARM
	VALUES (2827,
	2825,
	'event_inst',
	302,
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
	188,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2831,
	2830,
	'timer_inst_ref',
	307,
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
	295,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2835,
	2834,
	'timer_inst_ref',
	307,
	0,
	'',
	2836,
	'');
INSERT INTO S_BPARM
	VALUES (2836,
	2834,
	'microseconds',
	188,
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
	295,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2840,
	2839,
	'timer_inst_ref',
	307,
	0,
	'',
	2841,
	'');
INSERT INTO S_BPARM
	VALUES (2841,
	2839,
	'microseconds',
	188,
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
	295,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2845,
	2844,
	'timer_inst_ref',
	307,
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
	300,
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
	295,
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
	300,
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
	307,
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
	307,
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
	302,
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
	188,
	2851);
INSERT INTO V_SCV
	VALUES (2867,
	2743,
	188);
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
	300);
INSERT INTO V_INT
	VALUES (2854,
	0,
	2848);
INSERT INTO V_VAR
	VALUES (2859,
	2851,
	'tick',
	1,
	302);
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
	300,
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
	188,
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
	188,
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
	300,
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
	133,
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
	133,
	2856);
INSERT INTO V_SCV
	VALUES (2874,
	2741,
	133);
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
	300,
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
	133,
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
	133,
	2856);
INSERT INTO V_SCV
	VALUES (2876,
	2742,
	133);
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
	307,
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
	133,
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
	133,
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
	188,
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
	295,
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
	295,
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
	300,
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
	307,
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
	296,
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
	295,
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
	295,
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
	300);
INSERT INTO V_INT
	VALUES (2893,
	0,
	2848);
INSERT INTO V_VAR
	VALUES (2900,
	2890,
	'res',
	1,
	295);
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
	296,
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
	300,
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
	188,
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
	188,
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
	188,
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
	295,
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
	188,
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
	300,
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
	188,
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
	188,
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
	188,
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
	295,
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
	188,
	2910);
INSERT INTO V_LIN
	VALUES (2930,
	'0');
INSERT INTO V_VAR
	VALUES (2913,
	2910,
	'gps',
	1,
	300);
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
	300,
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
	133,
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
	300,
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
	133,
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
	133,
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
	133,
	2914);
INSERT INTO V_SCV
	VALUES (2941,
	2739,
	133);
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
	133,
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
	188,
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
	300,
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
	133,
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
	300,
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
	133,
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
	133,
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
	133,
	2914);
INSERT INTO V_SCV
	VALUES (2946,
	2740,
	133);
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
	300,
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
	133,
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
	300,
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
	133,
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
	133,
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
	133,
	2917);
INSERT INTO V_SCV
	VALUES (2956,
	2739,
	133);
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
	300,
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
	133,
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
	300,
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
	133,
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
	133,
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
	133,
	2917);
INSERT INTO V_SCV
	VALUES (2961,
	2740,
	133);
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
	133,
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
	188,
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
	300,
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
	133,
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
	300,
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
	133,
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
	133,
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
	133,
	2920);
INSERT INTO V_SCV
	VALUES (2972,
	2739,
	133);
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
	300,
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
	133,
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
	300,
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
	133,
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
	133,
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
	133,
	2920);
INSERT INTO V_SCV
	VALUES (2976,
	2740,
	133);
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
	296,
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
	300,
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
	188,
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
	300,
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
	188,
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
	188,
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
	188,
	2991);
INSERT INTO V_LIN
	VALUES (3000,
	'1');
INSERT INTO V_VAR
	VALUES (2994,
	2991,
	'gps',
	1,
	300);
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
	133,
	3002,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (2729,
	133);
INSERT INTO CNST_LSC
	VALUES (2729,
	133,
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
	VALUES (1270,
	'SecondsPerHour',
	'',
	188,
	3003,
	1255,
	188);
INSERT INTO CNST_LFSC
	VALUES (1270,
	188);
INSERT INTO CNST_LSC
	VALUES (1270,
	188,
	'3600');
INSERT INTO CNST_SYC
	VALUES (1255,
	'SpeedAveragingWindow',
	'',
	188,
	3003,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (1255,
	188);
INSERT INTO CNST_LSC
	VALUES (1255,
	188,
	'5');
INSERT INTO PE_PE
	VALUES (61,
	1,
	3001,
	0,
	6);
INSERT INTO C_I
	VALUES (61,
	0,
	'Location',
	'');
INSERT INTO C_EP
	VALUES (63,
	61,
	-1,
	'getLocation',
	'');
INSERT INTO C_IO
	VALUES (63,
	294,
	'getLocation',
	'',
	0,
	'',
	67);
INSERT INTO C_PP
	VALUES (3004,
	63,
	188,
	'latitude',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (3005,
	63,
	188,
	'longitude',
	'',
	0,
	'',
	3004);
INSERT INTO C_EP
	VALUES (67,
	61,
	-1,
	'getDistance',
	'');
INSERT INTO C_IO
	VALUES (67,
	133,
	'getDistance',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (2709,
	67,
	188,
	'toLat',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (2711,
	67,
	188,
	'fromLat',
	'',
	0,
	'',
	2709);
INSERT INTO C_PP
	VALUES (2714,
	67,
	188,
	'toLong',
	'',
	0,
	'',
	2711);
INSERT INTO C_PP
	VALUES (2716,
	67,
	188,
	'fromLong',
	'',
	0,
	'',
	2714);
INSERT INTO C_EP
	VALUES (71,
	61,
	-1,
	'registerListener',
	'');
INSERT INTO C_IO
	VALUES (71,
	294,
	'registerListener',
	'',
	0,
	'',
	63);
INSERT INTO C_EP
	VALUES (75,
	61,
	-1,
	'unregisterListener',
	'');
INSERT INTO C_IO
	VALUES (75,
	294,
	'unregisterListener',
	'',
	0,
	'',
	71);
