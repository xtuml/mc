/*----------------------------------------------------------------------------
 * File:  ooaofooa_DOC_DOC_class.c
 *
 * Class:       document  (DOC_DOC)
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
ooaofooa_DOC_DOC_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_DOC_DOC * self = (ooaofooa_DOC_DOC *) instance;
  /* Initialize application analysis class attributes.  */
  Escher_strcpy( self->title, avlstring[ 1 ] );
  Escher_strcpy( self->subtitle, avlstring[ 2 ] );
  Escher_strcpy( self->author, avlstring[ 3 ] );
  Escher_strcpy( self->font_family, avlstring[ 4 ] );
  Escher_strcpy( self->company, avlstring[ 5 ] );
  Escher_strcpy( self->copyright, avlstring[ 6 ] );
  Escher_strcpy( self->filename, avlstring[ 7 ] );
  Escher_strcpy( self->model_image_ext, avlstring[ 8 ] );
  return return_identifier;
}

/*
 * instance operation:  render
 */
void
ooaofooa_DOC_DOC_op_render( ooaofooa_DOC_DOC * self)
{
  ooaofooa_DOC_SEC * doc_sec=0;
  /* LOG::LogInfo( message:document start ) */
  LOG_LogInfo( "document start" );
  /* T::include( file:docbook/t.documentbegin.h ) */
#include "docbook/t.documentbegin.h"
  /* SELECT one doc_sec RELATED BY self->DOC_SEC[R2300] */
  doc_sec = ( 0 != self ) ? self->DOC_SEC_R2300_has_first : 0;
  /* doc_sec.render( doc_doc:self ) */
  ooaofooa_DOC_SEC_op_render( doc_sec,  self );
  /* T::include( file:docbook/t.documentend.h ) */
#include "docbook/t.documentend.h"
  /* T::emit( file:self.filename ) */
  T_emit( self->filename );
  /* LOG::LogInfo( message:document finish ) */
  LOG_LogInfo( "document finish" );

}

/*
 * instance operation:  validate
 */
void
ooaofooa_DOC_DOC_op_validate( ooaofooa_DOC_DOC * self)
{
  ooaofooa_DOC_SEC * doc_sec=0;
  /* SELECT one doc_sec RELATED BY self->DOC_SEC[R2300] */
  doc_sec = ( 0 != self ) ? self->DOC_SEC_R2300_has_first : 0;
  /* IF ( empty doc_sec ) */
  if ( ( 0 == doc_sec ) ) {
    /* LOG::LogFailure( message:!Document has no first section. ) */
    LOG_LogFailure( "!Document has no first section." );
  }
  /* DOC_SEC::validate() */
  ooaofooa_DOC_SEC_op_validate();
  /* DOC_PAR::validate() */
  ooaofooa_DOC_PAR_op_validate();
  /* DOC_TBL::validate() */
  ooaofooa_DOC_TBL_op_validate();
  /* DOC_ROW::validate() */
  ooaofooa_DOC_ROW_op_validate();

}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_DOC_DOC_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_DOC_DOC * self = (ooaofooa_DOC_DOC *) instance;
  printf( "INSERT INTO DOC_DOC VALUES ( '%s','%s','%s','%s','%s','%s','%s','%s' );\n",
    self->title,
    self->subtitle,
    self->author,
    self->font_family,
    self->company,
    self->copyright,
    self->filename,
    self->model_image_ext );
}

/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      document  (DOC_DOC)
 * Component:  ooaofooa
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_DOC_DOC_container[ ooaofooa_DOC_DOC_MAX_EXTENT_SIZE ];
static ooaofooa_DOC_DOC ooaofooa_DOC_DOC_instances[ ooaofooa_DOC_DOC_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_DOC_DOC_extent = {
  {0,0}, {0,0}, &ooaofooa_DOC_DOC_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_DOC_DOC_instances,
  sizeof( ooaofooa_DOC_DOC ), 0, ooaofooa_DOC_DOC_MAX_EXTENT_SIZE
  };


