.if ( false == default_behavior )
// state machine dispatcher process for ${te_class.Name}
void ${te_c.Name}::${te_class.GeneratedName}_sm()
{
  ${te_c.Name} * thismodule = this;
  while ( true ) {
    ${te_instance.module}ooa_loop( (void *) this );
    wait();
  }
}
.else
// default behavior process for ${te_c.Name}
void ${te_c.Name}::component_main()
{
${port_reset}
  wait();
  while(true){
    wait();
  }
}
.end if
