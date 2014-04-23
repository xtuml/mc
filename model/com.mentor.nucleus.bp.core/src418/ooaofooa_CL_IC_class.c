/*----------------------------------------------------------------------------
 * File:  ooaofooa_CL_IC_class.c
 *
 * Class:       Component Reference  (CL_IC)
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
ooaofooa_CL_IC_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_CL_IC * self = (ooaofooa_CL_IC *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->AssignedComp_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->ParentComp_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->Component_Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->Mult = Escher_atoi( avlstring[ 5 ] );
  self->ClassifierName = Escher_strcpy( self->ClassifierName, avlstring[ 6 ] );
  self->Name = Escher_strcpy( self->Name, avlstring[ 7 ] );
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
void ooaofooa_CL_IC_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_CL_IC * ooaofooa_CL_IC_instance = (ooaofooa_CL_IC *) instance;
  ooaofooa_PE_PE * ooaofooa_PE_PErelated_instance1 = (ooaofooa_PE_PE *) Escher_instance_cache[ (intptr_t) ooaofooa_CL_IC_instance->Id ];
  if ( ooaofooa_PE_PErelated_instance1 ) {
    ooaofooa_CL_IC_R8001_Link( ooaofooa_PE_PErelated_instance1, ooaofooa_CL_IC_instance );
  }
  {
  ooaofooa_C_C * ooaofooa_C_Crelated_instance1 = ooaofooa_C_C_AnyWhere1( ooaofooa_CL_IC_instance->AssignedComp_Id );
  if ( ooaofooa_C_Crelated_instance1 ) {
    ooaofooa_CL_IC_R4201_Link_is_represented_by( ooaofooa_C_Crelated_instance1, ooaofooa_CL_IC_instance );
  }
  }
  {
  ooaofooa_C_C * ooaofooa_C_Crelated_instance1 = ooaofooa_C_C_AnyWhere1( ooaofooa_CL_IC_instance->ParentComp_Id );
  if ( ooaofooa_C_Crelated_instance1 ) {
    ooaofooa_CL_IC_R4205_Link_nests( ooaofooa_C_Crelated_instance1, ooaofooa_CL_IC_instance );
  }
  }
  {
  ooaofooa_CP_CP * ooaofooa_CP_CPrelated_instance1 = ooaofooa_CP_CP_AnyWhere1( ooaofooa_CL_IC_instance->Component_Package_ID );
  if ( ooaofooa_CP_CPrelated_instance1 ) {
    ooaofooa_CL_IC_R4605_Link_contains( ooaofooa_CP_CPrelated_instance1, ooaofooa_CL_IC_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_CL_IC *
ooaofooa_CL_IC_AnyWhere1( Escher_UniqueID_t w_Id )
{
  ooaofooa_CL_IC * w; 
  Escher_Iterator_s iter_CL_IC;
  Escher_IteratorReset( &iter_CL_IC, &pG_ooaofooa_CL_IC_extent.active );
  while ( (w = (ooaofooa_CL_IC *) Escher_IteratorNext( &iter_CL_IC )) != 0 ) {
    if ( w->Id == w_Id ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE C_C TO CL_IC ACROSS R4201
 */
void
ooaofooa_CL_IC_R4201_Link_is_represented_by( ooaofooa_C_C * part, ooaofooa_CL_IC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->AssignedComp_Id = part->Id;
  form->C_C_R4201_represents = part;
  Escher_SetInsertElement( &part->CL_IC_R4201_is_represented_by, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE C_C FROM CL_IC ACROSS R4201
 */
void
ooaofooa_CL_IC_R4201_Unlink_is_represented_by( ooaofooa_C_C * part, ooaofooa_CL_IC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->AssignedComp_Id = 0;
  form->C_C_R4201_represents = 0;
  Escher_SetRemoveElement( &part->CL_IC_R4201_is_represented_by, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE C_C TO CL_IC ACROSS R4205
 */
void
ooaofooa_CL_IC_R4205_Link_nests( ooaofooa_C_C * part, ooaofooa_CL_IC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->ParentComp_Id = part->Id;
  form->C_C_R4205_nested_in = part;
  Escher_SetInsertElement( &part->CL_IC_R4205_nests, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE C_C FROM CL_IC ACROSS R4205
 */
void
ooaofooa_CL_IC_R4205_Unlink_nests( ooaofooa_C_C * part, ooaofooa_CL_IC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->ParentComp_Id = 0;
  form->C_C_R4205_nested_in = 0;
  Escher_SetRemoveElement( &part->CL_IC_R4205_nests, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE CP_CP TO CL_IC ACROSS R4605
 */
void
ooaofooa_CL_IC_R4605_Link_contains( ooaofooa_CP_CP * part, ooaofooa_CL_IC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Component_Package_ID = part->Package_ID;
  form->CP_CP_R4605_exists_in = part;
  Escher_SetInsertElement( &part->CL_IC_R4605_contains, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE CP_CP FROM CL_IC ACROSS R4605
 */
void
ooaofooa_CL_IC_R4605_Unlink_contains( ooaofooa_CP_CP * part, ooaofooa_CL_IC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Component_Package_ID = 0;
  form->CP_CP_R4605_exists_in = 0;
  Escher_SetRemoveElement( &part->CL_IC_R4605_contains, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE PE_PE TO CL_IC ACROSS R8001
 */
void
ooaofooa_CL_IC_R8001_Link( ooaofooa_PE_PE * supertype, ooaofooa_CL_IC * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Id = supertype->Element_ID;
  /* Optimized linkage for CL_IC->PE_PE[R8001] */
  subtype->PE_PE_R8001 = supertype;
  /* Optimized linkage for PE_PE->CL_IC[R8001] */
  supertype->R8001_subtype = subtype;
  supertype->R8001_object_id = ooaofooa_CL_IC_CLASS_NUMBER;
}


/*
 * UNRELATE PE_PE FROM CL_IC ACROSS R8001
 */
void
ooaofooa_CL_IC_R8001_Unlink( ooaofooa_PE_PE * supertype, ooaofooa_CL_IC * subtype )
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
ooaofooa_CL_IC_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_CL_IC * self = (ooaofooa_CL_IC *) instance;
  printf( "INSERT INTO CL_IC VALUES ( %ld,%ld,%ld,%ld,%d,'%s','%s','%s' );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    ((long)self->AssignedComp_Id & ESCHER_IDDUMP_MASK),
    ((long)self->ParentComp_Id & ESCHER_IDDUMP_MASK),
    ((long)self->Component_Package_ID & ESCHER_IDDUMP_MASK),
    self->Mult,
    ( 0 != self->ClassifierName ) ? self->ClassifierName : "",
    ( 0 != self->Name ) ? self->Name : "",
    ( 0 != self->Descrip ) ? self->Descrip : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_CL_IC_container[ ooaofooa_CL_IC_MAX_EXTENT_SIZE ];
static ooaofooa_CL_IC ooaofooa_CL_IC_instances[ ooaofooa_CL_IC_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_CL_IC_extent = {
  {0,0}, {0,0}, &ooaofooa_CL_IC_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_CL_IC_instances,
  sizeof( ooaofooa_CL_IC ), 0, ooaofooa_CL_IC_MAX_EXTENT_SIZE
  };


