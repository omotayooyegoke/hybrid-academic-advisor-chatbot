% =====================================
% LECTURER QUERIES
% =====================================

lecturer_query(Input, Reply) :-

    (
    sub_string(Input, _, _, _, "who teaches")
    ;
    sub_string(Input, _, _, _, "who specializes in")
    ;
    sub_string(Input, _, _, _, "who works in")
    ;
    sub_string(Input, _, _, _, "which lecturer")
    ),

    lecturer_interest(
        Input,
        Interest
    ),

    findall(
        Lecturer,
        find_lecturer_by_interest(
            Interest,
            Lecturer
        ),
        Lecturers
    ),

    (
        Lecturers = []
        ->
        Reply = 'No lecturer found for that area.'

        ;

        format_lecturers(
    Lecturers,
    Reply
        )
).
