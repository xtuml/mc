/*----------------------------------------------------------------------------
 * File:  ooaofooa_C_SF_class.c
 *
 * Class:       Satisfaction  (C_SF)
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
ooaofooa_C_SF_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_C_SF * self = (ooaofooa_C_SF *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Requirement_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Provision_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  {i_t i = avlstring[ 4 + 1 ] - avlstring[ 4 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 4 ][ i ]; }
  }
  self->Label = Escher_strcpy( self->Label, avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_C_SF_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_C_SF * ooaofooa_C_SF_instance = (ooaofooa_C_SF *) instance;
  ooaofooa_PE_PE * ooaofooa_PE_PErelated_instance1 = (ooaofooa_PE_PE *) Escher_instance_cache[ (intptr_t) ooaofooa_C_SF_instance->Id ];
  if ( ooaofooa_PE_PErelated_instance1 ) {
    ooaofooa_C_SF_R8001_Link( ooaofooa_PE_PErelated_instance1, ooaofooa_C_SF_instance );
  }
  {
  ooaofooa_C_R * ooaofooa_C_Rrelated_instance1 = ooaofooa_C_R_AnyWhere1( ooaofooa_C_SF_instance->Requirement_Id );
  ooaofooa_C_P * ooaofooa_C_Prelated_instance2 = ooaofooa_C_P_AnyWhere1( ooaofooa_C_SF_instance->Provision_Id );
  if ( ooaofooa_C_Rrelated_instance1 && ooaofooa_C_Prelated_instance2 ) {
    ooaofooa_C_SF_R4002_Link( ooaofooa_C_Rrelated_instance1, ooaofooa_C_Prelated_instance2, ooaofooa_C_SF_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_C_SF *
ooaofooa_C_SF_AnyWhere1( Escher_UniqueID_t w_Id )
{
  ooaofooa_C_SF * w; 
  Escher_Iterator_s iter_C_SF;
  Escher_IteratorReset( &iter_C_SF, &pG_ooaofooa_C_SF_extent.active );
  while ( (w = (ooaofooa_C_SF *) Escher_IteratorNext( &iter_C_SF )) != 0 ) {
    if ( w->Id == w_Id ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE C_R TO C_P ACROSS R4002 USING C_SF
 */
void
ooaofooa_C_SF_R4002_Link( ooaofooa_C_R * aone, ooaofooa_C_P * aoth, ooaofooa_C_SF * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->Requirement_Id = aone->Requirement_Id;
  assr->Provision_Id = aoth->Provision_Id;
  /* Initialize optimized relationship storage extended attributes */
  assr->C_R_R4002_defines_required_satisfication = aone;
  assr->C_P_R4002_satisfies = aoth;
  Escher_SetInsertElement( &aone->C_SF_R4002, assr );
  Escher_SetInsertElement( &aoth->C_SF_R4002, assr );
}

/*
 * UNRELATE C_R FROM C_P ACROSS R4002 USING C_SF
 */
void
ooaofooa_C_SF_R4002_Unlink( ooaofooa_C_R * aone, ooaofooa_C_P * aoth, ooaofooa_C_SF * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->C_R_R4002_defines_required_satisfication = 0;
  assr->C_P_R4002_satisfies = 0;
  Escher_SetRemoveElement( &aone->C_SF_R4002, assr );
  Escher_SetRemoveElement( &aoth->C_SF_R4002, assr );
}

/*
 * RELATE PE_PE TO C_SF ACROSS R8001
 */
void
ooaofooa_C_SF_R8001_Link( ooaofooa_PE_PE * supertype, ooaofooa_C_SF * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Id = supertype->Element_ID;
  /* Optimized linkage for C_SF->PE_PE[R8001] */
  subtype->PE_PE_R8001 = supertype;
  /* Optimized linkage for PE_PE->C_SF[R8001] */
  supertype->R8001_subtype = subtype;
  supertype->R8001_object_id = ooaofooa_C_SF_CLASS_NUMBER;
}


/*
 * UNRELATE PE_PE FROM C_SF ACROSS R8001
 */
void
ooaofooa_C_SF_R8001_Unlink( ooaofooa_PE_PE * supertype, ooaofooa_C_SF * subtype )
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
ooaofooa_C_SF_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_C_SF * self = (ooaofooa_C_SF *) instance;
  printf( "INSERT INTO C_SF VALUES ( %ld,%ld,%ld,'%s','%s' );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    ((long)self->Requirement_Id & ESCHER_IDDUMP_MASK),
    ((long)self->Provision_Id & ESCHER_IDDUMP_MASK),
    ( 0 != self->Descrip ) ? self->Descrip : "",
    ( 0 != self->Label ) ? self->Label : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_C_SF_container[ ooaofooa_C_SF_MAX_EXTENT_SIZE ];
static ooaofooa_C_SF ooaofooa_C_SF_instances[ ooaofooa_C_SF_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_C_SF_extent = {
  {0,0}, {0,0}, &ooaofooa_C_SF_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_C_SF_instances,
  sizeof( ooaofooa_C_SF ), 0, ooaofooa_C_SF_MAX_EXTENT_SIZE
  };


