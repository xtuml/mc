/*----------------------------------------------------------------------------
 * File:  ooaofooa_SPR_RO_class.c
 *
 * Class:       Required Operation  (SPR_RO)
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
ooaofooa_SPR_RO_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SPR_RO * self = (ooaofooa_SPR_RO *) instance;
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
void ooaofooa_SPR_RO_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SPR_RO * ooaofooa_SPR_RO_instance = (ooaofooa_SPR_RO *) instance;
  ooaofooa_SPR_REP * ooaofooa_SPR_REPrelated_instance1 = (ooaofooa_SPR_REP *) Escher_instance_cache[ (intptr_t) ooaofooa_SPR_RO_instance->Id ];
  if ( ooaofooa_SPR_REPrelated_instance1 ) {
    ooaofooa_SPR_RO_R4502_Link( ooaofooa_SPR_REPrelated_instance1, ooaofooa_SPR_RO_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SPR_RO *
ooaofooa_SPR_RO_AnyWhere1( Escher_UniqueID_t w_Id )
{
  ooaofooa_SPR_RO * w; 
  Escher_Iterator_s iter_SPR_RO;
  Escher_IteratorReset( &iter_SPR_RO, &pG_ooaofooa_SPR_RO_extent.active );
  while ( (w = (ooaofooa_SPR_RO *) Escher_IteratorNext( &iter_SPR_RO )) != 0 ) {
    if ( w->Id == w_Id ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SPR_REP TO SPR_RO ACROSS R4502
 */
void
ooaofooa_SPR_RO_R4502_Link( ooaofooa_SPR_REP * supertype, ooaofooa_SPR_RO * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Id = supertype->Id;
  /* Optimized linkage for SPR_RO->SPR_REP[R4502] */
  subtype->SPR_REP_R4502 = supertype;
  /* Optimized linkage for SPR_REP->SPR_RO[R4502] */
  supertype->R4502_subtype = subtype;
  supertype->R4502_object_id = ooaofooa_SPR_RO_CLASS_NUMBER;
}


/*
 * UNRELATE SPR_REP FROM SPR_RO ACROSS R4502
 */
void
ooaofooa_SPR_RO_R4502_Unlink( ooaofooa_SPR_REP * supertype, ooaofooa_SPR_RO * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SPR_REP_R4502 = 0;
  supertype->R4502_subtype = 0;
  supertype->R4502_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SPR_RO_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SPR_RO * self = (ooaofooa_SPR_RO *) instance;
  printf( "INSERT INTO SPR_RO VALUES ( %ld,'%s','%s','%s',%d );\n",
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
static Escher_SetElement_s ooaofooa_SPR_RO_container[ ooaofooa_SPR_RO_MAX_EXTENT_SIZE ];
static ooaofooa_SPR_RO ooaofooa_SPR_RO_instances[ ooaofooa_SPR_RO_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SPR_RO_extent = {
  {0,0}, {0,0}, &ooaofooa_SPR_RO_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SPR_RO_instances,
  sizeof( ooaofooa_SPR_RO ), 0, ooaofooa_SPR_RO_MAX_EXTENT_SIZE
  };


