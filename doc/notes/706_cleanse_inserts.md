---

This work is licensed under the Creative Commons CC0 License

---

# Correction of cleansing of inserts in the xtumlmc_build
### xtUML Project Implementation Note

1. Abstract
-----------
Cleansing of inserts in .xtuml/.sql files used by custom MC:s like the Saab Ada MC.

2. Document References
----------------------
[1] [BridgePoint DEI #706](https://support.onefact.net/redmine/issues/706)  

3. Background
-------------
When using the xtumlmc_build in a custom MC it failed to cleanse proxy tables.

4. Requirements
---------------
4.1 Correct cleansing of a sql file containing an xtuml model exported from BridgePoint.

5. Work Required
----------------
Updated the perl script xtumlmc_build to omit the PROXY tables that it fails to cleanse.

6. Implementation Comments
--------------------------
None.

7. Unit Test
------------
Code generate with a custom MC cleansing the exported model file. The cleansing shall succeed so that a successful code generation can follow.

8. Code Changes
---------------
Branch name: < 706_cleanse_inserts >

<pre>

< bin/xtumlmc_build >

</pre>

End
---

