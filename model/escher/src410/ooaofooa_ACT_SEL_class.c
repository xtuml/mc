/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_SEL_class.c
 *
 * Class:       Select  (ACT_SEL)
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
ooaofooa_ACT_SEL_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_SEL * self = (ooaofooa_ACT_SEL *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Var_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->is_implicit = ( '0' != *avlstring[ 3 ] );
  Escher_strcpy( self->cardinality, avlstring[ 4 ] );
  self->Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_SEL_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_SEL * ooaofooa_ACT_SEL_instance = (ooaofooa_ACT_SEL *) instance;
  ooaofooa_V_VAR * ooaofooa_V_VARrelated_instance1 = (ooaofooa_V_VAR *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_SEL_instance->Var_ID ];
  if ( ooaofooa_V_VARrelated_instance1 ) {
    ooaofooa_ACT_SEL_R638_Link( ooaofooa_V_VARrelated_instance1, ooaofooa_ACT_SEL_instance );
  }
  {
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_SEL_instance->Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_ACT_SEL_R613_Link( ooaofooa_V_VALrelated_instance1, ooaofooa_ACT_SEL_instance );
  }
  }
  {
  ooaofooa_ACT_SMT * ooaofooa_ACT_SMTrelated_instance1 = (ooaofooa_ACT_SMT *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_SEL_instance->Statement_ID ];
  if ( ooaofooa_ACT_SMTrelated_instance1 ) {
    ooaofooa_ACT_SEL_R603_Link( ooaofooa_ACT_SMTrelated_instance1, ooaofooa_ACT_SEL_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_ACT_SEL *
ooaofooa_ACT_SEL_AnyWhere1( Escher_UniqueID_t w_Statement_ID )
{
  ooaofooa_ACT_SEL * w; 
  Escher_Iterator_s iter_ACT_SEL;
  Escher_IteratorReset( &iter_ACT_SEL, &pG_ooaofooa_ACT_SEL_extent.active );
  while ( (w = (ooaofooa_ACT_SEL *) Escher_IteratorNext( &iter_ACT_SEL )) != 0 ) {
    if ( w->Statement_ID == w_Statement_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE ACT_SMT TO ACT_SEL ACROSS R603
 */
void
ooaofooa_ACT_SEL_R603_Link( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_SEL * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for ACT_SEL->ACT_SMT[R603] */
  subtype->ACT_SMT_R603 = supertype;
  /* Optimized linkage for ACT_SMT->ACT_SEL[R603] */
  supertype->R603_subtype = subtype;
  supertype->R603_object_id = ooaofooa_ACT_SEL_CLASS_NUMBER;
}


/*
 * UNRELATE ACT_SMT FROM ACT_SEL ACROSS R603
 */
void
ooaofooa_ACT_SEL_R603_Unlink( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_SEL * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->ACT_SMT_R603 = 0;
  supertype->R603_subtype = 0;
  supertype->R603_object_id = 0;
}


/*
 * RELATE V_VAL TO ACT_SEL ACROSS R613
 */
void
ooaofooa_ACT_SEL_R613_Link( ooaofooa_V_VAL * part, ooaofooa_ACT_SEL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Value_ID = part->Value_ID;
  form->V_VAL_R613_starting_point = part;
  part->ACT_SEL_R613 = form;
}

/*
 * UNRELATE V_VAL FROM ACT_SEL ACROSS R613
 */
void
ooaofooa_ACT_SEL_R613_Unlink( ooaofooa_V_VAL * part, ooaofooa_ACT_SEL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Value_ID = 0;
  form->V_VAL_R613_starting_point = 0;
  part->ACT_SEL_R613 = 0;
}

/*
 * RELATE V_VAR TO ACT_SEL ACROSS R638
 */
void
ooaofooa_ACT_SEL_R638_Link( ooaofooa_V_VAR * part, ooaofooa_ACT_SEL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Var_ID = part->Var_ID;
  form->V_VAR_R638_selection = part;
  Escher_SetInsertElement( &part->ACT_SEL_R638, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE V_VAR FROM ACT_SEL ACROSS R638
 */
void
ooaofooa_ACT_SEL_R638_Unlink( ooaofooa_V_VAR * part, ooaofooa_ACT_SEL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Var_ID = 0;
  form->V_VAR_R638_selection = 0;
  Escher_SetRemoveElement( &part->ACT_SEL_R638, (Escher_ObjectSet_s *) form );
}

/* Accessors to ACT_SEL[R664] subtypes */


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_ACT_SEL_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_SEL * self = (ooaofooa_ACT_SEL *) instance;
  printf( "INSERT INTO ACT_SEL VALUES ( %ld,%ld,%d,'%s',%ld );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Var_ID & ESCHER_IDDUMP_MASK),
    self->is_implicit,
    self->cardinality,
    ((long)self->Value_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_ACT_SEL_container[ ooaofooa_ACT_SEL_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_SEL ooaofooa_ACT_SEL_instances[ ooaofooa_ACT_SEL_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_SEL_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_SEL_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_SEL_instances,
  sizeof( ooaofooa_ACT_SEL ), 0, ooaofooa_ACT_SEL_MAX_EXTENT_SIZE
  };


