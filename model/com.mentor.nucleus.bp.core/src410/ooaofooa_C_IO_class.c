/*----------------------------------------------------------------------------
 * File:  ooaofooa_C_IO_class.c
 *
 * Class:       Interface Operation  (C_IO)
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
ooaofooa_C_IO_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_C_IO * self = (ooaofooa_C_IO *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  Escher_strcpy( self->Name, avlstring[ 3 ] );
  {i_t i = avlstring[ 4 + 1 ] - avlstring[ 4 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 4 ][ i ]; }
  }
  self->Direction = Escher_atoi( avlstring[ 5 ] );
  Escher_strcpy( self->Return_Dimensions, avlstring[ 6 ] );
  self->Previous_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_C_IO_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_C_IO * ooaofooa_C_IO_instance = (ooaofooa_C_IO *) instance;
  ooaofooa_S_DT * ooaofooa_S_DTrelated_instance1 = ooaofooa_S_DT_AnyWhere1( ooaofooa_C_IO_instance->DT_ID );
  if ( ooaofooa_S_DTrelated_instance1 ) {
    ooaofooa_C_IO_R4008_Link_defines_return_type( ooaofooa_S_DTrelated_instance1, ooaofooa_C_IO_instance );
  }
  {
  ooaofooa_C_EP * ooaofooa_C_EPrelated_instance1 = (ooaofooa_C_EP *) Escher_instance_cache[ (intptr_t) ooaofooa_C_IO_instance->Id ];
  if ( ooaofooa_C_EPrelated_instance1 ) {
    ooaofooa_C_IO_R4004_Link( ooaofooa_C_EPrelated_instance1, ooaofooa_C_IO_instance );
  }
  }
  {
  ooaofooa_C_IO * ooaofooa_C_IOrelated_instance1 = ooaofooa_C_IO_AnyWhere1( ooaofooa_C_IO_instance->Previous_Id );
  if ( ooaofooa_C_IOrelated_instance1 ) {
    ooaofooa_C_IO_R4019_Link_succeeds( ooaofooa_C_IOrelated_instance1, ooaofooa_C_IO_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_C_IO *
ooaofooa_C_IO_AnyWhere1( Escher_UniqueID_t w_Id )
{
  ooaofooa_C_IO * w; 
  Escher_Iterator_s iter_C_IO;
  Escher_IteratorReset( &iter_C_IO, &pG_ooaofooa_C_IO_extent.active );
  while ( (w = (ooaofooa_C_IO *) Escher_IteratorNext( &iter_C_IO )) != 0 ) {
    if ( w->Id == w_Id ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE C_EP TO C_IO ACROSS R4004
 */
void
ooaofooa_C_IO_R4004_Link( ooaofooa_C_EP * supertype, ooaofooa_C_IO * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Id = supertype->Id;
  /* Optimized linkage for C_IO->C_EP[R4004] */
  subtype->C_EP_R4004 = supertype;
  /* Optimized linkage for C_EP->C_IO[R4004] */
  supertype->R4004_subtype = subtype;
  supertype->R4004_object_id = ooaofooa_C_IO_CLASS_NUMBER;
}


/*
 * UNRELATE C_EP FROM C_IO ACROSS R4004
 */
void
ooaofooa_C_IO_R4004_Unlink( ooaofooa_C_EP * supertype, ooaofooa_C_IO * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->C_EP_R4004 = 0;
  supertype->R4004_subtype = 0;
  supertype->R4004_object_id = 0;
}


/*
 * RELATE S_DT TO C_IO ACROSS R4008
 */
void
ooaofooa_C_IO_R4008_Link_defines_return_type( ooaofooa_S_DT * part, ooaofooa_C_IO * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = part->DT_ID;
  form->S_DT_R4008_has_return_defined_by = part;
  Escher_SetInsertElement( &part->C_IO_R4008_defines_return_type, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_DT FROM C_IO ACROSS R4008
 */
void
ooaofooa_C_IO_R4008_Unlink_defines_return_type( ooaofooa_S_DT * part, ooaofooa_C_IO * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = 0;
  form->S_DT_R4008_has_return_defined_by = 0;
  Escher_SetRemoveElement( &part->C_IO_R4008_defines_return_type, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE <left> C_IO TO <right> C_IO ACROSS R4019.'succeeds'
 */
void
ooaofooa_C_IO_R4019_Link_succeeds( ooaofooa_C_IO * left, ooaofooa_C_IO * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Previous_Id = left->Id;
  left->C_IO_R4019_succeeds = right; /* SR L1 */
  right->C_IO_R4019_precedes = left; /* SR L2 */
}

/*
 * UNRELATE <left> C_IO FROM <right> C_IO ACROSS R4019.'succeeds'
 */
void
ooaofooa_C_IO_R4019_Unlink_succeeds( ooaofooa_C_IO * left, ooaofooa_C_IO * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Previous_Id = 0;
  left->C_IO_R4019_succeeds = 0; /* SR U1 */
  right->C_IO_R4019_precedes = 0; /* SR U2 */
}

/*
 * RELATE <left> C_IO TO <right> C_IO ACROSS R4019.'precedes'
 */
void
ooaofooa_C_IO_R4019_Link_precedes( ooaofooa_C_IO * left, ooaofooa_C_IO * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Previous_Id = right->Id;
  right->C_IO_R4019_succeeds = left; /* SR L4 */
  left->C_IO_R4019_precedes = right; /* SR L5 */
}

/*
 * UNRELATE <left> C_IO FROM <right> C_IO ACROSS R4019.'precedes'
 */
void
ooaofooa_C_IO_R4019_Unlink_precedes( ooaofooa_C_IO * left, ooaofooa_C_IO * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Previous_Id = 0;
  right->C_IO_R4019_succeeds = 0; /* SR U4 */
  left->C_IO_R4019_precedes = 0; /* SR U5 */
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_C_IO_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_C_IO * self = (ooaofooa_C_IO *) instance;
  printf( "INSERT INTO C_IO VALUES ( %ld,%ld,'%s','%s',%d,'%s',%ld );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    ((long)self->DT_ID & ESCHER_IDDUMP_MASK),
    self->Name,
    self->Descrip,
    self->Direction,
    self->Return_Dimensions,
    ((long)self->Previous_Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_C_IO_container[ ooaofooa_C_IO_MAX_EXTENT_SIZE ];
static ooaofooa_C_IO ooaofooa_C_IO_instances[ ooaofooa_C_IO_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_C_IO_extent = {
  {0,0}, {0,0}, &ooaofooa_C_IO_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_C_IO_instances,
  sizeof( ooaofooa_C_IO ), 0, ooaofooa_C_IO_MAX_EXTENT_SIZE
  };


