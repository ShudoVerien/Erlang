-module(lesson2_task10).
-export([encode/1]).

encode([]) -> [];
encode([H|T]) -> encode(T, H, 1, []).

encode([], Curr, Count, Acc) -> reverse([{Count, Curr} | Acc]);
encode([H|T], Curr, Count, Acc) when H == Curr -> encode(T, Curr, Count + 1, Acc);
encode([H|T], Curr, Count, Acc) -> encode(T, H, 1, [{Count, Curr} | Acc]).

reverse(List) -> reverse(List, []).

reverse([], Acc) -> Acc;
reverse([H|T], Acc) -> reverse(T, [H | Acc]).
