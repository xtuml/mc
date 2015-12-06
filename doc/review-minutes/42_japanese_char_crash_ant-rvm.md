---


---

# Japanese characters in model can cause generator to crash
### xtUML Project Review Minutes

Reviewed:  42_japanese_char_crash_ant.md
Present:   Keith, Bob, Cort

<pre>

-- Num Type  Who  Section  Comment
x- 01  min   Bob  2.6      Add brief description.

This is a tough issue.  There was significant discussion regarding
various approaches to solving the issue and to the specific "character
substitution" approach.  We basically disqualified generator from
being touched because of its frailty and tool dependencies and memory
limitations.
Regarding character translation, we discussed:
- deleting non-ascii
- converting to a constant (e.g. J)
- folding to a unique character + number
- converting to romaji (Romanized Japanese)

</pre>
   
No major observations, a re-review is not required.


End
---
