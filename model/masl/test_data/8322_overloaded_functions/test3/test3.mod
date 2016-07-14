// This test should not be used. It is here to demonstrate that
// states cannot be overloaded.

domain test3 is

  object foo;

  object foo is

    state bar ( param1 : in integer );
    state bar ( param1 : in integer, param2 : in integer );

    event evt1 ( param1 : in integer );
    event evt2 ( param1 : in integer, param2 : in integer );

    transition is
      
      Non_Existent ( evt1 => Cannot_Happen,
                     evt2 => Cannot_Happen );
      bar          ( evt1 => bar,
                     evt2 => Ignore );
      bar          ( evt1 => Ignore,
                     evt2 => Ignore );

    end transition;

  end object;

end domain;
