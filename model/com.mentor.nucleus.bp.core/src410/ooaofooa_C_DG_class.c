/*----------------------------------------------------------------------------
 * File:  ooaofooa_C_DG_class.c
 *
 * Class:       Delegation  (C_DG)
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
ooaofooa_C_DG_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_C_DG * self = (ooaofooa_C_DG *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  Escher_strcpy( self->Name, avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_C_DG_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_C_DG * ooaofooa_C_DG_instance = (ooaofooa_C_DG *) instance;
  ooaofooa_PE_PE * ooaofooa_PE_PErelated_instance1 = (ooaofooa_PE_PE *) Escher_instance_cache[ (intptr_t) ooaofooa_C_DG_instance->Id ];
  if ( ooaofooa_PE_PErelated_instance1 ) {
    ooaofooa_C_DG_R8001_Link( ooaofooa_PE_PErelated_instance1, ooaofooa_C_DG_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_C_DG *
ooaofooa_C_DG_AnyWhere1( Escher_UniqueID_t w_Id )
{
  ooaofooa_C_DG * w; 
  Escher_Iterator_s iter_C_DG;
  Escher_IteratorReset( &iter_C_DG, &pG_ooaofooa_C_DG_extent.active );
  while ( (w = (ooaofooa_C_DG *) Escher_IteratorNext( &iter_C_DG )) != 0 ) {
    if ( w->Id == w_Id ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE PE_PE TO C_DG ACROSS R8001
 */
void
ooaofooa_C_DG_R8001_Link( ooaofooa_PE_PE * supertype, ooaofooa_C_DG * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Id = supertype->Element_ID;
  /* Optimized linkage for C_DG->PE_PE[R8001] */
  subtype->PE_PE_R8001 = supertype;
  /* Optimized linkage for PE_PE->C_DG[R8001] */
  supertype->R8001_subtype = subtype;
  supertype->R8001_object_id = ooaofooa_C_DG_CLASS_NUMBER;
}


/*
 * UNRELATE PE_PE FROM C_DG ACROSS R8001
 */
void
ooaofooa_C_DG_R8001_Unlink( ooaofooa_PE_PE * supertype, ooaofooa_C_DG * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->PE_PE_R8001 = 0;
  supertype->R8001_subtype = 0;
  supertype->R8001_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_C_DG_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_C_DG * self = (ooaofooa_C_DG *) instance;
  printf( "INSERT INTO C_DG VALUES ( %ld,'%s' );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    self->Name );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_C_DG_container[ ooaofooa_C_DG_MAX_EXTENT_SIZE ];
static ooaofooa_C_DG ooaofooa_C_DG_instances[ ooaofooa_C_DG_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_C_DG_extent = {
  {0,0}, {0,0}, &ooaofooa_C_DG_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_C_DG_instances,
  sizeof( ooaofooa_C_DG ), 0, ooaofooa_C_DG_MAX_EXTENT_SIZE
  };


