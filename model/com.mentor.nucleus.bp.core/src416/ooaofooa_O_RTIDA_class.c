/*----------------------------------------------------------------------------
 * File:  ooaofooa_O_RTIDA_class.c
 *
 * Class:       Referred To Identifier Attribute  (O_RTIDA)
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
ooaofooa_O_RTIDA_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_O_RTIDA * self = (ooaofooa_O_RTIDA *) instance;
  /* Initialize application analysis class attributes.  */
  self->Attr_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Oid_ID = Escher_atoi( avlstring[ 3 ] );
  self->Rel_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->OIR_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_O_RTIDA_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_O_RTIDA * ooaofooa_O_RTIDA_instance = (ooaofooa_O_RTIDA *) instance;
  ooaofooa_R_RTO * ooaofooa_R_RTOrelated_instance1 = ooaofooa_R_RTO_AnyWhere2( ooaofooa_O_RTIDA_instance->Obj_ID, ooaofooa_O_RTIDA_instance->Rel_ID, ooaofooa_O_RTIDA_instance->OIR_ID, ooaofooa_O_RTIDA_instance->Oid_ID );
  ooaofooa_O_OIDA * ooaofooa_O_OIDArelated_instance2 = ooaofooa_O_OIDA_AnyWhere1( ooaofooa_O_RTIDA_instance->Attr_ID, ooaofooa_O_RTIDA_instance->Obj_ID, ooaofooa_O_RTIDA_instance->Oid_ID );
  if ( ooaofooa_R_RTOrelated_instance1 && ooaofooa_O_OIDArelated_instance2 ) {
    ooaofooa_O_RTIDA_R110_Link( ooaofooa_R_RTOrelated_instance1, ooaofooa_O_OIDArelated_instance2, ooaofooa_O_RTIDA_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_O_RTIDA *
ooaofooa_O_RTIDA_AnyWhere1( Escher_UniqueID_t w_Attr_ID, Escher_UniqueID_t w_Obj_ID, i_t w_Oid_ID, Escher_UniqueID_t w_Rel_ID, Escher_UniqueID_t w_OIR_ID )
{
  ooaofooa_O_RTIDA * w; 
  Escher_Iterator_s iter_O_RTIDA;
  Escher_IteratorReset( &iter_O_RTIDA, &pG_ooaofooa_O_RTIDA_extent.active );
  while ( (w = (ooaofooa_O_RTIDA *) Escher_IteratorNext( &iter_O_RTIDA )) != 0 ) {
    if ( w->Attr_ID == w_Attr_ID && w->Obj_ID == w_Obj_ID && w->Oid_ID == w_Oid_ID && w->Rel_ID == w_Rel_ID && w->OIR_ID == w_OIR_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE R_RTO TO O_OIDA ACROSS R110 USING O_RTIDA
 */
void
ooaofooa_O_RTIDA_R110_Link( ooaofooa_R_RTO * aone, ooaofooa_O_OIDA * aoth, ooaofooa_O_RTIDA * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->Oid_ID = aone->Oid_ID;
  assr->OIR_ID = aone->OIR_ID;
  assr->Obj_ID = aone->Obj_ID;
  assr->Rel_ID = aone->Rel_ID;
  assr->Attr_ID = aoth->Attr_ID;
  assr->Oid_ID = aoth->Oid_ID;
  assr->Obj_ID = aoth->Obj_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->R_RTO_R110_identifies_for_this_association = aone;
  assr->O_OIDA_R110_is_identified_in_this_association_by = aoth;
  Escher_SetInsertElement( &aone->O_RTIDA_R110, assr );
  Escher_SetInsertElement( &aoth->O_RTIDA_R110, assr );
}

/*
 * UNRELATE R_RTO FROM O_OIDA ACROSS R110 USING O_RTIDA
 */
void
ooaofooa_O_RTIDA_R110_Unlink( ooaofooa_R_RTO * aone, ooaofooa_O_OIDA * aoth, ooaofooa_O_RTIDA * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->R_RTO_R110_identifies_for_this_association = 0;
  assr->O_OIDA_R110_is_identified_in_this_association_by = 0;
  Escher_SetRemoveElement( &aone->O_RTIDA_R110, assr );
  Escher_SetRemoveElement( &aoth->O_RTIDA_R110, assr );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_O_RTIDA_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_O_RTIDA * self = (ooaofooa_O_RTIDA *) instance;
  printf( "INSERT INTO O_RTIDA VALUES ( %ld,%ld,%d,%ld,%ld );\n",
    ((long)self->Attr_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK),
    self->Oid_ID,
    ((long)self->Rel_ID & ESCHER_IDDUMP_MASK),
    ((long)self->OIR_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_O_RTIDA_container[ ooaofooa_O_RTIDA_MAX_EXTENT_SIZE ];
static ooaofooa_O_RTIDA ooaofooa_O_RTIDA_instances[ ooaofooa_O_RTIDA_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_O_RTIDA_extent = {
  {0,0}, {0,0}, &ooaofooa_O_RTIDA_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_O_RTIDA_instances,
  sizeof( ooaofooa_O_RTIDA ), 0, ooaofooa_O_RTIDA_MAX_EXTENT_SIZE
  };


