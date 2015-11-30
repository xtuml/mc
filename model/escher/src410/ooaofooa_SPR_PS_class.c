/*----------------------------------------------------------------------------
 * File:  ooaofooa_SPR_PS_class.c
 *
 * Class:       Provided Signal  (SPR_PS)
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
ooaofooa_SPR_PS_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SPR_PS * self = (ooaofooa_SPR_PS *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  Escher_strcpy( self->Name, avlstring[ 2 ] );
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
void ooaofooa_SPR_PS_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SPR_PS * ooaofooa_SPR_PS_instance = (ooaofooa_SPR_PS *) instance;
  ooaofooa_SPR_PEP * ooaofooa_SPR_PEPrelated_instance1 = (ooaofooa_SPR_PEP *) Escher_instance_cache[ (intptr_t) ooaofooa_SPR_PS_instance->Id ];
  if ( ooaofooa_SPR_PEPrelated_instance1 ) {
    ooaofooa_SPR_PS_R4503_Link( ooaofooa_SPR_PEPrelated_instance1, ooaofooa_SPR_PS_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SPR_PS *
ooaofooa_SPR_PS_AnyWhere1( Escher_UniqueID_t w_Id )
{
  ooaofooa_SPR_PS * w; 
  Escher_Iterator_s iter_SPR_PS;
  Escher_IteratorReset( &iter_SPR_PS, &pG_ooaofooa_SPR_PS_extent.active );
  while ( (w = (ooaofooa_SPR_PS *) Escher_IteratorNext( &iter_SPR_PS )) != 0 ) {
    if ( w->Id == w_Id ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SPR_PEP TO SPR_PS ACROSS R4503
 */
void
ooaofooa_SPR_PS_R4503_Link( ooaofooa_SPR_PEP * supertype, ooaofooa_SPR_PS * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Id = supertype->Id;
  /* Optimized linkage for SPR_PS->SPR_PEP[R4503] */
  subtype->SPR_PEP_R4503 = supertype;
  /* Optimized linkage for SPR_PEP->SPR_PS[R4503] */
  supertype->R4503_subtype = subtype;
  supertype->R4503_object_id = ooaofooa_SPR_PS_CLASS_NUMBER;
}


/*
 * UNRELATE SPR_PEP FROM SPR_PS ACROSS R4503
 */
void
ooaofooa_SPR_PS_R4503_Unlink( ooaofooa_SPR_PEP * supertype, ooaofooa_SPR_PS * subtype )
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
ooaofooa_SPR_PS_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SPR_PS * self = (ooaofooa_SPR_PS *) instance;
  printf( "INSERT INTO SPR_PS VALUES ( %ld,'%s','%s','%s',%d );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    self->Name,
    self->Descrip,
    self->Action_Semantics_internal,
    self->Suc_Pars );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SPR_PS_container[ ooaofooa_SPR_PS_MAX_EXTENT_SIZE ];
static ooaofooa_SPR_PS ooaofooa_SPR_PS_instances[ ooaofooa_SPR_PS_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SPR_PS_extent = {
  {0,0}, {0,0}, &ooaofooa_SPR_PS_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SPR_PS_instances,
  sizeof( ooaofooa_SPR_PS ), 0, ooaofooa_SPR_PS_MAX_EXTENT_SIZE
  };


