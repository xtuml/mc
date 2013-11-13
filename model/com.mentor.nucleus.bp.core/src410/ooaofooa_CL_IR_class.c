/*----------------------------------------------------------------------------
 * File:  ooaofooa_CL_IR_class.c
 *
 * Class:       Imported Requirement  (CL_IR)
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
ooaofooa_CL_IR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_CL_IR * self = (ooaofooa_CL_IR *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Satisfaction_Element_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  Escher_strcpy( self->Name, avlstring[ 3 ] );
  {i_t i = avlstring[ 4 + 1 ] - avlstring[ 4 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 4 ][ i ]; }
  }
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_CL_IR_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_CL_IR * ooaofooa_CL_IR_instance = (ooaofooa_CL_IR *) instance;
  ooaofooa_C_SF * ooaofooa_C_SFrelated_instance1 = ooaofooa_C_SF_AnyWhere1( ooaofooa_CL_IR_instance->Satisfaction_Element_Id );
  if ( ooaofooa_C_SFrelated_instance1 ) {
    ooaofooa_CL_IR_R4706_Link_satisfaction_made_with( ooaofooa_C_SFrelated_instance1, ooaofooa_CL_IR_instance );
  }
  {
  ooaofooa_CL_IIR * ooaofooa_CL_IIRrelated_instance1 = (ooaofooa_CL_IIR *) Escher_instance_cache[ (intptr_t) ooaofooa_CL_IR_instance->Id ];
  if ( ooaofooa_CL_IIRrelated_instance1 ) {
    ooaofooa_CL_IR_R4703_Link( ooaofooa_CL_IIRrelated_instance1, ooaofooa_CL_IR_instance );
  }
  }
}


/*
 * RELATE CL_IIR TO CL_IR ACROSS R4703
 */
void
ooaofooa_CL_IR_R4703_Link( ooaofooa_CL_IIR * supertype, ooaofooa_CL_IR * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Id = supertype->Id;
  /* Optimized linkage for CL_IR->CL_IIR[R4703] */
  subtype->CL_IIR_R4703 = supertype;
  /* Optimized linkage for CL_IIR->CL_IR[R4703] */
  supertype->R4703_subtype = subtype;
  supertype->R4703_object_id = ooaofooa_CL_IR_CLASS_NUMBER;
}


/*
 * UNRELATE CL_IIR FROM CL_IR ACROSS R4703
 */
void
ooaofooa_CL_IR_R4703_Unlink( ooaofooa_CL_IIR * supertype, ooaofooa_CL_IR * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->CL_IIR_R4703 = 0;
  supertype->R4703_subtype = 0;
  supertype->R4703_object_id = 0;
}


/*
 * RELATE C_SF TO CL_IR ACROSS R4706
 */
void
ooaofooa_CL_IR_R4706_Link_satisfaction_made_with( ooaofooa_C_SF * part, ooaofooa_CL_IR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Satisfaction_Element_Id = part->Id;
  form->C_SF_R4706_provides_satisfaction_through = part;
  part->CL_IR_R4706_satisfaction_made_with = form;
}

/*
 * UNRELATE C_SF FROM CL_IR ACROSS R4706
 */
void
ooaofooa_CL_IR_R4706_Unlink_satisfaction_made_with( ooaofooa_C_SF * part, ooaofooa_CL_IR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Satisfaction_Element_Id = 0;
  form->C_SF_R4706_provides_satisfaction_through = 0;
  part->CL_IR_R4706_satisfaction_made_with = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_CL_IR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_CL_IR * self = (ooaofooa_CL_IR *) instance;
  printf( "INSERT INTO CL_IR VALUES ( %ld,%ld,'%s','%s' );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    ((long)self->Satisfaction_Element_Id & ESCHER_IDDUMP_MASK),
    self->Name,
    self->Descrip );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_CL_IR_container[ ooaofooa_CL_IR_MAX_EXTENT_SIZE ];
static ooaofooa_CL_IR ooaofooa_CL_IR_instances[ ooaofooa_CL_IR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_CL_IR_extent = {
  {0,0}, {0,0}, &ooaofooa_CL_IR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_CL_IR_instances,
  sizeof( ooaofooa_CL_IR ), 0, ooaofooa_CL_IR_MAX_EXTENT_SIZE
  };


