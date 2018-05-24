#include "MicrowaveOven_sys_types.h"
#include "SS_bridge.h"

extern void ss( void );

typedef struct { Escher_xtUMLEvent_t * head, * tail; } xtUMLEventQueue_t;
/* Pointer to head of list of available event nodes.  */
static Escher_xtUMLEvent_t * free_event_list = 0;
extern xtUMLEventQueue_t non_self_event_queue[ NUM_OF_XTUML_CLASS_THREADS ];
extern xtUMLEventQueue_t self_event_queue[ NUM_OF_XTUML_CLASS_THREADS ];

static void DumpOoaNonSelfEvent( void );
static void DumpOoaNonSelfEvent( void )
{
  Escher_xtUMLEvent_t * e = non_self_event_queue[ 0 ].head;
  while ( 0 != e ) {
    printf( "event d%d c%d e%d\n", e->destination_domain_number, e->destination_object_number, e->event_number );
    e = e->next;
  }
}


/*
 * Dump out instances of this class.
 */
extern Escher_Extent_t * const * const domain_class_info[ SYSTEM_DOMAIN_COUNT ];
static void Escher_dump_instances( const Escher_DomainNumber_t, const Escher_ClassNumber_t );
static void Escher_dump_instances(
  const Escher_DomainNumber_t domain_num,
  const Escher_ClassNumber_t class_num
)
{ 
  Escher_Iterator_s iterator;
  Escher_iHandle_t instance;
  Escher_Extent_t * dci = *(domain_class_info[ domain_num ] + class_num);
  const Escher_SetElement_s * node = dci->inactive.head;
  if ( true ) {
    Escher_IteratorReset( &iterator, &dci->active );
    /* Cycle through the active list of instances of this class.  */
    while ( (instance = Escher_IteratorNext( &iterator )) != 0 ) {
      printf( "dump %d %d %d\n", domain_num, class_num, instance->current_state );
    }
  }
}

void ss()
{
  int i;
  printf( "SS trigger begin\n" );
  for ( i = 0; i < MicrowaveOven_MAX_CLASS_NUMBERS; i++ ) {
    Escher_dump_instances( 0, i );
  }
  DumpOoaNonSelfEvent();
  printf( "SS trigger end\n" );
}
