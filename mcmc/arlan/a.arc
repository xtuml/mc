.function f
  .param inst_ref_set s_sparms
  .for each s_sparm in s_sparms
    .assign s_sparm.Previous_SParm_ID = 00
  .end for
  .// Declare an empty instance reference.
  .assign a = 1 + 2
  .invoke g()
  .select any o_obj from instances of O_OBJ
  .select many o_attrs related by o_obj->O_ATTR[R1000]
  .for each o_attr in o_attrs
    .invoke fun( 1, a, "sss" )
    .break for
  .end for
  .// relate o_attr to o_obj across R1;
  .assign o_attr.Obj_ID = o_obj.ID
  .// end relate
  .if ( a > 3 )
    .assign dog = "phydeaux"
  .else
    .assign cat = "snoughball"
  .end if
  .// comment goes here
  .assign attr_result = 5
  .emit to file "../../src/c.c"
  .print "hello whirled"
.end function
MMMM
.assign c = "string"
