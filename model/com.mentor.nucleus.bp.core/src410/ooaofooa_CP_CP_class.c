/*----------------------------------------------------------------------------
 * File:  ooaofooa_CP_CP_class.c
 *
 * Class:       Component Package  (CP_CP)
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
ooaofooa_CP_CP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_CP_CP * self = (ooaofooa_CP_CP *) instance;
  /* Initialize application analysis class attributes.  */
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->ParentLink_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Sys_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->Containing_Sys_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  Escher_strcpy( self->Name, avlstring[ 5 ] );
  {i_t i = avlstring[ 6 + 1 ] - avlstring[ 6 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 6 ][ i ]; }
  }
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_CP_CP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_CP_CP * ooaofooa_CP_CP_instance = (ooaofooa_CP_CP *) instance;
  ooaofooa_EP_SPKG * ooaofooa_EP_SPKGrelated_instance1 = (ooaofooa_EP_SPKG *) Escher_instance_cache[ (intptr_t) ooaofooa_CP_CP_instance->Package_ID ];
  if ( ooaofooa_EP_SPKGrelated_instance1 ) {
    ooaofooa_CP_CP_R1402_Link( ooaofooa_EP_SPKGrelated_instance1, ooaofooa_CP_CP_instance );
  }
  {
  ooaofooa_S_SYS * ooaofooa_S_SYSrelated_instance1 = (ooaofooa_S_SYS *) Escher_instance_cache[ (intptr_t) ooaofooa_CP_CP_instance->Sys_ID ];
  if ( ooaofooa_S_SYSrelated_instance1 ) {
    ooaofooa_CP_CP_R4602_Link_may_contain( ooaofooa_S_SYSrelated_instance1, ooaofooa_CP_CP_instance );
  }
  }
  {
  ooaofooa_S_SYS * ooaofooa_S_SYSrelated_instance1 = (ooaofooa_S_SYS *) Escher_instance_cache[ (intptr_t) ooaofooa_CP_CP_instance->Containing_Sys_ID ];
  if ( ooaofooa_S_SYSrelated_instance1 ) {
    ooaofooa_CP_CP_R4606_Link_has_many_defined( ooaofooa_S_SYSrelated_instance1, ooaofooa_CP_CP_instance );
  }
  }
  {
  ooaofooa_CP_CPINP * ooaofooa_CP_CPINPrelated_instance1 = (ooaofooa_CP_CPINP *) Escher_instance_cache[ (intptr_t) ooaofooa_CP_CP_instance->ParentLink_Id ];
  if ( ooaofooa_CP_CPINPrelated_instance1 ) {
    ooaofooa_CP_CP_R4601_Link_provides_nesting( ooaofooa_CP_CPINPrelated_instance1, ooaofooa_CP_CP_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_CP_CP *
ooaofooa_CP_CP_AnyWhere1( Escher_UniqueID_t w_Package_ID )
{
  ooaofooa_CP_CP * w; 
  Escher_Iterator_s iter_CP_CP;
  Escher_IteratorReset( &iter_CP_CP, &pG_ooaofooa_CP_CP_extent.active );
  while ( (w = (ooaofooa_CP_CP *) Escher_IteratorNext( &iter_CP_CP )) != 0 ) {
    if ( w->Package_ID == w_Package_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE EP_SPKG TO CP_CP ACROSS R1402
 */
void
ooaofooa_CP_CP_R1402_Link( ooaofooa_EP_SPKG * supertype, ooaofooa_CP_CP * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Package_ID = supertype->Package_ID;
  /* Optimized linkage for CP_CP->EP_SPKG[R1402] */
  subtype->EP_SPKG_R1402 = supertype;
  /* Optimized linkage for EP_SPKG->CP_CP[R1402] */
  supertype->R1402_subtype = subtype;
  supertype->R1402_object_id = ooaofooa_CP_CP_CLASS_NUMBER;
}


/*
 * UNRELATE EP_SPKG FROM CP_CP ACROSS R1402
 */
void
ooaofooa_CP_CP_R1402_Unlink( ooaofooa_EP_SPKG * supertype, ooaofooa_CP_CP * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->EP_SPKG_R1402 = 0;
  supertype->R1402_subtype = 0;
  supertype->R1402_object_id = 0;
}


/*
 * RELATE CP_CPINP TO CP_CP ACROSS R4601
 */
void
ooaofooa_CP_CP_R4601_Link_provides_nesting( ooaofooa_CP_CPINP * part, ooaofooa_CP_CP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->ParentLink_Id = part->Id;
  form->CP_CPINP_R4601_is_nested_through = part;
  part->CP_CP_R4601_provides_nesting = form;
}

/*
 * UNRELATE CP_CPINP FROM CP_CP ACROSS R4601
 */
void
ooaofooa_CP_CP_R4601_Unlink_provides_nesting( ooaofooa_CP_CPINP * part, ooaofooa_CP_CP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->ParentLink_Id = 0;
  form->CP_CPINP_R4601_is_nested_through = 0;
  part->CP_CP_R4601_provides_nesting = 0;
}

/*
 * RELATE S_SYS TO CP_CP ACROSS R4602
 */
void
ooaofooa_CP_CP_R4602_Link_may_contain( ooaofooa_S_SYS * part, ooaofooa_CP_CP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sys_ID = part->Sys_ID;
  form->S_SYS_R4602_may_be_contained_within = part;
  Escher_SetInsertElement( &part->CP_CP_R4602_may_contain, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SYS FROM CP_CP ACROSS R4602
 */
void
ooaofooa_CP_CP_R4602_Unlink_may_contain( ooaofooa_S_SYS * part, ooaofooa_CP_CP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sys_ID = 0;
  form->S_SYS_R4602_may_be_contained_within = 0;
  Escher_SetRemoveElement( &part->CP_CP_R4602_may_contain, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_SYS TO CP_CP ACROSS R4606
 */
void
ooaofooa_CP_CP_R4606_Link_has_many_defined( ooaofooa_S_SYS * part, ooaofooa_CP_CP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Containing_Sys_ID = part->Sys_ID;
  form->S_SYS_R4606_is_containing_system = part;
  Escher_SetInsertElement( &part->CP_CP_R4606_has_many_defined, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SYS FROM CP_CP ACROSS R4606
 */
void
ooaofooa_CP_CP_R4606_Unlink_has_many_defined( ooaofooa_S_SYS * part, ooaofooa_CP_CP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Containing_Sys_ID = 0;
  form->S_SYS_R4606_is_containing_system = 0;
  Escher_SetRemoveElement( &part->CP_CP_R4606_has_many_defined, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_CP_CP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_CP_CP * self = (ooaofooa_CP_CP *) instance;
  printf( "INSERT INTO CP_CP VALUES ( %ld,%ld,%ld,%ld,'%s','%s' );\n",
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK),
    ((long)self->ParentLink_Id & ESCHER_IDDUMP_MASK),
    ((long)self->Sys_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Containing_Sys_ID & ESCHER_IDDUMP_MASK),
    self->Name,
    self->Descrip );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_CP_CP_container[ ooaofooa_CP_CP_MAX_EXTENT_SIZE ];
static ooaofooa_CP_CP ooaofooa_CP_CP_instances[ ooaofooa_CP_CP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_CP_CP_extent = {
  {0,0}, {0,0}, &ooaofooa_CP_CP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_CP_CP_instances,
  sizeof( ooaofooa_CP_CP ), 0, ooaofooa_CP_CP_MAX_EXTENT_SIZE
  };


