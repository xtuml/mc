---

This work is licensed under the Creative Commons CC0 License

---

# Filter Verifier Runtime Instances and Junk
### xtUML Project Implementation Note

1. Abstract
-----------
Filter out instances exported from prebuilder that will never be used by
code generation.

2. Document References
----------------------
[1] [591](https://support.onefact.net/issues/591) Filter Verifier runtime instances  

3. Background
-------------
Users can run the model compiler while the Verifier is still running.
When this is done, the active Verifier instance population in memory is
exported along with the instances from the OOA of OOA proper to the down
stream model compiler chain.  Some instances from Verifier will never (?)
likely be used by code generation.  Runtime instances of the class state
machine execution engine are among these.  Filter these out.

4. Requirements
---------------
4.1  Filter out CSME (Class State Machine Engine) instances from prebuilder.  
4.2  Remove deprecated subsystem filtering from xtumlmc_build.  

5. Work Required
----------------
5.1. Remove CSME_ from the allowed list of subsystems.  
5.2. Remove Breakpoint (BP_), because it is not needed for code generation.  
5.3. Remove Component Nesting (CN_), Component Package (CP_), Interface
Package (IP_), PL_, System Level Datatypes (SLD_), because these are
deprecated packages in the metamodel.

6. Implementation Comments
--------------------------

7. Unit Test
------------
7.1 Keep running xtumlmc_build in all of its contexts.  Nothing should break.

8. Code Changes
---------------
Branch name: 561_CSME

<pre>
 bin/xtumlmc_build | 7 -------
</pre>

End
---

