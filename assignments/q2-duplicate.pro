duplicate(DuplicateList, List) :- 
	is_list(List),
	[H|T] = List,
	append([H], [H], DuplicateHead),
	duplicate(DuplicateTail, T),
	append(DuplicateHead, DuplicateTail, DuplicateList).

duplicate(DuplicateList, List) :-
	\+ is_list(List),
	append([List], [List], DuplicateList).

duplicate([], []).