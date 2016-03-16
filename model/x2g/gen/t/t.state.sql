--diagram.ID: ${diagram.ID}  widget.ID: ${widget.ID}   ooaofooa_path: ${widget.path}
INSERT INTO GD_GE
	VALUES (${widget.ID},
	${diagram.ID},
	${widget.ooaofooa_ID},   -- This is the ID of SM_STATE
	41,                 -- OOA_Type
	0,
	'${widget.ooaofooa_path}'); -- Represents_path. Example: ClassDiagramOnly::ClassDiagram::class1::Instance State Machine::Unnamed State
INSERT INTO GD_SHP
	VALUES (${widget.ID});
INSERT INTO GD_NCS
	VALUES (${widget.ID});
INSERT INTO DIM_ND
	VALUES (157.000000,                               -- width
	85.000000,                                        -- heigth
	${widget.ID});
INSERT INTO DIM_GE
	VALUES (7800.000000,                              -- positionX - This is the x position on the diagram
	5880.000000,                                      -- positionY - This is the y position on the diagram
	${widget.ID},
	0);          										-- Semantic model bridge id. (referential for DIM_SMB.Smb_ID) 
-- Note: This is odd. In "UML 2.0 Diagram Interchange, this (DIM_ELE) only has 1 attribute, a represents)
INSERT INTO DIM_ELE                                   
	VALUES (${widget.ID},
	0, 
	0);													--null id
