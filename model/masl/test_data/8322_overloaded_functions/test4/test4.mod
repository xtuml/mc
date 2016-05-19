domain test4 is

  terminator foo is

    public service bar ( param1 : in integer );
    public service bar ( param1 : in string, param2 : in integer );
    public function bar ( param1 : in string, param2 : in integer ) return integer;

  end terminator;

end domain;
