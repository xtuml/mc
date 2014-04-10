/*----------------------------------------------------------------------------
 * File:  ooaofooa_R_FORM_class.c
 *
 * Class:       Class As Simple Formalizer  (R_FORM)
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
ooaofooa_R_FORM_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_R_FORM * self = (ooaofooa_R_FORM *) instance;
  /* Initialize application analysis class attributes.  */
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Rel_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->OIR_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->Mult = Escher_atoi( avlstring[ 4 ] );
  self->Cond = Escher_atoi( avlstring[ 5 ] );
  Escher_strcpy( self->Txt_Phrs, avlstring[ 6 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_R_FORM_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_R_FORM * ooaofooa_R_FORM_instance = (ooaofooa_R_FORM *) instance;
  ooaofooa_R_SIMP * ooaofooa_R_SIMPrelated_instance1 = ooaofooa_R_SIMP_AnyWhere1( ooaofooa_R_FORM_instance->Rel_ID );
  if ( ooaofooa_R_SIMPrelated_instance1 ) {
    ooaofooa_R_FORM_R208_Link_relates( ooaofooa_R_SIMPrelated_instance1, ooaofooa_R_FORM_instance );
  }
  {
  ooaofooa_R_RGO * ooaofooa_R_RGOrelated_instance1 = ooaofooa_R_RGO_AnyWhere1( ooaofooa_R_FORM_instance->Obj_ID, ooaofooa_R_FORM_instance->Rel_ID, ooaofooa_R_FORM_instance->OIR_ID );
  if ( ooaofooa_R_RGOrelated_instance1 ) {
    ooaofooa_R_FORM_R205_Link( ooaofooa_R_RGOrelated_instance1, ooaofooa_R_FORM_instance );
  }
  }
}


/*
 * RELATE R_RGO TO R_FORM ACROSS R205
 */
void
ooaofooa_R_FORM_R205_Link( ooaofooa_R_RGO * supertype, ooaofooa_R_FORM * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->OIR_ID = supertype->OIR_ID;
  subtype->Obj_ID = supertype->Obj_ID;
  subtype->Rel_ID = supertype->Rel_ID;
  /* Optimized linkage for R_FORM->R_RGO[R205] */
  subtype->R_RGO_R205 = supertype;
  /* Optimized linkage for R_RGO->R_FORM[R205] */
  supertype->R205_subtype = subtype;
  supertype->R205_object_id = ooaofooa_R_FORM_CLASS_NUMBER;
}


/*
 * UNRELATE R_RGO FROM R_FORM ACROSS R205
 */
void
ooaofooa_R_FORM_R205_Unlink( ooaofooa_R_RGO * supertype, ooaofooa_R_FORM * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->R_RGO_R205 = 0;
  supertype->R205_subtype = 0;
  supertype->R205_object_id = 0;
}


/*
 * RELATE R_SIMP TO R_FORM ACROSS R208
 */
void
ooaofooa_R_FORM_R208_Link_relates( ooaofooa_R_SIMP * part, ooaofooa_R_FORM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Rel_ID = part->Rel_ID;
  form->R_SIMP_R208_is_related_to_participant_via = part;
  part->R_FORM_R208_relates = form;
}

/*
 * UNRELATE R_SIMP FROM R_FORM ACROSS R208
 */
void
ooaofooa_R_FORM_R208_Unlink_relates( ooaofooa_R_SIMP * part, ooaofooa_R_FORM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->R_SIMP_R208_is_related_to_participant_via = 0;
  part->R_FORM_R208_relates = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_R_FORM_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_R_FORM * self = (ooaofooa_R_FORM *) instance;
  printf( "INSERT INTO R_FORM VALUES ( %ld,%ld,%ld,%d,%d,'%s' );\n",
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Rel_ID & ESCHER_IDDUMP_MASK),
    ((long)self->OIR_ID & ESCHER_IDDUMP_MASK),
    self->Mult,
    self->Cond,
    self->Txt_Phrs );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_R_FORM_container[ ooaofooa_R_FORM_MAX_EXTENT_SIZE ];
static ooaofooa_R_FORM ooaofooa_R_FORM_instances[ ooaofooa_R_FORM_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_R_FORM_extent = {
  {0,0}, {0,0}, &ooaofooa_R_FORM_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_R_FORM_instances,
  sizeof( ooaofooa_R_FORM ), 0, ooaofooa_R_FORM_MAX_EXTENT_SIZE
  };


