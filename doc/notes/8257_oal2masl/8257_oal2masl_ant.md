---

This work is licensed under the Creative Commons CC0 License

---

# OAL to MASL Translation
### xtUML Project Analysis Note

1. Abstract
-----------
Find here an analysis of approaches to converting OAL to MASL.  Background
and requirements are supplied, and several options for meeting the
requirements are explored.

2. Document References
----------------------
[1] [8257 OAL to MASL](https://support.onefact.net/issues/8257) parent issue tracking this work  

3. Background
-------------
OAL and MASL are action languages.  MASL is a superset of OAL supporting
all of the functionality of OAL with stronger typing and collections.
OAL easily maps onto MASL.

There is a significant body of intellectual property (IP) shared in the
form of xtUML/OAL models.  It would be of significant benefit to the
MASL-modeling community to have access to MASL versions of these xtUML/OAL
models.  This note outlines a plan to convert OAL to MASL.  Such a
converter enables xtUML/OAL IP to be accessed by MASL users.

4. Requirements
---------------
4.1 OAL to MASL  
OAL shall be converted to MASL.

4.2 Convertability  
Any legal xtUML model shall be valid input for OAL to MASL translation.

4.3 Packaging  
MASL activities will be output into one or more files named with an
extension of `.masl`.

4.4 Documentation  
Provide a table with 2 columns that maps OAL statements on the left
and corresponding MASL statements on the right.  

5. Analysis
-----------
There are several options in approach to take for this work.  A few are
listed here and analyzed.  The option deemed most fitting is selected.

### 5.1 Perl Script  
A Perl or Python script could be written that parses OAL and converts
each OAL expression and statement into corresponding MASL expressions
and statements.  Simple string substitutions and processing may be
sufficient to achieve the conversion.

5.1.1 Pros  
5.1.1.1 simplistic  

5.1.2 Cons  
5.1.2.1 Variable declarations would be a big challenge in this
approach, because the script would not have scoped parsing.  
5.1.2.2 There is no scientific and methodical set of steps to be taken.
This would be a hack and not guaranteed to work.

### 5.2 RSL Translator Based on MC-3020  
MC-3020 and MC-Java exist as example translators.  MASL has a lot
in common with the C and Java programming languages especially in
the form of algebraic expressions.  Starting from C or Java, MASL
would require about a fourth of the expressions and about three
fourths of the statements (of C) to change shape.

The queries `q.val.translate.arc` and `q.oal.translate.arc` provide
precise guidance for conversion of each OAL expression and statement type.
Following this guidance by simply substituting the "MASL Way" for the
"C Way" would be straight-forward.

5.2.1 Pros  
5.2.1.1 This approach guides development by starting with C as an
example that is simply modified in place.  
5.2.1.2 The compelling benefit of this approach is expedience.  This is
probably the quickest and easiest way to meet the stated requirements.

5.2.2 Cons  
5.2.2.1 The work to build this translator would not advance the art of
model compilation.  
5.2.2.2 The output meets the requirements but does not provide additional
value in the form of modeled artifacts.  

### 5.3 MCMC Variant Based on MC-3020  
This idea is similar to the previous option, but instead of working
in RSL, the xtUML model of MC-3020 would be modified directly.
`mcmc` is a C model compiler compiled from a model.  It is focused
on translating action language.

5.3.1 Pros
This approach is a bit slower to work with than the previous option.
It requires a compile step for testing.

5.3.2 Cons  
5.3.2.1 This approach would not advance the art of model transformation.  
5.3.2.2 This approach is a bit slower and more cumbersome than the
previous option.

### 5.4 Extend xtuml2masl  
We have built an xtUML to MASL translator.  It consists of a set of
modeled functions (`maslout`).  These functions query the xtUML
metamodel and then sequence
a set of messages carrying serialized MASL to another component (`masl`).
`masl` populates itself with this string data.  A `render()` operation
is then invoked which employees templating to output legal (structural)
MASL.  This approach has been working well to export MASL from xtUML
models.

This model could be extended to include MASL activities.  Functions would
be added to `maslout` to serialize xtUML instances and serialized MASL.
`masl` could be extended to populate a model of MASL Activity.  Templating
could be used to emit legal MASL.

There are a couple of ways to build the model of MASL Activity.  
  - Build a semantic model by hand analyzing the language.  
  - Programmatically onvert the MASL grammar into a class diagram AST (abstract syntax
tree) which could be imported into BridgePoint and graphically reconciled.
Layout of the class diagram would need to be done manually.

5.4.1 Pros  
5.4.1.1 This approach is consistent with our current approach and a
natural extension.  
5.4.1.2 elegance  
5.4.1.3 The model of MASL is a valuable asset.  Completing it by
supplying the model of Activity increases its value.  
5.4.1.4 There is an interesting experiment which models a language as
syntax and semantics simultaneously.  The model of MASL Activity is a
good candidate for this experiment and would help move model tranformation
technology forward.

5.4.2 Cons  
5.4.2.1 This approach will take much longer than previous options.  
5.4.2.2 Making small modifications in this approach may be more expensive.  

### 5.5 Parser-Based Conversion  
There exists an antlr grammar of OAL.  We have antlr and Xtext grammars
for MASL.  The conversion could be done in Java/xtend by walking the
AST of OAL and populating an AST of MASL.

5.5.1 Pros  
5.5.1.1 This option could work quickly if done by an expert.  

5.5.2 Cons  
5.5.2.1 This approach would not advance the art of model transformation.  
5.5.2.2 This approach is a bit slower and more cumbersome than some of
the other options.  


6. Work Required
----------------
6.1 Variable Declarations  
6.1.1 OAL uses implicit typing.  MASL uses explicit typing.
Type declarations need to be produced for the output MASL.
This has been done for the C model compiler by accumulating
declarations into TE_BLK instances.  
6.1.2 Provide initializers based on defaults for the types.  

7. Acceptance Test
------------------
7.1 MASL Editor  
7.1.1 The MASL editor will be used to test the generated MASL.
In the presence of a valid `.mod` file, open the generated MASL in
the activity editor and be sure there are no syntax errors highlighted.  
7.1.2 Visually inspect the generated MASL to be comfortable that
translation preserved the original OAL functionality.  

End
---

