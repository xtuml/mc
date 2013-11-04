/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_TRACE_class.c
 *
 * Class:       trace  (TE_TRACE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "sys_sys_types.h"
#include "LOG_bridge.h"
#include "POP_bridge.h"
#include "T_bridge.h"
#include "ooaofooa_classes.h"

/*
 * Instance Loader (from string data).
 */
Escher_iHandle_t
ooaofooa_TE_TRACE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_TRACE * self = (ooaofooa_TE_TRACE *) instance;
  /* Initialize application analysis class attributes.  */
  Escher_strcpy( self->component_msg_start, avlstring[ 1 ] );
  Escher_strcpy( self->component_msg_end, avlstring[ 2 ] );
  Escher_strcpy( self->state_txn_start, avlstring[ 3 ] );
  Escher_strcpy( self->state_txn_end, avlstring[ 4 ] );
  Escher_strcpy( self->state_txn_event_ignored, avlstring[ 5 ] );
  Escher_strcpy( self->state_txn_cant_happen, avlstring[ 6 ] );
  Escher_strcpy( self->oal_trace, avlstring[ 7 ] );
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_TRACE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_TRACE * self = (ooaofooa_TE_TRACE *) instance;
  printf( "INSERT INTO TE_TRACE VALUES ( '%s','%s','%s','%s','%s','%s','%s' );\n",
    self->component_msg_start,
    self->component_msg_end,
    self->state_txn_start,
    self->state_txn_end,
    self->state_txn_event_ignored,
    self->state_txn_cant_happen,
    self->oal_trace );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_TRACE_container[ ooaofooa_TE_TRACE_MAX_EXTENT_SIZE ];
static ooaofooa_TE_TRACE ooaofooa_TE_TRACE_instances[ ooaofooa_TE_TRACE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_TRACE_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_TRACE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_TRACE_instances,
  sizeof( ooaofooa_TE_TRACE ), 0, ooaofooa_TE_TRACE_MAX_EXTENT_SIZE
  };


