/*----------------------------------------------------------------------------
 * File:  ooaofooa_A_AP_class.c
 *
 * Class:       Activity Partition  (A_AP)
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
ooaofooa_A_AP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_A_AP * self = (ooaofooa_A_AP *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
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
void ooaofooa_A_AP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_A_AP * ooaofooa_A_AP_instance = (ooaofooa_A_AP *) instance;
  ooaofooa_PE_PE * ooaofooa_PE_PErelated_instance1 = (ooaofooa_PE_PE *) Escher_instance_cache[ (intptr_t) ooaofooa_A_AP_instance->Id ];
  if ( ooaofooa_PE_PErelated_instance1 ) {
    ooaofooa_A_AP_R8001_Link( ooaofooa_PE_PErelated_instance1, ooaofooa_A_AP_instance );
  }
  {
  ooaofooa_A_A * ooaofooa_A_Arelated_instance1 = ooaofooa_A_A_AnyWhere1( ooaofooa_A_AP_instance->Package_ID );
  if ( ooaofooa_A_Arelated_instance1 ) {
    ooaofooa_A_AP_R1111_Link_group( ooaofooa_A_Arelated_instance1, ooaofooa_A_AP_instance );
  }
  }
}


/*
 * RELATE A_A TO A_AP ACROSS R1111
 */
void
ooaofooa_A_AP_R1111_Link_group( ooaofooa_A_A * part, ooaofooa_A_AP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Package_ID = part->Package_ID;
  form->A_A_R1111 = part;
  Escher_SetInsertElement( &part->A_AP_R1111_group, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE A_A FROM A_AP ACROSS R1111
 */
void
ooaofooa_A_AP_R1111_Unlink_group( ooaofooa_A_A * part, ooaofooa_A_AP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Package_ID = 0;
  form->A_A_R1111 = 0;
  Escher_SetRemoveElement( &part->A_AP_R1111_group, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE PE_PE TO A_AP ACROSS R8001
 */
void
ooaofooa_A_AP_R8001_Link( ooaofooa_PE_PE * supertype, ooaofooa_A_AP * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Id = supertype->Element_ID;
  /* Optimized linkage for A_AP->PE_PE[R8001] */
  subtype->PE_PE_R8001 = supertype;
  /* Optimized linkage for PE_PE->A_AP[R8001] */
  supertype->R8001_subtype = subtype;
  supertype->R8001_object_id = ooaofooa_A_AP_CLASS_NUMBER;
}


/*
 * UNRELATE PE_PE FROM A_AP ACROSS R8001
 */
void
ooaofooa_A_AP_R8001_Unlink( ooaofooa_PE_PE * supertype, ooaofooa_A_AP * subtype )
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
ooaofooa_A_AP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_A_AP * self = (ooaofooa_A_AP *) instance;
  printf( "INSERT INTO A_AP VALUES ( %ld,%ld,'%s','%s' );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK),
    self->Name,
    self->Descrip );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_A_AP_container[ ooaofooa_A_AP_MAX_EXTENT_SIZE ];
static ooaofooa_A_AP ooaofooa_A_AP_instances[ ooaofooa_A_AP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_A_AP_extent = {
  {0,0}, {0,0}, &ooaofooa_A_AP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_A_AP_instances,
  sizeof( ooaofooa_A_AP ), 0, ooaofooa_A_AP_MAX_EXTENT_SIZE
  };


