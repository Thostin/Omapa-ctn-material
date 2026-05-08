include "figures/evan_asy.asy";

pair A = dir(90);
pair B = dir(210);
pair C = dir(330);

pair P = (0.3, -0.4);

pair X = foot(P, B, C);
pair Y = foot(P, A, C);
pair Z = foot(P, A, B);

draw(A--B--C--cycle);
draw(P--X);
draw(P--Y);
draw(P--Z);

dot("$X$", X, S);
dot("$Y$", Y, NE);
dot("$Z$", Z, NW);

dot("$P$", P, N);

dot("$A$", A, N);
dot("$B$", B, SW);
dot("$C$", C, SE);

label("$\ell$", A--C, NE);
label("$\ell$", A--B, NW);
label("$\ell$", B--C, S);
