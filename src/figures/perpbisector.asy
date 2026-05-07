include "figures/evan_asy.asy";

size(4cm);
pair A = dir(150);
pair B = dir(-30);

pair C = dir(60);
pair D = -0.4 * C;

draw(A--B);
dot("$A$", A, W);
dot("$B$", B, E);
draw(C--D, dashed);

draw(A--(0.7 * C)--B, blue);
dot(.7*C);
