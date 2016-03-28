--ooaofooa_path:${diagram.path} diagram.ID:$t{diagram.ID} ooaofooa_ID:$t{diagram.ooaofooa_ID}
INSERT INTO GD_MD VALUES ($t{diagram.ID}, $t{diagram.Model_Type}, $t{diagram.ooaofooa_ID}, $t{diagram.OOA_Type}, 0, 0, 1, 1, 1, 12, 1, 0, 0, 0, 0, 0, '4.1.17', '${diagram.path}');
INSERT INTO DIM_DIA VALUES ($t{diagram.ID}, '', 1.000000, 4000.000000, 3000.000000, 0);
