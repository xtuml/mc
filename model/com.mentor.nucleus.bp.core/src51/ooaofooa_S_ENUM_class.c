/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_ENUM_class.c
 *
 * Class:       Enumerator  (S_ENUM)
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
ooaofooa_S_ENUM_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_ENUM * self = (ooaofooa_S_ENUM *) instance;
  /* Initialize application analysis class attributes.  */
  self->Enum_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Enum_ID;
  self->Name = Escher_strcpy( self->Name, avlstring[ 2 ] );
  {i_t i = avlstring[ 3 + 1 ] - avlstring[ 3 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 3 ][ i ]; }
  }
  self->EDT_DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->Previous_Enum_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_S_ENUM_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_ENUM * ooaofooa_S_ENUM_instance = (ooaofooa_S_ENUM *) instance;
  ooaofooa_S_EDT * ooaofooa_S_EDTrelated_instance1 = ooaofooa_S_EDT_AnyWhere1( ooaofooa_S_ENUM_instance->EDT_DT_ID );
  if ( ooaofooa_S_EDTrelated_instance1 ) {
    ooaofooa_S_ENUM_R27_Link_defines( ooaofooa_S_EDTrelated_instance1, ooaofooa_S_ENUM_instance );
  }
  {
  ooaofooa_S_ENUM * ooaofooa_S_ENUMrelated_instance1 = (ooaofooa_S_ENUM *) Escher_instance_cache[ (intptr_t) ooaofooa_S_ENUM_instance->Previous_Enum_ID ];
  if ( ooaofooa_S_ENUMrelated_instance1 ) {
    ooaofooa_S_ENUM_R56_Link_precedes( ooaofooa_S_ENUMrelated_instance1, ooaofooa_S_ENUM_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_S_ENUM *
ooaofooa_S_ENUM_AnyWhere1( Escher_UniqueID_t w_Enum_ID )
{
  ooaofooa_S_ENUM * w; 
  Escher_Iterator_s iter_S_ENUM;
  Escher_IteratorReset( &iter_S_ENUM, &pG_ooaofooa_S_ENUM_extent.active );
  while ( (w = (ooaofooa_S_ENUM *) Escher_IteratorNext( &iter_S_ENUM )) != 0 ) {
    if ( w->Enum_ID == w_Enum_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_EDT TO S_ENUM ACROSS R27
 */
void
ooaofooa_S_ENUM_R27_Link_defines( ooaofooa_S_EDT * part, ooaofooa_S_ENUM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->EDT_DT_ID = part->DT_ID;
  form->S_EDT_R27_is_defined_by = part;
  Escher_SetInsertElement( &part->S_ENUM_R27_defines, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_EDT FROM S_ENUM ACROSS R27
 */
void
ooaofooa_S_ENUM_R27_Unlink_defines( ooaofooa_S_EDT * part, ooaofooa_S_ENUM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->EDT_DT_ID = 0;
  form->S_EDT_R27_is_defined_by = 0;
  Escher_SetRemoveElement( &part->S_ENUM_R27_defines, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE <left> S_ENUM TO <right> S_ENUM ACROSS R56.'succeeds'
 */
void
ooaofooa_S_ENUM_R56_Link_succeeds( ooaofooa_S_ENUM * left, ooaofooa_S_ENUM * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Previous_Enum_ID = right->Enum_ID;
  left->S_ENUM_R56_succeeds = right; /* SR L1 */
  right->S_ENUM_R56_precedes = left; /* SR L2 */
}

/*
 * UNRELATE <left> S_ENUM FROM <right> S_ENUM ACROSS R56.'succeeds'
 */
void
ooaofooa_S_ENUM_R56_Unlink_succeeds( ooaofooa_S_ENUM * left, ooaofooa_S_ENUM * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Previous_Enum_ID = 0;
  left->S_ENUM_R56_succeeds = 0; /* SR U1 */
  right->S_ENUM_R56_precedes = 0; /* SR U2 */
}

/*
 * RELATE <left> S_ENUM TO <right> S_ENUM ACROSS R56.'precedes'
 */
void
ooaofooa_S_ENUM_R56_Link_precedes( ooaofooa_S_ENUM * left, ooaofooa_S_ENUM * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Previous_Enum_ID = left->Enum_ID;
  right->S_ENUM_R56_succeeds = left; /* SR L4 */
  left->S_ENUM_R56_precedes = right; /* SR L5 */
}

/*
 * UNRELATE <left> S_ENUM FROM <right> S_ENUM ACROSS R56.'precedes'
 */
void
ooaofooa_S_ENUM_R56_Unlink_precedes( ooaofooa_S_ENUM * left, ooaofooa_S_ENUM * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Previous_Enum_ID = 0;
  right->S_ENUM_R56_succeeds = 0; /* SR U4 */
  left->S_ENUM_R56_precedes = 0; /* SR U5 */
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_S_ENUM_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_ENUM * self = (ooaofooa_S_ENUM *) instance;
  printf( "INSERT INTO S_ENUM VALUES ( %ld,'%s','%s',%ld,%ld );\n",
    ((long)self->Enum_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Name ) ? self->Name : "",
    ( 0 != self->Descrip ) ? self->Descrip : "",
    ((long)self->EDT_DT_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Previous_Enum_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_ENUM_container[ ooaofooa_S_ENUM_MAX_EXTENT_SIZE ];
static ooaofooa_S_ENUM ooaofooa_S_ENUM_instances[ ooaofooa_S_ENUM_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_ENUM_extent = {
  {0,0}, {0,0}, &ooaofooa_S_ENUM_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_ENUM_instances,
  sizeof( ooaofooa_S_ENUM ), 0, ooaofooa_S_ENUM_MAX_EXTENT_SIZE
  };


