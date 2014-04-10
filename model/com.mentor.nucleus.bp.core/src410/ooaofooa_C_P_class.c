/*----------------------------------------------------------------------------
 * File:  ooaofooa_C_P_class.c
 *
 * Class:       Provision  (C_P)
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
ooaofooa_C_P_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_C_P * self = (ooaofooa_C_P *) instance;
  /* Initialize application analysis class attributes.  */
  self->Provision_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  Escher_strcpy( self->Name, avlstring[ 2 ] );
  Escher_strcpy( self->InformalName, avlstring[ 3 ] );
  {i_t i = avlstring[ 4 + 1 ] - avlstring[ 4 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 4 ][ i ]; }
  }
  Escher_strcpy( self->pathFromComponent, avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_C_P_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_C_P * ooaofooa_C_P_instance = (ooaofooa_C_P *) instance;
  ooaofooa_C_IR * ooaofooa_C_IRrelated_instance1 = (ooaofooa_C_IR *) Escher_instance_cache[ (intptr_t) ooaofooa_C_P_instance->Provision_Id ];
  if ( ooaofooa_C_IRrelated_instance1 ) {
    ooaofooa_C_P_R4009_Link( ooaofooa_C_IRrelated_instance1, ooaofooa_C_P_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_C_P *
ooaofooa_C_P_AnyWhere1( Escher_UniqueID_t w_Provision_Id )
{
  ooaofooa_C_P * w; 
  Escher_Iterator_s iter_C_P;
  Escher_IteratorReset( &iter_C_P, &pG_ooaofooa_C_P_extent.active );
  while ( (w = (ooaofooa_C_P *) Escher_IteratorNext( &iter_C_P )) != 0 ) {
    if ( w->Provision_Id == w_Provision_Id ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE C_IR TO C_P ACROSS R4009
 */
void
ooaofooa_C_P_R4009_Link( ooaofooa_C_IR * supertype, ooaofooa_C_P * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Provision_Id = supertype->Id;
  /* Optimized linkage for C_P->C_IR[R4009] */
  subtype->C_IR_R4009 = supertype;
  /* Optimized linkage for C_IR->C_P[R4009] */
  supertype->R4009_subtype = subtype;
  supertype->R4009_object_id = ooaofooa_C_P_CLASS_NUMBER;
}


/*
 * UNRELATE C_IR FROM C_P ACROSS R4009
 */
void
ooaofooa_C_P_R4009_Unlink( ooaofooa_C_IR * supertype, ooaofooa_C_P * subtype )
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
ooaofooa_C_P_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_C_P * self = (ooaofooa_C_P *) instance;
  printf( "INSERT INTO C_P VALUES ( %ld,'%s','%s','%s','%s' );\n",
    ((long)self->Provision_Id & ESCHER_IDDUMP_MASK),
    self->Name,
    self->InformalName,
    self->Descrip,
    self->pathFromComponent );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_C_P_container[ ooaofooa_C_P_MAX_EXTENT_SIZE ];
static ooaofooa_C_P ooaofooa_C_P_instances[ ooaofooa_C_P_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_C_P_extent = {
  {0,0}, {0,0}, &ooaofooa_C_P_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_C_P_instances,
  sizeof( ooaofooa_C_P ), 0, ooaofooa_C_P_MAX_EXTENT_SIZE
  };


