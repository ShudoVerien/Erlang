-module(lesson2_task06).
-export([is_palindrome/1]).

is_palindrome(List) -> List == reverse(List).

reverse(List) -> reverse(List, []).

reverse([], Acc) -> Acc;
reverse([H|T], Acc) -> reverse(T, [H | Acc]).
