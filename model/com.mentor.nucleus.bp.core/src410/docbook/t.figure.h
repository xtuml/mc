T_b( "<para>" );
T_b( "\n" );
T_b( "<figure id='" );
T_underscore( doc_fig->ident );
T_b( "-figure'>" );
T_b( "\n" );
T_b( "<title id='" );
T_underscore( doc_fig->ident );
T_b( "-figure-title'>" );
T_b( doc_fig->title );
T_b( "</title>" );
T_b( "\n" );
T_b( "<mediaobject><imageobject>" );
T_b( "\n" );
T_b( "<imagedata fileref='" );
T_b( doc_img->target );
T_b( "' scalefit='1' width='100%'/>" );
T_b( "\n" );
T_b( "</imageobject></mediaobject>" );
T_b( "\n" );
T_b( "</figure>" );
T_b( "\n" );
T_b( "</para>" );
T_b( "\n" );
