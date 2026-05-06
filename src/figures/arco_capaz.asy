include "figures/evan_asy.asy";

size(6cm);
pair A = dir(80);
pair B = dir(230);
pair C = dir(310);
pair D = dir(180);

pair O = (0,  0);

draw(B--A--C);
draw(B--O--C);
draw(B--D--C);

draw(unitcircle);

dot("$A$", A, N);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$D$", D, NW);

dot("$O$", O, N);

markangle(B, A, C, radius=10);
markangle(B, D, C, radius=10);

