domain mydom is
  
  object A;
  public service actualmaslroutine( p1 : in integer );
  public service cwrapper( p1 : in integer );

  object A is
    id: preferred integer;     
    i: integer;
  end object;
  
end domain;
