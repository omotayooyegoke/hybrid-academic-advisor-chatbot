% =====================================
% COURSES IN A SPECIALIZATION
% =====================================

course_query(Input, Reply) :-

    (
        sub_string(Input, _, _, _, "courses")
        ;
        sub_string(Input, _, _, _, "subjects")
    ),

    (
        (
            sub_string(Input, _, _, _, "artificial intelligence"),
            Spec = artificial_intelligence,
            SpecName = 'Artificial Intelligence'
        )
        ;
        (
            sub_string(Input, _, _, _, "engineering analysis"),
            Spec = engineering_analysis,
            SpecName = 'Engineering Analysis'
        )
        ;
        (
            sub_string(Input, _, _, _, "modelling"),
            Spec = modelling_simulation,
            SpecName = 'Modelling and Simulation'
        )
        ;
        (
            sub_string(Input, _, _, _, "information"),
            Spec = ict,
            SpecName = 'Information and Communication Technology'
        )
        ;
        (
            sub_string(Input, _, _, _, "management"),
            Spec = engineering_systems_management,
            SpecName = 'Engineering Systems Management'
        )
    ),

    findall(
    course(Code, Title),
    course(
        Code,
        Title,
        _,
        Spec
    ),
    Courses
    ),

    format_course_list(
    SpecName,
    Courses,
    Reply
    ),

    !.

% =====================================
% COURSE QUERIES
% =====================================

course_query(Input, Reply) :-

    extract_course_code(
        Input,
        Code
    ),

    course(
        Code,
        Title,
        Units,
        Spec
    ),

format_course(
    Code,
    Title,
    Units,
    Spec,
    Reply
).

course_query(Input, Reply) :-

    (
        sub_string(Input, _, _, _, "describe")
        ;
        sub_string(Input, _, _, _, "tell me about")
        ;
        sub_string(Input, _, _, _, "explain")
    ),

    extract_course_code(
        Input,
        Code
    ),

    course_description(
        Code,
        Description
    ),

    Reply = Description.

course_query(Input, Reply) :-

    (
        sub_string(Input, _, _, _, "which course")
        ;
        sub_string(Input, _, _, _, "what course")
    ),

    topic_keyword(
        Input,
        Topic
    ),

    findall(
    course(Code, Title),
    find_course_by_topic(
        Topic,
        Code,
        Title
    ),
    Results
    ),

format_course_list(
    'Matching Courses',
    Results,
    Reply
),

!.
