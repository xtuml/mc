/*----------------------------------------------------------------------------
 * File:  ooaofooa_UC_UIU_class.c
 *
 * Class:       Use Case in Use Case  (UC_UIU)
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
ooaofooa_UC_UIU_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_UC_UIU * self = (ooaofooa_UC_UIU *) instance;
  /* Initialize application analysis class attributes.  */
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_UC_UIU_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_UC_UIU * ooaofooa_UC_UIU_instance = (ooaofooa_UC_UIU *) instance;
  ooaofooa_UC_UCC * ooaofooa_UC_UCCrelated_instance1 = ooaofooa_UC_UCC_AnyWhere1( ooaofooa_UC_UIU_instance->Package_ID );
  if ( ooaofooa_UC_UCCrelated_instance1 ) {
    ooaofooa_UC_UIU_R1208_Link_can_show( ooaofooa_UC_UCCrelated_instance1, ooaofooa_UC_UIU_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_UC_UIU *
ooaofooa_UC_UIU_AnyWhere1( Escher_UniqueID_t w_Package_ID )
{
  ooaofooa_UC_UIU * w; 
  Escher_Iterator_s iter_UC_UIU;
  Escher_IteratorReset( &iter_UC_UIU, &pG_ooaofooa_UC_UIU_extent.active );
  while ( (w = (ooaofooa_UC_UIU *) Escher_IteratorNext( &iter_UC_UIU )) != 0 ) {
    if ( w->Package_ID == w_Package_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE UC_UCC TO UC_UIU ACROSS R1208
 */
void
ooaofooa_UC_UIU_R1208_Link_can_show( ooaofooa_UC_UCC * part, ooaofooa_UC_UIU * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Package_ID = part->Package_ID;
  form->UC_UCC_R1208_is_shown_in = part;
  part->UC_UIU_R1208_can_show = form;
}

/*
 * UNRELATE UC_UCC FROM UC_UIU ACROSS R1208
 */
void
ooaofooa_UC_UIU_R1208_Unlink_can_show( ooaofooa_UC_UCC * part, ooaofooa_UC_UIU * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->UC_UCC_R1208_is_shown_in = 0;
  part->UC_UIU_R1208_can_show = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_UC_UIU_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_UC_UIU * self = (ooaofooa_UC_UIU *) instance;
  printf( "INSERT INTO UC_UIU VALUES ( %ld );\n",
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_UC_UIU_container[ ooaofooa_UC_UIU_MAX_EXTENT_SIZE ];
static ooaofooa_UC_UIU ooaofooa_UC_UIU_instances[ ooaofooa_UC_UIU_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_UC_UIU_extent = {
  {0,0}, {0,0}, &ooaofooa_UC_UIU_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_UC_UIU_instances,
  sizeof( ooaofooa_UC_UIU ), 0, ooaofooa_UC_UIU_MAX_EXTENT_SIZE
  };


