include "figures/evan_asy.asy";

pair A = dir(90);
pair E = dir(230);
pair F = dir(310);
pair O = (0, 0);

real ja = 0.27;

pair B = A + (1 - ja) * (E - A);
pair C = A + ja * (F - A);

draw(E--A--F);
draw(E--F);
draw(O--A, blue);
draw(O--E, blue);
draw(O--F, blue);
draw(O--B, red);
draw(O--C, red);

pair aux = circumcenter(A, B, C);
draw(circle(aux, length(aux - A)), dashed);

dot("$A$", A, NE);
dot("$E$", E, SW);
dot("$F$", F, SE);

dot("$B$", B, NW);
dot("$C$", C, (1, 0));
dot("$O$", O, (0, -1.2));

markangle(E, A, O, radius=10);
markangle(O, A, F, radius=13);
