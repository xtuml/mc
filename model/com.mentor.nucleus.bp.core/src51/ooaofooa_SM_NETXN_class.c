/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_NETXN_class.c
 *
 * Class:       No Event Transition  (SM_NETXN)
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
ooaofooa_SM_NETXN_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SM_NETXN * self = (ooaofooa_SM_NETXN *) instance;
  /* Initialize application analysis class attributes.  */
  self->Trans_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->SMstt_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->SMspd_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SM_NETXN_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SM_NETXN * ooaofooa_SM_NETXN_instance = (ooaofooa_SM_NETXN *) instance;
  ooaofooa_SM_TXN * ooaofooa_SM_TXNrelated_instance1 = ooaofooa_SM_TXN_AnyWhere1( ooaofooa_SM_NETXN_instance->Trans_ID, ooaofooa_SM_NETXN_instance->SM_ID );
  if ( ooaofooa_SM_TXNrelated_instance1 ) {
    ooaofooa_SM_NETXN_R507_Link( ooaofooa_SM_TXNrelated_instance1, ooaofooa_SM_NETXN_instance );
  }
  {
  ooaofooa_SM_STATE * ooaofooa_SM_STATErelated_instance1 = ooaofooa_SM_STATE_AnyWhere1( ooaofooa_SM_NETXN_instance->SMstt_ID, ooaofooa_SM_NETXN_instance->SM_ID );
  if ( ooaofooa_SM_STATErelated_instance1 ) {
    ooaofooa_SM_NETXN_R508_Link_is_origination_of( ooaofooa_SM_STATErelated_instance1, ooaofooa_SM_NETXN_instance );
  }
  }
}


/*
 * RELATE SM_TXN TO SM_NETXN ACROSS R507
 */
void
ooaofooa_SM_NETXN_R507_Link( ooaofooa_SM_TXN * supertype, ooaofooa_SM_NETXN * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Trans_ID = supertype->Trans_ID;
  subtype->SM_ID = supertype->SM_ID;
  /* Optimized linkage for SM_NETXN->SM_TXN[R507] */
  subtype->SM_TXN_R507 = supertype;
  /* Optimized linkage for SM_TXN->SM_NETXN[R507] */
  supertype->R507_subtype = subtype;
  supertype->R507_object_id = ooaofooa_SM_NETXN_CLASS_NUMBER;
}


/*
 * UNRELATE SM_TXN FROM SM_NETXN ACROSS R507
 */
void
ooaofooa_SM_NETXN_R507_Unlink( ooaofooa_SM_TXN * supertype, ooaofooa_SM_NETXN * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SM_TXN_R507 = 0;
  supertype->R507_subtype = 0;
  supertype->R507_object_id = 0;
}


/*
 * RELATE SM_STATE TO SM_NETXN ACROSS R508
 */
void
ooaofooa_SM_NETXN_R508_Link_is_origination_of( ooaofooa_SM_STATE * part, ooaofooa_SM_NETXN * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = part->SM_ID;
  form->SMstt_ID = part->SMstt_ID;
  form->SM_STATE_R508_originates_from = part;
  Escher_SetInsertElement( &part->SM_NETXN_R508_is_origination_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SM_STATE FROM SM_NETXN ACROSS R508
 */
void
ooaofooa_SM_NETXN_R508_Unlink_is_origination_of( ooaofooa_SM_STATE * part, ooaofooa_SM_NETXN * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SMstt_ID = 0;
  form->SM_STATE_R508_originates_from = 0;
  Escher_SetRemoveElement( &part->SM_NETXN_R508_is_origination_of, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SM_NETXN_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SM_NETXN * self = (ooaofooa_SM_NETXN *) instance;
  printf( "INSERT INTO SM_NETXN VALUES ( %ld,%ld,%ld,%ld );\n",
    ((long)self->Trans_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMstt_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMspd_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SM_NETXN_container[ ooaofooa_SM_NETXN_MAX_EXTENT_SIZE ];
static ooaofooa_SM_NETXN ooaofooa_SM_NETXN_instances[ ooaofooa_SM_NETXN_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SM_NETXN_extent = {
  {0,0}, {0,0}, &ooaofooa_SM_NETXN_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SM_NETXN_instances,
  sizeof( ooaofooa_SM_NETXN ), 0, ooaofooa_SM_NETXN_MAX_EXTENT_SIZE
  };


