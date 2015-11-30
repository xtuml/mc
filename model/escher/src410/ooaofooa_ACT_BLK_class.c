/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_BLK_class.c
 *
 * Class:       Block  (ACT_BLK)
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
ooaofooa_ACT_BLK_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_BLK * self = (ooaofooa_ACT_BLK *) instance;
  /* Initialize application analysis class attributes.  */
  self->Block_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Block_ID;
  self->WhereSpecOK = ( '0' != *avlstring[ 2 ] );
  self->InWhereSpec = ( '0' != *avlstring[ 3 ] );
  self->SelectedFound = ( '0' != *avlstring[ 4 ] );
  Escher_strcpy( self->TempBuffer, avlstring[ 5 ] );
  Escher_strcpy( self->SupData1, avlstring[ 6 ] );
  Escher_strcpy( self->SupData2, avlstring[ 7 ] );
  self->CurrentLine = Escher_atoi( avlstring[ 8 ] );
  self->CurrentCol = Escher_atoi( avlstring[ 9 ] );
  self->currentKeyLettersLineNumber = Escher_atoi( avlstring[ 10 ] );
  self->currentKeyLettersColumn = Escher_atoi( avlstring[ 11 ] );
  self->currentParameterAssignmentNameLineNumber = Escher_atoi( avlstring[ 12 ] );
  self->currentParameterAssignmentNameColumn = Escher_atoi( avlstring[ 13 ] );
  self->currentAssociationNumberLineNumber = Escher_atoi( avlstring[ 14 ] );
  self->currentAssociationNumberColumn = Escher_atoi( avlstring[ 15 ] );
  self->currentAssociationPhraseLineNumber = Escher_atoi( avlstring[ 16 ] );
  self->currentAssociationPhraseColumn = Escher_atoi( avlstring[ 17 ] );
  self->currentDataTypeNameLineNumber = Escher_atoi( avlstring[ 18 ] );
  self->currentDataTypeNameColumn = Escher_atoi( avlstring[ 19 ] );
  self->blockInStackFrameCreated = ( '0' != *avlstring[ 20 ] );
  self->Action_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 21 ] );
  self->Parsed_Action_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 22 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_BLK_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_BLK * ooaofooa_ACT_BLK_instance = (ooaofooa_ACT_BLK *) instance;
  ooaofooa_ACT_ACT * ooaofooa_ACT_ACTrelated_instance1 = (ooaofooa_ACT_ACT *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_BLK_instance->Action_ID ];
  if ( ooaofooa_ACT_ACTrelated_instance1 ) {
    ooaofooa_ACT_BLK_R601_Link_has_committed( ooaofooa_ACT_ACTrelated_instance1, ooaofooa_ACT_BLK_instance );
  }
  {
  ooaofooa_ACT_ACT * ooaofooa_ACT_ACTrelated_instance1 = (ooaofooa_ACT_ACT *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_BLK_instance->Parsed_Action_ID ];
  if ( ooaofooa_ACT_ACTrelated_instance1 ) {
    ooaofooa_ACT_BLK_R612_Link_has_parsed( ooaofooa_ACT_ACTrelated_instance1, ooaofooa_ACT_BLK_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_ACT_BLK *
ooaofooa_ACT_BLK_AnyWhere1( Escher_UniqueID_t w_Block_ID )
{
  ooaofooa_ACT_BLK * w; 
  Escher_Iterator_s iter_ACT_BLK;
  Escher_IteratorReset( &iter_ACT_BLK, &pG_ooaofooa_ACT_BLK_extent.active );
  while ( (w = (ooaofooa_ACT_BLK *) Escher_IteratorNext( &iter_ACT_BLK )) != 0 ) {
    if ( w->Block_ID == w_Block_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE ACT_ACT TO ACT_BLK ACROSS R601
 */
void
ooaofooa_ACT_BLK_R601_Link_has_committed( ooaofooa_ACT_ACT * part, ooaofooa_ACT_BLK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Action_ID = part->Action_ID;
  form->ACT_ACT_R601_is_committed_from = part;
  Escher_SetInsertElement( &part->ACT_BLK_R601_has_committed, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE ACT_ACT FROM ACT_BLK ACROSS R601
 */
void
ooaofooa_ACT_BLK_R601_Unlink_has_committed( ooaofooa_ACT_ACT * part, ooaofooa_ACT_BLK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Action_ID = 0;
  form->ACT_ACT_R601_is_committed_from = 0;
  Escher_SetRemoveElement( &part->ACT_BLK_R601_has_committed, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE ACT_ACT TO ACT_BLK ACROSS R612
 */
void
ooaofooa_ACT_BLK_R612_Link_has_parsed( ooaofooa_ACT_ACT * part, ooaofooa_ACT_BLK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Parsed_Action_ID = part->Action_ID;
  form->ACT_ACT_R612_is_parsed_from = part;
  Escher_SetInsertElement( &part->ACT_BLK_R612_has_parsed, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE ACT_ACT FROM ACT_BLK ACROSS R612
 */
void
ooaofooa_ACT_BLK_R612_Unlink_has_parsed( ooaofooa_ACT_ACT * part, ooaofooa_ACT_BLK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Parsed_Action_ID = 0;
  form->ACT_ACT_R612_is_parsed_from = 0;
  Escher_SetRemoveElement( &part->ACT_BLK_R612_has_parsed, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_ACT_BLK_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_BLK * self = (ooaofooa_ACT_BLK *) instance;
  printf( "INSERT INTO ACT_BLK VALUES ( %ld,%d,%d,%d,'%s','%s','%s',%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%ld,%ld );\n",
    ((long)self->Block_ID & ESCHER_IDDUMP_MASK),
    self->WhereSpecOK,
    self->InWhereSpec,
    self->SelectedFound,
    self->TempBuffer,
    self->SupData1,
    self->SupData2,
    self->CurrentLine,
    self->CurrentCol,
    self->currentKeyLettersLineNumber,
    self->currentKeyLettersColumn,
    self->currentParameterAssignmentNameLineNumber,
    self->currentParameterAssignmentNameColumn,
    self->currentAssociationNumberLineNumber,
    self->currentAssociationNumberColumn,
    self->currentAssociationPhraseLineNumber,
    self->currentAssociationPhraseColumn,
    self->currentDataTypeNameLineNumber,
    self->currentDataTypeNameColumn,
    self->blockInStackFrameCreated,
    ((long)self->Action_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Parsed_Action_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_ACT_BLK_container[ ooaofooa_ACT_BLK_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_BLK ooaofooa_ACT_BLK_instances[ ooaofooa_ACT_BLK_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_BLK_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_BLK_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_BLK_instances,
  sizeof( ooaofooa_ACT_BLK ), 0, ooaofooa_ACT_BLK_MAX_EXTENT_SIZE
  };


