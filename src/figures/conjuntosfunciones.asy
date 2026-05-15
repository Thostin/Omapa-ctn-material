include "evan_asy.asy";

size(14cm);

real posx = 1;
real yradius = 1;
real xradius = 0.5;

transform reflection = reflect((0, 0), (0, 1));
path setA = ellipse((-posx, 0), xradius, yradius);
path setB = reflection * setA;

pair X = (-posx, 3/4 * yradius);
pair Y = (-posx, 0);
pair Z = (-posx, -3/4 * yradius);
pair A = reflection * X;
pair B = reflection * Y;
pair C = reflection * Z;

picture p1;
picture p2;
picture p3;

size(p1, 3cm);
size(p2, 3cm);
size(p3, 3cm);

filldraw(p1, setA, opacity(0.4) + lightblue, blue);
filldraw(p1, setB, opacity(0.4) + lightred, red);

filldraw(p2, setA, opacity(0.4) + lightblue, blue);
filldraw(p2, setB, opacity(0.4) + lightred, red);

filldraw(p3, setA, opacity(0.4) + lightblue, blue);
filldraw(p3, setB, opacity(0.4) + lightred, red);

label(p1, "$x$", X, fontsize(14pt));
label(p1, "$y$", Y, fontsize(14pt));
label(p1, "$z$", Z, fontsize(14pt));
label(p1, "$a$", A, fontsize(14pt));
label(p1, "$b$", B, fontsize(14pt));
label(p1, "$c$", C, fontsize(14pt));

label(p2, "$x$", X, fontsize(14pt));
label(p2, "$y$", Y, fontsize(14pt));
label(p2, "$z$", Z, fontsize(14pt));
label(p2, "$a$", A, fontsize(14pt));
label(p2, "$b$", B, fontsize(14pt));
label(p2, "$c$", C, fontsize(14pt));

label(p3, "$x$", X, fontsize(14pt));
label(p3, "$y$", Y, fontsize(14pt));
label(p3, "$z$", Z, fontsize(14pt));
label(p3, "$a$", A, fontsize(14pt));
label(p3, "$b$", B, fontsize(14pt));
label(p3, "$c$", C, fontsize(14pt));


label(p1, "$A$", (-posx, 0.24 + yradius), fontsize(14pt));
label(p1, "$B$", (posx, 0.24 + yradius), fontsize(14pt));

label(p2, "$A$", (-posx, 0.24 + yradius), fontsize(14pt));
label(p2, "$B$", (posx, 0.24 + yradius), fontsize(14pt));

label(p3, "$A$", (-posx, 0.24 + yradius), fontsize(14pt));
label(p3, "$B$", (posx, 0.24 + yradius), fontsize(14pt));

margin elmargen = TrueMargin(6, 6);

draw( p1, X--C, arrow=Arrow(TeXHead), margin=elmargen);
draw( p1, X--B, arrow=Arrow(TeXHead), margin=elmargen);
draw( p1, Y--A, arrow=Arrow(TeXHead), margin=elmargen);
draw( p1, Z--B, arrow=Arrow(TeXHead), margin=elmargen);
label(p1, "No es una función", (0, -1.3));

draw( p2, X--C, arrow=Arrow(TeXHead), margin=elmargen);
draw( p2, Z--B, arrow=Arrow(TeXHead), margin=elmargen);
label(p2, "No es una función", (0, -1.3));

draw( p3, X--C, arrow=Arrow(TeXHead), margin=elmargen);
draw( p3, Y--A, arrow=Arrow(TeXHead), margin=elmargen);
draw( p3, Z--C, arrow=Arrow(TeXHead), margin=elmargen);
label(p3, "Sí es una función", (0, -1.3));

add(p1);
real displaz = 4;
add(shift((displaz, 0)) * p2);
add(shift((2 * displaz, 0)) * p3);

