.assign dollarcurly = "$${"
..print "dumping class instances into SQL format..."
.select many o_objs from instances of O_OBJ
.for each o_obj in o_objs
..print "${o_obj.Name} (${o_obj.Key_Lett})"
..select many $l{o_obj.Key_Lett}s from instances of ${o_obj.Key_Lett}
..for each $l{o_obj.Key_Lett} in $l{o_obj.Key_Lett}s
INSERT INTO ${o_obj.Key_Lett} VALUES (\
  .select one o_attr related by o_obj->O_ATTR[R102] where ( selected.PAttr_ID == 0 )
  .assign delimiter = ""
  .while ( not_empty o_attr )
    .if ( "${o_attr.Descrip:Persistent}" != "false" )
      .assign attributename = o_attr.Name
      .select one s_dt related by o_attr->S_DT[R114]
      .if ( "string" == s_dt.Name )
        .if ( "Action_Semantics_internal" == attributename )
          .assign attributename = "Action_Semantics"
        .end if
${delimiter} '$${$l{o_obj.Key_Lett}.${attributename}}'\
      .elif ( ( "unique_id" == s_dt.Name ) or ( "same_as<Base_Attribute>" == s_dt.Name ) )
\\
  ..assign a = $l{o_obj.Key_Lett}.${attributename}
  ..print "un-initialized == $${$l{o_obj.Key_Lett}.${attributename}} $${a} ${s_dt.Name}"
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
..emit to file "../../src/dumped_class_instances.sql"
..exit 508
.emit to file "../../src/q.class.instance.dump.arc"
.exit 507
