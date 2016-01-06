/*----------------------------------------------------------------------------
 * File:  ooaofooa_O_NBATTR_class.c
 *
 * Class:       New Base Attribute  (O_NBATTR)
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
ooaofooa_O_NBATTR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_O_NBATTR * self = (ooaofooa_O_NBATTR *) instance;
  /* Initialize application analysis class attributes.  */
  self->Attr_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_O_NBATTR_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_O_NBATTR * ooaofooa_O_NBATTR_instance = (ooaofooa_O_NBATTR *) instance;
  ooaofooa_O_BATTR * ooaofooa_O_BATTRrelated_instance1 = ooaofooa_O_BATTR_AnyWhere1( ooaofooa_O_NBATTR_instance->Attr_ID, ooaofooa_O_NBATTR_instance->Obj_ID );
  if ( ooaofooa_O_BATTRrelated_instance1 ) {
    ooaofooa_O_NBATTR_R107_Link( ooaofooa_O_BATTRrelated_instance1, ooaofooa_O_NBATTR_instance );
  }
}


/*
 * RELATE O_BATTR TO O_NBATTR ACROSS R107
 */
void
ooaofooa_O_NBATTR_R107_Link( ooaofooa_O_BATTR * supertype, ooaofooa_O_NBATTR * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Attr_ID = supertype->Attr_ID;
  subtype->Obj_ID = supertype->Obj_ID;
  /* Optimized linkage for O_NBATTR->O_BATTR[R107] */
  subtype->O_BATTR_R107 = supertype;
  /* Optimized linkage for O_BATTR->O_NBATTR[R107] */
  supertype->R107_subtype = subtype;
  supertype->R107_object_id = ooaofooa_O_NBATTR_CLASS_NUMBER;
}


/*
 * UNRELATE O_BATTR FROM O_NBATTR ACROSS R107
 */
void
ooaofooa_O_NBATTR_R107_Unlink( ooaofooa_O_BATTR * supertype, ooaofooa_O_NBATTR * subtype )
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
ooaofooa_O_NBATTR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_O_NBATTR * self = (ooaofooa_O_NBATTR *) instance;
  printf( "INSERT INTO O_NBATTR VALUES ( %ld,%ld );\n",
    ((long)self->Attr_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_O_NBATTR_container[ ooaofooa_O_NBATTR_MAX_EXTENT_SIZE ];
static ooaofooa_O_NBATTR ooaofooa_O_NBATTR_instances[ ooaofooa_O_NBATTR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_O_NBATTR_extent = {
  {0,0}, {0,0}, &ooaofooa_O_NBATTR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_O_NBATTR_instances,
  sizeof( ooaofooa_O_NBATTR ), 0, ooaofooa_O_NBATTR_MAX_EXTENT_SIZE
  };


