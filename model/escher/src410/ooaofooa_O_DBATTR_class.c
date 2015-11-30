/*----------------------------------------------------------------------------
 * File:  ooaofooa_O_DBATTR_class.c
 *
 * Class:       Derived Base Attribute  (O_DBATTR)
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
ooaofooa_O_DBATTR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_O_DBATTR * self = (ooaofooa_O_DBATTR *) instance;
  /* Initialize application analysis class attributes.  */
  self->Attr_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  {i_t i = avlstring[ 3 + 1 ] - avlstring[ 3 ];
  self->Action_Semantics_internal = ( i > 0 ) ? (c_t *) Escher_malloc( i ) : "";
  while ( --i >= 0 ) { self->Action_Semantics_internal[ i ] = avlstring[ 3 ][ i ]; }
  }
  self->Suc_Pars = Escher_atoi( avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_O_DBATTR_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_O_DBATTR * ooaofooa_O_DBATTR_instance = (ooaofooa_O_DBATTR *) instance;
  ooaofooa_O_BATTR * ooaofooa_O_BATTRrelated_instance1 = ooaofooa_O_BATTR_AnyWhere1( ooaofooa_O_DBATTR_instance->Attr_ID, ooaofooa_O_DBATTR_instance->Obj_ID );
  if ( ooaofooa_O_BATTRrelated_instance1 ) {
    ooaofooa_O_DBATTR_R107_Link( ooaofooa_O_BATTRrelated_instance1, ooaofooa_O_DBATTR_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_O_DBATTR *
ooaofooa_O_DBATTR_AnyWhere1( Escher_UniqueID_t w_Attr_ID, Escher_UniqueID_t w_Obj_ID )
{
  ooaofooa_O_DBATTR * w; 
  Escher_Iterator_s iter_O_DBATTR;
  Escher_IteratorReset( &iter_O_DBATTR, &pG_ooaofooa_O_DBATTR_extent.active );
  while ( (w = (ooaofooa_O_DBATTR *) Escher_IteratorNext( &iter_O_DBATTR )) != 0 ) {
    if ( w->Attr_ID == w_Attr_ID && w->Obj_ID == w_Obj_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE O_BATTR TO O_DBATTR ACROSS R107
 */
void
ooaofooa_O_DBATTR_R107_Link( ooaofooa_O_BATTR * supertype, ooaofooa_O_DBATTR * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Attr_ID = supertype->Attr_ID;
  subtype->Obj_ID = supertype->Obj_ID;
  /* Optimized linkage for O_DBATTR->O_BATTR[R107] */
  subtype->O_BATTR_R107 = supertype;
  /* Optimized linkage for O_BATTR->O_DBATTR[R107] */
  supertype->R107_subtype = subtype;
  supertype->R107_object_id = ooaofooa_O_DBATTR_CLASS_NUMBER;
}


/*
 * UNRELATE O_BATTR FROM O_DBATTR ACROSS R107
 */
void
ooaofooa_O_DBATTR_R107_Unlink( ooaofooa_O_BATTR * supertype, ooaofooa_O_DBATTR * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->O_BATTR_R107 = 0;
  supertype->R107_subtype = 0;
  supertype->R107_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_O_DBATTR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_O_DBATTR * self = (ooaofooa_O_DBATTR *) instance;
  printf( "INSERT INTO O_DBATTR VALUES ( %ld,%ld,'%s',%d );\n",
    ((long)self->Attr_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK),
    self->Action_Semantics_internal,
    self->Suc_Pars );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_O_DBATTR_container[ ooaofooa_O_DBATTR_MAX_EXTENT_SIZE ];
static ooaofooa_O_DBATTR ooaofooa_O_DBATTR_instances[ ooaofooa_O_DBATTR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_O_DBATTR_extent = {
  {0,0}, {0,0}, &ooaofooa_O_DBATTR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_O_DBATTR_instances,
  sizeof( ooaofooa_O_DBATTR ), 0, ooaofooa_O_DBATTR_MAX_EXTENT_SIZE
  };


