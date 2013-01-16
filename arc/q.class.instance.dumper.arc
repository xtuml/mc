.//============================================================================
.// Description:
.// This query/transformation archetype file generates an instance dumper
.// in RSL format.
.//
.// Notice:
.// (C) Copyright 1998-2013 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
.//
.function TE_CLASS_instance_dumper
  .assign dollarcurly = "$${"
..print "dumping class instances into SQL format..."
  .select many s_sss from instances of S_SS where ( ( ( ( selected.Name != "Value" ) and ( selected.Name != "Body" ) ) and ( ( selected.Name != "Event" ) and ( selected.Name != "Selection" ) ) ) and ( ( ( selected.Name != "Instance Access" ) and ( selected.Name != "Relate and Unrelate" ) ) and ( selected.Name != "Translation OAL" ) ) )
  .for each s_ss in s_sss
..print "${s_ss.Name}"
    .select many o_objs related by s_ss->O_OBJ[R2] where ( ( selected.Key_Lett != "TE_VAL" ) and ( selected.Key_Lett != "TE_VAR" ) )
    .for each o_obj in o_objs
..select many $l{o_obj.Key_Lett}s from instances of ${o_obj.Key_Lett}
..for each $l{o_obj.Key_Lett} in $l{o_obj.Key_Lett}s
INSERT INTO ${o_obj.Key_Lett} VALUES (\
      .select one o_attr related by o_obj->O_ATTR[R102] where ( selected.PAttr_ID == 0 )
      .assign delimiter = ""
      .while ( not_empty o_attr )
        .if ( "${o_attr.Descrip:Persistent}" != "false" )
          .assign attributename = o_attr.Name
          .invoke d = GetAttributeCodeGenType( o_attr )
          .assign s_dt = d.dt
          .if ( "string" == s_dt.Name )
            .if ( "Action_Semantics_internal" == attributename )
              .assign attributename = "Action_Semantics"
${delimiter} ''\\
            .else
${delimiter} '$${$l{o_obj.Key_Lett}.${attributename}}'\
            .end if
          .elif ( "unique_id" == s_dt.Name )
\\
  ..if ( "un-initialized" == "$${$l{o_obj.Key_Lett}.${attributename}}" )
${delimiter} 0\\
  ..else
${delimiter} ${dollarcurly}$l{o_obj.Key_Lett}.${attributename}}\\
  ..end if
          .else
${delimiter} ${dollarcurly}$l{o_obj.Key_Lett}.${attributename}}\
          .end if
          .assign delimiter = ","
        .end if
        .select one o_attr related by o_attr->O_ATTR[R103.'succeeds']
      .end while
 );
..end for
    .end for
  .end for
..emit to file "_system.sql"
..exit 508
.end function
