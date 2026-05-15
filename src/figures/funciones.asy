import graph;
size(13cm);

picture p1;
size(p1, 5cm);

xaxis(p1, "$A$", -0.2, 5);
yaxis(p1, "$B$", -0.2);

real f(real x) {return sqrt(x);}

draw(p1, graph(f, 0, 4, operator ..));

picture p2;
size(p2, 5cm);

xaxis(p2, "$A$", -0.2, 5);
yaxis(p2, "$B$", -0.2);

draw(p2, circle((3.2, 1.6), 1));

label(p1, "Es una función", (2.6, -1.2));
label(p2, "No es una función", (2.6, -1.2));

add(p1);
add(shift(7, 0) * p2);
