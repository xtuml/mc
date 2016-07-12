domain REF is

  object Mother;
  object Father;
  object Child;
  object Pet;
  object GParent;
  object Car;

  relationship R1 is Mother conditionally mothers many child,
                     Child unconditionally is_child_of one Mother;

  relationship R2 is Father conditionally fathers many child,
                     Child unconditionally is_child_of one Father;

  relationship R3 is Child conditionally cares_for one Pet,
                     Pet unconditionally is_cared_for_by one Child;

  relationship R4 is GParent conditionally dotes_on many Child,
                     Child unconditionally doted_on_by many GParent;

  relationship R5 is GParent conditionally drives one Car,
                     Car conditionally is_driven_by one GParent;

  object Mother is
    first_name: string;
    last_name: preferred string;
    maiden_name: string;
    identifier is ( maiden_name );
  end object;

  object Father is
    first_name: string;
    last_name: preferred string;
  end object;

  object Child is
    first_name: string;
    last_name: preferred referential(R1.is_child_of.Mother.last_name, R2.is_child_of.Father.last_name) string;
    gparents_name: referential(R4.doted_on_by.GParent.last_name) string;
    identifier is ( first_name );
  end object;

  object Pet is
    license: preferred integer;
    owner: referential(R3.is_cared_for_by.Child.first_name) string;
    address: string;
    identifier is ( owner );
    identifier is ( owner, address );
  end object;

  object GParent is
    first_name: string;
    last_name: preferred string;
    make: referential(R5.drives.Car.make) string;
    model: referential(R5.drives.Car.model) string;
  end object;

  object Car is
    make: preferred string;
    model: preferred string;
  end object;

end domain;
