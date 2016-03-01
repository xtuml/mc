---

This work is licensed under the Creative Commons CC0 License

---

# Building a MASL parser
### xtUML Project Analysis Note

1. Abstract
-----------
For MASL import/convert functionality, it is necessary to build a parser that has
the ability to read in MASL input files, and populate the model of the MASL syntax.

2. Document References
----------------------
<a id="2.1"></a>2.1 [Parent issue - Redmine issue 8073: Build MASL parser](https://support.onefact.net/redmine/issues/8073)  
<a id="2.2"></a>2.2 [Redmine issue 8056: Investigate Xtext for use with MASL](https://support.onefact.net/redmine/issues/8056)  
<a id="2.3"></a>2.3 [Redmine issue 8062: Store and edit MASL actions](https://support.onefact.net/redmine/issues/8062)  
<a id="2.4"></a>2.4 [Redmine issue 8074: Model the syntax of MASL](https://support.onefact.net/redmine/issues/8074)  
<a id="2.5"></a>2.5 [Raven deployment diagram](https://drive.google.com/open?id=0B3XvTeswC_kOS0xXTlRkN054VTA)  
<a id="2.6"></a>2.6 [ANTLR grammar of MASL](https://drive.google.com/open?id=0B834tggB4vylWmNVMXVsYjZ2blU)  
<a id="2.7"></a>2.7 [Eclipse Modelling Framework (EMF)](https://eclipse.org/modeling/emf/)  
<a id="2.8"></a>2.8 [Xtext homepage](https://eclipse.org/Xtext/index.html)  

3. Background
-------------
In order to convert MASL models to xtUML, we will follow this flow:

MASL text --> **Parse MASL** --> **Populate model of MASL** --> Populate OOAofOOA from model of MASL

See [[2.5]](#2.5) for the Raven project deployment diagram.

This analysis is concerned with the task of parsing MASL and using the resulting abstract syntax tree (AST)
to populate the model of MASL. An editor based on the same grammar will be analyzed in a separate issue
[[2.3]](#2.3).

In issue 8056 [[2.2]](#2.2), Xtext was evaluated for use with MASL to build the parser and the editor.
It was determined that Xtext provides the necessary capability to meet the requirements and is well
supported and documented, however there are performance concerns with using Xtext. Additionally, we will
proceed with eyes wide open about becoming dependent on bloated frameworks.

4. Requirements
---------------

4.1 The parser shall run independently of the eclipse GUI in the command line  
4.2 The parser shall be derived from the ANTLR grammar of MASL provided by user
[[2.6]](#2.6)  
4.2.1 If Xtext is chosen, a mechanism shall be defined that provides a clear and
direct mapping from the user ANTLR grammar of MASL to the new Xtext grammar of MASL  
4.2.2 The parser shall support all the artifacts of the original ANTLR grammar
to any derived artifacts  
4.3 The parser shall invoke action bodies in the model of MASL through a well defined
interface  [[2.4]](#2.4)  
<a id="4.4"></a>4.4 The parser and the editor shall use one common grammar of MASL  
4.5 Xtext shall be evaluated as a parser solution  

5. Analysis
-----------

5.1 Xtext

Xtext is an option for the MASL parser because it has all the functionality needed to parse as well as
built in functionality for the MASL editor. If Xtext is chosen for the parser, requirement [[4.4]](#4.4)
will be satisfied and save us from maintaining two parallel grammars.  

It is important to note that in this analysis, "Xtext" (note capitalization) refers to the framework of
Xtext and "xtext" refers to the grammar specification language of Xtext.

5.1.1 Grammar

5.1.1.1 Xtext implements its own grammar specification language (aptly called xtext). It is possible to
port grammars in ANTLR to xtext with no semantic changes to the grammar. This can be done with
the MASL grammar to create an analogous MASL grammar in xtext.

5.1.1.2 ANTLR supports the ability to define the shape of the AST in their grammars. This allows the author
of the grammar to have full control of the shape of the language and its semantics. xtext has similar capabilities,
and it is possible to produce the same AST in xtext. This can be done with the MASL grammar to mirror the AST
defined by user engineers. However, the conversion of the ANTLR definition of the AST to xtext introduces
new complexities in the conversion mechanism.

5.1.1.3 The new xtext grammar shall be derived from the ANTLR grammar provided by user and our derivative
xtext grammar. The ANTLR grammar has been tested by time and use and by preserving the structure of the grammar
and the AST, the xtext grammar will inherit completeness and correctness from the original grammar. A mechanism 
shall be defined to provide a consistent and accurate mapping between ANTLR and xtext to provide us with a means
to ensure completion of the work and to trace any problems back to the original implementation. We will analyze
whether this mechanism can be automated.

5.1.2 Population

5.1.2.1 Xtext relies on Eclipse Modelling Framework (EMF) [[2.7]](#2.7) to build the AST. Xtext populates the AST
with objects that are extensions of EMF objects (EObject, EAttribute, etc).

5.1.2.2 Xtext provides a generator that can get a reference to the root of the AST. It is possible to then
walk down the AST and invoke arbitrary Java code along the way. This will be the basis of our populate
functionality. As the generator walks the AST, it will make Java function invocations to the appropriate
functions in the model of MASL.

5.1.3 Execution

Xtext projects can be configured to be executed as a Java application. It is possible to export the project
as a java executable .jar file and run it from the commandline.  

5.1.4 Editor features

5.1.4.1 Xtext provides useful features for user assistance that will be used for creating a rich MASL editor
experience. Because the conversion from ANTLR grammar to xtext grammar becomes more complex when an AST is defined
by the grammar, the analysis of the the MASL editor [[2.3]](#2.3) will address the question "Can the semantic
assistance in the MASL editor be implemented simply in the parse tree, or does it require the abstract syntax tree?"

5.1.5 Problems with using Xtext

5.1.5.1 In the evaluation of Xtext as a parser solution [[2.2]](#2.2), we noticed a significant performance difference
between the Xtext parser and the parser compiled from the ANTLR grammar. We postulated that the sluggishness is
due to the weight of the framework and the reliance on EMF to build the AST.

5.1.5.2 The initial motivation for exploring Xtext as a solution was the useful user assistance features that
we get "for free" with respect to the MASL editor. Because the editor itself is not a part of phase 1, taking
the time to build a mechanism to convert the ANTLR grammar to an xtext grammar will slow down our development
of the import capability.

5.2 ANTLR

5.2.1 We have been given a grammar of MASL by the user in ANTLR. It is very simple to use ANTLR to compile this
grammar and use it to walk the AST.

5.2.2 Because Xtext is not necessary for the parser in phase 1, we will take the path of least resistence and 
implement the parser with ANTLR. We will reanalyze Xtext for use with the editor in phase 2.

5.3 Execution flow

5.3.1 The parser shall be implemented as a library. It shall be invoked externally with MASL files as arguments.
The parser in turn will make invocations through an interface to the model of MASL.

5.3.2 This flow will facilitate flexibility of use. It will also allow easy testing through the defined interface
and a stubbed test model of MASL.

6. Work Required
----------------

6.1 Define the interface between the parser and the model of MASL  
6.2 Generate Java code from the ANTLR grammar  
6.3 Write Java code to walk the AST and make appropriate invocations through the interface to the model of MASL  
6.4 Export the project as a Java archive file  
6.5 Build a test suite that implements the same interface as the model of MASL to test the messages that the
parser sends  

7. Acceptance Test
------------------
7.1 Run the parser without opening the Eclipse GUI  
7.2 Invoke the MASL parser against the test suite and  verify that the correct messages are sent across
the defined interface  

End
---

