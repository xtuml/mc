/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_TAH_class.c
 *
 * Class:       Transition Action Home  (SM_TAH)
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
ooaofooa_SM_TAH_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SM_TAH * self = (ooaofooa_SM_TAH *) instance;
  /* Initialize application analysis class attributes.  */
  self->Act_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Trans_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SM_TAH_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SM_TAH * ooaofooa_SM_TAH_instance = (ooaofooa_SM_TAH *) instance;
  ooaofooa_SM_TXN * ooaofooa_SM_TXNrelated_instance1 = ooaofooa_SM_TXN_AnyWhere1( ooaofooa_SM_TAH_instance->Trans_ID, ooaofooa_SM_TAH_instance->SM_ID );
  if ( ooaofooa_SM_TXNrelated_instance1 ) {
    ooaofooa_SM_TAH_R530_Link_houses_action_for( ooaofooa_SM_TXNrelated_instance1, ooaofooa_SM_TAH_instance );
  }
  {
  ooaofooa_SM_AH * ooaofooa_SM_AHrelated_instance1 = ooaofooa_SM_AH_AnyWhere1( ooaofooa_SM_TAH_instance->Act_ID, ooaofooa_SM_TAH_instance->SM_ID );
  if ( ooaofooa_SM_AHrelated_instance1 ) {
    ooaofooa_SM_TAH_R513_Link( ooaofooa_SM_AHrelated_instance1, ooaofooa_SM_TAH_instance );
  }
  }
}


/*
 * RELATE SM_AH TO SM_TAH ACROSS R513
 */
void
ooaofooa_SM_TAH_R513_Link( ooaofooa_SM_AH * supertype, ooaofooa_SM_TAH * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Act_ID = supertype->Act_ID;
  subtype->SM_ID = supertype->SM_ID;
  /* Optimized linkage for SM_TAH->SM_AH[R513] */
  subtype->SM_AH_R513 = supertype;
  /* Optimized linkage for SM_AH->SM_TAH[R513] */
  supertype->R513_subtype = subtype;
  supertype->R513_object_id = ooaofooa_SM_TAH_CLASS_NUMBER;
}


/*
 * UNRELATE SM_AH FROM SM_TAH ACROSS R513
 */
void
ooaofooa_SM_TAH_R513_Unlink( ooaofooa_SM_AH * supertype, ooaofooa_SM_TAH * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SM_AH_R513 = 0;
  supertype->R513_subtype = 0;
  supertype->R513_object_id = 0;
}


/*
 * RELATE SM_TXN TO SM_TAH ACROSS R530
 */
void
ooaofooa_SM_TAH_R530_Link_houses_action_for( ooaofooa_SM_TXN * part, ooaofooa_SM_TAH * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Trans_ID = part->Trans_ID;
  form->SM_ID = part->SM_ID;
  form->SM_TXN_R530 = part;
  part->SM_TAH_R530_houses_action_for = form;
}

/*
 * UNRELATE SM_TXN FROM SM_TAH ACROSS R530
 */
void
ooaofooa_SM_TAH_R530_Unlink_houses_action_for( ooaofooa_SM_TXN * part, ooaofooa_SM_TAH * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Trans_ID = 0;
  form->SM_TXN_R530 = 0;
  part->SM_TAH_R530_houses_action_for = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SM_TAH_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SM_TAH * self = (ooaofooa_SM_TAH *) instance;
  printf( "INSERT INTO SM_TAH VALUES ( %ld,%ld,%ld );\n",
    ((long)self->Act_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Trans_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SM_TAH_container[ ooaofooa_SM_TAH_MAX_EXTENT_SIZE ];
static ooaofooa_SM_TAH ooaofooa_SM_TAH_instances[ ooaofooa_SM_TAH_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SM_TAH_extent = {
  {0,0}, {0,0}, &ooaofooa_SM_TAH_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SM_TAH_instances,
  sizeof( ooaofooa_SM_TAH ), 0, ooaofooa_SM_TAH_MAX_EXTENT_SIZE
  };


