---

This work is licensed under the Creative Commons CC0 License

---

# MASL exporter emits warnings for core types
### xtUML Project Review Minutes

Reviewed: 10195_typewarn_int.adoc 6bad1de  
Present: Levi, Keith, Cort  

<pre>

-- Num Type  Who  Section  Comment
x- 01  min   LS   2        "128 [bit] integers"
x- 02  min   LS   2        "'Global' types (native xtUML core data types) had been created as-needed ...". They are not actually native types but UDTs
x- 03  min   ALL  2        Discussing behavior of IDLINK. Explain O_ATTR and S_UDT gen folder files.
o- 04  min   LS   4.1      What about when a UDT has a definition (as in MASL constrained type). Is it based on MASLtype? Would that break this check? Make a test case to analyze and report.
Mostly punting on this.  I have created a test case and will continue to poke at it.
x- 05  min   KB   4.1      Confusion on the mention of "types" package. Clarify.
x- 06  min   CS   4.3      At the end of processing those types are deleted
x- 07  min   LS   *        This will be dead code soon because deployments do not use interfaces (and therefore do not refer directly to domain types). MASL round trip won't work because it still uses the component reference diagram for MASL projects. The code can be removed when the component reference project idiom is fully deprecated.
x- 08  min   KB   *        Keith suggests a lot of these types that the converter creates, we should not create anymore. Cort verifies that this is true already. There are still some that get created. The list can be found in the code of ooapopulation.xtuml

</pre>
   
No major observations, a re-review is not required.

End
---
