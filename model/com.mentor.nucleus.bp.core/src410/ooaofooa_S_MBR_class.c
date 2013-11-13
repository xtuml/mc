/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_MBR_class.c
 *
 * Class:       Structure Member  (S_MBR)
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
ooaofooa_S_MBR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_MBR * self = (ooaofooa_S_MBR *) instance;
  /* Initialize application analysis class attributes.  */
  self->Member_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Member_ID;
  Escher_strcpy( self->Name, avlstring[ 2 ] );
  {i_t i = avlstring[ 3 + 1 ] - avlstring[ 3 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 3 ][ i ]; }
  }
  self->Parent_DT_DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  self->Previous_Member_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 6 ] );
  Escher_strcpy( self->Dimensions, avlstring[ 7 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_S_MBR_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_MBR * ooaofooa_S_MBR_instance = (ooaofooa_S_MBR *) instance;
  ooaofooa_S_SDT * ooaofooa_S_SDTrelated_instance1 = ooaofooa_S_SDT_AnyWhere1( ooaofooa_S_MBR_instance->Parent_DT_DT_ID );
  if ( ooaofooa_S_SDTrelated_instance1 ) {
    ooaofooa_S_MBR_R44_Link_has_member( ooaofooa_S_SDTrelated_instance1, ooaofooa_S_MBR_instance );
  }
  {
  ooaofooa_S_DT * ooaofooa_S_DTrelated_instance1 = ooaofooa_S_DT_AnyWhere1( ooaofooa_S_MBR_instance->DT_ID );
  if ( ooaofooa_S_DTrelated_instance1 ) {
    ooaofooa_S_MBR_R45_Link_defines_the_type_of( ooaofooa_S_DTrelated_instance1, ooaofooa_S_MBR_instance );
  }
  }
  {
  ooaofooa_S_MBR * ooaofooa_S_MBRrelated_instance1 = ooaofooa_S_MBR_AnyWhere1( ooaofooa_S_MBR_instance->Previous_Member_ID, ooaofooa_S_MBR_instance->Parent_DT_DT_ID );
  if ( ooaofooa_S_MBRrelated_instance1 ) {
    ooaofooa_S_MBR_R46_Link_succeeds( ooaofooa_S_MBRrelated_instance1, ooaofooa_S_MBR_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_S_MBR *
ooaofooa_S_MBR_AnyWhere1( Escher_UniqueID_t w_Member_ID, Escher_UniqueID_t w_Parent_DT_DT_ID )
{
  ooaofooa_S_MBR * w; 
  Escher_Iterator_s iter_S_MBR;
  Escher_IteratorReset( &iter_S_MBR, &pG_ooaofooa_S_MBR_extent.active );
  while ( (w = (ooaofooa_S_MBR *) Escher_IteratorNext( &iter_S_MBR )) != 0 ) {
    if ( w->Member_ID == w_Member_ID && w->Parent_DT_DT_ID == w_Parent_DT_DT_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_SDT TO S_MBR ACROSS R44
 */
void
ooaofooa_S_MBR_R44_Link_has_member( ooaofooa_S_SDT * part, ooaofooa_S_MBR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Parent_DT_DT_ID = part->DT_ID;
  form->S_SDT_R44_has_parent = part;
  Escher_SetInsertElement( &part->S_MBR_R44_has_member, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SDT FROM S_MBR ACROSS R44
 */
void
ooaofooa_S_MBR_R44_Unlink_has_member( ooaofooa_S_SDT * part, ooaofooa_S_MBR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->S_SDT_R44_has_parent = 0;
  Escher_SetRemoveElement( &part->S_MBR_R44_has_member, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_DT TO S_MBR ACROSS R45
 */
void
ooaofooa_S_MBR_R45_Link_defines_the_type_of( ooaofooa_S_DT * part, ooaofooa_S_MBR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = part->DT_ID;
  form->S_DT_R45_is_defined_by = part;
  Escher_SetInsertElement( &part->S_MBR_R45_defines_the_type_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_DT FROM S_MBR ACROSS R45
 */
void
ooaofooa_S_MBR_R45_Unlink_defines_the_type_of( ooaofooa_S_DT * part, ooaofooa_S_MBR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = 0;
  form->S_DT_R45_is_defined_by = 0;
  Escher_SetRemoveElement( &part->S_MBR_R45_defines_the_type_of, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE <left> S_MBR TO <right> S_MBR ACROSS R46.'succeeds'
 */
void
ooaofooa_S_MBR_R46_Link_succeeds( ooaofooa_S_MBR * left, ooaofooa_S_MBR * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Previous_Member_ID = left->Member_ID;
  right->Parent_DT_DT_ID = left->Parent_DT_DT_ID;
  left->S_MBR_R46_succeeds = right; /* SR L1 */
  right->S_MBR_R46_precedes = left; /* SR L2 */
}

/*
 * UNRELATE <left> S_MBR FROM <right> S_MBR ACROSS R46.'succeeds'
 */
void
ooaofooa_S_MBR_R46_Unlink_succeeds( ooaofooa_S_MBR * left, ooaofooa_S_MBR * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Previous_Member_ID = 0;
  left->S_MBR_R46_succeeds = 0; /* SR U1 */
  right->S_MBR_R46_precedes = 0; /* SR U2 */
}

/*
 * RELATE <left> S_MBR TO <right> S_MBR ACROSS R46.'precedes'
 */
void
ooaofooa_S_MBR_R46_Link_precedes( ooaofooa_S_MBR * left, ooaofooa_S_MBR * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Previous_Member_ID = right->Member_ID;
  left->Parent_DT_DT_ID = right->Parent_DT_DT_ID;
  right->S_MBR_R46_succeeds = left; /* SR L4 */
  left->S_MBR_R46_precedes = right; /* SR L5 */
}

/*
 * UNRELATE <left> S_MBR FROM <right> S_MBR ACROSS R46.'precedes'
 */
void
ooaofooa_S_MBR_R46_Unlink_precedes( ooaofooa_S_MBR * left, ooaofooa_S_MBR * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Previous_Member_ID = 0;
  right->S_MBR_R46_succeeds = 0; /* SR U4 */
  left->S_MBR_R46_precedes = 0; /* SR U5 */
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_S_MBR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_MBR * self = (ooaofooa_S_MBR *) instance;
  printf( "INSERT INTO S_MBR VALUES ( %ld,'%s','%s',%ld,%ld,%ld,'%s' );\n",
    ((long)self->Member_ID & ESCHER_IDDUMP_MASK),
    self->Name,
    self->Descrip,
    ((long)self->Parent_DT_DT_ID & ESCHER_IDDUMP_MASK),
    ((long)self->DT_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Previous_Member_ID & ESCHER_IDDUMP_MASK),
    self->Dimensions );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_MBR_container[ ooaofooa_S_MBR_MAX_EXTENT_SIZE ];
static ooaofooa_S_MBR ooaofooa_S_MBR_instances[ ooaofooa_S_MBR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_MBR_extent = {
  {0,0}, {0,0}, &ooaofooa_S_MBR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_MBR_instances,
  sizeof( ooaofooa_S_MBR ), 0, ooaofooa_S_MBR_MAX_EXTENT_SIZE
  };


