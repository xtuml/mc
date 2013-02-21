---

Copyright 2013 Mentor Graphics Corporation

---

xtUML Project Design Note

#### Instance Dumping and Model Compiler Speed-Up


1.  Abstract
------------
Instance loading and dumping capability in the model compiler will be
added/enhanced to improve translation speed.  The OAL translation
functionality will migrate from RSL to xtUML.


2.  History
-----------
None.

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

### 7.1 Baseline Test
- Use https://github.com/xtuml/models/VandMCtest/mctest models.
- Run the models using the command line interface.  (Or, if preferred,
  simply run xtumlmc_build on the .sql file for each model, thus skipping
  the parse/MC-export step on each test iteration).
- Store the generated code into a location where it can be easily compared
  with future generated code.
- Build a script to compare newly generated code with baseline generated
  code reporting differences.
- Search the translation logs for ERRORs.

#### 7.1.1 Proposed Testing Approach
Testing is more easily automated with scripting on a unix system than
on Windows.  On Linux it is possible to link the MC c.source plugin
mc3020/arc folder to the arc folder in the git working directory.
The same can be done with mc3020/schema/sql

Here are some excerpts from scripts that do some of this:
<pre>
export PATH=$PATH:/home/cort/psf/Home/bp/eclipse
export PATH=$PATH:/home/cort/psf/Home/bp/eclipse_extensions/BridgePoint/eclipse/plugins/com.mentor.nucleus.bp.mc.c.source_3.6.3/mc3020/bin
export MGLS_DLL=/home/cort/psf/Home/bp/extras/wine_addons/MGLS.DLL
export MGLS_PKGINFO_FILE=/home/cort/psf/Home/bp/extras/wine_addons/mgc.pkginfo
export MGLS_LICENSE_FILE=/home/cort/psf/Home/bp/license/license.dat

cd assoc_unformal/gen
rm -f code_generation/_system.sql; rm -rf code_generation/arc; xtumlmc_build.pl -home /home/cort/psf/Home/bp/eclipse_extensions/BridgePoint/eclipse/plugins/com.mentor.nucleus.bp.mc.c.source_3.6.3/ -l3s -e -d code_generation -O ../../src/
cd ../..
cd calculator/gen
rm -f code_generation/_system.sql; rm -rf code_generation/arc; xtumlmc_build.pl -home /home/cort/psf/Home/bp/eclipse_extensions/BridgePoint/eclipse/plugins/com.mentor.nucleus.bp.mc.c.source_3.6.3/ -l3s -e -d code_generation -O ../../src/
cd ../..

diff -rq assoc_unformal/src/ assoc_unformal/src_x
diff -rq calculator/src calculator/src_x
</pre>

### 7.2 Run Tests
After each consistent, self-contained RSL change, run the test suite and
verify that the output generated code is unchanged.  Also check for error
messages in the translation logs.  Commit the change to configuration
management.

### 7.3 Relate Statements
RSL does not have _relate_; it simply copies identifiers into referential
attributes.  Identify all places in the RSL where these "foreign key"
relates are being done and provide a comment in the line above that has
the correct syntax OAL relate statement.  Place a comment (.// end relate)
after the referential copy statements that identify them as superfluous in the
presence of _relate_.  (Check each association as the relate side comment
is placed.  Be sure that the correct referentials are being copied.  Do
mark a copy unless it is correct.)

There are a few places where _unrelate_ would be used in OAL.  Use the
same protocol for these unrelate statements (zeroing out referenctials)
and delimit with .// end unrelate .

To find the relate statements (the copying of IDs into referentials),
we can search the RSL for the attribute names.  The schema can
be grepped for the IDs and the referentials (in the ROP statements).

IDs and referentials cannot be read or written arbitrarily in OAL.
Upon creation of an instance, generator intializes attributes of
type UNIQUE_ID.  The assigned value is unique for the instance but
is the same for all attributes of type UNIQUE_ID in the newly
created instance.  This is a weakness and could even be considered
a bug in generator.  It seems that generator assumes that a class
will have only one attribute of type UNIQUE_ID and that that 
attribute will be the identifier.  However, referential attributes
often have this same type.  RSL must zero them out, especially
in the case of a reflexive associations formalized with a referential
attribute of type UNIQUE_ID.  (In such a scenario, the instance
is effectively initialized at creation as being related to itself.)

Change all such initializations of referential attributes to use
a double-zero (00).

### 7.4 Function Return Data
- Identify all usage of the attr approach for returning data.
- Change RSL to follow these rules:
  - Only _result_, _body_ and by-reference parameters are valid vehicles
    for returning data.
  - Use _body_ only for plain text templating.
  - Use _.invoke r = f()_ followed by _.assign [var] = r.result_ as the
    pattern for returning data.
- If a function is called from more than one place, use the function
  in a consistent way across all usages (same name for transient, etc.).
- If a function is called from more than one place, consider calling it
  only once and storing the return value in model data.

### 7.5 Parameter Naming and Labeling
Unlike OAL, parameters are passed in RSL without labels.  They depend
upon the position of the passed value to align with the declaration of
the parameter in the function definition.  To enable a clear mapping
of parameters between OAL and RSL, follow and enforce the following
rules governing parameter syntax:
- Use lower case for parameter naming.
- For parameters of type _inst_ref_, name the parameter as the lower
  case rendition of the class keyletters of its class type.
- When more than one parameter are of the same type, prepend one or
  all of them with distinguishing characters, but keep the lowercase
  key letters as the ending of the name.  (example:  right_o_obj, left_o_obj)
- For instance reference sets, add the plural 's' to the name.

CDS It is O.K. and good to update local transients to follow the
naming as well.  Just be careful.

### 7.6 Segregate Queries and Templates
Model compilers use templating languages.  Templating languages can
be confusing to look at, because the same text file may contain
instructions from the two languages.  Both the language of the model
compiler (OAL or RSL) and the language of the target (C, System-C, VHDL, etc.)
may be present in the text stream.  It is possible and desirable
(and often difficult) to minimize this mixing of languages.

RSL allows an arbitrary mixing of template with query.  However, OAL
is more limited in its template support.  Thus, it is necessary to
separate query from template enough to make the port to OAL.

Separate the template portion (plain text with substitution variables)
of archetypes into template files.  Name the template files starting
with "t" and a model compiler model naming connection to the imbedding query.
As much as practical perform all queries and then include templates.

CDS t.smt.c and select related stuff

### 7.7 Migrate Top-Level Transients
The current model compiler populates transient variables at the top
level and uses them as globals.  Any data element important
enough to be defined globally and used at lower levels is important
enough to be modeled.  Migrate this data into the translation
model allocating to existing entities or creating new ones.

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
of the archetype functions.  Use a tool to automate this work.
[See section 7.10.]

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

Consider generating the code using the _OAL_ field of TE_SMT which
already re-constructs the OAL from the instance data.

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

CDS Move this into git into the branch.

### 7.12 C++ and System-C Branches
Add the C++ and System-C specialized folders to the git repository
branch for this work.  Then, make changes as necessary to work with
the updated set of common RSL archetypes.

This refresh must occur at least once before file names in the RSL
are changed (if they are changed).





### 7.13  General Notes

We do set arithmetic in RSL.  We cannot do this in OAL.


Compare instance dumps.

As opportunity presents it, use TE_* instances in place of OOA
instances in the MC when possible.  We eventually want the model
compiler to work from its own model exclusively.


I expect there will be ambiguity in the reflexive relate statements.
After conversion to OAL, check coverage on these.

RSL makes an assumption in a few places on the order of colletions.
Look for comments holding "CDS".

Remove domain_CLASS_INFO_INIT macro and simply put the data in the C file.
  batch_relater_init
  instance_loaders
  dispatchers

Consider defining a class to carry a file name and file contents.
Use this in conjunction with emit-to-file.
This seems especially appropriate when percolating templates up
through several layers of invocation/stack.


8.  Design Comments
-------------------

9.  Work Required
-----------------

**sys.arc (easy) [TE_SYS] -**
  Package as function unless emit-to-file prevents it.

**marking (hard) [TM_?] -**
  Somehow support marking, probably using the same marking files,
  but maybe not.

**factory_factory (easy but option to improve) [TE_SYS + lots of singletons] -**
  This has a ton of subroutines that will easily turn
  into operations on the various classes.  However, this
  really should be some kind of loadable text file.

**q.assoc.pseudoformalize.arc (easy) [TE_REL] -**
  This has PseudoFormalizeUnformalizedAssociations.

**MC_metamodel_populate (big) [TE_SYS] -**
  Should this be made hierarchical with operations delegated down?
  Yes, we should at least break it out as it is now.
  All of the functions invoked from this query are fairly OALish.

**q.domain.analyze.arc (easy) [TE_C?] -**
  Turn this into an operation that calls other operations.

**a.oal.analyze.arc (medium) [TE_ABA or TE_SMT] -**
  This contains the various operations called by q.domain.analyze.arc.
  These should be placed onto the appropriate TE_ classes.

**CreateSpecialWhereClauseInstances (easy) [TE_SWC] -**
  Called from sys.arc, defined in q.oal.analyze.arc.

**te_c_CollectLimits (easy) [TE_C] -**
  simple roll-up

**translate_all_oal (easy) [TE_ABA] -**

**q.oal.translate.arc (easy) [TE_ABA] 4 -**

**q.smt.generate.arc (easy except for select_related) [TE_SMT] 69 -**
  Select related is huge.

**t.smt.c (difficult) [TE_SMT] 29 -**
  Consider making these into "real" templates.

**q.val.translate.arc (easy but long) [TE_VAL] 34 -**


10.  Unit Test
--------------
See [2].



End
---
