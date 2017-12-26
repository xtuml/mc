---

This work is licensed under the Creative Commons CC0 License

---

# type export needs to be ordered
### xtUML Project Review Minutes

Reviewed:  9947_typeorder_dnt.md  https://github.com/cortlandstarrett/mc/commit/efbc3c5791e73a19dcdc1788ae542e607564f577
Present:  Cort, Keith, Bob

<pre>

-- Num Type  Who  Section  Comment
_- 01  min   bob  6.2      Cort described during the review how he built this model. This 
                           comment is raised to assure this is captured in the implementation note, or here.
                           Verifier was used to help debug the list management associated with the change 
                           (debugging of cyclic changes).                
_- 02  min   cds  6.3      employes -> employs
_- 03  min   bob  6.3.3    Call out the error the guard will report
_- 04  min   skb  6.5      After the first sentence refer to the analaysis note where additional 
                           explanation is provided.
_- 05  min   bob  6.5 & 7.1 Raise a follow-on issue. This can also be referenced in 7.1 (Tower may be 
                           interested in this follow-on)
_- 06  min   cds 2         Make sure there is a follow-on issue to enter Tristans type model into the model
                           of masl, and make sure the issue raised is "related to" this one in the issue 
                           tracking system.

_- 07  min   cds  ???    This implementation does not put forward declarations and type definitions all together, it 
                         intermixes them. Tristan may ask that they all be put together and not intermixed. 
                         This could be done in a 3rd pass, but it was not a requirement of this work.
                         
                         This discussion/observation could be an implementation comment in this note or in the 
                         implemenation note? It is not done in this work because it was not a requirement of 
                         this work. It is not known if it is ever needed.
                         
_- 08  min   cds  6.3.3      In "breaking of cycles", first paragraph: "One dependent reference is selected arbitrarily...".  
                         Potential problem here is masl roundtrip. There is a potenial difference between invocations because 
                         of the current "arbitrary selection" in this situation.  
                         Raise a follow-on issue. Could be a false error in the masl roundtrip testing.  Potential way to deal
                         with it is to pick via alpha sort.  

</pre>
   
No major observations, a re-review is not required.  


End  
---
