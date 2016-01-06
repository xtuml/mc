/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_LNK_class.c
 *
 * Class:       Chain Link  (ACT_LNK)
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
ooaofooa_ACT_LNK_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_LNK * self = (ooaofooa_ACT_LNK *) instance;
  /* Initialize application analysis class attributes.  */
  self->Link_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Link_ID;
  self->Rel_Phrase = Escher_strcpy( self->Rel_Phrase, avlstring[ 2 ] );
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->Rel_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->Next_Link_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  self->Mult = Escher_atoi( avlstring[ 6 ] );
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
  self->modelClassKeyLettersLineNumber = Escher_atoi( avlstring[ 8 ] );
  self->modelClassKeyLettersColumn = Escher_atoi( avlstring[ 9 ] );
  self->associationNumberLineNumber = Escher_atoi( avlstring[ 10 ] );
  self->associationNumberColumn = Escher_atoi( avlstring[ 11 ] );
  self->phraseLineNumber = Escher_atoi( avlstring[ 12 ] );
  self->phraseColumn = Escher_atoi( avlstring[ 13 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_LNK_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_LNK * ooaofooa_ACT_LNK_instance = (ooaofooa_ACT_LNK *) instance;
  ooaofooa_O_OBJ * ooaofooa_O_OBJrelated_instance1 = ooaofooa_O_OBJ_AnyWhere1( ooaofooa_ACT_LNK_instance->Obj_ID );
  if ( ooaofooa_O_OBJrelated_instance1 ) {
    ooaofooa_ACT_LNK_R678_Link( ooaofooa_O_OBJrelated_instance1, ooaofooa_ACT_LNK_instance );
  }
  {
  ooaofooa_ACT_SEL * ooaofooa_ACT_SELrelated_instance1 = ooaofooa_ACT_SEL_AnyWhere1( ooaofooa_ACT_LNK_instance->Statement_ID );
  if ( ooaofooa_ACT_SELrelated_instance1 ) {
    ooaofooa_ACT_LNK_R637_Link_starts_with( ooaofooa_ACT_SELrelated_instance1, ooaofooa_ACT_LNK_instance );
  }
  }
  {
  ooaofooa_ACT_LNK * ooaofooa_ACT_LNKrelated_instance1 = (ooaofooa_ACT_LNK *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_LNK_instance->Next_Link_ID ];
  if ( ooaofooa_ACT_LNKrelated_instance1 ) {
    ooaofooa_ACT_LNK_R604_Link_succeeds( ooaofooa_ACT_LNKrelated_instance1, ooaofooa_ACT_LNK_instance );
  }
  }
  {
  ooaofooa_R_REL * ooaofooa_R_RELrelated_instance1 = ooaofooa_R_REL_AnyWhere1( ooaofooa_ACT_LNK_instance->Rel_ID );
  if ( ooaofooa_R_RELrelated_instance1 ) {
    ooaofooa_ACT_LNK_R681_Link( ooaofooa_R_RELrelated_instance1, ooaofooa_ACT_LNK_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_ACT_LNK *
ooaofooa_ACT_LNK_AnyWhere1( Escher_UniqueID_t w_Link_ID )
{
  ooaofooa_ACT_LNK * w; 
  Escher_Iterator_s iter_ACT_LNK;
  Escher_IteratorReset( &iter_ACT_LNK, &pG_ooaofooa_ACT_LNK_extent.active );
  while ( (w = (ooaofooa_ACT_LNK *) Escher_IteratorNext( &iter_ACT_LNK )) != 0 ) {
    if ( w->Link_ID == w_Link_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE <left> ACT_LNK TO <right> ACT_LNK ACROSS R604.'precedes'
 */
void
ooaofooa_ACT_LNK_R604_Link_precedes( ooaofooa_ACT_LNK * left, ooaofooa_ACT_LNK * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Next_Link_ID = right->Link_ID;
  left->ACT_LNK_R604_precedes = right; /* SR L1 */
  right->ACT_LNK_R604_succeeds = left; /* SR L2 */
}

/*
 * UNRELATE <left> ACT_LNK FROM <right> ACT_LNK ACROSS R604.'precedes'
 */
void
ooaofooa_ACT_LNK_R604_Unlink_precedes( ooaofooa_ACT_LNK * left, ooaofooa_ACT_LNK * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Next_Link_ID = 0;
  left->ACT_LNK_R604_precedes = 0; /* SR U1 */
  right->ACT_LNK_R604_succeeds = 0; /* SR U2 */
}

/*
 * RELATE <left> ACT_LNK TO <right> ACT_LNK ACROSS R604.'succeeds'
 */
void
ooaofooa_ACT_LNK_R604_Link_succeeds( ooaofooa_ACT_LNK * left, ooaofooa_ACT_LNK * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Next_Link_ID = left->Link_ID;
  right->ACT_LNK_R604_precedes = left; /* SR L4 */
  left->ACT_LNK_R604_succeeds = right; /* SR L5 */
}

/*
 * UNRELATE <left> ACT_LNK FROM <right> ACT_LNK ACROSS R604.'succeeds'
 */
void
ooaofooa_ACT_LNK_R604_Unlink_succeeds( ooaofooa_ACT_LNK * left, ooaofooa_ACT_LNK * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Next_Link_ID = 0;
  right->ACT_LNK_R604_precedes = 0; /* SR U4 */
  left->ACT_LNK_R604_succeeds = 0; /* SR U5 */
}

/*
 * RELATE ACT_SEL TO ACT_LNK ACROSS R637
 */
void
ooaofooa_ACT_LNK_R637_Link_starts_with( ooaofooa_ACT_SEL * part, ooaofooa_ACT_LNK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Statement_ID = part->Statement_ID;
  form->ACT_SEL_R637 = part;
  part->ACT_LNK_R637_starts_with = form;
}

/*
 * UNRELATE ACT_SEL FROM ACT_LNK ACROSS R637
 */
void
ooaofooa_ACT_LNK_R637_Unlink_starts_with( ooaofooa_ACT_SEL * part, ooaofooa_ACT_LNK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Statement_ID = 0;
  form->ACT_SEL_R637 = 0;
  part->ACT_LNK_R637_starts_with = 0;
}

/*
 * RELATE O_OBJ TO ACT_LNK ACROSS R678
 */
void
ooaofooa_ACT_LNK_R678_Link( ooaofooa_O_OBJ * part, ooaofooa_ACT_LNK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = part->Obj_ID;
  form->O_OBJ_R678_specifies_instances_of = part;
  Escher_SetInsertElement( &part->ACT_LNK_R678, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_OBJ FROM ACT_LNK ACROSS R678
 */
void
ooaofooa_ACT_LNK_R678_Unlink( ooaofooa_O_OBJ * part, ooaofooa_ACT_LNK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = 0;
  form->O_OBJ_R678_specifies_instances_of = 0;
  Escher_SetRemoveElement( &part->ACT_LNK_R678, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE R_REL TO ACT_LNK ACROSS R681
 */
void
ooaofooa_ACT_LNK_R681_Link( ooaofooa_R_REL * part, ooaofooa_ACT_LNK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Rel_ID = part->Rel_ID;
  form->R_REL_R681_specifies_traversal_of = part;
  Escher_SetInsertElement( &part->ACT_LNK_R681, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE R_REL FROM ACT_LNK ACROSS R681
 */
void
ooaofooa_ACT_LNK_R681_Unlink( ooaofooa_R_REL * part, ooaofooa_ACT_LNK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Rel_ID = 0;
  form->R_REL_R681_specifies_traversal_of = 0;
  Escher_SetRemoveElement( &part->ACT_LNK_R681, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_ACT_LNK_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_LNK * self = (ooaofooa_ACT_LNK *) instance;
  printf( "INSERT INTO ACT_LNK VALUES ( %ld,'%s',%ld,%ld,%ld,%d,%ld,%d,%d,%d,%d,%d,%d );\n",
    ((long)self->Link_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Rel_Phrase ) ? self->Rel_Phrase : "",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Rel_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Next_Link_ID & ESCHER_IDDUMP_MASK),
    self->Mult,
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK),
    self->modelClassKeyLettersLineNumber,
    self->modelClassKeyLettersColumn,
    self->associationNumberLineNumber,
    self->associationNumberColumn,
    self->phraseLineNumber,
    self->phraseColumn );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_ACT_LNK_container[ ooaofooa_ACT_LNK_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_LNK ooaofooa_ACT_LNK_instances[ ooaofooa_ACT_LNK_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_LNK_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_LNK_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_LNK_instances,
  sizeof( ooaofooa_ACT_LNK ), 0, ooaofooa_ACT_LNK_MAX_EXTENT_SIZE
  };


