---

Copyright 2013 Mentor Graphics Corporation

---

xtUML Project Design Note

Instance Dumping and Model Compiler Speed-Up


1.  Abstract
------------
Instance loading and dumping capability in the model compiler will be
added/enhanced to improve translation speed.  The OAL translation
functionality will migrate from RSL to xtUML.


2.  History
-----------


3.  Document References
-----------------------
[1] Issues 4 <https://github.com/xtuml/mc/issues/4>
    Create instance dumper for C model compiler.
[2] Analysis Note <https://github.com/xtuml/mc/doc/notes/4_cds_instdump_ant.md>


4.  Background
--------------
See [2].


5.  Analysis
------------
See [2].


6.  Requirements
----------------
See [2].


7.  Design
----------

- (2 days) Baseline a command line test suite.
- (10 days) Test.  Run test cases continually.
- (2 days) Add commented relate statements everywhere in the RSL.
- (5 days) Eliminate the multi-attr return from all RSL functions.
- (5 days) Make consistent parameter naming/labeling/typing.
- (10 days) Segregate mixed queries and templates.
- (3 days) Migrate top-level transient variables into MC meta-model.
- (5 days) Refactor RSL into model-based files and functions.
- (15 days) Build RSL MC.
- (2 days) Build a tool to easily import function and parameters from
a text file.
- (3 days) Refresh arlan to do some conversion of RSL to OAL.

### 7.1 Baseline Test
- Use https://github.com/xtuml/models/VandMCtest/mctest models.
- Run the models using the command line interface.  (Or, if preferred,
simply run xtumlmc_build on the .sql file for each model, thus skipping
the parse/MC-export step on each test iteration).
- Store the generated code into a location where it can be easily compared
with future generated code.
- Build a script to compare newly generated code with baseline generated
code reporting differences.

### 7.2 Run Tests
After each consistent, self-contained RSL change, run the test suite and
verify that the output generated code is unchanged.  Also check for error
messages in the translation logs.

### 7.3 Relate Statements
RSL does not have relate; it simply copies identifiers into referential
attributes.  The OAL will do both until an RSL model compiler automates
the generation of the foreign key copy statements.  Identify all places
in the RSL where these "foreign key" relates are being done and provide
a comment in the line above that has the correct syntax OAL relate
statement.

### 7.4 Function Return Data
- Identify all usage of the attr approach for returning data.
- Change all RSL to follow these rules:
  - Only _result_, _body_ and by-reference parameters are valid vehicles
for returning data.

### 7.5 Parameter Naming and Labeling
### 7.6 Segregate Queries and Templates
### 7.7 Migrate Top-Level Transients

### 7.8 Packaging
There are several alternatives for packaging the OAL/RSL into
action bodies.  The two most compelling are functions and operations.

#### 7.8.1  Pros and Cons of Packaging Alternatives
Functional cohesion would dictate allocating processing to classes packaged
into class operations.  This would keep functionality in close proximity
to the data being operated upon.  However class operations are more widely
distributed in the model and thus separated from related action language
bodies allocated to other classes.

Functions have a more direct mapping to a set of RSL archetype files.
They are easier to see and edit in the xtUML Editor.  It should not be
difficult to reallocate the functions to operations in the future.

We will start with OAL functions with very close mapping to the RSL.

Using one or a very few function packages, create functions for each
of the archetype functions.  The parameter and return value signature
should match.

Use a tool to automate this work.  [See section 7.10.]

#### 7.8.2 File Naming
The name of an archetype file needs to be easy to generate.  The
model of the model compiler will have the information needed to
generate the RSL file.  The function can be marked with a file
name that will carry the contents of the fuction.  The Description
field of the function can be given an RSL file name.

It may be simpler to use fewer archetype files.  However, the
ordering of the functions in the archetype files might then be a
challenge.

<TE_keyletters>_<operation_name>
The operation name may have a (sub)pattern.

### 7.9 RSL Model Compiler
Create an RSL model compiler that converts a set of OAL functions
into a corresponding set of RSL functions.

### 7.10 Function Prototype Import Tool
An import tool prototype has already been created that can read a file
line by line and import functions with the return data types, parameters
and parameter types.  Solidify this tool for use in the initial import
of RSL functions into xtUML.  With hundreds of functions to create, one
or two full days could be spent on a tool.

### 7.11 Refresh arlan (Archetype Language Parser)
A flex/bison parser was created years ago that can parse RSL (archetype
language).  A derivative of this parser exists to convert RSL into OAL.
It is called rsl2oal.  Find this.  Build it.  Establish/Restore its
usefulness, or abandon it.





Migrate (RSL->OAL), gen (OAL->RSL), compare (gen'd RSL to edited RSL),
replace (edited RLS with OAL/gen'd RSL) little by little

RSL model compiler:  param ordering, invoke?, param labeling
Relates need refs in a comment, bridge or actual (until RSL MC generates them).

Consider RSL MC that uses Action_Semantics versus traversing/iterating ACT_SMTs.
  .invoke r = f(); .assign x = r.result;
  return x; -> .assign attr_result = x



Remove domain_CLASS_INFO_INIT macro and simply put the data in the C file.
  batch_relater_init
  instance_loaders
  dispatchers

Each class is going to need an instance dumper.
  Maybe it should link into class_info.
  Each data types will have a dumper.
  Each attribute will call the associated data type dumper.

Consider defining a class to carry a file name and file contents.
Use this in conjunction with emit-to-file.
This seems especially appropriate when percolating templates up
through several layers of invocation/stack.

Use call by reference rather than the attr_ strangeness.
The call-by-reference mechanism will closely map between OAL
and RSL.  Consider passing in the instance that will contain the
output values.

Basically make the RSL actions, functional allocation and file
naming look as much like the model as feasible.
  - Use OAL style in the RSL.
  - Use a precise mapping for the names of the operations.
  - Pass the same argument names.

Edit docgen to explore.
Functionize (OAL) beginning of 3020.
Test in RSL-only first.
Rid more transients.



sys.arc (easy) [TE_SYS]
  Package as function unless emit-to-file prevents it.

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


8.  Design Comments
-------------------

9.  Work Required
-----------------

10.  Unit Test
--------------



End
---
