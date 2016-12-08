domain REF is

  object One;
  object Other;
  object Assr;

  relationship R1 is One unconditionally is_related_to one Other,
                     Other unconditionally is_related_to one One
                     using Assr;

  object One is
    one_id: preferred integer;
  end object;

  object Other is
    other_id: preferred integer;
  end object;

  object Assr is
    one_id: preferred referential(R1.is_related_to.One.one_id) integer;
    other_id: preferred referential(R1.is_related_to.Other.other_id) integer;
  end object;

end domain;
