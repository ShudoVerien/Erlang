-module(lesson2_task15).
-export([replicate/2]).

replicate([], _) -> [];
replicate([H|T], N) -> append(duplicate(N, H), replicate(T, N)).

duplicate(0, _) -> [];
duplicate(N, X) -> [X | duplicate(N - 1, X)].

append([], List) -> List;
append([H|T], List) -> [H | append(T, List)].
