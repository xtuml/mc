---

This work is licensed under the Creative Commons CC0 License

---

# IPC for components in MC3020
### xtUML Project Design Note


### 1. Abstract

MC3020 uses a simple call/return interface to implement passing messages on an
xtUML interface. This is simple and efficient, but limited in terms of deploying
components across multiple operating system processes or even networked nodes. A
mechanism for passing messages between processes shall be designed in this note.

Interfaces are a complex system that could be modeled in xtUML, however the
details of an interface should be kept separate from the details of an
application model. They are at two different levels of abstraction. There is
currently no way to model the internals of an interface. This note also
considers the capability for a user to model the internals of the interface and
reuse the interface model in any number of application models.

### 2. Document References

<a id="2.1"></a>2.1 [#9538 IPC for components in MC3020](https://support.onefact.net/issues/9538)  
<a id="2.2"></a>2.2 [Previous analysis of structured messaging](https://github.com/cortlandstarrett/mc/blob/714_smsg/doc/notes/714_ipc.ant.md)  

### 3. Background

Some work has already been done in this area (see [[2.2]](#2.2)). This previous
work was used as a reference point, however it was not completely resurrected.
Although a working prototype had once existed, the challenge of merging the old
work into the current model compiler was expensive and its shortcomings made it
impractical. The original design used structured types generated from each
interface message and passed the data across a socket where it was cast back to
the structure on the other side. This method was simple and effective, but it
lacked the flexibility to model the delivery mechanism.

### 4. Requirements

4.1 MC3020 shall implement a mechanism to allow a user to model the delivery of
messages on an interface  
4.1.1 The mechanism shall be applied through model compiler marking  
4.1.2 The mechanism shall be generalized such that any delivery technology could
be used to implement an interface  
4.1.2.1 The mechanism shall enable inter process communication between
components  
4.1.3 The mechanism shall be designed such that it is compatible with any user
defined xtUML interface  
4.1.4 The mechanism shall support the following interface constructs/features:  
4.1.4.1 Signals (asynchronous messaging)  
4.1.4.2 Operations (synchronous messaging) to provider  
4.1.4.3 Return values on operations  
4.1.4.4 By value parameters on signals and operations  
4.1.4.4 By reference parameters on operations  
4.1.4.5 All types supported by xtUML  
4.1.5 The mechanism shall not support the following interface
constructs/features:  
4.1.5.1 Operations (synchronous messaging) from provider  
4.1.5.2 By reference parameters on signals  
4.1.5.3 Types with array dimensions  
4.2 A model of delivery shall be provided, implemented using POSIX sockets  
4.3 An example application demonstrating the MC3020 mechanism and the socket
implementation shall be provided  

### 5. Analysis

5.1 Intermediate components

One way that users have solved the problem of modeling interfaces in the past is
through intermediate components. For example, consider the diagram below:

![system1.png](system1.png)

In this system, `A` and `B` are connected over an interface `C`. They are able
to pass messages back and forth through simple call and return, however if `A`
and `B` are running in different processes or even on different machines, there
would be no way to communicate. Now consider this diagram:

![system2.png](system2.png)

In this new system, the analyst has interposed `transport` between `A` and `B`.
Now the analyst can implement any delivery mechanism inside `transport`. `A` and
`B` maintain the ability to talk on interface `C` and the problem is solved.

This solution although effective is not optimal for two reasons. Firstly, the
analyst has polluted his application model with architectural details. The
`transport` component is not at the same logical level as the abstract system
model and does not belong in a diagram alongside `A` and `B`. Logically, `A` and
`B` communicate over interface `C`, however this solution exposes low-level
particulars about how messages are actually passed in the system. Second, the
`transport` component is forced to be specific and cannot be easily reused in
other application models. To work properly, `transport` must implement the `C`
interface as a provider and requirer. Although `transport` could be designed
such that the internal behavior could be copied into any number of in-between
components, this is not the optimal solution.

The solution that has been designed for this work is similar to the above
solution, however it is different in key ways to solve the core issues of the
solution presented above. Consider this new diagram:

![system3.png](system3.png)

This diagram represents **_logically_** the proposed solution. Like the second
diagram, `transport` is interposed between `A` and `B`, and `A` and `B` both
continue to talk across interface `C`. In this solution, additional components
`provider marshalling` and `requirer marshalling` (marked in gray) are inserted
between `A` and `transport` and `B` and `transport` respectively. These
"components" are generated by the model compiler at the time of compilation and
placed between `A` and `B` and the selected delivery component. Note that
`transport` implements a new interface `ChannelSpecification`. This interface
remains consistent across every component which models delivery and therefore
facilitates reuse of these delivery components. The "marshalling" components are
generated by MC3020 and their responsibility is to pack the messages with
parameters into a consistent format and pass them through the
`ChannelSpecification` interface to the delivery implementation component. On
the other side, they unpack the data and reconstruct a call across the interface
`C`.

5.2 Synchronous messaging and threading

One challenge of abstacting away the details of the transport of interface
messages is implementing synchronous messaging on top of underlying technology
that may or may not by synchronous. For example, with sockets, an interface
operation must be able to block until a reply has come back on the socket and
then it can return. There are two possible ways to achieve this without
concurrency. First, a synchronous message could be split into two functions on
either side of the synchronous call. Another way would be to implement a context
switching mechanism that knew how to escape a function and jump back to the
exact line of code when a reply is received. Both are complex lower readability
of the generated code, so for this design at least two threads shall be
required.

### 6. Design

### 7. Design Comments

### 8. User Documentation

### 9. Unit Test

### End
