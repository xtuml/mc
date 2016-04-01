domain Test is

  object Animal;
  object Cat;
  object Dog;
  object Fish;
  object Person;
  object Job;
  object Promotion;

  relationship R1 is    Animal is_a ( Cat, Dog, Fish );

  relationship R2 is    Person conditionally owns many Animal,
                        Animal unconditionally is_owned_by one Person;

  relationship R3 is    Person conditionally works one Job,
                        Job unconditionally is_held_by one Person;

  relationship R4 is    Person conditionally is_managed_by one Person,
                        Person conditionally manages many Person;

  relationship R5 is    Job conditionally leads_to one Job,
                        Job conditionally came_from one Job
                        using Promotion;

  object Dog is
    name : preferred referential (R1.name) string;
  end object;

  object Cat is
    name : preferred referential (R1.name) string;
  end object;

  object Fish is
    name : preferred referential (R1.name) string;
  end object;

  object Animal is
    name  : preferred unique string;
    owner : preferred referential (R2.is_owned_by.Person.name) string;
  end object;

  object Person is
    name : preferred unique string;
    job  : preferred referential (R3.works.Job.title) string;
    boss : preferred referential (R4.is_managed_by.Person.name) string;
  end object;

  object Job is
    title : preferred unique string;
  end object;

  object Promotion is
    old_job : preferred referential (R5.came_from.Job.title) string;
    new_job : preferred referential (R5.leads_to.Job.title) string;
  end object;

end domain;
