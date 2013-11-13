/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_IIR_class.c
 *
 * Class:       Interface Instance  (TE_IIR)
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
ooaofooa_TE_IIR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_IIR * self = (ooaofooa_TE_IIR *) instance;
  /* Initialize application analysis class attributes.  */
  self->ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->ID;
  Escher_strcpy( self->component_name, avlstring[ 2 ] );
  Escher_strcpy( self->port_name, avlstring[ 3 ] );
  Escher_strcpy( self->interface_name, avlstring[ 4 ] );
  self->polymorphic = ( '0' != *avlstring[ 5 ] );
  Escher_strcpy( self->template_parameter_values, avlstring[ 6 ] );
  Escher_strcpy( self->C2C, avlstring[ 7 ] );
  self->cl_iirId = (Escher_iHandle_t) Escher_atoi( avlstring[ 8 ] );
  self->c_irId = (Escher_iHandle_t) Escher_atoi( avlstring[ 9 ] );
  self->te_poID = (Escher_iHandle_t) Escher_atoi( avlstring[ 10 ] );
  self->provider_te_iirID = (Escher_iHandle_t) Escher_atoi( avlstring[ 11 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_IIR_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_IIR * ooaofooa_TE_IIR_instance = (ooaofooa_TE_IIR *) instance;
  ooaofooa_CL_IIR * ooaofooa_CL_IIRrelated_instance1 = (ooaofooa_CL_IIR *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_IIR_instance->cl_iirId ];
  if ( ooaofooa_CL_IIRrelated_instance1 ) {
    ooaofooa_TE_IIR_R2013_Link( ooaofooa_CL_IIRrelated_instance1, ooaofooa_TE_IIR_instance );
  }
  {
  ooaofooa_C_IR * ooaofooa_C_IRrelated_instance1 = (ooaofooa_C_IR *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_IIR_instance->c_irId ];
  if ( ooaofooa_C_IRrelated_instance1 ) {
    ooaofooa_TE_IIR_R2046_Link( ooaofooa_C_IRrelated_instance1, ooaofooa_TE_IIR_instance );
  }
  }
  {
  ooaofooa_TE_PO * ooaofooa_TE_POrelated_instance1 = (ooaofooa_TE_PO *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_IIR_instance->te_poID ];
  if ( ooaofooa_TE_POrelated_instance1 ) {
    ooaofooa_TE_IIR_R2080_Link( ooaofooa_TE_POrelated_instance1, ooaofooa_TE_IIR_instance );
  }
  }
  {
  ooaofooa_TE_IIR * ooaofooa_TE_IIRrelated_instance1 = (ooaofooa_TE_IIR *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_IIR_instance->provider_te_iirID ];
  if ( ooaofooa_TE_IIRrelated_instance1 ) {
    ooaofooa_TE_IIR_R2081_Link_requires_or_delegates( ooaofooa_TE_IIRrelated_instance1, ooaofooa_TE_IIR_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_TE_IIR *
ooaofooa_TE_IIR_AnyWhere1( Escher_UniqueID_t w_ID )
{
  ooaofooa_TE_IIR * w; 
  Escher_Iterator_s iter_TE_IIR;
  Escher_IteratorReset( &iter_TE_IIR, &pG_ooaofooa_TE_IIR_extent.active );
  while ( (w = (ooaofooa_TE_IIR *) Escher_IteratorNext( &iter_TE_IIR )) != 0 ) {
    if ( w->ID == w_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE CL_IIR TO TE_IIR ACROSS R2013
 */
void
ooaofooa_TE_IIR_R2013_Link( ooaofooa_CL_IIR * part, ooaofooa_TE_IIR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->cl_iirId = part->Id;
  form->CL_IIR_R2013 = part;
  part->TE_IIR_R2013 = form;
}

/*
 * UNRELATE CL_IIR FROM TE_IIR ACROSS R2013
 */
void
ooaofooa_TE_IIR_R2013_Unlink( ooaofooa_CL_IIR * part, ooaofooa_TE_IIR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->cl_iirId = 0;
  form->CL_IIR_R2013 = 0;
  part->TE_IIR_R2013 = 0;
}

/*
 * RELATE C_IR TO TE_IIR ACROSS R2046
 */
void
ooaofooa_TE_IIR_R2046_Link( ooaofooa_C_IR * part, ooaofooa_TE_IIR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->c_irId = part->Id;
  form->C_IR_R2046 = part;
  part->TE_IIR_R2046 = form;
}

/*
 * UNRELATE C_IR FROM TE_IIR ACROSS R2046
 */
void
ooaofooa_TE_IIR_R2046_Unlink( ooaofooa_C_IR * part, ooaofooa_TE_IIR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->c_irId = 0;
  form->C_IR_R2046 = 0;
  part->TE_IIR_R2046 = 0;
}

/*
 * RELATE TE_PO TO TE_IIR ACROSS R2080
 */
void
ooaofooa_TE_IIR_R2080_Link( ooaofooa_TE_PO * part, ooaofooa_TE_IIR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_poID = part->ID;
  form->TE_PO_R2080 = part;
  Escher_SetInsertElement( &part->TE_IIR_R2080, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE TE_PO FROM TE_IIR ACROSS R2080
 */
void
ooaofooa_TE_IIR_R2080_Unlink( ooaofooa_TE_PO * part, ooaofooa_TE_IIR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_poID = 0;
  form->TE_PO_R2080 = 0;
  Escher_SetRemoveElement( &part->TE_IIR_R2080, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE <left> TE_IIR TO <right> TE_IIR ACROSS R2081.'requires or delegates'
 */
void
ooaofooa_TE_IIR_R2081_Link_requires_or_delegates( ooaofooa_TE_IIR * left, ooaofooa_TE_IIR * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->provider_te_iirID = left->ID;
  left->TE_IIR_R2081_requires_or_delegates = right; /* SR L1 */
  Escher_SetInsertElement( &right->TE_IIR_R2081_provides_or_is_delegated, left );
}

/*
 * UNRELATE <left> TE_IIR FROM <right> TE_IIR ACROSS R2081.'requires or delegates'
 */
void
ooaofooa_TE_IIR_R2081_Unlink_requires_or_delegates( ooaofooa_TE_IIR * left, ooaofooa_TE_IIR * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->provider_te_iirID = 0;
  left->TE_IIR_R2081_requires_or_delegates = 0; /* SR U1 */
  Escher_SetRemoveElement( &right->TE_IIR_R2081_provides_or_is_delegated, left ); /* SR U3 */
}

/*
 * RELATE <left> TE_IIR TO <right> TE_IIR ACROSS R2081.'provides or is delegated'
 */
void
ooaofooa_TE_IIR_R2081_Link_provides_or_is_delegated( ooaofooa_TE_IIR * left, ooaofooa_TE_IIR * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->provider_te_iirID = right->ID;
  right->TE_IIR_R2081_requires_or_delegates = left; /* SR L4 */
  Escher_SetInsertElement( &left->TE_IIR_R2081_provides_or_is_delegated, right );
}

/*
 * UNRELATE <left> TE_IIR FROM <right> TE_IIR ACROSS R2081.'provides or is delegated'
 */
void
ooaofooa_TE_IIR_R2081_Unlink_provides_or_is_delegated( ooaofooa_TE_IIR * left, ooaofooa_TE_IIR * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->provider_te_iirID = 0;
  right->TE_IIR_R2081_requires_or_delegates = 0; /* SR U4 */
  Escher_SetRemoveElement( &left->TE_IIR_R2081_provides_or_is_delegated, right ); /* SR U6 */
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_IIR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_IIR * self = (ooaofooa_TE_IIR *) instance;
  printf( "INSERT INTO TE_IIR VALUES ( %ld,'%s','%s','%s',%d,'%s','%s',%ld,%ld,%ld,%ld );\n",
    ((long)self->ID & ESCHER_IDDUMP_MASK),
    self->component_name,
    self->port_name,
    self->interface_name,
    self->polymorphic,
    self->template_parameter_values,
    self->C2C,
    ((long)self->cl_iirId & ESCHER_IDDUMP_MASK),
    ((long)self->c_irId & ESCHER_IDDUMP_MASK),
    ((long)self->te_poID & ESCHER_IDDUMP_MASK),
    ((long)self->provider_te_iirID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_IIR_container[ ooaofooa_TE_IIR_MAX_EXTENT_SIZE ];
static ooaofooa_TE_IIR ooaofooa_TE_IIR_instances[ ooaofooa_TE_IIR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_IIR_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_IIR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_IIR_instances,
  sizeof( ooaofooa_TE_IIR ), 0, ooaofooa_TE_IIR_MAX_EXTENT_SIZE
  };


