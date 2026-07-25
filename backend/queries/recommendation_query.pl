% =====================================
% RECOMMENDATION QUERIES
% =====================================

recommendation_query(Input, Reply) :-

    recommendation_interest(
        Input,
        Interest
    ),

    recommend_specialization(
        Interest,
        SpecCode
    ),

    specialization(
    SpecCode,
    SpecName
),

recommended_courses(
    SpecCode,
    Courses
),

recommended_supervisors(
    SpecCode,
    Supervisors
),

format_recommendation_report(
    SpecName,
    Courses,
    Supervisors,
    Reply
).
