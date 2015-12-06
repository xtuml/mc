/*----------------------------------------------------------------------------
 * File:  ooaofooa_E_GEE_class.c
 *
 * Class:       Generate to External Entity  (E_GEE)
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
ooaofooa_E_GEE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_E_GEE * self = (ooaofooa_E_GEE *) instance;
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
void ooaofooa_E_GEE_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_E_GEE * ooaofooa_E_GEE_instance = (ooaofooa_E_GEE *) instance;
  ooaofooa_S_EEEVT * ooaofooa_S_EEEVTrelated_instance1 = ooaofooa_S_EEEVT_AnyWhere1( ooaofooa_E_GEE_instance->EEevt_ID, ooaofooa_E_GEE_instance->EE_ID );
  if ( ooaofooa_S_EEEVTrelated_instance1 ) {
    ooaofooa_E_GEE_R709_Link( ooaofooa_S_EEEVTrelated_instance1, ooaofooa_E_GEE_instance );
  }
  {
  ooaofooa_E_GES * ooaofooa_E_GESrelated_instance1 = ooaofooa_E_GES_AnyWhere1( ooaofooa_E_GEE_instance->Statement_ID );
  if ( ooaofooa_E_GESrelated_instance1 ) {
    ooaofooa_E_GEE_R703_Link( ooaofooa_E_GESrelated_instance1, ooaofooa_E_GEE_instance );
  }
  }
}


/*
 * RELATE E_GES TO E_GEE ACROSS R703
 */
void
ooaofooa_E_GEE_R703_Link( ooaofooa_E_GES * supertype, ooaofooa_E_GEE * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for E_GEE->E_GES[R703] */
  subtype->E_GES_R703 = supertype;
  /* Optimized linkage for E_GES->E_GEE[R703] */
  supertype->R703_subtype = subtype;
  supertype->R703_object_id = ooaofooa_E_GEE_CLASS_NUMBER;
}


/*
 * UNRELATE E_GES FROM E_GEE ACROSS R703
 */
void
ooaofooa_E_GEE_R703_Unlink( ooaofooa_E_GES * supertype, ooaofooa_E_GEE * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->E_GES_R703 = 0;
  supertype->R703_subtype = 0;
  supertype->R703_object_id = 0;
}


/*
 * RELATE S_EEEVT TO E_GEE ACROSS R709
 */
void
ooaofooa_E_GEE_R709_Link( ooaofooa_S_EEEVT * part, ooaofooa_E_GEE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->EEevt_ID = part->EEevt_ID;
  form->EE_ID = part->EE_ID;
  form->S_EEEVT_R709_generates = part;
  Escher_SetInsertElement( &part->E_GEE_R709, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_EEEVT FROM E_GEE ACROSS R709
 */
void
ooaofooa_E_GEE_R709_Unlink( ooaofooa_S_EEEVT * part, ooaofooa_E_GEE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->EEevt_ID = 0;
  form->EE_ID = 0;
  form->S_EEEVT_R709_generates = 0;
  Escher_SetRemoveElement( &part->E_GEE_R709, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_E_GEE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_E_GEE * self = (ooaofooa_E_GEE *) instance;
  printf( "INSERT INTO E_GEE VALUES ( %ld,%ld,%ld );\n",
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
static Escher_SetElement_s ooaofooa_E_GEE_container[ ooaofooa_E_GEE_MAX_EXTENT_SIZE ];
static ooaofooa_E_GEE ooaofooa_E_GEE_instances[ ooaofooa_E_GEE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_E_GEE_extent = {
  {0,0}, {0,0}, &ooaofooa_E_GEE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_E_GEE_instances,
  sizeof( ooaofooa_E_GEE ), 0, ooaofooa_E_GEE_MAX_EXTENT_SIZE
  };


