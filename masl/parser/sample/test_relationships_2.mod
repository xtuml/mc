domain Test is

  object Kid; pragma decl_pragma();
  object Dad;
  object Mom;

  relationship R1 is    Kid unconditionally is_child_of one Dad,
                        Dad unconditionally is_father_to many Kid; pragma rel_pragma ( 1 );

  relationship R2 is    Kid unconditionally is_child_of one Mom,
                        Mom unconditionally is_mother_to many Kid; pragma rel_pragma2 ( 1 );

  object Mom is
    last_name : preferred unique string;
  end object;
  pragma key_letters("M");

  object Dad is
    last_name : preferred unique string;
  end object;
  pragma key_letters("D");

  object Kid is
    last_name : preferred referential (R1.is_child_of.Dad.last_name, R2.is_child_of.Mom.last_name) string;
  end object;
  pragma key_letters("K");


end domain;
pragma new_prag("levi");
pragma old_prag( 1, 2 );
pragma big_prag( id );
