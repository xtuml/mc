.//============================================================================
.// This query/transformation archetype file contains the functionality
.// that will allow the model compiler to generate code for unformalized 
.// associations (associations that have not been formalized).
.//============================================================================
.//
.// Find the associations that are not formalized.  They are characterized
.// by the existence of 2 instances of R_PART linked to one R_SIMP.
.// Migrate the R_PART/R_RTO pair to R_FORM/R_RGO.
.// It does not matter which participant we choose unless this is a many
.// association.  Grab the many side of a 1-M or any random R_PART and
.// migrate it and its parent R_RTO to R_FORM and R_RGO respectively.
.function rel_pseudoformalize
  .select many r_simps from instances of R_SIMP
  .for each r_simp in r_simps
    .select many r_parts related by r_simp->R_PART[R207]
    .if ( ( cardinality r_parts ) > 1 )
      .select any r_part related by r_simp->R_PART[R207] where ( selected.Mult == 1 )
      .if ( empty r_part )
        .select any r_part related by r_simp->R_PART[R207]
      .end if
      .select one r_rto related by r_part->R_RTO[R204]
      .select one r_oir related by r_rto->R_OIR[R203]
      .//
      .create object instance r_rgo of R_RGO
      .create object instance r_form of R_FORM
      .//
      .// Copy the R_PART to the new R_FORM.
      .assign r_form.Mult = r_part.Mult
      .assign r_form.Cond = r_part.Cond
      .assign r_form.Txt_Phrs = r_part.Txt_Phrs
      .//
      .// unrelate r_part from r_rto across R204;
      .assign r_part.Obj_ID = 00
      .assign r_part.Rel_ID = 00
      .assign r_part.OIR_ID = 00
      .// end unrelate
      .// unrelate r_part from r_simp across R207;
      .// end unrelate
      .// delete object instance r_part;
      .//
      .// unrelate r_rto from r_oir across R203;
      .assign r_rto.Obj_ID = 00
      .assign r_rto.Rel_ID = 00
      .assign r_rto.OIR_ID = 00
      .// end unrelate
      .// delete object instance r_rto;
      .//
      .// relate r_rgo to r_oir across R203;
      .assign r_rgo.Obj_ID = r_oir.Obj_ID
      .assign r_rgo.Rel_ID = r_oir.Rel_ID
      .assign r_rgo.OIR_ID = r_oir.OIR_ID
      .// end relate
      .// relate r_form to r_rgo across R205;
      .assign r_form.Obj_ID = r_rgo.Obj_ID
      .assign r_form.Rel_ID = r_rgo.Rel_ID
      .assign r_form.OIR_ID = r_rgo.OIR_ID
      .// end relate
      .// relate r_form to r_simp across R208;
      .if ( r_form.Rel_ID != r_simp.Rel_ID )
        .print "ERROR:  Pseudoformalization of relationship failed."
      .end if
      .// end relate
    .end if
  .end for
.end function
.//
