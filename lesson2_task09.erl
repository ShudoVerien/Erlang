-module(lesson2_task09).
-export([pack/1]).

pack([]) -> [];
pack([H|T]) -> pack(T, H, []).

pack([], Curr, Acc) -> [[Curr | Acc]];
pack([H|T], Curr, Acc) when H == Curr -> pack(T, Curr, [H | Acc]);
pack([H|T], Curr, Acc) -> [[Curr | Acc] | pack(T, H, [])].
