domain REF is

  object Mother;
  object Father;
  object Child;

  relationship R1 is Mother conditionally mothers many child,
                     Child unconditionally is_child_of one Mother;

  relationship R2 is Father conditionally fathers many child,
                     Child unconditionally is_child_of one Father;

  object Mother is
    name: preferred string;
  end object;

  object Father is
    name: preferred string;
  end object;

  object Child is
    name: referential(R1.is_child_of.Mother.name, R2.is_child_of.Father.name) string;
  end object;

end domain;
