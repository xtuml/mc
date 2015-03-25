/*----------------------------------------------------------------------------
 * File:  ooaofooa_E_GEN_class.c
 *
 * Class:       Generate  (E_GEN)
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
ooaofooa_E_GEN_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_E_GEN * self = (ooaofooa_E_GEN *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Var_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_E_GEN_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_E_GEN * ooaofooa_E_GEN_instance = (ooaofooa_E_GEN *) instance;
  ooaofooa_V_VAR * ooaofooa_V_VARrelated_instance1 = (ooaofooa_V_VAR *) Escher_instance_cache[ (intptr_t) ooaofooa_E_GEN_instance->Var_ID ];
  if ( ooaofooa_V_VARrelated_instance1 ) {
    ooaofooa_E_GEN_R712_Link( ooaofooa_V_VARrelated_instance1, ooaofooa_E_GEN_instance );
  }
  {
  ooaofooa_E_GSME * ooaofooa_E_GSMErelated_instance1 = ooaofooa_E_GSME_AnyWhere1( ooaofooa_E_GEN_instance->Statement_ID );
  if ( ooaofooa_E_GSMErelated_instance1 ) {
    ooaofooa_E_GEN_R705_Link( ooaofooa_E_GSMErelated_instance1, ooaofooa_E_GEN_instance );
  }
  }
}


/*
 * RELATE E_GSME TO E_GEN ACROSS R705
 */
void
ooaofooa_E_GEN_R705_Link( ooaofooa_E_GSME * supertype, ooaofooa_E_GEN * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for E_GEN->E_GSME[R705] */
  subtype->E_GSME_R705 = supertype;
  /* Optimized linkage for E_GSME->E_GEN[R705] */
  supertype->R705_subtype = subtype;
  supertype->R705_object_id = ooaofooa_E_GEN_CLASS_NUMBER;
}


/*
 * UNRELATE E_GSME FROM E_GEN ACROSS R705
 */
void
ooaofooa_E_GEN_R705_Unlink( ooaofooa_E_GSME * supertype, ooaofooa_E_GEN * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->E_GSME_R705 = 0;
  supertype->R705_subtype = 0;
  supertype->R705_object_id = 0;
}


/*
 * RELATE V_VAR TO E_GEN ACROSS R712
 */
void
ooaofooa_E_GEN_R712_Link( ooaofooa_V_VAR * part, ooaofooa_E_GEN * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Var_ID = part->Var_ID;
  form->V_VAR_R712_has_recipient = part;
  Escher_SetInsertElement( &part->E_GEN_R712, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE V_VAR FROM E_GEN ACROSS R712
 */
void
ooaofooa_E_GEN_R712_Unlink( ooaofooa_V_VAR * part, ooaofooa_E_GEN * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Var_ID = 0;
  form->V_VAR_R712_has_recipient = 0;
  Escher_SetRemoveElement( &part->E_GEN_R712, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_E_GEN_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_E_GEN * self = (ooaofooa_E_GEN *) instance;
  printf( "INSERT INTO E_GEN VALUES ( %ld,%ld );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Var_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_E_GEN_container[ ooaofooa_E_GEN_MAX_EXTENT_SIZE ];
static ooaofooa_E_GEN ooaofooa_E_GEN_instances[ ooaofooa_E_GEN_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_E_GEN_extent = {
  {0,0}, {0,0}, &ooaofooa_E_GEN_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_E_GEN_instances,
  sizeof( ooaofooa_E_GEN ), 0, ooaofooa_E_GEN_MAX_EXTENT_SIZE
  };


