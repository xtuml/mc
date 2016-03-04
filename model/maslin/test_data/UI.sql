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
	'GuiBridge::setTime(time: param.time);',
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
	9,
	0);
INSERT INTO ACT_SMT
	VALUES (11,
	10,
	0,
	1,
	1,
	'UI::UI::setTime line: 1');
INSERT INTO ACT_BRG
	VALUES (11,
	12,
	1,
	12,
	1,
	1);
INSERT INTO V_VAL
	VALUES (13,
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
	20);
INSERT INTO SPR_PEP
	VALUES (16,
	17,
	5);
INSERT INTO SPR_PO
	VALUES (16,
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
	18,
	0);
INSERT INTO ACT_SMT
	VALUES (20,
	19,
	0,
	1,
	1,
	'UI::UI::setData line: 1');
INSERT INTO ACT_IF
	VALUES (20,
	21,
	22,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (23,
	19,
	0,
	3,
	1,
	'UI::UI::setData line: 3');
INSERT INTO ACT_EL
	VALUES (23,
	24,
	25,
	20);
INSERT INTO ACT_SMT
	VALUES (26,
	19,
	0,
	5,
	1,
	'UI::UI::setData line: 5');
INSERT INTO ACT_EL
	VALUES (26,
	27,
	28,
	20);
INSERT INTO ACT_SMT
	VALUES (29,
	19,
	0,
	7,
	1,
	'UI::UI::setData line: 7');
INSERT INTO ACT_EL
	VALUES (29,
	30,
	31,
	20);
INSERT INTO ACT_SMT
	VALUES (32,
	19,
	0,
	9,
	1,
	'UI::UI::setData line: 9');
INSERT INTO ACT_EL
	VALUES (32,
	33,
	34,
	20);
INSERT INTO ACT_SMT
	VALUES (35,
	19,
	0,
	11,
	1,
	'UI::UI::setData line: 11');
INSERT INTO ACT_EL
	VALUES (35,
	36,
	37,
	20);
INSERT INTO ACT_SMT
	VALUES (38,
	19,
	0,
	13,
	1,
	'UI::UI::setData line: 13');
INSERT INTO ACT_EL
	VALUES (38,
	39,
	40,
	20);
INSERT INTO ACT_SMT
	VALUES (41,
	19,
	0,
	15,
	1,
	'UI::UI::setData line: 15');
INSERT INTO ACT_EL
	VALUES (41,
	42,
	43,
	20);
INSERT INTO ACT_SMT
	VALUES (44,
	19,
	0,
	17,
	1,
	'UI::UI::setData line: 17');
INSERT INTO ACT_EL
	VALUES (44,
	45,
	46,
	20);
INSERT INTO ACT_SMT
	VALUES (47,
	19,
	0,
	19,
	1,
	'UI::UI::setData line: 19');
INSERT INTO ACT_EL
	VALUES (47,
	48,
	49,
	20);
INSERT INTO ACT_SMT
	VALUES (50,
	19,
	0,
	21,
	1,
	'UI::UI::setData line: 21');
INSERT INTO ACT_EL
	VALUES (50,
	51,
	52,
	20);
INSERT INTO V_VAL
	VALUES (53,
	0,
	0,
	1,
	11,
	14,
	0,
	0,
	0,
	0,
	54,
	19);
INSERT INTO V_PVL
	VALUES (53,
	0,
	0,
	0,
	55);
INSERT INTO V_VAL
	VALUES (22,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	19);
INSERT INTO V_BIN
	VALUES (22,
	57,
	53,
	'==');
INSERT INTO V_VAL
	VALUES (57,
	0,
	0,
	1,
	25,
	26,
	0,
	0,
	0,
	0,
	54,
	19);
INSERT INTO V_LEN
	VALUES (57,
	58,
	1,
	19);
INSERT INTO V_VAL
	VALUES (59,
	0,
	0,
	3,
	13,
	16,
	0,
	0,
	0,
	0,
	54,
	19);
INSERT INTO V_PVL
	VALUES (59,
	0,
	0,
	0,
	55);
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
	56,
	19);
INSERT INTO V_BIN
	VALUES (25,
	60,
	59,
	'==');
INSERT INTO V_VAL
	VALUES (60,
	0,
	0,
	3,
	27,
	32,
	0,
	0,
	0,
	0,
	54,
	19);
INSERT INTO V_LEN
	VALUES (60,
	61,
	3,
	21);
INSERT INTO V_VAL
	VALUES (62,
	0,
	0,
	5,
	13,
	16,
	0,
	0,
	0,
	0,
	54,
	19);
INSERT INTO V_PVL
	VALUES (62,
	0,
	0,
	0,
	55);
INSERT INTO V_VAL
	VALUES (28,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	19);
INSERT INTO V_BIN
	VALUES (28,
	63,
	62,
	'==');
INSERT INTO V_VAL
	VALUES (63,
	0,
	0,
	5,
	27,
	34,
	0,
	0,
	0,
	0,
	54,
	19);
INSERT INTO V_LEN
	VALUES (63,
	64,
	5,
	21);
INSERT INTO V_VAL
	VALUES (65,
	0,
	0,
	7,
	13,
	16,
	0,
	0,
	0,
	0,
	54,
	19);
INSERT INTO V_PVL
	VALUES (65,
	0,
	0,
	0,
	55);
INSERT INTO V_VAL
	VALUES (31,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	19);
INSERT INTO V_BIN
	VALUES (31,
	66,
	65,
	'==');
INSERT INTO V_VAL
	VALUES (66,
	0,
	0,
	7,
	27,
	35,
	0,
	0,
	0,
	0,
	54,
	19);
INSERT INTO V_LEN
	VALUES (66,
	67,
	7,
	21);
INSERT INTO V_VAL
	VALUES (68,
	0,
	0,
	9,
	13,
	16,
	0,
	0,
	0,
	0,
	54,
	19);
INSERT INTO V_PVL
	VALUES (68,
	0,
	0,
	0,
	55);
INSERT INTO V_VAL
	VALUES (34,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	19);
INSERT INTO V_BIN
	VALUES (34,
	69,
	68,
	'==');
INSERT INTO V_VAL
	VALUES (69,
	0,
	0,
	9,
	27,
	31,
	0,
	0,
	0,
	0,
	54,
	19);
INSERT INTO V_LEN
	VALUES (69,
	70,
	9,
	21);
INSERT INTO V_VAL
	VALUES (71,
	0,
	0,
	11,
	13,
	16,
	0,
	0,
	0,
	0,
	54,
	19);
INSERT INTO V_PVL
	VALUES (71,
	0,
	0,
	0,
	55);
INSERT INTO V_VAL
	VALUES (37,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	19);
INSERT INTO V_BIN
	VALUES (37,
	72,
	71,
	'==');
INSERT INTO V_VAL
	VALUES (72,
	0,
	0,
	11,
	27,
	31,
	0,
	0,
	0,
	0,
	54,
	19);
INSERT INTO V_LEN
	VALUES (72,
	73,
	11,
	21);
INSERT INTO V_VAL
	VALUES (74,
	0,
	0,
	13,
	13,
	16,
	0,
	0,
	0,
	0,
	54,
	19);
INSERT INTO V_PVL
	VALUES (74,
	0,
	0,
	0,
	55);
INSERT INTO V_VAL
	VALUES (40,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	19);
INSERT INTO V_BIN
	VALUES (40,
	75,
	74,
	'==');
INSERT INTO V_VAL
	VALUES (75,
	0,
	0,
	13,
	27,
	30,
	0,
	0,
	0,
	0,
	54,
	19);
INSERT INTO V_LEN
	VALUES (75,
	76,
	13,
	21);
INSERT INTO V_VAL
	VALUES (77,
	0,
	0,
	15,
	13,
	16,
	0,
	0,
	0,
	0,
	54,
	19);
INSERT INTO V_PVL
	VALUES (77,
	0,
	0,
	0,
	55);
INSERT INTO V_VAL
	VALUES (43,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	19);
INSERT INTO V_BIN
	VALUES (43,
	78,
	77,
	'==');
INSERT INTO V_VAL
	VALUES (78,
	0,
	0,
	15,
	27,
	36,
	0,
	0,
	0,
	0,
	54,
	19);
INSERT INTO V_LEN
	VALUES (78,
	79,
	15,
	21);
INSERT INTO V_VAL
	VALUES (80,
	0,
	0,
	17,
	13,
	16,
	0,
	0,
	0,
	0,
	54,
	19);
INSERT INTO V_PVL
	VALUES (80,
	0,
	0,
	0,
	55);
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
	56,
	19);
INSERT INTO V_BIN
	VALUES (46,
	81,
	80,
	'==');
INSERT INTO V_VAL
	VALUES (81,
	0,
	0,
	17,
	27,
	29,
	0,
	0,
	0,
	0,
	54,
	19);
INSERT INTO V_LEN
	VALUES (81,
	82,
	17,
	21);
INSERT INTO V_VAL
	VALUES (83,
	0,
	0,
	19,
	13,
	16,
	0,
	0,
	0,
	0,
	54,
	19);
INSERT INTO V_PVL
	VALUES (83,
	0,
	0,
	0,
	55);
INSERT INTO V_VAL
	VALUES (49,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	19);
INSERT INTO V_BIN
	VALUES (49,
	84,
	83,
	'==');
INSERT INTO V_VAL
	VALUES (84,
	0,
	0,
	19,
	27,
	29,
	0,
	0,
	0,
	0,
	54,
	19);
INSERT INTO V_LEN
	VALUES (84,
	85,
	19,
	21);
INSERT INTO V_VAL
	VALUES (86,
	0,
	0,
	21,
	13,
	16,
	0,
	0,
	0,
	0,
	54,
	19);
INSERT INTO V_PVL
	VALUES (86,
	0,
	0,
	0,
	55);
INSERT INTO V_VAL
	VALUES (52,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	19);
INSERT INTO V_BIN
	VALUES (52,
	87,
	86,
	'==');
INSERT INTO V_VAL
	VALUES (87,
	0,
	0,
	21,
	27,
	30,
	0,
	0,
	0,
	0,
	54,
	19);
INSERT INTO V_LEN
	VALUES (87,
	88,
	21,
	21);
INSERT INTO ACT_BLK
	VALUES (21,
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
	18,
	0);
INSERT INTO ACT_SMT
	VALUES (89,
	21,
	0,
	2,
	3,
	'UI::UI::setData line: 2');
INSERT INTO ACT_BRG
	VALUES (89,
	90,
	2,
	14,
	2,
	3);
INSERT INTO V_VAL
	VALUES (91,
	0,
	0,
	2,
	35,
	39,
	0,
	0,
	0,
	0,
	92,
	21);
INSERT INTO V_PVL
	VALUES (91,
	0,
	0,
	0,
	93);
INSERT INTO V_PAR
	VALUES (91,
	89,
	0,
	'value',
	94,
	2,
	22);
INSERT INTO V_VAL
	VALUES (94,
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
	21);
INSERT INTO V_LIN
	VALUES (94,
	'0');
INSERT INTO V_PAR
	VALUES (94,
	89,
	0,
	'unit',
	0,
	2,
	42);
INSERT INTO ACT_BLK
	VALUES (24,
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
	18,
	0);
INSERT INTO ACT_SMT
	VALUES (95,
	24,
	0,
	4,
	3,
	'UI::UI::setData line: 4');
INSERT INTO ACT_BRG
	VALUES (95,
	90,
	4,
	14,
	4,
	3);
INSERT INTO V_VAL
	VALUES (96,
	0,
	0,
	4,
	35,
	39,
	0,
	0,
	0,
	0,
	92,
	24);
INSERT INTO V_PVL
	VALUES (96,
	0,
	0,
	0,
	93);
INSERT INTO V_PAR
	VALUES (96,
	95,
	0,
	'value',
	97,
	4,
	22);
INSERT INTO V_VAL
	VALUES (97,
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
	24);
INSERT INTO V_LIN
	VALUES (97,
	'1');
INSERT INTO V_PAR
	VALUES (97,
	95,
	0,
	'unit',
	0,
	4,
	42);
INSERT INTO ACT_BLK
	VALUES (27,
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
	18,
	0);
INSERT INTO ACT_SMT
	VALUES (98,
	27,
	0,
	6,
	3,
	'UI::UI::setData line: 6');
INSERT INTO ACT_BRG
	VALUES (98,
	90,
	6,
	14,
	6,
	3);
INSERT INTO V_VAL
	VALUES (99,
	0,
	0,
	6,
	35,
	39,
	0,
	0,
	0,
	0,
	92,
	27);
INSERT INTO V_PVL
	VALUES (99,
	0,
	0,
	0,
	93);
INSERT INTO V_PAR
	VALUES (99,
	98,
	0,
	'value',
	100,
	6,
	22);
INSERT INTO V_VAL
	VALUES (100,
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
	27);
INSERT INTO V_LIN
	VALUES (100,
	'2');
INSERT INTO V_PAR
	VALUES (100,
	98,
	0,
	'unit',
	0,
	6,
	42);
INSERT INTO ACT_BLK
	VALUES (30,
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
	18,
	0);
INSERT INTO ACT_SMT
	VALUES (101,
	30,
	0,
	8,
	3,
	'UI::UI::setData line: 8');
INSERT INTO ACT_BRG
	VALUES (101,
	90,
	8,
	14,
	8,
	3);
INSERT INTO V_VAL
	VALUES (102,
	0,
	0,
	8,
	35,
	39,
	0,
	0,
	0,
	0,
	92,
	30);
INSERT INTO V_PVL
	VALUES (102,
	0,
	0,
	0,
	93);
INSERT INTO V_PAR
	VALUES (102,
	101,
	0,
	'value',
	103,
	8,
	22);
INSERT INTO V_VAL
	VALUES (103,
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
	30);
INSERT INTO V_LIN
	VALUES (103,
	'3');
INSERT INTO V_PAR
	VALUES (103,
	101,
	0,
	'unit',
	0,
	8,
	42);
INSERT INTO ACT_BLK
	VALUES (33,
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
	18,
	0);
INSERT INTO ACT_SMT
	VALUES (104,
	33,
	0,
	10,
	3,
	'UI::UI::setData line: 10');
INSERT INTO ACT_BRG
	VALUES (104,
	90,
	10,
	14,
	10,
	3);
INSERT INTO V_VAL
	VALUES (105,
	0,
	0,
	10,
	35,
	39,
	0,
	0,
	0,
	0,
	92,
	33);
INSERT INTO V_PVL
	VALUES (105,
	0,
	0,
	0,
	93);
INSERT INTO V_PAR
	VALUES (105,
	104,
	0,
	'value',
	106,
	10,
	22);
INSERT INTO V_VAL
	VALUES (106,
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
	33);
INSERT INTO V_LIN
	VALUES (106,
	'4');
INSERT INTO V_PAR
	VALUES (106,
	104,
	0,
	'unit',
	0,
	10,
	42);
INSERT INTO ACT_BLK
	VALUES (36,
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
	18,
	0);
INSERT INTO ACT_SMT
	VALUES (107,
	36,
	0,
	12,
	3,
	'UI::UI::setData line: 12');
INSERT INTO ACT_BRG
	VALUES (107,
	90,
	12,
	14,
	12,
	3);
INSERT INTO V_VAL
	VALUES (108,
	0,
	0,
	12,
	35,
	39,
	0,
	0,
	0,
	0,
	92,
	36);
INSERT INTO V_PVL
	VALUES (108,
	0,
	0,
	0,
	93);
INSERT INTO V_PAR
	VALUES (108,
	107,
	0,
	'value',
	109,
	12,
	22);
INSERT INTO V_VAL
	VALUES (109,
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
	36);
INSERT INTO V_LIN
	VALUES (109,
	'5');
INSERT INTO V_PAR
	VALUES (109,
	107,
	0,
	'unit',
	0,
	12,
	42);
INSERT INTO ACT_BLK
	VALUES (39,
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
	18,
	0);
INSERT INTO ACT_SMT
	VALUES (110,
	39,
	0,
	14,
	3,
	'UI::UI::setData line: 14');
INSERT INTO ACT_BRG
	VALUES (110,
	90,
	14,
	14,
	14,
	3);
INSERT INTO V_VAL
	VALUES (111,
	0,
	0,
	14,
	35,
	39,
	0,
	0,
	0,
	0,
	92,
	39);
INSERT INTO V_PVL
	VALUES (111,
	0,
	0,
	0,
	93);
INSERT INTO V_PAR
	VALUES (111,
	110,
	0,
	'value',
	112,
	14,
	22);
INSERT INTO V_VAL
	VALUES (112,
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
	39);
INSERT INTO V_LIN
	VALUES (112,
	'6');
INSERT INTO V_PAR
	VALUES (112,
	110,
	0,
	'unit',
	0,
	14,
	42);
INSERT INTO ACT_BLK
	VALUES (42,
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
	18,
	0);
INSERT INTO ACT_SMT
	VALUES (113,
	42,
	0,
	16,
	3,
	'UI::UI::setData line: 16');
INSERT INTO ACT_BRG
	VALUES (113,
	90,
	16,
	14,
	16,
	3);
INSERT INTO V_VAL
	VALUES (114,
	0,
	0,
	16,
	35,
	39,
	0,
	0,
	0,
	0,
	92,
	42);
INSERT INTO V_PVL
	VALUES (114,
	0,
	0,
	0,
	93);
INSERT INTO V_PAR
	VALUES (114,
	113,
	0,
	'value',
	115,
	16,
	22);
INSERT INTO V_VAL
	VALUES (115,
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
	42);
INSERT INTO V_LIN
	VALUES (115,
	'7');
INSERT INTO V_PAR
	VALUES (115,
	113,
	0,
	'unit',
	0,
	16,
	42);
INSERT INTO ACT_BLK
	VALUES (45,
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
	18,
	0);
INSERT INTO ACT_SMT
	VALUES (116,
	45,
	0,
	18,
	3,
	'UI::UI::setData line: 18');
INSERT INTO ACT_BRG
	VALUES (116,
	90,
	18,
	14,
	18,
	3);
INSERT INTO V_VAL
	VALUES (117,
	0,
	0,
	18,
	35,
	39,
	0,
	0,
	0,
	0,
	92,
	45);
INSERT INTO V_PVL
	VALUES (117,
	0,
	0,
	0,
	93);
INSERT INTO V_PAR
	VALUES (117,
	116,
	0,
	'value',
	118,
	18,
	22);
INSERT INTO V_VAL
	VALUES (118,
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
	45);
INSERT INTO V_LIN
	VALUES (118,
	'8');
INSERT INTO V_PAR
	VALUES (118,
	116,
	0,
	'unit',
	0,
	18,
	42);
INSERT INTO ACT_BLK
	VALUES (48,
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
	18,
	0);
INSERT INTO ACT_SMT
	VALUES (119,
	48,
	0,
	20,
	3,
	'UI::UI::setData line: 20');
INSERT INTO ACT_BRG
	VALUES (119,
	90,
	20,
	14,
	20,
	3);
INSERT INTO V_VAL
	VALUES (120,
	0,
	0,
	20,
	35,
	39,
	0,
	0,
	0,
	0,
	92,
	48);
INSERT INTO V_PVL
	VALUES (120,
	0,
	0,
	0,
	93);
INSERT INTO V_PAR
	VALUES (120,
	119,
	0,
	'value',
	121,
	20,
	22);
INSERT INTO V_VAL
	VALUES (121,
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
	48);
INSERT INTO V_LIN
	VALUES (121,
	'9');
INSERT INTO V_PAR
	VALUES (121,
	119,
	0,
	'unit',
	0,
	20,
	42);
INSERT INTO ACT_BLK
	VALUES (51,
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
	18,
	0);
INSERT INTO ACT_SMT
	VALUES (122,
	51,
	0,
	22,
	3,
	'UI::UI::setData line: 22');
INSERT INTO ACT_BRG
	VALUES (122,
	90,
	22,
	14,
	22,
	3);
INSERT INTO V_VAL
	VALUES (123,
	0,
	0,
	22,
	35,
	39,
	0,
	0,
	0,
	0,
	92,
	51);
INSERT INTO V_PVL
	VALUES (123,
	0,
	0,
	0,
	93);
INSERT INTO V_PAR
	VALUES (123,
	122,
	0,
	'value',
	124,
	22,
	22);
INSERT INTO V_VAL
	VALUES (124,
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
	51);
INSERT INTO V_LIN
	VALUES (124,
	'10');
INSERT INTO V_PAR
	VALUES (124,
	122,
	0,
	'unit',
	0,
	22,
	42);
INSERT INTO SPR_PEP
	VALUES (125,
	126,
	5);
INSERT INTO SPR_PO
	VALUES (125,
	'startTest',
	'',
	'generate TestCase2:start(iterations: 2) to TestCase creator;',
	1);
INSERT INTO ACT_POB
	VALUES (127,
	125);
INSERT INTO ACT_ACT
	VALUES (127,
	'interface operation',
	0,
	128,
	0,
	0,
	'UI::UI::startTest',
	0);
INSERT INTO ACT_BLK
	VALUES (128,
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
	127,
	0);
INSERT INTO ACT_SMT
	VALUES (129,
	128,
	0,
	1,
	1,
	'UI::UI::startTest line: 1');
INSERT INTO E_ESS
	VALUES (129,
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
	VALUES (130,
	129,
	0,
	'iterations',
	0,
	1,
	26);
INSERT INTO E_GES
	VALUES (129);
INSERT INTO E_GSME
	VALUES (129,
	131);
INSERT INTO E_GEC
	VALUES (129);
INSERT INTO V_VAL
	VALUES (130,
	0,
	0,
	1,
	38,
	38,
	0,
	0,
	0,
	0,
	14,
	128);
INSERT INTO V_LIN
	VALUES (130,
	'2');
INSERT INTO SPR_PEP
	VALUES (132,
	133,
	5);
INSERT INTO SPR_PO
	VALUES (132,
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
	VALUES (134,
	132);
INSERT INTO ACT_ACT
	VALUES (134,
	'interface operation',
	0,
	135,
	0,
	0,
	'UI::UI::setIndicator',
	0);
INSERT INTO ACT_BLK
	VALUES (135,
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
	134,
	0);
INSERT INTO ACT_SMT
	VALUES (136,
	135,
	0,
	2,
	1,
	'UI::UI::setIndicator line: 2');
INSERT INTO ACT_IF
	VALUES (136,
	137,
	138,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (139,
	135,
	0,
	4,
	1,
	'UI::UI::setIndicator line: 4');
INSERT INTO ACT_EL
	VALUES (139,
	140,
	141,
	136);
INSERT INTO ACT_SMT
	VALUES (142,
	135,
	0,
	6,
	1,
	'UI::UI::setIndicator line: 6');
INSERT INTO ACT_EL
	VALUES (142,
	143,
	144,
	136);
INSERT INTO ACT_SMT
	VALUES (145,
	135,
	0,
	8,
	1,
	'UI::UI::setIndicator line: 8');
INSERT INTO ACT_EL
	VALUES (145,
	146,
	147,
	136);
INSERT INTO V_VAL
	VALUES (148,
	0,
	0,
	2,
	12,
	20,
	0,
	0,
	0,
	0,
	149,
	135);
INSERT INTO V_PVL
	VALUES (148,
	0,
	0,
	0,
	150);
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
	56,
	135);
INSERT INTO V_BIN
	VALUES (138,
	151,
	148,
	'==');
INSERT INTO V_VAL
	VALUES (151,
	0,
	0,
	2,
	36,
	40,
	0,
	0,
	0,
	0,
	149,
	135);
INSERT INTO V_LEN
	VALUES (151,
	152,
	2,
	25);
INSERT INTO V_VAL
	VALUES (153,
	0,
	0,
	4,
	14,
	22,
	0,
	0,
	0,
	0,
	149,
	135);
INSERT INTO V_PVL
	VALUES (153,
	0,
	0,
	0,
	150);
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
	56,
	135);
INSERT INTO V_BIN
	VALUES (141,
	154,
	153,
	'==');
INSERT INTO V_VAL
	VALUES (154,
	0,
	0,
	4,
	38,
	41,
	0,
	0,
	0,
	0,
	149,
	135);
INSERT INTO V_LEN
	VALUES (154,
	155,
	4,
	27);
INSERT INTO V_VAL
	VALUES (156,
	0,
	0,
	6,
	14,
	22,
	0,
	0,
	0,
	0,
	149,
	135);
INSERT INTO V_PVL
	VALUES (156,
	0,
	0,
	0,
	150);
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
	56,
	135);
INSERT INTO V_BIN
	VALUES (144,
	157,
	156,
	'==');
INSERT INTO V_VAL
	VALUES (157,
	0,
	0,
	6,
	38,
	41,
	0,
	0,
	0,
	0,
	149,
	135);
INSERT INTO V_LEN
	VALUES (157,
	158,
	6,
	27);
INSERT INTO V_VAL
	VALUES (159,
	0,
	0,
	8,
	14,
	22,
	0,
	0,
	0,
	0,
	149,
	135);
INSERT INTO V_PVL
	VALUES (159,
	0,
	0,
	0,
	150);
INSERT INTO V_VAL
	VALUES (147,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	135);
INSERT INTO V_BIN
	VALUES (147,
	160,
	159,
	'==');
INSERT INTO V_VAL
	VALUES (160,
	0,
	0,
	8,
	38,
	39,
	0,
	0,
	0,
	0,
	149,
	135);
INSERT INTO V_LEN
	VALUES (160,
	161,
	8,
	27);
INSERT INTO ACT_BLK
	VALUES (137,
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
	134,
	0);
INSERT INTO ACT_SMT
	VALUES (162,
	137,
	0,
	3,
	3,
	'UI::UI::setIndicator line: 3');
INSERT INTO ACT_BRG
	VALUES (162,
	163,
	3,
	14,
	3,
	3);
INSERT INTO V_VAL
	VALUES (164,
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
	137);
INSERT INTO V_LIN
	VALUES (164,
	'0');
INSERT INTO V_PAR
	VALUES (164,
	162,
	0,
	'value',
	0,
	3,
	28);
INSERT INTO ACT_BLK
	VALUES (140,
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
	134,
	0);
INSERT INTO ACT_SMT
	VALUES (165,
	140,
	0,
	5,
	3,
	'UI::UI::setIndicator line: 5');
INSERT INTO ACT_BRG
	VALUES (165,
	163,
	5,
	14,
	5,
	3);
INSERT INTO V_VAL
	VALUES (166,
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
	140);
INSERT INTO V_LIN
	VALUES (166,
	'1');
INSERT INTO V_PAR
	VALUES (166,
	165,
	0,
	'value',
	0,
	5,
	28);
INSERT INTO ACT_BLK
	VALUES (143,
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
	134,
	0);
INSERT INTO ACT_SMT
	VALUES (167,
	143,
	0,
	7,
	3,
	'UI::UI::setIndicator line: 7');
INSERT INTO ACT_BRG
	VALUES (167,
	163,
	7,
	14,
	7,
	3);
INSERT INTO V_VAL
	VALUES (168,
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
	143);
INSERT INTO V_LIN
	VALUES (168,
	'2');
INSERT INTO V_PAR
	VALUES (168,
	167,
	0,
	'value',
	0,
	7,
	28);
INSERT INTO ACT_BLK
	VALUES (146,
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
	134,
	0);
INSERT INTO ACT_SMT
	VALUES (169,
	146,
	0,
	9,
	3,
	'UI::UI::setIndicator line: 9');
INSERT INTO ACT_BRG
	VALUES (169,
	163,
	9,
	14,
	9,
	3);
INSERT INTO V_VAL
	VALUES (170,
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
	146);
INSERT INTO V_LIN
	VALUES (170,
	'3');
INSERT INTO V_PAR
	VALUES (170,
	169,
	0,
	'value',
	0,
	9,
	28);
INSERT INTO SPR_PEP
	VALUES (171,
	172,
	5);
INSERT INTO SPR_PO
	VALUES (171,
	'newGoalSpec',
	'',
	'',
	1);
INSERT INTO ACT_POB
	VALUES (173,
	171);
INSERT INTO ACT_ACT
	VALUES (173,
	'interface operation',
	0,
	174,
	0,
	0,
	'UI::UI::newGoalSpec',
	0);
INSERT INTO ACT_BLK
	VALUES (174,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
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
INSERT INTO C_PO
	VALUES (175,
	3,
	'Tracking',
	0,
	0);
INSERT INTO C_IR
	VALUES (176,
	177,
	0,
	175);
INSERT INTO C_R
	VALUES (176,
	'UITracking',
	'',
	'Unnamed Interface',
	'UI::Tracking::UITracking');
INSERT INTO SPR_REP
	VALUES (178,
	179,
	176);
INSERT INTO SPR_RO
	VALUES (178,
	'setTargetPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (180,
	178);
INSERT INTO ACT_ACT
	VALUES (180,
	'interface operation',
	0,
	181,
	0,
	0,
	'Tracking::UITracking::setTargetPressed',
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
INSERT INTO SPR_REP
	VALUES (182,
	183,
	176);
INSERT INTO SPR_RO
	VALUES (182,
	'startStopPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (184,
	182);
INSERT INTO ACT_ACT
	VALUES (184,
	'interface operation',
	0,
	185,
	0,
	0,
	'Tracking::UITracking::startStopPressed',
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
INSERT INTO SPR_REP
	VALUES (186,
	187,
	176);
INSERT INTO SPR_RO
	VALUES (186,
	'lapResetPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (188,
	186);
INSERT INTO ACT_ACT
	VALUES (188,
	'interface operation',
	0,
	189,
	0,
	0,
	'Tracking::UITracking::lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (189,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	188,
	0);
INSERT INTO SPR_REP
	VALUES (190,
	191,
	176);
INSERT INTO SPR_RO
	VALUES (190,
	'modePressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (192,
	190);
INSERT INTO ACT_ACT
	VALUES (192,
	'interface operation',
	0,
	193,
	0,
	0,
	'Tracking::UITracking::modePressed',
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
INSERT INTO SPR_REP
	VALUES (194,
	195,
	176);
INSERT INTO SPR_RO
	VALUES (194,
	'newGoalSpec',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (196,
	194);
INSERT INTO ACT_ACT
	VALUES (196,
	'interface operation',
	0,
	197,
	0,
	0,
	'Tracking::UITracking::newGoalSpec',
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
INSERT INTO SPR_REP
	VALUES (198,
	199,
	176);
INSERT INTO SPR_RO
	VALUES (198,
	'lightPressed',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (200,
	198);
INSERT INTO ACT_ACT
	VALUES (200,
	'interface operation',
	0,
	201,
	0,
	0,
	'Tracking::UITracking::lightPressed',
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
INSERT INTO PE_PE
	VALUES (202,
	1,
	0,
	3,
	7);
INSERT INTO EP_PKG
	VALUES (202,
	0,
	1,
	'ButtonFunctions',
	'Each function within this package represents one of the buttons
on the watch.  When a function is executed, it sends the 
corresponding interface signal out through the UI port.
This allows a user executing models in Verifier to simulate
the use of the watch by invoking these functions to 
represent button pushes.',
	0);
INSERT INTO PE_PE
	VALUES (203,
	1,
	202,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (203,
	0,
	'sendLapResetPressed',
	'',
	'send Tracking::lapResetPressed();',
	204,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (205,
	203);
INSERT INTO ACT_ACT
	VALUES (205,
	'function',
	0,
	206,
	0,
	0,
	'sendLapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (206,
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
	205,
	0);
INSERT INTO ACT_SMT
	VALUES (207,
	206,
	0,
	1,
	1,
	'sendLapResetPressed line: 1');
INSERT INTO ACT_IOP
	VALUES (207,
	1,
	16,
	1,
	6,
	0,
	186,
	0);
INSERT INTO PE_PE
	VALUES (208,
	1,
	202,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (208,
	0,
	'sendLightPressed',
	'',
	'send Tracking::lightPressed();',
	204,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (209,
	208);
INSERT INTO ACT_ACT
	VALUES (209,
	'function',
	0,
	210,
	0,
	0,
	'sendLightPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (210,
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
	209,
	0);
INSERT INTO ACT_SMT
	VALUES (211,
	210,
	0,
	1,
	1,
	'sendLightPressed line: 1');
INSERT INTO ACT_IOP
	VALUES (211,
	1,
	16,
	1,
	6,
	0,
	198,
	0);
INSERT INTO PE_PE
	VALUES (212,
	1,
	202,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (212,
	0,
	'sendModePressed',
	'',
	'send Tracking::modePressed();',
	204,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (213,
	212);
INSERT INTO ACT_ACT
	VALUES (213,
	'function',
	0,
	214,
	0,
	0,
	'sendModePressed',
	0);
INSERT INTO ACT_BLK
	VALUES (214,
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
	213,
	0);
INSERT INTO ACT_SMT
	VALUES (215,
	214,
	0,
	1,
	1,
	'sendModePressed line: 1');
INSERT INTO ACT_IOP
	VALUES (215,
	1,
	16,
	1,
	6,
	0,
	190,
	0);
INSERT INTO PE_PE
	VALUES (216,
	1,
	202,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (216,
	0,
	'sendStartStopPressed',
	'',
	'send Tracking::startStopPressed();',
	204,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (217,
	216);
INSERT INTO ACT_ACT
	VALUES (217,
	'function',
	0,
	218,
	0,
	0,
	'sendStartStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (218,
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
	217,
	0);
INSERT INTO ACT_SMT
	VALUES (219,
	218,
	0,
	1,
	1,
	'sendStartStopPressed line: 1');
INSERT INTO ACT_IOP
	VALUES (219,
	1,
	16,
	1,
	6,
	0,
	182,
	0);
INSERT INTO PE_PE
	VALUES (220,
	1,
	202,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (220,
	0,
	'sendTargetPressed',
	'',
	'send Tracking::setTargetPressed();',
	204,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (221,
	220);
INSERT INTO ACT_ACT
	VALUES (221,
	'function',
	0,
	222,
	0,
	0,
	'sendTargetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (222,
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
	221,
	0);
INSERT INTO ACT_SMT
	VALUES (223,
	222,
	0,
	1,
	1,
	'sendTargetPressed line: 1');
INSERT INTO ACT_IOP
	VALUES (223,
	1,
	16,
	1,
	6,
	0,
	178,
	0);
INSERT INTO PE_PE
	VALUES (224,
	1,
	0,
	3,
	7);
INSERT INTO EP_PKG
	VALUES (224,
	0,
	1,
	'UI',
	'',
	0);
INSERT INTO PE_PE
	VALUES (225,
	1,
	224,
	0,
	5);
INSERT INTO S_EE
	VALUES (225,
	'Time',
	'The Time external entity provides date, timestamp, and timer related operations.',
	'TIM',
	0,
	'',
	'Time',
	1);
INSERT INTO S_BRG
	VALUES (226,
	225,
	'current_date',
	'',
	1,
	227,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (228,
	226);
INSERT INTO ACT_ACT
	VALUES (228,
	'bridge',
	0,
	229,
	0,
	0,
	'Time::current_date',
	0);
INSERT INTO ACT_BLK
	VALUES (229,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	228,
	0);
INSERT INTO S_BRG
	VALUES (230,
	225,
	'create_date',
	'',
	1,
	227,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (231,
	230,
	'second',
	14,
	0,
	'',
	232,
	'');
INSERT INTO S_BPARM
	VALUES (233,
	230,
	'minute',
	14,
	0,
	'',
	234,
	'');
INSERT INTO S_BPARM
	VALUES (234,
	230,
	'hour',
	14,
	0,
	'',
	235,
	'');
INSERT INTO S_BPARM
	VALUES (235,
	230,
	'day',
	14,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (232,
	230,
	'month',
	14,
	0,
	'',
	233,
	'');
INSERT INTO S_BPARM
	VALUES (236,
	230,
	'year',
	14,
	0,
	'',
	231,
	'');
INSERT INTO ACT_BRB
	VALUES (237,
	230);
INSERT INTO ACT_ACT
	VALUES (237,
	'bridge',
	0,
	238,
	0,
	0,
	'Time::create_date',
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
	VALUES (239,
	225,
	'get_second',
	'',
	1,
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (240,
	239,
	'date',
	227,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (241,
	239);
INSERT INTO ACT_ACT
	VALUES (241,
	'bridge',
	0,
	242,
	0,
	0,
	'Time::get_second',
	0);
INSERT INTO ACT_BLK
	VALUES (242,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	241,
	0);
INSERT INTO S_BRG
	VALUES (243,
	225,
	'get_minute',
	'',
	1,
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (244,
	243,
	'date',
	227,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (245,
	243);
INSERT INTO ACT_ACT
	VALUES (245,
	'bridge',
	0,
	246,
	0,
	0,
	'Time::get_minute',
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
	225,
	'get_hour',
	'',
	1,
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (248,
	247,
	'date',
	227,
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
	'Time::get_hour',
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
	225,
	'get_day',
	'',
	1,
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (252,
	251,
	'date',
	227,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (253,
	251);
INSERT INTO ACT_ACT
	VALUES (253,
	'bridge',
	0,
	254,
	0,
	0,
	'Time::get_day',
	0);
INSERT INTO ACT_BLK
	VALUES (254,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	253,
	0);
INSERT INTO S_BRG
	VALUES (255,
	225,
	'get_month',
	'',
	1,
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (256,
	255,
	'date',
	227,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (257,
	255);
INSERT INTO ACT_ACT
	VALUES (257,
	'bridge',
	0,
	258,
	0,
	0,
	'Time::get_month',
	0);
INSERT INTO ACT_BLK
	VALUES (258,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	257,
	0);
INSERT INTO S_BRG
	VALUES (259,
	225,
	'get_year',
	'',
	1,
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (260,
	259,
	'date',
	227,
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
	'Time::get_year',
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
	225,
	'current_clock',
	'',
	1,
	264,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (265,
	263);
INSERT INTO ACT_ACT
	VALUES (265,
	'bridge',
	0,
	266,
	0,
	0,
	'Time::current_clock',
	0);
INSERT INTO ACT_BLK
	VALUES (266,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	265,
	0);
INSERT INTO S_BRG
	VALUES (267,
	225,
	'timer_start',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Returns the instance
handle of the timer.',
	1,
	268,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (269,
	267,
	'microseconds',
	14,
	0,
	'',
	270,
	'');
INSERT INTO S_BPARM
	VALUES (270,
	267,
	'event_inst',
	271,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (272,
	267);
INSERT INTO ACT_ACT
	VALUES (272,
	'bridge',
	0,
	273,
	0,
	0,
	'Time::timer_start',
	0);
INSERT INTO ACT_BLK
	VALUES (273,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	272,
	0);
INSERT INTO S_BRG
	VALUES (274,
	225,
	'timer_start_recurring',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Upon expiration, the
timer will be restarted and fire again in the specified number of microseconds
generating the passed event. This bridge operation returns the instance handle
of the timer.',
	1,
	268,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (275,
	274,
	'microseconds',
	14,
	0,
	'',
	276,
	'');
INSERT INTO S_BPARM
	VALUES (276,
	274,
	'event_inst',
	271,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (277,
	274);
INSERT INTO ACT_ACT
	VALUES (277,
	'bridge',
	0,
	278,
	0,
	0,
	'Time::timer_start_recurring',
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
	225,
	'timer_remaining_time',
	'Returns the time remaining (in microseconds) for the passed timer instance. If
the timer has expired, a zero value is returned.',
	1,
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (280,
	279,
	'timer_inst_ref',
	268,
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
	'Time::timer_remaining_time',
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
	225,
	'timer_reset_time',
	'This bridge operation attempts to set the passed existing timer to expire in
the specified number of microseconds. If the timer exists (that is, it has not
expired), a TRUE value is returned. If the timer no longer exists, a FALSE value
is returned.',
	1,
	56,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (284,
	283,
	'timer_inst_ref',
	268,
	0,
	'',
	285,
	'');
INSERT INTO S_BPARM
	VALUES (285,
	283,
	'microseconds',
	14,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (286,
	283);
INSERT INTO ACT_ACT
	VALUES (286,
	'bridge',
	0,
	287,
	0,
	0,
	'Time::timer_reset_time',
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
	225,
	'timer_add_time',
	'This bridge operation attempts to add the specified number of microseconds to a
passed existing timer. If the timer exists (that is, it has not expired), a TRUE
value is returned. If the timer no longer exists, a FALSE value is returned.',
	1,
	56,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (289,
	288,
	'timer_inst_ref',
	268,
	0,
	'',
	290,
	'');
INSERT INTO S_BPARM
	VALUES (290,
	288,
	'microseconds',
	14,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (291,
	288);
INSERT INTO ACT_ACT
	VALUES (291,
	'bridge',
	0,
	292,
	0,
	0,
	'Time::timer_add_time',
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
	225,
	'timer_cancel',
	'This bridge operation cancels and deletes the passed timer instance. If the 
timer exists (that is, it had not expired), a TRUE value is returned. If the
timer no longer exists, a FALSE value is returned.',
	1,
	56,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (294,
	293,
	'timer_inst_ref',
	268,
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
	'Time::timer_cancel',
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
INSERT INTO PE_PE
	VALUES (297,
	1,
	224,
	0,
	5);
INSERT INTO S_EE
	VALUES (297,
	'Graphical User Interface',
	'',
	'GuiBridge',
	0,
	'',
	'Graphical User Interface',
	1);
INSERT INTO S_BRG
	VALUES (298,
	297,
	'feedSetTargetPressedEvent',
	'',
	0,
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (299,
	298,
	'evt',
	271,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (300,
	298);
INSERT INTO ACT_ACT
	VALUES (300,
	'bridge',
	0,
	301,
	0,
	0,
	'Graphical User Interface::feedSetTargetPressedEvent',
	0);
INSERT INTO ACT_BLK
	VALUES (301,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	300,
	0);
INSERT INTO S_BRG
	VALUES (302,
	297,
	'feedModePressedEvent',
	'',
	0,
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (303,
	302,
	'evt',
	271,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (304,
	302);
INSERT INTO ACT_ACT
	VALUES (304,
	'bridge',
	0,
	305,
	0,
	0,
	'Graphical User Interface::feedModePressedEvent',
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
	297,
	'feedLightPressedEvent',
	'',
	0,
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (307,
	306,
	'evt',
	271,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (308,
	306);
INSERT INTO ACT_ACT
	VALUES (308,
	'bridge',
	0,
	309,
	0,
	0,
	'Graphical User Interface::feedLightPressedEvent',
	0);
INSERT INTO ACT_BLK
	VALUES (309,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	308,
	0);
INSERT INTO S_BRG
	VALUES (310,
	297,
	'feedLapResetPressedEvent',
	'',
	0,
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (311,
	310,
	'evt',
	271,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (312,
	310);
INSERT INTO ACT_ACT
	VALUES (312,
	'bridge',
	0,
	313,
	0,
	0,
	'Graphical User Interface::feedLapResetPressedEvent',
	0);
INSERT INTO ACT_BLK
	VALUES (313,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
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
INSERT INTO S_BRG
	VALUES (314,
	297,
	'feedStartStopPressedEvent',
	'',
	0,
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (315,
	314,
	'evt',
	271,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (316,
	314);
INSERT INTO ACT_ACT
	VALUES (316,
	'bridge',
	0,
	317,
	0,
	0,
	'Graphical User Interface::feedStartStopPressedEvent',
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
	VALUES (90,
	297,
	'setData',
	'',
	0,
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (318,
	90,
	'value',
	92,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (319,
	90,
	'unit',
	14,
	0,
	'',
	318,
	'');
INSERT INTO ACT_BRB
	VALUES (320,
	90);
INSERT INTO ACT_ACT
	VALUES (320,
	'bridge',
	0,
	321,
	0,
	0,
	'Graphical User Interface::setData',
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
INSERT INTO S_BRG
	VALUES (12,
	297,
	'setTime',
	'',
	0,
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (322,
	12,
	'time',
	14,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (323,
	12);
INSERT INTO ACT_ACT
	VALUES (323,
	'bridge',
	0,
	324,
	0,
	0,
	'Graphical User Interface::setTime',
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
INSERT INTO S_BRG
	VALUES (325,
	297,
	'connect',
	'',
	0,
	204,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (326,
	325);
INSERT INTO ACT_ACT
	VALUES (326,
	'bridge',
	0,
	327,
	0,
	0,
	'Graphical User Interface::connect',
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
	VALUES (163,
	297,
	'setIndicator',
	'',
	0,
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (328,
	163,
	'value',
	14,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (329,
	163);
INSERT INTO ACT_ACT
	VALUES (329,
	'bridge',
	0,
	330,
	0,
	0,
	'Graphical User Interface::setIndicator',
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
INSERT INTO PE_PE
	VALUES (331,
	1,
	224,
	0,
	5);
INSERT INTO S_EE
	VALUES (331,
	'Logging',
	'',
	'LOG',
	0,
	'',
	'Logging',
	1);
INSERT INTO S_BRG
	VALUES (332,
	331,
	'LogSuccess',
	'',
	0,
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (333,
	332,
	'message',
	334,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (335,
	332);
INSERT INTO ACT_ACT
	VALUES (335,
	'bridge',
	0,
	336,
	0,
	0,
	'Logging::LogSuccess',
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
	VALUES (337,
	331,
	'LogFailure',
	'',
	0,
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (338,
	337,
	'message',
	334,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (339,
	337);
INSERT INTO ACT_ACT
	VALUES (339,
	'bridge',
	0,
	340,
	0,
	0,
	'Logging::LogFailure',
	0);
INSERT INTO ACT_BLK
	VALUES (340,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	339,
	0);
INSERT INTO S_BRG
	VALUES (341,
	331,
	'LogInfo',
	'',
	0,
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (342,
	341,
	'message',
	334,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (343,
	341);
INSERT INTO ACT_ACT
	VALUES (343,
	'bridge',
	0,
	344,
	0,
	0,
	'Logging::LogInfo',
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
INSERT INTO S_BRG
	VALUES (345,
	331,
	'LogDate',
	'',
	0,
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (346,
	345,
	'd',
	227,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (347,
	345,
	'message',
	334,
	0,
	'',
	346,
	'');
INSERT INTO ACT_BRB
	VALUES (348,
	345);
INSERT INTO ACT_ACT
	VALUES (348,
	'bridge',
	0,
	349,
	0,
	0,
	'Logging::LogDate',
	0);
INSERT INTO ACT_BLK
	VALUES (349,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	348,
	0);
INSERT INTO S_BRG
	VALUES (350,
	331,
	'LogTime',
	'',
	0,
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (351,
	350,
	't',
	264,
	0,
	'',
	352,
	'');
INSERT INTO S_BPARM
	VALUES (352,
	350,
	'message',
	334,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (353,
	350);
INSERT INTO ACT_ACT
	VALUES (353,
	'bridge',
	0,
	354,
	0,
	0,
	'Logging::LogTime',
	0);
INSERT INTO ACT_BLK
	VALUES (354,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	353,
	0);
INSERT INTO S_BRG
	VALUES (355,
	331,
	'LogReal',
	'',
	0,
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (356,
	355,
	'r',
	92,
	0,
	'',
	357,
	'');
INSERT INTO S_BPARM
	VALUES (357,
	355,
	'message',
	334,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (358,
	355);
INSERT INTO ACT_ACT
	VALUES (358,
	'bridge',
	0,
	359,
	0,
	0,
	'Logging::LogReal',
	0);
INSERT INTO ACT_BLK
	VALUES (359,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	358,
	0);
INSERT INTO S_BRG
	VALUES (360,
	331,
	'LogInteger',
	'',
	0,
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (361,
	360,
	'message',
	14,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (362,
	360);
INSERT INTO ACT_ACT
	VALUES (362,
	'bridge',
	0,
	363,
	0,
	0,
	'Logging::LogInteger',
	0);
INSERT INTO ACT_BLK
	VALUES (363,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	362,
	0);
INSERT INTO PE_PE
	VALUES (364,
	1,
	224,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (364,
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
	204,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (365,
	364);
INSERT INTO ACT_ACT
	VALUES (365,
	'function',
	0,
	366,
	0,
	0,
	'createGoals_1',
	0);
INSERT INTO ACT_BLK
	VALUES (366,
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
	365,
	0);
INSERT INTO ACT_SMT
	VALUES (367,
	366,
	368,
	2,
	1,
	'createGoals_1 line: 2');
INSERT INTO ACT_IOP
	VALUES (367,
	2,
	16,
	2,
	6,
	0,
	194,
	0);
INSERT INTO ACT_SMT
	VALUES (368,
	366,
	369,
	10,
	1,
	'createGoals_1 line: 10');
INSERT INTO ACT_IOP
	VALUES (368,
	10,
	16,
	10,
	6,
	0,
	194,
	0);
INSERT INTO ACT_SMT
	VALUES (369,
	366,
	370,
	18,
	1,
	'createGoals_1 line: 18');
INSERT INTO ACT_IOP
	VALUES (369,
	18,
	16,
	18,
	6,
	0,
	194,
	0);
INSERT INTO ACT_SMT
	VALUES (370,
	366,
	0,
	26,
	1,
	'createGoals_1 line: 26');
INSERT INTO ACT_IOP
	VALUES (370,
	26,
	16,
	26,
	6,
	0,
	194,
	0);
INSERT INTO V_VAL
	VALUES (371,
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
	366);
INSERT INTO V_LIN
	VALUES (371,
	'1');
INSERT INTO V_PAR
	VALUES (371,
	367,
	0,
	'sequenceNumber',
	372,
	3,
	3);
INSERT INTO V_VAL
	VALUES (372,
	0,
	0,
	4,
	12,
	14,
	0,
	0,
	0,
	0,
	92,
	366);
INSERT INTO V_LRL
	VALUES (372,
	'2.0');
INSERT INTO V_PAR
	VALUES (372,
	367,
	0,
	'minimum',
	373,
	4,
	3);
INSERT INTO V_VAL
	VALUES (373,
	0,
	0,
	5,
	12,
	14,
	0,
	0,
	0,
	0,
	92,
	366);
INSERT INTO V_LRL
	VALUES (373,
	'8.0');
INSERT INTO V_PAR
	VALUES (373,
	367,
	0,
	'maximum',
	374,
	5,
	3);
INSERT INTO V_VAL
	VALUES (374,
	0,
	0,
	6,
	9,
	13,
	0,
	0,
	0,
	0,
	92,
	366);
INSERT INTO V_LRL
	VALUES (374,
	'150.0');
INSERT INTO V_PAR
	VALUES (374,
	367,
	0,
	'span',
	375,
	6,
	3);
INSERT INTO V_VAL
	VALUES (375,
	0,
	0,
	7,
	31,
	34,
	0,
	0,
	0,
	0,
	376,
	366);
INSERT INTO V_LEN
	VALUES (375,
	377,
	7,
	17);
INSERT INTO V_PAR
	VALUES (375,
	367,
	0,
	'criteriaType',
	378,
	7,
	3);
INSERT INTO V_VAL
	VALUES (378,
	0,
	0,
	8,
	23,
	30,
	0,
	0,
	0,
	0,
	379,
	366);
INSERT INTO V_LEN
	VALUES (378,
	380,
	8,
	13);
INSERT INTO V_PAR
	VALUES (378,
	367,
	0,
	'spanType',
	0,
	8,
	3);
INSERT INTO V_VAL
	VALUES (381,
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
	366);
INSERT INTO V_LIN
	VALUES (381,
	'2');
INSERT INTO V_PAR
	VALUES (381,
	368,
	0,
	'sequenceNumber',
	382,
	11,
	3);
INSERT INTO V_VAL
	VALUES (382,
	0,
	0,
	12,
	12,
	15,
	0,
	0,
	0,
	0,
	92,
	366);
INSERT INTO V_LRL
	VALUES (382,
	'60.0');
INSERT INTO V_PAR
	VALUES (382,
	368,
	0,
	'minimum',
	383,
	12,
	3);
INSERT INTO V_VAL
	VALUES (383,
	0,
	0,
	13,
	12,
	15,
	0,
	0,
	0,
	0,
	92,
	366);
INSERT INTO V_LRL
	VALUES (383,
	'80.0');
INSERT INTO V_PAR
	VALUES (383,
	368,
	0,
	'maximum',
	384,
	13,
	3);
INSERT INTO V_VAL
	VALUES (384,
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
	366);
INSERT INTO V_LIN
	VALUES (384,
	'10');
INSERT INTO V_PAR
	VALUES (384,
	368,
	0,
	'span',
	385,
	14,
	3);
INSERT INTO V_VAL
	VALUES (385,
	0,
	0,
	15,
	31,
	39,
	0,
	0,
	0,
	0,
	376,
	366);
INSERT INTO V_LEN
	VALUES (385,
	386,
	15,
	17);
INSERT INTO V_PAR
	VALUES (385,
	368,
	0,
	'criteriaType',
	387,
	15,
	3);
INSERT INTO V_VAL
	VALUES (387,
	0,
	0,
	16,
	23,
	26,
	0,
	0,
	0,
	0,
	379,
	366);
INSERT INTO V_LEN
	VALUES (387,
	388,
	16,
	13);
INSERT INTO V_PAR
	VALUES (387,
	368,
	0,
	'spanType',
	0,
	16,
	3);
INSERT INTO V_VAL
	VALUES (389,
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
	366);
INSERT INTO V_LIN
	VALUES (389,
	'3');
INSERT INTO V_PAR
	VALUES (389,
	369,
	0,
	'sequenceNumber',
	390,
	19,
	3);
INSERT INTO V_VAL
	VALUES (390,
	0,
	0,
	20,
	12,
	14,
	0,
	0,
	0,
	0,
	92,
	366);
INSERT INTO V_LRL
	VALUES (390,
	'5.0');
INSERT INTO V_PAR
	VALUES (390,
	369,
	0,
	'minimum',
	391,
	20,
	3);
INSERT INTO V_VAL
	VALUES (391,
	0,
	0,
	21,
	12,
	14,
	0,
	0,
	0,
	0,
	92,
	366);
INSERT INTO V_LRL
	VALUES (391,
	'6.0');
INSERT INTO V_PAR
	VALUES (391,
	369,
	0,
	'maximum',
	392,
	21,
	3);
INSERT INTO V_VAL
	VALUES (392,
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
	366);
INSERT INTO V_LIN
	VALUES (392,
	'15');
INSERT INTO V_PAR
	VALUES (392,
	369,
	0,
	'span',
	393,
	22,
	3);
INSERT INTO V_VAL
	VALUES (393,
	0,
	0,
	23,
	31,
	34,
	0,
	0,
	0,
	0,
	376,
	366);
INSERT INTO V_LEN
	VALUES (393,
	377,
	23,
	17);
INSERT INTO V_PAR
	VALUES (393,
	369,
	0,
	'criteriaType',
	394,
	23,
	3);
INSERT INTO V_VAL
	VALUES (394,
	0,
	0,
	24,
	23,
	26,
	0,
	0,
	0,
	0,
	379,
	366);
INSERT INTO V_LEN
	VALUES (394,
	388,
	24,
	13);
INSERT INTO V_PAR
	VALUES (394,
	369,
	0,
	'spanType',
	0,
	24,
	3);
INSERT INTO V_VAL
	VALUES (395,
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
	366);
INSERT INTO V_LIN
	VALUES (395,
	'4');
INSERT INTO V_PAR
	VALUES (395,
	370,
	0,
	'sequenceNumber',
	396,
	27,
	3);
INSERT INTO V_VAL
	VALUES (396,
	0,
	0,
	28,
	12,
	14,
	0,
	0,
	0,
	0,
	92,
	366);
INSERT INTO V_LRL
	VALUES (396,
	'1.0');
INSERT INTO V_PAR
	VALUES (396,
	370,
	0,
	'minimum',
	397,
	28,
	3);
INSERT INTO V_VAL
	VALUES (397,
	0,
	0,
	29,
	12,
	14,
	0,
	0,
	0,
	0,
	92,
	366);
INSERT INTO V_LRL
	VALUES (397,
	'2.0');
INSERT INTO V_PAR
	VALUES (397,
	370,
	0,
	'maximum',
	398,
	29,
	3);
INSERT INTO V_VAL
	VALUES (398,
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
	366);
INSERT INTO V_LIN
	VALUES (398,
	'15');
INSERT INTO V_PAR
	VALUES (398,
	370,
	0,
	'span',
	399,
	30,
	3);
INSERT INTO V_VAL
	VALUES (399,
	0,
	0,
	31,
	31,
	34,
	0,
	0,
	0,
	0,
	376,
	366);
INSERT INTO V_LEN
	VALUES (399,
	377,
	31,
	17);
INSERT INTO V_PAR
	VALUES (399,
	370,
	0,
	'criteriaType',
	400,
	31,
	3);
INSERT INTO V_VAL
	VALUES (400,
	0,
	0,
	32,
	23,
	26,
	0,
	0,
	0,
	0,
	379,
	366);
INSERT INTO V_LEN
	VALUES (400,
	388,
	32,
	13);
INSERT INTO V_PAR
	VALUES (400,
	370,
	0,
	'spanType',
	0,
	32,
	3);
INSERT INTO PE_PE
	VALUES (401,
	1,
	224,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (401,
	0,
	'init',
	'',
	'GuiBridge::connect();',
	204,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (402,
	401);
INSERT INTO ACT_ACT
	VALUES (402,
	'function',
	0,
	403,
	0,
	0,
	'init',
	0);
INSERT INTO ACT_BLK
	VALUES (403,
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
	402,
	0);
INSERT INTO ACT_SMT
	VALUES (404,
	403,
	0,
	1,
	1,
	'init line: 1');
INSERT INTO ACT_BRG
	VALUES (404,
	325,
	1,
	12,
	1,
	1);
INSERT INTO PE_PE
	VALUES (405,
	1,
	224,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (405,
	0,
	'RunTestCase',
	'',
	'TestCase::execute();',
	204,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (406,
	405);
INSERT INTO ACT_ACT
	VALUES (406,
	'function',
	0,
	407,
	0,
	0,
	'RunTestCase',
	0);
INSERT INTO ACT_BLK
	VALUES (407,
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
	406,
	0);
INSERT INTO ACT_SMT
	VALUES (408,
	407,
	0,
	1,
	1,
	'RunTestCase line: 1');
INSERT INTO ACT_TFM
	VALUES (408,
	409,
	0,
	1,
	11,
	1,
	1);
INSERT INTO PE_PE
	VALUES (410,
	1,
	224,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (410,
	'TestCase',
	2,
	'TestCase',
	'Represents a very simple automated test case.',
	0);
INSERT INTO O_TFR
	VALUES (409,
	410,
	'execute',
	'',
	204,
	0,
	'generate TestCase2:start(iterations: 2) to TestCase creator;',
	1,
	'',
	0);
INSERT INTO ACT_OPB
	VALUES (411,
	409);
INSERT INTO ACT_ACT
	VALUES (411,
	'class operation',
	0,
	412,
	0,
	0,
	'TestCase::execute',
	0);
INSERT INTO ACT_BLK
	VALUES (412,
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
	411,
	0);
INSERT INTO ACT_SMT
	VALUES (413,
	412,
	0,
	1,
	1,
	'TestCase::execute line: 1');
INSERT INTO E_ESS
	VALUES (413,
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
	VALUES (414,
	413,
	0,
	'iterations',
	0,
	1,
	26);
INSERT INTO E_GES
	VALUES (413);
INSERT INTO E_GSME
	VALUES (413,
	131);
INSERT INTO E_GEC
	VALUES (413);
INSERT INTO V_VAL
	VALUES (414,
	0,
	0,
	1,
	38,
	38,
	0,
	0,
	0,
	0,
	14,
	412);
INSERT INTO V_LIN
	VALUES (414,
	'2');
INSERT INTO O_NBATTR
	VALUES (415,
	410);
INSERT INTO O_BATTR
	VALUES (415,
	410);
INSERT INTO O_ATTR
	VALUES (415,
	410,
	0,
	'current_state',
	'',
	'',
	'current_state',
	0,
	416,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (417,
	410);
INSERT INTO O_BATTR
	VALUES (417,
	410);
INSERT INTO O_ATTR
	VALUES (417,
	410,
	415,
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
	410);
INSERT INTO O_ID
	VALUES (1,
	410);
INSERT INTO O_ID
	VALUES (2,
	410);
INSERT INTO SM_ISM
	VALUES (418,
	410);
INSERT INTO SM_SM
	VALUES (418,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (418);
INSERT INTO SM_EVTDI
	VALUES (419,
	418,
	'iterations',
	'',
	14,
	'',
	131,
	0);
INSERT INTO SM_LEVT
	VALUES (420,
	418,
	0);
INSERT INTO SM_SEVT
	VALUES (420,
	418,
	0);
INSERT INTO SM_EVT
	VALUES (420,
	418,
	0,
	1,
	'delay',
	0,
	'',
	'TestCase1',
	'');
INSERT INTO SM_LEVT
	VALUES (131,
	418,
	0);
INSERT INTO SM_SEVT
	VALUES (131,
	418,
	0);
INSERT INTO SM_EVT
	VALUES (131,
	418,
	0,
	2,
	'start',
	0,
	'',
	'TestCase2',
	'');
INSERT INTO SM_LEVT
	VALUES (421,
	418,
	0);
INSERT INTO SM_SEVT
	VALUES (421,
	418,
	0);
INSERT INTO SM_EVT
	VALUES (421,
	418,
	0,
	3,
	'finish',
	0,
	'',
	'TestCase3',
	'');
INSERT INTO SM_STATE
	VALUES (422,
	418,
	0,
	'pressStartStop',
	2,
	0);
INSERT INTO SM_SEME
	VALUES (422,
	420,
	418,
	0);
INSERT INTO SM_CH
	VALUES (422,
	131,
	418,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (422,
	131,
	418,
	0);
INSERT INTO SM_SEME
	VALUES (422,
	421,
	418,
	0);
INSERT INTO SM_MOAH
	VALUES (423,
	418,
	422);
INSERT INTO SM_AH
	VALUES (423,
	418);
INSERT INTO SM_ACT
	VALUES (423,
	418,
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
	VALUES (424,
	418,
	423);
INSERT INTO ACT_ACT
	VALUES (424,
	'state',
	0,
	425,
	0,
	0,
	'TestCase::pressStartStop',
	0);
INSERT INTO ACT_BLK
	VALUES (425,
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
	424,
	0);
INSERT INTO ACT_SMT
	VALUES (426,
	425,
	0,
	1,
	1,
	'TestCase::pressStartStop line: 1');
INSERT INTO ACT_IF
	VALUES (426,
	427,
	428,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (429,
	425,
	0,
	6,
	1,
	'TestCase::pressStartStop line: 6');
INSERT INTO ACT_E
	VALUES (429,
	430,
	426);
INSERT INTO V_VAL
	VALUES (431,
	0,
	0,
	1,
	5,
	8,
	0,
	0,
	0,
	0,
	432,
	425);
INSERT INTO V_IRF
	VALUES (431,
	433);
INSERT INTO V_VAL
	VALUES (434,
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
	425);
INSERT INTO V_AVL
	VALUES (434,
	431,
	410,
	417);
INSERT INTO V_VAL
	VALUES (428,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	425);
INSERT INTO V_BIN
	VALUES (428,
	435,
	434,
	'>');
INSERT INTO V_VAL
	VALUES (435,
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
	425);
INSERT INTO V_LIN
	VALUES (435,
	'0');
INSERT INTO V_VAR
	VALUES (433,
	425,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (433,
	0,
	410);
INSERT INTO ACT_BLK
	VALUES (427,
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
	424,
	0);
INSERT INTO ACT_SMT
	VALUES (436,
	427,
	437,
	2,
	3,
	'TestCase::pressStartStop line: 2');
INSERT INTO ACT_AI
	VALUES (436,
	438,
	439,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (437,
	427,
	440,
	3,
	3,
	'TestCase::pressStartStop line: 3');
INSERT INTO E_ESS
	VALUES (437,
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
	VALUES (437,
	1,
	441);
INSERT INTO E_CSME
	VALUES (437,
	420);
INSERT INTO E_CEI
	VALUES (437,
	433);
INSERT INTO ACT_SMT
	VALUES (440,
	427,
	442,
	4,
	3,
	'TestCase::pressStartStop line: 4');
INSERT INTO ACT_AI
	VALUES (440,
	443,
	444,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (442,
	427,
	0,
	5,
	3,
	'TestCase::pressStartStop line: 5');
INSERT INTO ACT_IOP
	VALUES (442,
	5,
	18,
	5,
	8,
	0,
	182,
	0);
INSERT INTO V_VAL
	VALUES (445,
	1,
	0,
	2,
	3,
	6,
	0,
	0,
	0,
	0,
	432,
	427);
INSERT INTO V_IRF
	VALUES (445,
	433);
INSERT INTO V_VAL
	VALUES (439,
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
	427);
INSERT INTO V_AVL
	VALUES (439,
	445,
	410,
	417);
INSERT INTO V_VAL
	VALUES (446,
	0,
	0,
	2,
	21,
	24,
	0,
	0,
	0,
	0,
	432,
	427);
INSERT INTO V_IRF
	VALUES (446,
	433);
INSERT INTO V_VAL
	VALUES (447,
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
	427);
INSERT INTO V_AVL
	VALUES (447,
	446,
	410,
	417);
INSERT INTO V_VAL
	VALUES (438,
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
	427);
INSERT INTO V_BIN
	VALUES (438,
	448,
	447,
	'-');
INSERT INTO V_VAL
	VALUES (448,
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
	427);
INSERT INTO V_LIN
	VALUES (448,
	'1');
INSERT INTO V_VAL
	VALUES (444,
	1,
	1,
	4,
	3,
	8,
	0,
	0,
	0,
	0,
	268,
	427);
INSERT INTO V_TVL
	VALUES (444,
	449);
INSERT INTO V_VAL
	VALUES (443,
	0,
	0,
	4,
	17,
	-1,
	4,
	29,
	4,
	46,
	268,
	427);
INSERT INTO V_BRV
	VALUES (443,
	267,
	1,
	4,
	12);
INSERT INTO V_VAL
	VALUES (450,
	0,
	0,
	4,
	41,
	43,
	0,
	0,
	0,
	0,
	271,
	427);
INSERT INTO V_TVL
	VALUES (450,
	441);
INSERT INTO V_PAR
	VALUES (450,
	0,
	443,
	'event_inst',
	451,
	4,
	29);
INSERT INTO V_VAL
	VALUES (451,
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
	427);
INSERT INTO V_LIN
	VALUES (451,
	'4000000');
INSERT INTO V_PAR
	VALUES (451,
	0,
	443,
	'microseconds',
	0,
	4,
	46);
INSERT INTO V_VAR
	VALUES (441,
	427,
	'evt',
	1,
	271);
INSERT INTO V_TRN
	VALUES (441,
	0,
	'');
INSERT INTO V_VAR
	VALUES (449,
	427,
	'handle',
	1,
	268);
INSERT INTO V_TRN
	VALUES (449,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (430,
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
	424,
	0);
INSERT INTO ACT_SMT
	VALUES (452,
	430,
	453,
	7,
	3,
	'TestCase::pressStartStop line: 7');
INSERT INTO E_ESS
	VALUES (452,
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
	VALUES (452);
INSERT INTO E_GSME
	VALUES (452,
	421);
INSERT INTO E_GEN
	VALUES (452,
	433);
INSERT INTO ACT_SMT
	VALUES (453,
	430,
	0,
	8,
	3,
	'TestCase::pressStartStop line: 8');
INSERT INTO ACT_IOP
	VALUES (453,
	8,
	18,
	8,
	8,
	0,
	186,
	0);
INSERT INTO SM_STATE
	VALUES (454,
	418,
	0,
	'testCaseFinished',
	3,
	1);
INSERT INTO SM_CH
	VALUES (454,
	420,
	418,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (454,
	420,
	418,
	0);
INSERT INTO SM_CH
	VALUES (454,
	131,
	418,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (454,
	131,
	418,
	0);
INSERT INTO SM_CH
	VALUES (454,
	421,
	418,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (454,
	421,
	418,
	0);
INSERT INTO SM_MOAH
	VALUES (455,
	418,
	454);
INSERT INTO SM_AH
	VALUES (455,
	418);
INSERT INTO SM_ACT
	VALUES (455,
	418,
	1,
	'LOG::LogInfo(message: "End of test case"); ',
	'');
INSERT INTO ACT_SAB
	VALUES (456,
	418,
	455);
INSERT INTO ACT_ACT
	VALUES (456,
	'state',
	0,
	457,
	0,
	0,
	'TestCase::testCaseFinished',
	0);
INSERT INTO ACT_BLK
	VALUES (457,
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
	456,
	0);
INSERT INTO ACT_SMT
	VALUES (458,
	457,
	0,
	1,
	1,
	'TestCase::testCaseFinished line: 1');
INSERT INTO ACT_BRG
	VALUES (458,
	341,
	1,
	6,
	1,
	1);
INSERT INTO V_VAL
	VALUES (459,
	0,
	0,
	1,
	23,
	39,
	0,
	0,
	0,
	0,
	334,
	457);
INSERT INTO V_LST
	VALUES (459,
	'End of test case');
INSERT INTO V_PAR
	VALUES (459,
	458,
	0,
	'message',
	0,
	1,
	14);
INSERT INTO SM_NSTXN
	VALUES (460,
	418,
	422,
	420,
	0);
INSERT INTO SM_TAH
	VALUES (461,
	418,
	460);
INSERT INTO SM_AH
	VALUES (461,
	418);
INSERT INTO SM_ACT
	VALUES (461,
	418,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (462,
	418,
	461);
INSERT INTO ACT_ACT
	VALUES (462,
	'transition',
	0,
	463,
	0,
	0,
	'TestCase1: delay',
	0);
INSERT INTO ACT_BLK
	VALUES (463,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	462,
	0);
INSERT INTO SM_TXN
	VALUES (460,
	418,
	422,
	0);
INSERT INTO SM_CRTXN
	VALUES (464,
	418,
	131,
	0);
INSERT INTO SM_TAH
	VALUES (465,
	418,
	464);
INSERT INTO SM_AH
	VALUES (465,
	418);
INSERT INTO SM_ACT
	VALUES (465,
	418,
	1,
	'LOG::LogInfo(message: "Start of test case"); 
self.iterations = rcvd_evt.iterations * 2;',
	'');
INSERT INTO ACT_TAB
	VALUES (466,
	418,
	465);
INSERT INTO ACT_ACT
	VALUES (466,
	'transition',
	0,
	467,
	0,
	0,
	'TestCase2: start(iterations)',
	0);
INSERT INTO ACT_BLK
	VALUES (467,
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
	466,
	0);
INSERT INTO ACT_SMT
	VALUES (468,
	467,
	469,
	1,
	1,
	'TestCase2: start(iterations) line: 1');
INSERT INTO ACT_BRG
	VALUES (468,
	341,
	1,
	6,
	1,
	1);
INSERT INTO ACT_SMT
	VALUES (469,
	467,
	0,
	2,
	1,
	'TestCase2: start(iterations) line: 2');
INSERT INTO ACT_AI
	VALUES (469,
	470,
	471,
	0,
	0);
INSERT INTO V_VAL
	VALUES (472,
	0,
	0,
	1,
	23,
	41,
	0,
	0,
	0,
	0,
	334,
	467);
INSERT INTO V_LST
	VALUES (472,
	'Start of test case');
INSERT INTO V_PAR
	VALUES (472,
	468,
	0,
	'message',
	0,
	1,
	14);
INSERT INTO V_VAL
	VALUES (473,
	1,
	0,
	2,
	1,
	4,
	0,
	0,
	0,
	0,
	432,
	467);
INSERT INTO V_IRF
	VALUES (473,
	474);
INSERT INTO V_VAL
	VALUES (471,
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
	467);
INSERT INTO V_AVL
	VALUES (471,
	473,
	410,
	417);
INSERT INTO V_VAL
	VALUES (475,
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
	467);
INSERT INTO V_EDV
	VALUES (475);
INSERT INTO V_EPR
	VALUES (475,
	418,
	419,
	0);
INSERT INTO V_VAL
	VALUES (470,
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
	467);
INSERT INTO V_BIN
	VALUES (470,
	476,
	475,
	'*');
INSERT INTO V_VAL
	VALUES (476,
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
	467);
INSERT INTO V_LIN
	VALUES (476,
	'2');
INSERT INTO V_VAR
	VALUES (474,
	467,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (474,
	0,
	410);
INSERT INTO SM_TXN
	VALUES (464,
	418,
	422,
	0);
INSERT INTO SM_NSTXN
	VALUES (477,
	418,
	422,
	421,
	0);
INSERT INTO SM_TAH
	VALUES (478,
	418,
	477);
INSERT INTO SM_AH
	VALUES (478,
	418);
INSERT INTO SM_ACT
	VALUES (478,
	418,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (479,
	418,
	478);
INSERT INTO ACT_ACT
	VALUES (479,
	'transition',
	0,
	480,
	0,
	0,
	'TestCase3: finish',
	0);
INSERT INTO ACT_BLK
	VALUES (480,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	479,
	0);
INSERT INTO SM_TXN
	VALUES (477,
	418,
	454,
	0);
INSERT INTO PE_PE
	VALUES (481,
	1,
	224,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (481,
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
	VALUES (482,
	481,
	'connect',
	'',
	204,
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
	VALUES (483,
	482);
INSERT INTO ACT_ACT
	VALUES (483,
	'class operation',
	0,
	484,
	0,
	0,
	'UI::connect',
	0);
INSERT INTO ACT_BLK
	VALUES (484,
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
	483,
	0);
INSERT INTO ACT_SMT
	VALUES (485,
	484,
	486,
	1,
	1,
	'UI::connect line: 1');
INSERT INTO ACT_BRG
	VALUES (485,
	325,
	1,
	12,
	1,
	1);
INSERT INTO ACT_SMT
	VALUES (486,
	484,
	487,
	3,
	1,
	'UI::connect line: 3');
INSERT INTO E_ESS
	VALUES (486,
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
	VALUES (486,
	1,
	488);
INSERT INTO E_CSME
	VALUES (486,
	489);
INSERT INTO E_CEA
	VALUES (486);
INSERT INTO ACT_SMT
	VALUES (487,
	484,
	490,
	4,
	1,
	'UI::connect line: 4');
INSERT INTO ACT_BRG
	VALUES (487,
	298,
	4,
	12,
	4,
	1);
INSERT INTO ACT_SMT
	VALUES (490,
	484,
	491,
	6,
	1,
	'UI::connect line: 6');
INSERT INTO E_ESS
	VALUES (490,
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
	VALUES (490,
	0,
	488);
INSERT INTO E_CSME
	VALUES (490,
	492);
INSERT INTO E_CEA
	VALUES (490);
INSERT INTO ACT_SMT
	VALUES (491,
	484,
	493,
	7,
	1,
	'UI::connect line: 7');
INSERT INTO ACT_BRG
	VALUES (491,
	314,
	7,
	12,
	7,
	1);
INSERT INTO ACT_SMT
	VALUES (493,
	484,
	494,
	9,
	1,
	'UI::connect line: 9');
INSERT INTO E_ESS
	VALUES (493,
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
	VALUES (493,
	0,
	488);
INSERT INTO E_CSME
	VALUES (493,
	495);
INSERT INTO E_CEA
	VALUES (493);
INSERT INTO ACT_SMT
	VALUES (494,
	484,
	496,
	10,
	1,
	'UI::connect line: 10');
INSERT INTO ACT_BRG
	VALUES (494,
	310,
	10,
	12,
	10,
	1);
INSERT INTO ACT_SMT
	VALUES (496,
	484,
	497,
	12,
	1,
	'UI::connect line: 12');
INSERT INTO E_ESS
	VALUES (496,
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
	VALUES (496,
	0,
	488);
INSERT INTO E_CSME
	VALUES (496,
	498);
INSERT INTO E_CEA
	VALUES (496);
INSERT INTO ACT_SMT
	VALUES (497,
	484,
	499,
	13,
	1,
	'UI::connect line: 13');
INSERT INTO ACT_BRG
	VALUES (497,
	306,
	13,
	12,
	13,
	1);
INSERT INTO ACT_SMT
	VALUES (499,
	484,
	500,
	15,
	1,
	'UI::connect line: 15');
INSERT INTO E_ESS
	VALUES (499,
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
	VALUES (499,
	0,
	488);
INSERT INTO E_CSME
	VALUES (499,
	501);
INSERT INTO E_CEA
	VALUES (499);
INSERT INTO ACT_SMT
	VALUES (500,
	484,
	0,
	16,
	1,
	'UI::connect line: 16');
INSERT INTO ACT_BRG
	VALUES (500,
	302,
	16,
	12,
	16,
	1);
INSERT INTO V_VAL
	VALUES (502,
	0,
	0,
	4,
	43,
	45,
	0,
	0,
	0,
	0,
	271,
	484);
INSERT INTO V_TVL
	VALUES (502,
	488);
INSERT INTO V_PAR
	VALUES (502,
	487,
	0,
	'evt',
	0,
	4,
	38);
INSERT INTO V_VAL
	VALUES (503,
	0,
	0,
	7,
	43,
	45,
	0,
	0,
	0,
	0,
	271,
	484);
INSERT INTO V_TVL
	VALUES (503,
	488);
INSERT INTO V_PAR
	VALUES (503,
	491,
	0,
	'evt',
	0,
	7,
	38);
INSERT INTO V_VAL
	VALUES (504,
	0,
	0,
	10,
	42,
	44,
	0,
	0,
	0,
	0,
	271,
	484);
INSERT INTO V_TVL
	VALUES (504,
	488);
INSERT INTO V_PAR
	VALUES (504,
	494,
	0,
	'evt',
	0,
	10,
	37);
INSERT INTO V_VAL
	VALUES (505,
	0,
	0,
	13,
	39,
	41,
	0,
	0,
	0,
	0,
	271,
	484);
INSERT INTO V_TVL
	VALUES (505,
	488);
INSERT INTO V_PAR
	VALUES (505,
	497,
	0,
	'evt',
	0,
	13,
	34);
INSERT INTO V_VAL
	VALUES (506,
	0,
	0,
	16,
	38,
	40,
	0,
	0,
	0,
	0,
	271,
	484);
INSERT INTO V_TVL
	VALUES (506,
	488);
INSERT INTO V_PAR
	VALUES (506,
	500,
	0,
	'evt',
	0,
	16,
	33);
INSERT INTO V_VAR
	VALUES (488,
	484,
	'evt',
	1,
	271);
INSERT INTO V_TRN
	VALUES (488,
	0,
	'');
INSERT INTO O_ID
	VALUES (0,
	481);
INSERT INTO O_ID
	VALUES (1,
	481);
INSERT INTO O_ID
	VALUES (2,
	481);
INSERT INTO SM_ASM
	VALUES (507,
	481);
INSERT INTO SM_SM
	VALUES (507,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (507);
INSERT INTO SM_LEVT
	VALUES (489,
	507,
	0);
INSERT INTO SM_SEVT
	VALUES (489,
	507,
	0);
INSERT INTO SM_EVT
	VALUES (489,
	507,
	0,
	3,
	'setTargetPressed',
	0,
	'',
	'UI_A3',
	'');
INSERT INTO SM_LEVT
	VALUES (492,
	507,
	0);
INSERT INTO SM_SEVT
	VALUES (492,
	507,
	0);
INSERT INTO SM_EVT
	VALUES (492,
	507,
	0,
	4,
	'startStopPressed',
	0,
	'',
	'UI_A4',
	'');
INSERT INTO SM_LEVT
	VALUES (495,
	507,
	0);
INSERT INTO SM_SEVT
	VALUES (495,
	507,
	0);
INSERT INTO SM_EVT
	VALUES (495,
	507,
	0,
	5,
	'lapResetPressed',
	0,
	'',
	'UI_A5',
	'');
INSERT INTO SM_LEVT
	VALUES (498,
	507,
	0);
INSERT INTO SM_SEVT
	VALUES (498,
	507,
	0);
INSERT INTO SM_EVT
	VALUES (498,
	507,
	0,
	6,
	'lightPressed',
	0,
	'',
	'UI_A6',
	'');
INSERT INTO SM_LEVT
	VALUES (501,
	507,
	0);
INSERT INTO SM_SEVT
	VALUES (501,
	507,
	0);
INSERT INTO SM_EVT
	VALUES (501,
	507,
	0,
	7,
	'modePressed',
	0,
	'',
	'UI_A7',
	'');
INSERT INTO SM_STATE
	VALUES (508,
	507,
	0,
	'running',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (508,
	489,
	507,
	0);
INSERT INTO SM_SEME
	VALUES (508,
	492,
	507,
	0);
INSERT INTO SM_SEME
	VALUES (508,
	495,
	507,
	0);
INSERT INTO SM_SEME
	VALUES (508,
	498,
	507,
	0);
INSERT INTO SM_SEME
	VALUES (508,
	501,
	507,
	0);
INSERT INTO SM_MOAH
	VALUES (509,
	507,
	508);
INSERT INTO SM_AH
	VALUES (509,
	507);
INSERT INTO SM_ACT
	VALUES (509,
	507,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (510,
	507,
	509);
INSERT INTO ACT_ACT
	VALUES (510,
	'class state',
	0,
	511,
	0,
	0,
	'UI::running',
	0);
INSERT INTO ACT_BLK
	VALUES (511,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	510,
	0);
INSERT INTO SM_NSTXN
	VALUES (512,
	507,
	508,
	489,
	0);
INSERT INTO SM_TAH
	VALUES (513,
	507,
	512);
INSERT INTO SM_AH
	VALUES (513,
	507);
INSERT INTO SM_ACT
	VALUES (513,
	507,
	1,
	'create event instance evt of UI_A3:setTargetPressed() to UI class;
GuiBridge::feedSetTargetPressedEvent(evt: evt);
::sendTargetPressed();',
	'');
INSERT INTO ACT_TAB
	VALUES (514,
	507,
	513);
INSERT INTO ACT_ACT
	VALUES (514,
	'class transition',
	0,
	515,
	0,
	0,
	'UI_A3: setTargetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (515,
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
	514,
	0);
INSERT INTO ACT_SMT
	VALUES (516,
	515,
	517,
	1,
	1,
	'UI_A3: setTargetPressed line: 1');
INSERT INTO E_ESS
	VALUES (516,
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
	VALUES (516,
	1,
	518);
INSERT INTO E_CSME
	VALUES (516,
	489);
INSERT INTO E_CEA
	VALUES (516);
INSERT INTO ACT_SMT
	VALUES (517,
	515,
	519,
	2,
	1,
	'UI_A3: setTargetPressed line: 2');
INSERT INTO ACT_BRG
	VALUES (517,
	298,
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (519,
	515,
	0,
	3,
	1,
	'UI_A3: setTargetPressed line: 3');
INSERT INTO ACT_FNC
	VALUES (519,
	220,
	3,
	3);
INSERT INTO V_VAL
	VALUES (520,
	0,
	0,
	2,
	43,
	45,
	0,
	0,
	0,
	0,
	271,
	515);
INSERT INTO V_TVL
	VALUES (520,
	518);
INSERT INTO V_PAR
	VALUES (520,
	517,
	0,
	'evt',
	0,
	2,
	38);
INSERT INTO V_VAR
	VALUES (518,
	515,
	'evt',
	1,
	271);
INSERT INTO V_TRN
	VALUES (518,
	0,
	'');
INSERT INTO SM_TXN
	VALUES (512,
	507,
	508,
	0);
INSERT INTO SM_NSTXN
	VALUES (521,
	507,
	508,
	492,
	0);
INSERT INTO SM_TAH
	VALUES (522,
	507,
	521);
INSERT INTO SM_AH
	VALUES (522,
	507);
INSERT INTO SM_ACT
	VALUES (522,
	507,
	1,
	'create event instance evt of UI_A4:startStopPressed() to UI class;
GuiBridge::feedStartStopPressedEvent(evt: evt);
::sendStartStopPressed();',
	'');
INSERT INTO ACT_TAB
	VALUES (523,
	507,
	522);
INSERT INTO ACT_ACT
	VALUES (523,
	'class transition',
	0,
	524,
	0,
	0,
	'UI_A4: startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (524,
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
	523,
	0);
INSERT INTO ACT_SMT
	VALUES (525,
	524,
	526,
	1,
	1,
	'UI_A4: startStopPressed line: 1');
INSERT INTO E_ESS
	VALUES (525,
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
	VALUES (525,
	1,
	527);
INSERT INTO E_CSME
	VALUES (525,
	492);
INSERT INTO E_CEA
	VALUES (525);
INSERT INTO ACT_SMT
	VALUES (526,
	524,
	528,
	2,
	1,
	'UI_A4: startStopPressed line: 2');
INSERT INTO ACT_BRG
	VALUES (526,
	314,
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (528,
	524,
	0,
	3,
	1,
	'UI_A4: startStopPressed line: 3');
INSERT INTO ACT_FNC
	VALUES (528,
	216,
	3,
	3);
INSERT INTO V_VAL
	VALUES (529,
	0,
	0,
	2,
	43,
	45,
	0,
	0,
	0,
	0,
	271,
	524);
INSERT INTO V_TVL
	VALUES (529,
	527);
INSERT INTO V_PAR
	VALUES (529,
	526,
	0,
	'evt',
	0,
	2,
	38);
INSERT INTO V_VAR
	VALUES (527,
	524,
	'evt',
	1,
	271);
INSERT INTO V_TRN
	VALUES (527,
	0,
	'');
INSERT INTO SM_TXN
	VALUES (521,
	507,
	508,
	0);
INSERT INTO SM_NSTXN
	VALUES (530,
	507,
	508,
	495,
	0);
INSERT INTO SM_TAH
	VALUES (531,
	507,
	530);
INSERT INTO SM_AH
	VALUES (531,
	507);
INSERT INTO SM_ACT
	VALUES (531,
	507,
	1,
	'create event instance evt of UI_A5:lapResetPressed() to UI class;
GuiBridge::feedLapResetPressedEvent(evt: evt);
::sendLapResetPressed();',
	'');
INSERT INTO ACT_TAB
	VALUES (532,
	507,
	531);
INSERT INTO ACT_ACT
	VALUES (532,
	'class transition',
	0,
	533,
	0,
	0,
	'UI_A5: lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (533,
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
	532,
	0);
INSERT INTO ACT_SMT
	VALUES (534,
	533,
	535,
	1,
	1,
	'UI_A5: lapResetPressed line: 1');
INSERT INTO E_ESS
	VALUES (534,
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
	VALUES (534,
	1,
	536);
INSERT INTO E_CSME
	VALUES (534,
	495);
INSERT INTO E_CEA
	VALUES (534);
INSERT INTO ACT_SMT
	VALUES (535,
	533,
	537,
	2,
	1,
	'UI_A5: lapResetPressed line: 2');
INSERT INTO ACT_BRG
	VALUES (535,
	310,
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (537,
	533,
	0,
	3,
	1,
	'UI_A5: lapResetPressed line: 3');
INSERT INTO ACT_FNC
	VALUES (537,
	203,
	3,
	3);
INSERT INTO V_VAL
	VALUES (538,
	0,
	0,
	2,
	42,
	44,
	0,
	0,
	0,
	0,
	271,
	533);
INSERT INTO V_TVL
	VALUES (538,
	536);
INSERT INTO V_PAR
	VALUES (538,
	535,
	0,
	'evt',
	0,
	2,
	37);
INSERT INTO V_VAR
	VALUES (536,
	533,
	'evt',
	1,
	271);
INSERT INTO V_TRN
	VALUES (536,
	0,
	'');
INSERT INTO SM_TXN
	VALUES (530,
	507,
	508,
	0);
INSERT INTO SM_NSTXN
	VALUES (539,
	507,
	508,
	498,
	0);
INSERT INTO SM_TAH
	VALUES (540,
	507,
	539);
INSERT INTO SM_AH
	VALUES (540,
	507);
INSERT INTO SM_ACT
	VALUES (540,
	507,
	1,
	'create event instance evt of UI_A6:lightPressed() to UI class;
GuiBridge::feedLightPressedEvent(evt: evt);
::sendLightPressed();',
	'');
INSERT INTO ACT_TAB
	VALUES (541,
	507,
	540);
INSERT INTO ACT_ACT
	VALUES (541,
	'class transition',
	0,
	542,
	0,
	0,
	'UI_A6: lightPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (542,
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
	541,
	0);
INSERT INTO ACT_SMT
	VALUES (543,
	542,
	544,
	1,
	1,
	'UI_A6: lightPressed line: 1');
INSERT INTO E_ESS
	VALUES (543,
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
	VALUES (543,
	1,
	545);
INSERT INTO E_CSME
	VALUES (543,
	498);
INSERT INTO E_CEA
	VALUES (543);
INSERT INTO ACT_SMT
	VALUES (544,
	542,
	546,
	2,
	1,
	'UI_A6: lightPressed line: 2');
INSERT INTO ACT_BRG
	VALUES (544,
	306,
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (546,
	542,
	0,
	3,
	1,
	'UI_A6: lightPressed line: 3');
INSERT INTO ACT_FNC
	VALUES (546,
	208,
	3,
	3);
INSERT INTO V_VAL
	VALUES (547,
	0,
	0,
	2,
	39,
	41,
	0,
	0,
	0,
	0,
	271,
	542);
INSERT INTO V_TVL
	VALUES (547,
	545);
INSERT INTO V_PAR
	VALUES (547,
	544,
	0,
	'evt',
	0,
	2,
	34);
INSERT INTO V_VAR
	VALUES (545,
	542,
	'evt',
	1,
	271);
INSERT INTO V_TRN
	VALUES (545,
	0,
	'');
INSERT INTO SM_TXN
	VALUES (539,
	507,
	508,
	0);
INSERT INTO SM_NSTXN
	VALUES (548,
	507,
	508,
	501,
	0);
INSERT INTO SM_TAH
	VALUES (549,
	507,
	548);
INSERT INTO SM_AH
	VALUES (549,
	507);
INSERT INTO SM_ACT
	VALUES (549,
	507,
	1,
	'create event instance evt of UI_A7:modePressed() to UI class;
GuiBridge::feedModePressedEvent(evt: evt);
::sendModePressed();',
	'');
INSERT INTO ACT_TAB
	VALUES (550,
	507,
	549);
INSERT INTO ACT_ACT
	VALUES (550,
	'class transition',
	0,
	551,
	0,
	0,
	'UI_A7: modePressed',
	0);
INSERT INTO ACT_BLK
	VALUES (551,
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
	550,
	0);
INSERT INTO ACT_SMT
	VALUES (552,
	551,
	553,
	1,
	1,
	'UI_A7: modePressed line: 1');
INSERT INTO E_ESS
	VALUES (552,
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
	VALUES (552,
	1,
	554);
INSERT INTO E_CSME
	VALUES (552,
	501);
INSERT INTO E_CEA
	VALUES (552);
INSERT INTO ACT_SMT
	VALUES (553,
	551,
	555,
	2,
	1,
	'UI_A7: modePressed line: 2');
INSERT INTO ACT_BRG
	VALUES (553,
	302,
	2,
	12,
	2,
	1);
INSERT INTO ACT_SMT
	VALUES (555,
	551,
	0,
	3,
	1,
	'UI_A7: modePressed line: 3');
INSERT INTO ACT_FNC
	VALUES (555,
	212,
	3,
	3);
INSERT INTO V_VAL
	VALUES (556,
	0,
	0,
	2,
	38,
	40,
	0,
	0,
	0,
	0,
	271,
	551);
INSERT INTO V_TVL
	VALUES (556,
	554);
INSERT INTO V_PAR
	VALUES (556,
	553,
	0,
	'evt',
	0,
	2,
	33);
INSERT INTO V_VAR
	VALUES (554,
	551,
	'evt',
	1,
	271);
INSERT INTO V_TRN
	VALUES (554,
	0,
	'');
INSERT INTO SM_TXN
	VALUES (548,
	507,
	508,
	0);
INSERT INTO PE_PE
	VALUES (557,
	1,
	2,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (557,
	0,
	1,
	'shared',
	'',
	0);
INSERT INTO PE_PE
	VALUES (54,
	1,
	557,
	0,
	3);
INSERT INTO S_DT
	VALUES (54,
	0,
	'Unit',
	'',
	'');
INSERT INTO S_EDT
	VALUES (54);
INSERT INTO S_ENUM
	VALUES (58,
	'km',
	'',
	54,
	0);
INSERT INTO S_ENUM
	VALUES (61,
	'meters',
	'',
	54,
	58);
INSERT INTO S_ENUM
	VALUES (64,
	'minPerKm',
	'',
	54,
	61);
INSERT INTO S_ENUM
	VALUES (67,
	'kmPerHour',
	'',
	54,
	64);
INSERT INTO S_ENUM
	VALUES (70,
	'miles',
	'',
	54,
	67);
INSERT INTO S_ENUM
	VALUES (73,
	'yards',
	'',
	54,
	70);
INSERT INTO S_ENUM
	VALUES (76,
	'feet',
	'',
	54,
	73);
INSERT INTO S_ENUM
	VALUES (79,
	'minPerMile',
	'',
	54,
	76);
INSERT INTO S_ENUM
	VALUES (82,
	'mph',
	'',
	54,
	79);
INSERT INTO S_ENUM
	VALUES (85,
	'bpm',
	'',
	54,
	82);
INSERT INTO S_ENUM
	VALUES (88,
	'laps',
	'',
	54,
	85);
INSERT INTO PE_PE
	VALUES (149,
	1,
	557,
	0,
	3);
INSERT INTO S_DT
	VALUES (149,
	0,
	'Indicator',
	'',
	'');
INSERT INTO S_EDT
	VALUES (149);
INSERT INTO S_ENUM
	VALUES (152,
	'Blank',
	'',
	149,
	0);
INSERT INTO S_ENUM
	VALUES (155,
	'Down',
	'',
	149,
	152);
INSERT INTO S_ENUM
	VALUES (158,
	'Flat',
	'',
	149,
	155);
INSERT INTO S_ENUM
	VALUES (161,
	'Up',
	'',
	149,
	158);
INSERT INTO PE_PE
	VALUES (6,
	1,
	557,
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
	204,
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
	204,
	'setData',
	'',
	0,
	'',
	8);
INSERT INTO C_PP
	VALUES (93,
	17,
	92,
	'value',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (55,
	17,
	54,
	'unit',
	'',
	0,
	'',
	93);
INSERT INTO C_EP
	VALUES (126,
	6,
	-1,
	'startTest',
	'');
INSERT INTO C_IO
	VALUES (126,
	204,
	'startTest',
	'',
	0,
	'',
	17);
INSERT INTO C_EP
	VALUES (133,
	6,
	-1,
	'setIndicator',
	'');
INSERT INTO C_IO
	VALUES (133,
	204,
	'setIndicator',
	'',
	0,
	'',
	126);
INSERT INTO C_PP
	VALUES (150,
	133,
	149,
	'indicator',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (172,
	6,
	-1,
	'newGoalSpec',
	'');
INSERT INTO C_IO
	VALUES (172,
	204,
	'newGoalSpec',
	'',
	0,
	'',
	133);
INSERT INTO C_PP
	VALUES (558,
	172,
	14,
	'sequenceNumber',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (559,
	172,
	92,
	'minimum',
	'',
	0,
	'',
	558);
INSERT INTO C_PP
	VALUES (560,
	172,
	92,
	'maximum',
	'',
	0,
	'',
	559);
INSERT INTO C_PP
	VALUES (561,
	172,
	92,
	'span',
	'',
	0,
	'',
	560);
INSERT INTO C_PP
	VALUES (562,
	172,
	376,
	'criteriaType',
	'',
	0,
	'',
	561);
INSERT INTO C_PP
	VALUES (563,
	172,
	379,
	'spanType',
	'',
	0,
	'',
	562);
INSERT INTO PE_PE
	VALUES (177,
	1,
	557,
	0,
	6);
INSERT INTO C_I
	VALUES (177,
	0,
	'UITracking',
	'');
INSERT INTO C_EP
	VALUES (179,
	177,
	-1,
	'setTargetPressed',
	'');
INSERT INTO C_IO
	VALUES (179,
	204,
	'setTargetPressed',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (183,
	177,
	-1,
	'startStopPressed',
	'');
INSERT INTO C_IO
	VALUES (183,
	204,
	'startStopPressed',
	'',
	0,
	'',
	179);
INSERT INTO C_EP
	VALUES (187,
	177,
	-1,
	'lapResetPressed',
	'');
INSERT INTO C_IO
	VALUES (187,
	204,
	'lapResetPressed',
	'',
	0,
	'',
	183);
INSERT INTO C_EP
	VALUES (191,
	177,
	-1,
	'modePressed',
	'');
INSERT INTO C_IO
	VALUES (191,
	204,
	'modePressed',
	'',
	0,
	'',
	187);
INSERT INTO C_EP
	VALUES (195,
	177,
	-1,
	'newGoalSpec',
	'');
INSERT INTO C_IO
	VALUES (195,
	204,
	'newGoalSpec',
	'',
	0,
	'',
	191);
INSERT INTO C_PP
	VALUES (564,
	195,
	14,
	'sequenceNumber',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (565,
	195,
	92,
	'minimum',
	'',
	0,
	'',
	564);
INSERT INTO C_PP
	VALUES (566,
	195,
	92,
	'maximum',
	'',
	0,
	'',
	565);
INSERT INTO C_PP
	VALUES (567,
	195,
	92,
	'span',
	'',
	0,
	'',
	566);
INSERT INTO C_PP
	VALUES (568,
	195,
	376,
	'criteriaType',
	'',
	0,
	'',
	567);
INSERT INTO C_PP
	VALUES (569,
	195,
	379,
	'spanType',
	'',
	0,
	'',
	568);
INSERT INTO C_EP
	VALUES (199,
	177,
	-1,
	'lightPressed',
	'');
INSERT INTO C_IO
	VALUES (199,
	204,
	'lightPressed',
	'',
	0,
	'',
	195);
INSERT INTO PE_PE
	VALUES (204,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (204,
	0,
	'void',
	'',
	'');
INSERT INTO S_CDT
	VALUES (204,
	0);
INSERT INTO PE_PE
	VALUES (56,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (56,
	0,
	'boolean',
	'',
	'');
INSERT INTO S_CDT
	VALUES (56,
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
	VALUES (92,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (92,
	0,
	'real',
	'',
	'');
INSERT INTO S_CDT
	VALUES (92,
	3);
INSERT INTO PE_PE
	VALUES (334,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (334,
	0,
	'string',
	'',
	'');
INSERT INTO S_CDT
	VALUES (334,
	4);
INSERT INTO PE_PE
	VALUES (570,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (570,
	0,
	'unique_id',
	'',
	'');
INSERT INTO S_CDT
	VALUES (570,
	5);
INSERT INTO PE_PE
	VALUES (416,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (416,
	0,
	'state<State_Model>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (416,
	6);
INSERT INTO PE_PE
	VALUES (571,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (571,
	0,
	'same_as<Base_Attribute>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (571,
	7);
INSERT INTO PE_PE
	VALUES (432,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (432,
	0,
	'inst_ref<Object>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (432,
	8);
INSERT INTO PE_PE
	VALUES (572,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (572,
	0,
	'inst_ref_set<Object>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (572,
	9);
INSERT INTO PE_PE
	VALUES (271,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (271,
	0,
	'inst<Event>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (271,
	10);
INSERT INTO PE_PE
	VALUES (573,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (573,
	0,
	'inst<Mapping>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (573,
	11);
INSERT INTO PE_PE
	VALUES (574,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (574,
	0,
	'inst_ref<Mapping>',
	'',
	'');
INSERT INTO S_CDT
	VALUES (574,
	12);
INSERT INTO PE_PE
	VALUES (575,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (575,
	0,
	'component_ref',
	'',
	'');
INSERT INTO S_CDT
	VALUES (575,
	13);
INSERT INTO PE_PE
	VALUES (227,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (227,
	0,
	'date',
	'',
	'');
INSERT INTO S_UDT
	VALUES (227,
	573,
	1);
INSERT INTO PE_PE
	VALUES (268,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (268,
	0,
	'inst_ref<Timer>',
	'',
	'');
INSERT INTO S_UDT
	VALUES (268,
	574,
	3);
INSERT INTO PE_PE
	VALUES (264,
	1,
	0,
	0,
	3);
INSERT INTO S_DT
	VALUES (264,
	0,
	'timestamp',
	'',
	'');
INSERT INTO S_UDT
	VALUES (264,
	573,
	2);
-- root-types-contained: SystemModel_c
-- BP 7.1 content: StreamData syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SYS
	VALUES (576,
	'Tracking',
	1);
INSERT INTO EP_PKG
	VALUES (577,
	576,
	576,
	'Tracking',
	'',
	0);
INSERT INTO PE_PE
	VALUES (578,
	1,
	577,
	0,
	2);
INSERT INTO C_C
	VALUES (578,
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
	VALUES (579,
	578,
	'Location',
	0,
	0);
INSERT INTO C_IR
	VALUES (580,
	581,
	0,
	579);
INSERT INTO C_R
	VALUES (580,
	'TrackingLocation',
	'',
	'Unnamed Interface',
	'Tracking::Location::TrackingLocation');
INSERT INTO SPR_REP
	VALUES (582,
	583,
	580);
INSERT INTO SPR_RO
	VALUES (582,
	'getDistance',
	'Returns distance, in kilometers, between the "from" and "to" coordinates passed as parameters.
The coordinates must be passed as decimal degrees.',
	'return 1;',
	1);
INSERT INTO ACT_ROB
	VALUES (584,
	582);
INSERT INTO ACT_ACT
	VALUES (584,
	'interface operation',
	0,
	585,
	0,
	0,
	'Location::TrackingLocation::getDistance',
	0);
INSERT INTO ACT_BLK
	VALUES (585,
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
	584,
	0);
INSERT INTO ACT_SMT
	VALUES (586,
	585,
	0,
	1,
	1,
	'Location::TrackingLocation::getDistance line: 1');
INSERT INTO ACT_RET
	VALUES (586,
	587);
INSERT INTO V_VAL
	VALUES (587,
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
	585);
INSERT INTO V_LIN
	VALUES (587,
	'1');
INSERT INTO SPR_REP
	VALUES (588,
	589,
	580);
INSERT INTO SPR_RO
	VALUES (588,
	'getLocation',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (590,
	588);
INSERT INTO ACT_ACT
	VALUES (590,
	'interface operation',
	0,
	591,
	0,
	0,
	'Location::TrackingLocation::getLocation',
	0);
INSERT INTO ACT_BLK
	VALUES (591,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	590,
	0);
INSERT INTO SPR_REP
	VALUES (592,
	593,
	580);
INSERT INTO SPR_RO
	VALUES (592,
	'registerListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (594,
	592);
INSERT INTO ACT_ACT
	VALUES (594,
	'interface operation',
	0,
	595,
	0,
	0,
	'Location::TrackingLocation::registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (595,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	594,
	0);
INSERT INTO SPR_REP
	VALUES (596,
	597,
	580);
INSERT INTO SPR_RO
	VALUES (596,
	'unregisterListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (598,
	596);
INSERT INTO ACT_ACT
	VALUES (598,
	'interface operation',
	0,
	599,
	0,
	0,
	'Location::TrackingLocation::unregisterListener',
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
INSERT INTO C_PO
	VALUES (600,
	578,
	'UI',
	0,
	0);
INSERT INTO C_IR
	VALUES (601,
	602,
	0,
	600);
INSERT INTO C_R
	VALUES (601,
	'TrackingUI',
	'',
	'Unnamed Interface',
	'Tracking::UI::TrackingUI');
INSERT INTO SPR_REP
	VALUES (603,
	604,
	601);
INSERT INTO SPR_RO
	VALUES (603,
	'setData',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (605,
	603);
INSERT INTO ACT_ACT
	VALUES (605,
	'interface operation',
	0,
	606,
	0,
	0,
	'UI::TrackingUI::setData',
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
INSERT INTO SPR_REP
	VALUES (607,
	608,
	601);
INSERT INTO SPR_RO
	VALUES (607,
	'setIndicator',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (609,
	607);
INSERT INTO ACT_ACT
	VALUES (609,
	'interface operation',
	0,
	610,
	0,
	0,
	'UI::TrackingUI::setIndicator',
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
INSERT INTO SPR_REP
	VALUES (611,
	612,
	601);
INSERT INTO SPR_RO
	VALUES (611,
	'setTime',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (613,
	611);
INSERT INTO ACT_ACT
	VALUES (613,
	'interface operation',
	0,
	614,
	0,
	0,
	'UI::TrackingUI::setTime',
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
INSERT INTO SPR_REP
	VALUES (615,
	616,
	601);
INSERT INTO SPR_RO
	VALUES (615,
	'newGoalSpec',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (617,
	615);
INSERT INTO ACT_ACT
	VALUES (617,
	'interface operation',
	0,
	618,
	0,
	0,
	'UI::TrackingUI::newGoalSpec',
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
INSERT INTO C_PO
	VALUES (619,
	578,
	'HeartRateMonitor',
	0,
	0);
INSERT INTO C_IR
	VALUES (620,
	621,
	0,
	619);
INSERT INTO C_R
	VALUES (620,
	'TrackingHeartRateMonitor',
	'',
	'Unnamed Interface',
	'Tracking::HeartRateMonitor::TrackingHeartRateMonitor');
INSERT INTO SPR_REP
	VALUES (622,
	623,
	620);
INSERT INTO SPR_RO
	VALUES (622,
	'registerListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (624,
	622);
INSERT INTO ACT_ACT
	VALUES (624,
	'interface operation',
	0,
	625,
	0,
	0,
	'HeartRateMonitor::TrackingHeartRateMonitor::registerListener',
	0);
INSERT INTO ACT_BLK
	VALUES (625,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	624,
	0);
INSERT INTO SPR_REP
	VALUES (626,
	627,
	620);
INSERT INTO SPR_RO
	VALUES (626,
	'unregisterListener',
	'',
	'',
	1);
INSERT INTO ACT_ROB
	VALUES (628,
	626);
INSERT INTO ACT_ACT
	VALUES (628,
	'interface operation',
	0,
	629,
	0,
	0,
	'HeartRateMonitor::TrackingHeartRateMonitor::unregisterListener',
	0);
INSERT INTO ACT_BLK
	VALUES (629,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	628,
	0);
INSERT INTO C_PO
	VALUES (630,
	578,
	'Tracking',
	0,
	0);
INSERT INTO C_IR
	VALUES (631,
	632,
	0,
	630);
INSERT INTO C_P
	VALUES (631,
	'Tracking',
	'Unnamed Interface',
	'',
	'Tracking::Tracking::Tracking');
INSERT INTO SPR_PEP
	VALUES (633,
	634,
	631);
INSERT INTO SPR_PO
	VALUES (633,
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
	VALUES (635,
	633);
INSERT INTO ACT_ACT
	VALUES (635,
	'interface operation',
	0,
	636,
	0,
	0,
	'Tracking::Tracking::heartRateChanged',
	0);
INSERT INTO ACT_BLK
	VALUES (636,
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
	635,
	0);
INSERT INTO ACT_SMT
	VALUES (637,
	636,
	638,
	6,
	1,
	'Tracking::Tracking::heartRateChanged line: 6');
INSERT INTO ACT_FIO
	VALUES (637,
	639,
	1,
	'any',
	640,
	6,
	38);
INSERT INTO ACT_SMT
	VALUES (638,
	636,
	0,
	7,
	1,
	'Tracking::Tracking::heartRateChanged line: 7');
INSERT INTO ACT_IF
	VALUES (638,
	641,
	642,
	0,
	0);
INSERT INTO V_VAL
	VALUES (643,
	0,
	0,
	7,
	15,
	21,
	0,
	0,
	0,
	0,
	432,
	636);
INSERT INTO V_IRF
	VALUES (643,
	639);
INSERT INTO V_VAL
	VALUES (644,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	636);
INSERT INTO V_UNY
	VALUES (644,
	643,
	'empty');
INSERT INTO V_VAL
	VALUES (642,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	636);
INSERT INTO V_UNY
	VALUES (642,
	644,
	'not');
INSERT INTO V_VAR
	VALUES (639,
	636,
	'session',
	1,
	432);
INSERT INTO V_INT
	VALUES (639,
	0,
	640);
INSERT INTO ACT_BLK
	VALUES (641,
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
	635,
	0);
INSERT INTO ACT_SMT
	VALUES (645,
	641,
	0,
	8,
	3,
	'Tracking::Tracking::heartRateChanged line: 8');
INSERT INTO ACT_TFM
	VALUES (645,
	646,
	639,
	8,
	11,
	0,
	0);
INSERT INTO V_VAL
	VALUES (647,
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
	641);
INSERT INTO V_PVL
	VALUES (647,
	0,
	0,
	0,
	648);
INSERT INTO V_PAR
	VALUES (647,
	645,
	0,
	'heartRate',
	0,
	8,
	30);
INSERT INTO SPR_PEP
	VALUES (649,
	650,
	631);
INSERT INTO SPR_PO
	VALUES (649,
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
	VALUES (651,
	649);
INSERT INTO ACT_ACT
	VALUES (651,
	'interface operation',
	0,
	652,
	0,
	0,
	'Tracking::Tracking::lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (652,
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
	651,
	0);
INSERT INTO ACT_SMT
	VALUES (653,
	652,
	654,
	4,
	1,
	'Tracking::Tracking::lapResetPressed line: 4');
INSERT INTO ACT_FIO
	VALUES (653,
	655,
	1,
	'any',
	656,
	4,
	43);
INSERT INTO ACT_SMT
	VALUES (654,
	652,
	0,
	5,
	1,
	'Tracking::Tracking::lapResetPressed line: 5');
INSERT INTO ACT_IF
	VALUES (654,
	657,
	658,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (659,
	652,
	0,
	7,
	1,
	'Tracking::Tracking::lapResetPressed line: 7');
INSERT INTO ACT_E
	VALUES (659,
	660,
	654);
INSERT INTO V_VAL
	VALUES (661,
	0,
	0,
	5,
	15,
	26,
	0,
	0,
	0,
	0,
	432,
	652);
INSERT INTO V_IRF
	VALUES (661,
	655);
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
	56,
	652);
INSERT INTO V_UNY
	VALUES (662,
	661,
	'empty');
INSERT INTO V_VAL
	VALUES (658,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	652);
INSERT INTO V_UNY
	VALUES (658,
	662,
	'not');
INSERT INTO V_VAR
	VALUES (655,
	652,
	'workoutTimer',
	1,
	432);
INSERT INTO V_INT
	VALUES (655,
	0,
	656);
INSERT INTO ACT_BLK
	VALUES (657,
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
	651,
	0);
INSERT INTO ACT_SMT
	VALUES (663,
	657,
	0,
	6,
	3,
	'Tracking::Tracking::lapResetPressed line: 6');
INSERT INTO E_ESS
	VALUES (663,
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
	VALUES (663);
INSERT INTO E_GSME
	VALUES (663,
	664);
INSERT INTO E_GEN
	VALUES (663,
	655);
INSERT INTO ACT_BLK
	VALUES (660,
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
	651,
	0);
INSERT INTO ACT_SMT
	VALUES (665,
	660,
	0,
	8,
	3,
	'Tracking::Tracking::lapResetPressed line: 8');
INSERT INTO ACT_BRG
	VALUES (665,
	666,
	8,
	8,
	8,
	3);
INSERT INTO V_VAL
	VALUES (667,
	0,
	0,
	8,
	28,
	92,
	0,
	0,
	0,
	0,
	334,
	660);
INSERT INTO V_LST
	VALUES (667,
	'Tracking:UI:lapResetPressed - No WorkoutTimer, so nothing to do.');
INSERT INTO V_PAR
	VALUES (667,
	665,
	0,
	'message',
	0,
	8,
	20);
INSERT INTO SPR_PEP
	VALUES (668,
	669,
	631);
INSERT INTO SPR_PO
	VALUES (668,
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
	VALUES (670,
	668);
INSERT INTO ACT_ACT
	VALUES (670,
	'interface operation',
	0,
	671,
	0,
	0,
	'Tracking::Tracking::modePressed',
	0);
INSERT INTO ACT_BLK
	VALUES (671,
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
	670,
	0);
INSERT INTO ACT_SMT
	VALUES (672,
	671,
	673,
	5,
	1,
	'Tracking::Tracking::modePressed line: 5');
INSERT INTO ACT_FIO
	VALUES (672,
	674,
	1,
	'any',
	640,
	5,
	38);
INSERT INTO ACT_SMT
	VALUES (673,
	671,
	0,
	6,
	1,
	'Tracking::Tracking::modePressed line: 6');
INSERT INTO ACT_IF
	VALUES (673,
	675,
	676,
	0,
	0);
INSERT INTO V_VAL
	VALUES (677,
	0,
	0,
	6,
	16,
	22,
	0,
	0,
	0,
	0,
	432,
	671);
INSERT INTO V_IRF
	VALUES (677,
	674);
INSERT INTO V_VAL
	VALUES (678,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	671);
INSERT INTO V_UNY
	VALUES (678,
	677,
	'empty');
INSERT INTO V_VAL
	VALUES (676,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	671);
INSERT INTO V_UNY
	VALUES (676,
	678,
	'not');
INSERT INTO V_VAR
	VALUES (674,
	671,
	'session',
	1,
	432);
INSERT INTO V_INT
	VALUES (674,
	0,
	640);
INSERT INTO ACT_BLK
	VALUES (675,
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
	670,
	0);
INSERT INTO ACT_SMT
	VALUES (679,
	675,
	680,
	7,
	3,
	'Tracking::Tracking::modePressed line: 7');
INSERT INTO ACT_SEL
	VALUES (679,
	681,
	1,
	'one',
	682);
INSERT INTO ACT_SR
	VALUES (679);
INSERT INTO ACT_LNK
	VALUES (683,
	'''current status indicated on''',
	679,
	684,
	0,
	2,
	685,
	7,
	42,
	7,
	50,
	7,
	53);
INSERT INTO ACT_SMT
	VALUES (680,
	675,
	0,
	8,
	3,
	'Tracking::Tracking::modePressed line: 8');
INSERT INTO E_ESS
	VALUES (680,
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
	VALUES (680);
INSERT INTO E_GSME
	VALUES (680,
	686);
INSERT INTO E_GEN
	VALUES (680,
	681);
INSERT INTO V_VAL
	VALUES (682,
	0,
	0,
	7,
	33,
	39,
	0,
	0,
	0,
	0,
	432,
	675);
INSERT INTO V_IRF
	VALUES (682,
	674);
INSERT INTO V_VAR
	VALUES (681,
	675,
	'display',
	1,
	432);
INSERT INTO V_INT
	VALUES (681,
	0,
	685);
INSERT INTO SPR_PEP
	VALUES (687,
	688,
	631);
INSERT INTO SPR_PO
	VALUES (687,
	'setTargetPressed',
	'',
	'// If a goal is currently executing, advance to the next one,
//   otherwise start the first specified goal, if it exists.
Goal::nextGoal();',
	1);
INSERT INTO ACT_POB
	VALUES (689,
	687);
INSERT INTO ACT_ACT
	VALUES (689,
	'interface operation',
	0,
	690,
	0,
	0,
	'Tracking::Tracking::setTargetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (690,
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
	689,
	0);
INSERT INTO ACT_SMT
	VALUES (691,
	690,
	0,
	3,
	1,
	'Tracking::Tracking::setTargetPressed line: 3');
INSERT INTO ACT_TFM
	VALUES (691,
	692,
	0,
	3,
	7,
	3,
	1);
INSERT INTO SPR_PEP
	VALUES (693,
	694,
	631);
INSERT INTO SPR_PO
	VALUES (693,
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
	VALUES (695,
	693);
INSERT INTO ACT_ACT
	VALUES (695,
	'interface operation',
	0,
	696,
	0,
	0,
	'Tracking::Tracking::startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (696,
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
	695,
	0);
INSERT INTO ACT_SMT
	VALUES (697,
	696,
	698,
	4,
	1,
	'Tracking::Tracking::startStopPressed line: 4');
INSERT INTO ACT_TFM
	VALUES (697,
	699,
	0,
	4,
	17,
	4,
	1);
INSERT INTO ACT_SMT
	VALUES (698,
	696,
	700,
	7,
	1,
	'Tracking::Tracking::startStopPressed line: 7');
INSERT INTO ACT_FIO
	VALUES (698,
	701,
	1,
	'any',
	656,
	7,
	43);
INSERT INTO ACT_SMT
	VALUES (700,
	696,
	0,
	8,
	1,
	'Tracking::Tracking::startStopPressed line: 8');
INSERT INTO E_ESS
	VALUES (700,
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
	VALUES (700);
INSERT INTO E_GSME
	VALUES (700,
	702);
INSERT INTO E_GEN
	VALUES (700,
	701);
INSERT INTO V_VAR
	VALUES (701,
	696,
	'workoutTimer',
	1,
	432);
INSERT INTO V_INT
	VALUES (701,
	0,
	656);
INSERT INTO SPR_PEP
	VALUES (703,
	704,
	631);
INSERT INTO SPR_PO
	VALUES (703,
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
	VALUES (705,
	703);
INSERT INTO ACT_ACT
	VALUES (705,
	'interface operation',
	0,
	706,
	0,
	0,
	'Tracking::Tracking::newGoalSpec',
	0);
INSERT INTO ACT_BLK
	VALUES (706,
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
	705,
	0);
INSERT INTO ACT_SMT
	VALUES (707,
	706,
	708,
	3,
	1,
	'Tracking::Tracking::newGoalSpec line: 3');
INSERT INTO ACT_FIO
	VALUES (707,
	709,
	1,
	'any',
	640,
	3,
	38);
INSERT INTO ACT_SMT
	VALUES (708,
	706,
	0,
	4,
	1,
	'Tracking::Tracking::newGoalSpec line: 4');
INSERT INTO ACT_IF
	VALUES (708,
	710,
	711,
	0,
	0);
INSERT INTO V_VAL
	VALUES (712,
	0,
	0,
	4,
	16,
	22,
	0,
	0,
	0,
	0,
	432,
	706);
INSERT INTO V_IRF
	VALUES (712,
	709);
INSERT INTO V_VAL
	VALUES (713,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	706);
INSERT INTO V_UNY
	VALUES (713,
	712,
	'empty');
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
	56,
	706);
INSERT INTO V_UNY
	VALUES (711,
	713,
	'not');
INSERT INTO V_VAR
	VALUES (709,
	706,
	'session',
	1,
	432);
INSERT INTO V_INT
	VALUES (709,
	0,
	640);
INSERT INTO ACT_BLK
	VALUES (710,
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
	705,
	0);
INSERT INTO ACT_SMT
	VALUES (714,
	710,
	715,
	5,
	3,
	'Tracking::Tracking::newGoalSpec line: 5');
INSERT INTO ACT_CR
	VALUES (714,
	716,
	1,
	717,
	5,
	38);
INSERT INTO ACT_SMT
	VALUES (715,
	710,
	718,
	6,
	3,
	'Tracking::Tracking::newGoalSpec line: 6');
INSERT INTO ACT_AI
	VALUES (715,
	719,
	720,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (718,
	710,
	721,
	7,
	3,
	'Tracking::Tracking::newGoalSpec line: 7');
INSERT INTO ACT_AI
	VALUES (718,
	722,
	723,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (721,
	710,
	724,
	8,
	3,
	'Tracking::Tracking::newGoalSpec line: 8');
INSERT INTO ACT_AI
	VALUES (721,
	725,
	726,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (724,
	710,
	727,
	9,
	3,
	'Tracking::Tracking::newGoalSpec line: 9');
INSERT INTO ACT_AI
	VALUES (724,
	728,
	729,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (727,
	710,
	730,
	10,
	3,
	'Tracking::Tracking::newGoalSpec line: 10');
INSERT INTO ACT_AI
	VALUES (727,
	731,
	732,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (730,
	710,
	733,
	11,
	3,
	'Tracking::Tracking::newGoalSpec line: 11');
INSERT INTO ACT_AI
	VALUES (730,
	734,
	735,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (733,
	710,
	0,
	12,
	3,
	'Tracking::Tracking::newGoalSpec line: 12');
INSERT INTO ACT_REL
	VALUES (733,
	716,
	709,
	'''included in''',
	736,
	12,
	37,
	12,
	41);
INSERT INTO V_VAL
	VALUES (737,
	1,
	0,
	6,
	3,
	10,
	0,
	0,
	0,
	0,
	432,
	710);
INSERT INTO V_IRF
	VALUES (737,
	716);
INSERT INTO V_VAL
	VALUES (720,
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
	710);
INSERT INTO V_AVL
	VALUES (720,
	737,
	717,
	738);
INSERT INTO V_VAL
	VALUES (719,
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
	710);
INSERT INTO V_PVL
	VALUES (719,
	0,
	0,
	0,
	739);
INSERT INTO V_VAL
	VALUES (740,
	1,
	0,
	7,
	3,
	10,
	0,
	0,
	0,
	0,
	432,
	710);
INSERT INTO V_IRF
	VALUES (740,
	716);
INSERT INTO V_VAL
	VALUES (723,
	1,
	0,
	7,
	12,
	18,
	0,
	0,
	0,
	0,
	92,
	710);
INSERT INTO V_AVL
	VALUES (723,
	740,
	717,
	741);
INSERT INTO V_VAL
	VALUES (722,
	0,
	0,
	7,
	28,
	34,
	0,
	0,
	0,
	0,
	92,
	710);
INSERT INTO V_PVL
	VALUES (722,
	0,
	0,
	0,
	742);
INSERT INTO V_VAL
	VALUES (743,
	1,
	0,
	8,
	3,
	10,
	0,
	0,
	0,
	0,
	432,
	710);
INSERT INTO V_IRF
	VALUES (743,
	716);
INSERT INTO V_VAL
	VALUES (726,
	1,
	0,
	8,
	12,
	18,
	0,
	0,
	0,
	0,
	92,
	710);
INSERT INTO V_AVL
	VALUES (726,
	743,
	717,
	744);
INSERT INTO V_VAL
	VALUES (725,
	0,
	0,
	8,
	28,
	34,
	0,
	0,
	0,
	0,
	92,
	710);
INSERT INTO V_PVL
	VALUES (725,
	0,
	0,
	0,
	745);
INSERT INTO V_VAL
	VALUES (746,
	1,
	0,
	9,
	3,
	10,
	0,
	0,
	0,
	0,
	432,
	710);
INSERT INTO V_IRF
	VALUES (746,
	716);
INSERT INTO V_VAL
	VALUES (729,
	1,
	0,
	9,
	12,
	15,
	0,
	0,
	0,
	0,
	92,
	710);
INSERT INTO V_AVL
	VALUES (729,
	746,
	717,
	747);
INSERT INTO V_VAL
	VALUES (728,
	0,
	0,
	9,
	25,
	28,
	0,
	0,
	0,
	0,
	92,
	710);
INSERT INTO V_PVL
	VALUES (728,
	0,
	0,
	0,
	748);
INSERT INTO V_VAL
	VALUES (749,
	1,
	0,
	10,
	3,
	10,
	0,
	0,
	0,
	0,
	432,
	710);
INSERT INTO V_IRF
	VALUES (749,
	716);
INSERT INTO V_VAL
	VALUES (732,
	1,
	0,
	10,
	12,
	23,
	0,
	0,
	0,
	0,
	376,
	710);
INSERT INTO V_AVL
	VALUES (732,
	749,
	717,
	750);
INSERT INTO V_VAL
	VALUES (731,
	0,
	0,
	10,
	33,
	44,
	0,
	0,
	0,
	0,
	376,
	710);
INSERT INTO V_PVL
	VALUES (731,
	0,
	0,
	0,
	751);
INSERT INTO V_VAL
	VALUES (752,
	1,
	0,
	11,
	3,
	10,
	0,
	0,
	0,
	0,
	432,
	710);
INSERT INTO V_IRF
	VALUES (752,
	716);
INSERT INTO V_VAL
	VALUES (735,
	1,
	0,
	11,
	12,
	19,
	0,
	0,
	0,
	0,
	379,
	710);
INSERT INTO V_AVL
	VALUES (735,
	752,
	717,
	753);
INSERT INTO V_VAL
	VALUES (734,
	0,
	0,
	11,
	29,
	36,
	0,
	0,
	0,
	0,
	379,
	710);
INSERT INTO V_PVL
	VALUES (734,
	0,
	0,
	0,
	754);
INSERT INTO V_VAR
	VALUES (716,
	710,
	'goalSpec',
	1,
	432);
INSERT INTO V_INT
	VALUES (716,
	0,
	717);
INSERT INTO SPR_PEP
	VALUES (755,
	756,
	631);
INSERT INTO SPR_PO
	VALUES (755,
	'lightPressed',
	'',
	'',
	1);
INSERT INTO ACT_POB
	VALUES (757,
	755);
INSERT INTO ACT_ACT
	VALUES (757,
	'interface operation',
	0,
	758,
	0,
	0,
	'Tracking::Tracking::lightPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (758,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	757,
	0);
INSERT INTO PE_PE
	VALUES (759,
	1,
	0,
	578,
	7);
INSERT INTO EP_PKG
	VALUES (759,
	0,
	576,
	'Tracking',
	'',
	0);
INSERT INTO PE_PE
	VALUES (760,
	1,
	759,
	0,
	9);
INSERT INTO R_REL
	VALUES (760,
	1,
	'Indicates the first track point for a track log.  In
other words, this is the first recorded location in 
a chronological series of track points that make up
a track log.
Established when the first track point is recorded and 
exists for the lifetime of the track log.',
	0);
INSERT INTO R_SIMP
	VALUES (760);
INSERT INTO R_PART
	VALUES (761,
	760,
	762,
	0,
	1,
	'is start of');
INSERT INTO R_RTO
	VALUES (761,
	760,
	762,
	-1);
INSERT INTO R_OIR
	VALUES (761,
	760,
	762,
	0);
INSERT INTO R_PART
	VALUES (763,
	760,
	764,
	0,
	1,
	'has first');
INSERT INTO R_RTO
	VALUES (763,
	760,
	764,
	-1);
INSERT INTO R_OIR
	VALUES (763,
	760,
	764,
	0);
INSERT INTO PE_PE
	VALUES (765,
	1,
	759,
	0,
	9);
INSERT INTO R_REL
	VALUES (765,
	2,
	'Chronologically sequences the track points in a track log.
Established each time a new track point is recorded and 
exists for the lifetime of the track log.',
	0);
INSERT INTO R_SIMP
	VALUES (765);
INSERT INTO R_PART
	VALUES (763,
	765,
	766,
	0,
	1,
	'preceeds');
INSERT INTO R_RTO
	VALUES (763,
	765,
	766,
	-1);
INSERT INTO R_OIR
	VALUES (763,
	765,
	766,
	0);
INSERT INTO R_PART
	VALUES (763,
	765,
	767,
	0,
	1,
	'follows');
INSERT INTO R_RTO
	VALUES (763,
	765,
	767,
	-1);
INSERT INTO R_OIR
	VALUES (763,
	765,
	767,
	0);
INSERT INTO PE_PE
	VALUES (768,
	1,
	759,
	0,
	9);
INSERT INTO R_REL
	VALUES (768,
	3,
	'Represents the most recently recorded track point
in a track log.  
Established each time a new track point is recorded and
removed from the previously recorded track point at the same time.',
	0);
INSERT INTO R_SIMP
	VALUES (768);
INSERT INTO R_PART
	VALUES (763,
	768,
	769,
	0,
	1,
	'has last');
INSERT INTO R_RTO
	VALUES (763,
	768,
	769,
	-1);
INSERT INTO R_OIR
	VALUES (763,
	768,
	769,
	0);
INSERT INTO R_PART
	VALUES (761,
	768,
	770,
	0,
	1,
	'is last for');
INSERT INTO R_RTO
	VALUES (761,
	768,
	770,
	-1);
INSERT INTO R_OIR
	VALUES (761,
	768,
	770,
	0);
INSERT INTO PE_PE
	VALUES (771,
	1,
	759,
	0,
	9);
INSERT INTO R_REL
	VALUES (771,
	5,
	'Established when a lap marker is created and exists
for the lifetime of the track log.',
	0);
INSERT INTO R_SIMP
	VALUES (771);
INSERT INTO R_PART
	VALUES (772,
	771,
	773,
	1,
	1,
	'has laps defined by');
INSERT INTO R_RTO
	VALUES (772,
	771,
	773,
	-1);
INSERT INTO R_OIR
	VALUES (772,
	771,
	773,
	0);
INSERT INTO R_PART
	VALUES (761,
	771,
	774,
	0,
	0,
	'marks end of lap in');
INSERT INTO R_RTO
	VALUES (761,
	771,
	774,
	-1);
INSERT INTO R_OIR
	VALUES (761,
	771,
	774,
	0);
INSERT INTO PE_PE
	VALUES (684,
	1,
	759,
	0,
	9);
INSERT INTO R_REL
	VALUES (684,
	7,
	'Established when a workout session is created and 
exists for the duration of the session.',
	0);
INSERT INTO R_SIMP
	VALUES (684);
INSERT INTO R_PART
	VALUES (640,
	684,
	775,
	0,
	0,
	'indicates current status of');
INSERT INTO R_RTO
	VALUES (640,
	684,
	775,
	-1);
INSERT INTO R_OIR
	VALUES (640,
	684,
	775,
	0);
INSERT INTO R_PART
	VALUES (685,
	684,
	776,
	0,
	0,
	'current status indicated on');
INSERT INTO R_RTO
	VALUES (685,
	684,
	776,
	-1);
INSERT INTO R_OIR
	VALUES (685,
	684,
	776,
	0);
INSERT INTO PE_PE
	VALUES (777,
	1,
	759,
	0,
	9);
INSERT INTO R_REL
	VALUES (777,
	8,
	'Established when a workout session is created and exists for the duration
of the session.',
	0);
INSERT INTO R_SIMP
	VALUES (777);
INSERT INTO R_PART
	VALUES (640,
	777,
	778,
	0,
	0,
	'acts as the stopwatch for');
INSERT INTO R_RTO
	VALUES (640,
	777,
	778,
	-1);
INSERT INTO R_OIR
	VALUES (640,
	777,
	778,
	0);
INSERT INTO R_PART
	VALUES (656,
	777,
	779,
	0,
	0,
	'is timed by');
INSERT INTO R_RTO
	VALUES (656,
	777,
	779,
	-1);
INSERT INTO R_OIR
	VALUES (656,
	777,
	779,
	0);
INSERT INTO PE_PE
	VALUES (780,
	1,
	759,
	0,
	9);
INSERT INTO R_REL
	VALUES (780,
	4,
	'Established when a workout session is created and
exists for the duration of the session.',
	0);
INSERT INTO R_SIMP
	VALUES (780);
INSERT INTO R_PART
	VALUES (640,
	780,
	781,
	0,
	0,
	'represents path for');
INSERT INTO R_RTO
	VALUES (640,
	780,
	781,
	-1);
INSERT INTO R_OIR
	VALUES (640,
	780,
	781,
	0);
INSERT INTO R_PART
	VALUES (761,
	780,
	782,
	0,
	0,
	'captures path in');
INSERT INTO R_RTO
	VALUES (761,
	780,
	782,
	-1);
INSERT INTO R_OIR
	VALUES (761,
	780,
	782,
	0);
INSERT INTO PE_PE
	VALUES (783,
	1,
	759,
	0,
	9);
INSERT INTO R_REL
	VALUES (783,
	6,
	'Established when a heart rate sample is created and exists for
the duration of the workout session.',
	0);
INSERT INTO R_SIMP
	VALUES (783);
INSERT INTO R_PART
	VALUES (784,
	783,
	785,
	1,
	1,
	'tracks heart rate over time as');
INSERT INTO R_RTO
	VALUES (784,
	783,
	785,
	-1);
INSERT INTO R_OIR
	VALUES (784,
	783,
	785,
	0);
INSERT INTO R_PART
	VALUES (640,
	783,
	786,
	0,
	0,
	'was collected during');
INSERT INTO R_RTO
	VALUES (640,
	783,
	786,
	-1);
INSERT INTO R_OIR
	VALUES (640,
	783,
	786,
	0);
INSERT INTO PE_PE
	VALUES (787,
	1,
	759,
	0,
	9);
INSERT INTO R_REL
	VALUES (787,
	9,
	'Established when goal execution begins and removed when it ends.',
	0);
INSERT INTO R_SIMP
	VALUES (787);
INSERT INTO R_PART
	VALUES (717,
	787,
	788,
	0,
	0,
	'specified by');
INSERT INTO R_RTO
	VALUES (717,
	787,
	788,
	-1);
INSERT INTO R_OIR
	VALUES (717,
	787,
	788,
	0);
INSERT INTO R_PART
	VALUES (789,
	787,
	790,
	1,
	1,
	'specifies');
INSERT INTO R_RTO
	VALUES (789,
	787,
	790,
	-1);
INSERT INTO R_OIR
	VALUES (789,
	787,
	790,
	0);
INSERT INTO PE_PE
	VALUES (736,
	1,
	759,
	0,
	9);
INSERT INTO R_REL
	VALUES (736,
	10,
	'Established when a goal specification is created and exists 
for the duration of a workout session.',
	0);
INSERT INTO R_SIMP
	VALUES (736);
INSERT INTO R_PART
	VALUES (640,
	736,
	791,
	0,
	0,
	'included in');
INSERT INTO R_RTO
	VALUES (640,
	736,
	791,
	-1);
INSERT INTO R_OIR
	VALUES (640,
	736,
	791,
	0);
INSERT INTO R_PART
	VALUES (717,
	736,
	792,
	1,
	1,
	'includes');
INSERT INTO R_RTO
	VALUES (717,
	736,
	792,
	-1);
INSERT INTO R_OIR
	VALUES (717,
	736,
	792,
	0);
INSERT INTO PE_PE
	VALUES (793,
	1,
	759,
	0,
	9);
INSERT INTO R_REL
	VALUES (793,
	11,
	'Established when a goal begins executing and removed when it ends.',
	0);
INSERT INTO R_SIMP
	VALUES (793);
INSERT INTO R_PART
	VALUES (640,
	793,
	794,
	0,
	1,
	'is currently executing within');
INSERT INTO R_RTO
	VALUES (640,
	793,
	794,
	-1);
INSERT INTO R_OIR
	VALUES (640,
	793,
	794,
	0);
INSERT INTO R_PART
	VALUES (789,
	793,
	795,
	0,
	1,
	'is currently executing');
INSERT INTO R_RTO
	VALUES (789,
	793,
	795,
	-1);
INSERT INTO R_OIR
	VALUES (789,
	793,
	795,
	0);
INSERT INTO PE_PE
	VALUES (796,
	1,
	759,
	0,
	9);
INSERT INTO R_REL
	VALUES (796,
	12,
	'Established when an achievement period begins and exists for 
the duration of the associated workout session.',
	0);
INSERT INTO R_SIMP
	VALUES (796);
INSERT INTO R_PART
	VALUES (789,
	796,
	797,
	0,
	0,
	'specifies achievement of');
INSERT INTO R_RTO
	VALUES (789,
	796,
	797,
	-1);
INSERT INTO R_OIR
	VALUES (789,
	796,
	797,
	0);
INSERT INTO R_PART
	VALUES (798,
	796,
	799,
	1,
	1,
	'has recorded');
INSERT INTO R_RTO
	VALUES (798,
	796,
	799,
	-1);
INSERT INTO R_OIR
	VALUES (798,
	796,
	799,
	0);
INSERT INTO PE_PE
	VALUES (800,
	1,
	759,
	0,
	9);
INSERT INTO R_REL
	VALUES (800,
	13,
	'Established when a goal completes execution and exists for the 
duration of the associated workout session.',
	0);
INSERT INTO R_SIMP
	VALUES (800);
INSERT INTO R_PART
	VALUES (789,
	800,
	801,
	1,
	1,
	'has executed');
INSERT INTO R_RTO
	VALUES (789,
	800,
	801,
	-1);
INSERT INTO R_OIR
	VALUES (789,
	800,
	801,
	0);
INSERT INTO R_PART
	VALUES (640,
	800,
	802,
	0,
	0,
	'was executed within');
INSERT INTO R_RTO
	VALUES (640,
	800,
	802,
	-1);
INSERT INTO R_OIR
	VALUES (640,
	800,
	802,
	0);
INSERT INTO PE_PE
	VALUES (803,
	1,
	759,
	0,
	9);
INSERT INTO R_REL
	VALUES (803,
	14,
	'Represents an open achievement record, one for which a start time has been recorded
but no end time has yet been recorded.  In other words, this association exists only
while the currently executing goal is being achieved.',
	0);
INSERT INTO R_SIMP
	VALUES (803);
INSERT INTO R_PART
	VALUES (789,
	803,
	804,
	0,
	1,
	'is open for');
INSERT INTO R_RTO
	VALUES (789,
	803,
	804,
	-1);
INSERT INTO R_OIR
	VALUES (789,
	803,
	804,
	0);
INSERT INTO R_PART
	VALUES (798,
	803,
	805,
	0,
	1,
	'has open');
INSERT INTO R_RTO
	VALUES (798,
	803,
	805,
	-1);
INSERT INTO R_OIR
	VALUES (798,
	803,
	805,
	0);
INSERT INTO PE_PE
	VALUES (806,
	1,
	759,
	0,
	5);
INSERT INTO S_EE
	VALUES (806,
	'Logging',
	'',
	'LOG',
	0,
	'',
	'Logging',
	1);
INSERT INTO S_BRG
	VALUES (807,
	806,
	'LogSuccess',
	'',
	0,
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (808,
	807,
	'message',
	334,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (809,
	807);
INSERT INTO ACT_ACT
	VALUES (809,
	'bridge',
	0,
	810,
	0,
	0,
	'Logging::LogSuccess',
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
INSERT INTO S_BRG
	VALUES (666,
	806,
	'LogFailure',
	'',
	0,
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (811,
	666,
	'message',
	334,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (812,
	666);
INSERT INTO ACT_ACT
	VALUES (812,
	'bridge',
	0,
	813,
	0,
	0,
	'Logging::LogFailure',
	0);
INSERT INTO ACT_BLK
	VALUES (813,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	812,
	0);
INSERT INTO S_BRG
	VALUES (814,
	806,
	'LogInfo',
	'',
	0,
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (815,
	814,
	'message',
	334,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (816,
	814);
INSERT INTO ACT_ACT
	VALUES (816,
	'bridge',
	0,
	817,
	0,
	0,
	'Logging::LogInfo',
	0);
INSERT INTO ACT_BLK
	VALUES (817,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	816,
	0);
INSERT INTO S_BRG
	VALUES (818,
	806,
	'LogDate',
	'',
	0,
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (819,
	818,
	'd',
	227,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (820,
	818,
	'message',
	334,
	0,
	'',
	819,
	'');
INSERT INTO ACT_BRB
	VALUES (821,
	818);
INSERT INTO ACT_ACT
	VALUES (821,
	'bridge',
	0,
	822,
	0,
	0,
	'Logging::LogDate',
	0);
INSERT INTO ACT_BLK
	VALUES (822,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	821,
	0);
INSERT INTO S_BRG
	VALUES (823,
	806,
	'LogTime',
	'',
	0,
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (824,
	823,
	't',
	264,
	0,
	'',
	825,
	'');
INSERT INTO S_BPARM
	VALUES (825,
	823,
	'message',
	334,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (826,
	823);
INSERT INTO ACT_ACT
	VALUES (826,
	'bridge',
	0,
	827,
	0,
	0,
	'Logging::LogTime',
	0);
INSERT INTO ACT_BLK
	VALUES (827,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	826,
	0);
INSERT INTO S_BRG
	VALUES (828,
	806,
	'LogReal',
	'',
	0,
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (829,
	828,
	'r',
	92,
	0,
	'',
	830,
	'');
INSERT INTO S_BPARM
	VALUES (830,
	828,
	'message',
	334,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (831,
	828);
INSERT INTO ACT_ACT
	VALUES (831,
	'bridge',
	0,
	832,
	0,
	0,
	'Logging::LogReal',
	0);
INSERT INTO ACT_BLK
	VALUES (832,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	831,
	0);
INSERT INTO S_BRG
	VALUES (833,
	806,
	'LogInteger',
	'',
	0,
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (834,
	833,
	'message',
	14,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (835,
	833);
INSERT INTO ACT_ACT
	VALUES (835,
	'bridge',
	0,
	836,
	0,
	0,
	'Logging::LogInteger',
	0);
INSERT INTO ACT_BLK
	VALUES (836,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	835,
	0);
INSERT INTO PE_PE
	VALUES (837,
	1,
	759,
	0,
	5);
INSERT INTO S_EE
	VALUES (837,
	'Time',
	'The Time external entity provides date, timestamp, and timer related operations.',
	'TIM',
	0,
	'',
	'Time',
	1);
INSERT INTO S_BRG
	VALUES (838,
	837,
	'current_date',
	'',
	1,
	227,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (839,
	838);
INSERT INTO ACT_ACT
	VALUES (839,
	'bridge',
	0,
	840,
	0,
	0,
	'Time::current_date',
	0);
INSERT INTO ACT_BLK
	VALUES (840,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	839,
	0);
INSERT INTO S_BRG
	VALUES (841,
	837,
	'create_date',
	'',
	1,
	227,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (842,
	841,
	'second',
	14,
	0,
	'',
	843,
	'');
INSERT INTO S_BPARM
	VALUES (844,
	841,
	'minute',
	14,
	0,
	'',
	845,
	'');
INSERT INTO S_BPARM
	VALUES (845,
	841,
	'hour',
	14,
	0,
	'',
	846,
	'');
INSERT INTO S_BPARM
	VALUES (846,
	841,
	'day',
	14,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (843,
	841,
	'month',
	14,
	0,
	'',
	844,
	'');
INSERT INTO S_BPARM
	VALUES (847,
	841,
	'year',
	14,
	0,
	'',
	842,
	'');
INSERT INTO ACT_BRB
	VALUES (848,
	841);
INSERT INTO ACT_ACT
	VALUES (848,
	'bridge',
	0,
	849,
	0,
	0,
	'Time::create_date',
	0);
INSERT INTO ACT_BLK
	VALUES (849,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	848,
	0);
INSERT INTO S_BRG
	VALUES (850,
	837,
	'get_second',
	'',
	1,
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (851,
	850,
	'date',
	227,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (852,
	850);
INSERT INTO ACT_ACT
	VALUES (852,
	'bridge',
	0,
	853,
	0,
	0,
	'Time::get_second',
	0);
INSERT INTO ACT_BLK
	VALUES (853,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	852,
	0);
INSERT INTO S_BRG
	VALUES (854,
	837,
	'get_minute',
	'',
	1,
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (855,
	854,
	'date',
	227,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (856,
	854);
INSERT INTO ACT_ACT
	VALUES (856,
	'bridge',
	0,
	857,
	0,
	0,
	'Time::get_minute',
	0);
INSERT INTO ACT_BLK
	VALUES (857,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	856,
	0);
INSERT INTO S_BRG
	VALUES (858,
	837,
	'get_hour',
	'',
	1,
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (859,
	858,
	'date',
	227,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (860,
	858);
INSERT INTO ACT_ACT
	VALUES (860,
	'bridge',
	0,
	861,
	0,
	0,
	'Time::get_hour',
	0);
INSERT INTO ACT_BLK
	VALUES (861,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	860,
	0);
INSERT INTO S_BRG
	VALUES (862,
	837,
	'get_day',
	'',
	1,
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (863,
	862,
	'date',
	227,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (864,
	862);
INSERT INTO ACT_ACT
	VALUES (864,
	'bridge',
	0,
	865,
	0,
	0,
	'Time::get_day',
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
	837,
	'get_month',
	'',
	1,
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (867,
	866,
	'date',
	227,
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
	'Time::get_month',
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
	837,
	'get_year',
	'',
	1,
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (871,
	870,
	'date',
	227,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (872,
	870);
INSERT INTO ACT_ACT
	VALUES (872,
	'bridge',
	0,
	873,
	0,
	0,
	'Time::get_year',
	0);
INSERT INTO ACT_BLK
	VALUES (873,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
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
INSERT INTO S_BRG
	VALUES (874,
	837,
	'current_clock',
	'',
	1,
	264,
	'',
	1,
	'');
INSERT INTO ACT_BRB
	VALUES (875,
	874);
INSERT INTO ACT_ACT
	VALUES (875,
	'bridge',
	0,
	876,
	0,
	0,
	'Time::current_clock',
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
INSERT INTO S_BRG
	VALUES (877,
	837,
	'timer_start',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Returns the instance
handle of the timer.',
	1,
	268,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (878,
	877,
	'microseconds',
	14,
	0,
	'',
	879,
	'');
INSERT INTO S_BPARM
	VALUES (879,
	877,
	'event_inst',
	271,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (880,
	877);
INSERT INTO ACT_ACT
	VALUES (880,
	'bridge',
	0,
	881,
	0,
	0,
	'Time::timer_start',
	0);
INSERT INTO ACT_BLK
	VALUES (881,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	880,
	0);
INSERT INTO S_BRG
	VALUES (882,
	837,
	'timer_start_recurring',
	'This bridge operation starts a timer set to expire in the specified number of
microseconds, generating the passed event upon expiration. Upon expiration, the
timer will be restarted and fire again in the specified number of microseconds
generating the passed event. This bridge operation returns the instance handle
of the timer.',
	1,
	268,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (883,
	882,
	'microseconds',
	14,
	0,
	'',
	884,
	'');
INSERT INTO S_BPARM
	VALUES (884,
	882,
	'event_inst',
	271,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (885,
	882);
INSERT INTO ACT_ACT
	VALUES (885,
	'bridge',
	0,
	886,
	0,
	0,
	'Time::timer_start_recurring',
	0);
INSERT INTO ACT_BLK
	VALUES (886,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
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
INSERT INTO S_BRG
	VALUES (887,
	837,
	'timer_remaining_time',
	'Returns the time remaining (in microseconds) for the passed timer instance. If
the timer has expired, a zero value is returned.',
	1,
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (888,
	887,
	'timer_inst_ref',
	268,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (889,
	887);
INSERT INTO ACT_ACT
	VALUES (889,
	'bridge',
	0,
	890,
	0,
	0,
	'Time::timer_remaining_time',
	0);
INSERT INTO ACT_BLK
	VALUES (890,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	889,
	0);
INSERT INTO S_BRG
	VALUES (891,
	837,
	'timer_reset_time',
	'This bridge operation attempts to set the passed existing timer to expire in
the specified number of microseconds. If the timer exists (that is, it has not
expired), a TRUE value is returned. If the timer no longer exists, a FALSE value
is returned.',
	1,
	56,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (892,
	891,
	'timer_inst_ref',
	268,
	0,
	'',
	893,
	'');
INSERT INTO S_BPARM
	VALUES (893,
	891,
	'microseconds',
	14,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (894,
	891);
INSERT INTO ACT_ACT
	VALUES (894,
	'bridge',
	0,
	895,
	0,
	0,
	'Time::timer_reset_time',
	0);
INSERT INTO ACT_BLK
	VALUES (895,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	894,
	0);
INSERT INTO S_BRG
	VALUES (896,
	837,
	'timer_add_time',
	'This bridge operation attempts to add the specified number of microseconds to a
passed existing timer. If the timer exists (that is, it has not expired), a TRUE
value is returned. If the timer no longer exists, a FALSE value is returned.',
	1,
	56,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (897,
	896,
	'timer_inst_ref',
	268,
	0,
	'',
	898,
	'');
INSERT INTO S_BPARM
	VALUES (898,
	896,
	'microseconds',
	14,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (899,
	896);
INSERT INTO ACT_ACT
	VALUES (899,
	'bridge',
	0,
	900,
	0,
	0,
	'Time::timer_add_time',
	0);
INSERT INTO ACT_BLK
	VALUES (900,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	899,
	0);
INSERT INTO S_BRG
	VALUES (901,
	837,
	'timer_cancel',
	'This bridge operation cancels and deletes the passed timer instance. If the 
timer exists (that is, it had not expired), a TRUE value is returned. If the
timer no longer exists, a FALSE value is returned.',
	1,
	56,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (902,
	901,
	'timer_inst_ref',
	268,
	0,
	'',
	0,
	'');
INSERT INTO ACT_BRB
	VALUES (903,
	901);
INSERT INTO ACT_ACT
	VALUES (903,
	'bridge',
	0,
	904,
	0,
	0,
	'Time::timer_cancel',
	0);
INSERT INTO ACT_BLK
	VALUES (904,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	903,
	0);
INSERT INTO PE_PE
	VALUES (905,
	1,
	759,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (905,
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
	204,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (906,
	905);
INSERT INTO ACT_ACT
	VALUES (906,
	'function',
	0,
	907,
	0,
	0,
	'GoalTest_1',
	0);
INSERT INTO ACT_BLK
	VALUES (907,
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
	906,
	0);
INSERT INTO ACT_SMT
	VALUES (908,
	907,
	909,
	2,
	1,
	'GoalTest_1 line: 2');
INSERT INTO ACT_FNC
	VALUES (908,
	910,
	2,
	3);
INSERT INTO ACT_SMT
	VALUES (909,
	907,
	911,
	5,
	1,
	'GoalTest_1 line: 5');
INSERT INTO ACT_IOP
	VALUES (909,
	5,
	10,
	5,
	6,
	0,
	615,
	0);
INSERT INTO ACT_SMT
	VALUES (911,
	907,
	912,
	13,
	1,
	'GoalTest_1 line: 13');
INSERT INTO ACT_IOP
	VALUES (911,
	13,
	10,
	13,
	6,
	0,
	615,
	0);
INSERT INTO ACT_SMT
	VALUES (912,
	907,
	913,
	21,
	1,
	'GoalTest_1 line: 21');
INSERT INTO ACT_IOP
	VALUES (912,
	21,
	10,
	21,
	6,
	0,
	615,
	0);
INSERT INTO ACT_SMT
	VALUES (913,
	907,
	0,
	29,
	1,
	'GoalTest_1 line: 29');
INSERT INTO ACT_IOP
	VALUES (913,
	29,
	10,
	29,
	6,
	0,
	615,
	0);
INSERT INTO V_VAL
	VALUES (914,
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
	907);
INSERT INTO V_LIN
	VALUES (914,
	'1');
INSERT INTO V_PAR
	VALUES (914,
	909,
	0,
	'sequenceNumber',
	915,
	6,
	3);
INSERT INTO V_VAL
	VALUES (915,
	0,
	0,
	7,
	12,
	14,
	0,
	0,
	0,
	0,
	92,
	907);
INSERT INTO V_LRL
	VALUES (915,
	'2.0');
INSERT INTO V_PAR
	VALUES (915,
	909,
	0,
	'minimum',
	916,
	7,
	3);
INSERT INTO V_VAL
	VALUES (916,
	0,
	0,
	8,
	12,
	14,
	0,
	0,
	0,
	0,
	92,
	907);
INSERT INTO V_LRL
	VALUES (916,
	'8.0');
INSERT INTO V_PAR
	VALUES (916,
	909,
	0,
	'maximum',
	917,
	8,
	3);
INSERT INTO V_VAL
	VALUES (917,
	0,
	0,
	9,
	9,
	13,
	0,
	0,
	0,
	0,
	92,
	907);
INSERT INTO V_LRL
	VALUES (917,
	'150.0');
INSERT INTO V_PAR
	VALUES (917,
	909,
	0,
	'span',
	918,
	9,
	3);
INSERT INTO V_VAL
	VALUES (918,
	0,
	0,
	10,
	31,
	34,
	0,
	0,
	0,
	0,
	376,
	907);
INSERT INTO V_LEN
	VALUES (918,
	377,
	10,
	17);
INSERT INTO V_PAR
	VALUES (918,
	909,
	0,
	'criteriaType',
	919,
	10,
	3);
INSERT INTO V_VAL
	VALUES (919,
	0,
	0,
	11,
	23,
	30,
	0,
	0,
	0,
	0,
	379,
	907);
INSERT INTO V_LEN
	VALUES (919,
	380,
	11,
	13);
INSERT INTO V_PAR
	VALUES (919,
	909,
	0,
	'spanType',
	0,
	11,
	3);
INSERT INTO V_VAL
	VALUES (920,
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
	907);
INSERT INTO V_LIN
	VALUES (920,
	'2');
INSERT INTO V_PAR
	VALUES (920,
	911,
	0,
	'sequenceNumber',
	921,
	14,
	3);
INSERT INTO V_VAL
	VALUES (921,
	0,
	0,
	15,
	12,
	15,
	0,
	0,
	0,
	0,
	92,
	907);
INSERT INTO V_LRL
	VALUES (921,
	'60.0');
INSERT INTO V_PAR
	VALUES (921,
	911,
	0,
	'minimum',
	922,
	15,
	3);
INSERT INTO V_VAL
	VALUES (922,
	0,
	0,
	16,
	12,
	15,
	0,
	0,
	0,
	0,
	92,
	907);
INSERT INTO V_LRL
	VALUES (922,
	'80.0');
INSERT INTO V_PAR
	VALUES (922,
	911,
	0,
	'maximum',
	923,
	16,
	3);
INSERT INTO V_VAL
	VALUES (923,
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
	907);
INSERT INTO V_LIN
	VALUES (923,
	'10');
INSERT INTO V_PAR
	VALUES (923,
	911,
	0,
	'span',
	924,
	17,
	3);
INSERT INTO V_VAL
	VALUES (924,
	0,
	0,
	18,
	31,
	39,
	0,
	0,
	0,
	0,
	376,
	907);
INSERT INTO V_LEN
	VALUES (924,
	386,
	18,
	17);
INSERT INTO V_PAR
	VALUES (924,
	911,
	0,
	'criteriaType',
	925,
	18,
	3);
INSERT INTO V_VAL
	VALUES (925,
	0,
	0,
	19,
	23,
	26,
	0,
	0,
	0,
	0,
	379,
	907);
INSERT INTO V_LEN
	VALUES (925,
	388,
	19,
	13);
INSERT INTO V_PAR
	VALUES (925,
	911,
	0,
	'spanType',
	0,
	19,
	3);
INSERT INTO V_VAL
	VALUES (926,
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
	907);
INSERT INTO V_LIN
	VALUES (926,
	'3');
INSERT INTO V_PAR
	VALUES (926,
	912,
	0,
	'sequenceNumber',
	927,
	22,
	3);
INSERT INTO V_VAL
	VALUES (927,
	0,
	0,
	23,
	12,
	14,
	0,
	0,
	0,
	0,
	92,
	907);
INSERT INTO V_LRL
	VALUES (927,
	'5.0');
INSERT INTO V_PAR
	VALUES (927,
	912,
	0,
	'minimum',
	928,
	23,
	3);
INSERT INTO V_VAL
	VALUES (928,
	0,
	0,
	24,
	12,
	14,
	0,
	0,
	0,
	0,
	92,
	907);
INSERT INTO V_LRL
	VALUES (928,
	'6.0');
INSERT INTO V_PAR
	VALUES (928,
	912,
	0,
	'maximum',
	929,
	24,
	3);
INSERT INTO V_VAL
	VALUES (929,
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
	907);
INSERT INTO V_LIN
	VALUES (929,
	'15');
INSERT INTO V_PAR
	VALUES (929,
	912,
	0,
	'span',
	930,
	25,
	3);
INSERT INTO V_VAL
	VALUES (930,
	0,
	0,
	26,
	31,
	34,
	0,
	0,
	0,
	0,
	376,
	907);
INSERT INTO V_LEN
	VALUES (930,
	377,
	26,
	17);
INSERT INTO V_PAR
	VALUES (930,
	912,
	0,
	'criteriaType',
	931,
	26,
	3);
INSERT INTO V_VAL
	VALUES (931,
	0,
	0,
	27,
	23,
	26,
	0,
	0,
	0,
	0,
	379,
	907);
INSERT INTO V_LEN
	VALUES (931,
	388,
	27,
	13);
INSERT INTO V_PAR
	VALUES (931,
	912,
	0,
	'spanType',
	0,
	27,
	3);
INSERT INTO V_VAL
	VALUES (932,
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
	907);
INSERT INTO V_LIN
	VALUES (932,
	'4');
INSERT INTO V_PAR
	VALUES (932,
	913,
	0,
	'sequenceNumber',
	933,
	30,
	3);
INSERT INTO V_VAL
	VALUES (933,
	0,
	0,
	31,
	12,
	14,
	0,
	0,
	0,
	0,
	92,
	907);
INSERT INTO V_LRL
	VALUES (933,
	'1.0');
INSERT INTO V_PAR
	VALUES (933,
	913,
	0,
	'minimum',
	934,
	31,
	3);
INSERT INTO V_VAL
	VALUES (934,
	0,
	0,
	32,
	12,
	14,
	0,
	0,
	0,
	0,
	92,
	907);
INSERT INTO V_LRL
	VALUES (934,
	'2.0');
INSERT INTO V_PAR
	VALUES (934,
	913,
	0,
	'maximum',
	935,
	32,
	3);
INSERT INTO V_VAL
	VALUES (935,
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
	907);
INSERT INTO V_LIN
	VALUES (935,
	'15');
INSERT INTO V_PAR
	VALUES (935,
	913,
	0,
	'span',
	936,
	33,
	3);
INSERT INTO V_VAL
	VALUES (936,
	0,
	0,
	34,
	31,
	34,
	0,
	0,
	0,
	0,
	376,
	907);
INSERT INTO V_LEN
	VALUES (936,
	377,
	34,
	17);
INSERT INTO V_PAR
	VALUES (936,
	913,
	0,
	'criteriaType',
	937,
	34,
	3);
INSERT INTO V_VAL
	VALUES (937,
	0,
	0,
	35,
	23,
	26,
	0,
	0,
	0,
	0,
	379,
	907);
INSERT INTO V_LEN
	VALUES (937,
	388,
	35,
	13);
INSERT INTO V_PAR
	VALUES (937,
	913,
	0,
	'spanType',
	0,
	35,
	3);
INSERT INTO PE_PE
	VALUES (910,
	1,
	759,
	0,
	1);
INSERT INTO S_SYNC
	VALUES (910,
	0,
	'Initialize',
	'',
	'// Create a workout session and everything required to support it.
WorkoutSession::create();',
	204,
	1,
	'');
INSERT INTO ACT_FNB
	VALUES (938,
	910);
INSERT INTO ACT_ACT
	VALUES (938,
	'function',
	0,
	939,
	0,
	0,
	'Initialize',
	0);
INSERT INTO ACT_BLK
	VALUES (939,
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
	938,
	0);
INSERT INTO ACT_SMT
	VALUES (940,
	939,
	0,
	2,
	1,
	'Initialize line: 2');
INSERT INTO ACT_TFM
	VALUES (940,
	699,
	0,
	2,
	17,
	2,
	1);
INSERT INTO PE_PE
	VALUES (798,
	1,
	759,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (798,
	'Achievement',
	10,
	'Achievement',
	'Each instance represents one contiguous period of time during 
which a particular goal was being met (achieved).',
	0);
INSERT INTO O_TFR
	VALUES (941,
	798,
	'close',
	'',
	204,
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
	VALUES (942,
	941);
INSERT INTO ACT_ACT
	VALUES (942,
	'operation',
	0,
	943,
	0,
	0,
	'Achievement::close',
	0);
INSERT INTO ACT_BLK
	VALUES (943,
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
	942,
	0);
INSERT INTO ACT_SMT
	VALUES (944,
	943,
	945,
	3,
	1,
	'Achievement::close line: 3');
INSERT INTO ACT_SEL
	VALUES (944,
	946,
	1,
	'one',
	947);
INSERT INTO ACT_SR
	VALUES (944);
INSERT INTO ACT_LNK
	VALUES (948,
	'''is open for''',
	944,
	803,
	0,
	2,
	789,
	3,
	34,
	3,
	39,
	3,
	43);
INSERT INTO ACT_SMT
	VALUES (945,
	943,
	949,
	4,
	1,
	'Achievement::close line: 4');
INSERT INTO ACT_SEL
	VALUES (945,
	950,
	1,
	'one',
	951);
INSERT INTO ACT_SR
	VALUES (945);
INSERT INTO ACT_LNK
	VALUES (952,
	'''is currently executing within''',
	945,
	793,
	953,
	2,
	640,
	5,
	9,
	5,
	24,
	5,
	28);
INSERT INTO ACT_LNK
	VALUES (953,
	'''is timed by''',
	0,
	777,
	0,
	2,
	656,
	5,
	62,
	5,
	75,
	5,
	78);
INSERT INTO ACT_SMT
	VALUES (949,
	943,
	954,
	6,
	3,
	'Achievement::close line: 6');
INSERT INTO ACT_AI
	VALUES (949,
	955,
	956,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (954,
	943,
	957,
	7,
	1,
	'Achievement::close line: 7');
INSERT INTO ACT_UNR
	VALUES (954,
	958,
	946,
	'''is open for''',
	803,
	7,
	32,
	7,
	36);
INSERT INTO ACT_SMT
	VALUES (957,
	943,
	0,
	8,
	1,
	'Achievement::close line: 8');
INSERT INTO ACT_REL
	VALUES (957,
	958,
	946,
	'''specifies achievement of''',
	796,
	8,
	28,
	8,
	32);
INSERT INTO V_VAL
	VALUES (947,
	0,
	0,
	3,
	28,
	31,
	0,
	0,
	0,
	0,
	432,
	943);
INSERT INTO V_IRF
	VALUES (947,
	958);
INSERT INTO V_VAL
	VALUES (951,
	0,
	0,
	5,
	3,
	6,
	0,
	0,
	0,
	0,
	432,
	943);
INSERT INTO V_IRF
	VALUES (951,
	946);
INSERT INTO V_VAL
	VALUES (959,
	1,
	0,
	6,
	3,
	6,
	0,
	0,
	0,
	0,
	432,
	943);
INSERT INTO V_IRF
	VALUES (959,
	958);
INSERT INTO V_VAL
	VALUES (956,
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
	943);
INSERT INTO V_AVL
	VALUES (956,
	959,
	798,
	960);
INSERT INTO V_VAL
	VALUES (961,
	0,
	0,
	6,
	18,
	29,
	0,
	0,
	0,
	0,
	432,
	943);
INSERT INTO V_IRF
	VALUES (961,
	950);
INSERT INTO V_VAL
	VALUES (955,
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
	943);
INSERT INTO V_AVL
	VALUES (955,
	961,
	656,
	962);
INSERT INTO V_VAR
	VALUES (946,
	943,
	'goal',
	1,
	432);
INSERT INTO V_INT
	VALUES (946,
	0,
	789);
INSERT INTO V_VAR
	VALUES (958,
	943,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (958,
	0,
	798);
INSERT INTO V_VAR
	VALUES (950,
	943,
	'workoutTimer',
	1,
	432);
INSERT INTO V_INT
	VALUES (950,
	0,
	656);
INSERT INTO O_NBATTR
	VALUES (963,
	798);
INSERT INTO O_BATTR
	VALUES (963,
	798);
INSERT INTO O_ATTR
	VALUES (963,
	798,
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
	VALUES (960,
	798);
INSERT INTO O_BATTR
	VALUES (960,
	798);
INSERT INTO O_ATTR
	VALUES (960,
	798,
	963,
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
	798);
INSERT INTO O_ID
	VALUES (1,
	798);
INSERT INTO O_ID
	VALUES (2,
	798);
INSERT INTO PE_PE
	VALUES (685,
	1,
	759,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (685,
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
	VALUES (964,
	685,
	'goalDispositionIndicator',
	'',
	149,
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
	VALUES (965,
	964);
INSERT INTO ACT_ACT
	VALUES (965,
	'class operation',
	0,
	966,
	0,
	0,
	'Display::goalDispositionIndicator',
	0);
INSERT INTO ACT_BLK
	VALUES (966,
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
	965,
	0);
INSERT INTO ACT_SMT
	VALUES (967,
	966,
	968,
	7,
	1,
	'Display::goalDispositionIndicator line: 7');
INSERT INTO ACT_FIO
	VALUES (967,
	969,
	1,
	'any',
	640,
	7,
	38);
INSERT INTO ACT_SMT
	VALUES (968,
	966,
	970,
	8,
	1,
	'Display::goalDispositionIndicator line: 8');
INSERT INTO ACT_SEL
	VALUES (968,
	971,
	1,
	'one',
	972);
INSERT INTO ACT_SR
	VALUES (968);
INSERT INTO ACT_LNK
	VALUES (973,
	'''is currently executing''',
	968,
	793,
	0,
	2,
	789,
	8,
	37,
	8,
	42,
	8,
	46);
INSERT INTO ACT_SMT
	VALUES (970,
	966,
	974,
	12,
	1,
	'Display::goalDispositionIndicator line: 12');
INSERT INTO ACT_AI
	VALUES (970,
	975,
	976,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (974,
	966,
	977,
	13,
	1,
	'Display::goalDispositionIndicator line: 13');
INSERT INTO ACT_IF
	VALUES (974,
	978,
	979,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (977,
	966,
	0,
	23,
	1,
	'Display::goalDispositionIndicator line: 23');
INSERT INTO ACT_RET
	VALUES (977,
	980);
INSERT INTO V_VAL
	VALUES (972,
	0,
	0,
	8,
	28,
	34,
	0,
	0,
	0,
	0,
	432,
	966);
INSERT INTO V_IRF
	VALUES (972,
	969);
INSERT INTO V_VAL
	VALUES (976,
	1,
	1,
	12,
	1,
	9,
	0,
	0,
	0,
	0,
	149,
	966);
INSERT INTO V_TVL
	VALUES (976,
	981);
INSERT INTO V_VAL
	VALUES (975,
	0,
	0,
	12,
	24,
	28,
	0,
	0,
	0,
	0,
	149,
	966);
INSERT INTO V_LEN
	VALUES (975,
	152,
	12,
	13);
INSERT INTO V_VAL
	VALUES (982,
	0,
	0,
	13,
	16,
	19,
	0,
	0,
	0,
	0,
	432,
	966);
INSERT INTO V_IRF
	VALUES (982,
	971);
INSERT INTO V_VAL
	VALUES (983,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	966);
INSERT INTO V_UNY
	VALUES (983,
	982,
	'empty');
INSERT INTO V_VAL
	VALUES (979,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	966);
INSERT INTO V_UNY
	VALUES (979,
	983,
	'not');
INSERT INTO V_VAL
	VALUES (980,
	0,
	0,
	23,
	9,
	17,
	0,
	0,
	0,
	0,
	149,
	966);
INSERT INTO V_TVL
	VALUES (980,
	981);
INSERT INTO V_VAR
	VALUES (969,
	966,
	'session',
	1,
	432);
INSERT INTO V_INT
	VALUES (969,
	0,
	640);
INSERT INTO V_VAR
	VALUES (971,
	966,
	'goal',
	1,
	432);
INSERT INTO V_INT
	VALUES (971,
	0,
	789);
INSERT INTO V_VAR
	VALUES (981,
	966,
	'indicator',
	1,
	149);
INSERT INTO V_TRN
	VALUES (981,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (978,
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
	965,
	0);
INSERT INTO ACT_SMT
	VALUES (984,
	978,
	0,
	14,
	3,
	'Display::goalDispositionIndicator line: 14');
INSERT INTO ACT_IF
	VALUES (984,
	985,
	986,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (987,
	978,
	0,
	16,
	3,
	'Display::goalDispositionIndicator line: 16');
INSERT INTO ACT_EL
	VALUES (987,
	988,
	989,
	984);
INSERT INTO ACT_SMT
	VALUES (990,
	978,
	0,
	18,
	3,
	'Display::goalDispositionIndicator line: 18');
INSERT INTO ACT_E
	VALUES (990,
	991,
	984);
INSERT INTO V_VAL
	VALUES (992,
	0,
	0,
	14,
	8,
	11,
	0,
	0,
	0,
	0,
	432,
	978);
INSERT INTO V_IRF
	VALUES (992,
	971);
INSERT INTO V_VAL
	VALUES (993,
	0,
	0,
	14,
	13,
	23,
	0,
	0,
	0,
	0,
	994,
	978);
INSERT INTO V_AVL
	VALUES (993,
	992,
	789,
	995);
INSERT INTO V_VAL
	VALUES (986,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	978);
INSERT INTO V_BIN
	VALUES (986,
	996,
	993,
	'==');
INSERT INTO V_VAL
	VALUES (996,
	0,
	0,
	14,
	45,
	52,
	0,
	0,
	0,
	0,
	994,
	978);
INSERT INTO V_LEN
	VALUES (996,
	997,
	14,
	28);
INSERT INTO V_VAL
	VALUES (998,
	0,
	0,
	16,
	10,
	13,
	0,
	0,
	0,
	0,
	432,
	978);
INSERT INTO V_IRF
	VALUES (998,
	971);
INSERT INTO V_VAL
	VALUES (999,
	0,
	0,
	16,
	15,
	25,
	0,
	0,
	0,
	0,
	994,
	978);
INSERT INTO V_AVL
	VALUES (999,
	998,
	789,
	995);
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
	56,
	978);
INSERT INTO V_BIN
	VALUES (989,
	1000,
	999,
	'==');
INSERT INTO V_VAL
	VALUES (1000,
	0,
	0,
	16,
	47,
	54,
	0,
	0,
	0,
	0,
	994,
	978);
INSERT INTO V_LEN
	VALUES (1000,
	1001,
	16,
	30);
INSERT INTO ACT_BLK
	VALUES (985,
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
	965,
	0);
INSERT INTO ACT_SMT
	VALUES (1002,
	985,
	0,
	15,
	5,
	'Display::goalDispositionIndicator line: 15');
INSERT INTO ACT_AI
	VALUES (1002,
	1003,
	1004,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1004,
	1,
	0,
	15,
	5,
	13,
	0,
	0,
	0,
	0,
	149,
	985);
INSERT INTO V_TVL
	VALUES (1004,
	981);
INSERT INTO V_VAL
	VALUES (1003,
	0,
	0,
	15,
	28,
	29,
	0,
	0,
	0,
	0,
	149,
	985);
INSERT INTO V_LEN
	VALUES (1003,
	161,
	15,
	17);
INSERT INTO ACT_BLK
	VALUES (988,
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
	965,
	0);
INSERT INTO ACT_SMT
	VALUES (1005,
	988,
	0,
	17,
	5,
	'Display::goalDispositionIndicator line: 17');
INSERT INTO ACT_AI
	VALUES (1005,
	1006,
	1007,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1007,
	1,
	0,
	17,
	5,
	13,
	0,
	0,
	0,
	0,
	149,
	988);
INSERT INTO V_TVL
	VALUES (1007,
	981);
INSERT INTO V_VAL
	VALUES (1006,
	0,
	0,
	17,
	28,
	31,
	0,
	0,
	0,
	0,
	149,
	988);
INSERT INTO V_LEN
	VALUES (1006,
	155,
	17,
	17);
INSERT INTO ACT_BLK
	VALUES (991,
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
	965,
	0);
INSERT INTO ACT_SMT
	VALUES (1008,
	991,
	0,
	19,
	5,
	'Display::goalDispositionIndicator line: 19');
INSERT INTO ACT_AI
	VALUES (1008,
	1009,
	1010,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1010,
	1,
	0,
	19,
	5,
	13,
	0,
	0,
	0,
	0,
	149,
	991);
INSERT INTO V_TVL
	VALUES (1010,
	981);
INSERT INTO V_VAL
	VALUES (1009,
	0,
	0,
	19,
	28,
	31,
	0,
	0,
	0,
	0,
	149,
	991);
INSERT INTO V_LEN
	VALUES (1009,
	158,
	19,
	17);
INSERT INTO O_NBATTR
	VALUES (1011,
	685);
INSERT INTO O_BATTR
	VALUES (1011,
	685);
INSERT INTO O_ATTR
	VALUES (1011,
	685,
	0,
	'current_state',
	'',
	'',
	'current_state',
	0,
	416,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	685);
INSERT INTO O_ID
	VALUES (1,
	685);
INSERT INTO O_ID
	VALUES (2,
	685);
INSERT INTO SM_ISM
	VALUES (1012,
	685);
INSERT INTO SM_SM
	VALUES (1012,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (1012);
INSERT INTO SM_LEVT
	VALUES (686,
	1012,
	0);
INSERT INTO SM_SEVT
	VALUES (686,
	1012,
	0);
INSERT INTO SM_EVT
	VALUES (686,
	1012,
	0,
	1,
	'modeChange',
	0,
	'',
	'Display1',
	'');
INSERT INTO SM_LEVT
	VALUES (1013,
	1012,
	0);
INSERT INTO SM_SEVT
	VALUES (1013,
	1012,
	0);
INSERT INTO SM_EVT
	VALUES (1013,
	1012,
	0,
	2,
	'refresh',
	0,
	'',
	'Display2',
	'');
INSERT INTO SM_STATE
	VALUES (1014,
	1012,
	0,
	'displayDistance',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (1014,
	686,
	1012,
	0);
INSERT INTO SM_SEME
	VALUES (1014,
	1013,
	1012,
	0);
INSERT INTO SM_MOAH
	VALUES (1015,
	1012,
	1014);
INSERT INTO SM_AH
	VALUES (1015,
	1012);
INSERT INTO SM_ACT
	VALUES (1015,
	1012,
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
	VALUES (1016,
	1012,
	1015);
INSERT INTO ACT_ACT
	VALUES (1016,
	'state',
	0,
	1017,
	0,
	0,
	'Display::displayDistance',
	0);
INSERT INTO ACT_BLK
	VALUES (1017,
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
	1016,
	0);
INSERT INTO ACT_SMT
	VALUES (1018,
	1017,
	1019,
	1,
	1,
	'Display::displayDistance line: 1');
INSERT INTO ACT_SEL
	VALUES (1018,
	1020,
	1,
	'one',
	1021);
INSERT INTO ACT_SR
	VALUES (1018);
INSERT INTO ACT_LNK
	VALUES (1022,
	'''indicates current status of''',
	1018,
	684,
	0,
	2,
	640,
	1,
	37,
	1,
	52,
	1,
	55);
INSERT INTO ACT_SMT
	VALUES (1019,
	1017,
	1023,
	2,
	1,
	'Display::displayDistance line: 2');
INSERT INTO ACT_AI
	VALUES (1019,
	1024,
	1025,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1023,
	1017,
	1026,
	3,
	1,
	'Display::displayDistance line: 3');
INSERT INTO ACT_IF
	VALUES (1023,
	1027,
	1028,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1029,
	1017,
	0,
	5,
	1,
	'Display::displayDistance line: 5');
INSERT INTO ACT_E
	VALUES (1029,
	1030,
	1023);
INSERT INTO ACT_SMT
	VALUES (1026,
	1017,
	0,
	8,
	1,
	'Display::displayDistance line: 8');
INSERT INTO ACT_IOP
	VALUES (1026,
	8,
	10,
	8,
	6,
	0,
	607,
	0);
INSERT INTO V_VAL
	VALUES (1021,
	0,
	0,
	1,
	31,
	34,
	0,
	0,
	0,
	0,
	432,
	1017);
INSERT INTO V_IRF
	VALUES (1021,
	1031);
INSERT INTO V_VAL
	VALUES (1025,
	1,
	1,
	2,
	1,
	8,
	0,
	0,
	0,
	0,
	92,
	1017);
INSERT INTO V_TVL
	VALUES (1025,
	1032);
INSERT INTO V_VAL
	VALUES (1033,
	0,
	0,
	2,
	12,
	18,
	0,
	0,
	0,
	0,
	432,
	1017);
INSERT INTO V_IRF
	VALUES (1033,
	1020);
INSERT INTO V_VAL
	VALUES (1024,
	0,
	0,
	2,
	20,
	38,
	0,
	0,
	0,
	0,
	92,
	1017);
INSERT INTO V_AVL
	VALUES (1024,
	1033,
	640,
	1034);
INSERT INTO V_VAL
	VALUES (1035,
	0,
	0,
	3,
	6,
	13,
	0,
	0,
	0,
	0,
	92,
	1017);
INSERT INTO V_TVL
	VALUES (1035,
	1032);
INSERT INTO V_VAL
	VALUES (1028,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1017);
INSERT INTO V_BIN
	VALUES (1028,
	1036,
	1035,
	'>');
INSERT INTO V_VAL
	VALUES (1036,
	0,
	0,
	3,
	17,
	22,
	0,
	0,
	0,
	0,
	92,
	1017);
INSERT INTO V_LRL
	VALUES (1036,
	'1000.0');
INSERT INTO V_VAL
	VALUES (1037,
	0,
	0,
	8,
	44,
	-1,
	0,
	0,
	0,
	0,
	149,
	1017);
INSERT INTO V_TRV
	VALUES (1037,
	964,
	0,
	1,
	8,
	35);
INSERT INTO V_PAR
	VALUES (1037,
	1026,
	0,
	'indicator',
	0,
	8,
	24);
INSERT INTO V_VAR
	VALUES (1020,
	1017,
	'session',
	1,
	432);
INSERT INTO V_INT
	VALUES (1020,
	0,
	640);
INSERT INTO V_VAR
	VALUES (1031,
	1017,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (1031,
	0,
	685);
INSERT INTO V_VAR
	VALUES (1032,
	1017,
	'distance',
	1,
	92);
INSERT INTO V_TRN
	VALUES (1032,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (1027,
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
	1016,
	0);
INSERT INTO ACT_SMT
	VALUES (1038,
	1027,
	0,
	4,
	3,
	'Display::displayDistance line: 4');
INSERT INTO ACT_IOP
	VALUES (1038,
	4,
	12,
	4,
	8,
	0,
	603,
	0);
INSERT INTO V_VAL
	VALUES (1039,
	0,
	0,
	4,
	27,
	34,
	0,
	0,
	0,
	0,
	92,
	1027);
INSERT INTO V_TVL
	VALUES (1039,
	1032);
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
	92,
	1027);
INSERT INTO V_BIN
	VALUES (1040,
	1041,
	1039,
	'/');
INSERT INTO V_PAR
	VALUES (1040,
	1038,
	0,
	'value',
	1042,
	4,
	20);
INSERT INTO V_VAL
	VALUES (1041,
	0,
	0,
	4,
	38,
	43,
	0,
	0,
	0,
	0,
	92,
	1027);
INSERT INTO V_LRL
	VALUES (1041,
	'1000.0');
INSERT INTO V_VAL
	VALUES (1042,
	0,
	0,
	4,
	58,
	59,
	0,
	0,
	0,
	0,
	54,
	1027);
INSERT INTO V_LEN
	VALUES (1042,
	58,
	4,
	52);
INSERT INTO V_PAR
	VALUES (1042,
	1038,
	0,
	'unit',
	0,
	4,
	46);
INSERT INTO ACT_BLK
	VALUES (1030,
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
	1016,
	0);
INSERT INTO ACT_SMT
	VALUES (1043,
	1030,
	0,
	6,
	3,
	'Display::displayDistance line: 6');
INSERT INTO ACT_IOP
	VALUES (1043,
	6,
	12,
	6,
	8,
	0,
	603,
	0);
INSERT INTO V_VAL
	VALUES (1044,
	0,
	0,
	6,
	27,
	34,
	0,
	0,
	0,
	0,
	92,
	1030);
INSERT INTO V_TVL
	VALUES (1044,
	1032);
INSERT INTO V_PAR
	VALUES (1044,
	1043,
	0,
	'value',
	1045,
	6,
	20);
INSERT INTO V_VAL
	VALUES (1045,
	0,
	0,
	6,
	49,
	54,
	0,
	0,
	0,
	0,
	54,
	1030);
INSERT INTO V_LEN
	VALUES (1045,
	61,
	6,
	43);
INSERT INTO V_PAR
	VALUES (1045,
	1043,
	0,
	'unit',
	0,
	6,
	37);
INSERT INTO SM_STATE
	VALUES (1046,
	1012,
	0,
	'displaySpeed',
	2,
	0);
INSERT INTO SM_SEME
	VALUES (1046,
	686,
	1012,
	0);
INSERT INTO SM_SEME
	VALUES (1046,
	1013,
	1012,
	0);
INSERT INTO SM_MOAH
	VALUES (1047,
	1012,
	1046);
INSERT INTO SM_AH
	VALUES (1047,
	1012);
INSERT INTO SM_ACT
	VALUES (1047,
	1012,
	1,
	'select one session 
  related by self->WorkoutSession[R7.''indicates current status of''];
speed = session.currentSpeed;
send UI::setData(value: speed, unit: Unit::kmPerHour);
send UI::setIndicator( indicator: Display::goalDispositionIndicator() );',
	'');
INSERT INTO ACT_SAB
	VALUES (1048,
	1012,
	1047);
INSERT INTO ACT_ACT
	VALUES (1048,
	'state',
	0,
	1049,
	0,
	0,
	'Display::displaySpeed',
	0);
INSERT INTO ACT_BLK
	VALUES (1049,
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
	1048,
	0);
INSERT INTO ACT_SMT
	VALUES (1050,
	1049,
	1051,
	1,
	1,
	'Display::displaySpeed line: 1');
INSERT INTO ACT_SEL
	VALUES (1050,
	1052,
	1,
	'one',
	1053);
INSERT INTO ACT_SR
	VALUES (1050);
INSERT INTO ACT_LNK
	VALUES (1054,
	'''indicates current status of''',
	1050,
	684,
	0,
	2,
	640,
	2,
	20,
	2,
	35,
	2,
	38);
INSERT INTO ACT_SMT
	VALUES (1051,
	1049,
	1055,
	3,
	1,
	'Display::displaySpeed line: 3');
INSERT INTO ACT_AI
	VALUES (1051,
	1056,
	1057,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1055,
	1049,
	1058,
	4,
	1,
	'Display::displaySpeed line: 4');
INSERT INTO ACT_IOP
	VALUES (1055,
	4,
	10,
	4,
	6,
	0,
	603,
	0);
INSERT INTO ACT_SMT
	VALUES (1058,
	1049,
	0,
	5,
	1,
	'Display::displaySpeed line: 5');
INSERT INTO ACT_IOP
	VALUES (1058,
	5,
	10,
	5,
	6,
	0,
	607,
	0);
INSERT INTO V_VAL
	VALUES (1053,
	0,
	0,
	2,
	14,
	17,
	0,
	0,
	0,
	0,
	432,
	1049);
INSERT INTO V_IRF
	VALUES (1053,
	1059);
INSERT INTO V_VAL
	VALUES (1057,
	1,
	1,
	3,
	1,
	5,
	0,
	0,
	0,
	0,
	92,
	1049);
INSERT INTO V_TVL
	VALUES (1057,
	1060);
INSERT INTO V_VAL
	VALUES (1061,
	0,
	0,
	3,
	9,
	15,
	0,
	0,
	0,
	0,
	432,
	1049);
INSERT INTO V_IRF
	VALUES (1061,
	1052);
INSERT INTO V_VAL
	VALUES (1056,
	0,
	0,
	3,
	17,
	28,
	0,
	0,
	0,
	0,
	92,
	1049);
INSERT INTO V_AVL
	VALUES (1056,
	1061,
	640,
	1062);
INSERT INTO V_VAL
	VALUES (1063,
	0,
	0,
	4,
	25,
	29,
	0,
	0,
	0,
	0,
	92,
	1049);
INSERT INTO V_TVL
	VALUES (1063,
	1060);
INSERT INTO V_PAR
	VALUES (1063,
	1055,
	0,
	'value',
	1064,
	4,
	18);
INSERT INTO V_VAL
	VALUES (1064,
	0,
	0,
	4,
	44,
	52,
	0,
	0,
	0,
	0,
	54,
	1049);
INSERT INTO V_LEN
	VALUES (1064,
	67,
	4,
	38);
INSERT INTO V_PAR
	VALUES (1064,
	1055,
	0,
	'unit',
	0,
	4,
	32);
INSERT INTO V_VAL
	VALUES (1065,
	0,
	0,
	5,
	44,
	-1,
	0,
	0,
	0,
	0,
	149,
	1049);
INSERT INTO V_TRV
	VALUES (1065,
	964,
	0,
	1,
	5,
	35);
INSERT INTO V_PAR
	VALUES (1065,
	1058,
	0,
	'indicator',
	0,
	5,
	24);
INSERT INTO V_VAR
	VALUES (1052,
	1049,
	'session',
	1,
	432);
INSERT INTO V_INT
	VALUES (1052,
	0,
	640);
INSERT INTO V_VAR
	VALUES (1059,
	1049,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (1059,
	0,
	685);
INSERT INTO V_VAR
	VALUES (1060,
	1049,
	'speed',
	1,
	92);
INSERT INTO V_TRN
	VALUES (1060,
	0,
	'');
INSERT INTO SM_STATE
	VALUES (1066,
	1012,
	0,
	'displayPace',
	3,
	0);
INSERT INTO SM_SEME
	VALUES (1066,
	686,
	1012,
	0);
INSERT INTO SM_SEME
	VALUES (1066,
	1013,
	1012,
	0);
INSERT INTO SM_MOAH
	VALUES (1067,
	1012,
	1066);
INSERT INTO SM_AH
	VALUES (1067,
	1012);
INSERT INTO SM_ACT
	VALUES (1067,
	1012,
	1,
	'select one session 
  related by self->WorkoutSession[R7.''indicates current status of''];
pace = session.currentPace;
send UI::setData(value: pace, unit: Unit::minPerKm);
send UI::setIndicator( indicator: Display::goalDispositionIndicator() );',
	'');
INSERT INTO ACT_SAB
	VALUES (1068,
	1012,
	1067);
INSERT INTO ACT_ACT
	VALUES (1068,
	'state',
	0,
	1069,
	0,
	0,
	'Display::displayPace',
	0);
INSERT INTO ACT_BLK
	VALUES (1069,
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
	1068,
	0);
INSERT INTO ACT_SMT
	VALUES (1070,
	1069,
	1071,
	1,
	1,
	'Display::displayPace line: 1');
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
	684,
	0,
	2,
	640,
	2,
	20,
	2,
	35,
	2,
	38);
INSERT INTO ACT_SMT
	VALUES (1071,
	1069,
	1075,
	3,
	1,
	'Display::displayPace line: 3');
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
	4,
	1,
	'Display::displayPace line: 4');
INSERT INTO ACT_IOP
	VALUES (1075,
	4,
	10,
	4,
	6,
	0,
	603,
	0);
INSERT INTO ACT_SMT
	VALUES (1078,
	1069,
	0,
	5,
	1,
	'Display::displayPace line: 5');
INSERT INTO ACT_IOP
	VALUES (1078,
	5,
	10,
	5,
	6,
	0,
	607,
	0);
INSERT INTO V_VAL
	VALUES (1073,
	0,
	0,
	2,
	14,
	17,
	0,
	0,
	0,
	0,
	432,
	1069);
INSERT INTO V_IRF
	VALUES (1073,
	1079);
INSERT INTO V_VAL
	VALUES (1077,
	1,
	1,
	3,
	1,
	4,
	0,
	0,
	0,
	0,
	92,
	1069);
INSERT INTO V_TVL
	VALUES (1077,
	1080);
INSERT INTO V_VAL
	VALUES (1081,
	0,
	0,
	3,
	8,
	14,
	0,
	0,
	0,
	0,
	432,
	1069);
INSERT INTO V_IRF
	VALUES (1081,
	1072);
INSERT INTO V_VAL
	VALUES (1076,
	0,
	0,
	3,
	16,
	26,
	0,
	0,
	0,
	0,
	92,
	1069);
INSERT INTO V_AVL
	VALUES (1076,
	1081,
	640,
	1082);
INSERT INTO V_VAL
	VALUES (1083,
	0,
	0,
	4,
	25,
	28,
	0,
	0,
	0,
	0,
	92,
	1069);
INSERT INTO V_TVL
	VALUES (1083,
	1080);
INSERT INTO V_PAR
	VALUES (1083,
	1075,
	0,
	'value',
	1084,
	4,
	18);
INSERT INTO V_VAL
	VALUES (1084,
	0,
	0,
	4,
	43,
	50,
	0,
	0,
	0,
	0,
	54,
	1069);
INSERT INTO V_LEN
	VALUES (1084,
	64,
	4,
	37);
INSERT INTO V_PAR
	VALUES (1084,
	1075,
	0,
	'unit',
	0,
	4,
	31);
INSERT INTO V_VAL
	VALUES (1085,
	0,
	0,
	5,
	44,
	-1,
	0,
	0,
	0,
	0,
	149,
	1069);
INSERT INTO V_TRV
	VALUES (1085,
	964,
	0,
	1,
	5,
	35);
INSERT INTO V_PAR
	VALUES (1085,
	1078,
	0,
	'indicator',
	0,
	5,
	24);
INSERT INTO V_VAR
	VALUES (1072,
	1069,
	'session',
	1,
	432);
INSERT INTO V_INT
	VALUES (1072,
	0,
	640);
INSERT INTO V_VAR
	VALUES (1079,
	1069,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (1079,
	0,
	685);
INSERT INTO V_VAR
	VALUES (1080,
	1069,
	'pace',
	1,
	92);
INSERT INTO V_TRN
	VALUES (1080,
	0,
	'');
INSERT INTO SM_STATE
	VALUES (1086,
	1012,
	0,
	'displayHeartRate',
	4,
	0);
INSERT INTO SM_SEME
	VALUES (1086,
	686,
	1012,
	0);
INSERT INTO SM_SEME
	VALUES (1086,
	1013,
	1012,
	0);
INSERT INTO SM_MOAH
	VALUES (1087,
	1012,
	1086);
INSERT INTO SM_AH
	VALUES (1087,
	1012);
INSERT INTO SM_ACT
	VALUES (1087,
	1012,
	1,
	'select one session 
  related by self->WorkoutSession[R7.''indicates current status of''];
heartRate = session.currentHeartRate;
send UI::setData(value: heartRate, unit: Unit::bpm);
send UI::setIndicator( indicator: Display::goalDispositionIndicator() );
',
	'');
INSERT INTO ACT_SAB
	VALUES (1088,
	1012,
	1087);
INSERT INTO ACT_ACT
	VALUES (1088,
	'state',
	0,
	1089,
	0,
	0,
	'Display::displayHeartRate',
	0);
INSERT INTO ACT_BLK
	VALUES (1089,
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
	1088,
	0);
INSERT INTO ACT_SMT
	VALUES (1090,
	1089,
	1091,
	1,
	1,
	'Display::displayHeartRate line: 1');
INSERT INTO ACT_SEL
	VALUES (1090,
	1092,
	1,
	'one',
	1093);
INSERT INTO ACT_SR
	VALUES (1090);
INSERT INTO ACT_LNK
	VALUES (1094,
	'''indicates current status of''',
	1090,
	684,
	0,
	2,
	640,
	2,
	20,
	2,
	35,
	2,
	38);
INSERT INTO ACT_SMT
	VALUES (1091,
	1089,
	1095,
	3,
	1,
	'Display::displayHeartRate line: 3');
INSERT INTO ACT_AI
	VALUES (1091,
	1096,
	1097,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1095,
	1089,
	1098,
	4,
	1,
	'Display::displayHeartRate line: 4');
INSERT INTO ACT_IOP
	VALUES (1095,
	4,
	10,
	4,
	6,
	0,
	603,
	0);
INSERT INTO ACT_SMT
	VALUES (1098,
	1089,
	0,
	5,
	1,
	'Display::displayHeartRate line: 5');
INSERT INTO ACT_IOP
	VALUES (1098,
	5,
	10,
	5,
	6,
	0,
	607,
	0);
INSERT INTO V_VAL
	VALUES (1093,
	0,
	0,
	2,
	14,
	17,
	0,
	0,
	0,
	0,
	432,
	1089);
INSERT INTO V_IRF
	VALUES (1093,
	1099);
INSERT INTO V_VAL
	VALUES (1097,
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
	1089);
INSERT INTO V_TVL
	VALUES (1097,
	1100);
INSERT INTO V_VAL
	VALUES (1101,
	0,
	0,
	3,
	13,
	19,
	0,
	0,
	0,
	0,
	432,
	1089);
INSERT INTO V_IRF
	VALUES (1101,
	1092);
INSERT INTO V_VAL
	VALUES (1096,
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
	1089);
INSERT INTO V_AVL
	VALUES (1096,
	1101,
	640,
	1102);
INSERT INTO V_VAL
	VALUES (1103,
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
	1089);
INSERT INTO V_TVL
	VALUES (1103,
	1100);
INSERT INTO V_PAR
	VALUES (1103,
	1095,
	0,
	'value',
	1104,
	4,
	18);
INSERT INTO V_VAL
	VALUES (1104,
	0,
	0,
	4,
	48,
	50,
	0,
	0,
	0,
	0,
	54,
	1089);
INSERT INTO V_LEN
	VALUES (1104,
	85,
	4,
	42);
INSERT INTO V_PAR
	VALUES (1104,
	1095,
	0,
	'unit',
	0,
	4,
	36);
INSERT INTO V_VAL
	VALUES (1105,
	0,
	0,
	5,
	44,
	-1,
	0,
	0,
	0,
	0,
	149,
	1089);
INSERT INTO V_TRV
	VALUES (1105,
	964,
	0,
	1,
	5,
	35);
INSERT INTO V_PAR
	VALUES (1105,
	1098,
	0,
	'indicator',
	0,
	5,
	24);
INSERT INTO V_VAR
	VALUES (1092,
	1089,
	'session',
	1,
	432);
INSERT INTO V_INT
	VALUES (1092,
	0,
	640);
INSERT INTO V_VAR
	VALUES (1099,
	1089,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (1099,
	0,
	685);
INSERT INTO V_VAR
	VALUES (1100,
	1089,
	'heartRate',
	1,
	14);
INSERT INTO V_TRN
	VALUES (1100,
	0,
	'');
INSERT INTO SM_STATE
	VALUES (1106,
	1012,
	0,
	'displayLapCount',
	5,
	0);
INSERT INTO SM_SEME
	VALUES (1106,
	686,
	1012,
	0);
INSERT INTO SM_SEME
	VALUES (1106,
	1013,
	1012,
	0);
INSERT INTO SM_MOAH
	VALUES (1107,
	1012,
	1106);
INSERT INTO SM_AH
	VALUES (1107,
	1012);
INSERT INTO SM_ACT
	VALUES (1107,
	1012,
	1,
	'select many lapMarkers related by
  self->WorkoutSession[R7.''indicates current status of'']->
  TrackLog[R4.''captures path in'']->LapMarker[R5.''has laps defined by''];
send UI::setData(value: cardinality lapMarkers, unit: Unit::laps);
send UI::setIndicator( indicator: Display::goalDispositionIndicator() );
',
	'');
INSERT INTO ACT_SAB
	VALUES (1108,
	1012,
	1107);
INSERT INTO ACT_ACT
	VALUES (1108,
	'state',
	0,
	1109,
	0,
	0,
	'Display::displayLapCount',
	0);
INSERT INTO ACT_BLK
	VALUES (1109,
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
	1108,
	0);
INSERT INTO ACT_SMT
	VALUES (1110,
	1109,
	1111,
	1,
	1,
	'Display::displayLapCount line: 1');
INSERT INTO ACT_SEL
	VALUES (1110,
	1112,
	1,
	'many',
	1113);
INSERT INTO ACT_SR
	VALUES (1110);
INSERT INTO ACT_LNK
	VALUES (1114,
	'''indicates current status of''',
	1110,
	684,
	1115,
	2,
	640,
	2,
	9,
	2,
	24,
	2,
	27);
INSERT INTO ACT_LNK
	VALUES (1115,
	'''captures path in''',
	0,
	780,
	1116,
	2,
	761,
	3,
	3,
	3,
	12,
	3,
	15);
INSERT INTO ACT_LNK
	VALUES (1116,
	'''has laps defined by''',
	0,
	771,
	0,
	3,
	772,
	3,
	36,
	3,
	46,
	3,
	49);
INSERT INTO ACT_SMT
	VALUES (1111,
	1109,
	1117,
	4,
	1,
	'Display::displayLapCount line: 4');
INSERT INTO ACT_IOP
	VALUES (1111,
	4,
	10,
	4,
	6,
	0,
	603,
	0);
INSERT INTO ACT_SMT
	VALUES (1117,
	1109,
	0,
	5,
	1,
	'Display::displayLapCount line: 5');
INSERT INTO ACT_IOP
	VALUES (1117,
	5,
	10,
	5,
	6,
	0,
	607,
	0);
INSERT INTO V_VAL
	VALUES (1113,
	0,
	0,
	2,
	3,
	6,
	0,
	0,
	0,
	0,
	432,
	1109);
INSERT INTO V_IRF
	VALUES (1113,
	1118);
INSERT INTO V_VAL
	VALUES (1119,
	0,
	0,
	4,
	37,
	46,
	0,
	0,
	0,
	0,
	572,
	1109);
INSERT INTO V_ISR
	VALUES (1119,
	1112);
INSERT INTO V_VAL
	VALUES (1120,
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
	1109);
INSERT INTO V_UNY
	VALUES (1120,
	1119,
	'cardinality');
INSERT INTO V_PAR
	VALUES (1120,
	1111,
	0,
	'value',
	1121,
	4,
	18);
INSERT INTO V_VAL
	VALUES (1121,
	0,
	0,
	4,
	61,
	64,
	0,
	0,
	0,
	0,
	54,
	1109);
INSERT INTO V_LEN
	VALUES (1121,
	88,
	4,
	55);
INSERT INTO V_PAR
	VALUES (1121,
	1111,
	0,
	'unit',
	0,
	4,
	49);
INSERT INTO V_VAL
	VALUES (1122,
	0,
	0,
	5,
	44,
	-1,
	0,
	0,
	0,
	0,
	149,
	1109);
INSERT INTO V_TRV
	VALUES (1122,
	964,
	0,
	1,
	5,
	35);
INSERT INTO V_PAR
	VALUES (1122,
	1117,
	0,
	'indicator',
	0,
	5,
	24);
INSERT INTO V_VAR
	VALUES (1112,
	1109,
	'lapMarkers',
	1,
	572);
INSERT INTO V_INS
	VALUES (1112,
	772);
INSERT INTO V_VAR
	VALUES (1118,
	1109,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (1118,
	0,
	685);
INSERT INTO SM_NSTXN
	VALUES (1123,
	1012,
	1014,
	686,
	0);
INSERT INTO SM_TAH
	VALUES (1124,
	1012,
	1123);
INSERT INTO SM_AH
	VALUES (1124,
	1012);
INSERT INTO SM_ACT
	VALUES (1124,
	1012,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1125,
	1012,
	1124);
INSERT INTO ACT_ACT
	VALUES (1125,
	'transition',
	0,
	1126,
	0,
	0,
	'Display1: modeChange',
	0);
INSERT INTO ACT_BLK
	VALUES (1126,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1125,
	0);
INSERT INTO SM_TXN
	VALUES (1123,
	1012,
	1046,
	0);
INSERT INTO SM_NSTXN
	VALUES (1127,
	1012,
	1046,
	686,
	0);
INSERT INTO SM_TAH
	VALUES (1128,
	1012,
	1127);
INSERT INTO SM_AH
	VALUES (1128,
	1012);
INSERT INTO SM_ACT
	VALUES (1128,
	1012,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1129,
	1012,
	1128);
INSERT INTO ACT_ACT
	VALUES (1129,
	'transition',
	0,
	1130,
	0,
	0,
	'Display1: modeChange',
	0);
INSERT INTO ACT_BLK
	VALUES (1130,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1129,
	0);
INSERT INTO SM_TXN
	VALUES (1127,
	1012,
	1066,
	0);
INSERT INTO SM_NSTXN
	VALUES (1131,
	1012,
	1066,
	686,
	0);
INSERT INTO SM_TAH
	VALUES (1132,
	1012,
	1131);
INSERT INTO SM_AH
	VALUES (1132,
	1012);
INSERT INTO SM_ACT
	VALUES (1132,
	1012,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1133,
	1012,
	1132);
INSERT INTO ACT_ACT
	VALUES (1133,
	'transition',
	0,
	1134,
	0,
	0,
	'Display1: modeChange',
	0);
INSERT INTO ACT_BLK
	VALUES (1134,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1133,
	0);
INSERT INTO SM_TXN
	VALUES (1131,
	1012,
	1086,
	0);
INSERT INTO SM_NSTXN
	VALUES (1135,
	1012,
	1086,
	686,
	0);
INSERT INTO SM_TAH
	VALUES (1136,
	1012,
	1135);
INSERT INTO SM_AH
	VALUES (1136,
	1012);
INSERT INTO SM_ACT
	VALUES (1136,
	1012,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1137,
	1012,
	1136);
INSERT INTO ACT_ACT
	VALUES (1137,
	'transition',
	0,
	1138,
	0,
	0,
	'Display1: modeChange',
	0);
INSERT INTO ACT_BLK
	VALUES (1138,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1137,
	0);
INSERT INTO SM_TXN
	VALUES (1135,
	1012,
	1106,
	0);
INSERT INTO SM_NSTXN
	VALUES (1139,
	1012,
	1014,
	1013,
	0);
INSERT INTO SM_TAH
	VALUES (1140,
	1012,
	1139);
INSERT INTO SM_AH
	VALUES (1140,
	1012);
INSERT INTO SM_ACT
	VALUES (1140,
	1012,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1141,
	1012,
	1140);
INSERT INTO ACT_ACT
	VALUES (1141,
	'transition',
	0,
	1142,
	0,
	0,
	'Display2: refresh',
	0);
INSERT INTO ACT_BLK
	VALUES (1142,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1141,
	0);
INSERT INTO SM_TXN
	VALUES (1139,
	1012,
	1014,
	0);
INSERT INTO SM_NSTXN
	VALUES (1143,
	1012,
	1046,
	1013,
	0);
INSERT INTO SM_TAH
	VALUES (1144,
	1012,
	1143);
INSERT INTO SM_AH
	VALUES (1144,
	1012);
INSERT INTO SM_ACT
	VALUES (1144,
	1012,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1145,
	1012,
	1144);
INSERT INTO ACT_ACT
	VALUES (1145,
	'transition',
	0,
	1146,
	0,
	0,
	'Display2: refresh',
	0);
INSERT INTO ACT_BLK
	VALUES (1146,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1145,
	0);
INSERT INTO SM_TXN
	VALUES (1143,
	1012,
	1046,
	0);
INSERT INTO SM_NSTXN
	VALUES (1147,
	1012,
	1086,
	1013,
	0);
INSERT INTO SM_TAH
	VALUES (1148,
	1012,
	1147);
INSERT INTO SM_AH
	VALUES (1148,
	1012);
INSERT INTO SM_ACT
	VALUES (1148,
	1012,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1149,
	1012,
	1148);
INSERT INTO ACT_ACT
	VALUES (1149,
	'transition',
	0,
	1150,
	0,
	0,
	'Display2: refresh',
	0);
INSERT INTO ACT_BLK
	VALUES (1150,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1149,
	0);
INSERT INTO SM_TXN
	VALUES (1147,
	1012,
	1086,
	0);
INSERT INTO SM_NSTXN
	VALUES (1151,
	1012,
	1106,
	1013,
	0);
INSERT INTO SM_TAH
	VALUES (1152,
	1012,
	1151);
INSERT INTO SM_AH
	VALUES (1152,
	1012);
INSERT INTO SM_ACT
	VALUES (1152,
	1012,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1153,
	1012,
	1152);
INSERT INTO ACT_ACT
	VALUES (1153,
	'transition',
	0,
	1154,
	0,
	0,
	'Display2: refresh',
	0);
INSERT INTO ACT_BLK
	VALUES (1154,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1153,
	0);
INSERT INTO SM_TXN
	VALUES (1151,
	1012,
	1106,
	0);
INSERT INTO SM_NSTXN
	VALUES (1155,
	1012,
	1066,
	1013,
	0);
INSERT INTO SM_TAH
	VALUES (1156,
	1012,
	1155);
INSERT INTO SM_AH
	VALUES (1156,
	1012);
INSERT INTO SM_ACT
	VALUES (1156,
	1012,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1157,
	1012,
	1156);
INSERT INTO ACT_ACT
	VALUES (1157,
	'transition',
	0,
	1158,
	0,
	0,
	'Display2: refresh',
	0);
INSERT INTO ACT_BLK
	VALUES (1158,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1157,
	0);
INSERT INTO SM_TXN
	VALUES (1155,
	1012,
	1066,
	0);
INSERT INTO SM_NSTXN
	VALUES (1159,
	1012,
	1106,
	686,
	0);
INSERT INTO SM_TAH
	VALUES (1160,
	1012,
	1159);
INSERT INTO SM_AH
	VALUES (1160,
	1012);
INSERT INTO SM_ACT
	VALUES (1160,
	1012,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1161,
	1012,
	1160);
INSERT INTO ACT_ACT
	VALUES (1161,
	'transition',
	0,
	1162,
	0,
	0,
	'Display1: modeChange',
	0);
INSERT INTO ACT_BLK
	VALUES (1162,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1161,
	0);
INSERT INTO SM_TXN
	VALUES (1159,
	1012,
	1014,
	0);
INSERT INTO PE_PE
	VALUES (789,
	1,
	759,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (789,
	'Goal',
	9,
	'Goal',
	'Each instance represents a particular goal as it is executing.
This class knows how to evaluate whether the goal is being achieved 
and whether the goal has completed.',
	0);
INSERT INTO O_TFR
	VALUES (1163,
	789,
	'create',
	'',
	204,
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
	VALUES (1164,
	1163,
	'sequenceNumber',
	14,
	0,
	'',
	0,
	'Sequence number of the goal specification for which an instance of a goal should be created.');
INSERT INTO ACT_OPB
	VALUES (1165,
	1163);
INSERT INTO ACT_ACT
	VALUES (1165,
	'class operation',
	0,
	1166,
	0,
	0,
	'Goal::create',
	0);
INSERT INTO ACT_BLK
	VALUES (1166,
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
	1165,
	0);
INSERT INTO ACT_SMT
	VALUES (1167,
	1166,
	1168,
	8,
	1,
	'Goal::create line: 8');
INSERT INTO ACT_FIW
	VALUES (1167,
	1169,
	1,
	'any',
	1170,
	717,
	8,
	39);
INSERT INTO ACT_SMT
	VALUES (1168,
	1166,
	0,
	10,
	1,
	'Goal::create line: 10');
INSERT INTO ACT_IF
	VALUES (1168,
	1171,
	1172,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1173,
	0,
	0,
	9,
	11,
	-1,
	0,
	0,
	0,
	0,
	432,
	1166);
INSERT INTO V_SLR
	VALUES (1173,
	0,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1174,
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
	1166);
INSERT INTO V_AVL
	VALUES (1174,
	1173,
	717,
	738);
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
	56,
	1166);
INSERT INTO V_BIN
	VALUES (1170,
	1175,
	1174,
	'==');
INSERT INTO V_VAL
	VALUES (1175,
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
	1166);
INSERT INTO V_PVL
	VALUES (1175,
	0,
	0,
	1164,
	0);
INSERT INTO V_VAL
	VALUES (1176,
	0,
	0,
	10,
	16,
	23,
	0,
	0,
	0,
	0,
	432,
	1166);
INSERT INTO V_IRF
	VALUES (1176,
	1169);
INSERT INTO V_VAL
	VALUES (1177,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1166);
INSERT INTO V_UNY
	VALUES (1177,
	1176,
	'empty');
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
	56,
	1166);
INSERT INTO V_UNY
	VALUES (1172,
	1177,
	'not');
INSERT INTO V_VAR
	VALUES (1169,
	1166,
	'goalSpec',
	1,
	432);
INSERT INTO V_INT
	VALUES (1169,
	0,
	717);
INSERT INTO ACT_BLK
	VALUES (1171,
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
	1165,
	0);
INSERT INTO ACT_SMT
	VALUES (1178,
	1171,
	1179,
	11,
	3,
	'Goal::create line: 11');
INSERT INTO ACT_CR
	VALUES (1178,
	1180,
	1,
	789,
	11,
	34);
INSERT INTO ACT_SMT
	VALUES (1179,
	1171,
	1181,
	12,
	3,
	'Goal::create line: 12');
INSERT INTO ACT_REL
	VALUES (1179,
	1180,
	1169,
	'''specified by''',
	787,
	12,
	34,
	12,
	37);
INSERT INTO ACT_SMT
	VALUES (1181,
	1171,
	1182,
	13,
	3,
	'Goal::create line: 13');
INSERT INTO ACT_FIO
	VALUES (1181,
	1183,
	1,
	'any',
	640,
	13,
	40);
INSERT INTO ACT_SMT
	VALUES (1182,
	1171,
	1184,
	14,
	3,
	'Goal::create line: 14');
INSERT INTO ACT_REL
	VALUES (1182,
	1180,
	1183,
	'''is currently executing within''',
	793,
	14,
	33,
	14,
	37);
INSERT INTO ACT_SMT
	VALUES (1184,
	1171,
	1185,
	17,
	3,
	'Goal::create line: 17');
INSERT INTO ACT_TFM
	VALUES (1184,
	1186,
	1180,
	17,
	8,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1185,
	1171,
	1187,
	18,
	3,
	'Goal::create line: 18');
INSERT INTO ACT_AI
	VALUES (1185,
	1188,
	1189,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1187,
	1171,
	1190,
	21,
	3,
	'Goal::create line: 21');
INSERT INTO E_ESS
	VALUES (1187,
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
	VALUES (1187,
	1,
	1191);
INSERT INTO E_CSME
	VALUES (1187,
	1192);
INSERT INTO E_CEI
	VALUES (1187,
	1180);
INSERT INTO ACT_SMT
	VALUES (1190,
	1171,
	0,
	22,
	3,
	'Goal::create line: 22');
INSERT INTO ACT_AI
	VALUES (1190,
	1193,
	1194,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1195,
	1,
	0,
	18,
	3,
	6,
	0,
	0,
	0,
	0,
	432,
	1171);
INSERT INTO V_IRF
	VALUES (1195,
	1180);
INSERT INTO V_VAL
	VALUES (1189,
	1,
	0,
	18,
	8,
	18,
	0,
	0,
	0,
	0,
	994,
	1171);
INSERT INTO V_AVL
	VALUES (1189,
	1195,
	789,
	995);
INSERT INTO V_VAL
	VALUES (1188,
	0,
	0,
	18,
	39,
	46,
	0,
	0,
	0,
	0,
	994,
	1171);
INSERT INTO V_LEN
	VALUES (1188,
	997,
	18,
	22);
INSERT INTO V_VAL
	VALUES (1196,
	1,
	0,
	22,
	3,
	6,
	0,
	0,
	0,
	0,
	432,
	1171);
INSERT INTO V_IRF
	VALUES (1196,
	1180);
INSERT INTO V_VAL
	VALUES (1194,
	1,
	0,
	22,
	8,
	22,
	0,
	0,
	0,
	0,
	268,
	1171);
INSERT INTO V_AVL
	VALUES (1194,
	1196,
	789,
	1197);
INSERT INTO V_VAL
	VALUES (1193,
	0,
	0,
	22,
	31,
	-1,
	22,
	54,
	22,
	81,
	268,
	1171);
INSERT INTO V_BRV
	VALUES (1193,
	882,
	1,
	22,
	26);
INSERT INTO V_VAL
	VALUES (1198,
	0,
	0,
	22,
	66,
	78,
	0,
	0,
	0,
	0,
	271,
	1171);
INSERT INTO V_TVL
	VALUES (1198,
	1191);
INSERT INTO V_PAR
	VALUES (1198,
	0,
	1193,
	'event_inst',
	1199,
	22,
	54);
INSERT INTO V_VAL
	VALUES (1199,
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
	1171);
INSERT INTO V_SCV
	VALUES (1199,
	1200,
	14);
INSERT INTO V_PAR
	VALUES (1199,
	0,
	1193,
	'microseconds',
	0,
	22,
	81);
INSERT INTO V_VAR
	VALUES (1180,
	1171,
	'goal',
	1,
	432);
INSERT INTO V_INT
	VALUES (1180,
	0,
	789);
INSERT INTO V_VAR
	VALUES (1183,
	1171,
	'session',
	1,
	432);
INSERT INTO V_INT
	VALUES (1183,
	0,
	640);
INSERT INTO V_VAR
	VALUES (1191,
	1171,
	'evaluateEvent',
	1,
	271);
INSERT INTO V_TRN
	VALUES (1191,
	0,
	'');
INSERT INTO O_TFR
	VALUES (1186,
	789,
	'calculateStart',
	'',
	204,
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
	1163);
INSERT INTO ACT_OPB
	VALUES (1201,
	1186);
INSERT INTO ACT_ACT
	VALUES (1201,
	'operation',
	0,
	1202,
	0,
	0,
	'Goal::calculateStart',
	0);
INSERT INTO ACT_BLK
	VALUES (1202,
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
	1201,
	0);
INSERT INTO ACT_SMT
	VALUES (1203,
	1202,
	1204,
	3,
	1,
	'Goal::calculateStart line: 3');
INSERT INTO ACT_SEL
	VALUES (1203,
	1205,
	1,
	'one',
	1206);
INSERT INTO ACT_SR
	VALUES (1203);
INSERT INTO ACT_LNK
	VALUES (1207,
	'''specified by''',
	1203,
	787,
	0,
	2,
	717,
	3,
	38,
	3,
	47,
	3,
	50);
INSERT INTO ACT_SMT
	VALUES (1204,
	1202,
	0,
	4,
	1,
	'Goal::calculateStart line: 4');
INSERT INTO ACT_IF
	VALUES (1204,
	1208,
	1209,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1210,
	1202,
	0,
	8,
	1,
	'Goal::calculateStart line: 8');
INSERT INTO ACT_EL
	VALUES (1210,
	1211,
	1212,
	1204);
INSERT INTO ACT_SMT
	VALUES (1213,
	1202,
	0,
	11,
	1,
	'Goal::calculateStart line: 11');
INSERT INTO ACT_E
	VALUES (1213,
	1214,
	1204);
INSERT INTO V_VAL
	VALUES (1206,
	0,
	0,
	3,
	32,
	35,
	0,
	0,
	0,
	0,
	432,
	1202);
INSERT INTO V_IRF
	VALUES (1206,
	1215);
INSERT INTO V_VAL
	VALUES (1216,
	0,
	0,
	4,
	6,
	13,
	0,
	0,
	0,
	0,
	432,
	1202);
INSERT INTO V_IRF
	VALUES (1216,
	1205);
INSERT INTO V_VAL
	VALUES (1217,
	0,
	0,
	4,
	15,
	22,
	0,
	0,
	0,
	0,
	379,
	1202);
INSERT INTO V_AVL
	VALUES (1217,
	1216,
	717,
	753);
INSERT INTO V_VAL
	VALUES (1209,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1202);
INSERT INTO V_BIN
	VALUES (1209,
	1218,
	1217,
	'==');
INSERT INTO V_VAL
	VALUES (1218,
	0,
	0,
	4,
	37,
	40,
	0,
	0,
	0,
	0,
	379,
	1202);
INSERT INTO V_LEN
	VALUES (1218,
	388,
	4,
	27);
INSERT INTO V_VAL
	VALUES (1219,
	0,
	0,
	8,
	8,
	15,
	0,
	0,
	0,
	0,
	432,
	1202);
INSERT INTO V_IRF
	VALUES (1219,
	1205);
INSERT INTO V_VAL
	VALUES (1220,
	0,
	0,
	8,
	17,
	24,
	0,
	0,
	0,
	0,
	379,
	1202);
INSERT INTO V_AVL
	VALUES (1220,
	1219,
	717,
	753);
INSERT INTO V_VAL
	VALUES (1212,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1202);
INSERT INTO V_BIN
	VALUES (1212,
	1221,
	1220,
	'==');
INSERT INTO V_VAL
	VALUES (1221,
	0,
	0,
	8,
	39,
	46,
	0,
	0,
	0,
	0,
	379,
	1202);
INSERT INTO V_LEN
	VALUES (1221,
	380,
	8,
	29);
INSERT INTO V_VAR
	VALUES (1205,
	1202,
	'goalSpec',
	1,
	432);
INSERT INTO V_INT
	VALUES (1205,
	0,
	717);
INSERT INTO V_VAR
	VALUES (1215,
	1202,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (1215,
	0,
	789);
INSERT INTO ACT_BLK
	VALUES (1208,
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
	1201,
	0);
INSERT INTO ACT_SMT
	VALUES (1222,
	1208,
	1223,
	5,
	3,
	'Goal::calculateStart line: 5');
INSERT INTO ACT_SEL
	VALUES (1222,
	1224,
	1,
	'one',
	1225);
INSERT INTO ACT_SR
	VALUES (1222);
INSERT INTO ACT_LNK
	VALUES (1226,
	'''is currently executing within''',
	1222,
	793,
	1227,
	2,
	640,
	6,
	11,
	6,
	26,
	6,
	30);
INSERT INTO ACT_LNK
	VALUES (1227,
	'''is timed by''',
	0,
	777,
	0,
	2,
	656,
	6,
	64,
	6,
	77,
	6,
	80);
INSERT INTO ACT_SMT
	VALUES (1223,
	1208,
	0,
	7,
	3,
	'Goal::calculateStart line: 7');
INSERT INTO ACT_AI
	VALUES (1223,
	1228,
	1229,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1225,
	0,
	0,
	6,
	5,
	8,
	0,
	0,
	0,
	0,
	432,
	1208);
INSERT INTO V_IRF
	VALUES (1225,
	1215);
INSERT INTO V_VAL
	VALUES (1230,
	1,
	0,
	7,
	3,
	6,
	0,
	0,
	0,
	0,
	432,
	1208);
INSERT INTO V_IRF
	VALUES (1230,
	1215);
INSERT INTO V_VAL
	VALUES (1229,
	1,
	0,
	7,
	8,
	12,
	0,
	0,
	0,
	0,
	92,
	1208);
INSERT INTO V_AVL
	VALUES (1229,
	1230,
	789,
	1231);
INSERT INTO V_VAL
	VALUES (1232,
	0,
	0,
	7,
	16,
	27,
	0,
	0,
	0,
	0,
	432,
	1208);
INSERT INTO V_IRF
	VALUES (1232,
	1224);
INSERT INTO V_VAL
	VALUES (1228,
	0,
	0,
	7,
	29,
	32,
	0,
	0,
	0,
	0,
	14,
	1208);
INSERT INTO V_AVL
	VALUES (1228,
	1232,
	656,
	962);
INSERT INTO V_VAR
	VALUES (1224,
	1208,
	'workoutTimer',
	1,
	432);
INSERT INTO V_INT
	VALUES (1224,
	0,
	656);
INSERT INTO ACT_BLK
	VALUES (1211,
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
	1201,
	0);
INSERT INTO ACT_SMT
	VALUES (1233,
	1211,
	1234,
	9,
	3,
	'Goal::calculateStart line: 9');
INSERT INTO ACT_SEL
	VALUES (1233,
	1235,
	1,
	'one',
	1236);
INSERT INTO ACT_SR
	VALUES (1233);
INSERT INTO ACT_LNK
	VALUES (1237,
	'''is currently executing within''',
	1233,
	793,
	0,
	2,
	640,
	9,
	39,
	9,
	54,
	9,
	58);
INSERT INTO ACT_SMT
	VALUES (1234,
	1211,
	0,
	10,
	3,
	'Goal::calculateStart line: 10');
INSERT INTO ACT_AI
	VALUES (1234,
	1238,
	1239,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1236,
	0,
	0,
	9,
	33,
	36,
	0,
	0,
	0,
	0,
	432,
	1211);
INSERT INTO V_IRF
	VALUES (1236,
	1215);
INSERT INTO V_VAL
	VALUES (1240,
	1,
	0,
	10,
	3,
	6,
	0,
	0,
	0,
	0,
	432,
	1211);
INSERT INTO V_IRF
	VALUES (1240,
	1215);
INSERT INTO V_VAL
	VALUES (1239,
	1,
	0,
	10,
	8,
	12,
	0,
	0,
	0,
	0,
	92,
	1211);
INSERT INTO V_AVL
	VALUES (1239,
	1240,
	789,
	1231);
INSERT INTO V_VAL
	VALUES (1241,
	0,
	0,
	10,
	16,
	22,
	0,
	0,
	0,
	0,
	432,
	1211);
INSERT INTO V_IRF
	VALUES (1241,
	1235);
INSERT INTO V_VAL
	VALUES (1238,
	0,
	0,
	10,
	24,
	42,
	0,
	0,
	0,
	0,
	92,
	1211);
INSERT INTO V_AVL
	VALUES (1238,
	1241,
	640,
	1034);
INSERT INTO V_VAR
	VALUES (1235,
	1211,
	'session',
	1,
	432);
INSERT INTO V_INT
	VALUES (1235,
	0,
	640);
INSERT INTO ACT_BLK
	VALUES (1214,
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
	1201,
	0);
INSERT INTO ACT_SMT
	VALUES (1242,
	1214,
	0,
	12,
	3,
	'Goal::calculateStart line: 12');
INSERT INTO ACT_BRG
	VALUES (1242,
	666,
	12,
	8,
	12,
	3);
INSERT INTO V_VAL
	VALUES (1243,
	0,
	0,
	12,
	29,
	73,
	0,
	0,
	0,
	0,
	334,
	1214);
INSERT INTO V_LST
	VALUES (1243,
	'Goal.calculateStart: Unknown Goal Span Type.');
INSERT INTO V_PAR
	VALUES (1243,
	1242,
	0,
	'message',
	0,
	12,
	20);
INSERT INTO O_TFR
	VALUES (1244,
	789,
	'evaluateAchievement',
	'',
	994,
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
	1186);
INSERT INTO ACT_OPB
	VALUES (1245,
	1244);
INSERT INTO ACT_ACT
	VALUES (1245,
	'operation',
	0,
	1246,
	0,
	0,
	'Goal::evaluateAchievement',
	0);
INSERT INTO ACT_BLK
	VALUES (1246,
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
	1245,
	0);
INSERT INTO ACT_SMT
	VALUES (1247,
	1246,
	1248,
	6,
	1,
	'Goal::evaluateAchievement line: 6');
INSERT INTO ACT_SEL
	VALUES (1247,
	1249,
	1,
	'one',
	1250);
INSERT INTO ACT_SR
	VALUES (1247);
INSERT INTO ACT_LNK
	VALUES (1251,
	'''specified by''',
	1247,
	787,
	0,
	2,
	717,
	6,
	38,
	6,
	47,
	6,
	50);
INSERT INTO ACT_SMT
	VALUES (1248,
	1246,
	1252,
	7,
	1,
	'Goal::evaluateAchievement line: 7');
INSERT INTO ACT_SEL
	VALUES (1248,
	1253,
	1,
	'one',
	1254);
INSERT INTO ACT_SR
	VALUES (1248);
INSERT INTO ACT_LNK
	VALUES (1255,
	'''is currently executing within''',
	1248,
	793,
	0,
	2,
	640,
	7,
	37,
	7,
	52,
	7,
	56);
INSERT INTO ACT_SMT
	VALUES (1252,
	1246,
	1256,
	11,
	1,
	'Goal::evaluateAchievement line: 11');
INSERT INTO ACT_AI
	VALUES (1252,
	1257,
	1258,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1256,
	1246,
	1259,
	12,
	1,
	'Goal::evaluateAchievement line: 12');
INSERT INTO ACT_IF
	VALUES (1256,
	1260,
	1261,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1262,
	1246,
	0,
	14,
	1,
	'Goal::evaluateAchievement line: 14');
INSERT INTO ACT_EL
	VALUES (1262,
	1263,
	1264,
	1256);
INSERT INTO ACT_SMT
	VALUES (1265,
	1246,
	0,
	16,
	1,
	'Goal::evaluateAchievement line: 16');
INSERT INTO ACT_E
	VALUES (1265,
	1266,
	1256);
INSERT INTO ACT_SMT
	VALUES (1259,
	1246,
	1267,
	21,
	1,
	'Goal::evaluateAchievement line: 21');
INSERT INTO ACT_AI
	VALUES (1259,
	1268,
	1269,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1267,
	1246,
	1270,
	22,
	1,
	'Goal::evaluateAchievement line: 22');
INSERT INTO ACT_IF
	VALUES (1267,
	1271,
	1272,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1273,
	1246,
	0,
	24,
	1,
	'Goal::evaluateAchievement line: 24');
INSERT INTO ACT_EL
	VALUES (1273,
	1274,
	1275,
	1267);
INSERT INTO ACT_SMT
	VALUES (1270,
	1246,
	1276,
	30,
	1,
	'Goal::evaluateAchievement line: 30');
INSERT INTO ACT_IF
	VALUES (1270,
	1277,
	1278,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1276,
	1246,
	0,
	38,
	1,
	'Goal::evaluateAchievement line: 38');
INSERT INTO ACT_RET
	VALUES (1276,
	1279);
INSERT INTO V_VAL
	VALUES (1250,
	0,
	0,
	6,
	32,
	35,
	0,
	0,
	0,
	0,
	432,
	1246);
INSERT INTO V_IRF
	VALUES (1250,
	1280);
INSERT INTO V_VAL
	VALUES (1254,
	0,
	0,
	7,
	31,
	34,
	0,
	0,
	0,
	0,
	432,
	1246);
INSERT INTO V_IRF
	VALUES (1254,
	1280);
INSERT INTO V_VAL
	VALUES (1258,
	1,
	1,
	11,
	1,
	12,
	0,
	0,
	0,
	0,
	92,
	1246);
INSERT INTO V_TVL
	VALUES (1258,
	1281);
INSERT INTO V_VAL
	VALUES (1257,
	0,
	0,
	11,
	16,
	18,
	0,
	0,
	0,
	0,
	92,
	1246);
INSERT INTO V_LRL
	VALUES (1257,
	'0.0');
INSERT INTO V_VAL
	VALUES (1282,
	0,
	0,
	12,
	6,
	13,
	0,
	0,
	0,
	0,
	432,
	1246);
INSERT INTO V_IRF
	VALUES (1282,
	1249);
INSERT INTO V_VAL
	VALUES (1283,
	0,
	0,
	12,
	15,
	26,
	0,
	0,
	0,
	0,
	376,
	1246);
INSERT INTO V_AVL
	VALUES (1283,
	1282,
	717,
	750);
INSERT INTO V_VAL
	VALUES (1261,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1246);
INSERT INTO V_BIN
	VALUES (1261,
	1284,
	1283,
	'==');
INSERT INTO V_VAL
	VALUES (1284,
	0,
	0,
	12,
	45,
	53,
	0,
	0,
	0,
	0,
	376,
	1246);
INSERT INTO V_LEN
	VALUES (1284,
	386,
	12,
	31);
INSERT INTO V_VAL
	VALUES (1285,
	0,
	0,
	14,
	8,
	15,
	0,
	0,
	0,
	0,
	432,
	1246);
INSERT INTO V_IRF
	VALUES (1285,
	1249);
INSERT INTO V_VAL
	VALUES (1286,
	0,
	0,
	14,
	17,
	28,
	0,
	0,
	0,
	0,
	376,
	1246);
INSERT INTO V_AVL
	VALUES (1286,
	1285,
	717,
	750);
INSERT INTO V_VAL
	VALUES (1264,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1246);
INSERT INTO V_BIN
	VALUES (1264,
	1287,
	1286,
	'==');
INSERT INTO V_VAL
	VALUES (1287,
	0,
	0,
	14,
	47,
	50,
	0,
	0,
	0,
	0,
	376,
	1246);
INSERT INTO V_LEN
	VALUES (1287,
	377,
	14,
	33);
INSERT INTO V_VAL
	VALUES (1269,
	1,
	1,
	21,
	1,
	15,
	0,
	0,
	0,
	0,
	994,
	1246);
INSERT INTO V_TVL
	VALUES (1269,
	1288);
INSERT INTO V_VAL
	VALUES (1268,
	0,
	0,
	21,
	36,
	44,
	0,
	0,
	0,
	0,
	994,
	1246);
INSERT INTO V_LEN
	VALUES (1268,
	1289,
	21,
	19);
INSERT INTO V_VAL
	VALUES (1290,
	0,
	0,
	22,
	6,
	17,
	0,
	0,
	0,
	0,
	92,
	1246);
INSERT INTO V_TVL
	VALUES (1290,
	1281);
INSERT INTO V_VAL
	VALUES (1272,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1246);
INSERT INTO V_BIN
	VALUES (1272,
	1291,
	1290,
	'<');
INSERT INTO V_VAL
	VALUES (1292,
	0,
	0,
	22,
	21,
	28,
	0,
	0,
	0,
	0,
	432,
	1246);
INSERT INTO V_IRF
	VALUES (1292,
	1249);
INSERT INTO V_VAL
	VALUES (1291,
	0,
	0,
	22,
	30,
	36,
	0,
	0,
	0,
	0,
	92,
	1246);
INSERT INTO V_AVL
	VALUES (1291,
	1292,
	717,
	741);
INSERT INTO V_VAL
	VALUES (1293,
	0,
	0,
	24,
	8,
	19,
	0,
	0,
	0,
	0,
	92,
	1246);
INSERT INTO V_TVL
	VALUES (1293,
	1281);
INSERT INTO V_VAL
	VALUES (1275,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1246);
INSERT INTO V_BIN
	VALUES (1275,
	1294,
	1293,
	'>');
INSERT INTO V_VAL
	VALUES (1295,
	0,
	0,
	24,
	23,
	30,
	0,
	0,
	0,
	0,
	432,
	1246);
INSERT INTO V_IRF
	VALUES (1295,
	1249);
INSERT INTO V_VAL
	VALUES (1294,
	0,
	0,
	24,
	32,
	38,
	0,
	0,
	0,
	0,
	92,
	1246);
INSERT INTO V_AVL
	VALUES (1294,
	1295,
	717,
	744);
INSERT INTO V_VAL
	VALUES (1296,
	0,
	0,
	30,
	6,
	13,
	0,
	0,
	0,
	0,
	432,
	1246);
INSERT INTO V_IRF
	VALUES (1296,
	1249);
INSERT INTO V_VAL
	VALUES (1297,
	0,
	0,
	30,
	15,
	26,
	0,
	0,
	0,
	0,
	376,
	1246);
INSERT INTO V_AVL
	VALUES (1297,
	1296,
	717,
	750);
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
	56,
	1246);
INSERT INTO V_BIN
	VALUES (1278,
	1298,
	1297,
	'==');
INSERT INTO V_VAL
	VALUES (1298,
	0,
	0,
	30,
	45,
	48,
	0,
	0,
	0,
	0,
	376,
	1246);
INSERT INTO V_LEN
	VALUES (1298,
	377,
	30,
	31);
INSERT INTO V_VAL
	VALUES (1279,
	0,
	0,
	38,
	9,
	23,
	0,
	0,
	0,
	0,
	994,
	1246);
INSERT INTO V_TVL
	VALUES (1279,
	1288);
INSERT INTO V_VAR
	VALUES (1249,
	1246,
	'goalSpec',
	1,
	432);
INSERT INTO V_INT
	VALUES (1249,
	0,
	717);
INSERT INTO V_VAR
	VALUES (1280,
	1246,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (1280,
	0,
	789);
INSERT INTO V_VAR
	VALUES (1253,
	1246,
	'session',
	1,
	432);
INSERT INTO V_INT
	VALUES (1253,
	0,
	640);
INSERT INTO V_VAR
	VALUES (1281,
	1246,
	'currentValue',
	1,
	92);
INSERT INTO V_TRN
	VALUES (1281,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1288,
	1246,
	'goalDisposition',
	1,
	994);
INSERT INTO V_TRN
	VALUES (1288,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (1260,
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
	1245,
	0);
INSERT INTO ACT_SMT
	VALUES (1299,
	1260,
	0,
	13,
	3,
	'Goal::evaluateAchievement line: 13');
INSERT INTO ACT_AI
	VALUES (1299,
	1300,
	1301,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1301,
	1,
	0,
	13,
	3,
	14,
	0,
	0,
	0,
	0,
	92,
	1260);
INSERT INTO V_TVL
	VALUES (1301,
	1281);
INSERT INTO V_VAL
	VALUES (1302,
	0,
	0,
	13,
	18,
	24,
	0,
	0,
	0,
	0,
	432,
	1260);
INSERT INTO V_IRF
	VALUES (1302,
	1253);
INSERT INTO V_VAL
	VALUES (1300,
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
	1260);
INSERT INTO V_AVL
	VALUES (1300,
	1302,
	640,
	1102);
INSERT INTO ACT_BLK
	VALUES (1263,
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
	1245,
	0);
INSERT INTO ACT_SMT
	VALUES (1303,
	1263,
	0,
	15,
	3,
	'Goal::evaluateAchievement line: 15');
INSERT INTO ACT_AI
	VALUES (1303,
	1304,
	1305,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1305,
	1,
	0,
	15,
	3,
	14,
	0,
	0,
	0,
	0,
	92,
	1263);
INSERT INTO V_TVL
	VALUES (1305,
	1281);
INSERT INTO V_VAL
	VALUES (1306,
	0,
	0,
	15,
	18,
	24,
	0,
	0,
	0,
	0,
	432,
	1263);
INSERT INTO V_IRF
	VALUES (1306,
	1253);
INSERT INTO V_VAL
	VALUES (1304,
	0,
	0,
	15,
	26,
	36,
	0,
	0,
	0,
	0,
	92,
	1263);
INSERT INTO V_AVL
	VALUES (1304,
	1306,
	640,
	1082);
INSERT INTO ACT_BLK
	VALUES (1266,
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
	1245,
	0);
INSERT INTO ACT_SMT
	VALUES (1307,
	1266,
	0,
	17,
	3,
	'Goal::evaluateAchievement line: 17');
INSERT INTO ACT_BRG
	VALUES (1307,
	666,
	17,
	8,
	17,
	3);
INSERT INTO V_VAL
	VALUES (1308,
	0,
	0,
	17,
	29,
	82,
	0,
	0,
	0,
	0,
	334,
	1266);
INSERT INTO V_LST
	VALUES (1308,
	'Goal.evaluateAchievement: Unknown Goal Criteria Type.');
INSERT INTO V_PAR
	VALUES (1308,
	1307,
	0,
	'message',
	0,
	17,
	20);
INSERT INTO ACT_BLK
	VALUES (1271,
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
	1245,
	0);
INSERT INTO ACT_SMT
	VALUES (1309,
	1271,
	0,
	23,
	3,
	'Goal::evaluateAchievement line: 23');
INSERT INTO ACT_AI
	VALUES (1309,
	1310,
	1311,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1311,
	1,
	0,
	23,
	3,
	17,
	0,
	0,
	0,
	0,
	994,
	1271);
INSERT INTO V_TVL
	VALUES (1311,
	1288);
INSERT INTO V_VAL
	VALUES (1310,
	0,
	0,
	23,
	38,
	45,
	0,
	0,
	0,
	0,
	994,
	1271);
INSERT INTO V_LEN
	VALUES (1310,
	997,
	23,
	21);
INSERT INTO ACT_BLK
	VALUES (1274,
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
	1245,
	0);
INSERT INTO ACT_SMT
	VALUES (1312,
	1274,
	0,
	25,
	3,
	'Goal::evaluateAchievement line: 25');
INSERT INTO ACT_AI
	VALUES (1312,
	1313,
	1314,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1314,
	1,
	0,
	25,
	3,
	17,
	0,
	0,
	0,
	0,
	994,
	1274);
INSERT INTO V_TVL
	VALUES (1314,
	1288);
INSERT INTO V_VAL
	VALUES (1313,
	0,
	0,
	25,
	38,
	45,
	0,
	0,
	0,
	0,
	994,
	1274);
INSERT INTO V_LEN
	VALUES (1313,
	1001,
	25,
	21);
INSERT INTO ACT_BLK
	VALUES (1277,
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
	1245,
	0);
INSERT INTO ACT_SMT
	VALUES (1315,
	1277,
	0,
	31,
	3,
	'Goal::evaluateAchievement line: 31');
INSERT INTO ACT_IF
	VALUES (1315,
	1316,
	1317,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1318,
	1277,
	0,
	33,
	3,
	'Goal::evaluateAchievement line: 33');
INSERT INTO ACT_EL
	VALUES (1318,
	1319,
	1320,
	1315);
INSERT INTO V_VAL
	VALUES (1321,
	0,
	0,
	31,
	8,
	22,
	0,
	0,
	0,
	0,
	994,
	1277);
INSERT INTO V_TVL
	VALUES (1321,
	1288);
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
	56,
	1277);
INSERT INTO V_BIN
	VALUES (1317,
	1322,
	1321,
	'==');
INSERT INTO V_VAL
	VALUES (1322,
	0,
	0,
	31,
	44,
	51,
	0,
	0,
	0,
	0,
	994,
	1277);
INSERT INTO V_LEN
	VALUES (1322,
	997,
	31,
	27);
INSERT INTO V_VAL
	VALUES (1323,
	0,
	0,
	33,
	10,
	24,
	0,
	0,
	0,
	0,
	994,
	1277);
INSERT INTO V_TVL
	VALUES (1323,
	1288);
INSERT INTO V_VAL
	VALUES (1320,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1277);
INSERT INTO V_BIN
	VALUES (1320,
	1324,
	1323,
	'==');
INSERT INTO V_VAL
	VALUES (1324,
	0,
	0,
	33,
	46,
	53,
	0,
	0,
	0,
	0,
	994,
	1277);
INSERT INTO V_LEN
	VALUES (1324,
	1001,
	33,
	29);
INSERT INTO ACT_BLK
	VALUES (1316,
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
	1245,
	0);
INSERT INTO ACT_SMT
	VALUES (1325,
	1316,
	0,
	32,
	5,
	'Goal::evaluateAchievement line: 32');
INSERT INTO ACT_AI
	VALUES (1325,
	1326,
	1327,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1327,
	1,
	0,
	32,
	5,
	19,
	0,
	0,
	0,
	0,
	994,
	1316);
INSERT INTO V_TVL
	VALUES (1327,
	1288);
INSERT INTO V_VAL
	VALUES (1326,
	0,
	0,
	32,
	40,
	47,
	0,
	0,
	0,
	0,
	994,
	1316);
INSERT INTO V_LEN
	VALUES (1326,
	1001,
	32,
	23);
INSERT INTO ACT_BLK
	VALUES (1319,
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
	1245,
	0);
INSERT INTO ACT_SMT
	VALUES (1328,
	1319,
	0,
	34,
	5,
	'Goal::evaluateAchievement line: 34');
INSERT INTO ACT_AI
	VALUES (1328,
	1329,
	1330,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1330,
	1,
	0,
	34,
	5,
	19,
	0,
	0,
	0,
	0,
	994,
	1319);
INSERT INTO V_TVL
	VALUES (1330,
	1288);
INSERT INTO V_VAL
	VALUES (1329,
	0,
	0,
	34,
	40,
	47,
	0,
	0,
	0,
	0,
	994,
	1319);
INSERT INTO V_LEN
	VALUES (1329,
	997,
	34,
	23);
INSERT INTO O_TFR
	VALUES (1331,
	789,
	'evaluateCompletion',
	'',
	204,
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
	1244);
INSERT INTO ACT_OPB
	VALUES (1332,
	1331);
INSERT INTO ACT_ACT
	VALUES (1332,
	'operation',
	0,
	1333,
	0,
	0,
	'Goal::evaluateCompletion',
	0);
INSERT INTO ACT_BLK
	VALUES (1333,
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
	1332,
	0);
INSERT INTO ACT_SMT
	VALUES (1334,
	1333,
	1335,
	6,
	1,
	'Goal::evaluateCompletion line: 6');
INSERT INTO ACT_SEL
	VALUES (1334,
	1336,
	1,
	'one',
	1337);
INSERT INTO ACT_SR
	VALUES (1334);
INSERT INTO ACT_LNK
	VALUES (1338,
	'''specified by''',
	1334,
	787,
	0,
	2,
	717,
	6,
	38,
	6,
	47,
	6,
	50);
INSERT INTO ACT_SMT
	VALUES (1335,
	1333,
	1339,
	10,
	1,
	'Goal::evaluateCompletion line: 10');
INSERT INTO ACT_AI
	VALUES (1335,
	1340,
	1341,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1339,
	1333,
	1342,
	11,
	1,
	'Goal::evaluateCompletion line: 11');
INSERT INTO ACT_IF
	VALUES (1339,
	1343,
	1344,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1345,
	1333,
	0,
	14,
	1,
	'Goal::evaluateCompletion line: 14');
INSERT INTO ACT_EL
	VALUES (1345,
	1346,
	1347,
	1339);
INSERT INTO ACT_SMT
	VALUES (1348,
	1333,
	0,
	18,
	1,
	'Goal::evaluateCompletion line: 18');
INSERT INTO ACT_E
	VALUES (1348,
	1349,
	1339);
INSERT INTO ACT_SMT
	VALUES (1342,
	1333,
	0,
	24,
	1,
	'Goal::evaluateCompletion line: 24');
INSERT INTO ACT_IF
	VALUES (1342,
	1350,
	1351,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1337,
	0,
	0,
	6,
	32,
	35,
	0,
	0,
	0,
	0,
	432,
	1333);
INSERT INTO V_IRF
	VALUES (1337,
	1352);
INSERT INTO V_VAL
	VALUES (1341,
	1,
	1,
	10,
	1,
	11,
	0,
	0,
	0,
	0,
	92,
	1333);
INSERT INTO V_TVL
	VALUES (1341,
	1353);
INSERT INTO V_VAL
	VALUES (1340,
	0,
	0,
	10,
	15,
	17,
	0,
	0,
	0,
	0,
	92,
	1333);
INSERT INTO V_LRL
	VALUES (1340,
	'0.0');
INSERT INTO V_VAL
	VALUES (1354,
	0,
	0,
	11,
	6,
	13,
	0,
	0,
	0,
	0,
	432,
	1333);
INSERT INTO V_IRF
	VALUES (1354,
	1336);
INSERT INTO V_VAL
	VALUES (1355,
	0,
	0,
	11,
	15,
	22,
	0,
	0,
	0,
	0,
	379,
	1333);
INSERT INTO V_AVL
	VALUES (1355,
	1354,
	717,
	753);
INSERT INTO V_VAL
	VALUES (1344,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1333);
INSERT INTO V_BIN
	VALUES (1344,
	1356,
	1355,
	'==');
INSERT INTO V_VAL
	VALUES (1356,
	0,
	0,
	11,
	37,
	44,
	0,
	0,
	0,
	0,
	379,
	1333);
INSERT INTO V_LEN
	VALUES (1356,
	380,
	11,
	27);
INSERT INTO V_VAL
	VALUES (1357,
	0,
	0,
	14,
	8,
	15,
	0,
	0,
	0,
	0,
	432,
	1333);
INSERT INTO V_IRF
	VALUES (1357,
	1336);
INSERT INTO V_VAL
	VALUES (1358,
	0,
	0,
	14,
	17,
	24,
	0,
	0,
	0,
	0,
	379,
	1333);
INSERT INTO V_AVL
	VALUES (1358,
	1357,
	717,
	753);
INSERT INTO V_VAL
	VALUES (1347,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1333);
INSERT INTO V_BIN
	VALUES (1347,
	1359,
	1358,
	'==');
INSERT INTO V_VAL
	VALUES (1359,
	0,
	0,
	14,
	39,
	42,
	0,
	0,
	0,
	0,
	379,
	1333);
INSERT INTO V_LEN
	VALUES (1359,
	388,
	14,
	29);
INSERT INTO V_VAL
	VALUES (1360,
	0,
	0,
	24,
	6,
	16,
	0,
	0,
	0,
	0,
	92,
	1333);
INSERT INTO V_TVL
	VALUES (1360,
	1353);
INSERT INTO V_VAL
	VALUES (1351,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1333);
INSERT INTO V_BIN
	VALUES (1351,
	1361,
	1360,
	'>=');
INSERT INTO V_VAL
	VALUES (1362,
	0,
	0,
	24,
	21,
	28,
	0,
	0,
	0,
	0,
	432,
	1333);
INSERT INTO V_IRF
	VALUES (1362,
	1336);
INSERT INTO V_VAL
	VALUES (1361,
	0,
	0,
	24,
	30,
	33,
	0,
	0,
	0,
	0,
	92,
	1333);
INSERT INTO V_AVL
	VALUES (1361,
	1362,
	717,
	747);
INSERT INTO V_VAR
	VALUES (1336,
	1333,
	'goalSpec',
	1,
	432);
INSERT INTO V_INT
	VALUES (1336,
	0,
	717);
INSERT INTO V_VAR
	VALUES (1352,
	1333,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (1352,
	0,
	789);
INSERT INTO V_VAR
	VALUES (1353,
	1333,
	'elapsedSpan',
	1,
	92);
INSERT INTO V_TRN
	VALUES (1353,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (1343,
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
	1332,
	0);
INSERT INTO ACT_SMT
	VALUES (1363,
	1343,
	1364,
	12,
	3,
	'Goal::evaluateCompletion line: 12');
INSERT INTO ACT_SEL
	VALUES (1363,
	1365,
	1,
	'one',
	1366);
INSERT INTO ACT_SR
	VALUES (1363);
INSERT INTO ACT_LNK
	VALUES (1367,
	'''is currently executing within''',
	1363,
	793,
	0,
	2,
	640,
	12,
	39,
	12,
	54,
	12,
	58);
INSERT INTO ACT_SMT
	VALUES (1364,
	1343,
	0,
	13,
	3,
	'Goal::evaluateCompletion line: 13');
INSERT INTO ACT_AI
	VALUES (1364,
	1368,
	1369,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1366,
	0,
	0,
	12,
	33,
	36,
	0,
	0,
	0,
	0,
	432,
	1343);
INSERT INTO V_IRF
	VALUES (1366,
	1352);
INSERT INTO V_VAL
	VALUES (1369,
	1,
	0,
	13,
	3,
	13,
	0,
	0,
	0,
	0,
	92,
	1343);
INSERT INTO V_TVL
	VALUES (1369,
	1353);
INSERT INTO V_VAL
	VALUES (1370,
	0,
	0,
	13,
	17,
	23,
	0,
	0,
	0,
	0,
	432,
	1343);
INSERT INTO V_IRF
	VALUES (1370,
	1365);
INSERT INTO V_VAL
	VALUES (1371,
	0,
	0,
	13,
	25,
	43,
	0,
	0,
	0,
	0,
	92,
	1343);
INSERT INTO V_AVL
	VALUES (1371,
	1370,
	640,
	1034);
INSERT INTO V_VAL
	VALUES (1368,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	92,
	1343);
INSERT INTO V_BIN
	VALUES (1368,
	1372,
	1371,
	'-');
INSERT INTO V_VAL
	VALUES (1373,
	0,
	0,
	13,
	47,
	50,
	0,
	0,
	0,
	0,
	432,
	1343);
INSERT INTO V_IRF
	VALUES (1373,
	1352);
INSERT INTO V_VAL
	VALUES (1372,
	0,
	0,
	13,
	52,
	56,
	0,
	0,
	0,
	0,
	92,
	1343);
INSERT INTO V_AVL
	VALUES (1372,
	1373,
	789,
	1231);
INSERT INTO V_VAR
	VALUES (1365,
	1343,
	'session',
	1,
	432);
INSERT INTO V_INT
	VALUES (1365,
	0,
	640);
INSERT INTO ACT_BLK
	VALUES (1346,
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
	1332,
	0);
INSERT INTO ACT_SMT
	VALUES (1374,
	1346,
	1375,
	15,
	3,
	'Goal::evaluateCompletion line: 15');
INSERT INTO ACT_SEL
	VALUES (1374,
	1376,
	1,
	'one',
	1377);
INSERT INTO ACT_SR
	VALUES (1374);
INSERT INTO ACT_LNK
	VALUES (1378,
	'''is currently executing within''',
	1374,
	793,
	1379,
	2,
	640,
	16,
	11,
	16,
	26,
	16,
	30);
INSERT INTO ACT_LNK
	VALUES (1379,
	'''is timed by''',
	0,
	777,
	0,
	2,
	656,
	16,
	64,
	16,
	77,
	16,
	80);
INSERT INTO ACT_SMT
	VALUES (1375,
	1346,
	0,
	17,
	3,
	'Goal::evaluateCompletion line: 17');
INSERT INTO ACT_AI
	VALUES (1375,
	1380,
	1381,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1377,
	0,
	0,
	16,
	5,
	8,
	0,
	0,
	0,
	0,
	432,
	1346);
INSERT INTO V_IRF
	VALUES (1377,
	1352);
INSERT INTO V_VAL
	VALUES (1381,
	1,
	0,
	17,
	3,
	13,
	0,
	0,
	0,
	0,
	92,
	1346);
INSERT INTO V_TVL
	VALUES (1381,
	1353);
INSERT INTO V_VAL
	VALUES (1382,
	0,
	0,
	17,
	17,
	28,
	0,
	0,
	0,
	0,
	432,
	1346);
INSERT INTO V_IRF
	VALUES (1382,
	1376);
INSERT INTO V_VAL
	VALUES (1383,
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
	1346);
INSERT INTO V_AVL
	VALUES (1383,
	1382,
	656,
	962);
INSERT INTO V_VAL
	VALUES (1380,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	92,
	1346);
INSERT INTO V_BIN
	VALUES (1380,
	1384,
	1383,
	'-');
INSERT INTO V_VAL
	VALUES (1385,
	0,
	0,
	17,
	37,
	40,
	0,
	0,
	0,
	0,
	432,
	1346);
INSERT INTO V_IRF
	VALUES (1385,
	1352);
INSERT INTO V_VAL
	VALUES (1384,
	0,
	0,
	17,
	42,
	46,
	0,
	0,
	0,
	0,
	92,
	1346);
INSERT INTO V_AVL
	VALUES (1384,
	1385,
	789,
	1231);
INSERT INTO V_VAR
	VALUES (1376,
	1346,
	'workoutTimer',
	1,
	432);
INSERT INTO V_INT
	VALUES (1376,
	0,
	656);
INSERT INTO ACT_BLK
	VALUES (1349,
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
	1332,
	0);
INSERT INTO ACT_SMT
	VALUES (1386,
	1349,
	0,
	19,
	3,
	'Goal::evaluateCompletion line: 19');
INSERT INTO ACT_BRG
	VALUES (1386,
	666,
	19,
	8,
	19,
	3);
INSERT INTO V_VAL
	VALUES (1387,
	0,
	0,
	19,
	29,
	77,
	0,
	0,
	0,
	0,
	334,
	1349);
INSERT INTO V_LST
	VALUES (1387,
	'Goal.evaluateCompletion: Unknown Goal Span Type.');
INSERT INTO V_PAR
	VALUES (1387,
	1386,
	0,
	'message',
	0,
	19,
	20);
INSERT INTO ACT_BLK
	VALUES (1350,
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
	1332,
	0);
INSERT INTO ACT_SMT
	VALUES (1388,
	1350,
	1389,
	25,
	3,
	'Goal::evaluateCompletion line: 25');
INSERT INTO ACT_SEL
	VALUES (1388,
	1390,
	1,
	'one',
	1391);
INSERT INTO ACT_SR
	VALUES (1388);
INSERT INTO ACT_LNK
	VALUES (1392,
	'''has open''',
	1388,
	803,
	0,
	2,
	798,
	25,
	47,
	25,
	59,
	25,
	63);
INSERT INTO ACT_SMT
	VALUES (1389,
	1350,
	1393,
	26,
	3,
	'Goal::evaluateCompletion line: 26');
INSERT INTO ACT_IF
	VALUES (1389,
	1394,
	1395,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1393,
	1350,
	0,
	29,
	3,
	'Goal::evaluateCompletion line: 29');
INSERT INTO E_ESS
	VALUES (1393,
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
	VALUES (1393);
INSERT INTO E_GSME
	VALUES (1393,
	1396);
INSERT INTO E_GEN
	VALUES (1393,
	1352);
INSERT INTO V_VAL
	VALUES (1391,
	0,
	0,
	25,
	41,
	44,
	0,
	0,
	0,
	0,
	432,
	1350);
INSERT INTO V_IRF
	VALUES (1391,
	1352);
INSERT INTO V_VAL
	VALUES (1397,
	0,
	0,
	26,
	18,
	32,
	0,
	0,
	0,
	0,
	432,
	1350);
INSERT INTO V_IRF
	VALUES (1397,
	1390);
INSERT INTO V_VAL
	VALUES (1398,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1350);
INSERT INTO V_UNY
	VALUES (1398,
	1397,
	'empty');
INSERT INTO V_VAL
	VALUES (1395,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1350);
INSERT INTO V_UNY
	VALUES (1395,
	1398,
	'not');
INSERT INTO V_VAR
	VALUES (1390,
	1350,
	'openAchievement',
	1,
	432);
INSERT INTO V_INT
	VALUES (1390,
	0,
	798);
INSERT INTO ACT_BLK
	VALUES (1394,
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
	1332,
	0);
INSERT INTO ACT_SMT
	VALUES (1399,
	1394,
	0,
	27,
	5,
	'Goal::evaluateCompletion line: 27');
INSERT INTO ACT_TFM
	VALUES (1399,
	941,
	1390,
	27,
	21,
	0,
	0);
INSERT INTO O_TFR
	VALUES (692,
	789,
	'nextGoal',
	'',
	204,
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
	1331);
INSERT INTO ACT_OPB
	VALUES (1400,
	692);
INSERT INTO ACT_ACT
	VALUES (1400,
	'class operation',
	0,
	1401,
	0,
	0,
	'Goal::nextGoal',
	0);
INSERT INTO ACT_BLK
	VALUES (1401,
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
	1400,
	0);
INSERT INTO ACT_SMT
	VALUES (1402,
	1401,
	1403,
	8,
	1,
	'Goal::nextGoal line: 8');
INSERT INTO ACT_FIO
	VALUES (1402,
	1404,
	1,
	'any',
	640,
	8,
	38);
INSERT INTO ACT_SMT
	VALUES (1403,
	1401,
	0,
	9,
	1,
	'Goal::nextGoal line: 9');
INSERT INTO ACT_IF
	VALUES (1403,
	1405,
	1406,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1407,
	0,
	0,
	9,
	16,
	22,
	0,
	0,
	0,
	0,
	432,
	1401);
INSERT INTO V_IRF
	VALUES (1407,
	1404);
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
	56,
	1401);
INSERT INTO V_UNY
	VALUES (1408,
	1407,
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
	56,
	1401);
INSERT INTO V_UNY
	VALUES (1406,
	1408,
	'not');
INSERT INTO V_VAR
	VALUES (1404,
	1401,
	'session',
	1,
	432);
INSERT INTO V_INT
	VALUES (1404,
	0,
	640);
INSERT INTO ACT_BLK
	VALUES (1405,
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
	1400,
	0);
INSERT INTO ACT_SMT
	VALUES (1409,
	1405,
	1410,
	10,
	3,
	'Goal::nextGoal line: 10');
INSERT INTO ACT_SEL
	VALUES (1409,
	1411,
	1,
	'one',
	1412);
INSERT INTO ACT_SR
	VALUES (1409);
INSERT INTO ACT_LNK
	VALUES (1413,
	'''is currently executing''',
	1409,
	793,
	0,
	2,
	789,
	10,
	39,
	10,
	44,
	10,
	48);
INSERT INTO ACT_SMT
	VALUES (1410,
	1405,
	0,
	11,
	3,
	'Goal::nextGoal line: 11');
INSERT INTO ACT_IF
	VALUES (1410,
	1414,
	1415,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1416,
	1405,
	0,
	13,
	3,
	'Goal::nextGoal line: 13');
INSERT INTO ACT_E
	VALUES (1416,
	1417,
	1410);
INSERT INTO V_VAL
	VALUES (1412,
	0,
	0,
	10,
	30,
	36,
	0,
	0,
	0,
	0,
	432,
	1405);
INSERT INTO V_IRF
	VALUES (1412,
	1404);
INSERT INTO V_VAL
	VALUES (1418,
	0,
	0,
	11,
	18,
	21,
	0,
	0,
	0,
	0,
	432,
	1405);
INSERT INTO V_IRF
	VALUES (1418,
	1411);
INSERT INTO V_VAL
	VALUES (1419,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1405);
INSERT INTO V_UNY
	VALUES (1419,
	1418,
	'empty');
INSERT INTO V_VAL
	VALUES (1415,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1405);
INSERT INTO V_UNY
	VALUES (1415,
	1419,
	'not');
INSERT INTO V_VAR
	VALUES (1411,
	1405,
	'goal',
	1,
	432);
INSERT INTO V_INT
	VALUES (1411,
	0,
	789);
INSERT INTO ACT_BLK
	VALUES (1414,
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
	1400,
	0);
INSERT INTO ACT_SMT
	VALUES (1420,
	1414,
	0,
	12,
	5,
	'Goal::nextGoal line: 12');
INSERT INTO E_ESS
	VALUES (1420,
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
	VALUES (1420);
INSERT INTO E_GSME
	VALUES (1420,
	1396);
INSERT INTO E_GEN
	VALUES (1420,
	1411);
INSERT INTO ACT_BLK
	VALUES (1417,
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
	1400,
	0);
INSERT INTO ACT_SMT
	VALUES (1421,
	1417,
	0,
	14,
	5,
	'Goal::nextGoal line: 14');
INSERT INTO ACT_TFM
	VALUES (1421,
	1163,
	0,
	14,
	11,
	14,
	5);
INSERT INTO V_VAL
	VALUES (1422,
	0,
	0,
	14,
	35,
	48,
	0,
	0,
	0,
	0,
	14,
	1417);
INSERT INTO V_SCV
	VALUES (1422,
	1423,
	14);
INSERT INTO V_PAR
	VALUES (1422,
	1421,
	0,
	'sequenceNumber',
	0,
	14,
	19);
INSERT INTO O_NBATTR
	VALUES (995,
	789);
INSERT INTO O_BATTR
	VALUES (995,
	789);
INSERT INTO O_ATTR
	VALUES (995,
	789,
	1231,
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
	994,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1231,
	789);
INSERT INTO O_BATTR
	VALUES (1231,
	789);
INSERT INTO O_ATTR
	VALUES (1231,
	789,
	1424,
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
	92,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1424,
	789);
INSERT INTO O_BATTR
	VALUES (1424,
	789);
INSERT INTO O_ATTR
	VALUES (1424,
	789,
	0,
	'ID',
	'An arbitrary identifier.',
	'',
	'ID',
	0,
	570,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1425,
	789);
INSERT INTO O_BATTR
	VALUES (1425,
	789);
INSERT INTO O_ATTR
	VALUES (1425,
	789,
	1197,
	'current_state',
	'',
	'',
	'current_state',
	0,
	416,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1197,
	789);
INSERT INTO O_BATTR
	VALUES (1197,
	789);
INSERT INTO O_ATTR
	VALUES (1197,
	789,
	995,
	'evaluationTimer',
	'Handle for the timer used for periodic evaluation of goal achievement.',
	'',
	'evaluationTimer',
	0,
	268,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	789);
INSERT INTO O_ID
	VALUES (1,
	789);
INSERT INTO O_ID
	VALUES (2,
	789);
INSERT INTO SM_ISM
	VALUES (1426,
	789);
INSERT INTO SM_SM
	VALUES (1426,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (1426);
INSERT INTO SM_LEVT
	VALUES (1396,
	1426,
	0);
INSERT INTO SM_SEVT
	VALUES (1396,
	1426,
	0);
INSERT INTO SM_EVT
	VALUES (1396,
	1426,
	0,
	1,
	'Completed',
	0,
	'',
	'Goal1',
	'Indicates that execution of this goal has been completed.  ');
INSERT INTO SM_LEVT
	VALUES (1192,
	1426,
	0);
INSERT INTO SM_SEVT
	VALUES (1192,
	1426,
	0);
INSERT INTO SM_EVT
	VALUES (1192,
	1426,
	0,
	2,
	'Evaluate',
	0,
	'',
	'Goal2',
	'Indicates that this goal should be evaluated for completeness and achievement.');
INSERT INTO SM_LEVT
	VALUES (1427,
	1426,
	0);
INSERT INTO SM_SEVT
	VALUES (1427,
	1426,
	0);
INSERT INTO SM_EVT
	VALUES (1427,
	1426,
	0,
	3,
	'Pause',
	0,
	'',
	'Goal3',
	'');
INSERT INTO SM_STATE
	VALUES (1428,
	1426,
	0,
	'Executing',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (1428,
	1396,
	1426,
	0);
INSERT INTO SM_SEME
	VALUES (1428,
	1192,
	1426,
	0);
INSERT INTO SM_SEME
	VALUES (1428,
	1427,
	1426,
	0);
INSERT INTO SM_MOAH
	VALUES (1429,
	1426,
	1428);
INSERT INTO SM_AH
	VALUES (1429,
	1426);
INSERT INTO SM_ACT
	VALUES (1429,
	1426,
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
	VALUES (1430,
	1426,
	1429);
INSERT INTO ACT_ACT
	VALUES (1430,
	'state',
	0,
	1431,
	0,
	0,
	'Goal::Executing',
	0);
INSERT INTO ACT_BLK
	VALUES (1431,
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
	1430,
	0);
INSERT INTO ACT_SMT
	VALUES (1432,
	1431,
	1433,
	2,
	1,
	'Goal::Executing line: 2');
INSERT INTO ACT_AI
	VALUES (1432,
	1434,
	1435,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1433,
	1431,
	1436,
	12,
	1,
	'Goal::Executing line: 12');
INSERT INTO ACT_IF
	VALUES (1433,
	1437,
	1438,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1439,
	1431,
	0,
	19,
	1,
	'Goal::Executing line: 19');
INSERT INTO ACT_EL
	VALUES (1439,
	1440,
	1441,
	1433);
INSERT INTO ACT_SMT
	VALUES (1436,
	1431,
	1442,
	26,
	1,
	'Goal::Executing line: 26');
INSERT INTO ACT_AI
	VALUES (1436,
	1443,
	1444,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1442,
	1431,
	0,
	30,
	1,
	'Goal::Executing line: 30');
INSERT INTO ACT_TFM
	VALUES (1442,
	1331,
	1445,
	30,
	6,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1435,
	1,
	1,
	2,
	1,
	11,
	0,
	0,
	0,
	0,
	994,
	1431);
INSERT INTO V_TVL
	VALUES (1435,
	1446);
INSERT INTO V_VAL
	VALUES (1434,
	0,
	0,
	2,
	20,
	-1,
	0,
	0,
	0,
	0,
	994,
	1431);
INSERT INTO V_TRV
	VALUES (1434,
	1244,
	1445,
	1,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1447,
	0,
	0,
	12,
	7,
	10,
	0,
	0,
	0,
	0,
	432,
	1431);
INSERT INTO V_IRF
	VALUES (1447,
	1445);
INSERT INTO V_VAL
	VALUES (1448,
	0,
	0,
	12,
	12,
	22,
	0,
	0,
	0,
	0,
	994,
	1431);
INSERT INTO V_AVL
	VALUES (1448,
	1447,
	789,
	995);
INSERT INTO V_VAL
	VALUES (1449,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1431);
INSERT INTO V_BIN
	VALUES (1449,
	1450,
	1448,
	'!=');
INSERT INTO V_VAL
	VALUES (1450,
	0,
	0,
	12,
	44,
	52,
	0,
	0,
	0,
	0,
	994,
	1431);
INSERT INTO V_LEN
	VALUES (1450,
	1289,
	12,
	27);
INSERT INTO V_VAL
	VALUES (1451,
	0,
	0,
	12,
	60,
	70,
	0,
	0,
	0,
	0,
	994,
	1431);
INSERT INTO V_TVL
	VALUES (1451,
	1446);
INSERT INTO V_VAL
	VALUES (1452,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1431);
INSERT INTO V_BIN
	VALUES (1452,
	1453,
	1451,
	'==');
INSERT INTO V_VAL
	VALUES (1453,
	0,
	0,
	12,
	92,
	100,
	0,
	0,
	0,
	0,
	994,
	1431);
INSERT INTO V_LEN
	VALUES (1453,
	1289,
	12,
	75);
INSERT INTO V_VAL
	VALUES (1438,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1431);
INSERT INTO V_BIN
	VALUES (1438,
	1452,
	1449,
	'and');
INSERT INTO V_VAL
	VALUES (1454,
	0,
	0,
	19,
	9,
	12,
	0,
	0,
	0,
	0,
	432,
	1431);
INSERT INTO V_IRF
	VALUES (1454,
	1445);
INSERT INTO V_VAL
	VALUES (1455,
	0,
	0,
	19,
	14,
	24,
	0,
	0,
	0,
	0,
	994,
	1431);
INSERT INTO V_AVL
	VALUES (1455,
	1454,
	789,
	995);
INSERT INTO V_VAL
	VALUES (1456,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1431);
INSERT INTO V_BIN
	VALUES (1456,
	1457,
	1455,
	'==');
INSERT INTO V_VAL
	VALUES (1457,
	0,
	0,
	19,
	46,
	54,
	0,
	0,
	0,
	0,
	994,
	1431);
INSERT INTO V_LEN
	VALUES (1457,
	1289,
	19,
	29);
INSERT INTO V_VAL
	VALUES (1458,
	0,
	0,
	19,
	62,
	72,
	0,
	0,
	0,
	0,
	994,
	1431);
INSERT INTO V_TVL
	VALUES (1458,
	1446);
INSERT INTO V_VAL
	VALUES (1459,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1431);
INSERT INTO V_BIN
	VALUES (1459,
	1460,
	1458,
	'!=');
INSERT INTO V_VAL
	VALUES (1460,
	0,
	0,
	19,
	94,
	102,
	0,
	0,
	0,
	0,
	994,
	1431);
INSERT INTO V_LEN
	VALUES (1460,
	1289,
	19,
	77);
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
	56,
	1431);
INSERT INTO V_BIN
	VALUES (1441,
	1459,
	1456,
	'and');
INSERT INTO V_VAL
	VALUES (1461,
	1,
	0,
	26,
	1,
	4,
	0,
	0,
	0,
	0,
	432,
	1431);
INSERT INTO V_IRF
	VALUES (1461,
	1445);
INSERT INTO V_VAL
	VALUES (1444,
	1,
	0,
	26,
	6,
	16,
	0,
	0,
	0,
	0,
	994,
	1431);
INSERT INTO V_AVL
	VALUES (1444,
	1461,
	789,
	995);
INSERT INTO V_VAL
	VALUES (1443,
	0,
	0,
	26,
	20,
	30,
	0,
	0,
	0,
	0,
	994,
	1431);
INSERT INTO V_TVL
	VALUES (1443,
	1446);
INSERT INTO V_VAR
	VALUES (1446,
	1431,
	'disposition',
	1,
	994);
INSERT INTO V_TRN
	VALUES (1446,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1445,
	1431,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (1445,
	0,
	789);
INSERT INTO ACT_BLK
	VALUES (1437,
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
	1430,
	0);
INSERT INTO ACT_SMT
	VALUES (1462,
	1437,
	1463,
	14,
	3,
	'Goal::Executing line: 14');
INSERT INTO ACT_CR
	VALUES (1462,
	1464,
	1,
	798,
	14,
	41);
INSERT INTO ACT_SMT
	VALUES (1463,
	1437,
	1465,
	15,
	3,
	'Goal::Executing line: 15');
INSERT INTO ACT_REL
	VALUES (1463,
	1445,
	1464,
	'''has open''',
	803,
	15,
	37,
	15,
	41);
INSERT INTO ACT_SMT
	VALUES (1465,
	1437,
	1466,
	16,
	3,
	'Goal::Executing line: 16');
INSERT INTO ACT_SEL
	VALUES (1465,
	1467,
	1,
	'one',
	1468);
INSERT INTO ACT_SR
	VALUES (1465);
INSERT INTO ACT_LNK
	VALUES (1469,
	'''is currently executing within''',
	1465,
	793,
	1470,
	2,
	640,
	17,
	11,
	17,
	26,
	17,
	30);
INSERT INTO ACT_LNK
	VALUES (1470,
	'''is timed by''',
	0,
	777,
	0,
	2,
	656,
	17,
	64,
	17,
	77,
	17,
	80);
INSERT INTO ACT_SMT
	VALUES (1466,
	1437,
	0,
	18,
	3,
	'Goal::Executing line: 18');
INSERT INTO ACT_AI
	VALUES (1466,
	1471,
	1472,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1468,
	0,
	0,
	17,
	5,
	8,
	0,
	0,
	0,
	0,
	432,
	1437);
INSERT INTO V_IRF
	VALUES (1468,
	1445);
INSERT INTO V_VAL
	VALUES (1473,
	1,
	0,
	18,
	3,
	13,
	0,
	0,
	0,
	0,
	432,
	1437);
INSERT INTO V_IRF
	VALUES (1473,
	1464);
INSERT INTO V_VAL
	VALUES (1472,
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
	1437);
INSERT INTO V_AVL
	VALUES (1472,
	1473,
	798,
	963);
INSERT INTO V_VAL
	VALUES (1474,
	0,
	0,
	18,
	27,
	38,
	0,
	0,
	0,
	0,
	432,
	1437);
INSERT INTO V_IRF
	VALUES (1474,
	1467);
INSERT INTO V_VAL
	VALUES (1471,
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
	1437);
INSERT INTO V_AVL
	VALUES (1471,
	1474,
	656,
	962);
INSERT INTO V_VAR
	VALUES (1464,
	1437,
	'achievement',
	1,
	432);
INSERT INTO V_INT
	VALUES (1464,
	0,
	798);
INSERT INTO V_VAR
	VALUES (1467,
	1437,
	'workoutTimer',
	1,
	432);
INSERT INTO V_INT
	VALUES (1467,
	0,
	656);
INSERT INTO ACT_BLK
	VALUES (1440,
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
	1430,
	0);
INSERT INTO ACT_SMT
	VALUES (1475,
	1440,
	1476,
	21,
	3,
	'Goal::Executing line: 21');
INSERT INTO ACT_SEL
	VALUES (1475,
	1477,
	1,
	'one',
	1478);
INSERT INTO ACT_SR
	VALUES (1475);
INSERT INTO ACT_LNK
	VALUES (1479,
	'''has open''',
	1475,
	803,
	0,
	2,
	798,
	21,
	43,
	21,
	55,
	21,
	59);
INSERT INTO ACT_SMT
	VALUES (1476,
	1440,
	0,
	22,
	3,
	'Goal::Executing line: 22');
INSERT INTO ACT_TFM
	VALUES (1476,
	941,
	1477,
	22,
	15,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1478,
	0,
	0,
	21,
	37,
	40,
	0,
	0,
	0,
	0,
	432,
	1440);
INSERT INTO V_IRF
	VALUES (1478,
	1445);
INSERT INTO V_VAR
	VALUES (1477,
	1440,
	'achievement',
	1,
	432);
INSERT INTO V_INT
	VALUES (1477,
	0,
	798);
INSERT INTO SM_STATE
	VALUES (1480,
	1426,
	0,
	'Completed',
	2,
	0);
INSERT INTO SM_EIGN
	VALUES (1480,
	1396,
	1426,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1480,
	1396,
	1426,
	0);
INSERT INTO SM_EIGN
	VALUES (1480,
	1192,
	1426,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1480,
	1192,
	1426,
	0);
INSERT INTO SM_CH
	VALUES (1480,
	1427,
	1426,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1480,
	1427,
	1426,
	0);
INSERT INTO SM_MOAH
	VALUES (1481,
	1426,
	1480);
INSERT INTO SM_AH
	VALUES (1481,
	1426);
INSERT INTO SM_ACT
	VALUES (1481,
	1426,
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
	VALUES (1482,
	1426,
	1481);
INSERT INTO ACT_ACT
	VALUES (1482,
	'state',
	0,
	1483,
	0,
	0,
	'Goal::Completed',
	0);
INSERT INTO ACT_BLK
	VALUES (1483,
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
	1482,
	0);
INSERT INTO ACT_SMT
	VALUES (1484,
	1483,
	1485,
	5,
	1,
	'Goal::Completed line: 5');
INSERT INTO ACT_AI
	VALUES (1484,
	1486,
	1487,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1485,
	1483,
	1488,
	8,
	1,
	'Goal::Completed line: 8');
INSERT INTO ACT_SEL
	VALUES (1485,
	1489,
	1,
	'one',
	1490);
INSERT INTO ACT_SR
	VALUES (1485);
INSERT INTO ACT_LNK
	VALUES (1491,
	'''has open''',
	1485,
	803,
	0,
	2,
	798,
	8,
	45,
	8,
	57,
	8,
	61);
INSERT INTO ACT_SMT
	VALUES (1488,
	1483,
	1492,
	9,
	1,
	'Goal::Completed line: 9');
INSERT INTO ACT_IF
	VALUES (1488,
	1493,
	1494,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1492,
	1483,
	1495,
	14,
	1,
	'Goal::Completed line: 14');
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
	'''is currently executing within''',
	1492,
	793,
	0,
	2,
	640,
	14,
	37,
	14,
	52,
	14,
	56);
INSERT INTO ACT_SMT
	VALUES (1495,
	1483,
	1499,
	15,
	1,
	'Goal::Completed line: 15');
INSERT INTO ACT_REL
	VALUES (1495,
	1500,
	1496,
	'''was executed within''',
	800,
	15,
	31,
	15,
	35);
INSERT INTO ACT_SMT
	VALUES (1499,
	1483,
	1501,
	18,
	1,
	'Goal::Completed line: 18');
INSERT INTO ACT_UNR
	VALUES (1499,
	1500,
	1496,
	'''is currently executing within''',
	793,
	18,
	35,
	18,
	39);
INSERT INTO ACT_SMT
	VALUES (1501,
	1483,
	1502,
	21,
	1,
	'Goal::Completed line: 21');
INSERT INTO ACT_SEL
	VALUES (1501,
	1503,
	1,
	'one',
	1504);
INSERT INTO ACT_SR
	VALUES (1501);
INSERT INTO ACT_LNK
	VALUES (1505,
	'''specified by''',
	1501,
	787,
	0,
	2,
	717,
	21,
	45,
	21,
	54,
	21,
	57);
INSERT INTO ACT_SMT
	VALUES (1502,
	1483,
	1506,
	23,
	1,
	'Goal::Completed line: 23');
INSERT INTO ACT_SEL
	VALUES (1502,
	1507,
	1,
	'any',
	1508);
INSERT INTO ACT_SRW
	VALUES (1502,
	1509);
INSERT INTO ACT_LNK
	VALUES (1510,
	'''includes''',
	1502,
	736,
	0,
	3,
	717,
	23,
	45,
	23,
	54,
	23,
	58);
INSERT INTO ACT_SMT
	VALUES (1506,
	1483,
	0,
	26,
	1,
	'Goal::Completed line: 26');
INSERT INTO ACT_IF
	VALUES (1506,
	1511,
	1512,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1487,
	1,
	1,
	5,
	1,
	15,
	0,
	0,
	0,
	0,
	56,
	1483);
INSERT INTO V_TVL
	VALUES (1487,
	1513);
INSERT INTO V_VAL
	VALUES (1486,
	0,
	0,
	5,
	24,
	-1,
	5,
	38,
	0,
	0,
	56,
	1483);
INSERT INTO V_BRV
	VALUES (1486,
	901,
	1,
	5,
	19);
INSERT INTO V_VAL
	VALUES (1514,
	0,
	0,
	5,
	54,
	57,
	0,
	0,
	0,
	0,
	432,
	1483);
INSERT INTO V_IRF
	VALUES (1514,
	1500);
INSERT INTO V_VAL
	VALUES (1515,
	0,
	0,
	5,
	59,
	73,
	0,
	0,
	0,
	0,
	268,
	1483);
INSERT INTO V_AVL
	VALUES (1515,
	1514,
	789,
	1197);
INSERT INTO V_PAR
	VALUES (1515,
	0,
	1486,
	'timer_inst_ref',
	0,
	5,
	38);
INSERT INTO V_VAL
	VALUES (1490,
	0,
	0,
	8,
	39,
	42,
	0,
	0,
	0,
	0,
	432,
	1483);
INSERT INTO V_IRF
	VALUES (1490,
	1500);
INSERT INTO V_VAL
	VALUES (1516,
	0,
	0,
	9,
	16,
	30,
	0,
	0,
	0,
	0,
	432,
	1483);
INSERT INTO V_IRF
	VALUES (1516,
	1489);
INSERT INTO V_VAL
	VALUES (1517,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1483);
INSERT INTO V_UNY
	VALUES (1517,
	1516,
	'empty');
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
	56,
	1483);
INSERT INTO V_UNY
	VALUES (1494,
	1517,
	'not');
INSERT INTO V_VAL
	VALUES (1497,
	0,
	0,
	14,
	31,
	34,
	0,
	0,
	0,
	0,
	432,
	1483);
INSERT INTO V_IRF
	VALUES (1497,
	1500);
INSERT INTO V_VAL
	VALUES (1504,
	0,
	0,
	21,
	39,
	42,
	0,
	0,
	0,
	0,
	432,
	1483);
INSERT INTO V_IRF
	VALUES (1504,
	1500);
INSERT INTO V_VAL
	VALUES (1508,
	0,
	0,
	23,
	36,
	42,
	0,
	0,
	0,
	0,
	432,
	1483);
INSERT INTO V_IRF
	VALUES (1508,
	1496);
INSERT INTO V_VAL
	VALUES (1518,
	0,
	0,
	24,
	11,
	-1,
	0,
	0,
	0,
	0,
	432,
	1483);
INSERT INTO V_SLR
	VALUES (1518,
	0,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1519,
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
	1483);
INSERT INTO V_AVL
	VALUES (1519,
	1518,
	717,
	738);
INSERT INTO V_VAL
	VALUES (1509,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1483);
INSERT INTO V_BIN
	VALUES (1509,
	1520,
	1519,
	'==');
INSERT INTO V_VAL
	VALUES (1521,
	0,
	0,
	24,
	39,
	53,
	0,
	0,
	0,
	0,
	432,
	1483);
INSERT INTO V_IRF
	VALUES (1521,
	1503);
INSERT INTO V_VAL
	VALUES (1522,
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
	1483);
INSERT INTO V_AVL
	VALUES (1522,
	1521,
	717,
	738);
INSERT INTO V_VAL
	VALUES (1520,
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
	1483);
INSERT INTO V_BIN
	VALUES (1520,
	1523,
	1522,
	'+');
INSERT INTO V_VAL
	VALUES (1523,
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
	1483);
INSERT INTO V_LIN
	VALUES (1523,
	'1');
INSERT INTO V_VAL
	VALUES (1524,
	0,
	0,
	26,
	16,
	27,
	0,
	0,
	0,
	0,
	432,
	1483);
INSERT INTO V_IRF
	VALUES (1524,
	1507);
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
	56,
	1483);
INSERT INTO V_UNY
	VALUES (1525,
	1524,
	'empty');
INSERT INTO V_VAL
	VALUES (1512,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1483);
INSERT INTO V_UNY
	VALUES (1512,
	1525,
	'not');
INSERT INTO V_VAR
	VALUES (1513,
	1483,
	'cancelSucceeded',
	1,
	56);
INSERT INTO V_TRN
	VALUES (1513,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1500,
	1483,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (1500,
	0,
	789);
INSERT INTO V_VAR
	VALUES (1489,
	1483,
	'openAchievement',
	1,
	432);
INSERT INTO V_INT
	VALUES (1489,
	0,
	798);
INSERT INTO V_VAR
	VALUES (1496,
	1483,
	'session',
	1,
	432);
INSERT INTO V_INT
	VALUES (1496,
	0,
	640);
INSERT INTO V_VAR
	VALUES (1503,
	1483,
	'currentGoalSpec',
	1,
	432);
INSERT INTO V_INT
	VALUES (1503,
	0,
	717);
INSERT INTO V_VAR
	VALUES (1507,
	1483,
	'nextGoalSpec',
	1,
	432);
INSERT INTO V_INT
	VALUES (1507,
	0,
	717);
INSERT INTO ACT_BLK
	VALUES (1493,
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
	1482,
	0);
INSERT INTO ACT_SMT
	VALUES (1526,
	1493,
	0,
	10,
	3,
	'Goal::Completed line: 10');
INSERT INTO ACT_TFM
	VALUES (1526,
	941,
	1489,
	10,
	19,
	0,
	0);
INSERT INTO ACT_BLK
	VALUES (1511,
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
	1482,
	0);
INSERT INTO ACT_SMT
	VALUES (1527,
	1511,
	0,
	27,
	3,
	'Goal::Completed line: 27');
INSERT INTO ACT_TFM
	VALUES (1527,
	1163,
	0,
	27,
	9,
	27,
	3);
INSERT INTO V_VAL
	VALUES (1528,
	0,
	0,
	27,
	33,
	44,
	0,
	0,
	0,
	0,
	432,
	1511);
INSERT INTO V_IRF
	VALUES (1528,
	1507);
INSERT INTO V_VAL
	VALUES (1529,
	0,
	0,
	27,
	46,
	59,
	0,
	0,
	0,
	0,
	14,
	1511);
INSERT INTO V_AVL
	VALUES (1529,
	1528,
	717,
	738);
INSERT INTO V_PAR
	VALUES (1529,
	1527,
	0,
	'sequenceNumber',
	0,
	27,
	17);
INSERT INTO SM_STATE
	VALUES (1530,
	1426,
	0,
	'Paused',
	3,
	0);
INSERT INTO SM_SEME
	VALUES (1530,
	1396,
	1426,
	0);
INSERT INTO SM_SEME
	VALUES (1530,
	1192,
	1426,
	0);
INSERT INTO SM_CH
	VALUES (1530,
	1427,
	1426,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1530,
	1427,
	1426,
	0);
INSERT INTO SM_MOAH
	VALUES (1531,
	1426,
	1530);
INSERT INTO SM_AH
	VALUES (1531,
	1426);
INSERT INTO SM_ACT
	VALUES (1531,
	1426,
	1,
	'// Deactivate evaluation timer, ignoring the return code because this 
//   state model ignores any latent timer events.
cancelSucceeded = TIM::timer_cancel( timer_inst_ref: self.evaluationTimer );',
	'');
INSERT INTO ACT_SAB
	VALUES (1532,
	1426,
	1531);
INSERT INTO ACT_ACT
	VALUES (1532,
	'state',
	0,
	1533,
	0,
	0,
	'Goal::Paused',
	0);
INSERT INTO ACT_BLK
	VALUES (1533,
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
	1532,
	0);
INSERT INTO ACT_SMT
	VALUES (1534,
	1533,
	0,
	3,
	1,
	'Goal::Paused line: 3');
INSERT INTO ACT_AI
	VALUES (1534,
	1535,
	1536,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1536,
	1,
	1,
	3,
	1,
	15,
	0,
	0,
	0,
	0,
	56,
	1533);
INSERT INTO V_TVL
	VALUES (1536,
	1537);
INSERT INTO V_VAL
	VALUES (1535,
	0,
	0,
	3,
	24,
	-1,
	3,
	38,
	0,
	0,
	56,
	1533);
INSERT INTO V_BRV
	VALUES (1535,
	901,
	1,
	3,
	19);
INSERT INTO V_VAL
	VALUES (1538,
	0,
	0,
	3,
	54,
	57,
	0,
	0,
	0,
	0,
	432,
	1533);
INSERT INTO V_IRF
	VALUES (1538,
	1539);
INSERT INTO V_VAL
	VALUES (1540,
	0,
	0,
	3,
	59,
	73,
	0,
	0,
	0,
	0,
	268,
	1533);
INSERT INTO V_AVL
	VALUES (1540,
	1538,
	789,
	1197);
INSERT INTO V_PAR
	VALUES (1540,
	0,
	1535,
	'timer_inst_ref',
	0,
	3,
	38);
INSERT INTO V_VAR
	VALUES (1537,
	1533,
	'cancelSucceeded',
	1,
	56);
INSERT INTO V_TRN
	VALUES (1537,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1539,
	1533,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (1539,
	0,
	789);
INSERT INTO SM_NSTXN
	VALUES (1541,
	1426,
	1428,
	1396,
	0);
INSERT INTO SM_TAH
	VALUES (1542,
	1426,
	1541);
INSERT INTO SM_AH
	VALUES (1542,
	1426);
INSERT INTO SM_ACT
	VALUES (1542,
	1426,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1543,
	1426,
	1542);
INSERT INTO ACT_ACT
	VALUES (1543,
	'transition',
	0,
	1544,
	0,
	0,
	'Goal1: Completed',
	0);
INSERT INTO ACT_BLK
	VALUES (1544,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1543,
	0);
INSERT INTO SM_TXN
	VALUES (1541,
	1426,
	1480,
	0);
INSERT INTO SM_NSTXN
	VALUES (1545,
	1426,
	1428,
	1192,
	0);
INSERT INTO SM_TAH
	VALUES (1546,
	1426,
	1545);
INSERT INTO SM_AH
	VALUES (1546,
	1426);
INSERT INTO SM_ACT
	VALUES (1546,
	1426,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1547,
	1426,
	1546);
INSERT INTO ACT_ACT
	VALUES (1547,
	'transition',
	0,
	1548,
	0,
	0,
	'Goal2: Evaluate',
	0);
INSERT INTO ACT_BLK
	VALUES (1548,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1547,
	0);
INSERT INTO SM_TXN
	VALUES (1545,
	1426,
	1428,
	0);
INSERT INTO SM_NSTXN
	VALUES (1549,
	1426,
	1428,
	1427,
	0);
INSERT INTO SM_TAH
	VALUES (1550,
	1426,
	1549);
INSERT INTO SM_AH
	VALUES (1550,
	1426);
INSERT INTO SM_ACT
	VALUES (1550,
	1426,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1551,
	1426,
	1550);
INSERT INTO ACT_ACT
	VALUES (1551,
	'transition',
	0,
	1552,
	0,
	0,
	'Goal3: Pause',
	0);
INSERT INTO ACT_BLK
	VALUES (1552,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1551,
	0);
INSERT INTO SM_TXN
	VALUES (1549,
	1426,
	1530,
	0);
INSERT INTO SM_NSTXN
	VALUES (1553,
	1426,
	1530,
	1192,
	0);
INSERT INTO SM_TAH
	VALUES (1554,
	1426,
	1553);
INSERT INTO SM_AH
	VALUES (1554,
	1426);
INSERT INTO SM_ACT
	VALUES (1554,
	1426,
	1,
	'// Start a timer that periodically causes evaluation of goal achievement.
create event instance evaluateEvent of Goal2:Evaluate to self;
self.evaluationTimer = TIM::timer_start_recurring( event_inst: evaluateEvent, microseconds: evaluationPeriod );',
	'');
INSERT INTO ACT_TAB
	VALUES (1555,
	1426,
	1554);
INSERT INTO ACT_ACT
	VALUES (1555,
	'transition',
	0,
	1556,
	0,
	0,
	'Goal2: Evaluate',
	0);
INSERT INTO ACT_BLK
	VALUES (1556,
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
	1555,
	0);
INSERT INTO ACT_SMT
	VALUES (1557,
	1556,
	1558,
	2,
	1,
	'Goal2: Evaluate line: 2');
INSERT INTO E_ESS
	VALUES (1557,
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
	VALUES (1557,
	1,
	1559);
INSERT INTO E_CSME
	VALUES (1557,
	1192);
INSERT INTO E_CEI
	VALUES (1557,
	1560);
INSERT INTO ACT_SMT
	VALUES (1558,
	1556,
	0,
	3,
	1,
	'Goal2: Evaluate line: 3');
INSERT INTO ACT_AI
	VALUES (1558,
	1561,
	1562,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1563,
	1,
	0,
	3,
	1,
	4,
	0,
	0,
	0,
	0,
	432,
	1556);
INSERT INTO V_IRF
	VALUES (1563,
	1560);
INSERT INTO V_VAL
	VALUES (1562,
	1,
	0,
	3,
	6,
	20,
	0,
	0,
	0,
	0,
	268,
	1556);
INSERT INTO V_AVL
	VALUES (1562,
	1563,
	789,
	1197);
INSERT INTO V_VAL
	VALUES (1561,
	0,
	0,
	3,
	29,
	-1,
	3,
	52,
	3,
	79,
	268,
	1556);
INSERT INTO V_BRV
	VALUES (1561,
	882,
	1,
	3,
	24);
INSERT INTO V_VAL
	VALUES (1564,
	0,
	0,
	3,
	64,
	76,
	0,
	0,
	0,
	0,
	271,
	1556);
INSERT INTO V_TVL
	VALUES (1564,
	1559);
INSERT INTO V_PAR
	VALUES (1564,
	0,
	1561,
	'event_inst',
	1565,
	3,
	52);
INSERT INTO V_VAL
	VALUES (1565,
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
	1556);
INSERT INTO V_SCV
	VALUES (1565,
	1200,
	14);
INSERT INTO V_PAR
	VALUES (1565,
	0,
	1561,
	'microseconds',
	0,
	3,
	79);
INSERT INTO V_VAR
	VALUES (1559,
	1556,
	'evaluateEvent',
	1,
	271);
INSERT INTO V_TRN
	VALUES (1559,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1560,
	1556,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (1560,
	0,
	789);
INSERT INTO SM_TXN
	VALUES (1553,
	1426,
	1428,
	0);
INSERT INTO SM_NSTXN
	VALUES (1566,
	1426,
	1530,
	1396,
	0);
INSERT INTO SM_TAH
	VALUES (1567,
	1426,
	1566);
INSERT INTO SM_AH
	VALUES (1567,
	1426);
INSERT INTO SM_ACT
	VALUES (1567,
	1426,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (1568,
	1426,
	1567);
INSERT INTO ACT_ACT
	VALUES (1568,
	'transition',
	0,
	1569,
	0,
	0,
	'Goal1: Completed',
	0);
INSERT INTO ACT_BLK
	VALUES (1569,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1568,
	0);
INSERT INTO SM_TXN
	VALUES (1566,
	1426,
	1480,
	0);
INSERT INTO PE_PE
	VALUES (717,
	1,
	759,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (717,
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
	VALUES (741,
	717);
INSERT INTO O_BATTR
	VALUES (741,
	717);
INSERT INTO O_ATTR
	VALUES (741,
	717,
	738,
	'minimum',
	'The minimum value for the quantity associated with the goal.
For example, a minimum heart rate to be maintained.
The units (e.g., beats per minute or minutes per km) for this
attribute are determined by another attribute indicating the 
type of criteria for this goal.',
	'',
	'minimum',
	0,
	92,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (744,
	717);
INSERT INTO O_BATTR
	VALUES (744,
	717);
INSERT INTO O_ATTR
	VALUES (744,
	717,
	741,
	'maximum',
	'The maximum value for the quantity associated with the goal.
For example, a maximum pace to be maintained.
The units (e.g., beats per minute or minutes per km) for this
attribute are determined by another attribute indicating the 
type of criteria for this goal.',
	'',
	'maximum',
	0,
	92,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (747,
	717);
INSERT INTO O_BATTR
	VALUES (747,
	717);
INSERT INTO O_ATTR
	VALUES (747,
	717,
	744,
	'span',
	'The span of the goal.  For example, a time-based goal specifies a span
as a duration or length of time, while a distance-based goal uses specifies
a distance.  The units for this attribute (e.g., seconds or km) are specified 
by another attribute indicating the type of span.
',
	'',
	'span',
	0,
	92,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (750,
	717);
INSERT INTO O_BATTR
	VALUES (750,
	717);
INSERT INTO O_ATTR
	VALUES (750,
	717,
	747,
	'criteriaType',
	'See data type description.',
	'',
	'criteriaType',
	0,
	376,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (753,
	717);
INSERT INTO O_BATTR
	VALUES (753,
	717);
INSERT INTO O_ATTR
	VALUES (753,
	717,
	750,
	'spanType',
	'See data type description.',
	'',
	'spanType',
	0,
	379,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (738,
	717);
INSERT INTO O_BATTR
	VALUES (738,
	717);
INSERT INTO O_ATTR
	VALUES (738,
	717,
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
	717);
INSERT INTO O_OIDA
	VALUES (738,
	717,
	0,
	'sequenceNumber');
INSERT INTO O_ID
	VALUES (1,
	717);
INSERT INTO O_ID
	VALUES (2,
	717);
INSERT INTO PE_PE
	VALUES (784,
	1,
	759,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (784,
	'HeartRateSample',
	5,
	'HeartRateSample',
	'Each instance represents a single heart-rate sample.',
	0);
INSERT INTO O_NBATTR
	VALUES (1570,
	784);
INSERT INTO O_BATTR
	VALUES (1570,
	784);
INSERT INTO O_ATTR
	VALUES (1570,
	784,
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
	VALUES (1571,
	784);
INSERT INTO O_BATTR
	VALUES (1571,
	784);
INSERT INTO O_ATTR
	VALUES (1571,
	784,
	1570,
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
	784);
INSERT INTO O_ID
	VALUES (1,
	784);
INSERT INTO O_ID
	VALUES (2,
	784);
INSERT INTO PE_PE
	VALUES (772,
	1,
	759,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (772,
	'LapMarker',
	4,
	'LapMarker',
	'Each instance represents a single lap marker.',
	0);
INSERT INTO O_NBATTR
	VALUES (1572,
	772);
INSERT INTO O_BATTR
	VALUES (1572,
	772);
INSERT INTO O_ATTR
	VALUES (1572,
	772,
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
	772);
INSERT INTO O_ID
	VALUES (1,
	772);
INSERT INTO O_ID
	VALUES (2,
	772);
INSERT INTO PE_PE
	VALUES (761,
	1,
	759,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (761,
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
	VALUES (1573,
	761,
	'addTrackPoint',
	'',
	204,
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
	VALUES (1574,
	1573);
INSERT INTO ACT_ACT
	VALUES (1574,
	'operation',
	0,
	1575,
	0,
	0,
	'TrackLog::addTrackPoint',
	0);
INSERT INTO ACT_BLK
	VALUES (1575,
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
	1574,
	0);
INSERT INTO ACT_SMT
	VALUES (1576,
	1575,
	1577,
	5,
	1,
	'TrackLog::addTrackPoint line: 5');
INSERT INTO ACT_CR
	VALUES (1576,
	1578,
	1,
	763,
	5,
	38);
INSERT INTO ACT_SMT
	VALUES (1577,
	1575,
	1579,
	6,
	1,
	'TrackLog::addTrackPoint line: 6');
INSERT INTO ACT_SEL
	VALUES (1577,
	1580,
	1,
	'one',
	1581);
INSERT INTO ACT_SR
	VALUES (1577);
INSERT INTO ACT_LNK
	VALUES (1582,
	'''represents path for''',
	1577,
	780,
	1583,
	2,
	640,
	7,
	9,
	7,
	24,
	7,
	27);
INSERT INTO ACT_LNK
	VALUES (1583,
	'''is timed by''',
	0,
	777,
	0,
	2,
	656,
	7,
	51,
	7,
	64,
	7,
	67);
INSERT INTO ACT_SMT
	VALUES (1579,
	1575,
	1584,
	8,
	1,
	'TrackLog::addTrackPoint line: 8');
INSERT INTO ACT_AI
	VALUES (1579,
	1585,
	1586,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1584,
	1575,
	1587,
	9,
	1,
	'TrackLog::addTrackPoint line: 9');
INSERT INTO ACT_IOP
	VALUES (1584,
	9,
	16,
	9,
	6,
	0,
	588,
	0);
INSERT INTO ACT_SMT
	VALUES (1587,
	1575,
	1588,
	12,
	1,
	'TrackLog::addTrackPoint line: 12');
INSERT INTO ACT_SEL
	VALUES (1587,
	1589,
	1,
	'one',
	1590);
INSERT INTO ACT_SR
	VALUES (1587);
INSERT INTO ACT_LNK
	VALUES (1591,
	'',
	1587,
	760,
	0,
	2,
	763,
	12,
	40,
	12,
	51,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1588,
	1575,
	1592,
	13,
	1,
	'TrackLog::addTrackPoint line: 13');
INSERT INTO ACT_SEL
	VALUES (1588,
	1593,
	1,
	'one',
	1594);
INSERT INTO ACT_SR
	VALUES (1588);
INSERT INTO ACT_LNK
	VALUES (1595,
	'',
	1588,
	768,
	0,
	2,
	763,
	13,
	39,
	13,
	50,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1592,
	1575,
	1596,
	16,
	1,
	'TrackLog::addTrackPoint line: 16');
INSERT INTO ACT_AI
	VALUES (1592,
	1597,
	1598,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1596,
	1575,
	1599,
	17,
	1,
	'TrackLog::addTrackPoint line: 17');
INSERT INTO ACT_AI
	VALUES (1596,
	1600,
	1601,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1599,
	1575,
	1602,
	18,
	1,
	'TrackLog::addTrackPoint line: 18');
INSERT INTO ACT_AI
	VALUES (1599,
	1603,
	1604,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1602,
	1575,
	1605,
	19,
	1,
	'TrackLog::addTrackPoint line: 19');
INSERT INTO ACT_IF
	VALUES (1602,
	1606,
	1607,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1608,
	1575,
	0,
	23,
	1,
	'TrackLog::addTrackPoint line: 23');
INSERT INTO ACT_E
	VALUES (1608,
	1609,
	1602);
INSERT INTO ACT_SMT
	VALUES (1605,
	1575,
	1610,
	33,
	1,
	'TrackLog::addTrackPoint line: 33');
INSERT INTO ACT_AI
	VALUES (1605,
	1611,
	1612,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1610,
	1575,
	1613,
	34,
	1,
	'TrackLog::addTrackPoint line: 34');
INSERT INTO ACT_IF
	VALUES (1610,
	1614,
	1615,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1613,
	1575,
	1616,
	39,
	1,
	'TrackLog::addTrackPoint line: 39');
INSERT INTO ACT_SEL
	VALUES (1613,
	1617,
	1,
	'one',
	1618);
INSERT INTO ACT_SR
	VALUES (1613);
INSERT INTO ACT_LNK
	VALUES (1619,
	'''represents path for''',
	1613,
	780,
	0,
	2,
	640,
	39,
	37,
	39,
	52,
	39,
	55);
INSERT INTO ACT_SMT
	VALUES (1616,
	1575,
	1620,
	40,
	1,
	'TrackLog::addTrackPoint line: 40');
INSERT INTO ACT_AI
	VALUES (1616,
	1621,
	1622,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1620,
	1575,
	0,
	43,
	1,
	'TrackLog::addTrackPoint line: 43');
INSERT INTO ACT_TFM
	VALUES (1620,
	1623,
	1624,
	43,
	6,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1581,
	0,
	0,
	7,
	3,
	6,
	0,
	0,
	0,
	0,
	432,
	1575);
INSERT INTO V_IRF
	VALUES (1581,
	1624);
INSERT INTO V_VAL
	VALUES (1625,
	1,
	0,
	8,
	1,
	10,
	0,
	0,
	0,
	0,
	432,
	1575);
INSERT INTO V_IRF
	VALUES (1625,
	1578);
INSERT INTO V_VAL
	VALUES (1586,
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
	1575);
INSERT INTO V_AVL
	VALUES (1586,
	1625,
	763,
	1626);
INSERT INTO V_VAL
	VALUES (1627,
	0,
	0,
	8,
	19,
	30,
	0,
	0,
	0,
	0,
	432,
	1575);
INSERT INTO V_IRF
	VALUES (1627,
	1580);
INSERT INTO V_VAL
	VALUES (1585,
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
	1575);
INSERT INTO V_AVL
	VALUES (1585,
	1627,
	656,
	962);
INSERT INTO V_VAL
	VALUES (1628,
	0,
	0,
	9,
	39,
	48,
	0,
	0,
	0,
	0,
	432,
	1575);
INSERT INTO V_IRF
	VALUES (1628,
	1578);
INSERT INTO V_VAL
	VALUES (1629,
	0,
	0,
	9,
	50,
	57,
	0,
	0,
	0,
	0,
	92,
	1575);
INSERT INTO V_AVL
	VALUES (1629,
	1628,
	763,
	1630);
INSERT INTO V_PAR
	VALUES (1629,
	1584,
	0,
	'latitude',
	1631,
	9,
	29);
INSERT INTO V_VAL
	VALUES (1632,
	0,
	0,
	9,
	71,
	80,
	0,
	0,
	0,
	0,
	432,
	1575);
INSERT INTO V_IRF
	VALUES (1632,
	1578);
INSERT INTO V_VAL
	VALUES (1631,
	0,
	0,
	9,
	82,
	90,
	0,
	0,
	0,
	0,
	92,
	1575);
INSERT INTO V_AVL
	VALUES (1631,
	1632,
	763,
	1633);
INSERT INTO V_PAR
	VALUES (1631,
	1584,
	0,
	'longitude',
	0,
	9,
	60);
INSERT INTO V_VAL
	VALUES (1590,
	0,
	0,
	12,
	34,
	37,
	0,
	0,
	0,
	0,
	432,
	1575);
INSERT INTO V_IRF
	VALUES (1590,
	1624);
INSERT INTO V_VAL
	VALUES (1594,
	0,
	0,
	13,
	33,
	36,
	0,
	0,
	0,
	0,
	432,
	1575);
INSERT INTO V_IRF
	VALUES (1594,
	1624);
INSERT INTO V_VAL
	VALUES (1598,
	1,
	1,
	16,
	1,
	17,
	0,
	0,
	0,
	0,
	56,
	1575);
INSERT INTO V_TVL
	VALUES (1598,
	1634);
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
	56,
	1575);
INSERT INTO V_LBO
	VALUES (1597,
	'FALSE');
INSERT INTO V_VAL
	VALUES (1601,
	1,
	1,
	17,
	1,
	12,
	0,
	0,
	0,
	0,
	92,
	1575);
INSERT INTO V_TVL
	VALUES (1601,
	1635);
INSERT INTO V_VAL
	VALUES (1600,
	0,
	0,
	17,
	16,
	18,
	0,
	0,
	0,
	0,
	92,
	1575);
INSERT INTO V_LRL
	VALUES (1600,
	'0.0');
INSERT INTO V_VAL
	VALUES (1604,
	1,
	1,
	18,
	1,
	13,
	0,
	0,
	0,
	0,
	92,
	1575);
INSERT INTO V_TVL
	VALUES (1604,
	1636);
INSERT INTO V_VAL
	VALUES (1603,
	0,
	0,
	18,
	17,
	19,
	0,
	0,
	0,
	0,
	92,
	1575);
INSERT INTO V_LRL
	VALUES (1603,
	'0.0');
INSERT INTO V_VAL
	VALUES (1637,
	0,
	0,
	19,
	11,
	20,
	0,
	0,
	0,
	0,
	432,
	1575);
INSERT INTO V_IRF
	VALUES (1637,
	1589);
INSERT INTO V_VAL
	VALUES (1607,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1575);
INSERT INTO V_UNY
	VALUES (1607,
	1637,
	'empty');
INSERT INTO V_VAL
	VALUES (1612,
	1,
	1,
	33,
	1,
	8,
	0,
	0,
	0,
	0,
	92,
	1575);
INSERT INTO V_TVL
	VALUES (1612,
	1638);
INSERT INTO V_VAL
	VALUES (1611,
	0,
	0,
	33,
	12,
	14,
	0,
	0,
	0,
	0,
	92,
	1575);
INSERT INTO V_LRL
	VALUES (1611,
	'0.0');
INSERT INTO V_VAL
	VALUES (1639,
	0,
	0,
	34,
	9,
	25,
	0,
	0,
	0,
	0,
	56,
	1575);
INSERT INTO V_TVL
	VALUES (1639,
	1634);
INSERT INTO V_VAL
	VALUES (1615,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1575);
INSERT INTO V_UNY
	VALUES (1615,
	1639,
	'not');
INSERT INTO V_VAL
	VALUES (1618,
	0,
	0,
	39,
	31,
	34,
	0,
	0,
	0,
	0,
	432,
	1575);
INSERT INTO V_IRF
	VALUES (1618,
	1624);
INSERT INTO V_VAL
	VALUES (1640,
	1,
	0,
	40,
	1,
	7,
	0,
	0,
	0,
	0,
	432,
	1575);
INSERT INTO V_IRF
	VALUES (1640,
	1617);
INSERT INTO V_VAL
	VALUES (1622,
	1,
	0,
	40,
	9,
	27,
	0,
	0,
	0,
	0,
	92,
	1575);
INSERT INTO V_AVL
	VALUES (1622,
	1640,
	640,
	1034);
INSERT INTO V_VAL
	VALUES (1641,
	0,
	0,
	40,
	31,
	37,
	0,
	0,
	0,
	0,
	432,
	1575);
INSERT INTO V_IRF
	VALUES (1641,
	1617);
INSERT INTO V_VAL
	VALUES (1642,
	0,
	0,
	40,
	39,
	57,
	0,
	0,
	0,
	0,
	92,
	1575);
INSERT INTO V_AVL
	VALUES (1642,
	1641,
	640,
	1034);
INSERT INTO V_VAL
	VALUES (1621,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	92,
	1575);
INSERT INTO V_BIN
	VALUES (1621,
	1643,
	1642,
	'+');
INSERT INTO V_VAL
	VALUES (1643,
	0,
	0,
	40,
	61,
	68,
	0,
	0,
	0,
	0,
	92,
	1575);
INSERT INTO V_TVL
	VALUES (1643,
	1638);
INSERT INTO V_VAR
	VALUES (1578,
	1575,
	'trackPoint',
	1,
	432);
INSERT INTO V_INT
	VALUES (1578,
	0,
	763);
INSERT INTO V_VAR
	VALUES (1580,
	1575,
	'workoutTimer',
	1,
	432);
INSERT INTO V_INT
	VALUES (1580,
	0,
	656);
INSERT INTO V_VAR
	VALUES (1624,
	1575,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (1624,
	0,
	761);
INSERT INTO V_VAR
	VALUES (1589,
	1575,
	'firstPoint',
	1,
	432);
INSERT INTO V_INT
	VALUES (1589,
	0,
	763);
INSERT INTO V_VAR
	VALUES (1593,
	1575,
	'lastPoint',
	1,
	432);
INSERT INTO V_INT
	VALUES (1593,
	0,
	763);
INSERT INTO V_VAR
	VALUES (1634,
	1575,
	'isFirstTrackPoint',
	1,
	56);
INSERT INTO V_TRN
	VALUES (1634,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1635,
	1575,
	'lastLatitude',
	1,
	92);
INSERT INTO V_TRN
	VALUES (1635,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1636,
	1575,
	'lastLongitude',
	1,
	92);
INSERT INTO V_TRN
	VALUES (1636,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1638,
	1575,
	'distance',
	1,
	92);
INSERT INTO V_TRN
	VALUES (1638,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1617,
	1575,
	'session',
	1,
	432);
INSERT INTO V_INT
	VALUES (1617,
	0,
	640);
INSERT INTO ACT_BLK
	VALUES (1606,
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
	1574,
	0);
INSERT INTO ACT_SMT
	VALUES (1644,
	1606,
	1645,
	20,
	3,
	'TrackLog::addTrackPoint line: 20');
INSERT INTO ACT_AI
	VALUES (1644,
	1646,
	1647,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1645,
	1606,
	1648,
	21,
	3,
	'TrackLog::addTrackPoint line: 21');
INSERT INTO ACT_REL
	VALUES (1645,
	1624,
	1578,
	'''has first''',
	760,
	21,
	36,
	21,
	39);
INSERT INTO ACT_SMT
	VALUES (1648,
	1606,
	0,
	22,
	3,
	'TrackLog::addTrackPoint line: 22');
INSERT INTO ACT_REL
	VALUES (1648,
	1624,
	1578,
	'''has last''',
	768,
	22,
	36,
	22,
	39);
INSERT INTO V_VAL
	VALUES (1647,
	1,
	0,
	20,
	3,
	19,
	0,
	0,
	0,
	0,
	56,
	1606);
INSERT INTO V_TVL
	VALUES (1647,
	1634);
INSERT INTO V_VAL
	VALUES (1646,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1606);
INSERT INTO V_LBO
	VALUES (1646,
	'TRUE');
INSERT INTO ACT_BLK
	VALUES (1609,
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
	1574,
	0);
INSERT INTO ACT_SMT
	VALUES (1649,
	1609,
	1650,
	25,
	3,
	'TrackLog::addTrackPoint line: 25');
INSERT INTO ACT_AI
	VALUES (1649,
	1651,
	1652,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1650,
	1609,
	1653,
	26,
	3,
	'TrackLog::addTrackPoint line: 26');
INSERT INTO ACT_AI
	VALUES (1650,
	1654,
	1655,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1653,
	1609,
	1656,
	27,
	3,
	'TrackLog::addTrackPoint line: 27');
INSERT INTO ACT_UNR
	VALUES (1653,
	1624,
	1593,
	'''has last''',
	768,
	27,
	39,
	27,
	42);
INSERT INTO ACT_SMT
	VALUES (1656,
	1609,
	1657,
	28,
	3,
	'TrackLog::addTrackPoint line: 28');
INSERT INTO ACT_REL
	VALUES (1656,
	1624,
	1578,
	'''has last''',
	768,
	28,
	36,
	28,
	39);
INSERT INTO ACT_SMT
	VALUES (1657,
	1609,
	0,
	29,
	3,
	'TrackLog::addTrackPoint line: 29');
INSERT INTO ACT_REL
	VALUES (1657,
	1593,
	1578,
	'''follows''',
	765,
	29,
	41,
	29,
	44);
INSERT INTO V_VAL
	VALUES (1652,
	1,
	0,
	25,
	3,
	14,
	0,
	0,
	0,
	0,
	92,
	1609);
INSERT INTO V_TVL
	VALUES (1652,
	1635);
INSERT INTO V_VAL
	VALUES (1658,
	0,
	0,
	25,
	18,
	26,
	0,
	0,
	0,
	0,
	432,
	1609);
INSERT INTO V_IRF
	VALUES (1658,
	1593);
INSERT INTO V_VAL
	VALUES (1651,
	0,
	0,
	25,
	28,
	35,
	0,
	0,
	0,
	0,
	92,
	1609);
INSERT INTO V_AVL
	VALUES (1651,
	1658,
	763,
	1630);
INSERT INTO V_VAL
	VALUES (1655,
	1,
	0,
	26,
	3,
	15,
	0,
	0,
	0,
	0,
	92,
	1609);
INSERT INTO V_TVL
	VALUES (1655,
	1636);
INSERT INTO V_VAL
	VALUES (1659,
	0,
	0,
	26,
	19,
	27,
	0,
	0,
	0,
	0,
	432,
	1609);
INSERT INTO V_IRF
	VALUES (1659,
	1593);
INSERT INTO V_VAL
	VALUES (1654,
	0,
	0,
	26,
	29,
	37,
	0,
	0,
	0,
	0,
	92,
	1609);
INSERT INTO V_AVL
	VALUES (1654,
	1659,
	763,
	1633);
INSERT INTO ACT_BLK
	VALUES (1614,
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
	1574,
	0);
INSERT INTO ACT_SMT
	VALUES (1660,
	1614,
	0,
	35,
	3,
	'TrackLog::addTrackPoint line: 35');
INSERT INTO ACT_AI
	VALUES (1660,
	1661,
	1662,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1662,
	1,
	0,
	35,
	8,
	15,
	0,
	0,
	0,
	0,
	92,
	1614);
INSERT INTO V_TVL
	VALUES (1662,
	1638);
INSERT INTO V_VAL
	VALUES (1661,
	0,
	0,
	35,
	29,
	40,
	35,
	42,
	36,
	66,
	92,
	1614);
INSERT INTO V_MSV
	VALUES (1661,
	0,
	582,
	1,
	35,
	19,
	0);
INSERT INTO V_VAL
	VALUES (1663,
	0,
	0,
	35,
	51,
	62,
	0,
	0,
	0,
	0,
	92,
	1614);
INSERT INTO V_TVL
	VALUES (1663,
	1635);
INSERT INTO V_PAR
	VALUES (1663,
	0,
	1661,
	'fromLat',
	1664,
	35,
	42);
INSERT INTO V_VAL
	VALUES (1664,
	0,
	0,
	35,
	75,
	87,
	0,
	0,
	0,
	0,
	92,
	1614);
INSERT INTO V_TVL
	VALUES (1664,
	1636);
INSERT INTO V_PAR
	VALUES (1664,
	0,
	1661,
	'fromLong',
	1665,
	35,
	65);
INSERT INTO V_VAL
	VALUES (1666,
	0,
	0,
	36,
	45,
	54,
	0,
	0,
	0,
	0,
	432,
	1614);
INSERT INTO V_IRF
	VALUES (1666,
	1578);
INSERT INTO V_VAL
	VALUES (1665,
	0,
	0,
	36,
	56,
	63,
	0,
	0,
	0,
	0,
	92,
	1614);
INSERT INTO V_AVL
	VALUES (1665,
	1666,
	763,
	1630);
INSERT INTO V_PAR
	VALUES (1665,
	0,
	1661,
	'toLat',
	1667,
	36,
	38);
INSERT INTO V_VAL
	VALUES (1668,
	0,
	0,
	36,
	74,
	83,
	0,
	0,
	0,
	0,
	432,
	1614);
INSERT INTO V_IRF
	VALUES (1668,
	1578);
INSERT INTO V_VAL
	VALUES (1667,
	0,
	0,
	36,
	85,
	93,
	0,
	0,
	0,
	0,
	92,
	1614);
INSERT INTO V_AVL
	VALUES (1667,
	1668,
	763,
	1633);
INSERT INTO V_PAR
	VALUES (1667,
	0,
	1661,
	'toLong',
	0,
	36,
	66);
INSERT INTO O_TFR
	VALUES (1669,
	761,
	'clearTrackPoints',
	'',
	204,
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
	1573);
INSERT INTO ACT_OPB
	VALUES (1670,
	1669);
INSERT INTO ACT_ACT
	VALUES (1670,
	'operation',
	0,
	1671,
	0,
	0,
	'TrackLog::clearTrackPoints',
	0);
INSERT INTO ACT_BLK
	VALUES (1671,
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
	1670,
	0);
INSERT INTO ACT_SMT
	VALUES (1672,
	1671,
	1673,
	1,
	1,
	'TrackLog::clearTrackPoints line: 1');
INSERT INTO ACT_SEL
	VALUES (1672,
	1674,
	1,
	'one',
	1675);
INSERT INTO ACT_SR
	VALUES (1672);
INSERT INTO ACT_LNK
	VALUES (1676,
	'',
	1672,
	760,
	0,
	2,
	763,
	1,
	39,
	1,
	50,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1673,
	1671,
	1677,
	2,
	1,
	'TrackLog::clearTrackPoints line: 2');
INSERT INTO ACT_SEL
	VALUES (1673,
	1678,
	1,
	'one',
	1679);
INSERT INTO ACT_SR
	VALUES (1673);
INSERT INTO ACT_LNK
	VALUES (1680,
	'',
	1673,
	768,
	0,
	2,
	763,
	2,
	39,
	2,
	50,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1677,
	1671,
	1681,
	4,
	1,
	'TrackLog::clearTrackPoints line: 4');
INSERT INTO ACT_IF
	VALUES (1677,
	1682,
	1683,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1681,
	1671,
	1684,
	8,
	1,
	'TrackLog::clearTrackPoints line: 8');
INSERT INTO ACT_IF
	VALUES (1681,
	1685,
	1686,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1684,
	1671,
	0,
	12,
	1,
	'TrackLog::clearTrackPoints line: 12');
INSERT INTO ACT_WHL
	VALUES (1684,
	1687,
	1688);
INSERT INTO V_VAL
	VALUES (1675,
	0,
	0,
	1,
	33,
	36,
	0,
	0,
	0,
	0,
	432,
	1671);
INSERT INTO V_IRF
	VALUES (1675,
	1689);
INSERT INTO V_VAL
	VALUES (1679,
	0,
	0,
	2,
	33,
	36,
	0,
	0,
	0,
	0,
	432,
	1671);
INSERT INTO V_IRF
	VALUES (1679,
	1689);
INSERT INTO V_VAL
	VALUES (1690,
	0,
	0,
	4,
	15,
	23,
	0,
	0,
	0,
	0,
	432,
	1671);
INSERT INTO V_IRF
	VALUES (1690,
	1678);
INSERT INTO V_VAL
	VALUES (1691,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1671);
INSERT INTO V_UNY
	VALUES (1691,
	1690,
	'empty');
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
	56,
	1671);
INSERT INTO V_UNY
	VALUES (1683,
	1691,
	'not');
INSERT INTO V_VAL
	VALUES (1692,
	0,
	0,
	8,
	15,
	23,
	0,
	0,
	0,
	0,
	432,
	1671);
INSERT INTO V_IRF
	VALUES (1692,
	1674);
INSERT INTO V_VAL
	VALUES (1693,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1671);
INSERT INTO V_UNY
	VALUES (1693,
	1692,
	'empty');
INSERT INTO V_VAL
	VALUES (1686,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1671);
INSERT INTO V_UNY
	VALUES (1686,
	1693,
	'not');
INSERT INTO V_VAL
	VALUES (1694,
	0,
	0,
	12,
	18,
	26,
	0,
	0,
	0,
	0,
	432,
	1671);
INSERT INTO V_IRF
	VALUES (1694,
	1674);
INSERT INTO V_VAL
	VALUES (1695,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1671);
INSERT INTO V_UNY
	VALUES (1695,
	1694,
	'empty');
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
	56,
	1671);
INSERT INTO V_UNY
	VALUES (1687,
	1695,
	'not');
INSERT INTO V_VAR
	VALUES (1674,
	1671,
	'nextPoint',
	1,
	432);
INSERT INTO V_INT
	VALUES (1674,
	0,
	763);
INSERT INTO V_VAR
	VALUES (1689,
	1671,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (1689,
	0,
	761);
INSERT INTO V_VAR
	VALUES (1678,
	1671,
	'lastPoint',
	1,
	432);
INSERT INTO V_INT
	VALUES (1678,
	0,
	763);
INSERT INTO ACT_BLK
	VALUES (1682,
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
	1670,
	0);
INSERT INTO ACT_SMT
	VALUES (1696,
	1682,
	0,
	5,
	3,
	'TrackLog::clearTrackPoints line: 5');
INSERT INTO ACT_UNR
	VALUES (1696,
	1689,
	1678,
	'',
	768,
	5,
	39,
	0,
	0);
INSERT INTO ACT_BLK
	VALUES (1685,
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
	1670,
	0);
INSERT INTO ACT_SMT
	VALUES (1697,
	1685,
	0,
	9,
	3,
	'TrackLog::clearTrackPoints line: 9');
INSERT INTO ACT_UNR
	VALUES (1697,
	1689,
	1674,
	'',
	760,
	9,
	39,
	0,
	0);
INSERT INTO ACT_BLK
	VALUES (1688,
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
	1670,
	0);
INSERT INTO ACT_SMT
	VALUES (1698,
	1688,
	1699,
	13,
	3,
	'TrackLog::clearTrackPoints line: 13');
INSERT INTO ACT_AI
	VALUES (1698,
	1700,
	1701,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1699,
	1688,
	1702,
	14,
	3,
	'TrackLog::clearTrackPoints line: 14');
INSERT INTO ACT_SEL
	VALUES (1699,
	1674,
	0,
	'one',
	1703);
INSERT INTO ACT_SR
	VALUES (1699);
INSERT INTO ACT_LNK
	VALUES (1704,
	'''follows''',
	1699,
	765,
	0,
	2,
	763,
	14,
	46,
	14,
	57,
	14,
	60);
INSERT INTO ACT_SMT
	VALUES (1702,
	1688,
	1705,
	15,
	3,
	'TrackLog::clearTrackPoints line: 15');
INSERT INTO ACT_IF
	VALUES (1702,
	1706,
	1707,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1705,
	1688,
	0,
	18,
	3,
	'TrackLog::clearTrackPoints line: 18');
INSERT INTO ACT_DEL
	VALUES (1705,
	1708);
INSERT INTO V_VAL
	VALUES (1701,
	1,
	1,
	13,
	3,
	11,
	0,
	0,
	0,
	0,
	432,
	1688);
INSERT INTO V_IRF
	VALUES (1701,
	1708);
INSERT INTO V_VAL
	VALUES (1700,
	0,
	0,
	13,
	15,
	23,
	0,
	0,
	0,
	0,
	432,
	1688);
INSERT INTO V_IRF
	VALUES (1700,
	1674);
INSERT INTO V_VAL
	VALUES (1703,
	0,
	0,
	14,
	35,
	43,
	0,
	0,
	0,
	0,
	432,
	1688);
INSERT INTO V_IRF
	VALUES (1703,
	1674);
INSERT INTO V_VAL
	VALUES (1709,
	0,
	0,
	15,
	18,
	26,
	0,
	0,
	0,
	0,
	432,
	1688);
INSERT INTO V_IRF
	VALUES (1709,
	1674);
INSERT INTO V_VAL
	VALUES (1707,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1688);
INSERT INTO V_UNY
	VALUES (1707,
	1709,
	'not_empty');
INSERT INTO V_VAR
	VALUES (1708,
	1688,
	'prevPoint',
	1,
	432);
INSERT INTO V_INT
	VALUES (1708,
	0,
	763);
INSERT INTO ACT_BLK
	VALUES (1706,
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
	1670,
	0);
INSERT INTO ACT_SMT
	VALUES (1710,
	1706,
	0,
	16,
	5,
	'TrackLog::clearTrackPoints line: 16');
INSERT INTO ACT_UNR
	VALUES (1710,
	1708,
	1674,
	'''follows''',
	765,
	16,
	46,
	16,
	49);
INSERT INTO O_TFR
	VALUES (1711,
	761,
	'addLapMarker',
	'',
	204,
	1,
	'select one timer related by self->WorkoutSession[R4.''represents path for'']->WorkoutTimer[R8.''is timed by''];
create object instance lapMarker of LapMarker;
lapMarker.lapTime = timer.time; 
relate self to lapMarker across R5.''has laps defined by'';

// Notify display of the new value.
self.updateDisplay();',
	1,
	'',
	1669);
INSERT INTO ACT_OPB
	VALUES (1712,
	1711);
INSERT INTO ACT_ACT
	VALUES (1712,
	'operation',
	0,
	1713,
	0,
	0,
	'TrackLog::addLapMarker',
	0);
INSERT INTO ACT_BLK
	VALUES (1713,
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
	1712,
	0);
INSERT INTO ACT_SMT
	VALUES (1714,
	1713,
	1715,
	1,
	1,
	'TrackLog::addLapMarker line: 1');
INSERT INTO ACT_SEL
	VALUES (1714,
	1716,
	1,
	'one',
	1717);
INSERT INTO ACT_SR
	VALUES (1714);
INSERT INTO ACT_LNK
	VALUES (1718,
	'''represents path for''',
	1714,
	780,
	1719,
	2,
	640,
	1,
	35,
	1,
	50,
	1,
	53);
INSERT INTO ACT_LNK
	VALUES (1719,
	'''is timed by''',
	0,
	777,
	0,
	2,
	656,
	1,
	77,
	1,
	90,
	1,
	93);
INSERT INTO ACT_SMT
	VALUES (1715,
	1713,
	1720,
	2,
	1,
	'TrackLog::addLapMarker line: 2');
INSERT INTO ACT_CR
	VALUES (1715,
	1721,
	1,
	772,
	2,
	37);
INSERT INTO ACT_SMT
	VALUES (1720,
	1713,
	1722,
	3,
	1,
	'TrackLog::addLapMarker line: 3');
INSERT INTO ACT_AI
	VALUES (1720,
	1723,
	1724,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1722,
	1713,
	1725,
	4,
	1,
	'TrackLog::addLapMarker line: 4');
INSERT INTO ACT_REL
	VALUES (1722,
	1726,
	1721,
	'''has laps defined by''',
	771,
	4,
	33,
	4,
	36);
INSERT INTO ACT_SMT
	VALUES (1725,
	1713,
	0,
	7,
	1,
	'TrackLog::addLapMarker line: 7');
INSERT INTO ACT_TFM
	VALUES (1725,
	1623,
	1726,
	7,
	6,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1717,
	0,
	0,
	1,
	29,
	32,
	0,
	0,
	0,
	0,
	432,
	1713);
INSERT INTO V_IRF
	VALUES (1717,
	1726);
INSERT INTO V_VAL
	VALUES (1727,
	1,
	0,
	3,
	1,
	9,
	0,
	0,
	0,
	0,
	432,
	1713);
INSERT INTO V_IRF
	VALUES (1727,
	1721);
INSERT INTO V_VAL
	VALUES (1724,
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
	1713);
INSERT INTO V_AVL
	VALUES (1724,
	1727,
	772,
	1572);
INSERT INTO V_VAL
	VALUES (1728,
	0,
	0,
	3,
	21,
	25,
	0,
	0,
	0,
	0,
	432,
	1713);
INSERT INTO V_IRF
	VALUES (1728,
	1716);
INSERT INTO V_VAL
	VALUES (1723,
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
	1713);
INSERT INTO V_AVL
	VALUES (1723,
	1728,
	656,
	962);
INSERT INTO V_VAR
	VALUES (1716,
	1713,
	'timer',
	1,
	432);
INSERT INTO V_INT
	VALUES (1716,
	0,
	656);
INSERT INTO V_VAR
	VALUES (1726,
	1713,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (1726,
	0,
	761);
INSERT INTO V_VAR
	VALUES (1721,
	1713,
	'lapMarker',
	1,
	432);
INSERT INTO V_INT
	VALUES (1721,
	0,
	772);
INSERT INTO O_TFR
	VALUES (1729,
	761,
	'clearLapMarkers',
	'',
	204,
	1,
	'select many lapMarkers related by self->LapMarker[R5];
for each lapMarker in lapMarkers
  unrelate self from lapMarker across R5;
  delete object instance lapMarker;
end for;',
	1,
	'',
	1711);
INSERT INTO ACT_OPB
	VALUES (1730,
	1729);
INSERT INTO ACT_ACT
	VALUES (1730,
	'operation',
	0,
	1731,
	0,
	0,
	'TrackLog::clearLapMarkers',
	0);
INSERT INTO ACT_BLK
	VALUES (1731,
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
	1730,
	0);
INSERT INTO ACT_SMT
	VALUES (1732,
	1731,
	1733,
	1,
	1,
	'TrackLog::clearLapMarkers line: 1');
INSERT INTO ACT_SEL
	VALUES (1732,
	1734,
	1,
	'many',
	1735);
INSERT INTO ACT_SR
	VALUES (1732);
INSERT INTO ACT_LNK
	VALUES (1736,
	'',
	1732,
	771,
	0,
	3,
	772,
	1,
	41,
	1,
	51,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1733,
	1731,
	0,
	2,
	1,
	'TrackLog::clearLapMarkers line: 2');
INSERT INTO ACT_FOR
	VALUES (1733,
	1737,
	1,
	1738,
	1734,
	772);
INSERT INTO V_VAL
	VALUES (1735,
	0,
	0,
	1,
	35,
	38,
	0,
	0,
	0,
	0,
	432,
	1731);
INSERT INTO V_IRF
	VALUES (1735,
	1739);
INSERT INTO V_VAR
	VALUES (1734,
	1731,
	'lapMarkers',
	1,
	572);
INSERT INTO V_INS
	VALUES (1734,
	772);
INSERT INTO V_VAR
	VALUES (1739,
	1731,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (1739,
	0,
	761);
INSERT INTO V_VAR
	VALUES (1738,
	1731,
	'lapMarker',
	1,
	432);
INSERT INTO V_INT
	VALUES (1738,
	1,
	772);
INSERT INTO ACT_BLK
	VALUES (1737,
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
	1730,
	0);
INSERT INTO ACT_SMT
	VALUES (1740,
	1737,
	1741,
	3,
	3,
	'TrackLog::clearLapMarkers line: 3');
INSERT INTO ACT_UNR
	VALUES (1740,
	1739,
	1738,
	'',
	771,
	3,
	39,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1741,
	1737,
	0,
	4,
	3,
	'TrackLog::clearLapMarkers line: 4');
INSERT INTO ACT_DEL
	VALUES (1741,
	1738);
INSERT INTO O_TFR
	VALUES (1623,
	761,
	'updateDisplay',
	'',
	204,
	1,
	'// Update the display so that newly updated values will be shown.
select one display related by 
  self->WorkoutSession[R4.''represents path for'']->Display[R7.''current status indicated on''];
generate Display2:refresh to display;',
	1,
	'',
	1729);
INSERT INTO ACT_OPB
	VALUES (1742,
	1623);
INSERT INTO ACT_ACT
	VALUES (1742,
	'operation',
	0,
	1743,
	0,
	0,
	'TrackLog::updateDisplay',
	0);
INSERT INTO ACT_BLK
	VALUES (1743,
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
	1742,
	0);
INSERT INTO ACT_SMT
	VALUES (1744,
	1743,
	1745,
	2,
	1,
	'TrackLog::updateDisplay line: 2');
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
	'''represents path for''',
	1744,
	780,
	1749,
	2,
	640,
	3,
	9,
	3,
	24,
	3,
	27);
INSERT INTO ACT_LNK
	VALUES (1749,
	'''current status indicated on''',
	0,
	684,
	0,
	2,
	685,
	3,
	51,
	3,
	59,
	3,
	62);
INSERT INTO ACT_SMT
	VALUES (1745,
	1743,
	0,
	4,
	1,
	'TrackLog::updateDisplay line: 4');
INSERT INTO E_ESS
	VALUES (1745,
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
	VALUES (1745);
INSERT INTO E_GSME
	VALUES (1745,
	1013);
INSERT INTO E_GEN
	VALUES (1745,
	1746);
INSERT INTO V_VAL
	VALUES (1747,
	0,
	0,
	3,
	3,
	6,
	0,
	0,
	0,
	0,
	432,
	1743);
INSERT INTO V_IRF
	VALUES (1747,
	1750);
INSERT INTO V_VAR
	VALUES (1746,
	1743,
	'display',
	1,
	432);
INSERT INTO V_INT
	VALUES (1746,
	0,
	685);
INSERT INTO V_VAR
	VALUES (1750,
	1743,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (1750,
	0,
	761);
INSERT INTO O_ID
	VALUES (0,
	761);
INSERT INTO O_ID
	VALUES (1,
	761);
INSERT INTO O_ID
	VALUES (2,
	761);
INSERT INTO PE_PE
	VALUES (763,
	1,
	759,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (763,
	'TrackPoint',
	3,
	'TrackPoint',
	'Each instance represents a single location through which the device
passed during a workout session.',
	0);
INSERT INTO O_NBATTR
	VALUES (1626,
	763);
INSERT INTO O_BATTR
	VALUES (1626,
	763);
INSERT INTO O_ATTR
	VALUES (1626,
	763,
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
	VALUES (1633,
	763);
INSERT INTO O_BATTR
	VALUES (1633,
	763);
INSERT INTO O_ATTR
	VALUES (1633,
	763,
	1626,
	'longitude',
	'Longitude, expressed in decimal degrees where eastern figures are positve
and western ones are negative.',
	'',
	'longitude',
	0,
	92,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1630,
	763);
INSERT INTO O_BATTR
	VALUES (1630,
	763);
INSERT INTO O_ATTR
	VALUES (1630,
	763,
	1633,
	'latitude',
	'Latitude, expressed in decimal degrees, where northern figures are positive
and southern ones are negative.',
	'',
	'latitude',
	0,
	92,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	763);
INSERT INTO O_ID
	VALUES (1,
	763);
INSERT INTO O_ID
	VALUES (2,
	763);
INSERT INTO PE_PE
	VALUES (640,
	1,
	759,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (640,
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
	VALUES (646,
	640,
	'addHeartRateSample',
	'',
	204,
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
	VALUES (1751,
	646,
	'heartRate',
	14,
	0,
	'',
	0,
	'');
INSERT INTO ACT_OPB
	VALUES (1752,
	646);
INSERT INTO ACT_ACT
	VALUES (1752,
	'operation',
	0,
	1753,
	0,
	0,
	'WorkoutSession::addHeartRateSample',
	0);
INSERT INTO ACT_BLK
	VALUES (1753,
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
	1752,
	0);
INSERT INTO ACT_SMT
	VALUES (1754,
	1753,
	1755,
	3,
	1,
	'WorkoutSession::addHeartRateSample line: 3');
INSERT INTO ACT_SEL
	VALUES (1754,
	1756,
	1,
	'one',
	1757);
INSERT INTO ACT_SR
	VALUES (1754);
INSERT INTO ACT_LNK
	VALUES (1758,
	'''is timed by''',
	1754,
	777,
	0,
	2,
	656,
	3,
	42,
	3,
	55,
	3,
	58);
INSERT INTO ACT_SMT
	VALUES (1755,
	1753,
	1759,
	6,
	1,
	'WorkoutSession::addHeartRateSample line: 6');
INSERT INTO ACT_CR
	VALUES (1755,
	1760,
	1,
	784,
	6,
	34);
INSERT INTO ACT_SMT
	VALUES (1759,
	1753,
	1761,
	7,
	1,
	'WorkoutSession::addHeartRateSample line: 7');
INSERT INTO ACT_AI
	VALUES (1759,
	1762,
	1763,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1761,
	1753,
	1764,
	8,
	1,
	'WorkoutSession::addHeartRateSample line: 8');
INSERT INTO ACT_AI
	VALUES (1761,
	1765,
	1766,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1764,
	1753,
	1767,
	9,
	1,
	'WorkoutSession::addHeartRateSample line: 9');
INSERT INTO ACT_REL
	VALUES (1764,
	1768,
	1760,
	'''tracks heart rate over time as''',
	783,
	9,
	30,
	9,
	33);
INSERT INTO ACT_SMT
	VALUES (1767,
	1753,
	1769,
	12,
	1,
	'WorkoutSession::addHeartRateSample line: 12');
INSERT INTO ACT_SEL
	VALUES (1767,
	1770,
	1,
	'one',
	1771);
INSERT INTO ACT_SR
	VALUES (1767);
INSERT INTO ACT_LNK
	VALUES (1772,
	'''current status indicated on''',
	1767,
	684,
	0,
	2,
	685,
	12,
	37,
	12,
	45,
	12,
	48);
INSERT INTO ACT_SMT
	VALUES (1769,
	1753,
	0,
	13,
	1,
	'WorkoutSession::addHeartRateSample line: 13');
INSERT INTO E_ESS
	VALUES (1769,
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
	VALUES (1769);
INSERT INTO E_GSME
	VALUES (1769,
	1013);
INSERT INTO E_GEN
	VALUES (1769,
	1770);
INSERT INTO V_VAL
	VALUES (1757,
	0,
	0,
	3,
	36,
	39,
	0,
	0,
	0,
	0,
	432,
	1753);
INSERT INTO V_IRF
	VALUES (1757,
	1768);
INSERT INTO V_VAL
	VALUES (1773,
	1,
	0,
	7,
	1,
	6,
	0,
	0,
	0,
	0,
	432,
	1753);
INSERT INTO V_IRF
	VALUES (1773,
	1760);
INSERT INTO V_VAL
	VALUES (1763,
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
	1753);
INSERT INTO V_AVL
	VALUES (1763,
	1773,
	784,
	1570);
INSERT INTO V_VAL
	VALUES (1762,
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
	1753);
INSERT INTO V_PVL
	VALUES (1762,
	0,
	0,
	1751,
	0);
INSERT INTO V_VAL
	VALUES (1774,
	1,
	0,
	8,
	1,
	6,
	0,
	0,
	0,
	0,
	432,
	1753);
INSERT INTO V_IRF
	VALUES (1774,
	1760);
INSERT INTO V_VAL
	VALUES (1766,
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
	1753);
INSERT INTO V_AVL
	VALUES (1766,
	1774,
	784,
	1571);
INSERT INTO V_VAL
	VALUES (1775,
	0,
	0,
	8,
	15,
	26,
	0,
	0,
	0,
	0,
	432,
	1753);
INSERT INTO V_IRF
	VALUES (1775,
	1756);
INSERT INTO V_VAL
	VALUES (1765,
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
	1753);
INSERT INTO V_AVL
	VALUES (1765,
	1775,
	656,
	962);
INSERT INTO V_VAL
	VALUES (1771,
	0,
	0,
	12,
	31,
	34,
	0,
	0,
	0,
	0,
	432,
	1753);
INSERT INTO V_IRF
	VALUES (1771,
	1768);
INSERT INTO V_VAR
	VALUES (1756,
	1753,
	'workoutTimer',
	1,
	432);
INSERT INTO V_INT
	VALUES (1756,
	0,
	656);
INSERT INTO V_VAR
	VALUES (1768,
	1753,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (1768,
	0,
	640);
INSERT INTO V_VAR
	VALUES (1760,
	1753,
	'sample',
	1,
	432);
INSERT INTO V_INT
	VALUES (1760,
	0,
	784);
INSERT INTO V_VAR
	VALUES (1770,
	1753,
	'display',
	1,
	432);
INSERT INTO V_INT
	VALUES (1770,
	0,
	685);
INSERT INTO O_TFR
	VALUES (1776,
	640,
	'clearHeartRateSamples',
	'',
	204,
	1,
	'select many samples related by self->HeartRateSample[R6];
for each sample in samples
  unrelate self from sample across R6;
  delete object instance sample;
end for;',
	1,
	'',
	646);
INSERT INTO ACT_OPB
	VALUES (1777,
	1776);
INSERT INTO ACT_ACT
	VALUES (1777,
	'operation',
	0,
	1778,
	0,
	0,
	'WorkoutSession::clearHeartRateSamples',
	0);
INSERT INTO ACT_BLK
	VALUES (1778,
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
	1777,
	0);
INSERT INTO ACT_SMT
	VALUES (1779,
	1778,
	1780,
	1,
	1,
	'WorkoutSession::clearHeartRateSamples line: 1');
INSERT INTO ACT_SEL
	VALUES (1779,
	1781,
	1,
	'many',
	1782);
INSERT INTO ACT_SR
	VALUES (1779);
INSERT INTO ACT_LNK
	VALUES (1783,
	'',
	1779,
	783,
	0,
	3,
	784,
	1,
	38,
	1,
	54,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1780,
	1778,
	0,
	2,
	1,
	'WorkoutSession::clearHeartRateSamples line: 2');
INSERT INTO ACT_FOR
	VALUES (1780,
	1784,
	1,
	1785,
	1781,
	784);
INSERT INTO V_VAL
	VALUES (1782,
	0,
	0,
	1,
	32,
	35,
	0,
	0,
	0,
	0,
	432,
	1778);
INSERT INTO V_IRF
	VALUES (1782,
	1786);
INSERT INTO V_VAR
	VALUES (1781,
	1778,
	'samples',
	1,
	572);
INSERT INTO V_INS
	VALUES (1781,
	784);
INSERT INTO V_VAR
	VALUES (1786,
	1778,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (1786,
	0,
	640);
INSERT INTO V_VAR
	VALUES (1785,
	1778,
	'sample',
	1,
	432);
INSERT INTO V_INT
	VALUES (1785,
	1,
	784);
INSERT INTO ACT_BLK
	VALUES (1784,
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
	1777,
	0);
INSERT INTO ACT_SMT
	VALUES (1787,
	1784,
	1788,
	3,
	3,
	'WorkoutSession::clearHeartRateSamples line: 3');
INSERT INTO ACT_UNR
	VALUES (1787,
	1786,
	1785,
	'',
	783,
	3,
	36,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1788,
	1784,
	0,
	4,
	3,
	'WorkoutSession::clearHeartRateSamples line: 4');
INSERT INTO ACT_DEL
	VALUES (1788,
	1785);
INSERT INTO O_TFR
	VALUES (1789,
	640,
	'initialize',
	'',
	204,
	1,
	'// Initialize this workout session.

self.startDate = TIM::current_date();
self.startTime = TIM::current_clock();
self.accumulatedDistance = 0.0;',
	1,
	'',
	1776);
INSERT INTO ACT_OPB
	VALUES (1790,
	1789);
INSERT INTO ACT_ACT
	VALUES (1790,
	'operation',
	0,
	1791,
	0,
	0,
	'WorkoutSession::initialize',
	0);
INSERT INTO ACT_BLK
	VALUES (1791,
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
	1790,
	0);
INSERT INTO ACT_SMT
	VALUES (1792,
	1791,
	1793,
	3,
	1,
	'WorkoutSession::initialize line: 3');
INSERT INTO ACT_AI
	VALUES (1792,
	1794,
	1795,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1793,
	1791,
	1796,
	4,
	1,
	'WorkoutSession::initialize line: 4');
INSERT INTO ACT_AI
	VALUES (1793,
	1797,
	1798,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1796,
	1791,
	0,
	5,
	1,
	'WorkoutSession::initialize line: 5');
INSERT INTO ACT_AI
	VALUES (1796,
	1799,
	1800,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1801,
	1,
	0,
	3,
	1,
	4,
	0,
	0,
	0,
	0,
	432,
	1791);
INSERT INTO V_IRF
	VALUES (1801,
	1802);
INSERT INTO V_VAL
	VALUES (1795,
	1,
	0,
	3,
	6,
	14,
	0,
	0,
	0,
	0,
	227,
	1791);
INSERT INTO V_AVL
	VALUES (1795,
	1801,
	640,
	1803);
INSERT INTO V_VAL
	VALUES (1794,
	0,
	0,
	3,
	23,
	-1,
	0,
	0,
	0,
	0,
	227,
	1791);
INSERT INTO V_BRV
	VALUES (1794,
	838,
	1,
	3,
	18);
INSERT INTO V_VAL
	VALUES (1804,
	1,
	0,
	4,
	1,
	4,
	0,
	0,
	0,
	0,
	432,
	1791);
INSERT INTO V_IRF
	VALUES (1804,
	1802);
INSERT INTO V_VAL
	VALUES (1798,
	1,
	0,
	4,
	6,
	14,
	0,
	0,
	0,
	0,
	264,
	1791);
INSERT INTO V_AVL
	VALUES (1798,
	1804,
	640,
	1805);
INSERT INTO V_VAL
	VALUES (1797,
	0,
	0,
	4,
	23,
	-1,
	0,
	0,
	0,
	0,
	264,
	1791);
INSERT INTO V_BRV
	VALUES (1797,
	874,
	1,
	4,
	18);
INSERT INTO V_VAL
	VALUES (1806,
	1,
	0,
	5,
	1,
	4,
	0,
	0,
	0,
	0,
	432,
	1791);
INSERT INTO V_IRF
	VALUES (1806,
	1802);
INSERT INTO V_VAL
	VALUES (1800,
	1,
	0,
	5,
	6,
	24,
	0,
	0,
	0,
	0,
	92,
	1791);
INSERT INTO V_AVL
	VALUES (1800,
	1806,
	640,
	1034);
INSERT INTO V_VAL
	VALUES (1799,
	0,
	0,
	5,
	28,
	30,
	0,
	0,
	0,
	0,
	92,
	1791);
INSERT INTO V_LRL
	VALUES (1799,
	'0.0');
INSERT INTO V_VAR
	VALUES (1802,
	1791,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (1802,
	0,
	640);
INSERT INTO O_TFR
	VALUES (699,
	640,
	'create',
	'',
	204,
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
	1789);
INSERT INTO ACT_OPB
	VALUES (1807,
	699);
INSERT INTO ACT_ACT
	VALUES (1807,
	'class operation',
	0,
	1808,
	0,
	0,
	'WorkoutSession::create',
	0);
INSERT INTO ACT_BLK
	VALUES (1808,
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
	1807,
	0);
INSERT INTO ACT_SMT
	VALUES (1809,
	1808,
	1810,
	4,
	1,
	'WorkoutSession::create line: 4');
INSERT INTO ACT_FIO
	VALUES (1809,
	1811,
	1,
	'any',
	640,
	4,
	38);
INSERT INTO ACT_SMT
	VALUES (1810,
	1808,
	0,
	6,
	1,
	'WorkoutSession::create line: 6');
INSERT INTO ACT_IF
	VALUES (1810,
	1812,
	1813,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1814,
	0,
	0,
	6,
	12,
	18,
	0,
	0,
	0,
	0,
	432,
	1808);
INSERT INTO V_IRF
	VALUES (1814,
	1811);
INSERT INTO V_VAL
	VALUES (1813,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1808);
INSERT INTO V_UNY
	VALUES (1813,
	1814,
	'empty');
INSERT INTO V_VAR
	VALUES (1811,
	1808,
	'session',
	1,
	432);
INSERT INTO V_INT
	VALUES (1811,
	0,
	640);
INSERT INTO ACT_BLK
	VALUES (1812,
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
	1807,
	0);
INSERT INTO ACT_SMT
	VALUES (1815,
	1812,
	1816,
	9,
	3,
	'WorkoutSession::create line: 9');
INSERT INTO ACT_CR
	VALUES (1815,
	1811,
	0,
	640,
	9,
	37);
INSERT INTO ACT_SMT
	VALUES (1816,
	1812,
	1817,
	10,
	3,
	'WorkoutSession::create line: 10');
INSERT INTO ACT_TFM
	VALUES (1816,
	1789,
	1811,
	10,
	11,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1817,
	1812,
	1818,
	13,
	3,
	'WorkoutSession::create line: 13');
INSERT INTO ACT_CR
	VALUES (1817,
	1819,
	1,
	656,
	13,
	42);
INSERT INTO ACT_SMT
	VALUES (1818,
	1812,
	1820,
	14,
	3,
	'WorkoutSession::create line: 14');
INSERT INTO ACT_TFM
	VALUES (1818,
	1821,
	1819,
	14,
	16,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1820,
	1812,
	1822,
	17,
	3,
	'WorkoutSession::create line: 17');
INSERT INTO ACT_CR
	VALUES (1820,
	1823,
	1,
	761,
	17,
	38);
INSERT INTO ACT_SMT
	VALUES (1822,
	1812,
	1824,
	20,
	3,
	'WorkoutSession::create line: 20');
INSERT INTO ACT_CR
	VALUES (1822,
	1825,
	1,
	685,
	20,
	37);
INSERT INTO ACT_SMT
	VALUES (1824,
	1812,
	1826,
	23,
	3,
	'WorkoutSession::create line: 23');
INSERT INTO ACT_REL
	VALUES (1824,
	1823,
	1811,
	'''represents path for''',
	780,
	23,
	37,
	23,
	40);
INSERT INTO ACT_SMT
	VALUES (1826,
	1812,
	1827,
	24,
	3,
	'WorkoutSession::create line: 24');
INSERT INTO ACT_REL
	VALUES (1826,
	1819,
	1811,
	'''acts as the stopwatch for''',
	777,
	24,
	41,
	24,
	44);
INSERT INTO ACT_SMT
	VALUES (1827,
	1812,
	0,
	25,
	3,
	'WorkoutSession::create line: 25');
INSERT INTO ACT_REL
	VALUES (1827,
	1825,
	1811,
	'''indicates current status of''',
	684,
	25,
	36,
	25,
	39);
INSERT INTO V_VAR
	VALUES (1819,
	1812,
	'workoutTimer',
	1,
	432);
INSERT INTO V_INT
	VALUES (1819,
	0,
	656);
INSERT INTO V_VAR
	VALUES (1823,
	1812,
	'trackLog',
	1,
	432);
INSERT INTO V_INT
	VALUES (1823,
	0,
	761);
INSERT INTO V_VAR
	VALUES (1825,
	1812,
	'display',
	1,
	432);
INSERT INTO V_INT
	VALUES (1825,
	0,
	685);
INSERT INTO O_TFR
	VALUES (1828,
	640,
	'reset',
	'',
	204,
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
	699);
INSERT INTO ACT_OPB
	VALUES (1829,
	1828);
INSERT INTO ACT_ACT
	VALUES (1829,
	'operation',
	0,
	1830,
	0,
	0,
	'WorkoutSession::reset',
	0);
INSERT INTO ACT_BLK
	VALUES (1830,
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
	1829,
	0);
INSERT INTO ACT_SMT
	VALUES (1831,
	1830,
	1832,
	5,
	1,
	'WorkoutSession::reset line: 5');
INSERT INTO ACT_SEL
	VALUES (1831,
	1833,
	1,
	'one',
	1834);
INSERT INTO ACT_SR
	VALUES (1831);
INSERT INTO ACT_LNK
	VALUES (1835,
	'''is timed by''',
	1831,
	777,
	0,
	2,
	656,
	5,
	42,
	5,
	55,
	5,
	58);
INSERT INTO ACT_SMT
	VALUES (1832,
	1830,
	1836,
	6,
	1,
	'WorkoutSession::reset line: 6');
INSERT INTO ACT_TFM
	VALUES (1832,
	1821,
	1833,
	6,
	14,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1836,
	1830,
	1837,
	9,
	1,
	'WorkoutSession::reset line: 9');
INSERT INTO ACT_SEL
	VALUES (1836,
	1838,
	1,
	'one',
	1839);
INSERT INTO ACT_SR
	VALUES (1836);
INSERT INTO ACT_LNK
	VALUES (1840,
	'''captures path in''',
	1836,
	780,
	0,
	2,
	761,
	9,
	38,
	9,
	47,
	9,
	50);
INSERT INTO ACT_SMT
	VALUES (1837,
	1830,
	1841,
	10,
	1,
	'WorkoutSession::reset line: 10');
INSERT INTO ACT_TFM
	VALUES (1837,
	1669,
	1838,
	10,
	10,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1841,
	1830,
	1842,
	11,
	1,
	'WorkoutSession::reset line: 11');
INSERT INTO ACT_TFM
	VALUES (1841,
	1729,
	1838,
	11,
	10,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1842,
	1830,
	1843,
	14,
	1,
	'WorkoutSession::reset line: 14');
INSERT INTO ACT_SEL
	VALUES (1842,
	1844,
	1,
	'many',
	1845);
INSERT INTO ACT_SR
	VALUES (1842);
INSERT INTO ACT_LNK
	VALUES (1846,
	'''includes''',
	1842,
	736,
	0,
	3,
	717,
	14,
	40,
	14,
	49,
	14,
	53);
INSERT INTO ACT_SMT
	VALUES (1843,
	1830,
	1847,
	15,
	1,
	'WorkoutSession::reset line: 15');
INSERT INTO ACT_FOR
	VALUES (1843,
	1848,
	1,
	1849,
	1844,
	717);
INSERT INTO ACT_SMT
	VALUES (1847,
	1830,
	1850,
	21,
	1,
	'WorkoutSession::reset line: 21');
INSERT INTO ACT_SEL
	VALUES (1847,
	1851,
	1,
	'one',
	1852);
INSERT INTO ACT_SR
	VALUES (1847);
INSERT INTO ACT_LNK
	VALUES (1853,
	'''is currently executing''',
	1847,
	793,
	0,
	2,
	789,
	21,
	43,
	21,
	48,
	21,
	52);
INSERT INTO ACT_SMT
	VALUES (1850,
	1830,
	1854,
	22,
	1,
	'WorkoutSession::reset line: 22');
INSERT INTO ACT_IF
	VALUES (1850,
	1855,
	1856,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1854,
	1830,
	1857,
	33,
	1,
	'WorkoutSession::reset line: 33');
INSERT INTO ACT_SEL
	VALUES (1854,
	1858,
	1,
	'many',
	1859);
INSERT INTO ACT_SR
	VALUES (1854);
INSERT INTO ACT_LNK
	VALUES (1860,
	'''has executed''',
	1854,
	800,
	0,
	3,
	789,
	33,
	36,
	33,
	41,
	33,
	45);
INSERT INTO ACT_SMT
	VALUES (1857,
	1830,
	1861,
	34,
	1,
	'WorkoutSession::reset line: 34');
INSERT INTO ACT_FOR
	VALUES (1857,
	1862,
	1,
	1863,
	1858,
	789);
INSERT INTO ACT_SMT
	VALUES (1861,
	1830,
	1864,
	45,
	1,
	'WorkoutSession::reset line: 45');
INSERT INTO ACT_AI
	VALUES (1861,
	1865,
	1866,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1864,
	1830,
	0,
	46,
	1,
	'WorkoutSession::reset line: 46');
INSERT INTO ACT_TFM
	VALUES (1864,
	1776,
	1867,
	46,
	6,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1834,
	0,
	0,
	5,
	36,
	39,
	0,
	0,
	0,
	0,
	432,
	1830);
INSERT INTO V_IRF
	VALUES (1834,
	1867);
INSERT INTO V_VAL
	VALUES (1839,
	0,
	0,
	9,
	32,
	35,
	0,
	0,
	0,
	0,
	432,
	1830);
INSERT INTO V_IRF
	VALUES (1839,
	1867);
INSERT INTO V_VAL
	VALUES (1845,
	0,
	0,
	14,
	34,
	37,
	0,
	0,
	0,
	0,
	432,
	1830);
INSERT INTO V_IRF
	VALUES (1845,
	1867);
INSERT INTO V_VAL
	VALUES (1852,
	0,
	0,
	21,
	37,
	40,
	0,
	0,
	0,
	0,
	432,
	1830);
INSERT INTO V_IRF
	VALUES (1852,
	1867);
INSERT INTO V_VAL
	VALUES (1868,
	0,
	0,
	22,
	16,
	28,
	0,
	0,
	0,
	0,
	432,
	1830);
INSERT INTO V_IRF
	VALUES (1868,
	1851);
INSERT INTO V_VAL
	VALUES (1869,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1830);
INSERT INTO V_UNY
	VALUES (1869,
	1868,
	'empty');
INSERT INTO V_VAL
	VALUES (1856,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1830);
INSERT INTO V_UNY
	VALUES (1856,
	1869,
	'not');
INSERT INTO V_VAL
	VALUES (1859,
	0,
	0,
	33,
	30,
	33,
	0,
	0,
	0,
	0,
	432,
	1830);
INSERT INTO V_IRF
	VALUES (1859,
	1867);
INSERT INTO V_VAL
	VALUES (1870,
	1,
	0,
	45,
	1,
	4,
	0,
	0,
	0,
	0,
	432,
	1830);
INSERT INTO V_IRF
	VALUES (1870,
	1867);
INSERT INTO V_VAL
	VALUES (1866,
	1,
	0,
	45,
	6,
	24,
	0,
	0,
	0,
	0,
	92,
	1830);
INSERT INTO V_AVL
	VALUES (1866,
	1870,
	640,
	1034);
INSERT INTO V_VAL
	VALUES (1865,
	0,
	0,
	45,
	28,
	30,
	0,
	0,
	0,
	0,
	92,
	1830);
INSERT INTO V_LRL
	VALUES (1865,
	'0.0');
INSERT INTO V_VAR
	VALUES (1833,
	1830,
	'workoutTimer',
	1,
	432);
INSERT INTO V_INT
	VALUES (1833,
	0,
	656);
INSERT INTO V_VAR
	VALUES (1867,
	1830,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (1867,
	0,
	640);
INSERT INTO V_VAR
	VALUES (1838,
	1830,
	'trackLog',
	1,
	432);
INSERT INTO V_INT
	VALUES (1838,
	0,
	761);
INSERT INTO V_VAR
	VALUES (1844,
	1830,
	'goalSpecs',
	1,
	572);
INSERT INTO V_INS
	VALUES (1844,
	717);
INSERT INTO V_VAR
	VALUES (1849,
	1830,
	'goalSpec',
	1,
	432);
INSERT INTO V_INT
	VALUES (1849,
	1,
	717);
INSERT INTO V_VAR
	VALUES (1851,
	1830,
	'executingGoal',
	1,
	432);
INSERT INTO V_INT
	VALUES (1851,
	0,
	789);
INSERT INTO V_VAR
	VALUES (1858,
	1830,
	'goals',
	1,
	572);
INSERT INTO V_INS
	VALUES (1858,
	789);
INSERT INTO V_VAR
	VALUES (1863,
	1830,
	'goal',
	1,
	432);
INSERT INTO V_INT
	VALUES (1863,
	1,
	789);
INSERT INTO ACT_BLK
	VALUES (1848,
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
	1829,
	0);
INSERT INTO ACT_SMT
	VALUES (1871,
	1848,
	1872,
	16,
	3,
	'WorkoutSession::reset line: 16');
INSERT INTO ACT_UNR
	VALUES (1871,
	1867,
	1849,
	'''includes''',
	736,
	16,
	38,
	16,
	42);
INSERT INTO ACT_SMT
	VALUES (1872,
	1848,
	0,
	17,
	3,
	'WorkoutSession::reset line: 17');
INSERT INTO ACT_DEL
	VALUES (1872,
	1849);
INSERT INTO ACT_BLK
	VALUES (1855,
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
	1829,
	0);
INSERT INTO ACT_SMT
	VALUES (1873,
	1855,
	1874,
	23,
	3,
	'WorkoutSession::reset line: 23');
INSERT INTO ACT_SEL
	VALUES (1873,
	1875,
	1,
	'one',
	1876);
INSERT INTO ACT_SR
	VALUES (1873);
INSERT INTO ACT_LNK
	VALUES (1877,
	'''has open''',
	1873,
	803,
	0,
	2,
	798,
	23,
	56,
	23,
	68,
	23,
	72);
INSERT INTO ACT_SMT
	VALUES (1874,
	1855,
	1878,
	24,
	3,
	'WorkoutSession::reset line: 24');
INSERT INTO ACT_IF
	VALUES (1874,
	1879,
	1880,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1878,
	1855,
	1881,
	28,
	3,
	'WorkoutSession::reset line: 28');
INSERT INTO ACT_UNR
	VALUES (1878,
	1867,
	1851,
	'''is currently executing''',
	793,
	28,
	43,
	28,
	47);
INSERT INTO ACT_SMT
	VALUES (1881,
	1855,
	0,
	29,
	3,
	'WorkoutSession::reset line: 29');
INSERT INTO ACT_DEL
	VALUES (1881,
	1851);
INSERT INTO V_VAL
	VALUES (1876,
	0,
	0,
	23,
	41,
	53,
	0,
	0,
	0,
	0,
	432,
	1855);
INSERT INTO V_IRF
	VALUES (1876,
	1851);
INSERT INTO V_VAL
	VALUES (1882,
	0,
	0,
	24,
	18,
	32,
	0,
	0,
	0,
	0,
	432,
	1855);
INSERT INTO V_IRF
	VALUES (1882,
	1875);
INSERT INTO V_VAL
	VALUES (1883,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1855);
INSERT INTO V_UNY
	VALUES (1883,
	1882,
	'empty');
INSERT INTO V_VAL
	VALUES (1880,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1855);
INSERT INTO V_UNY
	VALUES (1880,
	1883,
	'not');
INSERT INTO V_VAR
	VALUES (1875,
	1855,
	'openAchievement',
	1,
	432);
INSERT INTO V_INT
	VALUES (1875,
	0,
	798);
INSERT INTO ACT_BLK
	VALUES (1879,
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
	1829,
	0);
INSERT INTO ACT_SMT
	VALUES (1884,
	1879,
	1885,
	25,
	5,
	'WorkoutSession::reset line: 25');
INSERT INTO ACT_UNR
	VALUES (1884,
	1875,
	1851,
	'''is open for''',
	803,
	25,
	56,
	25,
	60);
INSERT INTO ACT_SMT
	VALUES (1885,
	1879,
	0,
	26,
	5,
	'WorkoutSession::reset line: 26');
INSERT INTO ACT_DEL
	VALUES (1885,
	1875);
INSERT INTO ACT_BLK
	VALUES (1862,
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
	1829,
	0);
INSERT INTO ACT_SMT
	VALUES (1886,
	1862,
	1887,
	35,
	3,
	'WorkoutSession::reset line: 35');
INSERT INTO ACT_SEL
	VALUES (1886,
	1888,
	1,
	'many',
	1889);
INSERT INTO ACT_SR
	VALUES (1886);
INSERT INTO ACT_LNK
	VALUES (1890,
	'''has recorded''',
	1886,
	796,
	0,
	3,
	798,
	35,
	45,
	35,
	57,
	35,
	61);
INSERT INTO ACT_SMT
	VALUES (1887,
	1862,
	1891,
	36,
	3,
	'WorkoutSession::reset line: 36');
INSERT INTO ACT_FOR
	VALUES (1887,
	1892,
	1,
	1893,
	1888,
	798);
INSERT INTO ACT_SMT
	VALUES (1891,
	1862,
	1894,
	40,
	3,
	'WorkoutSession::reset line: 40');
INSERT INTO ACT_UNR
	VALUES (1891,
	1867,
	1863,
	'''has executed''',
	800,
	40,
	34,
	40,
	38);
INSERT INTO ACT_SMT
	VALUES (1894,
	1862,
	0,
	41,
	3,
	'WorkoutSession::reset line: 41');
INSERT INTO ACT_DEL
	VALUES (1894,
	1863);
INSERT INTO V_VAL
	VALUES (1889,
	0,
	0,
	35,
	39,
	42,
	0,
	0,
	0,
	0,
	432,
	1862);
INSERT INTO V_IRF
	VALUES (1889,
	1863);
INSERT INTO V_VAR
	VALUES (1888,
	1862,
	'achievements',
	1,
	572);
INSERT INTO V_INS
	VALUES (1888,
	798);
INSERT INTO V_VAR
	VALUES (1893,
	1862,
	'achievement',
	1,
	432);
INSERT INTO V_INT
	VALUES (1893,
	1,
	798);
INSERT INTO ACT_BLK
	VALUES (1892,
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
	1829,
	0);
INSERT INTO ACT_SMT
	VALUES (1895,
	1892,
	1896,
	37,
	5,
	'WorkoutSession::reset line: 37');
INSERT INTO ACT_UNR
	VALUES (1895,
	1863,
	1893,
	'''has recorded''',
	796,
	37,
	43,
	37,
	47);
INSERT INTO ACT_SMT
	VALUES (1896,
	1892,
	0,
	38,
	5,
	'WorkoutSession::reset line: 38');
INSERT INTO ACT_DEL
	VALUES (1896,
	1893);
INSERT INTO O_NBATTR
	VALUES (1803,
	640);
INSERT INTO O_BATTR
	VALUES (1803,
	640);
INSERT INTO O_ATTR
	VALUES (1803,
	640,
	0,
	'startDate',
	'UTC Date on which this session commenced.',
	'',
	'startDate',
	0,
	227,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1805,
	640);
INSERT INTO O_BATTR
	VALUES (1805,
	640);
INSERT INTO O_ATTR
	VALUES (1805,
	640,
	1803,
	'startTime',
	'UTC time at which this session commenced.',
	'',
	'startTime',
	0,
	264,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (1062,
	640,
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
	VALUES (1897,
	640,
	1062,
	1);
INSERT INTO ACT_ACT
	VALUES (1897,
	'derived attribute',
	0,
	1898,
	0,
	0,
	'WorkoutSession::currentSpeed',
	0);
INSERT INTO ACT_BLK
	VALUES (1898,
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
	1897,
	0);
INSERT INTO ACT_SMT
	VALUES (1899,
	1898,
	1900,
	6,
	1,
	'WorkoutSession::currentSpeed line: 6');
INSERT INTO ACT_SEL
	VALUES (1899,
	1901,
	1,
	'one',
	1902);
INSERT INTO ACT_SR
	VALUES (1899);
INSERT INTO ACT_LNK
	VALUES (1903,
	'''captures path in''',
	1899,
	780,
	1904,
	2,
	761,
	6,
	39,
	6,
	48,
	6,
	51);
INSERT INTO ACT_LNK
	VALUES (1904,
	'''has last''',
	0,
	768,
	0,
	2,
	763,
	6,
	72,
	6,
	83,
	6,
	86);
INSERT INTO ACT_SMT
	VALUES (1900,
	1898,
	1905,
	7,
	1,
	'WorkoutSession::currentSpeed line: 7');
INSERT INTO ACT_AI
	VALUES (1900,
	1906,
	1907,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1905,
	1898,
	1908,
	8,
	1,
	'WorkoutSession::currentSpeed line: 8');
INSERT INTO ACT_IF
	VALUES (1905,
	1909,
	1910,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1908,
	1898,
	0,
	30,
	1,
	'WorkoutSession::currentSpeed line: 30');
INSERT INTO ACT_AI
	VALUES (1908,
	1911,
	1912,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1902,
	0,
	0,
	6,
	33,
	36,
	0,
	0,
	0,
	0,
	432,
	1898);
INSERT INTO V_IRF
	VALUES (1902,
	1913);
INSERT INTO V_VAL
	VALUES (1907,
	1,
	1,
	7,
	1,
	5,
	0,
	0,
	0,
	0,
	92,
	1898);
INSERT INTO V_TVL
	VALUES (1907,
	1914);
INSERT INTO V_VAL
	VALUES (1906,
	0,
	0,
	7,
	9,
	11,
	0,
	0,
	0,
	0,
	92,
	1898);
INSERT INTO V_LRL
	VALUES (1906,
	'0.0');
INSERT INTO V_VAL
	VALUES (1915,
	0,
	0,
	8,
	16,
	24,
	0,
	0,
	0,
	0,
	432,
	1898);
INSERT INTO V_IRF
	VALUES (1915,
	1901);
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
	56,
	1898);
INSERT INTO V_UNY
	VALUES (1916,
	1915,
	'empty');
INSERT INTO V_VAL
	VALUES (1910,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1898);
INSERT INTO V_UNY
	VALUES (1910,
	1916,
	'not');
INSERT INTO V_VAL
	VALUES (1917,
	1,
	0,
	30,
	1,
	4,
	0,
	0,
	0,
	0,
	432,
	1898);
INSERT INTO V_IRF
	VALUES (1917,
	1913);
INSERT INTO V_VAL
	VALUES (1912,
	1,
	0,
	30,
	6,
	17,
	0,
	0,
	0,
	0,
	92,
	1898);
INSERT INTO V_AVL
	VALUES (1912,
	1917,
	640,
	1062);
INSERT INTO V_VAL
	VALUES (1911,
	0,
	0,
	30,
	21,
	25,
	0,
	0,
	0,
	0,
	92,
	1898);
INSERT INTO V_TVL
	VALUES (1911,
	1914);
INSERT INTO V_VAR
	VALUES (1901,
	1898,
	'lastPoint',
	1,
	432);
INSERT INTO V_INT
	VALUES (1901,
	0,
	763);
INSERT INTO V_VAR
	VALUES (1913,
	1898,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (1913,
	0,
	640);
INSERT INTO V_VAR
	VALUES (1914,
	1898,
	'speed',
	1,
	92);
INSERT INTO V_TRN
	VALUES (1914,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (1909,
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
	1897,
	0);
INSERT INTO ACT_SMT
	VALUES (1918,
	1909,
	1919,
	9,
	3,
	'WorkoutSession::currentSpeed line: 9');
INSERT INTO ACT_AI
	VALUES (1918,
	1920,
	1921,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1919,
	1909,
	1922,
	10,
	3,
	'WorkoutSession::currentSpeed line: 10');
INSERT INTO ACT_AI
	VALUES (1919,
	1923,
	1924,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1922,
	1909,
	1925,
	11,
	3,
	'WorkoutSession::currentSpeed line: 11');
INSERT INTO ACT_AI
	VALUES (1922,
	1926,
	1927,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1925,
	1909,
	1928,
	12,
	3,
	'WorkoutSession::currentSpeed line: 12');
INSERT INTO ACT_AI
	VALUES (1925,
	1929,
	1930,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1928,
	1909,
	1931,
	13,
	3,
	'WorkoutSession::currentSpeed line: 13');
INSERT INTO ACT_AI
	VALUES (1928,
	1932,
	1933,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1931,
	1909,
	1934,
	14,
	3,
	'WorkoutSession::currentSpeed line: 14');
INSERT INTO ACT_WHL
	VALUES (1931,
	1935,
	1936);
INSERT INTO ACT_SMT
	VALUES (1934,
	1909,
	1937,
	25,
	3,
	'WorkoutSession::currentSpeed line: 25');
INSERT INTO ACT_AI
	VALUES (1934,
	1938,
	1939,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1937,
	1909,
	0,
	26,
	3,
	'WorkoutSession::currentSpeed line: 26');
INSERT INTO ACT_AI
	VALUES (1937,
	1940,
	1941,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1921,
	1,
	1,
	9,
	3,
	8,
	0,
	0,
	0,
	0,
	432,
	1909);
INSERT INTO V_IRF
	VALUES (1921,
	1942);
INSERT INTO V_VAL
	VALUES (1920,
	0,
	0,
	9,
	12,
	20,
	0,
	0,
	0,
	0,
	432,
	1909);
INSERT INTO V_IRF
	VALUES (1920,
	1901);
INSERT INTO V_VAL
	VALUES (1924,
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
	1909);
INSERT INTO V_TVL
	VALUES (1924,
	1943);
INSERT INTO V_VAL
	VALUES (1923,
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
	1909);
INSERT INTO V_SCV
	VALUES (1923,
	1944,
	14);
INSERT INTO V_VAL
	VALUES (1927,
	1,
	1,
	11,
	3,
	15,
	0,
	0,
	0,
	0,
	92,
	1909);
INSERT INTO V_TVL
	VALUES (1927,
	1945);
INSERT INTO V_VAL
	VALUES (1926,
	0,
	0,
	11,
	19,
	21,
	0,
	0,
	0,
	0,
	92,
	1909);
INSERT INTO V_LRL
	VALUES (1926,
	'0.0');
INSERT INTO V_VAL
	VALUES (1930,
	1,
	1,
	12,
	3,
	13,
	0,
	0,
	0,
	0,
	92,
	1909);
INSERT INTO V_TVL
	VALUES (1930,
	1946);
INSERT INTO V_VAL
	VALUES (1929,
	0,
	0,
	12,
	17,
	19,
	0,
	0,
	0,
	0,
	92,
	1909);
INSERT INTO V_LRL
	VALUES (1929,
	'0.0');
INSERT INTO V_VAL
	VALUES (1933,
	1,
	0,
	13,
	3,
	13,
	0,
	0,
	0,
	0,
	92,
	1909);
INSERT INTO V_TVL
	VALUES (1933,
	1946);
INSERT INTO V_VAL
	VALUES (1947,
	0,
	0,
	13,
	17,
	25,
	0,
	0,
	0,
	0,
	432,
	1909);
INSERT INTO V_IRF
	VALUES (1947,
	1901);
INSERT INTO V_VAL
	VALUES (1932,
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
	1909);
INSERT INTO V_AVL
	VALUES (1932,
	1947,
	763,
	1626);
INSERT INTO V_VAL
	VALUES (1948,
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
	1909);
INSERT INTO V_TVL
	VALUES (1948,
	1943);
INSERT INTO V_VAL
	VALUES (1935,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1909);
INSERT INTO V_BIN
	VALUES (1935,
	1949,
	1948,
	'>');
INSERT INTO V_VAL
	VALUES (1949,
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
	1909);
INSERT INTO V_LIN
	VALUES (1949,
	'0');
INSERT INTO V_VAL
	VALUES (1939,
	1,
	0,
	25,
	3,
	13,
	0,
	0,
	0,
	0,
	92,
	1909);
INSERT INTO V_TVL
	VALUES (1939,
	1946);
INSERT INTO V_VAL
	VALUES (1950,
	0,
	0,
	25,
	17,
	27,
	0,
	0,
	0,
	0,
	92,
	1909);
INSERT INTO V_TVL
	VALUES (1950,
	1946);
INSERT INTO V_VAL
	VALUES (1938,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	92,
	1909);
INSERT INTO V_BIN
	VALUES (1938,
	1951,
	1950,
	'-');
INSERT INTO V_VAL
	VALUES (1952,
	0,
	0,
	25,
	31,
	36,
	0,
	0,
	0,
	0,
	432,
	1909);
INSERT INTO V_IRF
	VALUES (1952,
	1942);
INSERT INTO V_VAL
	VALUES (1951,
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
	1909);
INSERT INTO V_AVL
	VALUES (1951,
	1952,
	763,
	1626);
INSERT INTO V_VAL
	VALUES (1941,
	1,
	0,
	26,
	3,
	7,
	0,
	0,
	0,
	0,
	92,
	1909);
INSERT INTO V_TVL
	VALUES (1941,
	1914);
INSERT INTO V_VAL
	VALUES (1953,
	0,
	0,
	26,
	12,
	24,
	0,
	0,
	0,
	0,
	92,
	1909);
INSERT INTO V_TVL
	VALUES (1953,
	1945);
INSERT INTO V_VAL
	VALUES (1954,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	92,
	1909);
INSERT INTO V_BIN
	VALUES (1954,
	1955,
	1953,
	'/');
INSERT INTO V_VAL
	VALUES (1955,
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
	1909);
INSERT INTO V_LIN
	VALUES (1955,
	'1000');
INSERT INTO V_VAL
	VALUES (1940,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	92,
	1909);
INSERT INTO V_BIN
	VALUES (1940,
	1956,
	1954,
	'/');
INSERT INTO V_VAL
	VALUES (1957,
	0,
	0,
	26,
	37,
	47,
	0,
	0,
	0,
	0,
	92,
	1909);
INSERT INTO V_TVL
	VALUES (1957,
	1946);
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
	92,
	1909);
INSERT INTO V_BIN
	VALUES (1956,
	1958,
	1957,
	'/');
INSERT INTO V_VAL
	VALUES (1958,
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
	1909);
INSERT INTO V_SCV
	VALUES (1958,
	1959,
	14);
INSERT INTO V_VAR
	VALUES (1942,
	1909,
	'cursor',
	1,
	432);
INSERT INTO V_INT
	VALUES (1942,
	0,
	763);
INSERT INTO V_VAR
	VALUES (1943,
	1909,
	'index',
	1,
	14);
INSERT INTO V_TRN
	VALUES (1943,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1945,
	1909,
	'totalDistance',
	1,
	92);
INSERT INTO V_TRN
	VALUES (1945,
	0,
	'');
INSERT INTO V_VAR
	VALUES (1946,
	1909,
	'elapsedTime',
	1,
	92);
INSERT INTO V_TRN
	VALUES (1946,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (1936,
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
	1897,
	0);
INSERT INTO ACT_SMT
	VALUES (1960,
	1936,
	1961,
	15,
	5,
	'WorkoutSession::currentSpeed line: 15');
INSERT INTO ACT_SEL
	VALUES (1960,
	1962,
	1,
	'one',
	1963);
INSERT INTO ACT_SR
	VALUES (1960);
INSERT INTO ACT_LNK
	VALUES (1964,
	'preceeds',
	1960,
	765,
	0,
	2,
	763,
	15,
	49,
	15,
	60,
	15,
	63);
INSERT INTO ACT_SMT
	VALUES (1961,
	1936,
	1965,
	16,
	5,
	'WorkoutSession::currentSpeed line: 16');
INSERT INTO ACT_IF
	VALUES (1961,
	1966,
	1967,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1965,
	1936,
	1968,
	19,
	5,
	'WorkoutSession::currentSpeed line: 19');
INSERT INTO ACT_AI
	VALUES (1965,
	1969,
	1970,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1968,
	1936,
	1971,
	21,
	5,
	'WorkoutSession::currentSpeed line: 21');
INSERT INTO ACT_AI
	VALUES (1968,
	1972,
	1973,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1971,
	1936,
	1974,
	22,
	5,
	'WorkoutSession::currentSpeed line: 22');
INSERT INTO ACT_AI
	VALUES (1971,
	1975,
	1976,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1974,
	1936,
	0,
	23,
	5,
	'WorkoutSession::currentSpeed line: 23');
INSERT INTO ACT_AI
	VALUES (1974,
	1977,
	1978,
	0,
	0);
INSERT INTO V_VAL
	VALUES (1963,
	0,
	0,
	15,
	41,
	46,
	0,
	0,
	0,
	0,
	432,
	1936);
INSERT INTO V_IRF
	VALUES (1963,
	1942);
INSERT INTO V_VAL
	VALUES (1979,
	0,
	0,
	16,
	16,
	28,
	0,
	0,
	0,
	0,
	432,
	1936);
INSERT INTO V_IRF
	VALUES (1979,
	1962);
INSERT INTO V_VAL
	VALUES (1967,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1936);
INSERT INTO V_UNY
	VALUES (1967,
	1979,
	'empty');
INSERT INTO V_VAL
	VALUES (1970,
	1,
	1,
	19,
	10,
	17,
	0,
	0,
	0,
	0,
	92,
	1936);
INSERT INTO V_TVL
	VALUES (1970,
	1980);
INSERT INTO V_VAL
	VALUES (1969,
	0,
	0,
	19,
	31,
	42,
	19,
	44,
	20,
	70,
	92,
	1936);
INSERT INTO V_MSV
	VALUES (1969,
	0,
	582,
	1,
	19,
	21,
	0);
INSERT INTO V_VAL
	VALUES (1981,
	0,
	0,
	19,
	52,
	57,
	0,
	0,
	0,
	0,
	432,
	1936);
INSERT INTO V_IRF
	VALUES (1981,
	1942);
INSERT INTO V_VAL
	VALUES (1982,
	0,
	0,
	19,
	59,
	66,
	0,
	0,
	0,
	0,
	92,
	1936);
INSERT INTO V_AVL
	VALUES (1982,
	1981,
	763,
	1630);
INSERT INTO V_PAR
	VALUES (1982,
	0,
	1969,
	'fromLat',
	1983,
	19,
	44);
INSERT INTO V_VAL
	VALUES (1984,
	0,
	0,
	19,
	79,
	84,
	0,
	0,
	0,
	0,
	432,
	1936);
INSERT INTO V_IRF
	VALUES (1984,
	1942);
INSERT INTO V_VAL
	VALUES (1983,
	0,
	0,
	19,
	86,
	94,
	0,
	0,
	0,
	0,
	92,
	1936);
INSERT INTO V_AVL
	VALUES (1983,
	1984,
	763,
	1633);
INSERT INTO V_PAR
	VALUES (1983,
	0,
	1969,
	'fromLong',
	1985,
	19,
	69);
INSERT INTO V_VAL
	VALUES (1986,
	0,
	0,
	20,
	46,
	58,
	0,
	0,
	0,
	0,
	432,
	1936);
INSERT INTO V_IRF
	VALUES (1986,
	1962);
INSERT INTO V_VAL
	VALUES (1985,
	0,
	0,
	20,
	60,
	67,
	0,
	0,
	0,
	0,
	92,
	1936);
INSERT INTO V_AVL
	VALUES (1985,
	1986,
	763,
	1630);
INSERT INTO V_PAR
	VALUES (1985,
	0,
	1969,
	'toLat',
	1987,
	20,
	39);
INSERT INTO V_VAL
	VALUES (1988,
	0,
	0,
	20,
	78,
	90,
	0,
	0,
	0,
	0,
	432,
	1936);
INSERT INTO V_IRF
	VALUES (1988,
	1962);
INSERT INTO V_VAL
	VALUES (1987,
	0,
	0,
	20,
	92,
	100,
	0,
	0,
	0,
	0,
	92,
	1936);
INSERT INTO V_AVL
	VALUES (1987,
	1988,
	763,
	1633);
INSERT INTO V_PAR
	VALUES (1987,
	0,
	1969,
	'toLong',
	0,
	20,
	70);
INSERT INTO V_VAL
	VALUES (1973,
	1,
	0,
	21,
	5,
	17,
	0,
	0,
	0,
	0,
	92,
	1936);
INSERT INTO V_TVL
	VALUES (1973,
	1945);
INSERT INTO V_VAL
	VALUES (1989,
	0,
	0,
	21,
	21,
	33,
	0,
	0,
	0,
	0,
	92,
	1936);
INSERT INTO V_TVL
	VALUES (1989,
	1945);
INSERT INTO V_VAL
	VALUES (1972,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	92,
	1936);
INSERT INTO V_BIN
	VALUES (1972,
	1990,
	1989,
	'+');
INSERT INTO V_VAL
	VALUES (1990,
	0,
	0,
	21,
	37,
	44,
	0,
	0,
	0,
	0,
	92,
	1936);
INSERT INTO V_TVL
	VALUES (1990,
	1980);
INSERT INTO V_VAL
	VALUES (1976,
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
	1936);
INSERT INTO V_TVL
	VALUES (1976,
	1943);
INSERT INTO V_VAL
	VALUES (1991,
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
	1936);
INSERT INTO V_TVL
	VALUES (1991,
	1943);
INSERT INTO V_VAL
	VALUES (1975,
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
	1936);
INSERT INTO V_BIN
	VALUES (1975,
	1992,
	1991,
	'-');
INSERT INTO V_VAL
	VALUES (1992,
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
	1936);
INSERT INTO V_LIN
	VALUES (1992,
	'1');
INSERT INTO V_VAL
	VALUES (1978,
	1,
	0,
	23,
	5,
	10,
	0,
	0,
	0,
	0,
	432,
	1936);
INSERT INTO V_IRF
	VALUES (1978,
	1942);
INSERT INTO V_VAL
	VALUES (1977,
	0,
	0,
	23,
	14,
	26,
	0,
	0,
	0,
	0,
	432,
	1936);
INSERT INTO V_IRF
	VALUES (1977,
	1962);
INSERT INTO V_VAR
	VALUES (1962,
	1936,
	'previousPoint',
	1,
	432);
INSERT INTO V_INT
	VALUES (1962,
	0,
	763);
INSERT INTO V_VAR
	VALUES (1980,
	1936,
	'distance',
	1,
	92);
INSERT INTO V_TRN
	VALUES (1980,
	0,
	'');
INSERT INTO ACT_BLK
	VALUES (1966,
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
	1897,
	0);
INSERT INTO ACT_SMT
	VALUES (1993,
	1966,
	0,
	17,
	7,
	'WorkoutSession::currentSpeed line: 17');
INSERT INTO ACT_BRK
	VALUES (1993);
INSERT INTO O_BATTR
	VALUES (1062,
	640);
INSERT INTO O_ATTR
	VALUES (1062,
	640,
	1805,
	'currentSpeed',
	'The current speed of the device, expressed in kilometers per hour, averaged 
over a predefined number of the most recently acquired track points.
',
	'',
	'currentSpeed',
	0,
	92,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (1082,
	640,
	'// Calculate current pace from current speed, converting from km/hour to minutes/km.

if ( self.currentSpeed != 0.0 )
  self.currentPace = 60.0 / self.currentSpeed;
else
  self.currentPace = 0.0;
end if;',
	1);
INSERT INTO ACT_DAB
	VALUES (1994,
	640,
	1082,
	1);
INSERT INTO ACT_ACT
	VALUES (1994,
	'derived attribute',
	0,
	1995,
	0,
	0,
	'WorkoutSession::currentPace',
	0);
INSERT INTO ACT_BLK
	VALUES (1995,
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
	1994,
	0);
INSERT INTO ACT_SMT
	VALUES (1996,
	1995,
	0,
	3,
	1,
	'WorkoutSession::currentPace line: 3');
INSERT INTO ACT_IF
	VALUES (1996,
	1997,
	1998,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (1999,
	1995,
	0,
	5,
	1,
	'WorkoutSession::currentPace line: 5');
INSERT INTO ACT_E
	VALUES (1999,
	2000,
	1996);
INSERT INTO V_VAL
	VALUES (2001,
	0,
	0,
	3,
	6,
	9,
	0,
	0,
	0,
	0,
	432,
	1995);
INSERT INTO V_IRF
	VALUES (2001,
	2002);
INSERT INTO V_VAL
	VALUES (2003,
	0,
	0,
	3,
	11,
	22,
	0,
	0,
	0,
	0,
	92,
	1995);
INSERT INTO V_AVL
	VALUES (2003,
	2001,
	640,
	1062);
INSERT INTO V_VAL
	VALUES (1998,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	1995);
INSERT INTO V_BIN
	VALUES (1998,
	2004,
	2003,
	'!=');
INSERT INTO V_VAL
	VALUES (2004,
	0,
	0,
	3,
	27,
	29,
	0,
	0,
	0,
	0,
	92,
	1995);
INSERT INTO V_LRL
	VALUES (2004,
	'0.0');
INSERT INTO V_VAR
	VALUES (2002,
	1995,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (2002,
	0,
	640);
INSERT INTO ACT_BLK
	VALUES (1997,
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
	1994,
	0);
INSERT INTO ACT_SMT
	VALUES (2005,
	1997,
	0,
	4,
	3,
	'WorkoutSession::currentPace line: 4');
INSERT INTO ACT_AI
	VALUES (2005,
	2006,
	2007,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2008,
	1,
	0,
	4,
	3,
	6,
	0,
	0,
	0,
	0,
	432,
	1997);
INSERT INTO V_IRF
	VALUES (2008,
	2002);
INSERT INTO V_VAL
	VALUES (2007,
	1,
	0,
	4,
	8,
	18,
	0,
	0,
	0,
	0,
	92,
	1997);
INSERT INTO V_AVL
	VALUES (2007,
	2008,
	640,
	1082);
INSERT INTO V_VAL
	VALUES (2009,
	0,
	0,
	4,
	22,
	25,
	0,
	0,
	0,
	0,
	92,
	1997);
INSERT INTO V_LRL
	VALUES (2009,
	'60.0');
INSERT INTO V_VAL
	VALUES (2006,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	92,
	1997);
INSERT INTO V_BIN
	VALUES (2006,
	2010,
	2009,
	'/');
INSERT INTO V_VAL
	VALUES (2011,
	0,
	0,
	4,
	29,
	32,
	0,
	0,
	0,
	0,
	432,
	1997);
INSERT INTO V_IRF
	VALUES (2011,
	2002);
INSERT INTO V_VAL
	VALUES (2010,
	0,
	0,
	4,
	34,
	45,
	0,
	0,
	0,
	0,
	92,
	1997);
INSERT INTO V_AVL
	VALUES (2010,
	2011,
	640,
	1062);
INSERT INTO ACT_BLK
	VALUES (2000,
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
	1994,
	0);
INSERT INTO ACT_SMT
	VALUES (2012,
	2000,
	0,
	6,
	3,
	'WorkoutSession::currentPace line: 6');
INSERT INTO ACT_AI
	VALUES (2012,
	2013,
	2014,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2015,
	1,
	0,
	6,
	3,
	6,
	0,
	0,
	0,
	0,
	432,
	2000);
INSERT INTO V_IRF
	VALUES (2015,
	2002);
INSERT INTO V_VAL
	VALUES (2014,
	1,
	0,
	6,
	8,
	18,
	0,
	0,
	0,
	0,
	92,
	2000);
INSERT INTO V_AVL
	VALUES (2014,
	2015,
	640,
	1082);
INSERT INTO V_VAL
	VALUES (2013,
	0,
	0,
	6,
	22,
	24,
	0,
	0,
	0,
	0,
	92,
	2000);
INSERT INTO V_LRL
	VALUES (2013,
	'0.0');
INSERT INTO O_BATTR
	VALUES (1082,
	640);
INSERT INTO O_ATTR
	VALUES (1082,
	640,
	1062,
	'currentPace',
	'The inverse of currentSpeed, expressed in minutes per kilometer.',
	'',
	'currentPace',
	0,
	92,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (1102,
	640,
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
	VALUES (2016,
	640,
	1102,
	1);
INSERT INTO ACT_ACT
	VALUES (2016,
	'derived attribute',
	0,
	2017,
	0,
	0,
	'WorkoutSession::currentHeartRate',
	0);
INSERT INTO ACT_BLK
	VALUES (2017,
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
	2016,
	0);
INSERT INTO ACT_SMT
	VALUES (2018,
	2017,
	2019,
	3,
	1,
	'WorkoutSession::currentHeartRate line: 3');
INSERT INTO ACT_SEL
	VALUES (2018,
	2020,
	1,
	'one',
	2021);
INSERT INTO ACT_SR
	VALUES (2018);
INSERT INTO ACT_LNK
	VALUES (2022,
	'''is timed by''',
	2018,
	777,
	0,
	2,
	656,
	3,
	42,
	3,
	55,
	3,
	58);
INSERT INTO ACT_SMT
	VALUES (2019,
	2017,
	2023,
	4,
	1,
	'WorkoutSession::currentHeartRate line: 4');
INSERT INTO ACT_SEL
	VALUES (2019,
	2024,
	1,
	'many',
	2025);
INSERT INTO ACT_SRW
	VALUES (2019,
	2026);
INSERT INTO ACT_LNK
	VALUES (2027,
	'''tracks heart rate over time as''',
	2019,
	783,
	0,
	3,
	784,
	4,
	38,
	4,
	54,
	4,
	57);
INSERT INTO ACT_SMT
	VALUES (2023,
	2017,
	2028,
	6,
	1,
	'WorkoutSession::currentHeartRate line: 6');
INSERT INTO ACT_AI
	VALUES (2023,
	2029,
	2030,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2028,
	2017,
	2031,
	7,
	1,
	'WorkoutSession::currentHeartRate line: 7');
INSERT INTO ACT_AI
	VALUES (2028,
	2032,
	2033,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2031,
	2017,
	2034,
	8,
	1,
	'WorkoutSession::currentHeartRate line: 8');
INSERT INTO ACT_FOR
	VALUES (2031,
	2035,
	1,
	2036,
	2024,
	784);
INSERT INTO ACT_SMT
	VALUES (2034,
	2017,
	0,
	12,
	1,
	'WorkoutSession::currentHeartRate line: 12');
INSERT INTO ACT_IF
	VALUES (2034,
	2037,
	2038,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2039,
	2017,
	0,
	14,
	1,
	'WorkoutSession::currentHeartRate line: 14');
INSERT INTO ACT_E
	VALUES (2039,
	2040,
	2034);
INSERT INTO V_VAL
	VALUES (2021,
	0,
	0,
	3,
	36,
	39,
	0,
	0,
	0,
	0,
	432,
	2017);
INSERT INTO V_IRF
	VALUES (2021,
	2041);
INSERT INTO V_VAL
	VALUES (2025,
	0,
	0,
	4,
	32,
	35,
	0,
	0,
	0,
	0,
	432,
	2017);
INSERT INTO V_IRF
	VALUES (2025,
	2041);
INSERT INTO V_VAL
	VALUES (2042,
	0,
	0,
	5,
	11,
	-1,
	0,
	0,
	0,
	0,
	432,
	2017);
INSERT INTO V_SLR
	VALUES (2042,
	0,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2043,
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
	2017);
INSERT INTO V_AVL
	VALUES (2043,
	2042,
	784,
	1571);
INSERT INTO V_VAL
	VALUES (2026,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	2017);
INSERT INTO V_BIN
	VALUES (2026,
	2044,
	2043,
	'>=');
INSERT INTO V_VAL
	VALUES (2045,
	0,
	0,
	5,
	30,
	41,
	0,
	0,
	0,
	0,
	432,
	2017);
INSERT INTO V_IRF
	VALUES (2045,
	2020);
INSERT INTO V_VAL
	VALUES (2046,
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
	2017);
INSERT INTO V_AVL
	VALUES (2046,
	2045,
	656,
	962);
INSERT INTO V_VAL
	VALUES (2044,
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
	2017);
INSERT INTO V_BIN
	VALUES (2044,
	2047,
	2046,
	'-');
INSERT INTO V_VAL
	VALUES (2048,
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
	2017);
INSERT INTO V_SCV
	VALUES (2048,
	2049,
	14);
INSERT INTO V_VAL
	VALUES (2047,
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
	2017);
INSERT INTO V_BIN
	VALUES (2047,
	2050,
	2048,
	'*');
INSERT INTO V_VAL
	VALUES (2050,
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
	2017);
INSERT INTO V_SCV
	VALUES (2050,
	2051,
	14);
INSERT INTO V_VAL
	VALUES (2030,
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
	2017);
INSERT INTO V_TVL
	VALUES (2030,
	2052);
INSERT INTO V_VAL
	VALUES (2029,
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
	2017);
INSERT INTO V_LIN
	VALUES (2029,
	'0');
INSERT INTO V_VAL
	VALUES (2033,
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
	2017);
INSERT INTO V_TVL
	VALUES (2033,
	2053);
INSERT INTO V_VAL
	VALUES (2032,
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
	2017);
INSERT INTO V_LIN
	VALUES (2032,
	'0');
INSERT INTO V_VAL
	VALUES (2054,
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
	2017);
INSERT INTO V_TVL
	VALUES (2054,
	2052);
INSERT INTO V_VAL
	VALUES (2038,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	2017);
INSERT INTO V_BIN
	VALUES (2038,
	2055,
	2054,
	'>');
INSERT INTO V_VAL
	VALUES (2055,
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
	2017);
INSERT INTO V_LIN
	VALUES (2055,
	'0');
INSERT INTO V_VAR
	VALUES (2020,
	2017,
	'workoutTimer',
	1,
	432);
INSERT INTO V_INT
	VALUES (2020,
	0,
	656);
INSERT INTO V_VAR
	VALUES (2041,
	2017,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (2041,
	0,
	640);
INSERT INTO V_VAR
	VALUES (2024,
	2017,
	'samples',
	1,
	572);
INSERT INTO V_INS
	VALUES (2024,
	784);
INSERT INTO V_VAR
	VALUES (2052,
	2017,
	'numberOfSamples',
	1,
	14);
INSERT INTO V_TRN
	VALUES (2052,
	0,
	'');
INSERT INTO V_VAR
	VALUES (2053,
	2017,
	'sum',
	1,
	14);
INSERT INTO V_TRN
	VALUES (2053,
	0,
	'');
INSERT INTO V_VAR
	VALUES (2036,
	2017,
	'sample',
	1,
	432);
INSERT INTO V_INT
	VALUES (2036,
	1,
	784);
INSERT INTO ACT_BLK
	VALUES (2035,
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
	2016,
	0);
INSERT INTO ACT_SMT
	VALUES (2056,
	2035,
	2057,
	9,
	3,
	'WorkoutSession::currentHeartRate line: 9');
INSERT INTO ACT_AI
	VALUES (2056,
	2058,
	2059,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2057,
	2035,
	0,
	10,
	3,
	'WorkoutSession::currentHeartRate line: 10');
INSERT INTO ACT_AI
	VALUES (2057,
	2060,
	2061,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2059,
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
	2035);
INSERT INTO V_TVL
	VALUES (2059,
	2052);
INSERT INTO V_VAL
	VALUES (2062,
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
	2035);
INSERT INTO V_TVL
	VALUES (2062,
	2052);
INSERT INTO V_VAL
	VALUES (2058,
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
	2035);
INSERT INTO V_BIN
	VALUES (2058,
	2063,
	2062,
	'+');
INSERT INTO V_VAL
	VALUES (2063,
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
	2035);
INSERT INTO V_LIN
	VALUES (2063,
	'1');
INSERT INTO V_VAL
	VALUES (2061,
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
	2035);
INSERT INTO V_TVL
	VALUES (2061,
	2053);
INSERT INTO V_VAL
	VALUES (2064,
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
	2035);
INSERT INTO V_TVL
	VALUES (2064,
	2053);
INSERT INTO V_VAL
	VALUES (2060,
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
	2035);
INSERT INTO V_BIN
	VALUES (2060,
	2065,
	2064,
	'+');
INSERT INTO V_VAL
	VALUES (2066,
	0,
	0,
	10,
	15,
	20,
	0,
	0,
	0,
	0,
	432,
	2035);
INSERT INTO V_IRF
	VALUES (2066,
	2036);
INSERT INTO V_VAL
	VALUES (2065,
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
	2035);
INSERT INTO V_AVL
	VALUES (2065,
	2066,
	784,
	1570);
INSERT INTO ACT_BLK
	VALUES (2037,
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
	2016,
	0);
INSERT INTO ACT_SMT
	VALUES (2067,
	2037,
	0,
	13,
	3,
	'WorkoutSession::currentHeartRate line: 13');
INSERT INTO ACT_AI
	VALUES (2067,
	2068,
	2069,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2070,
	1,
	0,
	13,
	3,
	6,
	0,
	0,
	0,
	0,
	432,
	2037);
INSERT INTO V_IRF
	VALUES (2070,
	2041);
INSERT INTO V_VAL
	VALUES (2069,
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
	2037);
INSERT INTO V_AVL
	VALUES (2069,
	2070,
	640,
	1102);
INSERT INTO V_VAL
	VALUES (2071,
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
	2037);
INSERT INTO V_TVL
	VALUES (2071,
	2053);
INSERT INTO V_VAL
	VALUES (2068,
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
	2037);
INSERT INTO V_BIN
	VALUES (2068,
	2072,
	2071,
	'/');
INSERT INTO V_VAL
	VALUES (2072,
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
	2037);
INSERT INTO V_TVL
	VALUES (2072,
	2052);
INSERT INTO ACT_BLK
	VALUES (2040,
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
	2016,
	0);
INSERT INTO ACT_SMT
	VALUES (2073,
	2040,
	0,
	15,
	3,
	'WorkoutSession::currentHeartRate line: 15');
INSERT INTO ACT_AI
	VALUES (2073,
	2074,
	2075,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2076,
	1,
	0,
	15,
	3,
	6,
	0,
	0,
	0,
	0,
	432,
	2040);
INSERT INTO V_IRF
	VALUES (2076,
	2041);
INSERT INTO V_VAL
	VALUES (2075,
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
	2040);
INSERT INTO V_AVL
	VALUES (2075,
	2076,
	640,
	1102);
INSERT INTO V_VAL
	VALUES (2074,
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
	2040);
INSERT INTO V_LIN
	VALUES (2074,
	'0');
INSERT INTO O_BATTR
	VALUES (1102,
	640);
INSERT INTO O_ATTR
	VALUES (1102,
	640,
	1082,
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
	VALUES (1034,
	640);
INSERT INTO O_BATTR
	VALUES (1034,
	640);
INSERT INTO O_ATTR
	VALUES (1034,
	640,
	1102,
	'accumulatedDistance',
	'Accumulated distance, expressed in meters, for this workout session.',
	'',
	'accumulatedDistance',
	0,
	92,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	640);
INSERT INTO O_OIDA
	VALUES (1803,
	640,
	0,
	'startDate');
INSERT INTO O_OIDA
	VALUES (1805,
	640,
	0,
	'startTime');
INSERT INTO O_ID
	VALUES (1,
	640);
INSERT INTO O_ID
	VALUES (2,
	640);
INSERT INTO PE_PE
	VALUES (656,
	1,
	759,
	0,
	4);
INSERT INTO O_OBJ
	VALUES (656,
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
	VALUES (2077,
	656,
	'activate',
	'',
	204,
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
	VALUES (2078,
	2077);
INSERT INTO ACT_ACT
	VALUES (2078,
	'operation',
	0,
	2079,
	0,
	0,
	'WorkoutTimer::activate',
	0);
INSERT INTO ACT_BLK
	VALUES (2079,
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
	2078,
	0);
INSERT INTO ACT_SMT
	VALUES (2080,
	2079,
	2081,
	2,
	1,
	'WorkoutTimer::activate line: 2');
INSERT INTO E_ESS
	VALUES (2080,
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
	VALUES (2080,
	1,
	2082);
INSERT INTO E_CSME
	VALUES (2080,
	2083);
INSERT INTO E_CEI
	VALUES (2080,
	2084);
INSERT INTO ACT_SMT
	VALUES (2081,
	2079,
	2085,
	3,
	1,
	'WorkoutTimer::activate line: 3');
INSERT INTO ACT_AI
	VALUES (2081,
	2086,
	2087,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2085,
	2079,
	2088,
	6,
	1,
	'WorkoutTimer::activate line: 6');
INSERT INTO ACT_SEL
	VALUES (2085,
	2089,
	1,
	'one',
	2090);
INSERT INTO ACT_SR
	VALUES (2085);
INSERT INTO ACT_LNK
	VALUES (2091,
	'''acts as the stopwatch for''',
	2085,
	777,
	2092,
	2,
	640,
	7,
	9,
	7,
	24,
	7,
	27);
INSERT INTO ACT_LNK
	VALUES (2092,
	'''is currently executing''',
	0,
	793,
	0,
	2,
	789,
	7,
	57,
	7,
	62,
	7,
	66);
INSERT INTO ACT_SMT
	VALUES (2088,
	2079,
	2093,
	8,
	1,
	'WorkoutTimer::activate line: 8');
INSERT INTO ACT_IF
	VALUES (2088,
	2094,
	2095,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2093,
	2079,
	2096,
	13,
	1,
	'WorkoutTimer::activate line: 13');
INSERT INTO ACT_IOP
	VALUES (2093,
	13,
	16,
	13,
	6,
	0,
	592,
	0);
INSERT INTO ACT_SMT
	VALUES (2096,
	2079,
	0,
	14,
	1,
	'WorkoutTimer::activate line: 14');
INSERT INTO ACT_IOP
	VALUES (2096,
	14,
	24,
	14,
	6,
	0,
	622,
	0);
INSERT INTO V_VAL
	VALUES (2097,
	1,
	0,
	3,
	1,
	4,
	0,
	0,
	0,
	0,
	432,
	2079);
INSERT INTO V_IRF
	VALUES (2097,
	2084);
INSERT INTO V_VAL
	VALUES (2087,
	1,
	0,
	3,
	6,
	10,
	0,
	0,
	0,
	0,
	268,
	2079);
INSERT INTO V_AVL
	VALUES (2087,
	2097,
	656,
	2098);
INSERT INTO V_VAL
	VALUES (2086,
	0,
	0,
	3,
	19,
	-1,
	3,
	42,
	3,
	59,
	268,
	2079);
INSERT INTO V_BRV
	VALUES (2086,
	882,
	1,
	3,
	14);
INSERT INTO V_VAL
	VALUES (2099,
	0,
	0,
	3,
	54,
	56,
	0,
	0,
	0,
	0,
	271,
	2079);
INSERT INTO V_TVL
	VALUES (2099,
	2082);
INSERT INTO V_PAR
	VALUES (2099,
	0,
	2086,
	'event_inst',
	2100,
	3,
	42);
INSERT INTO V_VAL
	VALUES (2101,
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
	2079);
INSERT INTO V_SCV
	VALUES (2101,
	2102,
	14);
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
	14,
	2079);
INSERT INTO V_BIN
	VALUES (2100,
	2103,
	2101,
	'*');
INSERT INTO V_PAR
	VALUES (2100,
	0,
	2086,
	'microseconds',
	0,
	3,
	59);
INSERT INTO V_VAL
	VALUES (2103,
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
	2079);
INSERT INTO V_LIN
	VALUES (2103,
	'1000000');
INSERT INTO V_VAL
	VALUES (2090,
	0,
	0,
	7,
	3,
	6,
	0,
	0,
	0,
	0,
	432,
	2079);
INSERT INTO V_IRF
	VALUES (2090,
	2084);
INSERT INTO V_VAL
	VALUES (2104,
	0,
	0,
	8,
	16,
	28,
	0,
	0,
	0,
	0,
	432,
	2079);
INSERT INTO V_IRF
	VALUES (2104,
	2089);
INSERT INTO V_VAL
	VALUES (2105,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	2079);
INSERT INTO V_UNY
	VALUES (2105,
	2104,
	'empty');
INSERT INTO V_VAL
	VALUES (2095,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	2079);
INSERT INTO V_UNY
	VALUES (2095,
	2105,
	'not');
INSERT INTO V_VAR
	VALUES (2082,
	2079,
	'evt',
	1,
	271);
INSERT INTO V_TRN
	VALUES (2082,
	0,
	'');
INSERT INTO V_VAR
	VALUES (2084,
	2079,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (2084,
	0,
	656);
INSERT INTO V_VAR
	VALUES (2089,
	2079,
	'executingGoal',
	1,
	432);
INSERT INTO V_INT
	VALUES (2089,
	0,
	789);
INSERT INTO ACT_BLK
	VALUES (2094,
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
	2078,
	0);
INSERT INTO ACT_SMT
	VALUES (2106,
	2094,
	0,
	9,
	3,
	'WorkoutTimer::activate line: 9');
INSERT INTO E_ESS
	VALUES (2106,
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
	VALUES (2106);
INSERT INTO E_GSME
	VALUES (2106,
	1192);
INSERT INTO E_GEN
	VALUES (2106,
	2089);
INSERT INTO O_TFR
	VALUES (2107,
	656,
	'deactivate',
	'',
	204,
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
	2077);
INSERT INTO ACT_OPB
	VALUES (2108,
	2107);
INSERT INTO ACT_ACT
	VALUES (2108,
	'operation',
	0,
	2109,
	0,
	0,
	'WorkoutTimer::deactivate',
	0);
INSERT INTO ACT_BLK
	VALUES (2109,
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
	2108,
	0);
INSERT INTO ACT_SMT
	VALUES (2110,
	2109,
	2111,
	2,
	1,
	'WorkoutTimer::deactivate line: 2');
INSERT INTO ACT_AI
	VALUES (2110,
	2112,
	2113,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2111,
	2109,
	2114,
	5,
	1,
	'WorkoutTimer::deactivate line: 5');
INSERT INTO ACT_SEL
	VALUES (2111,
	2115,
	1,
	'one',
	2116);
INSERT INTO ACT_SR
	VALUES (2111);
INSERT INTO ACT_LNK
	VALUES (2117,
	'''acts as the stopwatch for''',
	2111,
	777,
	2118,
	2,
	640,
	6,
	9,
	6,
	24,
	6,
	27);
INSERT INTO ACT_LNK
	VALUES (2118,
	'''is currently executing''',
	0,
	793,
	0,
	2,
	789,
	6,
	57,
	6,
	62,
	6,
	66);
INSERT INTO ACT_SMT
	VALUES (2114,
	2109,
	2119,
	7,
	1,
	'WorkoutTimer::deactivate line: 7');
INSERT INTO ACT_IF
	VALUES (2114,
	2120,
	2121,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2119,
	2109,
	2122,
	12,
	1,
	'WorkoutTimer::deactivate line: 12');
INSERT INTO ACT_IOP
	VALUES (2119,
	12,
	16,
	12,
	6,
	0,
	596,
	0);
INSERT INTO ACT_SMT
	VALUES (2122,
	2109,
	0,
	13,
	1,
	'WorkoutTimer::deactivate line: 13');
INSERT INTO ACT_IOP
	VALUES (2122,
	13,
	24,
	13,
	6,
	0,
	626,
	0);
INSERT INTO V_VAL
	VALUES (2113,
	1,
	1,
	2,
	1,
	15,
	0,
	0,
	0,
	0,
	56,
	2109);
INSERT INTO V_TVL
	VALUES (2113,
	2123);
INSERT INTO V_VAL
	VALUES (2112,
	0,
	0,
	2,
	24,
	-1,
	2,
	37,
	0,
	0,
	56,
	2109);
INSERT INTO V_BRV
	VALUES (2112,
	901,
	1,
	2,
	19);
INSERT INTO V_VAL
	VALUES (2124,
	0,
	0,
	2,
	53,
	56,
	0,
	0,
	0,
	0,
	432,
	2109);
INSERT INTO V_IRF
	VALUES (2124,
	2125);
INSERT INTO V_VAL
	VALUES (2126,
	0,
	0,
	2,
	58,
	62,
	0,
	0,
	0,
	0,
	268,
	2109);
INSERT INTO V_AVL
	VALUES (2126,
	2124,
	656,
	2098);
INSERT INTO V_PAR
	VALUES (2126,
	0,
	2112,
	'timer_inst_ref',
	0,
	2,
	37);
INSERT INTO V_VAL
	VALUES (2116,
	0,
	0,
	6,
	3,
	6,
	0,
	0,
	0,
	0,
	432,
	2109);
INSERT INTO V_IRF
	VALUES (2116,
	2125);
INSERT INTO V_VAL
	VALUES (2127,
	0,
	0,
	7,
	16,
	28,
	0,
	0,
	0,
	0,
	432,
	2109);
INSERT INTO V_IRF
	VALUES (2127,
	2115);
INSERT INTO V_VAL
	VALUES (2128,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	2109);
INSERT INTO V_UNY
	VALUES (2128,
	2127,
	'empty');
INSERT INTO V_VAL
	VALUES (2121,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	2109);
INSERT INTO V_UNY
	VALUES (2121,
	2128,
	'not');
INSERT INTO V_VAR
	VALUES (2123,
	2109,
	'cancelSucceeded',
	1,
	56);
INSERT INTO V_TRN
	VALUES (2123,
	0,
	'');
INSERT INTO V_VAR
	VALUES (2125,
	2109,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (2125,
	0,
	656);
INSERT INTO V_VAR
	VALUES (2115,
	2109,
	'executingGoal',
	1,
	432);
INSERT INTO V_INT
	VALUES (2115,
	0,
	789);
INSERT INTO ACT_BLK
	VALUES (2120,
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
	2108,
	0);
INSERT INTO ACT_SMT
	VALUES (2129,
	2120,
	0,
	8,
	3,
	'WorkoutTimer::deactivate line: 8');
INSERT INTO E_ESS
	VALUES (2129,
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
	VALUES (2129);
INSERT INTO E_GSME
	VALUES (2129,
	1427);
INSERT INTO E_GEN
	VALUES (2129,
	2115);
INSERT INTO O_TFR
	VALUES (1821,
	656,
	'initialize',
	'',
	204,
	1,
	'// Initialize this instance.

self.time = 0;',
	1,
	'',
	2107);
INSERT INTO ACT_OPB
	VALUES (2130,
	1821);
INSERT INTO ACT_ACT
	VALUES (2130,
	'operation',
	0,
	2131,
	0,
	0,
	'WorkoutTimer::initialize',
	0);
INSERT INTO ACT_BLK
	VALUES (2131,
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
	2130,
	0);
INSERT INTO ACT_SMT
	VALUES (2132,
	2131,
	0,
	3,
	1,
	'WorkoutTimer::initialize line: 3');
INSERT INTO ACT_AI
	VALUES (2132,
	2133,
	2134,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2135,
	1,
	0,
	3,
	1,
	4,
	0,
	0,
	0,
	0,
	432,
	2131);
INSERT INTO V_IRF
	VALUES (2135,
	2136);
INSERT INTO V_VAL
	VALUES (2134,
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
	2131);
INSERT INTO V_AVL
	VALUES (2134,
	2135,
	656,
	962);
INSERT INTO V_VAL
	VALUES (2133,
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
	2131);
INSERT INTO V_LIN
	VALUES (2133,
	'0');
INSERT INTO V_VAR
	VALUES (2136,
	2131,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (2136,
	0,
	656);
INSERT INTO O_NBATTR
	VALUES (2137,
	656);
INSERT INTO O_BATTR
	VALUES (2137,
	656);
INSERT INTO O_ATTR
	VALUES (2137,
	656,
	0,
	'current_state',
	'',
	'',
	'current_state',
	0,
	416,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (962,
	656);
INSERT INTO O_BATTR
	VALUES (962,
	656);
INSERT INTO O_ATTR
	VALUES (962,
	656,
	2137,
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
	VALUES (2098,
	656);
INSERT INTO O_BATTR
	VALUES (2098,
	656);
INSERT INTO O_ATTR
	VALUES (2098,
	656,
	962,
	'timer',
	'Handle for underlying timer mechanism that produces the 
delayed events enabling the timer to track elapsed time.',
	'',
	'timer',
	0,
	268,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	656);
INSERT INTO O_ID
	VALUES (1,
	656);
INSERT INTO O_ID
	VALUES (2,
	656);
INSERT INTO SM_ISM
	VALUES (2138,
	656);
INSERT INTO SM_SM
	VALUES (2138,
	'',
	0);
INSERT INTO SM_MOORE
	VALUES (2138);
INSERT INTO SM_LEVT
	VALUES (702,
	2138,
	0);
INSERT INTO SM_SEVT
	VALUES (702,
	2138,
	0);
INSERT INTO SM_EVT
	VALUES (702,
	2138,
	0,
	1,
	'startStopPressed',
	0,
	'',
	'WorkoutTimer1',
	'');
INSERT INTO SM_LEVT
	VALUES (664,
	2138,
	0);
INSERT INTO SM_SEVT
	VALUES (664,
	2138,
	0);
INSERT INTO SM_EVT
	VALUES (664,
	2138,
	0,
	2,
	'lapResetPressed',
	0,
	'',
	'WorkoutTimer2',
	'');
INSERT INTO SM_LEVT
	VALUES (2083,
	2138,
	0);
INSERT INTO SM_SEVT
	VALUES (2083,
	2138,
	0);
INSERT INTO SM_EVT
	VALUES (2083,
	2138,
	0,
	3,
	'tick',
	0,
	'',
	'WorkoutTimer3',
	'');
INSERT INTO SM_STATE
	VALUES (2139,
	2138,
	0,
	'stopped',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (2139,
	702,
	2138,
	0);
INSERT INTO SM_EIGN
	VALUES (2139,
	664,
	2138,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2139,
	664,
	2138,
	0);
INSERT INTO SM_EIGN
	VALUES (2139,
	2083,
	2138,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2139,
	2083,
	2138,
	0);
INSERT INTO SM_MOAH
	VALUES (2140,
	2138,
	2139);
INSERT INTO SM_AH
	VALUES (2140,
	2138);
INSERT INTO SM_ACT
	VALUES (2140,
	2138,
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
	VALUES (2141,
	2138,
	2140);
INSERT INTO ACT_ACT
	VALUES (2141,
	'state',
	0,
	2142,
	0,
	0,
	'WorkoutTimer::stopped',
	0);
INSERT INTO ACT_BLK
	VALUES (2142,
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
	2141,
	0);
INSERT INTO ACT_SMT
	VALUES (2143,
	2142,
	2144,
	2,
	1,
	'WorkoutTimer::stopped line: 2');
INSERT INTO ACT_SEL
	VALUES (2143,
	2145,
	1,
	'one',
	2146);
INSERT INTO ACT_SR
	VALUES (2143);
INSERT INTO ACT_LNK
	VALUES (2147,
	'''acts as the stopwatch for''',
	2143,
	777,
	0,
	2,
	640,
	2,
	37,
	2,
	52,
	2,
	55);
INSERT INTO ACT_SMT
	VALUES (2144,
	2142,
	2148,
	3,
	1,
	'WorkoutTimer::stopped line: 3');
INSERT INTO ACT_TFM
	VALUES (2144,
	1828,
	2145,
	3,
	9,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2148,
	2142,
	2149,
	6,
	1,
	'WorkoutTimer::stopped line: 6');
INSERT INTO ACT_IOP
	VALUES (2148,
	6,
	10,
	6,
	6,
	0,
	611,
	0);
INSERT INTO ACT_SMT
	VALUES (2149,
	2142,
	2150,
	7,
	1,
	'WorkoutTimer::stopped line: 7');
INSERT INTO ACT_SEL
	VALUES (2149,
	2151,
	1,
	'one',
	2152);
INSERT INTO ACT_SR
	VALUES (2149);
INSERT INTO ACT_LNK
	VALUES (2153,
	'''acts as the stopwatch for''',
	2149,
	777,
	2154,
	2,
	640,
	8,
	9,
	8,
	24,
	8,
	27);
INSERT INTO ACT_LNK
	VALUES (2154,
	'''current status indicated on''',
	0,
	684,
	0,
	2,
	685,
	9,
	3,
	9,
	11,
	9,
	14);
INSERT INTO ACT_SMT
	VALUES (2150,
	2142,
	0,
	10,
	1,
	'WorkoutTimer::stopped line: 10');
INSERT INTO E_ESS
	VALUES (2150,
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
	VALUES (2150);
INSERT INTO E_GSME
	VALUES (2150,
	1013);
INSERT INTO E_GEN
	VALUES (2150,
	2151);
INSERT INTO V_VAL
	VALUES (2146,
	0,
	0,
	2,
	31,
	34,
	0,
	0,
	0,
	0,
	432,
	2142);
INSERT INTO V_IRF
	VALUES (2146,
	2155);
INSERT INTO V_VAL
	VALUES (2156,
	0,
	0,
	6,
	24,
	27,
	0,
	0,
	0,
	0,
	432,
	2142);
INSERT INTO V_IRF
	VALUES (2156,
	2155);
INSERT INTO V_VAL
	VALUES (2157,
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
	2142);
INSERT INTO V_AVL
	VALUES (2157,
	2156,
	656,
	962);
INSERT INTO V_PAR
	VALUES (2157,
	2148,
	0,
	'time',
	0,
	6,
	18);
INSERT INTO V_VAL
	VALUES (2152,
	0,
	0,
	8,
	3,
	6,
	0,
	0,
	0,
	0,
	432,
	2142);
INSERT INTO V_IRF
	VALUES (2152,
	2155);
INSERT INTO V_VAR
	VALUES (2145,
	2142,
	'session',
	1,
	432);
INSERT INTO V_INT
	VALUES (2145,
	0,
	640);
INSERT INTO V_VAR
	VALUES (2155,
	2142,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (2155,
	0,
	656);
INSERT INTO V_VAR
	VALUES (2151,
	2142,
	'display',
	1,
	432);
INSERT INTO V_INT
	VALUES (2151,
	0,
	685);
INSERT INTO SM_STATE
	VALUES (2158,
	2138,
	0,
	'running',
	2,
	0);
INSERT INTO SM_SEME
	VALUES (2158,
	702,
	2138,
	0);
INSERT INTO SM_SEME
	VALUES (2158,
	664,
	2138,
	0);
INSERT INTO SM_SEME
	VALUES (2158,
	2083,
	2138,
	0);
INSERT INTO SM_MOAH
	VALUES (2159,
	2138,
	2158);
INSERT INTO SM_AH
	VALUES (2159,
	2138);
INSERT INTO SM_ACT
	VALUES (2159,
	2138,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (2160,
	2138,
	2159);
INSERT INTO ACT_ACT
	VALUES (2160,
	'state',
	0,
	2161,
	0,
	0,
	'WorkoutTimer::running',
	0);
INSERT INTO ACT_BLK
	VALUES (2161,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
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
INSERT INTO SM_STATE
	VALUES (2162,
	2138,
	0,
	'paused',
	3,
	0);
INSERT INTO SM_SEME
	VALUES (2162,
	702,
	2138,
	0);
INSERT INTO SM_SEME
	VALUES (2162,
	664,
	2138,
	0);
INSERT INTO SM_EIGN
	VALUES (2162,
	2083,
	2138,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2162,
	2083,
	2138,
	0);
INSERT INTO SM_MOAH
	VALUES (2163,
	2138,
	2162);
INSERT INTO SM_AH
	VALUES (2163,
	2138);
INSERT INTO SM_ACT
	VALUES (2163,
	2138,
	1,
	'',
	'');
INSERT INTO ACT_SAB
	VALUES (2164,
	2138,
	2163);
INSERT INTO ACT_ACT
	VALUES (2164,
	'state',
	0,
	2165,
	0,
	0,
	'WorkoutTimer::paused',
	0);
INSERT INTO ACT_BLK
	VALUES (2165,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2164,
	0);
INSERT INTO SM_NSTXN
	VALUES (2166,
	2138,
	2139,
	702,
	0);
INSERT INTO SM_TAH
	VALUES (2167,
	2138,
	2166);
INSERT INTO SM_AH
	VALUES (2167,
	2138);
INSERT INTO SM_ACT
	VALUES (2167,
	2138,
	1,
	'// Start the timer.
self.activate();',
	'');
INSERT INTO ACT_TAB
	VALUES (2168,
	2138,
	2167);
INSERT INTO ACT_ACT
	VALUES (2168,
	'transition',
	0,
	2169,
	0,
	0,
	'WorkoutTimer1: startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2169,
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
	2168,
	0);
INSERT INTO ACT_SMT
	VALUES (2170,
	2169,
	0,
	2,
	1,
	'WorkoutTimer1: startStopPressed line: 2');
INSERT INTO ACT_TFM
	VALUES (2170,
	2077,
	2171,
	2,
	6,
	0,
	0);
INSERT INTO V_VAR
	VALUES (2171,
	2169,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (2171,
	0,
	656);
INSERT INTO SM_TXN
	VALUES (2166,
	2138,
	2158,
	0);
INSERT INTO SM_NSTXN
	VALUES (2172,
	2138,
	2158,
	664,
	0);
INSERT INTO SM_TAH
	VALUES (2173,
	2138,
	2172);
INSERT INTO SM_AH
	VALUES (2173,
	2138);
INSERT INTO SM_ACT
	VALUES (2173,
	2138,
	1,
	'select any trackLog from instances of TrackLog;
if (not empty trackLog)
  trackLog.addLapMarker();
end if;',
	'');
INSERT INTO ACT_TAB
	VALUES (2174,
	2138,
	2173);
INSERT INTO ACT_ACT
	VALUES (2174,
	'transition',
	0,
	2175,
	0,
	0,
	'WorkoutTimer2: lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2175,
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
	2174,
	0);
INSERT INTO ACT_SMT
	VALUES (2176,
	2175,
	2177,
	1,
	1,
	'WorkoutTimer2: lapResetPressed line: 1');
INSERT INTO ACT_FIO
	VALUES (2176,
	2178,
	1,
	'any',
	761,
	1,
	39);
INSERT INTO ACT_SMT
	VALUES (2177,
	2175,
	0,
	2,
	1,
	'WorkoutTimer2: lapResetPressed line: 2');
INSERT INTO ACT_IF
	VALUES (2177,
	2179,
	2180,
	0,
	0);
INSERT INTO V_VAL
	VALUES (2181,
	0,
	0,
	2,
	15,
	22,
	0,
	0,
	0,
	0,
	432,
	2175);
INSERT INTO V_IRF
	VALUES (2181,
	2178);
INSERT INTO V_VAL
	VALUES (2182,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	2175);
INSERT INTO V_UNY
	VALUES (2182,
	2181,
	'empty');
INSERT INTO V_VAL
	VALUES (2180,
	0,
	0,
	-1,
	-1,
	-1,
	0,
	0,
	0,
	0,
	56,
	2175);
INSERT INTO V_UNY
	VALUES (2180,
	2182,
	'not');
INSERT INTO V_VAR
	VALUES (2178,
	2175,
	'trackLog',
	1,
	432);
INSERT INTO V_INT
	VALUES (2178,
	0,
	761);
INSERT INTO ACT_BLK
	VALUES (2179,
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
	2174,
	0);
INSERT INTO ACT_SMT
	VALUES (2183,
	2179,
	0,
	3,
	3,
	'WorkoutTimer2: lapResetPressed line: 3');
INSERT INTO ACT_TFM
	VALUES (2183,
	1711,
	2178,
	3,
	12,
	0,
	0);
INSERT INTO SM_TXN
	VALUES (2172,
	2138,
	2158,
	0);
INSERT INTO SM_NSTXN
	VALUES (2184,
	2138,
	2162,
	664,
	0);
INSERT INTO SM_TAH
	VALUES (2185,
	2138,
	2184);
INSERT INTO SM_AH
	VALUES (2185,
	2138);
INSERT INTO SM_ACT
	VALUES (2185,
	2138,
	1,
	'',
	'');
INSERT INTO ACT_TAB
	VALUES (2186,
	2138,
	2185);
INSERT INTO ACT_ACT
	VALUES (2186,
	'transition',
	0,
	2187,
	0,
	0,
	'WorkoutTimer2: lapResetPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2187,
	0,
	0,
	0,
	'',
	'',
	'',
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	2186,
	0);
INSERT INTO SM_TXN
	VALUES (2184,
	2138,
	2139,
	0);
INSERT INTO SM_NSTXN
	VALUES (2188,
	2138,
	2162,
	702,
	0);
INSERT INTO SM_TAH
	VALUES (2189,
	2138,
	2188);
INSERT INTO SM_AH
	VALUES (2189,
	2138);
INSERT INTO SM_ACT
	VALUES (2189,
	2138,
	1,
	'self.activate();',
	'');
INSERT INTO ACT_TAB
	VALUES (2190,
	2138,
	2189);
INSERT INTO ACT_ACT
	VALUES (2190,
	'transition',
	0,
	2191,
	0,
	0,
	'WorkoutTimer1: startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2191,
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
	2190,
	0);
INSERT INTO ACT_SMT
	VALUES (2192,
	2191,
	0,
	1,
	1,
	'WorkoutTimer1: startStopPressed line: 1');
INSERT INTO ACT_TFM
	VALUES (2192,
	2077,
	2193,
	1,
	6,
	0,
	0);
INSERT INTO V_VAR
	VALUES (2193,
	2191,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (2193,
	0,
	656);
INSERT INTO SM_TXN
	VALUES (2188,
	2138,
	2158,
	0);
INSERT INTO SM_NSTXN
	VALUES (2194,
	2138,
	2158,
	702,
	0);
INSERT INTO SM_TAH
	VALUES (2195,
	2138,
	2194);
INSERT INTO SM_AH
	VALUES (2195,
	2138);
INSERT INTO SM_ACT
	VALUES (2195,
	2138,
	1,
	'self.deactivate();',
	'');
INSERT INTO ACT_TAB
	VALUES (2196,
	2138,
	2195);
INSERT INTO ACT_ACT
	VALUES (2196,
	'transition',
	0,
	2197,
	0,
	0,
	'WorkoutTimer1: startStopPressed',
	0);
INSERT INTO ACT_BLK
	VALUES (2197,
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
	2196,
	0);
INSERT INTO ACT_SMT
	VALUES (2198,
	2197,
	0,
	1,
	1,
	'WorkoutTimer1: startStopPressed line: 1');
INSERT INTO ACT_TFM
	VALUES (2198,
	2107,
	2199,
	1,
	6,
	0,
	0);
INSERT INTO V_VAR
	VALUES (2199,
	2197,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (2199,
	0,
	656);
INSERT INTO SM_TXN
	VALUES (2194,
	2138,
	2162,
	0);
INSERT INTO SM_NSTXN
	VALUES (2200,
	2138,
	2158,
	2083,
	0);
INSERT INTO SM_TAH
	VALUES (2201,
	2138,
	2200);
INSERT INTO SM_AH
	VALUES (2201,
	2138);
INSERT INTO SM_ACT
	VALUES (2201,
	2138,
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
	VALUES (2202,
	2138,
	2201);
INSERT INTO ACT_ACT
	VALUES (2202,
	'transition',
	0,
	2203,
	0,
	0,
	'WorkoutTimer3: tick',
	0);
INSERT INTO ACT_BLK
	VALUES (2203,
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
	2202,
	0);
INSERT INTO ACT_SMT
	VALUES (2204,
	2203,
	2205,
	2,
	1,
	'WorkoutTimer3: tick line: 2');
INSERT INTO ACT_AI
	VALUES (2204,
	2206,
	2207,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2205,
	2203,
	2208,
	5,
	1,
	'WorkoutTimer3: tick line: 5');
INSERT INTO ACT_SEL
	VALUES (2205,
	2209,
	1,
	'one',
	2210);
INSERT INTO ACT_SR
	VALUES (2205);
INSERT INTO ACT_LNK
	VALUES (2211,
	'''acts as the stopwatch for''',
	2205,
	777,
	2212,
	2,
	640,
	6,
	9,
	6,
	24,
	6,
	27);
INSERT INTO ACT_LNK
	VALUES (2212,
	'''captures path in''',
	0,
	780,
	0,
	2,
	761,
	6,
	57,
	6,
	66,
	6,
	69);
INSERT INTO ACT_SMT
	VALUES (2208,
	2203,
	2213,
	7,
	1,
	'WorkoutTimer3: tick line: 7');
INSERT INTO ACT_TFM
	VALUES (2208,
	1573,
	2209,
	7,
	10,
	0,
	0);
INSERT INTO ACT_SMT
	VALUES (2213,
	2203,
	0,
	10,
	1,
	'WorkoutTimer3: tick line: 10');
INSERT INTO ACT_IOP
	VALUES (2213,
	10,
	10,
	10,
	6,
	0,
	611,
	0);
INSERT INTO V_VAL
	VALUES (2214,
	1,
	0,
	2,
	1,
	4,
	0,
	0,
	0,
	0,
	432,
	2203);
INSERT INTO V_IRF
	VALUES (2214,
	2215);
INSERT INTO V_VAL
	VALUES (2207,
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
	2203);
INSERT INTO V_AVL
	VALUES (2207,
	2214,
	656,
	962);
INSERT INTO V_VAL
	VALUES (2216,
	0,
	0,
	2,
	13,
	16,
	0,
	0,
	0,
	0,
	432,
	2203);
INSERT INTO V_IRF
	VALUES (2216,
	2215);
INSERT INTO V_VAL
	VALUES (2217,
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
	2203);
INSERT INTO V_AVL
	VALUES (2217,
	2216,
	656,
	962);
INSERT INTO V_VAL
	VALUES (2206,
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
	2203);
INSERT INTO V_BIN
	VALUES (2206,
	2218,
	2217,
	'+');
INSERT INTO V_VAL
	VALUES (2218,
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
	2203);
INSERT INTO V_SCV
	VALUES (2218,
	2102,
	14);
INSERT INTO V_VAL
	VALUES (2210,
	0,
	0,
	6,
	3,
	6,
	0,
	0,
	0,
	0,
	432,
	2203);
INSERT INTO V_IRF
	VALUES (2210,
	2215);
INSERT INTO V_VAL
	VALUES (2219,
	0,
	0,
	10,
	24,
	27,
	0,
	0,
	0,
	0,
	432,
	2203);
INSERT INTO V_IRF
	VALUES (2219,
	2215);
INSERT INTO V_VAL
	VALUES (2220,
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
	2203);
INSERT INTO V_AVL
	VALUES (2220,
	2219,
	656,
	962);
INSERT INTO V_PAR
	VALUES (2220,
	2213,
	0,
	'time',
	0,
	10,
	18);
INSERT INTO V_VAR
	VALUES (2215,
	2203,
	'self',
	1,
	432);
INSERT INTO V_INT
	VALUES (2215,
	0,
	656);
INSERT INTO V_VAR
	VALUES (2209,
	2203,
	'trackLog',
	1,
	432);
INSERT INTO V_INT
	VALUES (2209,
	0,
	761);
INSERT INTO SM_TXN
	VALUES (2200,
	2138,
	2158,
	0);
INSERT INTO PE_PE
	VALUES (2221,
	1,
	577,
	0,
	7);
INSERT INTO EP_PKG
	VALUES (2221,
	0,
	576,
	'shared',
	'',
	0);
INSERT INTO PE_PE
	VALUES (376,
	1,
	2221,
	0,
	3);
INSERT INTO S_DT
	VALUES (376,
	0,
	'GoalCriteria',
	'The criteria type for a particular workout goal.  ',
	'');
INSERT INTO S_EDT
	VALUES (376);
INSERT INTO S_ENUM
	VALUES (386,
	'HeartRate',
	'A heart-rate criteria is specified as a range of heart rates between
minimum and maximum values, in beats per minute.',
	376,
	0);
INSERT INTO S_ENUM
	VALUES (377,
	'Pace',
	'A pace criteria is specified as a range of paces between
miniumum and maximum values specified in minutes per kilometer.',
	376,
	386);
INSERT INTO PE_PE
	VALUES (994,
	1,
	2221,
	0,
	3);
INSERT INTO S_DT
	VALUES (994,
	0,
	'GoalDisposition',
	'Disposition of a currently executing goal.',
	'');
INSERT INTO S_EDT
	VALUES (994);
INSERT INTO S_ENUM
	VALUES (1289,
	'Achieving',
	'The goal is currently being achieved.',
	994,
	0);
INSERT INTO S_ENUM
	VALUES (997,
	'Increase',
	'The value associated with the goal is presently below the minimum 
specified in the criteria for the goal, so the user must increase
that value to achieve the goal.',
	994,
	1289);
INSERT INTO S_ENUM
	VALUES (1001,
	'Decrease',
	'The value associated with the goal is presently above the maximum 
specified in the criteria for the goal, so the user must decrease
that value to achieve the goal.',
	994,
	997);
INSERT INTO PE_PE
	VALUES (379,
	1,
	2221,
	0,
	3);
INSERT INTO S_DT
	VALUES (379,
	0,
	'GoalSpan',
	'',
	'');
INSERT INTO S_EDT
	VALUES (379);
INSERT INTO S_ENUM
	VALUES (380,
	'Distance',
	'A distance-based span is specified in meters.',
	379,
	0);
INSERT INTO S_ENUM
	VALUES (388,
	'Time',
	'A time-based span is specified in seconds.',
	379,
	380);
INSERT INTO PE_PE
	VALUES (2222,
	1,
	2221,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (2222,
	'GoalAchievement',
	'evaluationPeriod is the period, expressed in microseconds, at which goal achievement is evaluated.');
INSERT INTO CNST_SYC
	VALUES (1200,
	'evaluationPeriod',
	'',
	14,
	2222,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (1200,
	14);
INSERT INTO CNST_LSC
	VALUES (1200,
	14,
	'3000000');
INSERT INTO PE_PE
	VALUES (2223,
	1,
	2221,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (2223,
	'GoalSpec',
	'GoalSpecOrigin indicates the sequence number of the first goal.');
INSERT INTO CNST_SYC
	VALUES (1423,
	'GoalSpecOrigin',
	'',
	14,
	2223,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (1423,
	14);
INSERT INTO CNST_LSC
	VALUES (1423,
	14,
	'1');
INSERT INTO PE_PE
	VALUES (2224,
	1,
	2221,
	0,
	10);
INSERT INTO CNST_CSP
	VALUES (2224,
	'WorkoutTimer',
	'timerPeriod specifies, in seconds, the period for the workout timer.');
INSERT INTO CNST_SYC
	VALUES (2102,
	'timerPeriod',
	'',
	14,
	2224,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (2102,
	14);
INSERT INTO CNST_LSC
	VALUES (2102,
	14,
	'1');
INSERT INTO PE_PE
	VALUES (581,
	1,
	2221,
	0,
	6);
INSERT INTO C_I
	VALUES (581,
	0,
	'TrackingLocation',
	'');
INSERT INTO C_EP
	VALUES (583,
	581,
	-1,
	'getDistance',
	'Returns distance, in kilometers, between the "from" and "to" coordinates passed as parameters.
The coordinates must be passed as decimal degrees.');
INSERT INTO C_IO
	VALUES (583,
	92,
	'getDistance',
	'Returns distance, in kilometers, between the "from" and "to" coordinates passed as parameters.
The coordinates must be passed as decimal degrees.',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (2225,
	583,
	92,
	'fromLat',
	'Latitude for the "from" coordinates.',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (2226,
	583,
	92,
	'toLat',
	'Latitude for the "to" coordinates.',
	0,
	'',
	2227);
INSERT INTO C_PP
	VALUES (2227,
	583,
	92,
	'fromLong',
	'Longitude for the "from" coordinates.',
	0,
	'',
	2225);
INSERT INTO C_PP
	VALUES (2228,
	583,
	92,
	'toLong',
	'Longitude for the "to" coordinates.',
	0,
	'',
	2226);
INSERT INTO C_EP
	VALUES (589,
	581,
	-1,
	'getLocation',
	'');
INSERT INTO C_IO
	VALUES (589,
	204,
	'getLocation',
	'',
	0,
	'',
	583);
INSERT INTO C_PP
	VALUES (2229,
	589,
	92,
	'latitude',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (2230,
	589,
	92,
	'longitude',
	'',
	0,
	'',
	2229);
INSERT INTO C_EP
	VALUES (593,
	581,
	-1,
	'registerListener',
	'');
INSERT INTO C_IO
	VALUES (593,
	204,
	'registerListener',
	'',
	0,
	'',
	589);
INSERT INTO C_EP
	VALUES (597,
	581,
	-1,
	'unregisterListener',
	'');
INSERT INTO C_IO
	VALUES (597,
	204,
	'unregisterListener',
	'',
	0,
	'',
	593);
INSERT INTO PE_PE
	VALUES (602,
	1,
	2221,
	0,
	6);
INSERT INTO C_I
	VALUES (602,
	0,
	'TrackingUI',
	'');
INSERT INTO C_EP
	VALUES (604,
	602,
	-1,
	'setData',
	'');
INSERT INTO C_IO
	VALUES (604,
	204,
	'setData',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (2231,
	604,
	92,
	'value',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (2232,
	604,
	54,
	'unit',
	'',
	0,
	'',
	2231);
INSERT INTO C_EP
	VALUES (608,
	602,
	-1,
	'setIndicator',
	'');
INSERT INTO C_IO
	VALUES (608,
	204,
	'setIndicator',
	'',
	0,
	'',
	604);
INSERT INTO C_PP
	VALUES (2233,
	608,
	149,
	'indicator',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (612,
	602,
	-1,
	'setTime',
	'');
INSERT INTO C_IO
	VALUES (612,
	204,
	'setTime',
	'',
	0,
	'',
	608);
INSERT INTO C_PP
	VALUES (2234,
	612,
	14,
	'time',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (616,
	602,
	-1,
	'newGoalSpec',
	'');
INSERT INTO C_IO
	VALUES (616,
	204,
	'newGoalSpec',
	'',
	0,
	'',
	612);
INSERT INTO C_PP
	VALUES (2235,
	616,
	14,
	'sequenceNumber',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (2236,
	616,
	92,
	'minimum',
	'',
	0,
	'',
	2235);
INSERT INTO C_PP
	VALUES (2237,
	616,
	92,
	'maximum',
	'',
	0,
	'',
	2236);
INSERT INTO C_PP
	VALUES (2238,
	616,
	92,
	'span',
	'',
	0,
	'',
	2237);
INSERT INTO C_PP
	VALUES (2239,
	616,
	376,
	'criteriaType',
	'',
	0,
	'',
	2238);
INSERT INTO C_PP
	VALUES (2240,
	616,
	379,
	'spanType',
	'',
	0,
	'',
	2239);
INSERT INTO PE_PE
	VALUES (621,
	1,
	2221,
	0,
	6);
INSERT INTO C_I
	VALUES (621,
	0,
	'TrackingHeartRateMonitor',
	'');
INSERT INTO C_EP
	VALUES (623,
	621,
	-1,
	'registerListener',
	'');
INSERT INTO C_IO
	VALUES (623,
	204,
	'registerListener',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (627,
	621,
	-1,
	'unregisterListener',
	'');
INSERT INTO C_IO
	VALUES (627,
	204,
	'unregisterListener',
	'',
	0,
	'',
	623);
INSERT INTO PE_PE
	VALUES (632,
	1,
	2221,
	0,
	6);
INSERT INTO C_I
	VALUES (632,
	0,
	'Tracking',
	'');
INSERT INTO C_EP
	VALUES (634,
	632,
	-1,
	'heartRateChanged',
	'');
INSERT INTO C_IO
	VALUES (634,
	204,
	'heartRateChanged',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (648,
	634,
	14,
	'heartRate',
	'',
	0,
	'',
	0);
INSERT INTO C_EP
	VALUES (650,
	632,
	-1,
	'lapResetPressed',
	'');
INSERT INTO C_IO
	VALUES (650,
	204,
	'lapResetPressed',
	'',
	0,
	'',
	634);
INSERT INTO C_EP
	VALUES (669,
	632,
	-1,
	'modePressed',
	'');
INSERT INTO C_IO
	VALUES (669,
	204,
	'modePressed',
	'',
	0,
	'',
	650);
INSERT INTO C_EP
	VALUES (688,
	632,
	-1,
	'setTargetPressed',
	'');
INSERT INTO C_IO
	VALUES (688,
	204,
	'setTargetPressed',
	'',
	0,
	'',
	669);
INSERT INTO C_EP
	VALUES (694,
	632,
	-1,
	'startStopPressed',
	'');
INSERT INTO C_IO
	VALUES (694,
	204,
	'startStopPressed',
	'',
	0,
	'',
	688);
INSERT INTO C_EP
	VALUES (704,
	632,
	-1,
	'newGoalSpec',
	'');
INSERT INTO C_IO
	VALUES (704,
	204,
	'newGoalSpec',
	'',
	0,
	'',
	694);
INSERT INTO C_PP
	VALUES (739,
	704,
	14,
	'sequenceNumber',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (742,
	704,
	92,
	'minimum',
	'',
	0,
	'',
	739);
INSERT INTO C_PP
	VALUES (745,
	704,
	92,
	'maximum',
	'',
	0,
	'',
	742);
INSERT INTO C_PP
	VALUES (748,
	704,
	92,
	'span',
	'',
	0,
	'',
	745);
INSERT INTO C_PP
	VALUES (751,
	704,
	376,
	'criteriaType',
	'',
	0,
	'',
	748);
INSERT INTO C_PP
	VALUES (754,
	704,
	379,
	'spanType',
	'',
	0,
	'',
	751);
INSERT INTO C_EP
	VALUES (756,
	632,
	-1,
	'lightPressed',
	'');
INSERT INTO C_IO
	VALUES (756,
	204,
	'lightPressed',
	'',
	0,
	'',
	704);
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
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2269,
	2268,
	'message',
	334,
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
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2273,
	2272,
	'message',
	334,
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
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2277,
	2276,
	'message',
	334,
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
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2281,
	2280,
	'd',
	227,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2282,
	2280,
	'message',
	334,
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
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2286,
	2285,
	't',
	264,
	0,
	'',
	2287,
	'');
INSERT INTO S_BPARM
	VALUES (2287,
	2285,
	'message',
	334,
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
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2291,
	2290,
	'r',
	92,
	0,
	'',
	2292,
	'');
INSERT INTO S_BPARM
	VALUES (2292,
	2290,
	'message',
	334,
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
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2296,
	2295,
	'message',
	14,
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
	227,
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
	227,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2304,
	2303,
	'second',
	14,
	0,
	'',
	2305,
	'');
INSERT INTO S_BPARM
	VALUES (2306,
	2303,
	'minute',
	14,
	0,
	'',
	2307,
	'');
INSERT INTO S_BPARM
	VALUES (2307,
	2303,
	'hour',
	14,
	0,
	'',
	2308,
	'');
INSERT INTO S_BPARM
	VALUES (2308,
	2303,
	'day',
	14,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2305,
	2303,
	'month',
	14,
	0,
	'',
	2306,
	'');
INSERT INTO S_BPARM
	VALUES (2309,
	2303,
	'year',
	14,
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
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2313,
	2312,
	'date',
	227,
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
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2317,
	2316,
	'date',
	227,
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
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2321,
	2320,
	'date',
	227,
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
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2325,
	2324,
	'date',
	227,
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
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2329,
	2328,
	'date',
	227,
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
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2333,
	2332,
	'date',
	227,
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
	264,
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
	268,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2340,
	2339,
	'microseconds',
	14,
	0,
	'',
	2341,
	'');
INSERT INTO S_BPARM
	VALUES (2341,
	2339,
	'event_inst',
	271,
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
	268,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2345,
	2344,
	'microseconds',
	14,
	0,
	'',
	2346,
	'');
INSERT INTO S_BPARM
	VALUES (2346,
	2344,
	'event_inst',
	271,
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
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2350,
	2349,
	'timer_inst_ref',
	268,
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
	56,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2354,
	2353,
	'timer_inst_ref',
	268,
	0,
	'',
	2355,
	'');
INSERT INTO S_BPARM
	VALUES (2355,
	2353,
	'microseconds',
	14,
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
	56,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2359,
	2358,
	'timer_inst_ref',
	268,
	0,
	'',
	2360,
	'');
INSERT INTO S_BPARM
	VALUES (2360,
	2358,
	'microseconds',
	14,
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
	56,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2364,
	2363,
	'timer_inst_ref',
	268,
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
	14,
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
	268,
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
	432,
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
	14,
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
	432,
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
	14,
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
	432,
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
	14,
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
	14,
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
	14,
	2379);
INSERT INTO V_LIN
	VALUES (2391,
	'1');
INSERT INTO V_VAR
	VALUES (2382,
	2379,
	'monitor',
	1,
	432);
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
	432,
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
	56,
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
	432,
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
	14,
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
	14,
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
	334,
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
	432,
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
	268,
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
	268,
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
	271,
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
	14,
	2395);
INSERT INTO V_SCV
	VALUES (2416,
	2049,
	14);
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
	14,
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
	14,
	2395);
INSERT INTO V_LIN
	VALUES (2417,
	'1000000');
INSERT INTO V_VAR
	VALUES (2398,
	2395,
	'monitor',
	1,
	432);
INSERT INTO V_INT
	VALUES (2398,
	0,
	2367);
INSERT INTO V_VAR
	VALUES (2407,
	2395,
	'timeout',
	1,
	271);
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
	56,
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
	56,
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
	432,
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
	268,
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
	56,
	2422);
INSERT INTO V_TVL
	VALUES (2430,
	2433);
INSERT INTO V_VAR
	VALUES (2425,
	2422,
	'monitor',
	1,
	432);
INSERT INTO V_INT
	VALUES (2425,
	0,
	2367);
INSERT INTO V_VAR
	VALUES (2433,
	2422,
	'res',
	1,
	56);
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
	334,
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
	334,
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
	VALUES (2051,
	'HeartRateAveragingWindow',
	'',
	14,
	2445,
	2049,
	14);
INSERT INTO CNST_LFSC
	VALUES (2051,
	14);
INSERT INTO CNST_LSC
	VALUES (2051,
	14,
	'5');
INSERT INTO CNST_SYC
	VALUES (2049,
	'HeartRateSamplingPeriod',
	'',
	14,
	2445,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (2049,
	14);
INSERT INTO CNST_LSC
	VALUES (2049,
	14,
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
	204,
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
	204,
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
	204,
	'heartRateChanged',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (2446,
	2263,
	14,
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
	14,
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
	14,
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
	14,
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
	14,
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
	14,
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
	14,
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
	14,
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
	14,
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
	14,
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
	14,
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
	14,
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
	14,
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
	14,
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
	14,
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
	14,
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
	14,
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
	92,
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
	14,
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
	92,
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
	92,
	2460);
INSERT INTO V_SCV
	VALUES (2493,
	2494,
	92);
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
	92,
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
	14,
	2460);
INSERT INTO V_LIN
	VALUES (2495,
	'1000');
INSERT INTO V_VAR
	VALUES (2472,
	2460,
	'deltaLat',
	1,
	14);
INSERT INTO V_TRN
	VALUES (2472,
	0,
	'');
INSERT INTO V_VAR
	VALUES (2477,
	2460,
	'deltaLong',
	1,
	14);
INSERT INTO V_TRN
	VALUES (2477,
	0,
	'');
INSERT INTO V_VAR
	VALUES (2482,
	2460,
	'sumSquares',
	1,
	14);
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
	92,
	2505,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (2506,
	92);
INSERT INTO CNST_LSC
	VALUES (2506,
	92,
	'0.00002');
INSERT INTO CNST_SYC
	VALUES (2507,
	'latitudeIncrement',
	'',
	92,
	2505,
	2506,
	92);
INSERT INTO CNST_LFSC
	VALUES (2507,
	92);
INSERT INTO CNST_LSC
	VALUES (2507,
	92,
	'0.00001');
INSERT INTO CNST_SYC
	VALUES (2508,
	'initialLatitude',
	'',
	92,
	2505,
	2507,
	92);
INSERT INTO CNST_LFSC
	VALUES (2508,
	92);
INSERT INTO CNST_LSC
	VALUES (2508,
	92,
	'32.432237');
INSERT INTO CNST_SYC
	VALUES (2509,
	'initialLongitude',
	'',
	92,
	2505,
	2508,
	92);
INSERT INTO CNST_LFSC
	VALUES (2509,
	92);
INSERT INTO CNST_LSC
	VALUES (2509,
	92,
	'-110.812283');
INSERT INTO CNST_SYC
	VALUES (2510,
	'updatePeriod',
	'',
	14,
	2505,
	2509,
	92);
INSERT INTO CNST_LFSC
	VALUES (2510,
	14);
INSERT INTO CNST_LSC
	VALUES (2510,
	14,
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
	92,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2512,
	2490,
	'x',
	92,
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
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2517,
	2516,
	'message',
	334,
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
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2521,
	2520,
	'message',
	334,
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
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2525,
	2524,
	'message',
	334,
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
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2529,
	2528,
	'd',
	227,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2530,
	2528,
	'message',
	334,
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
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2534,
	2533,
	't',
	264,
	0,
	'',
	2535,
	'');
INSERT INTO S_BPARM
	VALUES (2535,
	2533,
	'message',
	334,
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
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2539,
	2538,
	'r',
	92,
	0,
	'',
	2540,
	'');
INSERT INTO S_BPARM
	VALUES (2540,
	2538,
	'message',
	334,
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
	204,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2544,
	2543,
	'message',
	14,
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
	227,
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
	227,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2552,
	2551,
	'second',
	14,
	0,
	'',
	2553,
	'');
INSERT INTO S_BPARM
	VALUES (2554,
	2551,
	'minute',
	14,
	0,
	'',
	2555,
	'');
INSERT INTO S_BPARM
	VALUES (2555,
	2551,
	'hour',
	14,
	0,
	'',
	2556,
	'');
INSERT INTO S_BPARM
	VALUES (2556,
	2551,
	'day',
	14,
	0,
	'',
	0,
	'');
INSERT INTO S_BPARM
	VALUES (2553,
	2551,
	'month',
	14,
	0,
	'',
	2554,
	'');
INSERT INTO S_BPARM
	VALUES (2557,
	2551,
	'year',
	14,
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
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2561,
	2560,
	'date',
	227,
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
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2565,
	2564,
	'date',
	227,
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
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2569,
	2568,
	'date',
	227,
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
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2573,
	2572,
	'date',
	227,
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
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2577,
	2576,
	'date',
	227,
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
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2581,
	2580,
	'date',
	227,
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
	264,
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
	268,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2588,
	2587,
	'microseconds',
	14,
	0,
	'',
	2589,
	'');
INSERT INTO S_BPARM
	VALUES (2589,
	2587,
	'event_inst',
	271,
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
	268,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2593,
	2592,
	'microseconds',
	14,
	0,
	'',
	2594,
	'');
INSERT INTO S_BPARM
	VALUES (2594,
	2592,
	'event_inst',
	271,
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
	14,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2598,
	2597,
	'timer_inst_ref',
	268,
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
	56,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2602,
	2601,
	'timer_inst_ref',
	268,
	0,
	'',
	2603,
	'');
INSERT INTO S_BPARM
	VALUES (2603,
	2601,
	'microseconds',
	14,
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
	56,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2607,
	2606,
	'timer_inst_ref',
	268,
	0,
	'',
	2608,
	'');
INSERT INTO S_BPARM
	VALUES (2608,
	2606,
	'microseconds',
	14,
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
	56,
	'',
	1,
	'');
INSERT INTO S_BPARM
	VALUES (2612,
	2611,
	'timer_inst_ref',
	268,
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
	204,
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
	432,
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
	56,
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
	432,
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
	268,
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
	268,
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
	271,
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
	14,
	2618);
INSERT INTO V_SCV
	VALUES (2634,
	2510,
	14);
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
	432);
INSERT INTO V_INT
	VALUES (2621,
	0,
	2615);
INSERT INTO V_VAR
	VALUES (2626,
	2618,
	'tick',
	1,
	271);
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
	432,
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
	14,
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
	14,
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
	432,
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
	92,
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
	92,
	2623);
INSERT INTO V_SCV
	VALUES (2641,
	2508,
	92);
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
	432,
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
	92,
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
	92,
	2623);
INSERT INTO V_SCV
	VALUES (2643,
	2509,
	92);
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
	268,
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
	92,
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
	92,
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
	14,
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
	56,
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
	56,
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
	432,
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
	268,
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
	334,
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
	56,
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
	56,
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
	432);
INSERT INTO V_INT
	VALUES (2660,
	0,
	2615);
INSERT INTO V_VAR
	VALUES (2667,
	2657,
	'res',
	1,
	56);
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
	334,
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
	432,
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
	14,
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
	14,
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
	14,
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
	56,
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
	14,
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
	432,
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
	14,
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
	14,
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
	14,
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
	56,
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
	14,
	2677);
INSERT INTO V_LIN
	VALUES (2697,
	'0');
INSERT INTO V_VAR
	VALUES (2680,
	2677,
	'gps',
	1,
	432);
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
	432,
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
	92,
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
	432,
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
	92,
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
	92,
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
	92,
	2681);
INSERT INTO V_SCV
	VALUES (2708,
	2506,
	92);
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
	92,
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
	14,
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
	432,
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
	92,
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
	432,
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
	92,
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
	92,
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
	92,
	2681);
INSERT INTO V_SCV
	VALUES (2713,
	2507,
	92);
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
	432,
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
	92,
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
	432,
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
	92,
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
	92,
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
	92,
	2684);
INSERT INTO V_SCV
	VALUES (2723,
	2506,
	92);
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
	432,
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
	92,
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
	432,
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
	92,
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
	92,
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
	92,
	2684);
INSERT INTO V_SCV
	VALUES (2728,
	2507,
	92);
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
	92,
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
	14,
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
	432,
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
	92,
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
	432,
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
	92,
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
	92,
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
	92,
	2687);
INSERT INTO V_SCV
	VALUES (2739,
	2506,
	92);
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
	432,
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
	92,
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
	432,
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
	92,
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
	92,
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
	92,
	2687);
INSERT INTO V_SCV
	VALUES (2743,
	2507,
	92);
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
	334,
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
	432,
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
	14,
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
	432,
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
	14,
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
	14,
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
	14,
	2758);
INSERT INTO V_LIN
	VALUES (2767,
	'1');
INSERT INTO V_VAR
	VALUES (2761,
	2758,
	'gps',
	1,
	432);
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
	92,
	2769,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (2494,
	92);
INSERT INTO CNST_LSC
	VALUES (2494,
	92,
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
	VALUES (1959,
	'SecondsPerHour',
	'',
	14,
	2770,
	1944,
	14);
INSERT INTO CNST_LFSC
	VALUES (1959,
	14);
INSERT INTO CNST_LSC
	VALUES (1959,
	14,
	'3600');
INSERT INTO CNST_SYC
	VALUES (1944,
	'SpeedAveragingWindow',
	'',
	14,
	2770,
	0,
	0);
INSERT INTO CNST_LFSC
	VALUES (1944,
	14);
INSERT INTO CNST_LSC
	VALUES (1944,
	14,
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
	204,
	'getLocation',
	'',
	0,
	'',
	2458);
INSERT INTO C_PP
	VALUES (2771,
	2454,
	14,
	'latitude',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (2772,
	2454,
	14,
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
	92,
	'getDistance',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (2474,
	2458,
	14,
	'toLat',
	'',
	0,
	'',
	0);
INSERT INTO C_PP
	VALUES (2476,
	2458,
	14,
	'fromLat',
	'',
	0,
	'',
	2474);
INSERT INTO C_PP
	VALUES (2479,
	2458,
	14,
	'toLong',
	'',
	0,
	'',
	2476);
INSERT INTO C_PP
	VALUES (2481,
	2458,
	14,
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
	204,
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
	204,
	'unregisterListener',
	'',
	0,
	'',
	2497);
