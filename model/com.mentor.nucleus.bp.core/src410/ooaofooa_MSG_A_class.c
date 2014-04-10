/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_A_class.c
 *
 * Class:       Message Argument  (MSG_A)
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
ooaofooa_MSG_A_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_MSG_A * self = (ooaofooa_MSG_A *) instance;
  /* Initialize application analysis class attributes.  */
  self->Arg_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Arg_ID;
  self->Informal_Msg_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Formal_Msg_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  Escher_strcpy( self->Label, avlstring[ 4 ] );
  Escher_strcpy( self->Value, avlstring[ 5 ] );
  Escher_strcpy( self->InformalName, avlstring[ 6 ] );
  {i_t i = avlstring[ 7 + 1 ] - avlstring[ 7 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 7 ][ i ]; }
  }
  self->isFormal = ( '0' != *avlstring[ 8 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_MSG_A_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_MSG_A * ooaofooa_MSG_A_instance = (ooaofooa_MSG_A *) instance;
  ooaofooa_MSG_M * ooaofooa_MSG_Mrelated_instance1 = ooaofooa_MSG_M_AnyWhere1( ooaofooa_MSG_A_instance->Informal_Msg_ID );
  if ( ooaofooa_MSG_Mrelated_instance1 ) {
    ooaofooa_MSG_A_R1000_Link_has_an_informal( ooaofooa_MSG_Mrelated_instance1, ooaofooa_MSG_A_instance );
  }
  {
  ooaofooa_MSG_M * ooaofooa_MSG_Mrelated_instance1 = ooaofooa_MSG_M_AnyWhere1( ooaofooa_MSG_A_instance->Formal_Msg_ID );
  if ( ooaofooa_MSG_Mrelated_instance1 ) {
    ooaofooa_MSG_A_R1001_Link_has_a_formal( ooaofooa_MSG_Mrelated_instance1, ooaofooa_MSG_A_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_MSG_A *
ooaofooa_MSG_A_AnyWhere1( Escher_UniqueID_t w_Arg_ID )
{
  ooaofooa_MSG_A * w; 
  Escher_Iterator_s iter_MSG_A;
  Escher_IteratorReset( &iter_MSG_A, &pG_ooaofooa_MSG_A_extent.active );
  while ( (w = (ooaofooa_MSG_A *) Escher_IteratorNext( &iter_MSG_A )) != 0 ) {
    if ( w->Arg_ID == w_Arg_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE MSG_M TO MSG_A ACROSS R1000
 */
void
ooaofooa_MSG_A_R1000_Link_has_an_informal( ooaofooa_MSG_M * part, ooaofooa_MSG_A * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Informal_Msg_ID = part->Msg_ID;
  form->MSG_M_R1000_belongs_to_informal = part;
  Escher_SetInsertElement( &part->MSG_A_R1000_has_an_informal, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE MSG_M FROM MSG_A ACROSS R1000
 */
void
ooaofooa_MSG_A_R1000_Unlink_has_an_informal( ooaofooa_MSG_M * part, ooaofooa_MSG_A * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Informal_Msg_ID = 0;
  form->MSG_M_R1000_belongs_to_informal = 0;
  Escher_SetRemoveElement( &part->MSG_A_R1000_has_an_informal, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE MSG_M TO MSG_A ACROSS R1001
 */
void
ooaofooa_MSG_A_R1001_Link_has_a_formal( ooaofooa_MSG_M * part, ooaofooa_MSG_A * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Formal_Msg_ID = part->Msg_ID;
  form->MSG_M_R1001_belongs_to_formal = part;
  Escher_SetInsertElement( &part->MSG_A_R1001_has_a_formal, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE MSG_M FROM MSG_A ACROSS R1001
 */
void
ooaofooa_MSG_A_R1001_Unlink_has_a_formal( ooaofooa_MSG_M * part, ooaofooa_MSG_A * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Formal_Msg_ID = 0;
  form->MSG_M_R1001_belongs_to_formal = 0;
  Escher_SetRemoveElement( &part->MSG_A_R1001_has_a_formal, (Escher_ObjectSet_s *) form );
}

/* Accessors to MSG_A[R1013] subtypes */


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_MSG_A_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_MSG_A * self = (ooaofooa_MSG_A *) instance;
  printf( "INSERT INTO MSG_A VALUES ( %ld,%ld,%ld,'%s','%s','%s','%s',%d );\n",
    ((long)self->Arg_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Informal_Msg_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Formal_Msg_ID & ESCHER_IDDUMP_MASK),
    self->Label,
    self->Value,
    self->InformalName,
    self->Descrip,
    self->isFormal );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_MSG_A_container[ ooaofooa_MSG_A_MAX_EXTENT_SIZE ];
static ooaofooa_MSG_A ooaofooa_MSG_A_instances[ ooaofooa_MSG_A_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_MSG_A_extent = {
  {0,0}, {0,0}, &ooaofooa_MSG_A_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_MSG_A_instances,
  sizeof( ooaofooa_MSG_A ), 0, ooaofooa_MSG_A_MAX_EXTENT_SIZE
  };


