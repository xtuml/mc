---

Copyright 2013 Mentor Graphics Corporation

---

xtUML Project Analysis Note

Add Instance Dumping to the C Model Compiler
Leaping the Chasm to MBMCs
A Significant Baby Step for MBMCs
Model Compiler Speed-Up
Translating the OAL and Value Subsystems


1. Abstract
-----------
Instance loading and dumping capability in the model compiler will be
added/enhanced to improve translation speed.  The OAL translation
functionality will migrate from RSL to xtUML.


2. History
----------


3. Document References
----------------------
[1] Issues 4 <https://github.com/xtuml/mc/issues/4>
    Create instance dumper for C model compiler.


4. Background
-------------
Model compilers load instance data from input xtUML model files.  The
MC export API plugins output SQL-format data that is then loaded by the
model compiler.  The current instance loading is limited in speed and
capacity.  Large models are pressing into and passing this limit.
At least two customers are running into long translation times (> 1 hour)
and memory capacity (4GB) failures while compiling their models.


5. Requirements
---------------
### 5.1 Speed
The model compiler shall translate models at least twice as fast as compiled
by the presently shipping version (3.6.0) of BridgePoint.

### 5.2 Size
The model compiler shall translate models at least 50% larger than handled
by version 3.6.0 of BridgePoint.


6. Analysis
-----------

### 6.1  Problem

Even though RSL and OAL are similar, they are not the same.  There are
conversion challenges with migrating from RSL to xtUML/OAL.  Relationships,
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

A direct mapping between RSL and xtUML/OAL is almost a necessity to complete
a successful migration.

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

#### 6.1.3  Self and Scoping
The concept of _self_ does not exist in RSL.  There are instances of
classes, but each instance must be accessed through a handle from a
selection or recent creation.  Within a function, scoping behaves
similarly between RSL and OAL.  However, RSL has special rules
for the outer scope.  This includes a limitation on emitting text to
files from anywhere other than the outer scope.  In the face of this,
RSL in loops at the outer scope is re-interpretted on each pass.

#### 6.1.4  Substitution Variables and Templating
RSL supports substitution variables and intermixes templating with
these sustitution variables and string processing.  The RSL syntax for
these features is unique to RSL and is orthoganal to OAL syntax.
These syntax differences represent the "greatest distance" between
RSL and OAL.


### 6.2  Breakthrough

#### 6.2.1  Idea
We can maintain both the xtUML/OAL model compiler application and the
RSL version by _generating_ the RSL rendition from the xtUML/OAL version.
xtUML is designed for translation.  So, the conversion can go from xtUML/OAL
to RSL much easier than the other way around.  We must build an RSL
model compiler.


7. Work Required
----------------

### 7.1 Outline of Steps
- (3 days) Eliminate the multi-attr_ approach from RSL.  Use attr_ to return a single
value only.  Then, using only attr_result/body.  Treat assignment of attr_ as the
return statement.
- (3 days) Make consistent parameter naming/labeling.
- (2 days) Add commented relate statements everywhere in the RSL.
- (5 days) Refactor RSL MC into appropriate files and functions.
- (5 days) Test.  Run test cases continually.
- (10 days) Build RSL MC.


8. Acceptance Test
------------
### 8.1    Timing Test
#### 8.1.1  Translate xtuml/agilegc/models/gc and achieve a measured translation
       time half or less than that of 3.6.0
#### 8.1.2  Translate xtuml/agilegc/models/anyapp and achieve a measured translation
       time half or less than that of 3.6.0
### 8.2    Size Test
#### 8.2.1  Successfully translate xtuml/agilegc/models/SYS.

End
---
