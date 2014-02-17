/*----------------------------------------------------------------------------
 * File:  ooaofooa_EP_PIP_class.c
 *
 * Class:       Package In Package  (EP_PIP)
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
ooaofooa_EP_PIP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_EP_PIP * self = (ooaofooa_EP_PIP *) instance;
  /* Initialize application analysis class attributes.  */
  self->Parent_Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Child_Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_EP_PIP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_EP_PIP * ooaofooa_EP_PIP_instance = (ooaofooa_EP_PIP *) instance;
  ooaofooa_EP_PKG * ooaofooa_EP_PKGrelated_instance1 = ooaofooa_EP_PKG_AnyWhere1( ooaofooa_EP_PIP_instance->Parent_Package_ID );
  if ( ooaofooa_EP_PKGrelated_instance1 ) {
    ooaofooa_EP_PIP_R1403_Link_contains( ooaofooa_EP_PKGrelated_instance1, ooaofooa_EP_PIP_instance );
  }
  {
  ooaofooa_EP_PKG * ooaofooa_EP_PKGrelated_instance1 = ooaofooa_EP_PKG_AnyWhere1( ooaofooa_EP_PIP_instance->Child_Package_ID );
  if ( ooaofooa_EP_PKGrelated_instance1 ) {
    ooaofooa_EP_PIP_R1404_Link_linked_to_parent_through( ooaofooa_EP_PKGrelated_instance1, ooaofooa_EP_PIP_instance );
  }
  }
}


/*
 * RELATE EP_PKG TO EP_PIP ACROSS R1403
 */
void
ooaofooa_EP_PIP_R1403_Link_contains( ooaofooa_EP_PKG * part, ooaofooa_EP_PIP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Parent_Package_ID = part->Package_ID;
  form->EP_PKG_R1403_contained_within = part;
  Escher_SetInsertElement( &part->EP_PIP_R1403_contains, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE EP_PKG FROM EP_PIP ACROSS R1403
 */
void
ooaofooa_EP_PIP_R1403_Unlink_contains( ooaofooa_EP_PKG * part, ooaofooa_EP_PIP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->EP_PKG_R1403_contained_within = 0;
  Escher_SetRemoveElement( &part->EP_PIP_R1403_contains, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE EP_PKG TO EP_PIP ACROSS R1404
 */
void
ooaofooa_EP_PIP_R1404_Link_linked_to_parent_through( ooaofooa_EP_PKG * part, ooaofooa_EP_PIP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Child_Package_ID = part->Package_ID;
  form->EP_PKG_R1404_links_to_parent_of = part;
  part->EP_PIP_R1404_linked_to_parent_through = form;
}

/*
 * UNRELATE EP_PKG FROM EP_PIP ACROSS R1404
 */
void
ooaofooa_EP_PIP_R1404_Unlink_linked_to_parent_through( ooaofooa_EP_PKG * part, ooaofooa_EP_PIP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->EP_PKG_R1404_links_to_parent_of = 0;
  part->EP_PIP_R1404_linked_to_parent_through = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_EP_PIP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_EP_PIP * self = (ooaofooa_EP_PIP *) instance;
  printf( "INSERT INTO EP_PIP VALUES ( %ld,%ld );\n",
    ((long)self->Parent_Package_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Child_Package_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_EP_PIP_container[ ooaofooa_EP_PIP_MAX_EXTENT_SIZE ];
static ooaofooa_EP_PIP ooaofooa_EP_PIP_instances[ ooaofooa_EP_PIP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_EP_PIP_extent = {
  {0,0}, {0,0}, &ooaofooa_EP_PIP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_EP_PIP_instances,
  sizeof( ooaofooa_EP_PIP ), 0, ooaofooa_EP_PIP_MAX_EXTENT_SIZE
  };


