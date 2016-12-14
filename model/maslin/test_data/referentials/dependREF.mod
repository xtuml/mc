domain REF is

  object class1;
  object class2;
  object class3;

  relationship R1 is class1 unconditionally relates_to one class2,
                     class2 unconditionally relates_to one class1;

  relationship R2 is class2 unconditionally relates_to one class3,
                     class3 unconditionally relates_to one class2;

  object class1 is
    id: integer;
    identifier is ( id );
  end object;

  object class2 is
    id: referential(R1.relates_to.class1.id) integer;
    identifier is ( id );
  end object;

  object class3 is
    id: referential(R2.relates_to.class2.id) integer;
    identifier is ( id );
  end object;

end domain;
