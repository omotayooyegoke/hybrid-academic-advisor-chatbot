% =====================================
% HELP QUERIES
% =====================================

help_query(Input, Reply) :-

(
    Input = "help"
    ;
    Input = "menu"
    ;
    Input = "commands"
    ;
    Input = "features"
    ;
    Input = "options"
    ;
    Input = "capabilities"
    ;
    Input = "assist"
    ;
    sub_string(Input, 0, _, _, "what can you do")
    ;
    sub_string(Input, 0, _, _, "what can i do")
    ;
    sub_string(Input, 0, _, _, "how do i use")
),

    format_help(Reply).