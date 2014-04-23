/*----------------------------------------------------------------------------
 * File:  ooaofooa_C_C_class.c
 *
 * Class:       Component  (C_C)
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
ooaofooa_C_C_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_C_C * self = (ooaofooa_C_C *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->NestedComponent_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->Name = Escher_strcpy( self->Name, avlstring[ 4 ] );
  {i_t i = avlstring[ 5 + 1 ] - avlstring[ 5 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 5 ][ i ]; }
  }
  self->Mult = Escher_atoi( avlstring[ 6 ] );
  self->Root_Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
  self->isRealized = ( '0' != *avlstring[ 8 ] );
  self->Realized_Class_Path = Escher_strcpy( self->Realized_Class_Path, avlstring[ 9 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_C_C_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_C_C * ooaofooa_C_C_instance = (ooaofooa_C_C *) instance;
  ooaofooa_PE_PE * ooaofooa_PE_PErelated_instance1 = (ooaofooa_PE_PE *) Escher_instance_cache[ (intptr_t) ooaofooa_C_C_instance->Id ];
  if ( ooaofooa_PE_PErelated_instance1 ) {
    ooaofooa_C_C_R8001_Link( ooaofooa_PE_PErelated_instance1, ooaofooa_C_C_instance );
  }
  {
  ooaofooa_CN_CIC * ooaofooa_CN_CICrelated_instance1 = (ooaofooa_CN_CIC *) Escher_instance_cache[ (intptr_t) ooaofooa_C_C_instance->NestedComponent_Id ];
  if ( ooaofooa_CN_CICrelated_instance1 ) {
    ooaofooa_C_C_R4203_Link_nests( ooaofooa_CN_CICrelated_instance1, ooaofooa_C_C_instance );
  }
  }
  {
  ooaofooa_CP_CP * ooaofooa_CP_CPrelated_instance1 = ooaofooa_CP_CP_AnyWhere1( ooaofooa_C_C_instance->Package_ID );
  if ( ooaofooa_CP_CPrelated_instance1 ) {
    ooaofooa_C_C_R4604_Link_may_contain( ooaofooa_CP_CPrelated_instance1, ooaofooa_C_C_instance );
  }
  }
  {
  ooaofooa_CP_CP * ooaofooa_CP_CPrelated_instance1 = ooaofooa_CP_CP_AnyWhere1( ooaofooa_C_C_instance->Root_Package_ID );
  if ( ooaofooa_CP_CPrelated_instance1 ) {
    ooaofooa_C_C_R4608_Link_is_root_for( ooaofooa_CP_CPrelated_instance1, ooaofooa_C_C_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_C_C *
ooaofooa_C_C_AnyWhere1( Escher_UniqueID_t w_Id )
{
  ooaofooa_C_C * w; 
  Escher_Iterator_s iter_C_C;
  Escher_IteratorReset( &iter_C_C, &pG_ooaofooa_C_C_extent.active );
  while ( (w = (ooaofooa_C_C *) Escher_IteratorNext( &iter_C_C )) != 0 ) {
    if ( w->Id == w_Id ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE CN_CIC TO C_C ACROSS R4203
 */
void
ooaofooa_C_C_R4203_Link_nests( ooaofooa_CN_CIC * part, ooaofooa_C_C * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->NestedComponent_Id = part->Id;
  form->CN_CIC_R4203_is_nested_through = part;
  part->C_C_R4203_nests = form;
}

/*
 * UNRELATE CN_CIC FROM C_C ACROSS R4203
 */
void
ooaofooa_C_C_R4203_Unlink_nests( ooaofooa_CN_CIC * part, ooaofooa_C_C * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->NestedComponent_Id = 0;
  form->CN_CIC_R4203_is_nested_through = 0;
  part->C_C_R4203_nests = 0;
}

/*
 * RELATE CP_CP TO C_C ACROSS R4604
 */
void
ooaofooa_C_C_R4604_Link_may_contain( ooaofooa_CP_CP * part, ooaofooa_C_C * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Package_ID = part->Package_ID;
  form->CP_CP_R4604_may_exist_in = part;
  Escher_SetInsertElement( &part->C_C_R4604_may_contain, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE CP_CP FROM C_C ACROSS R4604
 */
void
ooaofooa_C_C_R4604_Unlink_may_contain( ooaofooa_CP_CP * part, ooaofooa_C_C * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Package_ID = 0;
  form->CP_CP_R4604_may_exist_in = 0;
  Escher_SetRemoveElement( &part->C_C_R4604_may_contain, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE CP_CP TO C_C ACROSS R4608
 */
void
ooaofooa_C_C_R4608_Link_is_root_for( ooaofooa_CP_CP * part, ooaofooa_C_C * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Root_Package_ID = part->Package_ID;
  form->CP_CP_R4608_has_root = part;
  Escher_SetInsertElement( &part->C_C_R4608_is_root_for, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE CP_CP FROM C_C ACROSS R4608
 */
void
ooaofooa_C_C_R4608_Unlink_is_root_for( ooaofooa_CP_CP * part, ooaofooa_C_C * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Root_Package_ID = 0;
  form->CP_CP_R4608_has_root = 0;
  Escher_SetRemoveElement( &part->C_C_R4608_is_root_for, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE PE_PE TO C_C ACROSS R8001
 */
void
ooaofooa_C_C_R8001_Link( ooaofooa_PE_PE * supertype, ooaofooa_C_C * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Id = supertype->Element_ID;
  /* Optimized linkage for C_C->PE_PE[R8001] */
  subtype->PE_PE_R8001 = supertype;
  /* Optimized linkage for PE_PE->C_C[R8001] */
  supertype->R8001_subtype = subtype;
  supertype->R8001_object_id = ooaofooa_C_C_CLASS_NUMBER;
}


/*
 * UNRELATE PE_PE FROM C_C ACROSS R8001
 */
void
ooaofooa_C_C_R8001_Unlink( ooaofooa_PE_PE * supertype, ooaofooa_C_C * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->PE_PE_R8001 = 0;
  supertype->R8001_subtype = 0;
  supertype->R8001_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_C_C_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_C_C * self = (ooaofooa_C_C *) instance;
  printf( "INSERT INTO C_C VALUES ( %ld,%ld,%ld,'%s','%s',%d,%ld,%d,'%s' );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK),
    ((long)self->NestedComponent_Id & ESCHER_IDDUMP_MASK),
    ( 0 != self->Name ) ? self->Name : "",
    ( 0 != self->Descrip ) ? self->Descrip : "",
    self->Mult,
    ((long)self->Root_Package_ID & ESCHER_IDDUMP_MASK),
    self->isRealized,
    ( 0 != self->Realized_Class_Path ) ? self->Realized_Class_Path : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_C_C_container[ ooaofooa_C_C_MAX_EXTENT_SIZE ];
static ooaofooa_C_C ooaofooa_C_C_instances[ ooaofooa_C_C_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_C_C_extent = {
  {0,0}, {0,0}, &ooaofooa_C_C_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_C_C_instances,
  sizeof( ooaofooa_C_C ), 0, ooaofooa_C_C_MAX_EXTENT_SIZE
  };


