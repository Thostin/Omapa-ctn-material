include "figures/evan_asy.asy";

size(6cm);
pair A = dir(110);
pair B = dir(210);
pair C = dir(330);

pair O = (0, 0);

draw(A--B--C--cycle);
draw(A--O--B, red);
draw(O--C, red);
draw(unitcircle);

dot("$A$", A, NW);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$O$", O, NE);
