include "figures/evan_asy.asy";

size(12cm);
pair A = (0, 0);
pair B = (1, 0);
pair C = (2, 0);

path omega = arc(0.5, 0.5, 0, 180);
path gamma = arc(1, 1, 0, 180);

pair D = IP(omega, circle(C, sqrt(2)));
pair E = foot(A, C, D);



draw(C--E);

draw(gamma);
draw(omega);
draw(A--C);
draw((0.5, 0)--D);
draw(A--E);

dot("$A$", A, SW);
dot("$B$", B, S);
dot("$C$", C, SE);
dot("$D$", D, NE);
dot("$E$", E, NW);
dot("$O$", (0.5, 0), S);

label("$\Omega$", (1, 0.2));
label("$\Gamma$", (2, 0.4));
