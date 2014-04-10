/*----------------------------------------------------------------------------
 * File:  ooaofooa_EP_SPKG_class.c
 *
 * Class:       Specification Package  (EP_SPKG)
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
ooaofooa_EP_SPKG_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_EP_SPKG * self = (ooaofooa_EP_SPKG *) instance;
  /* Initialize application analysis class attributes.  */
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Package_ID;
  self->Container_Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_EP_SPKG_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_EP_SPKG * ooaofooa_EP_SPKG_instance = (ooaofooa_EP_SPKG *) instance;
  ooaofooa_EP_PKG * ooaofooa_EP_PKGrelated_instance1 = ooaofooa_EP_PKG_AnyWhere1( ooaofooa_EP_SPKG_instance->Container_Package_ID );
  if ( ooaofooa_EP_PKGrelated_instance1 ) {
    ooaofooa_EP_SPKG_R1400_Link_contains( ooaofooa_EP_PKGrelated_instance1, ooaofooa_EP_SPKG_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_EP_SPKG *
ooaofooa_EP_SPKG_AnyWhere1( Escher_UniqueID_t w_Package_ID )
{
  ooaofooa_EP_SPKG * w; 
  Escher_Iterator_s iter_EP_SPKG;
  Escher_IteratorReset( &iter_EP_SPKG, &pG_ooaofooa_EP_SPKG_extent.active );
  while ( (w = (ooaofooa_EP_SPKG *) Escher_IteratorNext( &iter_EP_SPKG )) != 0 ) {
    if ( w->Package_ID == w_Package_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE EP_PKG TO EP_SPKG ACROSS R1400
 */
void
ooaofooa_EP_SPKG_R1400_Link_contains( ooaofooa_EP_PKG * part, ooaofooa_EP_SPKG * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Container_Package_ID = part->Package_ID;
  form->EP_PKG_R1400 = part;
  Escher_SetInsertElement( &part->EP_SPKG_R1400_contains, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE EP_PKG FROM EP_SPKG ACROSS R1400
 */
void
ooaofooa_EP_SPKG_R1400_Unlink_contains( ooaofooa_EP_PKG * part, ooaofooa_EP_SPKG * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Container_Package_ID = 0;
  form->EP_PKG_R1400 = 0;
  Escher_SetRemoveElement( &part->EP_SPKG_R1400_contains, (Escher_ObjectSet_s *) form );
}

/* Accessors to EP_SPKG[R1402] subtypes */


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_EP_SPKG_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_EP_SPKG * self = (ooaofooa_EP_SPKG *) instance;
  printf( "INSERT INTO EP_SPKG VALUES ( %ld,%ld );\n",
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Container_Package_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_EP_SPKG_container[ ooaofooa_EP_SPKG_MAX_EXTENT_SIZE ];
static ooaofooa_EP_SPKG ooaofooa_EP_SPKG_instances[ ooaofooa_EP_SPKG_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_EP_SPKG_extent = {
  {0,0}, {0,0}, &ooaofooa_EP_SPKG_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_EP_SPKG_instances,
  sizeof( ooaofooa_EP_SPKG ), 0, ooaofooa_EP_SPKG_MAX_EXTENT_SIZE
  };


