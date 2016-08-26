---

This work is licensed under the Creative Commons CC0 License

---

# 8681 STRING bridge bug, 8682 masldiff script
### xtUML Project Implementation Note

1. Abstract
-----------

### #8681
There exists a bug in the MC STRING bridge 'trim' routine that causes the last
valid character to be cut off. This is observed when a string that is a single
character in length is passed through 'trim' and empty string is returned. This
behavior has been observed in exporting pragmas of one character.

### #8682
The _masldiff_ script exists in a place that is not easy or intuitive for
BridgePoint users to find. This issue is to move this script to be alongside
the other MASL utility scripts _masl2xtuml_ and _xtuml2masl_ and integrate it
into the build configuration.

2. Document References
----------------------
<a id=2.1></a>2.1 [#8681 Pragma export cuts off single character pragma values](https://support.onefact.net/issues/8681)  
<a id=2.2></a>2.2 [#8682 Move the masldiff script so it is packaged more sensibly with the other MASL tools](https://support.onefact.net/issues/8682)  

3. Background
-------------
none

4. Requirements
---------------
4.1 The STRING 'trim' utility shall produce correct output for single character
strings  
4.2 The masldiff utility shall be integrated into the build process and placed
alongside _masl2xtuml_ and _xtuml2masl_ in the `tools/masl/` directory  

5. Work Required
----------------
5.1 Update the 'trim' routine in the STRING bridge for `maslout` to use proper
indexes.  
5.2 Rebuild and add new `x2m` executable to the `packaging` repository  
5.3 Remove extraneous 'trim' implementation from the `masl` project  
5.4 Add _masldiff_ script to the `bin` directory  
5.4.1 Add README contents to the beginning of the masldiff script  
5.5 Remove `masl/diff/` directory from the `mc` repository  
5.6 Update the `configure_build_process.sh` script in the `bridgepoint`
repository to copy the _masldiff_ script into the build from the `mc` repository

6. Implementation Comments
--------------------------
6.1 The problem that I discovered in the 'trim' routine was that 'trim' invokes
the 'substr' routine with improper usage. 'substr' requires a beginning and end
index. The end index is non-inclusive. The 'trim's invocation of 'substr'
assumed an inclusive index. The fix was as simple as adding "+1" to the end
index in the invocation.

6.1.1 I continued to analyze further however to understand why this problem was
only showing up in single character strings for pragma export. I would expect
that I would have been seeing strings with one character cut off even with
multi-character strings. I discovered that the 'trim' routine is only used in
two places, both of which are simply checking for an empty string case. Because
of this, a single character string was represented as an empty string because
the last character was cut off.

6.1.2 I also was curious if this problem was affecting other projects. I
discovered that the `masl` project does have an implementation of 'trim' (and
the bug is present), however the `masl` project never invokes 'trim'. I decided
to remove the implementation from the `masl` project to avoid maintaining the
implementation in two places.

6.2 When I moved the _masldiff_ script from `mc/masl/diff/` to `mc/bin/`, I
removed the old _masldiff_ script and _README_ from the `diff/` directory and
copied the contents of the _README_ into the new _masldiff_ script in `mc/bin`

7. Unit Test
------------
7.1 Export a MASL domain containing a pragma value that is one character (e.g. a
number). Verify that the pragma has been exported to textual MASL (requirement
4.1).  

7.2 Build a release of BridgePoint and verify that the _masldiff_ script is
included in the `tools/masl/` directory (requirement 4.2).  

8. Code Changes
---------------
Branch name: leviathan747/mc 8681_8682_raven_mc_fixes

<pre>

 bin/masldiff                      | 34 ++++++++++++++++++++++++++++++++++
 model/masl/gen/STRING_bridge.c    | 30 +++---------------------------
 model/maslout/gen/STRING_bridge.c |  2 +-
 3 files changed, 38 insertions(+), 28 deletions(-)

</pre>

Branch name: leviathan747/bridgepoint 8682_masldiff_script

<pre>

 utilities/build/configure_build_process.sh | 2 ++
 1 file changed, 2 insertions(+)

</pre>

Branch name: leviathan747/packaging 8681_trim_fix

<pre>

 build/extra_files/x2m | Bin 598335 -> 598385 bytes
 1 file changed, 0 insertions(+), 0 deletions(-)

</pre>

End
---

