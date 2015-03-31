/*----------------------------------------------------------------------------
 * File:  ooaofooa_R_OIR_class.c
 *
 * Class:       Class In Association  (R_OIR)
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
ooaofooa_R_OIR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_R_OIR * self = (ooaofooa_R_OIR *) instance;
  /* Initialize application analysis class attributes.  */
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Rel_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->OIR_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  return_identifier = self->OIR_ID;
  self->IObj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_R_OIR_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_R_OIR * ooaofooa_R_OIR_instance = (ooaofooa_R_OIR *) instance;
  ooaofooa_O_OBJ * ooaofooa_O_OBJrelated_instance1 = ooaofooa_O_OBJ_AnyWhere1( ooaofooa_R_OIR_instance->Obj_ID );
  ooaofooa_R_REL * ooaofooa_R_RELrelated_instance2 = ooaofooa_R_REL_AnyWhere1( ooaofooa_R_OIR_instance->Rel_ID );
  if ( ooaofooa_O_OBJrelated_instance1 && ooaofooa_R_RELrelated_instance2 ) {
    ooaofooa_R_OIR_R201_Link( ooaofooa_R_RELrelated_instance2, ooaofooa_O_OBJrelated_instance1, ooaofooa_R_OIR_instance );
  }
  {
  ooaofooa_O_IOBJ * ooaofooa_O_IOBJrelated_instance1 = ooaofooa_O_IOBJ_AnyWhere1( ooaofooa_R_OIR_instance->IObj_ID );
  if ( ooaofooa_O_IOBJrelated_instance1 ) {
    ooaofooa_R_OIR_R202_Link_is_used_for_spanning_associations_as( ooaofooa_O_IOBJrelated_instance1, ooaofooa_R_OIR_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_R_OIR *
ooaofooa_R_OIR_AnyWhere1( Escher_UniqueID_t w_Obj_ID, Escher_UniqueID_t w_Rel_ID, Escher_UniqueID_t w_OIR_ID )
{
  ooaofooa_R_OIR * w; 
  Escher_Iterator_s iter_R_OIR;
  Escher_IteratorReset( &iter_R_OIR, &pG_ooaofooa_R_OIR_extent.active );
  while ( (w = (ooaofooa_R_OIR *) Escher_IteratorNext( &iter_R_OIR )) != 0 ) {
    if ( w->Obj_ID == w_Obj_ID && w->Rel_ID == w_Rel_ID && w->OIR_ID == w_OIR_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE R_REL TO O_OBJ ACROSS R201 USING R_OIR
 */
void
ooaofooa_R_OIR_R201_Link( ooaofooa_R_REL * aone, ooaofooa_O_OBJ * aoth, ooaofooa_R_OIR * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->Rel_ID = aone->Rel_ID;
  assr->Obj_ID = aoth->Obj_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->R_REL_R201_has_instance_associations_abstracted = aone;
  assr->O_OBJ_R201_abstracts_association_between_instances_of = aoth;
  Escher_SetInsertElement( &aone->R_OIR_R201, assr );
  Escher_SetInsertElement( &aoth->R_OIR_R201, assr );
}

/*
 * UNRELATE R_REL FROM O_OBJ ACROSS R201 USING R_OIR
 */
void
ooaofooa_R_OIR_R201_Unlink( ooaofooa_R_REL * aone, ooaofooa_O_OBJ * aoth, ooaofooa_R_OIR * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->R_REL_R201_has_instance_associations_abstracted = 0;
  assr->O_OBJ_R201_abstracts_association_between_instances_of = 0;
  Escher_SetRemoveElement( &aone->R_OIR_R201, assr );
  Escher_SetRemoveElement( &aoth->R_OIR_R201, assr );
}

/*
 * RELATE O_IOBJ TO R_OIR ACROSS R202
 */
void
ooaofooa_R_OIR_R202_Link_is_used_for_spanning_associations_as( ooaofooa_O_IOBJ * part, ooaofooa_R_OIR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->IObj_ID = part->IObj_ID;
  form->O_IOBJ_R202_may_be_represented_by = part;
  Escher_SetInsertElement( &part->R_OIR_R202_is_used_for_spanning_associations_as, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_IOBJ FROM R_OIR ACROSS R202
 */
void
ooaofooa_R_OIR_R202_Unlink_is_used_for_spanning_associations_as( ooaofooa_O_IOBJ * part, ooaofooa_R_OIR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->IObj_ID = 0;
  form->O_IOBJ_R202_may_be_represented_by = 0;
  Escher_SetRemoveElement( &part->R_OIR_R202_is_used_for_spanning_associations_as, (Escher_ObjectSet_s *) form );
}

/* Accessors to R_OIR[R203] subtypes */


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_R_OIR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_R_OIR * self = (ooaofooa_R_OIR *) instance;
  printf( "INSERT INTO R_OIR VALUES ( %ld,%ld,%ld,%ld );\n",
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Rel_ID & ESCHER_IDDUMP_MASK),
    ((long)self->OIR_ID & ESCHER_IDDUMP_MASK),
    ((long)self->IObj_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_R_OIR_container[ ooaofooa_R_OIR_MAX_EXTENT_SIZE ];
static ooaofooa_R_OIR ooaofooa_R_OIR_instances[ ooaofooa_R_OIR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_R_OIR_extent = {
  {0,0}, {0,0}, &ooaofooa_R_OIR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_R_OIR_instances,
  sizeof( ooaofooa_R_OIR ), 0, ooaofooa_R_OIR_MAX_EXTENT_SIZE
  };


