/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_MOAH_class.c
 *
 * Class:       Moore Action Home  (SM_MOAH)
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
ooaofooa_SM_MOAH_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SM_MOAH * self = (ooaofooa_SM_MOAH *) instance;
  /* Initialize application analysis class attributes.  */
  self->Act_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->SMstt_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SM_MOAH_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SM_MOAH * ooaofooa_SM_MOAH_instance = (ooaofooa_SM_MOAH *) instance;
  ooaofooa_SM_STATE * ooaofooa_SM_STATErelated_instance1 = ooaofooa_SM_STATE_AnyWhere1( ooaofooa_SM_MOAH_instance->SMstt_ID, ooaofooa_SM_MOAH_instance->SM_ID );
  ooaofooa_SM_MOORE * ooaofooa_SM_MOORErelated_instance2 = ooaofooa_SM_MOORE_AnyWhere1( ooaofooa_SM_MOAH_instance->SM_ID );
  if ( ooaofooa_SM_STATErelated_instance1 && ooaofooa_SM_MOORErelated_instance2 ) {
    ooaofooa_SM_MOAH_R511_Link( ooaofooa_SM_MOORErelated_instance2, ooaofooa_SM_STATErelated_instance1, ooaofooa_SM_MOAH_instance );
  }
  {
  ooaofooa_SM_AH * ooaofooa_SM_AHrelated_instance1 = ooaofooa_SM_AH_AnyWhere1( ooaofooa_SM_MOAH_instance->Act_ID, ooaofooa_SM_MOAH_instance->SM_ID );
  if ( ooaofooa_SM_AHrelated_instance1 ) {
    ooaofooa_SM_MOAH_R513_Link( ooaofooa_SM_AHrelated_instance1, ooaofooa_SM_MOAH_instance );
  }
  }
}


/*
 * RELATE SM_MOORE TO SM_STATE ACROSS R511 USING SM_MOAH
 */
void
ooaofooa_SM_MOAH_R511_Link( ooaofooa_SM_MOORE * aone, ooaofooa_SM_STATE * aoth, ooaofooa_SM_MOAH * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->SM_ID = aone->SM_ID;
  assr->SM_ID = aoth->SM_ID;
  assr->SMstt_ID = aoth->SMstt_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->SM_MOORE_R511 = aone;
  assr->SM_STATE_R511 = aoth;
  Escher_SetInsertElement( &aone->SM_MOAH_R511, assr );
  aoth->SM_MOAH_R511 = assr;
}

/*
 * UNRELATE SM_MOORE FROM SM_STATE ACROSS R511 USING SM_MOAH
 */
void
ooaofooa_SM_MOAH_R511_Unlink( ooaofooa_SM_MOORE * aone, ooaofooa_SM_STATE * aoth, ooaofooa_SM_MOAH * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->SM_MOORE_R511 = 0;
  assr->SM_STATE_R511 = 0;
  Escher_SetRemoveElement( &aone->SM_MOAH_R511, assr );
  aoth->SM_MOAH_R511 = 0;
}

/*
 * RELATE SM_AH TO SM_MOAH ACROSS R513
 */
void
ooaofooa_SM_MOAH_R513_Link( ooaofooa_SM_AH * supertype, ooaofooa_SM_MOAH * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Act_ID = supertype->Act_ID;
  subtype->SM_ID = supertype->SM_ID;
  /* Optimized linkage for SM_MOAH->SM_AH[R513] */
  subtype->SM_AH_R513 = supertype;
  /* Optimized linkage for SM_AH->SM_MOAH[R513] */
  supertype->R513_subtype = subtype;
  supertype->R513_object_id = ooaofooa_SM_MOAH_CLASS_NUMBER;
}


/*
 * UNRELATE SM_AH FROM SM_MOAH ACROSS R513
 */
void
ooaofooa_SM_MOAH_R513_Unlink( ooaofooa_SM_AH * supertype, ooaofooa_SM_MOAH * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SM_AH_R513 = 0;
  supertype->R513_subtype = 0;
  supertype->R513_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SM_MOAH_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SM_MOAH * self = (ooaofooa_SM_MOAH *) instance;
  printf( "INSERT INTO SM_MOAH VALUES ( %ld,%ld,%ld );\n",
    ((long)self->Act_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMstt_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SM_MOAH_container[ ooaofooa_SM_MOAH_MAX_EXTENT_SIZE ];
static ooaofooa_SM_MOAH ooaofooa_SM_MOAH_instances[ ooaofooa_SM_MOAH_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SM_MOAH_extent = {
  {0,0}, {0,0}, &ooaofooa_SM_MOAH_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SM_MOAH_instances,
  sizeof( ooaofooa_SM_MOAH ), 0, ooaofooa_SM_MOAH_MAX_EXTENT_SIZE
  };


