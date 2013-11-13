/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_TRN_class.c
 *
 * Class:       Transient Var  (V_TRN)
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
ooaofooa_V_TRN_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_V_TRN * self = (ooaofooa_V_TRN *) instance;
  /* Initialize application analysis class attributes.  */
  self->Var_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  Escher_strcpy( self->Dimensions, avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_V_TRN_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_V_TRN * ooaofooa_V_TRN_instance = (ooaofooa_V_TRN *) instance;
  ooaofooa_V_VAR * ooaofooa_V_VARrelated_instance1 = (ooaofooa_V_VAR *) Escher_instance_cache[ (intptr_t) ooaofooa_V_TRN_instance->Var_ID ];
  if ( ooaofooa_V_VARrelated_instance1 ) {
    ooaofooa_V_TRN_R814_Link( ooaofooa_V_VARrelated_instance1, ooaofooa_V_TRN_instance );
  }
  {
  ooaofooa_S_DT * ooaofooa_S_DTrelated_instance1 = ooaofooa_S_DT_AnyWhere1( ooaofooa_V_TRN_instance->DT_ID );
  if ( ooaofooa_S_DTrelated_instance1 ) {
    ooaofooa_V_TRN_R821_Link_is_type_of( ooaofooa_S_DTrelated_instance1, ooaofooa_V_TRN_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_V_TRN *
ooaofooa_V_TRN_AnyWhere1( Escher_UniqueID_t w_Var_ID )
{
  ooaofooa_V_TRN * w; 
  Escher_Iterator_s iter_V_TRN;
  Escher_IteratorReset( &iter_V_TRN, &pG_ooaofooa_V_TRN_extent.active );
  while ( (w = (ooaofooa_V_TRN *) Escher_IteratorNext( &iter_V_TRN )) != 0 ) {
    if ( w->Var_ID == w_Var_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE V_VAR TO V_TRN ACROSS R814
 */
void
ooaofooa_V_TRN_R814_Link( ooaofooa_V_VAR * supertype, ooaofooa_V_TRN * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Var_ID = supertype->Var_ID;
  /* Optimized linkage for V_TRN->V_VAR[R814] */
  subtype->V_VAR_R814 = supertype;
  /* Optimized linkage for V_VAR->V_TRN[R814] */
  supertype->R814_subtype = subtype;
  supertype->R814_object_id = ooaofooa_V_TRN_CLASS_NUMBER;
}


/*
 * UNRELATE V_VAR FROM V_TRN ACROSS R814
 */
void
ooaofooa_V_TRN_R814_Unlink( ooaofooa_V_VAR * supertype, ooaofooa_V_TRN * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->V_VAR_R814 = 0;
  supertype->R814_subtype = 0;
  supertype->R814_object_id = 0;
}


/*
 * RELATE S_DT TO V_TRN ACROSS R821
 */
void
ooaofooa_V_TRN_R821_Link_is_type_of( ooaofooa_S_DT * part, ooaofooa_V_TRN * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = part->DT_ID;
  form->S_DT_R821_has = part;
  Escher_SetInsertElement( &part->V_TRN_R821_is_type_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_DT FROM V_TRN ACROSS R821
 */
void
ooaofooa_V_TRN_R821_Unlink_is_type_of( ooaofooa_S_DT * part, ooaofooa_V_TRN * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DT_ID = 0;
  form->S_DT_R821_has = 0;
  Escher_SetRemoveElement( &part->V_TRN_R821_is_type_of, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_V_TRN_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_V_TRN * self = (ooaofooa_V_TRN *) instance;
  printf( "INSERT INTO V_TRN VALUES ( %ld,%ld,'%s' );\n",
    ((long)self->Var_ID & ESCHER_IDDUMP_MASK),
    ((long)self->DT_ID & ESCHER_IDDUMP_MASK),
    self->Dimensions );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_V_TRN_container[ ooaofooa_V_TRN_MAX_EXTENT_SIZE ];
static ooaofooa_V_TRN ooaofooa_V_TRN_instances[ ooaofooa_V_TRN_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_V_TRN_extent = {
  {0,0}, {0,0}, &ooaofooa_V_TRN_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_V_TRN_instances,
  sizeof( ooaofooa_V_TRN ), 0, ooaofooa_V_TRN_MAX_EXTENT_SIZE
  };


