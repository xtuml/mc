---

This work is licensed under the Creative Commons CC0 License

---

# MASL parser/formatter issues
### xtUML Project Implementation Note

1. Abstract
-----------
There are three issues dealt with in this work:  
- `FILE_NAME` and `LINE_NO` are wrongfully being replaced (#8961)  
- The formatter does not sort pragmas in a pragma list (#8800)  
- The formatter outputs annoying section header comments (#8800)  

2. Document References
----------------------
<a id="2.1"></a>2.1 [#8961 MASL parser mishandles FILE_NAME and LINE_NO terminals](https://support.onefact.net/issues/8961)  
<a id="2.2"></a>2.2 [#8800 MASL formatter does not sort pragmas for MASL diff](https://support.onefact.net/issues/8800)  

3. Background
-------------
Longer descriptions of the above issues:

MASL has two special terminals `FILE_NAME` ("#FILE#") and `LINE_NO` ("#LINE#")
which are used to refer to the current file and line when parsing MASL. The
token string is replaced in the lexer. The import parser should not replace
these as it is meant for passing around source. The MASL compiler should handle
these.

The formatter must sort pragma lists when used by the MASL diff tool. If this
does not happen, false diffs could appear.

The formatter inserts comments to denote sections in the `.mod` file. This is
kind of nice, but mostly annoying. This option should be turned off by default
and accessible by a flag.

4. Requirements
---------------
4.1 The parser shall pass the "#FILE#" and "#LINE#" text through without
replacing it.  
4.2 Pragma lists shall be sorted by the formatter when the sort flag is passed.  
4.3 Heading comments shall not be output by the formatter by default.  
4.3.1 Comments shall be output if the flag is passed.  

5. Work Required
----------------
5.1 Updated the lexer rules for `FILE_NAME` and `LINE_NO` to pass the literal
text "#FILE#" and "#LINE#" instead of the actual filename and line number.

5.2 Updated the `pragmaList` parser rule in `MaslFormat.g` to sort pragmas
(following the established pattern) before appending them to the output.

5.3 Added the comment option in all the necessary places in `MaslFormat.g` and
`MaslFormatter.java`. Added checks for this option in `MaslFormat.g` before
outputting comments.

5.4 Updated the usage message to include the new flag for comments (`-c`).

6. Implementation Comments
--------------------------

7. Unit Test
------------
Build the parser. From the `mc/masl/parser/` directory:
```
ant
```

7.1 `FILE_NAME`, `LINE_NO` test  
7.1.1 Run the formatter on `xtuml/models/masl/SAC/SAC_OOA/test_SAC_1.ext`:
```
java -cp build:lib/antlr-3.5.2-complete.jar MaslFormatter < <models repo>/masl/SAC/SAC_OOA/test_SAC_1.ext > output
```
7.1.2 Verify that the output contains the strings "#FILE#" and "#LINE#" in several
places.  

7.2 Pragma sorting test  
7.2.1 Copy the following into a file `test.mod`:
```
domain X is
  object the_object;
  pragma z();
  pragma a();
end domain;
```
7.2.2 Run the formatter on `test.mod`:
```
java -cp build:lib/antlr-3.5.2-complete.jar MaslFormatter -s < test.mod > output
```
7.2.3 Verify that in the output, `pragma a();` comes before `pragma z();`

7.3 Section comments test  
7.3.1 Run the formatter on `SAC.mod` with comments enabled:
```
java -cp build:lib/antlr-3.5.2-complete.jar MaslFormatter -r -c < <models repo>/masl/SAC/SAC_OOA/SAC.mod > output
```
7.3.2 Verify that the output contains section heading comments.  
7.3.3 Run the formatter again in default configuration:
```
java -cp build:lib/antlr-3.5.2-complete.jar MaslFormatter -r < <models repo>/masl/SAC/SAC_OOA/SAC.mod > output
```
7.3.4 Verify that the output __does not__ contain section heading comments.

8. User Documentation
---------------------
Documentation of the new comment flag (`-c`) is in the usage message for the
MASL formatter.

9. Code Changes
---------------
Fork/Repository: leviathan747/mc
Branch: 8961_parser_issues

<pre>

 masl/parser/src/MaslFormat.g       | 39 +++++++++++++++++++++++---------------
 masl/parser/src/MaslFormatter.java | 14 ++++++++++----
 masl/parser/src/MaslLexer.g        |  4 ++--
 3 files changed, 36 insertions(+), 21 deletions(-)

</pre>

End
---

