domain test5 is

  private service foo ( param1 : in integer );
  private service foo ( param1 : in string, param2 : in integer );
  private function foo ( param1 : in string, param2 : in integer ) return integer;

end domain;
