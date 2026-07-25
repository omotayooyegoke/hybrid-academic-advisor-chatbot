% =====================================
% COURSE CODE EXTRACTION
% =====================================

extract_course_code(Input, Code) :-

    course(Code, _, _, _),

    atom_string(Code, CodeString),

    sub_string(
        Input,
        _,
        _,
        _,
        CodeString
    ),

    !.