domain test2 is

  object foo;

  object foo is

    public service bar ( param1 : in integer );
    public service bar ( param1 : in string, param2 : in integer );
    public function bar ( param1 : in string, param2 : in integer ) return integer;

  end object;

end domain;
