/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_EE_class.c
 *
 * Class:       Extended External Entity  (TE_EE)
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
ooaofooa_TE_EE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_EE * self = (ooaofooa_TE_EE *) instance;
  /* Initialize application analysis class attributes.  */
  self->Name = Escher_strcpy( self->Name, avlstring[ 1 ] );
  self->RegisteredName = Escher_strcpy( self->RegisteredName, avlstring[ 2 ] );
  self->Key_Lett = Escher_strcpy( self->Key_Lett, avlstring[ 3 ] );
  {i_t i = avlstring[ 4 + 1 ] - avlstring[ 4 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 4 ][ i ]; }
  }
  self->Included = ( '0' != *avlstring[ 5 ] );
  self->file = Escher_strcpy( self->file, avlstring[ 6 ] );
  self->Include_File = Escher_strcpy( self->Include_File, avlstring[ 7 ] );
  self->Used = ( '0' != *avlstring[ 8 ] );
  self->te_cID = (Escher_iHandle_t) Escher_atoi( avlstring[ 9 ] );
  self->EE_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 10 ] );
  self->ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 11 ] );
  self->nextID = (Escher_iHandle_t) Escher_atoi( avlstring[ 12 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_EE_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_EE * ooaofooa_TE_EE_instance = (ooaofooa_TE_EE *) instance;
  ooaofooa_TE_C * ooaofooa_TE_Crelated_instance1 = (ooaofooa_TE_C *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_EE_instance->te_cID ];
  if ( ooaofooa_TE_Crelated_instance1 ) {
    ooaofooa_TE_EE_R2085_Link( ooaofooa_TE_Crelated_instance1, ooaofooa_TE_EE_instance );
  }
  {
  ooaofooa_S_EE * ooaofooa_S_EErelated_instance1 = ooaofooa_S_EE_AnyWhere1( ooaofooa_TE_EE_instance->EE_ID );
  if ( ooaofooa_S_EErelated_instance1 ) {
    ooaofooa_TE_EE_R2020_Link( ooaofooa_S_EErelated_instance1, ooaofooa_TE_EE_instance );
  }
  }
  {
  ooaofooa_TE_EE * ooaofooa_TE_EErelated_instance1 = ooaofooa_TE_EE_AnyWhere2( ooaofooa_TE_EE_instance->nextID );
  if ( ooaofooa_TE_EErelated_instance1 ) {
    ooaofooa_TE_EE_R2096_Link_succeeds( ooaofooa_TE_EErelated_instance1, ooaofooa_TE_EE_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_TE_EE *
ooaofooa_TE_EE_AnyWhere1( Escher_UniqueID_t w_EE_ID )
{
  ooaofooa_TE_EE * w; 
  Escher_Iterator_s iter_TE_EE;
  Escher_IteratorReset( &iter_TE_EE, &pG_ooaofooa_TE_EE_extent.active );
  while ( (w = (ooaofooa_TE_EE *) Escher_IteratorNext( &iter_TE_EE )) != 0 ) {
    if ( w->EE_ID == w_EE_ID ) {
      return w;
    }
  }
  return 0;
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_TE_EE *
ooaofooa_TE_EE_AnyWhere2( Escher_UniqueID_t w_ID )
{
  ooaofooa_TE_EE * w; 
  Escher_Iterator_s iter_TE_EE;
  Escher_IteratorReset( &iter_TE_EE, &pG_ooaofooa_TE_EE_extent.active );
  while ( (w = (ooaofooa_TE_EE *) Escher_IteratorNext( &iter_TE_EE )) != 0 ) {
    if ( w->ID == w_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_EE TO TE_EE ACROSS R2020
 */
void
ooaofooa_TE_EE_R2020_Link( ooaofooa_S_EE * part, ooaofooa_TE_EE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->EE_ID = part->EE_ID;
  form->S_EE_R2020 = part;
  part->TE_EE_R2020 = form;
}

/*
 * UNRELATE S_EE FROM TE_EE ACROSS R2020
 */
void
ooaofooa_TE_EE_R2020_Unlink( ooaofooa_S_EE * part, ooaofooa_TE_EE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->S_EE_R2020 = 0;
  part->TE_EE_R2020 = 0;
}

/*
 * RELATE TE_C TO TE_EE ACROSS R2085
 */
void
ooaofooa_TE_EE_R2085_Link( ooaofooa_TE_C * part, ooaofooa_TE_EE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_cID = part->ID;
  form->TE_C_R2085 = part;
  Escher_SetInsertElement( &part->TE_EE_R2085, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE TE_C FROM TE_EE ACROSS R2085
 */
void
ooaofooa_TE_EE_R2085_Unlink( ooaofooa_TE_C * part, ooaofooa_TE_EE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_cID = 0;
  form->TE_C_R2085 = 0;
  Escher_SetRemoveElement( &part->TE_EE_R2085, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE <left> TE_EE TO <right> TE_EE ACROSS R2096.'precedes'
 */
void
ooaofooa_TE_EE_R2096_Link_precedes( ooaofooa_TE_EE * left, ooaofooa_TE_EE * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->nextID = right->ID;
  left->TE_EE_R2096_precedes = right; /* SR L1 */
  right->TE_EE_R2096_succeeds = left; /* SR L2 */
}

/*
 * UNRELATE <left> TE_EE FROM <right> TE_EE ACROSS R2096.'precedes'
 */
void
ooaofooa_TE_EE_R2096_Unlink_precedes( ooaofooa_TE_EE * left, ooaofooa_TE_EE * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->nextID = 0;
  left->TE_EE_R2096_precedes = 0; /* SR U1 */
  right->TE_EE_R2096_succeeds = 0; /* SR U2 */
}

/*
 * RELATE <left> TE_EE TO <right> TE_EE ACROSS R2096.'succeeds'
 */
void
ooaofooa_TE_EE_R2096_Link_succeeds( ooaofooa_TE_EE * left, ooaofooa_TE_EE * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->nextID = left->ID;
  right->TE_EE_R2096_precedes = left; /* SR L4 */
  left->TE_EE_R2096_succeeds = right; /* SR L5 */
}

/*
 * UNRELATE <left> TE_EE FROM <right> TE_EE ACROSS R2096.'succeeds'
 */
void
ooaofooa_TE_EE_R2096_Unlink_succeeds( ooaofooa_TE_EE * left, ooaofooa_TE_EE * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->nextID = 0;
  right->TE_EE_R2096_precedes = 0; /* SR U4 */
  left->TE_EE_R2096_succeeds = 0; /* SR U5 */
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_EE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_EE * self = (ooaofooa_TE_EE *) instance;
  printf( "INSERT INTO TE_EE VALUES ( '%s','%s','%s','%s',%d,'%s','%s',%d,%ld,%ld,%ld,%ld );\n",
    ( 0 != self->Name ) ? self->Name : "",
    ( 0 != self->RegisteredName ) ? self->RegisteredName : "",
    ( 0 != self->Key_Lett ) ? self->Key_Lett : "",
    ( 0 != self->Descrip ) ? self->Descrip : "",
    self->Included,
    ( 0 != self->file ) ? self->file : "",
    ( 0 != self->Include_File ) ? self->Include_File : "",
    self->Used,
    ((long)self->te_cID & ESCHER_IDDUMP_MASK),
    ((long)self->EE_ID & ESCHER_IDDUMP_MASK),
    ((long)self->ID & ESCHER_IDDUMP_MASK),
    ((long)self->nextID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_EE_container[ ooaofooa_TE_EE_MAX_EXTENT_SIZE ];
static ooaofooa_TE_EE ooaofooa_TE_EE_instances[ ooaofooa_TE_EE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_EE_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_EE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_EE_instances,
  sizeof( ooaofooa_TE_EE ), 0, ooaofooa_TE_EE_MAX_EXTENT_SIZE
  };


