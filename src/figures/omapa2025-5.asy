include "figures/evan_asy.asy";

pair A = (-1, 1);
pair B = (-1, -0);
pair C = (1, 0);
pair D = (1, 1);

pair O = (0, 0);

pair X = OP(unitcircle, Line(midpoint(A--B), midpoint(D--C)));
pair Y = IP(unitcircle, Line(midpoint(A--B), midpoint(D--C)));

pair Z = foot(X, B, C);

draw(unitcircle);
draw(A--B--C--D--cycle);
draw(X--O--Y);
draw(X--Z, StickIntervalMarker(1, 2));
draw((-1, 0.5)--(1, 0.5));

draw((-1, 1)--(-1, 0), StickIntervalMarker(2, 2));
draw((1, 1)--(1, 0), StickIntervalMarker(2, 2));

dot("$A$", A, NW);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$D$", D, NE);

dot("$O$", O, S);

dot("$X$", X, NW);
dot("$Y$", Y, NE);
dot("$Z$", Z, S);

dot((-1, 0.5));
dot((1, 0.5));
