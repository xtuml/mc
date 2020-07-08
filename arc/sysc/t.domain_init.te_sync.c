.if ( "SystemC" == te_thread.flavor )
    SC_THREAD( ${te_sync.intraface_method} );
.else
${te_sync.intraface_method}();
.end if
.//
