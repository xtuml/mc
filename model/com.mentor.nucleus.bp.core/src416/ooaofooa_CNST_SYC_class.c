/*----------------------------------------------------------------------------
 * File:  ooaofooa_CNST_SYC_class.c
 *
 * Class:       Symbolic Constant  (CNST_SYC)
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
ooaofooa_CNST_SYC_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_CNST_SYC * self = (ooaofooa_CNST_SYC *) instance;
  /* Initialize application analysis class attributes.  */
  self->Const_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Const_ID;
  self->Name = Escher_strcpy( self->Name, avlstring[ 2 ] );
  {i_t i = avlstring[ 3 + 1 ] - avlstring[ 3 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 3 ][ i ]; }
  }
  self->DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->Constant_Spec_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  self->Previous_Const_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 6 ] );
  self->Previous_DT_DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_CNST_SYC_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_CNST_SYC * ooaofooa_CNST_SYC_instance = (ooaofooa_CNST_SYC *) instance;
  ooaofooa_S_DT * ooaofooa_S_DTrelated_instance1 = ooaofooa_S_DT_AnyWhere1( ooaofooa_CNST_SYC_instance->DT_ID );
  if ( ooaofooa_S_DTrelated_instance1 ) {
    ooaofooa_CNST_SYC_R1500_Link_defines_the_type_of( ooaofooa_S_DTrelated_instance1, ooaofooa_CNST_SYC_instance );
  }
  {
  ooaofooa_CNST_CSP * ooaofooa_CNST_CSPrelated_instance1 = ooaofooa_CNST_CSP_AnyWhere1( ooaofooa_CNST_SYC_instance->Constant_Spec_ID );
  if ( ooaofooa_CNST_CSPrelated_instance1 ) {
    ooaofooa_CNST_SYC_R1504_Link_contains( ooaofooa_CNST_CSPrelated_instance1, ooaofooa_CNST_SYC_instance );
  }
  }
  {
  ooaofooa_CNST_SYC * ooaofooa_CNST_SYCrelated_instance1 = ooaofooa_CNST_SYC_AnyWhere1( ooaofooa_CNST_SYC_instance->Previous_Const_ID, ooaofooa_CNST_SYC_instance->Previous_DT_DT_ID );
  if ( ooaofooa_CNST_SYCrelated_instance1 ) {
    ooaofooa_CNST_SYC_R1505_Link_precedes( ooaofooa_CNST_SYCrelated_instance1, ooaofooa_CNST_SYC_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_CNST_SYC *
ooaofooa_CNST_SYC_AnyWhere1( Escher_UniqueID_t w_Const_ID, Escher_UniqueID_t w_DT_ID )
{
  ooaofooa_CNST_SYC * w; 
  Escher_Iterator_s iter_CNST_SYC;
  Escher_IteratorReset( &iter_CNST_SYC, &pG_ooaofooa_CNST_SYC_extent.active );
  while ( (w = (ooaofooa_CNST_SYC *) Escher_IteratorNext( &iter_CNST_SYC )) != 0 ) {
    if ( w->Const_ID == w_Const_ID && w->DT_ID == w_DT_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_DT TO CNST_SYC ACROSS R1500
 */
void
ooaofooa_CNST_SYC_R1500_Link_defines_the_type_of( ooaofooa_S_DT * part, ooaofooa_CNST_SYC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = part->DT_ID;
  form->S_DT_R1500_is_defined_by = part;
  Escher_SetInsertElement( &part->CNST_SYC_R1500_defines_the_type_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_DT FROM CNST_SYC ACROSS R1500
 */
void
ooaofooa_CNST_SYC_R1500_Unlink_defines_the_type_of( ooaofooa_S_DT * part, ooaofooa_CNST_SYC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->S_DT_R1500_is_defined_by = 0;
  Escher_SetRemoveElement( &part->CNST_SYC_R1500_defines_the_type_of, (Escher_ObjectSet_s *) form );
}

/* Accessors to CNST_SYC[R1502] subtypes */


/*
 * RELATE CNST_CSP TO CNST_SYC ACROSS R1504
 */
void
ooaofooa_CNST_SYC_R1504_Link_contains( ooaofooa_CNST_CSP * part, ooaofooa_CNST_SYC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Constant_Spec_ID = part->Constant_Spec_ID;
  form->CNST_CSP_R1504_is_contained_by = part;
  Escher_SetInsertElement( &part->CNST_SYC_R1504_contains, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE CNST_CSP FROM CNST_SYC ACROSS R1504
 */
void
ooaofooa_CNST_SYC_R1504_Unlink_contains( ooaofooa_CNST_CSP * part, ooaofooa_CNST_SYC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Constant_Spec_ID = 0;
  form->CNST_CSP_R1504_is_contained_by = 0;
  Escher_SetRemoveElement( &part->CNST_SYC_R1504_contains, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE <left> CNST_SYC TO <right> CNST_SYC ACROSS R1505.'succeeds'
 */
void
ooaofooa_CNST_SYC_R1505_Link_succeeds( ooaofooa_CNST_SYC * left, ooaofooa_CNST_SYC * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Previous_Const_ID = right->Const_ID;
  left->Previous_DT_DT_ID = right->DT_ID;
  left->CNST_SYC_R1505_succeeds = right; /* SR L1 */
  right->CNST_SYC_R1505_precedes = left; /* SR L2 */
}

/*
 * UNRELATE <left> CNST_SYC FROM <right> CNST_SYC ACROSS R1505.'succeeds'
 */
void
ooaofooa_CNST_SYC_R1505_Unlink_succeeds( ooaofooa_CNST_SYC * left, ooaofooa_CNST_SYC * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Previous_Const_ID = 0;
  left->Previous_DT_DT_ID = 0;
  left->CNST_SYC_R1505_succeeds = 0; /* SR U1 */
  right->CNST_SYC_R1505_precedes = 0; /* SR U2 */
}

/*
 * RELATE <left> CNST_SYC TO <right> CNST_SYC ACROSS R1505.'precedes'
 */
void
ooaofooa_CNST_SYC_R1505_Link_precedes( ooaofooa_CNST_SYC * left, ooaofooa_CNST_SYC * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Previous_Const_ID = left->Const_ID;
  right->Previous_DT_DT_ID = left->DT_ID;
  right->CNST_SYC_R1505_succeeds = left; /* SR L4 */
  left->CNST_SYC_R1505_precedes = right; /* SR L5 */
}

/*
 * UNRELATE <left> CNST_SYC FROM <right> CNST_SYC ACROSS R1505.'precedes'
 */
void
ooaofooa_CNST_SYC_R1505_Unlink_precedes( ooaofooa_CNST_SYC * left, ooaofooa_CNST_SYC * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Previous_Const_ID = 0;
  right->Previous_DT_DT_ID = 0;
  right->CNST_SYC_R1505_succeeds = 0; /* SR U4 */
  left->CNST_SYC_R1505_precedes = 0; /* SR U5 */
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_CNST_SYC_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_CNST_SYC * self = (ooaofooa_CNST_SYC *) instance;
  printf( "INSERT INTO CNST_SYC VALUES ( %ld,'%s','%s',%ld,%ld,%ld,%ld );\n",
    ((long)self->Const_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Name ) ? self->Name : "",
    ( 0 != self->Descrip ) ? self->Descrip : "",
    ((long)self->DT_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Constant_Spec_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Previous_Const_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Previous_DT_DT_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_CNST_SYC_container[ ooaofooa_CNST_SYC_MAX_EXTENT_SIZE ];
static ooaofooa_CNST_SYC ooaofooa_CNST_SYC_instances[ ooaofooa_CNST_SYC_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_CNST_SYC_extent = {
  {0,0}, {0,0}, &ooaofooa_CNST_SYC_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_CNST_SYC_instances,
  sizeof( ooaofooa_CNST_SYC ), 0, ooaofooa_CNST_SYC_MAX_EXTENT_SIZE
  };


