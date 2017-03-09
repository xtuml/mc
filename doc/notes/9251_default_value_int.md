---

This work is licensed under the Creative Commons CC0 License

---

# Default attribute values with expression values are not present in exported MASL
### xtUML Project Implementation Note

1. Abstract
-----------
Default values for attributes causing diff failures with complex expressions
(including negative numbers).

2. Document References
----------------------
<a id="2.1"></a>2.1 [#9251 Default attribute values with expression values are not present in exported MASL](https://support.onefact.net/issues/9251)  
<a id="2.2"></a>2.2 [#9251 test case](https://github.com/xtuml/models/tree/master/masl/test/9251_default)  

3. Background
-------------
Analysis showed that the formatter was failing to output the text of certain
expressions. Literal and name expressions worked, but other expressions
including complex expressions did not pass through.

Looking into the code, a solution was discovered that had been used in another
way for the import parser. When the MASL parse grammar consumes the production
rule `attributeDefinition`, the text of the `expression` rule that represents
the default attribute is cached in an "imaginary node" as a child of the
`attributeDefinition` node. This value can easily be accessed from the format
grammar without code to compile the expression from recursively concatenating
token strings. This solution removes complexity and allows us to parse an
arbitrary expression without adding code.

In ANTLR terminology, an "imaginary node" is a concept in AST rewriting. Parse
grammars can transform the AST during parse. A walker grammar then walks the AST
produced by the parse grammar. An "imaginary node" is a node added to an AST
that does not come directly from the parse tree. They are used to store extra
information derived at parse time. In this example "imaginary nodes" are used to
store the string value of an entire expression.

In the import parser, type definitions are passed as a single blob of text and
therefore the same trick was not needed for enumerator and structure member
values. The formatter, however must descend these rules. The parse grammar shall
be updated to use the same trick for expressions representing default value of a
structure member and value of an enumerator.

4. Requirements
---------------
4.1 The formatter shall accept arbitrary expressions in default values  
4.1.1 MASL round trip shall pass for [[2.2]](#2.2)  

5. Work Required
----------------
5.1 Change format grammar to get default value from "imaginary node" and not
expression subrule  
5.1.1 Changed for `attributeDefinition`, `structureComponentDefinition`, and
`enumerator` rules  
5.2 Update parse grammar to stash expression text in "imaginary node" for
enumerator and structure component definition  
5.3 Remove unneeded code to build expressions from token strings  

6. Implementation Comments
--------------------------
6.1 Code to build `literalExpression` strings was left in place as it is used by
the `pragmaValue` production rule.

7. Unit Test
------------
See [[2.2]](#2.2)  

8. User Documentation
---------------------
None

9. Code Changes
---------------
Fork/Repository: leviathan747/mc  
Branch: 9251_def

<pre>

 bin/MASLParser.jar           | Bin 279372 -> 279048 bytes
 masl/parser/src/MaslFormat.g |  31 ++++---------------------------
 masl/parser/src/MaslParser.g |   4 ++--
 3 files changed, 6 insertions(+), 29 deletions(-)

</pre>

End
---

