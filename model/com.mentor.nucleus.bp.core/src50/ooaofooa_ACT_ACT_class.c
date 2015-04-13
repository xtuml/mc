/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_ACT_class.c
 *
 * Class:       Body  (ACT_ACT)
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
ooaofooa_ACT_ACT_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_ACT * self = (ooaofooa_ACT_ACT *) instance;
  /* Initialize application analysis class attributes.  */
  self->Action_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Action_ID;
  self->Type = Escher_strcpy( self->Type, avlstring[ 2 ] );
  self->LoopLevel = Escher_atoi( avlstring[ 3 ] );
  self->Block_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->CurrentScope_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  self->return_value = Escher_atoi( avlstring[ 6 ] );
  self->Label = Escher_strcpy( self->Label, avlstring[ 7 ] );
  self->Parsed_Block_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 8 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_ACT_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_ACT * ooaofooa_ACT_ACT_instance = (ooaofooa_ACT_ACT *) instance;
  ooaofooa_ACT_BLK * ooaofooa_ACT_BLKrelated_instance1 = (ooaofooa_ACT_BLK *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_ACT_instance->Block_ID ];
  if ( ooaofooa_ACT_BLKrelated_instance1 ) {
    ooaofooa_ACT_ACT_R666_Link_is_outer_committed_level_of( ooaofooa_ACT_BLKrelated_instance1, ooaofooa_ACT_ACT_instance );
  }
  {
  ooaofooa_ACT_BLK * ooaofooa_ACT_BLKrelated_instance1 = (ooaofooa_ACT_BLK *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_ACT_instance->CurrentScope_ID ];
  if ( ooaofooa_ACT_BLKrelated_instance1 ) {
    ooaofooa_ACT_ACT_R699_Link_is_current_scope_for( ooaofooa_ACT_BLKrelated_instance1, ooaofooa_ACT_ACT_instance );
  }
  }
  {
  ooaofooa_ACT_BLK * ooaofooa_ACT_BLKrelated_instance1 = (ooaofooa_ACT_BLK *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_ACT_instance->Parsed_Block_ID ];
  if ( ooaofooa_ACT_BLKrelated_instance1 ) {
    ooaofooa_ACT_ACT_R650_Link_is_outer_parse_level_of( ooaofooa_ACT_BLKrelated_instance1, ooaofooa_ACT_ACT_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_ACT_ACT *
ooaofooa_ACT_ACT_AnyWhere1( Escher_UniqueID_t w_Action_ID )
{
  ooaofooa_ACT_ACT * w; 
  Escher_Iterator_s iter_ACT_ACT;
  Escher_IteratorReset( &iter_ACT_ACT, &pG_ooaofooa_ACT_ACT_extent.active );
  while ( (w = (ooaofooa_ACT_ACT *) Escher_IteratorNext( &iter_ACT_ACT )) != 0 ) {
    if ( w->Action_ID == w_Action_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE ACT_BLK TO ACT_ACT ACROSS R650
 */
void
ooaofooa_ACT_ACT_R650_Link_is_outer_parse_level_of( ooaofooa_ACT_BLK * part, ooaofooa_ACT_ACT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Parsed_Block_ID = part->Block_ID;
  form->ACT_BLK_R650_has_parsed_outer = part;
  part->ACT_ACT_R650_is_outer_parse_level_of = form;
}

/*
 * UNRELATE ACT_BLK FROM ACT_ACT ACROSS R650
 */
void
ooaofooa_ACT_ACT_R650_Unlink_is_outer_parse_level_of( ooaofooa_ACT_BLK * part, ooaofooa_ACT_ACT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Parsed_Block_ID = 0;
  form->ACT_BLK_R650_has_parsed_outer = 0;
  part->ACT_ACT_R650_is_outer_parse_level_of = 0;
}

/*
 * RELATE ACT_BLK TO ACT_ACT ACROSS R666
 */
void
ooaofooa_ACT_ACT_R666_Link_is_outer_committed_level_of( ooaofooa_ACT_BLK * part, ooaofooa_ACT_ACT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Block_ID = part->Block_ID;
  form->ACT_BLK_R666_has_committed_outer = part;
  part->ACT_ACT_R666_is_outer_committed_level_of = form;
}

/*
 * UNRELATE ACT_BLK FROM ACT_ACT ACROSS R666
 */
void
ooaofooa_ACT_ACT_R666_Unlink_is_outer_committed_level_of( ooaofooa_ACT_BLK * part, ooaofooa_ACT_ACT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Block_ID = 0;
  form->ACT_BLK_R666_has_committed_outer = 0;
  part->ACT_ACT_R666_is_outer_committed_level_of = 0;
}

/* Accessors to ACT_ACT[R698] subtypes */


/*
 * RELATE ACT_BLK TO ACT_ACT ACROSS R699
 */
void
ooaofooa_ACT_ACT_R699_Link_is_current_scope_for( ooaofooa_ACT_BLK * part, ooaofooa_ACT_ACT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->CurrentScope_ID = part->Block_ID;
  form->ACT_BLK_R699_has_current_scope = part;
  part->ACT_ACT_R699_is_current_scope_for = form;
}

/*
 * UNRELATE ACT_BLK FROM ACT_ACT ACROSS R699
 */
void
ooaofooa_ACT_ACT_R699_Unlink_is_current_scope_for( ooaofooa_ACT_BLK * part, ooaofooa_ACT_ACT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->CurrentScope_ID = 0;
  form->ACT_BLK_R699_has_current_scope = 0;
  part->ACT_ACT_R699_is_current_scope_for = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_ACT_ACT_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_ACT * self = (ooaofooa_ACT_ACT *) instance;
  printf( "INSERT INTO ACT_ACT VALUES ( %ld,'%s',%d,%ld,%ld,%d,'%s',%ld );\n",
    ((long)self->Action_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Type ) ? self->Type : "",
    self->LoopLevel,
    ((long)self->Block_ID & ESCHER_IDDUMP_MASK),
    ((long)self->CurrentScope_ID & ESCHER_IDDUMP_MASK),
    self->return_value,
    ( 0 != self->Label ) ? self->Label : "",
    ((long)self->Parsed_Block_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_ACT_ACT_container[ ooaofooa_ACT_ACT_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_ACT ooaofooa_ACT_ACT_instances[ ooaofooa_ACT_ACT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_ACT_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_ACT_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_ACT_instances,
  sizeof( ooaofooa_ACT_ACT ), 0, ooaofooa_ACT_ACT_MAX_EXTENT_SIZE
  };


