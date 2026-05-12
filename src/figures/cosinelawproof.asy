include "evan_asy.asy";

pair A = dir(110);
pair B = dir(210);
pair C = dir(330);

pair E = foot(B, A, C);
pair F = foot(C, A, B);

draw(A--B--C--cycle);
Label h1 = Label("$h_1$", position=relative(0.9));
path H1 = B--E;
draw(H1);
label(h1, H1);


Label h2 = Label("$h_2$", position=MidPoint);
path H2 = C--F;
draw(H2);
label(h2, H2);

dot("$A$",A, N);
dot("$B$",B, SW);
dot("$C$",C, SE);
dot("$E$",E, 0.9 *(1, 1));
dot("$F$",F, W);

label("$x$", A--E, (1.2, 0));
label("$y$", A--F, (-1.2, 0));
label("$b - x$", E--C, (1.2, 0));
label("$c - y$", F--B, (-1.2, 0));
label("$a$", B--C, S);


markrightangle(B, F, C, size=8);
markrightangle(B, E, C, size=8);
