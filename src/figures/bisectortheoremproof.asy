include "evan_asy.asy";

size(6cm);

pair A = dir(110);
pair B = dir(210);
pair C = dir(330);

real lb = length(A - C);
real lc = length(A - B);

pair D = B +  (lc / (lc + lb)) * (C - B);

draw(A--B--C--cycle);
draw(A--D);

dot("$A$", A, N);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$D$", D, S);

markangle(B, A, D, radius=10);
markangle(D, A, C, radius=13);
