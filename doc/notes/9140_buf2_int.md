---

This work is licensed under the Creative Commons CC0 License

---

# buffer corruption in output MASL 2
### xtUML Project Implementation Note


1. Abstract
-----------
We are seeing output string data being mixed up.

2. Document References
----------------------
[1] [9129](https://support.onefact.net/redmine/issues/9129) Corruption in output from masl process during round trip testing  
[2] [9140](https://support.onefact.net/redmine/issues/9140) Corruption in output from masl process during round trip testing  

3. Background
-------------
`masl` has limitations on string size.  A previous pull request boosted
the maximum string size from 64k to 250k.  However, there was still a
limitation on temporary buffers at 64k in the template EE.  Also, there
is a string addition buffer that was limited.

4. Requirements
---------------
4.1 Get clean data in round trip testing.  

5. Work Required
----------------
5.1 `T_bridge`  
5.1.1 Increase temporary buffer from 64k to 250k.  
5.1.2 Increase primary buffer from 250k to 512k.  
5.2 `masl`  
5.2.1 Increase maximum string from 64k to 250k.  
5.2.2 Change a string arithmetic to two separate posts to the buffer
in `code_block`.  
5.3 `strget()`  
5.3.1 In the MC-3020 archetypes a rotating buffer is supplied for adding
strings.  String addition would use up allocated memory very quickly, so
a rotating buffer is supplied.  The previous limit was 16 buffers.  This
would support an addition include 16 addends.  However, in `masl` there
are expressions that use 18 addends.  (Search on `stradd*` in the generated
code.)  So, the rotating buffer is increased to 32.

6. Implementation Comments
--------------------------
6.1 `sys_user_co.c`  
With the now huge size of `ESCHER_SYS_MAX_STRING_LEN`, a smaller size
is now supplied for the names of domains (1024).  This seems better than
250,000 characters in a name.

7. Unit Test
------------
7.1 `masl_round_trip` regression  
7.1.1 Run `regression_test` in xtuml/models/masl/test/  

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc  9141_buf2

xtuml/mc
 bin/masl
 arc/t.sys_sets.c                                        |  4 ++--
 doc/notes/9140_buf2_int.md                              | 72 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 model/masl/gen/T_bridge.c                               |  7 +++----
 model/masl/gen/sys_user_co.c                            |  9 +++++----
 model/masl/models/masl/masl/code_block/code_block.xtuml |  3 ++-
 6 files changed, 84 insertions(+), 11 deletions(-)

</pre>

End
---

