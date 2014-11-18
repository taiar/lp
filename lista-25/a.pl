file_to_list(FILE,LIST) :-
   see(FILE),
   inquire([],R), % gather terms from file
   reverse(R,LIST),
   seen.

inquire(IN,OUT):-
   read(Data),
   (Data == end_of_file ->   % done
      OUT = IN
        ;    % more
      inquire([Data|IN],OUT) ) .

append([], L, L).
append([Head|TailA], B, [Head|TailC]) :- append(TailA, B, TailC).

last([], _).
last([_|Ta], Ta).

member(X, [X|_]).
member(X, [_|Y])
  :- member(X, Y).

reverse([], []).
reverse([H|T], X) :- reverse(T, Xaux), append(Xaux, [H], X).