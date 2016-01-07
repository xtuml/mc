/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_SIS_class.c
 *
 * Class:       Subsystem in Subsystem  (S_SIS)
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
ooaofooa_S_SIS_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_SIS * self = (ooaofooa_S_SIS *) instance;
  /* Initialize application analysis class attributes.  */
  self->Parent_SS_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Child_SS_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_S_SIS_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_SIS * ooaofooa_S_SIS_instance = (ooaofooa_S_SIS *) instance;
  ooaofooa_S_SS * ooaofooa_S_SSrelated_instance1 = (ooaofooa_S_SS *) Escher_instance_cache[ (intptr_t) ooaofooa_S_SIS_instance->Parent_SS_ID ];
  if ( ooaofooa_S_SSrelated_instance1 ) {
    ooaofooa_S_SIS_R41_Link_is_parent_to_other_packages_via( ooaofooa_S_SSrelated_instance1, ooaofooa_S_SIS_instance );
  }
  {
  ooaofooa_S_SS * ooaofooa_S_SSrelated_instance1 = (ooaofooa_S_SS *) Escher_instance_cache[ (intptr_t) ooaofooa_S_SIS_instance->Child_SS_ID ];
  if ( ooaofooa_S_SSrelated_instance1 ) {
    ooaofooa_S_SIS_R42_Link_is_child_via( ooaofooa_S_SSrelated_instance1, ooaofooa_S_SIS_instance );
  }
  }
}


/*
 * RELATE S_SS TO S_SIS ACROSS R41
 */
void
ooaofooa_S_SIS_R41_Link_is_parent_to_other_packages_via( ooaofooa_S_SS * part, ooaofooa_S_SIS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Parent_SS_ID = part->SS_ID;
  form->S_SS_R41_contains_children_of = part;
  Escher_SetInsertElement( &part->S_SIS_R41_is_parent_to_other_packages_via, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SS FROM S_SIS ACROSS R41
 */
void
ooaofooa_S_SIS_R41_Unlink_is_parent_to_other_packages_via( ooaofooa_S_SS * part, ooaofooa_S_SIS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->S_SS_R41_contains_children_of = 0;
  Escher_SetRemoveElement( &part->S_SIS_R41_is_parent_to_other_packages_via, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_SS TO S_SIS ACROSS R42
 */
void
ooaofooa_S_SIS_R42_Link_is_child_via( ooaofooa_S_SS * part, ooaofooa_S_SIS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Child_SS_ID = part->SS_ID;
  form->S_SS_R42_contains = part;
  part->S_SIS_R42_is_child_via = form;
}

/*
 * UNRELATE S_SS FROM S_SIS ACROSS R42
 */
void
ooaofooa_S_SIS_R42_Unlink_is_child_via( ooaofooa_S_SS * part, ooaofooa_S_SIS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->S_SS_R42_contains = 0;
  part->S_SIS_R42_is_child_via = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_S_SIS_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_SIS * self = (ooaofooa_S_SIS *) instance;
  printf( "INSERT INTO S_SIS VALUES ( %ld,%ld );\n",
    ((long)self->Parent_SS_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Child_SS_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_SIS_container[ ooaofooa_S_SIS_MAX_EXTENT_SIZE ];
static ooaofooa_S_SIS ooaofooa_S_SIS_instances[ ooaofooa_S_SIS_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_SIS_extent = {
  {0,0}, {0,0}, &ooaofooa_S_SIS_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_SIS_instances,
  sizeof( ooaofooa_S_SIS ), 0, ooaofooa_S_SIS_MAX_EXTENT_SIZE
  };


