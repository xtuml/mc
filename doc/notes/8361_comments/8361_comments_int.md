---

This work is licensed under the Creative Commons CC0 License

---

# Model element descriptions in MASL convert/load and export
### xtUML Project Implementation Note

1. Abstract
-----------
See [[2.4]](#2.4) Section 1

2. Document References
----------------------
<a id="2.1"></a>2.1 [serial MASL specification](../8073_masl_parser/8277_serial_masl_spec.md)  
<a id="2.2"></a>2.2 [#8361 Comment Support](https://support.onefact.net/issues/8361)  
<a id="2.3"></a>2.3 [#8362 Map comments to model element descriptions (internal issue)](https://support.onefact.net/issues/8362)  
<a id="2.4"></a>2.4 [Design note](8361_comments_dnt.md)  

3. Background
-------------
See [[2.4]](#2.4) Section 3

4. Requirements
---------------
See [[2.4]](#2.4) Section 4

5. Work Required
----------------

5.1. Update MASL parser grammars  
5.1.1. Add lex rule for documentation comments  
5.1.2. Add parser rule for blocks of documentation comments that make a
description  
5.1.3. Add a walker rule to produce serial MASL from the text of the
descriptions  
5.1.4. Add calls to the parser and walker rules within the appropriate rules
throughout the grammars  
5.2. Update `m2x` to handle the "description" serial MASL command and store the
descriptions in xtUML `Descrip` fields  
5.3. Update `x2m` to output serial MASL from the description fields of supported
model elements  
5.3.1. Make sure that other things that are stored in `Descrip` fields (pragmas
and type definitions) are removed before the descriptions are rendered  
5.4. Update the model of MASL to populate and render descriptions  
5.4.1. Add `description` class and relate it to the `element` class  
5.4.2. Add code to populate `description` on the "description" serial MASL
command  
5.4.3. Add code to render descriptions to the `render` operation of each
supported model element  

6. Implementation Comments
--------------------------

Some small tasks are also handled in this work due to convenience and/or
dependence.

6.1. Fixed bugs/updated behavior/propagated changes to the STRING bridge  
6.2. Updated a file in the `gen/` folder to reflect the recent changes to add
`Exception` to the meta-model  
6.3. Changed the tag for type definitions from "definition:..." to XML style tags
"<definition>...</definition>" to facilitate removing the definition from the
`Descrip` field before rendering descriptions to serial MASL  
6.4. Copied the specification of serial MASL into a markdown file alongside the
MASL parser documentation
6.4.1. Updated references to this documentation

7. Unit Test
------------
See [[2.4]](#2.4) Section 8

8. Code Changes
---------------
Branch name: 8361_comments

<pre>

doc/notes/8019_masl/8019_masl_dnt.md                                                |   2 +-
doc/notes/8073_masl_parser/8073_masl_parser.dnt.md                                  |   2 +-
doc/notes/8073_masl_parser/8277_serial_masl_spec.md                                 | 208 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
doc/notes/8211_masl_import/8211_masl_import_dnt.md                                  |   2 +-
doc/review-minutes/8361_comments_dnt_rvm.md                                         |  31 +++++++++++
masl/parser/src/MaslLexer.g                                                         |   1 +
masl/parser/src/MaslParser.g                                                        |  69 +++++++++++++++++-------
masl/parser/src/MaslWalker.g                                                        |  33 ++++++++++++
model/masl/gen/STRING_bridge.c                                                      |  84 ++++++++++++++++++++++++-----
model/masl/gen/masl_population_class.c                                              |  11 +++-
model/masl/models/masl/masl/activity/activity.xtuml                                 |   6 ++-
model/masl/models/masl/masl/attribute/attribute.xtuml                               |   6 ++-
model/masl/models/masl/masl/domain/domain.xtuml                                     |  12 ++++-
model/masl/models/masl/masl/event/event.xtuml                                       |   6 ++-
model/masl/models/masl/masl/object/object.xtuml                                     |   7 ++-
model/masl/models/masl/masl/project/project.xtuml                                   |   6 ++-
model/masl/models/masl/masl/relationship/relationship.xtuml                         |   6 ++-
model/masl/models/masl/masl/terminator/terminator.xtuml                             |   6 ++-
model/masl/models/masl/maslpopulation/description/description.xtuml                 | 162 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
model/masl/models/masl/maslpopulation/maslpopulation.xtuml                          | 251 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
model/masl/models/masl/maslpopulation/population/population.xtuml                   |   4 ++
model/masl/models/masl/masltypes/type/type.xtuml                                    |   6 ++-
model/maslin/gen/STRING_bridge.c                                                    |  10 +++-
model/maslin/gen/masl2xtuml.c                                                       |   2 +
model/maslin/gen/masl2xtuml_ooapopulation_class.c                                   | 222 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++------
model/maslin/gen/masl2xtuml_ooapopulation_class.h                                   |   5 +-
model/maslin/models/maslin/masl2xtuml/masl2xtuml.xtuml                              |  16 ++++--
model/maslin/models/maslin/masl2xtuml/ooapopulation/ooapopulation.xtuml             | 163 +++++++++++++++++++++++++++++++++++++++++++++++++++-----
model/maslout/gen/STRING_bridge.c                                                   |  70 +++++++++++++++++++-----
model/maslout/models/maslout/lib/xtuml2masl/maslout_imported/maslout_imported.xtuml | 140 +++++++++++++++++++++++++++++++++++++++---------
model/mcshared/models/mcshared/MC_EEs/MC_EEs.xtuml                                  |  27 ++++++++--
31 files changed, 1449 insertions(+), 127 deletions(-)

</pre>

End
---

