
/*
 * This main compiles into a small program that converts a state save
 * into human readable form.  The program reads from standard input.
 *
 * To compile this program:
 * gcc -DESCHER_STATESAVE SS_bridge.c -o ssconvert
 *
 * To execute the program:
 * ./ssconvert < ssfile.4bytes
 */
int
main()
{
  ssmeta_t metadata;
  ssbuf_index = 0; /* Reset buffer to beginning.  */
  printf( "SS read file\n" );
  /* Read from file and show.  */
  if ( 0 < fread( &metadata, sizeof( ssmeta_t ), 1, stdin ) ) {
    printf( "metadata %u,%u,%u\n", metadata.instances, metadata.sevents, metadata.ievents );
    if ( 0 < fread( ssbuf, sizeof( ssdata_t ), metadata.instances + metadata.sevents + metadata.ievents, stdin ) ) {
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
    }
  }
  return 0;
}
