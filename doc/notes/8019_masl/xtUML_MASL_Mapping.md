---

This work is licensed under the Creative Commons CC0 License

---

# xtUML MASL Mapping

1. Mapping
----------

 xtUML                 | MASL           | notes
-----------------------|----------------|-------------------------------
 Package               | Project        | A package marked in xtUML as a system configuration will be exported as a MASL Project.
 Component Reference   | domainPrjItem  | A component reference in a system configuration package maps to a Domain Project Item in the MASL Project.
 Component             | Domain         | The component referenced from a configuration package maps to a MASL Domain.
 Port                  | Terminator     | A Port maps to a MASL Terminator.
 Message               | TerminatorItem | A message in a port is a terminator item.
 Synchronous Operation | Function       | A port operation maps to a MASL Terminator Function.
 Asynchronous Signal   | Service        | A port signal maps to a MASL Terminator Service.  A service has no return value.



End
---

