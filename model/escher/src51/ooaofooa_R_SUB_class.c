/*----------------------------------------------------------------------------
 * File:  ooaofooa_R_SUB_class.c
 *
 * Class:       Class As Subtype  (R_SUB)
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
ooaofooa_R_SUB_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_R_SUB * self = (ooaofooa_R_SUB *) instance;
  /* Initialize application analysis class attributes.  */
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Rel_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->OIR_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_R_SUB_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_R_SUB * ooaofooa_R_SUB_instance = (ooaofooa_R_SUB *) instance;
  ooaofooa_R_SUBSUP * ooaofooa_R_SUBSUPrelated_instance1 = ooaofooa_R_SUBSUP_AnyWhere1( ooaofooa_R_SUB_instance->Rel_ID );
  if ( ooaofooa_R_SUBSUPrelated_instance1 ) {
    ooaofooa_R_SUB_R213_Link_relates( ooaofooa_R_SUBSUPrelated_instance1, ooaofooa_R_SUB_instance );
  }
  {
  ooaofooa_R_RGO * ooaofooa_R_RGOrelated_instance1 = ooaofooa_R_RGO_AnyWhere1( ooaofooa_R_SUB_instance->Obj_ID, ooaofooa_R_SUB_instance->Rel_ID, ooaofooa_R_SUB_instance->OIR_ID );
  if ( ooaofooa_R_RGOrelated_instance1 ) {
    ooaofooa_R_SUB_R205_Link( ooaofooa_R_RGOrelated_instance1, ooaofooa_R_SUB_instance );
  }
  }
}


/*
 * RELATE R_RGO TO R_SUB ACROSS R205
 */
void
ooaofooa_R_SUB_R205_Link( ooaofooa_R_RGO * supertype, ooaofooa_R_SUB * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->OIR_ID = supertype->OIR_ID;
  subtype->Obj_ID = supertype->Obj_ID;
  subtype->Rel_ID = supertype->Rel_ID;
  /* Optimized linkage for R_SUB->R_RGO[R205] */
  subtype->R_RGO_R205 = supertype;
  /* Optimized linkage for R_RGO->R_SUB[R205] */
  supertype->R205_subtype = subtype;
  supertype->R205_object_id = ooaofooa_R_SUB_CLASS_NUMBER;
}


/*
 * UNRELATE R_RGO FROM R_SUB ACROSS R205
 */
void
ooaofooa_R_SUB_R205_Unlink( ooaofooa_R_RGO * supertype, ooaofooa_R_SUB * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->R_RGO_R205 = 0;
  supertype->R205_subtype = 0;
  supertype->R205_object_id = 0;
}


/*
 * RELATE R_SUBSUP TO R_SUB ACROSS R213
 */
void
ooaofooa_R_SUB_R213_Link_relates( ooaofooa_R_SUBSUP * part, ooaofooa_R_SUB * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Rel_ID = part->Rel_ID;
  form->R_SUBSUP_R213_is_related_to_supertype_via = part;
  Escher_SetInsertElement( &part->R_SUB_R213_relates, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE R_SUBSUP FROM R_SUB ACROSS R213
 */
void
ooaofooa_R_SUB_R213_Unlink_relates( ooaofooa_R_SUBSUP * part, ooaofooa_R_SUB * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->R_SUBSUP_R213_is_related_to_supertype_via = 0;
  Escher_SetRemoveElement( &part->R_SUB_R213_relates, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_R_SUB_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_R_SUB * self = (ooaofooa_R_SUB *) instance;
  printf( "INSERT INTO R_SUB VALUES ( %ld,%ld,%ld );\n",
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Rel_ID & ESCHER_IDDUMP_MASK),
    ((long)self->OIR_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_R_SUB_container[ ooaofooa_R_SUB_MAX_EXTENT_SIZE ];
static ooaofooa_R_SUB ooaofooa_R_SUB_instances[ ooaofooa_R_SUB_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_R_SUB_extent = {
  {0,0}, {0,0}, &ooaofooa_R_SUB_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_R_SUB_instances,
  sizeof( ooaofooa_R_SUB ), 0, ooaofooa_R_SUB_MAX_EXTENT_SIZE
  };


