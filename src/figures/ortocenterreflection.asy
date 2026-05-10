include "figures/evan_asy.asy";

size(8cm);

pair A = dir(110);
pair B = dir(210);
pair C = dir(330);

pair D = foot(A, B, C);
pair E = foot(B, A, C);
pair F = foot(C, A, B);

pair X = dir(-110);
pair Y = dir(110 + 180);
pair M = (B + C)/2;

pair H = extension(A, D, B, E);
draw(A--B--C--cycle);
draw(A--H);
draw(B--E);
draw(C--F);
draw(A--Y);
draw(H--X, StickIntervalMarker(2, 1));
draw(H--Y, StickIntervalMarker(2, 2));
draw(C--Y);

draw(unitcircle);

dot("$A$", A, N);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$H$", H, (-2, -0.4));
dot("$D$", D, SW);
dot("$E$", E, (1.3, 0.3));
dot("$F$", F, W);
dot("$X$", X, S);
dot("$Y$", Y, S);
dot("$M$", M, SW);

markangle(B, A, X, radius=10);
markangle(Y, A, C, radius=10);

