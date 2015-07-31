.if ( false == default_behavior )
    // state machine dispatcher process for ${te_class.Name}
    SC_THREAD( ${te_class.GeneratedName}_sm );
      dont_initialize();
      sensitive ${sc_event_sensitivity};
.else	  
    SC_CTHREAD( component_main, clk.pos() );
      reset_signal_is( rst_X, false );
.end if
