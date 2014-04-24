/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_EVT_class.c
 *
 * Class:       Extended Event  (TE_EVT)
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
ooaofooa_TE_EVT_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_EVT * self = (ooaofooa_TE_EVT *) instance;
  /* Initialize application analysis class attributes.  */
  self->ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->ID;
  self->Name = Escher_strcpy( self->Name, avlstring[ 2 ] );
  self->Numb = Escher_atoi( avlstring[ 3 ] );
  self->GeneratedName = Escher_strcpy( self->GeneratedName, avlstring[ 4 ] );
  self->Enumerator = Escher_strcpy( self->Enumerator, avlstring[ 5 ] );
  self->Order = Escher_atoi( avlstring[ 6 ] );
  self->Used = ( '0' != *avlstring[ 7 ] );
  self->UsedCount = Escher_atoi( avlstring[ 8 ] );
  self->Priority = Escher_atoi( avlstring[ 9 ] );
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 10 ] );
  self->SMevt_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 11 ] );
  self->te_smID = (Escher_iHandle_t) Escher_atoi( avlstring[ 12 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_EVT_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_EVT * ooaofooa_TE_EVT_instance = (ooaofooa_TE_EVT *) instance;
  ooaofooa_TE_SM * ooaofooa_TE_SMrelated_instance1 = (ooaofooa_TE_SM *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_EVT_instance->te_smID ];
  if ( ooaofooa_TE_SMrelated_instance1 ) {
    ooaofooa_TE_EVT_R2071_Link( ooaofooa_TE_SMrelated_instance1, ooaofooa_TE_EVT_instance );
  }
  {
  ooaofooa_SM_EVT * ooaofooa_SM_EVTrelated_instance1 = (ooaofooa_SM_EVT *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_EVT_instance->SMevt_ID ];
  if ( ooaofooa_SM_EVTrelated_instance1 ) {
    ooaofooa_TE_EVT_R2036_Link( ooaofooa_SM_EVTrelated_instance1, ooaofooa_TE_EVT_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_TE_EVT *
ooaofooa_TE_EVT_AnyWhere1( Escher_UniqueID_t w_ID )
{
  ooaofooa_TE_EVT * w; 
  Escher_Iterator_s iter_TE_EVT;
  Escher_IteratorReset( &iter_TE_EVT, &pG_ooaofooa_TE_EVT_extent.active );
  while ( (w = (ooaofooa_TE_EVT *) Escher_IteratorNext( &iter_TE_EVT )) != 0 ) {
    if ( w->ID == w_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SM_EVT TO TE_EVT ACROSS R2036
 */
void
ooaofooa_TE_EVT_R2036_Link( ooaofooa_SM_EVT * part, ooaofooa_TE_EVT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SMevt_ID = part->SMevt_ID;
  form->SM_EVT_R2036 = part;
  part->TE_EVT_R2036 = form;
}

/*
 * UNRELATE SM_EVT FROM TE_EVT ACROSS R2036
 */
void
ooaofooa_TE_EVT_R2036_Unlink( ooaofooa_SM_EVT * part, ooaofooa_TE_EVT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SMevt_ID = 0;
  form->SM_EVT_R2036 = 0;
  part->TE_EVT_R2036 = 0;
}

/*
 * RELATE TE_SM TO TE_EVT ACROSS R2071
 */
void
ooaofooa_TE_EVT_R2071_Link( ooaofooa_TE_SM * part, ooaofooa_TE_EVT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_smID = part->ID;
  form->TE_SM_R2071 = part;
  Escher_SetInsertElement( &part->TE_EVT_R2071, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE TE_SM FROM TE_EVT ACROSS R2071
 */
void
ooaofooa_TE_EVT_R2071_Unlink( ooaofooa_TE_SM * part, ooaofooa_TE_EVT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_smID = 0;
  form->TE_SM_R2071 = 0;
  Escher_SetRemoveElement( &part->TE_EVT_R2071, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_EVT_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_EVT * self = (ooaofooa_TE_EVT *) instance;
  printf( "INSERT INTO TE_EVT VALUES ( %ld,'%s',%d,'%s','%s',%d,%d,%d,%d,%ld,%ld,%ld );\n",
    ((long)self->ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Name ) ? self->Name : "",
    self->Numb,
    ( 0 != self->GeneratedName ) ? self->GeneratedName : "",
    ( 0 != self->Enumerator ) ? self->Enumerator : "",
    self->Order,
    self->Used,
    self->UsedCount,
    self->Priority,
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMevt_ID & ESCHER_IDDUMP_MASK),
    ((long)self->te_smID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_EVT_container[ ooaofooa_TE_EVT_MAX_EXTENT_SIZE ];
static ooaofooa_TE_EVT ooaofooa_TE_EVT_instances[ ooaofooa_TE_EVT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_EVT_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_EVT_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_EVT_instances,
  sizeof( ooaofooa_TE_EVT ), 0, ooaofooa_TE_EVT_MAX_EXTENT_SIZE
  };


