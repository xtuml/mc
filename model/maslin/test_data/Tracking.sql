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
	2);
INSERT INTO C_C
	VALUES (3,
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
INSERT INTO C_R
	VALUES (5,
	'TrackingLocation',
	'',
	'Unnamed Interface',
	'Tracking::Location::TrackingLocation');
INSERT INTO SPR_REP
	VALUES (7,
	8,
	5);
INSERT INTO SPR_RO
	VALUES (7,
	'getDistance',
	'Returns distance, in kilometers, between the "from" and "to" coordinates passed as parameters.
The coordinates must be passed as decimal degrees.',
	'return 1;',
	1);
INSERT INTO ACT_ROB
	VALUES (9,
	7);
INSERT INTO ACT_ACT
	VALUES (9,
	'interface operation',
	0,
	10,
	0,
	0,
	'Location::TrackingLocation::getDistance',
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
	'Location::TrackingLocation::getDistance line: 1');
INSERT INTO ACT_RET
	VALUES (11,
	12);
INSERT INTO V_VAL
	VALUES (12,
	0,
	0,
	1,
	8,
	8,
	0,
	0,
	0,
	0,
	13,
	10);
INSERT INTO V_LIN
	VALUES (12,
	'1');
INSERT INTO SPR_REP
	VALUES (14,
	15,
	5);
INSERT INTO SPR_RO
	VALUES (14,
	'getLocation',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (16,
	14);
INSERT INTO ACT_ACT
	VALUES (16,
	'interface operation',
	0,
	17,
	0,
	0,
	'Location::TrackingLocation::getLocation',
	0);
INSERT INTO ACT_BLK
	VALUES (17,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	16,
	0);
INSERT INTO SPR_REP
	VALUES (18,
	19,
	5);
INSERT INTO SPR_RO
	VALUES (18,
	'registerListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (20,
	18);
INSERT INTO ACT_ACT
	VALUES (20,
	'interface operation',
	0,
	21,
	0,
	0,
	'Location::TrackingLocation::registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (21,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	20,
	0);
INSERT INTO SPR_REP
	VALUES (22,
	23,
	5);
INSERT INTO SPR_RO
	VALUES (22,
	'unregisterListener',
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
	'Location::TrackingLocation::unregisterListener',
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
INSERT INTO C_PO
	VALUES (26,
	3,
	'UI',
	0,
	0);
INSERT INTO C_IR
	VALUES (27,
	28,
	0,
	26);
INSERT INTO C_R
	VALUES (27,
	'TrackingUI',
	'',
	'Unnamed Interface',
	'Tracking::UI::TrackingUI');
INSERT INTO SPR_REP
	VALUES (29,
	30,
	27);
INSERT INTO SPR_RO
	VALUES (29,
	'setData',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (31,
	29);
INSERT INTO ACT_ACT
	VALUES (31,
	'interface operation',
	0,
	32,
	0,
	0,
	'UI::TrackingUI::setData',
	0);
INSERT INTO ACT_BLK
	VALUES (32,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	31,
	0);
INSERT INTO SPR_REP
	VALUES (33,
	34,
	27);
INSERT INTO SPR_RO
	VALUES (33,
	'setIndicator',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (35,
	33);
INSERT INTO ACT_ACT
	VALUES (35,
	'interface operation',
	0,
	36,
	0,
	0,
	'UI::TrackingUI::setIndicator',
	0);
INSERT INTO ACT_BLK
	VALUES (36,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	35,
	0);
INSERT INTO SPR_REP
	VALUES (37,
	38,
	27);
INSERT INTO SPR_RO
	VALUES (37,
	'setTime',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (39,
	37);
INSERT INTO ACT_ACT
	VALUES (39,
	'interface operation',
	0,
	40,
	0,
	0,
	'UI::TrackingUI::setTime',
	0);
INSERT INTO ACT_BLK
	VALUES (40,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	39,
	0);
INSERT INTO SPR_REP
	VALUES (41,
	42,
	27);
INSERT INTO SPR_RO
	VALUES (41,
	'newGoalSpec',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (43,
	41);
INSERT INTO ACT_ACT
	VALUES (43,
	'interface operation',
	0,
	44,
	0,
	0,
	'UI::TrackingUI::newGoalSpec',
	0);
INSERT INTO ACT_BLK
	VALUES (44,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	43,
	0);
INSERT INTO C_PO
	VALUES (45,
	3,
	'HeartRateMonitor',
	0,
	0);
INSERT INTO C_IR
	VALUES (46,
	47,
	0,
	45);
INSERT INTO C_R
	VALUES (46,
	'TrackingHeartRateMonitor',
	'',
	'Unnamed Interface',
	'Tracking::HeartRateMonitor::TrackingHeartRateMonitor');
INSERT INTO SPR_REP
	VALUES (48,
	49,
	46);
INSERT INTO SPR_RO
	VALUES (48,
	'registerListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (50,
	48);
INSERT INTO ACT_ACT
	VALUES (50,
	'interface operation',
	0,
	51,
	0,
	0,
	'HeartRateMonitor::TrackingHeartRateMonitor::registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (51,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	50,
	0);
INSERT INTO SPR_REP
	VALUES (52,
	53,
	46);
INSERT INTO SPR_RO
	VALUES (52,
	'unregisterListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (54,
	52);
INSERT INTO ACT_ACT
	VALUES (54,
	'interface operation',
	0,
	55,
	0,
	0,
	'HeartRateMonitor::TrackingHeartRateMonitor::unregisterListener',
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
INSERT INTO C_PO
	VALUES (56,
	3,
	'Tracking',
	0,
	0);
INSERT INTO C_IR
	VALUES (57,
	58,
	0,
	56);
INSERT INTO C_P
	VALUES (57,
	'Tracking',
	'Unnamed Interface',
	'',
	'Tracking::Tracking::Tracking');
INSERT INTO SPR_PEP
	VALUES (59,
	60,
	57);
INSERT INTO SPR_PO
	VALUES (59,
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
	VALUES (61,
	59);
INSERT INTO ACT_ACT
	VALUES (61,
	'interface operation',
	0,
	62,
	0,
	0,
	'Tracking::Tracking::heartRateChanged',
	0);
INSERT INTO ACT_BLK
	VALUES (62,
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
	61,
	0);
INSERT INTO ACT_SMT
	VALUES (63,
	62,
	64,
	6,
	1,
	'Tracking::Tracking::heartRateChanged line: 6');
INSERT INTO ACT_FIO
	VALUES (63,
	65,
	1,
	'any',
	66,
	6,
	38);
INSERT INTO ACT_SMT
	VALUES (64,
	62,
	0,
	7,
	1,
	'Tracking::Tracking::heartRateChanged line: 7');
INSERT INTO ACT_IF
	VALUES (64,
	67,
	68,
	0,
	0);
INSERT INTO V_VAL
	VALUES (69,
	0,
	0,
	7,
	15,
	21,
	0,
	0,
	0,
	0,
	70,
	62);
INSERT INTO V_IRF
	VALUES (69,
	65);
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
	72,
	62);
INSERT INTO V_UNY
	VALUES (71,
	69,
	'empty');
INSERT INTO V_VAL
	VALUES (68,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	62);
INSERT INTO V_UNY
	VALUES (68,
	71,
	'not');
INSERT INTO V_VAR
	VALUES (65,
	62,
	'session',
	1,
	70);
INSERT INTO V_INT
	VALUES (65,
	0,
	66);
INSERT INTO ACT_BLK
	VALUES (67,
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
	61,
	0);
INSERT INTO ACT_SMT
	VALUES (73,
	67,
	0,
	8,
	3,
	'Tracking::Tracking::heartRateChanged line: 8');
INSERT INTO ACT_TFM
	VALUES (73,
	74,
	65,
	8,
	11,
	0,
	0);
INSERT INTO V_VAL
	VALUES (75,
	0,
	0,
	8,
	47,
	55,
	0,
	0,
	0,
	0,
	13,
	67);
INSERT INTO V_PVL
	VALUES (75,
	0,
	0,
	0,
	76);
INSERT INTO V_PAR
	VALUES (75,
	73,
	0,
	'heartRate',
	0,
	8,
	30);
INSERT INTO SPR_PEP
	VALUES (77,
	78,
	57);
INSERT INTO SPR_PO
	VALUES (77,
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
	VALUES (79,
	77);
INSERT INTO ACT_ACT
	VALUES (79,
	'interface operation',
	0,
	80,
	0,
	0,
	'Tracking::Tracking::lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (80,
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
	79,
	0);
INSERT INTO ACT_SMT
	VALUES (81,
	80,
	82,
	4,
	1,
	'Tracking::Tracking::lapResetPressed line: 4');
INSERT INTO ACT_FIO
	VALUES (81,
	83,
	1,
	'any',
	84,
	4,
	43);
INSERT INTO ACT_SMT
	VALUES (82,
	80,
	0,
	5,
	1,
	'Tracking::Tracking::lapResetPressed line: 5');
INSERT INTO ACT_IF
	VALUES (82,
	85,
	86,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (87,
	80,
	0,
	7,
	1,
	'Tracking::Tracking::lapResetPressed line: 7');
INSERT INTO ACT_E
	VALUES (87,
	88,
	82);
INSERT INTO V_VAL
	VALUES (89,
	0,
	0,
	5,
	15,
	26,
	0,
	0,
	0,
	0,
	70,
	80);
INSERT INTO V_IRF
	VALUES (89,
	83);
INSERT INTO V_VAL
	VALUES (90,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	80);
INSERT INTO V_UNY
	VALUES (90,
	89,
	'empty');
INSERT INTO V_VAL
	VALUES (86,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	80);
INSERT INTO V_UNY
	VALUES (86,
	90,
	'not');
INSERT INTO V_VAR
	VALUES (83,
	80,
	'workoutTimer',
	1,
	70);
INSERT INTO V_INT
	VALUES (83,
	0,
	84);
INSERT INTO ACT_BLK
	VALUES (85,
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
	79,
	0);
INSERT INTO ACT_SMT
	VALUES (91,
	85,
	0,
	6,
	3,
	'Tracking::Tracking::lapResetPressed line: 6');
INSERT INTO E_ESS
	VALUES (91,
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
	VALUES (91);
INSERT INTO E_GSME
	VALUES (91,
	92);
INSERT INTO E_GEN
	VALUES (91,
	83);
INSERT INTO ACT_BLK
	VALUES (88,
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
	79,
	0);
INSERT INTO ACT_SMT
	VALUES (93,
	88,
	0,
	8,
	3,
	'Tracking::Tracking::lapResetPressed line: 8');
INSERT INTO ACT_BRG
	VALUES (93,
	94,
	8,
	8,
	8,
	3);
INSERT INTO V_VAL
	VALUES (95,
	0,
	0,
	8,
	28,
	92,
	0,
	0,
	0,
	0,
	96,
	88);
INSERT INTO V_LST
	VALUES (95,
	'Tracking:UI:lapResetPressed - No WorkoutTimer, so nothing to do.');
INSERT INTO V_PAR
	VALUES (95,
	93,
	0,
	'message',
	0,
	8,
	20);
INSERT INTO SPR_PEP
	VALUES (97,
	98,
	57);
INSERT INTO SPR_PO
	VALUES (97,
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
	VALUES (99,
	97);
INSERT INTO ACT_ACT
	VALUES (99,
	'interface operation',
	0,
	100,
	0,
	0,
	'Tracking::Tracking::modePressed',
	0);
INSERT INTO ACT_BLK
	VALUES (100,
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
	99,
	0);
INSERT INTO ACT_SMT
	VALUES (101,
	100,
	102,
	5,
	1,
	'Tracking::Tracking::modePressed line: 5');
INSERT INTO ACT_FIO
	VALUES (101,
	103,
	1,
	'any',
	66,
	5,
	38);
INSERT INTO ACT_SMT
	VALUES (102,
	100,
	0,
	6,
	1,
	'Tracking::Tracking::modePressed line: 6');
INSERT INTO ACT_IF
	VALUES (102,
	104,
	105,
	0,
	0);
INSERT INTO V_VAL
	VALUES (106,
	0,
	0,
	6,
	16,
	22,
	0,
	0,
	0,
	0,
	70,
	100);
INSERT INTO V_IRF
	VALUES (106,
	103);
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
	72,
	100);
INSERT INTO V_UNY
	VALUES (107,
	106,
	'empty');
INSERT INTO V_VAL
	VALUES (105,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	100);
INSERT INTO V_UNY
	VALUES (105,
	107,
	'not');
INSERT INTO V_VAR
	VALUES (103,
	100,
	'session',
	1,
	70);
INSERT INTO V_INT
	VALUES (103,
	0,
	66);
INSERT INTO ACT_BLK
	VALUES (104,
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
	99,
	0);
INSERT INTO ACT_SMT
	VALUES (108,
	104,
	109,
	7,
	3,
	'Tracking::Tracking::modePressed line: 7');
INSERT INTO ACT_SEL
	VALUES (108,
	110,
	1,
	'one',
	111);
INSERT INTO ACT_SR
	VALUES (108);
INSERT INTO ACT_LNK
	VALUES (112,
	'''current status indicated on''',
	108,
	113,
	0,
	2,
	114,
	7,
	42,
	7,
	50,
	7,
	53);
INSERT INTO ACT_SMT
	VALUES (109,
	104,
	0,
	8,
	3,
	'Tracking::Tracking::modePressed line: 8');
INSERT INTO E_ESS
	VALUES (109,
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
	VALUES (109);
INSERT INTO E_GSME
	VALUES (109,
	115);
INSERT INTO E_GEN
	VALUES (109,
	110);
INSERT INTO V_VAL
	VALUES (111,
	0,
	0,
	7,
	33,
	39,
	0,
	0,
	0,
	0,
	70,
	104);
INSERT INTO V_IRF
	VALUES (111,
	103);
INSERT INTO V_VAR
	VALUES (110,
	104,
	'display',
	1,
	70);
INSERT INTO V_INT
	VALUES (110,
	0,
	114);
INSERT INTO SPR_PEP
	VALUES (116,
	117,
	57);
INSERT INTO SPR_PO
	VALUES (116,
	'setTargetPressed',
	'',
	'// If a goal is currently executing, advance to the next one,
//   otherwise start the first specified goal, if it exists.
Goal::nextGoal();',
	1);
INSERT INTO ACT_POB
	VALUES (118,
	116);
INSERT INTO ACT_ACT
	VALUES (118,
	'interface operation',
	0,
	119,
	0,
	0,
	'Tracking::Tracking::setTargetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (119,
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
	118,
	0);
INSERT INTO ACT_SMT
	VALUES (120,
	119,
	0,
	3,
	1,
	'Tracking::Tracking::setTargetPressed line: 3');
INSERT INTO ACT_TFM
	VALUES (120,
	121,
	0,
	3,
	7,
	3,
	1);
INSERT INTO SPR_PEP
	VALUES (122,
	123,
	57);
INSERT INTO SPR_PO
	VALUES (122,
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
	VALUES (124,
	122);
INSERT INTO ACT_ACT
	VALUES (124,
	'interface operation',
	0,
	125,
	0,
	0,
	'Tracking::Tracking::startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (125,
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
	124,
	0);
INSERT INTO ACT_SMT
	VALUES (126,
	125,
	127,
	4,
	1,
	'Tracking::Tracking::startStopPressed line: 4');
INSERT INTO ACT_TFM
	VALUES (126,
	128,
	0,
	4,
	17,
	4,
	1);
INSERT INTO ACT_SMT
	VALUES (127,
	125,
	129,
	7,
	1,
	'Tracking::Tracking::startStopPressed line: 7');
INSERT INTO ACT_FIO
	VALUES (127,
	130,
	1,
	'any',
	84,
	7,
	43);
INSERT INTO ACT_SMT
	VALUES (129,
	125,
	0,
	8,
	1,
	'Tracking::Tracking::startStopPressed line: 8');
INSERT INTO E_ESS
	VALUES (129,
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
	VALUES (129);
INSERT INTO E_GSME
	VALUES (129,
	131);
INSERT INTO E_GEN
	VALUES (129,
	130);
INSERT INTO V_VAR
	VALUES (130,
	125,
	'workoutTimer',
	1,
	70);
INSERT INTO V_INT
	VALUES (130,
	0,
	84);
INSERT INTO SPR_PEP
	VALUES (132,
	133,
	57);
INSERT INTO SPR_PO
	VALUES (132,
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
	VALUES (134,
	132);
INSERT INTO ACT_ACT
	VALUES (134,
	'interface operation',
	0,
	135,
	0,
	0,
	'Tracking::Tracking::newGoalSpec',
	0);
INSERT INTO ACT_BLK
	VALUES (135,
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
	134,
	0);
INSERT INTO ACT_SMT
	VALUES (136,
	135,
	137,
	3,
	1,
	'Tracking::Tracking::newGoalSpec line: 3');
INSERT INTO ACT_FIO
	VALUES (136,
	138,
	1,
	'any',
	66,
	3,
	38);
INSERT INTO ACT_SMT
	VALUES (137,
	135,
	0,
	4,
	1,
	'Tracking::Tracking::newGoalSpec line: 4');
INSERT INTO ACT_IF
	VALUES (137,
	139,
	140,
	0,
	0);
INSERT INTO V_VAL
	VALUES (141,
	0,
	0,
	4,
	16,
	22,
	0,
	0,
	0,
	0,
	70,
	135);
INSERT INTO V_IRF
	VALUES (141,
	138);
INSERT INTO V_VAL
	VALUES (142,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	135);
INSERT INTO V_UNY
	VALUES (142,
	141,
	'empty');
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
	72,
	135);
INSERT INTO V_UNY
	VALUES (140,
	142,
	'not');
INSERT INTO V_VAR
	VALUES (138,
	135,
	'session',
	1,
	70);
INSERT INTO V_INT
	VALUES (138,
	0,
	66);
INSERT INTO ACT_BLK
	VALUES (139,
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
	134,
	0);
INSERT INTO ACT_SMT
	VALUES (143,
	139,
	144,
	5,
	3,
	'Tracking::Tracking::newGoalSpec line: 5');
INSERT INTO ACT_CR
	VALUES (143,
	145,
	1,
	146,
	5,
	38);
INSERT INTO ACT_SMT
	VALUES (144,
	139,
	147,
	6,
	3,
	'Tracking::Tracking::newGoalSpec line: 6');
INSERT INTO ACT_AI
	VALUES (144,
	148,
	149,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (147,
	139,
	150,
	7,
	3,
	'Tracking::Tracking::newGoalSpec line: 7');
INSERT INTO ACT_AI
	VALUES (147,
	151,
	152,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (150,
	139,
	153,
	8,
	3,
	'Tracking::Tracking::newGoalSpec line: 8');
INSERT INTO ACT_AI
	VALUES (150,
	154,
	155,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (153,
	139,
	156,
	9,
	3,
	'Tracking::Tracking::newGoalSpec line: 9');
INSERT INTO ACT_AI
	VALUES (153,
	157,
	158,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (156,
	139,
	159,
	10,
	3,
	'Tracking::Tracking::newGoalSpec line: 10');
INSERT INTO ACT_AI
	VALUES (156,
	160,
	161,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (159,
	139,
	162,
	11,
	3,
	'Tracking::Tracking::newGoalSpec line: 11');
INSERT INTO ACT_AI
	VALUES (159,
	163,
	164,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (162,
	139,
	0,
	12,
	3,
	'Tracking::Tracking::newGoalSpec line: 12');
INSERT INTO ACT_REL
	VALUES (162,
	145,
	138,
	'''included in''',
	165,
	12,
	37,
	12,
	41);
INSERT INTO V_VAL
	VALUES (166,
	1,
	0,
	6,
	3,
	10,
	0,
	0,
	0,
	0,
	70,
	139);
INSERT INTO V_IRF
	VALUES (166,
	145);
INSERT INTO V_VAL
	VALUES (149,
	1,
	0,
	6,
	12,
	25,
	0,
	0,
	0,
	0,
	13,
	139);
INSERT INTO V_AVL
	VALUES (149,
	166,
	146,
	167);
INSERT INTO V_VAL
	VALUES (148,
	0,
	0,
	6,
	35,
	48,
	0,
	0,
	0,
	0,
	13,
	139);
INSERT INTO V_PVL
	VALUES (148,
	0,
	0,
	0,
	168);
INSERT INTO V_VAL
	VALUES (169,
	1,
	0,
	7,
	3,
	10,
	0,
	0,
	0,
	0,
	70,
	139);
INSERT INTO V_IRF
	VALUES (169,
	145);
INSERT INTO V_VAL
	VALUES (152,
	1,
	0,
	7,
	12,
	18,
	0,
	0,
	0,
	0,
	170,
	139);
INSERT INTO V_AVL
	VALUES (152,
	169,
	146,
	171);
INSERT INTO V_VAL
	VALUES (151,
	0,
	0,
	7,
	28,
	34,
	0,
	0,
	0,
	0,
	170,
	139);
INSERT INTO V_PVL
	VALUES (151,
	0,
	0,
	0,
	172);
INSERT INTO V_VAL
	VALUES (173,
	1,
	0,
	8,
	3,
	10,
	0,
	0,
	0,
	0,
	70,
	139);
INSERT INTO V_IRF
	VALUES (173,
	145);
INSERT INTO V_VAL
	VALUES (155,
	1,
	0,
	8,
	12,
	18,
	0,
	0,
	0,
	0,
	170,
	139);
INSERT INTO V_AVL
	VALUES (155,
	173,
	146,
	174);
INSERT INTO V_VAL
	VALUES (154,
	0,
	0,
	8,
	28,
	34,
	0,
	0,
	0,
	0,
	170,
	139);
INSERT INTO V_PVL
	VALUES (154,
	0,
	0,
	0,
	175);
INSERT INTO V_VAL
	VALUES (176,
	1,
	0,
	9,
	3,
	10,
	0,
	0,
	0,
	0,
	70,
	139);
INSERT INTO V_IRF
	VALUES (176,
	145);
INSERT INTO V_VAL
	VALUES (158,
	1,
	0,
	9,
	12,
	15,
	0,
	0,
	0,
	0,
	170,
	139);
INSERT INTO V_AVL
	VALUES (158,
	176,
	146,
	177);
INSERT INTO V_VAL
	VALUES (157,
	0,
	0,
	9,
	25,
	28,
	0,
	0,
	0,
	0,
	170,
	139);
INSERT INTO V_PVL
	VALUES (157,
	0,
	0,
	0,
	178);
INSERT INTO V_VAL
	VALUES (179,
	1,
	0,
	10,
	3,
	10,
	0,
	0,
	0,
	0,
	70,
	139);
INSERT INTO V_IRF
	VALUES (179,
	145);
INSERT INTO V_VAL
	VALUES (161,
	1,
	0,
	10,
	12,
	23,
	0,
	0,
	0,
	0,
	180,
	139);
INSERT INTO V_AVL
	VALUES (161,
	179,
	146,
	181);
INSERT INTO V_VAL
	VALUES (160,
	0,
	0,
	10,
	33,
	44,
	0,
	0,
	0,
	0,
	180,
	139);
INSERT INTO V_PVL
	VALUES (160,
	0,
	0,
	0,
	182);
INSERT INTO V_VAL
	VALUES (183,
	1,
	0,
	11,
	3,
	10,
	0,
	0,
	0,
	0,
	70,
	139);
INSERT INTO V_IRF
	VALUES (183,
	145);
INSERT INTO V_VAL
	VALUES (164,
	1,
	0,
	11,
	12,
	19,
	0,
	0,
	0,
	0,
	184,
	139);
INSERT INTO V_AVL
	VALUES (164,
	183,
	146,
	185);
INSERT INTO V_VAL
	VALUES (163,
	0,
	0,
	11,
	29,
	36,
	0,
	0,
	0,
	0,
	184,
	139);
INSERT INTO V_PVL
	VALUES (163,
	0,
	0,
	0,
	186);
INSERT INTO V_VAR
	VALUES (145,
	139,
	'goalSpec',
	1,
	70);
INSERT INTO V_INT
	VALUES (145,
	0,
	146);
INSERT INTO SPR_PEP
	VALUES (187,
	188,
	57);
INSERT INTO SPR_PO
	VALUES (187,
	'lightPressed',
	'',
	'',
	1);
INSERT INTO ACT_POB
	VALUES (189,
	187);
INSERT INTO ACT_ACT
	VALUES (189,
	'interface operation',
	0,
	190,
	0,
	0,
	'Tracking::Tracking::lightPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (190,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	189,
	0);
INSERT INTO PE_PE
	VALUES (191,
	1,
	0,
	3,
	7);
INSERT INTO EP_PKG
	VALUES (191,
	0,
	1,
	'Tracking',
	'',
	0);
INSERT INTO PE_PE
	VALUES (192,
	1,
	191,
	0,
	9);
INSERT INTO R_REL
	VALUES (192,
	1,
	'Indicates the first track point for a track log.  In
other words, this is the first recorded location in 
a chronological series of track points that make up
a track log.
Established when the first track point is recorded and 
exists for the lifetime of the track log.',
	0);
INSERT INTO R_SIMP
	VALUES (192);
INSERT INTO R_PART
	VALUES (193,
	192,
	194,
	0,
	1,
	'is start of');
INSERT INTO R_RTO
	VALUES (193,
	192,
	194,
	-1);
INSERT INTO R_OIR
	VALUES (193,
	192,
	194,
	0);
INSERT INTO R_PART
	VALUES (195,
	192,
	196,
	0,
	1,
	'has first');
INSERT INTO R_RTO
	VALUES (195,
	192,
	196,
	-1);
INSERT INTO R_OIR
	VALUES (195,
	192,
	196,
	0);
INSERT INTO PE_PE
	VALUES (197,
	1,
	191,
	0,
	9);
INSERT INTO R_REL
	VALUES (197,
	2,
	'Chronologically sequences the track points in a track log.
Established each time a new track point is recorded and 
exists for the lifetime of the track log.',
	0);
INSERT INTO R_SIMP
	VALUES (197);
INSERT INTO R_PART
	VALUES (195,
	197,
	198,
	0,
	1,
	'preceeds');
INSERT INTO R_RTO
	VALUES (195,
	197,
	198,
	-1);
INSERT INTO R_OIR
	VALUES (195,
	197,
	198,
	0);
INSERT INTO R_PART
	VALUES (195,
	197,
	199,
	0,
	1,
	'follows');
INSERT INTO R_RTO
	VALUES (195,
	197,
	199,
	-1);
INSERT INTO R_OIR
	VALUES (195,
	197,
	199,
	0);
INSERT INTO PE_PE
	VALUES (200,
	1,
	191,
	0,
	9);
INSERT INTO R_REL
	VALUES (200,
	3,
	'Represents the most recently recorded track point
in a track log.  
Established each time a new track point is recorded and
removed from the previously recorded track point at the same time.',
	0);
INSERT INTO R_SIMP
	VALUES (200);
INSERT INTO R_PART
	VALUES (195,
	200,
	201,
	0,
	1,
	'has last');
INSERT INTO R_RTO
	VALUES (195,
	200,
	201,
	-1);
INSERT INTO R_OIR
	VALUES (195,
	200,
	201,
	0);
INSERT INTO R_PART
	VALUES (193,
	200,
	202,
	0,
	1,
	'is last for');
INSERT INTO R_RTO
	VALUES (193,
	200,
	202,
	-1);
INSERT INTO R_OIR
	VALUES (193,
	200,
	202,
	0);
INSERT INTO PE_PE
	VALUES (203,
	1,
	191,
	0,
	9);
INSERT INTO R_REL
	VALUES (203,
	5,
	'Established when a lap marker is created and exists
for the lifetime of the track log.',
	0);
INSERT INTO R_SIMP
	VALUES (203);
INSERT INTO R_PART
	VALUES (204,
	203,
	205,
	1,
	1,
	'has laps defined by');
INSERT INTO R_RTO
	VALUES (204,
	203,
	205,
	-1);
INSERT INTO R_OIR
	VALUES (204,
	203,
	205,
	0);
INSERT INTO R_PART
	VALUES (193,
	203,
	206,
	0,
	0,
	'marks end of lap in');
INSERT INTO R_RTO
	VALUES (193,
	203,
	206,
	-1);
INSERT INTO R_OIR
	VALUES (193,
	203,
	206,
	0);
INSERT INTO PE_PE
	VALUES (113,
	1,
	191,
	0,
	9);
INSERT INTO R_REL
	VALUES (113,
	7,
	'Established when a workout session is created and 
exists for the duration of the session.',
	0);
INSERT INTO R_SIMP
	VALUES (113);
INSERT INTO R_PART
	VALUES (66,
	113,
	207,
	0,
	0,
	'indicates current status of');
INSERT INTO R_RTO
	VALUES (66,
	113,
	207,
	-1);
INSERT INTO R_OIR
	VALUES (66,
	113,
	207,
	0);
INSERT INTO R_PART
	VALUES (114,
	113,
	208,
	0,
	0,
	'current status indicated on');
INSERT INTO R_RTO
	VALUES (114,
	113,
	208,
	-1);
INSERT INTO R_OIR
	VALUES (114,
	113,
	208,
	0);
INSERT INTO PE_PE
	VALUES (209,
	1,
	191,
	0,
	9);
INSERT INTO R_REL
	VALUES (209,
	8,
	'Established when a workout session is created and exists for the duration
of the session.',
	0);
INSERT INTO R_SIMP
	VALUES (209);
INSERT INTO R_PART
	VALUES (66,
	209,
	210,
	0,
	0,
	'acts as the stopwatch for');
INSERT INTO R_RTO
	VALUES (66,
	209,
	210,
	-1);
INSERT INTO R_OIR
	VALUES (66,
	209,
	210,
	0);
INSERT INTO R_PART
	VALUES (84,
	209,
	211,
	0,
	0,
	'is timed by');
INSERT INTO R_RTO
	VALUES (84,
	209,
	211,
	-1);
INSERT INTO R_OIR
	VALUES (84,
	209,
	211,
	0);
INSERT INTO PE_PE
	VALUES (212,
	1,
	191,
	0,
	9);
INSERT INTO R_REL
	VALUES (212,
	4,
	'Established when a workout session is created and
exists for the duration of the session.',
	0);
INSERT INTO R_SIMP
	VALUES (212);
INSERT INTO R_PART
	VALUES (66,
	212,
	213,
	0,
	0,
	'represents path for');
INSERT INTO R_RTO
	VALUES (66,
	212,
	213,
	-1);
INSERT INTO R_OIR
	VALUES (66,
	212,
	213,
	0);
INSERT INTO R_PART
	VALUES (193,
	212,
	214,
	0,
	0,
	'captures path in');
INSERT INTO R_RTO
	VALUES (193,
	212,
	214,
	-1);
INSERT INTO R_OIR
	VALUES (193,
	212,
	214,
	0);
INSERT INTO PE_PE
	VALUES (215,
	1,
	191,
	0,
	9);
INSERT INTO R_REL
	VALUES (215,
	6,
	'Established when a heart rate sample is created and exists for
the duration of the workout session.',
	0);
INSERT INTO R_SIMP
	VALUES (215);
INSERT INTO R_PART
	VALUES (216,
	215,
	217,
	1,
	1,
	'tracks heart rate over time as');
INSERT INTO R_RTO
	VALUES (216,
	215,
	217,
	-1);
INSERT INTO R_OIR
	VALUES (216,
	215,
	217,
	0);
INSERT INTO R_PART
	VALUES (66,
	215,
	218,
	0,
	0,
	'was collected during');
INSERT INTO R_RTO
	VALUES (66,
	215,
	218,
	-1);
INSERT INTO R_OIR
	VALUES (66,
	215,
	218,
	0);
INSERT INTO PE_PE
	VALUES (219,
	1,
	191,
	0,
	9);
INSERT INTO R_REL
	VALUES (219,
	9,
	'Established when goal execution begins and removed when it ends.',
	0);
INSERT INTO R_SIMP
	VALUES (219);
INSERT INTO R_PART
	VALUES (146,
	219,
	220,
	0,
	0,
	'specified by');
INSERT INTO R_RTO
	VALUES (146,
	219,
	220,
	-1);
INSERT INTO R_OIR
	VALUES (146,
	219,
	220,
	0);
INSERT INTO R_PART
	VALUES (221,
	219,
	222,
	1,
	1,
	'specifies');
INSERT INTO R_RTO
	VALUES (221,
	219,
	222,
	-1);
INSERT INTO R_OIR
	VALUES (221,
	219,
	222,
	0);
INSERT INTO PE_PE
	VALUES (165,
	1,
	191,
	0,
	9);
INSERT INTO R_REL
	VALUES (165,
	10,
	'Established when a goal specification is created and exists 
for the duration of a workout session.',
	0);
INSERT INTO R_SIMP
	VALUES (165);
INSERT INTO R_PART
	VALUES (66,
	165,
	223,
	0,
	0,
	'included in');
INSERT INTO R_RTO
	VALUES (66,
	165,
	223,
	-1);
INSERT INTO R_OIR
	VALUES (66,
	165,
	223,
	0);
INSERT INTO R_PART
	VALUES (146,
	165,
	224,
	1,
	1,
	'includes');
INSERT INTO R_RTO
	VALUES (146,
	165,
	224,
	-1);
INSERT INTO R_OIR
	VALUES (146,
	165,
	224,
	0);
INSERT INTO PE_PE
	VALUES (225,
	1,
	191,
	0,
	9);
INSERT INTO R_REL
	VALUES (225,
	11,
	'Established when a goal begins executing and removed when it ends.',
	0);
INSERT INTO R_SIMP
	VALUES (225);
INSERT INTO R_PART
	VALUES (66,
	225,
	226,
	0,
	1,
	'is currently executing within');
INSERT INTO R_RTO
	VALUES (66,
	225,
	226,
	-1);
INSERT INTO R_OIR
	VALUES (66,
	225,
	226,
	0);
INSERT INTO R_PART
	VALUES (221,
	225,
	227,
	0,
	1,
	'is currently executing');
INSERT INTO R_RTO
	VALUES (221,
	225,
	227,
	-1);
INSERT INTO R_OIR
	VALUES (221,
	225,
	227,
	0);
INSERT INTO PE_PE
	VALUES (228,
	1,
	191,
	0,
	9);
INSERT INTO R_REL
	VALUES (228,
	12,
	'Established when an achievement period begins and exists for 
the duration of the associated workout session.',
	0);
INSERT INTO R_SIMP
	VALUES (228);
INSERT INTO R_PART
	VALUES (221,
	228,
	229,
	0,
	0,
	'specifies achievement of');
INSERT INTO R_RTO
	VALUES (221,
	228,
	229,
	-1);
INSERT INTO R_OIR
	VALUES (221,
	228,
	229,
	0);
INSERT INTO R_PART
	VALUES (230,
	228,
	231,
	1,
	1,
	'has recorded');
INSERT INTO R_RTO
	VALUES (230,
	228,
	231,
	-1);
INSERT INTO R_OIR
	VALUES (230,
	228,
	231,
	0);
INSERT INTO PE_PE
	VALUES (232,
	1,
	191,
	0,
	9);
INSERT INTO R_REL
	VALUES (232,
	13,
	'Established when a goal completes execution and exists for the 
duration of the associated workout session.',
	0);
INSERT INTO R_SIMP
	VALUES (232);
INSERT INTO R_PART
	VALUES (221,
	232,
	233,
	1,
	1,
	'has executed');
INSERT INTO R_RTO
	VALUES (221,
	232,
	233,
	-1);
INSERT INTO R_OIR
	VALUES (221,
	232,
	233,
	0);
INSERT INTO R_PART
	VALUES (66,
	232,
	234,
	0,
	0,
	'was executed within');
INSERT INTO R_RTO
	VALUES (66,
	232,
	234,
	-1);
INSERT INTO R_OIR
	VALUES (66,
	232,
	234,
	0);
INSERT INTO PE_PE
	VALUES (235,
	1,
	191,
	0,
	9);
INSERT INTO R_REL
	VALUES (235,
	14,
	'Represents an open achievement record, one for which a start time has been recorded
but no end time has yet been recorded.  In other words, this association exists only
while the currently executing goal is being achieved.',
	0);
INSERT INTO R_SIMP
	VALUES (235);
INSERT INTO R_PART
	VALUES (221,
	235,
	236,
	0,
	1,
	'is open for');
INSERT INTO R_RTO
	VALUES (221,
	235,
	236,
	-1);
INSERT INTO R_OIR
	VALUES (221,
	235,
	236,
	0);
INSERT INTO R_PART
	VALUES (230,
	235,
	237,
	0,
	1,
	'has open');
INSERT INTO R_RTO
	VALUES (230,
	235,
	237,
	-1);
INSERT INTO R_OIR
	VALUES (230,
	235,
	237,
	0);
INSERT INTO PE_PE
	VALUES (238,
	1,
	191,
	0,
	5);
INSERT INTO S_EE
	VALUES (238,
	'Logging',
	'',
	'LOG',
	0,
	'',
	'Logging',
	1);
INSERT INTO S_BRG
	VALUES (239,
	238,
	'LogSuccess',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (241,
	239,
	'message',
	96,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (242,
	239);
INSERT INTO ACT_ACT
	VALUES (242,
	'bridge',
	0,
	243,
	0,
	0,
	'Logging::LogSuccess',
	0);
INSERT INTO ACT_BLK
	VALUES (243,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	242,
	0);
INSERT INTO S_BRG
	VALUES (94,
	238,
	'LogFailure',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (244,
	94,
	'message',
	96,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (245,
	94);
INSERT INTO ACT_ACT
	VALUES (245,
	'bridge',
	0,
	246,
	0,
	0,
	'Logging::LogFailure',
	0);
INSERT INTO ACT_BLK
	VALUES (246,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	245,
	0);
INSERT INTO S_BRG
	VALUES (247,
	238,
	'LogInfo',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (248,
	247,
	'message',
	96,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (249,
	247);
INSERT INTO ACT_ACT
	VALUES (249,
	'bridge',
	0,
	250,
	0,
	0,
	'Logging::LogInfo',
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
	238,
	'LogDate',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (252,
	251,
	'd',
	253,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (254,
	251,
	'message',
	96,
	0,
	'',
	252,
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
	'Logging::LogDate',
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
	238,
	'LogTime',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (258,
	257,
	't',
	259,
	0,
	'',
	260,
	'');
INSERT INTO S_BPARM
	VALUES (260,
	257,
	'message',
	96,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (261,
	257);
INSERT INTO ACT_ACT
	VALUES (261,
	'bridge',
	0,
	262,
	0,
	0,
	'Logging::LogTime',
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
	238,
	'LogReal',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (264,
	263,
	'r',
	170,
	0,
	'',
	265,
	'');
INSERT INTO S_BPARM
	VALUES (265,
	263,
	'message',
	96,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (266,
	263);
INSERT INTO ACT_ACT
	VALUES (266,
	'bridge',
	0,
	267,
	0,
	0,
	'Logging::LogReal',
	0);
INSERT INTO ACT_BLK
	VALUES (267,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	266,
	0);
INSERT INTO S_BRG
	VALUES (268,
	238,
	'LogInteger',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (269,
	268,
	'message',
	13,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (270,
	268);
INSERT INTO ACT_ACT
	VALUES (270,
	'bridge',
	0,
	271,
	0,
	0,
	'Logging::LogInteger',
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
INSERT INTO PE_PE
	VALUES (272,
	1,
	191,
	0,
	5);
INSERT INTO S_EE
	VALUES (272,
	'Time',
	'The Time external entity provides date, timestamp, and timer related operations.',
	'TIM',
	0,
	'',
	'Time',
	1);
INSERT INTO S_BRG
	VALUES (273,
	272,
	'current_date',
	'',
	1,
	253,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (274,
	273);
INSERT INTO ACT_ACT
	VALUES (274,
	'bridge',
	0,
	275,
	0,
	0,
	'Time::current_date',
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
	272,
	'create_date',
	'',
	1,
	253,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (277,
	276,
	'second',
	13,
	0,
	'',
	278,
	'');
INSERT INTO S_BPARM
	VALUES (279,
	276,
	'minute',
	13,
	0,
	'',
	280,
	'');
INSERT INTO S_BPARM
	VALUES (280,
	276,
	'hour',
	13,
	0,
	'',
	281,
	'');
INSERT INTO S_BPARM
	VALUES (281,
	276,
	'day',
	13,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (278,
	276,
	'month',
	13,
	0,
	'',
	279,
	'');
INSERT INTO S_BPARM
	VALUES (282,
	276,
	'year',
	13,
	0,
	'',
	277,
	'');
INSERT INTO ACT_BRB
	VALUES (283,
	276);
INSERT INTO ACT_ACT
	VALUES (283,
	'bridge',
	0,
	284,
	0,
	0,
	'Time::create_date',
	0);
INSERT INTO ACT_BLK
	VALUES (284,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	283,
	0);
INSERT INTO S_BRG
	VALUES (285,
	272,
	'get_second',
	'',
	1,
	13,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (286,
	285,
	'date',
	253,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (287,
	285);
INSERT INTO ACT_ACT
	VALUES (287,
	'bridge',
	0,
	288,
	0,
	0,
	'Time::get_second',
	0);
INSERT INTO ACT_BLK
	VALUES (288,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	287,
	0);
INSERT INTO S_BRG
	VALUES (289,
	272,
	'get_minute',
	'',
	1,
	13,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (290,
	289,
	'date',
	253,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (291,
	289);
INSERT INTO ACT_ACT
	VALUES (291,
	'bridge',
	0,
	292,
	0,
	0,
	'Time::get_minute',
	0);
INSERT INTO ACT_BLK
	VALUES (292,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
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
INSERT INTO S_BRG
	VALUES (293,
	272,
	'get_hour',
	'',
	1,
	13,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (294,
	293,
	'date',
	253,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (295,
	293);
INSERT INTO ACT_ACT
	VALUES (295,
	'bridge',
	0,
	296,
	0,
	0,
	'Time::get_hour',
	0);
INSERT INTO ACT_BLK
	VALUES (296,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	295,
	0);
INSERT INTO S_BRG
	VALUES (297,
	272,
	'get_day',
	'',
	1,
	13,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (298,
	297,
	'date',
	253,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (299,
	297);
INSERT INTO ACT_ACT
	VALUES (299,
	'bridge',
	0,
	300,
	0,
	0,
	'Time::get_day',
	0);
INSERT INTO ACT_BLK
	VALUES (300,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	299,
	0);
INSERT INTO S_BRG
	VALUES (301,
	272,
	'get_month',
	'',
	1,
	13,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (302,
	301,
	'date',
	253,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (303,
	301);
INSERT INTO ACT_ACT
	VALUES (303,
	'bridge',
	0,
	304,
	0,
	0,
	'Time::get_month',
	0);
INSERT INTO ACT_BLK
	VALUES (304,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	303,
	0);
INSERT INTO S_BRG
	VALUES (305,
	272,
	'get_year',
	'',
	1,
	13,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (306,
	305,
	'date',
	253,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (307,
	305);
INSERT INTO ACT_ACT
	VALUES (307,
	'bridge',
	0,
	308,
	0,
	0,
	'Time::get_year',
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
	272,
	'current_clock',
	'',
	1,
	259,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (310,
	309);
INSERT INTO ACT_ACT
	VALUES (310,
	'bridge',
	0,
	311,
	0,
	0,
	'Time::current_clock',
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
	272,
	'timer_start',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Returns the instance
handle of the timer.',
	1,
	313,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (314,
	312,
	'microseconds',
	13,
	0,
	'',
	315,
	'');
INSERT INTO S_BPARM
	VALUES (315,
	312,
	'event_inst',
	316,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (317,
	312);
INSERT INTO ACT_ACT
	VALUES (317,
	'bridge',
	0,
	318,
	0,
	0,
	'Time::timer_start',
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
	272,
	'timer_start_recurring',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Upon expiration, the
timer will be restarted and fire again in the specified number of microseconds
generating the passed event. This bridge operation returns the instance handle
of the timer.',
	1,
	313,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (320,
	319,
	'microseconds',
	13,
	0,
	'',
	321,
	'');
INSERT INTO S_BPARM
	VALUES (321,
	319,
	'event_inst',
	316,
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
	'Time::timer_start_recurring',
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
	272,
	'timer_remaining_time',
	'Returns the time remaining (in microseconds) for the passed timer instance. If
the timer has expired, a zero value is returned.',
	1,
	13,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (325,
	324,
	'timer_inst_ref',
	313,
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
	'Time::timer_remaining_time',
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
	272,
	'timer_reset_time',
	'This bridge operation attempts to set the passed existing timer to expire in
the specified number of microseconds. If the timer exists (that is, it has not
expired), a TRUE value is returned. If the timer no longer exists, a FALSE value
is returned.',
	1,
	72,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (329,
	328,
	'timer_inst_ref',
	313,
	0,
	'',
	330,
	'');
INSERT INTO S_BPARM
	VALUES (330,
	328,
	'microseconds',
	13,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (331,
	328);
INSERT INTO ACT_ACT
	VALUES (331,
	'bridge',
	0,
	332,
	0,
	0,
	'Time::timer_reset_time',
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
INSERT INTO S_BRG
	VALUES (333,
	272,
	'timer_add_time',
	'This bridge operation attempts to add the specified number of microseconds to a
passed existing timer. If the timer exists (that is, it has not expired), a TRUE
value is returned. If the timer no longer exists, a FALSE value is returned.',
	1,
	72,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (334,
	333,
	'timer_inst_ref',
	313,
	0,
	'',
	335,
	'');
INSERT INTO S_BPARM
	VALUES (335,
	333,
	'microseconds',
	13,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (336,
	333);
INSERT INTO ACT_ACT
	VALUES (336,
	'bridge',
	0,
	337,
	0,
	0,
	'Time::timer_add_time',
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
	272,
	'timer_cancel',
	'This bridge operation cancels and deletes the passed timer instance. If the 
timer exists (that is, it had not expired), a TRUE value is returned. If the
timer no longer exists, a FALSE value is returned.',
	1,
	72,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (339,
	338,
	'timer_inst_ref',
	313,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (340,
	338);
INSERT INTO ACT_ACT
	VALUES (340,
	'bridge',
	0,
	341,
	0,
	0,
	'Time::timer_cancel',
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
INSERT INTO PE_PE
	VALUES (342,
	1,
	191,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (342,
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
	240,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (343,
	342);
INSERT INTO ACT_ACT
	VALUES (343,
	'function',
	0,
	344,
	0,
	0,
	'GoalTest_1',
	0);
INSERT INTO ACT_BLK
	VALUES (344,
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
	343,
	0);
INSERT INTO ACT_SMT
	VALUES (345,
	344,
	346,
	2,
	1,
	'GoalTest_1 line: 2');
INSERT INTO ACT_FNC
	VALUES (345,
	347,
	2,
	3);
INSERT INTO ACT_SMT
	VALUES (346,
	344,
	348,
	5,
	1,
	'GoalTest_1 line: 5');
INSERT INTO ACT_IOP
	VALUES (346,
	5,
	10,
	5,
	6,
	0,
	41,
	0);
INSERT INTO ACT_SMT
	VALUES (348,
	344,
	349,
	13,
	1,
	'GoalTest_1 line: 13');
INSERT INTO ACT_IOP
	VALUES (348,
	13,
	10,
	13,
	6,
	0,
	41,
	0);
INSERT INTO ACT_SMT
	VALUES (349,
	344,
	350,
	21,
	1,
	'GoalTest_1 line: 21');
INSERT INTO ACT_IOP
	VALUES (349,
	21,
	10,
	21,
	6,
	0,
	41,
	0);
INSERT INTO ACT_SMT
	VALUES (350,
	344,
	0,
	29,
	1,
	'GoalTest_1 line: 29');
INSERT INTO ACT_IOP
	VALUES (350,
	29,
	10,
	29,
	6,
	0,
	41,
	0);
INSERT INTO V_VAL
	VALUES (351,
	0,
	0,
	6,
	19,
	19,
	0,
	0,
	0,
	0,
	13,
	344);
INSERT INTO V_LIN
	VALUES (351,
	'1');
INSERT INTO V_PAR
	VALUES (351,
	346,
	0,
	'sequenceNumber',
	352,
	6,
	3);
INSERT INTO V_VAL
	VALUES (352,
	0,
	0,
	7,
	12,
	14,
	0,
	0,
	0,
	0,
	170,
	344);
INSERT INTO V_LRL
	VALUES (352,
	'2.0');
INSERT INTO V_PAR
	VALUES (352,
	346,
	0,
	'minimum',
	353,
	7,
	3);
INSERT INTO V_VAL
	VALUES (353,
	0,
	0,
	8,
	12,
	14,
	0,
	0,
	0,
	0,
	170,
	344);
INSERT INTO V_LRL
	VALUES (353,
	'8.0');
INSERT INTO V_PAR
	VALUES (353,
	346,
	0,
	'maximum',
	354,
	8,
	3);
INSERT INTO V_VAL
	VALUES (354,
	0,
	0,
	9,
	9,
	13,
	0,
	0,
	0,
	0,
	170,
	344);
INSERT INTO V_LRL
	VALUES (354,
	'150.0');
INSERT INTO V_PAR
	VALUES (354,
	346,
	0,
	'span',
	355,
	9,
	3);
INSERT INTO V_VAL
	VALUES (355,
	0,
	0,
	10,
	31,
	34,
	0,
	0,
	0,
	0,
	180,
	344);
INSERT INTO V_LEN
	VALUES (355,
	356,
	10,
	17);
INSERT INTO V_PAR
	VALUES (355,
	346,
	0,
	'criteriaType',
	357,
	10,
	3);
INSERT INTO V_VAL
	VALUES (357,
	0,
	0,
	11,
	23,
	30,
	0,
	0,
	0,
	0,
	184,
	344);
INSERT INTO V_LEN
	VALUES (357,
	358,
	11,
	13);
INSERT INTO V_PAR
	VALUES (357,
	346,
	0,
	'spanType',
	0,
	11,
	3);
INSERT INTO V_VAL
	VALUES (359,
	0,
	0,
	14,
	19,
	19,
	0,
	0,
	0,
	0,
	13,
	344);
INSERT INTO V_LIN
	VALUES (359,
	'2');
INSERT INTO V_PAR
	VALUES (359,
	348,
	0,
	'sequenceNumber',
	360,
	14,
	3);
INSERT INTO V_VAL
	VALUES (360,
	0,
	0,
	15,
	12,
	15,
	0,
	0,
	0,
	0,
	170,
	344);
INSERT INTO V_LRL
	VALUES (360,
	'60.0');
INSERT INTO V_PAR
	VALUES (360,
	348,
	0,
	'minimum',
	361,
	15,
	3);
INSERT INTO V_VAL
	VALUES (361,
	0,
	0,
	16,
	12,
	15,
	0,
	0,
	0,
	0,
	170,
	344);
INSERT INTO V_LRL
	VALUES (361,
	'80.0');
INSERT INTO V_PAR
	VALUES (361,
	348,
	0,
	'maximum',
	362,
	16,
	3);
INSERT INTO V_VAL
	VALUES (362,
	0,
	0,
	17,
	9,
	10,
	0,
	0,
	0,
	0,
	13,
	344);
INSERT INTO V_LIN
	VALUES (362,
	'10');
INSERT INTO V_PAR
	VALUES (362,
	348,
	0,
	'span',
	363,
	17,
	3);
INSERT INTO V_VAL
	VALUES (363,
	0,
	0,
	18,
	31,
	39,
	0,
	0,
	0,
	0,
	180,
	344);
INSERT INTO V_LEN
	VALUES (363,
	364,
	18,
	17);
INSERT INTO V_PAR
	VALUES (363,
	348,
	0,
	'criteriaType',
	365,
	18,
	3);
INSERT INTO V_VAL
	VALUES (365,
	0,
	0,
	19,
	23,
	26,
	0,
	0,
	0,
	0,
	184,
	344);
INSERT INTO V_LEN
	VALUES (365,
	366,
	19,
	13);
INSERT INTO V_PAR
	VALUES (365,
	348,
	0,
	'spanType',
	0,
	19,
	3);
INSERT INTO V_VAL
	VALUES (367,
	0,
	0,
	22,
	19,
	19,
	0,
	0,
	0,
	0,
	13,
	344);
INSERT INTO V_LIN
	VALUES (367,
	'3');
INSERT INTO V_PAR
	VALUES (367,
	349,
	0,
	'sequenceNumber',
	368,
	22,
	3);
INSERT INTO V_VAL
	VALUES (368,
	0,
	0,
	23,
	12,
	14,
	0,
	0,
	0,
	0,
	170,
	344);
INSERT INTO V_LRL
	VALUES (368,
	'5.0');
INSERT INTO V_PAR
	VALUES (368,
	349,
	0,
	'minimum',
	369,
	23,
	3);
INSERT INTO V_VAL
	VALUES (369,
	0,
	0,
	24,
	12,
	14,
	0,
	0,
	0,
	0,
	170,
	344);
INSERT INTO V_LRL
	VALUES (369,
	'6.0');
INSERT INTO V_PAR
	VALUES (369,
	349,
	0,
	'maximum',
	370,
	24,
	3);
INSERT INTO V_VAL
	VALUES (370,
	0,
	0,
	25,
	9,
	10,
	0,
	0,
	0,
	0,
	13,
	344);
INSERT INTO V_LIN
	VALUES (370,
	'15');
INSERT INTO V_PAR
	VALUES (370,
	349,
	0,
	'span',
	371,
	25,
	3);
INSERT INTO V_VAL
	VALUES (371,
	0,
	0,
	26,
	31,
	34,
	0,
	0,
	0,
	0,
	180,
	344);
INSERT INTO V_LEN
	VALUES (371,
	356,
	26,
	17);
INSERT INTO V_PAR
	VALUES (371,
	349,
	0,
	'criteriaType',
	372,
	26,
	3);
INSERT INTO V_VAL
	VALUES (372,
	0,
	0,
	27,
	23,
	26,
	0,
	0,
	0,
	0,
	184,
	344);
INSERT INTO V_LEN
	VALUES (372,
	366,
	27,
	13);
INSERT INTO V_PAR
	VALUES (372,
	349,
	0,
	'spanType',
	0,
	27,
	3);
INSERT INTO V_VAL
	VALUES (373,
	0,
	0,
	30,
	19,
	19,
	0,
	0,
	0,
	0,
	13,
	344);
INSERT INTO V_LIN
	VALUES (373,
	'4');
INSERT INTO V_PAR
	VALUES (373,
	350,
	0,
	'sequenceNumber',
	374,
	30,
	3);
INSERT INTO V_VAL
	VALUES (374,
	0,
	0,
	31,
	12,
	14,
	0,
	0,
	0,
	0,
	170,
	344);
INSERT INTO V_LRL
	VALUES (374,
	'1.0');
INSERT INTO V_PAR
	VALUES (374,
	350,
	0,
	'minimum',
	375,
	31,
	3);
INSERT INTO V_VAL
	VALUES (375,
	0,
	0,
	32,
	12,
	14,
	0,
	0,
	0,
	0,
	170,
	344);
INSERT INTO V_LRL
	VALUES (375,
	'2.0');
INSERT INTO V_PAR
	VALUES (375,
	350,
	0,
	'maximum',
	376,
	32,
	3);
INSERT INTO V_VAL
	VALUES (376,
	0,
	0,
	33,
	9,
	10,
	0,
	0,
	0,
	0,
	13,
	344);
INSERT INTO V_LIN
	VALUES (376,
	'15');
INSERT INTO V_PAR
	VALUES (376,
	350,
	0,
	'span',
	377,
	33,
	3);
INSERT INTO V_VAL
	VALUES (377,
	0,
	0,
	34,
	31,
	34,
	0,
	0,
	0,
	0,
	180,
	344);
INSERT INTO V_LEN
	VALUES (377,
	356,
	34,
	17);
INSERT INTO V_PAR
	VALUES (377,
	350,
	0,
	'criteriaType',
	378,
	34,
	3);
INSERT INTO V_VAL
	VALUES (378,
	0,
	0,
	35,
	23,
	26,
	0,
	0,
	0,
	0,
	184,
	344);
INSERT INTO V_LEN
	VALUES (378,
	366,
	35,
	13);
INSERT INTO V_PAR
	VALUES (378,
	350,
	0,
	'spanType',
	0,
	35,
	3);
INSERT INTO PE_PE
	VALUES (347,
	1,
	191,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (347,
	0,
	'Initialize',
	'',
	'// Create a workout session and everything required to support it.
WorkoutSession::create();',
	240,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (379,
	347);
INSERT INTO ACT_ACT
	VALUES (379,
	'function',
	0,
	380,
	0,
	0,
	'Initialize',
	0);
INSERT INTO ACT_BLK
	VALUES (380,
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
	379,
	0);
INSERT INTO ACT_SMT
	VALUES (381,
	380,
	0,
	2,
	1,
	'Initialize line: 2');
INSERT INTO ACT_TFM
	VALUES (381,
	128,
	0,
	2,
	17,
	2,
	1);
INSERT INTO PE_PE
	VALUES (230,
	1,
	191,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (230,
	'Achievement',
	10,
	'Achievement',
	'Each instance represents one contiguous period of time during 
which a particular goal was being met (achieved).',
	0);
INSERT INTO O_TFR
	VALUES (382,
	230,
	'close',
	'',
	240,
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
	VALUES (383,
	382);
INSERT INTO ACT_ACT
	VALUES (383,
	'operation',
	0,
	384,
	0,
	0,
	'Achievement::close',
	0);
INSERT INTO ACT_BLK
	VALUES (384,
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
	383,
	0);
INSERT INTO ACT_SMT
	VALUES (385,
	384,
	386,
	3,
	1,
	'Achievement::close line: 3');
INSERT INTO ACT_SEL
	VALUES (385,
	387,
	1,
	'one',
	388);
INSERT INTO ACT_SR
	VALUES (385);
INSERT INTO ACT_LNK
	VALUES (389,
	'''is open for''',
	385,
	235,
	0,
	2,
	221,
	3,
	34,
	3,
	39,
	3,
	43);
INSERT INTO ACT_SMT
	VALUES (386,
	384,
	390,
	4,
	1,
	'Achievement::close line: 4');
INSERT INTO ACT_SEL
	VALUES (386,
	391,
	1,
	'one',
	392);
INSERT INTO ACT_SR
	VALUES (386);
INSERT INTO ACT_LNK
	VALUES (393,
	'''is currently executing within''',
	386,
	225,
	394,
	2,
	66,
	5,
	9,
	5,
	24,
	5,
	28);
INSERT INTO ACT_LNK
	VALUES (394,
	'''is timed by''',
	0,
	209,
	0,
	2,
	84,
	5,
	62,
	5,
	75,
	5,
	78);
INSERT INTO ACT_SMT
	VALUES (390,
	384,
	395,
	6,
	3,
	'Achievement::close line: 6');
INSERT INTO ACT_AI
	VALUES (390,
	396,
	397,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (395,
	384,
	398,
	7,
	1,
	'Achievement::close line: 7');
INSERT INTO ACT_UNR
	VALUES (395,
	399,
	387,
	'''is open for''',
	235,
	7,
	32,
	7,
	36);
INSERT INTO ACT_SMT
	VALUES (398,
	384,
	0,
	8,
	1,
	'Achievement::close line: 8');
INSERT INTO ACT_REL
	VALUES (398,
	399,
	387,
	'''specifies achievement of''',
	228,
	8,
	28,
	8,
	32);
INSERT INTO V_VAL
	VALUES (388,
	0,
	0,
	3,
	28,
	31,
	0,
	0,
	0,
	0,
	70,
	384);
INSERT INTO V_IRF
	VALUES (388,
	399);
INSERT INTO V_VAL
	VALUES (392,
	0,
	0,
	5,
	3,
	6,
	0,
	0,
	0,
	0,
	70,
	384);
INSERT INTO V_IRF
	VALUES (392,
	387);
INSERT INTO V_VAL
	VALUES (400,
	1,
	0,
	6,
	3,
	6,
	0,
	0,
	0,
	0,
	70,
	384);
INSERT INTO V_IRF
	VALUES (400,
	399);
INSERT INTO V_VAL
	VALUES (397,
	1,
	0,
	6,
	8,
	14,
	0,
	0,
	0,
	0,
	13,
	384);
INSERT INTO V_AVL
	VALUES (397,
	400,
	230,
	401);
INSERT INTO V_VAL
	VALUES (402,
	0,
	0,
	6,
	18,
	29,
	0,
	0,
	0,
	0,
	70,
	384);
INSERT INTO V_IRF
	VALUES (402,
	391);
INSERT INTO V_VAL
	VALUES (396,
	0,
	0,
	6,
	31,
	34,
	0,
	0,
	0,
	0,
	13,
	384);
INSERT INTO V_AVL
	VALUES (396,
	402,
	84,
	403);
INSERT INTO V_VAR
	VALUES (387,
	384,
	'goal',
	1,
	70);
INSERT INTO V_INT
	VALUES (387,
	0,
	221);
INSERT INTO V_VAR
	VALUES (399,
	384,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (399,
	0,
	230);
INSERT INTO V_VAR
	VALUES (391,
	384,
	'workoutTimer',
	1,
	70);
INSERT INTO V_INT
	VALUES (391,
	0,
	84);
INSERT INTO O_NBATTR
	VALUES (404,
	230);
INSERT INTO O_BATTR
	VALUES (404,
	230);
INSERT INTO O_ATTR
	VALUES (404,
	230,
	0,
	'startTime',
	'Starting time for this achievement, expressed as the number of seconds
since the beginning of the associated workout session.',
	'',
	'startTime',
	0,
	13,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (401,
	230);
INSERT INTO O_BATTR
	VALUES (401,
	230);
INSERT INTO O_ATTR
	VALUES (401,
	230,
	404,
	'endTime',
	'Ending time for this achievement, expressed as the number of seconds
since the beginning of the associated workout session.',
	'',
	'endTime',
	0,
	13,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	230);
INSERT INTO O_ID
	VALUES (1,
	230);
INSERT INTO O_ID
	VALUES (2,
	230);
INSERT INTO PE_PE
	VALUES (114,
	1,
	191,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (114,
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
	VALUES (405,
	114,
	'goalDispositionIndicator',
	'',
	406,
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
	VALUES (407,
	405);
INSERT INTO ACT_ACT
	VALUES (407,
	'class operation',
	0,
	408,
	0,
	0,
	'Display::goalDispositionIndicator',
	0);
INSERT INTO ACT_BLK
	VALUES (408,
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
	407,
	0);
INSERT INTO ACT_SMT
	VALUES (409,
	408,
	410,
	7,
	1,
	'Display::goalDispositionIndicator line: 7');
INSERT INTO ACT_FIO
	VALUES (409,
	411,
	1,
	'any',
	66,
	7,
	38);
INSERT INTO ACT_SMT
	VALUES (410,
	408,
	412,
	8,
	1,
	'Display::goalDispositionIndicator line: 8');
INSERT INTO ACT_SEL
	VALUES (410,
	413,
	1,
	'one',
	414);
INSERT INTO ACT_SR
	VALUES (410);
INSERT INTO ACT_LNK
	VALUES (415,
	'''is currently executing''',
	410,
	225,
	0,
	2,
	221,
	8,
	37,
	8,
	42,
	8,
	46);
INSERT INTO ACT_SMT
	VALUES (412,
	408,
	416,
	12,
	1,
	'Display::goalDispositionIndicator line: 12');
INSERT INTO ACT_AI
	VALUES (412,
	417,
	418,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (416,
	408,
	419,
	13,
	1,
	'Display::goalDispositionIndicator line: 13');
INSERT INTO ACT_IF
	VALUES (416,
	420,
	421,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (419,
	408,
	0,
	23,
	1,
	'Display::goalDispositionIndicator line: 23');
INSERT INTO ACT_RET
	VALUES (419,
	422);
INSERT INTO V_VAL
	VALUES (414,
	0,
	0,
	8,
	28,
	34,
	0,
	0,
	0,
	0,
	70,
	408);
INSERT INTO V_IRF
	VALUES (414,
	411);
INSERT INTO V_VAL
	VALUES (418,
	1,
	1,
	12,
	1,
	9,
	0,
	0,
	0,
	0,
	406,
	408);
INSERT INTO V_TVL
	VALUES (418,
	423);
INSERT INTO V_VAL
	VALUES (417,
	0,
	0,
	12,
	24,
	28,
	0,
	0,
	0,
	0,
	406,
	408);
INSERT INTO V_LEN
	VALUES (417,
	424,
	12,
	13);
INSERT INTO V_VAL
	VALUES (425,
	0,
	0,
	13,
	16,
	19,
	0,
	0,
	0,
	0,
	70,
	408);
INSERT INTO V_IRF
	VALUES (425,
	413);
INSERT INTO V_VAL
	VALUES (426,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	408);
INSERT INTO V_UNY
	VALUES (426,
	425,
	'empty');
INSERT INTO V_VAL
	VALUES (421,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	408);
INSERT INTO V_UNY
	VALUES (421,
	426,
	'not');
INSERT INTO V_VAL
	VALUES (422,
	0,
	0,
	23,
	9,
	17,
	0,
	0,
	0,
	0,
	406,
	408);
INSERT INTO V_TVL
	VALUES (422,
	423);
INSERT INTO V_VAR
	VALUES (411,
	408,
	'session',
	1,
	70);
INSERT INTO V_INT
	VALUES (411,
	0,
	66);
INSERT INTO V_VAR
	VALUES (413,
	408,
	'goal',
	1,
	70);
INSERT INTO V_INT
	VALUES (413,
	0,
	221);
INSERT INTO V_VAR
	VALUES (423,
	408,
	'indicator',
	1,
	406);
INSERT INTO V_TRN
	VALUES (423,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (420,
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
	407,
	0);
INSERT INTO ACT_SMT
	VALUES (427,
	420,
	0,
	14,
	3,
	'Display::goalDispositionIndicator line: 14');
INSERT INTO ACT_IF
	VALUES (427,
	428,
	429,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (430,
	420,
	0,
	16,
	3,
	'Display::goalDispositionIndicator line: 16');
INSERT INTO ACT_EL
	VALUES (430,
	431,
	432,
	427);
INSERT INTO ACT_SMT
	VALUES (433,
	420,
	0,
	18,
	3,
	'Display::goalDispositionIndicator line: 18');
INSERT INTO ACT_E
	VALUES (433,
	434,
	427);
INSERT INTO V_VAL
	VALUES (435,
	0,
	0,
	14,
	8,
	11,
	0,
	0,
	0,
	0,
	70,
	420);
INSERT INTO V_IRF
	VALUES (435,
	413);
INSERT INTO V_VAL
	VALUES (436,
	0,
	0,
	14,
	13,
	23,
	0,
	0,
	0,
	0,
	437,
	420);
INSERT INTO V_AVL
	VALUES (436,
	435,
	221,
	438);
INSERT INTO V_VAL
	VALUES (429,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	420);
INSERT INTO V_BIN
	VALUES (429,
	439,
	436,
	'==');
INSERT INTO V_VAL
	VALUES (439,
	0,
	0,
	14,
	45,
	52,
	0,
	0,
	0,
	0,
	437,
	420);
INSERT INTO V_LEN
	VALUES (439,
	440,
	14,
	28);
INSERT INTO V_VAL
	VALUES (441,
	0,
	0,
	16,
	10,
	13,
	0,
	0,
	0,
	0,
	70,
	420);
INSERT INTO V_IRF
	VALUES (441,
	413);
INSERT INTO V_VAL
	VALUES (442,
	0,
	0,
	16,
	15,
	25,
	0,
	0,
	0,
	0,
	437,
	420);
INSERT INTO V_AVL
	VALUES (442,
	441,
	221,
	438);
INSERT INTO V_VAL
	VALUES (432,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	420);
INSERT INTO V_BIN
	VALUES (432,
	443,
	442,
	'==');
INSERT INTO V_VAL
	VALUES (443,
	0,
	0,
	16,
	47,
	54,
	0,
	0,
	0,
	0,
	437,
	420);
INSERT INTO V_LEN
	VALUES (443,
	444,
	16,
	30);
INSERT INTO ACT_BLK
	VALUES (428,
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
	407,
	0);
INSERT INTO ACT_SMT
	VALUES (445,
	428,
	0,
	15,
	5,
	'Display::goalDispositionIndicator line: 15');
INSERT INTO ACT_AI
	VALUES (445,
	446,
	447,
	0,
	0);
INSERT INTO V_VAL
	VALUES (447,
	1,
	0,
	15,
	5,
	13,
	0,
	0,
	0,
	0,
	406,
	428);
INSERT INTO V_TVL
	VALUES (447,
	423);
INSERT INTO V_VAL
	VALUES (446,
	0,
	0,
	15,
	28,
	29,
	0,
	0,
	0,
	0,
	406,
	428);
INSERT INTO V_LEN
	VALUES (446,
	448,
	15,
	17);
INSERT INTO ACT_BLK
	VALUES (431,
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
	407,
	0);
INSERT INTO ACT_SMT
	VALUES (449,
	431,
	0,
	17,
	5,
	'Display::goalDispositionIndicator line: 17');
INSERT INTO ACT_AI
	VALUES (449,
	450,
	451,
	0,
	0);
INSERT INTO V_VAL
	VALUES (451,
	1,
	0,
	17,
	5,
	13,
	0,
	0,
	0,
	0,
	406,
	431);
INSERT INTO V_TVL
	VALUES (451,
	423);
INSERT INTO V_VAL
	VALUES (450,
	0,
	0,
	17,
	28,
	31,
	0,
	0,
	0,
	0,
	406,
	431);
INSERT INTO V_LEN
	VALUES (450,
	452,
	17,
	17);
INSERT INTO ACT_BLK
	VALUES (434,
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
	407,
	0);
INSERT INTO ACT_SMT
	VALUES (453,
	434,
	0,
	19,
	5,
	'Display::goalDispositionIndicator line: 19');
INSERT INTO ACT_AI
	VALUES (453,
	454,
	455,
	0,
	0);
INSERT INTO V_VAL
	VALUES (455,
	1,
	0,
	19,
	5,
	13,
	0,
	0,
	0,
	0,
	406,
	434);
INSERT INTO V_TVL
	VALUES (455,
	423);
INSERT INTO V_VAL
	VALUES (454,
	0,
	0,
	19,
	28,
	31,
	0,
	0,
	0,
	0,
	406,
	434);
INSERT INTO V_LEN
	VALUES (454,
	456,
	19,
	17);
INSERT INTO O_NBATTR
	VALUES (457,
	114);
INSERT INTO O_BATTR
	VALUES (457,
	114);
INSERT INTO O_ATTR
	VALUES (457,
	114,
	0,
	'current_state',
	'',
	'',
	'current_state',
	0,
	458,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	114);
INSERT INTO O_ID
	VALUES (1,
	114);
INSERT INTO O_ID
	VALUES (2,
	114);
INSERT INTO SM_ISM
	VALUES (459,
	114);
INSERT INTO SM_SM
	VALUES (459,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (459);
INSERT INTO SM_LEVT
	VALUES (115,
	459,
	0);
INSERT INTO SM_SEVT
	VALUES (115,
	459,
	0);
INSERT INTO SM_EVT
	VALUES (115,
	459,
	0,
	1,
	'modeChange',
	0,
	'',
	'Display1',
	'');
INSERT INTO SM_LEVT
	VALUES (460,
	459,
	0);
INSERT INTO SM_SEVT
	VALUES (460,
	459,
	0);
INSERT INTO SM_EVT
	VALUES (460,
	459,
	0,
	2,
	'refresh',
	0,
	'',
	'Display2',
	'');
INSERT INTO SM_STATE
	VALUES (461,
	459,
	0,
	'displayDistance',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (461,
	115,
	459,
	0);
INSERT INTO SM_SEME
	VALUES (461,
	460,
	459,
	0);
INSERT INTO SM_MOAH
	VALUES (462,
	459,
	461);
INSERT INTO SM_AH
	VALUES (462,
	459);
INSERT INTO SM_ACT
	VALUES (462,
	459,
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
	VALUES (463,
	459,
	462);
INSERT INTO ACT_ACT
	VALUES (463,
	'state',
	0,
	464,
	0,
	0,
	'Display::displayDistance',
	0);
INSERT INTO ACT_BLK
	VALUES (464,
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
	463,
	0);
INSERT INTO ACT_SMT
	VALUES (465,
	464,
	466,
	1,
	1,
	'Display::displayDistance line: 1');
INSERT INTO ACT_SEL
	VALUES (465,
	467,
	1,
	'one',
	468);
INSERT INTO ACT_SR
	VALUES (465);
INSERT INTO ACT_LNK
	VALUES (469,
	'''indicates current status of''',
	465,
	113,
	0,
	2,
	66,
	1,
	37,
	1,
	52,
	1,
	55);
INSERT INTO ACT_SMT
	VALUES (466,
	464,
	470,
	2,
	1,
	'Display::displayDistance line: 2');
INSERT INTO ACT_AI
	VALUES (466,
	471,
	472,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (470,
	464,
	473,
	3,
	1,
	'Display::displayDistance line: 3');
INSERT INTO ACT_IF
	VALUES (470,
	474,
	475,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (476,
	464,
	0,
	5,
	1,
	'Display::displayDistance line: 5');
INSERT INTO ACT_E
	VALUES (476,
	477,
	470);
INSERT INTO ACT_SMT
	VALUES (473,
	464,
	0,
	8,
	1,
	'Display::displayDistance line: 8');
INSERT INTO ACT_IOP
	VALUES (473,
	8,
	10,
	8,
	6,
	0,
	33,
	0);
INSERT INTO V_VAL
	VALUES (468,
	0,
	0,
	1,
	31,
	34,
	0,
	0,
	0,
	0,
	70,
	464);
INSERT INTO V_IRF
	VALUES (468,
	478);
INSERT INTO V_VAL
	VALUES (472,
	1,
	1,
	2,
	1,
	8,
	0,
	0,
	0,
	0,
	170,
	464);
INSERT INTO V_TVL
	VALUES (472,
	479);
INSERT INTO V_VAL
	VALUES (480,
	0,
	0,
	2,
	12,
	18,
	0,
	0,
	0,
	0,
	70,
	464);
INSERT INTO V_IRF
	VALUES (480,
	467);
INSERT INTO V_VAL
	VALUES (471,
	0,
	0,
	2,
	20,
	38,
	0,
	0,
	0,
	0,
	170,
	464);
INSERT INTO V_AVL
	VALUES (471,
	480,
	66,
	481);
INSERT INTO V_VAL
	VALUES (482,
	0,
	0,
	3,
	6,
	13,
	0,
	0,
	0,
	0,
	170,
	464);
INSERT INTO V_TVL
	VALUES (482,
	479);
INSERT INTO V_VAL
	VALUES (475,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	464);
INSERT INTO V_BIN
	VALUES (475,
	483,
	482,
	'>');
INSERT INTO V_VAL
	VALUES (483,
	0,
	0,
	3,
	17,
	22,
	0,
	0,
	0,
	0,
	170,
	464);
INSERT INTO V_LRL
	VALUES (483,
	'1000.0');
INSERT INTO V_VAL
	VALUES (484,
	0,
	0,
	8,
	44,
	-1,
	0,
	0,
	0,
	0,
	406,
	464);
INSERT INTO V_TRV
	VALUES (484,
	405,
	0,
	1,
	8,
	35);
INSERT INTO V_PAR
	VALUES (484,
	473,
	0,
	'indicator',
	0,
	8,
	24);
INSERT INTO V_VAR
	VALUES (467,
	464,
	'session',
	1,
	70);
INSERT INTO V_INT
	VALUES (467,
	0,
	66);
INSERT INTO V_VAR
	VALUES (478,
	464,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (478,
	0,
	114);
INSERT INTO V_VAR
	VALUES (479,
	464,
	'distance',
	1,
	170);
INSERT INTO V_TRN
	VALUES (479,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (474,
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
	463,
	0);
INSERT INTO ACT_SMT
	VALUES (485,
	474,
	0,
	4,
	3,
	'Display::displayDistance line: 4');
INSERT INTO ACT_IOP
	VALUES (485,
	4,
	12,
	4,
	8,
	0,
	29,
	0);
INSERT INTO V_VAL
	VALUES (486,
	0,
	0,
	4,
	27,
	34,
	0,
	0,
	0,
	0,
	170,
	474);
INSERT INTO V_TVL
	VALUES (486,
	479);
INSERT INTO V_VAL
	VALUES (487,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	170,
	474);
INSERT INTO V_BIN
	VALUES (487,
	488,
	486,
	'/');
INSERT INTO V_PAR
	VALUES (487,
	485,
	0,
	'value',
	489,
	4,
	20);
INSERT INTO V_VAL
	VALUES (488,
	0,
	0,
	4,
	38,
	43,
	0,
	0,
	0,
	0,
	170,
	474);
INSERT INTO V_LRL
	VALUES (488,
	'1000.0');
INSERT INTO V_VAL
	VALUES (489,
	0,
	0,
	4,
	58,
	59,
	0,
	0,
	0,
	0,
	490,
	474);
INSERT INTO V_LEN
	VALUES (489,
	491,
	4,
	52);
INSERT INTO V_PAR
	VALUES (489,
	485,
	0,
	'unit',
	0,
	4,
	46);
INSERT INTO ACT_BLK
	VALUES (477,
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
	463,
	0);
INSERT INTO ACT_SMT
	VALUES (492,
	477,
	0,
	6,
	3,
	'Display::displayDistance line: 6');
INSERT INTO ACT_IOP
	VALUES (492,
	6,
	12,
	6,
	8,
	0,
	29,
	0);
INSERT INTO V_VAL
	VALUES (493,
	0,
	0,
	6,
	27,
	34,
	0,
	0,
	0,
	0,
	170,
	477);
INSERT INTO V_TVL
	VALUES (493,
	479);
INSERT INTO V_PAR
	VALUES (493,
	492,
	0,
	'value',
	494,
	6,
	20);
INSERT INTO V_VAL
	VALUES (494,
	0,
	0,
	6,
	49,
	54,
	0,
	0,
	0,
	0,
	490,
	477);
INSERT INTO V_LEN
	VALUES (494,
	495,
	6,
	43);
INSERT INTO V_PAR
	VALUES (494,
	492,
	0,
	'unit',
	0,
	6,
	37);
INSERT INTO SM_STATE
	VALUES (496,
	459,
	0,
	'displaySpeed',
	2,
	0);
INSERT INTO SM_SEME
	VALUES (496,
	115,
	459,
	0);
INSERT INTO SM_SEME
	VALUES (496,
	460,
	459,
	0);
INSERT INTO SM_MOAH
	VALUES (497,
	459,
	496);
INSERT INTO SM_AH
	VALUES (497,
	459);
INSERT INTO SM_ACT
	VALUES (497,
	459,
	1,
	'select one session 
  related by self->WorkoutSession[R7.''indicates current status of''];
speed = session.currentSpeed;
send UI::setData(value: speed, unit: Unit::kmPerHour);
send UI::setIndicator( indicator: Display::goalDispositionIndicator() );',
	'');
INSERT INTO ACT_SAB
	VALUES (498,
	459,
	497);
INSERT INTO ACT_ACT
	VALUES (498,
	'state',
	0,
	499,
	0,
	0,
	'Display::displaySpeed',
	0);
INSERT INTO ACT_BLK
	VALUES (499,
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
	498,
	0);
INSERT INTO ACT_SMT
	VALUES (500,
	499,
	501,
	1,
	1,
	'Display::displaySpeed line: 1');
INSERT INTO ACT_SEL
	VALUES (500,
	502,
	1,
	'one',
	503);
INSERT INTO ACT_SR
	VALUES (500);
INSERT INTO ACT_LNK
	VALUES (504,
	'''indicates current status of''',
	500,
	113,
	0,
	2,
	66,
	2,
	20,
	2,
	35,
	2,
	38);
INSERT INTO ACT_SMT
	VALUES (501,
	499,
	505,
	3,
	1,
	'Display::displaySpeed line: 3');
INSERT INTO ACT_AI
	VALUES (501,
	506,
	507,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (505,
	499,
	508,
	4,
	1,
	'Display::displaySpeed line: 4');
INSERT INTO ACT_IOP
	VALUES (505,
	4,
	10,
	4,
	6,
	0,
	29,
	0);
INSERT INTO ACT_SMT
	VALUES (508,
	499,
	0,
	5,
	1,
	'Display::displaySpeed line: 5');
INSERT INTO ACT_IOP
	VALUES (508,
	5,
	10,
	5,
	6,
	0,
	33,
	0);
INSERT INTO V_VAL
	VALUES (503,
	0,
	0,
	2,
	14,
	17,
	0,
	0,
	0,
	0,
	70,
	499);
INSERT INTO V_IRF
	VALUES (503,
	509);
INSERT INTO V_VAL
	VALUES (507,
	1,
	1,
	3,
	1,
	5,
	0,
	0,
	0,
	0,
	170,
	499);
INSERT INTO V_TVL
	VALUES (507,
	510);
INSERT INTO V_VAL
	VALUES (511,
	0,
	0,
	3,
	9,
	15,
	0,
	0,
	0,
	0,
	70,
	499);
INSERT INTO V_IRF
	VALUES (511,
	502);
INSERT INTO V_VAL
	VALUES (506,
	0,
	0,
	3,
	17,
	28,
	0,
	0,
	0,
	0,
	170,
	499);
INSERT INTO V_AVL
	VALUES (506,
	511,
	66,
	512);
INSERT INTO V_VAL
	VALUES (513,
	0,
	0,
	4,
	25,
	29,
	0,
	0,
	0,
	0,
	170,
	499);
INSERT INTO V_TVL
	VALUES (513,
	510);
INSERT INTO V_PAR
	VALUES (513,
	505,
	0,
	'value',
	514,
	4,
	18);
INSERT INTO V_VAL
	VALUES (514,
	0,
	0,
	4,
	44,
	52,
	0,
	0,
	0,
	0,
	490,
	499);
INSERT INTO V_LEN
	VALUES (514,
	515,
	4,
	38);
INSERT INTO V_PAR
	VALUES (514,
	505,
	0,
	'unit',
	0,
	4,
	32);
INSERT INTO V_VAL
	VALUES (516,
	0,
	0,
	5,
	44,
	-1,
	0,
	0,
	0,
	0,
	406,
	499);
INSERT INTO V_TRV
	VALUES (516,
	405,
	0,
	1,
	5,
	35);
INSERT INTO V_PAR
	VALUES (516,
	508,
	0,
	'indicator',
	0,
	5,
	24);
INSERT INTO V_VAR
	VALUES (502,
	499,
	'session',
	1,
	70);
INSERT INTO V_INT
	VALUES (502,
	0,
	66);
INSERT INTO V_VAR
	VALUES (509,
	499,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (509,
	0,
	114);
INSERT INTO V_VAR
	VALUES (510,
	499,
	'speed',
	1,
	170);
INSERT INTO V_TRN
	VALUES (510,
	0,
	'');
INSERT INTO SM_STATE
	VALUES (517,
	459,
	0,
	'displayPace',
	3,
	0);
INSERT INTO SM_SEME
	VALUES (517,
	115,
	459,
	0);
INSERT INTO SM_SEME
	VALUES (517,
	460,
	459,
	0);
INSERT INTO SM_MOAH
	VALUES (518,
	459,
	517);
INSERT INTO SM_AH
	VALUES (518,
	459);
INSERT INTO SM_ACT
	VALUES (518,
	459,
	1,
	'select one session 
  related by self->WorkoutSession[R7.''indicates current status of''];
pace = session.currentPace;
send UI::setData(value: pace, unit: Unit::minPerKm);
send UI::setIndicator( indicator: Display::goalDispositionIndicator() );',
	'');
INSERT INTO ACT_SAB
	VALUES (519,
	459,
	518);
INSERT INTO ACT_ACT
	VALUES (519,
	'state',
	0,
	520,
	0,
	0,
	'Display::displayPace',
	0);
INSERT INTO ACT_BLK
	VALUES (520,
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
	519,
	0);
INSERT INTO ACT_SMT
	VALUES (521,
	520,
	522,
	1,
	1,
	'Display::displayPace line: 1');
INSERT INTO ACT_SEL
	VALUES (521,
	523,
	1,
	'one',
	524);
INSERT INTO ACT_SR
	VALUES (521);
INSERT INTO ACT_LNK
	VALUES (525,
	'''indicates current status of''',
	521,
	113,
	0,
	2,
	66,
	2,
	20,
	2,
	35,
	2,
	38);
INSERT INTO ACT_SMT
	VALUES (522,
	520,
	526,
	3,
	1,
	'Display::displayPace line: 3');
INSERT INTO ACT_AI
	VALUES (522,
	527,
	528,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (526,
	520,
	529,
	4,
	1,
	'Display::displayPace line: 4');
INSERT INTO ACT_IOP
	VALUES (526,
	4,
	10,
	4,
	6,
	0,
	29,
	0);
INSERT INTO ACT_SMT
	VALUES (529,
	520,
	0,
	5,
	1,
	'Display::displayPace line: 5');
INSERT INTO ACT_IOP
	VALUES (529,
	5,
	10,
	5,
	6,
	0,
	33,
	0);
INSERT INTO V_VAL
	VALUES (524,
	0,
	0,
	2,
	14,
	17,
	0,
	0,
	0,
	0,
	70,
	520);
INSERT INTO V_IRF
	VALUES (524,
	530);
INSERT INTO V_VAL
	VALUES (528,
	1,
	1,
	3,
	1,
	4,
	0,
	0,
	0,
	0,
	170,
	520);
INSERT INTO V_TVL
	VALUES (528,
	531);
INSERT INTO V_VAL
	VALUES (532,
	0,
	0,
	3,
	8,
	14,
	0,
	0,
	0,
	0,
	70,
	520);
INSERT INTO V_IRF
	VALUES (532,
	523);
INSERT INTO V_VAL
	VALUES (527,
	0,
	0,
	3,
	16,
	26,
	0,
	0,
	0,
	0,
	170,
	520);
INSERT INTO V_AVL
	VALUES (527,
	532,
	66,
	533);
INSERT INTO V_VAL
	VALUES (534,
	0,
	0,
	4,
	25,
	28,
	0,
	0,
	0,
	0,
	170,
	520);
INSERT INTO V_TVL
	VALUES (534,
	531);
INSERT INTO V_PAR
	VALUES (534,
	526,
	0,
	'value',
	535,
	4,
	18);
INSERT INTO V_VAL
	VALUES (535,
	0,
	0,
	4,
	43,
	50,
	0,
	0,
	0,
	0,
	490,
	520);
INSERT INTO V_LEN
	VALUES (535,
	536,
	4,
	37);
INSERT INTO V_PAR
	VALUES (535,
	526,
	0,
	'unit',
	0,
	4,
	31);
INSERT INTO V_VAL
	VALUES (537,
	0,
	0,
	5,
	44,
	-1,
	0,
	0,
	0,
	0,
	406,
	520);
INSERT INTO V_TRV
	VALUES (537,
	405,
	0,
	1,
	5,
	35);
INSERT INTO V_PAR
	VALUES (537,
	529,
	0,
	'indicator',
	0,
	5,
	24);
INSERT INTO V_VAR
	VALUES (523,
	520,
	'session',
	1,
	70);
INSERT INTO V_INT
	VALUES (523,
	0,
	66);
INSERT INTO V_VAR
	VALUES (530,
	520,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (530,
	0,
	114);
INSERT INTO V_VAR
	VALUES (531,
	520,
	'pace',
	1,
	170);
INSERT INTO V_TRN
	VALUES (531,
	0,
	'');
INSERT INTO SM_STATE
	VALUES (538,
	459,
	0,
	'displayHeartRate',
	4,
	0);
INSERT INTO SM_SEME
	VALUES (538,
	115,
	459,
	0);
INSERT INTO SM_SEME
	VALUES (538,
	460,
	459,
	0);
INSERT INTO SM_MOAH
	VALUES (539,
	459,
	538);
INSERT INTO SM_AH
	VALUES (539,
	459);
INSERT INTO SM_ACT
	VALUES (539,
	459,
	1,
	'select one session 
  related by self->WorkoutSession[R7.''indicates current status of''];
heartRate = session.currentHeartRate;
send UI::setData(value: heartRate, unit: Unit::bpm);
send UI::setIndicator( indicator: Display::goalDispositionIndicator() );
',
	'');
INSERT INTO ACT_SAB
	VALUES (540,
	459,
	539);
INSERT INTO ACT_ACT
	VALUES (540,
	'state',
	0,
	541,
	0,
	0,
	'Display::displayHeartRate',
	0);
INSERT INTO ACT_BLK
	VALUES (541,
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
	540,
	0);
INSERT INTO ACT_SMT
	VALUES (542,
	541,
	543,
	1,
	1,
	'Display::displayHeartRate line: 1');
INSERT INTO ACT_SEL
	VALUES (542,
	544,
	1,
	'one',
	545);
INSERT INTO ACT_SR
	VALUES (542);
INSERT INTO ACT_LNK
	VALUES (546,
	'''indicates current status of''',
	542,
	113,
	0,
	2,
	66,
	2,
	20,
	2,
	35,
	2,
	38);
INSERT INTO ACT_SMT
	VALUES (543,
	541,
	547,
	3,
	1,
	'Display::displayHeartRate line: 3');
INSERT INTO ACT_AI
	VALUES (543,
	548,
	549,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (547,
	541,
	550,
	4,
	1,
	'Display::displayHeartRate line: 4');
INSERT INTO ACT_IOP
	VALUES (547,
	4,
	10,
	4,
	6,
	0,
	29,
	0);
INSERT INTO ACT_SMT
	VALUES (550,
	541,
	0,
	5,
	1,
	'Display::displayHeartRate line: 5');
INSERT INTO ACT_IOP
	VALUES (550,
	5,
	10,
	5,
	6,
	0,
	33,
	0);
INSERT INTO V_VAL
	VALUES (545,
	0,
	0,
	2,
	14,
	17,
	0,
	0,
	0,
	0,
	70,
	541);
INSERT INTO V_IRF
	VALUES (545,
	551);
INSERT INTO V_VAL
	VALUES (549,
	1,
	1,
	3,
	1,
	9,
	0,
	0,
	0,
	0,
	13,
	541);
INSERT INTO V_TVL
	VALUES (549,
	552);
INSERT INTO V_VAL
	VALUES (553,
	0,
	0,
	3,
	13,
	19,
	0,
	0,
	0,
	0,
	70,
	541);
INSERT INTO V_IRF
	VALUES (553,
	544);
INSERT INTO V_VAL
	VALUES (548,
	0,
	0,
	3,
	21,
	36,
	0,
	0,
	0,
	0,
	13,
	541);
INSERT INTO V_AVL
	VALUES (548,
	553,
	66,
	554);
INSERT INTO V_VAL
	VALUES (555,
	0,
	0,
	4,
	25,
	33,
	0,
	0,
	0,
	0,
	13,
	541);
INSERT INTO V_TVL
	VALUES (555,
	552);
INSERT INTO V_PAR
	VALUES (555,
	547,
	0,
	'value',
	556,
	4,
	18);
INSERT INTO V_VAL
	VALUES (556,
	0,
	0,
	4,
	48,
	50,
	0,
	0,
	0,
	0,
	490,
	541);
INSERT INTO V_LEN
	VALUES (556,
	557,
	4,
	42);
INSERT INTO V_PAR
	VALUES (556,
	547,
	0,
	'unit',
	0,
	4,
	36);
INSERT INTO V_VAL
	VALUES (558,
	0,
	0,
	5,
	44,
	-1,
	0,
	0,
	0,
	0,
	406,
	541);
INSERT INTO V_TRV
	VALUES (558,
	405,
	0,
	1,
	5,
	35);
INSERT INTO V_PAR
	VALUES (558,
	550,
	0,
	'indicator',
	0,
	5,
	24);
INSERT INTO V_VAR
	VALUES (544,
	541,
	'session',
	1,
	70);
INSERT INTO V_INT
	VALUES (544,
	0,
	66);
INSERT INTO V_VAR
	VALUES (551,
	541,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (551,
	0,
	114);
INSERT INTO V_VAR
	VALUES (552,
	541,
	'heartRate',
	1,
	13);
INSERT INTO V_TRN
	VALUES (552,
	0,
	'');
INSERT INTO SM_STATE
	VALUES (559,
	459,
	0,
	'displayLapCount',
	5,
	0);
INSERT INTO SM_SEME
	VALUES (559,
	115,
	459,
	0);
INSERT INTO SM_SEME
	VALUES (559,
	460,
	459,
	0);
INSERT INTO SM_MOAH
	VALUES (560,
	459,
	559);
INSERT INTO SM_AH
	VALUES (560,
	459);
INSERT INTO SM_ACT
	VALUES (560,
	459,
	1,
	'select many lapMarkers related by
  self->WorkoutSession[R7.''indicates current status of'']->
  TrackLog[R4.''captures path in'']->LapMarker[R5.''has laps defined by''];
send UI::setData(value: cardinality lapMarkers, unit: Unit::laps);
send UI::setIndicator( indicator: Display::goalDispositionIndicator() );
',
	'');
INSERT INTO ACT_SAB
	VALUES (561,
	459,
	560);
INSERT INTO ACT_ACT
	VALUES (561,
	'state',
	0,
	562,
	0,
	0,
	'Display::displayLapCount',
	0);
INSERT INTO ACT_BLK
	VALUES (562,
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
	561,
	0);
INSERT INTO ACT_SMT
	VALUES (563,
	562,
	564,
	1,
	1,
	'Display::displayLapCount line: 1');
INSERT INTO ACT_SEL
	VALUES (563,
	565,
	1,
	'many',
	566);
INSERT INTO ACT_SR
	VALUES (563);
INSERT INTO ACT_LNK
	VALUES (567,
	'''indicates current status of''',
	563,
	113,
	568,
	2,
	66,
	2,
	9,
	2,
	24,
	2,
	27);
INSERT INTO ACT_LNK
	VALUES (568,
	'''captures path in''',
	0,
	212,
	569,
	2,
	193,
	3,
	3,
	3,
	12,
	3,
	15);
INSERT INTO ACT_LNK
	VALUES (569,
	'''has laps defined by''',
	0,
	203,
	0,
	3,
	204,
	3,
	36,
	3,
	46,
	3,
	49);
INSERT INTO ACT_SMT
	VALUES (564,
	562,
	570,
	4,
	1,
	'Display::displayLapCount line: 4');
INSERT INTO ACT_IOP
	VALUES (564,
	4,
	10,
	4,
	6,
	0,
	29,
	0);
INSERT INTO ACT_SMT
	VALUES (570,
	562,
	0,
	5,
	1,
	'Display::displayLapCount line: 5');
INSERT INTO ACT_IOP
	VALUES (570,
	5,
	10,
	5,
	6,
	0,
	33,
	0);
INSERT INTO V_VAL
	VALUES (566,
	0,
	0,
	2,
	3,
	6,
	0,
	0,
	0,
	0,
	70,
	562);
INSERT INTO V_IRF
	VALUES (566,
	571);
INSERT INTO V_VAL
	VALUES (572,
	0,
	0,
	4,
	37,
	46,
	0,
	0,
	0,
	0,
	573,
	562);
INSERT INTO V_ISR
	VALUES (572,
	565);
INSERT INTO V_VAL
	VALUES (574,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	13,
	562);
INSERT INTO V_UNY
	VALUES (574,
	572,
	'cardinality');
INSERT INTO V_PAR
	VALUES (574,
	564,
	0,
	'value',
	575,
	4,
	18);
INSERT INTO V_VAL
	VALUES (575,
	0,
	0,
	4,
	61,
	64,
	0,
	0,
	0,
	0,
	490,
	562);
INSERT INTO V_LEN
	VALUES (575,
	576,
	4,
	55);
INSERT INTO V_PAR
	VALUES (575,
	564,
	0,
	'unit',
	0,
	4,
	49);
INSERT INTO V_VAL
	VALUES (577,
	0,
	0,
	5,
	44,
	-1,
	0,
	0,
	0,
	0,
	406,
	562);
INSERT INTO V_TRV
	VALUES (577,
	405,
	0,
	1,
	5,
	35);
INSERT INTO V_PAR
	VALUES (577,
	570,
	0,
	'indicator',
	0,
	5,
	24);
INSERT INTO V_VAR
	VALUES (565,
	562,
	'lapMarkers',
	1,
	573);
INSERT INTO V_INS
	VALUES (565,
	204);
INSERT INTO V_VAR
	VALUES (571,
	562,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (571,
	0,
	114);
INSERT INTO SM_NSTXN
	VALUES (578,
	459,
	461,
	115,
	0);
INSERT INTO SM_TAH
	VALUES (579,
	459,
	578);
INSERT INTO SM_AH
	VALUES (579,
	459);
INSERT INTO SM_ACT
	VALUES (579,
	459,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (580,
	459,
	579);
INSERT INTO ACT_ACT
	VALUES (580,
	'transition',
	0,
	581,
	0,
	0,
	'Display1: modeChange',
	0);
INSERT INTO ACT_BLK
	VALUES (581,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	580,
	0);
INSERT INTO SM_TXN
	VALUES (578,
	459,
	496,
	0);
INSERT INTO SM_NSTXN
	VALUES (582,
	459,
	496,
	115,
	0);
INSERT INTO SM_TAH
	VALUES (583,
	459,
	582);
INSERT INTO SM_AH
	VALUES (583,
	459);
INSERT INTO SM_ACT
	VALUES (583,
	459,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (584,
	459,
	583);
INSERT INTO ACT_ACT
	VALUES (584,
	'transition',
	0,
	585,
	0,
	0,
	'Display1: modeChange',
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
INSERT INTO SM_TXN
	VALUES (582,
	459,
	517,
	0);
INSERT INTO SM_NSTXN
	VALUES (586,
	459,
	517,
	115,
	0);
INSERT INTO SM_TAH
	VALUES (587,
	459,
	586);
INSERT INTO SM_AH
	VALUES (587,
	459);
INSERT INTO SM_ACT
	VALUES (587,
	459,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (588,
	459,
	587);
INSERT INTO ACT_ACT
	VALUES (588,
	'transition',
	0,
	589,
	0,
	0,
	'Display1: modeChange',
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
INSERT INTO SM_TXN
	VALUES (586,
	459,
	538,
	0);
INSERT INTO SM_NSTXN
	VALUES (590,
	459,
	538,
	115,
	0);
INSERT INTO SM_TAH
	VALUES (591,
	459,
	590);
INSERT INTO SM_AH
	VALUES (591,
	459);
INSERT INTO SM_ACT
	VALUES (591,
	459,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (592,
	459,
	591);
INSERT INTO ACT_ACT
	VALUES (592,
	'transition',
	0,
	593,
	0,
	0,
	'Display1: modeChange',
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
INSERT INTO SM_TXN
	VALUES (590,
	459,
	559,
	0);
INSERT INTO SM_NSTXN
	VALUES (594,
	459,
	461,
	460,
	0);
INSERT INTO SM_TAH
	VALUES (595,
	459,
	594);
INSERT INTO SM_AH
	VALUES (595,
	459);
INSERT INTO SM_ACT
	VALUES (595,
	459,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (596,
	459,
	595);
INSERT INTO ACT_ACT
	VALUES (596,
	'transition',
	0,
	597,
	0,
	0,
	'Display2: refresh',
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
INSERT INTO SM_TXN
	VALUES (594,
	459,
	461,
	0);
INSERT INTO SM_NSTXN
	VALUES (598,
	459,
	496,
	460,
	0);
INSERT INTO SM_TAH
	VALUES (599,
	459,
	598);
INSERT INTO SM_AH
	VALUES (599,
	459);
INSERT INTO SM_ACT
	VALUES (599,
	459,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (600,
	459,
	599);
INSERT INTO ACT_ACT
	VALUES (600,
	'transition',
	0,
	601,
	0,
	0,
	'Display2: refresh',
	0);
INSERT INTO ACT_BLK
	VALUES (601,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	600,
	0);
INSERT INTO SM_TXN
	VALUES (598,
	459,
	496,
	0);
INSERT INTO SM_NSTXN
	VALUES (602,
	459,
	538,
	460,
	0);
INSERT INTO SM_TAH
	VALUES (603,
	459,
	602);
INSERT INTO SM_AH
	VALUES (603,
	459);
INSERT INTO SM_ACT
	VALUES (603,
	459,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (604,
	459,
	603);
INSERT INTO ACT_ACT
	VALUES (604,
	'transition',
	0,
	605,
	0,
	0,
	'Display2: refresh',
	0);
INSERT INTO ACT_BLK
	VALUES (605,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	604,
	0);
INSERT INTO SM_TXN
	VALUES (602,
	459,
	538,
	0);
INSERT INTO SM_NSTXN
	VALUES (606,
	459,
	559,
	460,
	0);
INSERT INTO SM_TAH
	VALUES (607,
	459,
	606);
INSERT INTO SM_AH
	VALUES (607,
	459);
INSERT INTO SM_ACT
	VALUES (607,
	459,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (608,
	459,
	607);
INSERT INTO ACT_ACT
	VALUES (608,
	'transition',
	0,
	609,
	0,
	0,
	'Display2: refresh',
	0);
INSERT INTO ACT_BLK
	VALUES (609,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	608,
	0);
INSERT INTO SM_TXN
	VALUES (606,
	459,
	559,
	0);
INSERT INTO SM_NSTXN
	VALUES (610,
	459,
	517,
	460,
	0);
INSERT INTO SM_TAH
	VALUES (611,
	459,
	610);
INSERT INTO SM_AH
	VALUES (611,
	459);
INSERT INTO SM_ACT
	VALUES (611,
	459,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (612,
	459,
	611);
INSERT INTO ACT_ACT
	VALUES (612,
	'transition',
	0,
	613,
	0,
	0,
	'Display2: refresh',
	0);
INSERT INTO ACT_BLK
	VALUES (613,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	612,
	0);
INSERT INTO SM_TXN
	VALUES (610,
	459,
	517,
	0);
INSERT INTO SM_NSTXN
	VALUES (614,
	459,
	559,
	115,
	0);
INSERT INTO SM_TAH
	VALUES (615,
	459,
	614);
INSERT INTO SM_AH
	VALUES (615,
	459);
INSERT INTO SM_ACT
	VALUES (615,
	459,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (616,
	459,
	615);
INSERT INTO ACT_ACT
	VALUES (616,
	'transition',
	0,
	617,
	0,
	0,
	'Display1: modeChange',
	0);
INSERT INTO ACT_BLK
	VALUES (617,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	616,
	0);
INSERT INTO SM_TXN
	VALUES (614,
	459,
	461,
	0);
INSERT INTO PE_PE
	VALUES (221,
	1,
	191,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (221,
	'Goal',
	9,
	'Goal',
	'Each instance represents a particular goal as it is executing.
This class knows how to evaluate whether the goal is being achieved 
and whether the goal has completed.',
	0);
INSERT INTO O_TFR
	VALUES (618,
	221,
	'create',
	'',
	240,
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
	VALUES (619,
	618,
	'sequenceNumber',
	13,
	0,
	'',
	0,
	'Sequence number of the goal specification for which an instance of a goal should be created.');
INSERT INTO ACT_OPB
	VALUES (620,
	618);
INSERT INTO ACT_ACT
	VALUES (620,
	'class operation',
	0,
	621,
	0,
	0,
	'Goal::create',
	0);
INSERT INTO ACT_BLK
	VALUES (621,
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
	620,
	0);
INSERT INTO ACT_SMT
	VALUES (622,
	621,
	623,
	8,
	1,
	'Goal::create line: 8');
INSERT INTO ACT_FIW
	VALUES (622,
	624,
	1,
	'any',
	625,
	146,
	8,
	39);
INSERT INTO ACT_SMT
	VALUES (623,
	621,
	0,
	10,
	1,
	'Goal::create line: 10');
INSERT INTO ACT_IF
	VALUES (623,
	626,
	627,
	0,
	0);
INSERT INTO V_VAL
	VALUES (628,
	0,
	0,
	9,
	11,
	-1,
	0,
	0,
	0,
	0,
	70,
	621);
INSERT INTO V_SLR
	VALUES (628,
	0,
	0,
	0);
INSERT INTO V_VAL
	VALUES (629,
	0,
	0,
	9,
	20,
	33,
	0,
	0,
	0,
	0,
	13,
	621);
INSERT INTO V_AVL
	VALUES (629,
	628,
	146,
	167);
INSERT INTO V_VAL
	VALUES (625,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	621);
INSERT INTO V_BIN
	VALUES (625,
	630,
	629,
	'==');
INSERT INTO V_VAL
	VALUES (630,
	0,
	0,
	9,
	44,
	57,
	0,
	0,
	0,
	0,
	13,
	621);
INSERT INTO V_PVL
	VALUES (630,
	0,
	0,
	619,
	0);
INSERT INTO V_VAL
	VALUES (631,
	0,
	0,
	10,
	16,
	23,
	0,
	0,
	0,
	0,
	70,
	621);
INSERT INTO V_IRF
	VALUES (631,
	624);
INSERT INTO V_VAL
	VALUES (632,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	621);
INSERT INTO V_UNY
	VALUES (632,
	631,
	'empty');
INSERT INTO V_VAL
	VALUES (627,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	621);
INSERT INTO V_UNY
	VALUES (627,
	632,
	'not');
INSERT INTO V_VAR
	VALUES (624,
	621,
	'goalSpec',
	1,
	70);
INSERT INTO V_INT
	VALUES (624,
	0,
	146);
INSERT INTO ACT_BLK
	VALUES (626,
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
	620,
	0);
INSERT INTO ACT_SMT
	VALUES (633,
	626,
	634,
	11,
	3,
	'Goal::create line: 11');
INSERT INTO ACT_CR
	VALUES (633,
	635,
	1,
	221,
	11,
	34);
INSERT INTO ACT_SMT
	VALUES (634,
	626,
	636,
	12,
	3,
	'Goal::create line: 12');
INSERT INTO ACT_REL
	VALUES (634,
	635,
	624,
	'''specified by''',
	219,
	12,
	34,
	12,
	37);
INSERT INTO ACT_SMT
	VALUES (636,
	626,
	637,
	13,
	3,
	'Goal::create line: 13');
INSERT INTO ACT_FIO
	VALUES (636,
	638,
	1,
	'any',
	66,
	13,
	40);
INSERT INTO ACT_SMT
	VALUES (637,
	626,
	639,
	14,
	3,
	'Goal::create line: 14');
INSERT INTO ACT_REL
	VALUES (637,
	635,
	638,
	'''is currently executing within''',
	225,
	14,
	33,
	14,
	37);
INSERT INTO ACT_SMT
	VALUES (639,
	626,
	640,
	17,
	3,
	'Goal::create line: 17');
INSERT INTO ACT_TFM
	VALUES (639,
	641,
	635,
	17,
	8,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (640,
	626,
	642,
	18,
	3,
	'Goal::create line: 18');
INSERT INTO ACT_AI
	VALUES (640,
	643,
	644,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (642,
	626,
	645,
	21,
	3,
	'Goal::create line: 21');
INSERT INTO E_ESS
	VALUES (642,
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
	VALUES (642,
	1,
	646);
INSERT INTO E_CSME
	VALUES (642,
	647);
INSERT INTO E_CEI
	VALUES (642,
	635);
INSERT INTO ACT_SMT
	VALUES (645,
	626,
	0,
	22,
	3,
	'Goal::create line: 22');
INSERT INTO ACT_AI
	VALUES (645,
	648,
	649,
	0,
	0);
INSERT INTO V_VAL
	VALUES (650,
	1,
	0,
	18,
	3,
	6,
	0,
	0,
	0,
	0,
	70,
	626);
INSERT INTO V_IRF
	VALUES (650,
	635);
INSERT INTO V_VAL
	VALUES (644,
	1,
	0,
	18,
	8,
	18,
	0,
	0,
	0,
	0,
	437,
	626);
INSERT INTO V_AVL
	VALUES (644,
	650,
	221,
	438);
INSERT INTO V_VAL
	VALUES (643,
	0,
	0,
	18,
	39,
	46,
	0,
	0,
	0,
	0,
	437,
	626);
INSERT INTO V_LEN
	VALUES (643,
	440,
	18,
	22);
INSERT INTO V_VAL
	VALUES (651,
	1,
	0,
	22,
	3,
	6,
	0,
	0,
	0,
	0,
	70,
	626);
INSERT INTO V_IRF
	VALUES (651,
	635);
INSERT INTO V_VAL
	VALUES (649,
	1,
	0,
	22,
	8,
	22,
	0,
	0,
	0,
	0,
	313,
	626);
INSERT INTO V_AVL
	VALUES (649,
	651,
	221,
	652);
INSERT INTO V_VAL
	VALUES (648,
	0,
	0,
	22,
	31,
	-1,
	22,
	54,
	22,
	81,
	313,
	626);
INSERT INTO V_BRV
	VALUES (648,
	319,
	1,
	22,
	26);
INSERT INTO V_VAL
	VALUES (653,
	0,
	0,
	22,
	66,
	78,
	0,
	0,
	0,
	0,
	316,
	626);
INSERT INTO V_TVL
	VALUES (653,
	646);
INSERT INTO V_PAR
	VALUES (653,
	0,
	648,
	'event_inst',
	654,
	22,
	54);
INSERT INTO V_VAL
	VALUES (654,
	0,
	0,
	22,
	95,
	110,
	0,
	0,
	0,
	0,
	13,
	626);
INSERT INTO V_SCV
	VALUES (654,
	655,
	13);
INSERT INTO V_PAR
	VALUES (654,
	0,
	648,
	'microseconds',
	0,
	22,
	81);
INSERT INTO V_VAR
	VALUES (635,
	626,
	'goal',
	1,
	70);
INSERT INTO V_INT
	VALUES (635,
	0,
	221);
INSERT INTO V_VAR
	VALUES (638,
	626,
	'session',
	1,
	70);
INSERT INTO V_INT
	VALUES (638,
	0,
	66);
INSERT INTO V_VAR
	VALUES (646,
	626,
	'evaluateEvent',
	1,
	316);
INSERT INTO V_TRN
	VALUES (646,
	0,
	'');
INSERT INTO O_TFR
	VALUES (641,
	221,
	'calculateStart',
	'',
	240,
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
	618);
INSERT INTO ACT_OPB
	VALUES (656,
	641);
INSERT INTO ACT_ACT
	VALUES (656,
	'operation',
	0,
	657,
	0,
	0,
	'Goal::calculateStart',
	0);
INSERT INTO ACT_BLK
	VALUES (657,
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
	656,
	0);
INSERT INTO ACT_SMT
	VALUES (658,
	657,
	659,
	3,
	1,
	'Goal::calculateStart line: 3');
INSERT INTO ACT_SEL
	VALUES (658,
	660,
	1,
	'one',
	661);
INSERT INTO ACT_SR
	VALUES (658);
INSERT INTO ACT_LNK
	VALUES (662,
	'''specified by''',
	658,
	219,
	0,
	2,
	146,
	3,
	38,
	3,
	47,
	3,
	50);
INSERT INTO ACT_SMT
	VALUES (659,
	657,
	0,
	4,
	1,
	'Goal::calculateStart line: 4');
INSERT INTO ACT_IF
	VALUES (659,
	663,
	664,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (665,
	657,
	0,
	8,
	1,
	'Goal::calculateStart line: 8');
INSERT INTO ACT_EL
	VALUES (665,
	666,
	667,
	659);
INSERT INTO ACT_SMT
	VALUES (668,
	657,
	0,
	11,
	1,
	'Goal::calculateStart line: 11');
INSERT INTO ACT_E
	VALUES (668,
	669,
	659);
INSERT INTO V_VAL
	VALUES (661,
	0,
	0,
	3,
	32,
	35,
	0,
	0,
	0,
	0,
	70,
	657);
INSERT INTO V_IRF
	VALUES (661,
	670);
INSERT INTO V_VAL
	VALUES (671,
	0,
	0,
	4,
	6,
	13,
	0,
	0,
	0,
	0,
	70,
	657);
INSERT INTO V_IRF
	VALUES (671,
	660);
INSERT INTO V_VAL
	VALUES (672,
	0,
	0,
	4,
	15,
	22,
	0,
	0,
	0,
	0,
	184,
	657);
INSERT INTO V_AVL
	VALUES (672,
	671,
	146,
	185);
INSERT INTO V_VAL
	VALUES (664,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	657);
INSERT INTO V_BIN
	VALUES (664,
	673,
	672,
	'==');
INSERT INTO V_VAL
	VALUES (673,
	0,
	0,
	4,
	37,
	40,
	0,
	0,
	0,
	0,
	184,
	657);
INSERT INTO V_LEN
	VALUES (673,
	366,
	4,
	27);
INSERT INTO V_VAL
	VALUES (674,
	0,
	0,
	8,
	8,
	15,
	0,
	0,
	0,
	0,
	70,
	657);
INSERT INTO V_IRF
	VALUES (674,
	660);
INSERT INTO V_VAL
	VALUES (675,
	0,
	0,
	8,
	17,
	24,
	0,
	0,
	0,
	0,
	184,
	657);
INSERT INTO V_AVL
	VALUES (675,
	674,
	146,
	185);
INSERT INTO V_VAL
	VALUES (667,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	657);
INSERT INTO V_BIN
	VALUES (667,
	676,
	675,
	'==');
INSERT INTO V_VAL
	VALUES (676,
	0,
	0,
	8,
	39,
	46,
	0,
	0,
	0,
	0,
	184,
	657);
INSERT INTO V_LEN
	VALUES (676,
	358,
	8,
	29);
INSERT INTO V_VAR
	VALUES (660,
	657,
	'goalSpec',
	1,
	70);
INSERT INTO V_INT
	VALUES (660,
	0,
	146);
INSERT INTO V_VAR
	VALUES (670,
	657,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (670,
	0,
	221);
INSERT INTO ACT_BLK
	VALUES (663,
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
	656,
	0);
INSERT INTO ACT_SMT
	VALUES (677,
	663,
	678,
	5,
	3,
	'Goal::calculateStart line: 5');
INSERT INTO ACT_SEL
	VALUES (677,
	679,
	1,
	'one',
	680);
INSERT INTO ACT_SR
	VALUES (677);
INSERT INTO ACT_LNK
	VALUES (681,
	'''is currently executing within''',
	677,
	225,
	682,
	2,
	66,
	6,
	11,
	6,
	26,
	6,
	30);
INSERT INTO ACT_LNK
	VALUES (682,
	'''is timed by''',
	0,
	209,
	0,
	2,
	84,
	6,
	64,
	6,
	77,
	6,
	80);
INSERT INTO ACT_SMT
	VALUES (678,
	663,
	0,
	7,
	3,
	'Goal::calculateStart line: 7');
INSERT INTO ACT_AI
	VALUES (678,
	683,
	684,
	0,
	0);
INSERT INTO V_VAL
	VALUES (680,
	0,
	0,
	6,
	5,
	8,
	0,
	0,
	0,
	0,
	70,
	663);
INSERT INTO V_IRF
	VALUES (680,
	670);
INSERT INTO V_VAL
	VALUES (685,
	1,
	0,
	7,
	3,
	6,
	0,
	0,
	0,
	0,
	70,
	663);
INSERT INTO V_IRF
	VALUES (685,
	670);
INSERT INTO V_VAL
	VALUES (684,
	1,
	0,
	7,
	8,
	12,
	0,
	0,
	0,
	0,
	170,
	663);
INSERT INTO V_AVL
	VALUES (684,
	685,
	221,
	686);
INSERT INTO V_VAL
	VALUES (687,
	0,
	0,
	7,
	16,
	27,
	0,
	0,
	0,
	0,
	70,
	663);
INSERT INTO V_IRF
	VALUES (687,
	679);
INSERT INTO V_VAL
	VALUES (683,
	0,
	0,
	7,
	29,
	32,
	0,
	0,
	0,
	0,
	13,
	663);
INSERT INTO V_AVL
	VALUES (683,
	687,
	84,
	403);
INSERT INTO V_VAR
	VALUES (679,
	663,
	'workoutTimer',
	1,
	70);
INSERT INTO V_INT
	VALUES (679,
	0,
	84);
INSERT INTO ACT_BLK
	VALUES (666,
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
	656,
	0);
INSERT INTO ACT_SMT
	VALUES (688,
	666,
	689,
	9,
	3,
	'Goal::calculateStart line: 9');
INSERT INTO ACT_SEL
	VALUES (688,
	690,
	1,
	'one',
	691);
INSERT INTO ACT_SR
	VALUES (688);
INSERT INTO ACT_LNK
	VALUES (692,
	'''is currently executing within''',
	688,
	225,
	0,
	2,
	66,
	9,
	39,
	9,
	54,
	9,
	58);
INSERT INTO ACT_SMT
	VALUES (689,
	666,
	0,
	10,
	3,
	'Goal::calculateStart line: 10');
INSERT INTO ACT_AI
	VALUES (689,
	693,
	694,
	0,
	0);
INSERT INTO V_VAL
	VALUES (691,
	0,
	0,
	9,
	33,
	36,
	0,
	0,
	0,
	0,
	70,
	666);
INSERT INTO V_IRF
	VALUES (691,
	670);
INSERT INTO V_VAL
	VALUES (695,
	1,
	0,
	10,
	3,
	6,
	0,
	0,
	0,
	0,
	70,
	666);
INSERT INTO V_IRF
	VALUES (695,
	670);
INSERT INTO V_VAL
	VALUES (694,
	1,
	0,
	10,
	8,
	12,
	0,
	0,
	0,
	0,
	170,
	666);
INSERT INTO V_AVL
	VALUES (694,
	695,
	221,
	686);
INSERT INTO V_VAL
	VALUES (696,
	0,
	0,
	10,
	16,
	22,
	0,
	0,
	0,
	0,
	70,
	666);
INSERT INTO V_IRF
	VALUES (696,
	690);
INSERT INTO V_VAL
	VALUES (693,
	0,
	0,
	10,
	24,
	42,
	0,
	0,
	0,
	0,
	170,
	666);
INSERT INTO V_AVL
	VALUES (693,
	696,
	66,
	481);
INSERT INTO V_VAR
	VALUES (690,
	666,
	'session',
	1,
	70);
INSERT INTO V_INT
	VALUES (690,
	0,
	66);
INSERT INTO ACT_BLK
	VALUES (669,
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
	656,
	0);
INSERT INTO ACT_SMT
	VALUES (697,
	669,
	0,
	12,
	3,
	'Goal::calculateStart line: 12');
INSERT INTO ACT_BRG
	VALUES (697,
	94,
	12,
	8,
	12,
	3);
INSERT INTO V_VAL
	VALUES (698,
	0,
	0,
	12,
	29,
	73,
	0,
	0,
	0,
	0,
	96,
	669);
INSERT INTO V_LST
	VALUES (698,
	'Goal.calculateStart: Unknown Goal Span Type.');
INSERT INTO V_PAR
	VALUES (698,
	697,
	0,
	'message',
	0,
	12,
	20);
INSERT INTO O_TFR
	VALUES (699,
	221,
	'evaluateAchievement',
	'',
	437,
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
	641);
INSERT INTO ACT_OPB
	VALUES (700,
	699);
INSERT INTO ACT_ACT
	VALUES (700,
	'operation',
	0,
	701,
	0,
	0,
	'Goal::evaluateAchievement',
	0);
INSERT INTO ACT_BLK
	VALUES (701,
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
	700,
	0);
INSERT INTO ACT_SMT
	VALUES (702,
	701,
	703,
	6,
	1,
	'Goal::evaluateAchievement line: 6');
INSERT INTO ACT_SEL
	VALUES (702,
	704,
	1,
	'one',
	705);
INSERT INTO ACT_SR
	VALUES (702);
INSERT INTO ACT_LNK
	VALUES (706,
	'''specified by''',
	702,
	219,
	0,
	2,
	146,
	6,
	38,
	6,
	47,
	6,
	50);
INSERT INTO ACT_SMT
	VALUES (703,
	701,
	707,
	7,
	1,
	'Goal::evaluateAchievement line: 7');
INSERT INTO ACT_SEL
	VALUES (703,
	708,
	1,
	'one',
	709);
INSERT INTO ACT_SR
	VALUES (703);
INSERT INTO ACT_LNK
	VALUES (710,
	'''is currently executing within''',
	703,
	225,
	0,
	2,
	66,
	7,
	37,
	7,
	52,
	7,
	56);
INSERT INTO ACT_SMT
	VALUES (707,
	701,
	711,
	11,
	1,
	'Goal::evaluateAchievement line: 11');
INSERT INTO ACT_AI
	VALUES (707,
	712,
	713,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (711,
	701,
	714,
	12,
	1,
	'Goal::evaluateAchievement line: 12');
INSERT INTO ACT_IF
	VALUES (711,
	715,
	716,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (717,
	701,
	0,
	14,
	1,
	'Goal::evaluateAchievement line: 14');
INSERT INTO ACT_EL
	VALUES (717,
	718,
	719,
	711);
INSERT INTO ACT_SMT
	VALUES (720,
	701,
	0,
	16,
	1,
	'Goal::evaluateAchievement line: 16');
INSERT INTO ACT_E
	VALUES (720,
	721,
	711);
INSERT INTO ACT_SMT
	VALUES (714,
	701,
	722,
	21,
	1,
	'Goal::evaluateAchievement line: 21');
INSERT INTO ACT_AI
	VALUES (714,
	723,
	724,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (722,
	701,
	725,
	22,
	1,
	'Goal::evaluateAchievement line: 22');
INSERT INTO ACT_IF
	VALUES (722,
	726,
	727,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (728,
	701,
	0,
	24,
	1,
	'Goal::evaluateAchievement line: 24');
INSERT INTO ACT_EL
	VALUES (728,
	729,
	730,
	722);
INSERT INTO ACT_SMT
	VALUES (725,
	701,
	731,
	30,
	1,
	'Goal::evaluateAchievement line: 30');
INSERT INTO ACT_IF
	VALUES (725,
	732,
	733,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (731,
	701,
	0,
	38,
	1,
	'Goal::evaluateAchievement line: 38');
INSERT INTO ACT_RET
	VALUES (731,
	734);
INSERT INTO V_VAL
	VALUES (705,
	0,
	0,
	6,
	32,
	35,
	0,
	0,
	0,
	0,
	70,
	701);
INSERT INTO V_IRF
	VALUES (705,
	735);
INSERT INTO V_VAL
	VALUES (709,
	0,
	0,
	7,
	31,
	34,
	0,
	0,
	0,
	0,
	70,
	701);
INSERT INTO V_IRF
	VALUES (709,
	735);
INSERT INTO V_VAL
	VALUES (713,
	1,
	1,
	11,
	1,
	12,
	0,
	0,
	0,
	0,
	170,
	701);
INSERT INTO V_TVL
	VALUES (713,
	736);
INSERT INTO V_VAL
	VALUES (712,
	0,
	0,
	11,
	16,
	18,
	0,
	0,
	0,
	0,
	170,
	701);
INSERT INTO V_LRL
	VALUES (712,
	'0.0');
INSERT INTO V_VAL
	VALUES (737,
	0,
	0,
	12,
	6,
	13,
	0,
	0,
	0,
	0,
	70,
	701);
INSERT INTO V_IRF
	VALUES (737,
	704);
INSERT INTO V_VAL
	VALUES (738,
	0,
	0,
	12,
	15,
	26,
	0,
	0,
	0,
	0,
	180,
	701);
INSERT INTO V_AVL
	VALUES (738,
	737,
	146,
	181);
INSERT INTO V_VAL
	VALUES (716,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	701);
INSERT INTO V_BIN
	VALUES (716,
	739,
	738,
	'==');
INSERT INTO V_VAL
	VALUES (739,
	0,
	0,
	12,
	45,
	53,
	0,
	0,
	0,
	0,
	180,
	701);
INSERT INTO V_LEN
	VALUES (739,
	364,
	12,
	31);
INSERT INTO V_VAL
	VALUES (740,
	0,
	0,
	14,
	8,
	15,
	0,
	0,
	0,
	0,
	70,
	701);
INSERT INTO V_IRF
	VALUES (740,
	704);
INSERT INTO V_VAL
	VALUES (741,
	0,
	0,
	14,
	17,
	28,
	0,
	0,
	0,
	0,
	180,
	701);
INSERT INTO V_AVL
	VALUES (741,
	740,
	146,
	181);
INSERT INTO V_VAL
	VALUES (719,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	701);
INSERT INTO V_BIN
	VALUES (719,
	742,
	741,
	'==');
INSERT INTO V_VAL
	VALUES (742,
	0,
	0,
	14,
	47,
	50,
	0,
	0,
	0,
	0,
	180,
	701);
INSERT INTO V_LEN
	VALUES (742,
	356,
	14,
	33);
INSERT INTO V_VAL
	VALUES (724,
	1,
	1,
	21,
	1,
	15,
	0,
	0,
	0,
	0,
	437,
	701);
INSERT INTO V_TVL
	VALUES (724,
	743);
INSERT INTO V_VAL
	VALUES (723,
	0,
	0,
	21,
	36,
	44,
	0,
	0,
	0,
	0,
	437,
	701);
INSERT INTO V_LEN
	VALUES (723,
	744,
	21,
	19);
INSERT INTO V_VAL
	VALUES (745,
	0,
	0,
	22,
	6,
	17,
	0,
	0,
	0,
	0,
	170,
	701);
INSERT INTO V_TVL
	VALUES (745,
	736);
INSERT INTO V_VAL
	VALUES (727,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	701);
INSERT INTO V_BIN
	VALUES (727,
	746,
	745,
	'<');
INSERT INTO V_VAL
	VALUES (747,
	0,
	0,
	22,
	21,
	28,
	0,
	0,
	0,
	0,
	70,
	701);
INSERT INTO V_IRF
	VALUES (747,
	704);
INSERT INTO V_VAL
	VALUES (746,
	0,
	0,
	22,
	30,
	36,
	0,
	0,
	0,
	0,
	170,
	701);
INSERT INTO V_AVL
	VALUES (746,
	747,
	146,
	171);
INSERT INTO V_VAL
	VALUES (748,
	0,
	0,
	24,
	8,
	19,
	0,
	0,
	0,
	0,
	170,
	701);
INSERT INTO V_TVL
	VALUES (748,
	736);
INSERT INTO V_VAL
	VALUES (730,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	701);
INSERT INTO V_BIN
	VALUES (730,
	749,
	748,
	'>');
INSERT INTO V_VAL
	VALUES (750,
	0,
	0,
	24,
	23,
	30,
	0,
	0,
	0,
	0,
	70,
	701);
INSERT INTO V_IRF
	VALUES (750,
	704);
INSERT INTO V_VAL
	VALUES (749,
	0,
	0,
	24,
	32,
	38,
	0,
	0,
	0,
	0,
	170,
	701);
INSERT INTO V_AVL
	VALUES (749,
	750,
	146,
	174);
INSERT INTO V_VAL
	VALUES (751,
	0,
	0,
	30,
	6,
	13,
	0,
	0,
	0,
	0,
	70,
	701);
INSERT INTO V_IRF
	VALUES (751,
	704);
INSERT INTO V_VAL
	VALUES (752,
	0,
	0,
	30,
	15,
	26,
	0,
	0,
	0,
	0,
	180,
	701);
INSERT INTO V_AVL
	VALUES (752,
	751,
	146,
	181);
INSERT INTO V_VAL
	VALUES (733,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	701);
INSERT INTO V_BIN
	VALUES (733,
	753,
	752,
	'==');
INSERT INTO V_VAL
	VALUES (753,
	0,
	0,
	30,
	45,
	48,
	0,
	0,
	0,
	0,
	180,
	701);
INSERT INTO V_LEN
	VALUES (753,
	356,
	30,
	31);
INSERT INTO V_VAL
	VALUES (734,
	0,
	0,
	38,
	9,
	23,
	0,
	0,
	0,
	0,
	437,
	701);
INSERT INTO V_TVL
	VALUES (734,
	743);
INSERT INTO V_VAR
	VALUES (704,
	701,
	'goalSpec',
	1,
	70);
INSERT INTO V_INT
	VALUES (704,
	0,
	146);
INSERT INTO V_VAR
	VALUES (735,
	701,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (735,
	0,
	221);
INSERT INTO V_VAR
	VALUES (708,
	701,
	'session',
	1,
	70);
INSERT INTO V_INT
	VALUES (708,
	0,
	66);
INSERT INTO V_VAR
	VALUES (736,
	701,
	'currentValue',
	1,
	170);
INSERT INTO V_TRN
	VALUES (736,
	0,
	'');
INSERT INTO V_VAR
	VALUES (743,
	701,
	'goalDisposition',
	1,
	437);
INSERT INTO V_TRN
	VALUES (743,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (715,
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
	700,
	0);
INSERT INTO ACT_SMT
	VALUES (754,
	715,
	0,
	13,
	3,
	'Goal::evaluateAchievement line: 13');
INSERT INTO ACT_AI
	VALUES (754,
	755,
	756,
	0,
	0);
INSERT INTO V_VAL
	VALUES (756,
	1,
	0,
	13,
	3,
	14,
	0,
	0,
	0,
	0,
	170,
	715);
INSERT INTO V_TVL
	VALUES (756,
	736);
INSERT INTO V_VAL
	VALUES (757,
	0,
	0,
	13,
	18,
	24,
	0,
	0,
	0,
	0,
	70,
	715);
INSERT INTO V_IRF
	VALUES (757,
	708);
INSERT INTO V_VAL
	VALUES (755,
	0,
	0,
	13,
	26,
	41,
	0,
	0,
	0,
	0,
	13,
	715);
INSERT INTO V_AVL
	VALUES (755,
	757,
	66,
	554);
INSERT INTO ACT_BLK
	VALUES (718,
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
	700,
	0);
INSERT INTO ACT_SMT
	VALUES (758,
	718,
	0,
	15,
	3,
	'Goal::evaluateAchievement line: 15');
INSERT INTO ACT_AI
	VALUES (758,
	759,
	760,
	0,
	0);
INSERT INTO V_VAL
	VALUES (760,
	1,
	0,
	15,
	3,
	14,
	0,
	0,
	0,
	0,
	170,
	718);
INSERT INTO V_TVL
	VALUES (760,
	736);
INSERT INTO V_VAL
	VALUES (761,
	0,
	0,
	15,
	18,
	24,
	0,
	0,
	0,
	0,
	70,
	718);
INSERT INTO V_IRF
	VALUES (761,
	708);
INSERT INTO V_VAL
	VALUES (759,
	0,
	0,
	15,
	26,
	36,
	0,
	0,
	0,
	0,
	170,
	718);
INSERT INTO V_AVL
	VALUES (759,
	761,
	66,
	533);
INSERT INTO ACT_BLK
	VALUES (721,
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
	700,
	0);
INSERT INTO ACT_SMT
	VALUES (762,
	721,
	0,
	17,
	3,
	'Goal::evaluateAchievement line: 17');
INSERT INTO ACT_BRG
	VALUES (762,
	94,
	17,
	8,
	17,
	3);
INSERT INTO V_VAL
	VALUES (763,
	0,
	0,
	17,
	29,
	82,
	0,
	0,
	0,
	0,
	96,
	721);
INSERT INTO V_LST
	VALUES (763,
	'Goal.evaluateAchievement: Unknown Goal Criteria Type.');
INSERT INTO V_PAR
	VALUES (763,
	762,
	0,
	'message',
	0,
	17,
	20);
INSERT INTO ACT_BLK
	VALUES (726,
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
	700,
	0);
INSERT INTO ACT_SMT
	VALUES (764,
	726,
	0,
	23,
	3,
	'Goal::evaluateAchievement line: 23');
INSERT INTO ACT_AI
	VALUES (764,
	765,
	766,
	0,
	0);
INSERT INTO V_VAL
	VALUES (766,
	1,
	0,
	23,
	3,
	17,
	0,
	0,
	0,
	0,
	437,
	726);
INSERT INTO V_TVL
	VALUES (766,
	743);
INSERT INTO V_VAL
	VALUES (765,
	0,
	0,
	23,
	38,
	45,
	0,
	0,
	0,
	0,
	437,
	726);
INSERT INTO V_LEN
	VALUES (765,
	440,
	23,
	21);
INSERT INTO ACT_BLK
	VALUES (729,
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
	700,
	0);
INSERT INTO ACT_SMT
	VALUES (767,
	729,
	0,
	25,
	3,
	'Goal::evaluateAchievement line: 25');
INSERT INTO ACT_AI
	VALUES (767,
	768,
	769,
	0,
	0);
INSERT INTO V_VAL
	VALUES (769,
	1,
	0,
	25,
	3,
	17,
	0,
	0,
	0,
	0,
	437,
	729);
INSERT INTO V_TVL
	VALUES (769,
	743);
INSERT INTO V_VAL
	VALUES (768,
	0,
	0,
	25,
	38,
	45,
	0,
	0,
	0,
	0,
	437,
	729);
INSERT INTO V_LEN
	VALUES (768,
	444,
	25,
	21);
INSERT INTO ACT_BLK
	VALUES (732,
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
	700,
	0);
INSERT INTO ACT_SMT
	VALUES (770,
	732,
	0,
	31,
	3,
	'Goal::evaluateAchievement line: 31');
INSERT INTO ACT_IF
	VALUES (770,
	771,
	772,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (773,
	732,
	0,
	33,
	3,
	'Goal::evaluateAchievement line: 33');
INSERT INTO ACT_EL
	VALUES (773,
	774,
	775,
	770);
INSERT INTO V_VAL
	VALUES (776,
	0,
	0,
	31,
	8,
	22,
	0,
	0,
	0,
	0,
	437,
	732);
INSERT INTO V_TVL
	VALUES (776,
	743);
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
	72,
	732);
INSERT INTO V_BIN
	VALUES (772,
	777,
	776,
	'==');
INSERT INTO V_VAL
	VALUES (777,
	0,
	0,
	31,
	44,
	51,
	0,
	0,
	0,
	0,
	437,
	732);
INSERT INTO V_LEN
	VALUES (777,
	440,
	31,
	27);
INSERT INTO V_VAL
	VALUES (778,
	0,
	0,
	33,
	10,
	24,
	0,
	0,
	0,
	0,
	437,
	732);
INSERT INTO V_TVL
	VALUES (778,
	743);
INSERT INTO V_VAL
	VALUES (775,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	732);
INSERT INTO V_BIN
	VALUES (775,
	779,
	778,
	'==');
INSERT INTO V_VAL
	VALUES (779,
	0,
	0,
	33,
	46,
	53,
	0,
	0,
	0,
	0,
	437,
	732);
INSERT INTO V_LEN
	VALUES (779,
	444,
	33,
	29);
INSERT INTO ACT_BLK
	VALUES (771,
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
	700,
	0);
INSERT INTO ACT_SMT
	VALUES (780,
	771,
	0,
	32,
	5,
	'Goal::evaluateAchievement line: 32');
INSERT INTO ACT_AI
	VALUES (780,
	781,
	782,
	0,
	0);
INSERT INTO V_VAL
	VALUES (782,
	1,
	0,
	32,
	5,
	19,
	0,
	0,
	0,
	0,
	437,
	771);
INSERT INTO V_TVL
	VALUES (782,
	743);
INSERT INTO V_VAL
	VALUES (781,
	0,
	0,
	32,
	40,
	47,
	0,
	0,
	0,
	0,
	437,
	771);
INSERT INTO V_LEN
	VALUES (781,
	444,
	32,
	23);
INSERT INTO ACT_BLK
	VALUES (774,
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
	700,
	0);
INSERT INTO ACT_SMT
	VALUES (783,
	774,
	0,
	34,
	5,
	'Goal::evaluateAchievement line: 34');
INSERT INTO ACT_AI
	VALUES (783,
	784,
	785,
	0,
	0);
INSERT INTO V_VAL
	VALUES (785,
	1,
	0,
	34,
	5,
	19,
	0,
	0,
	0,
	0,
	437,
	774);
INSERT INTO V_TVL
	VALUES (785,
	743);
INSERT INTO V_VAL
	VALUES (784,
	0,
	0,
	34,
	40,
	47,
	0,
	0,
	0,
	0,
	437,
	774);
INSERT INTO V_LEN
	VALUES (784,
	440,
	34,
	23);
INSERT INTO O_TFR
	VALUES (786,
	221,
	'evaluateCompletion',
	'',
	240,
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
	699);
INSERT INTO ACT_OPB
	VALUES (787,
	786);
INSERT INTO ACT_ACT
	VALUES (787,
	'operation',
	0,
	788,
	0,
	0,
	'Goal::evaluateCompletion',
	0);
INSERT INTO ACT_BLK
	VALUES (788,
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
	787,
	0);
INSERT INTO ACT_SMT
	VALUES (789,
	788,
	790,
	6,
	1,
	'Goal::evaluateCompletion line: 6');
INSERT INTO ACT_SEL
	VALUES (789,
	791,
	1,
	'one',
	792);
INSERT INTO ACT_SR
	VALUES (789);
INSERT INTO ACT_LNK
	VALUES (793,
	'''specified by''',
	789,
	219,
	0,
	2,
	146,
	6,
	38,
	6,
	47,
	6,
	50);
INSERT INTO ACT_SMT
	VALUES (790,
	788,
	794,
	10,
	1,
	'Goal::evaluateCompletion line: 10');
INSERT INTO ACT_AI
	VALUES (790,
	795,
	796,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (794,
	788,
	797,
	11,
	1,
	'Goal::evaluateCompletion line: 11');
INSERT INTO ACT_IF
	VALUES (794,
	798,
	799,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (800,
	788,
	0,
	14,
	1,
	'Goal::evaluateCompletion line: 14');
INSERT INTO ACT_EL
	VALUES (800,
	801,
	802,
	794);
INSERT INTO ACT_SMT
	VALUES (803,
	788,
	0,
	18,
	1,
	'Goal::evaluateCompletion line: 18');
INSERT INTO ACT_E
	VALUES (803,
	804,
	794);
INSERT INTO ACT_SMT
	VALUES (797,
	788,
	0,
	24,
	1,
	'Goal::evaluateCompletion line: 24');
INSERT INTO ACT_IF
	VALUES (797,
	805,
	806,
	0,
	0);
INSERT INTO V_VAL
	VALUES (792,
	0,
	0,
	6,
	32,
	35,
	0,
	0,
	0,
	0,
	70,
	788);
INSERT INTO V_IRF
	VALUES (792,
	807);
INSERT INTO V_VAL
	VALUES (796,
	1,
	1,
	10,
	1,
	11,
	0,
	0,
	0,
	0,
	170,
	788);
INSERT INTO V_TVL
	VALUES (796,
	808);
INSERT INTO V_VAL
	VALUES (795,
	0,
	0,
	10,
	15,
	17,
	0,
	0,
	0,
	0,
	170,
	788);
INSERT INTO V_LRL
	VALUES (795,
	'0.0');
INSERT INTO V_VAL
	VALUES (809,
	0,
	0,
	11,
	6,
	13,
	0,
	0,
	0,
	0,
	70,
	788);
INSERT INTO V_IRF
	VALUES (809,
	791);
INSERT INTO V_VAL
	VALUES (810,
	0,
	0,
	11,
	15,
	22,
	0,
	0,
	0,
	0,
	184,
	788);
INSERT INTO V_AVL
	VALUES (810,
	809,
	146,
	185);
INSERT INTO V_VAL
	VALUES (799,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	788);
INSERT INTO V_BIN
	VALUES (799,
	811,
	810,
	'==');
INSERT INTO V_VAL
	VALUES (811,
	0,
	0,
	11,
	37,
	44,
	0,
	0,
	0,
	0,
	184,
	788);
INSERT INTO V_LEN
	VALUES (811,
	358,
	11,
	27);
INSERT INTO V_VAL
	VALUES (812,
	0,
	0,
	14,
	8,
	15,
	0,
	0,
	0,
	0,
	70,
	788);
INSERT INTO V_IRF
	VALUES (812,
	791);
INSERT INTO V_VAL
	VALUES (813,
	0,
	0,
	14,
	17,
	24,
	0,
	0,
	0,
	0,
	184,
	788);
INSERT INTO V_AVL
	VALUES (813,
	812,
	146,
	185);
INSERT INTO V_VAL
	VALUES (802,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	788);
INSERT INTO V_BIN
	VALUES (802,
	814,
	813,
	'==');
INSERT INTO V_VAL
	VALUES (814,
	0,
	0,
	14,
	39,
	42,
	0,
	0,
	0,
	0,
	184,
	788);
INSERT INTO V_LEN
	VALUES (814,
	366,
	14,
	29);
INSERT INTO V_VAL
	VALUES (815,
	0,
	0,
	24,
	6,
	16,
	0,
	0,
	0,
	0,
	170,
	788);
INSERT INTO V_TVL
	VALUES (815,
	808);
INSERT INTO V_VAL
	VALUES (806,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	788);
INSERT INTO V_BIN
	VALUES (806,
	816,
	815,
	'>=');
INSERT INTO V_VAL
	VALUES (817,
	0,
	0,
	24,
	21,
	28,
	0,
	0,
	0,
	0,
	70,
	788);
INSERT INTO V_IRF
	VALUES (817,
	791);
INSERT INTO V_VAL
	VALUES (816,
	0,
	0,
	24,
	30,
	33,
	0,
	0,
	0,
	0,
	170,
	788);
INSERT INTO V_AVL
	VALUES (816,
	817,
	146,
	177);
INSERT INTO V_VAR
	VALUES (791,
	788,
	'goalSpec',
	1,
	70);
INSERT INTO V_INT
	VALUES (791,
	0,
	146);
INSERT INTO V_VAR
	VALUES (807,
	788,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (807,
	0,
	221);
INSERT INTO V_VAR
	VALUES (808,
	788,
	'elapsedSpan',
	1,
	170);
INSERT INTO V_TRN
	VALUES (808,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (798,
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
	787,
	0);
INSERT INTO ACT_SMT
	VALUES (818,
	798,
	819,
	12,
	3,
	'Goal::evaluateCompletion line: 12');
INSERT INTO ACT_SEL
	VALUES (818,
	820,
	1,
	'one',
	821);
INSERT INTO ACT_SR
	VALUES (818);
INSERT INTO ACT_LNK
	VALUES (822,
	'''is currently executing within''',
	818,
	225,
	0,
	2,
	66,
	12,
	39,
	12,
	54,
	12,
	58);
INSERT INTO ACT_SMT
	VALUES (819,
	798,
	0,
	13,
	3,
	'Goal::evaluateCompletion line: 13');
INSERT INTO ACT_AI
	VALUES (819,
	823,
	824,
	0,
	0);
INSERT INTO V_VAL
	VALUES (821,
	0,
	0,
	12,
	33,
	36,
	0,
	0,
	0,
	0,
	70,
	798);
INSERT INTO V_IRF
	VALUES (821,
	807);
INSERT INTO V_VAL
	VALUES (824,
	1,
	0,
	13,
	3,
	13,
	0,
	0,
	0,
	0,
	170,
	798);
INSERT INTO V_TVL
	VALUES (824,
	808);
INSERT INTO V_VAL
	VALUES (825,
	0,
	0,
	13,
	17,
	23,
	0,
	0,
	0,
	0,
	70,
	798);
INSERT INTO V_IRF
	VALUES (825,
	820);
INSERT INTO V_VAL
	VALUES (826,
	0,
	0,
	13,
	25,
	43,
	0,
	0,
	0,
	0,
	170,
	798);
INSERT INTO V_AVL
	VALUES (826,
	825,
	66,
	481);
INSERT INTO V_VAL
	VALUES (823,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	170,
	798);
INSERT INTO V_BIN
	VALUES (823,
	827,
	826,
	'-');
INSERT INTO V_VAL
	VALUES (828,
	0,
	0,
	13,
	47,
	50,
	0,
	0,
	0,
	0,
	70,
	798);
INSERT INTO V_IRF
	VALUES (828,
	807);
INSERT INTO V_VAL
	VALUES (827,
	0,
	0,
	13,
	52,
	56,
	0,
	0,
	0,
	0,
	170,
	798);
INSERT INTO V_AVL
	VALUES (827,
	828,
	221,
	686);
INSERT INTO V_VAR
	VALUES (820,
	798,
	'session',
	1,
	70);
INSERT INTO V_INT
	VALUES (820,
	0,
	66);
INSERT INTO ACT_BLK
	VALUES (801,
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
	787,
	0);
INSERT INTO ACT_SMT
	VALUES (829,
	801,
	830,
	15,
	3,
	'Goal::evaluateCompletion line: 15');
INSERT INTO ACT_SEL
	VALUES (829,
	831,
	1,
	'one',
	832);
INSERT INTO ACT_SR
	VALUES (829);
INSERT INTO ACT_LNK
	VALUES (833,
	'''is currently executing within''',
	829,
	225,
	834,
	2,
	66,
	16,
	11,
	16,
	26,
	16,
	30);
INSERT INTO ACT_LNK
	VALUES (834,
	'''is timed by''',
	0,
	209,
	0,
	2,
	84,
	16,
	64,
	16,
	77,
	16,
	80);
INSERT INTO ACT_SMT
	VALUES (830,
	801,
	0,
	17,
	3,
	'Goal::evaluateCompletion line: 17');
INSERT INTO ACT_AI
	VALUES (830,
	835,
	836,
	0,
	0);
INSERT INTO V_VAL
	VALUES (832,
	0,
	0,
	16,
	5,
	8,
	0,
	0,
	0,
	0,
	70,
	801);
INSERT INTO V_IRF
	VALUES (832,
	807);
INSERT INTO V_VAL
	VALUES (836,
	1,
	0,
	17,
	3,
	13,
	0,
	0,
	0,
	0,
	170,
	801);
INSERT INTO V_TVL
	VALUES (836,
	808);
INSERT INTO V_VAL
	VALUES (837,
	0,
	0,
	17,
	17,
	28,
	0,
	0,
	0,
	0,
	70,
	801);
INSERT INTO V_IRF
	VALUES (837,
	831);
INSERT INTO V_VAL
	VALUES (838,
	0,
	0,
	17,
	30,
	33,
	0,
	0,
	0,
	0,
	13,
	801);
INSERT INTO V_AVL
	VALUES (838,
	837,
	84,
	403);
INSERT INTO V_VAL
	VALUES (835,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	170,
	801);
INSERT INTO V_BIN
	VALUES (835,
	839,
	838,
	'-');
INSERT INTO V_VAL
	VALUES (840,
	0,
	0,
	17,
	37,
	40,
	0,
	0,
	0,
	0,
	70,
	801);
INSERT INTO V_IRF
	VALUES (840,
	807);
INSERT INTO V_VAL
	VALUES (839,
	0,
	0,
	17,
	42,
	46,
	0,
	0,
	0,
	0,
	170,
	801);
INSERT INTO V_AVL
	VALUES (839,
	840,
	221,
	686);
INSERT INTO V_VAR
	VALUES (831,
	801,
	'workoutTimer',
	1,
	70);
INSERT INTO V_INT
	VALUES (831,
	0,
	84);
INSERT INTO ACT_BLK
	VALUES (804,
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
	787,
	0);
INSERT INTO ACT_SMT
	VALUES (841,
	804,
	0,
	19,
	3,
	'Goal::evaluateCompletion line: 19');
INSERT INTO ACT_BRG
	VALUES (841,
	94,
	19,
	8,
	19,
	3);
INSERT INTO V_VAL
	VALUES (842,
	0,
	0,
	19,
	29,
	77,
	0,
	0,
	0,
	0,
	96,
	804);
INSERT INTO V_LST
	VALUES (842,
	'Goal.evaluateCompletion: Unknown Goal Span Type.');
INSERT INTO V_PAR
	VALUES (842,
	841,
	0,
	'message',
	0,
	19,
	20);
INSERT INTO ACT_BLK
	VALUES (805,
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
	787,
	0);
INSERT INTO ACT_SMT
	VALUES (843,
	805,
	844,
	25,
	3,
	'Goal::evaluateCompletion line: 25');
INSERT INTO ACT_SEL
	VALUES (843,
	845,
	1,
	'one',
	846);
INSERT INTO ACT_SR
	VALUES (843);
INSERT INTO ACT_LNK
	VALUES (847,
	'''has open''',
	843,
	235,
	0,
	2,
	230,
	25,
	47,
	25,
	59,
	25,
	63);
INSERT INTO ACT_SMT
	VALUES (844,
	805,
	848,
	26,
	3,
	'Goal::evaluateCompletion line: 26');
INSERT INTO ACT_IF
	VALUES (844,
	849,
	850,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (848,
	805,
	0,
	29,
	3,
	'Goal::evaluateCompletion line: 29');
INSERT INTO E_ESS
	VALUES (848,
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
	VALUES (848);
INSERT INTO E_GSME
	VALUES (848,
	851);
INSERT INTO E_GEN
	VALUES (848,
	807);
INSERT INTO V_VAL
	VALUES (846,
	0,
	0,
	25,
	41,
	44,
	0,
	0,
	0,
	0,
	70,
	805);
INSERT INTO V_IRF
	VALUES (846,
	807);
INSERT INTO V_VAL
	VALUES (852,
	0,
	0,
	26,
	18,
	32,
	0,
	0,
	0,
	0,
	70,
	805);
INSERT INTO V_IRF
	VALUES (852,
	845);
INSERT INTO V_VAL
	VALUES (853,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	805);
INSERT INTO V_UNY
	VALUES (853,
	852,
	'empty');
INSERT INTO V_VAL
	VALUES (850,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	805);
INSERT INTO V_UNY
	VALUES (850,
	853,
	'not');
INSERT INTO V_VAR
	VALUES (845,
	805,
	'openAchievement',
	1,
	70);
INSERT INTO V_INT
	VALUES (845,
	0,
	230);
INSERT INTO ACT_BLK
	VALUES (849,
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
	787,
	0);
INSERT INTO ACT_SMT
	VALUES (854,
	849,
	0,
	27,
	5,
	'Goal::evaluateCompletion line: 27');
INSERT INTO ACT_TFM
	VALUES (854,
	382,
	845,
	27,
	21,
	0,
	0);
INSERT INTO O_TFR
	VALUES (121,
	221,
	'nextGoal',
	'',
	240,
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
	786);
INSERT INTO ACT_OPB
	VALUES (855,
	121);
INSERT INTO ACT_ACT
	VALUES (855,
	'class operation',
	0,
	856,
	0,
	0,
	'Goal::nextGoal',
	0);
INSERT INTO ACT_BLK
	VALUES (856,
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
	855,
	0);
INSERT INTO ACT_SMT
	VALUES (857,
	856,
	858,
	8,
	1,
	'Goal::nextGoal line: 8');
INSERT INTO ACT_FIO
	VALUES (857,
	859,
	1,
	'any',
	66,
	8,
	38);
INSERT INTO ACT_SMT
	VALUES (858,
	856,
	0,
	9,
	1,
	'Goal::nextGoal line: 9');
INSERT INTO ACT_IF
	VALUES (858,
	860,
	861,
	0,
	0);
INSERT INTO V_VAL
	VALUES (862,
	0,
	0,
	9,
	16,
	22,
	0,
	0,
	0,
	0,
	70,
	856);
INSERT INTO V_IRF
	VALUES (862,
	859);
INSERT INTO V_VAL
	VALUES (863,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	856);
INSERT INTO V_UNY
	VALUES (863,
	862,
	'empty');
INSERT INTO V_VAL
	VALUES (861,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	856);
INSERT INTO V_UNY
	VALUES (861,
	863,
	'not');
INSERT INTO V_VAR
	VALUES (859,
	856,
	'session',
	1,
	70);
INSERT INTO V_INT
	VALUES (859,
	0,
	66);
INSERT INTO ACT_BLK
	VALUES (860,
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
	855,
	0);
INSERT INTO ACT_SMT
	VALUES (864,
	860,
	865,
	10,
	3,
	'Goal::nextGoal line: 10');
INSERT INTO ACT_SEL
	VALUES (864,
	866,
	1,
	'one',
	867);
INSERT INTO ACT_SR
	VALUES (864);
INSERT INTO ACT_LNK
	VALUES (868,
	'''is currently executing''',
	864,
	225,
	0,
	2,
	221,
	10,
	39,
	10,
	44,
	10,
	48);
INSERT INTO ACT_SMT
	VALUES (865,
	860,
	0,
	11,
	3,
	'Goal::nextGoal line: 11');
INSERT INTO ACT_IF
	VALUES (865,
	869,
	870,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (871,
	860,
	0,
	13,
	3,
	'Goal::nextGoal line: 13');
INSERT INTO ACT_E
	VALUES (871,
	872,
	865);
INSERT INTO V_VAL
	VALUES (867,
	0,
	0,
	10,
	30,
	36,
	0,
	0,
	0,
	0,
	70,
	860);
INSERT INTO V_IRF
	VALUES (867,
	859);
INSERT INTO V_VAL
	VALUES (873,
	0,
	0,
	11,
	18,
	21,
	0,
	0,
	0,
	0,
	70,
	860);
INSERT INTO V_IRF
	VALUES (873,
	866);
INSERT INTO V_VAL
	VALUES (874,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	860);
INSERT INTO V_UNY
	VALUES (874,
	873,
	'empty');
INSERT INTO V_VAL
	VALUES (870,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	860);
INSERT INTO V_UNY
	VALUES (870,
	874,
	'not');
INSERT INTO V_VAR
	VALUES (866,
	860,
	'goal',
	1,
	70);
INSERT INTO V_INT
	VALUES (866,
	0,
	221);
INSERT INTO ACT_BLK
	VALUES (869,
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
	855,
	0);
INSERT INTO ACT_SMT
	VALUES (875,
	869,
	0,
	12,
	5,
	'Goal::nextGoal line: 12');
INSERT INTO E_ESS
	VALUES (875,
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
	VALUES (875);
INSERT INTO E_GSME
	VALUES (875,
	851);
INSERT INTO E_GEN
	VALUES (875,
	866);
INSERT INTO ACT_BLK
	VALUES (872,
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
	855,
	0);
INSERT INTO ACT_SMT
	VALUES (876,
	872,
	0,
	14,
	5,
	'Goal::nextGoal line: 14');
INSERT INTO ACT_TFM
	VALUES (876,
	618,
	0,
	14,
	11,
	14,
	5);
INSERT INTO V_VAL
	VALUES (877,
	0,
	0,
	14,
	35,
	48,
	0,
	0,
	0,
	0,
	13,
	872);
INSERT INTO V_SCV
	VALUES (877,
	878,
	13);
INSERT INTO V_PAR
	VALUES (877,
	876,
	0,
	'sequenceNumber',
	0,
	14,
	19);
INSERT INTO O_NBATTR
	VALUES (438,
	221);
INSERT INTO O_BATTR
	VALUES (438,
	221);
INSERT INTO O_ATTR
	VALUES (438,
	221,
	686,
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
	437,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (686,
	221);
INSERT INTO O_BATTR
	VALUES (686,
	221);
INSERT INTO O_ATTR
	VALUES (686,
	221,
	879,
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
	170,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (879,
	221);
INSERT INTO O_BATTR
	VALUES (879,
	221);
INSERT INTO O_ATTR
	VALUES (879,
	221,
	0,
	'ID',
	'An arbitrary identifier.',
	'',
	'ID',
	0,
	880,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (881,
	221);
INSERT INTO O_BATTR
	VALUES (881,
	221);
INSERT INTO O_ATTR
	VALUES (881,
	221,
	652,
	'current_state',
	'',
	'',
	'current_state',
	0,
	458,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (652,
	221);
INSERT INTO O_BATTR
	VALUES (652,
	221);
INSERT INTO O_ATTR
	VALUES (652,
	221,
	438,
	'evaluationTimer',
	'Handle for the timer used for periodic evaluation of goal achievement.',
	'',
	'evaluationTimer',
	0,
	313,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	221);
INSERT INTO O_ID
	VALUES (1,
	221);
INSERT INTO O_ID
	VALUES (2,
	221);
INSERT INTO SM_ISM
	VALUES (882,
	221);
INSERT INTO SM_SM
	VALUES (882,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (882);
INSERT INTO SM_LEVT
	VALUES (851,
	882,
	0);
INSERT INTO SM_SEVT
	VALUES (851,
	882,
	0);
INSERT INTO SM_EVT
	VALUES (851,
	882,
	0,
	1,
	'Completed',
	0,
	'',
	'Goal1',
	'Indicates that execution of this goal has been completed.  ');
INSERT INTO SM_LEVT
	VALUES (647,
	882,
	0);
INSERT INTO SM_SEVT
	VALUES (647,
	882,
	0);
INSERT INTO SM_EVT
	VALUES (647,
	882,
	0,
	2,
	'Evaluate',
	0,
	'',
	'Goal2',
	'Indicates that this goal should be evaluated for completeness and achievement.');
INSERT INTO SM_LEVT
	VALUES (883,
	882,
	0);
INSERT INTO SM_SEVT
	VALUES (883,
	882,
	0);
INSERT INTO SM_EVT
	VALUES (883,
	882,
	0,
	3,
	'Pause',
	0,
	'',
	'Goal3',
	'');
INSERT INTO SM_STATE
	VALUES (884,
	882,
	0,
	'Executing',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (884,
	851,
	882,
	0);
INSERT INTO SM_SEME
	VALUES (884,
	647,
	882,
	0);
INSERT INTO SM_SEME
	VALUES (884,
	883,
	882,
	0);
INSERT INTO SM_MOAH
	VALUES (885,
	882,
	884);
INSERT INTO SM_AH
	VALUES (885,
	882);
INSERT INTO SM_ACT
	VALUES (885,
	882,
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
	VALUES (886,
	882,
	885);
INSERT INTO ACT_ACT
	VALUES (886,
	'state',
	0,
	887,
	0,
	0,
	'Goal::Executing',
	0);
INSERT INTO ACT_BLK
	VALUES (887,
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
	886,
	0);
INSERT INTO ACT_SMT
	VALUES (888,
	887,
	889,
	2,
	1,
	'Goal::Executing line: 2');
INSERT INTO ACT_AI
	VALUES (888,
	890,
	891,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (889,
	887,
	892,
	12,
	1,
	'Goal::Executing line: 12');
INSERT INTO ACT_IF
	VALUES (889,
	893,
	894,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (895,
	887,
	0,
	19,
	1,
	'Goal::Executing line: 19');
INSERT INTO ACT_EL
	VALUES (895,
	896,
	897,
	889);
INSERT INTO ACT_SMT
	VALUES (892,
	887,
	898,
	26,
	1,
	'Goal::Executing line: 26');
INSERT INTO ACT_AI
	VALUES (892,
	899,
	900,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (898,
	887,
	0,
	30,
	1,
	'Goal::Executing line: 30');
INSERT INTO ACT_TFM
	VALUES (898,
	786,
	901,
	30,
	6,
	0,
	0);
INSERT INTO V_VAL
	VALUES (891,
	1,
	1,
	2,
	1,
	11,
	0,
	0,
	0,
	0,
	437,
	887);
INSERT INTO V_TVL
	VALUES (891,
	902);
INSERT INTO V_VAL
	VALUES (890,
	0,
	0,
	2,
	20,
	-1,
	0,
	0,
	0,
	0,
	437,
	887);
INSERT INTO V_TRV
	VALUES (890,
	699,
	901,
	1,
	0,
	0);
INSERT INTO V_VAL
	VALUES (903,
	0,
	0,
	12,
	7,
	10,
	0,
	0,
	0,
	0,
	70,
	887);
INSERT INTO V_IRF
	VALUES (903,
	901);
INSERT INTO V_VAL
	VALUES (904,
	0,
	0,
	12,
	12,
	22,
	0,
	0,
	0,
	0,
	437,
	887);
INSERT INTO V_AVL
	VALUES (904,
	903,
	221,
	438);
INSERT INTO V_VAL
	VALUES (905,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	887);
INSERT INTO V_BIN
	VALUES (905,
	906,
	904,
	'!=');
INSERT INTO V_VAL
	VALUES (906,
	0,
	0,
	12,
	44,
	52,
	0,
	0,
	0,
	0,
	437,
	887);
INSERT INTO V_LEN
	VALUES (906,
	744,
	12,
	27);
INSERT INTO V_VAL
	VALUES (907,
	0,
	0,
	12,
	60,
	70,
	0,
	0,
	0,
	0,
	437,
	887);
INSERT INTO V_TVL
	VALUES (907,
	902);
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
	72,
	887);
INSERT INTO V_BIN
	VALUES (908,
	909,
	907,
	'==');
INSERT INTO V_VAL
	VALUES (909,
	0,
	0,
	12,
	92,
	100,
	0,
	0,
	0,
	0,
	437,
	887);
INSERT INTO V_LEN
	VALUES (909,
	744,
	12,
	75);
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
	72,
	887);
INSERT INTO V_BIN
	VALUES (894,
	908,
	905,
	'and');
INSERT INTO V_VAL
	VALUES (910,
	0,
	0,
	19,
	9,
	12,
	0,
	0,
	0,
	0,
	70,
	887);
INSERT INTO V_IRF
	VALUES (910,
	901);
INSERT INTO V_VAL
	VALUES (911,
	0,
	0,
	19,
	14,
	24,
	0,
	0,
	0,
	0,
	437,
	887);
INSERT INTO V_AVL
	VALUES (911,
	910,
	221,
	438);
INSERT INTO V_VAL
	VALUES (912,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	887);
INSERT INTO V_BIN
	VALUES (912,
	913,
	911,
	'==');
INSERT INTO V_VAL
	VALUES (913,
	0,
	0,
	19,
	46,
	54,
	0,
	0,
	0,
	0,
	437,
	887);
INSERT INTO V_LEN
	VALUES (913,
	744,
	19,
	29);
INSERT INTO V_VAL
	VALUES (914,
	0,
	0,
	19,
	62,
	72,
	0,
	0,
	0,
	0,
	437,
	887);
INSERT INTO V_TVL
	VALUES (914,
	902);
INSERT INTO V_VAL
	VALUES (915,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	887);
INSERT INTO V_BIN
	VALUES (915,
	916,
	914,
	'!=');
INSERT INTO V_VAL
	VALUES (916,
	0,
	0,
	19,
	94,
	102,
	0,
	0,
	0,
	0,
	437,
	887);
INSERT INTO V_LEN
	VALUES (916,
	744,
	19,
	77);
INSERT INTO V_VAL
	VALUES (897,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	887);
INSERT INTO V_BIN
	VALUES (897,
	915,
	912,
	'and');
INSERT INTO V_VAL
	VALUES (917,
	1,
	0,
	26,
	1,
	4,
	0,
	0,
	0,
	0,
	70,
	887);
INSERT INTO V_IRF
	VALUES (917,
	901);
INSERT INTO V_VAL
	VALUES (900,
	1,
	0,
	26,
	6,
	16,
	0,
	0,
	0,
	0,
	437,
	887);
INSERT INTO V_AVL
	VALUES (900,
	917,
	221,
	438);
INSERT INTO V_VAL
	VALUES (899,
	0,
	0,
	26,
	20,
	30,
	0,
	0,
	0,
	0,
	437,
	887);
INSERT INTO V_TVL
	VALUES (899,
	902);
INSERT INTO V_VAR
	VALUES (902,
	887,
	'disposition',
	1,
	437);
INSERT INTO V_TRN
	VALUES (902,
	0,
	'');
INSERT INTO V_VAR
	VALUES (901,
	887,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (901,
	0,
	221);
INSERT INTO ACT_BLK
	VALUES (893,
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
	886,
	0);
INSERT INTO ACT_SMT
	VALUES (918,
	893,
	919,
	14,
	3,
	'Goal::Executing line: 14');
INSERT INTO ACT_CR
	VALUES (918,
	920,
	1,
	230,
	14,
	41);
INSERT INTO ACT_SMT
	VALUES (919,
	893,
	921,
	15,
	3,
	'Goal::Executing line: 15');
INSERT INTO ACT_REL
	VALUES (919,
	901,
	920,
	'''has open''',
	235,
	15,
	37,
	15,
	41);
INSERT INTO ACT_SMT
	VALUES (921,
	893,
	922,
	16,
	3,
	'Goal::Executing line: 16');
INSERT INTO ACT_SEL
	VALUES (921,
	923,
	1,
	'one',
	924);
INSERT INTO ACT_SR
	VALUES (921);
INSERT INTO ACT_LNK
	VALUES (925,
	'''is currently executing within''',
	921,
	225,
	926,
	2,
	66,
	17,
	11,
	17,
	26,
	17,
	30);
INSERT INTO ACT_LNK
	VALUES (926,
	'''is timed by''',
	0,
	209,
	0,
	2,
	84,
	17,
	64,
	17,
	77,
	17,
	80);
INSERT INTO ACT_SMT
	VALUES (922,
	893,
	0,
	18,
	3,
	'Goal::Executing line: 18');
INSERT INTO ACT_AI
	VALUES (922,
	927,
	928,
	0,
	0);
INSERT INTO V_VAL
	VALUES (924,
	0,
	0,
	17,
	5,
	8,
	0,
	0,
	0,
	0,
	70,
	893);
INSERT INTO V_IRF
	VALUES (924,
	901);
INSERT INTO V_VAL
	VALUES (929,
	1,
	0,
	18,
	3,
	13,
	0,
	0,
	0,
	0,
	70,
	893);
INSERT INTO V_IRF
	VALUES (929,
	920);
INSERT INTO V_VAL
	VALUES (928,
	1,
	0,
	18,
	15,
	23,
	0,
	0,
	0,
	0,
	13,
	893);
INSERT INTO V_AVL
	VALUES (928,
	929,
	230,
	404);
INSERT INTO V_VAL
	VALUES (930,
	0,
	0,
	18,
	27,
	38,
	0,
	0,
	0,
	0,
	70,
	893);
INSERT INTO V_IRF
	VALUES (930,
	923);
INSERT INTO V_VAL
	VALUES (927,
	0,
	0,
	18,
	40,
	43,
	0,
	0,
	0,
	0,
	13,
	893);
INSERT INTO V_AVL
	VALUES (927,
	930,
	84,
	403);
INSERT INTO V_VAR
	VALUES (920,
	893,
	'achievement',
	1,
	70);
INSERT INTO V_INT
	VALUES (920,
	0,
	230);
INSERT INTO V_VAR
	VALUES (923,
	893,
	'workoutTimer',
	1,
	70);
INSERT INTO V_INT
	VALUES (923,
	0,
	84);
INSERT INTO ACT_BLK
	VALUES (896,
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
	886,
	0);
INSERT INTO ACT_SMT
	VALUES (931,
	896,
	932,
	21,
	3,
	'Goal::Executing line: 21');
INSERT INTO ACT_SEL
	VALUES (931,
	933,
	1,
	'one',
	934);
INSERT INTO ACT_SR
	VALUES (931);
INSERT INTO ACT_LNK
	VALUES (935,
	'''has open''',
	931,
	235,
	0,
	2,
	230,
	21,
	43,
	21,
	55,
	21,
	59);
INSERT INTO ACT_SMT
	VALUES (932,
	896,
	0,
	22,
	3,
	'Goal::Executing line: 22');
INSERT INTO ACT_TFM
	VALUES (932,
	382,
	933,
	22,
	15,
	0,
	0);
INSERT INTO V_VAL
	VALUES (934,
	0,
	0,
	21,
	37,
	40,
	0,
	0,
	0,
	0,
	70,
	896);
INSERT INTO V_IRF
	VALUES (934,
	901);
INSERT INTO V_VAR
	VALUES (933,
	896,
	'achievement',
	1,
	70);
INSERT INTO V_INT
	VALUES (933,
	0,
	230);
INSERT INTO SM_STATE
	VALUES (936,
	882,
	0,
	'Completed',
	2,
	0);
INSERT INTO SM_EIGN
	VALUES (936,
	851,
	882,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (936,
	851,
	882,
	0);
INSERT INTO SM_EIGN
	VALUES (936,
	647,
	882,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (936,
	647,
	882,
	0);
INSERT INTO SM_CH
	VALUES (936,
	883,
	882,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (936,
	883,
	882,
	0);
INSERT INTO SM_MOAH
	VALUES (937,
	882,
	936);
INSERT INTO SM_AH
	VALUES (937,
	882);
INSERT INTO SM_ACT
	VALUES (937,
	882,
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
	VALUES (938,
	882,
	937);
INSERT INTO ACT_ACT
	VALUES (938,
	'state',
	0,
	939,
	0,
	0,
	'Goal::Completed',
	0);
INSERT INTO ACT_BLK
	VALUES (939,
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
	938,
	0);
INSERT INTO ACT_SMT
	VALUES (940,
	939,
	941,
	5,
	1,
	'Goal::Completed line: 5');
INSERT INTO ACT_AI
	VALUES (940,
	942,
	943,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (941,
	939,
	944,
	8,
	1,
	'Goal::Completed line: 8');
INSERT INTO ACT_SEL
	VALUES (941,
	945,
	1,
	'one',
	946);
INSERT INTO ACT_SR
	VALUES (941);
INSERT INTO ACT_LNK
	VALUES (947,
	'''has open''',
	941,
	235,
	0,
	2,
	230,
	8,
	45,
	8,
	57,
	8,
	61);
INSERT INTO ACT_SMT
	VALUES (944,
	939,
	948,
	9,
	1,
	'Goal::Completed line: 9');
INSERT INTO ACT_IF
	VALUES (944,
	949,
	950,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (948,
	939,
	951,
	14,
	1,
	'Goal::Completed line: 14');
INSERT INTO ACT_SEL
	VALUES (948,
	952,
	1,
	'one',
	953);
INSERT INTO ACT_SR
	VALUES (948);
INSERT INTO ACT_LNK
	VALUES (954,
	'''is currently executing within''',
	948,
	225,
	0,
	2,
	66,
	14,
	37,
	14,
	52,
	14,
	56);
INSERT INTO ACT_SMT
	VALUES (951,
	939,
	955,
	15,
	1,
	'Goal::Completed line: 15');
INSERT INTO ACT_REL
	VALUES (951,
	956,
	952,
	'''was executed within''',
	232,
	15,
	31,
	15,
	35);
INSERT INTO ACT_SMT
	VALUES (955,
	939,
	957,
	18,
	1,
	'Goal::Completed line: 18');
INSERT INTO ACT_UNR
	VALUES (955,
	956,
	952,
	'''is currently executing within''',
	225,
	18,
	35,
	18,
	39);
INSERT INTO ACT_SMT
	VALUES (957,
	939,
	958,
	21,
	1,
	'Goal::Completed line: 21');
INSERT INTO ACT_SEL
	VALUES (957,
	959,
	1,
	'one',
	960);
INSERT INTO ACT_SR
	VALUES (957);
INSERT INTO ACT_LNK
	VALUES (961,
	'''specified by''',
	957,
	219,
	0,
	2,
	146,
	21,
	45,
	21,
	54,
	21,
	57);
INSERT INTO ACT_SMT
	VALUES (958,
	939,
	962,
	23,
	1,
	'Goal::Completed line: 23');
INSERT INTO ACT_SEL
	VALUES (958,
	963,
	1,
	'any',
	964);
INSERT INTO ACT_SRW
	VALUES (958,
	965);
INSERT INTO ACT_LNK
	VALUES (966,
	'''includes''',
	958,
	165,
	0,
	3,
	146,
	23,
	45,
	23,
	54,
	23,
	58);
INSERT INTO ACT_SMT
	VALUES (962,
	939,
	0,
	26,
	1,
	'Goal::Completed line: 26');
INSERT INTO ACT_IF
	VALUES (962,
	967,
	968,
	0,
	0);
INSERT INTO V_VAL
	VALUES (943,
	1,
	1,
	5,
	1,
	15,
	0,
	0,
	0,
	0,
	72,
	939);
INSERT INTO V_TVL
	VALUES (943,
	969);
INSERT INTO V_VAL
	VALUES (942,
	0,
	0,
	5,
	24,
	-1,
	5,
	38,
	0,
	0,
	72,
	939);
INSERT INTO V_BRV
	VALUES (942,
	338,
	1,
	5,
	19);
INSERT INTO V_VAL
	VALUES (970,
	0,
	0,
	5,
	54,
	57,
	0,
	0,
	0,
	0,
	70,
	939);
INSERT INTO V_IRF
	VALUES (970,
	956);
INSERT INTO V_VAL
	VALUES (971,
	0,
	0,
	5,
	59,
	73,
	0,
	0,
	0,
	0,
	313,
	939);
INSERT INTO V_AVL
	VALUES (971,
	970,
	221,
	652);
INSERT INTO V_PAR
	VALUES (971,
	0,
	942,
	'timer_inst_ref',
	0,
	5,
	38);
INSERT INTO V_VAL
	VALUES (946,
	0,
	0,
	8,
	39,
	42,
	0,
	0,
	0,
	0,
	70,
	939);
INSERT INTO V_IRF
	VALUES (946,
	956);
INSERT INTO V_VAL
	VALUES (972,
	0,
	0,
	9,
	16,
	30,
	0,
	0,
	0,
	0,
	70,
	939);
INSERT INTO V_IRF
	VALUES (972,
	945);
INSERT INTO V_VAL
	VALUES (973,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	939);
INSERT INTO V_UNY
	VALUES (973,
	972,
	'empty');
INSERT INTO V_VAL
	VALUES (950,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	939);
INSERT INTO V_UNY
	VALUES (950,
	973,
	'not');
INSERT INTO V_VAL
	VALUES (953,
	0,
	0,
	14,
	31,
	34,
	0,
	0,
	0,
	0,
	70,
	939);
INSERT INTO V_IRF
	VALUES (953,
	956);
INSERT INTO V_VAL
	VALUES (960,
	0,
	0,
	21,
	39,
	42,
	0,
	0,
	0,
	0,
	70,
	939);
INSERT INTO V_IRF
	VALUES (960,
	956);
INSERT INTO V_VAL
	VALUES (964,
	0,
	0,
	23,
	36,
	42,
	0,
	0,
	0,
	0,
	70,
	939);
INSERT INTO V_IRF
	VALUES (964,
	952);
INSERT INTO V_VAL
	VALUES (974,
	0,
	0,
	24,
	11,
	-1,
	0,
	0,
	0,
	0,
	70,
	939);
INSERT INTO V_SLR
	VALUES (974,
	0,
	0,
	0);
INSERT INTO V_VAL
	VALUES (975,
	0,
	0,
	24,
	20,
	33,
	0,
	0,
	0,
	0,
	13,
	939);
INSERT INTO V_AVL
	VALUES (975,
	974,
	146,
	167);
INSERT INTO V_VAL
	VALUES (965,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	939);
INSERT INTO V_BIN
	VALUES (965,
	976,
	975,
	'==');
INSERT INTO V_VAL
	VALUES (977,
	0,
	0,
	24,
	39,
	53,
	0,
	0,
	0,
	0,
	70,
	939);
INSERT INTO V_IRF
	VALUES (977,
	959);
INSERT INTO V_VAL
	VALUES (978,
	0,
	0,
	24,
	55,
	68,
	0,
	0,
	0,
	0,
	13,
	939);
INSERT INTO V_AVL
	VALUES (978,
	977,
	146,
	167);
INSERT INTO V_VAL
	VALUES (976,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	13,
	939);
INSERT INTO V_BIN
	VALUES (976,
	979,
	978,
	'+');
INSERT INTO V_VAL
	VALUES (979,
	0,
	0,
	24,
	72,
	72,
	0,
	0,
	0,
	0,
	13,
	939);
INSERT INTO V_LIN
	VALUES (979,
	'1');
INSERT INTO V_VAL
	VALUES (980,
	0,
	0,
	26,
	16,
	27,
	0,
	0,
	0,
	0,
	70,
	939);
INSERT INTO V_IRF
	VALUES (980,
	963);
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
	72,
	939);
INSERT INTO V_UNY
	VALUES (981,
	980,
	'empty');
INSERT INTO V_VAL
	VALUES (968,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	939);
INSERT INTO V_UNY
	VALUES (968,
	981,
	'not');
INSERT INTO V_VAR
	VALUES (969,
	939,
	'cancelSucceeded',
	1,
	72);
INSERT INTO V_TRN
	VALUES (969,
	0,
	'');
INSERT INTO V_VAR
	VALUES (956,
	939,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (956,
	0,
	221);
INSERT INTO V_VAR
	VALUES (945,
	939,
	'openAchievement',
	1,
	70);
INSERT INTO V_INT
	VALUES (945,
	0,
	230);
INSERT INTO V_VAR
	VALUES (952,
	939,
	'session',
	1,
	70);
INSERT INTO V_INT
	VALUES (952,
	0,
	66);
INSERT INTO V_VAR
	VALUES (959,
	939,
	'currentGoalSpec',
	1,
	70);
INSERT INTO V_INT
	VALUES (959,
	0,
	146);
INSERT INTO V_VAR
	VALUES (963,
	939,
	'nextGoalSpec',
	1,
	70);
INSERT INTO V_INT
	VALUES (963,
	0,
	146);
INSERT INTO ACT_BLK
	VALUES (949,
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
	938,
	0);
INSERT INTO ACT_SMT
	VALUES (982,
	949,
	0,
	10,
	3,
	'Goal::Completed line: 10');
INSERT INTO ACT_TFM
	VALUES (982,
	382,
	945,
	10,
	19,
	0,
	0);
INSERT INTO ACT_BLK
	VALUES (967,
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
	938,
	0);
INSERT INTO ACT_SMT
	VALUES (983,
	967,
	0,
	27,
	3,
	'Goal::Completed line: 27');
INSERT INTO ACT_TFM
	VALUES (983,
	618,
	0,
	27,
	9,
	27,
	3);
INSERT INTO V_VAL
	VALUES (984,
	0,
	0,
	27,
	33,
	44,
	0,
	0,
	0,
	0,
	70,
	967);
INSERT INTO V_IRF
	VALUES (984,
	963);
INSERT INTO V_VAL
	VALUES (985,
	0,
	0,
	27,
	46,
	59,
	0,
	0,
	0,
	0,
	13,
	967);
INSERT INTO V_AVL
	VALUES (985,
	984,
	146,
	167);
INSERT INTO V_PAR
	VALUES (985,
	983,
	0,
	'sequenceNumber',
	0,
	27,
	17);
INSERT INTO SM_STATE
	VALUES (986,
	882,
	0,
	'Paused',
	3,
	0);
INSERT INTO SM_SEME
	VALUES (986,
	851,
	882,
	0);
INSERT INTO SM_SEME
	VALUES (986,
	647,
	882,
	0);
INSERT INTO SM_CH
	VALUES (986,
	883,
	882,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (986,
	883,
	882,
	0);
INSERT INTO SM_MOAH
	VALUES (987,
	882,
	986);
INSERT INTO SM_AH
	VALUES (987,
	882);
INSERT INTO SM_ACT
	VALUES (987,
	882,
	1,
	'// Deactivate evaluation timer, ignoring the return code because this 
//   state model ignores any latent timer events.
cancelSucceeded = TIM::timer_cancel( timer_inst_ref: self.evaluationTimer );',
	'');
INSERT INTO ACT_SAB
	VALUES (988,
	882,
	987);
INSERT INTO ACT_ACT
	VALUES (988,
	'state',
	0,
	989,
	0,
	0,
	'Goal::Paused',
	0);
INSERT INTO ACT_BLK
	VALUES (989,
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
	988,
	0);
INSERT INTO ACT_SMT
	VALUES (990,
	989,
	0,
	3,
	1,
	'Goal::Paused line: 3');
INSERT INTO ACT_AI
	VALUES (990,
	991,
	992,
	0,
	0);
INSERT INTO V_VAL
	VALUES (992,
	1,
	1,
	3,
	1,
	15,
	0,
	0,
	0,
	0,
	72,
	989);
INSERT INTO V_TVL
	VALUES (992,
	993);
INSERT INTO V_VAL
	VALUES (991,
	0,
	0,
	3,
	24,
	-1,
	3,
	38,
	0,
	0,
	72,
	989);
INSERT INTO V_BRV
	VALUES (991,
	338,
	1,
	3,
	19);
INSERT INTO V_VAL
	VALUES (994,
	0,
	0,
	3,
	54,
	57,
	0,
	0,
	0,
	0,
	70,
	989);
INSERT INTO V_IRF
	VALUES (994,
	995);
INSERT INTO V_VAL
	VALUES (996,
	0,
	0,
	3,
	59,
	73,
	0,
	0,
	0,
	0,
	313,
	989);
INSERT INTO V_AVL
	VALUES (996,
	994,
	221,
	652);
INSERT INTO V_PAR
	VALUES (996,
	0,
	991,
	'timer_inst_ref',
	0,
	3,
	38);
INSERT INTO V_VAR
	VALUES (993,
	989,
	'cancelSucceeded',
	1,
	72);
INSERT INTO V_TRN
	VALUES (993,
	0,
	'');
INSERT INTO V_VAR
	VALUES (995,
	989,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (995,
	0,
	221);
INSERT INTO SM_NSTXN
	VALUES (997,
	882,
	884,
	851,
	0);
INSERT INTO SM_TAH
	VALUES (998,
	882,
	997);
INSERT INTO SM_AH
	VALUES (998,
	882);
INSERT INTO SM_ACT
	VALUES (998,
	882,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (999,
	882,
	998);
INSERT INTO ACT_ACT
	VALUES (999,
	'transition',
	0,
	1000,
	0,
	0,
	'Goal1: Completed',
	0);
INSERT INTO ACT_BLK
	VALUES (1000,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	999,
	0);
INSERT INTO SM_TXN
	VALUES (997,
	882,
	936,
	0);
INSERT INTO SM_NSTXN
	VALUES (1001,
	882,
	884,
	647,
	0);
INSERT INTO SM_TAH
	VALUES (1002,
	882,
	1001);
INSERT INTO SM_AH
	VALUES (1002,
	882);
INSERT INTO SM_ACT
	VALUES (1002,
	882,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1003,
	882,
	1002);
INSERT INTO ACT_ACT
	VALUES (1003,
	'transition',
	0,
	1004,
	0,
	0,
	'Goal2: Evaluate',
	0);
INSERT INTO ACT_BLK
	VALUES (1004,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1003,
	0);
INSERT INTO SM_TXN
	VALUES (1001,
	882,
	884,
	0);
INSERT INTO SM_NSTXN
	VALUES (1005,
	882,
	884,
	883,
	0);
INSERT INTO SM_TAH
	VALUES (1006,
	882,
	1005);
INSERT INTO SM_AH
	VALUES (1006,
	882);
INSERT INTO SM_ACT
	VALUES (1006,
	882,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1007,
	882,
	1006);
INSERT INTO ACT_ACT
	VALUES (1007,
	'transition',
	0,
	1008,
	0,
	0,
	'Goal3: Pause',
	0);
INSERT INTO ACT_BLK
	VALUES (1008,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1007,
	0);
INSERT INTO SM_TXN
	VALUES (1005,
	882,
	986,
	0);
INSERT INTO SM_NSTXN
	VALUES (1009,
	882,
	986,
	647,
	0);
INSERT INTO SM_TAH
	VALUES (1010,
	882,
	1009);
INSERT INTO SM_AH
	VALUES (1010,
	882);
INSERT INTO SM_ACT
	VALUES (1010,
	882,
	1,
	'// Start a timer that periodically causes evaluation of goal achievement.
create event instance evaluateEvent of Goal2:Evaluate to self;
self.evaluationTimer = TIM::timer_start_recurring( event_inst: evaluateEvent, microseconds: evaluationPeriod );',
	'');
INSERT INTO ACT_TAB
	VALUES (1011,
	882,
	1010);
INSERT INTO ACT_ACT
	VALUES (1011,
	'transition',
	0,
	1012,
	0,
	0,
	'Goal2: Evaluate',
	0);
INSERT INTO ACT_BLK
	VALUES (1012,
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
	1011,
	0);
INSERT INTO ACT_SMT
	VALUES (1013,
	1012,
	1014,
	2,
	1,
	'Goal2: Evaluate line: 2');
INSERT INTO E_ESS
	VALUES (1013,
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
	VALUES (1013,
	1,
	1015);
INSERT INTO E_CSME
	VALUES (1013,
	647);
INSERT INTO E_CEI
	VALUES (1013,
	1016);
INSERT INTO ACT_SMT
	VALUES (1014,
	1012,
	0,
	3,
	1,
	'Goal2: Evaluate line: 3');
INSERT INTO ACT_AI
	VALUES (1014,
	1017,
	1018,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1019,
	1,
	0,
	3,
	1,
	4,
	0,
	0,
	0,
	0,
	70,
	1012);
INSERT INTO V_IRF
	VALUES (1019,
	1016);
INSERT INTO V_VAL
	VALUES (1018,
	1,
	0,
	3,
	6,
	20,
	0,
	0,
	0,
	0,
	313,
	1012);
INSERT INTO V_AVL
	VALUES (1018,
	1019,
	221,
	652);
INSERT INTO V_VAL
	VALUES (1017,
	0,
	0,
	3,
	29,
	-1,
	3,
	52,
	3,
	79,
	313,
	1012);
INSERT INTO V_BRV
	VALUES (1017,
	319,
	1,
	3,
	24);
INSERT INTO V_VAL
	VALUES (1020,
	0,
	0,
	3,
	64,
	76,
	0,
	0,
	0,
	0,
	316,
	1012);
INSERT INTO V_TVL
	VALUES (1020,
	1015);
INSERT INTO V_PAR
	VALUES (1020,
	0,
	1017,
	'event_inst',
	1021,
	3,
	52);
INSERT INTO V_VAL
	VALUES (1021,
	0,
	0,
	3,
	93,
	108,
	0,
	0,
	0,
	0,
	13,
	1012);
INSERT INTO V_SCV
	VALUES (1021,
	655,
	13);
INSERT INTO V_PAR
	VALUES (1021,
	0,
	1017,
	'microseconds',
	0,
	3,
	79);
INSERT INTO V_VAR
	VALUES (1015,
	1012,
	'evaluateEvent',
	1,
	316);
INSERT INTO V_TRN
	VALUES (1015,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1016,
	1012,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (1016,
	0,
	221);
INSERT INTO SM_TXN
	VALUES (1009,
	882,
	884,
	0);
INSERT INTO SM_NSTXN
	VALUES (1022,
	882,
	986,
	851,
	0);
INSERT INTO SM_TAH
	VALUES (1023,
	882,
	1022);
INSERT INTO SM_AH
	VALUES (1023,
	882);
INSERT INTO SM_ACT
	VALUES (1023,
	882,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1024,
	882,
	1023);
INSERT INTO ACT_ACT
	VALUES (1024,
	'transition',
	0,
	1025,
	0,
	0,
	'Goal1: Completed',
	0);
INSERT INTO ACT_BLK
	VALUES (1025,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1024,
	0);
INSERT INTO SM_TXN
	VALUES (1022,
	882,
	936,
	0);
INSERT INTO PE_PE
	VALUES (146,
	1,
	191,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (146,
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
	VALUES (171,
	146);
INSERT INTO O_BATTR
	VALUES (171,
	146);
INSERT INTO O_ATTR
	VALUES (171,
	146,
	167,
	'minimum',
	'The minimum value for the quantity associated with the goal.
For example, a minimum heart rate to be maintained.
The units (e.g., beats per minute or minutes per km) for this
attribute are determined by another attribute indicating the 
type of criteria for this goal.',
	'',
	'minimum',
	0,
	170,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (174,
	146);
INSERT INTO O_BATTR
	VALUES (174,
	146);
INSERT INTO O_ATTR
	VALUES (174,
	146,
	171,
	'maximum',
	'The maximum value for the quantity associated with the goal.
For example, a maximum pace to be maintained.
The units (e.g., beats per minute or minutes per km) for this
attribute are determined by another attribute indicating the 
type of criteria for this goal.',
	'',
	'maximum',
	0,
	170,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (177,
	146);
INSERT INTO O_BATTR
	VALUES (177,
	146);
INSERT INTO O_ATTR
	VALUES (177,
	146,
	174,
	'span',
	'The span of the goal.  For example, a time-based goal specifies a span
as a duration or length of time, while a distance-based goal uses specifies
a distance.  The units for this attribute (e.g., seconds or km) are specified 
by another attribute indicating the type of span.
',
	'',
	'span',
	0,
	170,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (181,
	146);
INSERT INTO O_BATTR
	VALUES (181,
	146);
INSERT INTO O_ATTR
	VALUES (181,
	146,
	177,
	'criteriaType',
	'See data type description.',
	'',
	'criteriaType',
	0,
	180,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (185,
	146);
INSERT INTO O_BATTR
	VALUES (185,
	146);
INSERT INTO O_ATTR
	VALUES (185,
	146,
	181,
	'spanType',
	'See data type description.',
	'',
	'spanType',
	0,
	184,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (167,
	146);
INSERT INTO O_BATTR
	VALUES (167,
	146);
INSERT INTO O_ATTR
	VALUES (167,
	146,
	0,
	'sequenceNumber',
	'Workout goals are sequenced according to a number specified by the user when the goal
is specified.  This attribute represents that user-specified number. ',
	'',
	'sequenceNumber',
	0,
	13,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	146);
INSERT INTO O_OIDA
	VALUES (167,
	146,
	0,
	'sequenceNumber');
INSERT INTO O_ID
	VALUES (1,
	146);
INSERT INTO O_ID
	VALUES (2,
	146);
INSERT INTO PE_PE
	VALUES (216,
	1,
	191,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (216,
	'HeartRateSample',
	5,
	'HeartRateSample',
	'Each instance represents a single heart-rate sample.',
	0);
INSERT INTO O_NBATTR
	VALUES (1026,
	216);
INSERT INTO O_BATTR
	VALUES (1026,
	216);
INSERT INTO O_ATTR
	VALUES (1026,
	216,
	0,
	'heartRate',
	'Heart rate expressed in beats per minute.',
	'',
	'heartRate',
	0,
	13,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1027,
	216);
INSERT INTO O_BATTR
	VALUES (1027,
	216);
INSERT INTO O_ATTR
	VALUES (1027,
	216,
	1026,
	'time',
	'Number of seconds between start time for the associated workout and recording of this heart rate sample.',
	'',
	'time',
	0,
	13,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	216);
INSERT INTO O_ID
	VALUES (1,
	216);
INSERT INTO O_ID
	VALUES (2,
	216);
INSERT INTO PE_PE
	VALUES (204,
	1,
	191,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (204,
	'LapMarker',
	4,
	'LapMarker',
	'Each instance represents a single lap marker.',
	0);
INSERT INTO O_NBATTR
	VALUES (1028,
	204);
INSERT INTO O_BATTR
	VALUES (1028,
	204);
INSERT INTO O_ATTR
	VALUES (1028,
	204,
	0,
	'lapTime',
	'Number of seconds between start time for the associated workout and this lap marker.',
	'',
	'lapTime',
	0,
	13,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	204);
INSERT INTO O_ID
	VALUES (1,
	204);
INSERT INTO O_ID
	VALUES (2,
	204);
INSERT INTO PE_PE
	VALUES (193,
	1,
	191,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (193,
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
	VALUES (1029,
	193,
	'addTrackPoint',
	'',
	240,
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
	VALUES (1030,
	1029);
INSERT INTO ACT_ACT
	VALUES (1030,
	'operation',
	0,
	1031,
	0,
	0,
	'TrackLog::addTrackPoint',
	0);
INSERT INTO ACT_BLK
	VALUES (1031,
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
	1030,
	0);
INSERT INTO ACT_SMT
	VALUES (1032,
	1031,
	1033,
	5,
	1,
	'TrackLog::addTrackPoint line: 5');
INSERT INTO ACT_CR
	VALUES (1032,
	1034,
	1,
	195,
	5,
	38);
INSERT INTO ACT_SMT
	VALUES (1033,
	1031,
	1035,
	6,
	1,
	'TrackLog::addTrackPoint line: 6');
INSERT INTO ACT_SEL
	VALUES (1033,
	1036,
	1,
	'one',
	1037);
INSERT INTO ACT_SR
	VALUES (1033);
INSERT INTO ACT_LNK
	VALUES (1038,
	'''represents path for''',
	1033,
	212,
	1039,
	2,
	66,
	7,
	9,
	7,
	24,
	7,
	27);
INSERT INTO ACT_LNK
	VALUES (1039,
	'''is timed by''',
	0,
	209,
	0,
	2,
	84,
	7,
	51,
	7,
	64,
	7,
	67);
INSERT INTO ACT_SMT
	VALUES (1035,
	1031,
	1040,
	8,
	1,
	'TrackLog::addTrackPoint line: 8');
INSERT INTO ACT_AI
	VALUES (1035,
	1041,
	1042,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1040,
	1031,
	1043,
	9,
	1,
	'TrackLog::addTrackPoint line: 9');
INSERT INTO ACT_IOP
	VALUES (1040,
	9,
	16,
	9,
	6,
	0,
	14,
	0);
INSERT INTO ACT_SMT
	VALUES (1043,
	1031,
	1044,
	12,
	1,
	'TrackLog::addTrackPoint line: 12');
INSERT INTO ACT_SEL
	VALUES (1043,
	1045,
	1,
	'one',
	1046);
INSERT INTO ACT_SR
	VALUES (1043);
INSERT INTO ACT_LNK
	VALUES (1047,
	'',
	1043,
	192,
	0,
	2,
	195,
	12,
	40,
	12,
	51,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1044,
	1031,
	1048,
	13,
	1,
	'TrackLog::addTrackPoint line: 13');
INSERT INTO ACT_SEL
	VALUES (1044,
	1049,
	1,
	'one',
	1050);
INSERT INTO ACT_SR
	VALUES (1044);
INSERT INTO ACT_LNK
	VALUES (1051,
	'',
	1044,
	200,
	0,
	2,
	195,
	13,
	39,
	13,
	50,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1048,
	1031,
	1052,
	16,
	1,
	'TrackLog::addTrackPoint line: 16');
INSERT INTO ACT_AI
	VALUES (1048,
	1053,
	1054,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1052,
	1031,
	1055,
	17,
	1,
	'TrackLog::addTrackPoint line: 17');
INSERT INTO ACT_AI
	VALUES (1052,
	1056,
	1057,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1055,
	1031,
	1058,
	18,
	1,
	'TrackLog::addTrackPoint line: 18');
INSERT INTO ACT_AI
	VALUES (1055,
	1059,
	1060,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1058,
	1031,
	1061,
	19,
	1,
	'TrackLog::addTrackPoint line: 19');
INSERT INTO ACT_IF
	VALUES (1058,
	1062,
	1063,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1064,
	1031,
	0,
	23,
	1,
	'TrackLog::addTrackPoint line: 23');
INSERT INTO ACT_E
	VALUES (1064,
	1065,
	1058);
INSERT INTO ACT_SMT
	VALUES (1061,
	1031,
	1066,
	33,
	1,
	'TrackLog::addTrackPoint line: 33');
INSERT INTO ACT_AI
	VALUES (1061,
	1067,
	1068,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1066,
	1031,
	1069,
	34,
	1,
	'TrackLog::addTrackPoint line: 34');
INSERT INTO ACT_IF
	VALUES (1066,
	1070,
	1071,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1069,
	1031,
	1072,
	39,
	1,
	'TrackLog::addTrackPoint line: 39');
INSERT INTO ACT_SEL
	VALUES (1069,
	1073,
	1,
	'one',
	1074);
INSERT INTO ACT_SR
	VALUES (1069);
INSERT INTO ACT_LNK
	VALUES (1075,
	'''represents path for''',
	1069,
	212,
	0,
	2,
	66,
	39,
	37,
	39,
	52,
	39,
	55);
INSERT INTO ACT_SMT
	VALUES (1072,
	1031,
	1076,
	40,
	1,
	'TrackLog::addTrackPoint line: 40');
INSERT INTO ACT_AI
	VALUES (1072,
	1077,
	1078,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1076,
	1031,
	0,
	43,
	1,
	'TrackLog::addTrackPoint line: 43');
INSERT INTO ACT_TFM
	VALUES (1076,
	1079,
	1080,
	43,
	6,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1037,
	0,
	0,
	7,
	3,
	6,
	0,
	0,
	0,
	0,
	70,
	1031);
INSERT INTO V_IRF
	VALUES (1037,
	1080);
INSERT INTO V_VAL
	VALUES (1081,
	1,
	0,
	8,
	1,
	10,
	0,
	0,
	0,
	0,
	70,
	1031);
INSERT INTO V_IRF
	VALUES (1081,
	1034);
INSERT INTO V_VAL
	VALUES (1042,
	1,
	0,
	8,
	12,
	15,
	0,
	0,
	0,
	0,
	13,
	1031);
INSERT INTO V_AVL
	VALUES (1042,
	1081,
	195,
	1082);
INSERT INTO V_VAL
	VALUES (1083,
	0,
	0,
	8,
	19,
	30,
	0,
	0,
	0,
	0,
	70,
	1031);
INSERT INTO V_IRF
	VALUES (1083,
	1036);
INSERT INTO V_VAL
	VALUES (1041,
	0,
	0,
	8,
	32,
	35,
	0,
	0,
	0,
	0,
	13,
	1031);
INSERT INTO V_AVL
	VALUES (1041,
	1083,
	84,
	403);
INSERT INTO V_VAL
	VALUES (1084,
	0,
	0,
	9,
	39,
	48,
	0,
	0,
	0,
	0,
	70,
	1031);
INSERT INTO V_IRF
	VALUES (1084,
	1034);
INSERT INTO V_VAL
	VALUES (1085,
	0,
	0,
	9,
	50,
	57,
	0,
	0,
	0,
	0,
	170,
	1031);
INSERT INTO V_AVL
	VALUES (1085,
	1084,
	195,
	1086);
INSERT INTO V_PAR
	VALUES (1085,
	1040,
	0,
	'latitude',
	1087,
	9,
	29);
INSERT INTO V_VAL
	VALUES (1088,
	0,
	0,
	9,
	71,
	80,
	0,
	0,
	0,
	0,
	70,
	1031);
INSERT INTO V_IRF
	VALUES (1088,
	1034);
INSERT INTO V_VAL
	VALUES (1087,
	0,
	0,
	9,
	82,
	90,
	0,
	0,
	0,
	0,
	170,
	1031);
INSERT INTO V_AVL
	VALUES (1087,
	1088,
	195,
	1089);
INSERT INTO V_PAR
	VALUES (1087,
	1040,
	0,
	'longitude',
	0,
	9,
	60);
INSERT INTO V_VAL
	VALUES (1046,
	0,
	0,
	12,
	34,
	37,
	0,
	0,
	0,
	0,
	70,
	1031);
INSERT INTO V_IRF
	VALUES (1046,
	1080);
INSERT INTO V_VAL
	VALUES (1050,
	0,
	0,
	13,
	33,
	36,
	0,
	0,
	0,
	0,
	70,
	1031);
INSERT INTO V_IRF
	VALUES (1050,
	1080);
INSERT INTO V_VAL
	VALUES (1054,
	1,
	1,
	16,
	1,
	17,
	0,
	0,
	0,
	0,
	72,
	1031);
INSERT INTO V_TVL
	VALUES (1054,
	1090);
INSERT INTO V_VAL
	VALUES (1053,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1031);
INSERT INTO V_LBO
	VALUES (1053,
	'FALSE');
INSERT INTO V_VAL
	VALUES (1057,
	1,
	1,
	17,
	1,
	12,
	0,
	0,
	0,
	0,
	170,
	1031);
INSERT INTO V_TVL
	VALUES (1057,
	1091);
INSERT INTO V_VAL
	VALUES (1056,
	0,
	0,
	17,
	16,
	18,
	0,
	0,
	0,
	0,
	170,
	1031);
INSERT INTO V_LRL
	VALUES (1056,
	'0.0');
INSERT INTO V_VAL
	VALUES (1060,
	1,
	1,
	18,
	1,
	13,
	0,
	0,
	0,
	0,
	170,
	1031);
INSERT INTO V_TVL
	VALUES (1060,
	1092);
INSERT INTO V_VAL
	VALUES (1059,
	0,
	0,
	18,
	17,
	19,
	0,
	0,
	0,
	0,
	170,
	1031);
INSERT INTO V_LRL
	VALUES (1059,
	'0.0');
INSERT INTO V_VAL
	VALUES (1093,
	0,
	0,
	19,
	11,
	20,
	0,
	0,
	0,
	0,
	70,
	1031);
INSERT INTO V_IRF
	VALUES (1093,
	1045);
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
	72,
	1031);
INSERT INTO V_UNY
	VALUES (1063,
	1093,
	'empty');
INSERT INTO V_VAL
	VALUES (1068,
	1,
	1,
	33,
	1,
	8,
	0,
	0,
	0,
	0,
	170,
	1031);
INSERT INTO V_TVL
	VALUES (1068,
	1094);
INSERT INTO V_VAL
	VALUES (1067,
	0,
	0,
	33,
	12,
	14,
	0,
	0,
	0,
	0,
	170,
	1031);
INSERT INTO V_LRL
	VALUES (1067,
	'0.0');
INSERT INTO V_VAL
	VALUES (1095,
	0,
	0,
	34,
	9,
	25,
	0,
	0,
	0,
	0,
	72,
	1031);
INSERT INTO V_TVL
	VALUES (1095,
	1090);
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
	72,
	1031);
INSERT INTO V_UNY
	VALUES (1071,
	1095,
	'not');
INSERT INTO V_VAL
	VALUES (1074,
	0,
	0,
	39,
	31,
	34,
	0,
	0,
	0,
	0,
	70,
	1031);
INSERT INTO V_IRF
	VALUES (1074,
	1080);
INSERT INTO V_VAL
	VALUES (1096,
	1,
	0,
	40,
	1,
	7,
	0,
	0,
	0,
	0,
	70,
	1031);
INSERT INTO V_IRF
	VALUES (1096,
	1073);
INSERT INTO V_VAL
	VALUES (1078,
	1,
	0,
	40,
	9,
	27,
	0,
	0,
	0,
	0,
	170,
	1031);
INSERT INTO V_AVL
	VALUES (1078,
	1096,
	66,
	481);
INSERT INTO V_VAL
	VALUES (1097,
	0,
	0,
	40,
	31,
	37,
	0,
	0,
	0,
	0,
	70,
	1031);
INSERT INTO V_IRF
	VALUES (1097,
	1073);
INSERT INTO V_VAL
	VALUES (1098,
	0,
	0,
	40,
	39,
	57,
	0,
	0,
	0,
	0,
	170,
	1031);
INSERT INTO V_AVL
	VALUES (1098,
	1097,
	66,
	481);
INSERT INTO V_VAL
	VALUES (1077,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	170,
	1031);
INSERT INTO V_BIN
	VALUES (1077,
	1099,
	1098,
	'+');
INSERT INTO V_VAL
	VALUES (1099,
	0,
	0,
	40,
	61,
	68,
	0,
	0,
	0,
	0,
	170,
	1031);
INSERT INTO V_TVL
	VALUES (1099,
	1094);
INSERT INTO V_VAR
	VALUES (1034,
	1031,
	'trackPoint',
	1,
	70);
INSERT INTO V_INT
	VALUES (1034,
	0,
	195);
INSERT INTO V_VAR
	VALUES (1036,
	1031,
	'workoutTimer',
	1,
	70);
INSERT INTO V_INT
	VALUES (1036,
	0,
	84);
INSERT INTO V_VAR
	VALUES (1080,
	1031,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (1080,
	0,
	193);
INSERT INTO V_VAR
	VALUES (1045,
	1031,
	'firstPoint',
	1,
	70);
INSERT INTO V_INT
	VALUES (1045,
	0,
	195);
INSERT INTO V_VAR
	VALUES (1049,
	1031,
	'lastPoint',
	1,
	70);
INSERT INTO V_INT
	VALUES (1049,
	0,
	195);
INSERT INTO V_VAR
	VALUES (1090,
	1031,
	'isFirstTrackPoint',
	1,
	72);
INSERT INTO V_TRN
	VALUES (1090,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1091,
	1031,
	'lastLatitude',
	1,
	170);
INSERT INTO V_TRN
	VALUES (1091,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1092,
	1031,
	'lastLongitude',
	1,
	170);
INSERT INTO V_TRN
	VALUES (1092,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1094,
	1031,
	'distance',
	1,
	170);
INSERT INTO V_TRN
	VALUES (1094,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1073,
	1031,
	'session',
	1,
	70);
INSERT INTO V_INT
	VALUES (1073,
	0,
	66);
INSERT INTO ACT_BLK
	VALUES (1062,
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
	1030,
	0);
INSERT INTO ACT_SMT
	VALUES (1100,
	1062,
	1101,
	20,
	3,
	'TrackLog::addTrackPoint line: 20');
INSERT INTO ACT_AI
	VALUES (1100,
	1102,
	1103,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1101,
	1062,
	1104,
	21,
	3,
	'TrackLog::addTrackPoint line: 21');
INSERT INTO ACT_REL
	VALUES (1101,
	1080,
	1034,
	'''has first''',
	192,
	21,
	36,
	21,
	39);
INSERT INTO ACT_SMT
	VALUES (1104,
	1062,
	0,
	22,
	3,
	'TrackLog::addTrackPoint line: 22');
INSERT INTO ACT_REL
	VALUES (1104,
	1080,
	1034,
	'''has last''',
	200,
	22,
	36,
	22,
	39);
INSERT INTO V_VAL
	VALUES (1103,
	1,
	0,
	20,
	3,
	19,
	0,
	0,
	0,
	0,
	72,
	1062);
INSERT INTO V_TVL
	VALUES (1103,
	1090);
INSERT INTO V_VAL
	VALUES (1102,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1062);
INSERT INTO V_LBO
	VALUES (1102,
	'TRUE');
INSERT INTO ACT_BLK
	VALUES (1065,
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
	1030,
	0);
INSERT INTO ACT_SMT
	VALUES (1105,
	1065,
	1106,
	25,
	3,
	'TrackLog::addTrackPoint line: 25');
INSERT INTO ACT_AI
	VALUES (1105,
	1107,
	1108,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1106,
	1065,
	1109,
	26,
	3,
	'TrackLog::addTrackPoint line: 26');
INSERT INTO ACT_AI
	VALUES (1106,
	1110,
	1111,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1109,
	1065,
	1112,
	27,
	3,
	'TrackLog::addTrackPoint line: 27');
INSERT INTO ACT_UNR
	VALUES (1109,
	1080,
	1049,
	'''has last''',
	200,
	27,
	39,
	27,
	42);
INSERT INTO ACT_SMT
	VALUES (1112,
	1065,
	1113,
	28,
	3,
	'TrackLog::addTrackPoint line: 28');
INSERT INTO ACT_REL
	VALUES (1112,
	1080,
	1034,
	'''has last''',
	200,
	28,
	36,
	28,
	39);
INSERT INTO ACT_SMT
	VALUES (1113,
	1065,
	0,
	29,
	3,
	'TrackLog::addTrackPoint line: 29');
INSERT INTO ACT_REL
	VALUES (1113,
	1049,
	1034,
	'''follows''',
	197,
	29,
	41,
	29,
	44);
INSERT INTO V_VAL
	VALUES (1108,
	1,
	0,
	25,
	3,
	14,
	0,
	0,
	0,
	0,
	170,
	1065);
INSERT INTO V_TVL
	VALUES (1108,
	1091);
INSERT INTO V_VAL
	VALUES (1114,
	0,
	0,
	25,
	18,
	26,
	0,
	0,
	0,
	0,
	70,
	1065);
INSERT INTO V_IRF
	VALUES (1114,
	1049);
INSERT INTO V_VAL
	VALUES (1107,
	0,
	0,
	25,
	28,
	35,
	0,
	0,
	0,
	0,
	170,
	1065);
INSERT INTO V_AVL
	VALUES (1107,
	1114,
	195,
	1086);
INSERT INTO V_VAL
	VALUES (1111,
	1,
	0,
	26,
	3,
	15,
	0,
	0,
	0,
	0,
	170,
	1065);
INSERT INTO V_TVL
	VALUES (1111,
	1092);
INSERT INTO V_VAL
	VALUES (1115,
	0,
	0,
	26,
	19,
	27,
	0,
	0,
	0,
	0,
	70,
	1065);
INSERT INTO V_IRF
	VALUES (1115,
	1049);
INSERT INTO V_VAL
	VALUES (1110,
	0,
	0,
	26,
	29,
	37,
	0,
	0,
	0,
	0,
	170,
	1065);
INSERT INTO V_AVL
	VALUES (1110,
	1115,
	195,
	1089);
INSERT INTO ACT_BLK
	VALUES (1070,
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
	1030,
	0);
INSERT INTO ACT_SMT
	VALUES (1116,
	1070,
	0,
	35,
	3,
	'TrackLog::addTrackPoint line: 35');
INSERT INTO ACT_AI
	VALUES (1116,
	1117,
	1118,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1118,
	1,
	0,
	35,
	8,
	15,
	0,
	0,
	0,
	0,
	170,
	1070);
INSERT INTO V_TVL
	VALUES (1118,
	1094);
INSERT INTO V_VAL
	VALUES (1117,
	0,
	0,
	35,
	29,
	40,
	35,
	42,
	36,
	66,
	170,
	1070);
INSERT INTO V_MSV
	VALUES (1117,
	0,
	7,
	1,
	35,
	19,
	0);
INSERT INTO V_VAL
	VALUES (1119,
	0,
	0,
	35,
	51,
	62,
	0,
	0,
	0,
	0,
	170,
	1070);
INSERT INTO V_TVL
	VALUES (1119,
	1091);
INSERT INTO V_PAR
	VALUES (1119,
	0,
	1117,
	'fromLat',
	1120,
	35,
	42);
INSERT INTO V_VAL
	VALUES (1120,
	0,
	0,
	35,
	75,
	87,
	0,
	0,
	0,
	0,
	170,
	1070);
INSERT INTO V_TVL
	VALUES (1120,
	1092);
INSERT INTO V_PAR
	VALUES (1120,
	0,
	1117,
	'fromLong',
	1121,
	35,
	65);
INSERT INTO V_VAL
	VALUES (1122,
	0,
	0,
	36,
	45,
	54,
	0,
	0,
	0,
	0,
	70,
	1070);
INSERT INTO V_IRF
	VALUES (1122,
	1034);
INSERT INTO V_VAL
	VALUES (1121,
	0,
	0,
	36,
	56,
	63,
	0,
	0,
	0,
	0,
	170,
	1070);
INSERT INTO V_AVL
	VALUES (1121,
	1122,
	195,
	1086);
INSERT INTO V_PAR
	VALUES (1121,
	0,
	1117,
	'toLat',
	1123,
	36,
	38);
INSERT INTO V_VAL
	VALUES (1124,
	0,
	0,
	36,
	74,
	83,
	0,
	0,
	0,
	0,
	70,
	1070);
INSERT INTO V_IRF
	VALUES (1124,
	1034);
INSERT INTO V_VAL
	VALUES (1123,
	0,
	0,
	36,
	85,
	93,
	0,
	0,
	0,
	0,
	170,
	1070);
INSERT INTO V_AVL
	VALUES (1123,
	1124,
	195,
	1089);
INSERT INTO V_PAR
	VALUES (1123,
	0,
	1117,
	'toLong',
	0,
	36,
	66);
INSERT INTO O_TFR
	VALUES (1125,
	193,
	'clearTrackPoints',
	'',
	240,
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
	1029);
INSERT INTO ACT_OPB
	VALUES (1126,
	1125);
INSERT INTO ACT_ACT
	VALUES (1126,
	'operation',
	0,
	1127,
	0,
	0,
	'TrackLog::clearTrackPoints',
	0);
INSERT INTO ACT_BLK
	VALUES (1127,
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
	1126,
	0);
INSERT INTO ACT_SMT
	VALUES (1128,
	1127,
	1129,
	1,
	1,
	'TrackLog::clearTrackPoints line: 1');
INSERT INTO ACT_SEL
	VALUES (1128,
	1130,
	1,
	'one',
	1131);
INSERT INTO ACT_SR
	VALUES (1128);
INSERT INTO ACT_LNK
	VALUES (1132,
	'',
	1128,
	192,
	0,
	2,
	195,
	1,
	39,
	1,
	50,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1129,
	1127,
	1133,
	2,
	1,
	'TrackLog::clearTrackPoints line: 2');
INSERT INTO ACT_SEL
	VALUES (1129,
	1134,
	1,
	'one',
	1135);
INSERT INTO ACT_SR
	VALUES (1129);
INSERT INTO ACT_LNK
	VALUES (1136,
	'',
	1129,
	200,
	0,
	2,
	195,
	2,
	39,
	2,
	50,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1133,
	1127,
	1137,
	4,
	1,
	'TrackLog::clearTrackPoints line: 4');
INSERT INTO ACT_IF
	VALUES (1133,
	1138,
	1139,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1137,
	1127,
	1140,
	8,
	1,
	'TrackLog::clearTrackPoints line: 8');
INSERT INTO ACT_IF
	VALUES (1137,
	1141,
	1142,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1140,
	1127,
	0,
	12,
	1,
	'TrackLog::clearTrackPoints line: 12');
INSERT INTO ACT_WHL
	VALUES (1140,
	1143,
	1144);
INSERT INTO V_VAL
	VALUES (1131,
	0,
	0,
	1,
	33,
	36,
	0,
	0,
	0,
	0,
	70,
	1127);
INSERT INTO V_IRF
	VALUES (1131,
	1145);
INSERT INTO V_VAL
	VALUES (1135,
	0,
	0,
	2,
	33,
	36,
	0,
	0,
	0,
	0,
	70,
	1127);
INSERT INTO V_IRF
	VALUES (1135,
	1145);
INSERT INTO V_VAL
	VALUES (1146,
	0,
	0,
	4,
	15,
	23,
	0,
	0,
	0,
	0,
	70,
	1127);
INSERT INTO V_IRF
	VALUES (1146,
	1134);
INSERT INTO V_VAL
	VALUES (1147,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1127);
INSERT INTO V_UNY
	VALUES (1147,
	1146,
	'empty');
INSERT INTO V_VAL
	VALUES (1139,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1127);
INSERT INTO V_UNY
	VALUES (1139,
	1147,
	'not');
INSERT INTO V_VAL
	VALUES (1148,
	0,
	0,
	8,
	15,
	23,
	0,
	0,
	0,
	0,
	70,
	1127);
INSERT INTO V_IRF
	VALUES (1148,
	1130);
INSERT INTO V_VAL
	VALUES (1149,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1127);
INSERT INTO V_UNY
	VALUES (1149,
	1148,
	'empty');
INSERT INTO V_VAL
	VALUES (1142,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1127);
INSERT INTO V_UNY
	VALUES (1142,
	1149,
	'not');
INSERT INTO V_VAL
	VALUES (1150,
	0,
	0,
	12,
	18,
	26,
	0,
	0,
	0,
	0,
	70,
	1127);
INSERT INTO V_IRF
	VALUES (1150,
	1130);
INSERT INTO V_VAL
	VALUES (1151,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1127);
INSERT INTO V_UNY
	VALUES (1151,
	1150,
	'empty');
INSERT INTO V_VAL
	VALUES (1143,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1127);
INSERT INTO V_UNY
	VALUES (1143,
	1151,
	'not');
INSERT INTO V_VAR
	VALUES (1130,
	1127,
	'nextPoint',
	1,
	70);
INSERT INTO V_INT
	VALUES (1130,
	0,
	195);
INSERT INTO V_VAR
	VALUES (1145,
	1127,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (1145,
	0,
	193);
INSERT INTO V_VAR
	VALUES (1134,
	1127,
	'lastPoint',
	1,
	70);
INSERT INTO V_INT
	VALUES (1134,
	0,
	195);
INSERT INTO ACT_BLK
	VALUES (1138,
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
	1126,
	0);
INSERT INTO ACT_SMT
	VALUES (1152,
	1138,
	0,
	5,
	3,
	'TrackLog::clearTrackPoints line: 5');
INSERT INTO ACT_UNR
	VALUES (1152,
	1145,
	1134,
	'',
	200,
	5,
	39,
	0,
	0);
INSERT INTO ACT_BLK
	VALUES (1141,
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
	1126,
	0);
INSERT INTO ACT_SMT
	VALUES (1153,
	1141,
	0,
	9,
	3,
	'TrackLog::clearTrackPoints line: 9');
INSERT INTO ACT_UNR
	VALUES (1153,
	1145,
	1130,
	'',
	192,
	9,
	39,
	0,
	0);
INSERT INTO ACT_BLK
	VALUES (1144,
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
	1126,
	0);
INSERT INTO ACT_SMT
	VALUES (1154,
	1144,
	1155,
	13,
	3,
	'TrackLog::clearTrackPoints line: 13');
INSERT INTO ACT_AI
	VALUES (1154,
	1156,
	1157,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1155,
	1144,
	1158,
	14,
	3,
	'TrackLog::clearTrackPoints line: 14');
INSERT INTO ACT_SEL
	VALUES (1155,
	1130,
	0,
	'one',
	1159);
INSERT INTO ACT_SR
	VALUES (1155);
INSERT INTO ACT_LNK
	VALUES (1160,
	'''follows''',
	1155,
	197,
	0,
	2,
	195,
	14,
	46,
	14,
	57,
	14,
	60);
INSERT INTO ACT_SMT
	VALUES (1158,
	1144,
	1161,
	15,
	3,
	'TrackLog::clearTrackPoints line: 15');
INSERT INTO ACT_IF
	VALUES (1158,
	1162,
	1163,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1161,
	1144,
	0,
	18,
	3,
	'TrackLog::clearTrackPoints line: 18');
INSERT INTO ACT_DEL
	VALUES (1161,
	1164);
INSERT INTO V_VAL
	VALUES (1157,
	1,
	1,
	13,
	3,
	11,
	0,
	0,
	0,
	0,
	70,
	1144);
INSERT INTO V_IRF
	VALUES (1157,
	1164);
INSERT INTO V_VAL
	VALUES (1156,
	0,
	0,
	13,
	15,
	23,
	0,
	0,
	0,
	0,
	70,
	1144);
INSERT INTO V_IRF
	VALUES (1156,
	1130);
INSERT INTO V_VAL
	VALUES (1159,
	0,
	0,
	14,
	35,
	43,
	0,
	0,
	0,
	0,
	70,
	1144);
INSERT INTO V_IRF
	VALUES (1159,
	1130);
INSERT INTO V_VAL
	VALUES (1165,
	0,
	0,
	15,
	18,
	26,
	0,
	0,
	0,
	0,
	70,
	1144);
INSERT INTO V_IRF
	VALUES (1165,
	1130);
INSERT INTO V_VAL
	VALUES (1163,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1144);
INSERT INTO V_UNY
	VALUES (1163,
	1165,
	'not_empty');
INSERT INTO V_VAR
	VALUES (1164,
	1144,
	'prevPoint',
	1,
	70);
INSERT INTO V_INT
	VALUES (1164,
	0,
	195);
INSERT INTO ACT_BLK
	VALUES (1162,
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
	1126,
	0);
INSERT INTO ACT_SMT
	VALUES (1166,
	1162,
	0,
	16,
	5,
	'TrackLog::clearTrackPoints line: 16');
INSERT INTO ACT_UNR
	VALUES (1166,
	1164,
	1130,
	'''follows''',
	197,
	16,
	46,
	16,
	49);
INSERT INTO O_TFR
	VALUES (1167,
	193,
	'addLapMarker',
	'',
	240,
	1,
	'select one timer related by self->WorkoutSession[R4.''represents path for'']->WorkoutTimer[R8.''is timed by''];
create object instance lapMarker of LapMarker;
lapMarker.lapTime = timer.time; 
relate self to lapMarker across R5.''has laps defined by'';

// Notify display of the new value.
self.updateDisplay();',
	1,
	'',
	1125);
INSERT INTO ACT_OPB
	VALUES (1168,
	1167);
INSERT INTO ACT_ACT
	VALUES (1168,
	'operation',
	0,
	1169,
	0,
	0,
	'TrackLog::addLapMarker',
	0);
INSERT INTO ACT_BLK
	VALUES (1169,
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
	1168,
	0);
INSERT INTO ACT_SMT
	VALUES (1170,
	1169,
	1171,
	1,
	1,
	'TrackLog::addLapMarker line: 1');
INSERT INTO ACT_SEL
	VALUES (1170,
	1172,
	1,
	'one',
	1173);
INSERT INTO ACT_SR
	VALUES (1170);
INSERT INTO ACT_LNK
	VALUES (1174,
	'''represents path for''',
	1170,
	212,
	1175,
	2,
	66,
	1,
	35,
	1,
	50,
	1,
	53);
INSERT INTO ACT_LNK
	VALUES (1175,
	'''is timed by''',
	0,
	209,
	0,
	2,
	84,
	1,
	77,
	1,
	90,
	1,
	93);
INSERT INTO ACT_SMT
	VALUES (1171,
	1169,
	1176,
	2,
	1,
	'TrackLog::addLapMarker line: 2');
INSERT INTO ACT_CR
	VALUES (1171,
	1177,
	1,
	204,
	2,
	37);
INSERT INTO ACT_SMT
	VALUES (1176,
	1169,
	1178,
	3,
	1,
	'TrackLog::addLapMarker line: 3');
INSERT INTO ACT_AI
	VALUES (1176,
	1179,
	1180,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1178,
	1169,
	1181,
	4,
	1,
	'TrackLog::addLapMarker line: 4');
INSERT INTO ACT_REL
	VALUES (1178,
	1182,
	1177,
	'''has laps defined by''',
	203,
	4,
	33,
	4,
	36);
INSERT INTO ACT_SMT
	VALUES (1181,
	1169,
	0,
	7,
	1,
	'TrackLog::addLapMarker line: 7');
INSERT INTO ACT_TFM
	VALUES (1181,
	1079,
	1182,
	7,
	6,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1173,
	0,
	0,
	1,
	29,
	32,
	0,
	0,
	0,
	0,
	70,
	1169);
INSERT INTO V_IRF
	VALUES (1173,
	1182);
INSERT INTO V_VAL
	VALUES (1183,
	1,
	0,
	3,
	1,
	9,
	0,
	0,
	0,
	0,
	70,
	1169);
INSERT INTO V_IRF
	VALUES (1183,
	1177);
INSERT INTO V_VAL
	VALUES (1180,
	1,
	0,
	3,
	11,
	17,
	0,
	0,
	0,
	0,
	13,
	1169);
INSERT INTO V_AVL
	VALUES (1180,
	1183,
	204,
	1028);
INSERT INTO V_VAL
	VALUES (1184,
	0,
	0,
	3,
	21,
	25,
	0,
	0,
	0,
	0,
	70,
	1169);
INSERT INTO V_IRF
	VALUES (1184,
	1172);
INSERT INTO V_VAL
	VALUES (1179,
	0,
	0,
	3,
	27,
	30,
	0,
	0,
	0,
	0,
	13,
	1169);
INSERT INTO V_AVL
	VALUES (1179,
	1184,
	84,
	403);
INSERT INTO V_VAR
	VALUES (1172,
	1169,
	'timer',
	1,
	70);
INSERT INTO V_INT
	VALUES (1172,
	0,
	84);
INSERT INTO V_VAR
	VALUES (1182,
	1169,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (1182,
	0,
	193);
INSERT INTO V_VAR
	VALUES (1177,
	1169,
	'lapMarker',
	1,
	70);
INSERT INTO V_INT
	VALUES (1177,
	0,
	204);
INSERT INTO O_TFR
	VALUES (1185,
	193,
	'clearLapMarkers',
	'',
	240,
	1,
	'select many lapMarkers related by self->LapMarker[R5];
for each lapMarker in lapMarkers
  unrelate self from lapMarker across R5;
  delete object instance lapMarker;
end for;',
	1,
	'',
	1167);
INSERT INTO ACT_OPB
	VALUES (1186,
	1185);
INSERT INTO ACT_ACT
	VALUES (1186,
	'operation',
	0,
	1187,
	0,
	0,
	'TrackLog::clearLapMarkers',
	0);
INSERT INTO ACT_BLK
	VALUES (1187,
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
	1186,
	0);
INSERT INTO ACT_SMT
	VALUES (1188,
	1187,
	1189,
	1,
	1,
	'TrackLog::clearLapMarkers line: 1');
INSERT INTO ACT_SEL
	VALUES (1188,
	1190,
	1,
	'many',
	1191);
INSERT INTO ACT_SR
	VALUES (1188);
INSERT INTO ACT_LNK
	VALUES (1192,
	'',
	1188,
	203,
	0,
	3,
	204,
	1,
	41,
	1,
	51,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1189,
	1187,
	0,
	2,
	1,
	'TrackLog::clearLapMarkers line: 2');
INSERT INTO ACT_FOR
	VALUES (1189,
	1193,
	1,
	1194,
	1190,
	204);
INSERT INTO V_VAL
	VALUES (1191,
	0,
	0,
	1,
	35,
	38,
	0,
	0,
	0,
	0,
	70,
	1187);
INSERT INTO V_IRF
	VALUES (1191,
	1195);
INSERT INTO V_VAR
	VALUES (1190,
	1187,
	'lapMarkers',
	1,
	573);
INSERT INTO V_INS
	VALUES (1190,
	204);
INSERT INTO V_VAR
	VALUES (1195,
	1187,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (1195,
	0,
	193);
INSERT INTO V_VAR
	VALUES (1194,
	1187,
	'lapMarker',
	1,
	70);
INSERT INTO V_INT
	VALUES (1194,
	1,
	204);
INSERT INTO ACT_BLK
	VALUES (1193,
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
	1186,
	0);
INSERT INTO ACT_SMT
	VALUES (1196,
	1193,
	1197,
	3,
	3,
	'TrackLog::clearLapMarkers line: 3');
INSERT INTO ACT_UNR
	VALUES (1196,
	1195,
	1194,
	'',
	203,
	3,
	39,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1197,
	1193,
	0,
	4,
	3,
	'TrackLog::clearLapMarkers line: 4');
INSERT INTO ACT_DEL
	VALUES (1197,
	1194);
INSERT INTO O_TFR
	VALUES (1079,
	193,
	'updateDisplay',
	'',
	240,
	1,
	'// Update the display so that newly updated values will be shown.
select one display related by 
  self->WorkoutSession[R4.''represents path for'']->Display[R7.''current status indicated on''];
generate Display2:refresh to display;',
	1,
	'',
	1185);
INSERT INTO ACT_OPB
	VALUES (1198,
	1079);
INSERT INTO ACT_ACT
	VALUES (1198,
	'operation',
	0,
	1199,
	0,
	0,
	'TrackLog::updateDisplay',
	0);
INSERT INTO ACT_BLK
	VALUES (1199,
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
	1198,
	0);
INSERT INTO ACT_SMT
	VALUES (1200,
	1199,
	1201,
	2,
	1,
	'TrackLog::updateDisplay line: 2');
INSERT INTO ACT_SEL
	VALUES (1200,
	1202,
	1,
	'one',
	1203);
INSERT INTO ACT_SR
	VALUES (1200);
INSERT INTO ACT_LNK
	VALUES (1204,
	'''represents path for''',
	1200,
	212,
	1205,
	2,
	66,
	3,
	9,
	3,
	24,
	3,
	27);
INSERT INTO ACT_LNK
	VALUES (1205,
	'''current status indicated on''',
	0,
	113,
	0,
	2,
	114,
	3,
	51,
	3,
	59,
	3,
	62);
INSERT INTO ACT_SMT
	VALUES (1201,
	1199,
	0,
	4,
	1,
	'TrackLog::updateDisplay line: 4');
INSERT INTO E_ESS
	VALUES (1201,
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
	VALUES (1201);
INSERT INTO E_GSME
	VALUES (1201,
	460);
INSERT INTO E_GEN
	VALUES (1201,
	1202);
INSERT INTO V_VAL
	VALUES (1203,
	0,
	0,
	3,
	3,
	6,
	0,
	0,
	0,
	0,
	70,
	1199);
INSERT INTO V_IRF
	VALUES (1203,
	1206);
INSERT INTO V_VAR
	VALUES (1202,
	1199,
	'display',
	1,
	70);
INSERT INTO V_INT
	VALUES (1202,
	0,
	114);
INSERT INTO V_VAR
	VALUES (1206,
	1199,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (1206,
	0,
	193);
INSERT INTO O_ID
	VALUES (0,
	193);
INSERT INTO O_ID
	VALUES (1,
	193);
INSERT INTO O_ID
	VALUES (2,
	193);
INSERT INTO PE_PE
	VALUES (195,
	1,
	191,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (195,
	'TrackPoint',
	3,
	'TrackPoint',
	'Each instance represents a single location through which the device
passed during a workout session.',
	0);
INSERT INTO O_NBATTR
	VALUES (1082,
	195);
INSERT INTO O_BATTR
	VALUES (1082,
	195);
INSERT INTO O_ATTR
	VALUES (1082,
	195,
	0,
	'time',
	'Number of seconds between start time for the associated workout and recording of this location.
',
	'',
	'time',
	0,
	13,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1089,
	195);
INSERT INTO O_BATTR
	VALUES (1089,
	195);
INSERT INTO O_ATTR
	VALUES (1089,
	195,
	1082,
	'longitude',
	'Longitude, expressed in decimal degrees where eastern figures are positve
and western ones are negative.',
	'',
	'longitude',
	0,
	170,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1086,
	195);
INSERT INTO O_BATTR
	VALUES (1086,
	195);
INSERT INTO O_ATTR
	VALUES (1086,
	195,
	1089,
	'latitude',
	'Latitude, expressed in decimal degrees, where northern figures are positive
and southern ones are negative.',
	'',
	'latitude',
	0,
	170,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	195);
INSERT INTO O_ID
	VALUES (1,
	195);
INSERT INTO O_ID
	VALUES (2,
	195);
INSERT INTO PE_PE
	VALUES (66,
	1,
	191,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (66,
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
	VALUES (74,
	66,
	'addHeartRateSample',
	'',
	240,
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
	VALUES (1207,
	74,
	'heartRate',
	13,
	0,
	'',
	0,
	'');
INSERT INTO ACT_OPB
	VALUES (1208,
	74);
INSERT INTO ACT_ACT
	VALUES (1208,
	'operation',
	0,
	1209,
	0,
	0,
	'WorkoutSession::addHeartRateSample',
	0);
INSERT INTO ACT_BLK
	VALUES (1209,
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
	1208,
	0);
INSERT INTO ACT_SMT
	VALUES (1210,
	1209,
	1211,
	3,
	1,
	'WorkoutSession::addHeartRateSample line: 3');
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
	'''is timed by''',
	1210,
	209,
	0,
	2,
	84,
	3,
	42,
	3,
	55,
	3,
	58);
INSERT INTO ACT_SMT
	VALUES (1211,
	1209,
	1215,
	6,
	1,
	'WorkoutSession::addHeartRateSample line: 6');
INSERT INTO ACT_CR
	VALUES (1211,
	1216,
	1,
	216,
	6,
	34);
INSERT INTO ACT_SMT
	VALUES (1215,
	1209,
	1217,
	7,
	1,
	'WorkoutSession::addHeartRateSample line: 7');
INSERT INTO ACT_AI
	VALUES (1215,
	1218,
	1219,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1217,
	1209,
	1220,
	8,
	1,
	'WorkoutSession::addHeartRateSample line: 8');
INSERT INTO ACT_AI
	VALUES (1217,
	1221,
	1222,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1220,
	1209,
	1223,
	9,
	1,
	'WorkoutSession::addHeartRateSample line: 9');
INSERT INTO ACT_REL
	VALUES (1220,
	1224,
	1216,
	'''tracks heart rate over time as''',
	215,
	9,
	30,
	9,
	33);
INSERT INTO ACT_SMT
	VALUES (1223,
	1209,
	1225,
	12,
	1,
	'WorkoutSession::addHeartRateSample line: 12');
INSERT INTO ACT_SEL
	VALUES (1223,
	1226,
	1,
	'one',
	1227);
INSERT INTO ACT_SR
	VALUES (1223);
INSERT INTO ACT_LNK
	VALUES (1228,
	'''current status indicated on''',
	1223,
	113,
	0,
	2,
	114,
	12,
	37,
	12,
	45,
	12,
	48);
INSERT INTO ACT_SMT
	VALUES (1225,
	1209,
	0,
	13,
	1,
	'WorkoutSession::addHeartRateSample line: 13');
INSERT INTO E_ESS
	VALUES (1225,
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
	VALUES (1225);
INSERT INTO E_GSME
	VALUES (1225,
	460);
INSERT INTO E_GEN
	VALUES (1225,
	1226);
INSERT INTO V_VAL
	VALUES (1213,
	0,
	0,
	3,
	36,
	39,
	0,
	0,
	0,
	0,
	70,
	1209);
INSERT INTO V_IRF
	VALUES (1213,
	1224);
INSERT INTO V_VAL
	VALUES (1229,
	1,
	0,
	7,
	1,
	6,
	0,
	0,
	0,
	0,
	70,
	1209);
INSERT INTO V_IRF
	VALUES (1229,
	1216);
INSERT INTO V_VAL
	VALUES (1219,
	1,
	0,
	7,
	8,
	16,
	0,
	0,
	0,
	0,
	13,
	1209);
INSERT INTO V_AVL
	VALUES (1219,
	1229,
	216,
	1026);
INSERT INTO V_VAL
	VALUES (1218,
	0,
	0,
	7,
	26,
	34,
	0,
	0,
	0,
	0,
	13,
	1209);
INSERT INTO V_PVL
	VALUES (1218,
	0,
	0,
	1207,
	0);
INSERT INTO V_VAL
	VALUES (1230,
	1,
	0,
	8,
	1,
	6,
	0,
	0,
	0,
	0,
	70,
	1209);
INSERT INTO V_IRF
	VALUES (1230,
	1216);
INSERT INTO V_VAL
	VALUES (1222,
	1,
	0,
	8,
	8,
	11,
	0,
	0,
	0,
	0,
	13,
	1209);
INSERT INTO V_AVL
	VALUES (1222,
	1230,
	216,
	1027);
INSERT INTO V_VAL
	VALUES (1231,
	0,
	0,
	8,
	15,
	26,
	0,
	0,
	0,
	0,
	70,
	1209);
INSERT INTO V_IRF
	VALUES (1231,
	1212);
INSERT INTO V_VAL
	VALUES (1221,
	0,
	0,
	8,
	28,
	31,
	0,
	0,
	0,
	0,
	13,
	1209);
INSERT INTO V_AVL
	VALUES (1221,
	1231,
	84,
	403);
INSERT INTO V_VAL
	VALUES (1227,
	0,
	0,
	12,
	31,
	34,
	0,
	0,
	0,
	0,
	70,
	1209);
INSERT INTO V_IRF
	VALUES (1227,
	1224);
INSERT INTO V_VAR
	VALUES (1212,
	1209,
	'workoutTimer',
	1,
	70);
INSERT INTO V_INT
	VALUES (1212,
	0,
	84);
INSERT INTO V_VAR
	VALUES (1224,
	1209,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (1224,
	0,
	66);
INSERT INTO V_VAR
	VALUES (1216,
	1209,
	'sample',
	1,
	70);
INSERT INTO V_INT
	VALUES (1216,
	0,
	216);
INSERT INTO V_VAR
	VALUES (1226,
	1209,
	'display',
	1,
	70);
INSERT INTO V_INT
	VALUES (1226,
	0,
	114);
INSERT INTO O_TFR
	VALUES (1232,
	66,
	'clearHeartRateSamples',
	'',
	240,
	1,
	'select many samples related by self->HeartRateSample[R6];
for each sample in samples
  unrelate self from sample across R6;
  delete object instance sample;
end for;',
	1,
	'',
	74);
INSERT INTO ACT_OPB
	VALUES (1233,
	1232);
INSERT INTO ACT_ACT
	VALUES (1233,
	'operation',
	0,
	1234,
	0,
	0,
	'WorkoutSession::clearHeartRateSamples',
	0);
INSERT INTO ACT_BLK
	VALUES (1234,
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
	1233,
	0);
INSERT INTO ACT_SMT
	VALUES (1235,
	1234,
	1236,
	1,
	1,
	'WorkoutSession::clearHeartRateSamples line: 1');
INSERT INTO ACT_SEL
	VALUES (1235,
	1237,
	1,
	'many',
	1238);
INSERT INTO ACT_SR
	VALUES (1235);
INSERT INTO ACT_LNK
	VALUES (1239,
	'',
	1235,
	215,
	0,
	3,
	216,
	1,
	38,
	1,
	54,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1236,
	1234,
	0,
	2,
	1,
	'WorkoutSession::clearHeartRateSamples line: 2');
INSERT INTO ACT_FOR
	VALUES (1236,
	1240,
	1,
	1241,
	1237,
	216);
INSERT INTO V_VAL
	VALUES (1238,
	0,
	0,
	1,
	32,
	35,
	0,
	0,
	0,
	0,
	70,
	1234);
INSERT INTO V_IRF
	VALUES (1238,
	1242);
INSERT INTO V_VAR
	VALUES (1237,
	1234,
	'samples',
	1,
	573);
INSERT INTO V_INS
	VALUES (1237,
	216);
INSERT INTO V_VAR
	VALUES (1242,
	1234,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (1242,
	0,
	66);
INSERT INTO V_VAR
	VALUES (1241,
	1234,
	'sample',
	1,
	70);
INSERT INTO V_INT
	VALUES (1241,
	1,
	216);
INSERT INTO ACT_BLK
	VALUES (1240,
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
	1233,
	0);
INSERT INTO ACT_SMT
	VALUES (1243,
	1240,
	1244,
	3,
	3,
	'WorkoutSession::clearHeartRateSamples line: 3');
INSERT INTO ACT_UNR
	VALUES (1243,
	1242,
	1241,
	'',
	215,
	3,
	36,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1244,
	1240,
	0,
	4,
	3,
	'WorkoutSession::clearHeartRateSamples line: 4');
INSERT INTO ACT_DEL
	VALUES (1244,
	1241);
INSERT INTO O_TFR
	VALUES (1245,
	66,
	'initialize',
	'',
	240,
	1,
	'// Initialize this workout session.

self.startDate = TIM::current_date();
self.startTime = TIM::current_clock();
self.accumulatedDistance = 0.0;',
	1,
	'',
	1232);
INSERT INTO ACT_OPB
	VALUES (1246,
	1245);
INSERT INTO ACT_ACT
	VALUES (1246,
	'operation',
	0,
	1247,
	0,
	0,
	'WorkoutSession::initialize',
	0);
INSERT INTO ACT_BLK
	VALUES (1247,
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
	1246,
	0);
INSERT INTO ACT_SMT
	VALUES (1248,
	1247,
	1249,
	3,
	1,
	'WorkoutSession::initialize line: 3');
INSERT INTO ACT_AI
	VALUES (1248,
	1250,
	1251,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1249,
	1247,
	1252,
	4,
	1,
	'WorkoutSession::initialize line: 4');
INSERT INTO ACT_AI
	VALUES (1249,
	1253,
	1254,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1252,
	1247,
	0,
	5,
	1,
	'WorkoutSession::initialize line: 5');
INSERT INTO ACT_AI
	VALUES (1252,
	1255,
	1256,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1257,
	1,
	0,
	3,
	1,
	4,
	0,
	0,
	0,
	0,
	70,
	1247);
INSERT INTO V_IRF
	VALUES (1257,
	1258);
INSERT INTO V_VAL
	VALUES (1251,
	1,
	0,
	3,
	6,
	14,
	0,
	0,
	0,
	0,
	253,
	1247);
INSERT INTO V_AVL
	VALUES (1251,
	1257,
	66,
	1259);
INSERT INTO V_VAL
	VALUES (1250,
	0,
	0,
	3,
	23,
	-1,
	0,
	0,
	0,
	0,
	253,
	1247);
INSERT INTO V_BRV
	VALUES (1250,
	273,
	1,
	3,
	18);
INSERT INTO V_VAL
	VALUES (1260,
	1,
	0,
	4,
	1,
	4,
	0,
	0,
	0,
	0,
	70,
	1247);
INSERT INTO V_IRF
	VALUES (1260,
	1258);
INSERT INTO V_VAL
	VALUES (1254,
	1,
	0,
	4,
	6,
	14,
	0,
	0,
	0,
	0,
	259,
	1247);
INSERT INTO V_AVL
	VALUES (1254,
	1260,
	66,
	1261);
INSERT INTO V_VAL
	VALUES (1253,
	0,
	0,
	4,
	23,
	-1,
	0,
	0,
	0,
	0,
	259,
	1247);
INSERT INTO V_BRV
	VALUES (1253,
	309,
	1,
	4,
	18);
INSERT INTO V_VAL
	VALUES (1262,
	1,
	0,
	5,
	1,
	4,
	0,
	0,
	0,
	0,
	70,
	1247);
INSERT INTO V_IRF
	VALUES (1262,
	1258);
INSERT INTO V_VAL
	VALUES (1256,
	1,
	0,
	5,
	6,
	24,
	0,
	0,
	0,
	0,
	170,
	1247);
INSERT INTO V_AVL
	VALUES (1256,
	1262,
	66,
	481);
INSERT INTO V_VAL
	VALUES (1255,
	0,
	0,
	5,
	28,
	30,
	0,
	0,
	0,
	0,
	170,
	1247);
INSERT INTO V_LRL
	VALUES (1255,
	'0.0');
INSERT INTO V_VAR
	VALUES (1258,
	1247,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (1258,
	0,
	66);
INSERT INTO O_TFR
	VALUES (128,
	66,
	'create',
	'',
	240,
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
	1245);
INSERT INTO ACT_OPB
	VALUES (1263,
	128);
INSERT INTO ACT_ACT
	VALUES (1263,
	'class operation',
	0,
	1264,
	0,
	0,
	'WorkoutSession::create',
	0);
INSERT INTO ACT_BLK
	VALUES (1264,
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
	1263,
	0);
INSERT INTO ACT_SMT
	VALUES (1265,
	1264,
	1266,
	4,
	1,
	'WorkoutSession::create line: 4');
INSERT INTO ACT_FIO
	VALUES (1265,
	1267,
	1,
	'any',
	66,
	4,
	38);
INSERT INTO ACT_SMT
	VALUES (1266,
	1264,
	0,
	6,
	1,
	'WorkoutSession::create line: 6');
INSERT INTO ACT_IF
	VALUES (1266,
	1268,
	1269,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1270,
	0,
	0,
	6,
	12,
	18,
	0,
	0,
	0,
	0,
	70,
	1264);
INSERT INTO V_IRF
	VALUES (1270,
	1267);
INSERT INTO V_VAL
	VALUES (1269,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1264);
INSERT INTO V_UNY
	VALUES (1269,
	1270,
	'empty');
INSERT INTO V_VAR
	VALUES (1267,
	1264,
	'session',
	1,
	70);
INSERT INTO V_INT
	VALUES (1267,
	0,
	66);
INSERT INTO ACT_BLK
	VALUES (1268,
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
	1263,
	0);
INSERT INTO ACT_SMT
	VALUES (1271,
	1268,
	1272,
	9,
	3,
	'WorkoutSession::create line: 9');
INSERT INTO ACT_CR
	VALUES (1271,
	1267,
	0,
	66,
	9,
	37);
INSERT INTO ACT_SMT
	VALUES (1272,
	1268,
	1273,
	10,
	3,
	'WorkoutSession::create line: 10');
INSERT INTO ACT_TFM
	VALUES (1272,
	1245,
	1267,
	10,
	11,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1273,
	1268,
	1274,
	13,
	3,
	'WorkoutSession::create line: 13');
INSERT INTO ACT_CR
	VALUES (1273,
	1275,
	1,
	84,
	13,
	42);
INSERT INTO ACT_SMT
	VALUES (1274,
	1268,
	1276,
	14,
	3,
	'WorkoutSession::create line: 14');
INSERT INTO ACT_TFM
	VALUES (1274,
	1277,
	1275,
	14,
	16,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1276,
	1268,
	1278,
	17,
	3,
	'WorkoutSession::create line: 17');
INSERT INTO ACT_CR
	VALUES (1276,
	1279,
	1,
	193,
	17,
	38);
INSERT INTO ACT_SMT
	VALUES (1278,
	1268,
	1280,
	20,
	3,
	'WorkoutSession::create line: 20');
INSERT INTO ACT_CR
	VALUES (1278,
	1281,
	1,
	114,
	20,
	37);
INSERT INTO ACT_SMT
	VALUES (1280,
	1268,
	1282,
	23,
	3,
	'WorkoutSession::create line: 23');
INSERT INTO ACT_REL
	VALUES (1280,
	1279,
	1267,
	'''represents path for''',
	212,
	23,
	37,
	23,
	40);
INSERT INTO ACT_SMT
	VALUES (1282,
	1268,
	1283,
	24,
	3,
	'WorkoutSession::create line: 24');
INSERT INTO ACT_REL
	VALUES (1282,
	1275,
	1267,
	'''acts as the stopwatch for''',
	209,
	24,
	41,
	24,
	44);
INSERT INTO ACT_SMT
	VALUES (1283,
	1268,
	0,
	25,
	3,
	'WorkoutSession::create line: 25');
INSERT INTO ACT_REL
	VALUES (1283,
	1281,
	1267,
	'''indicates current status of''',
	113,
	25,
	36,
	25,
	39);
INSERT INTO V_VAR
	VALUES (1275,
	1268,
	'workoutTimer',
	1,
	70);
INSERT INTO V_INT
	VALUES (1275,
	0,
	84);
INSERT INTO V_VAR
	VALUES (1279,
	1268,
	'trackLog',
	1,
	70);
INSERT INTO V_INT
	VALUES (1279,
	0,
	193);
INSERT INTO V_VAR
	VALUES (1281,
	1268,
	'display',
	1,
	70);
INSERT INTO V_INT
	VALUES (1281,
	0,
	114);
INSERT INTO O_TFR
	VALUES (1284,
	66,
	'reset',
	'',
	240,
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
	128);
INSERT INTO ACT_OPB
	VALUES (1285,
	1284);
INSERT INTO ACT_ACT
	VALUES (1285,
	'operation',
	0,
	1286,
	0,
	0,
	'WorkoutSession::reset',
	0);
INSERT INTO ACT_BLK
	VALUES (1286,
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
	1285,
	0);
INSERT INTO ACT_SMT
	VALUES (1287,
	1286,
	1288,
	5,
	1,
	'WorkoutSession::reset line: 5');
INSERT INTO ACT_SEL
	VALUES (1287,
	1289,
	1,
	'one',
	1290);
INSERT INTO ACT_SR
	VALUES (1287);
INSERT INTO ACT_LNK
	VALUES (1291,
	'''is timed by''',
	1287,
	209,
	0,
	2,
	84,
	5,
	42,
	5,
	55,
	5,
	58);
INSERT INTO ACT_SMT
	VALUES (1288,
	1286,
	1292,
	6,
	1,
	'WorkoutSession::reset line: 6');
INSERT INTO ACT_TFM
	VALUES (1288,
	1277,
	1289,
	6,
	14,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1292,
	1286,
	1293,
	9,
	1,
	'WorkoutSession::reset line: 9');
INSERT INTO ACT_SEL
	VALUES (1292,
	1294,
	1,
	'one',
	1295);
INSERT INTO ACT_SR
	VALUES (1292);
INSERT INTO ACT_LNK
	VALUES (1296,
	'''captures path in''',
	1292,
	212,
	0,
	2,
	193,
	9,
	38,
	9,
	47,
	9,
	50);
INSERT INTO ACT_SMT
	VALUES (1293,
	1286,
	1297,
	10,
	1,
	'WorkoutSession::reset line: 10');
INSERT INTO ACT_TFM
	VALUES (1293,
	1125,
	1294,
	10,
	10,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1297,
	1286,
	1298,
	11,
	1,
	'WorkoutSession::reset line: 11');
INSERT INTO ACT_TFM
	VALUES (1297,
	1185,
	1294,
	11,
	10,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1298,
	1286,
	1299,
	14,
	1,
	'WorkoutSession::reset line: 14');
INSERT INTO ACT_SEL
	VALUES (1298,
	1300,
	1,
	'many',
	1301);
INSERT INTO ACT_SR
	VALUES (1298);
INSERT INTO ACT_LNK
	VALUES (1302,
	'''includes''',
	1298,
	165,
	0,
	3,
	146,
	14,
	40,
	14,
	49,
	14,
	53);
INSERT INTO ACT_SMT
	VALUES (1299,
	1286,
	1303,
	15,
	1,
	'WorkoutSession::reset line: 15');
INSERT INTO ACT_FOR
	VALUES (1299,
	1304,
	1,
	1305,
	1300,
	146);
INSERT INTO ACT_SMT
	VALUES (1303,
	1286,
	1306,
	21,
	1,
	'WorkoutSession::reset line: 21');
INSERT INTO ACT_SEL
	VALUES (1303,
	1307,
	1,
	'one',
	1308);
INSERT INTO ACT_SR
	VALUES (1303);
INSERT INTO ACT_LNK
	VALUES (1309,
	'''is currently executing''',
	1303,
	225,
	0,
	2,
	221,
	21,
	43,
	21,
	48,
	21,
	52);
INSERT INTO ACT_SMT
	VALUES (1306,
	1286,
	1310,
	22,
	1,
	'WorkoutSession::reset line: 22');
INSERT INTO ACT_IF
	VALUES (1306,
	1311,
	1312,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1310,
	1286,
	1313,
	33,
	1,
	'WorkoutSession::reset line: 33');
INSERT INTO ACT_SEL
	VALUES (1310,
	1314,
	1,
	'many',
	1315);
INSERT INTO ACT_SR
	VALUES (1310);
INSERT INTO ACT_LNK
	VALUES (1316,
	'''has executed''',
	1310,
	232,
	0,
	3,
	221,
	33,
	36,
	33,
	41,
	33,
	45);
INSERT INTO ACT_SMT
	VALUES (1313,
	1286,
	1317,
	34,
	1,
	'WorkoutSession::reset line: 34');
INSERT INTO ACT_FOR
	VALUES (1313,
	1318,
	1,
	1319,
	1314,
	221);
INSERT INTO ACT_SMT
	VALUES (1317,
	1286,
	1320,
	45,
	1,
	'WorkoutSession::reset line: 45');
INSERT INTO ACT_AI
	VALUES (1317,
	1321,
	1322,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1320,
	1286,
	0,
	46,
	1,
	'WorkoutSession::reset line: 46');
INSERT INTO ACT_TFM
	VALUES (1320,
	1232,
	1323,
	46,
	6,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1290,
	0,
	0,
	5,
	36,
	39,
	0,
	0,
	0,
	0,
	70,
	1286);
INSERT INTO V_IRF
	VALUES (1290,
	1323);
INSERT INTO V_VAL
	VALUES (1295,
	0,
	0,
	9,
	32,
	35,
	0,
	0,
	0,
	0,
	70,
	1286);
INSERT INTO V_IRF
	VALUES (1295,
	1323);
INSERT INTO V_VAL
	VALUES (1301,
	0,
	0,
	14,
	34,
	37,
	0,
	0,
	0,
	0,
	70,
	1286);
INSERT INTO V_IRF
	VALUES (1301,
	1323);
INSERT INTO V_VAL
	VALUES (1308,
	0,
	0,
	21,
	37,
	40,
	0,
	0,
	0,
	0,
	70,
	1286);
INSERT INTO V_IRF
	VALUES (1308,
	1323);
INSERT INTO V_VAL
	VALUES (1324,
	0,
	0,
	22,
	16,
	28,
	0,
	0,
	0,
	0,
	70,
	1286);
INSERT INTO V_IRF
	VALUES (1324,
	1307);
INSERT INTO V_VAL
	VALUES (1325,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1286);
INSERT INTO V_UNY
	VALUES (1325,
	1324,
	'empty');
INSERT INTO V_VAL
	VALUES (1312,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1286);
INSERT INTO V_UNY
	VALUES (1312,
	1325,
	'not');
INSERT INTO V_VAL
	VALUES (1315,
	0,
	0,
	33,
	30,
	33,
	0,
	0,
	0,
	0,
	70,
	1286);
INSERT INTO V_IRF
	VALUES (1315,
	1323);
INSERT INTO V_VAL
	VALUES (1326,
	1,
	0,
	45,
	1,
	4,
	0,
	0,
	0,
	0,
	70,
	1286);
INSERT INTO V_IRF
	VALUES (1326,
	1323);
INSERT INTO V_VAL
	VALUES (1322,
	1,
	0,
	45,
	6,
	24,
	0,
	0,
	0,
	0,
	170,
	1286);
INSERT INTO V_AVL
	VALUES (1322,
	1326,
	66,
	481);
INSERT INTO V_VAL
	VALUES (1321,
	0,
	0,
	45,
	28,
	30,
	0,
	0,
	0,
	0,
	170,
	1286);
INSERT INTO V_LRL
	VALUES (1321,
	'0.0');
INSERT INTO V_VAR
	VALUES (1289,
	1286,
	'workoutTimer',
	1,
	70);
INSERT INTO V_INT
	VALUES (1289,
	0,
	84);
INSERT INTO V_VAR
	VALUES (1323,
	1286,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (1323,
	0,
	66);
INSERT INTO V_VAR
	VALUES (1294,
	1286,
	'trackLog',
	1,
	70);
INSERT INTO V_INT
	VALUES (1294,
	0,
	193);
INSERT INTO V_VAR
	VALUES (1300,
	1286,
	'goalSpecs',
	1,
	573);
INSERT INTO V_INS
	VALUES (1300,
	146);
INSERT INTO V_VAR
	VALUES (1305,
	1286,
	'goalSpec',
	1,
	70);
INSERT INTO V_INT
	VALUES (1305,
	1,
	146);
INSERT INTO V_VAR
	VALUES (1307,
	1286,
	'executingGoal',
	1,
	70);
INSERT INTO V_INT
	VALUES (1307,
	0,
	221);
INSERT INTO V_VAR
	VALUES (1314,
	1286,
	'goals',
	1,
	573);
INSERT INTO V_INS
	VALUES (1314,
	221);
INSERT INTO V_VAR
	VALUES (1319,
	1286,
	'goal',
	1,
	70);
INSERT INTO V_INT
	VALUES (1319,
	1,
	221);
INSERT INTO ACT_BLK
	VALUES (1304,
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
	1285,
	0);
INSERT INTO ACT_SMT
	VALUES (1327,
	1304,
	1328,
	16,
	3,
	'WorkoutSession::reset line: 16');
INSERT INTO ACT_UNR
	VALUES (1327,
	1323,
	1305,
	'''includes''',
	165,
	16,
	38,
	16,
	42);
INSERT INTO ACT_SMT
	VALUES (1328,
	1304,
	0,
	17,
	3,
	'WorkoutSession::reset line: 17');
INSERT INTO ACT_DEL
	VALUES (1328,
	1305);
INSERT INTO ACT_BLK
	VALUES (1311,
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
	1285,
	0);
INSERT INTO ACT_SMT
	VALUES (1329,
	1311,
	1330,
	23,
	3,
	'WorkoutSession::reset line: 23');
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
	'''has open''',
	1329,
	235,
	0,
	2,
	230,
	23,
	56,
	23,
	68,
	23,
	72);
INSERT INTO ACT_SMT
	VALUES (1330,
	1311,
	1334,
	24,
	3,
	'WorkoutSession::reset line: 24');
INSERT INTO ACT_IF
	VALUES (1330,
	1335,
	1336,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1334,
	1311,
	1337,
	28,
	3,
	'WorkoutSession::reset line: 28');
INSERT INTO ACT_UNR
	VALUES (1334,
	1323,
	1307,
	'''is currently executing''',
	225,
	28,
	43,
	28,
	47);
INSERT INTO ACT_SMT
	VALUES (1337,
	1311,
	0,
	29,
	3,
	'WorkoutSession::reset line: 29');
INSERT INTO ACT_DEL
	VALUES (1337,
	1307);
INSERT INTO V_VAL
	VALUES (1332,
	0,
	0,
	23,
	41,
	53,
	0,
	0,
	0,
	0,
	70,
	1311);
INSERT INTO V_IRF
	VALUES (1332,
	1307);
INSERT INTO V_VAL
	VALUES (1338,
	0,
	0,
	24,
	18,
	32,
	0,
	0,
	0,
	0,
	70,
	1311);
INSERT INTO V_IRF
	VALUES (1338,
	1331);
INSERT INTO V_VAL
	VALUES (1339,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1311);
INSERT INTO V_UNY
	VALUES (1339,
	1338,
	'empty');
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
	72,
	1311);
INSERT INTO V_UNY
	VALUES (1336,
	1339,
	'not');
INSERT INTO V_VAR
	VALUES (1331,
	1311,
	'openAchievement',
	1,
	70);
INSERT INTO V_INT
	VALUES (1331,
	0,
	230);
INSERT INTO ACT_BLK
	VALUES (1335,
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
	1285,
	0);
INSERT INTO ACT_SMT
	VALUES (1340,
	1335,
	1341,
	25,
	5,
	'WorkoutSession::reset line: 25');
INSERT INTO ACT_UNR
	VALUES (1340,
	1331,
	1307,
	'''is open for''',
	235,
	25,
	56,
	25,
	60);
INSERT INTO ACT_SMT
	VALUES (1341,
	1335,
	0,
	26,
	5,
	'WorkoutSession::reset line: 26');
INSERT INTO ACT_DEL
	VALUES (1341,
	1331);
INSERT INTO ACT_BLK
	VALUES (1318,
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
	1285,
	0);
INSERT INTO ACT_SMT
	VALUES (1342,
	1318,
	1343,
	35,
	3,
	'WorkoutSession::reset line: 35');
INSERT INTO ACT_SEL
	VALUES (1342,
	1344,
	1,
	'many',
	1345);
INSERT INTO ACT_SR
	VALUES (1342);
INSERT INTO ACT_LNK
	VALUES (1346,
	'''has recorded''',
	1342,
	228,
	0,
	3,
	230,
	35,
	45,
	35,
	57,
	35,
	61);
INSERT INTO ACT_SMT
	VALUES (1343,
	1318,
	1347,
	36,
	3,
	'WorkoutSession::reset line: 36');
INSERT INTO ACT_FOR
	VALUES (1343,
	1348,
	1,
	1349,
	1344,
	230);
INSERT INTO ACT_SMT
	VALUES (1347,
	1318,
	1350,
	40,
	3,
	'WorkoutSession::reset line: 40');
INSERT INTO ACT_UNR
	VALUES (1347,
	1323,
	1319,
	'''has executed''',
	232,
	40,
	34,
	40,
	38);
INSERT INTO ACT_SMT
	VALUES (1350,
	1318,
	0,
	41,
	3,
	'WorkoutSession::reset line: 41');
INSERT INTO ACT_DEL
	VALUES (1350,
	1319);
INSERT INTO V_VAL
	VALUES (1345,
	0,
	0,
	35,
	39,
	42,
	0,
	0,
	0,
	0,
	70,
	1318);
INSERT INTO V_IRF
	VALUES (1345,
	1319);
INSERT INTO V_VAR
	VALUES (1344,
	1318,
	'achievements',
	1,
	573);
INSERT INTO V_INS
	VALUES (1344,
	230);
INSERT INTO V_VAR
	VALUES (1349,
	1318,
	'achievement',
	1,
	70);
INSERT INTO V_INT
	VALUES (1349,
	1,
	230);
INSERT INTO ACT_BLK
	VALUES (1348,
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
	1285,
	0);
INSERT INTO ACT_SMT
	VALUES (1351,
	1348,
	1352,
	37,
	5,
	'WorkoutSession::reset line: 37');
INSERT INTO ACT_UNR
	VALUES (1351,
	1319,
	1349,
	'''has recorded''',
	228,
	37,
	43,
	37,
	47);
INSERT INTO ACT_SMT
	VALUES (1352,
	1348,
	0,
	38,
	5,
	'WorkoutSession::reset line: 38');
INSERT INTO ACT_DEL
	VALUES (1352,
	1349);
INSERT INTO O_NBATTR
	VALUES (1259,
	66);
INSERT INTO O_BATTR
	VALUES (1259,
	66);
INSERT INTO O_ATTR
	VALUES (1259,
	66,
	0,
	'startDate',
	'UTC Date on which this session commenced.',
	'',
	'startDate',
	0,
	253,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1261,
	66);
INSERT INTO O_BATTR
	VALUES (1261,
	66);
INSERT INTO O_ATTR
	VALUES (1261,
	66,
	1259,
	'startTime',
	'UTC time at which this session commenced.',
	'',
	'startTime',
	0,
	259,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (512,
	66,
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
	VALUES (1353,
	66,
	512,
	1);
INSERT INTO ACT_ACT
	VALUES (1353,
	'derived attribute',
	0,
	1354,
	0,
	0,
	'WorkoutSession::currentSpeed',
	0);
INSERT INTO ACT_BLK
	VALUES (1354,
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
	1353,
	0);
INSERT INTO ACT_SMT
	VALUES (1355,
	1354,
	1356,
	6,
	1,
	'WorkoutSession::currentSpeed line: 6');
INSERT INTO ACT_SEL
	VALUES (1355,
	1357,
	1,
	'one',
	1358);
INSERT INTO ACT_SR
	VALUES (1355);
INSERT INTO ACT_LNK
	VALUES (1359,
	'''captures path in''',
	1355,
	212,
	1360,
	2,
	193,
	6,
	39,
	6,
	48,
	6,
	51);
INSERT INTO ACT_LNK
	VALUES (1360,
	'''has last''',
	0,
	200,
	0,
	2,
	195,
	6,
	72,
	6,
	83,
	6,
	86);
INSERT INTO ACT_SMT
	VALUES (1356,
	1354,
	1361,
	7,
	1,
	'WorkoutSession::currentSpeed line: 7');
INSERT INTO ACT_AI
	VALUES (1356,
	1362,
	1363,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1361,
	1354,
	1364,
	8,
	1,
	'WorkoutSession::currentSpeed line: 8');
INSERT INTO ACT_IF
	VALUES (1361,
	1365,
	1366,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1364,
	1354,
	0,
	30,
	1,
	'WorkoutSession::currentSpeed line: 30');
INSERT INTO ACT_AI
	VALUES (1364,
	1367,
	1368,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1358,
	0,
	0,
	6,
	33,
	36,
	0,
	0,
	0,
	0,
	70,
	1354);
INSERT INTO V_IRF
	VALUES (1358,
	1369);
INSERT INTO V_VAL
	VALUES (1363,
	1,
	1,
	7,
	1,
	5,
	0,
	0,
	0,
	0,
	170,
	1354);
INSERT INTO V_TVL
	VALUES (1363,
	1370);
INSERT INTO V_VAL
	VALUES (1362,
	0,
	0,
	7,
	9,
	11,
	0,
	0,
	0,
	0,
	170,
	1354);
INSERT INTO V_LRL
	VALUES (1362,
	'0.0');
INSERT INTO V_VAL
	VALUES (1371,
	0,
	0,
	8,
	16,
	24,
	0,
	0,
	0,
	0,
	70,
	1354);
INSERT INTO V_IRF
	VALUES (1371,
	1357);
INSERT INTO V_VAL
	VALUES (1372,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1354);
INSERT INTO V_UNY
	VALUES (1372,
	1371,
	'empty');
INSERT INTO V_VAL
	VALUES (1366,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1354);
INSERT INTO V_UNY
	VALUES (1366,
	1372,
	'not');
INSERT INTO V_VAL
	VALUES (1373,
	1,
	0,
	30,
	1,
	4,
	0,
	0,
	0,
	0,
	70,
	1354);
INSERT INTO V_IRF
	VALUES (1373,
	1369);
INSERT INTO V_VAL
	VALUES (1368,
	1,
	0,
	30,
	6,
	17,
	0,
	0,
	0,
	0,
	170,
	1354);
INSERT INTO V_AVL
	VALUES (1368,
	1373,
	66,
	512);
INSERT INTO V_VAL
	VALUES (1367,
	0,
	0,
	30,
	21,
	25,
	0,
	0,
	0,
	0,
	170,
	1354);
INSERT INTO V_TVL
	VALUES (1367,
	1370);
INSERT INTO V_VAR
	VALUES (1357,
	1354,
	'lastPoint',
	1,
	70);
INSERT INTO V_INT
	VALUES (1357,
	0,
	195);
INSERT INTO V_VAR
	VALUES (1369,
	1354,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (1369,
	0,
	66);
INSERT INTO V_VAR
	VALUES (1370,
	1354,
	'speed',
	1,
	170);
INSERT INTO V_TRN
	VALUES (1370,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (1365,
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
	1353,
	0);
INSERT INTO ACT_SMT
	VALUES (1374,
	1365,
	1375,
	9,
	3,
	'WorkoutSession::currentSpeed line: 9');
INSERT INTO ACT_AI
	VALUES (1374,
	1376,
	1377,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1375,
	1365,
	1378,
	10,
	3,
	'WorkoutSession::currentSpeed line: 10');
INSERT INTO ACT_AI
	VALUES (1375,
	1379,
	1380,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1378,
	1365,
	1381,
	11,
	3,
	'WorkoutSession::currentSpeed line: 11');
INSERT INTO ACT_AI
	VALUES (1378,
	1382,
	1383,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1381,
	1365,
	1384,
	12,
	3,
	'WorkoutSession::currentSpeed line: 12');
INSERT INTO ACT_AI
	VALUES (1381,
	1385,
	1386,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1384,
	1365,
	1387,
	13,
	3,
	'WorkoutSession::currentSpeed line: 13');
INSERT INTO ACT_AI
	VALUES (1384,
	1388,
	1389,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1387,
	1365,
	1390,
	14,
	3,
	'WorkoutSession::currentSpeed line: 14');
INSERT INTO ACT_WHL
	VALUES (1387,
	1391,
	1392);
INSERT INTO ACT_SMT
	VALUES (1390,
	1365,
	1393,
	25,
	3,
	'WorkoutSession::currentSpeed line: 25');
INSERT INTO ACT_AI
	VALUES (1390,
	1394,
	1395,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1393,
	1365,
	0,
	26,
	3,
	'WorkoutSession::currentSpeed line: 26');
INSERT INTO ACT_AI
	VALUES (1393,
	1396,
	1397,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1377,
	1,
	1,
	9,
	3,
	8,
	0,
	0,
	0,
	0,
	70,
	1365);
INSERT INTO V_IRF
	VALUES (1377,
	1398);
INSERT INTO V_VAL
	VALUES (1376,
	0,
	0,
	9,
	12,
	20,
	0,
	0,
	0,
	0,
	70,
	1365);
INSERT INTO V_IRF
	VALUES (1376,
	1357);
INSERT INTO V_VAL
	VALUES (1380,
	1,
	1,
	10,
	3,
	7,
	0,
	0,
	0,
	0,
	13,
	1365);
INSERT INTO V_TVL
	VALUES (1380,
	1399);
INSERT INTO V_VAL
	VALUES (1379,
	0,
	0,
	10,
	11,
	30,
	0,
	0,
	0,
	0,
	13,
	1365);
INSERT INTO V_SCV
	VALUES (1379,
	1400,
	13);
INSERT INTO V_VAL
	VALUES (1383,
	1,
	1,
	11,
	3,
	15,
	0,
	0,
	0,
	0,
	170,
	1365);
INSERT INTO V_TVL
	VALUES (1383,
	1401);
INSERT INTO V_VAL
	VALUES (1382,
	0,
	0,
	11,
	19,
	21,
	0,
	0,
	0,
	0,
	170,
	1365);
INSERT INTO V_LRL
	VALUES (1382,
	'0.0');
INSERT INTO V_VAL
	VALUES (1386,
	1,
	1,
	12,
	3,
	13,
	0,
	0,
	0,
	0,
	170,
	1365);
INSERT INTO V_TVL
	VALUES (1386,
	1402);
INSERT INTO V_VAL
	VALUES (1385,
	0,
	0,
	12,
	17,
	19,
	0,
	0,
	0,
	0,
	170,
	1365);
INSERT INTO V_LRL
	VALUES (1385,
	'0.0');
INSERT INTO V_VAL
	VALUES (1389,
	1,
	0,
	13,
	3,
	13,
	0,
	0,
	0,
	0,
	170,
	1365);
INSERT INTO V_TVL
	VALUES (1389,
	1402);
INSERT INTO V_VAL
	VALUES (1403,
	0,
	0,
	13,
	17,
	25,
	0,
	0,
	0,
	0,
	70,
	1365);
INSERT INTO V_IRF
	VALUES (1403,
	1357);
INSERT INTO V_VAL
	VALUES (1388,
	0,
	0,
	13,
	27,
	30,
	0,
	0,
	0,
	0,
	13,
	1365);
INSERT INTO V_AVL
	VALUES (1388,
	1403,
	195,
	1082);
INSERT INTO V_VAL
	VALUES (1404,
	0,
	0,
	14,
	11,
	15,
	0,
	0,
	0,
	0,
	13,
	1365);
INSERT INTO V_TVL
	VALUES (1404,
	1399);
INSERT INTO V_VAL
	VALUES (1391,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1365);
INSERT INTO V_BIN
	VALUES (1391,
	1405,
	1404,
	'>');
INSERT INTO V_VAL
	VALUES (1405,
	0,
	0,
	14,
	19,
	19,
	0,
	0,
	0,
	0,
	13,
	1365);
INSERT INTO V_LIN
	VALUES (1405,
	'0');
INSERT INTO V_VAL
	VALUES (1395,
	1,
	0,
	25,
	3,
	13,
	0,
	0,
	0,
	0,
	170,
	1365);
INSERT INTO V_TVL
	VALUES (1395,
	1402);
INSERT INTO V_VAL
	VALUES (1406,
	0,
	0,
	25,
	17,
	27,
	0,
	0,
	0,
	0,
	170,
	1365);
INSERT INTO V_TVL
	VALUES (1406,
	1402);
INSERT INTO V_VAL
	VALUES (1394,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	170,
	1365);
INSERT INTO V_BIN
	VALUES (1394,
	1407,
	1406,
	'-');
INSERT INTO V_VAL
	VALUES (1408,
	0,
	0,
	25,
	31,
	36,
	0,
	0,
	0,
	0,
	70,
	1365);
INSERT INTO V_IRF
	VALUES (1408,
	1398);
INSERT INTO V_VAL
	VALUES (1407,
	0,
	0,
	25,
	38,
	41,
	0,
	0,
	0,
	0,
	13,
	1365);
INSERT INTO V_AVL
	VALUES (1407,
	1408,
	195,
	1082);
INSERT INTO V_VAL
	VALUES (1397,
	1,
	0,
	26,
	3,
	7,
	0,
	0,
	0,
	0,
	170,
	1365);
INSERT INTO V_TVL
	VALUES (1397,
	1370);
INSERT INTO V_VAL
	VALUES (1409,
	0,
	0,
	26,
	12,
	24,
	0,
	0,
	0,
	0,
	170,
	1365);
INSERT INTO V_TVL
	VALUES (1409,
	1401);
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
	170,
	1365);
INSERT INTO V_BIN
	VALUES (1410,
	1411,
	1409,
	'/');
INSERT INTO V_VAL
	VALUES (1411,
	0,
	0,
	26,
	28,
	31,
	0,
	0,
	0,
	0,
	13,
	1365);
INSERT INTO V_LIN
	VALUES (1411,
	'1000');
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
	170,
	1365);
INSERT INTO V_BIN
	VALUES (1396,
	1412,
	1410,
	'/');
INSERT INTO V_VAL
	VALUES (1413,
	0,
	0,
	26,
	37,
	47,
	0,
	0,
	0,
	0,
	170,
	1365);
INSERT INTO V_TVL
	VALUES (1413,
	1402);
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
	170,
	1365);
INSERT INTO V_BIN
	VALUES (1412,
	1414,
	1413,
	'/');
INSERT INTO V_VAL
	VALUES (1414,
	0,
	0,
	26,
	51,
	64,
	0,
	0,
	0,
	0,
	13,
	1365);
INSERT INTO V_SCV
	VALUES (1414,
	1415,
	13);
INSERT INTO V_VAR
	VALUES (1398,
	1365,
	'cursor',
	1,
	70);
INSERT INTO V_INT
	VALUES (1398,
	0,
	195);
INSERT INTO V_VAR
	VALUES (1399,
	1365,
	'index',
	1,
	13);
INSERT INTO V_TRN
	VALUES (1399,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1401,
	1365,
	'totalDistance',
	1,
	170);
INSERT INTO V_TRN
	VALUES (1401,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1402,
	1365,
	'elapsedTime',
	1,
	170);
INSERT INTO V_TRN
	VALUES (1402,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (1392,
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
	1353,
	0);
INSERT INTO ACT_SMT
	VALUES (1416,
	1392,
	1417,
	15,
	5,
	'WorkoutSession::currentSpeed line: 15');
INSERT INTO ACT_SEL
	VALUES (1416,
	1418,
	1,
	'one',
	1419);
INSERT INTO ACT_SR
	VALUES (1416);
INSERT INTO ACT_LNK
	VALUES (1420,
	'preceeds',
	1416,
	197,
	0,
	2,
	195,
	15,
	49,
	15,
	60,
	15,
	63);
INSERT INTO ACT_SMT
	VALUES (1417,
	1392,
	1421,
	16,
	5,
	'WorkoutSession::currentSpeed line: 16');
INSERT INTO ACT_IF
	VALUES (1417,
	1422,
	1423,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1421,
	1392,
	1424,
	19,
	5,
	'WorkoutSession::currentSpeed line: 19');
INSERT INTO ACT_AI
	VALUES (1421,
	1425,
	1426,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1424,
	1392,
	1427,
	21,
	5,
	'WorkoutSession::currentSpeed line: 21');
INSERT INTO ACT_AI
	VALUES (1424,
	1428,
	1429,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1427,
	1392,
	1430,
	22,
	5,
	'WorkoutSession::currentSpeed line: 22');
INSERT INTO ACT_AI
	VALUES (1427,
	1431,
	1432,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1430,
	1392,
	0,
	23,
	5,
	'WorkoutSession::currentSpeed line: 23');
INSERT INTO ACT_AI
	VALUES (1430,
	1433,
	1434,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1419,
	0,
	0,
	15,
	41,
	46,
	0,
	0,
	0,
	0,
	70,
	1392);
INSERT INTO V_IRF
	VALUES (1419,
	1398);
INSERT INTO V_VAL
	VALUES (1435,
	0,
	0,
	16,
	16,
	28,
	0,
	0,
	0,
	0,
	70,
	1392);
INSERT INTO V_IRF
	VALUES (1435,
	1418);
INSERT INTO V_VAL
	VALUES (1423,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1392);
INSERT INTO V_UNY
	VALUES (1423,
	1435,
	'empty');
INSERT INTO V_VAL
	VALUES (1426,
	1,
	1,
	19,
	10,
	17,
	0,
	0,
	0,
	0,
	170,
	1392);
INSERT INTO V_TVL
	VALUES (1426,
	1436);
INSERT INTO V_VAL
	VALUES (1425,
	0,
	0,
	19,
	31,
	42,
	19,
	44,
	20,
	70,
	170,
	1392);
INSERT INTO V_MSV
	VALUES (1425,
	0,
	7,
	1,
	19,
	21,
	0);
INSERT INTO V_VAL
	VALUES (1437,
	0,
	0,
	19,
	52,
	57,
	0,
	0,
	0,
	0,
	70,
	1392);
INSERT INTO V_IRF
	VALUES (1437,
	1398);
INSERT INTO V_VAL
	VALUES (1438,
	0,
	0,
	19,
	59,
	66,
	0,
	0,
	0,
	0,
	170,
	1392);
INSERT INTO V_AVL
	VALUES (1438,
	1437,
	195,
	1086);
INSERT INTO V_PAR
	VALUES (1438,
	0,
	1425,
	'fromLat',
	1439,
	19,
	44);
INSERT INTO V_VAL
	VALUES (1440,
	0,
	0,
	19,
	79,
	84,
	0,
	0,
	0,
	0,
	70,
	1392);
INSERT INTO V_IRF
	VALUES (1440,
	1398);
INSERT INTO V_VAL
	VALUES (1439,
	0,
	0,
	19,
	86,
	94,
	0,
	0,
	0,
	0,
	170,
	1392);
INSERT INTO V_AVL
	VALUES (1439,
	1440,
	195,
	1089);
INSERT INTO V_PAR
	VALUES (1439,
	0,
	1425,
	'fromLong',
	1441,
	19,
	69);
INSERT INTO V_VAL
	VALUES (1442,
	0,
	0,
	20,
	46,
	58,
	0,
	0,
	0,
	0,
	70,
	1392);
INSERT INTO V_IRF
	VALUES (1442,
	1418);
INSERT INTO V_VAL
	VALUES (1441,
	0,
	0,
	20,
	60,
	67,
	0,
	0,
	0,
	0,
	170,
	1392);
INSERT INTO V_AVL
	VALUES (1441,
	1442,
	195,
	1086);
INSERT INTO V_PAR
	VALUES (1441,
	0,
	1425,
	'toLat',
	1443,
	20,
	39);
INSERT INTO V_VAL
	VALUES (1444,
	0,
	0,
	20,
	78,
	90,
	0,
	0,
	0,
	0,
	70,
	1392);
INSERT INTO V_IRF
	VALUES (1444,
	1418);
INSERT INTO V_VAL
	VALUES (1443,
	0,
	0,
	20,
	92,
	100,
	0,
	0,
	0,
	0,
	170,
	1392);
INSERT INTO V_AVL
	VALUES (1443,
	1444,
	195,
	1089);
INSERT INTO V_PAR
	VALUES (1443,
	0,
	1425,
	'toLong',
	0,
	20,
	70);
INSERT INTO V_VAL
	VALUES (1429,
	1,
	0,
	21,
	5,
	17,
	0,
	0,
	0,
	0,
	170,
	1392);
INSERT INTO V_TVL
	VALUES (1429,
	1401);
INSERT INTO V_VAL
	VALUES (1445,
	0,
	0,
	21,
	21,
	33,
	0,
	0,
	0,
	0,
	170,
	1392);
INSERT INTO V_TVL
	VALUES (1445,
	1401);
INSERT INTO V_VAL
	VALUES (1428,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	170,
	1392);
INSERT INTO V_BIN
	VALUES (1428,
	1446,
	1445,
	'+');
INSERT INTO V_VAL
	VALUES (1446,
	0,
	0,
	21,
	37,
	44,
	0,
	0,
	0,
	0,
	170,
	1392);
INSERT INTO V_TVL
	VALUES (1446,
	1436);
INSERT INTO V_VAL
	VALUES (1432,
	1,
	0,
	22,
	5,
	9,
	0,
	0,
	0,
	0,
	13,
	1392);
INSERT INTO V_TVL
	VALUES (1432,
	1399);
INSERT INTO V_VAL
	VALUES (1447,
	0,
	0,
	22,
	13,
	17,
	0,
	0,
	0,
	0,
	13,
	1392);
INSERT INTO V_TVL
	VALUES (1447,
	1399);
INSERT INTO V_VAL
	VALUES (1431,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	13,
	1392);
INSERT INTO V_BIN
	VALUES (1431,
	1448,
	1447,
	'-');
INSERT INTO V_VAL
	VALUES (1448,
	0,
	0,
	22,
	21,
	21,
	0,
	0,
	0,
	0,
	13,
	1392);
INSERT INTO V_LIN
	VALUES (1448,
	'1');
INSERT INTO V_VAL
	VALUES (1434,
	1,
	0,
	23,
	5,
	10,
	0,
	0,
	0,
	0,
	70,
	1392);
INSERT INTO V_IRF
	VALUES (1434,
	1398);
INSERT INTO V_VAL
	VALUES (1433,
	0,
	0,
	23,
	14,
	26,
	0,
	0,
	0,
	0,
	70,
	1392);
INSERT INTO V_IRF
	VALUES (1433,
	1418);
INSERT INTO V_VAR
	VALUES (1418,
	1392,
	'previousPoint',
	1,
	70);
INSERT INTO V_INT
	VALUES (1418,
	0,
	195);
INSERT INTO V_VAR
	VALUES (1436,
	1392,
	'distance',
	1,
	170);
INSERT INTO V_TRN
	VALUES (1436,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (1422,
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
	1353,
	0);
INSERT INTO ACT_SMT
	VALUES (1449,
	1422,
	0,
	17,
	7,
	'WorkoutSession::currentSpeed line: 17');
INSERT INTO ACT_BRK
	VALUES (1449);
INSERT INTO O_BATTR
	VALUES (512,
	66);
INSERT INTO O_ATTR
	VALUES (512,
	66,
	1261,
	'currentSpeed',
	'The current speed of the device, expressed in kilometers per hour, averaged 
over a predefined number of the most recently acquired track points.
',
	'',
	'currentSpeed',
	0,
	170,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (533,
	66,
	'// Calculate current pace from current speed, converting from km/hour to minutes/km.

if ( self.currentSpeed != 0.0 )
  self.currentPace = 60.0 / self.currentSpeed;
else
  self.currentPace = 0.0;
end if;',
	1);
INSERT INTO ACT_DAB
	VALUES (1450,
	66,
	533,
	1);
INSERT INTO ACT_ACT
	VALUES (1450,
	'derived attribute',
	0,
	1451,
	0,
	0,
	'WorkoutSession::currentPace',
	0);
INSERT INTO ACT_BLK
	VALUES (1451,
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
	1450,
	0);
INSERT INTO ACT_SMT
	VALUES (1452,
	1451,
	0,
	3,
	1,
	'WorkoutSession::currentPace line: 3');
INSERT INTO ACT_IF
	VALUES (1452,
	1453,
	1454,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1455,
	1451,
	0,
	5,
	1,
	'WorkoutSession::currentPace line: 5');
INSERT INTO ACT_E
	VALUES (1455,
	1456,
	1452);
INSERT INTO V_VAL
	VALUES (1457,
	0,
	0,
	3,
	6,
	9,
	0,
	0,
	0,
	0,
	70,
	1451);
INSERT INTO V_IRF
	VALUES (1457,
	1458);
INSERT INTO V_VAL
	VALUES (1459,
	0,
	0,
	3,
	11,
	22,
	0,
	0,
	0,
	0,
	170,
	1451);
INSERT INTO V_AVL
	VALUES (1459,
	1457,
	66,
	512);
INSERT INTO V_VAL
	VALUES (1454,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1451);
INSERT INTO V_BIN
	VALUES (1454,
	1460,
	1459,
	'!=');
INSERT INTO V_VAL
	VALUES (1460,
	0,
	0,
	3,
	27,
	29,
	0,
	0,
	0,
	0,
	170,
	1451);
INSERT INTO V_LRL
	VALUES (1460,
	'0.0');
INSERT INTO V_VAR
	VALUES (1458,
	1451,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (1458,
	0,
	66);
INSERT INTO ACT_BLK
	VALUES (1453,
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
	1450,
	0);
INSERT INTO ACT_SMT
	VALUES (1461,
	1453,
	0,
	4,
	3,
	'WorkoutSession::currentPace line: 4');
INSERT INTO ACT_AI
	VALUES (1461,
	1462,
	1463,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1464,
	1,
	0,
	4,
	3,
	6,
	0,
	0,
	0,
	0,
	70,
	1453);
INSERT INTO V_IRF
	VALUES (1464,
	1458);
INSERT INTO V_VAL
	VALUES (1463,
	1,
	0,
	4,
	8,
	18,
	0,
	0,
	0,
	0,
	170,
	1453);
INSERT INTO V_AVL
	VALUES (1463,
	1464,
	66,
	533);
INSERT INTO V_VAL
	VALUES (1465,
	0,
	0,
	4,
	22,
	25,
	0,
	0,
	0,
	0,
	170,
	1453);
INSERT INTO V_LRL
	VALUES (1465,
	'60.0');
INSERT INTO V_VAL
	VALUES (1462,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	170,
	1453);
INSERT INTO V_BIN
	VALUES (1462,
	1466,
	1465,
	'/');
INSERT INTO V_VAL
	VALUES (1467,
	0,
	0,
	4,
	29,
	32,
	0,
	0,
	0,
	0,
	70,
	1453);
INSERT INTO V_IRF
	VALUES (1467,
	1458);
INSERT INTO V_VAL
	VALUES (1466,
	0,
	0,
	4,
	34,
	45,
	0,
	0,
	0,
	0,
	170,
	1453);
INSERT INTO V_AVL
	VALUES (1466,
	1467,
	66,
	512);
INSERT INTO ACT_BLK
	VALUES (1456,
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
	1450,
	0);
INSERT INTO ACT_SMT
	VALUES (1468,
	1456,
	0,
	6,
	3,
	'WorkoutSession::currentPace line: 6');
INSERT INTO ACT_AI
	VALUES (1468,
	1469,
	1470,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1471,
	1,
	0,
	6,
	3,
	6,
	0,
	0,
	0,
	0,
	70,
	1456);
INSERT INTO V_IRF
	VALUES (1471,
	1458);
INSERT INTO V_VAL
	VALUES (1470,
	1,
	0,
	6,
	8,
	18,
	0,
	0,
	0,
	0,
	170,
	1456);
INSERT INTO V_AVL
	VALUES (1470,
	1471,
	66,
	533);
INSERT INTO V_VAL
	VALUES (1469,
	0,
	0,
	6,
	22,
	24,
	0,
	0,
	0,
	0,
	170,
	1456);
INSERT INTO V_LRL
	VALUES (1469,
	'0.0');
INSERT INTO O_BATTR
	VALUES (533,
	66);
INSERT INTO O_ATTR
	VALUES (533,
	66,
	512,
	'currentPace',
	'The inverse of currentSpeed, expressed in minutes per kilometer.',
	'',
	'currentPace',
	0,
	170,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (554,
	66,
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
	VALUES (1472,
	66,
	554,
	1);
INSERT INTO ACT_ACT
	VALUES (1472,
	'derived attribute',
	0,
	1473,
	0,
	0,
	'WorkoutSession::currentHeartRate',
	0);
INSERT INTO ACT_BLK
	VALUES (1473,
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
	1472,
	0);
INSERT INTO ACT_SMT
	VALUES (1474,
	1473,
	1475,
	3,
	1,
	'WorkoutSession::currentHeartRate line: 3');
INSERT INTO ACT_SEL
	VALUES (1474,
	1476,
	1,
	'one',
	1477);
INSERT INTO ACT_SR
	VALUES (1474);
INSERT INTO ACT_LNK
	VALUES (1478,
	'''is timed by''',
	1474,
	209,
	0,
	2,
	84,
	3,
	42,
	3,
	55,
	3,
	58);
INSERT INTO ACT_SMT
	VALUES (1475,
	1473,
	1479,
	4,
	1,
	'WorkoutSession::currentHeartRate line: 4');
INSERT INTO ACT_SEL
	VALUES (1475,
	1480,
	1,
	'many',
	1481);
INSERT INTO ACT_SRW
	VALUES (1475,
	1482);
INSERT INTO ACT_LNK
	VALUES (1483,
	'''tracks heart rate over time as''',
	1475,
	215,
	0,
	3,
	216,
	4,
	38,
	4,
	54,
	4,
	57);
INSERT INTO ACT_SMT
	VALUES (1479,
	1473,
	1484,
	6,
	1,
	'WorkoutSession::currentHeartRate line: 6');
INSERT INTO ACT_AI
	VALUES (1479,
	1485,
	1486,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1484,
	1473,
	1487,
	7,
	1,
	'WorkoutSession::currentHeartRate line: 7');
INSERT INTO ACT_AI
	VALUES (1484,
	1488,
	1489,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1487,
	1473,
	1490,
	8,
	1,
	'WorkoutSession::currentHeartRate line: 8');
INSERT INTO ACT_FOR
	VALUES (1487,
	1491,
	1,
	1492,
	1480,
	216);
INSERT INTO ACT_SMT
	VALUES (1490,
	1473,
	0,
	12,
	1,
	'WorkoutSession::currentHeartRate line: 12');
INSERT INTO ACT_IF
	VALUES (1490,
	1493,
	1494,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1495,
	1473,
	0,
	14,
	1,
	'WorkoutSession::currentHeartRate line: 14');
INSERT INTO ACT_E
	VALUES (1495,
	1496,
	1490);
INSERT INTO V_VAL
	VALUES (1477,
	0,
	0,
	3,
	36,
	39,
	0,
	0,
	0,
	0,
	70,
	1473);
INSERT INTO V_IRF
	VALUES (1477,
	1497);
INSERT INTO V_VAL
	VALUES (1481,
	0,
	0,
	4,
	32,
	35,
	0,
	0,
	0,
	0,
	70,
	1473);
INSERT INTO V_IRF
	VALUES (1481,
	1497);
INSERT INTO V_VAL
	VALUES (1498,
	0,
	0,
	5,
	11,
	-1,
	0,
	0,
	0,
	0,
	70,
	1473);
INSERT INTO V_SLR
	VALUES (1498,
	0,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1499,
	0,
	0,
	5,
	20,
	23,
	0,
	0,
	0,
	0,
	13,
	1473);
INSERT INTO V_AVL
	VALUES (1499,
	1498,
	216,
	1027);
INSERT INTO V_VAL
	VALUES (1482,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1473);
INSERT INTO V_BIN
	VALUES (1482,
	1500,
	1499,
	'>=');
INSERT INTO V_VAL
	VALUES (1501,
	0,
	0,
	5,
	30,
	41,
	0,
	0,
	0,
	0,
	70,
	1473);
INSERT INTO V_IRF
	VALUES (1501,
	1476);
INSERT INTO V_VAL
	VALUES (1502,
	0,
	0,
	5,
	43,
	46,
	0,
	0,
	0,
	0,
	13,
	1473);
INSERT INTO V_AVL
	VALUES (1502,
	1501,
	84,
	403);
INSERT INTO V_VAL
	VALUES (1500,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	13,
	1473);
INSERT INTO V_BIN
	VALUES (1500,
	1503,
	1502,
	'-');
INSERT INTO V_VAL
	VALUES (1504,
	0,
	0,
	5,
	51,
	73,
	0,
	0,
	0,
	0,
	13,
	1473);
INSERT INTO V_SCV
	VALUES (1504,
	1505,
	13);
INSERT INTO V_VAL
	VALUES (1503,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	13,
	1473);
INSERT INTO V_BIN
	VALUES (1503,
	1506,
	1504,
	'*');
INSERT INTO V_VAL
	VALUES (1506,
	0,
	0,
	5,
	77,
	100,
	0,
	0,
	0,
	0,
	13,
	1473);
INSERT INTO V_SCV
	VALUES (1506,
	1507,
	13);
INSERT INTO V_VAL
	VALUES (1486,
	1,
	1,
	6,
	1,
	15,
	0,
	0,
	0,
	0,
	13,
	1473);
INSERT INTO V_TVL
	VALUES (1486,
	1508);
INSERT INTO V_VAL
	VALUES (1485,
	0,
	0,
	6,
	19,
	19,
	0,
	0,
	0,
	0,
	13,
	1473);
INSERT INTO V_LIN
	VALUES (1485,
	'0');
INSERT INTO V_VAL
	VALUES (1489,
	1,
	1,
	7,
	1,
	3,
	0,
	0,
	0,
	0,
	13,
	1473);
INSERT INTO V_TVL
	VALUES (1489,
	1509);
INSERT INTO V_VAL
	VALUES (1488,
	0,
	0,
	7,
	7,
	7,
	0,
	0,
	0,
	0,
	13,
	1473);
INSERT INTO V_LIN
	VALUES (1488,
	'0');
INSERT INTO V_VAL
	VALUES (1510,
	0,
	0,
	12,
	6,
	20,
	0,
	0,
	0,
	0,
	13,
	1473);
INSERT INTO V_TVL
	VALUES (1510,
	1508);
INSERT INTO V_VAL
	VALUES (1494,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1473);
INSERT INTO V_BIN
	VALUES (1494,
	1511,
	1510,
	'>');
INSERT INTO V_VAL
	VALUES (1511,
	0,
	0,
	12,
	24,
	24,
	0,
	0,
	0,
	0,
	13,
	1473);
INSERT INTO V_LIN
	VALUES (1511,
	'0');
INSERT INTO V_VAR
	VALUES (1476,
	1473,
	'workoutTimer',
	1,
	70);
INSERT INTO V_INT
	VALUES (1476,
	0,
	84);
INSERT INTO V_VAR
	VALUES (1497,
	1473,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (1497,
	0,
	66);
INSERT INTO V_VAR
	VALUES (1480,
	1473,
	'samples',
	1,
	573);
INSERT INTO V_INS
	VALUES (1480,
	216);
INSERT INTO V_VAR
	VALUES (1508,
	1473,
	'numberOfSamples',
	1,
	13);
INSERT INTO V_TRN
	VALUES (1508,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1509,
	1473,
	'sum',
	1,
	13);
INSERT INTO V_TRN
	VALUES (1509,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1492,
	1473,
	'sample',
	1,
	70);
INSERT INTO V_INT
	VALUES (1492,
	1,
	216);
INSERT INTO ACT_BLK
	VALUES (1491,
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
	1472,
	0);
INSERT INTO ACT_SMT
	VALUES (1512,
	1491,
	1513,
	9,
	3,
	'WorkoutSession::currentHeartRate line: 9');
INSERT INTO ACT_AI
	VALUES (1512,
	1514,
	1515,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1513,
	1491,
	0,
	10,
	3,
	'WorkoutSession::currentHeartRate line: 10');
INSERT INTO ACT_AI
	VALUES (1513,
	1516,
	1517,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1515,
	1,
	0,
	9,
	3,
	17,
	0,
	0,
	0,
	0,
	13,
	1491);
INSERT INTO V_TVL
	VALUES (1515,
	1508);
INSERT INTO V_VAL
	VALUES (1518,
	0,
	0,
	9,
	21,
	35,
	0,
	0,
	0,
	0,
	13,
	1491);
INSERT INTO V_TVL
	VALUES (1518,
	1508);
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
	13,
	1491);
INSERT INTO V_BIN
	VALUES (1514,
	1519,
	1518,
	'+');
INSERT INTO V_VAL
	VALUES (1519,
	0,
	0,
	9,
	39,
	39,
	0,
	0,
	0,
	0,
	13,
	1491);
INSERT INTO V_LIN
	VALUES (1519,
	'1');
INSERT INTO V_VAL
	VALUES (1517,
	1,
	0,
	10,
	3,
	5,
	0,
	0,
	0,
	0,
	13,
	1491);
INSERT INTO V_TVL
	VALUES (1517,
	1509);
INSERT INTO V_VAL
	VALUES (1520,
	0,
	0,
	10,
	9,
	11,
	0,
	0,
	0,
	0,
	13,
	1491);
INSERT INTO V_TVL
	VALUES (1520,
	1509);
INSERT INTO V_VAL
	VALUES (1516,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	13,
	1491);
INSERT INTO V_BIN
	VALUES (1516,
	1521,
	1520,
	'+');
INSERT INTO V_VAL
	VALUES (1522,
	0,
	0,
	10,
	15,
	20,
	0,
	0,
	0,
	0,
	70,
	1491);
INSERT INTO V_IRF
	VALUES (1522,
	1492);
INSERT INTO V_VAL
	VALUES (1521,
	0,
	0,
	10,
	22,
	30,
	0,
	0,
	0,
	0,
	13,
	1491);
INSERT INTO V_AVL
	VALUES (1521,
	1522,
	216,
	1026);
INSERT INTO ACT_BLK
	VALUES (1493,
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
	1472,
	0);
INSERT INTO ACT_SMT
	VALUES (1523,
	1493,
	0,
	13,
	3,
	'WorkoutSession::currentHeartRate line: 13');
INSERT INTO ACT_AI
	VALUES (1523,
	1524,
	1525,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1526,
	1,
	0,
	13,
	3,
	6,
	0,
	0,
	0,
	0,
	70,
	1493);
INSERT INTO V_IRF
	VALUES (1526,
	1497);
INSERT INTO V_VAL
	VALUES (1525,
	1,
	0,
	13,
	8,
	23,
	0,
	0,
	0,
	0,
	13,
	1493);
INSERT INTO V_AVL
	VALUES (1525,
	1526,
	66,
	554);
INSERT INTO V_VAL
	VALUES (1527,
	0,
	0,
	13,
	27,
	29,
	0,
	0,
	0,
	0,
	13,
	1493);
INSERT INTO V_TVL
	VALUES (1527,
	1509);
INSERT INTO V_VAL
	VALUES (1524,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	13,
	1493);
INSERT INTO V_BIN
	VALUES (1524,
	1528,
	1527,
	'/');
INSERT INTO V_VAL
	VALUES (1528,
	0,
	0,
	13,
	33,
	47,
	0,
	0,
	0,
	0,
	13,
	1493);
INSERT INTO V_TVL
	VALUES (1528,
	1508);
INSERT INTO ACT_BLK
	VALUES (1496,
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
	1472,
	0);
INSERT INTO ACT_SMT
	VALUES (1529,
	1496,
	0,
	15,
	3,
	'WorkoutSession::currentHeartRate line: 15');
INSERT INTO ACT_AI
	VALUES (1529,
	1530,
	1531,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1532,
	1,
	0,
	15,
	3,
	6,
	0,
	0,
	0,
	0,
	70,
	1496);
INSERT INTO V_IRF
	VALUES (1532,
	1497);
INSERT INTO V_VAL
	VALUES (1531,
	1,
	0,
	15,
	8,
	23,
	0,
	0,
	0,
	0,
	13,
	1496);
INSERT INTO V_AVL
	VALUES (1531,
	1532,
	66,
	554);
INSERT INTO V_VAL
	VALUES (1530,
	0,
	0,
	15,
	27,
	27,
	0,
	0,
	0,
	0,
	13,
	1496);
INSERT INTO V_LIN
	VALUES (1530,
	'0');
INSERT INTO O_BATTR
	VALUES (554,
	66);
INSERT INTO O_ATTR
	VALUES (554,
	66,
	533,
	'currentHeartRate',
	'Current heart rate, expressed in beats per minute, averaged over 
a predefined number of the most recent heart-rate samples.',
	'',
	'currentHeartRate',
	0,
	13,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (481,
	66);
INSERT INTO O_BATTR
	VALUES (481,
	66);
INSERT INTO O_ATTR
	VALUES (481,
	66,
	554,
	'accumulatedDistance',
	'Accumulated distance, expressed in meters, for this workout session.',
	'',
	'accumulatedDistance',
	0,
	170,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	66);
INSERT INTO O_OIDA
	VALUES (1259,
	66,
	0,
	'startDate');
INSERT INTO O_OIDA
	VALUES (1261,
	66,
	0,
	'startTime');
INSERT INTO O_ID
	VALUES (1,
	66);
INSERT INTO O_ID
	VALUES (2,
	66);
INSERT INTO PE_PE
	VALUES (84,
	1,
	191,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (84,
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
	VALUES (1533,
	84,
	'activate',
	'',
	240,
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
	VALUES (1534,
	1533);
INSERT INTO ACT_ACT
	VALUES (1534,
	'operation',
	0,
	1535,
	0,
	0,
	'WorkoutTimer::activate',
	0);
INSERT INTO ACT_BLK
	VALUES (1535,
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
	1534,
	0);
INSERT INTO ACT_SMT
	VALUES (1536,
	1535,
	1537,
	2,
	1,
	'WorkoutTimer::activate line: 2');
INSERT INTO E_ESS
	VALUES (1536,
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
	VALUES (1536,
	1,
	1538);
INSERT INTO E_CSME
	VALUES (1536,
	1539);
INSERT INTO E_CEI
	VALUES (1536,
	1540);
INSERT INTO ACT_SMT
	VALUES (1537,
	1535,
	1541,
	3,
	1,
	'WorkoutTimer::activate line: 3');
INSERT INTO ACT_AI
	VALUES (1537,
	1542,
	1543,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1541,
	1535,
	1544,
	6,
	1,
	'WorkoutTimer::activate line: 6');
INSERT INTO ACT_SEL
	VALUES (1541,
	1545,
	1,
	'one',
	1546);
INSERT INTO ACT_SR
	VALUES (1541);
INSERT INTO ACT_LNK
	VALUES (1547,
	'''acts as the stopwatch for''',
	1541,
	209,
	1548,
	2,
	66,
	7,
	9,
	7,
	24,
	7,
	27);
INSERT INTO ACT_LNK
	VALUES (1548,
	'''is currently executing''',
	0,
	225,
	0,
	2,
	221,
	7,
	57,
	7,
	62,
	7,
	66);
INSERT INTO ACT_SMT
	VALUES (1544,
	1535,
	1549,
	8,
	1,
	'WorkoutTimer::activate line: 8');
INSERT INTO ACT_IF
	VALUES (1544,
	1550,
	1551,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1549,
	1535,
	1552,
	13,
	1,
	'WorkoutTimer::activate line: 13');
INSERT INTO ACT_IOP
	VALUES (1549,
	13,
	16,
	13,
	6,
	0,
	18,
	0);
INSERT INTO ACT_SMT
	VALUES (1552,
	1535,
	0,
	14,
	1,
	'WorkoutTimer::activate line: 14');
INSERT INTO ACT_IOP
	VALUES (1552,
	14,
	24,
	14,
	6,
	0,
	48,
	0);
INSERT INTO V_VAL
	VALUES (1553,
	1,
	0,
	3,
	1,
	4,
	0,
	0,
	0,
	0,
	70,
	1535);
INSERT INTO V_IRF
	VALUES (1553,
	1540);
INSERT INTO V_VAL
	VALUES (1543,
	1,
	0,
	3,
	6,
	10,
	0,
	0,
	0,
	0,
	313,
	1535);
INSERT INTO V_AVL
	VALUES (1543,
	1553,
	84,
	1554);
INSERT INTO V_VAL
	VALUES (1542,
	0,
	0,
	3,
	19,
	-1,
	3,
	42,
	3,
	59,
	313,
	1535);
INSERT INTO V_BRV
	VALUES (1542,
	319,
	1,
	3,
	14);
INSERT INTO V_VAL
	VALUES (1555,
	0,
	0,
	3,
	54,
	56,
	0,
	0,
	0,
	0,
	316,
	1535);
INSERT INTO V_TVL
	VALUES (1555,
	1538);
INSERT INTO V_PAR
	VALUES (1555,
	0,
	1542,
	'event_inst',
	1556,
	3,
	42);
INSERT INTO V_VAL
	VALUES (1557,
	0,
	0,
	3,
	74,
	84,
	0,
	0,
	0,
	0,
	13,
	1535);
INSERT INTO V_SCV
	VALUES (1557,
	1558,
	13);
INSERT INTO V_VAL
	VALUES (1556,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	13,
	1535);
INSERT INTO V_BIN
	VALUES (1556,
	1559,
	1557,
	'*');
INSERT INTO V_PAR
	VALUES (1556,
	0,
	1542,
	'microseconds',
	0,
	3,
	59);
INSERT INTO V_VAL
	VALUES (1559,
	0,
	0,
	3,
	88,
	94,
	0,
	0,
	0,
	0,
	13,
	1535);
INSERT INTO V_LIN
	VALUES (1559,
	'1000000');
INSERT INTO V_VAL
	VALUES (1546,
	0,
	0,
	7,
	3,
	6,
	0,
	0,
	0,
	0,
	70,
	1535);
INSERT INTO V_IRF
	VALUES (1546,
	1540);
INSERT INTO V_VAL
	VALUES (1560,
	0,
	0,
	8,
	16,
	28,
	0,
	0,
	0,
	0,
	70,
	1535);
INSERT INTO V_IRF
	VALUES (1560,
	1545);
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
	72,
	1535);
INSERT INTO V_UNY
	VALUES (1561,
	1560,
	'empty');
INSERT INTO V_VAL
	VALUES (1551,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1535);
INSERT INTO V_UNY
	VALUES (1551,
	1561,
	'not');
INSERT INTO V_VAR
	VALUES (1538,
	1535,
	'evt',
	1,
	316);
INSERT INTO V_TRN
	VALUES (1538,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1540,
	1535,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (1540,
	0,
	84);
INSERT INTO V_VAR
	VALUES (1545,
	1535,
	'executingGoal',
	1,
	70);
INSERT INTO V_INT
	VALUES (1545,
	0,
	221);
INSERT INTO ACT_BLK
	VALUES (1550,
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
	1534,
	0);
INSERT INTO ACT_SMT
	VALUES (1562,
	1550,
	0,
	9,
	3,
	'WorkoutTimer::activate line: 9');
INSERT INTO E_ESS
	VALUES (1562,
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
	VALUES (1562);
INSERT INTO E_GSME
	VALUES (1562,
	647);
INSERT INTO E_GEN
	VALUES (1562,
	1545);
INSERT INTO O_TFR
	VALUES (1563,
	84,
	'deactivate',
	'',
	240,
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
	1533);
INSERT INTO ACT_OPB
	VALUES (1564,
	1563);
INSERT INTO ACT_ACT
	VALUES (1564,
	'operation',
	0,
	1565,
	0,
	0,
	'WorkoutTimer::deactivate',
	0);
INSERT INTO ACT_BLK
	VALUES (1565,
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
	1564,
	0);
INSERT INTO ACT_SMT
	VALUES (1566,
	1565,
	1567,
	2,
	1,
	'WorkoutTimer::deactivate line: 2');
INSERT INTO ACT_AI
	VALUES (1566,
	1568,
	1569,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1567,
	1565,
	1570,
	5,
	1,
	'WorkoutTimer::deactivate line: 5');
INSERT INTO ACT_SEL
	VALUES (1567,
	1571,
	1,
	'one',
	1572);
INSERT INTO ACT_SR
	VALUES (1567);
INSERT INTO ACT_LNK
	VALUES (1573,
	'''acts as the stopwatch for''',
	1567,
	209,
	1574,
	2,
	66,
	6,
	9,
	6,
	24,
	6,
	27);
INSERT INTO ACT_LNK
	VALUES (1574,
	'''is currently executing''',
	0,
	225,
	0,
	2,
	221,
	6,
	57,
	6,
	62,
	6,
	66);
INSERT INTO ACT_SMT
	VALUES (1570,
	1565,
	1575,
	7,
	1,
	'WorkoutTimer::deactivate line: 7');
INSERT INTO ACT_IF
	VALUES (1570,
	1576,
	1577,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1575,
	1565,
	1578,
	12,
	1,
	'WorkoutTimer::deactivate line: 12');
INSERT INTO ACT_IOP
	VALUES (1575,
	12,
	16,
	12,
	6,
	0,
	22,
	0);
INSERT INTO ACT_SMT
	VALUES (1578,
	1565,
	0,
	13,
	1,
	'WorkoutTimer::deactivate line: 13');
INSERT INTO ACT_IOP
	VALUES (1578,
	13,
	24,
	13,
	6,
	0,
	52,
	0);
INSERT INTO V_VAL
	VALUES (1569,
	1,
	1,
	2,
	1,
	15,
	0,
	0,
	0,
	0,
	72,
	1565);
INSERT INTO V_TVL
	VALUES (1569,
	1579);
INSERT INTO V_VAL
	VALUES (1568,
	0,
	0,
	2,
	24,
	-1,
	2,
	37,
	0,
	0,
	72,
	1565);
INSERT INTO V_BRV
	VALUES (1568,
	338,
	1,
	2,
	19);
INSERT INTO V_VAL
	VALUES (1580,
	0,
	0,
	2,
	53,
	56,
	0,
	0,
	0,
	0,
	70,
	1565);
INSERT INTO V_IRF
	VALUES (1580,
	1581);
INSERT INTO V_VAL
	VALUES (1582,
	0,
	0,
	2,
	58,
	62,
	0,
	0,
	0,
	0,
	313,
	1565);
INSERT INTO V_AVL
	VALUES (1582,
	1580,
	84,
	1554);
INSERT INTO V_PAR
	VALUES (1582,
	0,
	1568,
	'timer_inst_ref',
	0,
	2,
	37);
INSERT INTO V_VAL
	VALUES (1572,
	0,
	0,
	6,
	3,
	6,
	0,
	0,
	0,
	0,
	70,
	1565);
INSERT INTO V_IRF
	VALUES (1572,
	1581);
INSERT INTO V_VAL
	VALUES (1583,
	0,
	0,
	7,
	16,
	28,
	0,
	0,
	0,
	0,
	70,
	1565);
INSERT INTO V_IRF
	VALUES (1583,
	1571);
INSERT INTO V_VAL
	VALUES (1584,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1565);
INSERT INTO V_UNY
	VALUES (1584,
	1583,
	'empty');
INSERT INTO V_VAL
	VALUES (1577,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1565);
INSERT INTO V_UNY
	VALUES (1577,
	1584,
	'not');
INSERT INTO V_VAR
	VALUES (1579,
	1565,
	'cancelSucceeded',
	1,
	72);
INSERT INTO V_TRN
	VALUES (1579,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1581,
	1565,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (1581,
	0,
	84);
INSERT INTO V_VAR
	VALUES (1571,
	1565,
	'executingGoal',
	1,
	70);
INSERT INTO V_INT
	VALUES (1571,
	0,
	221);
INSERT INTO ACT_BLK
	VALUES (1576,
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
	1564,
	0);
INSERT INTO ACT_SMT
	VALUES (1585,
	1576,
	0,
	8,
	3,
	'WorkoutTimer::deactivate line: 8');
INSERT INTO E_ESS
	VALUES (1585,
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
	VALUES (1585);
INSERT INTO E_GSME
	VALUES (1585,
	883);
INSERT INTO E_GEN
	VALUES (1585,
	1571);
INSERT INTO O_TFR
	VALUES (1277,
	84,
	'initialize',
	'',
	240,
	1,
	'// Initialize this instance.

self.time = 0;',
	1,
	'',
	1563);
INSERT INTO ACT_OPB
	VALUES (1586,
	1277);
INSERT INTO ACT_ACT
	VALUES (1586,
	'operation',
	0,
	1587,
	0,
	0,
	'WorkoutTimer::initialize',
	0);
INSERT INTO ACT_BLK
	VALUES (1587,
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
	1586,
	0);
INSERT INTO ACT_SMT
	VALUES (1588,
	1587,
	0,
	3,
	1,
	'WorkoutTimer::initialize line: 3');
INSERT INTO ACT_AI
	VALUES (1588,
	1589,
	1590,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1591,
	1,
	0,
	3,
	1,
	4,
	0,
	0,
	0,
	0,
	70,
	1587);
INSERT INTO V_IRF
	VALUES (1591,
	1592);
INSERT INTO V_VAL
	VALUES (1590,
	1,
	0,
	3,
	6,
	9,
	0,
	0,
	0,
	0,
	13,
	1587);
INSERT INTO V_AVL
	VALUES (1590,
	1591,
	84,
	403);
INSERT INTO V_VAL
	VALUES (1589,
	0,
	0,
	3,
	13,
	13,
	0,
	0,
	0,
	0,
	13,
	1587);
INSERT INTO V_LIN
	VALUES (1589,
	'0');
INSERT INTO V_VAR
	VALUES (1592,
	1587,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (1592,
	0,
	84);
INSERT INTO O_NBATTR
	VALUES (1593,
	84);
INSERT INTO O_BATTR
	VALUES (1593,
	84);
INSERT INTO O_ATTR
	VALUES (1593,
	84,
	0,
	'current_state',
	'',
	'',
	'current_state',
	0,
	458,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (403,
	84);
INSERT INTO O_BATTR
	VALUES (403,
	84);
INSERT INTO O_ATTR
	VALUES (403,
	84,
	1593,
	'time',
	'Number of seconds elapsed during the associated workout session.
Time elapses only when this timer is running.',
	'',
	'time',
	0,
	13,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1554,
	84);
INSERT INTO O_BATTR
	VALUES (1554,
	84);
INSERT INTO O_ATTR
	VALUES (1554,
	84,
	403,
	'timer',
	'Handle for underlying timer mechanism that produces the 
delayed events enabling the timer to track elapsed time.',
	'',
	'timer',
	0,
	313,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	84);
INSERT INTO O_ID
	VALUES (1,
	84);
INSERT INTO O_ID
	VALUES (2,
	84);
INSERT INTO SM_ISM
	VALUES (1594,
	84);
INSERT INTO SM_SM
	VALUES (1594,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (1594);
INSERT INTO SM_LEVT
	VALUES (131,
	1594,
	0);
INSERT INTO SM_SEVT
	VALUES (131,
	1594,
	0);
INSERT INTO SM_EVT
	VALUES (131,
	1594,
	0,
	1,
	'startStopPressed',
	0,
	'',
	'WorkoutTimer1',
	'');
INSERT INTO SM_LEVT
	VALUES (92,
	1594,
	0);
INSERT INTO SM_SEVT
	VALUES (92,
	1594,
	0);
INSERT INTO SM_EVT
	VALUES (92,
	1594,
	0,
	2,
	'lapResetPressed',
	0,
	'',
	'WorkoutTimer2',
	'');
INSERT INTO SM_LEVT
	VALUES (1539,
	1594,
	0);
INSERT INTO SM_SEVT
	VALUES (1539,
	1594,
	0);
INSERT INTO SM_EVT
	VALUES (1539,
	1594,
	0,
	3,
	'tick',
	0,
	'',
	'WorkoutTimer3',
	'');
INSERT INTO SM_STATE
	VALUES (1595,
	1594,
	0,
	'stopped',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (1595,
	131,
	1594,
	0);
INSERT INTO SM_EIGN
	VALUES (1595,
	92,
	1594,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1595,
	92,
	1594,
	0);
INSERT INTO SM_EIGN
	VALUES (1595,
	1539,
	1594,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1595,
	1539,
	1594,
	0);
INSERT INTO SM_MOAH
	VALUES (1596,
	1594,
	1595);
INSERT INTO SM_AH
	VALUES (1596,
	1594);
INSERT INTO SM_ACT
	VALUES (1596,
	1594,
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
	VALUES (1597,
	1594,
	1596);
INSERT INTO ACT_ACT
	VALUES (1597,
	'state',
	0,
	1598,
	0,
	0,
	'WorkoutTimer::stopped',
	0);
INSERT INTO ACT_BLK
	VALUES (1598,
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
	1597,
	0);
INSERT INTO ACT_SMT
	VALUES (1599,
	1598,
	1600,
	2,
	1,
	'WorkoutTimer::stopped line: 2');
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
	'''acts as the stopwatch for''',
	1599,
	209,
	0,
	2,
	66,
	2,
	37,
	2,
	52,
	2,
	55);
INSERT INTO ACT_SMT
	VALUES (1600,
	1598,
	1604,
	3,
	1,
	'WorkoutTimer::stopped line: 3');
INSERT INTO ACT_TFM
	VALUES (1600,
	1284,
	1601,
	3,
	9,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1604,
	1598,
	1605,
	6,
	1,
	'WorkoutTimer::stopped line: 6');
INSERT INTO ACT_IOP
	VALUES (1604,
	6,
	10,
	6,
	6,
	0,
	37,
	0);
INSERT INTO ACT_SMT
	VALUES (1605,
	1598,
	1606,
	7,
	1,
	'WorkoutTimer::stopped line: 7');
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
	'''acts as the stopwatch for''',
	1605,
	209,
	1610,
	2,
	66,
	8,
	9,
	8,
	24,
	8,
	27);
INSERT INTO ACT_LNK
	VALUES (1610,
	'''current status indicated on''',
	0,
	113,
	0,
	2,
	114,
	9,
	3,
	9,
	11,
	9,
	14);
INSERT INTO ACT_SMT
	VALUES (1606,
	1598,
	0,
	10,
	1,
	'WorkoutTimer::stopped line: 10');
INSERT INTO E_ESS
	VALUES (1606,
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
	VALUES (1606);
INSERT INTO E_GSME
	VALUES (1606,
	460);
INSERT INTO E_GEN
	VALUES (1606,
	1607);
INSERT INTO V_VAL
	VALUES (1602,
	0,
	0,
	2,
	31,
	34,
	0,
	0,
	0,
	0,
	70,
	1598);
INSERT INTO V_IRF
	VALUES (1602,
	1611);
INSERT INTO V_VAL
	VALUES (1612,
	0,
	0,
	6,
	24,
	27,
	0,
	0,
	0,
	0,
	70,
	1598);
INSERT INTO V_IRF
	VALUES (1612,
	1611);
INSERT INTO V_VAL
	VALUES (1613,
	0,
	0,
	6,
	29,
	32,
	0,
	0,
	0,
	0,
	13,
	1598);
INSERT INTO V_AVL
	VALUES (1613,
	1612,
	84,
	403);
INSERT INTO V_PAR
	VALUES (1613,
	1604,
	0,
	'time',
	0,
	6,
	18);
INSERT INTO V_VAL
	VALUES (1608,
	0,
	0,
	8,
	3,
	6,
	0,
	0,
	0,
	0,
	70,
	1598);
INSERT INTO V_IRF
	VALUES (1608,
	1611);
INSERT INTO V_VAR
	VALUES (1601,
	1598,
	'session',
	1,
	70);
INSERT INTO V_INT
	VALUES (1601,
	0,
	66);
INSERT INTO V_VAR
	VALUES (1611,
	1598,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (1611,
	0,
	84);
INSERT INTO V_VAR
	VALUES (1607,
	1598,
	'display',
	1,
	70);
INSERT INTO V_INT
	VALUES (1607,
	0,
	114);
INSERT INTO SM_STATE
	VALUES (1614,
	1594,
	0,
	'running',
	2,
	0);
INSERT INTO SM_SEME
	VALUES (1614,
	131,
	1594,
	0);
INSERT INTO SM_SEME
	VALUES (1614,
	92,
	1594,
	0);
INSERT INTO SM_SEME
	VALUES (1614,
	1539,
	1594,
	0);
INSERT INTO SM_MOAH
	VALUES (1615,
	1594,
	1614);
INSERT INTO SM_AH
	VALUES (1615,
	1594);
INSERT INTO SM_ACT
	VALUES (1615,
	1594,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (1616,
	1594,
	1615);
INSERT INTO ACT_ACT
	VALUES (1616,
	'state',
	0,
	1617,
	0,
	0,
	'WorkoutTimer::running',
	0);
INSERT INTO ACT_BLK
	VALUES (1617,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1616,
	0);
INSERT INTO SM_STATE
	VALUES (1618,
	1594,
	0,
	'paused',
	3,
	0);
INSERT INTO SM_SEME
	VALUES (1618,
	131,
	1594,
	0);
INSERT INTO SM_SEME
	VALUES (1618,
	92,
	1594,
	0);
INSERT INTO SM_EIGN
	VALUES (1618,
	1539,
	1594,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1618,
	1539,
	1594,
	0);
INSERT INTO SM_MOAH
	VALUES (1619,
	1594,
	1618);
INSERT INTO SM_AH
	VALUES (1619,
	1594);
INSERT INTO SM_ACT
	VALUES (1619,
	1594,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (1620,
	1594,
	1619);
INSERT INTO ACT_ACT
	VALUES (1620,
	'state',
	0,
	1621,
	0,
	0,
	'WorkoutTimer::paused',
	0);
INSERT INTO ACT_BLK
	VALUES (1621,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1620,
	0);
INSERT INTO SM_NSTXN
	VALUES (1622,
	1594,
	1595,
	131,
	0);
INSERT INTO SM_TAH
	VALUES (1623,
	1594,
	1622);
INSERT INTO SM_AH
	VALUES (1623,
	1594);
INSERT INTO SM_ACT
	VALUES (1623,
	1594,
	1,
	'// Start the timer.
self.activate();',
	'');
INSERT INTO ACT_TAB
	VALUES (1624,
	1594,
	1623);
INSERT INTO ACT_ACT
	VALUES (1624,
	'transition',
	0,
	1625,
	0,
	0,
	'WorkoutTimer1: startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1625,
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
	1624,
	0);
INSERT INTO ACT_SMT
	VALUES (1626,
	1625,
	0,
	2,
	1,
	'WorkoutTimer1: startStopPressed line: 2');
INSERT INTO ACT_TFM
	VALUES (1626,
	1533,
	1627,
	2,
	6,
	0,
	0);
INSERT INTO V_VAR
	VALUES (1627,
	1625,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (1627,
	0,
	84);
INSERT INTO SM_TXN
	VALUES (1622,
	1594,
	1614,
	0);
INSERT INTO SM_NSTXN
	VALUES (1628,
	1594,
	1614,
	92,
	0);
INSERT INTO SM_TAH
	VALUES (1629,
	1594,
	1628);
INSERT INTO SM_AH
	VALUES (1629,
	1594);
INSERT INTO SM_ACT
	VALUES (1629,
	1594,
	1,
	'select any trackLog from instances of TrackLog;
if (not empty trackLog)
  trackLog.addLapMarker();
end if;',
	'');
INSERT INTO ACT_TAB
	VALUES (1630,
	1594,
	1629);
INSERT INTO ACT_ACT
	VALUES (1630,
	'transition',
	0,
	1631,
	0,
	0,
	'WorkoutTimer2: lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1631,
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
	1630,
	0);
INSERT INTO ACT_SMT
	VALUES (1632,
	1631,
	1633,
	1,
	1,
	'WorkoutTimer2: lapResetPressed line: 1');
INSERT INTO ACT_FIO
	VALUES (1632,
	1634,
	1,
	'any',
	193,
	1,
	39);
INSERT INTO ACT_SMT
	VALUES (1633,
	1631,
	0,
	2,
	1,
	'WorkoutTimer2: lapResetPressed line: 2');
INSERT INTO ACT_IF
	VALUES (1633,
	1635,
	1636,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1637,
	0,
	0,
	2,
	15,
	22,
	0,
	0,
	0,
	0,
	70,
	1631);
INSERT INTO V_IRF
	VALUES (1637,
	1634);
INSERT INTO V_VAL
	VALUES (1638,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1631);
INSERT INTO V_UNY
	VALUES (1638,
	1637,
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
	72,
	1631);
INSERT INTO V_UNY
	VALUES (1636,
	1638,
	'not');
INSERT INTO V_VAR
	VALUES (1634,
	1631,
	'trackLog',
	1,
	70);
INSERT INTO V_INT
	VALUES (1634,
	0,
	193);
INSERT INTO ACT_BLK
	VALUES (1635,
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
	1630,
	0);
INSERT INTO ACT_SMT
	VALUES (1639,
	1635,
	0,
	3,
	3,
	'WorkoutTimer2: lapResetPressed line: 3');
INSERT INTO ACT_TFM
	VALUES (1639,
	1167,
	1634,
	3,
	12,
	0,
	0);
INSERT INTO SM_TXN
	VALUES (1628,
	1594,
	1614,
	0);
INSERT INTO SM_NSTXN
	VALUES (1640,
	1594,
	1618,
	92,
	0);
INSERT INTO SM_TAH
	VALUES (1641,
	1594,
	1640);
INSERT INTO SM_AH
	VALUES (1641,
	1594);
INSERT INTO SM_ACT
	VALUES (1641,
	1594,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1642,
	1594,
	1641);
INSERT INTO ACT_ACT
	VALUES (1642,
	'transition',
	0,
	1643,
	0,
	0,
	'WorkoutTimer2: lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1643,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1642,
	0);
INSERT INTO SM_TXN
	VALUES (1640,
	1594,
	1595,
	0);
INSERT INTO SM_NSTXN
	VALUES (1644,
	1594,
	1618,
	131,
	0);
INSERT INTO SM_TAH
	VALUES (1645,
	1594,
	1644);
INSERT INTO SM_AH
	VALUES (1645,
	1594);
INSERT INTO SM_ACT
	VALUES (1645,
	1594,
	1,
	'self.activate();',
	'');
INSERT INTO ACT_TAB
	VALUES (1646,
	1594,
	1645);
INSERT INTO ACT_ACT
	VALUES (1646,
	'transition',
	0,
	1647,
	0,
	0,
	'WorkoutTimer1: startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1647,
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
	1646,
	0);
INSERT INTO ACT_SMT
	VALUES (1648,
	1647,
	0,
	1,
	1,
	'WorkoutTimer1: startStopPressed line: 1');
INSERT INTO ACT_TFM
	VALUES (1648,
	1533,
	1649,
	1,
	6,
	0,
	0);
INSERT INTO V_VAR
	VALUES (1649,
	1647,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (1649,
	0,
	84);
INSERT INTO SM_TXN
	VALUES (1644,
	1594,
	1614,
	0);
INSERT INTO SM_NSTXN
	VALUES (1650,
	1594,
	1614,
	131,
	0);
INSERT INTO SM_TAH
	VALUES (1651,
	1594,
	1650);
INSERT INTO SM_AH
	VALUES (1651,
	1594);
INSERT INTO SM_ACT
	VALUES (1651,
	1594,
	1,
	'self.deactivate();',
	'');
INSERT INTO ACT_TAB
	VALUES (1652,
	1594,
	1651);
INSERT INTO ACT_ACT
	VALUES (1652,
	'transition',
	0,
	1653,
	0,
	0,
	'WorkoutTimer1: startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1653,
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
	1652,
	0);
INSERT INTO ACT_SMT
	VALUES (1654,
	1653,
	0,
	1,
	1,
	'WorkoutTimer1: startStopPressed line: 1');
INSERT INTO ACT_TFM
	VALUES (1654,
	1563,
	1655,
	1,
	6,
	0,
	0);
INSERT INTO V_VAR
	VALUES (1655,
	1653,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (1655,
	0,
	84);
INSERT INTO SM_TXN
	VALUES (1650,
	1594,
	1618,
	0);
INSERT INTO SM_NSTXN
	VALUES (1656,
	1594,
	1614,
	1539,
	0);
INSERT INTO SM_TAH
	VALUES (1657,
	1594,
	1656);
INSERT INTO SM_AH
	VALUES (1657,
	1594);
INSERT INTO SM_ACT
	VALUES (1657,
	1594,
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
	VALUES (1658,
	1594,
	1657);
INSERT INTO ACT_ACT
	VALUES (1658,
	'transition',
	0,
	1659,
	0,
	0,
	'WorkoutTimer3: tick',
	0);
INSERT INTO ACT_BLK
	VALUES (1659,
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
	1658,
	0);
INSERT INTO ACT_SMT
	VALUES (1660,
	1659,
	1661,
	2,
	1,
	'WorkoutTimer3: tick line: 2');
INSERT INTO ACT_AI
	VALUES (1660,
	1662,
	1663,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1661,
	1659,
	1664,
	5,
	1,
	'WorkoutTimer3: tick line: 5');
INSERT INTO ACT_SEL
	VALUES (1661,
	1665,
	1,
	'one',
	1666);
INSERT INTO ACT_SR
	VALUES (1661);
INSERT INTO ACT_LNK
	VALUES (1667,
	'''acts as the stopwatch for''',
	1661,
	209,
	1668,
	2,
	66,
	6,
	9,
	6,
	24,
	6,
	27);
INSERT INTO ACT_LNK
	VALUES (1668,
	'''captures path in''',
	0,
	212,
	0,
	2,
	193,
	6,
	57,
	6,
	66,
	6,
	69);
INSERT INTO ACT_SMT
	VALUES (1664,
	1659,
	1669,
	7,
	1,
	'WorkoutTimer3: tick line: 7');
INSERT INTO ACT_TFM
	VALUES (1664,
	1029,
	1665,
	7,
	10,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1669,
	1659,
	0,
	10,
	1,
	'WorkoutTimer3: tick line: 10');
INSERT INTO ACT_IOP
	VALUES (1669,
	10,
	10,
	10,
	6,
	0,
	37,
	0);
INSERT INTO V_VAL
	VALUES (1670,
	1,
	0,
	2,
	1,
	4,
	0,
	0,
	0,
	0,
	70,
	1659);
INSERT INTO V_IRF
	VALUES (1670,
	1671);
INSERT INTO V_VAL
	VALUES (1663,
	1,
	0,
	2,
	6,
	9,
	0,
	0,
	0,
	0,
	13,
	1659);
INSERT INTO V_AVL
	VALUES (1663,
	1670,
	84,
	403);
INSERT INTO V_VAL
	VALUES (1672,
	0,
	0,
	2,
	13,
	16,
	0,
	0,
	0,
	0,
	70,
	1659);
INSERT INTO V_IRF
	VALUES (1672,
	1671);
INSERT INTO V_VAL
	VALUES (1673,
	0,
	0,
	2,
	18,
	21,
	0,
	0,
	0,
	0,
	13,
	1659);
INSERT INTO V_AVL
	VALUES (1673,
	1672,
	84,
	403);
INSERT INTO V_VAL
	VALUES (1662,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	13,
	1659);
INSERT INTO V_BIN
	VALUES (1662,
	1674,
	1673,
	'+');
INSERT INTO V_VAL
	VALUES (1674,
	0,
	0,
	2,
	25,
	35,
	0,
	0,
	0,
	0,
	13,
	1659);
INSERT INTO V_SCV
	VALUES (1674,
	1558,
	13);
INSERT INTO V_VAL
	VALUES (1666,
	0,
	0,
	6,
	3,
	6,
	0,
	0,
	0,
	0,
	70,
	1659);
INSERT INTO V_IRF
	VALUES (1666,
	1671);
INSERT INTO V_VAL
	VALUES (1675,
	0,
	0,
	10,
	24,
	27,
	0,
	0,
	0,
	0,
	70,
	1659);
INSERT INTO V_IRF
	VALUES (1675,
	1671);
INSERT INTO V_VAL
	VALUES (1676,
	0,
	0,
	10,
	29,
	32,
	0,
	0,
	0,
	0,
	13,
	1659);
INSERT INTO V_AVL
	VALUES (1676,
	1675,
	84,
	403);
INSERT INTO V_PAR
	VALUES (1676,
	1669,
	0,
	'time',
	0,
	10,
	18);
INSERT INTO V_VAR
	VALUES (1671,
	1659,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (1671,
	0,
	84);
INSERT INTO V_VAR
	VALUES (1665,
	1659,
	'trackLog',
	1,
	70);
INSERT INTO V_INT
	VALUES (1665,
	0,
	193);
INSERT INTO SM_TXN
	VALUES (1656,
	1594,
	1614,
	0);
INSERT INTO PE_PE
	VALUES (1677,
	1,
	2,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (1677,
	0,
	1,
	'shared',
	'',
	0);
INSERT INTO PE_PE
	VALUES (180,
	1,
	1677,
	0,
	3);
INSERT INTO S_DT
	VALUES (180,
	0,
	'GoalCriteria',
	'The criteria type for a particular workout goal.  ',
	'');
INSERT INTO S_EDT
	VALUES (180);
INSERT INTO S_ENUM
	VALUES (364,
	'HeartRate',
	'A heart-rate criteria is specified as a range of heart rates between
minimum and maximum values, in beats per minute.',
	180,
	0);
INSERT INTO S_ENUM
	VALUES (356,
	'Pace',
	'A pace criteria is specified as a range of paces between
miniumum and maximum values specified in minutes per kilometer.',
	180,
	364);
INSERT INTO PE_PE
	VALUES (437,
	1,
	1677,
	0,
	3);
INSERT INTO S_DT
	VALUES (437,
	0,
	'GoalDisposition',
	'Disposition of a currently executing goal.',
	'');
INSERT INTO S_EDT
	VALUES (437);
INSERT INTO S_ENUM
	VALUES (744,
	'Achieving',
	'The goal is currently being achieved.',
	437,
	0);
INSERT INTO S_ENUM
	VALUES (440,
	'Increase',
	'The value associated with the goal is presently below the minimum 
specified in the criteria for the goal, so the user must increase
that value to achieve the goal.',
	437,
	744);
INSERT INTO S_ENUM
	VALUES (444,
	'Decrease',
	'The value associated with the goal is presently above the maximum 
specified in the criteria for the goal, so the user must decrease
that value to achieve the goal.',
	437,
	440);
INSERT INTO PE_PE
	VALUES (184,
	1,
	1677,
	0,
	3);
INSERT INTO S_DT
	VALUES (184,
	0,
	'GoalSpan',
	'',
	'');
INSERT INTO S_EDT
	VALUES (184);
INSERT INTO S_ENUM
	VALUES (358,
	'Distance',
	'A distance-based span is specified in meters.',
	184,
	0);
INSERT INTO S_ENUM
	VALUES (366,
	'Time',
	'A time-based span is specified in seconds.',
	184,
	358);
INSERT INTO PE_PE
	VALUES (1678,
	1,
	1677,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (1678,
	'GoalAchievement',
	'evaluationPeriod is the period, expressed in microseconds, at which goal achievement is evaluated.');
INSERT INTO CNST_SYC
	VALUES (655,
	'evaluationPeriod',
	'',
	13,
	1678,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (655,
	13);
INSERT INTO CNST_LSC
	VALUES (655,
	13,
	'3000000');
INSERT INTO PE_PE
	VALUES (1679,
	1,
	1677,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (1679,
	'GoalSpec',
	'GoalSpecOrigin indicates the sequence number of the first goal.');
INSERT INTO CNST_SYC
	VALUES (878,
	'GoalSpecOrigin',
	'',
	13,
	1679,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (878,
	13);
INSERT INTO CNST_LSC
	VALUES (878,
	13,
	'1');
INSERT INTO PE_PE
	VALUES (1680,
	1,
	1677,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (1680,
	'WorkoutTimer',
	'timerPeriod specifies, in seconds, the period for the workout timer.');
INSERT INTO CNST_SYC
	VALUES (1558,
	'timerPeriod',
	'',
	13,
	1680,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (1558,
	13);
INSERT INTO CNST_LSC
	VALUES (1558,
	13,
	'1');
INSERT INTO PE_PE
	VALUES (6,
	1,
	1677,
	0,
	6);
INSERT INTO C_I
	VALUES (6,
	0,
	'TrackingLocation',
	'');
INSERT INTO C_EP
	VALUES (8,
	6,
	-1,
	'getDistance',
	'Returns distance, in kilometers, between the "from" and "to" coordinates passed as parameters.
The coordinates must be passed as decimal degrees.');
INSERT INTO C_IO
	VALUES (8,
	170,
	'getDistance',
	'Returns distance, in kilometers, between the "from" and "to" coordinates passed as parameters.
The coordinates must be passed as decimal degrees.',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (1681,
	8,
	170,
	'fromLat',
	'Latitude for the "from" coordinates.',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (1682,
	8,
	170,
	'toLat',
	'Latitude for the "to" coordinates.',
	0,
	'',
	1683);
INSERT INTO C_PP
	VALUES (1683,
	8,
	170,
	'fromLong',
	'Longitude for the "from" coordinates.',
	0,
	'',
	1681);
INSERT INTO C_PP
	VALUES (1684,
	8,
	170,
	'toLong',
	'Longitude for the "to" coordinates.',
	0,
	'',
	1682);
INSERT INTO C_EP
	VALUES (15,
	6,
	-1,
	'getLocation',
	'');
INSERT INTO C_IO
	VALUES (15,
	240,
	'getLocation',
	'',
	0,
	'',
	8);
INSERT INTO C_PP
	VALUES (1685,
	15,
	170,
	'latitude',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (1686,
	15,
	170,
	'longitude',
	'',
	0,
	'',
	1685);
INSERT INTO C_EP
	VALUES (19,
	6,
	-1,
	'registerListener',
	'');
INSERT INTO C_IO
	VALUES (19,
	240,
	'registerListener',
	'',
	0,
	'',
	15);
INSERT INTO C_EP
	VALUES (23,
	6,
	-1,
	'unregisterListener',
	'');
INSERT INTO C_IO
	VALUES (23,
	240,
	'unregisterListener',
	'',
	0,
	'',
	19);
INSERT INTO PE_PE
	VALUES (28,
	1,
	1677,
	0,
	6);
INSERT INTO C_I
	VALUES (28,
	0,
	'TrackingUI',
	'');
INSERT INTO C_EP
	VALUES (30,
	28,
	-1,
	'setData',
	'');
INSERT INTO C_IO
	VALUES (30,
	240,
	'setData',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (1687,
	30,
	170,
	'value',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (1688,
	30,
	490,
	'unit',
	'',
	0,
	'',
	1687);
INSERT INTO C_EP
	VALUES (34,
	28,
	-1,
	'setIndicator',
	'');
INSERT INTO C_IO
	VALUES (34,
	240,
	'setIndicator',
	'',
	0,
	'',
	30);
INSERT INTO C_PP
	VALUES (1689,
	34,
	406,
	'indicator',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (38,
	28,
	-1,
	'setTime',
	'');
INSERT INTO C_IO
	VALUES (38,
	240,
	'setTime',
	'',
	0,
	'',
	34);
INSERT INTO C_PP
	VALUES (1690,
	38,
	13,
	'time',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (42,
	28,
	-1,
	'newGoalSpec',
	'');
INSERT INTO C_IO
	VALUES (42,
	240,
	'newGoalSpec',
	'',
	0,
	'',
	38);
INSERT INTO C_PP
	VALUES (1691,
	42,
	13,
	'sequenceNumber',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (1692,
	42,
	170,
	'minimum',
	'',
	0,
	'',
	1691);
INSERT INTO C_PP
	VALUES (1693,
	42,
	170,
	'maximum',
	'',
	0,
	'',
	1692);
INSERT INTO C_PP
	VALUES (1694,
	42,
	170,
	'span',
	'',
	0,
	'',
	1693);
INSERT INTO C_PP
	VALUES (1695,
	42,
	180,
	'criteriaType',
	'',
	0,
	'',
	1694);
INSERT INTO C_PP
	VALUES (1696,
	42,
	184,
	'spanType',
	'',
	0,
	'',
	1695);
INSERT INTO PE_PE
	VALUES (47,
	1,
	1677,
	0,
	6);
INSERT INTO C_I
	VALUES (47,
	0,
	'TrackingHeartRateMonitor',
	'');
INSERT INTO C_EP
	VALUES (49,
	47,
	-1,
	'registerListener',
	'');
INSERT INTO C_IO
	VALUES (49,
	240,
	'registerListener',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (53,
	47,
	-1,
	'unregisterListener',
	'');
INSERT INTO C_IO
	VALUES (53,
	240,
	'unregisterListener',
	'',
	0,
	'',
	49);
INSERT INTO PE_PE
	VALUES (58,
	1,
	1677,
	0,
	6);
INSERT INTO C_I
	VALUES (58,
	0,
	'Tracking',
	'');
INSERT INTO C_EP
	VALUES (60,
	58,
	-1,
	'heartRateChanged',
	'');
INSERT INTO C_IO
	VALUES (60,
	240,
	'heartRateChanged',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (76,
	60,
	13,
	'heartRate',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (78,
	58,
	-1,
	'lapResetPressed',
	'');
INSERT INTO C_IO
	VALUES (78,
	240,
	'lapResetPressed',
	'',
	0,
	'',
	60);
INSERT INTO C_EP
	VALUES (98,
	58,
	-1,
	'modePressed',
	'');
INSERT INTO C_IO
	VALUES (98,
	240,
	'modePressed',
	'',
	0,
	'',
	78);
INSERT INTO C_EP
	VALUES (117,
	58,
	-1,
	'setTargetPressed',
	'');
INSERT INTO C_IO
	VALUES (117,
	240,
	'setTargetPressed',
	'',
	0,
	'',
	98);
INSERT INTO C_EP
	VALUES (123,
	58,
	-1,
	'startStopPressed',
	'');
INSERT INTO C_IO
	VALUES (123,
	240,
	'startStopPressed',
	'',
	0,
	'',
	117);
INSERT INTO C_EP
	VALUES (133,
	58,
	-1,
	'newGoalSpec',
	'');
INSERT INTO C_IO
	VALUES (133,
	240,
	'newGoalSpec',
	'',
	0,
	'',
	123);
INSERT INTO C_PP
	VALUES (168,
	133,
	13,
	'sequenceNumber',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (172,
	133,
	170,
	'minimum',
	'',
	0,
	'',
	168);
INSERT INTO C_PP
	VALUES (175,
	133,
	170,
	'maximum',
	'',
	0,
	'',
	172);
INSERT INTO C_PP
	VALUES (178,
	133,
	170,
	'span',
	'',
	0,
	'',
	175);
INSERT INTO C_PP
	VALUES (182,
	133,
	180,
	'criteriaType',
	'',
	0,
	'',
	178);
INSERT INTO C_PP
	VALUES (186,
	133,
	184,
	'spanType',
	'',
	0,
	'',
	182);
INSERT INTO C_EP
	VALUES (188,
	58,
	-1,
	'lightPressed',
	'');
INSERT INTO C_IO
	VALUES (188,
	240,
	'lightPressed',
	'',
	0,
	'',
	133);
INSERT INTO PE_PE
	VALUES (240,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (240,
	0,
	'void',
	'',
	'');
INSERT INTO S_CDT
	VALUES (240,
	0);
INSERT INTO PE_PE
	VALUES (72,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (72,
	0,
	'boolean',
	'',
	'');
INSERT INTO S_CDT
	VALUES (72,
	1);
INSERT INTO PE_PE
	VALUES (13,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (13,
	0,
	'integer',
	'',
	'');
INSERT INTO S_CDT
	VALUES (13,
	2);
INSERT INTO PE_PE
	VALUES (170,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (170,
	0,
	'real',
	'',
	'');
INSERT INTO S_CDT
	VALUES (170,
	3);
INSERT INTO PE_PE
	VALUES (96,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (96,
	0,
	'string',
	'',
	'');
INSERT INTO S_CDT
	VALUES (96,
	4);
INSERT INTO PE_PE
	VALUES (880,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (880,
	0,
	'unique_id',
	'',
	'');
INSERT INTO S_CDT
	VALUES (880,
	5);
INSERT INTO PE_PE
	VALUES (458,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (458,
	0,
	'state<State_Model>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (458,
	6);
INSERT INTO PE_PE
	VALUES (1697,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (1697,
	0,
	'same_as<Base_Attribute>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (1697,
	7);
INSERT INTO PE_PE
	VALUES (70,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (70,
	0,
	'inst_ref<Object>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (70,
	8);
INSERT INTO PE_PE
	VALUES (573,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (573,
	0,
	'inst_ref_set<Object>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (573,
	9);
INSERT INTO PE_PE
	VALUES (316,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (316,
	0,
	'inst<Event>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (316,
	10);
INSERT INTO PE_PE
	VALUES (1698,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (1698,
	0,
	'inst<Mapping>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (1698,
	11);
INSERT INTO PE_PE
	VALUES (1699,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (1699,
	0,
	'inst_ref<Mapping>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (1699,
	12);
INSERT INTO PE_PE
	VALUES (1700,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (1700,
	0,
	'component_ref',
	'',
	'');
INSERT INTO S_CDT
	VALUES (1700,
	13);
INSERT INTO PE_PE
	VALUES (253,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (253,
	0,
	'date',
	'',
	'');
INSERT INTO S_UDT
	VALUES (253,
	1698,
	1);
INSERT INTO PE_PE
	VALUES (313,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (313,
	0,
	'inst_ref<Timer>',
	'',
	'');
INSERT INTO S_UDT
	VALUES (313,
	1699,
	3);
INSERT INTO PE_PE
	VALUES (259,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (259,
	0,
	'timestamp',
	'',
	'');
INSERT INTO S_UDT
	VALUES (259,
	1698,
	2);
-- root-types-contained: SystemModel_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES (1701,
	'UI',
	1);
INSERT INTO EP_PKG
	VALUES (1702,
	1701,
	1701,
	'UI',
	'',
	0);
INSERT INTO PE_PE
	VALUES (1703,
	1,
	1702,
	0,
	2);
INSERT INTO C_C
	VALUES (1703,
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
	VALUES (1704,
	1703,
	'UI',
	0,
	0);
INSERT INTO C_IR
	VALUES (1705,
	1706,
	0,
	1704);
INSERT INTO C_P
	VALUES (1705,
	'UI',
	'Unnamed Interface',
	'',
	'UI::UI::UI');
INSERT INTO SPR_PEP
	VALUES (1707,
	1708,
	1705);
INSERT INTO SPR_PO
	VALUES (1707,
	'setTime',
	'',
	'GuiBridge::setTime(time: param.time);',
	1);
INSERT INTO ACT_POB
	VALUES (1709,
	1707);
INSERT INTO ACT_ACT
	VALUES (1709,
	'interface operation',
	0,
	1710,
	0,
	0,
	'UI::UI::setTime',
	0);
INSERT INTO ACT_BLK
	VALUES (1710,
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
	1709,
	0);
INSERT INTO ACT_SMT
	VALUES (1711,
	1710,
	0,
	1,
	1,
	'UI::UI::setTime line: 1');
INSERT INTO ACT_BRG
	VALUES (1711,
	1712,
	1,
	12,
	1,
	1);
INSERT INTO V_VAL
	VALUES (1713,
	0,
	0,
	1,
	32,
	35,
	0,
	0,
	0,
	0,
	13,
	1710);
INSERT INTO V_PVL
	VALUES (1713,
	0,
	0,
	0,
	1714);
INSERT INTO V_PAR
	VALUES (1713,
	1711,
	0,
	'time',
	0,
	1,
	20);
INSERT INTO SPR_PEP
	VALUES (1715,
	1716,
	1705);
INSERT INTO SPR_PO
	VALUES (1715,
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
	VALUES (1717,
	1715);
INSERT INTO ACT_ACT
	VALUES (1717,
	'interface operation',
	0,
	1718,
	0,
	0,
	'UI::UI::setData',
	0);
INSERT INTO ACT_BLK
	VALUES (1718,
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
	1717,
	0);
INSERT INTO ACT_SMT
	VALUES (1719,
	1718,
	0,
	1,
	1,
	'UI::UI::setData line: 1');
INSERT INTO ACT_IF
	VALUES (1719,
	1720,
	1721,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1722,
	1718,
	0,
	3,
	1,
	'UI::UI::setData line: 3');
INSERT INTO ACT_EL
	VALUES (1722,
	1723,
	1724,
	1719);
INSERT INTO ACT_SMT
	VALUES (1725,
	1718,
	0,
	5,
	1,
	'UI::UI::setData line: 5');
INSERT INTO ACT_EL
	VALUES (1725,
	1726,
	1727,
	1719);
INSERT INTO ACT_SMT
	VALUES (1728,
	1718,
	0,
	7,
	1,
	'UI::UI::setData line: 7');
INSERT INTO ACT_EL
	VALUES (1728,
	1729,
	1730,
	1719);
INSERT INTO ACT_SMT
	VALUES (1731,
	1718,
	0,
	9,
	1,
	'UI::UI::setData line: 9');
INSERT INTO ACT_EL
	VALUES (1731,
	1732,
	1733,
	1719);
INSERT INTO ACT_SMT
	VALUES (1734,
	1718,
	0,
	11,
	1,
	'UI::UI::setData line: 11');
INSERT INTO ACT_EL
	VALUES (1734,
	1735,
	1736,
	1719);
INSERT INTO ACT_SMT
	VALUES (1737,
	1718,
	0,
	13,
	1,
	'UI::UI::setData line: 13');
INSERT INTO ACT_EL
	VALUES (1737,
	1738,
	1739,
	1719);
INSERT INTO ACT_SMT
	VALUES (1740,
	1718,
	0,
	15,
	1,
	'UI::UI::setData line: 15');
INSERT INTO ACT_EL
	VALUES (1740,
	1741,
	1742,
	1719);
INSERT INTO ACT_SMT
	VALUES (1743,
	1718,
	0,
	17,
	1,
	'UI::UI::setData line: 17');
INSERT INTO ACT_EL
	VALUES (1743,
	1744,
	1745,
	1719);
INSERT INTO ACT_SMT
	VALUES (1746,
	1718,
	0,
	19,
	1,
	'UI::UI::setData line: 19');
INSERT INTO ACT_EL
	VALUES (1746,
	1747,
	1748,
	1719);
INSERT INTO ACT_SMT
	VALUES (1749,
	1718,
	0,
	21,
	1,
	'UI::UI::setData line: 21');
INSERT INTO ACT_EL
	VALUES (1749,
	1750,
	1751,
	1719);
INSERT INTO V_VAL
	VALUES (1752,
	0,
	0,
	1,
	11,
	14,
	0,
	0,
	0,
	0,
	490,
	1718);
INSERT INTO V_PVL
	VALUES (1752,
	0,
	0,
	0,
	1753);
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
	72,
	1718);
INSERT INTO V_BIN
	VALUES (1721,
	1754,
	1752,
	'==');
INSERT INTO V_VAL
	VALUES (1754,
	0,
	0,
	1,
	25,
	26,
	0,
	0,
	0,
	0,
	490,
	1718);
INSERT INTO V_LEN
	VALUES (1754,
	491,
	1,
	19);
INSERT INTO V_VAL
	VALUES (1755,
	0,
	0,
	3,
	13,
	16,
	0,
	0,
	0,
	0,
	490,
	1718);
INSERT INTO V_PVL
	VALUES (1755,
	0,
	0,
	0,
	1753);
INSERT INTO V_VAL
	VALUES (1724,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1718);
INSERT INTO V_BIN
	VALUES (1724,
	1756,
	1755,
	'==');
INSERT INTO V_VAL
	VALUES (1756,
	0,
	0,
	3,
	27,
	32,
	0,
	0,
	0,
	0,
	490,
	1718);
INSERT INTO V_LEN
	VALUES (1756,
	495,
	3,
	21);
INSERT INTO V_VAL
	VALUES (1757,
	0,
	0,
	5,
	13,
	16,
	0,
	0,
	0,
	0,
	490,
	1718);
INSERT INTO V_PVL
	VALUES (1757,
	0,
	0,
	0,
	1753);
INSERT INTO V_VAL
	VALUES (1727,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1718);
INSERT INTO V_BIN
	VALUES (1727,
	1758,
	1757,
	'==');
INSERT INTO V_VAL
	VALUES (1758,
	0,
	0,
	5,
	27,
	34,
	0,
	0,
	0,
	0,
	490,
	1718);
INSERT INTO V_LEN
	VALUES (1758,
	536,
	5,
	21);
INSERT INTO V_VAL
	VALUES (1759,
	0,
	0,
	7,
	13,
	16,
	0,
	0,
	0,
	0,
	490,
	1718);
INSERT INTO V_PVL
	VALUES (1759,
	0,
	0,
	0,
	1753);
INSERT INTO V_VAL
	VALUES (1730,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1718);
INSERT INTO V_BIN
	VALUES (1730,
	1760,
	1759,
	'==');
INSERT INTO V_VAL
	VALUES (1760,
	0,
	0,
	7,
	27,
	35,
	0,
	0,
	0,
	0,
	490,
	1718);
INSERT INTO V_LEN
	VALUES (1760,
	515,
	7,
	21);
INSERT INTO V_VAL
	VALUES (1761,
	0,
	0,
	9,
	13,
	16,
	0,
	0,
	0,
	0,
	490,
	1718);
INSERT INTO V_PVL
	VALUES (1761,
	0,
	0,
	0,
	1753);
INSERT INTO V_VAL
	VALUES (1733,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1718);
INSERT INTO V_BIN
	VALUES (1733,
	1762,
	1761,
	'==');
INSERT INTO V_VAL
	VALUES (1762,
	0,
	0,
	9,
	27,
	31,
	0,
	0,
	0,
	0,
	490,
	1718);
INSERT INTO V_LEN
	VALUES (1762,
	1763,
	9,
	21);
INSERT INTO V_VAL
	VALUES (1764,
	0,
	0,
	11,
	13,
	16,
	0,
	0,
	0,
	0,
	490,
	1718);
INSERT INTO V_PVL
	VALUES (1764,
	0,
	0,
	0,
	1753);
INSERT INTO V_VAL
	VALUES (1736,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1718);
INSERT INTO V_BIN
	VALUES (1736,
	1765,
	1764,
	'==');
INSERT INTO V_VAL
	VALUES (1765,
	0,
	0,
	11,
	27,
	31,
	0,
	0,
	0,
	0,
	490,
	1718);
INSERT INTO V_LEN
	VALUES (1765,
	1766,
	11,
	21);
INSERT INTO V_VAL
	VALUES (1767,
	0,
	0,
	13,
	13,
	16,
	0,
	0,
	0,
	0,
	490,
	1718);
INSERT INTO V_PVL
	VALUES (1767,
	0,
	0,
	0,
	1753);
INSERT INTO V_VAL
	VALUES (1739,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1718);
INSERT INTO V_BIN
	VALUES (1739,
	1768,
	1767,
	'==');
INSERT INTO V_VAL
	VALUES (1768,
	0,
	0,
	13,
	27,
	30,
	0,
	0,
	0,
	0,
	490,
	1718);
INSERT INTO V_LEN
	VALUES (1768,
	1769,
	13,
	21);
INSERT INTO V_VAL
	VALUES (1770,
	0,
	0,
	15,
	13,
	16,
	0,
	0,
	0,
	0,
	490,
	1718);
INSERT INTO V_PVL
	VALUES (1770,
	0,
	0,
	0,
	1753);
INSERT INTO V_VAL
	VALUES (1742,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1718);
INSERT INTO V_BIN
	VALUES (1742,
	1771,
	1770,
	'==');
INSERT INTO V_VAL
	VALUES (1771,
	0,
	0,
	15,
	27,
	36,
	0,
	0,
	0,
	0,
	490,
	1718);
INSERT INTO V_LEN
	VALUES (1771,
	1772,
	15,
	21);
INSERT INTO V_VAL
	VALUES (1773,
	0,
	0,
	17,
	13,
	16,
	0,
	0,
	0,
	0,
	490,
	1718);
INSERT INTO V_PVL
	VALUES (1773,
	0,
	0,
	0,
	1753);
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
	72,
	1718);
INSERT INTO V_BIN
	VALUES (1745,
	1774,
	1773,
	'==');
INSERT INTO V_VAL
	VALUES (1774,
	0,
	0,
	17,
	27,
	29,
	0,
	0,
	0,
	0,
	490,
	1718);
INSERT INTO V_LEN
	VALUES (1774,
	1775,
	17,
	21);
INSERT INTO V_VAL
	VALUES (1776,
	0,
	0,
	19,
	13,
	16,
	0,
	0,
	0,
	0,
	490,
	1718);
INSERT INTO V_PVL
	VALUES (1776,
	0,
	0,
	0,
	1753);
INSERT INTO V_VAL
	VALUES (1748,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1718);
INSERT INTO V_BIN
	VALUES (1748,
	1777,
	1776,
	'==');
INSERT INTO V_VAL
	VALUES (1777,
	0,
	0,
	19,
	27,
	29,
	0,
	0,
	0,
	0,
	490,
	1718);
INSERT INTO V_LEN
	VALUES (1777,
	557,
	19,
	21);
INSERT INTO V_VAL
	VALUES (1778,
	0,
	0,
	21,
	13,
	16,
	0,
	0,
	0,
	0,
	490,
	1718);
INSERT INTO V_PVL
	VALUES (1778,
	0,
	0,
	0,
	1753);
INSERT INTO V_VAL
	VALUES (1751,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1718);
INSERT INTO V_BIN
	VALUES (1751,
	1779,
	1778,
	'==');
INSERT INTO V_VAL
	VALUES (1779,
	0,
	0,
	21,
	27,
	30,
	0,
	0,
	0,
	0,
	490,
	1718);
INSERT INTO V_LEN
	VALUES (1779,
	576,
	21,
	21);
INSERT INTO ACT_BLK
	VALUES (1720,
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
	1717,
	0);
INSERT INTO ACT_SMT
	VALUES (1780,
	1720,
	0,
	2,
	3,
	'UI::UI::setData line: 2');
INSERT INTO ACT_BRG
	VALUES (1780,
	1781,
	2,
	14,
	2,
	3);
INSERT INTO V_VAL
	VALUES (1782,
	0,
	0,
	2,
	35,
	39,
	0,
	0,
	0,
	0,
	170,
	1720);
INSERT INTO V_PVL
	VALUES (1782,
	0,
	0,
	0,
	1783);
INSERT INTO V_PAR
	VALUES (1782,
	1780,
	0,
	'value',
	1784,
	2,
	22);
INSERT INTO V_VAL
	VALUES (1784,
	0,
	0,
	2,
	48,
	48,
	0,
	0,
	0,
	0,
	13,
	1720);
INSERT INTO V_LIN
	VALUES (1784,
	'0');
INSERT INTO V_PAR
	VALUES (1784,
	1780,
	0,
	'unit',
	0,
	2,
	42);
INSERT INTO ACT_BLK
	VALUES (1723,
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
	1717,
	0);
INSERT INTO ACT_SMT
	VALUES (1785,
	1723,
	0,
	4,
	3,
	'UI::UI::setData line: 4');
INSERT INTO ACT_BRG
	VALUES (1785,
	1781,
	4,
	14,
	4,
	3);
INSERT INTO V_VAL
	VALUES (1786,
	0,
	0,
	4,
	35,
	39,
	0,
	0,
	0,
	0,
	170,
	1723);
INSERT INTO V_PVL
	VALUES (1786,
	0,
	0,
	0,
	1783);
INSERT INTO V_PAR
	VALUES (1786,
	1785,
	0,
	'value',
	1787,
	4,
	22);
INSERT INTO V_VAL
	VALUES (1787,
	0,
	0,
	4,
	48,
	48,
	0,
	0,
	0,
	0,
	13,
	1723);
INSERT INTO V_LIN
	VALUES (1787,
	'1');
INSERT INTO V_PAR
	VALUES (1787,
	1785,
	0,
	'unit',
	0,
	4,
	42);
INSERT INTO ACT_BLK
	VALUES (1726,
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
	1717,
	0);
INSERT INTO ACT_SMT
	VALUES (1788,
	1726,
	0,
	6,
	3,
	'UI::UI::setData line: 6');
INSERT INTO ACT_BRG
	VALUES (1788,
	1781,
	6,
	14,
	6,
	3);
INSERT INTO V_VAL
	VALUES (1789,
	0,
	0,
	6,
	35,
	39,
	0,
	0,
	0,
	0,
	170,
	1726);
INSERT INTO V_PVL
	VALUES (1789,
	0,
	0,
	0,
	1783);
INSERT INTO V_PAR
	VALUES (1789,
	1788,
	0,
	'value',
	1790,
	6,
	22);
INSERT INTO V_VAL
	VALUES (1790,
	0,
	0,
	6,
	48,
	48,
	0,
	0,
	0,
	0,
	13,
	1726);
INSERT INTO V_LIN
	VALUES (1790,
	'2');
INSERT INTO V_PAR
	VALUES (1790,
	1788,
	0,
	'unit',
	0,
	6,
	42);
INSERT INTO ACT_BLK
	VALUES (1729,
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
	1717,
	0);
INSERT INTO ACT_SMT
	VALUES (1791,
	1729,
	0,
	8,
	3,
	'UI::UI::setData line: 8');
INSERT INTO ACT_BRG
	VALUES (1791,
	1781,
	8,
	14,
	8,
	3);
INSERT INTO V_VAL
	VALUES (1792,
	0,
	0,
	8,
	35,
	39,
	0,
	0,
	0,
	0,
	170,
	1729);
INSERT INTO V_PVL
	VALUES (1792,
	0,
	0,
	0,
	1783);
INSERT INTO V_PAR
	VALUES (1792,
	1791,
	0,
	'value',
	1793,
	8,
	22);
INSERT INTO V_VAL
	VALUES (1793,
	0,
	0,
	8,
	48,
	48,
	0,
	0,
	0,
	0,
	13,
	1729);
INSERT INTO V_LIN
	VALUES (1793,
	'3');
INSERT INTO V_PAR
	VALUES (1793,
	1791,
	0,
	'unit',
	0,
	8,
	42);
INSERT INTO ACT_BLK
	VALUES (1732,
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
	1717,
	0);
INSERT INTO ACT_SMT
	VALUES (1794,
	1732,
	0,
	10,
	3,
	'UI::UI::setData line: 10');
INSERT INTO ACT_BRG
	VALUES (1794,
	1781,
	10,
	14,
	10,
	3);
INSERT INTO V_VAL
	VALUES (1795,
	0,
	0,
	10,
	35,
	39,
	0,
	0,
	0,
	0,
	170,
	1732);
INSERT INTO V_PVL
	VALUES (1795,
	0,
	0,
	0,
	1783);
INSERT INTO V_PAR
	VALUES (1795,
	1794,
	0,
	'value',
	1796,
	10,
	22);
INSERT INTO V_VAL
	VALUES (1796,
	0,
	0,
	10,
	48,
	48,
	0,
	0,
	0,
	0,
	13,
	1732);
INSERT INTO V_LIN
	VALUES (1796,
	'4');
INSERT INTO V_PAR
	VALUES (1796,
	1794,
	0,
	'unit',
	0,
	10,
	42);
INSERT INTO ACT_BLK
	VALUES (1735,
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
	1717,
	0);
INSERT INTO ACT_SMT
	VALUES (1797,
	1735,
	0,
	12,
	3,
	'UI::UI::setData line: 12');
INSERT INTO ACT_BRG
	VALUES (1797,
	1781,
	12,
	14,
	12,
	3);
INSERT INTO V_VAL
	VALUES (1798,
	0,
	0,
	12,
	35,
	39,
	0,
	0,
	0,
	0,
	170,
	1735);
INSERT INTO V_PVL
	VALUES (1798,
	0,
	0,
	0,
	1783);
INSERT INTO V_PAR
	VALUES (1798,
	1797,
	0,
	'value',
	1799,
	12,
	22);
INSERT INTO V_VAL
	VALUES (1799,
	0,
	0,
	12,
	48,
	48,
	0,
	0,
	0,
	0,
	13,
	1735);
INSERT INTO V_LIN
	VALUES (1799,
	'5');
INSERT INTO V_PAR
	VALUES (1799,
	1797,
	0,
	'unit',
	0,
	12,
	42);
INSERT INTO ACT_BLK
	VALUES (1738,
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
	1717,
	0);
INSERT INTO ACT_SMT
	VALUES (1800,
	1738,
	0,
	14,
	3,
	'UI::UI::setData line: 14');
INSERT INTO ACT_BRG
	VALUES (1800,
	1781,
	14,
	14,
	14,
	3);
INSERT INTO V_VAL
	VALUES (1801,
	0,
	0,
	14,
	35,
	39,
	0,
	0,
	0,
	0,
	170,
	1738);
INSERT INTO V_PVL
	VALUES (1801,
	0,
	0,
	0,
	1783);
INSERT INTO V_PAR
	VALUES (1801,
	1800,
	0,
	'value',
	1802,
	14,
	22);
INSERT INTO V_VAL
	VALUES (1802,
	0,
	0,
	14,
	48,
	48,
	0,
	0,
	0,
	0,
	13,
	1738);
INSERT INTO V_LIN
	VALUES (1802,
	'6');
INSERT INTO V_PAR
	VALUES (1802,
	1800,
	0,
	'unit',
	0,
	14,
	42);
INSERT INTO ACT_BLK
	VALUES (1741,
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
	1717,
	0);
INSERT INTO ACT_SMT
	VALUES (1803,
	1741,
	0,
	16,
	3,
	'UI::UI::setData line: 16');
INSERT INTO ACT_BRG
	VALUES (1803,
	1781,
	16,
	14,
	16,
	3);
INSERT INTO V_VAL
	VALUES (1804,
	0,
	0,
	16,
	35,
	39,
	0,
	0,
	0,
	0,
	170,
	1741);
INSERT INTO V_PVL
	VALUES (1804,
	0,
	0,
	0,
	1783);
INSERT INTO V_PAR
	VALUES (1804,
	1803,
	0,
	'value',
	1805,
	16,
	22);
INSERT INTO V_VAL
	VALUES (1805,
	0,
	0,
	16,
	48,
	48,
	0,
	0,
	0,
	0,
	13,
	1741);
INSERT INTO V_LIN
	VALUES (1805,
	'7');
INSERT INTO V_PAR
	VALUES (1805,
	1803,
	0,
	'unit',
	0,
	16,
	42);
INSERT INTO ACT_BLK
	VALUES (1744,
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
	1717,
	0);
INSERT INTO ACT_SMT
	VALUES (1806,
	1744,
	0,
	18,
	3,
	'UI::UI::setData line: 18');
INSERT INTO ACT_BRG
	VALUES (1806,
	1781,
	18,
	14,
	18,
	3);
INSERT INTO V_VAL
	VALUES (1807,
	0,
	0,
	18,
	35,
	39,
	0,
	0,
	0,
	0,
	170,
	1744);
INSERT INTO V_PVL
	VALUES (1807,
	0,
	0,
	0,
	1783);
INSERT INTO V_PAR
	VALUES (1807,
	1806,
	0,
	'value',
	1808,
	18,
	22);
INSERT INTO V_VAL
	VALUES (1808,
	0,
	0,
	18,
	48,
	48,
	0,
	0,
	0,
	0,
	13,
	1744);
INSERT INTO V_LIN
	VALUES (1808,
	'8');
INSERT INTO V_PAR
	VALUES (1808,
	1806,
	0,
	'unit',
	0,
	18,
	42);
INSERT INTO ACT_BLK
	VALUES (1747,
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
	1717,
	0);
INSERT INTO ACT_SMT
	VALUES (1809,
	1747,
	0,
	20,
	3,
	'UI::UI::setData line: 20');
INSERT INTO ACT_BRG
	VALUES (1809,
	1781,
	20,
	14,
	20,
	3);
INSERT INTO V_VAL
	VALUES (1810,
	0,
	0,
	20,
	35,
	39,
	0,
	0,
	0,
	0,
	170,
	1747);
INSERT INTO V_PVL
	VALUES (1810,
	0,
	0,
	0,
	1783);
INSERT INTO V_PAR
	VALUES (1810,
	1809,
	0,
	'value',
	1811,
	20,
	22);
INSERT INTO V_VAL
	VALUES (1811,
	0,
	0,
	20,
	48,
	48,
	0,
	0,
	0,
	0,
	13,
	1747);
INSERT INTO V_LIN
	VALUES (1811,
	'9');
INSERT INTO V_PAR
	VALUES (1811,
	1809,
	0,
	'unit',
	0,
	20,
	42);
INSERT INTO ACT_BLK
	VALUES (1750,
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
	1717,
	0);
INSERT INTO ACT_SMT
	VALUES (1812,
	1750,
	0,
	22,
	3,
	'UI::UI::setData line: 22');
INSERT INTO ACT_BRG
	VALUES (1812,
	1781,
	22,
	14,
	22,
	3);
INSERT INTO V_VAL
	VALUES (1813,
	0,
	0,
	22,
	35,
	39,
	0,
	0,
	0,
	0,
	170,
	1750);
INSERT INTO V_PVL
	VALUES (1813,
	0,
	0,
	0,
	1783);
INSERT INTO V_PAR
	VALUES (1813,
	1812,
	0,
	'value',
	1814,
	22,
	22);
INSERT INTO V_VAL
	VALUES (1814,
	0,
	0,
	22,
	48,
	49,
	0,
	0,
	0,
	0,
	13,
	1750);
INSERT INTO V_LIN
	VALUES (1814,
	'10');
INSERT INTO V_PAR
	VALUES (1814,
	1812,
	0,
	'unit',
	0,
	22,
	42);
INSERT INTO SPR_PEP
	VALUES (1815,
	1816,
	1705);
INSERT INTO SPR_PO
	VALUES (1815,
	'startTest',
	'',
	'generate TestCase2:start(iterations: 2) to TestCase creator;',
	1);
INSERT INTO ACT_POB
	VALUES (1817,
	1815);
INSERT INTO ACT_ACT
	VALUES (1817,
	'interface operation',
	0,
	1818,
	0,
	0,
	'UI::UI::startTest',
	0);
INSERT INTO ACT_BLK
	VALUES (1818,
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
	1817,
	0);
INSERT INTO ACT_SMT
	VALUES (1819,
	1818,
	0,
	1,
	1,
	'UI::UI::startTest line: 1');
INSERT INTO E_ESS
	VALUES (1819,
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
	VALUES (1820,
	1819,
	0,
	'iterations',
	0,
	1,
	26);
INSERT INTO E_GES
	VALUES (1819);
INSERT INTO E_GSME
	VALUES (1819,
	1821);
INSERT INTO E_GEC
	VALUES (1819);
INSERT INTO V_VAL
	VALUES (1820,
	0,
	0,
	1,
	38,
	38,
	0,
	0,
	0,
	0,
	13,
	1818);
INSERT INTO V_LIN
	VALUES (1820,
	'2');
INSERT INTO SPR_PEP
	VALUES (1822,
	1823,
	1705);
INSERT INTO SPR_PO
	VALUES (1822,
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
	VALUES (1824,
	1822);
INSERT INTO ACT_ACT
	VALUES (1824,
	'interface operation',
	0,
	1825,
	0,
	0,
	'UI::UI::setIndicator',
	0);
INSERT INTO ACT_BLK
	VALUES (1825,
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
	1824,
	0);
INSERT INTO ACT_SMT
	VALUES (1826,
	1825,
	0,
	2,
	1,
	'UI::UI::setIndicator line: 2');
INSERT INTO ACT_IF
	VALUES (1826,
	1827,
	1828,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1829,
	1825,
	0,
	4,
	1,
	'UI::UI::setIndicator line: 4');
INSERT INTO ACT_EL
	VALUES (1829,
	1830,
	1831,
	1826);
INSERT INTO ACT_SMT
	VALUES (1832,
	1825,
	0,
	6,
	1,
	'UI::UI::setIndicator line: 6');
INSERT INTO ACT_EL
	VALUES (1832,
	1833,
	1834,
	1826);
INSERT INTO ACT_SMT
	VALUES (1835,
	1825,
	0,
	8,
	1,
	'UI::UI::setIndicator line: 8');
INSERT INTO ACT_EL
	VALUES (1835,
	1836,
	1837,
	1826);
INSERT INTO V_VAL
	VALUES (1838,
	0,
	0,
	2,
	12,
	20,
	0,
	0,
	0,
	0,
	406,
	1825);
INSERT INTO V_PVL
	VALUES (1838,
	0,
	0,
	0,
	1839);
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
	72,
	1825);
INSERT INTO V_BIN
	VALUES (1828,
	1840,
	1838,
	'==');
INSERT INTO V_VAL
	VALUES (1840,
	0,
	0,
	2,
	36,
	40,
	0,
	0,
	0,
	0,
	406,
	1825);
INSERT INTO V_LEN
	VALUES (1840,
	424,
	2,
	25);
INSERT INTO V_VAL
	VALUES (1841,
	0,
	0,
	4,
	14,
	22,
	0,
	0,
	0,
	0,
	406,
	1825);
INSERT INTO V_PVL
	VALUES (1841,
	0,
	0,
	0,
	1839);
INSERT INTO V_VAL
	VALUES (1831,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1825);
INSERT INTO V_BIN
	VALUES (1831,
	1842,
	1841,
	'==');
INSERT INTO V_VAL
	VALUES (1842,
	0,
	0,
	4,
	38,
	41,
	0,
	0,
	0,
	0,
	406,
	1825);
INSERT INTO V_LEN
	VALUES (1842,
	452,
	4,
	27);
INSERT INTO V_VAL
	VALUES (1843,
	0,
	0,
	6,
	14,
	22,
	0,
	0,
	0,
	0,
	406,
	1825);
INSERT INTO V_PVL
	VALUES (1843,
	0,
	0,
	0,
	1839);
INSERT INTO V_VAL
	VALUES (1834,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1825);
INSERT INTO V_BIN
	VALUES (1834,
	1844,
	1843,
	'==');
INSERT INTO V_VAL
	VALUES (1844,
	0,
	0,
	6,
	38,
	41,
	0,
	0,
	0,
	0,
	406,
	1825);
INSERT INTO V_LEN
	VALUES (1844,
	456,
	6,
	27);
INSERT INTO V_VAL
	VALUES (1845,
	0,
	0,
	8,
	14,
	22,
	0,
	0,
	0,
	0,
	406,
	1825);
INSERT INTO V_PVL
	VALUES (1845,
	0,
	0,
	0,
	1839);
INSERT INTO V_VAL
	VALUES (1837,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	1825);
INSERT INTO V_BIN
	VALUES (1837,
	1846,
	1845,
	'==');
INSERT INTO V_VAL
	VALUES (1846,
	0,
	0,
	8,
	38,
	39,
	0,
	0,
	0,
	0,
	406,
	1825);
INSERT INTO V_LEN
	VALUES (1846,
	448,
	8,
	27);
INSERT INTO ACT_BLK
	VALUES (1827,
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
	1824,
	0);
INSERT INTO ACT_SMT
	VALUES (1847,
	1827,
	0,
	3,
	3,
	'UI::UI::setIndicator line: 3');
INSERT INTO ACT_BRG
	VALUES (1847,
	1848,
	3,
	14,
	3,
	3);
INSERT INTO V_VAL
	VALUES (1849,
	0,
	0,
	3,
	35,
	35,
	0,
	0,
	0,
	0,
	13,
	1827);
INSERT INTO V_LIN
	VALUES (1849,
	'0');
INSERT INTO V_PAR
	VALUES (1849,
	1847,
	0,
	'value',
	0,
	3,
	28);
INSERT INTO ACT_BLK
	VALUES (1830,
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
	1824,
	0);
INSERT INTO ACT_SMT
	VALUES (1850,
	1830,
	0,
	5,
	3,
	'UI::UI::setIndicator line: 5');
INSERT INTO ACT_BRG
	VALUES (1850,
	1848,
	5,
	14,
	5,
	3);
INSERT INTO V_VAL
	VALUES (1851,
	0,
	0,
	5,
	35,
	35,
	0,
	0,
	0,
	0,
	13,
	1830);
INSERT INTO V_LIN
	VALUES (1851,
	'1');
INSERT INTO V_PAR
	VALUES (1851,
	1850,
	0,
	'value',
	0,
	5,
	28);
INSERT INTO ACT_BLK
	VALUES (1833,
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
	1824,
	0);
INSERT INTO ACT_SMT
	VALUES (1852,
	1833,
	0,
	7,
	3,
	'UI::UI::setIndicator line: 7');
INSERT INTO ACT_BRG
	VALUES (1852,
	1848,
	7,
	14,
	7,
	3);
INSERT INTO V_VAL
	VALUES (1853,
	0,
	0,
	7,
	35,
	35,
	0,
	0,
	0,
	0,
	13,
	1833);
INSERT INTO V_LIN
	VALUES (1853,
	'2');
INSERT INTO V_PAR
	VALUES (1853,
	1852,
	0,
	'value',
	0,
	7,
	28);
INSERT INTO ACT_BLK
	VALUES (1836,
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
	1824,
	0);
INSERT INTO ACT_SMT
	VALUES (1854,
	1836,
	0,
	9,
	3,
	'UI::UI::setIndicator line: 9');
INSERT INTO ACT_BRG
	VALUES (1854,
	1848,
	9,
	14,
	9,
	3);
INSERT INTO V_VAL
	VALUES (1855,
	0,
	0,
	9,
	35,
	35,
	0,
	0,
	0,
	0,
	13,
	1836);
INSERT INTO V_LIN
	VALUES (1855,
	'3');
INSERT INTO V_PAR
	VALUES (1855,
	1854,
	0,
	'value',
	0,
	9,
	28);
INSERT INTO SPR_PEP
	VALUES (1856,
	1857,
	1705);
INSERT INTO SPR_PO
	VALUES (1856,
	'newGoalSpec',
	'',
	'',
	1);
INSERT INTO ACT_POB
	VALUES (1858,
	1856);
INSERT INTO ACT_ACT
	VALUES (1858,
	'interface operation',
	0,
	1859,
	0,
	0,
	'UI::UI::newGoalSpec',
	0);
INSERT INTO ACT_BLK
	VALUES (1859,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1858,
	0);
INSERT INTO C_PO
	VALUES (1860,
	1703,
	'Tracking',
	0,
	0);
INSERT INTO C_IR
	VALUES (1861,
	1862,
	0,
	1860);
INSERT INTO C_R
	VALUES (1861,
	'UITracking',
	'',
	'Unnamed Interface',
	'UI::Tracking::UITracking');
INSERT INTO SPR_REP
	VALUES (1863,
	1864,
	1861);
INSERT INTO SPR_RO
	VALUES (1863,
	'setTargetPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (1865,
	1863);
INSERT INTO ACT_ACT
	VALUES (1865,
	'interface operation',
	0,
	1866,
	0,
	0,
	'Tracking::UITracking::setTargetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1866,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1865,
	0);
INSERT INTO SPR_REP
	VALUES (1867,
	1868,
	1861);
INSERT INTO SPR_RO
	VALUES (1867,
	'startStopPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (1869,
	1867);
INSERT INTO ACT_ACT
	VALUES (1869,
	'interface operation',
	0,
	1870,
	0,
	0,
	'Tracking::UITracking::startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1870,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1869,
	0);
INSERT INTO SPR_REP
	VALUES (1871,
	1872,
	1861);
INSERT INTO SPR_RO
	VALUES (1871,
	'lapResetPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (1873,
	1871);
INSERT INTO ACT_ACT
	VALUES (1873,
	'interface operation',
	0,
	1874,
	0,
	0,
	'Tracking::UITracking::lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1874,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1873,
	0);
INSERT INTO SPR_REP
	VALUES (1875,
	1876,
	1861);
INSERT INTO SPR_RO
	VALUES (1875,
	'modePressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (1877,
	1875);
INSERT INTO ACT_ACT
	VALUES (1877,
	'interface operation',
	0,
	1878,
	0,
	0,
	'Tracking::UITracking::modePressed',
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
INSERT INTO SPR_REP
	VALUES (1879,
	1880,
	1861);
INSERT INTO SPR_RO
	VALUES (1879,
	'newGoalSpec',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (1881,
	1879);
INSERT INTO ACT_ACT
	VALUES (1881,
	'interface operation',
	0,
	1882,
	0,
	0,
	'Tracking::UITracking::newGoalSpec',
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
INSERT INTO SPR_REP
	VALUES (1883,
	1884,
	1861);
INSERT INTO SPR_RO
	VALUES (1883,
	'lightPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (1885,
	1883);
INSERT INTO ACT_ACT
	VALUES (1885,
	'interface operation',
	0,
	1886,
	0,
	0,
	'Tracking::UITracking::lightPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1886,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
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
INSERT INTO PE_PE
	VALUES (1887,
	1,
	0,
	1703,
	7);
INSERT INTO EP_PKG
	VALUES (1887,
	0,
	1701,
	'ButtonFunctions',
	'Each function within this package represents one of the buttons
on the watch.  When a function is executed, it sends the 
corresponding interface signal out through the UI port.
This allows a user executing models in Verifier to simulate
the use of the watch by invoking these functions to 
represent button pushes.',
	0);
INSERT INTO PE_PE
	VALUES (1888,
	1,
	1887,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (1888,
	0,
	'sendLapResetPressed',
	'',
	'send Tracking::lapResetPressed();',
	240,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (1889,
	1888);
INSERT INTO ACT_ACT
	VALUES (1889,
	'function',
	0,
	1890,
	0,
	0,
	'sendLapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1890,
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
	1889,
	0);
INSERT INTO ACT_SMT
	VALUES (1891,
	1890,
	0,
	1,
	1,
	'sendLapResetPressed line: 1');
INSERT INTO ACT_IOP
	VALUES (1891,
	1,
	16,
	1,
	6,
	0,
	1871,
	0);
INSERT INTO PE_PE
	VALUES (1892,
	1,
	1887,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (1892,
	0,
	'sendLightPressed',
	'',
	'send Tracking::lightPressed();',
	240,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (1893,
	1892);
INSERT INTO ACT_ACT
	VALUES (1893,
	'function',
	0,
	1894,
	0,
	0,
	'sendLightPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1894,
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
	1893,
	0);
INSERT INTO ACT_SMT
	VALUES (1895,
	1894,
	0,
	1,
	1,
	'sendLightPressed line: 1');
INSERT INTO ACT_IOP
	VALUES (1895,
	1,
	16,
	1,
	6,
	0,
	1883,
	0);
INSERT INTO PE_PE
	VALUES (1896,
	1,
	1887,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (1896,
	0,
	'sendModePressed',
	'',
	'send Tracking::modePressed();',
	240,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (1897,
	1896);
INSERT INTO ACT_ACT
	VALUES (1897,
	'function',
	0,
	1898,
	0,
	0,
	'sendModePressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1898,
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
	1897,
	0);
INSERT INTO ACT_SMT
	VALUES (1899,
	1898,
	0,
	1,
	1,
	'sendModePressed line: 1');
INSERT INTO ACT_IOP
	VALUES (1899,
	1,
	16,
	1,
	6,
	0,
	1875,
	0);
INSERT INTO PE_PE
	VALUES (1900,
	1,
	1887,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (1900,
	0,
	'sendStartStopPressed',
	'',
	'send Tracking::startStopPressed();',
	240,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (1901,
	1900);
INSERT INTO ACT_ACT
	VALUES (1901,
	'function',
	0,
	1902,
	0,
	0,
	'sendStartStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1902,
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
	1901,
	0);
INSERT INTO ACT_SMT
	VALUES (1903,
	1902,
	0,
	1,
	1,
	'sendStartStopPressed line: 1');
INSERT INTO ACT_IOP
	VALUES (1903,
	1,
	16,
	1,
	6,
	0,
	1867,
	0);
INSERT INTO PE_PE
	VALUES (1904,
	1,
	1887,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (1904,
	0,
	'sendTargetPressed',
	'',
	'send Tracking::setTargetPressed();',
	240,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (1905,
	1904);
INSERT INTO ACT_ACT
	VALUES (1905,
	'function',
	0,
	1906,
	0,
	0,
	'sendTargetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (1906,
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
	1905,
	0);
INSERT INTO ACT_SMT
	VALUES (1907,
	1906,
	0,
	1,
	1,
	'sendTargetPressed line: 1');
INSERT INTO ACT_IOP
	VALUES (1907,
	1,
	16,
	1,
	6,
	0,
	1863,
	0);
INSERT INTO PE_PE
	VALUES (1908,
	1,
	0,
	1703,
	7);
INSERT INTO EP_PKG
	VALUES (1908,
	0,
	1701,
	'UI',
	'',
	0);
INSERT INTO PE_PE
	VALUES (1909,
	1,
	1908,
	0,
	5);
INSERT INTO S_EE
	VALUES (1909,
	'Time',
	'The Time external entity provides date, timestamp, and timer related operations.',
	'TIM',
	0,
	'',
	'Time',
	1);
INSERT INTO S_BRG
	VALUES (1910,
	1909,
	'current_date',
	'',
	1,
	253,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (1911,
	1910);
INSERT INTO ACT_ACT
	VALUES (1911,
	'bridge',
	0,
	1912,
	0,
	0,
	'Time::current_date',
	0);
INSERT INTO ACT_BLK
	VALUES (1912,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1911,
	0);
INSERT INTO S_BRG
	VALUES (1913,
	1909,
	'create_date',
	'',
	1,
	253,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (1914,
	1913,
	'second',
	13,
	0,
	'',
	1915,
	'');
INSERT INTO S_BPARM
	VALUES (1916,
	1913,
	'minute',
	13,
	0,
	'',
	1917,
	'');
INSERT INTO S_BPARM
	VALUES (1917,
	1913,
	'hour',
	13,
	0,
	'',
	1918,
	'');
INSERT INTO S_BPARM
	VALUES (1918,
	1913,
	'day',
	13,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (1915,
	1913,
	'month',
	13,
	0,
	'',
	1916,
	'');
INSERT INTO S_BPARM
	VALUES (1919,
	1913,
	'year',
	13,
	0,
	'',
	1914,
	'');
INSERT INTO ACT_BRB
	VALUES (1920,
	1913);
INSERT INTO ACT_ACT
	VALUES (1920,
	'bridge',
	0,
	1921,
	0,
	0,
	'Time::create_date',
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
INSERT INTO S_BRG
	VALUES (1922,
	1909,
	'get_second',
	'',
	1,
	13,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (1923,
	1922,
	'date',
	253,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (1924,
	1922);
INSERT INTO ACT_ACT
	VALUES (1924,
	'bridge',
	0,
	1925,
	0,
	0,
	'Time::get_second',
	0);
INSERT INTO ACT_BLK
	VALUES (1925,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
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
INSERT INTO S_BRG
	VALUES (1926,
	1909,
	'get_minute',
	'',
	1,
	13,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (1927,
	1926,
	'date',
	253,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (1928,
	1926);
INSERT INTO ACT_ACT
	VALUES (1928,
	'bridge',
	0,
	1929,
	0,
	0,
	'Time::get_minute',
	0);
INSERT INTO ACT_BLK
	VALUES (1929,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1928,
	0);
INSERT INTO S_BRG
	VALUES (1930,
	1909,
	'get_hour',
	'',
	1,
	13,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (1931,
	1930,
	'date',
	253,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (1932,
	1930);
INSERT INTO ACT_ACT
	VALUES (1932,
	'bridge',
	0,
	1933,
	0,
	0,
	'Time::get_hour',
	0);
INSERT INTO ACT_BLK
	VALUES (1933,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1932,
	0);
INSERT INTO S_BRG
	VALUES (1934,
	1909,
	'get_day',
	'',
	1,
	13,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (1935,
	1934,
	'date',
	253,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (1936,
	1934);
INSERT INTO ACT_ACT
	VALUES (1936,
	'bridge',
	0,
	1937,
	0,
	0,
	'Time::get_day',
	0);
INSERT INTO ACT_BLK
	VALUES (1937,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1936,
	0);
INSERT INTO S_BRG
	VALUES (1938,
	1909,
	'get_month',
	'',
	1,
	13,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (1939,
	1938,
	'date',
	253,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (1940,
	1938);
INSERT INTO ACT_ACT
	VALUES (1940,
	'bridge',
	0,
	1941,
	0,
	0,
	'Time::get_month',
	0);
INSERT INTO ACT_BLK
	VALUES (1941,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1940,
	0);
INSERT INTO S_BRG
	VALUES (1942,
	1909,
	'get_year',
	'',
	1,
	13,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (1943,
	1942,
	'date',
	253,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (1944,
	1942);
INSERT INTO ACT_ACT
	VALUES (1944,
	'bridge',
	0,
	1945,
	0,
	0,
	'Time::get_year',
	0);
INSERT INTO ACT_BLK
	VALUES (1945,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1944,
	0);
INSERT INTO S_BRG
	VALUES (1946,
	1909,
	'current_clock',
	'',
	1,
	259,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (1947,
	1946);
INSERT INTO ACT_ACT
	VALUES (1947,
	'bridge',
	0,
	1948,
	0,
	0,
	'Time::current_clock',
	0);
INSERT INTO ACT_BLK
	VALUES (1948,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1947,
	0);
INSERT INTO S_BRG
	VALUES (1949,
	1909,
	'timer_start',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Returns the instance
handle of the timer.',
	1,
	313,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (1950,
	1949,
	'microseconds',
	13,
	0,
	'',
	1951,
	'');
INSERT INTO S_BPARM
	VALUES (1951,
	1949,
	'event_inst',
	316,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (1952,
	1949);
INSERT INTO ACT_ACT
	VALUES (1952,
	'bridge',
	0,
	1953,
	0,
	0,
	'Time::timer_start',
	0);
INSERT INTO ACT_BLK
	VALUES (1953,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
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
INSERT INTO S_BRG
	VALUES (1954,
	1909,
	'timer_start_recurring',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Upon expiration, the
timer will be restarted and fire again in the specified number of microseconds
generating the passed event. This bridge operation returns the instance handle
of the timer.',
	1,
	313,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (1955,
	1954,
	'microseconds',
	13,
	0,
	'',
	1956,
	'');
INSERT INTO S_BPARM
	VALUES (1956,
	1954,
	'event_inst',
	316,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (1957,
	1954);
INSERT INTO ACT_ACT
	VALUES (1957,
	'bridge',
	0,
	1958,
	0,
	0,
	'Time::timer_start_recurring',
	0);
INSERT INTO ACT_BLK
	VALUES (1958,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1957,
	0);
INSERT INTO S_BRG
	VALUES (1959,
	1909,
	'timer_remaining_time',
	'Returns the time remaining (in microseconds) for the passed timer instance. If
the timer has expired, a zero value is returned.',
	1,
	13,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (1960,
	1959,
	'timer_inst_ref',
	313,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (1961,
	1959);
INSERT INTO ACT_ACT
	VALUES (1961,
	'bridge',
	0,
	1962,
	0,
	0,
	'Time::timer_remaining_time',
	0);
INSERT INTO ACT_BLK
	VALUES (1962,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
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
INSERT INTO S_BRG
	VALUES (1963,
	1909,
	'timer_reset_time',
	'This bridge operation attempts to set the passed existing timer to expire in
the specified number of microseconds. If the timer exists (that is, it has not
expired), a TRUE value is returned. If the timer no longer exists, a FALSE value
is returned.',
	1,
	72,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (1964,
	1963,
	'timer_inst_ref',
	313,
	0,
	'',
	1965,
	'');
INSERT INTO S_BPARM
	VALUES (1965,
	1963,
	'microseconds',
	13,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (1966,
	1963);
INSERT INTO ACT_ACT
	VALUES (1966,
	'bridge',
	0,
	1967,
	0,
	0,
	'Time::timer_reset_time',
	0);
INSERT INTO ACT_BLK
	VALUES (1967,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1966,
	0);
INSERT INTO S_BRG
	VALUES (1968,
	1909,
	'timer_add_time',
	'This bridge operation attempts to add the specified number of microseconds to a
passed existing timer. If the timer exists (that is, it has not expired), a TRUE
value is returned. If the timer no longer exists, a FALSE value is returned.',
	1,
	72,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (1969,
	1968,
	'timer_inst_ref',
	313,
	0,
	'',
	1970,
	'');
INSERT INTO S_BPARM
	VALUES (1970,
	1968,
	'microseconds',
	13,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (1971,
	1968);
INSERT INTO ACT_ACT
	VALUES (1971,
	'bridge',
	0,
	1972,
	0,
	0,
	'Time::timer_add_time',
	0);
INSERT INTO ACT_BLK
	VALUES (1972,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1971,
	0);
INSERT INTO S_BRG
	VALUES (1973,
	1909,
	'timer_cancel',
	'This bridge operation cancels and deletes the passed timer instance. If the 
timer exists (that is, it had not expired), a TRUE value is returned. If the
timer no longer exists, a FALSE value is returned.',
	1,
	72,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (1974,
	1973,
	'timer_inst_ref',
	313,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (1975,
	1973);
INSERT INTO ACT_ACT
	VALUES (1975,
	'bridge',
	0,
	1976,
	0,
	0,
	'Time::timer_cancel',
	0);
INSERT INTO ACT_BLK
	VALUES (1976,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1975,
	0);
INSERT INTO PE_PE
	VALUES (1977,
	1,
	1908,
	0,
	5);
INSERT INTO S_EE
	VALUES (1977,
	'Graphical User Interface',
	'',
	'GuiBridge',
	0,
	'',
	'Graphical User Interface',
	1);
INSERT INTO S_BRG
	VALUES (1978,
	1977,
	'feedSetTargetPressedEvent',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (1979,
	1978,
	'evt',
	316,
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
	'Graphical User Interface::feedSetTargetPressedEvent',
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
	1977,
	'feedModePressedEvent',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (1983,
	1982,
	'evt',
	316,
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
	'Graphical User Interface::feedModePressedEvent',
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
	1977,
	'feedLightPressedEvent',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (1987,
	1986,
	'evt',
	316,
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
	'Graphical User Interface::feedLightPressedEvent',
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
	1977,
	'feedLapResetPressedEvent',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (1991,
	1990,
	'evt',
	316,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (1992,
	1990);
INSERT INTO ACT_ACT
	VALUES (1992,
	'bridge',
	0,
	1993,
	0,
	0,
	'Graphical User Interface::feedLapResetPressedEvent',
	0);
INSERT INTO ACT_BLK
	VALUES (1993,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1992,
	0);
INSERT INTO S_BRG
	VALUES (1994,
	1977,
	'feedStartStopPressedEvent',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (1995,
	1994,
	'evt',
	316,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (1996,
	1994);
INSERT INTO ACT_ACT
	VALUES (1996,
	'bridge',
	0,
	1997,
	0,
	0,
	'Graphical User Interface::feedStartStopPressedEvent',
	0);
INSERT INTO ACT_BLK
	VALUES (1997,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1996,
	0);
INSERT INTO S_BRG
	VALUES (1781,
	1977,
	'setData',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (1998,
	1781,
	'value',
	170,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (1999,
	1781,
	'unit',
	13,
	0,
	'',
	1998,
	'');
INSERT INTO ACT_BRB
	VALUES (2000,
	1781);
INSERT INTO ACT_ACT
	VALUES (2000,
	'bridge',
	0,
	2001,
	0,
	0,
	'Graphical User Interface::setData',
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
	VALUES (1712,
	1977,
	'setTime',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2002,
	1712,
	'time',
	13,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2003,
	1712);
INSERT INTO ACT_ACT
	VALUES (2003,
	'bridge',
	0,
	2004,
	0,
	0,
	'Graphical User Interface::setTime',
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
INSERT INTO S_BRG
	VALUES (2005,
	1977,
	'connect',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (2006,
	2005);
INSERT INTO ACT_ACT
	VALUES (2006,
	'bridge',
	0,
	2007,
	0,
	0,
	'Graphical User Interface::connect',
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
INSERT INTO S_BRG
	VALUES (1848,
	1977,
	'setIndicator',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2008,
	1848,
	'value',
	13,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2009,
	1848);
INSERT INTO ACT_ACT
	VALUES (2009,
	'bridge',
	0,
	2010,
	0,
	0,
	'Graphical User Interface::setIndicator',
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
INSERT INTO PE_PE
	VALUES (2011,
	1,
	1908,
	0,
	5);
INSERT INTO S_EE
	VALUES (2011,
	'Logging',
	'',
	'LOG',
	0,
	'',
	'Logging',
	1);
INSERT INTO S_BRG
	VALUES (2012,
	2011,
	'LogSuccess',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2013,
	2012,
	'message',
	96,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2014,
	2012);
INSERT INTO ACT_ACT
	VALUES (2014,
	'bridge',
	0,
	2015,
	0,
	0,
	'Logging::LogSuccess',
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
	2011,
	'LogFailure',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2017,
	2016,
	'message',
	96,
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
	'Logging::LogFailure',
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
INSERT INTO S_BRG
	VALUES (2020,
	2011,
	'LogInfo',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2021,
	2020,
	'message',
	96,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2022,
	2020);
INSERT INTO ACT_ACT
	VALUES (2022,
	'bridge',
	0,
	2023,
	0,
	0,
	'Logging::LogInfo',
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
	VALUES (2024,
	2011,
	'LogDate',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2025,
	2024,
	'd',
	253,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2026,
	2024,
	'message',
	96,
	0,
	'',
	2025,
	'');
INSERT INTO ACT_BRB
	VALUES (2027,
	2024);
INSERT INTO ACT_ACT
	VALUES (2027,
	'bridge',
	0,
	2028,
	0,
	0,
	'Logging::LogDate',
	0);
INSERT INTO ACT_BLK
	VALUES (2028,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2027,
	0);
INSERT INTO S_BRG
	VALUES (2029,
	2011,
	'LogTime',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2030,
	2029,
	't',
	259,
	0,
	'',
	2031,
	'');
INSERT INTO S_BPARM
	VALUES (2031,
	2029,
	'message',
	96,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2032,
	2029);
INSERT INTO ACT_ACT
	VALUES (2032,
	'bridge',
	0,
	2033,
	0,
	0,
	'Logging::LogTime',
	0);
INSERT INTO ACT_BLK
	VALUES (2033,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2032,
	0);
INSERT INTO S_BRG
	VALUES (2034,
	2011,
	'LogReal',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2035,
	2034,
	'r',
	170,
	0,
	'',
	2036,
	'');
INSERT INTO S_BPARM
	VALUES (2036,
	2034,
	'message',
	96,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2037,
	2034);
INSERT INTO ACT_ACT
	VALUES (2037,
	'bridge',
	0,
	2038,
	0,
	0,
	'Logging::LogReal',
	0);
INSERT INTO ACT_BLK
	VALUES (2038,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2037,
	0);
INSERT INTO S_BRG
	VALUES (2039,
	2011,
	'LogInteger',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2040,
	2039,
	'message',
	13,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2041,
	2039);
INSERT INTO ACT_ACT
	VALUES (2041,
	'bridge',
	0,
	2042,
	0,
	0,
	'Logging::LogInteger',
	0);
INSERT INTO ACT_BLK
	VALUES (2042,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2041,
	0);
INSERT INTO PE_PE
	VALUES (2043,
	1,
	1908,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (2043,
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
	240,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (2044,
	2043);
INSERT INTO ACT_ACT
	VALUES (2044,
	'function',
	0,
	2045,
	0,
	0,
	'createGoals_1',
	0);
INSERT INTO ACT_BLK
	VALUES (2045,
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
	2044,
	0);
INSERT INTO ACT_SMT
	VALUES (2046,
	2045,
	2047,
	2,
	1,
	'createGoals_1 line: 2');
INSERT INTO ACT_IOP
	VALUES (2046,
	2,
	16,
	2,
	6,
	0,
	1879,
	0);
INSERT INTO ACT_SMT
	VALUES (2047,
	2045,
	2048,
	10,
	1,
	'createGoals_1 line: 10');
INSERT INTO ACT_IOP
	VALUES (2047,
	10,
	16,
	10,
	6,
	0,
	1879,
	0);
INSERT INTO ACT_SMT
	VALUES (2048,
	2045,
	2049,
	18,
	1,
	'createGoals_1 line: 18');
INSERT INTO ACT_IOP
	VALUES (2048,
	18,
	16,
	18,
	6,
	0,
	1879,
	0);
INSERT INTO ACT_SMT
	VALUES (2049,
	2045,
	0,
	26,
	1,
	'createGoals_1 line: 26');
INSERT INTO ACT_IOP
	VALUES (2049,
	26,
	16,
	26,
	6,
	0,
	1879,
	0);
INSERT INTO V_VAL
	VALUES (2050,
	0,
	0,
	3,
	19,
	19,
	0,
	0,
	0,
	0,
	13,
	2045);
INSERT INTO V_LIN
	VALUES (2050,
	'1');
INSERT INTO V_PAR
	VALUES (2050,
	2046,
	0,
	'sequenceNumber',
	2051,
	3,
	3);
INSERT INTO V_VAL
	VALUES (2051,
	0,
	0,
	4,
	12,
	14,
	0,
	0,
	0,
	0,
	170,
	2045);
INSERT INTO V_LRL
	VALUES (2051,
	'2.0');
INSERT INTO V_PAR
	VALUES (2051,
	2046,
	0,
	'minimum',
	2052,
	4,
	3);
INSERT INTO V_VAL
	VALUES (2052,
	0,
	0,
	5,
	12,
	14,
	0,
	0,
	0,
	0,
	170,
	2045);
INSERT INTO V_LRL
	VALUES (2052,
	'8.0');
INSERT INTO V_PAR
	VALUES (2052,
	2046,
	0,
	'maximum',
	2053,
	5,
	3);
INSERT INTO V_VAL
	VALUES (2053,
	0,
	0,
	6,
	9,
	13,
	0,
	0,
	0,
	0,
	170,
	2045);
INSERT INTO V_LRL
	VALUES (2053,
	'150.0');
INSERT INTO V_PAR
	VALUES (2053,
	2046,
	0,
	'span',
	2054,
	6,
	3);
INSERT INTO V_VAL
	VALUES (2054,
	0,
	0,
	7,
	31,
	34,
	0,
	0,
	0,
	0,
	180,
	2045);
INSERT INTO V_LEN
	VALUES (2054,
	356,
	7,
	17);
INSERT INTO V_PAR
	VALUES (2054,
	2046,
	0,
	'criteriaType',
	2055,
	7,
	3);
INSERT INTO V_VAL
	VALUES (2055,
	0,
	0,
	8,
	23,
	30,
	0,
	0,
	0,
	0,
	184,
	2045);
INSERT INTO V_LEN
	VALUES (2055,
	358,
	8,
	13);
INSERT INTO V_PAR
	VALUES (2055,
	2046,
	0,
	'spanType',
	0,
	8,
	3);
INSERT INTO V_VAL
	VALUES (2056,
	0,
	0,
	11,
	19,
	19,
	0,
	0,
	0,
	0,
	13,
	2045);
INSERT INTO V_LIN
	VALUES (2056,
	'2');
INSERT INTO V_PAR
	VALUES (2056,
	2047,
	0,
	'sequenceNumber',
	2057,
	11,
	3);
INSERT INTO V_VAL
	VALUES (2057,
	0,
	0,
	12,
	12,
	15,
	0,
	0,
	0,
	0,
	170,
	2045);
INSERT INTO V_LRL
	VALUES (2057,
	'60.0');
INSERT INTO V_PAR
	VALUES (2057,
	2047,
	0,
	'minimum',
	2058,
	12,
	3);
INSERT INTO V_VAL
	VALUES (2058,
	0,
	0,
	13,
	12,
	15,
	0,
	0,
	0,
	0,
	170,
	2045);
INSERT INTO V_LRL
	VALUES (2058,
	'80.0');
INSERT INTO V_PAR
	VALUES (2058,
	2047,
	0,
	'maximum',
	2059,
	13,
	3);
INSERT INTO V_VAL
	VALUES (2059,
	0,
	0,
	14,
	9,
	10,
	0,
	0,
	0,
	0,
	13,
	2045);
INSERT INTO V_LIN
	VALUES (2059,
	'10');
INSERT INTO V_PAR
	VALUES (2059,
	2047,
	0,
	'span',
	2060,
	14,
	3);
INSERT INTO V_VAL
	VALUES (2060,
	0,
	0,
	15,
	31,
	39,
	0,
	0,
	0,
	0,
	180,
	2045);
INSERT INTO V_LEN
	VALUES (2060,
	364,
	15,
	17);
INSERT INTO V_PAR
	VALUES (2060,
	2047,
	0,
	'criteriaType',
	2061,
	15,
	3);
INSERT INTO V_VAL
	VALUES (2061,
	0,
	0,
	16,
	23,
	26,
	0,
	0,
	0,
	0,
	184,
	2045);
INSERT INTO V_LEN
	VALUES (2061,
	366,
	16,
	13);
INSERT INTO V_PAR
	VALUES (2061,
	2047,
	0,
	'spanType',
	0,
	16,
	3);
INSERT INTO V_VAL
	VALUES (2062,
	0,
	0,
	19,
	19,
	19,
	0,
	0,
	0,
	0,
	13,
	2045);
INSERT INTO V_LIN
	VALUES (2062,
	'3');
INSERT INTO V_PAR
	VALUES (2062,
	2048,
	0,
	'sequenceNumber',
	2063,
	19,
	3);
INSERT INTO V_VAL
	VALUES (2063,
	0,
	0,
	20,
	12,
	14,
	0,
	0,
	0,
	0,
	170,
	2045);
INSERT INTO V_LRL
	VALUES (2063,
	'5.0');
INSERT INTO V_PAR
	VALUES (2063,
	2048,
	0,
	'minimum',
	2064,
	20,
	3);
INSERT INTO V_VAL
	VALUES (2064,
	0,
	0,
	21,
	12,
	14,
	0,
	0,
	0,
	0,
	170,
	2045);
INSERT INTO V_LRL
	VALUES (2064,
	'6.0');
INSERT INTO V_PAR
	VALUES (2064,
	2048,
	0,
	'maximum',
	2065,
	21,
	3);
INSERT INTO V_VAL
	VALUES (2065,
	0,
	0,
	22,
	9,
	10,
	0,
	0,
	0,
	0,
	13,
	2045);
INSERT INTO V_LIN
	VALUES (2065,
	'15');
INSERT INTO V_PAR
	VALUES (2065,
	2048,
	0,
	'span',
	2066,
	22,
	3);
INSERT INTO V_VAL
	VALUES (2066,
	0,
	0,
	23,
	31,
	34,
	0,
	0,
	0,
	0,
	180,
	2045);
INSERT INTO V_LEN
	VALUES (2066,
	356,
	23,
	17);
INSERT INTO V_PAR
	VALUES (2066,
	2048,
	0,
	'criteriaType',
	2067,
	23,
	3);
INSERT INTO V_VAL
	VALUES (2067,
	0,
	0,
	24,
	23,
	26,
	0,
	0,
	0,
	0,
	184,
	2045);
INSERT INTO V_LEN
	VALUES (2067,
	366,
	24,
	13);
INSERT INTO V_PAR
	VALUES (2067,
	2048,
	0,
	'spanType',
	0,
	24,
	3);
INSERT INTO V_VAL
	VALUES (2068,
	0,
	0,
	27,
	19,
	19,
	0,
	0,
	0,
	0,
	13,
	2045);
INSERT INTO V_LIN
	VALUES (2068,
	'4');
INSERT INTO V_PAR
	VALUES (2068,
	2049,
	0,
	'sequenceNumber',
	2069,
	27,
	3);
INSERT INTO V_VAL
	VALUES (2069,
	0,
	0,
	28,
	12,
	14,
	0,
	0,
	0,
	0,
	170,
	2045);
INSERT INTO V_LRL
	VALUES (2069,
	'1.0');
INSERT INTO V_PAR
	VALUES (2069,
	2049,
	0,
	'minimum',
	2070,
	28,
	3);
INSERT INTO V_VAL
	VALUES (2070,
	0,
	0,
	29,
	12,
	14,
	0,
	0,
	0,
	0,
	170,
	2045);
INSERT INTO V_LRL
	VALUES (2070,
	'2.0');
INSERT INTO V_PAR
	VALUES (2070,
	2049,
	0,
	'maximum',
	2071,
	29,
	3);
INSERT INTO V_VAL
	VALUES (2071,
	0,
	0,
	30,
	9,
	10,
	0,
	0,
	0,
	0,
	13,
	2045);
INSERT INTO V_LIN
	VALUES (2071,
	'15');
INSERT INTO V_PAR
	VALUES (2071,
	2049,
	0,
	'span',
	2072,
	30,
	3);
INSERT INTO V_VAL
	VALUES (2072,
	0,
	0,
	31,
	31,
	34,
	0,
	0,
	0,
	0,
	180,
	2045);
INSERT INTO V_LEN
	VALUES (2072,
	356,
	31,
	17);
INSERT INTO V_PAR
	VALUES (2072,
	2049,
	0,
	'criteriaType',
	2073,
	31,
	3);
INSERT INTO V_VAL
	VALUES (2073,
	0,
	0,
	32,
	23,
	26,
	0,
	0,
	0,
	0,
	184,
	2045);
INSERT INTO V_LEN
	VALUES (2073,
	366,
	32,
	13);
INSERT INTO V_PAR
	VALUES (2073,
	2049,
	0,
	'spanType',
	0,
	32,
	3);
INSERT INTO PE_PE
	VALUES (2074,
	1,
	1908,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (2074,
	0,
	'init',
	'',
	'GuiBridge::connect();',
	240,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (2075,
	2074);
INSERT INTO ACT_ACT
	VALUES (2075,
	'function',
	0,
	2076,
	0,
	0,
	'init',
	0);
INSERT INTO ACT_BLK
	VALUES (2076,
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
	2075,
	0);
INSERT INTO ACT_SMT
	VALUES (2077,
	2076,
	0,
	1,
	1,
	'init line: 1');
INSERT INTO ACT_BRG
	VALUES (2077,
	2005,
	1,
	12,
	1,
	1);
INSERT INTO PE_PE
	VALUES (2078,
	1,
	1908,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (2078,
	0,
	'RunTestCase',
	'',
	'TestCase::execute();',
	240,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (2079,
	2078);
INSERT INTO ACT_ACT
	VALUES (2079,
	'function',
	0,
	2080,
	0,
	0,
	'RunTestCase',
	0);
INSERT INTO ACT_BLK
	VALUES (2080,
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
	2079,
	0);
INSERT INTO ACT_SMT
	VALUES (2081,
	2080,
	0,
	1,
	1,
	'RunTestCase line: 1');
INSERT INTO ACT_TFM
	VALUES (2081,
	2082,
	0,
	1,
	11,
	1,
	1);
INSERT INTO PE_PE
	VALUES (2083,
	1,
	1908,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (2083,
	'TestCase',
	2,
	'TestCase',
	'Represents a very simple automated test case.',
	0);
INSERT INTO O_TFR
	VALUES (2082,
	2083,
	'execute',
	'',
	240,
	0,
	'generate TestCase2:start(iterations: 2) to TestCase creator;',
	1,
	'',
	0);
INSERT INTO ACT_OPB
	VALUES (2084,
	2082);
INSERT INTO ACT_ACT
	VALUES (2084,
	'class operation',
	0,
	2085,
	0,
	0,
	'TestCase::execute',
	0);
INSERT INTO ACT_BLK
	VALUES (2085,
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
	2084,
	0);
INSERT INTO ACT_SMT
	VALUES (2086,
	2085,
	0,
	1,
	1,
	'TestCase::execute line: 1');
INSERT INTO E_ESS
	VALUES (2086,
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
	VALUES (2087,
	2086,
	0,
	'iterations',
	0,
	1,
	26);
INSERT INTO E_GES
	VALUES (2086);
INSERT INTO E_GSME
	VALUES (2086,
	1821);
INSERT INTO E_GEC
	VALUES (2086);
INSERT INTO V_VAL
	VALUES (2087,
	0,
	0,
	1,
	38,
	38,
	0,
	0,
	0,
	0,
	13,
	2085);
INSERT INTO V_LIN
	VALUES (2087,
	'2');
INSERT INTO O_NBATTR
	VALUES (2088,
	2083);
INSERT INTO O_BATTR
	VALUES (2088,
	2083);
INSERT INTO O_ATTR
	VALUES (2088,
	2083,
	0,
	'current_state',
	'',
	'',
	'current_state',
	0,
	458,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2089,
	2083);
INSERT INTO O_BATTR
	VALUES (2089,
	2083);
INSERT INTO O_ATTR
	VALUES (2089,
	2083,
	2088,
	'iterations',
	'',
	'',
	'iterations',
	0,
	13,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2083);
INSERT INTO O_ID
	VALUES (1,
	2083);
INSERT INTO O_ID
	VALUES (2,
	2083);
INSERT INTO SM_ISM
	VALUES (2090,
	2083);
INSERT INTO SM_SM
	VALUES (2090,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (2090);
INSERT INTO SM_EVTDI
	VALUES (2091,
	2090,
	'iterations',
	'',
	13,
	'',
	1821,
	0);
INSERT INTO SM_LEVT
	VALUES (2092,
	2090,
	0);
INSERT INTO SM_SEVT
	VALUES (2092,
	2090,
	0);
INSERT INTO SM_EVT
	VALUES (2092,
	2090,
	0,
	1,
	'delay',
	0,
	'',
	'TestCase1',
	'');
INSERT INTO SM_LEVT
	VALUES (1821,
	2090,
	0);
INSERT INTO SM_SEVT
	VALUES (1821,
	2090,
	0);
INSERT INTO SM_EVT
	VALUES (1821,
	2090,
	0,
	2,
	'start',
	0,
	'',
	'TestCase2',
	'');
INSERT INTO SM_LEVT
	VALUES (2093,
	2090,
	0);
INSERT INTO SM_SEVT
	VALUES (2093,
	2090,
	0);
INSERT INTO SM_EVT
	VALUES (2093,
	2090,
	0,
	3,
	'finish',
	0,
	'',
	'TestCase3',
	'');
INSERT INTO SM_STATE
	VALUES (2094,
	2090,
	0,
	'pressStartStop',
	2,
	0);
INSERT INTO SM_SEME
	VALUES (2094,
	2092,
	2090,
	0);
INSERT INTO SM_CH
	VALUES (2094,
	1821,
	2090,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2094,
	1821,
	2090,
	0);
INSERT INTO SM_SEME
	VALUES (2094,
	2093,
	2090,
	0);
INSERT INTO SM_MOAH
	VALUES (2095,
	2090,
	2094);
INSERT INTO SM_AH
	VALUES (2095,
	2090);
INSERT INTO SM_ACT
	VALUES (2095,
	2090,
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
	VALUES (2096,
	2090,
	2095);
INSERT INTO ACT_ACT
	VALUES (2096,
	'state',
	0,
	2097,
	0,
	0,
	'TestCase::pressStartStop',
	0);
INSERT INTO ACT_BLK
	VALUES (2097,
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
	2096,
	0);
INSERT INTO ACT_SMT
	VALUES (2098,
	2097,
	0,
	1,
	1,
	'TestCase::pressStartStop line: 1');
INSERT INTO ACT_IF
	VALUES (2098,
	2099,
	2100,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2101,
	2097,
	0,
	6,
	1,
	'TestCase::pressStartStop line: 6');
INSERT INTO ACT_E
	VALUES (2101,
	2102,
	2098);
INSERT INTO V_VAL
	VALUES (2103,
	0,
	0,
	1,
	5,
	8,
	0,
	0,
	0,
	0,
	70,
	2097);
INSERT INTO V_IRF
	VALUES (2103,
	2104);
INSERT INTO V_VAL
	VALUES (2105,
	0,
	0,
	1,
	10,
	19,
	0,
	0,
	0,
	0,
	13,
	2097);
INSERT INTO V_AVL
	VALUES (2105,
	2103,
	2083,
	2089);
INSERT INTO V_VAL
	VALUES (2100,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	2097);
INSERT INTO V_BIN
	VALUES (2100,
	2106,
	2105,
	'>');
INSERT INTO V_VAL
	VALUES (2106,
	0,
	0,
	1,
	23,
	23,
	0,
	0,
	0,
	0,
	13,
	2097);
INSERT INTO V_LIN
	VALUES (2106,
	'0');
INSERT INTO V_VAR
	VALUES (2104,
	2097,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (2104,
	0,
	2083);
INSERT INTO ACT_BLK
	VALUES (2099,
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
	2096,
	0);
INSERT INTO ACT_SMT
	VALUES (2107,
	2099,
	2108,
	2,
	3,
	'TestCase::pressStartStop line: 2');
INSERT INTO ACT_AI
	VALUES (2107,
	2109,
	2110,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2108,
	2099,
	2111,
	3,
	3,
	'TestCase::pressStartStop line: 3');
INSERT INTO E_ESS
	VALUES (2108,
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
	VALUES (2108,
	1,
	2112);
INSERT INTO E_CSME
	VALUES (2108,
	2092);
INSERT INTO E_CEI
	VALUES (2108,
	2104);
INSERT INTO ACT_SMT
	VALUES (2111,
	2099,
	2113,
	4,
	3,
	'TestCase::pressStartStop line: 4');
INSERT INTO ACT_AI
	VALUES (2111,
	2114,
	2115,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2113,
	2099,
	0,
	5,
	3,
	'TestCase::pressStartStop line: 5');
INSERT INTO ACT_IOP
	VALUES (2113,
	5,
	18,
	5,
	8,
	0,
	1867,
	0);
INSERT INTO V_VAL
	VALUES (2116,
	1,
	0,
	2,
	3,
	6,
	0,
	0,
	0,
	0,
	70,
	2099);
INSERT INTO V_IRF
	VALUES (2116,
	2104);
INSERT INTO V_VAL
	VALUES (2110,
	1,
	0,
	2,
	8,
	17,
	0,
	0,
	0,
	0,
	13,
	2099);
INSERT INTO V_AVL
	VALUES (2110,
	2116,
	2083,
	2089);
INSERT INTO V_VAL
	VALUES (2117,
	0,
	0,
	2,
	21,
	24,
	0,
	0,
	0,
	0,
	70,
	2099);
INSERT INTO V_IRF
	VALUES (2117,
	2104);
INSERT INTO V_VAL
	VALUES (2118,
	0,
	0,
	2,
	26,
	35,
	0,
	0,
	0,
	0,
	13,
	2099);
INSERT INTO V_AVL
	VALUES (2118,
	2117,
	2083,
	2089);
INSERT INTO V_VAL
	VALUES (2109,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	13,
	2099);
INSERT INTO V_BIN
	VALUES (2109,
	2119,
	2118,
	'-');
INSERT INTO V_VAL
	VALUES (2119,
	0,
	0,
	2,
	39,
	39,
	0,
	0,
	0,
	0,
	13,
	2099);
INSERT INTO V_LIN
	VALUES (2119,
	'1');
INSERT INTO V_VAL
	VALUES (2115,
	1,
	1,
	4,
	3,
	8,
	0,
	0,
	0,
	0,
	313,
	2099);
INSERT INTO V_TVL
	VALUES (2115,
	2120);
INSERT INTO V_VAL
	VALUES (2114,
	0,
	0,
	4,
	17,
	-1,
	4,
	29,
	4,
	46,
	313,
	2099);
INSERT INTO V_BRV
	VALUES (2114,
	1949,
	1,
	4,
	12);
INSERT INTO V_VAL
	VALUES (2121,
	0,
	0,
	4,
	41,
	43,
	0,
	0,
	0,
	0,
	316,
	2099);
INSERT INTO V_TVL
	VALUES (2121,
	2112);
INSERT INTO V_PAR
	VALUES (2121,
	0,
	2114,
	'event_inst',
	2122,
	4,
	29);
INSERT INTO V_VAL
	VALUES (2122,
	0,
	0,
	4,
	60,
	66,
	0,
	0,
	0,
	0,
	13,
	2099);
INSERT INTO V_LIN
	VALUES (2122,
	'4000000');
INSERT INTO V_PAR
	VALUES (2122,
	0,
	2114,
	'microseconds',
	0,
	4,
	46);
INSERT INTO V_VAR
	VALUES (2112,
	2099,
	'evt',
	1,
	316);
INSERT INTO V_TRN
	VALUES (2112,
	0,
	'');
INSERT INTO V_VAR
	VALUES (2120,
	2099,
	'handle',
	1,
	313);
INSERT INTO V_TRN
	VALUES (2120,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (2102,
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
	2096,
	0);
INSERT INTO ACT_SMT
	VALUES (2123,
	2102,
	2124,
	7,
	3,
	'TestCase::pressStartStop line: 7');
INSERT INTO E_ESS
	VALUES (2123,
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
	VALUES (2123);
INSERT INTO E_GSME
	VALUES (2123,
	2093);
INSERT INTO E_GEN
	VALUES (2123,
	2104);
INSERT INTO ACT_SMT
	VALUES (2124,
	2102,
	0,
	8,
	3,
	'TestCase::pressStartStop line: 8');
INSERT INTO ACT_IOP
	VALUES (2124,
	8,
	18,
	8,
	8,
	0,
	1871,
	0);
INSERT INTO SM_STATE
	VALUES (2125,
	2090,
	0,
	'testCaseFinished',
	3,
	1);
INSERT INTO SM_CH
	VALUES (2125,
	2092,
	2090,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2125,
	2092,
	2090,
	0);
INSERT INTO SM_CH
	VALUES (2125,
	1821,
	2090,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2125,
	1821,
	2090,
	0);
INSERT INTO SM_CH
	VALUES (2125,
	2093,
	2090,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2125,
	2093,
	2090,
	0);
INSERT INTO SM_MOAH
	VALUES (2126,
	2090,
	2125);
INSERT INTO SM_AH
	VALUES (2126,
	2090);
INSERT INTO SM_ACT
	VALUES (2126,
	2090,
	1,
	'LOG::LogInfo(message: "End of test case"); ',
	'');
INSERT INTO ACT_SAB
	VALUES (2127,
	2090,
	2126);
INSERT INTO ACT_ACT
	VALUES (2127,
	'state',
	0,
	2128,
	0,
	0,
	'TestCase::testCaseFinished',
	0);
INSERT INTO ACT_BLK
	VALUES (2128,
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
	2127,
	0);
INSERT INTO ACT_SMT
	VALUES (2129,
	2128,
	0,
	1,
	1,
	'TestCase::testCaseFinished line: 1');
INSERT INTO ACT_BRG
	VALUES (2129,
	2020,
	1,
	6,
	1,
	1);
INSERT INTO V_VAL
	VALUES (2130,
	0,
	0,
	1,
	23,
	39,
	0,
	0,
	0,
	0,
	96,
	2128);
INSERT INTO V_LST
	VALUES (2130,
	'End of test case');
INSERT INTO V_PAR
	VALUES (2130,
	2129,
	0,
	'message',
	0,
	1,
	14);
INSERT INTO SM_NSTXN
	VALUES (2131,
	2090,
	2094,
	2092,
	0);
INSERT INTO SM_TAH
	VALUES (2132,
	2090,
	2131);
INSERT INTO SM_AH
	VALUES (2132,
	2090);
INSERT INTO SM_ACT
	VALUES (2132,
	2090,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2133,
	2090,
	2132);
INSERT INTO ACT_ACT
	VALUES (2133,
	'transition',
	0,
	2134,
	0,
	0,
	'TestCase1: delay',
	0);
INSERT INTO ACT_BLK
	VALUES (2134,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
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
INSERT INTO SM_TXN
	VALUES (2131,
	2090,
	2094,
	0);
INSERT INTO SM_CRTXN
	VALUES (2135,
	2090,
	1821,
	0);
INSERT INTO SM_TAH
	VALUES (2136,
	2090,
	2135);
INSERT INTO SM_AH
	VALUES (2136,
	2090);
INSERT INTO SM_ACT
	VALUES (2136,
	2090,
	1,
	'LOG::LogInfo(message: "Start of test case"); 
self.iterations = rcvd_evt.iterations * 2;',
	'');
INSERT INTO ACT_TAB
	VALUES (2137,
	2090,
	2136);
INSERT INTO ACT_ACT
	VALUES (2137,
	'transition',
	0,
	2138,
	0,
	0,
	'TestCase2: start(iterations)',
	0);
INSERT INTO ACT_BLK
	VALUES (2138,
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
	2137,
	0);
INSERT INTO ACT_SMT
	VALUES (2139,
	2138,
	2140,
	1,
	1,
	'TestCase2: start(iterations) line: 1');
INSERT INTO ACT_BRG
	VALUES (2139,
	2020,
	1,
	6,
	1,
	1);
INSERT INTO ACT_SMT
	VALUES (2140,
	2138,
	0,
	2,
	1,
	'TestCase2: start(iterations) line: 2');
INSERT INTO ACT_AI
	VALUES (2140,
	2141,
	2142,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2143,
	0,
	0,
	1,
	23,
	41,
	0,
	0,
	0,
	0,
	96,
	2138);
INSERT INTO V_LST
	VALUES (2143,
	'Start of test case');
INSERT INTO V_PAR
	VALUES (2143,
	2139,
	0,
	'message',
	0,
	1,
	14);
INSERT INTO V_VAL
	VALUES (2144,
	1,
	0,
	2,
	1,
	4,
	0,
	0,
	0,
	0,
	70,
	2138);
INSERT INTO V_IRF
	VALUES (2144,
	2145);
INSERT INTO V_VAL
	VALUES (2142,
	1,
	0,
	2,
	6,
	15,
	0,
	0,
	0,
	0,
	13,
	2138);
INSERT INTO V_AVL
	VALUES (2142,
	2144,
	2083,
	2089);
INSERT INTO V_VAL
	VALUES (2146,
	0,
	0,
	2,
	28,
	37,
	0,
	0,
	0,
	0,
	13,
	2138);
INSERT INTO V_EDV
	VALUES (2146);
INSERT INTO V_EPR
	VALUES (2146,
	2090,
	2091,
	0);
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
	13,
	2138);
INSERT INTO V_BIN
	VALUES (2141,
	2147,
	2146,
	'*');
INSERT INTO V_VAL
	VALUES (2147,
	0,
	0,
	2,
	41,
	41,
	0,
	0,
	0,
	0,
	13,
	2138);
INSERT INTO V_LIN
	VALUES (2147,
	'2');
INSERT INTO V_VAR
	VALUES (2145,
	2138,
	'self',
	1,
	70);
INSERT INTO V_INT
	VALUES (2145,
	0,
	2083);
INSERT INTO SM_TXN
	VALUES (2135,
	2090,
	2094,
	0);
INSERT INTO SM_NSTXN
	VALUES (2148,
	2090,
	2094,
	2093,
	0);
INSERT INTO SM_TAH
	VALUES (2149,
	2090,
	2148);
INSERT INTO SM_AH
	VALUES (2149,
	2090);
INSERT INTO SM_ACT
	VALUES (2149,
	2090,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2150,
	2090,
	2149);
INSERT INTO ACT_ACT
	VALUES (2150,
	'transition',
	0,
	2151,
	0,
	0,
	'TestCase3: finish',
	0);
INSERT INTO ACT_BLK
	VALUES (2151,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
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
INSERT INTO SM_TXN
	VALUES (2148,
	2090,
	2125,
	0);
INSERT INTO PE_PE
	VALUES (2152,
	1,
	1908,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (2152,
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
	VALUES (2153,
	2152,
	'connect',
	'',
	240,
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
	VALUES (2154,
	2153);
INSERT INTO ACT_ACT
	VALUES (2154,
	'class operation',
	0,
	2155,
	0,
	0,
	'UI::connect',
	0);
INSERT INTO ACT_BLK
	VALUES (2155,
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
	2154,
	0);
INSERT INTO ACT_SMT
	VALUES (2156,
	2155,
	2157,
	1,
	1,
	'UI::connect line: 1');
INSERT INTO ACT_BRG
	VALUES (2156,
	2005,
	1,
	12,
	1,
	1);
INSERT INTO ACT_SMT
	VALUES (2157,
	2155,
	2158,
	3,
	1,
	'UI::connect line: 3');
INSERT INTO E_ESS
	VALUES (2157,
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
	VALUES (2157,
	1,
	2159);
INSERT INTO E_CSME
	VALUES (2157,
	2160);
INSERT INTO E_CEA
	VALUES (2157);
INSERT INTO ACT_SMT
	VALUES (2158,
	2155,
	2161,
	4,
	1,
	'UI::connect line: 4');
INSERT INTO ACT_BRG
	VALUES (2158,
	1978,
	4,
	12,
	4,
	1);
INSERT INTO ACT_SMT
	VALUES (2161,
	2155,
	2162,
	6,
	1,
	'UI::connect line: 6');
INSERT INTO E_ESS
	VALUES (2161,
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
	VALUES (2161,
	0,
	2159);
INSERT INTO E_CSME
	VALUES (2161,
	2163);
INSERT INTO E_CEA
	VALUES (2161);
INSERT INTO ACT_SMT
	VALUES (2162,
	2155,
	2164,
	7,
	1,
	'UI::connect line: 7');
INSERT INTO ACT_BRG
	VALUES (2162,
	1994,
	7,
	12,
	7,
	1);
INSERT INTO ACT_SMT
	VALUES (2164,
	2155,
	2165,
	9,
	1,
	'UI::connect line: 9');
INSERT INTO E_ESS
	VALUES (2164,
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
	VALUES (2164,
	0,
	2159);
INSERT INTO E_CSME
	VALUES (2164,
	2166);
INSERT INTO E_CEA
	VALUES (2164);
INSERT INTO ACT_SMT
	VALUES (2165,
	2155,
	2167,
	10,
	1,
	'UI::connect line: 10');
INSERT INTO ACT_BRG
	VALUES (2165,
	1990,
	10,
	12,
	10,
	1);
INSERT INTO ACT_SMT
	VALUES (2167,
	2155,
	2168,
	12,
	1,
	'UI::connect line: 12');
INSERT INTO E_ESS
	VALUES (2167,
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
	VALUES (2167,
	0,
	2159);
INSERT INTO E_CSME
	VALUES (2167,
	2169);
INSERT INTO E_CEA
	VALUES (2167);
INSERT INTO ACT_SMT
	VALUES (2168,
	2155,
	2170,
	13,
	1,
	'UI::connect line: 13');
INSERT INTO ACT_BRG
	VALUES (2168,
	1986,
	13,
	12,
	13,
	1);
INSERT INTO ACT_SMT
	VALUES (2170,
	2155,
	2171,
	15,
	1,
	'UI::connect line: 15');
INSERT INTO E_ESS
	VALUES (2170,
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
	VALUES (2170,
	0,
	2159);
INSERT INTO E_CSME
	VALUES (2170,
	2172);
INSERT INTO E_CEA
	VALUES (2170);
INSERT INTO ACT_SMT
	VALUES (2171,
	2155,
	0,
	16,
	1,
	'UI::connect line: 16');
INSERT INTO ACT_BRG
	VALUES (2171,
	1982,
	16,
	12,
	16,
	1);
INSERT INTO V_VAL
	VALUES (2173,
	0,
	0,
	4,
	43,
	45,
	0,
	0,
	0,
	0,
	316,
	2155);
INSERT INTO V_TVL
	VALUES (2173,
	2159);
INSERT INTO V_PAR
	VALUES (2173,
	2158,
	0,
	'evt',
	0,
	4,
	38);
INSERT INTO V_VAL
	VALUES (2174,
	0,
	0,
	7,
	43,
	45,
	0,
	0,
	0,
	0,
	316,
	2155);
INSERT INTO V_TVL
	VALUES (2174,
	2159);
INSERT INTO V_PAR
	VALUES (2174,
	2162,
	0,
	'evt',
	0,
	7,
	38);
INSERT INTO V_VAL
	VALUES (2175,
	0,
	0,
	10,
	42,
	44,
	0,
	0,
	0,
	0,
	316,
	2155);
INSERT INTO V_TVL
	VALUES (2175,
	2159);
INSERT INTO V_PAR
	VALUES (2175,
	2165,
	0,
	'evt',
	0,
	10,
	37);
INSERT INTO V_VAL
	VALUES (2176,
	0,
	0,
	13,
	39,
	41,
	0,
	0,
	0,
	0,
	316,
	2155);
INSERT INTO V_TVL
	VALUES (2176,
	2159);
INSERT INTO V_PAR
	VALUES (2176,
	2168,
	0,
	'evt',
	0,
	13,
	34);
INSERT INTO V_VAL
	VALUES (2177,
	0,
	0,
	16,
	38,
	40,
	0,
	0,
	0,
	0,
	316,
	2155);
INSERT INTO V_TVL
	VALUES (2177,
	2159);
INSERT INTO V_PAR
	VALUES (2177,
	2171,
	0,
	'evt',
	0,
	16,
	33);
INSERT INTO V_VAR
	VALUES (2159,
	2155,
	'evt',
	1,
	316);
INSERT INTO V_TRN
	VALUES (2159,
	0,
	'');
INSERT INTO O_ID
	VALUES (0,
	2152);
INSERT INTO O_ID
	VALUES (1,
	2152);
INSERT INTO O_ID
	VALUES (2,
	2152);
INSERT INTO SM_ASM
	VALUES (2178,
	2152);
INSERT INTO SM_SM
	VALUES (2178,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (2178);
INSERT INTO SM_LEVT
	VALUES (2160,
	2178,
	0);
INSERT INTO SM_SEVT
	VALUES (2160,
	2178,
	0);
INSERT INTO SM_EVT
	VALUES (2160,
	2178,
	0,
	3,
	'setTargetPressed',
	0,
	'',
	'UI_A3',
	'');
INSERT INTO SM_LEVT
	VALUES (2163,
	2178,
	0);
INSERT INTO SM_SEVT
	VALUES (2163,
	2178,
	0);
INSERT INTO SM_EVT
	VALUES (2163,
	2178,
	0,
	4,
	'startStopPressed',
	0,
	'',
	'UI_A4',
	'');
INSERT INTO SM_LEVT
	VALUES (2166,
	2178,
	0);
INSERT INTO SM_SEVT
	VALUES (2166,
	2178,
	0);
INSERT INTO SM_EVT
	VALUES (2166,
	2178,
	0,
	5,
	'lapResetPressed',
	0,
	'',
	'UI_A5',
	'');
INSERT INTO SM_LEVT
	VALUES (2169,
	2178,
	0);
INSERT INTO SM_SEVT
	VALUES (2169,
	2178,
	0);
INSERT INTO SM_EVT
	VALUES (2169,
	2178,
	0,
	6,
	'lightPressed',
	0,
	'',
	'UI_A6',
	'');
INSERT INTO SM_LEVT
	VALUES (2172,
	2178,
	0);
INSERT INTO SM_SEVT
	VALUES (2172,
	2178,
	0);
INSERT INTO SM_EVT
	VALUES (2172,
	2178,
	0,
	7,
	'modePressed',
	0,
	'',
	'UI_A7',
	'');
INSERT INTO SM_STATE
	VALUES (2179,
	2178,
	0,
	'running',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (2179,
	2160,
	2178,
	0);
INSERT INTO SM_SEME
	VALUES (2179,
	2163,
	2178,
	0);
INSERT INTO SM_SEME
	VALUES (2179,
	2166,
	2178,
	0);
INSERT INTO SM_SEME
	VALUES (2179,
	2169,
	2178,
	0);
INSERT INTO SM_SEME
	VALUES (2179,
	2172,
	2178,
	0);
INSERT INTO SM_MOAH
	VALUES (2180,
	2178,
	2179);
INSERT INTO SM_AH
	VALUES (2180,
	2178);
INSERT INTO SM_ACT
	VALUES (2180,
	2178,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (2181,
	2178,
	2180);
INSERT INTO ACT_ACT
	VALUES (2181,
	'class state',
	0,
	2182,
	0,
	0,
	'UI::running',
	0);
INSERT INTO ACT_BLK
	VALUES (2182,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2181,
	0);
INSERT INTO SM_NSTXN
	VALUES (2183,
	2178,
	2179,
	2160,
	0);
INSERT INTO SM_TAH
	VALUES (2184,
	2178,
	2183);
INSERT INTO SM_AH
	VALUES (2184,
	2178);
INSERT INTO SM_ACT
	VALUES (2184,
	2178,
	1,
	'create event instance evt of UI_A3:setTargetPressed() to UI class;
GuiBridge::feedSetTargetPressedEvent(evt: evt);
::sendTargetPressed();',
	'');
INSERT INTO ACT_TAB
	VALUES (2185,
	2178,
	2184);
INSERT INTO ACT_ACT
	VALUES (2185,
	'class transition',
	0,
	2186,
	0,
	0,
	'UI_A3: setTargetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2186,
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
	2185,
	0);
INSERT INTO ACT_SMT
	VALUES (2187,
	2186,
	2188,
	1,
	1,
	'UI_A3: setTargetPressed line: 1');
INSERT INTO E_ESS
	VALUES (2187,
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
	VALUES (2187,
	1,
	2189);
INSERT INTO E_CSME
	VALUES (2187,
	2160);
INSERT INTO E_CEA
	VALUES (2187);
INSERT INTO ACT_SMT
	VALUES (2188,
	2186,
	2190,
	2,
	1,
	'UI_A3: setTargetPressed line: 2');
INSERT INTO ACT_BRG
	VALUES (2188,
	1978,
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (2190,
	2186,
	0,
	3,
	1,
	'UI_A3: setTargetPressed line: 3');
INSERT INTO ACT_FNC
	VALUES (2190,
	1904,
	3,
	3);
INSERT INTO V_VAL
	VALUES (2191,
	0,
	0,
	2,
	43,
	45,
	0,
	0,
	0,
	0,
	316,
	2186);
INSERT INTO V_TVL
	VALUES (2191,
	2189);
INSERT INTO V_PAR
	VALUES (2191,
	2188,
	0,
	'evt',
	0,
	2,
	38);
INSERT INTO V_VAR
	VALUES (2189,
	2186,
	'evt',
	1,
	316);
INSERT INTO V_TRN
	VALUES (2189,
	0,
	'');
INSERT INTO SM_TXN
	VALUES (2183,
	2178,
	2179,
	0);
INSERT INTO SM_NSTXN
	VALUES (2192,
	2178,
	2179,
	2163,
	0);
INSERT INTO SM_TAH
	VALUES (2193,
	2178,
	2192);
INSERT INTO SM_AH
	VALUES (2193,
	2178);
INSERT INTO SM_ACT
	VALUES (2193,
	2178,
	1,
	'create event instance evt of UI_A4:startStopPressed() to UI class;
GuiBridge::feedStartStopPressedEvent(evt: evt);
::sendStartStopPressed();',
	'');
INSERT INTO ACT_TAB
	VALUES (2194,
	2178,
	2193);
INSERT INTO ACT_ACT
	VALUES (2194,
	'class transition',
	0,
	2195,
	0,
	0,
	'UI_A4: startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2195,
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
	2194,
	0);
INSERT INTO ACT_SMT
	VALUES (2196,
	2195,
	2197,
	1,
	1,
	'UI_A4: startStopPressed line: 1');
INSERT INTO E_ESS
	VALUES (2196,
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
	VALUES (2196,
	1,
	2198);
INSERT INTO E_CSME
	VALUES (2196,
	2163);
INSERT INTO E_CEA
	VALUES (2196);
INSERT INTO ACT_SMT
	VALUES (2197,
	2195,
	2199,
	2,
	1,
	'UI_A4: startStopPressed line: 2');
INSERT INTO ACT_BRG
	VALUES (2197,
	1994,
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (2199,
	2195,
	0,
	3,
	1,
	'UI_A4: startStopPressed line: 3');
INSERT INTO ACT_FNC
	VALUES (2199,
	1900,
	3,
	3);
INSERT INTO V_VAL
	VALUES (2200,
	0,
	0,
	2,
	43,
	45,
	0,
	0,
	0,
	0,
	316,
	2195);
INSERT INTO V_TVL
	VALUES (2200,
	2198);
INSERT INTO V_PAR
	VALUES (2200,
	2197,
	0,
	'evt',
	0,
	2,
	38);
INSERT INTO V_VAR
	VALUES (2198,
	2195,
	'evt',
	1,
	316);
INSERT INTO V_TRN
	VALUES (2198,
	0,
	'');
INSERT INTO SM_TXN
	VALUES (2192,
	2178,
	2179,
	0);
INSERT INTO SM_NSTXN
	VALUES (2201,
	2178,
	2179,
	2166,
	0);
INSERT INTO SM_TAH
	VALUES (2202,
	2178,
	2201);
INSERT INTO SM_AH
	VALUES (2202,
	2178);
INSERT INTO SM_ACT
	VALUES (2202,
	2178,
	1,
	'create event instance evt of UI_A5:lapResetPressed() to UI class;
GuiBridge::feedLapResetPressedEvent(evt: evt);
::sendLapResetPressed();',
	'');
INSERT INTO ACT_TAB
	VALUES (2203,
	2178,
	2202);
INSERT INTO ACT_ACT
	VALUES (2203,
	'class transition',
	0,
	2204,
	0,
	0,
	'UI_A5: lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2204,
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
	2203,
	0);
INSERT INTO ACT_SMT
	VALUES (2205,
	2204,
	2206,
	1,
	1,
	'UI_A5: lapResetPressed line: 1');
INSERT INTO E_ESS
	VALUES (2205,
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
	VALUES (2205,
	1,
	2207);
INSERT INTO E_CSME
	VALUES (2205,
	2166);
INSERT INTO E_CEA
	VALUES (2205);
INSERT INTO ACT_SMT
	VALUES (2206,
	2204,
	2208,
	2,
	1,
	'UI_A5: lapResetPressed line: 2');
INSERT INTO ACT_BRG
	VALUES (2206,
	1990,
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (2208,
	2204,
	0,
	3,
	1,
	'UI_A5: lapResetPressed line: 3');
INSERT INTO ACT_FNC
	VALUES (2208,
	1888,
	3,
	3);
INSERT INTO V_VAL
	VALUES (2209,
	0,
	0,
	2,
	42,
	44,
	0,
	0,
	0,
	0,
	316,
	2204);
INSERT INTO V_TVL
	VALUES (2209,
	2207);
INSERT INTO V_PAR
	VALUES (2209,
	2206,
	0,
	'evt',
	0,
	2,
	37);
INSERT INTO V_VAR
	VALUES (2207,
	2204,
	'evt',
	1,
	316);
INSERT INTO V_TRN
	VALUES (2207,
	0,
	'');
INSERT INTO SM_TXN
	VALUES (2201,
	2178,
	2179,
	0);
INSERT INTO SM_NSTXN
	VALUES (2210,
	2178,
	2179,
	2169,
	0);
INSERT INTO SM_TAH
	VALUES (2211,
	2178,
	2210);
INSERT INTO SM_AH
	VALUES (2211,
	2178);
INSERT INTO SM_ACT
	VALUES (2211,
	2178,
	1,
	'create event instance evt of UI_A6:lightPressed() to UI class;
GuiBridge::feedLightPressedEvent(evt: evt);
::sendLightPressed();',
	'');
INSERT INTO ACT_TAB
	VALUES (2212,
	2178,
	2211);
INSERT INTO ACT_ACT
	VALUES (2212,
	'class transition',
	0,
	2213,
	0,
	0,
	'UI_A6: lightPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2213,
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
	2212,
	0);
INSERT INTO ACT_SMT
	VALUES (2214,
	2213,
	2215,
	1,
	1,
	'UI_A6: lightPressed line: 1');
INSERT INTO E_ESS
	VALUES (2214,
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
	VALUES (2214,
	1,
	2216);
INSERT INTO E_CSME
	VALUES (2214,
	2169);
INSERT INTO E_CEA
	VALUES (2214);
INSERT INTO ACT_SMT
	VALUES (2215,
	2213,
	2217,
	2,
	1,
	'UI_A6: lightPressed line: 2');
INSERT INTO ACT_BRG
	VALUES (2215,
	1986,
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (2217,
	2213,
	0,
	3,
	1,
	'UI_A6: lightPressed line: 3');
INSERT INTO ACT_FNC
	VALUES (2217,
	1892,
	3,
	3);
INSERT INTO V_VAL
	VALUES (2218,
	0,
	0,
	2,
	39,
	41,
	0,
	0,
	0,
	0,
	316,
	2213);
INSERT INTO V_TVL
	VALUES (2218,
	2216);
INSERT INTO V_PAR
	VALUES (2218,
	2215,
	0,
	'evt',
	0,
	2,
	34);
INSERT INTO V_VAR
	VALUES (2216,
	2213,
	'evt',
	1,
	316);
INSERT INTO V_TRN
	VALUES (2216,
	0,
	'');
INSERT INTO SM_TXN
	VALUES (2210,
	2178,
	2179,
	0);
INSERT INTO SM_NSTXN
	VALUES (2219,
	2178,
	2179,
	2172,
	0);
INSERT INTO SM_TAH
	VALUES (2220,
	2178,
	2219);
INSERT INTO SM_AH
	VALUES (2220,
	2178);
INSERT INTO SM_ACT
	VALUES (2220,
	2178,
	1,
	'create event instance evt of UI_A7:modePressed() to UI class;
GuiBridge::feedModePressedEvent(evt: evt);
::sendModePressed();',
	'');
INSERT INTO ACT_TAB
	VALUES (2221,
	2178,
	2220);
INSERT INTO ACT_ACT
	VALUES (2221,
	'class transition',
	0,
	2222,
	0,
	0,
	'UI_A7: modePressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2222,
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
	2221,
	0);
INSERT INTO ACT_SMT
	VALUES (2223,
	2222,
	2224,
	1,
	1,
	'UI_A7: modePressed line: 1');
INSERT INTO E_ESS
	VALUES (2223,
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
	VALUES (2223,
	1,
	2225);
INSERT INTO E_CSME
	VALUES (2223,
	2172);
INSERT INTO E_CEA
	VALUES (2223);
INSERT INTO ACT_SMT
	VALUES (2224,
	2222,
	2226,
	2,
	1,
	'UI_A7: modePressed line: 2');
INSERT INTO ACT_BRG
	VALUES (2224,
	1982,
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (2226,
	2222,
	0,
	3,
	1,
	'UI_A7: modePressed line: 3');
INSERT INTO ACT_FNC
	VALUES (2226,
	1896,
	3,
	3);
INSERT INTO V_VAL
	VALUES (2227,
	0,
	0,
	2,
	38,
	40,
	0,
	0,
	0,
	0,
	316,
	2222);
INSERT INTO V_TVL
	VALUES (2227,
	2225);
INSERT INTO V_PAR
	VALUES (2227,
	2224,
	0,
	'evt',
	0,
	2,
	33);
INSERT INTO V_VAR
	VALUES (2225,
	2222,
	'evt',
	1,
	316);
INSERT INTO V_TRN
	VALUES (2225,
	0,
	'');
INSERT INTO SM_TXN
	VALUES (2219,
	2178,
	2179,
	0);
INSERT INTO PE_PE
	VALUES (2228,
	1,
	1702,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (2228,
	0,
	1701,
	'shared',
	'',
	0);
INSERT INTO PE_PE
	VALUES (490,
	1,
	2228,
	0,
	3);
INSERT INTO S_DT
	VALUES (490,
	0,
	'Unit',
	'',
	'');
INSERT INTO S_EDT
	VALUES (490);
INSERT INTO S_ENUM
	VALUES (491,
	'km',
	'',
	490,
	0);
INSERT INTO S_ENUM
	VALUES (495,
	'meters',
	'',
	490,
	491);
INSERT INTO S_ENUM
	VALUES (536,
	'minPerKm',
	'',
	490,
	495);
INSERT INTO S_ENUM
	VALUES (515,
	'kmPerHour',
	'',
	490,
	536);
INSERT INTO S_ENUM
	VALUES (1763,
	'miles',
	'',
	490,
	515);
INSERT INTO S_ENUM
	VALUES (1766,
	'yards',
	'',
	490,
	1763);
INSERT INTO S_ENUM
	VALUES (1769,
	'feet',
	'',
	490,
	1766);
INSERT INTO S_ENUM
	VALUES (1772,
	'minPerMile',
	'',
	490,
	1769);
INSERT INTO S_ENUM
	VALUES (1775,
	'mph',
	'',
	490,
	1772);
INSERT INTO S_ENUM
	VALUES (557,
	'bpm',
	'',
	490,
	1775);
INSERT INTO S_ENUM
	VALUES (576,
	'laps',
	'',
	490,
	557);
INSERT INTO PE_PE
	VALUES (406,
	1,
	2228,
	0,
	3);
INSERT INTO S_DT
	VALUES (406,
	0,
	'Indicator',
	'',
	'');
INSERT INTO S_EDT
	VALUES (406);
INSERT INTO S_ENUM
	VALUES (424,
	'Blank',
	'',
	406,
	0);
INSERT INTO S_ENUM
	VALUES (452,
	'Down',
	'',
	406,
	424);
INSERT INTO S_ENUM
	VALUES (456,
	'Flat',
	'',
	406,
	452);
INSERT INTO S_ENUM
	VALUES (448,
	'Up',
	'',
	406,
	456);
INSERT INTO PE_PE
	VALUES (1706,
	1,
	2228,
	0,
	6);
INSERT INTO C_I
	VALUES (1706,
	0,
	'UI',
	'');
INSERT INTO C_EP
	VALUES (1708,
	1706,
	-1,
	'setTime',
	'');
INSERT INTO C_IO
	VALUES (1708,
	240,
	'setTime',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (1714,
	1708,
	13,
	'time',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (1716,
	1706,
	-1,
	'setData',
	'');
INSERT INTO C_IO
	VALUES (1716,
	240,
	'setData',
	'',
	0,
	'',
	1708);
INSERT INTO C_PP
	VALUES (1783,
	1716,
	170,
	'value',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (1753,
	1716,
	490,
	'unit',
	'',
	0,
	'',
	1783);
INSERT INTO C_EP
	VALUES (1816,
	1706,
	-1,
	'startTest',
	'');
INSERT INTO C_IO
	VALUES (1816,
	240,
	'startTest',
	'',
	0,
	'',
	1716);
INSERT INTO C_EP
	VALUES (1823,
	1706,
	-1,
	'setIndicator',
	'');
INSERT INTO C_IO
	VALUES (1823,
	240,
	'setIndicator',
	'',
	0,
	'',
	1816);
INSERT INTO C_PP
	VALUES (1839,
	1823,
	406,
	'indicator',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (1857,
	1706,
	-1,
	'newGoalSpec',
	'');
INSERT INTO C_IO
	VALUES (1857,
	240,
	'newGoalSpec',
	'',
	0,
	'',
	1823);
INSERT INTO C_PP
	VALUES (2229,
	1857,
	13,
	'sequenceNumber',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (2230,
	1857,
	170,
	'minimum',
	'',
	0,
	'',
	2229);
INSERT INTO C_PP
	VALUES (2231,
	1857,
	170,
	'maximum',
	'',
	0,
	'',
	2230);
INSERT INTO C_PP
	VALUES (2232,
	1857,
	170,
	'span',
	'',
	0,
	'',
	2231);
INSERT INTO C_PP
	VALUES (2233,
	1857,
	180,
	'criteriaType',
	'',
	0,
	'',
	2232);
INSERT INTO C_PP
	VALUES (2234,
	1857,
	184,
	'spanType',
	'',
	0,
	'',
	2233);
INSERT INTO PE_PE
	VALUES (1862,
	1,
	2228,
	0,
	6);
INSERT INTO C_I
	VALUES (1862,
	0,
	'UITracking',
	'');
INSERT INTO C_EP
	VALUES (1864,
	1862,
	-1,
	'setTargetPressed',
	'');
INSERT INTO C_IO
	VALUES (1864,
	240,
	'setTargetPressed',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (1868,
	1862,
	-1,
	'startStopPressed',
	'');
INSERT INTO C_IO
	VALUES (1868,
	240,
	'startStopPressed',
	'',
	0,
	'',
	1864);
INSERT INTO C_EP
	VALUES (1872,
	1862,
	-1,
	'lapResetPressed',
	'');
INSERT INTO C_IO
	VALUES (1872,
	240,
	'lapResetPressed',
	'',
	0,
	'',
	1868);
INSERT INTO C_EP
	VALUES (1876,
	1862,
	-1,
	'modePressed',
	'');
INSERT INTO C_IO
	VALUES (1876,
	240,
	'modePressed',
	'',
	0,
	'',
	1872);
INSERT INTO C_EP
	VALUES (1880,
	1862,
	-1,
	'newGoalSpec',
	'');
INSERT INTO C_IO
	VALUES (1880,
	240,
	'newGoalSpec',
	'',
	0,
	'',
	1876);
INSERT INTO C_PP
	VALUES (2235,
	1880,
	13,
	'sequenceNumber',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (2236,
	1880,
	170,
	'minimum',
	'',
	0,
	'',
	2235);
INSERT INTO C_PP
	VALUES (2237,
	1880,
	170,
	'maximum',
	'',
	0,
	'',
	2236);
INSERT INTO C_PP
	VALUES (2238,
	1880,
	170,
	'span',
	'',
	0,
	'',
	2237);
INSERT INTO C_PP
	VALUES (2239,
	1880,
	180,
	'criteriaType',
	'',
	0,
	'',
	2238);
INSERT INTO C_PP
	VALUES (2240,
	1880,
	184,
	'spanType',
	'',
	0,
	'',
	2239);
INSERT INTO C_EP
	VALUES (1884,
	1862,
	-1,
	'lightPressed',
	'');
INSERT INTO C_IO
	VALUES (1884,
	240,
	'lightPressed',
	'',
	0,
	'',
	1880);
-- root-types-contained: SystemModel_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES (2241,
	'HeartRateMonitor',
	1);
INSERT INTO EP_PKG
	VALUES (2242,
	2241,
	2241,
	'HeartRateMonitor',
	'',
	0);
INSERT INTO PE_PE
	VALUES (2243,
	1,
	2242,
	0,
	2);
INSERT INTO C_C
	VALUES (2243,
	0,
	0,
	'HeartRateMonitor',
	'Simulates a pulse monitor hardware/firmware. This component is only behavioral and included for testing purposes.',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (2244,
	2243,
	'HeartRateMonitor',
	0,
	0);
INSERT INTO C_IR
	VALUES (2245,
	2246,
	0,
	2244);
INSERT INTO C_P
	VALUES (2245,
	'HeartRateMonitor',
	'Unnamed Interface',
	'',
	'HeartRateMonitor::HeartRateMonitor::HeartRateMonitor');
INSERT INTO SPR_PEP
	VALUES (2247,
	2248,
	2245);
INSERT INTO SPR_PO
	VALUES (2247,
	'registerListener',
	'',
	'generate HeartRateMonitor_A1:registerListener() to HeartRateMonitor class;

',
	1);
INSERT INTO ACT_POB
	VALUES (2249,
	2247);
INSERT INTO ACT_ACT
	VALUES (2249,
	'interface operation',
	0,
	2250,
	0,
	0,
	'HeartRateMonitor::HeartRateMonitor::registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2250,
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
	2249,
	0);
INSERT INTO ACT_SMT
	VALUES (2251,
	2250,
	0,
	1,
	1,
	'HeartRateMonitor::HeartRateMonitor::registerListener line: 1');
INSERT INTO E_ESS
	VALUES (2251,
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
	VALUES (2251);
INSERT INTO E_GSME
	VALUES (2251,
	2252);
INSERT INTO E_GAR
	VALUES (2251);
INSERT INTO SPR_PEP
	VALUES (2253,
	2254,
	2245);
INSERT INTO SPR_PO
	VALUES (2253,
	'unregisterListener',
	'',
	'generate HeartRateMonitor_A2:unregisterListener() to HeartRateMonitor class;

',
	1);
INSERT INTO ACT_POB
	VALUES (2255,
	2253);
INSERT INTO ACT_ACT
	VALUES (2255,
	'interface operation',
	0,
	2256,
	0,
	0,
	'HeartRateMonitor::HeartRateMonitor::unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2256,
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
	2255,
	0);
INSERT INTO ACT_SMT
	VALUES (2257,
	2256,
	0,
	1,
	1,
	'HeartRateMonitor::HeartRateMonitor::unregisterListener line: 1');
INSERT INTO E_ESS
	VALUES (2257,
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
	VALUES (2257);
INSERT INTO E_GSME
	VALUES (2257,
	2258);
INSERT INTO E_GAR
	VALUES (2257);
INSERT INTO C_PO
	VALUES (2259,
	2243,
	'Unspecified',
	0,
	0);
INSERT INTO C_IR
	VALUES (2260,
	2261,
	0,
	2259);
INSERT INTO C_R
	VALUES (2260,
	'HeartRateMonitorUnspecified',
	'',
	'Unnamed Interface',
	'HeartRateMonitor::Unspecified::HeartRateMonitorUnspecified');
INSERT INTO SPR_REP
	VALUES (2262,
	2263,
	2260);
INSERT INTO SPR_RO
	VALUES (2262,
	'heartRateChanged',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (2264,
	2262);
INSERT INTO ACT_ACT
	VALUES (2264,
	'interface operation',
	0,
	2265,
	0,
	0,
	'Unspecified::HeartRateMonitorUnspecified::heartRateChanged',
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
	0,
	2243,
	7);
INSERT INTO EP_PKG
	VALUES (2266,
	0,
	2241,
	'HeartRateMonitor',
	'',
	0);
INSERT INTO PE_PE
	VALUES (2267,
	1,
	2266,
	0,
	5);
INSERT INTO S_EE
	VALUES (2267,
	'Logging',
	'',
	'LOG',
	0,
	'',
	'Logging',
	1);
INSERT INTO S_BRG
	VALUES (2268,
	2267,
	'LogSuccess',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2269,
	2268,
	'message',
	96,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2270,
	2268);
INSERT INTO ACT_ACT
	VALUES (2270,
	'bridge',
	0,
	2271,
	0,
	0,
	'Logging::LogSuccess',
	0);
INSERT INTO ACT_BLK
	VALUES (2271,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2270,
	0);
INSERT INTO S_BRG
	VALUES (2272,
	2267,
	'LogFailure',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2273,
	2272,
	'message',
	96,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2274,
	2272);
INSERT INTO ACT_ACT
	VALUES (2274,
	'bridge',
	0,
	2275,
	0,
	0,
	'Logging::LogFailure',
	0);
INSERT INTO ACT_BLK
	VALUES (2275,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2274,
	0);
INSERT INTO S_BRG
	VALUES (2276,
	2267,
	'LogInfo',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2277,
	2276,
	'message',
	96,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2278,
	2276);
INSERT INTO ACT_ACT
	VALUES (2278,
	'bridge',
	0,
	2279,
	0,
	0,
	'Logging::LogInfo',
	0);
INSERT INTO ACT_BLK
	VALUES (2279,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2278,
	0);
INSERT INTO S_BRG
	VALUES (2280,
	2267,
	'LogDate',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2281,
	2280,
	'd',
	253,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2282,
	2280,
	'message',
	96,
	0,
	'',
	2281,
	'');
INSERT INTO ACT_BRB
	VALUES (2283,
	2280);
INSERT INTO ACT_ACT
	VALUES (2283,
	'bridge',
	0,
	2284,
	0,
	0,
	'Logging::LogDate',
	0);
INSERT INTO ACT_BLK
	VALUES (2284,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2283,
	0);
INSERT INTO S_BRG
	VALUES (2285,
	2267,
	'LogTime',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2286,
	2285,
	't',
	259,
	0,
	'',
	2287,
	'');
INSERT INTO S_BPARM
	VALUES (2287,
	2285,
	'message',
	96,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2288,
	2285);
INSERT INTO ACT_ACT
	VALUES (2288,
	'bridge',
	0,
	2289,
	0,
	0,
	'Logging::LogTime',
	0);
INSERT INTO ACT_BLK
	VALUES (2289,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2288,
	0);
INSERT INTO S_BRG
	VALUES (2290,
	2267,
	'LogReal',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2291,
	2290,
	'r',
	170,
	0,
	'',
	2292,
	'');
INSERT INTO S_BPARM
	VALUES (2292,
	2290,
	'message',
	96,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2293,
	2290);
INSERT INTO ACT_ACT
	VALUES (2293,
	'bridge',
	0,
	2294,
	0,
	0,
	'Logging::LogReal',
	0);
INSERT INTO ACT_BLK
	VALUES (2294,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2293,
	0);
INSERT INTO S_BRG
	VALUES (2295,
	2267,
	'LogInteger',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2296,
	2295,
	'message',
	13,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2297,
	2295);
INSERT INTO ACT_ACT
	VALUES (2297,
	'bridge',
	0,
	2298,
	0,
	0,
	'Logging::LogInteger',
	0);
INSERT INTO ACT_BLK
	VALUES (2298,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2297,
	0);
INSERT INTO PE_PE
	VALUES (2299,
	1,
	2266,
	0,
	5);
INSERT INTO S_EE
	VALUES (2299,
	'Time',
	'The Time external entity provides date, timestamp, and timer related operations.',
	'TIM',
	0,
	'',
	'Time',
	1);
INSERT INTO S_BRG
	VALUES (2300,
	2299,
	'current_date',
	'',
	1,
	253,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (2301,
	2300);
INSERT INTO ACT_ACT
	VALUES (2301,
	'bridge',
	0,
	2302,
	0,
	0,
	'Time::current_date',
	0);
INSERT INTO ACT_BLK
	VALUES (2302,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2301,
	0);
INSERT INTO S_BRG
	VALUES (2303,
	2299,
	'create_date',
	'',
	1,
	253,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2304,
	2303,
	'second',
	13,
	0,
	'',
	2305,
	'');
INSERT INTO S_BPARM
	VALUES (2306,
	2303,
	'minute',
	13,
	0,
	'',
	2307,
	'');
INSERT INTO S_BPARM
	VALUES (2307,
	2303,
	'hour',
	13,
	0,
	'',
	2308,
	'');
INSERT INTO S_BPARM
	VALUES (2308,
	2303,
	'day',
	13,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2305,
	2303,
	'month',
	13,
	0,
	'',
	2306,
	'');
INSERT INTO S_BPARM
	VALUES (2309,
	2303,
	'year',
	13,
	0,
	'',
	2304,
	'');
INSERT INTO ACT_BRB
	VALUES (2310,
	2303);
INSERT INTO ACT_ACT
	VALUES (2310,
	'bridge',
	0,
	2311,
	0,
	0,
	'Time::create_date',
	0);
INSERT INTO ACT_BLK
	VALUES (2311,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2310,
	0);
INSERT INTO S_BRG
	VALUES (2312,
	2299,
	'get_second',
	'',
	1,
	13,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2313,
	2312,
	'date',
	253,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2314,
	2312);
INSERT INTO ACT_ACT
	VALUES (2314,
	'bridge',
	0,
	2315,
	0,
	0,
	'Time::get_second',
	0);
INSERT INTO ACT_BLK
	VALUES (2315,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2314,
	0);
INSERT INTO S_BRG
	VALUES (2316,
	2299,
	'get_minute',
	'',
	1,
	13,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2317,
	2316,
	'date',
	253,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2318,
	2316);
INSERT INTO ACT_ACT
	VALUES (2318,
	'bridge',
	0,
	2319,
	0,
	0,
	'Time::get_minute',
	0);
INSERT INTO ACT_BLK
	VALUES (2319,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2318,
	0);
INSERT INTO S_BRG
	VALUES (2320,
	2299,
	'get_hour',
	'',
	1,
	13,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2321,
	2320,
	'date',
	253,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2322,
	2320);
INSERT INTO ACT_ACT
	VALUES (2322,
	'bridge',
	0,
	2323,
	0,
	0,
	'Time::get_hour',
	0);
INSERT INTO ACT_BLK
	VALUES (2323,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2322,
	0);
INSERT INTO S_BRG
	VALUES (2324,
	2299,
	'get_day',
	'',
	1,
	13,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2325,
	2324,
	'date',
	253,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2326,
	2324);
INSERT INTO ACT_ACT
	VALUES (2326,
	'bridge',
	0,
	2327,
	0,
	0,
	'Time::get_day',
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
	2299,
	'get_month',
	'',
	1,
	13,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2329,
	2328,
	'date',
	253,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2330,
	2328);
INSERT INTO ACT_ACT
	VALUES (2330,
	'bridge',
	0,
	2331,
	0,
	0,
	'Time::get_month',
	0);
INSERT INTO ACT_BLK
	VALUES (2331,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2330,
	0);
INSERT INTO S_BRG
	VALUES (2332,
	2299,
	'get_year',
	'',
	1,
	13,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2333,
	2332,
	'date',
	253,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2334,
	2332);
INSERT INTO ACT_ACT
	VALUES (2334,
	'bridge',
	0,
	2335,
	0,
	0,
	'Time::get_year',
	0);
INSERT INTO ACT_BLK
	VALUES (2335,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2334,
	0);
INSERT INTO S_BRG
	VALUES (2336,
	2299,
	'current_clock',
	'',
	1,
	259,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (2337,
	2336);
INSERT INTO ACT_ACT
	VALUES (2337,
	'bridge',
	0,
	2338,
	0,
	0,
	'Time::current_clock',
	0);
INSERT INTO ACT_BLK
	VALUES (2338,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2337,
	0);
INSERT INTO S_BRG
	VALUES (2339,
	2299,
	'timer_start',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Returns the instance
handle of the timer.',
	1,
	313,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2340,
	2339,
	'microseconds',
	13,
	0,
	'',
	2341,
	'');
INSERT INTO S_BPARM
	VALUES (2341,
	2339,
	'event_inst',
	316,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2342,
	2339);
INSERT INTO ACT_ACT
	VALUES (2342,
	'bridge',
	0,
	2343,
	0,
	0,
	'Time::timer_start',
	0);
INSERT INTO ACT_BLK
	VALUES (2343,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
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
INSERT INTO S_BRG
	VALUES (2344,
	2299,
	'timer_start_recurring',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Upon expiration, the
timer will be restarted and fire again in the specified number of microseconds
generating the passed event. This bridge operation returns the instance handle
of the timer.',
	1,
	313,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2345,
	2344,
	'microseconds',
	13,
	0,
	'',
	2346,
	'');
INSERT INTO S_BPARM
	VALUES (2346,
	2344,
	'event_inst',
	316,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2347,
	2344);
INSERT INTO ACT_ACT
	VALUES (2347,
	'bridge',
	0,
	2348,
	0,
	0,
	'Time::timer_start_recurring',
	0);
INSERT INTO ACT_BLK
	VALUES (2348,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2347,
	0);
INSERT INTO S_BRG
	VALUES (2349,
	2299,
	'timer_remaining_time',
	'Returns the time remaining (in microseconds) for the passed timer instance. If
the timer has expired, a zero value is returned.',
	1,
	13,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2350,
	2349,
	'timer_inst_ref',
	313,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2351,
	2349);
INSERT INTO ACT_ACT
	VALUES (2351,
	'bridge',
	0,
	2352,
	0,
	0,
	'Time::timer_remaining_time',
	0);
INSERT INTO ACT_BLK
	VALUES (2352,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2351,
	0);
INSERT INTO S_BRG
	VALUES (2353,
	2299,
	'timer_reset_time',
	'This bridge operation attempts to set the passed existing timer to expire in
the specified number of microseconds. If the timer exists (that is, it has not
expired), a TRUE value is returned. If the timer no longer exists, a FALSE value
is returned.',
	1,
	72,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2354,
	2353,
	'timer_inst_ref',
	313,
	0,
	'',
	2355,
	'');
INSERT INTO S_BPARM
	VALUES (2355,
	2353,
	'microseconds',
	13,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2356,
	2353);
INSERT INTO ACT_ACT
	VALUES (2356,
	'bridge',
	0,
	2357,
	0,
	0,
	'Time::timer_reset_time',
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
INSERT INTO S_BRG
	VALUES (2358,
	2299,
	'timer_add_time',
	'This bridge operation attempts to add the specified number of microseconds to a
passed existing timer. If the timer exists (that is, it has not expired), a TRUE
value is returned. If the timer no longer exists, a FALSE value is returned.',
	1,
	72,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2359,
	2358,
	'timer_inst_ref',
	313,
	0,
	'',
	2360,
	'');
INSERT INTO S_BPARM
	VALUES (2360,
	2358,
	'microseconds',
	13,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2361,
	2358);
INSERT INTO ACT_ACT
	VALUES (2361,
	'bridge',
	0,
	2362,
	0,
	0,
	'Time::timer_add_time',
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
	2299,
	'timer_cancel',
	'This bridge operation cancels and deletes the passed timer instance. If the 
timer exists (that is, it had not expired), a TRUE value is returned. If the
timer no longer exists, a FALSE value is returned.',
	1,
	72,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2364,
	2363,
	'timer_inst_ref',
	313,
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
	'Time::timer_cancel',
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
INSERT INTO PE_PE
	VALUES (2367,
	1,
	2266,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (2367,
	'HeartRateMonitor',
	1,
	'HeartRateMonitor',
	'Represents the heart-rate monitoring facility.',
	0);
INSERT INTO O_NBATTR
	VALUES (2368,
	2367);
INSERT INTO O_BATTR
	VALUES (2368,
	2367);
INSERT INTO O_ATTR
	VALUES (2368,
	2367,
	0,
	'recentHeartRate',
	'Most recent heart-rate sample, expressed in beats per minute.',
	'',
	'recentHeartRate',
	0,
	13,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2369,
	2367);
INSERT INTO O_BATTR
	VALUES (2369,
	2367);
INSERT INTO O_ATTR
	VALUES (2369,
	2367,
	2368,
	'timer',
	'Handle for underlying timer mechanism enabling the 
generation of delayed events that drive the model
of the heart-rate monitor.',
	'',
	'timer',
	0,
	313,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2367);
INSERT INTO O_ID
	VALUES (1,
	2367);
INSERT INTO O_ID
	VALUES (2,
	2367);
INSERT INTO SM_ASM
	VALUES (2370,
	2367);
INSERT INTO SM_SM
	VALUES (2370,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (2370);
INSERT INTO SM_LEVT
	VALUES (2371,
	2370,
	0);
INSERT INTO SM_SEVT
	VALUES (2371,
	2370,
	0);
INSERT INTO SM_EVT
	VALUES (2371,
	2370,
	0,
	3,
	'timeout',
	0,
	'',
	'HeartRateMonitor_A3',
	'');
INSERT INTO SM_LEVT
	VALUES (2252,
	2370,
	0);
INSERT INTO SM_SEVT
	VALUES (2252,
	2370,
	0);
INSERT INTO SM_EVT
	VALUES (2252,
	2370,
	0,
	1,
	'registerListener',
	0,
	'',
	'HeartRateMonitor_A1',
	'');
INSERT INTO SM_LEVT
	VALUES (2258,
	2370,
	0);
INSERT INTO SM_SEVT
	VALUES (2258,
	2370,
	0);
INSERT INTO SM_EVT
	VALUES (2258,
	2370,
	0,
	2,
	'unregisterListener',
	0,
	'',
	'HeartRateMonitor_A2',
	'');
INSERT INTO SM_STATE
	VALUES (2372,
	2370,
	0,
	'idle',
	1,
	0);
INSERT INTO SM_EIGN
	VALUES (2372,
	2371,
	2370,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2372,
	2371,
	2370,
	0);
INSERT INTO SM_SEME
	VALUES (2372,
	2252,
	2370,
	0);
INSERT INTO SM_CH
	VALUES (2372,
	2258,
	2370,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2372,
	2258,
	2370,
	0);
INSERT INTO SM_MOAH
	VALUES (2373,
	2370,
	2372);
INSERT INTO SM_AH
	VALUES (2373,
	2370);
INSERT INTO SM_ACT
	VALUES (2373,
	2370,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (2374,
	2370,
	2373);
INSERT INTO ACT_ACT
	VALUES (2374,
	'class state',
	0,
	2375,
	0,
	0,
	'HeartRateMonitor::idle',
	0);
INSERT INTO ACT_BLK
	VALUES (2375,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2374,
	0);
INSERT INTO SM_STATE
	VALUES (2376,
	2370,
	0,
	'monitoring',
	2,
	0);
INSERT INTO SM_SEME
	VALUES (2376,
	2371,
	2370,
	0);
INSERT INTO SM_CH
	VALUES (2376,
	2252,
	2370,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2376,
	2252,
	2370,
	0);
INSERT INTO SM_SEME
	VALUES (2376,
	2258,
	2370,
	0);
INSERT INTO SM_MOAH
	VALUES (2377,
	2370,
	2376);
INSERT INTO SM_AH
	VALUES (2377,
	2370);
INSERT INTO SM_ACT
	VALUES (2377,
	2370,
	1,
	'select any monitor from instances of HeartRateMonitor;
send Unspecified::heartRateChanged(heartRate: monitor.recentHeartRate);
monitor.recentHeartRate = monitor.recentHeartRate + 1;',
	'');
INSERT INTO ACT_SAB
	VALUES (2378,
	2370,
	2377);
INSERT INTO ACT_ACT
	VALUES (2378,
	'class state',
	0,
	2379,
	0,
	0,
	'HeartRateMonitor::monitoring',
	0);
INSERT INTO ACT_BLK
	VALUES (2379,
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
	2378,
	0);
INSERT INTO ACT_SMT
	VALUES (2380,
	2379,
	2381,
	1,
	1,
	'HeartRateMonitor::monitoring line: 1');
INSERT INTO ACT_FIO
	VALUES (2380,
	2382,
	1,
	'any',
	2367,
	1,
	38);
INSERT INTO ACT_SMT
	VALUES (2381,
	2379,
	2383,
	2,
	1,
	'HeartRateMonitor::monitoring line: 2');
INSERT INTO ACT_IOP
	VALUES (2381,
	2,
	19,
	2,
	6,
	0,
	2262,
	0);
INSERT INTO ACT_SMT
	VALUES (2383,
	2379,
	0,
	3,
	1,
	'HeartRateMonitor::monitoring line: 3');
INSERT INTO ACT_AI
	VALUES (2383,
	2384,
	2385,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2386,
	0,
	0,
	2,
	47,
	53,
	0,
	0,
	0,
	0,
	70,
	2379);
INSERT INTO V_IRF
	VALUES (2386,
	2382);
INSERT INTO V_VAL
	VALUES (2387,
	0,
	0,
	2,
	55,
	69,
	0,
	0,
	0,
	0,
	13,
	2379);
INSERT INTO V_AVL
	VALUES (2387,
	2386,
	2367,
	2368);
INSERT INTO V_PAR
	VALUES (2387,
	2381,
	0,
	'heartRate',
	0,
	2,
	36);
INSERT INTO V_VAL
	VALUES (2388,
	1,
	0,
	3,
	1,
	7,
	0,
	0,
	0,
	0,
	70,
	2379);
INSERT INTO V_IRF
	VALUES (2388,
	2382);
INSERT INTO V_VAL
	VALUES (2385,
	1,
	0,
	3,
	9,
	23,
	0,
	0,
	0,
	0,
	13,
	2379);
INSERT INTO V_AVL
	VALUES (2385,
	2388,
	2367,
	2368);
INSERT INTO V_VAL
	VALUES (2389,
	0,
	0,
	3,
	27,
	33,
	0,
	0,
	0,
	0,
	70,
	2379);
INSERT INTO V_IRF
	VALUES (2389,
	2382);
INSERT INTO V_VAL
	VALUES (2390,
	0,
	0,
	3,
	35,
	49,
	0,
	0,
	0,
	0,
	13,
	2379);
INSERT INTO V_AVL
	VALUES (2390,
	2389,
	2367,
	2368);
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
	13,
	2379);
INSERT INTO V_BIN
	VALUES (2384,
	2391,
	2390,
	'+');
INSERT INTO V_VAL
	VALUES (2391,
	0,
	0,
	3,
	53,
	53,
	0,
	0,
	0,
	0,
	13,
	2379);
INSERT INTO V_LIN
	VALUES (2391,
	'1');
INSERT INTO V_VAR
	VALUES (2382,
	2379,
	'monitor',
	1,
	70);
INSERT INTO V_INT
	VALUES (2382,
	0,
	2367);
INSERT INTO SM_NSTXN
	VALUES (2392,
	2370,
	2372,
	2252,
	0);
INSERT INTO SM_TAH
	VALUES (2393,
	2370,
	2392);
INSERT INTO SM_AH
	VALUES (2393,
	2370);
INSERT INTO SM_ACT
	VALUES (2393,
	2370,
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
	VALUES (2394,
	2370,
	2393);
INSERT INTO ACT_ACT
	VALUES (2394,
	'class transition',
	0,
	2395,
	0,
	0,
	'HeartRateMonitor_A1: registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2395,
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
	2394,
	0);
INSERT INTO ACT_SMT
	VALUES (2396,
	2395,
	2397,
	2,
	1,
	'HeartRateMonitor_A1: registerListener line: 2');
INSERT INTO ACT_FIO
	VALUES (2396,
	2398,
	1,
	'any',
	2367,
	2,
	38);
INSERT INTO ACT_SMT
	VALUES (2397,
	2395,
	2399,
	3,
	1,
	'HeartRateMonitor_A1: registerListener line: 3');
INSERT INTO ACT_IF
	VALUES (2397,
	2400,
	2401,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2399,
	2395,
	2402,
	6,
	1,
	'HeartRateMonitor_A1: registerListener line: 6');
INSERT INTO ACT_AI
	VALUES (2399,
	2403,
	2404,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2402,
	2395,
	2405,
	8,
	1,
	'HeartRateMonitor_A1: registerListener line: 8');
INSERT INTO ACT_BRG
	VALUES (2402,
	2276,
	8,
	6,
	8,
	1);
INSERT INTO ACT_SMT
	VALUES (2405,
	2395,
	2406,
	11,
	1,
	'HeartRateMonitor_A1: registerListener line: 11');
INSERT INTO E_ESS
	VALUES (2405,
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
	VALUES (2405,
	1,
	2407);
INSERT INTO E_CSME
	VALUES (2405,
	2371);
INSERT INTO E_CEA
	VALUES (2405);
INSERT INTO ACT_SMT
	VALUES (2406,
	2395,
	0,
	12,
	1,
	'HeartRateMonitor_A1: registerListener line: 12');
INSERT INTO ACT_AI
	VALUES (2406,
	2408,
	2409,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2410,
	0,
	0,
	3,
	11,
	17,
	0,
	0,
	0,
	0,
	70,
	2395);
INSERT INTO V_IRF
	VALUES (2410,
	2398);
INSERT INTO V_VAL
	VALUES (2401,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	2395);
INSERT INTO V_UNY
	VALUES (2401,
	2410,
	'empty');
INSERT INTO V_VAL
	VALUES (2411,
	1,
	0,
	6,
	1,
	7,
	0,
	0,
	0,
	0,
	70,
	2395);
INSERT INTO V_IRF
	VALUES (2411,
	2398);
INSERT INTO V_VAL
	VALUES (2404,
	1,
	0,
	6,
	9,
	23,
	0,
	0,
	0,
	0,
	13,
	2395);
INSERT INTO V_AVL
	VALUES (2404,
	2411,
	2367,
	2368);
INSERT INTO V_VAL
	VALUES (2403,
	0,
	0,
	6,
	27,
	28,
	0,
	0,
	0,
	0,
	13,
	2395);
INSERT INTO V_LIN
	VALUES (2403,
	'50');
INSERT INTO V_VAL
	VALUES (2412,
	0,
	0,
	8,
	23,
	42,
	0,
	0,
	0,
	0,
	96,
	2395);
INSERT INTO V_LST
	VALUES (2412,
	'listener registered');
INSERT INTO V_PAR
	VALUES (2412,
	2402,
	0,
	'message',
	0,
	8,
	14);
INSERT INTO V_VAL
	VALUES (2413,
	1,
	0,
	12,
	1,
	7,
	0,
	0,
	0,
	0,
	70,
	2395);
INSERT INTO V_IRF
	VALUES (2413,
	2398);
INSERT INTO V_VAL
	VALUES (2409,
	1,
	0,
	12,
	9,
	13,
	0,
	0,
	0,
	0,
	313,
	2395);
INSERT INTO V_AVL
	VALUES (2409,
	2413,
	2367,
	2369);
INSERT INTO V_VAL
	VALUES (2408,
	0,
	0,
	12,
	22,
	-1,
	12,
	45,
	12,
	66,
	313,
	2395);
INSERT INTO V_BRV
	VALUES (2408,
	2344,
	1,
	12,
	17);
INSERT INTO V_VAL
	VALUES (2414,
	0,
	0,
	12,
	57,
	63,
	0,
	0,
	0,
	0,
	316,
	2395);
INSERT INTO V_TVL
	VALUES (2414,
	2407);
INSERT INTO V_PAR
	VALUES (2414,
	0,
	2408,
	'event_inst',
	2415,
	12,
	45);
INSERT INTO V_VAL
	VALUES (2416,
	0,
	0,
	12,
	81,
	103,
	0,
	0,
	0,
	0,
	13,
	2395);
INSERT INTO V_SCV
	VALUES (2416,
	1505,
	13);
INSERT INTO V_VAL
	VALUES (2415,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	13,
	2395);
INSERT INTO V_BIN
	VALUES (2415,
	2417,
	2416,
	'*');
INSERT INTO V_PAR
	VALUES (2415,
	0,
	2408,
	'microseconds',
	0,
	12,
	66);
INSERT INTO V_VAL
	VALUES (2417,
	0,
	0,
	12,
	107,
	113,
	0,
	0,
	0,
	0,
	13,
	2395);
INSERT INTO V_LIN
	VALUES (2417,
	'1000000');
INSERT INTO V_VAR
	VALUES (2398,
	2395,
	'monitor',
	1,
	70);
INSERT INTO V_INT
	VALUES (2398,
	0,
	2367);
INSERT INTO V_VAR
	VALUES (2407,
	2395,
	'timeout',
	1,
	316);
INSERT INTO V_TRN
	VALUES (2407,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (2400,
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
	2394,
	0);
INSERT INTO ACT_SMT
	VALUES (2418,
	2400,
	0,
	4,
	3,
	'HeartRateMonitor_A1: registerListener line: 4');
INSERT INTO ACT_CR
	VALUES (2418,
	2398,
	0,
	2367,
	4,
	37);
INSERT INTO SM_TXN
	VALUES (2392,
	2370,
	2376,
	0);
INSERT INTO SM_NSTXN
	VALUES (2419,
	2370,
	2376,
	2258,
	0);
INSERT INTO SM_TAH
	VALUES (2420,
	2370,
	2419);
INSERT INTO SM_AH
	VALUES (2420,
	2370);
INSERT INTO SM_ACT
	VALUES (2420,
	2370,
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
	VALUES (2421,
	2370,
	2420);
INSERT INTO ACT_ACT
	VALUES (2421,
	'class transition',
	0,
	2422,
	0,
	0,
	'HeartRateMonitor_A2: unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2422,
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
	2421,
	0);
INSERT INTO ACT_SMT
	VALUES (2423,
	2422,
	2424,
	1,
	1,
	'HeartRateMonitor_A2: unregisterListener line: 1');
INSERT INTO ACT_FIO
	VALUES (2423,
	2425,
	1,
	'any',
	2367,
	1,
	38);
INSERT INTO ACT_SMT
	VALUES (2424,
	2422,
	2426,
	2,
	1,
	'HeartRateMonitor_A2: unregisterListener line: 2');
INSERT INTO ACT_AI
	VALUES (2424,
	2427,
	2428,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2426,
	2422,
	0,
	3,
	1,
	'HeartRateMonitor_A2: unregisterListener line: 3');
INSERT INTO ACT_IF
	VALUES (2426,
	2429,
	2430,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2431,
	2422,
	0,
	5,
	1,
	'HeartRateMonitor_A2: unregisterListener line: 5');
INSERT INTO ACT_E
	VALUES (2431,
	2432,
	2426);
INSERT INTO V_VAL
	VALUES (2428,
	1,
	1,
	2,
	1,
	3,
	0,
	0,
	0,
	0,
	72,
	2422);
INSERT INTO V_TVL
	VALUES (2428,
	2433);
INSERT INTO V_VAL
	VALUES (2427,
	0,
	0,
	2,
	12,
	-1,
	2,
	25,
	0,
	0,
	72,
	2422);
INSERT INTO V_BRV
	VALUES (2427,
	2363,
	1,
	2,
	7);
INSERT INTO V_VAL
	VALUES (2434,
	0,
	0,
	2,
	41,
	47,
	0,
	0,
	0,
	0,
	70,
	2422);
INSERT INTO V_IRF
	VALUES (2434,
	2425);
INSERT INTO V_VAL
	VALUES (2435,
	0,
	0,
	2,
	49,
	53,
	0,
	0,
	0,
	0,
	313,
	2422);
INSERT INTO V_AVL
	VALUES (2435,
	2434,
	2367,
	2369);
INSERT INTO V_PAR
	VALUES (2435,
	0,
	2427,
	'timer_inst_ref',
	0,
	2,
	25);
INSERT INTO V_VAL
	VALUES (2430,
	0,
	0,
	3,
	6,
	8,
	0,
	0,
	0,
	0,
	72,
	2422);
INSERT INTO V_TVL
	VALUES (2430,
	2433);
INSERT INTO V_VAR
	VALUES (2425,
	2422,
	'monitor',
	1,
	70);
INSERT INTO V_INT
	VALUES (2425,
	0,
	2367);
INSERT INTO V_VAR
	VALUES (2433,
	2422,
	'res',
	1,
	72);
INSERT INTO V_TRN
	VALUES (2433,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (2429,
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
	2421,
	0);
INSERT INTO ACT_SMT
	VALUES (2436,
	2429,
	0,
	4,
	3,
	'HeartRateMonitor_A2: unregisterListener line: 4');
INSERT INTO ACT_BRG
	VALUES (2436,
	2268,
	4,
	8,
	4,
	3);
INSERT INTO V_VAL
	VALUES (2437,
	0,
	0,
	4,
	29,
	74,
	0,
	0,
	0,
	0,
	96,
	2429);
INSERT INTO V_LST
	VALUES (2437,
	'Heart Rate Monitor: timer_cancel() succeeded.');
INSERT INTO V_PAR
	VALUES (2437,
	2436,
	0,
	'message',
	0,
	4,
	20);
INSERT INTO ACT_BLK
	VALUES (2432,
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
	2421,
	0);
INSERT INTO ACT_SMT
	VALUES (2438,
	2432,
	0,
	6,
	3,
	'HeartRateMonitor_A2: unregisterListener line: 6');
INSERT INTO ACT_BRG
	VALUES (2438,
	2272,
	6,
	8,
	6,
	3);
INSERT INTO V_VAL
	VALUES (2439,
	0,
	0,
	6,
	29,
	71,
	0,
	0,
	0,
	0,
	96,
	2432);
INSERT INTO V_LST
	VALUES (2439,
	'Heart Rate Monitor: timer_cancel() failed.');
INSERT INTO V_PAR
	VALUES (2439,
	2438,
	0,
	'message',
	0,
	6,
	20);
INSERT INTO SM_TXN
	VALUES (2419,
	2370,
	2372,
	0);
INSERT INTO SM_NSTXN
	VALUES (2440,
	2370,
	2376,
	2371,
	0);
INSERT INTO SM_TAH
	VALUES (2441,
	2370,
	2440);
INSERT INTO SM_AH
	VALUES (2441,
	2370);
INSERT INTO SM_ACT
	VALUES (2441,
	2370,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2442,
	2370,
	2441);
INSERT INTO ACT_ACT
	VALUES (2442,
	'class transition',
	0,
	2443,
	0,
	0,
	'HeartRateMonitor_A3: timeout',
	0);
INSERT INTO ACT_BLK
	VALUES (2443,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2442,
	0);
INSERT INTO SM_TXN
	VALUES (2440,
	2370,
	2376,
	0);
INSERT INTO PE_PE
	VALUES (2444,
	1,
	2242,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (2444,
	0,
	2241,
	'shared',
	'',
	0);
INSERT INTO PE_PE
	VALUES (2445,
	1,
	2444,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (2445,
	'HeartRateConstants',
	'SamplingPeriod is expressed in seconds and represents the period at which heart-rate samples are recorded.
AveragingWindow is expressed in samples and represents the number of samples used when calculating the current average.');
INSERT INTO CNST_SYC
	VALUES (1507,
	'HeartRateAveragingWindow',
	'',
	13,
	2445,
	1505,
	13);
INSERT INTO CNST_LFSC
	VALUES (1507,
	13);
INSERT INTO CNST_LSC
	VALUES (1507,
	13,
	'5');
INSERT INTO CNST_SYC
	VALUES (1505,
	'HeartRateSamplingPeriod',
	'',
	13,
	2445,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (1505,
	13);
INSERT INTO CNST_LSC
	VALUES (1505,
	13,
	'3');
INSERT INTO PE_PE
	VALUES (2246,
	1,
	2444,
	0,
	6);
INSERT INTO C_I
	VALUES (2246,
	0,
	'HeartRateMonitor',
	'');
INSERT INTO C_EP
	VALUES (2248,
	2246,
	-1,
	'registerListener',
	'');
INSERT INTO C_IO
	VALUES (2248,
	240,
	'registerListener',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (2254,
	2246,
	-1,
	'unregisterListener',
	'');
INSERT INTO C_IO
	VALUES (2254,
	240,
	'unregisterListener',
	'',
	0,
	'',
	2248);
INSERT INTO PE_PE
	VALUES (2261,
	1,
	2444,
	0,
	6);
INSERT INTO C_I
	VALUES (2261,
	0,
	'HeartRateMonitorUnspecified',
	'');
INSERT INTO C_EP
	VALUES (2263,
	2261,
	-1,
	'heartRateChanged',
	'');
INSERT INTO C_IO
	VALUES (2263,
	240,
	'heartRateChanged',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (2446,
	2263,
	13,
	'heartRate',
	'',
	0,
	'',
	0);
-- root-types-contained: SystemModel_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES (2447,
	'Location',
	1);
INSERT INTO EP_PKG
	VALUES (2448,
	2447,
	2447,
	'Location',
	'',
	0);
INSERT INTO PE_PE
	VALUES (2449,
	1,
	2448,
	0,
	2);
INSERT INTO C_C
	VALUES (2449,
	0,
	0,
	'Location',
	'Simulates a the GPS hardware/firmware. This component is only behavioral and included for testing purposes.',
	0,
	0,
	0,
	'');
INSERT INTO C_PO
	VALUES (2450,
	2449,
	'Location',
	0,
	0);
INSERT INTO C_IR
	VALUES (2451,
	2452,
	0,
	2450);
INSERT INTO C_P
	VALUES (2451,
	'Location',
	'Unnamed Interface',
	'',
	'Location::Location::Location');
INSERT INTO SPR_PEP
	VALUES (2453,
	2454,
	2451);
INSERT INTO SPR_PO
	VALUES (2453,
	'getLocation',
	'',
	'',
	1);
INSERT INTO ACT_POB
	VALUES (2455,
	2453);
INSERT INTO ACT_ACT
	VALUES (2455,
	'interface operation',
	0,
	2456,
	0,
	0,
	'Location::Location::getLocation',
	0);
INSERT INTO ACT_BLK
	VALUES (2456,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2455,
	0);
INSERT INTO SPR_PEP
	VALUES (2457,
	2458,
	2451);
INSERT INTO SPR_PO
	VALUES (2457,
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
	VALUES (2459,
	2457);
INSERT INTO ACT_ACT
	VALUES (2459,
	'interface operation',
	0,
	2460,
	0,
	0,
	'Location::Location::getDistance',
	0);
INSERT INTO ACT_BLK
	VALUES (2460,
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
	2459,
	0);
INSERT INTO ACT_SMT
	VALUES (2461,
	2460,
	2462,
	4,
	1,
	'Location::Location::getDistance line: 4');
INSERT INTO ACT_AI
	VALUES (2461,
	2463,
	2464,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2462,
	2460,
	2465,
	5,
	1,
	'Location::Location::getDistance line: 5');
INSERT INTO ACT_AI
	VALUES (2462,
	2466,
	2467,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2465,
	2460,
	2468,
	6,
	1,
	'Location::Location::getDistance line: 6');
INSERT INTO ACT_AI
	VALUES (2465,
	2469,
	2470,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2468,
	2460,
	0,
	7,
	1,
	'Location::Location::getDistance line: 7');
INSERT INTO ACT_RET
	VALUES (2468,
	2471);
INSERT INTO V_VAL
	VALUES (2464,
	1,
	1,
	4,
	1,
	8,
	0,
	0,
	0,
	0,
	13,
	2460);
INSERT INTO V_TVL
	VALUES (2464,
	2472);
INSERT INTO V_VAL
	VALUES (2473,
	0,
	0,
	4,
	18,
	22,
	0,
	0,
	0,
	0,
	13,
	2460);
INSERT INTO V_PVL
	VALUES (2473,
	0,
	0,
	0,
	2474);
INSERT INTO V_VAL
	VALUES (2463,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	13,
	2460);
INSERT INTO V_BIN
	VALUES (2463,
	2475,
	2473,
	'-');
INSERT INTO V_VAL
	VALUES (2475,
	0,
	0,
	4,
	32,
	38,
	0,
	0,
	0,
	0,
	13,
	2460);
INSERT INTO V_PVL
	VALUES (2475,
	0,
	0,
	0,
	2476);
INSERT INTO V_VAL
	VALUES (2467,
	1,
	1,
	5,
	1,
	9,
	0,
	0,
	0,
	0,
	13,
	2460);
INSERT INTO V_TVL
	VALUES (2467,
	2477);
INSERT INTO V_VAL
	VALUES (2478,
	0,
	0,
	5,
	19,
	24,
	0,
	0,
	0,
	0,
	13,
	2460);
INSERT INTO V_PVL
	VALUES (2478,
	0,
	0,
	0,
	2479);
INSERT INTO V_VAL
	VALUES (2466,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	13,
	2460);
INSERT INTO V_BIN
	VALUES (2466,
	2480,
	2478,
	'-');
INSERT INTO V_VAL
	VALUES (2480,
	0,
	0,
	5,
	34,
	41,
	0,
	0,
	0,
	0,
	13,
	2460);
INSERT INTO V_PVL
	VALUES (2480,
	0,
	0,
	0,
	2481);
INSERT INTO V_VAL
	VALUES (2470,
	1,
	1,
	6,
	1,
	10,
	0,
	0,
	0,
	0,
	13,
	2460);
INSERT INTO V_TVL
	VALUES (2470,
	2482);
INSERT INTO V_VAL
	VALUES (2483,
	0,
	0,
	6,
	15,
	22,
	0,
	0,
	0,
	0,
	13,
	2460);
INSERT INTO V_TVL
	VALUES (2483,
	2472);
INSERT INTO V_VAL
	VALUES (2484,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	13,
	2460);
INSERT INTO V_BIN
	VALUES (2484,
	2485,
	2483,
	'*');
INSERT INTO V_VAL
	VALUES (2485,
	0,
	0,
	6,
	26,
	33,
	0,
	0,
	0,
	0,
	13,
	2460);
INSERT INTO V_TVL
	VALUES (2485,
	2472);
INSERT INTO V_VAL
	VALUES (2469,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	13,
	2460);
INSERT INTO V_BIN
	VALUES (2469,
	2486,
	2484,
	'+');
INSERT INTO V_VAL
	VALUES (2487,
	0,
	0,
	6,
	39,
	47,
	0,
	0,
	0,
	0,
	13,
	2460);
INSERT INTO V_TVL
	VALUES (2487,
	2477);
INSERT INTO V_VAL
	VALUES (2486,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	13,
	2460);
INSERT INTO V_BIN
	VALUES (2486,
	2488,
	2487,
	'*');
INSERT INTO V_VAL
	VALUES (2488,
	0,
	0,
	6,
	51,
	59,
	0,
	0,
	0,
	0,
	13,
	2460);
INSERT INTO V_TVL
	VALUES (2488,
	2477);
INSERT INTO V_VAL
	VALUES (2489,
	0,
	0,
	7,
	17,
	-1,
	7,
	23,
	0,
	0,
	170,
	2460);
INSERT INTO V_BRV
	VALUES (2489,
	2490,
	1,
	7,
	11);
INSERT INTO V_VAL
	VALUES (2491,
	0,
	0,
	7,
	26,
	35,
	0,
	0,
	0,
	0,
	13,
	2460);
INSERT INTO V_TVL
	VALUES (2491,
	2482);
INSERT INTO V_PAR
	VALUES (2491,
	0,
	2489,
	'x',
	0,
	7,
	23);
INSERT INTO V_VAL
	VALUES (2492,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	170,
	2460);
INSERT INTO V_BIN
	VALUES (2492,
	2493,
	2489,
	'*');
INSERT INTO V_VAL
	VALUES (2493,
	0,
	0,
	7,
	41,
	51,
	0,
	0,
	0,
	0,
	170,
	2460);
INSERT INTO V_SCV
	VALUES (2493,
	2494,
	170);
INSERT INTO V_VAL
	VALUES (2471,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	170,
	2460);
INSERT INTO V_BIN
	VALUES (2471,
	2495,
	2492,
	'*');
INSERT INTO V_VAL
	VALUES (2495,
	0,
	0,
	7,
	55,
	58,
	0,
	0,
	0,
	0,
	13,
	2460);
INSERT INTO V_LIN
	VALUES (2495,
	'1000');
INSERT INTO V_VAR
	VALUES (2472,
	2460,
	'deltaLat',
	1,
	13);
INSERT INTO V_TRN
	VALUES (2472,
	0,
	'');
INSERT INTO V_VAR
	VALUES (2477,
	2460,
	'deltaLong',
	1,
	13);
INSERT INTO V_TRN
	VALUES (2477,
	0,
	'');
INSERT INTO V_VAR
	VALUES (2482,
	2460,
	'sumSquares',
	1,
	13);
INSERT INTO V_TRN
	VALUES (2482,
	0,
	'');
INSERT INTO SPR_PEP
	VALUES (2496,
	2497,
	2451);
INSERT INTO SPR_PO
	VALUES (2496,
	'registerListener',
	'',
	'',
	1);
INSERT INTO ACT_POB
	VALUES (2498,
	2496);
INSERT INTO ACT_ACT
	VALUES (2498,
	'interface operation',
	0,
	2499,
	0,
	0,
	'Location::Location::registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2499,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2498,
	0);
INSERT INTO SPR_PEP
	VALUES (2500,
	2501,
	2451);
INSERT INTO SPR_PO
	VALUES (2500,
	'unregisterListener',
	'',
	'',
	1);
INSERT INTO ACT_POB
	VALUES (2502,
	2500);
INSERT INTO ACT_ACT
	VALUES (2502,
	'interface operation',
	0,
	2503,
	0,
	0,
	'Location::Location::unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2503,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2502,
	0);
INSERT INTO PE_PE
	VALUES (2504,
	1,
	0,
	2449,
	7);
INSERT INTO EP_PKG
	VALUES (2504,
	0,
	2447,
	'Location',
	'',
	0);
INSERT INTO PE_PE
	VALUES (2505,
	1,
	2504,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (2505,
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
	VALUES (2506,
	'longitudeIncrement',
	'',
	170,
	2505,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (2506,
	170);
INSERT INTO CNST_LSC
	VALUES (2506,
	170,
	'0.00002');
INSERT INTO CNST_SYC
	VALUES (2507,
	'latitudeIncrement',
	'',
	170,
	2505,
	2506,
	170);
INSERT INTO CNST_LFSC
	VALUES (2507,
	170);
INSERT INTO CNST_LSC
	VALUES (2507,
	170,
	'0.00001');
INSERT INTO CNST_SYC
	VALUES (2508,
	'initialLatitude',
	'',
	170,
	2505,
	2507,
	170);
INSERT INTO CNST_LFSC
	VALUES (2508,
	170);
INSERT INTO CNST_LSC
	VALUES (2508,
	170,
	'32.432237');
INSERT INTO CNST_SYC
	VALUES (2509,
	'initialLongitude',
	'',
	170,
	2505,
	2508,
	170);
INSERT INTO CNST_LFSC
	VALUES (2509,
	170);
INSERT INTO CNST_LSC
	VALUES (2509,
	170,
	'-110.812283');
INSERT INTO CNST_SYC
	VALUES (2510,
	'updatePeriod',
	'',
	13,
	2505,
	2509,
	170);
INSERT INTO CNST_LFSC
	VALUES (2510,
	13);
INSERT INTO CNST_LSC
	VALUES (2510,
	13,
	'1000000');
INSERT INTO PE_PE
	VALUES (2511,
	1,
	2504,
	0,
	5);
INSERT INTO S_EE
	VALUES (2511,
	'Math',
	'',
	'MATH',
	0,
	'',
	'Math',
	1);
INSERT INTO S_BRG
	VALUES (2490,
	2511,
	'sqrt',
	'',
	0,
	170,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2512,
	2490,
	'x',
	170,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2513,
	2490);
INSERT INTO ACT_ACT
	VALUES (2513,
	'bridge',
	0,
	2514,
	0,
	0,
	'Math::sqrt',
	0);
INSERT INTO ACT_BLK
	VALUES (2514,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2513,
	0);
INSERT INTO PE_PE
	VALUES (2515,
	1,
	2504,
	0,
	5);
INSERT INTO S_EE
	VALUES (2515,
	'Logging',
	'',
	'LOG',
	0,
	'',
	'Logging',
	1);
INSERT INTO S_BRG
	VALUES (2516,
	2515,
	'LogSuccess',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2517,
	2516,
	'message',
	96,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2518,
	2516);
INSERT INTO ACT_ACT
	VALUES (2518,
	'bridge',
	0,
	2519,
	0,
	0,
	'Logging::LogSuccess',
	0);
INSERT INTO ACT_BLK
	VALUES (2519,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2518,
	0);
INSERT INTO S_BRG
	VALUES (2520,
	2515,
	'LogFailure',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2521,
	2520,
	'message',
	96,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2522,
	2520);
INSERT INTO ACT_ACT
	VALUES (2522,
	'bridge',
	0,
	2523,
	0,
	0,
	'Logging::LogFailure',
	0);
INSERT INTO ACT_BLK
	VALUES (2523,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2522,
	0);
INSERT INTO S_BRG
	VALUES (2524,
	2515,
	'LogInfo',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2525,
	2524,
	'message',
	96,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2526,
	2524);
INSERT INTO ACT_ACT
	VALUES (2526,
	'bridge',
	0,
	2527,
	0,
	0,
	'Logging::LogInfo',
	0);
INSERT INTO ACT_BLK
	VALUES (2527,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2526,
	0);
INSERT INTO S_BRG
	VALUES (2528,
	2515,
	'LogDate',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2529,
	2528,
	'd',
	253,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2530,
	2528,
	'message',
	96,
	0,
	'',
	2529,
	'');
INSERT INTO ACT_BRB
	VALUES (2531,
	2528);
INSERT INTO ACT_ACT
	VALUES (2531,
	'bridge',
	0,
	2532,
	0,
	0,
	'Logging::LogDate',
	0);
INSERT INTO ACT_BLK
	VALUES (2532,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2531,
	0);
INSERT INTO S_BRG
	VALUES (2533,
	2515,
	'LogTime',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2534,
	2533,
	't',
	259,
	0,
	'',
	2535,
	'');
INSERT INTO S_BPARM
	VALUES (2535,
	2533,
	'message',
	96,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2536,
	2533);
INSERT INTO ACT_ACT
	VALUES (2536,
	'bridge',
	0,
	2537,
	0,
	0,
	'Logging::LogTime',
	0);
INSERT INTO ACT_BLK
	VALUES (2537,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2536,
	0);
INSERT INTO S_BRG
	VALUES (2538,
	2515,
	'LogReal',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2539,
	2538,
	'r',
	170,
	0,
	'',
	2540,
	'');
INSERT INTO S_BPARM
	VALUES (2540,
	2538,
	'message',
	96,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2541,
	2538);
INSERT INTO ACT_ACT
	VALUES (2541,
	'bridge',
	0,
	2542,
	0,
	0,
	'Logging::LogReal',
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
	2515,
	'LogInteger',
	'',
	0,
	240,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2544,
	2543,
	'message',
	13,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2545,
	2543);
INSERT INTO ACT_ACT
	VALUES (2545,
	'bridge',
	0,
	2546,
	0,
	0,
	'Logging::LogInteger',
	0);
INSERT INTO ACT_BLK
	VALUES (2546,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2545,
	0);
INSERT INTO PE_PE
	VALUES (2547,
	1,
	2504,
	0,
	5);
INSERT INTO S_EE
	VALUES (2547,
	'Time',
	'The Time external entity provides date, timestamp, and timer related operations.',
	'TIM',
	0,
	'',
	'Time',
	1);
INSERT INTO S_BRG
	VALUES (2548,
	2547,
	'current_date',
	'',
	1,
	253,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (2549,
	2548);
INSERT INTO ACT_ACT
	VALUES (2549,
	'bridge',
	0,
	2550,
	0,
	0,
	'Time::current_date',
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
	2547,
	'create_date',
	'',
	1,
	253,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2552,
	2551,
	'second',
	13,
	0,
	'',
	2553,
	'');
INSERT INTO S_BPARM
	VALUES (2554,
	2551,
	'minute',
	13,
	0,
	'',
	2555,
	'');
INSERT INTO S_BPARM
	VALUES (2555,
	2551,
	'hour',
	13,
	0,
	'',
	2556,
	'');
INSERT INTO S_BPARM
	VALUES (2556,
	2551,
	'day',
	13,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2553,
	2551,
	'month',
	13,
	0,
	'',
	2554,
	'');
INSERT INTO S_BPARM
	VALUES (2557,
	2551,
	'year',
	13,
	0,
	'',
	2552,
	'');
INSERT INTO ACT_BRB
	VALUES (2558,
	2551);
INSERT INTO ACT_ACT
	VALUES (2558,
	'bridge',
	0,
	2559,
	0,
	0,
	'Time::create_date',
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
	2547,
	'get_second',
	'',
	1,
	13,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2561,
	2560,
	'date',
	253,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2562,
	2560);
INSERT INTO ACT_ACT
	VALUES (2562,
	'bridge',
	0,
	2563,
	0,
	0,
	'Time::get_second',
	0);
INSERT INTO ACT_BLK
	VALUES (2563,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2562,
	0);
INSERT INTO S_BRG
	VALUES (2564,
	2547,
	'get_minute',
	'',
	1,
	13,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2565,
	2564,
	'date',
	253,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2566,
	2564);
INSERT INTO ACT_ACT
	VALUES (2566,
	'bridge',
	0,
	2567,
	0,
	0,
	'Time::get_minute',
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
INSERT INTO S_BRG
	VALUES (2568,
	2547,
	'get_hour',
	'',
	1,
	13,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2569,
	2568,
	'date',
	253,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2570,
	2568);
INSERT INTO ACT_ACT
	VALUES (2570,
	'bridge',
	0,
	2571,
	0,
	0,
	'Time::get_hour',
	0);
INSERT INTO ACT_BLK
	VALUES (2571,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
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
INSERT INTO S_BRG
	VALUES (2572,
	2547,
	'get_day',
	'',
	1,
	13,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2573,
	2572,
	'date',
	253,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2574,
	2572);
INSERT INTO ACT_ACT
	VALUES (2574,
	'bridge',
	0,
	2575,
	0,
	0,
	'Time::get_day',
	0);
INSERT INTO ACT_BLK
	VALUES (2575,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
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
INSERT INTO S_BRG
	VALUES (2576,
	2547,
	'get_month',
	'',
	1,
	13,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2577,
	2576,
	'date',
	253,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2578,
	2576);
INSERT INTO ACT_ACT
	VALUES (2578,
	'bridge',
	0,
	2579,
	0,
	0,
	'Time::get_month',
	0);
INSERT INTO ACT_BLK
	VALUES (2579,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2578,
	0);
INSERT INTO S_BRG
	VALUES (2580,
	2547,
	'get_year',
	'',
	1,
	13,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2581,
	2580,
	'date',
	253,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2582,
	2580);
INSERT INTO ACT_ACT
	VALUES (2582,
	'bridge',
	0,
	2583,
	0,
	0,
	'Time::get_year',
	0);
INSERT INTO ACT_BLK
	VALUES (2583,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2582,
	0);
INSERT INTO S_BRG
	VALUES (2584,
	2547,
	'current_clock',
	'',
	1,
	259,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (2585,
	2584);
INSERT INTO ACT_ACT
	VALUES (2585,
	'bridge',
	0,
	2586,
	0,
	0,
	'Time::current_clock',
	0);
INSERT INTO ACT_BLK
	VALUES (2586,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
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
INSERT INTO S_BRG
	VALUES (2587,
	2547,
	'timer_start',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Returns the instance
handle of the timer.',
	1,
	313,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2588,
	2587,
	'microseconds',
	13,
	0,
	'',
	2589,
	'');
INSERT INTO S_BPARM
	VALUES (2589,
	2587,
	'event_inst',
	316,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2590,
	2587);
INSERT INTO ACT_ACT
	VALUES (2590,
	'bridge',
	0,
	2591,
	0,
	0,
	'Time::timer_start',
	0);
INSERT INTO ACT_BLK
	VALUES (2591,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2590,
	0);
INSERT INTO S_BRG
	VALUES (2592,
	2547,
	'timer_start_recurring',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Upon expiration, the
timer will be restarted and fire again in the specified number of microseconds
generating the passed event. This bridge operation returns the instance handle
of the timer.',
	1,
	313,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2593,
	2592,
	'microseconds',
	13,
	0,
	'',
	2594,
	'');
INSERT INTO S_BPARM
	VALUES (2594,
	2592,
	'event_inst',
	316,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2595,
	2592);
INSERT INTO ACT_ACT
	VALUES (2595,
	'bridge',
	0,
	2596,
	0,
	0,
	'Time::timer_start_recurring',
	0);
INSERT INTO ACT_BLK
	VALUES (2596,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2595,
	0);
INSERT INTO S_BRG
	VALUES (2597,
	2547,
	'timer_remaining_time',
	'Returns the time remaining (in microseconds) for the passed timer instance. If
the timer has expired, a zero value is returned.',
	1,
	13,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2598,
	2597,
	'timer_inst_ref',
	313,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2599,
	2597);
INSERT INTO ACT_ACT
	VALUES (2599,
	'bridge',
	0,
	2600,
	0,
	0,
	'Time::timer_remaining_time',
	0);
INSERT INTO ACT_BLK
	VALUES (2600,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2599,
	0);
INSERT INTO S_BRG
	VALUES (2601,
	2547,
	'timer_reset_time',
	'This bridge operation attempts to set the passed existing timer to expire in
the specified number of microseconds. If the timer exists (that is, it has not
expired), a TRUE value is returned. If the timer no longer exists, a FALSE value
is returned.',
	1,
	72,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2602,
	2601,
	'timer_inst_ref',
	313,
	0,
	'',
	2603,
	'');
INSERT INTO S_BPARM
	VALUES (2603,
	2601,
	'microseconds',
	13,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2604,
	2601);
INSERT INTO ACT_ACT
	VALUES (2604,
	'bridge',
	0,
	2605,
	0,
	0,
	'Time::timer_reset_time',
	0);
INSERT INTO ACT_BLK
	VALUES (2605,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2604,
	0);
INSERT INTO S_BRG
	VALUES (2606,
	2547,
	'timer_add_time',
	'This bridge operation attempts to add the specified number of microseconds to a
passed existing timer. If the timer exists (that is, it has not expired), a TRUE
value is returned. If the timer no longer exists, a FALSE value is returned.',
	1,
	72,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2607,
	2606,
	'timer_inst_ref',
	313,
	0,
	'',
	2608,
	'');
INSERT INTO S_BPARM
	VALUES (2608,
	2606,
	'microseconds',
	13,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2609,
	2606);
INSERT INTO ACT_ACT
	VALUES (2609,
	'bridge',
	0,
	2610,
	0,
	0,
	'Time::timer_add_time',
	0);
INSERT INTO ACT_BLK
	VALUES (2610,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
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
INSERT INTO S_BRG
	VALUES (2611,
	2547,
	'timer_cancel',
	'This bridge operation cancels and deletes the passed timer instance. If the 
timer exists (that is, it had not expired), a TRUE value is returned. If the
timer no longer exists, a FALSE value is returned.',
	1,
	72,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2612,
	2611,
	'timer_inst_ref',
	313,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (2613,
	2611);
INSERT INTO ACT_ACT
	VALUES (2613,
	'bridge',
	0,
	2614,
	0,
	0,
	'Time::timer_cancel',
	0);
INSERT INTO ACT_BLK
	VALUES (2614,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2613,
	0);
INSERT INTO PE_PE
	VALUES (2615,
	1,
	2504,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (2615,
	'GPS',
	1,
	'GPS',
	'Simulates a GPS.',
	0);
INSERT INTO O_TFR
	VALUES (2616,
	2615,
	'activate',
	'',
	240,
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
	VALUES (2617,
	2616);
INSERT INTO ACT_ACT
	VALUES (2617,
	'class operation',
	0,
	2618,
	0,
	0,
	'GPS::activate',
	0);
INSERT INTO ACT_BLK
	VALUES (2618,
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
	2617,
	0);
INSERT INTO ACT_SMT
	VALUES (2619,
	2618,
	2620,
	3,
	1,
	'GPS::activate line: 3');
INSERT INTO ACT_FIO
	VALUES (2619,
	2621,
	1,
	'any',
	2615,
	3,
	34);
INSERT INTO ACT_SMT
	VALUES (2620,
	2618,
	2622,
	4,
	1,
	'GPS::activate line: 4');
INSERT INTO ACT_IF
	VALUES (2620,
	2623,
	2624,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2622,
	2618,
	2625,
	13,
	1,
	'GPS::activate line: 13');
INSERT INTO E_ESS
	VALUES (2622,
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
	VALUES (2622,
	1,
	2626);
INSERT INTO E_CSME
	VALUES (2622,
	2627);
INSERT INTO E_CEA
	VALUES (2622);
INSERT INTO ACT_SMT
	VALUES (2625,
	2618,
	0,
	14,
	1,
	'GPS::activate line: 14');
INSERT INTO ACT_AI
	VALUES (2625,
	2628,
	2629,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2630,
	0,
	0,
	4,
	12,
	14,
	0,
	0,
	0,
	0,
	70,
	2618);
INSERT INTO V_IRF
	VALUES (2630,
	2621);
INSERT INTO V_VAL
	VALUES (2624,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	2618);
INSERT INTO V_UNY
	VALUES (2624,
	2630,
	'empty');
INSERT INTO V_VAL
	VALUES (2631,
	1,
	0,
	14,
	1,
	3,
	0,
	0,
	0,
	0,
	70,
	2618);
INSERT INTO V_IRF
	VALUES (2631,
	2621);
INSERT INTO V_VAL
	VALUES (2629,
	1,
	0,
	14,
	5,
	9,
	0,
	0,
	0,
	0,
	313,
	2618);
INSERT INTO V_AVL
	VALUES (2629,
	2631,
	2615,
	2632);
INSERT INTO V_VAL
	VALUES (2628,
	0,
	0,
	14,
	18,
	-1,
	14,
	41,
	14,
	59,
	313,
	2618);
INSERT INTO V_BRV
	VALUES (2628,
	2592,
	1,
	14,
	13);
INSERT INTO V_VAL
	VALUES (2633,
	0,
	0,
	14,
	53,
	56,
	0,
	0,
	0,
	0,
	316,
	2618);
INSERT INTO V_TVL
	VALUES (2633,
	2626);
INSERT INTO V_PAR
	VALUES (2633,
	0,
	2628,
	'event_inst',
	2634,
	14,
	41);
INSERT INTO V_VAL
	VALUES (2634,
	0,
	0,
	14,
	73,
	84,
	0,
	0,
	0,
	0,
	13,
	2618);
INSERT INTO V_SCV
	VALUES (2634,
	2510,
	13);
INSERT INTO V_PAR
	VALUES (2634,
	0,
	2628,
	'microseconds',
	0,
	14,
	59);
INSERT INTO V_VAR
	VALUES (2621,
	2618,
	'gps',
	1,
	70);
INSERT INTO V_INT
	VALUES (2621,
	0,
	2615);
INSERT INTO V_VAR
	VALUES (2626,
	2618,
	'tick',
	1,
	316);
INSERT INTO V_TRN
	VALUES (2626,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (2623,
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
	2617,
	0);
INSERT INTO ACT_SMT
	VALUES (2635,
	2623,
	2636,
	6,
	3,
	'GPS::activate line: 6');
INSERT INTO ACT_CR
	VALUES (2635,
	2621,
	0,
	2615,
	6,
	33);
INSERT INTO ACT_SMT
	VALUES (2636,
	2623,
	2637,
	7,
	3,
	'GPS::activate line: 7');
INSERT INTO ACT_AI
	VALUES (2636,
	2638,
	2639,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2637,
	2623,
	2640,
	8,
	3,
	'GPS::activate line: 8');
INSERT INTO ACT_AI
	VALUES (2637,
	2641,
	2642,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2640,
	2623,
	0,
	9,
	3,
	'GPS::activate line: 9');
INSERT INTO ACT_AI
	VALUES (2640,
	2643,
	2644,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2645,
	1,
	0,
	7,
	3,
	5,
	0,
	0,
	0,
	0,
	70,
	2623);
INSERT INTO V_IRF
	VALUES (2645,
	2621);
INSERT INTO V_VAL
	VALUES (2639,
	1,
	0,
	7,
	7,
	20,
	0,
	0,
	0,
	0,
	13,
	2623);
INSERT INTO V_AVL
	VALUES (2639,
	2645,
	2615,
	2646);
INSERT INTO V_VAL
	VALUES (2638,
	0,
	0,
	7,
	24,
	24,
	0,
	0,
	0,
	0,
	13,
	2623);
INSERT INTO V_LIN
	VALUES (2638,
	'0');
INSERT INTO V_VAL
	VALUES (2647,
	1,
	0,
	8,
	3,
	5,
	0,
	0,
	0,
	0,
	70,
	2623);
INSERT INTO V_IRF
	VALUES (2647,
	2621);
INSERT INTO V_VAL
	VALUES (2642,
	1,
	0,
	8,
	7,
	21,
	0,
	0,
	0,
	0,
	170,
	2623);
INSERT INTO V_AVL
	VALUES (2642,
	2647,
	2615,
	2648);
INSERT INTO V_VAL
	VALUES (2641,
	0,
	0,
	8,
	26,
	40,
	0,
	0,
	0,
	0,
	170,
	2623);
INSERT INTO V_SCV
	VALUES (2641,
	2508,
	170);
INSERT INTO V_VAL
	VALUES (2649,
	1,
	0,
	9,
	3,
	5,
	0,
	0,
	0,
	0,
	70,
	2623);
INSERT INTO V_IRF
	VALUES (2649,
	2621);
INSERT INTO V_VAL
	VALUES (2644,
	1,
	0,
	9,
	7,
	22,
	0,
	0,
	0,
	0,
	170,
	2623);
INSERT INTO V_AVL
	VALUES (2644,
	2649,
	2615,
	2650);
INSERT INTO V_VAL
	VALUES (2643,
	0,
	0,
	9,
	26,
	41,
	0,
	0,
	0,
	0,
	170,
	2623);
INSERT INTO V_SCV
	VALUES (2643,
	2509,
	170);
INSERT INTO O_NBATTR
	VALUES (2632,
	2615);
INSERT INTO O_BATTR
	VALUES (2632,
	2615);
INSERT INTO O_ATTR
	VALUES (2632,
	2615,
	2646,
	'timer',
	'Handle for underlying timer mechanism enabling the generation 
of delayed events that drive the GPS simulator.',
	'',
	'timer',
	0,
	313,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2648,
	2615);
INSERT INTO O_BATTR
	VALUES (2648,
	2615);
INSERT INTO O_ATTR
	VALUES (2648,
	2615,
	0,
	'currentLatitude',
	'Current latitude, expressed in decimal degrees, of the simulated GPS.',
	'',
	'currentLatitude',
	0,
	170,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2650,
	2615);
INSERT INTO O_BATTR
	VALUES (2650,
	2615);
INSERT INTO O_ATTR
	VALUES (2650,
	2615,
	2648,
	'currentLongitude',
	'Current longitude, expressed in decimal degrees, of the simulated GPS.',
	'',
	'currentLongitude',
	0,
	170,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2646,
	2615);
INSERT INTO O_BATTR
	VALUES (2646,
	2615);
INSERT INTO O_ATTR
	VALUES (2646,
	2615,
	2650,
	'motionSegments',
	'The number of motion segments simulated by the GPS.',
	'',
	'motionSegments',
	0,
	13,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2615);
INSERT INTO O_ID
	VALUES (1,
	2615);
INSERT INTO O_ID
	VALUES (2,
	2615);
INSERT INTO SM_ASM
	VALUES (2651,
	2615);
INSERT INTO SM_SM
	VALUES (2651,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (2651);
INSERT INTO SM_LEVT
	VALUES (2627,
	2651,
	0);
INSERT INTO SM_SEVT
	VALUES (2627,
	2651,
	0);
INSERT INTO SM_EVT
	VALUES (2627,
	2651,
	0,
	1,
	'tick',
	0,
	'',
	'GPS_A1',
	'');
INSERT INTO SM_LEVT
	VALUES (2652,
	2651,
	0);
INSERT INTO SM_SEVT
	VALUES (2652,
	2651,
	0);
INSERT INTO SM_EVT
	VALUES (2652,
	2651,
	0,
	2,
	'registerListener',
	0,
	'',
	'GPS_A2',
	'');
INSERT INTO SM_LEVT
	VALUES (2653,
	2651,
	0);
INSERT INTO SM_SEVT
	VALUES (2653,
	2651,
	0);
INSERT INTO SM_EVT
	VALUES (2653,
	2651,
	0,
	3,
	'unregisterListener',
	0,
	'',
	'GPS_A3',
	'');
INSERT INTO SM_STATE
	VALUES (2654,
	2651,
	0,
	'idle',
	1,
	0);
INSERT INTO SM_EIGN
	VALUES (2654,
	2627,
	2651,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2654,
	2627,
	2651,
	0);
INSERT INTO SM_SEME
	VALUES (2654,
	2652,
	2651,
	0);
INSERT INTO SM_CH
	VALUES (2654,
	2653,
	2651,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2654,
	2653,
	2651,
	0);
INSERT INTO SM_MOAH
	VALUES (2655,
	2651,
	2654);
INSERT INTO SM_AH
	VALUES (2655,
	2651);
INSERT INTO SM_ACT
	VALUES (2655,
	2651,
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
	VALUES (2656,
	2651,
	2655);
INSERT INTO ACT_ACT
	VALUES (2656,
	'class state',
	0,
	2657,
	0,
	0,
	'GPS::idle',
	0);
INSERT INTO ACT_BLK
	VALUES (2657,
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
	2656,
	0);
INSERT INTO ACT_SMT
	VALUES (2658,
	2657,
	2659,
	2,
	1,
	'GPS::idle line: 2');
INSERT INTO ACT_FIO
	VALUES (2658,
	2660,
	1,
	'any',
	2615,
	2,
	34);
INSERT INTO ACT_SMT
	VALUES (2659,
	2657,
	2661,
	3,
	1,
	'GPS::idle line: 3');
INSERT INTO ACT_AI
	VALUES (2659,
	2662,
	2663,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2661,
	2657,
	2664,
	4,
	1,
	'GPS::idle line: 4');
INSERT INTO ACT_BRG
	VALUES (2661,
	2524,
	4,
	6,
	4,
	1);
INSERT INTO ACT_SMT
	VALUES (2664,
	2657,
	0,
	6,
	1,
	'GPS::idle line: 6');
INSERT INTO ACT_IF
	VALUES (2664,
	2665,
	2666,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2663,
	1,
	1,
	3,
	1,
	3,
	0,
	0,
	0,
	0,
	72,
	2657);
INSERT INTO V_TVL
	VALUES (2663,
	2667);
INSERT INTO V_VAL
	VALUES (2662,
	0,
	0,
	3,
	12,
	-1,
	3,
	25,
	0,
	0,
	72,
	2657);
INSERT INTO V_BRV
	VALUES (2662,
	2611,
	1,
	3,
	7);
INSERT INTO V_VAL
	VALUES (2668,
	0,
	0,
	3,
	41,
	43,
	0,
	0,
	0,
	0,
	70,
	2657);
INSERT INTO V_IRF
	VALUES (2668,
	2660);
INSERT INTO V_VAL
	VALUES (2669,
	0,
	0,
	3,
	45,
	49,
	0,
	0,
	0,
	0,
	313,
	2657);
INSERT INTO V_AVL
	VALUES (2669,
	2668,
	2615,
	2632);
INSERT INTO V_PAR
	VALUES (2669,
	0,
	2662,
	'timer_inst_ref',
	0,
	3,
	25);
INSERT INTO V_VAL
	VALUES (2670,
	0,
	0,
	4,
	23,
	54,
	0,
	0,
	0,
	0,
	96,
	2657);
INSERT INTO V_LST
	VALUES (2670,
	'Location listener unregistered.');
INSERT INTO V_PAR
	VALUES (2670,
	2661,
	0,
	'message',
	0,
	4,
	14);
INSERT INTO V_VAL
	VALUES (2671,
	0,
	0,
	6,
	10,
	12,
	0,
	0,
	0,
	0,
	72,
	2657);
INSERT INTO V_TVL
	VALUES (2671,
	2667);
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
	72,
	2657);
INSERT INTO V_UNY
	VALUES (2666,
	2671,
	'not');
INSERT INTO V_VAR
	VALUES (2660,
	2657,
	'gps',
	1,
	70);
INSERT INTO V_INT
	VALUES (2660,
	0,
	2615);
INSERT INTO V_VAR
	VALUES (2667,
	2657,
	'res',
	1,
	72);
INSERT INTO V_TRN
	VALUES (2667,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (2665,
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
	2656,
	0);
INSERT INTO ACT_SMT
	VALUES (2672,
	2665,
	0,
	7,
	3,
	'GPS::idle line: 7');
INSERT INTO ACT_BRG
	VALUES (2672,
	2520,
	7,
	8,
	7,
	3);
INSERT INTO V_VAL
	VALUES (2673,
	0,
	0,
	7,
	29,
	70,
	0,
	0,
	0,
	0,
	96,
	2665);
INSERT INTO V_LST
	VALUES (2673,
	'Location listener: timer_cancel() failed.');
INSERT INTO V_PAR
	VALUES (2673,
	2672,
	0,
	'message',
	0,
	7,
	20);
INSERT INTO SM_STATE
	VALUES (2674,
	2651,
	0,
	'locating',
	2,
	0);
INSERT INTO SM_SEME
	VALUES (2674,
	2627,
	2651,
	0);
INSERT INTO SM_CH
	VALUES (2674,
	2652,
	2651,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2674,
	2652,
	2651,
	0);
INSERT INTO SM_SEME
	VALUES (2674,
	2653,
	2651,
	0);
INSERT INTO SM_MOAH
	VALUES (2675,
	2651,
	2674);
INSERT INTO SM_AH
	VALUES (2675,
	2651);
INSERT INTO SM_ACT
	VALUES (2675,
	2651,
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
	VALUES (2676,
	2651,
	2675);
INSERT INTO ACT_ACT
	VALUES (2676,
	'class state',
	0,
	2677,
	0,
	0,
	'GPS::locating',
	0);
INSERT INTO ACT_BLK
	VALUES (2677,
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
	2676,
	0);
INSERT INTO ACT_SMT
	VALUES (2678,
	2677,
	2679,
	2,
	1,
	'GPS::locating line: 2');
INSERT INTO ACT_FIO
	VALUES (2678,
	2680,
	1,
	'any',
	2615,
	2,
	34);
INSERT INTO ACT_SMT
	VALUES (2679,
	2677,
	0,
	3,
	1,
	'GPS::locating line: 3');
INSERT INTO ACT_IF
	VALUES (2679,
	2681,
	2682,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2683,
	2677,
	0,
	6,
	1,
	'GPS::locating line: 6');
INSERT INTO ACT_EL
	VALUES (2683,
	2684,
	2685,
	2679);
INSERT INTO ACT_SMT
	VALUES (2686,
	2677,
	0,
	9,
	1,
	'GPS::locating line: 9');
INSERT INTO ACT_E
	VALUES (2686,
	2687,
	2679);
INSERT INTO V_VAL
	VALUES (2688,
	0,
	0,
	3,
	7,
	9,
	0,
	0,
	0,
	0,
	70,
	2677);
INSERT INTO V_IRF
	VALUES (2688,
	2680);
INSERT INTO V_VAL
	VALUES (2689,
	0,
	0,
	3,
	11,
	24,
	0,
	0,
	0,
	0,
	13,
	2677);
INSERT INTO V_AVL
	VALUES (2689,
	2688,
	2615,
	2646);
INSERT INTO V_VAL
	VALUES (2690,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	13,
	2677);
INSERT INTO V_BIN
	VALUES (2690,
	2691,
	2689,
	'%');
INSERT INTO V_VAL
	VALUES (2691,
	0,
	0,
	3,
	28,
	28,
	0,
	0,
	0,
	0,
	13,
	2677);
INSERT INTO V_LIN
	VALUES (2691,
	'3');
INSERT INTO V_VAL
	VALUES (2682,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	2677);
INSERT INTO V_BIN
	VALUES (2682,
	2692,
	2690,
	'==');
INSERT INTO V_VAL
	VALUES (2692,
	0,
	0,
	3,
	34,
	34,
	0,
	0,
	0,
	0,
	13,
	2677);
INSERT INTO V_LIN
	VALUES (2692,
	'0');
INSERT INTO V_VAL
	VALUES (2693,
	0,
	0,
	6,
	9,
	11,
	0,
	0,
	0,
	0,
	70,
	2677);
INSERT INTO V_IRF
	VALUES (2693,
	2680);
INSERT INTO V_VAL
	VALUES (2694,
	0,
	0,
	6,
	13,
	26,
	0,
	0,
	0,
	0,
	13,
	2677);
INSERT INTO V_AVL
	VALUES (2694,
	2693,
	2615,
	2646);
INSERT INTO V_VAL
	VALUES (2695,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	13,
	2677);
INSERT INTO V_BIN
	VALUES (2695,
	2696,
	2694,
	'%');
INSERT INTO V_VAL
	VALUES (2696,
	0,
	0,
	6,
	29,
	29,
	0,
	0,
	0,
	0,
	13,
	2677);
INSERT INTO V_LIN
	VALUES (2696,
	'5');
INSERT INTO V_VAL
	VALUES (2685,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	72,
	2677);
INSERT INTO V_BIN
	VALUES (2685,
	2697,
	2695,
	'==');
INSERT INTO V_VAL
	VALUES (2697,
	0,
	0,
	6,
	35,
	35,
	0,
	0,
	0,
	0,
	13,
	2677);
INSERT INTO V_LIN
	VALUES (2697,
	'0');
INSERT INTO V_VAR
	VALUES (2680,
	2677,
	'gps',
	1,
	70);
INSERT INTO V_INT
	VALUES (2680,
	0,
	2615);
INSERT INTO ACT_BLK
	VALUES (2681,
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
	2676,
	0);
INSERT INTO ACT_SMT
	VALUES (2698,
	2681,
	2699,
	4,
	3,
	'GPS::locating line: 4');
INSERT INTO ACT_AI
	VALUES (2698,
	2700,
	2701,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2699,
	2681,
	0,
	5,
	3,
	'GPS::locating line: 5');
INSERT INTO ACT_AI
	VALUES (2699,
	2702,
	2703,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2704,
	1,
	0,
	4,
	3,
	5,
	0,
	0,
	0,
	0,
	70,
	2681);
INSERT INTO V_IRF
	VALUES (2704,
	2680);
INSERT INTO V_VAL
	VALUES (2701,
	1,
	0,
	4,
	7,
	22,
	0,
	0,
	0,
	0,
	170,
	2681);
INSERT INTO V_AVL
	VALUES (2701,
	2704,
	2615,
	2650);
INSERT INTO V_VAL
	VALUES (2705,
	0,
	0,
	4,
	26,
	28,
	0,
	0,
	0,
	0,
	70,
	2681);
INSERT INTO V_IRF
	VALUES (2705,
	2680);
INSERT INTO V_VAL
	VALUES (2706,
	0,
	0,
	4,
	30,
	45,
	0,
	0,
	0,
	0,
	170,
	2681);
INSERT INTO V_AVL
	VALUES (2706,
	2705,
	2615,
	2650);
INSERT INTO V_VAL
	VALUES (2700,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	170,
	2681);
INSERT INTO V_BIN
	VALUES (2700,
	2707,
	2706,
	'+');
INSERT INTO V_VAL
	VALUES (2708,
	0,
	0,
	4,
	50,
	67,
	0,
	0,
	0,
	0,
	170,
	2681);
INSERT INTO V_SCV
	VALUES (2708,
	2506,
	170);
INSERT INTO V_VAL
	VALUES (2707,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	170,
	2681);
INSERT INTO V_BIN
	VALUES (2707,
	2709,
	2708,
	'*');
INSERT INTO V_VAL
	VALUES (2709,
	0,
	0,
	4,
	71,
	71,
	0,
	0,
	0,
	0,
	13,
	2681);
INSERT INTO V_LIN
	VALUES (2709,
	'2');
INSERT INTO V_VAL
	VALUES (2710,
	1,
	0,
	5,
	3,
	5,
	0,
	0,
	0,
	0,
	70,
	2681);
INSERT INTO V_IRF
	VALUES (2710,
	2680);
INSERT INTO V_VAL
	VALUES (2703,
	1,
	0,
	5,
	7,
	21,
	0,
	0,
	0,
	0,
	170,
	2681);
INSERT INTO V_AVL
	VALUES (2703,
	2710,
	2615,
	2648);
INSERT INTO V_VAL
	VALUES (2711,
	0,
	0,
	5,
	25,
	27,
	0,
	0,
	0,
	0,
	70,
	2681);
INSERT INTO V_IRF
	VALUES (2711,
	2680);
INSERT INTO V_VAL
	VALUES (2712,
	0,
	0,
	5,
	29,
	43,
	0,
	0,
	0,
	0,
	170,
	2681);
INSERT INTO V_AVL
	VALUES (2712,
	2711,
	2615,
	2648);
INSERT INTO V_VAL
	VALUES (2702,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	170,
	2681);
INSERT INTO V_BIN
	VALUES (2702,
	2713,
	2712,
	'+');
INSERT INTO V_VAL
	VALUES (2713,
	0,
	0,
	5,
	47,
	63,
	0,
	0,
	0,
	0,
	170,
	2681);
INSERT INTO V_SCV
	VALUES (2713,
	2507,
	170);
INSERT INTO ACT_BLK
	VALUES (2684,
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
	2676,
	0);
INSERT INTO ACT_SMT
	VALUES (2714,
	2684,
	2715,
	7,
	3,
	'GPS::locating line: 7');
INSERT INTO ACT_AI
	VALUES (2714,
	2716,
	2717,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2715,
	2684,
	0,
	8,
	3,
	'GPS::locating line: 8');
INSERT INTO ACT_AI
	VALUES (2715,
	2718,
	2719,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2720,
	1,
	0,
	7,
	3,
	5,
	0,
	0,
	0,
	0,
	70,
	2684);
INSERT INTO V_IRF
	VALUES (2720,
	2680);
INSERT INTO V_VAL
	VALUES (2717,
	1,
	0,
	7,
	7,
	22,
	0,
	0,
	0,
	0,
	170,
	2684);
INSERT INTO V_AVL
	VALUES (2717,
	2720,
	2615,
	2650);
INSERT INTO V_VAL
	VALUES (2721,
	0,
	0,
	7,
	26,
	28,
	0,
	0,
	0,
	0,
	70,
	2684);
INSERT INTO V_IRF
	VALUES (2721,
	2680);
INSERT INTO V_VAL
	VALUES (2722,
	0,
	0,
	7,
	30,
	45,
	0,
	0,
	0,
	0,
	170,
	2684);
INSERT INTO V_AVL
	VALUES (2722,
	2721,
	2615,
	2650);
INSERT INTO V_VAL
	VALUES (2716,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	170,
	2684);
INSERT INTO V_BIN
	VALUES (2716,
	2723,
	2722,
	'+');
INSERT INTO V_VAL
	VALUES (2723,
	0,
	0,
	7,
	49,
	66,
	0,
	0,
	0,
	0,
	170,
	2684);
INSERT INTO V_SCV
	VALUES (2723,
	2506,
	170);
INSERT INTO V_VAL
	VALUES (2724,
	1,
	0,
	8,
	3,
	5,
	0,
	0,
	0,
	0,
	70,
	2684);
INSERT INTO V_IRF
	VALUES (2724,
	2680);
INSERT INTO V_VAL
	VALUES (2719,
	1,
	0,
	8,
	7,
	21,
	0,
	0,
	0,
	0,
	170,
	2684);
INSERT INTO V_AVL
	VALUES (2719,
	2724,
	2615,
	2648);
INSERT INTO V_VAL
	VALUES (2725,
	0,
	0,
	8,
	25,
	27,
	0,
	0,
	0,
	0,
	70,
	2684);
INSERT INTO V_IRF
	VALUES (2725,
	2680);
INSERT INTO V_VAL
	VALUES (2726,
	0,
	0,
	8,
	29,
	43,
	0,
	0,
	0,
	0,
	170,
	2684);
INSERT INTO V_AVL
	VALUES (2726,
	2725,
	2615,
	2648);
INSERT INTO V_VAL
	VALUES (2718,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	170,
	2684);
INSERT INTO V_BIN
	VALUES (2718,
	2727,
	2726,
	'+');
INSERT INTO V_VAL
	VALUES (2728,
	0,
	0,
	8,
	48,
	64,
	0,
	0,
	0,
	0,
	170,
	2684);
INSERT INTO V_SCV
	VALUES (2728,
	2507,
	170);
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
	170,
	2684);
INSERT INTO V_BIN
	VALUES (2727,
	2729,
	2728,
	'*');
INSERT INTO V_VAL
	VALUES (2729,
	0,
	0,
	8,
	68,
	68,
	0,
	0,
	0,
	0,
	13,
	2684);
INSERT INTO V_LIN
	VALUES (2729,
	'3');
INSERT INTO ACT_BLK
	VALUES (2687,
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
	2676,
	0);
INSERT INTO ACT_SMT
	VALUES (2730,
	2687,
	2731,
	10,
	3,
	'GPS::locating line: 10');
INSERT INTO ACT_AI
	VALUES (2730,
	2732,
	2733,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2731,
	2687,
	0,
	11,
	3,
	'GPS::locating line: 11');
INSERT INTO ACT_AI
	VALUES (2731,
	2734,
	2735,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2736,
	1,
	0,
	10,
	3,
	5,
	0,
	0,
	0,
	0,
	70,
	2687);
INSERT INTO V_IRF
	VALUES (2736,
	2680);
INSERT INTO V_VAL
	VALUES (2733,
	1,
	0,
	10,
	7,
	22,
	0,
	0,
	0,
	0,
	170,
	2687);
INSERT INTO V_AVL
	VALUES (2733,
	2736,
	2615,
	2650);
INSERT INTO V_VAL
	VALUES (2737,
	0,
	0,
	10,
	26,
	28,
	0,
	0,
	0,
	0,
	70,
	2687);
INSERT INTO V_IRF
	VALUES (2737,
	2680);
INSERT INTO V_VAL
	VALUES (2738,
	0,
	0,
	10,
	30,
	45,
	0,
	0,
	0,
	0,
	170,
	2687);
INSERT INTO V_AVL
	VALUES (2738,
	2737,
	2615,
	2650);
INSERT INTO V_VAL
	VALUES (2732,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	170,
	2687);
INSERT INTO V_BIN
	VALUES (2732,
	2739,
	2738,
	'+');
INSERT INTO V_VAL
	VALUES (2739,
	0,
	0,
	10,
	49,
	66,
	0,
	0,
	0,
	0,
	170,
	2687);
INSERT INTO V_SCV
	VALUES (2739,
	2506,
	170);
INSERT INTO V_VAL
	VALUES (2740,
	1,
	0,
	11,
	3,
	5,
	0,
	0,
	0,
	0,
	70,
	2687);
INSERT INTO V_IRF
	VALUES (2740,
	2680);
INSERT INTO V_VAL
	VALUES (2735,
	1,
	0,
	11,
	7,
	21,
	0,
	0,
	0,
	0,
	170,
	2687);
INSERT INTO V_AVL
	VALUES (2735,
	2740,
	2615,
	2648);
INSERT INTO V_VAL
	VALUES (2741,
	0,
	0,
	11,
	25,
	27,
	0,
	0,
	0,
	0,
	70,
	2687);
INSERT INTO V_IRF
	VALUES (2741,
	2680);
INSERT INTO V_VAL
	VALUES (2742,
	0,
	0,
	11,
	29,
	43,
	0,
	0,
	0,
	0,
	170,
	2687);
INSERT INTO V_AVL
	VALUES (2742,
	2741,
	2615,
	2648);
INSERT INTO V_VAL
	VALUES (2734,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	170,
	2687);
INSERT INTO V_BIN
	VALUES (2734,
	2743,
	2742,
	'+');
INSERT INTO V_VAL
	VALUES (2743,
	0,
	0,
	11,
	47,
	63,
	0,
	0,
	0,
	0,
	170,
	2687);
INSERT INTO V_SCV
	VALUES (2743,
	2507,
	170);
INSERT INTO SM_NSTXN
	VALUES (2744,
	2651,
	2654,
	2652,
	0);
INSERT INTO SM_TAH
	VALUES (2745,
	2651,
	2744);
INSERT INTO SM_AH
	VALUES (2745,
	2651);
INSERT INTO SM_ACT
	VALUES (2745,
	2651,
	1,
	'// Activate the simulated GPS.
GPS::activate();

LOG::LogInfo(message: "Location listener registered.");
',
	'');
INSERT INTO ACT_TAB
	VALUES (2746,
	2651,
	2745);
INSERT INTO ACT_ACT
	VALUES (2746,
	'class transition',
	0,
	2747,
	0,
	0,
	'GPS_A2: registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2747,
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
	2746,
	0);
INSERT INTO ACT_SMT
	VALUES (2748,
	2747,
	2749,
	2,
	1,
	'GPS_A2: registerListener line: 2');
INSERT INTO ACT_TFM
	VALUES (2748,
	2616,
	0,
	2,
	6,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (2749,
	2747,
	0,
	4,
	1,
	'GPS_A2: registerListener line: 4');
INSERT INTO ACT_BRG
	VALUES (2749,
	2524,
	4,
	6,
	4,
	1);
INSERT INTO V_VAL
	VALUES (2750,
	0,
	0,
	4,
	23,
	52,
	0,
	0,
	0,
	0,
	96,
	2747);
INSERT INTO V_LST
	VALUES (2750,
	'Location listener registered.');
INSERT INTO V_PAR
	VALUES (2750,
	2749,
	0,
	'message',
	0,
	4,
	14);
INSERT INTO SM_TXN
	VALUES (2744,
	2651,
	2674,
	0);
INSERT INTO SM_NSTXN
	VALUES (2751,
	2651,
	2674,
	2653,
	0);
INSERT INTO SM_TAH
	VALUES (2752,
	2651,
	2751);
INSERT INTO SM_AH
	VALUES (2752,
	2651);
INSERT INTO SM_ACT
	VALUES (2752,
	2651,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2753,
	2651,
	2752);
INSERT INTO ACT_ACT
	VALUES (2753,
	'class transition',
	0,
	2754,
	0,
	0,
	'GPS_A3: unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (2754,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2753,
	0);
INSERT INTO SM_TXN
	VALUES (2751,
	2651,
	2654,
	0);
INSERT INTO SM_NSTXN
	VALUES (2755,
	2651,
	2674,
	2627,
	0);
INSERT INTO SM_TAH
	VALUES (2756,
	2651,
	2755);
INSERT INTO SM_AH
	VALUES (2756,
	2651);
INSERT INTO SM_ACT
	VALUES (2756,
	2651,
	1,
	'// Increment simulated motion segment count.
select any gps from instances of GPS;
gps.motionSegments = gps.motionSegments + 1;
',
	'');
INSERT INTO ACT_TAB
	VALUES (2757,
	2651,
	2756);
INSERT INTO ACT_ACT
	VALUES (2757,
	'class transition',
	0,
	2758,
	0,
	0,
	'GPS_A1: tick',
	0);
INSERT INTO ACT_BLK
	VALUES (2758,
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
	2757,
	0);
INSERT INTO ACT_SMT
	VALUES (2759,
	2758,
	2760,
	2,
	1,
	'GPS_A1: tick line: 2');
INSERT INTO ACT_FIO
	VALUES (2759,
	2761,
	1,
	'any',
	2615,
	2,
	34);
INSERT INTO ACT_SMT
	VALUES (2760,
	2758,
	0,
	3,
	1,
	'GPS_A1: tick line: 3');
INSERT INTO ACT_AI
	VALUES (2760,
	2762,
	2763,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2764,
	1,
	0,
	3,
	1,
	3,
	0,
	0,
	0,
	0,
	70,
	2758);
INSERT INTO V_IRF
	VALUES (2764,
	2761);
INSERT INTO V_VAL
	VALUES (2763,
	1,
	0,
	3,
	5,
	18,
	0,
	0,
	0,
	0,
	13,
	2758);
INSERT INTO V_AVL
	VALUES (2763,
	2764,
	2615,
	2646);
INSERT INTO V_VAL
	VALUES (2765,
	0,
	0,
	3,
	22,
	24,
	0,
	0,
	0,
	0,
	70,
	2758);
INSERT INTO V_IRF
	VALUES (2765,
	2761);
INSERT INTO V_VAL
	VALUES (2766,
	0,
	0,
	3,
	26,
	39,
	0,
	0,
	0,
	0,
	13,
	2758);
INSERT INTO V_AVL
	VALUES (2766,
	2765,
	2615,
	2646);
INSERT INTO V_VAL
	VALUES (2762,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	13,
	2758);
INSERT INTO V_BIN
	VALUES (2762,
	2767,
	2766,
	'+');
INSERT INTO V_VAL
	VALUES (2767,
	0,
	0,
	3,
	43,
	43,
	0,
	0,
	0,
	0,
	13,
	2758);
INSERT INTO V_LIN
	VALUES (2767,
	'1');
INSERT INTO V_VAR
	VALUES (2761,
	2758,
	'gps',
	1,
	70);
INSERT INTO V_INT
	VALUES (2761,
	0,
	2615);
INSERT INTO SM_TXN
	VALUES (2755,
	2651,
	2674,
	0);
INSERT INTO PE_PE
	VALUES (2768,
	1,
	2448,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (2768,
	0,
	2447,
	'shared',
	'',
	0);
INSERT INTO PE_PE
	VALUES (2769,
	1,
	2768,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (2769,
	'Distance',
	'kmPerDegree is a rough conversion figure valid for most latitude figures (except where 
the irregular shape of the earth perturbs the value) and for longitude figures
away from the poles (where the distance between longitude lines decreases to zero).

latitudeIncrement and longitudeIncrement specify the distance traveled by the simulated
GPS during each interval.');
INSERT INTO CNST_SYC
	VALUES (2494,
	'kmPerDegree',
	'',
	170,
	2769,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (2494,
	170);
INSERT INTO CNST_LSC
	VALUES (2494,
	170,
	'111.32');
INSERT INTO PE_PE
	VALUES (2770,
	1,
	2768,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (2770,
	'Speed',
	'SpeedAveragingWindow is the number of track points used to calculate the current average speed.
SecondsPerHour is the number of seconds in one hour.');
INSERT INTO CNST_SYC
	VALUES (1415,
	'SecondsPerHour',
	'',
	13,
	2770,
	1400,
	13);
INSERT INTO CNST_LFSC
	VALUES (1415,
	13);
INSERT INTO CNST_LSC
	VALUES (1415,
	13,
	'3600');
INSERT INTO CNST_SYC
	VALUES (1400,
	'SpeedAveragingWindow',
	'',
	13,
	2770,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (1400,
	13);
INSERT INTO CNST_LSC
	VALUES (1400,
	13,
	'5');
INSERT INTO PE_PE
	VALUES (2452,
	1,
	2768,
	0,
	6);
INSERT INTO C_I
	VALUES (2452,
	0,
	'Location',
	'');
INSERT INTO C_EP
	VALUES (2454,
	2452,
	-1,
	'getLocation',
	'');
INSERT INTO C_IO
	VALUES (2454,
	240,
	'getLocation',
	'',
	0,
	'',
	2458);
INSERT INTO C_PP
	VALUES (2771,
	2454,
	13,
	'latitude',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (2772,
	2454,
	13,
	'longitude',
	'',
	0,
	'',
	2771);
INSERT INTO C_EP
	VALUES (2458,
	2452,
	-1,
	'getDistance',
	'');
INSERT INTO C_IO
	VALUES (2458,
	170,
	'getDistance',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (2474,
	2458,
	13,
	'toLat',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (2476,
	2458,
	13,
	'fromLat',
	'',
	0,
	'',
	2474);
INSERT INTO C_PP
	VALUES (2479,
	2458,
	13,
	'toLong',
	'',
	0,
	'',
	2476);
INSERT INTO C_PP
	VALUES (2481,
	2458,
	13,
	'fromLong',
	'',
	0,
	'',
	2479);
INSERT INTO C_EP
	VALUES (2497,
	2452,
	-1,
	'registerListener',
	'');
INSERT INTO C_IO
	VALUES (2497,
	240,
	'registerListener',
	'',
	0,
	'',
	2454);
INSERT INTO C_EP
	VALUES (2501,
	2452,
	-1,
	'unregisterListener',
	'');
INSERT INTO C_IO
	VALUES (2501,
	240,
	'unregisterListener',
	'',
	0,
	'',
	2497);
