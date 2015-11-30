/*----------------------------------------------------------------------------
 * File:  ooaofooa_C_AS_class.c
 *
 * Class:       Interface Signal  (C_AS)
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
ooaofooa_C_AS_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_C_AS * self = (ooaofooa_C_AS *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  Escher_strcpy( self->Name, avlstring[ 2 ] );
  {i_t i = avlstring[ 3 + 1 ] - avlstring[ 3 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 3 ][ i ]; }
  }
  self->Direction = Escher_atoi( avlstring[ 4 ] );
  self->Previous_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_C_AS_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_C_AS * ooaofooa_C_AS_instance = (ooaofooa_C_AS *) instance;
  ooaofooa_C_EP * ooaofooa_C_EPrelated_instance1 = (ooaofooa_C_EP *) Escher_instance_cache[ (intptr_t) ooaofooa_C_AS_instance->Id ];
  if ( ooaofooa_C_EPrelated_instance1 ) {
    ooaofooa_C_AS_R4004_Link( ooaofooa_C_EPrelated_instance1, ooaofooa_C_AS_instance );
  }
  {
  ooaofooa_C_AS * ooaofooa_C_ASrelated_instance1 = ooaofooa_C_AS_AnyWhere1( ooaofooa_C_AS_instance->Previous_Id );
  if ( ooaofooa_C_ASrelated_instance1 ) {
    ooaofooa_C_AS_R4020_Link_succeeds( ooaofooa_C_ASrelated_instance1, ooaofooa_C_AS_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_C_AS *
ooaofooa_C_AS_AnyWhere1( Escher_UniqueID_t w_Id )
{
  ooaofooa_C_AS * w; 
  Escher_Iterator_s iter_C_AS;
  Escher_IteratorReset( &iter_C_AS, &pG_ooaofooa_C_AS_extent.active );
  while ( (w = (ooaofooa_C_AS *) Escher_IteratorNext( &iter_C_AS )) != 0 ) {
    if ( w->Id == w_Id ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE C_EP TO C_AS ACROSS R4004
 */
void
ooaofooa_C_AS_R4004_Link( ooaofooa_C_EP * supertype, ooaofooa_C_AS * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Id = supertype->Id;
  /* Optimized linkage for C_AS->C_EP[R4004] */
  subtype->C_EP_R4004 = supertype;
  /* Optimized linkage for C_EP->C_AS[R4004] */
  supertype->R4004_subtype = subtype;
  supertype->R4004_object_id = ooaofooa_C_AS_CLASS_NUMBER;
}


/*
 * UNRELATE C_EP FROM C_AS ACROSS R4004
 */
void
ooaofooa_C_AS_R4004_Unlink( ooaofooa_C_EP * supertype, ooaofooa_C_AS * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->C_EP_R4004 = 0;
  supertype->R4004_subtype = 0;
  supertype->R4004_object_id = 0;
}


/*
 * RELATE <left> C_AS TO <right> C_AS ACROSS R4020.'succeeds'
 */
void
ooaofooa_C_AS_R4020_Link_succeeds( ooaofooa_C_AS * left, ooaofooa_C_AS * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Previous_Id = left->Id;
  left->C_AS_R4020_succeeds = right; /* SR L1 */
  right->C_AS_R4020_precedes = left; /* SR L2 */
}

/*
 * UNRELATE <left> C_AS FROM <right> C_AS ACROSS R4020.'succeeds'
 */
void
ooaofooa_C_AS_R4020_Unlink_succeeds( ooaofooa_C_AS * left, ooaofooa_C_AS * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Previous_Id = 0;
  left->C_AS_R4020_succeeds = 0; /* SR U1 */
  right->C_AS_R4020_precedes = 0; /* SR U2 */
}

/*
 * RELATE <left> C_AS TO <right> C_AS ACROSS R4020.'precedes'
 */
void
ooaofooa_C_AS_R4020_Link_precedes( ooaofooa_C_AS * left, ooaofooa_C_AS * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Previous_Id = right->Id;
  right->C_AS_R4020_succeeds = left; /* SR L4 */
  left->C_AS_R4020_precedes = right; /* SR L5 */
}

/*
 * UNRELATE <left> C_AS FROM <right> C_AS ACROSS R4020.'precedes'
 */
void
ooaofooa_C_AS_R4020_Unlink_precedes( ooaofooa_C_AS * left, ooaofooa_C_AS * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Previous_Id = 0;
  right->C_AS_R4020_succeeds = 0; /* SR U4 */
  left->C_AS_R4020_precedes = 0; /* SR U5 */
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_C_AS_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_C_AS * self = (ooaofooa_C_AS *) instance;
  printf( "INSERT INTO C_AS VALUES ( %ld,'%s','%s',%d,%ld );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    self->Name,
    self->Descrip,
    self->Direction,
    ((long)self->Previous_Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_C_AS_container[ ooaofooa_C_AS_MAX_EXTENT_SIZE ];
static ooaofooa_C_AS ooaofooa_C_AS_instances[ ooaofooa_C_AS_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_C_AS_extent = {
  {0,0}, {0,0}, &ooaofooa_C_AS_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_C_AS_instances,
  sizeof( ooaofooa_C_AS ), 0, ooaofooa_C_AS_MAX_EXTENT_SIZE
  };


