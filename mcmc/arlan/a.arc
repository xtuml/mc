.function f
  .assign a = 1 + 2
  .invoke g()
  .select any o_obj from instances of O_OBJ
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
.end function
