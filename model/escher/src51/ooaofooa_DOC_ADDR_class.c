/*----------------------------------------------------------------------------
 * File:  ooaofooa_DOC_ADDR_class.c
 *
 * Class:       address  (DOC_ADDR)
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
ooaofooa_DOC_ADDR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_DOC_ADDR * self = (ooaofooa_DOC_ADDR *) instance;
  /* Initialize application analysis class attributes.  */
  self->street = Escher_strcpy( self->street, avlstring[ 1 ] );
  self->city = Escher_strcpy( self->city, avlstring[ 2 ] );
  self->state = Escher_strcpy( self->state, avlstring[ 3 ] );
  self->postcode = Escher_strcpy( self->postcode, avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_DOC_ADDR_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_DOC_ADDR * ooaofooa_DOC_ADDR_instance = (ooaofooa_DOC_ADDR *) instance;
}


/*
 * RELATE DOC_DOC TO DOC_ADDR ACROSS R2301
 */
void
ooaofooa_DOC_ADDR_R2301_Link( ooaofooa_DOC_DOC * part, ooaofooa_DOC_ADDR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DOC_DOC_R2301 = part;
  part->DOC_ADDR_R2301 = form;
}

/*
 * UNRELATE DOC_DOC FROM DOC_ADDR ACROSS R2301
 */
void
ooaofooa_DOC_ADDR_R2301_Unlink( ooaofooa_DOC_DOC * part, ooaofooa_DOC_ADDR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DOC_DOC_R2301 = 0;
  part->DOC_ADDR_R2301 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_DOC_ADDR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_DOC_ADDR * self = (ooaofooa_DOC_ADDR *) instance;
  printf( "INSERT INTO DOC_ADDR VALUES ( '%s','%s','%s','%s' );\n",
    ( 0 != self->street ) ? self->street : "",
    ( 0 != self->city ) ? self->city : "",
    ( 0 != self->state ) ? self->state : "",
    ( 0 != self->postcode ) ? self->postcode : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_DOC_ADDR_container[ ooaofooa_DOC_ADDR_MAX_EXTENT_SIZE ];
static ooaofooa_DOC_ADDR ooaofooa_DOC_ADDR_instances[ ooaofooa_DOC_ADDR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_DOC_ADDR_extent = {
  {0,0}, {0,0}, &ooaofooa_DOC_ADDR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_DOC_ADDR_instances,
  sizeof( ooaofooa_DOC_ADDR ), 0, ooaofooa_DOC_ADDR_MAX_EXTENT_SIZE
  };


