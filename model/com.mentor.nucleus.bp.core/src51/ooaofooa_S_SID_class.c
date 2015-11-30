/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_SID_class.c
 *
 * Class:       Subsystem in Domain  (S_SID)
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
ooaofooa_S_SID_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_SID * self = (ooaofooa_S_SID *) instance;
  /* Initialize application analysis class attributes.  */
  self->Dom_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->SS_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_S_SID_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_SID * ooaofooa_S_SID_instance = (ooaofooa_S_SID *) instance;
  ooaofooa_S_SS * ooaofooa_S_SSrelated_instance1 = (ooaofooa_S_SS *) Escher_instance_cache[ (intptr_t) ooaofooa_S_SID_instance->SS_ID ];
  ooaofooa_S_DOM * ooaofooa_S_DOMrelated_instance2 = (ooaofooa_S_DOM *) Escher_instance_cache[ (intptr_t) ooaofooa_S_SID_instance->Dom_ID ];
  if ( ooaofooa_S_SSrelated_instance1 && ooaofooa_S_DOMrelated_instance2 ) {
    ooaofooa_S_SID_R43_Link( ooaofooa_S_SSrelated_instance1, ooaofooa_S_DOMrelated_instance2, ooaofooa_S_SID_instance );
  }
}


/*
 * RELATE S_SS TO S_DOM ACROSS R43 USING S_SID
 */
void
ooaofooa_S_SID_R43_Link( ooaofooa_S_SS * aone, ooaofooa_S_DOM * aoth, ooaofooa_S_SID * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->SS_ID = aone->SS_ID;
  assr->Dom_ID = aoth->Dom_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->S_SS_R43_has_top_level_subsystems = aone;
  assr->S_DOM_R43_is_top_level_of_subsystems = aoth;
  aone->S_SID_R43 = assr;
  Escher_SetInsertElement( &aoth->S_SID_R43, assr );
}

/*
 * UNRELATE S_SS FROM S_DOM ACROSS R43 USING S_SID
 */
void
ooaofooa_S_SID_R43_Unlink( ooaofooa_S_SS * aone, ooaofooa_S_DOM * aoth, ooaofooa_S_SID * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->S_SS_R43_has_top_level_subsystems = 0;
  assr->S_DOM_R43_is_top_level_of_subsystems = 0;
  aone->S_SID_R43 = 0;
  Escher_SetRemoveElement( &aoth->S_SID_R43, assr );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_S_SID_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_SID * self = (ooaofooa_S_SID *) instance;
  printf( "INSERT INTO S_SID VALUES ( %ld,%ld );\n",
    ((long)self->Dom_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SS_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_SID_container[ ooaofooa_S_SID_MAX_EXTENT_SIZE ];
static ooaofooa_S_SID ooaofooa_S_SID_instances[ ooaofooa_S_SID_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_SID_extent = {
  {0,0}, {0,0}, &ooaofooa_S_SID_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_SID_instances,
  sizeof( ooaofooa_S_SID ), 0, ooaofooa_S_SID_MAX_EXTENT_SIZE
  };


