a(X):-b(X),c(Y),d(X,Y),e(Y).
 % a(X):-e(X).
b(1).
b(2).
b(3).
c(2).
c(3).
c(4).
d(1,4).
d(2,3).
e(3).

%count([H|T],RES):-count(T,RES1),RES is RES1+1.
%count([],0).

count(List,RES):-count(List,0,RES).
count([],RES,RES).
count([_|T],ACC,RES):-ACC1 is ACC+1,
    count(T,ACC1,RES).

%reverse([],[]).
%reverse([H|T],Rev):-reverse(T,R),
  %  append(R,[H],Rev).

reverse(List,Rev):-reverse(List,[],Rev).
reverse([],Rev,Rev).
reverse([H|T],ACC,Rev):-
    reverse(T,[H|ACC],Rev).


