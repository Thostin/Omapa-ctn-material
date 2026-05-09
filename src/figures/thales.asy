size(6cm);
pair A = dir(110);
pair B = dir(210);
pair C = dir(330);
pair X = midpoint(A--B);
pair Y = midpoint(A--C);

draw(A--B--C--cycle);
draw(X--Y, dashed);
dot("$A$", A, NW);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$X$", X, W);
dot("$Y$", Y, E);

