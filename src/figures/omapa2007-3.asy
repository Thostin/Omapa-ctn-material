include "evan_asy.asy";

size(6cm);

pair A = (-1, 1);
pair B = (-1, -1);
pair C = (1, -1);
pair D = (1, 1);

pair E = (A + B)/2;
pair F = (A + D)/2;

pair P = extension(B, F, C, E);

draw(A--B--C--D--cycle);
draw(E--C, blue);
draw(B--F, blue);
draw(C--F, blue);

markrightangle(C, P, F, size=8);

dot("$A$", A, NW);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$D$", D, NE);

dot("$E$", E, W);
dot("$F$", F, N);
dot("$P$", P, (0.2, -1.2));

label("$\ell$", C--D, (1, 0));
