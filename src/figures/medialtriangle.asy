include "evan_asy.asy";

size(6cm);
pair A = dir(110);
pair B = dir(210);
pair C = dir(330);

pair M = midpoint(A--B);
pair N = midpoint(C--B);
pair P = midpoint(A--C);

draw(A--B--C--cycle);
draw(M--N--P--cycle);
dot("$A$", A, NW);
dot("$M$", M, W);
dot("$B$", B, SW);
dot("$N$", N, S);
dot("$C$", C, SE);
dot("$P$", P, E);

markangle(B, A, C, radius=10, red);
markangle(B, M, N, radius=10, red);
markangle(P, N, M, radius=10, red);

markangle(C, B, A, radius=10, blue);
markangle(C, N, P, radius=10, blue);
markangle(M, P, N, radius=10, blue);

markangle(N, M, P, radius=10, green);
markangle(A, P, M, radius=10, green);
markangle(A, C, B, radius=10, green);

