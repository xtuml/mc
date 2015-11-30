/*----------------------------------------------------------------------------
 * File:  ooaofooa_R_SUBSUP_class.c
 *
 * Class:       Subtype Supertype Association  (R_SUBSUP)
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
ooaofooa_R_SUBSUP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_R_SUBSUP * self = (ooaofooa_R_SUBSUP *) instance;
  /* Initialize application analysis class attributes.  */
  self->Rel_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_R_SUBSUP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_R_SUBSUP * ooaofooa_R_SUBSUP_instance = (ooaofooa_R_SUBSUP *) instance;
  ooaofooa_R_REL * ooaofooa_R_RELrelated_instance1 = ooaofooa_R_REL_AnyWhere1( ooaofooa_R_SUBSUP_instance->Rel_ID );
  if ( ooaofooa_R_RELrelated_instance1 ) {
    ooaofooa_R_SUBSUP_R206_Link( ooaofooa_R_RELrelated_instance1, ooaofooa_R_SUBSUP_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_R_SUBSUP *
ooaofooa_R_SUBSUP_AnyWhere1( Escher_UniqueID_t w_Rel_ID )
{
  ooaofooa_R_SUBSUP * w; 
  Escher_Iterator_s iter_R_SUBSUP;
  Escher_IteratorReset( &iter_R_SUBSUP, &pG_ooaofooa_R_SUBSUP_extent.active );
  while ( (w = (ooaofooa_R_SUBSUP *) Escher_IteratorNext( &iter_R_SUBSUP )) != 0 ) {
    if ( w->Rel_ID == w_Rel_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE R_REL TO R_SUBSUP ACROSS R206
 */
void
ooaofooa_R_SUBSUP_R206_Link( ooaofooa_R_REL * supertype, ooaofooa_R_SUBSUP * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Rel_ID = supertype->Rel_ID;
  /* Optimized linkage for R_SUBSUP->R_REL[R206] */
  subtype->R_REL_R206 = supertype;
  /* Optimized linkage for R_REL->R_SUBSUP[R206] */
  supertype->R206_subtype = subtype;
  supertype->R206_object_id = ooaofooa_R_SUBSUP_CLASS_NUMBER;
}


/*
 * UNRELATE R_REL FROM R_SUBSUP ACROSS R206
 */
void
ooaofooa_R_SUBSUP_R206_Unlink( ooaofooa_R_REL * supertype, ooaofooa_R_SUBSUP * subtype )
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
ooaofooa_R_SUBSUP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_R_SUBSUP * self = (ooaofooa_R_SUBSUP *) instance;
  printf( "INSERT INTO R_SUBSUP VALUES ( %ld );\n",
    ((long)self->Rel_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_R_SUBSUP_container[ ooaofooa_R_SUBSUP_MAX_EXTENT_SIZE ];
static ooaofooa_R_SUBSUP ooaofooa_R_SUBSUP_instances[ ooaofooa_R_SUBSUP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_R_SUBSUP_extent = {
  {0,0}, {0,0}, &ooaofooa_R_SUBSUP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_R_SUBSUP_instances,
  sizeof( ooaofooa_R_SUBSUP ), 0, ooaofooa_R_SUBSUP_MAX_EXTENT_SIZE
  };


