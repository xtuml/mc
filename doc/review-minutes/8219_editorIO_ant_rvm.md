---

This work is licensed under the Creative Commons CC0 License

---

# Editor I/O - Interfacing MASL Editor with BridgePoint
### xtUML Project Review Minutes

Reviewed:  8219_editorIO_ant.md   a9eadfeefb202be1aaeb194a35c19897ca56e2a7
Present:  Keith Brown, Robert Mulvey, John Wolfe, Jan Kohnlein, Cortland Starrett

<pre>

-- Num Type  Who  Section  Comment
x- 01  min   bob  4        Add a reference to the Raven SRS that these requirements
                           come from:
                           Raven Advanced SRS link
https://docs.google.com/document/d/1hi6TnVgNQj51zt9Ce1C3H6DHJI_kCjF1CDMBXxoe7wo/edit


x- 02  min   bob  4        Consider using the requirement ID from the SRS to clearly
                           show the mapping to the SRS.
                           
x- 03  min   JW   4.4      Missing the word "automatic" that is in the SRS. Add
x- 04  min   CDS  5        (paragraph 1) "action languages"
x- 05  min   CDS  5.1.2    ooaofooa is xtUML Meta Model, perhaps put this in parenthis at first use

x- 06  min   bob  5.1      The document should describe what the "new" process of adding a feature to the
                           meta model will be.
                           Note that we will be maintaining 2 languages, MASL and xtUML, at least for a while.
                           We will still add the feature in xtUML as usual and we will then add the 
                           feature in Xtext in Java.
x- 07  min   Jan  5.3.2    Jan says he suggests only going this way if we get rid of UUIDs. It 
                           will be tricky to 
                           synchronize UUIDs
x- 08  min   Jan  5.3      At the moment, structure is king. This may change, but for now
                           though it is hard to validate signatures in the structural approach .
                           we desire to move to the "text is king" approach.
                           Cort envisions perhaps no longer even allowing signature editing structurally.
x- 09  min   bob  6        refer to x2m so reader can see where this folder structure comes ffrom
x- 10  min   SLB  6.5.1    split out bridges
This is currently driven by the BridgePoint persistence architecture.  Currently components, classes,
packages and state machines have their own file.  We pretty much need to align with this.  And now is
not the right time to change the persistence architecture of BridgePoint.
x- 11  min   JW   6.5.4    need finer granularity, 
                           all messages in port will be edited as single resource and persisted as such
x- 12  min   bob  6.6      This is wrong. We are going to choose structure as king. Rework this section.
                           Note that John calls out that the customer does not want to deal with 
                           the signature, they are expecting structure as king for this work.
x- 13  min   cort  6.6     How do we show signature in file but not edit it? Explain in rewored section.
x- 14  min   bob  7        Do not leave this empty. 
                           You can simple write that tests will be outlined in the design 
                           note that will follow.
x- 15  min  CDS  6.7.{3 4} Cort points out that this will not be done in this work. Call this out and raise 
                           separate issue.


</pre>
   
No major observations, a re-review is not required.


End
---
