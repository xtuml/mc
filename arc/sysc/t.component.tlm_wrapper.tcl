#####################################################
# User alterable Variables
#####################################################

# systemC files created from the BridgePoint to Vista compiler
set bp_source         "briva_src"

# Vista Project that default models are saved to (can be empty or commented.)
set vista_project     "Project"

# A 'starter' set of TLM models is created directly from the templates
# The logical name is seen in the Vista Projects tab
# The physical name is created in the file system
set bp_logical_model  "BridgePoint"
set bp_physical_model "bridgepoint"

#####################################################
# Derived Variables, do not modify
#####################################################

# BridgePoint Template library logical name 
set bp_logical_template      [ file join "Generic_Library/" $$bp_logical_model ]

# Location of BridgePoint generated template and .tcl files
set bp_physical_template     [ file join $$bp_source "vista_tlm" ]

# location
set absPath          $$env(PWD)

#########################################################
# File Manipulation; for Vista template file structure
#########################################################

proc briva_files {} {
  global bp_physical_template
  global bp_source

  # for now copy template, .tcl, etc files to $$bp_physical_template
  # But, we expect them to be there by default in future BP release

  file mkdir $$bp_physical_template

  # Make subdirectory for each model, move templates and .tcl files there
${createFolderStructure}
}

#########################################################
# Create templates and an initial set of TLM models
#########################################################

proc briva_tlm_templates {} {
  global bp_logical_template
  global bp_physical_template
  global absPath

${vistaWrapper}
}

proc briva_tlm_models {} {
  global bp_logical_template
  global vista_project
  global bp_logical_model
  global bp_physical_model

  # create library for default models
  if { ! [ does_tlm_library_exist $$bp_logical_model ]} {
      create_tlm_library $$bp_logical_model $$bp_physical_model
  }
 
${create_model}
}

proc briva_models {} {
    global bp_source
    global bp_physical_template

    # Possible future enhancement to create vista project with files and include path already set
    #exec vista_create_project -name Project sources_TLM.sc | sed -e s/\$$BP_SRC/$$bp_source/ | sed -e s/\$$(BP_SRC)/$$bp_source/ > Project.v2p

    briva_tlm_templates
    briva_tlm_models

    puts " "
    puts " Please add  \"\$$(PRJDIR)/$$bp_source\" to the Vista Project include directory (in Project->Settings)"
    puts "        add the \"$$bp_source/*.cpp\" files to the project, unless using a Makefile to compile them."
    puts " "
}
proc briva_all {} {
    briva_files
    briva_models
}

puts " "
puts " New TCL procedures (commands) have been created:"
puts " "
puts "    execute \"briva_files\"  to create the needed file arrangment for Vista"
puts "    execute \"briva_models\" to create Vista Model Builder templates and models"
puts " => execute \"briva_all\"    to run both procedures"
puts " "


