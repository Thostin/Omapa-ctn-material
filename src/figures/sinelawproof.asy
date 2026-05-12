include "evan_asy.asy";

pair A = dir(110);
pair B = dir(210);
pair C = dir(330);

pair Ap = -A;

draw(A--B--C--cycle);
draw(A--Ap, dashed);
draw(C--Ap);

draw(unitcircle);

dot("$A$", A, N);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$A^\prime$", Ap, S);

dot((0, 0));

markangle(C, B, A, radius=10);
markangle(C, Ap, A, radius=10);
markrightangle(A, C, Ap, size=10);
