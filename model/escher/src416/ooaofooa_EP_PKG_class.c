/*----------------------------------------------------------------------------
 * File:  ooaofooa_EP_PKG_class.c
 *
 * Class:       Package  (EP_PKG)
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
ooaofooa_EP_PKG_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_EP_PKG * self = (ooaofooa_EP_PKG *) instance;
  /* Initialize application analysis class attributes.  */
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Sys_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Direct_Sys_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->Name = Escher_strcpy( self->Name, avlstring[ 4 ] );
  {i_t i = avlstring[ 5 + 1 ] - avlstring[ 5 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 5 ][ i ]; }
  }
  self->Num_Rng = Escher_atoi( avlstring[ 6 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_EP_PKG_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_EP_PKG * ooaofooa_EP_PKG_instance = (ooaofooa_EP_PKG *) instance;
  ooaofooa_PE_PE * ooaofooa_PE_PErelated_instance1 = (ooaofooa_PE_PE *) Escher_instance_cache[ (intptr_t) ooaofooa_EP_PKG_instance->Package_ID ];
  if ( ooaofooa_PE_PErelated_instance1 ) {
    ooaofooa_EP_PKG_R8001_Link( ooaofooa_PE_PErelated_instance1, ooaofooa_EP_PKG_instance );
  }
  {
  ooaofooa_S_SYS * ooaofooa_S_SYSrelated_instance1 = (ooaofooa_S_SYS *) Escher_instance_cache[ (intptr_t) ooaofooa_EP_PKG_instance->Sys_ID ];
  if ( ooaofooa_S_SYSrelated_instance1 ) {
    ooaofooa_EP_PKG_R1401_Link_contains( ooaofooa_S_SYSrelated_instance1, ooaofooa_EP_PKG_instance );
  }
  }
  {
  ooaofooa_S_SYS * ooaofooa_S_SYSrelated_instance1 = (ooaofooa_S_SYS *) Escher_instance_cache[ (intptr_t) ooaofooa_EP_PKG_instance->Direct_Sys_ID ];
  if ( ooaofooa_S_SYSrelated_instance1 ) {
    ooaofooa_EP_PKG_R1405_Link_contains( ooaofooa_S_SYSrelated_instance1, ooaofooa_EP_PKG_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_EP_PKG *
ooaofooa_EP_PKG_AnyWhere1( Escher_UniqueID_t w_Package_ID )
{
  ooaofooa_EP_PKG * w; 
  Escher_Iterator_s iter_EP_PKG;
  Escher_IteratorReset( &iter_EP_PKG, &pG_ooaofooa_EP_PKG_extent.active );
  while ( (w = (ooaofooa_EP_PKG *) Escher_IteratorNext( &iter_EP_PKG )) != 0 ) {
    if ( w->Package_ID == w_Package_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_SYS TO EP_PKG ACROSS R1401
 */
void
ooaofooa_EP_PKG_R1401_Link_contains( ooaofooa_S_SYS * part, ooaofooa_EP_PKG * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sys_ID = part->Sys_ID;
  form->S_SYS_R1401_directly_contained_under = part;
  Escher_SetInsertElement( &part->EP_PKG_R1401_contains, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SYS FROM EP_PKG ACROSS R1401
 */
void
ooaofooa_EP_PKG_R1401_Unlink_contains( ooaofooa_S_SYS * part, ooaofooa_EP_PKG * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sys_ID = 0;
  form->S_SYS_R1401_directly_contained_under = 0;
  Escher_SetRemoveElement( &part->EP_PKG_R1401_contains, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_SYS TO EP_PKG ACROSS R1405
 */
void
ooaofooa_EP_PKG_R1405_Link_contains( ooaofooa_S_SYS * part, ooaofooa_EP_PKG * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Direct_Sys_ID = part->Sys_ID;
  form->S_SYS_R1405 = part;
  Escher_SetInsertElement( &part->EP_PKG_R1405_contains, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SYS FROM EP_PKG ACROSS R1405
 */
void
ooaofooa_EP_PKG_R1405_Unlink_contains( ooaofooa_S_SYS * part, ooaofooa_EP_PKG * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Direct_Sys_ID = 0;
  form->S_SYS_R1405 = 0;
  Escher_SetRemoveElement( &part->EP_PKG_R1405_contains, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE PE_PE TO EP_PKG ACROSS R8001
 */
void
ooaofooa_EP_PKG_R8001_Link( ooaofooa_PE_PE * supertype, ooaofooa_EP_PKG * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Package_ID = supertype->Element_ID;
  /* Optimized linkage for EP_PKG->PE_PE[R8001] */
  subtype->PE_PE_R8001 = supertype;
  /* Optimized linkage for PE_PE->EP_PKG[R8001] */
  supertype->R8001_subtype = subtype;
  supertype->R8001_object_id = ooaofooa_EP_PKG_CLASS_NUMBER;
}


/*
 * UNRELATE PE_PE FROM EP_PKG ACROSS R8001
 */
void
ooaofooa_EP_PKG_R8001_Unlink( ooaofooa_PE_PE * supertype, ooaofooa_EP_PKG * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->PE_PE_R8001 = 0;
  supertype->R8001_subtype = 0;
  supertype->R8001_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_EP_PKG_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_EP_PKG * self = (ooaofooa_EP_PKG *) instance;
  printf( "INSERT INTO EP_PKG VALUES ( %ld,%ld,%ld,'%s','%s',%d );\n",
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Sys_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Direct_Sys_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Name ) ? self->Name : "",
    ( 0 != self->Descrip ) ? self->Descrip : "",
    self->Num_Rng );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_EP_PKG_container[ ooaofooa_EP_PKG_MAX_EXTENT_SIZE ];
static ooaofooa_EP_PKG ooaofooa_EP_PKG_instances[ ooaofooa_EP_PKG_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_EP_PKG_extent = {
  {0,0}, {0,0}, &ooaofooa_EP_PKG_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_EP_PKG_instances,
  sizeof( ooaofooa_EP_PKG ), 0, ooaofooa_EP_PKG_MAX_EXTENT_SIZE
  };


