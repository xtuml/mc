/*----------------------------------------------------------------------------
 * File:  ooaofooa_R_RGO_class.c
 *
 * Class:       Referring Class In Assoc  (R_RGO)
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
ooaofooa_R_RGO_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_R_RGO * self = (ooaofooa_R_RGO *) instance;
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
void ooaofooa_R_RGO_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_R_RGO * ooaofooa_R_RGO_instance = (ooaofooa_R_RGO *) instance;
  ooaofooa_R_OIR * ooaofooa_R_OIRrelated_instance1 = ooaofooa_R_OIR_AnyWhere1( ooaofooa_R_RGO_instance->Obj_ID, ooaofooa_R_RGO_instance->Rel_ID, ooaofooa_R_RGO_instance->OIR_ID );
  if ( ooaofooa_R_OIRrelated_instance1 ) {
    ooaofooa_R_RGO_R203_Link( ooaofooa_R_OIRrelated_instance1, ooaofooa_R_RGO_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_R_RGO *
ooaofooa_R_RGO_AnyWhere1( Escher_UniqueID_t w_Obj_ID, Escher_UniqueID_t w_Rel_ID, Escher_UniqueID_t w_OIR_ID )
{
  ooaofooa_R_RGO * w; 
  Escher_Iterator_s iter_R_RGO;
  Escher_IteratorReset( &iter_R_RGO, &pG_ooaofooa_R_RGO_extent.active );
  while ( (w = (ooaofooa_R_RGO *) Escher_IteratorNext( &iter_R_RGO )) != 0 ) {
    if ( w->Obj_ID == w_Obj_ID && w->Rel_ID == w_Rel_ID && w->OIR_ID == w_OIR_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE R_OIR TO R_RGO ACROSS R203
 */
void
ooaofooa_R_RGO_R203_Link( ooaofooa_R_OIR * supertype, ooaofooa_R_RGO * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->OIR_ID = supertype->OIR_ID;
  subtype->Obj_ID = supertype->Obj_ID;
  subtype->Rel_ID = supertype->Rel_ID;
  /* Optimized linkage for R_RGO->R_OIR[R203] */
  subtype->R_OIR_R203 = supertype;
  /* Optimized linkage for R_OIR->R_RGO[R203] */
  supertype->R203_subtype = subtype;
  supertype->R203_object_id = ooaofooa_R_RGO_CLASS_NUMBER;
}


/*
 * UNRELATE R_OIR FROM R_RGO ACROSS R203
 */
void
ooaofooa_R_RGO_R203_Unlink( ooaofooa_R_OIR * supertype, ooaofooa_R_RGO * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->R_OIR_R203 = 0;
  supertype->R203_subtype = 0;
  supertype->R203_object_id = 0;
}


/* Accessors to R_RGO[R205] subtypes */


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_R_RGO_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_R_RGO * self = (ooaofooa_R_RGO *) instance;
  printf( "INSERT INTO R_RGO VALUES ( %ld,%ld,%ld );\n",
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
static Escher_SetElement_s ooaofooa_R_RGO_container[ ooaofooa_R_RGO_MAX_EXTENT_SIZE ];
static ooaofooa_R_RGO ooaofooa_R_RGO_instances[ ooaofooa_R_RGO_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_R_RGO_extent = {
  {0,0}, {0,0}, &ooaofooa_R_RGO_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_R_RGO_instances,
  sizeof( ooaofooa_R_RGO ), 0, ooaofooa_R_RGO_MAX_EXTENT_SIZE
  };


