% =====================================
% PROGRAMME QUERIES
% =====================================

programme_query(Input, Reply) :-

    (
        sub_string(Input, _, _, _, "about the programme")
        ;
        sub_string(Input, _, _, _, "about the msc")
        ;
        sub_string(Input, _, _, _, "programme summary")
        ;
        sub_string(Input, _, _, _, "programme information")
    ),

    programme_name(Name),
    programme_duration(Duration),
    minimum_course_units(MinUnits),
    project_units(ProjectUnits),

    findall(
        Spec,
        specialization(_, Spec),
        Specs
    ),

    atomic_list_concat(
        Specs,
        '\n',
        SpecText
    ),

format_programme(
    Name,
    Duration,
    MinUnits,
    ProjectUnits,
    Specs,
    Reply
).

programme_query(Input, Reply) :-

    (
        sub_string(Input, _, _, _, "admission")
        ;
        sub_string(Input, _, _, _, "entry")
    ),

    findall(
        Requirement,
        admission_requirement(Requirement),
        Requirements
    ),

bullet_lines(
    Requirements,
    Bullets
),

atomic_list_concat(
    Bullets,
    '\n\n',
    RequirementList
),

    format_requirements(
    'Admission Requirements',
    Requirements,
    Reply
),

    !.

programme_query(Input, Reply) :-

    (
        sub_string(Input, _, _, _, "graduation")
        ;
        sub_string(Input, _, _, _, "graduate")
        ;
        sub_string(Input, _, _, _, "degree requirement")
        ;
        sub_string(Input, _, _, _, "completion")
    ),

    findall(
        Requirement,
        degree_requirement(Requirement),
        Requirements
    ),

bullet_lines(
    Requirements,
    Bullets
),

atomic_list_concat(
    Bullets,
    '\n\n',
    RequirementList
),

    format_requirements(
    'Graduation Requirements',
    Requirements,
    Reply
    ),

    !.

programme_query(Input, Reply) :-

    (
        sub_string(Input, _, _, _, "duration")
        ;
        sub_string(Input, _, _, _, "how long")
    ),

    programme_duration(Duration),

    atomic_list_concat(
        ['Programme Duration: ', Duration],
        '',
        Reply
    ).

programme_query(Input, Reply) :-

    (
        sub_string(Input, _, _, _, "project unit")
        ;
        sub_string(Input, _, _, _, "project units")
    ),

    project_units(Units),

    format(
        atom(Reply),
        'Project Units: ~w',
        [Units]
    ).

programme_query(Input, Reply) :-

    (
        sub_string(Input, _, _, _, "minimum")
        ;
        sub_string(Input, _, _, _, "course unit")
    ),

    minimum_course_units(Units),

    format(
        atom(Reply),
        'Minimum Course Units: ~w',
        [Units]
    ).
