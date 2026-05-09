import geometry;

size(8cm);

pair A = dir(80);
pair B = dir(160);
pair C = dir(210);
pair D = dir(330);

pair X = 1.3 * (B - C) + C;
draw(X--B);

draw(A--B--C--D--cycle);

draw(A--C);
draw(B--D);

draw(unitcircle);

dot("$A$", A, NE);
dot("$B^\prime$", B, NW);
dot("$C$", C, SW);
dot("$D$", D, SE);
dot("$B$", X, W);
draw(X--D);

markangle(C, B, D, radius=10, blue);
markangle(C, A, D, radius=10, blue);
markangle(C, X, D, radius=10, blue);

