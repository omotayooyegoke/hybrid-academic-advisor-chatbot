% =====================================
% FORMATTING UTILITIES
% =====================================

% -------------------------------------
% Bullet List
% -------------------------------------

bullet_lines([], []).

bullet_lines([H|T], [Line|Rest]) :-
    format(atom(Line), '- ~w', [H]),
    bullet_lines(T, Rest).

% -------------------------------------
% Convert List to Bullet Text
% -------------------------------------

bullet_text(
    Items,
    Text
) :-

    bullet_lines(
        Items,
        BulletItems
    ),

    atomic_list_concat(
        BulletItems,
        '\n',
        Text
    ).

% -------------------------------------
% Programme Information
% -------------------------------------

format_programme(
    Name,
    Duration,
    MinUnits,
    ProjectUnits,
    Specs,
    Reply
) :-

    bullet_lines(Specs, BulletSpecs),

    atomic_list_concat(
        BulletSpecs,
        '\n',
        SpecText
    ),

    format(
        atom(Reply),

'
~w

Duration
- ~w

Minimum Course Units
- ~w

Project Units
- ~w

Available Specializations

~w
',

        [
            Name,
            Duration,
            MinUnits,
            ProjectUnits,
            SpecText
        ]
    ).

% -------------------------------------
% Course Information
% -------------------------------------

format_course(
    Code,
    Title,
    Units,
    Spec,
    Reply
) :-

    format(
        atom(Reply),

'
Course Information

Code
~w

Title
~w

Units
~w

Specialization
~w
',

        [
            Code,
            Title,
            Units,
            Spec
        ]
    ).

% -------------------------------------
% Course List
% -------------------------------------

format_course_list(
    Heading,
    Courses,
    Reply
) :-

    findall(
        Line,
        (
            member(
                course(Code, Title),
                Courses
            ),

            format(
                atom(Line),
                '~w - ~w',
                [
                    Code,
                    Title
                ]
            )
        ),
        Lines
    ),

    bullet_text(
        Lines,
        CourseText
    ),

    format(
        atom(Reply),

'
~w

~w
',

        [
            Heading,
            CourseText
        ]
    ).

% -------------------------------------
% Simple Heading
% -------------------------------------

format_heading(
    Heading,
    Body,
    Reply
) :-

    format(
        atom(Reply),

'
~w

~w
',

        [
            Heading,
            Body
        ]
    ).

% -------------------------------------
% Requirements
% -------------------------------------

format_requirements(
    Heading,
    Items,
    Reply
) :-

    bullet_text(
        Items,
        ItemText
    ),

    format(
        atom(Reply),

'
~w

~w
',

        [
            Heading,
            ItemText
        ]
    ).

% -------------------------------------
% Lecturer List
% -------------------------------------

format_lecturers(
    Lecturers,
    Reply
) :-

    bullet_lines(
        Lecturers,
        BulletLecturers
    ),

    atomic_list_concat(
        BulletLecturers,
        '\n',
        LecturerText
    ),

    format(
        atom(Reply),

'Recommended Lecturers

~w',

        [LecturerText]
    ).

% -------------------------------------
% Research Areas
% -------------------------------------

format_research_areas(
    Areas,
    Reply
) :-

    bullet_lines(
        Areas,
        BulletAreas
    ),

    atomic_list_concat(
        BulletAreas,
        '\n',
        AreaText
    ),

    format(
        atom(Reply),

'Available Research Areas

~w',

        [AreaText]
    ).

% -------------------------------------
% Specialization List
% -------------------------------------

format_specializations(
    Specs,
    Reply
) :-

    bullet_lines(
        Specs,
        BulletSpecs
    ),

    atomic_list_concat(
        BulletSpecs,
        '\n',
        SpecText
    ),

    format(
        atom(Reply),

'Available Specializations

~w',

        [SpecText]
    ).

% -------------------------------------
% Recommendation
% -------------------------------------

format_recommendation(
    Spec,
    Reply
) :-

    format(
        atom(Reply),

'Recommended Specialization

~w',

        [Spec]
    ).

% -------------------------------------
% Recommendation Report
% -------------------------------------

format_recommendation_report(
    SpecName,
    Courses,
    Supervisors,
    Reply
) :-

    bullet_text(
        Courses,
        CourseText
    ),

    bullet_text(
        Supervisors,
        SupervisorText
    ),

    format(
        atom(Reply),

'
Recommendation

Recommended Specialization

~w

Relevant Courses

~w

Potential Supervisors

~w
',

        [
            SpecName,
            CourseText,
            SupervisorText
        ]
    ).

% -------------------------------------
% Help
% -------------------------------------

format_help(
    Reply
) :-

Reply =

'Hello! I can help you with questions about the MSc Systems Engineering programme.

Here are some examples:

Programme
- What are the admission requirements?
- How long is the programme?
- What are the graduation requirements?

Specializations
- What specializations are available?
- Tell me about Artificial Intelligence.
- Describe Engineering Analysis.

Courses
- Tell me about SSG816.
- What courses are in Artificial Intelligence?
- Which course teaches Robotics?

Lecturers
- Who specializes in Artificial Intelligence?
- Which lecturer works in Optimization?

Research
- What research areas are available?
- Who can supervise Machine Learning?

Recommendations
- I am interested in Robotics.
- I like Communication Networks.

You can also ask your own questions in natural language.'.