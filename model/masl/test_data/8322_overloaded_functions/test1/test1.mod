domain test1 is

  public service foo ( param1 : in integer );
  public service foo ( param1 : in string, param2 : in integer );
  public function foo ( param1 : in string, param2 : in integer ) return integer;

end domain;
