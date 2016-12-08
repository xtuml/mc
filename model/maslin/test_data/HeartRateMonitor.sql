-- root-types-contained: SystemModel_c,PackageableElement_c,DataType_c,CoreDataType_c,UserDataType_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES (1,
	'HeartRateMonitor',
	1);
INSERT INTO EP_PKG
	VALUES (2,
	1,
	1,
	'HeartRateMonitor',
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
	'HeartRateMonitor',
	'Simulates a pulse monitor hardware/firmware. This component is only behavioral and included for testing purposes.',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (4,
	3,
	'HeartRateMonitor',
	0,
	0);
INSERT INTO C_IR
	VALUES (5,
	6,
	0,
	4);
INSERT INTO C_P
	VALUES (5,
	'HeartRateMonitor',
	'Unnamed Interface',
	'',
	'HeartRateMonitor::HeartRateMonitor::HeartRateMonitor');
INSERT INTO SPR_PEP
	VALUES (7,
	8,
	5);
INSERT INTO SPR_PO
	VALUES (7,
	'registerListener',
	'',
	'generate HeartRateMonitor_A1:registerListener() to HeartRateMonitor class;

',
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
	'HeartRateMonitor::HeartRateMonitor::registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (10,
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
	9,
	0);
INSERT INTO ACT_SMT
	VALUES (11,
	10,
	0,
	1,
	1,
	'HeartRateMonitor::HeartRateMonitor::registerListener line: 1');
INSERT INTO E_ESS
	VALUES (11,
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
	VALUES (11);
INSERT INTO E_GSME
	VALUES (11,
	12);
INSERT INTO E_GAR
	VALUES (11);
INSERT INTO SPR_PEP
	VALUES (13,
	14,
	5);
INSERT INTO SPR_PO
	VALUES (13,
	'unregisterListener',
	'',
	'generate HeartRateMonitor_A2:unregisterListener() to HeartRateMonitor class;

',
	1);
INSERT INTO ACT_POB
	VALUES (15,
	13);
INSERT INTO ACT_ACT
	VALUES (15,
	'interface operation',
	0,
	16,
	0,
	0,
	'HeartRateMonitor::HeartRateMonitor::unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (16,
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
	15,
	0);
INSERT INTO ACT_SMT
	VALUES (17,
	16,
	0,
	1,
	1,
	'HeartRateMonitor::HeartRateMonitor::unregisterListener line: 1');
INSERT INTO E_ESS
	VALUES (17,
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
	VALUES (17);
INSERT INTO E_GSME
	VALUES (17,
	18);
INSERT INTO E_GAR
	VALUES (17);
INSERT INTO C_PO
	VALUES (19,
	3,
	'Unspecified',
	0,
	0);
INSERT INTO C_IR
	VALUES (20,
	21,
	0,
	19);
INSERT INTO C_R
	VALUES (20,
	'HeartRateMonitorUnspecified',
	'',
	'Unnamed Interface',
	'HeartRateMonitor::Unspecified::HeartRateMonitorUnspecified');
INSERT INTO SPR_REP
	VALUES (22,
	23,
	20);
INSERT INTO SPR_RO
	VALUES (22,
	'heartRateChanged',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (24,
	22);
INSERT INTO ACT_ACT
	VALUES (24,
	'interface operation',
	0,
	25,
	0,
	0,
	'Unspecified::HeartRateMonitorUnspecified::heartRateChanged',
	0);
INSERT INTO ACT_BLK
	VALUES (25,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	24,
	0);
INSERT INTO PE_PE
	VALUES (26,
	1,
	0,
	3,
	7);
INSERT INTO EP_PKG
	VALUES (26,
	0,
	1,
	'HeartRateMonitor',
	'',
	0);
INSERT INTO PE_PE
	VALUES (27,
	1,
	26,
	0,
	5);
INSERT INTO S_EE
	VALUES (27,
	'Logging',
	'',
	'LOG',
	0,
	'',
	'Logging',
	1);
INSERT INTO S_BRG
	VALUES (28,
	27,
	'LogSuccess',
	'',
	0,
	29,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (30,
	28,
	'message',
	31,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (32,
	28);
INSERT INTO ACT_ACT
	VALUES (32,
	'bridge',
	0,
	33,
	0,
	0,
	'Logging::LogSuccess',
	0);
INSERT INTO ACT_BLK
	VALUES (33,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	32,
	0);
INSERT INTO S_BRG
	VALUES (34,
	27,
	'LogFailure',
	'',
	0,
	29,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (35,
	34,
	'message',
	31,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (36,
	34);
INSERT INTO ACT_ACT
	VALUES (36,
	'bridge',
	0,
	37,
	0,
	0,
	'Logging::LogFailure',
	0);
INSERT INTO ACT_BLK
	VALUES (37,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	36,
	0);
INSERT INTO S_BRG
	VALUES (38,
	27,
	'LogInfo',
	'',
	0,
	29,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (39,
	38,
	'message',
	31,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (40,
	38);
INSERT INTO ACT_ACT
	VALUES (40,
	'bridge',
	0,
	41,
	0,
	0,
	'Logging::LogInfo',
	0);
INSERT INTO ACT_BLK
	VALUES (41,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	40,
	0);
INSERT INTO S_BRG
	VALUES (42,
	27,
	'LogDate',
	'',
	0,
	29,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (43,
	42,
	'd',
	44,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (45,
	42,
	'message',
	31,
	0,
	'',
	43,
	'');
INSERT INTO ACT_BRB
	VALUES (46,
	42);
INSERT INTO ACT_ACT
	VALUES (46,
	'bridge',
	0,
	47,
	0,
	0,
	'Logging::LogDate',
	0);
INSERT INTO ACT_BLK
	VALUES (47,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	46,
	0);
INSERT INTO S_BRG
	VALUES (48,
	27,
	'LogTime',
	'',
	0,
	29,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (49,
	48,
	't',
	50,
	0,
	'',
	51,
	'');
INSERT INTO S_BPARM
	VALUES (51,
	48,
	'message',
	31,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (52,
	48);
INSERT INTO ACT_ACT
	VALUES (52,
	'bridge',
	0,
	53,
	0,
	0,
	'Logging::LogTime',
	0);
INSERT INTO ACT_BLK
	VALUES (53,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	52,
	0);
INSERT INTO S_BRG
	VALUES (54,
	27,
	'LogReal',
	'',
	0,
	29,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (55,
	54,
	'r',
	56,
	0,
	'',
	57,
	'');
INSERT INTO S_BPARM
	VALUES (57,
	54,
	'message',
	31,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (58,
	54);
INSERT INTO ACT_ACT
	VALUES (58,
	'bridge',
	0,
	59,
	0,
	0,
	'Logging::LogReal',
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
INSERT INTO S_BRG
	VALUES (60,
	27,
	'LogInteger',
	'',
	0,
	29,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (61,
	60,
	'message',
	62,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (63,
	60);
INSERT INTO ACT_ACT
	VALUES (63,
	'bridge',
	0,
	64,
	0,
	0,
	'Logging::LogInteger',
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
INSERT INTO PE_PE
	VALUES (65,
	1,
	26,
	0,
	5);
INSERT INTO S_EE
	VALUES (65,
	'Time',
	'The Time external entity provides date, timestamp, and timer related operations.',
	'TIM',
	0,
	'',
	'Time',
	1);
INSERT INTO S_BRG
	VALUES (66,
	65,
	'current_date',
	'',
	1,
	44,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (67,
	66);
INSERT INTO ACT_ACT
	VALUES (67,
	'bridge',
	0,
	68,
	0,
	0,
	'Time::current_date',
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
INSERT INTO S_BRG
	VALUES (69,
	65,
	'create_date',
	'',
	1,
	44,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (70,
	69,
	'second',
	62,
	0,
	'',
	71,
	'');
INSERT INTO S_BPARM
	VALUES (72,
	69,
	'minute',
	62,
	0,
	'',
	73,
	'');
INSERT INTO S_BPARM
	VALUES (73,
	69,
	'hour',
	62,
	0,
	'',
	74,
	'');
INSERT INTO S_BPARM
	VALUES (74,
	69,
	'day',
	62,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (71,
	69,
	'month',
	62,
	0,
	'',
	72,
	'');
INSERT INTO S_BPARM
	VALUES (75,
	69,
	'year',
	62,
	0,
	'',
	70,
	'');
INSERT INTO ACT_BRB
	VALUES (76,
	69);
INSERT INTO ACT_ACT
	VALUES (76,
	'bridge',
	0,
	77,
	0,
	0,
	'Time::create_date',
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
	65,
	'get_second',
	'',
	1,
	62,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (79,
	78,
	'date',
	44,
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
	'Time::get_second',
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
	65,
	'get_minute',
	'',
	1,
	62,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (83,
	82,
	'date',
	44,
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
	'Time::get_minute',
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
	65,
	'get_hour',
	'',
	1,
	62,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (87,
	86,
	'date',
	44,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (88,
	86);
INSERT INTO ACT_ACT
	VALUES (88,
	'bridge',
	0,
	89,
	0,
	0,
	'Time::get_hour',
	0);
INSERT INTO ACT_BLK
	VALUES (89,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	88,
	0);
INSERT INTO S_BRG
	VALUES (90,
	65,
	'get_day',
	'',
	1,
	62,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (91,
	90,
	'date',
	44,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (92,
	90);
INSERT INTO ACT_ACT
	VALUES (92,
	'bridge',
	0,
	93,
	0,
	0,
	'Time::get_day',
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
INSERT INTO S_BRG
	VALUES (94,
	65,
	'get_month',
	'',
	1,
	62,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (95,
	94,
	'date',
	44,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (96,
	94);
INSERT INTO ACT_ACT
	VALUES (96,
	'bridge',
	0,
	97,
	0,
	0,
	'Time::get_month',
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
	65,
	'get_year',
	'',
	1,
	62,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (99,
	98,
	'date',
	44,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (100,
	98);
INSERT INTO ACT_ACT
	VALUES (100,
	'bridge',
	0,
	101,
	0,
	0,
	'Time::get_year',
	0);
INSERT INTO ACT_BLK
	VALUES (101,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	100,
	0);
INSERT INTO S_BRG
	VALUES (102,
	65,
	'current_clock',
	'',
	1,
	50,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (103,
	102);
INSERT INTO ACT_ACT
	VALUES (103,
	'bridge',
	0,
	104,
	0,
	0,
	'Time::current_clock',
	0);
INSERT INTO ACT_BLK
	VALUES (104,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	103,
	0);
INSERT INTO S_BRG
	VALUES (105,
	65,
	'timer_start',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Returns the instance
handle of the timer.',
	1,
	106,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (107,
	105,
	'microseconds',
	62,
	0,
	'',
	108,
	'');
INSERT INTO S_BPARM
	VALUES (108,
	105,
	'event_inst',
	109,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (110,
	105);
INSERT INTO ACT_ACT
	VALUES (110,
	'bridge',
	0,
	111,
	0,
	0,
	'Time::timer_start',
	0);
INSERT INTO ACT_BLK
	VALUES (111,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	110,
	0);
INSERT INTO S_BRG
	VALUES (112,
	65,
	'timer_start_recurring',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Upon expiration, the
timer will be restarted and fire again in the specified number of microseconds
generating the passed event. This bridge operation returns the instance handle
of the timer.',
	1,
	106,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (113,
	112,
	'microseconds',
	62,
	0,
	'',
	114,
	'');
INSERT INTO S_BPARM
	VALUES (114,
	112,
	'event_inst',
	109,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (115,
	112);
INSERT INTO ACT_ACT
	VALUES (115,
	'bridge',
	0,
	116,
	0,
	0,
	'Time::timer_start_recurring',
	0);
INSERT INTO ACT_BLK
	VALUES (116,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	115,
	0);
INSERT INTO S_BRG
	VALUES (117,
	65,
	'timer_remaining_time',
	'Returns the time remaining (in microseconds) for the passed timer instance. If
the timer has expired, a zero value is returned.',
	1,
	62,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (118,
	117,
	'timer_inst_ref',
	106,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (119,
	117);
INSERT INTO ACT_ACT
	VALUES (119,
	'bridge',
	0,
	120,
	0,
	0,
	'Time::timer_remaining_time',
	0);
INSERT INTO ACT_BLK
	VALUES (120,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	119,
	0);
INSERT INTO S_BRG
	VALUES (121,
	65,
	'timer_reset_time',
	'This bridge operation attempts to set the passed existing timer to expire in
the specified number of microseconds. If the timer exists (that is, it has not
expired), a TRUE value is returned. If the timer no longer exists, a FALSE value
is returned.',
	1,
	122,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (123,
	121,
	'timer_inst_ref',
	106,
	0,
	'',
	124,
	'');
INSERT INTO S_BPARM
	VALUES (124,
	121,
	'microseconds',
	62,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (125,
	121);
INSERT INTO ACT_ACT
	VALUES (125,
	'bridge',
	0,
	126,
	0,
	0,
	'Time::timer_reset_time',
	0);
INSERT INTO ACT_BLK
	VALUES (126,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	125,
	0);
INSERT INTO S_BRG
	VALUES (127,
	65,
	'timer_add_time',
	'This bridge operation attempts to add the specified number of microseconds to a
passed existing timer. If the timer exists (that is, it has not expired), a TRUE
value is returned. If the timer no longer exists, a FALSE value is returned.',
	1,
	122,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (128,
	127,
	'timer_inst_ref',
	106,
	0,
	'',
	129,
	'');
INSERT INTO S_BPARM
	VALUES (129,
	127,
	'microseconds',
	62,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (130,
	127);
INSERT INTO ACT_ACT
	VALUES (130,
	'bridge',
	0,
	131,
	0,
	0,
	'Time::timer_add_time',
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
	65,
	'timer_cancel',
	'This bridge operation cancels and deletes the passed timer instance. If the 
timer exists (that is, it had not expired), a TRUE value is returned. If the
timer no longer exists, a FALSE value is returned.',
	1,
	122,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (133,
	132,
	'timer_inst_ref',
	106,
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
	'Time::timer_cancel',
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
INSERT INTO PE_PE
	VALUES (136,
	1,
	26,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (136,
	'HeartRateMonitor',
	1,
	'HeartRateMonitor',
	'Represents the heart-rate monitoring facility.',
	0);
INSERT INTO O_NBATTR
	VALUES (137,
	136);
INSERT INTO O_BATTR
	VALUES (137,
	136);
INSERT INTO O_ATTR
	VALUES (137,
	136,
	0,
	'recentHeartRate',
	'Most recent heart-rate sample, expressed in beats per minute.',
	'',
	'recentHeartRate',
	0,
	62,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (138,
	136);
INSERT INTO O_BATTR
	VALUES (138,
	136);
INSERT INTO O_ATTR
	VALUES (138,
	136,
	137,
	'timer',
	'Handle for underlying timer mechanism enabling the 
generation of delayed events that drive the model
of the heart-rate monitor.',
	'',
	'timer',
	0,
	106,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	136);
INSERT INTO O_ID
	VALUES (1,
	136);
INSERT INTO O_ID
	VALUES (2,
	136);
INSERT INTO SM_ASM
	VALUES (139,
	136);
INSERT INTO SM_SM
	VALUES (139,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (139);
INSERT INTO SM_LEVT
	VALUES (140,
	139,
	0);
INSERT INTO SM_SEVT
	VALUES (140,
	139,
	0);
INSERT INTO SM_EVT
	VALUES (140,
	139,
	0,
	3,
	'timeout',
	0,
	'',
	'HeartRateMonitor_A3',
	'');
INSERT INTO SM_LEVT
	VALUES (12,
	139,
	0);
INSERT INTO SM_SEVT
	VALUES (12,
	139,
	0);
INSERT INTO SM_EVT
	VALUES (12,
	139,
	0,
	1,
	'registerListener',
	0,
	'',
	'HeartRateMonitor_A1',
	'');
INSERT INTO SM_LEVT
	VALUES (18,
	139,
	0);
INSERT INTO SM_SEVT
	VALUES (18,
	139,
	0);
INSERT INTO SM_EVT
	VALUES (18,
	139,
	0,
	2,
	'unregisterListener',
	0,
	'',
	'HeartRateMonitor_A2',
	'');
INSERT INTO SM_STATE
	VALUES (141,
	139,
	0,
	'idle',
	1,
	0);
INSERT INTO SM_EIGN
	VALUES (141,
	140,
	139,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (141,
	140,
	139,
	0);
INSERT INTO SM_SEME
	VALUES (141,
	12,
	139,
	0);
INSERT INTO SM_CH
	VALUES (141,
	18,
	139,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (141,
	18,
	139,
	0);
INSERT INTO SM_MOAH
	VALUES (142,
	139,
	141);
INSERT INTO SM_AH
	VALUES (142,
	139);
INSERT INTO SM_ACT
	VALUES (142,
	139,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (143,
	139,
	142);
INSERT INTO ACT_ACT
	VALUES (143,
	'class state',
	0,
	144,
	0,
	0,
	'HeartRateMonitor::idle',
	0);
INSERT INTO ACT_BLK
	VALUES (144,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	143,
	0);
INSERT INTO SM_STATE
	VALUES (145,
	139,
	0,
	'monitoring',
	2,
	0);
INSERT INTO SM_SEME
	VALUES (145,
	140,
	139,
	0);
INSERT INTO SM_CH
	VALUES (145,
	12,
	139,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (145,
	12,
	139,
	0);
INSERT INTO SM_SEME
	VALUES (145,
	18,
	139,
	0);
INSERT INTO SM_MOAH
	VALUES (146,
	139,
	145);
INSERT INTO SM_AH
	VALUES (146,
	139);
INSERT INTO SM_ACT
	VALUES (146,
	139,
	1,
	'select any monitor from instances of HeartRateMonitor;
send Unspecified::heartRateChanged(heartRate: monitor.recentHeartRate);
monitor.recentHeartRate = monitor.recentHeartRate + 1;',
	'');
INSERT INTO ACT_SAB
	VALUES (147,
	139,
	146);
INSERT INTO ACT_ACT
	VALUES (147,
	'class state',
	0,
	148,
	0,
	0,
	'HeartRateMonitor::monitoring',
	0);
INSERT INTO ACT_BLK
	VALUES (148,
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
	147,
	0);
INSERT INTO ACT_SMT
	VALUES (149,
	148,
	150,
	1,
	1,
	'HeartRateMonitor::monitoring line: 1');
INSERT INTO ACT_FIO
	VALUES (149,
	151,
	1,
	'any',
	136,
	1,
	38);
INSERT INTO ACT_SMT
	VALUES (150,
	148,
	152,
	2,
	1,
	'HeartRateMonitor::monitoring line: 2');
INSERT INTO ACT_IOP
	VALUES (150,
	2,
	19,
	2,
	6,
	0,
	22,
	0);
INSERT INTO ACT_SMT
	VALUES (152,
	148,
	0,
	3,
	1,
	'HeartRateMonitor::monitoring line: 3');
INSERT INTO ACT_AI
	VALUES (152,
	153,
	154,
	0,
	0);
INSERT INTO V_VAL
	VALUES (155,
	0,
	0,
	2,
	47,
	53,
	0,
	0,
	0,
	0,
	156,
	148);
INSERT INTO V_IRF
	VALUES (155,
	151);
INSERT INTO V_VAL
	VALUES (157,
	0,
	0,
	2,
	55,
	69,
	0,
	0,
	0,
	0,
	62,
	148);
INSERT INTO V_AVL
	VALUES (157,
	155,
	136,
	137);
INSERT INTO V_PAR
	VALUES (157,
	150,
	0,
	'heartRate',
	0,
	2,
	36);
INSERT INTO V_VAL
	VALUES (158,
	1,
	0,
	3,
	1,
	7,
	0,
	0,
	0,
	0,
	156,
	148);
INSERT INTO V_IRF
	VALUES (158,
	151);
INSERT INTO V_VAL
	VALUES (154,
	1,
	0,
	3,
	9,
	23,
	0,
	0,
	0,
	0,
	62,
	148);
INSERT INTO V_AVL
	VALUES (154,
	158,
	136,
	137);
INSERT INTO V_VAL
	VALUES (159,
	0,
	0,
	3,
	27,
	33,
	0,
	0,
	0,
	0,
	156,
	148);
INSERT INTO V_IRF
	VALUES (159,
	151);
INSERT INTO V_VAL
	VALUES (160,
	0,
	0,
	3,
	35,
	49,
	0,
	0,
	0,
	0,
	62,
	148);
INSERT INTO V_AVL
	VALUES (160,
	159,
	136,
	137);
INSERT INTO V_VAL
	VALUES (153,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	62,
	148);
INSERT INTO V_BIN
	VALUES (153,
	161,
	160,
	'+');
INSERT INTO V_VAL
	VALUES (161,
	0,
	0,
	3,
	53,
	53,
	0,
	0,
	0,
	0,
	62,
	148);
INSERT INTO V_LIN
	VALUES (161,
	'1');
INSERT INTO V_VAR
	VALUES (151,
	148,
	'monitor',
	1,
	156);
INSERT INTO V_INT
	VALUES (151,
	0,
	136);
INSERT INTO SM_NSTXN
	VALUES (162,
	139,
	141,
	12,
	0);
INSERT INTO SM_TAH
	VALUES (163,
	139,
	162);
INSERT INTO SM_AH
	VALUES (163,
	139);
INSERT INTO SM_ACT
	VALUES (163,
	139,
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
	VALUES (164,
	139,
	163);
INSERT INTO ACT_ACT
	VALUES (164,
	'class transition',
	0,
	165,
	0,
	0,
	'HeartRateMonitor_A1: registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (165,
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
	164,
	0);
INSERT INTO ACT_SMT
	VALUES (166,
	165,
	167,
	2,
	1,
	'HeartRateMonitor_A1: registerListener line: 2');
INSERT INTO ACT_FIO
	VALUES (166,
	168,
	1,
	'any',
	136,
	2,
	38);
INSERT INTO ACT_SMT
	VALUES (167,
	165,
	169,
	3,
	1,
	'HeartRateMonitor_A1: registerListener line: 3');
INSERT INTO ACT_IF
	VALUES (167,
	170,
	171,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (169,
	165,
	172,
	6,
	1,
	'HeartRateMonitor_A1: registerListener line: 6');
INSERT INTO ACT_AI
	VALUES (169,
	173,
	174,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (172,
	165,
	175,
	8,
	1,
	'HeartRateMonitor_A1: registerListener line: 8');
INSERT INTO ACT_BRG
	VALUES (172,
	38,
	8,
	6,
	8,
	1);
INSERT INTO ACT_SMT
	VALUES (175,
	165,
	176,
	11,
	1,
	'HeartRateMonitor_A1: registerListener line: 11');
INSERT INTO E_ESS
	VALUES (175,
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
	VALUES (175,
	1,
	177);
INSERT INTO E_CSME
	VALUES (175,
	140);
INSERT INTO E_CEA
	VALUES (175);
INSERT INTO ACT_SMT
	VALUES (176,
	165,
	0,
	12,
	1,
	'HeartRateMonitor_A1: registerListener line: 12');
INSERT INTO ACT_AI
	VALUES (176,
	178,
	179,
	0,
	0);
INSERT INTO V_VAL
	VALUES (180,
	0,
	0,
	3,
	11,
	17,
	0,
	0,
	0,
	0,
	156,
	165);
INSERT INTO V_IRF
	VALUES (180,
	168);
INSERT INTO V_VAL
	VALUES (171,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	122,
	165);
INSERT INTO V_UNY
	VALUES (171,
	180,
	'empty');
INSERT INTO V_VAL
	VALUES (181,
	1,
	0,
	6,
	1,
	7,
	0,
	0,
	0,
	0,
	156,
	165);
INSERT INTO V_IRF
	VALUES (181,
	168);
INSERT INTO V_VAL
	VALUES (174,
	1,
	0,
	6,
	9,
	23,
	0,
	0,
	0,
	0,
	62,
	165);
INSERT INTO V_AVL
	VALUES (174,
	181,
	136,
	137);
INSERT INTO V_VAL
	VALUES (173,
	0,
	0,
	6,
	27,
	28,
	0,
	0,
	0,
	0,
	62,
	165);
INSERT INTO V_LIN
	VALUES (173,
	'50');
INSERT INTO V_VAL
	VALUES (182,
	0,
	0,
	8,
	23,
	42,
	0,
	0,
	0,
	0,
	31,
	165);
INSERT INTO V_LST
	VALUES (182,
	'listener registered');
INSERT INTO V_PAR
	VALUES (182,
	172,
	0,
	'message',
	0,
	8,
	14);
INSERT INTO V_VAL
	VALUES (183,
	1,
	0,
	12,
	1,
	7,
	0,
	0,
	0,
	0,
	156,
	165);
INSERT INTO V_IRF
	VALUES (183,
	168);
INSERT INTO V_VAL
	VALUES (179,
	1,
	0,
	12,
	9,
	13,
	0,
	0,
	0,
	0,
	106,
	165);
INSERT INTO V_AVL
	VALUES (179,
	183,
	136,
	138);
INSERT INTO V_VAL
	VALUES (178,
	0,
	0,
	12,
	22,
	-1,
	12,
	45,
	12,
	66,
	106,
	165);
INSERT INTO V_BRV
	VALUES (178,
	112,
	1,
	12,
	17);
INSERT INTO V_VAL
	VALUES (184,
	0,
	0,
	12,
	57,
	63,
	0,
	0,
	0,
	0,
	109,
	165);
INSERT INTO V_TVL
	VALUES (184,
	177);
INSERT INTO V_PAR
	VALUES (184,
	0,
	178,
	'event_inst',
	185,
	12,
	45);
INSERT INTO V_VAL
	VALUES (186,
	0,
	0,
	12,
	81,
	103,
	0,
	0,
	0,
	0,
	62,
	165);
INSERT INTO V_SCV
	VALUES (186,
	187,
	62);
INSERT INTO V_VAL
	VALUES (185,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	62,
	165);
INSERT INTO V_BIN
	VALUES (185,
	188,
	186,
	'*');
INSERT INTO V_PAR
	VALUES (185,
	0,
	178,
	'microseconds',
	0,
	12,
	66);
INSERT INTO V_VAL
	VALUES (188,
	0,
	0,
	12,
	107,
	113,
	0,
	0,
	0,
	0,
	62,
	165);
INSERT INTO V_LIN
	VALUES (188,
	'1000000');
INSERT INTO V_VAR
	VALUES (168,
	165,
	'monitor',
	1,
	156);
INSERT INTO V_INT
	VALUES (168,
	0,
	136);
INSERT INTO V_VAR
	VALUES (177,
	165,
	'timeout',
	1,
	109);
INSERT INTO V_TRN
	VALUES (177,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (170,
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
	164,
	0);
INSERT INTO ACT_SMT
	VALUES (189,
	170,
	0,
	4,
	3,
	'HeartRateMonitor_A1: registerListener line: 4');
INSERT INTO ACT_CR
	VALUES (189,
	168,
	0,
	136,
	4,
	37);
INSERT INTO SM_TXN
	VALUES (162,
	139,
	145,
	0);
INSERT INTO SM_NSTXN
	VALUES (190,
	139,
	145,
	18,
	0);
INSERT INTO SM_TAH
	VALUES (191,
	139,
	190);
INSERT INTO SM_AH
	VALUES (191,
	139);
INSERT INTO SM_ACT
	VALUES (191,
	139,
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
	VALUES (192,
	139,
	191);
INSERT INTO ACT_ACT
	VALUES (192,
	'class transition',
	0,
	193,
	0,
	0,
	'HeartRateMonitor_A2: unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (193,
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
	192,
	0);
INSERT INTO ACT_SMT
	VALUES (194,
	193,
	195,
	1,
	1,
	'HeartRateMonitor_A2: unregisterListener line: 1');
INSERT INTO ACT_FIO
	VALUES (194,
	196,
	1,
	'any',
	136,
	1,
	38);
INSERT INTO ACT_SMT
	VALUES (195,
	193,
	197,
	2,
	1,
	'HeartRateMonitor_A2: unregisterListener line: 2');
INSERT INTO ACT_AI
	VALUES (195,
	198,
	199,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (197,
	193,
	0,
	3,
	1,
	'HeartRateMonitor_A2: unregisterListener line: 3');
INSERT INTO ACT_IF
	VALUES (197,
	200,
	201,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (202,
	193,
	0,
	5,
	1,
	'HeartRateMonitor_A2: unregisterListener line: 5');
INSERT INTO ACT_E
	VALUES (202,
	203,
	197);
INSERT INTO V_VAL
	VALUES (199,
	1,
	1,
	2,
	1,
	3,
	0,
	0,
	0,
	0,
	122,
	193);
INSERT INTO V_TVL
	VALUES (199,
	204);
INSERT INTO V_VAL
	VALUES (198,
	0,
	0,
	2,
	12,
	-1,
	2,
	25,
	0,
	0,
	122,
	193);
INSERT INTO V_BRV
	VALUES (198,
	132,
	1,
	2,
	7);
INSERT INTO V_VAL
	VALUES (205,
	0,
	0,
	2,
	41,
	47,
	0,
	0,
	0,
	0,
	156,
	193);
INSERT INTO V_IRF
	VALUES (205,
	196);
INSERT INTO V_VAL
	VALUES (206,
	0,
	0,
	2,
	49,
	53,
	0,
	0,
	0,
	0,
	106,
	193);
INSERT INTO V_AVL
	VALUES (206,
	205,
	136,
	138);
INSERT INTO V_PAR
	VALUES (206,
	0,
	198,
	'timer_inst_ref',
	0,
	2,
	25);
INSERT INTO V_VAL
	VALUES (201,
	0,
	0,
	3,
	6,
	8,
	0,
	0,
	0,
	0,
	122,
	193);
INSERT INTO V_TVL
	VALUES (201,
	204);
INSERT INTO V_VAR
	VALUES (196,
	193,
	'monitor',
	1,
	156);
INSERT INTO V_INT
	VALUES (196,
	0,
	136);
INSERT INTO V_VAR
	VALUES (204,
	193,
	'res',
	1,
	122);
INSERT INTO V_TRN
	VALUES (204,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (200,
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
	192,
	0);
INSERT INTO ACT_SMT
	VALUES (207,
	200,
	0,
	4,
	3,
	'HeartRateMonitor_A2: unregisterListener line: 4');
INSERT INTO ACT_BRG
	VALUES (207,
	28,
	4,
	8,
	4,
	3);
INSERT INTO V_VAL
	VALUES (208,
	0,
	0,
	4,
	29,
	74,
	0,
	0,
	0,
	0,
	31,
	200);
INSERT INTO V_LST
	VALUES (208,
	'Heart Rate Monitor: timer_cancel() succeeded.');
INSERT INTO V_PAR
	VALUES (208,
	207,
	0,
	'message',
	0,
	4,
	20);
INSERT INTO ACT_BLK
	VALUES (203,
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
	192,
	0);
INSERT INTO ACT_SMT
	VALUES (209,
	203,
	0,
	6,
	3,
	'HeartRateMonitor_A2: unregisterListener line: 6');
INSERT INTO ACT_BRG
	VALUES (209,
	34,
	6,
	8,
	6,
	3);
INSERT INTO V_VAL
	VALUES (210,
	0,
	0,
	6,
	29,
	71,
	0,
	0,
	0,
	0,
	31,
	203);
INSERT INTO V_LST
	VALUES (210,
	'Heart Rate Monitor: timer_cancel() failed.');
INSERT INTO V_PAR
	VALUES (210,
	209,
	0,
	'message',
	0,
	6,
	20);
INSERT INTO SM_TXN
	VALUES (190,
	139,
	141,
	0);
INSERT INTO SM_NSTXN
	VALUES (211,
	139,
	145,
	140,
	0);
INSERT INTO SM_TAH
	VALUES (212,
	139,
	211);
INSERT INTO SM_AH
	VALUES (212,
	139);
INSERT INTO SM_ACT
	VALUES (212,
	139,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (213,
	139,
	212);
INSERT INTO ACT_ACT
	VALUES (213,
	'class transition',
	0,
	214,
	0,
	0,
	'HeartRateMonitor_A3: timeout',
	0);
INSERT INTO ACT_BLK
	VALUES (214,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	213,
	0);
INSERT INTO SM_TXN
	VALUES (211,
	139,
	145,
	0);
INSERT INTO PE_PE
	VALUES (215,
	1,
	2,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (215,
	0,
	1,
	'shared',
	'',
	0);
INSERT INTO PE_PE
	VALUES (216,
	1,
	215,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (216,
	'HeartRateConstants',
	'SamplingPeriod is expressed in seconds and represents the period at which heart-rate samples are recorded.
AveragingWindow is expressed in samples and represents the number of samples used when calculating the current average.');
INSERT INTO CNST_SYC
	VALUES (217,
	'HeartRateAveragingWindow',
	'',
	62,
	216,
	187,
	62);
INSERT INTO CNST_LFSC
	VALUES (217,
	62);
INSERT INTO CNST_LSC
	VALUES (217,
	62,
	'5');
INSERT INTO CNST_SYC
	VALUES (187,
	'HeartRateSamplingPeriod',
	'',
	62,
	216,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (187,
	62);
INSERT INTO CNST_LSC
	VALUES (187,
	62,
	'3');
INSERT INTO PE_PE
	VALUES (6,
	1,
	215,
	0,
	6);
INSERT INTO C_I
	VALUES (6,
	0,
	'HeartRateMonitor',
	'');
INSERT INTO C_EP
	VALUES (8,
	6,
	-1,
	'registerListener',
	'');
INSERT INTO C_IO
	VALUES (8,
	29,
	'registerListener',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (14,
	6,
	-1,
	'unregisterListener',
	'');
INSERT INTO C_IO
	VALUES (14,
	29,
	'unregisterListener',
	'',
	0,
	'',
	8);
INSERT INTO PE_PE
	VALUES (21,
	1,
	215,
	0,
	6);
INSERT INTO C_I
	VALUES (21,
	0,
	'HeartRateMonitorUnspecified',
	'');
INSERT INTO C_EP
	VALUES (23,
	21,
	-1,
	'heartRateChanged',
	'');
INSERT INTO C_IO
	VALUES (23,
	29,
	'heartRateChanged',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (218,
	23,
	62,
	'heartRate',
	'',
	0,
	'',
	0);
INSERT INTO PE_PE
	VALUES (29,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (29,
	0,
	'void',
	'',
	'');
INSERT INTO S_CDT
	VALUES (29,
	0);
INSERT INTO PE_PE
	VALUES (122,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (122,
	0,
	'boolean',
	'',
	'');
INSERT INTO S_CDT
	VALUES (122,
	1);
INSERT INTO PE_PE
	VALUES (62,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (62,
	0,
	'integer',
	'',
	'');
INSERT INTO S_CDT
	VALUES (62,
	2);
INSERT INTO PE_PE
	VALUES (56,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (56,
	0,
	'real',
	'',
	'');
INSERT INTO S_CDT
	VALUES (56,
	3);
INSERT INTO PE_PE
	VALUES (31,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (31,
	0,
	'string',
	'',
	'');
INSERT INTO S_CDT
	VALUES (31,
	4);
INSERT INTO PE_PE
	VALUES (219,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (219,
	0,
	'unique_id',
	'',
	'');
INSERT INTO S_CDT
	VALUES (219,
	5);
INSERT INTO PE_PE
	VALUES (220,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (220,
	0,
	'state<State_Model>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (220,
	6);
INSERT INTO PE_PE
	VALUES (221,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (221,
	0,
	'same_as<Base_Attribute>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (221,
	7);
INSERT INTO PE_PE
	VALUES (156,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (156,
	0,
	'inst_ref<Object>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (156,
	8);
INSERT INTO PE_PE
	VALUES (222,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (222,
	0,
	'inst_ref_set<Object>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (222,
	9);
INSERT INTO PE_PE
	VALUES (109,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (109,
	0,
	'inst<Event>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (109,
	10);
INSERT INTO PE_PE
	VALUES (223,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (223,
	0,
	'inst<Mapping>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (223,
	11);
INSERT INTO PE_PE
	VALUES (224,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (224,
	0,
	'inst_ref<Mapping>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (224,
	12);
INSERT INTO PE_PE
	VALUES (225,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (225,
	0,
	'component_ref',
	'',
	'');
INSERT INTO S_CDT
	VALUES (225,
	13);
INSERT INTO PE_PE
	VALUES (44,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (44,
	0,
	'date',
	'',
	'');
INSERT INTO S_UDT
	VALUES (44,
	223,
	1);
INSERT INTO PE_PE
	VALUES (106,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (106,
	0,
	'inst_ref<Timer>',
	'',
	'');
INSERT INTO S_UDT
	VALUES (106,
	224,
	3);
INSERT INTO PE_PE
	VALUES (50,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (50,
	0,
	'timestamp',
	'',
	'');
INSERT INTO S_UDT
	VALUES (50,
	223,
	2);
