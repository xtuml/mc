/*----------------------------------------------------------------------------
 * File:  ooaofooa_IP_IP_class.c
 *
 * Class:       Interface Package  (IP_IP)
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
ooaofooa_IP_IP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_IP_IP * self = (ooaofooa_IP_IP *) instance;
  /* Initialize application analysis class attributes.  */
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Parent_Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Direct_Sys_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->Sys_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->Component_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  self->Component_Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 6 ] );
  Escher_strcpy( self->Name, avlstring[ 7 ] );
  {i_t i = avlstring[ 8 + 1 ] - avlstring[ 8 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 8 ][ i ]; }
  }
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_IP_IP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_IP_IP * ooaofooa_IP_IP_instance = (ooaofooa_IP_IP *) instance;
  ooaofooa_C_C * ooaofooa_C_Crelated_instance1 = ooaofooa_C_C_AnyWhere1( ooaofooa_IP_IP_instance->Component_Id );
  if ( ooaofooa_C_Crelated_instance1 ) {
    ooaofooa_IP_IP_R4206_Link_may_contain( ooaofooa_C_Crelated_instance1, ooaofooa_IP_IP_instance );
  }
  {
  ooaofooa_CP_CP * ooaofooa_CP_CPrelated_instance1 = ooaofooa_CP_CP_AnyWhere1( ooaofooa_IP_IP_instance->Component_Package_ID );
  if ( ooaofooa_CP_CPrelated_instance1 ) {
    ooaofooa_IP_IP_R4607_Link_may_contain( ooaofooa_CP_CPrelated_instance1, ooaofooa_IP_IP_instance );
  }
  }
  {
  ooaofooa_EP_SPKG * ooaofooa_EP_SPKGrelated_instance1 = (ooaofooa_EP_SPKG *) Escher_instance_cache[ (intptr_t) ooaofooa_IP_IP_instance->Package_ID ];
  if ( ooaofooa_EP_SPKGrelated_instance1 ) {
    ooaofooa_IP_IP_R1402_Link( ooaofooa_EP_SPKGrelated_instance1, ooaofooa_IP_IP_instance );
  }
  }
  {
  ooaofooa_IP_IPINIP * ooaofooa_IP_IPINIPrelated_instance1 = ooaofooa_IP_IPINIP_AnyWhere1( ooaofooa_IP_IP_instance->Parent_Package_ID );
  if ( ooaofooa_IP_IPINIPrelated_instance1 ) {
    ooaofooa_IP_IP_R4301_Link_has_children( ooaofooa_IP_IPINIPrelated_instance1, ooaofooa_IP_IP_instance );
  }
  }
  {
  ooaofooa_S_SYS * ooaofooa_S_SYSrelated_instance1 = (ooaofooa_S_SYS *) Escher_instance_cache[ (intptr_t) ooaofooa_IP_IP_instance->Direct_Sys_ID ];
  if ( ooaofooa_S_SYSrelated_instance1 ) {
    ooaofooa_IP_IP_R4302_Link_can_show( ooaofooa_S_SYSrelated_instance1, ooaofooa_IP_IP_instance );
  }
  }
  {
  ooaofooa_S_SYS * ooaofooa_S_SYSrelated_instance1 = (ooaofooa_S_SYS *) Escher_instance_cache[ (intptr_t) ooaofooa_IP_IP_instance->Sys_ID ];
  if ( ooaofooa_S_SYSrelated_instance1 ) {
    ooaofooa_IP_IP_R4304_Link( ooaofooa_S_SYSrelated_instance1, ooaofooa_IP_IP_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_IP_IP *
ooaofooa_IP_IP_AnyWhere1( Escher_UniqueID_t w_Package_ID )
{
  ooaofooa_IP_IP * w; 
  Escher_Iterator_s iter_IP_IP;
  Escher_IteratorReset( &iter_IP_IP, &pG_ooaofooa_IP_IP_extent.active );
  while ( (w = (ooaofooa_IP_IP *) Escher_IteratorNext( &iter_IP_IP )) != 0 ) {
    if ( w->Package_ID == w_Package_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE EP_SPKG TO IP_IP ACROSS R1402
 */
void
ooaofooa_IP_IP_R1402_Link( ooaofooa_EP_SPKG * supertype, ooaofooa_IP_IP * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Package_ID = supertype->Package_ID;
  /* Optimized linkage for IP_IP->EP_SPKG[R1402] */
  subtype->EP_SPKG_R1402 = supertype;
  /* Optimized linkage for EP_SPKG->IP_IP[R1402] */
  supertype->R1402_subtype = subtype;
  supertype->R1402_object_id = ooaofooa_IP_IP_CLASS_NUMBER;
}


/*
 * UNRELATE EP_SPKG FROM IP_IP ACROSS R1402
 */
void
ooaofooa_IP_IP_R1402_Unlink( ooaofooa_EP_SPKG * supertype, ooaofooa_IP_IP * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->EP_SPKG_R1402 = 0;
  supertype->R1402_subtype = 0;
  supertype->R1402_object_id = 0;
}


/*
 * RELATE C_C TO IP_IP ACROSS R4206
 */
void
ooaofooa_IP_IP_R4206_Link_may_contain( ooaofooa_C_C * part, ooaofooa_IP_IP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Component_Id = part->Id;
  form->C_C_R4206_may_be_contained_in = part;
  Escher_SetInsertElement( &part->IP_IP_R4206_may_contain, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE C_C FROM IP_IP ACROSS R4206
 */
void
ooaofooa_IP_IP_R4206_Unlink_may_contain( ooaofooa_C_C * part, ooaofooa_IP_IP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Component_Id = 0;
  form->C_C_R4206_may_be_contained_in = 0;
  Escher_SetRemoveElement( &part->IP_IP_R4206_may_contain, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE IP_IPINIP TO IP_IP ACROSS R4301
 */
void
ooaofooa_IP_IP_R4301_Link_has_children( ooaofooa_IP_IPINIP * part, ooaofooa_IP_IP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Parent_Package_ID = part->Package_ID;
  form->IP_IPINIP_R4301_may_be_shown_in = part;
  Escher_SetInsertElement( &part->IP_IP_R4301_has_children, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE IP_IPINIP FROM IP_IP ACROSS R4301
 */
void
ooaofooa_IP_IP_R4301_Unlink_has_children( ooaofooa_IP_IPINIP * part, ooaofooa_IP_IP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Parent_Package_ID = 0;
  form->IP_IPINIP_R4301_may_be_shown_in = 0;
  Escher_SetRemoveElement( &part->IP_IP_R4301_has_children, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_SYS TO IP_IP ACROSS R4302
 */
void
ooaofooa_IP_IP_R4302_Link_can_show( ooaofooa_S_SYS * part, ooaofooa_IP_IP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Direct_Sys_ID = part->Sys_ID;
  form->S_SYS_R4302_may_be_shown_in = part;
  Escher_SetInsertElement( &part->IP_IP_R4302_can_show, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SYS FROM IP_IP ACROSS R4302
 */
void
ooaofooa_IP_IP_R4302_Unlink_can_show( ooaofooa_S_SYS * part, ooaofooa_IP_IP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Direct_Sys_ID = 0;
  form->S_SYS_R4302_may_be_shown_in = 0;
  Escher_SetRemoveElement( &part->IP_IP_R4302_can_show, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_SYS TO IP_IP ACROSS R4304
 */
void
ooaofooa_IP_IP_R4304_Link( ooaofooa_S_SYS * part, ooaofooa_IP_IP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sys_ID = part->Sys_ID;
  form->S_SYS_R4304 = part;
  Escher_SetInsertElement( &part->IP_IP_R4304, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SYS FROM IP_IP ACROSS R4304
 */
void
ooaofooa_IP_IP_R4304_Unlink( ooaofooa_S_SYS * part, ooaofooa_IP_IP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sys_ID = 0;
  form->S_SYS_R4304 = 0;
  Escher_SetRemoveElement( &part->IP_IP_R4304, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE CP_CP TO IP_IP ACROSS R4607
 */
void
ooaofooa_IP_IP_R4607_Link_may_contain( ooaofooa_CP_CP * part, ooaofooa_IP_IP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Component_Package_ID = part->Package_ID;
  form->CP_CP_R4607_may_exist_in = part;
  Escher_SetInsertElement( &part->IP_IP_R4607_may_contain, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE CP_CP FROM IP_IP ACROSS R4607
 */
void
ooaofooa_IP_IP_R4607_Unlink_may_contain( ooaofooa_CP_CP * part, ooaofooa_IP_IP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Component_Package_ID = 0;
  form->CP_CP_R4607_may_exist_in = 0;
  Escher_SetRemoveElement( &part->IP_IP_R4607_may_contain, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_IP_IP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_IP_IP * self = (ooaofooa_IP_IP *) instance;
  printf( "INSERT INTO IP_IP VALUES ( %ld,%ld,%ld,%ld,%ld,%ld,'%s','%s' );\n",
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Parent_Package_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Direct_Sys_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Sys_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Component_Id & ESCHER_IDDUMP_MASK),
    ((long)self->Component_Package_ID & ESCHER_IDDUMP_MASK),
    self->Name,
    self->Descrip );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_IP_IP_container[ ooaofooa_IP_IP_MAX_EXTENT_SIZE ];
static ooaofooa_IP_IP ooaofooa_IP_IP_instances[ ooaofooa_IP_IP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_IP_IP_extent = {
  {0,0}, {0,0}, &ooaofooa_IP_IP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_IP_IP_instances,
  sizeof( ooaofooa_IP_IP ), 0, ooaofooa_IP_IP_MAX_EXTENT_SIZE
  };


