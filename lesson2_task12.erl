-module(lesson2_task12).
-export([decode_modified/1]).

decode_modified([]) -> [];
decode_modified([{N, X} | T]) -> append(duplicate(N, X), decode_modified(T));
decode_modified([X | T]) -> [X | decode_modified(T)].

duplicate(0, _) -> [];
duplicate(N, X) -> [X | duplicate(N - 1, X)].

append([], List) -> List;
append([H|T], List) -> [H | append(T, List)].
