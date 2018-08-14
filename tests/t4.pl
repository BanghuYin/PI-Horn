%original program
false:- init(I,A,B,N), l(I,A,B,N).
safe:- init(I,A,B,N), l1(I,A,B,N).
l1(I,A,B,N):-
    I < N,
    l_body(A,B,A1,B1),
    I1 = I+1,
    l1(I1,A1,B1,N).
l1(I,A,B,N):-
    I >=N, A + B = 3 * N.
l(I,A,B,N):-
    I < N,
    l_body(A,B,A1,B1),
    I1 = I+1,
    l(I1,A1,B1,N).
l(I,A,B,N):-
    I >=N, A + B > 3 * N.
l(I,A,B,N):-
    I >=N, A + B < 3 * N.        
l_body(A0,B0,A1,B1):- A1 = A0+1, B1 = B0+2.
l_body(A0,B0,A1,B1):- A1 = A0+2, B1 = B0+1.
orig_init(I,A,B,N):- N>0,I=0,A=0,B=0.
init(I,A,B,N).

%precondition generated by trace-elimination (1 iteration): init(A,B,C,D):- D=<A, B+C=3*D.



spec :- false. 
spec :- safe.