% =====================================
% REASONING RULES
% =====================================

% -------------------------------------
% Find courses by topic
% -------------------------------------

find_course_by_topic(Topic, Code, Title) :-
    teaches(Code, Topic),
    course(Code, Title, _, _).

% -------------------------------------
% Find courses by specialization
% -------------------------------------

find_course_by_specialization(Spec, Code, Title) :-
    course(Code, Title, _, Spec).

% -------------------------------------
% Find course units
% -------------------------------------

find_course_units(Code, Units) :-
    course(Code, _, Units, _).

% -------------------------------------
% Find course description
% -------------------------------------

find_course_description(Code, Description) :-
    course_description(Code, Description).

% -------------------------------------
% Find specialization name
% -------------------------------------

find_specialization(Code, Name) :-
    specialization(Code, Name).

% -------------------------------------
% Find courses in specialization
% -------------------------------------

specialization_courses(
    Spec,
    CourseCode,
    CourseTitle
) :-
    course(
        CourseCode,
        CourseTitle,
        _,
        Spec
    ).

% =====================================
% SPECIALIZATION RECOMMENDATIONS
% =====================================

recommend_specialization(
    robotics,
    artificial_intelligence
).

recommend_specialization(
    machine_learning,
    artificial_intelligence
).

recommend_specialization(
    neural_networks,
    artificial_intelligence
).

recommend_specialization(
    expert_systems,
    artificial_intelligence
).

recommend_specialization(
    simulation,
    modelling_simulation
).

recommend_specialization(
    optimization,
    modelling_simulation
).

recommend_specialization(
    communication_networks,
    ict
).

recommend_specialization(
    networking,
    ict
).

recommend_specialization(
    databases,
    ict
).

recommend_specialization(
    reliability,
    engineering_systems_management
).

recommend_specialization(
    safety_engineering,
    engineering_systems_management
).

recommend_specialization(
    crisis_management,
    engineering_systems_management
).

recommend_specialization(
    continuum_mechanics,
    engineering_analysis
).

recommend_specialization(
    elasticity,
    engineering_analysis
).

recommend_specialization(
    electromagnetics,
    engineering_analysis
).

% -------------------------------------
% Recommended Courses
% -------------------------------------

recommended_courses(
    SpecCode,
    Courses
) :-

    findall(
        CourseLine,
        (
            course(
                Code,
                Title,
                _,
                SpecCode
            ),

            format(
                atom(CourseLine),
                '~w - ~w',
                [
                    Code,
                    Title
                ]
            )
        ),
        Courses
    ).

% =====================================
% LECTURER REASONING
% =====================================

find_lecturer_by_interest(
    Interest,
    Lecturer
) :-
    lecturer(
        Lecturer,
        Interests
    ),
    member(
        Interest,
        Interests
    ).

find_lecturer_interests(
    Lecturer,
    Interests
) :-
    lecturer(
        Lecturer,
        Interests
    ).

% -------------------------------------
% Recommended Supervisors
% -------------------------------------

recommended_supervisors(
    SpecCode,
    Supervisors
) :-

    findall(
        Lecturer,

        (
            research_area(
                Area,
                SpecCode
            ),

            lecturer(
                Lecturer,
                Interests
            ),

            member(
                Area,
                Interests
            )
        ),

        LecturerList
    ),

    sort(
        LecturerList,
        Supervisors
    ).

    % =====================================
% RESEARCH RECOMMENDATIONS
% =====================================

recommend_research_specialization(
    ResearchArea,
    Specialization
) :-
    research_area(
        ResearchArea,
        Specialization
    ).

recommend_supervisor(
    ResearchArea,
    Lecturer
) :-
    lecturer(
        Lecturer,
        Interests
    ),
    member(
        ResearchArea,
        Interests
    ).