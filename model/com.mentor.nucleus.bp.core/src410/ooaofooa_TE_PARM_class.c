/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_PARM_class.c
 *
 * Class:       Extended Parameter  (TE_PARM)
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
ooaofooa_TE_PARM_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_PARM * self = (ooaofooa_TE_PARM *) instance;
  /* Initialize application analysis class attributes.  */
  Escher_strcpy( self->Name, avlstring[ 1 ] );
  {i_t i = avlstring[ 2 + 1 ] - avlstring[ 2 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 2 ][ i ]; }
  }
  self->Order = Escher_atoi( avlstring[ 3 ] );
  Escher_strcpy( self->ParamBuffer, avlstring[ 4 ] );
  Escher_strcpy( self->OALParamBuffer, avlstring[ 5 ] );
  self->ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 6 ] );
  return_identifier = self->ID;
  self->nextID = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
  Escher_strcpy( self->GeneratedName, avlstring[ 8 ] );
  self->By_Ref = Escher_atoi( avlstring[ 9 ] );
  self->te_dtID = (Escher_iHandle_t) Escher_atoi( avlstring[ 10 ] );
  self->dimensions = Escher_atoi( avlstring[ 11 ] );
  self->te_dimID = (Escher_iHandle_t) Escher_atoi( avlstring[ 12 ] );
  Escher_strcpy( self->array_spec, avlstring[ 13 ] );
  self->AbaID = (Escher_iHandle_t) Escher_atoi( avlstring[ 14 ] );
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 15 ] );
  self->SMedi_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 16 ] );
  self->SParm_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 17 ] );
  self->TParm_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 18 ] );
  self->PP_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 19 ] );
  self->BParm_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 20 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_PARM_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_PARM * ooaofooa_TE_PARM_instance = (ooaofooa_TE_PARM *) instance;
  ooaofooa_S_BPARM * ooaofooa_S_BPARMrelated_instance1 = (ooaofooa_S_BPARM *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_PARM_instance->BParm_ID ];
  if ( ooaofooa_S_BPARMrelated_instance1 ) {
    ooaofooa_TE_PARM_R2028_Link( ooaofooa_S_BPARMrelated_instance1, ooaofooa_TE_PARM_instance );
  }
  {
  ooaofooa_O_TPARM * ooaofooa_O_TPARMrelated_instance1 = (ooaofooa_O_TPARM *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_PARM_instance->TParm_ID ];
  if ( ooaofooa_O_TPARMrelated_instance1 ) {
    ooaofooa_TE_PARM_R2029_Link( ooaofooa_O_TPARMrelated_instance1, ooaofooa_TE_PARM_instance );
  }
  }
  {
  ooaofooa_S_SPARM * ooaofooa_S_SPARMrelated_instance1 = (ooaofooa_S_SPARM *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_PARM_instance->SParm_ID ];
  if ( ooaofooa_S_SPARMrelated_instance1 ) {
    ooaofooa_TE_PARM_R2030_Link( ooaofooa_S_SPARMrelated_instance1, ooaofooa_TE_PARM_instance );
  }
  }
  {
  ooaofooa_SM_EVTDI * ooaofooa_SM_EVTDIrelated_instance1 = ooaofooa_SM_EVTDI_AnyWhere1( ooaofooa_TE_PARM_instance->SMedi_ID, ooaofooa_TE_PARM_instance->SM_ID );
  if ( ooaofooa_SM_EVTDIrelated_instance1 ) {
    ooaofooa_TE_PARM_R2031_Link( ooaofooa_SM_EVTDIrelated_instance1, ooaofooa_TE_PARM_instance );
  }
  }
  {
  ooaofooa_TE_PARM * ooaofooa_TE_PARMrelated_instance1 = (ooaofooa_TE_PARM *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_PARM_instance->nextID ];
  if ( ooaofooa_TE_PARMrelated_instance1 ) {
    ooaofooa_TE_PARM_R2041_Link_precedes( ooaofooa_TE_PARMrelated_instance1, ooaofooa_TE_PARM_instance );
  }
  }
  {
  ooaofooa_C_PP * ooaofooa_C_PPrelated_instance1 = (ooaofooa_C_PP *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_PARM_instance->PP_Id ];
  if ( ooaofooa_C_PPrelated_instance1 ) {
    ooaofooa_TE_PARM_R2048_Link( ooaofooa_C_PPrelated_instance1, ooaofooa_TE_PARM_instance );
  }
  }
  {
  ooaofooa_TE_DT * ooaofooa_TE_DTrelated_instance1 = (ooaofooa_TE_DT *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_PARM_instance->te_dtID ];
  if ( ooaofooa_TE_DTrelated_instance1 ) {
    ooaofooa_TE_PARM_R2049_Link( ooaofooa_TE_DTrelated_instance1, ooaofooa_TE_PARM_instance );
  }
  }
  {
  ooaofooa_TE_DIM * ooaofooa_TE_DIMrelated_instance1 = (ooaofooa_TE_DIM *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_PARM_instance->te_dimID ];
  if ( ooaofooa_TE_DIMrelated_instance1 ) {
    ooaofooa_TE_PARM_R2056_Link_diments( ooaofooa_TE_DIMrelated_instance1, ooaofooa_TE_PARM_instance );
  }
  }
  {
  ooaofooa_TE_ABA * ooaofooa_TE_ABArelated_instance1 = (ooaofooa_TE_ABA *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_PARM_instance->AbaID ];
  if ( ooaofooa_TE_ABArelated_instance1 ) {
    ooaofooa_TE_PARM_R2062_Link( ooaofooa_TE_ABArelated_instance1, ooaofooa_TE_PARM_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_TE_PARM *
ooaofooa_TE_PARM_AnyWhere1( Escher_UniqueID_t w_ID )
{
  ooaofooa_TE_PARM * w; 
  Escher_Iterator_s iter_TE_PARM;
  Escher_IteratorReset( &iter_TE_PARM, &pG_ooaofooa_TE_PARM_extent.active );
  while ( (w = (ooaofooa_TE_PARM *) Escher_IteratorNext( &iter_TE_PARM )) != 0 ) {
    if ( w->ID == w_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_BPARM TO TE_PARM ACROSS R2028
 */
void
ooaofooa_TE_PARM_R2028_Link( ooaofooa_S_BPARM * part, ooaofooa_TE_PARM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->BParm_ID = part->BParm_ID;
  form->S_BPARM_R2028 = part;
  part->TE_PARM_R2028 = form;
}

/*
 * UNRELATE S_BPARM FROM TE_PARM ACROSS R2028
 */
void
ooaofooa_TE_PARM_R2028_Unlink( ooaofooa_S_BPARM * part, ooaofooa_TE_PARM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->BParm_ID = 0;
  form->S_BPARM_R2028 = 0;
  part->TE_PARM_R2028 = 0;
}

/*
 * RELATE O_TPARM TO TE_PARM ACROSS R2029
 */
void
ooaofooa_TE_PARM_R2029_Link( ooaofooa_O_TPARM * part, ooaofooa_TE_PARM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->TParm_ID = part->TParm_ID;
  form->O_TPARM_R2029 = part;
  part->TE_PARM_R2029 = form;
}

/*
 * UNRELATE O_TPARM FROM TE_PARM ACROSS R2029
 */
void
ooaofooa_TE_PARM_R2029_Unlink( ooaofooa_O_TPARM * part, ooaofooa_TE_PARM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->TParm_ID = 0;
  form->O_TPARM_R2029 = 0;
  part->TE_PARM_R2029 = 0;
}

/*
 * RELATE S_SPARM TO TE_PARM ACROSS R2030
 */
void
ooaofooa_TE_PARM_R2030_Link( ooaofooa_S_SPARM * part, ooaofooa_TE_PARM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SParm_ID = part->SParm_ID;
  form->S_SPARM_R2030 = part;
  part->TE_PARM_R2030 = form;
}

/*
 * UNRELATE S_SPARM FROM TE_PARM ACROSS R2030
 */
void
ooaofooa_TE_PARM_R2030_Unlink( ooaofooa_S_SPARM * part, ooaofooa_TE_PARM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SParm_ID = 0;
  form->S_SPARM_R2030 = 0;
  part->TE_PARM_R2030 = 0;
}

/*
 * RELATE SM_EVTDI TO TE_PARM ACROSS R2031
 */
void
ooaofooa_TE_PARM_R2031_Link( ooaofooa_SM_EVTDI * part, ooaofooa_TE_PARM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = part->SM_ID;
  form->SMedi_ID = part->SMedi_ID;
  form->SM_EVTDI_R2031 = part;
  part->TE_PARM_R2031 = form;
}

/*
 * UNRELATE SM_EVTDI FROM TE_PARM ACROSS R2031
 */
void
ooaofooa_TE_PARM_R2031_Unlink( ooaofooa_SM_EVTDI * part, ooaofooa_TE_PARM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = 0;
  form->SMedi_ID = 0;
  form->SM_EVTDI_R2031 = 0;
  part->TE_PARM_R2031 = 0;
}

/*
 * RELATE <left> TE_PARM TO <right> TE_PARM ACROSS R2041.'precedes'
 */
void
ooaofooa_TE_PARM_R2041_Link_precedes( ooaofooa_TE_PARM * left, ooaofooa_TE_PARM * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->nextID = left->ID;
  left->TE_PARM_R2041_precedes = right; /* SR L1 */
  right->TE_PARM_R2041_succeeds = left; /* SR L2 */
}

/*
 * UNRELATE <left> TE_PARM FROM <right> TE_PARM ACROSS R2041.'precedes'
 */
void
ooaofooa_TE_PARM_R2041_Unlink_precedes( ooaofooa_TE_PARM * left, ooaofooa_TE_PARM * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->nextID = 0;
  left->TE_PARM_R2041_precedes = 0; /* SR U1 */
  right->TE_PARM_R2041_succeeds = 0; /* SR U2 */
}

/*
 * RELATE <left> TE_PARM TO <right> TE_PARM ACROSS R2041.'succeeds'
 */
void
ooaofooa_TE_PARM_R2041_Link_succeeds( ooaofooa_TE_PARM * left, ooaofooa_TE_PARM * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->nextID = right->ID;
  right->TE_PARM_R2041_precedes = left; /* SR L4 */
  left->TE_PARM_R2041_succeeds = right; /* SR L5 */
}

/*
 * UNRELATE <left> TE_PARM FROM <right> TE_PARM ACROSS R2041.'succeeds'
 */
void
ooaofooa_TE_PARM_R2041_Unlink_succeeds( ooaofooa_TE_PARM * left, ooaofooa_TE_PARM * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->nextID = 0;
  right->TE_PARM_R2041_precedes = 0; /* SR U4 */
  left->TE_PARM_R2041_succeeds = 0; /* SR U5 */
}

/*
 * RELATE C_PP TO TE_PARM ACROSS R2048
 */
void
ooaofooa_TE_PARM_R2048_Link( ooaofooa_C_PP * part, ooaofooa_TE_PARM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->PP_Id = part->PP_Id;
  form->C_PP_R2048 = part;
  part->TE_PARM_R2048 = form;
}

/*
 * UNRELATE C_PP FROM TE_PARM ACROSS R2048
 */
void
ooaofooa_TE_PARM_R2048_Unlink( ooaofooa_C_PP * part, ooaofooa_TE_PARM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->PP_Id = 0;
  form->C_PP_R2048 = 0;
  part->TE_PARM_R2048 = 0;
}

/*
 * RELATE TE_DT TO TE_PARM ACROSS R2049
 */
void
ooaofooa_TE_PARM_R2049_Link( ooaofooa_TE_DT * part, ooaofooa_TE_PARM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_dtID = part->ID;
  form->TE_DT_R2049 = part;
  Escher_SetInsertElement( &part->TE_PARM_R2049, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE TE_DT FROM TE_PARM ACROSS R2049
 */
void
ooaofooa_TE_PARM_R2049_Unlink( ooaofooa_TE_DT * part, ooaofooa_TE_PARM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_dtID = 0;
  form->TE_DT_R2049 = 0;
  Escher_SetRemoveElement( &part->TE_PARM_R2049, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE TE_DIM TO TE_PARM ACROSS R2056
 */
void
ooaofooa_TE_PARM_R2056_Link_diments( ooaofooa_TE_DIM * part, ooaofooa_TE_PARM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_dimID = part->te_dimID;
  form->TE_DIM_R2056_has_first = part;
  Escher_SetInsertElement( &part->TE_PARM_R2056_diments, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE TE_DIM FROM TE_PARM ACROSS R2056
 */
void
ooaofooa_TE_PARM_R2056_Unlink_diments( ooaofooa_TE_DIM * part, ooaofooa_TE_PARM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_dimID = 0;
  form->TE_DIM_R2056_has_first = 0;
  Escher_SetRemoveElement( &part->TE_PARM_R2056_diments, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE TE_ABA TO TE_PARM ACROSS R2062
 */
void
ooaofooa_TE_PARM_R2062_Link( ooaofooa_TE_ABA * part, ooaofooa_TE_PARM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->AbaID = part->AbaID;
  form->TE_ABA_R2062 = part;
  Escher_SetInsertElement( &part->TE_PARM_R2062, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE TE_ABA FROM TE_PARM ACROSS R2062
 */
void
ooaofooa_TE_PARM_R2062_Unlink( ooaofooa_TE_ABA * part, ooaofooa_TE_PARM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->AbaID = 0;
  form->TE_ABA_R2062 = 0;
  Escher_SetRemoveElement( &part->TE_PARM_R2062, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_PARM_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_PARM * self = (ooaofooa_TE_PARM *) instance;
  printf( "INSERT INTO TE_PARM VALUES ( '%s','%s',%d,'%s','%s',%ld,%ld,'%s',%d,%ld,%d,%ld,'%s',%ld,%ld,%ld,%ld,%ld,%ld,%ld );\n",
    self->Name,
    self->Descrip,
    self->Order,
    self->ParamBuffer,
    self->OALParamBuffer,
    ((long)self->ID & ESCHER_IDDUMP_MASK),
    ((long)self->nextID & ESCHER_IDDUMP_MASK),
    self->GeneratedName,
    self->By_Ref,
    ((long)self->te_dtID & ESCHER_IDDUMP_MASK),
    self->dimensions,
    ((long)self->te_dimID & ESCHER_IDDUMP_MASK),
    self->array_spec,
    ((long)self->AbaID & ESCHER_IDDUMP_MASK),
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMedi_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SParm_ID & ESCHER_IDDUMP_MASK),
    ((long)self->TParm_ID & ESCHER_IDDUMP_MASK),
    ((long)self->PP_Id & ESCHER_IDDUMP_MASK),
    ((long)self->BParm_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_PARM_container[ ooaofooa_TE_PARM_MAX_EXTENT_SIZE ];
static ooaofooa_TE_PARM ooaofooa_TE_PARM_instances[ ooaofooa_TE_PARM_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_PARM_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_PARM_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_PARM_instances,
  sizeof( ooaofooa_TE_PARM ), 0, ooaofooa_TE_PARM_MAX_EXTENT_SIZE
  };


