-module(lesson2_task07).
-export([flatten/1]).

flatten(List) -> flatten(List, []).

flatten([], Acc) -> reverse(Acc);
flatten([H|T], Acc) when is_list(H) -> flatten(T, flatten(H, Acc));
flatten([H|T], Acc) -> flatten(T, [H | Acc]).

reverse(List) -> reverse(List, []).

reverse([], Acc) -> Acc;
reverse([H|T], Acc) -> reverse(T, [H | Acc]).
