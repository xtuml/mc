---

This work is licensed under the Creative Commons CC0 License

---

# Polymorphic Event Sent to Subtype Fails Silently
### xtUML Project Implementation Note

### 1. Abstract

MC-3020 does not support sending polymorphic events to subtypes.

### 2. Document References

<a id="2.1"></a>2.1 [10327](https://support.onefact.net/issues/10351) Bring back MC-3020 persistence  

### 3. Background

Analysis determines that this problem is a bit more fundamental than given in the headline.

### 4. Requirements

4.1 Stop failing silently.  
Instead of failing silently, fail with a warning to the user.

### 5. Work Required

The failure scenario is that the dispatcher for the supertype is called
even though the handle to the subtype has been passed.  The supertype
dispatcher treats this (suptype) handle as if it were a handle to the
supertype.

Detect 

5.2 Fix `switch`.
Provide a default: to the switch which probably calls EventCannotHappen.

### 6. Implementation Comments

### 7. Unit Test

Test generating event.
Test timer.
Test self.
Test precreated event.

### 8. User Documentation

No documentation changes are necessary.

### 9. Code Changes

<pre>
Fork/Repository:  cortlandstarrett/mc
Branch:  10327_poly

Fork/Repository:  cortlandstarrett/models
Branch:  10327_poly

</pre>

### End

