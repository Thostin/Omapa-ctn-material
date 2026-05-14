include "evan_asy.asy";

real a = 25;
pair A = dir(90 + a);
pair Y = dir(210 + a);
pair X = dir(330 + a);

pair M = (A + X)/2;
pair B = foot(A, X, Y);
pair G = A + 2/3*(B - A);

draw(A--X, StickIntervalMarker(2, 2));
draw(A--Y--X);
draw(A--B);
draw(X--G--M);


dot(A, red);
dot(B, red);
dot(X, red);
dot(M, red);
dot(G, red);

label("$A$", A, NW);
label("$B$", B, S);
label("$X$", X, E);
label("$M$", M, NE);
label("$G$", G, SW);
