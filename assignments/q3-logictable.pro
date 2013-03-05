and(A, B) :- A, B.

or(A, B) :- A, B; \+A, B; A, \+B.

equ(A, B) :- A, B; \+A, \+B.

nand(A, B) :- \+A; \+B.

nor(A, B) :- \+A, \+B.

xor(A, B) :- A, \+B; \+A, B.

bind(true).
bind(false).

table(A, B, Exp) :- bind(A), bind(B), Exp.