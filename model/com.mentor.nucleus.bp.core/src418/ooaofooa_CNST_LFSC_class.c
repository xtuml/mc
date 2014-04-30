/*----------------------------------------------------------------------------
 * File:  ooaofooa_CNST_LFSC_class.c
 *
 * Class:       Leaf Symbolic Constant  (CNST_LFSC)
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
ooaofooa_CNST_LFSC_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_CNST_LFSC * self = (ooaofooa_CNST_LFSC *) instance;
  /* Initialize application analysis class attributes.  */
  self->Const_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_CNST_LFSC_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_CNST_LFSC * ooaofooa_CNST_LFSC_instance = (ooaofooa_CNST_LFSC *) instance;
  ooaofooa_CNST_SYC * ooaofooa_CNST_SYCrelated_instance1 = ooaofooa_CNST_SYC_AnyWhere1( ooaofooa_CNST_LFSC_instance->Const_ID, ooaofooa_CNST_LFSC_instance->DT_ID );
  if ( ooaofooa_CNST_SYCrelated_instance1 ) {
    ooaofooa_CNST_LFSC_R1502_Link( ooaofooa_CNST_SYCrelated_instance1, ooaofooa_CNST_LFSC_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_CNST_LFSC *
ooaofooa_CNST_LFSC_AnyWhere1( Escher_UniqueID_t w_Const_ID, Escher_UniqueID_t w_DT_ID )
{
  ooaofooa_CNST_LFSC * w; 
  Escher_Iterator_s iter_CNST_LFSC;
  Escher_IteratorReset( &iter_CNST_LFSC, &pG_ooaofooa_CNST_LFSC_extent.active );
  while ( (w = (ooaofooa_CNST_LFSC *) Escher_IteratorNext( &iter_CNST_LFSC )) != 0 ) {
    if ( w->Const_ID == w_Const_ID && w->DT_ID == w_DT_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE CNST_SYC TO CNST_LFSC ACROSS R1502
 */
void
ooaofooa_CNST_LFSC_R1502_Link( ooaofooa_CNST_SYC * supertype, ooaofooa_CNST_LFSC * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Const_ID = supertype->Const_ID;
  subtype->DT_ID = supertype->DT_ID;
  /* Optimized linkage for CNST_LFSC->CNST_SYC[R1502] */
  subtype->CNST_SYC_R1502 = supertype;
  /* Optimized linkage for CNST_SYC->CNST_LFSC[R1502] */
  supertype->R1502_subtype = subtype;
  supertype->R1502_object_id = ooaofooa_CNST_LFSC_CLASS_NUMBER;
}


/*
 * UNRELATE CNST_SYC FROM CNST_LFSC ACROSS R1502
 */
void
ooaofooa_CNST_LFSC_R1502_Unlink( ooaofooa_CNST_SYC * supertype, ooaofooa_CNST_LFSC * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->CNST_SYC_R1502 = 0;
  supertype->R1502_subtype = 0;
  supertype->R1502_object_id = 0;
}


/* Accessors to CNST_LFSC[R1503] subtypes */


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_CNST_LFSC_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_CNST_LFSC * self = (ooaofooa_CNST_LFSC *) instance;
  printf( "INSERT INTO CNST_LFSC VALUES ( %ld,%ld );\n",
    ((long)self->Const_ID & ESCHER_IDDUMP_MASK),
    ((long)self->DT_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_CNST_LFSC_container[ ooaofooa_CNST_LFSC_MAX_EXTENT_SIZE ];
static ooaofooa_CNST_LFSC ooaofooa_CNST_LFSC_instances[ ooaofooa_CNST_LFSC_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_CNST_LFSC_extent = {
  {0,0}, {0,0}, &ooaofooa_CNST_LFSC_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_CNST_LFSC_instances,
  sizeof( ooaofooa_CNST_LFSC ), 0, ooaofooa_CNST_LFSC_MAX_EXTENT_SIZE
  };


