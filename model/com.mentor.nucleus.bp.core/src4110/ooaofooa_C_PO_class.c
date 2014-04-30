/*----------------------------------------------------------------------------
 * File:  ooaofooa_C_PO_class.c
 *
 * Class:       Port  (C_PO)
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
ooaofooa_C_PO_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_C_PO * self = (ooaofooa_C_PO *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Id;
  self->Component_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Name = Escher_strcpy( self->Name, avlstring[ 3 ] );
  self->Mult = Escher_atoi( avlstring[ 4 ] );
  self->DoNotShowPortOnCanvas = ( '0' != *avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_C_PO_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_C_PO * ooaofooa_C_PO_instance = (ooaofooa_C_PO *) instance;
  ooaofooa_C_C * ooaofooa_C_Crelated_instance1 = ooaofooa_C_C_AnyWhere1( ooaofooa_C_PO_instance->Component_Id );
  if ( ooaofooa_C_Crelated_instance1 ) {
    ooaofooa_C_PO_R4010_Link_communicates_through( ooaofooa_C_Crelated_instance1, ooaofooa_C_PO_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_C_PO *
ooaofooa_C_PO_AnyWhere1( Escher_UniqueID_t w_Id )
{
  ooaofooa_C_PO * w; 
  Escher_Iterator_s iter_C_PO;
  Escher_IteratorReset( &iter_C_PO, &pG_ooaofooa_C_PO_extent.active );
  while ( (w = (ooaofooa_C_PO *) Escher_IteratorNext( &iter_C_PO )) != 0 ) {
    if ( w->Id == w_Id ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE C_C TO C_PO ACROSS R4010
 */
void
ooaofooa_C_PO_R4010_Link_communicates_through( ooaofooa_C_C * part, ooaofooa_C_PO * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Component_Id = part->Id;
  form->C_C_R4010_appears_in = part;
  Escher_SetInsertElement( &part->C_PO_R4010_communicates_through, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE C_C FROM C_PO ACROSS R4010
 */
void
ooaofooa_C_PO_R4010_Unlink_communicates_through( ooaofooa_C_C * part, ooaofooa_C_PO * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Component_Id = 0;
  form->C_C_R4010_appears_in = 0;
  Escher_SetRemoveElement( &part->C_PO_R4010_communicates_through, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_C_PO_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_C_PO * self = (ooaofooa_C_PO *) instance;
  printf( "INSERT INTO C_PO VALUES ( %ld,%ld,'%s',%d,%d );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    ((long)self->Component_Id & ESCHER_IDDUMP_MASK),
    ( 0 != self->Name ) ? self->Name : "",
    self->Mult,
    self->DoNotShowPortOnCanvas );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_C_PO_container[ ooaofooa_C_PO_MAX_EXTENT_SIZE ];
static ooaofooa_C_PO ooaofooa_C_PO_instances[ ooaofooa_C_PO_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_C_PO_extent = {
  {0,0}, {0,0}, &ooaofooa_C_PO_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_C_PO_instances,
  sizeof( ooaofooa_C_PO ), 0, ooaofooa_C_PO_MAX_EXTENT_SIZE
  };


