//
// Filename: SAC.mod
//
// Description: System Access Control
//
//
// UK Crown Copyright (c) 2010-2012,2014. All rights reserved.
//
domain SAC is
  object Session;
  object LongSession;
  object ShortSession;

  // Allows a user to log into the system. The groups that the
  // user belongs to are specifed and the domain checks that they
  // are valid. If they are valid a session is created and the
  // user is provided with a session id.  If there are invalid
  // the user is informed of the failure to logon.
  public function user_logon (user_id              : in  integer,
                             login_name           : in  string,
                             user_name            : in  string,
                             workstation_hostname : in  string,
                             groups               : in  sequence of string) return integer; pragma soa_remote ("");

  // Allows the user to inform the domainthat they have logged
  // off. The domain shall delet the session and if teh user is
  // involved in no other session then it shall delete the user.
  public service user_logoff (session_id : in  integer,
                              user_id    : in  integer,
                              login_name : in  string); pragma soa_remote ("");

  // Allows a group to be added to the domain. Groups are
  // collections of operations that can be performed on the
  // system.
  public service add_group (group_name : in  string); pragma soa_remote ("");

  // Allows an operation to be associated with a group. If the
  // operation does not exist then it is created.
  public service add_operation_to_group (group_name : in  string,
                                         operations : in  sequence of string); pragma soa_remote ("");

  // Allows the user to indicate that the session is still
  // ongoing.
  public service session_active (session_id : in  integer,
                                 user_id    : in  integer,
                                 login_name : in  string); pragma soa_remote ("");

  // Allows a group to be deleted from the domain.
  public service delete_group (group_name : in  string); pragma soa_remote ("");

  // Allows the domain to remove an operation from the specified
  // group
  public service delete_group_operation (group_name : in  string,
                                         operations : in  sequence of string); pragma soa_remote ("");

  // This shall load the groups and the operations assigned to
  // the groups
  public service populate_domain (reload_config_files : in  boolean); pragma soa_remote ("");

  // This allows the domain to repopulate the user with all the
  // information it is currently storing
  public service resend_infos (); pragma soa_remote ("transient");

  terminator Operator is
    // Allows the domain to report the the login was accepted
    private service login_valid (session_id           : in  integer,
                                 user_id              : in  integer,
                                 is_valid             : in  boolean,
                                 failure_reason       : in  string,
                                 workstation_hostname : in  string,
                                 login_name           : in  string);

    // Allows the domain to report the details of a user to the
    // operator
    private function report_user (user_id    : in  integer,
                                 login_name : in  string,
                                 user_name  : in  string,
                                 logged_on  : in  logged_on_type) return integer;

    // Allows the domain to report that the user has been deleted.
    private service user_removed (user_id    : in  integer,
                                  login_name : in  string);

    // Allows the domain to report the details of a session that
    // has been started by a user.
    private service report_user_session (session_id           : in  integer,
                                         user_id              : in  integer,
                                         login_time           : in  timestamp,
                                         session_timed_out    : in  boolean,
                                         workstation_hostname : in  string,
                                         login_name           : in  string);

    // Allows the domain to report that a user session has been
    // deleted.
    private service user_session_deleted (session_id : in  integer);

    // Allows the domain to report the details of a group that has
    // been added to the system.
    private service report_group (group_name : in  string);

    // Allows the domain to report that a group has been deleted
    private service group_deleted (group_name : in  string);

    // Allows the domain to report the details of an operation that
    // is assigned ot a group
    private service report_group_operation (group_name     : in  string,
                                            operation_name : in  string);

    // Allows teh domain to report that an operation has been
    // removed from the group
    private service group_operation_removed (group_name     : in  string,
                                             operation_name : in  string);

    // Allows the domain to report the operations that are valid
    // for this user session.
    private service report_user_operation (user_id        : in  integer,
                                           operation_name : in  string,
                                           login_name     : in  string,
                                           session_id     : in  integer);

    // Allows the domain to report that the operations for the user
    // session have been deleted
    private service user_operation_removed (user_id        : in  integer,
                                            operation_name : in  string,
                                            login_name     : in  string,
                                            session_id     : in  integer);

    private service report_user_group (uid        : in  integer,
                                       group_name : in  string,
                                       login_name : in  string,
                                       session_id : in  integer);

    private service user_group_removed (uid        : in  integer,
                                        group_name : in  string,
                                        login_name : in  string,
                                        session_id : in  integer);

    // Report a condition to the operator
    private service raise_notification (condition_description : in  string,
                                        condition_name        : in  string);

  end terminator;
  pragma key_letter ("OP");


  terminator System_Configuration is
    // This shall load in the groups and teh operatiosn for those
    // groups from the ini file.
    private service get_groups (groups : out sequence of group_type);

    // this shall return teh details about the heartbeat for
    // managing the user sessions.
    private service get_session_specification (heartbeat_time              : out duration,
                                               heartbeat_failure_threshold : out integer);

    private service reload_config_files ();

  end terminator;
  pragma key_letter ("SCON");


  // populate domain
  private service populate_domain_1 (); pragma scenario (1);

  // soa subscribe
  private service soa_subscribe_2 (); pragma scenario (2);

  // resend infos
  private service resend_infos_3 (); pragma scenario (3);

  // test SAC
  private service test_SAC_1 (); pragma external (1); pragma test_only ("true");

  relationship R1 is Session is_a ( LongSession, ShortSession );

  object Session is
    session_id                : preferred unique integer;
    logon_time                : timestamp;
    session_heartbeat_timer   : timer;
    session_heartbeat_failure : integer;
    has_timed_out             : boolean;

    // This shall delete the session. This can happen when a user
    // is logged out or a user is forced to logout due to another
    // user logging in.
    public instance service delete_session ();

    public instance deferred ( R1 ) function foo () return string;

    state Created ();

    state Session_Established ();

    state Session_Heartbeat_Failed ();

    state Session_Timed_Out ();

    event user_logged_on ();

    event session_timeout_reached ();

    event heartbeat_timeout_expired ();

    transition is
      Non_Existant (            user_logged_on            => Ignore,
                                session_timeout_reached   => Ignore,
                                heartbeat_timeout_expired => Ignore);
      Created (                 user_logged_on            => Session_Established,
                                session_timeout_reached   => Ignore,
                                heartbeat_timeout_expired => Ignore);
      Session_Established (     user_logged_on            => Ignore,
                                session_timeout_reached   => Ignore,
                                heartbeat_timeout_expired => Session_Heartbeat_Failed);
      Session_Heartbeat_Failed (user_logged_on            => Session_Established,
                                session_timeout_reached   => Session_Timed_Out,
                                heartbeat_timeout_expired => Session_Heartbeat_Failed);
      Session_Timed_Out (       user_logged_on            => Session_Established,
                                session_timeout_reached   => Ignore,
                                heartbeat_timeout_expired => Ignore);
    end transition;

  end object;
  pragma id (8);
  pragma key_letter ("S");

end domain;
pragma number (59);
