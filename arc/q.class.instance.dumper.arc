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
  .invoke SortSetAlphabeticallyByNameAttr( s_sss )
  .assign s_ss_count = cardinality s_sss
  .assign s_ss_number = 0
  .while ( s_ss_number < s_ss_count )
    .for each s_ss in s_sss
      .if ( s_ss.Order == s_ss_number )
..print "${s_ss.Name}"
        .select many o_objs related by s_ss->O_OBJ[R2] where ( ( selected.Key_Lett != "TE_VAL" ) and ( selected.Key_Lett != "TE_VAR" ) )
        .invoke SortSetAscendingByAttr_Numb( o_objs )
        .assign o_obj_count = cardinality o_objs
        .assign o_obj_number = 0
        .while ( o_obj_number < o_obj_count )
          .for each o_obj in o_objs
            .if ( o_obj.Order == o_obj_number )
..select many $l{o_obj.Key_Lett}s from instances of ${o_obj.Key_Lett}
..for each $l{o_obj.Key_Lett} in $l{o_obj.Key_Lett}s
INSERT INTO ${o_obj.Key_Lett} VALUES (\
              .select one o_attr related by o_obj->O_ATTR[R102] where ( selected.PAttr_ID == 0 )
              .assign delimiter = ""
              .while ( not_empty o_attr )
                .if ( "${o_attr.Descrip:Persistent}" != "false" )
                  .assign attributename = o_attr.Name
                  .invoke r = GetAttributeCodeGenType( o_attr )
                  .assign te_dt = r.result
                  .if ( "string" == te_dt.Name )
                    .if ( ( "Action_Semantics_internal" == attributename ) or ( "Descrip" == attributename ) )
${delimiter} ''\\
                    .else
${delimiter} '$${$l{o_obj.Key_Lett}.${attributename}}'\
                    .end if
                  .elif ( "unique_id" == te_dt.Name )
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
              .break for
            .end if
          .end for
          .assign o_obj_number = o_obj_number + 1
        .end while
        .break for
      .end if
    .end for
    .assign s_ss_number = s_ss_number + 1
  .end while
..emit to file "_system.sql"
..exit 508
.end function
