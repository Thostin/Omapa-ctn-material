include "figures/evan_asy.asy";

size(6cm);
pair A = dir(80);
pair B = dir(230);
pair C = dir(310);

pair O = (0,  0);

draw(B--A--C);
draw(B--O--C);
draw(unitcircle);

dot("$A$", A, N);
dot("$B$", B, SW);
dot("$C$", C, SE);

dot("$O$", O, N);

label("$2\theta$", O, (0, -3));
label("$\theta$", A, (-0.4, -3));
