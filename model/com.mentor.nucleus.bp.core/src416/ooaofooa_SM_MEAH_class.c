/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_MEAH_class.c
 *
 * Class:       Mealy Action Home  (SM_MEAH)
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
ooaofooa_SM_MEAH_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SM_MEAH * self = (ooaofooa_SM_MEAH *) instance;
  /* Initialize application analysis class attributes.  */
  self->Act_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Trans_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SM_MEAH_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SM_MEAH * ooaofooa_SM_MEAH_instance = (ooaofooa_SM_MEAH *) instance;
  ooaofooa_SM_TXN * ooaofooa_SM_TXNrelated_instance1 = ooaofooa_SM_TXN_AnyWhere1( ooaofooa_SM_MEAH_instance->Trans_ID, ooaofooa_SM_MEAH_instance->SM_ID );
  ooaofooa_SM_MEALY * ooaofooa_SM_MEALYrelated_instance2 = ooaofooa_SM_MEALY_AnyWhere1( ooaofooa_SM_MEAH_instance->SM_ID );
  if ( ooaofooa_SM_TXNrelated_instance1 && ooaofooa_SM_MEALYrelated_instance2 ) {
    ooaofooa_SM_MEAH_R512_Link( ooaofooa_SM_MEALYrelated_instance2, ooaofooa_SM_TXNrelated_instance1, ooaofooa_SM_MEAH_instance );
  }
  {
  ooaofooa_SM_AH * ooaofooa_SM_AHrelated_instance1 = ooaofooa_SM_AH_AnyWhere1( ooaofooa_SM_MEAH_instance->Act_ID, ooaofooa_SM_MEAH_instance->SM_ID );
  if ( ooaofooa_SM_AHrelated_instance1 ) {
    ooaofooa_SM_MEAH_R513_Link( ooaofooa_SM_AHrelated_instance1, ooaofooa_SM_MEAH_instance );
  }
  }
}


/*
 * RELATE SM_MEALY TO SM_TXN ACROSS R512 USING SM_MEAH
 */
void
ooaofooa_SM_MEAH_R512_Link( ooaofooa_SM_MEALY * aone, ooaofooa_SM_TXN * aoth, ooaofooa_SM_MEAH * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->SM_ID = aone->SM_ID;
  assr->Trans_ID = aoth->Trans_ID;
  assr->SM_ID = aoth->SM_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->SM_MEALY_R512 = aone;
  assr->SM_TXN_R512 = aoth;
  Escher_SetInsertElement( &aone->SM_MEAH_R512, assr );
  aoth->SM_MEAH_R512 = assr;
}

/*
 * UNRELATE SM_MEALY FROM SM_TXN ACROSS R512 USING SM_MEAH
 */
void
ooaofooa_SM_MEAH_R512_Unlink( ooaofooa_SM_MEALY * aone, ooaofooa_SM_TXN * aoth, ooaofooa_SM_MEAH * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->SM_MEALY_R512 = 0;
  assr->SM_TXN_R512 = 0;
  Escher_SetRemoveElement( &aone->SM_MEAH_R512, assr );
  aoth->SM_MEAH_R512 = 0;
}

/*
 * RELATE SM_AH TO SM_MEAH ACROSS R513
 */
void
ooaofooa_SM_MEAH_R513_Link( ooaofooa_SM_AH * supertype, ooaofooa_SM_MEAH * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Act_ID = supertype->Act_ID;
  subtype->SM_ID = supertype->SM_ID;
  /* Optimized linkage for SM_MEAH->SM_AH[R513] */
  subtype->SM_AH_R513 = supertype;
  /* Optimized linkage for SM_AH->SM_MEAH[R513] */
  supertype->R513_subtype = subtype;
  supertype->R513_object_id = ooaofooa_SM_MEAH_CLASS_NUMBER;
}


/*
 * UNRELATE SM_AH FROM SM_MEAH ACROSS R513
 */
void
ooaofooa_SM_MEAH_R513_Unlink( ooaofooa_SM_AH * supertype, ooaofooa_SM_MEAH * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SM_AH_R513 = 0;
  supertype->R513_subtype = 0;
  supertype->R513_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SM_MEAH_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SM_MEAH * self = (ooaofooa_SM_MEAH *) instance;
  printf( "INSERT INTO SM_MEAH VALUES ( %ld,%ld,%ld );\n",
    ((long)self->Act_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Trans_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SM_MEAH_container[ ooaofooa_SM_MEAH_MAX_EXTENT_SIZE ];
static ooaofooa_SM_MEAH ooaofooa_SM_MEAH_instances[ ooaofooa_SM_MEAH_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SM_MEAH_extent = {
  {0,0}, {0,0}, &ooaofooa_SM_MEAH_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SM_MEAH_instances,
  sizeof( ooaofooa_SM_MEAH ), 0, ooaofooa_SM_MEAH_MAX_EXTENT_SIZE
  };


