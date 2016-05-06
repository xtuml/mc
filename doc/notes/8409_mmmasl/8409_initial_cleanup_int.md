---

This work is licensed under the Creative Commons CC0 License

---

# Factor DocGen Out of Escher
### xtUML Project Implementation Note

1. Abstract
-----------
DocGen is factored out from mcmc.

2. Document References
----------------------
[1] [8409 Metamodeling (Raven)](https://support.onefact.net/issues/8409)  

3. Background
-------------
Due to BridgePoint and MC-3020 weaknesses, docgen was built together in the
same model with the C model-based model compiler.  Now that inter-project
reference support is supplied for classes, docgen can stand on its own while
continuing to reference the OOA of OOA.

4. Requirements
---------------
4.1  docgen shall be built separately from escher/mcmc.  
4.2  mcmc shall be built separately from docgen and Document.  

5. Work Required
----------------
5.1 Make the docgen project buildable.  
5.1.1 To make the docgen project buildable, "import" packages had to be
added to the component.  These packages refer (in their Description fields)
to the package containing their classes and functions.  
5.1.2 Set up marking and copy/modify the `.c` files in the `gen` folder.  
5.1.3 Move the docbook templates out of escher and into document.  Refer
to them from docgen.  
5.1.4 Add short HOWTO to the gen folder.  
5.2 Remove docgen and Document from escher.  
5.2.1 docgen and Document were referenced in escher using "import"
packages.  These packages were deleted.  

6. Implementation Comments
--------------------------
6.1 Fix extraneous semi-colons from instance arithmetic branch in
`q.val.translate.arc`.  
6.2 Speed up gen_erate.pyz by invoking it with pypy (`xtumlmc_build`).  
6.3 Rebuild mcmc/arlan files.  
6.4 Turn off CDT in docgen.  

7. Unit Test
------------
7.1 Run docgen on MicrowaveOven and get the correct documentation.  
7.2 Run mcmc to build mcmc.  Diff the generated code.  See that it
    is the same as the previous code.  

8. Code Changes
---------------
Branch name: 8409_mmmasl

<pre>
 arc/q.val.translate.arc                            |    4 +-
 bin/xtumlmc_build                                  |    5 +-
 mcmc/arlan/funcsigs.h                              |   18 -
 mcmc/arlan/o.oal                                   |   11 +-
 mcmc/arlan/o2.oal                                  |    5 +
 mcmc/arlan/template_engine                         |  Bin 68090 -> 68098 bytes
 .../.externalToolBuilders/Model Compiler.launch    |   22 +-
 ...gedbuilder.core.ScannerConfigBuilder (2).launch |    7 +
 ...t.managedbuilder.core.genmakebuilder (2).launch |    7 +
 model/docgen/.project                              |   15 +-
 model/docgen/gen/HOWTO_build_docgen.txt            |    5 +
 model/docgen/gen/LOG_bridge.c                      |   85 +
 model/docgen/gen/T_bridge.c                        |  366 +++
 model/docgen/gen/datatype.mark                     |   16 +
 model/docgen/gen/docgen.c                          | 3247 ++++++++++++++++++++
 model/docgen/gen/domain.mark                       |  220 +-
 model/docgen/gen/sys_user_co.c                     |  267 ++
 model/docgen/gen/sys_user_co.h                     |  301 ++
 model/docgen/gen/system.mark                       |  265 +-
 .../docgen/DocGen_imported/DocGen_imported.xtuml   |    2 +-
 model/docgen/models/docgen/lib/docgen/docgen.xtuml |   64 +-
 .../ooaofooa_imported/ooaofooa_imported.xtuml      |   57 +
 .../models/docgen/lib/docgen/trigger/trigger.xtuml |   73 +
 model/docgen/src/.gitignore                        |    3 +
 model/docgen/src/makefile.docgen                   |   13 +
 model/document/gen/docbook/t.documentbegin.xml     |   34 +
 model/document/gen/docbook/t.documentend.xml       |    2 +
 model/document/gen/docbook/t.figure.xml            |    8 +
 model/document/gen/docbook/t.figurebegin.xml       |    2 +
 model/document/gen/docbook/t.figureend.xml         |    2 +
 model/document/gen/docbook/t.image.xml             |    4 +
 model/document/gen/docbook/t.link.xml              |    1 +
 model/document/gen/docbook/t.listbegin.xml         |    1 +
 model/document/gen/docbook/t.listend.xml           |    1 +
 model/document/gen/docbook/t.listitembegin.xml     |    2 +
 model/document/gen/docbook/t.listitemend.xml       |    2 +
 model/document/gen/docbook/t.paragraph.xml         |    1 +
 model/document/gen/docbook/t.paragraph_begin.xml   |    1 +
 model/document/gen/docbook/t.paragraph_end.xml     |    1 +
 model/document/gen/docbook/t.plaintext.xml         |    1 +
 .../document/gen/docbook/t.programlistingbegin.xml |    1 +
 model/document/gen/docbook/t.programlistingend.xml |    1 +
 model/document/gen/docbook/t.section_begin.xml     |    7 +
 .../gen/docbook/t.section_begin_no_abstract.xml    |    3 +
 model/document/gen/docbook/t.section_end.xml       |    1 +
 model/document/gen/docbook/t.tablebegin.xml        |    3 +
 model/document/gen/docbook/t.tablebodybegin.xml    |    1 +
 model/document/gen/docbook/t.tablebodyend.xml      |    1 +
 model/document/gen/docbook/t.tableend.xml          |    2 +
 model/document/gen/docbook/t.tableentrybegin.xml   |    2 +
 model/document/gen/docbook/t.tableentryend.xml     |    1 +
 model/document/gen/docbook/t.tableheadbegin.xml    |    1 +
 model/document/gen/docbook/t.tableheadend.xml      |    1 +
 model/document/gen/docbook/t.tablerowbegin.xml     |    1 +
 model/document/gen/docbook/t.tablerowend.xml       |    1 +
 model/document/gen/docbook_h/t.documentbegin.h     |   60 +
 model/document/gen/docbook_h/t.documentend.h       |    2 +
 model/document/gen/docbook_h/t.figure.h            |   24 +
 model/document/gen/docbook_h/t.figurebegin.h       |   10 +
 model/document/gen/docbook_h/t.figureend.h         |    2 +
 model/document/gen/docbook_h/t.image.h             |    8 +
 model/document/gen/docbook_h/t.link.h              |    6 +
 model/document/gen/docbook_h/t.listbegin.h         |    2 +
 model/document/gen/docbook_h/t.listend.h           |    2 +
 model/document/gen/docbook_h/t.listitembegin.h     |    2 +
 model/document/gen/docbook_h/t.listitemend.h       |    2 +
 model/document/gen/docbook_h/t.paragraph.h         |    4 +
 model/document/gen/docbook_h/t.paragraph_begin.h   |    2 +
 model/document/gen/docbook_h/t.paragraph_end.h     |    2 +
 model/document/gen/docbook_h/t.plaintext.h         |    3 +
 .../document/gen/docbook_h/t.programlistingbegin.h |    3 +
 model/document/gen/docbook_h/t.programlistingend.h |    2 +
 model/document/gen/docbook_h/t.section_begin.h     |   20 +
 .../gen/docbook_h/t.section_begin_no_abstract.h    |   10 +
 model/document/gen/docbook_h/t.section_end.h       |    2 +
 model/document/gen/docbook_h/t.tablebegin.h        |   10 +
 model/document/gen/docbook_h/t.tablebodybegin.h    |    2 +
 model/document/gen/docbook_h/t.tablebodyend.h      |    2 +
 model/document/gen/docbook_h/t.tableend.h          |    4 +
 model/document/gen/docbook_h/t.tableentrybegin.h   |    2 +
 model/document/gen/docbook_h/t.tableentryend.h     |    2 +
 model/document/gen/docbook_h/t.tableheadbegin.h    |    2 +
 model/document/gen/docbook_h/t.tableheadend.h      |    2 +
 model/document/gen/docbook_h/t.tablerowbegin.h     |    2 +
 model/document/gen/docbook_h/t.tablerowend.h       |    2 +
 model/escher/gen/HOWTO Create mcmc-docgen.txt      |    5 +-
 model/escher/gen/LOG_bridge.c                      |    2 -
 model/escher/gen/T_bridge.c                        |   42 +-
 model/escher/gen/docbook/t.documentbegin.xml       |   34 -
 model/escher/gen/docbook/t.documentend.xml         |    2 -
 model/escher/gen/docbook/t.figure.xml              |    8 -
 model/escher/gen/docbook/t.figurebegin.xml         |    2 -
 model/escher/gen/docbook/t.figureend.xml           |    2 -
 model/escher/gen/docbook/t.image.xml               |    4 -
 model/escher/gen/docbook/t.link.xml                |    1 -
 model/escher/gen/docbook/t.listbegin.xml           |    1 -
 model/escher/gen/docbook/t.listend.xml             |    1 -
 model/escher/gen/docbook/t.listitembegin.xml       |    2 -
 model/escher/gen/docbook/t.listitemend.xml         |    2 -
 model/escher/gen/docbook/t.paragraph.xml           |    1 -
 model/escher/gen/docbook/t.paragraph_begin.xml     |    1 -
 model/escher/gen/docbook/t.paragraph_end.xml       |    1 -
 model/escher/gen/docbook/t.plaintext.xml           |    1 -
 model/escher/gen/docbook/t.programlistingbegin.xml |    1 -
 model/escher/gen/docbook/t.programlistingend.xml   |    1 -
 model/escher/gen/docbook/t.section_begin.xml       |    7 -
 .../gen/docbook/t.section_begin_no_abstract.xml    |    3 -
 model/escher/gen/docbook/t.section_end.xml         |    1 -
 model/escher/gen/docbook/t.tablebegin.xml          |    3 -
 model/escher/gen/docbook/t.tablebodybegin.xml      |    1 -
 model/escher/gen/docbook/t.tablebodyend.xml        |    1 -
 model/escher/gen/docbook/t.tableend.xml            |    2 -
 model/escher/gen/docbook/t.tableentrybegin.xml     |    2 -
 model/escher/gen/docbook/t.tableentryend.xml       |    1 -
 model/escher/gen/docbook/t.tableheadbegin.xml      |    1 -
 model/escher/gen/docbook/t.tableheadend.xml        |    1 -
 model/escher/gen/docbook/t.tablerowbegin.xml       |    1 -
 model/escher/gen/docbook/t.tablerowend.xml         |    1 -
 model/escher/gen/docbook_h/t.documentbegin.h       |   60 -
 model/escher/gen/docbook_h/t.documentend.h         |    2 -
 model/escher/gen/docbook_h/t.figure.h              |   24 -
 model/escher/gen/docbook_h/t.figurebegin.h         |   10 -
 model/escher/gen/docbook_h/t.figureend.h           |    2 -
 model/escher/gen/docbook_h/t.image.h               |    8 -
 model/escher/gen/docbook_h/t.link.h                |    6 -
 model/escher/gen/docbook_h/t.listbegin.h           |    2 -
 model/escher/gen/docbook_h/t.listend.h             |    2 -
 model/escher/gen/docbook_h/t.listitembegin.h       |    2 -
 model/escher/gen/docbook_h/t.listitemend.h         |    2 -
 model/escher/gen/docbook_h/t.paragraph.h           |    4 -
 model/escher/gen/docbook_h/t.paragraph_begin.h     |    2 -
 model/escher/gen/docbook_h/t.paragraph_end.h       |    2 -
 model/escher/gen/docbook_h/t.plaintext.h           |    3 -
 model/escher/gen/docbook_h/t.programlistingbegin.h |    3 -
 model/escher/gen/docbook_h/t.programlistingend.h   |    2 -
 model/escher/gen/docbook_h/t.section_begin.h       |   20 -
 .../gen/docbook_h/t.section_begin_no_abstract.h    |   10 -
 model/escher/gen/docbook_h/t.section_end.h         |    2 -
 model/escher/gen/docbook_h/t.tablebegin.h          |   10 -
 model/escher/gen/docbook_h/t.tablebodybegin.h      |    2 -
 model/escher/gen/docbook_h/t.tablebodyend.h        |    2 -
 model/escher/gen/docbook_h/t.tableend.h            |    4 -
 model/escher/gen/docbook_h/t.tableentrybegin.h     |    2 -
 model/escher/gen/docbook_h/t.tableentryend.h       |    2 -
 model/escher/gen/docbook_h/t.tableheadbegin.h      |    2 -
 model/escher/gen/docbook_h/t.tableheadend.h        |    2 -
 model/escher/gen/docbook_h/t.tablerowbegin.h       |    2 -
 model/escher/gen/docbook_h/t.tablerowend.h         |    2 -
 model/escher/gen/ooaofooa.c                        | 2688 +---------------
 model/escher/gen/sys_user_co.c                     |   19 +-
 model/escher/gen/sys_xtuml.c                       |   20 +-
 .../ooaofooa/DocGen_imported/DocGen_imported.xtuml |   57 -
 .../Document_imported/Document_imported.xtuml      |   57 -
 .../escher/components/ooaofooa/ooaofooa.xtuml      |   84 +-
 .../components/ooaofooa/trigger/trigger.xtuml      |   73 -
 model/escher/models/escher/mcmc/afun/afun.xtuml    |    5 +-
 model/escher/src/gen_erate                         |  Bin 163527 -> 0 bytes
 .../Translation Extensions/set/set.xtuml           |   22 +-
 model/mcshared/gen/STRING_bridge.c                 |  240 ++
 model/mcshared/gen/T_bridge.c                      |  467 +++
 model/mcshared/gen/V_bridge.c                      |   37 +
 model/mcshared/gen/bridge.mark                     |   59 -
 model/mcshared/gen/class.mark                      |  250 --
 model/mcshared/gen/datatype.mark                   |  166 -
 model/mcshared/gen/domain.mark                     |  218 --
 model/mcshared/gen/event.mark                      |   43 -
 model/mcshared/gen/masl_url.c                      |   86 +
 model/mcshared/gen/masl_url.h                      |   39 +
 model/mcshared/gen/system.mark                     |  256 --
 170 files changed, 5799 insertions(+), 4795 deletions(-)
</pre>

End
---

