.//============================================================================
.// $RCSfile: q.assoc.pseudoformalize.arc,v $
.//
.// Description:
.// This query/transformation archetype file contains the functionality
.// that will allow the model compiler to generate code for unformalized 
.// associations (associations that have not been formalized).
.//
.// Notice:
.// (C) Copyright 1998-2012 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
.function PseudoFormalizeUnformalizedAssociations
  .// Find the associations that are not formalized.  They are characterized
  .// by the existence of 2 instances of R_PART linked to one R_SIMP.
  .select many simps from instances of R_SIMP
  .for each simp in simps
    .select many parts related by simp->R_PART[R207]
    .if ( ( cardinality parts ) > 1 )
      .// It does not matter which participant we choose unless this is a many
      .// association.  Grab the many side of a 1-M or any random R_PART and
      .// migrate it and its parent R_RTO to R_FORM and R_RGO respectively.
      .select any part related by simp->R_PART[R207] where ( selected.Mult == 1 )
      .if ( empty part )
        .select any part related by simp->R_PART[R207]
      .end if
      .select one rto related by part->R_RTO[R204]
      .//
      .create object instance rgo of R_RGO
      .create object instance form of R_FORM
      .//
      .// Copy the RTO to the RGO.
      .assign rgo.Obj_ID = rto.Obj_ID
      .assign rgo.Rel_ID = rto.Rel_ID
      .assign rgo.OIR_ID = rto.OIR_ID
      .//
      .// Unlink and clean out the RTO.
      .assign rto.Obj_ID = 0
      .assign rto.Rel_ID = 0
      .assign rto.OIR_ID = 0
      .//
      .// Copy the PART to the FORM
      .assign form.Obj_ID = part.Obj_ID
      .assign form.Rel_ID = part.Rel_ID
      .assign form.OIR_ID = part.OIR_ID
      .assign form.Mult = part.Mult
      .assign form.Cond = part.Cond
      .assign form.Txt_Phrs = part.Txt_Phrs
      .//
      .// Unlink and clean out the PART.
      .assign part.Obj_ID = 0
      .assign part.Rel_ID = 0
      .assign part.OIR_ID = 0
      .assign part.Mult = 0
      .assign part.Cond = 0
      .assign part.Txt_Phrs = ""
    .end if
  .end for
.end function
.//
