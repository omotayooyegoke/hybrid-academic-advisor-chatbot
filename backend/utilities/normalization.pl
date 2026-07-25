% =====================================
% NORMALIZATION
% =====================================

normalize(Input, Normalized) :-
    string_lower(Input, Lower),
    normalize_space(string(Normalized), Lower).