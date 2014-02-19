/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_S_class.c
 *
 * Class:       Sequence  (SQ_S)
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
ooaofooa_SQ_S_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SQ_S * self = (ooaofooa_SQ_S *) instance;
  /* Initialize application analysis class attributes.  */
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Dom_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Name = Escher_strcpy( self->Name, avlstring[ 3 ] );
  self->SS_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->Prev_Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  {i_t i = avlstring[ 6 + 1 ] - avlstring[ 6 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 6 ][ i ]; }
  }
  self->Sys_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
  self->Component_Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 8 ] );
  self->Component_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 9 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SQ_S_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SQ_S * ooaofooa_SQ_S_instance = (ooaofooa_SQ_S *) instance;
  ooaofooa_EP_SPKG * ooaofooa_EP_SPKGrelated_instance1 = (ooaofooa_EP_SPKG *) Escher_instance_cache[ (intptr_t) ooaofooa_SQ_S_instance->Package_ID ];
  if ( ooaofooa_EP_SPKGrelated_instance1 ) {
    ooaofooa_SQ_S_R1402_Link( ooaofooa_EP_SPKGrelated_instance1, ooaofooa_SQ_S_instance );
  }
  {
  ooaofooa_S_DOM * ooaofooa_S_DOMrelated_instance1 = (ooaofooa_S_DOM *) Escher_instance_cache[ (intptr_t) ooaofooa_SQ_S_instance->Dom_ID ];
  if ( ooaofooa_S_DOMrelated_instance1 ) {
    ooaofooa_SQ_S_R913_Link_can_show( ooaofooa_S_DOMrelated_instance1, ooaofooa_SQ_S_instance );
  }
  }
  {
  ooaofooa_S_SS * ooaofooa_S_SSrelated_instance1 = (ooaofooa_S_SS *) Escher_instance_cache[ (intptr_t) ooaofooa_SQ_S_instance->SS_ID ];
  if ( ooaofooa_S_SSrelated_instance1 ) {
    ooaofooa_SQ_S_R914_Link_can_show( ooaofooa_S_SSrelated_instance1, ooaofooa_SQ_S_instance );
  }
  }
  {
  ooaofooa_SQ_SIS * ooaofooa_SQ_SISrelated_instance1 = ooaofooa_SQ_SIS_AnyWhere1( ooaofooa_SQ_S_instance->Prev_Package_ID );
  if ( ooaofooa_SQ_SISrelated_instance1 ) {
    ooaofooa_SQ_S_R928_Link_has_children( ooaofooa_SQ_SISrelated_instance1, ooaofooa_SQ_S_instance );
  }
  }
  {
  ooaofooa_S_SYS * ooaofooa_S_SYSrelated_instance1 = (ooaofooa_S_SYS *) Escher_instance_cache[ (intptr_t) ooaofooa_SQ_S_instance->Sys_ID ];
  if ( ooaofooa_S_SYSrelated_instance1 ) {
    ooaofooa_SQ_S_R950_Link_can_show( ooaofooa_S_SYSrelated_instance1, ooaofooa_SQ_S_instance );
  }
  }
  {
  ooaofooa_CP_CP * ooaofooa_CP_CPrelated_instance1 = ooaofooa_CP_CP_AnyWhere1( ooaofooa_SQ_S_instance->Component_Package_ID );
  if ( ooaofooa_CP_CPrelated_instance1 ) {
    ooaofooa_SQ_S_R951_Link_can_show( ooaofooa_CP_CPrelated_instance1, ooaofooa_SQ_S_instance );
  }
  }
  {
  ooaofooa_C_C * ooaofooa_C_Crelated_instance1 = ooaofooa_C_C_AnyWhere1( ooaofooa_SQ_S_instance->Component_Id );
  if ( ooaofooa_C_Crelated_instance1 ) {
    ooaofooa_SQ_S_R952_Link_can_show( ooaofooa_C_Crelated_instance1, ooaofooa_SQ_S_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SQ_S *
ooaofooa_SQ_S_AnyWhere1( Escher_UniqueID_t w_Package_ID )
{
  ooaofooa_SQ_S * w; 
  Escher_Iterator_s iter_SQ_S;
  Escher_IteratorReset( &iter_SQ_S, &pG_ooaofooa_SQ_S_extent.active );
  while ( (w = (ooaofooa_SQ_S *) Escher_IteratorNext( &iter_SQ_S )) != 0 ) {
    if ( w->Package_ID == w_Package_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_DOM TO SQ_S ACROSS R913
 */
void
ooaofooa_SQ_S_R913_Link_can_show( ooaofooa_S_DOM * part, ooaofooa_SQ_S * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Dom_ID = part->Dom_ID;
  form->S_DOM_R913_is_shown_in = part;
  Escher_SetInsertElement( &part->SQ_S_R913_can_show, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_DOM FROM SQ_S ACROSS R913
 */
void
ooaofooa_SQ_S_R913_Unlink_can_show( ooaofooa_S_DOM * part, ooaofooa_SQ_S * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Dom_ID = 0;
  form->S_DOM_R913_is_shown_in = 0;
  Escher_SetRemoveElement( &part->SQ_S_R913_can_show, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_SS TO SQ_S ACROSS R914
 */
void
ooaofooa_SQ_S_R914_Link_can_show( ooaofooa_S_SS * part, ooaofooa_SQ_S * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SS_ID = part->SS_ID;
  form->S_SS_R914_is_shown_in = part;
  Escher_SetInsertElement( &part->SQ_S_R914_can_show, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SS FROM SQ_S ACROSS R914
 */
void
ooaofooa_SQ_S_R914_Unlink_can_show( ooaofooa_S_SS * part, ooaofooa_SQ_S * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SS_ID = 0;
  form->S_SS_R914_is_shown_in = 0;
  Escher_SetRemoveElement( &part->SQ_S_R914_can_show, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE SQ_SIS TO SQ_S ACROSS R928
 */
void
ooaofooa_SQ_S_R928_Link_has_children( ooaofooa_SQ_SIS * part, ooaofooa_SQ_S * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Prev_Package_ID = part->Package_ID;
  form->SQ_SIS_R928_is_displayed_in = part;
  Escher_SetInsertElement( &part->SQ_S_R928_has_children, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SQ_SIS FROM SQ_S ACROSS R928
 */
void
ooaofooa_SQ_S_R928_Unlink_has_children( ooaofooa_SQ_SIS * part, ooaofooa_SQ_S * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Prev_Package_ID = 0;
  form->SQ_SIS_R928_is_displayed_in = 0;
  Escher_SetRemoveElement( &part->SQ_S_R928_has_children, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_SYS TO SQ_S ACROSS R950
 */
void
ooaofooa_SQ_S_R950_Link_can_show( ooaofooa_S_SYS * part, ooaofooa_SQ_S * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sys_ID = part->Sys_ID;
  form->S_SYS_R950 = part;
  Escher_SetInsertElement( &part->SQ_S_R950_can_show, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SYS FROM SQ_S ACROSS R950
 */
void
ooaofooa_SQ_S_R950_Unlink_can_show( ooaofooa_S_SYS * part, ooaofooa_SQ_S * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sys_ID = 0;
  form->S_SYS_R950 = 0;
  Escher_SetRemoveElement( &part->SQ_S_R950_can_show, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE CP_CP TO SQ_S ACROSS R951
 */
void
ooaofooa_SQ_S_R951_Link_can_show( ooaofooa_CP_CP * part, ooaofooa_SQ_S * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Component_Package_ID = part->Package_ID;
  form->CP_CP_R951 = part;
  Escher_SetInsertElement( &part->SQ_S_R951_can_show, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE CP_CP FROM SQ_S ACROSS R951
 */
void
ooaofooa_SQ_S_R951_Unlink_can_show( ooaofooa_CP_CP * part, ooaofooa_SQ_S * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Component_Package_ID = 0;
  form->CP_CP_R951 = 0;
  Escher_SetRemoveElement( &part->SQ_S_R951_can_show, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE C_C TO SQ_S ACROSS R952
 */
void
ooaofooa_SQ_S_R952_Link_can_show( ooaofooa_C_C * part, ooaofooa_SQ_S * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Component_Id = part->Id;
  form->C_C_R952 = part;
  Escher_SetInsertElement( &part->SQ_S_R952_can_show, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE C_C FROM SQ_S ACROSS R952
 */
void
ooaofooa_SQ_S_R952_Unlink_can_show( ooaofooa_C_C * part, ooaofooa_SQ_S * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Component_Id = 0;
  form->C_C_R952 = 0;
  Escher_SetRemoveElement( &part->SQ_S_R952_can_show, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE EP_SPKG TO SQ_S ACROSS R1402
 */
void
ooaofooa_SQ_S_R1402_Link( ooaofooa_EP_SPKG * supertype, ooaofooa_SQ_S * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Package_ID = supertype->Package_ID;
  /* Optimized linkage for SQ_S->EP_SPKG[R1402] */
  subtype->EP_SPKG_R1402 = supertype;
  /* Optimized linkage for EP_SPKG->SQ_S[R1402] */
  supertype->R1402_subtype = subtype;
  supertype->R1402_object_id = ooaofooa_SQ_S_CLASS_NUMBER;
}


/*
 * UNRELATE EP_SPKG FROM SQ_S ACROSS R1402
 */
void
ooaofooa_SQ_S_R1402_Unlink( ooaofooa_EP_SPKG * supertype, ooaofooa_SQ_S * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->EP_SPKG_R1402 = 0;
  supertype->R1402_subtype = 0;
  supertype->R1402_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SQ_S_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SQ_S * self = (ooaofooa_SQ_S *) instance;
  printf( "INSERT INTO SQ_S VALUES ( %ld,%ld,'%s',%ld,%ld,'%s',%ld,%ld,%ld );\n",
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Dom_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Name ) ? self->Name : "",
    ((long)self->SS_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Prev_Package_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Descrip ) ? self->Descrip : "",
    ((long)self->Sys_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Component_Package_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Component_Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SQ_S_container[ ooaofooa_SQ_S_MAX_EXTENT_SIZE ];
static ooaofooa_SQ_S ooaofooa_SQ_S_instances[ ooaofooa_SQ_S_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SQ_S_extent = {
  {0,0}, {0,0}, &ooaofooa_SQ_S_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SQ_S_instances,
  sizeof( ooaofooa_SQ_S ), 0, ooaofooa_SQ_S_MAX_EXTENT_SIZE
  };


