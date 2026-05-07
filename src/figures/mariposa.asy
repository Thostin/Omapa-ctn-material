include "figures/evan_asy.asy";

size(8cm);
pair B = dir(20);
pair A = dir(160);
pair C = midpoint(A--B);
pair O = (0, 0);
pair L = dir(60);
pair N = dir(130);

real pow = length(A - C) * length(A - C);
pair K = C + -pow / length(C - L) / length(C - L) * (L - C);
pair M = C + -pow / length(C - N) / length(C - N) * (N - C);

pair X = midpoint(N--K);
pair Y = midpoint(M--L);

pair Q = extension(N, K, A, B);
pair P = extension(M, L, A, B);

draw(unitcircle);
draw(L--M--N--K--L);
draw(A--B);
draw(O--X);
draw(O--C);
draw(O--Y);
draw(C--X);
draw(C--Y);
draw(O--P, dashed);
draw(O--Q, dashed);

dot("$K$", K, SW);
dot("$N$", N, NW);
dot("$L$", L, NE);
dot("$M$", M, SE);

dot("$O$", O, S);
dot("$Q$", Q, NW);
dot("$P$", P, NE);
dot("$X$", X, W);
dot("$Y$", Y, E);
dot("$C$", C, (0, 1));

dot("$A$", A, W);
dot("$B$", B, E);
