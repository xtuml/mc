/*----------------------------------------------------------------------------
 * File:  ooaofooa_COMM_CIC_class.c
 *
 * Class:       Communication in Communication  (COMM_CIC)
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
ooaofooa_COMM_CIC_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_COMM_CIC * self = (ooaofooa_COMM_CIC *) instance;
  /* Initialize application analysis class attributes.  */
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_COMM_CIC_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_COMM_CIC * ooaofooa_COMM_CIC_instance = (ooaofooa_COMM_CIC *) instance;
  ooaofooa_COMM_COMM * ooaofooa_COMM_COMMrelated_instance1 = ooaofooa_COMM_COMM_AnyWhere1( ooaofooa_COMM_CIC_instance->Package_ID );
  if ( ooaofooa_COMM_COMMrelated_instance1 ) {
    ooaofooa_COMM_CIC_R1130_Link_has_children( ooaofooa_COMM_COMMrelated_instance1, ooaofooa_COMM_CIC_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_COMM_CIC *
ooaofooa_COMM_CIC_AnyWhere1( Escher_UniqueID_t w_Package_ID )
{
  ooaofooa_COMM_CIC * w; 
  Escher_Iterator_s iter_COMM_CIC;
  Escher_IteratorReset( &iter_COMM_CIC, &pG_ooaofooa_COMM_CIC_extent.active );
  while ( (w = (ooaofooa_COMM_CIC *) Escher_IteratorNext( &iter_COMM_CIC )) != 0 ) {
    if ( w->Package_ID == w_Package_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE COMM_COMM TO COMM_CIC ACROSS R1130
 */
void
ooaofooa_COMM_CIC_R1130_Link_has_children( ooaofooa_COMM_COMM * part, ooaofooa_COMM_CIC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Package_ID = part->Package_ID;
  form->COMM_COMM_R1130_is_shown_in = part;
  part->COMM_CIC_R1130_has_children = form;
}

/*
 * UNRELATE COMM_COMM FROM COMM_CIC ACROSS R1130
 */
void
ooaofooa_COMM_CIC_R1130_Unlink_has_children( ooaofooa_COMM_COMM * part, ooaofooa_COMM_CIC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->COMM_COMM_R1130_is_shown_in = 0;
  part->COMM_CIC_R1130_has_children = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_COMM_CIC_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_COMM_CIC * self = (ooaofooa_COMM_CIC *) instance;
  printf( "INSERT INTO COMM_CIC VALUES ( %ld );\n",
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_COMM_CIC_container[ ooaofooa_COMM_CIC_MAX_EXTENT_SIZE ];
static ooaofooa_COMM_CIC ooaofooa_COMM_CIC_instances[ ooaofooa_COMM_CIC_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_COMM_CIC_extent = {
  {0,0}, {0,0}, &ooaofooa_COMM_CIC_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_COMM_CIC_instances,
  sizeof( ooaofooa_COMM_CIC ), 0, ooaofooa_COMM_CIC_MAX_EXTENT_SIZE
  };


