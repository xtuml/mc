/*----------------------------------------------------------------------------
 * File:  ooaofooa_E_CEI_class.c
 *
 * Class:       Create Event to Instance  (E_CEI)
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
ooaofooa_E_CEI_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_E_CEI * self = (ooaofooa_E_CEI *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Var_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_E_CEI_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_E_CEI * ooaofooa_E_CEI_instance = (ooaofooa_E_CEI *) instance;
  ooaofooa_V_VAR * ooaofooa_V_VARrelated_instance1 = (ooaofooa_V_VAR *) Escher_instance_cache[ (intptr_t) ooaofooa_E_CEI_instance->Var_ID ];
  if ( ooaofooa_V_VARrelated_instance1 ) {
    ooaofooa_E_CEI_R711_Link( ooaofooa_V_VARrelated_instance1, ooaofooa_E_CEI_instance );
  }
  {
  ooaofooa_E_CSME * ooaofooa_E_CSMErelated_instance1 = ooaofooa_E_CSME_AnyWhere1( ooaofooa_E_CEI_instance->Statement_ID );
  if ( ooaofooa_E_CSMErelated_instance1 ) {
    ooaofooa_E_CEI_R704_Link( ooaofooa_E_CSMErelated_instance1, ooaofooa_E_CEI_instance );
  }
  }
}


/*
 * RELATE E_CSME TO E_CEI ACROSS R704
 */
void
ooaofooa_E_CEI_R704_Link( ooaofooa_E_CSME * supertype, ooaofooa_E_CEI * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for E_CEI->E_CSME[R704] */
  subtype->E_CSME_R704 = supertype;
  /* Optimized linkage for E_CSME->E_CEI[R704] */
  supertype->R704_subtype = subtype;
  supertype->R704_object_id = ooaofooa_E_CEI_CLASS_NUMBER;
}


/*
 * UNRELATE E_CSME FROM E_CEI ACROSS R704
 */
void
ooaofooa_E_CEI_R704_Unlink( ooaofooa_E_CSME * supertype, ooaofooa_E_CEI * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->E_CSME_R704 = 0;
  supertype->R704_subtype = 0;
  supertype->R704_object_id = 0;
}


/*
 * RELATE V_VAR TO E_CEI ACROSS R711
 */
void
ooaofooa_E_CEI_R711_Link( ooaofooa_V_VAR * part, ooaofooa_E_CEI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Var_ID = part->Var_ID;
  form->V_VAR_R711_has_recipient = part;
  Escher_SetInsertElement( &part->E_CEI_R711, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE V_VAR FROM E_CEI ACROSS R711
 */
void
ooaofooa_E_CEI_R711_Unlink( ooaofooa_V_VAR * part, ooaofooa_E_CEI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Var_ID = 0;
  form->V_VAR_R711_has_recipient = 0;
  Escher_SetRemoveElement( &part->E_CEI_R711, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_E_CEI_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_E_CEI * self = (ooaofooa_E_CEI *) instance;
  printf( "INSERT INTO E_CEI VALUES ( %ld,%ld );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Var_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_E_CEI_container[ ooaofooa_E_CEI_MAX_EXTENT_SIZE ];
static ooaofooa_E_CEI ooaofooa_E_CEI_instances[ ooaofooa_E_CEI_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_E_CEI_extent = {
  {0,0}, {0,0}, &ooaofooa_E_CEI_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_E_CEI_instances,
  sizeof( ooaofooa_E_CEI ), 0, ooaofooa_E_CEI_MAX_EXTENT_SIZE
  };


