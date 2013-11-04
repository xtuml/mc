/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_SIS_class.c
 *
 * Class:       Sequence in Sequence  (SQ_SIS)
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
ooaofooa_SQ_SIS_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SQ_SIS * self = (ooaofooa_SQ_SIS *) instance;
  /* Initialize application analysis class attributes.  */
  self->Package_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SQ_SIS_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SQ_SIS * ooaofooa_SQ_SIS_instance = (ooaofooa_SQ_SIS *) instance;
  ooaofooa_SQ_S * ooaofooa_SQ_Srelated_instance1 = ooaofooa_SQ_S_AnyWhere1( ooaofooa_SQ_SIS_instance->Package_ID );
  if ( ooaofooa_SQ_Srelated_instance1 ) {
    ooaofooa_SQ_SIS_R911_Link_can_show( ooaofooa_SQ_Srelated_instance1, ooaofooa_SQ_SIS_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SQ_SIS *
ooaofooa_SQ_SIS_AnyWhere1( Escher_UniqueID_t w_Package_ID )
{
  ooaofooa_SQ_SIS * w; 
  Escher_Iterator_s iter_SQ_SIS;
  Escher_IteratorReset( &iter_SQ_SIS, &pG_ooaofooa_SQ_SIS_extent.active );
  while ( (w = (ooaofooa_SQ_SIS *) Escher_IteratorNext( &iter_SQ_SIS )) != 0 ) {
    if ( w->Package_ID == w_Package_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SQ_S TO SQ_SIS ACROSS R911
 */
void
ooaofooa_SQ_SIS_R911_Link_can_show( ooaofooa_SQ_S * part, ooaofooa_SQ_SIS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Package_ID = part->Package_ID;
  form->SQ_S_R911_is_shown_in = part;
  part->SQ_SIS_R911_can_show = form;
}

/*
 * UNRELATE SQ_S FROM SQ_SIS ACROSS R911
 */
void
ooaofooa_SQ_SIS_R911_Unlink_can_show( ooaofooa_SQ_S * part, ooaofooa_SQ_SIS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SQ_S_R911_is_shown_in = 0;
  part->SQ_SIS_R911_can_show = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SQ_SIS_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SQ_SIS * self = (ooaofooa_SQ_SIS *) instance;
  printf( "INSERT INTO SQ_SIS VALUES ( %ld );\n",
    ((long)self->Package_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SQ_SIS_container[ ooaofooa_SQ_SIS_MAX_EXTENT_SIZE ];
static ooaofooa_SQ_SIS ooaofooa_SQ_SIS_instances[ ooaofooa_SQ_SIS_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SQ_SIS_extent = {
  {0,0}, {0,0}, &ooaofooa_SQ_SIS_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SQ_SIS_instances,
  sizeof( ooaofooa_SQ_SIS ), 0, ooaofooa_SQ_SIS_MAX_EXTENT_SIZE
  };


