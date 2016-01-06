/*----------------------------------------------------------------------------
 * File:  ooaofooa_O_OBJ_class.c
 *
 * Class:       Model Class  (O_OBJ)
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
ooaofooa_O_OBJ_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_O_OBJ * self = (ooaofooa_O_OBJ *) instance;
  /* Initialize application analysis class attributes.  */
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Name = Escher_strcpy( self->Name, avlstring[ 2 ] );
  self->Numb = Escher_atoi( avlstring[ 3 ] );
  self->Key_Lett = Escher_strcpy( self->Key_Lett, avlstring[ 4 ] );
  {i_t i = avlstring[ 5 + 1 ] - avlstring[ 5 ];
  self->Descrip = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Descrip[ i ] = avlstring[ 5 ][ i ]; }
  }
  self->SS_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 6 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_O_OBJ_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_O_OBJ * ooaofooa_O_OBJ_instance = (ooaofooa_O_OBJ *) instance;
  ooaofooa_S_SS * ooaofooa_S_SSrelated_instance1 = (ooaofooa_S_SS *) Escher_instance_cache[ (intptr_t) ooaofooa_O_OBJ_instance->SS_ID ];
  if ( ooaofooa_S_SSrelated_instance1 ) {
    ooaofooa_O_OBJ_R2_Link_is_decomposed_into( ooaofooa_S_SSrelated_instance1, ooaofooa_O_OBJ_instance );
  }
  {
  ooaofooa_PE_PE * ooaofooa_PE_PErelated_instance1 = (ooaofooa_PE_PE *) Escher_instance_cache[ (intptr_t) ooaofooa_O_OBJ_instance->Obj_ID ];
  if ( ooaofooa_PE_PErelated_instance1 ) {
    ooaofooa_O_OBJ_R8001_Link( ooaofooa_PE_PErelated_instance1, ooaofooa_O_OBJ_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_O_OBJ *
ooaofooa_O_OBJ_AnyWhere1( Escher_UniqueID_t w_Obj_ID )
{
  ooaofooa_O_OBJ * w; 
  Escher_Iterator_s iter_O_OBJ;
  Escher_IteratorReset( &iter_O_OBJ, &pG_ooaofooa_O_OBJ_extent.active );
  while ( (w = (ooaofooa_O_OBJ *) Escher_IteratorNext( &iter_O_OBJ )) != 0 ) {
    if ( w->Obj_ID == w_Obj_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_SS TO O_OBJ ACROSS R2
 */
void
ooaofooa_O_OBJ_R2_Link_is_decomposed_into( ooaofooa_S_SS * part, ooaofooa_O_OBJ * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SS_ID = part->SS_ID;
  form->S_SS_R2_is_contained_in = part;
  Escher_SetInsertElement( &part->O_OBJ_R2_is_decomposed_into, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SS FROM O_OBJ ACROSS R2
 */
void
ooaofooa_O_OBJ_R2_Unlink_is_decomposed_into( ooaofooa_S_SS * part, ooaofooa_O_OBJ * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SS_ID = 0;
  form->S_SS_R2_is_contained_in = 0;
  Escher_SetRemoveElement( &part->O_OBJ_R2_is_decomposed_into, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE PE_PE TO O_OBJ ACROSS R8001
 */
void
ooaofooa_O_OBJ_R8001_Link( ooaofooa_PE_PE * supertype, ooaofooa_O_OBJ * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Obj_ID = supertype->Element_ID;
  /* Optimized linkage for O_OBJ->PE_PE[R8001] */
  subtype->PE_PE_R8001 = supertype;
  /* Optimized linkage for PE_PE->O_OBJ[R8001] */
  supertype->R8001_subtype = subtype;
  supertype->R8001_object_id = ooaofooa_O_OBJ_CLASS_NUMBER;
}


/*
 * UNRELATE PE_PE FROM O_OBJ ACROSS R8001
 */
void
ooaofooa_O_OBJ_R8001_Unlink( ooaofooa_PE_PE * supertype, ooaofooa_O_OBJ * subtype )
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
ooaofooa_O_OBJ_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_O_OBJ * self = (ooaofooa_O_OBJ *) instance;
  printf( "INSERT INTO O_OBJ VALUES ( %ld,'%s',%d,'%s','%s',%ld );\n",
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Name ) ? self->Name : "",
    self->Numb,
    ( 0 != self->Key_Lett ) ? self->Key_Lett : "",
    ( 0 != self->Descrip ) ? self->Descrip : "",
    ((long)self->SS_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_O_OBJ_container[ ooaofooa_O_OBJ_MAX_EXTENT_SIZE ];
static ooaofooa_O_OBJ ooaofooa_O_OBJ_instances[ ooaofooa_O_OBJ_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_O_OBJ_extent = {
  {0,0}, {0,0}, &ooaofooa_O_OBJ_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_O_OBJ_instances,
  sizeof( ooaofooa_O_OBJ ), 0, ooaofooa_O_OBJ_MAX_EXTENT_SIZE
  };


