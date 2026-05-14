include "evan_asy.asy";

pair X = dir(90);
pair A = dir(210);
pair B = dir(330);

pair M = (A + B)/2;
pair P = (A + X)/2;

draw(A--B, StickIntervalMarker(2, 2));
draw(A--X, StickIntervalMarker(2, 1));
draw(B--P--M--X--cycle);

dot(A,  red);
dot(B,  red);
dot(X, red);
dot(M, red);
dot(P,  red);

label("$A$", A, SW);
label("$B$", B, SE);
label("$X$", X, N);
label("$M$", M, S);
label("$P$", P, NW);
