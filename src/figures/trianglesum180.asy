include "evan_asy.asy";

size(6cm);
pair A = dir(110);
pair B = dir(210);
pair C = dir(330);

draw((A - (0.5, 0))--(A + (1, 0)));
draw(A--B--C--cycle);
dot("$A$", A, (-0.5, 1));
dot("$B$", B, SW);
dot("$C$", C, SE);
label("$\ell$", (0.7, 1));

markangle(A, C, B, radius=10, red);
markangle(C, B, A, radius=10, blue);
markangle((A - (1, 0)), A, B, radius=10, blue);
markangle(C, A, (A + (1, 0)), radius=10, red);
