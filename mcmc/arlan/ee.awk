BEGIN { printf( "<s_ee>\n" ); }
{
  if ($1 ~ "function" ) {
    printf( "</s_brg>\n" );
    printf( "<s_brg name=\"%s_return_type\">\n", $2 );
  } else {
    if ( $2 ~ "inst_ref" ) {
      printf( "  <s_bparm s_dt=\"%s<%s>\" name=\"%s\"/>\n", $2, toupper($3), $3 );
    } else {
      printf( "  <s_bparm s_dt=\"%s\" name=\"%s\"/>\n", $2, $3 );
    }
  }
}
END { printf( "</s_ee>\n" ); }
