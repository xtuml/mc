/*----------------------------------------------------------------------------
 * File:  ooaofooa_R_SIMP_class.c
 *
 * Class:       Simple Association  (R_SIMP)
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
ooaofooa_R_SIMP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_R_SIMP * self = (ooaofooa_R_SIMP *) instance;
  /* Initialize application analysis class attributes.  */
  self->Rel_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_R_SIMP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_R_SIMP * ooaofooa_R_SIMP_instance = (ooaofooa_R_SIMP *) instance;
  ooaofooa_R_REL * ooaofooa_R_RELrelated_instance1 = ooaofooa_R_REL_AnyWhere1( ooaofooa_R_SIMP_instance->Rel_ID );
  if ( ooaofooa_R_RELrelated_instance1 ) {
    ooaofooa_R_SIMP_R206_Link( ooaofooa_R_RELrelated_instance1, ooaofooa_R_SIMP_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_R_SIMP *
ooaofooa_R_SIMP_AnyWhere1( Escher_UniqueID_t w_Rel_ID )
{
  ooaofooa_R_SIMP * w; 
  Escher_Iterator_s iter_R_SIMP;
  Escher_IteratorReset( &iter_R_SIMP, &pG_ooaofooa_R_SIMP_extent.active );
  while ( (w = (ooaofooa_R_SIMP *) Escher_IteratorNext( &iter_R_SIMP )) != 0 ) {
    if ( w->Rel_ID == w_Rel_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE R_REL TO R_SIMP ACROSS R206
 */
void
ooaofooa_R_SIMP_R206_Link( ooaofooa_R_REL * supertype, ooaofooa_R_SIMP * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Rel_ID = supertype->Rel_ID;
  /* Optimized linkage for R_SIMP->R_REL[R206] */
  subtype->R_REL_R206 = supertype;
  /* Optimized linkage for R_REL->R_SIMP[R206] */
  supertype->R206_subtype = subtype;
  supertype->R206_object_id = ooaofooa_R_SIMP_CLASS_NUMBER;
}


/*
 * UNRELATE R_REL FROM R_SIMP ACROSS R206
 */
void
ooaofooa_R_SIMP_R206_Unlink( ooaofooa_R_REL * supertype, ooaofooa_R_SIMP * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->R_REL_R206 = 0;
  supertype->R206_subtype = 0;
  supertype->R206_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_R_SIMP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_R_SIMP * self = (ooaofooa_R_SIMP *) instance;
  printf( "INSERT INTO R_SIMP VALUES ( %ld );\n",
    ((long)self->Rel_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_R_SIMP_container[ ooaofooa_R_SIMP_MAX_EXTENT_SIZE ];
static ooaofooa_R_SIMP ooaofooa_R_SIMP_instances[ ooaofooa_R_SIMP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_R_SIMP_extent = {
  {0,0}, {0,0}, &ooaofooa_R_SIMP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_R_SIMP_instances,
  sizeof( ooaofooa_R_SIMP ), 0, ooaofooa_R_SIMP_MAX_EXTENT_SIZE
  };


