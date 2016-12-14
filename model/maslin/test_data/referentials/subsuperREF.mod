domain REF is

  object super;
  object sub1;
  object sub2;

  relationship R1 is super is_a ( sub1, sub2 );

  object super is
    id: integer;
    id2: integer;
    identifier is ( id, id2 );
  end object;

  object sub1 is
    id: referential(R1.id) integer;
    id2: referential(R1.id2) integer;
  end object;

  object sub2 is
    id: referential(R1.id) integer;
    id2: referential(R1.id2) integer;
  end object;

end domain;
