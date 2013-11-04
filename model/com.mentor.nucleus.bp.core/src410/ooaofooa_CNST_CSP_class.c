/*----------------------------------------------------------------------------
 * File:  ooaofooa_CNST_CSP_class.c
 *
 * Class:       Constant Specification  (CNST_CSP)
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
ooaofooa_CNST_CSP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_CNST_CSP * self = (ooaofooa_CNST_CSP *) instance;
  /* Initialize application analysis class attributes.  */
  self->Constant_Spec_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  Escher_strcpy( self->InformalGroupName, avlstring[ 2 ] );
  {i_t i = avlstring[ 3 + 1 ] - avlstring[ 3 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 3 ][ i ]; }
  }
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_CNST_CSP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_CNST_CSP * ooaofooa_CNST_CSP_instance = (ooaofooa_CNST_CSP *) instance;
  ooaofooa_PE_PE * ooaofooa_PE_PErelated_instance1 = (ooaofooa_PE_PE *) Escher_instance_cache[ (intptr_t) ooaofooa_CNST_CSP_instance->Constant_Spec_ID ];
  if ( ooaofooa_PE_PErelated_instance1 ) {
    ooaofooa_CNST_CSP_R8001_Link( ooaofooa_PE_PErelated_instance1, ooaofooa_CNST_CSP_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_CNST_CSP *
ooaofooa_CNST_CSP_AnyWhere1( Escher_UniqueID_t w_Constant_Spec_ID )
{
  ooaofooa_CNST_CSP * w; 
  Escher_Iterator_s iter_CNST_CSP;
  Escher_IteratorReset( &iter_CNST_CSP, &pG_ooaofooa_CNST_CSP_extent.active );
  while ( (w = (ooaofooa_CNST_CSP *) Escher_IteratorNext( &iter_CNST_CSP )) != 0 ) {
    if ( w->Constant_Spec_ID == w_Constant_Spec_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE PE_PE TO CNST_CSP ACROSS R8001
 */
void
ooaofooa_CNST_CSP_R8001_Link( ooaofooa_PE_PE * supertype, ooaofooa_CNST_CSP * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Constant_Spec_ID = supertype->Element_ID;
  /* Optimized linkage for CNST_CSP->PE_PE[R8001] */
  subtype->PE_PE_R8001 = supertype;
  /* Optimized linkage for PE_PE->CNST_CSP[R8001] */
  supertype->R8001_subtype = subtype;
  supertype->R8001_object_id = ooaofooa_CNST_CSP_CLASS_NUMBER;
}


/*
 * UNRELATE PE_PE FROM CNST_CSP ACROSS R8001
 */
void
ooaofooa_CNST_CSP_R8001_Unlink( ooaofooa_PE_PE * supertype, ooaofooa_CNST_CSP * subtype )
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
ooaofooa_CNST_CSP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_CNST_CSP * self = (ooaofooa_CNST_CSP *) instance;
  printf( "INSERT INTO CNST_CSP VALUES ( %ld,'%s','%s' );\n",
    ((long)self->Constant_Spec_ID & ESCHER_IDDUMP_MASK),
    self->InformalGroupName,
    self->Descrip );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_CNST_CSP_container[ ooaofooa_CNST_CSP_MAX_EXTENT_SIZE ];
static ooaofooa_CNST_CSP ooaofooa_CNST_CSP_instances[ ooaofooa_CNST_CSP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_CNST_CSP_extent = {
  {0,0}, {0,0}, &ooaofooa_CNST_CSP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_CNST_CSP_instances,
  sizeof( ooaofooa_CNST_CSP ), 0, ooaofooa_CNST_CSP_MAX_EXTENT_SIZE
  };


