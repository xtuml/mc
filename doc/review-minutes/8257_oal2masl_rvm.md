---

This work is licensed under the Creative Commons CC0 License

---

# OAL to MASL
### xtUML Project Review Minutes

Reviewed:  8257_oal2masl_ant.md
Present:  John Wolfe, Cortland Starrett

<pre>

-- Num Type  Who  Section  Comment
3. Background
I think OAL mostly maps easily onto MASL, but I opened #8809[a] to track constructs that might not.
5.3 MCMC Variant Based on MC-3020
It seems the only pro listed is actually a con, and a duplicate of 5.3.2.2.
But, this raises a question.  Why is expressing the OAL-to-MASL transformations in OAL slower than doing so in RSL?  Is this only about the immaturity of our model-based model compiler technology?  Or is there something more fundamental[b] going on here?  
I have the, perhaps very naive, impression that it would be easier to express the transformations in OAL and that it would be easier to test and debug them using Verifier than it would be to express them in RSL and test and debug them by running archetypes.  What am I missing?
5.4 Extend xtuml2masl
Typo:  “Programmatically onvert the…”
Typo:  “5.4.1.1...natural exension of…”
5.6 Selected Option
Someday we will need to build the full model of MASL activities (in some form), and it’s important we get paid for doing that work.  Doing it now, while technically attractive, represents an inappropriate investment of 1F resources.
7. Acceptance Test
I would be much more comfortable with some tests that verify functionality through execution.  [c][d]
Terminology
Throughout this document, “mcmc” is used in enough different ways that I’ve lost track of the precise meaning of the term and wonder whether it’s been unnecessarily overloaded or simply inaccurate to begin with:
“MCMC Variant Based on MC-3020”
“Consider compiling a special mcmc to be used in production.”
The term “mcmc” implies “model compiler (model) compiler”.  But, the description of it in 5.3 implies that we’re talking about a compiled C model compiler (as opposed to a C model compiler that must be interpreted).  So, what, precisely is mcmc[e]?  Is it really something that compiles model compilers?  Or, is it the result of having compiled a model compiler?
[a]Both items you noted are covered by MASL.  I doubt there is anything in OAL that is not in MASL.  (MASL has Ada "characteristics".  'length' is standard.)
[b]interpreter versus compiled
[c]You give me an idea.  I can do some simple mathematical loops and selections.  We have tests that test themselves... making sure they get the expected result.  We can do this.  Good idea.
[d]The only thing is that I do not want to mess with the MASL C++ MC until after Christmas.
[e]It the one we built.  It refers to the specific one that runs inside of MC-3020.

</pre>
   
No major observations, a re-review is not required.


End
---
