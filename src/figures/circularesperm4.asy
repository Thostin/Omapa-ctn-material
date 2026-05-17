picture p1;
picture p2;
picture p3;
picture p4;
picture p5;
picture p6;
size(10cm);
/* size(p1, 4cm); */
/* size(p2, 4cm); */

margin elmargen = TrueMargin(10, 10);

pair A = dir(90);
pair B = dir(180);
pair C = dir(270);
pair D = dir(0);

filldraw(p1, circle(A, 0.3), opacity(0.6) + lightblue, blue);
draw(p1, circle(B, 0.3));
draw(p1, circle(C, 0.3));
draw(p1, circle(D, 0.3));

draw(p1, A--B, arrow=Arrow(TeXHead), margin=elmargen);
draw(p1, B--C, arrow=Arrow(TeXHead), margin=elmargen);
draw(p1, C--D, arrow=Arrow(TeXHead), margin=elmargen);
draw(p1, D--A, arrow=Arrow(TeXHead), margin=elmargen);

label(p1, "$1$", A);
label(p1, "$2$", B);
label(p1, "$3$", C);
label(p1, "$4$", D);

filldraw(p2, circle(A, 0.3), opacity(0.6) + lightblue, blue);
draw(p2, circle(B, 0.3));
draw(p2, circle(C, 0.3));
draw(p2, circle(D, 0.3));

draw(p2, A--B, arrow=Arrow(TeXHead), margin=elmargen);
draw(p2, B--C, arrow=Arrow(TeXHead), margin=elmargen);
draw(p2, C--D, arrow=Arrow(TeXHead), margin=elmargen);
draw(p2, D--A, arrow=Arrow(TeXHead), margin=elmargen);

label(p2, "$1$", A);
label(p2, "$2$", B);
label(p2, "$4$", C);
label(p2, "$3$", D);

filldraw(p3, circle(A, 0.3), opacity(0.6) + lightblue, blue);
draw(p3, circle(B, 0.3));
draw(p3, circle(C, 0.3));
draw(p3, circle(D, 0.3));

draw(p3, A--B, arrow=Arrow(TeXHead), margin=elmargen);
draw(p3, B--C, arrow=Arrow(TeXHead), margin=elmargen);
draw(p3, C--D, arrow=Arrow(TeXHead), margin=elmargen);
draw(p3, D--A, arrow=Arrow(TeXHead), margin=elmargen);

label(p3, "$1$", A);
label(p3, "$3$", B);
label(p3, "$2$", C);
label(p3, "$4$", D);

filldraw(p4, circle(A, 0.3), opacity(0.6) + lightblue, blue);
draw(p4, circle(B, 0.3));
draw(p4, circle(C, 0.3));
draw(p4, circle(D, 0.3));

draw(p4, A--B, arrow=Arrow(TeXHead), margin=elmargen);
draw(p4, B--C, arrow=Arrow(TeXHead), margin=elmargen);
draw(p4, C--D, arrow=Arrow(TeXHead), margin=elmargen);
draw(p4, D--A, arrow=Arrow(TeXHead), margin=elmargen);

label(p4, "$1$", A);
label(p4, "$3$", B);
label(p4, "$4$", C);
label(p4, "$2$", D);

filldraw(p5, circle(A, 0.3), opacity(0.6) + lightblue, blue);
draw(p5, circle(B, 0.3));
draw(p5, circle(C, 0.3));
draw(p5, circle(D, 0.3));

draw(p5, A--B, arrow=Arrow(TeXHead), margin=elmargen);
draw(p5, B--C, arrow=Arrow(TeXHead), margin=elmargen);
draw(p5, C--D, arrow=Arrow(TeXHead), margin=elmargen);
draw(p5, D--A, arrow=Arrow(TeXHead), margin=elmargen);

label(p5, "$1$", A);
label(p5, "$4$", B);
label(p5, "$2$", C);
label(p5, "$3$", D);

filldraw(p6, circle(A, 0.3), opacity(0.6) + lightblue, blue);
draw(p6, circle(B, 0.3));
draw(p6, circle(C, 0.3));
draw(p6, circle(D, 0.3));

draw(p6, A--B, arrow=Arrow(TeXHead), margin=elmargen);
draw(p6, B--C, arrow=Arrow(TeXHead), margin=elmargen);
draw(p6, C--D, arrow=Arrow(TeXHead), margin=elmargen);
draw(p6, D--A, arrow=Arrow(TeXHead), margin=elmargen);

label(p6, "$1$", A);
label(p6, "$4$", B);
label(p6, "$3$", C);
label(p6, "$2$", D);

add(p1);
add(shift(3.5, 0) * p2);
add(shift(7, 0) * p3);
add(shift(0, -3.5) * p4);
add(shift(3.5, -3.5) * p5);
add(shift(7, -3.5) * p6);
