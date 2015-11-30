/*----------------------------------------------------------------------------
 * File:  ooaofooa_PE_PE_class.c
 *
 * Class:       Packageable Element  (PE_PE)
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
ooaofooa_PE_PE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_PE_PE * self = (ooaofooa_PE_PE *) instance;
  /* Initialize application analysis class attributes.  */
  self->Element_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Element_ID;
  self->Visibility = Escher_atoi( avlstring[ 2 ] );
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->Component_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->type = Escher_atoi( avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_PE_PE_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_PE_PE * ooaofooa_PE_PE_instance = (ooaofooa_PE_PE *) instance;
  ooaofooa_EP_PKG * ooaofooa_EP_PKGrelated_instance1 = ooaofooa_EP_PKG_AnyWhere1( ooaofooa_PE_PE_instance->Package_ID );
  if ( ooaofooa_EP_PKGrelated_instance1 ) {
    ooaofooa_PE_PE_R8000_Link_contains( ooaofooa_EP_PKGrelated_instance1, ooaofooa_PE_PE_instance );
  }
  {
  ooaofooa_C_C * ooaofooa_C_Crelated_instance1 = ooaofooa_C_C_AnyWhere1( ooaofooa_PE_PE_instance->Component_ID );
  if ( ooaofooa_C_Crelated_instance1 ) {
    ooaofooa_PE_PE_R8003_Link_contains( ooaofooa_C_Crelated_instance1, ooaofooa_PE_PE_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_PE_PE *
ooaofooa_PE_PE_AnyWhere1( Escher_UniqueID_t w_Element_ID )
{
  ooaofooa_PE_PE * w; 
  Escher_Iterator_s iter_PE_PE;
  Escher_IteratorReset( &iter_PE_PE, &pG_ooaofooa_PE_PE_extent.active );
  while ( (w = (ooaofooa_PE_PE *) Escher_IteratorNext( &iter_PE_PE )) != 0 ) {
    if ( w->Element_ID == w_Element_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE EP_PKG TO PE_PE ACROSS R8000
 */
void
ooaofooa_PE_PE_R8000_Link_contains( ooaofooa_EP_PKG * part, ooaofooa_PE_PE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Package_ID = part->Package_ID;
  form->EP_PKG_R8000_contained_by = part;
  Escher_SetInsertElement( &part->PE_PE_R8000_contains, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE EP_PKG FROM PE_PE ACROSS R8000
 */
void
ooaofooa_PE_PE_R8000_Unlink_contains( ooaofooa_EP_PKG * part, ooaofooa_PE_PE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Package_ID = 0;
  form->EP_PKG_R8000_contained_by = 0;
  Escher_SetRemoveElement( &part->PE_PE_R8000_contains, (Escher_ObjectSet_s *) form );
}

/* Accessors to PE_PE[R8001] subtypes */


/*
 * RELATE C_C TO PE_PE ACROSS R8003
 */
void
ooaofooa_PE_PE_R8003_Link_contains( ooaofooa_C_C * part, ooaofooa_PE_PE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Component_ID = part->Id;
  form->C_C_R8003_contained_in = part;
  Escher_SetInsertElement( &part->PE_PE_R8003_contains, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE C_C FROM PE_PE ACROSS R8003
 */
void
ooaofooa_PE_PE_R8003_Unlink_contains( ooaofooa_C_C * part, ooaofooa_PE_PE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Component_ID = 0;
  form->C_C_R8003_contained_in = 0;
  Escher_SetRemoveElement( &part->PE_PE_R8003_contains, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_PE_PE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_PE_PE * self = (ooaofooa_PE_PE *) instance;
  printf( "INSERT INTO PE_PE VALUES ( %ld,%d,%ld,%ld,%d );\n",
    ((long)self->Element_ID & ESCHER_IDDUMP_MASK),
    self->Visibility,
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Component_ID & ESCHER_IDDUMP_MASK),
    self->type );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_PE_PE_container[ ooaofooa_PE_PE_MAX_EXTENT_SIZE ];
static ooaofooa_PE_PE ooaofooa_PE_PE_instances[ ooaofooa_PE_PE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_PE_PE_extent = {
  {0,0}, {0,0}, &ooaofooa_PE_PE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_PE_PE_instances,
  sizeof( ooaofooa_PE_PE ), 0, ooaofooa_PE_PE_MAX_EXTENT_SIZE
  };


