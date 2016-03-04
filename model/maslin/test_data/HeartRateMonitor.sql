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
	4);
INSERT INTO O_OBJ
	VALUES (27,
	'HeartRateMonitor',
	1,
	'HeartRateMonitor',
	'Represents the heart-rate monitoring facility.',
	0);
INSERT INTO O_NBATTR
	VALUES (28,
	27);
INSERT INTO O_BATTR
	VALUES (28,
	27);
INSERT INTO O_ATTR
	VALUES (28,
	27,
	0,
	'recentHeartRate',
	'Most recent heart-rate sample, expressed in beats per minute.',
	'',
	'recentHeartRate',
	0,
	29,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (30,
	27);
INSERT INTO O_BATTR
	VALUES (30,
	27);
INSERT INTO O_ATTR
	VALUES (30,
	27,
	28,
	'timer',
	'Handle for underlying timer mechanism enabling the 
generation of delayed events that drive the model
of the heart-rate monitor.',
	'',
	'timer',
	0,
	31,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	27);
INSERT INTO O_ID
	VALUES (1,
	27);
INSERT INTO O_ID
	VALUES (2,
	27);
INSERT INTO SM_ASM
	VALUES (32,
	27);
INSERT INTO SM_SM
	VALUES (32,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (32);
INSERT INTO SM_LEVT
	VALUES (33,
	32,
	0);
INSERT INTO SM_SEVT
	VALUES (33,
	32,
	0);
INSERT INTO SM_EVT
	VALUES (33,
	32,
	0,
	3,
	'timeout',
	0,
	'',
	'HeartRateMonitor_A3',
	'');
INSERT INTO SM_LEVT
	VALUES (12,
	32,
	0);
INSERT INTO SM_SEVT
	VALUES (12,
	32,
	0);
INSERT INTO SM_EVT
	VALUES (12,
	32,
	0,
	1,
	'registerListener',
	0,
	'',
	'HeartRateMonitor_A1',
	'');
INSERT INTO SM_LEVT
	VALUES (18,
	32,
	0);
INSERT INTO SM_SEVT
	VALUES (18,
	32,
	0);
INSERT INTO SM_EVT
	VALUES (18,
	32,
	0,
	2,
	'unregisterListener',
	0,
	'',
	'HeartRateMonitor_A2',
	'');
INSERT INTO SM_STATE
	VALUES (34,
	32,
	0,
	'idle',
	1,
	0);
INSERT INTO SM_EIGN
	VALUES (34,
	33,
	32,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (34,
	33,
	32,
	0);
INSERT INTO SM_SEME
	VALUES (34,
	12,
	32,
	0);
INSERT INTO SM_CH
	VALUES (34,
	18,
	32,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (34,
	18,
	32,
	0);
INSERT INTO SM_MOAH
	VALUES (35,
	32,
	34);
INSERT INTO SM_AH
	VALUES (35,
	32);
INSERT INTO SM_ACT
	VALUES (35,
	32,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (36,
	32,
	35);
INSERT INTO ACT_ACT
	VALUES (36,
	'class state',
	0,
	37,
	0,
	0,
	'HeartRateMonitor::idle',
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
INSERT INTO SM_STATE
	VALUES (38,
	32,
	0,
	'monitoring',
	2,
	0);
INSERT INTO SM_SEME
	VALUES (38,
	33,
	32,
	0);
INSERT INTO SM_CH
	VALUES (38,
	12,
	32,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (38,
	12,
	32,
	0);
INSERT INTO SM_SEME
	VALUES (38,
	18,
	32,
	0);
INSERT INTO SM_MOAH
	VALUES (39,
	32,
	38);
INSERT INTO SM_AH
	VALUES (39,
	32);
INSERT INTO SM_ACT
	VALUES (39,
	32,
	1,
	'select any monitor from instances of HeartRateMonitor;
send Unspecified::heartRateChanged(heartRate: monitor.recentHeartRate);
monitor.recentHeartRate = monitor.recentHeartRate + 1;',
	'');
INSERT INTO ACT_SAB
	VALUES (40,
	32,
	39);
INSERT INTO ACT_ACT
	VALUES (40,
	'class state',
	0,
	41,
	0,
	0,
	'HeartRateMonitor::monitoring',
	0);
INSERT INTO ACT_BLK
	VALUES (41,
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
	40,
	0);
INSERT INTO ACT_SMT
	VALUES (42,
	41,
	43,
	1,
	1,
	'HeartRateMonitor::monitoring line: 1');
INSERT INTO ACT_FIO
	VALUES (42,
	44,
	1,
	'any',
	27,
	1,
	38);
INSERT INTO ACT_SMT
	VALUES (43,
	41,
	45,
	2,
	1,
	'HeartRateMonitor::monitoring line: 2');
INSERT INTO ACT_IOP
	VALUES (43,
	2,
	19,
	2,
	6,
	0,
	22,
	0);
INSERT INTO ACT_SMT
	VALUES (45,
	41,
	0,
	3,
	1,
	'HeartRateMonitor::monitoring line: 3');
INSERT INTO ACT_AI
	VALUES (45,
	46,
	47,
	0,
	0);
INSERT INTO V_VAL
	VALUES (48,
	0,
	0,
	2,
	47,
	53,
	0,
	0,
	0,
	0,
	49,
	41);
INSERT INTO V_IRF
	VALUES (48,
	44);
INSERT INTO V_VAL
	VALUES (50,
	0,
	0,
	2,
	55,
	69,
	0,
	0,
	0,
	0,
	29,
	41);
INSERT INTO V_AVL
	VALUES (50,
	48,
	27,
	28);
INSERT INTO V_PAR
	VALUES (50,
	43,
	0,
	'heartRate',
	0,
	2,
	36);
INSERT INTO V_VAL
	VALUES (51,
	1,
	0,
	3,
	1,
	7,
	0,
	0,
	0,
	0,
	49,
	41);
INSERT INTO V_IRF
	VALUES (51,
	44);
INSERT INTO V_VAL
	VALUES (47,
	1,
	0,
	3,
	9,
	23,
	0,
	0,
	0,
	0,
	29,
	41);
INSERT INTO V_AVL
	VALUES (47,
	51,
	27,
	28);
INSERT INTO V_VAL
	VALUES (52,
	0,
	0,
	3,
	27,
	33,
	0,
	0,
	0,
	0,
	49,
	41);
INSERT INTO V_IRF
	VALUES (52,
	44);
INSERT INTO V_VAL
	VALUES (53,
	0,
	0,
	3,
	35,
	49,
	0,
	0,
	0,
	0,
	29,
	41);
INSERT INTO V_AVL
	VALUES (53,
	52,
	27,
	28);
INSERT INTO V_VAL
	VALUES (46,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	29,
	41);
INSERT INTO V_BIN
	VALUES (46,
	54,
	53,
	'+');
INSERT INTO V_VAL
	VALUES (54,
	0,
	0,
	3,
	53,
	53,
	0,
	0,
	0,
	0,
	29,
	41);
INSERT INTO V_LIN
	VALUES (54,
	'1');
INSERT INTO V_VAR
	VALUES (44,
	41,
	'monitor',
	1,
	49);
INSERT INTO V_INT
	VALUES (44,
	0,
	27);
INSERT INTO SM_NSTXN
	VALUES (55,
	32,
	34,
	12,
	0);
INSERT INTO SM_TAH
	VALUES (56,
	32,
	55);
INSERT INTO SM_AH
	VALUES (56,
	32);
INSERT INTO SM_ACT
	VALUES (56,
	32,
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
	VALUES (57,
	32,
	56);
INSERT INTO ACT_ACT
	VALUES (57,
	'class transition',
	0,
	58,
	0,
	0,
	'HeartRateMonitor_A1: registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (58,
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
	57,
	0);
INSERT INTO ACT_SMT
	VALUES (59,
	58,
	60,
	2,
	1,
	'HeartRateMonitor_A1: registerListener line: 2');
INSERT INTO ACT_FIO
	VALUES (59,
	61,
	1,
	'any',
	27,
	2,
	38);
INSERT INTO ACT_SMT
	VALUES (60,
	58,
	62,
	3,
	1,
	'HeartRateMonitor_A1: registerListener line: 3');
INSERT INTO ACT_IF
	VALUES (60,
	63,
	64,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (62,
	58,
	65,
	6,
	1,
	'HeartRateMonitor_A1: registerListener line: 6');
INSERT INTO ACT_AI
	VALUES (62,
	66,
	67,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (65,
	58,
	68,
	8,
	1,
	'HeartRateMonitor_A1: registerListener line: 8');
INSERT INTO ACT_BRG
	VALUES (65,
	69,
	8,
	6,
	8,
	1);
INSERT INTO ACT_SMT
	VALUES (68,
	58,
	70,
	11,
	1,
	'HeartRateMonitor_A1: registerListener line: 11');
INSERT INTO E_ESS
	VALUES (68,
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
	VALUES (68,
	1,
	71);
INSERT INTO E_CSME
	VALUES (68,
	33);
INSERT INTO E_CEA
	VALUES (68);
INSERT INTO ACT_SMT
	VALUES (70,
	58,
	0,
	12,
	1,
	'HeartRateMonitor_A1: registerListener line: 12');
INSERT INTO ACT_AI
	VALUES (70,
	72,
	73,
	0,
	0);
INSERT INTO V_VAL
	VALUES (74,
	0,
	0,
	3,
	11,
	17,
	0,
	0,
	0,
	0,
	49,
	58);
INSERT INTO V_IRF
	VALUES (74,
	61);
INSERT INTO V_VAL
	VALUES (64,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	75,
	58);
INSERT INTO V_UNY
	VALUES (64,
	74,
	'empty');
INSERT INTO V_VAL
	VALUES (76,
	1,
	0,
	6,
	1,
	7,
	0,
	0,
	0,
	0,
	49,
	58);
INSERT INTO V_IRF
	VALUES (76,
	61);
INSERT INTO V_VAL
	VALUES (67,
	1,
	0,
	6,
	9,
	23,
	0,
	0,
	0,
	0,
	29,
	58);
INSERT INTO V_AVL
	VALUES (67,
	76,
	27,
	28);
INSERT INTO V_VAL
	VALUES (66,
	0,
	0,
	6,
	27,
	28,
	0,
	0,
	0,
	0,
	29,
	58);
INSERT INTO V_LIN
	VALUES (66,
	'50');
INSERT INTO V_VAL
	VALUES (77,
	0,
	0,
	8,
	23,
	42,
	0,
	0,
	0,
	0,
	78,
	58);
INSERT INTO V_LST
	VALUES (77,
	'listener registered');
INSERT INTO V_PAR
	VALUES (77,
	65,
	0,
	'message',
	0,
	8,
	14);
INSERT INTO V_VAL
	VALUES (79,
	1,
	0,
	12,
	1,
	7,
	0,
	0,
	0,
	0,
	49,
	58);
INSERT INTO V_IRF
	VALUES (79,
	61);
INSERT INTO V_VAL
	VALUES (73,
	1,
	0,
	12,
	9,
	13,
	0,
	0,
	0,
	0,
	31,
	58);
INSERT INTO V_AVL
	VALUES (73,
	79,
	27,
	30);
INSERT INTO V_VAL
	VALUES (72,
	0,
	0,
	12,
	22,
	-1,
	12,
	45,
	12,
	66,
	31,
	58);
INSERT INTO V_BRV
	VALUES (72,
	80,
	1,
	12,
	17);
INSERT INTO V_VAL
	VALUES (81,
	0,
	0,
	12,
	57,
	63,
	0,
	0,
	0,
	0,
	82,
	58);
INSERT INTO V_TVL
	VALUES (81,
	71);
INSERT INTO V_PAR
	VALUES (81,
	0,
	72,
	'event_inst',
	83,
	12,
	45);
INSERT INTO V_VAL
	VALUES (84,
	0,
	0,
	12,
	81,
	103,
	0,
	0,
	0,
	0,
	29,
	58);
INSERT INTO V_SCV
	VALUES (84,
	85,
	29);
INSERT INTO V_VAL
	VALUES (83,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	29,
	58);
INSERT INTO V_BIN
	VALUES (83,
	86,
	84,
	'*');
INSERT INTO V_PAR
	VALUES (83,
	0,
	72,
	'microseconds',
	0,
	12,
	66);
INSERT INTO V_VAL
	VALUES (86,
	0,
	0,
	12,
	107,
	113,
	0,
	0,
	0,
	0,
	29,
	58);
INSERT INTO V_LIN
	VALUES (86,
	'1000000');
INSERT INTO V_VAR
	VALUES (61,
	58,
	'monitor',
	1,
	49);
INSERT INTO V_INT
	VALUES (61,
	0,
	27);
INSERT INTO V_VAR
	VALUES (71,
	58,
	'timeout',
	1,
	82);
INSERT INTO V_TRN
	VALUES (71,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (63,
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
	57,
	0);
INSERT INTO ACT_SMT
	VALUES (87,
	63,
	0,
	4,
	3,
	'HeartRateMonitor_A1: registerListener line: 4');
INSERT INTO ACT_CR
	VALUES (87,
	61,
	0,
	27,
	4,
	37);
INSERT INTO SM_TXN
	VALUES (55,
	32,
	38,
	0);
INSERT INTO SM_NSTXN
	VALUES (88,
	32,
	38,
	18,
	0);
INSERT INTO SM_TAH
	VALUES (89,
	32,
	88);
INSERT INTO SM_AH
	VALUES (89,
	32);
INSERT INTO SM_ACT
	VALUES (89,
	32,
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
	VALUES (90,
	32,
	89);
INSERT INTO ACT_ACT
	VALUES (90,
	'class transition',
	0,
	91,
	0,
	0,
	'HeartRateMonitor_A2: unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (91,
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
	90,
	0);
INSERT INTO ACT_SMT
	VALUES (92,
	91,
	93,
	1,
	1,
	'HeartRateMonitor_A2: unregisterListener line: 1');
INSERT INTO ACT_FIO
	VALUES (92,
	94,
	1,
	'any',
	27,
	1,
	38);
INSERT INTO ACT_SMT
	VALUES (93,
	91,
	95,
	2,
	1,
	'HeartRateMonitor_A2: unregisterListener line: 2');
INSERT INTO ACT_AI
	VALUES (93,
	96,
	97,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (95,
	91,
	0,
	3,
	1,
	'HeartRateMonitor_A2: unregisterListener line: 3');
INSERT INTO ACT_IF
	VALUES (95,
	98,
	99,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (100,
	91,
	0,
	5,
	1,
	'HeartRateMonitor_A2: unregisterListener line: 5');
INSERT INTO ACT_E
	VALUES (100,
	101,
	95);
INSERT INTO V_VAL
	VALUES (97,
	1,
	1,
	2,
	1,
	3,
	0,
	0,
	0,
	0,
	75,
	91);
INSERT INTO V_TVL
	VALUES (97,
	102);
INSERT INTO V_VAL
	VALUES (96,
	0,
	0,
	2,
	12,
	-1,
	2,
	25,
	0,
	0,
	75,
	91);
INSERT INTO V_BRV
	VALUES (96,
	103,
	1,
	2,
	7);
INSERT INTO V_VAL
	VALUES (104,
	0,
	0,
	2,
	41,
	47,
	0,
	0,
	0,
	0,
	49,
	91);
INSERT INTO V_IRF
	VALUES (104,
	94);
INSERT INTO V_VAL
	VALUES (105,
	0,
	0,
	2,
	49,
	53,
	0,
	0,
	0,
	0,
	31,
	91);
INSERT INTO V_AVL
	VALUES (105,
	104,
	27,
	30);
INSERT INTO V_PAR
	VALUES (105,
	0,
	96,
	'timer_inst_ref',
	0,
	2,
	25);
INSERT INTO V_VAL
	VALUES (99,
	0,
	0,
	3,
	6,
	8,
	0,
	0,
	0,
	0,
	75,
	91);
INSERT INTO V_TVL
	VALUES (99,
	102);
INSERT INTO V_VAR
	VALUES (94,
	91,
	'monitor',
	1,
	49);
INSERT INTO V_INT
	VALUES (94,
	0,
	27);
INSERT INTO V_VAR
	VALUES (102,
	91,
	'res',
	1,
	75);
INSERT INTO V_TRN
	VALUES (102,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (98,
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
	90,
	0);
INSERT INTO ACT_SMT
	VALUES (106,
	98,
	0,
	4,
	3,
	'HeartRateMonitor_A2: unregisterListener line: 4');
INSERT INTO ACT_BRG
	VALUES (106,
	107,
	4,
	8,
	4,
	3);
INSERT INTO V_VAL
	VALUES (108,
	0,
	0,
	4,
	29,
	74,
	0,
	0,
	0,
	0,
	78,
	98);
INSERT INTO V_LST
	VALUES (108,
	'Heart Rate Monitor: timer_cancel() succeeded.');
INSERT INTO V_PAR
	VALUES (108,
	106,
	0,
	'message',
	0,
	4,
	20);
INSERT INTO ACT_BLK
	VALUES (101,
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
	90,
	0);
INSERT INTO ACT_SMT
	VALUES (109,
	101,
	0,
	6,
	3,
	'HeartRateMonitor_A2: unregisterListener line: 6');
INSERT INTO ACT_BRG
	VALUES (109,
	110,
	6,
	8,
	6,
	3);
INSERT INTO V_VAL
	VALUES (111,
	0,
	0,
	6,
	29,
	71,
	0,
	0,
	0,
	0,
	78,
	101);
INSERT INTO V_LST
	VALUES (111,
	'Heart Rate Monitor: timer_cancel() failed.');
INSERT INTO V_PAR
	VALUES (111,
	109,
	0,
	'message',
	0,
	6,
	20);
INSERT INTO SM_TXN
	VALUES (88,
	32,
	34,
	0);
INSERT INTO SM_NSTXN
	VALUES (112,
	32,
	38,
	33,
	0);
INSERT INTO SM_TAH
	VALUES (113,
	32,
	112);
INSERT INTO SM_AH
	VALUES (113,
	32);
INSERT INTO SM_ACT
	VALUES (113,
	32,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (114,
	32,
	113);
INSERT INTO ACT_ACT
	VALUES (114,
	'class transition',
	0,
	115,
	0,
	0,
	'HeartRateMonitor_A3: timeout',
	0);
INSERT INTO ACT_BLK
	VALUES (115,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	114,
	0);
INSERT INTO SM_TXN
	VALUES (112,
	32,
	38,
	0);
INSERT INTO PE_PE
	VALUES (116,
	1,
	26,
	0,
	5);
INSERT INTO S_EE
	VALUES (116,
	'Logging',
	'',
	'LOG',
	0,
	'',
	'Logging',
	1);
INSERT INTO S_BRG
	VALUES (107,
	116,
	'LogSuccess',
	'',
	0,
	117,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (118,
	107,
	'message',
	78,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (119,
	107);
INSERT INTO ACT_ACT
	VALUES (119,
	'bridge',
	0,
	120,
	0,
	0,
	'Logging::LogSuccess',
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
	VALUES (110,
	116,
	'LogFailure',
	'',
	0,
	117,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (121,
	110,
	'message',
	78,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (122,
	110);
INSERT INTO ACT_ACT
	VALUES (122,
	'bridge',
	0,
	123,
	0,
	0,
	'Logging::LogFailure',
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
	VALUES (69,
	116,
	'LogInfo',
	'',
	0,
	117,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (124,
	69,
	'message',
	78,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (125,
	69);
INSERT INTO ACT_ACT
	VALUES (125,
	'bridge',
	0,
	126,
	0,
	0,
	'Logging::LogInfo',
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
	116,
	'LogDate',
	'',
	0,
	117,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (128,
	127,
	'd',
	129,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (130,
	127,
	'message',
	78,
	0,
	'',
	128,
	'');
INSERT INTO ACT_BRB
	VALUES (131,
	127);
INSERT INTO ACT_ACT
	VALUES (131,
	'bridge',
	0,
	132,
	0,
	0,
	'Logging::LogDate',
	0);
INSERT INTO ACT_BLK
	VALUES (132,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	131,
	0);
INSERT INTO S_BRG
	VALUES (133,
	116,
	'LogTime',
	'',
	0,
	117,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (134,
	133,
	't',
	135,
	0,
	'',
	136,
	'');
INSERT INTO S_BPARM
	VALUES (136,
	133,
	'message',
	78,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (137,
	133);
INSERT INTO ACT_ACT
	VALUES (137,
	'bridge',
	0,
	138,
	0,
	0,
	'Logging::LogTime',
	0);
INSERT INTO ACT_BLK
	VALUES (138,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	137,
	0);
INSERT INTO S_BRG
	VALUES (139,
	116,
	'LogReal',
	'',
	0,
	117,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (140,
	139,
	'r',
	141,
	0,
	'',
	142,
	'');
INSERT INTO S_BPARM
	VALUES (142,
	139,
	'message',
	78,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (143,
	139);
INSERT INTO ACT_ACT
	VALUES (143,
	'bridge',
	0,
	144,
	0,
	0,
	'Logging::LogReal',
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
INSERT INTO S_BRG
	VALUES (145,
	116,
	'LogInteger',
	'',
	0,
	117,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (146,
	145,
	'message',
	29,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (147,
	145);
INSERT INTO ACT_ACT
	VALUES (147,
	'bridge',
	0,
	148,
	0,
	0,
	'Logging::LogInteger',
	0);
INSERT INTO ACT_BLK
	VALUES (148,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
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
INSERT INTO PE_PE
	VALUES (149,
	1,
	26,
	0,
	5);
INSERT INTO S_EE
	VALUES (149,
	'Time',
	'The Time external entity provides date, timestamp, and timer related operations.',
	'TIM',
	0,
	'',
	'Time',
	1);
INSERT INTO S_BRG
	VALUES (150,
	149,
	'current_date',
	'',
	1,
	129,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (151,
	150);
INSERT INTO ACT_ACT
	VALUES (151,
	'bridge',
	0,
	152,
	0,
	0,
	'Time::current_date',
	0);
INSERT INTO ACT_BLK
	VALUES (152,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	151,
	0);
INSERT INTO S_BRG
	VALUES (153,
	149,
	'create_date',
	'',
	1,
	129,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (154,
	153,
	'second',
	29,
	0,
	'',
	155,
	'');
INSERT INTO S_BPARM
	VALUES (156,
	153,
	'minute',
	29,
	0,
	'',
	157,
	'');
INSERT INTO S_BPARM
	VALUES (157,
	153,
	'hour',
	29,
	0,
	'',
	158,
	'');
INSERT INTO S_BPARM
	VALUES (158,
	153,
	'day',
	29,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (155,
	153,
	'month',
	29,
	0,
	'',
	156,
	'');
INSERT INTO S_BPARM
	VALUES (159,
	153,
	'year',
	29,
	0,
	'',
	154,
	'');
INSERT INTO ACT_BRB
	VALUES (160,
	153);
INSERT INTO ACT_ACT
	VALUES (160,
	'bridge',
	0,
	161,
	0,
	0,
	'Time::create_date',
	0);
INSERT INTO ACT_BLK
	VALUES (161,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	160,
	0);
INSERT INTO S_BRG
	VALUES (162,
	149,
	'get_second',
	'',
	1,
	29,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (163,
	162,
	'date',
	129,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (164,
	162);
INSERT INTO ACT_ACT
	VALUES (164,
	'bridge',
	0,
	165,
	0,
	0,
	'Time::get_second',
	0);
INSERT INTO ACT_BLK
	VALUES (165,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
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
INSERT INTO S_BRG
	VALUES (166,
	149,
	'get_minute',
	'',
	1,
	29,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (167,
	166,
	'date',
	129,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (168,
	166);
INSERT INTO ACT_ACT
	VALUES (168,
	'bridge',
	0,
	169,
	0,
	0,
	'Time::get_minute',
	0);
INSERT INTO ACT_BLK
	VALUES (169,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	168,
	0);
INSERT INTO S_BRG
	VALUES (170,
	149,
	'get_hour',
	'',
	1,
	29,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (171,
	170,
	'date',
	129,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (172,
	170);
INSERT INTO ACT_ACT
	VALUES (172,
	'bridge',
	0,
	173,
	0,
	0,
	'Time::get_hour',
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
	149,
	'get_day',
	'',
	1,
	29,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (175,
	174,
	'date',
	129,
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
	'Time::get_day',
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
INSERT INTO S_BRG
	VALUES (178,
	149,
	'get_month',
	'',
	1,
	29,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (179,
	178,
	'date',
	129,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (180,
	178);
INSERT INTO ACT_ACT
	VALUES (180,
	'bridge',
	0,
	181,
	0,
	0,
	'Time::get_month',
	0);
INSERT INTO ACT_BLK
	VALUES (181,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
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
INSERT INTO S_BRG
	VALUES (182,
	149,
	'get_year',
	'',
	1,
	29,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (183,
	182,
	'date',
	129,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (184,
	182);
INSERT INTO ACT_ACT
	VALUES (184,
	'bridge',
	0,
	185,
	0,
	0,
	'Time::get_year',
	0);
INSERT INTO ACT_BLK
	VALUES (185,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
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
INSERT INTO S_BRG
	VALUES (186,
	149,
	'current_clock',
	'',
	1,
	135,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (187,
	186);
INSERT INTO ACT_ACT
	VALUES (187,
	'bridge',
	0,
	188,
	0,
	0,
	'Time::current_clock',
	0);
INSERT INTO ACT_BLK
	VALUES (188,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	187,
	0);
INSERT INTO S_BRG
	VALUES (189,
	149,
	'timer_start',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Returns the instance
handle of the timer.',
	1,
	31,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (190,
	189,
	'microseconds',
	29,
	0,
	'',
	191,
	'');
INSERT INTO S_BPARM
	VALUES (191,
	189,
	'event_inst',
	82,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (192,
	189);
INSERT INTO ACT_ACT
	VALUES (192,
	'bridge',
	0,
	193,
	0,
	0,
	'Time::timer_start',
	0);
INSERT INTO ACT_BLK
	VALUES (193,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
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
INSERT INTO S_BRG
	VALUES (80,
	149,
	'timer_start_recurring',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Upon expiration, the
timer will be restarted and fire again in the specified number of microseconds
generating the passed event. This bridge operation returns the instance handle
of the timer.',
	1,
	31,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (194,
	80,
	'microseconds',
	29,
	0,
	'',
	195,
	'');
INSERT INTO S_BPARM
	VALUES (195,
	80,
	'event_inst',
	82,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (196,
	80);
INSERT INTO ACT_ACT
	VALUES (196,
	'bridge',
	0,
	197,
	0,
	0,
	'Time::timer_start_recurring',
	0);
INSERT INTO ACT_BLK
	VALUES (197,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	196,
	0);
INSERT INTO S_BRG
	VALUES (198,
	149,
	'timer_remaining_time',
	'Returns the time remaining (in microseconds) for the passed timer instance. If
the timer has expired, a zero value is returned.',
	1,
	29,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (199,
	198,
	'timer_inst_ref',
	31,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (200,
	198);
INSERT INTO ACT_ACT
	VALUES (200,
	'bridge',
	0,
	201,
	0,
	0,
	'Time::timer_remaining_time',
	0);
INSERT INTO ACT_BLK
	VALUES (201,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	200,
	0);
INSERT INTO S_BRG
	VALUES (202,
	149,
	'timer_reset_time',
	'This bridge operation attempts to set the passed existing timer to expire in
the specified number of microseconds. If the timer exists (that is, it has not
expired), a TRUE value is returned. If the timer no longer exists, a FALSE value
is returned.',
	1,
	75,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (203,
	202,
	'timer_inst_ref',
	31,
	0,
	'',
	204,
	'');
INSERT INTO S_BPARM
	VALUES (204,
	202,
	'microseconds',
	29,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (205,
	202);
INSERT INTO ACT_ACT
	VALUES (205,
	'bridge',
	0,
	206,
	0,
	0,
	'Time::timer_reset_time',
	0);
INSERT INTO ACT_BLK
	VALUES (206,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	205,
	0);
INSERT INTO S_BRG
	VALUES (207,
	149,
	'timer_add_time',
	'This bridge operation attempts to add the specified number of microseconds to a
passed existing timer. If the timer exists (that is, it has not expired), a TRUE
value is returned. If the timer no longer exists, a FALSE value is returned.',
	1,
	75,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (208,
	207,
	'timer_inst_ref',
	31,
	0,
	'',
	209,
	'');
INSERT INTO S_BPARM
	VALUES (209,
	207,
	'microseconds',
	29,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (210,
	207);
INSERT INTO ACT_ACT
	VALUES (210,
	'bridge',
	0,
	211,
	0,
	0,
	'Time::timer_add_time',
	0);
INSERT INTO ACT_BLK
	VALUES (211,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	210,
	0);
INSERT INTO S_BRG
	VALUES (103,
	149,
	'timer_cancel',
	'This bridge operation cancels and deletes the passed timer instance. If the 
timer exists (that is, it had not expired), a TRUE value is returned. If the
timer no longer exists, a FALSE value is returned.',
	1,
	75,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (212,
	103,
	'timer_inst_ref',
	31,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (213,
	103);
INSERT INTO ACT_ACT
	VALUES (213,
	'bridge',
	0,
	214,
	0,
	0,
	'Time::timer_cancel',
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
	117,
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
	117,
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
	117,
	'heartRateChanged',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (216,
	23,
	29,
	'heartRate',
	'',
	0,
	'',
	0);
INSERT INTO PE_PE
	VALUES (217,
	1,
	215,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (217,
	'HeartRateConstants',
	'SamplingPeriod is expressed in seconds and represents the period at which heart-rate samples are recorded.
AveragingWindow is expressed in samples and represents the number of samples used when calculating the current average.');
INSERT INTO CNST_SYC
	VALUES (218,
	'HeartRateAveragingWindow',
	'',
	29,
	217,
	85,
	29);
INSERT INTO CNST_LFSC
	VALUES (218,
	29);
INSERT INTO CNST_LSC
	VALUES (218,
	29,
	'5');
INSERT INTO CNST_SYC
	VALUES (85,
	'HeartRateSamplingPeriod',
	'',
	29,
	217,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (85,
	29);
INSERT INTO CNST_LSC
	VALUES (85,
	29,
	'3');
INSERT INTO PE_PE
	VALUES (117,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (117,
	0,
	'void',
	'',
	'');
INSERT INTO S_CDT
	VALUES (117,
	0);
INSERT INTO PE_PE
	VALUES (75,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (75,
	0,
	'boolean',
	'',
	'');
INSERT INTO S_CDT
	VALUES (75,
	1);
INSERT INTO PE_PE
	VALUES (29,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (29,
	0,
	'integer',
	'',
	'');
INSERT INTO S_CDT
	VALUES (29,
	2);
INSERT INTO PE_PE
	VALUES (141,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (141,
	0,
	'real',
	'',
	'');
INSERT INTO S_CDT
	VALUES (141,
	3);
INSERT INTO PE_PE
	VALUES (78,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (78,
	0,
	'string',
	'',
	'');
INSERT INTO S_CDT
	VALUES (78,
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
	VALUES (49,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (49,
	0,
	'inst_ref<Object>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (49,
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
	VALUES (82,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (82,
	0,
	'inst<Event>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (82,
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
	VALUES (129,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (129,
	0,
	'date',
	'',
	'');
INSERT INTO S_UDT
	VALUES (129,
	223,
	1);
INSERT INTO PE_PE
	VALUES (31,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (31,
	0,
	'inst_ref<Timer>',
	'',
	'');
INSERT INTO S_UDT
	VALUES (31,
	224,
	3);
INSERT INTO PE_PE
	VALUES (135,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (135,
	0,
	'timestamp',
	'',
	'');
INSERT INTO S_UDT
	VALUES (135,
	223,
	2);
