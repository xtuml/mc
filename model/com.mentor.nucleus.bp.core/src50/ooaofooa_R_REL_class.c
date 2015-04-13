/*----------------------------------------------------------------------------
 * File:  ooaofooa_R_REL_class.c
 *
 * Class:       Association  (R_REL)
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
ooaofooa_R_REL_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_R_REL * self = (ooaofooa_R_REL *) instance;
  /* Initialize application analysis class attributes.  */
  self->Rel_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Numb = Escher_atoi( avlstring[ 2 ] );
  {i_t i = avlstring[ 3 + 1 ] - avlstring[ 3 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 3 ][ i ]; }
  }
  self->SS_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_R_REL_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_R_REL * ooaofooa_R_REL_instance = (ooaofooa_R_REL *) instance;
  ooaofooa_PE_PE * ooaofooa_PE_PErelated_instance1 = (ooaofooa_PE_PE *) Escher_instance_cache[ (intptr_t) ooaofooa_R_REL_instance->Rel_ID ];
  if ( ooaofooa_PE_PErelated_instance1 ) {
    ooaofooa_R_REL_R8001_Link( ooaofooa_PE_PErelated_instance1, ooaofooa_R_REL_instance );
  }
  {
  ooaofooa_S_SS * ooaofooa_S_SSrelated_instance1 = (ooaofooa_S_SS *) Escher_instance_cache[ (intptr_t) ooaofooa_R_REL_instance->SS_ID ];
  if ( ooaofooa_S_SSrelated_instance1 ) {
    ooaofooa_R_REL_R4_Link_contains( ooaofooa_S_SSrelated_instance1, ooaofooa_R_REL_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_R_REL *
ooaofooa_R_REL_AnyWhere1( Escher_UniqueID_t w_Rel_ID )
{
  ooaofooa_R_REL * w; 
  Escher_Iterator_s iter_R_REL;
  Escher_IteratorReset( &iter_R_REL, &pG_ooaofooa_R_REL_extent.active );
  while ( (w = (ooaofooa_R_REL *) Escher_IteratorNext( &iter_R_REL )) != 0 ) {
    if ( w->Rel_ID == w_Rel_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_SS TO R_REL ACROSS R4
 */
void
ooaofooa_R_REL_R4_Link_contains( ooaofooa_S_SS * part, ooaofooa_R_REL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SS_ID = part->SS_ID;
  form->S_SS_R4_abstracts_associations_between_classes_in = part;
  Escher_SetInsertElement( &part->R_REL_R4_contains, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SS FROM R_REL ACROSS R4
 */
void
ooaofooa_R_REL_R4_Unlink_contains( ooaofooa_S_SS * part, ooaofooa_R_REL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SS_ID = 0;
  form->S_SS_R4_abstracts_associations_between_classes_in = 0;
  Escher_SetRemoveElement( &part->R_REL_R4_contains, (Escher_ObjectSet_s *) form );
}

/* Accessors to R_REL[R206] subtypes */


/*
 * RELATE PE_PE TO R_REL ACROSS R8001
 */
void
ooaofooa_R_REL_R8001_Link( ooaofooa_PE_PE * supertype, ooaofooa_R_REL * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Rel_ID = supertype->Element_ID;
  /* Optimized linkage for R_REL->PE_PE[R8001] */
  subtype->PE_PE_R8001 = supertype;
  /* Optimized linkage for PE_PE->R_REL[R8001] */
  supertype->R8001_subtype = subtype;
  supertype->R8001_object_id = ooaofooa_R_REL_CLASS_NUMBER;
}


/*
 * UNRELATE PE_PE FROM R_REL ACROSS R8001
 */
void
ooaofooa_R_REL_R8001_Unlink( ooaofooa_PE_PE * supertype, ooaofooa_R_REL * subtype )
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
ooaofooa_R_REL_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_R_REL * self = (ooaofooa_R_REL *) instance;
  printf( "INSERT INTO R_REL VALUES ( %ld,%d,'%s',%ld );\n",
    ((long)self->Rel_ID & ESCHER_IDDUMP_MASK),
    self->Numb,
    ( 0 != self->Descrip ) ? self->Descrip : "",
    ((long)self->SS_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_R_REL_container[ ooaofooa_R_REL_MAX_EXTENT_SIZE ];
static ooaofooa_R_REL ooaofooa_R_REL_instances[ ooaofooa_R_REL_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_R_REL_extent = {
  {0,0}, {0,0}, &ooaofooa_R_REL_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_R_REL_instances,
  sizeof( ooaofooa_R_REL ), 0, ooaofooa_R_REL_MAX_EXTENT_SIZE
  };


