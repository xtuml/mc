/*----------------------------------------------------------------------------
 * File:  ooaofooa_C_R_class.c
 *
 * Class:       Requirement  (C_R)
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
ooaofooa_C_R_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_C_R * self = (ooaofooa_C_R *) instance;
  /* Initialize application analysis class attributes.  */
  self->Requirement_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  Escher_strcpy( self->Name, avlstring[ 2 ] );
  {i_t i = avlstring[ 3 + 1 ] - avlstring[ 3 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 3 ][ i ]; }
  }
  Escher_strcpy( self->InformalName, avlstring[ 4 ] );
  Escher_strcpy( self->reversePathFromComponent, avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_C_R_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_C_R * ooaofooa_C_R_instance = (ooaofooa_C_R *) instance;
  ooaofooa_C_IR * ooaofooa_C_IRrelated_instance1 = (ooaofooa_C_IR *) Escher_instance_cache[ (intptr_t) ooaofooa_C_R_instance->Requirement_Id ];
  if ( ooaofooa_C_IRrelated_instance1 ) {
    ooaofooa_C_R_R4009_Link( ooaofooa_C_IRrelated_instance1, ooaofooa_C_R_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_C_R *
ooaofooa_C_R_AnyWhere1( Escher_UniqueID_t w_Requirement_Id )
{
  ooaofooa_C_R * w; 
  Escher_Iterator_s iter_C_R;
  Escher_IteratorReset( &iter_C_R, &pG_ooaofooa_C_R_extent.active );
  while ( (w = (ooaofooa_C_R *) Escher_IteratorNext( &iter_C_R )) != 0 ) {
    if ( w->Requirement_Id == w_Requirement_Id ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE C_IR TO C_R ACROSS R4009
 */
void
ooaofooa_C_R_R4009_Link( ooaofooa_C_IR * supertype, ooaofooa_C_R * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Requirement_Id = supertype->Id;
  /* Optimized linkage for C_R->C_IR[R4009] */
  subtype->C_IR_R4009 = supertype;
  /* Optimized linkage for C_IR->C_R[R4009] */
  supertype->R4009_subtype = subtype;
  supertype->R4009_object_id = ooaofooa_C_R_CLASS_NUMBER;
}


/*
 * UNRELATE C_IR FROM C_R ACROSS R4009
 */
void
ooaofooa_C_R_R4009_Unlink( ooaofooa_C_IR * supertype, ooaofooa_C_R * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->C_IR_R4009 = 0;
  supertype->R4009_subtype = 0;
  supertype->R4009_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_C_R_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_C_R * self = (ooaofooa_C_R *) instance;
  printf( "INSERT INTO C_R VALUES ( %ld,'%s','%s','%s','%s' );\n",
    ((long)self->Requirement_Id & ESCHER_IDDUMP_MASK),
    self->Name,
    self->Descrip,
    self->InformalName,
    self->reversePathFromComponent );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_C_R_container[ ooaofooa_C_R_MAX_EXTENT_SIZE ];
static ooaofooa_C_R ooaofooa_C_R_instances[ ooaofooa_C_R_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_C_R_extent = {
  {0,0}, {0,0}, &ooaofooa_C_R_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_C_R_instances,
  sizeof( ooaofooa_C_R ), 0, ooaofooa_C_R_MAX_EXTENT_SIZE
  };


