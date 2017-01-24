.if ( te_sys.InstanceLoading )
/*
 * Dump instances in SQL format.
 */
void
${te_class.GeneratedName}_instancedumper( ${te_instance.handle} instance )
{
.// hack to help the build of maslin
.if ( "ooapopulation" != te_class.Key_Lett )
  ${te_class.GeneratedName} * self = (${te_class.GeneratedName} *) instance;
  printf( "INSERT INTO ${te_class.Key_Lett} VALUES ( ${te_class.attribute_format} );\n"${te_class.attribute_dump} );
.end if
}
.end if
