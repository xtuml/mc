/*----------------------------------------------------------------------------
 * File:  ooaofooa_TM_TPV_class.c
 *
 * Class:       Template Parameter Value  (TM_TPV)
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
ooaofooa_TM_TPV_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TM_TPV * self = (ooaofooa_TM_TPV *) instance;
  /* Initialize application analysis class attributes.  */
  self->ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->ID;
  self->instance = Escher_strcpy( self->instance, avlstring[ 2 ] );
  self->value = Escher_strcpy( self->value, avlstring[ 3 ] );
  self->tm_tpID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->te_iirID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  self->te_ciID = (Escher_iHandle_t) Escher_atoi( avlstring[ 6 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TM_TPV_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TM_TPV * ooaofooa_TM_TPV_instance = (ooaofooa_TM_TPV *) instance;
  ooaofooa_TM_TP * ooaofooa_TM_TPrelated_instance1 = (ooaofooa_TM_TP *) Escher_instance_cache[ (intptr_t) ooaofooa_TM_TPV_instance->tm_tpID ];
  if ( ooaofooa_TM_TPrelated_instance1 ) {
    ooaofooa_TM_TPV_R2808_Link_has_value( ooaofooa_TM_TPrelated_instance1, ooaofooa_TM_TPV_instance );
  }
  {
  ooaofooa_TE_IIR * ooaofooa_TE_IIRrelated_instance1 = (ooaofooa_TE_IIR *) Escher_instance_cache[ (intptr_t) ooaofooa_TM_TPV_instance->te_iirID ];
  if ( ooaofooa_TE_IIRrelated_instance1 ) {
    ooaofooa_TM_TPV_R2806_Link( ooaofooa_TE_IIRrelated_instance1, ooaofooa_TM_TPV_instance );
  }
  }
  {
  ooaofooa_TE_CI * ooaofooa_TE_CIrelated_instance1 = (ooaofooa_TE_CI *) Escher_instance_cache[ (intptr_t) ooaofooa_TM_TPV_instance->te_ciID ];
  if ( ooaofooa_TE_CIrelated_instance1 ) {
    ooaofooa_TM_TPV_R2805_Link( ooaofooa_TE_CIrelated_instance1, ooaofooa_TM_TPV_instance );
  }
  }
}


/*
 * RELATE TE_CI TO TM_TPV ACROSS R2805
 */
void
ooaofooa_TM_TPV_R2805_Link( ooaofooa_TE_CI * part, ooaofooa_TM_TPV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_ciID = part->ID;
  form->TE_CI_R2805 = part;
  Escher_SetInsertElement( &part->TM_TPV_R2805, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE TE_CI FROM TM_TPV ACROSS R2805
 */
void
ooaofooa_TM_TPV_R2805_Unlink( ooaofooa_TE_CI * part, ooaofooa_TM_TPV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_ciID = 0;
  form->TE_CI_R2805 = 0;
  Escher_SetRemoveElement( &part->TM_TPV_R2805, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE TE_IIR TO TM_TPV ACROSS R2806
 */
void
ooaofooa_TM_TPV_R2806_Link( ooaofooa_TE_IIR * part, ooaofooa_TM_TPV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_iirID = part->ID;
  form->TE_IIR_R2806 = part;
  Escher_SetInsertElement( &part->TM_TPV_R2806, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE TE_IIR FROM TM_TPV ACROSS R2806
 */
void
ooaofooa_TM_TPV_R2806_Unlink( ooaofooa_TE_IIR * part, ooaofooa_TM_TPV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_iirID = 0;
  form->TE_IIR_R2806 = 0;
  Escher_SetRemoveElement( &part->TM_TPV_R2806, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE TM_TP TO TM_TPV ACROSS R2808
 */
void
ooaofooa_TM_TPV_R2808_Link_has_value( ooaofooa_TM_TP * part, ooaofooa_TM_TPV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->tm_tpID = part->ID;
  form->TM_TP_R2808 = part;
  Escher_SetInsertElement( &part->TM_TPV_R2808_has_value, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE TM_TP FROM TM_TPV ACROSS R2808
 */
void
ooaofooa_TM_TPV_R2808_Unlink_has_value( ooaofooa_TM_TP * part, ooaofooa_TM_TPV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->tm_tpID = 0;
  form->TM_TP_R2808 = 0;
  Escher_SetRemoveElement( &part->TM_TPV_R2808_has_value, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TM_TPV_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TM_TPV * self = (ooaofooa_TM_TPV *) instance;
  printf( "INSERT INTO TM_TPV VALUES ( %ld,'%s','%s',%ld,%ld,%ld );\n",
    ((long)self->ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->instance ) ? self->instance : "",
    ( 0 != self->value ) ? self->value : "",
    ((long)self->tm_tpID & ESCHER_IDDUMP_MASK),
    ((long)self->te_iirID & ESCHER_IDDUMP_MASK),
    ((long)self->te_ciID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TM_TPV_container[ ooaofooa_TM_TPV_MAX_EXTENT_SIZE ];
static ooaofooa_TM_TPV ooaofooa_TM_TPV_instances[ ooaofooa_TM_TPV_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TM_TPV_extent = {
  {0,0}, {0,0}, &ooaofooa_TM_TPV_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TM_TPV_instances,
  sizeof( ooaofooa_TM_TPV ), 0, ooaofooa_TM_TPV_MAX_EXTENT_SIZE
  };


