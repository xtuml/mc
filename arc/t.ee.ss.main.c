#else

int
main()
{
  ssmeta_t metadata;
  ssbuf_index = 0; /* Reset buffer to beginning.  */
  printf( "SS read file\n" );
  if ( 0 == (ssfile = fopen( "ssfile.4bytes", "rb" )) ) {
    printf( "could not open SS file for reading\n" );
    return 1;
  }
  /* Read from file and show.  */
  fread( &metadata, sizeof( ssmeta_t ), 1, ssfile );
  fread( ssbuf, sizeof( ssdata_t ), metadata.instances + metadata.sevents + metadata.ievents, ssfile );
  printf( "metadata after write and read %u,%u,%u\n", metadata.instances, metadata.sevents, metadata.ievents );
  printf( "component,class,instance,state\n" );
  while ( 0 < metadata.instances ) {
    ssinstance_t instance_map = ssbuf[ ssbuf_index++ ].i;
    unsigned char d = instance_map.component, c = instance_map.class, i = instance_map.instance, s = instance_map.state;
    printf( "%u,%u,%u,%u:%s,%s,%u,%s\n", d, c, i, s, components[d], classes[d][c], instance_map.instance, states[d][c][s] );
    metadata.instances--;
  }
  printf( "component,class,instance,event\n" );
  printf( "SS self event\n" );
  while ( 0 < metadata.sevents ) {
    ssevent_t event_map = ssbuf[ ssbuf_index++ ].e;
    unsigned char d = event_map.component, c = event_map.class, i = event_map.instance, e = event_map.event;
    printf( "%u,%u,%u,%u:%s,%s,%u,%s\n", d, c, i, e, components[d], classes[d][c], event_map.instance, events[d][c][e] );
    metadata.sevents--;
  }
  printf( "SS instance event queue\n" );
  while ( 0 < metadata.ievents ) {
    ssevent_t event_map = ssbuf[ ssbuf_index++ ].e;
    unsigned char d = event_map.component, c = event_map.class, i = event_map.instance, e = event_map.event;
    printf( "%u,%u,%u,%u:%s,%s,%u,%s\n", d, c, i, e, components[d], classes[d][c], event_map.instance, events[d][c][e] );
    metadata.ievents--;
  }
  return 0;
}
#endif
