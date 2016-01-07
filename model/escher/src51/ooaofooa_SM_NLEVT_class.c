/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_NLEVT_class.c
 *
 * Class:       Non Local Event  (SM_NLEVT)
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
ooaofooa_SM_NLEVT_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SM_NLEVT * self = (ooaofooa_SM_NLEVT *) instance;
  /* Initialize application analysis class attributes.  */
  self->SMevt_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->SMspd_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->polySMevt_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->polySM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  self->polySMspd_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 6 ] );
  self->Local_Meaning = Escher_strcpy( self->Local_Meaning, avlstring[ 7 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SM_NLEVT_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SM_NLEVT * ooaofooa_SM_NLEVT_instance = (ooaofooa_SM_NLEVT *) instance;
  ooaofooa_SM_SEVT * ooaofooa_SM_SEVTrelated_instance1 = ooaofooa_SM_SEVT_AnyWhere1( ooaofooa_SM_NLEVT_instance->SMevt_ID, ooaofooa_SM_NLEVT_instance->SM_ID, ooaofooa_SM_NLEVT_instance->SMspd_ID );
  if ( ooaofooa_SM_SEVTrelated_instance1 ) {
    ooaofooa_SM_NLEVT_R526_Link( ooaofooa_SM_SEVTrelated_instance1, ooaofooa_SM_NLEVT_instance );
  }
  {
  ooaofooa_SM_PEVT * ooaofooa_SM_PEVTrelated_instance1 = ooaofooa_SM_PEVT_AnyWhere1( ooaofooa_SM_NLEVT_instance->polySMevt_ID, ooaofooa_SM_NLEVT_instance->polySM_ID );
  if ( ooaofooa_SM_PEVTrelated_instance1 ) {
    ooaofooa_SM_NLEVT_R527_Link_is_aliased_by( ooaofooa_SM_PEVTrelated_instance1, ooaofooa_SM_NLEVT_instance );
  }
  }
}


/*
 * RELATE SM_SEVT TO SM_NLEVT ACROSS R526
 */
void
ooaofooa_SM_NLEVT_R526_Link( ooaofooa_SM_SEVT * supertype, ooaofooa_SM_NLEVT * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SMevt_ID = supertype->SMevt_ID;
  subtype->SM_ID = supertype->SM_ID;
  subtype->SMspd_ID = supertype->SMspd_ID;
  /* Optimized linkage for SM_NLEVT->SM_SEVT[R526] */
  subtype->SM_SEVT_R526 = supertype;
  /* Optimized linkage for SM_SEVT->SM_NLEVT[R526] */
  supertype->R526_subtype = subtype;
  supertype->R526_object_id = ooaofooa_SM_NLEVT_CLASS_NUMBER;
}


/*
 * UNRELATE SM_SEVT FROM SM_NLEVT ACROSS R526
 */
void
ooaofooa_SM_NLEVT_R526_Unlink( ooaofooa_SM_SEVT * supertype, ooaofooa_SM_NLEVT * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SM_SEVT_R526 = 0;
  supertype->R526_subtype = 0;
  supertype->R526_object_id = 0;
}


/*
 * RELATE SM_PEVT TO SM_NLEVT ACROSS R527
 */
void
ooaofooa_SM_NLEVT_R527_Link_is_aliased_by( ooaofooa_SM_PEVT * part, ooaofooa_SM_NLEVT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->polySM_ID = part->SM_ID;
  form->polySMevt_ID = part->SMevt_ID;
  form->SM_PEVT_R527_is_defined_by = part;
  Escher_SetInsertElement( &part->SM_NLEVT_R527_is_aliased_by, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SM_PEVT FROM SM_NLEVT ACROSS R527
 */
void
ooaofooa_SM_NLEVT_R527_Unlink_is_aliased_by( ooaofooa_SM_PEVT * part, ooaofooa_SM_NLEVT * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->polySMevt_ID = 0;
  form->polySM_ID = 0;
  form->SM_PEVT_R527_is_defined_by = 0;
  Escher_SetRemoveElement( &part->SM_NLEVT_R527_is_aliased_by, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SM_NLEVT_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SM_NLEVT * self = (ooaofooa_SM_NLEVT *) instance;
  printf( "INSERT INTO SM_NLEVT VALUES ( %ld,%ld,%ld,%ld,%ld,%ld,'%s' );\n",
    ((long)self->SMevt_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMspd_ID & ESCHER_IDDUMP_MASK),
    ((long)self->polySMevt_ID & ESCHER_IDDUMP_MASK),
    ((long)self->polySM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->polySMspd_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Local_Meaning ) ? self->Local_Meaning : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SM_NLEVT_container[ ooaofooa_SM_NLEVT_MAX_EXTENT_SIZE ];
static ooaofooa_SM_NLEVT ooaofooa_SM_NLEVT_instances[ ooaofooa_SM_NLEVT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SM_NLEVT_extent = {
  {0,0}, {0,0}, &ooaofooa_SM_NLEVT_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SM_NLEVT_instances,
  sizeof( ooaofooa_SM_NLEVT ), 0, ooaofooa_SM_NLEVT_MAX_EXTENT_SIZE
  };


