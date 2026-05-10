size(6cm);

pair A = dir(130);
pair B = dir(130 + 60);
pair C = (0, 0);
pair D = dir(130 - 80);
pair E = dir(130 - 80 - 60);

draw(A--C--E--D--C--B--cycle);
draw(B--D, dashed);
draw(unitcircle, dashed);

dot("$A$", A, NW);
dot("$B$", B, SW);
dot("$C$", C, S);
dot("$D$", D, NE);
dot("$E$", E, SE);
