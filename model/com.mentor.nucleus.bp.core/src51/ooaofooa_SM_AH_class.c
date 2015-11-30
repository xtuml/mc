/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_AH_class.c
 *
 * Class:       Action Home  (SM_AH)
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
ooaofooa_SM_AH_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SM_AH * self = (ooaofooa_SM_AH *) instance;
  /* Initialize application analysis class attributes.  */
  self->Act_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SM_AH_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SM_AH * ooaofooa_SM_AH_instance = (ooaofooa_SM_AH *) instance;
  ooaofooa_SM_ACT * ooaofooa_SM_ACTrelated_instance1 = ooaofooa_SM_ACT_AnyWhere1( ooaofooa_SM_AH_instance->Act_ID, ooaofooa_SM_AH_instance->SM_ID );
  if ( ooaofooa_SM_ACTrelated_instance1 ) {
    ooaofooa_SM_AH_R514_Link_resides_in( ooaofooa_SM_ACTrelated_instance1, ooaofooa_SM_AH_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SM_AH *
ooaofooa_SM_AH_AnyWhere1( Escher_UniqueID_t w_Act_ID, Escher_UniqueID_t w_SM_ID )
{
  ooaofooa_SM_AH * w; 
  Escher_Iterator_s iter_SM_AH;
  Escher_IteratorReset( &iter_SM_AH, &pG_ooaofooa_SM_AH_extent.active );
  while ( (w = (ooaofooa_SM_AH *) Escher_IteratorNext( &iter_SM_AH )) != 0 ) {
    if ( w->Act_ID == w_Act_ID && w->SM_ID == w_SM_ID ) {
      return w;
    }
  }
  return 0;
}


/* Accessors to SM_AH[R513] subtypes */


/*
 * RELATE SM_ACT TO SM_AH ACROSS R514
 */
void
ooaofooa_SM_AH_R514_Link_resides_in( ooaofooa_SM_ACT * part, ooaofooa_SM_AH * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = part->SM_ID;
  form->Act_ID = part->Act_ID;
  form->SM_ACT_R514_houses = part;
  part->SM_AH_R514_resides_in = form;
}

/*
 * UNRELATE SM_ACT FROM SM_AH ACROSS R514
 */
void
ooaofooa_SM_AH_R514_Unlink_resides_in( ooaofooa_SM_ACT * part, ooaofooa_SM_AH * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ACT_R514_houses = 0;
  part->SM_AH_R514_resides_in = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SM_AH_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SM_AH * self = (ooaofooa_SM_AH *) instance;
  printf( "INSERT INTO SM_AH VALUES ( %ld,%ld );\n",
    ((long)self->Act_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SM_AH_container[ ooaofooa_SM_AH_MAX_EXTENT_SIZE ];
static ooaofooa_SM_AH ooaofooa_SM_AH_instances[ ooaofooa_SM_AH_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SM_AH_extent = {
  {0,0}, {0,0}, &ooaofooa_SM_AH_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SM_AH_instances,
  sizeof( ooaofooa_SM_AH ), 0, ooaofooa_SM_AH_MAX_EXTENT_SIZE
  };


