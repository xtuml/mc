/*----------------------------------------------------------------------------
 * File:  ooaofooa_O_BATTR_class.c
 *
 * Class:       Base Attribute  (O_BATTR)
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
ooaofooa_O_BATTR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_O_BATTR * self = (ooaofooa_O_BATTR *) instance;
  /* Initialize application analysis class attributes.  */
  self->Attr_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_O_BATTR_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_O_BATTR * ooaofooa_O_BATTR_instance = (ooaofooa_O_BATTR *) instance;
  ooaofooa_O_ATTR * ooaofooa_O_ATTRrelated_instance1 = ooaofooa_O_ATTR_AnyWhere1( ooaofooa_O_BATTR_instance->Attr_ID, ooaofooa_O_BATTR_instance->Obj_ID );
  if ( ooaofooa_O_ATTRrelated_instance1 ) {
    ooaofooa_O_BATTR_R106_Link( ooaofooa_O_ATTRrelated_instance1, ooaofooa_O_BATTR_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_O_BATTR *
ooaofooa_O_BATTR_AnyWhere1( Escher_UniqueID_t w_Attr_ID, Escher_UniqueID_t w_Obj_ID )
{
  ooaofooa_O_BATTR * w; 
  Escher_Iterator_s iter_O_BATTR;
  Escher_IteratorReset( &iter_O_BATTR, &pG_ooaofooa_O_BATTR_extent.active );
  while ( (w = (ooaofooa_O_BATTR *) Escher_IteratorNext( &iter_O_BATTR )) != 0 ) {
    if ( w->Attr_ID == w_Attr_ID && w->Obj_ID == w_Obj_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE O_ATTR TO O_BATTR ACROSS R106
 */
void
ooaofooa_O_BATTR_R106_Link( ooaofooa_O_ATTR * supertype, ooaofooa_O_BATTR * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Attr_ID = supertype->Attr_ID;
  subtype->Obj_ID = supertype->Obj_ID;
  /* Optimized linkage for O_BATTR->O_ATTR[R106] */
  subtype->O_ATTR_R106 = supertype;
  /* Optimized linkage for O_ATTR->O_BATTR[R106] */
  supertype->R106_subtype = subtype;
  supertype->R106_object_id = ooaofooa_O_BATTR_CLASS_NUMBER;
}


/*
 * UNRELATE O_ATTR FROM O_BATTR ACROSS R106
 */
void
ooaofooa_O_BATTR_R106_Unlink( ooaofooa_O_ATTR * supertype, ooaofooa_O_BATTR * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->O_ATTR_R106 = 0;
  supertype->R106_subtype = 0;
  supertype->R106_object_id = 0;
}


/* Accessors to O_BATTR[R107] subtypes */


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_O_BATTR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_O_BATTR * self = (ooaofooa_O_BATTR *) instance;
  printf( "INSERT INTO O_BATTR VALUES ( %ld,%ld );\n",
    ((long)self->Attr_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_O_BATTR_container[ ooaofooa_O_BATTR_MAX_EXTENT_SIZE ];
static ooaofooa_O_BATTR ooaofooa_O_BATTR_instances[ ooaofooa_O_BATTR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_O_BATTR_extent = {
  {0,0}, {0,0}, &ooaofooa_O_BATTR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_O_BATTR_instances,
  sizeof( ooaofooa_O_BATTR ), 0, ooaofooa_O_BATTR_MAX_EXTENT_SIZE
  };


