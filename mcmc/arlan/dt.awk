{
  if ($1 ~ "function" ) {
    printf( "</s_sync>\n" );
    printf( "<s_sync name=\"%s\">\n", $2 );
  } else {
    if ( $2 ~ "inst_ref" ) {
      printf( "  <s_sparm s_dt=\"%s<%s>\" name=\"%s\"/>\n", $2, toupper($3), $3 );
    } else {
      printf( "  <s_sparm s_dt=\"%s\" name=\"%s\"/>\n", $2, $3 );
    }
  }
}
END { printf( "</s_sync>\n" ); }
