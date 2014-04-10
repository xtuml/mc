/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_EL_class.c
 *
 * Class:       ElseIf Stmt  (ACT_EL)
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
ooaofooa_ACT_EL_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_EL * self = (ooaofooa_ACT_EL *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Block_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->If_Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_EL_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_EL * ooaofooa_ACT_EL_instance = (ooaofooa_ACT_EL *) instance;
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_EL_instance->Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_ACT_EL_R659_Link( ooaofooa_V_VALrelated_instance1, ooaofooa_ACT_EL_instance );
  }
  {
  ooaofooa_ACT_SMT * ooaofooa_ACT_SMTrelated_instance1 = (ooaofooa_ACT_SMT *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_EL_instance->Statement_ID ];
  if ( ooaofooa_ACT_SMTrelated_instance1 ) {
    ooaofooa_ACT_EL_R603_Link( ooaofooa_ACT_SMTrelated_instance1, ooaofooa_ACT_EL_instance );
  }
  }
  {
  ooaofooa_ACT_IF * ooaofooa_ACT_IFrelated_instance1 = ooaofooa_ACT_IF_AnyWhere1( ooaofooa_ACT_EL_instance->If_Statement_ID );
  if ( ooaofooa_ACT_IFrelated_instance1 ) {
    ooaofooa_ACT_EL_R682_Link_has( ooaofooa_ACT_IFrelated_instance1, ooaofooa_ACT_EL_instance );
  }
  }
  {
  ooaofooa_ACT_BLK * ooaofooa_ACT_BLKrelated_instance1 = (ooaofooa_ACT_BLK *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_EL_instance->Block_ID ];
  if ( ooaofooa_ACT_BLKrelated_instance1 ) {
    ooaofooa_ACT_EL_R658_Link( ooaofooa_ACT_BLKrelated_instance1, ooaofooa_ACT_EL_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_ACT_EL *
ooaofooa_ACT_EL_AnyWhere1( Escher_UniqueID_t w_Statement_ID )
{
  ooaofooa_ACT_EL * w; 
  Escher_Iterator_s iter_ACT_EL;
  Escher_IteratorReset( &iter_ACT_EL, &pG_ooaofooa_ACT_EL_extent.active );
  while ( (w = (ooaofooa_ACT_EL *) Escher_IteratorNext( &iter_ACT_EL )) != 0 ) {
    if ( w->Statement_ID == w_Statement_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE ACT_SMT TO ACT_EL ACROSS R603
 */
void
ooaofooa_ACT_EL_R603_Link( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_EL * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for ACT_EL->ACT_SMT[R603] */
  subtype->ACT_SMT_R603 = supertype;
  /* Optimized linkage for ACT_SMT->ACT_EL[R603] */
  supertype->R603_subtype = subtype;
  supertype->R603_object_id = ooaofooa_ACT_EL_CLASS_NUMBER;
}


/*
 * UNRELATE ACT_SMT FROM ACT_EL ACROSS R603
 */
void
ooaofooa_ACT_EL_R603_Unlink( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_EL * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->ACT_SMT_R603 = 0;
  supertype->R603_subtype = 0;
  supertype->R603_object_id = 0;
}


/*
 * RELATE ACT_BLK TO ACT_EL ACROSS R658
 */
void
ooaofooa_ACT_EL_R658_Link( ooaofooa_ACT_BLK * part, ooaofooa_ACT_EL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Block_ID = part->Block_ID;
  form->ACT_BLK_R658_controls = part;
  part->ACT_EL_R658 = form;
}

/*
 * UNRELATE ACT_BLK FROM ACT_EL ACROSS R658
 */
void
ooaofooa_ACT_EL_R658_Unlink( ooaofooa_ACT_BLK * part, ooaofooa_ACT_EL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Block_ID = 0;
  form->ACT_BLK_R658_controls = 0;
  part->ACT_EL_R658 = 0;
}

/*
 * RELATE V_VAL TO ACT_EL ACROSS R659
 */
void
ooaofooa_ACT_EL_R659_Link( ooaofooa_V_VAL * part, ooaofooa_ACT_EL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Value_ID = part->Value_ID;
  form->V_VAL_R659_test_result = part;
  part->ACT_EL_R659 = form;
}

/*
 * UNRELATE V_VAL FROM ACT_EL ACROSS R659
 */
void
ooaofooa_ACT_EL_R659_Unlink( ooaofooa_V_VAL * part, ooaofooa_ACT_EL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Value_ID = 0;
  form->V_VAL_R659_test_result = 0;
  part->ACT_EL_R659 = 0;
}

/*
 * RELATE ACT_IF TO ACT_EL ACROSS R682
 */
void
ooaofooa_ACT_EL_R682_Link_has( ooaofooa_ACT_IF * part, ooaofooa_ACT_EL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->If_Statement_ID = part->Statement_ID;
  form->ACT_IF_R682 = part;
  Escher_SetInsertElement( &part->ACT_EL_R682_has, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE ACT_IF FROM ACT_EL ACROSS R682
 */
void
ooaofooa_ACT_EL_R682_Unlink_has( ooaofooa_ACT_IF * part, ooaofooa_ACT_EL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->If_Statement_ID = 0;
  form->ACT_IF_R682 = 0;
  Escher_SetRemoveElement( &part->ACT_EL_R682_has, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_ACT_EL_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_EL * self = (ooaofooa_ACT_EL *) instance;
  printf( "INSERT INTO ACT_EL VALUES ( %ld,%ld,%ld,%ld );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Block_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Value_ID & ESCHER_IDDUMP_MASK),
    ((long)self->If_Statement_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_ACT_EL_container[ ooaofooa_ACT_EL_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_EL ooaofooa_ACT_EL_instances[ ooaofooa_ACT_EL_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_EL_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_EL_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_EL_instances,
  sizeof( ooaofooa_ACT_EL ), 0, ooaofooa_ACT_EL_MAX_EXTENT_SIZE
  };


