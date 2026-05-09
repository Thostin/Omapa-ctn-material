include "evan_asy.asy";

size(6cm);
pair A = dir(110);
pair B = dir(210);
pair C = dir(330);
pair D = dir(40);

pair aux = A - D + C;

pair M = extension(B, D, C, aux);
aux = B - C + D;
pair N = extension(A, C, D, aux);

pair P = extension(A, C, B, D);

draw(A--B--C--D--cycle);
draw(A--C);
draw(B--D);
draw(C--M);
draw(D--N);
draw(M--N, dashed);

dot("$A$", A, N);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$D$", D, NE);
dot("$M$", M, S);
dot("$N$", N, NE);
dot("$P$", P, (0.36, 1));
