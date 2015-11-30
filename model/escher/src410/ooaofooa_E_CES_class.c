/*----------------------------------------------------------------------------
 * File:  ooaofooa_E_CES_class.c
 *
 * Class:       Create Event Statement  (E_CES)
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
ooaofooa_E_CES_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_E_CES * self = (ooaofooa_E_CES *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->is_implicit = ( '0' != *avlstring[ 2 ] );
  self->Var_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_E_CES_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_E_CES * ooaofooa_E_CES_instance = (ooaofooa_E_CES *) instance;
  ooaofooa_V_VAR * ooaofooa_V_VARrelated_instance1 = (ooaofooa_V_VAR *) Escher_instance_cache[ (intptr_t) ooaofooa_E_CES_instance->Var_ID ];
  if ( ooaofooa_V_VARrelated_instance1 ) {
    ooaofooa_E_CES_R710_Link( ooaofooa_V_VARrelated_instance1, ooaofooa_E_CES_instance );
  }
  {
  ooaofooa_E_ESS * ooaofooa_E_ESSrelated_instance1 = ooaofooa_E_ESS_AnyWhere1( ooaofooa_E_CES_instance->Statement_ID );
  if ( ooaofooa_E_ESSrelated_instance1 ) {
    ooaofooa_E_CES_R701_Link( ooaofooa_E_ESSrelated_instance1, ooaofooa_E_CES_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_E_CES *
ooaofooa_E_CES_AnyWhere1( Escher_UniqueID_t w_Statement_ID )
{
  ooaofooa_E_CES * w; 
  Escher_Iterator_s iter_E_CES;
  Escher_IteratorReset( &iter_E_CES, &pG_ooaofooa_E_CES_extent.active );
  while ( (w = (ooaofooa_E_CES *) Escher_IteratorNext( &iter_E_CES )) != 0 ) {
    if ( w->Statement_ID == w_Statement_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE E_ESS TO E_CES ACROSS R701
 */
void
ooaofooa_E_CES_R701_Link( ooaofooa_E_ESS * supertype, ooaofooa_E_CES * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for E_CES->E_ESS[R701] */
  subtype->E_ESS_R701 = supertype;
  /* Optimized linkage for E_ESS->E_CES[R701] */
  supertype->R701_subtype = subtype;
  supertype->R701_object_id = ooaofooa_E_CES_CLASS_NUMBER;
}


/*
 * UNRELATE E_ESS FROM E_CES ACROSS R701
 */
void
ooaofooa_E_CES_R701_Unlink( ooaofooa_E_ESS * supertype, ooaofooa_E_CES * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->E_ESS_R701 = 0;
  supertype->R701_subtype = 0;
  supertype->R701_object_id = 0;
}


/* Accessors to E_CES[R702] subtypes */


/*
 * RELATE V_VAR TO E_CES ACROSS R710
 */
void
ooaofooa_E_CES_R710_Link( ooaofooa_V_VAR * part, ooaofooa_E_CES * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Var_ID = part->Var_ID;
  form->V_VAR_R710_result = part;
  Escher_SetInsertElement( &part->E_CES_R710, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE V_VAR FROM E_CES ACROSS R710
 */
void
ooaofooa_E_CES_R710_Unlink( ooaofooa_V_VAR * part, ooaofooa_E_CES * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Var_ID = 0;
  form->V_VAR_R710_result = 0;
  Escher_SetRemoveElement( &part->E_CES_R710, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_E_CES_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_E_CES * self = (ooaofooa_E_CES *) instance;
  printf( "INSERT INTO E_CES VALUES ( %ld,%d,%ld );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    self->is_implicit,
    ((long)self->Var_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_E_CES_container[ ooaofooa_E_CES_MAX_EXTENT_SIZE ];
static ooaofooa_E_CES ooaofooa_E_CES_instances[ ooaofooa_E_CES_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_E_CES_extent = {
  {0,0}, {0,0}, &ooaofooa_E_CES_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_E_CES_instances,
  sizeof( ooaofooa_E_CES ), 0, ooaofooa_E_CES_MAX_EXTENT_SIZE
  };


