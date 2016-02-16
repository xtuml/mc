---

This work is licensed under the Creative Commons CC0 License

---

# Building a MASL parser
### xtUML Project Design Note


1. Abstract
-----------
For MASL import/convert functionality, it is necessary to build a parser that has
the ability to read in MASL input files, and populate the model of the MASL syntax.

2. Document References
----------------------
<a id="2.1"></a>2.1 [Analysis note](https://github.com/leviathan747/mc/blob/8320_packaging/doc/notes/8073_masl_parser/8073_masl_parser.ant.md)  
<a id="2.2"></a>2.2 [MASLDSL internal engineering documentation](https://docs.google.com/spreadsheets/d/1tPnk-JC5Idyhz2tUbgDGPlNbmHm2fZyA2cbf7IFYyVY/edit#gid=0)  
<a id="2.3"></a>2.3 [Raven Basic SRS](https://docs.google.com/document/d/1EzGRGyjIIk1Xx_v83c3zE_OV5pVbdsnEy2TxPasDhCc/edit)  
<a id="2.4"></a>2.3 [Parser HOWTO](https://github.com/leviathan747/mc/blob/8320_packaging/masl/parser/README.md)  

3. Background
-------------
See [[2.1]](#2.1).

4. Requirements
---------------
See [[2.1]](#2.1).

5. Analysis
-----------
See [[2.1]](#2.1).

6. Design
---------

6.1 Serial interface

A serial interface has been designed to link the MASL parser to the model of MASL itself. This choice
was made in order to logically separate the components of the import and export flow. The interface
was designed to pass only string data to maximize flexibility (we can pipe components together) and
avoid "speaking xtUML" across interfaces. Passing only string data on the interface also facilitates
natural integration of components implemented with different technologies.

The serial interface consists of one message (in the direction of the provider), `populate()`. The
`populate` message takes two arguments, a string element name, and an array of eight string values.

6.1.1 MASLDSL

MASLDSL is the product of the serial interface. It defines the string representation of each `populate`
command.

Specification of MASLDSL commands can be found in the internal documentation [[2.2]](#2.2).

6.1.1.1 General format

Each `populate` command represented in MASLDSL consists of the element name followed by the eight values
delimited by commas. See below for an example MASLDSL line.
```
project,SAC_PROC,,,,,,,
```

6.1.1.2 Empty/unused arguments

Empty or unused arguments are represented by an empty string, therefore each line of well formed MASLDSL
contains exactly eight commas.

6.1.1.3 Representing state

Population of a MASL model is stateful. For example, if a `project` element is populated, and then the
next population is a `domain` element, it is important to remember which `project` had been populated
before in order to know who the `domain` belongs to. MASLDSL facilitates this statefulness by implementing
end tags.

An element is created by a line of MASLDSL starting with the element name, followed by the argument values.
When all of the children of the current element have been populated, another line of MASLDSL follows which
consists of the element name followed by eight commas (each argument value is an empty string).

Note that it is legal to initialize population of an element with no arguments (e.g. in MASL, `identifier`
has no attributes, but simply relationships to attributes). The implementation must account for this and
recognize that a line of MASLDSL is only an end tag if there was a corresponding population that preceded
it.

6.1.1.4 Leaf elements

Some elements in the syntax of MASL have no children. These elements do not require an end tag, however
it is legal MASLDSL to include them. The implementation must recognize the leaf nodes and function
properly without requiring end tags for the leaf nodes.

A list the leaf nodes is available in the documentation of MASLDSL [[2.2]](#2.2).

6.2 Derivation from ANTLR grammar

The MASL parser is derived directly from a modified copy of the MASL ANTLR grammar source code
provided by the user.

The following changes to the original grammar were made.

6.2.1 Java code

All Java code was removed from the original source of the MASL walker grammar. This code was originally
designed by the user to populate their conceptual model of MASL for generating C++. It was replaced by
Java code to form and make invocations on the serial interface.

6.2.2 Additional rule

The rule `activityDefinition` was added to the walker grammar to allow us to parse any activity file
without needing to know what type of activity it was.

6.2.3 Separation of parser and lexer grammars

The parser and lexer grammars originally provided to us in one file were separated into separate files

6.2.4 Class members and header elements

The custom fields and methods were removed from the grammar files and replaced with fields and methods
that were useful for our purposes. Header elements (such as import statements) were also replaced.

6.2.5 Comments

Comments were used to preserve some of the original implementation details of the original grammar. For
example:
```java
halfRelationshipDefinition
//returns [HalfRelationship half]
                              : ^( HALF_RELATIONSHIP
                                    from=objectReference
```
This bit of code is a grammar rule that returned a user internal class `HalfRelationship`. In order to
maintain the logic of the implementation, these types of statements were simply commented out instead
of removed.

6.3 Parsing projects and domains

The parser was implemented to be able to parse an entire project or domain at once, emitting MASLDSL.

6.3.1 Projects

Given a MASL project directory, the parser first searches for a `.prj` file, which it parses. It then
finds and parses every `.tr` file in that directory.

6.3.2 Domains

Given a MASL domain directory, the parser first searches for a `.mod` file, which it parses. It then
finds and parses every `.svc`, `.fn`, `.ext`, `.scn`, `.al`, and `.tr` file in that directory.

The specifications of these naming conventions can be found in the SRS [[2.3]](#2.3).

6.4 Command line usage

The parser is run from the command line in one of three modes: file, domain, or project.

6.4.1 File mode

In file mode, the parser is directed to a single file to parse and is provided a walker rule
with which to parse against. See the parser howto README for details [[2.4](#2.4).

6.4.2 Domain mode

In domain mode, the parser is provided a directory to parse as a domain as described in 6.3.2

6.4.3 Project mode

In project mode, the parser is provided a directory to parse as a project as described in 6.3.1

6.4.4 Output

Three output modes are supported. In default mode, output is to standard out. If the `-o` flag is
passed, output is directed to a file in the current working directory with a name automatically 
chosen by the parser. If the `-o` flag is passed followed by a file name, the output is directed
into the specified file.

7. Design Comments
------------------

8. Unit Test
------------

8.1 Test command line arguments  
8.2 Parse domain and compare to hand written MASLDSL  
8.3 Parse invalid domain  
8.4 Parse project and compare to hand written MASLDSL  
8.5 Parse invalid project  

End
---

