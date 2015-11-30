/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_TIM_class.c
 *
 * Class:       timer  (TE_TIM)
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
ooaofooa_TE_TIM_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_TIM * self = (ooaofooa_TE_TIM *) instance;
  /* Initialize application analysis class attributes.  */
  Escher_strcpy( self->max_timers, avlstring[ 1 ] );
  self->keyed_timer_support = ( '0' != *avlstring[ 2 ] );
  self->recurring_timer_support = ( '0' != *avlstring[ 3 ] );
  self->timer_event_search_and_destroy = ( '0' != *avlstring[ 4 ] );
  Escher_strcpy( self->internal_type, avlstring[ 5 ] );
  Escher_strcpy( self->scope, avlstring[ 6 ] );
  Escher_strcpy( self->event_name, avlstring[ 7 ] );
  return return_identifier;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_TIM_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_TIM * self = (ooaofooa_TE_TIM *) instance;
  printf( "INSERT INTO TE_TIM VALUES ( '%s',%d,%d,%d,'%s','%s','%s' );\n",
    self->max_timers,
    self->keyed_timer_support,
    self->recurring_timer_support,
    self->timer_event_search_and_destroy,
    self->internal_type,
    self->scope,
    self->event_name );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_TIM_container[ ooaofooa_TE_TIM_MAX_EXTENT_SIZE ];
static ooaofooa_TE_TIM ooaofooa_TE_TIM_instances[ ooaofooa_TE_TIM_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_TIM_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_TIM_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_TIM_instances,
  sizeof( ooaofooa_TE_TIM ), 0, ooaofooa_TE_TIM_MAX_EXTENT_SIZE
  };


