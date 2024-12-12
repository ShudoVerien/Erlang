-module(lesson2_task13).
-export([decode/1]).

decode([]) -> [];
decode([{N, X} | T]) -> append(duplicate(N, X), decode(T)).

duplicate(0, _) -> [];
duplicate(N, X) -> [X | duplicate(N - 1, X)].

append([], List) -> List;
append([H|T], List) -> [H | append(T, List)].
