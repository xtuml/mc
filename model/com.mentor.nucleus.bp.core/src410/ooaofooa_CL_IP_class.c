/*----------------------------------------------------------------------------
 * File:  ooaofooa_CL_IP_class.c
 *
 * Class:       Imported Provision  (CL_IP)
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
ooaofooa_CL_IP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_CL_IP * self = (ooaofooa_CL_IP *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  Escher_strcpy( self->Name, avlstring[ 2 ] );
  {i_t i = avlstring[ 3 + 1 ] - avlstring[ 3 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 3 ][ i ]; }
  }
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_CL_IP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_CL_IP * ooaofooa_CL_IP_instance = (ooaofooa_CL_IP *) instance;
  ooaofooa_CL_IIR * ooaofooa_CL_IIRrelated_instance1 = (ooaofooa_CL_IIR *) Escher_instance_cache[ (intptr_t) ooaofooa_CL_IP_instance->Id ];
  if ( ooaofooa_CL_IIRrelated_instance1 ) {
    ooaofooa_CL_IP_R4703_Link( ooaofooa_CL_IIRrelated_instance1, ooaofooa_CL_IP_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_CL_IP *
ooaofooa_CL_IP_AnyWhere1( Escher_UniqueID_t w_Id )
{
  ooaofooa_CL_IP * w; 
  Escher_Iterator_s iter_CL_IP;
  Escher_IteratorReset( &iter_CL_IP, &pG_ooaofooa_CL_IP_extent.active );
  while ( (w = (ooaofooa_CL_IP *) Escher_IteratorNext( &iter_CL_IP )) != 0 ) {
    if ( w->Id == w_Id ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE CL_IIR TO CL_IP ACROSS R4703
 */
void
ooaofooa_CL_IP_R4703_Link( ooaofooa_CL_IIR * supertype, ooaofooa_CL_IP * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Id = supertype->Id;
  /* Optimized linkage for CL_IP->CL_IIR[R4703] */
  subtype->CL_IIR_R4703 = supertype;
  /* Optimized linkage for CL_IIR->CL_IP[R4703] */
  supertype->R4703_subtype = subtype;
  supertype->R4703_object_id = ooaofooa_CL_IP_CLASS_NUMBER;
}


/*
 * UNRELATE CL_IIR FROM CL_IP ACROSS R4703
 */
void
ooaofooa_CL_IP_R4703_Unlink( ooaofooa_CL_IIR * supertype, ooaofooa_CL_IP * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->CL_IIR_R4703 = 0;
  supertype->R4703_subtype = 0;
  supertype->R4703_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_CL_IP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_CL_IP * self = (ooaofooa_CL_IP *) instance;
  printf( "INSERT INTO CL_IP VALUES ( %ld,'%s','%s' );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    self->Name,
    self->Descrip );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_CL_IP_container[ ooaofooa_CL_IP_MAX_EXTENT_SIZE ];
static ooaofooa_CL_IP ooaofooa_CL_IP_instances[ ooaofooa_CL_IP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_CL_IP_extent = {
  {0,0}, {0,0}, &ooaofooa_CL_IP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_CL_IP_instances,
  sizeof( ooaofooa_CL_IP ), 0, ooaofooa_CL_IP_MAX_EXTENT_SIZE
  };


