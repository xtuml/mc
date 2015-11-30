/*----------------------------------------------------------------------------
 * File:  ooaofooa_CL_IIR_class.c
 *
 * Class:       Imported Reference  (CL_IIR)
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
ooaofooa_CL_IIR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_CL_IIR * self = (ooaofooa_CL_IIR *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Id;
  self->Ref_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->ImportedComp_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->Delegation_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
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
void ooaofooa_CL_IIR_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_CL_IIR * ooaofooa_CL_IIR_instance = (ooaofooa_CL_IIR *) instance;
  ooaofooa_C_IR * ooaofooa_C_IRrelated_instance1 = (ooaofooa_C_IR *) Escher_instance_cache[ (intptr_t) ooaofooa_CL_IIR_instance->Ref_Id ];
  if ( ooaofooa_C_IRrelated_instance1 ) {
    ooaofooa_CL_IIR_R4701_Link_is_imported( ooaofooa_C_IRrelated_instance1, ooaofooa_CL_IIR_instance );
  }
  {
  ooaofooa_C_DG * ooaofooa_C_DGrelated_instance1 = ooaofooa_C_DG_AnyWhere1( ooaofooa_CL_IIR_instance->Delegation_Id );
  if ( ooaofooa_C_DGrelated_instance1 ) {
    ooaofooa_CL_IIR_R4704_Link_delivers_communication_through( ooaofooa_C_DGrelated_instance1, ooaofooa_CL_IIR_instance );
  }
  }
  {
  ooaofooa_CL_IC * ooaofooa_CL_ICrelated_instance1 = ooaofooa_CL_IC_AnyWhere1( ooaofooa_CL_IIR_instance->ImportedComp_Id );
  if ( ooaofooa_CL_ICrelated_instance1 ) {
    ooaofooa_CL_IIR_R4700_Link_communicates_through( ooaofooa_CL_ICrelated_instance1, ooaofooa_CL_IIR_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_CL_IIR *
ooaofooa_CL_IIR_AnyWhere1( Escher_UniqueID_t w_Id )
{
  ooaofooa_CL_IIR * w; 
  Escher_Iterator_s iter_CL_IIR;
  Escher_IteratorReset( &iter_CL_IIR, &pG_ooaofooa_CL_IIR_extent.active );
  while ( (w = (ooaofooa_CL_IIR *) Escher_IteratorNext( &iter_CL_IIR )) != 0 ) {
    if ( w->Id == w_Id ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE CL_IC TO CL_IIR ACROSS R4700
 */
void
ooaofooa_CL_IIR_R4700_Link_communicates_through( ooaofooa_CL_IC * part, ooaofooa_CL_IIR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->ImportedComp_Id = part->Id;
  form->CL_IC_R4700_originates_from = part;
  Escher_SetInsertElement( &part->CL_IIR_R4700_communicates_through, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE CL_IC FROM CL_IIR ACROSS R4700
 */
void
ooaofooa_CL_IIR_R4700_Unlink_communicates_through( ooaofooa_CL_IC * part, ooaofooa_CL_IIR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->ImportedComp_Id = 0;
  form->CL_IC_R4700_originates_from = 0;
  Escher_SetRemoveElement( &part->CL_IIR_R4700_communicates_through, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE C_IR TO CL_IIR ACROSS R4701
 */
void
ooaofooa_CL_IIR_R4701_Link_is_imported( ooaofooa_C_IR * part, ooaofooa_CL_IIR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Ref_Id = part->Id;
  form->C_IR_R4701_imports = part;
  Escher_SetInsertElement( &part->CL_IIR_R4701_is_imported, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE C_IR FROM CL_IIR ACROSS R4701
 */
void
ooaofooa_CL_IIR_R4701_Unlink_is_imported( ooaofooa_C_IR * part, ooaofooa_CL_IIR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Ref_Id = 0;
  form->C_IR_R4701_imports = 0;
  Escher_SetRemoveElement( &part->CL_IIR_R4701_is_imported, (Escher_ObjectSet_s *) form );
}

/* Accessors to CL_IIR[R4703] subtypes */


/*
 * RELATE C_DG TO CL_IIR ACROSS R4704
 */
void
ooaofooa_CL_IIR_R4704_Link_delivers_communication_through( ooaofooa_C_DG * part, ooaofooa_CL_IIR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Delegation_Id = part->Id;
  form->C_DG_R4704_accepts_communication_through = part;
  part->CL_IIR_R4704_delivers_communication_through = form;
}

/*
 * UNRELATE C_DG FROM CL_IIR ACROSS R4704
 */
void
ooaofooa_CL_IIR_R4704_Unlink_delivers_communication_through( ooaofooa_C_DG * part, ooaofooa_CL_IIR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Delegation_Id = 0;
  form->C_DG_R4704_accepts_communication_through = 0;
  part->CL_IIR_R4704_delivers_communication_through = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_CL_IIR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_CL_IIR * self = (ooaofooa_CL_IIR *) instance;
  printf( "INSERT INTO CL_IIR VALUES ( %ld,%ld,%ld,%ld,'%s','%s' );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    ((long)self->Ref_Id & ESCHER_IDDUMP_MASK),
    ((long)self->ImportedComp_Id & ESCHER_IDDUMP_MASK),
    ((long)self->Delegation_Id & ESCHER_IDDUMP_MASK),
    self->Name,
    self->Descrip );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_CL_IIR_container[ ooaofooa_CL_IIR_MAX_EXTENT_SIZE ];
static ooaofooa_CL_IIR ooaofooa_CL_IIR_instances[ ooaofooa_CL_IIR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_CL_IIR_extent = {
  {0,0}, {0,0}, &ooaofooa_CL_IIR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_CL_IIR_instances,
  sizeof( ooaofooa_CL_IIR ), 0, ooaofooa_CL_IIR_MAX_EXTENT_SIZE
  };


