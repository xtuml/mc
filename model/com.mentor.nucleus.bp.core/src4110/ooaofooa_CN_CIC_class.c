/*----------------------------------------------------------------------------
 * File:  ooaofooa_CN_CIC_class.c
 *
 * Class:       Component in Component  (CN_CIC)
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
ooaofooa_CN_CIC_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_CN_CIC * self = (ooaofooa_CN_CIC *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Id;
  self->Parent_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_CN_CIC_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_CN_CIC * ooaofooa_CN_CIC_instance = (ooaofooa_CN_CIC *) instance;
  ooaofooa_C_C * ooaofooa_C_Crelated_instance1 = ooaofooa_C_C_AnyWhere1( ooaofooa_CN_CIC_instance->Parent_Id );
  if ( ooaofooa_C_Crelated_instance1 ) {
    ooaofooa_CN_CIC_R4202_Link_can_nest( ooaofooa_C_Crelated_instance1, ooaofooa_CN_CIC_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_CN_CIC *
ooaofooa_CN_CIC_AnyWhere1( Escher_UniqueID_t w_Id )
{
  ooaofooa_CN_CIC * w; 
  Escher_Iterator_s iter_CN_CIC;
  Escher_IteratorReset( &iter_CN_CIC, &pG_ooaofooa_CN_CIC_extent.active );
  while ( (w = (ooaofooa_CN_CIC *) Escher_IteratorNext( &iter_CN_CIC )) != 0 ) {
    if ( w->Id == w_Id ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE C_C TO CN_CIC ACROSS R4202
 */
void
ooaofooa_CN_CIC_R4202_Link_can_nest( ooaofooa_C_C * part, ooaofooa_CN_CIC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Parent_Id = part->Id;
  form->C_C_R4202_can_be_nested_in = part;
  Escher_SetInsertElement( &part->CN_CIC_R4202_can_nest, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE C_C FROM CN_CIC ACROSS R4202
 */
void
ooaofooa_CN_CIC_R4202_Unlink_can_nest( ooaofooa_C_C * part, ooaofooa_CN_CIC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Parent_Id = 0;
  form->C_C_R4202_can_be_nested_in = 0;
  Escher_SetRemoveElement( &part->CN_CIC_R4202_can_nest, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_CN_CIC_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_CN_CIC * self = (ooaofooa_CN_CIC *) instance;
  printf( "INSERT INTO CN_CIC VALUES ( %ld,%ld );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    ((long)self->Parent_Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_CN_CIC_container[ ooaofooa_CN_CIC_MAX_EXTENT_SIZE ];
static ooaofooa_CN_CIC ooaofooa_CN_CIC_instances[ ooaofooa_CN_CIC_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_CN_CIC_extent = {
  {0,0}, {0,0}, &ooaofooa_CN_CIC_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_CN_CIC_instances,
  sizeof( ooaofooa_CN_CIC ), 0, ooaofooa_CN_CIC_MAX_EXTENT_SIZE
  };


