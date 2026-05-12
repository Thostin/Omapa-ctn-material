size(6cm);

pair A = dir(110);
pair B = dir(210);
pair C = dir(330);

pair D = B + 0.4 * (C - B);


path BD = B--D;
Label bd = Label("$p$", position=MidPoint);
draw(BD);
label(bd, BD);

path DC = D--C;
Label dc = Label("$q$", position=MidPoint);
draw(DC);
label(dc, DC);

path DA = D--A;
Label da = Label("$d$", position=MidPoint);
draw(DA);
label(da, DA);

path AB = A--B;
Label ab = Label("$a$", position=MidPoint);
draw(AB);
label(ab, AB);

path CA = C--A;
Label ca = Label("$b$", position=MidPoint);
draw(CA);
label(ca, CA);

dot("$A$", A, N);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$D$", D, S);

