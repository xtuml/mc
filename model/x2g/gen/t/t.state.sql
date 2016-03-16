--diagram.ID: $t{diagram.ID}  widget.ID: $t{widget.ID}   ooaofooa_path: ${widget.path}
INSERT INTO GD_GE
	VALUES ($t{widget.ID},
	$t{diagram.ID},
	$t{widget.ooaofooa_ID},   -- This is the ID of SM_STATE
	41,  -- OOA_Type
	0,
	'${widget.path}'); -- represents_path
INSERT INTO GD_SHP
	VALUES ($t{widget.ID});
INSERT INTO GD_NCS
	VALUES ($t{widget.ID});
INSERT INTO DIM_ND
	VALUES (157.000000,  -- width
	85.000000,           -- heigth
	$t{widget.ID});
INSERT INTO DIM_GE
	VALUES (7800.000000, -- positionX - This is the x position on the diagram, right goes positive
	5880.000000,         -- positionY - This is the y position on the diagram, down goes positive
	$t{widget.ID},
	0);  -- Semantic model bridge id. (referential for DIM_SMB.Smb_ID) 
-- Note: This is odd. In "UML 2.0 Diagram Interchange, this (DIM_ELE) only has 1 attribute, a represents)
INSERT INTO DIM_ELE                                   
	VALUES ($t{widget.ID},
	0,
	0);  --null id
