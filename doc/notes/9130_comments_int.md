---

This work is licensed under the Creative Commons CC0 License

---

# masl exporter segfault on doc comments
### xtUML Project Implementation Note


1. Abstract
-----------
`masl` segfaults when exporting xtUML Descrip fields.

2. Document References
----------------------
[1] [9130](https://support.onefact.net/redmine/issues/9090) masl exporter segfault on doc comments  

3. Background
-------------
Comments from MASL files are imported into Descrip fields on xtUML elements.
Descrip fields on xtUML elements are then exported into MASL files as
delimited comments.  The latter is failing with a segfault crash in `masl`.

4. Requirements
---------------
4.1 Successfully _round trip_ MASL comments through `m2x`, `x2m` and `masl`.

5. Work Required
----------------
5.1 `masl`  
`masl` STRING processing had not been updated when `maslin` and `maslout`
were updated.  Bring over the dynamic string allocation.
  
6. Implementation Comments
--------------------------
6.1 `masl_round_trip` file copying  
Files were being copied without checking that they existed.  Check first
with an `if` test to avoid seeing a benign error message.  Also add a
test for existence before removing the WORKSPACE.

7. Unit Test
------------
7.1 Run masl round trip regression and expect no differences beyond
what is expected in any currently failing tests (e.g. ipv6).

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc  9130_comments
Fork: cortlandstarrett/models  9130_comments

xtuml/mc
 bin/masl                       | Bin 243920 -> 243920 bytes
 bin/masl_round_trip            |  15 ++++++++++++---
 doc/notes/9130_comments_int.md |  67 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 model/masl/gen/STRING_bridge.c |  28 +++++++++++++++-------------
 4 files changed, 94 insertions(+), 16 deletions(-)

xtuml/models
 masl/test/9027-1/X.int | 1 +
 masl/test/9027-1/X.mod | 9 +++++++++
 masl/test/pei/pei.int  | 3 +++
 masl/test/pei/pei.mod  | 5 +++++
 4 files changed, 18 insertions(+)

</pre>

End
---

