domain test4 is

  terminator foo is

    private service bar ( param1 : in integer );
    private service bar ( param1 : in string, param2 : in integer );
    private function bar ( param1 : in string, param2 : in integer ) return integer;

  end terminator;

end domain;
