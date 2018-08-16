---

This work is licensed under the Creative Commons CC0 License

---

# buffer corruption in output MASL
### xtUML Project Implementation Note


1. Abstract
-----------
We are seeing output string data being mixed up.

2. Document References
----------------------
[1] [9129](https://support.onefact.net/redmine/issues/9129) Corruption in output from masl process during round trip testing  
[2] [9140](https://support.onefact.net/redmine/issues/9140) Corruption in output from masl process during round trip testing  
[3] [9142](https://support.onefact.net/redmine/issues/9142) terminator services generated as private  

3. Background
-------------
`m2x`, `x2m` and `masl` have limitations on string size.  The limitation
going in to this work is 64k.  In user models, a codeblock on a service
or operation can be larger than this.  When a too-large code block is
processed, the buffer overruns and is truncated.  Results are unexpected
and unpredictable.

4. Requirements
---------------
4.1 Get clean data in round trip testing.  

5. Work Required
----------------
5.1 `m2x`  
5.1. Increase maximum string from 64k to 250k.  
5.2 `x2m`  
5.2. Increase maximum string from 64k to 250k.  
5.3 `masl`  
5.3. Increase maximum string from 64k to 250k.  

6. Implementation Comments
--------------------------
6.1 `masl` empty handles  
There were a couple of places where we were `Unlink`ing a relationship
when one or the other instance was not existing.  Empty tests were placed
appropriately.

6.2 `masl` code blocks  
Code blocks can be empty, so the validation test is relaxed.

6.3 `masl` resolving duplicates  
It seems that `merge_duplicates` is not successfully bring across the
code block.  Or it is throwing away the wrong activity.  

6.4 `masl::description::render`  
There was an arithmetic occuring here.  Simplified it.  

6.5 `maslout::Descrip2pragma`  
Nobody uses this any more.  Delete it.  

6.6 terminators need to be public  
[3] is merged in with this work.  This makes terminators public instead
of private.  This included deprecating routines that translated EEs and
bridges.


7. Unit Test
------------
7.1 `masl_round_trip` regression  
7.1.1 Run `regression_test` in xtuml/models/masl/test/  

7.2 long codeblock  
Add more than 64k worth of MASL action language to any of the test
models in xtuml/models/masl/test/.  Run a round trip on the model.  


8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc  9140_buffers

xtuml/mc
 bin/masl_round_trip                                                 |  10 +-
 doc/notes/9140_buffer_int.md                                        |  78 +++++++++++++
 model/masl/gen/system.mark                                          |   2 +-
 model/masl/models/masl/masl/activity/activity.xtuml                 |  10 +-
 model/masl/models/masl/masl/code_block/code_block.xtuml             |   2 +-
 model/masl/models/masl/masl/domain/domain.xtuml                     |   5 +
 model/masl/models/masl/maslpopulation/description/description.xtuml |  30 ++---
 model/maslin/gen/system.mark                                        |   2 +-
 model/maslout/gen/system.mark                                       |   2 +-
 model/maslout/models/maslout/lib/xtuml2masl/maslout/maslout.xtuml   | 339 +-----------------------------------------------------
 10 files changed, 118 insertions(+), 362 deletions(-)

</pre>

End
---

