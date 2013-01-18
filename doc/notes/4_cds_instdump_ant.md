---

Copyright 2013 xtUML.org

---

xtUML Project Analysis Note
Add Instance Dumping to C Model Compiler

1. Abstract
-----------


2. History
----------
In this section, list the file names of review minutes for this note.
If the minutes have major observations, precede the file name with the
word 'update'. If the minutes have no major observations, precede the file
name with the word 'final'.

3. Document References
----------------------
In this section, list all the documents that the reader may need to refer to.
Give the full path to reference a file.
[1] Issues 2 <https://github.com/xtuml/documentation/issues/2>

4. Background
-------------
In this section, outline the important points relating to this issue/bug that
the reader would need to know in order to understand the rest of this
document.

5. Requirements
---------------
This section is only required if there is no preceding analysis note. 
If present it describes the requirements that need to be satisfied.  If there 
is an SRS, this section may simply refer to it.  Each requirement should be as 
short and simple as possible and must be clearly defined.

6. Analysis
-----------
This section is only required if there is no preceding analysis note. If present
it sets out a brief analysis of the problem to be resolved by this design note.

* Item 1
* Item 2
* Item 3

7. Work Required
----------------
In this section, break out the consequential work (as a numbered list) needed
to meet the requirements specified in the Requirements section.

8. Acceptance Test
------------
In this section, list the tests that need to be performed in order to
verify that all the requirements are satisfied.

End
---




Remove domain_CLASS_INFO_INIT macro and simply put the data in the C file.
  batch_relater_init
  instance_loaders
  dispatchers

Each class is going to need an instance dumper.
  Maybe it should link into class_info.
  Each data types will have a dumper.
  Each attribute will call the associated data type dumper.

Edit docgen to explore.
Functionize (OAL) beginning of 3020.
Test in RSL-only first.
Rid more transients.

Consider using passing in the instance that will contain the output values.
This would map very closely OAL to RSL.


sys.arc (easy) [TE_SYS]
  Package as function.

marking (hard) [TM_?]
  Somehow support marking, probably using the same marking files,
  but maybe not.

factory_factory (easy but option to improve) [TE_SYS + lots of singletons]
  This has a ton of subroutines that will easily turn
  into operations on the various classes.  However, this 
  really should be some kind of loadable text file.

q.assoc.pseudoformalize.arc (easy) [TE_REL]
  This has PseudoFormalizeUnformalizedAssociations.

MC_metamodel_populate (big) [TE_SYS]
  Should this be made hierarchical with operations delegated down?
  Yes, we should at least break it out as it is now.
  All of the functions invoked from this query are fairly OALish.

q.domain.analyze.arc (easy) [TE_C?]
  Turn this into an operation that calls other operations.

a.oal.analyze.arc (medium) [TE_ABA or TE_SMT]
  This contains the various operations called by q.domain.analyze.arc.
  These should be placed onto the appropriate TE_ classes.

CreateSpecialWhereClauseInstances (easy) [TE_SWC]
  Called from sys.arc, defined in q.oal.analyze.arc.

te_c_CollectLimits (easy) [TE_C]
  simple roll-up
  
translate_all_oal (easy) [TE_ABA]

q.oal.translate.arc (easy) [TE_ABA] 4

q.smt.generate.arc (easy except for select_related) [TE_SMT] 69
  Select related is huge.

t.smt.c (difficult) [TE_SMT] 29
  Consider making these into "real" templates.

q.val.translate.arc (easy but long) [TE_VAL] 34


