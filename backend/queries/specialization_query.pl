% =====================================
% SPECIALIZATION QUERIES
% =====================================

% List all specializations
specialization_query(Input, Reply) :-

    (
        sub_string(Input, _, _, _, "specialization")
        ;
        sub_string(Input, _, _, _, "specialisations")
        ;
        sub_string(Input, _, _, _, "specializations")
    ),

    findall(
        Name,
        specialization(_, Name),
        Specs
    ),

    format_specializations(
    Specs,
    Reply
).

% Engineering Analysis description
specialization_query(Input, Reply) :-

    (
        sub_string(Input, _, _, _, "tell me about engineering analysis")
        ;
        sub_string(Input, _, _, _, "describe engineering analysis")
        ;
        sub_string(Input, _, _, _, "explain engineering analysis")
    ),

    specialization_description(engineering_analysis, Reply),
    !.

% Modelling and Simulation description
specialization_query(Input, Reply) :-

    (
        sub_string(Input, _, _, _, "tell me about modelling")
        ;
        sub_string(Input, _, _, _, "describe modelling")
        ;
        sub_string(Input, _, _, _, "explain modelling")
    ),

    specialization_description(modelling_simulation, Reply),
    !.

% Artificial Intelligence description
specialization_query(Input, Reply) :-
    
    (
        sub_string(Input, _, _, _, "tell me about artificial intelligence")
        ;
        sub_string(Input, _, _, _, "describe artificial intelligence")
        ;
        sub_string(Input, _, _, _, "explain artificial intelligence")
        ;
        sub_string(Input, _, _, _, "tell me about ai")
        ;
        sub_string(Input, _, _, _, "describe ai")
        ;
        sub_string(Input, _, _, _, "explain ai")
    ),

    specialization_description(artificial_intelligence, Reply),
    !.

% ICT description
specialization_query(Input, Reply) :-

    (
        sub_string(Input, _, _, _, "tell me about information and communication technology")
        ;
        sub_string(Input, _, _, _, "describe information and communication technology")
        ;
        sub_string(Input, _, _, _, "explain information and communication technology")
        ;
        sub_string(Input, _, _, _, "tell me about ict")
        ;
        sub_string(Input, _, _, _, "describe ict")
        ;
        sub_string(Input, _, _, _, "explain ict")
    ),

    specialization_description(ict, Reply),
    !.

% ESM description
specialization_query(Input, Reply) :-

    (
        sub_string(Input, _, _, _, "tell me about engineering systems management")
        ;
        sub_string(Input, _, _, _, "describe engineering systems management")
        ;
        sub_string(Input, _, _, _, "explain engineering systems management")
    ),

    specialization_description(engineering_systems_management, Reply),
    !.
