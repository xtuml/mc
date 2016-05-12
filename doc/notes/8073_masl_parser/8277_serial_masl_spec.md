---

This work is licensed under the Creative Commons CC0 License

---

# Serial MASL

1. Abstract
-----------
This document details the commands that are supported by serial MASL
interface.

2. Document References
----------------------
<a id="2.1"></a>2.1 [MASL parser design note](8073_masl_parser.dnt.md)  
<a id="2.2"></a>2.2 [Parent issue #8277](https://support.onefact.net/issues/8277)  

3. Design
---------

The following is copied from [[2.1]](#2.1) section 6.1. It has been annotated to
accurately represent the current state of serial MASL.

> 6.1 Serial interface
> 
> A serial interface has been designed to link the MASL parser to the model of
> MASL itself. This choice was made in order to logically separate the components
> of the import and export flow. The interface was designed to pass only string
> data to maximize flexibility (we can pipe components together) and avoid
> "speaking xtUML" across interfaces. Passing only string data on the interface
> also facilitates natural integration of components implemented with different
> technologies.
> 
> The serial interface consists of one message (in the direction of the provider),
> `populate()`. The `populate` message takes two arguments, a string element name,
> and an array of eight string values.

Another message (in the direction of the provider) `end()` was added. This
message simply indicates that there will be no more lines of serial MASL. In
practice, this is typically when the end of the file is reached or a stream is
closed. `end` has no arguments.

> 
> 6.1.1 Serial MASL
> 
> Serial MASL is the product of the serial interface. It defines the string
> representation of each `populate` command.
> 
> ~~Specification of serial MASL commands can be found in the internal
> documentation [[2.2]](#2.2).~~

Now can be found in this document

> 
> 6.1.1.1 General format
> 
> Each `populate` command represented in serial MASL consists of the element
> name followed by the eight values delimited by commas. See below for an
> example serial MASL line.  
> ``` project,SAC_PROC,,,,,,, ```
> 
> 6.1.1.2 Empty/unused arguments
> 
> Empty or unused arguments are represented by an empty string, therefore each
> line of well formed serial MASL contains exactly eight commas.
> 
> 6.1.1.3 Representing state
> 
> Population of a MASL model is stateful. For example, if a `project` element is
> populated, and then the next population is a `domain` element, it is important
> to remember which `project` had been populated before in order to know who the
> `domain` belongs to. Serial MASL facilitates this statefulness by implementing
> "end tags".
> 
> An element is created by a line of serial MASL starting with the element name,
> followed by the argument values.  When all of the children of the current
> element have been populated, another line of serial MASL follows which
> consists of the element name followed by eight commas (each argument value is
> an empty string).
> 
> Note that it is legal to initialize population of an element with no
> arguments.  For example, in MASL, `identifier` has no features other than
> relationships to the attributes that define it. However, it simplifies the
> providing implementations to reserve commands with all empty arguments to
> denote end tags.  In a case such as the above example, a symbolic argument
> will be passed to differentiate the populate command from an end tag. This
> symbolic argument will have no meaning, and the implementation should ignore
> it.  
> ``` identifier,symbolic,,,,,,, ```
> 
> 6.1.1.4 Leaf elements
> 
> Some elements in the syntax of MASL have no children. These elements do not
> require an end tag, however it is legal serial MASL to include them. The
> implementation must recognize the leaf nodes and function properly without
> requiring end tags for the leaf nodes.
> 
> ~~A list of the leaf nodes is available in the documentation of serial MASL
> [[2.2]](#2.2).~~

Now can be found in this document

> 
> 6.1.1.5 Special characters
> 
> Serial MASL contains two special characters: `,` and `\n`. Commas delimit the
> arguments, and newlines separate distinct populate commands. It is necessary
> to encode each of the arguments so that a string value does not interfere with
> the parsing of the serial MASL.
> 
> For our encoding scheme, we chose a subset of the URL encoding scheme. That
> is, special characters are replaced by `%` followed by two hex digits
> representing the ASCII value of the character. Our scheme adheres to the
> following mapping.
> 
> | Character | Encoding |
> |:---------:|:--------:|
> | %         | %25      |
> | ,         | %2C      |
> | \n        | %0A      |
> | \r        | %0D      |
> 
> Our encoding is not case sensitive. That is, '%0D' and '%0d' should both be
> interpreted by the decoder to be '\r'.


4. Specification
----------------

Below is the specification of serial MASL. Each element is provided with
arguments in order and specification of arguments.

| **element**       | **argument name** | **required/optional** | **values**                                                  |
|-------------------|-------------------|-----------------------|-------------------------------------------------------------|
| associative**     | name              | required              | string                                                      |
|                   | usingDomain       | optional              | string                                                      |
|                   | using             | optional              | string                                                      |
| attribute         | name              | required              | string                                                      |
|                   | preferred         | required              | "preferred" or ""                                           |
|                   | unique            | required              | "unique" or ""                                              |
| codeblock*        | sourcefile        | required              | string                                                      |
| description*      | text              | required              | string                                                      |
|                   | tag               | optional              | string                                                      |
| domain            | name              | required              | string                                                      |
| event             | name              | required              | string                                                      |
|                   | type              | required              | "assigner", "creation", or ""                               |
| exception         | name              | required              | string                                                      |
|                   | visibility        | required              | "public" or "private"                                       |
| expression*       | body              | required              | string                                                      |
| identifier        | (none)            | N/A                   | N/A                                                         |
| object            | name              | required              | string                                                      |
| operation         | domain            | optional              | string                                                      |
|                   | object            | optional              | string                                                      |
|                   | visibility        | required              | "public" or "private"                                       |
|                   | name              | required              | string                                                      |
|                   | instance          | optional              | "instance" or ""                                            |
|                   | relationship      | optional              | string                                                      |
| parameter         | name              | required              | string                                                      |
|                   | direction         | required              | "in" or "out"                                               |
| participation* ** | fromDomain        | optional              | string                                                      |
|                   | from              | required              | string                                                      |
|                   | phrase            | optional              | string                                                      |
|                   | conditionality    | optional              | "conditionally" or "unconditionally"                        |
|                   | multiplicity      | optional              | "one" or "many"                                             |
|                   | toDomain          | optional              | string                                                      |
|                   | to                | optional              | string                                                      |
| pragma            | name              | required              | string                                                      |
|                   | list              | optional              | string                                                      |
| pragmaitem*       | value             | required              | string                                                      |
| project           | name              | required              | string                                                      |
| referential*      | relationship      | required              | string                                                      |
|                   | domain            | optional              | string                                                      |
|                   | roleOrObj         | optional              | string                                                      |
|                   | object            | optional              | string                                                      |
|                   | attribute         | required              | string                                                      |
| regularrel        | name              | required              | string                                                      |
| routine           | domain            | optional              | string                                                      |
|                   | terminator        | optional              | string                                                      |
|                   | visibility        | required              | "public" or "private"                                       |
|                   | name              | required              | string                                                      |
| state             | domain            | optional              | string                                                      |
|                   | object            | optional              | string                                                      |
|                   | name              | required              | string                                                      |
|                   | type              | required              | "assigner", "assigner start", "creation", "terminal", or "" |
| subsuper          | name              | required              | string                                                      |
| terminator        | name              | required              | string                                                      |
| transition        | startstate        | required              | string, "Non_Existant", "Non_Existent", or "non_existent"   |
|                   | eventDomain       | optional              | string                                                      |
|                   | eventObject       | optional              | string                                                      |
|                   | event             | required              | string                                                      |
|                   | endstate          | required              | string, "Ignore", "Cannot_Happen", or "cannot_happen"       |
| transitiontable   | type              | required              | "assigner" or ""                                            |
| type              | name              | required              | string                                                      |
|                   | visibility        | required              | "public" or "private"                                       |
|                   | definition        | optional              | string                                                      |
| typeref*          | body              | required              | string                                                      |

\* leaf nodes

** associative and participation are expected to be called more than once
without an end tag. It is designed this way to allow implementations to create
an associative or participation object and then update it later instead of
creating a new one.

End
---

