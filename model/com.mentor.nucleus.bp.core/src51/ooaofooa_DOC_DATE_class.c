/*----------------------------------------------------------------------------
 * File:  ooaofooa_DOC_DATE_class.c
 *
 * Class:       date  (DOC_DATE)
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
ooaofooa_DOC_DATE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_DOC_DATE * self = (ooaofooa_DOC_DATE *) instance;
  /* Initialize application analysis class attributes.  */
  self->year = Escher_atoi( avlstring[ 1 ] );
  self->month = Escher_strcpy( self->month, avlstring[ 2 ] );
  self->day = Escher_atoi( avlstring[ 3 ] );
  self->time = Escher_strcpy( self->time, avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_DOC_DATE_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_DOC_DATE * ooaofooa_DOC_DATE_instance = (ooaofooa_DOC_DATE *) instance;
}


/*
 * RELATE DOC_DOC TO DOC_DATE ACROSS R2302
 */
void
ooaofooa_DOC_DATE_R2302_Link( ooaofooa_DOC_DOC * part, ooaofooa_DOC_DATE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DOC_DOC_R2302 = part;
  part->DOC_DATE_R2302 = form;
}

/*
 * UNRELATE DOC_DOC FROM DOC_DATE ACROSS R2302
 */
void
ooaofooa_DOC_DATE_R2302_Unlink( ooaofooa_DOC_DOC * part, ooaofooa_DOC_DATE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DOC_DOC_R2302 = 0;
  part->DOC_DATE_R2302 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_DOC_DATE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_DOC_DATE * self = (ooaofooa_DOC_DATE *) instance;
  printf( "INSERT INTO DOC_DATE VALUES ( %d,'%s',%d,'%s' );\n",
    self->year,
    ( 0 != self->month ) ? self->month : "",
    self->day,
    ( 0 != self->time ) ? self->time : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_DOC_DATE_container[ ooaofooa_DOC_DATE_MAX_EXTENT_SIZE ];
static ooaofooa_DOC_DATE ooaofooa_DOC_DATE_instances[ ooaofooa_DOC_DATE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_DOC_DATE_extent = {
  {0,0}, {0,0}, &ooaofooa_DOC_DATE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_DOC_DATE_instances,
  sizeof( ooaofooa_DOC_DATE ), 0, ooaofooa_DOC_DATE_MAX_EXTENT_SIZE
  };


