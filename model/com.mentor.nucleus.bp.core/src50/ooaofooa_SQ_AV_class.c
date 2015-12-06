/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_AV_class.c
 *
 * Class:       Instance Attribute Value  (SQ_AV)
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
ooaofooa_SQ_AV_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SQ_AV * self = (ooaofooa_SQ_AV *) instance;
  /* Initialize application analysis class attributes.  */
  self->Av_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Av_ID;
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Attr_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->Label = Escher_strcpy( self->Label, avlstring[ 4 ] );
  self->Value = Escher_strcpy( self->Value, avlstring[ 5 ] );
  self->InformalName = Escher_strcpy( self->InformalName, avlstring[ 6 ] );
  self->Informal_Part_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
  self->Formal_Part_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 8 ] );
  {i_t i = avlstring[ 9 + 1 ] - avlstring[ 9 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 9 ][ i ]; }
  }
  self->isFormal = ( '0' != *avlstring[ 10 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SQ_AV_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SQ_AV * ooaofooa_SQ_AV_instance = (ooaofooa_SQ_AV *) instance;
  ooaofooa_O_ATTR * ooaofooa_O_ATTRrelated_instance1 = ooaofooa_O_ATTR_AnyWhere1( ooaofooa_SQ_AV_instance->Attr_ID, ooaofooa_SQ_AV_instance->Obj_ID );
  if ( ooaofooa_O_ATTRrelated_instance1 ) {
    ooaofooa_SQ_AV_R938_Link_defines( ooaofooa_O_ATTRrelated_instance1, ooaofooa_SQ_AV_instance );
  }
  {
  ooaofooa_SQ_CIP * ooaofooa_SQ_CIPrelated_instance1 = ooaofooa_SQ_CIP_AnyWhere1( ooaofooa_SQ_AV_instance->Informal_Part_ID );
  if ( ooaofooa_SQ_CIPrelated_instance1 ) {
    ooaofooa_SQ_AV_R936_Link_contains_informal( ooaofooa_SQ_CIPrelated_instance1, ooaofooa_SQ_AV_instance );
  }
  }
  {
  ooaofooa_SQ_CIP * ooaofooa_SQ_CIPrelated_instance1 = ooaofooa_SQ_CIP_AnyWhere1( ooaofooa_SQ_AV_instance->Formal_Part_ID );
  if ( ooaofooa_SQ_CIPrelated_instance1 ) {
    ooaofooa_SQ_AV_R937_Link_contains_formal( ooaofooa_SQ_CIPrelated_instance1, ooaofooa_SQ_AV_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SQ_AV *
ooaofooa_SQ_AV_AnyWhere1( Escher_UniqueID_t w_Av_ID )
{
  ooaofooa_SQ_AV * w; 
  Escher_Iterator_s iter_SQ_AV;
  Escher_IteratorReset( &iter_SQ_AV, &pG_ooaofooa_SQ_AV_extent.active );
  while ( (w = (ooaofooa_SQ_AV *) Escher_IteratorNext( &iter_SQ_AV )) != 0 ) {
    if ( w->Av_ID == w_Av_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SQ_CIP TO SQ_AV ACROSS R936
 */
void
ooaofooa_SQ_AV_R936_Link_contains_informal( ooaofooa_SQ_CIP * part, ooaofooa_SQ_AV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Informal_Part_ID = part->Part_ID;
  form->SQ_CIP_R936_owns_informal = part;
  Escher_SetInsertElement( &part->SQ_AV_R936_contains_informal, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SQ_CIP FROM SQ_AV ACROSS R936
 */
void
ooaofooa_SQ_AV_R936_Unlink_contains_informal( ooaofooa_SQ_CIP * part, ooaofooa_SQ_AV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Informal_Part_ID = 0;
  form->SQ_CIP_R936_owns_informal = 0;
  Escher_SetRemoveElement( &part->SQ_AV_R936_contains_informal, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE SQ_CIP TO SQ_AV ACROSS R937
 */
void
ooaofooa_SQ_AV_R937_Link_contains_formal( ooaofooa_SQ_CIP * part, ooaofooa_SQ_AV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Formal_Part_ID = part->Part_ID;
  form->SQ_CIP_R937_owns_formal = part;
  Escher_SetInsertElement( &part->SQ_AV_R937_contains_formal, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SQ_CIP FROM SQ_AV ACROSS R937
 */
void
ooaofooa_SQ_AV_R937_Unlink_contains_formal( ooaofooa_SQ_CIP * part, ooaofooa_SQ_AV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Formal_Part_ID = 0;
  form->SQ_CIP_R937_owns_formal = 0;
  Escher_SetRemoveElement( &part->SQ_AV_R937_contains_formal, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE O_ATTR TO SQ_AV ACROSS R938
 */
void
ooaofooa_SQ_AV_R938_Link_defines( ooaofooa_O_ATTR * part, ooaofooa_SQ_AV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Attr_ID = part->Attr_ID;
  form->Obj_ID = part->Obj_ID;
  form->O_ATTR_R938_references = part;
  Escher_SetInsertElement( &part->SQ_AV_R938_defines, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_ATTR FROM SQ_AV ACROSS R938
 */
void
ooaofooa_SQ_AV_R938_Unlink_defines( ooaofooa_O_ATTR * part, ooaofooa_SQ_AV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Attr_ID = 0;
  form->Obj_ID = 0;
  form->O_ATTR_R938_references = 0;
  Escher_SetRemoveElement( &part->SQ_AV_R938_defines, (Escher_ObjectSet_s *) form );
}

/* Accessors to SQ_AV[R948] subtypes */


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SQ_AV_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SQ_AV * self = (ooaofooa_SQ_AV *) instance;
  printf( "INSERT INTO SQ_AV VALUES ( %ld,%ld,%ld,'%s','%s','%s',%ld,%ld,'%s',%d );\n",
    ((long)self->Av_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Attr_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Label ) ? self->Label : "",
    ( 0 != self->Value ) ? self->Value : "",
    ( 0 != self->InformalName ) ? self->InformalName : "",
    ((long)self->Informal_Part_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Formal_Part_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Descrip ) ? self->Descrip : "",
    self->isFormal );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SQ_AV_container[ ooaofooa_SQ_AV_MAX_EXTENT_SIZE ];
static ooaofooa_SQ_AV ooaofooa_SQ_AV_instances[ ooaofooa_SQ_AV_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SQ_AV_extent = {
  {0,0}, {0,0}, &ooaofooa_SQ_AV_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SQ_AV_instances,
  sizeof( ooaofooa_SQ_AV ), 0, ooaofooa_SQ_AV_MAX_EXTENT_SIZE
  };


