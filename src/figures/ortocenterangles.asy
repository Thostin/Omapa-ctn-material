include "figures/evan_asy.asy";

pair A = dir(110);
pair B = dir(210);
pair C = dir(330);
pair O = (0, 0);

pair D = foot(A, B, C);
pair E = foot(B, A, C);
pair F = foot(C, A, B);

pair H = extension(A, D, B, E);
draw(A--B--C--cycle);
draw(A--O--C);
draw(A--D);

dot("$A$", A, N);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$H$", H, (1, 0));
dot("$D$", D, S);
dot("$O$", O, SW);

markangle(B, A, H, radius=10);
markangle(O, A, C, radius=10);
