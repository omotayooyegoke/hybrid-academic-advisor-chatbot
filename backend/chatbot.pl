% =========================================================
% SSG 816 Customer Support Chatbot (Session-based)
% =========================================================

:- dynamic(reg_state/2).  % reg_state(SessionId, State)
:- discontiguous chatbot/3.

% Main entry point - now takes SessionId
chatbot(SessionId, Input, FinalReply) :-
    normalize(Input, Normalized),

    (   handle_issue(SessionId, Normalized, Reply)
    ->  true
    ;   respond(Normalized, Reply)
    ->  true
    ;   intent(Normalized, reset)
    ->  handle_issue(SessionId, "restart", Reply)
    ;   intent(Normalized, why(Topic))
    ->  handle_why(Topic, Reply)
    ;   intent(Normalized, Intent),
        reply(Intent, Reply)
    ->  true
    ;   default_response(Reply)
    ),

    !,
    (   is_list(Reply)
    ->  atomic_list_concat(Reply, '\n', FinalReply)
    ;   FinalReply = Reply
    ).

% Backward compatibility - if called with 2 args, use default session
chatbot(Input, Reply) :-
    chatbot("default", Input, Reply).

% ----------------------------
% Registration flow with SessionId
% ----------------------------
handle_issue(SessionId, "cant register", "<i>Step 1: Did you take SSG 821? (yes/no)</i>") :-
    retractall(reg_state(SessionId, _)),
    assertz(reg_state(SessionId, step1)), !.

handle_issue(SessionId, "cannot register", R) :- 
    handle_issue(SessionId, "cant register", R), !.
handle_issue(SessionId, "can't register", R) :- 
    handle_issue(SessionId, "cant register", R), !.
handle_issue(SessionId, "registration problem", R) :- 
    handle_issue(SessionId, "cant register", R), !.
handle_issue(SessionId, "can i register", R) :- 
    handle_issue(SessionId, "cant register", R), !.
handle_issue(SessionId, "can i take the course", R) :- 
    handle_issue(SessionId, "cant register", R), !.

handle_issue(SessionId, "yes", Response) :-
    reg_state(SessionId, step1), !,
    retractall(reg_state(SessionId, _)),
    Response = "<i>Great! You're eligible to register / take SSG 816.</i>".

handle_issue(SessionId, "no", "<i>Step 2: Did you take SSG 815? (yes/no)</i>") :-
    reg_state(SessionId, step1), !,
    retractall(reg_state(SessionId, _)),
    assertz(reg_state(SessionId, step2)).

handle_issue(SessionId, "yes", Response) :-
    reg_state(SessionId, step2), !,
    retractall(reg_state(SessionId, _)),
    Response = "<i>You may still qualify if you pass the waiver exam.</i>".

handle_issue(SessionId, "no", Response) :-
    reg_state(SessionId, step2), !,
    retractall(reg_state(SessionId, _)),
    Response = "<i>Sorry, you're not eligible to register / take SSG 816.</i>".

% Reset flow
handle_issue(SessionId, "restart", "<i>Conversation reset. How can I help you about SSG 816?</i>") :-
    retractall(reg_state(SessionId, _)), !.
handle_issue(SessionId, "reset", R) :- 
    handle_issue(SessionId, "restart", R), !.
handle_issue(SessionId, "start over", R) :- 
    handle_issue(SessionId, "restart", R), !.
handle_issue(SessionId, "clear", R) :- 
    handle_issue(SessionId, "restart", R), !.

% ----------------------------
% All other predicates (unchanged)
% ----------------------------
normalize(Input, Normalized) :-
    string_lower(Input, Lower),
    split_string(Lower, "?!.,", " ", Parts),
    atomic_list_concat(Parts, " ", Temp),
    normalize_space(string(Normalized), Temp).

intent(Input, overview) :-
    contains_any(Input, ["overview", "what is ssg816", "course description"]).

intent(Input, eligibility) :-
    contains_any(Input, ["eligibility", "who can take", "prerequisite"]).

intent(Input, lecturer) :-
    contains_any(Input, ["lecturer", "who teaches", "instructor", "professor"]).

intent(Input, units) :-
    contains_any(Input, ["unit", "credit", "weight"]).

intent(Input, project) :-
    contains_any(Input, ["project", "assignment", "term paper"]).

intent(Input, register) :-
    contains_any(Input, ["can't register", "cannot register", "cant register", "registration problem", "can i register"]).

intent(Input, reset) :-
    contains_any(Input, ["restart", "reset", "start over", "clear"]).

intent(Input, why(Topic)) :-
    sub_string(Input, _, _, _, "why"),
    ( sub_string(Input, _, _, _, "eligibility")
    -> Topic = "eligibility"
    ;  Topic = "general"
    ).

intent(Input, greeting) :-
    contains_any(Input, [
        "hi", "hey", "hello", "good morning",
        "good afternoon", "good evening", "what's up"
    ]).

intent(Input, farewell) :-
    contains_any(Input, ["bye", "goodbye", "see you", "later"]).

intent(Input, gratitude) :-
    contains_any(Input, ["thanks", "thank you", "thx", "much appreciated"]).

intent(Input, help) :-
    contains_any(Input, ["help", "options", "menu", "what can i ask"]).

reply(overview,
  "<i>SSG 816 is a Systems Engineering course that introduces advanced topics in Expert Systems and prepares students for research.</i>").

reply(eligibility,
  "<i>Eligibility: You normally need to have completed SSG 821 or SSG 815 plus a waiver exam to be eligible to take SSG 816.</i>").

reply(lecturer,
  "<i>The lecturer for SSG 816 is Dr. J.A. Ogbemhe.</i>").

reply(units,
  "<i>SSG 816 carries 3 credit units.</i>").

reply(project,
  "<i>The course includes a term project where you apply Systems Engineering methods to a real-world problem.</i>").

reply(greeting, "<i>Hello! How can I help you with SSG 816 today?</i>").
reply(farewell, "<i>Goodbye! Wishing you success in SSG 816.</i>").
reply(gratitude, "<i>You're welcome! Happy to help.</i>").

respond("help", [
    "<strong><i>Here are some things you can ask me about SSG 816:</i></strong>",
    "<ul>",
    "<li><i>overview - Get a course overview</i></li>",
    "<li><i>eligibility - Check if you can register</i></li>",
    "<li><i>lecturer - Who teaches the course</i></li>",
    "<li><i>units - How many units is the course</i></li>",
    "<li><i>project - Information about the project</i></li>",
    "</ul>",
    "<i>You can also check to see if you are eligible to take the course by answering some questions (Type 'cant register' to begin!)</i>"
]).


handle_why("eligibility",
  "<i>Because SSG 816 requires either SSG 821 or SSG 815 plus a waiver exam.</i>") :- !.
handle_why("general",
  "<i>I provide explanations only for eligibility right now.</i>") :- !.
handle_why(_, "<i>I don't have an explanation for that.</i>").

default_response(
  "<i>Sorry, I didn't quite understand that. You can ask me about SSG 816 (overview, eligibility, lecturer, units, project), or describe your registration problem.</i>"
).

contains_any(Input, List) :-
    member(H, List),
    sub_string(Input, _, _, _, H).