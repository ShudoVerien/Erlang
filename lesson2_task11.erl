-module(lesson2_task11).
-export([encode_modified/1]).

encode_modified(List) ->
    encode_modified(lesson2_task10:encode(List), []).

encode_modified([], Acc) -> reverse(Acc);
encode_modified([{1, X} | T], Acc) -> encode_modified(T, [X | Acc]);
encode_modified([{N, X} | T], Acc) -> encode_modified(T, [{N, X} | Acc]).

reverse(List) -> reverse(List, []).

reverse([], Acc) -> Acc;
reverse([H|T], Acc) -> reverse(T, [H | Acc]).
