/*----------------------------------------------------------------------------
 * File:  ooaofooa_DOC_IMG_class.c
 *
 * Class:       image  (DOC_IMG)
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
ooaofooa_DOC_IMG_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_DOC_IMG * self = (ooaofooa_DOC_IMG *) instance;
  /* Initialize application analysis class attributes.  */
  Escher_strcpy( self->target, avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_DOC_IMG_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_DOC_IMG * ooaofooa_DOC_IMG_instance = (ooaofooa_DOC_IMG *) instance;
  {
  }
}

/*
 * instance operation:  render
 */
void
ooaofooa_DOC_IMG_op_render( ooaofooa_DOC_IMG * self)
{
  ooaofooa_DOC_IMG * doc_img=0;
  /* SELECT any doc_img FROM INSTANCES OF DOC_IMG */
  doc_img = (ooaofooa_DOC_IMG *) Escher_SetGetAny( &pG_ooaofooa_DOC_IMG_extent.active );
  /* ASSIGN doc_img = self */
  doc_img = self;
  /* T::include( file:docbook/t.image.h ) */
#include "docbook/t.image.h"

}


/*
 * RELATE DOC_FIG TO DOC_IMG ACROSS R2313
 */
void
ooaofooa_DOC_IMG_R2313_Link_showcases( ooaofooa_DOC_FIG * part, ooaofooa_DOC_IMG * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DOC_FIG_R2313_is_subject_of = part;
  part->DOC_IMG_R2313_showcases = form;
}

/*
 * UNRELATE DOC_FIG FROM DOC_IMG ACROSS R2313
 */
void
ooaofooa_DOC_IMG_R2313_Unlink_showcases( ooaofooa_DOC_FIG * part, ooaofooa_DOC_IMG * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DOC_FIG_R2313_is_subject_of = 0;
  part->DOC_IMG_R2313_showcases = 0;
}

/*
 * RELATE DOC_PAR TO DOC_IMG ACROSS R2319
 */
void
ooaofooa_DOC_IMG_R2319_Link( ooaofooa_DOC_PAR * part, ooaofooa_DOC_IMG * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DOC_PAR_R2319_is_subject_of = part;
  part->DOC_IMG_R2319 = form;
}

/*
 * UNRELATE DOC_PAR FROM DOC_IMG ACROSS R2319
 */
void
ooaofooa_DOC_IMG_R2319_Unlink( ooaofooa_DOC_PAR * part, ooaofooa_DOC_IMG * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DOC_PAR_R2319_is_subject_of = 0;
  part->DOC_IMG_R2319 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_DOC_IMG_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_DOC_IMG * self = (ooaofooa_DOC_IMG *) instance;
  printf( "INSERT INTO DOC_IMG VALUES ( '%s' );\n",
    self->target );
}

/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      image  (DOC_IMG)
 * Component:  ooaofooa
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_DOC_IMG_container[ ooaofooa_DOC_IMG_MAX_EXTENT_SIZE ];
static ooaofooa_DOC_IMG ooaofooa_DOC_IMG_instances[ ooaofooa_DOC_IMG_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_DOC_IMG_extent = {
  {0,0}, {0,0}, &ooaofooa_DOC_IMG_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_DOC_IMG_instances,
  sizeof( ooaofooa_DOC_IMG ), 0, ooaofooa_DOC_IMG_MAX_EXTENT_SIZE
  };


