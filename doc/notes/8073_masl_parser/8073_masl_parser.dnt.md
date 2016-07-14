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
<a id="2.2"></a>2.2 [Serial MASL internal engineering documentation](8277_serial_masl_spec.md)  
<a id="2.3"></a>2.3 [Raven Basic SRS](https://docs.google.com/document/d/1EzGRGyjIIk1Xx_v83c3zE_OV5pVbdsnEy2TxPasDhCc/edit)  
<a id="2.4"></a>2.4 [Parser HOWTO](https://github.com/leviathan747/mc/blob/8320_packaging/masl/parser/README.md)  
<a id="2.5"></a>2.5 [MASL persistence naming conventions]()  

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

6.1.1 Serial MASL

Serial MASL is the product of the serial interface. It defines the string representation of each `populate`
command.

Specification of serial MASL commands can be found in the internal documentation [[2.2]](#2.2).

6.1.1.1 General format

Each `populate` command represented in serial MASL consists of the element name followed by the eight values
delimited by commas. See below for an example serial MASL line.
```
project,SAC_PROC,,,,,,,
```

6.1.1.2 Empty/unused arguments

Empty or unused arguments are represented by an empty string, therefore each line of well formed serial MASL
contains exactly eight commas.

6.1.1.3 Representing state

Population of a MASL model is stateful. For example, if a `project` element is populated, and then the
next population is a `domain` element, it is important to remember which `project` had been populated
before in order to know who the `domain` belongs to. Serial MASL facilitates this statefulness by implementing
"end tags".

An element is created by a line of serial MASL starting with the element name, followed by the argument values.
When all of the children of the current element have been populated, another line of serial MASL follows which
consists of the element name followed by eight commas (each argument value is an empty string).

Note that it is legal to initialize population of an element with no arguments. For example, in MASL, `identifier`
has no features other than relationships to the attributes that define it. However, it simplifies the providing
implementations to reserve commands with all empty arguments to denote end tags. In a case such as the above
example, a symbolic argument will be passed to differentiate the populate command from an end tag. This symbolic
argument will have no meaning, and the implementation should ignore it.
```
identifier,symbolic,,,,,,,
```

6.1.1.4 Leaf elements

Some elements in the syntax of MASL have no children. These elements do not require an end tag, however
it is legal serial MASL to include them. The implementation must recognize the leaf nodes and function
properly without requiring end tags for the leaf nodes.

A list of the leaf nodes is available in the documentation of serial MASL [[2.2]](#2.2).

6.1.1.5 Special characters

Serial MASL contains two special characters: `,` and `\n`. Commas delimit the arguments, and newlines
separate distinct populate commands. It is necessary to encode each of the arguments so that a string
value does not interfere with the parsing of the serial MASL.

For our encoding scheme, we chose a subset of the URL encoding scheme. That is, special characters are
replaced by `%` followed by two hex digits representing the ASCII value of the character. Our scheme
adheres to the following mapping.

| Character | Encoding |
|:---------:|:--------:|
| %         | %25      |
| ,         | %2C      |
| \n        | %0A      |
| \r        | %0D      |

Our encoding is not case sensitive. That is, '%0D' and '%0d' should both be interpreted by the decoder
to be '\r'.

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

The parser was implemented to be able to parse an entire project or domain at once, emitting serial MASL.

6.3.1 Projects

Given a MASL project directory, the parser first searches for a `.prj` file, which it parses. It then
finds and parses every `.tr` file in that directory.

6.3.2 Domains

Given a MASL domain directory, the parser first searches for a `.mod` file, which it parses. It then
finds and parses every `.svc`, `.fn`, `.ext`, `.scn`, `.al`, and `.tr` file in that directory.

The specifications of these naming conventions can be found in the SRS [[2.3]](#2.3).
And in this document [[2.6]](#2.6).

6.4 Command line usage

The parser is run from the command line in one of three modes: file, domain, or project.
See the parser howto README for additional details [[2.4]](#2.4).

6.4.1 File mode

In file mode, the parser is directed to a single file to parse and is provided a walker rule
with which to parse against.

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

8.1 Test command line usage  
8.1.1 Run with `-f` flag, verify parses file.  
8.1.2 Run with `-f` flag and no walker rule, verify error reported to standard error.  
8.1.3 Run with `-f` flag and invalid walker rule, verify error reported to standard error.  
8.1.4 Run with `-f` flag and no file name, verify error reported to standard error.  
8.1.5 Run with `-f` flag against non-MASL file, verify errors reported to standard error.  
8.1.6 Run with `-p` flag, verify parses project.  
8.1.7 Run with `-p` flag in a directory with no `.prj` file, verify errors reported to standard error.  
8.1.8 Run with `-p` flag and no directory, verify error reported to standard error.  
8.1.9 Run with `-d` flag, verify parses domain.  
8.1.10 Run with `-d` flag in a directory with no `.mod` file, verify errors reported to standard error.  
8.1.11 Run with `-d` flag and no directory, verify error reported to standard error.  
8.1.12 Run with invalid flag, verify usage printed to standard error.  
8.1.13 Run no `-o` flag, verify output to standard out.  
8.1.14 Run `-o` flag only, verify output to a file in the current working directory.  
8.1.15 Run `-o` flag with specified file, verify output to specified file.  

8.2 SAC domain round trip  
8.2.1 Parse SAC domain.  
8.2.2 Use model of MASL to populate and render SAC domain from the output of the parser.  
8.2.3 Compare output from the model of MASL to the original SAC domain MASL files.  
8.2.4 Verify syntactical equivalency.  

8.3 SAC_PROC project round trip  
8.3.1 Parse SAC_PROC project.  
8.3.2 Use model of MASL to populate and render SAC_PROC project from the output of the parser.  
8.3.3 Compare output from the model of MASL to the original SAC_PROC project MASL files.  
8.3.4 Verify syntactical equivalency.  

End
---

