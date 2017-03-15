---

This work is licensed under the Creative Commons CC0 License

---

# Unformatted MASL is better than no MASL
### xtUML Project Implementation Note

1. Abstract
-----------
Bad projects sometimes produce MASL that is not able to be parsed. This causes
the formatter to fail and at the moment, the formatter produces no data when it
cannot parse. The unformatted MASL is deleted and the user is left with no MASL
data at all.

2. Document References
----------------------
<a id="2.1"></a>2.1 [#8740 unformatted MASL is better than no MASL](https://support.onefact.net/issues/8740)  

3. Background
-------------
This work does not resolve the issue completely but provides an incremental step
according to the comment in [[2.1]](#2.1) comment #22.

4. Requirements
---------------
4.1 Do not delete unformatted MASL if the MASL cannot be parsed  

5. Work Required
----------------
5.1 Updated the MASL grammars to return an exit code of 1 if errors are emitted  
5.2 Updated `xtumlmc_build` to check the return code of the formatter and delete
the unformatted MASL only if the formatter succeeded  

6. Implementation Comments
--------------------------
None

7. Unit Test
------------
Two files were added to [[2.1]](#2.1) comment #23. `test_model_bad.xtuml` when
exported causes the MASL formatter to produce parse errors.
`test_model_good.xtuml` works without errors.

7.1 Import `test_model_bad.xtuml` and `test_model_good.xtuml` into two projects
in a workspace.  
7.2 Export `test_model_good.xtuml` as a MASL domain.  
7.3 Verify that there are no errors reported in `masl/export.log` and that
`masl/FormatTest/FormatTest.mod` exists and that it is formatted nicely.  
7.4 Export `test_model_bad.xtuml` as a MASL domain.  
7.5 Verify that there are parse errors reported in `masl/export.log` and that
`masl/FormatTest/FormatTest.mod` exists and that it is unformatted.  

8. User Documentation
---------------------
None

9. Code Changes
---------------
Fork/Repository: leviathan747/mc  
Branch: 8740_formatter  

<pre>

 bin/MASLParser.jar                 | Bin 279048 -> 279774 bytes
 bin/xtumlmc_build                  |  10 +++++++++-
 masl/parser/src/ErrorHandler.java  |   3 +++
 masl/parser/src/MaslFormat.g       |  10 ++++++++++
 masl/parser/src/MaslFormatter.java |  21 ++++++++++++++++++++-
 masl/parser/src/MaslLexer.g        |  10 ++++++++++
 masl/parser/src/MaslParser.g       |  12 ++++++++++++
 7 files changed, 64 insertions(+), 2 deletions(-)

</pre>

End
---

