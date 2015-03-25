/*----------------------------------------------------------------------------
 * File:  ooaofooa_UC_AIUC_class.c
 *
 * Class:       Association In Use Case  (UC_AIUC)
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
ooaofooa_UC_AIUC_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_UC_AIUC * self = (ooaofooa_UC_AIUC *) instance;
  /* Initialize application analysis class attributes.  */
  self->Assoc_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_UC_AIUC_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_UC_AIUC * ooaofooa_UC_AIUC_instance = (ooaofooa_UC_AIUC *) instance;
  ooaofooa_UC_UCC * ooaofooa_UC_UCCrelated_instance1 = ooaofooa_UC_UCC_AnyWhere1( ooaofooa_UC_AIUC_instance->Package_ID );
  if ( ooaofooa_UC_UCCrelated_instance1 ) {
    ooaofooa_UC_AIUC_R1214_Link_contains( ooaofooa_UC_UCCrelated_instance1, ooaofooa_UC_AIUC_instance );
  }
  {
  ooaofooa_UC_UCA * ooaofooa_UC_UCArelated_instance1 = ooaofooa_UC_UCA_AnyWhere1( ooaofooa_UC_AIUC_instance->Assoc_ID );
  if ( ooaofooa_UC_UCArelated_instance1 ) {
    ooaofooa_UC_AIUC_R1215_Link_contained_through( ooaofooa_UC_UCArelated_instance1, ooaofooa_UC_AIUC_instance );
  }
  }
}


/*
 * RELATE UC_UCC TO UC_AIUC ACROSS R1214
 */
void
ooaofooa_UC_AIUC_R1214_Link_contains( ooaofooa_UC_UCC * part, ooaofooa_UC_AIUC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Package_ID = part->Package_ID;
  form->UC_UCC_R1214_contained_in = part;
  Escher_SetInsertElement( &part->UC_AIUC_R1214_contains, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE UC_UCC FROM UC_AIUC ACROSS R1214
 */
void
ooaofooa_UC_AIUC_R1214_Unlink_contains( ooaofooa_UC_UCC * part, ooaofooa_UC_AIUC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Package_ID = 0;
  form->UC_UCC_R1214_contained_in = 0;
  Escher_SetRemoveElement( &part->UC_AIUC_R1214_contains, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE UC_UCA TO UC_AIUC ACROSS R1215
 */
void
ooaofooa_UC_AIUC_R1215_Link_contained_through( ooaofooa_UC_UCA * part, ooaofooa_UC_AIUC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Assoc_ID = part->Assoc_ID;
  form->UC_UCA_R1215_provides_containment = part;
  part->UC_AIUC_R1215_contained_through = form;
}

/*
 * UNRELATE UC_UCA FROM UC_AIUC ACROSS R1215
 */
void
ooaofooa_UC_AIUC_R1215_Unlink_contained_through( ooaofooa_UC_UCA * part, ooaofooa_UC_AIUC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Assoc_ID = 0;
  form->UC_UCA_R1215_provides_containment = 0;
  part->UC_AIUC_R1215_contained_through = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_UC_AIUC_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_UC_AIUC * self = (ooaofooa_UC_AIUC *) instance;
  printf( "INSERT INTO UC_AIUC VALUES ( %ld,%ld );\n",
    ((long)self->Assoc_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_UC_AIUC_container[ ooaofooa_UC_AIUC_MAX_EXTENT_SIZE ];
static ooaofooa_UC_AIUC ooaofooa_UC_AIUC_instances[ ooaofooa_UC_AIUC_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_UC_AIUC_extent = {
  {0,0}, {0,0}, &ooaofooa_UC_AIUC_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_UC_AIUC_instances,
  sizeof( ooaofooa_UC_AIUC ), 0, ooaofooa_UC_AIUC_MAX_EXTENT_SIZE
  };


