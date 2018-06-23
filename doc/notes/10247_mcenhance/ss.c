#include "MicrowaveOven_sys_types.h"
#include "SS_bridge.h"

// What goes into SS_bridge.c?
// What goes into the user ss.c?
// Link through macros (defined in sys_user_co.h)?
// How do we define the sizes, ranges of instances, event queues, etc?
// How do I store the metadata for the instances and event queues?

extern Escher_Extent_t * const * const domain_class_info[ SYSTEM_DOMAIN_COUNT ];
/*
 * Given the instance handle and class number, return the instance index
 * (into the instance collection).
 */
static Escher_InstanceIndex_t Escher_getindex(
  const Escher_iHandle_t,
  const Escher_DomainNumber_t,
  const Escher_ClassNumber_t );
// CDS - Generate this into system code?  ...or just keep it private here.
static Escher_InstanceIndex_t Escher_getindex(
  const Escher_iHandle_t instance,
  const Escher_DomainNumber_t domain_num,
  const Escher_ClassNumber_t class_num
)
{
  Escher_Extent_t * dci = *( domain_class_info[ domain_num ] + class_num );
  return ( ((c_t *) instance - (c_t *) dci->pool ) / dci->size );
}

// CDS - not sure whether we should make this an accessible type
typedef struct { Escher_xtUMLEvent_t * head, * tail; } xtUMLEventQueue_t;
/* Pointer to head of list of available event nodes.  */
static Escher_xtUMLEvent_t * free_event_list = 0;
extern xtUMLEventQueue_t non_self_event_queue[ NUM_OF_XTUML_CLASS_THREADS ];
extern xtUMLEventQueue_t self_event_queue[ NUM_OF_XTUML_CLASS_THREADS ];

/* The following data structures must be compatible.
   Be aware of byte alignment.  The structures are united.  */
typedef struct { u1_t domain, class, instance, state; } ssinstance_t;
typedef struct { u1_t domain, class, instance, event; } ssevent_t;
typedef struct { u2_t instances; u1_t sevents, ievents; } ssmeta_t;
typedef union { ssinstance_t i; ssevent_t e; ssmeta_t m; } ssdata_t;
static FILE * ssfile = 0;
// CDS - The size of this should come from te_sys.StateSaveBufferSize.
#define SSBUFSIZE 1024
static ssdata_t ssbuf[ SSBUFSIZE / sizeof( ssdata_t ) ];
static Escher_size_t ssbuf_index;

static Escher_size_t DumpEventQueue( Escher_xtUMLEvent_t * );
static Escher_size_t DumpEventQueue( Escher_xtUMLEvent_t * e )
{
  Escher_size_t event_count = 0;
  while ( 0 != e ) {
    ssevent_t event_map;
    event_map.domain = e->destination_domain_number;
    event_map.class = e->destination_object_number;
    event_map.instance = Escher_getindex( e->object_instance, e->destination_domain_number, e->destination_object_number );
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
extern Escher_Extent_t * const * const domain_class_info[ SYSTEM_DOMAIN_COUNT ];
static Escher_size_t Escher_dump_instances( const Escher_DomainNumber_t, const Escher_ClassNumber_t );
static Escher_size_t Escher_dump_instances(
  const Escher_DomainNumber_t domain_num,
  const Escher_ClassNumber_t class_num
)
{ 
  Escher_size_t instance_count = 0;
  if ( true ) {
    Escher_Iterator_s iterator;
    Escher_iHandle_t instance;
    Escher_Extent_t * dci = *(domain_class_info[ domain_num ] + class_num);
    const Escher_SetElement_s * node = dci->inactive.head;
    Escher_IteratorReset( &iterator, &dci->active );
    /* Cycle through the active list of instances of this class.  */
    while ( (instance = Escher_IteratorNext( &iterator )) != 0 ) {
      ssinstance_t instance_map;
      instance_map.domain = domain_num;
      instance_map.class = class_num;
      instance_map.instance = Escher_getindex( instance, domain_num, class_num );
      instance_map.state = instance->current_state;
      ssbuf[ ssbuf_index++ ].i = instance_map;
      instance_count++;
    }
  }
  return instance_count;
}


void ss_save( void );
void ss_show( void );

void ss()
{
  ss_save();
  ss_show();
}

void ss_save()
{
  Escher_size_t i, j;
  u2_t instance_count = 0;
  u1_t sevent_count = 0, ievent_count = 0;
  ssinstance_t instance_map;
  ssevent_t event_map;
  ssmeta_t metadata;
  ssbuf_index = 0; /* Reset buffer to beginning.  */
  printf( "SS trigger to buffer\n" );
  for ( i = 0; i < SYSTEM_DOMAIN_COUNT; i++ ) {
    // CDS - This one is not right.
    for ( j = 0; j < MicrowaveOven_MAX_CLASS_NUMBERS; j++ ) {
      instance_count = instance_count + Escher_dump_instances( i, j );
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
}




#define CLASS0_STATE_NAME_STRINGS "", "Awaiting Test Sequence Initiation", "Performing Test Sequence 1", "Performing Test Sequence 2", "Cooking Complete"
#define CLASS1_STATE_NAME_STRINGS "", "Awaiting Cooking Request", "Ensuring Safe to Cook", "Cooking", "Cooking Suspended", "Signalling Cooking Period Over", "Assigning Cooking Period"
#define CLASS2_STATE_NAME_STRINGS "", "Output Power Stable and OFF", "Reducing Output Power", "Raising Output Power", "Output Power Stable and ON"
#define CLASS3_STATE_NAME_STRINGS "", "Off", "On"
#define CLASS4_STATE_NAME_STRINGS "", "Awaiting Beeper Request", "Beeping"
#define CLASS5_STATE_NAME_STRINGS "", "Open", "Closed"
#define CLASS6_STATE_NAME_STRINGS "", "Stationary", "Rotating"

#define CLASS0_EVENT_NAME_STRINGS "perform_test_seq_1", "test_seq_complete"
#define CLASS1_EVENT_NAME_STRINGS "start_cooking", "cancel_cooking", "cooking_period_over", "beeping_over", "oven_safe", "cooking_period"
#define CLASS2_EVENT_NAME_STRINGS "increase_power", "decrease_power", "power_on", "power_off"
#define CLASS3_EVENT_NAME_STRINGS "switch_on", "switch_off"
#define CLASS4_EVENT_NAME_STRINGS "start_beeping", "beep_delay_over", "beeping_stopped", "stop_beeping"
#define CLASS5_EVENT_NAME_STRINGS "release", "close"
#define CLASS6_EVENT_NAME_STRINGS "spin", "stop"

static c_t * domains[1] = { "MicrowaveOven" };
static c_t * classes[1][7] = {
  { "MO_TS", "MO_O", "MO_MT", "MO_IL", "MO_B", "MO_D", "MO_TRN" }
};
static c_t * states[1][7][256] = {
  {
    { CLASS0_STATE_NAME_STRINGS },
    { CLASS1_STATE_NAME_STRINGS },
    { CLASS2_STATE_NAME_STRINGS },
    { CLASS3_STATE_NAME_STRINGS },
    { CLASS4_STATE_NAME_STRINGS },
    { CLASS5_STATE_NAME_STRINGS },
    { CLASS6_STATE_NAME_STRINGS }
  }
};
static c_t * events[1][7][256] = {
  {
    { CLASS0_EVENT_NAME_STRINGS },
    { CLASS1_EVENT_NAME_STRINGS },
    { CLASS2_EVENT_NAME_STRINGS },
    { CLASS3_EVENT_NAME_STRINGS },
    { CLASS4_EVENT_NAME_STRINGS },
    { CLASS5_EVENT_NAME_STRINGS },
    { CLASS6_EVENT_NAME_STRINGS }
  }
};

void
ss_show()
{
  ssmeta_t metadata;
  ssbuf_index = 0; /* Reset buffer to beginning.  */
  printf( "SS read file\n" );
  if ( 0 == (ssfile = freopen( "ssfile.4bytes", "rb", ssfile )) ) {
    printf( "could not open SS file for reading\n" );
    return;
  }
  /* Read from file and show.  */
  fread( &metadata, sizeof( ssmeta_t ), 1, ssfile );
  fread( ssbuf, sizeof( ssdata_t ), metadata.instances + metadata.sevents + metadata.ievents, ssfile );
  printf( "metadata after write and read %u,%u,%u\n", metadata.instances, metadata.sevents, metadata.ievents );
  printf( "domain,class,instance,state\n" );
  while ( 0 < metadata.instances ) {
    ssinstance_t instance_map = ssbuf[ ssbuf_index++ ].i;
    u1_t d = instance_map.domain, c = instance_map.class, i = instance_map.instance, s = instance_map.state;
    printf( "%u,%u,%u,%u:%s,%s,%u,%s\n", d, c, i, s, domains[d], classes[d][c], instance_map.instance, states[d][c][s] );
    metadata.instances--;
  }
  printf( "domain,class,instance,event\n" );
  printf( "SS self event\n" );
  while ( 0 < metadata.sevents ) {
    ssevent_t event_map = ssbuf[ ssbuf_index++ ].e;
    u1_t d = event_map.domain, c = event_map.class, i = event_map.instance, e = event_map.event;
    printf( "%u,%u,%u,%u:%s,%s,%u,%s\n", d, c, i, e, domains[d], classes[d][c], event_map.instance, events[d][c][e] );
    metadata.sevents--;
  }
  printf( "SS instance event queue\n" );
  while ( 0 < metadata.ievents ) {
    ssevent_t event_map = ssbuf[ ssbuf_index++ ].e;
    u1_t d = event_map.domain, c = event_map.class, i = event_map.instance, e = event_map.event;
    printf( "%u,%u,%u,%u:%s,%s,%u,%s\n", d, c, i, e, domains[d], classes[d][c], event_map.instance, events[d][c][e] );
    metadata.ievents--;
  }
}