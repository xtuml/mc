/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_TIM_class.c
 *
 * Class:       Timer  (I_TIM)
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
ooaofooa_I_TIM_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_I_TIM * self = (ooaofooa_I_TIM *) instance;
  /* Initialize application analysis class attributes.  */
  self->Timer_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Timer_ID;
  self->delay = Escher_atoi( avlstring[ 2 ] );
  self->running = ( '0' != *avlstring[ 3 ] );
  self->recurring = ( '0' != *avlstring[ 4 ] );
  self->Event_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  self->Label = Escher_strcpy( self->Label, avlstring[ 6 ] );
  self->expiration = Escher_atoi( avlstring[ 7 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_I_TIM_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_I_TIM * ooaofooa_I_TIM_instance = (ooaofooa_I_TIM *) instance;
  ooaofooa_I_EVI * ooaofooa_I_EVIrelated_instance1 = (ooaofooa_I_EVI *) Escher_instance_cache[ (intptr_t) ooaofooa_I_TIM_instance->Event_ID ];
  if ( ooaofooa_I_EVIrelated_instance1 ) {
    ooaofooa_I_TIM_R2940_Link_delivered_by( ooaofooa_I_EVIrelated_instance1, ooaofooa_I_TIM_instance );
  }
}


/*
 * RELATE I_EVI TO I_TIM ACROSS R2940
 */
void
ooaofooa_I_TIM_R2940_Link_delivered_by( ooaofooa_I_EVI * part, ooaofooa_I_TIM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Event_ID = part->Event_ID;
  form->I_EVI_R2940_provides_delayed_delivery_of = part;
  part->I_TIM_R2940_delivered_by = form;
}

/*
 * UNRELATE I_EVI FROM I_TIM ACROSS R2940
 */
void
ooaofooa_I_TIM_R2940_Unlink_delivered_by( ooaofooa_I_EVI * part, ooaofooa_I_TIM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Event_ID = 0;
  form->I_EVI_R2940_provides_delayed_delivery_of = 0;
  part->I_TIM_R2940_delivered_by = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_I_TIM_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_I_TIM * self = (ooaofooa_I_TIM *) instance;
  printf( "INSERT INTO I_TIM VALUES ( %ld,%d,%d,%d,%ld,'%s',%d );\n",
    ((long)self->Timer_ID & ESCHER_IDDUMP_MASK),
    self->delay,
    self->running,
    self->recurring,
    ((long)self->Event_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Label ) ? self->Label : "",
    self->expiration );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_I_TIM_container[ ooaofooa_I_TIM_MAX_EXTENT_SIZE ];
static ooaofooa_I_TIM ooaofooa_I_TIM_instances[ ooaofooa_I_TIM_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_I_TIM_extent = {
  {0,0}, {0,0}, &ooaofooa_I_TIM_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_I_TIM_instances,
  sizeof( ooaofooa_I_TIM ), 0, ooaofooa_I_TIM_MAX_EXTENT_SIZE
  };


