domain UI is
  object TestCase;
  object UI;
    private service sendLapResetPressed (
    );
    private service sendLightPressed (
    );
    private service sendModePressed (
    );
    private service sendStartStopPressed (
    );
    private service sendTargetPressed (
    );
    private service createGoals_1 (
    );
    private service init (
    );
    private service RunTestCase (
    );
  terminator UI is
    public service setTime (
        time : in integer    );
    public service setData (
        unit : in Unit,        value : in real    );
    public service startTest (
    );
    public service setIndicator (
        indicator : in Indicator    );
    public service newGoalSpec (
        spanType : in GoalSpan,        criteriaType : in GoalCriteria,        span : in real,        maximum : in real,        minimum : in real,        sequenceNumber : in integer    );
  end terminator;
  terminator Tracking is
    public service setTargetPressed (
    );
    public service startStopPressed (
    );
    public service lapResetPressed (
    );
    public service modePressed (
    );
    public service newGoalSpec (
        spanType : in GoalSpan,        criteriaType : in GoalCriteria,        span : in real,        maximum : in real,        minimum : in real,        sequenceNumber : in integer    );
    public service lightPressed (
    );
  end terminator;
  object TestCase is
    current_state :   state<State_Model>;
    iterations :   integer;
    public  service execute (
    );
     state pressStartStop();
     state testCaseFinished();
     event delay();
     event start(        iterations : in integer);
     event finish();
     transition is
      pressStartStop (
        delay => pressStartStop,
        start => cannot_happen,
        finish => testCaseFinished      ); 
      testCaseFinished (
        delay => cannot_happen,
        start => cannot_happen,
        finish => cannot_happen      ); 
    end transition;
  end object;
  object UI is
    public  service connect (
    );
    assigner start state running();
    assigner event setTargetPressed();
    assigner event startStopPressed();
    assigner event lapResetPressed();
    assigner event lightPressed();
    assigner event modePressed();
    assigner transition is
      running (
        setTargetPressed => running,
        startStopPressed => running,
        lapResetPressed => running,
        lightPressed => running,
        modePressed => running      ); 
    end transition;
  end object;
end domain;
