/*----------------------------------------------------------------------------
 * File:  ooaofooa_O_RATTR_class.c
 *
 * Class:       Referential Attribute  (O_RATTR)
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
ooaofooa_O_RATTR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_O_RATTR * self = (ooaofooa_O_RATTR *) instance;
  /* Initialize application analysis class attributes.  */
  self->Attr_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->BAttr_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->BObj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->Ref_Mode = Escher_atoi( avlstring[ 5 ] );
  self->BaseAttrName = Escher_strcpy( self->BaseAttrName, avlstring[ 6 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_O_RATTR_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_O_RATTR * ooaofooa_O_RATTR_instance = (ooaofooa_O_RATTR *) instance;
  ooaofooa_O_ATTR * ooaofooa_O_ATTRrelated_instance1 = ooaofooa_O_ATTR_AnyWhere1( ooaofooa_O_RATTR_instance->Attr_ID, ooaofooa_O_RATTR_instance->Obj_ID );
  if ( ooaofooa_O_ATTRrelated_instance1 ) {
    ooaofooa_O_RATTR_R106_Link( ooaofooa_O_ATTRrelated_instance1, ooaofooa_O_RATTR_instance );
  }
  {
  ooaofooa_O_BATTR * ooaofooa_O_BATTRrelated_instance1 = ooaofooa_O_BATTR_AnyWhere1( ooaofooa_O_RATTR_instance->BAttr_ID, ooaofooa_O_RATTR_instance->BObj_ID );
  if ( ooaofooa_O_BATTRrelated_instance1 ) {
    ooaofooa_O_RATTR_R113_Link_can_be_the_base_of( ooaofooa_O_BATTRrelated_instance1, ooaofooa_O_RATTR_instance );
  }
  }
  {
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_O_RATTR *
ooaofooa_O_RATTR_AnyWhere1( Escher_UniqueID_t w_Attr_ID, Escher_UniqueID_t w_Obj_ID )
{
  ooaofooa_O_RATTR * w; 
  Escher_Iterator_s iter_O_RATTR;
  Escher_IteratorReset( &iter_O_RATTR, &pG_ooaofooa_O_RATTR_extent.active );
  while ( (w = (ooaofooa_O_RATTR *) Escher_IteratorNext( &iter_O_RATTR )) != 0 ) {
    if ( w->Attr_ID == w_Attr_ID && w->Obj_ID == w_Obj_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE O_ATTR TO O_RATTR ACROSS R106
 */
void
ooaofooa_O_RATTR_R106_Link( ooaofooa_O_ATTR * supertype, ooaofooa_O_RATTR * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Attr_ID = supertype->Attr_ID;
  subtype->Obj_ID = supertype->Obj_ID;
  /* Optimized linkage for O_RATTR->O_ATTR[R106] */
  subtype->O_ATTR_R106 = supertype;
  /* Optimized linkage for O_ATTR->O_RATTR[R106] */
  supertype->R106_subtype = subtype;
  supertype->R106_object_id = ooaofooa_O_RATTR_CLASS_NUMBER;
}


/*
 * UNRELATE O_ATTR FROM O_RATTR ACROSS R106
 */
void
ooaofooa_O_RATTR_R106_Unlink( ooaofooa_O_ATTR * supertype, ooaofooa_O_RATTR * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->O_ATTR_R106 = 0;
  supertype->R106_subtype = 0;
  supertype->R106_object_id = 0;
}


/*
 * RELATE O_BATTR TO O_RATTR ACROSS R113
 */
void
ooaofooa_O_RATTR_R113_Link_can_be_the_base_of( ooaofooa_O_BATTR * part, ooaofooa_O_RATTR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->BAttr_ID = part->Attr_ID;
  form->BObj_ID = part->Obj_ID;
  form->O_BATTR_R113_navigates_back_to = part;
  Escher_SetInsertElement( &part->O_RATTR_R113_can_be_the_base_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_BATTR FROM O_RATTR ACROSS R113
 */
void
ooaofooa_O_RATTR_R113_Unlink_can_be_the_base_of( ooaofooa_O_BATTR * part, ooaofooa_O_RATTR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->BAttr_ID = 0;
  form->BObj_ID = 0;
  form->O_BATTR_R113_navigates_back_to = 0;
  Escher_SetRemoveElement( &part->O_RATTR_R113_can_be_the_base_of, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE O_RAVR TO O_RATTR ACROSS R119
 */
void
ooaofooa_O_RATTR_R119_Link_visited( ooaofooa_O_RAVR * part, ooaofooa_O_RATTR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->recorderId = part->recorderId;
  form->O_RAVR_R119 = part;
  Escher_SetInsertElement( &part->O_RATTR_R119_visited, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_RAVR FROM O_RATTR ACROSS R119
 */
void
ooaofooa_O_RATTR_R119_Unlink_visited( ooaofooa_O_RAVR * part, ooaofooa_O_RATTR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->recorderId = 0;
  form->O_RAVR_R119 = 0;
  Escher_SetRemoveElement( &part->O_RATTR_R119_visited, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_O_RATTR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_O_RATTR * self = (ooaofooa_O_RATTR *) instance;
  printf( "INSERT INTO O_RATTR VALUES ( %ld,%ld,%ld,%ld,%d,'%s' );\n",
    ((long)self->Attr_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK),
    ((long)self->BAttr_ID & ESCHER_IDDUMP_MASK),
    ((long)self->BObj_ID & ESCHER_IDDUMP_MASK),
    self->Ref_Mode,
    ( 0 != self->BaseAttrName ) ? self->BaseAttrName : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_O_RATTR_container[ ooaofooa_O_RATTR_MAX_EXTENT_SIZE ];
static ooaofooa_O_RATTR ooaofooa_O_RATTR_instances[ ooaofooa_O_RATTR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_O_RATTR_extent = {
  {0,0}, {0,0}, &ooaofooa_O_RATTR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_O_RATTR_instances,
  sizeof( ooaofooa_O_RATTR ), 0, ooaofooa_O_RATTR_MAX_EXTENT_SIZE
  };


