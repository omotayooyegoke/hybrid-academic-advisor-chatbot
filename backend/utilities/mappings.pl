% =====================================
% TOPIC MAPPING
% =====================================

topic_keyword(Input, robotics) :-
    sub_string(Input, _, _, _, "robotics").

topic_keyword(Input, neural_networks) :-
    sub_string(Input, _, _, _, "neural").

topic_keyword(Input, prolog) :-
    sub_string(Input, _, _, _, "prolog").

topic_keyword(Input, artificial_intelligence) :-
    sub_string(Input, _, _, _, "artificial intelligence").

topic_keyword(Input, simulation) :-
    sub_string(Input, _, _, _, "simulation").

topic_keyword(Input, optimization) :-
    sub_string(Input, _, _, _, "optimization").

topic_keyword(Input, databases) :-
    sub_string(Input, _, _, _, "database").

topic_keyword(Input, networking) :-
    sub_string(Input, _, _, _, "network").

% =====================================
% LECTURER INTEREST MAPPING
% =====================================

% Artificial Intelligence and related aliases
lecturer_interest(Input, artificial_intelligence) :-
    sub_string(Input, _, _, _, "artificial intelligence").

lecturer_interest(Input, artificial_intelligence) :-
    sub_string(Input, _, _, _, "ai").

lecturer_interest(Input, artificial_intelligence) :-
    sub_string(Input, _, _, _, "expert systems").

lecturer_interest(Input, artificial_intelligence) :-
    sub_string(Input, _, _, _, "expert system").

lecturer_interest(Input, artificial_intelligence) :-
    sub_string(Input, _, _, _, "machine learning").

lecturer_interest(Input, artificial_intelligence) :-
    sub_string(Input, _, _, _, "ml").

lecturer_interest(Input, robotics) :-
    sub_string(Input, _, _, _, "robotics").

lecturer_interest(Input, simulation) :-
    sub_string(Input, _, _, _, "simulation").

lecturer_interest(Input, optimization) :-
    sub_string(Input, _, _, _, "optimization").

lecturer_interest(Input, software_engineering) :-
    sub_string(Input, _, _, _, "software").

lecturer_interest(Input, natural_language_processing) :-
    sub_string(Input, _, _, _, "natural language").

lecturer_interest(Input, telecommunications) :-
    sub_string(Input, _, _, _, "telecommunication").

lecturer_interest(Input, intelligent_control) :-
    sub_string(Input, _, _, _, "control").

% =====================================
% RECOMMENDATION MAPPING
% =====================================

recommendation_interest(Input, robotics) :-
    sub_string(Input, _, _, _, "robotics").

recommendation_interest(Input, machine_learning) :-
    sub_string(Input, _, _, _, "machine learning").

recommendation_interest(Input, neural_networks) :-
    sub_string(Input, _, _, _, "neural").

recommendation_interest(Input, simulation) :-
    sub_string(Input, _, _, _, "simulation").

recommendation_interest(Input, optimization) :-
    sub_string(Input, _, _, _, "optimization").

recommendation_interest(Input, communication_networks) :-
    sub_string(Input, _, _, _, "communication network").

recommendation_interest(Input, networking) :-
    sub_string(Input, _, _, _, "network").

recommendation_interest(Input, telecommunications) :-
    sub_string(Input, _, _, _, "telecommunication").

recommendation_interest(Input, databases) :-
    sub_string(Input, _, _, _, "database").

recommendation_interest(Input, reliability) :-
    sub_string(Input, _, _, _, "reliability").

recommendation_interest(Input, safety_engineering) :-
    sub_string(Input, _, _, _, "safety").

recommendation_interest(Input, crisis_management) :-
    sub_string(Input, _, _, _, "crisis").

recommendation_interest(Input, electromagnetics) :-
    sub_string(Input, _, _, _, "electromagnetic").
