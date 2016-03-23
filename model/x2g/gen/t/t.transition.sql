--path:${widget.path}
INSERT INTO DIM_CON                      -- This represents an the anchor point for the connector
                                         -- In this example there are 2 of them because the line is connected to 
                                         -- a figure on each end
	VALUES ($t{coupler.cID1},
	$t{coupler.orig_x}.000000,                      -- XPosition
	$t{coupler.orig_y}.000000,                      -- YPosition
	$t{orig_widget.ID});             -- ID of the widget this coupler is attached to
INSERT INTO DIM_CON
	VALUES ($t{coupler.cID2},        -- This is a second coupler ID that will be generated
	$t{coupler.dest_x}.000000,
	$t{coupler.dest_y}.000000,
	$t{dest_widget->ID});            -- ID if the widget this coupler is attached to
INSERT INTO GD_GE
	VALUES ($t{widget.ID},
	$t{diagram.ID},
	$t{widget.ooaofooa_ID},          -- This is the SM_TXN.id
	$t{widget.OOA_Type},
	0,
	'${widget.path}');               -- It is the source side that this represents_path represents
INSERT INTO GD_CON VALUES ($t{widget.ID}, 0);
INSERT INTO GD_CTXT
	VALUES ($t{coupler.textID1},
	$t{widget.ID},
	1,                               -- Enum the represents the end of the connector for which this is serving as text (start,middle,end)
	0.000000,                        -- x offset of the connector text from the default position
	0.000000);                       -- y offset of the connector text from the default position
INSERT INTO DIM_ND
	VALUES (0.000000,                -- width
	0.000000,                        -- height
	$t{coupler.textID1});
INSERT INTO DIM_GE
	VALUES (0.000000,                -- positionX - This is the x position on the diagram
	0.000000,                        -- positionY - This is the y position on the diagram
	$t{coupler.textID1},
	0);                              -- Semantic model bridge id. (referential for DIM_SMB.Smb_ID)
INSERT INTO DIM_ELE
	VALUES ($t{coupler.textID1},
	0,
	0);                              -- null id
INSERT INTO GD_CTXT
	VALUES ($t{coupler.textID2},
	$t{widget.ID},
	3,                               -- Enum the represents the end of the connector for which this is serving as text (start,middle,end)
	0.000000,
	0.000000);
INSERT INTO DIM_ND
	VALUES (0.000000,
	0.000000,
	$t{coupler.textID2});
INSERT INTO DIM_GE
	VALUES (0.000000,
	0.000000,
	$t{coupler.textID2},
	0);        -- null id
INSERT INTO DIM_ELE
	VALUES ($t{coupler.textID2},
	0,
	0);        -- null id
INSERT INTO GD_CTXT
	VALUES ($t{coupler.textID3}, 
	$t{widget.ID},
	2,                                    -- Enum the represents the end of the connector for which this is serving as text (start,middle,end)
	0.000000,
	0.000000);
INSERT INTO DIM_ND
	VALUES (0.000000,
	0.000000,
	$t{coupler.textID3});
INSERT INTO DIM_GE
	VALUES (0.000000,
	0.000000,
	$t{coupler.textID3},
	0);        -- null id
INSERT INTO DIM_ELE
	VALUES ($t{coupler.textID3},
	0,
	0);        -- null id
INSERT INTO GD_LS
	VALUES ($t{coupler.lsID1},
	$t{widget.ID},
	0,        -- null id
	$t{coupler.wpID1},       --start waypoint_id
	$t{coupler.wpID2});      -- end_watpoint_id
INSERT INTO DIM_WAY
	VALUES ($t{coupler.wpID1}, 
	$t{coupler.orig_x}.000000,                      -- XPosition
	$t{coupler.orig_y}.000000,                      -- YPosition
	$t{widget.ID},          
	0,        -- this is the "polyline" element id
	0);       -- This is the previous waypoint ID
INSERT INTO DIM_WAY
	VALUES ($t{coupler.wpID2}, 
	$t{coupler.dest_x}.000000,
	$t{coupler.dest_y}.000000,
	$t{widget.ID},
	0,        -- null id
	$t{coupler.wpID1});  -- This is the previous waypoint ID
INSERT INTO DIM_GE
	VALUES (0.000000,
	0.000000,
	$t{widget.ID},
	0);        -- null id
INSERT INTO DIM_ELE
	VALUES ($t{widget.ID},
	0,
	0);        -- null id
INSERT INTO DIM_ED
	VALUES ($t{coupler.cID1},
	$t{coupler.cID2},
	$t{widget.ID});         
	
