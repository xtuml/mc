domain a is
  object o;

  public service test();
  public service myfunction();

  object o is 
    id : preferred integer;
    n : integer;
    m : integer;
  end object;

end domain;
pragma key_letter("BIGA");
