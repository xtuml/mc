/*----------------------------------------------------------------------------
 * File:  ooaofooa_A_AIA_class.c
 *
 * Class:       Activity In Activity  (A_AIA)
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
ooaofooa_A_AIA_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_A_AIA * self = (ooaofooa_A_AIA *) instance;
  /* Initialize application analysis class attributes.  */
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_A_AIA_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_A_AIA * ooaofooa_A_AIA_instance = (ooaofooa_A_AIA *) instance;
  ooaofooa_A_A * ooaofooa_A_Arelated_instance1 = ooaofooa_A_A_AnyWhere1( ooaofooa_A_AIA_instance->Package_ID );
  if ( ooaofooa_A_Arelated_instance1 ) {
    ooaofooa_A_AIA_R1109_Link_is_parent_via( ooaofooa_A_Arelated_instance1, ooaofooa_A_AIA_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_A_AIA *
ooaofooa_A_AIA_AnyWhere1( Escher_UniqueID_t w_Package_ID )
{
  ooaofooa_A_AIA * w; 
  Escher_Iterator_s iter_A_AIA;
  Escher_IteratorReset( &iter_A_AIA, &pG_ooaofooa_A_AIA_extent.active );
  while ( (w = (ooaofooa_A_AIA *) Escher_IteratorNext( &iter_A_AIA )) != 0 ) {
    if ( w->Package_ID == w_Package_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE A_A TO A_AIA ACROSS R1109
 */
void
ooaofooa_A_AIA_R1109_Link_is_parent_via( ooaofooa_A_A * part, ooaofooa_A_AIA * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Package_ID = part->Package_ID;
  form->A_A_R1109 = part;
  part->A_AIA_R1109_is_parent_via = form;
}

/*
 * UNRELATE A_A FROM A_AIA ACROSS R1109
 */
void
ooaofooa_A_AIA_R1109_Unlink_is_parent_via( ooaofooa_A_A * part, ooaofooa_A_AIA * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->A_A_R1109 = 0;
  part->A_AIA_R1109_is_parent_via = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_A_AIA_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_A_AIA * self = (ooaofooa_A_AIA *) instance;
  printf( "INSERT INTO A_AIA VALUES ( %ld );\n",
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_A_AIA_container[ ooaofooa_A_AIA_MAX_EXTENT_SIZE ];
static ooaofooa_A_AIA ooaofooa_A_AIA_instances[ ooaofooa_A_AIA_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_A_AIA_extent = {
  {0,0}, {0,0}, &ooaofooa_A_AIA_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_A_AIA_instances,
  sizeof( ooaofooa_A_AIA ), 0, ooaofooa_A_AIA_MAX_EXTENT_SIZE
  };


