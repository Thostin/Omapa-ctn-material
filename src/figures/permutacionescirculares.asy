picture p1;
picture p2;
size(8cm);
/* size(p1, 4cm); */
/* size(p2, 4cm); */

margin elmargen = TrueMargin(20, 20);

pair A = dir(90);
pair B = dir(90 + 120);
pair C = dir(90 + 240);

draw(p1, circle(A, 0.3));
draw(p1, circle(B, 0.3));
draw(p1, circle(C, 0.3));

draw(p1, A--B, arrow=Arrow(TeXHead), margin=elmargen);
draw(p1, B--C, arrow=Arrow(TeXHead), margin=elmargen);
draw(p1, C--A, arrow=Arrow(TeXHead), margin=elmargen);

label(p1, "$1$", A);
label(p1, "$2$", B);
label(p1, "$3$", C);

draw(p2, circle(A, 0.3));
draw(p2, circle(B, 0.3));
draw(p2, circle(C, 0.3));

draw(p2, A--B, arrow=Arrow(TeXHead), margin=elmargen);
draw(p2, B--C, arrow=Arrow(TeXHead), margin=elmargen);
draw(p2, C--A, arrow=Arrow(TeXHead), margin=elmargen);

label(p2, "$2$", A);
label(p2, "$3$", B);
label(p2, "$1$", C);

add(p1);
add(shift(3, 0) * p2);
