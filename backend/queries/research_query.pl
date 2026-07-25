% =====================================
% RESEARCH QUERIES
% =====================================

research_query(Input, Reply) :-

    (
    sub_string(Input, _, _, _, "research areas")
    ;
    sub_string(Input, _, _, _, "areas of research")
    ;
    sub_string(Input, _, _, _, "available research")
    ;
    sub_string(Input, _, _, _, "available research areas")
    ;
    sub_string(Input, _, _, _, "research topics")
    ;
    sub_string(Input, _, _, _, "research in")
    ;
    sub_string(Input, _, _, _, "supervise")
),

    findall(
    Area,
    research_area(
        Area,
        _
    ),
    Areas
),

format_research_areas(
    Areas,
    Reply
).