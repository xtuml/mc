/*----------------------------------------------------------------------------
 * File:  ooaofooa_CSME_CIS_class.c
 *
 * Class:       Class In State  (CSME_CIS)
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
ooaofooa_CSME_CIS_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_CSME_CIS * self = (ooaofooa_CSME_CIS *) instance;
  /* Initialize application analysis class attributes.  */
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->SMstt_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Trans_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->CIE_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_CSME_CIS_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_CSME_CIS * ooaofooa_CSME_CIS_instance = (ooaofooa_CSME_CIS *) instance;
  ooaofooa_SM_TXN * ooaofooa_SM_TXNrelated_instance1 = ooaofooa_SM_TXN_AnyWhere1( ooaofooa_CSME_CIS_instance->Trans_ID, ooaofooa_CSME_CIS_instance->SM_ID );
  if ( ooaofooa_SM_TXNrelated_instance1 ) {
    ooaofooa_CSME_CIS_R2952_Link( ooaofooa_SM_TXNrelated_instance1, ooaofooa_CSME_CIS_instance );
  }
  {
  ooaofooa_SM_STATE * ooaofooa_SM_STATErelated_instance1 = ooaofooa_SM_STATE_AnyWhere1( ooaofooa_CSME_CIS_instance->SMstt_ID, ooaofooa_CSME_CIS_instance->SM_ID );
  ooaofooa_CSME_CIE * ooaofooa_CSME_CIErelated_instance2 = (ooaofooa_CSME_CIE *) Escher_instance_cache[ (intptr_t) ooaofooa_CSME_CIS_instance->CIE_ID ];
  if ( ooaofooa_SM_STATErelated_instance1 && ooaofooa_CSME_CIErelated_instance2 ) {
    ooaofooa_CSME_CIS_R2932_Link( ooaofooa_CSME_CIErelated_instance2, ooaofooa_SM_STATErelated_instance1, ooaofooa_CSME_CIS_instance );
  }
  }
}


/*
 * RELATE CSME_CIE TO SM_STATE ACROSS R2932 USING CSME_CIS
 */
void
ooaofooa_CSME_CIS_R2932_Link( ooaofooa_CSME_CIE * aone, ooaofooa_SM_STATE * aoth, ooaofooa_CSME_CIS * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->CIE_ID = aone->CIE_ID;
  assr->SM_ID = aoth->SM_ID;
  assr->SMstt_ID = aoth->SMstt_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->CSME_CIE_R2932 = aone;
  assr->SM_STATE_R2932 = aoth;
  aone->CSME_CIS_R2932 = assr;
  aoth->CSME_CIS_R2932 = assr;
}

/*
 * UNRELATE CSME_CIE FROM SM_STATE ACROSS R2932 USING CSME_CIS
 */
void
ooaofooa_CSME_CIS_R2932_Unlink( ooaofooa_CSME_CIE * aone, ooaofooa_SM_STATE * aoth, ooaofooa_CSME_CIS * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->CSME_CIE_R2932 = 0;
  assr->SM_STATE_R2932 = 0;
  aone->CSME_CIS_R2932 = 0;
  aoth->CSME_CIS_R2932 = 0;
}

/*
 * RELATE SM_TXN TO CSME_CIS ACROSS R2952
 */
void
ooaofooa_CSME_CIS_R2952_Link( ooaofooa_SM_TXN * part, ooaofooa_CSME_CIS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Trans_ID = part->Trans_ID;
  form->SM_ID = part->SM_ID;
  form->SM_TXN_R2952_entered_state_via = part;
  Escher_SetInsertElement( &part->CSME_CIS_R2952, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SM_TXN FROM CSME_CIS ACROSS R2952
 */
void
ooaofooa_CSME_CIS_R2952_Unlink( ooaofooa_SM_TXN * part, ooaofooa_CSME_CIS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Trans_ID = 0;
  form->SM_TXN_R2952_entered_state_via = 0;
  Escher_SetRemoveElement( &part->CSME_CIS_R2952, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_CSME_CIS_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_CSME_CIS * self = (ooaofooa_CSME_CIS *) instance;
  printf( "INSERT INTO CSME_CIS VALUES ( %ld,%ld,%ld,%ld );\n",
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMstt_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Trans_ID & ESCHER_IDDUMP_MASK),
    ((long)self->CIE_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_CSME_CIS_container[ ooaofooa_CSME_CIS_MAX_EXTENT_SIZE ];
static ooaofooa_CSME_CIS ooaofooa_CSME_CIS_instances[ ooaofooa_CSME_CIS_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_CSME_CIS_extent = {
  {0,0}, {0,0}, &ooaofooa_CSME_CIS_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_CSME_CIS_instances,
  sizeof( ooaofooa_CSME_CIS ), 0, ooaofooa_CSME_CIS_MAX_EXTENT_SIZE
  };


