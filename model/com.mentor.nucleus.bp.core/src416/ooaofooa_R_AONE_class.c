/*----------------------------------------------------------------------------
 * File:  ooaofooa_R_AONE_class.c
 *
 * Class:       Class As Associated One Side  (R_AONE)
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
ooaofooa_R_AONE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_R_AONE * self = (ooaofooa_R_AONE *) instance;
  /* Initialize application analysis class attributes.  */
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Rel_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->OIR_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->Mult = Escher_atoi( avlstring[ 4 ] );
  self->Cond = Escher_atoi( avlstring[ 5 ] );
  self->Txt_Phrs = Escher_strcpy( self->Txt_Phrs, avlstring[ 6 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_R_AONE_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_R_AONE * ooaofooa_R_AONE_instance = (ooaofooa_R_AONE *) instance;
  ooaofooa_R_RTO * ooaofooa_R_RTOrelated_instance1 = ooaofooa_R_RTO_AnyWhere1( ooaofooa_R_AONE_instance->Obj_ID, ooaofooa_R_AONE_instance->Rel_ID, ooaofooa_R_AONE_instance->OIR_ID );
  if ( ooaofooa_R_RTOrelated_instance1 ) {
    ooaofooa_R_AONE_R204_Link( ooaofooa_R_RTOrelated_instance1, ooaofooa_R_AONE_instance );
  }
  {
  ooaofooa_R_ASSOC * ooaofooa_R_ASSOCrelated_instance1 = ooaofooa_R_ASSOC_AnyWhere1( ooaofooa_R_AONE_instance->Rel_ID );
  if ( ooaofooa_R_ASSOCrelated_instance1 ) {
    ooaofooa_R_AONE_R209_Link_relates( ooaofooa_R_ASSOCrelated_instance1, ooaofooa_R_AONE_instance );
  }
  }
}


/*
 * RELATE R_RTO TO R_AONE ACROSS R204
 */
void
ooaofooa_R_AONE_R204_Link( ooaofooa_R_RTO * supertype, ooaofooa_R_AONE * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->OIR_ID = supertype->OIR_ID;
  subtype->Obj_ID = supertype->Obj_ID;
  subtype->Rel_ID = supertype->Rel_ID;
  /* Optimized linkage for R_AONE->R_RTO[R204] */
  subtype->R_RTO_R204 = supertype;
  /* Optimized linkage for R_RTO->R_AONE[R204] */
  supertype->R204_subtype = subtype;
  supertype->R204_object_id = ooaofooa_R_AONE_CLASS_NUMBER;
}


/*
 * UNRELATE R_RTO FROM R_AONE ACROSS R204
 */
void
ooaofooa_R_AONE_R204_Unlink( ooaofooa_R_RTO * supertype, ooaofooa_R_AONE * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->R_RTO_R204 = 0;
  supertype->R204_subtype = 0;
  supertype->R204_object_id = 0;
}


/*
 * RELATE R_ASSOC TO R_AONE ACROSS R209
 */
void
ooaofooa_R_AONE_R209_Link_relates( ooaofooa_R_ASSOC * part, ooaofooa_R_AONE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Rel_ID = part->Rel_ID;
  form->R_ASSOC_R209_is_related_to_other_side_via = part;
  part->R_AONE_R209_relates = form;
}

/*
 * UNRELATE R_ASSOC FROM R_AONE ACROSS R209
 */
void
ooaofooa_R_AONE_R209_Unlink_relates( ooaofooa_R_ASSOC * part, ooaofooa_R_AONE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->R_ASSOC_R209_is_related_to_other_side_via = 0;
  part->R_AONE_R209_relates = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_R_AONE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_R_AONE * self = (ooaofooa_R_AONE *) instance;
  printf( "INSERT INTO R_AONE VALUES ( %ld,%ld,%ld,%d,%d,'%s' );\n",
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Rel_ID & ESCHER_IDDUMP_MASK),
    ((long)self->OIR_ID & ESCHER_IDDUMP_MASK),
    self->Mult,
    self->Cond,
    ( 0 != self->Txt_Phrs ) ? self->Txt_Phrs : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_R_AONE_container[ ooaofooa_R_AONE_MAX_EXTENT_SIZE ];
static ooaofooa_R_AONE ooaofooa_R_AONE_instances[ ooaofooa_R_AONE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_R_AONE_extent = {
  {0,0}, {0,0}, &ooaofooa_R_AONE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_R_AONE_instances,
  sizeof( ooaofooa_R_AONE ), 0, ooaofooa_R_AONE_MAX_EXTENT_SIZE
  };


