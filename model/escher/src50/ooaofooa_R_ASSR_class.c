/*----------------------------------------------------------------------------
 * File:  ooaofooa_R_ASSR_class.c
 *
 * Class:       Class As Link  (R_ASSR)
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
ooaofooa_R_ASSR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_R_ASSR * self = (ooaofooa_R_ASSR *) instance;
  /* Initialize application analysis class attributes.  */
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Rel_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->OIR_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->Mult = Escher_atoi( avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_R_ASSR_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_R_ASSR * ooaofooa_R_ASSR_instance = (ooaofooa_R_ASSR *) instance;
  ooaofooa_R_RGO * ooaofooa_R_RGOrelated_instance1 = ooaofooa_R_RGO_AnyWhere1( ooaofooa_R_ASSR_instance->Obj_ID, ooaofooa_R_ASSR_instance->Rel_ID, ooaofooa_R_ASSR_instance->OIR_ID );
  if ( ooaofooa_R_RGOrelated_instance1 ) {
    ooaofooa_R_ASSR_R205_Link( ooaofooa_R_RGOrelated_instance1, ooaofooa_R_ASSR_instance );
  }
  {
  ooaofooa_R_ASSOC * ooaofooa_R_ASSOCrelated_instance1 = ooaofooa_R_ASSOC_AnyWhere1( ooaofooa_R_ASSR_instance->Rel_ID );
  if ( ooaofooa_R_ASSOCrelated_instance1 ) {
    ooaofooa_R_ASSR_R211_Link_uses_a_formalizer( ooaofooa_R_ASSOCrelated_instance1, ooaofooa_R_ASSR_instance );
  }
  }
}


/*
 * RELATE R_RGO TO R_ASSR ACROSS R205
 */
void
ooaofooa_R_ASSR_R205_Link( ooaofooa_R_RGO * supertype, ooaofooa_R_ASSR * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->OIR_ID = supertype->OIR_ID;
  subtype->Obj_ID = supertype->Obj_ID;
  subtype->Rel_ID = supertype->Rel_ID;
  /* Optimized linkage for R_ASSR->R_RGO[R205] */
  subtype->R_RGO_R205 = supertype;
  /* Optimized linkage for R_RGO->R_ASSR[R205] */
  supertype->R205_subtype = subtype;
  supertype->R205_object_id = ooaofooa_R_ASSR_CLASS_NUMBER;
}


/*
 * UNRELATE R_RGO FROM R_ASSR ACROSS R205
 */
void
ooaofooa_R_ASSR_R205_Unlink( ooaofooa_R_RGO * supertype, ooaofooa_R_ASSR * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->R_RGO_R205 = 0;
  supertype->R205_subtype = 0;
  supertype->R205_object_id = 0;
}


/*
 * RELATE R_ASSOC TO R_ASSR ACROSS R211
 */
void
ooaofooa_R_ASSR_R211_Link_uses_a_formalizer( ooaofooa_R_ASSOC * part, ooaofooa_R_ASSR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Rel_ID = part->Rel_ID;
  form->R_ASSOC_R211_formalizes_association_between_associated_classes = part;
  part->R_ASSR_R211_uses_a_formalizer = form;
}

/*
 * UNRELATE R_ASSOC FROM R_ASSR ACROSS R211
 */
void
ooaofooa_R_ASSR_R211_Unlink_uses_a_formalizer( ooaofooa_R_ASSOC * part, ooaofooa_R_ASSR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->R_ASSOC_R211_formalizes_association_between_associated_classes = 0;
  part->R_ASSR_R211_uses_a_formalizer = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_R_ASSR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_R_ASSR * self = (ooaofooa_R_ASSR *) instance;
  printf( "INSERT INTO R_ASSR VALUES ( %ld,%ld,%ld,%d );\n",
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Rel_ID & ESCHER_IDDUMP_MASK),
    ((long)self->OIR_ID & ESCHER_IDDUMP_MASK),
    self->Mult );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_R_ASSR_container[ ooaofooa_R_ASSR_MAX_EXTENT_SIZE ];
static ooaofooa_R_ASSR ooaofooa_R_ASSR_instances[ ooaofooa_R_ASSR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_R_ASSR_extent = {
  {0,0}, {0,0}, &ooaofooa_R_ASSR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_R_ASSR_instances,
  sizeof( ooaofooa_R_ASSR ), 0, ooaofooa_R_ASSR_MAX_EXTENT_SIZE
  };


