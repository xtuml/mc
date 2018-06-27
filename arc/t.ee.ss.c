.// state save declarations and definitions
.// common between the application and the formatter
/* The following data structures must be compatible.
   Be aware of byte alignment.  The structures are united.  */
typedef struct { u1_t component, class, instance, state; } ssinstance_t;
typedef struct { u1_t component, class, instance, event; } ssevent_t;
typedef struct { u2_t instances; u1_t sevents, ievents; } ssmeta_t;
typedef union { ssinstance_t i; ssevent_t e; ssmeta_t m; } ssdata_t;
static FILE * ssfile;
#define SSBUFSIZE ${te_sys.StateSaveBufferSize}

static ssdata_t ssbuf[ SSBUFSIZE / sizeof( ssdata_t ) ];
static ${te_prefix.type}size_t ssbuf_index;

#ifndef ${te_prefix.define_u}STATESAVE

// What goes into SS_bridge.c?
// What goes into the user ss.c?
// Link through macros (defined in sys_user_co.h)?
// How do we define the sizes, ranges of instances, event queues, etc?
// How do I store the metadata for the instances and event queues?

extern ${te_prefix.result}Extent_t * const * const domain_class_info[ SYSTEM_DOMAIN_COUNT ];

// CDS - not sure whether we should make this an accessible type
typedef struct { ${te_prefix.result}xtUMLEvent_t * head, * tail; } xtUMLEventQueue_t;
/* Pointer to head of list of available event nodes.  */
static ${te_prefix.result}xtUMLEvent_t * free_event_list = 0;
extern xtUMLEventQueue_t non_self_event_queue[ NUM_OF_XTUML_CLASS_THREADS ];
extern xtUMLEventQueue_t self_event_queue[ NUM_OF_XTUML_CLASS_THREADS ];

static ${te_prefix.type}size_t DumpEventQueue( ${te_prefix.result}xtUMLEvent_t * );
static ${te_prefix.type}size_t DumpEventQueue( ${te_prefix.result}xtUMLEvent_t * e )
{
  ${te_prefix.type}size_t event_count = 0;
  while ( 0 != e ) {
    ssevent_t event_map;
    event_map.component = e->destination_domain_number;
    event_map.class = e->destination_object_number;
    event_map.instance = ${te_prefix.result}getindex( e->object_instance, e->destination_domain_number, e->destination_object_number );
    event_map.event = e->event_number;
    ssbuf[ ssbuf_index++ ].e = event_map;
    e = e->next;
    event_count++;
  }
  return event_count;
}

/*
 * Dump out instances of this class.
 */
static ${te_prefix.type}size_t ${te_prefix.result}dump_instances( const ${te_prefix.result}DomainNumber_t, const ${te_prefix.result}ClassNumber_t );
static ${te_prefix.type}size_t ${te_prefix.result}dump_instances(
  const ${te_prefix.result}DomainNumber_t domain_num,
  const ${te_prefix.result}ClassNumber_t class_num
)
{ 
  ${te_prefix.type}size_t instance_count = 0;
  if ( true ) {
    ${te_prefix.result}Iterator_s iterator;
    ${te_prefix.result}iHandle_t instance;
    ${te_prefix.result}Extent_t * dci = *(domain_class_info[ domain_num ] + class_num);
    const ${te_prefix.result}SetElement_s * node = dci->inactive.head;
    ${te_prefix.result}IteratorReset( &iterator, &dci->active );
    /* Cycle through the active list of instances of this class.  */
    while ( (instance = ${te_prefix.result}IteratorNext( &iterator )) != 0 ) {
      ssinstance_t instance_map;
      instance_map.component = domain_num;
      instance_map.class = class_num;
      instance_map.instance = ${te_prefix.result}getindex( instance, domain_num, class_num );
      instance_map.state = instance->current_state;
      ssbuf[ ssbuf_index++ ].i = instance_map;
      instance_count++;
    }
  }
  return instance_count;
}

int ss()
{
  ${te_prefix.type}size_t i, j;
  u2_t instance_count = 0;
  unsigned char sevent_count = 0, ievent_count = 0;
  ssinstance_t instance_map;
  ssevent_t event_map;
  ssmeta_t metadata;
  ssbuf_index = 0; /* Reset buffer to beginning.  */
  printf( "SS trigger to buffer\n" );
  for ( i = 0; i < SYSTEM_DOMAIN_COUNT; i++ ) {
    // CDS - This one is not right.
    for ( j = 0; j < MicrowaveOven_MAX_CLASS_NUMBERS; j++ ) {
      instance_count = instance_count + ${te_prefix.result}dump_instances( i, j );
    }
  }
  // CDS - for each thread...
  sevent_count = DumpEventQueue( self_event_queue[ 0 ].head );
  ievent_count = DumpEventQueue( non_self_event_queue[ 0 ].head );
  printf( "SS trigger write buffer to file\n" );
  if ( 0 == (ssfile = fopen( "ssfile.4bytes", "wb+" )) ) {
    printf( "could not open SS file for writing... dumping to stdout\n" );
    ssfile = stdout;
  }
  metadata.instances = instance_count;
  metadata.sevents = sevent_count;
  metadata.ievents = ievent_count;
  printf( "metadata start %u,%u,%u\n", instance_count, sevent_count, ievent_count );
  fwrite( &metadata, sizeof( ssmeta_t ), 1, ssfile );
  fwrite( ssbuf, sizeof( ssdata_t ), instance_count + sevent_count + ievent_count, ssfile );
  return 0;
}
.include "${te_file.arc_path}/t.ee.ss.main.c"
