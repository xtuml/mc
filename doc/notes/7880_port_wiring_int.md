---

This work is licensed under the Creative Commons CC0 License

---

# 7880 Enable Port Wiring
### xtUML Project Implementation Note  


1. Abstract
-----------
A port wiring mark was implemented for a specific user by never enabled
by default.  The feature allows individual project models to be build without
the dependent components to which the model communicates (through interfaces).
The absent foreign component can be wired to force the invocation of their
port messages.  This allows separate generation of each component and later
integration.

2. History
----------
None.

3. Document References
----------------------
[1] [Enable Port Wiring #7880](https://support.onefact.net/redmine/issues/7880)

4. Background
-------------
See abstract.

5. Requirements
---------------
5.1  Remove the hard-coded (false) conditions that disable this feature.

6. Work Required
----------------
6.1  In q.component.arc, remove the (false) conditions that block the feature.
  
7. Implementation Comments
--------------------------
Using this branch, I updated the model for mcmc build by following the HOWTO.

8. Unit Test
------------
8.1 Build MicrowaveOven and mcmc using the resulting mcmc.

9. Code Changes
---------------
Repository: xtuml/mc
Branch name:  7880_portwiring

<pre>
 arc/c/q.component.arc                              |     4 +-
 arc/c/t.component.message.c                        |     4 +-
 arc/q.sys.populate.arc                             |     3 +-
 mcmc/arlan/funcsigs.h                              |   917 +-
 mcmc/arlan/o.oal                                   |    34 +-
 mcmc/arlan/o2.oal                                  |   188 +-
 mcmc/arlan/o3.oal                                  |    68 +-
 mcmc/arlan/template_engine                         |   Bin 68050 -> 68090 bytes
 model/com.mentor.nucleus.bp.core/.classpath        |     2 +-
 .../.externalToolBuilders/Model Compiler.launch    |     4 +-
 .../gen/HOWTO Create mcmc-docgen.txt               |    14 +-
 model/com.mentor.nucleus.bp.core/gen/lex.yy.c      |   238 +-
 model/com.mentor.nucleus.bp.core/gen/ooaofooa.c    |   598 +-
 .../gen/template_engine.tab.c                      |    52 +-
 model/com.mentor.nucleus.bp.core/gen/yywrap.c      |     4 +-
 .../ooaofooa/ooaofooa/DocGen/DocGen.xtuml          |     6 +-
 .../Extended System/Extended System.xtuml          |    20 +-
 .../components/ooaofooa/ooaofooa/afun/afun.xtuml   |  1221 +-
 .../ooaofooa/ooaofooa/afunmark/afunmark.xtuml      |  1368 +-
 .../ooaofooa/ooaofooa/afunsmt/afunsmt.xtuml        |  1146 +-
 .../ooaofooa/ooaofooa/afunval/afunval.xtuml        |   373 +-
 .../src/xtumlmc_schema.sql                         |     3 +-
</pre>

End
---

