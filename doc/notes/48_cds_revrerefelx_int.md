---


---

# Reverse Reflexives in MCMC
### xtUML Project Implementation Note  


1.  Abstract
------------
Reflexives are confusing.  It is difficult to remember how the order of
instances in the select, relate and unrelate statemens corresponds to the
text phrase on the reflexive relationship.  To make matters much worse, a
defect has been discovered that exists in schema_gen that causes (and has
caused) reflexives to read in the opposite order from OAL in the xtUML
Editor and Verifier.  This issue _partially_ corrects the model compilers.


2.  History
-----------
None.

3.  Document References
-----------------------
[1] Issues 48 <https://github.com/xtuml/mc/issues/48>
    Reverse Reflixives in MCMC
[2] CQ

6. Work Required
----------------
6.1     RELATE
6.1.1   Correct the orientation of relate statements to match OAL.
6.2     UNRELATE
6.2.1   Correct the orientation of unrelate statements to match OAL.
6.3     SELECT
6.3.1   Leave "backwards" select statements as they are in RSL for now.
6.3.2   Convert "backwards" select statements to forward statements
        during the conversion from RSL to OAL (in the current_list.sh
        shell script).

7. Implementation Comments
--------------------------
None.

8. Unit Test
------------
8.1 Model compiler tests must pass.
8.2 docgen tests must pass.

9. Code Changes
---------------
Repository: xtuml/mc
Branch name:  cds_revreflex 

<pre>
 src416 also updated with new generated code
 arc/m.domain.arc                                   |     4 +-
 arc/q.class.factory.arc                            |     8 +-
 arc/q.parm.sort.arc                                |    40 +-
 arc/q.sys.populate.arc                             |    62 +-
 doc/checklists/indus/44_48_promotion.chk           |   126 +
 doc/notes/48_cds_revrerefelx_int.md                |    50 +
 mcmc/arlan/current_list.sh                         |    52 +-
 mcmc/arlan/o.oal                                   |   228 +-
 mcmc/arlan/o2.oal                                  |     2 +-
 mcmc/arlan/o3.oal                                  |    14 +-
 mcmc/arlan/o4.oal                                  |    12 +-
 mcmc/arlan/swapreflex.sh                           |     3 +
 model/com.mentor.nucleus.bp.core/gen/ooaofooa.c    | 56454 +++++++++----------
 model/com.mentor.nucleus.bp.core/mcout.txt         |   994 -
 .../Component Library/Component Library.xtuml      |     8 +-
 .../Translation Extensions.xtuml                   |     4 +-
 .../components/ooaofooa/ooaofooa/afun/afun.xtuml   |  1156 +-
 .../ooaofooa/ooaofooa/afunmark/afunmark.xtuml      |  1296 +-
 .../ooaofooa/ooaofooa/afunsmt/afunsmt.xtuml        |   888 +-
 .../ooaofooa/ooaofooa/afunval/afunval.xtuml        |   280 +-
 57 files changed, 58868 insertions(+), 59679 deletions(-)
</pre>

End
---

