new40(A,B,C,D,A,B,C,D) :- E+ 1=< -1000000, E=A, F= -1000000.
new39(A,B,C,D,E,F,G,H) :- I=< 1000000, I=A, J= 1000000, new40(A,B,C,D,E,F,G,H).
new31(A,B,C,D,A,B,C,D) :- E>= 1000001, E=A, F= 1000000.
new30(A,B,C,C).
new28(A,B,C,D) :- E>= 1, E=C, F= 0, new30(A,B,C,D).
new28(A,B,C,D) :- E+ 1=< 0, E=C, F= 0, new30(A,B,C,D).
new27(A,B,C,D,E,F,G,H) :- I=J, I=B, J=A, K= 1, new26(A,B,C,K,E,F,G,H).
new27(A,B,C,D,E,F,G,H) :- I>=J+ 1, I=B, J=A, K= 0, new26(A,B,C,K,E,F,G,H).
new27(A,B,C,D,E,F,G,H) :- I+ 1=<J, I=B, J=A, K= 0, new26(A,B,C,K,E,F,G,H).
new26(A,B,C,D,A,B,C,D) :- E=D, new28(A,B,E,F).
new25(A,B,C,D,E,F,G,H) :- I+ 1=< 0, I=A, J= 0, K= 1, new26(A,B,C,K,E,F,G,H).
new25(A,B,C,D,E,F,G,H) :- I>= 0, I=A, J= 0, new27(A,B,C,D,E,F,G,H).
new23(A,B,C,D,E,F,G,H) :- I>=J, I=C, J= 2*K, L= 2, K=A, new25(A,B,C,D,E,F,G,H).
new22(A,B,C,D,E,F,G,H) :- new23(A,B,C,D,E,F,G,H).
new21(A,B,C,D,E,F,G,H) :- I>= -1000000, I=A, J= -1000000, K= 0, 
          new22(A,B,K,D,E,F,G,H).
new20(A,B,C,D,E,F,G,H) :- I=< 1000000, I=A, J= 1000000, new21(A,B,C,D,E,F,G,H).
new19(A,B,C,D,E,F,G,H) :- I= 0, new20(A,B,I,D,E,F,G,H).
new18(A,B,C,D,E,F,G,H) :- I= 0, new31(A,B,I,D,E,F,G,H).
new17(A,B,C,D,E,F,G,H) :- I= 0, new39(A,B,I,D,E,F,G,H).
new15(A,B,C,D) :- new17(A,B,E,F,C,D,G,H).
new15(A,B,C,D) :- new18(A,B,E,F,C,D,G,H).
new15(A,B,C,D) :- new19(A,B,E,F,C,D,G,H).
safe :- init(A,B), new15(A,B,C,D).
new14(A,B).
new12(A,B,C,C) :- new14(A,B).
new11(A,B,C,D) :- E= 0, E=C, F= 0, new12(A,B,C,D).
new10(A,B,C,D,E,F,G,H) :- I=J, I=B, J=A, K= 1, new9(A,B,C,K,E,F,G,H).
new10(A,B,C,D,E,F,G,H) :- I>=J+ 1, I=B, J=A, K= 0, new9(A,B,C,K,E,F,G,H).
new10(A,B,C,D,E,F,G,H) :- I+ 1=<J, I=B, J=A, K= 0, new9(A,B,C,K,E,F,G,H).
new9(A,B,C,D,A,B,C,D) :- E=D, new11(A,B,E,F).
new8(A,B,C,D,E,F,G,H) :- I+ 1=< 0, I=A, J= 0, K= 1, new9(A,B,C,K,E,F,G,H).
new8(A,B,C,D,E,F,G,H) :- I>= 0, I=A, J= 0, new10(A,B,C,D,E,F,G,H).
new6(A,B,C,D,E,F,G,H) :- I>=J, I=C, J= 2*K, L= 2, K=A, new8(A,B,C,D,E,F,G,H).
new5(A,B,C,D,E,F,G,H) :- new6(A,B,C,D,E,F,G,H).
new4(A,B,C,D,E,F,G,H) :- I>= -1000000, I=A, J= -1000000, K= 0, 
          new5(A,B,K,D,E,F,G,H).
new3(A,B,C,D,E,F,G,H) :- I=< 1000000, I=A, J= 1000000, new4(A,B,C,D,E,F,G,H).
new2(A,B,C,D,E,F,G,H) :- I= 0, new3(A,B,I,D,E,F,G,H).
new1(A,B,C,D) :- new2(A,B,E,F,C,D,G,H).
init(A,B).
false :- init(A,B), new1(A,B,C,D).
spec :- false.
spec :- safe.
