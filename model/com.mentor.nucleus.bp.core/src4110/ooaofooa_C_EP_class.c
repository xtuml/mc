/*----------------------------------------------------------------------------
 * File:  ooaofooa_C_EP_class.c
 *
 * Class:       Executable Property  (C_EP)
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
ooaofooa_C_EP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_C_EP * self = (ooaofooa_C_EP *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Id;
  self->Interface_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Direction = Escher_atoi( avlstring[ 3 ] );
  self->Name = Escher_strcpy( self->Name, avlstring[ 4 ] );
  {i_t i = avlstring[ 5 + 1 ] - avlstring[ 5 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 5 ][ i ]; }
  }
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_C_EP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_C_EP * ooaofooa_C_EP_instance = (ooaofooa_C_EP *) instance;
  ooaofooa_C_I * ooaofooa_C_Irelated_instance1 = ooaofooa_C_I_AnyWhere1( ooaofooa_C_EP_instance->Interface_Id );
  if ( ooaofooa_C_Irelated_instance1 ) {
    ooaofooa_C_EP_R4003_Link_is_defined_by( ooaofooa_C_Irelated_instance1, ooaofooa_C_EP_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_C_EP *
ooaofooa_C_EP_AnyWhere1( Escher_UniqueID_t w_Id )
{
  ooaofooa_C_EP * w; 
  Escher_Iterator_s iter_C_EP;
  Escher_IteratorReset( &iter_C_EP, &pG_ooaofooa_C_EP_extent.active );
  while ( (w = (ooaofooa_C_EP *) Escher_IteratorNext( &iter_C_EP )) != 0 ) {
    if ( w->Id == w_Id ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE C_I TO C_EP ACROSS R4003
 */
void
ooaofooa_C_EP_R4003_Link_is_defined_by( ooaofooa_C_I * part, ooaofooa_C_EP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Interface_Id = part->Id;
  form->C_I_R4003_provides_signature_of = part;
  Escher_SetInsertElement( &part->C_EP_R4003_is_defined_by, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE C_I FROM C_EP ACROSS R4003
 */
void
ooaofooa_C_EP_R4003_Unlink_is_defined_by( ooaofooa_C_I * part, ooaofooa_C_EP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Interface_Id = 0;
  form->C_I_R4003_provides_signature_of = 0;
  Escher_SetRemoveElement( &part->C_EP_R4003_is_defined_by, (Escher_ObjectSet_s *) form );
}

/* Accessors to C_EP[R4004] subtypes */


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_C_EP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_C_EP * self = (ooaofooa_C_EP *) instance;
  printf( "INSERT INTO C_EP VALUES ( %ld,%ld,%d,'%s','%s' );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    ((long)self->Interface_Id & ESCHER_IDDUMP_MASK),
    self->Direction,
    ( 0 != self->Name ) ? self->Name : "",
    ( 0 != self->Descrip ) ? self->Descrip : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_C_EP_container[ ooaofooa_C_EP_MAX_EXTENT_SIZE ];
static ooaofooa_C_EP ooaofooa_C_EP_instances[ ooaofooa_C_EP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_C_EP_extent = {
  {0,0}, {0,0}, &ooaofooa_C_EP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_C_EP_instances,
  sizeof( ooaofooa_C_EP ), 0, ooaofooa_C_EP_MAX_EXTENT_SIZE
  };


