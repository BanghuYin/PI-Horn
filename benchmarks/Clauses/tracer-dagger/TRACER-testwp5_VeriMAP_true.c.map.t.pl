new12(A,B,B) :- C>= 1, C=B, D= 0.
new12(A,B,B) :- C+ 1=< 0, C=B, D= 0.
new11(A,B,A,B) :- C= 1, D=< 50, D=A, E= 50, new12(A,C,F).
new11(A,B,A,B) :- C= 0, D>= 51, D=A, E= 50, new12(A,C,F).
new10(A,B,C,D) :- E=F+ 1, F=A, G= 1, H=I+ 2, I=E, J= 2, K=L+ 3, L=H, M= 3, 
          new11(K,B,C,D).
new9(A,B,C,D) :- E>= 1, E=B, F= 0, G=H+ 1, H=A, I= 1, new10(G,B,C,D).
new9(A,B,C,D) :- E=< 0, E=B, F= 0, G=H+ 2, H=A, I= 2, new10(G,B,C,D).
new7(A,B) :- new9(A,C,B,D).
safe :- init(A), new7(A,B).
new6(A,B,B).
new5(A,B,C) :- D= 0, D=B, E= 0, new6(A,B,C).
new4(A,B,A,B) :- C= 1, D=< 50, D=A, E= 50, new5(A,C,F).
new4(A,B,A,B) :- C= 0, D>= 51, D=A, E= 50, new5(A,C,F).
new3(A,B,C,D) :- E=F+ 1, F=A, G= 1, H=I+ 2, I=E, J= 2, K=L+ 3, L=H, M= 3, 
          new4(K,B,C,D).
new2(A,B,C,D) :- E>= 1, E=B, F= 0, G=H+ 1, H=A, I= 1, new3(G,B,C,D).
new2(A,B,C,D) :- E=< 0, E=B, F= 0, G=H+ 2, H=A, I= 2, new3(G,B,C,D).
new1(A,B) :- new2(A,C,B,D).
init(A).
false :- init(A), new1(A,B).
spec :- false.
spec :- safe.
