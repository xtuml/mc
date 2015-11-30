/*----------------------------------------------------------------------------
 * File:  ooaofooa_BP_BP_class.c
 *
 * Class:       Breakpoint  (BP_BP)
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
ooaofooa_BP_BP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_BP_BP * self = (ooaofooa_BP_BP *) instance;
  /* Initialize application analysis class attributes.  */
  self->Breakpoint_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Breakpoint_ID;
  self->enabled = ( '0' != *avlstring[ 2 ] );
  self->condition_enabled = ( '0' != *avlstring[ 3 ] );
  self->hit_count = Escher_atoi( avlstring[ 4 ] );
  self->target_hit_count = Escher_atoi( avlstring[ 5 ] );
  self->for_step = ( '0' != *avlstring[ 6 ] );
  return return_identifier;
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_BP_BP *
ooaofooa_BP_BP_AnyWhere1( Escher_UniqueID_t w_Breakpoint_ID )
{
  ooaofooa_BP_BP * w; 
  Escher_Iterator_s iter_BP_BP;
  Escher_IteratorReset( &iter_BP_BP, &pG_ooaofooa_BP_BP_extent.active );
  while ( (w = (ooaofooa_BP_BP *) Escher_IteratorNext( &iter_BP_BP )) != 0 ) {
    if ( w->Breakpoint_ID == w_Breakpoint_ID ) {
      return w;
    }
  }
  return 0;
}


/* Accessors to BP_BP[R3102] subtypes */


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_BP_BP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_BP_BP * self = (ooaofooa_BP_BP *) instance;
  printf( "INSERT INTO BP_BP VALUES ( %ld,%d,%d,%d,%d,%d );\n",
    ((long)self->Breakpoint_ID & ESCHER_IDDUMP_MASK),
    self->enabled,
    self->condition_enabled,
    self->hit_count,
    self->target_hit_count,
    self->for_step );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_BP_BP_container[ ooaofooa_BP_BP_MAX_EXTENT_SIZE ];
static ooaofooa_BP_BP ooaofooa_BP_BP_instances[ ooaofooa_BP_BP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_BP_BP_extent = {
  {0,0}, {0,0}, &ooaofooa_BP_BP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_BP_BP_instances,
  sizeof( ooaofooa_BP_BP ), 0, ooaofooa_BP_BP_MAX_EXTENT_SIZE
  };


