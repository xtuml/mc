-- root-types-contained: SystemModel_c,PackageableElement_c,DataType_c,CoreDataType_c,UserDataType_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES (1,
	'UI',
	1);
INSERT INTO EP_PKG
	VALUES (2,
	1,
	1,
	'UI',
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
	VALUES (4,
	3,
	'UI',
	0,
	0);
INSERT INTO C_IR
	VALUES (5,
	6,
	0,
	4);
INSERT INTO C_P
	VALUES (5,
	'UI',
	'Unnamed Interface',
	'',
	'UI::UI::UI');
INSERT INTO SPR_PEP
	VALUES (7,
	8,
	5);
INSERT INTO SPR_PO
	VALUES (7,
	'setTime',
	'',
	'::setTime(time:param.time);',
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
	'UI::UI::setTime',
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
	0,
	0,
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
	'UI::UI::setTime line: 1');
INSERT INTO ACT_FNC
	VALUES (11,
	12,
	1,
	3);
INSERT INTO V_VAL
	VALUES (13,
	0,
	0,
	1,
	22,
	25,
	0,
	0,
	0,
	0,
	14,
	10);
INSERT INTO V_PVL
	VALUES (13,
	0,
	0,
	0,
	15);
INSERT INTO V_PAR
	VALUES (13,
	11,
	0,
	'time',
	0,
	1,
	11);
INSERT INTO SPR_PEP
	VALUES (16,
	17,
	5);
INSERT INTO SPR_PO
	VALUES (16,
	'setData',
	'',
	'::setData( value:param.value, unit:param.unit );
',
	1);
INSERT INTO ACT_POB
	VALUES (18,
	16);
INSERT INTO ACT_ACT
	VALUES (18,
	'interface operation',
	0,
	19,
	0,
	0,
	'UI::UI::setData',
	0);
INSERT INTO ACT_BLK
	VALUES (19,
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
	18,
	0);
INSERT INTO ACT_SMT
	VALUES (20,
	19,
	0,
	1,
	1,
	'UI::UI::setData line: 1');
INSERT INTO ACT_FNC
	VALUES (20,
	21,
	1,
	3);
INSERT INTO V_VAL
	VALUES (22,
	0,
	0,
	1,
	24,
	28,
	0,
	0,
	0,
	0,
	23,
	19);
INSERT INTO V_PVL
	VALUES (22,
	0,
	0,
	0,
	24);
INSERT INTO V_PAR
	VALUES (22,
	20,
	0,
	'value',
	25,
	1,
	12);
INSERT INTO V_VAL
	VALUES (25,
	0,
	0,
	1,
	42,
	45,
	0,
	0,
	0,
	0,
	26,
	19);
INSERT INTO V_PVL
	VALUES (25,
	0,
	0,
	0,
	27);
INSERT INTO V_PAR
	VALUES (25,
	20,
	0,
	'unit',
	0,
	1,
	31);
INSERT INTO SPR_PEP
	VALUES (28,
	29,
	5);
INSERT INTO SPR_PO
	VALUES (28,
	'startTest',
	'',
	'generate TestCase2:tcstart(iterations: 2) to TestCase creator;',
	1);
INSERT INTO ACT_POB
	VALUES (30,
	28);
INSERT INTO ACT_ACT
	VALUES (30,
	'interface operation',
	0,
	31,
	0,
	0,
	'UI::UI::startTest',
	0);
INSERT INTO ACT_BLK
	VALUES (31,
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
	30,
	0);
INSERT INTO ACT_SMT
	VALUES (32,
	31,
	0,
	1,
	1,
	'UI::UI::startTest line: 1');
INSERT INTO E_ESS
	VALUES (32,
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
	VALUES (33,
	32,
	0,
	'iterations',
	0,
	1,
	28);
INSERT INTO E_GES
	VALUES (32);
INSERT INTO E_GSME
	VALUES (32,
	34);
INSERT INTO E_GEC
	VALUES (32);
INSERT INTO V_VAL
	VALUES (33,
	0,
	0,
	1,
	40,
	40,
	0,
	0,
	0,
	0,
	14,
	31);
INSERT INTO V_LIN
	VALUES (33,
	'2');
INSERT INTO SPR_PEP
	VALUES (35,
	36,
	5);
INSERT INTO SPR_PO
	VALUES (35,
	'setIndicator',
	'',
	'::setIndicator( indicator:param.indicator );
',
	1);
INSERT INTO ACT_POB
	VALUES (37,
	35);
INSERT INTO ACT_ACT
	VALUES (37,
	'interface operation',
	0,
	38,
	0,
	0,
	'UI::UI::setIndicator',
	0);
INSERT INTO ACT_BLK
	VALUES (38,
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
	37,
	0);
INSERT INTO ACT_SMT
	VALUES (39,
	38,
	0,
	1,
	1,
	'UI::UI::setIndicator line: 1');
INSERT INTO ACT_FNC
	VALUES (39,
	40,
	1,
	3);
INSERT INTO V_VAL
	VALUES (41,
	0,
	0,
	1,
	33,
	41,
	0,
	0,
	0,
	0,
	42,
	38);
INSERT INTO V_PVL
	VALUES (41,
	0,
	0,
	0,
	43);
INSERT INTO V_PAR
	VALUES (41,
	39,
	0,
	'indicator',
	0,
	1,
	17);
INSERT INTO SPR_PEP
	VALUES (44,
	45,
	5);
INSERT INTO SPR_PO
	VALUES (44,
	'newGoalSpec',
	'',
	'::newGoalSpec( sequenceNumber:param.sequenceNumber, minimum:param.minimum, maximum:param.maximum, span:param.span, criteriaType:param.criteriaType, spanType:param.spanType );',
	1);
INSERT INTO ACT_POB
	VALUES (46,
	44);
INSERT INTO ACT_ACT
	VALUES (46,
	'interface operation',
	0,
	47,
	0,
	0,
	'UI::UI::newGoalSpec',
	0);
INSERT INTO ACT_BLK
	VALUES (47,
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
	46,
	0);
INSERT INTO ACT_SMT
	VALUES (48,
	47,
	0,
	1,
	1,
	'UI::UI::newGoalSpec line: 1');
INSERT INTO ACT_FNC
	VALUES (48,
	49,
	1,
	3);
INSERT INTO V_VAL
	VALUES (50,
	0,
	0,
	1,
	37,
	50,
	0,
	0,
	0,
	0,
	14,
	47);
INSERT INTO V_PVL
	VALUES (50,
	0,
	0,
	0,
	51);
INSERT INTO V_PAR
	VALUES (50,
	48,
	0,
	'sequenceNumber',
	52,
	1,
	16);
INSERT INTO V_VAL
	VALUES (52,
	0,
	0,
	1,
	67,
	73,
	0,
	0,
	0,
	0,
	23,
	47);
INSERT INTO V_PVL
	VALUES (52,
	0,
	0,
	0,
	53);
INSERT INTO V_PAR
	VALUES (52,
	48,
	0,
	'minimum',
	54,
	1,
	53);
INSERT INTO V_VAL
	VALUES (54,
	0,
	0,
	1,
	90,
	96,
	0,
	0,
	0,
	0,
	23,
	47);
INSERT INTO V_PVL
	VALUES (54,
	0,
	0,
	0,
	55);
INSERT INTO V_PAR
	VALUES (54,
	48,
	0,
	'maximum',
	56,
	1,
	76);
INSERT INTO V_VAL
	VALUES (56,
	0,
	0,
	1,
	110,
	113,
	0,
	0,
	0,
	0,
	23,
	47);
INSERT INTO V_PVL
	VALUES (56,
	0,
	0,
	0,
	57);
INSERT INTO V_PAR
	VALUES (56,
	48,
	0,
	'span',
	58,
	1,
	99);
INSERT INTO V_VAL
	VALUES (58,
	0,
	0,
	1,
	135,
	146,
	0,
	0,
	0,
	0,
	59,
	47);
INSERT INTO V_PVL
	VALUES (58,
	0,
	0,
	0,
	60);
INSERT INTO V_PAR
	VALUES (58,
	48,
	0,
	'criteriaType',
	61,
	1,
	116);
INSERT INTO V_VAL
	VALUES (61,
	0,
	0,
	1,
	164,
	171,
	0,
	0,
	0,
	0,
	62,
	47);
INSERT INTO V_PVL
	VALUES (61,
	0,
	0,
	0,
	63);
INSERT INTO V_PAR
	VALUES (61,
	48,
	0,
	'spanType',
	0,
	1,
	149);
INSERT INTO C_PO
	VALUES (64,
	3,
	'Tracking',
	0,
	0);
INSERT INTO C_IR
	VALUES (65,
	66,
	0,
	64);
INSERT INTO C_R
	VALUES (65,
	'UITracking',
	'',
	'Unnamed Interface',
	'UI::Tracking::UITracking');
INSERT INTO SPR_REP
	VALUES (67,
	68,
	65);
INSERT INTO SPR_RO
	VALUES (67,
	'setTargetPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (69,
	67);
INSERT INTO ACT_ACT
	VALUES (69,
	'interface operation',
	0,
	70,
	0,
	0,
	'Tracking::UITracking::setTargetPressed',
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
INSERT INTO SPR_REP
	VALUES (71,
	72,
	65);
INSERT INTO SPR_RO
	VALUES (71,
	'startStopPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (73,
	71);
INSERT INTO ACT_ACT
	VALUES (73,
	'interface operation',
	0,
	74,
	0,
	0,
	'Tracking::UITracking::startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (74,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	73,
	0);
INSERT INTO SPR_REP
	VALUES (75,
	76,
	65);
INSERT INTO SPR_RO
	VALUES (75,
	'lapResetPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (77,
	75);
INSERT INTO ACT_ACT
	VALUES (77,
	'interface operation',
	0,
	78,
	0,
	0,
	'Tracking::UITracking::lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (78,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	77,
	0);
INSERT INTO SPR_REP
	VALUES (79,
	80,
	65);
INSERT INTO SPR_RO
	VALUES (79,
	'modePressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (81,
	79);
INSERT INTO ACT_ACT
	VALUES (81,
	'interface operation',
	0,
	82,
	0,
	0,
	'Tracking::UITracking::modePressed',
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
	84,
	65);
INSERT INTO SPR_RO
	VALUES (83,
	'newGoalSpec',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (85,
	83);
INSERT INTO ACT_ACT
	VALUES (85,
	'interface operation',
	0,
	86,
	0,
	0,
	'Tracking::UITracking::newGoalSpec',
	0);
INSERT INTO ACT_BLK
	VALUES (86,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	85,
	0);
INSERT INTO SPR_REP
	VALUES (87,
	88,
	65);
INSERT INTO SPR_RO
	VALUES (87,
	'lightPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (89,
	87);
INSERT INTO ACT_ACT
	VALUES (89,
	'interface operation',
	0,
	90,
	0,
	0,
	'Tracking::UITracking::lightPressed',
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
INSERT INTO PE_PE
	VALUES (91,
	1,
	0,
	3,
	7);
INSERT INTO EP_PKG
	VALUES (91,
	0,
	1,
	'UI',
	'',
	0);
INSERT INTO PE_PE
	VALUES (92,
	1,
	91,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (92,
	'TestCase',
	2,
	'TestCase',
	'Represents a very simple automated test case.',
	0);
INSERT INTO O_TFR
	VALUES (93,
	92,
	'execute',
	'',
	94,
	0,
	'generate TestCase2:tcstart(iterations: 2) to TestCase creator;',
	1,
	'',
	0);
INSERT INTO ACT_OPB
	VALUES (95,
	93);
INSERT INTO ACT_ACT
	VALUES (95,
	'class operation',
	0,
	96,
	0,
	0,
	'TestCase::execute',
	0);
INSERT INTO ACT_BLK
	VALUES (96,
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
	95,
	0);
INSERT INTO ACT_SMT
	VALUES (97,
	96,
	0,
	1,
	1,
	'TestCase::execute line: 1');
INSERT INTO E_ESS
	VALUES (97,
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
	VALUES (98,
	97,
	0,
	'iterations',
	0,
	1,
	28);
INSERT INTO E_GES
	VALUES (97);
INSERT INTO E_GSME
	VALUES (97,
	34);
INSERT INTO E_GEC
	VALUES (97);
INSERT INTO V_VAL
	VALUES (98,
	0,
	0,
	1,
	40,
	40,
	0,
	0,
	0,
	0,
	14,
	96);
INSERT INTO V_LIN
	VALUES (98,
	'2');
INSERT INTO O_NBATTR
	VALUES (99,
	92);
INSERT INTO O_BATTR
	VALUES (99,
	92);
INSERT INTO O_ATTR
	VALUES (99,
	92,
	0,
	'current_state',
	'',
	'',
	'current_state',
	0,
	100,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (101,
	92);
INSERT INTO O_BATTR
	VALUES (101,
	92);
INSERT INTO O_ATTR
	VALUES (101,
	92,
	99,
	'iterations',
	'',
	'',
	'iterations',
	0,
	14,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	92);
INSERT INTO O_ID
	VALUES (1,
	92);
INSERT INTO O_ID
	VALUES (2,
	92);
INSERT INTO SM_ISM
	VALUES (102,
	92);
INSERT INTO SM_SM
	VALUES (102,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (102);
INSERT INTO SM_EVTDI
	VALUES (103,
	102,
	'iterations',
	'',
	14,
	'',
	34,
	0);
INSERT INTO SM_LEVT
	VALUES (104,
	102,
	0);
INSERT INTO SM_SEVT
	VALUES (104,
	102,
	0);
INSERT INTO SM_EVT
	VALUES (104,
	102,
	0,
	1,
	'tcdelay',
	0,
	'',
	'TestCase1',
	'');
INSERT INTO SM_LEVT
	VALUES (34,
	102,
	0);
INSERT INTO SM_SEVT
	VALUES (34,
	102,
	0);
INSERT INTO SM_EVT
	VALUES (34,
	102,
	0,
	2,
	'tcstart',
	0,
	'',
	'TestCase2',
	'');
INSERT INTO SM_LEVT
	VALUES (105,
	102,
	0);
INSERT INTO SM_SEVT
	VALUES (105,
	102,
	0);
INSERT INTO SM_EVT
	VALUES (105,
	102,
	0,
	3,
	'tcfinish',
	0,
	'',
	'TestCase3',
	'');
INSERT INTO SM_STATE
	VALUES (106,
	102,
	0,
	'pressStartStop',
	2,
	0);
INSERT INTO SM_SEME
	VALUES (106,
	104,
	102,
	0);
INSERT INTO SM_CH
	VALUES (106,
	34,
	102,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (106,
	34,
	102,
	0);
INSERT INTO SM_SEME
	VALUES (106,
	105,
	102,
	0);
INSERT INTO SM_MOAH
	VALUES (107,
	102,
	106);
INSERT INTO SM_AH
	VALUES (107,
	102);
INSERT INTO SM_ACT
	VALUES (107,
	102,
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
	VALUES (108,
	102,
	107);
INSERT INTO ACT_ACT
	VALUES (108,
	'state',
	0,
	109,
	0,
	0,
	'TestCase::pressStartStop',
	0);
INSERT INTO ACT_BLK
	VALUES (109,
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
	108,
	0);
INSERT INTO ACT_SMT
	VALUES (110,
	109,
	0,
	1,
	1,
	'TestCase::pressStartStop line: 1');
INSERT INTO ACT_IF
	VALUES (110,
	111,
	112,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (113,
	109,
	0,
	6,
	1,
	'TestCase::pressStartStop line: 6');
INSERT INTO ACT_E
	VALUES (113,
	114,
	110);
INSERT INTO V_VAL
	VALUES (115,
	0,
	0,
	1,
	5,
	8,
	0,
	0,
	0,
	0,
	116,
	109);
INSERT INTO V_IRF
	VALUES (115,
	117);
INSERT INTO V_VAL
	VALUES (118,
	0,
	0,
	1,
	10,
	19,
	0,
	0,
	0,
	0,
	14,
	109);
INSERT INTO V_AVL
	VALUES (118,
	115,
	92,
	101);
INSERT INTO V_VAL
	VALUES (112,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	109);
INSERT INTO V_BIN
	VALUES (112,
	120,
	118,
	'>');
INSERT INTO V_VAL
	VALUES (120,
	0,
	0,
	1,
	23,
	23,
	0,
	0,
	0,
	0,
	14,
	109);
INSERT INTO V_LIN
	VALUES (120,
	'0');
INSERT INTO V_VAR
	VALUES (117,
	109,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (117,
	0,
	92);
INSERT INTO ACT_BLK
	VALUES (111,
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
	108,
	0);
INSERT INTO ACT_SMT
	VALUES (121,
	111,
	122,
	2,
	3,
	'TestCase::pressStartStop line: 2');
INSERT INTO ACT_AI
	VALUES (121,
	123,
	124,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (122,
	111,
	125,
	3,
	3,
	'TestCase::pressStartStop line: 3');
INSERT INTO E_ESS
	VALUES (122,
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
	VALUES (122,
	1,
	126);
INSERT INTO E_CSME
	VALUES (122,
	104);
INSERT INTO E_CEI
	VALUES (122,
	117);
INSERT INTO ACT_SMT
	VALUES (125,
	111,
	127,
	4,
	3,
	'TestCase::pressStartStop line: 4');
INSERT INTO ACT_AI
	VALUES (125,
	128,
	129,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (127,
	111,
	0,
	5,
	3,
	'TestCase::pressStartStop line: 5');
INSERT INTO ACT_IOP
	VALUES (127,
	5,
	18,
	5,
	8,
	0,
	71,
	0);
INSERT INTO V_VAL
	VALUES (130,
	1,
	0,
	2,
	3,
	6,
	0,
	0,
	0,
	0,
	116,
	111);
INSERT INTO V_IRF
	VALUES (130,
	117);
INSERT INTO V_VAL
	VALUES (124,
	1,
	0,
	2,
	8,
	17,
	0,
	0,
	0,
	0,
	14,
	111);
INSERT INTO V_AVL
	VALUES (124,
	130,
	92,
	101);
INSERT INTO V_VAL
	VALUES (131,
	0,
	0,
	2,
	21,
	24,
	0,
	0,
	0,
	0,
	116,
	111);
INSERT INTO V_IRF
	VALUES (131,
	117);
INSERT INTO V_VAL
	VALUES (132,
	0,
	0,
	2,
	26,
	35,
	0,
	0,
	0,
	0,
	14,
	111);
INSERT INTO V_AVL
	VALUES (132,
	131,
	92,
	101);
INSERT INTO V_VAL
	VALUES (123,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	14,
	111);
INSERT INTO V_BIN
	VALUES (123,
	133,
	132,
	'-');
INSERT INTO V_VAL
	VALUES (133,
	0,
	0,
	2,
	39,
	39,
	0,
	0,
	0,
	0,
	14,
	111);
INSERT INTO V_LIN
	VALUES (133,
	'1');
INSERT INTO V_VAL
	VALUES (129,
	1,
	1,
	4,
	3,
	8,
	0,
	0,
	0,
	0,
	134,
	111);
INSERT INTO V_TVL
	VALUES (129,
	135);
INSERT INTO V_VAL
	VALUES (128,
	0,
	0,
	4,
	17,
	-1,
	4,
	29,
	4,
	46,
	134,
	111);
INSERT INTO V_BRV
	VALUES (128,
	136,
	1,
	4,
	12);
INSERT INTO V_VAL
	VALUES (137,
	0,
	0,
	4,
	41,
	43,
	0,
	0,
	0,
	0,
	138,
	111);
INSERT INTO V_TVL
	VALUES (137,
	126);
INSERT INTO V_PAR
	VALUES (137,
	0,
	128,
	'event_inst',
	139,
	4,
	29);
INSERT INTO V_VAL
	VALUES (139,
	0,
	0,
	4,
	60,
	66,
	0,
	0,
	0,
	0,
	14,
	111);
INSERT INTO V_LIN
	VALUES (139,
	'4000000');
INSERT INTO V_PAR
	VALUES (139,
	0,
	128,
	'microseconds',
	0,
	4,
	46);
INSERT INTO V_VAR
	VALUES (126,
	111,
	'evt',
	1,
	138);
INSERT INTO V_TRN
	VALUES (126,
	0,
	'');
INSERT INTO V_VAR
	VALUES (135,
	111,
	'handle',
	1,
	134);
INSERT INTO V_TRN
	VALUES (135,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (114,
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
	108,
	0);
INSERT INTO ACT_SMT
	VALUES (140,
	114,
	141,
	7,
	3,
	'TestCase::pressStartStop line: 7');
INSERT INTO E_ESS
	VALUES (140,
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
	VALUES (140);
INSERT INTO E_GSME
	VALUES (140,
	105);
INSERT INTO E_GEN
	VALUES (140,
	117);
INSERT INTO ACT_SMT
	VALUES (141,
	114,
	0,
	8,
	3,
	'TestCase::pressStartStop line: 8');
INSERT INTO ACT_IOP
	VALUES (141,
	8,
	18,
	8,
	8,
	0,
	75,
	0);
INSERT INTO SM_STATE
	VALUES (142,
	102,
	0,
	'testCaseFinished',
	3,
	1);
INSERT INTO SM_CH
	VALUES (142,
	104,
	102,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (142,
	104,
	102,
	0);
INSERT INTO SM_CH
	VALUES (142,
	34,
	102,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (142,
	34,
	102,
	0);
INSERT INTO SM_CH
	VALUES (142,
	105,
	102,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (142,
	105,
	102,
	0);
INSERT INTO SM_MOAH
	VALUES (143,
	102,
	142);
INSERT INTO SM_AH
	VALUES (143,
	102);
INSERT INTO SM_ACT
	VALUES (143,
	102,
	1,
	'LOG::LogInfo(message: "End of test case"); ',
	'');
INSERT INTO ACT_SAB
	VALUES (144,
	102,
	143);
INSERT INTO ACT_ACT
	VALUES (144,
	'state',
	0,
	145,
	0,
	0,
	'TestCase::testCaseFinished',
	0);
INSERT INTO ACT_BLK
	VALUES (145,
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
	144,
	0);
INSERT INTO ACT_SMT
	VALUES (146,
	145,
	0,
	1,
	1,
	'TestCase::testCaseFinished line: 1');
INSERT INTO ACT_BRG
	VALUES (146,
	147,
	1,
	6,
	1,
	1);
INSERT INTO V_VAL
	VALUES (148,
	0,
	0,
	1,
	23,
	39,
	0,
	0,
	0,
	0,
	149,
	145);
INSERT INTO V_LST
	VALUES (148,
	'End of test case');
INSERT INTO V_PAR
	VALUES (148,
	146,
	0,
	'message',
	0,
	1,
	14);
INSERT INTO SM_NSTXN
	VALUES (150,
	102,
	106,
	104,
	0);
INSERT INTO SM_TAH
	VALUES (151,
	102,
	150);
INSERT INTO SM_AH
	VALUES (151,
	102);
INSERT INTO SM_ACT
	VALUES (151,
	102,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (152,
	102,
	151);
INSERT INTO ACT_ACT
	VALUES (152,
	'transition',
	0,
	153,
	0,
	0,
	'TestCase1: tcdelay',
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
INSERT INTO SM_TXN
	VALUES (150,
	102,
	106,
	0);
INSERT INTO SM_CRTXN
	VALUES (154,
	102,
	34,
	0);
INSERT INTO SM_TAH
	VALUES (155,
	102,
	154);
INSERT INTO SM_AH
	VALUES (155,
	102);
INSERT INTO SM_ACT
	VALUES (155,
	102,
	1,
	'LOG::LogInfo(message: "Start of test case"); 
self.iterations = rcvd_evt.iterations * 2;',
	'');
INSERT INTO ACT_TAB
	VALUES (156,
	102,
	155);
INSERT INTO ACT_ACT
	VALUES (156,
	'transition',
	0,
	157,
	0,
	0,
	'TestCase2: tcstart(iterations)',
	0);
INSERT INTO ACT_BLK
	VALUES (157,
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
	156,
	0);
INSERT INTO ACT_SMT
	VALUES (158,
	157,
	159,
	1,
	1,
	'TestCase2: tcstart(iterations) line: 1');
INSERT INTO ACT_BRG
	VALUES (158,
	147,
	1,
	6,
	1,
	1);
INSERT INTO ACT_SMT
	VALUES (159,
	157,
	0,
	2,
	1,
	'TestCase2: tcstart(iterations) line: 2');
INSERT INTO ACT_AI
	VALUES (159,
	160,
	161,
	0,
	0);
INSERT INTO V_VAL
	VALUES (162,
	0,
	0,
	1,
	23,
	41,
	0,
	0,
	0,
	0,
	149,
	157);
INSERT INTO V_LST
	VALUES (162,
	'Start of test case');
INSERT INTO V_PAR
	VALUES (162,
	158,
	0,
	'message',
	0,
	1,
	14);
INSERT INTO V_VAL
	VALUES (163,
	1,
	0,
	2,
	1,
	4,
	0,
	0,
	0,
	0,
	116,
	157);
INSERT INTO V_IRF
	VALUES (163,
	164);
INSERT INTO V_VAL
	VALUES (161,
	1,
	0,
	2,
	6,
	15,
	0,
	0,
	0,
	0,
	14,
	157);
INSERT INTO V_AVL
	VALUES (161,
	163,
	92,
	101);
INSERT INTO V_VAL
	VALUES (165,
	0,
	0,
	2,
	28,
	37,
	0,
	0,
	0,
	0,
	14,
	157);
INSERT INTO V_EDV
	VALUES (165);
INSERT INTO V_EPR
	VALUES (165,
	102,
	103,
	0);
INSERT INTO V_VAL
	VALUES (160,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	14,
	157);
INSERT INTO V_BIN
	VALUES (160,
	166,
	165,
	'*');
INSERT INTO V_VAL
	VALUES (166,
	0,
	0,
	2,
	41,
	41,
	0,
	0,
	0,
	0,
	14,
	157);
INSERT INTO V_LIN
	VALUES (166,
	'2');
INSERT INTO V_VAR
	VALUES (164,
	157,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (164,
	0,
	92);
INSERT INTO SM_TXN
	VALUES (154,
	102,
	106,
	0);
INSERT INTO SM_NSTXN
	VALUES (167,
	102,
	106,
	105,
	0);
INSERT INTO SM_TAH
	VALUES (168,
	102,
	167);
INSERT INTO SM_AH
	VALUES (168,
	102);
INSERT INTO SM_ACT
	VALUES (168,
	102,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (169,
	102,
	168);
INSERT INTO ACT_ACT
	VALUES (169,
	'transition',
	0,
	170,
	0,
	0,
	'TestCase3: tcfinish',
	0);
INSERT INTO ACT_BLK
	VALUES (170,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	169,
	0);
INSERT INTO SM_TXN
	VALUES (167,
	102,
	142,
	0);
INSERT INTO PE_PE
	VALUES (171,
	1,
	91,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (171,
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
	VALUES (172,
	171,
	'connect',
	'',
	94,
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
	VALUES (173,
	172);
INSERT INTO ACT_ACT
	VALUES (173,
	'class operation',
	0,
	174,
	0,
	0,
	'UI::connect',
	0);
INSERT INTO ACT_BLK
	VALUES (174,
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
	173,
	0);
INSERT INTO ACT_SMT
	VALUES (175,
	174,
	176,
	1,
	1,
	'UI::connect line: 1');
INSERT INTO ACT_BRG
	VALUES (175,
	177,
	1,
	12,
	1,
	1);
INSERT INTO ACT_SMT
	VALUES (176,
	174,
	178,
	3,
	1,
	'UI::connect line: 3');
INSERT INTO E_ESS
	VALUES (176,
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
	VALUES (176,
	1,
	179);
INSERT INTO E_CSME
	VALUES (176,
	180);
INSERT INTO E_CEA
	VALUES (176);
INSERT INTO ACT_SMT
	VALUES (178,
	174,
	181,
	4,
	1,
	'UI::connect line: 4');
INSERT INTO ACT_BRG
	VALUES (178,
	182,
	4,
	12,
	4,
	1);
INSERT INTO ACT_SMT
	VALUES (181,
	174,
	183,
	6,
	1,
	'UI::connect line: 6');
INSERT INTO E_ESS
	VALUES (181,
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
	VALUES (181,
	0,
	179);
INSERT INTO E_CSME
	VALUES (181,
	184);
INSERT INTO E_CEA
	VALUES (181);
INSERT INTO ACT_SMT
	VALUES (183,
	174,
	185,
	7,
	1,
	'UI::connect line: 7');
INSERT INTO ACT_BRG
	VALUES (183,
	186,
	7,
	12,
	7,
	1);
INSERT INTO ACT_SMT
	VALUES (185,
	174,
	187,
	9,
	1,
	'UI::connect line: 9');
INSERT INTO E_ESS
	VALUES (185,
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
	VALUES (185,
	0,
	179);
INSERT INTO E_CSME
	VALUES (185,
	188);
INSERT INTO E_CEA
	VALUES (185);
INSERT INTO ACT_SMT
	VALUES (187,
	174,
	189,
	10,
	1,
	'UI::connect line: 10');
INSERT INTO ACT_BRG
	VALUES (187,
	190,
	10,
	12,
	10,
	1);
INSERT INTO ACT_SMT
	VALUES (189,
	174,
	191,
	12,
	1,
	'UI::connect line: 12');
INSERT INTO E_ESS
	VALUES (189,
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
	VALUES (189,
	0,
	179);
INSERT INTO E_CSME
	VALUES (189,
	192);
INSERT INTO E_CEA
	VALUES (189);
INSERT INTO ACT_SMT
	VALUES (191,
	174,
	193,
	13,
	1,
	'UI::connect line: 13');
INSERT INTO ACT_BRG
	VALUES (191,
	194,
	13,
	12,
	13,
	1);
INSERT INTO ACT_SMT
	VALUES (193,
	174,
	195,
	15,
	1,
	'UI::connect line: 15');
INSERT INTO E_ESS
	VALUES (193,
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
	VALUES (193,
	0,
	179);
INSERT INTO E_CSME
	VALUES (193,
	196);
INSERT INTO E_CEA
	VALUES (193);
INSERT INTO ACT_SMT
	VALUES (195,
	174,
	0,
	16,
	1,
	'UI::connect line: 16');
INSERT INTO ACT_BRG
	VALUES (195,
	197,
	16,
	12,
	16,
	1);
INSERT INTO V_VAL
	VALUES (198,
	0,
	0,
	4,
	43,
	45,
	0,
	0,
	0,
	0,
	138,
	174);
INSERT INTO V_TVL
	VALUES (198,
	179);
INSERT INTO V_PAR
	VALUES (198,
	178,
	0,
	'evt',
	0,
	4,
	38);
INSERT INTO V_VAL
	VALUES (199,
	0,
	0,
	7,
	43,
	45,
	0,
	0,
	0,
	0,
	138,
	174);
INSERT INTO V_TVL
	VALUES (199,
	179);
INSERT INTO V_PAR
	VALUES (199,
	183,
	0,
	'evt',
	0,
	7,
	38);
INSERT INTO V_VAL
	VALUES (200,
	0,
	0,
	10,
	42,
	44,
	0,
	0,
	0,
	0,
	138,
	174);
INSERT INTO V_TVL
	VALUES (200,
	179);
INSERT INTO V_PAR
	VALUES (200,
	187,
	0,
	'evt',
	0,
	10,
	37);
INSERT INTO V_VAL
	VALUES (201,
	0,
	0,
	13,
	39,
	41,
	0,
	0,
	0,
	0,
	138,
	174);
INSERT INTO V_TVL
	VALUES (201,
	179);
INSERT INTO V_PAR
	VALUES (201,
	191,
	0,
	'evt',
	0,
	13,
	34);
INSERT INTO V_VAL
	VALUES (202,
	0,
	0,
	16,
	38,
	40,
	0,
	0,
	0,
	0,
	138,
	174);
INSERT INTO V_TVL
	VALUES (202,
	179);
INSERT INTO V_PAR
	VALUES (202,
	195,
	0,
	'evt',
	0,
	16,
	33);
INSERT INTO V_VAR
	VALUES (179,
	174,
	'evt',
	1,
	138);
INSERT INTO V_TRN
	VALUES (179,
	0,
	'');
INSERT INTO O_ID
	VALUES (0,
	171);
INSERT INTO O_ID
	VALUES (1,
	171);
INSERT INTO O_ID
	VALUES (2,
	171);
INSERT INTO SM_ASM
	VALUES (203,
	171);
INSERT INTO SM_SM
	VALUES (203,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (203);
INSERT INTO SM_LEVT
	VALUES (180,
	203,
	0);
INSERT INTO SM_SEVT
	VALUES (180,
	203,
	0);
INSERT INTO SM_EVT
	VALUES (180,
	203,
	0,
	3,
	'setTargetPressed',
	0,
	'',
	'UI_A3',
	'');
INSERT INTO SM_LEVT
	VALUES (184,
	203,
	0);
INSERT INTO SM_SEVT
	VALUES (184,
	203,
	0);
INSERT INTO SM_EVT
	VALUES (184,
	203,
	0,
	4,
	'startStopPressed',
	0,
	'',
	'UI_A4',
	'');
INSERT INTO SM_LEVT
	VALUES (188,
	203,
	0);
INSERT INTO SM_SEVT
	VALUES (188,
	203,
	0);
INSERT INTO SM_EVT
	VALUES (188,
	203,
	0,
	5,
	'lapResetPressed',
	0,
	'',
	'UI_A5',
	'');
INSERT INTO SM_LEVT
	VALUES (192,
	203,
	0);
INSERT INTO SM_SEVT
	VALUES (192,
	203,
	0);
INSERT INTO SM_EVT
	VALUES (192,
	203,
	0,
	6,
	'lightPressed',
	0,
	'',
	'UI_A6',
	'');
INSERT INTO SM_LEVT
	VALUES (196,
	203,
	0);
INSERT INTO SM_SEVT
	VALUES (196,
	203,
	0);
INSERT INTO SM_EVT
	VALUES (196,
	203,
	0,
	7,
	'modePressed',
	0,
	'',
	'UI_A7',
	'');
INSERT INTO SM_STATE
	VALUES (204,
	203,
	0,
	'running',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (204,
	180,
	203,
	0);
INSERT INTO SM_SEME
	VALUES (204,
	184,
	203,
	0);
INSERT INTO SM_SEME
	VALUES (204,
	188,
	203,
	0);
INSERT INTO SM_SEME
	VALUES (204,
	192,
	203,
	0);
INSERT INTO SM_SEME
	VALUES (204,
	196,
	203,
	0);
INSERT INTO SM_MOAH
	VALUES (205,
	203,
	204);
INSERT INTO SM_AH
	VALUES (205,
	203);
INSERT INTO SM_ACT
	VALUES (205,
	203,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (206,
	203,
	205);
INSERT INTO ACT_ACT
	VALUES (206,
	'class state',
	0,
	207,
	0,
	0,
	'UI::running',
	0);
INSERT INTO ACT_BLK
	VALUES (207,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	206,
	0);
INSERT INTO SM_NSTXN
	VALUES (208,
	203,
	204,
	180,
	0);
INSERT INTO SM_TAH
	VALUES (209,
	203,
	208);
INSERT INTO SM_AH
	VALUES (209,
	203);
INSERT INTO SM_ACT
	VALUES (209,
	203,
	1,
	'create event instance evt of UI_A3:setTargetPressed() to UI class;
GuiBridge::feedSetTargetPressedEvent(evt: evt);
::sendTargetPressed();',
	'');
INSERT INTO ACT_TAB
	VALUES (210,
	203,
	209);
INSERT INTO ACT_ACT
	VALUES (210,
	'class transition',
	0,
	211,
	0,
	0,
	'UI_A3: setTargetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (211,
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
	210,
	0);
INSERT INTO ACT_SMT
	VALUES (212,
	211,
	213,
	1,
	1,
	'UI_A3: setTargetPressed line: 1');
INSERT INTO E_ESS
	VALUES (212,
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
	VALUES (212,
	1,
	214);
INSERT INTO E_CSME
	VALUES (212,
	180);
INSERT INTO E_CEA
	VALUES (212);
INSERT INTO ACT_SMT
	VALUES (213,
	211,
	215,
	2,
	1,
	'UI_A3: setTargetPressed line: 2');
INSERT INTO ACT_BRG
	VALUES (213,
	182,
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (215,
	211,
	0,
	3,
	1,
	'UI_A3: setTargetPressed line: 3');
INSERT INTO ACT_FNC
	VALUES (215,
	216,
	3,
	3);
INSERT INTO V_VAL
	VALUES (217,
	0,
	0,
	2,
	43,
	45,
	0,
	0,
	0,
	0,
	138,
	211);
INSERT INTO V_TVL
	VALUES (217,
	214);
INSERT INTO V_PAR
	VALUES (217,
	213,
	0,
	'evt',
	0,
	2,
	38);
INSERT INTO V_VAR
	VALUES (214,
	211,
	'evt',
	1,
	138);
INSERT INTO V_TRN
	VALUES (214,
	0,
	'');
INSERT INTO SM_TXN
	VALUES (208,
	203,
	204,
	0);
INSERT INTO SM_NSTXN
	VALUES (218,
	203,
	204,
	184,
	0);
INSERT INTO SM_TAH
	VALUES (219,
	203,
	218);
INSERT INTO SM_AH
	VALUES (219,
	203);
INSERT INTO SM_ACT
	VALUES (219,
	203,
	1,
	'create event instance evt of UI_A4:startStopPressed() to UI class;
GuiBridge::feedStartStopPressedEvent(evt: evt);
::sendStartStopPressed();',
	'');
INSERT INTO ACT_TAB
	VALUES (220,
	203,
	219);
INSERT INTO ACT_ACT
	VALUES (220,
	'class transition',
	0,
	221,
	0,
	0,
	'UI_A4: startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (221,
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
	220,
	0);
INSERT INTO ACT_SMT
	VALUES (222,
	221,
	223,
	1,
	1,
	'UI_A4: startStopPressed line: 1');
INSERT INTO E_ESS
	VALUES (222,
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
	VALUES (222,
	1,
	224);
INSERT INTO E_CSME
	VALUES (222,
	184);
INSERT INTO E_CEA
	VALUES (222);
INSERT INTO ACT_SMT
	VALUES (223,
	221,
	225,
	2,
	1,
	'UI_A4: startStopPressed line: 2');
INSERT INTO ACT_BRG
	VALUES (223,
	186,
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (225,
	221,
	0,
	3,
	1,
	'UI_A4: startStopPressed line: 3');
INSERT INTO ACT_FNC
	VALUES (225,
	226,
	3,
	3);
INSERT INTO V_VAL
	VALUES (227,
	0,
	0,
	2,
	43,
	45,
	0,
	0,
	0,
	0,
	138,
	221);
INSERT INTO V_TVL
	VALUES (227,
	224);
INSERT INTO V_PAR
	VALUES (227,
	223,
	0,
	'evt',
	0,
	2,
	38);
INSERT INTO V_VAR
	VALUES (224,
	221,
	'evt',
	1,
	138);
INSERT INTO V_TRN
	VALUES (224,
	0,
	'');
INSERT INTO SM_TXN
	VALUES (218,
	203,
	204,
	0);
INSERT INTO SM_NSTXN
	VALUES (228,
	203,
	204,
	188,
	0);
INSERT INTO SM_TAH
	VALUES (229,
	203,
	228);
INSERT INTO SM_AH
	VALUES (229,
	203);
INSERT INTO SM_ACT
	VALUES (229,
	203,
	1,
	'create event instance evt of UI_A5:lapResetPressed() to UI class;
GuiBridge::feedLapResetPressedEvent(evt: evt);
::sendLapResetPressed();',
	'');
INSERT INTO ACT_TAB
	VALUES (230,
	203,
	229);
INSERT INTO ACT_ACT
	VALUES (230,
	'class transition',
	0,
	231,
	0,
	0,
	'UI_A5: lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (231,
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
	230,
	0);
INSERT INTO ACT_SMT
	VALUES (232,
	231,
	233,
	1,
	1,
	'UI_A5: lapResetPressed line: 1');
INSERT INTO E_ESS
	VALUES (232,
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
	VALUES (232,
	1,
	234);
INSERT INTO E_CSME
	VALUES (232,
	188);
INSERT INTO E_CEA
	VALUES (232);
INSERT INTO ACT_SMT
	VALUES (233,
	231,
	235,
	2,
	1,
	'UI_A5: lapResetPressed line: 2');
INSERT INTO ACT_BRG
	VALUES (233,
	190,
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (235,
	231,
	0,
	3,
	1,
	'UI_A5: lapResetPressed line: 3');
INSERT INTO ACT_FNC
	VALUES (235,
	236,
	3,
	3);
INSERT INTO V_VAL
	VALUES (237,
	0,
	0,
	2,
	42,
	44,
	0,
	0,
	0,
	0,
	138,
	231);
INSERT INTO V_TVL
	VALUES (237,
	234);
INSERT INTO V_PAR
	VALUES (237,
	233,
	0,
	'evt',
	0,
	2,
	37);
INSERT INTO V_VAR
	VALUES (234,
	231,
	'evt',
	1,
	138);
INSERT INTO V_TRN
	VALUES (234,
	0,
	'');
INSERT INTO SM_TXN
	VALUES (228,
	203,
	204,
	0);
INSERT INTO SM_NSTXN
	VALUES (238,
	203,
	204,
	192,
	0);
INSERT INTO SM_TAH
	VALUES (239,
	203,
	238);
INSERT INTO SM_AH
	VALUES (239,
	203);
INSERT INTO SM_ACT
	VALUES (239,
	203,
	1,
	'create event instance evt of UI_A6:lightPressed() to UI class;
GuiBridge::feedLightPressedEvent(evt: evt);
::sendLightPressed();',
	'');
INSERT INTO ACT_TAB
	VALUES (240,
	203,
	239);
INSERT INTO ACT_ACT
	VALUES (240,
	'class transition',
	0,
	241,
	0,
	0,
	'UI_A6: lightPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (241,
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
	240,
	0);
INSERT INTO ACT_SMT
	VALUES (242,
	241,
	243,
	1,
	1,
	'UI_A6: lightPressed line: 1');
INSERT INTO E_ESS
	VALUES (242,
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
	VALUES (242,
	1,
	244);
INSERT INTO E_CSME
	VALUES (242,
	192);
INSERT INTO E_CEA
	VALUES (242);
INSERT INTO ACT_SMT
	VALUES (243,
	241,
	245,
	2,
	1,
	'UI_A6: lightPressed line: 2');
INSERT INTO ACT_BRG
	VALUES (243,
	194,
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (245,
	241,
	0,
	3,
	1,
	'UI_A6: lightPressed line: 3');
INSERT INTO ACT_FNC
	VALUES (245,
	246,
	3,
	3);
INSERT INTO V_VAL
	VALUES (247,
	0,
	0,
	2,
	39,
	41,
	0,
	0,
	0,
	0,
	138,
	241);
INSERT INTO V_TVL
	VALUES (247,
	244);
INSERT INTO V_PAR
	VALUES (247,
	243,
	0,
	'evt',
	0,
	2,
	34);
INSERT INTO V_VAR
	VALUES (244,
	241,
	'evt',
	1,
	138);
INSERT INTO V_TRN
	VALUES (244,
	0,
	'');
INSERT INTO SM_TXN
	VALUES (238,
	203,
	204,
	0);
INSERT INTO SM_NSTXN
	VALUES (248,
	203,
	204,
	196,
	0);
INSERT INTO SM_TAH
	VALUES (249,
	203,
	248);
INSERT INTO SM_AH
	VALUES (249,
	203);
INSERT INTO SM_ACT
	VALUES (249,
	203,
	1,
	'create event instance evt of UI_A7:modePressed() to UI class;
GuiBridge::feedModePressedEvent(evt: evt);
::sendModePressed();',
	'');
INSERT INTO ACT_TAB
	VALUES (250,
	203,
	249);
INSERT INTO ACT_ACT
	VALUES (250,
	'class transition',
	0,
	251,
	0,
	0,
	'UI_A7: modePressed',
	0);
INSERT INTO ACT_BLK
	VALUES (251,
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
	250,
	0);
INSERT INTO ACT_SMT
	VALUES (252,
	251,
	253,
	1,
	1,
	'UI_A7: modePressed line: 1');
INSERT INTO E_ESS
	VALUES (252,
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
	VALUES (252,
	1,
	254);
INSERT INTO E_CSME
	VALUES (252,
	196);
INSERT INTO E_CEA
	VALUES (252);
INSERT INTO ACT_SMT
	VALUES (253,
	251,
	255,
	2,
	1,
	'UI_A7: modePressed line: 2');
INSERT INTO ACT_BRG
	VALUES (253,
	197,
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (255,
	251,
	0,
	3,
	1,
	'UI_A7: modePressed line: 3');
INSERT INTO ACT_FNC
	VALUES (255,
	256,
	3,
	3);
INSERT INTO V_VAL
	VALUES (257,
	0,
	0,
	2,
	38,
	40,
	0,
	0,
	0,
	0,
	138,
	251);
INSERT INTO V_TVL
	VALUES (257,
	254);
INSERT INTO V_PAR
	VALUES (257,
	253,
	0,
	'evt',
	0,
	2,
	33);
INSERT INTO V_VAR
	VALUES (254,
	251,
	'evt',
	1,
	138);
INSERT INTO V_TRN
	VALUES (254,
	0,
	'');
INSERT INTO SM_TXN
	VALUES (248,
	203,
	204,
	0);
INSERT INTO PE_PE
	VALUES (258,
	1,
	91,
	0,
	5);
INSERT INTO S_EE
	VALUES (258,
	'Time',
	'The Time external entity provides date, timestamp, and timer related operations.',
	'TIM',
	0,
	'',
	'Time',
	1);
INSERT INTO S_BRG
	VALUES (259,
	258,
	'current_date',
	'',
	1,
	260,
	'',
	1,
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
	'Time::current_date',
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
	VALUES (263,
	258,
	'create_date',
	'',
	1,
	260,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (264,
	263,
	'second',
	14,
	0,
	'',
	265,
	'');
INSERT INTO S_BPARM
	VALUES (266,
	263,
	'minute',
	14,
	0,
	'',
	267,
	'');
INSERT INTO S_BPARM
	VALUES (267,
	263,
	'hour',
	14,
	0,
	'',
	268,
	'');
INSERT INTO S_BPARM
	VALUES (268,
	263,
	'day',
	14,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (265,
	263,
	'month',
	14,
	0,
	'',
	266,
	'');
INSERT INTO S_BPARM
	VALUES (269,
	263,
	'year',
	14,
	0,
	'',
	264,
	'');
INSERT INTO ACT_BRB
	VALUES (270,
	263);
INSERT INTO ACT_ACT
	VALUES (270,
	'bridge',
	0,
	271,
	0,
	0,
	'Time::create_date',
	0);
INSERT INTO ACT_BLK
	VALUES (271,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	270,
	0);
INSERT INTO S_BRG
	VALUES (272,
	258,
	'get_second',
	'',
	1,
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (273,
	272,
	'date',
	260,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (274,
	272);
INSERT INTO ACT_ACT
	VALUES (274,
	'bridge',
	0,
	275,
	0,
	0,
	'Time::get_second',
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
	'get_minute',
	'',
	1,
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (277,
	276,
	'date',
	260,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (278,
	276);
INSERT INTO ACT_ACT
	VALUES (278,
	'bridge',
	0,
	279,
	0,
	0,
	'Time::get_minute',
	0);
INSERT INTO ACT_BLK
	VALUES (279,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	278,
	0);
INSERT INTO S_BRG
	VALUES (280,
	258,
	'get_hour',
	'',
	1,
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (281,
	280,
	'date',
	260,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (282,
	280);
INSERT INTO ACT_ACT
	VALUES (282,
	'bridge',
	0,
	283,
	0,
	0,
	'Time::get_hour',
	0);
INSERT INTO ACT_BLK
	VALUES (283,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	282,
	0);
INSERT INTO S_BRG
	VALUES (284,
	258,
	'get_day',
	'',
	1,
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (285,
	284,
	'date',
	260,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (286,
	284);
INSERT INTO ACT_ACT
	VALUES (286,
	'bridge',
	0,
	287,
	0,
	0,
	'Time::get_day',
	0);
INSERT INTO ACT_BLK
	VALUES (287,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	286,
	0);
INSERT INTO S_BRG
	VALUES (288,
	258,
	'get_month',
	'',
	1,
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (289,
	288,
	'date',
	260,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (290,
	288);
INSERT INTO ACT_ACT
	VALUES (290,
	'bridge',
	0,
	291,
	0,
	0,
	'Time::get_month',
	0);
INSERT INTO ACT_BLK
	VALUES (291,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	290,
	0);
INSERT INTO S_BRG
	VALUES (292,
	258,
	'get_year',
	'',
	1,
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (293,
	292,
	'date',
	260,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (294,
	292);
INSERT INTO ACT_ACT
	VALUES (294,
	'bridge',
	0,
	295,
	0,
	0,
	'Time::get_year',
	0);
INSERT INTO ACT_BLK
	VALUES (295,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	294,
	0);
INSERT INTO S_BRG
	VALUES (296,
	258,
	'current_clock',
	'',
	1,
	297,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (298,
	296);
INSERT INTO ACT_ACT
	VALUES (298,
	'bridge',
	0,
	299,
	0,
	0,
	'Time::current_clock',
	0);
INSERT INTO ACT_BLK
	VALUES (299,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	298,
	0);
INSERT INTO S_BRG
	VALUES (136,
	258,
	'timer_start',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Returns the instance
handle of the timer.',
	1,
	134,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (300,
	136,
	'microseconds',
	14,
	0,
	'',
	301,
	'');
INSERT INTO S_BPARM
	VALUES (301,
	136,
	'event_inst',
	138,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (302,
	136);
INSERT INTO ACT_ACT
	VALUES (302,
	'bridge',
	0,
	303,
	0,
	0,
	'Time::timer_start',
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
	258,
	'timer_start_recurring',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Upon expiration, the
timer will be restarted and fire again in the specified number of microseconds
generating the passed event. This bridge operation returns the instance handle
of the timer.',
	1,
	134,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (305,
	304,
	'microseconds',
	14,
	0,
	'',
	306,
	'');
INSERT INTO S_BPARM
	VALUES (306,
	304,
	'event_inst',
	138,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (307,
	304);
INSERT INTO ACT_ACT
	VALUES (307,
	'bridge',
	0,
	308,
	0,
	0,
	'Time::timer_start_recurring',
	0);
INSERT INTO ACT_BLK
	VALUES (308,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	307,
	0);
INSERT INTO S_BRG
	VALUES (309,
	258,
	'timer_remaining_time',
	'Returns the time remaining (in microseconds) for the passed timer instance. If
the timer has expired, a zero value is returned.',
	1,
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (310,
	309,
	'timer_inst_ref',
	134,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (311,
	309);
INSERT INTO ACT_ACT
	VALUES (311,
	'bridge',
	0,
	312,
	0,
	0,
	'Time::timer_remaining_time',
	0);
INSERT INTO ACT_BLK
	VALUES (312,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	311,
	0);
INSERT INTO S_BRG
	VALUES (313,
	258,
	'timer_reset_time',
	'This bridge operation attempts to set the passed existing timer to expire in
the specified number of microseconds. If the timer exists (that is, it has not
expired), a TRUE value is returned. If the timer no longer exists, a FALSE value
is returned.',
	1,
	119,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (314,
	313,
	'timer_inst_ref',
	134,
	0,
	'',
	315,
	'');
INSERT INTO S_BPARM
	VALUES (315,
	313,
	'microseconds',
	14,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (316,
	313);
INSERT INTO ACT_ACT
	VALUES (316,
	'bridge',
	0,
	317,
	0,
	0,
	'Time::timer_reset_time',
	0);
INSERT INTO ACT_BLK
	VALUES (317,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	316,
	0);
INSERT INTO S_BRG
	VALUES (318,
	258,
	'timer_add_time',
	'This bridge operation attempts to add the specified number of microseconds to a
passed existing timer. If the timer exists (that is, it has not expired), a TRUE
value is returned. If the timer no longer exists, a FALSE value is returned.',
	1,
	119,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (319,
	318,
	'timer_inst_ref',
	134,
	0,
	'',
	320,
	'');
INSERT INTO S_BPARM
	VALUES (320,
	318,
	'microseconds',
	14,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (321,
	318);
INSERT INTO ACT_ACT
	VALUES (321,
	'bridge',
	0,
	322,
	0,
	0,
	'Time::timer_add_time',
	0);
INSERT INTO ACT_BLK
	VALUES (322,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
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
INSERT INTO S_BRG
	VALUES (323,
	258,
	'timer_cancel',
	'This bridge operation cancels and deletes the passed timer instance. If the 
timer exists (that is, it had not expired), a TRUE value is returned. If the
timer no longer exists, a FALSE value is returned.',
	1,
	119,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (324,
	323,
	'timer_inst_ref',
	134,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (325,
	323);
INSERT INTO ACT_ACT
	VALUES (325,
	'bridge',
	0,
	326,
	0,
	0,
	'Time::timer_cancel',
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
INSERT INTO PE_PE
	VALUES (327,
	1,
	91,
	0,
	5);
INSERT INTO S_EE
	VALUES (327,
	'Graphical User Interface',
	'',
	'GuiBridge',
	0,
	'',
	'Graphical User Interface',
	1);
INSERT INTO S_BRG
	VALUES (182,
	327,
	'feedSetTargetPressedEvent',
	'',
	0,
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (328,
	182,
	'evt',
	138,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (329,
	182);
INSERT INTO ACT_ACT
	VALUES (329,
	'bridge',
	0,
	330,
	0,
	0,
	'Graphical User Interface::feedSetTargetPressedEvent',
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
	VALUES (197,
	327,
	'feedModePressedEvent',
	'',
	0,
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (331,
	197,
	'evt',
	138,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (332,
	197);
INSERT INTO ACT_ACT
	VALUES (332,
	'bridge',
	0,
	333,
	0,
	0,
	'Graphical User Interface::feedModePressedEvent',
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
INSERT INTO S_BRG
	VALUES (194,
	327,
	'feedLightPressedEvent',
	'',
	0,
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (334,
	194,
	'evt',
	138,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (335,
	194);
INSERT INTO ACT_ACT
	VALUES (335,
	'bridge',
	0,
	336,
	0,
	0,
	'Graphical User Interface::feedLightPressedEvent',
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
INSERT INTO S_BRG
	VALUES (190,
	327,
	'feedLapResetPressedEvent',
	'',
	0,
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (337,
	190,
	'evt',
	138,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (338,
	190);
INSERT INTO ACT_ACT
	VALUES (338,
	'bridge',
	0,
	339,
	0,
	0,
	'Graphical User Interface::feedLapResetPressedEvent',
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
INSERT INTO S_BRG
	VALUES (186,
	327,
	'feedStartStopPressedEvent',
	'',
	0,
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (340,
	186,
	'evt',
	138,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (341,
	186);
INSERT INTO ACT_ACT
	VALUES (341,
	'bridge',
	0,
	342,
	0,
	0,
	'Graphical User Interface::feedStartStopPressedEvent',
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
	327,
	'setData',
	'',
	0,
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (344,
	343,
	'value',
	23,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (345,
	343,
	'unit',
	14,
	0,
	'',
	344,
	'');
INSERT INTO ACT_BRB
	VALUES (346,
	343);
INSERT INTO ACT_ACT
	VALUES (346,
	'bridge',
	0,
	347,
	0,
	0,
	'Graphical User Interface::setData',
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
INSERT INTO S_BRG
	VALUES (348,
	327,
	'setTime',
	'',
	0,
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (349,
	348,
	'time',
	14,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (350,
	348);
INSERT INTO ACT_ACT
	VALUES (350,
	'bridge',
	0,
	351,
	0,
	0,
	'Graphical User Interface::setTime',
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
	VALUES (177,
	327,
	'connect',
	'',
	0,
	94,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (352,
	177);
INSERT INTO ACT_ACT
	VALUES (352,
	'bridge',
	0,
	353,
	0,
	0,
	'Graphical User Interface::connect',
	0);
INSERT INTO ACT_BLK
	VALUES (353,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
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
INSERT INTO S_BRG
	VALUES (354,
	327,
	'setIndicator',
	'',
	0,
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (355,
	354,
	'value',
	14,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (356,
	354);
INSERT INTO ACT_ACT
	VALUES (356,
	'bridge',
	0,
	357,
	0,
	0,
	'Graphical User Interface::setIndicator',
	0);
INSERT INTO ACT_BLK
	VALUES (357,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	356,
	0);
INSERT INTO PE_PE
	VALUES (358,
	1,
	91,
	0,
	5);
INSERT INTO S_EE
	VALUES (358,
	'Logging',
	'',
	'LOG',
	0,
	'',
	'Logging',
	1);
INSERT INTO S_BRG
	VALUES (359,
	358,
	'LogSuccess',
	'',
	0,
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (360,
	359,
	'message',
	149,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (361,
	359);
INSERT INTO ACT_ACT
	VALUES (361,
	'bridge',
	0,
	362,
	0,
	0,
	'Logging::LogSuccess',
	0);
INSERT INTO ACT_BLK
	VALUES (362,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	361,
	0);
INSERT INTO S_BRG
	VALUES (363,
	358,
	'LogFailure',
	'',
	0,
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (364,
	363,
	'message',
	149,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (365,
	363);
INSERT INTO ACT_ACT
	VALUES (365,
	'bridge',
	0,
	366,
	0,
	0,
	'Logging::LogFailure',
	0);
INSERT INTO ACT_BLK
	VALUES (366,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	365,
	0);
INSERT INTO S_BRG
	VALUES (147,
	358,
	'LogInfo',
	'',
	0,
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (367,
	147,
	'message',
	149,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (368,
	147);
INSERT INTO ACT_ACT
	VALUES (368,
	'bridge',
	0,
	369,
	0,
	0,
	'Logging::LogInfo',
	0);
INSERT INTO ACT_BLK
	VALUES (369,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	368,
	0);
INSERT INTO S_BRG
	VALUES (370,
	358,
	'LogDate',
	'',
	0,
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (371,
	370,
	'd',
	260,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (372,
	370,
	'message',
	149,
	0,
	'',
	371,
	'');
INSERT INTO ACT_BRB
	VALUES (373,
	370);
INSERT INTO ACT_ACT
	VALUES (373,
	'bridge',
	0,
	374,
	0,
	0,
	'Logging::LogDate',
	0);
INSERT INTO ACT_BLK
	VALUES (374,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	373,
	0);
INSERT INTO S_BRG
	VALUES (375,
	358,
	'LogTime',
	'',
	0,
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (376,
	375,
	't',
	297,
	0,
	'',
	377,
	'');
INSERT INTO S_BPARM
	VALUES (377,
	375,
	'message',
	149,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (378,
	375);
INSERT INTO ACT_ACT
	VALUES (378,
	'bridge',
	0,
	379,
	0,
	0,
	'Logging::LogTime',
	0);
INSERT INTO ACT_BLK
	VALUES (379,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	378,
	0);
INSERT INTO S_BRG
	VALUES (380,
	358,
	'LogReal',
	'',
	0,
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (381,
	380,
	'r',
	23,
	0,
	'',
	382,
	'');
INSERT INTO S_BPARM
	VALUES (382,
	380,
	'message',
	149,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (383,
	380);
INSERT INTO ACT_ACT
	VALUES (383,
	'bridge',
	0,
	384,
	0,
	0,
	'Logging::LogReal',
	0);
INSERT INTO ACT_BLK
	VALUES (384,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	383,
	0);
INSERT INTO S_BRG
	VALUES (385,
	358,
	'LogInteger',
	'',
	0,
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (386,
	385,
	'message',
	14,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (387,
	385);
INSERT INTO ACT_ACT
	VALUES (387,
	'bridge',
	0,
	388,
	0,
	0,
	'Logging::LogInteger',
	0);
INSERT INTO ACT_BLK
	VALUES (388,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	387,
	0);
INSERT INTO PE_PE
	VALUES (389,
	1,
	91,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (389,
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
	94,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (390,
	389);
INSERT INTO ACT_ACT
	VALUES (390,
	'function',
	0,
	391,
	0,
	0,
	'createGoals_1',
	0);
INSERT INTO ACT_BLK
	VALUES (391,
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
	390,
	0);
INSERT INTO ACT_SMT
	VALUES (392,
	391,
	393,
	2,
	1,
	'createGoals_1 line: 2');
INSERT INTO ACT_IOP
	VALUES (392,
	2,
	16,
	2,
	6,
	0,
	83,
	0);
INSERT INTO ACT_SMT
	VALUES (393,
	391,
	394,
	10,
	1,
	'createGoals_1 line: 10');
INSERT INTO ACT_IOP
	VALUES (393,
	10,
	16,
	10,
	6,
	0,
	83,
	0);
INSERT INTO ACT_SMT
	VALUES (394,
	391,
	395,
	18,
	1,
	'createGoals_1 line: 18');
INSERT INTO ACT_IOP
	VALUES (394,
	18,
	16,
	18,
	6,
	0,
	83,
	0);
INSERT INTO ACT_SMT
	VALUES (395,
	391,
	0,
	26,
	1,
	'createGoals_1 line: 26');
INSERT INTO ACT_IOP
	VALUES (395,
	26,
	16,
	26,
	6,
	0,
	83,
	0);
INSERT INTO V_VAL
	VALUES (396,
	0,
	0,
	3,
	19,
	19,
	0,
	0,
	0,
	0,
	14,
	391);
INSERT INTO V_LIN
	VALUES (396,
	'1');
INSERT INTO V_PAR
	VALUES (396,
	392,
	0,
	'sequenceNumber',
	397,
	3,
	3);
INSERT INTO V_VAL
	VALUES (397,
	0,
	0,
	4,
	12,
	14,
	0,
	0,
	0,
	0,
	23,
	391);
INSERT INTO V_LRL
	VALUES (397,
	'2.0');
INSERT INTO V_PAR
	VALUES (397,
	392,
	0,
	'minimum',
	398,
	4,
	3);
INSERT INTO V_VAL
	VALUES (398,
	0,
	0,
	5,
	12,
	14,
	0,
	0,
	0,
	0,
	23,
	391);
INSERT INTO V_LRL
	VALUES (398,
	'8.0');
INSERT INTO V_PAR
	VALUES (398,
	392,
	0,
	'maximum',
	399,
	5,
	3);
INSERT INTO V_VAL
	VALUES (399,
	0,
	0,
	6,
	9,
	13,
	0,
	0,
	0,
	0,
	23,
	391);
INSERT INTO V_LRL
	VALUES (399,
	'150.0');
INSERT INTO V_PAR
	VALUES (399,
	392,
	0,
	'span',
	400,
	6,
	3);
INSERT INTO V_VAL
	VALUES (400,
	0,
	0,
	7,
	31,
	34,
	0,
	0,
	0,
	0,
	59,
	391);
INSERT INTO V_LEN
	VALUES (400,
	401,
	7,
	17);
INSERT INTO V_PAR
	VALUES (400,
	392,
	0,
	'criteriaType',
	402,
	7,
	3);
INSERT INTO V_VAL
	VALUES (402,
	0,
	0,
	8,
	23,
	30,
	0,
	0,
	0,
	0,
	62,
	391);
INSERT INTO V_LEN
	VALUES (402,
	403,
	8,
	13);
INSERT INTO V_PAR
	VALUES (402,
	392,
	0,
	'spanType',
	0,
	8,
	3);
INSERT INTO V_VAL
	VALUES (404,
	0,
	0,
	11,
	19,
	19,
	0,
	0,
	0,
	0,
	14,
	391);
INSERT INTO V_LIN
	VALUES (404,
	'2');
INSERT INTO V_PAR
	VALUES (404,
	393,
	0,
	'sequenceNumber',
	405,
	11,
	3);
INSERT INTO V_VAL
	VALUES (405,
	0,
	0,
	12,
	12,
	15,
	0,
	0,
	0,
	0,
	23,
	391);
INSERT INTO V_LRL
	VALUES (405,
	'60.0');
INSERT INTO V_PAR
	VALUES (405,
	393,
	0,
	'minimum',
	406,
	12,
	3);
INSERT INTO V_VAL
	VALUES (406,
	0,
	0,
	13,
	12,
	15,
	0,
	0,
	0,
	0,
	23,
	391);
INSERT INTO V_LRL
	VALUES (406,
	'80.0');
INSERT INTO V_PAR
	VALUES (406,
	393,
	0,
	'maximum',
	407,
	13,
	3);
INSERT INTO V_VAL
	VALUES (407,
	0,
	0,
	14,
	9,
	10,
	0,
	0,
	0,
	0,
	14,
	391);
INSERT INTO V_LIN
	VALUES (407,
	'10');
INSERT INTO V_PAR
	VALUES (407,
	393,
	0,
	'span',
	408,
	14,
	3);
INSERT INTO V_VAL
	VALUES (408,
	0,
	0,
	15,
	31,
	39,
	0,
	0,
	0,
	0,
	59,
	391);
INSERT INTO V_LEN
	VALUES (408,
	409,
	15,
	17);
INSERT INTO V_PAR
	VALUES (408,
	393,
	0,
	'criteriaType',
	410,
	15,
	3);
INSERT INTO V_VAL
	VALUES (410,
	0,
	0,
	16,
	23,
	26,
	0,
	0,
	0,
	0,
	62,
	391);
INSERT INTO V_LEN
	VALUES (410,
	411,
	16,
	13);
INSERT INTO V_PAR
	VALUES (410,
	393,
	0,
	'spanType',
	0,
	16,
	3);
INSERT INTO V_VAL
	VALUES (412,
	0,
	0,
	19,
	19,
	19,
	0,
	0,
	0,
	0,
	14,
	391);
INSERT INTO V_LIN
	VALUES (412,
	'3');
INSERT INTO V_PAR
	VALUES (412,
	394,
	0,
	'sequenceNumber',
	413,
	19,
	3);
INSERT INTO V_VAL
	VALUES (413,
	0,
	0,
	20,
	12,
	14,
	0,
	0,
	0,
	0,
	23,
	391);
INSERT INTO V_LRL
	VALUES (413,
	'5.0');
INSERT INTO V_PAR
	VALUES (413,
	394,
	0,
	'minimum',
	414,
	20,
	3);
INSERT INTO V_VAL
	VALUES (414,
	0,
	0,
	21,
	12,
	14,
	0,
	0,
	0,
	0,
	23,
	391);
INSERT INTO V_LRL
	VALUES (414,
	'6.0');
INSERT INTO V_PAR
	VALUES (414,
	394,
	0,
	'maximum',
	415,
	21,
	3);
INSERT INTO V_VAL
	VALUES (415,
	0,
	0,
	22,
	9,
	10,
	0,
	0,
	0,
	0,
	14,
	391);
INSERT INTO V_LIN
	VALUES (415,
	'15');
INSERT INTO V_PAR
	VALUES (415,
	394,
	0,
	'span',
	416,
	22,
	3);
INSERT INTO V_VAL
	VALUES (416,
	0,
	0,
	23,
	31,
	34,
	0,
	0,
	0,
	0,
	59,
	391);
INSERT INTO V_LEN
	VALUES (416,
	401,
	23,
	17);
INSERT INTO V_PAR
	VALUES (416,
	394,
	0,
	'criteriaType',
	417,
	23,
	3);
INSERT INTO V_VAL
	VALUES (417,
	0,
	0,
	24,
	23,
	26,
	0,
	0,
	0,
	0,
	62,
	391);
INSERT INTO V_LEN
	VALUES (417,
	411,
	24,
	13);
INSERT INTO V_PAR
	VALUES (417,
	394,
	0,
	'spanType',
	0,
	24,
	3);
INSERT INTO V_VAL
	VALUES (418,
	0,
	0,
	27,
	19,
	19,
	0,
	0,
	0,
	0,
	14,
	391);
INSERT INTO V_LIN
	VALUES (418,
	'4');
INSERT INTO V_PAR
	VALUES (418,
	395,
	0,
	'sequenceNumber',
	419,
	27,
	3);
INSERT INTO V_VAL
	VALUES (419,
	0,
	0,
	28,
	12,
	14,
	0,
	0,
	0,
	0,
	23,
	391);
INSERT INTO V_LRL
	VALUES (419,
	'1.0');
INSERT INTO V_PAR
	VALUES (419,
	395,
	0,
	'minimum',
	420,
	28,
	3);
INSERT INTO V_VAL
	VALUES (420,
	0,
	0,
	29,
	12,
	14,
	0,
	0,
	0,
	0,
	23,
	391);
INSERT INTO V_LRL
	VALUES (420,
	'2.0');
INSERT INTO V_PAR
	VALUES (420,
	395,
	0,
	'maximum',
	421,
	29,
	3);
INSERT INTO V_VAL
	VALUES (421,
	0,
	0,
	30,
	9,
	10,
	0,
	0,
	0,
	0,
	14,
	391);
INSERT INTO V_LIN
	VALUES (421,
	'15');
INSERT INTO V_PAR
	VALUES (421,
	395,
	0,
	'span',
	422,
	30,
	3);
INSERT INTO V_VAL
	VALUES (422,
	0,
	0,
	31,
	31,
	34,
	0,
	0,
	0,
	0,
	59,
	391);
INSERT INTO V_LEN
	VALUES (422,
	401,
	31,
	17);
INSERT INTO V_PAR
	VALUES (422,
	395,
	0,
	'criteriaType',
	423,
	31,
	3);
INSERT INTO V_VAL
	VALUES (423,
	0,
	0,
	32,
	23,
	26,
	0,
	0,
	0,
	0,
	62,
	391);
INSERT INTO V_LEN
	VALUES (423,
	411,
	32,
	13);
INSERT INTO V_PAR
	VALUES (423,
	395,
	0,
	'spanType',
	0,
	32,
	3);
INSERT INTO PE_PE
	VALUES (424,
	1,
	91,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (424,
	0,
	'init',
	'',
	'GuiBridge::connect();',
	94,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (425,
	424);
INSERT INTO ACT_ACT
	VALUES (425,
	'function',
	0,
	426,
	0,
	0,
	'init',
	0);
INSERT INTO ACT_BLK
	VALUES (426,
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
	425,
	0);
INSERT INTO ACT_SMT
	VALUES (427,
	426,
	0,
	1,
	1,
	'init line: 1');
INSERT INTO ACT_BRG
	VALUES (427,
	177,
	1,
	12,
	1,
	1);
INSERT INTO PE_PE
	VALUES (428,
	1,
	91,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (428,
	0,
	'RunTestCase',
	'',
	'TestCase::execute();',
	94,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (429,
	428);
INSERT INTO ACT_ACT
	VALUES (429,
	'function',
	0,
	430,
	0,
	0,
	'RunTestCase',
	0);
INSERT INTO ACT_BLK
	VALUES (430,
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
	429,
	0);
INSERT INTO ACT_SMT
	VALUES (431,
	430,
	0,
	1,
	1,
	'RunTestCase line: 1');
INSERT INTO ACT_TFM
	VALUES (431,
	93,
	0,
	1,
	11,
	1,
	1);
INSERT INTO PE_PE
	VALUES (236,
	1,
	91,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (236,
	0,
	'sendLapResetPressed',
	'',
	'send Tracking::lapResetPressed();',
	94,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (432,
	236);
INSERT INTO ACT_ACT
	VALUES (432,
	'function',
	0,
	433,
	0,
	0,
	'sendLapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (433,
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
	432,
	0);
INSERT INTO ACT_SMT
	VALUES (434,
	433,
	0,
	1,
	1,
	'sendLapResetPressed line: 1');
INSERT INTO ACT_IOP
	VALUES (434,
	1,
	16,
	1,
	6,
	0,
	75,
	0);
INSERT INTO PE_PE
	VALUES (246,
	1,
	91,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (246,
	0,
	'sendLightPressed',
	'',
	'send Tracking::lightPressed();',
	94,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (435,
	246);
INSERT INTO ACT_ACT
	VALUES (435,
	'function',
	0,
	436,
	0,
	0,
	'sendLightPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (436,
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
	435,
	0);
INSERT INTO ACT_SMT
	VALUES (437,
	436,
	0,
	1,
	1,
	'sendLightPressed line: 1');
INSERT INTO ACT_IOP
	VALUES (437,
	1,
	16,
	1,
	6,
	0,
	87,
	0);
INSERT INTO PE_PE
	VALUES (256,
	1,
	91,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (256,
	0,
	'sendModePressed',
	'',
	'send Tracking::modePressed();',
	94,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (438,
	256);
INSERT INTO ACT_ACT
	VALUES (438,
	'function',
	0,
	439,
	0,
	0,
	'sendModePressed',
	0);
INSERT INTO ACT_BLK
	VALUES (439,
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
	438,
	0);
INSERT INTO ACT_SMT
	VALUES (440,
	439,
	0,
	1,
	1,
	'sendModePressed line: 1');
INSERT INTO ACT_IOP
	VALUES (440,
	1,
	16,
	1,
	6,
	0,
	79,
	0);
INSERT INTO PE_PE
	VALUES (226,
	1,
	91,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (226,
	0,
	'sendStartStopPressed',
	'',
	'send Tracking::startStopPressed();',
	94,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (441,
	226);
INSERT INTO ACT_ACT
	VALUES (441,
	'function',
	0,
	442,
	0,
	0,
	'sendStartStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (442,
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
	441,
	0);
INSERT INTO ACT_SMT
	VALUES (443,
	442,
	0,
	1,
	1,
	'sendStartStopPressed line: 1');
INSERT INTO ACT_IOP
	VALUES (443,
	1,
	16,
	1,
	6,
	0,
	71,
	0);
INSERT INTO PE_PE
	VALUES (216,
	1,
	91,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (216,
	0,
	'sendTargetPressed',
	'',
	'send Tracking::setTargetPressed();',
	94,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (444,
	216);
INSERT INTO ACT_ACT
	VALUES (444,
	'function',
	0,
	445,
	0,
	0,
	'sendTargetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (445,
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
	444,
	0);
INSERT INTO ACT_SMT
	VALUES (446,
	445,
	0,
	1,
	1,
	'sendTargetPressed line: 1');
INSERT INTO ACT_IOP
	VALUES (446,
	1,
	16,
	1,
	6,
	0,
	67,
	0);
INSERT INTO PE_PE
	VALUES (21,
	1,
	91,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (21,
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
	94,
	1,
	'');
INSERT INTO S_SPARM
	VALUES (447,
	21,
	'value',
	23,
	0,
	'',
	0,
	'');
INSERT INTO S_SPARM
	VALUES (448,
	21,
	'unit',
	26,
	0,
	'',
	447,
	'');
INSERT INTO ACT_FNB
	VALUES (449,
	21);
INSERT INTO ACT_ACT
	VALUES (449,
	'function',
	0,
	450,
	0,
	0,
	'setData',
	0);
INSERT INTO ACT_BLK
	VALUES (450,
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
	449,
	0);
INSERT INTO ACT_SMT
	VALUES (451,
	450,
	0,
	1,
	1,
	'setData line: 1');
INSERT INTO ACT_IF
	VALUES (451,
	452,
	453,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (454,
	450,
	0,
	3,
	1,
	'setData line: 3');
INSERT INTO ACT_EL
	VALUES (454,
	455,
	456,
	451);
INSERT INTO ACT_SMT
	VALUES (457,
	450,
	0,
	5,
	1,
	'setData line: 5');
INSERT INTO ACT_EL
	VALUES (457,
	458,
	459,
	451);
INSERT INTO ACT_SMT
	VALUES (460,
	450,
	0,
	7,
	1,
	'setData line: 7');
INSERT INTO ACT_EL
	VALUES (460,
	461,
	462,
	451);
INSERT INTO ACT_SMT
	VALUES (463,
	450,
	0,
	9,
	1,
	'setData line: 9');
INSERT INTO ACT_EL
	VALUES (463,
	464,
	465,
	451);
INSERT INTO ACT_SMT
	VALUES (466,
	450,
	0,
	11,
	1,
	'setData line: 11');
INSERT INTO ACT_EL
	VALUES (466,
	467,
	468,
	451);
INSERT INTO ACT_SMT
	VALUES (469,
	450,
	0,
	13,
	1,
	'setData line: 13');
INSERT INTO ACT_EL
	VALUES (469,
	470,
	471,
	451);
INSERT INTO ACT_SMT
	VALUES (472,
	450,
	0,
	15,
	1,
	'setData line: 15');
INSERT INTO ACT_EL
	VALUES (472,
	473,
	474,
	451);
INSERT INTO ACT_SMT
	VALUES (475,
	450,
	0,
	17,
	1,
	'setData line: 17');
INSERT INTO ACT_EL
	VALUES (475,
	476,
	477,
	451);
INSERT INTO ACT_SMT
	VALUES (478,
	450,
	0,
	19,
	1,
	'setData line: 19');
INSERT INTO ACT_EL
	VALUES (478,
	479,
	480,
	451);
INSERT INTO ACT_SMT
	VALUES (481,
	450,
	0,
	21,
	1,
	'setData line: 21');
INSERT INTO ACT_EL
	VALUES (481,
	482,
	483,
	451);
INSERT INTO V_VAL
	VALUES (484,
	0,
	0,
	1,
	11,
	14,
	0,
	0,
	0,
	0,
	26,
	450);
INSERT INTO V_PVL
	VALUES (484,
	0,
	448,
	0,
	0);
INSERT INTO V_VAL
	VALUES (453,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	450);
INSERT INTO V_BIN
	VALUES (453,
	485,
	484,
	'==');
INSERT INTO V_VAL
	VALUES (485,
	0,
	0,
	1,
	25,
	26,
	0,
	0,
	0,
	0,
	26,
	450);
INSERT INTO V_LEN
	VALUES (485,
	486,
	1,
	19);
INSERT INTO V_VAL
	VALUES (487,
	0,
	0,
	3,
	13,
	16,
	0,
	0,
	0,
	0,
	26,
	450);
INSERT INTO V_PVL
	VALUES (487,
	0,
	448,
	0,
	0);
INSERT INTO V_VAL
	VALUES (456,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	450);
INSERT INTO V_BIN
	VALUES (456,
	488,
	487,
	'==');
INSERT INTO V_VAL
	VALUES (488,
	0,
	0,
	3,
	27,
	32,
	0,
	0,
	0,
	0,
	26,
	450);
INSERT INTO V_LEN
	VALUES (488,
	489,
	3,
	21);
INSERT INTO V_VAL
	VALUES (490,
	0,
	0,
	5,
	13,
	16,
	0,
	0,
	0,
	0,
	26,
	450);
INSERT INTO V_PVL
	VALUES (490,
	0,
	448,
	0,
	0);
INSERT INTO V_VAL
	VALUES (459,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	450);
INSERT INTO V_BIN
	VALUES (459,
	491,
	490,
	'==');
INSERT INTO V_VAL
	VALUES (491,
	0,
	0,
	5,
	27,
	34,
	0,
	0,
	0,
	0,
	26,
	450);
INSERT INTO V_LEN
	VALUES (491,
	492,
	5,
	21);
INSERT INTO V_VAL
	VALUES (493,
	0,
	0,
	7,
	13,
	16,
	0,
	0,
	0,
	0,
	26,
	450);
INSERT INTO V_PVL
	VALUES (493,
	0,
	448,
	0,
	0);
INSERT INTO V_VAL
	VALUES (462,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	450);
INSERT INTO V_BIN
	VALUES (462,
	494,
	493,
	'==');
INSERT INTO V_VAL
	VALUES (494,
	0,
	0,
	7,
	27,
	35,
	0,
	0,
	0,
	0,
	26,
	450);
INSERT INTO V_LEN
	VALUES (494,
	495,
	7,
	21);
INSERT INTO V_VAL
	VALUES (496,
	0,
	0,
	9,
	13,
	16,
	0,
	0,
	0,
	0,
	26,
	450);
INSERT INTO V_PVL
	VALUES (496,
	0,
	448,
	0,
	0);
INSERT INTO V_VAL
	VALUES (465,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	450);
INSERT INTO V_BIN
	VALUES (465,
	497,
	496,
	'==');
INSERT INTO V_VAL
	VALUES (497,
	0,
	0,
	9,
	27,
	31,
	0,
	0,
	0,
	0,
	26,
	450);
INSERT INTO V_LEN
	VALUES (497,
	498,
	9,
	21);
INSERT INTO V_VAL
	VALUES (499,
	0,
	0,
	11,
	13,
	16,
	0,
	0,
	0,
	0,
	26,
	450);
INSERT INTO V_PVL
	VALUES (499,
	0,
	448,
	0,
	0);
INSERT INTO V_VAL
	VALUES (468,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	450);
INSERT INTO V_BIN
	VALUES (468,
	500,
	499,
	'==');
INSERT INTO V_VAL
	VALUES (500,
	0,
	0,
	11,
	27,
	31,
	0,
	0,
	0,
	0,
	26,
	450);
INSERT INTO V_LEN
	VALUES (500,
	501,
	11,
	21);
INSERT INTO V_VAL
	VALUES (502,
	0,
	0,
	13,
	13,
	16,
	0,
	0,
	0,
	0,
	26,
	450);
INSERT INTO V_PVL
	VALUES (502,
	0,
	448,
	0,
	0);
INSERT INTO V_VAL
	VALUES (471,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	450);
INSERT INTO V_BIN
	VALUES (471,
	503,
	502,
	'==');
INSERT INTO V_VAL
	VALUES (503,
	0,
	0,
	13,
	27,
	30,
	0,
	0,
	0,
	0,
	26,
	450);
INSERT INTO V_LEN
	VALUES (503,
	504,
	13,
	21);
INSERT INTO V_VAL
	VALUES (505,
	0,
	0,
	15,
	13,
	16,
	0,
	0,
	0,
	0,
	26,
	450);
INSERT INTO V_PVL
	VALUES (505,
	0,
	448,
	0,
	0);
INSERT INTO V_VAL
	VALUES (474,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	450);
INSERT INTO V_BIN
	VALUES (474,
	506,
	505,
	'==');
INSERT INTO V_VAL
	VALUES (506,
	0,
	0,
	15,
	27,
	36,
	0,
	0,
	0,
	0,
	26,
	450);
INSERT INTO V_LEN
	VALUES (506,
	507,
	15,
	21);
INSERT INTO V_VAL
	VALUES (508,
	0,
	0,
	17,
	13,
	16,
	0,
	0,
	0,
	0,
	26,
	450);
INSERT INTO V_PVL
	VALUES (508,
	0,
	448,
	0,
	0);
INSERT INTO V_VAL
	VALUES (477,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	450);
INSERT INTO V_BIN
	VALUES (477,
	509,
	508,
	'==');
INSERT INTO V_VAL
	VALUES (509,
	0,
	0,
	17,
	27,
	29,
	0,
	0,
	0,
	0,
	26,
	450);
INSERT INTO V_LEN
	VALUES (509,
	510,
	17,
	21);
INSERT INTO V_VAL
	VALUES (511,
	0,
	0,
	19,
	13,
	16,
	0,
	0,
	0,
	0,
	26,
	450);
INSERT INTO V_PVL
	VALUES (511,
	0,
	448,
	0,
	0);
INSERT INTO V_VAL
	VALUES (480,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	450);
INSERT INTO V_BIN
	VALUES (480,
	512,
	511,
	'==');
INSERT INTO V_VAL
	VALUES (512,
	0,
	0,
	19,
	27,
	29,
	0,
	0,
	0,
	0,
	26,
	450);
INSERT INTO V_LEN
	VALUES (512,
	513,
	19,
	21);
INSERT INTO V_VAL
	VALUES (514,
	0,
	0,
	21,
	13,
	16,
	0,
	0,
	0,
	0,
	26,
	450);
INSERT INTO V_PVL
	VALUES (514,
	0,
	448,
	0,
	0);
INSERT INTO V_VAL
	VALUES (483,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	450);
INSERT INTO V_BIN
	VALUES (483,
	515,
	514,
	'==');
INSERT INTO V_VAL
	VALUES (515,
	0,
	0,
	21,
	27,
	30,
	0,
	0,
	0,
	0,
	26,
	450);
INSERT INTO V_LEN
	VALUES (515,
	516,
	21,
	21);
INSERT INTO ACT_BLK
	VALUES (452,
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
	449,
	0);
INSERT INTO ACT_SMT
	VALUES (517,
	452,
	0,
	2,
	3,
	'setData line: 2');
INSERT INTO ACT_BRG
	VALUES (517,
	343,
	2,
	14,
	2,
	3);
INSERT INTO V_VAL
	VALUES (518,
	0,
	0,
	2,
	35,
	39,
	0,
	0,
	0,
	0,
	23,
	452);
INSERT INTO V_PVL
	VALUES (518,
	0,
	447,
	0,
	0);
INSERT INTO V_PAR
	VALUES (518,
	517,
	0,
	'value',
	519,
	2,
	22);
INSERT INTO V_VAL
	VALUES (519,
	0,
	0,
	2,
	48,
	48,
	0,
	0,
	0,
	0,
	14,
	452);
INSERT INTO V_LIN
	VALUES (519,
	'0');
INSERT INTO V_PAR
	VALUES (519,
	517,
	0,
	'unit',
	0,
	2,
	42);
INSERT INTO ACT_BLK
	VALUES (455,
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
	449,
	0);
INSERT INTO ACT_SMT
	VALUES (520,
	455,
	0,
	4,
	3,
	'setData line: 4');
INSERT INTO ACT_BRG
	VALUES (520,
	343,
	4,
	14,
	4,
	3);
INSERT INTO V_VAL
	VALUES (521,
	0,
	0,
	4,
	35,
	39,
	0,
	0,
	0,
	0,
	23,
	455);
INSERT INTO V_PVL
	VALUES (521,
	0,
	447,
	0,
	0);
INSERT INTO V_PAR
	VALUES (521,
	520,
	0,
	'value',
	522,
	4,
	22);
INSERT INTO V_VAL
	VALUES (522,
	0,
	0,
	4,
	48,
	48,
	0,
	0,
	0,
	0,
	14,
	455);
INSERT INTO V_LIN
	VALUES (522,
	'1');
INSERT INTO V_PAR
	VALUES (522,
	520,
	0,
	'unit',
	0,
	4,
	42);
INSERT INTO ACT_BLK
	VALUES (458,
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
	449,
	0);
INSERT INTO ACT_SMT
	VALUES (523,
	458,
	0,
	6,
	3,
	'setData line: 6');
INSERT INTO ACT_BRG
	VALUES (523,
	343,
	6,
	14,
	6,
	3);
INSERT INTO V_VAL
	VALUES (524,
	0,
	0,
	6,
	35,
	39,
	0,
	0,
	0,
	0,
	23,
	458);
INSERT INTO V_PVL
	VALUES (524,
	0,
	447,
	0,
	0);
INSERT INTO V_PAR
	VALUES (524,
	523,
	0,
	'value',
	525,
	6,
	22);
INSERT INTO V_VAL
	VALUES (525,
	0,
	0,
	6,
	48,
	48,
	0,
	0,
	0,
	0,
	14,
	458);
INSERT INTO V_LIN
	VALUES (525,
	'2');
INSERT INTO V_PAR
	VALUES (525,
	523,
	0,
	'unit',
	0,
	6,
	42);
INSERT INTO ACT_BLK
	VALUES (461,
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
	449,
	0);
INSERT INTO ACT_SMT
	VALUES (526,
	461,
	0,
	8,
	3,
	'setData line: 8');
INSERT INTO ACT_BRG
	VALUES (526,
	343,
	8,
	14,
	8,
	3);
INSERT INTO V_VAL
	VALUES (527,
	0,
	0,
	8,
	35,
	39,
	0,
	0,
	0,
	0,
	23,
	461);
INSERT INTO V_PVL
	VALUES (527,
	0,
	447,
	0,
	0);
INSERT INTO V_PAR
	VALUES (527,
	526,
	0,
	'value',
	528,
	8,
	22);
INSERT INTO V_VAL
	VALUES (528,
	0,
	0,
	8,
	48,
	48,
	0,
	0,
	0,
	0,
	14,
	461);
INSERT INTO V_LIN
	VALUES (528,
	'3');
INSERT INTO V_PAR
	VALUES (528,
	526,
	0,
	'unit',
	0,
	8,
	42);
INSERT INTO ACT_BLK
	VALUES (464,
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
	449,
	0);
INSERT INTO ACT_SMT
	VALUES (529,
	464,
	0,
	10,
	3,
	'setData line: 10');
INSERT INTO ACT_BRG
	VALUES (529,
	343,
	10,
	14,
	10,
	3);
INSERT INTO V_VAL
	VALUES (530,
	0,
	0,
	10,
	35,
	39,
	0,
	0,
	0,
	0,
	23,
	464);
INSERT INTO V_PVL
	VALUES (530,
	0,
	447,
	0,
	0);
INSERT INTO V_PAR
	VALUES (530,
	529,
	0,
	'value',
	531,
	10,
	22);
INSERT INTO V_VAL
	VALUES (531,
	0,
	0,
	10,
	48,
	48,
	0,
	0,
	0,
	0,
	14,
	464);
INSERT INTO V_LIN
	VALUES (531,
	'4');
INSERT INTO V_PAR
	VALUES (531,
	529,
	0,
	'unit',
	0,
	10,
	42);
INSERT INTO ACT_BLK
	VALUES (467,
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
	449,
	0);
INSERT INTO ACT_SMT
	VALUES (532,
	467,
	0,
	12,
	3,
	'setData line: 12');
INSERT INTO ACT_BRG
	VALUES (532,
	343,
	12,
	14,
	12,
	3);
INSERT INTO V_VAL
	VALUES (533,
	0,
	0,
	12,
	35,
	39,
	0,
	0,
	0,
	0,
	23,
	467);
INSERT INTO V_PVL
	VALUES (533,
	0,
	447,
	0,
	0);
INSERT INTO V_PAR
	VALUES (533,
	532,
	0,
	'value',
	534,
	12,
	22);
INSERT INTO V_VAL
	VALUES (534,
	0,
	0,
	12,
	48,
	48,
	0,
	0,
	0,
	0,
	14,
	467);
INSERT INTO V_LIN
	VALUES (534,
	'5');
INSERT INTO V_PAR
	VALUES (534,
	532,
	0,
	'unit',
	0,
	12,
	42);
INSERT INTO ACT_BLK
	VALUES (470,
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
	449,
	0);
INSERT INTO ACT_SMT
	VALUES (535,
	470,
	0,
	14,
	3,
	'setData line: 14');
INSERT INTO ACT_BRG
	VALUES (535,
	343,
	14,
	14,
	14,
	3);
INSERT INTO V_VAL
	VALUES (536,
	0,
	0,
	14,
	35,
	39,
	0,
	0,
	0,
	0,
	23,
	470);
INSERT INTO V_PVL
	VALUES (536,
	0,
	447,
	0,
	0);
INSERT INTO V_PAR
	VALUES (536,
	535,
	0,
	'value',
	537,
	14,
	22);
INSERT INTO V_VAL
	VALUES (537,
	0,
	0,
	14,
	48,
	48,
	0,
	0,
	0,
	0,
	14,
	470);
INSERT INTO V_LIN
	VALUES (537,
	'6');
INSERT INTO V_PAR
	VALUES (537,
	535,
	0,
	'unit',
	0,
	14,
	42);
INSERT INTO ACT_BLK
	VALUES (473,
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
	449,
	0);
INSERT INTO ACT_SMT
	VALUES (538,
	473,
	0,
	16,
	3,
	'setData line: 16');
INSERT INTO ACT_BRG
	VALUES (538,
	343,
	16,
	14,
	16,
	3);
INSERT INTO V_VAL
	VALUES (539,
	0,
	0,
	16,
	35,
	39,
	0,
	0,
	0,
	0,
	23,
	473);
INSERT INTO V_PVL
	VALUES (539,
	0,
	447,
	0,
	0);
INSERT INTO V_PAR
	VALUES (539,
	538,
	0,
	'value',
	540,
	16,
	22);
INSERT INTO V_VAL
	VALUES (540,
	0,
	0,
	16,
	48,
	48,
	0,
	0,
	0,
	0,
	14,
	473);
INSERT INTO V_LIN
	VALUES (540,
	'7');
INSERT INTO V_PAR
	VALUES (540,
	538,
	0,
	'unit',
	0,
	16,
	42);
INSERT INTO ACT_BLK
	VALUES (476,
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
	449,
	0);
INSERT INTO ACT_SMT
	VALUES (541,
	476,
	0,
	18,
	3,
	'setData line: 18');
INSERT INTO ACT_BRG
	VALUES (541,
	343,
	18,
	14,
	18,
	3);
INSERT INTO V_VAL
	VALUES (542,
	0,
	0,
	18,
	35,
	39,
	0,
	0,
	0,
	0,
	23,
	476);
INSERT INTO V_PVL
	VALUES (542,
	0,
	447,
	0,
	0);
INSERT INTO V_PAR
	VALUES (542,
	541,
	0,
	'value',
	543,
	18,
	22);
INSERT INTO V_VAL
	VALUES (543,
	0,
	0,
	18,
	48,
	48,
	0,
	0,
	0,
	0,
	14,
	476);
INSERT INTO V_LIN
	VALUES (543,
	'8');
INSERT INTO V_PAR
	VALUES (543,
	541,
	0,
	'unit',
	0,
	18,
	42);
INSERT INTO ACT_BLK
	VALUES (479,
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
	449,
	0);
INSERT INTO ACT_SMT
	VALUES (544,
	479,
	0,
	20,
	3,
	'setData line: 20');
INSERT INTO ACT_BRG
	VALUES (544,
	343,
	20,
	14,
	20,
	3);
INSERT INTO V_VAL
	VALUES (545,
	0,
	0,
	20,
	35,
	39,
	0,
	0,
	0,
	0,
	23,
	479);
INSERT INTO V_PVL
	VALUES (545,
	0,
	447,
	0,
	0);
INSERT INTO V_PAR
	VALUES (545,
	544,
	0,
	'value',
	546,
	20,
	22);
INSERT INTO V_VAL
	VALUES (546,
	0,
	0,
	20,
	48,
	48,
	0,
	0,
	0,
	0,
	14,
	479);
INSERT INTO V_LIN
	VALUES (546,
	'9');
INSERT INTO V_PAR
	VALUES (546,
	544,
	0,
	'unit',
	0,
	20,
	42);
INSERT INTO ACT_BLK
	VALUES (482,
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
	449,
	0);
INSERT INTO ACT_SMT
	VALUES (547,
	482,
	0,
	22,
	3,
	'setData line: 22');
INSERT INTO ACT_BRG
	VALUES (547,
	343,
	22,
	14,
	22,
	3);
INSERT INTO V_VAL
	VALUES (548,
	0,
	0,
	22,
	35,
	39,
	0,
	0,
	0,
	0,
	23,
	482);
INSERT INTO V_PVL
	VALUES (548,
	0,
	447,
	0,
	0);
INSERT INTO V_PAR
	VALUES (548,
	547,
	0,
	'value',
	549,
	22,
	22);
INSERT INTO V_VAL
	VALUES (549,
	0,
	0,
	22,
	48,
	49,
	0,
	0,
	0,
	0,
	14,
	482);
INSERT INTO V_LIN
	VALUES (549,
	'10');
INSERT INTO V_PAR
	VALUES (549,
	547,
	0,
	'unit',
	0,
	22,
	42);
INSERT INTO PE_PE
	VALUES (12,
	1,
	91,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (12,
	0,
	'setTime',
	'',
	'GuiBridge::setTime(time: param.time);',
	94,
	1,
	'');
INSERT INTO S_SPARM
	VALUES (550,
	12,
	'time',
	14,
	0,
	'',
	0,
	'');
INSERT INTO ACT_FNB
	VALUES (551,
	12);
INSERT INTO ACT_ACT
	VALUES (551,
	'function',
	0,
	552,
	0,
	0,
	'setTime',
	0);
INSERT INTO ACT_BLK
	VALUES (552,
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
	551,
	0);
INSERT INTO ACT_SMT
	VALUES (553,
	552,
	0,
	1,
	1,
	'setTime line: 1');
INSERT INTO ACT_BRG
	VALUES (553,
	348,
	1,
	12,
	1,
	1);
INSERT INTO V_VAL
	VALUES (554,
	0,
	0,
	1,
	32,
	35,
	0,
	0,
	0,
	0,
	14,
	552);
INSERT INTO V_PVL
	VALUES (554,
	0,
	550,
	0,
	0);
INSERT INTO V_PAR
	VALUES (554,
	553,
	0,
	'time',
	0,
	1,
	20);
INSERT INTO PE_PE
	VALUES (40,
	1,
	91,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (40,
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
	94,
	1,
	'');
INSERT INTO S_SPARM
	VALUES (555,
	40,
	'indicator',
	42,
	0,
	'',
	0,
	'');
INSERT INTO ACT_FNB
	VALUES (556,
	40);
INSERT INTO ACT_ACT
	VALUES (556,
	'function',
	0,
	557,
	0,
	0,
	'setIndicator',
	0);
INSERT INTO ACT_BLK
	VALUES (557,
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
	556,
	0);
INSERT INTO ACT_SMT
	VALUES (558,
	557,
	0,
	2,
	1,
	'setIndicator line: 2');
INSERT INTO ACT_IF
	VALUES (558,
	559,
	560,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (561,
	557,
	0,
	4,
	1,
	'setIndicator line: 4');
INSERT INTO ACT_EL
	VALUES (561,
	562,
	563,
	558);
INSERT INTO ACT_SMT
	VALUES (564,
	557,
	0,
	6,
	1,
	'setIndicator line: 6');
INSERT INTO ACT_EL
	VALUES (564,
	565,
	566,
	558);
INSERT INTO ACT_SMT
	VALUES (567,
	557,
	0,
	8,
	1,
	'setIndicator line: 8');
INSERT INTO ACT_EL
	VALUES (567,
	568,
	569,
	558);
INSERT INTO V_VAL
	VALUES (570,
	0,
	0,
	2,
	12,
	20,
	0,
	0,
	0,
	0,
	42,
	557);
INSERT INTO V_PVL
	VALUES (570,
	0,
	555,
	0,
	0);
INSERT INTO V_VAL
	VALUES (560,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	557);
INSERT INTO V_BIN
	VALUES (560,
	571,
	570,
	'==');
INSERT INTO V_VAL
	VALUES (571,
	0,
	0,
	2,
	36,
	40,
	0,
	0,
	0,
	0,
	42,
	557);
INSERT INTO V_LEN
	VALUES (571,
	572,
	2,
	25);
INSERT INTO V_VAL
	VALUES (573,
	0,
	0,
	4,
	14,
	22,
	0,
	0,
	0,
	0,
	42,
	557);
INSERT INTO V_PVL
	VALUES (573,
	0,
	555,
	0,
	0);
INSERT INTO V_VAL
	VALUES (563,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	557);
INSERT INTO V_BIN
	VALUES (563,
	574,
	573,
	'==');
INSERT INTO V_VAL
	VALUES (574,
	0,
	0,
	4,
	38,
	41,
	0,
	0,
	0,
	0,
	42,
	557);
INSERT INTO V_LEN
	VALUES (574,
	575,
	4,
	27);
INSERT INTO V_VAL
	VALUES (576,
	0,
	0,
	6,
	14,
	22,
	0,
	0,
	0,
	0,
	42,
	557);
INSERT INTO V_PVL
	VALUES (576,
	0,
	555,
	0,
	0);
INSERT INTO V_VAL
	VALUES (566,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	557);
INSERT INTO V_BIN
	VALUES (566,
	577,
	576,
	'==');
INSERT INTO V_VAL
	VALUES (577,
	0,
	0,
	6,
	38,
	41,
	0,
	0,
	0,
	0,
	42,
	557);
INSERT INTO V_LEN
	VALUES (577,
	578,
	6,
	27);
INSERT INTO V_VAL
	VALUES (579,
	0,
	0,
	8,
	14,
	22,
	0,
	0,
	0,
	0,
	42,
	557);
INSERT INTO V_PVL
	VALUES (579,
	0,
	555,
	0,
	0);
INSERT INTO V_VAL
	VALUES (569,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	557);
INSERT INTO V_BIN
	VALUES (569,
	580,
	579,
	'==');
INSERT INTO V_VAL
	VALUES (580,
	0,
	0,
	8,
	38,
	39,
	0,
	0,
	0,
	0,
	42,
	557);
INSERT INTO V_LEN
	VALUES (580,
	581,
	8,
	27);
INSERT INTO ACT_BLK
	VALUES (559,
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
	556,
	0);
INSERT INTO ACT_SMT
	VALUES (582,
	559,
	0,
	3,
	3,
	'setIndicator line: 3');
INSERT INTO ACT_BRG
	VALUES (582,
	354,
	3,
	14,
	3,
	3);
INSERT INTO V_VAL
	VALUES (583,
	0,
	0,
	3,
	35,
	35,
	0,
	0,
	0,
	0,
	14,
	559);
INSERT INTO V_LIN
	VALUES (583,
	'0');
INSERT INTO V_PAR
	VALUES (583,
	582,
	0,
	'value',
	0,
	3,
	28);
INSERT INTO ACT_BLK
	VALUES (562,
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
	556,
	0);
INSERT INTO ACT_SMT
	VALUES (584,
	562,
	0,
	5,
	3,
	'setIndicator line: 5');
INSERT INTO ACT_BRG
	VALUES (584,
	354,
	5,
	14,
	5,
	3);
INSERT INTO V_VAL
	VALUES (585,
	0,
	0,
	5,
	35,
	35,
	0,
	0,
	0,
	0,
	14,
	562);
INSERT INTO V_LIN
	VALUES (585,
	'1');
INSERT INTO V_PAR
	VALUES (585,
	584,
	0,
	'value',
	0,
	5,
	28);
INSERT INTO ACT_BLK
	VALUES (565,
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
	556,
	0);
INSERT INTO ACT_SMT
	VALUES (586,
	565,
	0,
	7,
	3,
	'setIndicator line: 7');
INSERT INTO ACT_BRG
	VALUES (586,
	354,
	7,
	14,
	7,
	3);
INSERT INTO V_VAL
	VALUES (587,
	0,
	0,
	7,
	35,
	35,
	0,
	0,
	0,
	0,
	14,
	565);
INSERT INTO V_LIN
	VALUES (587,
	'2');
INSERT INTO V_PAR
	VALUES (587,
	586,
	0,
	'value',
	0,
	7,
	28);
INSERT INTO ACT_BLK
	VALUES (568,
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
	556,
	0);
INSERT INTO ACT_SMT
	VALUES (588,
	568,
	0,
	9,
	3,
	'setIndicator line: 9');
INSERT INTO ACT_BRG
	VALUES (588,
	354,
	9,
	14,
	9,
	3);
INSERT INTO V_VAL
	VALUES (589,
	0,
	0,
	9,
	35,
	35,
	0,
	0,
	0,
	0,
	14,
	568);
INSERT INTO V_LIN
	VALUES (589,
	'3');
INSERT INTO V_PAR
	VALUES (589,
	588,
	0,
	'value',
	0,
	9,
	28);
INSERT INTO PE_PE
	VALUES (49,
	1,
	91,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (49,
	0,
	'newGoalSpec',
	'',
	'',
	94,
	1,
	'');
INSERT INTO S_SPARM
	VALUES (590,
	49,
	'sequenceNumber',
	14,
	0,
	'',
	0,
	'');
INSERT INTO S_SPARM
	VALUES (591,
	49,
	'minimum',
	23,
	0,
	'',
	590,
	'');
INSERT INTO S_SPARM
	VALUES (592,
	49,
	'maximum',
	23,
	0,
	'',
	591,
	'');
INSERT INTO S_SPARM
	VALUES (593,
	49,
	'span',
	23,
	0,
	'',
	592,
	'');
INSERT INTO S_SPARM
	VALUES (594,
	49,
	'criteriaType',
	59,
	0,
	'',
	593,
	'');
INSERT INTO S_SPARM
	VALUES (595,
	49,
	'spanType',
	62,
	0,
	'',
	594,
	'');
INSERT INTO ACT_FNB
	VALUES (596,
	49);
INSERT INTO ACT_ACT
	VALUES (596,
	'function',
	0,
	597,
	0,
	0,
	'newGoalSpec',
	0);
INSERT INTO ACT_BLK
	VALUES (597,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	596,
	0);
INSERT INTO PE_PE
	VALUES (598,
	1,
	2,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (598,
	0,
	1,
	'shared',
	'',
	0);
INSERT INTO PE_PE
	VALUES (6,
	1,
	598,
	0,
	6);
INSERT INTO C_I
	VALUES (6,
	0,
	'UI',
	'');
INSERT INTO C_EP
	VALUES (8,
	6,
	-1,
	'setTime',
	'');
INSERT INTO C_IO
	VALUES (8,
	94,
	'setTime',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (15,
	8,
	14,
	'time',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (17,
	6,
	-1,
	'setData',
	'');
INSERT INTO C_IO
	VALUES (17,
	94,
	'setData',
	'',
	0,
	'',
	8);
INSERT INTO C_PP
	VALUES (24,
	17,
	23,
	'value',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (27,
	17,
	26,
	'unit',
	'',
	0,
	'',
	24);
INSERT INTO C_EP
	VALUES (29,
	6,
	-1,
	'startTest',
	'');
INSERT INTO C_IO
	VALUES (29,
	94,
	'startTest',
	'',
	0,
	'',
	17);
INSERT INTO C_EP
	VALUES (36,
	6,
	-1,
	'setIndicator',
	'');
INSERT INTO C_IO
	VALUES (36,
	94,
	'setIndicator',
	'',
	0,
	'',
	29);
INSERT INTO C_PP
	VALUES (43,
	36,
	42,
	'indicator',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (45,
	6,
	-1,
	'newGoalSpec',
	'');
INSERT INTO C_IO
	VALUES (45,
	94,
	'newGoalSpec',
	'',
	0,
	'',
	36);
INSERT INTO C_PP
	VALUES (51,
	45,
	14,
	'sequenceNumber',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (53,
	45,
	23,
	'minimum',
	'',
	0,
	'',
	51);
INSERT INTO C_PP
	VALUES (55,
	45,
	23,
	'maximum',
	'',
	0,
	'',
	53);
INSERT INTO C_PP
	VALUES (57,
	45,
	23,
	'span',
	'',
	0,
	'',
	55);
INSERT INTO C_PP
	VALUES (60,
	45,
	59,
	'criteriaType',
	'',
	0,
	'',
	57);
INSERT INTO C_PP
	VALUES (63,
	45,
	62,
	'spanType',
	'',
	0,
	'',
	60);
INSERT INTO PE_PE
	VALUES (66,
	1,
	598,
	0,
	6);
INSERT INTO C_I
	VALUES (66,
	0,
	'UITracking',
	'');
INSERT INTO C_EP
	VALUES (68,
	66,
	-1,
	'setTargetPressed',
	'');
INSERT INTO C_IO
	VALUES (68,
	94,
	'setTargetPressed',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (72,
	66,
	-1,
	'startStopPressed',
	'');
INSERT INTO C_IO
	VALUES (72,
	94,
	'startStopPressed',
	'',
	0,
	'',
	68);
INSERT INTO C_EP
	VALUES (76,
	66,
	-1,
	'lapResetPressed',
	'');
INSERT INTO C_IO
	VALUES (76,
	94,
	'lapResetPressed',
	'',
	0,
	'',
	72);
INSERT INTO C_EP
	VALUES (80,
	66,
	-1,
	'modePressed',
	'');
INSERT INTO C_IO
	VALUES (80,
	94,
	'modePressed',
	'',
	0,
	'',
	76);
INSERT INTO C_EP
	VALUES (84,
	66,
	-1,
	'newGoalSpec',
	'');
INSERT INTO C_IO
	VALUES (84,
	94,
	'newGoalSpec',
	'',
	0,
	'',
	80);
INSERT INTO C_PP
	VALUES (599,
	84,
	14,
	'sequenceNumber',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (600,
	84,
	23,
	'minimum',
	'',
	0,
	'',
	599);
INSERT INTO C_PP
	VALUES (601,
	84,
	23,
	'maximum',
	'',
	0,
	'',
	600);
INSERT INTO C_PP
	VALUES (602,
	84,
	23,
	'span',
	'',
	0,
	'',
	601);
INSERT INTO C_PP
	VALUES (603,
	84,
	59,
	'criteriaType',
	'',
	0,
	'',
	602);
INSERT INTO C_PP
	VALUES (604,
	84,
	62,
	'spanType',
	'',
	0,
	'',
	603);
INSERT INTO C_EP
	VALUES (88,
	66,
	-1,
	'lightPressed',
	'');
INSERT INTO C_IO
	VALUES (88,
	94,
	'lightPressed',
	'',
	0,
	'',
	84);
INSERT INTO PE_PE
	VALUES (26,
	1,
	2,
	0,
	3);
INSERT INTO S_DT
	VALUES (26,
	0,
	'Unit',
	'',
	'');
INSERT INTO S_EDT
	VALUES (26);
INSERT INTO S_ENUM
	VALUES (486,
	'km',
	'',
	26,
	0);
INSERT INTO S_ENUM
	VALUES (489,
	'meters',
	'',
	26,
	486);
INSERT INTO S_ENUM
	VALUES (492,
	'minPerKm',
	'',
	26,
	489);
INSERT INTO S_ENUM
	VALUES (495,
	'kmPerHour',
	'',
	26,
	492);
INSERT INTO S_ENUM
	VALUES (498,
	'miles',
	'',
	26,
	495);
INSERT INTO S_ENUM
	VALUES (501,
	'yards',
	'',
	26,
	498);
INSERT INTO S_ENUM
	VALUES (504,
	'feet',
	'',
	26,
	501);
INSERT INTO S_ENUM
	VALUES (507,
	'minPerMile',
	'',
	26,
	504);
INSERT INTO S_ENUM
	VALUES (510,
	'mph',
	'',
	26,
	507);
INSERT INTO S_ENUM
	VALUES (513,
	'bpm',
	'',
	26,
	510);
INSERT INTO S_ENUM
	VALUES (516,
	'laps',
	'',
	26,
	513);
INSERT INTO PE_PE
	VALUES (42,
	1,
	2,
	0,
	3);
INSERT INTO S_DT
	VALUES (42,
	0,
	'Indicator',
	'',
	'');
INSERT INTO S_EDT
	VALUES (42);
INSERT INTO S_ENUM
	VALUES (572,
	'Blank',
	'',
	42,
	0);
INSERT INTO S_ENUM
	VALUES (575,
	'Down',
	'',
	42,
	572);
INSERT INTO S_ENUM
	VALUES (578,
	'Flat',
	'',
	42,
	575);
INSERT INTO S_ENUM
	VALUES (581,
	'Up',
	'',
	42,
	578);
INSERT INTO PE_PE
	VALUES (94,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (94,
	0,
	'void',
	'',
	'');
INSERT INTO S_CDT
	VALUES (94,
	0);
INSERT INTO PE_PE
	VALUES (119,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (119,
	0,
	'boolean',
	'',
	'');
INSERT INTO S_CDT
	VALUES (119,
	1);
INSERT INTO PE_PE
	VALUES (14,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (14,
	0,
	'integer',
	'',
	'');
INSERT INTO S_CDT
	VALUES (14,
	2);
INSERT INTO PE_PE
	VALUES (23,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (23,
	0,
	'real',
	'',
	'');
INSERT INTO S_CDT
	VALUES (23,
	3);
INSERT INTO PE_PE
	VALUES (149,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (149,
	0,
	'string',
	'',
	'');
INSERT INTO S_CDT
	VALUES (149,
	4);
INSERT INTO PE_PE
	VALUES (605,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (605,
	0,
	'unique_id',
	'',
	'');
INSERT INTO S_CDT
	VALUES (605,
	5);
INSERT INTO PE_PE
	VALUES (100,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (100,
	0,
	'state<State_Model>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (100,
	6);
INSERT INTO PE_PE
	VALUES (606,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (606,
	0,
	'same_as<Base_Attribute>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (606,
	7);
INSERT INTO PE_PE
	VALUES (116,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (116,
	0,
	'inst_ref<Object>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (116,
	8);
INSERT INTO PE_PE
	VALUES (607,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (607,
	0,
	'inst_ref_set<Object>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (607,
	9);
INSERT INTO PE_PE
	VALUES (138,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (138,
	0,
	'inst<Event>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (138,
	10);
INSERT INTO PE_PE
	VALUES (608,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (608,
	0,
	'inst<Mapping>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (608,
	11);
INSERT INTO PE_PE
	VALUES (609,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (609,
	0,
	'inst_ref<Mapping>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (609,
	12);
INSERT INTO PE_PE
	VALUES (610,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (610,
	0,
	'component_ref',
	'',
	'');
INSERT INTO S_CDT
	VALUES (610,
	13);
INSERT INTO PE_PE
	VALUES (260,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (260,
	0,
	'date',
	'',
	'');
INSERT INTO S_UDT
	VALUES (260,
	608,
	1);
INSERT INTO PE_PE
	VALUES (134,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (134,
	0,
	'inst_ref<Timer>',
	'',
	'');
INSERT INTO S_UDT
	VALUES (134,
	609,
	3);
INSERT INTO PE_PE
	VALUES (297,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (297,
	0,
	'timestamp',
	'',
	'');
INSERT INTO S_UDT
	VALUES (297,
	608,
	2);
-- root-types-contained: SystemModel_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES (611,
	'Tracking',
	1);
INSERT INTO EP_PKG
	VALUES (612,
	611,
	611,
	'Tracking',
	'',
	0);
INSERT INTO PE_PE
	VALUES (613,
	1,
	612,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (613,
	0,
	611,
	'shared',
	'',
	0);
INSERT INTO PE_PE
	VALUES (614,
	1,
	613,
	0,
	6);
INSERT INTO C_I
	VALUES (614,
	0,
	'TrackingHeartRateMonitor',
	'');
INSERT INTO C_EP
	VALUES (615,
	614,
	-1,
	'registerListener',
	'');
INSERT INTO C_IO
	VALUES (615,
	94,
	'registerListener',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (616,
	614,
	-1,
	'unregisterListener',
	'');
INSERT INTO C_IO
	VALUES (616,
	94,
	'unregisterListener',
	'',
	0,
	'',
	615);
INSERT INTO PE_PE
	VALUES (617,
	1,
	613,
	0,
	6);
INSERT INTO C_I
	VALUES (617,
	0,
	'TrackingLocation',
	'');
INSERT INTO C_EP
	VALUES (618,
	617,
	-1,
	'getDistance',
	'Returns distance, in kilometers, between the "from" and "to" coordinates passed as parameters.
The coordinates must be passed as decimal degrees.');
INSERT INTO C_IO
	VALUES (618,
	23,
	'getDistance',
	'Returns distance, in kilometers, between the "from" and "to" coordinates passed as parameters.
The coordinates must be passed as decimal degrees.',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (619,
	618,
	23,
	'fromLat',
	'Latitude for the "from" coordinates.',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (620,
	618,
	23,
	'toLat',
	'Latitude for the "to" coordinates.',
	0,
	'',
	621);
INSERT INTO C_PP
	VALUES (621,
	618,
	23,
	'fromLong',
	'Longitude for the "from" coordinates.',
	0,
	'',
	619);
INSERT INTO C_PP
	VALUES (622,
	618,
	23,
	'toLong',
	'Longitude for the "to" coordinates.',
	0,
	'',
	620);
INSERT INTO C_EP
	VALUES (623,
	617,
	-1,
	'getLocation',
	'');
INSERT INTO C_IO
	VALUES (623,
	94,
	'getLocation',
	'',
	0,
	'',
	618);
INSERT INTO C_PP
	VALUES (624,
	623,
	23,
	'latitude',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (625,
	623,
	23,
	'longitude',
	'',
	0,
	'',
	624);
INSERT INTO C_EP
	VALUES (626,
	617,
	-1,
	'registerListener',
	'');
INSERT INTO C_IO
	VALUES (626,
	94,
	'registerListener',
	'',
	0,
	'',
	623);
INSERT INTO C_EP
	VALUES (627,
	617,
	-1,
	'unregisterListener',
	'');
INSERT INTO C_IO
	VALUES (627,
	94,
	'unregisterListener',
	'',
	0,
	'',
	626);
INSERT INTO PE_PE
	VALUES (628,
	1,
	613,
	0,
	6);
INSERT INTO C_I
	VALUES (628,
	0,
	'TrackingUI',
	'');
INSERT INTO C_EP
	VALUES (629,
	628,
	-1,
	'setData',
	'');
INSERT INTO C_IO
	VALUES (629,
	94,
	'setData',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (630,
	629,
	23,
	'value',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (631,
	629,
	26,
	'unit',
	'',
	0,
	'',
	630);
INSERT INTO C_EP
	VALUES (632,
	628,
	-1,
	'setIndicator',
	'');
INSERT INTO C_IO
	VALUES (632,
	94,
	'setIndicator',
	'',
	0,
	'',
	629);
INSERT INTO C_PP
	VALUES (633,
	632,
	42,
	'indicator',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (634,
	628,
	-1,
	'setTime',
	'');
INSERT INTO C_IO
	VALUES (634,
	94,
	'setTime',
	'',
	0,
	'',
	632);
INSERT INTO C_PP
	VALUES (635,
	634,
	14,
	'time',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (636,
	628,
	-1,
	'newGoalSpec',
	'');
INSERT INTO C_IO
	VALUES (636,
	94,
	'newGoalSpec',
	'',
	0,
	'',
	634);
INSERT INTO C_PP
	VALUES (637,
	636,
	14,
	'sequenceNumber',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (638,
	636,
	23,
	'minimum',
	'',
	0,
	'',
	637);
INSERT INTO C_PP
	VALUES (639,
	636,
	23,
	'maximum',
	'',
	0,
	'',
	638);
INSERT INTO C_PP
	VALUES (640,
	636,
	23,
	'span',
	'',
	0,
	'',
	639);
INSERT INTO C_PP
	VALUES (641,
	636,
	59,
	'criteriaType',
	'',
	0,
	'',
	640);
INSERT INTO C_PP
	VALUES (642,
	636,
	62,
	'spanType',
	'',
	0,
	'',
	641);
INSERT INTO PE_PE
	VALUES (643,
	1,
	613,
	0,
	6);
INSERT INTO C_I
	VALUES (643,
	0,
	'Tracking',
	'');
INSERT INTO C_EP
	VALUES (644,
	643,
	-1,
	'heartRateChanged',
	'');
INSERT INTO C_IO
	VALUES (644,
	94,
	'heartRateChanged',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (645,
	644,
	14,
	'heartRate',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (646,
	643,
	-1,
	'lapResetPressed',
	'');
INSERT INTO C_IO
	VALUES (646,
	94,
	'lapResetPressed',
	'',
	0,
	'',
	644);
INSERT INTO C_EP
	VALUES (647,
	643,
	-1,
	'modePressed',
	'');
INSERT INTO C_IO
	VALUES (647,
	94,
	'modePressed',
	'',
	0,
	'',
	646);
INSERT INTO C_EP
	VALUES (648,
	643,
	-1,
	'setTargetPressed',
	'');
INSERT INTO C_IO
	VALUES (648,
	94,
	'setTargetPressed',
	'',
	0,
	'',
	647);
INSERT INTO C_EP
	VALUES (649,
	643,
	-1,
	'startStopPressed',
	'');
INSERT INTO C_IO
	VALUES (649,
	94,
	'startStopPressed',
	'',
	0,
	'',
	648);
INSERT INTO C_EP
	VALUES (650,
	643,
	-1,
	'newGoalSpec',
	'');
INSERT INTO C_IO
	VALUES (650,
	94,
	'newGoalSpec',
	'',
	0,
	'',
	649);
INSERT INTO C_PP
	VALUES (651,
	650,
	14,
	'sequenceNumber',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (652,
	650,
	23,
	'minimum',
	'',
	0,
	'',
	651);
INSERT INTO C_PP
	VALUES (653,
	650,
	23,
	'maximum',
	'',
	0,
	'',
	652);
INSERT INTO C_PP
	VALUES (654,
	650,
	23,
	'span',
	'',
	0,
	'',
	653);
INSERT INTO C_PP
	VALUES (655,
	650,
	59,
	'criteriaType',
	'',
	0,
	'',
	654);
INSERT INTO C_PP
	VALUES (656,
	650,
	62,
	'spanType',
	'',
	0,
	'',
	655);
INSERT INTO C_EP
	VALUES (657,
	643,
	-1,
	'lightPressed',
	'');
INSERT INTO C_IO
	VALUES (657,
	94,
	'lightPressed',
	'',
	0,
	'',
	650);
INSERT INTO PE_PE
	VALUES (658,
	1,
	612,
	0,
	2);
INSERT INTO C_C
	VALUES (658,
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
	VALUES (659,
	658,
	'Location',
	0,
	0);
INSERT INTO C_IR
	VALUES (660,
	617,
	0,
	659);
INSERT INTO C_R
	VALUES (660,
	'TrackingLocation',
	'',
	'Unnamed Interface',
	'Tracking::Location::TrackingLocation');
INSERT INTO SPR_REP
	VALUES (661,
	618,
	660);
INSERT INTO SPR_RO
	VALUES (661,
	'getDistance',
	'Returns distance, in kilometers, between the "from" and "to" coordinates passed as parameters.
The coordinates must be passed as decimal degrees.',
	'return 1;',
	1);
INSERT INTO ACT_ROB
	VALUES (662,
	661);
INSERT INTO ACT_ACT
	VALUES (662,
	'interface operation',
	0,
	663,
	0,
	0,
	'Location::TrackingLocation::getDistance',
	0);
INSERT INTO ACT_BLK
	VALUES (663,
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
	662,
	0);
INSERT INTO ACT_SMT
	VALUES (664,
	663,
	0,
	1,
	1,
	'Location::TrackingLocation::getDistance line: 1');
INSERT INTO ACT_RET
	VALUES (664,
	665);
INSERT INTO V_VAL
	VALUES (665,
	0,
	0,
	1,
	8,
	8,
	0,
	0,
	0,
	0,
	14,
	663);
INSERT INTO V_LIN
	VALUES (665,
	'1');
INSERT INTO SPR_REP
	VALUES (666,
	623,
	660);
INSERT INTO SPR_RO
	VALUES (666,
	'getLocation',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (667,
	666);
INSERT INTO ACT_ACT
	VALUES (667,
	'interface operation',
	0,
	668,
	0,
	0,
	'Location::TrackingLocation::getLocation',
	0);
INSERT INTO ACT_BLK
	VALUES (668,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	667,
	0);
INSERT INTO SPR_REP
	VALUES (669,
	626,
	660);
INSERT INTO SPR_RO
	VALUES (669,
	'registerListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (670,
	669);
INSERT INTO ACT_ACT
	VALUES (670,
	'interface operation',
	0,
	671,
	0,
	0,
	'Location::TrackingLocation::registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (671,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	670,
	0);
INSERT INTO SPR_REP
	VALUES (672,
	627,
	660);
INSERT INTO SPR_RO
	VALUES (672,
	'unregisterListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (673,
	672);
INSERT INTO ACT_ACT
	VALUES (673,
	'interface operation',
	0,
	674,
	0,
	0,
	'Location::TrackingLocation::unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (674,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	673,
	0);
INSERT INTO C_PO
	VALUES (675,
	658,
	'UI',
	0,
	0);
INSERT INTO C_IR
	VALUES (676,
	628,
	0,
	675);
INSERT INTO C_R
	VALUES (676,
	'TrackingUI',
	'',
	'Unnamed Interface',
	'Tracking::UI::TrackingUI');
INSERT INTO SPR_REP
	VALUES (677,
	629,
	676);
INSERT INTO SPR_RO
	VALUES (677,
	'setData',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (678,
	677);
INSERT INTO ACT_ACT
	VALUES (678,
	'interface operation',
	0,
	679,
	0,
	0,
	'UI::TrackingUI::setData',
	0);
INSERT INTO ACT_BLK
	VALUES (679,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	678,
	0);
INSERT INTO SPR_REP
	VALUES (680,
	632,
	676);
INSERT INTO SPR_RO
	VALUES (680,
	'setIndicator',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (681,
	680);
INSERT INTO ACT_ACT
	VALUES (681,
	'interface operation',
	0,
	682,
	0,
	0,
	'UI::TrackingUI::setIndicator',
	0);
INSERT INTO ACT_BLK
	VALUES (682,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	681,
	0);
INSERT INTO SPR_REP
	VALUES (683,
	634,
	676);
INSERT INTO SPR_RO
	VALUES (683,
	'setTime',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (684,
	683);
INSERT INTO ACT_ACT
	VALUES (684,
	'interface operation',
	0,
	685,
	0,
	0,
	'UI::TrackingUI::setTime',
	0);
INSERT INTO ACT_BLK
	VALUES (685,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	684,
	0);
INSERT INTO SPR_REP
	VALUES (686,
	636,
	676);
INSERT INTO SPR_RO
	VALUES (686,
	'newGoalSpec',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (687,
	686);
INSERT INTO ACT_ACT
	VALUES (687,
	'interface operation',
	0,
	688,
	0,
	0,
	'UI::TrackingUI::newGoalSpec',
	0);
INSERT INTO ACT_BLK
	VALUES (688,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	687,
	0);
INSERT INTO C_PO
	VALUES (689,
	658,
	'HeartRateMonitor',
	0,
	0);
INSERT INTO C_IR
	VALUES (690,
	614,
	0,
	689);
INSERT INTO C_R
	VALUES (690,
	'TrackingHeartRateMonitor',
	'',
	'Unnamed Interface',
	'Tracking::HeartRateMonitor::TrackingHeartRateMonitor');
INSERT INTO SPR_REP
	VALUES (691,
	615,
	690);
INSERT INTO SPR_RO
	VALUES (691,
	'registerListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (692,
	691);
INSERT INTO ACT_ACT
	VALUES (692,
	'interface operation',
	0,
	693,
	0,
	0,
	'HeartRateMonitor::TrackingHeartRateMonitor::registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (693,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	692,
	0);
INSERT INTO SPR_REP
	VALUES (694,
	616,
	690);
INSERT INTO SPR_RO
	VALUES (694,
	'unregisterListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (695,
	694);
INSERT INTO ACT_ACT
	VALUES (695,
	'interface operation',
	0,
	696,
	0,
	0,
	'HeartRateMonitor::TrackingHeartRateMonitor::unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (696,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	695,
	0);
INSERT INTO C_PO
	VALUES (697,
	658,
	'Tracking',
	0,
	0);
INSERT INTO C_IR
	VALUES (698,
	643,
	0,
	697);
INSERT INTO C_P
	VALUES (698,
	'Tracking',
	'Unnamed Interface',
	'',
	'Tracking::Tracking::Tracking');
INSERT INTO SPR_PEP
	VALUES (699,
	644,
	698);
INSERT INTO SPR_PO
	VALUES (699,
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
	VALUES (700,
	699);
INSERT INTO ACT_ACT
	VALUES (700,
	'interface operation',
	0,
	701,
	0,
	0,
	'Tracking::Tracking::heartRateChanged',
	0);
INSERT INTO ACT_BLK
	VALUES (701,
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
	700,
	0);
INSERT INTO ACT_SMT
	VALUES (702,
	701,
	703,
	6,
	1,
	'Tracking::Tracking::heartRateChanged line: 6');
INSERT INTO ACT_FIO
	VALUES (702,
	704,
	1,
	'any',
	705,
	6,
	38);
INSERT INTO ACT_SMT
	VALUES (703,
	701,
	0,
	7,
	1,
	'Tracking::Tracking::heartRateChanged line: 7');
INSERT INTO ACT_IF
	VALUES (703,
	706,
	707,
	0,
	0);
INSERT INTO V_VAL
	VALUES (708,
	0,
	0,
	7,
	15,
	21,
	0,
	0,
	0,
	0,
	116,
	701);
INSERT INTO V_IRF
	VALUES (708,
	704);
INSERT INTO V_VAL
	VALUES (709,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	701);
INSERT INTO V_UNY
	VALUES (709,
	708,
	'empty');
INSERT INTO V_VAL
	VALUES (707,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	701);
INSERT INTO V_UNY
	VALUES (707,
	709,
	'not');
INSERT INTO V_VAR
	VALUES (704,
	701,
	'session',
	1,
	116);
INSERT INTO V_INT
	VALUES (704,
	0,
	705);
INSERT INTO ACT_BLK
	VALUES (706,
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
	700,
	0);
INSERT INTO ACT_SMT
	VALUES (710,
	706,
	0,
	8,
	3,
	'Tracking::Tracking::heartRateChanged line: 8');
INSERT INTO ACT_TFM
	VALUES (710,
	711,
	704,
	8,
	11,
	0,
	0);
INSERT INTO V_VAL
	VALUES (712,
	0,
	0,
	8,
	47,
	55,
	0,
	0,
	0,
	0,
	14,
	706);
INSERT INTO V_PVL
	VALUES (712,
	0,
	0,
	0,
	645);
INSERT INTO V_PAR
	VALUES (712,
	710,
	0,
	'heartRate',
	0,
	8,
	30);
INSERT INTO SPR_PEP
	VALUES (713,
	646,
	698);
INSERT INTO SPR_PO
	VALUES (713,
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
	VALUES (714,
	713);
INSERT INTO ACT_ACT
	VALUES (714,
	'interface operation',
	0,
	715,
	0,
	0,
	'Tracking::Tracking::lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (715,
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
	714,
	0);
INSERT INTO ACT_SMT
	VALUES (716,
	715,
	717,
	4,
	1,
	'Tracking::Tracking::lapResetPressed line: 4');
INSERT INTO ACT_FIO
	VALUES (716,
	718,
	1,
	'any',
	719,
	4,
	43);
INSERT INTO ACT_SMT
	VALUES (717,
	715,
	0,
	5,
	1,
	'Tracking::Tracking::lapResetPressed line: 5');
INSERT INTO ACT_IF
	VALUES (717,
	720,
	721,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (722,
	715,
	0,
	7,
	1,
	'Tracking::Tracking::lapResetPressed line: 7');
INSERT INTO ACT_E
	VALUES (722,
	723,
	717);
INSERT INTO V_VAL
	VALUES (724,
	0,
	0,
	5,
	15,
	26,
	0,
	0,
	0,
	0,
	116,
	715);
INSERT INTO V_IRF
	VALUES (724,
	718);
INSERT INTO V_VAL
	VALUES (725,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	715);
INSERT INTO V_UNY
	VALUES (725,
	724,
	'empty');
INSERT INTO V_VAL
	VALUES (721,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	715);
INSERT INTO V_UNY
	VALUES (721,
	725,
	'not');
INSERT INTO V_VAR
	VALUES (718,
	715,
	'workoutTimer',
	1,
	116);
INSERT INTO V_INT
	VALUES (718,
	0,
	719);
INSERT INTO ACT_BLK
	VALUES (720,
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
	714,
	0);
INSERT INTO ACT_SMT
	VALUES (726,
	720,
	0,
	6,
	3,
	'Tracking::Tracking::lapResetPressed line: 6');
INSERT INTO E_ESS
	VALUES (726,
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
	VALUES (726);
INSERT INTO E_GSME
	VALUES (726,
	727);
INSERT INTO E_GEN
	VALUES (726,
	718);
INSERT INTO ACT_BLK
	VALUES (723,
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
	714,
	0);
INSERT INTO ACT_SMT
	VALUES (728,
	723,
	0,
	8,
	3,
	'Tracking::Tracking::lapResetPressed line: 8');
INSERT INTO ACT_BRG
	VALUES (728,
	729,
	8,
	8,
	8,
	3);
INSERT INTO V_VAL
	VALUES (730,
	0,
	0,
	8,
	28,
	92,
	0,
	0,
	0,
	0,
	149,
	723);
INSERT INTO V_LST
	VALUES (730,
	'Tracking:UI:lapResetPressed - No WorkoutTimer, so nothing to do.');
INSERT INTO V_PAR
	VALUES (730,
	728,
	0,
	'message',
	0,
	8,
	20);
INSERT INTO SPR_PEP
	VALUES (731,
	647,
	698);
INSERT INTO SPR_PO
	VALUES (731,
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
	VALUES (732,
	731);
INSERT INTO ACT_ACT
	VALUES (732,
	'interface operation',
	0,
	733,
	0,
	0,
	'Tracking::Tracking::modePressed',
	0);
INSERT INTO ACT_BLK
	VALUES (733,
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
	732,
	0);
INSERT INTO ACT_SMT
	VALUES (734,
	733,
	735,
	5,
	1,
	'Tracking::Tracking::modePressed line: 5');
INSERT INTO ACT_FIO
	VALUES (734,
	736,
	1,
	'any',
	705,
	5,
	38);
INSERT INTO ACT_SMT
	VALUES (735,
	733,
	0,
	6,
	1,
	'Tracking::Tracking::modePressed line: 6');
INSERT INTO ACT_IF
	VALUES (735,
	737,
	738,
	0,
	0);
INSERT INTO V_VAL
	VALUES (739,
	0,
	0,
	6,
	16,
	22,
	0,
	0,
	0,
	0,
	116,
	733);
INSERT INTO V_IRF
	VALUES (739,
	736);
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
	119,
	733);
INSERT INTO V_UNY
	VALUES (740,
	739,
	'empty');
INSERT INTO V_VAL
	VALUES (738,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	733);
INSERT INTO V_UNY
	VALUES (738,
	740,
	'not');
INSERT INTO V_VAR
	VALUES (736,
	733,
	'session',
	1,
	116);
INSERT INTO V_INT
	VALUES (736,
	0,
	705);
INSERT INTO ACT_BLK
	VALUES (737,
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
	732,
	0);
INSERT INTO ACT_SMT
	VALUES (741,
	737,
	742,
	7,
	3,
	'Tracking::Tracking::modePressed line: 7');
INSERT INTO ACT_SEL
	VALUES (741,
	743,
	1,
	'one',
	744);
INSERT INTO ACT_SR
	VALUES (741);
INSERT INTO ACT_LNK
	VALUES (745,
	'''current status indicated on''',
	741,
	746,
	0,
	2,
	747,
	7,
	42,
	7,
	50,
	7,
	53);
INSERT INTO ACT_SMT
	VALUES (742,
	737,
	0,
	8,
	3,
	'Tracking::Tracking::modePressed line: 8');
INSERT INTO E_ESS
	VALUES (742,
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
	VALUES (742);
INSERT INTO E_GSME
	VALUES (742,
	748);
INSERT INTO E_GEN
	VALUES (742,
	743);
INSERT INTO V_VAL
	VALUES (744,
	0,
	0,
	7,
	33,
	39,
	0,
	0,
	0,
	0,
	116,
	737);
INSERT INTO V_IRF
	VALUES (744,
	736);
INSERT INTO V_VAR
	VALUES (743,
	737,
	'display',
	1,
	116);
INSERT INTO V_INT
	VALUES (743,
	0,
	747);
INSERT INTO SPR_PEP
	VALUES (749,
	648,
	698);
INSERT INTO SPR_PO
	VALUES (749,
	'setTargetPressed',
	'',
	'// If a goal is currently executing, advance to the next one,
//   otherwise start the first specified goal, if it exists.
Goal::nextGoal();',
	1);
INSERT INTO ACT_POB
	VALUES (750,
	749);
INSERT INTO ACT_ACT
	VALUES (750,
	'interface operation',
	0,
	751,
	0,
	0,
	'Tracking::Tracking::setTargetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (751,
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
	750,
	0);
INSERT INTO ACT_SMT
	VALUES (752,
	751,
	0,
	3,
	1,
	'Tracking::Tracking::setTargetPressed line: 3');
INSERT INTO ACT_TFM
	VALUES (752,
	753,
	0,
	3,
	7,
	3,
	1);
INSERT INTO SPR_PEP
	VALUES (754,
	649,
	698);
INSERT INTO SPR_PO
	VALUES (754,
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
	VALUES (755,
	754);
INSERT INTO ACT_ACT
	VALUES (755,
	'interface operation',
	0,
	756,
	0,
	0,
	'Tracking::Tracking::startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (756,
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
	755,
	0);
INSERT INTO ACT_SMT
	VALUES (757,
	756,
	758,
	4,
	1,
	'Tracking::Tracking::startStopPressed line: 4');
INSERT INTO ACT_TFM
	VALUES (757,
	759,
	0,
	4,
	17,
	4,
	1);
INSERT INTO ACT_SMT
	VALUES (758,
	756,
	760,
	7,
	1,
	'Tracking::Tracking::startStopPressed line: 7');
INSERT INTO ACT_FIO
	VALUES (758,
	761,
	1,
	'any',
	719,
	7,
	43);
INSERT INTO ACT_SMT
	VALUES (760,
	756,
	0,
	8,
	1,
	'Tracking::Tracking::startStopPressed line: 8');
INSERT INTO E_ESS
	VALUES (760,
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
	VALUES (760);
INSERT INTO E_GSME
	VALUES (760,
	762);
INSERT INTO E_GEN
	VALUES (760,
	761);
INSERT INTO V_VAR
	VALUES (761,
	756,
	'workoutTimer',
	1,
	116);
INSERT INTO V_INT
	VALUES (761,
	0,
	719);
INSERT INTO SPR_PEP
	VALUES (763,
	650,
	698);
INSERT INTO SPR_PO
	VALUES (763,
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
	VALUES (764,
	763);
INSERT INTO ACT_ACT
	VALUES (764,
	'interface operation',
	0,
	765,
	0,
	0,
	'Tracking::Tracking::newGoalSpec',
	0);
INSERT INTO ACT_BLK
	VALUES (765,
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
	764,
	0);
INSERT INTO ACT_SMT
	VALUES (766,
	765,
	767,
	3,
	1,
	'Tracking::Tracking::newGoalSpec line: 3');
INSERT INTO ACT_FIO
	VALUES (766,
	768,
	1,
	'any',
	705,
	3,
	38);
INSERT INTO ACT_SMT
	VALUES (767,
	765,
	0,
	4,
	1,
	'Tracking::Tracking::newGoalSpec line: 4');
INSERT INTO ACT_IF
	VALUES (767,
	769,
	770,
	0,
	0);
INSERT INTO V_VAL
	VALUES (771,
	0,
	0,
	4,
	16,
	22,
	0,
	0,
	0,
	0,
	116,
	765);
INSERT INTO V_IRF
	VALUES (771,
	768);
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
	119,
	765);
INSERT INTO V_UNY
	VALUES (772,
	771,
	'empty');
INSERT INTO V_VAL
	VALUES (770,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	765);
INSERT INTO V_UNY
	VALUES (770,
	772,
	'not');
INSERT INTO V_VAR
	VALUES (768,
	765,
	'session',
	1,
	116);
INSERT INTO V_INT
	VALUES (768,
	0,
	705);
INSERT INTO ACT_BLK
	VALUES (769,
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
	764,
	0);
INSERT INTO ACT_SMT
	VALUES (773,
	769,
	774,
	5,
	3,
	'Tracking::Tracking::newGoalSpec line: 5');
INSERT INTO ACT_CR
	VALUES (773,
	775,
	1,
	776,
	5,
	38);
INSERT INTO ACT_SMT
	VALUES (774,
	769,
	777,
	6,
	3,
	'Tracking::Tracking::newGoalSpec line: 6');
INSERT INTO ACT_AI
	VALUES (774,
	778,
	779,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (777,
	769,
	780,
	7,
	3,
	'Tracking::Tracking::newGoalSpec line: 7');
INSERT INTO ACT_AI
	VALUES (777,
	781,
	782,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (780,
	769,
	783,
	8,
	3,
	'Tracking::Tracking::newGoalSpec line: 8');
INSERT INTO ACT_AI
	VALUES (780,
	784,
	785,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (783,
	769,
	786,
	9,
	3,
	'Tracking::Tracking::newGoalSpec line: 9');
INSERT INTO ACT_AI
	VALUES (783,
	787,
	788,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (786,
	769,
	789,
	10,
	3,
	'Tracking::Tracking::newGoalSpec line: 10');
INSERT INTO ACT_AI
	VALUES (786,
	790,
	791,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (789,
	769,
	792,
	11,
	3,
	'Tracking::Tracking::newGoalSpec line: 11');
INSERT INTO ACT_AI
	VALUES (789,
	793,
	794,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (792,
	769,
	0,
	12,
	3,
	'Tracking::Tracking::newGoalSpec line: 12');
INSERT INTO ACT_REL
	VALUES (792,
	775,
	768,
	'''included in''',
	795,
	12,
	37,
	12,
	41);
INSERT INTO V_VAL
	VALUES (796,
	1,
	0,
	6,
	3,
	10,
	0,
	0,
	0,
	0,
	116,
	769);
INSERT INTO V_IRF
	VALUES (796,
	775);
INSERT INTO V_VAL
	VALUES (779,
	1,
	0,
	6,
	12,
	25,
	0,
	0,
	0,
	0,
	14,
	769);
INSERT INTO V_AVL
	VALUES (779,
	796,
	776,
	797);
INSERT INTO V_VAL
	VALUES (778,
	0,
	0,
	6,
	35,
	48,
	0,
	0,
	0,
	0,
	14,
	769);
INSERT INTO V_PVL
	VALUES (778,
	0,
	0,
	0,
	651);
INSERT INTO V_VAL
	VALUES (798,
	1,
	0,
	7,
	3,
	10,
	0,
	0,
	0,
	0,
	116,
	769);
INSERT INTO V_IRF
	VALUES (798,
	775);
INSERT INTO V_VAL
	VALUES (782,
	1,
	0,
	7,
	12,
	18,
	0,
	0,
	0,
	0,
	23,
	769);
INSERT INTO V_AVL
	VALUES (782,
	798,
	776,
	799);
INSERT INTO V_VAL
	VALUES (781,
	0,
	0,
	7,
	28,
	34,
	0,
	0,
	0,
	0,
	23,
	769);
INSERT INTO V_PVL
	VALUES (781,
	0,
	0,
	0,
	652);
INSERT INTO V_VAL
	VALUES (800,
	1,
	0,
	8,
	3,
	10,
	0,
	0,
	0,
	0,
	116,
	769);
INSERT INTO V_IRF
	VALUES (800,
	775);
INSERT INTO V_VAL
	VALUES (785,
	1,
	0,
	8,
	12,
	18,
	0,
	0,
	0,
	0,
	23,
	769);
INSERT INTO V_AVL
	VALUES (785,
	800,
	776,
	801);
INSERT INTO V_VAL
	VALUES (784,
	0,
	0,
	8,
	28,
	34,
	0,
	0,
	0,
	0,
	23,
	769);
INSERT INTO V_PVL
	VALUES (784,
	0,
	0,
	0,
	653);
INSERT INTO V_VAL
	VALUES (802,
	1,
	0,
	9,
	3,
	10,
	0,
	0,
	0,
	0,
	116,
	769);
INSERT INTO V_IRF
	VALUES (802,
	775);
INSERT INTO V_VAL
	VALUES (788,
	1,
	0,
	9,
	12,
	15,
	0,
	0,
	0,
	0,
	23,
	769);
INSERT INTO V_AVL
	VALUES (788,
	802,
	776,
	803);
INSERT INTO V_VAL
	VALUES (787,
	0,
	0,
	9,
	25,
	28,
	0,
	0,
	0,
	0,
	23,
	769);
INSERT INTO V_PVL
	VALUES (787,
	0,
	0,
	0,
	654);
INSERT INTO V_VAL
	VALUES (804,
	1,
	0,
	10,
	3,
	10,
	0,
	0,
	0,
	0,
	116,
	769);
INSERT INTO V_IRF
	VALUES (804,
	775);
INSERT INTO V_VAL
	VALUES (791,
	1,
	0,
	10,
	12,
	23,
	0,
	0,
	0,
	0,
	59,
	769);
INSERT INTO V_AVL
	VALUES (791,
	804,
	776,
	805);
INSERT INTO V_VAL
	VALUES (790,
	0,
	0,
	10,
	33,
	44,
	0,
	0,
	0,
	0,
	59,
	769);
INSERT INTO V_PVL
	VALUES (790,
	0,
	0,
	0,
	655);
INSERT INTO V_VAL
	VALUES (806,
	1,
	0,
	11,
	3,
	10,
	0,
	0,
	0,
	0,
	116,
	769);
INSERT INTO V_IRF
	VALUES (806,
	775);
INSERT INTO V_VAL
	VALUES (794,
	1,
	0,
	11,
	12,
	19,
	0,
	0,
	0,
	0,
	62,
	769);
INSERT INTO V_AVL
	VALUES (794,
	806,
	776,
	807);
INSERT INTO V_VAL
	VALUES (793,
	0,
	0,
	11,
	29,
	36,
	0,
	0,
	0,
	0,
	62,
	769);
INSERT INTO V_PVL
	VALUES (793,
	0,
	0,
	0,
	656);
INSERT INTO V_VAR
	VALUES (775,
	769,
	'goalSpec',
	1,
	116);
INSERT INTO V_INT
	VALUES (775,
	0,
	776);
INSERT INTO SPR_PEP
	VALUES (808,
	657,
	698);
INSERT INTO SPR_PO
	VALUES (808,
	'lightPressed',
	'',
	'',
	1);
INSERT INTO ACT_POB
	VALUES (809,
	808);
INSERT INTO ACT_ACT
	VALUES (809,
	'interface operation',
	0,
	810,
	0,
	0,
	'Tracking::Tracking::lightPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (810,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	809,
	0);
INSERT INTO PE_PE
	VALUES (811,
	1,
	0,
	658,
	7);
INSERT INTO EP_PKG
	VALUES (811,
	0,
	611,
	'Tracking',
	'',
	0);
INSERT INTO PE_PE
	VALUES (812,
	1,
	811,
	0,
	9);
INSERT INTO R_REL
	VALUES (812,
	1,
	'Indicates the first track point for a track log.  In
other words, this is the first recorded location in 
a chronological series of track points that make up
a track log.
Established when the first track point is recorded and 
exists for the lifetime of the track log.',
	0);
INSERT INTO R_SIMP
	VALUES (812);
INSERT INTO R_PART
	VALUES (813,
	812,
	814,
	0,
	1,
	'is start of');
INSERT INTO R_RTO
	VALUES (813,
	812,
	814,
	-1);
INSERT INTO R_OIR
	VALUES (813,
	812,
	814,
	0);
INSERT INTO R_PART
	VALUES (815,
	812,
	816,
	0,
	1,
	'has first');
INSERT INTO R_RTO
	VALUES (815,
	812,
	816,
	-1);
INSERT INTO R_OIR
	VALUES (815,
	812,
	816,
	0);
INSERT INTO PE_PE
	VALUES (817,
	1,
	811,
	0,
	9);
INSERT INTO R_REL
	VALUES (817,
	2,
	'Chronologically sequences the track points in a track log.
Established each time a new track point is recorded and 
exists for the lifetime of the track log.',
	0);
INSERT INTO R_SIMP
	VALUES (817);
INSERT INTO R_PART
	VALUES (815,
	817,
	818,
	0,
	1,
	'preceeds');
INSERT INTO R_RTO
	VALUES (815,
	817,
	818,
	-1);
INSERT INTO R_OIR
	VALUES (815,
	817,
	818,
	0);
INSERT INTO R_PART
	VALUES (815,
	817,
	819,
	0,
	1,
	'follows');
INSERT INTO R_RTO
	VALUES (815,
	817,
	819,
	-1);
INSERT INTO R_OIR
	VALUES (815,
	817,
	819,
	0);
INSERT INTO PE_PE
	VALUES (820,
	1,
	811,
	0,
	9);
INSERT INTO R_REL
	VALUES (820,
	3,
	'Represents the most recently recorded track point
in a track log.  
Established each time a new track point is recorded and
removed from the previously recorded track point at the same time.',
	0);
INSERT INTO R_SIMP
	VALUES (820);
INSERT INTO R_PART
	VALUES (815,
	820,
	821,
	0,
	1,
	'has last');
INSERT INTO R_RTO
	VALUES (815,
	820,
	821,
	-1);
INSERT INTO R_OIR
	VALUES (815,
	820,
	821,
	0);
INSERT INTO R_PART
	VALUES (813,
	820,
	822,
	0,
	1,
	'is last for');
INSERT INTO R_RTO
	VALUES (813,
	820,
	822,
	-1);
INSERT INTO R_OIR
	VALUES (813,
	820,
	822,
	0);
INSERT INTO PE_PE
	VALUES (823,
	1,
	811,
	0,
	9);
INSERT INTO R_REL
	VALUES (823,
	5,
	'Established when a lap marker is created and exists
for the lifetime of the track log.',
	0);
INSERT INTO R_SIMP
	VALUES (823);
INSERT INTO R_PART
	VALUES (824,
	823,
	825,
	1,
	1,
	'has laps defined by');
INSERT INTO R_RTO
	VALUES (824,
	823,
	825,
	-1);
INSERT INTO R_OIR
	VALUES (824,
	823,
	825,
	0);
INSERT INTO R_PART
	VALUES (813,
	823,
	826,
	0,
	0,
	'marks end of lap in');
INSERT INTO R_RTO
	VALUES (813,
	823,
	826,
	-1);
INSERT INTO R_OIR
	VALUES (813,
	823,
	826,
	0);
INSERT INTO PE_PE
	VALUES (746,
	1,
	811,
	0,
	9);
INSERT INTO R_REL
	VALUES (746,
	7,
	'Established when a workout session is created and 
exists for the duration of the session.',
	0);
INSERT INTO R_SIMP
	VALUES (746);
INSERT INTO R_PART
	VALUES (705,
	746,
	827,
	0,
	0,
	'indicates current status of');
INSERT INTO R_RTO
	VALUES (705,
	746,
	827,
	-1);
INSERT INTO R_OIR
	VALUES (705,
	746,
	827,
	0);
INSERT INTO R_PART
	VALUES (747,
	746,
	828,
	0,
	0,
	'current status indicated on');
INSERT INTO R_RTO
	VALUES (747,
	746,
	828,
	-1);
INSERT INTO R_OIR
	VALUES (747,
	746,
	828,
	0);
INSERT INTO PE_PE
	VALUES (829,
	1,
	811,
	0,
	9);
INSERT INTO R_REL
	VALUES (829,
	8,
	'Established when a workout session is created and exists for the duration
of the session.',
	0);
INSERT INTO R_SIMP
	VALUES (829);
INSERT INTO R_PART
	VALUES (705,
	829,
	830,
	0,
	0,
	'acts as the stopwatch for');
INSERT INTO R_RTO
	VALUES (705,
	829,
	830,
	-1);
INSERT INTO R_OIR
	VALUES (705,
	829,
	830,
	0);
INSERT INTO R_PART
	VALUES (719,
	829,
	831,
	0,
	0,
	'is timed by');
INSERT INTO R_RTO
	VALUES (719,
	829,
	831,
	-1);
INSERT INTO R_OIR
	VALUES (719,
	829,
	831,
	0);
INSERT INTO PE_PE
	VALUES (832,
	1,
	811,
	0,
	9);
INSERT INTO R_REL
	VALUES (832,
	4,
	'Established when a workout session is created and
exists for the duration of the session.',
	0);
INSERT INTO R_SIMP
	VALUES (832);
INSERT INTO R_PART
	VALUES (705,
	832,
	833,
	0,
	0,
	'represents path for');
INSERT INTO R_RTO
	VALUES (705,
	832,
	833,
	-1);
INSERT INTO R_OIR
	VALUES (705,
	832,
	833,
	0);
INSERT INTO R_PART
	VALUES (813,
	832,
	834,
	0,
	0,
	'captures path in');
INSERT INTO R_RTO
	VALUES (813,
	832,
	834,
	-1);
INSERT INTO R_OIR
	VALUES (813,
	832,
	834,
	0);
INSERT INTO PE_PE
	VALUES (835,
	1,
	811,
	0,
	9);
INSERT INTO R_REL
	VALUES (835,
	6,
	'Established when a heart rate sample is created and exists for
the duration of the workout session.',
	0);
INSERT INTO R_SIMP
	VALUES (835);
INSERT INTO R_PART
	VALUES (836,
	835,
	837,
	1,
	1,
	'tracks heart rate over time as');
INSERT INTO R_RTO
	VALUES (836,
	835,
	837,
	-1);
INSERT INTO R_OIR
	VALUES (836,
	835,
	837,
	0);
INSERT INTO R_PART
	VALUES (705,
	835,
	838,
	0,
	0,
	'was collected during');
INSERT INTO R_RTO
	VALUES (705,
	835,
	838,
	-1);
INSERT INTO R_OIR
	VALUES (705,
	835,
	838,
	0);
INSERT INTO PE_PE
	VALUES (839,
	1,
	811,
	0,
	9);
INSERT INTO R_REL
	VALUES (839,
	9,
	'Established when goal execution begins and removed when it ends.',
	0);
INSERT INTO R_SIMP
	VALUES (839);
INSERT INTO R_PART
	VALUES (776,
	839,
	840,
	0,
	0,
	'specified by');
INSERT INTO R_RTO
	VALUES (776,
	839,
	840,
	-1);
INSERT INTO R_OIR
	VALUES (776,
	839,
	840,
	0);
INSERT INTO R_PART
	VALUES (841,
	839,
	842,
	1,
	1,
	'specifies');
INSERT INTO R_RTO
	VALUES (841,
	839,
	842,
	-1);
INSERT INTO R_OIR
	VALUES (841,
	839,
	842,
	0);
INSERT INTO PE_PE
	VALUES (795,
	1,
	811,
	0,
	9);
INSERT INTO R_REL
	VALUES (795,
	10,
	'Established when a goal specification is created and exists 
for the duration of a workout session.',
	0);
INSERT INTO R_SIMP
	VALUES (795);
INSERT INTO R_PART
	VALUES (705,
	795,
	843,
	0,
	0,
	'included in');
INSERT INTO R_RTO
	VALUES (705,
	795,
	843,
	-1);
INSERT INTO R_OIR
	VALUES (705,
	795,
	843,
	0);
INSERT INTO R_PART
	VALUES (776,
	795,
	844,
	1,
	1,
	'includes');
INSERT INTO R_RTO
	VALUES (776,
	795,
	844,
	-1);
INSERT INTO R_OIR
	VALUES (776,
	795,
	844,
	0);
INSERT INTO PE_PE
	VALUES (845,
	1,
	811,
	0,
	9);
INSERT INTO R_REL
	VALUES (845,
	11,
	'Established when a goal begins executing and removed when it ends.',
	0);
INSERT INTO R_SIMP
	VALUES (845);
INSERT INTO R_PART
	VALUES (705,
	845,
	846,
	0,
	1,
	'is currently executing within');
INSERT INTO R_RTO
	VALUES (705,
	845,
	846,
	-1);
INSERT INTO R_OIR
	VALUES (705,
	845,
	846,
	0);
INSERT INTO R_PART
	VALUES (841,
	845,
	847,
	0,
	1,
	'is currently executing');
INSERT INTO R_RTO
	VALUES (841,
	845,
	847,
	-1);
INSERT INTO R_OIR
	VALUES (841,
	845,
	847,
	0);
INSERT INTO PE_PE
	VALUES (848,
	1,
	811,
	0,
	9);
INSERT INTO R_REL
	VALUES (848,
	12,
	'Established when an achievement period begins and exists for 
the duration of the associated workout session.',
	0);
INSERT INTO R_SIMP
	VALUES (848);
INSERT INTO R_PART
	VALUES (841,
	848,
	849,
	0,
	0,
	'specifies achievement of');
INSERT INTO R_RTO
	VALUES (841,
	848,
	849,
	-1);
INSERT INTO R_OIR
	VALUES (841,
	848,
	849,
	0);
INSERT INTO R_PART
	VALUES (850,
	848,
	851,
	1,
	1,
	'has recorded');
INSERT INTO R_RTO
	VALUES (850,
	848,
	851,
	-1);
INSERT INTO R_OIR
	VALUES (850,
	848,
	851,
	0);
INSERT INTO PE_PE
	VALUES (852,
	1,
	811,
	0,
	9);
INSERT INTO R_REL
	VALUES (852,
	13,
	'Established when a goal completes execution and exists for the 
duration of the associated workout session.',
	0);
INSERT INTO R_SIMP
	VALUES (852);
INSERT INTO R_PART
	VALUES (841,
	852,
	853,
	1,
	1,
	'has executed');
INSERT INTO R_RTO
	VALUES (841,
	852,
	853,
	-1);
INSERT INTO R_OIR
	VALUES (841,
	852,
	853,
	0);
INSERT INTO R_PART
	VALUES (705,
	852,
	854,
	0,
	0,
	'was executed within');
INSERT INTO R_RTO
	VALUES (705,
	852,
	854,
	-1);
INSERT INTO R_OIR
	VALUES (705,
	852,
	854,
	0);
INSERT INTO PE_PE
	VALUES (855,
	1,
	811,
	0,
	9);
INSERT INTO R_REL
	VALUES (855,
	14,
	'Represents an open achievement record, one for which a start time has been recorded
but no end time has yet been recorded.  In other words, this association exists only
while the currently executing goal is being achieved.',
	0);
INSERT INTO R_SIMP
	VALUES (855);
INSERT INTO R_PART
	VALUES (841,
	855,
	856,
	0,
	1,
	'is open for');
INSERT INTO R_RTO
	VALUES (841,
	855,
	856,
	-1);
INSERT INTO R_OIR
	VALUES (841,
	855,
	856,
	0);
INSERT INTO R_PART
	VALUES (850,
	855,
	857,
	0,
	1,
	'has open');
INSERT INTO R_RTO
	VALUES (850,
	855,
	857,
	-1);
INSERT INTO R_OIR
	VALUES (850,
	855,
	857,
	0);
INSERT INTO PE_PE
	VALUES (858,
	1,
	811,
	0,
	5);
INSERT INTO S_EE
	VALUES (858,
	'Logging',
	'',
	'LOG',
	0,
	'',
	'Logging',
	1);
INSERT INTO S_BRG
	VALUES (859,
	858,
	'LogSuccess',
	'',
	0,
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (860,
	859,
	'message',
	149,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (861,
	859);
INSERT INTO ACT_ACT
	VALUES (861,
	'bridge',
	0,
	862,
	0,
	0,
	'Logging::LogSuccess',
	0);
INSERT INTO ACT_BLK
	VALUES (862,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	861,
	0);
INSERT INTO S_BRG
	VALUES (729,
	858,
	'LogFailure',
	'',
	0,
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (863,
	729,
	'message',
	149,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (864,
	729);
INSERT INTO ACT_ACT
	VALUES (864,
	'bridge',
	0,
	865,
	0,
	0,
	'Logging::LogFailure',
	0);
INSERT INTO ACT_BLK
	VALUES (865,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	864,
	0);
INSERT INTO S_BRG
	VALUES (866,
	858,
	'LogInfo',
	'',
	0,
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (867,
	866,
	'message',
	149,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (868,
	866);
INSERT INTO ACT_ACT
	VALUES (868,
	'bridge',
	0,
	869,
	0,
	0,
	'Logging::LogInfo',
	0);
INSERT INTO ACT_BLK
	VALUES (869,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	868,
	0);
INSERT INTO S_BRG
	VALUES (870,
	858,
	'LogDate',
	'',
	0,
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (871,
	870,
	'd',
	260,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (872,
	870,
	'message',
	149,
	0,
	'',
	871,
	'');
INSERT INTO ACT_BRB
	VALUES (873,
	870);
INSERT INTO ACT_ACT
	VALUES (873,
	'bridge',
	0,
	874,
	0,
	0,
	'Logging::LogDate',
	0);
INSERT INTO ACT_BLK
	VALUES (874,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	873,
	0);
INSERT INTO S_BRG
	VALUES (875,
	858,
	'LogTime',
	'',
	0,
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (876,
	875,
	't',
	297,
	0,
	'',
	877,
	'');
INSERT INTO S_BPARM
	VALUES (877,
	875,
	'message',
	149,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (878,
	875);
INSERT INTO ACT_ACT
	VALUES (878,
	'bridge',
	0,
	879,
	0,
	0,
	'Logging::LogTime',
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
INSERT INTO S_BRG
	VALUES (880,
	858,
	'LogReal',
	'',
	0,
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (881,
	880,
	'r',
	23,
	0,
	'',
	882,
	'');
INSERT INTO S_BPARM
	VALUES (882,
	880,
	'message',
	149,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (883,
	880);
INSERT INTO ACT_ACT
	VALUES (883,
	'bridge',
	0,
	884,
	0,
	0,
	'Logging::LogReal',
	0);
INSERT INTO ACT_BLK
	VALUES (884,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	883,
	0);
INSERT INTO S_BRG
	VALUES (885,
	858,
	'LogInteger',
	'',
	0,
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (886,
	885,
	'message',
	14,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (887,
	885);
INSERT INTO ACT_ACT
	VALUES (887,
	'bridge',
	0,
	888,
	0,
	0,
	'Logging::LogInteger',
	0);
INSERT INTO ACT_BLK
	VALUES (888,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	887,
	0);
INSERT INTO PE_PE
	VALUES (889,
	1,
	811,
	0,
	5);
INSERT INTO S_EE
	VALUES (889,
	'Time',
	'The Time external entity provides date, timestamp, and timer related operations.',
	'TIM',
	0,
	'',
	'Time',
	1);
INSERT INTO S_BRG
	VALUES (890,
	889,
	'current_date',
	'',
	1,
	260,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (891,
	890);
INSERT INTO ACT_ACT
	VALUES (891,
	'bridge',
	0,
	892,
	0,
	0,
	'Time::current_date',
	0);
INSERT INTO ACT_BLK
	VALUES (892,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	891,
	0);
INSERT INTO S_BRG
	VALUES (893,
	889,
	'create_date',
	'',
	1,
	260,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (894,
	893,
	'second',
	14,
	0,
	'',
	895,
	'');
INSERT INTO S_BPARM
	VALUES (896,
	893,
	'minute',
	14,
	0,
	'',
	897,
	'');
INSERT INTO S_BPARM
	VALUES (897,
	893,
	'hour',
	14,
	0,
	'',
	898,
	'');
INSERT INTO S_BPARM
	VALUES (898,
	893,
	'day',
	14,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (895,
	893,
	'month',
	14,
	0,
	'',
	896,
	'');
INSERT INTO S_BPARM
	VALUES (899,
	893,
	'year',
	14,
	0,
	'',
	894,
	'');
INSERT INTO ACT_BRB
	VALUES (900,
	893);
INSERT INTO ACT_ACT
	VALUES (900,
	'bridge',
	0,
	901,
	0,
	0,
	'Time::create_date',
	0);
INSERT INTO ACT_BLK
	VALUES (901,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	900,
	0);
INSERT INTO S_BRG
	VALUES (902,
	889,
	'get_second',
	'',
	1,
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (903,
	902,
	'date',
	260,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (904,
	902);
INSERT INTO ACT_ACT
	VALUES (904,
	'bridge',
	0,
	905,
	0,
	0,
	'Time::get_second',
	0);
INSERT INTO ACT_BLK
	VALUES (905,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	904,
	0);
INSERT INTO S_BRG
	VALUES (906,
	889,
	'get_minute',
	'',
	1,
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (907,
	906,
	'date',
	260,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (908,
	906);
INSERT INTO ACT_ACT
	VALUES (908,
	'bridge',
	0,
	909,
	0,
	0,
	'Time::get_minute',
	0);
INSERT INTO ACT_BLK
	VALUES (909,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	908,
	0);
INSERT INTO S_BRG
	VALUES (910,
	889,
	'get_hour',
	'',
	1,
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (911,
	910,
	'date',
	260,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (912,
	910);
INSERT INTO ACT_ACT
	VALUES (912,
	'bridge',
	0,
	913,
	0,
	0,
	'Time::get_hour',
	0);
INSERT INTO ACT_BLK
	VALUES (913,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	912,
	0);
INSERT INTO S_BRG
	VALUES (914,
	889,
	'get_day',
	'',
	1,
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (915,
	914,
	'date',
	260,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (916,
	914);
INSERT INTO ACT_ACT
	VALUES (916,
	'bridge',
	0,
	917,
	0,
	0,
	'Time::get_day',
	0);
INSERT INTO ACT_BLK
	VALUES (917,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	916,
	0);
INSERT INTO S_BRG
	VALUES (918,
	889,
	'get_month',
	'',
	1,
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (919,
	918,
	'date',
	260,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (920,
	918);
INSERT INTO ACT_ACT
	VALUES (920,
	'bridge',
	0,
	921,
	0,
	0,
	'Time::get_month',
	0);
INSERT INTO ACT_BLK
	VALUES (921,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	920,
	0);
INSERT INTO S_BRG
	VALUES (922,
	889,
	'get_year',
	'',
	1,
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (923,
	922,
	'date',
	260,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (924,
	922);
INSERT INTO ACT_ACT
	VALUES (924,
	'bridge',
	0,
	925,
	0,
	0,
	'Time::get_year',
	0);
INSERT INTO ACT_BLK
	VALUES (925,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	924,
	0);
INSERT INTO S_BRG
	VALUES (926,
	889,
	'current_clock',
	'',
	1,
	297,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (927,
	926);
INSERT INTO ACT_ACT
	VALUES (927,
	'bridge',
	0,
	928,
	0,
	0,
	'Time::current_clock',
	0);
INSERT INTO ACT_BLK
	VALUES (928,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	927,
	0);
INSERT INTO S_BRG
	VALUES (929,
	889,
	'timer_start',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Returns the instance
handle of the timer.',
	1,
	134,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (930,
	929,
	'microseconds',
	14,
	0,
	'',
	931,
	'');
INSERT INTO S_BPARM
	VALUES (931,
	929,
	'event_inst',
	138,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (932,
	929);
INSERT INTO ACT_ACT
	VALUES (932,
	'bridge',
	0,
	933,
	0,
	0,
	'Time::timer_start',
	0);
INSERT INTO ACT_BLK
	VALUES (933,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	932,
	0);
INSERT INTO S_BRG
	VALUES (934,
	889,
	'timer_start_recurring',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Upon expiration, the
timer will be restarted and fire again in the specified number of microseconds
generating the passed event. This bridge operation returns the instance handle
of the timer.',
	1,
	134,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (935,
	934,
	'microseconds',
	14,
	0,
	'',
	936,
	'');
INSERT INTO S_BPARM
	VALUES (936,
	934,
	'event_inst',
	138,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (937,
	934);
INSERT INTO ACT_ACT
	VALUES (937,
	'bridge',
	0,
	938,
	0,
	0,
	'Time::timer_start_recurring',
	0);
INSERT INTO ACT_BLK
	VALUES (938,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	937,
	0);
INSERT INTO S_BRG
	VALUES (939,
	889,
	'timer_remaining_time',
	'Returns the time remaining (in microseconds) for the passed timer instance. If
the timer has expired, a zero value is returned.',
	1,
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (940,
	939,
	'timer_inst_ref',
	134,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (941,
	939);
INSERT INTO ACT_ACT
	VALUES (941,
	'bridge',
	0,
	942,
	0,
	0,
	'Time::timer_remaining_time',
	0);
INSERT INTO ACT_BLK
	VALUES (942,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	941,
	0);
INSERT INTO S_BRG
	VALUES (943,
	889,
	'timer_reset_time',
	'This bridge operation attempts to set the passed existing timer to expire in
the specified number of microseconds. If the timer exists (that is, it has not
expired), a TRUE value is returned. If the timer no longer exists, a FALSE value
is returned.',
	1,
	119,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (944,
	943,
	'timer_inst_ref',
	134,
	0,
	'',
	945,
	'');
INSERT INTO S_BPARM
	VALUES (945,
	943,
	'microseconds',
	14,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (946,
	943);
INSERT INTO ACT_ACT
	VALUES (946,
	'bridge',
	0,
	947,
	0,
	0,
	'Time::timer_reset_time',
	0);
INSERT INTO ACT_BLK
	VALUES (947,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	946,
	0);
INSERT INTO S_BRG
	VALUES (948,
	889,
	'timer_add_time',
	'This bridge operation attempts to add the specified number of microseconds to a
passed existing timer. If the timer exists (that is, it has not expired), a TRUE
value is returned. If the timer no longer exists, a FALSE value is returned.',
	1,
	119,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (949,
	948,
	'timer_inst_ref',
	134,
	0,
	'',
	950,
	'');
INSERT INTO S_BPARM
	VALUES (950,
	948,
	'microseconds',
	14,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (951,
	948);
INSERT INTO ACT_ACT
	VALUES (951,
	'bridge',
	0,
	952,
	0,
	0,
	'Time::timer_add_time',
	0);
INSERT INTO ACT_BLK
	VALUES (952,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	951,
	0);
INSERT INTO S_BRG
	VALUES (953,
	889,
	'timer_cancel',
	'This bridge operation cancels and deletes the passed timer instance. If the 
timer exists (that is, it had not expired), a TRUE value is returned. If the
timer no longer exists, a FALSE value is returned.',
	1,
	119,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (954,
	953,
	'timer_inst_ref',
	134,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (955,
	953);
INSERT INTO ACT_ACT
	VALUES (955,
	'bridge',
	0,
	956,
	0,
	0,
	'Time::timer_cancel',
	0);
INSERT INTO ACT_BLK
	VALUES (956,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	955,
	0);
INSERT INTO PE_PE
	VALUES (957,
	1,
	811,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (957,
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
	94,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (958,
	957);
INSERT INTO ACT_ACT
	VALUES (958,
	'function',
	0,
	959,
	0,
	0,
	'GoalTest_1',
	0);
INSERT INTO ACT_BLK
	VALUES (959,
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
	958,
	0);
INSERT INTO ACT_SMT
	VALUES (960,
	959,
	961,
	2,
	1,
	'GoalTest_1 line: 2');
INSERT INTO ACT_FNC
	VALUES (960,
	962,
	2,
	3);
INSERT INTO ACT_SMT
	VALUES (961,
	959,
	963,
	5,
	1,
	'GoalTest_1 line: 5');
INSERT INTO ACT_IOP
	VALUES (961,
	5,
	10,
	5,
	6,
	0,
	686,
	0);
INSERT INTO ACT_SMT
	VALUES (963,
	959,
	964,
	13,
	1,
	'GoalTest_1 line: 13');
INSERT INTO ACT_IOP
	VALUES (963,
	13,
	10,
	13,
	6,
	0,
	686,
	0);
INSERT INTO ACT_SMT
	VALUES (964,
	959,
	965,
	21,
	1,
	'GoalTest_1 line: 21');
INSERT INTO ACT_IOP
	VALUES (964,
	21,
	10,
	21,
	6,
	0,
	686,
	0);
INSERT INTO ACT_SMT
	VALUES (965,
	959,
	0,
	29,
	1,
	'GoalTest_1 line: 29');
INSERT INTO ACT_IOP
	VALUES (965,
	29,
	10,
	29,
	6,
	0,
	686,
	0);
INSERT INTO V_VAL
	VALUES (966,
	0,
	0,
	6,
	19,
	19,
	0,
	0,
	0,
	0,
	14,
	959);
INSERT INTO V_LIN
	VALUES (966,
	'1');
INSERT INTO V_PAR
	VALUES (966,
	961,
	0,
	'sequenceNumber',
	967,
	6,
	3);
INSERT INTO V_VAL
	VALUES (967,
	0,
	0,
	7,
	12,
	14,
	0,
	0,
	0,
	0,
	23,
	959);
INSERT INTO V_LRL
	VALUES (967,
	'2.0');
INSERT INTO V_PAR
	VALUES (967,
	961,
	0,
	'minimum',
	968,
	7,
	3);
INSERT INTO V_VAL
	VALUES (968,
	0,
	0,
	8,
	12,
	14,
	0,
	0,
	0,
	0,
	23,
	959);
INSERT INTO V_LRL
	VALUES (968,
	'8.0');
INSERT INTO V_PAR
	VALUES (968,
	961,
	0,
	'maximum',
	969,
	8,
	3);
INSERT INTO V_VAL
	VALUES (969,
	0,
	0,
	9,
	9,
	13,
	0,
	0,
	0,
	0,
	23,
	959);
INSERT INTO V_LRL
	VALUES (969,
	'150.0');
INSERT INTO V_PAR
	VALUES (969,
	961,
	0,
	'span',
	970,
	9,
	3);
INSERT INTO V_VAL
	VALUES (970,
	0,
	0,
	10,
	31,
	34,
	0,
	0,
	0,
	0,
	59,
	959);
INSERT INTO V_LEN
	VALUES (970,
	401,
	10,
	17);
INSERT INTO V_PAR
	VALUES (970,
	961,
	0,
	'criteriaType',
	971,
	10,
	3);
INSERT INTO V_VAL
	VALUES (971,
	0,
	0,
	11,
	23,
	30,
	0,
	0,
	0,
	0,
	62,
	959);
INSERT INTO V_LEN
	VALUES (971,
	403,
	11,
	13);
INSERT INTO V_PAR
	VALUES (971,
	961,
	0,
	'spanType',
	0,
	11,
	3);
INSERT INTO V_VAL
	VALUES (972,
	0,
	0,
	14,
	19,
	19,
	0,
	0,
	0,
	0,
	14,
	959);
INSERT INTO V_LIN
	VALUES (972,
	'2');
INSERT INTO V_PAR
	VALUES (972,
	963,
	0,
	'sequenceNumber',
	973,
	14,
	3);
INSERT INTO V_VAL
	VALUES (973,
	0,
	0,
	15,
	12,
	15,
	0,
	0,
	0,
	0,
	23,
	959);
INSERT INTO V_LRL
	VALUES (973,
	'60.0');
INSERT INTO V_PAR
	VALUES (973,
	963,
	0,
	'minimum',
	974,
	15,
	3);
INSERT INTO V_VAL
	VALUES (974,
	0,
	0,
	16,
	12,
	15,
	0,
	0,
	0,
	0,
	23,
	959);
INSERT INTO V_LRL
	VALUES (974,
	'80.0');
INSERT INTO V_PAR
	VALUES (974,
	963,
	0,
	'maximum',
	975,
	16,
	3);
INSERT INTO V_VAL
	VALUES (975,
	0,
	0,
	17,
	9,
	10,
	0,
	0,
	0,
	0,
	14,
	959);
INSERT INTO V_LIN
	VALUES (975,
	'10');
INSERT INTO V_PAR
	VALUES (975,
	963,
	0,
	'span',
	976,
	17,
	3);
INSERT INTO V_VAL
	VALUES (976,
	0,
	0,
	18,
	31,
	39,
	0,
	0,
	0,
	0,
	59,
	959);
INSERT INTO V_LEN
	VALUES (976,
	409,
	18,
	17);
INSERT INTO V_PAR
	VALUES (976,
	963,
	0,
	'criteriaType',
	977,
	18,
	3);
INSERT INTO V_VAL
	VALUES (977,
	0,
	0,
	19,
	23,
	26,
	0,
	0,
	0,
	0,
	62,
	959);
INSERT INTO V_LEN
	VALUES (977,
	411,
	19,
	13);
INSERT INTO V_PAR
	VALUES (977,
	963,
	0,
	'spanType',
	0,
	19,
	3);
INSERT INTO V_VAL
	VALUES (978,
	0,
	0,
	22,
	19,
	19,
	0,
	0,
	0,
	0,
	14,
	959);
INSERT INTO V_LIN
	VALUES (978,
	'3');
INSERT INTO V_PAR
	VALUES (978,
	964,
	0,
	'sequenceNumber',
	979,
	22,
	3);
INSERT INTO V_VAL
	VALUES (979,
	0,
	0,
	23,
	12,
	14,
	0,
	0,
	0,
	0,
	23,
	959);
INSERT INTO V_LRL
	VALUES (979,
	'5.0');
INSERT INTO V_PAR
	VALUES (979,
	964,
	0,
	'minimum',
	980,
	23,
	3);
INSERT INTO V_VAL
	VALUES (980,
	0,
	0,
	24,
	12,
	14,
	0,
	0,
	0,
	0,
	23,
	959);
INSERT INTO V_LRL
	VALUES (980,
	'6.0');
INSERT INTO V_PAR
	VALUES (980,
	964,
	0,
	'maximum',
	981,
	24,
	3);
INSERT INTO V_VAL
	VALUES (981,
	0,
	0,
	25,
	9,
	10,
	0,
	0,
	0,
	0,
	14,
	959);
INSERT INTO V_LIN
	VALUES (981,
	'15');
INSERT INTO V_PAR
	VALUES (981,
	964,
	0,
	'span',
	982,
	25,
	3);
INSERT INTO V_VAL
	VALUES (982,
	0,
	0,
	26,
	31,
	34,
	0,
	0,
	0,
	0,
	59,
	959);
INSERT INTO V_LEN
	VALUES (982,
	401,
	26,
	17);
INSERT INTO V_PAR
	VALUES (982,
	964,
	0,
	'criteriaType',
	983,
	26,
	3);
INSERT INTO V_VAL
	VALUES (983,
	0,
	0,
	27,
	23,
	26,
	0,
	0,
	0,
	0,
	62,
	959);
INSERT INTO V_LEN
	VALUES (983,
	411,
	27,
	13);
INSERT INTO V_PAR
	VALUES (983,
	964,
	0,
	'spanType',
	0,
	27,
	3);
INSERT INTO V_VAL
	VALUES (984,
	0,
	0,
	30,
	19,
	19,
	0,
	0,
	0,
	0,
	14,
	959);
INSERT INTO V_LIN
	VALUES (984,
	'4');
INSERT INTO V_PAR
	VALUES (984,
	965,
	0,
	'sequenceNumber',
	985,
	30,
	3);
INSERT INTO V_VAL
	VALUES (985,
	0,
	0,
	31,
	12,
	14,
	0,
	0,
	0,
	0,
	23,
	959);
INSERT INTO V_LRL
	VALUES (985,
	'1.0');
INSERT INTO V_PAR
	VALUES (985,
	965,
	0,
	'minimum',
	986,
	31,
	3);
INSERT INTO V_VAL
	VALUES (986,
	0,
	0,
	32,
	12,
	14,
	0,
	0,
	0,
	0,
	23,
	959);
INSERT INTO V_LRL
	VALUES (986,
	'2.0');
INSERT INTO V_PAR
	VALUES (986,
	965,
	0,
	'maximum',
	987,
	32,
	3);
INSERT INTO V_VAL
	VALUES (987,
	0,
	0,
	33,
	9,
	10,
	0,
	0,
	0,
	0,
	14,
	959);
INSERT INTO V_LIN
	VALUES (987,
	'15');
INSERT INTO V_PAR
	VALUES (987,
	965,
	0,
	'span',
	988,
	33,
	3);
INSERT INTO V_VAL
	VALUES (988,
	0,
	0,
	34,
	31,
	34,
	0,
	0,
	0,
	0,
	59,
	959);
INSERT INTO V_LEN
	VALUES (988,
	401,
	34,
	17);
INSERT INTO V_PAR
	VALUES (988,
	965,
	0,
	'criteriaType',
	989,
	34,
	3);
INSERT INTO V_VAL
	VALUES (989,
	0,
	0,
	35,
	23,
	26,
	0,
	0,
	0,
	0,
	62,
	959);
INSERT INTO V_LEN
	VALUES (989,
	411,
	35,
	13);
INSERT INTO V_PAR
	VALUES (989,
	965,
	0,
	'spanType',
	0,
	35,
	3);
INSERT INTO PE_PE
	VALUES (962,
	1,
	811,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (962,
	0,
	'Initialize',
	'',
	'// Create a workout session and everything required to support it.
WorkoutSession::sessioncreate();',
	94,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (990,
	962);
INSERT INTO ACT_ACT
	VALUES (990,
	'function',
	0,
	991,
	0,
	0,
	'Initialize',
	0);
INSERT INTO ACT_BLK
	VALUES (991,
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
	990,
	0);
INSERT INTO ACT_SMT
	VALUES (992,
	991,
	0,
	2,
	1,
	'Initialize line: 2');
INSERT INTO ACT_TFM
	VALUES (992,
	759,
	0,
	2,
	17,
	2,
	1);
INSERT INTO PE_PE
	VALUES (850,
	1,
	811,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (850,
	'Achievement',
	10,
	'Achievement',
	'Each instance represents one contiguous period of time during 
which a particular goal was being met (achieved).',
	0);
INSERT INTO O_TFR
	VALUES (993,
	850,
	'close',
	'',
	94,
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
	VALUES (994,
	993);
INSERT INTO ACT_ACT
	VALUES (994,
	'operation',
	0,
	995,
	0,
	0,
	'Achievement::close',
	0);
INSERT INTO ACT_BLK
	VALUES (995,
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
	994,
	0);
INSERT INTO ACT_SMT
	VALUES (996,
	995,
	997,
	3,
	1,
	'Achievement::close line: 3');
INSERT INTO ACT_SEL
	VALUES (996,
	998,
	1,
	'one',
	999);
INSERT INTO ACT_SR
	VALUES (996);
INSERT INTO ACT_LNK
	VALUES (1000,
	'''is open for''',
	996,
	855,
	0,
	2,
	841,
	3,
	34,
	3,
	39,
	3,
	43);
INSERT INTO ACT_SMT
	VALUES (997,
	995,
	1001,
	4,
	1,
	'Achievement::close line: 4');
INSERT INTO ACT_SEL
	VALUES (997,
	1002,
	1,
	'one',
	1003);
INSERT INTO ACT_SR
	VALUES (997);
INSERT INTO ACT_LNK
	VALUES (1004,
	'''is currently executing within''',
	997,
	845,
	1005,
	2,
	705,
	5,
	9,
	5,
	24,
	5,
	28);
INSERT INTO ACT_LNK
	VALUES (1005,
	'''is timed by''',
	0,
	829,
	0,
	2,
	719,
	5,
	62,
	5,
	75,
	5,
	78);
INSERT INTO ACT_SMT
	VALUES (1001,
	995,
	1006,
	6,
	3,
	'Achievement::close line: 6');
INSERT INTO ACT_AI
	VALUES (1001,
	1007,
	1008,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1006,
	995,
	1009,
	7,
	1,
	'Achievement::close line: 7');
INSERT INTO ACT_UNR
	VALUES (1006,
	1010,
	998,
	'''is open for''',
	855,
	7,
	32,
	7,
	36);
INSERT INTO ACT_SMT
	VALUES (1009,
	995,
	0,
	8,
	1,
	'Achievement::close line: 8');
INSERT INTO ACT_REL
	VALUES (1009,
	1010,
	998,
	'''specifies achievement of''',
	848,
	8,
	28,
	8,
	32);
INSERT INTO V_VAL
	VALUES (999,
	0,
	0,
	3,
	28,
	31,
	0,
	0,
	0,
	0,
	116,
	995);
INSERT INTO V_IRF
	VALUES (999,
	1010);
INSERT INTO V_VAL
	VALUES (1003,
	0,
	0,
	5,
	3,
	6,
	0,
	0,
	0,
	0,
	116,
	995);
INSERT INTO V_IRF
	VALUES (1003,
	998);
INSERT INTO V_VAL
	VALUES (1011,
	1,
	0,
	6,
	3,
	6,
	0,
	0,
	0,
	0,
	116,
	995);
INSERT INTO V_IRF
	VALUES (1011,
	1010);
INSERT INTO V_VAL
	VALUES (1008,
	1,
	0,
	6,
	8,
	14,
	0,
	0,
	0,
	0,
	14,
	995);
INSERT INTO V_AVL
	VALUES (1008,
	1011,
	850,
	1012);
INSERT INTO V_VAL
	VALUES (1013,
	0,
	0,
	6,
	18,
	29,
	0,
	0,
	0,
	0,
	116,
	995);
INSERT INTO V_IRF
	VALUES (1013,
	1002);
INSERT INTO V_VAL
	VALUES (1007,
	0,
	0,
	6,
	31,
	34,
	0,
	0,
	0,
	0,
	14,
	995);
INSERT INTO V_AVL
	VALUES (1007,
	1013,
	719,
	1014);
INSERT INTO V_VAR
	VALUES (998,
	995,
	'goal',
	1,
	116);
INSERT INTO V_INT
	VALUES (998,
	0,
	841);
INSERT INTO V_VAR
	VALUES (1010,
	995,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (1010,
	0,
	850);
INSERT INTO V_VAR
	VALUES (1002,
	995,
	'workoutTimer',
	1,
	116);
INSERT INTO V_INT
	VALUES (1002,
	0,
	719);
INSERT INTO O_NBATTR
	VALUES (1015,
	850);
INSERT INTO O_BATTR
	VALUES (1015,
	850);
INSERT INTO O_ATTR
	VALUES (1015,
	850,
	0,
	'startTime',
	'Starting time for this achievement, expressed as the number of seconds
since the beginning of the associated workout session.',
	'',
	'startTime',
	0,
	14,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1012,
	850);
INSERT INTO O_BATTR
	VALUES (1012,
	850);
INSERT INTO O_ATTR
	VALUES (1012,
	850,
	1015,
	'endTime',
	'Ending time for this achievement, expressed as the number of seconds
since the beginning of the associated workout session.',
	'',
	'endTime',
	0,
	14,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	850);
INSERT INTO O_ID
	VALUES (1,
	850);
INSERT INTO O_ID
	VALUES (2,
	850);
INSERT INTO PE_PE
	VALUES (747,
	1,
	811,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (747,
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
	VALUES (1016,
	747,
	'goalDispositionIndicator',
	'',
	42,
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
	VALUES (1017,
	1016);
INSERT INTO ACT_ACT
	VALUES (1017,
	'class operation',
	0,
	1018,
	0,
	0,
	'Display::goalDispositionIndicator',
	0);
INSERT INTO ACT_BLK
	VALUES (1018,
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
	1017,
	0);
INSERT INTO ACT_SMT
	VALUES (1019,
	1018,
	1020,
	7,
	1,
	'Display::goalDispositionIndicator line: 7');
INSERT INTO ACT_FIO
	VALUES (1019,
	1021,
	1,
	'any',
	705,
	7,
	38);
INSERT INTO ACT_SMT
	VALUES (1020,
	1018,
	1022,
	8,
	1,
	'Display::goalDispositionIndicator line: 8');
INSERT INTO ACT_SEL
	VALUES (1020,
	1023,
	1,
	'one',
	1024);
INSERT INTO ACT_SR
	VALUES (1020);
INSERT INTO ACT_LNK
	VALUES (1025,
	'''is currently executing''',
	1020,
	845,
	0,
	2,
	841,
	8,
	37,
	8,
	42,
	8,
	46);
INSERT INTO ACT_SMT
	VALUES (1022,
	1018,
	1026,
	12,
	1,
	'Display::goalDispositionIndicator line: 12');
INSERT INTO ACT_AI
	VALUES (1022,
	1027,
	1028,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1026,
	1018,
	1029,
	13,
	1,
	'Display::goalDispositionIndicator line: 13');
INSERT INTO ACT_IF
	VALUES (1026,
	1030,
	1031,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1029,
	1018,
	0,
	23,
	1,
	'Display::goalDispositionIndicator line: 23');
INSERT INTO ACT_RET
	VALUES (1029,
	1032);
INSERT INTO V_VAL
	VALUES (1024,
	0,
	0,
	8,
	28,
	34,
	0,
	0,
	0,
	0,
	116,
	1018);
INSERT INTO V_IRF
	VALUES (1024,
	1021);
INSERT INTO V_VAL
	VALUES (1028,
	1,
	1,
	12,
	1,
	9,
	0,
	0,
	0,
	0,
	42,
	1018);
INSERT INTO V_TVL
	VALUES (1028,
	1033);
INSERT INTO V_VAL
	VALUES (1027,
	0,
	0,
	12,
	24,
	28,
	0,
	0,
	0,
	0,
	42,
	1018);
INSERT INTO V_LEN
	VALUES (1027,
	572,
	12,
	13);
INSERT INTO V_VAL
	VALUES (1034,
	0,
	0,
	13,
	16,
	19,
	0,
	0,
	0,
	0,
	116,
	1018);
INSERT INTO V_IRF
	VALUES (1034,
	1023);
INSERT INTO V_VAL
	VALUES (1035,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1018);
INSERT INTO V_UNY
	VALUES (1035,
	1034,
	'empty');
INSERT INTO V_VAL
	VALUES (1031,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1018);
INSERT INTO V_UNY
	VALUES (1031,
	1035,
	'not');
INSERT INTO V_VAL
	VALUES (1032,
	0,
	0,
	23,
	9,
	17,
	0,
	0,
	0,
	0,
	42,
	1018);
INSERT INTO V_TVL
	VALUES (1032,
	1033);
INSERT INTO V_VAR
	VALUES (1021,
	1018,
	'session',
	1,
	116);
INSERT INTO V_INT
	VALUES (1021,
	0,
	705);
INSERT INTO V_VAR
	VALUES (1023,
	1018,
	'goal',
	1,
	116);
INSERT INTO V_INT
	VALUES (1023,
	0,
	841);
INSERT INTO V_VAR
	VALUES (1033,
	1018,
	'indicator',
	1,
	42);
INSERT INTO V_TRN
	VALUES (1033,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (1030,
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
	1017,
	0);
INSERT INTO ACT_SMT
	VALUES (1036,
	1030,
	0,
	14,
	3,
	'Display::goalDispositionIndicator line: 14');
INSERT INTO ACT_IF
	VALUES (1036,
	1037,
	1038,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1039,
	1030,
	0,
	16,
	3,
	'Display::goalDispositionIndicator line: 16');
INSERT INTO ACT_EL
	VALUES (1039,
	1040,
	1041,
	1036);
INSERT INTO ACT_SMT
	VALUES (1042,
	1030,
	0,
	18,
	3,
	'Display::goalDispositionIndicator line: 18');
INSERT INTO ACT_E
	VALUES (1042,
	1043,
	1036);
INSERT INTO V_VAL
	VALUES (1044,
	0,
	0,
	14,
	8,
	11,
	0,
	0,
	0,
	0,
	116,
	1030);
INSERT INTO V_IRF
	VALUES (1044,
	1023);
INSERT INTO V_VAL
	VALUES (1045,
	0,
	0,
	14,
	13,
	23,
	0,
	0,
	0,
	0,
	1046,
	1030);
INSERT INTO V_AVL
	VALUES (1045,
	1044,
	841,
	1047);
INSERT INTO V_VAL
	VALUES (1038,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1030);
INSERT INTO V_BIN
	VALUES (1038,
	1048,
	1045,
	'==');
INSERT INTO V_VAL
	VALUES (1048,
	0,
	0,
	14,
	45,
	52,
	0,
	0,
	0,
	0,
	1046,
	1030);
INSERT INTO V_LEN
	VALUES (1048,
	1049,
	14,
	28);
INSERT INTO V_VAL
	VALUES (1050,
	0,
	0,
	16,
	10,
	13,
	0,
	0,
	0,
	0,
	116,
	1030);
INSERT INTO V_IRF
	VALUES (1050,
	1023);
INSERT INTO V_VAL
	VALUES (1051,
	0,
	0,
	16,
	15,
	25,
	0,
	0,
	0,
	0,
	1046,
	1030);
INSERT INTO V_AVL
	VALUES (1051,
	1050,
	841,
	1047);
INSERT INTO V_VAL
	VALUES (1041,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1030);
INSERT INTO V_BIN
	VALUES (1041,
	1052,
	1051,
	'==');
INSERT INTO V_VAL
	VALUES (1052,
	0,
	0,
	16,
	47,
	54,
	0,
	0,
	0,
	0,
	1046,
	1030);
INSERT INTO V_LEN
	VALUES (1052,
	1053,
	16,
	30);
INSERT INTO ACT_BLK
	VALUES (1037,
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
	1017,
	0);
INSERT INTO ACT_SMT
	VALUES (1054,
	1037,
	0,
	15,
	5,
	'Display::goalDispositionIndicator line: 15');
INSERT INTO ACT_AI
	VALUES (1054,
	1055,
	1056,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1056,
	1,
	0,
	15,
	5,
	13,
	0,
	0,
	0,
	0,
	42,
	1037);
INSERT INTO V_TVL
	VALUES (1056,
	1033);
INSERT INTO V_VAL
	VALUES (1055,
	0,
	0,
	15,
	28,
	29,
	0,
	0,
	0,
	0,
	42,
	1037);
INSERT INTO V_LEN
	VALUES (1055,
	581,
	15,
	17);
INSERT INTO ACT_BLK
	VALUES (1040,
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
	1017,
	0);
INSERT INTO ACT_SMT
	VALUES (1057,
	1040,
	0,
	17,
	5,
	'Display::goalDispositionIndicator line: 17');
INSERT INTO ACT_AI
	VALUES (1057,
	1058,
	1059,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1059,
	1,
	0,
	17,
	5,
	13,
	0,
	0,
	0,
	0,
	42,
	1040);
INSERT INTO V_TVL
	VALUES (1059,
	1033);
INSERT INTO V_VAL
	VALUES (1058,
	0,
	0,
	17,
	28,
	31,
	0,
	0,
	0,
	0,
	42,
	1040);
INSERT INTO V_LEN
	VALUES (1058,
	575,
	17,
	17);
INSERT INTO ACT_BLK
	VALUES (1043,
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
	1017,
	0);
INSERT INTO ACT_SMT
	VALUES (1060,
	1043,
	0,
	19,
	5,
	'Display::goalDispositionIndicator line: 19');
INSERT INTO ACT_AI
	VALUES (1060,
	1061,
	1062,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1062,
	1,
	0,
	19,
	5,
	13,
	0,
	0,
	0,
	0,
	42,
	1043);
INSERT INTO V_TVL
	VALUES (1062,
	1033);
INSERT INTO V_VAL
	VALUES (1061,
	0,
	0,
	19,
	28,
	31,
	0,
	0,
	0,
	0,
	42,
	1043);
INSERT INTO V_LEN
	VALUES (1061,
	578,
	19,
	17);
INSERT INTO O_NBATTR
	VALUES (1063,
	747);
INSERT INTO O_BATTR
	VALUES (1063,
	747);
INSERT INTO O_ATTR
	VALUES (1063,
	747,
	0,
	'current_state',
	'',
	'',
	'current_state',
	0,
	100,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	747);
INSERT INTO O_ID
	VALUES (1,
	747);
INSERT INTO O_ID
	VALUES (2,
	747);
INSERT INTO SM_ISM
	VALUES (1064,
	747);
INSERT INTO SM_SM
	VALUES (1064,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (1064);
INSERT INTO SM_LEVT
	VALUES (748,
	1064,
	0);
INSERT INTO SM_SEVT
	VALUES (748,
	1064,
	0);
INSERT INTO SM_EVT
	VALUES (748,
	1064,
	0,
	1,
	'modeChange',
	0,
	'',
	'Display1',
	'');
INSERT INTO SM_LEVT
	VALUES (1065,
	1064,
	0);
INSERT INTO SM_SEVT
	VALUES (1065,
	1064,
	0);
INSERT INTO SM_EVT
	VALUES (1065,
	1064,
	0,
	2,
	'refresh',
	0,
	'',
	'Display2',
	'');
INSERT INTO SM_STATE
	VALUES (1066,
	1064,
	0,
	'displayDistance',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (1066,
	748,
	1064,
	0);
INSERT INTO SM_SEME
	VALUES (1066,
	1065,
	1064,
	0);
INSERT INTO SM_MOAH
	VALUES (1067,
	1064,
	1066);
INSERT INTO SM_AH
	VALUES (1067,
	1064);
INSERT INTO SM_ACT
	VALUES (1067,
	1064,
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
	VALUES (1068,
	1064,
	1067);
INSERT INTO ACT_ACT
	VALUES (1068,
	'state',
	0,
	1069,
	0,
	0,
	'Display::displayDistance',
	0);
INSERT INTO ACT_BLK
	VALUES (1069,
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
	1068,
	0);
INSERT INTO ACT_SMT
	VALUES (1070,
	1069,
	1071,
	1,
	1,
	'Display::displayDistance line: 1');
INSERT INTO ACT_SEL
	VALUES (1070,
	1072,
	1,
	'one',
	1073);
INSERT INTO ACT_SR
	VALUES (1070);
INSERT INTO ACT_LNK
	VALUES (1074,
	'''indicates current status of''',
	1070,
	746,
	0,
	2,
	705,
	1,
	37,
	1,
	52,
	1,
	55);
INSERT INTO ACT_SMT
	VALUES (1071,
	1069,
	1075,
	2,
	1,
	'Display::displayDistance line: 2');
INSERT INTO ACT_AI
	VALUES (1071,
	1076,
	1077,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1075,
	1069,
	1078,
	3,
	1,
	'Display::displayDistance line: 3');
INSERT INTO ACT_IF
	VALUES (1075,
	1079,
	1080,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1081,
	1069,
	0,
	5,
	1,
	'Display::displayDistance line: 5');
INSERT INTO ACT_E
	VALUES (1081,
	1082,
	1075);
INSERT INTO ACT_SMT
	VALUES (1078,
	1069,
	0,
	8,
	1,
	'Display::displayDistance line: 8');
INSERT INTO ACT_IOP
	VALUES (1078,
	8,
	10,
	8,
	6,
	0,
	680,
	0);
INSERT INTO V_VAL
	VALUES (1073,
	0,
	0,
	1,
	31,
	34,
	0,
	0,
	0,
	0,
	116,
	1069);
INSERT INTO V_IRF
	VALUES (1073,
	1083);
INSERT INTO V_VAL
	VALUES (1077,
	1,
	1,
	2,
	1,
	8,
	0,
	0,
	0,
	0,
	23,
	1069);
INSERT INTO V_TVL
	VALUES (1077,
	1084);
INSERT INTO V_VAL
	VALUES (1085,
	0,
	0,
	2,
	12,
	18,
	0,
	0,
	0,
	0,
	116,
	1069);
INSERT INTO V_IRF
	VALUES (1085,
	1072);
INSERT INTO V_VAL
	VALUES (1076,
	0,
	0,
	2,
	20,
	38,
	0,
	0,
	0,
	0,
	23,
	1069);
INSERT INTO V_AVL
	VALUES (1076,
	1085,
	705,
	1086);
INSERT INTO V_VAL
	VALUES (1087,
	0,
	0,
	3,
	6,
	13,
	0,
	0,
	0,
	0,
	23,
	1069);
INSERT INTO V_TVL
	VALUES (1087,
	1084);
INSERT INTO V_VAL
	VALUES (1080,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1069);
INSERT INTO V_BIN
	VALUES (1080,
	1088,
	1087,
	'>');
INSERT INTO V_VAL
	VALUES (1088,
	0,
	0,
	3,
	17,
	22,
	0,
	0,
	0,
	0,
	23,
	1069);
INSERT INTO V_LRL
	VALUES (1088,
	'1000.0');
INSERT INTO V_VAL
	VALUES (1089,
	0,
	0,
	8,
	44,
	-1,
	0,
	0,
	0,
	0,
	42,
	1069);
INSERT INTO V_TRV
	VALUES (1089,
	1016,
	0,
	1,
	8,
	35);
INSERT INTO V_PAR
	VALUES (1089,
	1078,
	0,
	'indicator',
	0,
	8,
	24);
INSERT INTO V_VAR
	VALUES (1072,
	1069,
	'session',
	1,
	116);
INSERT INTO V_INT
	VALUES (1072,
	0,
	705);
INSERT INTO V_VAR
	VALUES (1083,
	1069,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (1083,
	0,
	747);
INSERT INTO V_VAR
	VALUES (1084,
	1069,
	'distance',
	1,
	23);
INSERT INTO V_TRN
	VALUES (1084,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (1079,
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
	1068,
	0);
INSERT INTO ACT_SMT
	VALUES (1090,
	1079,
	0,
	4,
	3,
	'Display::displayDistance line: 4');
INSERT INTO ACT_IOP
	VALUES (1090,
	4,
	12,
	4,
	8,
	0,
	677,
	0);
INSERT INTO V_VAL
	VALUES (1091,
	0,
	0,
	4,
	27,
	34,
	0,
	0,
	0,
	0,
	23,
	1079);
INSERT INTO V_TVL
	VALUES (1091,
	1084);
INSERT INTO V_VAL
	VALUES (1092,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	23,
	1079);
INSERT INTO V_BIN
	VALUES (1092,
	1093,
	1091,
	'/');
INSERT INTO V_PAR
	VALUES (1092,
	1090,
	0,
	'value',
	1094,
	4,
	20);
INSERT INTO V_VAL
	VALUES (1093,
	0,
	0,
	4,
	38,
	43,
	0,
	0,
	0,
	0,
	23,
	1079);
INSERT INTO V_LRL
	VALUES (1093,
	'1000.0');
INSERT INTO V_VAL
	VALUES (1094,
	0,
	0,
	4,
	58,
	59,
	0,
	0,
	0,
	0,
	26,
	1079);
INSERT INTO V_LEN
	VALUES (1094,
	486,
	4,
	52);
INSERT INTO V_PAR
	VALUES (1094,
	1090,
	0,
	'unit',
	0,
	4,
	46);
INSERT INTO ACT_BLK
	VALUES (1082,
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
	1068,
	0);
INSERT INTO ACT_SMT
	VALUES (1095,
	1082,
	0,
	6,
	3,
	'Display::displayDistance line: 6');
INSERT INTO ACT_IOP
	VALUES (1095,
	6,
	12,
	6,
	8,
	0,
	677,
	0);
INSERT INTO V_VAL
	VALUES (1096,
	0,
	0,
	6,
	27,
	34,
	0,
	0,
	0,
	0,
	23,
	1082);
INSERT INTO V_TVL
	VALUES (1096,
	1084);
INSERT INTO V_PAR
	VALUES (1096,
	1095,
	0,
	'value',
	1097,
	6,
	20);
INSERT INTO V_VAL
	VALUES (1097,
	0,
	0,
	6,
	49,
	54,
	0,
	0,
	0,
	0,
	26,
	1082);
INSERT INTO V_LEN
	VALUES (1097,
	489,
	6,
	43);
INSERT INTO V_PAR
	VALUES (1097,
	1095,
	0,
	'unit',
	0,
	6,
	37);
INSERT INTO SM_STATE
	VALUES (1098,
	1064,
	0,
	'displaySpeed',
	2,
	0);
INSERT INTO SM_SEME
	VALUES (1098,
	748,
	1064,
	0);
INSERT INTO SM_SEME
	VALUES (1098,
	1065,
	1064,
	0);
INSERT INTO SM_MOAH
	VALUES (1099,
	1064,
	1098);
INSERT INTO SM_AH
	VALUES (1099,
	1064);
INSERT INTO SM_ACT
	VALUES (1099,
	1064,
	1,
	'select one session 
  related by self->WorkoutSession[R7.''indicates current status of''];
speed = session.currentSpeed;
send UI::setData(value: speed, unit: Unit::kmPerHour);
send UI::setIndicator( indicator: Display::goalDispositionIndicator() );',
	'');
INSERT INTO ACT_SAB
	VALUES (1100,
	1064,
	1099);
INSERT INTO ACT_ACT
	VALUES (1100,
	'state',
	0,
	1101,
	0,
	0,
	'Display::displaySpeed',
	0);
INSERT INTO ACT_BLK
	VALUES (1101,
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
	1100,
	0);
INSERT INTO ACT_SMT
	VALUES (1102,
	1101,
	1103,
	1,
	1,
	'Display::displaySpeed line: 1');
INSERT INTO ACT_SEL
	VALUES (1102,
	1104,
	1,
	'one',
	1105);
INSERT INTO ACT_SR
	VALUES (1102);
INSERT INTO ACT_LNK
	VALUES (1106,
	'''indicates current status of''',
	1102,
	746,
	0,
	2,
	705,
	2,
	20,
	2,
	35,
	2,
	38);
INSERT INTO ACT_SMT
	VALUES (1103,
	1101,
	1107,
	3,
	1,
	'Display::displaySpeed line: 3');
INSERT INTO ACT_AI
	VALUES (1103,
	1108,
	1109,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1107,
	1101,
	1110,
	4,
	1,
	'Display::displaySpeed line: 4');
INSERT INTO ACT_IOP
	VALUES (1107,
	4,
	10,
	4,
	6,
	0,
	677,
	0);
INSERT INTO ACT_SMT
	VALUES (1110,
	1101,
	0,
	5,
	1,
	'Display::displaySpeed line: 5');
INSERT INTO ACT_IOP
	VALUES (1110,
	5,
	10,
	5,
	6,
	0,
	680,
	0);
INSERT INTO V_VAL
	VALUES (1105,
	0,
	0,
	2,
	14,
	17,
	0,
	0,
	0,
	0,
	116,
	1101);
INSERT INTO V_IRF
	VALUES (1105,
	1111);
INSERT INTO V_VAL
	VALUES (1109,
	1,
	1,
	3,
	1,
	5,
	0,
	0,
	0,
	0,
	23,
	1101);
INSERT INTO V_TVL
	VALUES (1109,
	1112);
INSERT INTO V_VAL
	VALUES (1113,
	0,
	0,
	3,
	9,
	15,
	0,
	0,
	0,
	0,
	116,
	1101);
INSERT INTO V_IRF
	VALUES (1113,
	1104);
INSERT INTO V_VAL
	VALUES (1108,
	0,
	0,
	3,
	17,
	28,
	0,
	0,
	0,
	0,
	23,
	1101);
INSERT INTO V_AVL
	VALUES (1108,
	1113,
	705,
	1114);
INSERT INTO V_VAL
	VALUES (1115,
	0,
	0,
	4,
	25,
	29,
	0,
	0,
	0,
	0,
	23,
	1101);
INSERT INTO V_TVL
	VALUES (1115,
	1112);
INSERT INTO V_PAR
	VALUES (1115,
	1107,
	0,
	'value',
	1116,
	4,
	18);
INSERT INTO V_VAL
	VALUES (1116,
	0,
	0,
	4,
	44,
	52,
	0,
	0,
	0,
	0,
	26,
	1101);
INSERT INTO V_LEN
	VALUES (1116,
	495,
	4,
	38);
INSERT INTO V_PAR
	VALUES (1116,
	1107,
	0,
	'unit',
	0,
	4,
	32);
INSERT INTO V_VAL
	VALUES (1117,
	0,
	0,
	5,
	44,
	-1,
	0,
	0,
	0,
	0,
	42,
	1101);
INSERT INTO V_TRV
	VALUES (1117,
	1016,
	0,
	1,
	5,
	35);
INSERT INTO V_PAR
	VALUES (1117,
	1110,
	0,
	'indicator',
	0,
	5,
	24);
INSERT INTO V_VAR
	VALUES (1104,
	1101,
	'session',
	1,
	116);
INSERT INTO V_INT
	VALUES (1104,
	0,
	705);
INSERT INTO V_VAR
	VALUES (1111,
	1101,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (1111,
	0,
	747);
INSERT INTO V_VAR
	VALUES (1112,
	1101,
	'speed',
	1,
	23);
INSERT INTO V_TRN
	VALUES (1112,
	0,
	'');
INSERT INTO SM_STATE
	VALUES (1118,
	1064,
	0,
	'displayPace',
	3,
	0);
INSERT INTO SM_SEME
	VALUES (1118,
	748,
	1064,
	0);
INSERT INTO SM_SEME
	VALUES (1118,
	1065,
	1064,
	0);
INSERT INTO SM_MOAH
	VALUES (1119,
	1064,
	1118);
INSERT INTO SM_AH
	VALUES (1119,
	1064);
INSERT INTO SM_ACT
	VALUES (1119,
	1064,
	1,
	'select one session 
  related by self->WorkoutSession[R7.''indicates current status of''];
pace = session.currentPace;
send UI::setData(value: pace, unit: Unit::minPerKm);
send UI::setIndicator( indicator: Display::goalDispositionIndicator() );',
	'');
INSERT INTO ACT_SAB
	VALUES (1120,
	1064,
	1119);
INSERT INTO ACT_ACT
	VALUES (1120,
	'state',
	0,
	1121,
	0,
	0,
	'Display::displayPace',
	0);
INSERT INTO ACT_BLK
	VALUES (1121,
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
	1120,
	0);
INSERT INTO ACT_SMT
	VALUES (1122,
	1121,
	1123,
	1,
	1,
	'Display::displayPace line: 1');
INSERT INTO ACT_SEL
	VALUES (1122,
	1124,
	1,
	'one',
	1125);
INSERT INTO ACT_SR
	VALUES (1122);
INSERT INTO ACT_LNK
	VALUES (1126,
	'''indicates current status of''',
	1122,
	746,
	0,
	2,
	705,
	2,
	20,
	2,
	35,
	2,
	38);
INSERT INTO ACT_SMT
	VALUES (1123,
	1121,
	1127,
	3,
	1,
	'Display::displayPace line: 3');
INSERT INTO ACT_AI
	VALUES (1123,
	1128,
	1129,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1127,
	1121,
	1130,
	4,
	1,
	'Display::displayPace line: 4');
INSERT INTO ACT_IOP
	VALUES (1127,
	4,
	10,
	4,
	6,
	0,
	677,
	0);
INSERT INTO ACT_SMT
	VALUES (1130,
	1121,
	0,
	5,
	1,
	'Display::displayPace line: 5');
INSERT INTO ACT_IOP
	VALUES (1130,
	5,
	10,
	5,
	6,
	0,
	680,
	0);
INSERT INTO V_VAL
	VALUES (1125,
	0,
	0,
	2,
	14,
	17,
	0,
	0,
	0,
	0,
	116,
	1121);
INSERT INTO V_IRF
	VALUES (1125,
	1131);
INSERT INTO V_VAL
	VALUES (1129,
	1,
	1,
	3,
	1,
	4,
	0,
	0,
	0,
	0,
	23,
	1121);
INSERT INTO V_TVL
	VALUES (1129,
	1132);
INSERT INTO V_VAL
	VALUES (1133,
	0,
	0,
	3,
	8,
	14,
	0,
	0,
	0,
	0,
	116,
	1121);
INSERT INTO V_IRF
	VALUES (1133,
	1124);
INSERT INTO V_VAL
	VALUES (1128,
	0,
	0,
	3,
	16,
	26,
	0,
	0,
	0,
	0,
	23,
	1121);
INSERT INTO V_AVL
	VALUES (1128,
	1133,
	705,
	1134);
INSERT INTO V_VAL
	VALUES (1135,
	0,
	0,
	4,
	25,
	28,
	0,
	0,
	0,
	0,
	23,
	1121);
INSERT INTO V_TVL
	VALUES (1135,
	1132);
INSERT INTO V_PAR
	VALUES (1135,
	1127,
	0,
	'value',
	1136,
	4,
	18);
INSERT INTO V_VAL
	VALUES (1136,
	0,
	0,
	4,
	43,
	50,
	0,
	0,
	0,
	0,
	26,
	1121);
INSERT INTO V_LEN
	VALUES (1136,
	492,
	4,
	37);
INSERT INTO V_PAR
	VALUES (1136,
	1127,
	0,
	'unit',
	0,
	4,
	31);
INSERT INTO V_VAL
	VALUES (1137,
	0,
	0,
	5,
	44,
	-1,
	0,
	0,
	0,
	0,
	42,
	1121);
INSERT INTO V_TRV
	VALUES (1137,
	1016,
	0,
	1,
	5,
	35);
INSERT INTO V_PAR
	VALUES (1137,
	1130,
	0,
	'indicator',
	0,
	5,
	24);
INSERT INTO V_VAR
	VALUES (1124,
	1121,
	'session',
	1,
	116);
INSERT INTO V_INT
	VALUES (1124,
	0,
	705);
INSERT INTO V_VAR
	VALUES (1131,
	1121,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (1131,
	0,
	747);
INSERT INTO V_VAR
	VALUES (1132,
	1121,
	'pace',
	1,
	23);
INSERT INTO V_TRN
	VALUES (1132,
	0,
	'');
INSERT INTO SM_STATE
	VALUES (1138,
	1064,
	0,
	'displayHeartRate',
	4,
	0);
INSERT INTO SM_SEME
	VALUES (1138,
	748,
	1064,
	0);
INSERT INTO SM_SEME
	VALUES (1138,
	1065,
	1064,
	0);
INSERT INTO SM_MOAH
	VALUES (1139,
	1064,
	1138);
INSERT INTO SM_AH
	VALUES (1139,
	1064);
INSERT INTO SM_ACT
	VALUES (1139,
	1064,
	1,
	'select one session 
  related by self->WorkoutSession[R7.''indicates current status of''];
heartRate = session.currentHeartRate;
send UI::setData(value: heartRate, unit: Unit::bpm);
send UI::setIndicator( indicator: Display::goalDispositionIndicator() );
',
	'');
INSERT INTO ACT_SAB
	VALUES (1140,
	1064,
	1139);
INSERT INTO ACT_ACT
	VALUES (1140,
	'state',
	0,
	1141,
	0,
	0,
	'Display::displayHeartRate',
	0);
INSERT INTO ACT_BLK
	VALUES (1141,
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
	1140,
	0);
INSERT INTO ACT_SMT
	VALUES (1142,
	1141,
	1143,
	1,
	1,
	'Display::displayHeartRate line: 1');
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
	'''indicates current status of''',
	1142,
	746,
	0,
	2,
	705,
	2,
	20,
	2,
	35,
	2,
	38);
INSERT INTO ACT_SMT
	VALUES (1143,
	1141,
	1147,
	3,
	1,
	'Display::displayHeartRate line: 3');
INSERT INTO ACT_AI
	VALUES (1143,
	1148,
	1149,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1147,
	1141,
	1150,
	4,
	1,
	'Display::displayHeartRate line: 4');
INSERT INTO ACT_IOP
	VALUES (1147,
	4,
	10,
	4,
	6,
	0,
	677,
	0);
INSERT INTO ACT_SMT
	VALUES (1150,
	1141,
	0,
	5,
	1,
	'Display::displayHeartRate line: 5');
INSERT INTO ACT_IOP
	VALUES (1150,
	5,
	10,
	5,
	6,
	0,
	680,
	0);
INSERT INTO V_VAL
	VALUES (1145,
	0,
	0,
	2,
	14,
	17,
	0,
	0,
	0,
	0,
	116,
	1141);
INSERT INTO V_IRF
	VALUES (1145,
	1151);
INSERT INTO V_VAL
	VALUES (1149,
	1,
	1,
	3,
	1,
	9,
	0,
	0,
	0,
	0,
	14,
	1141);
INSERT INTO V_TVL
	VALUES (1149,
	1152);
INSERT INTO V_VAL
	VALUES (1153,
	0,
	0,
	3,
	13,
	19,
	0,
	0,
	0,
	0,
	116,
	1141);
INSERT INTO V_IRF
	VALUES (1153,
	1144);
INSERT INTO V_VAL
	VALUES (1148,
	0,
	0,
	3,
	21,
	36,
	0,
	0,
	0,
	0,
	14,
	1141);
INSERT INTO V_AVL
	VALUES (1148,
	1153,
	705,
	1154);
INSERT INTO V_VAL
	VALUES (1155,
	0,
	0,
	4,
	25,
	33,
	0,
	0,
	0,
	0,
	14,
	1141);
INSERT INTO V_TVL
	VALUES (1155,
	1152);
INSERT INTO V_PAR
	VALUES (1155,
	1147,
	0,
	'value',
	1156,
	4,
	18);
INSERT INTO V_VAL
	VALUES (1156,
	0,
	0,
	4,
	48,
	50,
	0,
	0,
	0,
	0,
	26,
	1141);
INSERT INTO V_LEN
	VALUES (1156,
	513,
	4,
	42);
INSERT INTO V_PAR
	VALUES (1156,
	1147,
	0,
	'unit',
	0,
	4,
	36);
INSERT INTO V_VAL
	VALUES (1157,
	0,
	0,
	5,
	44,
	-1,
	0,
	0,
	0,
	0,
	42,
	1141);
INSERT INTO V_TRV
	VALUES (1157,
	1016,
	0,
	1,
	5,
	35);
INSERT INTO V_PAR
	VALUES (1157,
	1150,
	0,
	'indicator',
	0,
	5,
	24);
INSERT INTO V_VAR
	VALUES (1144,
	1141,
	'session',
	1,
	116);
INSERT INTO V_INT
	VALUES (1144,
	0,
	705);
INSERT INTO V_VAR
	VALUES (1151,
	1141,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (1151,
	0,
	747);
INSERT INTO V_VAR
	VALUES (1152,
	1141,
	'heartRate',
	1,
	14);
INSERT INTO V_TRN
	VALUES (1152,
	0,
	'');
INSERT INTO SM_STATE
	VALUES (1158,
	1064,
	0,
	'displayLapCount',
	5,
	0);
INSERT INTO SM_SEME
	VALUES (1158,
	748,
	1064,
	0);
INSERT INTO SM_SEME
	VALUES (1158,
	1065,
	1064,
	0);
INSERT INTO SM_MOAH
	VALUES (1159,
	1064,
	1158);
INSERT INTO SM_AH
	VALUES (1159,
	1064);
INSERT INTO SM_ACT
	VALUES (1159,
	1064,
	1,
	'select many lapMarkers related by
  self->WorkoutSession[R7.''indicates current status of'']->
  TrackLog[R4.''captures path in'']->LapMarker[R5.''has laps defined by''];
send UI::setData(value: cardinality lapMarkers, unit: Unit::laps);
send UI::setIndicator( indicator: Display::goalDispositionIndicator() );
',
	'');
INSERT INTO ACT_SAB
	VALUES (1160,
	1064,
	1159);
INSERT INTO ACT_ACT
	VALUES (1160,
	'state',
	0,
	1161,
	0,
	0,
	'Display::displayLapCount',
	0);
INSERT INTO ACT_BLK
	VALUES (1161,
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
	1160,
	0);
INSERT INTO ACT_SMT
	VALUES (1162,
	1161,
	1163,
	1,
	1,
	'Display::displayLapCount line: 1');
INSERT INTO ACT_SEL
	VALUES (1162,
	1164,
	1,
	'many',
	1165);
INSERT INTO ACT_SR
	VALUES (1162);
INSERT INTO ACT_LNK
	VALUES (1166,
	'''indicates current status of''',
	1162,
	746,
	1167,
	2,
	705,
	2,
	9,
	2,
	24,
	2,
	27);
INSERT INTO ACT_LNK
	VALUES (1167,
	'''captures path in''',
	0,
	832,
	1168,
	2,
	813,
	3,
	3,
	3,
	12,
	3,
	15);
INSERT INTO ACT_LNK
	VALUES (1168,
	'''has laps defined by''',
	0,
	823,
	0,
	3,
	824,
	3,
	36,
	3,
	46,
	3,
	49);
INSERT INTO ACT_SMT
	VALUES (1163,
	1161,
	1169,
	4,
	1,
	'Display::displayLapCount line: 4');
INSERT INTO ACT_IOP
	VALUES (1163,
	4,
	10,
	4,
	6,
	0,
	677,
	0);
INSERT INTO ACT_SMT
	VALUES (1169,
	1161,
	0,
	5,
	1,
	'Display::displayLapCount line: 5');
INSERT INTO ACT_IOP
	VALUES (1169,
	5,
	10,
	5,
	6,
	0,
	680,
	0);
INSERT INTO V_VAL
	VALUES (1165,
	0,
	0,
	2,
	3,
	6,
	0,
	0,
	0,
	0,
	116,
	1161);
INSERT INTO V_IRF
	VALUES (1165,
	1170);
INSERT INTO V_VAL
	VALUES (1171,
	0,
	0,
	4,
	37,
	46,
	0,
	0,
	0,
	0,
	607,
	1161);
INSERT INTO V_ISR
	VALUES (1171,
	1164);
INSERT INTO V_VAL
	VALUES (1172,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	14,
	1161);
INSERT INTO V_UNY
	VALUES (1172,
	1171,
	'cardinality');
INSERT INTO V_PAR
	VALUES (1172,
	1163,
	0,
	'value',
	1173,
	4,
	18);
INSERT INTO V_VAL
	VALUES (1173,
	0,
	0,
	4,
	61,
	64,
	0,
	0,
	0,
	0,
	26,
	1161);
INSERT INTO V_LEN
	VALUES (1173,
	516,
	4,
	55);
INSERT INTO V_PAR
	VALUES (1173,
	1163,
	0,
	'unit',
	0,
	4,
	49);
INSERT INTO V_VAL
	VALUES (1174,
	0,
	0,
	5,
	44,
	-1,
	0,
	0,
	0,
	0,
	42,
	1161);
INSERT INTO V_TRV
	VALUES (1174,
	1016,
	0,
	1,
	5,
	35);
INSERT INTO V_PAR
	VALUES (1174,
	1169,
	0,
	'indicator',
	0,
	5,
	24);
INSERT INTO V_VAR
	VALUES (1164,
	1161,
	'lapMarkers',
	1,
	607);
INSERT INTO V_INS
	VALUES (1164,
	824);
INSERT INTO V_VAR
	VALUES (1170,
	1161,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (1170,
	0,
	747);
INSERT INTO SM_NSTXN
	VALUES (1175,
	1064,
	1066,
	748,
	0);
INSERT INTO SM_TAH
	VALUES (1176,
	1064,
	1175);
INSERT INTO SM_AH
	VALUES (1176,
	1064);
INSERT INTO SM_ACT
	VALUES (1176,
	1064,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1177,
	1064,
	1176);
INSERT INTO ACT_ACT
	VALUES (1177,
	'transition',
	0,
	1178,
	0,
	0,
	'Display1: modeChange',
	0);
INSERT INTO ACT_BLK
	VALUES (1178,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1177,
	0);
INSERT INTO SM_TXN
	VALUES (1175,
	1064,
	1098,
	0);
INSERT INTO SM_NSTXN
	VALUES (1179,
	1064,
	1098,
	748,
	0);
INSERT INTO SM_TAH
	VALUES (1180,
	1064,
	1179);
INSERT INTO SM_AH
	VALUES (1180,
	1064);
INSERT INTO SM_ACT
	VALUES (1180,
	1064,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1181,
	1064,
	1180);
INSERT INTO ACT_ACT
	VALUES (1181,
	'transition',
	0,
	1182,
	0,
	0,
	'Display1: modeChange',
	0);
INSERT INTO ACT_BLK
	VALUES (1182,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1181,
	0);
INSERT INTO SM_TXN
	VALUES (1179,
	1064,
	1118,
	0);
INSERT INTO SM_NSTXN
	VALUES (1183,
	1064,
	1118,
	748,
	0);
INSERT INTO SM_TAH
	VALUES (1184,
	1064,
	1183);
INSERT INTO SM_AH
	VALUES (1184,
	1064);
INSERT INTO SM_ACT
	VALUES (1184,
	1064,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1185,
	1064,
	1184);
INSERT INTO ACT_ACT
	VALUES (1185,
	'transition',
	0,
	1186,
	0,
	0,
	'Display1: modeChange',
	0);
INSERT INTO ACT_BLK
	VALUES (1186,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1185,
	0);
INSERT INTO SM_TXN
	VALUES (1183,
	1064,
	1138,
	0);
INSERT INTO SM_NSTXN
	VALUES (1187,
	1064,
	1138,
	748,
	0);
INSERT INTO SM_TAH
	VALUES (1188,
	1064,
	1187);
INSERT INTO SM_AH
	VALUES (1188,
	1064);
INSERT INTO SM_ACT
	VALUES (1188,
	1064,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1189,
	1064,
	1188);
INSERT INTO ACT_ACT
	VALUES (1189,
	'transition',
	0,
	1190,
	0,
	0,
	'Display1: modeChange',
	0);
INSERT INTO ACT_BLK
	VALUES (1190,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1189,
	0);
INSERT INTO SM_TXN
	VALUES (1187,
	1064,
	1158,
	0);
INSERT INTO SM_NSTXN
	VALUES (1191,
	1064,
	1066,
	1065,
	0);
INSERT INTO SM_TAH
	VALUES (1192,
	1064,
	1191);
INSERT INTO SM_AH
	VALUES (1192,
	1064);
INSERT INTO SM_ACT
	VALUES (1192,
	1064,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1193,
	1064,
	1192);
INSERT INTO ACT_ACT
	VALUES (1193,
	'transition',
	0,
	1194,
	0,
	0,
	'Display2: refresh',
	0);
INSERT INTO ACT_BLK
	VALUES (1194,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1193,
	0);
INSERT INTO SM_TXN
	VALUES (1191,
	1064,
	1066,
	0);
INSERT INTO SM_NSTXN
	VALUES (1195,
	1064,
	1098,
	1065,
	0);
INSERT INTO SM_TAH
	VALUES (1196,
	1064,
	1195);
INSERT INTO SM_AH
	VALUES (1196,
	1064);
INSERT INTO SM_ACT
	VALUES (1196,
	1064,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1197,
	1064,
	1196);
INSERT INTO ACT_ACT
	VALUES (1197,
	'transition',
	0,
	1198,
	0,
	0,
	'Display2: refresh',
	0);
INSERT INTO ACT_BLK
	VALUES (1198,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
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
INSERT INTO SM_TXN
	VALUES (1195,
	1064,
	1098,
	0);
INSERT INTO SM_NSTXN
	VALUES (1199,
	1064,
	1138,
	1065,
	0);
INSERT INTO SM_TAH
	VALUES (1200,
	1064,
	1199);
INSERT INTO SM_AH
	VALUES (1200,
	1064);
INSERT INTO SM_ACT
	VALUES (1200,
	1064,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1201,
	1064,
	1200);
INSERT INTO ACT_ACT
	VALUES (1201,
	'transition',
	0,
	1202,
	0,
	0,
	'Display2: refresh',
	0);
INSERT INTO ACT_BLK
	VALUES (1202,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1201,
	0);
INSERT INTO SM_TXN
	VALUES (1199,
	1064,
	1138,
	0);
INSERT INTO SM_NSTXN
	VALUES (1203,
	1064,
	1158,
	1065,
	0);
INSERT INTO SM_TAH
	VALUES (1204,
	1064,
	1203);
INSERT INTO SM_AH
	VALUES (1204,
	1064);
INSERT INTO SM_ACT
	VALUES (1204,
	1064,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1205,
	1064,
	1204);
INSERT INTO ACT_ACT
	VALUES (1205,
	'transition',
	0,
	1206,
	0,
	0,
	'Display2: refresh',
	0);
INSERT INTO ACT_BLK
	VALUES (1206,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1205,
	0);
INSERT INTO SM_TXN
	VALUES (1203,
	1064,
	1158,
	0);
INSERT INTO SM_NSTXN
	VALUES (1207,
	1064,
	1118,
	1065,
	0);
INSERT INTO SM_TAH
	VALUES (1208,
	1064,
	1207);
INSERT INTO SM_AH
	VALUES (1208,
	1064);
INSERT INTO SM_ACT
	VALUES (1208,
	1064,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1209,
	1064,
	1208);
INSERT INTO ACT_ACT
	VALUES (1209,
	'transition',
	0,
	1210,
	0,
	0,
	'Display2: refresh',
	0);
INSERT INTO ACT_BLK
	VALUES (1210,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1209,
	0);
INSERT INTO SM_TXN
	VALUES (1207,
	1064,
	1118,
	0);
INSERT INTO SM_NSTXN
	VALUES (1211,
	1064,
	1158,
	748,
	0);
INSERT INTO SM_TAH
	VALUES (1212,
	1064,
	1211);
INSERT INTO SM_AH
	VALUES (1212,
	1064);
INSERT INTO SM_ACT
	VALUES (1212,
	1064,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1213,
	1064,
	1212);
INSERT INTO ACT_ACT
	VALUES (1213,
	'transition',
	0,
	1214,
	0,
	0,
	'Display1: modeChange',
	0);
INSERT INTO ACT_BLK
	VALUES (1214,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1213,
	0);
INSERT INTO SM_TXN
	VALUES (1211,
	1064,
	1066,
	0);
INSERT INTO PE_PE
	VALUES (836,
	1,
	811,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (836,
	'HeartRateSample',
	5,
	'HeartRateSample',
	'Each instance represents a single heart-rate sample.',
	0);
INSERT INTO O_NBATTR
	VALUES (1215,
	836);
INSERT INTO O_BATTR
	VALUES (1215,
	836);
INSERT INTO O_ATTR
	VALUES (1215,
	836,
	0,
	'heartRate',
	'Heart rate expressed in beats per minute.',
	'',
	'heartRate',
	0,
	14,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1216,
	836);
INSERT INTO O_BATTR
	VALUES (1216,
	836);
INSERT INTO O_ATTR
	VALUES (1216,
	836,
	1215,
	'time',
	'Number of seconds between start time for the associated workout and recording of this heart rate sample.',
	'',
	'time',
	0,
	14,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	836);
INSERT INTO O_ID
	VALUES (1,
	836);
INSERT INTO O_ID
	VALUES (2,
	836);
INSERT INTO PE_PE
	VALUES (824,
	1,
	811,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (824,
	'LapMarker',
	4,
	'LapMarker',
	'Each instance represents a single lap marker.',
	0);
INSERT INTO O_NBATTR
	VALUES (1217,
	824);
INSERT INTO O_BATTR
	VALUES (1217,
	824);
INSERT INTO O_ATTR
	VALUES (1217,
	824,
	0,
	'lapTime',
	'Number of seconds between start time for the associated workout and this lap marker.',
	'',
	'lapTime',
	0,
	14,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	824);
INSERT INTO O_ID
	VALUES (1,
	824);
INSERT INTO O_ID
	VALUES (2,
	824);
INSERT INTO PE_PE
	VALUES (813,
	1,
	811,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (813,
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
	VALUES (1218,
	813,
	'addTrackPoint',
	'',
	94,
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
	VALUES (1219,
	1218);
INSERT INTO ACT_ACT
	VALUES (1219,
	'operation',
	0,
	1220,
	0,
	0,
	'TrackLog::addTrackPoint',
	0);
INSERT INTO ACT_BLK
	VALUES (1220,
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
	1219,
	0);
INSERT INTO ACT_SMT
	VALUES (1221,
	1220,
	1222,
	5,
	1,
	'TrackLog::addTrackPoint line: 5');
INSERT INTO ACT_CR
	VALUES (1221,
	1223,
	1,
	815,
	5,
	38);
INSERT INTO ACT_SMT
	VALUES (1222,
	1220,
	1224,
	6,
	1,
	'TrackLog::addTrackPoint line: 6');
INSERT INTO ACT_SEL
	VALUES (1222,
	1225,
	1,
	'one',
	1226);
INSERT INTO ACT_SR
	VALUES (1222);
INSERT INTO ACT_LNK
	VALUES (1227,
	'''represents path for''',
	1222,
	832,
	1228,
	2,
	705,
	7,
	9,
	7,
	24,
	7,
	27);
INSERT INTO ACT_LNK
	VALUES (1228,
	'''is timed by''',
	0,
	829,
	0,
	2,
	719,
	7,
	51,
	7,
	64,
	7,
	67);
INSERT INTO ACT_SMT
	VALUES (1224,
	1220,
	1229,
	8,
	1,
	'TrackLog::addTrackPoint line: 8');
INSERT INTO ACT_AI
	VALUES (1224,
	1230,
	1231,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1229,
	1220,
	1232,
	9,
	1,
	'TrackLog::addTrackPoint line: 9');
INSERT INTO ACT_IOP
	VALUES (1229,
	9,
	16,
	9,
	6,
	0,
	666,
	0);
INSERT INTO ACT_SMT
	VALUES (1232,
	1220,
	1233,
	12,
	1,
	'TrackLog::addTrackPoint line: 12');
INSERT INTO ACT_SEL
	VALUES (1232,
	1234,
	1,
	'one',
	1235);
INSERT INTO ACT_SR
	VALUES (1232);
INSERT INTO ACT_LNK
	VALUES (1236,
	'',
	1232,
	812,
	0,
	2,
	815,
	12,
	40,
	12,
	51,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1233,
	1220,
	1237,
	13,
	1,
	'TrackLog::addTrackPoint line: 13');
INSERT INTO ACT_SEL
	VALUES (1233,
	1238,
	1,
	'one',
	1239);
INSERT INTO ACT_SR
	VALUES (1233);
INSERT INTO ACT_LNK
	VALUES (1240,
	'',
	1233,
	820,
	0,
	2,
	815,
	13,
	39,
	13,
	50,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1237,
	1220,
	1241,
	16,
	1,
	'TrackLog::addTrackPoint line: 16');
INSERT INTO ACT_AI
	VALUES (1237,
	1242,
	1243,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1241,
	1220,
	1244,
	17,
	1,
	'TrackLog::addTrackPoint line: 17');
INSERT INTO ACT_AI
	VALUES (1241,
	1245,
	1246,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1244,
	1220,
	1247,
	18,
	1,
	'TrackLog::addTrackPoint line: 18');
INSERT INTO ACT_AI
	VALUES (1244,
	1248,
	1249,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1247,
	1220,
	1250,
	19,
	1,
	'TrackLog::addTrackPoint line: 19');
INSERT INTO ACT_IF
	VALUES (1247,
	1251,
	1252,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1253,
	1220,
	0,
	23,
	1,
	'TrackLog::addTrackPoint line: 23');
INSERT INTO ACT_E
	VALUES (1253,
	1254,
	1247);
INSERT INTO ACT_SMT
	VALUES (1250,
	1220,
	1255,
	33,
	1,
	'TrackLog::addTrackPoint line: 33');
INSERT INTO ACT_AI
	VALUES (1250,
	1256,
	1257,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1255,
	1220,
	1258,
	34,
	1,
	'TrackLog::addTrackPoint line: 34');
INSERT INTO ACT_IF
	VALUES (1255,
	1259,
	1260,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1258,
	1220,
	1261,
	39,
	1,
	'TrackLog::addTrackPoint line: 39');
INSERT INTO ACT_SEL
	VALUES (1258,
	1262,
	1,
	'one',
	1263);
INSERT INTO ACT_SR
	VALUES (1258);
INSERT INTO ACT_LNK
	VALUES (1264,
	'''represents path for''',
	1258,
	832,
	0,
	2,
	705,
	39,
	37,
	39,
	52,
	39,
	55);
INSERT INTO ACT_SMT
	VALUES (1261,
	1220,
	1265,
	40,
	1,
	'TrackLog::addTrackPoint line: 40');
INSERT INTO ACT_AI
	VALUES (1261,
	1266,
	1267,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1265,
	1220,
	0,
	43,
	1,
	'TrackLog::addTrackPoint line: 43');
INSERT INTO ACT_TFM
	VALUES (1265,
	1268,
	1269,
	43,
	6,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1226,
	0,
	0,
	7,
	3,
	6,
	0,
	0,
	0,
	0,
	116,
	1220);
INSERT INTO V_IRF
	VALUES (1226,
	1269);
INSERT INTO V_VAL
	VALUES (1270,
	1,
	0,
	8,
	1,
	10,
	0,
	0,
	0,
	0,
	116,
	1220);
INSERT INTO V_IRF
	VALUES (1270,
	1223);
INSERT INTO V_VAL
	VALUES (1231,
	1,
	0,
	8,
	12,
	15,
	0,
	0,
	0,
	0,
	14,
	1220);
INSERT INTO V_AVL
	VALUES (1231,
	1270,
	815,
	1271);
INSERT INTO V_VAL
	VALUES (1272,
	0,
	0,
	8,
	19,
	30,
	0,
	0,
	0,
	0,
	116,
	1220);
INSERT INTO V_IRF
	VALUES (1272,
	1225);
INSERT INTO V_VAL
	VALUES (1230,
	0,
	0,
	8,
	32,
	35,
	0,
	0,
	0,
	0,
	14,
	1220);
INSERT INTO V_AVL
	VALUES (1230,
	1272,
	719,
	1014);
INSERT INTO V_VAL
	VALUES (1273,
	0,
	0,
	9,
	39,
	48,
	0,
	0,
	0,
	0,
	116,
	1220);
INSERT INTO V_IRF
	VALUES (1273,
	1223);
INSERT INTO V_VAL
	VALUES (1274,
	0,
	0,
	9,
	50,
	57,
	0,
	0,
	0,
	0,
	23,
	1220);
INSERT INTO V_AVL
	VALUES (1274,
	1273,
	815,
	1275);
INSERT INTO V_PAR
	VALUES (1274,
	1229,
	0,
	'latitude',
	1276,
	9,
	29);
INSERT INTO V_VAL
	VALUES (1277,
	0,
	0,
	9,
	71,
	80,
	0,
	0,
	0,
	0,
	116,
	1220);
INSERT INTO V_IRF
	VALUES (1277,
	1223);
INSERT INTO V_VAL
	VALUES (1276,
	0,
	0,
	9,
	82,
	90,
	0,
	0,
	0,
	0,
	23,
	1220);
INSERT INTO V_AVL
	VALUES (1276,
	1277,
	815,
	1278);
INSERT INTO V_PAR
	VALUES (1276,
	1229,
	0,
	'longitude',
	0,
	9,
	60);
INSERT INTO V_VAL
	VALUES (1235,
	0,
	0,
	12,
	34,
	37,
	0,
	0,
	0,
	0,
	116,
	1220);
INSERT INTO V_IRF
	VALUES (1235,
	1269);
INSERT INTO V_VAL
	VALUES (1239,
	0,
	0,
	13,
	33,
	36,
	0,
	0,
	0,
	0,
	116,
	1220);
INSERT INTO V_IRF
	VALUES (1239,
	1269);
INSERT INTO V_VAL
	VALUES (1243,
	1,
	1,
	16,
	1,
	17,
	0,
	0,
	0,
	0,
	119,
	1220);
INSERT INTO V_TVL
	VALUES (1243,
	1279);
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
	119,
	1220);
INSERT INTO V_LBO
	VALUES (1242,
	'FALSE');
INSERT INTO V_VAL
	VALUES (1246,
	1,
	1,
	17,
	1,
	12,
	0,
	0,
	0,
	0,
	23,
	1220);
INSERT INTO V_TVL
	VALUES (1246,
	1280);
INSERT INTO V_VAL
	VALUES (1245,
	0,
	0,
	17,
	16,
	18,
	0,
	0,
	0,
	0,
	23,
	1220);
INSERT INTO V_LRL
	VALUES (1245,
	'0.0');
INSERT INTO V_VAL
	VALUES (1249,
	1,
	1,
	18,
	1,
	13,
	0,
	0,
	0,
	0,
	23,
	1220);
INSERT INTO V_TVL
	VALUES (1249,
	1281);
INSERT INTO V_VAL
	VALUES (1248,
	0,
	0,
	18,
	17,
	19,
	0,
	0,
	0,
	0,
	23,
	1220);
INSERT INTO V_LRL
	VALUES (1248,
	'0.0');
INSERT INTO V_VAL
	VALUES (1282,
	0,
	0,
	19,
	11,
	20,
	0,
	0,
	0,
	0,
	116,
	1220);
INSERT INTO V_IRF
	VALUES (1282,
	1234);
INSERT INTO V_VAL
	VALUES (1252,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1220);
INSERT INTO V_UNY
	VALUES (1252,
	1282,
	'empty');
INSERT INTO V_VAL
	VALUES (1257,
	1,
	1,
	33,
	1,
	8,
	0,
	0,
	0,
	0,
	23,
	1220);
INSERT INTO V_TVL
	VALUES (1257,
	1283);
INSERT INTO V_VAL
	VALUES (1256,
	0,
	0,
	33,
	12,
	14,
	0,
	0,
	0,
	0,
	23,
	1220);
INSERT INTO V_LRL
	VALUES (1256,
	'0.0');
INSERT INTO V_VAL
	VALUES (1284,
	0,
	0,
	34,
	9,
	25,
	0,
	0,
	0,
	0,
	119,
	1220);
INSERT INTO V_TVL
	VALUES (1284,
	1279);
INSERT INTO V_VAL
	VALUES (1260,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1220);
INSERT INTO V_UNY
	VALUES (1260,
	1284,
	'not');
INSERT INTO V_VAL
	VALUES (1263,
	0,
	0,
	39,
	31,
	34,
	0,
	0,
	0,
	0,
	116,
	1220);
INSERT INTO V_IRF
	VALUES (1263,
	1269);
INSERT INTO V_VAL
	VALUES (1285,
	1,
	0,
	40,
	1,
	7,
	0,
	0,
	0,
	0,
	116,
	1220);
INSERT INTO V_IRF
	VALUES (1285,
	1262);
INSERT INTO V_VAL
	VALUES (1267,
	1,
	0,
	40,
	9,
	27,
	0,
	0,
	0,
	0,
	23,
	1220);
INSERT INTO V_AVL
	VALUES (1267,
	1285,
	705,
	1086);
INSERT INTO V_VAL
	VALUES (1286,
	0,
	0,
	40,
	31,
	37,
	0,
	0,
	0,
	0,
	116,
	1220);
INSERT INTO V_IRF
	VALUES (1286,
	1262);
INSERT INTO V_VAL
	VALUES (1287,
	0,
	0,
	40,
	39,
	57,
	0,
	0,
	0,
	0,
	23,
	1220);
INSERT INTO V_AVL
	VALUES (1287,
	1286,
	705,
	1086);
INSERT INTO V_VAL
	VALUES (1266,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	23,
	1220);
INSERT INTO V_BIN
	VALUES (1266,
	1288,
	1287,
	'+');
INSERT INTO V_VAL
	VALUES (1288,
	0,
	0,
	40,
	61,
	68,
	0,
	0,
	0,
	0,
	23,
	1220);
INSERT INTO V_TVL
	VALUES (1288,
	1283);
INSERT INTO V_VAR
	VALUES (1223,
	1220,
	'trackPoint',
	1,
	116);
INSERT INTO V_INT
	VALUES (1223,
	0,
	815);
INSERT INTO V_VAR
	VALUES (1225,
	1220,
	'workoutTimer',
	1,
	116);
INSERT INTO V_INT
	VALUES (1225,
	0,
	719);
INSERT INTO V_VAR
	VALUES (1269,
	1220,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (1269,
	0,
	813);
INSERT INTO V_VAR
	VALUES (1234,
	1220,
	'firstPoint',
	1,
	116);
INSERT INTO V_INT
	VALUES (1234,
	0,
	815);
INSERT INTO V_VAR
	VALUES (1238,
	1220,
	'lastPoint',
	1,
	116);
INSERT INTO V_INT
	VALUES (1238,
	0,
	815);
INSERT INTO V_VAR
	VALUES (1279,
	1220,
	'isFirstTrackPoint',
	1,
	119);
INSERT INTO V_TRN
	VALUES (1279,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1280,
	1220,
	'lastLatitude',
	1,
	23);
INSERT INTO V_TRN
	VALUES (1280,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1281,
	1220,
	'lastLongitude',
	1,
	23);
INSERT INTO V_TRN
	VALUES (1281,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1283,
	1220,
	'distance',
	1,
	23);
INSERT INTO V_TRN
	VALUES (1283,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1262,
	1220,
	'session',
	1,
	116);
INSERT INTO V_INT
	VALUES (1262,
	0,
	705);
INSERT INTO ACT_BLK
	VALUES (1251,
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
	1219,
	0);
INSERT INTO ACT_SMT
	VALUES (1289,
	1251,
	1290,
	20,
	3,
	'TrackLog::addTrackPoint line: 20');
INSERT INTO ACT_AI
	VALUES (1289,
	1291,
	1292,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1290,
	1251,
	1293,
	21,
	3,
	'TrackLog::addTrackPoint line: 21');
INSERT INTO ACT_REL
	VALUES (1290,
	1269,
	1223,
	'''has first''',
	812,
	21,
	36,
	21,
	39);
INSERT INTO ACT_SMT
	VALUES (1293,
	1251,
	0,
	22,
	3,
	'TrackLog::addTrackPoint line: 22');
INSERT INTO ACT_REL
	VALUES (1293,
	1269,
	1223,
	'''has last''',
	820,
	22,
	36,
	22,
	39);
INSERT INTO V_VAL
	VALUES (1292,
	1,
	0,
	20,
	3,
	19,
	0,
	0,
	0,
	0,
	119,
	1251);
INSERT INTO V_TVL
	VALUES (1292,
	1279);
INSERT INTO V_VAL
	VALUES (1291,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1251);
INSERT INTO V_LBO
	VALUES (1291,
	'TRUE');
INSERT INTO ACT_BLK
	VALUES (1254,
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
	1219,
	0);
INSERT INTO ACT_SMT
	VALUES (1294,
	1254,
	1295,
	25,
	3,
	'TrackLog::addTrackPoint line: 25');
INSERT INTO ACT_AI
	VALUES (1294,
	1296,
	1297,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1295,
	1254,
	1298,
	26,
	3,
	'TrackLog::addTrackPoint line: 26');
INSERT INTO ACT_AI
	VALUES (1295,
	1299,
	1300,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1298,
	1254,
	1301,
	27,
	3,
	'TrackLog::addTrackPoint line: 27');
INSERT INTO ACT_UNR
	VALUES (1298,
	1269,
	1238,
	'''has last''',
	820,
	27,
	39,
	27,
	42);
INSERT INTO ACT_SMT
	VALUES (1301,
	1254,
	1302,
	28,
	3,
	'TrackLog::addTrackPoint line: 28');
INSERT INTO ACT_REL
	VALUES (1301,
	1269,
	1223,
	'''has last''',
	820,
	28,
	36,
	28,
	39);
INSERT INTO ACT_SMT
	VALUES (1302,
	1254,
	0,
	29,
	3,
	'TrackLog::addTrackPoint line: 29');
INSERT INTO ACT_REL
	VALUES (1302,
	1238,
	1223,
	'''follows''',
	817,
	29,
	41,
	29,
	44);
INSERT INTO V_VAL
	VALUES (1297,
	1,
	0,
	25,
	3,
	14,
	0,
	0,
	0,
	0,
	23,
	1254);
INSERT INTO V_TVL
	VALUES (1297,
	1280);
INSERT INTO V_VAL
	VALUES (1303,
	0,
	0,
	25,
	18,
	26,
	0,
	0,
	0,
	0,
	116,
	1254);
INSERT INTO V_IRF
	VALUES (1303,
	1238);
INSERT INTO V_VAL
	VALUES (1296,
	0,
	0,
	25,
	28,
	35,
	0,
	0,
	0,
	0,
	23,
	1254);
INSERT INTO V_AVL
	VALUES (1296,
	1303,
	815,
	1275);
INSERT INTO V_VAL
	VALUES (1300,
	1,
	0,
	26,
	3,
	15,
	0,
	0,
	0,
	0,
	23,
	1254);
INSERT INTO V_TVL
	VALUES (1300,
	1281);
INSERT INTO V_VAL
	VALUES (1304,
	0,
	0,
	26,
	19,
	27,
	0,
	0,
	0,
	0,
	116,
	1254);
INSERT INTO V_IRF
	VALUES (1304,
	1238);
INSERT INTO V_VAL
	VALUES (1299,
	0,
	0,
	26,
	29,
	37,
	0,
	0,
	0,
	0,
	23,
	1254);
INSERT INTO V_AVL
	VALUES (1299,
	1304,
	815,
	1278);
INSERT INTO ACT_BLK
	VALUES (1259,
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
	1219,
	0);
INSERT INTO ACT_SMT
	VALUES (1305,
	1259,
	0,
	35,
	3,
	'TrackLog::addTrackPoint line: 35');
INSERT INTO ACT_AI
	VALUES (1305,
	1306,
	1307,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1307,
	1,
	0,
	35,
	8,
	15,
	0,
	0,
	0,
	0,
	23,
	1259);
INSERT INTO V_TVL
	VALUES (1307,
	1283);
INSERT INTO V_VAL
	VALUES (1306,
	0,
	0,
	35,
	29,
	40,
	35,
	42,
	36,
	66,
	23,
	1259);
INSERT INTO V_MSV
	VALUES (1306,
	0,
	661,
	1,
	35,
	19,
	0);
INSERT INTO V_VAL
	VALUES (1308,
	0,
	0,
	35,
	51,
	62,
	0,
	0,
	0,
	0,
	23,
	1259);
INSERT INTO V_TVL
	VALUES (1308,
	1280);
INSERT INTO V_PAR
	VALUES (1308,
	0,
	1306,
	'fromLat',
	1309,
	35,
	42);
INSERT INTO V_VAL
	VALUES (1309,
	0,
	0,
	35,
	75,
	87,
	0,
	0,
	0,
	0,
	23,
	1259);
INSERT INTO V_TVL
	VALUES (1309,
	1281);
INSERT INTO V_PAR
	VALUES (1309,
	0,
	1306,
	'fromLong',
	1310,
	35,
	65);
INSERT INTO V_VAL
	VALUES (1311,
	0,
	0,
	36,
	45,
	54,
	0,
	0,
	0,
	0,
	116,
	1259);
INSERT INTO V_IRF
	VALUES (1311,
	1223);
INSERT INTO V_VAL
	VALUES (1310,
	0,
	0,
	36,
	56,
	63,
	0,
	0,
	0,
	0,
	23,
	1259);
INSERT INTO V_AVL
	VALUES (1310,
	1311,
	815,
	1275);
INSERT INTO V_PAR
	VALUES (1310,
	0,
	1306,
	'toLat',
	1312,
	36,
	38);
INSERT INTO V_VAL
	VALUES (1313,
	0,
	0,
	36,
	74,
	83,
	0,
	0,
	0,
	0,
	116,
	1259);
INSERT INTO V_IRF
	VALUES (1313,
	1223);
INSERT INTO V_VAL
	VALUES (1312,
	0,
	0,
	36,
	85,
	93,
	0,
	0,
	0,
	0,
	23,
	1259);
INSERT INTO V_AVL
	VALUES (1312,
	1313,
	815,
	1278);
INSERT INTO V_PAR
	VALUES (1312,
	0,
	1306,
	'toLong',
	0,
	36,
	66);
INSERT INTO O_TFR
	VALUES (1314,
	813,
	'clearTrackPoints',
	'',
	94,
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
	1218);
INSERT INTO ACT_OPB
	VALUES (1315,
	1314);
INSERT INTO ACT_ACT
	VALUES (1315,
	'operation',
	0,
	1316,
	0,
	0,
	'TrackLog::clearTrackPoints',
	0);
INSERT INTO ACT_BLK
	VALUES (1316,
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
	1315,
	0);
INSERT INTO ACT_SMT
	VALUES (1317,
	1316,
	1318,
	1,
	1,
	'TrackLog::clearTrackPoints line: 1');
INSERT INTO ACT_SEL
	VALUES (1317,
	1319,
	1,
	'one',
	1320);
INSERT INTO ACT_SR
	VALUES (1317);
INSERT INTO ACT_LNK
	VALUES (1321,
	'',
	1317,
	812,
	0,
	2,
	815,
	1,
	39,
	1,
	50,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1318,
	1316,
	1322,
	2,
	1,
	'TrackLog::clearTrackPoints line: 2');
INSERT INTO ACT_SEL
	VALUES (1318,
	1323,
	1,
	'one',
	1324);
INSERT INTO ACT_SR
	VALUES (1318);
INSERT INTO ACT_LNK
	VALUES (1325,
	'',
	1318,
	820,
	0,
	2,
	815,
	2,
	39,
	2,
	50,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1322,
	1316,
	1326,
	4,
	1,
	'TrackLog::clearTrackPoints line: 4');
INSERT INTO ACT_IF
	VALUES (1322,
	1327,
	1328,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1326,
	1316,
	1329,
	8,
	1,
	'TrackLog::clearTrackPoints line: 8');
INSERT INTO ACT_IF
	VALUES (1326,
	1330,
	1331,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1329,
	1316,
	0,
	12,
	1,
	'TrackLog::clearTrackPoints line: 12');
INSERT INTO ACT_WHL
	VALUES (1329,
	1332,
	1333);
INSERT INTO V_VAL
	VALUES (1320,
	0,
	0,
	1,
	33,
	36,
	0,
	0,
	0,
	0,
	116,
	1316);
INSERT INTO V_IRF
	VALUES (1320,
	1334);
INSERT INTO V_VAL
	VALUES (1324,
	0,
	0,
	2,
	33,
	36,
	0,
	0,
	0,
	0,
	116,
	1316);
INSERT INTO V_IRF
	VALUES (1324,
	1334);
INSERT INTO V_VAL
	VALUES (1335,
	0,
	0,
	4,
	15,
	23,
	0,
	0,
	0,
	0,
	116,
	1316);
INSERT INTO V_IRF
	VALUES (1335,
	1323);
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
	119,
	1316);
INSERT INTO V_UNY
	VALUES (1336,
	1335,
	'empty');
INSERT INTO V_VAL
	VALUES (1328,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1316);
INSERT INTO V_UNY
	VALUES (1328,
	1336,
	'not');
INSERT INTO V_VAL
	VALUES (1337,
	0,
	0,
	8,
	15,
	23,
	0,
	0,
	0,
	0,
	116,
	1316);
INSERT INTO V_IRF
	VALUES (1337,
	1319);
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
	119,
	1316);
INSERT INTO V_UNY
	VALUES (1338,
	1337,
	'empty');
INSERT INTO V_VAL
	VALUES (1331,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1316);
INSERT INTO V_UNY
	VALUES (1331,
	1338,
	'not');
INSERT INTO V_VAL
	VALUES (1339,
	0,
	0,
	12,
	18,
	26,
	0,
	0,
	0,
	0,
	116,
	1316);
INSERT INTO V_IRF
	VALUES (1339,
	1319);
INSERT INTO V_VAL
	VALUES (1340,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1316);
INSERT INTO V_UNY
	VALUES (1340,
	1339,
	'empty');
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
	119,
	1316);
INSERT INTO V_UNY
	VALUES (1332,
	1340,
	'not');
INSERT INTO V_VAR
	VALUES (1319,
	1316,
	'nextPoint',
	1,
	116);
INSERT INTO V_INT
	VALUES (1319,
	0,
	815);
INSERT INTO V_VAR
	VALUES (1334,
	1316,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (1334,
	0,
	813);
INSERT INTO V_VAR
	VALUES (1323,
	1316,
	'lastPoint',
	1,
	116);
INSERT INTO V_INT
	VALUES (1323,
	0,
	815);
INSERT INTO ACT_BLK
	VALUES (1327,
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
	1315,
	0);
INSERT INTO ACT_SMT
	VALUES (1341,
	1327,
	0,
	5,
	3,
	'TrackLog::clearTrackPoints line: 5');
INSERT INTO ACT_UNR
	VALUES (1341,
	1334,
	1323,
	'',
	820,
	5,
	39,
	0,
	0);
INSERT INTO ACT_BLK
	VALUES (1330,
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
	1315,
	0);
INSERT INTO ACT_SMT
	VALUES (1342,
	1330,
	0,
	9,
	3,
	'TrackLog::clearTrackPoints line: 9');
INSERT INTO ACT_UNR
	VALUES (1342,
	1334,
	1319,
	'',
	812,
	9,
	39,
	0,
	0);
INSERT INTO ACT_BLK
	VALUES (1333,
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
	1315,
	0);
INSERT INTO ACT_SMT
	VALUES (1343,
	1333,
	1344,
	13,
	3,
	'TrackLog::clearTrackPoints line: 13');
INSERT INTO ACT_AI
	VALUES (1343,
	1345,
	1346,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1344,
	1333,
	1347,
	14,
	3,
	'TrackLog::clearTrackPoints line: 14');
INSERT INTO ACT_SEL
	VALUES (1344,
	1319,
	0,
	'one',
	1348);
INSERT INTO ACT_SR
	VALUES (1344);
INSERT INTO ACT_LNK
	VALUES (1349,
	'''follows''',
	1344,
	817,
	0,
	2,
	815,
	14,
	46,
	14,
	57,
	14,
	60);
INSERT INTO ACT_SMT
	VALUES (1347,
	1333,
	1350,
	15,
	3,
	'TrackLog::clearTrackPoints line: 15');
INSERT INTO ACT_IF
	VALUES (1347,
	1351,
	1352,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1350,
	1333,
	0,
	18,
	3,
	'TrackLog::clearTrackPoints line: 18');
INSERT INTO ACT_DEL
	VALUES (1350,
	1353);
INSERT INTO V_VAL
	VALUES (1346,
	1,
	1,
	13,
	3,
	11,
	0,
	0,
	0,
	0,
	116,
	1333);
INSERT INTO V_IRF
	VALUES (1346,
	1353);
INSERT INTO V_VAL
	VALUES (1345,
	0,
	0,
	13,
	15,
	23,
	0,
	0,
	0,
	0,
	116,
	1333);
INSERT INTO V_IRF
	VALUES (1345,
	1319);
INSERT INTO V_VAL
	VALUES (1348,
	0,
	0,
	14,
	35,
	43,
	0,
	0,
	0,
	0,
	116,
	1333);
INSERT INTO V_IRF
	VALUES (1348,
	1319);
INSERT INTO V_VAL
	VALUES (1354,
	0,
	0,
	15,
	18,
	26,
	0,
	0,
	0,
	0,
	116,
	1333);
INSERT INTO V_IRF
	VALUES (1354,
	1319);
INSERT INTO V_VAL
	VALUES (1352,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1333);
INSERT INTO V_UNY
	VALUES (1352,
	1354,
	'not_empty');
INSERT INTO V_VAR
	VALUES (1353,
	1333,
	'prevPoint',
	1,
	116);
INSERT INTO V_INT
	VALUES (1353,
	0,
	815);
INSERT INTO ACT_BLK
	VALUES (1351,
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
	1315,
	0);
INSERT INTO ACT_SMT
	VALUES (1355,
	1351,
	0,
	16,
	5,
	'TrackLog::clearTrackPoints line: 16');
INSERT INTO ACT_UNR
	VALUES (1355,
	1353,
	1319,
	'''follows''',
	817,
	16,
	46,
	16,
	49);
INSERT INTO O_TFR
	VALUES (1356,
	813,
	'addLapMarker',
	'',
	94,
	1,
	'select one timer related by self->WorkoutSession[R4.''represents path for'']->WorkoutTimer[R8.''is timed by''];
create object instance lapMarker of LapMarker;
lapMarker.lapTime = timer.time; 
relate self to lapMarker across R5.''has laps defined by'';

// Notify display of the new value.
self.updateDisplay();',
	1,
	'',
	1314);
INSERT INTO ACT_OPB
	VALUES (1357,
	1356);
INSERT INTO ACT_ACT
	VALUES (1357,
	'operation',
	0,
	1358,
	0,
	0,
	'TrackLog::addLapMarker',
	0);
INSERT INTO ACT_BLK
	VALUES (1358,
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
	1357,
	0);
INSERT INTO ACT_SMT
	VALUES (1359,
	1358,
	1360,
	1,
	1,
	'TrackLog::addLapMarker line: 1');
INSERT INTO ACT_SEL
	VALUES (1359,
	1361,
	1,
	'one',
	1362);
INSERT INTO ACT_SR
	VALUES (1359);
INSERT INTO ACT_LNK
	VALUES (1363,
	'''represents path for''',
	1359,
	832,
	1364,
	2,
	705,
	1,
	35,
	1,
	50,
	1,
	53);
INSERT INTO ACT_LNK
	VALUES (1364,
	'''is timed by''',
	0,
	829,
	0,
	2,
	719,
	1,
	77,
	1,
	90,
	1,
	93);
INSERT INTO ACT_SMT
	VALUES (1360,
	1358,
	1365,
	2,
	1,
	'TrackLog::addLapMarker line: 2');
INSERT INTO ACT_CR
	VALUES (1360,
	1366,
	1,
	824,
	2,
	37);
INSERT INTO ACT_SMT
	VALUES (1365,
	1358,
	1367,
	3,
	1,
	'TrackLog::addLapMarker line: 3');
INSERT INTO ACT_AI
	VALUES (1365,
	1368,
	1369,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1367,
	1358,
	1370,
	4,
	1,
	'TrackLog::addLapMarker line: 4');
INSERT INTO ACT_REL
	VALUES (1367,
	1371,
	1366,
	'''has laps defined by''',
	823,
	4,
	33,
	4,
	36);
INSERT INTO ACT_SMT
	VALUES (1370,
	1358,
	0,
	7,
	1,
	'TrackLog::addLapMarker line: 7');
INSERT INTO ACT_TFM
	VALUES (1370,
	1268,
	1371,
	7,
	6,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1362,
	0,
	0,
	1,
	29,
	32,
	0,
	0,
	0,
	0,
	116,
	1358);
INSERT INTO V_IRF
	VALUES (1362,
	1371);
INSERT INTO V_VAL
	VALUES (1372,
	1,
	0,
	3,
	1,
	9,
	0,
	0,
	0,
	0,
	116,
	1358);
INSERT INTO V_IRF
	VALUES (1372,
	1366);
INSERT INTO V_VAL
	VALUES (1369,
	1,
	0,
	3,
	11,
	17,
	0,
	0,
	0,
	0,
	14,
	1358);
INSERT INTO V_AVL
	VALUES (1369,
	1372,
	824,
	1217);
INSERT INTO V_VAL
	VALUES (1373,
	0,
	0,
	3,
	21,
	25,
	0,
	0,
	0,
	0,
	116,
	1358);
INSERT INTO V_IRF
	VALUES (1373,
	1361);
INSERT INTO V_VAL
	VALUES (1368,
	0,
	0,
	3,
	27,
	30,
	0,
	0,
	0,
	0,
	14,
	1358);
INSERT INTO V_AVL
	VALUES (1368,
	1373,
	719,
	1014);
INSERT INTO V_VAR
	VALUES (1361,
	1358,
	'timer',
	1,
	116);
INSERT INTO V_INT
	VALUES (1361,
	0,
	719);
INSERT INTO V_VAR
	VALUES (1371,
	1358,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (1371,
	0,
	813);
INSERT INTO V_VAR
	VALUES (1366,
	1358,
	'lapMarker',
	1,
	116);
INSERT INTO V_INT
	VALUES (1366,
	0,
	824);
INSERT INTO O_TFR
	VALUES (1374,
	813,
	'clearLapMarkers',
	'',
	94,
	1,
	'select many lapMarkers related by self->LapMarker[R5];
for each lapMarker in lapMarkers
  unrelate self from lapMarker across R5;
  delete object instance lapMarker;
end for;',
	1,
	'',
	1356);
INSERT INTO ACT_OPB
	VALUES (1375,
	1374);
INSERT INTO ACT_ACT
	VALUES (1375,
	'operation',
	0,
	1376,
	0,
	0,
	'TrackLog::clearLapMarkers',
	0);
INSERT INTO ACT_BLK
	VALUES (1376,
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
	1375,
	0);
INSERT INTO ACT_SMT
	VALUES (1377,
	1376,
	1378,
	1,
	1,
	'TrackLog::clearLapMarkers line: 1');
INSERT INTO ACT_SEL
	VALUES (1377,
	1379,
	1,
	'many',
	1380);
INSERT INTO ACT_SR
	VALUES (1377);
INSERT INTO ACT_LNK
	VALUES (1381,
	'',
	1377,
	823,
	0,
	3,
	824,
	1,
	41,
	1,
	51,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1378,
	1376,
	0,
	2,
	1,
	'TrackLog::clearLapMarkers line: 2');
INSERT INTO ACT_FOR
	VALUES (1378,
	1382,
	1,
	1383,
	1379,
	824);
INSERT INTO V_VAL
	VALUES (1380,
	0,
	0,
	1,
	35,
	38,
	0,
	0,
	0,
	0,
	116,
	1376);
INSERT INTO V_IRF
	VALUES (1380,
	1384);
INSERT INTO V_VAR
	VALUES (1379,
	1376,
	'lapMarkers',
	1,
	607);
INSERT INTO V_INS
	VALUES (1379,
	824);
INSERT INTO V_VAR
	VALUES (1384,
	1376,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (1384,
	0,
	813);
INSERT INTO V_VAR
	VALUES (1383,
	1376,
	'lapMarker',
	1,
	116);
INSERT INTO V_INT
	VALUES (1383,
	1,
	824);
INSERT INTO ACT_BLK
	VALUES (1382,
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
	1375,
	0);
INSERT INTO ACT_SMT
	VALUES (1385,
	1382,
	1386,
	3,
	3,
	'TrackLog::clearLapMarkers line: 3');
INSERT INTO ACT_UNR
	VALUES (1385,
	1384,
	1383,
	'',
	823,
	3,
	39,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1386,
	1382,
	0,
	4,
	3,
	'TrackLog::clearLapMarkers line: 4');
INSERT INTO ACT_DEL
	VALUES (1386,
	1383);
INSERT INTO O_TFR
	VALUES (1268,
	813,
	'updateDisplay',
	'',
	94,
	1,
	'// Update the display so that newly updated values will be shown.
select one display related by 
  self->WorkoutSession[R4.''represents path for'']->Display[R7.''current status indicated on''];
generate Display2:refresh to display;',
	1,
	'',
	1374);
INSERT INTO ACT_OPB
	VALUES (1387,
	1268);
INSERT INTO ACT_ACT
	VALUES (1387,
	'operation',
	0,
	1388,
	0,
	0,
	'TrackLog::updateDisplay',
	0);
INSERT INTO ACT_BLK
	VALUES (1388,
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
	1387,
	0);
INSERT INTO ACT_SMT
	VALUES (1389,
	1388,
	1390,
	2,
	1,
	'TrackLog::updateDisplay line: 2');
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
	'''represents path for''',
	1389,
	832,
	1394,
	2,
	705,
	3,
	9,
	3,
	24,
	3,
	27);
INSERT INTO ACT_LNK
	VALUES (1394,
	'''current status indicated on''',
	0,
	746,
	0,
	2,
	747,
	3,
	51,
	3,
	59,
	3,
	62);
INSERT INTO ACT_SMT
	VALUES (1390,
	1388,
	0,
	4,
	1,
	'TrackLog::updateDisplay line: 4');
INSERT INTO E_ESS
	VALUES (1390,
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
	VALUES (1390);
INSERT INTO E_GSME
	VALUES (1390,
	1065);
INSERT INTO E_GEN
	VALUES (1390,
	1391);
INSERT INTO V_VAL
	VALUES (1392,
	0,
	0,
	3,
	3,
	6,
	0,
	0,
	0,
	0,
	116,
	1388);
INSERT INTO V_IRF
	VALUES (1392,
	1395);
INSERT INTO V_VAR
	VALUES (1391,
	1388,
	'display',
	1,
	116);
INSERT INTO V_INT
	VALUES (1391,
	0,
	747);
INSERT INTO V_VAR
	VALUES (1395,
	1388,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (1395,
	0,
	813);
INSERT INTO O_ID
	VALUES (0,
	813);
INSERT INTO O_ID
	VALUES (1,
	813);
INSERT INTO O_ID
	VALUES (2,
	813);
INSERT INTO PE_PE
	VALUES (815,
	1,
	811,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (815,
	'TrackPoint',
	3,
	'TrackPoint',
	'Each instance represents a single location through which the device
passed during a workout session.',
	0);
INSERT INTO O_NBATTR
	VALUES (1271,
	815);
INSERT INTO O_BATTR
	VALUES (1271,
	815);
INSERT INTO O_ATTR
	VALUES (1271,
	815,
	0,
	'time',
	'Number of seconds between start time for the associated workout and recording of this location.
',
	'',
	'time',
	0,
	14,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1278,
	815);
INSERT INTO O_BATTR
	VALUES (1278,
	815);
INSERT INTO O_ATTR
	VALUES (1278,
	815,
	1271,
	'longitude',
	'Longitude, expressed in decimal degrees where eastern figures are positve
and western ones are negative.',
	'',
	'longitude',
	0,
	23,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1275,
	815);
INSERT INTO O_BATTR
	VALUES (1275,
	815);
INSERT INTO O_ATTR
	VALUES (1275,
	815,
	1278,
	'latitude',
	'Latitude, expressed in decimal degrees, where northern figures are positive
and southern ones are negative.',
	'',
	'latitude',
	0,
	23,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	815);
INSERT INTO O_ID
	VALUES (1,
	815);
INSERT INTO O_ID
	VALUES (2,
	815);
INSERT INTO PE_PE
	VALUES (705,
	1,
	811,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (705,
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
	VALUES (711,
	705,
	'addHeartRateSample',
	'',
	94,
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
	VALUES (1396,
	711,
	'heartRate',
	14,
	0,
	'',
	0,
	'');
INSERT INTO ACT_OPB
	VALUES (1397,
	711);
INSERT INTO ACT_ACT
	VALUES (1397,
	'operation',
	0,
	1398,
	0,
	0,
	'WorkoutSession::addHeartRateSample',
	0);
INSERT INTO ACT_BLK
	VALUES (1398,
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
	1397,
	0);
INSERT INTO ACT_SMT
	VALUES (1399,
	1398,
	1400,
	3,
	1,
	'WorkoutSession::addHeartRateSample line: 3');
INSERT INTO ACT_SEL
	VALUES (1399,
	1401,
	1,
	'one',
	1402);
INSERT INTO ACT_SR
	VALUES (1399);
INSERT INTO ACT_LNK
	VALUES (1403,
	'''is timed by''',
	1399,
	829,
	0,
	2,
	719,
	3,
	42,
	3,
	55,
	3,
	58);
INSERT INTO ACT_SMT
	VALUES (1400,
	1398,
	1404,
	6,
	1,
	'WorkoutSession::addHeartRateSample line: 6');
INSERT INTO ACT_CR
	VALUES (1400,
	1405,
	1,
	836,
	6,
	34);
INSERT INTO ACT_SMT
	VALUES (1404,
	1398,
	1406,
	7,
	1,
	'WorkoutSession::addHeartRateSample line: 7');
INSERT INTO ACT_AI
	VALUES (1404,
	1407,
	1408,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1406,
	1398,
	1409,
	8,
	1,
	'WorkoutSession::addHeartRateSample line: 8');
INSERT INTO ACT_AI
	VALUES (1406,
	1410,
	1411,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1409,
	1398,
	1412,
	9,
	1,
	'WorkoutSession::addHeartRateSample line: 9');
INSERT INTO ACT_REL
	VALUES (1409,
	1413,
	1405,
	'''tracks heart rate over time as''',
	835,
	9,
	30,
	9,
	33);
INSERT INTO ACT_SMT
	VALUES (1412,
	1398,
	1414,
	12,
	1,
	'WorkoutSession::addHeartRateSample line: 12');
INSERT INTO ACT_SEL
	VALUES (1412,
	1415,
	1,
	'one',
	1416);
INSERT INTO ACT_SR
	VALUES (1412);
INSERT INTO ACT_LNK
	VALUES (1417,
	'''current status indicated on''',
	1412,
	746,
	0,
	2,
	747,
	12,
	37,
	12,
	45,
	12,
	48);
INSERT INTO ACT_SMT
	VALUES (1414,
	1398,
	0,
	13,
	1,
	'WorkoutSession::addHeartRateSample line: 13');
INSERT INTO E_ESS
	VALUES (1414,
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
	VALUES (1414);
INSERT INTO E_GSME
	VALUES (1414,
	1065);
INSERT INTO E_GEN
	VALUES (1414,
	1415);
INSERT INTO V_VAL
	VALUES (1402,
	0,
	0,
	3,
	36,
	39,
	0,
	0,
	0,
	0,
	116,
	1398);
INSERT INTO V_IRF
	VALUES (1402,
	1413);
INSERT INTO V_VAL
	VALUES (1418,
	1,
	0,
	7,
	1,
	6,
	0,
	0,
	0,
	0,
	116,
	1398);
INSERT INTO V_IRF
	VALUES (1418,
	1405);
INSERT INTO V_VAL
	VALUES (1408,
	1,
	0,
	7,
	8,
	16,
	0,
	0,
	0,
	0,
	14,
	1398);
INSERT INTO V_AVL
	VALUES (1408,
	1418,
	836,
	1215);
INSERT INTO V_VAL
	VALUES (1407,
	0,
	0,
	7,
	26,
	34,
	0,
	0,
	0,
	0,
	14,
	1398);
INSERT INTO V_PVL
	VALUES (1407,
	0,
	0,
	1396,
	0);
INSERT INTO V_VAL
	VALUES (1419,
	1,
	0,
	8,
	1,
	6,
	0,
	0,
	0,
	0,
	116,
	1398);
INSERT INTO V_IRF
	VALUES (1419,
	1405);
INSERT INTO V_VAL
	VALUES (1411,
	1,
	0,
	8,
	8,
	11,
	0,
	0,
	0,
	0,
	14,
	1398);
INSERT INTO V_AVL
	VALUES (1411,
	1419,
	836,
	1216);
INSERT INTO V_VAL
	VALUES (1420,
	0,
	0,
	8,
	15,
	26,
	0,
	0,
	0,
	0,
	116,
	1398);
INSERT INTO V_IRF
	VALUES (1420,
	1401);
INSERT INTO V_VAL
	VALUES (1410,
	0,
	0,
	8,
	28,
	31,
	0,
	0,
	0,
	0,
	14,
	1398);
INSERT INTO V_AVL
	VALUES (1410,
	1420,
	719,
	1014);
INSERT INTO V_VAL
	VALUES (1416,
	0,
	0,
	12,
	31,
	34,
	0,
	0,
	0,
	0,
	116,
	1398);
INSERT INTO V_IRF
	VALUES (1416,
	1413);
INSERT INTO V_VAR
	VALUES (1401,
	1398,
	'workoutTimer',
	1,
	116);
INSERT INTO V_INT
	VALUES (1401,
	0,
	719);
INSERT INTO V_VAR
	VALUES (1413,
	1398,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (1413,
	0,
	705);
INSERT INTO V_VAR
	VALUES (1405,
	1398,
	'sample',
	1,
	116);
INSERT INTO V_INT
	VALUES (1405,
	0,
	836);
INSERT INTO V_VAR
	VALUES (1415,
	1398,
	'display',
	1,
	116);
INSERT INTO V_INT
	VALUES (1415,
	0,
	747);
INSERT INTO O_TFR
	VALUES (1421,
	705,
	'clearHeartRateSamples',
	'',
	94,
	1,
	'select many samples related by self->HeartRateSample[R6];
for each sample in samples
  unrelate self from sample across R6;
  delete object instance sample;
end for;',
	1,
	'',
	711);
INSERT INTO ACT_OPB
	VALUES (1422,
	1421);
INSERT INTO ACT_ACT
	VALUES (1422,
	'operation',
	0,
	1423,
	0,
	0,
	'WorkoutSession::clearHeartRateSamples',
	0);
INSERT INTO ACT_BLK
	VALUES (1423,
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
	1422,
	0);
INSERT INTO ACT_SMT
	VALUES (1424,
	1423,
	1425,
	1,
	1,
	'WorkoutSession::clearHeartRateSamples line: 1');
INSERT INTO ACT_SEL
	VALUES (1424,
	1426,
	1,
	'many',
	1427);
INSERT INTO ACT_SR
	VALUES (1424);
INSERT INTO ACT_LNK
	VALUES (1428,
	'',
	1424,
	835,
	0,
	3,
	836,
	1,
	38,
	1,
	54,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1425,
	1423,
	0,
	2,
	1,
	'WorkoutSession::clearHeartRateSamples line: 2');
INSERT INTO ACT_FOR
	VALUES (1425,
	1429,
	1,
	1430,
	1426,
	836);
INSERT INTO V_VAL
	VALUES (1427,
	0,
	0,
	1,
	32,
	35,
	0,
	0,
	0,
	0,
	116,
	1423);
INSERT INTO V_IRF
	VALUES (1427,
	1431);
INSERT INTO V_VAR
	VALUES (1426,
	1423,
	'samples',
	1,
	607);
INSERT INTO V_INS
	VALUES (1426,
	836);
INSERT INTO V_VAR
	VALUES (1431,
	1423,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (1431,
	0,
	705);
INSERT INTO V_VAR
	VALUES (1430,
	1423,
	'sample',
	1,
	116);
INSERT INTO V_INT
	VALUES (1430,
	1,
	836);
INSERT INTO ACT_BLK
	VALUES (1429,
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
	1422,
	0);
INSERT INTO ACT_SMT
	VALUES (1432,
	1429,
	1433,
	3,
	3,
	'WorkoutSession::clearHeartRateSamples line: 3');
INSERT INTO ACT_UNR
	VALUES (1432,
	1431,
	1430,
	'',
	835,
	3,
	36,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1433,
	1429,
	0,
	4,
	3,
	'WorkoutSession::clearHeartRateSamples line: 4');
INSERT INTO ACT_DEL
	VALUES (1433,
	1430);
INSERT INTO O_TFR
	VALUES (1434,
	705,
	'initialize',
	'',
	94,
	1,
	'// Initialize this workout session.

self.startDate = TIM::current_date();
self.startTime = TIM::current_clock();
self.accumulatedDistance = 0.0;',
	1,
	'',
	1421);
INSERT INTO ACT_OPB
	VALUES (1435,
	1434);
INSERT INTO ACT_ACT
	VALUES (1435,
	'operation',
	0,
	1436,
	0,
	0,
	'WorkoutSession::initialize',
	0);
INSERT INTO ACT_BLK
	VALUES (1436,
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
	1435,
	0);
INSERT INTO ACT_SMT
	VALUES (1437,
	1436,
	1438,
	3,
	1,
	'WorkoutSession::initialize line: 3');
INSERT INTO ACT_AI
	VALUES (1437,
	1439,
	1440,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1438,
	1436,
	1441,
	4,
	1,
	'WorkoutSession::initialize line: 4');
INSERT INTO ACT_AI
	VALUES (1438,
	1442,
	1443,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1441,
	1436,
	0,
	5,
	1,
	'WorkoutSession::initialize line: 5');
INSERT INTO ACT_AI
	VALUES (1441,
	1444,
	1445,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1446,
	1,
	0,
	3,
	1,
	4,
	0,
	0,
	0,
	0,
	116,
	1436);
INSERT INTO V_IRF
	VALUES (1446,
	1447);
INSERT INTO V_VAL
	VALUES (1440,
	1,
	0,
	3,
	6,
	14,
	0,
	0,
	0,
	0,
	260,
	1436);
INSERT INTO V_AVL
	VALUES (1440,
	1446,
	705,
	1448);
INSERT INTO V_VAL
	VALUES (1439,
	0,
	0,
	3,
	23,
	-1,
	0,
	0,
	0,
	0,
	260,
	1436);
INSERT INTO V_BRV
	VALUES (1439,
	890,
	1,
	3,
	18);
INSERT INTO V_VAL
	VALUES (1449,
	1,
	0,
	4,
	1,
	4,
	0,
	0,
	0,
	0,
	116,
	1436);
INSERT INTO V_IRF
	VALUES (1449,
	1447);
INSERT INTO V_VAL
	VALUES (1443,
	1,
	0,
	4,
	6,
	14,
	0,
	0,
	0,
	0,
	297,
	1436);
INSERT INTO V_AVL
	VALUES (1443,
	1449,
	705,
	1450);
INSERT INTO V_VAL
	VALUES (1442,
	0,
	0,
	4,
	23,
	-1,
	0,
	0,
	0,
	0,
	297,
	1436);
INSERT INTO V_BRV
	VALUES (1442,
	926,
	1,
	4,
	18);
INSERT INTO V_VAL
	VALUES (1451,
	1,
	0,
	5,
	1,
	4,
	0,
	0,
	0,
	0,
	116,
	1436);
INSERT INTO V_IRF
	VALUES (1451,
	1447);
INSERT INTO V_VAL
	VALUES (1445,
	1,
	0,
	5,
	6,
	24,
	0,
	0,
	0,
	0,
	23,
	1436);
INSERT INTO V_AVL
	VALUES (1445,
	1451,
	705,
	1086);
INSERT INTO V_VAL
	VALUES (1444,
	0,
	0,
	5,
	28,
	30,
	0,
	0,
	0,
	0,
	23,
	1436);
INSERT INTO V_LRL
	VALUES (1444,
	'0.0');
INSERT INTO V_VAR
	VALUES (1447,
	1436,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (1447,
	0,
	705);
INSERT INTO O_TFR
	VALUES (759,
	705,
	'sessioncreate',
	'',
	94,
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
	1434);
INSERT INTO ACT_OPB
	VALUES (1452,
	759);
INSERT INTO ACT_ACT
	VALUES (1452,
	'class operation',
	0,
	1453,
	0,
	0,
	'WorkoutSession::sessioncreate',
	0);
INSERT INTO ACT_BLK
	VALUES (1453,
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
	1452,
	0);
INSERT INTO ACT_SMT
	VALUES (1454,
	1453,
	1455,
	4,
	1,
	'WorkoutSession::sessioncreate line: 4');
INSERT INTO ACT_FIO
	VALUES (1454,
	1456,
	1,
	'any',
	705,
	4,
	38);
INSERT INTO ACT_SMT
	VALUES (1455,
	1453,
	0,
	6,
	1,
	'WorkoutSession::sessioncreate line: 6');
INSERT INTO ACT_IF
	VALUES (1455,
	1457,
	1458,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1459,
	0,
	0,
	6,
	12,
	18,
	0,
	0,
	0,
	0,
	116,
	1453);
INSERT INTO V_IRF
	VALUES (1459,
	1456);
INSERT INTO V_VAL
	VALUES (1458,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1453);
INSERT INTO V_UNY
	VALUES (1458,
	1459,
	'empty');
INSERT INTO V_VAR
	VALUES (1456,
	1453,
	'session',
	1,
	116);
INSERT INTO V_INT
	VALUES (1456,
	0,
	705);
INSERT INTO ACT_BLK
	VALUES (1457,
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
	1452,
	0);
INSERT INTO ACT_SMT
	VALUES (1460,
	1457,
	1461,
	9,
	3,
	'WorkoutSession::sessioncreate line: 9');
INSERT INTO ACT_CR
	VALUES (1460,
	1456,
	0,
	705,
	9,
	37);
INSERT INTO ACT_SMT
	VALUES (1461,
	1457,
	1462,
	10,
	3,
	'WorkoutSession::sessioncreate line: 10');
INSERT INTO ACT_TFM
	VALUES (1461,
	1434,
	1456,
	10,
	11,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1462,
	1457,
	1463,
	13,
	3,
	'WorkoutSession::sessioncreate line: 13');
INSERT INTO ACT_CR
	VALUES (1462,
	1464,
	1,
	719,
	13,
	42);
INSERT INTO ACT_SMT
	VALUES (1463,
	1457,
	1465,
	14,
	3,
	'WorkoutSession::sessioncreate line: 14');
INSERT INTO ACT_TFM
	VALUES (1463,
	1466,
	1464,
	14,
	16,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1465,
	1457,
	1467,
	17,
	3,
	'WorkoutSession::sessioncreate line: 17');
INSERT INTO ACT_CR
	VALUES (1465,
	1468,
	1,
	813,
	17,
	38);
INSERT INTO ACT_SMT
	VALUES (1467,
	1457,
	1469,
	20,
	3,
	'WorkoutSession::sessioncreate line: 20');
INSERT INTO ACT_CR
	VALUES (1467,
	1470,
	1,
	747,
	20,
	37);
INSERT INTO ACT_SMT
	VALUES (1469,
	1457,
	1471,
	23,
	3,
	'WorkoutSession::sessioncreate line: 23');
INSERT INTO ACT_REL
	VALUES (1469,
	1468,
	1456,
	'''represents path for''',
	832,
	23,
	37,
	23,
	40);
INSERT INTO ACT_SMT
	VALUES (1471,
	1457,
	1472,
	24,
	3,
	'WorkoutSession::sessioncreate line: 24');
INSERT INTO ACT_REL
	VALUES (1471,
	1464,
	1456,
	'''acts as the stopwatch for''',
	829,
	24,
	41,
	24,
	44);
INSERT INTO ACT_SMT
	VALUES (1472,
	1457,
	0,
	25,
	3,
	'WorkoutSession::sessioncreate line: 25');
INSERT INTO ACT_REL
	VALUES (1472,
	1470,
	1456,
	'''indicates current status of''',
	746,
	25,
	36,
	25,
	39);
INSERT INTO V_VAR
	VALUES (1464,
	1457,
	'workoutTimer',
	1,
	116);
INSERT INTO V_INT
	VALUES (1464,
	0,
	719);
INSERT INTO V_VAR
	VALUES (1468,
	1457,
	'trackLog',
	1,
	116);
INSERT INTO V_INT
	VALUES (1468,
	0,
	813);
INSERT INTO V_VAR
	VALUES (1470,
	1457,
	'display',
	1,
	116);
INSERT INTO V_INT
	VALUES (1470,
	0,
	747);
INSERT INTO O_TFR
	VALUES (1473,
	705,
	'reset',
	'',
	94,
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
	759);
INSERT INTO ACT_OPB
	VALUES (1474,
	1473);
INSERT INTO ACT_ACT
	VALUES (1474,
	'operation',
	0,
	1475,
	0,
	0,
	'WorkoutSession::reset',
	0);
INSERT INTO ACT_BLK
	VALUES (1475,
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
	1474,
	0);
INSERT INTO ACT_SMT
	VALUES (1476,
	1475,
	1477,
	5,
	1,
	'WorkoutSession::reset line: 5');
INSERT INTO ACT_SEL
	VALUES (1476,
	1478,
	1,
	'one',
	1479);
INSERT INTO ACT_SR
	VALUES (1476);
INSERT INTO ACT_LNK
	VALUES (1480,
	'''is timed by''',
	1476,
	829,
	0,
	2,
	719,
	5,
	42,
	5,
	55,
	5,
	58);
INSERT INTO ACT_SMT
	VALUES (1477,
	1475,
	1481,
	6,
	1,
	'WorkoutSession::reset line: 6');
INSERT INTO ACT_TFM
	VALUES (1477,
	1466,
	1478,
	6,
	14,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1481,
	1475,
	1482,
	9,
	1,
	'WorkoutSession::reset line: 9');
INSERT INTO ACT_SEL
	VALUES (1481,
	1483,
	1,
	'one',
	1484);
INSERT INTO ACT_SR
	VALUES (1481);
INSERT INTO ACT_LNK
	VALUES (1485,
	'''captures path in''',
	1481,
	832,
	0,
	2,
	813,
	9,
	38,
	9,
	47,
	9,
	50);
INSERT INTO ACT_SMT
	VALUES (1482,
	1475,
	1486,
	10,
	1,
	'WorkoutSession::reset line: 10');
INSERT INTO ACT_TFM
	VALUES (1482,
	1314,
	1483,
	10,
	10,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1486,
	1475,
	1487,
	11,
	1,
	'WorkoutSession::reset line: 11');
INSERT INTO ACT_TFM
	VALUES (1486,
	1374,
	1483,
	11,
	10,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1487,
	1475,
	1488,
	14,
	1,
	'WorkoutSession::reset line: 14');
INSERT INTO ACT_SEL
	VALUES (1487,
	1489,
	1,
	'many',
	1490);
INSERT INTO ACT_SR
	VALUES (1487);
INSERT INTO ACT_LNK
	VALUES (1491,
	'''includes''',
	1487,
	795,
	0,
	3,
	776,
	14,
	40,
	14,
	49,
	14,
	53);
INSERT INTO ACT_SMT
	VALUES (1488,
	1475,
	1492,
	15,
	1,
	'WorkoutSession::reset line: 15');
INSERT INTO ACT_FOR
	VALUES (1488,
	1493,
	1,
	1494,
	1489,
	776);
INSERT INTO ACT_SMT
	VALUES (1492,
	1475,
	1495,
	21,
	1,
	'WorkoutSession::reset line: 21');
INSERT INTO ACT_SEL
	VALUES (1492,
	1496,
	1,
	'one',
	1497);
INSERT INTO ACT_SR
	VALUES (1492);
INSERT INTO ACT_LNK
	VALUES (1498,
	'''is currently executing''',
	1492,
	845,
	0,
	2,
	841,
	21,
	43,
	21,
	48,
	21,
	52);
INSERT INTO ACT_SMT
	VALUES (1495,
	1475,
	1499,
	22,
	1,
	'WorkoutSession::reset line: 22');
INSERT INTO ACT_IF
	VALUES (1495,
	1500,
	1501,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1499,
	1475,
	1502,
	33,
	1,
	'WorkoutSession::reset line: 33');
INSERT INTO ACT_SEL
	VALUES (1499,
	1503,
	1,
	'many',
	1504);
INSERT INTO ACT_SR
	VALUES (1499);
INSERT INTO ACT_LNK
	VALUES (1505,
	'''has executed''',
	1499,
	852,
	0,
	3,
	841,
	33,
	36,
	33,
	41,
	33,
	45);
INSERT INTO ACT_SMT
	VALUES (1502,
	1475,
	1506,
	34,
	1,
	'WorkoutSession::reset line: 34');
INSERT INTO ACT_FOR
	VALUES (1502,
	1507,
	1,
	1508,
	1503,
	841);
INSERT INTO ACT_SMT
	VALUES (1506,
	1475,
	1509,
	45,
	1,
	'WorkoutSession::reset line: 45');
INSERT INTO ACT_AI
	VALUES (1506,
	1510,
	1511,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1509,
	1475,
	0,
	46,
	1,
	'WorkoutSession::reset line: 46');
INSERT INTO ACT_TFM
	VALUES (1509,
	1421,
	1512,
	46,
	6,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1479,
	0,
	0,
	5,
	36,
	39,
	0,
	0,
	0,
	0,
	116,
	1475);
INSERT INTO V_IRF
	VALUES (1479,
	1512);
INSERT INTO V_VAL
	VALUES (1484,
	0,
	0,
	9,
	32,
	35,
	0,
	0,
	0,
	0,
	116,
	1475);
INSERT INTO V_IRF
	VALUES (1484,
	1512);
INSERT INTO V_VAL
	VALUES (1490,
	0,
	0,
	14,
	34,
	37,
	0,
	0,
	0,
	0,
	116,
	1475);
INSERT INTO V_IRF
	VALUES (1490,
	1512);
INSERT INTO V_VAL
	VALUES (1497,
	0,
	0,
	21,
	37,
	40,
	0,
	0,
	0,
	0,
	116,
	1475);
INSERT INTO V_IRF
	VALUES (1497,
	1512);
INSERT INTO V_VAL
	VALUES (1513,
	0,
	0,
	22,
	16,
	28,
	0,
	0,
	0,
	0,
	116,
	1475);
INSERT INTO V_IRF
	VALUES (1513,
	1496);
INSERT INTO V_VAL
	VALUES (1514,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1475);
INSERT INTO V_UNY
	VALUES (1514,
	1513,
	'empty');
INSERT INTO V_VAL
	VALUES (1501,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1475);
INSERT INTO V_UNY
	VALUES (1501,
	1514,
	'not');
INSERT INTO V_VAL
	VALUES (1504,
	0,
	0,
	33,
	30,
	33,
	0,
	0,
	0,
	0,
	116,
	1475);
INSERT INTO V_IRF
	VALUES (1504,
	1512);
INSERT INTO V_VAL
	VALUES (1515,
	1,
	0,
	45,
	1,
	4,
	0,
	0,
	0,
	0,
	116,
	1475);
INSERT INTO V_IRF
	VALUES (1515,
	1512);
INSERT INTO V_VAL
	VALUES (1511,
	1,
	0,
	45,
	6,
	24,
	0,
	0,
	0,
	0,
	23,
	1475);
INSERT INTO V_AVL
	VALUES (1511,
	1515,
	705,
	1086);
INSERT INTO V_VAL
	VALUES (1510,
	0,
	0,
	45,
	28,
	30,
	0,
	0,
	0,
	0,
	23,
	1475);
INSERT INTO V_LRL
	VALUES (1510,
	'0.0');
INSERT INTO V_VAR
	VALUES (1478,
	1475,
	'workoutTimer',
	1,
	116);
INSERT INTO V_INT
	VALUES (1478,
	0,
	719);
INSERT INTO V_VAR
	VALUES (1512,
	1475,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (1512,
	0,
	705);
INSERT INTO V_VAR
	VALUES (1483,
	1475,
	'trackLog',
	1,
	116);
INSERT INTO V_INT
	VALUES (1483,
	0,
	813);
INSERT INTO V_VAR
	VALUES (1489,
	1475,
	'goalSpecs',
	1,
	607);
INSERT INTO V_INS
	VALUES (1489,
	776);
INSERT INTO V_VAR
	VALUES (1494,
	1475,
	'goalSpec',
	1,
	116);
INSERT INTO V_INT
	VALUES (1494,
	1,
	776);
INSERT INTO V_VAR
	VALUES (1496,
	1475,
	'executingGoal',
	1,
	116);
INSERT INTO V_INT
	VALUES (1496,
	0,
	841);
INSERT INTO V_VAR
	VALUES (1503,
	1475,
	'goals',
	1,
	607);
INSERT INTO V_INS
	VALUES (1503,
	841);
INSERT INTO V_VAR
	VALUES (1508,
	1475,
	'goal',
	1,
	116);
INSERT INTO V_INT
	VALUES (1508,
	1,
	841);
INSERT INTO ACT_BLK
	VALUES (1493,
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
	1474,
	0);
INSERT INTO ACT_SMT
	VALUES (1516,
	1493,
	1517,
	16,
	3,
	'WorkoutSession::reset line: 16');
INSERT INTO ACT_UNR
	VALUES (1516,
	1512,
	1494,
	'''includes''',
	795,
	16,
	38,
	16,
	42);
INSERT INTO ACT_SMT
	VALUES (1517,
	1493,
	0,
	17,
	3,
	'WorkoutSession::reset line: 17');
INSERT INTO ACT_DEL
	VALUES (1517,
	1494);
INSERT INTO ACT_BLK
	VALUES (1500,
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
	1474,
	0);
INSERT INTO ACT_SMT
	VALUES (1518,
	1500,
	1519,
	23,
	3,
	'WorkoutSession::reset line: 23');
INSERT INTO ACT_SEL
	VALUES (1518,
	1520,
	1,
	'one',
	1521);
INSERT INTO ACT_SR
	VALUES (1518);
INSERT INTO ACT_LNK
	VALUES (1522,
	'''has open''',
	1518,
	855,
	0,
	2,
	850,
	23,
	56,
	23,
	68,
	23,
	72);
INSERT INTO ACT_SMT
	VALUES (1519,
	1500,
	1523,
	24,
	3,
	'WorkoutSession::reset line: 24');
INSERT INTO ACT_IF
	VALUES (1519,
	1524,
	1525,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1523,
	1500,
	1526,
	28,
	3,
	'WorkoutSession::reset line: 28');
INSERT INTO ACT_UNR
	VALUES (1523,
	1512,
	1496,
	'''is currently executing''',
	845,
	28,
	43,
	28,
	47);
INSERT INTO ACT_SMT
	VALUES (1526,
	1500,
	0,
	29,
	3,
	'WorkoutSession::reset line: 29');
INSERT INTO ACT_DEL
	VALUES (1526,
	1496);
INSERT INTO V_VAL
	VALUES (1521,
	0,
	0,
	23,
	41,
	53,
	0,
	0,
	0,
	0,
	116,
	1500);
INSERT INTO V_IRF
	VALUES (1521,
	1496);
INSERT INTO V_VAL
	VALUES (1527,
	0,
	0,
	24,
	18,
	32,
	0,
	0,
	0,
	0,
	116,
	1500);
INSERT INTO V_IRF
	VALUES (1527,
	1520);
INSERT INTO V_VAL
	VALUES (1528,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1500);
INSERT INTO V_UNY
	VALUES (1528,
	1527,
	'empty');
INSERT INTO V_VAL
	VALUES (1525,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1500);
INSERT INTO V_UNY
	VALUES (1525,
	1528,
	'not');
INSERT INTO V_VAR
	VALUES (1520,
	1500,
	'openAchievement',
	1,
	116);
INSERT INTO V_INT
	VALUES (1520,
	0,
	850);
INSERT INTO ACT_BLK
	VALUES (1524,
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
	1474,
	0);
INSERT INTO ACT_SMT
	VALUES (1529,
	1524,
	1530,
	25,
	5,
	'WorkoutSession::reset line: 25');
INSERT INTO ACT_UNR
	VALUES (1529,
	1520,
	1496,
	'''is open for''',
	855,
	25,
	56,
	25,
	60);
INSERT INTO ACT_SMT
	VALUES (1530,
	1524,
	0,
	26,
	5,
	'WorkoutSession::reset line: 26');
INSERT INTO ACT_DEL
	VALUES (1530,
	1520);
INSERT INTO ACT_BLK
	VALUES (1507,
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
	1474,
	0);
INSERT INTO ACT_SMT
	VALUES (1531,
	1507,
	1532,
	35,
	3,
	'WorkoutSession::reset line: 35');
INSERT INTO ACT_SEL
	VALUES (1531,
	1533,
	1,
	'many',
	1534);
INSERT INTO ACT_SR
	VALUES (1531);
INSERT INTO ACT_LNK
	VALUES (1535,
	'''has recorded''',
	1531,
	848,
	0,
	3,
	850,
	35,
	45,
	35,
	57,
	35,
	61);
INSERT INTO ACT_SMT
	VALUES (1532,
	1507,
	1536,
	36,
	3,
	'WorkoutSession::reset line: 36');
INSERT INTO ACT_FOR
	VALUES (1532,
	1537,
	1,
	1538,
	1533,
	850);
INSERT INTO ACT_SMT
	VALUES (1536,
	1507,
	1539,
	40,
	3,
	'WorkoutSession::reset line: 40');
INSERT INTO ACT_UNR
	VALUES (1536,
	1512,
	1508,
	'''has executed''',
	852,
	40,
	34,
	40,
	38);
INSERT INTO ACT_SMT
	VALUES (1539,
	1507,
	0,
	41,
	3,
	'WorkoutSession::reset line: 41');
INSERT INTO ACT_DEL
	VALUES (1539,
	1508);
INSERT INTO V_VAL
	VALUES (1534,
	0,
	0,
	35,
	39,
	42,
	0,
	0,
	0,
	0,
	116,
	1507);
INSERT INTO V_IRF
	VALUES (1534,
	1508);
INSERT INTO V_VAR
	VALUES (1533,
	1507,
	'achievements',
	1,
	607);
INSERT INTO V_INS
	VALUES (1533,
	850);
INSERT INTO V_VAR
	VALUES (1538,
	1507,
	'achievement',
	1,
	116);
INSERT INTO V_INT
	VALUES (1538,
	1,
	850);
INSERT INTO ACT_BLK
	VALUES (1537,
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
	1474,
	0);
INSERT INTO ACT_SMT
	VALUES (1540,
	1537,
	1541,
	37,
	5,
	'WorkoutSession::reset line: 37');
INSERT INTO ACT_UNR
	VALUES (1540,
	1508,
	1538,
	'''has recorded''',
	848,
	37,
	43,
	37,
	47);
INSERT INTO ACT_SMT
	VALUES (1541,
	1537,
	0,
	38,
	5,
	'WorkoutSession::reset line: 38');
INSERT INTO ACT_DEL
	VALUES (1541,
	1538);
INSERT INTO O_NBATTR
	VALUES (1448,
	705);
INSERT INTO O_BATTR
	VALUES (1448,
	705);
INSERT INTO O_ATTR
	VALUES (1448,
	705,
	0,
	'startDate',
	'UTC Date on which this session commenced.',
	'',
	'startDate',
	0,
	260,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1450,
	705);
INSERT INTO O_BATTR
	VALUES (1450,
	705);
INSERT INTO O_ATTR
	VALUES (1450,
	705,
	1448,
	'startTime',
	'UTC time at which this session commenced.',
	'',
	'startTime',
	0,
	297,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (1114,
	705,
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
	VALUES (1542,
	705,
	1114,
	1);
INSERT INTO ACT_ACT
	VALUES (1542,
	'derived attribute',
	0,
	1543,
	0,
	0,
	'WorkoutSession::currentSpeed',
	0);
INSERT INTO ACT_BLK
	VALUES (1543,
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
	1542,
	0);
INSERT INTO ACT_SMT
	VALUES (1544,
	1543,
	1545,
	6,
	1,
	'WorkoutSession::currentSpeed line: 6');
INSERT INTO ACT_SEL
	VALUES (1544,
	1546,
	1,
	'one',
	1547);
INSERT INTO ACT_SR
	VALUES (1544);
INSERT INTO ACT_LNK
	VALUES (1548,
	'''captures path in''',
	1544,
	832,
	1549,
	2,
	813,
	6,
	39,
	6,
	48,
	6,
	51);
INSERT INTO ACT_LNK
	VALUES (1549,
	'''has last''',
	0,
	820,
	0,
	2,
	815,
	6,
	72,
	6,
	83,
	6,
	86);
INSERT INTO ACT_SMT
	VALUES (1545,
	1543,
	1550,
	7,
	1,
	'WorkoutSession::currentSpeed line: 7');
INSERT INTO ACT_AI
	VALUES (1545,
	1551,
	1552,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1550,
	1543,
	1553,
	8,
	1,
	'WorkoutSession::currentSpeed line: 8');
INSERT INTO ACT_IF
	VALUES (1550,
	1554,
	1555,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1553,
	1543,
	0,
	30,
	1,
	'WorkoutSession::currentSpeed line: 30');
INSERT INTO ACT_AI
	VALUES (1553,
	1556,
	1557,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1547,
	0,
	0,
	6,
	33,
	36,
	0,
	0,
	0,
	0,
	116,
	1543);
INSERT INTO V_IRF
	VALUES (1547,
	1558);
INSERT INTO V_VAL
	VALUES (1552,
	1,
	1,
	7,
	1,
	5,
	0,
	0,
	0,
	0,
	23,
	1543);
INSERT INTO V_TVL
	VALUES (1552,
	1559);
INSERT INTO V_VAL
	VALUES (1551,
	0,
	0,
	7,
	9,
	11,
	0,
	0,
	0,
	0,
	23,
	1543);
INSERT INTO V_LRL
	VALUES (1551,
	'0.0');
INSERT INTO V_VAL
	VALUES (1560,
	0,
	0,
	8,
	16,
	24,
	0,
	0,
	0,
	0,
	116,
	1543);
INSERT INTO V_IRF
	VALUES (1560,
	1546);
INSERT INTO V_VAL
	VALUES (1561,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1543);
INSERT INTO V_UNY
	VALUES (1561,
	1560,
	'empty');
INSERT INTO V_VAL
	VALUES (1555,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1543);
INSERT INTO V_UNY
	VALUES (1555,
	1561,
	'not');
INSERT INTO V_VAL
	VALUES (1562,
	1,
	0,
	30,
	1,
	4,
	0,
	0,
	0,
	0,
	116,
	1543);
INSERT INTO V_IRF
	VALUES (1562,
	1558);
INSERT INTO V_VAL
	VALUES (1557,
	1,
	0,
	30,
	6,
	17,
	0,
	0,
	0,
	0,
	23,
	1543);
INSERT INTO V_AVL
	VALUES (1557,
	1562,
	705,
	1114);
INSERT INTO V_VAL
	VALUES (1556,
	0,
	0,
	30,
	21,
	25,
	0,
	0,
	0,
	0,
	23,
	1543);
INSERT INTO V_TVL
	VALUES (1556,
	1559);
INSERT INTO V_VAR
	VALUES (1546,
	1543,
	'lastPoint',
	1,
	116);
INSERT INTO V_INT
	VALUES (1546,
	0,
	815);
INSERT INTO V_VAR
	VALUES (1558,
	1543,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (1558,
	0,
	705);
INSERT INTO V_VAR
	VALUES (1559,
	1543,
	'speed',
	1,
	23);
INSERT INTO V_TRN
	VALUES (1559,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (1554,
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
	1542,
	0);
INSERT INTO ACT_SMT
	VALUES (1563,
	1554,
	1564,
	9,
	3,
	'WorkoutSession::currentSpeed line: 9');
INSERT INTO ACT_AI
	VALUES (1563,
	1565,
	1566,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1564,
	1554,
	1567,
	10,
	3,
	'WorkoutSession::currentSpeed line: 10');
INSERT INTO ACT_AI
	VALUES (1564,
	1568,
	1569,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1567,
	1554,
	1570,
	11,
	3,
	'WorkoutSession::currentSpeed line: 11');
INSERT INTO ACT_AI
	VALUES (1567,
	1571,
	1572,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1570,
	1554,
	1573,
	12,
	3,
	'WorkoutSession::currentSpeed line: 12');
INSERT INTO ACT_AI
	VALUES (1570,
	1574,
	1575,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1573,
	1554,
	1576,
	13,
	3,
	'WorkoutSession::currentSpeed line: 13');
INSERT INTO ACT_AI
	VALUES (1573,
	1577,
	1578,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1576,
	1554,
	1579,
	14,
	3,
	'WorkoutSession::currentSpeed line: 14');
INSERT INTO ACT_WHL
	VALUES (1576,
	1580,
	1581);
INSERT INTO ACT_SMT
	VALUES (1579,
	1554,
	1582,
	25,
	3,
	'WorkoutSession::currentSpeed line: 25');
INSERT INTO ACT_AI
	VALUES (1579,
	1583,
	1584,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1582,
	1554,
	0,
	26,
	3,
	'WorkoutSession::currentSpeed line: 26');
INSERT INTO ACT_AI
	VALUES (1582,
	1585,
	1586,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1566,
	1,
	1,
	9,
	3,
	8,
	0,
	0,
	0,
	0,
	116,
	1554);
INSERT INTO V_IRF
	VALUES (1566,
	1587);
INSERT INTO V_VAL
	VALUES (1565,
	0,
	0,
	9,
	12,
	20,
	0,
	0,
	0,
	0,
	116,
	1554);
INSERT INTO V_IRF
	VALUES (1565,
	1546);
INSERT INTO V_VAL
	VALUES (1569,
	1,
	1,
	10,
	3,
	7,
	0,
	0,
	0,
	0,
	14,
	1554);
INSERT INTO V_TVL
	VALUES (1569,
	1588);
INSERT INTO V_VAL
	VALUES (1568,
	0,
	0,
	10,
	11,
	30,
	0,
	0,
	0,
	0,
	14,
	1554);
INSERT INTO V_SCV
	VALUES (1568,
	1589,
	14);
INSERT INTO V_VAL
	VALUES (1572,
	1,
	1,
	11,
	3,
	15,
	0,
	0,
	0,
	0,
	23,
	1554);
INSERT INTO V_TVL
	VALUES (1572,
	1590);
INSERT INTO V_VAL
	VALUES (1571,
	0,
	0,
	11,
	19,
	21,
	0,
	0,
	0,
	0,
	23,
	1554);
INSERT INTO V_LRL
	VALUES (1571,
	'0.0');
INSERT INTO V_VAL
	VALUES (1575,
	1,
	1,
	12,
	3,
	13,
	0,
	0,
	0,
	0,
	23,
	1554);
INSERT INTO V_TVL
	VALUES (1575,
	1591);
INSERT INTO V_VAL
	VALUES (1574,
	0,
	0,
	12,
	17,
	19,
	0,
	0,
	0,
	0,
	23,
	1554);
INSERT INTO V_LRL
	VALUES (1574,
	'0.0');
INSERT INTO V_VAL
	VALUES (1578,
	1,
	0,
	13,
	3,
	13,
	0,
	0,
	0,
	0,
	23,
	1554);
INSERT INTO V_TVL
	VALUES (1578,
	1591);
INSERT INTO V_VAL
	VALUES (1592,
	0,
	0,
	13,
	17,
	25,
	0,
	0,
	0,
	0,
	116,
	1554);
INSERT INTO V_IRF
	VALUES (1592,
	1546);
INSERT INTO V_VAL
	VALUES (1577,
	0,
	0,
	13,
	27,
	30,
	0,
	0,
	0,
	0,
	14,
	1554);
INSERT INTO V_AVL
	VALUES (1577,
	1592,
	815,
	1271);
INSERT INTO V_VAL
	VALUES (1593,
	0,
	0,
	14,
	11,
	15,
	0,
	0,
	0,
	0,
	14,
	1554);
INSERT INTO V_TVL
	VALUES (1593,
	1588);
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
	119,
	1554);
INSERT INTO V_BIN
	VALUES (1580,
	1594,
	1593,
	'>');
INSERT INTO V_VAL
	VALUES (1594,
	0,
	0,
	14,
	19,
	19,
	0,
	0,
	0,
	0,
	14,
	1554);
INSERT INTO V_LIN
	VALUES (1594,
	'0');
INSERT INTO V_VAL
	VALUES (1584,
	1,
	0,
	25,
	3,
	13,
	0,
	0,
	0,
	0,
	23,
	1554);
INSERT INTO V_TVL
	VALUES (1584,
	1591);
INSERT INTO V_VAL
	VALUES (1595,
	0,
	0,
	25,
	17,
	27,
	0,
	0,
	0,
	0,
	23,
	1554);
INSERT INTO V_TVL
	VALUES (1595,
	1591);
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
	23,
	1554);
INSERT INTO V_BIN
	VALUES (1583,
	1596,
	1595,
	'-');
INSERT INTO V_VAL
	VALUES (1597,
	0,
	0,
	25,
	31,
	36,
	0,
	0,
	0,
	0,
	116,
	1554);
INSERT INTO V_IRF
	VALUES (1597,
	1587);
INSERT INTO V_VAL
	VALUES (1596,
	0,
	0,
	25,
	38,
	41,
	0,
	0,
	0,
	0,
	14,
	1554);
INSERT INTO V_AVL
	VALUES (1596,
	1597,
	815,
	1271);
INSERT INTO V_VAL
	VALUES (1586,
	1,
	0,
	26,
	3,
	7,
	0,
	0,
	0,
	0,
	23,
	1554);
INSERT INTO V_TVL
	VALUES (1586,
	1559);
INSERT INTO V_VAL
	VALUES (1598,
	0,
	0,
	26,
	12,
	24,
	0,
	0,
	0,
	0,
	23,
	1554);
INSERT INTO V_TVL
	VALUES (1598,
	1590);
INSERT INTO V_VAL
	VALUES (1599,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	23,
	1554);
INSERT INTO V_BIN
	VALUES (1599,
	1600,
	1598,
	'/');
INSERT INTO V_VAL
	VALUES (1600,
	0,
	0,
	26,
	28,
	31,
	0,
	0,
	0,
	0,
	14,
	1554);
INSERT INTO V_LIN
	VALUES (1600,
	'1000');
INSERT INTO V_VAL
	VALUES (1585,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	23,
	1554);
INSERT INTO V_BIN
	VALUES (1585,
	1601,
	1599,
	'/');
INSERT INTO V_VAL
	VALUES (1602,
	0,
	0,
	26,
	37,
	47,
	0,
	0,
	0,
	0,
	23,
	1554);
INSERT INTO V_TVL
	VALUES (1602,
	1591);
INSERT INTO V_VAL
	VALUES (1601,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	23,
	1554);
INSERT INTO V_BIN
	VALUES (1601,
	1603,
	1602,
	'/');
INSERT INTO V_VAL
	VALUES (1603,
	0,
	0,
	26,
	51,
	64,
	0,
	0,
	0,
	0,
	14,
	1554);
INSERT INTO V_SCV
	VALUES (1603,
	1604,
	14);
INSERT INTO V_VAR
	VALUES (1587,
	1554,
	'cursor',
	1,
	116);
INSERT INTO V_INT
	VALUES (1587,
	0,
	815);
INSERT INTO V_VAR
	VALUES (1588,
	1554,
	'index',
	1,
	14);
INSERT INTO V_TRN
	VALUES (1588,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1590,
	1554,
	'totalDistance',
	1,
	23);
INSERT INTO V_TRN
	VALUES (1590,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1591,
	1554,
	'elapsedTime',
	1,
	23);
INSERT INTO V_TRN
	VALUES (1591,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (1581,
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
	1542,
	0);
INSERT INTO ACT_SMT
	VALUES (1605,
	1581,
	1606,
	15,
	5,
	'WorkoutSession::currentSpeed line: 15');
INSERT INTO ACT_SEL
	VALUES (1605,
	1607,
	1,
	'one',
	1608);
INSERT INTO ACT_SR
	VALUES (1605);
INSERT INTO ACT_LNK
	VALUES (1609,
	'preceeds',
	1605,
	817,
	0,
	2,
	815,
	15,
	49,
	15,
	60,
	15,
	63);
INSERT INTO ACT_SMT
	VALUES (1606,
	1581,
	1610,
	16,
	5,
	'WorkoutSession::currentSpeed line: 16');
INSERT INTO ACT_IF
	VALUES (1606,
	1611,
	1612,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1610,
	1581,
	1613,
	19,
	5,
	'WorkoutSession::currentSpeed line: 19');
INSERT INTO ACT_AI
	VALUES (1610,
	1614,
	1615,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1613,
	1581,
	1616,
	21,
	5,
	'WorkoutSession::currentSpeed line: 21');
INSERT INTO ACT_AI
	VALUES (1613,
	1617,
	1618,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1616,
	1581,
	1619,
	22,
	5,
	'WorkoutSession::currentSpeed line: 22');
INSERT INTO ACT_AI
	VALUES (1616,
	1620,
	1621,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1619,
	1581,
	0,
	23,
	5,
	'WorkoutSession::currentSpeed line: 23');
INSERT INTO ACT_AI
	VALUES (1619,
	1622,
	1623,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1608,
	0,
	0,
	15,
	41,
	46,
	0,
	0,
	0,
	0,
	116,
	1581);
INSERT INTO V_IRF
	VALUES (1608,
	1587);
INSERT INTO V_VAL
	VALUES (1624,
	0,
	0,
	16,
	16,
	28,
	0,
	0,
	0,
	0,
	116,
	1581);
INSERT INTO V_IRF
	VALUES (1624,
	1607);
INSERT INTO V_VAL
	VALUES (1612,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1581);
INSERT INTO V_UNY
	VALUES (1612,
	1624,
	'empty');
INSERT INTO V_VAL
	VALUES (1615,
	1,
	1,
	19,
	10,
	17,
	0,
	0,
	0,
	0,
	23,
	1581);
INSERT INTO V_TVL
	VALUES (1615,
	1625);
INSERT INTO V_VAL
	VALUES (1614,
	0,
	0,
	19,
	31,
	42,
	19,
	44,
	20,
	70,
	23,
	1581);
INSERT INTO V_MSV
	VALUES (1614,
	0,
	661,
	1,
	19,
	21,
	0);
INSERT INTO V_VAL
	VALUES (1626,
	0,
	0,
	19,
	52,
	57,
	0,
	0,
	0,
	0,
	116,
	1581);
INSERT INTO V_IRF
	VALUES (1626,
	1587);
INSERT INTO V_VAL
	VALUES (1627,
	0,
	0,
	19,
	59,
	66,
	0,
	0,
	0,
	0,
	23,
	1581);
INSERT INTO V_AVL
	VALUES (1627,
	1626,
	815,
	1275);
INSERT INTO V_PAR
	VALUES (1627,
	0,
	1614,
	'fromLat',
	1628,
	19,
	44);
INSERT INTO V_VAL
	VALUES (1629,
	0,
	0,
	19,
	79,
	84,
	0,
	0,
	0,
	0,
	116,
	1581);
INSERT INTO V_IRF
	VALUES (1629,
	1587);
INSERT INTO V_VAL
	VALUES (1628,
	0,
	0,
	19,
	86,
	94,
	0,
	0,
	0,
	0,
	23,
	1581);
INSERT INTO V_AVL
	VALUES (1628,
	1629,
	815,
	1278);
INSERT INTO V_PAR
	VALUES (1628,
	0,
	1614,
	'fromLong',
	1630,
	19,
	69);
INSERT INTO V_VAL
	VALUES (1631,
	0,
	0,
	20,
	46,
	58,
	0,
	0,
	0,
	0,
	116,
	1581);
INSERT INTO V_IRF
	VALUES (1631,
	1607);
INSERT INTO V_VAL
	VALUES (1630,
	0,
	0,
	20,
	60,
	67,
	0,
	0,
	0,
	0,
	23,
	1581);
INSERT INTO V_AVL
	VALUES (1630,
	1631,
	815,
	1275);
INSERT INTO V_PAR
	VALUES (1630,
	0,
	1614,
	'toLat',
	1632,
	20,
	39);
INSERT INTO V_VAL
	VALUES (1633,
	0,
	0,
	20,
	78,
	90,
	0,
	0,
	0,
	0,
	116,
	1581);
INSERT INTO V_IRF
	VALUES (1633,
	1607);
INSERT INTO V_VAL
	VALUES (1632,
	0,
	0,
	20,
	92,
	100,
	0,
	0,
	0,
	0,
	23,
	1581);
INSERT INTO V_AVL
	VALUES (1632,
	1633,
	815,
	1278);
INSERT INTO V_PAR
	VALUES (1632,
	0,
	1614,
	'toLong',
	0,
	20,
	70);
INSERT INTO V_VAL
	VALUES (1618,
	1,
	0,
	21,
	5,
	17,
	0,
	0,
	0,
	0,
	23,
	1581);
INSERT INTO V_TVL
	VALUES (1618,
	1590);
INSERT INTO V_VAL
	VALUES (1634,
	0,
	0,
	21,
	21,
	33,
	0,
	0,
	0,
	0,
	23,
	1581);
INSERT INTO V_TVL
	VALUES (1634,
	1590);
INSERT INTO V_VAL
	VALUES (1617,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	23,
	1581);
INSERT INTO V_BIN
	VALUES (1617,
	1635,
	1634,
	'+');
INSERT INTO V_VAL
	VALUES (1635,
	0,
	0,
	21,
	37,
	44,
	0,
	0,
	0,
	0,
	23,
	1581);
INSERT INTO V_TVL
	VALUES (1635,
	1625);
INSERT INTO V_VAL
	VALUES (1621,
	1,
	0,
	22,
	5,
	9,
	0,
	0,
	0,
	0,
	14,
	1581);
INSERT INTO V_TVL
	VALUES (1621,
	1588);
INSERT INTO V_VAL
	VALUES (1636,
	0,
	0,
	22,
	13,
	17,
	0,
	0,
	0,
	0,
	14,
	1581);
INSERT INTO V_TVL
	VALUES (1636,
	1588);
INSERT INTO V_VAL
	VALUES (1620,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	14,
	1581);
INSERT INTO V_BIN
	VALUES (1620,
	1637,
	1636,
	'-');
INSERT INTO V_VAL
	VALUES (1637,
	0,
	0,
	22,
	21,
	21,
	0,
	0,
	0,
	0,
	14,
	1581);
INSERT INTO V_LIN
	VALUES (1637,
	'1');
INSERT INTO V_VAL
	VALUES (1623,
	1,
	0,
	23,
	5,
	10,
	0,
	0,
	0,
	0,
	116,
	1581);
INSERT INTO V_IRF
	VALUES (1623,
	1587);
INSERT INTO V_VAL
	VALUES (1622,
	0,
	0,
	23,
	14,
	26,
	0,
	0,
	0,
	0,
	116,
	1581);
INSERT INTO V_IRF
	VALUES (1622,
	1607);
INSERT INTO V_VAR
	VALUES (1607,
	1581,
	'previousPoint',
	1,
	116);
INSERT INTO V_INT
	VALUES (1607,
	0,
	815);
INSERT INTO V_VAR
	VALUES (1625,
	1581,
	'distance',
	1,
	23);
INSERT INTO V_TRN
	VALUES (1625,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (1611,
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
	1542,
	0);
INSERT INTO ACT_SMT
	VALUES (1638,
	1611,
	0,
	17,
	7,
	'WorkoutSession::currentSpeed line: 17');
INSERT INTO ACT_BRK
	VALUES (1638);
INSERT INTO O_BATTR
	VALUES (1114,
	705);
INSERT INTO O_ATTR
	VALUES (1114,
	705,
	1450,
	'currentSpeed',
	'The current speed of the device, expressed in kilometers per hour, averaged 
over a predefined number of the most recently acquired track points.
',
	'',
	'currentSpeed',
	0,
	23,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (1134,
	705,
	'// Calculate current pace from current speed, converting from km/hour to minutes/km.

if ( self.currentSpeed != 0.0 )
  self.currentPace = 60.0 / self.currentSpeed;
else
  self.currentPace = 0.0;
end if;',
	1);
INSERT INTO ACT_DAB
	VALUES (1639,
	705,
	1134,
	1);
INSERT INTO ACT_ACT
	VALUES (1639,
	'derived attribute',
	0,
	1640,
	0,
	0,
	'WorkoutSession::currentPace',
	0);
INSERT INTO ACT_BLK
	VALUES (1640,
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
	1639,
	0);
INSERT INTO ACT_SMT
	VALUES (1641,
	1640,
	0,
	3,
	1,
	'WorkoutSession::currentPace line: 3');
INSERT INTO ACT_IF
	VALUES (1641,
	1642,
	1643,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1644,
	1640,
	0,
	5,
	1,
	'WorkoutSession::currentPace line: 5');
INSERT INTO ACT_E
	VALUES (1644,
	1645,
	1641);
INSERT INTO V_VAL
	VALUES (1646,
	0,
	0,
	3,
	6,
	9,
	0,
	0,
	0,
	0,
	116,
	1640);
INSERT INTO V_IRF
	VALUES (1646,
	1647);
INSERT INTO V_VAL
	VALUES (1648,
	0,
	0,
	3,
	11,
	22,
	0,
	0,
	0,
	0,
	23,
	1640);
INSERT INTO V_AVL
	VALUES (1648,
	1646,
	705,
	1114);
INSERT INTO V_VAL
	VALUES (1643,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1640);
INSERT INTO V_BIN
	VALUES (1643,
	1649,
	1648,
	'!=');
INSERT INTO V_VAL
	VALUES (1649,
	0,
	0,
	3,
	27,
	29,
	0,
	0,
	0,
	0,
	23,
	1640);
INSERT INTO V_LRL
	VALUES (1649,
	'0.0');
INSERT INTO V_VAR
	VALUES (1647,
	1640,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (1647,
	0,
	705);
INSERT INTO ACT_BLK
	VALUES (1642,
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
	1639,
	0);
INSERT INTO ACT_SMT
	VALUES (1650,
	1642,
	0,
	4,
	3,
	'WorkoutSession::currentPace line: 4');
INSERT INTO ACT_AI
	VALUES (1650,
	1651,
	1652,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1653,
	1,
	0,
	4,
	3,
	6,
	0,
	0,
	0,
	0,
	116,
	1642);
INSERT INTO V_IRF
	VALUES (1653,
	1647);
INSERT INTO V_VAL
	VALUES (1652,
	1,
	0,
	4,
	8,
	18,
	0,
	0,
	0,
	0,
	23,
	1642);
INSERT INTO V_AVL
	VALUES (1652,
	1653,
	705,
	1134);
INSERT INTO V_VAL
	VALUES (1654,
	0,
	0,
	4,
	22,
	25,
	0,
	0,
	0,
	0,
	23,
	1642);
INSERT INTO V_LRL
	VALUES (1654,
	'60.0');
INSERT INTO V_VAL
	VALUES (1651,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	23,
	1642);
INSERT INTO V_BIN
	VALUES (1651,
	1655,
	1654,
	'/');
INSERT INTO V_VAL
	VALUES (1656,
	0,
	0,
	4,
	29,
	32,
	0,
	0,
	0,
	0,
	116,
	1642);
INSERT INTO V_IRF
	VALUES (1656,
	1647);
INSERT INTO V_VAL
	VALUES (1655,
	0,
	0,
	4,
	34,
	45,
	0,
	0,
	0,
	0,
	23,
	1642);
INSERT INTO V_AVL
	VALUES (1655,
	1656,
	705,
	1114);
INSERT INTO ACT_BLK
	VALUES (1645,
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
	1639,
	0);
INSERT INTO ACT_SMT
	VALUES (1657,
	1645,
	0,
	6,
	3,
	'WorkoutSession::currentPace line: 6');
INSERT INTO ACT_AI
	VALUES (1657,
	1658,
	1659,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1660,
	1,
	0,
	6,
	3,
	6,
	0,
	0,
	0,
	0,
	116,
	1645);
INSERT INTO V_IRF
	VALUES (1660,
	1647);
INSERT INTO V_VAL
	VALUES (1659,
	1,
	0,
	6,
	8,
	18,
	0,
	0,
	0,
	0,
	23,
	1645);
INSERT INTO V_AVL
	VALUES (1659,
	1660,
	705,
	1134);
INSERT INTO V_VAL
	VALUES (1658,
	0,
	0,
	6,
	22,
	24,
	0,
	0,
	0,
	0,
	23,
	1645);
INSERT INTO V_LRL
	VALUES (1658,
	'0.0');
INSERT INTO O_BATTR
	VALUES (1134,
	705);
INSERT INTO O_ATTR
	VALUES (1134,
	705,
	1114,
	'currentPace',
	'The inverse of currentSpeed, expressed in minutes per kilometer.',
	'',
	'currentPace',
	0,
	23,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (1154,
	705,
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
	VALUES (1661,
	705,
	1154,
	1);
INSERT INTO ACT_ACT
	VALUES (1661,
	'derived attribute',
	0,
	1662,
	0,
	0,
	'WorkoutSession::currentHeartRate',
	0);
INSERT INTO ACT_BLK
	VALUES (1662,
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
	1661,
	0);
INSERT INTO ACT_SMT
	VALUES (1663,
	1662,
	1664,
	3,
	1,
	'WorkoutSession::currentHeartRate line: 3');
INSERT INTO ACT_SEL
	VALUES (1663,
	1665,
	1,
	'one',
	1666);
INSERT INTO ACT_SR
	VALUES (1663);
INSERT INTO ACT_LNK
	VALUES (1667,
	'''is timed by''',
	1663,
	829,
	0,
	2,
	719,
	3,
	42,
	3,
	55,
	3,
	58);
INSERT INTO ACT_SMT
	VALUES (1664,
	1662,
	1668,
	4,
	1,
	'WorkoutSession::currentHeartRate line: 4');
INSERT INTO ACT_SEL
	VALUES (1664,
	1669,
	1,
	'many',
	1670);
INSERT INTO ACT_SRW
	VALUES (1664,
	1671);
INSERT INTO ACT_LNK
	VALUES (1672,
	'''tracks heart rate over time as''',
	1664,
	835,
	0,
	3,
	836,
	4,
	38,
	4,
	54,
	4,
	57);
INSERT INTO ACT_SMT
	VALUES (1668,
	1662,
	1673,
	6,
	1,
	'WorkoutSession::currentHeartRate line: 6');
INSERT INTO ACT_AI
	VALUES (1668,
	1674,
	1675,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1673,
	1662,
	1676,
	7,
	1,
	'WorkoutSession::currentHeartRate line: 7');
INSERT INTO ACT_AI
	VALUES (1673,
	1677,
	1678,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1676,
	1662,
	1679,
	8,
	1,
	'WorkoutSession::currentHeartRate line: 8');
INSERT INTO ACT_FOR
	VALUES (1676,
	1680,
	1,
	1681,
	1669,
	836);
INSERT INTO ACT_SMT
	VALUES (1679,
	1662,
	0,
	12,
	1,
	'WorkoutSession::currentHeartRate line: 12');
INSERT INTO ACT_IF
	VALUES (1679,
	1682,
	1683,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1684,
	1662,
	0,
	14,
	1,
	'WorkoutSession::currentHeartRate line: 14');
INSERT INTO ACT_E
	VALUES (1684,
	1685,
	1679);
INSERT INTO V_VAL
	VALUES (1666,
	0,
	0,
	3,
	36,
	39,
	0,
	0,
	0,
	0,
	116,
	1662);
INSERT INTO V_IRF
	VALUES (1666,
	1686);
INSERT INTO V_VAL
	VALUES (1670,
	0,
	0,
	4,
	32,
	35,
	0,
	0,
	0,
	0,
	116,
	1662);
INSERT INTO V_IRF
	VALUES (1670,
	1686);
INSERT INTO V_VAL
	VALUES (1687,
	0,
	0,
	5,
	11,
	-1,
	0,
	0,
	0,
	0,
	116,
	1662);
INSERT INTO V_SLR
	VALUES (1687,
	0,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1688,
	0,
	0,
	5,
	20,
	23,
	0,
	0,
	0,
	0,
	14,
	1662);
INSERT INTO V_AVL
	VALUES (1688,
	1687,
	836,
	1216);
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
	119,
	1662);
INSERT INTO V_BIN
	VALUES (1671,
	1689,
	1688,
	'>=');
INSERT INTO V_VAL
	VALUES (1690,
	0,
	0,
	5,
	30,
	41,
	0,
	0,
	0,
	0,
	116,
	1662);
INSERT INTO V_IRF
	VALUES (1690,
	1665);
INSERT INTO V_VAL
	VALUES (1691,
	0,
	0,
	5,
	43,
	46,
	0,
	0,
	0,
	0,
	14,
	1662);
INSERT INTO V_AVL
	VALUES (1691,
	1690,
	719,
	1014);
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
	14,
	1662);
INSERT INTO V_BIN
	VALUES (1689,
	1692,
	1691,
	'-');
INSERT INTO V_VAL
	VALUES (1693,
	0,
	0,
	5,
	51,
	73,
	0,
	0,
	0,
	0,
	14,
	1662);
INSERT INTO V_SCV
	VALUES (1693,
	1694,
	14);
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
	14,
	1662);
INSERT INTO V_BIN
	VALUES (1692,
	1695,
	1693,
	'*');
INSERT INTO V_VAL
	VALUES (1695,
	0,
	0,
	5,
	77,
	100,
	0,
	0,
	0,
	0,
	14,
	1662);
INSERT INTO V_SCV
	VALUES (1695,
	1696,
	14);
INSERT INTO V_VAL
	VALUES (1675,
	1,
	1,
	6,
	1,
	15,
	0,
	0,
	0,
	0,
	14,
	1662);
INSERT INTO V_TVL
	VALUES (1675,
	1697);
INSERT INTO V_VAL
	VALUES (1674,
	0,
	0,
	6,
	19,
	19,
	0,
	0,
	0,
	0,
	14,
	1662);
INSERT INTO V_LIN
	VALUES (1674,
	'0');
INSERT INTO V_VAL
	VALUES (1678,
	1,
	1,
	7,
	1,
	3,
	0,
	0,
	0,
	0,
	14,
	1662);
INSERT INTO V_TVL
	VALUES (1678,
	1698);
INSERT INTO V_VAL
	VALUES (1677,
	0,
	0,
	7,
	7,
	7,
	0,
	0,
	0,
	0,
	14,
	1662);
INSERT INTO V_LIN
	VALUES (1677,
	'0');
INSERT INTO V_VAL
	VALUES (1699,
	0,
	0,
	12,
	6,
	20,
	0,
	0,
	0,
	0,
	14,
	1662);
INSERT INTO V_TVL
	VALUES (1699,
	1697);
INSERT INTO V_VAL
	VALUES (1683,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1662);
INSERT INTO V_BIN
	VALUES (1683,
	1700,
	1699,
	'>');
INSERT INTO V_VAL
	VALUES (1700,
	0,
	0,
	12,
	24,
	24,
	0,
	0,
	0,
	0,
	14,
	1662);
INSERT INTO V_LIN
	VALUES (1700,
	'0');
INSERT INTO V_VAR
	VALUES (1665,
	1662,
	'workoutTimer',
	1,
	116);
INSERT INTO V_INT
	VALUES (1665,
	0,
	719);
INSERT INTO V_VAR
	VALUES (1686,
	1662,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (1686,
	0,
	705);
INSERT INTO V_VAR
	VALUES (1669,
	1662,
	'samples',
	1,
	607);
INSERT INTO V_INS
	VALUES (1669,
	836);
INSERT INTO V_VAR
	VALUES (1697,
	1662,
	'numberOfSamples',
	1,
	14);
INSERT INTO V_TRN
	VALUES (1697,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1698,
	1662,
	'sum',
	1,
	14);
INSERT INTO V_TRN
	VALUES (1698,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1681,
	1662,
	'sample',
	1,
	116);
INSERT INTO V_INT
	VALUES (1681,
	1,
	836);
INSERT INTO ACT_BLK
	VALUES (1680,
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
	1661,
	0);
INSERT INTO ACT_SMT
	VALUES (1701,
	1680,
	1702,
	9,
	3,
	'WorkoutSession::currentHeartRate line: 9');
INSERT INTO ACT_AI
	VALUES (1701,
	1703,
	1704,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1702,
	1680,
	0,
	10,
	3,
	'WorkoutSession::currentHeartRate line: 10');
INSERT INTO ACT_AI
	VALUES (1702,
	1705,
	1706,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1704,
	1,
	0,
	9,
	3,
	17,
	0,
	0,
	0,
	0,
	14,
	1680);
INSERT INTO V_TVL
	VALUES (1704,
	1697);
INSERT INTO V_VAL
	VALUES (1707,
	0,
	0,
	9,
	21,
	35,
	0,
	0,
	0,
	0,
	14,
	1680);
INSERT INTO V_TVL
	VALUES (1707,
	1697);
INSERT INTO V_VAL
	VALUES (1703,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	14,
	1680);
INSERT INTO V_BIN
	VALUES (1703,
	1708,
	1707,
	'+');
INSERT INTO V_VAL
	VALUES (1708,
	0,
	0,
	9,
	39,
	39,
	0,
	0,
	0,
	0,
	14,
	1680);
INSERT INTO V_LIN
	VALUES (1708,
	'1');
INSERT INTO V_VAL
	VALUES (1706,
	1,
	0,
	10,
	3,
	5,
	0,
	0,
	0,
	0,
	14,
	1680);
INSERT INTO V_TVL
	VALUES (1706,
	1698);
INSERT INTO V_VAL
	VALUES (1709,
	0,
	0,
	10,
	9,
	11,
	0,
	0,
	0,
	0,
	14,
	1680);
INSERT INTO V_TVL
	VALUES (1709,
	1698);
INSERT INTO V_VAL
	VALUES (1705,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	14,
	1680);
INSERT INTO V_BIN
	VALUES (1705,
	1710,
	1709,
	'+');
INSERT INTO V_VAL
	VALUES (1711,
	0,
	0,
	10,
	15,
	20,
	0,
	0,
	0,
	0,
	116,
	1680);
INSERT INTO V_IRF
	VALUES (1711,
	1681);
INSERT INTO V_VAL
	VALUES (1710,
	0,
	0,
	10,
	22,
	30,
	0,
	0,
	0,
	0,
	14,
	1680);
INSERT INTO V_AVL
	VALUES (1710,
	1711,
	836,
	1215);
INSERT INTO ACT_BLK
	VALUES (1682,
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
	1661,
	0);
INSERT INTO ACT_SMT
	VALUES (1712,
	1682,
	0,
	13,
	3,
	'WorkoutSession::currentHeartRate line: 13');
INSERT INTO ACT_AI
	VALUES (1712,
	1713,
	1714,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1715,
	1,
	0,
	13,
	3,
	6,
	0,
	0,
	0,
	0,
	116,
	1682);
INSERT INTO V_IRF
	VALUES (1715,
	1686);
INSERT INTO V_VAL
	VALUES (1714,
	1,
	0,
	13,
	8,
	23,
	0,
	0,
	0,
	0,
	14,
	1682);
INSERT INTO V_AVL
	VALUES (1714,
	1715,
	705,
	1154);
INSERT INTO V_VAL
	VALUES (1716,
	0,
	0,
	13,
	27,
	29,
	0,
	0,
	0,
	0,
	14,
	1682);
INSERT INTO V_TVL
	VALUES (1716,
	1698);
INSERT INTO V_VAL
	VALUES (1713,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	14,
	1682);
INSERT INTO V_BIN
	VALUES (1713,
	1717,
	1716,
	'/');
INSERT INTO V_VAL
	VALUES (1717,
	0,
	0,
	13,
	33,
	47,
	0,
	0,
	0,
	0,
	14,
	1682);
INSERT INTO V_TVL
	VALUES (1717,
	1697);
INSERT INTO ACT_BLK
	VALUES (1685,
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
	1661,
	0);
INSERT INTO ACT_SMT
	VALUES (1718,
	1685,
	0,
	15,
	3,
	'WorkoutSession::currentHeartRate line: 15');
INSERT INTO ACT_AI
	VALUES (1718,
	1719,
	1720,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1721,
	1,
	0,
	15,
	3,
	6,
	0,
	0,
	0,
	0,
	116,
	1685);
INSERT INTO V_IRF
	VALUES (1721,
	1686);
INSERT INTO V_VAL
	VALUES (1720,
	1,
	0,
	15,
	8,
	23,
	0,
	0,
	0,
	0,
	14,
	1685);
INSERT INTO V_AVL
	VALUES (1720,
	1721,
	705,
	1154);
INSERT INTO V_VAL
	VALUES (1719,
	0,
	0,
	15,
	27,
	27,
	0,
	0,
	0,
	0,
	14,
	1685);
INSERT INTO V_LIN
	VALUES (1719,
	'0');
INSERT INTO O_BATTR
	VALUES (1154,
	705);
INSERT INTO O_ATTR
	VALUES (1154,
	705,
	1134,
	'currentHeartRate',
	'Current heart rate, expressed in beats per minute, averaged over 
a predefined number of the most recent heart-rate samples.',
	'',
	'currentHeartRate',
	0,
	14,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1086,
	705);
INSERT INTO O_BATTR
	VALUES (1086,
	705);
INSERT INTO O_ATTR
	VALUES (1086,
	705,
	1154,
	'accumulatedDistance',
	'Accumulated distance, expressed in meters, for this workout session.',
	'',
	'accumulatedDistance',
	0,
	23,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	705);
INSERT INTO O_OIDA
	VALUES (1448,
	705,
	0,
	'startDate');
INSERT INTO O_OIDA
	VALUES (1450,
	705,
	0,
	'startTime');
INSERT INTO O_ID
	VALUES (1,
	705);
INSERT INTO O_ID
	VALUES (2,
	705);
INSERT INTO PE_PE
	VALUES (719,
	1,
	811,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (719,
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
	VALUES (1722,
	719,
	'activate',
	'',
	94,
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
	VALUES (1723,
	1722);
INSERT INTO ACT_ACT
	VALUES (1723,
	'operation',
	0,
	1724,
	0,
	0,
	'WorkoutTimer::activate',
	0);
INSERT INTO ACT_BLK
	VALUES (1724,
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
	1723,
	0);
INSERT INTO ACT_SMT
	VALUES (1725,
	1724,
	1726,
	2,
	1,
	'WorkoutTimer::activate line: 2');
INSERT INTO E_ESS
	VALUES (1725,
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
	VALUES (1725,
	1,
	1727);
INSERT INTO E_CSME
	VALUES (1725,
	1728);
INSERT INTO E_CEI
	VALUES (1725,
	1729);
INSERT INTO ACT_SMT
	VALUES (1726,
	1724,
	1730,
	3,
	1,
	'WorkoutTimer::activate line: 3');
INSERT INTO ACT_AI
	VALUES (1726,
	1731,
	1732,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1730,
	1724,
	1733,
	6,
	1,
	'WorkoutTimer::activate line: 6');
INSERT INTO ACT_SEL
	VALUES (1730,
	1734,
	1,
	'one',
	1735);
INSERT INTO ACT_SR
	VALUES (1730);
INSERT INTO ACT_LNK
	VALUES (1736,
	'''acts as the stopwatch for''',
	1730,
	829,
	1737,
	2,
	705,
	7,
	9,
	7,
	24,
	7,
	27);
INSERT INTO ACT_LNK
	VALUES (1737,
	'''is currently executing''',
	0,
	845,
	0,
	2,
	841,
	7,
	57,
	7,
	62,
	7,
	66);
INSERT INTO ACT_SMT
	VALUES (1733,
	1724,
	1738,
	8,
	1,
	'WorkoutTimer::activate line: 8');
INSERT INTO ACT_IF
	VALUES (1733,
	1739,
	1740,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1738,
	1724,
	1741,
	13,
	1,
	'WorkoutTimer::activate line: 13');
INSERT INTO ACT_IOP
	VALUES (1738,
	13,
	16,
	13,
	6,
	0,
	669,
	0);
INSERT INTO ACT_SMT
	VALUES (1741,
	1724,
	0,
	14,
	1,
	'WorkoutTimer::activate line: 14');
INSERT INTO ACT_IOP
	VALUES (1741,
	14,
	24,
	14,
	6,
	0,
	691,
	0);
INSERT INTO V_VAL
	VALUES (1742,
	1,
	0,
	3,
	1,
	4,
	0,
	0,
	0,
	0,
	116,
	1724);
INSERT INTO V_IRF
	VALUES (1742,
	1729);
INSERT INTO V_VAL
	VALUES (1732,
	1,
	0,
	3,
	6,
	10,
	0,
	0,
	0,
	0,
	134,
	1724);
INSERT INTO V_AVL
	VALUES (1732,
	1742,
	719,
	1743);
INSERT INTO V_VAL
	VALUES (1731,
	0,
	0,
	3,
	19,
	-1,
	3,
	42,
	3,
	59,
	134,
	1724);
INSERT INTO V_BRV
	VALUES (1731,
	934,
	1,
	3,
	14);
INSERT INTO V_VAL
	VALUES (1744,
	0,
	0,
	3,
	54,
	56,
	0,
	0,
	0,
	0,
	138,
	1724);
INSERT INTO V_TVL
	VALUES (1744,
	1727);
INSERT INTO V_PAR
	VALUES (1744,
	0,
	1731,
	'event_inst',
	1745,
	3,
	42);
INSERT INTO V_VAL
	VALUES (1746,
	0,
	0,
	3,
	74,
	84,
	0,
	0,
	0,
	0,
	14,
	1724);
INSERT INTO V_SCV
	VALUES (1746,
	1747,
	14);
INSERT INTO V_VAL
	VALUES (1745,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	14,
	1724);
INSERT INTO V_BIN
	VALUES (1745,
	1748,
	1746,
	'*');
INSERT INTO V_PAR
	VALUES (1745,
	0,
	1731,
	'microseconds',
	0,
	3,
	59);
INSERT INTO V_VAL
	VALUES (1748,
	0,
	0,
	3,
	88,
	94,
	0,
	0,
	0,
	0,
	14,
	1724);
INSERT INTO V_LIN
	VALUES (1748,
	'1000000');
INSERT INTO V_VAL
	VALUES (1735,
	0,
	0,
	7,
	3,
	6,
	0,
	0,
	0,
	0,
	116,
	1724);
INSERT INTO V_IRF
	VALUES (1735,
	1729);
INSERT INTO V_VAL
	VALUES (1749,
	0,
	0,
	8,
	16,
	28,
	0,
	0,
	0,
	0,
	116,
	1724);
INSERT INTO V_IRF
	VALUES (1749,
	1734);
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
	119,
	1724);
INSERT INTO V_UNY
	VALUES (1750,
	1749,
	'empty');
INSERT INTO V_VAL
	VALUES (1740,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1724);
INSERT INTO V_UNY
	VALUES (1740,
	1750,
	'not');
INSERT INTO V_VAR
	VALUES (1727,
	1724,
	'evt',
	1,
	138);
INSERT INTO V_TRN
	VALUES (1727,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1729,
	1724,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (1729,
	0,
	719);
INSERT INTO V_VAR
	VALUES (1734,
	1724,
	'executingGoal',
	1,
	116);
INSERT INTO V_INT
	VALUES (1734,
	0,
	841);
INSERT INTO ACT_BLK
	VALUES (1739,
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
	1723,
	0);
INSERT INTO ACT_SMT
	VALUES (1751,
	1739,
	0,
	9,
	3,
	'WorkoutTimer::activate line: 9');
INSERT INTO E_ESS
	VALUES (1751,
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
	VALUES (1751);
INSERT INTO E_GSME
	VALUES (1751,
	1752);
INSERT INTO E_GEN
	VALUES (1751,
	1734);
INSERT INTO O_TFR
	VALUES (1753,
	719,
	'deactivate',
	'',
	94,
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
	1722);
INSERT INTO ACT_OPB
	VALUES (1754,
	1753);
INSERT INTO ACT_ACT
	VALUES (1754,
	'operation',
	0,
	1755,
	0,
	0,
	'WorkoutTimer::deactivate',
	0);
INSERT INTO ACT_BLK
	VALUES (1755,
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
	1754,
	0);
INSERT INTO ACT_SMT
	VALUES (1756,
	1755,
	1757,
	2,
	1,
	'WorkoutTimer::deactivate line: 2');
INSERT INTO ACT_AI
	VALUES (1756,
	1758,
	1759,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1757,
	1755,
	1760,
	5,
	1,
	'WorkoutTimer::deactivate line: 5');
INSERT INTO ACT_SEL
	VALUES (1757,
	1761,
	1,
	'one',
	1762);
INSERT INTO ACT_SR
	VALUES (1757);
INSERT INTO ACT_LNK
	VALUES (1763,
	'''acts as the stopwatch for''',
	1757,
	829,
	1764,
	2,
	705,
	6,
	9,
	6,
	24,
	6,
	27);
INSERT INTO ACT_LNK
	VALUES (1764,
	'''is currently executing''',
	0,
	845,
	0,
	2,
	841,
	6,
	57,
	6,
	62,
	6,
	66);
INSERT INTO ACT_SMT
	VALUES (1760,
	1755,
	1765,
	7,
	1,
	'WorkoutTimer::deactivate line: 7');
INSERT INTO ACT_IF
	VALUES (1760,
	1766,
	1767,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1765,
	1755,
	1768,
	12,
	1,
	'WorkoutTimer::deactivate line: 12');
INSERT INTO ACT_IOP
	VALUES (1765,
	12,
	16,
	12,
	6,
	0,
	672,
	0);
INSERT INTO ACT_SMT
	VALUES (1768,
	1755,
	0,
	13,
	1,
	'WorkoutTimer::deactivate line: 13');
INSERT INTO ACT_IOP
	VALUES (1768,
	13,
	24,
	13,
	6,
	0,
	694,
	0);
INSERT INTO V_VAL
	VALUES (1759,
	1,
	1,
	2,
	1,
	15,
	0,
	0,
	0,
	0,
	119,
	1755);
INSERT INTO V_TVL
	VALUES (1759,
	1769);
INSERT INTO V_VAL
	VALUES (1758,
	0,
	0,
	2,
	24,
	-1,
	2,
	37,
	0,
	0,
	119,
	1755);
INSERT INTO V_BRV
	VALUES (1758,
	953,
	1,
	2,
	19);
INSERT INTO V_VAL
	VALUES (1770,
	0,
	0,
	2,
	53,
	56,
	0,
	0,
	0,
	0,
	116,
	1755);
INSERT INTO V_IRF
	VALUES (1770,
	1771);
INSERT INTO V_VAL
	VALUES (1772,
	0,
	0,
	2,
	58,
	62,
	0,
	0,
	0,
	0,
	134,
	1755);
INSERT INTO V_AVL
	VALUES (1772,
	1770,
	719,
	1743);
INSERT INTO V_PAR
	VALUES (1772,
	0,
	1758,
	'timer_inst_ref',
	0,
	2,
	37);
INSERT INTO V_VAL
	VALUES (1762,
	0,
	0,
	6,
	3,
	6,
	0,
	0,
	0,
	0,
	116,
	1755);
INSERT INTO V_IRF
	VALUES (1762,
	1771);
INSERT INTO V_VAL
	VALUES (1773,
	0,
	0,
	7,
	16,
	28,
	0,
	0,
	0,
	0,
	116,
	1755);
INSERT INTO V_IRF
	VALUES (1773,
	1761);
INSERT INTO V_VAL
	VALUES (1774,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1755);
INSERT INTO V_UNY
	VALUES (1774,
	1773,
	'empty');
INSERT INTO V_VAL
	VALUES (1767,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1755);
INSERT INTO V_UNY
	VALUES (1767,
	1774,
	'not');
INSERT INTO V_VAR
	VALUES (1769,
	1755,
	'cancelSucceeded',
	1,
	119);
INSERT INTO V_TRN
	VALUES (1769,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1771,
	1755,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (1771,
	0,
	719);
INSERT INTO V_VAR
	VALUES (1761,
	1755,
	'executingGoal',
	1,
	116);
INSERT INTO V_INT
	VALUES (1761,
	0,
	841);
INSERT INTO ACT_BLK
	VALUES (1766,
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
	1754,
	0);
INSERT INTO ACT_SMT
	VALUES (1775,
	1766,
	0,
	8,
	3,
	'WorkoutTimer::deactivate line: 8');
INSERT INTO E_ESS
	VALUES (1775,
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
	VALUES (1775);
INSERT INTO E_GSME
	VALUES (1775,
	1776);
INSERT INTO E_GEN
	VALUES (1775,
	1761);
INSERT INTO O_TFR
	VALUES (1466,
	719,
	'initialize',
	'',
	94,
	1,
	'// Initialize this instance.

self.time = 0;',
	1,
	'',
	1753);
INSERT INTO ACT_OPB
	VALUES (1777,
	1466);
INSERT INTO ACT_ACT
	VALUES (1777,
	'operation',
	0,
	1778,
	0,
	0,
	'WorkoutTimer::initialize',
	0);
INSERT INTO ACT_BLK
	VALUES (1778,
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
	1777,
	0);
INSERT INTO ACT_SMT
	VALUES (1779,
	1778,
	0,
	3,
	1,
	'WorkoutTimer::initialize line: 3');
INSERT INTO ACT_AI
	VALUES (1779,
	1780,
	1781,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1782,
	1,
	0,
	3,
	1,
	4,
	0,
	0,
	0,
	0,
	116,
	1778);
INSERT INTO V_IRF
	VALUES (1782,
	1783);
INSERT INTO V_VAL
	VALUES (1781,
	1,
	0,
	3,
	6,
	9,
	0,
	0,
	0,
	0,
	14,
	1778);
INSERT INTO V_AVL
	VALUES (1781,
	1782,
	719,
	1014);
INSERT INTO V_VAL
	VALUES (1780,
	0,
	0,
	3,
	13,
	13,
	0,
	0,
	0,
	0,
	14,
	1778);
INSERT INTO V_LIN
	VALUES (1780,
	'0');
INSERT INTO V_VAR
	VALUES (1783,
	1778,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (1783,
	0,
	719);
INSERT INTO O_NBATTR
	VALUES (1784,
	719);
INSERT INTO O_BATTR
	VALUES (1784,
	719);
INSERT INTO O_ATTR
	VALUES (1784,
	719,
	0,
	'current_state',
	'',
	'',
	'current_state',
	0,
	100,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1014,
	719);
INSERT INTO O_BATTR
	VALUES (1014,
	719);
INSERT INTO O_ATTR
	VALUES (1014,
	719,
	1784,
	'time',
	'Number of seconds elapsed during the associated workout session.
Time elapses only when this timer is running.',
	'',
	'time',
	0,
	14,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1743,
	719);
INSERT INTO O_BATTR
	VALUES (1743,
	719);
INSERT INTO O_ATTR
	VALUES (1743,
	719,
	1014,
	'timer',
	'Handle for underlying timer mechanism that produces the 
delayed events enabling the timer to track elapsed time.',
	'',
	'timer',
	0,
	134,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	719);
INSERT INTO O_ID
	VALUES (1,
	719);
INSERT INTO O_ID
	VALUES (2,
	719);
INSERT INTO SM_ISM
	VALUES (1785,
	719);
INSERT INTO SM_SM
	VALUES (1785,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (1785);
INSERT INTO SM_LEVT
	VALUES (762,
	1785,
	0);
INSERT INTO SM_SEVT
	VALUES (762,
	1785,
	0);
INSERT INTO SM_EVT
	VALUES (762,
	1785,
	0,
	1,
	'startStopPressed',
	0,
	'',
	'WorkoutTimer1',
	'');
INSERT INTO SM_LEVT
	VALUES (727,
	1785,
	0);
INSERT INTO SM_SEVT
	VALUES (727,
	1785,
	0);
INSERT INTO SM_EVT
	VALUES (727,
	1785,
	0,
	2,
	'lapResetPressed',
	0,
	'',
	'WorkoutTimer2',
	'');
INSERT INTO SM_LEVT
	VALUES (1728,
	1785,
	0);
INSERT INTO SM_SEVT
	VALUES (1728,
	1785,
	0);
INSERT INTO SM_EVT
	VALUES (1728,
	1785,
	0,
	3,
	'tick',
	0,
	'',
	'WorkoutTimer3',
	'');
INSERT INTO SM_STATE
	VALUES (1786,
	1785,
	0,
	'stopped',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (1786,
	762,
	1785,
	0);
INSERT INTO SM_EIGN
	VALUES (1786,
	727,
	1785,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1786,
	727,
	1785,
	0);
INSERT INTO SM_EIGN
	VALUES (1786,
	1728,
	1785,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1786,
	1728,
	1785,
	0);
INSERT INTO SM_MOAH
	VALUES (1787,
	1785,
	1786);
INSERT INTO SM_AH
	VALUES (1787,
	1785);
INSERT INTO SM_ACT
	VALUES (1787,
	1785,
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
	VALUES (1788,
	1785,
	1787);
INSERT INTO ACT_ACT
	VALUES (1788,
	'state',
	0,
	1789,
	0,
	0,
	'WorkoutTimer::stopped',
	0);
INSERT INTO ACT_BLK
	VALUES (1789,
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
	1788,
	0);
INSERT INTO ACT_SMT
	VALUES (1790,
	1789,
	1791,
	2,
	1,
	'WorkoutTimer::stopped line: 2');
INSERT INTO ACT_SEL
	VALUES (1790,
	1792,
	1,
	'one',
	1793);
INSERT INTO ACT_SR
	VALUES (1790);
INSERT INTO ACT_LNK
	VALUES (1794,
	'''acts as the stopwatch for''',
	1790,
	829,
	0,
	2,
	705,
	2,
	37,
	2,
	52,
	2,
	55);
INSERT INTO ACT_SMT
	VALUES (1791,
	1789,
	1795,
	3,
	1,
	'WorkoutTimer::stopped line: 3');
INSERT INTO ACT_TFM
	VALUES (1791,
	1473,
	1792,
	3,
	9,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1795,
	1789,
	1796,
	6,
	1,
	'WorkoutTimer::stopped line: 6');
INSERT INTO ACT_IOP
	VALUES (1795,
	6,
	10,
	6,
	6,
	0,
	683,
	0);
INSERT INTO ACT_SMT
	VALUES (1796,
	1789,
	1797,
	7,
	1,
	'WorkoutTimer::stopped line: 7');
INSERT INTO ACT_SEL
	VALUES (1796,
	1798,
	1,
	'one',
	1799);
INSERT INTO ACT_SR
	VALUES (1796);
INSERT INTO ACT_LNK
	VALUES (1800,
	'''acts as the stopwatch for''',
	1796,
	829,
	1801,
	2,
	705,
	8,
	9,
	8,
	24,
	8,
	27);
INSERT INTO ACT_LNK
	VALUES (1801,
	'''current status indicated on''',
	0,
	746,
	0,
	2,
	747,
	9,
	3,
	9,
	11,
	9,
	14);
INSERT INTO ACT_SMT
	VALUES (1797,
	1789,
	0,
	10,
	1,
	'WorkoutTimer::stopped line: 10');
INSERT INTO E_ESS
	VALUES (1797,
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
	VALUES (1797);
INSERT INTO E_GSME
	VALUES (1797,
	1065);
INSERT INTO E_GEN
	VALUES (1797,
	1798);
INSERT INTO V_VAL
	VALUES (1793,
	0,
	0,
	2,
	31,
	34,
	0,
	0,
	0,
	0,
	116,
	1789);
INSERT INTO V_IRF
	VALUES (1793,
	1802);
INSERT INTO V_VAL
	VALUES (1803,
	0,
	0,
	6,
	24,
	27,
	0,
	0,
	0,
	0,
	116,
	1789);
INSERT INTO V_IRF
	VALUES (1803,
	1802);
INSERT INTO V_VAL
	VALUES (1804,
	0,
	0,
	6,
	29,
	32,
	0,
	0,
	0,
	0,
	14,
	1789);
INSERT INTO V_AVL
	VALUES (1804,
	1803,
	719,
	1014);
INSERT INTO V_PAR
	VALUES (1804,
	1795,
	0,
	'time',
	0,
	6,
	18);
INSERT INTO V_VAL
	VALUES (1799,
	0,
	0,
	8,
	3,
	6,
	0,
	0,
	0,
	0,
	116,
	1789);
INSERT INTO V_IRF
	VALUES (1799,
	1802);
INSERT INTO V_VAR
	VALUES (1792,
	1789,
	'session',
	1,
	116);
INSERT INTO V_INT
	VALUES (1792,
	0,
	705);
INSERT INTO V_VAR
	VALUES (1802,
	1789,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (1802,
	0,
	719);
INSERT INTO V_VAR
	VALUES (1798,
	1789,
	'display',
	1,
	116);
INSERT INTO V_INT
	VALUES (1798,
	0,
	747);
INSERT INTO SM_STATE
	VALUES (1805,
	1785,
	0,
	'running',
	2,
	0);
INSERT INTO SM_SEME
	VALUES (1805,
	762,
	1785,
	0);
INSERT INTO SM_SEME
	VALUES (1805,
	727,
	1785,
	0);
INSERT INTO SM_SEME
	VALUES (1805,
	1728,
	1785,
	0);
INSERT INTO SM_MOAH
	VALUES (1806,
	1785,
	1805);
INSERT INTO SM_AH
	VALUES (1806,
	1785);
INSERT INTO SM_ACT
	VALUES (1806,
	1785,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (1807,
	1785,
	1806);
INSERT INTO ACT_ACT
	VALUES (1807,
	'state',
	0,
	1808,
	0,
	0,
	'WorkoutTimer::running',
	0);
INSERT INTO ACT_BLK
	VALUES (1808,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1807,
	0);
INSERT INTO SM_STATE
	VALUES (1809,
	1785,
	0,
	'paused',
	3,
	0);
INSERT INTO SM_SEME
	VALUES (1809,
	762,
	1785,
	0);
INSERT INTO SM_SEME
	VALUES (1809,
	727,
	1785,
	0);
INSERT INTO SM_EIGN
	VALUES (1809,
	1728,
	1785,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1809,
	1728,
	1785,
	0);
INSERT INTO SM_MOAH
	VALUES (1810,
	1785,
	1809);
INSERT INTO SM_AH
	VALUES (1810,
	1785);
INSERT INTO SM_ACT
	VALUES (1810,
	1785,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (1811,
	1785,
	1810);
INSERT INTO ACT_ACT
	VALUES (1811,
	'state',
	0,
	1812,
	0,
	0,
	'WorkoutTimer::paused',
	0);
INSERT INTO ACT_BLK
	VALUES (1812,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1811,
	0);
INSERT INTO SM_NSTXN
	VALUES (1813,
	1785,
	1786,
	762,
	0);
INSERT INTO SM_TAH
	VALUES (1814,
	1785,
	1813);
INSERT INTO SM_AH
	VALUES (1814,
	1785);
INSERT INTO SM_ACT
	VALUES (1814,
	1785,
	1,
	'// Start the timer.
self.activate();',
	'');
INSERT INTO ACT_TAB
	VALUES (1815,
	1785,
	1814);
INSERT INTO ACT_ACT
	VALUES (1815,
	'transition',
	0,
	1816,
	0,
	0,
	'WorkoutTimer1: startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1816,
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
	1815,
	0);
INSERT INTO ACT_SMT
	VALUES (1817,
	1816,
	0,
	2,
	1,
	'WorkoutTimer1: startStopPressed line: 2');
INSERT INTO ACT_TFM
	VALUES (1817,
	1722,
	1818,
	2,
	6,
	0,
	0);
INSERT INTO V_VAR
	VALUES (1818,
	1816,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (1818,
	0,
	719);
INSERT INTO SM_TXN
	VALUES (1813,
	1785,
	1805,
	0);
INSERT INTO SM_NSTXN
	VALUES (1819,
	1785,
	1805,
	727,
	0);
INSERT INTO SM_TAH
	VALUES (1820,
	1785,
	1819);
INSERT INTO SM_AH
	VALUES (1820,
	1785);
INSERT INTO SM_ACT
	VALUES (1820,
	1785,
	1,
	'select any trackLog from instances of TrackLog;
if (not empty trackLog)
  trackLog.addLapMarker();
end if;',
	'');
INSERT INTO ACT_TAB
	VALUES (1821,
	1785,
	1820);
INSERT INTO ACT_ACT
	VALUES (1821,
	'transition',
	0,
	1822,
	0,
	0,
	'WorkoutTimer2: lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1822,
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
	1821,
	0);
INSERT INTO ACT_SMT
	VALUES (1823,
	1822,
	1824,
	1,
	1,
	'WorkoutTimer2: lapResetPressed line: 1');
INSERT INTO ACT_FIO
	VALUES (1823,
	1825,
	1,
	'any',
	813,
	1,
	39);
INSERT INTO ACT_SMT
	VALUES (1824,
	1822,
	0,
	2,
	1,
	'WorkoutTimer2: lapResetPressed line: 2');
INSERT INTO ACT_IF
	VALUES (1824,
	1826,
	1827,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1828,
	0,
	0,
	2,
	15,
	22,
	0,
	0,
	0,
	0,
	116,
	1822);
INSERT INTO V_IRF
	VALUES (1828,
	1825);
INSERT INTO V_VAL
	VALUES (1829,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1822);
INSERT INTO V_UNY
	VALUES (1829,
	1828,
	'empty');
INSERT INTO V_VAL
	VALUES (1827,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1822);
INSERT INTO V_UNY
	VALUES (1827,
	1829,
	'not');
INSERT INTO V_VAR
	VALUES (1825,
	1822,
	'trackLog',
	1,
	116);
INSERT INTO V_INT
	VALUES (1825,
	0,
	813);
INSERT INTO ACT_BLK
	VALUES (1826,
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
	1821,
	0);
INSERT INTO ACT_SMT
	VALUES (1830,
	1826,
	0,
	3,
	3,
	'WorkoutTimer2: lapResetPressed line: 3');
INSERT INTO ACT_TFM
	VALUES (1830,
	1356,
	1825,
	3,
	12,
	0,
	0);
INSERT INTO SM_TXN
	VALUES (1819,
	1785,
	1805,
	0);
INSERT INTO SM_NSTXN
	VALUES (1831,
	1785,
	1809,
	727,
	0);
INSERT INTO SM_TAH
	VALUES (1832,
	1785,
	1831);
INSERT INTO SM_AH
	VALUES (1832,
	1785);
INSERT INTO SM_ACT
	VALUES (1832,
	1785,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1833,
	1785,
	1832);
INSERT INTO ACT_ACT
	VALUES (1833,
	'transition',
	0,
	1834,
	0,
	0,
	'WorkoutTimer2: lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1834,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1833,
	0);
INSERT INTO SM_TXN
	VALUES (1831,
	1785,
	1786,
	0);
INSERT INTO SM_NSTXN
	VALUES (1835,
	1785,
	1809,
	762,
	0);
INSERT INTO SM_TAH
	VALUES (1836,
	1785,
	1835);
INSERT INTO SM_AH
	VALUES (1836,
	1785);
INSERT INTO SM_ACT
	VALUES (1836,
	1785,
	1,
	'self.activate();',
	'');
INSERT INTO ACT_TAB
	VALUES (1837,
	1785,
	1836);
INSERT INTO ACT_ACT
	VALUES (1837,
	'transition',
	0,
	1838,
	0,
	0,
	'WorkoutTimer1: startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1838,
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
	1837,
	0);
INSERT INTO ACT_SMT
	VALUES (1839,
	1838,
	0,
	1,
	1,
	'WorkoutTimer1: startStopPressed line: 1');
INSERT INTO ACT_TFM
	VALUES (1839,
	1722,
	1840,
	1,
	6,
	0,
	0);
INSERT INTO V_VAR
	VALUES (1840,
	1838,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (1840,
	0,
	719);
INSERT INTO SM_TXN
	VALUES (1835,
	1785,
	1805,
	0);
INSERT INTO SM_NSTXN
	VALUES (1841,
	1785,
	1805,
	762,
	0);
INSERT INTO SM_TAH
	VALUES (1842,
	1785,
	1841);
INSERT INTO SM_AH
	VALUES (1842,
	1785);
INSERT INTO SM_ACT
	VALUES (1842,
	1785,
	1,
	'self.deactivate();',
	'');
INSERT INTO ACT_TAB
	VALUES (1843,
	1785,
	1842);
INSERT INTO ACT_ACT
	VALUES (1843,
	'transition',
	0,
	1844,
	0,
	0,
	'WorkoutTimer1: startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1844,
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
	1843,
	0);
INSERT INTO ACT_SMT
	VALUES (1845,
	1844,
	0,
	1,
	1,
	'WorkoutTimer1: startStopPressed line: 1');
INSERT INTO ACT_TFM
	VALUES (1845,
	1753,
	1846,
	1,
	6,
	0,
	0);
INSERT INTO V_VAR
	VALUES (1846,
	1844,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (1846,
	0,
	719);
INSERT INTO SM_TXN
	VALUES (1841,
	1785,
	1809,
	0);
INSERT INTO SM_NSTXN
	VALUES (1847,
	1785,
	1805,
	1728,
	0);
INSERT INTO SM_TAH
	VALUES (1848,
	1785,
	1847);
INSERT INTO SM_AH
	VALUES (1848,
	1785);
INSERT INTO SM_ACT
	VALUES (1848,
	1785,
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
	VALUES (1849,
	1785,
	1848);
INSERT INTO ACT_ACT
	VALUES (1849,
	'transition',
	0,
	1850,
	0,
	0,
	'WorkoutTimer3: tick',
	0);
INSERT INTO ACT_BLK
	VALUES (1850,
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
	1849,
	0);
INSERT INTO ACT_SMT
	VALUES (1851,
	1850,
	1852,
	2,
	1,
	'WorkoutTimer3: tick line: 2');
INSERT INTO ACT_AI
	VALUES (1851,
	1853,
	1854,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1852,
	1850,
	1855,
	5,
	1,
	'WorkoutTimer3: tick line: 5');
INSERT INTO ACT_SEL
	VALUES (1852,
	1856,
	1,
	'one',
	1857);
INSERT INTO ACT_SR
	VALUES (1852);
INSERT INTO ACT_LNK
	VALUES (1858,
	'''acts as the stopwatch for''',
	1852,
	829,
	1859,
	2,
	705,
	6,
	9,
	6,
	24,
	6,
	27);
INSERT INTO ACT_LNK
	VALUES (1859,
	'''captures path in''',
	0,
	832,
	0,
	2,
	813,
	6,
	57,
	6,
	66,
	6,
	69);
INSERT INTO ACT_SMT
	VALUES (1855,
	1850,
	1860,
	7,
	1,
	'WorkoutTimer3: tick line: 7');
INSERT INTO ACT_TFM
	VALUES (1855,
	1218,
	1856,
	7,
	10,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1860,
	1850,
	0,
	10,
	1,
	'WorkoutTimer3: tick line: 10');
INSERT INTO ACT_IOP
	VALUES (1860,
	10,
	10,
	10,
	6,
	0,
	683,
	0);
INSERT INTO V_VAL
	VALUES (1861,
	1,
	0,
	2,
	1,
	4,
	0,
	0,
	0,
	0,
	116,
	1850);
INSERT INTO V_IRF
	VALUES (1861,
	1862);
INSERT INTO V_VAL
	VALUES (1854,
	1,
	0,
	2,
	6,
	9,
	0,
	0,
	0,
	0,
	14,
	1850);
INSERT INTO V_AVL
	VALUES (1854,
	1861,
	719,
	1014);
INSERT INTO V_VAL
	VALUES (1863,
	0,
	0,
	2,
	13,
	16,
	0,
	0,
	0,
	0,
	116,
	1850);
INSERT INTO V_IRF
	VALUES (1863,
	1862);
INSERT INTO V_VAL
	VALUES (1864,
	0,
	0,
	2,
	18,
	21,
	0,
	0,
	0,
	0,
	14,
	1850);
INSERT INTO V_AVL
	VALUES (1864,
	1863,
	719,
	1014);
INSERT INTO V_VAL
	VALUES (1853,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	14,
	1850);
INSERT INTO V_BIN
	VALUES (1853,
	1865,
	1864,
	'+');
INSERT INTO V_VAL
	VALUES (1865,
	0,
	0,
	2,
	25,
	35,
	0,
	0,
	0,
	0,
	14,
	1850);
INSERT INTO V_SCV
	VALUES (1865,
	1747,
	14);
INSERT INTO V_VAL
	VALUES (1857,
	0,
	0,
	6,
	3,
	6,
	0,
	0,
	0,
	0,
	116,
	1850);
INSERT INTO V_IRF
	VALUES (1857,
	1862);
INSERT INTO V_VAL
	VALUES (1866,
	0,
	0,
	10,
	24,
	27,
	0,
	0,
	0,
	0,
	116,
	1850);
INSERT INTO V_IRF
	VALUES (1866,
	1862);
INSERT INTO V_VAL
	VALUES (1867,
	0,
	0,
	10,
	29,
	32,
	0,
	0,
	0,
	0,
	14,
	1850);
INSERT INTO V_AVL
	VALUES (1867,
	1866,
	719,
	1014);
INSERT INTO V_PAR
	VALUES (1867,
	1860,
	0,
	'time',
	0,
	10,
	18);
INSERT INTO V_VAR
	VALUES (1862,
	1850,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (1862,
	0,
	719);
INSERT INTO V_VAR
	VALUES (1856,
	1850,
	'trackLog',
	1,
	116);
INSERT INTO V_INT
	VALUES (1856,
	0,
	813);
INSERT INTO SM_TXN
	VALUES (1847,
	1785,
	1805,
	0);
INSERT INTO PE_PE
	VALUES (841,
	1,
	811,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (841,
	'Goal',
	9,
	'Goal',
	'Each instance represents a particular goal as it is executing.
This class knows how to evaluate whether the goal is being achieved 
and whether the goal has completed.',
	0);
INSERT INTO O_TFR
	VALUES (1868,
	841,
	'goalcreate',
	'',
	94,
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
	VALUES (1869,
	1868,
	'sequenceNumber',
	14,
	0,
	'',
	0,
	'Sequence number of the goal specification for which an instance of a goal should be created.');
INSERT INTO ACT_OPB
	VALUES (1870,
	1868);
INSERT INTO ACT_ACT
	VALUES (1870,
	'class operation',
	0,
	1871,
	0,
	0,
	'Goal::goalcreate',
	0);
INSERT INTO ACT_BLK
	VALUES (1871,
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
	1870,
	0);
INSERT INTO ACT_SMT
	VALUES (1872,
	1871,
	1873,
	8,
	1,
	'Goal::goalcreate line: 8');
INSERT INTO ACT_FIW
	VALUES (1872,
	1874,
	1,
	'any',
	1875,
	776,
	8,
	39);
INSERT INTO ACT_SMT
	VALUES (1873,
	1871,
	0,
	10,
	1,
	'Goal::goalcreate line: 10');
INSERT INTO ACT_IF
	VALUES (1873,
	1876,
	1877,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1878,
	0,
	0,
	9,
	11,
	-1,
	0,
	0,
	0,
	0,
	116,
	1871);
INSERT INTO V_SLR
	VALUES (1878,
	0,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1879,
	0,
	0,
	9,
	20,
	33,
	0,
	0,
	0,
	0,
	14,
	1871);
INSERT INTO V_AVL
	VALUES (1879,
	1878,
	776,
	797);
INSERT INTO V_VAL
	VALUES (1875,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1871);
INSERT INTO V_BIN
	VALUES (1875,
	1880,
	1879,
	'==');
INSERT INTO V_VAL
	VALUES (1880,
	0,
	0,
	9,
	44,
	57,
	0,
	0,
	0,
	0,
	14,
	1871);
INSERT INTO V_PVL
	VALUES (1880,
	0,
	0,
	1869,
	0);
INSERT INTO V_VAL
	VALUES (1881,
	0,
	0,
	10,
	16,
	23,
	0,
	0,
	0,
	0,
	116,
	1871);
INSERT INTO V_IRF
	VALUES (1881,
	1874);
INSERT INTO V_VAL
	VALUES (1882,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1871);
INSERT INTO V_UNY
	VALUES (1882,
	1881,
	'empty');
INSERT INTO V_VAL
	VALUES (1877,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1871);
INSERT INTO V_UNY
	VALUES (1877,
	1882,
	'not');
INSERT INTO V_VAR
	VALUES (1874,
	1871,
	'goalSpec',
	1,
	116);
INSERT INTO V_INT
	VALUES (1874,
	0,
	776);
INSERT INTO ACT_BLK
	VALUES (1876,
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
	1870,
	0);
INSERT INTO ACT_SMT
	VALUES (1883,
	1876,
	1884,
	11,
	3,
	'Goal::goalcreate line: 11');
INSERT INTO ACT_CR
	VALUES (1883,
	1885,
	1,
	841,
	11,
	34);
INSERT INTO ACT_SMT
	VALUES (1884,
	1876,
	1886,
	12,
	3,
	'Goal::goalcreate line: 12');
INSERT INTO ACT_REL
	VALUES (1884,
	1885,
	1874,
	'''specified by''',
	839,
	12,
	34,
	12,
	37);
INSERT INTO ACT_SMT
	VALUES (1886,
	1876,
	1887,
	13,
	3,
	'Goal::goalcreate line: 13');
INSERT INTO ACT_FIO
	VALUES (1886,
	1888,
	1,
	'any',
	705,
	13,
	40);
INSERT INTO ACT_SMT
	VALUES (1887,
	1876,
	1889,
	14,
	3,
	'Goal::goalcreate line: 14');
INSERT INTO ACT_REL
	VALUES (1887,
	1885,
	1888,
	'''is currently executing within''',
	845,
	14,
	33,
	14,
	37);
INSERT INTO ACT_SMT
	VALUES (1889,
	1876,
	1890,
	17,
	3,
	'Goal::goalcreate line: 17');
INSERT INTO ACT_TFM
	VALUES (1889,
	1891,
	1885,
	17,
	8,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1890,
	1876,
	1892,
	18,
	3,
	'Goal::goalcreate line: 18');
INSERT INTO ACT_AI
	VALUES (1890,
	1893,
	1894,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1892,
	1876,
	1895,
	21,
	3,
	'Goal::goalcreate line: 21');
INSERT INTO E_ESS
	VALUES (1892,
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
	VALUES (1892,
	1,
	1896);
INSERT INTO E_CSME
	VALUES (1892,
	1752);
INSERT INTO E_CEI
	VALUES (1892,
	1885);
INSERT INTO ACT_SMT
	VALUES (1895,
	1876,
	0,
	22,
	3,
	'Goal::goalcreate line: 22');
INSERT INTO ACT_AI
	VALUES (1895,
	1897,
	1898,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1899,
	1,
	0,
	18,
	3,
	6,
	0,
	0,
	0,
	0,
	116,
	1876);
INSERT INTO V_IRF
	VALUES (1899,
	1885);
INSERT INTO V_VAL
	VALUES (1894,
	1,
	0,
	18,
	8,
	18,
	0,
	0,
	0,
	0,
	1046,
	1876);
INSERT INTO V_AVL
	VALUES (1894,
	1899,
	841,
	1047);
INSERT INTO V_VAL
	VALUES (1893,
	0,
	0,
	18,
	39,
	46,
	0,
	0,
	0,
	0,
	1046,
	1876);
INSERT INTO V_LEN
	VALUES (1893,
	1049,
	18,
	22);
INSERT INTO V_VAL
	VALUES (1900,
	1,
	0,
	22,
	3,
	6,
	0,
	0,
	0,
	0,
	116,
	1876);
INSERT INTO V_IRF
	VALUES (1900,
	1885);
INSERT INTO V_VAL
	VALUES (1898,
	1,
	0,
	22,
	8,
	22,
	0,
	0,
	0,
	0,
	134,
	1876);
INSERT INTO V_AVL
	VALUES (1898,
	1900,
	841,
	1901);
INSERT INTO V_VAL
	VALUES (1897,
	0,
	0,
	22,
	31,
	-1,
	22,
	54,
	22,
	81,
	134,
	1876);
INSERT INTO V_BRV
	VALUES (1897,
	934,
	1,
	22,
	26);
INSERT INTO V_VAL
	VALUES (1902,
	0,
	0,
	22,
	66,
	78,
	0,
	0,
	0,
	0,
	138,
	1876);
INSERT INTO V_TVL
	VALUES (1902,
	1896);
INSERT INTO V_PAR
	VALUES (1902,
	0,
	1897,
	'event_inst',
	1903,
	22,
	54);
INSERT INTO V_VAL
	VALUES (1903,
	0,
	0,
	22,
	95,
	110,
	0,
	0,
	0,
	0,
	14,
	1876);
INSERT INTO V_SCV
	VALUES (1903,
	1904,
	14);
INSERT INTO V_PAR
	VALUES (1903,
	0,
	1897,
	'microseconds',
	0,
	22,
	81);
INSERT INTO V_VAR
	VALUES (1885,
	1876,
	'goal',
	1,
	116);
INSERT INTO V_INT
	VALUES (1885,
	0,
	841);
INSERT INTO V_VAR
	VALUES (1888,
	1876,
	'session',
	1,
	116);
INSERT INTO V_INT
	VALUES (1888,
	0,
	705);
INSERT INTO V_VAR
	VALUES (1896,
	1876,
	'evaluateEvent',
	1,
	138);
INSERT INTO V_TRN
	VALUES (1896,
	0,
	'');
INSERT INTO O_TFR
	VALUES (1891,
	841,
	'calculateStart',
	'',
	94,
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
	1868);
INSERT INTO ACT_OPB
	VALUES (1905,
	1891);
INSERT INTO ACT_ACT
	VALUES (1905,
	'operation',
	0,
	1906,
	0,
	0,
	'Goal::calculateStart',
	0);
INSERT INTO ACT_BLK
	VALUES (1906,
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
	1905,
	0);
INSERT INTO ACT_SMT
	VALUES (1907,
	1906,
	1908,
	3,
	1,
	'Goal::calculateStart line: 3');
INSERT INTO ACT_SEL
	VALUES (1907,
	1909,
	1,
	'one',
	1910);
INSERT INTO ACT_SR
	VALUES (1907);
INSERT INTO ACT_LNK
	VALUES (1911,
	'''specified by''',
	1907,
	839,
	0,
	2,
	776,
	3,
	38,
	3,
	47,
	3,
	50);
INSERT INTO ACT_SMT
	VALUES (1908,
	1906,
	0,
	4,
	1,
	'Goal::calculateStart line: 4');
INSERT INTO ACT_IF
	VALUES (1908,
	1912,
	1913,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1914,
	1906,
	0,
	8,
	1,
	'Goal::calculateStart line: 8');
INSERT INTO ACT_EL
	VALUES (1914,
	1915,
	1916,
	1908);
INSERT INTO ACT_SMT
	VALUES (1917,
	1906,
	0,
	11,
	1,
	'Goal::calculateStart line: 11');
INSERT INTO ACT_E
	VALUES (1917,
	1918,
	1908);
INSERT INTO V_VAL
	VALUES (1910,
	0,
	0,
	3,
	32,
	35,
	0,
	0,
	0,
	0,
	116,
	1906);
INSERT INTO V_IRF
	VALUES (1910,
	1919);
INSERT INTO V_VAL
	VALUES (1920,
	0,
	0,
	4,
	6,
	13,
	0,
	0,
	0,
	0,
	116,
	1906);
INSERT INTO V_IRF
	VALUES (1920,
	1909);
INSERT INTO V_VAL
	VALUES (1921,
	0,
	0,
	4,
	15,
	22,
	0,
	0,
	0,
	0,
	62,
	1906);
INSERT INTO V_AVL
	VALUES (1921,
	1920,
	776,
	807);
INSERT INTO V_VAL
	VALUES (1913,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1906);
INSERT INTO V_BIN
	VALUES (1913,
	1922,
	1921,
	'==');
INSERT INTO V_VAL
	VALUES (1922,
	0,
	0,
	4,
	37,
	40,
	0,
	0,
	0,
	0,
	62,
	1906);
INSERT INTO V_LEN
	VALUES (1922,
	411,
	4,
	27);
INSERT INTO V_VAL
	VALUES (1923,
	0,
	0,
	8,
	8,
	15,
	0,
	0,
	0,
	0,
	116,
	1906);
INSERT INTO V_IRF
	VALUES (1923,
	1909);
INSERT INTO V_VAL
	VALUES (1924,
	0,
	0,
	8,
	17,
	24,
	0,
	0,
	0,
	0,
	62,
	1906);
INSERT INTO V_AVL
	VALUES (1924,
	1923,
	776,
	807);
INSERT INTO V_VAL
	VALUES (1916,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1906);
INSERT INTO V_BIN
	VALUES (1916,
	1925,
	1924,
	'==');
INSERT INTO V_VAL
	VALUES (1925,
	0,
	0,
	8,
	39,
	46,
	0,
	0,
	0,
	0,
	62,
	1906);
INSERT INTO V_LEN
	VALUES (1925,
	403,
	8,
	29);
INSERT INTO V_VAR
	VALUES (1909,
	1906,
	'goalSpec',
	1,
	116);
INSERT INTO V_INT
	VALUES (1909,
	0,
	776);
INSERT INTO V_VAR
	VALUES (1919,
	1906,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (1919,
	0,
	841);
INSERT INTO ACT_BLK
	VALUES (1912,
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
	1905,
	0);
INSERT INTO ACT_SMT
	VALUES (1926,
	1912,
	1927,
	5,
	3,
	'Goal::calculateStart line: 5');
INSERT INTO ACT_SEL
	VALUES (1926,
	1928,
	1,
	'one',
	1929);
INSERT INTO ACT_SR
	VALUES (1926);
INSERT INTO ACT_LNK
	VALUES (1930,
	'''is currently executing within''',
	1926,
	845,
	1931,
	2,
	705,
	6,
	11,
	6,
	26,
	6,
	30);
INSERT INTO ACT_LNK
	VALUES (1931,
	'''is timed by''',
	0,
	829,
	0,
	2,
	719,
	6,
	64,
	6,
	77,
	6,
	80);
INSERT INTO ACT_SMT
	VALUES (1927,
	1912,
	0,
	7,
	3,
	'Goal::calculateStart line: 7');
INSERT INTO ACT_AI
	VALUES (1927,
	1932,
	1933,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1929,
	0,
	0,
	6,
	5,
	8,
	0,
	0,
	0,
	0,
	116,
	1912);
INSERT INTO V_IRF
	VALUES (1929,
	1919);
INSERT INTO V_VAL
	VALUES (1934,
	1,
	0,
	7,
	3,
	6,
	0,
	0,
	0,
	0,
	116,
	1912);
INSERT INTO V_IRF
	VALUES (1934,
	1919);
INSERT INTO V_VAL
	VALUES (1933,
	1,
	0,
	7,
	8,
	16,
	0,
	0,
	0,
	0,
	23,
	1912);
INSERT INTO V_AVL
	VALUES (1933,
	1934,
	841,
	1935);
INSERT INTO V_VAL
	VALUES (1936,
	0,
	0,
	7,
	20,
	31,
	0,
	0,
	0,
	0,
	116,
	1912);
INSERT INTO V_IRF
	VALUES (1936,
	1928);
INSERT INTO V_VAL
	VALUES (1932,
	0,
	0,
	7,
	33,
	36,
	0,
	0,
	0,
	0,
	14,
	1912);
INSERT INTO V_AVL
	VALUES (1932,
	1936,
	719,
	1014);
INSERT INTO V_VAR
	VALUES (1928,
	1912,
	'workoutTimer',
	1,
	116);
INSERT INTO V_INT
	VALUES (1928,
	0,
	719);
INSERT INTO ACT_BLK
	VALUES (1915,
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
	1905,
	0);
INSERT INTO ACT_SMT
	VALUES (1937,
	1915,
	1938,
	9,
	3,
	'Goal::calculateStart line: 9');
INSERT INTO ACT_SEL
	VALUES (1937,
	1939,
	1,
	'one',
	1940);
INSERT INTO ACT_SR
	VALUES (1937);
INSERT INTO ACT_LNK
	VALUES (1941,
	'''is currently executing within''',
	1937,
	845,
	0,
	2,
	705,
	9,
	39,
	9,
	54,
	9,
	58);
INSERT INTO ACT_SMT
	VALUES (1938,
	1915,
	0,
	10,
	3,
	'Goal::calculateStart line: 10');
INSERT INTO ACT_AI
	VALUES (1938,
	1942,
	1943,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1940,
	0,
	0,
	9,
	33,
	36,
	0,
	0,
	0,
	0,
	116,
	1915);
INSERT INTO V_IRF
	VALUES (1940,
	1919);
INSERT INTO V_VAL
	VALUES (1944,
	1,
	0,
	10,
	3,
	6,
	0,
	0,
	0,
	0,
	116,
	1915);
INSERT INTO V_IRF
	VALUES (1944,
	1919);
INSERT INTO V_VAL
	VALUES (1943,
	1,
	0,
	10,
	8,
	16,
	0,
	0,
	0,
	0,
	23,
	1915);
INSERT INTO V_AVL
	VALUES (1943,
	1944,
	841,
	1935);
INSERT INTO V_VAL
	VALUES (1945,
	0,
	0,
	10,
	20,
	26,
	0,
	0,
	0,
	0,
	116,
	1915);
INSERT INTO V_IRF
	VALUES (1945,
	1939);
INSERT INTO V_VAL
	VALUES (1942,
	0,
	0,
	10,
	28,
	46,
	0,
	0,
	0,
	0,
	23,
	1915);
INSERT INTO V_AVL
	VALUES (1942,
	1945,
	705,
	1086);
INSERT INTO V_VAR
	VALUES (1939,
	1915,
	'session',
	1,
	116);
INSERT INTO V_INT
	VALUES (1939,
	0,
	705);
INSERT INTO ACT_BLK
	VALUES (1918,
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
	1905,
	0);
INSERT INTO ACT_SMT
	VALUES (1946,
	1918,
	0,
	12,
	3,
	'Goal::calculateStart line: 12');
INSERT INTO ACT_BRG
	VALUES (1946,
	729,
	12,
	8,
	12,
	3);
INSERT INTO V_VAL
	VALUES (1947,
	0,
	0,
	12,
	29,
	73,
	0,
	0,
	0,
	0,
	149,
	1918);
INSERT INTO V_LST
	VALUES (1947,
	'Goal.calculateStart: Unknown Goal Span Type.');
INSERT INTO V_PAR
	VALUES (1947,
	1946,
	0,
	'message',
	0,
	12,
	20);
INSERT INTO O_TFR
	VALUES (1948,
	841,
	'evaluateAchievement',
	'',
	1046,
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
	1891);
INSERT INTO ACT_OPB
	VALUES (1949,
	1948);
INSERT INTO ACT_ACT
	VALUES (1949,
	'operation',
	0,
	1950,
	0,
	0,
	'Goal::evaluateAchievement',
	0);
INSERT INTO ACT_BLK
	VALUES (1950,
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
	1949,
	0);
INSERT INTO ACT_SMT
	VALUES (1951,
	1950,
	1952,
	6,
	1,
	'Goal::evaluateAchievement line: 6');
INSERT INTO ACT_SEL
	VALUES (1951,
	1953,
	1,
	'one',
	1954);
INSERT INTO ACT_SR
	VALUES (1951);
INSERT INTO ACT_LNK
	VALUES (1955,
	'''specified by''',
	1951,
	839,
	0,
	2,
	776,
	6,
	38,
	6,
	47,
	6,
	50);
INSERT INTO ACT_SMT
	VALUES (1952,
	1950,
	1956,
	7,
	1,
	'Goal::evaluateAchievement line: 7');
INSERT INTO ACT_SEL
	VALUES (1952,
	1957,
	1,
	'one',
	1958);
INSERT INTO ACT_SR
	VALUES (1952);
INSERT INTO ACT_LNK
	VALUES (1959,
	'''is currently executing within''',
	1952,
	845,
	0,
	2,
	705,
	7,
	37,
	7,
	52,
	7,
	56);
INSERT INTO ACT_SMT
	VALUES (1956,
	1950,
	1960,
	11,
	1,
	'Goal::evaluateAchievement line: 11');
INSERT INTO ACT_AI
	VALUES (1956,
	1961,
	1962,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1960,
	1950,
	1963,
	12,
	1,
	'Goal::evaluateAchievement line: 12');
INSERT INTO ACT_IF
	VALUES (1960,
	1964,
	1965,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1966,
	1950,
	0,
	14,
	1,
	'Goal::evaluateAchievement line: 14');
INSERT INTO ACT_EL
	VALUES (1966,
	1967,
	1968,
	1960);
INSERT INTO ACT_SMT
	VALUES (1969,
	1950,
	0,
	16,
	1,
	'Goal::evaluateAchievement line: 16');
INSERT INTO ACT_E
	VALUES (1969,
	1970,
	1960);
INSERT INTO ACT_SMT
	VALUES (1963,
	1950,
	1971,
	21,
	1,
	'Goal::evaluateAchievement line: 21');
INSERT INTO ACT_AI
	VALUES (1963,
	1972,
	1973,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1971,
	1950,
	1974,
	22,
	1,
	'Goal::evaluateAchievement line: 22');
INSERT INTO ACT_IF
	VALUES (1971,
	1975,
	1976,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1977,
	1950,
	0,
	24,
	1,
	'Goal::evaluateAchievement line: 24');
INSERT INTO ACT_EL
	VALUES (1977,
	1978,
	1979,
	1971);
INSERT INTO ACT_SMT
	VALUES (1974,
	1950,
	1980,
	30,
	1,
	'Goal::evaluateAchievement line: 30');
INSERT INTO ACT_IF
	VALUES (1974,
	1981,
	1982,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1980,
	1950,
	0,
	38,
	1,
	'Goal::evaluateAchievement line: 38');
INSERT INTO ACT_RET
	VALUES (1980,
	1983);
INSERT INTO V_VAL
	VALUES (1954,
	0,
	0,
	6,
	32,
	35,
	0,
	0,
	0,
	0,
	116,
	1950);
INSERT INTO V_IRF
	VALUES (1954,
	1984);
INSERT INTO V_VAL
	VALUES (1958,
	0,
	0,
	7,
	31,
	34,
	0,
	0,
	0,
	0,
	116,
	1950);
INSERT INTO V_IRF
	VALUES (1958,
	1984);
INSERT INTO V_VAL
	VALUES (1962,
	1,
	1,
	11,
	1,
	12,
	0,
	0,
	0,
	0,
	23,
	1950);
INSERT INTO V_TVL
	VALUES (1962,
	1985);
INSERT INTO V_VAL
	VALUES (1961,
	0,
	0,
	11,
	16,
	18,
	0,
	0,
	0,
	0,
	23,
	1950);
INSERT INTO V_LRL
	VALUES (1961,
	'0.0');
INSERT INTO V_VAL
	VALUES (1986,
	0,
	0,
	12,
	6,
	13,
	0,
	0,
	0,
	0,
	116,
	1950);
INSERT INTO V_IRF
	VALUES (1986,
	1953);
INSERT INTO V_VAL
	VALUES (1987,
	0,
	0,
	12,
	15,
	26,
	0,
	0,
	0,
	0,
	59,
	1950);
INSERT INTO V_AVL
	VALUES (1987,
	1986,
	776,
	805);
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
	119,
	1950);
INSERT INTO V_BIN
	VALUES (1965,
	1988,
	1987,
	'==');
INSERT INTO V_VAL
	VALUES (1988,
	0,
	0,
	12,
	45,
	53,
	0,
	0,
	0,
	0,
	59,
	1950);
INSERT INTO V_LEN
	VALUES (1988,
	409,
	12,
	31);
INSERT INTO V_VAL
	VALUES (1989,
	0,
	0,
	14,
	8,
	15,
	0,
	0,
	0,
	0,
	116,
	1950);
INSERT INTO V_IRF
	VALUES (1989,
	1953);
INSERT INTO V_VAL
	VALUES (1990,
	0,
	0,
	14,
	17,
	28,
	0,
	0,
	0,
	0,
	59,
	1950);
INSERT INTO V_AVL
	VALUES (1990,
	1989,
	776,
	805);
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
	119,
	1950);
INSERT INTO V_BIN
	VALUES (1968,
	1991,
	1990,
	'==');
INSERT INTO V_VAL
	VALUES (1991,
	0,
	0,
	14,
	47,
	50,
	0,
	0,
	0,
	0,
	59,
	1950);
INSERT INTO V_LEN
	VALUES (1991,
	401,
	14,
	33);
INSERT INTO V_VAL
	VALUES (1973,
	1,
	1,
	21,
	1,
	15,
	0,
	0,
	0,
	0,
	1046,
	1950);
INSERT INTO V_TVL
	VALUES (1973,
	1992);
INSERT INTO V_VAL
	VALUES (1972,
	0,
	0,
	21,
	36,
	44,
	0,
	0,
	0,
	0,
	1046,
	1950);
INSERT INTO V_LEN
	VALUES (1972,
	1993,
	21,
	19);
INSERT INTO V_VAL
	VALUES (1994,
	0,
	0,
	22,
	6,
	17,
	0,
	0,
	0,
	0,
	23,
	1950);
INSERT INTO V_TVL
	VALUES (1994,
	1985);
INSERT INTO V_VAL
	VALUES (1976,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1950);
INSERT INTO V_BIN
	VALUES (1976,
	1995,
	1994,
	'<');
INSERT INTO V_VAL
	VALUES (1996,
	0,
	0,
	22,
	21,
	28,
	0,
	0,
	0,
	0,
	116,
	1950);
INSERT INTO V_IRF
	VALUES (1996,
	1953);
INSERT INTO V_VAL
	VALUES (1995,
	0,
	0,
	22,
	30,
	36,
	0,
	0,
	0,
	0,
	23,
	1950);
INSERT INTO V_AVL
	VALUES (1995,
	1996,
	776,
	799);
INSERT INTO V_VAL
	VALUES (1997,
	0,
	0,
	24,
	8,
	19,
	0,
	0,
	0,
	0,
	23,
	1950);
INSERT INTO V_TVL
	VALUES (1997,
	1985);
INSERT INTO V_VAL
	VALUES (1979,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1950);
INSERT INTO V_BIN
	VALUES (1979,
	1998,
	1997,
	'>');
INSERT INTO V_VAL
	VALUES (1999,
	0,
	0,
	24,
	23,
	30,
	0,
	0,
	0,
	0,
	116,
	1950);
INSERT INTO V_IRF
	VALUES (1999,
	1953);
INSERT INTO V_VAL
	VALUES (1998,
	0,
	0,
	24,
	32,
	38,
	0,
	0,
	0,
	0,
	23,
	1950);
INSERT INTO V_AVL
	VALUES (1998,
	1999,
	776,
	801);
INSERT INTO V_VAL
	VALUES (2000,
	0,
	0,
	30,
	6,
	13,
	0,
	0,
	0,
	0,
	116,
	1950);
INSERT INTO V_IRF
	VALUES (2000,
	1953);
INSERT INTO V_VAL
	VALUES (2001,
	0,
	0,
	30,
	15,
	26,
	0,
	0,
	0,
	0,
	59,
	1950);
INSERT INTO V_AVL
	VALUES (2001,
	2000,
	776,
	805);
INSERT INTO V_VAL
	VALUES (1982,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1950);
INSERT INTO V_BIN
	VALUES (1982,
	2002,
	2001,
	'==');
INSERT INTO V_VAL
	VALUES (2002,
	0,
	0,
	30,
	45,
	48,
	0,
	0,
	0,
	0,
	59,
	1950);
INSERT INTO V_LEN
	VALUES (2002,
	401,
	30,
	31);
INSERT INTO V_VAL
	VALUES (1983,
	0,
	0,
	38,
	9,
	23,
	0,
	0,
	0,
	0,
	1046,
	1950);
INSERT INTO V_TVL
	VALUES (1983,
	1992);
INSERT INTO V_VAR
	VALUES (1953,
	1950,
	'goalSpec',
	1,
	116);
INSERT INTO V_INT
	VALUES (1953,
	0,
	776);
INSERT INTO V_VAR
	VALUES (1984,
	1950,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (1984,
	0,
	841);
INSERT INTO V_VAR
	VALUES (1957,
	1950,
	'session',
	1,
	116);
INSERT INTO V_INT
	VALUES (1957,
	0,
	705);
INSERT INTO V_VAR
	VALUES (1985,
	1950,
	'currentValue',
	1,
	23);
INSERT INTO V_TRN
	VALUES (1985,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1992,
	1950,
	'goalDisposition',
	1,
	1046);
INSERT INTO V_TRN
	VALUES (1992,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (1964,
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
	1949,
	0);
INSERT INTO ACT_SMT
	VALUES (2003,
	1964,
	0,
	13,
	3,
	'Goal::evaluateAchievement line: 13');
INSERT INTO ACT_AI
	VALUES (2003,
	2004,
	2005,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2005,
	1,
	0,
	13,
	3,
	14,
	0,
	0,
	0,
	0,
	23,
	1964);
INSERT INTO V_TVL
	VALUES (2005,
	1985);
INSERT INTO V_VAL
	VALUES (2006,
	0,
	0,
	13,
	18,
	24,
	0,
	0,
	0,
	0,
	116,
	1964);
INSERT INTO V_IRF
	VALUES (2006,
	1957);
INSERT INTO V_VAL
	VALUES (2004,
	0,
	0,
	13,
	26,
	41,
	0,
	0,
	0,
	0,
	14,
	1964);
INSERT INTO V_AVL
	VALUES (2004,
	2006,
	705,
	1154);
INSERT INTO ACT_BLK
	VALUES (1967,
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
	1949,
	0);
INSERT INTO ACT_SMT
	VALUES (2007,
	1967,
	0,
	15,
	3,
	'Goal::evaluateAchievement line: 15');
INSERT INTO ACT_AI
	VALUES (2007,
	2008,
	2009,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2009,
	1,
	0,
	15,
	3,
	14,
	0,
	0,
	0,
	0,
	23,
	1967);
INSERT INTO V_TVL
	VALUES (2009,
	1985);
INSERT INTO V_VAL
	VALUES (2010,
	0,
	0,
	15,
	18,
	24,
	0,
	0,
	0,
	0,
	116,
	1967);
INSERT INTO V_IRF
	VALUES (2010,
	1957);
INSERT INTO V_VAL
	VALUES (2008,
	0,
	0,
	15,
	26,
	36,
	0,
	0,
	0,
	0,
	23,
	1967);
INSERT INTO V_AVL
	VALUES (2008,
	2010,
	705,
	1134);
INSERT INTO ACT_BLK
	VALUES (1970,
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
	1949,
	0);
INSERT INTO ACT_SMT
	VALUES (2011,
	1970,
	0,
	17,
	3,
	'Goal::evaluateAchievement line: 17');
INSERT INTO ACT_BRG
	VALUES (2011,
	729,
	17,
	8,
	17,
	3);
INSERT INTO V_VAL
	VALUES (2012,
	0,
	0,
	17,
	29,
	82,
	0,
	0,
	0,
	0,
	149,
	1970);
INSERT INTO V_LST
	VALUES (2012,
	'Goal.evaluateAchievement: Unknown Goal Criteria Type.');
INSERT INTO V_PAR
	VALUES (2012,
	2011,
	0,
	'message',
	0,
	17,
	20);
INSERT INTO ACT_BLK
	VALUES (1975,
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
	1949,
	0);
INSERT INTO ACT_SMT
	VALUES (2013,
	1975,
	0,
	23,
	3,
	'Goal::evaluateAchievement line: 23');
INSERT INTO ACT_AI
	VALUES (2013,
	2014,
	2015,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2015,
	1,
	0,
	23,
	3,
	17,
	0,
	0,
	0,
	0,
	1046,
	1975);
INSERT INTO V_TVL
	VALUES (2015,
	1992);
INSERT INTO V_VAL
	VALUES (2014,
	0,
	0,
	23,
	38,
	45,
	0,
	0,
	0,
	0,
	1046,
	1975);
INSERT INTO V_LEN
	VALUES (2014,
	1049,
	23,
	21);
INSERT INTO ACT_BLK
	VALUES (1978,
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
	1949,
	0);
INSERT INTO ACT_SMT
	VALUES (2016,
	1978,
	0,
	25,
	3,
	'Goal::evaluateAchievement line: 25');
INSERT INTO ACT_AI
	VALUES (2016,
	2017,
	2018,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2018,
	1,
	0,
	25,
	3,
	17,
	0,
	0,
	0,
	0,
	1046,
	1978);
INSERT INTO V_TVL
	VALUES (2018,
	1992);
INSERT INTO V_VAL
	VALUES (2017,
	0,
	0,
	25,
	38,
	45,
	0,
	0,
	0,
	0,
	1046,
	1978);
INSERT INTO V_LEN
	VALUES (2017,
	1053,
	25,
	21);
INSERT INTO ACT_BLK
	VALUES (1981,
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
	1949,
	0);
INSERT INTO ACT_SMT
	VALUES (2019,
	1981,
	0,
	31,
	3,
	'Goal::evaluateAchievement line: 31');
INSERT INTO ACT_IF
	VALUES (2019,
	2020,
	2021,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2022,
	1981,
	0,
	33,
	3,
	'Goal::evaluateAchievement line: 33');
INSERT INTO ACT_EL
	VALUES (2022,
	2023,
	2024,
	2019);
INSERT INTO V_VAL
	VALUES (2025,
	0,
	0,
	31,
	8,
	22,
	0,
	0,
	0,
	0,
	1046,
	1981);
INSERT INTO V_TVL
	VALUES (2025,
	1992);
INSERT INTO V_VAL
	VALUES (2021,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1981);
INSERT INTO V_BIN
	VALUES (2021,
	2026,
	2025,
	'==');
INSERT INTO V_VAL
	VALUES (2026,
	0,
	0,
	31,
	44,
	51,
	0,
	0,
	0,
	0,
	1046,
	1981);
INSERT INTO V_LEN
	VALUES (2026,
	1049,
	31,
	27);
INSERT INTO V_VAL
	VALUES (2027,
	0,
	0,
	33,
	10,
	24,
	0,
	0,
	0,
	0,
	1046,
	1981);
INSERT INTO V_TVL
	VALUES (2027,
	1992);
INSERT INTO V_VAL
	VALUES (2024,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	1981);
INSERT INTO V_BIN
	VALUES (2024,
	2028,
	2027,
	'==');
INSERT INTO V_VAL
	VALUES (2028,
	0,
	0,
	33,
	46,
	53,
	0,
	0,
	0,
	0,
	1046,
	1981);
INSERT INTO V_LEN
	VALUES (2028,
	1053,
	33,
	29);
INSERT INTO ACT_BLK
	VALUES (2020,
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
	1949,
	0);
INSERT INTO ACT_SMT
	VALUES (2029,
	2020,
	0,
	32,
	5,
	'Goal::evaluateAchievement line: 32');
INSERT INTO ACT_AI
	VALUES (2029,
	2030,
	2031,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2031,
	1,
	0,
	32,
	5,
	19,
	0,
	0,
	0,
	0,
	1046,
	2020);
INSERT INTO V_TVL
	VALUES (2031,
	1992);
INSERT INTO V_VAL
	VALUES (2030,
	0,
	0,
	32,
	40,
	47,
	0,
	0,
	0,
	0,
	1046,
	2020);
INSERT INTO V_LEN
	VALUES (2030,
	1053,
	32,
	23);
INSERT INTO ACT_BLK
	VALUES (2023,
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
	1949,
	0);
INSERT INTO ACT_SMT
	VALUES (2032,
	2023,
	0,
	34,
	5,
	'Goal::evaluateAchievement line: 34');
INSERT INTO ACT_AI
	VALUES (2032,
	2033,
	2034,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2034,
	1,
	0,
	34,
	5,
	19,
	0,
	0,
	0,
	0,
	1046,
	2023);
INSERT INTO V_TVL
	VALUES (2034,
	1992);
INSERT INTO V_VAL
	VALUES (2033,
	0,
	0,
	34,
	40,
	47,
	0,
	0,
	0,
	0,
	1046,
	2023);
INSERT INTO V_LEN
	VALUES (2033,
	1049,
	34,
	23);
INSERT INTO O_TFR
	VALUES (2035,
	841,
	'evaluateCompletion',
	'',
	94,
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
	1948);
INSERT INTO ACT_OPB
	VALUES (2036,
	2035);
INSERT INTO ACT_ACT
	VALUES (2036,
	'operation',
	0,
	2037,
	0,
	0,
	'Goal::evaluateCompletion',
	0);
INSERT INTO ACT_BLK
	VALUES (2037,
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
	2036,
	0);
INSERT INTO ACT_SMT
	VALUES (2038,
	2037,
	2039,
	6,
	1,
	'Goal::evaluateCompletion line: 6');
INSERT INTO ACT_SEL
	VALUES (2038,
	2040,
	1,
	'one',
	2041);
INSERT INTO ACT_SR
	VALUES (2038);
INSERT INTO ACT_LNK
	VALUES (2042,
	'''specified by''',
	2038,
	839,
	0,
	2,
	776,
	6,
	38,
	6,
	47,
	6,
	50);
INSERT INTO ACT_SMT
	VALUES (2039,
	2037,
	2043,
	10,
	1,
	'Goal::evaluateCompletion line: 10');
INSERT INTO ACT_AI
	VALUES (2039,
	2044,
	2045,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2043,
	2037,
	2046,
	11,
	1,
	'Goal::evaluateCompletion line: 11');
INSERT INTO ACT_IF
	VALUES (2043,
	2047,
	2048,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2049,
	2037,
	0,
	14,
	1,
	'Goal::evaluateCompletion line: 14');
INSERT INTO ACT_EL
	VALUES (2049,
	2050,
	2051,
	2043);
INSERT INTO ACT_SMT
	VALUES (2052,
	2037,
	0,
	18,
	1,
	'Goal::evaluateCompletion line: 18');
INSERT INTO ACT_E
	VALUES (2052,
	2053,
	2043);
INSERT INTO ACT_SMT
	VALUES (2046,
	2037,
	0,
	24,
	1,
	'Goal::evaluateCompletion line: 24');
INSERT INTO ACT_IF
	VALUES (2046,
	2054,
	2055,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2041,
	0,
	0,
	6,
	32,
	35,
	0,
	0,
	0,
	0,
	116,
	2037);
INSERT INTO V_IRF
	VALUES (2041,
	2056);
INSERT INTO V_VAL
	VALUES (2045,
	1,
	1,
	10,
	1,
	11,
	0,
	0,
	0,
	0,
	23,
	2037);
INSERT INTO V_TVL
	VALUES (2045,
	2057);
INSERT INTO V_VAL
	VALUES (2044,
	0,
	0,
	10,
	15,
	17,
	0,
	0,
	0,
	0,
	23,
	2037);
INSERT INTO V_LRL
	VALUES (2044,
	'0.0');
INSERT INTO V_VAL
	VALUES (2058,
	0,
	0,
	11,
	6,
	13,
	0,
	0,
	0,
	0,
	116,
	2037);
INSERT INTO V_IRF
	VALUES (2058,
	2040);
INSERT INTO V_VAL
	VALUES (2059,
	0,
	0,
	11,
	15,
	22,
	0,
	0,
	0,
	0,
	62,
	2037);
INSERT INTO V_AVL
	VALUES (2059,
	2058,
	776,
	807);
INSERT INTO V_VAL
	VALUES (2048,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	2037);
INSERT INTO V_BIN
	VALUES (2048,
	2060,
	2059,
	'==');
INSERT INTO V_VAL
	VALUES (2060,
	0,
	0,
	11,
	37,
	44,
	0,
	0,
	0,
	0,
	62,
	2037);
INSERT INTO V_LEN
	VALUES (2060,
	403,
	11,
	27);
INSERT INTO V_VAL
	VALUES (2061,
	0,
	0,
	14,
	8,
	15,
	0,
	0,
	0,
	0,
	116,
	2037);
INSERT INTO V_IRF
	VALUES (2061,
	2040);
INSERT INTO V_VAL
	VALUES (2062,
	0,
	0,
	14,
	17,
	24,
	0,
	0,
	0,
	0,
	62,
	2037);
INSERT INTO V_AVL
	VALUES (2062,
	2061,
	776,
	807);
INSERT INTO V_VAL
	VALUES (2051,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	2037);
INSERT INTO V_BIN
	VALUES (2051,
	2063,
	2062,
	'==');
INSERT INTO V_VAL
	VALUES (2063,
	0,
	0,
	14,
	39,
	42,
	0,
	0,
	0,
	0,
	62,
	2037);
INSERT INTO V_LEN
	VALUES (2063,
	411,
	14,
	29);
INSERT INTO V_VAL
	VALUES (2064,
	0,
	0,
	24,
	6,
	16,
	0,
	0,
	0,
	0,
	23,
	2037);
INSERT INTO V_TVL
	VALUES (2064,
	2057);
INSERT INTO V_VAL
	VALUES (2055,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	2037);
INSERT INTO V_BIN
	VALUES (2055,
	2065,
	2064,
	'>=');
INSERT INTO V_VAL
	VALUES (2066,
	0,
	0,
	24,
	21,
	28,
	0,
	0,
	0,
	0,
	116,
	2037);
INSERT INTO V_IRF
	VALUES (2066,
	2040);
INSERT INTO V_VAL
	VALUES (2065,
	0,
	0,
	24,
	30,
	33,
	0,
	0,
	0,
	0,
	23,
	2037);
INSERT INTO V_AVL
	VALUES (2065,
	2066,
	776,
	803);
INSERT INTO V_VAR
	VALUES (2040,
	2037,
	'goalSpec',
	1,
	116);
INSERT INTO V_INT
	VALUES (2040,
	0,
	776);
INSERT INTO V_VAR
	VALUES (2056,
	2037,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (2056,
	0,
	841);
INSERT INTO V_VAR
	VALUES (2057,
	2037,
	'elapsedSpan',
	1,
	23);
INSERT INTO V_TRN
	VALUES (2057,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (2047,
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
	2036,
	0);
INSERT INTO ACT_SMT
	VALUES (2067,
	2047,
	2068,
	12,
	3,
	'Goal::evaluateCompletion line: 12');
INSERT INTO ACT_SEL
	VALUES (2067,
	2069,
	1,
	'one',
	2070);
INSERT INTO ACT_SR
	VALUES (2067);
INSERT INTO ACT_LNK
	VALUES (2071,
	'''is currently executing within''',
	2067,
	845,
	0,
	2,
	705,
	12,
	39,
	12,
	54,
	12,
	58);
INSERT INTO ACT_SMT
	VALUES (2068,
	2047,
	0,
	13,
	3,
	'Goal::evaluateCompletion line: 13');
INSERT INTO ACT_AI
	VALUES (2068,
	2072,
	2073,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2070,
	0,
	0,
	12,
	33,
	36,
	0,
	0,
	0,
	0,
	116,
	2047);
INSERT INTO V_IRF
	VALUES (2070,
	2056);
INSERT INTO V_VAL
	VALUES (2073,
	1,
	0,
	13,
	3,
	13,
	0,
	0,
	0,
	0,
	23,
	2047);
INSERT INTO V_TVL
	VALUES (2073,
	2057);
INSERT INTO V_VAL
	VALUES (2074,
	0,
	0,
	13,
	17,
	23,
	0,
	0,
	0,
	0,
	116,
	2047);
INSERT INTO V_IRF
	VALUES (2074,
	2069);
INSERT INTO V_VAL
	VALUES (2075,
	0,
	0,
	13,
	25,
	43,
	0,
	0,
	0,
	0,
	23,
	2047);
INSERT INTO V_AVL
	VALUES (2075,
	2074,
	705,
	1086);
INSERT INTO V_VAL
	VALUES (2072,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	23,
	2047);
INSERT INTO V_BIN
	VALUES (2072,
	2076,
	2075,
	'-');
INSERT INTO V_VAL
	VALUES (2077,
	0,
	0,
	13,
	47,
	50,
	0,
	0,
	0,
	0,
	116,
	2047);
INSERT INTO V_IRF
	VALUES (2077,
	2056);
INSERT INTO V_VAL
	VALUES (2076,
	0,
	0,
	13,
	52,
	60,
	0,
	0,
	0,
	0,
	23,
	2047);
INSERT INTO V_AVL
	VALUES (2076,
	2077,
	841,
	1935);
INSERT INTO V_VAR
	VALUES (2069,
	2047,
	'session',
	1,
	116);
INSERT INTO V_INT
	VALUES (2069,
	0,
	705);
INSERT INTO ACT_BLK
	VALUES (2050,
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
	2036,
	0);
INSERT INTO ACT_SMT
	VALUES (2078,
	2050,
	2079,
	15,
	3,
	'Goal::evaluateCompletion line: 15');
INSERT INTO ACT_SEL
	VALUES (2078,
	2080,
	1,
	'one',
	2081);
INSERT INTO ACT_SR
	VALUES (2078);
INSERT INTO ACT_LNK
	VALUES (2082,
	'''is currently executing within''',
	2078,
	845,
	2083,
	2,
	705,
	16,
	11,
	16,
	26,
	16,
	30);
INSERT INTO ACT_LNK
	VALUES (2083,
	'''is timed by''',
	0,
	829,
	0,
	2,
	719,
	16,
	64,
	16,
	77,
	16,
	80);
INSERT INTO ACT_SMT
	VALUES (2079,
	2050,
	0,
	17,
	3,
	'Goal::evaluateCompletion line: 17');
INSERT INTO ACT_AI
	VALUES (2079,
	2084,
	2085,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2081,
	0,
	0,
	16,
	5,
	8,
	0,
	0,
	0,
	0,
	116,
	2050);
INSERT INTO V_IRF
	VALUES (2081,
	2056);
INSERT INTO V_VAL
	VALUES (2085,
	1,
	0,
	17,
	3,
	13,
	0,
	0,
	0,
	0,
	23,
	2050);
INSERT INTO V_TVL
	VALUES (2085,
	2057);
INSERT INTO V_VAL
	VALUES (2086,
	0,
	0,
	17,
	17,
	28,
	0,
	0,
	0,
	0,
	116,
	2050);
INSERT INTO V_IRF
	VALUES (2086,
	2080);
INSERT INTO V_VAL
	VALUES (2087,
	0,
	0,
	17,
	30,
	33,
	0,
	0,
	0,
	0,
	14,
	2050);
INSERT INTO V_AVL
	VALUES (2087,
	2086,
	719,
	1014);
INSERT INTO V_VAL
	VALUES (2084,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	23,
	2050);
INSERT INTO V_BIN
	VALUES (2084,
	2088,
	2087,
	'-');
INSERT INTO V_VAL
	VALUES (2089,
	0,
	0,
	17,
	37,
	40,
	0,
	0,
	0,
	0,
	116,
	2050);
INSERT INTO V_IRF
	VALUES (2089,
	2056);
INSERT INTO V_VAL
	VALUES (2088,
	0,
	0,
	17,
	42,
	50,
	0,
	0,
	0,
	0,
	23,
	2050);
INSERT INTO V_AVL
	VALUES (2088,
	2089,
	841,
	1935);
INSERT INTO V_VAR
	VALUES (2080,
	2050,
	'workoutTimer',
	1,
	116);
INSERT INTO V_INT
	VALUES (2080,
	0,
	719);
INSERT INTO ACT_BLK
	VALUES (2053,
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
	2036,
	0);
INSERT INTO ACT_SMT
	VALUES (2090,
	2053,
	0,
	19,
	3,
	'Goal::evaluateCompletion line: 19');
INSERT INTO ACT_BRG
	VALUES (2090,
	729,
	19,
	8,
	19,
	3);
INSERT INTO V_VAL
	VALUES (2091,
	0,
	0,
	19,
	29,
	77,
	0,
	0,
	0,
	0,
	149,
	2053);
INSERT INTO V_LST
	VALUES (2091,
	'Goal.evaluateCompletion: Unknown Goal Span Type.');
INSERT INTO V_PAR
	VALUES (2091,
	2090,
	0,
	'message',
	0,
	19,
	20);
INSERT INTO ACT_BLK
	VALUES (2054,
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
	2036,
	0);
INSERT INTO ACT_SMT
	VALUES (2092,
	2054,
	2093,
	25,
	3,
	'Goal::evaluateCompletion line: 25');
INSERT INTO ACT_SEL
	VALUES (2092,
	2094,
	1,
	'one',
	2095);
INSERT INTO ACT_SR
	VALUES (2092);
INSERT INTO ACT_LNK
	VALUES (2096,
	'''has open''',
	2092,
	855,
	0,
	2,
	850,
	25,
	47,
	25,
	59,
	25,
	63);
INSERT INTO ACT_SMT
	VALUES (2093,
	2054,
	2097,
	26,
	3,
	'Goal::evaluateCompletion line: 26');
INSERT INTO ACT_IF
	VALUES (2093,
	2098,
	2099,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2097,
	2054,
	0,
	29,
	3,
	'Goal::evaluateCompletion line: 29');
INSERT INTO E_ESS
	VALUES (2097,
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
	VALUES (2097);
INSERT INTO E_GSME
	VALUES (2097,
	2100);
INSERT INTO E_GEN
	VALUES (2097,
	2056);
INSERT INTO V_VAL
	VALUES (2095,
	0,
	0,
	25,
	41,
	44,
	0,
	0,
	0,
	0,
	116,
	2054);
INSERT INTO V_IRF
	VALUES (2095,
	2056);
INSERT INTO V_VAL
	VALUES (2101,
	0,
	0,
	26,
	18,
	32,
	0,
	0,
	0,
	0,
	116,
	2054);
INSERT INTO V_IRF
	VALUES (2101,
	2094);
INSERT INTO V_VAL
	VALUES (2102,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	2054);
INSERT INTO V_UNY
	VALUES (2102,
	2101,
	'empty');
INSERT INTO V_VAL
	VALUES (2099,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	2054);
INSERT INTO V_UNY
	VALUES (2099,
	2102,
	'not');
INSERT INTO V_VAR
	VALUES (2094,
	2054,
	'openAchievement',
	1,
	116);
INSERT INTO V_INT
	VALUES (2094,
	0,
	850);
INSERT INTO ACT_BLK
	VALUES (2098,
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
	2036,
	0);
INSERT INTO ACT_SMT
	VALUES (2103,
	2098,
	0,
	27,
	5,
	'Goal::evaluateCompletion line: 27');
INSERT INTO ACT_TFM
	VALUES (2103,
	993,
	2094,
	27,
	21,
	0,
	0);
INSERT INTO O_TFR
	VALUES (753,
	841,
	'nextGoal',
	'',
	94,
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
	2035);
INSERT INTO ACT_OPB
	VALUES (2104,
	753);
INSERT INTO ACT_ACT
	VALUES (2104,
	'class operation',
	0,
	2105,
	0,
	0,
	'Goal::nextGoal',
	0);
INSERT INTO ACT_BLK
	VALUES (2105,
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
	2104,
	0);
INSERT INTO ACT_SMT
	VALUES (2106,
	2105,
	2107,
	8,
	1,
	'Goal::nextGoal line: 8');
INSERT INTO ACT_FIO
	VALUES (2106,
	2108,
	1,
	'any',
	705,
	8,
	38);
INSERT INTO ACT_SMT
	VALUES (2107,
	2105,
	0,
	9,
	1,
	'Goal::nextGoal line: 9');
INSERT INTO ACT_IF
	VALUES (2107,
	2109,
	2110,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2111,
	0,
	0,
	9,
	16,
	22,
	0,
	0,
	0,
	0,
	116,
	2105);
INSERT INTO V_IRF
	VALUES (2111,
	2108);
INSERT INTO V_VAL
	VALUES (2112,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	2105);
INSERT INTO V_UNY
	VALUES (2112,
	2111,
	'empty');
INSERT INTO V_VAL
	VALUES (2110,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	2105);
INSERT INTO V_UNY
	VALUES (2110,
	2112,
	'not');
INSERT INTO V_VAR
	VALUES (2108,
	2105,
	'session',
	1,
	116);
INSERT INTO V_INT
	VALUES (2108,
	0,
	705);
INSERT INTO ACT_BLK
	VALUES (2109,
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
	2104,
	0);
INSERT INTO ACT_SMT
	VALUES (2113,
	2109,
	2114,
	10,
	3,
	'Goal::nextGoal line: 10');
INSERT INTO ACT_SEL
	VALUES (2113,
	2115,
	1,
	'one',
	2116);
INSERT INTO ACT_SR
	VALUES (2113);
INSERT INTO ACT_LNK
	VALUES (2117,
	'''is currently executing''',
	2113,
	845,
	0,
	2,
	841,
	10,
	39,
	10,
	44,
	10,
	48);
INSERT INTO ACT_SMT
	VALUES (2114,
	2109,
	0,
	11,
	3,
	'Goal::nextGoal line: 11');
INSERT INTO ACT_IF
	VALUES (2114,
	2118,
	2119,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2120,
	2109,
	0,
	13,
	3,
	'Goal::nextGoal line: 13');
INSERT INTO ACT_E
	VALUES (2120,
	2121,
	2114);
INSERT INTO V_VAL
	VALUES (2116,
	0,
	0,
	10,
	30,
	36,
	0,
	0,
	0,
	0,
	116,
	2109);
INSERT INTO V_IRF
	VALUES (2116,
	2108);
INSERT INTO V_VAL
	VALUES (2122,
	0,
	0,
	11,
	18,
	21,
	0,
	0,
	0,
	0,
	116,
	2109);
INSERT INTO V_IRF
	VALUES (2122,
	2115);
INSERT INTO V_VAL
	VALUES (2123,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	2109);
INSERT INTO V_UNY
	VALUES (2123,
	2122,
	'empty');
INSERT INTO V_VAL
	VALUES (2119,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	2109);
INSERT INTO V_UNY
	VALUES (2119,
	2123,
	'not');
INSERT INTO V_VAR
	VALUES (2115,
	2109,
	'goal',
	1,
	116);
INSERT INTO V_INT
	VALUES (2115,
	0,
	841);
INSERT INTO ACT_BLK
	VALUES (2118,
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
	2104,
	0);
INSERT INTO ACT_SMT
	VALUES (2124,
	2118,
	0,
	12,
	5,
	'Goal::nextGoal line: 12');
INSERT INTO E_ESS
	VALUES (2124,
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
	VALUES (2124);
INSERT INTO E_GSME
	VALUES (2124,
	2100);
INSERT INTO E_GEN
	VALUES (2124,
	2115);
INSERT INTO ACT_BLK
	VALUES (2121,
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
	2104,
	0);
INSERT INTO ACT_SMT
	VALUES (2125,
	2121,
	0,
	14,
	5,
	'Goal::nextGoal line: 14');
INSERT INTO ACT_TFM
	VALUES (2125,
	1868,
	0,
	14,
	11,
	14,
	5);
INSERT INTO V_VAL
	VALUES (2126,
	0,
	0,
	14,
	39,
	52,
	0,
	0,
	0,
	0,
	14,
	2121);
INSERT INTO V_SCV
	VALUES (2126,
	2127,
	14);
INSERT INTO V_PAR
	VALUES (2126,
	2125,
	0,
	'sequenceNumber',
	0,
	14,
	23);
INSERT INTO O_NBATTR
	VALUES (1047,
	841);
INSERT INTO O_BATTR
	VALUES (1047,
	841);
INSERT INTO O_ATTR
	VALUES (1047,
	841,
	1935,
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
	1046,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1935,
	841);
INSERT INTO O_BATTR
	VALUES (1935,
	841);
INSERT INTO O_ATTR
	VALUES (1935,
	841,
	2128,
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
	23,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2128,
	841);
INSERT INTO O_BATTR
	VALUES (2128,
	841);
INSERT INTO O_ATTR
	VALUES (2128,
	841,
	0,
	'ID',
	'An arbitrary identifier.',
	'',
	'ID',
	0,
	605,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2129,
	841);
INSERT INTO O_BATTR
	VALUES (2129,
	841);
INSERT INTO O_ATTR
	VALUES (2129,
	841,
	1901,
	'current_state',
	'',
	'',
	'current_state',
	0,
	100,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1901,
	841);
INSERT INTO O_BATTR
	VALUES (1901,
	841);
INSERT INTO O_ATTR
	VALUES (1901,
	841,
	1047,
	'evaluationTimer',
	'Handle for the timer used for periodic evaluation of goal achievement.',
	'',
	'evaluationTimer',
	0,
	134,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	841);
INSERT INTO O_ID
	VALUES (1,
	841);
INSERT INTO O_ID
	VALUES (2,
	841);
INSERT INTO SM_ISM
	VALUES (2130,
	841);
INSERT INTO SM_SM
	VALUES (2130,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (2130);
INSERT INTO SM_LEVT
	VALUES (2100,
	2130,
	0);
INSERT INTO SM_SEVT
	VALUES (2100,
	2130,
	0);
INSERT INTO SM_EVT
	VALUES (2100,
	2130,
	0,
	1,
	'Completed',
	0,
	'',
	'Goal1',
	'Indicates that execution of this goal has been completed.  ');
INSERT INTO SM_LEVT
	VALUES (1752,
	2130,
	0);
INSERT INTO SM_SEVT
	VALUES (1752,
	2130,
	0);
INSERT INTO SM_EVT
	VALUES (1752,
	2130,
	0,
	2,
	'Evaluate',
	0,
	'',
	'Goal2',
	'Indicates that this goal should be evaluated for completeness and achievement.');
INSERT INTO SM_LEVT
	VALUES (1776,
	2130,
	0);
INSERT INTO SM_SEVT
	VALUES (1776,
	2130,
	0);
INSERT INTO SM_EVT
	VALUES (1776,
	2130,
	0,
	3,
	'Pause',
	0,
	'',
	'Goal3',
	'');
INSERT INTO SM_STATE
	VALUES (2131,
	2130,
	0,
	'Executing',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (2131,
	2100,
	2130,
	0);
INSERT INTO SM_SEME
	VALUES (2131,
	1752,
	2130,
	0);
INSERT INTO SM_SEME
	VALUES (2131,
	1776,
	2130,
	0);
INSERT INTO SM_MOAH
	VALUES (2132,
	2130,
	2131);
INSERT INTO SM_AH
	VALUES (2132,
	2130);
INSERT INTO SM_ACT
	VALUES (2132,
	2130,
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
	VALUES (2133,
	2130,
	2132);
INSERT INTO ACT_ACT
	VALUES (2133,
	'state',
	0,
	2134,
	0,
	0,
	'Goal::Executing',
	0);
INSERT INTO ACT_BLK
	VALUES (2134,
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
	2133,
	0);
INSERT INTO ACT_SMT
	VALUES (2135,
	2134,
	2136,
	2,
	1,
	'Goal::Executing line: 2');
INSERT INTO ACT_AI
	VALUES (2135,
	2137,
	2138,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2136,
	2134,
	2139,
	12,
	1,
	'Goal::Executing line: 12');
INSERT INTO ACT_IF
	VALUES (2136,
	2140,
	2141,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2142,
	2134,
	0,
	19,
	1,
	'Goal::Executing line: 19');
INSERT INTO ACT_EL
	VALUES (2142,
	2143,
	2144,
	2136);
INSERT INTO ACT_SMT
	VALUES (2139,
	2134,
	2145,
	26,
	1,
	'Goal::Executing line: 26');
INSERT INTO ACT_AI
	VALUES (2139,
	2146,
	2147,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2145,
	2134,
	0,
	30,
	1,
	'Goal::Executing line: 30');
INSERT INTO ACT_TFM
	VALUES (2145,
	2035,
	2148,
	30,
	6,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2138,
	1,
	1,
	2,
	1,
	11,
	0,
	0,
	0,
	0,
	1046,
	2134);
INSERT INTO V_TVL
	VALUES (2138,
	2149);
INSERT INTO V_VAL
	VALUES (2137,
	0,
	0,
	2,
	20,
	-1,
	0,
	0,
	0,
	0,
	1046,
	2134);
INSERT INTO V_TRV
	VALUES (2137,
	1948,
	2148,
	1,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2150,
	0,
	0,
	12,
	7,
	10,
	0,
	0,
	0,
	0,
	116,
	2134);
INSERT INTO V_IRF
	VALUES (2150,
	2148);
INSERT INTO V_VAL
	VALUES (2151,
	0,
	0,
	12,
	12,
	22,
	0,
	0,
	0,
	0,
	1046,
	2134);
INSERT INTO V_AVL
	VALUES (2151,
	2150,
	841,
	1047);
INSERT INTO V_VAL
	VALUES (2152,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	2134);
INSERT INTO V_BIN
	VALUES (2152,
	2153,
	2151,
	'!=');
INSERT INTO V_VAL
	VALUES (2153,
	0,
	0,
	12,
	44,
	52,
	0,
	0,
	0,
	0,
	1046,
	2134);
INSERT INTO V_LEN
	VALUES (2153,
	1993,
	12,
	27);
INSERT INTO V_VAL
	VALUES (2154,
	0,
	0,
	12,
	60,
	70,
	0,
	0,
	0,
	0,
	1046,
	2134);
INSERT INTO V_TVL
	VALUES (2154,
	2149);
INSERT INTO V_VAL
	VALUES (2155,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	2134);
INSERT INTO V_BIN
	VALUES (2155,
	2156,
	2154,
	'==');
INSERT INTO V_VAL
	VALUES (2156,
	0,
	0,
	12,
	92,
	100,
	0,
	0,
	0,
	0,
	1046,
	2134);
INSERT INTO V_LEN
	VALUES (2156,
	1993,
	12,
	75);
INSERT INTO V_VAL
	VALUES (2141,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	2134);
INSERT INTO V_BIN
	VALUES (2141,
	2155,
	2152,
	'and');
INSERT INTO V_VAL
	VALUES (2157,
	0,
	0,
	19,
	9,
	12,
	0,
	0,
	0,
	0,
	116,
	2134);
INSERT INTO V_IRF
	VALUES (2157,
	2148);
INSERT INTO V_VAL
	VALUES (2158,
	0,
	0,
	19,
	14,
	24,
	0,
	0,
	0,
	0,
	1046,
	2134);
INSERT INTO V_AVL
	VALUES (2158,
	2157,
	841,
	1047);
INSERT INTO V_VAL
	VALUES (2159,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	2134);
INSERT INTO V_BIN
	VALUES (2159,
	2160,
	2158,
	'==');
INSERT INTO V_VAL
	VALUES (2160,
	0,
	0,
	19,
	46,
	54,
	0,
	0,
	0,
	0,
	1046,
	2134);
INSERT INTO V_LEN
	VALUES (2160,
	1993,
	19,
	29);
INSERT INTO V_VAL
	VALUES (2161,
	0,
	0,
	19,
	62,
	72,
	0,
	0,
	0,
	0,
	1046,
	2134);
INSERT INTO V_TVL
	VALUES (2161,
	2149);
INSERT INTO V_VAL
	VALUES (2162,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	2134);
INSERT INTO V_BIN
	VALUES (2162,
	2163,
	2161,
	'!=');
INSERT INTO V_VAL
	VALUES (2163,
	0,
	0,
	19,
	94,
	102,
	0,
	0,
	0,
	0,
	1046,
	2134);
INSERT INTO V_LEN
	VALUES (2163,
	1993,
	19,
	77);
INSERT INTO V_VAL
	VALUES (2144,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	2134);
INSERT INTO V_BIN
	VALUES (2144,
	2162,
	2159,
	'and');
INSERT INTO V_VAL
	VALUES (2164,
	1,
	0,
	26,
	1,
	4,
	0,
	0,
	0,
	0,
	116,
	2134);
INSERT INTO V_IRF
	VALUES (2164,
	2148);
INSERT INTO V_VAL
	VALUES (2147,
	1,
	0,
	26,
	6,
	16,
	0,
	0,
	0,
	0,
	1046,
	2134);
INSERT INTO V_AVL
	VALUES (2147,
	2164,
	841,
	1047);
INSERT INTO V_VAL
	VALUES (2146,
	0,
	0,
	26,
	20,
	30,
	0,
	0,
	0,
	0,
	1046,
	2134);
INSERT INTO V_TVL
	VALUES (2146,
	2149);
INSERT INTO V_VAR
	VALUES (2149,
	2134,
	'disposition',
	1,
	1046);
INSERT INTO V_TRN
	VALUES (2149,
	0,
	'');
INSERT INTO V_VAR
	VALUES (2148,
	2134,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (2148,
	0,
	841);
INSERT INTO ACT_BLK
	VALUES (2140,
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
	2133,
	0);
INSERT INTO ACT_SMT
	VALUES (2165,
	2140,
	2166,
	14,
	3,
	'Goal::Executing line: 14');
INSERT INTO ACT_CR
	VALUES (2165,
	2167,
	1,
	850,
	14,
	41);
INSERT INTO ACT_SMT
	VALUES (2166,
	2140,
	2168,
	15,
	3,
	'Goal::Executing line: 15');
INSERT INTO ACT_REL
	VALUES (2166,
	2148,
	2167,
	'''has open''',
	855,
	15,
	37,
	15,
	41);
INSERT INTO ACT_SMT
	VALUES (2168,
	2140,
	2169,
	16,
	3,
	'Goal::Executing line: 16');
INSERT INTO ACT_SEL
	VALUES (2168,
	2170,
	1,
	'one',
	2171);
INSERT INTO ACT_SR
	VALUES (2168);
INSERT INTO ACT_LNK
	VALUES (2172,
	'''is currently executing within''',
	2168,
	845,
	2173,
	2,
	705,
	17,
	11,
	17,
	26,
	17,
	30);
INSERT INTO ACT_LNK
	VALUES (2173,
	'''is timed by''',
	0,
	829,
	0,
	2,
	719,
	17,
	64,
	17,
	77,
	17,
	80);
INSERT INTO ACT_SMT
	VALUES (2169,
	2140,
	0,
	18,
	3,
	'Goal::Executing line: 18');
INSERT INTO ACT_AI
	VALUES (2169,
	2174,
	2175,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2171,
	0,
	0,
	17,
	5,
	8,
	0,
	0,
	0,
	0,
	116,
	2140);
INSERT INTO V_IRF
	VALUES (2171,
	2148);
INSERT INTO V_VAL
	VALUES (2176,
	1,
	0,
	18,
	3,
	13,
	0,
	0,
	0,
	0,
	116,
	2140);
INSERT INTO V_IRF
	VALUES (2176,
	2167);
INSERT INTO V_VAL
	VALUES (2175,
	1,
	0,
	18,
	15,
	23,
	0,
	0,
	0,
	0,
	14,
	2140);
INSERT INTO V_AVL
	VALUES (2175,
	2176,
	850,
	1015);
INSERT INTO V_VAL
	VALUES (2177,
	0,
	0,
	18,
	27,
	38,
	0,
	0,
	0,
	0,
	116,
	2140);
INSERT INTO V_IRF
	VALUES (2177,
	2170);
INSERT INTO V_VAL
	VALUES (2174,
	0,
	0,
	18,
	40,
	43,
	0,
	0,
	0,
	0,
	14,
	2140);
INSERT INTO V_AVL
	VALUES (2174,
	2177,
	719,
	1014);
INSERT INTO V_VAR
	VALUES (2167,
	2140,
	'achievement',
	1,
	116);
INSERT INTO V_INT
	VALUES (2167,
	0,
	850);
INSERT INTO V_VAR
	VALUES (2170,
	2140,
	'workoutTimer',
	1,
	116);
INSERT INTO V_INT
	VALUES (2170,
	0,
	719);
INSERT INTO ACT_BLK
	VALUES (2143,
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
	2133,
	0);
INSERT INTO ACT_SMT
	VALUES (2178,
	2143,
	2179,
	21,
	3,
	'Goal::Executing line: 21');
INSERT INTO ACT_SEL
	VALUES (2178,
	2180,
	1,
	'one',
	2181);
INSERT INTO ACT_SR
	VALUES (2178);
INSERT INTO ACT_LNK
	VALUES (2182,
	'''has open''',
	2178,
	855,
	0,
	2,
	850,
	21,
	43,
	21,
	55,
	21,
	59);
INSERT INTO ACT_SMT
	VALUES (2179,
	2143,
	0,
	22,
	3,
	'Goal::Executing line: 22');
INSERT INTO ACT_TFM
	VALUES (2179,
	993,
	2180,
	22,
	15,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2181,
	0,
	0,
	21,
	37,
	40,
	0,
	0,
	0,
	0,
	116,
	2143);
INSERT INTO V_IRF
	VALUES (2181,
	2148);
INSERT INTO V_VAR
	VALUES (2180,
	2143,
	'achievement',
	1,
	116);
INSERT INTO V_INT
	VALUES (2180,
	0,
	850);
INSERT INTO SM_STATE
	VALUES (2183,
	2130,
	0,
	'Completed',
	2,
	0);
INSERT INTO SM_EIGN
	VALUES (2183,
	2100,
	2130,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2183,
	2100,
	2130,
	0);
INSERT INTO SM_EIGN
	VALUES (2183,
	1752,
	2130,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2183,
	1752,
	2130,
	0);
INSERT INTO SM_CH
	VALUES (2183,
	1776,
	2130,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2183,
	1776,
	2130,
	0);
INSERT INTO SM_MOAH
	VALUES (2184,
	2130,
	2183);
INSERT INTO SM_AH
	VALUES (2184,
	2130);
INSERT INTO SM_ACT
	VALUES (2184,
	2130,
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
	VALUES (2185,
	2130,
	2184);
INSERT INTO ACT_ACT
	VALUES (2185,
	'state',
	0,
	2186,
	0,
	0,
	'Goal::Completed',
	0);
INSERT INTO ACT_BLK
	VALUES (2186,
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
	2185,
	0);
INSERT INTO ACT_SMT
	VALUES (2187,
	2186,
	2188,
	5,
	1,
	'Goal::Completed line: 5');
INSERT INTO ACT_AI
	VALUES (2187,
	2189,
	2190,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2188,
	2186,
	2191,
	8,
	1,
	'Goal::Completed line: 8');
INSERT INTO ACT_SEL
	VALUES (2188,
	2192,
	1,
	'one',
	2193);
INSERT INTO ACT_SR
	VALUES (2188);
INSERT INTO ACT_LNK
	VALUES (2194,
	'''has open''',
	2188,
	855,
	0,
	2,
	850,
	8,
	45,
	8,
	57,
	8,
	61);
INSERT INTO ACT_SMT
	VALUES (2191,
	2186,
	2195,
	9,
	1,
	'Goal::Completed line: 9');
INSERT INTO ACT_IF
	VALUES (2191,
	2196,
	2197,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2195,
	2186,
	2198,
	14,
	1,
	'Goal::Completed line: 14');
INSERT INTO ACT_SEL
	VALUES (2195,
	2199,
	1,
	'one',
	2200);
INSERT INTO ACT_SR
	VALUES (2195);
INSERT INTO ACT_LNK
	VALUES (2201,
	'''is currently executing within''',
	2195,
	845,
	0,
	2,
	705,
	14,
	37,
	14,
	52,
	14,
	56);
INSERT INTO ACT_SMT
	VALUES (2198,
	2186,
	2202,
	15,
	1,
	'Goal::Completed line: 15');
INSERT INTO ACT_REL
	VALUES (2198,
	2203,
	2199,
	'''was executed within''',
	852,
	15,
	31,
	15,
	35);
INSERT INTO ACT_SMT
	VALUES (2202,
	2186,
	2204,
	18,
	1,
	'Goal::Completed line: 18');
INSERT INTO ACT_UNR
	VALUES (2202,
	2203,
	2199,
	'''is currently executing within''',
	845,
	18,
	35,
	18,
	39);
INSERT INTO ACT_SMT
	VALUES (2204,
	2186,
	2205,
	21,
	1,
	'Goal::Completed line: 21');
INSERT INTO ACT_SEL
	VALUES (2204,
	2206,
	1,
	'one',
	2207);
INSERT INTO ACT_SR
	VALUES (2204);
INSERT INTO ACT_LNK
	VALUES (2208,
	'''specified by''',
	2204,
	839,
	0,
	2,
	776,
	21,
	45,
	21,
	54,
	21,
	57);
INSERT INTO ACT_SMT
	VALUES (2205,
	2186,
	2209,
	23,
	1,
	'Goal::Completed line: 23');
INSERT INTO ACT_SEL
	VALUES (2205,
	2210,
	1,
	'any',
	2211);
INSERT INTO ACT_SRW
	VALUES (2205,
	2212);
INSERT INTO ACT_LNK
	VALUES (2213,
	'''includes''',
	2205,
	795,
	0,
	3,
	776,
	23,
	45,
	23,
	54,
	23,
	58);
INSERT INTO ACT_SMT
	VALUES (2209,
	2186,
	0,
	26,
	1,
	'Goal::Completed line: 26');
INSERT INTO ACT_IF
	VALUES (2209,
	2214,
	2215,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2190,
	1,
	1,
	5,
	1,
	15,
	0,
	0,
	0,
	0,
	119,
	2186);
INSERT INTO V_TVL
	VALUES (2190,
	2216);
INSERT INTO V_VAL
	VALUES (2189,
	0,
	0,
	5,
	24,
	-1,
	5,
	38,
	0,
	0,
	119,
	2186);
INSERT INTO V_BRV
	VALUES (2189,
	953,
	1,
	5,
	19);
INSERT INTO V_VAL
	VALUES (2217,
	0,
	0,
	5,
	54,
	57,
	0,
	0,
	0,
	0,
	116,
	2186);
INSERT INTO V_IRF
	VALUES (2217,
	2203);
INSERT INTO V_VAL
	VALUES (2218,
	0,
	0,
	5,
	59,
	73,
	0,
	0,
	0,
	0,
	134,
	2186);
INSERT INTO V_AVL
	VALUES (2218,
	2217,
	841,
	1901);
INSERT INTO V_PAR
	VALUES (2218,
	0,
	2189,
	'timer_inst_ref',
	0,
	5,
	38);
INSERT INTO V_VAL
	VALUES (2193,
	0,
	0,
	8,
	39,
	42,
	0,
	0,
	0,
	0,
	116,
	2186);
INSERT INTO V_IRF
	VALUES (2193,
	2203);
INSERT INTO V_VAL
	VALUES (2219,
	0,
	0,
	9,
	16,
	30,
	0,
	0,
	0,
	0,
	116,
	2186);
INSERT INTO V_IRF
	VALUES (2219,
	2192);
INSERT INTO V_VAL
	VALUES (2220,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	2186);
INSERT INTO V_UNY
	VALUES (2220,
	2219,
	'empty');
INSERT INTO V_VAL
	VALUES (2197,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	2186);
INSERT INTO V_UNY
	VALUES (2197,
	2220,
	'not');
INSERT INTO V_VAL
	VALUES (2200,
	0,
	0,
	14,
	31,
	34,
	0,
	0,
	0,
	0,
	116,
	2186);
INSERT INTO V_IRF
	VALUES (2200,
	2203);
INSERT INTO V_VAL
	VALUES (2207,
	0,
	0,
	21,
	39,
	42,
	0,
	0,
	0,
	0,
	116,
	2186);
INSERT INTO V_IRF
	VALUES (2207,
	2203);
INSERT INTO V_VAL
	VALUES (2211,
	0,
	0,
	23,
	36,
	42,
	0,
	0,
	0,
	0,
	116,
	2186);
INSERT INTO V_IRF
	VALUES (2211,
	2199);
INSERT INTO V_VAL
	VALUES (2221,
	0,
	0,
	24,
	11,
	-1,
	0,
	0,
	0,
	0,
	116,
	2186);
INSERT INTO V_SLR
	VALUES (2221,
	0,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2222,
	0,
	0,
	24,
	20,
	33,
	0,
	0,
	0,
	0,
	14,
	2186);
INSERT INTO V_AVL
	VALUES (2222,
	2221,
	776,
	797);
INSERT INTO V_VAL
	VALUES (2212,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	2186);
INSERT INTO V_BIN
	VALUES (2212,
	2223,
	2222,
	'==');
INSERT INTO V_VAL
	VALUES (2224,
	0,
	0,
	24,
	39,
	53,
	0,
	0,
	0,
	0,
	116,
	2186);
INSERT INTO V_IRF
	VALUES (2224,
	2206);
INSERT INTO V_VAL
	VALUES (2225,
	0,
	0,
	24,
	55,
	68,
	0,
	0,
	0,
	0,
	14,
	2186);
INSERT INTO V_AVL
	VALUES (2225,
	2224,
	776,
	797);
INSERT INTO V_VAL
	VALUES (2223,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	14,
	2186);
INSERT INTO V_BIN
	VALUES (2223,
	2226,
	2225,
	'+');
INSERT INTO V_VAL
	VALUES (2226,
	0,
	0,
	24,
	72,
	72,
	0,
	0,
	0,
	0,
	14,
	2186);
INSERT INTO V_LIN
	VALUES (2226,
	'1');
INSERT INTO V_VAL
	VALUES (2227,
	0,
	0,
	26,
	16,
	27,
	0,
	0,
	0,
	0,
	116,
	2186);
INSERT INTO V_IRF
	VALUES (2227,
	2210);
INSERT INTO V_VAL
	VALUES (2228,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	2186);
INSERT INTO V_UNY
	VALUES (2228,
	2227,
	'empty');
INSERT INTO V_VAL
	VALUES (2215,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	119,
	2186);
INSERT INTO V_UNY
	VALUES (2215,
	2228,
	'not');
INSERT INTO V_VAR
	VALUES (2216,
	2186,
	'cancelSucceeded',
	1,
	119);
INSERT INTO V_TRN
	VALUES (2216,
	0,
	'');
INSERT INTO V_VAR
	VALUES (2203,
	2186,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (2203,
	0,
	841);
INSERT INTO V_VAR
	VALUES (2192,
	2186,
	'openAchievement',
	1,
	116);
INSERT INTO V_INT
	VALUES (2192,
	0,
	850);
INSERT INTO V_VAR
	VALUES (2199,
	2186,
	'session',
	1,
	116);
INSERT INTO V_INT
	VALUES (2199,
	0,
	705);
INSERT INTO V_VAR
	VALUES (2206,
	2186,
	'currentGoalSpec',
	1,
	116);
INSERT INTO V_INT
	VALUES (2206,
	0,
	776);
INSERT INTO V_VAR
	VALUES (2210,
	2186,
	'nextGoalSpec',
	1,
	116);
INSERT INTO V_INT
	VALUES (2210,
	0,
	776);
INSERT INTO ACT_BLK
	VALUES (2196,
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
	2185,
	0);
INSERT INTO ACT_SMT
	VALUES (2229,
	2196,
	0,
	10,
	3,
	'Goal::Completed line: 10');
INSERT INTO ACT_TFM
	VALUES (2229,
	993,
	2192,
	10,
	19,
	0,
	0);
INSERT INTO ACT_BLK
	VALUES (2214,
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
	2185,
	0);
INSERT INTO ACT_SMT
	VALUES (2230,
	2214,
	0,
	27,
	3,
	'Goal::Completed line: 27');
INSERT INTO ACT_TFM
	VALUES (2230,
	1868,
	0,
	27,
	9,
	27,
	3);
INSERT INTO V_VAL
	VALUES (2231,
	0,
	0,
	27,
	37,
	48,
	0,
	0,
	0,
	0,
	116,
	2214);
INSERT INTO V_IRF
	VALUES (2231,
	2210);
INSERT INTO V_VAL
	VALUES (2232,
	0,
	0,
	27,
	50,
	63,
	0,
	0,
	0,
	0,
	14,
	2214);
INSERT INTO V_AVL
	VALUES (2232,
	2231,
	776,
	797);
INSERT INTO V_PAR
	VALUES (2232,
	2230,
	0,
	'sequenceNumber',
	0,
	27,
	21);
INSERT INTO SM_STATE
	VALUES (2233,
	2130,
	0,
	'Paused',
	3,
	0);
INSERT INTO SM_SEME
	VALUES (2233,
	2100,
	2130,
	0);
INSERT INTO SM_SEME
	VALUES (2233,
	1752,
	2130,
	0);
INSERT INTO SM_CH
	VALUES (2233,
	1776,
	2130,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2233,
	1776,
	2130,
	0);
INSERT INTO SM_MOAH
	VALUES (2234,
	2130,
	2233);
INSERT INTO SM_AH
	VALUES (2234,
	2130);
INSERT INTO SM_ACT
	VALUES (2234,
	2130,
	1,
	'// Deactivate evaluation timer, ignoring the return code because this 
//   state model ignores any latent timer events.
cancelSucceeded = TIM::timer_cancel( timer_inst_ref: self.evaluationTimer );',
	'');
INSERT INTO ACT_SAB
	VALUES (2235,
	2130,
	2234);
INSERT INTO ACT_ACT
	VALUES (2235,
	'state',
	0,
	2236,
	0,
	0,
	'Goal::Paused',
	0);
INSERT INTO ACT_BLK
	VALUES (2236,
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
	2235,
	0);
INSERT INTO ACT_SMT
	VALUES (2237,
	2236,
	0,
	3,
	1,
	'Goal::Paused line: 3');
INSERT INTO ACT_AI
	VALUES (2237,
	2238,
	2239,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2239,
	1,
	1,
	3,
	1,
	15,
	0,
	0,
	0,
	0,
	119,
	2236);
INSERT INTO V_TVL
	VALUES (2239,
	2240);
INSERT INTO V_VAL
	VALUES (2238,
	0,
	0,
	3,
	24,
	-1,
	3,
	38,
	0,
	0,
	119,
	2236);
INSERT INTO V_BRV
	VALUES (2238,
	953,
	1,
	3,
	19);
INSERT INTO V_VAL
	VALUES (2241,
	0,
	0,
	3,
	54,
	57,
	0,
	0,
	0,
	0,
	116,
	2236);
INSERT INTO V_IRF
	VALUES (2241,
	2242);
INSERT INTO V_VAL
	VALUES (2243,
	0,
	0,
	3,
	59,
	73,
	0,
	0,
	0,
	0,
	134,
	2236);
INSERT INTO V_AVL
	VALUES (2243,
	2241,
	841,
	1901);
INSERT INTO V_PAR
	VALUES (2243,
	0,
	2238,
	'timer_inst_ref',
	0,
	3,
	38);
INSERT INTO V_VAR
	VALUES (2240,
	2236,
	'cancelSucceeded',
	1,
	119);
INSERT INTO V_TRN
	VALUES (2240,
	0,
	'');
INSERT INTO V_VAR
	VALUES (2242,
	2236,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (2242,
	0,
	841);
INSERT INTO SM_NSTXN
	VALUES (2244,
	2130,
	2131,
	2100,
	0);
INSERT INTO SM_TAH
	VALUES (2245,
	2130,
	2244);
INSERT INTO SM_AH
	VALUES (2245,
	2130);
INSERT INTO SM_ACT
	VALUES (2245,
	2130,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2246,
	2130,
	2245);
INSERT INTO ACT_ACT
	VALUES (2246,
	'transition',
	0,
	2247,
	0,
	0,
	'Goal1: Completed',
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
INSERT INTO SM_TXN
	VALUES (2244,
	2130,
	2183,
	0);
INSERT INTO SM_NSTXN
	VALUES (2248,
	2130,
	2131,
	1752,
	0);
INSERT INTO SM_TAH
	VALUES (2249,
	2130,
	2248);
INSERT INTO SM_AH
	VALUES (2249,
	2130);
INSERT INTO SM_ACT
	VALUES (2249,
	2130,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2250,
	2130,
	2249);
INSERT INTO ACT_ACT
	VALUES (2250,
	'transition',
	0,
	2251,
	0,
	0,
	'Goal2: Evaluate',
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
INSERT INTO SM_TXN
	VALUES (2248,
	2130,
	2131,
	0);
INSERT INTO SM_NSTXN
	VALUES (2252,
	2130,
	2131,
	1776,
	0);
INSERT INTO SM_TAH
	VALUES (2253,
	2130,
	2252);
INSERT INTO SM_AH
	VALUES (2253,
	2130);
INSERT INTO SM_ACT
	VALUES (2253,
	2130,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2254,
	2130,
	2253);
INSERT INTO ACT_ACT
	VALUES (2254,
	'transition',
	0,
	2255,
	0,
	0,
	'Goal3: Pause',
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
INSERT INTO SM_TXN
	VALUES (2252,
	2130,
	2233,
	0);
INSERT INTO SM_NSTXN
	VALUES (2256,
	2130,
	2233,
	1752,
	0);
INSERT INTO SM_TAH
	VALUES (2257,
	2130,
	2256);
INSERT INTO SM_AH
	VALUES (2257,
	2130);
INSERT INTO SM_ACT
	VALUES (2257,
	2130,
	1,
	'// Start a timer that periodically causes evaluation of goal achievement.
create event instance evaluateEvent of Goal2:Evaluate to self;
self.evaluationTimer = TIM::timer_start_recurring( event_inst: evaluateEvent, microseconds: evaluationPeriod );',
	'');
INSERT INTO ACT_TAB
	VALUES (2258,
	2130,
	2257);
INSERT INTO ACT_ACT
	VALUES (2258,
	'transition',
	0,
	2259,
	0,
	0,
	'Goal2: Evaluate',
	0);
INSERT INTO ACT_BLK
	VALUES (2259,
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
	2258,
	0);
INSERT INTO ACT_SMT
	VALUES (2260,
	2259,
	2261,
	2,
	1,
	'Goal2: Evaluate line: 2');
INSERT INTO E_ESS
	VALUES (2260,
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
	VALUES (2260,
	1,
	2262);
INSERT INTO E_CSME
	VALUES (2260,
	1752);
INSERT INTO E_CEI
	VALUES (2260,
	2263);
INSERT INTO ACT_SMT
	VALUES (2261,
	2259,
	0,
	3,
	1,
	'Goal2: Evaluate line: 3');
INSERT INTO ACT_AI
	VALUES (2261,
	2264,
	2265,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2266,
	1,
	0,
	3,
	1,
	4,
	0,
	0,
	0,
	0,
	116,
	2259);
INSERT INTO V_IRF
	VALUES (2266,
	2263);
INSERT INTO V_VAL
	VALUES (2265,
	1,
	0,
	3,
	6,
	20,
	0,
	0,
	0,
	0,
	134,
	2259);
INSERT INTO V_AVL
	VALUES (2265,
	2266,
	841,
	1901);
INSERT INTO V_VAL
	VALUES (2264,
	0,
	0,
	3,
	29,
	-1,
	3,
	52,
	3,
	79,
	134,
	2259);
INSERT INTO V_BRV
	VALUES (2264,
	934,
	1,
	3,
	24);
INSERT INTO V_VAL
	VALUES (2267,
	0,
	0,
	3,
	64,
	76,
	0,
	0,
	0,
	0,
	138,
	2259);
INSERT INTO V_TVL
	VALUES (2267,
	2262);
INSERT INTO V_PAR
	VALUES (2267,
	0,
	2264,
	'event_inst',
	2268,
	3,
	52);
INSERT INTO V_VAL
	VALUES (2268,
	0,
	0,
	3,
	93,
	108,
	0,
	0,
	0,
	0,
	14,
	2259);
INSERT INTO V_SCV
	VALUES (2268,
	1904,
	14);
INSERT INTO V_PAR
	VALUES (2268,
	0,
	2264,
	'microseconds',
	0,
	3,
	79);
INSERT INTO V_VAR
	VALUES (2262,
	2259,
	'evaluateEvent',
	1,
	138);
INSERT INTO V_TRN
	VALUES (2262,
	0,
	'');
INSERT INTO V_VAR
	VALUES (2263,
	2259,
	'self',
	1,
	116);
INSERT INTO V_INT
	VALUES (2263,
	0,
	841);
INSERT INTO SM_TXN
	VALUES (2256,
	2130,
	2131,
	0);
INSERT INTO SM_NSTXN
	VALUES (2269,
	2130,
	2233,
	2100,
	0);
INSERT INTO SM_TAH
	VALUES (2270,
	2130,
	2269);
INSERT INTO SM_AH
	VALUES (2270,
	2130);
INSERT INTO SM_ACT
	VALUES (2270,
	2130,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2271,
	2130,
	2270);
INSERT INTO ACT_ACT
	VALUES (2271,
	'transition',
	0,
	2272,
	0,
	0,
	'Goal1: Completed',
	0);
INSERT INTO ACT_BLK
	VALUES (2272,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2271,
	0);
INSERT INTO SM_TXN
	VALUES (2269,
	2130,
	2183,
	0);
INSERT INTO PE_PE
	VALUES (776,
	1,
	811,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (776,
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
	VALUES (799,
	776);
INSERT INTO O_BATTR
	VALUES (799,
	776);
INSERT INTO O_ATTR
	VALUES (799,
	776,
	797,
	'minimum',
	'The minimum value for the quantity associated with the goal.
For example, a minimum heart rate to be maintained.
The units (e.g., beats per minute or minutes per km) for this
attribute are determined by another attribute indicating the 
type of criteria for this goal.',
	'',
	'minimum',
	0,
	23,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (801,
	776);
INSERT INTO O_BATTR
	VALUES (801,
	776);
INSERT INTO O_ATTR
	VALUES (801,
	776,
	799,
	'maximum',
	'The maximum value for the quantity associated with the goal.
For example, a maximum pace to be maintained.
The units (e.g., beats per minute or minutes per km) for this
attribute are determined by another attribute indicating the 
type of criteria for this goal.',
	'',
	'maximum',
	0,
	23,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (803,
	776);
INSERT INTO O_BATTR
	VALUES (803,
	776);
INSERT INTO O_ATTR
	VALUES (803,
	776,
	801,
	'span',
	'The span of the goal.  For example, a time-based goal specifies a span
as a duration or length of time, while a distance-based goal uses specifies
a distance.  The units for this attribute (e.g., seconds or km) are specified 
by another attribute indicating the type of span.
',
	'',
	'span',
	0,
	23,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (805,
	776);
INSERT INTO O_BATTR
	VALUES (805,
	776);
INSERT INTO O_ATTR
	VALUES (805,
	776,
	803,
	'criteriaType',
	'See data type description.',
	'',
	'criteriaType',
	0,
	59,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (807,
	776);
INSERT INTO O_BATTR
	VALUES (807,
	776);
INSERT INTO O_ATTR
	VALUES (807,
	776,
	805,
	'spanType',
	'See data type description.',
	'',
	'spanType',
	0,
	62,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (797,
	776);
INSERT INTO O_BATTR
	VALUES (797,
	776);
INSERT INTO O_ATTR
	VALUES (797,
	776,
	0,
	'sequenceNumber',
	'Workout goals are sequenced according to a number specified by the user when the goal
is specified.  This attribute represents that user-specified number. ',
	'',
	'sequenceNumber',
	0,
	14,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	776);
INSERT INTO O_OIDA
	VALUES (797,
	776,
	0,
	'sequenceNumber');
INSERT INTO O_ID
	VALUES (1,
	776);
INSERT INTO O_ID
	VALUES (2,
	776);
INSERT INTO PE_PE
	VALUES (2273,
	1,
	612,
	0,
	22);
INSERT INTO C_SF
	VALUES (2273,
	660,
	2274,
	'',
	'GPSWatch::TrackingLocation::TrackingLocation -o)- Tracking::Location::TrackingLocation');
INSERT INTO PE_PE
	VALUES (2275,
	1,
	612,
	0,
	22);
INSERT INTO C_SF
	VALUES (2275,
	676,
	2276,
	'',
	'GPSWatch::TrackingUI::TrackingUI -o)- Tracking::UI::TrackingUI');
INSERT INTO PE_PE
	VALUES (2277,
	1,
	612,
	0,
	22);
INSERT INTO C_SF
	VALUES (2277,
	690,
	2278,
	'',
	'GPSWatch::TrackingHeartRateMonitor::TrackingHeartRateMonitor -o)- Tracking::HeartRateMonitor::TrackingHeartRateMonitor');
INSERT INTO PE_PE
	VALUES (2279,
	1,
	612,
	0,
	22);
INSERT INTO C_SF
	VALUES (2279,
	2280,
	698,
	'',
	'Tracking::Tracking::Tracking -o)- GPSWatch::Tracking::Tracking');
INSERT INTO PE_PE
	VALUES (59,
	1,
	612,
	0,
	3);
INSERT INTO S_DT
	VALUES (59,
	0,
	'GoalCriteria',
	'The criteria type for a particular workout goal.  ',
	'');
INSERT INTO S_EDT
	VALUES (59);
INSERT INTO S_ENUM
	VALUES (409,
	'HeartRate',
	'A heart-rate criteria is specified as a range of heart rates between
minimum and maximum values, in beats per minute.',
	59,
	0);
INSERT INTO S_ENUM
	VALUES (401,
	'Pace',
	'A pace criteria is specified as a range of paces between
miniumum and maximum values specified in minutes per kilometer.',
	59,
	409);
INSERT INTO PE_PE
	VALUES (1046,
	1,
	612,
	0,
	3);
INSERT INTO S_DT
	VALUES (1046,
	0,
	'GoalDisposition',
	'Disposition of a currently executing goal.',
	'');
INSERT INTO S_EDT
	VALUES (1046);
INSERT INTO S_ENUM
	VALUES (1993,
	'Achieving',
	'The goal is currently being achieved.',
	1046,
	0);
INSERT INTO S_ENUM
	VALUES (1049,
	'Increase',
	'The value associated with the goal is presently below the minimum 
specified in the criteria for the goal, so the user must increase
that value to achieve the goal.',
	1046,
	1993);
INSERT INTO S_ENUM
	VALUES (1053,
	'Decrease',
	'The value associated with the goal is presently above the maximum 
specified in the criteria for the goal, so the user must decrease
that value to achieve the goal.',
	1046,
	1049);
INSERT INTO PE_PE
	VALUES (62,
	1,
	612,
	0,
	3);
INSERT INTO S_DT
	VALUES (62,
	0,
	'GoalSpan',
	'',
	'');
INSERT INTO S_EDT
	VALUES (62);
INSERT INTO S_ENUM
	VALUES (403,
	'Distance',
	'A distance-based span is specified in meters.',
	62,
	0);
INSERT INTO S_ENUM
	VALUES (411,
	'Time',
	'A time-based span is specified in seconds.',
	62,
	403);
INSERT INTO PE_PE
	VALUES (2281,
	1,
	612,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (2281,
	'GoalAchievement',
	'evaluationPeriod is the period, expressed in microseconds, at which goal achievement is evaluated.');
INSERT INTO CNST_SYC
	VALUES (1904,
	'evaluationPeriod',
	'',
	14,
	2281,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (1904,
	14);
INSERT INTO CNST_LSC
	VALUES (1904,
	14,
	'3000000');
INSERT INTO PE_PE
	VALUES (2282,
	1,
	612,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (2282,
	'GoalSpec',
	'GoalSpecOrigin indicates the sequence number of the first goal.');
INSERT INTO CNST_SYC
	VALUES (2127,
	'GoalSpecOrigin',
	'',
	14,
	2282,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (2127,
	14);
INSERT INTO CNST_LSC
	VALUES (2127,
	14,
	'1');
INSERT INTO PE_PE
	VALUES (2283,
	1,
	612,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (2283,
	'WorkoutTimer',
	'timerPeriod specifies, in seconds, the period for the workout timer.');
INSERT INTO CNST_SYC
	VALUES (1747,
	'timerPeriod',
	'',
	14,
	2283,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (1747,
	14);
INSERT INTO CNST_LSC
	VALUES (1747,
	14,
	'1');
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
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2312,
	2311,
	'message',
	149,
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
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2316,
	2315,
	'message',
	149,
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
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2320,
	2319,
	'message',
	149,
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
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2324,
	2323,
	'd',
	260,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2325,
	2323,
	'message',
	149,
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
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2329,
	2328,
	't',
	297,
	0,
	'',
	2330,
	'');
INSERT INTO S_BPARM
	VALUES (2330,
	2328,
	'message',
	149,
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
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2334,
	2333,
	'r',
	23,
	0,
	'',
	2335,
	'');
INSERT INTO S_BPARM
	VALUES (2335,
	2333,
	'message',
	149,
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
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2339,
	2338,
	'message',
	14,
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
	260,
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
	260,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2347,
	2346,
	'second',
	14,
	0,
	'',
	2348,
	'');
INSERT INTO S_BPARM
	VALUES (2349,
	2346,
	'minute',
	14,
	0,
	'',
	2350,
	'');
INSERT INTO S_BPARM
	VALUES (2350,
	2346,
	'hour',
	14,
	0,
	'',
	2351,
	'');
INSERT INTO S_BPARM
	VALUES (2351,
	2346,
	'day',
	14,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2348,
	2346,
	'month',
	14,
	0,
	'',
	2349,
	'');
INSERT INTO S_BPARM
	VALUES (2352,
	2346,
	'year',
	14,
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
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2356,
	2355,
	'date',
	260,
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
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2360,
	2359,
	'date',
	260,
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
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2364,
	2363,
	'date',
	260,
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
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2368,
	2367,
	'date',
	260,
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
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2372,
	2371,
	'date',
	260,
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
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2376,
	2375,
	'date',
	260,
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
	297,
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
	134,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2383,
	2382,
	'microseconds',
	14,
	0,
	'',
	2384,
	'');
INSERT INTO S_BPARM
	VALUES (2384,
	2382,
	'event_inst',
	138,
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
	134,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2388,
	2387,
	'microseconds',
	14,
	0,
	'',
	2389,
	'');
INSERT INTO S_BPARM
	VALUES (2389,
	2387,
	'event_inst',
	138,
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
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2393,
	2392,
	'timer_inst_ref',
	134,
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
	119,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2397,
	2396,
	'timer_inst_ref',
	134,
	0,
	'',
	2398,
	'');
INSERT INTO S_BPARM
	VALUES (2398,
	2396,
	'microseconds',
	14,
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
	119,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2402,
	2401,
	'timer_inst_ref',
	134,
	0,
	'',
	2403,
	'');
INSERT INTO S_BPARM
	VALUES (2403,
	2401,
	'microseconds',
	14,
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
	119,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2407,
	2406,
	'timer_inst_ref',
	134,
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
	14,
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
	134,
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
	116,
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
	14,
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
	116,
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
	14,
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
	116,
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
	14,
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
	14,
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
	14,
	2422);
INSERT INTO V_LIN
	VALUES (2434,
	'1');
INSERT INTO V_VAR
	VALUES (2425,
	2422,
	'monitor',
	1,
	116);
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
	116,
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
	119,
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
	116,
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
	14,
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
	14,
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
	149,
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
	116,
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
	134,
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
	134,
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
	138,
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
	14,
	2438);
INSERT INTO V_SCV
	VALUES (2459,
	1694,
	14);
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
	14,
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
	14,
	2438);
INSERT INTO V_LIN
	VALUES (2460,
	'1000000');
INSERT INTO V_VAR
	VALUES (2441,
	2438,
	'monitor',
	1,
	116);
INSERT INTO V_INT
	VALUES (2441,
	0,
	2410);
INSERT INTO V_VAR
	VALUES (2450,
	2438,
	'timeout',
	1,
	138);
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
	119,
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
	119,
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
	116,
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
	134,
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
	119,
	2465);
INSERT INTO V_TVL
	VALUES (2473,
	2476);
INSERT INTO V_VAR
	VALUES (2468,
	2465,
	'monitor',
	1,
	116);
INSERT INTO V_INT
	VALUES (2468,
	0,
	2410);
INSERT INTO V_VAR
	VALUES (2476,
	2465,
	'res',
	1,
	119);
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
	149,
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
	149,
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
	VALUES (1696,
	'HeartRateAveragingWindow',
	'',
	14,
	2488,
	1694,
	14);
INSERT INTO CNST_LFSC
	VALUES (1696,
	14);
INSERT INTO CNST_LSC
	VALUES (1696,
	14,
	'5');
INSERT INTO CNST_SYC
	VALUES (1694,
	'HeartRateSamplingPeriod',
	'',
	14,
	2488,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (1694,
	14);
INSERT INTO CNST_LSC
	VALUES (1694,
	14,
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
	94,
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
	94,
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
	94,
	'heartRateChanged',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (2489,
	2306,
	14,
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
	658,
	0,
	0,
	0,
	'',
	'Tracking::Tracking::Tracking',
	'');
INSERT INTO CL_POR
	VALUES (2499,
	659,
	'Location',
	2500);
INSERT INTO CL_IIR
	VALUES (2501,
	660,
	2500,
	0,
	'TrackingLocation',
	'');
INSERT INTO CL_IR
	VALUES (2501,
	2273,
	'TrackingLocation',
	'');
INSERT INTO CL_POR
	VALUES (2499,
	675,
	'UI',
	2502);
INSERT INTO CL_IIR
	VALUES (2503,
	676,
	2502,
	0,
	'TrackingUI',
	'');
INSERT INTO CL_IR
	VALUES (2503,
	2275,
	'TrackingUI',
	'');
INSERT INTO CL_POR
	VALUES (2499,
	689,
	'HeartRateMonitor',
	2504);
INSERT INTO CL_IIR
	VALUES (2505,
	690,
	2504,
	0,
	'TrackingHeartRateMonitor',
	'');
INSERT INTO CL_IR
	VALUES (2505,
	2277,
	'TrackingHeartRateMonitor',
	'');
INSERT INTO CL_POR
	VALUES (2499,
	697,
	'Tracking',
	2506);
INSERT INTO CL_IIR
	VALUES (2507,
	698,
	2506,
	0,
	'Tracking',
	'');
INSERT INTO CL_IP
	VALUES (2507,
	'Tracking',
	'');
INSERT INTO CL_IPINS
	VALUES (2279,
	2507);
INSERT INTO PE_PE
	VALUES (2508,
	1,
	2491,
	0,
	21);
INSERT INTO CL_IC
	VALUES (2508,
	3,
	0,
	0,
	0,
	'',
	'UI::UI::UI',
	'');
INSERT INTO CL_POR
	VALUES (2508,
	4,
	'UI',
	2509);
INSERT INTO CL_IIR
	VALUES (2510,
	5,
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
	64,
	'Tracking',
	2512);
INSERT INTO CL_IIR
	VALUES (2513,
	65,
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
	6,
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
	8,
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
	17,
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
	29,
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
	36,
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
	45,
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
	VALUES (2278,
	614,
	0,
	2568);
INSERT INTO C_P
	VALUES (2278,
	'TrackingHeartRateMonitor',
	'Unnamed Interface',
	'',
	'GPSWatch::TrackingHeartRateMonitor::TrackingHeartRateMonitor');
INSERT INTO SPR_PEP
	VALUES (2569,
	615,
	2278);
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
	616,
	2278);
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
	VALUES (2274,
	617,
	0,
	2577);
INSERT INTO C_P
	VALUES (2274,
	'TrackingLocation',
	'Unnamed Interface',
	'',
	'GPSWatch::TrackingLocation::TrackingLocation');
INSERT INTO SPR_PEP
	VALUES (2578,
	618,
	2274);
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
	23,
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
	23,
	2580);
INSERT INTO V_PVL
	VALUES (2583,
	0,
	0,
	0,
	619);
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
	23,
	2580);
INSERT INTO V_PVL
	VALUES (2584,
	0,
	0,
	0,
	621);
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
	23,
	2580);
INSERT INTO V_PVL
	VALUES (2585,
	0,
	0,
	0,
	620);
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
	23,
	2580);
INSERT INTO V_PVL
	VALUES (2586,
	0,
	0,
	0,
	622);
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
	623,
	2274);
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
	23,
	2589);
INSERT INTO V_PVL
	VALUES (2591,
	0,
	0,
	0,
	624);
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
	23,
	2589);
INSERT INTO V_PVL
	VALUES (2592,
	0,
	0,
	0,
	625);
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
	626,
	2274);
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
	627,
	2274);
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
	VALUES (2276,
	628,
	0,
	2601);
INSERT INTO C_P
	VALUES (2276,
	'TrackingUI',
	'Unnamed Interface',
	'',
	'GPSWatch::TrackingUI::TrackingUI');
INSERT INTO SPR_PEP
	VALUES (2602,
	629,
	2276);
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
	23,
	2604);
INSERT INTO V_PVL
	VALUES (2606,
	0,
	0,
	0,
	630);
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
	26,
	2604);
INSERT INTO V_PVL
	VALUES (2607,
	0,
	0,
	0,
	631);
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
	632,
	2276);
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
	42,
	2610);
INSERT INTO V_PVL
	VALUES (2612,
	0,
	0,
	0,
	633);
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
	634,
	2276);
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
	14,
	2615);
INSERT INTO V_PVL
	VALUES (2617,
	0,
	0,
	0,
	635);
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
	636,
	2276);
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
	14,
	2620);
INSERT INTO V_PVL
	VALUES (2622,
	0,
	0,
	0,
	637);
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
	23,
	2620);
INSERT INTO V_PVL
	VALUES (2623,
	0,
	0,
	0,
	638);
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
	23,
	2620);
INSERT INTO V_PVL
	VALUES (2624,
	0,
	0,
	0,
	639);
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
	23,
	2620);
INSERT INTO V_PVL
	VALUES (2625,
	0,
	0,
	0,
	640);
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
	59,
	2620);
INSERT INTO V_PVL
	VALUES (2626,
	0,
	0,
	0,
	641);
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
	62,
	2620);
INSERT INTO V_PVL
	VALUES (2627,
	0,
	0,
	0,
	642);
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
	VALUES (2280,
	643,
	0,
	2628);
INSERT INTO C_R
	VALUES (2280,
	'Tracking',
	'',
	'Unnamed Interface',
	'GPSWatch::Tracking::Tracking');
INSERT INTO SPR_REP
	VALUES (2629,
	644,
	2280);
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
	646,
	2280);
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
	647,
	2280);
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
	648,
	2280);
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
	649,
	2280);
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
	650,
	2280);
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
	657,
	2280);
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
	14,
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
	66,
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
	68,
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
	72,
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
	76,
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
	80,
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
	84,
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
	14,
	2676);
INSERT INTO V_PVL
	VALUES (2678,
	0,
	0,
	0,
	599);
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
	23,
	2676);
INSERT INTO V_PVL
	VALUES (2679,
	0,
	0,
	0,
	600);
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
	23,
	2676);
INSERT INTO V_PVL
	VALUES (2680,
	0,
	0,
	0,
	601);
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
	23,
	2676);
INSERT INTO V_PVL
	VALUES (2681,
	0,
	0,
	0,
	602);
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
	59,
	2676);
INSERT INTO V_PVL
	VALUES (2682,
	0,
	0,
	0,
	603);
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
	62,
	2676);
INSERT INTO V_PVL
	VALUES (2683,
	0,
	0,
	0,
	604);
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
	88,
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
	14,
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
	14,
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
	14,
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
	14,
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
	14,
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
	14,
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
	14,
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
	14,
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
	14,
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
	14,
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
	14,
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
	14,
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
	14,
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
	14,
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
	14,
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
	14,
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
	23,
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
	14,
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
	23,
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
	23,
	2695);
INSERT INTO V_SCV
	VALUES (2728,
	2729,
	23);
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
	23,
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
	14,
	2695);
INSERT INTO V_LIN
	VALUES (2730,
	'1000');
INSERT INTO V_VAR
	VALUES (2707,
	2695,
	'deltaLat',
	1,
	14);
INSERT INTO V_TRN
	VALUES (2707,
	0,
	'');
INSERT INTO V_VAR
	VALUES (2712,
	2695,
	'deltaLong',
	1,
	14);
INSERT INTO V_TRN
	VALUES (2712,
	0,
	'');
INSERT INTO V_VAR
	VALUES (2717,
	2695,
	'sumSquares',
	1,
	14);
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
	23,
	2738,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (2739,
	23);
INSERT INTO CNST_LSC
	VALUES (2739,
	23,
	'0.00002');
INSERT INTO CNST_SYC
	VALUES (2740,
	'latitudeIncrement',
	'',
	23,
	2738,
	2739,
	23);
INSERT INTO CNST_LFSC
	VALUES (2740,
	23);
INSERT INTO CNST_LSC
	VALUES (2740,
	23,
	'0.00001');
INSERT INTO CNST_SYC
	VALUES (2741,
	'initialLatitude',
	'',
	23,
	2738,
	2740,
	23);
INSERT INTO CNST_LFSC
	VALUES (2741,
	23);
INSERT INTO CNST_LSC
	VALUES (2741,
	23,
	'32.432237');
INSERT INTO CNST_SYC
	VALUES (2742,
	'initialLongitude',
	'',
	23,
	2738,
	2741,
	23);
INSERT INTO CNST_LFSC
	VALUES (2742,
	23);
INSERT INTO CNST_LSC
	VALUES (2742,
	23,
	'-110.812283');
INSERT INTO CNST_SYC
	VALUES (2743,
	'updatePeriod',
	'',
	14,
	2738,
	2742,
	23);
INSERT INTO CNST_LFSC
	VALUES (2743,
	14);
INSERT INTO CNST_LSC
	VALUES (2743,
	14,
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
	23,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2745,
	2725,
	'x',
	23,
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
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2750,
	2749,
	'message',
	149,
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
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2754,
	2753,
	'message',
	149,
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
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2758,
	2757,
	'message',
	149,
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
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2762,
	2761,
	'd',
	260,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2763,
	2761,
	'message',
	149,
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
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2767,
	2766,
	't',
	297,
	0,
	'',
	2768,
	'');
INSERT INTO S_BPARM
	VALUES (2768,
	2766,
	'message',
	149,
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
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2772,
	2771,
	'r',
	23,
	0,
	'',
	2773,
	'');
INSERT INTO S_BPARM
	VALUES (2773,
	2771,
	'message',
	149,
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
	94,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2777,
	2776,
	'message',
	14,
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
	260,
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
	260,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2785,
	2784,
	'second',
	14,
	0,
	'',
	2786,
	'');
INSERT INTO S_BPARM
	VALUES (2787,
	2784,
	'minute',
	14,
	0,
	'',
	2788,
	'');
INSERT INTO S_BPARM
	VALUES (2788,
	2784,
	'hour',
	14,
	0,
	'',
	2789,
	'');
INSERT INTO S_BPARM
	VALUES (2789,
	2784,
	'day',
	14,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2786,
	2784,
	'month',
	14,
	0,
	'',
	2787,
	'');
INSERT INTO S_BPARM
	VALUES (2790,
	2784,
	'year',
	14,
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
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2794,
	2793,
	'date',
	260,
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
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2798,
	2797,
	'date',
	260,
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
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2802,
	2801,
	'date',
	260,
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
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2806,
	2805,
	'date',
	260,
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
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2810,
	2809,
	'date',
	260,
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
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2814,
	2813,
	'date',
	260,
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
	297,
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
	134,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2821,
	2820,
	'microseconds',
	14,
	0,
	'',
	2822,
	'');
INSERT INTO S_BPARM
	VALUES (2822,
	2820,
	'event_inst',
	138,
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
	134,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2826,
	2825,
	'microseconds',
	14,
	0,
	'',
	2827,
	'');
INSERT INTO S_BPARM
	VALUES (2827,
	2825,
	'event_inst',
	138,
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
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2831,
	2830,
	'timer_inst_ref',
	134,
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
	119,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2835,
	2834,
	'timer_inst_ref',
	134,
	0,
	'',
	2836,
	'');
INSERT INTO S_BPARM
	VALUES (2836,
	2834,
	'microseconds',
	14,
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
	119,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2840,
	2839,
	'timer_inst_ref',
	134,
	0,
	'',
	2841,
	'');
INSERT INTO S_BPARM
	VALUES (2841,
	2839,
	'microseconds',
	14,
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
	119,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2845,
	2844,
	'timer_inst_ref',
	134,
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
	94,
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
	116,
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
	119,
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
	116,
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
	134,
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
	134,
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
	138,
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
	14,
	2851);
INSERT INTO V_SCV
	VALUES (2867,
	2743,
	14);
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
	116);
INSERT INTO V_INT
	VALUES (2854,
	0,
	2848);
INSERT INTO V_VAR
	VALUES (2859,
	2851,
	'tick',
	1,
	138);
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
	116,
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
	14,
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
	14,
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
	116,
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
	23,
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
	23,
	2856);
INSERT INTO V_SCV
	VALUES (2874,
	2741,
	23);
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
	116,
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
	23,
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
	23,
	2856);
INSERT INTO V_SCV
	VALUES (2876,
	2742,
	23);
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
	134,
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
	23,
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
	23,
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
	14,
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
	119,
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
	119,
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
	116,
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
	134,
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
	149,
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
	119,
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
	119,
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
	116);
INSERT INTO V_INT
	VALUES (2893,
	0,
	2848);
INSERT INTO V_VAR
	VALUES (2900,
	2890,
	'res',
	1,
	119);
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
	149,
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
	116,
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
	14,
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
	14,
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
	14,
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
	119,
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
	14,
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
	116,
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
	14,
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
	14,
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
	14,
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
	119,
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
	14,
	2910);
INSERT INTO V_LIN
	VALUES (2930,
	'0');
INSERT INTO V_VAR
	VALUES (2913,
	2910,
	'gps',
	1,
	116);
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
	116,
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
	23,
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
	116,
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
	23,
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
	23,
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
	23,
	2914);
INSERT INTO V_SCV
	VALUES (2941,
	2739,
	23);
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
	23,
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
	14,
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
	116,
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
	23,
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
	116,
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
	23,
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
	23,
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
	23,
	2914);
INSERT INTO V_SCV
	VALUES (2946,
	2740,
	23);
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
	116,
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
	23,
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
	116,
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
	23,
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
	23,
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
	23,
	2917);
INSERT INTO V_SCV
	VALUES (2956,
	2739,
	23);
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
	116,
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
	23,
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
	116,
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
	23,
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
	23,
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
	23,
	2917);
INSERT INTO V_SCV
	VALUES (2961,
	2740,
	23);
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
	23,
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
	14,
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
	116,
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
	23,
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
	116,
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
	23,
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
	23,
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
	23,
	2920);
INSERT INTO V_SCV
	VALUES (2972,
	2739,
	23);
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
	116,
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
	23,
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
	116,
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
	23,
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
	23,
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
	23,
	2920);
INSERT INTO V_SCV
	VALUES (2976,
	2740,
	23);
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
	149,
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
	116,
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
	14,
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
	116,
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
	14,
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
	14,
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
	14,
	2991);
INSERT INTO V_LIN
	VALUES (3000,
	'1');
INSERT INTO V_VAR
	VALUES (2994,
	2991,
	'gps',
	1,
	116);
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
	23,
	3002,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (2729,
	23);
INSERT INTO CNST_LSC
	VALUES (2729,
	23,
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
	VALUES (1604,
	'SecondsPerHour',
	'',
	14,
	3003,
	1589,
	14);
INSERT INTO CNST_LFSC
	VALUES (1604,
	14);
INSERT INTO CNST_LSC
	VALUES (1604,
	14,
	'3600');
INSERT INTO CNST_SYC
	VALUES (1589,
	'SpeedAveragingWindow',
	'',
	14,
	3003,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (1589,
	14);
INSERT INTO CNST_LSC
	VALUES (1589,
	14,
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
	94,
	'getLocation',
	'',
	0,
	'',
	2533);
INSERT INTO C_PP
	VALUES (3004,
	2529,
	14,
	'latitude',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (3005,
	2529,
	14,
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
	23,
	'getDistance',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (2709,
	2533,
	14,
	'toLat',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (2711,
	2533,
	14,
	'fromLat',
	'',
	0,
	'',
	2709);
INSERT INTO C_PP
	VALUES (2714,
	2533,
	14,
	'toLong',
	'',
	0,
	'',
	2711);
INSERT INTO C_PP
	VALUES (2716,
	2533,
	14,
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
	94,
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
	94,
	'unregisterListener',
	'',
	0,
	'',
	2537);
