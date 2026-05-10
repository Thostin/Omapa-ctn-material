include "evan_asy.asy";

size(9cm);

pair A = dir(110);
pair B = dir(210);
pair C = dir(330);

pair P = orthocenter(A, B, C);
pair Ap = foot(A, B, C);
pair Pp = P + 2 * (foot(P, A, C) - P);

draw(A--B--C--cycle);
draw(A--P--B);
draw(C--P);
draw(P--Ap, dashed);
draw(P--Pp, dashed);

draw(circumcircle(A, P, B));
draw(circumcircle(A, P, C));
draw(circumcircle(B, P, C));

draw(unitcircle, dashed);

markrightangle(C, Ap, A, size=5);

dot("$A$", A, (0, 2));
dot("$B$", B, 0.7 * (-2, -2));
dot("$C$", C, 1.3 * (SE + (0, 0.4)));
dot("$A^\prime$", Ap, S);
dot("$P$", P, 0.7 * (-2, 0.7));
dot("$P^\prime$", Pp, NE);
