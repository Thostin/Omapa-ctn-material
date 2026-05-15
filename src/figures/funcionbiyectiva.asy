include "evan_asy.asy";

size(8cm);
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


filldraw(setA, opacity(0.4) + lightblue, blue);
filldraw(setB, opacity(0.4) + lightred, red);

label("$x$", X, fontsize(14pt));
label("$y$", Y, fontsize(14pt));
label("$z$", Z, fontsize(14pt));
label("$a$", A, fontsize(14pt));
label("$b$", B, fontsize(14pt));
label("$c$", C, fontsize(14pt));

label("$A$", (-posx, 0.1 + yradius), fontsize(14pt));
label("$B$", (posx, 0.1 + yradius), fontsize(14pt));

margin elmargen = TrueMargin(6, 6);
draw(X--C, arrow=Arrows(TeXHead), margin=elmargen);
draw(Y--A, arrow=Arrows(TeXHead), margin=elmargen);
draw(Z--B, arrow=Arrows(TeXHead), margin=elmargen);

