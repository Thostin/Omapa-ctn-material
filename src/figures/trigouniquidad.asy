include "evan_asy.asy";

pair Ap = (5, 4);
pair Bp = (6, 0);


pair A = 0.7 * Ap;
pair B = foot(A, (0, 0), (1, 0));


draw(Ap--(0, 0)--Bp);
draw(A--B, dashed);
dot("$A$", A, NW);
dot("$B$", B, S);
dot("$C$", (0, 0), SW);
