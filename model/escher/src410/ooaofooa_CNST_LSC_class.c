/*----------------------------------------------------------------------------
 * File:  ooaofooa_CNST_LSC_class.c
 *
 * Class:       Literal Symbolic Constant  (CNST_LSC)
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
ooaofooa_CNST_LSC_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_CNST_LSC * self = (ooaofooa_CNST_LSC *) instance;
  /* Initialize application analysis class attributes.  */
  self->Const_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  Escher_strcpy( self->Value, avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_CNST_LSC_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_CNST_LSC * ooaofooa_CNST_LSC_instance = (ooaofooa_CNST_LSC *) instance;
  ooaofooa_CNST_LFSC * ooaofooa_CNST_LFSCrelated_instance1 = ooaofooa_CNST_LFSC_AnyWhere1( ooaofooa_CNST_LSC_instance->Const_ID, ooaofooa_CNST_LSC_instance->DT_ID );
  if ( ooaofooa_CNST_LFSCrelated_instance1 ) {
    ooaofooa_CNST_LSC_R1503_Link( ooaofooa_CNST_LFSCrelated_instance1, ooaofooa_CNST_LSC_instance );
  }
}


/*
 * RELATE CNST_LFSC TO CNST_LSC ACROSS R1503
 */
void
ooaofooa_CNST_LSC_R1503_Link( ooaofooa_CNST_LFSC * supertype, ooaofooa_CNST_LSC * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Const_ID = supertype->Const_ID;
  subtype->DT_ID = supertype->DT_ID;
  /* Optimized linkage for CNST_LSC->CNST_LFSC[R1503] */
  subtype->CNST_LFSC_R1503 = supertype;
  /* Optimized linkage for CNST_LFSC->CNST_LSC[R1503] */
  supertype->R1503_subtype = subtype;
  supertype->R1503_object_id = ooaofooa_CNST_LSC_CLASS_NUMBER;
}


/*
 * UNRELATE CNST_LFSC FROM CNST_LSC ACROSS R1503
 */
void
ooaofooa_CNST_LSC_R1503_Unlink( ooaofooa_CNST_LFSC * supertype, ooaofooa_CNST_LSC * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->CNST_LFSC_R1503 = 0;
  supertype->R1503_subtype = 0;
  supertype->R1503_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_CNST_LSC_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_CNST_LSC * self = (ooaofooa_CNST_LSC *) instance;
  printf( "INSERT INTO CNST_LSC VALUES ( %ld,%ld,'%s' );\n",
    ((long)self->Const_ID & ESCHER_IDDUMP_MASK),
    ((long)self->DT_ID & ESCHER_IDDUMP_MASK),
    self->Value );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_CNST_LSC_container[ ooaofooa_CNST_LSC_MAX_EXTENT_SIZE ];
static ooaofooa_CNST_LSC ooaofooa_CNST_LSC_instances[ ooaofooa_CNST_LSC_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_CNST_LSC_extent = {
  {0,0}, {0,0}, &ooaofooa_CNST_LSC_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_CNST_LSC_instances,
  sizeof( ooaofooa_CNST_LSC ), 0, ooaofooa_CNST_LSC_MAX_EXTENT_SIZE
  };


