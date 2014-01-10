---

Copyright 2013 Mentor Graphics Corp.  All Rights Reserved.

---

# Japanese characters in model can cause generator to crash
### xtUML Project Analysis Note


1. Abstract
-----------
Japanese customers are reporting that including Japanese characters in a model
can cause generator to crash.

2. Document References
----------------------
[1] Issues 42, https://github.com/xtuml/mc/issues/42    
[2] CQ dts0101020170  
[3] UTF-8, http://en.wikipedia.org/wiki/UTF-8  
[4] UTF-8 Everywhere, http://www.utf8everywhere.org/  
[5] Fundamental Types (VC++), http://msdn.microsoft.com/en-us/library/cc953fe1.aspx  

3. Background
-------------
FujiXerox is attempting to migrate from BridgePoint 5.x to eclipse-based 
BridgePoint 4.1.0.  During this process, they have hit cases where Japanese 
characters in their model data have caused generator to crash.

4. Requirements
---------------
4.1  Models that contain Japanese characters shall be translatable.

5. Analysis
-----------
5.1  Several problem cases have been seen thus far:  
5.1.1  A state action contains Japanese characters where one of these characters
  is the last character in the OAL (no trailing newline, space, Latin character). 
  This causes a problem while generator is parsing INSERT statements.  Generator 
  thinks the field does not end with a tick character.  If one inspects the 
  _system.sql file, you find the Japanese character immediately followed by a 
  tick.        
5.1.2  Same as 5.1.1, except in a modeled element's description field.
5.1.3  When some Japanese characters end a line (not the last line of a field), 
  they cause an error during code generation where the file being created is 
  simply truncated after the character.  No error is reported during code 
  generation for this problem.  
5.1.3.1  This error case is still not understood.

5.2  The file (_system.sql) contains valid UTF-8.  When the file is opened in an
  editor that understands UTF-8 (like Notepad++ or the built in eclipse text 
  editor), all the Japanese chars are rendered just as they appear inside the 
  eclipse UI.  Notepad++ has no problem with the case where a Japanese character
  is immediately followed by a tick.  It also has no problem with the character
  sequence that causes file truncation in generator output.
  
5.3  UTF-8 uses variable length encoding from 1 - 4 bytes per character.  
  Generator is set up to work on fixed-length encoding.
5.3.1  Specifically, the place where it looks for an end tick ```gs_imp.cc:1791``` relies on this code:
  ```if (attr_value_str.char_at(attr_value_str.length () - 1) != '\'')```
5.3.2  Generator, at ```u_tspec.cc:34``` and Galaxy at ```vchar.h:58``` uses this
 block:
```
#if (vportVCHAR_CODESET == vportCODESET_ASCII)
typedef char         vchar;
#elif (vportVCHAR_CODESET == vportCODESET_LATIN_1)
typedef unsigned char    vchar;
#elif (vportVCHAR_CODESET == vportCODESET_MACINTOSH)
typedef unsigned char    vchar;
#elif (vportVCHAR_CODESET == vportCODESET_WINDOWS)
typedef unsigned char    vchar;
#elif (vportVCHAR_CODESET == vportCODESET_UNICODE)
typedef unsigned short   vchar;
#elif (vportVCHAR_CODESET == vportCODESET_MNLS)
typedef wchar_t      vchar;
#elif (vportVCHAR_CODESET == vportCODESET_ISO_10646)
typedef unsigned long    vchar;
#else
typedef _error _error;  /* (vportVCHAR_CODESET is unknown!) */
#endif
```
  vchar is the underlying type that is used throughout generator for characters
  and character arrays/strings.  According to [5], only ```unsigned long``` is 4
  bytes.  The rest are 2 or less.
  
5.4  Possible solution points:
  - __Pre-build exporter__.  Change it so we don't export any description fields to 
  <project>.sql since they aren't used by code gen anyway.  Make sure any OAL
  fields have a newline as the last character.
    - Drawbacks: This could solve 5.1.1 and 5.1.2, but not 5.1.3
  - __mcmc, Option 1__.  Strip Japanese characters.
    - Drawbacks: Draconian
    - Advantages: Solves all 3 problem cases
    - Concerns: Is mcmc UTF-8 aware enough to do the string processing we would
    need?  
  - __mcmc, Option 2__.  Do the work called out for pre-builder above here instead  
  - __generator, Option 1__. Try to modify the code (gs_imp.cc:1791) to look for the end
  tick differently, in a manner that avoids character-width issues/functions and
  instead just inspects the underlying in-memory data.
    - Drawbacks: Does not solve 5.1.3.  We are hacking around Galaxy string handling.
    - Advantages: Leaves Japanese characters intact for use with ```MarkStateActionCommentBlocksEnabled```
  - __generator, Option 2__.  Try to force generator to use ```vportCODESET_ISO_10646```
  as called out in 5.3 so ```vchar``` contains enough bytes to hold UTF-8 characters
  properly.
    - Drawbacks: Going to this much larger fixed-width encoding could cause performance
    or memory consumption issues.  Cannot yet say if this will help for 5.1.3
    or not.
    - Advantages: the ```vchar``` type is guaranteed to have enough space to store
    UTF-8 characters.  Don't have to strip Japanese characters from the model data.
  - __xtuml_build__.  Do work called out in mcmc Option 1 here instead.

  
6. Work Required
----------------

7. Acceptance Test
------------------

End
---

