/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_E_class.c
 *
 * Class:       Else Stmt  (ACT_E)
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
ooaofooa_ACT_E_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_E * self = (ooaofooa_ACT_E *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Block_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->If_Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_E_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_E * ooaofooa_ACT_E_instance = (ooaofooa_ACT_E *) instance;
  ooaofooa_ACT_SMT * ooaofooa_ACT_SMTrelated_instance1 = (ooaofooa_ACT_SMT *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_E_instance->Statement_ID ];
  if ( ooaofooa_ACT_SMTrelated_instance1 ) {
    ooaofooa_ACT_E_R603_Link( ooaofooa_ACT_SMTrelated_instance1, ooaofooa_ACT_E_instance );
  }
  {
  ooaofooa_ACT_IF * ooaofooa_ACT_IFrelated_instance1 = ooaofooa_ACT_IF_AnyWhere1( ooaofooa_ACT_E_instance->If_Statement_ID );
  if ( ooaofooa_ACT_IFrelated_instance1 ) {
    ooaofooa_ACT_E_R683_Link_has( ooaofooa_ACT_IFrelated_instance1, ooaofooa_ACT_E_instance );
  }
  }
  {
  ooaofooa_ACT_BLK * ooaofooa_ACT_BLKrelated_instance1 = (ooaofooa_ACT_BLK *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_E_instance->Block_ID ];
  if ( ooaofooa_ACT_BLKrelated_instance1 ) {
    ooaofooa_ACT_E_R606_Link( ooaofooa_ACT_BLKrelated_instance1, ooaofooa_ACT_E_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_ACT_E *
ooaofooa_ACT_E_AnyWhere1( Escher_UniqueID_t w_Statement_ID )
{
  ooaofooa_ACT_E * w; 
  Escher_Iterator_s iter_ACT_E;
  Escher_IteratorReset( &iter_ACT_E, &pG_ooaofooa_ACT_E_extent.active );
  while ( (w = (ooaofooa_ACT_E *) Escher_IteratorNext( &iter_ACT_E )) != 0 ) {
    if ( w->Statement_ID == w_Statement_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE ACT_SMT TO ACT_E ACROSS R603
 */
void
ooaofooa_ACT_E_R603_Link( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_E * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for ACT_E->ACT_SMT[R603] */
  subtype->ACT_SMT_R603 = supertype;
  /* Optimized linkage for ACT_SMT->ACT_E[R603] */
  supertype->R603_subtype = subtype;
  supertype->R603_object_id = ooaofooa_ACT_E_CLASS_NUMBER;
}


/*
 * UNRELATE ACT_SMT FROM ACT_E ACROSS R603
 */
void
ooaofooa_ACT_E_R603_Unlink( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_E * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->ACT_SMT_R603 = 0;
  supertype->R603_subtype = 0;
  supertype->R603_object_id = 0;
}


/*
 * RELATE ACT_BLK TO ACT_E ACROSS R606
 */
void
ooaofooa_ACT_E_R606_Link( ooaofooa_ACT_BLK * part, ooaofooa_ACT_E * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Block_ID = part->Block_ID;
  form->ACT_BLK_R606_controls = part;
  part->ACT_E_R606 = form;
}

/*
 * UNRELATE ACT_BLK FROM ACT_E ACROSS R606
 */
void
ooaofooa_ACT_E_R606_Unlink( ooaofooa_ACT_BLK * part, ooaofooa_ACT_E * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Block_ID = 0;
  form->ACT_BLK_R606_controls = 0;
  part->ACT_E_R606 = 0;
}

/*
 * RELATE ACT_IF TO ACT_E ACROSS R683
 */
void
ooaofooa_ACT_E_R683_Link_has( ooaofooa_ACT_IF * part, ooaofooa_ACT_E * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->If_Statement_ID = part->Statement_ID;
  form->ACT_IF_R683 = part;
  part->ACT_E_R683_has = form;
}

/*
 * UNRELATE ACT_IF FROM ACT_E ACROSS R683
 */
void
ooaofooa_ACT_E_R683_Unlink_has( ooaofooa_ACT_IF * part, ooaofooa_ACT_E * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->If_Statement_ID = 0;
  form->ACT_IF_R683 = 0;
  part->ACT_E_R683_has = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_ACT_E_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_E * self = (ooaofooa_ACT_E *) instance;
  printf( "INSERT INTO ACT_E VALUES ( %ld,%ld,%ld );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Block_ID & ESCHER_IDDUMP_MASK),
    ((long)self->If_Statement_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_ACT_E_container[ ooaofooa_ACT_E_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_E ooaofooa_ACT_E_instances[ ooaofooa_ACT_E_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_E_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_E_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_E_instances,
  sizeof( ooaofooa_ACT_E ), 0, ooaofooa_ACT_E_MAX_EXTENT_SIZE
  };


