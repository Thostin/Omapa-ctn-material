import graph;
size(13cm);

picture p1;
size(p1, 5cm);

xaxis(p1, "$A$", -1, 4);
yaxis(p1, "$B$", -1);

real f(real x) {return 0.8 * (x - 1) * (x - 1) * (x - 1) + 0.6;}

draw(p1, graph(f, -0.3, 2.5, operator ..));

picture p2;
size(p2, 5cm);

xaxis(p2, "$A$", -1, 5);
yaxis(p2, "$B$", -1);

real g(real x) {return sin(4x) + x;}
draw(p2, graph(g, -1, 4, operator ..));

label(p1, "Es inyectiva", (2.6, -1.2));
label(p2, "No es inyectiva", (2.6, -1.2));

add(p1);
add(shift(7, 0) * p2);
