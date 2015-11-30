/*----------------------------------------------------------------------------
 * File:  ooaofooa_CL_POR_class.c
 *
 * Class:       Port Reference  (CL_POR)
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
ooaofooa_CL_POR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_CL_POR * self = (ooaofooa_CL_POR *) instance;
  /* Initialize application analysis class attributes.  */
  self->CL_IC_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->C_PO_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Name = Escher_strcpy( self->Name, avlstring[ 3 ] );
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  return_identifier = self->Id;
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_CL_POR_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_CL_POR * ooaofooa_CL_POR_instance = (ooaofooa_CL_POR *) instance;
  ooaofooa_C_PO * ooaofooa_C_POrelated_instance1 = (ooaofooa_C_PO *) Escher_instance_cache[ (intptr_t) ooaofooa_CL_POR_instance->C_PO_Id ];
  if ( ooaofooa_C_POrelated_instance1 ) {
    ooaofooa_CL_POR_R4709_Link_is_referenced_by( ooaofooa_C_POrelated_instance1, ooaofooa_CL_POR_instance );
  }
  {
  ooaofooa_CL_IC * ooaofooa_CL_ICrelated_instance1 = ooaofooa_CL_IC_AnyWhere1( ooaofooa_CL_POR_instance->CL_IC_Id );
  if ( ooaofooa_CL_ICrelated_instance1 ) {
    ooaofooa_CL_POR_R4707_Link_communicates_through( ooaofooa_CL_ICrelated_instance1, ooaofooa_CL_POR_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_CL_POR *
ooaofooa_CL_POR_AnyWhere1( Escher_UniqueID_t w_Id )
{
  ooaofooa_CL_POR * w; 
  Escher_Iterator_s iter_CL_POR;
  Escher_IteratorReset( &iter_CL_POR, &pG_ooaofooa_CL_POR_extent.active );
  while ( (w = (ooaofooa_CL_POR *) Escher_IteratorNext( &iter_CL_POR )) != 0 ) {
    if ( w->Id == w_Id ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE CL_IC TO CL_POR ACROSS R4707
 */
void
ooaofooa_CL_POR_R4707_Link_communicates_through( ooaofooa_CL_IC * part, ooaofooa_CL_POR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->CL_IC_Id = part->Id;
  form->CL_IC_R4707_orginates_from = part;
  Escher_SetInsertElement( &part->CL_POR_R4707_communicates_through, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE CL_IC FROM CL_POR ACROSS R4707
 */
void
ooaofooa_CL_POR_R4707_Unlink_communicates_through( ooaofooa_CL_IC * part, ooaofooa_CL_POR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->CL_IC_Id = 0;
  form->CL_IC_R4707_orginates_from = 0;
  Escher_SetRemoveElement( &part->CL_POR_R4707_communicates_through, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE C_PO TO CL_POR ACROSS R4709
 */
void
ooaofooa_CL_POR_R4709_Link_is_referenced_by( ooaofooa_C_PO * part, ooaofooa_CL_POR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->C_PO_Id = part->Id;
  form->C_PO_R4709_references = part;
  Escher_SetInsertElement( &part->CL_POR_R4709_is_referenced_by, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE C_PO FROM CL_POR ACROSS R4709
 */
void
ooaofooa_CL_POR_R4709_Unlink_is_referenced_by( ooaofooa_C_PO * part, ooaofooa_CL_POR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->C_PO_Id = 0;
  form->C_PO_R4709_references = 0;
  Escher_SetRemoveElement( &part->CL_POR_R4709_is_referenced_by, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_CL_POR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_CL_POR * self = (ooaofooa_CL_POR *) instance;
  printf( "INSERT INTO CL_POR VALUES ( %ld,%ld,'%s',%ld );\n",
    ((long)self->CL_IC_Id & ESCHER_IDDUMP_MASK),
    ((long)self->C_PO_Id & ESCHER_IDDUMP_MASK),
    ( 0 != self->Name ) ? self->Name : "",
    ((long)self->Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_CL_POR_container[ ooaofooa_CL_POR_MAX_EXTENT_SIZE ];
static ooaofooa_CL_POR ooaofooa_CL_POR_instances[ ooaofooa_CL_POR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_CL_POR_extent = {
  {0,0}, {0,0}, &ooaofooa_CL_POR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_CL_POR_instances,
  sizeof( ooaofooa_CL_POR ), 0, ooaofooa_CL_POR_MAX_EXTENT_SIZE
  };


