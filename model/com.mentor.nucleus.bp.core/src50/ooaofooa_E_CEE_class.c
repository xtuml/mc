/*----------------------------------------------------------------------------
 * File:  ooaofooa_E_CEE_class.c
 *
 * Class:       Create Event to External Entity  (E_CEE)
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
ooaofooa_E_CEE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_E_CEE * self = (ooaofooa_E_CEE *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->EE_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->EEevt_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_E_CEE_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_E_CEE * ooaofooa_E_CEE_instance = (ooaofooa_E_CEE *) instance;
  ooaofooa_S_EEEVT * ooaofooa_S_EEEVTrelated_instance1 = ooaofooa_S_EEEVT_AnyWhere1( ooaofooa_E_CEE_instance->EEevt_ID, ooaofooa_E_CEE_instance->EE_ID );
  if ( ooaofooa_S_EEEVTrelated_instance1 ) {
    ooaofooa_E_CEE_R708_Link( ooaofooa_S_EEEVTrelated_instance1, ooaofooa_E_CEE_instance );
  }
  {
  ooaofooa_E_CES * ooaofooa_E_CESrelated_instance1 = ooaofooa_E_CES_AnyWhere1( ooaofooa_E_CEE_instance->Statement_ID );
  if ( ooaofooa_E_CESrelated_instance1 ) {
    ooaofooa_E_CEE_R702_Link( ooaofooa_E_CESrelated_instance1, ooaofooa_E_CEE_instance );
  }
  }
}


/*
 * RELATE E_CES TO E_CEE ACROSS R702
 */
void
ooaofooa_E_CEE_R702_Link( ooaofooa_E_CES * supertype, ooaofooa_E_CEE * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for E_CEE->E_CES[R702] */
  subtype->E_CES_R702 = supertype;
  /* Optimized linkage for E_CES->E_CEE[R702] */
  supertype->R702_subtype = subtype;
  supertype->R702_object_id = ooaofooa_E_CEE_CLASS_NUMBER;
}


/*
 * UNRELATE E_CES FROM E_CEE ACROSS R702
 */
void
ooaofooa_E_CEE_R702_Unlink( ooaofooa_E_CES * supertype, ooaofooa_E_CEE * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->E_CES_R702 = 0;
  supertype->R702_subtype = 0;
  supertype->R702_object_id = 0;
}


/*
 * RELATE S_EEEVT TO E_CEE ACROSS R708
 */
void
ooaofooa_E_CEE_R708_Link( ooaofooa_S_EEEVT * part, ooaofooa_E_CEE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->EEevt_ID = part->EEevt_ID;
  form->EE_ID = part->EE_ID;
  form->S_EEEVT_R708_creates = part;
  Escher_SetInsertElement( &part->E_CEE_R708, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_EEEVT FROM E_CEE ACROSS R708
 */
void
ooaofooa_E_CEE_R708_Unlink( ooaofooa_S_EEEVT * part, ooaofooa_E_CEE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->EEevt_ID = 0;
  form->EE_ID = 0;
  form->S_EEEVT_R708_creates = 0;
  Escher_SetRemoveElement( &part->E_CEE_R708, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_E_CEE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_E_CEE * self = (ooaofooa_E_CEE *) instance;
  printf( "INSERT INTO E_CEE VALUES ( %ld,%ld,%ld );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    ((long)self->EE_ID & ESCHER_IDDUMP_MASK),
    ((long)self->EEevt_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_E_CEE_container[ ooaofooa_E_CEE_MAX_EXTENT_SIZE ];
static ooaofooa_E_CEE ooaofooa_E_CEE_instances[ ooaofooa_E_CEE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_E_CEE_extent = {
  {0,0}, {0,0}, &ooaofooa_E_CEE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_E_CEE_instances,
  sizeof( ooaofooa_E_CEE ), 0, ooaofooa_E_CEE_MAX_EXTENT_SIZE
  };


