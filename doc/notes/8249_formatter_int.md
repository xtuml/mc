---

This work is licensed under the Creative Commons CC0 License

---

# MASL formatter
### xtUML Project Implementation Note

1. Abstract
-----------
The xtUML to MASL exporter emits MASL in a simple manner without considering
formatting. A formatter for MASL is desirable to clean up generated code, and it
is necessary to have a deterministic formatter for a meaningful textual compare
of MASL.

2. Document References
----------------------
<a id="2.1"></a>2.1 [#8249 MASL compare utility](https://support.onefact.net/issues/8249)  

3. Background
-------------
This work is motivated by the need for a good MASL compare utility for testing
and validation. In order to compare MASL in a useful way, all noise due to
differences in whitespace, comments, etc. must be eliminated. A formatter is a
good way to guarantee that semantically identical MASL will also be textually
identical.

MASL has many elements that can be declared/defined in any order. For example, a
MASL model containing three objects A, B, and C is considered the same
regardless of which object is defined first. The following is a list of all MASL
elements that can be reordered in this way.

* object declarations
* type declarations
* type definitions
  + enumerators
  + structure members
* service declarations
* terminator definitions
  + terminator service declarations
* relationship definitions
  + half relationships
  + subtypes
* object definitions
  + attribute definitions
    - referentials
  + identifier definitions
    - identifying attributes
  + service declarations
  + state declarations
  + event definitions
  + transition tables
    - start states
    - incoming events

4. Requirements
---------------
4.1 The formatter shall produce clean, readable MASL  
4.2 The formatter shall leverage the existing parse grammar and AST  
4.3 The output of the formatter shall be semantically identical to the input  
4.4 The formatter shall deterministically produce output agnostic of element
ordering  

5. Work Required
----------------
job #8249 added masl formatter to export script
job #8249 updated MASL diff tool to use new formatter

5.1 Add a new AST grammar (walker grammar) to produce formatted MASL  
5.1.1 Each AST node returns a `StringBuilder` object  
5.1.2 The `StringBuilder`s are concatenated as the walker bubbles up the tree  
5.1.3 When all the nodes have been traversed, the final output is printed  
5.1.4 Buffers are used to store sibling nodes that can be sorted before output  

5.2 Add main class for the formatter  
5.2.1 Command line options to format single files or whole directories  
5.2.2 Command line options for sorting and reordering files and tab width  

5.3 Slightly modify parse grammar and existing walker grammar to solve service
type issue and code blocks  
5.4 Remove deprecated sort grammar and main class  
5.5 Integrate MASL formatter in `xtuml2masl`  
5.6 Rework `masldiff` to use the new formatter  

6. Implementation Comments
--------------------------
I attempted to leave the parse grammar and AST grammar for MASL population
untouched in this change. As noted in 5.3, however, a small change was
necessary. The parse grammar was modified so that activity definition rules
passed both the service type ("function" or "service") and the text of the code
block into the AST. Because this changed the shape of the AST, it was necessary
to modify the walker grammar as well.

7. Unit Test
------------

7.1 For each of the following:
  * state definition
  * domain service definition
  * terminator service definition
  * object service definition
  * domain definition
  * project definition
7.1.1 Format the MASL file and output to a temporary location  
7.1.2 Format the output formatted MASL file and output to another temporary
location  
7.1.3 Compare the two outputs and verify that they are textually identical  

7.2 For each of the reorderable elements listed in section 3:
7.2.1 Create two identical models except for order of model elements  
7.2.2 Format the models with sorting enabled  
7.2.3 Verify that there are no differences  

8. Code Changes
---------------
Branch name: 8249_formatter

<pre>

 bin/xtumlmc_build                  |   15 +
 masl/diff/README.md                |   39 +-
 masl/diff/masldiff                 |   29 ++
 masl/diff/masldiff.sh              |   76 ----
 masl/parser/build.xml              |   37 +-
 masl/parser/src/MaslDiff.java      |   81 ----
 masl/parser/src/MaslFormat.g       | 3044 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 masl/parser/src/MaslFormatter.java |  220 ++++++++++
 masl/parser/src/MaslParser.g       |   21 +-
 masl/parser/src/MaslSort.java      |   57 ---
 masl/parser/src/MaslSortParser.g   | 1278 --------------------------------------------------------
 masl/parser/src/MaslWalker.g       |    4 +
 12 files changed, 3344 insertions(+), 1557 deletions(-)

</pre>

End
---

