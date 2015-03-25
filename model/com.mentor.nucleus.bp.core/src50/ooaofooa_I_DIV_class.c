/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_DIV_class.c
 *
 * Class:       Data Item Value  (I_DIV)
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
ooaofooa_I_DIV_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_I_DIV * self = (ooaofooa_I_DIV *) instance;
  /* Initialize application analysis class attributes.  */
  self->DIV_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->DIV_ID;
  self->Event_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->SMedi_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->PP_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_I_DIV_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_I_DIV * ooaofooa_I_DIV_instance = (ooaofooa_I_DIV *) instance;
  ooaofooa_SM_EVTDI * ooaofooa_SM_EVTDIrelated_instance1 = ooaofooa_SM_EVTDI_AnyWhere1( ooaofooa_I_DIV_instance->SMedi_ID, ooaofooa_I_DIV_instance->SM_ID );
  if ( ooaofooa_SM_EVTDIrelated_instance1 ) {
    ooaofooa_I_DIV_R2934_Link( ooaofooa_SM_EVTDIrelated_instance1, ooaofooa_I_DIV_instance );
  }
  {
  ooaofooa_I_EVI * ooaofooa_I_EVIrelated_instance1 = (ooaofooa_I_EVI *) Escher_instance_cache[ (intptr_t) ooaofooa_I_DIV_instance->Event_ID ];
  if ( ooaofooa_I_EVIrelated_instance1 ) {
    ooaofooa_I_DIV_R2933_Link( ooaofooa_I_EVIrelated_instance1, ooaofooa_I_DIV_instance );
  }
  }
  {
  ooaofooa_C_PP * ooaofooa_C_PPrelated_instance1 = (ooaofooa_C_PP *) Escher_instance_cache[ (intptr_t) ooaofooa_I_DIV_instance->PP_Id ];
  if ( ooaofooa_C_PPrelated_instance1 ) {
    ooaofooa_I_DIV_R2956_Link( ooaofooa_C_PPrelated_instance1, ooaofooa_I_DIV_instance );
  }
  }
}


/*
 * RELATE I_EVI TO I_DIV ACROSS R2933
 */
void
ooaofooa_I_DIV_R2933_Link( ooaofooa_I_EVI * part, ooaofooa_I_DIV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Event_ID = part->Event_ID;
  form->I_EVI_R2933 = part;
  Escher_SetInsertElement( &part->I_DIV_R2933, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE I_EVI FROM I_DIV ACROSS R2933
 */
void
ooaofooa_I_DIV_R2933_Unlink( ooaofooa_I_EVI * part, ooaofooa_I_DIV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Event_ID = 0;
  form->I_EVI_R2933 = 0;
  Escher_SetRemoveElement( &part->I_DIV_R2933, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE SM_EVTDI TO I_DIV ACROSS R2934
 */
void
ooaofooa_I_DIV_R2934_Link( ooaofooa_SM_EVTDI * part, ooaofooa_I_DIV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = part->SM_ID;
  form->SMedi_ID = part->SMedi_ID;
  form->SM_EVTDI_R2934 = part;
  Escher_SetInsertElement( &part->I_DIV_R2934, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SM_EVTDI FROM I_DIV ACROSS R2934
 */
void
ooaofooa_I_DIV_R2934_Unlink( ooaofooa_SM_EVTDI * part, ooaofooa_I_DIV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = 0;
  form->SMedi_ID = 0;
  form->SM_EVTDI_R2934 = 0;
  Escher_SetRemoveElement( &part->I_DIV_R2934, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE C_PP TO I_DIV ACROSS R2956
 */
void
ooaofooa_I_DIV_R2956_Link( ooaofooa_C_PP * part, ooaofooa_I_DIV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->PP_Id = part->PP_Id;
  form->C_PP_R2956 = part;
  Escher_SetInsertElement( &part->I_DIV_R2956, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE C_PP FROM I_DIV ACROSS R2956
 */
void
ooaofooa_I_DIV_R2956_Unlink( ooaofooa_C_PP * part, ooaofooa_I_DIV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->PP_Id = 0;
  form->C_PP_R2956 = 0;
  Escher_SetRemoveElement( &part->I_DIV_R2956, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_I_DIV_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_I_DIV * self = (ooaofooa_I_DIV *) instance;
  printf( "INSERT INTO I_DIV VALUES ( %ld,%ld,%ld,%ld,%ld );\n",
    ((long)self->DIV_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Event_ID & ESCHER_IDDUMP_MASK),
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
static Escher_SetElement_s ooaofooa_I_DIV_container[ ooaofooa_I_DIV_MAX_EXTENT_SIZE ];
static ooaofooa_I_DIV ooaofooa_I_DIV_instances[ ooaofooa_I_DIV_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_I_DIV_extent = {
  {0,0}, {0,0}, &ooaofooa_I_DIV_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_I_DIV_instances,
  sizeof( ooaofooa_I_DIV ), 0, ooaofooa_I_DIV_MAX_EXTENT_SIZE
  };


