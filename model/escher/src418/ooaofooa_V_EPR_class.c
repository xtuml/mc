/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_EPR_class.c
 *
 * Class:       Event Parameter Reference  (V_EPR)
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
ooaofooa_V_EPR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_V_EPR * self = (ooaofooa_V_EPR *) instance;
  /* Initialize application analysis class attributes.  */
  self->Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->SMedi_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->PP_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_V_EPR_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_V_EPR * ooaofooa_V_EPR_instance = (ooaofooa_V_EPR *) instance;
  ooaofooa_V_EDV * ooaofooa_V_EDVrelated_instance1 = ooaofooa_V_EDV_AnyWhere1( ooaofooa_V_EPR_instance->Value_ID );
  if ( ooaofooa_V_EDVrelated_instance1 ) {
    ooaofooa_V_EPR_R834_Link( ooaofooa_V_EDVrelated_instance1, ooaofooa_V_EPR_instance );
  }
  {
  ooaofooa_SM_EVTDI * ooaofooa_SM_EVTDIrelated_instance1 = ooaofooa_SM_EVTDI_AnyWhere1( ooaofooa_V_EPR_instance->SMedi_ID, ooaofooa_V_EPR_instance->SM_ID );
  if ( ooaofooa_SM_EVTDIrelated_instance1 ) {
    ooaofooa_V_EPR_R846_Link( ooaofooa_SM_EVTDIrelated_instance1, ooaofooa_V_EPR_instance );
  }
  }
  {
  ooaofooa_C_PP * ooaofooa_C_PPrelated_instance1 = (ooaofooa_C_PP *) Escher_instance_cache[ (intptr_t) ooaofooa_V_EPR_instance->PP_Id ];
  if ( ooaofooa_C_PPrelated_instance1 ) {
    ooaofooa_V_EPR_R847_Link( ooaofooa_C_PPrelated_instance1, ooaofooa_V_EPR_instance );
  }
  }
}


/*
 * RELATE V_EDV TO V_EPR ACROSS R834
 */
void
ooaofooa_V_EPR_R834_Link( ooaofooa_V_EDV * part, ooaofooa_V_EPR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Value_ID = part->Value_ID;
  form->V_EDV_R834 = part;
  Escher_SetInsertElement( &part->V_EPR_R834, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE V_EDV FROM V_EPR ACROSS R834
 */
void
ooaofooa_V_EPR_R834_Unlink( ooaofooa_V_EDV * part, ooaofooa_V_EPR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->V_EDV_R834 = 0;
  Escher_SetRemoveElement( &part->V_EPR_R834, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE SM_EVTDI TO V_EPR ACROSS R846
 */
void
ooaofooa_V_EPR_R846_Link( ooaofooa_SM_EVTDI * part, ooaofooa_V_EPR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = part->SM_ID;
  form->SMedi_ID = part->SMedi_ID;
  form->SM_EVTDI_R846 = part;
  Escher_SetInsertElement( &part->V_EPR_R846, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SM_EVTDI FROM V_EPR ACROSS R846
 */
void
ooaofooa_V_EPR_R846_Unlink( ooaofooa_SM_EVTDI * part, ooaofooa_V_EPR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_EVTDI_R846 = 0;
  Escher_SetRemoveElement( &part->V_EPR_R846, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE C_PP TO V_EPR ACROSS R847
 */
void
ooaofooa_V_EPR_R847_Link( ooaofooa_C_PP * part, ooaofooa_V_EPR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->PP_Id = part->PP_Id;
  form->C_PP_R847 = part;
  Escher_SetInsertElement( &part->V_EPR_R847, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE C_PP FROM V_EPR ACROSS R847
 */
void
ooaofooa_V_EPR_R847_Unlink( ooaofooa_C_PP * part, ooaofooa_V_EPR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->C_PP_R847 = 0;
  Escher_SetRemoveElement( &part->V_EPR_R847, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_V_EPR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_V_EPR * self = (ooaofooa_V_EPR *) instance;
  printf( "INSERT INTO V_EPR VALUES ( %ld,%ld,%ld,%ld );\n",
    ((long)self->Value_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMedi_ID & ESCHER_IDDUMP_MASK),
    ((long)self->PP_Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_V_EPR_container[ ooaofooa_V_EPR_MAX_EXTENT_SIZE ];
static ooaofooa_V_EPR ooaofooa_V_EPR_instances[ ooaofooa_V_EPR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_V_EPR_extent = {
  {0,0}, {0,0}, &ooaofooa_V_EPR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_V_EPR_instances,
  sizeof( ooaofooa_V_EPR ), 0, ooaofooa_V_EPR_MAX_EXTENT_SIZE
  };


