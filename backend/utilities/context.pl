% =====================================
% CONVERSATION CONTEXT
% =====================================

:- dynamic current_specialization/1.

remember_specialization(
    Spec
) :-

    retractall(
        current_specialization(_)
    ),

    assertz(
        current_specialization(
            Spec
        )
    ).

last_specialization(
    Spec
) :-

    current_specialization(
        Spec
    ).

clear_context :-

    retractall(
        current_specialization(_)
    ).