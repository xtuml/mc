/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_SEME_class.c
 *
 * Class:       State Event Matrix Entry  (SM_SEME)
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
ooaofooa_SM_SEME_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SM_SEME * self = (ooaofooa_SM_SEME *) instance;
  /* Initialize application analysis class attributes.  */
  self->SMstt_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->SMevt_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->SMspd_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SM_SEME_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SM_SEME * ooaofooa_SM_SEME_instance = (ooaofooa_SM_SEME *) instance;
  ooaofooa_SM_STATE * ooaofooa_SM_STATErelated_instance1 = ooaofooa_SM_STATE_AnyWhere1( ooaofooa_SM_SEME_instance->SMstt_ID, ooaofooa_SM_SEME_instance->SM_ID );
  ooaofooa_SM_SEVT * ooaofooa_SM_SEVTrelated_instance2 = ooaofooa_SM_SEVT_AnyWhere1( ooaofooa_SM_SEME_instance->SMevt_ID, ooaofooa_SM_SEME_instance->SM_ID, ooaofooa_SM_SEME_instance->SMspd_ID );
  if ( ooaofooa_SM_STATErelated_instance1 && ooaofooa_SM_SEVTrelated_instance2 ) {
    ooaofooa_SM_SEME_R503_Link( ooaofooa_SM_STATErelated_instance1, ooaofooa_SM_SEVTrelated_instance2, ooaofooa_SM_SEME_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SM_SEME *
ooaofooa_SM_SEME_AnyWhere1( Escher_UniqueID_t w_SMstt_ID, Escher_UniqueID_t w_SMevt_ID, Escher_UniqueID_t w_SM_ID, Escher_UniqueID_t w_SMspd_ID )
{
  ooaofooa_SM_SEME * w; 
  Escher_Iterator_s iter_SM_SEME;
  Escher_IteratorReset( &iter_SM_SEME, &pG_ooaofooa_SM_SEME_extent.active );
  while ( (w = (ooaofooa_SM_SEME *) Escher_IteratorNext( &iter_SM_SEME )) != 0 ) {
    if ( w->SMstt_ID == w_SMstt_ID && w->SMevt_ID == w_SMevt_ID && w->SM_ID == w_SM_ID && w->SMspd_ID == w_SMspd_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SM_STATE TO SM_SEVT ACROSS R503 USING SM_SEME
 */
void
ooaofooa_SM_SEME_R503_Link( ooaofooa_SM_STATE * aone, ooaofooa_SM_SEVT * aoth, ooaofooa_SM_SEME * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->SM_ID = aone->SM_ID;
  assr->SMstt_ID = aone->SMstt_ID;
  assr->SMevt_ID = aoth->SMevt_ID;
  assr->SM_ID = aoth->SM_ID;
  assr->SMspd_ID = aoth->SMspd_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->SM_STATE_R503_is_received_by = aone;
  assr->SM_SEVT_R503_receives = aoth;
  Escher_SetInsertElement( &aone->SM_SEME_R503, assr );
  Escher_SetInsertElement( &aoth->SM_SEME_R503, assr );
}

/*
 * UNRELATE SM_STATE FROM SM_SEVT ACROSS R503 USING SM_SEME
 */
void
ooaofooa_SM_SEME_R503_Unlink( ooaofooa_SM_STATE * aone, ooaofooa_SM_SEVT * aoth, ooaofooa_SM_SEME * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->SM_STATE_R503_is_received_by = 0;
  assr->SM_SEVT_R503_receives = 0;
  Escher_SetRemoveElement( &aone->SM_SEME_R503, assr );
  Escher_SetRemoveElement( &aoth->SM_SEME_R503, assr );
}

/* Accessors to SM_SEME[R504] subtypes */


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SM_SEME_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SM_SEME * self = (ooaofooa_SM_SEME *) instance;
  printf( "INSERT INTO SM_SEME VALUES ( %ld,%ld,%ld,%ld );\n",
    ((long)self->SMstt_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMevt_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMspd_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SM_SEME_container[ ooaofooa_SM_SEME_MAX_EXTENT_SIZE ];
static ooaofooa_SM_SEME ooaofooa_SM_SEME_instances[ ooaofooa_SM_SEME_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SM_SEME_extent = {
  {0,0}, {0,0}, &ooaofooa_SM_SEME_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SM_SEME_instances,
  sizeof( ooaofooa_SM_SEME ), 0, ooaofooa_SM_SEME_MAX_EXTENT_SIZE
  };


