my_reverse([],[]).
my_reverse([H|T],R):-my_reverse(T,L),append(L,[H],R).
