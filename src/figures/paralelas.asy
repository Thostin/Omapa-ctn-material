include "figures/evan_asy.asy";

size(6cm);
pair A = (1, 1);
pair B = (2, 1);
pair C = (0, -1);
pair D = (1, -1);
pair E = (1.3, 1.6);

draw((-1, 1)--(2, 1));
draw((-2, -1)--(2, -1));
draw(C--E);
markangle(B, A, E, radius=10, red);
markangle(D, C, A, radius=10, red);
markangle((-1, 1), A, C, radius=10, blue);
