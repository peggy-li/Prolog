flattenList(FlattenedList, List) :-
	is_list(List), [H|T] = List,
	flattenList(FlattenedHead, H),
	flattenList(FlattenedTail, T),
	append(FlattenedHead, FlattenedTail, FlattenedList).

flattenList(FlattenedList, List) :-
	\+ is_list(List),
	FlattenedList = [List].

flattenList([], []).