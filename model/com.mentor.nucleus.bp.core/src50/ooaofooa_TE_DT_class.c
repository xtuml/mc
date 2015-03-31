/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_DT_class.c
 *
 * Class:       Extended Data Type  (TE_DT)
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
ooaofooa_TE_DT_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_DT * self = (ooaofooa_TE_DT *) instance;
  /* Initialize application analysis class attributes.  */
  self->ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->ID;
  self->Name = Escher_strcpy( self->Name, avlstring[ 2 ] );
  self->Core_Typ = Escher_atoi( avlstring[ 3 ] );
  self->Included = ( '0' != *avlstring[ 4 ] );
  self->ExtName = Escher_strcpy( self->ExtName, avlstring[ 5 ] );
  self->Include_File = Escher_strcpy( self->Include_File, avlstring[ 6 ] );
  self->Initial_Value = Escher_strcpy( self->Initial_Value, avlstring[ 7 ] );
  self->Value = Escher_strcpy( self->Value, avlstring[ 8 ] );
  self->Is_Enum = ( '0' != *avlstring[ 9 ] );
  self->Owning_Dom_Name = Escher_strcpy( self->Owning_Dom_Name, avlstring[ 10 ] );
  self->string_format = Escher_strcpy( self->string_format, avlstring[ 11 ] );
  self->generated = ( '0' != *avlstring[ 12 ] );
  self->te_cID = (Escher_iHandle_t) Escher_atoi( avlstring[ 13 ] );
  self->DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 14 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_DT_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_DT * ooaofooa_TE_DT_instance = (ooaofooa_TE_DT *) instance;
  ooaofooa_S_DT * ooaofooa_S_DTrelated_instance1 = ooaofooa_S_DT_AnyWhere1( ooaofooa_TE_DT_instance->DT_ID );
  if ( ooaofooa_S_DTrelated_instance1 ) {
    ooaofooa_TE_DT_R2021_Link( ooaofooa_S_DTrelated_instance1, ooaofooa_TE_DT_instance );
  }
  {
  ooaofooa_TE_C * ooaofooa_TE_Crelated_instance1 = (ooaofooa_TE_C *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_DT_instance->te_cID ];
  if ( ooaofooa_TE_Crelated_instance1 ) {
    ooaofooa_TE_DT_R2086_Link( ooaofooa_TE_Crelated_instance1, ooaofooa_TE_DT_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_TE_DT *
ooaofooa_TE_DT_AnyWhere1( Escher_UniqueID_t w_ID )
{
  ooaofooa_TE_DT * w; 
  Escher_Iterator_s iter_TE_DT;
  Escher_IteratorReset( &iter_TE_DT, &pG_ooaofooa_TE_DT_extent.active );
  while ( (w = (ooaofooa_TE_DT *) Escher_IteratorNext( &iter_TE_DT )) != 0 ) {
    if ( w->ID == w_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_DT TO TE_DT ACROSS R2021
 */
void
ooaofooa_TE_DT_R2021_Link( ooaofooa_S_DT * part, ooaofooa_TE_DT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = part->DT_ID;
  form->S_DT_R2021 = part;
  part->TE_DT_R2021 = form;
}

/*
 * UNRELATE S_DT FROM TE_DT ACROSS R2021
 */
void
ooaofooa_TE_DT_R2021_Unlink( ooaofooa_S_DT * part, ooaofooa_TE_DT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = 0;
  form->S_DT_R2021 = 0;
  part->TE_DT_R2021 = 0;
}

/*
 * RELATE TE_C TO TE_DT ACROSS R2086
 */
void
ooaofooa_TE_DT_R2086_Link( ooaofooa_TE_C * part, ooaofooa_TE_DT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_cID = part->ID;
  form->TE_C_R2086 = part;
  Escher_SetInsertElement( &part->TE_DT_R2086, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE TE_C FROM TE_DT ACROSS R2086
 */
void
ooaofooa_TE_DT_R2086_Unlink( ooaofooa_TE_C * part, ooaofooa_TE_DT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_cID = 0;
  form->TE_C_R2086 = 0;
  Escher_SetRemoveElement( &part->TE_DT_R2086, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_DT_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_DT * self = (ooaofooa_TE_DT *) instance;
  printf( "INSERT INTO TE_DT VALUES ( %ld,'%s',%d,%d,'%s','%s','%s','%s',%d,'%s','%s',%d,%ld,%ld );\n",
    ((long)self->ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Name ) ? self->Name : "",
    self->Core_Typ,
    self->Included,
    ( 0 != self->ExtName ) ? self->ExtName : "",
    ( 0 != self->Include_File ) ? self->Include_File : "",
    ( 0 != self->Initial_Value ) ? self->Initial_Value : "",
    ( 0 != self->Value ) ? self->Value : "",
    self->Is_Enum,
    ( 0 != self->Owning_Dom_Name ) ? self->Owning_Dom_Name : "",
    ( 0 != self->string_format ) ? self->string_format : "",
    self->generated,
    ((long)self->te_cID & ESCHER_IDDUMP_MASK),
    ((long)self->DT_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_DT_container[ ooaofooa_TE_DT_MAX_EXTENT_SIZE ];
static ooaofooa_TE_DT ooaofooa_TE_DT_instances[ ooaofooa_TE_DT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_DT_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_DT_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_DT_instances,
  sizeof( ooaofooa_TE_DT ), 0, ooaofooa_TE_DT_MAX_EXTENT_SIZE
  };


