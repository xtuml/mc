/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_EE_class.c
 *
 * Class:       External Entity  (S_EE)
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
ooaofooa_S_EE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_EE * self = (ooaofooa_S_EE *) instance;
  /* Initialize application analysis class attributes.  */
  self->EE_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Name = Escher_strcpy( self->Name, avlstring[ 2 ] );
  {i_t i = avlstring[ 3 + 1 ] - avlstring[ 3 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 3 ][ i ]; }
  }
  self->Key_Lett = Escher_strcpy( self->Key_Lett, avlstring[ 4 ] );
  self->Dom_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  self->Realized_Class_Path = Escher_strcpy( self->Realized_Class_Path, avlstring[ 6 ] );
  self->Label = Escher_strcpy( self->Label, avlstring[ 7 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_S_EE_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_EE * ooaofooa_S_EE_instance = (ooaofooa_S_EE *) instance;
  ooaofooa_PE_PE * ooaofooa_PE_PErelated_instance1 = (ooaofooa_PE_PE *) Escher_instance_cache[ (intptr_t) ooaofooa_S_EE_instance->EE_ID ];
  if ( ooaofooa_PE_PErelated_instance1 ) {
    ooaofooa_S_EE_R8001_Link( ooaofooa_PE_PErelated_instance1, ooaofooa_S_EE_instance );
  }
  {
  ooaofooa_S_DOM * ooaofooa_S_DOMrelated_instance1 = (ooaofooa_S_DOM *) Escher_instance_cache[ (intptr_t) ooaofooa_S_EE_instance->Dom_ID ];
  if ( ooaofooa_S_DOMrelated_instance1 ) {
    ooaofooa_S_EE_R8_Link_interacts_with( ooaofooa_S_DOMrelated_instance1, ooaofooa_S_EE_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_S_EE *
ooaofooa_S_EE_AnyWhere1( Escher_UniqueID_t w_EE_ID )
{
  ooaofooa_S_EE * w; 
  Escher_Iterator_s iter_S_EE;
  Escher_IteratorReset( &iter_S_EE, &pG_ooaofooa_S_EE_extent.active );
  while ( (w = (ooaofooa_S_EE *) Escher_IteratorNext( &iter_S_EE )) != 0 ) {
    if ( w->EE_ID == w_EE_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_DOM TO S_EE ACROSS R8
 */
void
ooaofooa_S_EE_R8_Link_interacts_with( ooaofooa_S_DOM * part, ooaofooa_S_EE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Dom_ID = part->Dom_ID;
  form->S_DOM_R8_interacts_with = part;
  Escher_SetInsertElement( &part->S_EE_R8_interacts_with, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_DOM FROM S_EE ACROSS R8
 */
void
ooaofooa_S_EE_R8_Unlink_interacts_with( ooaofooa_S_DOM * part, ooaofooa_S_EE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Dom_ID = 0;
  form->S_DOM_R8_interacts_with = 0;
  Escher_SetRemoveElement( &part->S_EE_R8_interacts_with, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE PE_PE TO S_EE ACROSS R8001
 */
void
ooaofooa_S_EE_R8001_Link( ooaofooa_PE_PE * supertype, ooaofooa_S_EE * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->EE_ID = supertype->Element_ID;
  /* Optimized linkage for S_EE->PE_PE[R8001] */
  subtype->PE_PE_R8001 = supertype;
  /* Optimized linkage for PE_PE->S_EE[R8001] */
  supertype->R8001_subtype = subtype;
  supertype->R8001_object_id = ooaofooa_S_EE_CLASS_NUMBER;
}


/*
 * UNRELATE PE_PE FROM S_EE ACROSS R8001
 */
void
ooaofooa_S_EE_R8001_Unlink( ooaofooa_PE_PE * supertype, ooaofooa_S_EE * subtype )
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
ooaofooa_S_EE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_EE * self = (ooaofooa_S_EE *) instance;
  printf( "INSERT INTO S_EE VALUES ( %ld,'%s','%s','%s',%ld,'%s','%s' );\n",
    ((long)self->EE_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Name ) ? self->Name : "",
    ( 0 != self->Descrip ) ? self->Descrip : "",
    ( 0 != self->Key_Lett ) ? self->Key_Lett : "",
    ((long)self->Dom_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Realized_Class_Path ) ? self->Realized_Class_Path : "",
    ( 0 != self->Label ) ? self->Label : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_EE_container[ ooaofooa_S_EE_MAX_EXTENT_SIZE ];
static ooaofooa_S_EE ooaofooa_S_EE_instances[ ooaofooa_S_EE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_EE_extent = {
  {0,0}, {0,0}, &ooaofooa_S_EE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_EE_instances,
  sizeof( ooaofooa_S_EE ), 0, ooaofooa_S_EE_MAX_EXTENT_SIZE
  };


