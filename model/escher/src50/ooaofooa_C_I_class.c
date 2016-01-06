/*----------------------------------------------------------------------------
 * File:  ooaofooa_C_I_class.c
 *
 * Class:       Interface  (C_I)
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
ooaofooa_C_I_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_C_I * self = (ooaofooa_C_I *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Name = Escher_strcpy( self->Name, avlstring[ 3 ] );
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
void ooaofooa_C_I_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_C_I * ooaofooa_C_I_instance = (ooaofooa_C_I *) instance;
  ooaofooa_PE_PE * ooaofooa_PE_PErelated_instance1 = (ooaofooa_PE_PE *) Escher_instance_cache[ (intptr_t) ooaofooa_C_I_instance->Id ];
  if ( ooaofooa_PE_PErelated_instance1 ) {
    ooaofooa_C_I_R8001_Link( ooaofooa_PE_PErelated_instance1, ooaofooa_C_I_instance );
  }
  {
  ooaofooa_IP_IP * ooaofooa_IP_IPrelated_instance1 = ooaofooa_IP_IP_AnyWhere1( ooaofooa_C_I_instance->Package_ID );
  if ( ooaofooa_IP_IPrelated_instance1 ) {
    ooaofooa_C_I_R4303_Link_contains( ooaofooa_IP_IPrelated_instance1, ooaofooa_C_I_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_C_I *
ooaofooa_C_I_AnyWhere1( Escher_UniqueID_t w_Id )
{
  ooaofooa_C_I * w; 
  Escher_Iterator_s iter_C_I;
  Escher_IteratorReset( &iter_C_I, &pG_ooaofooa_C_I_extent.active );
  while ( (w = (ooaofooa_C_I *) Escher_IteratorNext( &iter_C_I )) != 0 ) {
    if ( w->Id == w_Id ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE IP_IP TO C_I ACROSS R4303
 */
void
ooaofooa_C_I_R4303_Link_contains( ooaofooa_IP_IP * part, ooaofooa_C_I * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Package_ID = part->Package_ID;
  form->IP_IP_R4303 = part;
  Escher_SetInsertElement( &part->C_I_R4303_contains, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE IP_IP FROM C_I ACROSS R4303
 */
void
ooaofooa_C_I_R4303_Unlink_contains( ooaofooa_IP_IP * part, ooaofooa_C_I * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Package_ID = 0;
  form->IP_IP_R4303 = 0;
  Escher_SetRemoveElement( &part->C_I_R4303_contains, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE PE_PE TO C_I ACROSS R8001
 */
void
ooaofooa_C_I_R8001_Link( ooaofooa_PE_PE * supertype, ooaofooa_C_I * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Id = supertype->Element_ID;
  /* Optimized linkage for C_I->PE_PE[R8001] */
  subtype->PE_PE_R8001 = supertype;
  /* Optimized linkage for PE_PE->C_I[R8001] */
  supertype->R8001_subtype = subtype;
  supertype->R8001_object_id = ooaofooa_C_I_CLASS_NUMBER;
}


/*
 * UNRELATE PE_PE FROM C_I ACROSS R8001
 */
void
ooaofooa_C_I_R8001_Unlink( ooaofooa_PE_PE * supertype, ooaofooa_C_I * subtype )
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
ooaofooa_C_I_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_C_I * self = (ooaofooa_C_I *) instance;
  printf( "INSERT INTO C_I VALUES ( %ld,%ld,'%s','%s' );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Name ) ? self->Name : "",
    ( 0 != self->Descrip ) ? self->Descrip : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_C_I_container[ ooaofooa_C_I_MAX_EXTENT_SIZE ];
static ooaofooa_C_I ooaofooa_C_I_instances[ ooaofooa_C_I_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_C_I_extent = {
  {0,0}, {0,0}, &ooaofooa_C_I_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_C_I_instances,
  sizeof( ooaofooa_C_I ), 0, ooaofooa_C_I_MAX_EXTENT_SIZE
  };


