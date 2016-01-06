/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_CRTXN_class.c
 *
 * Class:       Creation Transition  (SM_CRTXN)
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
ooaofooa_SM_CRTXN_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SM_CRTXN * self = (ooaofooa_SM_CRTXN *) instance;
  /* Initialize application analysis class attributes.  */
  self->Trans_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->SMevt_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->SMspd_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SM_CRTXN_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SM_CRTXN * ooaofooa_SM_CRTXN_instance = (ooaofooa_SM_CRTXN *) instance;
  ooaofooa_SM_TXN * ooaofooa_SM_TXNrelated_instance1 = ooaofooa_SM_TXN_AnyWhere1( ooaofooa_SM_CRTXN_instance->Trans_ID, ooaofooa_SM_CRTXN_instance->SM_ID );
  if ( ooaofooa_SM_TXNrelated_instance1 ) {
    ooaofooa_SM_CRTXN_R507_Link( ooaofooa_SM_TXNrelated_instance1, ooaofooa_SM_CRTXN_instance );
  }
  {
  ooaofooa_SM_LEVT * ooaofooa_SM_LEVTrelated_instance1 = ooaofooa_SM_LEVT_AnyWhere1( ooaofooa_SM_CRTXN_instance->SMevt_ID, ooaofooa_SM_CRTXN_instance->SM_ID );
  if ( ooaofooa_SM_LEVTrelated_instance1 ) {
    ooaofooa_SM_CRTXN_R509_Link_has_assigned_to_it( ooaofooa_SM_LEVTrelated_instance1, ooaofooa_SM_CRTXN_instance );
  }
  }
}


/*
 * RELATE SM_TXN TO SM_CRTXN ACROSS R507
 */
void
ooaofooa_SM_CRTXN_R507_Link( ooaofooa_SM_TXN * supertype, ooaofooa_SM_CRTXN * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Trans_ID = supertype->Trans_ID;
  subtype->SM_ID = supertype->SM_ID;
  /* Optimized linkage for SM_CRTXN->SM_TXN[R507] */
  subtype->SM_TXN_R507 = supertype;
  /* Optimized linkage for SM_TXN->SM_CRTXN[R507] */
  supertype->R507_subtype = subtype;
  supertype->R507_object_id = ooaofooa_SM_CRTXN_CLASS_NUMBER;
}


/*
 * UNRELATE SM_TXN FROM SM_CRTXN ACROSS R507
 */
void
ooaofooa_SM_CRTXN_R507_Unlink( ooaofooa_SM_TXN * supertype, ooaofooa_SM_CRTXN * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SM_TXN_R507 = 0;
  supertype->R507_subtype = 0;
  supertype->R507_object_id = 0;
}


/*
 * RELATE SM_LEVT TO SM_CRTXN ACROSS R509
 */
void
ooaofooa_SM_CRTXN_R509_Link_has_assigned_to_it( ooaofooa_SM_LEVT * part, ooaofooa_SM_CRTXN * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = part->SM_ID;
  form->SMevt_ID = part->SMevt_ID;
  form->SM_LEVT_R509_is_assigned_to = part;
  part->SM_CRTXN_R509_has_assigned_to_it = form;
}

/*
 * UNRELATE SM_LEVT FROM SM_CRTXN ACROSS R509
 */
void
ooaofooa_SM_CRTXN_R509_Unlink_has_assigned_to_it( ooaofooa_SM_LEVT * part, ooaofooa_SM_CRTXN * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SMevt_ID = 0;
  form->SM_LEVT_R509_is_assigned_to = 0;
  part->SM_CRTXN_R509_has_assigned_to_it = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SM_CRTXN_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SM_CRTXN * self = (ooaofooa_SM_CRTXN *) instance;
  printf( "INSERT INTO SM_CRTXN VALUES ( %ld,%ld,%ld,%ld );\n",
    ((long)self->Trans_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMevt_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMspd_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SM_CRTXN_container[ ooaofooa_SM_CRTXN_MAX_EXTENT_SIZE ];
static ooaofooa_SM_CRTXN ooaofooa_SM_CRTXN_instances[ ooaofooa_SM_CRTXN_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SM_CRTXN_extent = {
  {0,0}, {0,0}, &ooaofooa_SM_CRTXN_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SM_CRTXN_instances,
  sizeof( ooaofooa_SM_CRTXN ), 0, ooaofooa_SM_CRTXN_MAX_EXTENT_SIZE
  };


