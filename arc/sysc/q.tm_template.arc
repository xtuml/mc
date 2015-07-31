.//============================================================================
.// Queries here populate model extensions for generation of C++ templated
.// modules and interfaces.
.//============================================================================
.//
.function TM_TEMPLATE_populate
.// Populate C++ template parameters.
.select many tm_templates from instances of TM_TEMPLATE
.for each tm_template in tm_templates
  .assign tm_template.template_parameters = "template < "
  .assign tm_template.template_parameters_default = "template < "
  .assign tm_template.template_actual_parameters = "< "
  .assign tm_template.template_default_instantiation = "< "
  .select many tm_tps related by tm_template->TM_TP[R2801]
  .for each tm_tp in tm_tps
    .assign tm_template.template_parameters = ( tm_template.template_parameters + tm_tp.typename ) + ( " " + tm_tp.Name )
    .assign tm_template.template_parameters_default = ( tm_template.template_parameters_default + tm_tp.typename ) + ( " " + tm_tp.Name )
    .assign tm_template.template_actual_parameters = tm_template.template_actual_parameters + tm_tp.Name
    .assign tm_template.template_default_instantiation = tm_template.template_default_instantiation + "int"
    .if ( "" != tm_tp.DefaultValue )
      .assign tm_template.template_parameters_default = tm_template.template_parameters_default + ( "=" + tm_tp.DefaultValue )
    .end if
    .if ( not_last tm_tps )
      .assign tm_template.template_parameters = tm_template.template_parameters + ", "
      .assign tm_template.template_parameters_default = tm_template.template_parameters_default + ", "
      .assign tm_template.template_actual_parameters = tm_template.template_actual_parameters + ", "
      .assign tm_template.template_default_instantiation = tm_template.template_default_instantiation + ", "
    .else
      .assign tm_template.template_parameters = tm_template.template_parameters + " >"
      .assign tm_template.template_parameters_default = tm_template.template_parameters_default + " >"
      .assign tm_template.template_actual_parameters = tm_template.template_actual_parameters + " >"
      .assign tm_template.template_default_instantiation = tm_template.template_default_instantiation + " >"
    .end if
  .end for
.end for
.// Popluate the C++ template instantiations with parameter values.
.// For components...
.select many te_cis from instances of TE_CI
.for each te_ci in te_cis
  .assign te_ci.template_parameter_values = ""
  .select many tm_tps related by te_ci->TE_C[R2008]->TM_C[R2804]->TM_TEMPLATE[R2800]->TM_TP[R2801]
  .// TPs without TPVs use the default values.
  .if ( not_empty tm_tps )
    .assign te_ci.template_parameter_values = "< "
    .select many tm_tpvs related by te_ci->TM_TPV[R2805]
    .for each tm_tpv in tm_tpvs
      .assign te_ci.template_parameter_values = te_ci.template_parameter_values + tm_tpv.value
      .if ( not_last tm_tpvs )
        .assign te_ci.template_parameter_values = te_ci.template_parameter_values + ", "
      .end if
    .end for
    .if ( empty tm_tpvs )
      .for each tm_tp in tm_tps
        .assign te_ci.template_parameter_values = te_ci.template_parameter_values + tm_tp.DefaultValue
        .if ( not_last tm_tps )
          .assign te_ci.template_parameter_values = te_ci.template_parameter_values + ", "
        .end if
      .end for
    .end if
    .assign te_ci.template_parameter_values = te_ci.template_parameter_values + " >"
  .end if
.end for
.// For interfaces...
.select many te_iirs from instances of TE_IIR
.for each te_iir in te_iirs
  .assign te_iir.template_parameter_values = ""
  .select many tm_tps related by te_iir->TE_PO[R2080]->C_I[R2007]->TM_IF[R2807]->TM_TEMPLATE[R2802]->TM_TP[R2801]
  .// TPs without TPVs use the default values.
  .if ( not_empty tm_tps )
    .assign te_iir.template_parameter_values = "< "
    .select many tm_tpvs related by te_iir->TM_TPV[R2806]
    .for each tm_tpv in tm_tpvs
      .assign te_iir.template_parameter_values = te_iir.template_parameter_values + tm_tpv.value
      .if ( not_last tm_tpvs )
        .assign te_iir.template_parameter_values = te_iir.template_parameter_values + ", "
      .end if
    .end for
    .if ( empty tm_tpvs )
      .for each tm_tp in tm_tps
        .assign te_iir.template_parameter_values = te_iir.template_parameter_values + tm_tp.DefaultValue
        .if ( not_last tm_tps )
          .assign te_iir.template_parameter_values = te_iir.template_parameter_values + ", "
        .end if
      .end for
    .end if
    .assign te_iir.template_parameter_values = te_iir.template_parameter_values + " >"
  .end if
.end for
.end function
