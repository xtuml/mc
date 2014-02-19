/*----------------------------------------------------------------------------
 * File:  ooaofooa_SPR_PO_class.c
 *
 * Class:       Provided Operation  (SPR_PO)
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
ooaofooa_SPR_PO_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SPR_PO * self = (ooaofooa_SPR_PO *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Name = Escher_strcpy( self->Name, avlstring[ 2 ] );
  {i_t i = avlstring[ 3 + 1 ] - avlstring[ 3 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 3 ][ i ]; }
  }
  {i_t i = avlstring[ 4 + 1 ] - avlstring[ 4 ];
  self->Action_Semantics_internal = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Action_Semantics_internal[ i ] = avlstring[ 4 ][ i ]; }
  }
  self->Suc_Pars = Escher_atoi( avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SPR_PO_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SPR_PO * ooaofooa_SPR_PO_instance = (ooaofooa_SPR_PO *) instance;
  ooaofooa_SPR_PEP * ooaofooa_SPR_PEPrelated_instance1 = (ooaofooa_SPR_PEP *) Escher_instance_cache[ (intptr_t) ooaofooa_SPR_PO_instance->Id ];
  if ( ooaofooa_SPR_PEPrelated_instance1 ) {
    ooaofooa_SPR_PO_R4503_Link( ooaofooa_SPR_PEPrelated_instance1, ooaofooa_SPR_PO_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SPR_PO *
ooaofooa_SPR_PO_AnyWhere1( Escher_UniqueID_t w_Id )
{
  ooaofooa_SPR_PO * w; 
  Escher_Iterator_s iter_SPR_PO;
  Escher_IteratorReset( &iter_SPR_PO, &pG_ooaofooa_SPR_PO_extent.active );
  while ( (w = (ooaofooa_SPR_PO *) Escher_IteratorNext( &iter_SPR_PO )) != 0 ) {
    if ( w->Id == w_Id ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SPR_PEP TO SPR_PO ACROSS R4503
 */
void
ooaofooa_SPR_PO_R4503_Link( ooaofooa_SPR_PEP * supertype, ooaofooa_SPR_PO * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Id = supertype->Id;
  /* Optimized linkage for SPR_PO->SPR_PEP[R4503] */
  subtype->SPR_PEP_R4503 = supertype;
  /* Optimized linkage for SPR_PEP->SPR_PO[R4503] */
  supertype->R4503_subtype = subtype;
  supertype->R4503_object_id = ooaofooa_SPR_PO_CLASS_NUMBER;
}


/*
 * UNRELATE SPR_PEP FROM SPR_PO ACROSS R4503
 */
void
ooaofooa_SPR_PO_R4503_Unlink( ooaofooa_SPR_PEP * supertype, ooaofooa_SPR_PO * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SPR_PEP_R4503 = 0;
  supertype->R4503_subtype = 0;
  supertype->R4503_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SPR_PO_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SPR_PO * self = (ooaofooa_SPR_PO *) instance;
  printf( "INSERT INTO SPR_PO VALUES ( %ld,'%s','%s','%s',%d );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    ( 0 != self->Name ) ? self->Name : "",
    ( 0 != self->Descrip ) ? self->Descrip : "",
    ( 0 != self->Action_Semantics_internal ) ? self->Action_Semantics_internal : "",
    self->Suc_Pars );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SPR_PO_container[ ooaofooa_SPR_PO_MAX_EXTENT_SIZE ];
static ooaofooa_SPR_PO ooaofooa_SPR_PO_instances[ ooaofooa_SPR_PO_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SPR_PO_extent = {
  {0,0}, {0,0}, &ooaofooa_SPR_PO_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SPR_PO_instances,
  sizeof( ooaofooa_SPR_PO ), 0, ooaofooa_SPR_PO_MAX_EXTENT_SIZE
  };


