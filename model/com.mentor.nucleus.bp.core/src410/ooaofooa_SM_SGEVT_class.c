/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_SGEVT_class.c
 *
 * Class:       Signal Event  (SM_SGEVT)
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
ooaofooa_SM_SGEVT_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SM_SGEVT * self = (ooaofooa_SM_SGEVT *) instance;
  /* Initialize application analysis class attributes.  */
  self->SMevt_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->SMspd_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->Provided_Signal_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->Required_Signal_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  Escher_strcpy( self->signal_name, avlstring[ 6 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SM_SGEVT_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SM_SGEVT * ooaofooa_SM_SGEVT_instance = (ooaofooa_SM_SGEVT *) instance;
  ooaofooa_SM_SEVT * ooaofooa_SM_SEVTrelated_instance1 = ooaofooa_SM_SEVT_AnyWhere1( ooaofooa_SM_SGEVT_instance->SMevt_ID, ooaofooa_SM_SGEVT_instance->SM_ID, ooaofooa_SM_SGEVT_instance->SMspd_ID );
  if ( ooaofooa_SM_SEVTrelated_instance1 ) {
    ooaofooa_SM_SGEVT_R526_Link( ooaofooa_SM_SEVTrelated_instance1, ooaofooa_SM_SGEVT_instance );
  }
  {
  ooaofooa_SPR_PS * ooaofooa_SPR_PSrelated_instance1 = ooaofooa_SPR_PS_AnyWhere1( ooaofooa_SM_SGEVT_instance->Provided_Signal_Id );
  if ( ooaofooa_SPR_PSrelated_instance1 ) {
    ooaofooa_SM_SGEVT_R528_Link( ooaofooa_SPR_PSrelated_instance1, ooaofooa_SM_SGEVT_instance );
  }
  }
  {
  ooaofooa_SPR_RS * ooaofooa_SPR_RSrelated_instance1 = ooaofooa_SPR_RS_AnyWhere1( ooaofooa_SM_SGEVT_instance->Required_Signal_Id );
  if ( ooaofooa_SPR_RSrelated_instance1 ) {
    ooaofooa_SM_SGEVT_R529_Link( ooaofooa_SPR_RSrelated_instance1, ooaofooa_SM_SGEVT_instance );
  }
  }
}


/*
 * RELATE SM_SEVT TO SM_SGEVT ACROSS R526
 */
void
ooaofooa_SM_SGEVT_R526_Link( ooaofooa_SM_SEVT * supertype, ooaofooa_SM_SGEVT * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SMevt_ID = supertype->SMevt_ID;
  subtype->SM_ID = supertype->SM_ID;
  subtype->SMspd_ID = supertype->SMspd_ID;
  /* Optimized linkage for SM_SGEVT->SM_SEVT[R526] */
  subtype->SM_SEVT_R526 = supertype;
  /* Optimized linkage for SM_SEVT->SM_SGEVT[R526] */
  supertype->R526_subtype = subtype;
  supertype->R526_object_id = ooaofooa_SM_SGEVT_CLASS_NUMBER;
}


/*
 * UNRELATE SM_SEVT FROM SM_SGEVT ACROSS R526
 */
void
ooaofooa_SM_SGEVT_R526_Unlink( ooaofooa_SM_SEVT * supertype, ooaofooa_SM_SGEVT * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SM_SEVT_R526 = 0;
  supertype->R526_subtype = 0;
  supertype->R526_object_id = 0;
}


/*
 * RELATE SPR_PS TO SM_SGEVT ACROSS R528
 */
void
ooaofooa_SM_SGEVT_R528_Link( ooaofooa_SPR_PS * part, ooaofooa_SM_SGEVT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Provided_Signal_Id = part->Id;
  form->SPR_PS_R528 = part;
  part->SM_SGEVT_R528 = form;
}

/*
 * UNRELATE SPR_PS FROM SM_SGEVT ACROSS R528
 */
void
ooaofooa_SM_SGEVT_R528_Unlink( ooaofooa_SPR_PS * part, ooaofooa_SM_SGEVT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Provided_Signal_Id = 0;
  form->SPR_PS_R528 = 0;
  part->SM_SGEVT_R528 = 0;
}

/*
 * RELATE SPR_RS TO SM_SGEVT ACROSS R529
 */
void
ooaofooa_SM_SGEVT_R529_Link( ooaofooa_SPR_RS * part, ooaofooa_SM_SGEVT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Required_Signal_Id = part->Id;
  form->SPR_RS_R529 = part;
  part->SM_SGEVT_R529 = form;
}

/*
 * UNRELATE SPR_RS FROM SM_SGEVT ACROSS R529
 */
void
ooaofooa_SM_SGEVT_R529_Unlink( ooaofooa_SPR_RS * part, ooaofooa_SM_SGEVT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Required_Signal_Id = 0;
  form->SPR_RS_R529 = 0;
  part->SM_SGEVT_R529 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SM_SGEVT_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SM_SGEVT * self = (ooaofooa_SM_SGEVT *) instance;
  printf( "INSERT INTO SM_SGEVT VALUES ( %ld,%ld,%ld,%ld,%ld,'%s' );\n",
    ((long)self->SMevt_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMspd_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Provided_Signal_Id & ESCHER_IDDUMP_MASK),
    ((long)self->Required_Signal_Id & ESCHER_IDDUMP_MASK),
    self->signal_name );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SM_SGEVT_container[ ooaofooa_SM_SGEVT_MAX_EXTENT_SIZE ];
static ooaofooa_SM_SGEVT ooaofooa_SM_SGEVT_instances[ ooaofooa_SM_SGEVT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SM_SGEVT_extent = {
  {0,0}, {0,0}, &ooaofooa_SM_SGEVT_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SM_SGEVT_instances,
  sizeof( ooaofooa_SM_SGEVT ), 0, ooaofooa_SM_SGEVT_MAX_EXTENT_SIZE
  };


