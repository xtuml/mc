/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_NSTXN_class.c
 *
 * Class:       New State Transition  (SM_NSTXN)
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
ooaofooa_SM_NSTXN_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SM_NSTXN * self = (ooaofooa_SM_NSTXN *) instance;
  /* Initialize application analysis class attributes.  */
  self->Trans_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->SMstt_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->SMevt_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->SMspd_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SM_NSTXN_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SM_NSTXN * ooaofooa_SM_NSTXN_instance = (ooaofooa_SM_NSTXN *) instance;
  ooaofooa_SM_TXN * ooaofooa_SM_TXNrelated_instance1 = ooaofooa_SM_TXN_AnyWhere1( ooaofooa_SM_NSTXN_instance->Trans_ID, ooaofooa_SM_NSTXN_instance->SM_ID );
  if ( ooaofooa_SM_TXNrelated_instance1 ) {
    ooaofooa_SM_NSTXN_R507_Link( ooaofooa_SM_TXNrelated_instance1, ooaofooa_SM_NSTXN_instance );
  }
  {
  ooaofooa_SM_SEME * ooaofooa_SM_SEMErelated_instance1 = ooaofooa_SM_SEME_AnyWhere1( ooaofooa_SM_NSTXN_instance->SMstt_ID, ooaofooa_SM_NSTXN_instance->SMevt_ID, ooaofooa_SM_NSTXN_instance->SM_ID, ooaofooa_SM_NSTXN_instance->SMspd_ID );
  if ( ooaofooa_SM_SEMErelated_instance1 ) {
    ooaofooa_SM_NSTXN_R504_Link( ooaofooa_SM_SEMErelated_instance1, ooaofooa_SM_NSTXN_instance );
  }
  }
}


/*
 * RELATE SM_SEME TO SM_NSTXN ACROSS R504
 */
void
ooaofooa_SM_NSTXN_R504_Link( ooaofooa_SM_SEME * supertype, ooaofooa_SM_NSTXN * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SMspd_ID = supertype->SMspd_ID;
  subtype->SMevt_ID = supertype->SMevt_ID;
  subtype->SM_ID = supertype->SM_ID;
  subtype->SMstt_ID = supertype->SMstt_ID;
  /* Optimized linkage for SM_NSTXN->SM_SEME[R504] */
  subtype->SM_SEME_R504 = supertype;
  /* Optimized linkage for SM_SEME->SM_NSTXN[R504] */
  supertype->R504_subtype = subtype;
  supertype->R504_object_id = ooaofooa_SM_NSTXN_CLASS_NUMBER;
}


/*
 * UNRELATE SM_SEME FROM SM_NSTXN ACROSS R504
 */
void
ooaofooa_SM_NSTXN_R504_Unlink( ooaofooa_SM_SEME * supertype, ooaofooa_SM_NSTXN * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SM_SEME_R504 = 0;
  supertype->R504_subtype = 0;
  supertype->R504_object_id = 0;
}


/*
 * RELATE SM_TXN TO SM_NSTXN ACROSS R507
 */
void
ooaofooa_SM_NSTXN_R507_Link( ooaofooa_SM_TXN * supertype, ooaofooa_SM_NSTXN * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Trans_ID = supertype->Trans_ID;
  subtype->SM_ID = supertype->SM_ID;
  /* Optimized linkage for SM_NSTXN->SM_TXN[R507] */
  subtype->SM_TXN_R507 = supertype;
  /* Optimized linkage for SM_TXN->SM_NSTXN[R507] */
  supertype->R507_subtype = subtype;
  supertype->R507_object_id = ooaofooa_SM_NSTXN_CLASS_NUMBER;
}


/*
 * UNRELATE SM_TXN FROM SM_NSTXN ACROSS R507
 */
void
ooaofooa_SM_NSTXN_R507_Unlink( ooaofooa_SM_TXN * supertype, ooaofooa_SM_NSTXN * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SM_TXN_R507 = 0;
  supertype->R507_subtype = 0;
  supertype->R507_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SM_NSTXN_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SM_NSTXN * self = (ooaofooa_SM_NSTXN *) instance;
  printf( "INSERT INTO SM_NSTXN VALUES ( %ld,%ld,%ld,%ld,%ld );\n",
    ((long)self->Trans_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMstt_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMevt_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMspd_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SM_NSTXN_container[ ooaofooa_SM_NSTXN_MAX_EXTENT_SIZE ];
static ooaofooa_SM_NSTXN ooaofooa_SM_NSTXN_instances[ ooaofooa_SM_NSTXN_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SM_NSTXN_extent = {
  {0,0}, {0,0}, &ooaofooa_SM_NSTXN_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SM_NSTXN_instances,
  sizeof( ooaofooa_SM_NSTXN ), 0, ooaofooa_SM_NSTXN_MAX_EXTENT_SIZE
  };


