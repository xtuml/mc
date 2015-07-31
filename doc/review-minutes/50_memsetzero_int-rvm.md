---


---

# Instance memory not completely zeroed
### xtUML Project Review Minutes

Reviewed:  50_memsetzero_int.md
           51f2edd29af45335a10c74014661d62cdd7aa8f9
Present:  Keith, Cort

<pre>

-- Num Type  Who  Section  Comment
x- 01  min   SKB  7.1      typo "optimization"
x- 02  min   SKB  7.1      Check for other optimization places that are
                           not events.  

</pre>
   
No major observations, a re-review is not required.  

Code Review  
------------  
x- Changed declaration but not implementation when using u4_t.
x- Look at strlen return variable.

End
---
