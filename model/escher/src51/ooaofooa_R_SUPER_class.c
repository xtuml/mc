/*----------------------------------------------------------------------------
 * File:  ooaofooa_R_SUPER_class.c
 *
 * Class:       Class As Supertype  (R_SUPER)
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
ooaofooa_R_SUPER_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_R_SUPER * self = (ooaofooa_R_SUPER *) instance;
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
void ooaofooa_R_SUPER_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_R_SUPER * ooaofooa_R_SUPER_instance = (ooaofooa_R_SUPER *) instance;
  ooaofooa_R_SUBSUP * ooaofooa_R_SUBSUPrelated_instance1 = ooaofooa_R_SUBSUP_AnyWhere1( ooaofooa_R_SUPER_instance->Rel_ID );
  if ( ooaofooa_R_SUBSUPrelated_instance1 ) {
    ooaofooa_R_SUPER_R212_Link_relates( ooaofooa_R_SUBSUPrelated_instance1, ooaofooa_R_SUPER_instance );
  }
  {
  ooaofooa_R_RTO * ooaofooa_R_RTOrelated_instance1 = ooaofooa_R_RTO_AnyWhere1( ooaofooa_R_SUPER_instance->Obj_ID, ooaofooa_R_SUPER_instance->Rel_ID, ooaofooa_R_SUPER_instance->OIR_ID );
  if ( ooaofooa_R_RTOrelated_instance1 ) {
    ooaofooa_R_SUPER_R204_Link( ooaofooa_R_RTOrelated_instance1, ooaofooa_R_SUPER_instance );
  }
  }
}


/*
 * RELATE R_RTO TO R_SUPER ACROSS R204
 */
void
ooaofooa_R_SUPER_R204_Link( ooaofooa_R_RTO * supertype, ooaofooa_R_SUPER * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->OIR_ID = supertype->OIR_ID;
  subtype->Obj_ID = supertype->Obj_ID;
  subtype->Rel_ID = supertype->Rel_ID;
  /* Optimized linkage for R_SUPER->R_RTO[R204] */
  subtype->R_RTO_R204 = supertype;
  /* Optimized linkage for R_RTO->R_SUPER[R204] */
  supertype->R204_subtype = subtype;
  supertype->R204_object_id = ooaofooa_R_SUPER_CLASS_NUMBER;
}


/*
 * UNRELATE R_RTO FROM R_SUPER ACROSS R204
 */
void
ooaofooa_R_SUPER_R204_Unlink( ooaofooa_R_RTO * supertype, ooaofooa_R_SUPER * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->R_RTO_R204 = 0;
  supertype->R204_subtype = 0;
  supertype->R204_object_id = 0;
}


/*
 * RELATE R_SUBSUP TO R_SUPER ACROSS R212
 */
void
ooaofooa_R_SUPER_R212_Link_relates( ooaofooa_R_SUBSUP * part, ooaofooa_R_SUPER * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Rel_ID = part->Rel_ID;
  form->R_SUBSUP_R212_is_related_to_subtypes_via = part;
  part->R_SUPER_R212_relates = form;
}

/*
 * UNRELATE R_SUBSUP FROM R_SUPER ACROSS R212
 */
void
ooaofooa_R_SUPER_R212_Unlink_relates( ooaofooa_R_SUBSUP * part, ooaofooa_R_SUPER * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->R_SUBSUP_R212_is_related_to_subtypes_via = 0;
  part->R_SUPER_R212_relates = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_R_SUPER_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_R_SUPER * self = (ooaofooa_R_SUPER *) instance;
  printf( "INSERT INTO R_SUPER VALUES ( %ld,%ld,%ld );\n",
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
static Escher_SetElement_s ooaofooa_R_SUPER_container[ ooaofooa_R_SUPER_MAX_EXTENT_SIZE ];
static ooaofooa_R_SUPER ooaofooa_R_SUPER_instances[ ooaofooa_R_SUPER_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_R_SUPER_extent = {
  {0,0}, {0,0}, &ooaofooa_R_SUPER_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_R_SUPER_instances,
  sizeof( ooaofooa_R_SUPER ), 0, ooaofooa_R_SUPER_MAX_EXTENT_SIZE
  };


