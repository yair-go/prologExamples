:-dynamic father/2.
father(haman,parshandata).
father(haman,aridai).
father(haman,arisai).
father(haman,dalphone).
father(haman,vaizata).
retHaman:-retract(father(haman,_)),fail.
retHaman.

grade(hanni,90).
grade(sara,97).
grade(rivka,88).

findGrater(N,_):-grade(X,N1),
		 N1>=N,
		 assert(name(X)),fail.
findGrater(_,L):-collect(L).
collect([]).
collect([X|L]):-retract(name(X)),!,
  collect(L).

runAll([]).
runAll([H|L]):-T=..H,T,runAll(L).

:-dynamic fib2/2.
fib2(1,1).
fib2(2,2).
fib2(N,F):-N>2,
	   N1 is N-1,fib2(N1,F1),
	   N2 is N-2,fib2(N2,F2),
	   F is F1+F2,
	   assert(fib2(N,F)).


mem(L,P):-bagof(X,member(X,L),P).
func1(L,P):-setof(f(X),member(X,L),P).
