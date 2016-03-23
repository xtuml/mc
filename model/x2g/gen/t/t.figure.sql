--path:${widget.path}
INSERT INTO GD_GE VALUES ($t{widget.ID}, $t{diagram.ID}, $t{widget.ooaofooa_ID}, $t{widget.OOA_Type}, 0, '${widget.path}');
INSERT INTO GD_SHP VALUES ($t{widget.ID});
INSERT INTO GD_NCS VALUES ($t{widget.ID});
INSERT INTO DIM_ND VALUES (
	$t{figure.width}.000000, -- width
	$t{figure.height}.000000, -- height
	$t{widget.ID});
INSERT INTO DIM_GE VALUES (
	$t{widget.x}.000000, -- X
	$t{widget.y}.000000, -- Y
	$t{widget.ID}, 0);
INSERT INTO DIM_ELE VALUES ($t{widget.ID}, 0, 0);
