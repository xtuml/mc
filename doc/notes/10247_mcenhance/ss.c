#include "MicrowaveOven_sys_types.h"
#include "SS_bridge.h"

// What goes into SS_bridge.c?
// What goes into the user ss.c?
// Link through macros (defined in sys_user_co.h)?
// How do we define the sizes, ranges of instances, event queues, etc?
// How do I store the metadata for the instances and event queues?

extern void ss( void );

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

static FILE * ssfile = 0;
// CDS - The size of this should come from te_sys.StateSaveBufferSize.
#define SSBUFSIZE 1024
static c_t ssbuf[ SSBUFSIZE ];

static u4_t DumpEventQueue( c_t *, Escher_xtUMLEvent_t * );
static u4_t DumpEventQueue( c_t * buf, Escher_xtUMLEvent_t * e )
{
  u4_t instance_map, event_count = 0;
  while ( 0 != e ) {
    Escher_InstanceIndex_t instance_index = Escher_getindex( e->object_instance, e->destination_domain_number, e->destination_object_number );
    instance_map = (e->destination_domain_number<<24) + (e->destination_object_number<<16) + (instance_index<<8) + e->event_number;
    Escher_memmove( buf + event_count * 4, &instance_map, 4 );
    e = e->next;
    event_count++;
  }
  return event_count;
}


/*
 * Dump out instances of this class.
 */
extern Escher_Extent_t * const * const domain_class_info[ SYSTEM_DOMAIN_COUNT ];
static u4_t Escher_dump_instances( c_t *, const Escher_DomainNumber_t, const Escher_ClassNumber_t );
static u4_t Escher_dump_instances(
  c_t * buf,
  const Escher_DomainNumber_t domain_num,
  const Escher_ClassNumber_t class_num
)
{ 
  u4_t instance_map, instance_count = 0;
  Escher_Iterator_s iterator;
  Escher_iHandle_t instance;
  Escher_Extent_t * dci = *(domain_class_info[ domain_num ] + class_num);
  const Escher_SetElement_s * node = dci->inactive.head;
  if ( true ) {
    Escher_IteratorReset( &iterator, &dci->active );
    /* Cycle through the active list of instances of this class.  */
    while ( (instance = Escher_IteratorNext( &iterator )) != 0 ) {
      Escher_InstanceIndex_t instance_index = Escher_getindex( instance, domain_num, class_num );
      instance_map = (domain_num<<24) + (class_num<<16) + (instance_index<<8) + instance->current_state;
      Escher_memmove( buf + instance_count * 4, &instance_map, 4 );
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
  int i;
  u4_t metadata, instance_map, instance_count = 0, sevent_count = 0, ievent_count = 0;
  printf( "SS trigger to buffer\n" );
  for ( i = 0; i < MicrowaveOven_MAX_CLASS_NUMBERS; i++ ) {
    instance_count = instance_count + Escher_dump_instances( ssbuf + instance_count * 4, 0, i );
  }
  // CDS - for each thread...
  sevent_count = DumpEventQueue( ssbuf + instance_count * 4, self_event_queue[ 0 ].head );
  ievent_count = DumpEventQueue( ssbuf + instance_count * 4 + sevent_count * 4, non_self_event_queue[ 0 ].head );
  printf( "SS trigger write buffer to file\n" );
  if ( 0 == (ssfile = fopen( "ssfile.4bytes", "wb+" )) ) {
    printf( "could not open SS file for writing... dumping to stdout\n" );
    ssfile = stdout;
  }
  metadata = (instance_count << 16) + (sevent_count << 8) + ievent_count;
  printf( "metadata start %lu,%lu,%lu %lx\n", instance_count, sevent_count, ievent_count, metadata );
  fwrite( &metadata, 4, 1, ssfile );
  fwrite( ssbuf, 4, instance_count + sevent_count + ievent_count, ssfile );
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
  int i;
  u4_t metadata, instance_map, instance_count = 0, sevent_count = 0, ievent_count = 0;
  u4_t d, c, s, e;
  printf( "SS read file\n" );
  if ( 0 == (ssfile = freopen( "ssfile.4bytes", "rb", ssfile )) ) {
    printf( "could not open SS file for reading\n" );
    return;
  }
  /* Read from file and show.  */
  fread( &metadata, 4, 1, ssfile );
  instance_count = (metadata >> 16);
  sevent_count = (metadata >> 8) & 0xff;
  ievent_count = metadata & 0xff;
  printf( "metadata after write and read %lu,%lu,%lu %lx\n", instance_count, sevent_count, ievent_count, metadata );
  printf( "domain,class,instance,state\n" );
  while ( 0 < instance_count ) {
    fread( &instance_map, 4, 1, ssfile );
    printf( "%lu,%lu,%lu,%lu\n", (instance_map>>24)&0xff, (instance_map>>16)&0xff, (instance_map>>8)&0xff, instance_map&0xff );
    d = (instance_map>>24)&0xff; c = (instance_map>>16)&0xff; s = instance_map&0xff;
    printf( "%s,%s,%lu,%s\n", domains[d], classes[d][c], (instance_map>>8)&0xff, states[d][c][s] );
    instance_count--;
  }
  printf( "domain,class,instance,event\n" );
  printf( "SS self event\n" );
  while ( 0 < sevent_count ) {
    fread( &instance_map, 4, 1, ssfile );
    printf( "%lu,%lu,%lu,%lu\n", (instance_map>>24)&0xff, (instance_map>>16)&0xff, (instance_map>>8)&0xff, instance_map&0xff );
    d = (instance_map>>24)&0xff; c = (instance_map>>16)&0xff; e = instance_map&0xff;
    printf( "%s,%s,%lu,%s\n", domains[d], classes[d][c], (instance_map>>8)&0xff, events[d][c][e] );
    sevent_count--;
  }
  printf( "SS instance event queue\n" );
  while ( 0 < ievent_count ) {
    fread( &instance_map, 4, 1, ssfile );
    printf( "%lu,%lu,%lu,%lu\n", (instance_map>>24)&0xff, (instance_map>>16)&0xff, (instance_map>>8)&0xff, instance_map&0xff );
    d = (instance_map>>24)&0xff; c = (instance_map>>16)&0xff; e = instance_map&0xff;
    printf( "%s,%s,%lu,%s\n", domains[d], classes[d][c], (instance_map>>8)&0xff, events[d][c][e] );
    ievent_count--;
  }
}
