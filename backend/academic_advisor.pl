:- consult('knowledge_base.pl').
:- consult('utilities/normalization.pl').
:- consult('utilities/extraction.pl').
:- consult('utilities/mappings.pl').
:- consult('utilities/formatting.pl').
:- consult('utilities/context.pl').
:- consult('queries/programme_query.pl').
:- consult('queries/specialization_query.pl').
:- consult('queries/course_query.pl').
:- consult('queries/lecturer_query.pl').
:- consult('queries/recommendation_query.pl').
:- consult('queries/research_query.pl').
:- consult('queries/help_query.pl').


% =====================================
% MAIN ENTRY POINT
% =====================================

academic_advisor(Input, Reply) :-

    normalize(Input, Normalized),

(
    programme_query(Normalized, Reply)
    ;

    lecturer_query(Normalized, Reply)
    ;

    recommendation_query(Normalized, Reply)
    ;

    course_query(Normalized, Reply)
    ;

    specialization_query(Normalized, Reply)
    ;

    research_query(Normalized, Reply)
    ;

    help_query(Normalized, Reply)
    ;

    default_response(Reply)
).

% =====================================
% DEFAULT RESPONSE
% =====================================

default_response('__NO_MATCH__').