---


---

xtUML Project Analysis Note

#### Add Instance Dumping to the C Model Compiler
#### Model Compiler Speed-Up
#### A Significant Baby Step for MBMCs
#### Translating the OAL and Value Subsystems
#### Leaping the Chasm to MBMCs


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
[2] Design Note <https://github.com/xtuml/mc/doc/notes/4_cds_instdump_dnt.md>


4.  Background
--------------
Model compilers load instance data from input xtUML model files.  The
MC-export-API plugins output SQL formatted data that is loaded by the
model compiler.  The current instance loading is limited in speed and
capacity.  Large models are pressing into and surpassing this limit.
At least two customers are running into long translation times (> 1 hour)
and memory capacity (4GB) failures while compiling their models.


5.  Requirements
----------------
### 5.1 Speed
The model compiler shall translate models at least twice as fast as compiled
by the presently shipping version (3.6.0) of BridgePoint.

### 5.2 Size
The model compiler shall translate models at least 50% larger than handled
by version 3.6.0 of BridgePoint.


6.  Analysis
------------

### 6.1  Problem

Even though RSL and OAL are similar, they are not the same.  There are
challenges migrating from RSL to xtUML/OAL.  Relationships,
invocations, parameters, return values, _self_, syntax and more differ
between RSL and xtUML/OAL.  RSL is heavily processing-centric with hundreds
of functions passing many parameters.  Adding functions with parameters into
an xtUML model is UI labor intensive.  The model compilers contain thousands
of lines of RSL which must be refactored before it can be converted into OAL.
This large amount of work represents a barrier blocking the path forward to
model-based model compilers.  To make matters worse, we wish to maintain an
RSL version of a model compiler for some time.

There are roughly 35,000 lines of RSL in 450 functions carrying 800
parameters and returning 700 values.  As described below, there is no
direct mapping of general RSL to OAL.  However, a hand port of RSL to OAL
would introduce errors that may be difficult or impossible to eliminate.
Manually maintaining both RSL and xtUML/OAL versions of the same model
compiler would be costly.

A direct mapping between RSL and xtUML/OAL is almost a necessity to
complete a successful migration.

The following sections add further detail to each of the above-mentioned
challenges to migrating from RSL to xtUML/OAL.  Changes to relationships,
invocations, parameters, return values, _self_, syntax are explained
to more completely cement the need for a stepwise approach that is
continually testable.

#### 6.1.1  Relationships
In RSL associations are realized using relational data base techniques.
There is no relate statement.  For an association to have any meaning it
must exist in the data model and must be formalized using identifiers
and referentials (foreign keys).  In RSL, setting the referential
attribute set to the related class identifier is the means for establishing
a traversable association.

#### 6.1.2  Invocations, Parameters and Return Values
RSL uses an invoke key word when calling functions.  Parameters are weakly
typed and passed positionally.  Parameters do not have labels.  Values
(note multiple) are returned from the function as fields in a return
"fragment".  These fields can then be read and assigned in the context
of the caller.

A viable alternative to the above approach would be to map the multi-field
return fragments to xtUML structures (structured data type values).  A
function could be declared with a return value typed with a structured
data type.  Just such a mapping has been done in the past, and it works.
However, instance references can be passed in to functions, and the functions
can populate the instance attribute values.  This approach avoids the
unique attr_ approach of RSL and encourages modeled elements to carry
data rather than transient structures.

#### 6.1.3  Self and Scoping
The concept of _self_ does not exist in RSL.  There are instances of
classes, but each instance must be accessed through a handle from a
selection or recent creation.  Within a function, scoping behaves
similarly between RSL and OAL.  However, RSL has special rules
for the outer scope.  This includes a limitation on emitting text to
files from anywhere other than the outer scope.  In the face of this,
RSL instrictions in loops at the outer scope are re-parsed and
re-interpretted on each pass bogging down performance.

#### 6.1.4  Substitution Variables and Templating
RSL supports substitution variables and intermixes templating with
these substitution variables and string processing.  The RSL syntax for
these features is unique to RSL and is orthoganal to OAL syntax.
These syntax differences represent the "greatest distance" between
RSL and OAL.


### 6.2  Porting the RSL to xtUML/OAL

#### 6.2.1  Full-Circle, Stepwise Migration 
We can maintain both the xtUML/OAL model compiler application and the
RSL version by _generating_ the RSL rendition from the xtUML/OAL version.
xtUML is designed for translation.  So, the conversion can go from xtUML/OAL
to RSL much easier than the other way around.  We must build an RSL
model compiler.

At a high level, this is a three step process:
- Migrate RSL into OAL.
- Build a model compiler to generate RSL.
- Generate the RSL.

However, the first step above is too large and too risky.  So, we must
"come at this from both ends".  We will make changes to the RSL to make
it as compatible with OAL as is feasible.  We will go so far as to
change it into exactly what will be generated by the RSL MC.  This
breaks the first step above into several steps.  During these modifications
the RSL will always be functional and can be continuously tested.  The
test can compare the generated code to ensure it remains identical from
step to step.

#### 6.2.2  Rationale for an RSL Model Compiler
The model compiler test suite is strong but does not claim full
coverage.  Thus, we will test continually, but we will also avoid
making changes that are not "direct derivatives" of existing functionality.
At the end of this migration, we will have a model-based model compiler
that is incrementally and tracably derived from our current (successful)
RSL-based model compiler.

In order test continually at each step, no step can leave a gap.  And a
gap could easily exist between the RSL and the corresponding OAL.  The
RSL model compiler fills this gap.  When a portion of the RSL model
compiler is ported to OAL, it can be "tested" by (re)generating the RSL
and comparing it to the original.  If there is a match, then we can
be confident that the port to OAL is isomorphically identical to the RSL.
It is in fact derived from it.

Note that the generated RSL approach enables a piece-by-piece migration
of RSL to xtUML/OAL.  A small piece of the RSL model compiler can be
ported to OAL, re-generated and dubbed complete.  At this point,
maintenance of this small fraction of the model compiler can be
performed on the xtUML/OAL port.  Meanwhile, another small section
of RSL can be selected for migration.  Thus, the RSL model compiler
enables this stepwise approach to porting from RSL to xtUML/OAL.

In addition, this approach leaves open the option of maintaining
an xtUML/OAL model compiler application and delivering it in three
forms:  xtUML/OAL source, compiled C code and generated RSL.  Further
into the future, it may be delivered as compiled Java (a fourth option).

The stepwise approach also allow for a "hybrid" delivery.

#### 6.2.3  Hybrid xtUML and RSL Model Compiler
The stepwise porting of RSL to xtUML/OAL described above is further
supported by instance dumping and loading.

##### 6.2.3.1  Instance Dumping a Loading
MC-3020 has the ability to load instances from xtUML (SQL) data.
It also has the ability to dump instance data from memory into xtUML/SQL
format.  This capability exists at both the model compiler level
and at the generated code level.  In other words, a compiled model
compiler can dump/load instances, and an RSL model compiler can dump/load
instances.

With this ability, it opens the possibility of breaking the model 
compilation into phases.  One phase can run, dump its instances and
stop.  Later, another phase can run, loading the instances dumped by
the previous phase and continue processing.  This capability allows
a hybrid approach by allowing a model-based (compiled) model compiler
to process model data first, dump instances and then allow an RSL-based
model compiler to load the pre-processed instance data and finish the
code generation.

Such a hybrid approach gives us additional flexibility in our migration
from RSL to xtUML/OAL.


7.  Work Required
-----------------

Below is an outline of the design steps required to make the port.
In the design note [2], each of these steps will be elaborated.
Sizings are rough estimates.

- (2 days) Baseline a command line test suite.
- (10 days) Test.  Run test cases continually.  Compare generated
  source code and instances.
- (2 days) Add commented relate statements everywhere in the RSL.
- (5 days) Eliminate the multi-attr return from all RSL functions.
- (5 days) Make consistent parameter naming/labeling/typing.
- (10 days) Segregate mixed queries and templates.
- (3 days) Migrate top-level transient variables into the MC model.
- (5 days) Package RSL into model-based files and functions.
- (15 days) Build RSL MC.
- (2 days) Build a tool to easily import functions and parameters from
  a text file.
- (3 days) Refresh arlan to do some conversion of RSL to OAL.
- (10 days) Bring the C++ and SystemC branches up to date.


8.  Acceptance Test
------------
### 8.1    Timing Test
#### 8.1.1 GC Model
Translate https://github.com/xtuml/agilegc/models/gc and achieve a measured translation
time half or less than that of 3.6.0
#### 8.1.2 ANYAPP Model
Translate https://github.com/xtuml/agilegc/models/anyapp and achieve a measured translation
time half or less than that of 3.6.0
### 8.2    Size Test
#### 8.2.1  SYS Model
Successfully translate https://github.com/xtuml/agilegc/models/SYS.

End
---
