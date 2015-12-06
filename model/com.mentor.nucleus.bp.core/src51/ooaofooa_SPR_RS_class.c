/*----------------------------------------------------------------------------
 * File:  ooaofooa_SPR_RS_class.c
 *
 * Class:       Required Signal  (SPR_RS)
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
ooaofooa_SPR_RS_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SPR_RS * self = (ooaofooa_SPR_RS *) instance;
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
void ooaofooa_SPR_RS_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SPR_RS * ooaofooa_SPR_RS_instance = (ooaofooa_SPR_RS *) instance;
  ooaofooa_SPR_REP * ooaofooa_SPR_REPrelated_instance1 = (ooaofooa_SPR_REP *) Escher_instance_cache[ (intptr_t) ooaofooa_SPR_RS_instance->Id ];
  if ( ooaofooa_SPR_REPrelated_instance1 ) {
    ooaofooa_SPR_RS_R4502_Link( ooaofooa_SPR_REPrelated_instance1, ooaofooa_SPR_RS_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SPR_RS *
ooaofooa_SPR_RS_AnyWhere1( Escher_UniqueID_t w_Id )
{
  ooaofooa_SPR_RS * w; 
  Escher_Iterator_s iter_SPR_RS;
  Escher_IteratorReset( &iter_SPR_RS, &pG_ooaofooa_SPR_RS_extent.active );
  while ( (w = (ooaofooa_SPR_RS *) Escher_IteratorNext( &iter_SPR_RS )) != 0 ) {
    if ( w->Id == w_Id ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SPR_REP TO SPR_RS ACROSS R4502
 */
void
ooaofooa_SPR_RS_R4502_Link( ooaofooa_SPR_REP * supertype, ooaofooa_SPR_RS * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Id = supertype->Id;
  /* Optimized linkage for SPR_RS->SPR_REP[R4502] */
  subtype->SPR_REP_R4502 = supertype;
  /* Optimized linkage for SPR_REP->SPR_RS[R4502] */
  supertype->R4502_subtype = subtype;
  supertype->R4502_object_id = ooaofooa_SPR_RS_CLASS_NUMBER;
}


/*
 * UNRELATE SPR_REP FROM SPR_RS ACROSS R4502
 */
void
ooaofooa_SPR_RS_R4502_Unlink( ooaofooa_SPR_REP * supertype, ooaofooa_SPR_RS * subtype )
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
ooaofooa_SPR_RS_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SPR_RS * self = (ooaofooa_SPR_RS *) instance;
  printf( "INSERT INTO SPR_RS VALUES ( %ld,'%s','%s','%s',%d );\n",
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
static Escher_SetElement_s ooaofooa_SPR_RS_container[ ooaofooa_SPR_RS_MAX_EXTENT_SIZE ];
static ooaofooa_SPR_RS ooaofooa_SPR_RS_instances[ ooaofooa_SPR_RS_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SPR_RS_extent = {
  {0,0}, {0,0}, &ooaofooa_SPR_RS_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SPR_RS_instances,
  sizeof( ooaofooa_SPR_RS ), 0, ooaofooa_SPR_RS_MAX_EXTENT_SIZE
  };


